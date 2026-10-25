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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
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
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A104702: Numbers n such that in rearrangement A104696, they are shifted to the right (position of n in A104696 is larger than n).

The programs for A104702, there is no canonical definition to state claims against.
-/

/-! ## A104702.P6329536402746122188

`record[(n+1)%A104696(n+1)]`
-/

namespace A104702.P6329536402746122188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A104696 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104702.P6329536402746122188

/-! ## A104702.P6616015135753319748

`lt[A222212(n), A222224(n)]`
-/

namespace A104702.P6616015135753319748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222212 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A104702.P6616015135753319748

/-! ## A104702.P1276972124776639222

`lt[n, A222224(A222220(n))]`
-/

namespace A104702.P1276972124776639222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 (A222220 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A104702.P1276972124776639222

/-! ## A104702.P447227040343229087

`lt[A222210(n), A222237(n)]`
-/

namespace A104702.P447227040343229087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222237 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A104702.P447227040343229087

/-! ## A104702.P16019008694896988240

`lt[n, A222237(A222226(n))]`
-/

namespace A104702.P16019008694896988240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222237 (A222226 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A104702.P16019008694896988240

/-!
# A104703: Numbers n such that in rearrangement A104696, they are shifted to the left (position of n in A104696 is less than n ).

The programs for A104703, there is no canonical definition to state claims against.
-/

/-! ## A104703.P14315556351725974272

`lt[A104696(n+1), n]+1`
-/

namespace A104703.P14315556351725974272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104696 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A104703.P14315556351725974272

/-! ## A104703.P606023318493330702

`lt[A104696(A028310(n)), n]`
-/

namespace A104703.P606023318493330702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104696 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A104703.P606023318493330702

/-! ## A104703.P3744915203966827122

`lt[A222239(A222224(n)), n]`
-/

namespace A104703.P3744915203966827122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 (A222224 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A104703.P3744915203966827122

/-! ## A104703.P7535519817757343224

`lt[A222237(A222226(n)), n]`
-/

namespace A104703.P7535519817757343224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222237 (A222226 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A104703.P7535519817757343224

/-! ## A104703.P14221893537190752395

`lt[A104696(A233583(n+1)), n]`
-/

namespace A104703.P14221893537190752395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104696 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A104703.P14221893537190752395

/-!
# A104704: Numbers n such that in rearrangement A104696, they stay in place (position of n in A104696 is equal to n ).

The programs for A104704, there is no canonical definition to state claims against.
-/

/-! ## A104704.P1611833377126292956

`eq[n, A104696(round(acot(n)+n))]`
-/

namespace A104704.P1611833377126292956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104696 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104704.P1611833377126292956

/-! ## A104704.P10381158715106004801

`eq[n, A104696(round(sqrt(n²+1)))]`
-/

namespace A104704.P10381158715106004801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104696 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104704.P10381158715106004801

/-! ## A104704.P11882312648044264068

`eq[n+1, A104696(n+1)]+1`
-/

namespace A104704.P11882312648044264068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104696 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A104704.P11882312648044264068

/-! ## A104704.P15985169461439375464

`lt[n*A045841(A004180(n)), n]`
-/

namespace A104704.P15985169461439375464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A045841 (A004180 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A104704.P15985169461439375464

/-! ## A104704.P13652218818668338857

`∪[A062897(n+1), A098947(n+1)]`
-/

namespace A104704.P13652218818668338857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A104704.P13652218818668338857

/-!
# A104705: First terms in the rearrangements of integer numbers (see comments).

The programs for A104705, there is no canonical definition to state claims against.
-/

/-! ## A104705.P9267764968394882074

`A000720(A122556(A091684(n)+1))`
-/

namespace A104705.P9267764968394882074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A122556 (A091684 n + 1).toNat).toNat

end

end A104705.P9267764968394882074

/-! ## A104705.P6116742933971757435

`A000720(A122556(n+1))`
-/

namespace A104705.P6116742933971757435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A122556 (n + 1)).toNat

end

end A104705.P6116742933971757435

/-! ## A104705.P11782936262716234023

`A055396(A122556(n+1)²)`
-/

namespace A104705.P11782936262716234023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A122556 (n + 1) ^ 2).toNat

end

end A104705.P11782936262716234023

/-! ## A104705.P6932807907173411281

`A061395(A122556(n+1)²)`
-/

namespace A104705.P6932807907173411281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A122556 (n + 1) ^ 2).toNat

end

end A104705.P6932807907173411281

/-! ## A104705.P957154848122347827

`A066328(A122556(n+1)²)`
-/

namespace A104705.P957154848122347827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A122556 (n + 1) ^ 2).toNat

end

end A104705.P957154848122347827

/-! ## A104705.P1596519423691156427

`A067004(A122556(n+1)²)`
-/

namespace A104705.P1596519423691156427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067004 (A122556 (n + 1) ^ 2).toNat

end

end A104705.P1596519423691156427

/-! ## A104705.P9400093697803679464

`A286477(A122556(n+1)²)`
-/

namespace A104705.P9400093697803679464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286477 (A122556 (n + 1) ^ 2).toNat

end

end A104705.P9400093697803679464

/-! ## A104705.P15407989258073973963

`A297109(A122556(n+1)²)`
-/

namespace A104705.P15407989258073973963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (A122556 (n + 1) ^ 2).toNat

end

end A104705.P15407989258073973963

/-! ## A104705.P1149408646310596896

`A333842(A122556(n+1)²)`
-/

namespace A104705.P1149408646310596896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333842 (A122556 (n + 1) ^ 2).toNat

end

end A104705.P1149408646310596896

/-! ## A104705.P6035136045202330774

`A003963(p?[A122556(n+1)])`
-/

namespace A104705.P6035136045202330774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A104705.P6035136045202330774

/-!
# A104706: First terms in the rearrangements of integer numbers (see comments).

The programs for A104706, there is no canonical definition to state claims against.
-/

/-! ## A104706.P7774184165542741588

`A028920(2*(n+1)-1)-1`
-/

namespace A104706.P7774184165542741588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (2 * (n + 1) - 1) - 1

end

end A104706.P7774184165542741588

/-! ## A104706.P6833958324414863398

`abs(1-A028920(2*n+1))`
-/

namespace A104706.P6833958324414863398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A028920 (2 * n + 1)|

end

end A104706.P6833958324414863398

/-! ## A104706.P15885338511391532722

`A023443(A028920(2*n+1))`
-/

namespace A104706.P15885338511391532722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A028920 (2 * n + 1)).toNat

end

end A104706.P15885338511391532722

/-! ## A104706.P186519438881356402

`A057428(n+1)+A028920(2*n+1)`
-/

namespace A104706.P186519438881356402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A028920 (2 * n + 1)

end

end A104706.P186519438881356402

/-! ## A104706.P8439927839785523533

`A033999(2*n+1)+A028920(2*n+1)`
-/

namespace A104706.P8439927839785523533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A028920 (2 * n + 1)

end

end A104706.P8439927839785523533

/-! ## A104706.P7710255012755659199

`A089962(A028920(2*n))+A028920(2*n+1)`
-/

namespace A104706.P7710255012755659199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089962 (A028920 (2 * n)).toNat + A028920 (2 * n + 1)

end

end A104706.P7710255012755659199

/-! ## A104706.P17504990256888981237

`A120082(A028920(2*n)²)+A028920(2*n+1)`
-/

namespace A104706.P17504990256888981237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120082 (A028920 (2 * n) ^ 2).toNat + A028920 (2 * n + 1)

end

end A104706.P17504990256888981237

/-! ## A104706.P10760174625335781290

`A146540(A028920(2*n)²)+A028920(2*n+1)`
-/

namespace A104706.P10760174625335781290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146540 (A028920 (2 * n) ^ 2).toNat + A028920 (2 * n + 1)

end

end A104706.P10760174625335781290

/-! ## A104706.P2402517422364727312

`A146540(A019425(2*(n+1)))+A028920(2*n+1)`
-/

namespace A104706.P2402517422364727312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146540 (A019425 (2 * (n + 1))).toNat + A028920 (2 * n + 1)

end

end A104706.P2402517422364727312

/-! ## A104706.P16040167932886163547

`A189048(A001405(C(3, n))+2)+A028920(2*n+1)`
-/

namespace A104706.P16040167932886163547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189048 (A001405 (Nat.choose 3 n) + 2).toNat + A028920 (2 * n + 1)

end

end A104706.P16040167932886163547

/-!
# A104708: Product of number of involutions on n letters and number of partitions of n.

The programs for A104708, there is no canonical definition to state claims against.
-/

/-! ## A104708.P3531490317229649312

`A000085(n)*A000041(n)`
-/

namespace A104708.P3531490317229649312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n * A000041 n

end

end A104708.P3531490317229649312

/-! ## A104708.P813509249973165361

`sqrt(A001255(n))*A000085(n)`
-/

namespace A104708.P813509249973165361
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) * (A000085 n : ℝ)

end

end A104708.P813509249973165361

/-! ## A104708.P13160558328666880149

`∑[A002865(n)]*A000085(n)`
-/

namespace A104708.P13160558328666880149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000085 n

end

end A104708.P13160558328666880149

/-! ## A104708.P1947221538932520202

`A000041(n)*A099020(∑[n])`
-/

namespace A104708.P1947221538932520202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A099020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104708.P1947221538932520202

/-! ## A104708.P1135331263994640341

`A000085(n)*A238343(∑[n])`
-/

namespace A104708.P1135331263994640341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n * A238343 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104708.P1135331263994640341

/-! ## A104708.P909143337587816431

`(A000065(n)+1)*A000085(n)`
-/

namespace A104708.P909143337587816431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000065 n + 1) * A000085 n

end

end A104708.P909143337587816431

/-! ## A104708.P9789541557098568452

`A000085(n)*A100824(2*n)`
-/

namespace A104708.P9789541557098568452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n * A100824 (2 * n)

end

end A104708.P9789541557098568452

/-! ## A104708.P9615871598609403497

`A000085(n)/2*A139582(n)`
-/

namespace A104708.P9615871598609403497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000085 n : ℚ) / 2 * (A139582 n : ℚ)

end

end A104708.P9615871598609403497

/-! ## A104708.P12029438673914620455

`∑[A002865(n)]*A099020(∑[n])`
-/

namespace A104708.P12029438673914620455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A099020 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A104708.P12029438673914620455

/-! ## A104708.P9212347073538986684

`A162970(n+2)/∑[n+1]*A000041(n)`
-/

namespace A104708.P9212347073538986684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162970 (n + 2) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * (A000041 n : ℚ)

end

end A104708.P9212347073538986684

/-! ## A104708.P12746670797792813184

`(A046682(n)+A000701(n))*A000085(n)`
-/

namespace A104708.P12746670797792813184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046682 n + A000701 n) * A000085 n

end

end A104708.P12746670797792813184

/-! ## A104708.P4076625963296013456

`(A047967(n)+A000009(n))*A000085(n)`
-/

namespace A104708.P4076625963296013456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047967 n + A000009 n) * A000085 n

end

end A104708.P4076625963296013456

/-! ## A104708.P9052829650515033635

`(A027193(n)+A027187(n))*A000085(n)`
-/

namespace A104708.P9052829650515033635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027193 n + A027187 n) * A000085 n

end

end A104708.P9052829650515033635

/-! ## A104708.P11486225188184886275

`(A295341(n)+A000726(n))*A000085(n)`
-/

namespace A104708.P11486225188184886275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A295341 n + A000726 n) * A000085 n

end

end A104708.P11486225188184886275

/-! ## A104708.P13279069641759072958

`(A239262(n)+A239260(n))*A000085(n)`
-/

namespace A104708.P13279069641759072958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A239262 n + A239260 n) * A000085 n

end

end A104708.P13279069641759072958

/-! ## A104708.P10574533215386121979

`(A332281(n)+A332280(n))*A000085(n)`
-/

namespace A104708.P10574533215386121979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A332281 n + A332280 n) * A000085 n

end

end A104708.P10574533215386121979

/-! ## A104708.P12074745477739811261

`(A332284(n)+A332283(n))*A000085(n)`
-/

namespace A104708.P12074745477739811261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A332284 n + A332283 n) * A000085 n

end

end A104708.P12074745477739811261

/-! ## A104708.P2352290947749459816

`(A168015(n)-A168014(n))*A000085(n)`
-/

namespace A104708.P2352290947749459816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168015 n - A168014 n) * A000085 n

end

end A104708.P2352290947749459816

/-!
# A104709: Triangle read by rows: T(n,k) = Sum_{j=0..n} 2^(n-j)*binomial(j,k) for n >= 0 and 0 <= k <= n; also, Riordan array (1/((1-x)*(1-2*x)), x/(1-x)).

The programs for A104709, the canonical program `A104709.P12815197067085567270` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104709 has offset 0).

The definition of A104709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104709.P2647904888186144332

`abs(A110814(n))`
-/

namespace A104709.P2647904888186144332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110814 n|

end

end A104709.P2647904888186144332

namespace A104709

/-- `abs(A110814(n))` -/
def P2647904888186144332.Spec : Prop :=
  ∀ n, P2647904888186144332.a n = A104709 n

end A104709

/-! ## A104709.P12815197067085567270

`A140513(n)-A054143(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A104709

/-- `A140513(n)-A054143(n)` -/
def P12815197067085567270.Spec : Prop :=
  ∀ n, P12815197067085567270.a n = A104709 n

theorem P12815197067085567270.correct : P12815197067085567270.Spec := by
  intro n
  simp only [A104709]

end A104709

/-! ## A104709.P10205808672039078819

`A097807(n)*A110814(n)`
-/

namespace A104709.P10205808672039078819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A110814 n

end

end A104709.P10205808672039078819

namespace A104709

/-- `A097807(n)*A110814(n)` -/
def P10205808672039078819.Spec : Prop :=
  ∀ n, P10205808672039078819.a n = A104709 n

end A104709

/-! ## A104709.P5670212712735868270

`gcd(A000038(n), A110814(n))`
-/

namespace A104709.P5670212712735868270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A110814 n)

end

end A104709.P5670212712735868270

namespace A104709

/-- `gcd(A000038(n), A110814(n))` -/
def P5670212712735868270.Spec : Prop :=
  ∀ n, (P5670212712735868270.a n : ℤ) = A104709 n

end A104709

/-! ## A104709.P16140107558628223016

`lcm(A020985(n), A110814(n))`
-/

namespace A104709.P16140107558628223016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A110814 n)

end

end A104709.P16140107558628223016

namespace A104709

/-- `lcm(A020985(n), A110814(n))` -/
def P16140107558628223016.Spec : Prop :=
  ∀ n, (P16140107558628223016.a n : ℤ) = A104709 n

end A104709

/-! ## A104709.P3318383202330582670

`2*A055248(n)-A007318(n)`
-/

namespace A104709.P3318383202330582670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055248 n - A007318 n

end

end A104709.P3318383202330582670

namespace A104709

/-- `2*A055248(n)-A007318(n)` -/
def P3318383202330582670.Spec : Prop :=
  ∀ n, P3318383202330582670.a n = A104709 n

end A104709

/-! ## A104709.P7763127412730645912

`2*A137688(n)-A054143(n)`
-/

namespace A104709.P7763127412730645912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A137688 n - A054143 n

end

end A104709.P7763127412730645912

namespace A104709

/-- `2*A137688(n)-A054143(n)` -/
def P7763127412730645912.Spec : Prop :=
  ∀ n, P7763127412730645912.a n = A104709 n

end A104709

/-! ## A104709.P5897455783219115226

`A098354(n+1)-A204206(n+1)`
-/

namespace A104709.P5897455783219115226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098354 (n + 1) - A204206 (n + 1)

end

end A104709.P5897455783219115226

namespace A104709

/-- `A098354(n+1)-A204206(n+1)` -/
def P5897455783219115226.Spec : Prop :=
  ∀ n, P5897455783219115226.a n = A104709 n

theorem P5897455783219115226.correct : P5897455783219115226.Spec := by
  intro n
  simp only [A104709, Nat.add_sub_cancel, A104709.P5897455783219115226.a, A104709.P12815197067085567270.a, A054143, A054143.P11222314207562248900.a, A098354, A098354.P12141781683194391342.a, A140513, A140513.P13579608035938851890.a, A204206, A204206.P854096699827338767.f1, A204206.P854096699827338767.a, A010054, A010054.P18347828677204923252.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A137688, A137688.P9746695207037186753.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A005369, A005369.P10796159359873341658.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A104709

/-! ## A104709.P3966368928273246375

`2*A129689(n+1)-A112467(n)`
-/

namespace A104709.P3966368928273246375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129689 (n + 1) - A112467 n

end

end A104709.P3966368928273246375

namespace A104709

/-- `2*A129689(n+1)-A112467(n)` -/
def P3966368928273246375.Spec : Prop :=
  ∀ n, P3966368928273246375.a n = A104709 n

end A104709

/-! ## A104709.P1427582025591144774

`2*A102363(n)-A204203(n+1)`
-/

namespace A104709.P1427582025591144774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102363 n - A204203 (n + 1)

end

end A104709.P1427582025591144774

namespace A104709

/-- `2*A102363(n)-A204203(n+1)` -/
def P1427582025591144774.Spec : Prop :=
  ∀ n, P1427582025591144774.a n = A104709 n

end A104709

/-! ## A104709.P10978512834463959570

`2*A140513(n)-A204206(n+1)`
-/

namespace A104709.P10978512834463959570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140513 n - A204206 (n + 1)

end

end A104709.P10978512834463959570

namespace A104709

/-- `2*A140513(n)-A204206(n+1)` -/
def P10978512834463959570.Spec : Prop :=
  ∀ n, P10978512834463959570.a n = A104709 n

theorem P10978512834463959570.correct : P10978512834463959570.Spec := by
  intro n
  simp only [A104709, Nat.add_sub_cancel, A104709.P10978512834463959570.a, A104709.P12815197067085567270.a, A054143, A054143.P11222314207562248900.a, A140513, A140513.P13579608035938851890.a, A204206, A204206.P854096699827338767.f1, A204206.P854096699827338767.a, A010054, A010054.P18347828677204923252.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A137688, A137688.P9746695207037186753.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A005369, A005369.P10796159359873341658.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A104709

/-! ## A104709.P13548603414581501359

`A055248(n)+A102363(n)-A054143(n)`
-/

namespace A104709.P13548603414581501359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n + (A102363 n - A054143 n)

end

end A104709.P13548603414581501359

namespace A104709

/-- `A055248(n)+A102363(n)-A054143(n)` -/
def P13548603414581501359.Spec : Prop :=
  ∀ n, P13548603414581501359.a n = A104709 n

theorem P13548603414581501359.correct : P13548603414581501359.Spec := by
  intro n
  simp only [A104709, Nat.add_sub_cancel, A104709.P13548603414581501359.a, A104709.P12815197067085567270.a, A054143, A054143.P11222314207562248900.a, A055248, A055248.P3086643025084055619.a, A102363, A102363.P15098294147514921799.a, A140513, A140513.P13579608035938851890.a, A007318, A007318.P302227728145965961.a, A137688, A137688.P9746695207037186753.a, A204206, A204206.P854096699827338767.f1, A204206.P854096699827338767.a, A003056, A003056.P5318256527314048597.a, A010054, A010054.P18347828677204923252.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A002262, A002262.P12129691700837801527.a, A005369, A005369.P10796159359873341658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A104709

/-! ## A104709.P16395274099350968278

`A054143(A061579(n))`
-/

namespace A104709.P16395274099350968278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 (A061579 n).toNat

end

end A104709.P16395274099350968278

namespace A104709

/-- `A054143(A061579(n))` -/
def P16395274099350968278.Spec : Prop :=
  ∀ n, P16395274099350968278.a n = A104709 n

end A104709

/-! ## A104709.P181185755693547023

`A054143(A038722(n+1)-1)`
-/

namespace A104709.P181185755693547023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 (A038722 (n + 1) - 1).toNat

end

end A104709.P181185755693547023

namespace A104709

/-- `A054143(A038722(n+1)-1)` -/
def P181185755693547023.Spec : Prop :=
  ∀ n, P181185755693547023.a n = A104709 n

end A104709

/-! ## A104709.P7575181285753831037

`A054143(A038722(n+2))`
-/

namespace A104709.P7575181285753831037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 (A038722 (n + 2)).toNat

end

end A104709.P7575181285753831037

namespace A104709

/-- `A054143(A038722(n+2))` -/
def P7575181285753831037.Spec : Prop :=
  ∀ n, P7575181285753831037.a n = A104709 n

end A104709

/-! ## A104709.P15108961940557657205

`A055248(comp[∑[n]])`
-/

namespace A104709.P15108961940557657205
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A104709.P15108961940557657205

namespace A104709

/-- `A055248(comp[∑[n]])` -/
def P15108961940557657205.Spec : Prop :=
  ∀ n, P15108961940557657205.a n = A104709 n

end A104709

/-! ## A104709.P16919058023352725294

`A135224(comp[∑[n]])`
-/

namespace A104709.P16919058023352725294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135224 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A104709.P16919058023352725294

namespace A104709

/-- `A135224(comp[∑[n]])` -/
def P16919058023352725294.Spec : Prop :=
  ∀ n, P16919058023352725294.a n = A104709 n

end A104709

/-! ## A104709.P2038165438843490246

`A130300(A080036(n+1))`
-/

namespace A104709.P2038165438843490246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130300 (A080036 (n + 1)).toNat

end

end A104709.P2038165438843490246

namespace A104709

/-- `A130300(A080036(n+1))` -/
def P2038165438843490246.Spec : Prop :=
  ∀ n, P2038165438843490246.a n = A104709 n

end A104709

/-! ## A104709.P5619462289159749785

`A130300(A002024(n+1)+n+2)`
-/

namespace A104709.P5619462289159749785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130300 (A002024 (n + 1) + (n + 2 : ℤ)).toNat

end

end A104709.P5619462289159749785

namespace A104709

/-- `A130300(A002024(n+1)+n+2)` -/
def P5619462289159749785.Spec : Prop :=
  ∀ n, P5619462289159749785.a n = A104709 n

end A104709

/-! ## A104709.P8475247960396094185

`∑{d}[A110814(n), A000010(#)]`
-/

namespace A104709.P8475247960396094185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A104709.P8475247960396094185

namespace A104709

/-- `∑{d}[A110814(n), A000010(#)]` -/
def P8475247960396094185.Spec : Prop :=
  ∀ n, P8475247960396094185.a n = A104709 n

end A104709

/-!
# A104710: Triangle read by rows: reversed partial sums of Narayana triangle rows.

The programs for A104710, there is no canonical definition to state claims against.
-/

/-! ## A104710.P7866798058621033882

`A349740((n-comp[∑[n]])²-comp[∑[n]])`
-/

namespace A104710.P7866798058621033882
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349740 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ)).toNat

end

end A104710.P7866798058621033882

/-! ## A104710.P14300323766977982639

`A039598(n)-A008683(A235421(n+1))`
-/

namespace A104710.P14300323766977982639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 n - A008683 (A235421 (n + 1)).toNat

end

end A104710.P14300323766977982639

/-! ## A104710.P16941593426006161770

`A126216(n+1)-A304704(A113370(n))`
-/

namespace A104710.P16941593426006161770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126216 (n + 1) - A304704 (A113370 n).toNat

end

end A104710.P16941593426006161770

/-!
# A104711: Triangle T(n,m) = sum_{k=m..n} A001263(k,m).

The programs for A104711, there is no canonical definition to state claims against.
-/

/-! ## A104711.P3753889719296203688

`A162717(comp[∑[n]])`
-/

namespace A104711.P3753889719296203688
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162717 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A104711.P3753889719296203688

/-! ## A104711.P3625337947681870535

`abs(1-A162717(comp[C(n, 2)]))+1`
-/

namespace A104711.P3625337947681870535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A162717 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)| + 1

end

end A104711.P3625337947681870535

/-! ## A104711.P44887034021264535

`A162717(comp[C(n+1, 2)])%p?[n²-3]`
-/

namespace A104711.P44887034021264535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162717 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A104711.P44887034021264535

/-! ## A104711.P13464325510665089192

`A000027(A162717(comp[C(n, 2)]))`
-/

namespace A104711.P13464325510665089192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A162717 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A104711.P13464325510665089192

/-! ## A104711.P11229145167500365724

`A023443(A162717(comp[C(n, 2)])+1)`
-/

namespace A104711.P11229145167500365724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A162717 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1).toNat

end

end A104711.P11229145167500365724

/-! ## A104711.P17963178605428684344

`or(char[2], A162717(A014132(n+1)))`
-/

namespace A104711.P17963178605428684344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A162717 (A014132 (n + 1)).toNat)

end

end A104711.P17963178605428684344

/-! ## A104711.P17217229278162770939

`A162717(comp[C(n, 2)])%A330510(n)`
-/

namespace A104711.P17217229278162770939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162717 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A330510 n)

end

end A104711.P17217229278162770939

/-! ## A104711.P325331116938439644

`∑{d}[A162717(A014132(n+1)), A000010(#)]`
-/

namespace A104711.P325331116938439644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162717 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A104711.P325331116938439644

/-! ## A104711.P6279432018688190185

`A162717(A014132(n+1))+A008683(8*(n+1))`
-/

namespace A104711.P6279432018688190185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162717 (A014132 (n + 1)).toNat + A008683 (8 * (n + 1))

end

end A104711.P6279432018688190185

/-!
# A104712: Pascal's triangle, with the first two columns removed.

The programs for A104712, the canonical program `A104712.P8393777965278521263` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104712 has offset 2).

The definition of A104712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104712.P5184430836280643368

`A074909(comp[∑[n]]+1)`
-/

namespace A104712.P5184430836280643368
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A104712.P5184430836280643368

namespace A104712

/-- `A074909(comp[∑[n]]+1)` -/
def P5184430836280643368.Spec : Prop :=
  ∀ n, P5184430836280643368.a n = A104712 (n + 2)

end A104712

/-! ## A104712.P1121493752849862998

`A194118(n)-A209518(n)`
-/

namespace A104712.P1121493752849862998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194118 n - A209518 n

end

end A104712.P1121493752849862998

namespace A104712

/-- `A194118(n)-A209518(n)` -/
def P1121493752849862998.Spec : Prop :=
  ∀ n, P1121493752849862998.a n = A104712 (n + 2)

theorem P1121493752849862998.correct : P1121493752849862998.Spec := by
  intro n
  simp only [A104712, Nat.add_sub_cancel, A104712.P1121493752849862998.a, A104712.P8393777965278521263.a, A014410, A014410.P12420516935091573692.a, A168577, A168577.P14364464542492817144.a, A194118, A194118.P13941331000178065428.a, A209518, A209518.P15211053160365626883.f2, A209518.P15211053160365626883.f1, A209518.P15211053160365626883.a, A002024, A002024.P11700297927830783882.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A000217, A000217.P10269402890581615239.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, A005369, A005369.P10796159359873341658.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A104712

/-! ## A104712.P10666878036227525157

`A264357(n+1)+A007318(n)`
-/

namespace A104712.P10666878036227525157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264357 (n + 1) + A007318 n

end

end A104712.P10666878036227525157

namespace A104712

/-- `A264357(n+1)+A007318(n)` -/
def P10666878036227525157.Spec : Prop :=
  ∀ n, P10666878036227525157.a n = A104712 (n + 2)

end A104712

/-! ## A104712.P12787462022555744178

`(A135278(n)+A125165(n))/2`
-/

namespace A104712.P12787462022555744178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135278 n + A125165 n : ℚ) / 2

end

end A104712.P12787462022555744178

namespace A104712

/-- `(A135278(n)+A125165(n))/2` -/
def P12787462022555744178.Spec : Prop :=
  ∀ n, P12787462022555744178.a n = (A104712 (n + 2) : ℚ)

theorem P12787462022555744178.correct : P12787462022555744178.Spec := by
  intro n
  simp only [A104712, Nat.add_sub_cancel, A104712.P12787462022555744178.a, A104712.P8393777965278521263.a, A014410, A014410.P12420516935091573692.a, A125165, A125165.P1719362185260033778.a, A135278, A135278.P10862305414900331449.a, A168577, A168577.P14364464542492817144.a, A002024, A002024.P11700297927830783882.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A000217, A000217.P10269402890581615239.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, A005369, A005369.P10796159359873341658.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A104712

/-! ## A104712.P14545291080024247014

`A127717(n+1)/A002260(n+1)`
-/

namespace A104712.P14545291080024247014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127717 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A104712.P14545291080024247014

namespace A104712

/-- `A127717(n+1)/A002260(n+1)` -/
def P14545291080024247014.Spec : Prop :=
  ∀ n, P14545291080024247014.a n = (A104712 (n + 2) : ℚ)

end A104712

/-! ## A104712.P8393777965278521263

`A168577(n+2)-A014410(n+2)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A104712

/-- `A168577(n+2)-A014410(n+2)` -/
def P8393777965278521263.Spec : Prop :=
  ∀ n, P8393777965278521263.a n = A104712 (n + 2)

theorem P8393777965278521263.correct : P8393777965278521263.Spec := by
  intro n
  simp only [A104712, Nat.add_sub_cancel]

end A104712

/-! ## A104712.P5217185239279480408

`2*A125165(n)-A125232(n+1)`
-/

namespace A104712.P5217185239279480408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125165 n - A125232 (n + 1)

end

end A104712.P5217185239279480408

namespace A104712

/-- `2*A125165(n)-A125232(n+1)` -/
def P5217185239279480408.Spec : Prop :=
  ∀ n, P5217185239279480408.a n = A104712 (n + 2)

theorem P5217185239279480408.correct : P5217185239279480408.Spec := by
  intro n
  simp only [A104712, Nat.add_sub_cancel, A104712.P5217185239279480408.a, A104712.P8393777965278521263.a, A014410, A014410.P12420516935091573692.a, A125165, A125165.P1719362185260033778.a, A125232, A125232.P7385240608015978380.a, A168577, A168577.P14364464542492817144.a, A002024, A002024.P11700297927830783882.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A135278, A135278.P10862305414900331449.a, A000217, A000217.P10269402890581615239.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A104712

/-! ## A104712.P16011899683222876377

`A007318(n)+A110813(n)-A131085(n)`
-/

namespace A104712.P16011899683222876377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A110813 n - A131085 n)

end

end A104712.P16011899683222876377

namespace A104712

/-- `A007318(n)+A110813(n)-A131085(n)` -/
def P16011899683222876377.Spec : Prop :=
  ∀ n, P16011899683222876377.a n = A104712 (n + 2)

end A104712

/-! ## A104712.P15439842018378076431

`A133804(n)+A133805(n)-A007318(n)`
-/

namespace A104712.P15439842018378076431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133804 n + (A133805 n - A007318 n)

end

end A104712.P15439842018378076431

namespace A104712

/-- `A133804(n)+A133805(n)-A007318(n)` -/
def P15439842018378076431.Spec : Prop :=
  ∀ n, P15439842018378076431.a n = A104712 (n + 2)

end A104712

/-! ## A104712.P10722448853102491373

`A074909(n+1)+A074909(n+1)-A131085(n)`
-/

namespace A104712.P10722448853102491373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) + (A074909 (n + 1) - A131085 n)

end

end A104712.P10722448853102491373

namespace A104712

/-- `A074909(n+1)+A074909(n+1)-A131085(n)` -/
def P10722448853102491373.Spec : Prop :=
  ∀ n, P10722448853102491373.a n = A104712 (n + 2)

theorem P10722448853102491373.correct : P10722448853102491373.Spec := by
  intro n
  simp only [A104712, Nat.add_sub_cancel, A104712.P10722448853102491373.a, A104712.P8393777965278521263.a, A014410, A014410.P12420516935091573692.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A131085, A131085.P15158434548820626258.a, A168577, A168577.P14364464542492817144.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A010054, A010054.P18347828677204923252.a, A135278, A135278.P10862305414900331449.a, A000217, A000217.P10269402890581615239.a, A005369, A005369.P10796159359873341658.a, A057944, A057944.P16851463738746886639.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A104712

/-! ## A104712.P16877819622842739551

`A127717(n+1)/A127718(n+1)*A055248(n)`
-/

namespace A104712.P16877819622842739551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127717 (n + 1) : ℚ) / (A127718 (n + 1) : ℚ) * (A055248 n : ℚ)

end

end A104712.P16877819622842739551

namespace A104712

/-- `A127717(n+1)/A127718(n+1)*A055248(n)` -/
def P16877819622842739551.Spec : Prop :=
  ∀ n, P16877819622842739551.a n = (A104712 (n + 2) : ℚ)

end A104712

/-! ## A104712.P4972857646680137580

`A014410(n+3)-A003057(n+2)*A023531(n)`
-/

namespace A104712.P4972857646680137580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (n + 3) - A003057 (n + 2) * A023531 n

end

end A104712.P4972857646680137580

namespace A104712

/-- `A014410(n+3)-A003057(n+2)*A023531(n)` -/
def P4972857646680137580.Spec : Prop :=
  ∀ n, P4972857646680137580.a n = A104712 (n + 2)

end A104712

/-! ## A104712.P8875348996974277306

`A014410(n+3)-A014410(n+2)*A023531(n)`
-/

namespace A104712.P8875348996974277306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (n + 3) - A014410 (n + 2) * A023531 n

end

end A104712.P8875348996974277306

namespace A104712

/-- `A014410(n+3)-A014410(n+2)*A023531(n)` -/
def P8875348996974277306.Spec : Prop :=
  ∀ n, P8875348996974277306.a n = A104712 (n + 2)

end A104712

/-! ## A104712.P9160190113175613466

`A227396(n+1)+A074909(n+2)`
-/

namespace A104712.P9160190113175613466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227396 (n + 1) + A074909 (n + 2)

end

end A104712.P9160190113175613466

namespace A104712

/-- `A227396(n+1)+A074909(n+2)` -/
def P9160190113175613466.Spec : Prop :=
  ∀ n, P9160190113175613466.a n = A104712 (n + 2)

end A104712

/-! ## A104712.P661532777705045711

`C(A003057(n+2), A004736(n+2))`
-/

namespace A104712.P661532777705045711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003057 (n + 2)).toNat (A004736 (n + 2)).toNat

end

end A104712.P661532777705045711

namespace A104712

/-- `C(A003057(n+2), A004736(n+2))` -/
def P661532777705045711.Spec : Prop :=
  ∀ n, (P661532777705045711.a n : ℤ) = A104712 (n + 2)

end A104712

/-! ## A104712.P13113926982246777378

`A209518(A061579(n))`
-/

namespace A104712.P13113926982246777378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209518 (A061579 n).toNat

end

end A104712.P13113926982246777378

namespace A104712

/-- `A209518(A061579(n))` -/
def P13113926982246777378.Spec : Prop :=
  ∀ n, P13113926982246777378.a n = A104712 (n + 2)

end A104712

/-! ## A104712.P5410472249282925813

`A007318(lt[2, A059268(n)])`
-/

namespace A104712.P5410472249282925813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A104712.P5410472249282925813

namespace A104712

/-- `A007318(lt[2, A059268(n)])` -/
def P5410472249282925813.Spec : Prop :=
  ∀ n, P5410472249282925813.a n = A104712 (n + 2)

end A104712

/-! ## A104712.P403159159035582618

`A209518(A038722(n+1)-1)`
-/

namespace A104712.P403159159035582618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209518 (A038722 (n + 1) - 1).toNat

end

end A104712.P403159159035582618

namespace A104712

/-- `A209518(A038722(n+1)-1)` -/
def P403159159035582618.Spec : Prop :=
  ∀ n, P403159159035582618.a n = A104712 (n + 2)

end A104712

/-! ## A104712.P13034018498716458367

`A007318(lt[1, A007318(n)]+1)`
-/

namespace A104712.P13034018498716458367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A104712.P13034018498716458367

namespace A104712

/-- `A007318(lt[1, A007318(n)]+1)` -/
def P13034018498716458367.Spec : Prop :=
  ∀ n, P13034018498716458367.a n = A104712 (n + 2)

end A104712

/-! ## A104712.P17464494767911494591

`A007318(lt[1, A007318(abs(1-n))])`
-/

namespace A104712.P17464494767911494591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A104712.P17464494767911494591

namespace A104712

/-- `A007318(lt[1, A007318(abs(1-n))])` -/
def P17464494767911494591.Spec : Prop :=
  ∀ n, P17464494767911494591.a n = A104712 (n + 2)

end A104712

/-!
# A104713: Triangle T(n,k) = binomial(n,k), read by rows, 3 <= k <=n .

The programs for A104713, the canonical program `A104713.P17662720385851673761` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104713 has offset 3).

The definition of A104713 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104713.P17108364213705558570

`A074909((n-comp[∑[n]])²-(n+1))`
-/

namespace A104713.P17108364213705558570
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - (n + 1 : ℤ)).toNat

end

end A104713.P17108364213705558570

namespace A104713

/-- `A074909((n-comp[∑[n]])²-(n+1))` -/
def P17108364213705558570.Spec : Prop :=
  ∀ n, P17108364213705558570.a n = A104713 (n + 3)

end A104713

/-! ## A104713.P17662720385851673761

`C(A002024(n+1)+2, A025581(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A104713

/-- `C(A002024(n+1)+2, A025581(n))` -/
def P17662720385851673761.Spec : Prop :=
  ∀ n, (P17662720385851673761.a n : ℤ) = A104713 (n + 3)

theorem P17662720385851673761.correct : P17662720385851673761.Spec := by
  intro n
  simp only [A104713, Nat.add_sub_cancel]

end A104713

/-! ## A104713.P9173780115315278883

`A104712(comp[∑[n]]+2)`
-/

namespace A104713.P9173780115315278883
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104712 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2)

end

end A104713.P9173780115315278883

namespace A104713

/-- `A104712(comp[∑[n]]+2)` -/
def P9173780115315278883.Spec : Prop :=
  ∀ n, P9173780115315278883.a n = A104713 (n + 3)

end A104713

/-! ## A104713.P15387568439569922715

`A007318(lt[4, A059268(n)])`
-/

namespace A104713.P15387568439569922715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A104713.P15387568439569922715

namespace A104713

/-- `A007318(lt[4, A059268(n)])` -/
def P15387568439569922715.Spec : Prop :=
  ∀ n, P15387568439569922715.a n = A104713 (n + 3)

end A104713

/-! ## A104713.P2143088449607535291

`A007318(lt[3, A002260(n+1)])`
-/

namespace A104713.P2143088449607535291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A104713.P2143088449607535291

namespace A104713

/-- `A007318(lt[3, A002260(n+1)])` -/
def P2143088449607535291.Spec : Prop :=
  ∀ n, P2143088449607535291.a n = A104713 (n + 3)

end A104713

/-! ## A104713.P16643431668329299209

`A135278(lt[1, A007318(n)]+1)`
-/

namespace A104713.P16643431668329299209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A104713.P16643431668329299209

namespace A104713

/-- `A135278(lt[1, A007318(n)]+1)` -/
def P16643431668329299209.Spec : Prop :=
  ∀ n, P16643431668329299209.a n = A104713 (n + 3)

end A104713

/-! ## A104713.P12501614812973263374

`A007318(lt[1, A239550(n)])`
-/

namespace A104713.P12501614812973263374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A104713.P12501614812973263374

namespace A104713

/-- `A007318(lt[1, A239550(n)])` -/
def P12501614812973263374.Spec : Prop :=
  ∀ n, P12501614812973263374.a n = A104713 (n + 3)

end A104713

/-! ## A104713.P5483375889157255345

`A007318(lt[1, A097805(n)]+1)`
-/

namespace A104713.P5483375889157255345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A104713.P5483375889157255345

namespace A104713

/-- `A007318(lt[1, A097805(n)]+1)` -/
def P5483375889157255345.Spec : Prop :=
  ∀ n, P5483375889157255345.a n = A104713 (n + 3)

end A104713

/-! ## A104713.P490988798262386865

`A007318(eq[0, A132014(n)]+3)`
-/

namespace A104713.P490988798262386865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3)

end

end A104713.P490988798262386865

namespace A104713

/-- `A007318(eq[0, A132014(n)]+3)` -/
def P490988798262386865.Spec : Prop :=
  ∀ n, P490988798262386865.a n = A104713 (n + 3)

end A104713

/-! ## A104713.P14847660232574063846

`A007318(lt[2, A025581(n)]+3)`
-/

namespace A104713.P14847660232574063846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 3)

end

end A104713.P14847660232574063846

namespace A104713

/-- `A007318(lt[2, A025581(n)]+3)` -/
def P14847660232574063846.Spec : Prop :=
  ∀ n, P14847660232574063846.a n = A104713 (n + 3)

end A104713

/-! ## A104713.P12562977964876668747

`A007318(lt[1, A054124(n)]+1)`
-/

namespace A104713.P12562977964876668747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A104713.P12562977964876668747

namespace A104713

/-- `A007318(lt[1, A054124(n)]+1)` -/
def P12562977964876668747.Spec : Prop :=
  ∀ n, P12562977964876668747.a n = A104713 (n + 3)

end A104713

/-! ## A104713.P3023056375974047128

`A007318(lt[2, A002262(n)])`
-/

namespace A104713.P3023056375974047128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A104713.P3023056375974047128

namespace A104713

/-- `A007318(lt[2, A002262(n)])` -/
def P3023056375974047128.Spec : Prop :=
  ∀ n, P3023056375974047128.a n = A104713 (n + 3)

end A104713

/-! ## A104713.P15975697432613623872

`A007318(lt[3, A193588(n)])`
-/

namespace A104713.P15975697432613623872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A104713.P15975697432613623872

namespace A104713

/-- `A007318(lt[3, A193588(n)])` -/
def P15975697432613623872.Spec : Prop :=
  ∀ n, P15975697432613623872.a n = A104713 (n + 3)

end A104713

/-! ## A104713.P1453649939500782934

`A014473(lt[2, A002262(n)])+1`
-/

namespace A104713.P1453649939500782934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 1

end

end A104713.P1453649939500782934

namespace A104713

/-- `A014473(lt[2, A002262(n)])+1` -/
def P1453649939500782934.Spec : Prop :=
  ∀ n, P1453649939500782934.a n = A104713 (n + 3)

end A104713

/-! ## A104713.P14144124221140295796

`A007318(lt[2, A047913(n+1)])`
-/

namespace A104713.P14144124221140295796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A104713.P14144124221140295796

namespace A104713

/-- `A007318(lt[2, A047913(n+1)])` -/
def P14144124221140295796.Spec : Prop :=
  ∀ n, P14144124221140295796.a n = A104713 (n + 3)

end A104713

/-! ## A104713.P8601684086894492123

`A007318(lt[4, A245093(n+1)])`
-/

namespace A104713.P8601684086894492123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A104713.P8601684086894492123

namespace A104713

/-- `A007318(lt[4, A245093(n+1)])` -/
def P8601684086894492123.Spec : Prop :=
  ∀ n, P8601684086894492123.a n = A104713 (n + 3)

end A104713

/-! ## A104713.P16179224301865744496

`A007318(lt[A004736(n+1), A193554(n)])`
-/

namespace A104713.P16179224301865744496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193554 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A104713.P16179224301865744496

namespace A104713

/-- `A007318(lt[A004736(n+1), A193554(n)])` -/
def P16179224301865744496.Spec : Prop :=
  ∀ n, P16179224301865744496.a n = A104713 (n + 3)

end A104713

/-! ## A104713.P8471354774459710511

`A193554(lt[3, A002262(n)])`
-/

namespace A104713.P8471354774459710511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A104713.P8471354774459710511

namespace A104713

/-- `A193554(lt[3, A002262(n)])` -/
def P8471354774459710511.Spec : Prop :=
  ∀ n, P8471354774459710511.a n = A104713 (n + 3)

end A104713

/-! ## A104713.P1784658388687675591

`A193554(lt[5, A193588(n)])`
-/

namespace A104713.P1784658388687675591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A104713.P1784658388687675591

namespace A104713

/-- `A193554(lt[5, A193588(n)])` -/
def P1784658388687675591.Spec : Prop :=
  ∀ n, P1784658388687675591.a n = A104713 (n + 3)

end A104713

/-! ## A104713.P10986788797425647975

`A007318(lt[1, A340812(n)])`
-/

namespace A104713.P10986788797425647975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A104713.P10986788797425647975

namespace A104713

/-- `A007318(lt[1, A340812(n)])` -/
def P10986788797425647975.Spec : Prop :=
  ∀ n, P10986788797425647975.a n = A104713 (n + 3)

end A104713

/-!
# A104714: Greatest common divisor of a Fibonacci number and its index.

The programs for A104714, there is no canonical definition to state claims against.
-/

/-! ## A104714.P16398320142299671293

`n/A270313(A028310(n))`
-/

namespace A104714.P16398320142299671293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A270313 (A028310 n).toNat : ℚ)

end

end A104714.P16398320142299671293

/-! ## A104714.P4198745095823598452

`n/A270313(A065033(2*n))`
-/

namespace A104714.P4198745095823598452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A270313 (A065033 (2 * n)).toNat : ℚ)

end

end A104714.P4198745095823598452

/-! ## A104714.P7953525681070022015

`gcd(n, A000045(n))`
-/

namespace A104714.P7953525681070022015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000045 n)

end

end A104714.P7953525681070022015

/-! ## A104714.P12132707162340173644

`gcd(lcm(2, n), A167808(n))`
-/

namespace A104714.P12132707162340173644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.lcm 2 n : ℤ) (A167808 n)

end

end A104714.P12132707162340173644

/-! ## A104714.P7355008370131874516

`gcd(15*n, A167816(n))`
-/

namespace A104714.P7355008370131874516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (15 * n : ℤ) (A167816 n)

end

end A104714.P7355008370131874516

/-! ## A104714.P6290699555080396516

`gcd(A014283(n), A038608(n))`
-/

namespace A104714.P6290699555080396516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014283 n) (A038608 n)

end

end A104714.P6290699555080396516

/-! ## A104714.P6279275765595410120

`gcd(A022998(n), A065220(n))`
-/

namespace A104714.P6279275765595410120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022998 n) (A065220 n)

end

end A104714.P6279275765595410120

/-! ## A104714.P8708455676718949315

`gcd(A004932(n), A160536(n))`
-/

namespace A104714.P8708455676718949315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004932 n) (A160536 n)

end

end A104714.P8708455676718949315

/-! ## A104714.P7663838209954583756

`gcd(A008587(n), A167808(n))`
-/

namespace A104714.P7663838209954583756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008587 n) (A167808 n)

end

end A104714.P7663838209954583756

/-! ## A104714.P16048481422315314695

`gcd(A004934(n), A212272(n))`
-/

namespace A104714.P16048481422315314695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004934 n) (A212272 n)

end

end A104714.P16048481422315314695

/-! ## A104714.P8947059833632060266

`gcd(A008607(n), A236191(n))`
-/

namespace A104714.P8947059833632060266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008607 n) (A236191 n)

end

end A104714.P8947059833632060266

/-! ## A104714.P16378023193157034893

`gcd(1-A001611(n), A002062(n))`
-/

namespace A104714.P16378023193157034893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A001611 n) (A002062 n)

end

end A104714.P16378023193157034893

/-! ## A104714.P11717423520496115978

`gcd(A212272(n)+n, A181983(n))`
-/

namespace A104714.P11717423520496115978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A212272 n + (n : ℤ)) (A181983 n)

end

end A104714.P11717423520496115978

/-! ## A104714.P2027740049982385164

`gcd(A014682(2*n), A212804(n+1))`
-/

namespace A104714.P2027740049982385164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014682 (2 * n)) (A212804 (n + 1))

end

end A104714.P2027740049982385164

/-! ## A104714.P6304009296550720861

`gcd(A112053(n+1)+n, A001611(n)-1)`
-/

namespace A104714.P6304009296550720861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112053 (n + 1) + (n : ℤ)) (A001611 n - 1)

end

end A104714.P6304009296550720861

/-! ## A104714.P6810973505091372579

`gcd(A028242(2*n+1), A053602(2*n))`
-/

namespace A104714.P6810973505091372579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028242 (2 * n + 1)) (A053602 (2 * n))

end

end A104714.P6810973505091372579

/-! ## A104714.P2993672380042220081

`gcd(A103164(n), A333378(n))`
-/

namespace A104714.P2993672380042220081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103164 n) (A333378 n)

end

end A104714.P2993672380042220081

/-! ## A104714.P14773181070308745792

`gcd(A022088(n)+n, n²)`
-/

namespace A104714.P14773181070308745792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022088 n + (n : ℤ)) (n ^ 2 : ℤ)

end

end A104714.P14773181070308745792

/-! ## A104714.P3668579502442107261

`gcd(A022359(n)+n, A022359(n))`
-/

namespace A104714.P3668579502442107261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022359 n + (n : ℤ)) (A022359 n)

end

end A104714.P3668579502442107261

/-! ## A104714.P7177831339641304344

`gcd(A006367(n+1), A010049(n))`
-/

namespace A104714.P7177831339641304344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006367 (n + 1)) (A010049 n)

end

end A104714.P7177831339641304344

/-!
# A104715: Triangle T(n,k) = (2*k-1)*A000217(n-k+1) read by rows, 1<=k<=n.

The programs for A104715, the canonical program `A104715.P11158735043013185719` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104715 has offset 1).

The definition of A104715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104715.P16885011429608534902

`(2*(n-C(∑[char[∑[n]]], 2))+1)*A000217(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A104715.P16885011429608534902
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) + 1) * A000217 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A104715.P16885011429608534902

namespace A104715

/-- `(2*(n-C(∑[char[∑[n]]], 2))+1)*A000217(C(comp[∑[n]]-n, 2)-n)` -/
def P16885011429608534902.Spec : Prop :=
  ∀ n, P16885011429608534902.a n = A104715 (n + 1)

end A104715

/-! ## A104715.P17384592571379331995

`(A103218(n)+A101447(n))/2`
-/

namespace A104715.P17384592571379331995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103218 n + A101447 n : ℚ) / 2

end

end A104715.P17384592571379331995

namespace A104715

/-- `(A103218(n)+A101447(n))/2` -/
def P17384592571379331995.Spec : Prop :=
  ∀ n, P17384592571379331995.a n = (A104715 (n + 1) : ℚ)

end A104715

/-! ## A104715.P11158735043013185719

`abs(A122432(n)*A158405(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A104715

/-- `abs(A122432(n)*A158405(n+1))` -/
def P11158735043013185719.Spec : Prop :=
  ∀ n, P11158735043013185719.a n = A104715 (n + 1)

theorem P11158735043013185719.correct : P11158735043013185719.Spec := by
  intro n
  simp only [A104715, Nat.add_sub_cancel]

end A104715

/-! ## A104715.P10643865446703779953

`A000217(A004736(n+1))*A158405(n+1)`
-/

namespace A104715.P10643865446703779953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004736 (n + 1)).toNat * A158405 (n + 1)

end

end A104715.P10643865446703779953

namespace A104715

/-- `A000217(A004736(n+1))*A158405(n+1)` -/
def P10643865446703779953.Spec : Prop :=
  ∀ n, P10643865446703779953.a n = A104715 (n + 1)

end A104715

/-! ## A104715.P7913199377334819142

`A104633(n+1)+A213750(n+1)-A104634(n+1)`
-/

namespace A104715.P7913199377334819142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104633 (n + 1) + (A213750 (n + 1) - A104634 (n + 1))

end

end A104715.P7913199377334819142

namespace A104715

/-- `A104633(n+1)+A213750(n+1)-A104634(n+1)` -/
def P7913199377334819142.Spec : Prop :=
  ∀ n, P7913199377334819142.a n = A104715 (n + 1)

end A104715

/-! ## A104715.P13930365634231736902

`A265008(A089633(n)+1)`
-/

namespace A104715.P13930365634231736902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265008 (A089633 n + 1).toNat

end

end A104715.P13930365634231736902

namespace A104715

/-- `A265008(A089633(n)+1)` -/
def P13930365634231736902.Spec : Prop :=
  ∀ n, P13930365634231736902.a n = A104715 (n + 1)

end A104715

/-! ## A104715.P14547409158206630127

`A265008(A023758(n+2))`
-/

namespace A104715.P14547409158206630127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265008 (A023758 (n + 2)).toNat

end

end A104715.P14547409158206630127

namespace A104715

/-- `A265008(A023758(n+2))` -/
def P14547409158206630127.Spec : Prop :=
  ∀ n, P14547409158206630127.a n = A104715 (n + 1)

end A104715

/-! ## A104715.P17310758338345969784

`A265008(eq[1, A069010(n)])`
-/

namespace A104715.P17310758338345969784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265008 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104715.P17310758338345969784

namespace A104715

/-- `A265008(eq[1, A069010(n)])` -/
def P17310758338345969784.Spec : Prop :=
  ∀ n, P17310758338345969784.a n = A104715 (n + 1)

end A104715

/-! ## A104715.P2439509805008001352

`A265008(∑[A057728(n+1)])`
-/

namespace A104715.P2439509805008001352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265008 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A104715.P2439509805008001352

namespace A104715

/-- `A265008(∑[A057728(n+1)])` -/
def P2439509805008001352.Spec : Prop :=
  ∀ n, P2439509805008001352.a n = A104715 (n + 1)

end A104715

/-! ## A104715.P8807628508639773796

`A265008(record[A059893(n+1)])`
-/

namespace A104715.P8807628508639773796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265008 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A104715.P8807628508639773796

namespace A104715

/-- `A265008(record[A059893(n+1)])` -/
def P8807628508639773796.Spec : Prop :=
  ∀ n, P8807628508639773796.a n = A104715 (n + 1)

end A104715

/-!
# A104716: Triangle T(n,k) = (2k-3+4n)*(k-1-n)*(k-2-n)/6, 1<=k<=n.

The programs for A104716, the canonical program `A104716.P16250963704566436174` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104716 has offset 1).

The definition of A104716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104716.P8216811098568626215

`2*A104634(n+1)-abs(A122432(n))`
-/

namespace A104716.P8216811098568626215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104634 (n + 1) - |A122432 n|

end

end A104716.P8216811098568626215

namespace A104716

/-- `2*A104634(n+1)-abs(A122432(n))` -/
def P8216811098568626215.Spec : Prop :=
  ∀ n, P8216811098568626215.a n = A104716 (n + 1)

end A104716

/-! ## A104716.P16250963704566436174

`2*A104634(n+1)-A000217(A004736(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A104716

/-- `2*A104634(n+1)-A000217(A004736(n+1))` -/
def P16250963704566436174.Spec : Prop :=
  ∀ n, P16250963704566436174.a n = A104716 (n + 1)

theorem P16250963704566436174.correct : P16250963704566436174.Spec := by
  intro n
  simp only [A104716, Nat.add_sub_cancel]

end A104716

/-! ## A104716.P872323940063336420

`A104634(n+1)+A193892(n)%A104634(n+1)`
-/

namespace A104716.P872323940063336420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104634 (n + 1) + Int.tmod (A193892 n) (A104634 (n + 1))

end

end A104716.P872323940063336420

namespace A104716

/-- `A104634(n+1)+A193892(n)%A104634(n+1)` -/
def P872323940063336420.Spec : Prop :=
  ∀ n, P872323940063336420.a n = A104716 (n + 1)

end A104716

/-! ## A104716.P15551249964566303383

`A104634(n+1)+A213750(n+1)-A104633(n+1)`
-/

namespace A104716.P15551249964566303383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104634 (n + 1) + (A213750 (n + 1) - A104633 (n + 1))

end

end A104716.P15551249964566303383

namespace A104716

/-- `A104634(n+1)+A213750(n+1)-A104633(n+1)` -/
def P15551249964566303383.Spec : Prop :=
  ∀ n, P15551249964566303383.a n = A104716 (n + 1)

end A104716

/-! ## A104716.P8913850402837320226

`A213500(A185868(n+1)+A025581(n))`
-/

namespace A104716.P8913850402837320226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213500 (A185868 (n + 1) + A025581 n).toNat

end

end A104716.P8913850402837320226

namespace A104716

/-- `A213500(A185868(n+1)+A025581(n))` -/
def P8913850402837320226.Spec : Prop :=
  ∀ n, P8913850402837320226.a n = A104716 (n + 1)

end A104716

/-! ## A104716.P6416370435313549266

`A213500(A185869(n+1)-A094727(n+1))`
-/

namespace A104716.P6416370435313549266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213500 (A185869 (n + 1) - A094727 (n + 1)).toNat

end

end A104716.P6416370435313549266

namespace A104716

/-- `A213500(A185869(n+1)-A094727(n+1))` -/
def P6416370435313549266.Spec : Prop :=
  ∀ n, P6416370435313549266.a n = A104716 (n + 1)

end A104716

/-! ## A104716.P2853911378479566861

`A008486(A104634(n+1))-A193976(n)`
-/

namespace A104716.P2853911378479566861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A104634 (n + 1)).toNat - A193976 n

end

end A104716.P2853911378479566861

namespace A104716

/-- `A008486(A104634(n+1))-A193976(n)` -/
def P2853911378479566861.Spec : Prop :=
  ∀ n, P2853911378479566861.a n = A104716 (n + 1)

end A104716

/-! ## A104716.P3100986473751235904

`A005408(A104634(n+1))-A000124(A004736(n+1))`
-/

namespace A104716.P3100986473751235904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A104634 (n + 1)).toNat - A000124 (A004736 (n + 1)).toNat

end

end A104716.P3100986473751235904

namespace A104716

/-- `A005408(A104634(n+1))-A000124(A004736(n+1))` -/
def P3100986473751235904.Spec : Prop :=
  ∀ n, P3100986473751235904.a n = A104716 (n + 1)

end A104716

/-!
# A104718: Concatenations of pairs of primes that differ by 8.

The programs for A104718, there is no canonical definition to state claims against.
-/

/-! ## A104718.P15020295822495092492

`A032613(A023202(n+1))`
-/

namespace A104718.P15020295822495092492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032613 (A023202 (n + 1)).toNat

end

end A104718.P15020295822495092492

/-! ## A104718.P15246715781912386578

`A032613(p?[A015915(n+1)])`
-/

namespace A104718.P15246715781912386578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032613 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A104718.P15246715781912386578

/-! ## A104718.P10280084077440566979

`A032613(p?[A262085(n+1)])`
-/

namespace A104718.P10280084077440566979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032613 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A104718.P10280084077440566979

/-! ## A104718.P17571737123078496016

`A032613(A087680(n+1)-4)`
-/

namespace A104718.P17571737123078496016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032613 (A087680 (n + 1) - 4).toNat

end

end A104718.P17571737123078496016

/-! ## A104718.P8099507591526101374

`A032613(p?[A086304(n+1)-2])`
-/

namespace A104718.P8099507591526101374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032613 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A104718.P8099507591526101374

/-! ## A104718.P6005811831439732483

`A032613(p?[A118538(n+1)-2])`
-/

namespace A104718.P6005811831439732483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032613 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A104718.P6005811831439732483

/-!
# A104719: Concatenations of pairs of primes that differ by 10.

The programs for A104719, there is no canonical definition to state claims against.
-/

/-! ## A104719.P18222011915280920349

`A032613(A140445(Δ[n²]))+2`
-/

namespace A104719.P18222011915280920349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032613 (A140445 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat + 2

end

end A104719.P18222011915280920349

/-! ## A104719.P308547817426389460

`A084317(∩[A098603(2*n+1), A227735(n+1)])`
-/

namespace A104719.P308547817426389460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098603 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227735 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084317 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A104719.P308547817426389460

/-!
# A104720: Expansion of 1/((1-x)(1-x^2)(1-10x)).

The programs for A104720, the canonical program `A104720.P5781401691433012438` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104720 has offset 0).

The definition of A104720 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-11x+9x^2+11x^3-10x^4))` (program `A104720.P5781401691433012438`, by `A104720.P5781401691433012438.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104720.P5781401691433012438

`ogf(1/(1-11x+9x^2+11x^3-10x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104720

/-- `ogf(1/(1-11x+9x^2+11x^3-10x^4))` -/
def P5781401691433012438.Spec : Prop :=
  ∀ n, P5781401691433012438.a n = A104720 n

theorem P5781401691433012438.correct : P5781401691433012438.Spec := by
  intro n
  simp only [A104720]

end A104720

/-! ## A104720.P13300028510681471147

`10*a(n-1)+(2*n+3+(-1)^n)/4` with `a(0)=1`
-/

namespace A104720.P13300028510681471147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) + ((2 * n + 3 : ℤ) + (-1) ^ n : ℚ) / 4

end

end A104720.P13300028510681471147

namespace A104720

/-- `10*a(n-1)+(2*n+3+(-1)^n)/4` -/
def P13300028510681471147.Spec : Prop :=
  ∀ n, P13300028510681471147.a n = (A104720 n : ℚ)

end A104720

/-! ## A104720.P1070809479906683735

`1000*10^n/891+(-1)^n/44-(18*n+47)/324`
-/

namespace A104720.P1070809479906683735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1000 * 10 ^ n : ℚ) / 891 + ((-1) ^ n : ℚ) / 44 - (18 * n + 47 : ℚ) / 324

end

end A104720.P1070809479906683735

namespace A104720

/-- `1000*10^n/891+(-1)^n/44-(18*n+47)/324` -/
def P1070809479906683735.Spec : Prop :=
  ∀ n, P1070809479906683735.a n = (A104720 n : ℚ)

end A104720

/-! ## A104720.P7433608662632463645

`∑[a(n-2)+10^n]` with `a(0)=1, a(1)=10`
-/

namespace A104720.P7433608662632463645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  f1 (n - 2) + 10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104720.P7433608662632463645

namespace A104720

/-- `∑[a(n-2)+10^n]` -/
def P7433608662632463645.Spec : Prop :=
  ∀ n, (P7433608662632463645.a n : ℤ) = A104720 n

end A104720

/-! ## A104720.P5759308901501854443

`∑[∑[10^n-a(n-1)]]` with `a(0)=1`
-/

namespace A104720.P5759308901501854443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (10 ^ n : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104720.P5759308901501854443

namespace A104720

/-- `∑[∑[10^n-a(n-1)]]` -/
def P5759308901501854443.Spec : Prop :=
  ∀ n, P5759308901501854443.a n = A104720 n

end A104720

/-! ## A104720.P6660514655189596835

`∑[∑[10*a(n-1)]-a(n-1)]` with `a(0)=1`
-/

namespace A104720.P6660514655189596835
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  10 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104720.P6660514655189596835

namespace A104720

/-- `∑[∑[10*a(n-1)]-a(n-1)]` -/
def P6660514655189596835.Spec : Prop :=
  ∀ n, P6660514655189596835.a n = A104720 n

end A104720

/-! ## A104720.P9427133691960697131

`∑[A056830(n+1)]`
-/

namespace A104720.P9427133691960697131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104720.P9427133691960697131

namespace A104720

/-- `∑[A056830(n+1)]` -/
def P9427133691960697131.Spec : Prop :=
  ∀ n, P9427133691960697131.a n = A104720 n

end A104720

/-! ## A104720.P9517620099709356995

`∑[A287742(2*n)]`
-/

namespace A104720.P9517620099709356995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287742 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104720.P9517620099709356995

namespace A104720

/-- `∑[A287742(2*n)]` -/
def P9517620099709356995.Spec : Prop :=
  ∀ n, P9517620099709356995.a n = A104720 n

end A104720

/-! ## A104720.P835524291078721742

`∑[∑[A015585(n+1)]]`
-/

namespace A104720.P835524291078721742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015585 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104720.P835524291078721742

namespace A104720

/-- `∑[∑[A015585(n+1)]]` -/
def P835524291078721742.Spec : Prop :=
  ∀ n, P835524291078721742.a n = A104720 n

end A104720

/-! ## A104720.P121943618867481106

`(A056830(n+1)+A014824(n+1))/2`
-/

namespace A104720.P121943618867481106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056830 (n + 1) + A014824 (n + 1) : ℚ) / 2

end

end A104720.P121943618867481106

namespace A104720

/-- `(A056830(n+1)+A014824(n+1))/2` -/
def P121943618867481106.Spec : Prop :=
  ∀ n, P121943618867481106.a n = (A104720 n : ℚ)

end A104720

/-!
# A104721: Expansion of (1+x)^2/(1-4*x^2).

The programs for A104721, the canonical program `A104721.P3537255949525271532` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104721 has offset 0).

The definition of A104721 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+x^2)/(1-4x^2))` (program `A104721.P3537255949525271532`, by `A104721.P3537255949525271532.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104721.P3537255949525271532

`ogf((1+2x+x^2)/(1-4x^2))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104721

/-- `ogf((1+2x+x^2)/(1-4x^2))` -/
def P3537255949525271532.Spec : Prop :=
  ∀ n, P3537255949525271532.a n = A104721 n

theorem P3537255949525271532.correct : P3537255949525271532.Spec := by
  intro n
  simp only [A104721]

end A104721

/-! ## A104721.P3356784495834243995

`4*a(n-2)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A104721.P3356784495834243995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  4 * a (n - 2)

end

end A104721.P3356784495834243995

namespace A104721

/-- `4*a(n-2)` -/
def P3356784495834243995.Spec : Prop :=
  ∀ n, (P3356784495834243995.a n : ℤ) = A104721 n

end A104721

/-! ## A104721.P4844820171351578280

`a(n-2)/(1/2)²` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A104721.P4844820171351578280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 2) / ((1 : ℚ) / 2) ^ 2

end

end A104721.P4844820171351578280

namespace A104721

/-- `a(n-2)/(1/2)²` -/
def P4844820171351578280.Spec : Prop :=
  ∀ n, P4844820171351578280.a n = (A104721 n : ℚ)

end A104721

/-! ## A104721.P8015256129999680628

`a(n-2)+lcm(3, a(n-2))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A104721.P8015256129999680628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 2) + Nat.lcm 3 (a (n - 2))

end

end A104721.P8015256129999680628

namespace A104721

/-- `a(n-2)+lcm(3, a(n-2))` -/
def P8015256129999680628.Spec : Prop :=
  ∀ n, (P8015256129999680628.a n : ℤ) = A104721 n

end A104721

/-! ## A104721.P7025772309058975004

`Δ[A136326(n)]`
-/

namespace A104721.P7025772309058975004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104721.P7025772309058975004

namespace A104721

/-- `Δ[A136326(n)]` -/
def P7025772309058975004.Spec : Prop :=
  ∀ n, P7025772309058975004.a n = A104721 n

end A104721

/-! ## A104721.P9947044538948240412

`∑[A122391(or(1, n))]`
-/

namespace A104721.P9947044538948240412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122391 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104721.P9947044538948240412

namespace A104721

/-- `∑[A122391(or(1, n))]` -/
def P9947044538948240412.Spec : Prop :=
  ∀ n, P9947044538948240412.a n = A104721 n

end A104721

/-! ## A104721.P11767363202781254910

`∑[A002001(floor(n/2))]`
-/

namespace A104721.P11767363202781254910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002001 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104721.P11767363202781254910

namespace A104721

/-- `∑[A002001(floor(n/2))]` -/
def P11767363202781254910.Spec : Prop :=
  ∀ n, P11767363202781254910.a n = A104721 n

end A104721

/-! ## A104721.P16931071449671171556

`(A082605(n+1)-1)/2`
-/

namespace A104721.P16931071449671171556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082605 (n + 1) - 1 : ℚ) / 2

end

end A104721.P16931071449671171556

namespace A104721

/-- `(A082605(n+1)-1)/2` -/
def P16931071449671171556.Spec : Prop :=
  ∀ n, P16931071449671171556.a n = (A104721 n : ℚ)

end A104721

/-! ## A104721.P9447945483974466676

`2^(n+1)-A134683(n)`
-/

namespace A104721.P9447945483974466676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A134683 n

end

end A104721.P9447945483974466676

namespace A104721

/-- `2^(n+1)-A134683(n)` -/
def P9447945483974466676.Spec : Prop :=
  ∀ n, P9447945483974466676.a n = A104721 n

end A104721

/-! ## A104721.P11239884152299813827

`A117856(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A104721.P11239884152299813827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A117856 (n - 1) + a (n - 1)

end

end A104721.P11239884152299813827

namespace A104721

/-- `A117856(n-1)+a(n-1)` -/
def P11239884152299813827.Spec : Prop :=
  ∀ n, P11239884152299813827.a n = A104721 n

end A104721

/-! ## A104721.P13217185451451855292

`A072944(A114119(n))/2`
-/

namespace A104721.P13217185451451855292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072944 (A114119 n).toNat : ℚ) / 2

end

end A104721.P13217185451451855292

namespace A104721

/-- `A072944(A114119(n))/2` -/
def P13217185451451855292.Spec : Prop :=
  ∀ n, P13217185451451855292.a n = (A104721 n : ℚ)

end A104721

/-! ## A104721.P11953546141921390022

`and(A084215(n), A097163(n))`
-/

namespace A104721.P11953546141921390022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084215 n) (A097163 n)

end

end A104721.P11953546141921390022

namespace A104721

/-- `and(A084215(n), A097163(n))` -/
def P11953546141921390022.Spec : Prop :=
  ∀ n, P11953546141921390022.a n = A104721 n

end A104721

/-! ## A104721.P10144192741254119172

`and(A026633(n), A281104(n))`
-/

namespace A104721.P10144192741254119172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026633 n) (A281104 n)

end

end A104721.P10144192741254119172

namespace A104721

/-- `and(A026633(n), A281104(n))` -/
def P10144192741254119172.Spec : Prop :=
  ∀ n, P10144192741254119172.a n = A104721 n

end A104721

/-! ## A104721.P4410616999684596143

`and(A084215(n), A260022(n))`
-/

namespace A104721.P4410616999684596143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084215 n) (A260022 n)

end

end A104721.P4410616999684596143

namespace A104721

/-- `and(A084215(n), A260022(n))` -/
def P4410616999684596143.Spec : Prop :=
  ∀ n, P4410616999684596143.a n = A104721 n

end A104721

/-! ## A104721.P16927418097942481670

`and(A084215(n), A281104(n))`
-/

namespace A104721.P16927418097942481670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084215 n) (A281104 n)

end

end A104721.P16927418097942481670

namespace A104721

/-- `and(A084215(n), A281104(n))` -/
def P16927418097942481670.Spec : Prop :=
  ∀ n, P16927418097942481670.a n = A104721 n

end A104721

/-! ## A104721.P11496810812035708071

`and(A084215(n), A283323(n))`
-/

namespace A104721.P11496810812035708071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084215 n) (A283323 n)

end

end A104721.P11496810812035708071

namespace A104721

/-- `and(A084215(n), A283323(n))` -/
def P11496810812035708071.Spec : Prop :=
  ∀ n, P11496810812035708071.a n = A104721 n

end A104721

/-! ## A104721.P532095102072452776

`and(A084215(n), A283583(n))`
-/

namespace A104721.P532095102072452776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084215 n) (A283583 n)

end

end A104721.P532095102072452776

namespace A104721

/-- `and(A084215(n), A283583(n))` -/
def P532095102072452776.Spec : Prop :=
  ∀ n, P532095102072452776.a n = A104721 n

end A104721

/-! ## A104721.P7752050529207413168

`and(A084215(n), A283587(n))`
-/

namespace A104721.P7752050529207413168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084215 n) (A283587 n)

end

end A104721.P7752050529207413168

namespace A104721

/-- `and(A084215(n), A283587(n))` -/
def P7752050529207413168.Spec : Prop :=
  ∀ n, P7752050529207413168.a n = A104721 n

end A104721

/-! ## A104721.P13979022484888131322

`and(A084215(n), A283602(n))`
-/

namespace A104721.P13979022484888131322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084215 n) (A283602 n)

end

end A104721.P13979022484888131322

namespace A104721

/-- `and(A084215(n), A283602(n))` -/
def P13979022484888131322.Spec : Prop :=
  ∀ n, P13979022484888131322.a n = A104721 n

end A104721

/-! ## A104721.P9097054276611234953

`and(A084215(n), A283646(n))`
-/

namespace A104721.P9097054276611234953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084215 n) (A283646 n)

end

end A104721.P9097054276611234953

namespace A104721

/-- `and(A084215(n), A283646(n))` -/
def P9097054276611234953.Spec : Prop :=
  ∀ n, P9097054276611234953.a n = A104721 n

end A104721

/-!
# A104722: Self-convolution of repeated Catalan numbers.

The programs for A104722, the canonical program `A104722.P17182887965710500432` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104722 has offset 0).

The definition of A104722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104722.P17182887965710500432

`A059348(n+2)-A000007(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A104722

/-- `A059348(n+2)-A000007(n)` -/
def P17182887965710500432.Spec : Prop :=
  ∀ n, P17182887965710500432.a n = A104722 n

theorem P17182887965710500432.correct : P17182887965710500432.Spec := by
  intro n
  simp only [A104722]

end A104722

/-! ## A104722.P17592445253448555044

`A059348(n+2)/A054977(n)`
-/

namespace A104722.P17592445253448555044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059348 (n + 2) : ℚ) / (A054977 n : ℚ)

end

end A104722.P17592445253448555044

namespace A104722

/-- `A059348(n+2)/A054977(n)` -/
def P17592445253448555044.Spec : Prop :=
  ∀ n, P17592445253448555044.a n = (A104722 n : ℚ)

end A104722

/-! ## A104722.P17810212101520976608

`∪[A005807(n), A068875(n)]`
-/

namespace A104722.P17810212101520976608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005807 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A104722.P17810212101520976608

namespace A104722

/-- `∪[A005807(n), A068875(n)]` -/
def P17810212101520976608.Spec : Prop :=
  ∀ n, (P17810212101520976608.a n : ℤ) = A104722 n

end A104722

/-! ## A104722.P7900323961194891840

`∪[A068875(n), A167422(n)]`
-/

namespace A104722.P7900323961194891840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167422 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A104722.P7900323961194891840

namespace A104722

/-- `∪[A068875(n), A167422(n)]` -/
def P7900323961194891840.Spec : Prop :=
  ∀ n, (P7900323961194891840.a n : ℤ) = A104722 n

end A104722

/-! ## A104722.P6496936201123353440

`∪[A228403(n+1), A005807(n)]`
-/

namespace A104722.P6496936201123353440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005807 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A104722.P6496936201123353440

namespace A104722

/-- `∪[A228403(n+1), A005807(n)]` -/
def P6496936201123353440.Spec : Prop :=
  ∀ n, (P6496936201123353440.a n : ℤ) = A104722 n

end A104722

/-! ## A104722.P3128345088643743242

`∪[A167422(n), A228403(n+1)]`
-/

namespace A104722.P3128345088643743242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167422 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A104722.P3128345088643743242

namespace A104722

/-- `∪[A167422(n), A228403(n+1)]` -/
def P3128345088643743242.Spec : Prop :=
  ∀ n, (P3128345088643743242.a n : ℤ) = A104722 n

end A104722

/-! ## A104722.P11632586877580993445

`A059348(n+2)+A084568(n)-A104721(n+1)`
-/

namespace A104722.P11632586877580993445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059348 (n + 2) + (A084568 n - A104721 (n + 1))

end

end A104722.P11632586877580993445

namespace A104722

/-- `A059348(n+2)+A084568(n)-A104721(n+1)` -/
def P11632586877580993445.Spec : Prop :=
  ∀ n, P11632586877580993445.a n = A104722 n

end A104722

/-! ## A104722.P1233683229921394501

`A059347(A340266(n+1))`
-/

namespace A104722.P1233683229921394501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059347 (A340266 (n + 1)).toNat

end

end A104722.P1233683229921394501

namespace A104722

/-- `A059347(A340266(n+1))` -/
def P1233683229921394501.Spec : Prop :=
  ∀ n, P1233683229921394501.a n = A104722 n

end A104722

/-!
# A104723: Moebius transform of Jacobsthal numbers.

The programs for A104723, the canonical program `A104723.P5041177650715917469` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104723 has offset 0).

The definition of A104723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104723.P5041177650715917469

`floor((A027375(n)+n%2)/3)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A104723

/-- `floor((A027375(n)+n%2)/3)` -/
def P5041177650715917469.Spec : Prop :=
  ∀ n, P5041177650715917469.a n = A104723 n

theorem P5041177650715917469.correct : P5041177650715917469.Spec := by
  intro n
  simp only [A104723]

end A104723

/-! ## A104723.P3279147170259577137

`round((n-char[2])*A001037(n)/3)`
-/

namespace A104723.P3279147170259577137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A001037 n : ℚ) / 3)

end

end A104723.P3279147170259577137

namespace A104723

/-- `round((n-char[2])*A001037(n)/3)` -/
def P3279147170259577137.Spec : Prop :=
  ∀ n, P3279147170259577137.a n = A104723 n

end A104723

/-! ## A104723.P9682068037877740048

`floor((A027375(n)+A000035(n))/3)`
-/

namespace A104723.P9682068037877740048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A027375 n + A000035 n : ℚ) / 3⌋

end

end A104723.P9682068037877740048

namespace A104723

/-- `floor((A027375(n)+A000035(n))/3)` -/
def P9682068037877740048.Spec : Prop :=
  ∀ n, P9682068037877740048.a n = A104723 n

end A104723

/-! ## A104723.P5558964649908638563

`floor((A027375(n)+A010052(n))/3)`
-/

namespace A104723.P5558964649908638563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A027375 n + A010052 n : ℚ) / 3⌋

end

end A104723.P5558964649908638563

namespace A104723

/-- `floor((A027375(n)+A010052(n))/3)` -/
def P5558964649908638563.Spec : Prop :=
  ∀ n, P5558964649908638563.a n = A104723 n

end A104723

/-! ## A104723.P9440473872615935626

`floor(A027375(n)/A165024(n+1))`
-/

namespace A104723.P9440473872615935626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A027375 n : ℚ) / (A165024 (n + 1) : ℚ)⌋

end

end A104723.P9440473872615935626

namespace A104723

/-- `floor(A027375(n)/A165024(n+1))` -/
def P9440473872615935626.Spec : Prop :=
  ∀ n, P9440473872615935626.a n = A104723 n

end A104723

/-!
# A104725: Number of complementing systems of subsets of {0, 1, ..., n-1}.

The programs for A104725, there is no canonical definition to state claims against.
-/

/-! ## A104725.P16280868478749873495

`A160086(n)+A074206(n)`
-/

namespace A104725.P16280868478749873495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 n + A074206 n

end

end A104725.P16280868478749873495

/-! ## A104725.P14686827706106157816

`Δ[A173492(A004273(n)-n)]`
-/

namespace A104725.P14686827706106157816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173492 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104725.P14686827706106157816

/-! ## A104725.P15651239952234247470

`A173492(n)-A173492(A004273(n)-n)`
-/

namespace A104725.P15651239952234247470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173492 n - A173492 (A004273 n - (n : ℤ)).toNat

end

end A104725.P15651239952234247470

/-! ## A104725.P13670273658454138742

`A173492(n)-A173492(n-A057427(n))`
-/

namespace A104725.P13670273658454138742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173492 n - A173492 ((n : ℤ) - A057427 n).toNat

end

end A104725.P13670273658454138742

/-! ## A104725.P830156496015761165

`A074206(n)-A057428(n)*A160086(n)`
-/

namespace A104725.P830156496015761165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n - A057428 n * A160086 n

end

end A104725.P830156496015761165

/-! ## A104725.P8260122395356012031

`A074206(n)-A134824(n)*A160086(n)`
-/

namespace A104725.P8260122395356012031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n - A134824 n * A160086 n

end

end A104725.P8260122395356012031

/-! ## A104725.P17657451781229329786

`Δ[A173492(n-A057427(n))]`
-/

namespace A104725.P17657451781229329786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173492 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104725.P17657451781229329786

/-! ## A104725.P15550212556359193936

`Δ[A173492(A004526(A004273(n)))]`
-/

namespace A104725.P15550212556359193936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173492 (A004526 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104725.P15550212556359193936

/-! ## A104725.P2907117062025778416

`Δ[A173492(A003056(A007590(n)))]`
-/

namespace A104725.P2907117062025778416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173492 (A003056 (A007590 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104725.P2907117062025778416

/-! ## A104725.P14247395992131126211

`Δ[A173492(A004247(A000124(n)))]`
-/

namespace A104725.P14247395992131126211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173492 (A004247 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104725.P14247395992131126211

/-! ## A104725.P3579605989082011197

`Δ[A173492(A002262(A027379(n)))]`
-/

namespace A104725.P3579605989082011197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173492 (A002262 (A027379 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104725.P3579605989082011197

/-!
# A104726: Triangle generated as the matrix product of A026729 and A000012 (triangular views), read by rows.

The programs for A104726, there is no canonical definition to state claims against.
-/

/-! ## A104726.P15489196381640830941

`A294453(A061579(n))`
-/

namespace A104726.P15489196381640830941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294453 (A061579 n).toNat

end

end A104726.P15489196381640830941

/-! ## A104726.P4044576894629717205

`A294453(A114327(n)+n)`
-/

namespace A104726.P4044576894629717205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294453 (A114327 n + (n : ℤ)).toNat

end

end A104726.P4044576894629717205

/-! ## A104726.P6872535673799137161

`A054450(n-A004197(n))`
-/

namespace A104726.P6872535673799137161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054450 ((n : ℤ) - A004197 n).toNat

end

end A104726.P6872535673799137161

/-! ## A104726.P14602473328438674425

`A054450(n-A053616(n))`
-/

namespace A104726.P14602473328438674425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054450 ((n : ℤ) - A053616 n).toNat

end

end A104726.P14602473328438674425

/-! ## A104726.P13771881762025492511

`A294453(∑[A198954(n)-1])`
-/

namespace A104726.P13771881762025492511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294453 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A104726.P13771881762025492511

/-! ## A104726.P8054567754233514312

`A294453(A038722(n+1)-1)`
-/

namespace A104726.P8054567754233514312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294453 (A038722 (n + 1) - 1).toNat

end

end A104726.P8054567754233514312

/-! ## A104726.P3656160592581210113

`A054450(1-A003983(n+1)+n)`
-/

namespace A104726.P3656160592581210113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054450 (1 - A003983 (n + 1) + (n : ℤ)).toNat

end

end A104726.P3656160592581210113

/-! ## A104726.P1586768092624578720

`A294453(A093995(n+1)-(n+1))`
-/

namespace A104726.P1586768092624578720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294453 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A104726.P1586768092624578720

/-! ## A104726.P4615337514005679179

`A294453(A038722(n+2))`
-/

namespace A104726.P4615337514005679179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294453 (A038722 (n + 2)).toNat

end

end A104726.P4615337514005679179

/-!
# A104728: Triangle T(n,k) = (k-1-n)*(k-2-n)*(k-2+2*n)/2 read by rows, 1<=k<=n.

The programs for A104728, the canonical program `A104728.P13928348646976407776` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104728 has offset 1).

The definition of A104728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104728.P13928348646976407776

`2*A104716(n+1)-A104634(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A104728

/-- `2*A104716(n+1)-A104634(n+1)` -/
def P13928348646976407776.Spec : Prop :=
  ∀ n, P13928348646976407776.a n = A104728 (n + 1)

theorem P13928348646976407776.correct : P13928348646976407776.Spec := by
  intro n
  simp only [A104728, Nat.add_sub_cancel]

end A104728

/-! ## A104728.P13349102920221218615

`A213761(n+1)+A027480(A025581(n))`
-/

namespace A104728.P13349102920221218615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213761 (n + 1) + A027480 (A025581 n).toNat

end

end A104728.P13349102920221218615

namespace A104728

/-- `A213761(n+1)+A027480(A025581(n))` -/
def P13349102920221218615.Spec : Prop :=
  ∀ n, P13349102920221218615.a n = A104728 (n + 1)

end A104728

/-! ## A104728.P7825498747466602504

`A213761(n+1)+A135503(A004736(n+1))`
-/

namespace A104728.P7825498747466602504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213761 (n + 1) + A135503 (A004736 (n + 1)).toNat

end

end A104728.P7825498747466602504

namespace A104728

/-- `A213761(n+1)+A135503(A004736(n+1))` -/
def P7825498747466602504.Spec : Prop :=
  ∀ n, P7825498747466602504.a n = A104728 (n + 1)

end A104728

/-! ## A104728.P11614269948296278655

`A000217(A004736(n+1))*A134483(n+1)`
-/

namespace A104728.P11614269948296278655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004736 (n + 1)).toNat * A134483 (n + 1)

end

end A104728.P11614269948296278655

namespace A104728

/-- `A000217(A004736(n+1))*A134483(n+1)` -/
def P11614269948296278655.Spec : Prop :=
  ∀ n, P11614269948296278655.a n = A104728 (n + 1)

end A104728

/-! ## A104728.P11783115400000467384

`A000217(A025581(n)+1)*A134483(n+1)`
-/

namespace A104728.P11783115400000467384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A025581 n + 1).toNat * A134483 (n + 1)

end

end A104728.P11783115400000467384

namespace A104728

/-- `A000217(A025581(n)+1)*A134483(n+1)` -/
def P11783115400000467384.Spec : Prop :=
  ∀ n, P11783115400000467384.a n = A104728 (n + 1)

end A104728

/-! ## A104728.P17291314268221965429

`A007401(n+1)*A212012(n+1)-A095729(n+1)`
-/

namespace A104728.P17291314268221965429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (n + 1) * A212012 (n + 1) - A095729 (n + 1)

end

end A104728.P17291314268221965429

namespace A104728

/-- `A007401(n+1)*A212012(n+1)-A095729(n+1)` -/
def P17291314268221965429.Spec : Prop :=
  ∀ n, P17291314268221965429.a n = A104728 (n + 1)

end A104728

/-! ## A104728.P2183963664286889036

`A005843(A104716(n+1))-A104634(n+1)`
-/

namespace A104728.P2183963664286889036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A104716 (n + 1)).toNat - A104634 (n + 1)

end

end A104728.P2183963664286889036

namespace A104728

/-- `A005843(A104716(n+1))-A104634(n+1)` -/
def P2183963664286889036.Spec : Prop :=
  ∀ n, P2183963664286889036.a n = A104728 (n + 1)

end A104728

/-! ## A104728.P10561395379346365958

`A134483(n+1)*A253552(A130321(n))`
-/

namespace A104728.P10561395379346365958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134483 (n + 1) * A253552 (A130321 n).toNat

end

end A104728.P10561395379346365958

namespace A104728

/-- `A134483(n+1)*A253552(A130321(n))` -/
def P10561395379346365958.Spec : Prop :=
  ∀ n, P10561395379346365958.a n = A104728 (n + 1)

end A104728

/-! ## A104728.P16915204575823840516

`A029931(A130330(n))*A134483(n+1)`
-/

namespace A104728.P16915204575823840516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A130330 n).toNat * A134483 (n + 1)

end

end A104728.P16915204575823840516

namespace A104728

/-- `A029931(A130330(n))*A134483(n+1)` -/
def P16915204575823840516.Spec : Prop :=
  ∀ n, P16915204575823840516.a n = A104728 (n + 1)

end A104728

/-!
# A104730: Triangle read by rows: T(n,k)=C(n+1,k)-C(k,n-k+1).

The programs for A104730, the canonical program `A104730.P14957697738821157083` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104730 has offset 1).

The definition of A104730 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104730.P11380372281601278869

`A085391(comp[∑[n-1]])`
-/

namespace A104730.P11380372281601278869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085391 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A104730.P11380372281601278869

namespace A104730

/-- `A085391(comp[∑[n-1]])` -/
def P11380372281601278869.Spec : Prop :=
  ∀ n, P11380372281601278869.a n = A104730 (n + 1)

end A104730

/-! ## A104730.P8201820820241999363

`C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))-A026729(comp[∑[n-1]])`
-/

namespace A104730.P8201820820241999363
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f8 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f7 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)).toNat : ℤ) - A026729 (SequenceMachineLib.nth (fun x => ∀ j, f7 j ≠ (x : ℤ)) n)

end

end A104730.P8201820820241999363

namespace A104730

/-- `C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))-A026729(comp[∑[n-1]])` -/
def P8201820820241999363.Spec : Prop :=
  ∀ n, P8201820820241999363.a n = A104730 (n + 1)

end A104730

/-! ## A104730.P14957697738821157083

`A074909(n)-A026729(A007401(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A104730

/-- `A074909(n)-A026729(A007401(n+1))` -/
def P14957697738821157083.Spec : Prop :=
  ∀ n, P14957697738821157083.a n = A104730 (n + 1)

theorem P14957697738821157083.correct : P14957697738821157083.Spec := by
  intro n
  simp only [A104730, Nat.add_sub_cancel]

end A104730

/-! ## A104730.P3398842588144560935

`A118978(n+1)-A135278(n)`
-/

namespace A104730.P3398842588144560935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118978 (n + 1) - A135278 n

end

end A104730.P3398842588144560935

namespace A104730

/-- `A118978(n+1)-A135278(n)` -/
def P3398842588144560935.Spec : Prop :=
  ∀ n, P3398842588144560935.a n = A104730 (n + 1)

end A104730

/-! ## A104730.P13744048368134855828

`A118978(n+1)-A074909(n+1)`
-/

namespace A104730.P13744048368134855828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118978 (n + 1) - A074909 (n + 1)

end

end A104730.P13744048368134855828

namespace A104730

/-- `A118978(n+1)-A074909(n+1)` -/
def P13744048368134855828.Spec : Prop :=
  ∀ n, P13744048368134855828.a n = A104730 (n + 1)

end A104730

/-!
# A104731: Triangle T(n,k) = sum_{j=k..n} (j+1)*binomial(k,j-k), read by rows, 0<=k<=n.

The programs for A104731, there is no canonical definition to state claims against.
-/

/-! ## A104731.P16179111890155498657

`A343252(A011268(n+2))`
-/

namespace A104731.P16179111890155498657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343252 (A011268 (n + 2)).toNat

end

end A104731.P16179111890155498657

/-! ## A104731.P15837279574015458797

`A126712(3*A112358(n))`
-/

namespace A104731.P15837279574015458797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126712 (3 * A112358 n).toNat

end

end A104731.P15837279574015458797

/-! ## A104731.P8912682178877133405

`A038548(A269479(n+1)²)`
-/

namespace A104731.P8912682178877133405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A269479 (n + 1) ^ 2).toNat

end

end A104731.P8912682178877133405

/-! ## A104731.P2326237382730476177

`A038548(A269505(n+1)²)`
-/

namespace A104731.P2326237382730476177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A269505 (n + 1) ^ 2).toNat

end

end A104731.P2326237382730476177

/-! ## A104731.P5773670382391307457

`A038548(A269479(n+1)^2)`
-/

namespace A104731.P5773670382391307457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A269479 (n + 1) ^ 2).toNat

end

end A104731.P5773670382391307457

/-!
# A104732: Square array T[i,j]=T[i-1,j]+T[i-1,j-1], T[1,j]=j, T[i,1]=1, read by antidiagonals.

The programs for A104732, there is no canonical definition to state claims against.
-/

/-! ## A104732.P8259424872882152427

`A210489(∑[2*n]%comp[∑[n]])`
-/

namespace A104732.P8259424872882152427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210489 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A104732.P8259424872882152427

/-! ## A104732.P15053524867394800353

`A210489(∑[char[∑[n]]]²-n-1)`
-/

namespace A104732.P15053524867394800353
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210489 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A104732.P15053524867394800353

/-! ## A104732.P2599742586674634561

`A058394(lt[2, A002260(n+1)])`
-/

namespace A104732.P2599742586674634561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058394 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A104732.P2599742586674634561

/-! ## A104732.P3642111361846677040

`A210489(A061579(n))+A000007(2*n+1)`
-/

namespace A104732.P3642111361846677040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210489 (A061579 n).toNat + A000007 (2 * n + 1)

end

end A104732.P3642111361846677040

/-! ## A104732.P10342915569003185233

`A210489(A038722(n+2))+A000007(2*n+1)`
-/

namespace A104732.P10342915569003185233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210489 (A038722 (n + 2)).toNat + A000007 (2 * n + 1)

end

end A104732.P10342915569003185233

/-!
# A104733: Triangle T(n,k) = sum_{j=k..n} Fibonacci(n-j+1)*Fibonacci(k+1), read by rows, 0<=k<=n.

The programs for A104733, the canonical program `A104733.P14033359084981660770` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104733 has offset 0).

The definition of A104733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104733.P15250439221512317701

`A104582(n+1)*A104763(n+1)`
-/

namespace A104733.P15250439221512317701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104582 (n + 1) * A104763 (n + 1)

end

end A104733.P15250439221512317701

namespace A104733

/-- `A104582(n+1)*A104763(n+1)` -/
def P15250439221512317701.Spec : Prop :=
  ∀ n, P15250439221512317701.a n = A104733 n

end A104733

/-! ## A104733.P11103116917943325316

`A000045(n+1-C(∑[char[∑[n]]], 2))*A104582(n+1)`
-/

namespace A104733.P11103116917943325316
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1 - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2) * A104582 (n + 1)

end

end A104733.P11103116917943325316

namespace A104733

/-- `A000045(n+1-C(∑[char[∑[n]]], 2))*A104582(n+1)` -/
def P11103116917943325316.Spec : Prop :=
  ∀ n, P11103116917943325316.a n = A104733 n

end A104733

/-! ## A104733.P14033359084981660770

`A058071(A112367(n))*A104582(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A104733

/-- `A058071(A112367(n))*A104582(n+1)` -/
def P14033359084981660770.Spec : Prop :=
  ∀ n, P14033359084981660770.a n = A104733 n

theorem P14033359084981660770.correct : P14033359084981660770.Spec := by
  intro n
  simp only [A104733]

end A104733

/-! ## A104733.P8060150524792141028

`A000045(A002260(n+1))*A104582(n+1)`
-/

namespace A104733.P8060150524792141028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002260 (n + 1)).toNat * A104582 (n + 1)

end

end A104733.P8060150524792141028

namespace A104733

/-- `A000045(A002260(n+1))*A104582(n+1)` -/
def P8060150524792141028.Spec : Prop :=
  ∀ n, P8060150524792141028.a n = A104733 n

end A104733

/-! ## A104733.P13558916080162886004

`A000045(A002262(n)+1)*A104582(n+1)`
-/

namespace A104733.P13558916080162886004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002262 n + 1).toNat * A104582 (n + 1)

end

end A104733.P13558916080162886004

namespace A104733

/-- `A000045(A002262(n)+1)*A104582(n+1)` -/
def P13558916080162886004.Spec : Prop :=
  ∀ n, P13558916080162886004.a n = A104733 n

end A104733

/-! ## A104733.P10282262013193640008

`A000045(A134868(n+1))*A104582(n+1)`
-/

namespace A104733.P10282262013193640008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A134868 (n + 1)).toNat * A104582 (n + 1)

end

end A104733.P10282262013193640008

namespace A104733

/-- `A000045(A134868(n+1))*A104582(n+1)` -/
def P10282262013193640008.Spec : Prop :=
  ∀ n, P10282262013193640008.a n = A104733 n

end A104733

/-! ## A104733.P14074006890937541071

`A000045(sqrt(A133819(n+1)))*A104582(n+1)`
-/

namespace A104733.P14074006890937541071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ))).toNat * A104582 (n + 1)

end

end A104733.P14074006890937541071

namespace A104733

/-- `A000045(sqrt(A133819(n+1)))*A104582(n+1)` -/
def P14074006890937541071.Spec : Prop :=
  ∀ n, P14074006890937541071.a n = A104733 n

end A104733

/-! ## A104733.P11732487529197761359

`A104582(n+1)*A104762(A038722(n+1))`
-/

namespace A104733.P11732487529197761359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104582 (n + 1) * A104762 (A038722 (n + 1)).toNat

end

end A104733.P11732487529197761359

namespace A104733

/-- `A104582(n+1)*A104762(A038722(n+1))` -/
def P11732487529197761359.Spec : Prop :=
  ∀ n, P11732487529197761359.a n = A104733 n

end A104733

/-! ## A104733.P8664852659702890722

`A027926(A063656(n))*A104582(n+1)`
-/

namespace A104733.P8664852659702890722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (A063656 n).toNat * A104582 (n + 1)

end

end A104733.P8664852659702890722

namespace A104733

/-- `A027926(A063656(n))*A104582(n+1)` -/
def P8664852659702890722.Spec : Prop :=
  ∀ n, P8664852659702890722.a n = A104733 n

end A104733

/-! ## A104733.P5673031296821808535

`A104582(n+1)*A245327(A059268(n))`
-/

namespace A104733.P5673031296821808535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104582 (n + 1) * A245327 (A059268 n).toNat

end

end A104733.P5673031296821808535

namespace A104733

/-- `A104582(n+1)*A245327(A059268(n))` -/
def P5673031296821808535.Spec : Prop :=
  ∀ n, P5673031296821808535.a n = A104733 n

end A104733

/-!
# A104734: Triangle T(n,k) = sum_{j=k..n} (2n-2j+1)*binomial(k,j-k), read by rows, 0<=k<=n.

The programs for A104734, there is no canonical definition to state claims against.
-/

/-! ## A104734.P7431730842031950118

`A104732(comp[∑[n]]+1)`
-/

namespace A104734.P7431730842031950118
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104732 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A104734.P7431730842031950118

/-! ## A104734.P17243745948834917645

`A210489(2*(C(comp[∑[n]]-n, 2)-n)-1+n)`
-/

namespace A104734.P17243745948834917645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210489 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) - 1 + (n : ℤ)).toNat

end

end A104734.P17243745948834917645

/-! ## A104734.P16610500021371063735

`A210489(A099375(n)+n)`
-/

namespace A104734.P16610500021371063735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210489 (A099375 n + (n : ℤ)).toNat

end

end A104734.P16610500021371063735

/-! ## A104734.P7557855004843207502

`A210489(A061579(comp[∑[n]]))`
-/

namespace A104734.P7557855004843207502
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210489 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A104734.P7557855004843207502

/-! ## A104734.P265772540350059311

`A210489(A038722(comp[∑[n]])-2)`
-/

namespace A104734.P265772540350059311
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210489 (A038722 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 2).toNat

end

end A104734.P265772540350059311

/-! ## A104734.P10103758996410937030

`A210489(A007401(n+1)+round(sqrt(2*(n+1)))²-(2*n+1))`
-/

namespace A104734.P10103758996410937030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210489 (A007401 (n + 1) + (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ))).toNat

end

end A104734.P10103758996410937030

/-! ## A104734.P17560579460384603762

`A210489(A007401(A038722(n+1)))`
-/

namespace A104734.P17560579460384603762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210489 (A007401 (A038722 (n + 1)).toNat).toNat

end

end A104734.P17560579460384603762

/-! ## A104734.P2018686569374917098

`A210489(A061579(n)+A002024(n+1))`
-/

namespace A104734.P2018686569374917098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210489 (A061579 n + A002024 (n + 1)).toNat

end

end A104734.P2018686569374917098

/-! ## A104734.P15700014469352587261

`A210489(A014132(n+1)+Δ[A003991(n+1)])`
-/

namespace A104734.P15700014469352587261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210489 (A014132 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A104734.P15700014469352587261

/-! ## A104734.P9880085957264155694

`A058394(lt[n, A008949(n)])`
-/

namespace A104734.P9880085957264155694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058394 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A104734.P9880085957264155694

/-!
# A104735: Numbers n such that n and digital sum of n-th prime are primes.

The programs for A104735, there is no canonical definition to state claims against.
-/

/-! ## A104735.P7762366565457915972

`p?[A075177(n+1)]`
-/

namespace A104735.P7762366565457915972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104735.P7762366565457915972

/-! ## A104735.P13754049399033105606

`A000720(A162250(n+1))`
-/

namespace A104735.P13754049399033105606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A162250 (n + 1)).toNat

end

end A104735.P13754049399033105606

/-! ## A104735.P4550846849314405322

`record[A006530(A200260(n+1))]`
-/

namespace A104735.P4550846849314405322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A200260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104735.P4550846849314405322

/-! ## A104735.P5614469897947511365

`p?[A000720(A046704(n+1))]`
-/

namespace A104735.P5614469897947511365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A046704 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104735.P5614469897947511365

/-! ## A104735.P12193932501720850515

`record[A006530(A075177(n+2))]`
-/

namespace A104735.P12193932501720850515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A075177 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104735.P12193932501720850515

/-! ## A104735.P17068883421803330048

`p?[A003963(A046704(n+2))]`
-/

namespace A104735.P17068883421803330048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A046704 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104735.P17068883421803330048

/-! ## A104735.P2449086867479033458

`filter[A075177(n+1), A010051(#)]`
-/

namespace A104735.P2449086867479033458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A104735.P2449086867479033458

/-! ## A104735.P2074975403443029263

`filter[A075177(n+2), A080339(#)]`
-/

namespace A104735.P2074975403443029263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075177 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A104735.P2074975403443029263

/-! ## A104735.P1436503123301229529

`p?[A000720(p?[A028834(n+1)])]`
-/

namespace A104735.P1436503123301229529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104735.P1436503123301229529

/-! ## A104735.P10917261227014707776

`p?[A061395(p?[A046704(n+1)])]`
-/

namespace A104735.P10917261227014707776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104735.P10917261227014707776

/-!
# A104736: Numbers n such that n and digital sums of n and n-th prime are primes.

The programs for A104736, there is no canonical definition to state claims against.
-/

/-! ## A104736.P15218776173011769331

`∩[A046704(n+1), A075177(n+1)]`
-/

namespace A104736.P15218776173011769331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104736.P15218776173011769331

/-! ## A104736.P791338613142288325

`∩[A075177(n+1), A156756(n+1)]`
-/

namespace A104736.P791338613142288325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104736.P791338613142288325

/-! ## A104736.P2658956887587996460

`∩[A028834(n+1), p?[A075177(n+1)]]`
-/

namespace A104736.P2658956887587996460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104736.P2658956887587996460

/-! ## A104736.P1704346701755515373

`∩[A182986(A075177(n+1)+1), A075177(n+1)]`
-/

namespace A104736.P1704346701755515373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A075177 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104736.P1704346701755515373

/-! ## A104736.P17951627818703850194

`∩[A028834(n+1), A104735(n+1)]`
-/

namespace A104736.P17951627818703850194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104736.P17951627818703850194

/-!
# A104737: Positions of records in A104705.

The programs for A104737, there is no canonical definition to state claims against.
-/

/-! ## A104737.P11914578861181772345

`lt[n, A104705(n+1)²]+1`
-/

namespace A104737.P11914578861181772345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104705 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A104737.P11914578861181772345

/-! ## A104737.P2305093880910492058

`A001489(n)+record[A104705(n+1)+n]`
-/

namespace A104737.P2305093880910492058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104705 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104737.P2305093880910492058

/-! ## A104737.P18276157743917366093

`record[A104705(n+1)-(n-A005843(n))]-n`
-/

namespace A104737.P18276157743917366093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104705 (n + 1) - ((n : ℤ) - A005843 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A104737.P18276157743917366093

/-! ## A104737.P6020602377296246760

`record[A000027(n+1)%A000096(A104705(n+1))]`
-/

namespace A104737.P6020602377296246760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A000096 (A104705 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104737.P6020602377296246760

/-!
# A104738: Positions of records in A104706.

The programs for A104738, there is no canonical definition to state claims against.
-/

/-! ## A104738.P15898845872019742833

`∑[A204539(n+2)]`
-/

namespace A104738.P15898845872019742833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204539 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104738.P15898845872019742833

/-! ## A104738.P5328949528452635193

`A002491(n+2)/2`
-/

namespace A104738.P5328949528452635193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002491 (n + 2) : ℚ) / 2

end

end A104738.P5328949528452635193

/-! ## A104738.P5893552759571434372

`ceil(A007952(n+1)/2)`
-/

namespace A104738.P5893552759571434372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007952 (n + 1) : ℚ) / 2⌉

end

end A104738.P5893552759571434372

/-! ## A104738.P6768649561664352571

`(∑[A028913(n)]+1)/2`
-/

namespace A104738.P6768649561664352571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028913 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A104738.P6768649561664352571

/-! ## A104738.P4201476169873539374

`(A108696(n+3)-1)/2`
-/

namespace A104738.P4201476169873539374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108696 (n + 3) - 1 : ℚ) / 2

end

end A104738.P4201476169873539374

/-! ## A104738.P16144647788449633679

`A028914(n)+a(n-1)` with `a(0)=1`
-/

namespace A104738.P16144647788449633679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028914 n + a (n - 1)

end

end A104738.P16144647788449633679

/-! ## A104738.P13518391807861417493

`∑[A028914(n+1)]+1-A028914(n+1)`
-/

namespace A104738.P13518391807861417493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A028914 (n + 1))

end

end A104738.P13518391807861417493

/-! ## A104738.P16801186257214778110

`∑[A004525(A028913(n))]`
-/

namespace A104738.P16801186257214778110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A028913 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104738.P16801186257214778110

/-! ## A104738.P17093076677253601886

`∑[A004526(A028913(n)+1)]`
-/

namespace A104738.P17093076677253601886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A028913 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104738.P17093076677253601886

/-! ## A104738.P15132673613326628963

`∑[A278529(Δ[A002491(n+1)])]+1`
-/

namespace A104738.P15132673613326628963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002491 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A104738.P15132673613326628963

/-! ## A104738.P18167452543557028585

`A278529(A002491(n+2))`
-/

namespace A104738.P18167452543557028585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A002491 (n + 2)).toNat

end

end A104738.P18167452543557028585

/-! ## A104738.P17061437988327370666

`eq[1, A130747(2*(n+1))]+1`
-/

namespace A104738.P17061437988327370666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130747 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A104738.P17061437988327370666

/-! ## A104738.P18106128738768790759

`A130747(∑[A028913(n)])`
-/

namespace A104738.P18106128738768790759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130747 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A104738.P18106128738768790759

/-! ## A104738.P15337527486197271305

`A000463(A007952(n+1))`
-/

namespace A104738.P15337527486197271305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A007952 (n + 1)).toNat

end

end A104738.P15337527486197271305

/-! ## A104738.P13860716699937723351

`A064680(∑[A028913(n)]+1)`
-/

namespace A104738.P13860716699937723351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A104738.P13860716699937723351

/-! ## A104738.P6305218954449147304

`A004525(A007952(n+1)+1)`
-/

namespace A104738.P6305218954449147304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A007952 (n + 1) + 1).toNat

end

end A104738.P6305218954449147304

/-! ## A104738.P1909988618193420879

`A004526(A007952(n+1)+1)`
-/

namespace A104738.P1909988618193420879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A007952 (n + 1) + 1).toNat

end

end A104738.P1909988618193420879

/-! ## A104738.P3599515336540277237

`A246277(A007952(n+1)+1)`
-/

namespace A104738.P3599515336540277237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A007952 (n + 1) + 1).toNat

end

end A104738.P3599515336540277237

/-! ## A104738.P4201806638164544756

`A004526(A002491(n+2)+1)`
-/

namespace A104738.P4201806638164544756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002491 (n + 2) + 1).toNat

end

end A104738.P4201806638164544756

/-!
# A104739: Positions of records in A104717.

The programs for A104739, there is no canonical definition to state claims against.
-/

/-! ## A104739.P5745820961833469744

`record[A104717(n+1)+n]-n`
-/

namespace A104739.P5745820961833469744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104717 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A104739.P5745820961833469744

/-! ## A104739.P7433937029396107540

`A001489(n)+record[A104717(n+1)+n]`
-/

namespace A104739.P7433937029396107540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104717 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104739.P7433937029396107540

/-! ## A104739.P401298802894424193

`A196199(n²)+record[A104717(n+1)+n]`
-/

namespace A104739.P401298802894424193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104717 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (n ^ 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104739.P401298802894424193

/-! ## A104739.P4429809973786971594

`record[A000027(n+1)%A000040(A104717(n+1))]`
-/

namespace A104739.P4429809973786971594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A000040 (A104717 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104739.P4429809973786971594

/-! ## A104739.P6638366983264206352

`record[A028242(2*n)%A000096(A104717(n+1))]`
-/

namespace A104739.P6638366983264206352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028242 (2 * n)) (A000096 (A104717 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104739.P6638366983264206352

/-!
# A104740: a(1) = 1; for n > 1: if n is even, a(n) = least k > 0 such that sum(i=1,n/2,a(2*i-1))/sum(j=1,n,a(j))>=1/4, or 1 if there is no such k; if n is odd, a(n) = largest k > 0 such that sum(i=1,(n+1)/2,a(2*i-1))/sum(j=1,n,a(j))<=1/3, or 1 if there is no such k.

The programs for A104740, there is no canonical definition to state claims against.
-/

/-! ## A104740.P145203514980288475

`3^(n%2)*A074944(A108411(n))`
-/

namespace A104740.P145203514980288475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n % 2) : ℤ) * A074944 (A108411 n).toNat

end

end A104740.P145203514980288475

/-! ## A104740.P7639405178060631121

`A010684(n)*A076984(A146873(n+1))`
-/

namespace A104740.P7639405178060631121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A076984 (A146873 (n + 1)).toNat

end

end A104740.P7639405178060631121

/-! ## A104740.P5201144949066410255

`A010873(A001317(n))*A121653(A004526(n))`
-/

namespace A104740.P5201144949066410255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A001317 n).toNat * A121653 (A004526 n).toNat

end

end A104740.P5201144949066410255

/-! ## A104740.P17883895624214070122

`A003586(A025161(n+1))*A010873(A001317(n))`
-/

namespace A104740.P17883895624214070122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (A025161 (n + 1)).toNat * A010873 (A001317 n).toNat

end

end A104740.P17883895624214070122

/-! ## A104740.P13134240734754944609

`A010684(n)*A055642(A000393(n+1))`
-/

namespace A104740.P13134240734754944609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A055642 (A000393 (n + 1)).toNat

end

end A104740.P13134240734754944609

/-!
# A104741: First terms in the rearrangements of integer numbers (see comments).

The programs for A104741, there is no canonical definition to state claims against.
-/

/-! ## A104741.P14439586846431878126

`A336934(A334111(n+1)%A190881(n+3))`
-/

namespace A104741.P14439586846431878126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336934 (Int.tmod (A334111 (n + 1)) (A190881 (n + 3))).toNat

end

end A104741.P14439586846431878126

/-!
# A104742: Number of rooted maps of (orientable) genus 3 containing n edges.

The programs for A104742, there is no canonical definition to state claims against.
-/

/-! ## A104742.P16550187543075937613

`A238396(A167614(n+5))`
-/

namespace A104742.P16550187543075937613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238396 (A167614 (n + 5)).toNat

end

end A104742.P16550187543075937613

/-! ## A104742.P16076646622433255454

`A238396(eq[13, A027935(n)])`
-/

namespace A104742.P16076646622433255454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027935 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104742.P16076646622433255454

/-! ## A104742.P749996801887175165

`A238396(eq[13, A292795(n)])`
-/

namespace A104742.P749996801887175165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104742.P749996801887175165

/-! ## A104742.P12435110831710996148

`A238396(eq[5, A292085(n+1)])`
-/

namespace A104742.P12435110831710996148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104742.P12435110831710996148

/-! ## A104742.P16110512093983209975

`A238396(Δ[A026054(n+3)]+9)`
-/

namespace A104742.P16110512093983209975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238396 (f1 (n + 1) - f1 n + 9).toNat

end

end A104742.P16110512093983209975

/-!
# A104743: a(n) = 3^n + n.

The programs for A104743, the canonical program `A104743.P17964489936834295293` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104743 has offset 0).

The definition of A104743 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+n` (program `A104743.P17964489936834295293`, by `A104743.P17964489936834295293.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104743.P17964489936834295293

`3^n+n`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104743

/-- `3^n+n` -/
def P17964489936834295293.Spec : Prop :=
  ∀ n, (P17964489936834295293.a n : ℤ) = A104743 n

theorem P17964489936834295293.correct : P17964489936834295293.Spec := by
  intro n
  simp only [A104743]

end A104743

/-!
# A104745: a(n) = 5^n + n.

The programs for A104745, the canonical program `A104745.P954463826829694829` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104745 has offset 0).

The definition of A104745 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n+n` (program `A104745.P954463826829694829`, by `A104745.P954463826829694829.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104745.P954463826829694829

`5^n+n`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104745

/-- `5^n+n` -/
def P954463826829694829.Spec : Prop :=
  ∀ n, (P954463826829694829.a n : ℤ) = A104745 n

theorem P954463826829694829.correct : P954463826829694829.Spec := by
  intro n
  simp only [A104745]

end A104745

/-!
# A104746: Array T(n,k) read by antidiagonals: T(1,k) = 2^k-1 and recursively T(n,k) = T(n-1,k) + A000337(k-1), n,k >= 1.

The programs for A104746, there is no canonical definition to state claims against.
-/

/-! ## A104746.P659871240227472448

`A054143(n)+A002864(A247026(n))`
-/

namespace A104746.P659871240227472448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 n + A002864 (A247026 n).toNat

end

end A104746.P659871240227472448

/-! ## A104746.P12929292568012107360

`A235145(A027913(n))+A054143(n)`
-/

namespace A104746.P12929292568012107360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235145 (A027913 n).toNat + A054143 n

end

end A104746.P12929292568012107360

/-! ## A104746.P2067864447610948567

`A172471(A013612(n)^A172371(n))`
-/

namespace A104746.P2067864447610948567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (SequenceMachineLib.roundAway ((A013612 n : ℚ) ^ (A172371 n : ℤ))).toNat

end

end A104746.P2067864447610948567

/-! ## A104746.P5350680616304930689

`A172471(C(A013612(n), A172371(n)))`
-/

namespace A104746.P5350680616304930689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (Nat.choose (A013612 n).toNat (A172371 n).toNat)

end

end A104746.P5350680616304930689

/-! ## A104746.P16035211758245914855

`A102683(A008590(n)²)+A054143(n)`
-/

namespace A104746.P16035211758245914855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A008590 n ^ 2).toNat + A054143 n

end

end A104746.P16035211758245914855

/-!
# A104747: a(n) = (n-3)*2^n + n*(n+3)/2 + 3.

The programs for A104747, the canonical program `A104747.P7849291554087070091` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104747 has offset 1).

The definition of A104747 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A104747.P7849291554087070091

`(n-2)*2^(n+1)+(n+1)*(n+4)/2+3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104747

/-- `(n-2)*2^(n+1)+(n+1)*(n+4)/2+3` -/
def P7849291554087070091.Spec : Prop :=
  ∀ n, P7849291554087070091.a n = (A104747 (n + 1) : ℚ)

end A104747

/-! ## A104747.P7075355604053286087

`∑[∑[A005183(n)]]`
-/

namespace A104747.P7075355604053286087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005183 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104747.P7075355604053286087

namespace A104747

/-- `∑[∑[A005183(n)]]` -/
def P7075355604053286087.Spec : Prop :=
  ∀ n, P7075355604053286087.a n = A104747 (n + 1)

end A104747

/-! ## A104747.P16247952232503490871

`∑[A048495(n)+n]`
-/

namespace A104747.P16247952232503490871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048495 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104747.P16247952232503490871

namespace A104747

/-- `∑[A048495(n)+n]` -/
def P16247952232503490871.Spec : Prop :=
  ∀ n, P16247952232503490871.a n = A104747 (n + 1)

end A104747

/-! ## A104747.P509041743768844388

`∑[A343291(n+1)-1]`
-/

namespace A104747.P509041743768844388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343291 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104747.P509041743768844388

namespace A104747

/-- `∑[A343291(n+1)-1]` -/
def P509041743768844388.Spec : Prop :=
  ∀ n, P509041743768844388.a n = A104747 (n + 1)

end A104747

/-! ## A104747.P7190473774590306797

`∑[A000337(n)+n+1]`
-/

namespace A104747.P7190473774590306797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000337 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104747.P7190473774590306797

namespace A104747

/-- `∑[A000337(n)+n+1]` -/
def P7190473774590306797.Spec : Prop :=
  ∀ n, P7190473774590306797.a n = A104747 (n + 1)

end A104747

/-!
# A104758: Number of cubes m = k^3 such that n <= m <= (n+1)^2.

The programs for A104758, there is no canonical definition to state claims against.
-/

/-! ## A104758.P3050772343860571609

`A100196(n)+A100204(n)-A048766(n)`
-/

namespace A104758.P3050772343860571609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n + (A100204 n - A048766 n)

end

end A104758.P3050772343860571609

/-!
# A104759: Concatenation of digits of natural numbers from n down to 1.

The programs for A104759, there is no canonical definition to state claims against.
-/

/-! ## A104759.P4187272052171124607

`∑[10^n*A033307(n)]`
-/

namespace A104759.P4187272052171124607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * A033307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104759.P4187272052171124607

/-! ## A104759.P12083712116618413415

`∑[Δ[A054632(n)]*A011557(n)]`
-/

namespace A104759.P12083712116618413415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054632 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104759.P12083712116618413415

/-! ## A104759.P2238473361493121417

`∑[A007376(n+1)*A178501(n+1)]`
-/

namespace A104759.P2238473361493121417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (n + 1) * A178501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104759.P2238473361493121417

/-! ## A104759.P18369104822278322902

`∑[A011557(n)*A244426(A038722(n+1))]`
-/

namespace A104759.P18369104822278322902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A244426 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104759.P18369104822278322902

/-! ## A104759.P11089221702631838998

`∑[A000030(A259434(n+1))*A011557(n)]`
-/

namespace A104759.P11089221702631838998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A259434 (n + 1)).toNat * A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104759.P11089221702631838998

/-! ## A104759.P4629483796207096987

`A138793(n+1)%Δ[A105279(n)]`
-/

namespace A104759.P4629483796207096987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138793 (n + 1)) (f1 (n + 1) - f1 n)

end

end A104759.P4629483796207096987

/-!
# A104760: Smallest semiprime containing exactly n 7's.

The programs for A104760, there is no canonical definition to state claims against.
-/

/-! ## A104760.P2049129121262472701

`A106662(n+1)^C(n, 6)!`
-/

namespace A104760.P2049129121262472701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106662 (n + 1) ^ Nat.factorial (Nat.choose n 6)

end

end A104760.P2049129121262472701

/-! ## A104760.P3370476861481972450

`A106662(A143796(∑[n]))`
-/

namespace A104760.P3370476861481972450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106662 (A143796 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A104760.P3370476861481972450

/-! ## A104760.P5828228485460178402

`A106662(A183530(n+1))`
-/

namespace A104760.P5828228485460178402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106662 (A183530 (n + 1)).toNat

end

end A104760.P5828228485460178402

/-!
# A104762: Triangle read by rows: row n contains first n nonzero Fibonacci numbers in decreasing order.

The programs for A104762, the canonical program `A104762.P17027989488132899519` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104762 has offset 1).

The definition of A104762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104762.P17027989488132899519

`A123231(A099375(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A104762

/-- `A123231(A099375(n))` -/
def P17027989488132899519.Spec : Prop :=
  ∀ n, P17027989488132899519.a n = A104762 (n + 1)

theorem P17027989488132899519.correct : P17027989488132899519.Spec := by
  intro n
  simp only [A104762, Nat.add_sub_cancel]

end A104762

/-! ## A104762.P16275318081268865265

`A000045(A004736(n+1))`
-/

namespace A104762.P16275318081268865265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004736 (n + 1)).toNat

end

end A104762.P16275318081268865265

namespace A104762

/-- `A000045(A004736(n+1))` -/
def P16275318081268865265.Spec : Prop :=
  ∀ n, P16275318081268865265.a n = A104762 (n + 1)

end A104762

/-! ## A104762.P13711279226814667828

`A000045(A025581(n)+1)`
-/

namespace A104762.P13711279226814667828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A025581 n + 1).toNat

end

end A104762.P13711279226814667828

namespace A104762

/-- `A000045(A025581(n)+1)` -/
def P13711279226814667828.Spec : Prop :=
  ∀ n, P13711279226814667828.a n = A104762 (n + 1)

end A104762

/-! ## A104762.P14740074758358419724

`A053602(A099375(n)+1)`
-/

namespace A104762.P14740074758358419724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A099375 n + 1).toNat

end

end A104762.P14740074758358419724

namespace A104762

/-- `A053602(A099375(n)+1)` -/
def P14740074758358419724.Spec : Prop :=
  ∀ n, P14740074758358419724.a n = A104762 (n + 1)

end A104762

/-! ## A104762.P2474298644354050528

`A103609(A099375(n)+1)`
-/

namespace A104762.P2474298644354050528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A099375 n + 1).toNat

end

end A104762.P2474298644354050528

namespace A104762

/-- `A103609(A099375(n)+1)` -/
def P2474298644354050528.Spec : Prop :=
  ∀ n, P2474298644354050528.a n = A104762 (n + 1)

end A104762

/-! ## A104762.P18050959476258934119

`A302126(A099375(n)+1)`
-/

namespace A104762.P18050959476258934119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (A099375 n + 1).toNat

end

end A104762.P18050959476258934119

namespace A104762

/-- `A302126(A099375(n)+1)` -/
def P18050959476258934119.Spec : Prop :=
  ∀ n, P18050959476258934119.a n = A104762 (n + 1)

end A104762

/-! ## A104762.P14675542960147160526

`A212804(A025581(n)+2)`
-/

namespace A104762.P14675542960147160526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A025581 n + 2).toNat

end

end A104762.P14675542960147160526

namespace A104762

/-- `A212804(A025581(n)+2)` -/
def P14675542960147160526.Spec : Prop :=
  ∀ n, P14675542960147160526.a n = A104762 (n + 1)

end A104762

/-! ## A104762.P1927967375137609694

`A094441(n)/A007318(n)`
-/

namespace A104762.P1927967375137609694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094441 n : ℚ) / (A007318 n : ℚ)

end

end A104762.P1927967375137609694

namespace A104762

/-- `A094441(n)/A007318(n)` -/
def P1927967375137609694.Spec : Prop :=
  ∀ n, P1927967375137609694.a n = (A104762 (n + 1) : ℚ)

end A104762

/-! ## A104762.P562363715001893553

`A109906(n)/A094436(n)`
-/

namespace A104762.P562363715001893553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109906 n : ℚ) / (A094436 n : ℚ)

end

end A104762.P562363715001893553

namespace A104762

/-- `A109906(n)/A094436(n)` -/
def P562363715001893553.Spec : Prop :=
  ∀ n, P562363715001893553.a n = (A104762 (n + 1) : ℚ)

end A104762

/-! ## A104762.P6156694483721886326

`A000045(sqrt(A055461(n+1)))`
-/

namespace A104762.P6156694483721886326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.sqrt (A055461 (n + 1) : ℝ))).toNat

end

end A104762.P6156694483721886326

namespace A104762

/-- `A000045(sqrt(A055461(n+1)))` -/
def P6156694483721886326.Spec : Prop :=
  ∀ n, P6156694483721886326.a n = A104762 (n + 1)

end A104762

/-! ## A104762.P6844017351894808128

`A000045(log2(A090988(n+1)))`
-/

namespace A104762.P6844017351894808128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.logb 2 (A090988 (n + 1) : ℝ))).toNat

end

end A104762.P6844017351894808128

namespace A104762

/-- `A000045(log2(A090988(n+1)))` -/
def P6844017351894808128.Spec : Prop :=
  ∀ n, P6844017351894808128.a n = A104762 (n + 1)

end A104762

/-! ## A104762.P9740977736390069263

`A000045(log2(A130321(n))+1)`
-/

namespace A104762.P9740977736390069263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ) + 1)).toNat

end

end A104762.P9740977736390069263

namespace A104762

/-- `A000045(log2(A130321(n))+1)` -/
def P9740977736390069263.Spec : Prop :=
  ∀ n, P9740977736390069263.a n = A104762 (n + 1)

end A104762

/-! ## A104762.P7962634762249329448

`A000045(log2(2*A130321(n)))`
-/

namespace A104762.P7962634762249329448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.logb 2 (2 * A130321 n : ℝ))).toNat

end

end A104762.P7962634762249329448

namespace A104762

/-- `A000045(log2(2*A130321(n)))` -/
def P7962634762249329448.Spec : Prop :=
  ∀ n, P7962634762249329448.a n = A104762 (n + 1)

end A104762

/-! ## A104762.P15082592594595512795

`A000045(round(A099375(n)/2))`
-/

namespace A104762.P15082592594595512795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((A099375 n : ℚ) / 2)).toNat

end

end A104762.P15082592594595512795

namespace A104762

/-- `A000045(round(A099375(n)/2))` -/
def P15082592594595512795.Spec : Prop :=
  ∀ n, P15082592594595512795.a n = A104762 (n + 1)

end A104762

/-! ## A104762.P2419355756694404849

`A212804(A004736(n+1)+1)`
-/

namespace A104762.P2419355756694404849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A004736 (n + 1) + 1).toNat

end

end A104762.P2419355756694404849

namespace A104762

/-- `A212804(A004736(n+1)+1)` -/
def P2419355756694404849.Spec : Prop :=
  ∀ n, P2419355756694404849.a n = A104762 (n + 1)

end A104762

/-! ## A104762.P8597200772882758523

`A324969(A004736(n+1)+1)`
-/

namespace A104762.P8597200772882758523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (A004736 (n + 1) + 1).toNat

end

end A104762.P8597200772882758523

namespace A104762

/-- `A324969(A004736(n+1)+1)` -/
def P8597200772882758523.Spec : Prop :=
  ∀ n, P8597200772882758523.a n = A104762 (n + 1)

end A104762

/-! ## A104762.P11601282147671681926

`A000045((A099375(n)+1)/2)`
-/

namespace A104762.P11601282147671681926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((A099375 n + 1 : ℚ) / 2)).toNat

end

end A104762.P11601282147671681926

namespace A104762

/-- `A000045((A099375(n)+1)/2)` -/
def P11601282147671681926.Spec : Prop :=
  ∀ n, P11601282147671681926.a n = A104762 (n + 1)

end A104762

/-! ## A104762.P14907879163605883185

`A000045(val(A036561(n), 2)+1)`
-/

namespace A104762.P14907879163605883185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.valuation (A036561 n).toNat 2 + 1)

end

end A104762.P14907879163605883185

namespace A104762

/-- `A000045(val(A036561(n), 2)+1)` -/
def P14907879163605883185.Spec : Prop :=
  ∀ n, P14907879163605883185.a n = A104762 (n + 1)

end A104762

/-! ## A104762.P14618064548019945410

`A000045(val(2*A036561(n), 2))`
-/

namespace A104762.P14618064548019945410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.valuation (2 * A036561 n).toNat 2)

end

end A104762.P14618064548019945410

namespace A104762

/-- `A000045(val(2*A036561(n), 2))` -/
def P14618064548019945410.Spec : Prop :=
  ∀ n, P14618064548019945410.a n = A104762 (n + 1)

end A104762

/-! ## A104762.P12707851894570834454

`A000045(A127739(n+1)-n)`
-/

namespace A104762.P12707851894570834454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A127739 (n + 1) - (n : ℤ)).toNat

end

end A104762.P12707851894570834454

namespace A104762

/-- `A000045(A127739(n+1)-n)` -/
def P12707851894570834454.Spec : Prop :=
  ∀ n, P12707851894570834454.a n = A104762 (n + 1)

end A104762

/-!
# A104763: Triangle read by rows: Fibonacci(1), Fibonacci(2), ..., Fibonacci(n) in row n.

The programs for A104763, the canonical program `A104763.P5539537034161833375` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104763 has offset 1).

The definition of A104763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104763.P6911771674576418490

`A000045(n+1-C(∑[char[∑[n]]], 2))`
-/

namespace A104763.P6911771674576418490
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1 - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)

end

end A104763.P6911771674576418490

namespace A104763

/-- `A000045(n+1-C(∑[char[∑[n]]], 2))` -/
def P6911771674576418490.Spec : Prop :=
  ∀ n, P6911771674576418490.a n = A104763 (n + 1)

end A104763

/-! ## A104763.P10136104618796810871

`A016095(A112367(n))`
-/

namespace A104763.P10136104618796810871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016095 (A112367 n).toNat

end

end A104763.P10136104618796810871

namespace A104763

/-- `A016095(A112367(n))` -/
def P10136104618796810871.Spec : Prop :=
  ∀ n, P10136104618796810871.a n = A104763 (n + 1)

end A104763

/-! ## A104763.P5539537034161833375

`A000045(A002260(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A104763

/-- `A000045(A002260(n+1))` -/
def P5539537034161833375.Spec : Prop :=
  ∀ n, P5539537034161833375.a n = A104763 (n + 1)

theorem P5539537034161833375.correct : P5539537034161833375.Spec := by
  intro n
  simp only [A104763, Nat.add_sub_cancel]

end A104763

/-! ## A104763.P5666079386606671029

`A000045(A002262(n)+1)`
-/

namespace A104763.P5666079386606671029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002262 n + 1).toNat

end

end A104763.P5666079386606671029

namespace A104763

/-- `A000045(A002262(n)+1)` -/
def P5666079386606671029.Spec : Prop :=
  ∀ n, P5666079386606671029.a n = A104763 (n + 1)

theorem P5666079386606671029.correct : P5666079386606671029.Spec := by
  intro n
  simp only [A104763, Nat.add_sub_cancel, A104763.P5666079386606671029.a, A104763.P5539537034161833375.a, A000045, A000045.P11838749114346432762.a, A002260, A002260.P769748059679640451.a, A002262, A002262.P12129691700837801527.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A104763

/-! ## A104763.P9198190539508801771

`A000045(A134868(n+1))`
-/

namespace A104763.P9198190539508801771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A134868 (n + 1)).toNat

end

end A104763.P9198190539508801771

namespace A104763

/-- `A000045(A134868(n+1))` -/
def P9198190539508801771.Spec : Prop :=
  ∀ n, P9198190539508801771.a n = A104763 (n + 1)

end A104763

/-! ## A104763.P3067616234587955264

`A212804(A002262(n)+2)`
-/

namespace A104763.P3067616234587955264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A002262 n + 2).toNat

end

end A104763.P3067616234587955264

namespace A104763

/-- `A212804(A002262(n)+2)` -/
def P3067616234587955264.Spec : Prop :=
  ∀ n, P3067616234587955264.a n = A104763 (n + 1)

end A104763

/-! ## A104763.P18129079860833173718

`A097575(A174028(n)-2)`
-/

namespace A104763.P18129079860833173718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097575 (A174028 n - 2).toNat

end

end A104763.P18129079860833173718

namespace A104763

/-- `A097575(A174028(n)-2)` -/
def P18129079860833173718.Spec : Prop :=
  ∀ n, P18129079860833173718.a n = A104763 (n + 1)

end A104763

/-! ## A104763.P3558269849059600602

`A193588(n-A123578(n))`
-/

namespace A104763.P3558269849059600602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 ((n : ℤ) - A123578 n).toNat

end

end A104763.P3558269849059600602

namespace A104763

/-- `A193588(n-A123578(n))` -/
def P3558269849059600602.Spec : Prop :=
  ∀ n, P3558269849059600602.a n = A104763 (n + 1)

end A104763

/-! ## A104763.P874157982319828130

`A193588(n)-A141169(n)`
-/

namespace A104763.P874157982319828130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 n - A141169 n

end

end A104763.P874157982319828130

namespace A104763

/-- `A193588(n)-A141169(n)` -/
def P874157982319828130.Spec : Prop :=
  ∀ n, P874157982319828130.a n = A104763 (n + 1)

end A104763

/-! ## A104763.P7484022973136519025

`A094436(n)/A007318(n)`
-/

namespace A104763.P7484022973136519025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094436 n : ℚ) / (A007318 n : ℚ)

end

end A104763.P7484022973136519025

namespace A104763

/-- `A094436(n)/A007318(n)` -/
def P7484022973136519025.Spec : Prop :=
  ∀ n, P7484022973136519025.a n = (A104763 (n + 1) : ℚ)

end A104763

/-! ## A104763.P7050988955548970506

`A109906(n)/A094441(n)`
-/

namespace A104763.P7050988955548970506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109906 n : ℚ) / (A094441 n : ℚ)

end

end A104763.P7050988955548970506

namespace A104763

/-- `A109906(n)/A094441(n)` -/
def P7050988955548970506.Spec : Prop :=
  ∀ n, P7050988955548970506.a n = (A104763 (n + 1) : ℚ)

end A104763

/-! ## A104763.P7597573106491401484

`A153281(n)/A130321(n)`
-/

namespace A104763.P7597573106491401484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153281 n : ℚ) / (A130321 n : ℚ)

end

end A104763.P7597573106491401484

namespace A104763

/-- `A153281(n)/A130321(n)` -/
def P7597573106491401484.Spec : Prop :=
  ∀ n, P7597573106491401484.a n = (A104763 (n + 1) : ℚ)

end A104763

/-! ## A104763.P7489914454747161127

`A000045(abs(A140756(n+1)))`
-/

namespace A104763.P7489914454747161127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |A140756 (n + 1)|.toNat

end

end A104763.P7489914454747161127

namespace A104763

/-- `A000045(abs(A140756(n+1)))` -/
def P7489914454747161127.Spec : Prop :=
  ∀ n, P7489914454747161127.a n = A104763 (n + 1)

end A104763

/-! ## A104763.P4874056899740582546

`A000045(sqrt(A133819(n+1)))`
-/

namespace A104763.P4874056899740582546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ))).toNat

end

end A104763.P4874056899740582546

namespace A104763

/-- `A000045(sqrt(A133819(n+1)))` -/
def P4874056899740582546.Spec : Prop :=
  ∀ n, P4874056899740582546.a n = A104763 (n + 1)

end A104763

/-! ## A104763.P6733976704319311196

`A000045(sqrt(A143844(n))+1)`
-/

namespace A104763.P6733976704319311196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.sqrt (A143844 n : ℝ) + 1)).toNat

end

end A104763.P6733976704319311196

namespace A104763

/-- `A000045(sqrt(A143844(n))+1)` -/
def P6733976704319311196.Spec : Prop :=
  ∀ n, P6733976704319311196.a n = A104763 (n + 1)

end A104763

/-! ## A104763.P15131282219950949379

`A000045(log2(A059268(n))+1)`
-/

namespace A104763.P15131282219950949379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ) + 1)).toNat

end

end A104763.P15131282219950949379

namespace A104763

/-- `A000045(log2(A059268(n))+1)` -/
def P15131282219950949379.Spec : Prop :=
  ∀ n, P15131282219950949379.a n = A104763 (n + 1)

end A104763

/-! ## A104763.P14412052645245273206

`A000045(log2(2*A059268(n)))`
-/

namespace A104763.P14412052645245273206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.logb 2 (2 * A059268 n : ℝ))).toNat

end

end A104763.P14412052645245273206

namespace A104763

/-- `A000045(log2(2*A059268(n)))` -/
def P14412052645245273206.Spec : Prop :=
  ∀ n, P14412052645245273206.a n = A104763 (n + 1)

end A104763

/-! ## A104763.P11007272184560905330

`A000045(A144328(n+1)+1)`
-/

namespace A104763.P11007272184560905330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A144328 (n + 1) + 1).toNat

end

end A104763.P11007272184560905330

namespace A104763

/-- `A000045(A144328(n+1)+1)` -/
def P11007272184560905330.Spec : Prop :=
  ∀ n, P11007272184560905330.a n = A104763 (n + 1)

end A104763

/-! ## A104763.P1891086864438711058

`A053602(A158405(n+1)+1)`
-/

namespace A104763.P1891086864438711058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A158405 (n + 1) + 1).toNat

end

end A104763.P1891086864438711058

namespace A104763

/-- `A053602(A158405(n+1)+1)` -/
def P1891086864438711058.Spec : Prop :=
  ∀ n, P1891086864438711058.a n = A104763 (n + 1)

end A104763

/-!
# A104764: Triangle T(n,k) = Lucas(n-k+1) read by rows, 1<=k<=n.

The programs for A104764, the canonical program `A104764.P125420061018971658` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104764 has offset 1).

The definition of A104764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104764.P377106492542670911

`A000032(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A104764.P377106492542670911
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A104764.P377106492542670911

namespace A104764

/-- `A000032(C(comp[∑[n]]-n, 2)-n)` -/
def P377106492542670911.Spec : Prop :=
  ∀ n, P377106492542670911.a n = A104764 (n + 1)

end A104764

/-! ## A104764.P16205942933386389108

`A000204(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A104764.P16205942933386389108
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A104764.P16205942933386389108

namespace A104764

/-- `A000204(C(comp[∑[n]]-n, 2)-n)` -/
def P16205942933386389108.Spec : Prop :=
  ∀ n, P16205942933386389108.a n = A104764 (n + 1)

end A104764

/-! ## A104764.P11554254844731257147

`A001612(C(comp[∑[n]]-n, 2)-n)-1`
-/

namespace A104764.P11554254844731257147
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) - 1

end

end A104764.P11554254844731257147

namespace A104764

/-- `A001612(C(comp[∑[n]]-n, 2)-n)-1` -/
def P11554254844731257147.Spec : Prop :=
  ∀ n, P11554254844731257147.a n = A104764 (n + 1)

end A104764

/-! ## A104764.P3122385799855915708

`A000211(C(comp[∑[n]]-n, 2)-n)-2`
-/

namespace A104764.P3122385799855915708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) - 2

end

end A104764.P3122385799855915708

namespace A104764

/-- `A000211(C(comp[∑[n]]-n, 2)-n)-2` -/
def P3122385799855915708.Spec : Prop :=
  ∀ n, P3122385799855915708.a n = A104764 (n + 1)

end A104764

/-! ## A104764.P698396728436062613

`A280690(2*(C(comp[∑[n]]-n, 2)-n))`
-/

namespace A104764.P698396728436062613
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280690 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))).toNat

end

end A104764.P698396728436062613

namespace A104764

/-- `A280690(2*(C(comp[∑[n]]-n, 2)-n))` -/
def P698396728436062613.Spec : Prop :=
  ∀ n, P698396728436062613.a n = A104764 (n + 1)

end A104764

/-! ## A104764.P8075580729702792421

`A280689(4*(C(comp[∑[n]]-n, 2)-n))`
-/

namespace A104764.P8075580729702792421
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280689 (4 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))).toNat

end

end A104764.P8075580729702792421

namespace A104764

/-- `A280689(4*(C(comp[∑[n]]-n, 2)-n))` -/
def P8075580729702792421.Spec : Prop :=
  ∀ n, P8075580729702792421.a n = A104764 (n + 1)

end A104764

/-! ## A104764.P8319299072663463972

`A280154(C(comp[∑[n]]-n, 2)-n)/5`
-/

namespace A104764.P8319299072663463972
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280154 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) : ℚ) / 5

end

end A104764.P8319299072663463972

namespace A104764

/-- `A280154(C(comp[∑[n]]-n, 2)-n)/5` -/
def P8319299072663463972.Spec : Prop :=
  ∀ n, P8319299072663463972.a n = (A104764 (n + 1) : ℚ)

end A104764

/-! ## A104764.P16979466702257698421

`A001610(C(comp[∑[n]]-n, 2)-(n+1))+1`
-/

namespace A104764.P16979466702257698421
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) + 1

end

end A104764.P16979466702257698421

namespace A104764

/-- `A001610(C(comp[∑[n]]-n, 2)-(n+1))+1` -/
def P16979466702257698421.Spec : Prop :=
  ∀ n, P16979466702257698421.a n = A104764 (n + 1)

end A104764

/-! ## A104764.P7769304778768287080

`A022112(C(comp[∑[n]]-n, 2)-(n+1))/2`
-/

namespace A104764.P7769304778768287080
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022112 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) : ℚ) / 2

end

end A104764.P7769304778768287080

namespace A104764

/-- `A022112(C(comp[∑[n]]-n, 2)-(n+1))/2` -/
def P7769304778768287080.Spec : Prop :=
  ∀ n, P7769304778768287080.a n = (A104764 (n + 1) : ℚ)

end A104764

/-! ## A104764.P125420061018971658

`A082587(A099375(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A104764

/-- `A082587(A099375(n))` -/
def P125420061018971658.Spec : Prop :=
  ∀ n, P125420061018971658.a n = A104764 (n + 1)

theorem P125420061018971658.correct : P125420061018971658.Spec := by
  intro n
  simp only [A104764, Nat.add_sub_cancel]

end A104764

/-! ## A104764.P10743960804557696469

`A000032(A004736(n+1))`
-/

namespace A104764.P10743960804557696469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A004736 (n + 1)).toNat

end

end A104764.P10743960804557696469

namespace A104764

/-- `A000032(A004736(n+1))` -/
def P10743960804557696469.Spec : Prop :=
  ∀ n, P10743960804557696469.a n = A104764 (n + 1)

end A104764

/-! ## A104764.P10032480803792966896

`A000032(A025581(n)+1)`
-/

namespace A104764.P10032480803792966896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A025581 n + 1).toNat

end

end A104764.P10032480803792966896

namespace A104764

/-- `A000032(A025581(n)+1)` -/
def P10032480803792966896.Spec : Prop :=
  ∀ n, P10032480803792966896.a n = A104764 (n + 1)

end A104764

/-! ## A104764.P15641524338972727935

`A000204(A025581(n)+1)`
-/

namespace A104764.P15641524338972727935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (A025581 n + 1).toNat

end

end A104764.P15641524338972727935

namespace A104764

/-- `A000204(A025581(n)+1)` -/
def P15641524338972727935.Spec : Prop :=
  ∀ n, P15641524338972727935.a n = A104764 (n + 1)

end A104764

/-! ## A104764.P4977404378522977839

`A115339(A212012(n+1))`
-/

namespace A104764.P4977404378522977839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115339 (A212012 (n + 1)).toNat

end

end A104764.P4977404378522977839

namespace A104764

/-- `A115339(A212012(n+1))` -/
def P4977404378522977839.Spec : Prop :=
  ∀ n, P4977404378522977839.a n = A104764 (n + 1)

end A104764

/-! ## A104764.P14218143050028795883

`A245962(A128177(n+1))`
-/

namespace A104764.P14218143050028795883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245962 (A128177 (n + 1)).toNat

end

end A104764.P14218143050028795883

namespace A104764

/-- `A245962(A128177(n+1))` -/
def P14218143050028795883.Spec : Prop :=
  ∀ n, P14218143050028795883.a n = A104764 (n + 1)

end A104764

/-! ## A104764.P17196674655148020948

`A302126(A099375(n)+2)`
-/

namespace A104764.P17196674655148020948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (A099375 n + 2).toNat

end

end A104764.P17196674655148020948

namespace A104764

/-- `A302126(A099375(n)+2)` -/
def P17196674655148020948.Spec : Prop :=
  ∀ n, P17196674655148020948.a n = A104764 (n + 1)

end A104764

/-! ## A104764.P8095118202115701759

`A000032(sqrt(A055461(n+1)))`
-/

namespace A104764.P8095118202115701759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway (Real.sqrt (A055461 (n + 1) : ℝ))).toNat

end

end A104764.P8095118202115701759

namespace A104764

/-- `A000032(sqrt(A055461(n+1)))` -/
def P8095118202115701759.Spec : Prop :=
  ∀ n, P8095118202115701759.a n = A104764 (n + 1)

end A104764

/-! ## A104764.P9213616870709157424

`A000032(log2(A090988(n+1)))`
-/

namespace A104764.P9213616870709157424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway (Real.logb 2 (A090988 (n + 1) : ℝ))).toNat

end

end A104764.P9213616870709157424

namespace A104764

/-- `A000032(log2(A090988(n+1)))` -/
def P9213616870709157424.Spec : Prop :=
  ∀ n, P9213616870709157424.a n = A104764 (n + 1)

end A104764

/-! ## A104764.P4999155529352239133

`A000032(log2(A130321(n))+1)`
-/

namespace A104764.P4999155529352239133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ) + 1)).toNat

end

end A104764.P4999155529352239133

namespace A104764

/-- `A000032(log2(A130321(n))+1)` -/
def P4999155529352239133.Spec : Prop :=
  ∀ n, P4999155529352239133.a n = A104764 (n + 1)

end A104764

/-! ## A104764.P5581237132249580993

`A000032(log2(2*A130321(n)))`
-/

namespace A104764.P5581237132249580993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway (Real.logb 2 (2 * A130321 n : ℝ))).toNat

end

end A104764.P5581237132249580993

namespace A104764

/-- `A000032(log2(2*A130321(n)))` -/
def P5581237132249580993.Spec : Prop :=
  ∀ n, P5581237132249580993.a n = A104764 (n + 1)

end A104764

/-!
# A104765: Triangle T(n,k) read by rows: row n contains the first n Lucas numbers A000204.

The programs for A104765, the canonical program `A104765.P18282024818191995764` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104765 has offset 1).

The definition of A104765 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104765.P9521484387890905604

`A000032(n+1-C(∑[char[∑[n]]], 2))`
-/

namespace A104765.P9521484387890905604
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1 - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)

end

end A104765.P9521484387890905604

namespace A104765

/-- `A000032(n+1-C(∑[char[∑[n]]], 2))` -/
def P9521484387890905604.Spec : Prop :=
  ∀ n, P9521484387890905604.a n = A104765 (n + 1)

end A104765

/-! ## A104765.P15330153352433416401

`A060922(A112367(n))`
-/

namespace A104765.P15330153352433416401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060922 (A112367 n).toNat

end

end A104765.P15330153352433416401

namespace A104765

/-- `A060922(A112367(n))` -/
def P15330153352433416401.Spec : Prop :=
  ∀ n, P15330153352433416401.a n = A104765 (n + 1)

end A104765

/-! ## A104765.P18282024818191995764

`abs(A075193(A002262(n)))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A104765

/-- `abs(A075193(A002262(n)))` -/
def P18282024818191995764.Spec : Prop :=
  ∀ n, P18282024818191995764.a n = A104765 (n + 1)

theorem P18282024818191995764.correct : P18282024818191995764.Spec := by
  intro n
  simp only [A104765, Nat.add_sub_cancel]

end A104765

/-! ## A104765.P9250520190984289768

`A000032(A002260(n+1))`
-/

namespace A104765.P9250520190984289768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A002260 (n + 1)).toNat

end

end A104765.P9250520190984289768

namespace A104765

/-- `A000032(A002260(n+1))` -/
def P9250520190984289768.Spec : Prop :=
  ∀ n, P9250520190984289768.a n = A104765 (n + 1)

end A104765

/-! ## A104765.P1599146357979581406

`A000032(A002262(n)+1)`
-/

namespace A104765.P1599146357979581406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A002262 n + 1).toNat

end

end A104765.P1599146357979581406

namespace A104765

/-- `A000032(A002262(n)+1)` -/
def P1599146357979581406.Spec : Prop :=
  ∀ n, P1599146357979581406.a n = A104765 (n + 1)

end A104765

/-! ## A104765.P2584529121426360725

`A000204(A002262(n)+1)`
-/

namespace A104765.P2584529121426360725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (A002262 n + 1).toNat

end

end A104765.P2584529121426360725

namespace A104765

/-- `A000204(A002262(n)+1)` -/
def P2584529121426360725.Spec : Prop :=
  ∀ n, P2584529121426360725.a n = A104765 (n + 1)

end A104765

/-! ## A104765.P7673953772623433098

`A082587(A158405(n+1))`
-/

namespace A104765.P7673953772623433098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082587 (A158405 (n + 1)).toNat

end

end A104765.P7673953772623433098

namespace A104765

/-- `A082587(A158405(n+1))` -/
def P7673953772623433098.Spec : Prop :=
  ∀ n, P7673953772623433098.a n = A104765 (n + 1)

end A104765

/-! ## A104765.P7715024929882092030

`A193588(n)+A141169(n)`
-/

namespace A104765.P7715024929882092030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 n + A141169 n

end

end A104765.P7715024929882092030

namespace A104765

/-- `A193588(n)+A141169(n)` -/
def P7715024929882092030.Spec : Prop :=
  ∀ n, P7715024929882092030.a n = A104765 (n + 1)

end A104765

/-! ## A104765.P1808643485840602991

`A000032(abs(A140756(n+1)))`
-/

namespace A104765.P1808643485840602991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 |A140756 (n + 1)|.toNat

end

end A104765.P1808643485840602991

namespace A104765

/-- `A000032(abs(A140756(n+1)))` -/
def P1808643485840602991.Spec : Prop :=
  ∀ n, P1808643485840602991.a n = A104765 (n + 1)

end A104765

/-! ## A104765.P3623808344845427520

`A000032(sqrt(A133819(n+1)))`
-/

namespace A104765.P3623808344845427520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ))).toNat

end

end A104765.P3623808344845427520

namespace A104765

/-- `A000032(sqrt(A133819(n+1)))` -/
def P3623808344845427520.Spec : Prop :=
  ∀ n, P3623808344845427520.a n = A104765 (n + 1)

end A104765

/-! ## A104765.P9216991655225154496

`A000032(1-A057944(n)+n)`
-/

namespace A104765.P9216991655225154496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (1 - A057944 n + (n : ℤ)).toNat

end

end A104765.P9216991655225154496

namespace A104765

/-- `A000032(1-A057944(n)+n)` -/
def P9216991655225154496.Spec : Prop :=
  ∀ n, P9216991655225154496.a n = A104765 (n + 1)

end A104765

/-! ## A104765.P17204009051151344926

`A000032(1-(A057944(n)-n))`
-/

namespace A104765.P17204009051151344926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (1 - (A057944 n - (n : ℤ))).toNat

end

end A104765.P17204009051151344926

namespace A104765

/-- `A000032(1-(A057944(n)-n))` -/
def P17204009051151344926.Spec : Prop :=
  ∀ n, P17204009051151344926.a n = A104765 (n + 1)

end A104765

/-! ## A104765.P13715116091399157888

`A104763(n+1)+2*A141169(n)`
-/

namespace A104765.P13715116091399157888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) + 2 * A141169 n

end

end A104765.P13715116091399157888

namespace A104765

/-- `A104763(n+1)+2*A141169(n)` -/
def P13715116091399157888.Spec : Prop :=
  ∀ n, P13715116091399157888.a n = A104765 (n + 1)

end A104765

/-! ## A104765.P1535343162849784412

`A284115(n+1)/A104764(n+1)`
-/

namespace A104765.P1535343162849784412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284115 (n + 1) : ℚ) / (A104764 (n + 1) : ℚ)

end

end A104765.P1535343162849784412

namespace A104765

/-- `A284115(n+1)/A104764(n+1)` -/
def P1535343162849784412.Spec : Prop :=
  ∀ n, P1535343162849784412.a n = (A104765 (n + 1) : ℚ)

end A104765

/-! ## A104765.P17138456999656059569

`2*A193588(n)-A104763(n+1)`
-/

namespace A104765.P17138456999656059569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193588 n - A104763 (n + 1)

end

end A104765.P17138456999656059569

namespace A104765

/-- `2*A193588(n)-A104763(n+1)` -/
def P17138456999656059569.Spec : Prop :=
  ∀ n, P17138456999656059569.a n = A104765 (n + 1)

end A104765

/-! ## A104765.P15994005311586569989

`A000032(A002024(n+1)-A025581(n))`
-/

namespace A104765.P15994005311586569989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A002024 (n + 1) - A025581 n).toNat

end

end A104765.P15994005311586569989

namespace A104765

/-- `A000032(A002024(n+1)-A025581(n))` -/
def P15994005311586569989.Spec : Prop :=
  ∀ n, P15994005311586569989.a n = A104765 (n + 1)

end A104765

/-! ## A104765.P6276891299613232899

`A000032(A131818(n+2)-1)`
-/

namespace A104765.P6276891299613232899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A131818 (n + 2) - 1).toNat

end

end A104765.P6276891299613232899

namespace A104765

/-- `A000032(A131818(n+2)-1)` -/
def P6276891299613232899.Spec : Prop :=
  ∀ n, P6276891299613232899.a n = A104765 (n + 1)

end A104765

/-! ## A104765.P16961715884111667808

`A104764(A038722(n+1))`
-/

namespace A104765.P16961715884111667808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104764 (A038722 (n + 1)).toNat

end

end A104765.P16961715884111667808

namespace A104765

/-- `A104764(A038722(n+1))` -/
def P16961715884111667808.Spec : Prop :=
  ∀ n, P16961715884111667808.a n = A104765 (n + 1)

end A104765

/-! ## A104765.P14018251204292914840

`A000032(A002262(comp[∑[n]]))`
-/

namespace A104765.P14018251204292914840
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A002262 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A104765.P14018251204292914840

namespace A104765

/-- `A000032(A002262(comp[∑[n]]))` -/
def P14018251204292914840.Spec : Prop :=
  ∀ n, P14018251204292914840.a n = A104765 (n + 1)

end A104765

/-! ## A104765.P15499297264547739235

`A027960(A002260(n+1)²-A002260(n+1))`
-/

namespace A104765.P15499297264547739235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 (A002260 (n + 1) ^ 2 - A002260 (n + 1)).toNat

end

end A104765.P15499297264547739235

namespace A104765

/-- `A027960(A002260(n+1)²-A002260(n+1))` -/
def P15499297264547739235.Spec : Prop :=
  ∀ n, P15499297264547739235.a n = A104765 (n + 1)

end A104765

/-!
# A104766: Triangle T(n,k) = A001629(n-k+2) read by rows, 1<=k<=n.

The programs for A104766, the canonical program `A104766.P12493236039249980797` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104766 has offset 1).

The definition of A104766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104766.P432183244387748808

`A001629(C(comp[∑[n]]-n, 2)+1-n)`
-/

namespace A104766.P432183244387748808
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) + (1 - (n : ℤ))).toNat

end

end A104766.P432183244387748808

namespace A104766

/-- `A001629(C(comp[∑[n]]-n, 2)+1-n)` -/
def P432183244387748808.Spec : Prop :=
  ∀ n, P432183244387748808.a n = A104766 (n + 1)

end A104766

/-! ## A104766.P12493236039249980797

`A001629(A025581(n)+2)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A104766

/-- `A001629(A025581(n)+2)` -/
def P12493236039249980797.Spec : Prop :=
  ∀ n, P12493236039249980797.a n = A104766 (n + 1)

theorem P12493236039249980797.correct : P12493236039249980797.Spec := by
  intro n
  simp only [A104766, Nat.add_sub_cancel]

end A104766

/-! ## A104766.P2404006240617906072

`A001629(A004736(n+1)+1)`
-/

namespace A104766.P2404006240617906072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (A004736 (n + 1) + 1).toNat

end

end A104766.P2404006240617906072

namespace A104766

/-- `A001629(A004736(n+1)+1)` -/
def P2404006240617906072.Spec : Prop :=
  ∀ n, P2404006240617906072.a n = A104766 (n + 1)

theorem P2404006240617906072.correct : P2404006240617906072.Spec := by
  intro n
  simp only [A104766, Nat.add_sub_cancel, A104766.P2404006240617906072.a, A104766.P12493236039249980797.a, A001629, A001629.P5625967319348901745.a, A004736, A004736.P10337537277358081527.a, A025581, A025581.P420762180635059694.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A104766

/-! ## A104766.P13848895328023893850

`A001629(log2(A130330(n)+1)+1)`
-/

namespace A104766.P13848895328023893850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (SequenceMachineLib.roundAway (Real.logb 2 (A130330 n + 1 : ℝ) + 1)).toNat

end

end A104766.P13848895328023893850

namespace A104766

/-- `A001629(log2(A130330(n)+1)+1)` -/
def P13848895328023893850.Spec : Prop :=
  ∀ n, P13848895328023893850.a n = A104766 (n + 1)

end A104766

/-! ## A104766.P1610406961034279947

`A092565((C(comp[∑[n]]-n, 2)-n)²+1)`
-/

namespace A104766.P1610406961034279947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092565 (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) ^ 2 + 1).toNat

end

end A104766.P1610406961034279947

namespace A104766

/-- `A092565((C(comp[∑[n]]-n, 2)-n)²+1)` -/
def P1610406961034279947.Spec : Prop :=
  ∀ n, P1610406961034279947.a n = A104766 (n + 1)

end A104766

/-! ## A104766.P11444189853235149829

`A179180(A104582(n+1))`
-/

namespace A104766.P11444189853235149829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179180 (A104582 (n + 1)).toNat

end

end A104766.P11444189853235149829

namespace A104766

/-- `A179180(A104582(n+1))` -/
def P11444189853235149829.Spec : Prop :=
  ∀ n, P11444189853235149829.a n = A104766 (n + 1)

end A104766

/-!
# A104767: a(n)=n for n <= 3, a(n) = 2a(n-1) - 2a(n-2) + 2a(n-3) for n >= 4.

The programs for A104767, the canonical program `A104767.P3105381102247423062` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104767 has offset 0).

The definition of A104767 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-2*a(n-2)+2*a(n-3)` (program `A104767.P3105381102247423062`, by `A104767.P3105381102247423062.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104767.P6219675919945861300

`2*a(n-4)+a(n-1)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4`
-/

namespace A104767.P6219675919945861300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 4] fun n a =>
  2 * a (n - 4) + a (n - 1)

end

end A104767.P6219675919945861300

namespace A104767

/-- `2*a(n-4)+a(n-1)` -/
def P6219675919945861300.Spec : Prop :=
  ∀ n, (P6219675919945861300.a n : ℤ) = A104767 n

end A104767

/-! ## A104767.P3105381102247423062

`2*a(n-1)-2*a(n-2)+2*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104767

/-- `2*a(n-1)-2*a(n-2)+2*a(n-3)` -/
def P3105381102247423062.Spec : Prop :=
  ∀ n, P3105381102247423062.a n = A104767 n

theorem P3105381102247423062.correct : P3105381102247423062.Spec := by
  intro n
  simp only [A104767]

end A104767

/-! ## A104767.P11435267961767499650

`ogf((x+x^3)/(1-2x+2x^2-2x^3))`
-/

namespace A104767.P11435267961767499650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 1] [1, -2, 2, -2] n

end

end A104767.P11435267961767499650

namespace A104767

/-- `ogf((x+x^3)/(1-2x+2x^2-2x^3))` -/
def P11435267961767499650.Spec : Prop :=
  ∀ n, P11435267961767499650.a n = A104767 n

end A104767

/-! ## A104767.P7443246463926073146

`a(n-4)+a(n-1)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4`
-/

namespace A104767.P7443246463926073146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 4] fun n a =>
  a (n - 4) + (a (n - 1) + a (n - 4))

end

end A104767.P7443246463926073146

namespace A104767

/-- `a(n-4)+a(n-1)+a(n-4)` -/
def P7443246463926073146.Spec : Prop :=
  ∀ n, (P7443246463926073146.a n : ℤ) = A104767 n

end A104767

/-! ## A104767.P2985037023226370313

`2*(a(n-1)-(a(n-2)-a(n-3)))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A104767.P2985037023226370313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3] fun n a =>
  2 * (a (n - 1) - (a (n - 2) - a (n - 3)))

end

end A104767.P2985037023226370313

namespace A104767

/-- `2*(a(n-1)-(a(n-2)-a(n-3)))` -/
def P2985037023226370313.Spec : Prop :=
  ∀ n, P2985037023226370313.a n = A104767 n

theorem P2985037023226370313.correct : P2985037023226370313.Spec := by
  intro n
  simp only [A104767, Nat.add_sub_cancel, A104767.P2985037023226370313.a, A104767.P3105381102247423062.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A104767

/-! ## A104767.P12204687584468015582

`floor(A077943(n+3)/4)`
-/

namespace A104767.P12204687584468015582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077943 (n + 3) : ℚ) / 4⌋

end

end A104767.P12204687584468015582

namespace A104767

/-- `floor(A077943(n+3)/4)` -/
def P12204687584468015582.Spec : Prop :=
  ∀ n, P12204687584468015582.a n = A104767 n

end A104767

/-! ## A104767.P3052476145443438026

`floor(A078003(n+7)/8)`
-/

namespace A104767.P3052476145443438026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A078003 (n + 7) : ℚ) / 8⌋

end

end A104767.P3052476145443438026

namespace A104767

/-- `floor(A078003(n+7)/8)` -/
def P3052476145443438026.Spec : Prop :=
  ∀ n, P3052476145443438026.a n = A104767 n

end A104767

/-! ## A104767.P14559255076168794469

`floor(A122788(n+8)/8)`
-/

namespace A104767.P14559255076168794469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A122788 (n + 8) : ℚ) / 8⌋

end

end A104767.P14559255076168794469

namespace A104767

/-- `floor(A122788(n+8)/8)` -/
def P14559255076168794469.Spec : Prop :=
  ∀ n, P14559255076168794469.a n = A104767 n

end A104767

/-! ## A104767.P16359068343719877029

`ceil(A122788(n+8)/8-A000007(n))`
-/

namespace A104767.P16359068343719877029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A122788 (n + 8) : ℚ) / 8 - (A000007 n : ℚ)⌉

end

end A104767.P16359068343719877029

namespace A104767

/-- `ceil(A122788(n+8)/8-A000007(n))` -/
def P16359068343719877029.Spec : Prop :=
  ∀ n, P16359068343719877029.a n = A104767 n

end A104767

/-! ## A104767.P15752284548054570975

`A393945(n)-A011782(n)`
-/

namespace A104767.P15752284548054570975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393945 n - A011782 n

end

end A104767.P15752284548054570975

namespace A104767

/-- `A393945(n)-A011782(n)` -/
def P15752284548054570975.Spec : Prop :=
  ∀ n, P15752284548054570975.a n = A104767 n

theorem P15752284548054570975.correct : P15752284548054570975.Spec := by
  intro n
  simp only [A104767, Nat.add_sub_cancel, A104767.P15752284548054570975.a, A104767.P3105381102247423062.a, A011782, A011782.P7461078519819856082.a, A393945, A393945.P2240198450366095358.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A104767

/-!
# A104768: Number of matrices G with entries in Z satisfying G^2=G+1 and having the form 2G=[1+p q-2n | q+2n 1-p].

The programs for A104768, the canonical program `A104768.P16790131426723885557` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104768 has offset 0).

The definition of A104768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104768.P5162494481707231142

`A005883(n²+1)`
-/

namespace A104768.P5162494481707231142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005883 (n ^ 2 + 1)

end

end A104768.P5162494481707231142

namespace A104768

/-- `A005883(n²+1)` -/
def P5162494481707231142.Spec : Prop :=
  ∀ n, P5162494481707231142.a n = A104768 n

end A104768

/-! ## A104768.P11473408729156423278

`2*A004020(n²+1)`
-/

namespace A104768.P11473408729156423278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004020 (n ^ 2 + 1)

end

end A104768.P11473408729156423278

namespace A104768

/-- `2*A004020(n²+1)` -/
def P11473408729156423278.Spec : Prop :=
  ∀ n, P11473408729156423278.a n = A104768 n

theorem P11473408729156423278.correct : P11473408729156423278.Spec := by
  intro n
  simp only [A104768, Nat.add_sub_cancel, A104768.P11473408729156423278.a, A104768.P16790131426723885557.a, A004020, A004020.P12808183263529079992.a, A008441, A008441.P257068461411472066.a, A002654, A002654.P11574922253888480122.a, A001826, A001826.P1518250824516108745.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A104768

/-! ## A104768.P16790131426723885557

`4*A008441(n²+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A104768

/-- `4*A008441(n²+1)` -/
def P16790131426723885557.Spec : Prop :=
  ∀ n, P16790131426723885557.a n = A104768 n

theorem P16790131426723885557.correct : P16790131426723885557.Spec := by
  intro n
  simp only [A104768]

end A104768

/-! ## A104768.P8975222266994364045

`abs(4*A134343(n²+1))`
-/

namespace A104768.P8975222266994364045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 * A134343 (n ^ 2 + 1)|

end

end A104768.P8975222266994364045

namespace A104768

/-- `abs(4*A134343(n²+1))` -/
def P8975222266994364045.Spec : Prop :=
  ∀ n, P8975222266994364045.a n = A104768 n

end A104768

/-! ## A104768.P18389691852047117248

`A004976(A008441(n²+1))`
-/

namespace A104768.P18389691852047117248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 (A008441 (n ^ 2 + 1)).toNat

end

end A104768.P18389691852047117248

namespace A104768

/-- `A004976(A008441(n²+1))` -/
def P18389691852047117248.Spec : Prop :=
  ∀ n, P18389691852047117248.a n = A104768 n

end A104768

/-! ## A104768.P869266616914090192

`4*abs(A134343(A002522(n)))`
-/

namespace A104768.P869266616914090192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * |A134343 (A002522 n).toNat|

end

end A104768.P869266616914090192

namespace A104768

/-- `4*abs(A134343(A002522(n)))` -/
def P869266616914090192.Spec : Prop :=
  ∀ n, P869266616914090192.a n = A104768 n

end A104768

/-! ## A104768.P14815734532242118086

`A027709(A134343(n²+1)²)`
-/

namespace A104768.P14815734532242118086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027709 (A134343 (n ^ 2 + 1) ^ 2).toNat

end

end A104768.P14815734532242118086

namespace A104768

/-- `A027709(A134343(n²+1)²)` -/
def P14815734532242118086.Spec : Prop :=
  ∀ n, P14815734532242118086.a n = A104768 n

end A104768

/-! ## A104768.P1098493065241408577

`A001951(lcm(3, A008441(n²+1)))`
-/

namespace A104768.P1098493065241408577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (Int.lcm 3 (A008441 (n ^ 2 + 1)))

end

end A104768.P1098493065241408577

namespace A104768

/-- `A001951(lcm(3, A008441(n²+1)))` -/
def P1098493065241408577.Spec : Prop :=
  ∀ n, P1098493065241408577.a n = A104768 n

end A104768

/-! ## A104768.P1206357557512659783

`gcd(4*A134343(n²+1), A001222(((-1)^n)²))`
-/

namespace A104768.P1206357557512659783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (4 * A134343 (n ^ 2 + 1)) (A001222 (((-1) ^ n) ^ 2).toNat)

end

end A104768.P1206357557512659783

namespace A104768

/-- `gcd(4*A134343(n²+1), A001222(((-1)^n)²))` -/
def P1206357557512659783.Spec : Prop :=
  ∀ n, (P1206357557512659783.a n : ℤ) = A104768 n

end A104768

/-! ## A104768.P14109314179796919240

`A027709(A008441(A002522(n))²)`
-/

namespace A104768.P14109314179796919240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027709 (A008441 (A002522 n).toNat ^ 2).toNat

end

end A104768.P14109314179796919240

namespace A104768

/-- `A027709(A008441(A002522(n))²)` -/
def P14109314179796919240.Spec : Prop :=
  ∀ n, P14109314179796919240.a n = A104768 n

end A104768

/-!
# A104769: Expansion of g.f. -x/(1+x-x^3).

The programs for A104769, the canonical program `A104769.P13020420248925921246` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104769 has offset 0).

The definition of A104769 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(-x/(1+x-x^3))` (program `A104769.P13020420248925921246`, by `A104769.P13020420248925921246.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104769.P13020420248925921246

`ogf(-x/(1+x-x^3))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104769

/-- `ogf(-x/(1+x-x^3))` -/
def P13020420248925921246.Spec : Prop :=
  ∀ n, P13020420248925921246.a n = A104769 n

theorem P13020420248925921246.correct : P13020420248925921246.Spec := by
  intro n
  simp only [A104769]

end A104769

/-! ## A104769.P1152706327967591794

`(-1)^n*A050935(n+2)`
-/

namespace A104769.P1152706327967591794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A050935 (n + 2)

end

end A104769.P1152706327967591794

namespace A104769

/-- `(-1)^n*A050935(n+2)` -/
def P1152706327967591794.Spec : Prop :=
  ∀ n, P1152706327967591794.a n = A104769 n

end A104769

/-! ## A104769.P12488709937100099527

`A104771(n)-A104770(n)`
-/

namespace A104769.P12488709937100099527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104771 n - A104770 n

end

end A104769.P12488709937100099527

namespace A104769

/-- `A104771(n)-A104770(n)` -/
def P12488709937100099527.Spec : Prop :=
  ∀ n, P12488709937100099527.a n = A104769 n

end A104769

/-! ## A104769.P17516907490701683373

`a(n-3)-a(n-1)` with `a(0)=0, a(1)=-1, a(2)=1`
-/

namespace A104769.P17516907490701683373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 1] fun n a =>
  a (n - 3) - a (n - 1)

end

end A104769.P17516907490701683373

namespace A104769

/-- `a(n-3)-a(n-1)` -/
def P17516907490701683373.Spec : Prop :=
  ∀ n, P17516907490701683373.a n = A104769 n

end A104769

/-! ## A104769.P5159473599541979160

`-A176971(n+2)`
-/

namespace A104769.P5159473599541979160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A176971 (n + 2)

end

end A104769.P5159473599541979160

namespace A104769

/-- `-A176971(n+2)` -/
def P5159473599541979160.Spec : Prop :=
  ∀ n, P5159473599541979160.a n = A104769 n

end A104769

/-! ## A104769.P14692248001300399332

`A000007(n+1)-A176971(n+2)`
-/

namespace A104769.P14692248001300399332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A176971 (n + 2)

end

end A104769.P14692248001300399332

namespace A104769

/-- `A000007(n+1)-A176971(n+2)` -/
def P14692248001300399332.Spec : Prop :=
  ∀ n, P14692248001300399332.a n = A104769 n

end A104769

/-! ## A104769.P7654452546199319909

`A050935(n+2)*A062157(n+1)`
-/

namespace A104769.P7654452546199319909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (n + 2) * A062157 (n + 1)

end

end A104769.P7654452546199319909

namespace A104769

/-- `A050935(n+2)*A062157(n+1)` -/
def P7654452546199319909.Spec : Prop :=
  ∀ n, P7654452546199319909.a n = A104769 n

end A104769

/-! ## A104769.P1234687888272409096

`A050935(n+2)*A156872(2*n)`
-/

namespace A104769.P1234687888272409096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (n + 2) * A156872 (2 * n)

end

end A104769.P1234687888272409096

namespace A104769

/-- `A050935(n+2)*A156872(2*n)` -/
def P1234687888272409096.Spec : Prop :=
  ∀ n, P1234687888272409096.a n = A104769 n

end A104769

/-! ## A104769.P12839258515662280776

`A014021(2*n+1)-A176971(n+2)`
-/

namespace A104769.P12839258515662280776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014021 (2 * n + 1) - A176971 (n + 2)

end

end A104769.P12839258515662280776

namespace A104769

/-- `A014021(2*n+1)-A176971(n+2)` -/
def P12839258515662280776.Spec : Prop :=
  ∀ n, P12839258515662280776.a n = A104769 n

end A104769

/-! ## A104769.P16494955041164067184

`A056594(2*n+1)-A176971(n+2)`
-/

namespace A104769.P16494955041164067184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n + 1) - A176971 (n + 2)

end

end A104769.P16494955041164067184

namespace A104769

/-- `A056594(2*n+1)-A176971(n+2)` -/
def P16494955041164067184.Spec : Prop :=
  ∀ n, P16494955041164067184.a n = A104769 n

end A104769

/-! ## A104769.P1562412953283017075

`A176971(n+3)-A176971(n)`
-/

namespace A104769.P1562412953283017075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176971 (n + 3) - A176971 n

end

end A104769.P1562412953283017075

namespace A104769

/-- `A176971(n+3)-A176971(n)` -/
def P1562412953283017075.Spec : Prop :=
  ∀ n, P1562412953283017075.a n = A104769 n

end A104769

/-! ## A104769.P6962902564289357900

`A077905(n)-(a(n-1)+1)` with `a(0)=0`
-/

namespace A104769.P6962902564289357900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A077905 n - (a (n - 1) + 1)

end

end A104769.P6962902564289357900

namespace A104769

/-- `A077905(n)-(a(n-1)+1)` -/
def P6962902564289357900.Spec : Prop :=
  ∀ n, P6962902564289357900.a n = A104769 n

end A104769

/-! ## A104769.P2103503384421658619

`A077905(n)-A077905(n+2)`
-/

namespace A104769.P2103503384421658619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077905 n - A077905 (n + 2)

end

end A104769.P2103503384421658619

namespace A104769

/-- `A077905(n)-A077905(n+2)` -/
def P2103503384421658619.Spec : Prop :=
  ∀ n, P2103503384421658619.a n = A104769 n

end A104769

/-! ## A104769.P14234715560032836024

`A077905(n+3)-1`
-/

namespace A104769.P14234715560032836024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077905 (n + 3) - 1

end

end A104769.P14234715560032836024

namespace A104769

/-- `A077905(n+3)-1` -/
def P14234715560032836024.Spec : Prop :=
  ∀ n, P14234715560032836024.a n = A104769 n

end A104769

/-! ## A104769.P11292576087284379279

`A062157(n)*A078013(n+2)`
-/

namespace A104769.P11292576087284379279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A078013 (n + 2)

end

end A104769.P11292576087284379279

namespace A104769

/-- `A062157(n)*A078013(n+2)` -/
def P11292576087284379279.Spec : Prop :=
  ∀ n, P11292576087284379279.a n = A104769 n

end A104769

/-! ## A104769.P1136469687424465608

`A247917(n)-A176971(n)`
-/

namespace A104769.P1136469687424465608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247917 n - A176971 n

end

end A104769.P1136469687424465608

namespace A104769

/-- `A247917(n)-A176971(n)` -/
def P1136469687424465608.Spec : Prop :=
  ∀ n, P1136469687424465608.a n = A104769 n

end A104769

/-! ## A104769.P12427224150039783517

`A247917(n)+∑[A247917(n+1)]`
-/

namespace A104769.P12427224150039783517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247917 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104769.P12427224150039783517

namespace A104769

/-- `A247917(n)+∑[A247917(n+1)]` -/
def P12427224150039783517.Spec : Prop :=
  ∀ n, P12427224150039783517.a n = A104769 n

end A104769

/-! ## A104769.P14026990629048206930

`∑[A247917(n+3)]`
-/

namespace A104769.P14026990629048206930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247917 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104769.P14026990629048206930

namespace A104769

/-- `∑[A247917(n+3)]` -/
def P14026990629048206930.Spec : Prop :=
  ∀ n, P14026990629048206930.a n = A104769 n

end A104769

/-! ## A104769.P13027664836921390022

`A247917(n+1)-A104770(n+1)`
-/

namespace A104769.P13027664836921390022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247917 (n + 1) - A104770 (n + 1)

end

end A104769.P13027664836921390022

namespace A104769

/-- `A247917(n+1)-A104770(n+1)` -/
def P13027664836921390022.Spec : Prop :=
  ∀ n, P13027664836921390022.a n = A104769 n

end A104769

/-! ## A104769.P17583073501482301158

`∑[A104771(n)-A247917(n)]`
-/

namespace A104769.P17583073501482301158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104771 n - A247917 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104769.P17583073501482301158

namespace A104769

/-- `∑[A104771(n)-A247917(n)]` -/
def P17583073501482301158.Spec : Prop :=
  ∀ n, P17583073501482301158.a n = A104769 n

end A104769

/-!
# A104770: Expansion of g.f. (1+x^2)/(1+x-x^3).

The programs for A104770, the canonical program `A104770.P17769809335594638599` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104770 has offset 0).

The definition of A104770 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^2)/(1+x-x^3))` (program `A104770.P17769809335594638599`, by `A104770.P17769809335594638599.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104770.P17769809335594638599

`ogf((1+x^2)/(1+x-x^3))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104770

/-- `ogf((1+x^2)/(1+x-x^3))` -/
def P17769809335594638599.Spec : Prop :=
  ∀ n, P17769809335594638599.a n = A104770 n

theorem P17769809335594638599.correct : P17769809335594638599.Spec := by
  intro n
  simp only [A104770]

end A104770

/-! ## A104770.P2899914640807217230

`A104771(n)-A104769(n)`
-/

namespace A104770.P2899914640807217230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104771 n - A104769 n

end

end A104770.P2899914640807217230

namespace A104770

/-- `A104771(n)-A104769(n)` -/
def P2899914640807217230.Spec : Prop :=
  ∀ n, P2899914640807217230.a n = A104770 n

end A104770

/-! ## A104770.P13925006695557994019

`a(n-3)-a(n-1)` with `a(0)=1, a(1)=-1, a(2)=2`
-/

namespace A104770.P13925006695557994019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2] fun n a =>
  a (n - 3) - a (n - 1)

end

end A104770.P13925006695557994019

namespace A104770

/-- `a(n-3)-a(n-1)` -/
def P13925006695557994019.Spec : Prop :=
  ∀ n, P13925006695557994019.a n = A104770 n

end A104770

/-! ## A104770.P15748732348369547909

`A247917(n)+A176971(n+1)`
-/

namespace A104770.P15748732348369547909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247917 n + A176971 (n + 1)

end

end A104770.P15748732348369547909

namespace A104770

/-- `A247917(n)+A176971(n+1)` -/
def P15748732348369547909.Spec : Prop :=
  ∀ n, P15748732348369547909.a n = A104770 n

end A104770

/-! ## A104770.P16558131988365153044

`A176971(n+6)+A176971(n)`
-/

namespace A104770.P16558131988365153044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176971 (n + 6) + A176971 n

end

end A104770.P16558131988365153044

namespace A104770

/-- `A176971(n+6)+A176971(n)` -/
def P16558131988365153044.Spec : Prop :=
  ∀ n, P16558131988365153044.a n = A104770 n

end A104770

/-! ## A104770.P13926937470999553309

`A077905(n+8)-A077905(n)`
-/

namespace A104770.P13926937470999553309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077905 (n + 8) - A077905 n

end

end A104770.P13926937470999553309

namespace A104770

/-- `A077905(n+8)-A077905(n)` -/
def P13926937470999553309.Spec : Prop :=
  ∀ n, P13926937470999553309.a n = A104770 n

end A104770

/-! ## A104770.P14973320262350211731

`A247917(n+1)+2*A247917(n)`
-/

namespace A104770.P14973320262350211731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247917 (n + 1) + 2 * A247917 n

end

end A104770.P14973320262350211731

namespace A104770

/-- `A247917(n+1)+2*A247917(n)` -/
def P14973320262350211731.Spec : Prop :=
  ∀ n, P14973320262350211731.a n = A104770 n

end A104770

/-! ## A104770.P14416343575229374685

`A247917(n+1)+A247917(n)-A104769(n+1)`
-/

namespace A104770.P14416343575229374685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247917 (n + 1) + (A247917 n - A104769 (n + 1))

end

end A104770.P14416343575229374685

namespace A104770

/-- `A247917(n+1)+A247917(n)-A104769(n+1)` -/
def P14416343575229374685.Spec : Prop :=
  ∀ n, P14416343575229374685.a n = A104770 n

end A104770

/-! ## A104770.P8683986202811457007

`A104771(n)+∑[A247917(n)-A104771(n)]`
-/

namespace A104770.P8683986202811457007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247917 n - A104771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104771 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104770.P8683986202811457007

namespace A104770

/-- `A104771(n)+∑[A247917(n)-A104771(n)]` -/
def P8683986202811457007.Spec : Prop :=
  ∀ n, P8683986202811457007.a n = A104770 n

end A104770

/-!
# A104771: Expansion of g.f. (1-x+x^2)/(1+x-x^3).

The programs for A104771, the canonical program `A104771.P7213436736650707971` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104771 has offset 0).

The definition of A104771 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+x^2)/(1+x-x^3))` (program `A104771.P7213436736650707971`, by `A104771.P7213436736650707971.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104771.P7213436736650707971

`ogf((1-x+x^2)/(1+x-x^3))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104771

/-- `ogf((1-x+x^2)/(1+x-x^3))` -/
def P7213436736650707971.Spec : Prop :=
  ∀ n, P7213436736650707971.a n = A104771 n

theorem P7213436736650707971.correct : P7213436736650707971.Spec := by
  intro n
  simp only [A104771]

end A104771

/-! ## A104771.P3549521955747714606

`A104769(n)+A104770(n)`
-/

namespace A104771.P3549521955747714606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104769 n + A104770 n

end

end A104771.P3549521955747714606

namespace A104771

/-- `A104769(n)+A104770(n)` -/
def P3549521955747714606.Spec : Prop :=
  ∀ n, P3549521955747714606.a n = A104771 n

end A104771

/-! ## A104771.P16503031587388100691

`a(n-3)-a(n-1)` with `a(0)=1, a(1)=-2, a(2)=3`
-/

namespace A104771.P16503031587388100691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 3] fun n a =>
  a (n - 3) - a (n - 1)

end

end A104771.P16503031587388100691

namespace A104771

/-- `a(n-3)-a(n-1)` -/
def P16503031587388100691.Spec : Prop :=
  ∀ n, P16503031587388100691.a n = A104771 n

end A104771

/-! ## A104771.P5041658657122977571

`A033999(n)*A165192(n)`
-/

namespace A104771.P5041658657122977571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A165192 n

end

end A104771.P5041658657122977571

namespace A104771

/-- `A033999(n)*A165192(n)` -/
def P5041658657122977571.Spec : Prop :=
  ∀ n, P5041658657122977571.a n = A104771 n

end A104771

/-! ## A104771.P9288271723697740276

`A104770(n)-A176971(n+2)`
-/

namespace A104771.P9288271723697740276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104770 n - A176971 (n + 2)

end

end A104771.P9288271723697740276

namespace A104771

/-- `A104770(n)-A176971(n+2)` -/
def P9288271723697740276.Spec : Prop :=
  ∀ n, P9288271723697740276.a n = A104771 n

end A104771

/-! ## A104771.P16325556184057730990

`A247917(n+3)+A247917(n)`
-/

namespace A104771.P16325556184057730990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247917 (n + 3) + A247917 n

end

end A104771.P16325556184057730990

namespace A104771

/-- `A247917(n+3)+A247917(n)` -/
def P16325556184057730990.Spec : Prop :=
  ∀ n, P16325556184057730990.a n = A104771 n

end A104771

/-! ## A104771.P17236524077825319933

`-(A104769(n+9)+A104769(n))`
-/

namespace A104771.P17236524077825319933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A104769 (n + 9) + A104769 n)

end

end A104771.P17236524077825319933

namespace A104771

/-- `-(A104769(n+9)+A104769(n))` -/
def P17236524077825319933.Spec : Prop :=
  ∀ n, P17236524077825319933.a n = A104771 n

end A104771

/-! ## A104771.P13671982799574112519

`A104770(n)-(A176971(n)-A247917(n))`
-/

namespace A104771.P13671982799574112519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104770 n - (A176971 n - A247917 n)

end

end A104771.P13671982799574112519

namespace A104771

/-- `A104770(n)-(A176971(n)-A247917(n))` -/
def P13671982799574112519.Spec : Prop :=
  ∀ n, P13671982799574112519.a n = A104771 n

end A104771

/-! ## A104771.P14704266688873180221

`A176971(n+1)+A104769(n)-A104769(n+1)`
-/

namespace A104771.P14704266688873180221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176971 (n + 1) + (A104769 n - A104769 (n + 1))

end

end A104771.P14704266688873180221

namespace A104771

/-- `A176971(n+1)+A104769(n)-A104769(n+1)` -/
def P14704266688873180221.Spec : Prop :=
  ∀ n, P14704266688873180221.a n = A104771 n

end A104771

/-!
# A104772: If n<=2 then n else (if n is odd then 2*a(n+1) else p*q, where n=p+q, p<=q, primes).

The programs for A104772, there is no canonical definition to state claims against.
-/

/-! ## A104772.P6476694875235153266

`A104774(A104773(n+1))`
-/

namespace A104772.P6476694875235153266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104774 (A104773 (n + 1)).toNat

end

end A104772.P6476694875235153266

/-!
# A104773: A104772(A104772(n)).

The programs for A104773, there is no canonical definition to state claims against.
-/

/-! ## A104773.P10583273043990467131

`A104772(A104772(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A104773.P10583273043990467131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104772 (A104772 (n + 1)).toNat

end

end A104773.P10583273043990467131

/-!
# A104776: Numbers n such that n+2*prime(n) is a perfect square.

The programs for A104776, there is no canonical definition to state claims against.
-/

/-! ## A104776.P7934492871866060128

`A104788(n+1)²%A104783(n+1)`
-/

namespace A104776.P7934492871866060128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104788 (n + 1) ^ 2) (A104783 (n + 1))

end

end A104776.P7934492871866060128

/-! ## A104776.P5703025166685343892

`A000720(A104783(n+1))`
-/

namespace A104776.P5703025166685343892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A104783 (n + 1)).toNat

end

end A104776.P5703025166685343892

/-! ## A104776.P15317231931315000863

`A061395(p?[A104783(n+1)])`
-/

namespace A104776.P15317231931315000863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A104776.P15317231931315000863

/-! ## A104776.P15681888068701224559

`A061395(or(1, A104783(n+1)))`
-/

namespace A104776.P15681888068701224559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A104783 (n + 1))).toNat

end

end A104776.P15681888068701224559

/-! ## A104776.P15737644487846198650

`∑{d}[A104783(n+1), A061395(#)]`
-/

namespace A104776.P15737644487846198650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A104776.P15737644487846198650

/-!
# A104777: Integer squares congruent to 1 mod 6.

The programs for A104777, the canonical program `A104777.P15788971021228334833` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104777 has offset 1).

The definition of A104777 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A104777.P12075444991103897419

`(3*(n+1)-1-(n+1)%2)²`
-/

namespace A104777.P12075444991103897419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * (n + 1) : ℤ) - 1 - (((n + 1) % 2 : ℕ) : ℤ)) ^ 2

end

end A104777.P12075444991103897419

namespace A104777

/-- `(3*(n+1)-1-(n+1)%2)²` -/
def P12075444991103897419.Spec : Prop :=
  ∀ n, P12075444991103897419.a n = A104777 (n + 1)

end A104777

/-! ## A104777.P2689789989304511141

`9*(n+1-1/2)²+1/4+(-1)^(n+1)*(3*(n+1)-3/2)`
-/

namespace A104777.P2689789989304511141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 * ((n + 1 : ℚ) - (1 : ℚ) / 2) ^ 2 + (1 : ℚ) / 4 + ((-1) ^ (n + 1) : ℚ) * ((3 * (n + 1) : ℚ) - (3 : ℚ) / 2)

end

end A104777.P2689789989304511141

namespace A104777

/-- `9*(n+1-1/2)²+1/4+(-1)^(n+1)*(3*(n+1)-3/2)` -/
def P2689789989304511141.Spec : Prop :=
  ∀ n, P2689789989304511141.a n = (A104777 (n + 1) : ℚ)

end A104777

/-! ## A104777.P15788971021228334833

`A007310(n+1)²`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A104777

/-- `A007310(n+1)²` -/
def P15788971021228334833.Spec : Prop :=
  ∀ n, P15788971021228334833.a n = A104777 (n + 1)

theorem P15788971021228334833.correct : P15788971021228334833.Spec := by
  intro n
  simp only [A104777, Nat.add_sub_cancel]

end A104777

/-! ## A104777.P6446010944666700601

`or(1, 3*n+1)²`
-/

namespace A104777.P6446010944666700601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n + 1) ^ 2

end

end A104777.P6446010944666700601

namespace A104777

/-- `or(1, 3*n+1)²` -/
def P6446010944666700601.Spec : Prop :=
  ∀ n, (P6446010944666700601.a n : ℤ) = A104777 (n + 1)

end A104777

/-! ## A104777.P13590114346366244479

`lt[3*n, lcm(6, n)]²`
-/

namespace A104777.P13590114346366244479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 6 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A104777.P13590114346366244479

namespace A104777

/-- `lt[3*n, lcm(6, n)]²` -/
def P13590114346366244479.Spec : Prop :=
  ∀ n, (P13590114346366244479.a n : ℤ) = A104777 (n + 1)

end A104777

/-! ## A104777.P4842965429703165561

`or(1, 3*n+1)^2`
-/

namespace A104777.P4842965429703165561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n + 1) ^ 2

end

end A104777.P4842965429703165561

namespace A104777

/-- `or(1, 3*n+1)^2` -/
def P4842965429703165561.Spec : Prop :=
  ∀ n, (P4842965429703165561.a n : ℤ) = A104777 (n + 1)

end A104777

/-! ## A104777.P16272446708397010350

`(2-or(1, -(3*n)))²`
-/

namespace A104777.P16272446708397010350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - Int.lor 1 (-(3 * n : ℤ))) ^ 2

end

end A104777.P16272446708397010350

namespace A104777

/-- `(2-or(1, -(3*n)))²` -/
def P16272446708397010350.Spec : Prop :=
  ∀ n, P16272446708397010350.a n = A104777 (n + 1)

end A104777

/-! ## A104777.P17193445867923788146

`(1-∑[4/gcd(2, n)])²`
-/

namespace A104777.P17193445867923788146
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A104777.P17193445867923788146

namespace A104777

/-- `(1-∑[4/gcd(2, n)])²` -/
def P17193445867923788146.Spec : Prop :=
  ∀ n, P17193445867923788146.a n = (A104777 (n + 1) : ℚ)

end A104777

/-! ## A104777.P703966944694598547

`record[lcm(3, or(1, n))²]/9`
-/

namespace A104777.P703966944694598547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (Nat.lor 1 n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 9

end

end A104777.P703966944694598547

namespace A104777

/-- `record[lcm(3, or(1, n))²]/9` -/
def P703966944694598547.Spec : Prop :=
  ∀ n, P703966944694598547.a n = (A104777 (n + 1) : ℚ)

end A104777

/-! ## A104777.P3633399629156044856

`(∑[3^(n%2)]+n)²`
-/

namespace A104777.P3633399629156044856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2

end

end A104777.P3633399629156044856

namespace A104777

/-- `(∑[3^(n%2)]+n)²` -/
def P3633399629156044856.Spec : Prop :=
  ∀ n, (P3633399629156044856.a n : ℤ) = A104777 (n + 1)

end A104777

/-! ## A104777.P3609002356969734158

`∑[6-a(n-1)]²` with `a(0)=1, a(1)=4`
-/

namespace A104777.P3609002356969734158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A104777.P3609002356969734158

namespace A104777

/-- `∑[6-a(n-1)]²` -/
def P3609002356969734158.Spec : Prop :=
  ∀ n, P3609002356969734158.a n = A104777 (n + 1)

end A104777

/-! ## A104777.P14667916882526642684

`(or(1, n+1)+n+n)²`
-/

namespace A104777.P14667916882526642684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (n + 1) + n + n) ^ 2

end

end A104777.P14667916882526642684

namespace A104777

/-- `(or(1, n+1)+n+n)²` -/
def P14667916882526642684.Spec : Prop :=
  ∀ n, (P14667916882526642684.a n : ℤ) = A104777 (n + 1)

end A104777

/-! ## A104777.P12846954476326742794

`(record[and(n+1, -3)]+n)²`
-/

namespace A104777.P12846954476326742794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)) ^ 2

end

end A104777.P12846954476326742794

namespace A104777

/-- `(record[and(n+1, -3)]+n)²` -/
def P12846954476326742794.Spec : Prop :=
  ∀ n, P12846954476326742794.a n = A104777 (n + 1)

end A104777

/-! ## A104777.P10687103760891723274

`∑[floor(a(n-2))]^2` with `a(0)=1, a(1)=4, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A104777.P10687103760891723274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 2] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A104777.P10687103760891723274

namespace A104777

/-- `∑[floor(a(n-2))]^2` -/
def P10687103760891723274.Spec : Prop :=
  ∀ n, (P10687103760891723274.a n : ℤ) = A104777 (n + 1)

end A104777

/-! ## A104777.P18217076918790649903

`(1-∑[2*and(1, n)+2])²`
-/

namespace A104777.P18217076918790649903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land 1 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) ^ 2

end

end A104777.P18217076918790649903

namespace A104777

/-- `(1-∑[2*and(1, n)+2])²` -/
def P18217076918790649903.Spec : Prop :=
  ∀ n, P18217076918790649903.a n = A104777 (n + 1)

end A104777

/-! ## A104777.P6728699761841573683

`(∑[(2*n+1)%4]+n)²`
-/

namespace A104777.P6728699761841573683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2

end

end A104777.P6728699761841573683

namespace A104777

/-- `(∑[(2*n+1)%4]+n)²` -/
def P6728699761841573683.Spec : Prop :=
  ∀ n, (P6728699761841573683.a n : ℤ) = A104777 (n + 1)

end A104777

/-! ## A104777.P3733425571671596287

`(∑[and(3, 2*n+1)]+n)²`
-/

namespace A104777.P3733425571671596287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2

end

end A104777.P3733425571671596287

namespace A104777

/-- `(∑[and(3, 2*n+1)]+n)²` -/
def P3733425571671596287.Spec : Prop :=
  ∀ n, (P3733425571671596287.a n : ℤ) = A104777 (n + 1)

end A104777

/-! ## A104777.P11259161932572283371

`(record[xor(2, n-1)]+n+2)²`
-/

namespace A104777.P11259161932572283371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 2 : ℤ)) ^ 2

end

end A104777.P11259161932572283371

namespace A104777

/-- `(record[xor(2, n-1)]+n+2)²` -/
def P11259161932572283371.Spec : Prop :=
  ∀ n, P11259161932572283371.a n = A104777 (n + 1)

end A104777

/-! ## A104777.P7606666251066337068

`(and(1, n)+2*n+1+n)²`
-/

namespace A104777.P7606666251066337068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + (2 * n + 1 + n)) ^ 2

end

end A104777.P7606666251066337068

namespace A104777

/-- `(and(1, n)+2*n+1+n)²` -/
def P7606666251066337068.Spec : Prop :=
  ∀ n, (P7606666251066337068.a n : ℤ) = A104777 (n + 1)

end A104777

/-! ## A104777.P5183559459932757148

`(lt[n, xor(2, n+1)]+n+1)²`
-/

namespace A104777.P5183559459932757148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + (n + 1)) ^ 2

end

end A104777.P5183559459932757148

namespace A104777

/-- `(lt[n, xor(2, n+1)]+n+1)²` -/
def P5183559459932757148.Spec : Prop :=
  ∀ n, (P5183559459932757148.a n : ℤ) = A104777 (n + 1)

end A104777

/-!
# A104778: Table of values with shape sequence A000041 related to involutions and multinomials. Also column sums of the Kostka matrices associated with the partitions (in Abramowitz & Stegun ordering).

The programs for A104778, there is no canonical definition to state claims against.
-/

/-! ## A104778.P8937188981674881717

`∑{d}[A059901(n), A320656(#)]`
-/

namespace A104778.P8937188981674881717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A320656 d

end

end A104778.P8937188981674881717

/-! ## A104778.P2120759241397561139

`A321757(A185974(n))`
-/

namespace A104778.P2120759241397561139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321757 (A185974 n).toNat

end

end A104778.P2120759241397561139

/-! ## A104778.P6186720039121251761

`A321757(A334438(n))`
-/

namespace A104778.P6186720039121251761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321757 (A334438 n).toNat

end

end A104778.P6186720039121251761

/-! ## A104778.P7589593228326515720

`A194980(gcd(A061868(n+1), A194480(n+1)))`
-/

namespace A104778.P7589593228326515720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194980 (Int.gcd (A061868 (n + 1)) (A194480 (n + 1)))

end

end A104778.P7589593228326515720

/-!
# A104779: a(n) is the sum of entries of n-th Kostka matrix for the partitions of n.

The programs for A104779, there is no canonical definition to state claims against.
-/

/-! ## A104779.P15142598863549298484

`A178718(floor(acot(n)+n))`
-/

namespace A104779.P15142598863549298484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178718 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A104779.P15142598863549298484

/-! ## A104779.P9148533417672005099

`A178718(n^floor(atan(n)))`
-/

namespace A104779.P9148533417672005099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178718 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A104779.P9148533417672005099

/-! ## A104779.P11594618297268404109

`A178718(C(n, floor(atan(n))))`
-/

namespace A104779.P11594618297268404109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178718 (Nat.choose n ⌊Real.arctan (n : ℝ)⌋.toNat)

end

end A104779.P11594618297268404109

/-! ## A104779.P17213930488561434716

`A178718(and(1, 2^n)+n)`
-/

namespace A104779.P17213930488561434716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178718 (Nat.land 1 (2 ^ n) + n)

end

end A104779.P17213930488561434716

/-! ## A104779.P1283926600459676330

`A178718(floor(1/(n+1))+n)`
-/

namespace A104779.P1283926600459676330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178718 (⌊1 / (n + 1 : ℚ)⌋ + (n : ℤ)).toNat

end

end A104779.P1283926600459676330

/-!
# A104782: Smallest n^e (e>1) containing n in decimal representation.

The programs for A104782, there is no canonical definition to state claims against.
-/

/-! ## A104782.P13545307461711537273

`(n+1)^A045537(n+1)`
-/

namespace A104782.P13545307461711537273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A045537 (n + 1) : ℤ)

end

end A104782.P13545307461711537273

/-! ## A104782.P13538571444458978866

`A111442(A156136(∑[n]))`
-/

namespace A104782.P13538571444458978866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111442 (A156136 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A104782.P13538571444458978866

/-! ## A104782.P7699812286762018639

`A111442(A062399(n+1))`
-/

namespace A104782.P7699812286762018639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111442 (A062399 (n + 1)).toNat

end

end A104782.P7699812286762018639

/-! ## A104782.P3744342388397031603

`A111442(A120126(n+1))`
-/

namespace A104782.P3744342388397031603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111442 (A120126 (n + 1)).toNat

end

end A104782.P3744342388397031603

/-! ## A104782.P7531239588849478763

`A373291(A043315(n+1))`
-/

namespace A104782.P7531239588849478763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373291 (A043315 (n + 1)).toNat

end

end A104782.P7531239588849478763

/-!
# A104783: Prime numbers p such that pi(p) + 2*p is a square.

The programs for A104783, there is no canonical definition to state claims against.
-/

/-! ## A104783.P9002021659126890133

`A000040(A104776(n+1))`
-/

namespace A104783.P9002021659126890133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A104776 (n + 1)).toNat

end

end A104783.P9002021659126890133

/-! ## A104783.P14755261034088548011

`A008578(A104776(n+1)+1)`
-/

namespace A104783.P14755261034088548011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A104776 (n + 1) + 1).toNat

end

end A104783.P14755261034088548011

/-! ## A104783.P5085155977227476852

`A065091(A104776(n+1)-1)`
-/

namespace A104783.P5085155977227476852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A104776 (n + 1) - 1).toNat

end

end A104783.P5085155977227476852

/-! ## A104783.P5888598834020476423

`A158611(A104776(n+1)+2)`
-/

namespace A104783.P5888598834020476423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A104776 (n + 1) + 2).toNat

end

end A104783.P5888598834020476423

/-! ## A104783.P14895224435181277243

`A215848(A104776(n+1)-2)`
-/

namespace A104783.P14895224435181277243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (A104776 (n + 1) - 2).toNat

end

end A104783.P14895224435181277243

/-!
# A104788: Numbers q such that q^2 = 2*prime(n) + n for some n.

The programs for A104788, there is no canonical definition to state claims against.
-/

/-! ## A104788.P10154454878786998306

`sqrt(A104776(n+1)+2*A104783(n+1))`
-/

namespace A104788.P10154454878786998306
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A104776 (n + 1) + 2 * A104783 (n + 1) : ℝ)

end

end A104788.P10154454878786998306

/-!
# A104792: Triangle T(n,k) = A000330(n-k), n>=1, 0<=k

The programs for A104792, the canonical program `A104792.P15780514001539090027` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104792 has offset 1).

The definition of A104792 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A104792.P15780514001539090027

`A000330(A004736(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A104792

/-- `A000330(A004736(n+1))` -/
def P15780514001539090027.Spec : Prop :=
  ∀ n, P15780514001539090027.a n = A104792 (n + 1)

theorem P15780514001539090027.correct : P15780514001539090027.Spec := by
  intro n
  simp only [A104792, Nat.add_sub_cancel]

end A104792

/-! ## A104792.P13292887748830128143

`C(A099375(n)+3, 3)/4`
-/

namespace A104792.P13292887748830128143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A099375 n + 3).toNat 3 : ℚ) / 4

end

end A104792.P13292887748830128143

namespace A104792

/-- `C(A099375(n)+3, 3)/4` -/
def P13292887748830128143.Spec : Prop :=
  ∀ n, P13292887748830128143.a n = (A104792 (n + 1) : ℚ)

end A104792

/-! ## A104792.P4260643967546351843

`A000330(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A104792.P4260643967546351843
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A104792.P4260643967546351843

namespace A104792

/-- `A000330(C(comp[∑[n]]-n, 2)-n)` -/
def P4260643967546351843.Spec : Prop :=
  ∀ n, P4260643967546351843.a n = A104792 (n + 1)

end A104792

/-! ## A104792.P7387531557927709829

`A056520(C(comp[∑[n]]-n, 2)-n)-1`
-/

namespace A104792.P7387531557927709829
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056520 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) - 1

end

end A104792.P7387531557927709829

namespace A104792

/-- `A056520(C(comp[∑[n]]-n, 2)-n)-1` -/
def P7387531557927709829.Spec : Prop :=
  ∀ n, P7387531557927709829.a n = A104792 (n + 1)

end A104792

/-! ## A104792.P3628151583735245058

`A153056(C(comp[∑[n]]-n, 2)-n)-2`
-/

namespace A104792.P3628151583735245058
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153056 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) - 2

end

end A104792.P3628151583735245058

namespace A104792

/-- `A153056(C(comp[∑[n]]-n, 2)-n)-2` -/
def P3628151583735245058.Spec : Prop :=
  ∀ n, P3628151583735245058.a n = A104792 (n + 1)

end A104792

/-! ## A104792.P10649690639340291421

`A006331(C(comp[∑[n]]-n, 2)-n)/2`
-/

namespace A104792.P10649690639340291421
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006331 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) : ℚ) / 2

end

end A104792.P10649690639340291421

namespace A104792

/-- `A006331(C(comp[∑[n]]-n, 2)-n)/2` -/
def P10649690639340291421.Spec : Prop :=
  ∀ n, P10649690639340291421.a n = (A104792 (n + 1) : ℚ)

end A104792

/-! ## A104792.P298074809777053145

`A006918(A099375(n))`
-/

namespace A104792.P298074809777053145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (A099375 n).toNat

end

end A104792.P298074809777053145

namespace A104792

/-- `A006918(A099375(n))` -/
def P298074809777053145.Spec : Prop :=
  ∀ n, P298074809777053145.a n = A104792 (n + 1)

end A104792

/-! ## A104792.P3673752844320249640

`A000330(A025581(n)+1)`
-/

namespace A104792.P3673752844320249640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A025581 n + 1).toNat

end

end A104792.P3673752844320249640

namespace A104792

/-- `A000330(A025581(n)+1)` -/
def P3673752844320249640.Spec : Prop :=
  ∀ n, P3673752844320249640.a n = A104792 (n + 1)

theorem P3673752844320249640.correct : P3673752844320249640.Spec := by
  intro n
  simp only [A104792, Nat.add_sub_cancel, A104792.P3673752844320249640.a, A104792.P15780514001539090027.a, A000330, A000330.P6574240937923917945.a, A004736, A004736.P10337537277358081527.a, A025581, A025581.P420762180635059694.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A104792

/-! ## A104792.P16551625258860619928

`A193976(n)-A104633(n+1)`
-/

namespace A104792.P16551625258860619928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193976 n - A104633 (n + 1)

end

end A104792.P16551625258860619928

namespace A104792

/-- `A193976(n)-A104633(n+1)` -/
def P16551625258860619928.Spec : Prop :=
  ∀ n, P16551625258860619928.a n = A104792 (n + 1)

end A104792

/-! ## A104792.P5804528612899763545

`2*A104634(n+1)-A213750(n+1)`
-/

namespace A104792.P5804528612899763545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104634 (n + 1) - A213750 (n + 1)

end

end A104792.P5804528612899763545

namespace A104792

/-- `2*A104634(n+1)-A213750(n+1)` -/
def P5804528612899763545.Spec : Prop :=
  ∀ n, P5804528612899763545.a n = A104792 (n + 1)

end A104792

/-! ## A104792.P16941373612434019499

`A000330(A002260(A114327(n)+1+n))`
-/

namespace A104792.P16941373612434019499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A002260 (A114327 n + 1 + (n : ℤ)).toNat).toNat

end

end A104792.P16941373612434019499

namespace A104792

/-- `A000330(A002260(A114327(n)+1+n))` -/
def P16941373612434019499.Spec : Prop :=
  ∀ n, P16941373612434019499.a n = A104792 (n + 1)

end A104792

/-! ## A104792.P5204574577467418364

`A000330(A000217(A002024(n+1))-n)`
-/

namespace A104792.P5204574577467418364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A000217 (A002024 (n + 1)).toNat - (n : ℤ)).toNat

end

end A104792.P5204574577467418364

namespace A104792

/-- `A000330(A000217(A002024(n+1))-n)` -/
def P5204574577467418364.Spec : Prop :=
  ∀ n, P5204574577467418364.a n = A104792 (n + 1)

end A104792

/-! ## A104792.P1777663932767680515

`A000330(A103371(n)/A001263(n+1))`
-/

namespace A104792.P1777663932767680515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (SequenceMachineLib.roundAway ((A103371 n : ℚ) / (A001263 (n + 1) : ℚ))).toNat

end

end A104792.P1777663932767680515

namespace A104792

/-- `A000330(A103371(n)/A001263(n+1))` -/
def P1777663932767680515.Spec : Prop :=
  ∀ n, P1777663932767680515.a n = A104792 (n + 1)

end A104792

/-! ## A104792.P6933118316123071221

`A104634(n+1)-A062707(A007401(n+1))`
-/

namespace A104792.P6933118316123071221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104634 (n + 1) - A062707 (A007401 (n + 1)).toNat

end

end A104792.P6933118316123071221

namespace A104792

/-- `A104634(n+1)-A062707(A007401(n+1))` -/
def P6933118316123071221.Spec : Prop :=
  ∀ n, P6933118316123071221.a n = A104792 (n + 1)

end A104792

/-! ## A104792.P5275581782935166352

`A208323(A055461(n+1))`
-/

namespace A104792.P5275581782935166352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208323 (A055461 (n + 1)).toNat

end

end A104792.P5275581782935166352

namespace A104792

/-- `A208323(A055461(n+1))` -/
def P5275581782935166352.Spec : Prop :=
  ∀ n, P5275581782935166352.a n = A104792 (n + 1)

end A104792

/-! ## A104792.P8945559370836048678

`A000330(A057555(2*(n+1)))`
-/

namespace A104792.P8945559370836048678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A057555 (2 * (n + 1))).toNat

end

end A104792.P8945559370836048678

namespace A104792

/-- `A000330(A057555(2*(n+1)))` -/
def P8945559370836048678.Spec : Prop :=
  ∀ n, P8945559370836048678.a n = A104792 (n + 1)

end A104792

/-! ## A104792.P75690383960001243

`A000330(A394813(n+1)/A008957(n+1))`
-/

namespace A104792.P75690383960001243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (SequenceMachineLib.roundAway ((A394813 (n + 1) : ℚ) / (A008957 (n + 1) : ℚ))).toNat

end

end A104792.P75690383960001243

namespace A104792

/-- `A000330(A394813(n+1)/A008957(n+1))` -/
def P75690383960001243.Spec : Prop :=
  ∀ n, P75690383960001243.a n = A104792 (n + 1)

end A104792

/-! ## A104792.P7903444918124884379

`A093127(A131782(n+1))`
-/

namespace A104792.P7903444918124884379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093127 (A131782 (n + 1)).toNat

end

end A104792.P7903444918124884379

namespace A104792

/-- `A093127(A131782(n+1))` -/
def P7903444918124884379.Spec : Prop :=
  ∀ n, P7903444918124884379.a n = A104792 (n + 1)

end A104792

/-! ## A104792.P11279739678206370807

`A154225(A212012(n+1))`
-/

namespace A104792.P11279739678206370807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154225 (A212012 (n + 1)).toNat

end

end A104792.P11279739678206370807

namespace A104792

/-- `A154225(A212012(n+1))` -/
def P11279739678206370807.Spec : Prop :=
  ∀ n, P11279739678206370807.a n = A104792 (n + 1)

end A104792

/-! ## A104792.P8989689639054823102

`∑{d}[A090988(n+1), log2(#)²]`
-/

namespace A104792.P8989689639054823102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090988 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Real.logb 2 (d : ℝ) ^ 2

end

end A104792.P8989689639054823102

namespace A104792

/-- `∑{d}[A090988(n+1), log2(#)²]` -/
def P8989689639054823102.Spec : Prop :=
  ∀ n, P8989689639054823102.a n = (A104792 (n + 1) : ℝ)

end A104792

/-!
# A104793: Triangle T(n,k) = A023537(n-k), n >= 1, 0 <= k < n, read by rows.

The programs for A104793, the canonical program `A104793.P11127849527871265283` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104793 has offset 1).

The definition of A104793 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A104793.P11127849527871265283

`A023537(A004736(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A104793

/-- `A023537(A004736(n+1))` -/
def P11127849527871265283.Spec : Prop :=
  ∀ n, P11127849527871265283.a n = A104793 (n + 1)

theorem P11127849527871265283.correct : P11127849527871265283.Spec := by
  intro n
  simp only [A104793, Nat.add_sub_cancel]

end A104793

/-! ## A104793.P7500651920009543358

`A023537(A025581(n)+1)`
-/

namespace A104793.P7500651920009543358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023537 (A025581 n + 1).toNat

end

end A104793.P7500651920009543358

namespace A104793

/-- `A023537(A025581(n)+1)` -/
def P7500651920009543358.Spec : Prop :=
  ∀ n, P7500651920009543358.a n = A104793 (n + 1)

theorem P7500651920009543358.correct : P7500651920009543358.Spec := by
  intro n
  simp only [A104793, Nat.add_sub_cancel, A104793.P7500651920009543358.a, A104793.P11127849527871265283.a, A004736, A004736.P10337537277358081527.a, A023537, A023537.P8353153649515717979.a, A025581, A025581.P420762180635059694.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A104793

/-! ## A104793.P13408990187197370546

`A023537(val(A043569(n+1), 2))`
-/

namespace A104793.P13408990187197370546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023537 (SequenceMachineLib.valuation (A043569 (n + 1)).toNat 2)

end

end A104793.P13408990187197370546

namespace A104793

/-- `A023537(val(A043569(n+1), 2))` -/
def P13408990187197370546.Spec : Prop :=
  ∀ n, P13408990187197370546.a n = A104793 (n + 1)

end A104793

/-! ## A104793.P11574387555825660944

`A023537(A127739(n+1)-n)`
-/

namespace A104793.P11574387555825660944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023537 (A127739 (n + 1) - (n : ℤ)).toNat

end

end A104793.P11574387555825660944

namespace A104793

/-- `A023537(A127739(n+1)-n)` -/
def P11574387555825660944.Spec : Prop :=
  ∀ n, P11574387555825660944.a n = A104793 (n + 1)

end A104793

/-! ## A104793.P11765701504925866366

`A023537(A114327(n)+A002260(n+1))`
-/

namespace A104793.P11765701504925866366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023537 (A114327 n + A002260 (n + 1)).toNat

end

end A104793.P11765701504925866366

namespace A104793

/-- `A023537(A114327(n)+A002260(n+1))` -/
def P11765701504925866366.Spec : Prop :=
  ∀ n, P11765701504925866366.a n = A104793 (n + 1)

theorem P11765701504925866366.correct : P11765701504925866366.Spec := by
  intro n
  simp only [A104793, Nat.add_sub_cancel, A104793.P11765701504925866366.a, A104793.P11127849527871265283.a, A002260, A002260.P769748059679640451.a, A004736, A004736.P10337537277358081527.a, A023537, A023537.P8353153649515717979.a, A114327, A114327.P9028308961649463264.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A057944, A057944.P16851463738746886639.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A104793

/-!
# A104794: Expansion of theta_4(q)^2 in powers of q.

The programs for A104794, there is no canonical definition to state claims against.
-/

/-! ## A104794.P6026662494125117266

`(-1)^n*A004018(n)`
-/

namespace A104794.P6026662494125117266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A004018 n

end

end A104794.P6026662494125117266

/-! ## A104794.P11574212961598226883

`A204531(8*n)`
-/

namespace A104794.P11574212961598226883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204531 (8 * n)

end

end A104794.P11574212961598226883

/-! ## A104794.P9377492728764924066

`A246950(8*n)`
-/

namespace A104794.P9377492728764924066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246950 (8 * n)

end

end A104794.P9377492728764924066

/-! ## A104794.P16153269536964302876

`A256014(9*n)`
-/

namespace A104794.P16153269536964302876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256014 (9 * n)

end

end A104794.P16153269536964302876

/-! ## A104794.P17962679331909729430

`A004018(n)/(-1)^n`
-/

namespace A104794.P17962679331909729430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004018 n : ℚ) / ((-1) ^ n : ℚ)

end

end A104794.P17962679331909729430

/-! ## A104794.P11267557050968953475

`A004018(n)*A033999(n)`
-/

namespace A104794.P11267557050968953475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n * A033999 n

end

end A104794.P11267557050968953475

/-! ## A104794.P6797781356297530388

`A057079(n)*A256280(n)`
-/

namespace A104794.P6797781356297530388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A256280 n

end

end A104794.P6797781356297530388

/-! ## A104794.P16366524334278963500

`A132954(n)*A258292(n)`
-/

namespace A104794.P16366524334278963500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132954 n * A258292 n

end

end A104794.P16366524334278963500

/-! ## A104794.P16423808927868976781

`A131714(n)*A259761(n)`
-/

namespace A104794.P16423808927868976781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131714 n * A259761 n

end

end A104794.P16423808927868976781

/-! ## A104794.P18170188261275763926

`A131714(n)²*A256282(n)`
-/

namespace A104794.P18170188261275763926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131714 n ^ 2 * A256282 n

end

end A104794.P18170188261275763926

/-! ## A104794.P15349238202465590622

`A004018(n)*A309873(n+1)`
-/

namespace A104794.P15349238202465590622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n * A309873 (n + 1)

end

end A104794.P15349238202465590622

/-! ## A104794.P948039791662039996

`A004018(n)*A305575(xor(n, n+1))`
-/

namespace A104794.P948039791662039996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n * A305575 (Nat.xor n (n + 1))

end

end A104794.P948039791662039996

/-! ## A104794.P7183517446588864543

`A000143(n)*A004018(n)/A035016(n)`
-/

namespace A104794.P7183517446588864543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000143 n * A004018 n : ℚ) / (A035016 n : ℚ)

end

end A104794.P7183517446588864543

/-! ## A104794.P6141312309737518674

`2*A004018(A014601(n))-A004018(n)`
-/

namespace A104794.P6141312309737518674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004018 (A014601 n).toNat - A004018 n

end

end A104794.P6141312309737518674

/-! ## A104794.P2460530042521230205

`A004018(n)*A056594(2*n)`
-/

namespace A104794.P2460530042521230205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n * A056594 (2 * n)

end

end A104794.P2460530042521230205

/-! ## A104794.P6841032003018367416

`A004018(n)*A101455(2*n+1)`
-/

namespace A104794.P6841032003018367416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n * A101455 (2 * n + 1)

end

end A104794.P6841032003018367416

/-! ## A104794.P5724481220677811581

`A132367(2*n+1)*A259761(n)*A132367(n+1)`
-/

namespace A104794.P5724481220677811581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132367 (2 * n + 1) * A259761 n * A132367 (n + 1)

end

end A104794.P5724481220677811581

/-! ## A104794.P138350217220542455

`A001934(n)*A004018(n)/A004403(n)`
-/

namespace A104794.P138350217220542455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001934 n * A004018 n : ℚ) / (A004403 n : ℚ)

end

end A104794.P138350217220542455

/-! ## A104794.P6713131986621829470

`2*A004531(2*n)-A004531(4*n)`
-/

namespace A104794.P6713131986621829470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004531 (2 * n) - A004531 (4 * n)

end

end A104794.P6713131986621829470

/-! ## A104794.P16809930737038594592

`2*A134014(2*n)-A134014(4*n)`
-/

namespace A104794.P16809930737038594592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134014 (2 * n) - A134014 (4 * n)

end

end A104794.P16809930737038594592

/-!
# A104795: Triangle T(n,k) = C(n,k)+1 for k

The programs for A104795, the canonical program `A104795.P13015670119841549225` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104795 has offset 0).

The definition of A104795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104795.P13015670119841549225

`A198321(n+1)+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A104795

/-- `A198321(n+1)+1` -/
def P13015670119841549225.Spec : Prop :=
  ∀ n, P13015670119841549225.a n = A104795 n

theorem P13015670119841549225.correct : P13015670119841549225.Spec := by
  intro n
  simp only [A104795]

end A104795

/-! ## A104795.P14211944285106345735

`floor(A131127(n)/2)+1`
-/

namespace A104795.P14211944285106345735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A131127 n : ℚ) / 2⌋ + 1

end

end A104795.P14211944285106345735

namespace A104795

/-- `floor(A131127(n)/2)+1` -/
def P14211944285106345735.Spec : Prop :=
  ∀ n, P14211944285106345735.a n = A104795 n

end A104795

/-! ## A104795.P4750008923521014034

`char[comp[∑[n-1]]]+A007318(n)`
-/

namespace A104795.P4750008923521014034
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + A007318 n

end

end A104795.P4750008923521014034

namespace A104795

/-- `char[comp[∑[n-1]]]+A007318(n)` -/
def P4750008923521014034.Spec : Prop :=
  ∀ n, P4750008923521014034.a n = A104795 n

end A104795

/-! ## A104795.P15674725823816028482

`A132735(n)+A073424(n)`
-/

namespace A104795.P15674725823816028482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132735 n + A073424 n

end

end A104795.P15674725823816028482

namespace A104795

/-- `A132735(n)+A073424(n)` -/
def P15674725823816028482.Spec : Prop :=
  ∀ n, P15674725823816028482.a n = A104795 n

end A104795

/-! ## A104795.P16169495966972574004

`A129994(n)-A014473(n)`
-/

namespace A104795.P16169495966972574004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129994 n - A014473 n

end

end A104795.P16169495966972574004

namespace A104795

/-- `A129994(n)-A014473(n)` -/
def P16169495966972574004.Spec : Prop :=
  ∀ n, P16169495966972574004.a n = A104795 n

theorem P16169495966972574004.correct : P16169495966972574004.Spec := by
  intro n
  simp only [A104795, Nat.add_sub_cancel, A104795.P16169495966972574004.a, A104795.P13015670119841549225.a, A014473, A014473.P9301799580602651200.a, A129994, A129994.P8909343354360901903.a, A198321, A198321.P15651192103710140511.a, A007318, A007318.P302227728145965961.a, A193815, A193815.P12377440765464689058.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A127648, A127648.P14273563626416826954.f1, A127648.P14273563626416826954.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A010054, A010054.P18347828677204923252.a, A061885, A061885.P4567764245783084005.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A104795

/-! ## A104795.P13830825537973235580

`A023532(n)+abs(A130595(n))`
-/

namespace A104795.P13830825537973235580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n + |A130595 n|

end

end A104795.P13830825537973235580

namespace A104795

/-- `A023532(n)+abs(A130595(n))` -/
def P13830825537973235580.Spec : Prop :=
  ∀ n, P13830825537973235580.a n = A104795 n

end A104795

/-! ## A104795.P11100499739120018380

`A206735(A103452(n)+n)+1`
-/

namespace A104795.P11100499739120018380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (A103452 n + (n : ℤ)).toNat + 1

end

end A104795.P11100499739120018380

namespace A104795

/-- `A206735(A103452(n)+n)+1` -/
def P11100499739120018380.Spec : Prop :=
  ∀ n, P11100499739120018380.a n = A104795 n

end A104795

/-! ## A104795.P3376306246294644908

`A007318(n)+1-A023531(n)`
-/

namespace A104795.P3376306246294644908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (1 - A023531 n)

end

end A104795.P3376306246294644908

namespace A104795

/-- `A007318(n)+1-A023531(n)` -/
def P3376306246294644908.Spec : Prop :=
  ∀ n, P3376306246294644908.a n = A104795 n

end A104795

/-! ## A104795.P10546407804245385059

`A129994(n)+1-A007318(n)`
-/

namespace A104795.P10546407804245385059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129994 n + (1 - A007318 n)

end

end A104795.P10546407804245385059

namespace A104795

/-- `A129994(n)+1-A007318(n)` -/
def P10546407804245385059.Spec : Prop :=
  ∀ n, P10546407804245385059.a n = A104795 n

theorem P10546407804245385059.correct : P10546407804245385059.Spec := by
  intro n
  simp only [A104795, Nat.add_sub_cancel, A104795.P10546407804245385059.a, A104795.P13015670119841549225.a, A007318, A007318.P302227728145965961.a, A129994, A129994.P8909343354360901903.a, A198321, A198321.P15651192103710140511.a, A014473, A014473.P9301799580602651200.a, A193815, A193815.P12377440765464689058.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A127648, A127648.P14273563626416826954.f1, A127648.P14273563626416826954.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, A061885, A061885.P4567764245783084005.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A104795

/-! ## A104795.P482666499223309297

`A131923(n)-A052146(n+1)`
-/

namespace A104795.P482666499223309297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131923 n - A052146 (n + 1)

end

end A104795.P482666499223309297

namespace A104795

/-- `A131923(n)-A052146(n+1)` -/
def P482666499223309297.Spec : Prop :=
  ∀ n, P482666499223309297.a n = A104795 n

end A104795

/-! ## A104795.P2920838755017548891

`A132749(n)+1-A103451(n)`
-/

namespace A104795.P2920838755017548891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 n + (1 - A103451 n)

end

end A104795.P2920838755017548891

namespace A104795

/-- `A132749(n)+1-A103451(n)` -/
def P2920838755017548891.Spec : Prop :=
  ∀ n, P2920838755017548891.a n = A104795 n

end A104795

/-! ## A104795.P13758154114266601177

`A131111(n)+1-A129994(n)`
-/

namespace A104795.P13758154114266601177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131111 n + (1 - A129994 n)

end

end A104795.P13758154114266601177

namespace A104795

/-- `A131111(n)+1-A129994(n)` -/
def P13758154114266601177.Spec : Prop :=
  ∀ n, P13758154114266601177.a n = A104795 n

theorem P13758154114266601177.correct : P13758154114266601177.Spec := by
  intro n
  simp only [A104795, Nat.add_sub_cancel, A104795.P13758154114266601177.a, A104795.P13015670119841549225.a, A129994, A129994.P8909343354360901903.a, A131111, A131111.P2883146783880344196.a, A198321, A198321.P15651192103710140511.a, A007318, A007318.P302227728145965961.a, A014473, A014473.P9301799580602651200.a, A193815, A193815.P12377440765464689058.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A127648, A127648.P14273563626416826954.f1, A127648.P14273563626416826954.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A010054, A010054.P18347828677204923252.a, A061885, A061885.P4567764245783084005.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A104795

/-! ## A104795.P15274167321920222048

`A131112(n)+1-A131111(n)`
-/

namespace A104795.P15274167321920222048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131112 n + (1 - A131111 n)

end

end A104795.P15274167321920222048

namespace A104795

/-- `A131112(n)+1-A131111(n)` -/
def P15274167321920222048.Spec : Prop :=
  ∀ n, P15274167321920222048.a n = A104795 n

theorem P15274167321920222048.correct : P15274167321920222048.Spec := by
  intro n
  simp only [A104795, Nat.add_sub_cancel, A104795.P15274167321920222048.a, A104795.P13015670119841549225.a, A131111, A131111.P2883146783880344196.a, A131112, A131112.P1892582295749430120.a, A198321, A198321.P15651192103710140511.a, A007318, A007318.P302227728145965961.a, A129994, A129994.P8909343354360901903.a, A193815, A193815.P12377440765464689058.a, A014473, A014473.P9301799580602651200.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A127648, A127648.P14273563626416826954.f1, A127648.P14273563626416826954.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A010054, A010054.P18347828677204923252.a, A061885, A061885.P4567764245783084005.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A104795

/-! ## A104795.P4766487128955124530

`A131113(n)+1-A131112(n)`
-/

namespace A104795.P4766487128955124530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131113 n + (1 - A131112 n)

end

end A104795.P4766487128955124530

namespace A104795

/-- `A131113(n)+1-A131112(n)` -/
def P4766487128955124530.Spec : Prop :=
  ∀ n, P4766487128955124530.a n = A104795 n

theorem P4766487128955124530.correct : P4766487128955124530.Spec := by
  intro n
  simp only [A104795, Nat.add_sub_cancel, A104795.P4766487128955124530.a, A104795.P13015670119841549225.a, A131112, A131112.P1892582295749430120.a, A131113, A131113.P8900513154664497593.a, A198321, A198321.P15651192103710140511.a, A007318, A007318.P302227728145965961.a, A129994, A129994.P8909343354360901903.a, A131111, A131111.P2883146783880344196.a, A193815, A193815.P12377440765464689058.a, A014473, A014473.P9301799580602651200.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A127648, A127648.P14273563626416826954.f1, A127648.P14273563626416826954.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A010054, A010054.P18347828677204923252.a, A061885, A061885.P4567764245783084005.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A104795

/-! ## A104795.P8194267589358015551

`A131114(n)+1-A131113(n)`
-/

namespace A104795.P8194267589358015551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131114 n + (1 - A131113 n)

end

end A104795.P8194267589358015551

namespace A104795

/-- `A131114(n)+1-A131113(n)` -/
def P8194267589358015551.Spec : Prop :=
  ∀ n, P8194267589358015551.a n = A104795 n

end A104795

/-! ## A104795.P8762673157366438900

`A131115(n)+1-A131114(n)`
-/

namespace A104795.P8762673157366438900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131115 n + (1 - A131114 n)

end

end A104795.P8762673157366438900

namespace A104795

/-- `A131115(n)+1-A131114(n)` -/
def P8762673157366438900.Spec : Prop :=
  ∀ n, P8762673157366438900.a n = A104795 n

end A104795

/-! ## A104795.P6198945328156670459

`A132749(n)+A154325(n)-1`
-/

namespace A104795.P6198945328156670459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 n + (A154325 n - 1)

end

end A104795.P6198945328156670459

namespace A104795

/-- `A132749(n)+A154325(n)-1` -/
def P6198945328156670459.Spec : Prop :=
  ∀ n, P6198945328156670459.a n = A104795 n

end A104795

/-! ## A104795.P543612906371755517

`A007318(n)*A023532(n)+1`
-/

namespace A104795.P543612906371755517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A023532 n + 1

end

end A104795.P543612906371755517

namespace A104795

/-- `A007318(n)*A023532(n)+1` -/
def P543612906371755517.Spec : Prop :=
  ∀ n, P543612906371755517.a n = A104795 n

end A104795

/-! ## A104795.P13068485824323771645

`A007318(n)%A029653(n)+1`
-/

namespace A104795.P13068485824323771645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) (A029653 n) + 1

end

end A104795.P13068485824323771645

namespace A104795

/-- `A007318(n)%A029653(n)+1` -/
def P13068485824323771645.Spec : Prop :=
  ∀ n, P13068485824323771645.a n = A104795 n

end A104795

/-! ## A104795.P3786377387845228433

`A007318(n)+1-Δ[A003056(n)]`
-/

namespace A104795.P3786377387845228433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + 1 - (f1 (n + 1) - f1 n)

end

end A104795.P3786377387845228433

namespace A104795

/-- `A007318(n)+1-Δ[A003056(n)]` -/
def P3786377387845228433.Spec : Prop :=
  ∀ n, P3786377387845228433.a n = A104795 n

end A104795

/-!
# A104796: Triangle read by rows: T(n,k) = (n+1-k)*Fibonacci(n+2-k), for n>=1, 1<=k<=n.

The programs for A104796, the canonical program `A104796.P14992435901954674336` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104796 has offset 1).

The definition of A104796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104796.P14992435901954674336

`A023607(A004736(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A104796

/-- `A023607(A004736(n+1))` -/
def P14992435901954674336.Spec : Prop :=
  ∀ n, P14992435901954674336.a n = A104796 (n + 1)

theorem P14992435901954674336.correct : P14992435901954674336.Spec := by
  intro n
  simp only [A104796, Nat.add_sub_cancel]

end A104796

/-! ## A104796.P12368962188952949879

`A000045(A025581(n)+2)*A004736(n+1)`
-/

namespace A104796.P12368962188952949879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A025581 n + 2).toNat * A004736 (n + 1)

end

end A104796.P12368962188952949879

namespace A104796

/-- `A000045(A025581(n)+2)*A004736(n+1)` -/
def P12368962188952949879.Spec : Prop :=
  ∀ n, P12368962188952949879.a n = A104796 (n + 1)

end A104796

/-! ## A104796.P16579429066722524565

`A000045(A004736(n+1)+1)*A004736(n+1)`
-/

namespace A104796.P16579429066722524565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004736 (n + 1) + 1).toNat * A004736 (n + 1)

end

end A104796.P16579429066722524565

namespace A104796

/-- `A000045(A004736(n+1)+1)*A004736(n+1)` -/
def P16579429066722524565.Spec : Prop :=
  ∀ n, P16579429066722524565.a n = A104796 (n + 1)

end A104796

/-! ## A104796.P12155900354524435781

`A004736(n+1)*A212804(A004736(n+1)+2)`
-/

namespace A104796.P12155900354524435781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A212804 (A004736 (n + 1) + 2).toNat

end

end A104796.P12155900354524435781

namespace A104796

/-- `A004736(n+1)*A212804(A004736(n+1)+2)` -/
def P12155900354524435781.Spec : Prop :=
  ∀ n, P12155900354524435781.a n = A104796 (n + 1)

end A104796

/-! ## A104796.P15059421327785314620

`A004736(n+1)*A324969(A004736(n+1)+2)`
-/

namespace A104796.P15059421327785314620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A324969 (A004736 (n + 1) + 2).toNat

end

end A104796.P15059421327785314620

namespace A104796

/-- `A004736(n+1)*A324969(A004736(n+1)+2)` -/
def P15059421327785314620.Spec : Prop :=
  ∀ n, P15059421327785314620.a n = A104796 (n + 1)

end A104796

/-! ## A104796.P2547399077954748250

`A000045(A004736(A014132(n+1)))*A004736(n+1)`
-/

namespace A104796.P2547399077954748250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004736 (A014132 (n + 1)).toNat).toNat * A004736 (n + 1)

end

end A104796.P2547399077954748250

namespace A104796

/-- `A000045(A004736(A014132(n+1)))*A004736(n+1)` -/
def P2547399077954748250.Spec : Prop :=
  ∀ n, P2547399077954748250.a n = A104796 (n + 1)

end A104796

/-! ## A104796.P15401166261846680824

`A035612(A035513(n+1))*A139764(A035513(n+1))`
-/

namespace A104796.P15401166261846680824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (A035513 (n + 1)).toNat * A139764 (A035513 (n + 1)).toNat

end

end A104796.P15401166261846680824

namespace A104796

/-- `A035612(A035513(n+1))*A139764(A035513(n+1))` -/
def P15401166261846680824.Spec : Prop :=
  ∀ n, P15401166261846680824.a n = A104796 (n + 1)

end A104796

/-!
# A104797: Triangle T(n,k) = Fib(n-k+4)-n-k-3, n>=1, 0<=k

The programs for A104797, the canonical program `A104797.P7553578064530354809` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104797 has offset 1).

The definition of A104797 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104797.P13046220112174497196

`A001924(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A104797.P13046220112174497196
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A104797.P13046220112174497196

namespace A104797

/-- `A001924(C(comp[∑[n]]-n, 2)-n)` -/
def P13046220112174497196.Spec : Prop :=
  ∀ n, P13046220112174497196.a n = A104797 (n + 1)

end A104797

/-! ## A104797.P9508011638054827405

`A065220(C(comp[∑[n]]-n, 2)-n+4)+1`
-/

namespace A104797.P9508011638054827405
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) + 4).toNat + 1

end

end A104797.P9508011638054827405

namespace A104797

/-- `A065220(C(comp[∑[n]]-n, 2)-n+4)+1` -/
def P9508011638054827405.Spec : Prop :=
  ∀ n, P9508011638054827405.a n = A104797 (n + 1)

end A104797

/-! ## A104797.P12108124463364909691

`A001924(∑[char[∑[n]]]-(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A104797.P12108124463364909691
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ))).toNat

end

end A104797.P12108124463364909691

namespace A104797

/-- `A001924(∑[char[∑[n]]]-(n-C(∑[char[∑[n]]], 2)))` -/
def P12108124463364909691.Spec : Prop :=
  ∀ n, P12108124463364909691.a n = A104797 (n + 1)

end A104797

/-! ## A104797.P7553578064530354809

`A001924(A004736(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A104797

/-- `A001924(A004736(n+1))` -/
def P7553578064530354809.Spec : Prop :=
  ∀ n, P7553578064530354809.a n = A104797 (n + 1)

theorem P7553578064530354809.correct : P7553578064530354809.Spec := by
  intro n
  simp only [A104797, Nat.add_sub_cancel]

end A104797

/-! ## A104797.P5020870636593382253

`A001924(A025581(n)+1)`
-/

namespace A104797.P5020870636593382253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (A025581 n + 1).toNat

end

end A104797.P5020870636593382253

namespace A104797

/-- `A001924(A025581(n)+1)` -/
def P5020870636593382253.Spec : Prop :=
  ∀ n, P5020870636593382253.a n = A104797 (n + 1)

theorem P5020870636593382253.correct : P5020870636593382253.Spec := by
  intro n
  simp only [A104797, Nat.add_sub_cancel, A104797.P5020870636593382253.a, A104797.P7553578064530354809.a, A001924, A001924.P6748893244149044388.a, A004736, A004736.P10337537277358081527.a, A025581, A025581.P420762180635059694.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A104797

/-! ## A104797.P1833369017306842711

`A001924(sqrt(A055461(n+1)))`
-/

namespace A104797.P1833369017306842711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (SequenceMachineLib.roundAway (Real.sqrt (A055461 (n + 1) : ℝ))).toNat

end

end A104797.P1833369017306842711

namespace A104797

/-- `A001924(sqrt(A055461(n+1)))` -/
def P1833369017306842711.Spec : Prop :=
  ∀ n, P1833369017306842711.a n = A104797 (n + 1)

end A104797

/-! ## A104797.P13486315551446381087

`A001924(A193592(comp[∑[n]]))`
-/

namespace A104797.P13486315551446381087
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (A193592 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A104797.P13486315551446381087

namespace A104797

/-- `A001924(A193592(comp[∑[n]]))` -/
def P13486315551446381087.Spec : Prop :=
  ∀ n, P13486315551446381087.a n = A104797 (n + 1)

end A104797

/-! ## A104797.P17346470508552501327

`∑{d}[A130321(n), A232560(#)]`
-/

namespace A104797.P17346470508552501327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A232560 d

end

end A104797.P17346470508552501327

namespace A104797

/-- `∑{d}[A130321(n), A232560(#)]` -/
def P17346470508552501327.Spec : Prop :=
  ∀ n, P17346470508552501327.a n = A104797 (n + 1)

end A104797

/-!
# A104798: Triangle T(n,k) = k*[Fib(n-k+3) - 1], read by rows.

The programs for A104798, the canonical program `A104798.P8790869070446692814` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104798 has offset 2).

The definition of A104798 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104798.P8790869070446692814

`A002260(n+1)*A104582(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A104798

/-- `A002260(n+1)*A104582(n+1)` -/
def P8790869070446692814.Spec : Prop :=
  ∀ n, P8790869070446692814.a n = A104798 (n + 2)

theorem P8790869070446692814.correct : P8790869070446692814.Spec := by
  intro n
  simp only [A104798, Nat.add_sub_cancel]

end A104798

/-! ## A104798.P8954830224368141451

`(A002262(n)+1)*A104582(n+1)`
-/

namespace A104798.P8954830224368141451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A104582 (n + 1)

end

end A104798.P8954830224368141451

namespace A104798

/-- `(A002262(n)+1)*A104582(n+1)` -/
def P8954830224368141451.Spec : Prop :=
  ∀ n, P8954830224368141451.a n = A104798 (n + 2)

theorem P8954830224368141451.correct : P8954830224368141451.Spec := by
  intro n
  simp only [A104798, Nat.add_sub_cancel, A104798.P8954830224368141451.a, A104798.P8790869070446692814.a, A002260, A002260.P769748059679640451.a, A002262, A002262.P12129691700837801527.a, A104582, A104582.P4159753034675005451.a, A001911, A001911.P7827382253027062797.a, A025581, A025581.P420762180635059694.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, A004736, A004736.P10337537277358081527.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A104798

/-! ## A104798.P9222704058136514030

`abs(A104582(n+1)*A140756(n+1))`
-/

namespace A104798.P9222704058136514030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104582 (n + 1) * A140756 (n + 1)|

end

end A104798.P9222704058136514030

namespace A104798

/-- `abs(A104582(n+1)*A140756(n+1))` -/
def P9222704058136514030.Spec : Prop :=
  ∀ n, P9222704058136514030.a n = A104798 (n + 2)

end A104798

/-! ## A104798.P8033808193817542629

`sqrt(A133819(n+1))*A104582(n+1)`
-/

namespace A104798.P8033808193817542629
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) * (A104582 (n + 1) : ℝ)

end

end A104798.P8033808193817542629

namespace A104798

/-- `sqrt(A133819(n+1))*A104582(n+1)` -/
def P8033808193817542629.Spec : Prop :=
  ∀ n, P8033808193817542629.a n = (A104798 (n + 2) : ℝ)

end A104798

/-! ## A104798.P5299224129700347734

`(A132118(n+1)-n)*A104582(n+1)`
-/

namespace A104798.P5299224129700347734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132118 (n + 1) - (n : ℤ)) * A104582 (n + 1)

end

end A104798.P5299224129700347734

namespace A104798

/-- `(A132118(n+1)-n)*A104582(n+1)` -/
def P5299224129700347734.Spec : Prop :=
  ∀ n, P5299224129700347734.a n = A104798 (n + 2)

theorem P5299224129700347734.correct : P5299224129700347734.Spec := by
  intro n
  simp only [A104798, Nat.add_sub_cancel, A104798.P5299224129700347734.a, A104798.P8790869070446692814.a, A002260, A002260.P769748059679640451.a, A104582, A104582.P4159753034675005451.a, A132118, A132118.P2880824693812758185.a, A001911, A001911.P7827382253027062797.a, A002262, A002262.P12129691700837801527.a, A025581, A025581.P420762180635059694.a, A004736, A004736.P10337537277358081527.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A104798

/-! ## A104798.P8569101372856453167

`(A001911(A025581(n))+1)*A002260(n+1)`
-/

namespace A104798.P8569101372856453167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001911 (A025581 n).toNat + 1) * A002260 (n + 1)

end

end A104798.P8569101372856453167

namespace A104798

/-- `(A001911(A025581(n))+1)*A002260(n+1)` -/
def P8569101372856453167.Spec : Prop :=
  ∀ n, P8569101372856453167.a n = A104798 (n + 2)

theorem P8569101372856453167.correct : P8569101372856453167.Spec := by
  intro n
  simp only [A104798, Nat.add_sub_cancel, A104798.P8569101372856453167.a, A104798.P8790869070446692814.a, A001911, A001911.P7827382253027062797.a, A002260, A002260.P769748059679640451.a, A025581, A025581.P420762180635059694.a, A104582, A104582.P4159753034675005451.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A057944, A057944.P16851463738746886639.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A104798

/-! ## A104798.P1895021123451205480

`A104582(n+1)*A349520(Δ[n²])`
-/

namespace A104798.P1895021123451205480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104582 (n + 1) * A349520 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A104798.P1895021123451205480

namespace A104798

/-- `A104582(n+1)*A349520(Δ[n²])` -/
def P1895021123451205480.Spec : Prop :=
  ∀ n, P1895021123451205480.a n = A104798 (n + 2)

end A104798

/-! ## A104798.P13234965494053186424

`A097285(2*n+1)*A104582(n+1)`
-/

namespace A104798.P13234965494053186424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * n + 1) * A104582 (n + 1)

end

end A104798.P13234965494053186424

namespace A104798

/-- `A097285(2*n+1)*A104582(n+1)` -/
def P13234965494053186424.Spec : Prop :=
  ∀ n, P13234965494053186424.a n = A104798 (n + 2)

end A104798

/-! ## A104798.P8212253746637138960

`A000005(A059268(n))*A104582(n+1)`
-/

namespace A104798.P8212253746637138960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A104582 (n + 1)

end

end A104798.P8212253746637138960

namespace A104798

/-- `A000005(A059268(n))*A104582(n+1)` -/
def P8212253746637138960.Spec : Prop :=
  ∀ n, P8212253746637138960.a n = A104798 (n + 2)

end A104798

