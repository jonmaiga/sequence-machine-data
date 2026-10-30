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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A031201: Numbers having period-1 7-digitized sequences.

The programs for A031201, there is no canonical definition to state claims against.
-/

/-! ## A031201.P10784044940313497517

`eq[1, A031200(n)]`
-/

namespace A031201.P10784044940313497517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031200 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031201.P10784044940313497517

/-! ## A031201.P4094717633444842958

`floor(10^(n-1))%A102942(comp[∑[n]])`
-/

namespace A031201.P4094717633444842958
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (A102942 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A031201.P4094717633444842958

/-!
# A031202: Numbers having period-2 7-digitized sequences.

The programs for A031202, there is no canonical definition to state claims against.
-/

/-! ## A031202.P7575140454541873699

`eq[2, A031200(n)]`
-/

namespace A031202.P7575140454541873699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031200 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031202.P7575140454541873699

/-!
# A031203: Numbers having period-3 7-digitized sequences.

The programs for A031203, there is no canonical definition to state claims against.
-/

/-! ## A031203.P1997341837012976313

`eq[3, A031200(n)]`
-/

namespace A031203.P1997341837012976313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031200 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031203.P1997341837012976313

/-! ## A031203.P10433239061502991473

`lt[A001622(A031200(n)+1), 1]`
-/

namespace A031203.P10433239061502991473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A031200 n + 1).toNat + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031203.P10433239061502991473

/-! ## A031203.P3416321711925574370

`lt[A023858(A031200(n)+1), 1]`
-/

namespace A031203.P3416321711925574370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023858 (A031200 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031203.P3416321711925574370

/-! ## A031203.P13007959962541824668

`lt[A227752(A031200(n)+2), 1]`
-/

namespace A031203.P13007959962541824668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227752 (A031200 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031203.P13007959962541824668

/-! ## A031203.P15214146848689924216

`lt[2, A087267((A031200(n)+4)²+1)]`
-/

namespace A031203.P15214146848689924216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087267 ((A031200 n + 4) ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031203.P15214146848689924216

/-!
# A031204: Numbers having period-12 7-digitized sequences.

The programs for A031204, there is no canonical definition to state claims against.
-/

/-! ## A031204.P3122404062864551367

`eq[12, A031200(n)]`
-/

namespace A031204.P3122404062864551367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031200 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031204.P3122404062864551367

/-! ## A031204.P598557207758811875

`lt[A090464(A031200(n)+2), 0]`
-/

namespace A031204.P598557207758811875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090464 (A031200 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031204.P598557207758811875

/-! ## A031204.P15882531904039225469

`lt[1, A227752(A031200(n)+2)]`
-/

namespace A031204.P15882531904039225469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227752 (A031200 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031204.P15882531904039225469

/-! ## A031204.P2682098980199311702

`lt[6, A000796(A031200(n)+1)]`
-/

namespace A031204.P2682098980199311702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A031200 n + 1).toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031204.P2682098980199311702

/-! ## A031204.P1054396286185300042

`lt[26, A223486(C(A031200(n), 2)+1)]`
-/

namespace A031204.P1054396286185300042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223486 (Nat.choose (A031200 n).toNat 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031204.P1054396286185300042

/-! ## A031204.P6003129613811190423

`lt[A114327(A031200(n)+2)+1+n, n-1]`
-/

namespace A031204.P6003129613811190423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (A031200 n + 2).toNat + 1 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031204.P6003129613811190423

/-!
# A031205: Numbers having period-14 7-digitized sequences.

The programs for A031205, there is no canonical definition to state claims against.
-/

/-! ## A031205.P925807139958345114

`eq[14, A031200(n)]`
-/

namespace A031205.P925807139958345114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031200 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031205.P925807139958345114

/-! ## A031205.P12462048758701762770

`lt[A031235(A031200(n)²), 1]`
-/

namespace A031205.P12462048758701762770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 (A031200 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031205.P12462048758701762770

/-! ## A031205.P17082979958512805545

`lt[A031235(A031200(n)+1), 1]`
-/

namespace A031205.P17082979958512805545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 (A031200 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031205.P17082979958512805545

/-! ## A031205.P14371396486006035013

`lt[A056770(A031200(n)+1), 1]`
-/

namespace A031205.P14371396486006035013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056770 (A031200 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031205.P14371396486006035013

/-! ## A031205.P9272139365286136287

`lt[A001622((A031200(n)+1)²+1), 1]`
-/

namespace A031205.P9272139365286136287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (((A031200 n + 1) ^ 2 + 1).toNat + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031205.P9272139365286136287

/-! ## A031205.P5696145841870232492

`lt[27, A332898(A031200(n)+27*(A031200(n)+1))]`
-/

namespace A031205.P5696145841870232492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332898 (A031200 n + 27 * (A031200 n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031205.P5696145841870232492

/-!
# A031206: Numbers having period-21 7-digitized sequences.

The programs for A031206, there is no canonical definition to state claims against.
-/

/-! ## A031206.P9088441814754928944

`eq[21, A031200(n)]`
-/

namespace A031206.P9088441814754928944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031200 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031206.P9088441814754928944

/-! ## A031206.P1901519587435320859

`lt[A001622(A031200(n)-1), 1]`
-/

namespace A031206.P1901519587435320859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A031200 n - 1).toNat + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031206.P1901519587435320859

/-! ## A031206.P4689214037961123119

`lt[A227752(2*A031200(n)), 1]`
-/

namespace A031206.P4689214037961123119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227752 (2 * A031200 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031206.P4689214037961123119

/-! ## A031206.P10203682902822548585

`lt[A014963(n+2), A046922(A031200(n))]`
-/

namespace A031206.P10203682902822548585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046922 (A031200 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031206.P10203682902822548585

/-! ## A031206.P8099246141695084769

`lt[A088917(n), A354926(2*A031200(n))]`
-/

namespace A031206.P8099246141695084769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354926 (2 * A031200 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031206.P8099246141695084769

/-! ## A031206.P495025840347328734

`lt[A046920((-1)^n+4), A046920(A031200(n))]`
-/

namespace A031206.P495025840347328734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046920 ((-1) ^ n + 4).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046920 (A031200 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031206.P495025840347328734

/-! ## A031206.P1756760174559041078

`lt[A046922((-1)^n+4), A046922(A031200(n))]`
-/

namespace A031206.P1756760174559041078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046922 ((-1) ^ n + 4).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046922 (A031200 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031206.P1756760174559041078

/-! ## A031206.P5529153647540900366

`lt[A031191((-1)^n+4), A227612(A031200(n))]`
-/

namespace A031206.P5529153647540900366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031191 ((-1) ^ n + 4).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227612 (A031200 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031206.P5529153647540900366

/-!
# A031207: Numbers having period-27 7-digitized sequences.

The programs for A031207, there is no canonical definition to state claims against.
-/

/-! ## A031207.P17827018036744613398

`eq[27, A031200(n)]`
-/

namespace A031207.P17827018036744613398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031200 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031207.P17827018036744613398

/-! ## A031207.P2112877245601468098

`lt[2, A001222(A031200(n)+1)]`
-/

namespace A031207.P2112877245601468098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A031200 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031207.P2112877245601468098

/-! ## A031207.P2377658956751598231

`lt[A000796(2*A031200(n)), 1]`
-/

namespace A031207.P2377658956751598231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((2 * A031200 n).toNat + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031207.P2377658956751598231

/-! ## A031207.P13707279522475842335

`lt[6, A002260(A031200(n)+1)]`
-/

namespace A031207.P13707279522475842335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A031200 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031207.P13707279522475842335

/-! ## A031207.P9098856573827478615

`lt[n, A223486(A031200(n)²)²]`
-/

namespace A031207.P9098856573827478615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223486 (A031200 n ^ 2).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031207.P9098856573827478615

/-! ## A031207.P7509504070835952172

`lt[A001622(4*A031200(n)+1), 1]`
-/

namespace A031207.P7509504070835952172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((4 * A031200 n + 1).toNat + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031207.P7509504070835952172

/-! ## A031207.P551645448487983779

`lt[A001622((A031200(n)+1)²+2), 1]`
-/

namespace A031207.P551645448487983779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (((A031200 n + 1) ^ 2 + 2).toNat + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031207.P551645448487983779

/-! ## A031207.P12875979532860740959

`lt[27/(A020639(A031200(n)+2)+1), 1]`
-/

namespace A031207.P12875979532860740959
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  27 / (A020639 (A031200 n + 2).toNat + 1 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A031207.P12875979532860740959

/-! ## A031207.P6147492845525644318

`lt[n, A223486(A031200(n)²)]`
-/

namespace A031207.P6147492845525644318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223486 (A031200 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031207.P6147492845525644318

/-!
# A031208: Numbers having period-30 7-digitized sequences.

The programs for A031208, there is no canonical definition to state claims against.
-/

/-! ## A031208.P15287249388973859367

`eq[30, A031200(n)]`
-/

namespace A031208.P15287249388973859367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031200 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031208.P15287249388973859367

/-! ## A031208.P3976612373250149712

`lt[A000796(A031200(n)+2), 1]`
-/

namespace A031208.P3976612373250149712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A031200 n + 2).toNat + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031208.P3976612373250149712

/-! ## A031208.P9075691627330251280

`lt[2, A090464(A031200(n)+2)]`
-/

namespace A031208.P9075691627330251280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090464 (A031200 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031208.P9075691627330251280

/-! ## A031208.P7095954503744959117

`lt[A031235(2*A031200(n)), 1]`
-/

namespace A031208.P7095954503744959117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 (2 * A031200 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031208.P7095954503744959117

/-! ## A031208.P6640103784434596443

`lt[26, A048244(A031200(n)+1)]`
-/

namespace A031208.P6640103784434596443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048244 (A031200 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031208.P6640103784434596443

/-! ## A031208.P16451689629872337060

`lt[12, A138558(A031200(n)+1)/2]`
-/

namespace A031208.P16451689629872337060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138558 (A031200 n + 1).toNat : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A031208.P16451689629872337060

/-! ## A031208.P1800472344609295774

`lt[2, A243055(abs(3-A031200(n))+1)]`
-/

namespace A031208.P1800472344609295774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (|3 - A031200 n| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031208.P1800472344609295774

/-! ## A031208.P16982539883550443690

`lt[A088917(n), A354926(A031200(n))]`
-/

namespace A031208.P16982539883550443690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354926 (A031200 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031208.P16982539883550443690

/-! ## A031208.P2460341812467737319

`lt[A354926(n+1), 2*A354926(A031200(n))]`
-/

namespace A031208.P2460341812467737319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A354926 (A031200 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031208.P2460341812467737319

/-!
# A031209: Numbers having period-56 7-digitized sequences.

The programs for A031209, there is no canonical definition to state claims against.
-/

/-! ## A031209.P1046623617425511702

`eq[7, A031200(n)/8]`
-/

namespace A031209.P1046623617425511702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031200 n : ℚ) / 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A031209.P1046623617425511702

/-! ## A031209.P11096452180220139350

`eq[2, A040592(A031200(n))]`
-/

namespace A031209.P11096452180220139350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040592 (A031200 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031209.P11096452180220139350

/-! ## A031209.P1132477332535977591

`eq[A031200(n), A040756(n)]`
-/

namespace A031209.P1132477332535977591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031200 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031209.P1132477332535977591

/-! ## A031209.P3363484961330301089

`eq[12, A204932(A031200(n)²)]`
-/

namespace A031209.P3363484961330301089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204932 (A031200 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031209.P3363484961330301089

/-! ## A031209.P8120881994347829255

`lt[1, A227752(A031200(n)-1)]`
-/

namespace A031209.P8120881994347829255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227752 (A031200 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031209.P8120881994347829255

/-! ## A031209.P17270399419594722865

`eq[A031200(n)%8, A000038(n)]`
-/

namespace A031209.P17270399419594722865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031200 n) 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031209.P17270399419594722865

/-! ## A031209.P3881353382198138687

`lt[A001622(ceil(A031200(n)/3)+1), 1]`
-/

namespace A031209.P3881353382198138687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((⌈(A031200 n : ℚ) / 3⌉ + 1).toNat + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031209.P3881353382198138687

/-! ## A031209.P18382012429201929419

`eq[A040056(n), A130065(A031200(n))]`
-/

namespace A031209.P18382012429201929419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130065 (A031200 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031209.P18382012429201929419

/-!
# A031210: Numbers having period-92 7-digitized sequences.

The programs for A031210, there is no canonical definition to state claims against.
-/

/-! ## A031210.P749411731591093497

`lt[60, A031200(n)]`
-/

namespace A031210.P749411731591093497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  60

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031200 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031210.P749411731591093497

/-! ## A031210.P10575357614543574005

`eq[1, A190698(A031200(n)²)]`
-/

namespace A031210.P10575357614543574005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190698 (A031200 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031210.P10575357614543574005

/-! ## A031210.P16991209274943355412

`eq[2, A000796(A031200(n)²)]`
-/

namespace A031210.P16991209274943355412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A031200 n ^ 2).toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031210.P16991209274943355412

/-! ## A031210.P9314005964297599546

`eq[6, A000796(2*A031200(n))]`
-/

namespace A031210.P9314005964297599546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((2 * A031200 n).toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031210.P9314005964297599546

/-! ## A031210.P1611886433035212083

`eq[A031200(A027760(2*n+3)), A031200(n)]`
-/

namespace A031210.P1611886433035212083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031200 (A027760 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031200 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031210.P1611886433035212083

/-!
# A031211: Periods of sum of 8th powers of digits iterated until the sequence becomes periodic.

The programs for A031211, there is no canonical definition to state claims against.
-/

/-! ## A031211.P16337721018922704428

`A183157(A069256(n+1))`
-/

namespace A031211.P16337721018922704428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183157 (A069256 (n + 1)).toNat

end

end A031211.P16337721018922704428

/-! ## A031211.P17181567950569306107

`A279831(A246603(n+1))`
-/

namespace A031211.P17181567950569306107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279831 (A246603 (n + 1)).toNat

end

end A031211.P17181567950569306107

/-! ## A031211.P3358824439967370939

`A049522((A000722(n)+3)%(n+3))`
-/

namespace A031211.P3358824439967370939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049522 (Int.tmod (A000722 n + 3) (n + 3 : ℤ)).toNat

end

end A031211.P3358824439967370939

/-!
# A031213: Periods of sum of 10th powers of digits iterated until the sequence becomes periodic.

The programs for A031213, there is no canonical definition to state claims against.
-/

/-! ## A031213.P8747058126781345526

`A021003(∏{e}[A230641(A000142(n)), #])`
-/

namespace A031213.P8747058126781345526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230641 (A000142 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021003 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A031213.P8747058126781345526

/-! ## A031213.P5833226511869169591

`A157151(∏{e}[A192195(n+1)+A167872(n), (2*#)!])`
-/

namespace A031213.P5833226511869169591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192195 (n + 1) + A167872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157151 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (2 * Nat.factorization (f1 n).natAbs p))

end

end A031213.P5833226511869169591

/-! ## A031213.P11293185452258067261

`A046642(A322165(A076274(A066786(A076274(n+1)))))`
-/

namespace A031213.P11293185452258067261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046642 (A322165 (A076274 (A066786 (A076274 (n + 1)).toNat).toNat).toNat).toNat

end

end A031213.P11293185452258067261

/-!
# A031214: Initial term of sequence An.

The programs for A031214, there is no canonical definition to state claims against.
-/

/-! ## A031214.P8059798225840085899

`gcd(A010815(A008292(n+5)), A024359(n+1))`
-/

namespace A031214.P8059798225840085899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010815 (A008292 (n + 5)).toNat) (A024359 (n + 1))

end

end A031214.P8059798225840085899

/-! ## A031214.P15755158238541077697

`C(A024359(n+1), A346070(A081452(n+1)))`
-/

namespace A031214.P15755158238541077697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A024359 (n + 1)).toNat (A346070 (A081452 (n + 1)).toNat).toNat

end

end A031214.P15755158238541077697

/-! ## A031214.P9909992218743935316

`C(A067029(n+1), A346070(A081452(n+1)))`
-/

namespace A031214.P9909992218743935316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A067029 (n + 1)).toNat (A346070 (A081452 (n + 1)).toNat).toNat

end

end A031214.P9909992218743935316

/-! ## A031214.P5437509636633014989

`A066882(C(A161642(n+4), A248103(n+1)))`
-/

namespace A031214.P5437509636633014989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 (Nat.choose (A161642 (n + 4)).toNat (A248103 (n + 1)).toNat)

end

end A031214.P5437509636633014989

/-! ## A031214.P17133182157353065683

`A284463(C(A161642(n+4), A248103(n+1)))`
-/

namespace A031214.P17133182157353065683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284463 (Nat.choose (A161642 (n + 4)).toNat (A248103 (n + 1)).toNat)

end

end A031214.P17133182157353065683

/-!
# A031215: Even-indexed primes: a(n) = prime(2n).

The programs for A031215, the canonical program `A031215.P2952175553723239727` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031215 has offset 1).

The definition of A031215 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(2*(n+1))` (program `A031215.P2952175553723239727`, by `A031215.P2952175553723239727.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031215.P10916355462300154431

`A104272(n+1)-A233739(n+1)`
-/

namespace A031215.P10916355462300154431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1) - A233739 (n + 1)

end

end A031215.P10916355462300154431

namespace A031215

/-- `A104272(n+1)-A233739(n+1)` -/
def P10916355462300154431.Spec : Prop :=
  ∀ n, P10916355462300154431.a n = A031215 (n + 1)

end A031215

/-! ## A031215.P2952175553723239727

`A000040(2*(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031215

/-- `A000040(2*(n+1))` -/
def P2952175553723239727.Spec : Prop :=
  ∀ n, P2952175553723239727.a n = A031215 (n + 1)

theorem P2952175553723239727.correct : P2952175553723239727.Spec := by
  intro n
  simp only [A031215, Nat.add_sub_cancel]

end A031215

/-! ## A031215.P90311047917797071

`A297002(A000040(n+1))`
-/

namespace A031215.P90311047917797071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297002 (A000040 (n + 1)).toNat

end

end A031215.P90311047917797071

namespace A031215

/-- `A297002(A000040(n+1))` -/
def P90311047917797071.Spec : Prop :=
  ∀ n, P90311047917797071.a n = A031215 (n + 1)

end A031215

/-! ## A031215.P5770198321376253516

`A105720(n+1)-A161463(n+1)`
-/

namespace A031215.P5770198321376253516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105720 (n + 1) - A161463 (n + 1)

end

end A031215.P5770198321376253516

namespace A031215

/-- `A105720(n+1)-A161463(n+1)` -/
def P5770198321376253516.Spec : Prop :=
  ∀ n, P5770198321376253516.a n = A031215 (n + 1)

end A031215

/-! ## A031215.P12638182766767043220

`A055670(2*(n+1))-1`
-/

namespace A031215.P12638182766767043220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (2 * (n + 1)) - 1

end

end A031215.P12638182766767043220

namespace A031215

/-- `A055670(2*(n+1))-1` -/
def P12638182766767043220.Spec : Prop :=
  ∀ n, P12638182766767043220.a n = A031215 (n + 1)

end A031215

/-! ## A031215.P11659248820814065247

`A001748(2*(n+1))/3`
-/

namespace A031215.P11659248820814065247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (2 * (n + 1)) : ℚ) / 3

end

end A031215.P11659248820814065247

namespace A031215

/-- `A001748(2*(n+1))/3` -/
def P11659248820814065247.Spec : Prop :=
  ∀ n, P11659248820814065247.a n = (A031215 (n + 1) : ℚ)

theorem P11659248820814065247.correct : P11659248820814065247.Spec := by
  intro n
  simp only [A031215, Nat.add_sub_cancel, A031215.P11659248820814065247.a, A031215.P2952175553723239727.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001748, A001748.P16019639290970068825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031215

/-! ## A031215.P5694712225549496305

`A001749(2*(n+1))/4`
-/

namespace A031215.P5694712225549496305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (2 * (n + 1)) : ℚ) / 4

end

end A031215.P5694712225549496305

namespace A031215

/-- `A001749(2*(n+1))/4` -/
def P5694712225549496305.Spec : Prop :=
  ∀ n, P5694712225549496305.a n = (A031215 (n + 1) : ℚ)

theorem P5694712225549496305.correct : P5694712225549496305.Spec := by
  intro n
  simp only [A031215, Nat.add_sub_cancel, A031215.P5694712225549496305.a, A031215.P2952175553723239727.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001749, A001749.P16106244962881767471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031215

/-! ## A031215.P10702393333922380106

`A155750(n)+a(n-1)` with `a(0)=3`
-/

namespace A031215.P10702393333922380106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A155750 n + a (n - 1)

end

end A031215.P10702393333922380106

namespace A031215

/-- `A155750(n)+a(n-1)` -/
def P10702393333922380106.Spec : Prop :=
  ∀ n, P10702393333922380106.a n = A031215 (n + 1)

end A031215

/-! ## A031215.P4718421880727114911

`A072473(n+1)+Δ[A007504(n)]`
-/

namespace A031215.P4718421880727114911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1) + (f1 (n + 1) - f1 n)

end

end A031215.P4718421880727114911

namespace A031215

/-- `A072473(n+1)+Δ[A007504(n)]` -/
def P4718421880727114911.Spec : Prop :=
  ∀ n, P4718421880727114911.a n = A031215 (n + 1)

end A031215

/-! ## A031215.P1128086505331807074

`A072473(n+1)+A000040(n+1)`
-/

namespace A031215.P1128086505331807074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1) + A000040 (n + 1)

end

end A031215.P1128086505331807074

namespace A031215

/-- `A072473(n+1)+A000040(n+1)` -/
def P1128086505331807074.Spec : Prop :=
  ∀ n, P1128086505331807074.a n = A031215 (n + 1)

theorem P1128086505331807074.correct : P1128086505331807074.Spec := by
  intro n
  simp only [A031215, Nat.add_sub_cancel, A031215.P1128086505331807074.a, A031215.P2952175553723239727.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A072473, A072473.P11303799734713741739.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031215

/-! ## A031215.P18225000502360628545

`A078584(n+1)+A031368(n+1)`
-/

namespace A031215.P18225000502360628545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078584 (n + 1) + A031368 (n + 1)

end

end A031215.P18225000502360628545

namespace A031215

/-- `A078584(n+1)+A031368(n+1)` -/
def P18225000502360628545.Spec : Prop :=
  ∀ n, P18225000502360628545.a n = A031215 (n + 1)

end A031215

/-! ## A031215.P16492377494622520301

`A100484(n+1)+A066066(n+1)`
-/

namespace A031215.P16492377494622520301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + A066066 (n + 1)

end

end A031215.P16492377494622520301

namespace A031215

/-- `A100484(n+1)+A066066(n+1)` -/
def P16492377494622520301.Spec : Prop :=
  ∀ n, P16492377494622520301.a n = A031215 (n + 1)

theorem P16492377494622520301.correct : P16492377494622520301.Spec := by
  intro n
  simp only [A031215, Nat.add_sub_cancel, A031215.P16492377494622520301.a, A031215.P2952175553723239727.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A066066, A066066.P16664765326660587690.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031215

/-! ## A031215.P7033835403519008658

`A155067(n+1)+A135275(n+1)`
-/

namespace A031215.P7033835403519008658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155067 (n + 1) + A135275 (n + 1)

end

end A031215.P7033835403519008658

namespace A031215

/-- `A155067(n+1)+A135275(n+1)` -/
def P7033835403519008658.Spec : Prop :=
  ∀ n, P7033835403519008658.a n = A031215 (n + 1)

end A031215

/-! ## A031215.P9445671333786241932

`A317440(n+1)+A141101(n+1)`
-/

namespace A031215.P9445671333786241932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317440 (n + 1) + A141101 (n + 1)

end

end A031215.P9445671333786241932

namespace A031215

/-- `A317440(n+1)+A141101(n+1)` -/
def P9445671333786241932.Spec : Prop :=
  ∀ n, P9445671333786241932.a n = A031215 (n + 1)

end A031215

/-! ## A031215.P11227250973033242508

`A092390(n+1)-A000040(n+1)`
-/

namespace A031215.P11227250973033242508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092390 (n + 1) - A000040 (n + 1)

end

end A031215.P11227250973033242508

namespace A031215

/-- `A092390(n+1)-A000040(n+1)` -/
def P11227250973033242508.Spec : Prop :=
  ∀ n, P11227250973033242508.a n = A031215 (n + 1)

theorem P11227250973033242508.correct : P11227250973033242508.Spec := by
  intro n
  simp only [A031215, Nat.add_sub_cancel, A031215.P11227250973033242508.a, A031215.P2952175553723239727.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A092390, A092390.P1796857975132051005.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031215

/-! ## A031215.P6084810675943541211

`A100479(n+1)-A031368(n+1)`
-/

namespace A031215.P6084810675943541211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100479 (n + 1) - A031368 (n + 1)

end

end A031215.P6084810675943541211

namespace A031215

/-- `A100479(n+1)-A031368(n+1)` -/
def P6084810675943541211.Spec : Prop :=
  ∀ n, P6084810675943541211.a n = A031215 (n + 1)

end A031215

/-! ## A031215.P13094413995755671253

`A116368(n+1)-A065091(n+1)`
-/

namespace A031215.P13094413995755671253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116368 (n + 1) - A065091 (n + 1)

end

end A031215.P13094413995755671253

namespace A031215

/-- `A116368(n+1)-A065091(n+1)` -/
def P13094413995755671253.Spec : Prop :=
  ∀ n, P13094413995755671253.a n = A031215 (n + 1)

theorem P13094413995755671253.correct : P13094413995755671253.Spec := by
  intro n
  simp only [A031215, Nat.add_sub_cancel, A031215.P13094413995755671253.a, A031215.P2952175553723239727.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A065091, A065091.P6971844946592549357.a, A116368, A116368.P4128061207012300454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031215

/-! ## A031215.P14055666386174068413

`A135277(n+1)%A345071(n+1)`
-/

namespace A031215.P14055666386174068413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135277 (n + 1)) (A345071 (n + 1))

end

end A031215.P14055666386174068413

namespace A031215

/-- `A135277(n+1)%A345071(n+1)` -/
def P14055666386174068413.Spec : Prop :=
  ∀ n, P14055666386174068413.a n = A031215 (n + 1)

end A031215

/-! ## A031215.P12330354681118987902

`p?[A066207(n+1)]`
-/

namespace A031215.P12330354681118987902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031215.P12330354681118987902

namespace A031215

/-- `p?[A066207(n+1)]` -/
def P12330354681118987902.Spec : Prop :=
  ∀ n, P12330354681118987902.a n = A031215 (n + 1)

end A031215

/-! ## A031215.P15808824881912150871

`A004139(A004277(n))`
-/

namespace A031215.P15808824881912150871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A004277 n).toNat

end

end A031215.P15808824881912150871

namespace A031215

/-- `A004139(A004277(n))` -/
def P15808824881912150871.Spec : Prop :=
  ∀ n, P15808824881912150871.a n = A031215 (n + 1)

end A031215

/-! ## A031215.P15254213540517765707

`record[p?[2*n+1]*char[2*n]]`
-/

namespace A031215.P15254213540517765707
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) * (if ∃ j, f3 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031215.P15254213540517765707

namespace A031215

/-- `record[p?[2*n+1]*char[2*n]]` -/
def P15254213540517765707.Spec : Prop :=
  ∀ n, (P15254213540517765707.a n : ℤ) = A031215 (n + 1)

end A031215

/-!
# A031216: Write primes in base 10 but interpret as if in base 11.

The programs for A031216, the canonical program `A031216.P3648848355356161407` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031216 has offset 1).

The definition of A031216 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A171397, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A031216.P3648848355356161407

`A171397(A000040(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031216

/-- `A171397(A000040(n+1))` -/
def P3648848355356161407.Spec : Prop :=
  ∀ n, P3648848355356161407.a n = A031216 (n + 1)

theorem P3648848355356161407.correct : P3648848355356161407.Spec := by
  intro n
  simp only [A031216, Nat.add_sub_cancel]

end A031216

/-! ## A031216.P13197352547912866221

`A171397(Δ[A007504(n)])`
-/

namespace A031216.P13197352547912866221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (f1 (n + 1) - f1 n).toNat

end

end A031216.P13197352547912866221

namespace A031216

/-- `A171397(Δ[A007504(n)])` -/
def P13197352547912866221.Spec : Prop :=
  ∀ n, P13197352547912866221.a n = A031216 (n + 1)

end A031216

/-! ## A031216.P6611063940426391389

`A171397(record[A051698(n)])`
-/

namespace A031216.P6611063940426391389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A031216.P6611063940426391389

namespace A031216

/-- `A171397(record[A051698(n)])` -/
def P6611063940426391389.Spec : Prop :=
  ∀ n, P6611063940426391389.a n = A031216 (n + 1)

end A031216

/-! ## A031216.P16077242479958839707

`A171397(A008578(n+2))`
-/

namespace A031216.P16077242479958839707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (A008578 (n + 2)).toNat

end

end A031216.P16077242479958839707

namespace A031216

/-- `A171397(A008578(n+2))` -/
def P16077242479958839707.Spec : Prop :=
  ∀ n, P16077242479958839707.a n = A031216 (n + 1)

end A031216

/-! ## A031216.P13154849957337580860

`A171397(A182986(n+2))`
-/

namespace A031216.P13154849957337580860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (A182986 (n + 2)).toNat

end

end A031216.P13154849957337580860

namespace A031216

/-- `A171397(A182986(n+2))` -/
def P13154849957337580860.Spec : Prop :=
  ∀ n, P13154849957337580860.a n = A031216 (n + 1)

end A031216

/-! ## A031216.P4745067934678284562

`A171397(eq[0, A007920(n)])`
-/

namespace A031216.P4745067934678284562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031216.P4745067934678284562

namespace A031216

/-- `A171397(eq[0, A007920(n)])` -/
def P4745067934678284562.Spec : Prop :=
  ∀ n, P4745067934678284562.a n = A031216 (n + 1)

end A031216

/-! ## A031216.P15575742775639074971

`A171397(eq[0, A051699(n)])`
-/

namespace A031216.P15575742775639074971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031216.P15575742775639074971

namespace A031216

/-- `A171397(eq[0, A051699(n)])` -/
def P15575742775639074971.Spec : Prop :=
  ∀ n, P15575742775639074971.a n = A031216 (n + 1)

end A031216

/-! ## A031216.P1046656128199157943

`A171397(eq[0, A237053(n)])`
-/

namespace A031216.P1046656128199157943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031216.P1046656128199157943

namespace A031216

/-- `A171397(eq[0, A237053(n)])` -/
def P1046656128199157943.Spec : Prop :=
  ∀ n, P1046656128199157943.a n = A031216 (n + 1)

end A031216

/-! ## A031216.P12329900043424055761

`A171397(eq[0, A325142(n)])`
-/

namespace A031216.P12329900043424055761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031216.P12329900043424055761

namespace A031216

/-- `A171397(eq[0, A325142(n)])` -/
def P12329900043424055761.Spec : Prop :=
  ∀ n, P12329900043424055761.a n = A031216 (n + 1)

end A031216

/-! ## A031216.P10153034343431556905

`A171397(sqrt(A001248(n+1)))`
-/

namespace A031216.P10153034343431556905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A031216.P10153034343431556905

namespace A031216

/-- `A171397(sqrt(A001248(n+1)))` -/
def P10153034343431556905.Spec : Prop :=
  ∀ n, P10153034343431556905.a n = A031216 (n + 1)

end A031216

/-! ## A031216.P256964115563680821

`A171397(record[A006530(n+2)])`
-/

namespace A031216.P256964115563680821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A031216.P256964115563680821

namespace A031216

/-- `A171397(record[A006530(n+2)])` -/
def P256964115563680821.Spec : Prop :=
  ∀ n, P256964115563680821.a n = A031216 (n + 1)

end A031216

/-! ## A031216.P18416567298982196358

`A171397(record[A014963(n+2)])`
-/

namespace A031216.P18416567298982196358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A031216.P18416567298982196358

namespace A031216

/-- `A171397(record[A014963(n+2)])` -/
def P18416567298982196358.Spec : Prop :=
  ∀ n, P18416567298982196358.a n = A031216 (n + 1)

end A031216

/-! ## A031216.P5419472880400320663

`A171397(record[A020639(n+2)])`
-/

namespace A031216.P5419472880400320663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A031216.P5419472880400320663

namespace A031216

/-- `A171397(record[A020639(n+2)])` -/
def P5419472880400320663.Spec : Prop :=
  ∀ n, P5419472880400320663.a n = A031216 (n + 1)

end A031216

/-! ## A031216.P124704433822202473

`A171397(p?[A057637(n+1)])`
-/

namespace A031216.P124704433822202473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A031216.P124704433822202473

namespace A031216

/-- `A171397(p?[A057637(n+1)])` -/
def P124704433822202473.Spec : Prop :=
  ∀ n, P124704433822202473.a n = A031216 (n + 1)

end A031216

/-! ## A031216.P10729859486543242993

`A171397(p?[n*A032741(n)])`
-/

namespace A031216.P10729859486543242993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A031216.P10729859486543242993

namespace A031216

/-- `A171397(p?[n*A032741(n)])` -/
def P10729859486543242993.Spec : Prop :=
  ∀ n, P10729859486543242993.a n = A031216 (n + 1)

end A031216

/-! ## A031216.P401826873968364596

`A171397(p?[n*A105700(n)])`
-/

namespace A031216.P401826873968364596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A031216.P401826873968364596

namespace A031216

/-- `A171397(p?[n*A105700(n)])` -/
def P401826873968364596.Spec : Prop :=
  ∀ n, P401826873968364596.a n = A031216 (n + 1)

end A031216

/-! ## A031216.P286752808753674930

`A171397(p?[n*A107393(n)²])`
-/

namespace A031216.P286752808753674930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A107393 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A031216.P286752808753674930

namespace A031216

/-- `A171397(p?[n*A107393(n)²])` -/
def P286752808753674930.Spec : Prop :=
  ∀ n, P286752808753674930.a n = A031216 (n + 1)

end A031216

/-! ## A031216.P2038657173362464962

`A171397(record[A002322(n+1)+1])`
-/

namespace A031216.P2038657173362464962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A031216.P2038657173362464962

namespace A031216

/-- `A171397(record[A002322(n+1)+1])` -/
def P2038657173362464962.Spec : Prop :=
  ∀ n, P2038657173362464962.a n = A031216 (n + 1)

end A031216

/-! ## A031216.P8138368193920317052

`A171397(p?[A001489(n)*A107393(n)])`
-/

namespace A031216.P8138368193920317052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n * A107393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A031216.P8138368193920317052

namespace A031216

/-- `A171397(p?[A001489(n)*A107393(n)])` -/
def P8138368193920317052.Spec : Prop :=
  ∀ n, P8138368193920317052.a n = A031216 (n + 1)

end A031216

/-! ## A031216.P4168418169584184355

`A171397(p?[A005180(n+1)])`
-/

namespace A031216.P4168418169584184355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A031216.P4168418169584184355

namespace A031216

/-- `A171397(p?[A005180(n+1)])` -/
def P4168418169584184355.Spec : Prop :=
  ∀ n, P4168418169584184355.a n = A031216 (n + 1)

end A031216

/-!
# A031217: Number of terms in longest arithmetic progression of consecutive primes starting at n-th prime (conjectured to be unbounded).

The programs for A031217, there is no canonical definition to state claims against.
-/

/-! ## A031217.P16859098068396335504

`A040000(A136771(1+n))+Δ[A037203(n)]`
-/

namespace A031217.P16859098068396335504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 (A136771 (1 + n)).toNat + (f1 (n + 1) - f1 n)

end

end A031217.P16859098068396335504

/-! ## A031217.P2108129484921062176

`A360416(A079054(n+2)^A134644(n+1))`
-/

namespace A031217.P2108129484921062176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360416 (SequenceMachineLib.roundAway ((A079054 (n + 2) : ℚ) ^ (A134644 (n + 1) : ℤ))).toNat

end

end A031217.P2108129484921062176

/-! ## A031217.P9701601066120435750

`xor(A098725(A000040(n+2)²), A098726(n+1))`
-/

namespace A031217.P9701601066120435750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A098725 (A000040 (n + 2) ^ 2).toNat) (A098726 (n + 1))

end

end A031217.P9701601066120435750

/-! ## A031217.P12011339993857178671

`A040000(A238279(2*n+1))+Δ[A037203(n)]`
-/

namespace A031217.P12011339993857178671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 (A238279 (2 * n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A031217.P12011339993857178671

/-! ## A031217.P13831641405563415402

`xor(A098725(A098717(n+1)), A098726(n+1))`
-/

namespace A031217.P13831641405563415402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A098725 (A098717 (n + 1)).toNat) (A098726 (n + 1))

end

end A031217.P13831641405563415402

/-!
# A031218: Largest prime power <= n.

The programs for A031218, the canonical program `A031218.P11079871404618641815` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031218 has offset 1).

The definition of A031218 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, A065515, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A031218.P1575443689004199921

`n+1-A378457(n+1)`
-/

namespace A031218.P1575443689004199921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A378457 (n + 1)

end

end A031218.P1575443689004199921

namespace A031218

/-- `n+1-A378457(n+1)` -/
def P1575443689004199921.Spec : Prop :=
  ∀ n, P1575443689004199921.a n = A031218 (n + 1)

theorem P1575443689004199921.correct : P1575443689004199921.Spec := by
  intro n
  simp only [A031218, Nat.add_sub_cancel, A031218.P1575443689004199921.a, A031218.P11079871404618641815.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A065515, A065515.P15129427044826637405.a, A378457, A378457.P16628396355233593541.a, A000079, A000079.P10855139691139572931.a, A025528, A025528.P16801658268274976616.f1, A025528.P16801658268274976616.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A276781, A276781.P2604158077506703315.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A002321, A002321.P7713085837087473323.f2, A002321.P7713085837087473323.f1, A002321.P7713085837087473323.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031218

/-! ## A031218.P11079871404618641815

`A000961(A065515(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A031218

/-- `A000961(A065515(n+1))` -/
def P11079871404618641815.Spec : Prop :=
  ∀ n, P11079871404618641815.a n = A031218 (n + 1)

theorem P11079871404618641815.correct : P11079871404618641815.Spec := by
  intro n
  simp only [A031218, Nat.add_sub_cancel]

end A031218

/-! ## A031218.P4387019399302360193

`2-A276781(n+1)+n`
-/

namespace A031218.P4387019399302360193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A276781 (n + 1) + (n : ℤ)

end

end A031218.P4387019399302360193

namespace A031218

/-- `2-A276781(n+1)+n` -/
def P4387019399302360193.Spec : Prop :=
  ∀ n, P4387019399302360193.a n = A031218 (n + 1)

theorem P4387019399302360193.correct : P4387019399302360193.Spec := by
  intro n
  simp only [A031218, Nat.add_sub_cancel, A031218.P4387019399302360193.a, A031218.P11079871404618641815.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A065515, A065515.P15129427044826637405.a, A276781, A276781.P2604158077506703315.a, A000079, A000079.P10855139691139572931.a, A025528, A025528.P16801658268274976616.f1, A025528.P16801658268274976616.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A002321, A002321.P7713085837087473323.f2, A002321.P7713085837087473323.f1, A002321.P7713085837087473323.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031218

/-! ## A031218.P10261423913826576831

`A377782(n)+a(n-1)` with `a(0)=1`
-/

namespace A031218.P10261423913826576831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A377782 n + a (n - 1)

end

end A031218.P10261423913826576831

namespace A031218

/-- `A377782(n)+a(n-1)` -/
def P10261423913826576831.Spec : Prop :=
  ∀ n, P10261423913826576831.a n = A031218 (n + 1)

end A031218

/-! ## A031218.P1322768300073173339

`A000961(∑[round(n/∏{e}[n+1, #+n])]+1)`
-/

namespace A031218.P1322768300073173339
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + n) : ℕ) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A031218.P1322768300073173339

namespace A031218

/-- `A000961(∑[round(n/∏{e}[n+1, #+n])]+1)` -/
def P1322768300073173339.Spec : Prop :=
  ∀ n, P1322768300073173339.a n = A031218 (n + 1)

end A031218

/-! ## A031218.P7737686704049375150

`A000961(∑[A010055(n+1)])`
-/

namespace A031218.P7737686704049375150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A031218.P7737686704049375150

namespace A031218

/-- `A000961(∑[A010055(n+1)])` -/
def P7737686704049375150.Spec : Prop :=
  ∀ n, P7737686704049375150.a n = A031218 (n + 1)

end A031218

/-! ## A031218.P14387625230200962505

`A000961(A025528(n+1)+1)`
-/

namespace A031218.P14387625230200962505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A025528 (n + 1) + 1).toNat

end

end A031218.P14387625230200962505

namespace A031218

/-- `A000961(A025528(n+1)+1)` -/
def P14387625230200962505.Spec : Prop :=
  ∀ n, P14387625230200962505.a n = A031218 (n + 1)

end A031218

/-! ## A031218.P11614328998827932988

`A000961(∑[A069513(n+1)]+1)`
-/

namespace A031218.P11614328998827932988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A031218.P11614328998827932988

namespace A031218

/-- `A000961(∑[A069513(n+1)]+1)` -/
def P11614328998827932988.Spec : Prop :=
  ∀ n, P11614328998827932988.a n = A031218 (n + 1)

end A031218

/-! ## A031218.P9411968159315876301

`A138929(∑[A010055(n+1)])/2`
-/

namespace A031218.P9411968159315876301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138929 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2

end

end A031218.P9411968159315876301

namespace A031218

/-- `A138929(∑[A010055(n+1)])/2` -/
def P9411968159315876301.Spec : Prop :=
  ∀ n, P9411968159315876301.a n = (A031218 (n + 1) : ℚ)

end A031218

/-! ## A031218.P6060696542919961938

`A000961(∑[A345064(∏{p}[n+1, #])])`
-/

namespace A031218.P6060696542919961938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345064 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A031218.P6060696542919961938

namespace A031218

/-- `A000961(∑[A345064(∏{p}[n+1, #])])` -/
def P6060696542919961938.Spec : Prop :=
  ∀ n, P6060696542919961938.a n = A031218 (n + 1)

end A031218

/-! ## A031218.P7031582763584393112

`A138929(A025528(n+1)+1)/2`
-/

namespace A031218.P7031582763584393112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138929 (A025528 (n + 1) + 1).toNat : ℚ) / 2

end

end A031218.P7031582763584393112

namespace A031218

/-- `A138929(A025528(n+1)+1)/2` -/
def P7031582763584393112.Spec : Prop :=
  ∀ n, P7031582763584393112.a n = (A031218 (n + 1) : ℚ)

theorem P7031582763584393112.correct : P7031582763584393112.Spec := by
  intro n
  simp only [A031218, Nat.add_sub_cancel, A031218.P7031582763584393112.a, A031218.P11079871404618641815.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A025528, A025528.P16801658268274976616.f1, A025528.P16801658268274976616.a, A065515, A065515.P15129427044826637405.a, A138929, A138929.P2871587686834618281.a, A000079, A000079.P10855139691139572931.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A002321, A002321.P7713085837087473323.f2, A002321.P7713085837087473323.f1, A002321.P7713085837087473323.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031218

/-! ## A031218.P14908694487598402494

`A000961(1-A085970(n+1)+n)`
-/

namespace A031218.P14908694487598402494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (1 - A085970 (n + 1) + (n : ℤ)).toNat

end

end A031218.P14908694487598402494

namespace A031218

/-- `A000961(1-A085970(n+1)+n)` -/
def P14908694487598402494.Spec : Prop :=
  ∀ n, P14908694487598402494.a n = A031218 (n + 1)

end A031218

/-! ## A031218.P18077396303637944362

`A000015(n+1)-A097106(n+1)`
-/

namespace A031218.P18077396303637944362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (n + 1) - A097106 (n + 1)

end

end A031218.P18077396303637944362

namespace A031218

/-- `A000015(n+1)-A097106(n+1)` -/
def P18077396303637944362.Spec : Prop :=
  ∀ n, P18077396303637944362.a n = A031218 (n + 1)

theorem P18077396303637944362.correct : P18077396303637944362.Spec := by
  intro n
  simp only [A031218, Nat.add_sub_cancel, A031218.P18077396303637944362.a, A031218.P11079871404618641815.a, A000015, A000015.P2530082583010810879.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A065515, A065515.P15129427044826637405.a, A097106, A097106.P14132093488680178125.a, A000079, A000079.P10855139691139572931.a, A010055, A010055.P13257247064813316035.f1, A010055.P13257247064813316035.a, A025528, A025528.P16801658268274976616.f1, A025528.P16801658268274976616.a, A057820, A057820.P915405789854175386.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A002321, A002321.P7713085837087473323.f2, A002321.P7713085837087473323.f1, A002321.P7713085837087473323.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031218

/-! ## A031218.P2622937538157108072

`A000961(n+2-A356068(n+1))`
-/

namespace A031218.P2622937538157108072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 ((n + 2 : ℤ) - A356068 (n + 1)).toNat

end

end A031218.P2622937538157108072

namespace A031218

/-- `A000961(n+2-A356068(n+1))` -/
def P2622937538157108072.Spec : Prop :=
  ∀ n, P2622937538157108072.a n = A031218 (n + 1)

end A031218

/-! ## A031218.P316660318298396389

`A000961(∑[floor(1/A303759(n+1))])`
-/

namespace A031218.P316660318298396389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A303759 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A031218.P316660318298396389

namespace A031218

/-- `A000961(∑[floor(1/A303759(n+1))])` -/
def P316660318298396389.Spec : Prop :=
  ∀ n, P316660318298396389.a n = A031218 (n + 1)

end A031218

/-! ## A031218.P5881918344909147040

`A000961(∑[A001221(n+1)!%2])`
-/

namespace A031218.P5881918344909147040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A001221 (n + 1)).toNat % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A031218.P5881918344909147040

namespace A031218

/-- `A000961(∑[A001221(n+1)!%2])` -/
def P5881918344909147040.Spec : Prop :=
  ∀ n, P5881918344909147040.a n = A031218 (n + 1)

end A031218

/-! ## A031218.P16692702126068298565

`A181062(∑[char[A181062(n+1)]])+1`
-/

namespace A031218.P16692702126068298565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A031218.P16692702126068298565

namespace A031218

/-- `A181062(∑[char[A181062(n+1)]])+1` -/
def P16692702126068298565.Spec : Prop :=
  ∀ n, P16692702126068298565.a n = A031218 (n + 1)

end A031218

/-! ## A031218.P1967774100003986773

`A000961(∑[char[A000961(n+1)-1]])`
-/

namespace A031218.P1967774100003986773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A031218.P1967774100003986773

namespace A031218

/-- `A000961(∑[char[A000961(n+1)-1]])` -/
def P1967774100003986773.Spec : Prop :=
  ∀ n, P1967774100003986773.a n = A031218 (n + 1)

end A031218

/-! ## A031218.P998474307777651041

`A000961(∑[n²%A014963(n+1)]+1)`
-/

namespace A031218.P998474307777651041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (A014963 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A031218.P998474307777651041

namespace A031218

/-- `A000961(∑[n²%A014963(n+1)]+1)` -/
def P998474307777651041.Spec : Prop :=
  ∀ n, P998474307777651041.a n = A031218 (n + 1)

end A031218

/-! ## A031218.P13027865938708225916

`A000961(∑[A119842(A007947(n+1))])`
-/

namespace A031218.P13027865938708225916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119842 (A007947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A031218.P13027865938708225916

namespace A031218

/-- `A000961(∑[A119842(A007947(n+1))])` -/
def P13027865938708225916.Spec : Prop :=
  ∀ n, P13027865938708225916.a n = A031218 (n + 1)

end A031218

/-!
# A031219: Write n in base 5 and juxtapose.

The programs for A031219, there is no canonical definition to state claims against.
-/

/-! ## A031219.P9520844433658373726

`4-A031251(n+1)`
-/

namespace A031219.P9520844433658373726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A031251 (n + 1)

end

end A031219.P9520844433658373726

/-! ## A031219.P10017366107727654186

`∑[-Δ[A031251(A028310(n))]]+1`
-/

namespace A031219.P10017366107727654186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031251 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A031219.P10017366107727654186

/-! ## A031219.P17402797657683084209

`or(-A031251(n+1), A000007(n))+4`
-/

namespace A031219.P17402797657683084209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A031251 (n + 1)) (A000007 n) + 4

end

end A031219.P17402797657683084209

/-! ## A031219.P4690503899584171591

`A055146(n+1)%5`
-/

namespace A031219.P4690503899584171591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055146 (n + 1)) 5

end

end A031219.P4690503899584171591

/-! ## A031219.P4194314060008239060

`A025581(A052905(n)+A031251(n+1))`
-/

namespace A031219.P4194314060008239060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A052905 n + A031251 (n + 1)).toNat

end

end A031219.P4194314060008239060

/-! ## A031219.P15901175260984216808

`A025581(A031251(n+1)+eq[0, A025581(n+4)])`
-/

namespace A031219.P15901175260984216808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A031251 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)).toNat

end

end A031219.P15901175260984216808

/-!
# A031220: Position of n-th 0 in A031219.

The programs for A031220, there is no canonical definition to state claims against.
-/

/-! ## A031220.P15393185065890696025

`eq[0, A031219(n+1)]+1`
-/

namespace A031220.P15393185065890696025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031220.P15393185065890696025

/-! ## A031220.P7078111917830300592

`eq[4, A031251(n+1)]+1`
-/

namespace A031220.P7078111917830300592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031251 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031220.P7078111917830300592

/-! ## A031220.P17903658177576220351

`eq[0, A031219(A028310(n))]`
-/

namespace A031220.P17903658177576220351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031220.P17903658177576220351

/-! ## A031220.P4832159443660876906

`eq[0, A031219(A000007(n)+n)]`
-/

namespace A031220.P4832159443660876906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031220.P4832159443660876906

/-! ## A031220.P434521135077976701

`eq[0, A031219(A000038(n)+n)]`
-/

namespace A031220.P434521135077976701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031220.P434521135077976701

/-! ## A031220.P6537635241685964949

`eq[0, A031219(gcd(n, A008574(n)))]`
-/

namespace A031220.P6537635241685964949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (Int.gcd (n : ℤ) (A008574 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031220.P6537635241685964949

/-! ## A031220.P8822031827927000402

`eq[0, A031219(or(n, A000007(n)))]`
-/

namespace A031220.P8822031827927000402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031220.P8822031827927000402

/-! ## A031220.P10291840467205235609

`eq[0, A031219(A065033(2*n))]`
-/

namespace A031220.P10291840467205235609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031220.P10291840467205235609

/-! ## A031220.P961121482996971360

`eq[0, A031219(A233583(n+1))]`
-/

namespace A031220.P961121482996971360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031220.P961121482996971360

/-!
# A031221: Position of n-th 1 in A031219.

The programs for A031221, there is no canonical definition to state claims against.
-/

/-! ## A031221.P17409032796255138210

`eq[1, A031219(1+n)]+1`
-/

namespace A031221.P17409032796255138210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031221.P17409032796255138210

/-! ## A031221.P10435139745953592940

`eq[3, A031251(n+1)]+1`
-/

namespace A031221.P10435139745953592940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031251 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031221.P10435139745953592940

/-! ## A031221.P10516193304016504628

`eq[1, A031219(A000038(n)+n)]`
-/

namespace A031221.P10516193304016504628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031221.P10516193304016504628

/-! ## A031221.P752207454453579331

`eq[A031219(A028310(n)), A054977(n)]`
-/

namespace A031221.P752207454453579331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031221.P752207454453579331

/-! ## A031221.P15620849622088420798

`eq[A031219(A028310(n)), A057427(n)]`
-/

namespace A031221.P15620849622088420798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031221.P15620849622088420798

/-!
# A031222: Position of n-th 2 in A031219.

The programs for A031222, there is no canonical definition to state claims against.
-/

/-! ## A031222.P10299635054462391113

`eq[2, A031219(n+1)]+1`
-/

namespace A031222.P10299635054462391113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031222.P10299635054462391113

/-! ## A031222.P15126332199911881502

`eq[2, A031251(n+1)]+1`
-/

namespace A031222.P15126332199911881502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031251 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031222.P15126332199911881502

/-! ## A031222.P4907200266693426689

`eq[2, A031219(A028310(n))]`
-/

namespace A031222.P4907200266693426689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031222.P4907200266693426689

/-! ## A031222.P10015147801070190050

`eq[2, A031219(A000007(n)+n)]`
-/

namespace A031222.P10015147801070190050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031222.P10015147801070190050

/-! ## A031222.P10624502445027496983

`eq[2, A031251(A000007(n)+n)]`
-/

namespace A031222.P10624502445027496983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031251 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031222.P10624502445027496983

/-! ## A031222.P14293056610803186738

`eq[2, A031219(gcd(n, A008574(n)))]`
-/

namespace A031222.P14293056610803186738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (Int.gcd (n : ℤ) (A008574 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031222.P14293056610803186738

/-! ## A031222.P1809039340023292651

`eq[2, A031219(or(n, A000007(n)))]`
-/

namespace A031222.P1809039340023292651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031222.P1809039340023292651

/-! ## A031222.P12805020813666972387

`eq[2, A031219(xor(n, A000007(n)))]`
-/

namespace A031222.P12805020813666972387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031222.P12805020813666972387

/-! ## A031222.P14434923492452017890

`eq[2, A031219(A065033(2*n))]`
-/

namespace A031222.P14434923492452017890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031222.P14434923492452017890

/-! ## A031222.P13667216533406935672

`eq[2, A031219(A008619(A004273(n)))]`
-/

namespace A031222.P13667216533406935672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031222.P13667216533406935672

/-!
# A031223: Position of n-th 3 in A031219.

The programs for A031223, there is no canonical definition to state claims against.
-/

/-! ## A031223.P14510259000778900607

`eq[1, A031251(n+1)]+1`
-/

namespace A031223.P14510259000778900607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031251 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031223.P14510259000778900607

/-! ## A031223.P2943163007491836070

`eq[3, A031219(n+1)]+1`
-/

namespace A031223.P2943163007491836070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031223.P2943163007491836070

/-! ## A031223.P8851163225429602539

`eq[1, A031251(A028310(n))]`
-/

namespace A031223.P8851163225429602539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031251 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031223.P8851163225429602539

/-! ## A031223.P9650248732620507165

`eq[3, A031219(A000038(n)+n)]`
-/

namespace A031223.P9650248732620507165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031223.P9650248732620507165

/-! ## A031223.P6240640975206498147

`eq[1, A031251(A000007(n)+n)]`
-/

namespace A031223.P6240640975206498147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031251 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031223.P6240640975206498147

/-! ## A031223.P8643149583342401512

`eq[3, A031219(A000007(n)+n)]`
-/

namespace A031223.P8643149583342401512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031223.P8643149583342401512

/-! ## A031223.P11712023712418324793

`eq[3, A031219(or(n, A000007(n)))]`
-/

namespace A031223.P11712023712418324793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031223.P11712023712418324793

/-! ## A031223.P5564847762823827880

`eq[3, A031219(A065033(2*n))]`
-/

namespace A031223.P5564847762823827880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031223.P5564847762823827880

/-! ## A031223.P16850362928936142146

`eq[1, A031251(A233583(n+1))]`
-/

namespace A031223.P16850362928936142146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031251 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031223.P16850362928936142146

/-!
# A031224: Position of n-th 4 in A031219.

The programs for A031224, there is no canonical definition to state claims against.
-/

/-! ## A031224.P2393356899691517321

`eq[4, A031219(A028310(n))]`
-/

namespace A031224.P2393356899691517321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031224.P2393356899691517321

/-! ## A031224.P3638655608170481899

`eq[4, A031219(A000007(n)+n)]`
-/

namespace A031224.P3638655608170481899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031224.P3638655608170481899

/-! ## A031224.P12868813401207147104

`eq[4, A031219(A000038(n)+n)]`
-/

namespace A031224.P12868813401207147104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031224.P12868813401207147104

/-! ## A031224.P2244220748641145368

`eq[4, A031219(or(n, A000007(n)))]`
-/

namespace A031224.P2244220748641145368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031224.P2244220748641145368

/-! ## A031224.P14311434644878711385

`eq[A000007(n), A031251(n+1)]+1`
-/

namespace A031224.P14311434644878711385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031251 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A031224.P14311434644878711385

/-! ## A031224.P10026999273914345958

`eq[A000007(n), A031251(A000007(n)+n)]`
-/

namespace A031224.P10026999273914345958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031251 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031224.P10026999273914345958

/-! ## A031224.P14915862600457320032

`eq[4, A031219(A065033(2*n))]`
-/

namespace A031224.P14915862600457320032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031224.P14915862600457320032

/-! ## A031224.P15661825094024150308

`eq[4, A031219(A233583(n+1))]`
-/

namespace A031224.P15661825094024150308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031224.P15661825094024150308

/-!
# A031226: Length of n-th run of digit 0 in A031219.

The programs for A031226, there is no canonical definition to state claims against.
-/

/-! ## A031226.P9791119546401486886

`gcd(A002910(A076874(n+3)), A261795(2*n+5))`
-/

namespace A031226.P9791119546401486886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002910 (A076874 (n + 3)).toNat) (A261795 (2 * n + 5))

end

end A031226.P9791119546401486886

/-! ## A031226.P272669989840521285

`A226498(val(6*n+3, 3)%A213188(n+2))`
-/

namespace A031226.P272669989840521285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226498 (Int.tmod (SequenceMachineLib.valuation (6 * n + 3) 3 : ℤ) (A213188 (n + 2))).toNat

end

end A031226.P272669989840521285

/-! ## A031226.P16708253910638487791

`A050361(A016945(n)*A038936(n+1))`
-/

namespace A031226.P16708253910638487791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (A016945 n * A038936 (n + 1)).toNat

end

end A031226.P16708253910638487791

/-! ## A031226.P5863378955448264110

`A050361(A064989(2*n+1)*A161344(3*n+2))`
-/

namespace A031226.P5863378955448264110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (A064989 (2 * n + 1) * A161344 (3 * n + 2)).toNat

end

end A031226.P5863378955448264110

/-! ## A031226.P11753022201030985872

`runs[∑[A259434(2*n+1)]]`
-/

namespace A031226.P11753022201030985872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259434 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A031226.P11753022201030985872

/-!
# A031227: Length of n-th run of digit 1 in A031219.

The programs for A031227, there is no canonical definition to state claims against.
-/

/-! ## A031227.P799682358209930792

`runs[A031221(n+1)-n]`
-/

namespace A031227.P799682358209930792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031221 (n + 1) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A031227.P799682358209930792

/-! ## A031227.P5721266280965693262

`runs[eq[1, A031219(n+1)]-n]`
-/

namespace A031227.P5721266280965693262
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A031227.P5721266280965693262

/-! ## A031227.P868825300523254576

`gcd(A001222(A350564(n+1)), A350528(2*n+5))`
-/

namespace A031227.P868825300523254576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A350564 (n + 1)).toNat) (A350528 (2 * n + 5))

end

end A031227.P868825300523254576

/-!
# A031228: Length of n-th run of digit 2 in A031219.

The programs for A031228, there is no canonical definition to state claims against.
-/

/-! ## A031228.P1048869765500902139

`runs[A031222(n+1)-n]`
-/

namespace A031228.P1048869765500902139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031222 (n + 1) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A031228.P1048869765500902139

/-! ## A031228.P1422187199680658588

`runs[eq[2, A031219(n+1)]-n]`
-/

namespace A031228.P1422187199680658588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A031228.P1422187199680658588

/-! ## A031228.P10636555199069456410

`A030558(A039163(n+1))^Δ[A024648(n)]`
-/

namespace A031228.P10636555199069456410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024648 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030558 (A039163 (n + 1)).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A031228.P10636555199069456410

/-! ## A031228.P4061231291734018948

`A030558(A039163(n+1))^A007318(A185973(n+1))`
-/

namespace A031228.P4061231291734018948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030558 (A039163 (n + 1)).toNat : ℚ) ^ (A007318 (A185973 (n + 1)).toNat : ℤ)

end

end A031228.P4061231291734018948

/-! ## A031228.P16751295668349660418

`A001222(A068827(n+1))*A030558(A039163(n+1))`
-/

namespace A031228.P16751295668349660418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A068827 (n + 1)).toNat * A030558 (A039163 (n + 1)).toNat

end

end A031228.P16751295668349660418

/-!
# A031229: Length of n-th run of digit 3 in A031219.

The programs for A031229, there is no canonical definition to state claims against.
-/

/-! ## A031229.P15920466008812392208

`runs[A031223(n+1)-n]`
-/

namespace A031229.P15920466008812392208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031223 (n + 1) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A031229.P15920466008812392208

/-! ## A031229.P8906987995546075153

`runs[eq[3, A031219(n+1)]-n]`
-/

namespace A031229.P8906987995546075153
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A031229.P8906987995546075153

/-! ## A031229.P13744310532973478103

`A031246(lt[A091351(n), A344486(n)])`
-/

namespace A031229.P13744310532973478103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091351 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031246 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A031229.P13744310532973478103

/-! ## A031229.P7085634428323050266

`A031246(lt[A322081(n+1), A344486(n)])`
-/

namespace A031229.P7085634428323050266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031246 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A031229.P7085634428323050266

/-! ## A031229.P106535945580635367

`A030558(A240735(n+1))`
-/

namespace A031229.P106535945580635367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030558 (A240735 (n + 1)).toNat

end

end A031229.P106535945580635367

/-!
# A031230: Length of n-th run of digit 4 in A031219.

The programs for A031230, there is no canonical definition to state claims against.
-/

/-! ## A031230.P11029518768867292819

`runs[A031224(n+1)-n]`
-/

namespace A031230.P11029518768867292819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031224 (n + 1) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A031230.P11029518768867292819

/-! ## A031230.P640891321174963102

`A030615(A000292(n)+(n+1)%2)`
-/

namespace A031230.P640891321174963102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030615 (A000292 n + (((n + 1) % 2 : ℕ) : ℤ)).toNat

end

end A031230.P640891321174963102

/-! ## A031230.P1598030500154384648

`gcd(A005117(A310326(n)), A299755(2*n+5))`
-/

namespace A031230.P1598030500154384648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005117 (A310326 n).toNat) (A299755 (2 * n + 5))

end

end A031230.P1598030500154384648

/-! ## A031230.P12562599016984147750

`A193073(A296150(n+5)^A193073(2*n+5))`
-/

namespace A031230.P12562599016984147750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193073 (SequenceMachineLib.roundAway ((A296150 (n + 5) : ℚ) ^ (A193073 (2 * n + 5) : ℤ))).toNat

end

end A031230.P12562599016984147750

/-! ## A031230.P16843110065896684340

`runs[A088574(n+1)%A088527(n+1)]`
-/

namespace A031230.P16843110065896684340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088574 (n + 1)) (A088527 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A031230.P16843110065896684340

/-!
# A031232: a(n)=(# 1's)-(# 2's) in first n terms of A031219.

The programs for A031232, there is no canonical definition to state claims against.
-/

/-! ## A031232.P5842606038749580527

`∑[round(sin(A031219(n+1)²))]`
-/

namespace A031232.P5842606038749580527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (A031219 (n + 1) ^ 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031232.P5842606038749580527

/-! ## A031232.P2502823209245405652

`∑[round(sin((4-A031251(n+1))²))]`
-/

namespace A031232.P2502823209245405652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin ((4 - A031251 (n + 1)) ^ 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031232.P2502823209245405652

/-! ## A031232.P10106681026950018982

`∑[round(sin((A055146(n+1)%5)²))]`
-/

namespace A031232.P10106681026950018982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (Int.tmod (A055146 (n + 1)) 5 ^ 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031232.P10106681026950018982

/-! ## A031232.P6812089443631516369

`A031249(A031285(n)+11)`
-/

namespace A031232.P6812089443631516369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031249 (A031285 n + 11).toNat

end

end A031232.P6812089443631516369

/-! ## A031232.P9160840931894634157

`∑[A219009(A164147(n))]`
-/

namespace A031232.P9160840931894634157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219009 (A164147 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031232.P9160840931894634157

/-!
# A031236: Position of n-th 0 in A031235.

The programs for A031236, there is no canonical definition to state claims against.
-/

/-! ## A031236.P2589132151435797590

`eq[0, A031235(n)]`
-/

namespace A031236.P2589132151435797590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031236.P2589132151435797590

/-! ## A031236.P1706793653164478754

`record[n-A000040(n+1)*A031235(n)]`
-/

namespace A031236.P1706793653164478754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000040 (n + 1) * A031235 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031236.P1706793653164478754

/-! ## A031236.P2698592025100709772

`lt[A031235(n), A031226(A031186(n))]`
-/

namespace A031236.P2698592025100709772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031226 (A031186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031236.P2698592025100709772

/-! ## A031236.P13091562917858420830

`lt[A031235(n), A031226(A031195(n))]`
-/

namespace A031236.P13091562917858420830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031226 (A031195 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031236.P13091562917858420830

/-! ## A031236.P8177147887323459244

`lt[A031235(n), A031226(A031212(n))]`
-/

namespace A031236.P8177147887323459244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031226 (A031212 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031236.P8177147887323459244

/-! ## A031236.P17184922807441037937

`lt[A031235(n), A031226(A031213(n))]`
-/

namespace A031236.P17184922807441037937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031226 (A031213 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031236.P17184922807441037937

/-! ## A031236.P17559241139418840848

`lt[A031235(n), A031229(A031200(n+2))]`
-/

namespace A031236.P17559241139418840848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031229 (A031200 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031236.P17559241139418840848

/-! ## A031236.P3372411519214205248

`lt[A031235(n), A054014(A006530(n+2))+1]`
-/

namespace A031236.P3372411519214205248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054014 (A006530 (n + 2)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031236.P3372411519214205248

/-! ## A031236.P8467170197546545486

`record[A061579(A061579(n))-n*A031235(n)]`
-/

namespace A031236.P8467170197546545486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A061579 n).toNat - (n : ℤ) * A031235 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031236.P8467170197546545486

/-! ## A031236.P16464339866665668346

`record[n-A000290(n*A031235(n))]`
-/

namespace A031236.P16464339866665668346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000290 ((n : ℤ) * A031235 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031236.P16464339866665668346

/-! ## A031236.P15506923539800555140

`record[n-A007090(n*A031235(n))]`
-/

namespace A031236.P15506923539800555140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007090 ((n : ℤ) * A031235 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031236.P15506923539800555140

/-!
# A031237: Position of n-th 1 in A031235.

The programs for A031237, there is no canonical definition to state claims against.
-/

/-! ## A031237.P11775703953513667607

`eq[1, A031235(n)]`
-/

namespace A031237.P11775703953513667607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031237.P11775703953513667607

/-! ## A031237.P3774852590936496734

`record[gcd(n+1, A031235(n+1)+n)]`
-/

namespace A031237.P3774852590936496734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A031235 (n + 1) + (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031237.P3774852590936496734

/-! ## A031237.P18393529723754093263

`A000720(p?[A008578(n+1)*A031235(n)])`
-/

namespace A031237.P18393529723754093263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A031235 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A031237.P18393529723754093263

/-! ## A031237.P745746770038945084

`A061395(p?[A008578(n+1)*A031235(n)])`
-/

namespace A031237.P745746770038945084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A031235 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A031237.P745746770038945084

/-! ## A031237.P2884190598943751225

`lt[xor(1, A031235(n)), A305490(3*n+1)]`
-/

namespace A031237.P2884190598943751225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A031235 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305490 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031237.P2884190598943751225

/-!
# A031238: Position of n-th 2 in A031235.

The programs for A031238, there is no canonical definition to state claims against.
-/

/-! ## A031238.P1611185439259517721

`eq[2, A031235(n)]`
-/

namespace A031238.P1611185439259517721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031238.P1611185439259517721

/-! ## A031238.P13680088777338681948

`record[gcd(n+2, A031235(n+2)+n)]`
-/

namespace A031238.P13680088777338681948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A031235 (n + 2) + (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031238.P13680088777338681948

/-! ## A031238.P13094577208137842393

`lt[A063524(n)+1, A031235(n)%3]`
-/

namespace A031238.P13094577208137842393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031235 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031238.P13094577208137842393

/-! ## A031238.P5412503946394688475

`lt[A054977(n), val(A031235(n)+2, 2)]`
-/

namespace A031238.P5412503946394688475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A031235 n + 2).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031238.P5412503946394688475

/-!
# A031239: Position of n-th 3 in A031235.

The programs for A031239, there is no canonical definition to state claims against.
-/

/-! ## A031239.P7321824103185903541

`eq[3, A031235(n)]`
-/

namespace A031239.P7321824103185903541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031239.P7321824103185903541

/-! ## A031239.P6674686245350747688

`eq[1, Δ[A031250(n+1)]]+2`
-/

namespace A031239.P6674686245350747688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A031239.P6674686245350747688

/-! ## A031239.P8580968636577889548

`record[gcd(n+3, A031235(n+3)+n)]`
-/

namespace A031239.P8580968636577889548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 3 : ℤ) (A031235 (n + 3) + (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031239.P8580968636577889548

/-! ## A031239.P15311723655617174782

`lt[A115634(A001223(n+1))+5, A031235(n)%4]`
-/

namespace A031239.P15311723655617174782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115634 (A001223 (n + 1)).toNat + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031235 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031239.P15311723655617174782

/-!
# A031240: Position of n-th 4 in A031235.

The programs for A031240, there is no canonical definition to state claims against.
-/

/-! ## A031240.P12470493870280898377

`lt[3, A031235(n)]`
-/

namespace A031240.P12470493870280898377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031240.P12470493870280898377

/-! ## A031240.P13142940174772144878

`eq[4, A031235(char[1]+n)]`
-/

namespace A031240.P13142940174772144878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 ((if ∃ j, f3 j = n then 1 else 0) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031240.P13142940174772144878

/-! ## A031240.P4776917055426843033

`eq[4, A031235(n+1)]+1`
-/

namespace A031240.P4776917055426843033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031240.P4776917055426843033

/-! ## A031240.P12337875292892332594

`A000027(eq[4, A031235(n)])`
-/

namespace A031240.P12337875292892332594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031240.P12337875292892332594

/-! ## A031240.P9646437747132634677

`A087156(eq[4, A031235(n)])`
-/

namespace A031240.P9646437747132634677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031240.P9646437747132634677

/-! ## A031240.P1938806558927278720

`eq[A031235(n), A040002(n)]`
-/

namespace A031240.P1938806558927278720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031240.P1938806558927278720

/-! ## A031240.P15142695271709282993

`eq[A031235(n), A113311(n)]`
-/

namespace A031240.P15142695271709282993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113311 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031240.P15142695271709282993

/-! ## A031240.P6791324914815411083

`eq[A031235(n), A123932(n)]`
-/

namespace A031240.P6791324914815411083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123932 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031240.P6791324914815411083

/-! ## A031240.P14373033140479392743

`eq[A031235(n), A151798(n)]`
-/

namespace A031240.P14373033140479392743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151798 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031240.P14373033140479392743

/-! ## A031240.P16340871657134108514

`eq[A031235(n), A255176(n)]`
-/

namespace A031240.P16340871657134108514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031240.P16340871657134108514

/-! ## A031240.P15427896925867017293

`eq[A031235(n), A267649(n)]`
-/

namespace A031240.P15427896925867017293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267649 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031240.P15427896925867017293

/-! ## A031240.P6971357495187926989

`eq[A031235(n), A329505(n)]`
-/

namespace A031240.P6971357495187926989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329505 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031240.P6971357495187926989

/-! ## A031240.P17674250198244835687

`eq[A031235(n), A329509(n)]`
-/

namespace A031240.P17674250198244835687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329509 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031240.P17674250198244835687

/-! ## A031240.P15652258710552187632

`eq[A031235(n), A297217(n+1)]`
-/

namespace A031240.P15652258710552187632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297217 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031240.P15652258710552187632

/-! ## A031240.P10022282616884208458

`eq[A031235(n), A358241(n+1)]`
-/

namespace A031240.P10022282616884208458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358241 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031240.P10022282616884208458

/-! ## A031240.P16373386822094181036

`eq[A031235(n), A226294(A004273(n))]`
-/

namespace A031240.P16373386822094181036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226294 (A004273 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031240.P16373386822094181036

/-! ## A031240.P9101270051741148089

`eq[A031235(n), A164356(4*n)²]`
-/

namespace A031240.P9101270051741148089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164356 (4 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031240.P9101270051741148089

/-!
# A031242: Length of n-th run of digit 0 in A031235.

The programs for A031242, there is no canonical definition to state claims against.
-/

/-! ## A031242.P12749374976596368855

`runs[A031236(n+1)-n]`
-/

namespace A031242.P12749374976596368855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031236 (n + 1) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A031242.P12749374976596368855

/-! ## A031242.P13012151801201619085

`A031226(A055456(n+1))`
-/

namespace A031242.P13012151801201619085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031226 (A055456 (n + 1)).toNat

end

end A031242.P13012151801201619085

/-! ## A031242.P2497198476765680982

`gcd(A000010(A263757(n+1)), A261795(2*n+3))`
-/

namespace A031242.P2497198476765680982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (A263757 (n + 1)).toNat) (A261795 (2 * n + 3))

end

end A031242.P2497198476765680982

/-! ## A031242.P4871572220337433639

`C(A355749(2*n+5), A187034(A038500(n+4)))`
-/

namespace A031242.P4871572220337433639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A355749 (2 * n + 5)).toNat (A187034 (A038500 (n + 4)).toNat).toNat

end

end A031242.P4871572220337433639

/-! ## A031242.P2605916136020843244

`Δ[lt[0, A175421(n+4)]]`
-/

namespace A031242.P2605916136020843244
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175421 (n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A031242.P2605916136020843244

/-!
# A031243: Length of n-th run of digit 1 in A031235.

The programs for A031243, there is no canonical definition to state claims against.
-/

/-! ## A031243.P13693741119227950831

`runs[A031237(1+n)-n]`
-/

namespace A031243.P13693741119227950831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031237 (1 + n) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A031243.P13693741119227950831

/-! ## A031243.P15609424091353440101

`A030576(A047201(n+1))%Δ[A141214(n)]`
-/

namespace A031243.P15609424091353440101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030576 (A047201 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A031243.P15609424091353440101

/-! ## A031243.P9291679661142543301

`A030576(A047201(n+1))+A000007(A087397(n+1))`
-/

namespace A031243.P9291679661142543301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030576 (A047201 (n + 1)).toNat + A000007 (A087397 (n + 1)).toNat

end

end A031243.P9291679661142543301

/-! ## A031243.P12652949237636178762

`A030576(A047201(n+1))+A000007(A351724(n))`
-/

namespace A031243.P12652949237636178762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030576 (A047201 (n + 1)).toNat + A000007 (A351724 n).toNat

end

end A031243.P12652949237636178762

/-! ## A031243.P11285909977953928302

`A030576(A047201(n+1)^A119335(n))`
-/

namespace A031243.P11285909977953928302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030576 (SequenceMachineLib.roundAway ((A047201 (n + 1) : ℚ) ^ (A119335 n : ℤ))).toNat

end

end A031243.P11285909977953928302

/-!
# A031244: Length of n-th run of digit 2 in A031235.

The programs for A031244, there is no canonical definition to state claims against.
-/

/-! ## A031244.P17699497783014052678

`gcd(A256074(n+1), A283684(n+1))`
-/

namespace A031244.P17699497783014052678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A256074 (n + 1)) (A283684 (n + 1))

end

end A031244.P17699497783014052678

/-! ## A031244.P8181328133597479710

`gcd(A078898(A212402(n+1)), A131967(n+1))`
-/

namespace A031244.P8181328133597479710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A078898 (A212402 (n + 1)).toNat) (A131967 (n + 1))

end

end A031244.P8181328133597479710

/-!
# A031245: Length of n-th run of digit 3 in A031235.

The programs for A031245, there is no canonical definition to state claims against.
-/

/-! ## A031245.P10790784443716941768

`runs[A031239(n+1)-n]`
-/

namespace A031245.P10790784443716941768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031239 (n + 1) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A031245.P10790784443716941768

/-! ## A031245.P13483994159196659639

`A002260(gcd(A193220(n), A194907(n+1)))`
-/

namespace A031245.P13483994159196659639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (Int.gcd (A193220 n) (A194907 (n + 1)))

end

end A031245.P13483994159196659639

/-! ## A031245.P370121774747849367

`A162663(gcd(A141214(n), A291644(n+1)))`
-/

namespace A031245.P370121774747849367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (Int.gcd (A141214 n) (A291644 (n + 1)))

end

end A031245.P370121774747849367

/-! ## A031245.P8111445392752695055

`A030578(A007094(n)+Δ[A141213(n)])`
-/

namespace A031245.P8111445392752695055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030578 (A007094 n + (f1 (n + 1) - f1 n)).toNat

end

end A031245.P8111445392752695055

/-! ## A031245.P5760004307818305543

`gcd(A000009(n), A328508(A160182(2*n+1)))`
-/

namespace A031245.P5760004307818305543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000009 n) (A328508 (A160182 (2 * n + 1)).toNat)

end

end A031245.P5760004307818305543

/-!
# A031246: Length of n-th run of digit 4 in A031235.

The programs for A031246, there is no canonical definition to state claims against.
-/

/-! ## A031246.P11322357151268697814

`runs[A031240(n+1)-n]`
-/

namespace A031246.P11322357151268697814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031240 (n + 1) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A031246.P11322357151268697814

/-! ## A031246.P6722374204836655375

`A327530(A000005(A367579(A327529(2*n+1))))`
-/

namespace A031246.P6722374204836655375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327530 (A000005 (A367579 (A327529 (2 * n + 1)).toNat).toNat).toNat

end

end A031246.P6722374204836655375

/-! ## A031246.P18032114698293811583

`Δ[lt[A180649(n+1), A004176(n)]]`
-/

namespace A031246.P18032114698293811583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180649 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A031246.P18032114698293811583

/-! ## A031246.P7963548175617963832

`∏{e}[1-2*a(n-2), #]` with `a(0)=1, a(1)=-3`
-/

namespace A031246.P7963548175617963832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -3] fun n f1 =>
  1 - 2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A031246.P7963548175617963832

/-! ## A031246.P10547688488539308674

`A036584(A325829(2*n+3)²)`
-/

namespace A031246.P10547688488539308674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036584 (A325829 (2 * n + 3) ^ 2).toNat

end

end A031246.P10547688488539308674

/-!
# A031251: Write n in base 5, then complement each digit (d -> 4-d) and juxtapose.

The programs for A031251, there is no canonical definition to state claims against.
-/

/-! ## A031251.P1881944700638985931

`4-A031219(n+1)`
-/

namespace A031251.P1881944700638985931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A031219 (n + 1)

end

end A031251.P1881944700638985931

/-! ## A031251.P13732493766400324451

`a(n-1)-Δ[A031219(A028310(n))]` with `a(0)=3, a(1)=2`
-/

namespace A031251.P13732493766400324451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n)

end

end A031251.P13732493766400324451

/-! ## A031251.P4986182539442635347

`A017497(n)%(A031219(n+1)+A017449(n))`
-/

namespace A031251.P4986182539442635347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017497 n) (A031219 (n + 1) + A017449 n)

end

end A031251.P4986182539442635347

/-! ## A031251.P14447963026000663830

`A030586(A031219(n+1)+A019433(2*(n+1)))`
-/

namespace A031251.P14447963026000663830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030586 (A031219 (n + 1) + A019433 (2 * (n + 1))).toNat

end

end A031251.P14447963026000663830

/-! ## A031251.P265871031200362612

`(A167614(n+1)+4)%(A167614(n+1)+A031219(n+1))`
-/

namespace A031251.P265871031200362612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167614 (n + 1) + 4) (A167614 (n + 1) + A031219 (n + 1))

end

end A031251.P265871031200362612

/-! ## A031251.P14837300483423816859

`a(n-1)-Δ[A031219(A065033(2*n))]` with `a(0)=3`
-/

namespace A031251.P14837300483423816859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n)

end

end A031251.P14837300483423816859

/-! ## A031251.P14384008659771293759

`A008683(record[A014963(n+2)])*A031219(n+1)+4`
-/

namespace A031251.P14384008659771293759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A031219 (n + 1) + 4

end

end A031251.P14384008659771293759

/-! ## A031251.P12820935276580444211

`4-A055146(n+1)%5`
-/

namespace A031251.P12820935276580444211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - Int.tmod (A055146 (n + 1)) 5

end

end A031251.P12820935276580444211

/-!
# A031254: Position of n-th 0 in A031253.

The programs for A031254, there is no canonical definition to state claims against.
-/

/-! ## A031254.P17655578087089029162

`eq[0, A031253(n+1)]+1`
-/

namespace A031254.P17655578087089029162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031254.P17655578087089029162

/-! ## A031254.P5546802348533072743

`eq[0, A031253(A028310(n))]`
-/

namespace A031254.P5546802348533072743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031254.P5546802348533072743

/-! ## A031254.P1264699612010080865

`A020725(eq[0, A031253(n+1)])`
-/

namespace A031254.P1264699612010080865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031254.P1264699612010080865

/-! ## A031254.P12520809981043541396

`eq[0, A031253(A000007(n)+n)]`
-/

namespace A031254.P12520809981043541396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031254.P12520809981043541396

/-! ## A031254.P2453145577365416946

`eq[0, A031253(A065033(2*n))]`
-/

namespace A031254.P2453145577365416946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031254.P2453145577365416946

/-! ## A031254.P4744856071285534585

`eq[0, A031253(A123108(2*n))]`
-/

namespace A031254.P4744856071285534585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031254.P4744856071285534585

/-! ## A031254.P18108413557450086486

`eq[0, A031253(A233583(n+1))]`
-/

namespace A031254.P18108413557450086486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031254.P18108413557450086486

/-!
# A031255: Position of n-th 1 in A031253.

The programs for A031255, there is no canonical definition to state claims against.
-/

/-! ## A031255.P16530733230629438012

`eq[1, A031253(1+n)]+1`
-/

namespace A031255.P16530733230629438012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031255.P16530733230629438012

/-! ## A031255.P14329606678446951360

`record[(n+2)^Δ[A031265(n+1)]]`
-/

namespace A031255.P14329606678446951360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031265 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031255.P14329606678446951360

/-! ## A031255.P12589104630697609593

`eq[1, A031253(A000038(n)+n)]`
-/

namespace A031255.P12589104630697609593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031255.P12589104630697609593

/-! ## A031255.P8841281847283957552

`eq[1, A031253(xor(n, A000038(n)))]`
-/

namespace A031255.P8841281847283957552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031255.P8841281847283957552

/-! ## A031255.P9448762409221739196

`eq[A031253(A028310(n)), A054977(n)]`
-/

namespace A031255.P9448762409221739196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031255.P9448762409221739196

/-! ## A031255.P18132815496741944418

`eq[A031253(A028310(n)), A057427(n)]`
-/

namespace A031255.P18132815496741944418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031255.P18132815496741944418

/-! ## A031255.P16629143334089501557

`eq[A031253(A123108(2*n)), A054977(n)]`
-/

namespace A031255.P16629143334089501557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (A123108 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031255.P16629143334089501557

/-!
# A031256: Position of n-th 2 in A031253.

The programs for A031256, there is no canonical definition to state claims against.
-/

/-! ## A031256.P15566626599238842651

`eq[2, A031253(n+1)]+1`
-/

namespace A031256.P15566626599238842651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031256.P15566626599238842651

/-! ## A031256.P10855123966016677631

`eq[2, A031253(A028310(n))]`
-/

namespace A031256.P10855123966016677631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031256.P10855123966016677631

/-! ## A031256.P5995206914039053129

`A020725(eq[2, A031253(n+1)])`
-/

namespace A031256.P5995206914039053129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031256.P5995206914039053129

/-! ## A031256.P7054154283442128679

`eq[2, A031253(A000007(n)+n)]`
-/

namespace A031256.P7054154283442128679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031256.P7054154283442128679

/-! ## A031256.P4502794359440730568

`eq[2, A031253(A000038(n)+n)]`
-/

namespace A031256.P4502794359440730568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031256.P4502794359440730568

/-! ## A031256.P6579487780771285978

`eq[2, A031253(xor(n, A000038(n)))]`
-/

namespace A031256.P6579487780771285978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031256.P6579487780771285978

/-! ## A031256.P15981403187113621185

`eq[2, A031253(A065033(2*n))]`
-/

namespace A031256.P15981403187113621185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031256.P15981403187113621185

/-! ## A031256.P5804935377689941471

`eq[2, A031253(A123108(2*n))]`
-/

namespace A031256.P5804935377689941471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031256.P5804935377689941471

/-! ## A031256.P5042519580321853636

`eq[2, A031253(A233583(n+1))]`
-/

namespace A031256.P5042519580321853636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031256.P5042519580321853636

/-!
# A031257: Position of n-th 3 in A031253.

The programs for A031257, there is no canonical definition to state claims against.
-/

/-! ## A031257.P18208560299600928800

`eq[3, A031253(n+1)]+1`
-/

namespace A031257.P18208560299600928800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031257.P18208560299600928800

/-! ## A031257.P335444933309063094

`eq[3, A031253(A028310(n))]`
-/

namespace A031257.P335444933309063094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031257.P335444933309063094

/-! ## A031257.P6251783965307542095

`A020725(eq[3, A031253(n+1)])`
-/

namespace A031257.P6251783965307542095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031257.P6251783965307542095

/-! ## A031257.P5140588233648830669

`eq[3, A031253(A000007(n)+n)]`
-/

namespace A031257.P5140588233648830669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031257.P5140588233648830669

/-! ## A031257.P8549741489183653008

`eq[3, A031253(A065033(2*n))]`
-/

namespace A031257.P8549741489183653008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031257.P8549741489183653008

/-! ## A031257.P16743291958541234881

`eq[3, A031253(A123108(2*n))]`
-/

namespace A031257.P16743291958541234881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031257.P16743291958541234881

/-!
# A031258: Position of n-th 4 in A031253.

The programs for A031258, there is no canonical definition to state claims against.
-/

/-! ## A031258.P5199500752858106388

`eq[4, A031253(n+1)]+1`
-/

namespace A031258.P5199500752858106388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031258.P5199500752858106388

/-! ## A031258.P3928720730396331383

`eq[4, A031253(A028310(n))]`
-/

namespace A031258.P3928720730396331383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031258.P3928720730396331383

/-! ## A031258.P16184317320978145465

`eq[4, A031253(A000007(n)+n)]`
-/

namespace A031258.P16184317320978145465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031258.P16184317320978145465

/-! ## A031258.P9608562052039760351

`eq[4, A031253(A065033(2*n))]`
-/

namespace A031258.P9608562052039760351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031258.P9608562052039760351

/-! ## A031258.P2763287670947680640

`eq[4, A031253(A123108(2*n))]`
-/

namespace A031258.P2763287670947680640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031258.P2763287670947680640

/-! ## A031258.P15057456813024653623

`eq[4, A031253(A233583(n+1))]`
-/

namespace A031258.P15057456813024653623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031258.P15057456813024653623

/-!
# A031260: Length of n-th run of digit 0 in A031253.

The programs for A031260, there is no canonical definition to state claims against.
-/

/-! ## A031260.P13859203491717364422

`A031226(2*n+1)^A014963(A031224(2*n+1))`
-/

namespace A031260.P13859203491717364422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031226 (2 * n + 1) : ℚ) ^ (A014963 (A031224 (2 * n + 1)).toNat : ℤ)

end

end A031260.P13859203491717364422

/-! ## A031260.P62412985230274792

`A031226(A099375(∑[n]))`
-/

namespace A031260.P62412985230274792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031226 (A099375 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A031260.P62412985230274792

/-! ## A031260.P17308648338899498981

`A031226(2*n+1)^A014963(A297826(3*n+4))`
-/

namespace A031260.P17308648338899498981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031226 (2 * n + 1) : ℚ) ^ (A014963 (A297826 (3 * n + 4)).toNat : ℤ)

end

end A031260.P17308648338899498981

/-! ## A031260.P13476454003185455996

`A031242(record[2*A235791(n+1)])`
-/

namespace A031260.P13476454003185455996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A235791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031242 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A031260.P13476454003185455996

/-! ## A031260.P8972140375208843

`gcd(A031226(2*n+1), A075818(A160025(n+1)))`
-/

namespace A031260.P8972140375208843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A031226 (2 * n + 1)) (A075818 (A160025 (n + 1)).toNat)

end

end A031260.P8972140375208843

/-! ## A031260.P16587829102176060129

`A031226(A000027(n+1+n))+A000038(A238888(n))`
-/

namespace A031260.P16587829102176060129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031226 (A000027 (n + 1 + n)).toNat + A000038 (A238888 n).toNat

end

end A031260.P16587829102176060129

/-! ## A031260.P1019722741058917648

`A031242(A107435(C(n, 2)+1)+2*n+1)`
-/

namespace A031260.P1019722741058917648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031242 (A107435 (Nat.choose n 2 + 1) + (2 * n + 1 : ℤ)).toNat

end

end A031260.P1019722741058917648

/-! ## A031260.P16823615879427447482

`A031226((2*n+1)*A107435(C(n, 2)+1))`
-/

namespace A031260.P16823615879427447482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031226 ((2 * n + 1 : ℤ) * A107435 (Nat.choose n 2 + 1)).toNat

end

end A031260.P16823615879427447482

/-! ## A031260.P17520556030819341759

`A031226(A003056(∑[n])+n+1)`
-/

namespace A031260.P17520556030819341759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031226 (A003056 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)).toNat

end

end A031260.P17520556030819341759

/-! ## A031260.P16938016263186304528

`A031226(2*n+1)+A000038(A000124(n))`
-/

namespace A031260.P16938016263186304528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031226 (2 * n + 1) + A000038 (A000124 n).toNat

end

end A031260.P16938016263186304528

/-! ## A031260.P5114768343493888285

`A031226(Δ[A003056(∑[n])²])`
-/

namespace A031260.P5114768343493888285
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031226 (f1 (n + 1) - f1 n).toNat

end

end A031260.P5114768343493888285

/-! ## A031260.P12803480377514375647

`A031242(A329854(∑[n+3]))`
-/

namespace A031260.P12803480377514375647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031242 (A329854 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A031260.P12803480377514375647

/-! ## A031260.P8971423952551693548

`A031226(A000027(n+1+n))*A057427(A155212(n))`
-/

namespace A031260.P8971423952551693548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031226 (A000027 (n + 1 + n)).toNat * A057427 (A155212 n).toNat

end

end A031260.P8971423952551693548

/-! ## A031260.P4216265515978803594

`A031226(2*n+2-A089309(n²))`
-/

namespace A031260.P4216265515978803594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031226 ((2 * n : ℤ) + (2 - A089309 (n ^ 2))).toNat

end

end A031260.P4216265515978803594

/-! ## A031260.P593191203094358458

`A031226(xor(2-A089309(n²), 2*n))`
-/

namespace A031260.P593191203094358458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031226 (Int.xor (2 - A089309 (n ^ 2)) (2 * n : ℤ)).toNat

end

end A031260.P593191203094358458

/-! ## A031260.P6485285235810958486

`A031242((2-A089309(n²))*2*(n+1))`
-/

namespace A031260.P6485285235810958486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031242 ((2 - A089309 (n ^ 2)) * (2 * (n + 1) : ℤ)).toNat

end

end A031260.P6485285235810958486

/-! ## A031260.P1192250316122818826

`A031226(2*n+1)^A011596(A196222(n))`
-/

namespace A031260.P1192250316122818826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031226 (2 * n + 1) : ℚ) ^ (A011596 (A196222 n).toNat : ℤ)

end

end A031260.P1192250316122818826

/-!
# A031261: Length of n-th run of digit 1 in A031253.

The programs for A031261, there is no canonical definition to state claims against.
-/

/-! ## A031261.P14641984282559131012

`runs[eq[1, A031253(n+1)]-n]`
-/

namespace A031261.P14641984282559131012
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A031261.P14641984282559131012

/-! ## A031261.P6323756764799503745

`A327482(A242885(3*n+5)+A035179(3*(n+1)))`
-/

namespace A031261.P6323756764799503745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327482 (A242885 (3 * n + 5) + A035179 (3 * (n + 1))).toNat

end

end A031261.P6323756764799503745

/-! ## A031261.P17525178370810063104

`A059895(lcm(A306527(n+1), A312238(n)))`
-/

namespace A031261.P17525178370810063104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059895 (Int.lcm (A306527 (n + 1)) (A312238 n))

end

end A031261.P17525178370810063104

/-! ## A031261.P9477663633405377201

`gcd(A318442(n+1), A362063(n))`
-/

namespace A031261.P9477663633405377201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A318442 (n + 1)) (A362063 n)

end

end A031261.P9477663633405377201

/-! ## A031261.P18377933983312692562

`gcd(A046601(n+1), A083606(n+1))`
-/

namespace A031261.P18377933983312692562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046601 (n + 1)) (A083606 (n + 1))

end

end A031261.P18377933983312692562

/-!
# A031262: Length of n-th run of digit 2 in A031253.

The programs for A031262, there is no canonical definition to state claims against.
-/

/-! ## A031262.P3648517417363316524

`runs[eq[2, A031253(n+1)]-n]`
-/

namespace A031262.P3648517417363316524
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A031262.P3648517417363316524

/-! ## A031262.P5065780091765510665

`A298735(lcm(A000124(n), A261172(n+1)))`
-/

namespace A031262.P5065780091765510665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298735 (Int.lcm (A000124 n) (A261172 (n + 1)))

end

end A031262.P5065780091765510665

/-! ## A031262.P4661829168821682811

`gcd(A000034(A107635(n)), A014395(n))`
-/

namespace A031262.P4661829168821682811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000034 (A107635 n).toNat) (A014395 n)

end

end A031262.P4661829168821682811

/-! ## A031262.P3346628496430949461

`gcd(A076736(n+1), A265705(A098151(n)))`
-/

namespace A031262.P3346628496430949461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A076736 (n + 1)) (A265705 (A098151 n).toNat)

end

end A031262.P3346628496430949461

/-! ## A031262.P14611165339095478412

`A361633(A287236(n+1)+A008683(n+1))`
-/

namespace A031262.P14611165339095478412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361633 (A287236 (n + 1) + A008683 (n + 1)).toNat

end

end A031262.P14611165339095478412

/-!
# A031263: Length of n-th run of digit 3 in A031253.

The programs for A031263, there is no canonical definition to state claims against.
-/

/-! ## A031263.P5893785570525259880

`runs[A031257(n+1)-n]`
-/

namespace A031263.P5893785570525259880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031257 (n + 1) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A031263.P5893785570525259880

/-! ## A031263.P10794228738077231086

`runs[eq[3, A031253(n+1)]-n]`
-/

namespace A031263.P10794228738077231086
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A031263.P10794228738077231086

/-! ## A031263.P13321187820688781658

`A144112(gcd(A050219(n+1), A318457(n+1)))`
-/

namespace A031263.P13321187820688781658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144112 (Int.gcd (A050219 (n + 1)) (A318457 (n + 1)))

end

end A031263.P13321187820688781658

/-! ## A031263.P11611022699953174795

`A130782(A059312(n+1))`
-/

namespace A031263.P11611022699953174795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130782 (A059312 (n + 1)).toNat

end

end A031263.P11611022699953174795

/-!
# A031264: Length of n-th run of digit 4 in A031253.

The programs for A031264, there is no canonical definition to state claims against.
-/

/-! ## A031264.P9200045326142958884

`runs[A031258(n+1)-n]`
-/

namespace A031264.P9200045326142958884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031258 (n + 1) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A031264.P9200045326142958884

/-! ## A031264.P265581242776053478

`runs[eq[4, A031253(n+1)]-n]`
-/

namespace A031264.P265581242776053478
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A031264.P265581242776053478

/-! ## A031264.P4021827663423927748

`runs[lt[3, A031253(C(2, n+1)+n)]-n]`
-/

namespace A031264.P4021827663423927748
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (Nat.choose 2 (n + 1) + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A031264.P4021827663423927748

/-! ## A031264.P10503065462241142150

`gcd(A055642(A134910(n+1)), A132292(3*n+2))`
-/

namespace A031264.P10503065462241142150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055642 (A134910 (n + 1)).toNat) (A132292 (3 * n + 2))

end

end A031264.P10503065462241142150

/-! ## A031264.P12716598536543005780

`gcd(A185546(A270929(n+1)), A275699(n+1))`
-/

namespace A031264.P12716598536543005780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185546 (A270929 (n + 1)).toNat) (A275699 (n + 1))

end

end A031264.P12716598536543005780

/-!
# A031265: a(n)=(# 1's)-(# 0's) in first n terms of A031253.

The programs for A031265, there is no canonical definition to state claims against.
-/

/-! ## A031265.P1991853706411139625

`∑[floor(acot(A031253(n+1)-1))]`
-/

namespace A031265.P1991853706411139625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A031253 (n + 1) - 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031265.P1991853706411139625

/-!
# A031266: a(n)=(# 1's)-(# 2's) in first n terms of A031253.

The programs for A031266, there is no canonical definition to state claims against.
-/

/-! ## A031266.P11088153460497944545

`∑[round(sin(A031253(n+1)²))]`
-/

namespace A031266.P11088153460497944545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (A031253 (n + 1) ^ 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031266.P11088153460497944545

/-! ## A031266.P16197815121322497203

`A031346(A116425(2*(n+1))+A096603(3*n+5))`
-/

namespace A031266.P16197815121322497203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A116425 (2 * (n + 1) + 1) + A096603 (3 * n + 5)).toNat

end

end A031266.P16197815121322497203

/-!
# A031270: Position of n-th 0 in A031269.

The programs for A031270, there is no canonical definition to state claims against.
-/

/-! ## A031270.P1076285145312682215

`eq[0, A031269(n+1)]+1`
-/

namespace A031270.P1076285145312682215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031270.P1076285145312682215

/-! ## A031270.P517481860734873999

`eq[0, A031269(A028310(n))]`
-/

namespace A031270.P517481860734873999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031270.P517481860734873999

/-! ## A031270.P5271135238500047001

`A020725(eq[0, A031269(n+1)])`
-/

namespace A031270.P5271135238500047001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031270.P5271135238500047001

/-! ## A031270.P5512822103216755908

`eq[0, A031269(A123108(2*n))]`
-/

namespace A031270.P5512822103216755908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031270.P5512822103216755908

/-! ## A031270.P1158779070376737443

`eq[0, A031269(A233583(n+1))]`
-/

namespace A031270.P1158779070376737443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031270.P1158779070376737443

/-!
# A031271: Position of n-th 1 in A031269.

The programs for A031271, there is no canonical definition to state claims against.
-/

/-! ## A031271.P16318399323698184129

`eq[1, A031269(1+n)]+1`
-/

namespace A031271.P16318399323698184129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031271.P16318399323698184129

/-! ## A031271.P12059027851771105867

`eq[A031269(A028310(n)), A057427(n)]`
-/

namespace A031271.P12059027851771105867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031271.P12059027851771105867

/-! ## A031271.P17759550211885498672

`eq[A031269(A123108(2*n)), A054977(n)]`
-/

namespace A031271.P17759550211885498672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (A123108 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031271.P17759550211885498672

/-! ## A031271.P14225568016581619715

`eq[A031269(A123108(2*n)), A057427(n)]`
-/

namespace A031271.P14225568016581619715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (A123108 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031271.P14225568016581619715

/-! ## A031271.P9917728455363645921

`eq[A031269(A123108(2*n)), A158388(n)]`
-/

namespace A031271.P9917728455363645921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (A123108 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031271.P9917728455363645921

/-!
# A031272: Position of n-th 2 in A031269.

The programs for A031272, there is no canonical definition to state claims against.
-/

/-! ## A031272.P3635201467057461834

`eq[2, A031269(1+n)]+1`
-/

namespace A031272.P3635201467057461834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031272.P3635201467057461834

/-! ## A031272.P12923236691972461174

`eq[2, A031269(A028310(n))]`
-/

namespace A031272.P12923236691972461174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031272.P12923236691972461174

/-! ## A031272.P3070999866828721210

`A020725(eq[2, A031269(n+1)])`
-/

namespace A031272.P3070999866828721210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031272.P3070999866828721210

/-! ## A031272.P18081206454580502102

`A344180(eq[2, A031269(A344180(n))])`
-/

namespace A031272.P18081206454580502102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031272.P18081206454580502102

/-! ## A031272.P3249044433072736653

`eq[2, A031269(A123108(2*n))]`
-/

namespace A031272.P3249044433072736653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031272.P3249044433072736653

/-!
# A031273: Position of n-th 3 in A031269.

The programs for A031273, there is no canonical definition to state claims against.
-/

/-! ## A031273.P3002760177917738725

`eq[3, A031269(n+1)]+1`
-/

namespace A031273.P3002760177917738725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031273.P3002760177917738725

/-! ## A031273.P17514129842305313923

`eq[3, A031269(gcd(n, C(2, n)))]`
-/

namespace A031273.P17514129842305313923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (Nat.gcd n (Nat.choose 2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031273.P17514129842305313923

/-! ## A031273.P9503930929172248333

`eq[3, A031269(A028310(n))]`
-/

namespace A031273.P9503930929172248333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031273.P9503930929172248333

/-! ## A031273.P2652772986005073541

`eq[3, A031269(A123108(2*n))]`
-/

namespace A031273.P2652772986005073541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031273.P2652772986005073541

/-! ## A031273.P7050933190850521931

`eq[3, A031269(A233583(n+1))]`
-/

namespace A031273.P7050933190850521931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031273.P7050933190850521931

/-!
# A031274: Position of n-th 4 in A031269.

The programs for A031274, there is no canonical definition to state claims against.
-/

/-! ## A031274.P8426288215686678114

`lt[3, A031269(n+1)]+1`
-/

namespace A031274.P8426288215686678114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A031274.P8426288215686678114

/-! ## A031274.P14690016767513120008

`eq[4, A031269(gcd(n, C(2, n)))]`
-/

namespace A031274.P14690016767513120008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (Nat.gcd n (Nat.choose 2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031274.P14690016767513120008

/-! ## A031274.P1317120827086744254

`eq[4, A031269(A028310(n))]`
-/

namespace A031274.P1317120827086744254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031274.P1317120827086744254

/-! ## A031274.P16034382368168322647

`A020725(eq[2, A031269(n+1)-2])`
-/

namespace A031274.P16034382368168322647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031274.P16034382368168322647

/-! ## A031274.P7323226652840863587

`A020725(eq[2, A031269(n+1)/2])`
-/

namespace A031274.P7323226652840863587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031269 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A031274.P7323226652840863587

/-! ## A031274.P10621655519308328345

`eq[4, A031269(A123108(2*n))]`
-/

namespace A031274.P10621655519308328345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031274.P10621655519308328345

/-! ## A031274.P7933690770436478828

`eq[4, A031269(A233583(n+1))]`
-/

namespace A031274.P7933690770436478828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031274.P7933690770436478828

/-!
# A031276: Length of n-th run of digit 0 in A031269.

The programs for A031276, there is no canonical definition to state claims against.
-/

/-! ## A031276.P12661988176056676310

`runs[lt[A031269(n+1), 1]-n]`
-/

namespace A031276.P12661988176056676310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A031276.P12661988176056676310

/-! ## A031276.P8425512633253387634

`runs[A020725(eq[0, A031269(n+1)])-n]`
-/

namespace A031276.P8425512633253387634
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A031276.P8425512633253387634

/-! ## A031276.P14479330731027210836

`runs[A001489(n)+lt[A031269(n+1), 1]]`
-/

namespace A031276.P14479330731027210836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A031276.P14479330731027210836

/-! ## A031276.P10836795348371053005

`(A153898(n)%A138151(n+1))!`
-/

namespace A031276.P10836795348371053005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod (A153898 n) (A138151 (n + 1))).toNat

end

end A031276.P10836795348371053005

/-! ## A031276.P6414404669360298871

`A030597((n+1)*A075718(n+1))`
-/

namespace A031276.P6414404669360298871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030597 ((n + 1 : ℤ) * A075718 (n + 1)).toNat

end

end A031276.P6414404669360298871

/-!
# A031277: Length of n-th run of digit 1 in A031269.

The programs for A031277, there is no canonical definition to state claims against.
-/

/-! ## A031277.P9418643196020296009

`runs[A031271(n+1)-n]`
-/

namespace A031277.P9418643196020296009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031271 (n + 1) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A031277.P9418643196020296009

/-! ## A031277.P16384193425819252010

`runs[eq[1, A031269(1+n)]-n]`
-/

namespace A031277.P16384193425819252010
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (1 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A031277.P16384193425819252010

/-! ## A031277.P1694967927345498535

`A227736(A131050(n+1)-A295976(n))`
-/

namespace A031277.P1694967927345498535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227736 (A131050 (n + 1) - A295976 n).toNat

end

end A031277.P1694967927345498535

/-!
# A031278: Length of n-th run of digit 2 in A031269.

The programs for A031278, there is no canonical definition to state claims against.
-/

/-! ## A031278.P13303461660106784371

`runs[eq[2, A031269(n+1)]-n]`
-/

namespace A031278.P13303461660106784371
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A031278.P13303461660106784371

/-! ## A031278.P11622985511908332643

`runs[A001489(n)+eq[2, A031269(n+1)]]`
-/

namespace A031278.P11622985511908332643
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A031278.P11622985511908332643

/-!
# A031279: Length of n-th run of digit 3 in A031269.

The programs for A031279, there is no canonical definition to state claims against.
-/

/-! ## A031279.P1836611691508164135

`runs[A031273(n+1)-n]`
-/

namespace A031279.P1836611691508164135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031273 (n + 1) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A031279.P1836611691508164135

/-! ## A031279.P2681474114186953963

`runs[eq[3, A031269(n+1)]-n]`
-/

namespace A031279.P2681474114186953963
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A031279.P2681474114186953963

/-! ## A031279.P17997629181226578640

`runs[A001489(n)+eq[3, A031269(n+1)]+1]`
-/

namespace A031279.P17997629181226578640
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A031279.P17997629181226578640

/-! ## A031279.P10068052433238121111

`A006337(5*A108617(3*(n+1)))`
-/

namespace A031279.P10068052433238121111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (5 * A108617 (3 * (n + 1))).toNat

end

end A031279.P10068052433238121111

/-! ## A031279.P7673624950436143396

`gcd(A099054(A141214(n+1)), A146480(n+1))`
-/

namespace A031279.P7673624950436143396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099054 (A141214 (n + 1)).toNat) (A146480 (n + 1))

end

end A031279.P7673624950436143396

/-!
# A031280: Length of n-th run of digit 4 in A031269.

The programs for A031280, there is no canonical definition to state claims against.
-/

/-! ## A031280.P3663258730572105286

`runs[A031274(1+n)-n]`
-/

namespace A031280.P3663258730572105286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031274 (1 + n) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A031280.P3663258730572105286

/-! ## A031280.P13017001409476502232

`runs[lt[3, A031269(n+1)]-n]`
-/

namespace A031280.P13017001409476502232
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A031280.P13017001409476502232

/-! ## A031280.P3203474540152660073

`runs[A001489(n)+lt[3, A031269(n+1)]]`
-/

namespace A031280.P3203474540152660073
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A031280.P3203474540152660073

/-! ## A031280.P935410938992901073

`A136441(xor(10, A093178(n)+n))`
-/

namespace A031280.P935410938992901073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136441 (Int.xor 10 (A093178 n + (n : ℤ))).toNat

end

end A031280.P935410938992901073

/-! ## A031280.P4016313892640909521

`gcd(A129773(n+3), A274146(n))`
-/

namespace A031280.P4016313892640909521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A129773 (n + 3)) (A274146 n)

end

end A031280.P4016313892640909521

/-!
# A031281: a(n)=(# 1's)-(# 0's) in first n terms of A031269.

The programs for A031281, there is no canonical definition to state claims against.
-/

/-! ## A031281.P15387883698383437995

`∑[floor(acot(A031269(n+1)-1))]`
-/

namespace A031281.P15387883698383437995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A031269 (n + 1) - 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031281.P15387883698383437995

/-!
# A031282: a(n)=(# 1's)-(# 2's) in first n terms of A031269.

The programs for A031282, there is no canonical definition to state claims against.
-/

/-! ## A031282.P16851681320369955369

`∑[round(sin(A031269(n+1)²))]`
-/

namespace A031282.P16851681320369955369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (A031269 (n + 1) ^ 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031282.P16851681320369955369

/-!
# A031285: The odd-greedy Egyptian-fraction algorithm for 5/1444613 has 37 terms, the last of which has 384122451172 digits; sequence gives remainder-numerators.

The programs for A031285, there is no canonical definition to state claims against.
-/

/-! ## A031285.P18133726969328074152

`A175362(A055809(n+4))+n+1`
-/

namespace A031285.P18133726969328074152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175362 (A055809 (n + 4)).toNat + (n + 1 : ℤ)

end

end A031285.P18133726969328074152

/-!
# A031286: Additive persistence: number of summations of digits needed to obtain a single digit (the additive digital root).

The programs for A031286, there is no canonical definition to state claims against.
-/

/-! ## A031286.P4574543631295940051

`∑{e}[2^∑{digits}[n, #%C(n, #)], A116371(#)]`
-/

namespace A031286.P4574543631295940051
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x % Nat.choose n x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A116371 (Nat.factorization (f1 n) p)

end

end A031286.P4574543631295940051

/-! ## A031286.P8580338871981431552

`A055642(A007953(n))%A055642(A002113(n+1))`
-/

namespace A031286.P8580338871981431552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055642 (A007953 n).toNat) (A055642 (A002113 (n + 1)).toNat)

end

end A031286.P8580338871981431552

/-! ## A031286.P3275930702947890725

`A031346(A007953(n))+A031346(A055649(n))`
-/

namespace A031286.P3275930702947890725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A007953 n).toNat + A031346 (A055649 n).toNat

end

end A031286.P3275930702947890725

/-! ## A031286.P2809650275241839685

`A031346(A055649(n))*A055642(A247796(n))`
-/

namespace A031286.P2809650275241839685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A055649 n).toNat * A055642 (A247796 n).toNat

end

end A031286.P2809650275241839685

/-! ## A031286.P18193389522743273674

`A348674(log2(∏{digits}[n, 2^#]))%A213217(n)`
-/

namespace A031286.P18193389522743273674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348674 (SequenceMachineLib.roundAway (Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ))).toNat) (A213217 n)

end

end A031286.P18193389522743273674

/-! ## A031286.P8605291180423227939

`A348674(A007953(n))%A213217(n)`
-/

namespace A031286.P8605291180423227939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348674 (A007953 n).toNat) (A213217 n)

end

end A031286.P8605291180423227939

/-! ## A031286.P10846163668505028854

`A033665(A056964(n)-dr(n))`
-/

namespace A031286.P10846163668505028854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 (A056964 n - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ)).toNat

end

end A031286.P10846163668505028854

/-! ## A031286.P9817505044100907873

`A000120(A273005(n)-dr(n))`
-/

namespace A031286.P9817505044100907873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A273005 n - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ)).toNat

end

end A031286.P9817505044100907873

/-! ## A031286.P7670288704099360131

`A331362(A273005(n)-dr(n))`
-/

namespace A031286.P7670288704099360131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331362 (A273005 n - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ)).toNat

end

end A031286.P7670288704099360131

/-! ## A031286.P11509001501779221677

`A033665(A056964(n)-A010888(n))`
-/

namespace A031286.P11509001501779221677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 (A056964 n - A010888 n).toNat

end

end A031286.P11509001501779221677

/-! ## A031286.P1493791920719619906

`A000120(A273005(n)-A010888(n))`
-/

namespace A031286.P1493791920719619906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A273005 n - A010888 n).toNat

end

end A031286.P1493791920719619906

/-! ## A031286.P4940199761458191320

`A331362(A273005(n)-A010888(n))`
-/

namespace A031286.P4940199761458191320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331362 (A273005 n - A010888 n).toNat

end

end A031286.P4940199761458191320

/-! ## A031286.P8111942927016642992

`A031346(A007953(n))+A031346(A051022(n))`
-/

namespace A031286.P8111942927016642992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A007953 n).toNat + A031346 (A051022 n).toNat

end

end A031286.P8111942927016642992

/-!
# A031287: Position of n-th 0 in A007376.

The programs for A031287, there is no canonical definition to state claims against.
-/

/-! ## A031287.P18437768909013619475

`record[n*(1-A007376(n))]`
-/

namespace A031287.P18437768909013619475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A007376 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031287.P18437768909013619475

/-! ## A031287.P1537429619122735963

`eq[0, A007376(n)]`
-/

namespace A031287.P1537429619122735963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031287.P1537429619122735963

/-! ## A031287.P16242168035580029536

`A065650(10*n)`
-/

namespace A031287.P16242168035580029536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065650 (10 * n)

end

end A031287.P16242168035580029536

/-! ## A031287.P17213704698847457233

`record[A065650(n)-A020485(n)]`
-/

namespace A031287.P17213704698847457233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065650 n - A020485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031287.P17213704698847457233

/-! ## A031287.P11045787936351659649

`record[A065650(A065649(n)-A007376(n))]`
-/

namespace A031287.P11045787936351659649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065650 (A065649 n - A007376 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031287.P11045787936351659649

/-! ## A031287.P2171890072850106063

`lt[A007376(n)*A214775(n), 1]`
-/

namespace A031287.P2171890072850106063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n * A214775 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031287.P2171890072850106063

/-! ## A031287.P13848727791021588495

`eq[0, A108202(2*n)]`
-/

namespace A031287.P13848727791021588495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031287.P13848727791021588495

/-! ## A031287.P3475555164155206939

`lt[n, A098732(n+1)]`
-/

namespace A031287.P3475555164155206939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098732 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031287.P3475555164155206939

/-! ## A031287.P17341875393732749594

`record[(A098728(n)-n)*A098728(n)]`
-/

namespace A031287.P17341875393732749594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A098728 n - (n : ℤ)) * A098728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031287.P17341875393732749594

/-! ## A031287.P12225035549275006724

`eq[A000027(n+1), A098732(n+1)]`
-/

namespace A031287.P12225035549275006724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098732 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031287.P12225035549275006724

/-!
# A031288: Position of n-th 1 in A007376.

The programs for A031288, there is no canonical definition to state claims against.
-/

/-! ## A031288.P8615969415827810882

`record[gcd(n+1, A007376(n+1)+n)]`
-/

namespace A031288.P8615969415827810882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A007376 (n + 1) + (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031288.P8615969415827810882

/-! ## A031288.P7163637306602726251

`eq[1, A007376(n+1)]+1`
-/

namespace A031288.P7163637306602726251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031288.P7163637306602726251

/-! ## A031288.P11885301708918545885

`eq[1, A007376(n)]`
-/

namespace A031288.P11885301708918545885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031288.P11885301708918545885

/-! ## A031288.P6412697137892879259

`lt[(n+1)*(1-A007376(n))², A007947(n+1)]`
-/

namespace A031288.P6412697137892879259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A007376 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031288.P6412697137892879259

/-! ## A031288.P12076947713368195386

`eq[1, A033307(n)]+1`
-/

namespace A031288.P12076947713368195386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031288.P12076947713368195386

/-! ## A031288.P4206953308074256308

`eq[1, A054899(A136414(n+1))]+1`
-/

namespace A031288.P4206953308074256308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A136414 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031288.P4206953308074256308

/-! ## A031288.P14696616943368929848

`lt[n²*(1-A007376(n))², A253885(n)]`
-/

namespace A031288.P14696616943368929848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * (1 - A007376 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031288.P14696616943368929848

/-! ## A031288.P1132670120228423735

`lt[n²*(1-A007376(n))², A283443(n)]`
-/

namespace A031288.P1132670120228423735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * (1 - A007376 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031288.P1132670120228423735

/-! ## A031288.P6459508378786546881

`eq[1, A108202(2*n)]`
-/

namespace A031288.P6459508378786546881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031288.P6459508378786546881

/-! ## A031288.P13552885961121851056

`A065650(10*n+1)`
-/

namespace A031288.P13552885961121851056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065650 (10 * n + 1)

end

end A031288.P13552885961121851056

/-! ## A031288.P14539773541738018398

`A261334(A017293(n)-1)+1`
-/

namespace A031288.P14539773541738018398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261334 (A017293 n - 1).toNat + 1

end

end A031288.P14539773541738018398

/-! ## A031288.P2394001709900946517

`eq[n, A098728(n)]+1`
-/

namespace A031288.P2394001709900946517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098728 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031288.P2394001709900946517

/-! ## A031288.P8236366794937772459

`eq[n, A098732(n+1)]`
-/

namespace A031288.P8236366794937772459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098732 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031288.P8236366794937772459

/-! ## A031288.P1191593441810360398

`record[gcd(A000290(n), A098732(n+1))]`
-/

namespace A031288.P1191593441810360398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000290 n) (A098732 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031288.P1191593441810360398

/-! ## A031288.P15271330932585971342

`A390926(∑[n+1])`
-/

namespace A031288.P15271330932585971342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390926 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A031288.P15271330932585971342

/-! ## A031288.P3922598848795031331

`lt[(A000045(n+2)-1)*(1-A007376(n))², n]`
-/

namespace A031288.P3922598848795031331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 2) - 1) * (1 - A007376 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031288.P3922598848795031331

/-!
# A031289: Position of n-th 2 in A007376.

The programs for A031289, there is no canonical definition to state claims against.
-/

/-! ## A031289.P13959961487609267288

`eq[2, A007376(n)]`
-/

namespace A031289.P13959961487609267288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031289.P13959961487609267288

/-! ## A031289.P4225347913108584881

`eq[2, A033307(n)]+1`
-/

namespace A031289.P4225347913108584881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031289.P4225347913108584881

/-! ## A031289.P17767744573147283624

`eq[2, A054899(A136414(n+1))]+1`
-/

namespace A031289.P17767744573147283624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A136414 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031289.P17767744573147283624

/-! ## A031289.P9985204121620642372

`A065650(10*n+2)`
-/

namespace A031289.P9985204121620642372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065650 (10 * n + 2)

end

end A031289.P9985204121620642372

/-! ## A031289.P18060228727346618839

`A261334(A017293(n))+1`
-/

namespace A031289.P18060228727346618839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261334 (A017293 n).toNat + 1

end

end A031289.P18060228727346618839

/-! ## A031289.P1643580275421590186

`A065650(A017293(n))%A000096(n+5)`
-/

namespace A031289.P1643580275421590186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065650 (A017293 n).toNat) (A000096 (n + 5))

end

end A031289.P1643580275421590186

/-! ## A031289.P18272066347436479252

`eq[2, A108202(2*n)]`
-/

namespace A031289.P18272066347436479252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031289.P18272066347436479252

/-! ## A031289.P3532671987259305909

`eq[n, A098732(n+1)+1]`
-/

namespace A031289.P3532671987259305909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098732 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031289.P3532671987259305909

/-! ## A031289.P10792925316614739575

`eq[n, A098728(n+1)]+2`
-/

namespace A031289.P10792925316614739575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098728 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A031289.P10792925316614739575

/-! ## A031289.P2984180327564956964

`eq[A023443(n), A098732(n+1)]`
-/

namespace A031289.P2984180327564956964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098732 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031289.P2984180327564956964

/-! ## A031289.P7522092918833312502

`A390926(∑[n+2])`
-/

namespace A031289.P7522092918833312502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390926 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A031289.P7522092918833312502

/-!
# A031290: Position of n-th 3 in A007376.

The programs for A031290, there is no canonical definition to state claims against.
-/

/-! ## A031290.P9133019703223570437

`eq[3, A007376(n)]`
-/

namespace A031290.P9133019703223570437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031290.P9133019703223570437

/-! ## A031290.P11687198606186963049

`eq[3, A033307(n)]+1`
-/

namespace A031290.P11687198606186963049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031290.P11687198606186963049

/-! ## A031290.P15697779558010542482

`eq[3, A033307(abs(1-n))]`
-/

namespace A031290.P15697779558010542482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031290.P15697779558010542482

/-! ## A031290.P12052402716747209714

`A065650(10*n+3)`
-/

namespace A031290.P12052402716747209714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065650 (10 * n + 3)

end

end A031290.P12052402716747209714

/-! ## A031290.P10352549547329673403

`A261334(A017293(n)+1)+1`
-/

namespace A031290.P10352549547329673403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261334 (A017293 n + 1).toNat + 1

end

end A031290.P10352549547329673403

/-! ## A031290.P17869522596715633487

`record[gcd(n, A139272(n+1)-A007376(n))]`
-/

namespace A031290.P17869522596715633487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A139272 (n + 1) - A007376 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031290.P17869522596715633487

/-! ## A031290.P8184177953203864993

`eq[3, A108202(2*n)]`
-/

namespace A031290.P8184177953203864993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031290.P8184177953203864993

/-! ## A031290.P3034603102816574933

`eq[n, A098728(n)+2]+1`
-/

namespace A031290.P3034603102816574933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098728 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031290.P3034603102816574933

/-! ## A031290.P14287375258856517705

`eq[n, A098732(n+1)+2]`
-/

namespace A031290.P14287375258856517705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098732 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031290.P14287375258856517705

/-! ## A031290.P13185007292419085916

`eq[A023444(n), A098732(n+1)]`
-/

namespace A031290.P13185007292419085916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098732 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031290.P13185007292419085916

/-! ## A031290.P829956435524214180

`eq[A098732(n+1), A289207(n)]`
-/

namespace A031290.P829956435524214180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031290.P829956435524214180

/-! ## A031290.P14853821501862245650

`A390926(A034856(n+2))`
-/

namespace A031290.P14853821501862245650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390926 (A034856 (n + 2)).toNat

end

end A031290.P14853821501862245650

/-!
# A031291: Position of n-th 4 in A007376.

The programs for A031291, there is no canonical definition to state claims against.
-/

/-! ## A031291.P5595074197058514199

`eq[4, A007376(n)]`
-/

namespace A031291.P5595074197058514199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031291.P5595074197058514199

/-! ## A031291.P3257928020791945284

`eq[4, A033307(n)]+1`
-/

namespace A031291.P3257928020791945284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031291.P3257928020791945284

/-! ## A031291.P6511621704531832173

`eq[4, A033307(abs(1-n))]`
-/

namespace A031291.P6511621704531832173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031291.P6511621704531832173

/-! ## A031291.P9074606017750238105

`A065650(10*n+4)`
-/

namespace A031291.P9074606017750238105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065650 (10 * n + 4)

end

end A031291.P9074606017750238105

/-! ## A031291.P18186605868505844609

`A261334(A017293(n)+2)+1`
-/

namespace A031291.P18186605868505844609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261334 (A017293 n + 2).toNat + 1

end

end A031291.P18186605868505844609

/-! ## A031291.P2375626981505653216

`eq[4, A054899(A136414(n+1))]+1`
-/

namespace A031291.P2375626981505653216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A136414 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031291.P2375626981505653216

/-! ## A031291.P8860744031175595971

`eq[4, A108202(2*n)]`
-/

namespace A031291.P8860744031175595971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031291.P8860744031175595971

/-! ## A031291.P1077202701587160287

`eq[n, A098732(n+1)+3]`
-/

namespace A031291.P1077202701587160287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098732 (n + 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031291.P1077202701587160287

/-! ## A031291.P1831803687935140625

`eq[A023445(n), A098732(n+1)]`
-/

namespace A031291.P1831803687935140625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098732 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031291.P1831803687935140625

/-!
# A031292: Position of n-th 5 in A007376.

The programs for A031292, there is no canonical definition to state claims against.
-/

/-! ## A031292.P4497100808513940440

`eq[5, A007376(n)]`
-/

namespace A031292.P4497100808513940440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031292.P4497100808513940440

/-! ## A031292.P4090216314449754297

`eq[5, A033307(n)]+1`
-/

namespace A031292.P4090216314449754297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031292.P4090216314449754297

/-! ## A031292.P11513373994100518261

`A065650(10*n+5)`
-/

namespace A031292.P11513373994100518261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065650 (10 * n + 5)

end

end A031292.P11513373994100518261

/-! ## A031292.P725747581603397391

`A261334(10*n+5)+1`
-/

namespace A031292.P725747581603397391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261334 (10 * n + 5) + 1

end

end A031292.P725747581603397391

/-! ## A031292.P3619348807474739673

`A153152(eq[5, A033307(n)])`
-/

namespace A031292.P3619348807474739673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031292.P3619348807474739673

/-! ## A031292.P78692049155883845

`eq[5, A108202(2*n)]`
-/

namespace A031292.P78692049155883845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031292.P78692049155883845

/-! ## A031292.P4828005241812973337

`eq[n, A098732(n+1)+4]`
-/

namespace A031292.P4828005241812973337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098732 (n + 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031292.P4828005241812973337

/-! ## A031292.P12087651400171014069

`eq[A023446(n), A098732(n+1)]`
-/

namespace A031292.P12087651400171014069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098732 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031292.P12087651400171014069

/-!
# A031293: Position of n-th 6 in A007376.

The programs for A031293, there is no canonical definition to state claims against.
-/

/-! ## A031293.P9169196706320495228

`eq[6, A007376(n)]`
-/

namespace A031293.P9169196706320495228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031293.P9169196706320495228

/-! ## A031293.P17016655498715958551

`eq[6, A033307(n)]+1`
-/

namespace A031293.P17016655498715958551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031293.P17016655498715958551

/-! ## A031293.P16713340102465501373

`eq[6, A033307(abs(1-n))]`
-/

namespace A031293.P16713340102465501373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031293.P16713340102465501373

/-! ## A031293.P16473130971292736253

`A065650(10*n+6)`
-/

namespace A031293.P16473130971292736253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065650 (10 * n + 6)

end

end A031293.P16473130971292736253

/-! ## A031293.P17821794911936901800

`record[A065650(A016861(xor(1, n)))]`
-/

namespace A031293.P17821794911936901800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065650 (A016861 (Nat.xor 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031293.P17821794911936901800

/-! ## A031293.P13678906371256339852

`eq[6, A108202(2*n)]`
-/

namespace A031293.P13678906371256339852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031293.P13678906371256339852

/-! ## A031293.P16097456568178701530

`eq[n-5, A098732(n+1)]`
-/

namespace A031293.P16097456568178701530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098732 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031293.P16097456568178701530

/-! ## A031293.P5988389492316779865

`eq[A098732(n+1)+1, A023446(n)]`
-/

namespace A031293.P5988389492316779865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098732 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031293.P5988389492316779865

/-! ## A031293.P7105383748673312643

`eq[A098732(n+1)+2, A023445(n)]`
-/

namespace A031293.P7105383748673312643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098732 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031293.P7105383748673312643

/-! ## A031293.P7889807474886548270

`eq[A098732(n+1)+1, A289207(A289207(n))]`
-/

namespace A031293.P7889807474886548270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098732 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A289207 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031293.P7889807474886548270

/-!
# A031294: Position of n-th 7 in A007376.

The programs for A031294, there is no canonical definition to state claims against.
-/

/-! ## A031294.P5933964666648591596

`eq[7, A007376(n)]`
-/

namespace A031294.P5933964666648591596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031294.P5933964666648591596

/-! ## A031294.P7015567070934400024

`eq[7, A033307(n)]+1`
-/

namespace A031294.P7015567070934400024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031294.P7015567070934400024

/-! ## A031294.P16197776357546686980

`A065650(10*n+7)`
-/

namespace A031294.P16197776357546686980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065650 (10 * n + 7)

end

end A031294.P16197776357546686980

/-! ## A031294.P17549833211165754371

`lcm(A020985(n), A065650(A017353(n)))`
-/

namespace A031294.P17549833211165754371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A065650 (A017353 n).toNat)

end

end A031294.P17549833211165754371

/-! ## A031294.P4620456954502165470

`eq[2, A031310(n+1)]+1`
-/

namespace A031294.P4620456954502165470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031310 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031294.P4620456954502165470

/-! ## A031294.P599535685634788002

`A153152(eq[7, A033307(n)])`
-/

namespace A031294.P599535685634788002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031294.P599535685634788002

/-! ## A031294.P224103960435359650

`eq[7, A108202(2*n)]`
-/

namespace A031294.P224103960435359650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031294.P224103960435359650

/-! ## A031294.P5179474896767245408

`eq[n, A098732(n+1)+6]`
-/

namespace A031294.P5179474896767245408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098732 (n + 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031294.P5179474896767245408

/-! ## A031294.P17737265127017136432

`eq[A023448(n), A098732(n+1)]`
-/

namespace A031294.P17737265127017136432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098732 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031294.P17737265127017136432

/-!
# A031295: Position of n-th 8 in A007376.

The programs for A031295, there is no canonical definition to state claims against.
-/

/-! ## A031295.P12552233466876912108

`eq[8, A007376(n)]`
-/

namespace A031295.P12552233466876912108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031295.P12552233466876912108

/-! ## A031295.P18334783239098734931

`eq[8, A033307(n)]+1`
-/

namespace A031295.P18334783239098734931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031295.P18334783239098734931

/-! ## A031295.P3523279951402727990

`eq[8, A033307(abs(1-n))]`
-/

namespace A031295.P3523279951402727990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031295.P3523279951402727990

/-! ## A031295.P1718694759428110515

`A065650(10*n+8)`
-/

namespace A031295.P1718694759428110515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065650 (10 * n + 8)

end

end A031295.P1718694759428110515

/-! ## A031295.P10288056477492811516

`eq[1, A031310(n+1)]+1`
-/

namespace A031295.P10288056477492811516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031310 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031295.P10288056477492811516

/-! ## A031295.P126363200744392260

`eq[8, A108202(2*n)]`
-/

namespace A031295.P126363200744392260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031295.P126363200744392260

/-! ## A031295.P13026389407499545821

`eq[n, A098732(n+1)+7]`
-/

namespace A031295.P13026389407499545821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098732 (n + 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031295.P13026389407499545821

/-! ## A031295.P11489653721314129916

`eq[A023449(n), A098732(n+1)]`
-/

namespace A031295.P11489653721314129916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023449 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098732 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031295.P11489653721314129916

/-!
# A031296: Position of n-th 9 in A007376.

The programs for A031296, there is no canonical definition to state claims against.
-/

/-! ## A031296.P5745176716929255518

`lt[8, A007376(n)]`
-/

namespace A031296.P5745176716929255518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031296.P5745176716929255518

/-! ## A031296.P10793158405227471279

`A340490(a(n-1))+a(n-1)` with `a(0)=9`
-/

namespace A031296.P10793158405227471279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A340490 (a (n - 1)).toNat + a (n - 1)

end

end A031296.P10793158405227471279

/-! ## A031296.P8235414547136354293

`eq[9, A033307(n)]+1`
-/

namespace A031296.P8235414547136354293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031296.P8235414547136354293

/-! ## A031296.P402649444566545642

`eq[9, A033307(abs(1-n))]`
-/

namespace A031296.P402649444566545642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031296.P402649444566545642

/-! ## A031296.P7871191229972778699

`A065650(10*n+9)`
-/

namespace A031296.P7871191229972778699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065650 (10 * n + 9)

end

end A031296.P7871191229972778699

/-! ## A031296.P8708424083039152257

`A289323(gcd(n, n+1))+A065650(A017377(n))`
-/

namespace A031296.P8708424083039152257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289323 (Nat.gcd n (n + 1)) + A065650 (A017377 n).toNat

end

end A031296.P8708424083039152257

/-! ## A031296.P8840951142910233679

`A153152(eq[9, A033307(n)])`
-/

namespace A031296.P8840951142910233679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031296.P8840951142910233679

/-! ## A031296.P66209222678074895

`eq[A007376(n), A100401(n)]`
-/

namespace A031296.P66209222678074895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100401 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031296.P66209222678074895

/-! ## A031296.P4372348059739753237

`eq[A007376(n), A100403(n)]`
-/

namespace A031296.P4372348059739753237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100403 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031296.P4372348059739753237

/-! ## A031296.P7961659404400641653

`eq[A007376(n), A168094(n)]`
-/

namespace A031296.P7961659404400641653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168094 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031296.P7961659404400641653

/-! ## A031296.P9622247898013257463

`eq[A007376(n), A066586(n+1)]`
-/

namespace A031296.P9622247898013257463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066586 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031296.P9622247898013257463

/-! ## A031296.P4595727567169879092

`eq[A007376(n), A094327(n+1)]`
-/

namespace A031296.P4595727567169879092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094327 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031296.P4595727567169879092

/-! ## A031296.P3604371892915094965

`eq[A007376(n), A291092(n+1)]`
-/

namespace A031296.P3604371892915094965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291092 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031296.P3604371892915094965

/-! ## A031296.P7583287763279078776

`eq[9, A108202(2*n)]`
-/

namespace A031296.P7583287763279078776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031296.P7583287763279078776

/-!
# A031297: a(n) is the least k such that the base-10 representation of n begins at s(k), where s=A007376.

The programs for A031297, there is no canonical definition to state claims against.
-/

/-! ## A031297.P9472747907721888201

`A086044(1+n)-1`
-/

namespace A031297.P9472747907721888201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086044 (1 + n) - 1

end

end A031297.P9472747907721888201

/-! ## A031297.P18023796820357818848

`Δ[∑[A086044(n)]-n]`
-/

namespace A031297.P18023796820357818848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086044 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031297.P18023796820357818848

/-! ## A031297.P5528884282298002311

`A229186(n+1)`
-/

namespace A031297.P5528884282298002311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229186 (n + 1)

end

end A031297.P5528884282298002311

/-! ## A031297.P6631106521296589355

`1-Δ[n-∑[A229186(n)]]`
-/

namespace A031297.P6631106521296589355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229186 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A031297.P6631106521296589355

/-! ## A031297.P17340965839519479708

`ratio[A229186(n)]*A229186(n)`
-/

namespace A031297.P17340965839519479708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229186 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A229186 n : ℚ)

end

end A031297.P17340965839519479708

/-! ## A031297.P437554095530131278

`A229186(1-(n-2*n))%A017377(n)`
-/

namespace A031297.P437554095530131278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229186 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat) (A017377 n)

end

end A031297.P437554095530131278

/-! ## A031297.P9651218336850733059

`gcd(A008458(n)%2, A229186(A131732(2*n)))`
-/

namespace A031297.P9651218336850733059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A008458 n) 2) (A229186 (A131732 (2 * n)).toNat)

end

end A031297.P9651218336850733059

/-! ## A031297.P2056840404397165460

`A023443(A086044(n+1))`
-/

namespace A031297.P2056840404397165460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A086044 (n + 1)).toNat

end

end A031297.P2056840404397165460

/-! ## A031297.P17254962812546132590

`A260196(A194320(n+1))+A086044(n+1)`
-/

namespace A031297.P17254962812546132590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A194320 (n + 1)).toNat + A086044 (n + 1)

end

end A031297.P17254962812546132590

/-! ## A031297.P2758794045250191394

`A390926(∑[n]+1)`
-/

namespace A031297.P2758794045250191394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390926 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A031297.P2758794045250191394

/-!
# A031298: Triangle T(n,k): write n in base 10, reverse order of digits.

The programs for A031298, there is no canonical definition to state claims against.
-/

/-! ## A031298.P17027640635318557971

`A007376(A118764(n)%record[A306018(n)])`
-/

namespace A031298.P17027640635318557971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (Int.tmod (A118764 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A031298.P17027640635318557971

/-! ## A031298.P2438316873913779994

`A070176(A072284(n+1)²)+A007376(A118764(n))`
-/

namespace A031298.P2438316873913779994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 (A072284 (n + 1) ^ 2).toNat + A007376 (A118764 n).toNat

end

end A031298.P2438316873913779994

/-! ## A031298.P10650106874203369224

`A007376(A118764(n)%A075929(n))`
-/

namespace A031298.P10650106874203369224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (Int.tmod (A118764 n) (A075929 n)).toNat

end

end A031298.P10650106874203369224

/-! ## A031298.P3136637626534284438

`A007376(A118764(n))*A104121(A072284(n+1))`
-/

namespace A031298.P3136637626534284438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A118764 n).toNat * A104121 (A072284 (n + 1)).toNat

end

end A031298.P3136637626534284438

/-! ## A031298.P17520462543972628594

`A007376(A353090(3*n+4)-1)`
-/

namespace A031298.P17520462543972628594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A353090 (3 * n + 4) - 1).toNat

end

end A031298.P17520462543972628594

/-!
# A031299: Position of n-th 0 in A031298.

The programs for A031299, there is no canonical definition to state claims against.
-/

/-! ## A031299.P7103883977372102139

`eq[0, A031298(n)]`
-/

namespace A031299.P7103883977372102139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031299.P7103883977372102139

/-! ## A031299.P202053319509471878

`record[(n+1)*(1-A031298(n+1))]`
-/

namespace A031299.P202053319509471878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A031298 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031299.P202053319509471878

/-! ## A031299.P15797904600620466562

`lt[A031298(n), acot(A249626(n))]`
-/

namespace A031299.P15797904600620466562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A249626 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A031299.P15797904600620466562

/-! ## A031299.P15187109114701494764

`lt[A031298(n), acot(A102850(n+1))]`
-/

namespace A031299.P15187109114701494764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A102850 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A031299.P15187109114701494764

/-! ## A031299.P12900423429561211614

`record[n-A031298(n)*A060978(n+1)]`
-/

namespace A031299.P12900423429561211614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A031298 n * A060978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031299.P12900423429561211614

/-! ## A031299.P11190314787040445247

`record[n-A031298(n)*A060980(n+1)]`
-/

namespace A031299.P11190314787040445247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A031298 n * A060980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031299.P11190314787040445247

/-! ## A031299.P4412541338653316796

`record[n-A031298(n)*A094180(n+1)]`
-/

namespace A031299.P4412541338653316796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A031298 n * A094180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031299.P4412541338653316796

/-! ## A031299.P4933480081813803131

`lt[A031298(n), A136522(A047813(n))]`
-/

namespace A031299.P4933480081813803131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 (A047813 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031299.P4933480081813803131

/-! ## A031299.P2372775791816488049

`lt[A031298(n), A136522(A262188(n))]`
-/

namespace A031299.P2372775791816488049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 (A262188 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031299.P2372775791816488049

/-! ## A031299.P6472187576708432778

`lt[A031298(n), acot(A102357(n+1))]`
-/

namespace A031299.P6472187576708432778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A102357 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A031299.P6472187576708432778

/-! ## A031299.P3021498831044608004

`lt[A031298(n), A031298(A031300(n+1))]`
-/

namespace A031299.P3021498831044608004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 (A031300 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031299.P3021498831044608004

