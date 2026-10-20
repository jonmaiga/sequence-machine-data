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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A239000: Number of partitions of n using Fibonacci numbers > 2.

The programs for A239000, there is no canonical definition to state claims against.
-/

/-! ## A239000.P4461904475070775170

`A102683(A022087(n))+A025836(n)`
-/

namespace A239000.P4461904475070775170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A022087 n).toNat + A025836 n

end

end A239000.P4461904475070775170

/-! ## A239000.P4905181829512817924

`A029364(A086707(A008706(n)))`
-/

namespace A239000.P4905181829512817924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029364 (A086707 (A008706 n).toNat).toNat

end

end A239000.P4905181829512817924

/-! ## A239000.P7205960052037969000

`A025836(n)+A010894(A165355(n))`
-/

namespace A239000.P7205960052037969000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025836 n + A010894 ((A165355 n).toNat + 21)

end

end A239000.P7205960052037969000

/-! ## A239000.P16241426782996662276

`A005811(A281422(n)^A193739(n))`
-/

namespace A239000.P16241426782996662276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (SequenceMachineLib.roundAway ((A281422 n : ℚ) ^ (A193739 n : ℤ))).toNat

end

end A239000.P16241426782996662276

/-! ## A239000.P17782655219388447047

`A031235(A052920(n)^A007318(n+2))`
-/

namespace A239000.P17782655219388447047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 (SequenceMachineLib.roundAway ((A052920 n : ℚ) ^ (A007318 (n + 2) : ℤ))).toNat

end

end A239000.P17782655219388447047

/-!
# A239001: Irregular triangular array read by rows: row n gives a list of the partitions of n into Fibonacci numbers.

The programs for A239001, there is no canonical definition to state claims against.
-/

/-! ## A239001.P16462298161468846434

`A080577(lt[A330607(n), A173676(2*n)²])`
-/

namespace A239001.P16462298161468846434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330607 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173676 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080577 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A239001.P16462298161468846434

/-! ## A239001.P9811327818204276414

`A036037(∑[A294335(A240201(n))])`
-/

namespace A239001.P9811327818204276414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294335 (A240201 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036037 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A239001.P9811327818204276414

/-! ## A239001.P4824155765929474832

`A330370(∑[A083888(A075164(n+1))])`
-/

namespace A239001.P4824155765929474832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083888 (A075164 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330370 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A239001.P4824155765929474832

/-! ## A239001.P13682723028970794198

`A181317(∑[A123264(A252503(n+1))])`
-/

namespace A239001.P13682723028970794198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123264 (A252503 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181317 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A239001.P13682723028970794198

/-! ## A239001.P10228454642533697245

`A181317(A167520(n+1)%A046418(n+1))`
-/

namespace A239001.P10228454642533697245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181317 (Int.tmod (A167520 (n + 1)) (A046418 (n + 1))).toNat

end

end A239001.P10228454642533697245

/-!
# A239002: Number of partitions of n into distinct parts all of which are Fibonacci numbers greater than 1.

The programs for A239002, there is no canonical definition to state claims against.
-/

/-! ## A239002.P7544182075611660658

`A000119(n)-a(n-1)` with `a(0)=1`
-/

namespace A239002.P7544182075611660658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000119 n - a (n - 1)

end

end A239002.P7544182075611660658

/-! ## A239002.P4150553670979432075

`A303903(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A239002.P4150553670979432075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A303903 n + a (n - 2)

end

end A239002.P4150553670979432075

/-! ## A239002.P10565116206256964345

`A103344(A195173(n))`
-/

namespace A239002.P10565116206256964345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103344 (A195173 n).toNat

end

end A239002.P10565116206256964345

/-! ## A239002.P16569777198489908235

`A103344(A184748(n+1))`
-/

namespace A239002.P16569777198489908235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103344 (A184748 (n + 1)).toNat

end

end A239002.P16569777198489908235

/-! ## A239002.P3773306623058508690

`A093998(n)+A093997(n)-a(n-1)` with `a(0)=1`
-/

namespace A239002.P3773306623058508690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A093998 n + A093997 n - a (n - 1)

end

end A239002.P3773306623058508690

/-! ## A239002.P16707511204645409675

`A350240(n+2)-A000119(n+2)`
-/

namespace A239002.P16707511204645409675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350240 (n + 2) - A000119 (n + 2)

end

end A239002.P16707511204645409675

/-! ## A239002.P4734973515118249179

`A294203(A063732(n+1))`
-/

namespace A239002.P4734973515118249179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294203 (A063732 (n + 1)).toNat

end

end A239002.P4734973515118249179

/-! ## A239002.P14709561339571982044

`A294203(comp[A287775(2*n+1)])`
-/

namespace A239002.P14709561339571982044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287775 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A239002.P14709561339571982044

/-! ## A239002.P10194118907409401059

`A294203(A054770(n+1)-(A050140(n+1)+1))`
-/

namespace A239002.P10194118907409401059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294203 (A054770 (n + 1) - (A050140 (n + 1) + 1)).toNat

end

end A239002.P10194118907409401059

/-! ## A239002.P4541112059507366141

`A239003(A007067(n))`
-/

namespace A239002.P4541112059507366141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239003 (A007067 n).toNat

end

end A239002.P4541112059507366141

/-! ## A239002.P6815027174520194793

`A239003(A058065(n))`
-/

namespace A239002.P6815027174520194793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239003 (A058065 n).toNat

end

end A239002.P6815027174520194793

/-! ## A239002.P8139950583538281234

`A239003(A382116(n))`
-/

namespace A239002.P8139950583538281234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239003 (A382116 n).toNat

end

end A239002.P8139950583538281234

/-! ## A239002.P5912197909311738255

`A239003(A022342(n+1))`
-/

namespace A239002.P5912197909311738255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239003 (A022342 (n + 1)).toNat

end

end A239002.P5912197909311738255

/-! ## A239002.P2761500485019581349

`A239003(A005206(n)+n)`
-/

namespace A239002.P2761500485019581349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239003 (A005206 n + (n : ℤ)).toNat

end

end A239002.P2761500485019581349

/-! ## A239002.P14604116348510989584

`A239003(A000201(n+1)-1)`
-/

namespace A239002.P14604116348510989584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239003 (A000201 (n + 1) - 1).toNat

end

end A239002.P14604116348510989584

/-! ## A239002.P6154634317269155928

`A239003(A003622(n+1)-(n+1))`
-/

namespace A239002.P6154634317269155928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239003 (A003622 (n + 1) - (n + 1 : ℤ)).toNat

end

end A239002.P6154634317269155928

/-! ## A239002.P8178692576470744964

`A239003(A001950(n+1)-(n+2))`
-/

namespace A239002.P8178692576470744964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239003 (A001950 (n + 1) - (n + 2 : ℤ)).toNat

end

end A239002.P8178692576470744964

/-! ## A239002.P14816812898818864569

`A000119(n)+A350240(n)-A000121(n)`
-/

namespace A239002.P14816812898818864569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 n + (A350240 n - A000121 n)

end

end A239002.P14816812898818864569

/-! ## A239002.P5747520297742978075

`A239003(eq[0, A003849(n)])`
-/

namespace A239002.P5747520297742978075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239003 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239002.P5747520297742978075

/-! ## A239002.P8572315873784237992

`A239003(eq[0, A239003(n+1)])`
-/

namespace A239002.P8572315873784237992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239003 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239002.P8572315873784237992

/-!
# A239003: Number of partitions of n into distinct Fibonacci numbers that are all greater than 2.

The programs for A239003, there is no canonical definition to state claims against.
-/

/-! ## A239003.P10084982469157437973

`A239002(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A239003.P10084982469157437973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A239002 n - a (n - 2)

end

end A239003.P10084982469157437973

/-! ## A239003.P5956859646424191553

`A303903(n)*A380151(n+1)`
-/

namespace A239003.P5956859646424191553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303903 n * A380151 (n + 1)

end

end A239003.P5956859646424191553

/-! ## A239003.P13321218599993441666

`A294203(A287665(n+1)-(2*n+1))`
-/

namespace A239003.P13321218599993441666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294203 (A287665 (n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A239003.P13321218599993441666

/-! ## A239003.P3261477090487231111

`A005614(n)*A239002(ceil((n+1)/ϕ-and(1, 2*n+1)))`
-/

namespace A239003.P3261477090487231111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 n * A239002 ⌈(n + 1 : ℝ) / Real.goldenRatio - (Nat.land 1 (2 * n + 1) : ℝ)⌉.toNat

end

end A239003.P3261477090487231111

/-! ## A239003.P11117600764538640412

`A239002(A005206(n))%(A239002(n)+1)`
-/

namespace A239003.P11117600764538640412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239002 (A005206 n).toNat) (A239002 n + 1)

end

end A239003.P11117600764538640412

/-! ## A239003.P3576808039206608546

`A000119(∑[A003849(n)])*A003849(n+1)`
-/

namespace A239003.P3576808039206608546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A003849 (n + 1)

end

end A239003.P3576808039206608546

/-! ## A239003.P15162795903630930511

`A294203(2*A050140(n+1)-A054770(n+1))`
-/

namespace A239003.P15162795903630930511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294203 (2 * A050140 (n + 1) - A054770 (n + 1)).toNat

end

end A239003.P15162795903630930511

/-! ## A239003.P1082181160166321948

`A294203(A050140(n+1)+A050140(n+1)-A054770(n+1))`
-/

namespace A239003.P1082181160166321948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294203 (A050140 (n + 1) + (A050140 (n + 1) - A054770 (n + 1))).toNat

end

end A239003.P1082181160166321948

/-! ## A239003.P6306316640116491088

`A239002(A002251(n)+2*A114986(n))`
-/

namespace A239003.P6306316640116491088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239002 (A002251 n + 2 * A114986 n).toNat

end

end A239003.P6306316640116491088

/-! ## A239003.P7692153184814381168

`A239002(A114986(n)+A114986(n)+A002251(n))`
-/

namespace A239003.P7692153184814381168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239002 (A114986 n + (A114986 n + A002251 n)).toNat

end

end A239003.P7692153184814381168

/-! ## A239003.P3541619316653429498

`A239002(A004956(n)+2)`
-/

namespace A239003.P3541619316653429498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239002 (A004956 n + 2).toNat

end

end A239003.P3541619316653429498

/-! ## A239003.P6539882406507446550

`A239002(A026351(n)+2)`
-/

namespace A239003.P6539882406507446550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239002 (A026351 n + 2).toNat

end

end A239003.P6539882406507446550

/-! ## A239003.P11365925704333554039

`A239002(A247425(n+2))`
-/

namespace A239003.P11365925704333554039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239002 (A247425 (n + 2)).toNat

end

end A239003.P11365925704333554039

/-! ## A239003.P1776759197760070585

`A239002(A005206(n+4)+n)`
-/

namespace A239003.P1776759197760070585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239002 (A005206 (n + 4) + (n : ℤ)).toNat

end

end A239003.P1776759197760070585

/-! ## A239003.P5885570788044717672

`A294203(A287775(2*(n+1))-comp[A287775(2*(n+1))])`
-/

namespace A239003.P5885570788044717672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287775 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294203 (A287775 (2 * (n + 1)) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)).toNat

end

end A239003.P5885570788044717672

/-!
# A239004: Number of partitions of n having twice as many even parts as odd.

The programs for A239004, there is no canonical definition to state claims against.
-/

/-! ## A239004.P14054522520004652864

`A024375(A285818(n))`
-/

namespace A239004.P14054522520004652864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024375 (A285818 n).toNat

end

end A239004.P14054522520004652864

/-! ## A239004.P5908001649043117997

`A024375(A287759(n))`
-/

namespace A239004.P5908001649043117997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024375 (A287759 n).toNat

end

end A239004.P5908001649043117997

/-! ## A239004.P7742003895949538046

`A255270(A279599(n))-A255270(n)`
-/

namespace A239004.P7742003895949538046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (A279599 n).toNat - A255270 n

end

end A239004.P7742003895949538046

/-! ## A239004.P6406422431027570386

`and(A007093(A006820(n)), A210959(n+1))`
-/

namespace A239004.P6406422431027570386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007093 (A006820 n).toNat) (A210959 (n + 1))

end

end A239004.P6406422431027570386

/-! ## A239004.P14380655661462093866

`A239061(3*n+2)%A273523(A343379(n))`
-/

namespace A239004.P14380655661462093866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239061 (3 * n + 2)) (A273523 (A343379 n).toNat)

end

end A239004.P14380655661462093866

/-!
# A239005: Signed version of the Seidel triangle for the Euler numbers, read by rows.

The programs for A239005, there is no canonical definition to state claims against.
-/

/-! ## A239005.P15121222622135727131

`Δ[A010751(n)]*A236935(n)`
-/

namespace A239005.P15121222622135727131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A236935 n

end

end A239005.P15121222622135727131

/-! ## A239005.P18241049122828071878

`A008280(n)*A057077(A003056(n))`
-/

namespace A239005.P18241049122828071878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008280 n * A057077 (A003056 n).toNat

end

end A239005.P18241049122828071878

/-! ## A239005.P11305091592062445938

`A008280(n)*A117440(A057944(n))`
-/

namespace A239005.P11305091592062445938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008280 n * A117440 (A057944 n).toNat

end

end A239005.P11305091592062445938

/-! ## A239005.P16049120896266468618

`A008280(n)*A057077(A163352(n))`
-/

namespace A239005.P16049120896266468618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008280 n * A057077 (A163352 n).toNat

end

end A239005.P16049120896266468618

/-! ## A239005.P1469173814658613204

`A015343(A003056(n))*A236935(n)`
-/

namespace A239005.P1469173814658613204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015343 (A003056 n).toNat * A236935 n

end

end A239005.P1469173814658613204

/-! ## A239005.P14488264086820988555

`A066170(A057944(n))*A236935(n)`
-/

namespace A239005.P14488264086820988555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066170 (A057944 n).toNat * A236935 n

end

end A239005.P14488264086820988555

/-! ## A239005.P1352922929841929521

`A033999(abs(A114327(n)))*A236935(n)`
-/

namespace A239005.P1352922929841929521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 |A114327 n|.toNat * A236935 n

end

end A239005.P1352922929841929521

/-! ## A239005.P2479853118184892620

`A033999(A114327(n)²)*A236935(n)`
-/

namespace A239005.P2479853118184892620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A114327 n ^ 2).toNat * A236935 n

end

end A239005.P2479853118184892620

/-! ## A239005.P12252996219740145375

`A087960(A114327(n)²)*A236935(n)`
-/

namespace A239005.P12252996219740145375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A114327 n ^ 2).toNat * A236935 n

end

end A239005.P12252996219740145375

/-! ## A239005.P13273016148105853188

`A015343(A003057(n+2))*A236935(n)`
-/

namespace A239005.P13273016148105853188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015343 (A003057 (n + 2)).toNat * A236935 n

end

end A239005.P13273016148105853188

/-!
# A239009: Exponents m such that the decimal expansion of 4^m exhibits its first zero from the right later than any previous exponent.

The programs for A239009, there is no canonical definition to state claims against.
-/

/-! ## A239009.P4826119872066782560

`A051204(A076212(n+1)%(A048674(n+4)+1))`
-/

namespace A239009.P4826119872066782560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051204 (Int.tmod (A076212 (n + 1)) (A048674 (n + 4) + 1)).toNat

end

end A239009.P4826119872066782560

/-!
# A239010: Exponents m such that the decimal expansion of 5^m exhibits its first zero from the right later than any previous exponent.

The programs for A239010, there is no canonical definition to state claims against.
-/

/-! ## A239010.P13876302746109683116

`record[A085253(n+1)-A195848(n)]`
-/

namespace A239010.P13876302746109683116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085253 (n + 1) - A195848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239010.P13876302746109683116

/-!
# A239012: Exponents m such that the decimal expansion of 7^m exhibits its first zero from the right later than any previous exponent.

The programs for A239012, there is no canonical definition to state claims against.
-/

/-! ## A239012.P6583180002336005454

`A003986(A001868(n)-A000213(n))`
-/

namespace A239012.P6583180002336005454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (A001868 n - A000213 n).toNat

end

end A239012.P6583180002336005454

/-!
# A239013: Exponents m such that the decimal expansion of 8^m exhibits its first zero from the right later than any previous exponent.

The programs for A239013, there is no canonical definition to state claims against.
-/

/-! ## A239013.P12361488780968352382

`eq[char[A112115(n+1)], A027870(3*n)]`
-/

namespace A239013.P12361488780968352382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112115 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027870 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A239013.P12361488780968352382

/-! ## A239013.P7856640665663391705

`A030704(n+2)%(3^n)`
-/

namespace A239013.P7856640665663391705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030704 (n + 2)) (3 ^ n : ℤ)

end

end A239013.P7856640665663391705

/-! ## A239013.P6810343735522684005

`record[xor(-char[1], A030704(n+1))]`
-/

namespace A239013.P6810343735522684005
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) (A030704 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239013.P6810343735522684005

/-! ## A239013.P10068154257193041690

`A030704(ceil(abs(sin(n)))+n+1)`
-/

namespace A239013.P10068154257193041690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030704 (⌈|Real.sin (n : ℝ)|⌉ + (n + 1 : ℤ)).toNat

end

end A239013.P10068154257193041690

/-! ## A239013.P14699634382408688472

`A030704(comp[5^n-∑{d}[n+1, #]])`
-/

namespace A239013.P14699634382408688472
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030704 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A239013.P14699634382408688472

/-!
# A239015: Exponents m such that the decimal expansion of 11^m exhibits its first zero from the right later than any previous exponent.

The programs for A239015, there is no canonical definition to state claims against.
-/

/-! ## A239015.P15039217995457758460

`A030706(n)-A281462(n+1)`
-/

namespace A239015.P15039217995457758460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030706 (n + 1) - A281462 (n + 1)

end

end A239015.P15039217995457758460

/-! ## A239015.P997447827770767913

`lt[A002865(n), A331223(n+1)]`
-/

namespace A239015.P997447827770767913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239015.P997447827770767913

/-! ## A239015.P11749133964633415350

`lt[A194805(n), A331222(n+1)]`
-/

namespace A239015.P11749133964633415350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194805 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239015.P11749133964633415350

/-! ## A239015.P16773253768458586176

`lt[A001156(n)², A331223(n+1)]`
-/

namespace A239015.P16773253768458586176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239015.P16773253768458586176

/-! ## A239015.P3080380379791924406

`lt[A034887(n), log2(A331223(n+1))]`
-/

namespace A239015.P3080380379791924406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A331223 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A239015.P3080380379791924406

/-!
# A239016: Numbers not larger than any rotation of their digits.

The programs for A239016, there is no canonical definition to state claims against.
-/

/-! ## A239016.P6854710515837839964

`lt[abs(A097601(n)), n+1]`
-/

namespace A239016.P6854710515837839964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097601 n|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A239016.P6854710515837839964

/-! ## A239016.P13693558828049971568

`lt[A193581(n), A136701(n)]`
-/

namespace A239016.P13693558828049971568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136701 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239016.P13693558828049971568

/-! ## A239016.P15177264449024826889

`lt[A193581(n), A226378(n)]`
-/

namespace A239016.P15177264449024826889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239016.P15177264449024826889

/-! ## A239016.P14501171732942575245

`lt[A097601(n)², A045918(n)]`
-/

namespace A239016.P14501171732942575245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097601 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239016.P14501171732942575245

/-! ## A239016.P1324158843118375145

`lt[A097601(n)², A047842(n)]`
-/

namespace A239016.P1324158843118375145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097601 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239016.P1324158843118375145

/-! ## A239016.P1977016055828999238

`lt[A097601(n)², A326851(n)]`
-/

namespace A239016.P1977016055828999238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097601 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326851 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239016.P1977016055828999238

/-! ## A239016.P7403363069637782326

`lt[A193581(n)², A366804(n)]`
-/

namespace A239016.P7403363069637782326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366804 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239016.P7403363069637782326

/-! ## A239016.P5300538629058205151

`lt[A193581(n), A251683(n+1)]`
-/

namespace A239016.P5300538629058205151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251683 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239016.P5300538629058205151

/-! ## A239016.P1871391286713493264

`lt[A193581(n)-A061358(n), 2]`
-/

namespace A239016.P1871391286713493264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 n - A061358 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A239016.P1871391286713493264

/-! ## A239016.P13394640721249625208

`lt[A097601(n)², A024916(n+1)]`
-/

namespace A239016.P13394640721249625208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097601 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239016.P13394640721249625208

/-!
# A239017: List of primitive words on {1,2,3}.

The programs for A239017, there is no canonical definition to state claims against.
-/

/-! ## A239017.P12765976685258640883

`A007932(A101886(n+1)%A324947(n+4))`
-/

namespace A239017.P12765976685258640883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (Int.tmod (A101886 (n + 1)) (A324947 (n + 4))).toNat

end

end A239017.P12765976685258640883

/-! ## A239017.P16271023135588686876

`eq[A064770(n), A351653(n)]`
-/

namespace A239017.P16271023135588686876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A239017.P16271023135588686876

/-! ## A239017.P2062133199156351122

`eq[A351870(n), A397694(n)]`
-/

namespace A239017.P2062133199156351122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397694 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A239017.P2062133199156351122

/-! ## A239017.P16680246343266085085

`record[A137564(A239018(n+1))]`
-/

namespace A239017.P16680246343266085085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A239018 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239017.P16680246343266085085

/-!
# A239018: Non-primitive words on {1,2,3}.

The programs for A239018, the canonical program `A239018.P12242242400328988881` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239018 has offset 1).

The definition of A239018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239018.P12242242400328988881

`∩[A007932(n+1), A239019(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A239018

/-- `∩[A007932(n+1), A239019(n+1)]` -/
def P12242242400328988881.Spec : Prop :=
  ∀ n, (P12242242400328988881.a n : ℤ) = A239018 (n + 1)

theorem P12242242400328988881.correct : P12242242400328988881.Spec := by
  intro n
  simp only [A239018, Nat.add_sub_cancel]

end A239018

/-! ## A239018.P735656563086303523

`∩[A007090(A023705(n+1)), A239019(n+1)]`
-/

namespace A239018.P735656563086303523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A023705 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239018.P735656563086303523

namespace A239018

/-- `∩[A007090(A023705(n+1)), A239019(n+1)]` -/
def P735656563086303523.Spec : Prop :=
  ∀ n, (P735656563086303523.a n : ℤ) = A239018 (n + 1)

end A239018

/-! ## A239018.P17417819768238670146

`A007090(∩[A023705(n+1), A321513(n+1)])`
-/

namespace A239018.P17417819768238670146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321513 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A239018.P17417819768238670146

namespace A239018

/-- `A007090(∩[A023705(n+1), A321513(n+1)])` -/
def P17417819768238670146.Spec : Prop :=
  ∀ n, P17417819768238670146.a n = A239018 (n + 1)

end A239018

/-!
# A239019: Numbers which are not primitive words over the alphabet {0,...,9} (when written in base 10).

The programs for A239019, the canonical program `A239019.P9482424271055956090` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239019 has offset 1).

The definition of A239019 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239019.P9482424271055956090

`A028310(∪[A020338(n+1), A074842(n+1)])`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A239019

/-- `A028310(∪[A020338(n+1), A074842(n+1)])` -/
def P9482424271055956090.Spec : Prop :=
  ∀ n, P9482424271055956090.a n = A239019 (n + 1)

theorem P9482424271055956090.correct : P9482424271055956090.Spec := by
  intro n
  simp only [A239019, Nat.add_sub_cancel]

end A239019

/-!
# A239023: Number of n X n 0..2 arrays with no element equal to the sum of elements to its left or one plus the sum of the elements above it, modulo 3.

The programs for A239023, there is no canonical definition to state claims against.
-/

/-! ## A239023.P10354334764742524572

`A239030((n+1)²+n²)`
-/

namespace A239023.P10354334764742524572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 ((n + 1) ^ 2 + n ^ 2)

end

end A239023.P10354334764742524572

/-! ## A239023.P15825657451504938068

`record[gcd(A114327(n), A239030(n+1))]`
-/

namespace A239023.P15825657451504938068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A239030 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239023.P15825657451504938068

/-! ## A239023.P2232846302474017964

`A239030(A001844(n))+A185037(n)`
-/

namespace A239023.P2232846302474017964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (A001844 n).toNat + A185037 n

end

end A239023.P2232846302474017964

/-! ## A239023.P15580903337324162191

`A239030(A001844(n))+A008683(4*(n+1))`
-/

namespace A239023.P15580903337324162191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (A001844 n).toNat + A008683 (4 * (n + 1))

end

end A239023.P15580903337324162191

/-! ## A239023.P8624709073092277304

`A000005(gcd(n, n+1))*A239030(A001844(n))`
-/

namespace A239023.P8624709073092277304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd n (n + 1)) * A239030 (A001844 n).toNat

end

end A239023.P8624709073092277304

/-!
# A239024: Number of n X 2 0..2 arrays with no element equal to the sum of elements to its left or one plus the sum of elements above it, modulo 3.

The programs for A239024, the canonical program `A239024.P1845100379353116248` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239024 has offset 1).

The definition of A239024 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239024.P1845100379353116248

`ogf((1+3x-x^2-4x^3)/(1-5x^2+4x^4))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A239024

/-- `ogf((1+3x-x^2-4x^3)/(1-5x^2+4x^4))` -/
def P1845100379353116248.Spec : Prop :=
  ∀ n, P1845100379353116248.a n = A239024 (n + 1)

theorem P1845100379353116248.correct : P1845100379353116248.Spec := by
  intro n
  simp only [A239024, Nat.add_sub_cancel]

end A239024

/-! ## A239024.P11312179453798169338

`4*a(n-2)-n%2` with `a(0)=1, a(1)=3`
-/

namespace A239024.P11312179453798169338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 * a (n - 2) - ((n % 2 : ℕ) : ℤ)

end

end A239024.P11312179453798169338

namespace A239024

/-- `4*a(n-2)-n%2` -/
def P11312179453798169338.Spec : Prop :=
  ∀ n, P11312179453798169338.a n = A239024 (n + 1)

end A239024

/-! ## A239024.P14984378151570477638

`4*a(n-2)-and(1, n)` with `a(0)=1, a(1)=3`
-/

namespace A239024.P14984378151570477638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 * a (n - 2) - (Nat.land 1 n : ℤ)

end

end A239024.P14984378151570477638

namespace A239024

/-- `4*a(n-2)-and(1, n)` -/
def P14984378151570477638.Spec : Prop :=
  ∀ n, P14984378151570477638.a n = A239024 (n + 1)

end A239024

/-! ## A239024.P11912907284620789159

`gcd(2, n)+4*a(n-2)-2` with `a(0)=1, a(1)=3`
-/

namespace A239024.P11912907284620789159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (Nat.gcd 2 n : ℤ) + (4 * a (n - 2) - 2)

end

end A239024.P11912907284620789159

namespace A239024

/-- `gcd(2, n)+4*a(n-2)-2` -/
def P11912907284620789159.Spec : Prop :=
  ∀ n, P11912907284620789159.a n = A239024 (n + 1)

end A239024

/-! ## A239024.P1115568337757958989

`A134683(n)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A239024.P1115568337757958989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A134683 n + a (n - 2)

end

end A239024.P1115568337757958989

namespace A239024

/-- `A134683(n)+a(n-2)` -/
def P1115568337757958989.Spec : Prop :=
  ∀ n, P1115568337757958989.a n = A239024 (n + 1)

end A239024

/-! ## A239024.P10982138227066691445

`A135318(A014601(n)+1)`
-/

namespace A239024.P10982138227066691445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (A014601 n + 1).toNat

end

end A239024.P10982138227066691445

namespace A239024

/-- `A135318(A014601(n)+1)` -/
def P10982138227066691445.Spec : Prop :=
  ∀ n, P10982138227066691445.a n = A239024 (n + 1)

end A239024

/-! ## A239024.P367530683251200971

`A135318(A042948(n+1))`
-/

namespace A239024.P367530683251200971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (A042948 (n + 1)).toNat

end

end A239024.P367530683251200971

namespace A239024

/-- `A135318(A042948(n+1))` -/
def P367530683251200971.Spec : Prop :=
  ∀ n, P367530683251200971.a n = A239024 (n + 1)

end A239024

/-! ## A239024.P13187814235526782787

`A135318(A338062(n+1))`
-/

namespace A239024.P13187814235526782787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (A338062 (n + 1)).toNat

end

end A239024.P13187814235526782787

namespace A239024

/-- `A135318(A338062(n+1))` -/
def P13187814235526782787.Spec : Prop :=
  ∀ n, P13187814235526782787.a n = A239024 (n + 1)

end A239024

/-! ## A239024.P3754427743578646840

`A375476(A047238(n+2))`
-/

namespace A239024.P3754427743578646840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375476 (A047238 (n + 2)).toNat

end

end A239024.P3754427743578646840

namespace A239024

/-- `A375476(A047238(n+2))` -/
def P3754427743578646840.Spec : Prop :=
  ∀ n, P3754427743578646840.a n = A239024 (n + 1)

end A239024

/-! ## A239024.P5427524953364492539

`A128209(n)+A084184(n)`
-/

namespace A239024.P5427524953364492539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128209 n + A084184 n

end

end A239024.P5427524953364492539

namespace A239024

/-- `A128209(n)+A084184(n)` -/
def P5427524953364492539.Spec : Prop :=
  ∀ n, P5427524953364492539.a n = A239024 (n + 1)

end A239024

/-! ## A239024.P14655287025910155951

`A155944(n)+A131588(n)`
-/

namespace A239024.P14655287025910155951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155944 n + A131588 n

end

end A239024.P14655287025910155951

namespace A239024

/-- `A155944(n)+A131588(n)` -/
def P14655287025910155951.Spec : Prop :=
  ∀ n, P14655287025910155951.a n = A239024 (n + 1)

end A239024

/-! ## A239024.P1756447287848123200

`A135318(A042963(n+2)-1)`
-/

namespace A239024.P1756447287848123200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (A042963 (n + 2) - 1).toNat

end

end A239024.P1756447287848123200

namespace A239024

/-- `A135318(A042963(n+2)-1)` -/
def P1756447287848123200.Spec : Prop :=
  ∀ n, P1756447287848123200.a n = A239024 (n + 1)

end A239024

/-! ## A239024.P6107674022573120692

`A001045(n)+A084184(n)+1`
-/

namespace A239024.P6107674022573120692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + (A084184 n + 1)

end

end A239024.P6107674022573120692

namespace A239024

/-- `A001045(n)+A084184(n)+1` -/
def P6107674022573120692.Spec : Prop :=
  ∀ n, P6107674022573120692.a n = A239024 (n + 1)

end A239024

/-! ## A239024.P16033716700134536550

`A135318(A000034(n)+2*n)`
-/

namespace A239024.P16033716700134536550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (A000034 n + (2 * n : ℤ)).toNat

end

end A239024.P16033716700134536550

namespace A239024

/-- `A135318(A000034(n)+2*n)` -/
def P16033716700134536550.Spec : Prop :=
  ∀ n, P16033716700134536550.a n = A239024 (n + 1)

end A239024

/-! ## A239024.P10237985631812433115

`A135318(or(1, A016777(n))-n)`
-/

namespace A239024.P10237985631812433115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (Int.lor 1 (A016777 n) - (n : ℤ)).toNat

end

end A239024.P10237985631812433115

namespace A239024

/-- `A135318(or(1, A016777(n))-n)` -/
def P10237985631812433115.Spec : Prop :=
  ∀ n, P10237985631812433115.a n = A239024 (n + 1)

end A239024

/-! ## A239024.P5173983407047010916

`A135318(A000034(n)+n+n)`
-/

namespace A239024.P5173983407047010916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (A000034 n + (n : ℤ) + (n : ℤ)).toNat

end

end A239024.P5173983407047010916

namespace A239024

/-- `A135318(A000034(n)+n+n)` -/
def P5173983407047010916.Spec : Prop :=
  ∀ n, P5173983407047010916.a n = A239024 (n + 1)

end A239024

/-! ## A239024.P4596895937914903474

`∑[2*A011782(n)-A092808(n)]`
-/

namespace A239024.P4596895937914903474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011782 n - A092808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239024.P4596895937914903474

namespace A239024

/-- `∑[2*A011782(n)-A092808(n)]` -/
def P4596895937914903474.Spec : Prop :=
  ∀ n, P4596895937914903474.a n = A239024 (n + 1)

end A239024

/-! ## A239024.P5967431954033655768

`A135318(A000035(n)+2*n+1)`
-/

namespace A239024.P5967431954033655768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (A000035 n + (2 * n + 1 : ℤ)).toNat

end

end A239024.P5967431954033655768

namespace A239024

/-- `A135318(A000035(n)+2*n+1)` -/
def P5967431954033655768.Spec : Prop :=
  ∀ n, P5967431954033655768.a n = A239024 (n + 1)

end A239024

/-! ## A239024.P15874596040771287393

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=11`
-/

namespace A239024.P15874596040771287393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4, 11] fun n a =>
  5 * a (n - 2) - 4 * a (n - 4)

end

end A239024.P15874596040771287393

namespace A239024

/-- `5*a(n-2)-4*a(n-4)` -/
def P15874596040771287393.Spec : Prop :=
  ∀ n, P15874596040771287393.a n = A239024 (n + 1)

end A239024

/-! ## A239024.P9022815884279614006

`∪[A000302(n), A007583(n)]`
-/

namespace A239024.P9022815884279614006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A239024.P9022815884279614006

namespace A239024

/-- `∪[A000302(n), A007583(n)]` -/
def P9022815884279614006.Spec : Prop :=
  ∀ n, (P9022815884279614006.a n : ℤ) = A239024 (n + 1)

end A239024

/-!
# A239025: Number of n X 3 0..2 arrays with no element equal to the sum of elements to its left or one plus the sum of elements above it, modulo 3.

The programs for A239025, there is no canonical definition to state claims against.
-/

/-! ## A239025.P7593933538081009238

`A239030(∑[n+3]+1)`
-/

namespace A239025.P7593933538081009238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A239025.P7593933538081009238

/-! ## A239025.P2033247067942386798

`record[A023531(n+2)*A239030(n+1)]`
-/

namespace A239025.P2033247067942386798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (n + 2) * A239030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239025.P2033247067942386798

/-! ## A239025.P37806714587844305

`A239030(A034856(n+2))^A000038(n)!`
-/

namespace A239025.P37806714587844305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (A034856 (n + 2)).toNat ^ Nat.factorial (A000038 n).toNat

end

end A239025.P37806714587844305

/-! ## A239025.P9211942275382619939

`A239030(A034856(n+2))%A002450(n+2)`
-/

namespace A239025.P9211942275382619939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239030 (A034856 (n + 2)).toNat) (A002450 (n + 2))

end

end A239025.P9211942275382619939

/-! ## A239025.P15242832016320834531

`(n-A023443(n))*A239030(A034856(n+2))`
-/

namespace A239025.P15242832016320834531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A023443 n) * A239030 (A034856 (n + 2)).toNat

end

end A239025.P15242832016320834531

/-!
# A239026: Number of nX4 0..2 arrays with no element equal to the sum of elements to its left or one plus the sum of elements above it, modulo 3.

The programs for A239026, there is no canonical definition to state claims against.
-/

/-! ## A239026.P3753688317475012481

`A239030(A141214(n+1))`
-/

namespace A239026.P3753688317475012481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (A141214 (n + 1)).toNat

end

end A239026.P3753688317475012481

/-! ## A239026.P2400273526547541933

`A239030(Δ[A034857(n+1)])`
-/

namespace A239026.P2400273526547541933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (f1 (n + 1) - f1 n).toNat

end

end A239026.P2400273526547541933

/-! ## A239026.P4191535998614150225

`A239030(A052905(n+1)+2)`
-/

namespace A239026.P4191535998614150225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (A052905 (n + 1) + 2).toNat

end

end A239026.P4191535998614150225

/-! ## A239026.P12956012366541667501

`A239030(A055999(n+1)+3)`
-/

namespace A239026.P12956012366541667501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (A055999 (n + 1) + 3).toNat

end

end A239026.P12956012366541667501

/-! ## A239026.P14116487365087730139

`A239030(A000096(n+3)-2)`
-/

namespace A239026.P14116487365087730139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (A000096 (n + 3) - 2).toNat

end

end A239026.P14116487365087730139

/-!
# A239027: Number of nX5 0..2 arrays with no element equal to the sum of elements to its left or one plus the sum of elements above it, modulo 3.

The programs for A239027, there is no canonical definition to state claims against.
-/

/-! ## A239027.P14454497045072010938

`A239030(A046691(n+3))`
-/

namespace A239027.P14454497045072010938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (A046691 (n + 3)).toNat

end

end A239027.P14454497045072010938

/-! ## A239027.P3692860963794359122

`A239030(Δ[A023545(n+1)])`
-/

namespace A239027.P3692860963794359122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (f1 (n + 1) - f1 n).toNat

end

end A239027.P3692860963794359122

/-! ## A239027.P17452173151715955887

`A239030(A055999(n+2)+2)`
-/

namespace A239027.P17452173151715955887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (A055999 (n + 2) + 2).toNat

end

end A239027.P17452173151715955887

/-! ## A239027.P15703828978831513968

`A239030(Δ[A034857(n+2)]-1)`
-/

namespace A239027.P15703828978831513968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (f1 (n + 1) - f1 n - 1).toNat

end

end A239027.P15703828978831513968

/-! ## A239027.P1195891241465194308

`A239030(A000217(n+6)-(n+10))`
-/

namespace A239027.P1195891241465194308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (A000217 (n + 6) - (n + 10 : ℤ)).toNat

end

end A239027.P1195891241465194308

/-!
# A239028: Number of nX6 0..2 arrays with no element equal to the sum of elements to its left or one plus the sum of elements above it, modulo 3.

The programs for A239028, there is no canonical definition to state claims against.
-/

/-! ## A239028.P10135964241589422268

`A239030(A052905(n+3))`
-/

namespace A239028.P10135964241589422268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (A052905 (n + 3)).toNat

end

end A239028.P10135964241589422268

/-! ## A239028.P15336174738832031649

`A239030(A046691(n+4)-1)`
-/

namespace A239028.P15336174738832031649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (A046691 (n + 4) - 1).toNat

end

end A239028.P15336174738832031649

/-! ## A239028.P8180496425808845696

`A239030(A000217(n+6)-5)`
-/

namespace A239028.P8180496425808845696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (A000217 (n + 6) - 5).toNat

end

end A239028.P8180496425808845696

/-! ## A239028.P5835964967053798657

`A239030(A000124(n+6)-6)`
-/

namespace A239028.P5835964967053798657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (A000124 (n + 6) - 6).toNat

end

end A239028.P5835964967053798657

/-! ## A239028.P16421062340527675591

`A239030(Δ[A023545(n+2)]-1)`
-/

namespace A239028.P16421062340527675591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (f1 (n + 1) - f1 n - 1).toNat

end

end A239028.P16421062340527675591

/-!
# A239029: Number of nX7 0..2 arrays with no element equal to the sum of elements to its left or one plus the sum of elements above it, modulo 3.

The programs for A239029, there is no canonical definition to state claims against.
-/

/-! ## A239029.P10918523003325451729

`A239030(A055999(n+4))`
-/

namespace A239029.P10918523003325451729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (A055999 (n + 4)).toNat

end

end A239029.P10918523003325451729

/-! ## A239029.P8255960291692320344

`A239030(Δ[A026054(n+4)])`
-/

namespace A239029.P8255960291692320344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (f1 (n + 1) - f1 n).toNat

end

end A239029.P8255960291692320344

/-! ## A239029.P8987160991274964942

`A239030(A052905(n+4)-1)`
-/

namespace A239029.P8987160991274964942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (A052905 (n + 4) - 1).toNat

end

end A239029.P8987160991274964942

/-! ## A239029.P4331918290589669590

`A239030(A000217(n+7)-6)`
-/

namespace A239029.P4331918290589669590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (A000217 (n + 7) - 6).toNat

end

end A239029.P4331918290589669590

/-! ## A239029.P3082987539074510979

`A239030(A000124(n+7)-7)`
-/

namespace A239029.P3082987539074510979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (A000124 (n + 7) - 7).toNat

end

end A239029.P3082987539074510979

/-!
# A239030: T(n,k)=Number of nXk 0..2 arrays with no element equal to the sum of elements to its left or one plus the sum of the elements above it, modulo 3.

The programs for A239030, there is no canonical definition to state claims against.
-/

/-! ## A239030.P7075227991777492067

`A124010(A283432(n))+A007318(n)`
-/

namespace A239030.P7075227991777492067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A283432 n).toNat + A007318 n

end

end A239030.P7075227991777492067

/-! ## A239030.P16269409505510841566

`A000120(A064230(n)+A026242(n+1))`
-/

namespace A239030.P16269409505510841566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A064230 n + A026242 (n + 1)).toNat

end

end A239030.P16269409505510841566

/-! ## A239030.P5383582458852092067

`A154791(A137593(n+1))+A007318(n)`
-/

namespace A239030.P5383582458852092067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154791 (A137593 (n + 1)).toNat + A007318 n

end

end A239030.P5383582458852092067

/-! ## A239030.P677401793677448503

`A000120(A322278(n+1)+A000079(n))`
-/

namespace A239030.P677401793677448503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A322278 (n + 1) + A000079 n).toNat

end

end A239030.P677401793677448503

/-! ## A239030.P13319634963923741062

`A000120(A348043(n+1)+A286331(n))`
-/

namespace A239030.P13319634963923741062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A348043 (n + 1) + A286331 n).toNat

end

end A239030.P13319634963923741062

/-!
# A239031: Number of 4 X n 0..2 arrays with no element equal to the sum of elements to its left or one plus the sum of the elements above it, modulo 3.

The programs for A239031, the canonical program `A239031.P9818743280825613861` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239031 has offset 1).

The definition of A239031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239031.P9818743280825613861

`(n+1)^4/12-(n+1)^3/6+47*(n+1)²/12-29*(n+1)/6+5`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A239031

/-- `(n+1)^4/12-(n+1)^3/6+47*(n+1)²/12-29*(n+1)/6+5` -/
def P9818743280825613861.Spec : Prop :=
  ∀ n, P9818743280825613861.a n = (A239031 (n + 1) : ℚ)

end A239031

/-!
# A239032: Number of 5 X n 0..2 arrays with no element equal to the sum of elements to its left or one plus the sum of the elements above it, modulo 3.

The programs for A239032, there is no canonical definition to state claims against.
-/

/-! ## A239032.P14826184516700832544

`A239030(A167499(n+3))`
-/

namespace A239032.P14826184516700832544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (A167499 (n + 3)).toNat

end

end A239032.P14826184516700832544

/-! ## A239032.P16938942234134585820

`record[A239030(A167499(A007599(n)))]`
-/

namespace A239032.P16938942234134585820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (A167499 (A007599 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239032.P16938942234134585820

/-! ## A239032.P8098964786488863808

`record[A239030(A167499(A008611(n)))]`
-/

namespace A239032.P8098964786488863808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (A167499 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239032.P8098964786488863808

/-! ## A239032.P9641780560122132095

`record[A239030(A167499(A008616(n)))]`
-/

namespace A239032.P9641780560122132095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (A167499 (A008616 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239032.P9641780560122132095

/-! ## A239032.P4678350160275058897

`record[A239030(A167499(A008619(n)))]`
-/

namespace A239032.P4678350160275058897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (A167499 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239032.P4678350160275058897

/-!
# A239033: Number of 6 X n 0..2 arrays with no element equal to the sum of elements to its left or one plus the sum of the elements above it, modulo 3.

The programs for A239033, there is no canonical definition to state claims against.
-/

/-! ## A239033.P16531025134908123505

`A239030(A167614(n+4)+3)`
-/

namespace A239033.P16531025134908123505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (A167614 (n + 4) + 3).toNat

end

end A239033.P16531025134908123505

/-! ## A239033.P12089249264499907870

`A239030(A000124(n+5)+5)`
-/

namespace A239033.P12089249264499907870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (A000124 (n + 5) + 5).toNat

end

end A239033.P12089249264499907870

/-! ## A239033.P15455639682830260808

`A239030(A000217(n+5)+6)`
-/

namespace A239033.P15455639682830260808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (A000217 (n + 5) + 6).toNat

end

end A239033.P15455639682830260808

/-! ## A239033.P9946586073546196513

`A239030(A141214(n+2)+9)`
-/

namespace A239033.P9946586073546196513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (A141214 (n + 2) + 9).toNat

end

end A239033.P9946586073546196513

/-! ## A239033.P14745035423952533620

`A239030(A034856(n+4)+8)`
-/

namespace A239033.P14745035423952533620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (A034856 (n + 4) + 8).toNat

end

end A239033.P14745035423952533620

/-!
# A239034: Number of 7Xn 0..2 arrays with no element equal to the sum of elements to its left or one plus the sum of the elements above it, modulo 3.

The programs for A239034, there is no canonical definition to state claims against.
-/

/-! ## A239034.P10192779615177695660

`A239030(A167614(n+5)+4)`
-/

namespace A239034.P10192779615177695660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (A167614 (n + 5) + 4).toNat

end

end A239034.P10192779615177695660

/-! ## A239034.P12357705506499258800

`A239030(A000124(n+6)+6)`
-/

namespace A239034.P12357705506499258800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (A000124 (n + 6) + 6).toNat

end

end A239034.P12357705506499258800

/-! ## A239034.P12003458320543914733

`A239030(A000217(n+6)+7)`
-/

namespace A239034.P12003458320543914733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (A000217 (n + 6) + 7).toNat

end

end A239034.P12003458320543914733

/-! ## A239034.P12628918670905090003

`A239030(A016885(n+5)+A000096(n))`
-/

namespace A239034.P12628918670905090003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (A016885 (n + 5) + A000096 n).toNat

end

end A239034.P12628918670905090003

/-! ## A239034.P8917417312244610589

`A239030(A055999(n+7)-A101279(A017101(n+5)))`
-/

namespace A239034.P8917417312244610589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239030 (A055999 (n + 7) - A101279 (A017101 (n + 5)).toNat).toNat

end

end A239034.P8917417312244610589

/-!
# A239035: Product of 8 consecutive integers. a(n) = RisingFactorial(n, 8).

The programs for A239035, the canonical program `A239035.P5349055549873088502` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239035 has offset 0).

The definition of A239035 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239035.P5349055549873088502

`(n^4+14*n^3+63*n²+98*n+28)²-(28+8*n)²`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A239035

/-- `(n^4+14*n^3+63*n²+98*n+28)²-(28+8*n)²` -/
def P5349055549873088502.Spec : Prop :=
  ∀ n, P5349055549873088502.a n = A239035 n

theorem P5349055549873088502.correct : P5349055549873088502.Spec := by
  intro n
  simp only [A239035]

end A239035

/-! ## A239035.P11692641901672340028

`A169827(n)*A253947(n+6)`
-/

namespace A239035.P11692641901672340028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169827 n * A253947 (n + 6)

end

end A239035.P11692641901672340028

namespace A239035

/-- `A169827(n)*A253947(n+6)` -/
def P11692641901672340028.Spec : Prop :=
  ∀ n, P11692641901672340028.a n = A239035 n

end A239035

/-! ## A239035.P15318747054416472636

`∑[36*A105939(n)*A008590(n)]`
-/

namespace A239035.P15318747054416472636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  36 * A105939 n * A008590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239035.P15318747054416472636

namespace A239035

/-- `∑[36*A105939(n)*A008590(n)]` -/
def P15318747054416472636.Spec : Prop :=
  ∀ n, P15318747054416472636.a n = A239035 n

end A239035

/-! ## A239035.P10477022597556922176

`∑[8*n*A053625(n+6)]`
-/

namespace A239035.P10477022597556922176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) * A053625 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239035.P10477022597556922176

namespace A239035

/-- `∑[8*n*A053625(n+6)]` -/
def P10477022597556922176.Spec : Prop :=
  ∀ n, P10477022597556922176.a n = A239035 n

end A239035

/-! ## A239035.P7087450523809053848

`∏{digits}[A109177(n+1), #+n]`
-/

namespace A239035.P7087450523809053848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109177 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x + n).prod

end

end A239035.P7087450523809053848

namespace A239035

/-- `∏{digits}[A109177(n+1), #+n]` -/
def P7087450523809053848.Spec : Prop :=
  ∀ n, (P7087450523809053848.a n : ℤ) = A239035 n

end A239035

/-! ## A239035.P12283302779516247053

`n*(n+7)!/n!`
-/

namespace A239035.P12283302779516247053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * Nat.factorial (n + 7) : ℚ) / (Nat.factorial n : ℚ)

end

end A239035.P12283302779516247053

namespace A239035

/-- `n*(n+7)!/n!` -/
def P12283302779516247053.Spec : Prop :=
  ∀ n, P12283302779516247053.a n = (A239035 n : ℚ)

end A239035

/-!
# A239036: A set of eleven distinct positive odd numbers the sum of whose reciprocals is 1 and whose 11th term is as large as possible.

The programs for A239036, there is no canonical definition to state claims against.
-/

/-! ## A239036.P18934367618296780

`A250100(A309860(n))+A130738(n+1)`
-/

namespace A239036.P18934367618296780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250100 (A309860 n).toNat + A130738 (n + 1)

end

end A239036.P18934367618296780

/-!
# A239037: a(n) = prime digit in A092621(n).

The programs for A239037, the canonical program `A239037.P16508070446455444268` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239037 has offset 1).

The definition of A239037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239037.P5895737766239709515

`A085563(A092621(n+1))`
-/

namespace A239037.P5895737766239709515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085563 (A092621 (n + 1)).toNat

end

end A239037.P5895737766239709515

namespace A239037

/-- `A085563(A092621(n+1))` -/
def P5895737766239709515.Spec : Prop :=
  ∀ n, P5895737766239709515.a n = A239037 (n + 1)

end A239037

/-! ## A239037.P16508070446455444268

`A085563(p?[A092620(n+1)])`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A239037

/-- `A085563(p?[A092620(n+1)])` -/
def P16508070446455444268.Spec : Prop :=
  ∀ n, P16508070446455444268.a n = A239037 (n + 1)

theorem P16508070446455444268.correct : P16508070446455444268.Spec := by
  intro n
  simp only [A239037, Nat.add_sub_cancel]

end A239037

/-! ## A239037.P18422230589138461454

`A211396(p?[A092620(n+1)])`
-/

namespace A239037.P18422230589138461454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A239037.P18422230589138461454

namespace A239037

/-- `A211396(p?[A092620(n+1)])` -/
def P18422230589138461454.Spec : Prop :=
  ∀ n, P18422230589138461454.a n = A239037 (n + 1)

end A239037

/-! ## A239037.P16524018267092095257

`∑{digits}[A092621(n+1), A047814(#)]`
-/

namespace A239037.P16524018267092095257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A047814 x).sum

end

end A239037.P16524018267092095257

namespace A239037

/-- `∑{digits}[A092621(n+1), A047814(#)]` -/
def P16524018267092095257.Spec : Prop :=
  ∀ n, P16524018267092095257.a n = A239037 (n + 1)

end A239037

/-! ## A239037.P1994099865562967900

`∑{digits}[A092621(n+1), A331044(#)]`
-/

namespace A239037.P1994099865562967900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A331044 x).sum

end

end A239037.P1994099865562967900

namespace A239037

/-- `∑{digits}[A092621(n+1), A331044(#)]` -/
def P1994099865562967900.Spec : Prop :=
  ∀ n, P1994099865562967900.a n = A239037 (n + 1)

end A239037

/-! ## A239037.P4797566797768929110

`∑{digits}[p?[A092620(n+1)], A047814(#)]`
-/

namespace A239037.P4797566797768929110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092620 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A047814 x).sum

end

end A239037.P4797566797768929110

namespace A239037

/-- `∑{digits}[p?[A092620(n+1)], A047814(#)]` -/
def P4797566797768929110.Spec : Prop :=
  ∀ n, P4797566797768929110.a n = A239037 (n + 1)

end A239037

/-! ## A239037.P787721327583183566

`A179335(eq[1, A109066(n+1)]+1)`
-/

namespace A239037.P787721327583183566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A239037.P787721327583183566

namespace A239037

/-- `A179335(eq[1, A109066(n+1)]+1)` -/
def P787721327583183566.Spec : Prop :=
  ∀ n, P787721327583183566.a n = A239037 (n + 1)

end A239037

/-! ## A239037.P12306427297385776756

`p?[A109066(n+1)*A179335(n+1)]`
-/

namespace A239037.P12306427297385776756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109066 (n + 1) * A179335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A239037.P12306427297385776756

namespace A239037

/-- `p?[A109066(n+1)*A179335(n+1)]` -/
def P12306427297385776756.Spec : Prop :=
  ∀ n, P12306427297385776756.a n = A239037 (n + 1)

end A239037

/-! ## A239037.P9975851398800024206

`p?[A109066(n+1)*A211396(A028905(n+1))]`
-/

namespace A239037.P9975851398800024206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109066 (n + 1) * A211396 (A028905 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A239037.P9975851398800024206

namespace A239037

/-- `p?[A109066(n+1)*A211396(A028905(n+1))]` -/
def P9975851398800024206.Spec : Prop :=
  ∀ n, P9975851398800024206.a n = A239037 (n + 1)

end A239037

/-!
# A239039: Number of n X n 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of the elements above it, modulo 4.

The programs for A239039, there is no canonical definition to state claims against.
-/

/-! ## A239039.P3658324197039874619

`A239047(∑[4*n]+1)`
-/

namespace A239039.P3658324197039874619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239047 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A239039.P3658324197039874619

/-! ## A239039.P13258359213677761767

`record[gcd(A003987(n), A239047(n+1))]`
-/

namespace A239039.P13258359213677761767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A239047 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239039.P13258359213677761767

/-! ## A239039.P17993588592607029565

`A239047(A001844(n))^A146628(n+1)`
-/

namespace A239039.P17993588592607029565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239047 (A001844 n).toNat : ℚ) ^ (A146628 (n + 1) : ℤ)

end

end A239039.P17993588592607029565

/-!
# A239040: Number of n X 1 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it, modulo 4.

The programs for A239040, the canonical program `A239040.P44547061062211156` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239040 has offset 1).

The definition of A239040 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239040.P44547061062211156

`A077999(n+3)/2`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A239040

/-- `A077999(n+3)/2` -/
def P44547061062211156.Spec : Prop :=
  ∀ n, P44547061062211156.a n = (A239040 (n + 1) : ℚ)

end A239040

/-! ## A239040.P12123050277820941157

`ogf((3+x+2x^2)/(1-2x-2x^3))`
-/

namespace A239040.P12123050277820941157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, 2] [1, -2, 0, -2] n

end

end A239040.P12123050277820941157

namespace A239040

/-- `ogf((3+x+2x^2)/(1-2x-2x^3))` -/
def P12123050277820941157.Spec : Prop :=
  ∀ n, P12123050277820941157.a n = A239040 (n + 1)

end A239040

/-! ## A239040.P4618175256039554525

`2*a(n-1)+2*a(n-3)` with `a(0)=3, a(1)=7, a(2)=16`
-/

namespace A239040.P4618175256039554525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 7, 16] fun n a =>
  2 * a (n - 1) + 2 * a (n - 3)

end

end A239040.P4618175256039554525

namespace A239040

/-- `2*a(n-1)+2*a(n-3)` -/
def P4618175256039554525.Spec : Prop :=
  ∀ n, (P4618175256039554525.a n : ℤ) = A239040 (n + 1)

end A239040

/-! ## A239040.P10582011418661480151

`A239333(n+1)+A052912(n)`
-/

namespace A239040.P10582011418661480151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239333 (n + 1) + A052912 n

end

end A239040.P10582011418661480151

namespace A239040

/-- `A239333(n+1)+A052912(n)` -/
def P10582011418661480151.Spec : Prop :=
  ∀ n, P10582011418661480151.a n = A239040 (n + 1)

end A239040

/-! ## A239040.P6649384234094883550

`A077999(n+2)+A077999(n)`
-/

namespace A239040.P6649384234094883550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077999 (n + 2) + A077999 n

end

end A239040.P6649384234094883550

namespace A239040

/-- `A077999(n+2)+A077999(n)` -/
def P6649384234094883550.Spec : Prop :=
  ∀ n, P6649384234094883550.a n = A239040 (n + 1)

end A239040

/-! ## A239040.P2634490214101528805

`Δ[2*(a(n-1)+a(n-3))]` with `a(0)=2, a(1)=5, a(2)=12`
-/

namespace A239040.P2634490214101528805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 12] fun n f1 =>
  2 * (f1 (n - 1) + f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A239040.P2634490214101528805

namespace A239040

/-- `Δ[2*(a(n-1)+a(n-3))]` -/
def P2634490214101528805.Spec : Prop :=
  ∀ n, P2634490214101528805.a n = A239040 (n + 1)

end A239040

/-! ## A239040.P17960132569543315989

`Δ[A239333(n+1)]`
-/

namespace A239040.P17960132569543315989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239040.P17960132569543315989

namespace A239040

/-- `Δ[A239333(n+1)]` -/
def P17960132569543315989.Spec : Prop :=
  ∀ n, P17960132569543315989.a n = A239040 (n + 1)

end A239040

/-! ## A239040.P6214036554388893250

`abs(A110524(n+3)/2)`
-/

namespace A239040.P6214036554388893250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A110524 (n + 3) : ℚ) / 2|

end

end A239040.P6214036554388893250

namespace A239040

/-- `abs(A110524(n+3)/2)` -/
def P6214036554388893250.Spec : Prop :=
  ∀ n, P6214036554388893250.a n = (A239040 (n + 1) : ℚ)

end A239040

/-! ## A239040.P7653600819879971184

`A239333(n+2)-A239333(n+1)`
-/

namespace A239040.P7653600819879971184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239333 (n + 2) - A239333 (n + 1)

end

end A239040.P7653600819879971184

namespace A239040

/-- `A239333(n+2)-A239333(n+1)` -/
def P7653600819879971184.Spec : Prop :=
  ∀ n, P7653600819879971184.a n = A239040 (n + 1)

end A239040

/-! ## A239040.P13038044992852475768

`Δ[A052912(n+2)/2]`
-/

namespace A239040.P13038044992852475768
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052912 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239040.P13038044992852475768

namespace A239040

/-- `Δ[A052912(n+2)/2]` -/
def P13038044992852475768.Spec : Prop :=
  ∀ n, P13038044992852475768.a n = (A239040 (n + 1) : ℚ)

end A239040

/-! ## A239040.P11937370792880113013

`Δ[Δ[A077851(n+1)/2]]`
-/

namespace A239040.P11937370792880113013
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077851 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239040.P11937370792880113013

namespace A239040

/-- `Δ[Δ[A077851(n+1)/2]]` -/
def P11937370792880113013.Spec : Prop :=
  ∀ n, P11937370792880113013.a n = (A239040 (n + 1) : ℚ)

end A239040

/-!
# A239041: Number of nX2 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it, modulo 4.

The programs for A239041, there is no canonical definition to state claims against.
-/

/-! ## A239041.P6481158074500729944

`A239047(∑[n+1]+2)`
-/

namespace A239041.P6481158074500729944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239047 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A239041.P6481158074500729944

/-! ## A239041.P341209550892145324

`record[gcd(A002262(n), A239047(n+2))]`
-/

namespace A239041.P341209550892145324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A239047 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239041.P341209550892145324

/-! ## A239041.P16976989177074105892

`record[A239047(abs(A201163(n)))]`
-/

namespace A239041.P16976989177074105892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239047 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239041.P16976989177074105892

/-! ## A239041.P2385553921937986727

`A239047(A000096(n+1))%A093159(n+2)`
-/

namespace A239041.P2385553921937986727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239047 (A000096 (n + 1)).toNat) (A093159 (n + 2))

end

end A239041.P2385553921937986727

/-! ## A239041.P4388992725053031367

`or(A198631(2*n), A239047(A000096(n+1)))`
-/

namespace A239041.P4388992725053031367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A198631 (2 * n)) (A239047 (A000096 (n + 1)).toNat)

end

end A239041.P4388992725053031367

/-!
# A239042: Number of nX3 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it, modulo 4.

The programs for A239042, there is no canonical definition to state claims against.
-/

/-! ## A239042.P17236080450695801937

`A239047(∑[n+2]+4)`
-/

namespace A239042.P17236080450695801937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239047 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A239042.P17236080450695801937

/-! ## A239042.P4546163051184979752

`lcm(A033999(n), A239047(A167614(n+1)))`
-/

namespace A239042.P4546163051184979752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A239047 (A167614 (n + 1)).toNat)

end

end A239042.P4546163051184979752

/-! ## A239042.P1574979289975996334

`A239047(A167614(n+1))+A034508(n+1)`
-/

namespace A239042.P1574979289975996334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239047 (A167614 (n + 1)).toNat + A034508 (n + 1)

end

end A239042.P1574979289975996334

/-! ## A239042.P7039777956543354468

`A239047(A167614(n+1))+A034533(n+1)`
-/

namespace A239042.P7039777956543354468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239047 (A167614 (n + 1)).toNat + A034533 (n + 1)

end

end A239042.P7039777956543354468

/-! ## A239042.P375637939894688572

`A239047(A167614(n+1))*A329379(2*n+1)`
-/

namespace A239042.P375637939894688572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239047 (A167614 (n + 1)).toNat * A329379 (2 * n + 1)

end

end A239042.P375637939894688572

/-!
# A239043: Number of n X 4 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it, modulo 4.

The programs for A239043, there is no canonical definition to state claims against.
-/

/-! ## A239043.P10406708436481942235

`A239047(A374004(n+1))`
-/

namespace A239043.P10406708436481942235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239047 (A374004 (n + 1)).toNat

end

end A239043.P10406708436481942235

/-! ## A239043.P5705617137639275068

`A239047(A141214(n)+7)`
-/

namespace A239043.P5705617137639275068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239047 (A141214 n + 7).toNat

end

end A239043.P5705617137639275068

/-! ## A239043.P11713132519873828285

`A239047(A052905(n)+9)`
-/

namespace A239043.P11713132519873828285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239047 (A052905 n + 9).toNat

end

end A239043.P11713132519873828285

/-! ## A239043.P17335561719168570882

`A239047(A055999(n)+10)`
-/

namespace A239043.P17335561719168570882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239047 (A055999 n + 10).toNat

end

end A239043.P17335561719168570882

/-! ## A239043.P9604247186649714651

`A239047(A167614(n+2)+1)`
-/

namespace A239043.P9604247186649714651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239047 (A167614 (n + 2) + 1).toNat

end

end A239043.P9604247186649714651

/-!
# A239044: Number of nX5 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it, modulo 4.

The programs for A239044, there is no canonical definition to state claims against.
-/

/-! ## A239044.P8620868987970493729

`A239047(A374005(n+1))`
-/

namespace A239044.P8620868987970493729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239047 (A374005 (n + 1)).toNat

end

end A239044.P8620868987970493729

/-! ## A239044.P6804149269119936585

`A239047(A167499(n+3))`
-/

namespace A239044.P6804149269119936585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239047 (A167499 (n + 3)).toNat

end

end A239044.P6804149269119936585

/-! ## A239044.P787557108534036286

`A239047(A155212(n)+13)`
-/

namespace A239044.P787557108534036286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239047 (A155212 n + 13).toNat

end

end A239044.P787557108534036286

/-! ## A239044.P16233506768698374069

`A239047(A000096(n+3)+6)`
-/

namespace A239044.P16233506768698374069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239047 (A000096 (n + 3) + 6).toNat

end

end A239044.P16233506768698374069

/-! ## A239044.P4043458103707118511

`A239047(A000217(n+4)+5)`
-/

namespace A239044.P4043458103707118511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239047 (A000217 (n + 4) + 5).toNat

end

end A239044.P4043458103707118511

/-!
# A239045: Number of nX6 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it, modulo 4.

The programs for A239045, there is no canonical definition to state claims against.
-/

/-! ## A239045.P8691006530913329621

`A239047(A374007(n+1))`
-/

namespace A239045.P8691006530913329621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239047 (A374007 (n + 1)).toNat

end

end A239045.P8691006530913329621

/-! ## A239045.P8595096362829115959

`A239047(A166136(n+4))`
-/

namespace A239045.P8595096362829115959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239047 (A166136 (n + 4)).toNat

end

end A239045.P8595096362829115959

/-! ## A239045.P11720209505059715056

`A239047(eq[7, A131818(n+1)])`
-/

namespace A239045.P11720209505059715056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239045.P11720209505059715056

/-! ## A239045.P9420315661459411307

`A239047(A052905(n+3))`
-/

namespace A239045.P9420315661459411307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239047 (A052905 (n + 3)).toNat

end

end A239045.P9420315661459411307

/-! ## A239045.P6464265797713555707

`A239047(eq[3, A219347(n)])`
-/

namespace A239045.P6464265797713555707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239045.P6464265797713555707

/-!
# A239046: Number of nX7 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it, modulo 4.

The programs for A239046, there is no canonical definition to state claims against.
-/

/-! ## A239046.P3577919777987944334

`A239047(A374008(n+1))`
-/

namespace A239046.P3577919777987944334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239047 (A374008 (n + 1)).toNat

end

end A239046.P3577919777987944334

/-! ## A239046.P18260278479897265759

`A239047(A167487(n+5))`
-/

namespace A239046.P18260278479897265759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239047 (A167487 (n + 5)).toNat

end

end A239046.P18260278479897265759

/-! ## A239046.P12779591225638570176

`A239047(A000124(n+6)+6)`
-/

namespace A239046.P12779591225638570176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239047 (A000124 (n + 6) + 6).toNat

end

end A239046.P12779591225638570176

/-! ## A239046.P3603447256001244089

`A239047(A055999(n+4))`
-/

namespace A239046.P3603447256001244089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239047 (A055999 (n + 4)).toNat

end

end A239046.P3603447256001244089

/-! ## A239046.P5976319719162315330

`A239047(eq[6, A193592(n)])`
-/

namespace A239046.P5976319719162315330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239046.P5976319719162315330

/-!
# A239050: a(n) = 4*sigma(n).

The programs for A239050, the canonical program `A239050.P12685587340824370499` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239050 has offset 1).

The definition of A239050 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239050.P12685587340824370499

`2*A074400(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A239050

/-- `2*A074400(n+1)` -/
def P12685587340824370499.Spec : Prop :=
  ∀ n, P12685587340824370499.a n = A239050 (n + 1)

theorem P12685587340824370499.correct : P12685587340824370499.Spec := by
  intro n
  simp only [A239050, Nat.add_sub_cancel]

end A239050

/-! ## A239050.P11778751463060976919

`4*A000203(n+1)`
-/

namespace A239050.P11778751463060976919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000203 (n + 1)

end

end A239050.P11778751463060976919

namespace A239050

/-- `4*A000203(n+1)` -/
def P11778751463060976919.Spec : Prop :=
  ∀ n, P11778751463060976919.a n = A239050 (n + 1)

end A239050

/-! ## A239050.P7243179635426011125

`A000203(n+1)+A272027(n+1)`
-/

namespace A239050.P7243179635426011125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A272027 (n + 1)

end

end A239050.P7243179635426011125

namespace A239050

/-- `A000203(n+1)+A272027(n+1)` -/
def P7243179635426011125.Spec : Prop :=
  ∀ n, P7243179635426011125.a n = A239050 (n + 1)

end A239050

/-! ## A239050.P15037975464121625861

`4*∑{d}[n+1, #]`
-/

namespace A239050.P15037975464121625861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ d ∈ Nat.divisors (f1 n), d)

end

end A239050.P15037975464121625861

namespace A239050

/-- `4*∑{d}[n+1, #]` -/
def P15037975464121625861.Spec : Prop :=
  ∀ n, (P15037975464121625861.a n : ℤ) = A239050 (n + 1)

end A239050

/-! ## A239050.P9343084920819951275

`∑{d}[xor(n, -1), 4*#]`
-/

namespace A239050.P9343084920819951275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, 4 * d

end

end A239050.P9343084920819951275

namespace A239050

/-- `∑{d}[xor(n, -1), 4*#]` -/
def P9343084920819951275.Spec : Prop :=
  ∀ n, (P9343084920819951275.a n : ℤ) = A239050 (n + 1)

end A239050

/-! ## A239050.P3643938671337606497

`∑{d}[n+1, #/(1/2)²]`
-/

namespace A239050.P3643938671337606497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / ((1 : ℚ) / 2) ^ 2

end

end A239050.P3643938671337606497

namespace A239050

/-- `∑{d}[n+1, #/(1/2)²]` -/
def P3643938671337606497.Spec : Prop :=
  ∀ n, P3643938671337606497.a n = (A239050 (n + 1) : ℚ)

end A239050

/-! ## A239050.P15460329515287070738

`4/∑{d}[n+1, #]^-1`
-/

namespace A239050.P15460329515287070738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) ^ (-1 : ℤ)

end

end A239050.P15460329515287070738

namespace A239050

/-- `4/∑{d}[n+1, #]^-1` -/
def P15460329515287070738.Spec : Prop :=
  ∀ n, P15460329515287070738.a n = (A239050 (n + 1) : ℚ)

end A239050

/-! ## A239050.P18004758507738810956

`2^(log2(∑{d}[n+1, #])+2)`
-/

namespace A239050.P18004758507738810956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (Real.logb 2 ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℝ) + 2)

end

end A239050.P18004758507738810956

namespace A239050

/-- `2^(log2(∑{d}[n+1, #])+2)` -/
def P18004758507738810956.Spec : Prop :=
  ∀ n, P18004758507738810956.a n = (A239050 (n + 1) : ℝ)

end A239050

/-! ## A239050.P1431579455189360917

`Δ[4*A160664(n)]`
-/

namespace A239050.P1431579455189360917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239050.P1431579455189360917

namespace A239050

/-- `Δ[4*A160664(n)]` -/
def P1431579455189360917.Spec : Prop :=
  ∀ n, P1431579455189360917.a n = A239050 (n + 1)

end A239050

/-! ## A239050.P12076873638192309924

`A319528(n+1)/2`
-/

namespace A239050.P12076873638192309924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319528 (n + 1) : ℚ) / 2

end

end A239050.P12076873638192309924

namespace A239050

/-- `A319528(n+1)/2` -/
def P12076873638192309924.Spec : Prop :=
  ∀ n, P12076873638192309924.a n = (A239050 (n + 1) : ℚ)

end A239050

/-! ## A239050.P12411714115277194010

`4*sqrt(A072861(n+1))`
-/

namespace A239050.P12411714115277194010
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 * Real.sqrt (A072861 (n + 1) : ℝ)

end

end A239050.P12411714115277194010

namespace A239050

/-- `4*sqrt(A072861(n+1))` -/
def P12411714115277194010.Spec : Prop :=
  ∀ n, P12411714115277194010.a n = (A239050 (n + 1) : ℝ)

end A239050

/-! ## A239050.P16413428779801164936

`2*(A002659(n+1)+1)`
-/

namespace A239050.P16413428779801164936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002659 (n + 1) + 1)

end

end A239050.P16413428779801164936

namespace A239050

/-- `2*(A002659(n+1)+1)` -/
def P16413428779801164936.Spec : Prop :=
  ∀ n, P16413428779801164936.a n = A239050 (n + 1)

end A239050

/-! ## A239050.P10388940219162471647

`4*(A088580(n+1)-1)`
-/

namespace A239050.P10388940219162471647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A088580 (n + 1) - 1)

end

end A239050.P10388940219162471647

namespace A239050

/-- `4*(A088580(n+1)-1)` -/
def P10388940219162471647.Spec : Prop :=
  ∀ n, P10388940219162471647.a n = A239050 (n + 1)

end A239050

/-! ## A239050.P12917802938779483979

`2*A326136(2*(n+1))`
-/

namespace A239050.P12917802938779483979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A326136 (2 * (n + 1))

end

end A239050.P12917802938779483979

namespace A239050

/-- `2*A326136(2*(n+1))` -/
def P12917802938779483979.Spec : Prop :=
  ∀ n, P12917802938779483979.a n = A239050 (n + 1)

end A239050

/-! ## A239050.P14721370028670661919

`4*A245092(2*n+1)`
-/

namespace A239050.P14721370028670661919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A245092 (2 * n + 1)

end

end A239050.P14721370028670661919

namespace A239050

/-- `4*A245092(2*n+1)` -/
def P14721370028670661919.Spec : Prop :=
  ∀ n, P14721370028670661919.a n = A239050 (n + 1)

end A239050

/-! ## A239050.P18399113393225668616

`2/3*A274536(n+1)`
-/

namespace A239050.P18399113393225668616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A274536 (n + 1) : ℚ)

end

end A239050.P18399113393225668616

namespace A239050

/-- `2/3*A274536(n+1)` -/
def P18399113393225668616.Spec : Prop :=
  ∀ n, P18399113393225668616.a n = (A239050 (n + 1) : ℚ)

end A239050

/-! ## A239050.P18349962881307047326

`4/3*A272027(n+1)`
-/

namespace A239050.P18349962881307047326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A272027 (n + 1) : ℚ)

end

end A239050.P18349962881307047326

namespace A239050

/-- `4/3*A272027(n+1)` -/
def P18349962881307047326.Spec : Prop :=
  ∀ n, P18349962881307047326.a n = (A239050 (n + 1) : ℚ)

end A239050

/-! ## A239050.P685548997873511968

`2/5*A326122(n+1)`
-/

namespace A239050.P685548997873511968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 5 * (A326122 (n + 1) : ℚ)

end

end A239050.P685548997873511968

namespace A239050

/-- `2/5*A326122(n+1)` -/
def P685548997873511968.Spec : Prop :=
  ∀ n, P685548997873511968.a n = (A239050 (n + 1) : ℚ)

end A239050

/-! ## A239050.P2691871856531330594

`4/5*A274535(n+1)`
-/

namespace A239050.P2691871856531330594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 5 * (A274535 (n + 1) : ℚ)

end

end A239050.P2691871856531330594

namespace A239050

/-- `4/5*A274535(n+1)` -/
def P2691871856531330594.Spec : Prop :=
  ∀ n, P2691871856531330594.a n = (A239050 (n + 1) : ℚ)

end A239050

/-! ## A239050.P724939812028399904

`4*(A001065(n+1)+n+1)`
-/

namespace A239050.P724939812028399904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A001065 (n + 1) + (n + 1 : ℤ))

end

end A239050.P724939812028399904

namespace A239050

/-- `4*(A001065(n+1)+n+1)` -/
def P724939812028399904.Spec : Prop :=
  ∀ n, P724939812028399904.a n = A239050 (n + 1)

end A239050

/-!
# A239052: Sum of divisors of 4*n-2.

The programs for A239052, the canonical program `A239052.P10933618441211416237` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239052 has offset 1).

The definition of A239052 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239052.P10933618441211416237

`3*A008438(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A239052

/-- `3*A008438(n)` -/
def P10933618441211416237.Spec : Prop :=
  ∀ n, P10933618441211416237.a n = A239052 (n + 1)

theorem P10933618441211416237.correct : P10933618441211416237.Spec := by
  intro n
  simp only [A239052, Nat.add_sub_cancel]

end A239052

/-! ## A239052.P4585060717010492502

`A000203(4*(n+1)-2)`
-/

namespace A239052.P4585060717010492502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (4 * (n + 1) - 2)

end

end A239052.P4585060717010492502

namespace A239052

/-- `A000203(4*(n+1)-2)` -/
def P4585060717010492502.Spec : Prop :=
  ∀ n, P4585060717010492502.a n = A239052 (n + 1)

end A239052

/-! ## A239052.P5043072981720287564

`∑{d}[4*n+2, #]`
-/

namespace A239052.P5043072981720287564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A239052.P5043072981720287564

namespace A239052

/-- `∑{d}[4*n+2, #]` -/
def P5043072981720287564.Spec : Prop :=
  ∀ n, (P5043072981720287564.a n : ℤ) = A239052 (n + 1)

end A239052

/-! ## A239052.P9878666185836501768

`3*∑{d}[Δ[n²], #]`
-/

namespace A239052.P9878666185836501768
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A239052.P9878666185836501768

namespace A239052

/-- `3*∑{d}[Δ[n²], #]` -/
def P9878666185836501768.Spec : Prop :=
  ∀ n, (P9878666185836501768.a n : ℤ) = A239052 (n + 1)

end A239052

/-! ## A239052.P5572799714266101976

`A062731(Δ[n²])`
-/

namespace A239052.P5572799714266101976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062731 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A239052.P5572799714266101976

namespace A239052

/-- `A062731(Δ[n²])` -/
def P5572799714266101976.Spec : Prop :=
  ∀ n, P5572799714266101976.a n = A239052 (n + 1)

end A239052

/-! ## A239052.P4838602581484810808

`abs(3*A121613(n))`
-/

namespace A239052.P4838602581484810808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * A121613 n|

end

end A239052.P4838602581484810808

namespace A239052

/-- `abs(3*A121613(n))` -/
def P4838602581484810808.Spec : Prop :=
  ∀ n, P4838602581484810808.a n = A239052 (n + 1)

end A239052

/-! ## A239052.P14782888268667976720

`3/2*A005880(n)`
-/

namespace A239052.P14782888268667976720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A005880 n : ℚ)

end

end A239052.P14782888268667976720

namespace A239052

/-- `3/2*A005880(n)` -/
def P14782888268667976720.Spec : Prop :=
  ∀ n, P14782888268667976720.a n = (A239052 (n + 1) : ℚ)

end A239052

/-! ## A239052.P1860917219363703399

`3*A000203(Δ[n²])`
-/

namespace A239052.P1860917219363703399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000203 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A239052.P1860917219363703399

namespace A239052

/-- `3*A000203(Δ[n²])` -/
def P1860917219363703399.Spec : Prop :=
  ∀ n, P1860917219363703399.a n = A239052 (n + 1)

end A239052

/-! ## A239052.P16390431826631398482

`3*A115607(2*n+1)`
-/

namespace A239052.P16390431826631398482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A115607 (2 * n + 1)

end

end A239052.P16390431826631398482

namespace A239052

/-- `3*A115607(2*n+1)` -/
def P16390431826631398482.Spec : Prop :=
  ∀ n, P16390431826631398482.a n = A239052 (n + 1)

end A239052

/-! ## A239052.P7299637153837504404

`A000203(Δ[n*2*n])-and(1, 2*n)`
-/

namespace A239052.P7299637153837504404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (Nat.land 1 (2 * n) : ℤ)

end

end A239052.P7299637153837504404

namespace A239052

/-- `A000203(Δ[n*2*n])-and(1, 2*n)` -/
def P7299637153837504404.Spec : Prop :=
  ∀ n, P7299637153837504404.a n = A239052 (n + 1)

end A239052

/-! ## A239052.P12608998740589004726

`A008438(n)+A005880(n)`
-/

namespace A239052.P12608998740589004726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 n + A005880 n

end

end A239052.P12608998740589004726

namespace A239052

/-- `A008438(n)+A005880(n)` -/
def P12608998740589004726.Spec : Prop :=
  ∀ n, P12608998740589004726.a n = A239052 (n + 1)

end A239052

/-! ## A239052.P6013584439503668227

`A121613(n)*A174971(n)`
-/

namespace A239052.P6013584439503668227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121613 n * A174971 n

end

end A239052.P6013584439503668227

namespace A239052

/-- `A121613(n)*A174971(n)` -/
def P6013584439503668227.Spec : Prop :=
  ∀ n, P6013584439503668227.a n = A239052 (n + 1)

end A239052

/-! ## A239052.P9184817584989232790

`3*A069184(2*n+1)`
-/

namespace A239052.P9184817584989232790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A069184 (2 * n + 1)

end

end A239052.P9184817584989232790

namespace A239052

/-- `3*A069184(2*n+1)` -/
def P9184817584989232790.Spec : Prop :=
  ∀ n, P9184817584989232790.a n = A239052 (n + 1)

end A239052

/-! ## A239052.P17883006451966278187

`filter[A062731(2*n+1), A117567(#)]`
-/

namespace A239052.P17883006451966278187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062731 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A117567 (f1 j).toNat = 1) n)

end

end A239052.P17883006451966278187

namespace A239052

/-- `filter[A062731(2*n+1), A117567(#)]` -/
def P17883006451966278187.Spec : Prop :=
  ∀ n, P17883006451966278187.a n = A239052 (n + 1)

end A239052

/-! ## A239052.P16889092761319484040

`A000203(A051062(n))/5`
-/

namespace A239052.P16889092761319484040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A051062 n).toNat : ℚ) / 5

end

end A239052.P16889092761319484040

namespace A239052

/-- `A000203(A051062(n))/5` -/
def P16889092761319484040.Spec : Prop :=
  ∀ n, P16889092761319484040.a n = (A239052 (n + 1) : ℚ)

end A239052

/-! ## A239052.P16148470019651652704

`filter[A062731(2*n+1), A093719(#)]`
-/

namespace A239052.P16148470019651652704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062731 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A239052.P16148470019651652704

namespace A239052

/-- `filter[A062731(2*n+1), A093719(#)]` -/
def P16148470019651652704.Spec : Prop :=
  ∀ n, P16148470019651652704.a n = A239052 (n + 1)

end A239052

/-! ## A239052.P5632884839331578097

`filter[A062731(2*n+1), A175192(#)]`
-/

namespace A239052.P5632884839331578097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062731 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175192 (f1 j).toNat = 1) n)

end

end A239052.P5632884839331578097

namespace A239052

/-- `filter[A062731(2*n+1), A175192(#)]` -/
def P5632884839331578097.Spec : Prop :=
  ∀ n, P5632884839331578097.a n = A239052 (n + 1)

end A239052

/-! ## A239052.P4189752191171072902

`A272027(Δ[n²])`
-/

namespace A239052.P4189752191171072902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272027 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A239052.P4189752191171072902

namespace A239052

/-- `A272027(Δ[n²])` -/
def P4189752191171072902.Spec : Prop :=
  ∀ n, P4189752191171072902.a n = A239052 (n + 1)

end A239052

/-! ## A239052.P8187129206663788087

`A002660(Δ[n²])+2`
-/

namespace A239052.P8187129206663788087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002660 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A239052.P8187129206663788087

namespace A239052

/-- `A002660(Δ[n²])+2` -/
def P8187129206663788087.Spec : Prop :=
  ∀ n, P8187129206663788087.a n = A239052 (n + 1)

end A239052

/-!
# A239053: Sum of divisors of 4*n-1.

The programs for A239053, the canonical program `A239053.P13241166166120264042` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239053 has offset 1).

The definition of A239053 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239053.P13241166166120264042

`4*A097723(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A239053

/-- `4*A097723(n)` -/
def P13241166166120264042.Spec : Prop :=
  ∀ n, P13241166166120264042.a n = A239053 (n + 1)

theorem P13241166166120264042.correct : P13241166166120264042.Spec := by
  intro n
  simp only [A239053, Nat.add_sub_cancel]

end A239053

/-! ## A239053.P11337368928804631693

`A000203(4*(n+1)-1)`
-/

namespace A239053.P11337368928804631693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (4 * (n + 1) - 1)

end

end A239053.P11337368928804631693

namespace A239053

/-- `A000203(4*(n+1)-1)` -/
def P11337368928804631693.Spec : Prop :=
  ∀ n, P11337368928804631693.a n = A239053 (n + 1)

end A239053

/-! ## A239053.P7129400096793729239

`∑{d}[record[xor(3, n)], #]`
-/

namespace A239053.P7129400096793729239
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A239053.P7129400096793729239

namespace A239053

/-- `∑{d}[record[xor(3, n)], #]` -/
def P7129400096793729239.Spec : Prop :=
  ∀ n, (P7129400096793729239.a n : ℤ) = A239053 (n + 1)

end A239053

/-! ## A239053.P9129001628769356026

`∑{d}[4*n+3, #]`
-/

namespace A239053.P9129001628769356026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A239053.P9129001628769356026

namespace A239053

/-- `∑{d}[4*n+3, #]` -/
def P9129001628769356026.Spec : Prop :=
  ∀ n, (P9129001628769356026.a n : ℤ) = A239053 (n + 1)

end A239053

/-! ## A239053.P12882258154900030722

`A008438(Δ[n²])`
-/

namespace A239053.P12882258154900030722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A239053.P12882258154900030722

namespace A239053

/-- `A008438(Δ[n²])` -/
def P12882258154900030722.Spec : Prop :=
  ∀ n, P12882258154900030722.a n = A239053 (n + 1)

end A239053

/-! ## A239053.P14292288127032829878

`lcm(2, A008438(2*n+1))`
-/

namespace A239053.P14292288127032829878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A008438 (2 * n + 1))

end

end A239053.P14292288127032829878

namespace A239053

/-- `lcm(2, A008438(2*n+1))` -/
def P14292288127032829878.Spec : Prop :=
  ∀ n, (P14292288127032829878.a n : ℤ) = A239053 (n + 1)

end A239053

/-! ## A239053.P2140737575668390573

`A000203(or(6, 8*n))/3`
-/

namespace A239053.P2140737575668390573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (Nat.lor 6 (8 * n)) : ℚ) / 3

end

end A239053.P2140737575668390573

namespace A239053

/-- `A000203(or(6, 8*n))/3` -/
def P2140737575668390573.Spec : Prop :=
  ∀ n, P2140737575668390573.a n = (A239053 (n + 1) : ℚ)

end A239053

/-! ## A239053.P6409778299580776933

`A000203(xor(6, 8*n))/3`
-/

namespace A239053.P6409778299580776933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (Nat.xor 6 (8 * n)) : ℚ) / 3

end

end A239053.P6409778299580776933

namespace A239053

/-- `A000203(xor(6, 8*n))/3` -/
def P6409778299580776933.Spec : Prop :=
  ∀ n, P6409778299580776933.a n = (A239053 (n + 1) : ℚ)

end A239053

/-! ## A239053.P15133620352568679515

`lcm(4, A000203(xor(3, 4*n)))`
-/

namespace A239053.P15133620352568679515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A000203 (Nat.xor 3 (4 * n)))

end

end A239053.P15133620352568679515

namespace A239053

/-- `lcm(4, A000203(xor(3, 4*n)))` -/
def P15133620352568679515.Spec : Prop :=
  ∀ n, (P15133620352568679515.a n : ℤ) = A239053 (n + 1)

end A239053

/-! ## A239053.P16416583523888182014

`A000027(∑{d}[or(3, 4*n), #])`
-/

namespace A239053.P16416583523888182014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A239053.P16416583523888182014

namespace A239053

/-- `A000027(∑{d}[or(3, 4*n), #])` -/
def P16416583523888182014.Spec : Prop :=
  ∀ n, P16416583523888182014.a n = A239053 (n + 1)

end A239053

/-! ## A239053.P3280507384849304754

`A000203(A017137(n))/3`
-/

namespace A239053.P3280507384849304754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A017137 n).toNat : ℚ) / 3

end

end A239053.P3280507384849304754

namespace A239053

/-- `A000203(A017137(n))/3` -/
def P3280507384849304754.Spec : Prop :=
  ∀ n, P3280507384849304754.a n = (A239053 (n + 1) : ℚ)

end A239053

/-! ## A239053.P17306092173130862914

`A000027(A000203(or(3, 4*n)))`
-/

namespace A239053.P17306092173130862914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000203 (Nat.lor 3 (4 * n))).toNat

end

end A239053.P17306092173130862914

namespace A239053

/-- `A000027(A000203(or(3, 4*n)))` -/
def P17306092173130862914.Spec : Prop :=
  ∀ n, P17306092173130862914.a n = A239053 (n + 1)

end A239053

/-! ## A239053.P12672354215372138908

`A363359(n+1)+A363291(n+1)`
-/

namespace A239053.P12672354215372138908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363359 (n + 1) + A363291 (n + 1)

end

end A239053.P12672354215372138908

namespace A239053

/-- `A363359(n+1)+A363291(n+1)` -/
def P12672354215372138908.Spec : Prop :=
  ∀ n, P12672354215372138908.a n = A239053 (n + 1)

end A239053

/-! ## A239053.P11794742914317188553

`filter[A008438(2*n+1), A005171(#)]`
-/

namespace A239053.P11794742914317188553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A239053.P11794742914317188553

namespace A239053

/-- `filter[A008438(2*n+1), A005171(#)]` -/
def P11794742914317188553.Spec : Prop :=
  ∀ n, P11794742914317188553.a n = A239053 (n + 1)

end A239053

/-! ## A239053.P3142407187795552387

`filter[A008438(2*n+1), A066247(#)]`
-/

namespace A239053.P3142407187795552387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A239053.P3142407187795552387

namespace A239053

/-- `filter[A008438(2*n+1), A066247(#)]` -/
def P3142407187795552387.Spec : Prop :=
  ∀ n, P3142407187795552387.a n = A239053 (n + 1)

end A239053

/-! ## A239053.P11435632892651243773

`filter[A008438(2*n+1), A073089(#)]`
-/

namespace A239053.P11435632892651243773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A073089 (f1 j).toNat = 1) n)

end

end A239053.P11435632892651243773

namespace A239053

/-- `filter[A008438(2*n+1), A073089(#)]` -/
def P11435632892651243773.Spec : Prop :=
  ∀ n, P11435632892651243773.a n = A239053 (n + 1)

end A239053

/-! ## A239053.P2867755205182147107

`filter[A008438(2*n+1), A087049(#)]`
-/

namespace A239053.P2867755205182147107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A239053.P2867755205182147107

namespace A239053

/-- `filter[A008438(2*n+1), A087049(#)]` -/
def P2867755205182147107.Spec : Prop :=
  ∀ n, P2867755205182147107.a n = A239053 (n + 1)

end A239053

/-! ## A239053.P11996589253391743775

`filter[A008438(2*n+1), A091247(#)]`
-/

namespace A239053.P11996589253391743775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A239053.P11996589253391743775

namespace A239053

/-- `filter[A008438(2*n+1), A091247(#)]` -/
def P11996589253391743775.Spec : Prop :=
  ∀ n, P11996589253391743775.a n = A239053 (n + 1)

end A239053

/-!
# A239054: Maximum of the partition function on the set of all partitions of n.

The programs for A239054, there is no canonical definition to state claims against.
-/

/-! ## A239054.P14642450167751816128

`A239314(n+1)+record[A173238(n)]`
-/

namespace A239054.P14642450167751816128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239314 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239054.P14642450167751816128

/-! ## A239054.P2503039900619125242

`A239314(n+1)+A000041(n+1)`
-/

namespace A239054.P2503039900619125242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239314 (n + 1) + A000041 (n + 1)

end

end A239054.P2503039900619125242

/-! ## A239054.P17960803081866472159

`A239314(n+1)+∑[A187219(n+1)]`
-/

namespace A239054.P17960803081866472159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239314 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239054.P17960803081866472159

/-! ## A239054.P16792003248790946979

`A239314(n+1)+record[A300383(n+1)]`
-/

namespace A239054.P16792003248790946979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239314 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239054.P16792003248790946979

/-! ## A239054.P6180105966061703290

`A239314(n+1)+record[A354234(n+1)]`
-/

namespace A239054.P6180105966061703290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239314 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239054.P6180105966061703290

/-!
# A239056: Sum of the parts in the partitions of 4n into 4 parts with smallest part = 1.

The programs for A239056, the canonical program `A239056.P13225973301136613556` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239056 has offset 1).

The definition of A239056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239056.P13225973301136613556

`4*(n+1)*∑[comp[ceil(8*n/5)]]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A239056

/-- `4*(n+1)*∑[comp[ceil(8*n/5)]]` -/
def P13225973301136613556.Spec : Prop :=
  ∀ n, (P13225973301136613556.a n : ℤ) = A239056 (n + 1)

theorem P13225973301136613556.correct : P13225973301136613556.Spec := by
  intro n
  simp only [A239056, Nat.add_sub_cancel]

end A239056

/-! ## A239056.P9529997064841290568

`A239057(n+1)+ceil((n+1)*(4*n+2)/3)`
-/

namespace A239056.P9529997064841290568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239057 (n + 1) + ⌈((n + 1) * (4 * n + 2) : ℚ) / 3⌉

end

end A239056.P9529997064841290568

namespace A239056

/-- `A239057(n+1)+ceil((n+1)*(4*n+2)/3)` -/
def P9529997064841290568.Spec : Prop :=
  ∀ n, P9529997064841290568.a n = A239056 (n + 1)

end A239056

/-! ## A239056.P6963904996068750173

`A239186(n+1)+A239059(n+1)`
-/

namespace A239056.P6963904996068750173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239186 (n + 1) + A239059 (n + 1)

end

end A239056.P6963904996068750173

namespace A239056

/-- `A239186(n+1)+A239059(n+1)` -/
def P6963904996068750173.Spec : Prop :=
  ∀ n, P6963904996068750173.a n = A239056 (n + 1)

end A239056

/-! ## A239056.P12179624910477900944

`abs(A239057(n+1)+∑[A047539(n+1)-1])`
-/

namespace A239056.P12179624910477900944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047539 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A239057 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A239056.P12179624910477900944

namespace A239056

/-- `abs(A239057(n+1)+∑[A047539(n+1)-1])` -/
def P12179624910477900944.Spec : Prop :=
  ∀ n, P12179624910477900944.a n = A239056 (n + 1)

end A239056

/-! ## A239056.P8437820228752380946

`A239059(n+1)+A240711(n+1)+A240707(n+1)`
-/

namespace A239056.P8437820228752380946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239059 (n + 1) + (A240711 (n + 1) + A240707 (n + 1))

end

end A239056.P8437820228752380946

namespace A239056

/-- `A239059(n+1)+A240711(n+1)+A240707(n+1)` -/
def P8437820228752380946.Spec : Prop :=
  ∀ n, P8437820228752380946.a n = A239056 (n + 1)

end A239056

/-! ## A239056.P8112062402240823909

`A238702(n+1)+A239057(n+1)-A238706(n+1)`
-/

namespace A239056.P8112062402240823909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238702 (n + 1) + (A239057 (n + 1) - A238706 (n + 1))

end

end A239056.P8112062402240823909

namespace A239056

/-- `A238702(n+1)+A239057(n+1)-A238706(n+1)` -/
def P8112062402240823909.Spec : Prop :=
  ∀ n, P8112062402240823909.a n = A239056 (n + 1)

end A239056

/-! ## A239056.P10528816807270385796

`A238328(n+1)*A238705(n+1)/∑[A238705(n+1)]`
-/

namespace A239056.P10528816807270385796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238705 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238328 (n + 1) * A238705 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A239056.P10528816807270385796

namespace A239056

/-- `A238328(n+1)*A238705(n+1)/∑[A238705(n+1)]` -/
def P10528816807270385796.Spec : Prop :=
  ∀ n, P10528816807270385796.a n = (A239056 (n + 1) : ℚ)

end A239056

/-! ## A239056.P571457566894766028

`abs(A239057(n+1)+∑[A047480(n+2)-4])`
-/

namespace A239056.P571457566894766028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047480 (n + 2) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A239057 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A239056.P571457566894766028

namespace A239056

/-- `abs(A239057(n+1)+∑[A047480(n+2)-4])` -/
def P571457566894766028.Spec : Prop :=
  ∀ n, P571457566894766028.a n = A239056 (n + 1)

end A239056

/-! ## A239056.P5206877654098599545

`record[A007980(n)*A008574(A028242(n))]`
-/

namespace A239056.P5206877654098599545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n * A008574 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239056.P5206877654098599545

namespace A239056

/-- `record[A007980(n)*A008574(A028242(n))]` -/
def P5206877654098599545.Spec : Prop :=
  ∀ n, P5206877654098599545.a n = A239056 (n + 1)

end A239056

/-! ## A239056.P7312610480128011213

`A260253(4*n+3)+A239057(n+1)`
-/

namespace A239056.P7312610480128011213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260253 (4 * n + 3) + A239057 (n + 1)

end

end A239056.P7312610480128011213

namespace A239056

/-- `A260253(4*n+3)+A239057(n+1)` -/
def P7312610480128011213.Spec : Prop :=
  ∀ n, P7312610480128011213.a n = A239056 (n + 1)

end A239056

/-! ## A239056.P453413346098501038

`A266755(8*n)+A239057(n+1)`
-/

namespace A239056.P453413346098501038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 (8 * n) + A239057 (n + 1)

end

end A239056.P453413346098501038

namespace A239056

/-- `A266755(8*n)+A239057(n+1)` -/
def P453413346098501038.Spec : Prop :=
  ∀ n, P453413346098501038.a n = A239056 (n + 1)

end A239056

/-!
# A239057: Sum of the parts in the partitions of 4n into 4 parts with smallest part equal to 1 minus the number of these partitions.

The programs for A239057, the canonical program `A239057.P3481581294101736723` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239057 has offset 1).

The definition of A239057 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A239056, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A239057.P3481581294101736723

`A239056(n+1)-A238705(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A239057

/-- `A239056(n+1)-A238705(n+1)` -/
def P3481581294101736723.Spec : Prop :=
  ∀ n, P3481581294101736723.a n = A239057 (n + 1)

theorem P3481581294101736723.correct : P3481581294101736723.Spec := by
  intro n
  simp only [A239057, Nat.add_sub_cancel]

end A239057

/-! ## A239057.P3022927380536100835

`round((4*n+3)²/12)*record[xor(3, n)]`
-/

namespace A239057.P3022927380536100835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((4 * n + 3) ^ 2 : ℚ) / 12) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A239057.P3022927380536100835

namespace A239057

/-- `round((4*n+3)²/12)*record[xor(3, n)]` -/
def P3022927380536100835.Spec : Prop :=
  ∀ n, P3022927380536100835.a n = A239057 (n + 1)

end A239057

/-! ## A239057.P9068223233522439350

`A004767(n)*A238705(n+1)`
-/

namespace A239057.P9068223233522439350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n * A238705 (n + 1)

end

end A239057.P9068223233522439350

namespace A239057

/-- `A004767(n)*A238705(n+1)` -/
def P9068223233522439350.Spec : Prop :=
  ∀ n, P9068223233522439350.a n = A239057 (n + 1)

end A239057

/-! ## A239057.P14816200133615006227

`A239195(n+1)+A239186(n+1)`
-/

namespace A239057.P14816200133615006227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239195 (n + 1) + A239186 (n + 1)

end

end A239057.P14816200133615006227

namespace A239057

/-- `A239195(n+1)+A239186(n+1)` -/
def P14816200133615006227.Spec : Prop :=
  ∀ n, P14816200133615006227.a n = A239057 (n + 1)

end A239057

/-! ## A239057.P16115867314243006255

`A239056(n+1)-∑[A047539(n+1)-1]`
-/

namespace A239057.P16115867314243006255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047539 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239056 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239057.P16115867314243006255

namespace A239057

/-- `A239056(n+1)-∑[A047539(n+1)-1]` -/
def P16115867314243006255.Spec : Prop :=
  ∀ n, P16115867314243006255.a n = A239057 (n + 1)

end A239057

/-! ## A239057.P14136881039321123777

`A239056(n+1)-(A256320(n)+1+n+n)`
-/

namespace A239057.P14136881039321123777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239056 (n + 1) - (A256320 n + 1 + (n : ℤ) + (n : ℤ))

end

end A239057.P14136881039321123777

namespace A239057

/-- `A239056(n+1)-(A256320(n)+1+n+n)` -/
def P14136881039321123777.Spec : Prop :=
  ∀ n, P14136881039321123777.a n = A239057 (n + 1)

end A239057

/-! ## A239057.P8104056508154825232

`A239195(n+1)+A240711(n+1)+A240707(n+1)`
-/

namespace A239057.P8104056508154825232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239195 (n + 1) + (A240711 (n + 1) + A240707 (n + 1))

end

end A239057.P8104056508154825232

namespace A239057

/-- `A239195(n+1)+A240711(n+1)+A240707(n+1)` -/
def P8104056508154825232.Spec : Prop :=
  ∀ n, P8104056508154825232.a n = A239057 (n + 1)

end A239057

/-! ## A239057.P13656461315942375399

`A238706(n+1)+A239056(n+1)-A238702(n+1)`
-/

namespace A239057.P13656461315942375399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238706 (n + 1) + (A239056 (n + 1) - A238702 (n + 1))

end

end A239057.P13656461315942375399

namespace A239057

/-- `A238706(n+1)+A239056(n+1)-A238702(n+1)` -/
def P13656461315942375399.Spec : Prop :=
  ∀ n, P13656461315942375399.a n = A239057 (n + 1)

end A239057

/-! ## A239057.P5244670166339396262

`A239059(n+1)+A239186(n+1)-A238705(n+1)`
-/

namespace A239057.P5244670166339396262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239059 (n + 1) + (A239186 (n + 1) - A238705 (n + 1))

end

end A239057.P5244670166339396262

namespace A239057

/-- `A239059(n+1)+A239186(n+1)-A238705(n+1)` -/
def P5244670166339396262.Spec : Prop :=
  ∀ n, P5244670166339396262.a n = A239057 (n + 1)

end A239057

/-! ## A239057.P7060472206958994826

`A239056(n+1)+A239195(n+1)-A239059(n+1)`
-/

namespace A239057.P7060472206958994826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239056 (n + 1) + (A239195 (n + 1) - A239059 (n + 1))

end

end A239057.P7060472206958994826

namespace A239057

/-- `A239056(n+1)+A239195(n+1)-A239059(n+1)` -/
def P7060472206958994826.Spec : Prop :=
  ∀ n, P7060472206958994826.a n = A239057 (n + 1)

end A239057

/-! ## A239057.P13464870334688376864

`A239056(n+1)-∑[A047480(n+2)-4]`
-/

namespace A239057.P13464870334688376864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047480 (n + 2) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239056 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239057.P13464870334688376864

namespace A239057

/-- `A239056(n+1)-∑[A047480(n+2)-4]` -/
def P13464870334688376864.Spec : Prop :=
  ∀ n, P13464870334688376864.a n = A239057 (n + 1)

end A239057

/-! ## A239057.P18013466021173036449

`(4*n+3)*A007980(2*n)`
-/

namespace A239057.P18013466021173036449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 3 : ℤ) * A007980 (2 * n)

end

end A239057.P18013466021173036449

namespace A239057

/-- `(4*n+3)*A007980(2*n)` -/
def P18013466021173036449.Spec : Prop :=
  ∀ n, P18013466021173036449.a n = A239057 (n + 1)

end A239057

/-! ## A239057.P444141564493932026

`(A281333(2*n)+n)*(4*n+3)`
-/

namespace A239057.P444141564493932026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A281333 (2 * n) + (n : ℤ)) * (4 * n + 3 : ℤ)

end

end A239057.P444141564493932026

namespace A239057

/-- `(A281333(2*n)+n)*(4*n+3)` -/
def P444141564493932026.Spec : Prop :=
  ∀ n, P444141564493932026.a n = A239057 (n + 1)

end A239057

/-! ## A239057.P8519633921363332042

`A239056(n+1)-A007980(2*n)`
-/

namespace A239057.P8519633921363332042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239056 (n + 1) - A007980 (2 * n)

end

end A239057.P8519633921363332042

namespace A239057

/-- `A239056(n+1)-A007980(2*n)` -/
def P8519633921363332042.Spec : Prop :=
  ∀ n, P8519633921363332042.a n = A239057 (n + 1)

end A239057

/-! ## A239057.P207566627217541737

`A239056(n+1)-∑[A047498(2*n+1)+1]`
-/

namespace A239057.P207566627217541737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047498 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239056 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239057.P207566627217541737

namespace A239057

/-- `A239056(n+1)-∑[A047498(2*n+1)+1]` -/
def P207566627217541737.Spec : Prop :=
  ∀ n, P207566627217541737.a n = A239057 (n + 1)

end A239057

/-! ## A239057.P628154008747918087

`A239056(n+1)-∑[A002264(2*(n+1)+1)+2*n]`
-/

namespace A239057.P628154008747918087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * (n + 1) + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239056 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239057.P628154008747918087

namespace A239057

/-- `A239056(n+1)-∑[A002264(2*(n+1)+1)+2*n]` -/
def P628154008747918087.Spec : Prop :=
  ∀ n, P628154008747918087.a n = A239057 (n + 1)

end A239057

/-! ## A239057.P17906429438349354566

`A001399(4*n)*(4*n+3)`
-/

namespace A239057.P17906429438349354566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (4 * n) * (4 * n + 3 : ℤ)

end

end A239057.P17906429438349354566

namespace A239057

/-- `A001399(4*n)*(4*n+3)` -/
def P17906429438349354566.Spec : Prop :=
  ∀ n, P17906429438349354566.a n = A239057 (n + 1)

end A239057

/-! ## A239057.P16036560379295213070

`(4*n+3)*A001399(A008574(n))`
-/

namespace A239057.P16036560379295213070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 3 : ℤ) * A001399 (A008574 n).toNat

end

end A239057.P16036560379295213070

namespace A239057

/-- `(4*n+3)*A001399(A008574(n))` -/
def P16036560379295213070.Spec : Prop :=
  ∀ n, P16036560379295213070.a n = A239057 (n + 1)

end A239057

/-! ## A239057.P13661517897505581520

`A350042(3*(n+1)+n)`
-/

namespace A239057.P13661517897505581520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350042 (3 * (n + 1) + n)

end

end A239057.P13661517897505581520

namespace A239057

/-- `A350042(3*(n+1)+n)` -/
def P13661517897505581520.Spec : Prop :=
  ∀ n, P13661517897505581520.a n = A239057 (n + 1)

end A239057

/-!
# A239058: Numbers whose divisors all appear as a substring in their decimal expansion.

The programs for A239058, there is no canonical definition to state claims against.
-/

/-! ## A239058.P4681604242358836567

`∩[A055977(n+1), A092911(n+1)]`
-/

namespace A239058.P4681604242358836567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239058.P4681604242358836567

/-! ## A239058.P10926556573836804428

`∩[A055977(n+1), A092912(n+1)]`
-/

namespace A239058.P10926556573836804428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239058.P10926556573836804428

/-! ## A239058.P17010375357420565834

`∩[A092911(n+1), A130073(n+1)]`
-/

namespace A239058.P17010375357420565834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239058.P17010375357420565834

/-! ## A239058.P1865992406529099969

`∩[A092912(n+1), A130073(n+1)]`
-/

namespace A239058.P1865992406529099969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239058.P1865992406529099969

/-! ## A239058.P15561920950680676661

`∩[A063752(n+1), A092911(n+1)]`
-/

namespace A239058.P15561920950680676661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239058.P15561920950680676661

/-! ## A239058.P15742535037681279468

`∩[A092911(n+1), A102553(n+1)]`
-/

namespace A239058.P15742535037681279468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239058.P15742535037681279468

/-! ## A239058.P210258812030649741

`filter[A092911(n+1), A174897(#)]`
-/

namespace A239058.P210258812030649741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A239058.P210258812030649741

/-! ## A239058.P2335071380291187330

`filter[A092912(n+1), A174897(#)]`
-/

namespace A239058.P2335071380291187330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A239058.P2335071380291187330

/-! ## A239058.P15158193201579444223

`filter[A092911(n+1), A325321(#)]`
-/

namespace A239058.P15158193201579444223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325321 (f1 j).toNat = 1) n)

end

end A239058.P15158193201579444223

/-! ## A239058.P13809210804242188534

`∩[A375960(n+1), A092911(n+1)]`
-/

namespace A239058.P13809210804242188534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239058.P13809210804242188534

/-! ## A239058.P15455669219035523077

`∩[A092911(n+1), A100959(n+1)]`
-/

namespace A239058.P15455669219035523077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239058.P15455669219035523077

/-! ## A239058.P7298989230809218831

`filter[A092911(n+1), A190938(#)]`
-/

namespace A239058.P7298989230809218831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190938 (f1 j).toNat = 1) n)

end

end A239058.P7298989230809218831

/-! ## A239058.P1323813510155041946

`eq[A000005(n+1), A121041(n+1)]+1`
-/

namespace A239058.P1323813510155041946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121041 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A239058.P1323813510155041946

/-! ## A239058.P16289977390595343178

`eq[A048272(n+1), A121041(n+1)]+1`
-/

namespace A239058.P16289977390595343178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121041 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A239058.P16289977390595343178

/-! ## A239058.P12283476156856074106

`A109613(eq[A048272(n+1), A121041(n+1)])`
-/

namespace A239058.P12283476156856074106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A239058.P12283476156856074106

/-! ## A239058.P6791667783768240649

`∩[A092911(n+1), A174895(n+1)]`
-/

namespace A239058.P6791667783768240649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239058.P6791667783768240649

/-! ## A239058.P12544322521668992790

`∩[A092912(n+1), A174895(n+1)]`
-/

namespace A239058.P12544322521668992790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239058.P12544322521668992790

/-!
# A239059: Sum of the two smallest parts from the partitions of 4n into 4 parts with smallest part = 1.

The programs for A239059, the canonical program `A239059.P17968933749774508671` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239059 has offset 1).

The definition of A239059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239059.P17968933749774508671

`A239195(n+1)+A238705(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A239059

/-- `A239195(n+1)+A238705(n+1)` -/
def P17968933749774508671.Spec : Prop :=
  ∀ n, P17968933749774508671.a n = A239059 (n + 1)

theorem P17968933749774508671.correct : P17968933749774508671.Spec := by
  intro n
  simp only [A239059, Nat.add_sub_cancel]

end A239059

/-! ## A239059.P2991087324031160752

`A239056(n+1)-A239186(n+1)`
-/

namespace A239059.P2991087324031160752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239056 (n + 1) - A239186 (n + 1)

end

end A239059.P2991087324031160752

namespace A239059

/-- `A239056(n+1)-A239186(n+1)` -/
def P2991087324031160752.Spec : Prop :=
  ∀ n, P2991087324031160752.a n = A239059 (n + 1)

end A239059

/-! ## A239059.P3066034659262256106

`A238702(n+1)+A239195(n+1)-A238706(n+1)`
-/

namespace A239059.P3066034659262256106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238702 (n + 1) + (A239195 (n + 1) - A238706 (n + 1))

end

end A239059.P3066034659262256106

namespace A239059

/-- `A238702(n+1)+A239195(n+1)-A238706(n+1)` -/
def P3066034659262256106.Spec : Prop :=
  ∀ n, P3066034659262256106.a n = A239059 (n + 1)

end A239059

/-! ## A239059.P9902486721576206543

`A238705(n+1)+A239057(n+1)-A239186(n+1)`
-/

namespace A239059.P9902486721576206543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238705 (n + 1) + (A239057 (n + 1) - A239186 (n + 1))

end

end A239059.P9902486721576206543

namespace A239059

/-- `A238705(n+1)+A239057(n+1)-A239186(n+1)` -/
def P9902486721576206543.Spec : Prop :=
  ∀ n, P9902486721576206543.a n = A239059 (n + 1)

end A239059

/-! ## A239059.P17959035529073282031

`A239056(n+1)+A239195(n+1)-A239057(n+1)`
-/

namespace A239059.P17959035529073282031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239056 (n + 1) + (A239195 (n + 1) - A239057 (n + 1))

end

end A239059.P17959035529073282031

namespace A239059

/-- `A239056(n+1)+A239195(n+1)-A239057(n+1)` -/
def P17959035529073282031.Spec : Prop :=
  ∀ n, P17959035529073282031.a n = A239059 (n + 1)

end A239059

/-! ## A239059.P7092619851323027100

`A239056(n+1)-(A240711(n+1)+A240707(n+1))`
-/

namespace A239059.P7092619851323027100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239056 (n + 1) - (A240711 (n + 1) + A240707 (n + 1))

end

end A239059.P7092619851323027100

namespace A239059

/-- `A239056(n+1)-(A240711(n+1)+A240707(n+1))` -/
def P7092619851323027100.Spec : Prop :=
  ∀ n, P7092619851323027100.a n = A239059 (n + 1)

end A239059

/-! ## A239059.P1435942731414021234

`∑[A004772(n+2)*A042968(n+2)-2]`
-/

namespace A239059.P1435942731414021234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004772 (n + 2) * A042968 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239059.P1435942731414021234

namespace A239059

/-- `∑[A004772(n+2)*A042968(n+2)-2]` -/
def P1435942731414021234.Spec : Prop :=
  ∀ n, P1435942731414021234.a n = A239059 (n + 1)

end A239059

/-! ## A239059.P2488596988437853253

`A038391(2*n+1)-2*(n+1)`
-/

namespace A239059.P2488596988437853253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038391 (2 * n + 1) - (2 * (n + 1) : ℤ)

end

end A239059.P2488596988437853253

namespace A239059

/-- `A038391(2*n+1)-2*(n+1)` -/
def P2488596988437853253.Spec : Prop :=
  ∀ n, P2488596988437853253.a n = A239059 (n + 1)

end A239059

/-! ## A239059.P13861426644124790120

`A239195(n+1)+A007980(2*n)`
-/

namespace A239059.P13861426644124790120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239195 (n + 1) + A007980 (2 * n)

end

end A239059.P13861426644124790120

namespace A239059

/-- `A239195(n+1)+A007980(2*n)` -/
def P13861426644124790120.Spec : Prop :=
  ∀ n, P13861426644124790120.a n = A239059 (n + 1)

end A239059

/-! ## A239059.P15491330702958318957

`∑[A054925(A008576(n+1))+2*n]`
-/

namespace A239059.P15491330702958318957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 (A008576 (n + 1)).toNat + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239059.P15491330702958318957

namespace A239059

/-- `∑[A054925(A008576(n+1))+2*n]` -/
def P15491330702958318957.Spec : Prop :=
  ∀ n, P15491330702958318957.a n = A239059 (n + 1)

end A239059

/-! ## A239059.P18066935496112010368

`∑[A014616(A274616(A016813(n)))]`
-/

namespace A239059.P18066935496112010368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014616 (A274616 (A016813 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239059.P18066935496112010368

namespace A239059

/-- `∑[A014616(A274616(A016813(n)))]` -/
def P18066935496112010368.Spec : Prop :=
  ∀ n, P18066935496112010368.a n = A239059 (n + 1)

end A239059

/-! ## A239059.P2161423975115134740

`∑[A184674(A002264(A017137(n)))]`
-/

namespace A239059.P2161423975115134740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184674 (A002264 (A017137 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239059.P2161423975115134740

namespace A239059

/-- `∑[A184674(A002264(A017137(n)))]` -/
def P2161423975115134740.Spec : Prop :=
  ∀ n, P2161423975115134740.a n = A239059 (n + 1)

end A239059

/-!
# A239061: Number of integers x, 1 <= x <= n, such that x^x == 1 (mod n).

The programs for A239061, there is no canonical definition to state claims against.
-/

/-! ## A239061.P13509583103512434888

`gcd(A006390(n), A194883(A309469(n)))`
-/

namespace A239061.P13509583103512434888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006390 n) (A194883 (A309469 n).toNat)

end

end A239061.P13509583103512434888

/-! ## A239061.P14563114444553580776

`A299905(n)+A001221(A286165(n+1))`
-/

namespace A239061.P14563114444553580776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299905 n + A001221 (A286165 (n + 1)).toNat

end

end A239061.P14563114444553580776

/-! ## A239061.P3157147616818720442

`A001221(A329767(n)+A284041(n+1))`
-/

namespace A239061.P3157147616818720442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A329767 n + A284041 (n + 1)).toNat

end

end A239061.P3157147616818720442

/-! ## A239061.P3566829539635271798

`gcd(A001222(A006748(n+7)), A151522(n+5))`
-/

namespace A239061.P3566829539635271798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A006748 (n + 7)).toNat) (A151522 (n + 5))

end

end A239061.P3566829539635271798

/-! ## A239061.P4510013295763458236

`A001876(A265458(n+1)+A130248(3*n+1))`
-/

namespace A239061.P4510013295763458236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (A265458 (n + 1) + A130248 (3 * n + 1)).toNat

end

end A239061.P4510013295763458236

/-!
# A239062: Number of integers x, 1 <= x <= n, such that x^x == 0 (mod n).

The programs for A239062, there is no canonical definition to state claims against.
-/

/-! ## A239062.P16999734564537659182

`A003557(n+1)-A335510(A267508(n+1))`
-/

namespace A239062.P16999734564537659182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) - A335510 (A267508 (n + 1)).toNat

end

end A239062.P16999734564537659182

/-! ## A239062.P1764567895063272883

`A000005(gcd(A000740(n+1), A302254(n)))`
-/

namespace A239062.P1764567895063272883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A000740 (n + 1)) (A302254 n))

end

end A239062.P1764567895063272883

/-! ## A239062.P8260835065834904791

`A003557(n+1)-A045698(A096076(n))`
-/

namespace A239062.P8260835065834904791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) - A045698 (A096076 n).toNat

end

end A239062.P8260835065834904791

/-! ## A239062.P2113590423591051645

`(n+1)/∏{p}[n+1, #]-A000007(A077815(2*(n+1)))`
-/

namespace A239062.P2113590423591051645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) - (A000007 (A077815 (2 * (n + 1))).toNat : ℚ)

end

end A239062.P2113590423591051645

/-! ## A239062.P16259825309255031699

`(n+1)/∏{p}[n+1, #]-A000035(A357001(n+1))`
-/

namespace A239062.P16259825309255031699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) - (A000035 (A357001 (n + 1)).toNat : ℚ)

end

end A239062.P16259825309255031699

/-!
# A239063: Numbers k for which the equation x^x == 1 (mod k) has x=1 as its only solution such that 1 <= x <= k.

The programs for A239063, there is no canonical definition to state claims against.
-/

/-! ## A239063.P6696163184758842280

`eq[1, A239061(n+1)]+1`
-/

namespace A239063.P6696163184758842280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239061 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A239063.P6696163184758842280

/-! ## A239063.P4230876908775770215

`record[(n+1)%A268466(n+1)]`
-/

namespace A239063.P4230876908775770215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A268466 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239063.P4230876908775770215

/-! ## A239063.P13800529399890657318

`record[A000027(n+1)/A239061(n+1)]`
-/

namespace A239063.P13800529399890657318
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A239061 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239063.P13800529399890657318

/-! ## A239063.P12994553677598899440

`record[A234586(n+1)/A239061(n+1)]`
-/

namespace A239063.P12994553677598899440
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234586 (n + 1) : ℚ) / (A239061 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239063.P12994553677598899440

/-! ## A239063.P18264285126765713198

`record[(A268466(n+1)-A000027(n+1))*A000027(n+1)]`
-/

namespace A239063.P18264285126765713198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A268466 (n + 1) - A000027 (n + 1)) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239063.P18264285126765713198

/-! ## A239063.P14028213865376625935

`A164020(eq[1, A239061(n+1)])`
-/

namespace A239063.P14028213865376625935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239063.P14028213865376625935

/-!
# A239064: Positive integers whose square can be expressed as k*x^2+(k+1)*x+(k+2) with k and x positive integers.

The programs for A239064, there is no canonical definition to state claims against.
-/

/-! ## A239064.P14681426336855033941

`lt[A006530(A299261(n+4)), A000040(3*n+4)]`
-/

namespace A239064.P14681426336855033941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A299261 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239064.P14681426336855033941

/-! ## A239064.P6787169729518196527

`record[A007605(n+1)+A008683(A166133(n+1))]`
-/

namespace A239064.P6787169729518196527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1) + A008683 (A166133 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239064.P6787169729518196527

/-! ## A239064.P15992834746381721488

`lt[A007887(A107812(2*n+1)), A062830(2*n+3)]`
-/

namespace A239064.P15992834746381721488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007887 (A107812 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239064.P15992834746381721488

/-! ## A239064.P12167391499579853035

`lt[A354947(A354945(3*n+5)), A322821(2*n+3)]`
-/

namespace A239064.P12167391499579853035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354947 (A354945 (3 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322821 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239064.P12167391499579853035

/-! ## A239064.P14946714484581312119

`A284773(A187829(n+1))+A020915(A003057(n+2))`
-/

namespace A239064.P14946714484581312119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284773 (A187829 (n + 1)).toNat + A020915 (A003057 (n + 2)).toNat

end

end A239064.P14946714484581312119

/-!
# A239065: a(n) = n^3*(n^4 + n^2 - 1).

The programs for A239065, the canonical program `A239065.P13883091583672137348` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239065 has offset 1).

The definition of A239065 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^3*((n+1)^4+(n+1)²-1)` (program `A239065.P13883091583672137348`, by `A239065.P13883091583672137348.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A239065.P17510365641978947644

`(n+1)^7+(n+1)^5-(n+1)^3`
-/

namespace A239065.P17510365641978947644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 7 + (n + 1) ^ 5 : ℤ) - ((n + 1) ^ 3 : ℤ)

end

end A239065.P17510365641978947644

namespace A239065

/-- `(n+1)^7+(n+1)^5-(n+1)^3` -/
def P17510365641978947644.Spec : Prop :=
  ∀ n, P17510365641978947644.a n = A239065 (n + 1)

theorem P17510365641978947644.correct : P17510365641978947644.Spec := by
  intro n
  simp only [A239065, Nat.add_sub_cancel, A239065.P17510365641978947644.a, A239065.P13883091583672137348.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A239065

/-! ## A239065.P13883091583672137348

`(n+1)^3*((n+1)^4+(n+1)²-1)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A239065

/-- `(n+1)^3*((n+1)^4+(n+1)²-1)` -/
def P13883091583672137348.Spec : Prop :=
  ∀ n, P13883091583672137348.a n = A239065 (n + 1)

theorem P13883091583672137348.correct : P13883091583672137348.Spec := by
  intro n
  simp only [A239065, Nat.add_sub_cancel]

end A239065

/-! ## A239065.P14535662557467422246

`Δ[C((n²+n)²/2, 2)]`
-/

namespace A239065.P14535662557467422246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (((n ^ 2 + n) ^ 2 : ℚ) / 2)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A239065.P14535662557467422246

namespace A239065

/-- `Δ[C((n²+n)²/2, 2)]` -/
def P14535662557467422246.Spec : Prop :=
  ∀ n, P14535662557467422246.a n = A239065 (n + 1)

end A239065

/-! ## A239065.P15633070093100570318

`Δ[A002593(∑[n])]`
-/

namespace A239065.P15633070093100570318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002593 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239065.P15633070093100570318

namespace A239065

/-- `Δ[A002593(∑[n])]` -/
def P15633070093100570318.Spec : Prop :=
  ∀ n, P15633070093100570318.a n = A239065 (n + 1)

end A239065

/-! ## A239065.P6622542428457984049

`abs(Δ[A002593(A000217(n))])`
-/

namespace A239065.P6622542428457984049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002593 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A239065.P6622542428457984049

namespace A239065

/-- `abs(Δ[A002593(A000217(n))])` -/
def P6622542428457984049.Spec : Prop :=
  ∀ n, P6622542428457984049.a n = A239065 (n + 1)

end A239065

/-!
# A239066: Triangle read by rows: row n lists the smallest positive ideal multigrade of degree n, or 2n+2 zeros if none.

The programs for A239066, there is no canonical definition to state claims against.
-/

/-! ## A239066.P11881230931083873530

`∑{e}[2^A239067(n+1), #]`
-/

namespace A239066.P11881230931083873530
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A239067 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A239066.P11881230931083873530

/-! ## A239066.P41006551206380750

`A382152(A239067(n+1))`
-/

namespace A239066.P41006551206380750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382152 (A239067 (n + 1)).toNat

end

end A239066.P41006551206380750

/-! ## A239066.P4813204032335725181

`A048766(A239067(n+1)^3)`
-/

namespace A239066.P4813204032335725181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A239067 (n + 1) ^ 3).toNat

end

end A239066.P4813204032335725181

/-! ## A239066.P13401888097292002636

`A134914(A239067(n+1)^3)`
-/

namespace A239066.P13401888097292002636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (A239067 (n + 1) ^ 3).toNat

end

end A239066.P13401888097292002636

/-! ## A239066.P4988244517473469749

`A239067(n+1)%A324792(n)`
-/

namespace A239066.P4988244517473469749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239067 (n + 1)) (A324792 n)

end

end A239066.P4988244517473469749

/-!
# A239071: Numbers k such that k+x+y is a triangular number (A000217), where x and y are the two triangular numbers nearest to k.

The programs for A239071, there is no canonical definition to state claims against.
-/

/-! ## A239071.P7632037649222103186

`eq[1, A193648(A274093(n)²+n+1)]`
-/

namespace A239071.P7632037649222103186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193648 (A274093 n ^ 2 + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A239071.P7632037649222103186

/-!
# A239072: Maximum number of cells in an n X n square grid that can be painted such that no two orthogonally adjacent cells are painted and every unpainted cell can be reached from the edge of the grid by a series of orthogonal steps to unpainted cells.

The programs for A239072, there is no canonical definition to state claims against.
-/

/-! ## A239072.P6233355484082503619

`∑[∑[n²%3]]-char[comp[2^n-1]]`
-/

namespace A239072.P6233355484082503619
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A239072.P6233355484082503619

/-! ## A239072.P1597370978931143040

`floor((n+1)²/3)+1-abs(2-char[2^n-1])`
-/

namespace A239072.P1597370978931143040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℚ) / 3⌋ + 1 - |2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)|

end

end A239072.P1597370978931143040

/-! ## A239072.P8681863258445426399

`A002264((n+1)²-A001221(2*(n+1)))`
-/

namespace A239072.P8681863258445426399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (((n + 1) ^ 2 : ℤ) - A001221 (2 * (n + 1))).toNat

end

end A239072.P8681863258445426399

/-! ## A239072.P11871283429692482090

`∑[n+1-A106487((n+1)²)]`
-/

namespace A239072.P11871283429692482090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A106487 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239072.P11871283429692482090

/-!
# A239073: Given a circle of radius R into which small circles of radius R/2^n are packed in a "hexagonal pattern" (see Comments), a(n) is the maximum number of small circles.

The programs for A239073, there is no canonical definition to state claims against.
-/

/-! ## A239073.P12545310627327954645

`A053417(2^n-1)^ceil(n/98)`
-/

namespace A239073.P12545310627327954645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053417 (2 ^ n - 1) : ℚ) ^ (⌈(n : ℚ) / 98⌉ : ℤ)

end

end A239073.P12545310627327954645

/-! ## A239073.P2752907400311106280

`record[gcd(A035327(n), A053417(n))]`
-/

namespace A239073.P2752907400311106280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035327 n) (A053417 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239073.P2752907400311106280

/-! ## A239073.P9838707571441550482

`A053417(2^n-1)+A000007(n)`
-/

namespace A239073.P9838707571441550482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053417 (2 ^ n - 1) + A000007 n

end

end A239073.P9838707571441550482

/-! ## A239073.P16840093001113128040

`A058348(n)+A053417(A000225(n))`
-/

namespace A239073.P16840093001113128040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058348 n + A053417 (A000225 n).toNat

end

end A239073.P16840093001113128040

/-! ## A239073.P16790190941310554990

`A340988(n)+A053417(A000225(n))`
-/

namespace A239073.P16790190941310554990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340988 (n + 91) + A053417 (A000225 n).toNat

end

end A239073.P16790190941310554990

/-!
# A239074: Given a circle of radius R into which small circles of radius R/2^n are packed in a "hexagonal pattern" (see Comments), a(n) is the number of points at which a small circle is tangent to the big circle.

The programs for A239074, there is no canonical definition to state claims against.
-/

/-! ## A239074.P5857936010723141480

`∑{d}[A059990(n+1), A033716(#)]`
-/

namespace A239074.P5857936010723141480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A033716 d

end

end A239074.P5857936010723141480

/-! ## A239074.P7389938986955789719

`∑{d}[A059990(n+1), A005929(#)]`
-/

namespace A239074.P7389938986955789719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A005929 d

end

end A239074.P7389938986955789719

/-! ## A239074.P6328023950094339546

`2*A115069(∑[2^n])`
-/

namespace A239074.P6328023950094339546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A115069 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A239074.P6328023950094339546

/-! ## A239074.P7204453323293731055

`lcm(2, A115069(A126646(n)))`
-/

namespace A239074.P7204453323293731055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A115069 (A126646 n).toNat)

end

end A239074.P7204453323293731055

/-! ## A239074.P12482604610698922096

`∑{d}[A126646(n), A005929(#)]`
-/

namespace A239074.P12482604610698922096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A005929 d

end

end A239074.P12482604610698922096

/-!
# A239075: Number of self-inverse permutations p on [n] with displacement of elements restricted by 3: |p(i)-i| <= 3.

The programs for A239075, there is no canonical definition to state claims against.
-/

/-! ## A239075.P5154763382849916520

`A239076(n)-A238915(n)`
-/

namespace A239075.P5154763382849916520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239076 n - A238915 n

end

end A239075.P5154763382849916520

/-! ## A239075.P10419590911628453291

`A238888(∑[n+4]+2)`
-/

namespace A239075.P10419590911628453291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238888 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A239075.P10419590911628453291

/-! ## A239075.P5088632251020490087

`A105223(A150715(n))`
-/

namespace A239075.P5088632251020490087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105223 (A150715 n).toNat

end

end A239075.P5088632251020490087

/-! ## A239075.P6405506632268088428

`A105223(A151032(n))`
-/

namespace A239075.P6405506632268088428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105223 (A151032 n).toNat

end

end A239075.P6405506632268088428

/-!
# A239076: Number of self-inverse permutations p on [n] with displacement of elements restricted by 4: |p(i)-i| <= 4.

The programs for A239076, there is no canonical definition to state claims against.
-/

/-! ## A239076.P12497471154646837168

`A239075(n)+A238915(n)`
-/

namespace A239076.P12497471154646837168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239075 n + A238915 n

end

end A239076.P12497471154646837168

/-! ## A239076.P11283453199165512245

`A239077(n)-A238916(n)`
-/

namespace A239076.P11283453199165512245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239077 n - A238916 n

end

end A239076.P11283453199165512245

/-! ## A239076.P17772116427873149866

`A238888(A055998(n+3)-2)`
-/

namespace A239076.P17772116427873149866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238888 (A055998 (n + 3) - 2).toNat

end

end A239076.P17772116427873149866

/-! ## A239076.P13238777995602216242

`A238888(A000217(n+4)+n)`
-/

namespace A239076.P13238777995602216242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238888 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A239076.P13238777995602216242

/-!
# A239077: Number of self-inverse permutations p on [n] with displacement of elements restricted by 5: |p(i)-i| <= 5.

The programs for A239077, there is no canonical definition to state claims against.
-/

/-! ## A239077.P17632658616550218908

`A239076(n)+A238916(n)`
-/

namespace A239077.P17632658616550218908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239076 n + A238916 n

end

end A239077.P17632658616550218908

/-! ## A239077.P9324879826007083585

`A239078(n)-A238917(n)`
-/

namespace A239077.P9324879826007083585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239078 n - A238917 n

end

end A239077.P9324879826007083585

/-! ## A239077.P11132695368120685331

`A238888(eq[5, A025581(n)])`
-/

namespace A239077.P11132695368120685331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238888 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239077.P11132695368120685331

/-! ## A239077.P1095988272798618037

`A238888(Δ[A023551(n+1)])`
-/

namespace A239077.P1095988272798618037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238888 (f1 (n + 1) - f1 n).toNat

end

end A239077.P1095988272798618037

/-! ## A239077.P4381940168596527819

`A238888(A055998(n+4)-3)`
-/

namespace A239077.P4381940168596527819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238888 (A055998 (n + 4) - 3).toNat

end

end A239077.P4381940168596527819

/-!
# A239078: Number of self-inverse permutations p on [n] with displacement of elements restricted by 6: |p(i)-i| <= 6.

The programs for A239078, there is no canonical definition to state claims against.
-/

/-! ## A239078.P7838539516764159096

`A239077(n)+A238917(n)`
-/

namespace A239078.P7838539516764159096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239077 n + A238917 n

end

end A239078.P7838539516764159096

/-! ## A239078.P9608070888114317300

`A239079(n)-A238918(n)`
-/

namespace A239078.P9608070888114317300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239079 n - A238918 n

end

end A239078.P9608070888114317300

/-! ## A239078.P17148659639159825005

`A238917(n)+A238888(A055998(n+4)-3)`
-/

namespace A239078.P17148659639159825005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238917 n + A238888 (A055998 (n + 4) - 3).toNat

end

end A239078.P17148659639159825005

/-! ## A239078.P12393064635674541344

`A238888(eq[6, A025581(n)])`
-/

namespace A239078.P12393064635674541344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238888 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239078.P12393064635674541344

/-! ## A239078.P8678449105074055856

`A238888(eq[7, A004736(n+1)])`
-/

namespace A239078.P8678449105074055856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238888 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239078.P8678449105074055856

/-!
# A239079: Number of self-inverse permutations p on [n] with displacement of elements restricted by 7: |p(i)-i| <= 7.

The programs for A239079, there is no canonical definition to state claims against.
-/

/-! ## A239079.P14849292490285637041

`A239078(n)+A238918(n)`
-/

namespace A239079.P14849292490285637041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239078 n + A238918 n

end

end A239079.P14849292490285637041

/-! ## A239079.P17083620153120565719

`A239080(n)-A238919(n)`
-/

namespace A239079.P17083620153120565719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239080 n - A238919 n

end

end A239079.P17083620153120565719

/-! ## A239079.P12640082829366014728

`A238888(eq[7, A193592(n)]-1)`
-/

namespace A239079.P12640082829366014728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238888 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A239079.P12640082829366014728

/-! ## A239079.P6996123008232001413

`A238888(2*n+A167499(n+5)+2)`
-/

namespace A239079.P6996123008232001413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238888 ((2 * n : ℤ) + (A167499 (n + 5) + 2)).toNat

end

end A239079.P6996123008232001413

/-! ## A239079.P106191283541758910

`A239078(n)+A076134(A076144(n+1)^A319401(n))`
-/

namespace A239079.P106191283541758910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239078 n + A076134 (SequenceMachineLib.roundAway ((A076144 (n + 1) : ℚ) ^ (A319401 n : ℤ))).toNat

end

end A239079.P106191283541758910

/-!
# A239080: Number of self-inverse permutations p on [n] with displacement of elements restricted by 8: |p(i)-i| <= 8.

The programs for A239080, there is no canonical definition to state claims against.
-/

/-! ## A239080.P14727498253577433828

`A239079(n)+A238919(n)`
-/

namespace A239080.P14727498253577433828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239079 n + A238919 n

end

end A239080.P14727498253577433828

/-! ## A239080.P12612072161906138309

`A239081(n)-A238920(n)`
-/

namespace A239080.P12612072161906138309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239081 n - A238920 n

end

end A239080.P12612072161906138309

/-! ## A239080.P6484790973954090537

`A238888(Δ[A101853(n+4)])`
-/

namespace A239080.P6484790973954090537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101853 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238888 (f1 (n + 1) - f1 n).toNat

end

end A239080.P6484790973954090537

/-! ## A239080.P8231582463900646671

`A238888(A155212(n+5)-1)`
-/

namespace A239080.P8231582463900646671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238888 (A155212 (n + 5) - 1).toNat

end

end A239080.P8231582463900646671

/-! ## A239080.P12790449482602880745

`A238888(A112353(n+1)+n)`
-/

namespace A239080.P12790449482602880745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238888 (A112353 (n + 1) + (n : ℤ)).toNat

end

end A239080.P12790449482602880745

/-!
# A239081: Number of self-inverse permutations p on [n] with displacement of elements restricted by 9: |p(i)-i| <= 9.

The programs for A239081, there is no canonical definition to state claims against.
-/

/-! ## A239081.P9826731968824026895

`A239080(n)+A238920(n)`
-/

namespace A239081.P9826731968824026895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239080 n + A238920 n

end

end A239081.P9826731968824026895

/-! ## A239081.P2629957639985876410

`A239082(n)-A238921(n)`
-/

namespace A239081.P2629957639985876410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239082 n - A238921 n

end

end A239081.P2629957639985876410

/-! ## A239081.P111971420039434208

`A238888(A034856(n+9)-8)`
-/

namespace A239081.P111971420039434208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238888 (A034856 (n + 9) - 8).toNat

end

end A239081.P111971420039434208

/-! ## A239081.P476693721467268772

`A238888(eq[10, A004736(n+1)])`
-/

namespace A239081.P476693721467268772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238888 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239081.P476693721467268772

/-! ## A239081.P18065693706387380927

`A239082(n)+A001478(A238921(n)+1)+1`
-/

namespace A239081.P18065693706387380927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239082 n + A001478 (A238921 n + 1).toNat + 1

end

end A239081.P18065693706387380927

/-!
# A239082: Number of self-inverse permutations p on [n] with displacement of elements restricted by 10: |p(i)-i| <= 10.

The programs for A239082, there is no canonical definition to state claims against.
-/

/-! ## A239082.P14599796285933094814

`A239081(n)+A238921(n)`
-/

namespace A239082.P14599796285933094814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239081 n + A238921 n

end

end A239082.P14599796285933094814

/-!
# A239086: The sequence S = a(1), a(2), ... is defined by a(1)=1, if d,e,f are consecutive digits then we do not have d < e = f, and S is always extended with the smallest integer not yet present in S.

The programs for A239086, there is no canonical definition to state claims against.
-/

/-! ## A239086.P15638805471357702812

`round(ratio[A332550(n)]+n)`
-/

namespace A239086.P15638805471357702812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332550 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) + (n : ℚ))

end

end A239086.P15638805471357702812

/-! ## A239086.P2927100622265672105

`Δ[A107846(n)+∑[n]]`
-/

namespace A239086.P2927100622265672105
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239086.P2927100622265672105

/-! ## A239086.P5009166044575887987

`Δ[∑[n]-A196368(n)]`
-/

namespace A239086.P5009166044575887987
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A196368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239086.P5009166044575887987

/-! ## A239086.P17624282863950572076

`n+1-Δ[A178788(n)]`
-/

namespace A239086.P17624282863950572076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f1 (n + 1) - f1 n)

end

end A239086.P17624282863950572076

/-! ## A239086.P16318451548353764032

`A353888(A130571(n+1))`
-/

namespace A239086.P16318451548353764032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353888 (A130571 (n + 1)).toNat

end

end A239086.P16318451548353764032

/-! ## A239086.P5151110508042032854

`A353888(A239217(n+1))`
-/

namespace A239086.P5151110508042032854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353888 (A239217 (n + 1)).toNat

end

end A239086.P5151110508042032854

/-! ## A239086.P10065923391096477735

`A353888(A377961(n+1))`
-/

namespace A239086.P10065923391096477735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353888 (A377961 (n + 1)).toNat

end

end A239086.P10065923391096477735

/-! ## A239086.P7261090899547992274

`Δ[A133263(n)-A011582(n²)]`
-/

namespace A239086.P7261090899547992274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 n - A011582 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239086.P7261090899547992274

/-! ## A239086.P10920964910507620046

`A353888(A130573(A130572(n+1)))`
-/

namespace A239086.P10920964910507620046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353888 (A130573 (A130572 (n + 1)).toNat).toNat

end

end A239086.P10920964910507620046

/-! ## A239086.P7349528055070223931

`A239139(A353888(A353888(A130573(A353888(n+1)))))`
-/

namespace A239086.P7349528055070223931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239139 (A353888 (A353888 (A130573 (A353888 (n + 1)).toNat).toNat).toNat).toNat

end

end A239086.P7349528055070223931

/-!
# A239088: The sequence S = a(1), a(2), ... is defined by a(1)=1, if d,e,f are consecutive digits then we do not have d > e > f, and S is always extended with the smallest integer not yet present in S.

The programs for A239088, there is no canonical definition to state claims against.
-/

/-! ## A239088.P6680167992941301817

`Δ[A043568((A097601(n)/3)²)+∑[n]]`
-/

namespace A239088.P6680167992941301817
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 (SequenceMachineLib.roundAway (((A097601 n : ℚ) / 3) ^ 2)).toNat + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239088.P6680167992941301817

/-! ## A239088.P2678806512320958442

`Δ[A043568(lcm(n+1, A097601(n)))]+n+1`
-/

namespace A239088.P2678806512320958442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 (Int.lcm (n + 1 : ℤ) (A097601 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A239088.P2678806512320958442

/-! ## A239088.P1861705713578723017

`A008619(2*n)+Δ[A043568((A097601(n)/3)²)]`
-/

namespace A239088.P1861705713578723017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 (SequenceMachineLib.roundAway (((A097601 n : ℚ) / 3) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) + (f1 (n + 1) - f1 n)

end

end A239088.P1861705713578723017

/-! ## A239088.P4763723430105899498

`A238628(2*n+1)+Δ[A355222(n)]`
-/

namespace A239088.P4763723430105899498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238628 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A239088.P4763723430105899498

/-!
# A239089: The sequence S = a(1), a(2), ... is defined by a(1)=1, if d,e,f are consecutive digits then we do not have d > e >= f, and S is always extended with the smallest integer not yet present in S.

The programs for A239089, there is no canonical definition to state claims against.
-/

/-! ## A239089.P5236145808876800837

`lt[xor(9, 11*floor(n/10)-n), A228710(2*n+1)]`
-/

namespace A239089.P5236145808876800837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 (11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239089.P5236145808876800837

/-! ## A239089.P15446599224468592979

`lt[A017887(n)*A191736(3*n+5), n+1]`
-/

namespace A239089.P15446599224468592979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 n * A191736 (3 * n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A239089.P15446599224468592979

/-! ## A239089.P15261168135776338305

`eq[A017877(A002635(n)), A017887(n)]`
-/

namespace A239089.P15261168135776338305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017877 (A002635 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A239089.P15261168135776338305

/-! ## A239089.P12010626164988306931

`eq[A010060(A151949(n)), A017887(n)]`
-/

namespace A239089.P12010626164988306931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A151949 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A239089.P12010626164988306931

/-! ## A239089.P4850304851368699112

`eq[A017887(A004737(n+1)), A017887(n)]`
-/

namespace A239089.P4850304851368699112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 (A004737 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A239089.P4850304851368699112

/-!
# A239090: The sequence S = a(1), a(2), ... is defined by a(1)=1, if d,e,f are consecutive digits then we do not have d >= e < f, and S is always extended with the smallest integer not yet present in S.

The programs for A239090, there is no canonical definition to state claims against.
-/

/-! ## A239090.P10485657168878022837

`∩[A117057(n+1), A010785(n)]`
-/

namespace A239090.P10485657168878022837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239090.P10485657168878022837

/-! ## A239090.P9573960978077706818

`∩[A167620(n+1), A064222(n)]`
-/

namespace A239090.P9573960978077706818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239090.P9573960978077706818

/-! ## A239090.P16819437293130818340

`∩[A117057(n+1), A160818(n+1)]`
-/

namespace A239090.P16819437293130818340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239090.P16819437293130818340

/-! ## A239090.P13773708194186653788

`∩[A117057(n+1), A344749(n+1)]`
-/

namespace A239090.P13773708194186653788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239090.P13773708194186653788

/-! ## A239090.P10279794985006577317

`∩[A117057(n+1), A344823(n+1)]`
-/

namespace A239090.P10279794985006577317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239090.P10279794985006577317

/-!
# A239091: Prefix overlap of dictionary consisting of binary expansions of 0 through n.

The programs for A239091, the canonical program `A239091.P6341556871755184229` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239091 has offset 1).

The definition of A239091 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239091.P6341556871755184229

`A061168(n+1)-A011371(n+1)+A000523(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A239091

/-- `A061168(n+1)-A011371(n+1)+A000523(n+1)` -/
def P6341556871755184229.Spec : Prop :=
  ∀ n, P6341556871755184229.a n = A239091 (n + 1)

theorem P6341556871755184229.correct : P6341556871755184229.Spec := by
  intro n
  simp only [A239091, Nat.add_sub_cancel]

end A239091

/-! ## A239091.P6558305786378485351

`∑[A238845(n)]`
-/

namespace A239091.P6558305786378485351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239091.P6558305786378485351

namespace A239091

/-- `∑[A238845(n)]` -/
def P6558305786378485351.Spec : Prop :=
  ∀ n, P6558305786378485351.a n = A239091 (n + 1)

end A239091

/-! ## A239091.P16846023669261872032

`∑[∑{e}[Δ[A280995(n)], #]]`
-/

namespace A239091.P16846023669261872032
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280995 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239091.P16846023669261872032

namespace A239091

/-- `∑[∑{e}[Δ[A280995(n)], #]]` -/
def P16846023669261872032.Spec : Prop :=
  ∀ n, (P16846023669261872032.a n : ℤ) = A239091 (n + 1)

end A239091

/-! ## A239091.P17649084921413961516

`∑[val(A265026(n+1), 2)]`
-/

namespace A239091.P17649084921413961516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A265026 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239091.P17649084921413961516

namespace A239091

/-- `∑[val(A265026(n+1), 2)]` -/
def P17649084921413961516.Spec : Prop :=
  ∀ n, (P17649084921413961516.a n : ℤ) = A239091 (n + 1)

end A239091

/-! ## A239091.P3865896175659040074

`∑[A070939(floor(n/(xor(n, n+1)+1)))]-1`
-/

namespace A239091.P3865896175659040074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A239091.P3865896175659040074

namespace A239091

/-- `∑[A070939(floor(n/(xor(n, n+1)+1)))]-1` -/
def P3865896175659040074.Spec : Prop :=
  ∀ n, P3865896175659040074.a n = A239091 (n + 1)

end A239091

/-! ## A239091.P14739286666084934522

`A373709(n)+A000523(n+1)`
-/

namespace A239091.P14739286666084934522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373709 n + A000523 (n + 1)

end

end A239091.P14739286666084934522

namespace A239091

/-- `A373709(n)+A000523(n+1)` -/
def P14739286666084934522.Spec : Prop :=
  ∀ n, P14739286666084934522.a n = A239091 (n + 1)

end A239091

/-! ## A239091.P7348710110596923566

`A007814(n+1)+A373709(n)+A119387(n)`
-/

namespace A239091.P7348710110596923566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + (A373709 n + A119387 n)

end

end A239091.P7348710110596923566

namespace A239091

/-- `A007814(n+1)+A373709(n)+A119387(n)` -/
def P7348710110596923566.Spec : Prop :=
  ∀ n, P7348710110596923566.a n = A239091 (n + 1)

end A239091

/-! ## A239091.P11329121830832112850

`A061168(n+1)+A119387(n)-A011371(n)`
-/

namespace A239091.P11329121830832112850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061168 (n + 1) + (A119387 n - A011371 n)

end

end A239091.P11329121830832112850

namespace A239091

/-- `A061168(n+1)+A119387(n)-A011371(n)` -/
def P11329121830832112850.Spec : Prop :=
  ∀ n, P11329121830832112850.a n = A239091 (n + 1)

end A239091

/-! ## A239091.P4070694650971886191

`∑[val(Δ[A048702(n)], 2)]`
-/

namespace A239091.P4070694650971886191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048702 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (n + 1) - f2 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239091.P4070694650971886191

namespace A239091

/-- `∑[val(Δ[A048702(n)], 2)]` -/
def P4070694650971886191.Spec : Prop :=
  ∀ n, (P4070694650971886191.a n : ℤ) = A239091 (n + 1)

end A239091

/-! ## A239091.P8442577287467300963

`∑[val(Δ[A342036(n)], 2)]`
-/

namespace A239091.P8442577287467300963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342036 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (n + 1) - f2 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239091.P8442577287467300963

namespace A239091

/-- `∑[val(Δ[A342036(n)], 2)]` -/
def P8442577287467300963.Spec : Prop :=
  ∀ n, (P8442577287467300963.a n : ℤ) = A239091 (n + 1)

end A239091

/-! ## A239091.P2503677141840583890

`∑[A001222(A164126(Δ[n²]))]`
-/

namespace A239091.P2503677141840583890
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A164126 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239091.P2503677141840583890

namespace A239091

/-- `∑[A001222(A164126(Δ[n²]))]` -/
def P2503677141840583890.Spec : Prop :=
  ∀ n, P2503677141840583890.a n = A239091 (n + 1)

end A239091

/-! ## A239091.P12250525575277650764

`∑[A051904(Δ[A048702(n)])]`
-/

namespace A239091.P12250525575277650764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048702 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239091.P12250525575277650764

namespace A239091

/-- `∑[A051904(Δ[A048702(n)])]` -/
def P12250525575277650764.Spec : Prop :=
  ∀ n, P12250525575277650764.a n = A239091 (n + 1)

end A239091

/-! ## A239091.P1754065493587746038

`∑[A007814(Δ[A048702(n)])]`
-/

namespace A239091.P1754065493587746038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048702 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239091.P1754065493587746038

namespace A239091

/-- `∑[A007814(Δ[A048702(n)])]` -/
def P1754065493587746038.Spec : Prop :=
  ∀ n, P1754065493587746038.a n = A239091 (n + 1)

end A239091

/-!
# A239092: Prefix overlap of dictionary consisting of decimal expansions of 0 through n.

The programs for A239092, the canonical program `A239092.P18234882967802585146` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239092 has offset 1).

The definition of A239092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239092.P18234882967802585146

`∑[∑{digits}[n+1, (#%2)!]-1-val(n+1, 10)]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A239092

/-- `∑[∑{digits}[n+1, (#%2)!]-1-val(n+1, 10)]` -/
def P18234882967802585146.Spec : Prop :=
  ∀ n, P18234882967802585146.a n = A239092 (n + 1)

theorem P18234882967802585146.correct : P18234882967802585146.Spec := by
  intro n
  simp only [A239092, Nat.add_sub_cancel]

end A239092

/-! ## A239092.P11187744621155209685

`∑[A160093(n+1)-1]`
-/

namespace A239092.P11187744621155209685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160093 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239092.P11187744621155209685

namespace A239092

/-- `∑[A160093(n+1)-1]` -/
def P11187744621155209685.Spec : Prop :=
  ∀ n, P11187744621155209685.a n = A239092 (n + 1)

end A239092

/-! ## A239092.P14075599932854536854

`∑[A004216(n+1)-val(n+1, 10)]`
-/

namespace A239092.P14075599932854536854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (n + 1) - (SequenceMachineLib.valuation (n + 1) 10 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239092.P14075599932854536854

namespace A239092

/-- `∑[A004216(n+1)-val(n+1, 10)]` -/
def P14075599932854536854.Spec : Prop :=
  ∀ n, P14075599932854536854.a n = A239092 (n + 1)

end A239092

/-! ## A239092.P13038103560995931224

`∑[A055642(n+1)-(val(n+1, 10)+1)]`
-/

namespace A239092.P13038103560995931224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (n + 1) - (SequenceMachineLib.valuation (n + 1) 10 + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239092.P13038103560995931224

namespace A239092

/-- `∑[A055642(n+1)-(val(n+1, 10)+1)]` -/
def P13038103560995931224.Spec : Prop :=
  ∀ n, P13038103560995931224.a n = A239092 (n + 1)

end A239092

/-! ## A239092.P17574886929875540441

`A058183(n+1)-∑[val(n+1, 10)+1]`
-/

namespace A239092.P17574886929875540441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 10 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058183 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A239092.P17574886929875540441

namespace A239092

/-- `A058183(n+1)-∑[val(n+1, 10)+1]` -/
def P17574886929875540441.Spec : Prop :=
  ∀ n, P17574886929875540441.a n = A239092 (n + 1)

end A239092

/-! ## A239092.P14862051772901928229

`∑[A004216((n+1)/10^val(n+1, 10))]`
-/

namespace A239092.P14862051772901928229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239092.P14862051772901928229

namespace A239092

/-- `∑[A004216((n+1)/10^val(n+1, 10))]` -/
def P14862051772901928229.Spec : Prop :=
  ∀ n, P14862051772901928229.a n = A239092 (n + 1)

end A239092

/-! ## A239092.P4893332120054876026

`∑[A004216(A004086(n+1))]`
-/

namespace A239092.P4893332120054876026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A004086 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239092.P4893332120054876026

namespace A239092

/-- `∑[A004216(A004086(n+1))]` -/
def P4893332120054876026.Spec : Prop :=
  ∀ n, P4893332120054876026.a n = A239092 (n + 1)

end A239092

/-! ## A239092.P15854309394670319337

`∑[A004216(A004151(n+1))]`
-/

namespace A239092.P15854309394670319337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A004151 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239092.P15854309394670319337

namespace A239092

/-- `∑[A004216(A004151(n+1))]` -/
def P15854309394670319337.Spec : Prop :=
  ∀ n, P15854309394670319337.a n = A239092 (n + 1)

end A239092

/-! ## A239092.P1583756664997331881

`∑[A004216(A068636(n+1))]`
-/

namespace A239092.P1583756664997331881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A068636 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239092.P1583756664997331881

namespace A239092

/-- `∑[A004216(A068636(n+1))]` -/
def P1583756664997331881.Spec : Prop :=
  ∀ n, P1583756664997331881.a n = A239092 (n + 1)

end A239092

/-! ## A239092.P12991398541296572973

`∑[A055642(A267193(n))-1]`
-/

namespace A239092.P12991398541296572973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A267193 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239092.P12991398541296572973

namespace A239092

/-- `∑[A055642(A267193(n))-1]` -/
def P12991398541296572973.Spec : Prop :=
  ∀ n, P12991398541296572973.a n = A239092 (n + 1)

end A239092

/-! ## A239092.P9105497910292187710

`∑[A055640(A087052(n)-n)]`
-/

namespace A239092.P9105497910292187710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A087052 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239092.P9105497910292187710

namespace A239092

/-- `∑[A055640(A087052(n)-n)]` -/
def P9105497910292187710.Spec : Prop :=
  ∀ n, P9105497910292187710.a n = A239092 (n + 1)

end A239092

/-! ## A239092.P4123737011680933999

`∑[floor(A305493(n)/A329562(n))]`
-/

namespace A239092.P4123737011680933999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A305493 n : ℚ) / (A329562 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239092.P4123737011680933999

namespace A239092

/-- `∑[floor(A305493(n)/A329562(n))]` -/
def P4123737011680933999.Spec : Prop :=
  ∀ n, P4123737011680933999.a n = A239092 (n + 1)

end A239092

/-! ## A239092.P1188128446119000169

`∑[A017653(n)%A160093(n+1)]`
-/

namespace A239092.P1188128446119000169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017653 n) (A160093 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239092.P1188128446119000169

namespace A239092

/-- `∑[A017653(n)%A160093(n+1)]` -/
def P1188128446119000169.Spec : Prop :=
  ∀ n, P1188128446119000169.a n = A239092 (n + 1)

end A239092

/-! ## A239092.P10816284456614480401

`∑[A128468(n)%A160093(n+1)]`
-/

namespace A239092.P10816284456614480401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128468 n) (A160093 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239092.P10816284456614480401

namespace A239092

/-- `∑[A128468(n)%A160093(n+1)]` -/
def P10816284456614480401.Spec : Prop :=
  ∀ n, P10816284456614480401.a n = A239092 (n + 1)

end A239092

/-! ## A239092.P15380554699959890719

`A058183(n+1)-A065039(n+1)`
-/

namespace A239092.P15380554699959890719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058183 (n + 1) - A065039 (n + 1)

end

end A239092.P15380554699959890719

namespace A239092

/-- `A058183(n+1)-A065039(n+1)` -/
def P15380554699959890719.Spec : Prop :=
  ∀ n, P15380554699959890719.a n = A239092 (n + 1)

end A239092

/-! ## A239092.P12633545869651729582

`∑[A004216(n+1)-A122840(n+1)]`
-/

namespace A239092.P12633545869651729582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (n + 1) - A122840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239092.P12633545869651729582

namespace A239092

/-- `∑[A004216(n+1)-A122840(n+1)]` -/
def P12633545869651729582.Spec : Prop :=
  ∀ n, P12633545869651729582.a n = A239092 (n + 1)

end A239092

/-! ## A239092.P6696326093458031887

`∑[A001359(n+1)%A160093(n+1)]`
-/

namespace A239092.P6696326093458031887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001359 (n + 1)) (A160093 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239092.P6696326093458031887

namespace A239092

/-- `∑[A001359(n+1)%A160093(n+1)]` -/
def P6696326093458031887.Spec : Prop :=
  ∀ n, P6696326093458031887.a n = A239092 (n + 1)

end A239092

/-! ## A239092.P15778622735868310930

`∑[A045637(n+1)%A160093(n+1)]`
-/

namespace A239092.P15778622735868310930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045637 (n + 1)) (A160093 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239092.P15778622735868310930

namespace A239092

/-- `∑[A045637(n+1)%A160093(n+1)]` -/
def P15778622735868310930.Spec : Prop :=
  ∀ n, P15778622735868310930.a n = A239092 (n + 1)

end A239092

/-! ## A239092.P10227357238919232114

`∑[A139928(n+1)%A160093(n+1)]`
-/

namespace A239092.P10227357238919232114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139928 (n + 1)) (A160093 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239092.P10227357238919232114

namespace A239092

/-- `∑[A139928(n+1)%A160093(n+1)]` -/
def P10227357238919232114.Spec : Prop :=
  ∀ n, P10227357238919232114.a n = A239092 (n + 1)

end A239092

/-! ## A239092.P8258362299180255448

`∑[A001222(A138902((n+1)/10^val(n+1, 10)))]`
-/

namespace A239092.P8258362299180255448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A138902 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239092.P8258362299180255448

namespace A239092

/-- `∑[A001222(A138902((n+1)/10^val(n+1, 10)))]` -/
def P8258362299180255448.Spec : Prop :=
  ∀ n, P8258362299180255448.a n = A239092 (n + 1)

end A239092

/-!
# A239094: a(n) = (5*n^9 - 30*n^7 + 63*n^5 - 50*n^3 + 12*n)/360.

The programs for A239094, the canonical program `A239094.P12982977801086125285` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239094 has offset 0).

The definition of A239094 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239094.P12982977801086125285

`(5*n^9-30*n^7+63*n^5-50*n^3+12*n)/360`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A239094

/-- `(5*n^9-30*n^7+63*n^5-50*n^3+12*n)/360` -/
def P12982977801086125285.Spec : Prop :=
  ∀ n, P12982977801086125285.a n = (A239094 n : ℚ)

end A239094

/-! ## A239094.P4257554287035384825

`∑[a(n-1)+(n-1)^7]` with `a(0)=0`
-/

namespace A239094.P4257554287035384825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + ((n : ℤ) - 1) ^ 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239094.P4257554287035384825

namespace A239094

/-- `∑[a(n-1)+(n-1)^7]` -/
def P4257554287035384825.Spec : Prop :=
  ∀ n, P4257554287035384825.a n = A239094 n

end A239094

/-! ## A239094.P12608857997839553966

`A000541(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A239094.P12608857997839553966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000541 (n - 1) + a (n - 1)

end

end A239094.P12608857997839553966

namespace A239094

/-- `A000541(n-1)+a(n-1)` -/
def P12608857997839553966.Spec : Prop :=
  ∀ n, P12608857997839553966.a n = A239094 n

end A239094

/-! ## A239094.P13712911411052123952

`∑[A000541(n)]-A000541(n)`
-/

namespace A239094.P13712911411052123952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000541 n

end

end A239094.P13712911411052123952

namespace A239094

/-- `∑[A000541(n)]-A000541(n)` -/
def P13712911411052123952.Spec : Prop :=
  ∀ n, P13712911411052123952.a n = A239094 n

end A239094

/-! ## A239094.P13732541090670216054

`n*A000541(n)-A000542(n)`
-/

namespace A239094.P13732541090670216054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000541 n - A000542 n

end

end A239094.P13732541090670216054

namespace A239094

/-- `n*A000541(n)-A000542(n)` -/
def P13732541090670216054.Spec : Prop :=
  ∀ n, P13732541090670216054.a n = A239094 n

end A239094

/-! ## A239094.P2514335229585962306

`A250212(n+1)-∑[A036085(n)]`
-/

namespace A239094.P2514335229585962306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250212 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239094.P2514335229585962306

namespace A239094

/-- `A250212(n+1)-∑[A036085(n)]` -/
def P2514335229585962306.Spec : Prop :=
  ∀ n, P2514335229585962306.a n = A239094 n

end A239094

/-! ## A239094.P601004120541903230

`A250212(n+1)-(A000541(n+1)+A000541(n))`
-/

namespace A239094.P601004120541903230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250212 (n + 1) - (A000541 (n + 1) + A000541 n)

end

end A239094.P601004120541903230

namespace A239094

/-- `A250212(n+1)-(A000541(n+1)+A000541(n))` -/
def P601004120541903230.Spec : Prop :=
  ∀ n, P601004120541903230.a n = A239094 n

end A239094

/-!
# A239095: a(n) = (n^7 - 21*n^3 + 20*n)/210.

The programs for A239095, the canonical program `A239095.P5018079448449239445` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239095 has offset 0).

The definition of A239095 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239095.P5018079448449239445

`(n^7-21*n^3+20*n)/210`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A239095

/-- `(n^7-21*n^3+20*n)/210` -/
def P5018079448449239445.Spec : Prop :=
  ∀ n, P5018079448449239445.a n = (A239095 n : ℚ)

end A239095

/-! ## A239095.P17173591113650820554

`lcm(2, (A030180(n)-A135503(n))/5)`
-/

namespace A239095.P17173591113650820554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (SequenceMachineLib.roundAway ((A030180 n - A135503 n : ℚ) / 5))

end

end A239095.P17173591113650820554

namespace A239095

/-- `lcm(2, (A030180(n)-A135503(n))/5)` -/
def P17173591113650820554.Spec : Prop :=
  ∀ n, (P17173591113650820554.a n : ℤ) = A239095 n

end A239095

/-! ## A239095.P2972369055008897571

`(A030180(n)-A135503(n))*5^A008683(A020484(n))`
-/

namespace A239095.P2972369055008897571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030180 n - A135503 n : ℚ) * (5 : ℚ) ^ (A008683 (A020484 n).toNat : ℤ)

end

end A239095.P2972369055008897571

namespace A239095

/-- `(A030180(n)-A135503(n))*5^A008683(A020484(n))` -/
def P2972369055008897571.Spec : Prop :=
  ∀ n, P2972369055008897571.a n = (A239095 n : ℚ)

end A239095

/-!
# A239096: a(n) = (n^9 + 21*n^5 - 190*n^3 + 168*n)/1260.

The programs for A239096, there is no canonical definition to state claims against.
-/

/-! ## A239096.P4210947597277073647

`((8*n+4)*(n+1)²)%A333431(comp[∑[n]])`
-/

namespace A239096.P4210947597277073647
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((8 * n + 4) * (n + 1) ^ 2 : ℤ) (A333431 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A239096.P4210947597277073647

/-! ## A239096.P16947361967239898236

`A063730(A153397(n))`
-/

namespace A239096.P16947361967239898236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063730 (A153397 n).toNat

end

end A239096.P16947361967239898236

/-!
# A239098: Triangle read by rows: T(0,0)=1; T(m,0)=0; otherwise T(m,n) = (m-1)*T(m-1,n)+(m-1+n)*T(m-1,n-1).

The programs for A239098, there is no canonical definition to state claims against.
-/

/-! ## A239098.P16884533914259363968

`A269939(n)*A327722(A329070(n))`
-/

namespace A239098.P16884533914259363968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269939 n * A327722 (A329070 n).toNat

end

end A239098.P16884533914259363968

/-! ## A239098.P3460474153072106679

`(A132393(n)-A267142(A093794(n+1)))*A195892(n+1)`
-/

namespace A239098.P3460474153072106679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132393 n - A267142 (A093794 (n + 1)).toNat) * A195892 (n + 1)

end

end A239098.P3460474153072106679

