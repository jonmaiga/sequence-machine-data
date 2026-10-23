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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
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
import Seq.B009.C001
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

/-! ## A382701.P10365809866890397391

`A350840(A244710(n))-1`
-/

namespace A382701.P10365809866890397391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350840 (A244710 (n + 10)).toNat - 1

end

end A382701.P10365809866890397391

/-!
# A382702: Indices k where b(k) > k, where b is the EKG sequence A064413.

The programs for A382702, there is no canonical definition to state claims against.
-/

/-! ## A382702.P6918171119841639816

`lt[n+1, A064413(n+1)]+1`
-/

namespace A382702.P6918171119841639816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A382702.P6918171119841639816

/-! ## A382702.P15317322081563641937

`lt[A000007(n), A065519(A028310(n))]`
-/

namespace A382702.P15317322081563641937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065519 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382702.P15317322081563641937

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

/-! ## A382702.P16373085519742156456

`lt[A010815(3*n), A065519(A028310(n))]`
-/

namespace A382702.P16373085519742156456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065519 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382702.P16373085519742156456

/-!
# A382703: Numbers k which appear "prematurely" in A064413, that is, k appears before the k-th term.

The programs for A382703, there is no canonical definition to state claims against.
-/

/-! ## A382703.P9680702775852303265

`A064413(A382702(n+1))`
-/

namespace A382703.P9680702775852303265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (A382702 (n + 1)).toNat

end

end A382703.P9680702775852303265

/-! ## A382703.P3788033557453485187

`A064413(lt[n+1, A064413(n+1)]+1)`
-/

namespace A382703.P3788033557453485187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A382703.P3788033557453485187

/-!
# A382704: Indices k where b(k) < k, where b is the EKG sequence A064413.

The programs for A382704, there is no canonical definition to state claims against.
-/

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

/-! ## A382704.P4175304700134448438

`A064664(A382705(n+1))`
-/

namespace A382704.P4175304700134448438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A382705 (n + 1)).toNat

end

end A382704.P4175304700134448438

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

/-! ## A382706.P8855923699122923891

`∑[char[A382702(n+1)-1]]`
-/

namespace A382706.P8855923699122923891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382702 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382706.P8855923699122923891

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

/-! ## A382706.P9582696089022474402

`floor(A382913(3*n+1)/7)`
-/

namespace A382706.P9582696089022474402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A382913 (3 * n + 1) : ℚ) / 7⌋

end

end A382706.P9582696089022474402

/-!
# A382707: a(n) = number of indices k, 1 <= k <= n, such that A064413(k) < k.

The programs for A382707, there is no canonical definition to state claims against.
-/

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

/-!
# A382709: Numerator of (2^n - 1)*n! / 2^(n+1).

The programs for A382709, there is no canonical definition to state claims against.
-/

/-! ## A382709.P7129079185554512312

`A000225(n)*A049606(n)`
-/

namespace A382709.P7129079185554512312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n * A049606 n

end

end A382709.P7129079185554512312

/-! ## A382709.P15577637411539301471

`abs(A225883(n))*A049606(n)`
-/

namespace A382709.P15577637411539301471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225883 n| * A049606 n

end

end A382709.P15577637411539301471

/-! ## A382709.P1520842458210912252

`∑[A131577(n)]*A049606(n)`
-/

namespace A382709.P1520842458210912252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A049606 n

end

end A382709.P1520842458210912252

/-! ## A382709.P11951122951801784978

`Δ[A000295(n)]*A049606(n)`
-/

namespace A382709.P11951122951801784978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A049606 n

end

end A382709.P11951122951801784978

/-! ## A382709.P17141724806905468781

`record[A365279(n)]*A049606(n)`
-/

namespace A382709.P17141724806905468781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A049606 n

end

end A382709.P17141724806905468781

/-! ## A382709.P14829818510876930580

`(A000079(n)-1)*A049606(n)`
-/

namespace A382709.P14829818510876930580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n - 1) * A049606 n

end

end A382709.P14829818510876930580

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

/-! ## A382710.P3475564091809758719

`A005614(n)+A005206(n+2)`
-/

namespace A382710.P3475564091809758719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 n + A005206 (n + 2)

end

end A382710.P3475564091809758719

/-! ## A382710.P10446940589921284168

`A026351(n+1-A005206(n))`
-/

namespace A382710.P10446940589921284168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 ((n + 1 : ℤ) - A005206 n).toNat

end

end A382710.P10446940589921284168

/-! ## A382710.P5376614542806555449

`A019446(n+3)-A003849(n)`
-/

namespace A382710.P5376614542806555449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (n + 3) - A003849 n

end

end A382710.P5376614542806555449

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

The programs for A382713, the canonical program `A382713.P2567413420820071154` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382713 has offset 0).

The definition of A382713 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382713.P2567413420820071154

`a(n-2)` with `a(0)=1, a(1)=4, a(2)=2`

The canonical program, it is in `Seq.B000.C038`.
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

/-! ## A382715.P16782130942995404498

`1-A382716(n+1)+n`
-/

namespace A382715.P16782130942995404498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A382716 (n + 1) + (n : ℤ)

end

end A382715.P16782130942995404498

/-! ## A382715.P17731247358750743636

`A377091(A379059(n+1)-1)`
-/

namespace A382715.P17731247358750743636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (A379059 (n + 1) - 1).toNat

end

end A382715.P17731247358750743636

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

/-! ## A382715.P4021608147094992046

`A077168(n)-A382716(A077168(n))`
-/

namespace A382715.P4021608147094992046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n - A382716 (A077168 n).toNat

end

end A382715.P4021608147094992046

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

/-! ## A382716.P106971792134901519

`n+1-A377091(A379059(n+1)-1)`
-/

namespace A382716.P106971792134901519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A377091 (A379059 (n + 1) - 1).toNat

end

end A382716.P106971792134901519

/-!
# A382717: Square roots of record high points in A382716.

The programs for A382717, there is no canonical definition to state claims against.
-/

/-! ## A382717.P663869136544458650

`comp[A382718(n+1)-1]+1`
-/

namespace A382717.P663869136544458650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382718 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A382717.P663869136544458650

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

/-!
# A382720: Number of entries in the n-th row of Pascal's triangle not divisible by 7.

The programs for A382720, the canonical program `A382720.P11103476103859492823` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382720 has offset 0).

The definition of A382720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6042 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382720.P13172839677622578252

`∏{digits}[A007093(n), A337642(#)]`
-/

namespace A382720.P13172839677622578252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A337642 x).prod

end

end A382720.P13172839677622578252

namespace A382720

/-- `∏{digits}[A007093(n), A337642(#)]` -/
def P13172839677622578252.Spec : Prop :=
  ∀ n, P13172839677622578252.a n = A382720 n

end A382720

/-! ## A382720.P11103476103859492823

`∏{digits}[A007094(A037474(n)), #+1]`

The canonical program, it is in `Seq.B009.C001`.
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

The definition of A382723 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033264, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
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

/-!
# A382726: Total number of entries in rows 0,1,...,n of Pascal's triangle not divisible by 7.

The programs for A382726, the canonical program `A382726.P822100192108141517` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382726 has offset 0).

The definition of A382726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382726.P822100192108141517

`∑[A382720(n)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A382726

/-- `∑[A382720(n)]` -/
def P822100192108141517.Spec : Prop :=
  ∀ n, P822100192108141517.a n = A382726 n

theorem P822100192108141517.correct : P822100192108141517.Spec := by
  intro n
  simp only [A382726]

end A382726

/-! ## A382726.P4862580709050055554

`∑[∏{digits}[A007093(n), A337642(#)]]`
-/

namespace A382726.P4862580709050055554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => A337642 x).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382726.P4862580709050055554

namespace A382726

/-- `∑[∏{digits}[A007093(n), A337642(#)]]` -/
def P4862580709050055554.Spec : Prop :=
  ∀ n, P4862580709050055554.a n = A382726 n

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

/-! ## A382727.P5918777755547946324

`∑[gcd(n+1, A185284(3*(n+1)))]`
-/

namespace A382727.P5918777755547946324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A185284 (3 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382727.P5918777755547946324

/-! ## A382727.P17794155038370689955

`∑[xor(n+1, A185284(3*n+3))]`
-/

namespace A382727.P17794155038370689955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A185284 (3 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382727.P17794155038370689955

/-! ## A382727.P339761703427527814

`lt[A321801(A090181(n)), 1]`
-/

namespace A382727.P339761703427527814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321801 (A090181 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A382727.P339761703427527814

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

/-! ## A382728.P7795388806797409308

`eq[a(n-a(n-1))+1, A089840(n)]` with `a(0)=1, a(1)=1`
-/

namespace A382728.P7795388806797409308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - f1 (n - 1)) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089840 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A382728.P7795388806797409308

/-!
# A382729: Total number of entries in rows 0,1,...,n of Pascal's triangle not divisible by 4.

The programs for A382729, the canonical program `A382729.P18152922907771322413` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382729 has offset 0).

The definition of A382729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7154 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382729.P18152922907771322413

`∑[A382723(n)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A382729

/-- `∑[A382723(n)]` -/
def P18152922907771322413.Spec : Prop :=
  ∀ n, P18152922907771322413.a n = A382729 n

theorem P18152922907771322413.correct : P18152922907771322413.Spec := by
  intro n
  simp only [A382729]

end A382729

/-! ## A382729.P7882043751639786635

`∑[n+1-A249732(n)]`
-/

namespace A382729.P7882043751639786635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A249732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382729.P7882043751639786635

namespace A382729

/-- `∑[n+1-A249732(n)]` -/
def P7882043751639786635.Spec : Prop :=
  ∀ n, P7882043751639786635.a n = A382729 n

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

/-! ## A382729.P8289916653442506185

`∑[A361145(comp[2*n])+A163000(n)]`
-/

namespace A382729.P8289916653442506185
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361145 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) + A163000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382729.P8289916653442506185

namespace A382729

/-- `∑[A361145(comp[2*n])+A163000(n)]` -/
def P8289916653442506185.Spec : Prop :=
  ∀ n, P8289916653442506185.a n = A382729 n

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

/-! ## A382730.P4371429446220389429

`∑[A350634(A306853(n+1))]`
-/

namespace A382730.P4371429446220389429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350634 (A306853 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382730.P4371429446220389429

/-! ## A382730.P357525231427427156

`A057561(∑[A293226(n+1)+n])`
-/

namespace A382730.P357525231427427156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293226 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057561 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A382730.P357525231427427156

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

/-! ## A382731.P16119077852038442281

`eq[A076142(n+1), A265604(n)]`
-/

namespace A382731.P16119077852038442281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265604 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382731.P16119077852038442281

/-! ## A382731.P11143171240561644492

`eq[A265604(n), A331428(n+1)]`
-/

namespace A382731.P11143171240561644492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265604 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331428 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382731.P11143171240561644492

/-! ## A382731.P1474300666212646206

`∑[A234741(n+1)%A004063(n+1)]`
-/

namespace A382731.P1474300666212646206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234741 (n + 1)) (A004063 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382731.P1474300666212646206

/-!
# A382732: Number of proper hypercubic bipartitions of n.

The programs for A382732, the canonical program `A382732.P8564990345405423015` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382732 has offset 0).

The definition of A382732 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A382732.P8564990345405423015

`a(2^ceil(log2(n))-n)+1` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C038`.
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

end A382732

/-! ## A382732.P3301242888507498126

`∑[a(∑[a(n-2)²])-a(n-2)]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A382732.P3301242888507498126
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  f2 (n - 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 (∑ j ∈ Finset.range (n + 1), f2 j) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382732.P3301242888507498126

namespace A382732

/-- `∑[a(∑[a(n-2)²])-a(n-2)]` -/
def P3301242888507498126.Spec : Prop :=
  ∀ n, P3301242888507498126.a n = A382732 n

end A382732

/-! ## A382732.P2442448657035559731

`∑[a(∑[floor(a(n-2))])-a(n-2)]` with `a(0)=0, a(1)=0, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A382732.P2442448657035559731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 (∑ j ∈ Finset.range (n + 1), f2 j) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382732.P2442448657035559731

namespace A382732

/-- `∑[a(∑[floor(a(n-2))])-a(n-2)]` -/
def P2442448657035559731.Spec : Prop :=
  ∀ n, P2442448657035559731.a n = A382732 n

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

The programs for A382733, the canonical program `A382733.P7983275454340441927` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382733 has offset 0).

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

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A382733

/-- `A382732(n)+1` -/
def P7983275454340441927.Spec : Prop :=
  ∀ n, P7983275454340441927.a n = A382733 n

theorem P7983275454340441927.correct : P7983275454340441927.Spec := by
  intro n
  simp only [A382733]

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

/-! ## A382733.P4235219369586578725

`A005811(A371594(n+1))`
-/

namespace A382733.P4235219369586578725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A371594 (n + 1)).toNat

end

end A382733.P4235219369586578725

namespace A382733

/-- `A005811(A371594(n+1))` -/
def P4235219369586578725.Spec : Prop :=
  ∀ n, P4235219369586578725.a n = A382733 n

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

/-! ## A382734.P14716986608027907749

`A034006(n)%A320188(A382735(n))`
-/

namespace A382734.P14716986608027907749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034006 n) (A320188 (A382735 n).toNat)

end

end A382734.P14716986608027907749

/-! ## A382734.P12184838906760094868

`A050320(A327978(n+1))*A271697(n)`
-/

namespace A382734.P12184838906760094868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (A327978 (n + 1)).toNat * A271697 n

end

end A382734.P12184838906760094868

/-! ## A382734.P9059084746319600664

`A239455(A382735(n))%A052380(n+1)`
-/

namespace A382734.P9059084746319600664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239455 (A382735 n).toNat) (A052380 (n + 1))

end

end A382734.P9059084746319600664

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

/-! ## A382738.P9954852556312522802

`A382735(A046092(n))%A382804(n+2)`
-/

namespace A382738.P9954852556312522802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382735 (A046092 n).toNat) (A382804 (n + 2))

end

end A382738.P9954852556312522802

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

/-! ## A382740.P8402834210106652887

`A028897(A156939(n))`
-/

namespace A382740.P8402834210106652887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 (A156939 n).toNat

end

end A382740.P8402834210106652887

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

/-! ## A382742.P7897716741040758312

`A086197(A157178(n))`
-/

namespace A382742.P7897716741040758312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086197 (A157178 n).toNat

end

end A382742.P7897716741040758312

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

/-! ## A382743.P11267715955743904281

`and(A284449(n), A293628(n))`
-/

namespace A382743.P11267715955743904281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A284449 n) (A293628 n)

end

end A382743.P11267715955743904281

/-!
# A382744: If k appears, 5*k does not.

The programs for A382744, the canonical program `A382744.P11948343297158825481` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382744 has offset 1).

The definition of A382744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382744.P11948343297158825481

`comp[(n+1)*A062157(val(n+1, 5))]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A382744

/-- `comp[(n+1)*A062157(val(n+1, 5))]` -/
def P11948343297158825481.Spec : Prop :=
  ∀ n, (P11948343297158825481.a n : ℤ) = A382744 (n + 1)

theorem P11948343297158825481.correct : P11948343297158825481.Spec := by
  intro n
  simp only [A382744, Nat.add_sub_cancel]

end A382744

/-! ## A382744.P4662913549475026823

`lt[A000203(n+1), A307151(n+1)]+1`
-/

namespace A382744.P4662913549475026823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307151 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A382744.P4662913549475026823

namespace A382744

/-- `lt[A000203(n+1), A307151(n+1)]+1` -/
def P4662913549475026823.Spec : Prop :=
  ∀ n, (P4662913549475026823.a n : ℤ) = A382744 (n + 1)

end A382744

/-! ## A382744.P10509841635279620868

`lt[A002808(n+1), A307151(n+1)]+1`
-/

namespace A382744.P10509841635279620868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307151 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A382744.P10509841635279620868

namespace A382744

/-- `lt[A002808(n+1), A307151(n+1)]+1` -/
def P10509841635279620868.Spec : Prop :=
  ∀ n, (P10509841635279620868.a n : ℤ) = A382744 (n + 1)

end A382744

/-! ## A382744.P5589062014568351346

`lt[A059893(n+1), A307151(n+1)]+1`
-/

namespace A382744.P5589062014568351346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307151 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A382744.P5589062014568351346

namespace A382744

/-- `lt[A059893(n+1), A307151(n+1)]+1` -/
def P5589062014568351346.Spec : Prop :=
  ∀ n, (P5589062014568351346.a n : ℤ) = A382744 (n + 1)

end A382744

/-! ## A382744.P5898545529614768784

`A307151(record[A307151(n+1)])`
-/

namespace A382744.P5898545529614768784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307151 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A382744.P5898545529614768784

namespace A382744

/-- `A307151(record[A307151(n+1)])` -/
def P5898545529614768784.Spec : Prop :=
  ∀ n, P5898545529614768784.a n = A382744 (n + 1)

end A382744

/-! ## A382744.P15164921713617431560

`comp[lcm(5, val(n+1, 2))]`
-/

namespace A382744.P15164921713617431560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 5 (SequenceMachineLib.valuation (n + 1) 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A382744.P15164921713617431560

namespace A382744

/-- `comp[lcm(5, val(n+1, 2))]` -/
def P15164921713617431560.Spec : Prop :=
  ∀ n, (P15164921713617431560.a n : ℤ) = A382744 (n + 1)

end A382744

/-! ## A382744.P15712679190109976624

`lt[A079513(3*n+2), A069916(A283442(n))]`
-/

namespace A382744.P15712679190109976624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079513 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069916 (A283442 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382744.P15712679190109976624

namespace A382744

/-- `lt[A079513(3*n+2), A069916(A283442(n))]` -/
def P15712679190109976624.Spec : Prop :=
  ∀ n, (P15712679190109976624.a n : ℤ) = A382744 (n + 1)

end A382744

/-! ## A382744.P14804331049213720413

`lt[A040533(n), A257106(A257077(2*n+1))]`
-/

namespace A382744.P14804331049213720413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040533 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257106 (A257077 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382744.P14804331049213720413

namespace A382744

/-- `lt[A040533(n), A257106(A257077(2*n+1))]` -/
def P14804331049213720413.Spec : Prop :=
  ∀ n, (P14804331049213720413.a n : ℤ) = A382744 (n + 1)

end A382744

/-!
# A382745: If k appears, 7*k does not.

The programs for A382745, the canonical program `A382745.P15305106904039031028` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382745 has offset 1).

The definition of A382745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382745.P15305106904039031028

`record[A033999(val(n+1, 7))+n]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A382745

/-- `record[A033999(val(n+1, 7))+n]` -/
def P15305106904039031028.Spec : Prop :=
  ∀ n, P15305106904039031028.a n = A382745 (n + 1)

theorem P15305106904039031028.correct : P15305106904039031028.Spec := by
  intro n
  simp only [A382745, Nat.add_sub_cancel]

end A382745

/-! ## A382745.P7052244155196733821

`lt[A008683(A324786(n+1)), A265519(n)]`
-/

namespace A382745.P7052244155196733821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A324786 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265519 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382745.P7052244155196733821

namespace A382745

/-- `lt[A008683(A324786(n+1)), A265519(n)]` -/
def P7052244155196733821.Spec : Prop :=
  ∀ n, (P7052244155196733821.a n : ℤ) = A382745 (n + 1)

end A382745

/-! ## A382745.P13403885826912939050

`lt[A082784(n), A231363(A035316(2*n+1))]`
-/

namespace A382745.P13403885826912939050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082784 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (A035316 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382745.P13403885826912939050

namespace A382745

/-- `lt[A082784(n), A231363(A035316(2*n+1))]` -/
def P13403885826912939050.Spec : Prop :=
  ∀ n, (P13403885826912939050.a n : ℤ) = A382745 (n + 1)

end A382745

/-! ## A382745.P14003503411558932906

`lt[A109010(n), A001222(A016826(n))]`
-/

namespace A382745.P14003503411558932906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A016826 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382745.P14003503411558932906

namespace A382745

/-- `lt[A109010(n), A001222(A016826(n))]` -/
def P14003503411558932906.Spec : Prop :=
  ∀ n, (P14003503411558932906.a n : ℤ) = A382745 (n + 1)

end A382745

/-! ## A382745.P15447561097055360468

`lt[A010815(A375127(n)), A010876(n)]`
-/

namespace A382745.P15447561097055360468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A375127 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382745.P15447561097055360468

namespace A382745

/-- `lt[A010815(A375127(n)), A010876(n)]` -/
def P15447561097055360468.Spec : Prop :=
  ∀ n, (P15447561097055360468.a n : ℤ) = A382745 (n + 1)

end A382745

/-! ## A382745.P15931255002692818734

`lt[A131027(A333161(n)), A070413(n)]`
-/

namespace A382745.P15931255002692818734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131027 (A333161 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070413 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382745.P15931255002692818734

namespace A382745

/-- `lt[A131027(A333161(n)), A070413(n)]` -/
def P15931255002692818734.Spec : Prop :=
  ∀ n, (P15931255002692818734.a n : ℤ) = A382745 (n + 1)

end A382745

/-! ## A382745.P11539281680760803259

`lt[A344169(n+1), A250120(A106608(n))]`
-/

namespace A382745.P11539281680760803259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (A106608 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382745.P11539281680760803259

namespace A382745

/-- `lt[A344169(n+1), A250120(A106608(n))]` -/
def P11539281680760803259.Spec : Prop :=
  ∀ n, (P11539281680760803259.a n : ℤ) = A382745 (n + 1)

end A382745

/-! ## A382745.P10038839208482269610

`lt[A109010(n), A000120(n*A084662(n+3))]`
-/

namespace A382745.P10038839208482269610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((n : ℤ) * A084662 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382745.P10038839208482269610

namespace A382745

/-- `lt[A109010(n), A000120(n*A084662(n+3))]` -/
def P10038839208482269610.Spec : Prop :=
  ∀ n, (P10038839208482269610.a n : ℤ) = A382745 (n + 1)

end A382745

/-! ## A382745.P9931069313535843865

`lt[A109010(n), A000120(A318214(n+1))+1]`
-/

namespace A382745.P9931069313535843865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A318214 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382745.P9931069313535843865

namespace A382745

/-- `lt[A109010(n), A000120(A318214(n+1))+1]` -/
def P9931069313535843865.Spec : Prop :=
  ∀ n, (P9931069313535843865.a n : ℤ) = A382745 (n + 1)

end A382745

/-!
# A382746: If k appears, 8*k does not.

The programs for A382746, there is no canonical definition to state claims against.
-/

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

/-! ## A382746.P18065933814771721032

`lt[A023402(n+1), A279321(A061393(n))]`
-/

namespace A382746.P18065933814771721032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279321 (A061393 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382746.P18065933814771721032

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

/-! ## A382746.P12121420847514421347

`lt[A040037(n)-A359893(n+1), 3]`
-/

namespace A382746.P12121420847514421347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040037 n - A359893 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A382746.P12121420847514421347

/-! ## A382746.P12379235217903372594

`lt[A010194(n), A187788(A339496(n+1))]`
-/

namespace A382746.P12379235217903372594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010194 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187788 (A339496 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382746.P12379235217903372594

/-! ## A382746.P5509435336114444071

`lt[A010194(n), A339496(n+3)]`
-/

namespace A382746.P5509435336114444071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010194 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339496 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382746.P5509435336114444071

/-! ## A382746.P13729252821113013469

`lt[A040411(n), A000010(A156247(n+2))]`
-/

namespace A382746.P13729252821113013469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040411 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A156247 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382746.P13729252821113013469

/-!
# A382748: Primitive exponents for the greedy convolution of length 4.

The programs for A382748, there is no canonical definition to state claims against.
-/

/-! ## A382748.P4482446852890972898

`eq[1, A382749(n+1)]+1`
-/

namespace A382748.P4482446852890972898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382749 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A382748.P4482446852890972898

/-! ## A382748.P7372770720985166080

`A382747(3*n+n+1)`
-/

namespace A382748.P7372770720985166080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382747 (3 * n + (n + 1))

end

end A382748.P7372770720985166080

/-!
# A382749: Position in block for greedy partition of length 4.

The programs for A382749, there is no canonical definition to state claims against.
-/

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

/-! ## A382750.P16362044405049680582

`lt[A089868(A114099(n)), A054123(n)]`
-/

namespace A382750.P16362044405049680582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (A114099 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382750.P16362044405049680582

/-! ## A382750.P1650826838454664380

`lt[A114099(n), A107870(A122290(n))]`
-/

namespace A382750.P1650826838454664380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107870 (A122290 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382750.P1650826838454664380

/-! ## A382750.P13249514701022321878

`comp[A151949(2*n+3)]%A008996(n+4)`
-/

namespace A382750.P13249514701022321878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 (2 * n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A008996 (n + 4))

end

end A382750.P13249514701022321878

/-!
# A382751: Numbers k for which the 3-adic valuation A007949(k) == 0 (mod 3).

The programs for A382751, there is no canonical definition to state claims against.
-/

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

/-!
# A382755: Irregular triangle read by rows: Let k encode the edges of an n-vertex graph by taking edges (u,v), with u < v, in lexicographic order ((0,1), ..., (0,n-1), (1,2), ..., (1,n-1), ..., (n-1,n)) and adding each edge to the graph if the corresponding binary digit of k (starting with the least significant digit) is 1. T(n,k) is the smallest nonnegative integer that encodes the same unlabeled n-vertex graph as k, 0 <= k < n*(n-1)/2.

The programs for A382755, there is no canonical definition to state claims against.
-/

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

/-! ## A382759.P4081157358030722486

`A007814(A081091(n+1)*A366279(n))`
-/

namespace A382759.P4081157358030722486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A081091 (n + 1) * A366279 n).toNat

end

end A382759.P4081157358030722486

/-! ## A382759.P17864392040352437739

`A007814(A139645(n+1)*A366279(n))`
-/

namespace A382759.P17864392040352437739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A139645 (n + 1) * A366279 n).toNat

end

end A382759.P17864392040352437739

/-!
# A382760: Independence number of the graph encoded by A382754(n).

The programs for A382760, there is no canonical definition to state claims against.
-/

/-! ## A382760.P2314770181424194119

`A001221(A392195(n+1))`
-/

namespace A382760.P2314770181424194119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A392195 (n + 1)).toNat

end

end A382760.P2314770181424194119

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

/-! ## A382760.P5127564368879619510

`A385213(A324939(n))`
-/

namespace A382760.P5127564368879619510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385213 (A324939 n).toNat

end

end A382760.P5127564368879619510

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

/-! ## A382761.P9962775839926249199

`A382763(lt[A270339(n+1), A352314(n+1)])`
-/

namespace A382761.P9962775839926249199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382763 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A382761.P9962775839926249199

/-! ## A382761.P5835382550366552236

`A382763(A382762(n))%A132056(3*n+5)`
-/

namespace A382761.P5835382550366552236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382763 (A382762 n).toNat) (A132056 (3 * n + 5))

end

end A382761.P5835382550366552236

/-! ## A382761.P5905475056354889310

`record[A382763(A382758(n))]`
-/

namespace A382761.P5905475056354889310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382763 (A382758 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A382761.P5905475056354889310

/-! ## A382761.P16766638148926312372

`A382754(lt[A078840(n), A266148(n+3)])`
-/

namespace A382761.P16766638148926312372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078840 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266148 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382754 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A382761.P16766638148926312372

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

/-!
# A382765: Primes that can be expressed using exactly one of each of the prime digits 2, 3, 5, 7, using concatenation and the arithmetic operations +,-,*,/,^.

The programs for A382765, there is no canonical definition to state claims against.
-/

/-! ## A382765.P6676958917923008413

`eq[A151878(n), A304455(n+1)]+1`
-/

namespace A382765.P6676958917923008413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A382765.P6676958917923008413

/-! ## A382765.P12865261540171053451

`eq[A151878(n), A346700(n+1)]+1`
-/

namespace A382765.P12865261540171053451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346700 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A382765.P12865261540171053451

/-! ## A382765.P12437951833164300197

`eq[A003415(n), A050361(A072405(2*n+1))]`
-/

namespace A382765.P12437951833164300197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (A072405 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382765.P12437951833164300197

/-! ## A382765.P15855908059638600084

`lt[A030664(A004526(n)), A055671(n)]`
-/

namespace A382765.P15855908059638600084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030664 (A004526 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382765.P15855908059638600084

/-!
# A382766: Odd primes p such that p + 4, p + 6 and p + 8 are composite.

The programs for A382766, there is no canonical definition to state claims against.
-/

/-! ## A382766.P9221894360948763339

`A005408(eq[A005408(n), A020482(n+6)])`
-/

namespace A382766.P9221894360948763339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A382766.P9221894360948763339

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

/-! ## A382767.P5315438996691734021

`A123623(∏{p}[n+1, #])²`
-/

namespace A382767.P5315438996691734021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123623 (∏ p ∈ Nat.primeFactors (f1 n), p) ^ 2

end

end A382767.P5315438996691734021

/-! ## A382767.P10033690821168677693

`A053143(A382248(n+1))`
-/

namespace A382767.P10033690821168677693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (A382248 (n + 1)).toNat

end

end A382767.P10033690821168677693

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

/-! ## A382767.P6670004047409099975

`A381805(n+1)^A381798(A038026(n+1))`
-/

namespace A382767.P6670004047409099975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381805 (n + 1) : ℚ) ^ (A381798 (A038026 (n + 1)).toNat : ℤ)

end

end A382767.P6670004047409099975

/-!
# A382768: Number of k < n that are coprime to n and neither squarefree nor prime powers.

The programs for A382768, there is no canonical definition to state claims against.
-/

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

/-! ## A382768.P5437361146960780746

`A237127(∏{p}[n+1, #-1])%A029542(n+1)`
-/

namespace A382768.P5437361146960780746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237127 (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)).toNat) (A029542 (n + 1))

end

end A382768.P5437361146960780746

/-!
# A382771: Number of ways to permute the prime indices of n so that the run-lengths are all different.

The programs for A382771, there is no canonical definition to state claims against.
-/

/-! ## A382771.P10339523856466540726

`ceil(sqrt(sqrt(A336569(n+1))))`
-/

namespace A382771.P10339523856466540726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A336569 (n + 1) : ℝ))⌉

end

end A382771.P10339523856466540726

/-! ## A382771.P5118623803153372711

`A028930(A335447(n+1))`
-/

namespace A382771.P5118623803153372711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028930 (A335447 (n + 1)).toNat

end

end A382771.P5118623803153372711

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

/-! ## A382771.P9437071567250469852

`A007875(n+1)*A351564(n+1)`
-/

namespace A382771.P9437071567250469852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (n + 1) * A351564 (n + 1)

end

end A382771.P9437071567250469852

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

/-! ## A382773.P2687587519918199278

`A035194(A131514(n+1))^A039701(2*n+1)`
-/

namespace A382773.P2687587519918199278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035194 (A131514 (n + 1)).toNat : ℚ) ^ (A039701 (2 * n + 1) : ℤ)

end

end A382773.P2687587519918199278

/-!
# A382775: Least number appearing n times in A048767 (rank of Look-and-Say partition of prime indices).

The programs for A382775, there is no canonical definition to state claims against.
-/

/-! ## A382775.P15224286572581991508

`4*A280638(a(n-1)+4*n-2)` with `a(0)=6, a(1)=1`
-/

namespace A382775.P15224286572581991508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 1] fun n a =>
  4 * A280638 (a (n - 1) + (4 * n : ℤ) - 2).toNat

end

end A382775.P15224286572581991508

/-! ## A382775.P8871156746240047754

`A110760((n+1)*A192232(n+1)+1)`
-/

namespace A382775.P8871156746240047754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110760 ((n + 1 : ℤ) * A192232 (n + 1) + 1).toNat

end

end A382775.P8871156746240047754

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

/-! ## A382780.P6685498791436593373

`A140635(A000142(n)*A025049(n))`
-/

namespace A382780.P6685498791436593373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140635 (A000142 n * A025049 n).toNat

end

end A382780.P6685498791436593373

/-! ## A382780.P8190852261693969545

`A140635(A000142(n)*A055922(n))`
-/

namespace A382780.P8190852261693969545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140635 (A000142 n * A055922 n).toNat

end

end A382780.P8190852261693969545

/-!
# A382781: Sum of GCD of cycle lengths over all permutations of [n] with distinct cycle lengths.

The programs for A382781, there is no canonical definition to state claims against.
-/

/-! ## A382781.P11602430917260758131

`A037203(A048251(n)+n)`
-/

namespace A382781.P11602430917260758131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037203 (A048251 n + (n : ℤ)).toNat

end

end A382781.P11602430917260758131

/-! ## A382781.P43002385219893063

`n*A002024(A006024(n))`
-/

namespace A382781.P43002385219893063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002024 (A006024 n).toNat

end

end A382781.P43002385219893063

/-!
# A382783: Denominators arising in the expansion of Sum_{k>=1} (1/(4k^2-1)^n) in even powers of Pi.

The programs for A382783, there is no canonical definition to state claims against.
-/

/-! ## A382783.P50927847401704086

`A061142(n+1)*A339905(A000142(n+2))`
-/

namespace A382783.P50927847401704086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A339905 (A000142 (n + 2)).toNat

end

end A382783.P50927847401704086

/-! ## A382783.P3040374219190688967

`A278222(A372683(3*n+1)-A101136(n+1))`
-/

namespace A382783.P3040374219190688967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A372683 (3 * n + 1) - A101136 (n + 1)).toNat

end

end A382783.P3040374219190688967

/-!
# A382785: a(n) is the least multiple of the n-th primorial such that both a(n)-1 and a(n)+1 are prime and the prime factors of a(n) do not exceed prime(n).

The programs for A382785, there is no canonical definition to state claims against.
-/

/-! ## A382785.P14695057965245745320

`A002110(n+1)*A384545(n+1)`
-/

namespace A382785.P14695057965245745320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) * A384545 (n + 1)

end

end A382785.P14695057965245745320

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

/-! ## A382785.P3123278989720180512

`A076826(A293657(n+1))+A060255(n+1)`
-/

namespace A382785.P3123278989720180512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 (A293657 (n + 1)).toNat + A060255 (n + 1)

end

end A382785.P3123278989720180512

/-!
# A382787: The product of exponents in the prime factorization of the numbers whose prime factorization contains exponents that are either 1 or even.

The programs for A382787, the canonical program `A382787.P14011713050077807300` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382787 has offset 1).

The definition of A382787 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8816 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

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

/-! ## A382787.P14011713050077807300

`A005361(record[A056192(n+1)])`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A382787

/-- `A005361(record[A056192(n+1)])` -/
def P14011713050077807300.Spec : Prop :=
  ∀ n, P14011713050077807300.a n = A382787 (n + 1)

theorem P14011713050077807300.correct : P14011713050077807300.Spec := by
  intro n
  simp only [A382787, Nat.add_sub_cancel]

end A382787

/-!
# A382788: The sum of divisors of n that are numbers whose number of divisors is a power of 2.

The programs for A382788, the canonical program `A382788.P17277517064423675341` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382788 has offset 1).

The definition of A382788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382788.P17277517064423675341

`∑{d}[n+1, #*A359473(#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A382788

/-- `∑{d}[n+1, #*A359473(#)]` -/
def P17277517064423675341.Spec : Prop :=
  ∀ n, P17277517064423675341.a n = A382788 (n + 1)

theorem P17277517064423675341.correct : P17277517064423675341.Spec := by
  intro n
  simp only [A382788, Nat.add_sub_cancel]

end A382788

/-! ## A382788.P16926856793143741009

`A033634(n+1)%A033634(A360137(n+2))`
-/

namespace A382788.P16926856793143741009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033634 (n + 1)) (A033634 (A360137 (n + 2)).toNat)

end

end A382788.P16926856793143741009

namespace A382788

/-- `A033634(n+1)%A033634(A360137(n+2))` -/
def P16926856793143741009.Spec : Prop :=
  ∀ n, P16926856793143741009.a n = A382788 (n + 1)

end A382788

/-!
# A382789: The number of prime factors of Euler phi of the n-th primorial number, counted with multiplicity.

The programs for A382789, the canonical program `A382789.P16110672853359686492` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382789 has offset 0).

The definition of A382789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382789.P16110672853359686492

`∑[∑{e}[1-A000040(A028310(n)), #]]`

The canonical program, it is in `Seq.B001.C010`.
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

/-! ## A382790.P17672163800403217897

`record[A001694(A059268(n))]`
-/

namespace A382790.P17672163800403217897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A382790.P17672163800403217897

/-!
# A382791: 

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

/-!
# A382797: Odd Ulam numbers.

The programs for A382797, there is no canonical definition to state claims against.
-/

/-! ## A382797.P15049200200194832643

`∩[2*n+1, A002858(n+1)]`
-/

namespace A382797.P15049200200194832643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382797.P15049200200194832643

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

/-! ## A382799.P15093637994637898380

`A119026(A382736(n))*A194285(A001405(n))`
-/

namespace A382799.P15093637994637898380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119026 (A382736 n).toNat * A194285 (A001405 n).toNat

end

end A382799.P15093637994637898380

