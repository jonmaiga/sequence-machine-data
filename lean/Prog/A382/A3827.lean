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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A382700: First member of the least set of 5 consecutive primes such that the sum of each pair of consecutive primes in this set is a multiple of n.

The programs for A382700, there is no canonical definition to state claims against.
-/

/-! ## A382700.P11614613256037902136

`A129945(A383873(n))`
-/

namespace A382700.P11614613256037902136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129945 (A383873 n).toNat

end

end A382700.P11614613256037902136

/-!
# A382701: Expansion of e.g.f. -log(1 - x)^3 * exp(3*x) / 6.

The programs for A382701, there is no canonical definition to state claims against.
-/

/-! ## A382701.P3293590605121515161

`A118715(A005034(n))`
-/

namespace A382701.P3293590605121515161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118715 (A005034 n).toNat

end

end A382701.P3293590605121515161

/-! ## A382701.P6713825147472117537

`row(A025890(A086331(n)))`
-/

namespace A382701.P6713825147472117537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A025890 (A086331 n).toNat).toNat

end

end A382701.P6713825147472117537

/-!
# A382702: Indices k where b(k) > k, where b is the EKG sequence A064413.

The programs for A382702, there is no canonical definition to state claims against.
-/

/-! ## A382702.P5319453376821564427

`lt[n+1, A065057(n+1)-A065057(n)]+1`
-/

namespace A382702.P5319453376821564427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065057 (n + 1) - A065057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A382702.P5319453376821564427

/-! ## A382702.P14490757138776492951

`fp[A382706(n+1)]+1`
-/

namespace A382702.P14490757138776492951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + 1

end

end A382702.P14490757138776492951

/-! ## A382702.P17132482181652244319

`lt[1+n, A064413(n+1)]+1`
-/

namespace A382702.P17132482181652244319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A382702.P17132482181652244319

/-! ## A382702.P18399457378705854927

`lt[1+n, sqrt(A104125(1+n))]+1`
-/

namespace A382702.P18399457378705854927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A104125 (1 + n) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1

end

end A382702.P18399457378705854927

/-! ## A382702.P1541739647876388789

`lt[n+1, root(A104125(n+1), 2)]+1`
-/

namespace A382702.P1541739647876388789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A104125 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1

end

end A382702.P1541739647876388789

/-! ## A382702.P9886062059362140788

`lt[0, A065519(A028310(n))]`
-/

namespace A382702.P9886062059362140788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065519 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A382702.P9886062059362140788

/-! ## A382702.P9059258452975900538

`lt[n, A304753(1+a(n-1))]` with `a(0)=0`
-/

namespace A382702.P9059258452975900538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A304753 (1 + f2 (n - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A382702.P9059258452975900538

/-! ## A382702.P2161727520415052755

`A064664(A382703(n+1))`
-/

namespace A382702.P2161727520415052755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A382703 (n + 1)).toNat

end

end A382702.P2161727520415052755

/-! ## A382702.P14946217494569253722

`lt[A035363(2*n+3), A065519(n+1)]+1`
-/

namespace A382702.P14946217494569253722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065519 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A382702.P14946217494569253722

/-!
# A382703: Numbers k which appear "prematurely" in A064413, that is, k appears before the k-th term.

The programs for A382703, there is no canonical definition to state claims against.
-/

/-! ## A382703.P14325998909877419987

`A064413(A382702(1+n))`
-/

namespace A382703.P14325998909877419987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (A382702 (1 + n)).toNat

end

end A382703.P14325998909877419987

/-! ## A382703.P12903190603760072924

`A064413(lt[1+n, A064413(n+1)]+1)`
-/

namespace A382703.P12903190603760072924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A382703.P12903190603760072924

/-!
# A382704: Indices k where b(k) < k, where b is the EKG sequence A064413.

The programs for A382704, there is no canonical definition to state claims against.
-/

/-! ## A382704.P4917674327217372148

`fp[A382707(n+1)]+1`
-/

namespace A382704.P4917674327217372148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382707 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + 1

end

end A382704.P4917674327217372148

/-! ## A382704.P14801267856335790192

`lt[A064413(n+1), n+1]+1`
-/

namespace A382704.P14801267856335790192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A382704.P14801267856335790192

/-! ## A382704.P6115509349273693554

`A064664(A382705(1+n))`
-/

namespace A382704.P6115509349273693554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A382705 (1 + n)).toNat

end

end A382704.P6115509349273693554

/-! ## A382704.P17352032075998164562

`lt[A064413(A028310(n)), n]`
-/

namespace A382704.P17352032075998164562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A382704.P17352032075998164562

/-! ## A382704.P3064896582588837979

`lt[A065519(n+1), C(2, A215240(n+1))]+1`
-/

namespace A382704.P3064896582588837979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065519 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A215240 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A382704.P3064896582588837979

/-! ## A382704.P18044865435481463143

`lt[A065519(n+1), A035363(2*n+3)]+1`
-/

namespace A382704.P18044865435481463143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A382704.P18044865435481463143

/-!
# A382705: Numbers k which are "delayed" in A064413, that is, k appears after the k-th term.

The programs for A382705, there is no canonical definition to state claims against.
-/

/-! ## A382705.P15167451745691155396

`A064413(A382704(n+1))`
-/

namespace A382705.P15167451745691155396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (A382704 (n + 1)).toNat

end

end A382705.P15167451745691155396

/-! ## A382705.P1770889373928247349

`A169839(lt[A064413(n+1), n+1])`
-/

namespace A382705.P1770889373928247349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169839 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A382705.P1770889373928247349

/-! ## A382705.P6939760654034217218

`A064413(lt[A064413(n+1), n+1]+1)`
-/

namespace A382705.P6939760654034217218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A382705.P6939760654034217218

/-!
# A382706: a(n) = number of indices k, 1 <= k <= n, such that A064413(k) > k.

The programs for A382706, there is no canonical definition to state claims against.
-/

/-! ## A382706.P12437669694582606769

`fp[A382702(n+1)-1]`
-/

namespace A382706.P12437669694582606769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382702 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A382706.P12437669694582606769

/-! ## A382706.P17716567953557020410

`∑[char[A382702(1+n)-1]]`
-/

namespace A382706.P17716567953557020410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382702 (1 + n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382706.P17716567953557020410

/-! ## A382706.P16489502380044726665

`∑[floor(A064413(n+1)/(n+2))]`
-/

namespace A382706.P16489502380044726665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A064413 (n + 1) : ℚ) / (n + 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382706.P16489502380044726665

/-! ## A382706.P12568920632799664958

`A057367(A228246(n+1)%A001197(n+2))`
-/

namespace A382706.P12568920632799664958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057367 (Int.tmod (A228246 (n + 1)) (A001197 (n + 2))).toNat

end

end A382706.P12568920632799664958

/-! ## A382706.P17055373706612354626

`A002265(A045928(n+1)+1)%A139453(n+1)`
-/

namespace A382706.P17055373706612354626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002265 (A045928 (n + 1) + 1).toNat) (A139453 (n + 1))

end

end A382706.P17055373706612354626

/-!
# A382707: a(n) = number of indices k, 1 <= k <= n, such that A064413(k) < k.

The programs for A382707, there is no canonical definition to state claims against.
-/

/-! ## A382707.P4434768846620965079

`∑[floor(sqrt(n/A064413(1+n)))]`
-/

namespace A382707.P4434768846620965079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((n : ℚ) / (A064413 (1 + n) : ℚ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382707.P4434768846620965079

/-! ## A382707.P15505218867590257136

`∑[floor((n/A064413(n+1)+1)/2)]`
-/

namespace A382707.P15505218867590257136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / (A064413 (n + 1) : ℚ) + 1) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382707.P15505218867590257136

/-! ## A382707.P9305639461094532462

`∑[A000045(floor(n/A064413(n+1)))]`
-/

namespace A382707.P9305639461094532462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌊(n : ℚ) / (A064413 (n + 1) : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382707.P9305639461094532462

/-! ## A382707.P17007984013983949215

`∑[A010060(floor(n/A064413(n+1)))]`
-/

namespace A382707.P17007984013983949215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 ⌊(n : ℚ) / (A064413 (n + 1) : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382707.P17007984013983949215

/-! ## A382707.P7181043256063691694

`∑[A124770(floor(n/A064413(n+1)))]`
-/

namespace A382707.P7181043256063691694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124770 ⌊(n : ℚ) / (A064413 (n + 1) : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382707.P7181043256063691694

/-! ## A382707.P3649877316100425928

`∑[A051903(floor(n/A064413(n+1))+1)]`
-/

namespace A382707.P3649877316100425928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (⌊(n : ℚ) / (A064413 (n + 1) : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382707.P3649877316100425928

/-! ## A382707.P17869568830860514519

`∑[A059347(floor(A064413(n+1)/(n+1)))]`
-/

namespace A382707.P17869568830860514519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059347 ⌊(A064413 (n + 1) : ℚ) / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382707.P17869568830860514519

/-! ## A382707.P11435387291713458683

`∑[A107347(floor(n/A064413(n+1))+1)]`
-/

namespace A382707.P11435387291713458683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107347 (⌊(n : ℚ) / (A064413 (n + 1) : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382707.P11435387291713458683

/-! ## A382707.P11522917737235021512

`∑[A255903(floor(A064413(n+1)/(n+1)))]`
-/

namespace A382707.P11522917737235021512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 ⌊(A064413 (n + 1) : ℚ) / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382707.P11522917737235021512

/-! ## A382707.P15584690360531304921

`∑[char[A382704(n+1)-1]]`
-/

namespace A382707.P15584690360531304921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382704 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382707.P15584690360531304921

/-! ## A382707.P1966165379938106460

`∑[char[lt[A064413(n+1), n+1]]]`
-/

namespace A382707.P1966165379938106460
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382707.P1966165379938106460

/-! ## A382707.P13021779682094302412

`fp[A382704(n+1)-1]`
-/

namespace A382707.P13021779682094302412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382704 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A382707.P13021779682094302412

/-!
# A382709: Numerator of (2^n - 1)*n! / 2^(n+1).

The programs for A382709, there is no canonical definition to state claims against.
-/

/-! ## A382709.P18209355984365984688

`(2^n-1)*A049606(n)`
-/

namespace A382709.P18209355984365984688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - 1) * A049606 n

end

end A382709.P18209355984365984688

/-! ## A382709.P4428479064205783085

`A000079(n)*A049606(n)-A049606(n)`
-/

namespace A382709.P4428479064205783085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A049606 n - A049606 n

end

end A382709.P4428479064205783085

/-! ## A382709.P17355838768805046621

`A049606(n)*A269388(A000079(n))`
-/

namespace A382709.P17355838768805046621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049606 n * A269388 (A000079 n).toNat

end

end A382709.P17355838768805046621

/-! ## A382709.P12785350483796977317

`A000225(n)*A000265(A000142(n))`
-/

namespace A382709.P12785350483796977317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n * A000265 (A000142 n).toNat

end

end A382709.P12785350483796977317

/-! ## A382709.P10305527607357224285

`record[A243071(n+1)]*A000265(A000142(n))`
-/

namespace A382709.P10305527607357224285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000265 (A000142 n).toNat

end

end A382709.P10305527607357224285

/-!
# A382710: Smallest missing number after A019444(n) has been computed.

The programs for A382710, there is no canonical definition to state claims against.
-/

/-! ## A382710.P7475876707889798243

`ceil(ϕ*ceil((n+1)/ϕ²))`
-/

namespace A382710.P7475876707889798243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (⌈(n + 1 : ℝ) / Real.goldenRatio ^ 2⌉ : ℝ)⌉

end

end A382710.P7475876707889798243

/-! ## A382710.P16207931141511430022

`fp[A002251(n)]+1`
-/

namespace A382710.P16207931141511430022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + 1

end

end A382710.P16207931141511430022

/-! ## A382710.P4456572983722198031

`A026351(ceil((1+n)/ϕ²))`
-/

namespace A382710.P4456572983722198031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 ⌈(1 + n : ℝ) / Real.goldenRatio ^ 2⌉.toNat

end

end A382710.P4456572983722198031

/-! ## A382710.P17457950670289307448

`fp[A019444(n+1)-1]+1`
-/

namespace A382710.P17457950670289307448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019444 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + 1

end

end A382710.P17457950670289307448

/-! ## A382710.P12449320066717017106

`A000201(floor((n+1)/ϕ²)+1)+1`
-/

namespace A382710.P12449320066717017106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (⌊(n + 1 : ℝ) / Real.goldenRatio ^ 2⌋ + 1).toNat + 1

end

end A382710.P12449320066717017106

/-! ## A382710.P16520693535091477839

`A019446(3^Δ[floor((n+1)/ϕ)]+n)`
-/

namespace A382710.P16520693535091477839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ) + (n : ℚ))).toNat

end

end A382710.P16520693535091477839

/-! ## A382710.P10405361053923546740

`A005206(n+2)+log2(runs[floor((n+2)/ϕ)])`
-/

namespace A382710.P10405361053923546740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A005206 (n + 2) : ℝ) + Real.logb 2 ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℝ)

end

end A382710.P10405361053923546740

/-! ## A382710.P189647910027201990

`A019446(n+3)-xor(1, Δ[floor((n+1)/ϕ)])`
-/

namespace A382710.P189647910027201990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (n + 3) - Int.xor 1 (f1 (n + 1) - f1 n)

end

end A382710.P189647910027201990

/-! ## A382710.P8188898925905986314

`A004956(A189663(n+2))`
-/

namespace A382710.P8188898925905986314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A189663 (n + 2)).toNat

end

end A382710.P8188898925905986314

/-! ## A382710.P17337853150447024462

`A014675(n)+∑[A296135(n)]`
-/

namespace A382710.P17337853150447024462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296135 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382710.P17337853150447024462

/-!
# A382711: Regarding A381019 as a permutation of the natural numbers, this is the cycle with smallest term 8, read in the forward direction.

The programs for A382711, there is no canonical definition to state claims against.
-/

/-! ## A382711.P16249505132422763450

`A381019(a(n-1))` with `a(0)=8`
-/

namespace A382711.P16249505132422763450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A381019 (a (n - 1)).toNat

end

end A382711.P16249505132422763450

/-!
# A382712: Regarding A381019 as a permutation of the natural numbers, this is the cycle with smallest term 8, read in the reverse direction.

The programs for A382712, there is no canonical definition to state claims against.
-/

/-! ## A382712.P12907028467149571168

`A381119(a(n-1))` with `a(0)=8`
-/

namespace A382712.P12907028467149571168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A381119 (a (n - 1)).toNat

end

end A382712.P12907028467149571168

/-!
# A382713: Simple continued fraction expansion of sqrt(3/2).

The programs for A382713, the canonical program `A382713.P2567413420820071154` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382713 has offset 0).

The definition of A382713 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382713.P2567413420820071154

`a(n-2)` with `a(0)=1, a(1)=4, a(2)=2`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A382713

/-- `a(n-2)` -/
def P2567413420820071154.Spec : Prop :=
  ∀ n, (P2567413420820071154.a n : ℤ) = A382713 n

theorem P2567413420820071154.correct : P2567413420820071154.Spec := by
  intro n
  simp only [A382713]

end A382713

/-!
# A382715: The term in A377091 that immediately precedes n, or 0 if n does not appear in A377091.

The programs for A382715, there is no canonical definition to state claims against.
-/

/-! ## A382715.P18194775151676451154

`1-A382716(1+n)+n`
-/

namespace A382715.P18194775151676451154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A382716 (1 + n) + (n : ℤ)

end

end A382715.P18194775151676451154

/-! ## A382715.P8473177860958816911

`A377091(A379059(1+n)-1)`
-/

namespace A382715.P8473177860958816911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (A379059 (1 + n) - 1).toNat

end

end A382715.P8473177860958816911

/-! ## A382715.P1397990321684924531

`1+n-A379061(A379059(n+1)-1)`
-/

namespace A382715.P1397990321684924531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) - A379061 (A379059 (n + 1) - 1).toNat

end

end A382715.P1397990321684924531

/-! ## A382715.P13698857725568039952

`A377091(A379786(n+1)+2*n+1)`
-/

namespace A382715.P13698857725568039952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (A379786 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A382715.P13698857725568039952

/-! ## A382715.P14759501829522579852

`A008620(3*n)-A382716(A008620(3*n))`
-/

namespace A382715.P14759501829522579852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * n) - A382716 (A008620 (3 * n)).toNat

end

end A382715.P14759501829522579852

/-!
# A382716: a(n) = n - A382715(n).

The programs for A382716, there is no canonical definition to state claims against.
-/

/-! ## A382716.P3423877020429858667

`n+1-A382715(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A382716.P3423877020429858667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A382715 (n + 1)

end

end A382716.P3423877020429858667

/-! ## A382716.P923911503782339986

`1-A382715(n+1)+n`
-/

namespace A382716.P923911503782339986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A382715 (n + 1) + (n : ℤ)

end

end A382716.P923911503782339986

/-! ## A382716.P4624040667276031868

`A379061(A379059(1+n)-1)`
-/

namespace A382716.P4624040667276031868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379061 (A379059 (1 + n) - 1).toNat

end

end A382716.P4624040667276031868

/-! ## A382716.P2927497317803733817

`1+n-A377091(A379059(1+n)-1)`
-/

namespace A382716.P2927497317803733817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) - A377091 (A379059 (1 + n) - 1).toNat

end

end A382716.P2927497317803733817

/-! ## A382716.P3831760309442899171

`1+n-A377091(A379786(n+1)+2*n+1)`
-/

namespace A382716.P3831760309442899171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) - A377091 (A379786 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A382716.P3831760309442899171

/-!
# A382717: Square roots of record high points in A382716.

The programs for A382717, there is no canonical definition to state claims against.
-/

/-! ## A382717.P7627234368458497839

`comp[A382718(1+n)-1]+1`
-/

namespace A382717.P7627234368458497839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382718 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A382717.P7627234368458497839

/-! ## A382717.P7289139564422250316

`floor(sqrt(A379066(n+1)+2*n+1))`
-/

namespace A382717.P7289139564422250316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A379066 (n + 1) + (2 * n + 1 : ℤ))

end

end A382717.P7289139564422250316

/-! ## A382717.P15757633658367899518

`eq[char[A382718(n+1)], A000007(n)]`
-/

namespace A382717.P15757633658367899518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382718 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A382717.P15757633658367899518

/-! ## A382717.P16762692057181251334

`floor(sqrt(A379066(n+1)+A074232(n+1)+1))`
-/

namespace A382717.P16762692057181251334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A379066 (n + 1) + A074232 (n + 1) + 1)

end

end A382717.P16762692057181251334

/-! ## A382717.P1708346298890706376

`sqrt(record[A382716(n+1)])`
-/

namespace A382717.P1708346298890706376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382716 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A382717.P1708346298890706376

/-! ## A382717.P14168307893640570524

`A379062(A379066(n+1))`
-/

namespace A382717.P14168307893640570524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379062 (A379066 (n + 1)).toNat

end

end A382717.P14168307893640570524

/-! ## A382717.P15916476074914631575

`A000194(A379066(n+1)+1)`
-/

namespace A382717.P15916476074914631575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A379066 (n + 1) + 1).toNat

end

end A382717.P15916476074914631575

/-!
# A382718: Numbers missing from A382717.

The programs for A382718, there is no canonical definition to state claims against.
-/

/-! ## A382718.P4816634375289424564

`comp[A382717(1+n)-1]+1`
-/

namespace A382718.P4816634375289424564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382717 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A382718.P4816634375289424564

/-!
# A382719: Numerator of Sum_{i=1..n} 1/A348626(i)^2.

The programs for A382719, there is no canonical definition to state claims against.
-/

/-! ## A382719.P11385730130571093225

`A348640(n)-A348641(n)`
-/

namespace A382719.P11385730130571093225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348640 n - A348641 n

end

end A382719.P11385730130571093225

/-! ## A382719.P14625059069751191742

`A081478(n+1)^A000034(A113845(n+1))-A348641(n)`
-/

namespace A382719.P14625059069751191742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081478 (n + 1) : ℚ) ^ (A000034 (A113845 (n + 1)).toNat : ℤ) - (A348641 n : ℚ)

end

end A382719.P14625059069751191742

/-!
# A382720: Number of entries in the n-th row of Pascal's triangle not divisible by 7.

The programs for A382720, the canonical program `A382720.P11103476103859492823` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382720 has offset 0).

The definition of A382720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6042 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382720.P8603003425051125750

`∏{digits}[A007093(n), #+1]`
-/

namespace A382720.P8603003425051125750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x + 1).prod

end

end A382720.P8603003425051125750

namespace A382720

/-- `∏{digits}[A007093(n), #+1]` -/
def P8603003425051125750.Spec : Prop :=
  ∀ n, (P8603003425051125750.a n : ℤ) = A382720 n

end A382720

/-! ## A382720.P11103476103859492823

`∏{digits}[A007094(A037474(n)), #+1]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A382720

/-- `∏{digits}[A007094(A037474(n)), #+1]` -/
def P11103476103859492823.Spec : Prop :=
  ∀ n, (P11103476103859492823.a n : ℤ) = A382720 n

theorem P11103476103859492823.correct : P11103476103859492823.Spec := by
  intro n
  simp only [A382720]

end A382720

/-! ## A382720.P17386157224203071404

`∏{digits}[lt[log(A061602(n)), 8], #+1]`
-/

namespace A382720.P17386157224203071404
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A061602 n : ℝ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℝ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x + 1).prod

end

end A382720.P17386157224203071404

namespace A382720

/-- `∏{digits}[lt[log(A061602(n)), 8], #+1]` -/
def P17386157224203071404.Spec : Prop :=
  ∀ n, (P17386157224203071404.a n : ℤ) = A382720 n

end A382720

/-! ## A382720.P3894781304985820953

`A089898(A007093(n))`
-/

namespace A382720.P3894781304985820953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089898 (A007093 n).toNat

end

end A382720.P3894781304985820953

namespace A382720

/-- `A089898(A007093(n))` -/
def P3894781304985820953.Spec : Prop :=
  ∀ n, P3894781304985820953.a n = A382720 n

end A382720

/-! ## A382720.P6766599397522240431

`A089898(lt[A054055(n), 7])`
-/

namespace A382720.P6766599397522240431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089898 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A382720.P6766599397522240431

namespace A382720

/-- `A089898(lt[A054055(n), 7])` -/
def P6766599397522240431.Spec : Prop :=
  ∀ n, P6766599397522240431.a n = A382720 n

end A382720

/-! ## A382720.P2572269723890451052

`A007954(record[A256308(n)])`
-/

namespace A382720.P2572269723890451052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A382720.P2572269723890451052

namespace A382720

/-- `A007954(record[A256308(n)])` -/
def P2572269723890451052.Spec : Prop :=
  ∀ n, P2572269723890451052.a n = A382720 n

end A382720

/-!
# A382721: Number of entries in the n-th row of Pascal's triangle not divisible by 11.

The programs for A382721, there is no canonical definition to state claims against.
-/

/-! ## A382721.P17203119555093922554

`A053832(A048336(n+1))`
-/

namespace A382721.P17203119555093922554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053832 (A048336 (n + 1)).toNat

end

end A382721.P17203119555093922554

/-!
# A382722: Number of entries in the n-th row of Pascal's triangle not divisible by 13.

The programs for A382722, there is no canonical definition to state claims against.
-/

/-! ## A382722.P14893373039514652529

`A053834(A048338(n+1))`
-/

namespace A382722.P14893373039514652529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053834 (A048338 (n + 1)).toNat

end

end A382722.P14893373039514652529

/-!
# A382723: Number of entries in the n-th row of Pascal's triangle not divisible by 4.

The programs for A382723, the canonical program `A382723.P441862081197136108` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382723 has offset 0).

The definition of A382723 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A382723.P441862081197136108

`(A033264(n)+2)*2^(A000120(n)-1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A382723

/-- `(A033264(n)+2)*2^(A000120(n)-1)` -/
def P441862081197136108.Spec : Prop :=
  ∀ n, P441862081197136108.a n = (A382723 n : ℚ)

end A382723

/-! ## A382723.P17333207027993647329

`A163000(n)+A001316(n)`
-/

namespace A382723.P17333207027993647329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163000 n + A001316 n

end

end A382723.P17333207027993647329

namespace A382723

/-- `A163000(n)+A001316(n)` -/
def P17333207027993647329.Spec : Prop :=
  ∀ n, P17333207027993647329.a n = A382723 n

end A382723

/-! ## A382723.P10120692137398900272

`A382725(n)-A163577(n)`
-/

namespace A382723.P10120692137398900272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382725 n - A163577 n

end

end A382723.P10120692137398900272

namespace A382723

/-- `A382725(n)-A163577(n)` -/
def P10120692137398900272.Spec : Prop :=
  ∀ n, P10120692137398900272.a n = A382723 n

end A382723

/-! ## A382723.P15011796130534356488

`1-A249732(n)+n`
-/

namespace A382723.P15011796130534356488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A249732 n + (n : ℤ)

end

end A382723.P15011796130534356488

namespace A382723

/-- `1-A249732(n)+n` -/
def P15011796130534356488.Spec : Prop :=
  ∀ n, P15011796130534356488.a n = A382723 n

end A382723

/-! ## A382723.P18242485640215210866

`n-A023443(A249732(n))`
-/

namespace A382723.P18242485640215210866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A249732 n).toNat

end

end A382723.P18242485640215210866

namespace A382723

/-- `n-A023443(A249732(n))` -/
def P18242485640215210866.Spec : Prop :=
  ∀ n, P18242485640215210866.a n = A382723 n

end A382723

/-! ## A382723.P1944131496230311018

`A386952(n)-A249731(n)`
-/

namespace A382723.P1944131496230311018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386952 n - A249731 n

end

end A382723.P1944131496230311018

namespace A382723

/-- `A386952(n)-A249731(n)` -/
def P1944131496230311018.Spec : Prop :=
  ∀ n, P1944131496230311018.a n = A382723 n

end A382723

/-! ## A382723.P15854821203130167947

`A008619(2*n)-A249732(n)`
-/

namespace A382723.P15854821203130167947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A249732 n

end

end A382723.P15854821203130167947

namespace A382723

/-- `A008619(2*n)-A249732(n)` -/
def P15854821203130167947.Spec : Prop :=
  ∀ n, P15854821203130167947.a n = A382723 n

end A382723

/-! ## A382723.P7195869299171146111

`A163000(n)+A151930(2*n)`
-/

namespace A382723.P7195869299171146111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163000 n + A151930 (2 * n)

end

end A382723.P7195869299171146111

namespace A382723

/-- `A163000(n)+A151930(2*n)` -/
def P7195869299171146111.Spec : Prop :=
  ∀ n, P7195869299171146111.a n = A382723 n

end A382723

/-! ## A382723.P10158665754905723786

`A163000(A051062(n))-A163000(n)`
-/

namespace A382723.P10158665754905723786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163000 (A051062 n).toNat - A163000 n

end

end A382723.P10158665754905723786

namespace A382723

/-- `A163000(A051062(n))-A163000(n)` -/
def P10158665754905723786.Spec : Prop :=
  ∀ n, P10158665754905723786.a n = A382723 n

end A382723

/-! ## A382723.P15710989878412486389

`A270438(n)+A105022(n)`
-/

namespace A382723.P15710989878412486389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270438 n + A105022 n

end

end A382723.P15710989878412486389

namespace A382723

/-- `A270438(n)+A105022(n)` -/
def P15710989878412486389.Spec : Prop :=
  ∀ n, P15710989878412486389.a n = A382723 n

end A382723

/-!
# A382725: Number of entries in the n-th row of Pascal's triangle not divisible by 8.

The programs for A382725, there is no canonical definition to state claims against.
-/

/-! ## A382725.P13493949313504621214

`A382723(n)+A163577(n)`
-/

namespace A382725.P13493949313504621214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382723 n + A163577 n

end

end A382725.P13493949313504621214

/-! ## A382725.P4187986240228478544

`A001316(n)+A163577(n)+A163000(n)`
-/

namespace A382725.P4187986240228478544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n + (A163577 n + A163000 n)

end

end A382725.P4187986240228478544

/-! ## A382725.P15770753149606205299

`A163577(n)+(A033264(n)+2)*2^(A000120(n)-1)`
-/

namespace A382725.P15770753149606205299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163577 n : ℚ) + (A033264 n + 2 : ℚ) * (2 : ℚ) ^ (A000120 n - 1 : ℤ)

end

end A382725.P15770753149606205299

/-! ## A382725.P5842721793942446254

`A163577(n)+1-A249732(n)+n`
-/

namespace A382725.P5842721793942446254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163577 n + (1 - A249732 n + (n : ℤ))

end

end A382725.P5842721793942446254

/-! ## A382725.P5593065972037233389

`A386952(n)+A163577(n)-A249731(n)`
-/

namespace A382725.P5593065972037233389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386952 n + A163577 n - A249731 n

end

end A382725.P5593065972037233389

/-! ## A382725.P13802867640342858869

`A163577(n)+1+n-A249733(n)-A249731(n)`
-/

namespace A382725.P13802867640342858869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163577 n + ((1 + n : ℤ) - A249733 n) - A249731 n

end

end A382725.P13802867640342858869

/-!
# A382726: Total number of entries in rows 0,1,...,n of Pascal's triangle not divisible by 7.

The programs for A382726, the canonical program `A382726.P822100192108141517` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382726 has offset 0).

The definition of A382726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382726.P822100192108141517

`∑[A382720(n)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A382726

/-- `∑[A382720(n)]` -/
def P822100192108141517.Spec : Prop :=
  ∀ n, P822100192108141517.a n = A382726 n

theorem P822100192108141517.correct : P822100192108141517.Spec := by
  intro n
  simp only [A382726]

end A382726

/-! ## A382726.P2893889308328197583

`∑[∏{digits}[A007093(n), #+1]]`
-/

namespace A382726.P2893889308328197583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x + 1).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382726.P2893889308328197583

namespace A382726

/-- `∑[∏{digits}[A007093(n), #+1]]` -/
def P2893889308328197583.Spec : Prop :=
  ∀ n, (P2893889308328197583.a n : ℤ) = A382726 n

theorem P2893889308328197583.correct : P2893889308328197583.Spec := by
  intro n
  simp only [A382726, Nat.add_sub_cancel, A382726.P2893889308328197583.f2, A382726.P2893889308328197583.f1, A382726.P2893889308328197583.a, A382726.P822100192108141517.f1, A382726.P822100192108141517.a, A007093, A007093.P13371401633146745397.a, A382720, A382720.P11103476103859492823.f1, A382720.P11103476103859492823.a, A007094, A007094.P10071338308652589409.f1, A007094.P10071338308652589409.f2, A007094.P10071338308652589409.a, A037474, A037474.P6444879889403224104.f1, A037474.P6444879889403224104.f2, A037474.P6444879889403224104.a, A006530, A006530.P13372528560459906635.a, A102681, A102681.P12754123710607123299.f1, A102681.P12754123710607123299.a, A338881, A338881.P16098821748611333482.f1, A338881.P16098821748611333482.a, A028310, A028310.P18130301328277559831.a, A070229, A070229.P5792893597916963980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A382726

/-! ## A382726.P8185749683892720550

`A382720(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A382726.P8185749683892720550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A382720 n + a (A023443 n).toNat

end

end A382726.P8185749683892720550

namespace A382726

/-- `A382720(n)+a(A023443(n))` -/
def P8185749683892720550.Spec : Prop :=
  ∀ n, P8185749683892720550.a n = A382726 n

end A382726

/-! ## A382726.P14368735183404250307

`∑[∏{digits}[A007094(A037474(n)), #+1]]`
-/

namespace A382726.P14368735183404250307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A037474 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x + 1).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382726.P14368735183404250307

namespace A382726

/-- `∑[∏{digits}[A007094(A037474(n)), #+1]]` -/
def P14368735183404250307.Spec : Prop :=
  ∀ n, (P14368735183404250307.a n : ℤ) = A382726 n

theorem P14368735183404250307.correct : P14368735183404250307.Spec := by
  intro n
  simp only [A382726, Nat.add_sub_cancel, A382726.P14368735183404250307.f2, A382726.P14368735183404250307.f1, A382726.P14368735183404250307.a, A382726.P822100192108141517.f1, A382726.P822100192108141517.a, A007094, A007094.P10071338308652589409.f1, A007094.P10071338308652589409.f2, A007094.P10071338308652589409.a, A037474, A037474.P6444879889403224104.f1, A037474.P6444879889403224104.f2, A037474.P6444879889403224104.a, A382720, A382720.P11103476103859492823.f1, A382720.P11103476103859492823.a, A006530, A006530.P13372528560459906635.a, A102681, A102681.P12754123710607123299.f1, A102681.P12754123710607123299.a, A338881, A338881.P16098821748611333482.f1, A338881.P16098821748611333482.a, A028310, A028310.P18130301328277559831.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A382726

/-! ## A382726.P15111513577531866848

`∑[A089898(A007093(n))]`
-/

namespace A382726.P15111513577531866848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089898 (A007093 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382726.P15111513577531866848

namespace A382726

/-- `∑[A089898(A007093(n))]` -/
def P15111513577531866848.Spec : Prop :=
  ∀ n, P15111513577531866848.a n = A382726 n

end A382726

/-! ## A382726.P7161381738418579562

`∑[A089898(lt[A054055(n), 7])]`
-/

namespace A382726.P7161381738418579562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089898 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382726.P7161381738418579562

namespace A382726

/-- `∑[A089898(lt[A054055(n), 7])]` -/
def P7161381738418579562.Spec : Prop :=
  ∀ n, P7161381738418579562.a n = A382726 n

end A382726

/-!
# A382727: Total number of entries in rows 0,1,...,n of Pascal's triangle not divisible by 11.

The programs for A382727, there is no canonical definition to state claims against.
-/

/-! ## A382727.P6303332765018915185

`∑[A382721(n)]`
-/

namespace A382727.P6303332765018915185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382727.P6303332765018915185

/-! ## A382727.P2319534672118114540

`∑[A053832(A048336(n+1))]`
-/

namespace A382727.P2319534672118114540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053832 (A048336 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382727.P2319534672118114540

/-! ## A382727.P5844211643158509987

`∑[A067029(A335890(n+1))]`
-/

namespace A382727.P5844211643158509987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A335890 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382727.P5844211643158509987

/-! ## A382727.P2407044102627070775

`lt[A122542(n), A286932(n)/2]`
-/

namespace A382727.P2407044102627070775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286932 n : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A382727.P2407044102627070775

/-! ## A382727.P16520014982548731547

`lt[A385814(n)%9, 1]`
-/

namespace A382727.P16520014982548731547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A385814 n) 9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A382727.P16520014982548731547

/-!
# A382728: Total number of entries in rows 0,1,...,n of Pascal's triangle not divisible by 13.

The programs for A382728, there is no canonical definition to state claims against.
-/

/-! ## A382728.P12004360638942582022

`∑[A382722(n)]`
-/

namespace A382728.P12004360638942582022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382728.P12004360638942582022

/-! ## A382728.P1436215637214631841

`∑[A053834(A048338(n+1))]`
-/

namespace A382728.P1436215637214631841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053834 (A048338 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382728.P1436215637214631841

/-! ## A382728.P10935467803515236054

`∑[A000005(A133025(n+1))]`
-/

namespace A382728.P10935467803515236054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A133025 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382728.P10935467803515236054

/-! ## A382728.P8612611990664240772

`lt[A187943(n+1), A220427(A334466(n+1))]`
-/

namespace A382728.P8612611990664240772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220427 (A334466 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382728.P8612611990664240772

/-! ## A382728.P14014000648694249852

`∑[gcd(n+1, A151933(∑[n]))]`
-/

namespace A382728.P14014000648694249852
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A151933 (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382728.P14014000648694249852

/-!
# A382729: Total number of entries in rows 0,1,...,n of Pascal's triangle not divisible by 4.

The programs for A382729, the canonical program `A382729.P18152922907771322413` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382729 has offset 0).

The definition of A382729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7154 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382729.P18152922907771322413

`∑[A382723(n)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A382729

/-- `∑[A382723(n)]` -/
def P18152922907771322413.Spec : Prop :=
  ∀ n, P18152922907771322413.a n = A382729 n

theorem P18152922907771322413.correct : P18152922907771322413.Spec := by
  intro n
  simp only [A382729]

end A382729

/-! ## A382729.P4938343999296575145

`∑[1+n-A249732(n)]`
-/

namespace A382729.P4938343999296575145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ((n : ℤ) - A249732 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382729.P4938343999296575145

namespace A382729

/-- `∑[1+n-A249732(n)]` -/
def P4938343999296575145.Spec : Prop :=
  ∀ n, P4938343999296575145.a n = A382729 n

end A382729

/-! ## A382729.P13268198550579694582

`∑[A163000(n)+A001316(n)]`
-/

namespace A382729.P13268198550579694582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163000 n + A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382729.P13268198550579694582

namespace A382729

/-- `∑[A163000(n)+A001316(n)]` -/
def P13268198550579694582.Spec : Prop :=
  ∀ n, P13268198550579694582.a n = A382729 n

end A382729

/-! ## A382729.P17865266124038111436

`∑[A382725(n)-A163577(n)]`
-/

namespace A382729.P17865266124038111436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382725 n - A163577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382729.P17865266124038111436

namespace A382729

/-- `∑[A382725(n)-A163577(n)]` -/
def P17865266124038111436.Spec : Prop :=
  ∀ n, P17865266124038111436.a n = A382729 n

end A382729

/-! ## A382729.P7192636912509762013

`∑[A382725(n-A249732(n))]`
-/

namespace A382729.P7192636912509762013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382725 ((n : ℤ) - A249732 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382729.P7192636912509762013

namespace A382729

/-- `∑[A382725(n-A249732(n))]` -/
def P7192636912509762013.Spec : Prop :=
  ∀ n, P7192636912509762013.a n = A382729 n

end A382729

/-! ## A382729.P10836550920166097820

`∑[A387050(n-A249732(n))]`
-/

namespace A382729.P10836550920166097820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387050 ((n : ℤ) - A249732 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382729.P10836550920166097820

namespace A382729

/-- `∑[A387050(n-A249732(n))]` -/
def P10836550920166097820.Spec : Prop :=
  ∀ n, P10836550920166097820.a n = A382729 n

end A382729

/-! ## A382729.P11758763930527574644

`∑[A163000(n)+A038573(n)+1]`
-/

namespace A382729.P11758763930527574644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163000 n + A038573 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382729.P11758763930527574644

namespace A382729

/-- `∑[A163000(n)+A038573(n)+1]` -/
def P11758763930527574644.Spec : Prop :=
  ∀ n, P11758763930527574644.a n = A382729 n

end A382729

/-! ## A382729.P8577726662660708700

`∑[A382725((A033264(n)+2)*2^(A000120(n)-1)-1)]`
-/

namespace A382729.P8577726662660708700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382725 (SequenceMachineLib.roundAway ((A033264 n + 2 : ℚ) * (2 : ℚ) ^ (A000120 n - 1 : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382729.P8577726662660708700

namespace A382729

/-- `∑[A382725((A033264(n)+2)*2^(A000120(n)-1)-1)]` -/
def P8577726662660708700.Spec : Prop :=
  ∀ n, P8577726662660708700.a n = A382729 n

end A382729

/-! ## A382729.P10191312174785119491

`∑[A386952(n)-A249731(n)]`
-/

namespace A382729.P10191312174785119491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386952 n - A249731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382729.P10191312174785119491

namespace A382729

/-- `∑[A386952(n)-A249731(n)]` -/
def P10191312174785119491.Spec : Prop :=
  ∀ n, P10191312174785119491.a n = A382729 n

end A382729

/-! ## A382729.P6129408889973680802

`∑[A052938(2*(n-A249732(n)))]`
-/

namespace A382729.P6129408889973680802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * ((n : ℤ) - A249732 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382729.P6129408889973680802

namespace A382729

/-- `∑[A052938(2*(n-A249732(n)))]` -/
def P6129408889973680802.Spec : Prop :=
  ∀ n, P6129408889973680802.a n = A382729 n

end A382729

/-!
# A382730: Total number of entries in rows 0,1,...,n of Pascal's triangle not divisible by 6.

The programs for A382730, there is no canonical definition to state claims against.
-/

/-! ## A382730.P5723449031526889384

`∑[A382724(n)]`
-/

namespace A382730.P5723449031526889384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382730.P5723449031526889384

/-! ## A382730.P17152646219924212564

`∑[A193173(∑[∑[(n-1)²²]])]`
-/

namespace A382730.P17152646219924212564
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193173 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382730.P17152646219924212564

/-! ## A382730.P11885117554303328111

`∑[A210826(C(n, 4)*116+1)+n]`
-/

namespace A382730.P11885117554303328111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210826 (Nat.choose n 4 * 116 + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382730.P11885117554303328111

/-! ## A382730.P9220961658726236143

`∑[A097291(∑[A097275(n)])]`
-/

namespace A382730.P9220961658726236143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097275 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097291 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382730.P9220961658726236143

/-! ## A382730.P8643973872227989462

`∑[A064553(A077739(n+1))]`
-/

namespace A382730.P8643973872227989462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A077739 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382730.P8643973872227989462

/-!
# A382731: Total number of entries in rows 0,1,...,n of Pascal's triangle not divisible by 8.

The programs for A382731, there is no canonical definition to state claims against.
-/

/-! ## A382731.P10497301577335585259

`∑[A382725(n)]`
-/

namespace A382731.P10497301577335585259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382731.P10497301577335585259

/-! ## A382731.P8104874245752290420

`∑[A382723(n)+A163577(n)]`
-/

namespace A382731.P8104874245752290420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382723 n + A163577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382731.P8104874245752290420

/-! ## A382731.P15763342737587588800

`∑[A163577(n)+1-A249732(n)+n]`
-/

namespace A382731.P15763342737587588800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163577 n + (1 - A249732 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382731.P15763342737587588800

/-! ## A382731.P7636996536300363324

`∑[A001316(n)+A163577(n)+A163000(n)]`
-/

namespace A382731.P7636996536300363324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n + (A163577 n + A163000 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382731.P7636996536300363324

/-! ## A382731.P6535953814753132085

`∑[A386952(n)+A163577(n)-A249731(n)]`
-/

namespace A382731.P6535953814753132085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386952 n + A163577 n - A249731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382731.P6535953814753132085

/-!
# A382732: Number of proper hypercubic bipartitions of n.

The programs for A382732, the canonical program `A382732.P8564990345405423015` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382732 has offset 0).

The definition of A382732 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A382732.P8564990345405423015

`a(2^ceil(log2(n))-n)+1` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A382732

/-- `a(2^ceil(log2(n))-n)+1` -/
def P8564990345405423015.Spec : Prop :=
  ∀ n, (P8564990345405423015.a n : ℤ) = A382732 n

theorem P8564990345405423015.correct : P8564990345405423015.Spec := by
  intro n
  simp only [A382732]

end A382732

/-! ## A382732.P4313023965344054527

`A382733(n)-1`
-/

namespace A382732.P4313023965344054527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382733 n - 1

end

end A382732.P4313023965344054527

namespace A382732

/-- `A382733(n)-1` -/
def P4313023965344054527.Spec : Prop :=
  ∀ n, P4313023965344054527.a n = A382732 n

theorem P4313023965344054527.correct : P4313023965344054527.Spec := by
  intro n
  simp only [A382732, Nat.add_sub_cancel, A382732.P4313023965344054527.a, A382732.P8564990345405423015.a, A382733, A382733.P7983275454340441927.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A382732

/-! ## A382732.P13752665664049802399

`1+a(2^A000523(2*n-1)-n)` with `a(0)=0, a(1)=0`
-/

namespace A382732.P13752665664049802399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  1 + a (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A000523 (2 * n - 1) : ℤ) - (n : ℚ))).toNat

end

end A382732.P13752665664049802399

namespace A382732

/-- `1+a(2^A000523(2*n-1)-n)` -/
def P13752665664049802399.Spec : Prop :=
  ∀ n, (P13752665664049802399.a n : ℤ) = A382732 n

end A382732

/-! ## A382732.P7095382817338820349

`∑[a(floor(n/2))-a(n-2)]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A382732.P7095382817338820349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382732.P7095382817338820349

namespace A382732

/-- `∑[a(floor(n/2))-a(n-2)]` -/
def P7095382817338820349.Spec : Prop :=
  ∀ n, P7095382817338820349.a n = A382732 n

end A382732

/-! ## A382732.P1402856911560136327

`A351290(A382733(n))`
-/

namespace A382732.P1402856911560136327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351290 (A382733 n).toNat

end

end A382732.P1402856911560136327

namespace A382732

/-- `A351290(A382733(n))` -/
def P1402856911560136327.Spec : Prop :=
  ∀ n, P1402856911560136327.a n = A382732 n

end A382732

/-! ## A382732.P5475078680603827612

`A005811(n-A082410(n+1))`
-/

namespace A382732.P5475078680603827612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 ((n : ℤ) - A082410 (n + 1)).toNat

end

end A382732.P5475078680603827612

namespace A382732

/-- `A005811(n-A082410(n+1))` -/
def P5475078680603827612.Spec : Prop :=
  ∀ n, P5475078680603827612.a n = A382732 n

end A382732

/-! ## A382732.P5435605000697757777

`A200748(n)%A382733(n)`
-/

namespace A382732.P5435605000697757777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A382733 n)

end

end A382732.P5435605000697757777

namespace A382732

/-- `A200748(n)%A382733(n)` -/
def P5435605000697757777.Spec : Prop :=
  ∀ n, P5435605000697757777.a n = A382732 n

end A382732

/-! ## A382732.P7417392279462146291

`A058197(n+1)%A382733(n)`
-/

namespace A382732.P7417392279462146291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058197 (n + 1)) (A382733 n)

end

end A382732.P7417392279462146291

namespace A382732

/-- `A058197(n+1)%A382733(n)` -/
def P7417392279462146291.Spec : Prop :=
  ∀ n, P7417392279462146291.a n = A382732 n

end A382732

/-! ## A382732.P17592037295117437520

`A083800(n+1)%A382733(n)`
-/

namespace A382732.P17592037295117437520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A382733 n)

end

end A382732.P17592037295117437520

namespace A382732

/-- `A083800(n+1)%A382733(n)` -/
def P17592037295117437520.Spec : Prop :=
  ∀ n, P17592037295117437520.a n = A382732 n

end A382732

/-! ## A382732.P15645816313384583272

`A070198(n)%A382733(n)`
-/

namespace A382732.P15645816313384583272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A382733 n)

end

end A382732.P15645816313384583272

namespace A382732

/-- `A070198(n)%A382733(n)` -/
def P15645816313384583272.Spec : Prop :=
  ∀ n, P15645816313384583272.a n = A382732 n

end A382732

/-! ## A382732.P10283999030408571841

`A079782(n+1)%A382733(n)`
-/

namespace A382732.P10283999030408571841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A382733 n)

end

end A382732.P10283999030408571841

namespace A382732

/-- `A079782(n+1)%A382733(n)` -/
def P10283999030408571841.Spec : Prop :=
  ∀ n, P10283999030408571841.a n = A382732 n

end A382732

/-! ## A382732.P16064787714730283312

`A083685(n+1)%A382733(n)`
-/

namespace A382732.P16064787714730283312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A382733 n)

end

end A382732.P16064787714730283312

namespace A382732

/-- `A083685(n+1)%A382733(n)` -/
def P16064787714730283312.Spec : Prop :=
  ∀ n, P16064787714730283312.a n = A382732 n

end A382732

/-! ## A382732.P10046253383383636434

`A121934(n+1)%A382733(n)`
-/

namespace A382732.P10046253383383636434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A382733 n)

end

end A382732.P10046253383383636434

namespace A382732

/-- `A121934(n+1)%A382733(n)` -/
def P10046253383383636434.Spec : Prop :=
  ∀ n, P10046253383383636434.a n = A382732 n

end A382732

/-! ## A382732.P8101861440355371274

`A030494(n+1)%A382733(n)`
-/

namespace A382732.P8101861440355371274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A382733 n)

end

end A382732.P8101861440355371274

namespace A382732

/-- `A030494(n+1)%A382733(n)` -/
def P8101861440355371274.Spec : Prop :=
  ∀ n, P8101861440355371274.a n = A382732 n

end A382732

/-! ## A382732.P3544820215126408867

`A072828(n+1)%A382733(n)`
-/

namespace A382732.P3544820215126408867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A382733 n)

end

end A382732.P3544820215126408867

namespace A382732

/-- `A072828(n+1)%A382733(n)` -/
def P3544820215126408867.Spec : Prop :=
  ∀ n, P3544820215126408867.a n = A382732 n

end A382732

/-! ## A382732.P14407652317769672430

`A198277(n)%A382733(n)`
-/

namespace A382732.P14407652317769672430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A382733 n)

end

end A382732.P14407652317769672430

namespace A382732

/-- `A198277(n)%A382733(n)` -/
def P14407652317769672430.Spec : Prop :=
  ∀ n, P14407652317769672430.a n = A382732 n

end A382732

/-!
# A382733: Number of hypercubic bipartitions of n.

The programs for A382733, the canonical program `A382733.P7983275454340441927` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382733 has offset 0).

The definition of A382733 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A382733.P3809309158705387113

`a(2^ceil(log2(n))-n)+1` with `a(0)=1, a(1)=1`
-/

namespace A382733.P3809309158705387113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n : ℝ)⌉ : ℤ) - (n : ℚ))).toNat + 1

end

end A382733.P3809309158705387113

namespace A382733

/-- `a(2^ceil(log2(n))-n)+1` -/
def P3809309158705387113.Spec : Prop :=
  ∀ n, (P3809309158705387113.a n : ℤ) = A382733 n

end A382733

/-! ## A382733.P7983275454340441927

`A382732(n)+1`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A382733

/-- `A382732(n)+1` -/
def P7983275454340441927.Spec : Prop :=
  ∀ n, P7983275454340441927.a n = A382733 n

theorem P7983275454340441927.correct : P7983275454340441927.Spec := by
  intro n
  simp only [A382733]

end A382733

/-! ## A382733.P17582908011012881070

`1+a(2^A000523(2*n-1)-n)` with `a(0)=1, a(1)=1`
-/

namespace A382733.P17582908011012881070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 + a (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A000523 (2 * n - 1) : ℤ) - (n : ℚ))).toNat

end

end A382733.P17582908011012881070

namespace A382733

/-- `1+a(2^A000523(2*n-1)-n)` -/
def P17582908011012881070.Spec : Prop :=
  ∀ n, (P17582908011012881070.a n : ℤ) = A382733 n

end A382733

/-! ## A382733.P6220104319104158689

`∑[a(floor(n/2))-a(n-2)]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A382733.P6220104319104158689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382733.P6220104319104158689

namespace A382733

/-- `∑[a(floor(n/2))-a(n-2)]` -/
def P6220104319104158689.Spec : Prop :=
  ∀ n, P6220104319104158689.a n = A382733 n

end A382733

/-! ## A382733.P10540709875159503456

`1+a(A062383(n-1)-n)` with `a(0)=1, a(1)=1`
-/

namespace A382733.P10540709875159503456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 + a (A062383 (n - 1) - (n : ℤ)).toNat

end

end A382733.P10540709875159503456

namespace A382733

/-- `1+a(A062383(n-1)-n)` -/
def P10540709875159503456.Spec : Prop :=
  ∀ n, (P10540709875159503456.a n : ℤ) = A382733 n

end A382733

/-! ## A382733.P12043640111180289626

`round(sqrt(A005811(n)*a(n-1)+1))` with `a(0)=1`
-/

namespace A382733.P12043640111180289626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (Real.sqrt (A005811 n * a (n - 1) + 1 : ℝ))

end

end A382733.P12043640111180289626

namespace A382733

/-- `round(sqrt(A005811(n)*a(n-1)+1))` -/
def P12043640111180289626.Spec : Prop :=
  ∀ n, P12043640111180289626.a n = A382733 n

end A382733

/-! ## A382733.P14859045934003313110

`A000005(2^A382732(n))`
-/

namespace A382733.P14859045934003313110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A382732 n : ℤ))).toNat

end

end A382733.P14859045934003313110

namespace A382733

/-- `A000005(2^A382732(n))` -/
def P14859045934003313110.Spec : Prop :=
  ∀ n, P14859045934003313110.a n = A382733 n

end A382733

/-! ## A382733.P531172494635514058

`A181988(2^A382732(n))`
-/

namespace A382733.P531172494635514058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181988 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A382732 n : ℤ))).toNat

end

end A382733.P531172494635514058

namespace A382733

/-- `A181988(2^A382732(n))` -/
def P531172494635514058.Spec : Prop :=
  ∀ n, P531172494635514058.a n = A382733 n

end A382733

/-! ## A382733.P10715209827744111932

`A089013(n)+A005811(n)`
-/

namespace A382733.P10715209827744111932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089013 n + A005811 n

end

end A382733.P10715209827744111932

namespace A382733

/-- `A089013(n)+A005811(n)` -/
def P10715209827744111932.Spec : Prop :=
  ∀ n, P10715209827744111932.a n = A382733 n

end A382733

/-! ## A382733.P5992008007352544179

`A089013(n)+∑[A112347(n)]`
-/

namespace A382733.P5992008007352544179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089013 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382733.P5992008007352544179

namespace A382733

/-- `A089013(n)+∑[A112347(n)]` -/
def P5992008007352544179.Spec : Prop :=
  ∀ n, P5992008007352544179.a n = A382733 n

end A382733

/-! ## A382733.P5751569805153563866

`A088748(n-A082410(n+1))`
-/

namespace A382733.P5751569805153563866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 ((n : ℤ) - A082410 (n + 1)).toNat

end

end A382733.P5751569805153563866

namespace A382733

/-- `A088748(n-A082410(n+1))` -/
def P5751569805153563866.Spec : Prop :=
  ∀ n, P5751569805153563866.a n = A382733 n

end A382733

/-! ## A382733.P6760038755772157369

`A069010(abs(1-n))+A069010(n)`
-/

namespace A382733.P6760038755772157369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 |1 - (n : ℤ)|.toNat + A069010 n

end

end A382733.P6760038755772157369

namespace A382733

/-- `A069010(abs(1-n))+A069010(n)` -/
def P6760038755772157369.Spec : Prop :=
  ∀ n, P6760038755772157369.a n = A382733 n

end A382733

/-! ## A382733.P12602703829626104422

`A005811(lt[A121241(n), A105348(n)])`
-/

namespace A382733.P12602703829626104422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121241 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A382733.P12602703829626104422

namespace A382733

/-- `A005811(lt[A121241(n), A105348(n)])` -/
def P12602703829626104422.Spec : Prop :=
  ∀ n, P12602703829626104422.a n = A382733 n

end A382733

/-!
# A382734: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where A(n,k) = n! * k! * [x^n * y^k] 1 / (exp(x) + exp(y) - exp(x+y))^2.

The programs for A382734, there is no canonical definition to state claims against.
-/

/-! ## A382734.P3377216869207457458

`A034584(A382735(n))`
-/

namespace A382734.P3377216869207457458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034584 (A382735 n).toNat

end

end A382734.P3377216869207457458

/-! ## A382734.P7300951642976171261

`A119026(A382736(n))`
-/

namespace A382734.P7300951642976171261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119026 (A382736 n).toNat

end

end A382734.P7300951642976171261

/-! ## A382734.P9185434995115125661

`A233781(A382735(n)*C(n+1, n+1))`
-/

namespace A382734.P9185434995115125661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233781 (A382735 n * (Nat.choose (n + 1) (n + 1) : ℤ)).toNat

end

end A382734.P9185434995115125661

/-! ## A382734.P2432111432999726357

`A233781(A382735(n)+A185237(n))`
-/

namespace A382734.P2432111432999726357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233781 (A382735 n + A185237 n).toNat

end

end A382734.P2432111432999726357

/-! ## A382734.P5921189708226374598

`A020639(A000079(n))*A271697(n)`
-/

namespace A382734.P5921189708226374598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000079 n).toNat * A271697 n

end

end A382734.P5921189708226374598

/-!
# A382735: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where A(n,k) = n! * k! * [x^n * y^k] 1 / (exp(x) + exp(y) - exp(x+y))^3.

The programs for A382735, there is no canonical definition to state claims against.
-/

/-! ## A382735.P1827219445843938242

`A275677(A382736(n))`
-/

namespace A382735.P1827219445843938242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275677 (A382736 n).toNat

end

end A382735.P1827219445843938242

/-! ## A382735.P12775723787383982981

`A382800(n)/A026792(A227437(n+4))`
-/

namespace A382735.P12775723787383982981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382800 n : ℚ) / (A026792 (A227437 (n + 4)).toNat : ℚ)

end

end A382735.P12775723787383982981

/-!
# A382736: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where A(n,k) = n! * k! * [x^n * y^k] 1 / (exp(x) + exp(y) - exp(x+y))^4.

The programs for A382736, there is no canonical definition to state claims against.
-/

/-! ## A382736.P10815085051728593325

`A220525(A382735(n))`
-/

namespace A382736.P10815085051728593325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220525 (A382735 n).toNat

end

end A382736.P10815085051728593325

/-! ## A382736.P5272118368618820589

`A194443(A026792(n+1)*A382735(n))`
-/

namespace A382736.P5272118368618820589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194443 (A026792 (n + 1) * A382735 n).toNat

end

end A382736.P5272118368618820589

/-!
# A382737: a(n) = Sum_{k=0..n} k! * (k+1)! * Stirling2(n,k)^2.

The programs for A382737, there is no canonical definition to state claims against.
-/

/-! ## A382737.P745871529360691836

`A382734(∑[4*n])`
-/

namespace A382737.P745871529360691836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382734 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A382737.P745871529360691836

/-! ## A382737.P7000671817259079629

`A382734(A046092(n))+A185237(n)`
-/

namespace A382737.P7000671817259079629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382734 (A046092 n).toNat + A185237 n

end

end A382737.P7000671817259079629

/-!
# A382738: a(n) = Sum_{k=0..n} (k!)^2 * binomial(k+2,2) * Stirling2(n,k)^2.

The programs for A382738, there is no canonical definition to state claims against.
-/

/-! ## A382738.P2541788271658444518

`A382735(∑[4*n])`
-/

namespace A382738.P2541788271658444518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382735 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A382738.P2541788271658444518

/-! ## A382738.P11633915391939266433

`A382735(A046092(n))+A185237(n)`
-/

namespace A382738.P11633915391939266433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382735 (A046092 n).toNat + A185237 n

end

end A382738.P11633915391939266433

/-!
# A382739: a(n) = Sum_{k=0..n} (k!)^2 * binomial(k+3,3) * Stirling2(n,k)^2.

The programs for A382739, there is no canonical definition to state claims against.
-/

/-! ## A382739.P1666617101313756023

`A382736(∑[4*n])`
-/

namespace A382739.P1666617101313756023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382736 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A382739.P1666617101313756023

/-! ## A382739.P6004423735941361885

`A382736(A046092(n))+A185237(n)`
-/

namespace A382739.P6004423735941361885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382736 (A046092 n).toNat + A185237 n

end

end A382739.P6004423735941361885

/-!
# A382740: Square array A(n,k), n >= 1, k >= 1, read by antidiagonals downwards, where A(n,k) = n! * k! * [x^n * y^k] (1/2) * (1 / (exp(x) + exp(y) - exp(x+y))^2 - 1).

The programs for A382740, there is no canonical definition to state claims against.
-/

/-! ## A382740.P4658046204733945703

`A387471(A155971(n))`
-/

namespace A382740.P4658046204733945703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387471 (A155971 n).toNat

end

end A382740.P4658046204733945703

/-! ## A382740.P17978487221388249080

`A333764(C(2*row(n), 2*col(n)))`
-/

namespace A382740.P17978487221388249080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333764 (Nat.choose (2 * SequenceMachineLib.triRow n) (2 * SequenceMachineLib.triCol n))

end

end A382740.P17978487221388249080

/-! ## A382740.P8915361103146462394

`A118170(A056940(n))`
-/

namespace A382740.P8915361103146462394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118170 (A056940 n).toNat

end

end A382740.P8915361103146462394

/-! ## A382740.P5703326302448668323

`A024605(A157221(n))`
-/

namespace A382740.P5703326302448668323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024605 (A157221 n).toNat

end

end A382740.P5703326302448668323

/-! ## A382740.P1385313025887816163

`A125667(A059328(n))`
-/

namespace A382740.P1385313025887816163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125667 (A059328 n).toNat

end

end A382740.P1385313025887816163

/-!
# A382741: Square array A(n,k), n >= 1, k >= 1, read by antidiagonals downwards, where A(n,k) = n! * k! * [x^n * y^k] (1/3) * (1 / (exp(x) + exp(y) - exp(x+y))^3 - 1).

The programs for A382741, there is no canonical definition to state claims against.
-/

/-! ## A382741.P9668133405018999516

`A135533(A022180(n))`
-/

namespace A382741.P9668133405018999516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135533 (A022180 n).toNat

end

end A382741.P9668133405018999516

/-! ## A382741.P783855137750500467

`A120240(A056940(n))`
-/

namespace A382741.P783855137750500467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120240 (A056940 n).toNat

end

end A382741.P783855137750500467

/-! ## A382741.P11212739256873538230

`A122620(A081582(n))`
-/

namespace A382741.P11212739256873538230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122620 (A081582 n).toNat

end

end A382741.P11212739256873538230

/-! ## A382741.P12591374309479124089

`A155474(A091378(n))`
-/

namespace A382741.P12591374309479124089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155474 (A091378 n).toNat

end

end A382741.P12591374309479124089

/-! ## A382741.P17970161953749946636

`A161186(A099759(n))`
-/

namespace A382741.P17970161953749946636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161186 (A099759 n).toNat

end

end A382741.P17970161953749946636

/-!
# A382742: Square array A(n,k), n >= 1, k >= 1, read by antidiagonals downwards, where A(n,k) = n! * k! * [x^n * y^k] (1/4) * (1 / (exp(x) + exp(y) - exp(x+y))^4 - 1).

The programs for A382742, there is no canonical definition to state claims against.
-/

/-! ## A382742.P3099952375640581261

`A118549(A059328(n))`
-/

namespace A382742.P3099952375640581261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118549 (A059328 n).toNat

end

end A382742.P3099952375640581261

/-! ## A382742.P4207197768098748829

`A109802(A111910(n))`
-/

namespace A382742.P4207197768098748829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109802 (A111910 n).toNat

end

end A382742.P4207197768098748829

/-! ## A382742.P2078238248384461951

`A093413(A152602(n))`
-/

namespace A382742.P2078238248384461951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093413 (A152602 n).toNat

end

end A382742.P2078238248384461951

/-! ## A382742.P3729634194215103111

`A093579(A176200(n))`
-/

namespace A382742.P3729634194215103111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093579 (A176200 n).toNat

end

end A382742.P3729634194215103111

/-! ## A382742.P17823926356932934596

`A109802(A181143(n))`
-/

namespace A382742.P17823926356932934596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109802 (A181143 n).toNat

end

end A382742.P17823926356932934596

/-!
# A382743: Number of minimum total dominating sets in the n X n fiveleaper graph.

The programs for A382743, there is no canonical definition to state claims against.
-/

/-! ## A382743.P5515422226256124636

`A331574(A076237(n+2))`
-/

namespace A382743.P5515422226256124636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331574 (A076237 (n + 2)).toNat

end

end A382743.P5515422226256124636

/-! ## A382743.P2298844164426625570

`4*A025443(A303346(n))`
-/

namespace A382743.P2298844164426625570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A025443 (A303346 n).toNat

end

end A382743.P2298844164426625570

/-! ## A382743.P13024982321374074675

`and(A011940(n), A049740(n))`
-/

namespace A382743.P13024982321374074675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011940 n) (A049740 n)

end

end A382743.P13024982321374074675

/-! ## A382743.P18414537316516577706

`and(A011940(n), A293628(n))`
-/

namespace A382743.P18414537316516577706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011940 n) (A293628 n)

end

end A382743.P18414537316516577706

/-! ## A382743.P16599546106775967158

`and(A011940(n), A385242(n))`
-/

namespace A382743.P16599546106775967158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011940 n) (A385242 n)

end

end A382743.P16599546106775967158

/-!
# A382744: If k appears, 5*k does not.

The programs for A382744, the canonical program `A382744.P11948343297158825481` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382744 has offset 1).

The definition of A382744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382744.P13355810653669221958

`lt[1, (2-n)^val(n+1, 5)+1]+1`
-/

namespace A382744.P13355810653669221958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n : ℤ)) ^ SequenceMachineLib.valuation (n + 1) 5 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A382744.P13355810653669221958

namespace A382744

/-- `lt[1, (2-n)^val(n+1, 5)+1]+1` -/
def P13355810653669221958.Spec : Prop :=
  ∀ n, (P13355810653669221958.a n : ℤ) = A382744 (n + 1)

end A382744

/-! ## A382744.P6571513577610270038

`record[A014955(val(n+1, 5))+n]`
-/

namespace A382744.P6571513577610270038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014955 (SequenceMachineLib.valuation (n + 1) 5) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A382744.P6571513577610270038

namespace A382744

/-- `record[A014955(val(n+1, 5))+n]` -/
def P6571513577610270038.Spec : Prop :=
  ∀ n, P6571513577610270038.a n = A382744 (n + 1)

end A382744

/-! ## A382744.P11948343297158825481

`comp[(n+1)*A062157(val(n+1, 5))]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A382744

/-- `comp[(n+1)*A062157(val(n+1, 5))]` -/
def P11948343297158825481.Spec : Prop :=
  ∀ n, (P11948343297158825481.a n : ℤ) = A382744 (n + 1)

theorem P11948343297158825481.correct : P11948343297158825481.Spec := by
  intro n
  simp only [A382744, Nat.add_sub_cancel]

end A382744

/-! ## A382744.P14468830226154927757

`record[A307151(n+1)/5]`
-/

namespace A382744.P14468830226154927757
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307151 (n + 1) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A382744.P14468830226154927757

namespace A382744

/-- `record[A307151(n+1)/5]` -/
def P14468830226154927757.Spec : Prop :=
  ∀ n, P14468830226154927757.a n = (A382744 (n + 1) : ℚ)

end A382744

/-! ## A382744.P10212882221369406277

`record[(n+1)*(-1)^A112765(n+1)]`
-/

namespace A382744.P10212882221369406277
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (-1 : ℚ) ^ (A112765 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A382744.P10212882221369406277

namespace A382744

/-- `record[(n+1)*(-1)^A112765(n+1)]` -/
def P10212882221369406277.Spec : Prop :=
  ∀ n, P10212882221369406277.a n = (A382744 (n + 1) : ℚ)

end A382744

/-! ## A382744.P10455888173466679849

`lt[1, A029673(n)*A029682(n)]`
-/

namespace A382744.P10455888173466679849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029673 n * A029682 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A382744.P10455888173466679849

namespace A382744

/-- `lt[1, A029673(n)*A029682(n)]` -/
def P10455888173466679849.Spec : Prop :=
  ∀ n, (P10455888173466679849.a n : ℤ) = A382744 (n + 1)

end A382744

/-! ## A382744.P11216587219159038169

`A307151(record[A307151(1+n)])`
-/

namespace A382744.P11216587219159038169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307151 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307151 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A382744.P11216587219159038169

namespace A382744

/-- `A307151(record[A307151(1+n)])` -/
def P11216587219159038169.Spec : Prop :=
  ∀ n, P11216587219159038169.a n = A382744 (n + 1)

end A382744

/-! ## A382744.P5118721105308425331

`lt[1, A028973(4*5*n)*A029673(n)]`
-/

namespace A382744.P5118721105308425331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028973 (4 * (5 * n)) * A029673 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A382744.P5118721105308425331

namespace A382744

/-- `lt[1, A028973(4*5*n)*A029673(n)]` -/
def P5118721105308425331.Spec : Prop :=
  ∀ n, (P5118721105308425331.a n : ℤ) = A382744 (n + 1)

end A382744

/-! ## A382744.P15268210737195856900

`∑[runs[A010872(A061814(3*n+1))]]`
-/

namespace A382744.P15268210737195856900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A061814 (3 * n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382744.P15268210737195856900

namespace A382744

/-- `∑[runs[A010872(A061814(3*n+1))]]` -/
def P15268210737195856900.Spec : Prop :=
  ∀ n, (P15268210737195856900.a n : ℤ) = A382744 (n + 1)

end A382744

/-! ## A382744.P5993927757403062796

`comp[lcm(5, A004524(A217250(n+1)))]`
-/

namespace A382744.P5993927757403062796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (A004524 (A217250 (n + 1)).toNat)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A382744.P5993927757403062796

namespace A382744

/-- `comp[lcm(5, A004524(A217250(n+1)))]` -/
def P5993927757403062796.Spec : Prop :=
  ∀ n, (P5993927757403062796.a n : ℤ) = A382744 (n + 1)

end A382744

/-!
# A382745: If k appears, 7*k does not.

The programs for A382745, the canonical program `A382745.P15305106904039031028` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382745 has offset 1).

The definition of A382745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382745.P15305106904039031028

`record[A033999(val(n+1, 7))+n]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A382745

/-- `record[A033999(val(n+1, 7))+n]` -/
def P15305106904039031028.Spec : Prop :=
  ∀ n, P15305106904039031028.a n = A382745 (n + 1)

theorem P15305106904039031028.correct : P15305106904039031028.Spec := by
  intro n
  simp only [A382745, Nat.add_sub_cancel]

end A382745

/-! ## A382745.P5584148868099599678

`record[A057077(A268354(n+1))*n+1]`
-/

namespace A382745.P5584148868099599678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A268354 (n + 1)).toNat * (n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A382745.P5584148868099599678

namespace A382745

/-- `record[A057077(A268354(n+1))*n+1]` -/
def P5584148868099599678.Spec : Prop :=
  ∀ n, P5584148868099599678.a n = A382745 (n + 1)

end A382745

/-! ## A382745.P1432995802542158139

`record[(n+1)^(A373217(n+1)%2)]`
-/

namespace A382745.P1432995802542158139
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (Int.tmod (A373217 (n + 1)) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A382745.P1432995802542158139

namespace A382745

/-- `record[(n+1)^(A373217(n+1)%2)]` -/
def P1432995802542158139.Spec : Prop :=
  ∀ n, P1432995802542158139.a n = (A382745 (n + 1) : ℚ)

end A382745

/-! ## A382745.P17847671757028703203

`comp[lcm(7, A053835(n))]`
-/

namespace A382745.P17847671757028703203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 7 (A053835 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A382745.P17847671757028703203

namespace A382745

/-- `comp[lcm(7, A053835(n))]` -/
def P17847671757028703203.Spec : Prop :=
  ∀ n, (P17847671757028703203.a n : ℤ) = A382745 (n + 1)

end A382745

/-! ## A382745.P18021290601204982554

`comp[lcm(7, ∑{digits}[n, #])]`
-/

namespace A382745.P18021290601204982554
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 7 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A382745.P18021290601204982554

namespace A382745

/-- `comp[lcm(7, ∑{digits}[n, #])]` -/
def P18021290601204982554.Spec : Prop :=
  ∀ n, (P18021290601204982554.a n : ℤ) = A382745 (n + 1)

end A382745

/-! ## A382745.P8077666915461807575

`comp[lcm(7, A053737(n))]`
-/

namespace A382745.P8077666915461807575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 7 (A053737 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A382745.P8077666915461807575

namespace A382745

/-- `comp[lcm(7, A053737(n))]` -/
def P8077666915461807575.Spec : Prop :=
  ∀ n, (P8077666915461807575.a n : ℤ) = A382745 (n + 1)

end A382745

/-! ## A382745.P1183532466985187889

`comp[lcm(A155716(A230571(n+1)*n+1), n)]`
-/

namespace A382745.P1183532466985187889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A155716 (A230571 (n + 1) * (n : ℤ) + 1).toNat) (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A382745.P1183532466985187889

namespace A382745

/-- `comp[lcm(A155716(A230571(n+1)*n+1), n)]` -/
def P1183532466985187889.Spec : Prop :=
  ∀ n, (P1183532466985187889.a n : ℤ) = A382745 (n + 1)

end A382745

/-! ## A382745.P17005520722640852558

`lt[A106226(n)*A236927(3*n+4), A283149(n+1)]`
-/

namespace A382745.P17005520722640852558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106226 n * A236927 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283149 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382745.P17005520722640852558

namespace A382745

/-- `lt[A106226(n)*A236927(3*n+4), A283149(n+1)]` -/
def P17005520722640852558.Spec : Prop :=
  ∀ n, (P17005520722640852558.a n : ℤ) = A382745 (n + 1)

end A382745

/-! ## A382745.P11116969901564203044

`lt[A014016(n), A326515(A056142(n+3))]`
-/

namespace A382745.P11116969901564203044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014016 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326515 (A056142 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382745.P11116969901564203044

namespace A382745

/-- `lt[A014016(n), A326515(A056142(n+3))]` -/
def P11116969901564203044.Spec : Prop :=
  ∀ n, (P11116969901564203044.a n : ℤ) = A382745 (n + 1)

end A382745

/-! ## A382745.P11691874698917407953

`∪[A047304(n+1), A232012(A042966(n+1))]`
-/

namespace A382745.P11691874698917407953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232012 (A042966 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382745.P11691874698917407953

namespace A382745

/-- `∪[A047304(n+1), A232012(A042966(n+1))]` -/
def P11691874698917407953.Spec : Prop :=
  ∀ n, (P11691874698917407953.a n : ℤ) = A382745 (n + 1)

end A382745

/-!
# A382746: If k appears, 8*k does not.

The programs for A382746, the canonical program `A382746.P16210624084711771883` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382746 has offset 1).

The definition of A382746 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8889 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382746.P16210624084711771883

`lt[A007814(n+1)%6-2, 1]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A382746

/-- `lt[A007814(n+1)%6-2, 1]+1` -/
def P16210624084711771883.Spec : Prop :=
  ∀ n, (P16210624084711771883.a n : ℤ) = A382746 (n + 1)

theorem P16210624084711771883.correct : P16210624084711771883.Spec := by
  intro n
  simp only [A382746, Nat.add_sub_cancel]

end A382746

/-! ## A382746.P14918392315046522285

`lt[A298986(A007814(n+1)), 3]+1`
-/

namespace A382746.P14918392315046522285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298986 (A007814 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A382746.P14918392315046522285

namespace A382746

/-- `lt[A298986(A007814(n+1)), 3]+1` -/
def P14918392315046522285.Spec : Prop :=
  ∀ n, (P14918392315046522285.a n : ℤ) = A382746 (n + 1)

end A382746

/-! ## A382746.P8241035243587122200

`lt[A061393(n), A193231(A061393(n))]`
-/

namespace A382746.P8241035243587122200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A061393 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382746.P8241035243587122200

namespace A382746

/-- `lt[A061393(n), A193231(A061393(n))]` -/
def P8241035243587122200.Spec : Prop :=
  ∀ n, (P8241035243587122200.a n : ℤ) = A382746 (n + 1)

end A382746

/-! ## A382746.P16845214268292806883

`lt[A023402(1+n), A279321(A061393(n))]`
-/

namespace A382746.P16845214268292806883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023402 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279321 (A061393 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382746.P16845214268292806883

namespace A382746

/-- `lt[A023402(1+n), A279321(A061393(n))]` -/
def P16845214268292806883.Spec : Prop :=
  ∀ n, (P16845214268292806883.a n : ℤ) = A382746 (n + 1)

end A382746

/-! ## A382746.P3027227470662359557

`lt[A000037(3*(n+1))/(n+1), A279321(A061393(n))]`
-/

namespace A382746.P3027227470662359557
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000037 (3 * (n + 1)) : ℚ) / (n + 1 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279321 (A061393 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A382746.P3027227470662359557

namespace A382746

/-- `lt[A000037(3*(n+1))/(n+1), A279321(A061393(n))]` -/
def P3027227470662359557.Spec : Prop :=
  ∀ n, (P3027227470662359557.a n : ℤ) = A382746 (n + 1)

end A382746

/-! ## A382746.P3121182977147361767

`∪[n+floor((n+7)/7), A332276(A106135(n+1))]`
-/

namespace A382746.P3121182977147361767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + ⌊(n + 7 : ℚ) / 7⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332276 (A106135 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382746.P3121182977147361767

namespace A382746

/-- `∪[n+floor((n+7)/7), A332276(A106135(n+1))]` -/
def P3121182977147361767.Spec : Prop :=
  ∀ n, (P3121182977147361767.a n : ℤ) = A382746 (n + 1)

end A382746

/-! ## A382746.P7587325734714981571

`eq[1, A080110(and(n, -n)²+1)]`
-/

namespace A382746.P7587325734714981571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080110 (Int.land (n : ℤ) (-(n : ℤ)) ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A382746.P7587325734714981571

namespace A382746

/-- `eq[1, A080110(and(n, -n)²+1)]` -/
def P7587325734714981571.Spec : Prop :=
  ∀ n, (P7587325734714981571.a n : ℤ) = A382746 (n + 1)

end A382746

/-! ## A382746.P10872394457478576208

`lt[A294448((n-1)^val(n+1, 8)), 0]+1`
-/

namespace A382746.P10872394457478576208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294448 (((n : ℤ) - 1) ^ SequenceMachineLib.valuation (n + 1) 8).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A382746.P10872394457478576208

namespace A382746

/-- `lt[A294448((n-1)^val(n+1, 8)), 0]+1` -/
def P10872394457478576208.Spec : Prop :=
  ∀ n, (P10872394457478576208.a n : ℤ) = A382746 (n + 1)

end A382746

/-! ## A382746.P16610040826008899199

`eq[1, A080110(A000695(and(n, -n))+1)]`
-/

namespace A382746.P16610040826008899199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080110 (A000695 (Int.land (n : ℤ) (-(n : ℤ))).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A382746.P16610040826008899199

namespace A382746

/-- `eq[1, A080110(A000695(and(n, -n))+1)]` -/
def P16610040826008899199.Spec : Prop :=
  ∀ n, (P16610040826008899199.a n : ℤ) = A382746 (n + 1)

end A382746

/-! ## A382746.P10138880381873546695

`lt[A316824(A087117(n)), A329313(n)]`
-/

namespace A382746.P10138880381873546695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316824 (A087117 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382746.P10138880381873546695

namespace A382746

/-- `lt[A316824(A087117(n)), A329313(n)]` -/
def P10138880381873546695.Spec : Prop :=
  ∀ n, (P10138880381873546695.a n : ℤ) = A382746 (n + 1)

end A382746

/-!
# A382748: Primitive exponents for the greedy convolution of length 4.

The programs for A382748, there is no canonical definition to state claims against.
-/

/-! ## A382748.P5908716081613706577

`A382747(4*n+1)`
-/

namespace A382748.P5908716081613706577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382747 (4 * n + 1)

end

end A382748.P5908716081613706577

/-! ## A382748.P17681802585954978281

`eq[1, A382749(1+n)]+1`
-/

namespace A382748.P17681802585954978281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382749 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A382748.P17681802585954978281

/-! ## A382748.P11482473928824598050

`record[(n+1)/A382749(n+1)]`
-/

namespace A382748.P11482473928824598050
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A382749 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A382748.P11482473928824598050

/-! ## A382748.P12812728459835858665

`record[A382747(A241154(n+1))]`
-/

namespace A382748.P12812728459835858665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382747 (A241154 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A382748.P12812728459835858665

/-! ## A382748.P4698884231605035532

`A174504(3*n)*A382747(A016813(n))`
-/

namespace A382748.P4698884231605035532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174504 (3 * n) * A382747 (A016813 n).toNat

end

end A382748.P4698884231605035532

/-! ## A382748.P5956069241630307657

`record[A010766(A382749(n+1)+A000217(n))]`
-/

namespace A382748.P5956069241630307657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A382749 (n + 1) + A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A382748.P5956069241630307657

/-!
# A382749: Position in block for greedy partition of length 4.

The programs for A382749, there is no canonical definition to state claims against.
-/

/-! ## A382749.P16880999928181792293

`(n+1)/A382748(A399395(n+1))`
-/

namespace A382749.P16880999928181792293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A382748 (A399395 (n + 1)).toNat : ℚ)

end

end A382749.P16880999928181792293

/-! ## A382749.P8984322276873137608

`gcd(n+1, A109082(A131939(n+1)))`
-/

namespace A382749.P8984322276873137608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A109082 (A131939 (n + 1)).toNat)

end

end A382749.P8984322276873137608

/-! ## A382749.P14815902052372856941

`gcd(A246087(n+1), A297036(A026007(n)))`
-/

namespace A382749.P14815902052372856941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A246087 (n + 1)) (A297036 (A026007 n).toNat)

end

end A382749.P14815902052372856941

/-!
# A382750: If k appears, 9*k does not.

The programs for A382750, there is no canonical definition to state claims against.
-/

/-! ## A382750.P12446700133705050305

`A217373(n+1)/9`
-/

namespace A382750.P12446700133705050305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217373 (n + 1) : ℚ) / 9

end

end A382750.P12446700133705050305

/-! ## A382750.P14680535341180444331

`A106610(A217373(n+1))`
-/

namespace A382750.P14680535341180444331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A217373 (n + 1)).toNat

end

end A382750.P14680535341180444331

/-! ## A382750.P3903793569967454292

`comp[A108782(A213650(n+3)-A222250(n))]`
-/

namespace A382750.P3903793569967454292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 (A213650 (n + 3) - A222250 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382750.P3903793569967454292

/-! ## A382750.P9693416426552084516

`comp[A108782(A187410(n+1)-n)]`
-/

namespace A382750.P9693416426552084516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 (A187410 (n + 1) - (n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382750.P9693416426552084516

/-! ## A382750.P1466548086331046600

`comp[A108782(A291604(3*n+2))]`
-/

namespace A382750.P1466548086331046600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 (A291604 (3 * n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382750.P1466548086331046600

/-! ## A382750.P7054181665785637275

`comp[A108782(A213650(n+3)+n)]`
-/

namespace A382750.P7054181665785637275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 (A213650 (n + 3) + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382750.P7054181665785637275

/-! ## A382750.P2150952204015596472

`comp[9*A004184(A000005(3*n+1))]`
-/

namespace A382750.P2150952204015596472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A004184 (A000005 (3 * n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382750.P2150952204015596472

/-! ## A382750.P4811739294019898492

`comp[A003557(3*n+1)*A004159(3*n)]`
-/

namespace A382750.P4811739294019898492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (3 * n + 1) * A004159 (3 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382750.P4811739294019898492

/-! ## A382750.P204420039234968172

`lt[n, A059897(A374010(n+1))]+1`
-/

namespace A382750.P204420039234968172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059897 (A374010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A382750.P204420039234968172

/-! ## A382750.P4926754937774124459

`comp[A108782(comp[A004086(3^n)])]`
-/

namespace A382750.P4926754937774124459
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (3 ^ n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382750.P4926754937774124459

/-! ## A382750.P12262795246772309841

`lt[A114099(2*n), A248034(A036040(n+1))]`
-/

namespace A382750.P12262795246772309841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248034 (A036040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382750.P12262795246772309841

/-!
# A382751: Numbers k for which the 3-adic valuation A007949(k) == 0 (mod 3).

The programs for A382751, the canonical program `A382751.P10569455431175474163` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382751 has offset 1).

The definition of A382751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6923 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382751.P9932969317290003031

`eq[1, A051064(n+1)%3]+1`
-/

namespace A382751.P9932969317290003031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051064 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A382751.P9932969317290003031

namespace A382751

/-- `eq[1, A051064(n+1)%3]+1` -/
def P9932969317290003031.Spec : Prop :=
  ∀ n, (P9932969317290003031.a n : ℤ) = A382751 (n + 1)

end A382751

/-! ## A382751.P7574627057017548616

`lt[1-a(val(n, 3)), A341612(n+1)]` with `a(0)=2`
-/

namespace A382751.P7574627057017548616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  1 - f1 (SequenceMachineLib.valuation n 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341612 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382751.P7574627057017548616

namespace A382751

/-- `lt[1-a(val(n, 3)), A341612(n+1)]` -/
def P7574627057017548616.Spec : Prop :=
  ∀ n, (P7574627057017548616.a n : ℤ) = A382751 (n + 1)

end A382751

/-! ## A382751.P10569455431175474163

`lt[A007949(n+1)%A010882(n), 1]+1`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A382751

/-- `lt[A007949(n+1)%A010882(n), 1]+1` -/
def P10569455431175474163.Spec : Prop :=
  ∀ n, (P10569455431175474163.a n : ℤ) = A382751 (n + 1)

theorem P10569455431175474163.correct : P10569455431175474163.Spec := by
  intro n
  simp only [A382751, Nat.add_sub_cancel]

end A382751

/-! ## A382751.P8641732547886810084

`eq[A300235(3*(n+1)), A300235(A026614(n+1))]`
-/

namespace A382751.P8641732547886810084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300235 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300235 (A026614 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382751.P8641732547886810084

namespace A382751

/-- `eq[A300235(3*(n+1)), A300235(A026614(n+1))]` -/
def P8641732547886810084.Spec : Prop :=
  ∀ n, (P8641732547886810084.a n : ℤ) = A382751 (n + 1)

end A382751

/-! ## A382751.P1539323527042832496

`eq[A026584(3*(n+1)), A026584(A026614(n+1))]`
-/

namespace A382751.P1539323527042832496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026584 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026584 (A026614 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382751.P1539323527042832496

namespace A382751

/-- `eq[A026584(3*(n+1)), A026584(A026614(n+1))]` -/
def P1539323527042832496.Spec : Prop :=
  ∀ n, (P1539323527042832496.a n : ℤ) = A382751 (n + 1)

end A382751

/-! ## A382751.P12837331344873996391

`eq[2, val(A001105(3*(n+1)), 3)%3]+1`
-/

namespace A382751.P12837331344873996391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001105 (3 * (n + 1))).toNat 3 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A382751.P12837331344873996391

namespace A382751

/-- `eq[2, val(A001105(3*(n+1)), 3)%3]+1` -/
def P12837331344873996391.Spec : Prop :=
  ∀ n, (P12837331344873996391.a n : ℤ) = A382751 (n + 1)

end A382751

/-! ## A382751.P16320876166007043465

`eq[2, A321090(A026614(n+1))]`
-/

namespace A382751.P16320876166007043465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321090 (A026614 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A382751.P16320876166007043465

namespace A382751

/-- `eq[2, A321090(A026614(n+1))]` -/
def P16320876166007043465.Spec : Prop :=
  ∀ n, (P16320876166007043465.a n : ℤ) = A382751 (n + 1)

end A382751

/-! ## A382751.P10503754997002465743

`eq[A085731(3*(n+1)), A085731(n+1)]+1`
-/

namespace A382751.P10503754997002465743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085731 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085731 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A382751.P10503754997002465743

namespace A382751

/-- `eq[A085731(3*(n+1)), A085731(n+1)]+1` -/
def P10503754997002465743.Spec : Prop :=
  ∀ n, (P10503754997002465743.a n : ℤ) = A382751 (n + 1)

end A382751

/-! ## A382751.P1159714520076113243

`lt[A019555(n+1), A019555(3*(n+1))]+1`
-/

namespace A382751.P1159714520076113243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A382751.P1159714520076113243

namespace A382751

/-- `lt[A019555(n+1), A019555(3*(n+1))]+1` -/
def P1159714520076113243.Spec : Prop :=
  ∀ n, (P1159714520076113243.a n : ℤ) = A382751 (n + 1)

end A382751

/-! ## A382751.P7819255236303399228

`lt[A056551(n+1), A056551(3*(n+1))]+1`
-/

namespace A382751.P7819255236303399228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056551 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A382751.P7819255236303399228

namespace A382751

/-- `lt[A056551(n+1), A056551(3*(n+1))]+1` -/
def P7819255236303399228.Spec : Prop :=
  ∀ n, (P7819255236303399228.a n : ℤ) = A382751 (n + 1)

end A382751

/-!
# A382752: Numbers k such that A000005(k) = A065295(k).

The programs for A382752, there is no canonical definition to state claims against.
-/

/-! ## A382752.P14596495273584295753

`eq[A000005(n+1), A065295(n+1)]+1`
-/

namespace A382752.P14596495273584295753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065295 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A382752.P14596495273584295753

/-! ## A382752.P16908760639374228196

`A020725(eq[A000005(n+1), A065295(n+1)])`
-/

namespace A382752.P16908760639374228196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A382752.P16908760639374228196

/-!
# A382753: Expansion of e.g.f. 3/(5 - 2*exp(3*x)).

The programs for A382753, there is no canonical definition to state claims against.
-/

/-! ## A382753.P5347254191331676672

`A310093(n*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A382753.P5347254191331676672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A310093 ((n : ℤ) * a (n - 1)).toNat

end

end A382753.P5347254191331676672

/-!
# A382754: List of unlabeled simple graphs, encoded as integers (see comments).

The programs for A382754, there is no canonical definition to state claims against.
-/

/-! ## A382754.P583859733111067966

`A191291(or(A000568(n), A321777(n+7)))`
-/

namespace A382754.P583859733111067966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191291 (Int.lor (A000568 n) (A321777 (n + 7))).toNat

end

end A382754.P583859733111067966

/-! ## A382754.P6383614699818963733

`record[A000040(A383110(n+4))%A090106(n+1)]`
-/

namespace A382754.P6383614699818963733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A383110 (n + 4)).toNat) (A090106 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A382754.P6383614699818963733

/-!
# A382755: Irregular triangle read by rows: Let k encode the edges of an n-vertex graph by taking edges (u,v), with u < v, in lexicographic order ((0,1), ..., (0,n-1), (1,2), ..., (1,n-1), ..., (n-1,n)) and adding each edge to the graph if the corresponding binary digit of k (starting with the least significant digit) is 1. T(n,k) is the smallest nonnegative integer that encodes the same unlabeled n-vertex graph as k, 0 <= k < n*(n-1)/2.

The programs for A382755, there is no canonical definition to state claims against.
-/

/-! ## A382755.P16278996628285610997

`A135534(A089408(n+3))%A397858(n)`
-/

namespace A382755.P16278996628285610997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135534 (A089408 (n + 3)).toNat) (A397858 n)

end

end A382755.P16278996628285610997

/-! ## A382755.P8280165181024196049

`A088512(n+4)%A307633(A178381(n))`
-/

namespace A382755.P8280165181024196049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088512 (n + 4)) (A307633 (A178381 n).toNat)

end

end A382755.P8280165181024196049

/-!
# A382757: a(n) is the graph corresponding to A382754(n), encoded as in A076184.

The programs for A382757, there is no canonical definition to state claims against.
-/

/-! ## A382757.P8157678359938883663

`A139250(A351939(n))%A129387(2*n+3)`
-/

namespace A382757.P8157678359938883663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139250 (A351939 n).toNat) (A129387 (2 * n + 3))

end

end A382757.P8157678359938883663

/-!
# A382758: Number of edges of the graph encoded by A382754(n).

The programs for A382758, there is no canonical definition to state claims against.
-/

/-! ## A382758.P8552105342518278124

`A000120(A382754(n))-A057427(n)`
-/

namespace A382758.P8552105342518278124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A382754 n).toNat - A057427 n

end

end A382758.P8552105342518278124

/-!
# A382759: Number of connected components of the graph encoded by A382754(n).

The programs for A382759, there is no canonical definition to state claims against.
-/

/-! ## A382759.P4908971894454436556

`A382760(A382764(A382764(n)))`
-/

namespace A382759.P4908971894454436556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382760 (A382764 (A382764 n).toNat).toNat

end

end A382759.P4908971894454436556

/-! ## A382759.P16990955728469541815

`A007814(A053755(n)*A366279(n))`
-/

namespace A382759.P16990955728469541815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A053755 n * A366279 n).toNat

end

end A382759.P16990955728469541815

/-! ## A382759.P18323158452098301209

`A067029(A053755(n)*A366279(n))`
-/

namespace A382759.P18323158452098301209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A053755 n * A366279 n).toNat

end

end A382759.P18323158452098301209

/-! ## A382759.P2825318836571989845

`A007814(lcm(A096334(n), A366279(n)))`
-/

namespace A382759.P2825318836571989845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.lcm (A096334 n) (A366279 n))

end

end A382759.P2825318836571989845

/-! ## A382759.P7888806098243360224

`A007814(A031158(n+1)*A366279(n))`
-/

namespace A382759.P7888806098243360224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A031158 (n + 1) * A366279 n).toNat

end

end A382759.P7888806098243360224

/-!
# A382760: Independence number of the graph encoded by A382754(n).

The programs for A382760, there is no canonical definition to state claims against.
-/

/-! ## A382760.P1031776164780575584

`A001221(A392195(1+n))`
-/

namespace A382760.P1031776164780575584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A392195 (1 + n)).toNat

end

end A382760.P1031776164780575584

/-! ## A382760.P9458659524249139194

`A001221(A242421(n+1)^A089723(n+1))`
-/

namespace A382760.P9458659524249139194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A242421 (n + 1) : ℚ) ^ (A089723 (n + 1) : ℤ))).toNat

end

end A382760.P9458659524249139194

/-! ## A382760.P9633608714829529739

`A001221(A129594(A129594(A242421(n+1))))`
-/

namespace A382760.P9633608714829529739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A129594 (A129594 (A242421 (n + 1)).toNat).toNat).toNat

end

end A382760.P9633608714829529739

/-! ## A382760.P12077864508289087457

`A358379(A043313(n+1))`
-/

namespace A382760.P12077864508289087457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358379 (A043313 (n + 1)).toNat

end

end A382760.P12077864508289087457

/-! ## A382760.P10261683847157425156

`A080791(A396006(n+1)%A396033(n))`
-/

namespace A382760.P10261683847157425156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (Int.tmod (A396006 (n + 1)) (A396033 n)).toNat

end

end A382760.P10261683847157425156

/-!
# A382761: List of graphs that are squares, encoded as in A382754.

The programs for A382761, there is no canonical definition to state claims against.
-/

/-! ## A382761.P11782872326216944215

`A382754(A382762(n))`
-/

namespace A382761.P11782872326216944215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382754 (A382762 n).toNat

end

end A382761.P11782872326216944215

/-! ## A382761.P12188100049715820305

`record[char[A382764(n)]*A382754(n)]`
-/

namespace A382761.P12188100049715820305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382764 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A382754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A382761.P12188100049715820305

/-! ## A382761.P1431604863853674599

`A382763(lt[A361216(n+3), A319086(n+3)])`
-/

namespace A382761.P1431604863853674599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361216 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319086 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382763 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A382761.P1431604863853674599

/-! ## A382761.P2752932479547682707

`A382763(lt[A170962(3*n+1), A170968(2*(n+1))+2])`
-/

namespace A382761.P2752932479547682707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170962 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170968 (2 * (n + 1)) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382763 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A382761.P2752932479547682707

/-! ## A382761.P14265591907583758171

`A382763(lt[A337090(n), A059443(n+2)])`
-/

namespace A382761.P14265591907583758171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337090 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059443 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382763 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A382761.P14265591907583758171

/-!
# A382762: List of graphs that are squares, encoded by their indices in A382754.

The programs for A382762, there is no canonical definition to state claims against.
-/

/-! ## A382762.P8737419217680847247

`record[n*char[A382764(n)]]`
-/

namespace A382762.P8737419217680847247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382764 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A382762.P8737419217680847247

/-! ## A382762.P13175244046693468952

`lt[A300951(n), A328232(A094638(n+1))]`
-/

namespace A382762.P13175244046693468952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328232 (A094638 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382762.P13175244046693468952

/-!
# A382763: a(n) is the code (in the encoding given by A382754) of the square of the graph with code A382754(n).

The programs for A382763, there is no canonical definition to state claims against.
-/

/-! ## A382763.P13413533708880313116

`A382754(A382764(n))`
-/

namespace A382763.P13413533708880313116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382754 (A382764 n).toNat

end

end A382763.P13413533708880313116

/-! ## A382763.P18322426232243157457

`or(A243048(A263296(n+1)), A382754(n))`
-/

namespace A382763.P18322426232243157457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A243048 (A263296 (n + 1)).toNat) (A382754 n)

end

end A382763.P18322426232243157457

/-! ## A382763.P1016667310082447716

`or(A382754(n), A382755(A263296(n+1)²))`
-/

namespace A382763.P1016667310082447716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A382754 n) (A382755 (A263296 (n + 1) ^ 2).toNat)

end

end A382763.P1016667310082447716

/-! ## A382763.P8152647238115843969

`or(A080224(A263296(n+1)!), A382754(n))`
-/

namespace A382763.P8152647238115843969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080224 (Nat.factorial (A263296 (n + 1)).toNat)) (A382754 n)

end

end A382763.P8152647238115843969

/-! ## A382763.P8440212521041468244

`or(A382754(n), A382755(A221388(2*n+5)))`
-/

namespace A382763.P8440212521041468244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A382754 n) (A382755 (A221388 (2 * n + 5)).toNat)

end

end A382763.P8440212521041468244

/-!
# A382765: Primes that can be expressed using exactly one of each of the prime digits 2, 3, 5, 7, using concatenation and the arithmetic operations +,-,*,/,^.

The programs for A382765, there is no canonical definition to state claims against.
-/

/-! ## A382765.P6283637126408445260

`A000040(lt[A226371(n), A132230(n+1)]+1)`
-/

namespace A382765.P6283637126408445260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226371 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A382765.P6283637126408445260

/-! ## A382765.P12204016803437574186

`A000040(lt[A000602(n), A004094(n)])`
-/

namespace A382765.P12204016803437574186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000602 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A382765.P12204016803437574186

/-! ## A382765.P8395384938486787817

`A000040(lt[A107742(n), A384961(n+1)])`
-/

namespace A382765.P8395384938486787817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107742 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A382765.P8395384938486787817

/-! ## A382765.P5050326770899526170

`A000040(lt[A205217(2*(n+2)), A268335(n+1)])`
-/

namespace A382765.P5050326770899526170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205217 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A382765.P5050326770899526170

/-! ## A382765.P5936266084451018756

`A000040(lt[A329381(2*n+1), A126000(2*n+5)]+1)`
-/

namespace A382765.P5936266084451018756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329381 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126000 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A382765.P5936266084451018756

/-!
# A382766: Odd primes p such that p + 4, p + 6 and p + 8 are composite.

The programs for A382766, there is no canonical definition to state claims against.
-/

/-! ## A382766.P6788042883300006853

`A005408(eq[2*n+1, A020482(n+6)])`
-/

namespace A382766.P6788042883300006853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A382766.P6788042883300006853

/-! ## A382766.P13299600294054007477

`lt[A092976(n)², A007920(n+4)]`
-/

namespace A382766.P13299600294054007477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382766.P13299600294054007477

/-! ## A382766.P3120632743286508613

`lt[A225244(n)², A007920(n+4)]`
-/

namespace A382766.P3120632743286508613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382766.P3120632743286508613

/-! ## A382766.P18030700042228337697

`lt[A016933(A003415(n)), A166597(n+3)]`
-/

namespace A382766.P18030700042228337697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 (A003415 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382766.P18030700042228337697

/-!
# A382767: Smallest number k that is powerful but not a prime power that is also coprime to n.

The programs for A382767, there is no canonical definition to state claims against.
-/

/-! ## A382767.P10631565317465453526

`A381805(n+1)²`
-/

namespace A382767.P10631565317465453526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381805 (n + 1) ^ 2

end

end A382767.P10631565317465453526

/-! ## A382767.P8049167218117398730

`A053669(n+1)²*A380539(n+1)²`
-/

namespace A382767.P8049167218117398730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (n + 1) ^ 2 * A380539 (n + 1) ^ 2

end

end A382767.P8049167218117398730

/-! ## A382767.P10577886582261452522

`A381805(1+n)^2`
-/

namespace A382767.P10577886582261452522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381805 (1 + n) ^ 2

end

end A382767.P10577886582261452522

/-! ## A382767.P17911583210442782489

`A123623(∏{p}[1+n, #])²`
-/

namespace A382767.P17911583210442782489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123623 (∏ p ∈ Nat.primeFactors (f1 n), p) ^ 2

end

end A382767.P17911583210442782489

/-! ## A382767.P10495388186946063715

`A000290(A381805(1+n))`
-/

namespace A382767.P10495388186946063715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A381805 (1 + n)).toNat

end

end A382767.P10495388186946063715

/-! ## A382767.P10033690821168677693

`A053143(A382248(n+1))`
-/

namespace A382767.P10033690821168677693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (A382248 (n + 1)).toNat

end

end A382767.P10033690821168677693

/-! ## A382767.P15882303165257971134

`A000463(2*A381805(n+1))`
-/

namespace A382767.P15882303165257971134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (2 * A381805 (n + 1)).toNat

end

end A382767.P15882303165257971134

/-! ## A382767.P18095814317667915050

`A380539(n+1)*A382248(n+1)`
-/

namespace A382767.P18095814317667915050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380539 (n + 1) * A382248 (n + 1)

end

end A382767.P18095814317667915050

/-! ## A382767.P15687738128253578707

`(A087560(A087560(n+1))/(n+1))²`
-/

namespace A382767.P15687738128253578707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A087560 (A087560 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A382767.P15687738128253578707

/-!
# A382768: Number of k < n that are coprime to n and neither squarefree nor prime powers.

The programs for A382768, there is no canonical definition to state claims against.
-/

/-! ## A382768.P2886610251817313256

`A175424(A287632(n)%A191380(n+1))`
-/

namespace A382768.P2886610251817313256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175424 (Int.tmod (A287632 n) (A191380 (n + 1))).toNat

end

end A382768.P2886610251817313256

/-! ## A382768.P362395270313004193

`A091194(((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])%A233523(2*n+1))`
-/

namespace A382768.P362395270313004193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091194 (Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))) (A233523 (2 * n + 1))).toNat

end

end A382768.P362395270313004193

/-! ## A382768.P8497305313391519416

`A091194(A000010(n+1)%A196124(2*n+5))`
-/

namespace A382768.P8497305313391519416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091194 (Int.tmod (A000010 (n + 1)) (A196124 (2 * n + 5))).toNat

end

end A382768.P8497305313391519416

/-! ## A382768.P11149590203669165806

`A326291(A030356(n+1))`
-/

namespace A382768.P11149590203669165806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (A030356 (n + 1)).toNat

end

end A382768.P11149590203669165806

/-! ## A382768.P1103489920630138164

`A037803(A038001(n+1)+1)`
-/

namespace A382768.P1103489920630138164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037803 (A038001 (n + 1) + 1).toNat

end

end A382768.P1103489920630138164

/-!
# A382771: Number of ways to permute the prime indices of n so that the run-lengths are all different.

The programs for A382771, there is no canonical definition to state claims against.
-/

/-! ## A382771.P12522611067969112157

`ceil(sqrt(sqrt(A336569(1+n))))`
-/

namespace A382771.P12522611067969112157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A336569 (1 + n) : ℝ))⌉

end

end A382771.P12522611067969112157

/-! ## A382771.P4043313739491858458

`∑{digits}[A046523(n+1), #²%3]`
-/

namespace A382771.P4043313739491858458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2 % 3).sum

end

end A382771.P4043313739491858458

/-! ## A382771.P2887542197027196026

`∑{p}[n+1, gcd(n, #)]!*A351564(n+1)`
-/

namespace A382771.P2887542197027196026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p) : ℤ) * A351564 (n + 1)

end

end A382771.P2887542197027196026

/-! ## A382771.P5902339097701589799

`A028930(A335447(1+n))`
-/

namespace A382771.P5902339097701589799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028930 (A335447 (1 + n)).toNat

end

end A382771.P5902339097701589799

/-! ## A382771.P5645688332147838069

`A335489(A181819(n+1))`
-/

namespace A382771.P5645688332147838069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335489 (A181819 (n + 1)).toNat

end

end A382771.P5645688332147838069

/-! ## A382771.P9913100098386543259

`A332602(A328830(n+1))`
-/

namespace A382771.P9913100098386543259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332602 (A328830 (n + 1)).toNat

end

end A382771.P9913100098386543259

/-! ## A382771.P7600249035659119866

`A264655(A328830(n+1)+1)`
-/

namespace A382771.P7600249035659119866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264655 (A328830 (n + 1) + 1).toNat

end

end A382771.P7600249035659119866

/-! ## A382771.P15852928455264039845

`A028930(A008480(n+1)-1)`
-/

namespace A382771.P15852928455264039845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028930 (A008480 (n + 1) - 1).toNat

end

end A382771.P15852928455264039845

/-! ## A382771.P1070878435457820776

`1-A094754(A238745(n+1))`
-/

namespace A382771.P1070878435457820776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A094754 (A238745 (n + 1)).toNat

end

end A382771.P1070878435457820776

/-! ## A382771.P5744593592458881464

`A048385(A046523(n+1))%3`
-/

namespace A382771.P5744593592458881464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048385 (A046523 (n + 1)).toNat) 3

end

end A382771.P5744593592458881464

/-!
# A382772: Set of positions of first appearances in A382771 (permutations of prime indices with distinct run-lengths).

The programs for A382772, there is no canonical definition to state claims against.
-/

/-! ## A382772.P5284028438009350854

`A062401(12*a(n-2))` with `a(0)=1, a(1)=6`
-/

namespace A382772.P5284028438009350854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  A062401 (12 * a (n - 2)).toNat

end

end A382772.P5284028438009350854

/-! ## A382772.P8329056694556242520

`A330997(A035026(n+1)+A002524(n))`
-/

namespace A382772.P8329056694556242520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330997 (A035026 (n + 1) + A002524 n).toNat

end

end A382772.P8329056694556242520

/-!
# A382773: Number of ways to permute a multiset whose multiplicities are the prime indices of n so that the run-lengths are all different.

The programs for A382773, there is no canonical definition to state claims against.
-/

/-! ## A382773.P769207499422284195

`A335489(n+1)^A000034(A143590(n+1))`
-/

namespace A382773.P769207499422284195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335489 (n + 1) : ℚ) ^ (A000034 (A143590 (n + 1)).toNat : ℤ)

end

end A382773.P769207499422284195

/-! ## A382773.P18025283991589838648

`A335489(n+1)^A047089(A105681(n+1))`
-/

namespace A382773.P18025283991589838648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335489 (n + 1) : ℚ) ^ (A047089 (A105681 (n + 1)).toNat : ℤ)

end

end A382773.P18025283991589838648

/-! ## A382773.P1940250808491650999

`A335489(n+1)^A237271(A111702(3*n+2))`
-/

namespace A382773.P1940250808491650999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335489 (n + 1) : ℚ) ^ (A237271 (A111702 (3 * n + 2)).toNat : ℤ)

end

end A382773.P1940250808491650999

/-! ## A382773.P1665923946767980368

`A063435(A379840(n+1))*A335489(n+1)`
-/

namespace A382773.P1665923946767980368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 (A379840 (n + 1)).toNat * A335489 (n + 1)

end

end A382773.P1665923946767980368

/-! ## A382773.P3870007960469256544

`A335489(n+1)^A027926(A198669(n+1))`
-/

namespace A382773.P3870007960469256544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335489 (n + 1) : ℚ) ^ (A027926 (A198669 (n + 1)).toNat : ℤ)

end

end A382773.P3870007960469256544

/-!
# A382775: Least number appearing n times in A048767 (rank of Look-and-Say partition of prime indices).

The programs for A382775, there is no canonical definition to state claims against.
-/

/-! ## A382775.P14254655720286878551

`A165057(A000079(2*n+3))^A001068(n+1)`
-/

namespace A382775.P14254655720286878551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165057 (A000079 (2 * n + 3)).toNat : ℚ) ^ (A001068 (n + 1) : ℤ)

end

end A382775.P14254655720286878551

/-! ## A382775.P15224286572581991508

`4*A280638(a(n-1)+4*n-2)` with `a(0)=6, a(1)=1`
-/

namespace A382775.P15224286572581991508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 1] fun n a =>
  4 * A280638 (a (n - 1) + (4 * n : ℤ) - 2).toNat

end

end A382775.P15224286572581991508

/-!
# A382776: Triangle read by rows: T(n,k) is the number of ways to place 2*n rooks on a (n+k) X (2*n-k) board so that there is at least one rook in every column and row and so that each rook is defended by another.

The programs for A382776, there is no canonical definition to state claims against.
-/

/-! ## A382776.P12817340145471203022

`A193229(A061579(n))*A193229(n)`
-/

namespace A382776.P12817340145471203022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193229 (A061579 n).toNat * A193229 n

end

end A382776.P12817340145471203022

/-!
# A382777: Number of minimum total dominating sets in the (3n)-triangular honeycomb bishop graph.

The programs for A382777, there is no canonical definition to state claims against.
-/

/-! ## A382777.P6375748987658699093

`A006013(n)*A006472(n+1)`
-/

namespace A382777.P6375748987658699093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 n * A006472 (n + 1)

end

end A382777.P6375748987658699093

/-! ## A382777.P16656519596309784964

`A006472(n+1)*A047749(2*n+1)`
-/

namespace A382777.P16656519596309784964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006472 (n + 1) * A047749 (2 * n + 1)

end

end A382777.P16656519596309784964

/-! ## A382777.P16078780957060229626

`A000142(3*n+1)/A034910(n+1)`
-/

namespace A382777.P16078780957060229626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (3 * n + 1) : ℚ) / (A034910 (n + 1) : ℚ)

end

end A382777.P16078780957060229626

/-! ## A382777.P17191023358423710646

`∑{#}[n, A382776(C(n+1, 2)+#)]`
-/

namespace A382777.P17191023358423710646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A382776 (Nat.choose (n + 1) 2 + k)

end

end A382777.P17191023358423710646

/-!
# A382780: Sum of the orders of all permutations of [n] with distinct cycle lengths.

The programs for A382780, there is no canonical definition to state claims against.
-/

/-! ## A382780.P18296798995232711935

`A355304(A169954(n))`
-/

namespace A382780.P18296798995232711935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355304 (A169954 n).toNat

end

end A382780.P18296798995232711935

/-! ## A382780.P14834556330081320311

`A395776(1-A006257(n)+∏[n+1])`
-/

namespace A382780.P14834556330081320311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395776 (1 - A006257 n + ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A382780.P14834556330081320311

/-! ## A382780.P15206109676740282746

`A139770(A357134(2*n)*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A382780.P15206109676740282746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A139770 (A357134 (2 * n) * a (n - 1)).toNat

end

end A382780.P15206109676740282746

/-!
# A382781: Sum of GCD of cycle lengths over all permutations of [n] with distinct cycle lengths.

The programs for A382781, there is no canonical definition to state claims against.
-/

/-! ## A382781.P14241489754901848247

`A253580((10*a(n-2))²+n)+1` with `a(0)=0, a(1)=1, a(2)=2, a(3)=9`
-/

namespace A382781.P14241489754901848247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 9] fun n a =>
  A253580 ((10 * a (n - 2)) ^ 2 + (n : ℤ)).toNat + 1

end

end A382781.P14241489754901848247

/-! ## A382781.P11602430917260758131

`A037203(A048251(n)+n)`
-/

namespace A382781.P11602430917260758131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037203 (A048251 n + (n : ℤ)).toNat

end

end A382781.P11602430917260758131

/-!
# A382782: Irregular triangle T(n,k) read by rows of the reduced coefficients of Pi^(2*k) in the expansion of Sum_{k>=1} (1 / (4*k^2-1)^n).

The programs for A382782, there is no canonical definition to state claims against.
-/

/-! ## A382782.P458998321916764506

`A382784(n+1)/A341595(A004676(n+1))`
-/

namespace A382782.P458998321916764506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382784 (n + 1) : ℚ) / (A341595 (A004676 (n + 1)).toNat : ℚ)

end

end A382782.P458998321916764506

/-!
# A382783: Denominators arising in the expansion of Sum_{k>=1} (1/(4k^2-1)^n) in even powers of Pi.

The programs for A382783, there is no canonical definition to state claims against.
-/

/-! ## A382783.P1947312492782242664

`4*lcm(A006530(n*a(n-1)), a(n-1))` with `a(0)=2, a(1)=16`
-/

namespace A382783.P1947312492782242664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 16] fun n a =>
  4 * Int.lcm (A006530 (n * a (n - 1))) (a (n - 1) : ℤ)

end

end A382783.P1947312492782242664

/-! ## A382783.P17115972481047577721

`lcm(A003418(n), A113416(A171477(n)))`
-/

namespace A382783.P17115972481047577721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003418 n) (A113416 (A171477 n).toNat)

end

end A382783.P17115972481047577721

/-!
# A382784: Irregular triangle T(n,k) read by rows of the coefficients of Pi^(2k) in the expansion of Sum_{k>=1} (1 / (4k^2-1)^n) with denominator 2^(2n)*(n-1)!.

The programs for A382784, there is no canonical definition to state claims against.
-/

/-! ## A382784.P14952415172187006594

`A341595(A004676(n+1))*A382782(n+1)`
-/

namespace A382784.P14952415172187006594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341595 (A004676 (n + 1)).toNat * A382782 (n + 1)

end

end A382784.P14952415172187006594

/-!
# A382785: a(n) is the least multiple of the n-th primorial such that both a(n)-1 and a(n)+1 are prime and the prime factors of a(n) do not exceed prime(n).

The programs for A382785, there is no canonical definition to state claims against.
-/

/-! ## A382785.P6727378658769420247

`Δ[A143293(n)]*A384545(n+1)`
-/

namespace A382785.P6727378658769420247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A384545 (n + 1)

end

end A382785.P6727378658769420247

/-! ## A382785.P1881176355943547413

`A002110(1+n)*A384545(n+1)`
-/

namespace A382785.P1881176355943547413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (1 + n) * A384545 (n + 1)

end

end A382785.P1881176355943547413

/-! ## A382785.P16490876098065415413

`A060255(n+1)+A001221(A000043(n+1))`
-/

namespace A382785.P16490876098065415413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060255 (n + 1) + A001221 (A000043 (n + 1)).toNat

end

end A382785.P16490876098065415413

/-! ## A382785.P17484529174774491131

`A076826(A218592(n+1))+A060255(n+1)`
-/

namespace A382785.P17484529174774491131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 (A218592 (n + 1)).toNat + A060255 (n + 1)

end

end A382785.P17484529174774491131

/-! ## A382785.P810481883508777050

`A351247(A234346(n+1))+A060255(n+1)`
-/

namespace A382785.P810481883508777050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351247 (A234346 (n + 1)).toNat + A060255 (n + 1)

end

end A382785.P810481883508777050

/-!
# A382787: The product of exponents in the prime factorization of the numbers whose prime factorization contains exponents that are either 1 or even.

The programs for A382787, the canonical program `A382787.P2533475124958767227` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382787 has offset 1).

The definition of A382787 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335275, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382787.P2533475124958767227

`A005361(A335275(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A382787

/-- `A005361(A335275(n+1))` -/
def P2533475124958767227.Spec : Prop :=
  ∀ n, P2533475124958767227.a n = A382787 (n + 1)

theorem P2533475124958767227.correct : P2533475124958767227.Spec := by
  intro n
  simp only [A382787, Nat.add_sub_cancel]

end A382787

/-! ## A382787.P15206422182147190953

`∏{e}[A335275(1+n), #]`
-/

namespace A382787.P15206422182147190953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335275 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A382787.P15206422182147190953

namespace A382787

/-- `∏{e}[A335275(1+n), #]` -/
def P15206422182147190953.Spec : Prop :=
  ∀ n, (P15206422182147190953.a n : ℤ) = A382787 (n + 1)

end A382787

/-! ## A382787.P10590223871128554447

`A005361(lt[A295663(n+1), 1]+1)`
-/

namespace A382787.P10590223871128554447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295663 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A382787.P10590223871128554447

namespace A382787

/-- `A005361(lt[A295663(n+1), 1]+1)` -/
def P10590223871128554447.Spec : Prop :=
  ∀ n, P10590223871128554447.a n = A382787 (n + 1)

end A382787

/-! ## A382787.P5610913082897039573

`A370080(A335275(n+1)/A357684(n+1))`
-/

namespace A382787.P5610913082897039573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370080 (SequenceMachineLib.roundAway ((A335275 (n + 1) : ℚ) / (A357684 (n + 1) : ℚ))).toNat

end

end A382787.P5610913082897039573

namespace A382787

/-- `A370080(A335275(n+1)/A357684(n+1))` -/
def P5610913082897039573.Spec : Prop :=
  ∀ n, P5610913082897039573.a n = A382787 (n + 1)

end A382787

/-! ## A382787.P13720927300363967495

`∏{e}[record[A056192(n+1)], #]`
-/

namespace A382787.P13720927300363967495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056192 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A382787.P13720927300363967495

namespace A382787

/-- `∏{e}[record[A056192(n+1)], #]` -/
def P13720927300363967495.Spec : Prop :=
  ∀ n, (P13720927300363967495.a n : ℤ) = A382787 (n + 1)

end A382787

/-! ## A382787.P14011713050077807300

`A005361(record[A056192(n+1)])`
-/

namespace A382787.P14011713050077807300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A382787.P14011713050077807300

namespace A382787

/-- `A005361(record[A056192(n+1)])` -/
def P14011713050077807300.Spec : Prop :=
  ∀ n, P14011713050077807300.a n = A382787 (n + 1)

end A382787

/-! ## A382787.P7350433686187167468

`A370080(A335275(n+1)+A000007(n))`
-/

namespace A382787.P7350433686187167468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370080 (A335275 (n + 1) + A000007 n).toNat

end

end A382787.P7350433686187167468

namespace A382787

/-- `A370080(A335275(n+1)+A000007(n))` -/
def P7350433686187167468.Spec : Prop :=
  ∀ n, P7350433686187167468.a n = A382787 (n + 1)

end A382787

/-! ## A382787.P15446397807732684022

`A325837(A335275(n+1)²)`
-/

namespace A382787.P15446397807732684022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325837 (A335275 (n + 1) ^ 2).toNat

end

end A382787.P15446397807732684022

namespace A382787

/-- `A325837(A335275(n+1)²)` -/
def P15446397807732684022.Spec : Prop :=
  ∀ n, P15446397807732684022.a n = A382787 (n + 1)

end A382787

/-!
# A382788: The sum of divisors of n that are numbers whose number of divisors is a power of 2.

The programs for A382788, the canonical program `A382788.P15802914446131148904` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382788 has offset 1).

The definition of A382788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382788.P15802914446131148904

`∑{d}[1+n, #*A359473(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A382788

/-- `∑{d}[1+n, #*A359473(#)]` -/
def P15802914446131148904.Spec : Prop :=
  ∀ n, P15802914446131148904.a n = A382788 (n + 1)

theorem P15802914446131148904.correct : P15802914446131148904.Spec := by
  intro n
  simp only [A382788, Nat.add_sub_cancel]

end A382788

/-! ## A382788.P9589295375476345996

`A401426(A372379(1+n))`
-/

namespace A382788.P9589295375476345996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401426 (A372379 (1 + n)).toNat

end

end A382788.P9589295375476345996

namespace A382788

/-- `A401426(A372379(1+n))` -/
def P9589295375476345996.Spec : Prop :=
  ∀ n, P9589295375476345996.a n = A382788 (n + 1)

end A382788

/-! ## A382788.P7535802084104117458

`A033634(n+1)%A030514(A328461(n+1))`
-/

namespace A382788.P7535802084104117458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033634 (n + 1)) (A030514 (A328461 (n + 1)).toNat)

end

end A382788.P7535802084104117458

namespace A382788

/-- `A033634(n+1)%A030514(A328461(n+1))` -/
def P7535802084104117458.Spec : Prop :=
  ∀ n, P7535802084104117458.a n = A382788 (n + 1)

end A382788

/-!
# A382789: The number of prime factors of Euler phi of the n-th primorial number, counted with multiplicity.

The programs for A382789, the canonical program `A382789.P16110672853359686492` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382789 has offset 0).

The definition of A382789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382789.P13347038790239213030

`A023508(n)+a(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A382789.P13347038790239213030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A023508 n + a (n - 1)

end

end A382789.P13347038790239213030

namespace A382789

/-- `A023508(n)+a(n-1)` -/
def P13347038790239213030.Spec : Prop :=
  ∀ n, P13347038790239213030.a n = A382789 n

end A382789

/-! ## A382789.P5104781013629942274

`∑[∑{e}[A182986(n+1)-1, #]]`
-/

namespace A382789.P5104781013629942274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1) - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382789.P5104781013629942274

namespace A382789

/-- `∑[∑{e}[A182986(n+1)-1, #]]` -/
def P5104781013629942274.Spec : Prop :=
  ∀ n, (P5104781013629942274.a n : ℤ) = A382789 n

end A382789

/-! ## A382789.P9351307167367745049

`∑[∑{e}[∑{d}[n+1, A143444(#)]-1, #]]`
-/

namespace A382789.P9351307167367745049
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), A143444 d - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382789.P9351307167367745049

namespace A382789

/-- `∑[∑{e}[∑{d}[n+1, A143444(#)]-1, #]]` -/
def P9351307167367745049.Spec : Prop :=
  ∀ n, (P9351307167367745049.a n : ℤ) = A382789 n

end A382789

/-! ## A382789.P17274719787361543835

`∑[A023508(n+A000007(n))]`
-/

namespace A382789.P17274719787361543835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023508 ((n : ℤ) + A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382789.P17274719787361543835

namespace A382789

/-- `∑[A023508(n+A000007(n))]` -/
def P17274719787361543835.Spec : Prop :=
  ∀ n, P17274719787361543835.a n = A382789 n

end A382789

/-! ## A382789.P16110672853359686492

`∑[∑{e}[1-A000040(A028310(n)), #]]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A382789

/-- `∑[∑{e}[1-A000040(A028310(n)), #]]` -/
def P16110672853359686492.Spec : Prop :=
  ∀ n, (P16110672853359686492.a n : ℤ) = A382789 n

theorem P16110672853359686492.correct : P16110672853359686492.Spec := by
  intro n
  simp only [A382789]

end A382789

/-! ## A382789.P1763311794028988070

`∑[A023508(n+1)]-A023508(n+1)`
-/

namespace A382789.P1763311794028988070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023508 (n + 1)

end

end A382789.P1763311794028988070

namespace A382789

/-- `∑[A023508(n+1)]-A023508(n+1)` -/
def P1763311794028988070.Spec : Prop :=
  ∀ n, P1763311794028988070.a n = A382789 n

end A382789

/-! ## A382789.P9300783392583420519

`∑[∑{e}[record[A008472(n+1)-1], #]]`
-/

namespace A382789.P9300783392583420519
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382789.P9300783392583420519

namespace A382789

/-- `∑[∑{e}[record[A008472(n+1)-1], #]]` -/
def P9300783392583420519.Spec : Prop :=
  ∀ n, (P9300783392583420519.a n : ℤ) = A382789 n

end A382789

/-! ## A382789.P2656240320918022823

`∑[∑{e}[A000010(A008578(n+1)), #]]`
-/

namespace A382789.P2656240320918022823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A008578 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382789.P2656240320918022823

namespace A382789

/-- `∑[∑{e}[A000010(A008578(n+1)), #]]` -/
def P2656240320918022823.Spec : Prop :=
  ∀ n, (P2656240320918022823.a n : ℤ) = A382789 n

end A382789

/-! ## A382789.P1462695607464804263

`∑[∑{e}[lt[∑{e}[n+1, #], 2], #]]`
-/

namespace A382789.P1462695607464804263
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < f5 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382789.P1462695607464804263

namespace A382789

/-- `∑[∑{e}[lt[∑{e}[n+1, #], 2], #]]` -/
def P1462695607464804263.Spec : Prop :=
  ∀ n, (P1462695607464804263.a n : ℤ) = A382789 n

end A382789

/-! ## A382789.P13351988319869268604

`∑[∑{e}[eq[1, A032742(n+1)], #]]`
-/

namespace A382789.P13351988319869268604
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382789.P13351988319869268604

namespace A382789

/-- `∑[∑{e}[eq[1, A032742(n+1)], #]]` -/
def P13351988319869268604.Spec : Prop :=
  ∀ n, (P13351988319869268604.a n : ℤ) = A382789 n

end A382789

/-! ## A382789.P536651525814795124

`∑[A023508(A090192(2*n)+n)]`
-/

namespace A382789.P536651525814795124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023508 (A090192 (2 * n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382789.P536651525814795124

namespace A382789

/-- `∑[A023508(A090192(2*n)+n)]` -/
def P536651525814795124.Spec : Prop :=
  ∀ n, P536651525814795124.a n = A382789 n

end A382789

/-!
# A382790: a(n) is the (2^n)-th powerful number.

The programs for A382790, there is no canonical definition to state claims against.
-/

/-! ## A382790.P10402855088216423709

`A001694(2^n)`
-/

namespace A382790.P10402855088216423709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (2 ^ n)

end

end A382790.P10402855088216423709

/-! ## A382790.P975984953480449124

`sqrt(A374291(2^n))`
-/

namespace A382790.P975984953480449124
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A374291 (2 ^ n) : ℝ)

end

end A382790.P975984953480449124

/-! ## A382790.P15296158780609888477

`A224866(2^n)-1`
-/

namespace A382790.P15296158780609888477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (2 ^ n) - 1

end

end A382790.P15296158780609888477

/-! ## A382790.P326808720663468697

`record[A001694(A029930(n))]`
-/

namespace A382790.P326808720663468697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (A029930 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A382790.P326808720663468697

/-! ## A382790.P3555542452228587947

`record[A001694(A055248(n))]`
-/

namespace A382790.P3555542452228587947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (A055248 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A382790.P3555542452228587947

/-!
# A382791: Carmichael numbers with exactly 3 prime factors, p*q*r, such that p-1, q-1 and r-1 have an equal 2-adic valuation.

The programs for A382791, there is no canonical definition to state claims against.
-/

/-! ## A382791.P4704318602061392117

`∩[A087788(n+1), A329799(n+1)]`
-/

namespace A382791.P4704318602061392117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382791.P4704318602061392117

/-!
# A382792: a(n) = Sum_{k=0..n} (Stirling1(n,k) * k!)^2.

The programs for A382792, there is no canonical definition to state claims against.
-/

/-! ## A382792.P11197857958710345446

`A379821(∑[4*n])`
-/

namespace A382792.P11197857958710345446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379821 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A382792.P11197857958710345446

/-!
# A382793: a(n) = Sum_{k=0..n} (-1)^k * (Stirling2(n,k) * k!)^2.

The programs for A382793, there is no canonical definition to state claims against.
-/

/-! ## A382793.P16385816438135918769

`A134685(n+1)*A167015(A108866(n))`
-/

namespace A382793.P16385816438135918769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134685 (n + 1) * A167015 (A108866 n).toNat

end

end A382793.P16385816438135918769

/-!
# A382794: a(n) = Sum_{k=0..n} Stirling1(n,k) * Stirling2(n,k) * (k!)^2.

The programs for A382794, there is no canonical definition to state claims against.
-/

/-! ## A382794.P14409201527898862301

`A000735(A001349(4*a(n-3)))` with `a(0)=1, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A382794.P14409201527898862301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 2] fun n a =>
  A000735 (A001349 (4 * a (n - 3)).toNat).toNat

end

end A382794.P14409201527898862301

/-!
# A382796: Numbers that can be represented as the sum of two distinct Ulam numbers in more than one way.

The programs for A382796, there is no canonical definition to state claims against.
-/

/-! ## A382796.P16102737249775858348

`lt[1, A080573(n+1)]+1`
-/

namespace A382796.P16102737249775858348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080573 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A382796.P16102737249775858348

/-! ## A382796.P11382590181411574628

`lt[2, A285884(A028310(n))-1]`
-/

namespace A382796.P11382590181411574628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285884 (A028310 n).toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A382796.P11382590181411574628

/-!
# A382797: Odd Ulam numbers.

The programs for A382797, there is no canonical definition to state claims against.
-/

/-! ## A382797.P14522832470412125488

`filter[A002858(n+1), #%2]`
-/

namespace A382797.P14522832470412125488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.tmod (f1 j) 2 = 1) n)

end

end A382797.P14522832470412125488

/-! ## A382797.P8720938160468253515

`∩[A002858(n+1), A004273(n)]`
-/

namespace A382797.P8720938160468253515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382797.P8720938160468253515

/-! ## A382797.P14054614389499054707

`∩[A002858(n+1), A060747(n)]`
-/

namespace A382797.P14054614389499054707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382797.P14054614389499054707

/-! ## A382797.P15812152468361020237

`record[A193356(A002858(n+1))]`
-/

namespace A382797.P15812152468361020237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (A002858 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A382797.P15812152468361020237

/-! ## A382797.P4465815848596679201

`filter[A002858(n+1), A000035(#)]`
-/

namespace A382797.P4465815848596679201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A382797.P4465815848596679201

/-! ## A382797.P11916751165424319057

`filter[A002858(n+1), A001511(#)]`
-/

namespace A382797.P11916751165424319057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A001511 (f1 j).toNat = 1) n)

end

end A382797.P11916751165424319057

/-! ## A382797.P2556226630591002861

`filter[A002858(n+1), A006519(#)]`
-/

namespace A382797.P2556226630591002861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A006519 (f1 j).toNat = 1) n)

end

end A382797.P2556226630591002861

/-!
# A382798: Even Ulam numbers.

The programs for A382798, there is no canonical definition to state claims against.
-/

/-! ## A382798.P16094890752157779043

`∩[2*n, A002858(n+1)]`
-/

namespace A382798.P16094890752157779043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382798.P16094890752157779043

/-! ## A382798.P18305022894157158307

`∩[A002858(n+1), A005843(n)]`
-/

namespace A382798.P18305022894157158307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382798.P18305022894157158307

/-! ## A382798.P3194763943280139175

`filter[A002858(n+1), A033999(#)]`
-/

namespace A382798.P3194763943280139175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A033999 (f1 j).toNat = 1) n)

end

end A382798.P3194763943280139175

/-! ## A382798.P5280885986293651533

`filter[A002858(1+n), A055396(#)]`
-/

namespace A382798.P5280885986293651533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A055396 (f1 j).toNat = 1) n)

end

end A382798.P5280885986293651533

/-! ## A382798.P9808535787384567476

`filter[A002858(n+1), A059841(#)]`
-/

namespace A382798.P9808535787384567476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A382798.P9808535787384567476

/-! ## A382798.P714788207274978999

`filter[A002858(n+1), A102419(#)]`
-/

namespace A382798.P714788207274978999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102419 (f1 j).toNat = 1) n)

end

end A382798.P714788207274978999

/-! ## A382798.P10931823241289957641

`filter[A002858(n+2), A135528(#)]`
-/

namespace A382798.P10931823241289957641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A382798.P10931823241289957641

/-! ## A382798.P16539478900590547573

`filter[A002858(n+2), A266591(#)]`
-/

namespace A382798.P16539478900590547573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A382798.P16539478900590547573

/-! ## A382798.P3902226034591229171

`∩[A002858(n+1), A002516(A002516(n))]`
-/

namespace A382798.P3902226034591229171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002516 (A002516 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382798.P3902226034591229171

/-! ## A382798.P12580545812117358885

`∩[A002858(n+1), A156253(A156242(n+1))]`
-/

namespace A382798.P12580545812117358885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (A156242 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382798.P12580545812117358885

/-!
# A382799: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where A(n,k) = n! * k! * [x^n * y^k] 1 / (1 - log(1-x) * log(1-y))^2.

The programs for A382799, there is no canonical definition to state claims against.
-/

/-! ## A382799.P17169454082045254861

`A100619(A001405(n))*A382734(n)`
-/

namespace A382799.P17169454082045254861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100619 (A001405 n).toNat * A382734 n

end

end A382799.P17169454082045254861

/-! ## A382799.P9757102583739315542

`A323023(A000726(n))*A382734(n)`
-/

namespace A382799.P9757102583739315542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323023 (A000726 n).toNat * A382734 n

end

end A382799.P9757102583739315542

/-! ## A382799.P3280370293473511791

`A135767(A257606(n))*A323023(n+1)`
-/

namespace A382799.P3280370293473511791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135767 (A257606 n).toNat * A323023 (n + 1)

end

end A382799.P3280370293473511791

/-! ## A382799.P3939137158265485466

`A135767(A257606(n))*A194285(A001405(n))`
-/

namespace A382799.P3939137158265485466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135767 (A257606 n).toNat * A194285 (A001405 n).toNat

end

end A382799.P3939137158265485466

/-! ## A382799.P16368984331113644202

`A081290(A382735(n))*A194285(A001405(n))`
-/

namespace A382799.P16368984331113644202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081290 (A382735 n).toNat * A194285 (A001405 n).toNat

end

end A382799.P16368984331113644202

