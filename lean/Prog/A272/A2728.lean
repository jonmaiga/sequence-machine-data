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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A272800: Flavius Josephus factor of n.

The programs for A272800, there is no canonical definition to state claims against.
-/

/-! ## A272800.P14535522826661612323

`A163300(A278528(n+1)+1)/2`
-/

namespace A272800.P14535522826661612323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163300 (A278528 (n + 1) + 1).toNat : ℚ) / 2

end

end A272800.P14535522826661612323

/-! ## A272800.P16364949588568014787

`A278528(n+1)+1-A278169(n+1)`
-/

namespace A272800.P16364949588568014787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278528 (n + 1) + (1 - A278169 (n + 1))

end

end A272800.P16364949588568014787

/-! ## A272800.P7474687686650702262

`(A278538(n+1)+1)%A100002(n+1)²`
-/

namespace A272800.P7474687686650702262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278538 (n + 1) + 1) (A100002 (n + 1) ^ 2)

end

end A272800.P7474687686650702262

/-! ## A272800.P1417177898169589156

`A278528(n+1)+A028242(floor(1/A278539(n+1)))`
-/

namespace A272800.P1417177898169589156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278528 (n + 1) + A028242 ⌊1 / (A278539 (n + 1) : ℚ)⌋.toNat

end

end A272800.P1417177898169589156

/-! ## A272800.P10332897614126543765

`A278528(n+1)+A264620(floor(1/A278539(n+1)))`
-/

namespace A272800.P10332897614126543765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278528 (n + 1) + A264620 ⌊1 / (A278539 (n + 1) : ℚ)⌋.toNat

end

end A272800.P10332897614126543765

/-! ## A272800.P10115699746863447550

`A326426(floor(1/A278539(n+1)))+A278528(n+1)`
-/

namespace A272800.P10115699746863447550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326426 ⌊1 / (A278539 (n + 1) : ℚ)⌋.toNat + A278528 (n + 1)

end

end A272800.P10115699746863447550

/-! ## A272800.P12766265100619132249

`A278528(n+1)+A278528(n+1)/A278538(n+1)`
-/

namespace A272800.P12766265100619132249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278528 (n + 1) : ℚ) + (A278528 (n + 1) : ℚ) / (A278538 (n + 1) : ℚ)

end

end A272800.P12766265100619132249

/-! ## A272800.P17152736261483345665

`A278528(n+1)+A278169((n+1)*A278169(n+1)+1)`
-/

namespace A272800.P17152736261483345665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278528 (n + 1) + A278169 ((n + 1 : ℤ) * A278169 (n + 1) + 1).toNat

end

end A272800.P17152736261483345665

/-! ## A272800.P8020824472597918015

`A278528(A278505(A278504(A278507(A278504(n+1)))))`
-/

namespace A272800.P8020824472597918015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278528 (A278505 (A278504 (A278507 (A278504 (n + 1)).toNat).toNat).toNat).toNat

end

end A272800.P8020824472597918015

/-!
# A272801: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 539", based on the 5-celled von Neumann neighborhood.

The programs for A272801, there is no canonical definition to state claims against.
-/

/-! ## A272801.P16206232579042143019

`A272804(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272801.P16206232579042143019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272804 (n - 1) + a (n - 1)

end

end A272801.P16206232579042143019

/-! ## A272801.P14387487235178895690

`Δ[A272803(n)]-A272804(n)`
-/

namespace A272801.P14387487235178895690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272804 n

end

end A272801.P14387487235178895690

/-! ## A272801.P1639040744245740924

`A272803(n+1)-(A272804(n)+A272803(n))`
-/

namespace A272801.P1639040744245740924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272803 (n + 1) - (A272804 n + A272803 n)

end

end A272801.P1639040744245740924

/-! ## A272801.P4711909602131536694

`A109613(∑[A272804(n)]-A272804(n))`
-/

namespace A272801.P4711909602131536694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (∑ j ∈ Finset.range (n + 1), f1 j - A272804 n).toNat

end

end A272801.P4711909602131536694

/-!
# A272802: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 539", based on the 5-celled von Neumann neighborhood.

The programs for A272802, there is no canonical definition to state claims against.
-/

/-! ## A272802.P3871772261300841366

`A272801(2^n-1)`
-/

namespace A272802.P3871772261300841366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272801 (2 ^ n - 1)

end

end A272802.P3871772261300841366

/-! ## A272802.P12238122776436952846

`record[A272801(A091264(n))]`
-/

namespace A272802.P12238122776436952846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272801 (A091264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272802.P12238122776436952846

/-! ## A272802.P1199346441460764578

`record[A272801(A173787(n))]`
-/

namespace A272802.P1199346441460764578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272801 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272802.P1199346441460764578

/-! ## A272802.P9799048869698822266

`or(1, A272801(A000225(n)))`
-/

namespace A272802.P9799048869698822266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A272801 (A000225 n).toNat)

end

end A272802.P9799048869698822266

/-! ## A272802.P10690693137422979426

`record[A272801(A253564(n+1))]`
-/

namespace A272802.P10690693137422979426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272801 (A253564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272802.P10690693137422979426

/-!
# A272803: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 539", based on the 5-celled von Neumann neighborhood.

The programs for A272803, there is no canonical definition to state claims against.
-/

/-! ## A272803.P10101817562845813813

`∑[A272801(n)]`
-/

namespace A272803.P10101817562845813813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272801 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272803.P10101817562845813813

/-! ## A272803.P6075710742634430167

`A272801(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A272803.P6075710742634430167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272801 n + a (A023443 n).toNat

end

end A272803.P6075710742634430167

/-! ## A272803.P320991103644443022

`A272801(A000027(n))+a(n-1)` with `a(0)=1`
-/

namespace A272803.P320991103644443022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272801 (A000027 n).toNat + a (n - 1)

end

end A272803.P320991103644443022

/-! ## A272803.P3343732790088719375

`a(n-1)+A272801(n)%A160817(n)` with `a(0)=1`
-/

namespace A272803.P3343732790088719375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A272801 n) (A160817 n)

end

end A272803.P3343732790088719375

/-! ## A272803.P5490092975655646652

`∑[∑[A272804(n)]+1-A272804(n)]`
-/

namespace A272803.P5490092975655646652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272804 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272803.P5490092975655646652

/-!
# A272804: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 539", based on the 5-celled von Neumann neighborhood.

The programs for A272804, there is no canonical definition to state claims against.
-/

/-! ## A272804.P12595173575572875994

`Δ[A272801(n)]`
-/

namespace A272804.P12595173575572875994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272801 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272804.P12595173575572875994

/-! ## A272804.P2169628502203147698

`A272801(n+1)-A272801(n)`
-/

namespace A272804.P2169628502203147698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272801 (n + 1) - A272801 n

end

end A272804.P2169628502203147698

/-! ## A272804.P5338392731514650931

`A272801(C(n+1, n))+A001489(A272801(n))`
-/

namespace A272804.P5338392731514650931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272801 (Nat.choose (n + 1) n) + A001489 (A272801 n).toNat

end

end A272804.P5338392731514650931

/-! ## A272804.P7566678398507246944

`A272801(A000027(n+1))+A001489(A272801(n))`
-/

namespace A272804.P7566678398507246944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272801 (A000027 (n + 1)).toNat + A001489 (A272801 n).toNat

end

end A272804.P7566678398507246944

/-!
# A272805: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 541", based on the 5-celled von Neumann neighborhood.

The programs for A272805, there is no canonical definition to state claims against.
-/

/-! ## A272805.P8618360384356175423

`A272808(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272805.P8618360384356175423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272808 (n - 1) + a (n - 1)

end

end A272805.P8618360384356175423

/-! ## A272805.P7792025775171315377

`∑[A272808(n*a(A000038(n))-1)]` with `a(0)=1`
-/

namespace A272805.P7792025775171315377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A272808 ((n : ℤ) * f1 (A000038 n).toNat - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272805.P7792025775171315377

/-! ## A272805.P11799299281436494144

`Δ[A272807(n)]-A272808(n)`
-/

namespace A272805.P11799299281436494144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272808 n

end

end A272805.P11799299281436494144

/-! ## A272805.P9719702914895682264

`A272807(n+1)-(A272808(n)+A272807(n))`
-/

namespace A272805.P9719702914895682264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272807 (n + 1) - (A272808 n + A272807 n)

end

end A272805.P9719702914895682264

/-!
# A272806: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 541", based on the 5-celled von Neumann neighborhood.

The programs for A272806, there is no canonical definition to state claims against.
-/

/-! ## A272806.P2061978801274444702

`A272805(2^n-1)`
-/

namespace A272806.P2061978801274444702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272805 (2 ^ n - 1)

end

end A272806.P2061978801274444702

/-! ## A272806.P12873420641238429951

`record[A272805(A227351(n))]`
-/

namespace A272806.P12873420641238429951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272805 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272806.P12873420641238429951

/-! ## A272806.P5303744853038716128

`record[A272805(Δ[A228693(n)])]`
-/

namespace A272806.P5303744853038716128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272805 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272806.P5303744853038716128

/-! ## A272806.P3220835015390237794

`record[A272805(A253564(n+1))]`
-/

namespace A272806.P3220835015390237794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272805 (A253564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272806.P3220835015390237794

/-! ## A272806.P8013312794089460726

`record[A272805(A324867(n+1))]`
-/

namespace A272806.P8013312794089460726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272805 (A324867 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272806.P8013312794089460726

/-!
# A272807: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 541", based on the 5-celled von Neumann neighborhood.

The programs for A272807, there is no canonical definition to state claims against.
-/

/-! ## A272807.P10951224851043248094

`∑[A272805(n)]`
-/

namespace A272807.P10951224851043248094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272807.P10951224851043248094

/-! ## A272807.P7758475370751051834

`A272805(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A272807.P7758475370751051834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272805 n + a (A023443 n).toNat

end

end A272807.P7758475370751051834

/-! ## A272807.P2978984060128962303

`a(n-1)+A272805(n)+A000007(n)` with `a(0)=1`
-/

namespace A272807.P2978984060128962303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A272805 n + A000007 n)

end

end A272807.P2978984060128962303

/-! ## A272807.P234343378842755679

`A272805(n%A007504(n))+a(n-1)` with `a(0)=1`
-/

namespace A272807.P234343378842755679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272805 (Int.tmod (n : ℤ) (A007504 n)).toNat + a (n - 1)

end

end A272807.P234343378842755679

/-! ## A272807.P5932105386941586784

`a(n-1)+A272805(n)%A022281(n)` with `a(0)=1`
-/

namespace A272807.P5932105386941586784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A272805 n) (A022281 n)

end

end A272807.P5932105386941586784

/-! ## A272807.P188169619834436838

`a(n-1)+1-(A160322(A230849(n+1)+n)-A272805(n))` with `a(0)=1`
-/

namespace A272807.P188169619834436838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 - (A160322 (A230849 (n + 1) + (n : ℤ)).toNat - A272805 n)

end

end A272807.P188169619834436838

/-! ## A272807.P9508171349753382169

`∑[∑[A272808(n)]+1-A272808(n)]`
-/

namespace A272807.P9508171349753382169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272808 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272808 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272807.P9508171349753382169

/-! ## A272807.P3629118174611265377

`a(n-1)+A014963(A000132(n))*A272805(n)` with `a(0)=1`
-/

namespace A272807.P3629118174611265377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A014963 (A000132 n).toNat * A272805 n

end

end A272807.P3629118174611265377

/-!
# A272808: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 541", based on the 5-celled von Neumann neighborhood.

The programs for A272808, there is no canonical definition to state claims against.
-/

/-! ## A272808.P9582795227887190226

`Δ[A272805(n)]`
-/

namespace A272808.P9582795227887190226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272808.P9582795227887190226

/-! ## A272808.P6845653920412379094

`A272805(n+1)-A272805(n)`
-/

namespace A272808.P6845653920412379094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272805 (n + 1) - A272805 n

end

end A272808.P6845653920412379094

/-! ## A272808.P16283699301367523811

`A272785(n)+A028613(A157024(n))`
-/

namespace A272808.P16283699301367523811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272785 n + A028613 (A157024 n).toNat

end

end A272808.P16283699301367523811

/-! ## A272808.P13168029031605193858

`or(A053188(A052156(n)), A272785(n))`
-/

namespace A272808.P13168029031605193858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053188 (A052156 n).toNat) (A272785 n)

end

end A272808.P13168029031605193858

/-! ## A272808.P14426907273990611197

`or(A104613(A227074(n)), A272785(n))`
-/

namespace A272808.P14426907273990611197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A104613 (A227074 n).toNat) (A272785 n)

end

end A272808.P14426907273990611197

/-!
# A272809: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 542", based on the 5-celled von Neumann neighborhood.

The programs for A272809, there is no canonical definition to state claims against.
-/

/-! ## A272809.P16352384822263157530

`A272812(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272809.P16352384822263157530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272812 (n - 1) + a (n - 1)

end

end A272809.P16352384822263157530

/-! ## A272809.P13248332268093126051

`Δ[A272811(n)]-A272812(n)`
-/

namespace A272809.P13248332268093126051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272812 n

end

end A272809.P13248332268093126051

/-! ## A272809.P8677450437583368822

`A272811(n+1)-(A272812(n)+A272811(n))`
-/

namespace A272809.P8677450437583368822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272811 (n + 1) - (A272812 n + A272811 n)

end

end A272809.P8677450437583368822

/-! ## A272809.P12041139011249298305

`A004442(∑[A272812(n)]-A272812(n))`
-/

namespace A272809.P12041139011249298305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (∑ j ∈ Finset.range (n + 1), f1 j - A272812 n).toNat

end

end A272809.P12041139011249298305

/-! ## A272809.P6993415854465485026

`A065190(∑[A272812(n)])-A272812(n)`
-/

namespace A272809.P6993415854465485026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A272812 n

end

end A272809.P6993415854465485026

/-! ## A272809.P16432134203536402500

`A131738(∑[A272812(n)])-A272812(n)`
-/

namespace A272809.P16432134203536402500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A272812 n

end

end A272809.P16432134203536402500

/-!
# A272810: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 542", based on the 5-celled von Neumann neighborhood.

The programs for A272810, there is no canonical definition to state claims against.
-/

/-! ## A272810.P14872927663238972123

`A272809(2^n-1)`
-/

namespace A272810.P14872927663238972123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272809 (2 ^ n - 1)

end

end A272810.P14872927663238972123

/-! ## A272810.P13693464037761478294

`or(1, A272809(A000225(n)))`
-/

namespace A272810.P13693464037761478294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A272809 (A000225 n).toNat)

end

end A272810.P13693464037761478294

/-! ## A272810.P10669070239608262740

`record[gcd(A035327(n), A272809(n))]`
-/

namespace A272810.P10669070239608262740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035327 n) (A272809 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272810.P10669070239608262740

/-! ## A272810.P9658054995332449935

`record[A272809(n)/A000265(n+1)]`
-/

namespace A272810.P9658054995332449935
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272809 n : ℚ) / (A000265 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272810.P9658054995332449935

/-! ## A272810.P2611099460988619908

`record[A272809(∑{d}[A087207(n+1), #])]`
-/

namespace A272810.P2611099460988619908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272809 (∑ d ∈ Nat.divisors (f2 n).natAbs, d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272810.P2611099460988619908

/-!
# A272811: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 542", based on the 5-celled von Neumann neighborhood.

The programs for A272811, there is no canonical definition to state claims against.
-/

/-! ## A272811.P11844507221958029657

`∑[A272809(n)]`
-/

namespace A272811.P11844507221958029657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272811.P11844507221958029657

/-! ## A272811.P9886358212400068080

`a(n-1)+A272809(n)+A000007(n)` with `a(0)=1`
-/

namespace A272811.P9886358212400068080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A272809 n + A000007 n)

end

end A272811.P9886358212400068080

/-! ## A272811.P8933466964603481074

`A272809(n)+a(n-A033999(2*n))` with `a(0)=1`
-/

namespace A272811.P8933466964603481074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272809 n + a ((n : ℤ) - A033999 (2 * n)).toNat

end

end A272811.P8933466964603481074

/-! ## A272811.P6500804288285454215

`A272809(n%A272809(n))+a(n-1)` with `a(0)=1`
-/

namespace A272811.P6500804288285454215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272809 (Int.tmod (n : ℤ) (A272809 n)).toNat + a (n - 1)

end

end A272811.P6500804288285454215

/-! ## A272811.P3117114447156749056

`∑[∑[A272812(n)]-A272812(n)+1]`
-/

namespace A272811.P3117114447156749056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272812 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A272812 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272811.P3117114447156749056

/-! ## A272811.P16747933241009747290

`∑[A004442(∑[A272812(n)]-A272812(n))]`
-/

namespace A272811.P16747933241009747290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272812 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (∑ j ∈ Finset.range (n + 1), f2 j - A272812 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272811.P16747933241009747290

/-! ## A272811.P10017951703286120771

`∑[A065190(∑[A272812(n)])-A272812(n)]`
-/

namespace A272811.P10017951703286120771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272812 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (∑ j ∈ Finset.range (n + 1), f2 j).toNat - A272812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272811.P10017951703286120771

/-!
# A272812: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 542", based on the 5-celled von Neumann neighborhood.

The programs for A272812, there is no canonical definition to state claims against.
-/

/-! ## A272812.P9908363911510167234

`Δ[A272809(n)]`
-/

namespace A272812.P9908363911510167234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272812.P9908363911510167234

/-! ## A272812.P17028601011795305540

`A272809(n+1)-A272809(n)`
-/

namespace A272812.P17028601011795305540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272809 (n + 1) - A272809 n

end

end A272812.P17028601011795305540

/-!
# A272813: Nonnegative numbers n such that n^2 - 79n + 1601 is prime.

The programs for A272813, there is no canonical definition to state claims against.
-/

/-! ## A272813.P3521492275431644710

`A307637(A225638(n))+n`
-/

namespace A272813.P3521492275431644710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307637 (A225638 n).toNat + (n : ℤ)

end

end A272813.P3521492275431644710

/-! ## A272813.P7896050894673839761

`A326681(A156078(n+1))+n`
-/

namespace A272813.P7896050894673839761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326681 (A156078 (n + 1)).toNat + (n : ℤ)

end

end A272813.P7896050894673839761

/-! ## A272813.P5074632547660372070

`A326681(A156080(n+1))+n`
-/

namespace A272813.P5074632547660372070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326681 (A156080 (n + 1)).toNat + (n : ℤ)

end

end A272813.P5074632547660372070

/-! ## A272813.P4900265921413268990

`A326549(A090663(n+2))+n`
-/

namespace A272813.P4900265921413268990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326549 (A090663 (n + 2)).toNat + (n : ℤ)

end

end A272813.P4900265921413268990

/-! ## A272813.P16479165010803454971

`or(n, A326687(A174807(n+2)))`
-/

namespace A272813.P16479165010803454971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A326687 (A174807 (n + 2)).toNat)

end

end A272813.P16479165010803454971

/-!
# A272814: Palindromes such that sum of digits equals product of digits.

The programs for A272814, there is no canonical definition to state claims against.
-/

/-! ## A272814.P4771264098475665935

`∩[A002113(n+1), A034710(n+1)]`
-/

namespace A272814.P4771264098475665935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272814.P4771264098475665935

/-! ## A272814.P10932218744416864469

`∩[A034710(n+1), A082207(n+1)]`
-/

namespace A272814.P10932218744416864469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272814.P10932218744416864469

/-! ## A272814.P3102029160317222736

`∩[A034710(n+1), A082208(n+1)]`
-/

namespace A272814.P3102029160317222736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272814.P3102029160317222736

/-! ## A272814.P14575284358610562467

`∩[A034710(n+1), A083115(n+1)]`
-/

namespace A272814.P14575284358610562467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272814.P14575284358610562467

/-! ## A272814.P10373767523992645661

`∩[A034710(n+1), A110751(n+1)]`
-/

namespace A272814.P10373767523992645661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272814.P10373767523992645661

/-!
# A272818: Numbers such that (sum + product) of all their prime factors equals (sum + product) of all exponents in their prime factorization.

The programs for A272818, there is no canonical definition to state claims against.
-/

/-! ## A272818.P8239787220195740026

`A272858(lt[A284185(n), A182818(n)])`
-/

namespace A272818.P8239787220195740026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182818 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272858 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A272818.P8239787220195740026

/-! ## A272818.P1359462158632090160

`A272858(lt[A272912(n+1), A336285(2*n)])`
-/

namespace A272818.P1359462158632090160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336285 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272858 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A272818.P1359462158632090160

/-! ## A272818.P2166210956862895124

`record[A272858(A225644(n))]`
-/

namespace A272818.P2166210956862895124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272858 (A225644 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272818.P2166210956862895124

/-! ## A272818.P13401663561789032095

`A108548(A272858(n+1))`
-/

namespace A272818.P13401663561789032095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (A272858 (n + 1)).toNat

end

end A272818.P13401663561789032095

/-! ## A272818.P3110074069800008846

`A272858(A187829(n+1))`
-/

namespace A272818.P3110074069800008846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272858 (A187829 (n + 1)).toNat

end

end A272818.P3110074069800008846

/-!
# A272819: G.f. A(x) satisfies: A( A(x)^2 - A(x)^4 ) = x*A(x) + x*A(x)^2.

The programs for A272819, there is no canonical definition to state claims against.
-/

/-! ## A272819.P15768111508419140501

`A131922(A056329(n+1))`
-/

namespace A272819.P15768111508419140501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131922 (A056329 (n + 1)).toNat

end

end A272819.P15768111508419140501

/-! ## A272819.P1794677092120687056

`A131922(A056339(n+1))`
-/

namespace A272819.P1794677092120687056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131922 (A056339 (n + 1)).toNat

end

end A272819.P1794677092120687056

/-! ## A272819.P3206911736538810127

`or(A010748(n), A037873(3^n))`
-/

namespace A272819.P3206911736538810127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010748 n) (A037873 (3 ^ n))

end

end A272819.P3206911736538810127

/-! ## A272819.P3724495577311352518

`A344008((n+1)²)+A002663(n)`
-/

namespace A272819.P3724495577311352518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344008 ((n + 1) ^ 2) + A002663 n

end

end A272819.P3724495577311352518

/-! ## A272819.P7339955837351858719

`A332336(A324092(n+1))+2^n-∑[C(n, 2)+1]`
-/

namespace A272819.P7339955837351858719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332336 (A324092 (n + 1)).toNat + ((2 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A272819.P7339955837351858719

/-!
# A272820: G.f. A(x) satisfies: A( A(x)^2 - 2*A(x)^3 ) = x*A(x).

The programs for A272820, there is no canonical definition to state claims against.
-/

/-! ## A272820.P133768153085559579

`A034888(A082135(n))+n`
-/

namespace A272820.P133768153085559579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (A082135 n).toNat + (n : ℤ)

end

end A272820.P133768153085559579

/-! ## A272820.P15548262175460385049

`A063272(A001541(n)-n)+n`
-/

namespace A272820.P15548262175460385049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063272 (A001541 n - (n : ℤ)).toNat + (n : ℤ)

end

end A272820.P15548262175460385049

/-!
# A272821: G.f. A(x) satisfies: A( x*A(x) - 2*x*A(x)^2 + x*A(x)^3 ) = x^2.

The programs for A272821, there is no canonical definition to state claims against.
-/

/-! ## A272821.P2629595954030251034

`A118810(A141254(n+1))`
-/

namespace A272821.P2629595954030251034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118810 (A141254 (n + 1)).toNat

end

end A272821.P2629595954030251034

/-! ## A272821.P16708003508112799279

`A008616(A137193(n+4))`
-/

namespace A272821.P16708003508112799279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A137193 (n + 4)).toNat

end

end A272821.P16708003508112799279

/-!
# A272823: G.f. satisfies: A(x) = 1 + 4*x*AGM(A(x), A(x)^3).

The programs for A272823, there is no canonical definition to state claims against.
-/

/-! ## A272823.P3584148215045869719

`A085635(A025587(n))`
-/

namespace A272823.P3584148215045869719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085635 (A025587 n).toNat

end

end A272823.P3584148215045869719

/-!
# A272824: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 601", based on the 5-celled von Neumann neighborhood.

The programs for A272824, there is no canonical definition to state claims against.
-/

/-! ## A272824.P14297093851830505073

`∑[A272330(n)]`
-/

namespace A272824.P14297093851830505073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272824.P14297093851830505073

/-! ## A272824.P10725197744521558359

`∑[A016754(n)-A271885(n)]+1`
-/

namespace A272824.P10725197744521558359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A271885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A272824.P10725197744521558359

/-! ## A272824.P15924494254220741484

`∑[∑[A272825(n)]+1-A272825(n)]`
-/

namespace A272824.P15924494254220741484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272825 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272825 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272824.P15924494254220741484

/-! ## A272824.P3342976668353637237

`a(n-1)+A272330(n)+A000038(n)` with `a(0)=1`
-/

namespace A272824.P3342976668353637237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A272330 n + A000038 n)

end

end A272824.P3342976668353637237

/-! ## A272824.P469126060824026401

`a(n-1)+A272330(n)%A016754(n)` with `a(0)=1`
-/

namespace A272824.P469126060824026401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A272330 n) (A016754 n)

end

end A272824.P469126060824026401

/-! ## A272824.P12219893138663744402

`∑[A016754(n)-A271885(n)%A005898(n)]`
-/

namespace A272824.P12219893138663744402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - Int.tmod (A271885 n) (A005898 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272824.P12219893138663744402

/-! ## A272824.P10590698638028963433

`∑[A008740(A008458(n))]-A271772(n)`
-/

namespace A272824.P10590698638028963433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A271772 n

end

end A272824.P10590698638028963433

/-!
# A272825: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 601", based on the 5-celled von Neumann neighborhood.

The programs for A272825, there is no canonical definition to state claims against.
-/

/-! ## A272825.P1638119984175208505

`Δ[A272330(n)]`
-/

namespace A272825.P1638119984175208505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272825.P1638119984175208505

/-! ## A272825.P9526558166546554064

`A272330(n+1)-A272330(n)`
-/

namespace A272825.P9526558166546554064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272330 (n + 1) - A272330 n

end

end A272825.P9526558166546554064

/-! ## A272825.P17121175210443976718

`Δ[A181385(A016825(n))-A271885(n)]`
-/

namespace A272825.P17121175210443976718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A271885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272825.P17121175210443976718

/-! ## A272825.P2269940583500333032

`Δ[A008740(A008458(n))-A271885(n)]`
-/

namespace A272825.P2269940583500333032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A271885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272825.P2269940583500333032

/-! ## A272825.P8865415041139160094

`Δ[A008740(A008458(n))]-A271888(n)`
-/

namespace A272825.P8865415041139160094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271888 n

end

end A272825.P8865415041139160094

/-!
# A272827: Fibonacci numbers whose digits are powers of 2.

The programs for A272827, there is no canonical definition to state claims against.
-/

/-! ## A272827.P6579836751538261627

`A276464(∑[2/a(n-1)])` with `a(0)=2`
-/

namespace A272827.P6579836751538261627
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  2 / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276464 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A272827.P6579836751538261627

/-!
# A272828: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 603", based on the 5-celled von Neumann neighborhood.

The programs for A272828, there is no canonical definition to state claims against.
-/

/-! ## A272828.P1163805806842655593

`A273174(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272828.P1163805806842655593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273174 (n - 1) + a (n - 1)

end

end A272828.P1163805806842655593

/-! ## A272828.P11592685007973386799

`A273174(n-1)-floor(-a(A028310(n)-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A272828.P11592685007973386799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273174 (n - 1) - (-a (A028310 n - 1).toNat)

end

end A272828.P11592685007973386799

/-! ## A272828.P12360719971327848479

`Δ[A273173(n)]-A273174(n)`
-/

namespace A272828.P12360719971327848479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273174 n

end

end A272828.P12360719971327848479

/-! ## A272828.P15512522911610282891

`∑[A273174(2*n-n)]+1-A273174(n)`
-/

namespace A272828.P15512522911610282891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273174 (2 * n - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A273174 n)

end

end A272828.P15512522911610282891

/-! ## A272828.P2908211987464867767

`A273173(n+1)-(A273174(n)+A273173(n))`
-/

namespace A272828.P2908211987464867767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273173 (n + 1) - (A273174 n + A273173 n)

end

end A272828.P2908211987464867767

/-!
# A272830: Numbers k such that (8*10^k - 29)/3 is prime.

The programs for A272830, there is no canonical definition to state claims against.
-/

/-! ## A272830.P7188715772038574240

`eq[A005614(3*(n+1)), A131242(A342463(n))]`
-/

namespace A272830.P7188715772038574240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131242 (A342463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272830.P7188715772038574240

/-!
# A272831: Number of distinct multiplicative groups mod n having 1 as the identity element.

The programs for A272831, there is no canonical definition to state claims against.
-/

/-! ## A272831.P12065800871806519615

`A341443(A323462(n+1))%A319910(n+1)`
-/

namespace A272831.P12065800871806519615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341443 (A323462 (n + 1)).toNat) (A319910 (n + 1))

end

end A272831.P12065800871806519615

/-! ## A272831.P5199283611118600638

`A341443(A323462(n+1))%A323289(n)`
-/

namespace A272831.P5199283611118600638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341443 (A323462 (n + 1)).toNat) (A323289 n)

end

end A272831.P5199283611118600638

/-!
# A272832: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 694", based on the 5-celled von Neumann neighborhood.

The programs for A272832, there is no canonical definition to state claims against.
-/

/-! ## A272832.P13127362908377167024

`A273410(2^n-1)`
-/

namespace A272832.P13127362908377167024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273410 (2 ^ n - 1)

end

end A272832.P13127362908377167024

/-! ## A272832.P15858982021337957233

`record[A273410(A227351(n))]`
-/

namespace A272832.P15858982021337957233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273410 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272832.P15858982021337957233

/-! ## A272832.P10760700974322353266

`or(1, A273410(A000225(n)))`
-/

namespace A272832.P10760700974322353266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273410 (A000225 n).toNat)

end

end A272832.P10760700974322353266

/-! ## A272832.P5303400984468761195

`record[A273410(A243071(n+1))]`
-/

namespace A272832.P5303400984468761195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273410 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272832.P5303400984468761195

/-! ## A272832.P7792695117907308283

`record[A273410(A302029(n+1))]`
-/

namespace A272832.P7792695117907308283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273410 (A302029 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272832.P7792695117907308283

/-!
# A272833: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 603", based on the 5-celled von Neumann neighborhood.

The programs for A272833, there is no canonical definition to state claims against.
-/

/-! ## A272833.P16867995957777750185

`A272828(2^n-1)`
-/

namespace A272833.P16867995957777750185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272828 (2 ^ n - 1)

end

end A272833.P16867995957777750185

/-! ## A272833.P17343739640878812235

`record[A272828(A218616(n))]`
-/

namespace A272833.P17343739640878812235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272828 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272833.P17343739640878812235

/-! ## A272833.P11660520541581199807

`or(1, A272828(A000225(n)))`
-/

namespace A272833.P11660520541581199807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A272828 (A000225 n).toNat)

end

end A272833.P11660520541581199807

/-! ## A272833.P2654101622472874902

`record[A272828(A243071(n+1))]`
-/

namespace A272833.P2654101622472874902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272828 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272833.P2654101622472874902

/-! ## A272833.P8794137326587763836

`A272828(A000225(n))%A220502(n)`
-/

namespace A272833.P8794137326587763836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272828 (A000225 n).toNat) (A220502 n)

end

end A272833.P8794137326587763836

/-!
# A272834: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 545", based on the 5-celled von Neumann neighborhood.

The programs for A272834, there is no canonical definition to state claims against.
-/

/-! ## A272834.P7194260970603530495

`A272837(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272834.P7194260970603530495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272837 (n - 1) + a (n - 1)

end

end A272834.P7194260970603530495

/-! ## A272834.P14209391317379255956

`or(A016754(n)-A169705(n), char[2*n])`
-/

namespace A272834.P14209391317379255956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016754 n - A169705 n) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A272834.P14209391317379255956

/-! ## A272834.P10429513279205746137

`A000007(n)+A016754(n)-A169705(n)`
-/

namespace A272834.P10429513279205746137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A016754 n - A169705 n)

end

end A272834.P10429513279205746137

/-! ## A272834.P10231337407419064562

`A016754(n)-A169705(n)%A272113(n)`
-/

namespace A272834.P10231337407419064562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - Int.tmod (A169705 n) (A272113 n)

end

end A272834.P10231337407419064562

/-! ## A272834.P790372157786529820

`A285982(A005408(n))+A016754(n)-A169705(n)`
-/

namespace A272834.P790372157786529820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285982 (A005408 n).toNat + (A016754 n - A169705 n)

end

end A272834.P790372157786529820

/-! ## A272834.P12259209890333676729

`A016754(n)-A001221(A000961(n+1))*A169705(n)`
-/

namespace A272834.P12259209890333676729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A001221 (A000961 (n + 1)).toNat * A169705 n

end

end A272834.P12259209890333676729

/-! ## A272834.P651233377247340593

`Δ[A272836(n)]-A272837(n)`
-/

namespace A272834.P651233377247340593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272836 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272837 n

end

end A272834.P651233377247340593

/-! ## A272834.P4593201039818901753

`A272836(n+1)-(A272837(n)+A272836(n))`
-/

namespace A272834.P4593201039818901753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272836 (n + 1) - (A272837 n + A272836 n)

end

end A272834.P4593201039818901753

/-! ## A272834.P11737602609036935304

`A181385(A016825(n))-A169705(n)`
-/

namespace A272834.P11737602609036935304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A169705 n

end

end A272834.P11737602609036935304

/-! ## A272834.P14365634260159175760

`A008740(A008458(n))-A169705(n)`
-/

namespace A272834.P14365634260159175760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A169705 n

end

end A272834.P14365634260159175760

/-! ## A272834.P9974621618039806754

`A269175(n²)+A016754(n)-A169705(n)`
-/

namespace A272834.P9974621618039806754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269175 (n ^ 2) + (A016754 n - A169705 n)

end

end A272834.P9974621618039806754

/-!
# A272835: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 545", based on the 5-celled von Neumann neighborhood.

The programs for A272835, there is no canonical definition to state claims against.
-/

/-! ## A272835.P15240468485191197877

`A272834(2^n-1)`
-/

namespace A272835.P15240468485191197877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272834 (2 ^ n - 1)

end

end A272835.P15240468485191197877

/-! ## A272835.P1767612871914285760

`record[A272834(A227351(n))]`
-/

namespace A272835.P1767612871914285760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272834 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272835.P1767612871914285760

/-! ## A272835.P15443508951635205913

`record[A272834(A243071(n+1))]`
-/

namespace A272835.P15443508951635205913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272834 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272835.P15443508951635205913

/-! ## A272835.P7528721235776747104

`record[A272834(A243354(n+1))]`
-/

namespace A272835.P7528721235776747104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272834 (A243354 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272835.P7528721235776747104

/-! ## A272835.P11858164058257925113

`record[A272834(A269386(n+1))]`
-/

namespace A272835.P11858164058257925113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272834 (A269386 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272835.P11858164058257925113

/-!
# A272836: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 545", based on the 5-celled von Neumann neighborhood.

The programs for A272836, there is no canonical definition to state claims against.
-/

/-! ## A272836.P2525938322394073039

`∑[A272834(n)]`
-/

namespace A272836.P2525938322394073039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272836.P2525938322394073039

/-! ## A272836.P591991394878317594

`∑[A272837(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A272836.P591991394878317594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A272837 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272836.P591991394878317594

/-! ## A272836.P5918939370861755108

`∑[A016754(n)-A169705(n)]+1`
-/

namespace A272836.P5918939370861755108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A169705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A272836.P5918939370861755108

/-! ## A272836.P12444980473118123096

`A272834(n)+a(n-A057427(n))` with `a(0)=1`
-/

namespace A272836.P12444980473118123096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272834 n + a ((n : ℤ) - A057427 n).toNat

end

end A272836.P12444980473118123096

/-! ## A272836.P12506027602874039837

`∑[∑[A272837(n)]+1-A272837(n)]`
-/

namespace A272836.P12506027602874039837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272837 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272837 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272836.P12506027602874039837

/-! ## A272836.P15506723925420234972

`a(n-1)+A272834(n)%A195321(n)` with `a(0)=1`
-/

namespace A272836.P15506723925420234972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A272834 n) (A195321 n)

end

end A272836.P15506723925420234972

/-! ## A272836.P15494160035160742158

`∑[(2*n+1)²-A169705(n)%A272113(n)]`
-/

namespace A272836.P15494160035160742158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - Int.tmod (A169705 n) (A272113 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272836.P15494160035160742158

/-! ## A272836.P15756237456494904619

`∑[A008740(A008458(n))-A169705(n)]`
-/

namespace A272836.P15756237456494904619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A169705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272836.P15756237456494904619

/-!
# A272837: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 545", based on the 5-celled von Neumann neighborhood.

The programs for A272837, there is no canonical definition to state claims against.
-/

/-! ## A272837.P5108323538792724289

`Δ[A000007(n)+A016754(n)-A169705(n)]`
-/

namespace A272837.P5108323538792724289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A016754 n - A169705 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272837.P5108323538792724289

/-! ## A272837.P13931631025437397583

`Δ[A272834(n)]`
-/

namespace A272837.P13931631025437397583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272837.P13931631025437397583

/-! ## A272837.P15320687781664390003

`A272834(n+1)-A272834(n)`
-/

namespace A272837.P15320687781664390003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272834 (n + 1) - A272834 n

end

end A272837.P15320687781664390003

/-! ## A272837.P3869556236422092325

`Δ[A181385(A016825(n))-A169705(n)]`
-/

namespace A272837.P3869556236422092325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A169705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272837.P3869556236422092325

/-! ## A272837.P679012627152485241

`Δ[A008740(A008458(n))-A169705(n)]`
-/

namespace A272837.P679012627152485241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A169705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272837.P679012627152485241

/-!
# A272838: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 547", based on the 5-celled von Neumann neighborhood.

The programs for A272838, there is no canonical definition to state claims against.
-/

/-! ## A272838.P5795357329843071446

`A272841(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272838.P5795357329843071446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272841 (n - 1) + a (n - 1)

end

end A272838.P5795357329843071446

/-! ## A272838.P5679567828126012392

`Δ[A272840(n)]-A272841(n)`
-/

namespace A272838.P5679567828126012392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272841 n

end

end A272838.P5679567828126012392

/-! ## A272838.P17008402265275417475

`A272840(n+1)-(A272841(n)+A272840(n))`
-/

namespace A272838.P17008402265275417475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272840 (n + 1) - (A272841 n + A272840 n)

end

end A272838.P17008402265275417475

/-! ## A272838.P3474938359536288515

`∑[A272841(n)]-A272841(n)-A260196(n+2)`
-/

namespace A272838.P3474938359536288515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A272841 n - A260196 (n + 2)

end

end A272838.P3474938359536288515

/-! ## A272838.P15490578088440374484

`(∑[A272841(n)]-A272841(n)+1)%A045820(n)`
-/

namespace A272838.P15490578088440374484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - A272841 n + 1) (A045820 n)

end

end A272838.P15490578088440374484

/-! ## A272838.P3326256479582976501

`(1-A098725(n))!+∑[A272841(n)]-A272841(n)`
-/

namespace A272838.P3326256479582976501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (1 - A098725 n).toNat : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j - A272841 n)

end

end A272838.P3326256479582976501

/-! ## A272838.P6008823286254369464

`A000035(2*n+1)+∑[A272841(n)]-A272841(n)`
-/

namespace A272838.P6008823286254369464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A272841 n)

end

end A272838.P6008823286254369464

/-! ## A272838.P9798523051518878482

`(∑[A272841(n)]-A272841(n))%A006094(n+1)+1`
-/

namespace A272838.P9798523051518878482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - A272841 n) (A006094 (n + 1)) + 1

end

end A272838.P9798523051518878482

/-! ## A272838.P15174858573462522306

`A045798(n+1)%2+∑[A272841(n)]-A272841(n)`
-/

namespace A272838.P15174858573462522306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045798 (n + 1)) 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A272841 n)

end

end A272838.P15174858573462522306

/-! ## A272838.P9319363913437427797

`A045802(n+1)%2+∑[A272841(n)]-A272841(n)`
-/

namespace A272838.P9319363913437427797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045802 (n + 1)) 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A272841 n)

end

end A272838.P9319363913437427797

/-! ## A272838.P621140048398542433

`A045806(n+1)%2+∑[A272841(n)]-A272841(n)`
-/

namespace A272838.P621140048398542433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045806 (n + 1)) 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A272841 n)

end

end A272838.P621140048398542433

/-! ## A272838.P11635195646783988569

`A000027(∑[A272841(n)]-A272841(n)+1)`
-/

namespace A272838.P11635195646783988569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j - A272841 n + 1).toNat

end

end A272838.P11635195646783988569

/-! ## A272838.P16648858580775040450

`A165476((n+1)²)+∑[A272841(n)]-A272841(n)`
-/

namespace A272838.P16648858580775040450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165476 ((n + 1) ^ 2) + (∑ j ∈ Finset.range (n + 1), f1 j - A272841 n)

end

end A272838.P16648858580775040450

/-! ## A272838.P3180895053572296588

`A165471((n+1)²)+∑[A272841(n)]-A272841(n)`
-/

namespace A272838.P3180895053572296588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 ((n + 1) ^ 2) + (∑ j ∈ Finset.range (n + 1), f1 j - A272841 n)

end

end A272838.P3180895053572296588

/-! ## A272838.P13504417517496357710

`A000265(∑[A272841(n)]-A272841(n)+1)`
-/

namespace A272838.P13504417517496357710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ j ∈ Finset.range (n + 1), f1 j - A272841 n + 1).toNat

end

end A272838.P13504417517496357710

/-! ## A272838.P3226793086125769614

`A165481((n+1)²)+∑[A272841(n)]-A272841(n)`
-/

namespace A272838.P3226793086125769614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165481 ((n + 1) ^ 2) + (∑ j ∈ Finset.range (n + 1), f1 j - A272841 n)

end

end A272838.P3226793086125769614

/-!
# A272839: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 547", based on the 5-celled von Neumann neighborhood.

The programs for A272839, there is no canonical definition to state claims against.
-/

/-! ## A272839.P16764849916366960706

`A272838(2^n-1)`
-/

namespace A272839.P16764849916366960706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272838 (2 ^ n - 1)

end

end A272839.P16764849916366960706

/-! ## A272839.P17864558613529571461

`record[A272838(A038573(n))]`
-/

namespace A272839.P17864558613529571461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272838 (A038573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272839.P17864558613529571461

/-! ## A272839.P4831362282616691242

`record[A272838(A227351(n))]`
-/

namespace A272839.P4831362282616691242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272838 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272839.P4831362282616691242

/-! ## A272839.P14501235910271700687

`record[A272838(A303763(n))]`
-/

namespace A272839.P14501235910271700687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272838 (A303763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272839.P14501235910271700687

/-! ## A272839.P9327805313267550275

`or(1, A272838(A000225(n)))`
-/

namespace A272839.P9327805313267550275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A272838 (A000225 n).toNat)

end

end A272839.P9327805313267550275

/-!
# A272840: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 547", based on the 5-celled von Neumann neighborhood.

The programs for A272840, there is no canonical definition to state claims against.
-/

/-! ## A272840.P13440225954774243803

`∑[A272838(n)]`
-/

namespace A272840.P13440225954774243803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272840.P13440225954774243803

/-! ## A272840.P3013498190161906555

`A272838(n%A000124(n))+a(n-1)` with `a(0)=1`
-/

namespace A272840.P3013498190161906555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272838 (Int.tmod (n : ℤ) (A000124 n)).toNat + a (n - 1)

end

end A272840.P3013498190161906555

/-! ## A272840.P6702495082716025996

`a(n-1)+A272838(n)%A017066(n)` with `a(0)=1`
-/

namespace A272840.P6702495082716025996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A272838 n) (A017066 n)

end

end A272840.P6702495082716025996

/-! ## A272840.P8282330799196567374

`∑[∑[A272841(n)]+1-A272841(n)]`
-/

namespace A272840.P8282330799196567374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272841 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272841 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272840.P8282330799196567374

/-! ## A272840.P11511866679317798689

`A272838(n)+a(log2(A011782(n)))` with `a(0)=1`
-/

namespace A272840.P11511866679317798689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272838 n + a (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A272840.P11511866679317798689

/-!
# A272841: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 547", based on the 5-celled von Neumann neighborhood.

The programs for A272841, there is no canonical definition to state claims against.
-/

/-! ## A272841.P7651660559396479377

`Δ[A272838(n)]`
-/

namespace A272841.P7651660559396479377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272841.P7651660559396479377

/-! ## A272841.P10061273538790907116

`A272838(n+1)-A272838(n)`
-/

namespace A272841.P10061273538790907116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272838 (n + 1) - A272838 n

end

end A272841.P10061273538790907116

/-! ## A272841.P17407384580927354615

`A272838(C(n+1, n))+A001489(A272838(n))`
-/

namespace A272841.P17407384580927354615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272838 (Nat.choose (n + 1) n) + A001489 (A272838 n).toNat

end

end A272841.P17407384580927354615

/-! ## A272841.P711163893500095412

`A272838(n+1)+A001478(A272838(n)+1)+1`
-/

namespace A272841.P711163893500095412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272838 (n + 1) + A001478 (A272838 n + 1).toNat + 1

end

end A272841.P711163893500095412

/-! ## A272841.P16518003961694917115

`A272838(A000027(n+1))+A001489(A272838(n))`
-/

namespace A272841.P16518003961694917115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272838 (A000027 (n + 1)).toNat + A001489 (A272838 n).toNat

end

end A272841.P16518003961694917115

/-! ## A272841.P4049696544702635202

`A272838(A028310(n+1))+A001489(A272838(n))`
-/

namespace A272841.P4049696544702635202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272838 (A028310 (n + 1)).toNat + A001489 (A272838 n).toNat

end

end A272841.P4049696544702635202

/-! ## A272841.P8124599601437673452

`A272838(A029579(2*n))+A001489(A272838(n))`
-/

namespace A272841.P8124599601437673452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272838 (A029579 (2 * n)).toNat + A001489 (A272838 n).toNat

end

end A272841.P8124599601437673452

/-!
# A272842: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 549", based on the 5-celled von Neumann neighborhood.

The programs for A272842, there is no canonical definition to state claims against.
-/

/-! ## A272842.P17677799660430290268

`A272845(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272842.P17677799660430290268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272845 (n - 1) + a (n - 1)

end

end A272842.P17677799660430290268

/-! ## A272842.P16801881613861455058

`Δ[A272844(n)]-A272845(n)`
-/

namespace A272842.P16801881613861455058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272845 n

end

end A272842.P16801881613861455058

/-! ## A272842.P13191556786679074927

`A272844(n+1)-(A272845(n)+A272844(n))`
-/

namespace A272842.P13191556786679074927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272844 (n + 1) - (A272845 n + A272844 n)

end

end A272842.P13191556786679074927

/-! ## A272842.P5818188944785480617

`A087960(n)²+∑[A272845(n)]-A272845(n)`
-/

namespace A272842.P5818188944785480617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A272845 n)

end

end A272842.P5818188944785480617

/-! ## A272842.P15838893584977352374

`A057427(n+1)+∑[A272845(n)]-A272845(n)`
-/

namespace A272842.P15838893584977352374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A272845 n)

end

end A272842.P15838893584977352374

/-! ## A272842.P3743624201628868528

`A057979(2*n)+∑[A272845(n)]-A272845(n)`
-/

namespace A272842.P3743624201628868528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n) + (∑ j ∈ Finset.range (n + 1), f1 j - A272845 n)

end

end A272842.P3743624201628868528

/-! ## A272842.P2347454631634568846

`A005408(n)%2+∑[A272845(n)]-A272845(n)`
-/

namespace A272842.P2347454631634568846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 n) 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A272845 n)

end

end A272842.P2347454631634568846

/-! ## A272842.P5107873105269692054

`A000038(n+1)!+∑[A272845(n)]-A272845(n)`
-/

namespace A272842.P5107873105269692054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 (n + 1)).toNat : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j - A272845 n)

end

end A272842.P5107873105269692054

/-! ## A272842.P9460179177889003666

`A000034(2*(n+1))+∑[A272845(n)]-A272845(n)`
-/

namespace A272842.P9460179177889003666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * (n + 1)) + (∑ j ∈ Finset.range (n + 1), f1 j - A272845 n)

end

end A272842.P9460179177889003666

/-! ## A272842.P6145585084456434229

`A000035(2*n+1)+∑[A272845(n)]-A272845(n)`
-/

namespace A272842.P6145585084456434229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A272845 n)

end

end A272842.P6145585084456434229

/-! ## A272842.P1286388969107146412

`A028242(2*n)-n+∑[A272845(n)]-A272845(n)`
-/

namespace A272842.P1286388969107146412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * n) - (n : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j - A272845 n)

end

end A272842.P1286388969107146412

/-! ## A272842.P3201657075651113356

`A000027(∑[A272845(n)]-A272845(n)+1)`
-/

namespace A272842.P3201657075651113356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j - A272845 n + 1).toNat

end

end A272842.P3201657075651113356

/-! ## A272842.P14322728269742048673

`A034947(n²+5)²+∑[A272845(n)]-A272845(n)`
-/

namespace A272842.P14322728269742048673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n ^ 2 + 5) ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A272845 n)

end

end A272842.P14322728269742048673

/-!
# A272843: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 549", based on the 5-celled von Neumann neighborhood.

The programs for A272843, there is no canonical definition to state claims against.
-/

/-! ## A272843.P3191187193122976981

`A272842(2^n-1)`
-/

namespace A272843.P3191187193122976981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272842 (2 ^ n - 1)

end

end A272843.P3191187193122976981

/-! ## A272843.P2970661301821535997

`record[A272842(A255565(n))]`
-/

namespace A272843.P2970661301821535997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272842 (A255565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272843.P2970661301821535997

/-! ## A272843.P13907021769779643773

`record[A272842(A243071(n+1))]`
-/

namespace A272843.P13907021769779643773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272842 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272843.P13907021769779643773

/-! ## A272843.P16187727171003700221

`record[A272842(A252756(n+1))]`
-/

namespace A272843.P16187727171003700221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272842 (A252756 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272843.P16187727171003700221

/-! ## A272843.P3386902004567148748

`record[A272842(A269386(n+1))]`
-/

namespace A272843.P3386902004567148748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272842 (A269386 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272843.P3386902004567148748

/-!
# A272844: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 549", based on the 5-celled von Neumann neighborhood.

The programs for A272844, there is no canonical definition to state claims against.
-/

/-! ## A272844.P15756137988345722415

`∑[∑[A272845(n)]+1-A272845(n)]`
-/

namespace A272844.P15756137988345722415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272845 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272845 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272844.P15756137988345722415

/-! ## A272844.P8131486317018058512

`∑[A272842(n)]`
-/

namespace A272844.P8131486317018058512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272844.P8131486317018058512

/-! ## A272844.P8365534818534601696

`A272842(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A272844.P8365534818534601696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272842 n + a (A023443 n).toNat

end

end A272844.P8365534818534601696

/-! ## A272844.P10677600983689860215

`a(n-1)+A272842(n)+A000007(n)` with `a(0)=1`
-/

namespace A272844.P10677600983689860215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A272842 n + A000007 n)

end

end A272844.P10677600983689860215

/-! ## A272844.P15603578577812156386

`A272842(A000038(n)+n)+a(n-1)` with `a(0)=1`
-/

namespace A272844.P15603578577812156386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272842 (A000038 n + (n : ℤ)).toNat + a (n - 1)

end

end A272844.P15603578577812156386

/-!
# A272845: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 549", based on the 5-celled von Neumann neighborhood.

The programs for A272845, there is no canonical definition to state claims against.
-/

/-! ## A272845.P5642921780992665348

`Δ[A272842(n)]`
-/

namespace A272845.P5642921780992665348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272845.P5642921780992665348

/-! ## A272845.P8499773439582219214

`A272842(n+1)-A272842(n)`
-/

namespace A272845.P8499773439582219214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272842 (n + 1) - A272842 n

end

end A272845.P8499773439582219214

/-!
# A272846: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 553", based on the 5-celled von Neumann neighborhood.

The programs for A272846, there is no canonical definition to state claims against.
-/

/-! ## A272846.P3313788536490661169

`(2*n+1)²-A272115(n)%A016754(n)`
-/

namespace A272846.P3313788536490661169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - Int.tmod (A272115 n) (A016754 n)

end

end A272846.P3313788536490661169

/-! ## A272846.P9337862833011321107

`A272849(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272846.P9337862833011321107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272849 (n - 1) + a (n - 1)

end

end A272846.P9337862833011321107

/-! ## A272846.P12854362828587871429

`Δ[A272848(n)]-A272849(n)`
-/

namespace A272846.P12854362828587871429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272849 n

end

end A272846.P12854362828587871429

/-! ## A272846.P916741610592052090

`A272848(n+1)-(A272849(n)+A272848(n))`
-/

namespace A272846.P916741610592052090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272848 (n + 1) - (A272849 n + A272848 n)

end

end A272846.P916741610592052090

/-! ## A272846.P1271989128005897065

`A181385(4*n+2)-A272115(n)`
-/

namespace A272846.P1271989128005897065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (4 * n + 2) - A272115 n

end

end A272846.P1271989128005897065

/-! ## A272846.P4401293593731247751

`A008740(A008458(n))-A272115(n)`
-/

namespace A272846.P4401293593731247751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272115 n

end

end A272846.P4401293593731247751

/-!
# A272847: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 822", based on the 5-celled von Neumann neighborhood.

The programs for A272847, there is no canonical definition to state claims against.
-/

/-! ## A272847.P7090489573523729811

`∑[A269918(n)]`
-/

namespace A272847.P7090489573523729811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272847.P7090489573523729811

/-! ## A272847.P13102662115998489773

`A269918(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A272847.P13102662115998489773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269918 n + a (A023443 n).toNat

end

end A272847.P13102662115998489773

/-! ## A272847.P3171460368895496448

`A269918(n)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A272847.P3171460368895496448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269918 n + a (A004273 n - (n : ℤ)).toNat

end

end A272847.P3171460368895496448

/-! ## A272847.P5117115026782740035

`∑[∑[A273370(n)]+1-A273370(n)]`
-/

namespace A272847.P5117115026782740035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273370 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273370 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272847.P5117115026782740035

/-! ## A272847.P4225665479073891990

`a(n-1)+A269918(n)+A000007(n)` with `a(0)=1`
-/

namespace A272847.P4225665479073891990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A269918 n + A000007 n)

end

end A272847.P4225665479073891990

/-! ## A272847.P17136029036999090966

`a(n-1)+A269918(n)+A000038(n)` with `a(0)=1`
-/

namespace A272847.P17136029036999090966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A269918 n + A000038 n)

end

end A272847.P17136029036999090966

/-!
# A272848: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 553", based on the 5-celled von Neumann neighborhood.

The programs for A272848, there is no canonical definition to state claims against.
-/

/-! ## A272848.P11222837991264523698

`∑[A272846(n)]`
-/

namespace A272848.P11222837991264523698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272848.P11222837991264523698

/-! ## A272848.P11642170635330194241

`A272846(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A272848.P11642170635330194241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272846 n + a (A023443 n).toNat

end

end A272848.P11642170635330194241

/-! ## A272848.P357066299222819069

`a(n-1)+A272846(n)%A016754(n)` with `a(0)=1`
-/

namespace A272848.P357066299222819069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A272846 n) (A016754 n)

end

end A272848.P357066299222819069

/-! ## A272848.P15677160830987637042

`∑[A272849(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A272848.P15677160830987637042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A272849 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272848.P15677160830987637042

/-! ## A272848.P3456979652797162765

`∑[∑[A272849(n)]+1-A272849(n)]`
-/

namespace A272848.P3456979652797162765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272849 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272849 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272848.P3456979652797162765

/-! ## A272848.P1435418327525333777

`∑[A181385(A016825(n))-A272115(n)]`
-/

namespace A272848.P1435418327525333777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272115 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272848.P1435418327525333777

/-! ## A272848.P13566598586853085465

`∑[A181385(A016825(n))]-A272116(n)`
-/

namespace A272848.P13566598586853085465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A272116 n

end

end A272848.P13566598586853085465

/-! ## A272848.P6106874144758389572

`∑[A008740(A008458(n))-A272115(n)]`
-/

namespace A272848.P6106874144758389572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272115 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272848.P6106874144758389572

/-! ## A272848.P3143089037166461453

`∑[A008740(A008458(n))]-A272116(n)`
-/

namespace A272848.P3143089037166461453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A272116 n

end

end A272848.P3143089037166461453

/-!
# A272849: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 553", based on the 5-celled von Neumann neighborhood.

The programs for A272849, there is no canonical definition to state claims against.
-/

/-! ## A272849.P11247477531988472911

`Δ[A272846(n)]`
-/

namespace A272849.P11247477531988472911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272849.P11247477531988472911

/-! ## A272849.P12360384454433007540

`A272846(n+1)-A272846(n)`
-/

namespace A272849.P12360384454433007540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272846 (n + 1) - A272846 n

end

end A272849.P12360384454433007540

/-! ## A272849.P11533944564006404473

`Δ[(n+1)*A008574(n)-A272115(n)]`
-/

namespace A272849.P11533944564006404473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008574 n - A272115 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272849.P11533944564006404473

/-! ## A272849.P6590390048755787528

`Δ[A181385(A016825(n))-A272115(n)]`
-/

namespace A272849.P6590390048755787528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272115 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272849.P6590390048755787528

/-! ## A272849.P15783803349676112441

`Δ[A181385(A016825(n))]-A272117(n)`
-/

namespace A272849.P15783803349676112441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272117 n

end

end A272849.P15783803349676112441

/-! ## A272849.P16960941818955110828

`Δ[A008740(A008458(n))-A272115(n)]`
-/

namespace A272849.P16960941818955110828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272115 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272849.P16960941818955110828

/-! ## A272849.P13368592579682836541

`Δ[A008740(A008458(n))]-A272117(n)`
-/

namespace A272849.P13368592579682836541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272117 n

end

end A272849.P13368592579682836541

/-! ## A272849.P8624646517405714156

`Δ[A008574(n²+n)-A272115(n)]`
-/

namespace A272849.P8624646517405714156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (n ^ 2 + n) - A272115 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272849.P8624646517405714156

/-!
# A272850: a(n) = (n^2 + (n+1)^2)*(n^2 + (n+1)^2 + 2*n*(n+1)).

The programs for A272850, the canonical program `A272850.P3692482739853026065` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272850 has offset 0).

The definition of A272850 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n²+(n+1)²)*(n²+(n+1)²+2*n*(n+1))` (program `A272850.P3692482739853026065`, by `A272850.P3692482739853026065.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A272850.P13238318550238348811

`(2*n+1)²*(2*n*(n+1)+1)`
-/

namespace A272850.P13238318550238348811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2 * (2 * n * (n + 1) + 1)

end

end A272850.P13238318550238348811

namespace A272850

/-- `(2*n+1)²*(2*n*(n+1)+1)` -/
def P13238318550238348811.Spec : Prop :=
  ∀ n, (P13238318550238348811.a n : ℤ) = A272850 n

theorem P13238318550238348811.correct : P13238318550238348811.Spec := by
  intro n
  simp only [A272850, Nat.add_sub_cancel, A272850.P13238318550238348811.a, A272850.P3692482739853026065.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A272850

/-! ## A272850.P3692482739853026065

`(n²+(n+1)²)*(n²+(n+1)²+2*n*(n+1))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A272850

/-- `(n²+(n+1)²)*(n²+(n+1)²+2*n*(n+1))` -/
def P3692482739853026065.Spec : Prop :=
  ∀ n, (P3692482739853026065.a n : ℤ) = A272850 n

theorem P3692482739853026065.correct : P3692482739853026065.Spec := by
  intro n
  simp only [A272850]

end A272850

/-! ## A272850.P13144057232046236539

`C(∑[8*n]+2, 2)`
-/

namespace A272850.P13144057232046236539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 2) 2

end

end A272850.P13144057232046236539

namespace A272850

/-- `C(∑[8*n]+2, 2)` -/
def P13144057232046236539.Spec : Prop :=
  ∀ n, (P13144057232046236539.a n : ℤ) = A272850 n

end A272850

/-! ## A272850.P7127249001892139316

`record[C(xor(1, n)²+1, 2)]`
-/

namespace A272850.P7127249001892139316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 1 n ^ 2 + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272850.P7127249001892139316

namespace A272850

/-- `record[C(xor(1, n)²+1, 2)]` -/
def P7127249001892139316.Spec : Prop :=
  ∀ n, (P7127249001892139316.a n : ℤ) = A272850 n

end A272850

/-! ## A272850.P7816806909660192410

`lcm(Δ[n²]², Δ[n²²])`
-/

namespace A272850.P7816806909660192410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A272850.P7816806909660192410

namespace A272850

/-- `lcm(Δ[n²]², Δ[n²²])` -/
def P7816806909660192410.Spec : Prop :=
  ∀ n, (P7816806909660192410.a n : ℤ) = A272850 n

end A272850

/-! ## A272850.P16482825092622434310

`C(Δ[n²]², 2)+Δ[n²]²`
-/

namespace A272850.P16482825092622434310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat 2 : ℤ) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

end

end A272850.P16482825092622434310

namespace A272850

/-- `C(Δ[n²]², 2)+Δ[n²]²` -/
def P16482825092622434310.Spec : Prop :=
  ∀ n, P16482825092622434310.a n = A272850 n

end A272850

/-! ## A272850.P6149780026993765112

`or(1, C((2*n+1)²+1, 2))`
-/

namespace A272850.P6149780026993765112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.choose ((2 * n + 1) ^ 2 + 1) 2)

end

end A272850.P6149780026993765112

namespace A272850

/-- `or(1, C((2*n+1)²+1, 2))` -/
def P6149780026993765112.Spec : Prop :=
  ∀ n, (P6149780026993765112.a n : ℤ) = A272850 n

end A272850

/-! ## A272850.P4074725981948242272

`or(1, (2*n+1)*Δ[n^4])`
-/

namespace A272850.P4074725981948242272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((2 * n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A272850.P4074725981948242272

namespace A272850

/-- `or(1, (2*n+1)*Δ[n^4])` -/
def P4074725981948242272.Spec : Prop :=
  ∀ n, P4074725981948242272.a n = A272850 n

end A272850

/-! ## A272850.P6627273968596517840

`record[xor(1, n)²*ceil((n+1)²/2)]`
-/

namespace A272850.P6627273968596517840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n ^ 2 : ℤ) * ⌈((n + 1) ^ 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272850.P6627273968596517840

namespace A272850

/-- `record[xor(1, n)²*ceil((n+1)²/2)]` -/
def P6627273968596517840.Spec : Prop :=
  ∀ n, P6627273968596517840.a n = A272850 n

end A272850

/-! ## A272850.P15305005257269435892

`A185096(n)+A016754(n)`
-/

namespace A272850.P15305005257269435892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185096 n + A016754 n

end

end A272850.P15305005257269435892

namespace A272850

/-- `A185096(n)+A016754(n)` -/
def P15305005257269435892.Spec : Prop :=
  ∀ n, P15305005257269435892.a n = A272850 n

theorem P15305005257269435892.correct : P15305005257269435892.Spec := by
  intro n
  simp only [A272850, Nat.add_sub_cancel, A272850.P15305005257269435892.a, A272850.P3692482739853026065.a, A016754, A016754.P2987865549988322084.a, A185096, A185096.P3778731296284897470.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272850

/-! ## A272850.P5078231756495490847

`A175110(n)+A046092(n)`
-/

namespace A272850.P5078231756495490847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175110 n + A046092 n

end

end A272850.P5078231756495490847

namespace A272850

/-- `A175110(n)+A046092(n)` -/
def P5078231756495490847.Spec : Prop :=
  ∀ n, P5078231756495490847.a n = A272850 n

end A272850

/-! ## A272850.P9317026522041866261

`A016756(n)-A185096(n)`
-/

namespace A272850.P9317026522041866261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016756 n - A185096 n

end

end A272850.P9317026522041866261

namespace A272850

/-- `A016756(n)-A185096(n)` -/
def P9317026522041866261.Spec : Prop :=
  ∀ n, P9317026522041866261.a n = A272850 n

theorem P9317026522041866261.correct : P9317026522041866261.Spec := by
  intro n
  simp only [A272850, Nat.add_sub_cancel, A272850.P9317026522041866261.a, A272850.P3692482739853026065.a, A016756, A016756.P11037387936499398145.a, A185096, A185096.P3778731296284897470.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272850

/-! ## A272850.P13599290110862683691

`A001844(n)+A175110(n)-1`
-/

namespace A272850.P13599290110862683691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n + (A175110 n - 1)

end

end A272850.P13599290110862683691

namespace A272850

/-- `A001844(n)+A175110(n)-1` -/
def P13599290110862683691.Spec : Prop :=
  ∀ n, P13599290110862683691.a n = A272850 n

end A272850

/-! ## A272850.P4755835785435060589

`A365206(n+1)-A046092(n)`
-/

namespace A272850.P4755835785435060589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365206 (n + 1) - A046092 n

end

end A272850.P4755835785435060589

namespace A272850

/-- `A365206(n+1)-A046092(n)` -/
def P4755835785435060589.Spec : Prop :=
  ∀ n, P4755835785435060589.a n = A272850 n

theorem P4755835785435060589.correct : P4755835785435060589.Spec := by
  intro n
  simp only [A272850, Nat.add_sub_cancel, A272850.P4755835785435060589.a, A272850.P3692482739853026065.a, A046092, A046092.P16411658895297056450.a, A365206, A365206.P12264015237008943708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272850

/-! ## A272850.P5087389626223256847

`A210378(2*n)`
-/

namespace A272850.P5087389626223256847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210378 (2 * n)

end

end A272850.P5087389626223256847

namespace A272850

/-- `A210378(2*n)` -/
def P5087389626223256847.Spec : Prop :=
  ∀ n, P5087389626223256847.a n = A272850 n

end A272850

/-! ## A272850.P18221633033999940514

`A037270(Δ[n²])`
-/

namespace A272850.P18221633033999940514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037270 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A272850.P18221633033999940514

namespace A272850

/-- `A037270(Δ[n²])` -/
def P18221633033999940514.Spec : Prop :=
  ∀ n, P18221633033999940514.a n = A272850 n

end A272850

/-! ## A272850.P9931048871043473313

`A204558(Δ[n²])`
-/

namespace A272850.P9931048871043473313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204558 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A272850.P9931048871043473313

namespace A272850

/-- `A204558(Δ[n²])` -/
def P9931048871043473313.Spec : Prop :=
  ∀ n, P9931048871043473313.a n = A272850 n

end A272850

/-! ## A272850.P17647946694863767804

`∑[A008532(2*n)]`
-/

namespace A272850.P17647946694863767804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008532 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272850.P17647946694863767804

namespace A272850

/-- `∑[A008532(2*n)]` -/
def P17647946694863767804.Spec : Prop :=
  ∀ n, P17647946694863767804.a n = A272850 n

end A272850

/-! ## A272850.P18081956941122320922

`A071253(2*n+1)/2`
-/

namespace A272850.P18081956941122320922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071253 (2 * n + 1) : ℚ) / 2

end

end A272850.P18081956941122320922

namespace A272850

/-- `A071253(2*n+1)/2` -/
def P18081956941122320922.Spec : Prop :=
  ∀ n, P18081956941122320922.a n = (A272850 n : ℚ)

theorem P18081956941122320922.correct : P18081956941122320922.Spec := by
  intro n
  simp only [A272850, Nat.add_sub_cancel, A272850.P18081956941122320922.a, A272850.P3692482739853026065.a, A071253, A071253.P8759095852449772691.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272850

/-! ## A272850.P10548702084346543748

`A173116(2*n+1)/8`
-/

namespace A272850.P10548702084346543748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173116 (2 * n + 1) : ℚ) / 8

end

end A272850.P10548702084346543748

namespace A272850

/-- `A173116(2*n+1)/8` -/
def P10548702084346543748.Spec : Prop :=
  ∀ n, P10548702084346543748.a n = (A272850 n : ℚ)

theorem P10548702084346543748.correct : P10548702084346543748.Spec := by
  intro n
  simp only [A272850, Nat.add_sub_cancel, A272850.P10548702084346543748.a, A272850.P3692482739853026065.a, A173116, A173116.P11865276995933948720.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272850

/-!
# A272851: Number of distinct nonzero Fibonacci numbers among the contiguous substrings of the binary digits of n.

The programs for A272851, there is no canonical definition to state claims against.
-/

/-! ## A272851.P13829226293707647674

`round(A272886(n+1)/sqrt(ϕ))`
-/

namespace A272851.P13829226293707647674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A272886 (n + 1) : ℝ) / Real.sqrt Real.goldenRatio)

end

end A272851.P13829226293707647674

/-! ## A272851.P12197150608256435607

`A272886(n+1)-A089942(A100661(n+1))`
-/

namespace A272851.P12197150608256435607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272886 (n + 1) - A089942 (A100661 (n + 1)).toNat

end

end A272851.P12197150608256435607

/-! ## A272851.P1913508766841463900

`A272886(n+1)-A124765(A336361(n+2))`
-/

namespace A272851.P1913508766841463900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272886 (n + 1) - A124765 (A336361 (n + 2)).toNat

end

end A272851.P1913508766841463900

/-! ## A272851.P11178792288335439327

`A272886(n+1)-A325036(A020500(2*(n+2)))`
-/

namespace A272851.P11178792288335439327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272886 (n + 1) - A325036 (A020500 (2 * (n + 2))).toNat

end

end A272851.P11178792288335439327

/-! ## A272851.P832284736010757287

`A102853(A037952(n)+A003056(n))`
-/

namespace A272851.P832284736010757287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102853 (A037952 n + A003056 n).toNat

end

end A272851.P832284736010757287

/-!
# A272855: Ramanujan's gamma-series.

The programs for A272855, there is no canonical definition to state claims against.
-/

/-! ## A272855.P16256315080746370888

`A272854(n+1)-(A272853(n+1)+A272853(n))`
-/

namespace A272855.P16256315080746370888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272854 (n + 1) - (A272853 (n + 1) + A272853 n)

end

end A272855.P16256315080746370888

/-!
# A272857: Least k>1 such that the Euler totient function of powers k^e, 1 <= e <= n, are divisible by the number their divisors, d(k^e).

The programs for A272857, there is no canonical definition to state claims against.
-/

/-! ## A272857.P11258769649928742583

`A070858(2-char[1]+n)`
-/

namespace A272857.P11258769649928742583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070858 (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

end

end A272857.P11258769649928742583

/-! ## A272857.P1126233662883462580

`A070858(n+2)%A114647(n)²`
-/

namespace A272857.P1126233662883462580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070858 (n + 2)) (A114647 n ^ 2)

end

end A272857.P1126233662883462580

/-! ## A272857.P3778570910862567861

`A006530(xor(char[1], A070858(n+2)))`
-/

namespace A272857.P3778570910862567861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A070858 (n + 2))).toNat

end

end A272857.P3778570910862567861

/-! ## A272857.P14199139781634540107

`p?[A186719(n+1)+A070858(n+1)]`
-/

namespace A272857.P14199139781634540107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186719 (n + 1) + A070858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A272857.P14199139781634540107

/-! ## A272857.P7501661727619631951

`p?[or(A070858(n+1), A154271(n+1))]`
-/

namespace A272857.P7501661727619631951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A070858 (n + 1)) (A154271 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A272857.P7501661727619631951

/-!
# A272860: Sums of two primes (in increasing order) when equal to the product of their prime-counting functions.

The programs for A272860, there is no canonical definition to state claims against.
-/

/-! ## A272860.P9724132665988156727

`record[A082343(A331384(n+1))]`
-/

namespace A272860.P9724132665988156727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082343 (A331384 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272860.P9724132665988156727

/-! ## A272860.P8446687318874969211

`record[A003963(A331384((n+1)/4^val(n+1, 4)))]`
-/

namespace A272860.P8446687318874969211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A331384 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272860.P8446687318874969211

/-!
# A272861: Sum of two integers when equal to the product of their prime-counting functions.

The programs for A272861, there is no canonical definition to state claims against.
-/

/-! ## A272861.P16968316553642457305

`lt[(A103391(n+1)+1)², A108690(n+1)]`
-/

namespace A272861.P16968316553642457305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A103391 (n + 1) + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108690 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272861.P16968316553642457305

/-! ## A272861.P9145926615786851155

`A005843(lt[A281744(n+1), A337461(n)])`
-/

namespace A272861.P9145926615786851155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A272861.P9145926615786851155

/-! ## A272861.P10094044806550237673

`A174965(A274861(n))+A130773(2*n+3)`
-/

namespace A272861.P10094044806550237673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174965 (A274861 n).toNat + A130773 (2 * n + 3)

end

end A272861.P10094044806550237673

/-! ## A272861.P2458912499565058799

`lt[A271505(A271519(n+4)), A271519(n+1)]`
-/

namespace A272861.P2458912499565058799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271505 (A271519 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271519 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272861.P2458912499565058799

/-! ## A272861.P2481560902679967031

`filter[A337769(3*n+1), A369048(#)]`
-/

namespace A272861.P2481560902679967031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337769 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369048 (f1 j).toNat = 1) n)

end

end A272861.P2481560902679967031

/-!
# A272862: Positive integers j such that prime(i) + prime(j) = i*j for some i <= j.

The programs for A272862, there is no canonical definition to state claims against.
-/

/-! ## A272862.P17355575811560590414

`A357839(A272860(n+1))`
-/

namespace A272862.P17355575811560590414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357839 (A272860 (n + 1)).toNat

end

end A272862.P17355575811560590414

/-! ## A272862.P3497650161588618106

`A230980(A272860(n+1)-(n+2))`
-/

namespace A272862.P3497650161588618106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A272860 (n + 1) - (n + 2 : ℤ)).toNat

end

end A272862.P3497650161588618106

/-! ## A272862.P10887593542844674856

`record[A346698(A331384(n+1))]`
-/

namespace A272862.P10887593542844674856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (A331384 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272862.P10887593542844674856

/-!
# A272863: Numerator of the ratio of consecutive prime gaps.

The programs for A272863, the canonical program `A272863.P5446068681317337397` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272863 has offset 1).

The definition of A272863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272863.P5446068681317337397

`A083551(n+1)/A001223(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A272863

/-- `A083551(n+1)/A001223(n+1)` -/
def P5446068681317337397.Spec : Prop :=
  ∀ n, P5446068681317337397.a n = (A272863 (n + 1) : ℚ)

end A272863

/-! ## A272863.P13408538892770171534

`A083552(n+1)/A274225(n+1)`
-/

namespace A272863.P13408538892770171534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083552 (n + 1) : ℚ) / (A274225 (n + 1) : ℚ)

end

end A272863.P13408538892770171534

namespace A272863

/-- `A083552(n+1)/A274225(n+1)` -/
def P13408538892770171534.Spec : Prop :=
  ∀ n, P13408538892770171534.a n = (A272863 (n + 1) : ℚ)

end A272863

/-! ## A272863.P17010370450410369297

`A001223(n+2)/A057467(n+1)`
-/

namespace A272863.P17010370450410369297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001223 (n + 2) : ℚ) / (A057467 (n + 1) : ℚ)

end

end A272863.P17010370450410369297

namespace A272863

/-- `A001223(n+2)/A057467(n+1)` -/
def P17010370450410369297.Spec : Prop :=
  ∀ n, P17010370450410369297.a n = (A272863 (n + 1) : ℚ)

end A272863

/-! ## A272863.P13790395157290626929

`A083551(n+1)/Δ[A006093(n+1)]`
-/

namespace A272863.P13790395157290626929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083551 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A272863.P13790395157290626929

namespace A272863

/-- `A083551(n+1)/Δ[A006093(n+1)]` -/
def P13790395157290626929.Spec : Prop :=
  ∀ n, P13790395157290626929.a n = (A272863 (n + 1) : ℚ)

end A272863

/-! ## A272863.P8465442498658251869

`A083551(n+1)/Δ[A175222(n+1)]`
-/

namespace A272863.P8465442498658251869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175222 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083551 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A272863.P8465442498658251869

namespace A272863

/-- `A083551(n+1)/Δ[A175222(n+1)]` -/
def P8465442498658251869.Spec : Prop :=
  ∀ n, P8465442498658251869.a n = (A272863 (n + 1) : ℚ)

end A272863

/-! ## A272863.P4509259941462023469

`Δ[A000040(n+2)]/A057467(n+1)`
-/

namespace A272863.P4509259941462023469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A057467 (n + 1) : ℚ)

end

end A272863.P4509259941462023469

namespace A272863

/-- `Δ[A000040(n+2)]/A057467(n+1)` -/
def P4509259941462023469.Spec : Prop :=
  ∀ n, P4509259941462023469.a n = (A272863 (n + 1) : ℚ)

end A272863

/-! ## A272863.P746992193937831776

`ratio[A001223(n+1)]*A274225(n+1)`
-/

namespace A272863.P746992193937831776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A274225 (n + 1) : ℚ)

end

end A272863.P746992193937831776

namespace A272863

/-- `ratio[A001223(n+1)]*A274225(n+1)` -/
def P746992193937831776.Spec : Prop :=
  ∀ n, P746992193937831776.a n = (A272863 (n + 1) : ℚ)

end A272863

/-! ## A272863.P690571485281972477

`A083551(n+1)/(A000040(n+2)-A000040(n+1))`
-/

namespace A272863.P690571485281972477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083551 (n + 1) : ℚ) / (A000040 (n + 2) - A000040 (n + 1) : ℚ)

end

end A272863.P690571485281972477

namespace A272863

/-- `A083551(n+1)/(A000040(n+2)-A000040(n+1))` -/
def P690571485281972477.Spec : Prop :=
  ∀ n, P690571485281972477.a n = (A272863 (n + 1) : ℚ)

end A272863

/-! ## A272863.P7652834820436326171

`A274225(n+1)/A001223(n+1)*A001223(n+2)`
-/

namespace A272863.P7652834820436326171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274225 (n + 1) : ℚ) / (A001223 (n + 1) : ℚ) * (A001223 (n + 2) : ℚ)

end

end A272863.P7652834820436326171

namespace A272863

/-- `A274225(n+1)/A001223(n+1)*A001223(n+2)` -/
def P7652834820436326171.Spec : Prop :=
  ∀ n, P7652834820436326171.a n = (A272863 (n + 1) : ℚ)

end A272863

/-! ## A272863.P4475167693472912321

`A083551(n+1)²/(A083550(n+1)*A274225(n+1))`
-/

namespace A272863.P4475167693472912321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083551 (n + 1) ^ 2 : ℚ) / (A083550 (n + 1) * A274225 (n + 1) : ℚ)

end

end A272863.P4475167693472912321

namespace A272863

/-- `A083551(n+1)²/(A083550(n+1)*A274225(n+1))` -/
def P4475167693472912321.Spec : Prop :=
  ∀ n, P4475167693472912321.a n = (A272863 (n + 1) : ℚ)

end A272863

/-!
# A272864: Palindromes that are not of the form x^2 + y^2 + z^2 where x, y, z are integers.

The programs for A272864, there is no canonical definition to state claims against.
-/

/-! ## A272864.P959041998219645979

`∩[A002113(n+1), A004215(n+1)]`
-/

namespace A272864.P959041998219645979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272864.P959041998219645979

/-! ## A272864.P10274634330485684837

`∩[A004215(n+1), A083158(n+1)]`
-/

namespace A272864.P10274634330485684837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272864.P10274634330485684837

/-! ## A272864.P2454679450083068754

`∩[A004215(n+1), A110751(n+1)]`
-/

namespace A272864.P2454679450083068754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272864.P2454679450083068754

/-! ## A272864.P4241229504690046023

`eq[A000164(n), A056965(n)]`
-/

namespace A272864.P4241229504690046023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272864.P4241229504690046023

/-! ## A272864.P2705740335099604522

`eq[A002102(n), A056965(n)]`
-/

namespace A272864.P2705740335099604522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002102 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272864.P2705740335099604522

/-!
# A272866: Triangle read by rows, T(n,k) = GegenbauerC(m,-n,-3/2) where m = k if k=0 and 0<=k<=2n.

The programs for A272866, there is no canonical definition to state claims against.
-/

/-! ## A272866.P2713885618698112178

`A026374(A161983(n))`
-/

namespace A272866.P2713885618698112178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026374 (A161983 n).toNat

end

end A272866.P2713885618698112178

/-! ## A272866.P40454979688208681

`A026374(A007606(n+1)-1)`
-/

namespace A272866.P40454979688208681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026374 (A007606 (n + 1) - 1).toNat

end

end A272866.P40454979688208681

/-! ## A272866.P6109862434574234276

`A026374(eq[1, A057211(n+1)])`
-/

namespace A272866.P6109862434574234276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026374 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272866.P6109862434574234276

/-! ## A272866.P7041902412772462047

`A026374(2*n-A196199(n))`
-/

namespace A272866.P7041902412772462047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026374 ((2 * n : ℤ) - A196199 n).toNat

end

end A272866.P7041902412772462047

/-! ## A272866.P11357145778305342248

`A026374(n-A196199(n)+n)`
-/

namespace A272866.P11357145778305342248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026374 ((n : ℤ) - A196199 n + (n : ℤ)).toNat

end

end A272866.P11357145778305342248

/-! ## A272866.P16763457264131679823

`A026374(n-(A196199(n)-n))`
-/

namespace A272866.P16763457264131679823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026374 ((n : ℤ) - (A196199 n - (n : ℤ))).toNat

end

end A272866.P16763457264131679823

/-! ## A272866.P12355251682116434467

`A026374(A174803(n)+A037213(n))`
-/

namespace A272866.P12355251682116434467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026374 (A174803 n + A037213 n).toNat

end

end A272866.P12355251682116434467

/-! ## A272866.P16480906386978088407

`A026374(A316670(n+1))`
-/

namespace A272866.P16480906386978088407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026374 (A316670 (n + 1)).toNat

end

end A272866.P16480906386978088407

/-! ## A272866.P17370633120438286178

`A026374(A316965(n)+1)`
-/

namespace A272866.P17370633120438286178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026374 (A316965 n + 1).toNat

end

end A272866.P17370633120438286178

/-!
# A272867: Triangle read by rows, T(n,k) = GegenbauerC(m,-n,-2) where m = k if k=0 and 0<=k<=2n.

The programs for A272867, there is no canonical definition to state claims against.
-/

/-! ## A272867.P17291931526845002055

`A171142(gcd(A007606(n+1), A037213(n)))`
-/

namespace A272867.P17291931526845002055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171142 (Int.gcd (A007606 (n + 1)) (A037213 n))

end

end A272867.P17291931526845002055

/-! ## A272867.P2460378640675285310

`A171142(A007606(n+1)-2*A037213(n))`
-/

namespace A272867.P2460378640675285310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171142 (A007606 (n + 1) - 2 * A037213 n).toNat

end

end A272867.P2460378640675285310

/-! ## A272867.P3264556401168961565

`A171142(A007606(n+1)-A037213(n)-A037213(n))`
-/

namespace A272867.P3264556401168961565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171142 (A007606 (n + 1) - A037213 n - A037213 n).toNat

end

end A272867.P3264556401168961565

/-! ## A272867.P4066267328134129787

`A171142(comp[round(sqrt(n+1))²+n]+1)`
-/

namespace A272867.P4066267328134129787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171142 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A272867.P4066267328134129787

/-! ## A272867.P4250770433815071072

`A343152(A297193(n))`
-/

namespace A272867.P4250770433815071072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343152 (A297193 n).toNat

end

end A272867.P4250770433815071072

/-!
# A272868: Triangle read by rows, T(n,k) = 2^k*GegenbauerC(k,-n,-1/4), for n>=0 and 0<=k<=n.

The programs for A272868, there is no canonical definition to state claims against.
-/

/-! ## A272868.P4631941970362357865

`A293171(∑[2*n]%comp[∑[n]])`
-/

namespace A272868.P4631941970362357865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293171 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A272868.P4631941970362357865

/-! ## A272868.P1314887915806468084

`A084604(eq[0, floor(2*sqrt(n))%2])`
-/

namespace A272868.P1314887915806468084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084604 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272868.P1314887915806468084

/-! ## A272868.P15963034774747338184

`A293171(∑[char[∑[n]]]²-n-1)`
-/

namespace A272868.P15963034774747338184
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293171 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A272868.P15963034774747338184

/-! ## A272868.P622104201077261781

`A084604(A063656(n))`
-/

namespace A272868.P622104201077261781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084604 (A063656 n).toNat

end

end A272868.P622104201077261781

/-! ## A272868.P13608062887196533062

`A084604(eq[0, A023969(n)])`
-/

namespace A272868.P13608062887196533062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084604 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272868.P13608062887196533062

/-! ## A272868.P8630003513629710157

`A084604(2*n-A051162(n))`
-/

namespace A272868.P8630003513629710157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084604 ((2 * n : ℤ) - A051162 n).toNat

end

end A272868.P8630003513629710157

/-! ## A272868.P10723453106112186092

`A084604(n-A051162(n)+n)`
-/

namespace A272868.P10723453106112186092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084604 ((n : ℤ) - A051162 n + (n : ℤ)).toNat

end

end A272868.P10723453106112186092

/-! ## A272868.P8546836185814339392

`A084604(n-(A051162(n)-n))`
-/

namespace A272868.P8546836185814339392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084604 ((n : ℤ) - (A051162 n - (n : ℤ))).toNat

end

end A272868.P8546836185814339392

/-! ## A272868.P18050931987505779581

`A084604(∑[A123108(A198954(n))])`
-/

namespace A272868.P18050931987505779581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A198954 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084604 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A272868.P18050931987505779581

/-!
# A272870: Real part of (n + i)^4.

The programs for A272870, the canonical program `A272870.P17182819688272473876` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272870 has offset 0).

The definition of A272870 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272870.P17182819688272473876

`n^4-6*n²+1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A272870

/-- `n^4-6*n²+1` -/
def P17182819688272473876.Spec : Prop :=
  ∀ n, P17182819688272473876.a n = A272870 n

theorem P17182819688272473876.correct : P17182819688272473876.Spec := by
  intro n
  simp only [A272870]

end A272870

/-! ## A272870.P16147044841929726861

`(n*(n-2)-1)*record[n*(n-2)-1]`
-/

namespace A272870.P16147044841929726861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 2) - 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272870.P16147044841929726861

namespace A272870

/-- `(n*(n-2)-1)*record[n*(n-2)-1]` -/
def P16147044841929726861.Spec : Prop :=
  ∀ n, P16147044841929726861.a n = A272870 n

end A272870

/-! ## A272870.P3041583091784278904

`(A067998(n)-1)*A008865(n+1)`
-/

namespace A272870.P3041583091784278904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A067998 n - 1) * A008865 (n + 1)

end

end A272870.P3041583091784278904

namespace A272870

/-- `(A067998(n)-1)*A008865(n+1)` -/
def P3041583091784278904.Spec : Prop :=
  ∀ n, P3041583091784278904.a n = A272870 n

theorem P3041583091784278904.correct : P3041583091784278904.Spec := by
  intro n
  simp only [A272870, Nat.add_sub_cancel, A272870.P3041583091784278904.a, A272870.P17182819688272473876.a, A008865, A008865.P16699731729816255732.a, A067998, A067998.P12062298001294777272.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272870

/-! ## A272870.P3434257788492110619

`(A002061(n)-(n+2))*A008865(n+1)`
-/

namespace A272870.P3434257788492110619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002061 n - (n + 2 : ℤ)) * A008865 (n + 1)

end

end A272870.P3434257788492110619

namespace A272870

/-- `(A002061(n)-(n+2))*A008865(n+1)` -/
def P3434257788492110619.Spec : Prop :=
  ∀ n, P3434257788492110619.a n = A272870 n

theorem P3434257788492110619.correct : P3434257788492110619.Spec := by
  intro n
  simp only [A272870, Nat.add_sub_cancel, A272870.P3434257788492110619.a, A272870.P17182819688272473876.a, A002061, A002061.P13016590216674735232.a, A008865, A008865.P16699731729816255732.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272870

/-! ## A272870.P7722488238298228632

`(A145067(n+2)-A145068(n+1))*A008865(n+1)`
-/

namespace A272870.P7722488238298228632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A145067 (n + 2) - A145068 (n + 1)) * A008865 (n + 1)

end

end A272870.P7722488238298228632

namespace A272870

/-- `(A145067(n+2)-A145068(n+1))*A008865(n+1)` -/
def P7722488238298228632.Spec : Prop :=
  ∀ n, P7722488238298228632.a n = A272870 n

end A272870

/-! ## A272870.P1576445777362489389

`A008865(n+1)*A179272(A004273(n))`
-/

namespace A272870.P1576445777362489389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008865 (n + 1) * A179272 (A004273 n).toNat

end

end A272870.P1576445777362489389

namespace A272870

/-- `A008865(n+1)*A179272(A004273(n))` -/
def P1576445777362489389.Spec : Prop :=
  ∀ n, P1576445777362489389.a n = A272870 n

end A272870

/-!
# A272871: Imaginary part of (n + i)^4.

The programs for A272871, the canonical program `A272871.P8216137526329413230` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272871 has offset 0).

The definition of A272871 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272871.P8216137526329413230

`24*C(n+1, 3)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A272871

/-- `24*C(n+1, 3)` -/
def P8216137526329413230.Spec : Prop :=
  ∀ n, (P8216137526329413230.a n : ℤ) = A272871 n

theorem P8216137526329413230.correct : P8216137526329413230.Spec := by
  intro n
  simp only [A272871]

end A272871

/-! ## A272871.P16083695112563202643

`4*(n-1)*n*(n+1)`
-/

namespace A272871.P16083695112563202643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℤ) - 1) * (n : ℤ) * (n + 1 : ℤ)

end

end A272871.P16083695112563202643

namespace A272871

/-- `4*(n-1)*n*(n+1)` -/
def P16083695112563202643.Spec : Prop :=
  ∀ n, P16083695112563202643.a n = A272871 n

theorem P16083695112563202643.correct : P16083695112563202643.Spec := by
  intro n
  simp only [A272871, Nat.add_sub_cancel, A272871.P16083695112563202643.a, A272871.P8216137526329413230.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A272871

/-! ## A272871.P9835189365172739751

`∑[24*C(n, 2)]`
-/

namespace A272871.P9835189365172739751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272871.P9835189365172739751

namespace A272871

/-- `∑[24*C(n, 2)]` -/
def P9835189365172739751.Spec : Prop :=
  ∀ n, (P9835189365172739751.a n : ℤ) = A272871 n

end A272871

/-! ## A272871.P18184821722366949783

`Δ[or(1, n-n²)²]`
-/

namespace A272871.P18184821722366949783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) - (n ^ 2 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272871.P18184821722366949783

namespace A272871

/-- `Δ[or(1, n-n²)²]` -/
def P18184821722366949783.Spec : Prop :=
  ∀ n, P18184821722366949783.a n = A272871 n

end A272871

/-! ## A272871.P1143584362541721725

`Δ[xor(1, n-n²)²]`
-/

namespace A272871.P1143584362541721725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) - (n ^ 2 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272871.P1143584362541721725

namespace A272871

/-- `Δ[xor(1, n-n²)²]` -/
def P1143584362541721725.Spec : Prop :=
  ∀ n, P1143584362541721725.a n = A272871 n

end A272871

/-! ## A272871.P4728619735403497596

`Δ[(1-2*C(n, 2))²]`
-/

namespace A272871.P4728619735403497596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 * Nat.choose n 2 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272871.P4728619735403497596

namespace A272871

/-- `Δ[(1-2*C(n, 2))²]` -/
def P4728619735403497596.Spec : Prop :=
  ∀ n, P4728619735403497596.a n = A272871 n

theorem P4728619735403497596.correct : P4728619735403497596.Spec := by
  intro n
  simp only [A272871, Nat.add_sub_cancel, A272871.P4728619735403497596.f1, A272871.P4728619735403497596.a, A272871.P8216137526329413230.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A272871

/-! ## A272871.P12970730932776239389

`Δ[(1-lcm(n, 1-n))²]`
-/

namespace A272871.P12970730932776239389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Int.lcm (n : ℤ) (1 - (n : ℤ)) : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272871.P12970730932776239389

namespace A272871

/-- `Δ[(1-lcm(n, 1-n))²]` -/
def P12970730932776239389.Spec : Prop :=
  ∀ n, P12970730932776239389.a n = A272871 n

end A272871

/-! ## A272871.P16838718624441660315

`lcm(2, n*4*(n²-1))`
-/

namespace A272871.P16838718624441660315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((n : ℤ) * (4 * ((n ^ 2 : ℤ) - 1)))

end

end A272871.P16838718624441660315

namespace A272871

/-- `lcm(2, n*4*(n²-1))` -/
def P16838718624441660315.Spec : Prop :=
  ∀ n, (P16838718624441660315.a n : ℤ) = A272871 n

end A272871

/-! ## A272871.P7286156110745206653

`Δ[(C(n+1, n)-n²)²]`
-/

namespace A272871.P7286156110745206653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 1) n : ℤ) - (n ^ 2 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272871.P7286156110745206653

namespace A272871

/-- `Δ[(C(n+1, n)-n²)²]` -/
def P7286156110745206653.Spec : Prop :=
  ∀ n, P7286156110745206653.a n = A272871 n

end A272871

/-! ## A272871.P13253818920088774232

`-(2*n*∑[a(n-1)-4])` with `a(0)=2`
-/

namespace A272871.P13253818920088774232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((2 * n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A272871.P13253818920088774232

namespace A272871

/-- `-(2*n*∑[a(n-1)-4])` -/
def P13253818920088774232.Spec : Prop :=
  ∀ n, P13253818920088774232.a n = A272871 n

end A272871

/-! ## A272871.P13793322643041082791

`(n-1)*or(1, 2*n)²-(n-1)`
-/

namespace A272871.P13793322643041082791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.lor 1 (2 * n) ^ 2 : ℤ) - ((n : ℤ) - 1)

end

end A272871.P13793322643041082791

namespace A272871

/-- `(n-1)*or(1, 2*n)²-(n-1)` -/
def P13793322643041082791.Spec : Prop :=
  ∀ n, P13793322643041082791.a n = A272871 n

end A272871

/-! ## A272871.P15396812447717116469

`(n-1)*xor(1, 2*n)²-(n-1)`
-/

namespace A272871.P15396812447717116469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.xor 1 (2 * n) ^ 2 : ℤ) - ((n : ℤ) - 1)

end

end A272871.P15396812447717116469

namespace A272871

/-- `(n-1)*xor(1, 2*n)²-(n-1)` -/
def P15396812447717116469.Spec : Prop :=
  ∀ n, P15396812447717116469.a n = A272871 n

end A272871

/-! ## A272871.P1249149971382214156

`lcm(1-n*2*n, 2*n)-2*n`
-/

namespace A272871.P1249149971382214156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (1 - (n * (2 * n) : ℤ)) (2 * n : ℤ) : ℤ) - (2 * n : ℤ)

end

end A272871.P1249149971382214156

namespace A272871

/-- `lcm(1-n*2*n, 2*n)-2*n` -/
def P1249149971382214156.Spec : Prop :=
  ∀ n, P1249149971382214156.a n = A272871 n

end A272871

/-! ## A272871.P9777761777511765064

`∑[a(n-1)-4]²/(n+1)-(n+1)` with `a(0)=1`
-/

namespace A272871.P9777761777511765064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / (n + 1 : ℚ) - (n + 1 : ℚ)

end

end A272871.P9777761777511765064

namespace A272871

/-- `∑[a(n-1)-4]²/(n+1)-(n+1)` -/
def P9777761777511765064.Spec : Prop :=
  ∀ n, P9777761777511765064.a n = (A272871 n : ℚ)

end A272871

/-! ## A272871.P11121985166998861873

`∑[A064200(n)]`
-/

namespace A272871.P11121985166998861873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272871.P11121985166998861873

namespace A272871

/-- `∑[A064200(n)]` -/
def P11121985166998861873.Spec : Prop :=
  ∀ n, P11121985166998861873.a n = A272871 n

end A272871

/-! ## A272871.P1189151744893235673

`A144129(n)-n`
-/

namespace A272871.P1189151744893235673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144129 n - (n : ℤ)

end

end A272871.P1189151744893235673

namespace A272871

/-- `A144129(n)-n` -/
def P1189151744893235673.Spec : Prop :=
  ∀ n, P1189151744893235673.a n = A272871 n

theorem P1189151744893235673.correct : P1189151744893235673.Spec := by
  intro n
  simp only [A272871, Nat.add_sub_cancel, A272871.P1189151744893235673.a, A272871.P8216137526329413230.a, A144129, A144129.P2880121179738500010.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A272871

/-! ## A272871.P10915582317720825603

`Δ[A165900(n)²]`
-/

namespace A272871.P10915582317720825603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272871.P10915582317720825603

namespace A272871

/-- `Δ[A165900(n)²]` -/
def P10915582317720825603.Spec : Prop :=
  ∀ n, P10915582317720825603.a n = A272871 n

theorem P10915582317720825603.correct : P10915582317720825603.Spec := by
  intro n
  simp only [A272871, Nat.add_sub_cancel, A272871.P10915582317720825603.f1, A272871.P10915582317720825603.a, A272871.P8216137526329413230.a, A165900, A165900.P16246243669433487557.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A272871

/-! ## A272871.P14342485413599301124

`sqrt(A239608(n))-n`
-/

namespace A272871.P14342485413599301124
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A239608 n : ℝ) - (n : ℝ)

end

end A272871.P14342485413599301124

namespace A272871

/-- `sqrt(A239608(n))-n` -/
def P14342485413599301124.Spec : Prop :=
  ∀ n, P14342485413599301124.a n = (A272871 n : ℝ)

end A272871

/-! ## A272871.P3728476859589692665

`∑[A255185(n)-n]`
-/

namespace A272871.P3728476859589692665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255185 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272871.P3728476859589692665

namespace A272871

/-- `∑[A255185(n)-n]` -/
def P3728476859589692665.Spec : Prop :=
  ∀ n, P3728476859589692665.a n = A272871 n

end A272871

/-! ## A272871.P5767645961601119911

`A256646(n)-∑[n]`
-/

namespace A272871.P5767645961601119911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256646 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A272871.P5767645961601119911

namespace A272871

/-- `A256646(n)-∑[n]` -/
def P5767645961601119911.Spec : Prop :=
  ∀ n, P5767645961601119911.a n = A272871 n

end A272871

/-!
# A272872: Numbers k such that k+1 is divisible by number of divisors of k.

The programs for A272872, the canonical program `A272872.P7782579486698380684` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272872 has offset 1).

The definition of A272872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272872.P7782579486698380684

`lt[(n+2)%A000005(n+1), 1]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A272872

/-- `lt[(n+2)%A000005(n+1), 1]+1` -/
def P7782579486698380684.Spec : Prop :=
  ∀ n, (P7782579486698380684.a n : ℤ) = A272872 (n + 1)

theorem P7782579486698380684.correct : P7782579486698380684.Spec := by
  intro n
  simp only [A272872, Nat.add_sub_cancel]

end A272872

/-! ## A272872.P2377193350909079988

`eq[2, A007318(a((n+1)%A000005(n)))]` with `a(0)=4`
-/

namespace A272872.P2377193350909079988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A007318 (f2 (Int.tmod (n + 1 : ℤ) (A000005 n)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272872.P2377193350909079988

namespace A272872

/-- `eq[2, A007318(a((n+1)%A000005(n)))]` -/
def P2377193350909079988.Spec : Prop :=
  ∀ n, (P2377193350909079988.a n : ℤ) = A272872 (n + 1)

end A272872

/-! ## A272872.P16379317603457741303

`record[A124332(n+1)]`
-/

namespace A272872.P16379317603457741303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272872.P16379317603457741303

namespace A272872

/-- `record[A124332(n+1)]` -/
def P16379317603457741303.Spec : Prop :=
  ∀ n, P16379317603457741303.a n = A272872 (n + 1)

end A272872

/-! ## A272872.P17130878021305129575

`eq[n, A124332(A028310(n))]`
-/

namespace A272872.P17130878021305129575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124332 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272872.P17130878021305129575

namespace A272872

/-- `eq[n, A124332(A028310(n))]` -/
def P17130878021305129575.Spec : Prop :=
  ∀ n, (P17130878021305129575.a n : ℤ) = A272872 (n + 1)

end A272872

/-! ## A272872.P6087925937018925414

`eq[n, A124332(A029579(n))]`
-/

namespace A272872.P6087925937018925414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124332 (A029579 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272872.P6087925937018925414

namespace A272872

/-- `eq[n, A124332(A029579(n))]` -/
def P6087925937018925414.Spec : Prop :=
  ∀ n, (P6087925937018925414.a n : ℤ) = A272872 (n + 1)

end A272872

/-! ## A272872.P13702402413810622392

`A124332(eq[n+1, A124332(n+1)]+1)`
-/

namespace A272872.P13702402413810622392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124332 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A272872.P13702402413810622392

namespace A272872

/-- `A124332(eq[n+1, A124332(n+1)]+1)` -/
def P13702402413810622392.Spec : Prop :=
  ∀ n, P13702402413810622392.a n = A272872 (n + 1)

end A272872

/-! ## A272872.P17892899579862312007

`record[A124332(A005408(n))²/A005408(n)]`
-/

namespace A272872.P17892899579862312007
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124332 (A005408 n).toNat ^ 2 : ℚ) / (A005408 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272872.P17892899579862312007

namespace A272872

/-- `record[A124332(A005408(n))²/A005408(n)]` -/
def P17892899579862312007.Spec : Prop :=
  ∀ n, P17892899579862312007.a n = (A272872 (n + 1) : ℚ)

end A272872

/-! ## A272872.P5935610804211289

`record[A124332(A006949(n))²/A006949(n)]`
-/

namespace A272872.P5935610804211289
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124332 (A006949 n).toNat ^ 2 : ℚ) / (A006949 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272872.P5935610804211289

namespace A272872

/-- `record[A124332(A006949(n))²/A006949(n)]` -/
def P5935610804211289.Spec : Prop :=
  ∀ n, P5935610804211289.a n = (A272872 (n + 1) : ℚ)

end A272872

/-! ## A272872.P10989727887776621079

`eq[n, A124332(A004525(2*n+1))]`
-/

namespace A272872.P10989727887776621079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124332 (A004525 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272872.P10989727887776621079

namespace A272872

/-- `eq[n, A124332(A004525(2*n+1))]` -/
def P10989727887776621079.Spec : Prop :=
  ∀ n, (P10989727887776621079.a n : ℤ) = A272872 (n + 1)

end A272872

/-! ## A272872.P12218950873327071711

`A001057(eq[A004525(n), A124332(n+1)])`
-/

namespace A272872.P12218950873327071711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A272872.P12218950873327071711

namespace A272872

/-- `A001057(eq[A004525(n), A124332(n+1)])` -/
def P12218950873327071711.Spec : Prop :=
  ∀ n, P12218950873327071711.a n = A272872 (n + 1)

end A272872

/-! ## A272872.P4719430715339569337

`A004525(eq[A004525(n), A124332(n+1)])`
-/

namespace A272872.P4719430715339569337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A272872.P4719430715339569337

namespace A272872

/-- `A004525(eq[A004525(n), A124332(n+1)])` -/
def P4719430715339569337.Spec : Prop :=
  ∀ n, P4719430715339569337.a n = A272872 (n + 1)

end A272872

/-! ## A272872.P14118411709499295324

`record[A124332(A008620(n))²/A008620(n)]`
-/

namespace A272872.P14118411709499295324
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124332 (A008620 n).toNat ^ 2 : ℚ) / (A008620 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272872.P14118411709499295324

namespace A272872

/-- `record[A124332(A008620(n))²/A008620(n)]` -/
def P14118411709499295324.Spec : Prop :=
  ∀ n, P14118411709499295324.a n = (A272872 (n + 1) : ℚ)

end A272872

/-! ## A272872.P7783002659956934722

`eq[n, A124332(A233583(n+1))]`
-/

namespace A272872.P7783002659956934722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124332 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272872.P7783002659956934722

namespace A272872

/-- `eq[n, A124332(A233583(n+1))]` -/
def P7783002659956934722.Spec : Prop :=
  ∀ n, (P7783002659956934722.a n : ℤ) = A272872 (n + 1)

end A272872

/-! ## A272872.P5300578847332852923

`∪[A006005(n+1), A354714(n+1)]`
-/

namespace A272872.P5300578847332852923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272872.P5300578847332852923

namespace A272872

/-- `∪[A006005(n+1), A354714(n+1)]` -/
def P5300578847332852923.Spec : Prop :=
  ∀ n, (P5300578847332852923.a n : ℤ) = A272872 (n + 1)

end A272872

/-! ## A272872.P9792503361613741521

`∪[A065091(n+1), A354714(n+1)]`
-/

namespace A272872.P9792503361613741521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272872.P9792503361613741521

namespace A272872

/-- `∪[A065091(n+1), A354714(n+1)]` -/
def P9792503361613741521.Spec : Prop :=
  ∀ n, (P9792503361613741521.a n : ℤ) = A272872 (n + 1)

end A272872

/-! ## A272872.P10324897868208856219

`∪[A210494(n+1), A354714(n+1)]`
-/

namespace A272872.P10324897868208856219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272872.P10324897868208856219

namespace A272872

/-- `∪[A210494(n+1), A354714(n+1)]` -/
def P10324897868208856219.Spec : Prop :=
  ∀ n, (P10324897868208856219.a n : ℤ) = A272872 (n + 1)

end A272872

/-!
# A272879: Numbers n such that A067128(n+1) - A067128(n) is not in A067128.

The programs for A272879, there is no canonical definition to state claims against.
-/

/-! ## A272879.P8910989775717494833

`lt[1, A272901(n+1)]+1`
-/

namespace A272879.P8910989775717494833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272901 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A272879.P8910989775717494833

/-! ## A272879.P4020673506960629107

`eq[2, A272901(round(acot(n)+n))]`
-/

namespace A272879.P4020673506960629107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272901 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272879.P4020673506960629107

/-! ## A272879.P12275248663755156673

`eq[2, A272901(round(sqrt(n²+1)))]`
-/

namespace A272879.P12275248663755156673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272901 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272879.P12275248663755156673

/-! ## A272879.P13880718367486369611

`lt[1, A272901(A028310(n))]`
-/

namespace A272879.P13880718367486369611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272901 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A272879.P13880718367486369611

/-! ## A272879.P4974258855384145902

`A020725(lt[1, A272901(n+1)])`
-/

namespace A272879.P4974258855384145902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A272879.P4974258855384145902

/-!
# A272880: Number of integers in [prime(n), 2*prime(n)] with maximal number of divisors.

The programs for A272880, there is no canonical definition to state claims against.
-/

/-! ## A272880.P1697912949983697514

`A140225(A072055(n+1))`
-/

namespace A272880.P1697912949983697514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140225 (A072055 (n + 1)).toNat

end

end A272880.P1697912949983697514

/-! ## A272880.P1856786522423899955

`A140225(A100484(n+1))`
-/

namespace A272880.P1856786522423899955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140225 (A100484 (n + 1)).toNat

end

end A272880.P1856786522423899955

/-! ## A272880.P10893920380675425132

`A140225(A166496(n+1))`
-/

namespace A272880.P10893920380675425132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140225 (A166496 (n + 1)).toNat

end

end A272880.P10893920380675425132

/-! ## A272880.P1730309089904721878

`A140225(A001747(n+2))`
-/

namespace A272880.P1730309089904721878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140225 (A001747 (n + 2)).toNat

end

end A272880.P1730309089904721878

/-! ## A272880.P16962979476983922742

`A140225(A077017(n+2))`
-/

namespace A272880.P16962979476983922742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140225 (A077017 (n + 2)).toNat

end

end A272880.P16962979476983922742

/-! ## A272880.P8231280008697318126

`A067004(A272777(n+1))`
-/

namespace A272880.P8231280008697318126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067004 (A272777 (n + 1)).toNat

end

end A272880.P8231280008697318126

/-! ## A272880.P6609560646614220910

`A138009(A272777(gcd(n, 3*n-n)+1))`
-/

namespace A272880.P6609560646614220910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138009 (A272777 (Int.gcd (n : ℤ) ((3 * n : ℤ) - (n : ℤ)) + 1)).toNat

end

end A272880.P6609560646614220910

/-! ## A272880.P12105255436077589383

`A138009(A272777(n+1)%A002148(n))`
-/

namespace A272880.P12105255436077589383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138009 (Int.tmod (A272777 (n + 1)) (A002148 n)).toNat

end

end A272880.P12105255436077589383

/-! ## A272880.P4628087127992648205

`A138009(A272777(n+1))%A059154(n)`
-/

namespace A272880.P4628087127992648205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138009 (A272777 (n + 1)).toNat) (A059154 n)

end

end A272880.P4628087127992648205

/-!
# A272882: Discriminator of the Cantor numbers (A005823).

The programs for A272882, there is no canonical definition to state claims against.
-/

/-! ## A272882.P12263881349932342313

`or(A199119(3*(n+1)), A326976(A127404(n+1)))`
-/

namespace A272882.P12263881349932342313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A199119 (3 * (n + 1))) (A326976 (A127404 (n + 1)).toNat)

end

end A272882.P12263881349932342313

/-! ## A272882.P11083825970048786397

`A178832(xor(A141214(n), A228087(n)))`
-/

namespace A272882.P11083825970048786397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178832 (Int.xor (A141214 n) (A228087 n)).toNat

end

end A272882.P11083825970048786397

/-!
# A272883: Numbers m such that sigma_k(x) = m has no solution for any k > 0.

The programs for A272883, there is no canonical definition to state claims against.
-/

/-! ## A272883.P16973974845178336375

`eq[0, A271606(n+1)]+1`
-/

namespace A272883.P16973974845178336375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271606 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A272883.P16973974845178336375

/-! ## A272883.P7217882537623020620

`eq[0, A271606(n^floor(atan(n)))]`
-/

namespace A272883.P7217882537623020620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271606 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272883.P7217882537623020620

/-! ## A272883.P2308074504800057048

`A020725(eq[0, A271606(n+1)])`
-/

namespace A272883.P2308074504800057048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272883.P2308074504800057048

/-! ## A272883.P17423161579308290041

`eq[0, A271606(A000007(n)+n)]`
-/

namespace A272883.P17423161579308290041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271606 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272883.P17423161579308290041

/-! ## A272883.P8422092991211141227

`eq[char[A211347(n+1)], A000038(n)]`
-/

namespace A272883.P8422092991211141227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211347 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A272883.P8422092991211141227

/-! ## A272883.P620364579028003706

`eq[0, A271606(A065033(2*n))]`
-/

namespace A272883.P620364579028003706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271606 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272883.P620364579028003706

/-!
# A272884: Squares whose digits are powers of 2.

The programs for A272884, there is no canonical definition to state claims against.
-/

/-! ## A272884.P17189538048882394467

`∩[A028846(n+1), n²]`
-/

namespace A272884.P17189538048882394467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A272884.P17189538048882394467

/-! ## A272884.P8179505287963307805

`∩[n², A028846(A005408(n))]`
-/

namespace A272884.P8179505287963307805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (A005408 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272884.P8179505287963307805

/-! ## A272884.P5155329515085880595

`∩[A000290(n), A028846(n+1)]`
-/

namespace A272884.P5155329515085880595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272884.P5155329515085880595

/-! ## A272884.P14522608032887095560

`∩[∑[A005408(n)], A028846(2*n+1)]`
-/

namespace A272884.P14522608032887095560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A272884.P14522608032887095560

/-! ## A272884.P8243033526546049703

`filter[A028846(2*n+1), A053866(#)]`
-/

namespace A272884.P8243033526546049703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053866 (f1 j).toNat = 1) n)

end

end A272884.P8243033526546049703

/-!
# A272885: Cubefree taxi-cab numbers.

The programs for A272885, there is no canonical definition to state claims against.
-/

/-! ## A272885.P7478563568215801439

`A293649(A090106(n+1))`
-/

namespace A272885.P7478563568215801439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293649 (A090106 (n + 1)).toNat

end

end A272885.P7478563568215801439

/-! ## A272885.P2236731908878501761

`A293649(n+1)%A209431(n+4)`
-/

namespace A272885.P2236731908878501761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293649 (n + 1)) (A209431 (n + 4))

end

end A272885.P2236731908878501761

/-! ## A272885.P4590143331279072740

`A293649(n+1)+A046145(A195026(n))`
-/

namespace A272885.P4590143331279072740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293649 (n + 1) + A046145 (A195026 n).toNat

end

end A272885.P4590143331279072740

/-! ## A272885.P5388448687937632960

`A293649(n+1)+A046145(A195027(n))`
-/

namespace A272885.P5388448687937632960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293649 (n + 1) + A046145 (A195027 n).toNat

end

end A272885.P5388448687937632960

/-! ## A272885.P5433342901759678348

`A293649(n+1)+A000038(A321360(n))`
-/

namespace A272885.P5433342901759678348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293649 (n + 1) + A000038 (A321360 n).toNat

end

end A272885.P5433342901759678348

/-!
# A272886: Number of distinct Fibonacci numbers among the contiguous substrings of the binary digits of n.

The programs for A272886, there is no canonical definition to state claims against.
-/

/-! ## A272886.P8488844464687272781

`A292242(A169699(n+1))+A272851(n+1)`
-/

namespace A272886.P8488844464687272781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292242 (A169699 (n + 1)).toNat + A272851 (n + 1)

end

end A272886.P8488844464687272781

/-! ## A272886.P16784575821964741250

`A272851(n+1)+A196563(A007875(2*(n+2)))`
-/

namespace A272886.P16784575821964741250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272851 (n + 1) + A196563 (A007875 (2 * (n + 2))).toNat

end

end A272886.P16784575821964741250

/-! ## A272886.P4034798188032755356

`A292242(A007875(2*n+4))+A272851(n+1)`
-/

namespace A272886.P4034798188032755356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292242 (A007875 (2 * n + 4)).toNat + A272851 (n + 1)

end

end A272886.P4034798188032755356

/-! ## A272886.P15981675353167218506

`A272851(n+1)+A219463(A001844(n+1))`
-/

namespace A272886.P15981675353167218506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272851 (n + 1) + A219463 (A001844 (n + 1)).toNat

end

end A272886.P15981675353167218506

/-! ## A272886.P4660742871366603214

`A196563(A007875(2*(n+2)))+A071215(A176776(n))`
-/

namespace A272886.P4660742871366603214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A007875 (2 * (n + 2))).toNat + A071215 (A176776 n).toNat

end

end A272886.P4660742871366603214

/-!
# A272887: Number of ways to write prime(n) as (4*x + 2)*y + 4*x + 1 where x and y are nonnegative integers.

The programs for A272887, the canonical program `A272887.P6057499258403771745` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272887 has offset 1).

The definition of A272887 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272887.P6970904076647429612

`∏{p}[3*p?[round(8*n/7)], A299480(#)]`
-/

namespace A272887.P6970904076647429612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A299480 p

end

end A272887.P6970904076647429612

namespace A272887

/-- `∏{p}[3*p?[round(8*n/7)], A299480(#)]` -/
def P6970904076647429612.Spec : Prop :=
  ∀ n, P6970904076647429612.a n = A272887 (n + 1)

end A272887

/-! ## A272887.P11178412682740933635

`A001227(p?[abs(xor(n, -2))]+1)%(n+1)`
-/

namespace A272887.P11178412682740933635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001227 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat) (n + 1 : ℤ)

end

end A272887.P11178412682740933635

namespace A272887

/-- `A001227(p?[abs(xor(n, -2))]+1)%(n+1)` -/
def P11178412682740933635.Spec : Prop :=
  ∀ n, P11178412682740933635.a n = A272887 (n + 1)

end A272887

/-! ## A272887.P6057499258403771745

`A091954(p?[xor(1, n)+1]+1)%(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A272887

/-- `A091954(p?[xor(1, n)+1]+1)%(n+1)` -/
def P6057499258403771745.Spec : Prop :=
  ∀ n, P6057499258403771745.a n = A272887 (n + 1)

theorem P6057499258403771745.correct : P6057499258403771745.Spec := by
  intro n
  simp only [A272887, Nat.add_sub_cancel]

end A272887

/-! ## A272887.P15196754631331494382

`∑{d}[Δ[A007504(n)]+1, #%2]%(n+1)`
-/

namespace A272887.P15196754631331494382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n).natAbs, d % 2) % (n + 1)

end

end A272887.P15196754631331494382

namespace A272887

/-- `∑{d}[Δ[A007504(n)]+1, #%2]%(n+1)` -/
def P15196754631331494382.Spec : Prop :=
  ∀ n, (P15196754631331494382.a n : ℤ) = A272887 (n + 1)

end A272887

/-! ## A272887.P10483806799154632216

`A001227(p?[abs(2*n-3)]+1)%Δ[n²]`
-/

namespace A272887.P10483806799154632216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - 3|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001227 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A272887.P10483806799154632216

namespace A272887

/-- `A001227(p?[abs(2*n-3)]+1)%Δ[n²]` -/
def P10483806799154632216.Spec : Prop :=
  ∀ n, P10483806799154632216.a n = A272887 (n + 1)

end A272887

/-! ## A272887.P17979167959741338434

`∑{d}[record[A000010(n+1)+2], and(1, #)]%(n+1)`
-/

namespace A272887.P17979167959741338434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.land 1 d) % (n + 1)

end

end A272887.P17979167959741338434

namespace A272887

/-- `∑{d}[record[A000010(n+1)+2], and(1, #)]%(n+1)` -/
def P17979167959741338434.Spec : Prop :=
  ∀ n, (P17979167959741338434.a n : ℤ) = A272887 (n + 1)

end A272887

/-! ## A272887.P11948857242622536241

`∑{d}[record[A006530(n+2)]+1, and(1, #)]%(n+1)`
-/

namespace A272887.P11948857242622536241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.land 1 d) % (n + 1)

end

end A272887.P11948857242622536241

namespace A272887

/-- `∑{d}[record[A006530(n+2)]+1, and(1, #)]%(n+1)` -/
def P11948857242622536241.Spec : Prop :=
  ∀ n, (P11948857242622536241.a n : ℤ) = A272887 (n + 1)

end A272887

/-! ## A272887.P4784491540611872503

`∑{d}[record[A014963(n+2)]+1, and(1, #)]%(n+1)`
-/

namespace A272887.P4784491540611872503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.land 1 d) % (n + 1)

end

end A272887.P4784491540611872503

namespace A272887

/-- `∑{d}[record[A014963(n+2)]+1, and(1, #)]%(n+1)` -/
def P4784491540611872503.Spec : Prop :=
  ∀ n, (P4784491540611872503.a n : ℤ) = A272887 (n + 1)

end A272887

/-! ## A272887.P15307860852507070454

`A299480(Δ[A007504(n)])`
-/

namespace A272887.P15307860852507070454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299480 (f1 (n + 1) - f1 n).toNat

end

end A272887.P15307860852507070454

namespace A272887

/-- `A299480(Δ[A007504(n)])` -/
def P15307860852507070454.Spec : Prop :=
  ∀ n, P15307860852507070454.a n = A272887 (n + 1)

end A272887

/-! ## A272887.P829041543903038377

`A299480(record[A051698(n)])`
-/

namespace A272887.P829041543903038377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299480 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A272887.P829041543903038377

namespace A272887

/-- `A299480(record[A051698(n)])` -/
def P829041543903038377.Spec : Prop :=
  ∀ n, P829041543903038377.a n = A272887 (n + 1)

end A272887

/-! ## A272887.P3983045233948314063

`A113414(A008864(n+1))`
-/

namespace A272887.P3983045233948314063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113414 (A008864 (n + 1)).toNat

end

end A272887.P3983045233948314063

namespace A272887

/-- `A113414(A008864(n+1))` -/
def P3983045233948314063.Spec : Prop :=
  ∀ n, P3983045233948314063.a n = A272887 (n + 1)

end A272887

/-! ## A272887.P17532316554752309833

`A113414(A028815(n+1))`
-/

namespace A272887.P17532316554752309833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113414 (A028815 (n + 1)).toNat

end

end A272887.P17532316554752309833

namespace A272887

/-- `A113414(A028815(n+1))` -/
def P17532316554752309833.Spec : Prop :=
  ∀ n, P17532316554752309833.a n = A272887 (n + 1)

end A272887

/-! ## A272887.P11812502426596121146

`A091954(A055670(n+1))`
-/

namespace A272887.P11812502426596121146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (A055670 (n + 1)).toNat

end

end A272887.P11812502426596121146

namespace A272887

/-- `A091954(A055670(n+1))` -/
def P11812502426596121146.Spec : Prop :=
  ∀ n, P11812502426596121146.a n = A272887 (n + 1)

end A272887

/-! ## A272887.P9970308853082895899

`A299480(A000040(n+1))`
-/

namespace A272887.P9970308853082895899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299480 (A000040 (n + 1)).toNat

end

end A272887.P9970308853082895899

namespace A272887

/-- `A299480(A000040(n+1))` -/
def P9970308853082895899.Spec : Prop :=
  ∀ n, P9970308853082895899.a n = A272887 (n + 1)

end A272887

/-! ## A272887.P15657240344307960884

`A299480(A166496(n+1))`
-/

namespace A272887.P15657240344307960884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299480 (A166496 (n + 1)).toNat

end

end A272887.P15657240344307960884

namespace A272887

/-- `A299480(A166496(n+1))` -/
def P15657240344307960884.Spec : Prop :=
  ∀ n, P15657240344307960884.a n = A272887 (n + 1)

end A272887

/-! ## A272887.P11832034982366391311

`A320003(A247159(n+1))`
-/

namespace A272887.P11832034982366391311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320003 (A247159 (n + 1)).toNat

end

end A272887.P11832034982366391311

namespace A272887

/-- `A320003(A247159(n+1))` -/
def P11832034982366391311.Spec : Prop :=
  ∀ n, P11832034982366391311.a n = A272887 (n + 1)

end A272887

/-! ## A272887.P4753244999857583640

`A299480(A008578(n+2))`
-/

namespace A272887.P4753244999857583640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299480 (A008578 (n + 2)).toNat

end

end A272887.P4753244999857583640

namespace A272887

/-- `A299480(A008578(n+2))` -/
def P4753244999857583640.Spec : Prop :=
  ∀ n, P4753244999857583640.a n = A272887 (n + 1)

end A272887

/-! ## A272887.P12341846860337560830

`A113414(A299763(n+2))`
-/

namespace A272887.P12341846860337560830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113414 (A299763 (n + 2)).toNat

end

end A272887.P12341846860337560830

namespace A272887

/-- `A113414(A299763(n+2))` -/
def P12341846860337560830.Spec : Prop :=
  ∀ n, P12341846860337560830.a n = A272887 (n + 1)

end A272887

/-! ## A272887.P18301513883853089072

`A299480(A182986(n+2))`
-/

namespace A272887.P18301513883853089072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299480 (A182986 (n + 2)).toNat

end

end A272887.P18301513883853089072

namespace A272887

/-- `A299480(A182986(n+2))` -/
def P18301513883853089072.Spec : Prop :=
  ∀ n, P18301513883853089072.a n = A272887 (n + 1)

end A272887

/-!
# A272888: Number of ordered ways to write n as w^2 + x^2 + y^2 + z^2 with w*(x^2 + 8*y^2 - z^2) a square, where w,x,y are nonnegative integers and z is a positive integer.

The programs for A272888, there is no canonical definition to state claims against.
-/

/-! ## A272888.P11306407586878528358

`A055091(A358977(A276076(A358977(A276076(n)))))`
-/

namespace A272888.P11306407586878528358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 (A358977 (A276076 (A358977 (A276076 n).toNat).toNat).toNat).toNat

end

end A272888.P11306407586878528358

/-!
# A272890: Numbers k such that the product of k and the sum of the reciprocal of their anti-divisors is an integer.

The programs for A272890, there is no canonical definition to state claims against.
-/

/-! ## A272890.P580149509709285150

`A173165(n+1)²`
-/

namespace A272890.P580149509709285150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173165 (n + 1) ^ 2

end

end A272890.P580149509709285150

/-! ## A272890.P2072139963632538264

`A154670(n+1)/2`
-/

namespace A272890.P2072139963632538264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154670 (n + 1) : ℚ) / 2

end

end A272890.P2072139963632538264

/-! ## A272890.P11015230362217855682

`A037072(n+1)/4`
-/

namespace A272890.P11015230362217855682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037072 (n + 1) : ℚ) / 4

end

end A272890.P11015230362217855682

/-! ## A272890.P4707721342261343129

`(3*A037073(n+1))²`
-/

namespace A272890.P4707721342261343129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A037073 (n + 1)) ^ 2

end

end A272890.P4707721342261343129

/-! ## A272890.P285310860818109029

`(A152786(n+1)/2)²`
-/

namespace A272890.P285310860818109029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A152786 (n + 1) : ℚ) / 2) ^ 2

end

end A272890.P285310860818109029

/-! ## A272890.P8448000808228961780

`ceil(A069496(n+1)/2)`
-/

namespace A272890.P8448000808228961780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A069496 (n + 1) : ℚ) / 2⌉

end

end A272890.P8448000808228961780

/-! ## A272890.P18338762238335195466

`(A118593(n+1)-1)/2`
-/

namespace A272890.P18338762238335195466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118593 (n + 1) - 1 : ℚ) / 2

end

end A272890.P18338762238335195466

/-! ## A272890.P14982368463875421416

`ceil(sqrt(A235334(n+2))/2)`
-/

namespace A272890.P14982368463875421416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A235334 (n + 2) : ℝ) / 2⌉

end

end A272890.P14982368463875421416

/-! ## A272890.P562052979515761702

`ceil(A232878(2*n+1)/2)`
-/

namespace A272890.P562052979515761702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A232878 (2 * n + 1) : ℚ) / 2⌉

end

end A272890.P562052979515761702

/-! ## A272890.P2147851409130245556

`∩[A066049(n+1), A089001(n+1)]²`
-/

namespace A272890.P2147851409130245556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A272890.P2147851409130245556

/-! ## A272890.P854701463600222675

`(∩[A074924(n+1), A090697(n+1)]/2)²`
-/

namespace A272890.P854701463600222675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090697 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2) ^ 2

end

end A272890.P854701463600222675

/-! ## A272890.P16002521280290379251

`A173165(n+1)^A000005(A001359(n+1))`
-/

namespace A272890.P16002521280290379251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173165 (n + 1) : ℚ) ^ (A000005 (A001359 (n + 1)).toNat : ℤ)

end

end A272890.P16002521280290379251

/-! ## A272890.P14108177042346796436

`A173165(n+1)^A000005(A006512(n+1))`
-/

namespace A272890.P14108177042346796436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173165 (n + 1) : ℚ) ^ (A000005 (A006512 (n + 1)).toNat : ℤ)

end

end A272890.P14108177042346796436

/-! ## A272890.P17815608345980919936

`A173165(n+1)^A020639(A173180(n+1))`
-/

namespace A272890.P17815608345980919936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173165 (n + 1) : ℚ) ^ (A020639 (A173180 (n + 1)).toNat : ℤ)

end

end A272890.P17815608345980919936

/-! ## A272890.P5984712722453834464

`(A173165(n+1)+A152786(n+1))*A037073(n+1)`
-/

namespace A272890.P5984712722453834464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A173165 (n + 1) + A152786 (n + 1)) * A037073 (n + 1)

end

end A272890.P5984712722453834464

/-! ## A272890.P8953031937342529239

`A154670(n+1)-A173165(n+1)*A173165(n+1)`
-/

namespace A272890.P8953031937342529239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154670 (n + 1) - A173165 (n + 1) * A173165 (n + 1)

end

end A272890.P8953031937342529239

/-! ## A272890.P8055658757777098779

`A016766(A037073(n+1))`
-/

namespace A272890.P8055658757777098779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016766 (A037073 (n + 1)).toNat

end

end A272890.P8055658757777098779

/-! ## A272890.P12227630815183515831

`record[(A152786(A038568(n))/2)²]`
-/

namespace A272890.P12227630815183515831
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A152786 (A038568 n).toNat : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272890.P12227630815183515831

/-! ## A272890.P6389959505199095034

`∩[A089001(n+1), A139013(n+1)]²`
-/

namespace A272890.P6389959505199095034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A272890.P6389959505199095034

/-! ## A272890.P12942755874040791286

`(eq[2, A110559(n+1)]+1)²`
-/

namespace A272890.P12942755874040791286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110559 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A272890.P12942755874040791286

/-!
# A272891: Number of partitions of Lucas(n).

The programs for A272891, there is no canonical definition to state claims against.
-/

/-! ## A272891.P9122135051393517544

`A000041(A000032(n))`
-/

namespace A272891.P9122135051393517544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A000032 n).toNat

end

end A272891.P9122135051393517544

/-! ## A272891.P3856040102147631872

`A000041(Δ[a(n-1)+a(n-2)])` with `a(0)=1, a(1)=3`
-/

namespace A272891.P3856040102147631872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A272891.P3856040102147631872

/-! ## A272891.P291009055565905686

`A000041(Δ[A000204(n+1)])`
-/

namespace A272891.P291009055565905686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (n + 1) - f1 n).toNat

end

end A272891.P291009055565905686

/-! ## A272891.P11270193492907670556

`A000041(Δ[A000045(n)]+A000045(n+1))`
-/

namespace A272891.P11270193492907670556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (n + 1) - f1 n + A000045 (n + 1)).toNat

end

end A272891.P11270193492907670556

/-! ## A272891.P7368883641776772681

`A000041(2*A000045(n+1)-A000045(n))`
-/

namespace A272891.P7368883641776772681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * A000045 (n + 1) - A000045 n).toNat

end

end A272891.P7368883641776772681

/-!
# A272894: a(n) is the largest natural number k such that the composite number (2n+1) 2^k+1 has a nontrivial divisor of the form h2^s+1 (h odd) with s>k. If such a natural number does not exist, we set a(n)=0.

The programs for A272894, there is no canonical definition to state claims against.
-/

/-! ## A272894.P17803237618497851768

`A056979(xor(A180629(n+3), A287348(n+1)))`
-/

namespace A272894.P17803237618497851768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056979 (Int.xor (A180629 (n + 3)) (A287348 (n + 1))).toNat

end

end A272894.P17803237618497851768

/-! ## A272894.P3158517056193479625

`A235833(A007401(3*(n+1)))%A303389(n+3)`
-/

namespace A272894.P3158517056193479625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235833 (A007401 (3 * (n + 1))).toNat) (A303389 (n + 3))

end

end A272894.P3158517056193479625

/-! ## A272894.P16473734276069013007

`A018194(A018175(n))-A273693(n)`
-/

namespace A272894.P16473734276069013007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018194 (A018175 n).toNat - A273693 n

end

end A272894.P16473734276069013007

/-! ## A272894.P12019646293862475765

`val(A000010(A350441(n+1)), 6)`
-/

namespace A272894.P12019646293862475765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000010 (A350441 (n + 1)).toNat).toNat 6

end

end A272894.P12019646293862475765

/-! ## A272894.P12499308492015794664

`A285381(n)%A067760(A285381(n))`
-/

namespace A272894.P12499308492015794664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285381 n) (A067760 (A285381 n).toNat)

end

end A272894.P12499308492015794664

/-!
# A272896: Difference between the number of odd and even digits in the decimal expansion of 2^n.

The programs for A272896, the canonical program `A272896.P15057235948138467158` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272896 has offset 0).

The definition of A272896 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272896.P2742938135114827584

`A055254(n)-A055253(n)`
-/

namespace A272896.P2742938135114827584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055254 n - A055253 n

end

end A272896.P2742938135114827584

namespace A272896

/-- `A055254(n)-A055253(n)` -/
def P2742938135114827584.Spec : Prop :=
  ∀ n, P2742938135114827584.a n = A272896 n

end A272896

/-! ## A272896.P15057235948138467158

`A196564(2^n)-A196563(2^n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A272896

/-- `A196564(2^n)-A196563(2^n)` -/
def P15057235948138467158.Spec : Prop :=
  ∀ n, P15057235948138467158.a n = A272896 n

theorem P15057235948138467158.correct : P15057235948138467158.Spec := by
  intro n
  simp only [A272896]

end A272896

/-! ## A272896.P9387387773599447765

`2*A055254(n)-A034887(n)`
-/

namespace A272896.P9387387773599447765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055254 n - A034887 n

end

end A272896.P9387387773599447765

namespace A272896

/-- `2*A055254(n)-A034887(n)` -/
def P9387387773599447765.Spec : Prop :=
  ∀ n, P9387387773599447765.a n = A272896 n

end A272896

/-! ## A272896.P16373381368230230919

`A034887(n)-2*A055253(n)`
-/

namespace A272896.P16373381368230230919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 n - 2 * A055253 n

end

end A272896.P16373381368230230919

namespace A272896

/-- `A034887(n)-2*A055253(n)` -/
def P16373381368230230919.Spec : Prop :=
  ∀ n, P16373381368230230919.a n = A272896 n

end A272896

/-! ## A272896.P16632164050394368510

`A034887(n)-A005843(A055253(n))`
-/

namespace A272896.P16632164050394368510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 n - A005843 (A055253 n).toNat

end

end A272896.P16632164050394368510

namespace A272896

/-- `A034887(n)-A005843(A055253(n))` -/
def P16632164050394368510.Spec : Prop :=
  ∀ n, P16632164050394368510.a n = A272896 n

end A272896

/-! ## A272896.P12281453157688027489

`A005843(A055254(n))-A034887(n)`
-/

namespace A272896.P12281453157688027489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A055254 n).toNat - A034887 n

end

end A272896.P12281453157688027489

namespace A272896

/-- `A005843(A055254(n))-A034887(n)` -/
def P12281453157688027489.Spec : Prop :=
  ∀ n, P12281453157688027489.a n = A272896 n

end A272896

/-! ## A272896.P8339876403338430855

`∑{digits}[A000079(n), #-xor(1, #)]`
-/

namespace A272896.P8339876403338430855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x : ℤ) - (Nat.xor 1 x : ℤ)).sum

end

end A272896.P8339876403338430855

namespace A272896

/-- `∑{digits}[A000079(n), #-xor(1, #)]` -/
def P8339876403338430855.Spec : Prop :=
  ∀ n, P8339876403338430855.a n = A272896 n

end A272896

/-! ## A272896.P6570638900983669831

`∑{digits}[2^n, A033999(A167354(#+1))]`
-/

namespace A272896.P6570638900983669831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A033999 (A167354 (x + 1)).toNat).sum

end

end A272896.P6570638900983669831

namespace A272896

/-- `∑{digits}[2^n, A033999(A167354(#+1))]` -/
def P6570638900983669831.Spec : Prop :=
  ∀ n, P6570638900983669831.a n = A272896 n

end A272896

/-!
# A272897: Largest prime factor of n-th taxi-cab number A001235(n).

The programs for A272897, there is no canonical definition to state claims against.
-/

/-! ## A272897.P11641169495180076868

`A006530(A001235(n+1))`
-/

namespace A272897.P11641169495180076868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001235 (n + 1)).toNat

end

end A272897.P11641169495180076868

/-!
# A272898: Numbers k such that 2^k has equal numbers of odd and even decimal digits.

The programs for A272898, the canonical program `A272898.P8267313110356408480` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272898 has offset 1).

The definition of A272898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272898.P8267313110356408480

`eq[0, A272896(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A272898

/-- `eq[0, A272896(n)]` -/
def P8267313110356408480.Spec : Prop :=
  ∀ n, (P8267313110356408480.a n : ℤ) = A272898 (n + 1)

theorem P8267313110356408480.correct : P8267313110356408480.Spec := by
  intro n
  simp only [A272898, Nat.add_sub_cancel]

end A272898

/-! ## A272898.P1830354089600342858

`eq[A055253(n), A055254(n)]`
-/

namespace A272898.P1830354089600342858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055253 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272898.P1830354089600342858

namespace A272898

/-- `eq[A055253(n), A055254(n)]` -/
def P1830354089600342858.Spec : Prop :=
  ∀ n, (P1830354089600342858.a n : ℤ) = A272898 (n + 1)

end A272898

/-! ## A272898.P10303177032184638480

`eq[2*A055253(n), A034887(n)]`
-/

namespace A272898.P10303177032184638480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055253 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272898.P10303177032184638480

namespace A272898

/-- `eq[2*A055253(n), A034887(n)]` -/
def P10303177032184638480.Spec : Prop :=
  ∀ n, (P10303177032184638480.a n : ℤ) = A272898 (n + 1)

end A272898

/-! ## A272898.P10073631004400009809

`eq[2*A055254(n), A034887(n)]`
-/

namespace A272898.P10073631004400009809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055254 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272898.P10073631004400009809

namespace A272898

/-- `eq[2*A055254(n), A034887(n)]` -/
def P10073631004400009809.Spec : Prop :=
  ∀ n, (P10073631004400009809.a n : ℤ) = A272898 (n + 1)

end A272898

/-! ## A272898.P9643831603307437002

`eq[A005843(A055253(n)), A034887(n)]`
-/

namespace A272898.P9643831603307437002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A055253 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272898.P9643831603307437002

namespace A272898

/-- `eq[A005843(A055253(n)), A034887(n)]` -/
def P9643831603307437002.Spec : Prop :=
  ∀ n, (P9643831603307437002.a n : ℤ) = A272898 (n + 1)

end A272898

/-! ## A272898.P3886573509056153338

`eq[A005843(A055254(n)), A034887(n)]`
-/

namespace A272898.P3886573509056153338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A055254 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272898.P3886573509056153338

namespace A272898

/-- `eq[A005843(A055254(n)), A034887(n)]` -/
def P3886573509056153338.Spec : Prop :=
  ∀ n, (P3886573509056153338.a n : ℤ) = A272898 (n + 1)

end A272898

/-! ## A272898.P973117239877980822

`eq[A004277(A055253(n)), A192543(n+1)]`
-/

namespace A272898.P973117239877980822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A055253 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272898.P973117239877980822

namespace A272898

/-- `eq[A004277(A055253(n)), A192543(n+1)]` -/
def P973117239877980822.Spec : Prop :=
  ∀ n, (P973117239877980822.a n : ℤ) = A272898 (n + 1)

end A272898

/-!
# A272899: Product of next n prime numbers greater than n.

The programs for A272899, there is no canonical definition to state claims against.
-/

/-! ## A272899.P12672187190578278643

`A002110(A095117(n))/A034386(n)`
-/

namespace A272899.P12672187190578278643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (A095117 n).toNat : ℚ) / (A034386 n : ℚ)

end

end A272899.P12672187190578278643

/-! ## A272899.P9167722711276149650

`A002110(A095117(n))/A300951(2*n)`
-/

namespace A272899.P9167722711276149650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (A095117 n).toNat : ℚ) / (A300951 (2 * n) : ℚ)

end

end A272899.P9167722711276149650

/-! ## A272899.P623368551694488969

`A002110(A095117(n))/(2^n-A319880(n))`
-/

namespace A272899.P623368551694488969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (A095117 n).toNat : ℚ) / ((2 ^ n : ℤ) - A319880 n : ℚ)

end

end A272899.P623368551694488969

/-! ## A272899.P6265363446682717184

`A002110(A095117(n))/A002110(A230980(n))`
-/

namespace A272899.P6265363446682717184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (A095117 n).toNat : ℚ) / (A002110 (A230980 n).toNat : ℚ)

end

end A272899.P6265363446682717184

/-! ## A272899.P4410383246981180201

`A002110(A095117(n))/A066838(A007918(n+1))`
-/

namespace A272899.P4410383246981180201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (A095117 n).toNat : ℚ) / (A066838 (A007918 (n + 1)).toNat : ℚ)

end

end A272899.P4410383246981180201

