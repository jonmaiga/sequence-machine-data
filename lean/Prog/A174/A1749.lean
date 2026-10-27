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
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A174900: a(n) = the smallest numbers k such that A007955(k) = n, or 0 if there is no such k, where A007955(m) = product of divisors of m.

The programs for A174900, there is no canonical definition to state claims against.
-/

/-! ## A174900.P18043324258275619993

`A019554(A019554(n+1)²)*A174897(n+1)`
-/

namespace A174900.P18043324258275619993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A019554 (n + 1) ^ 2).toNat * A174897 (n + 1)

end

end A174900.P18043324258275619993

/-! ## A174900.P13923247147881054218

`A033677(A033677(n+1)²)*A174897(n+1)`
-/

namespace A174900.P13923247147881054218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A033677 (n + 1) ^ 2).toNat * A174897 (n + 1)

end

end A174900.P13923247147881054218

/-! ## A174900.P17150655671657047047

`A095163(A095163(n+1)²)*A174897(n+1)`
-/

namespace A174900.P17150655671657047047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095163 (A095163 (n + 1) ^ 2).toNat * A174897 (n + 1)

end

end A174900.P17150655671657047047

/-! ## A174900.P14243476594283536105

`A174897(n+1)*A355263(A355263(n+1)²)`
-/

namespace A174900.P14243476594283536105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174897 (n + 1) * A355263 (A355263 (n + 1) ^ 2).toNat

end

end A174900.P14243476594283536105

/-! ## A174900.P883632165479310552

`A174897(n+1)*A346703(n+1)`
-/

namespace A174900.P883632165479310552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174897 (n + 1) * A346703 (n + 1)

end

end A174900.P883632165479310552

/-! ## A174900.P11410851494328016465

`A174897(n+1)*A346701(n+1)`
-/

namespace A174900.P11410851494328016465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174897 (n + 1) * A346701 (n + 1)

end

end A174900.P11410851494328016465

/-!
# A174901: a(n) = the smallest numbers k such that A007955(k) >= n, where A007955(m) = product of divisors of m.

The programs for A174901, there is no canonical definition to state claims against.
-/

/-! ## A174901.P15535606184562890794

`A000029(∑[char[A174899(n+1)]])`
-/

namespace A174901.P15535606184562890794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174899 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A174901.P15535606184562890794

/-! ## A174901.P14270803698045246381

`A188917(∑[char[A174899(n+1)]])`
-/

namespace A174901.P14270803698045246381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174899 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188917 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A174901.P14270803698045246381

/-! ## A174901.P7495646338218362199

`A302833(∑[char[A174899(n+1)]])`
-/

namespace A174901.P7495646338218362199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174899 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302833 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A174901.P7495646338218362199

/-! ## A174901.P2803033008228839211

`A007401(a(A111850(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A174901.P2803033008228839211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A007401 (a (A111850 (n + 1)).toNat).toNat

end

end A174901.P2803033008228839211

/-! ## A174901.P2895736702867495698

`A184010(a(A111850(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A174901.P2895736702867495698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A184010 (a (A111850 (n + 1)).toNat).toNat

end

end A174901.P2895736702867495698

/-! ## A174901.P16887542980328761180

`A188024(a(A111850(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A174901.P16887542980328761180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A188024 (a (A111850 (n + 1)).toNat).toNat

end

end A174901.P16887542980328761180

/-! ## A174901.P13019916230871489119

`A285598(a(A111850(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A174901.P13019916230871489119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A285598 (a (A111850 (n + 1)).toNat).toNat

end

end A174901.P13019916230871489119

/-! ## A174901.P10784226159103375794

`A065609(a(A111850(n+1))+1)` with `a(0)=1, a(1)=2`
-/

namespace A174901.P10784226159103375794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A065609 (a (A111850 (n + 1)).toNat + 1).toNat

end

end A174901.P10784226159103375794

/-! ## A174901.P1744911600705446804

`A120514(a(A111850(n+1)))+1` with `a(0)=1, a(1)=2`
-/

namespace A174901.P1744911600705446804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A120514 (a (A111850 (n + 1)).toNat).toNat + 1

end

end A174901.P1744911600705446804

/-! ## A174901.P7289764344203618860

`A014132(a(A111850(n+1)))-1` with `a(0)=1, a(1)=2`
-/

namespace A174901.P7289764344203618860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A014132 (a (A111850 (n + 1)).toNat).toNat - 1

end

end A174901.P7289764344203618860

/-!
# A174902: Denominator of 1 - 1/n^2, using 0 at the pole where n=0.

The programs for A174902, there is no canonical definition to state claims against.
-/

/-! ## A174902.P4330888173152545539

`(n-1)²`
-/

namespace A174902.P4330888173152545539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

end

end A174902.P4330888173152545539

/-!
# A174903: Number of divisors d of n such that d<e<2*d for at least another divisor e of n.

The programs for A174903, there is no canonical definition to state claims against.
-/

/-! ## A174903.P8301119098345922737

`A024584(A270339(n+1))%A325813(n+1)`
-/

namespace A174903.P8301119098345922737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024584 (A270339 (n + 1)).toNat) (A325813 (n + 1))

end

end A174903.P8301119098345922737

/-! ## A174903.P3179617710069430664

`A239657(A003961(n+1)%A068560(n+5))`
-/

namespace A174903.P3179617710069430664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239657 (Int.tmod (A003961 (n + 1)) (A068560 (n + 5))).toNat

end

end A174903.P3179617710069430664

/-! ## A174903.P18390273885969510709

`A083206(A269974(3*n+1)*A327498(n+1))`
-/

namespace A174903.P18390273885969510709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083206 (A269974 (3 * n + 1) * A327498 (n + 1)).toNat

end

end A174903.P18390273885969510709

/-! ## A174903.P16756550192028644785

`A239657(A003961(n+1))^A290695(3*(n+1))`
-/

namespace A174903.P16756550192028644785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239657 (A003961 (n + 1)).toNat : ℚ) ^ (A290695 (3 * (n + 1)) : ℤ)

end

end A174903.P16756550192028644785

/-! ## A174903.P11824479891206360665

`∑{d}[n+1, A145863(#)*A270417((n+1)/#)]`
-/

namespace A174903.P11824479891206360665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A145863 d * A270417 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174903.P11824479891206360665

/-!
# A174904: Smallest number m such that A174903(m) = n.

The programs for A174904, there is no canonical definition to state claims against.
-/

/-! ## A174904.P10425592448475675089

`(n+1)*A091053(∏{p}[n+1, #+1])`
-/

namespace A174904.P10425592448475675089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A091053 (∏ p ∈ Nat.primeFactors (f1 n), (p + 1))

end

end A174904.P10425592448475675089

/-!
# A174905: Numbers with no pair (d,e) of divisors such that d < e < 2*d.

The programs for A174905, there is no canonical definition to state claims against.
-/

/-! ## A174905.P13325984572592280730

`eq[0, A270417(n+1)]+1`
-/

namespace A174905.P13325984572592280730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A174905.P13325984572592280730

/-! ## A174905.P15923988089384973086

`comp[A005279(n+1)-1]+1`
-/

namespace A174905.P15923988089384973086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A174905.P15923988089384973086

/-! ## A174905.P4221193809630317499

`lt[A270417(n+1), A304779(A270417(n+1)+1)]+1`
-/

namespace A174905.P4221193809630317499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304779 (A270417 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A174905.P4221193809630317499

/-! ## A174905.P11977495275622906332

`record[A053626(n+1)]`
-/

namespace A174905.P11977495275622906332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174905.P11977495275622906332

/-! ## A174905.P9420283695069170612

`record[A053627(n+1)]`
-/

namespace A174905.P9420283695069170612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174905.P9420283695069170612

/-! ## A174905.P7591995684611229158

`eq[0, A174903(n+1)]+1`
-/

namespace A174905.P7591995684611229158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A174905.P7591995684611229158

/-! ## A174905.P10328754299803334032

`eq[0, A301989(n+1)]+1`
-/

namespace A174905.P10328754299803334032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A174905.P10328754299803334032

/-! ## A174905.P3200920422733200343

`eq[1, A250068(n+1)]+1`
-/

namespace A174905.P3200920422733200343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A174905.P3200920422733200343

/-! ## A174905.P17436757004736485711

`eq[n, A053626(abs(1-n)+1)]`
-/

namespace A174905.P17436757004736485711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174905.P17436757004736485711

/-! ## A174905.P16181508502830073529

`eq[1, A000007(A239657(n+1))]+1`
-/

namespace A174905.P16181508502830073529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A239657 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A174905.P16181508502830073529

/-! ## A174905.P17495666985101976792

`A053626(lt[n, A053626(n+1)]+1)`
-/

namespace A174905.P17495666985101976792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A174905.P17495666985101976792

/-! ## A174905.P15941984499392942040

`A053626(eq[n+1, A053626(n+1)]+1)`
-/

namespace A174905.P15941984499392942040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A174905.P15941984499392942040

/-! ## A174905.P1539645675353308916

`eq[0, A024155(2*(n+1))]+1`
-/

namespace A174905.P1539645675353308916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A174905.P1539645675353308916

/-! ## A174905.P14678677591544966526

`lt[A024155(2*n+2), 1]+1`
-/

namespace A174905.P14678677591544966526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (2 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A174905.P14678677591544966526

/-! ## A174905.P2481425653617167078

`record[A123108(2*n)/A250068(A123108(2*n))]`
-/

namespace A174905.P2481425653617167078
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123108 (2 * n) : ℚ) / (A250068 (A123108 (2 * n)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174905.P2481425653617167078

/-!
# A174906: a(n) is the index of the first triangular number T_i exceeding T_n such that the product of T_i*T_n is a perfect square.

The programs for A174906, there is no canonical definition to state claims against.
-/

/-! ## A174906.P11437047634224649884

`A179682(n+2)`
-/

namespace A174906.P11437047634224649884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179682 (n + 2)

end

end A174906.P11437047634224649884

/-! ## A174906.P15529175391504829468

`filter[A179682(n), A174898(#)]`
-/

namespace A174906.P15529175391504829468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A174906.P15529175391504829468

/-! ## A174906.P8910485309115086652

`filter[A179682(n), A202238(#)]`
-/

namespace A174906.P8910485309115086652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A174906.P8910485309115086652

/-! ## A174906.P16242073075890570987

`filter[A179682(n), A288381(#)]`
-/

namespace A174906.P16242073075890570987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288381 (f1 j).toNat = 1) n)

end

end A174906.P16242073075890570987

/-! ## A174906.P15124198130541788816

`filter[A179682(n), A347523(#)]`
-/

namespace A174906.P15124198130541788816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A174906.P15124198130541788816

/-!
# A174907: Write the prime factorization of the factorial numbers (p1^q1*p2^q2*...*pn^qn) where p1,p2... are the primes and q1,q2... are the exponents. The exponents that change with each successive factorial change to the numbers in the sequence.

The programs for A174907, there is no canonical definition to state claims against.
-/

/-! ## A174907.P5261113237760800450

`val(∏[A141809(n+2)], A027748(n+2))`
-/

namespace A174907.P5261113237760800450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141809 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ j ∈ Finset.range (n + 1), f1 j).toNat (A027748 (n + 2)).toNat

end

end A174907.P5261113237760800450

/-!
# A174908: Numbers n such that the sum of the 4th powers of their digits > n.

The programs for A174908, the canonical program `A174908.P17012988393835130299` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174908 has offset 1).

The definition of A174908 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5617 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174908.P17012988393835130299

`lt[n, ∑{digits}[n, #^4]]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A174908

/-- `lt[n, ∑{digits}[n, #^4]]` -/
def P17012988393835130299.Spec : Prop :=
  ∀ n, (P17012988393835130299.a n : ℤ) = A174908 (n + 1)

theorem P17012988393835130299.correct : P17012988393835130299.Spec := by
  intro n
  simp only [A174908, Nat.add_sub_cancel]

end A174908

/-! ## A174908.P6129285035172929539

`lt[n, A055013(n)]`
-/

namespace A174908.P6129285035172929539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055013 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A174908.P6129285035172929539

namespace A174908

/-- `lt[n, A055013(n)]` -/
def P6129285035172929539.Spec : Prop :=
  ∀ n, (P6129285035172929539.a n : ℤ) = A174908 (n + 1)

end A174908

/-! ## A174908.P4960898346613019364

`eq[2, ceil(sqrt(A052010(n)))]`
-/

namespace A174908.P4960898346613019364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A052010 n : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174908.P4960898346613019364

namespace A174908

/-- `eq[2, ceil(sqrt(A052010(n)))]` -/
def P4960898346613019364.Spec : Prop :=
  ∀ n, (P4960898346613019364.a n : ℤ) = A174908 (n + 1)

end A174908

/-! ## A174908.P785984041401730187

`record[(n+2)%A055013(n+2)]`
-/

namespace A174908.P785984041401730187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A055013 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174908.P785984041401730187

namespace A174908

/-- `record[(n+2)%A055013(n+2)]` -/
def P785984041401730187.Spec : Prop :=
  ∀ n, P785984041401730187.a n = A174908 (n + 1)

end A174908

/-! ## A174908.P15836485125220806594

`eq[1, A003269(A052010(n))]`
-/

namespace A174908.P15836485125220806594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (A052010 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174908.P15836485125220806594

namespace A174908

/-- `eq[1, A003269(A052010(n))]` -/
def P15836485125220806594.Spec : Prop :=
  ∀ n, (P15836485125220806594.a n : ℤ) = A174908 (n + 1)

end A174908

/-! ## A174908.P4756683677819611634

`lt[A134193(A334032(n+5)), A054055(n)]`
-/

namespace A174908.P4756683677819611634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134193 (A334032 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174908.P4756683677819611634

namespace A174908

/-- `lt[A134193(A334032(n+5)), A054055(n)]` -/
def P4756683677819611634.Spec : Prop :=
  ∀ n, (P4756683677819611634.a n : ℤ) = A174908 (n + 1)

end A174908

/-!
# A174909: Triangle T(n,i) whose n-th row gives the number of numbers in any prime(n)# consecutive numbers whose smallest prime factor is prime(n-i+1).

The programs for A174909, there is no canonical definition to state claims against.
-/

/-! ## A174909.P17889495343624552834

`A293558(∑[char[∑[n]]]²-n)`
-/

namespace A174909.P17889495343624552834
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293558 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A174909.P17889495343624552834

/-! ## A174909.P2887725206959017199

`lcm(A033999(n), A293558(A038722(n+1)))`
-/

namespace A174909.P2887725206959017199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A293558 (A038722 (n + 1)).toNat)

end

end A174909.P2887725206959017199

/-! ## A174909.P7584775580376092671

`or(A000007(n), A293558(A038722(n+1)))`
-/

namespace A174909.P7584775580376092671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A293558 (A038722 (n + 1)).toNat)

end

end A174909.P7584775580376092671

/-! ## A174909.P14829957803142947115

`A293558(A038722(n+1))+A000038(n+1)`
-/

namespace A174909.P14829957803142947115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293558 (A038722 (n + 1)).toNat + A000038 (n + 1)

end

end A174909.P14829957803142947115

/-! ## A174909.P13792510034401399787

`A293558(A061579(n)+1)%A048527(n+1)`
-/

namespace A174909.P13792510034401399787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293558 (A061579 n + 1).toNat) (A048527 (n + 1))

end

end A174909.P13792510034401399787

/-!
# A174910: Partial sums of A028835.

The programs for A174910, the canonical program `A174910.P6440073360298839259` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174910 has offset 1).

The definition of A174910 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174910.P6440073360298839259

`∑[a(n-4)+9]` with `a(0)=2, a(1)=3, a(2)=5, a(3)=7`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A174910

/-- `∑[a(n-4)+9]` -/
def P6440073360298839259.Spec : Prop :=
  ∀ n, (P6440073360298839259.a n : ℤ) = A174910 (n + 1)

theorem P6440073360298839259.correct : P6440073360298839259.Spec := by
  intro n
  simp only [A174910, Nat.add_sub_cancel]

end A174910

/-! ## A174910.P7769747727725684804

`∑[∑[floor(a(n-4))]]` with `a(0)=2, a(1)=1, a(2)=2, a(3)=2, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A174910.P7769747727725684804
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2, 2, 4] fun n f2 =>
  f2 (n - 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174910.P7769747727725684804

namespace A174910

/-- `∑[∑[floor(a(n-4))]]` -/
def P7769747727725684804.Spec : Prop :=
  ∀ n, (P7769747727725684804.a n : ℤ) = A174910 (n + 1)

end A174910

/-! ## A174910.P13899768886928349591

`∑[record[10%dr(n+1)+n+2]]`
-/

namespace A174910.P13899768886928349591
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 % SequenceMachineLib.digitalRoot (n + 1 : ℤ) + (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174910.P13899768886928349591

namespace A174910

/-- `∑[record[10%dr(n+1)+n+2]]` -/
def P13899768886928349591.Spec : Prop :=
  ∀ n, (P13899768886928349591.a n : ℤ) = A174910 (n + 1)

end A174910

/-! ## A174910.P4424304527954370024

`∑[∑[gcd(4, a(n-4))]]` with `a(0)=2, a(1)=1, a(2)=2, a(3)=2, a(4)=4`
-/

namespace A174910.P4424304527954370024
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2, 2, 4] fun n f2 =>
  Nat.gcd 4 (f2 (n - 4))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174910.P4424304527954370024

namespace A174910

/-- `∑[∑[gcd(4, a(n-4))]]` -/
def P4424304527954370024.Spec : Prop :=
  ∀ n, (P4424304527954370024.a n : ℤ) = A174910 (n + 1)

end A174910

/-! ## A174910.P16429387690320995925

`∑[∑[a(n-4)%5]]` with `a(0)=2, a(1)=1, a(2)=2, a(3)=2, a(4)=4`
-/

namespace A174910.P16429387690320995925
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2, 2, 4] fun n f2 =>
  f2 (n - 4) % 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174910.P16429387690320995925

namespace A174910

/-- `∑[∑[a(n-4)%5]]` -/
def P16429387690320995925.Spec : Prop :=
  ∀ n, (P16429387690320995925.a n : ℤ) = A174910 (n + 1)

end A174910

/-! ## A174910.P13194828325102500921

`∑[A028835(n+1)]`
-/

namespace A174910.P13194828325102500921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174910.P13194828325102500921

namespace A174910

/-- `∑[A028835(n+1)]` -/
def P13194828325102500921.Spec : Prop :=
  ∀ n, P13194828325102500921.a n = A174910 (n + 1)

theorem P13194828325102500921.correct : P13194828325102500921.Spec := by
  intro n
  simp only [A174910, Nat.add_sub_cancel, A174910.P13194828325102500921.f1, A174910.P13194828325102500921.a, A174910.P6440073360298839259.f1, A174910.P6440073360298839259.a, A028835, A028835.P10047270723414419312.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A174910

/-! ## A174910.P13669176325470739133

`∑[A047300(n+1)+floor(n/2)]`
-/

namespace A174910.P13669176325470739133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047300 (n + 1) + ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174910.P13669176325470739133

namespace A174910

/-- `∑[A047300(n+1)+floor(n/2)]` -/
def P13669176325470739133.Spec : Prop :=
  ∀ n, P13669176325470739133.a n = A174910 (n + 1)

end A174910

/-! ## A174910.P4411752953088879500

`∑[A260181(n+1)-floor(n/4)]`
-/

namespace A174910.P4411752953088879500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260181 (n + 1) - ⌊(n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174910.P4411752953088879500

namespace A174910

/-- `∑[A260181(n+1)-floor(n/4)]` -/
def P4411752953088879500.Spec : Prop :=
  ∀ n, P4411752953088879500.a n = A174910 (n + 1)

end A174910

/-! ## A174910.P14311057179583219409

`∑[A004273(n)+floor(n/4)+2]+floor(n/4)`
-/

namespace A174910.P14311057179583219409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + ⌊(n : ℚ) / 4⌋ + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌊(n : ℚ) / 4⌋

end

end A174910.P14311057179583219409

namespace A174910

/-- `∑[A004273(n)+floor(n/4)+2]+floor(n/4)` -/
def P14311057179583219409.Spec : Prop :=
  ∀ n, P14311057179583219409.a n = A174910 (n + 1)

end A174910

/-! ## A174910.P8161959388242402897

`∑[A008624(n)+A098180(n)+n]`
-/

namespace A174910.P8161959388242402897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 n + (A098180 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174910.P8161959388242402897

namespace A174910

/-- `∑[A008624(n)+A098180(n)+n]` -/
def P8161959388242402897.Spec : Prop :=
  ∀ n, P8161959388242402897.a n = A174910 (n + 1)

end A174910

/-! ## A174910.P10564257081293446315

`A002620(n)+∑[comp[A047384(n+1)]]`
-/

namespace A174910.P10564257081293446315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047384 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A174910.P10564257081293446315

namespace A174910

/-- `A002620(n)+∑[comp[A047384(n+1)]]` -/
def P10564257081293446315.Spec : Prop :=
  ∀ n, P10564257081293446315.a n = A174910 (n + 1)

end A174910

/-! ## A174910.P13666150531289110911

`∑[2*n+A002265(n)+1]+A002265(n)+1`
-/

namespace A174910.P13666150531289110911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A002265 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A002265 n + 1)

end

end A174910.P13666150531289110911

namespace A174910

/-- `∑[2*n+A002265(n)+1]+A002265(n)+1` -/
def P13666150531289110911.Spec : Prop :=
  ∀ n, P13666150531289110911.a n = A174910 (n + 1)

end A174910

/-! ## A174910.P7196212623418254829

`∑[A168183(A047487(n+1))]`
-/

namespace A174910.P7196212623418254829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168183 (A047487 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174910.P7196212623418254829

namespace A174910

/-- `∑[A168183(A047487(n+1))]` -/
def P7196212623418254829.Spec : Prop :=
  ∀ n, P7196212623418254829.a n = A174910 (n + 1)

end A174910

/-! ## A174910.P2807758434777604817

`∑[A130766(2*n+1)+A130766(n)]`
-/

namespace A174910.P2807758434777604817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130766 (2 * n + 1) + A130766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174910.P2807758434777604817

namespace A174910

/-- `∑[A130766(2*n+1)+A130766(n)]` -/
def P2807758434777604817.Spec : Prop :=
  ∀ n, P2807758434777604817.a n = A174910 (n + 1)

end A174910

/-!
# A174911: Sequence by greedy construction satisfying Lucier-Sárközy difference set condition.

The programs for A174911, there is no canonical definition to state claims against.
-/

/-! ## A174911.P16132100602563070110

`∑[A286245(A292884(∏{p}[n+1, #]))]`
-/

namespace A174911.P16132100602563070110
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286245 (A292884 (∏ p ∈ Nat.primeFactors (f2 n), p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174911.P16132100602563070110

/-!
# A174912: Triangle read by rows: T(n, m) = 1 + (binomial(n, m) - Eulerian(n+1, m))^2.

The programs for A174912, the canonical program `A174912.P10765614382381412807` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174912 has offset 0).

The definition of A174912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 879 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174912.P553083000290090901

`(2*A290448(n))²+1`
-/

namespace A174912.P553083000290090901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A290448 n) ^ 2 + 1

end

end A174912.P553083000290090901

namespace A174912

/-- `(2*A290448(n))²+1` -/
def P553083000290090901.Spec : Prop :=
  ∀ n, P553083000290090901.a n = A174912 n

end A174912

/-! ## A174912.P10765614382381412807

`(A168523(n)-A168524(n))²+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A174912

/-- `(A168523(n)-A168524(n))²+1` -/
def P10765614382381412807.Spec : Prop :=
  ∀ n, P10765614382381412807.a n = A174912 n

theorem P10765614382381412807.correct : P10765614382381412807.Spec := by
  intro n
  simp only [A174912]

end A174912

/-! ## A174912.P6496590659451139588

`(A168517(n)-A168551(n))²+1`
-/

namespace A174912.P6496590659451139588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168517 n - A168551 n) ^ 2 + 1

end

end A174912.P6496590659451139588

namespace A174912

/-- `(A168517(n)-A168551(n))²+1` -/
def P6496590659451139588.Spec : Prop :=
  ∀ n, P6496590659451139588.a n = A174912 n

end A174912

/-! ## A174912.P3720556436784644829

`(A168551(n)-A168552(n))²+1`
-/

namespace A174912.P3720556436784644829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168551 n - A168552 n) ^ 2 + 1

end

end A174912.P3720556436784644829

namespace A174912

/-- `(A168551(n)-A168552(n))²+1` -/
def P3720556436784644829.Spec : Prop :=
  ∀ n, P3720556436784644829.a n = A174912 n

end A174912

/-! ## A174912.P16139610454648637691

`(A008292(n+1)-A007318(n))²+1`
-/

namespace A174912.P16139610454648637691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008292 (n + 1) - A007318 n) ^ 2 + 1

end

end A174912.P16139610454648637691

namespace A174912

/-- `(A008292(n+1)-A007318(n))²+1` -/
def P16139610454648637691.Spec : Prop :=
  ∀ n, P16139610454648637691.a n = A174912 n

theorem P16139610454648637691.correct : P16139610454648637691.Spec := by
  intro n
  simp only [A174912, Nat.add_sub_cancel, A174912.P16139610454648637691.a, A174912.P10765614382381412807.a, A007318, A007318.P11755526479805562006.a, A008292, A008292.P18172958035633294905.a, A168523, A168523.P2818392945840428829.a, A168524, A168524.P793834532850151239.a, A060187, A060187.P2858299442381557721.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A174912

/-! ## A174912.P17542357181574336236

`(A008292(n+1)-A141690(n))²+1`
-/

namespace A174912.P17542357181574336236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008292 (n + 1) - A141690 n) ^ 2 + 1

end

end A174912.P17542357181574336236

namespace A174912

/-- `(A008292(n+1)-A141690(n))²+1` -/
def P17542357181574336236.Spec : Prop :=
  ∀ n, P17542357181574336236.a n = A174912 n

theorem P17542357181574336236.correct : P17542357181574336236.Spec := by
  intro n
  simp only [A174912, Nat.add_sub_cancel, A174912.P17542357181574336236.a, A174912.P10765614382381412807.a, A008292, A008292.P18172958035633294905.a, A141690, A141690.P1589277232017455012.a, A168523, A168523.P2818392945840428829.a, A168524, A168524.P793834532850151239.a, A007318, A007318.P11755526479805562006.a, A060187, A060187.P2858299442381557721.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A174912

/-! ## A174912.P13464284982486710659

`(A060187(n+1)-A168523(n))²+1`
-/

namespace A174912.P13464284982486710659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060187 (n + 1) - A168523 n) ^ 2 + 1

end

end A174912.P13464284982486710659

namespace A174912

/-- `(A060187(n+1)-A168523(n))²+1` -/
def P13464284982486710659.Spec : Prop :=
  ∀ n, P13464284982486710659.a n = A174912 n

theorem P13464284982486710659.correct : P13464284982486710659.Spec := by
  intro n
  simp only [A174912, Nat.add_sub_cancel, A174912.P13464284982486710659.a, A174912.P10765614382381412807.a, A060187, A060187.P2858299442381557721.a, A168523, A168523.P2818392945840428829.a, A168524, A168524.P793834532850151239.a, A007318, A007318.P11755526479805562006.a, A008292, A008292.P18172958035633294905.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A174912

/-! ## A174912.P3466789842526309564

`xor((2*A290448(n))², A007318(∑[n]))`
-/

namespace A174912.P3466789842526309564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 * A290448 n) ^ 2) (A007318 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A174912.P3466789842526309564

namespace A174912

/-- `xor((2*A290448(n))², A007318(∑[n]))` -/
def P3466789842526309564.Spec : Prop :=
  ∀ n, P3466789842526309564.a n = A174912 n

end A174912

/-! ## A174912.P17936682092195987253

`or((2*A290448(n))², A007318(A000096(n)))`
-/

namespace A174912.P17936682092195987253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((2 * A290448 n) ^ 2) (A007318 (A000096 n).toNat)

end

end A174912.P17936682092195987253

namespace A174912

/-- `or((2*A290448(n))², A007318(A000096(n)))` -/
def P17936682092195987253.Spec : Prop :=
  ∀ n, P17936682092195987253.a n = A174912 n

end A174912

/-! ## A174912.P15510146341637243886

`or((2*A290448(n))², A007318(A000217(n)))`
-/

namespace A174912.P15510146341637243886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((2 * A290448 n) ^ 2) (A007318 (A000217 n).toNat)

end

end A174912.P15510146341637243886

namespace A174912

/-- `or((2*A290448(n))², A007318(A000217(n)))` -/
def P15510146341637243886.Spec : Prop :=
  ∀ n, P15510146341637243886.a n = A174912 n

end A174912

/-!
# A174913: Lesser of twin primes p1 and p2 such that 2*p1+p2 is a prime number.

The programs for A174913, there is no canonical definition to state claims against.
-/

/-! ## A174913.P6742664016488276971

`(A391321(n+1)-2)/3`
-/

namespace A174913.P6742664016488276971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A391321 (n + 1) - 2 : ℚ) / 3

end

end A174913.P6742664016488276971

/-! ## A174913.P7842168809080894705

`∩[A001359(n+1), A173971(n+1)]`
-/

namespace A174913.P7842168809080894705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174913.P7842168809080894705

/-! ## A174913.P15731440589388456320

`∩[A054799(n+1), A173971(n+1)]`
-/

namespace A174913.P15731440589388456320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174913.P15731440589388456320

/-! ## A174913.P9777062282113966819

`∩[A063693(n+1), A173971(n+1)]`
-/

namespace A174913.P9777062282113966819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174913.P9777062282113966819

/-! ## A174913.P6275510297431755411

`∩[A063700(n+1), A173971(n+1)]`
-/

namespace A174913.P6275510297431755411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174913.P6275510297431755411

/-! ## A174913.P1039633817476529567

`∩[A173971(n+1), A181747(n+1)]`
-/

namespace A174913.P1039633817476529567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174913.P1039633817476529567

/-! ## A174913.P10709165688746971730

`∩[A173971(n+1), A280255(n+1)]`
-/

namespace A174913.P10709165688746971730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174913.P10709165688746971730

/-! ## A174913.P12839513944901774278

`∩[A173971(n+1), A280590(n+1)]`
-/

namespace A174913.P12839513944901774278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174913.P12839513944901774278

/-! ## A174913.P2478226384441792379

`∩[A001838(n+1), A173971(n+1)]`
-/

namespace A174913.P2478226384441792379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174913.P2478226384441792379

/-! ## A174913.P14714486193565408937

`p?[A258261(n+1)-2]`
-/

namespace A174913.P14714486193565408937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258261 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174913.P14714486193565408937

/-! ## A174913.P17217404894365996915

`p?[A023208(n+1)+2]-2`
-/

namespace A174913.P17217404894365996915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A174913.P17217404894365996915

/-! ## A174913.P13568331462707467795

`p?[A162338(n+1)+2]-2`
-/

namespace A174913.P13568331462707467795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162338 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A174913.P13568331462707467795

/-! ## A174913.P15949420072561037371

`∩[A001359(n+1), A023208(n+1)]`
-/

namespace A174913.P15949420072561037371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174913.P15949420072561037371

/-! ## A174913.P12091722091463474880

`∩[A001838(n+1), A023208(n+1)]`
-/

namespace A174913.P12091722091463474880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174913.P12091722091463474880

/-! ## A174913.P11050613337613860704

`∩[A023208(n+1), A054799(n+1)]`
-/

namespace A174913.P11050613337613860704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174913.P11050613337613860704

/-! ## A174913.P15236497985161034556

`∩[A023208(n+1), A063693(n+1)]`
-/

namespace A174913.P15236497985161034556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174913.P15236497985161034556

/-! ## A174913.P14155903391916987798

`∩[A023208(n+1), A063700(n+1)]`
-/

namespace A174913.P14155903391916987798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174913.P14155903391916987798

/-! ## A174913.P9095178277541070720

`∩[A023208(n+1), A073534(n+1)]`
-/

namespace A174913.P9095178277541070720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174913.P9095178277541070720

/-! ## A174913.P16858059045891470892

`∩[A023208(n+1), A124588(n+1)]`
-/

namespace A174913.P16858059045891470892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174913.P16858059045891470892

/-! ## A174913.P12608832136190110460

`∩[A001359(n+1), A162338(n+1)]`
-/

namespace A174913.P12608832136190110460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174913.P12608832136190110460

/-!
# A174914: A symmetrical triangle sequence T(n, m) = 2 + binomial(n, m)^3 - 3*binomial(n, m)*Eulerian(n+1, m) + Eulerian(n+1, m)^3.

The programs for A174914, there is no canonical definition to state claims against.
-/

/-! ## A174914.P10361653829641051319

`A349396(10^A276777(n))²+A156916(n)*A276777(n)`
-/

namespace A174914.P10361653829641051319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349396 (SequenceMachineLib.roundAway ((10 : ℚ) ^ (A276777 n : ℤ))).toNat ^ 2 + A156916 n * A276777 n

end

end A174914.P10361653829641051319

/-! ## A174914.P15252019760788254193

`(34%A000043(A090642(n)))²+A156916(n)*A276777(n)`
-/

namespace A174914.P15252019760788254193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 34 (A000043 (A090642 n).toNat) ^ 2 + A156916 n * A276777 n

end

end A174914.P15252019760788254193

/-! ## A174914.P9044722679426530380

`(A156916(n)-A348810(n)!)²+A156916(n)*A276777(n)`
-/

namespace A174914.P9044722679426530380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A156916 n - (Nat.factorial (A348810 n).toNat : ℤ)) ^ 2 + A156916 n * A276777 n

end

end A174914.P9044722679426530380

/-!
# A174915: Numbers p such that p, q=p+2 and p+2*q are all primes.

The programs for A174915, there is no canonical definition to state claims against.
-/

/-! ## A174915.P7942332191097684844

`p?[A088878(n+1)-2]`
-/

namespace A174915.P7942332191097684844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088878 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174915.P7942332191097684844

/-! ## A174915.P16845592737831981383

`p?[2*A174100(n+1)-1]`
-/

namespace A174915.P16845592737831981383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174100 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174915.P16845592737831981383

/-! ## A174915.P15429161840650082330

`p?[A091180(n+1)%A088878(n+1)]`
-/

namespace A174915.P15429161840650082330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091180 (n + 1)) (A088878 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174915.P15429161840650082330

/-! ## A174915.P10249375516040640325

`p?[A023209(n+1)+2]-2`
-/

namespace A174915.P10249375516040640325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023209 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A174915.P10249375516040640325

/-! ## A174915.P8476494089255908533

`∩[A001359(n+1), A023209(n+1)]`
-/

namespace A174915.P8476494089255908533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174915.P8476494089255908533

/-! ## A174915.P864230684447542567

`∩[A001838(n+1), A023209(n+1)]`
-/

namespace A174915.P864230684447542567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174915.P864230684447542567

/-! ## A174915.P4897500056245925049

`∩[A023209(n+1), A054799(n+1)]`
-/

namespace A174915.P4897500056245925049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174915.P4897500056245925049

/-! ## A174915.P17004356562193761753

`∩[A023209(n+1), A063693(n+1)]`
-/

namespace A174915.P17004356562193761753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174915.P17004356562193761753

/-! ## A174915.P3868309232828332845

`∩[A023209(n+1), A063700(n+1)]`
-/

namespace A174915.P3868309232828332845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174915.P3868309232828332845

/-! ## A174915.P12105644599488097629

`∩[A023209(n+1), A073534(n+1)]`
-/

namespace A174915.P12105644599488097629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174915.P12105644599488097629

/-! ## A174915.P16772013837217491053

`∩[A023209(n+1), A124588(n+1)]`
-/

namespace A174915.P16772013837217491053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174915.P16772013837217491053

/-! ## A174915.P12324333175566133580

`∩[A023209(n+1), A181747(n+1)]`
-/

namespace A174915.P12324333175566133580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174915.P12324333175566133580

/-! ## A174915.P10184466297738645197

`∩[A023209(n+1), A238528(n+1)]`
-/

namespace A174915.P10184466297738645197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174915.P10184466297738645197

/-! ## A174915.P420579454876340529

`∩[A023209(n+1), A280255(n+1)]`
-/

namespace A174915.P420579454876340529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174915.P420579454876340529

/-! ## A174915.P7673111332891820793

`∩[A023209(n+1), A280590(n+1)]`
-/

namespace A174915.P7673111332891820793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174915.P7673111332891820793

/-! ## A174915.P8023694283472218846

`∩[A023209(n+1), A378983(n+1)]`
-/

namespace A174915.P8023694283472218846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174915.P8023694283472218846

/-! ## A174915.P12542053851730359284

`∩[A023209(n+1), A394509(n+1)]`
-/

namespace A174915.P12542053851730359284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174915.P12542053851730359284

/-! ## A174915.P15464197598661754146

`∩[A023209(n+1), A395788(n+1)]`
-/

namespace A174915.P15464197598661754146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174915.P15464197598661754146

/-! ## A174915.P870649043765405684

`A280560(2*n+1)+p?[A023209(n+1)+2]`
-/

namespace A174915.P870649043765405684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023209 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (2 * n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174915.P870649043765405684

/-!
# A174916: Lesser of twin primes p1 such that p1 + p2^2 - p1^2 is a prime number.

The programs for A174916, the canonical program `A174916.P15451532924887177754` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174916 has offset 1).

The definition of A174916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174916.P15451532924887177754

`p?[A023218(n+1)+2]-2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A174916

/-- `p?[A023218(n+1)+2]-2` -/
def P15451532924887177754.Spec : Prop :=
  ∀ n, P15451532924887177754.a n = A174916 (n + 1)

theorem P15451532924887177754.correct : P15451532924887177754.Spec := by
  intro n
  simp only [A174916, Nat.add_sub_cancel]

end A174916

/-! ## A174916.P8893341897333184262

`∩[A001097(n+1), A023218(n+1)]`
-/

namespace A174916.P8893341897333184262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174916.P8893341897333184262

namespace A174916

/-- `∩[A001097(n+1), A023218(n+1)]` -/
def P8893341897333184262.Spec : Prop :=
  ∀ n, (P8893341897333184262.a n : ℤ) = A174916 (n + 1)

end A174916

/-! ## A174916.P14114023837514503148

`∩[A001359(n+1), A023218(n+1)]`
-/

namespace A174916.P14114023837514503148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174916.P14114023837514503148

namespace A174916

/-- `∩[A001359(n+1), A023218(n+1)]` -/
def P14114023837514503148.Spec : Prop :=
  ∀ n, (P14114023837514503148.a n : ℤ) = A174916 (n + 1)

end A174916

/-! ## A174916.P14567218538381984745

`∩[A001838(n+1), A023218(n+1)]`
-/

namespace A174916.P14567218538381984745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174916.P14567218538381984745

namespace A174916

/-- `∩[A001838(n+1), A023218(n+1)]` -/
def P14567218538381984745.Spec : Prop :=
  ∀ n, (P14567218538381984745.a n : ℤ) = A174916 (n + 1)

end A174916

/-! ## A174916.P15579866727542591645

`∩[A023218(n+1), A054799(n+1)]`
-/

namespace A174916.P15579866727542591645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174916.P15579866727542591645

namespace A174916

/-- `∩[A023218(n+1), A054799(n+1)]` -/
def P15579866727542591645.Spec : Prop :=
  ∀ n, (P15579866727542591645.a n : ℤ) = A174916 (n + 1)

end A174916

/-! ## A174916.P17001539622082157935

`∩[A023218(n+1), A063693(n+1)]`
-/

namespace A174916.P17001539622082157935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174916.P17001539622082157935

namespace A174916

/-- `∩[A023218(n+1), A063693(n+1)]` -/
def P17001539622082157935.Spec : Prop :=
  ∀ n, (P17001539622082157935.a n : ℤ) = A174916 (n + 1)

end A174916

/-! ## A174916.P10413739145092421617

`∩[A023218(n+1), A063700(n+1)]`
-/

namespace A174916.P10413739145092421617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174916.P10413739145092421617

namespace A174916

/-- `∩[A023218(n+1), A063700(n+1)]` -/
def P10413739145092421617.Spec : Prop :=
  ∀ n, (P10413739145092421617.a n : ℤ) = A174916 (n + 1)

end A174916

/-! ## A174916.P11757034327049003940

`∩[A023218(n+1), A073534(n+1)]`
-/

namespace A174916.P11757034327049003940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174916.P11757034327049003940

namespace A174916

/-- `∩[A023218(n+1), A073534(n+1)]` -/
def P11757034327049003940.Spec : Prop :=
  ∀ n, (P11757034327049003940.a n : ℤ) = A174916 (n + 1)

end A174916

/-! ## A174916.P759715130573301199

`∩[A023218(n+1), A124588(n+1)]`
-/

namespace A174916.P759715130573301199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174916.P759715130573301199

namespace A174916

/-- `∩[A023218(n+1), A124588(n+1)]` -/
def P759715130573301199.Spec : Prop :=
  ∀ n, (P759715130573301199.a n : ℤ) = A174916 (n + 1)

end A174916

/-! ## A174916.P13274889978932938148

`∩[A023218(n+1), A141830(n+1)]`
-/

namespace A174916.P13274889978932938148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174916.P13274889978932938148

namespace A174916

/-- `∩[A023218(n+1), A141830(n+1)]` -/
def P13274889978932938148.Spec : Prop :=
  ∀ n, (P13274889978932938148.a n : ℤ) = A174916 (n + 1)

end A174916

/-! ## A174916.P205443492593925880

`∩[A023218(n+1), A171821(n+1)]`
-/

namespace A174916.P205443492593925880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174916.P205443492593925880

namespace A174916

/-- `∩[A023218(n+1), A171821(n+1)]` -/
def P205443492593925880.Spec : Prop :=
  ∀ n, (P205443492593925880.a n : ℤ) = A174916 (n + 1)

end A174916

/-! ## A174916.P7345659471864791024

`∩[A023218(n+1), A181747(n+1)]`
-/

namespace A174916.P7345659471864791024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174916.P7345659471864791024

namespace A174916

/-- `∩[A023218(n+1), A181747(n+1)]` -/
def P7345659471864791024.Spec : Prop :=
  ∀ n, (P7345659471864791024.a n : ℤ) = A174916 (n + 1)

end A174916

/-! ## A174916.P12159793967575253728

`∩[A023218(n+1), A238528(n+1)]`
-/

namespace A174916.P12159793967575253728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174916.P12159793967575253728

namespace A174916

/-- `∩[A023218(n+1), A238528(n+1)]` -/
def P12159793967575253728.Spec : Prop :=
  ∀ n, (P12159793967575253728.a n : ℤ) = A174916 (n + 1)

end A174916

/-! ## A174916.P16708391564641766468

`∩[A023218(n+1), A280255(n+1)]`
-/

namespace A174916.P16708391564641766468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174916.P16708391564641766468

namespace A174916

/-- `∩[A023218(n+1), A280255(n+1)]` -/
def P16708391564641766468.Spec : Prop :=
  ∀ n, (P16708391564641766468.a n : ℤ) = A174916 (n + 1)

end A174916

/-! ## A174916.P1677050067870156562

`∩[A023218(n+1), A280590(n+1)]`
-/

namespace A174916.P1677050067870156562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174916.P1677050067870156562

namespace A174916

/-- `∩[A023218(n+1), A280590(n+1)]` -/
def P1677050067870156562.Spec : Prop :=
  ∀ n, (P1677050067870156562.a n : ℤ) = A174916 (n + 1)

end A174916

/-! ## A174916.P7440374494395438410

`∩[A023218(n+1), A378983(n+1)]`
-/

namespace A174916.P7440374494395438410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174916.P7440374494395438410

namespace A174916

/-- `∩[A023218(n+1), A378983(n+1)]` -/
def P7440374494395438410.Spec : Prop :=
  ∀ n, (P7440374494395438410.a n : ℤ) = A174916 (n + 1)

end A174916

/-! ## A174916.P13341810889888913242

`∩[A023218(n+1), A394509(n+1)]`
-/

namespace A174916.P13341810889888913242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174916.P13341810889888913242

namespace A174916

/-- `∩[A023218(n+1), A394509(n+1)]` -/
def P13341810889888913242.Spec : Prop :=
  ∀ n, (P13341810889888913242.a n : ℤ) = A174916 (n + 1)

end A174916

/-! ## A174916.P6110350029230450047

`∩[A023218(n+1), A395788(n+1)]`
-/

namespace A174916.P6110350029230450047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174916.P6110350029230450047

namespace A174916

/-- `∩[A023218(n+1), A395788(n+1)]` -/
def P6110350029230450047.Spec : Prop :=
  ∀ n, (P6110350029230450047.a n : ℤ) = A174916 (n + 1)

end A174916

/-! ## A174916.P5724435765933378652

`∩[A023218(n+1), A274212(n+1)]`
-/

namespace A174916.P5724435765933378652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174916.P5724435765933378652

namespace A174916

/-- `∩[A023218(n+1), A274212(n+1)]` -/
def P5724435765933378652.Spec : Prop :=
  ∀ n, (P5724435765933378652.a n : ℤ) = A174916 (n + 1)

end A174916

/-! ## A174916.P6093037428133895615

`A118824(A217252(n+1))+p?[A023218(n+1)+2]`
-/

namespace A174916.P6093037428133895615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023218 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (A217252 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174916.P6093037428133895615

namespace A174916

/-- `A118824(A217252(n+1))+p?[A023218(n+1)+2]` -/
def P6093037428133895615.Spec : Prop :=
  ∀ n, P6093037428133895615.a n = A174916 (n + 1)

end A174916

/-!
# A174917: Lesser of twin primes p1 such that p2+(p2^2-p1^2) is a prime number.

The programs for A174917, the canonical program `A174917.P15119638385152416329` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174917 has offset 1).

The definition of A174917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174917.P16368221673803845693

`p?[A136051(n+1)-2]`
-/

namespace A174917.P16368221673803845693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136051 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174917.P16368221673803845693

namespace A174917

/-- `p?[A136051(n+1)-2]` -/
def P16368221673803845693.Spec : Prop :=
  ∀ n, P16368221673803845693.a n = A174917 (n + 1)

end A174917

/-! ## A174917.P15119638385152416329

`p?[A023219(n+1)+2]-2`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A174917

/-- `p?[A023219(n+1)+2]-2` -/
def P15119638385152416329.Spec : Prop :=
  ∀ n, P15119638385152416329.a n = A174917 (n + 1)

theorem P15119638385152416329.correct : P15119638385152416329.Spec := by
  intro n
  simp only [A174917, Nat.add_sub_cancel]

end A174917

/-! ## A174917.P14058599342801175382

`p?[A340759(n+1)+2]-2`
-/

namespace A174917.P14058599342801175382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340759 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A174917.P14058599342801175382

namespace A174917

/-- `p?[A340759(n+1)+2]-2` -/
def P14058599342801175382.Spec : Prop :=
  ∀ n, P14058599342801175382.a n = A174917 (n + 1)

end A174917

/-! ## A174917.P12792989748742588461

`∩[A001359(n+1), A023219(n+1)]`
-/

namespace A174917.P12792989748742588461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174917.P12792989748742588461

namespace A174917

/-- `∩[A001359(n+1), A023219(n+1)]` -/
def P12792989748742588461.Spec : Prop :=
  ∀ n, (P12792989748742588461.a n : ℤ) = A174917 (n + 1)

end A174917

/-! ## A174917.P11840057219162384191

`∩[A001838(n+1), A023219(n+1)]`
-/

namespace A174917.P11840057219162384191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174917.P11840057219162384191

namespace A174917

/-- `∩[A001838(n+1), A023219(n+1)]` -/
def P11840057219162384191.Spec : Prop :=
  ∀ n, (P11840057219162384191.a n : ℤ) = A174917 (n + 1)

end A174917

/-! ## A174917.P12682165447742836035

`∩[A023219(n+1), A054799(n+1)]`
-/

namespace A174917.P12682165447742836035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174917.P12682165447742836035

namespace A174917

/-- `∩[A023219(n+1), A054799(n+1)]` -/
def P12682165447742836035.Spec : Prop :=
  ∀ n, (P12682165447742836035.a n : ℤ) = A174917 (n + 1)

end A174917

/-! ## A174917.P3098350261187134434

`∩[A023219(n+1), A063693(n+1)]`
-/

namespace A174917.P3098350261187134434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174917.P3098350261187134434

namespace A174917

/-- `∩[A023219(n+1), A063693(n+1)]` -/
def P3098350261187134434.Spec : Prop :=
  ∀ n, (P3098350261187134434.a n : ℤ) = A174917 (n + 1)

end A174917

/-! ## A174917.P8056095279678480237

`∩[A023219(n+1), A063700(n+1)]`
-/

namespace A174917.P8056095279678480237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174917.P8056095279678480237

namespace A174917

/-- `∩[A023219(n+1), A063700(n+1)]` -/
def P8056095279678480237.Spec : Prop :=
  ∀ n, (P8056095279678480237.a n : ℤ) = A174917 (n + 1)

end A174917

/-! ## A174917.P319275593958733410

`∩[A023219(n+1), A073534(n+1)]`
-/

namespace A174917.P319275593958733410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174917.P319275593958733410

namespace A174917

/-- `∩[A023219(n+1), A073534(n+1)]` -/
def P319275593958733410.Spec : Prop :=
  ∀ n, (P319275593958733410.a n : ℤ) = A174917 (n + 1)

end A174917

/-! ## A174917.P12012276962188797002

`∩[A023219(n+1), A111166(n+1)]`
-/

namespace A174917.P12012276962188797002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174917.P12012276962188797002

namespace A174917

/-- `∩[A023219(n+1), A111166(n+1)]` -/
def P12012276962188797002.Spec : Prop :=
  ∀ n, (P12012276962188797002.a n : ℤ) = A174917 (n + 1)

end A174917

/-! ## A174917.P15461644316176924015

`∩[A023219(n+1), A124588(n+1)]`
-/

namespace A174917.P15461644316176924015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174917.P15461644316176924015

namespace A174917

/-- `∩[A023219(n+1), A124588(n+1)]` -/
def P15461644316176924015.Spec : Prop :=
  ∀ n, (P15461644316176924015.a n : ℤ) = A174917 (n + 1)

end A174917

/-! ## A174917.P6025062945204627961

`∩[A023219(n+1), A181747(n+1)]`
-/

namespace A174917.P6025062945204627961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174917.P6025062945204627961

namespace A174917

/-- `∩[A023219(n+1), A181747(n+1)]` -/
def P6025062945204627961.Spec : Prop :=
  ∀ n, (P6025062945204627961.a n : ℤ) = A174917 (n + 1)

end A174917

/-! ## A174917.P4261707269647630260

`∩[A023219(n+1), A280255(n+1)]`
-/

namespace A174917.P4261707269647630260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174917.P4261707269647630260

namespace A174917

/-- `∩[A023219(n+1), A280255(n+1)]` -/
def P4261707269647630260.Spec : Prop :=
  ∀ n, (P4261707269647630260.a n : ℤ) = A174917 (n + 1)

end A174917

/-! ## A174917.P4151299922021437

`∩[A023219(n+1), A280590(n+1)]`
-/

namespace A174917.P4151299922021437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174917.P4151299922021437

namespace A174917

/-- `∩[A023219(n+1), A280590(n+1)]` -/
def P4151299922021437.Spec : Prop :=
  ∀ n, (P4151299922021437.a n : ℤ) = A174917 (n + 1)

end A174917

/-! ## A174917.P5556493053164765435

`∩[A001359(n+1), A340759(n+1)]`
-/

namespace A174917.P5556493053164765435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174917.P5556493053164765435

namespace A174917

/-- `∩[A001359(n+1), A340759(n+1)]` -/
def P5556493053164765435.Spec : Prop :=
  ∀ n, (P5556493053164765435.a n : ℤ) = A174917 (n + 1)

end A174917

/-! ## A174917.P1749141706703469871

`∩[A001838(n+1), A340759(n+1)]`
-/

namespace A174917.P1749141706703469871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174917.P1749141706703469871

namespace A174917

/-- `∩[A001838(n+1), A340759(n+1)]` -/
def P1749141706703469871.Spec : Prop :=
  ∀ n, (P1749141706703469871.a n : ℤ) = A174917 (n + 1)

end A174917

/-! ## A174917.P4381645418214505567

`∩[A054799(n+1), A340759(n+1)]`
-/

namespace A174917.P4381645418214505567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174917.P4381645418214505567

namespace A174917

/-- `∩[A054799(n+1), A340759(n+1)]` -/
def P4381645418214505567.Spec : Prop :=
  ∀ n, (P4381645418214505567.a n : ℤ) = A174917 (n + 1)

end A174917

/-! ## A174917.P6016542856390733848

`∩[A023219(n+1), A378983(n+1)]`
-/

namespace A174917.P6016542856390733848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174917.P6016542856390733848

namespace A174917

/-- `∩[A023219(n+1), A378983(n+1)]` -/
def P6016542856390733848.Spec : Prop :=
  ∀ n, (P6016542856390733848.a n : ℤ) = A174917 (n + 1)

end A174917

/-! ## A174917.P11378625770795968796

`∩[A063693(n+1), A340759(n+1)]`
-/

namespace A174917.P11378625770795968796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174917.P11378625770795968796

namespace A174917

/-- `∩[A063693(n+1), A340759(n+1)]` -/
def P11378625770795968796.Spec : Prop :=
  ∀ n, (P11378625770795968796.a n : ℤ) = A174917 (n + 1)

end A174917

/-!
# A174918: Triangle read by rows: T(n,k) = 1 + (A022166(n,k) - binomial(n,k))^2.

The programs for A174918, the canonical program `A174918.P17161499693219016145` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174918 has offset 0).

The definition of A174918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 362 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174918.P12904811192901803263

`1+(1-A176420(n))²`
-/

namespace A174918.P12904811192901803263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (1 - A176420 n) ^ 2

end

end A174918.P12904811192901803263

namespace A174918

/-- `1+(1-A176420(n))²` -/
def P12904811192901803263.Spec : Prop :=
  ∀ n, P12904811192901803263.a n = A174918 n

theorem P12904811192901803263.correct : P12904811192901803263.Spec := by
  intro n
  simp only [A174918, Nat.add_sub_cancel, A174918.P12904811192901803263.a, A174918.P17161499693219016145.a, A007318, A007318.P11755526479805562006.a, A022166, A022166.P334113423595562006.a, A176420, A176420.P16704905755318038212.a, A014473, A014473.P9301799580602651200.a, A157638, A157638.P4487463188860279648.a, A005329, A005329.P11063078373449312137.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A174918

/-! ## A174918.P17161499693219016145

`(A007318(n)-A022166(n))²+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A174918

/-- `(A007318(n)-A022166(n))²+1` -/
def P17161499693219016145.Spec : Prop :=
  ∀ n, P17161499693219016145.a n = A174918 n

theorem P17161499693219016145.correct : P17161499693219016145.Spec := by
  intro n
  simp only [A174918]

end A174918

/-! ## A174918.P2188807224554154220

`(1-A176420(n))^(A000007(n)+2)+1`
-/

namespace A174918.P2188807224554154220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A176420 n : ℚ) ^ (A000007 n + 2 : ℤ) + 1

end

end A174918.P2188807224554154220

namespace A174918

/-- `(1-A176420(n))^(A000007(n)+2)+1` -/
def P2188807224554154220.Spec : Prop :=
  ∀ n, P2188807224554154220.a n = (A174918 n : ℚ)

end A174918

/-! ## A174918.P5101516120182445000

`(1-A176420(n))²-A008683(A007918(n))`
-/

namespace A174918.P5101516120182445000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A176420 n) ^ 2 - A008683 (A007918 n).toNat

end

end A174918.P5101516120182445000

namespace A174918

/-- `(1-A176420(n))²-A008683(A007918(n))` -/
def P5101516120182445000.Spec : Prop :=
  ∀ n, P5101516120182445000.a n = A174918 n

end A174918

/-! ## A174918.P2308499624750872554

`A160457(A176420(n))`
-/

namespace A174918.P2308499624750872554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160457 (A176420 n).toNat

end

end A174918.P2308499624750872554

namespace A174918

/-- `A160457(A176420(n))` -/
def P2308499624750872554.Spec : Prop :=
  ∀ n, P2308499624750872554.a n = A174918 n

end A174918

/-!
# A174919: Triangle read by rows: T(n,k) = 1 + (A022167(n,k) - binomial(n,k))^2.

The programs for A174919, there is no canonical definition to state claims against.
-/

/-! ## A174919.P1594071781119087130

`(1-A176421(n))²+1`
-/

namespace A174919.P1594071781119087130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A176421 n) ^ 2 + 1

end

end A174919.P1594071781119087130

/-! ## A174919.P7457754250375233152

`(A007318(n)-A022167(n))²+1`
-/

namespace A174919.P7457754250375233152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007318 n - A022167 n) ^ 2 + 1

end

end A174919.P7457754250375233152

/-! ## A174919.P4751685295141027210

`(A022167(n)-A174527(n))²+1`
-/

namespace A174919.P4751685295141027210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022167 n - A174527 n) ^ 2 + 1

end

end A174919.P4751685295141027210

/-! ## A174919.P1082204783770515518

`(sqrt(A008459(n))-A022167(n))²+1`
-/

namespace A174919.P1082204783770515518
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A008459 n : ℝ) - (A022167 n : ℝ)) ^ 2 + 1

end

end A174919.P1082204783770515518

/-! ## A174919.P6738937845927814143

`or((1-A176421(n))², A007318(∑[n]))`
-/

namespace A174919.P6738937845927814143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((1 - A176421 n) ^ 2) (A007318 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A174919.P6738937845927814143

/-!
# A174920: List of primes p1 such that (p1,p2) are twin primes where both 2*p1+p2 and p1+2*p2 are primes.

The programs for A174920, there is no canonical definition to state claims against.
-/

/-! ## A174920.P15923305310648160435

`A132929(n+1)-1`
-/

namespace A174920.P15923305310648160435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132929 (n + 1) - 1

end

end A174920.P15923305310648160435

/-! ## A174920.P9893518009839507818

`A177336(n+1)-2`
-/

namespace A174920.P9893518009839507818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177336 (n + 1) - 2

end

end A174920.P9893518009839507818

/-! ## A174920.P4556181738324681022

`A177335(4*n+1)`
-/

namespace A174920.P4556181738324681022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177335 (4 * n + 1)

end

end A174920.P4556181738324681022

/-! ## A174920.P6662365965417439862

`or(1, A177335(A016813(n)))`
-/

namespace A174920.P6662365965417439862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A177335 (A016813 n).toNat)

end

end A174920.P6662365965417439862

/-! ## A174920.P3557277962012197011

`A177335(A008574(n+1))-2`
-/

namespace A174920.P3557277962012197011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177335 (A008574 (n + 1)).toNat - 2

end

end A174920.P3557277962012197011

/-! ## A174920.P17752274538932926406

`A177335(A008586(n+1))-2`
-/

namespace A174920.P17752274538932926406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177335 (A008586 (n + 1)).toNat - 2

end

end A174920.P17752274538932926406

/-! ## A174920.P6438906400126041302

`or(1, A177335(A008586(n)+1))`
-/

namespace A174920.P6438906400126041302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A177335 (A008586 n + 1).toNat)

end

end A174920.P6438906400126041302

/-! ## A174920.P17114435690762347584

`abs(A132929(n+1)+A033999(2*n+1))`
-/

namespace A174920.P17114435690762347584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132929 (n + 1) + A033999 (2 * n + 1)|

end

end A174920.P17114435690762347584

/-! ## A174920.P13646581857878277778

`A177335(A016813(n))%A177336(n+1)`
-/

namespace A174920.P13646581857878277778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177335 (A016813 n).toNat) (A177336 (n + 1))

end

end A174920.P13646581857878277778

/-! ## A174920.P7598308429988963976

`∩[A001359(n+1), A327700(n+1)]`
-/

namespace A174920.P7598308429988963976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174920.P7598308429988963976

/-! ## A174920.P3470053351978932362

`∩[A174913(n+1), A327700(n+1)]`
-/

namespace A174920.P3470053351978932362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174920.P3470053351978932362

/-! ## A174920.P3723286931452481463

`∩[A001359(n+1), A181848(n+1)]`
-/

namespace A174920.P3723286931452481463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174920.P3723286931452481463

/-! ## A174920.P3365785777215284051

`∩[A174913(n+1), A181848(n+1)]`
-/

namespace A174920.P3365785777215284051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174920.P3365785777215284051

/-! ## A174920.P12713330674244866885

`∩[A181848(n+1), A378983(n+1)]`
-/

namespace A174920.P12713330674244866885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174920.P12713330674244866885

/-! ## A174920.P10315715879428374374

`∩[A054799(n+1), A181848(n+1)]`
-/

namespace A174920.P10315715879428374374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174920.P10315715879428374374

/-! ## A174920.P13464569657827958891

`∩[A063700(n+1), A181848(n+1)]`
-/

namespace A174920.P13464569657827958891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174920.P13464569657827958891

/-! ## A174920.P360252183879514966

`∩[A124588(n+1), A181848(n+1)]`
-/

namespace A174920.P360252183879514966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174920.P360252183879514966

/-! ## A174920.P166313094606566083

`∩[A181747(n+1), A181848(n+1)]`
-/

namespace A174920.P166313094606566083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174920.P166313094606566083

/-! ## A174920.P4858880629875540755

`∩[A054799(n+1), A327700(n+1)]`
-/

namespace A174920.P4858880629875540755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174920.P4858880629875540755

/-! ## A174920.P1772520073041572754

`∩[A063700(n+1), A327700(n+1)]`
-/

namespace A174920.P1772520073041572754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174920.P1772520073041572754

/-!
# A174921: Triangle read by rows: T(n,k) = 1 + (A022168(n,k) - binomial(n,k))^2.

The programs for A174921, there is no canonical definition to state claims against.
-/

/-! ## A174921.P1813105267566475918

`(1-A176422(n))²+1`
-/

namespace A174921.P1813105267566475918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A176422 n) ^ 2 + 1

end

end A174921.P1813105267566475918

/-! ## A174921.P15230641712220614689

`(A007318(n)-A022168(n))²+1`
-/

namespace A174921.P15230641712220614689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007318 n - A022168 n) ^ 2 + 1

end

end A174921.P15230641712220614689

/-! ## A174921.P12127610286916149281

`(A022168(n)-A174528(n))²+1`
-/

namespace A174921.P12127610286916149281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022168 n - A174528 n) ^ 2 + 1

end

end A174921.P12127610286916149281

/-! ## A174921.P294383492729784058

`(Δ[A102363(n)]-A022168(n))²+1`
-/

namespace A174921.P294383492729784058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A022168 n) ^ 2 + 1

end

end A174921.P294383492729784058

/-! ## A174921.P3451606508524775530

`A098749(A176422(n))`
-/

namespace A174921.P3451606508524775530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098749 (A176422 n).toNat

end

end A174921.P3451606508524775530

/-!
# A174922: Lesser of twin primes p1 such that p1+(p2^2-p1^2) and p2+(p2^2-p1^2) are prime numbers.

The programs for A174922, there is no canonical definition to state claims against.
-/

/-! ## A174922.P11224345724268543698

`6*A216847(n+1)-1`
-/

namespace A174922.P11224345724268543698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A216847 (n + 1) - 1

end

end A174922.P11224345724268543698

/-! ## A174922.P3211582101237238258

`∩[A001359(n+1), A341215(n+1)]`
-/

namespace A174922.P3211582101237238258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174922.P3211582101237238258

/-! ## A174922.P11935355887691842199

`A008683(Δ[A007504(n)])+6*A216847(n+1)`
-/

namespace A174922.P11935355887691842199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (n + 1) - f1 n).toNat + 6 * A216847 (n + 1)

end

end A174922.P11935355887691842199

/-! ## A174922.P5693727194910656514

`A008683(A059634(n+1))+6*A216847(n+1)`
-/

namespace A174922.P5693727194910656514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A059634 (n + 1)).toNat + 6 * A216847 (n + 1)

end

end A174922.P5693727194910656514

/-! ## A174922.P396493884815002619

`A008683(A105562(n+1))+6*A216847(n+1)`
-/

namespace A174922.P396493884815002619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A105562 (n + 1)).toNat + 6 * A216847 (n + 1)

end

end A174922.P396493884815002619

/-! ## A174922.P12247983740112314077

`A008683(A257974(n+1))+6*A216847(n+1)`
-/

namespace A174922.P12247983740112314077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A257974 (n + 1)).toNat + 6 * A216847 (n + 1)

end

end A174922.P12247983740112314077

/-! ## A174922.P17925207099164399016

`A008683(A244572(n+2))+6*A216847(n+1)`
-/

namespace A174922.P17925207099164399016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A244572 (n + 2)).toNat + 6 * A216847 (n + 1)

end

end A174922.P17925207099164399016

/-! ## A174922.P13426149056438149440

`∩[A341215(n+1), A378983(n+1)]`
-/

namespace A174922.P13426149056438149440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174922.P13426149056438149440

/-! ## A174922.P16649434121015908476

`∩[A054799(n+1), A341215(n+1)]`
-/

namespace A174922.P16649434121015908476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174922.P16649434121015908476

/-! ## A174922.P18279740313687112289

`∩[A063700(n+1), A341215(n+1)]`
-/

namespace A174922.P18279740313687112289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174922.P18279740313687112289

/-! ## A174922.P15724545451001545225

`∩[A111166(n+1), A341215(n+1)]`
-/

namespace A174922.P15724545451001545225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174922.P15724545451001545225

/-! ## A174922.P17577462286608403481

`∩[A124588(n+1), A341215(n+1)]`
-/

namespace A174922.P17577462286608403481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174922.P17577462286608403481

/-! ## A174922.P11209458366053256685

`∩[A181747(n+1), A341215(n+1)]`
-/

namespace A174922.P11209458366053256685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174922.P11209458366053256685

/-! ## A174922.P7613937241129721227

`∩[A063693(n+1), A341215(n+1)]`
-/

namespace A174922.P7613937241129721227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174922.P7613937241129721227

/-! ## A174922.P11214632845582829195

`∩[A280255(n+1), A341215(n+1)]`
-/

namespace A174922.P11214632845582829195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174922.P11214632845582829195

/-! ## A174922.P16082956769949476397

`A008683(A035095(n+1))+6*A216847(n+1)`
-/

namespace A174922.P16082956769949476397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A035095 (n + 1)).toNat + 6 * A216847 (n + 1)

end

end A174922.P16082956769949476397

/-! ## A174922.P10628179550235075367

`∩[A341215(n+1), A394509(n+1)]`
-/

namespace A174922.P10628179550235075367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174922.P10628179550235075367

/-! ## A174922.P13132705075762190733

`∩[A341215(n+1), A395788(n+1)]`
-/

namespace A174922.P13132705075762190733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174922.P13132705075762190733

/-! ## A174922.P7833075983714071996

`∩[A073534(n+1), A341215(n+1)]`
-/

namespace A174922.P7833075983714071996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174922.P7833075983714071996

/-!
# A174924: Semiprimes sp(k) = q * r such that sum of digits of sp(k) equals sum of digits of the semiprime index k.

The programs for A174924, there is no canonical definition to state claims against.
-/

/-! ## A174924.P16782811717226289091

`A001358(A133608(n+1))`
-/

namespace A174924.P16782811717226289091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A133608 (n + 1)).toNat

end

end A174924.P16782811717226289091

/-! ## A174924.P12840051850912422695

`A088707(A133608(n+1))-A007318(∑[n])`
-/

namespace A174924.P12840051850912422695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (A133608 (n + 1)).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A174924.P12840051850912422695

/-! ## A174924.P2355286361692620117

`A088707(A133608(n+1))-A014963(6*(n+1))`
-/

namespace A174924.P2355286361692620117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (A133608 (n + 1)).toNat - A014963 (6 * (n + 1))

end

end A174924.P2355286361692620117

/-! ## A174924.P4933877222629668852

`A088707(A133608(n+1))-A000041(C(2, n+2))`
-/

namespace A174924.P4933877222629668852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (A133608 (n + 1)).toNat - A000041 (Nat.choose 2 (n + 2))

end

end A174924.P4933877222629668852

/-! ## A174924.P7342985055399960892

`A088707(A133608(n+1))-((-1)^A007318(n))²`
-/

namespace A174924.P7342985055399960892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088707 (A133608 (n + 1)).toNat : ℚ) - ((-1 : ℚ) ^ (A007318 n : ℤ)) ^ 2

end

end A174924.P7342985055399960892

/-!
# A174925: Decimal expansion of (2+sqrt(6))/4.

The programs for A174925, there is no canonical definition to state claims against.
-/

/-! ## A174925.P8934566200559300266

`A187110(round(acot(n)+n)-1)`
-/

namespace A174925.P8934566200559300266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187110 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) - 1).toNat

end

end A174925.P8934566200559300266

/-! ## A174925.P2627541284950787772

`A187110(xor(-1, round(-(acot(n)+n))))`
-/

namespace A174925.P2627541284950787772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187110 (Int.xor (-1) (SequenceMachineLib.roundAway (-(SequenceMachineLib.acot (n : ℝ) + (n : ℝ))))).toNat

end

end A174925.P2627541284950787772

/-! ## A174925.P10435692334107036256

`A187110(A004275(n)+1-n)`
-/

namespace A174925.P10435692334107036256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187110 (A004275 n + (1 - (n : ℤ))).toNat

end

end A174925.P10435692334107036256

/-! ## A174925.P2951293742532719456

`A187110(1-(n-A004275(n)))`
-/

namespace A174925.P2951293742532719456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187110 (1 - ((n : ℤ) - A004275 n)).toNat

end

end A174925.P2951293742532719456

/-! ## A174925.P9642650405643432120

`A187110(A024000(n)+A004275(n))`
-/

namespace A174925.P9642650405643432120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187110 (A024000 n + A004275 n).toNat

end

end A174925.P9642650405643432120

/-! ## A174925.P15018065297673986407

`A187110(gcd(A004275(n), A023443(n)))`
-/

namespace A174925.P15018065297673986407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187110 (Int.gcd (A004275 n) (A023443 n))

end

end A174925.P15018065297673986407

/-!
# A174927: Periodic sequence: repeat (1,64).

The programs for A174927, the canonical program `A174927.P6838637072554432277` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174927 has offset 0).

The definition of A174927 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174927.P6838637072554432277

`a(n-2)` with `a(0)=1, a(1)=64`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A174927

/-- `a(n-2)` -/
def P6838637072554432277.Spec : Prop :=
  ∀ n, (P6838637072554432277.a n : ℤ) = A174927 n

theorem P6838637072554432277.correct : P6838637072554432277.Spec := by
  intro n
  simp only [A174927]

end A174927

/-!
# A174928: Partial sums of A174927.

The programs for A174928, the canonical program `A174928.P8698198421033276200` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174928 has offset 0).

The definition of A174928 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174928.P8698198421033276200

`a(n-2)+65` with `a(0)=1, a(1)=65`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A174928

/-- `a(n-2)+65` -/
def P8698198421033276200.Spec : Prop :=
  ∀ n, (P8698198421033276200.a n : ℤ) = A174928 n

theorem P8698198421033276200.correct : P8698198421033276200.Spec := by
  intro n
  simp only [A174928]

end A174928

/-! ## A174928.P138456198844159727

`(n+1)%2+65*floor((n+1)/2)`
-/

namespace A174928.P138456198844159727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 2 : ℕ) : ℤ) + 65 * ⌊(n + 1 : ℚ) / 2⌋

end

end A174928.P138456198844159727

namespace A174928

/-- `(n+1)%2+65*floor((n+1)/2)` -/
def P138456198844159727.Spec : Prop :=
  ∀ n, P138456198844159727.a n = A174928 n

end A174928

/-! ## A174928.P4094189247198640366

`(67+130*n-63*(-1)^n)/4`
-/

namespace A174928.P4094189247198640366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((67 + 130 * n : ℤ) - 63 * (-1) ^ n : ℚ) / 4

end

end A174928.P4094189247198640366

namespace A174928

/-- `(67+130*n-63*(-1)^n)/4` -/
def P4094189247198640366.Spec : Prop :=
  ∀ n, P4094189247198640366.a n = (A174928 n : ℚ)

theorem P4094189247198640366.correct : P4094189247198640366.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A174928, Nat.add_sub_cancel, A174928.P4094189247198640366.a, A174928.P8698198421033276200.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A174928, Nat.add_sub_cancel, A174928.P4094189247198640366.a, A174928.P8698198421033276200.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A174928

/-! ## A174928.P5803418474712957861

`∑[64^(n%2)]`
-/

namespace A174928.P5803418474712957861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174928.P5803418474712957861

namespace A174928

/-- `∑[64^(n%2)]` -/
def P5803418474712957861.Spec : Prop :=
  ∀ n, (P5803418474712957861.a n : ℤ) = A174928 n

end A174928

/-! ## A174928.P13274867112513086640

`∑[64^and(1, n)]`
-/

namespace A174928.P13274867112513086640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174928.P13274867112513086640

namespace A174928

/-- `∑[64^and(1, n)]` -/
def P13274867112513086640.Spec : Prop :=
  ∀ n, (P13274867112513086640.a n : ℤ) = A174928 n

end A174928

/-! ## A174928.P3680212406330492647

`∑[8^Δ[or(1, n)]]`
-/

namespace A174928.P3680212406330492647
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174928.P3680212406330492647

namespace A174928

/-- `∑[8^Δ[or(1, n)]]` -/
def P3680212406330492647.Spec : Prop :=
  ∀ n, P3680212406330492647.a n = (A174928 n : ℚ)

end A174928

/-! ## A174928.P8068570649464446471

`∑[gcd(2, n+1)^6]`
-/

namespace A174928.P8068570649464446471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) ^ 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174928.P8068570649464446471

namespace A174928

/-- `∑[gcd(2, n+1)^6]` -/
def P8068570649464446471.Spec : Prop :=
  ∀ n, (P8068570649464446471.a n : ℤ) = A174928 n

end A174928

/-! ## A174928.P6685396645716694584

`∑[65-a(n-1)]` with `a(0)=1`
-/

namespace A174928.P6685396645716694584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  65 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174928.P6685396645716694584

namespace A174928

/-- `∑[65-a(n-1)]` -/
def P6685396645716694584.Spec : Prop :=
  ∀ n, P6685396645716694584.a n = A174928 n

end A174928

/-! ## A174928.P9043693244468770520

`∑[gcd(8, (n-1)^3)²]`
-/

namespace A174928.P9043693244468770520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 (((n : ℤ) - 1) ^ 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174928.P9043693244468770520

namespace A174928

/-- `∑[gcd(8, (n-1)^3)²]` -/
def P9043693244468770520.Spec : Prop :=
  ∀ n, (P9043693244468770520.a n : ℤ) = A174928 n

end A174928

/-! ## A174928.P14778142659734387090

`∑[or(n+1, -2)^6]`
-/

namespace A174928.P14778142659734387090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-2) ^ 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174928.P14778142659734387090

namespace A174928

/-- `∑[or(n+1, -2)^6]` -/
def P14778142659734387090.Spec : Prop :=
  ∀ n, P14778142659734387090.a n = A174928 n

end A174928

/-! ## A174928.P12165356100127989269

`∑[C(8, (n+2)%2)²]`
-/

namespace A174928.P12165356100127989269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 8 ((n + 2) % 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174928.P12165356100127989269

namespace A174928

/-- `∑[C(8, (n+2)%2)²]` -/
def P12165356100127989269.Spec : Prop :=
  ∀ n, (P12165356100127989269.a n : ℤ) = A174928 n

end A174928

/-! ## A174928.P6637433039472871396

`∑[(or(n-1, -2)^3)²]`
-/

namespace A174928.P6637433039472871396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lor ((n : ℤ) - 1) (-2) ^ 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174928.P6637433039472871396

namespace A174928

/-- `∑[(or(n-1, -2)^3)²]` -/
def P6637433039472871396.Spec : Prop :=
  ∀ n, P6637433039472871396.a n = A174928 n

end A174928

/-! ## A174928.P9400313441365365877

`1-(a(n-1)-65*n)` with `a(0)=1`
-/

namespace A174928.P9400313441365365877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a (n - 1) - (65 * n : ℤ))

end

end A174928.P9400313441365365877

namespace A174928

/-- `1-(a(n-1)-65*n)` -/
def P9400313441365365877.Spec : Prop :=
  ∀ n, P9400313441365365877.a n = A174928 n

end A174928

/-! ## A174928.P13396124254523380170

`∑[(-gcd(n-1, 2*n))^6]`
-/

namespace A174928.P13396124254523380170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(Int.gcd ((n : ℤ) - 1) (2 * n : ℤ) : ℤ)) ^ 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174928.P13396124254523380170

namespace A174928

/-- `∑[(-gcd(n-1, 2*n))^6]` -/
def P13396124254523380170.Spec : Prop :=
  ∀ n, P13396124254523380170.a n = A174928 n

end A174928

/-! ## A174928.P3250027054974698882

`∑[A174927(n)]`
-/

namespace A174928.P3250027054974698882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174928.P3250027054974698882

namespace A174928

/-- `∑[A174927(n)]` -/
def P3250027054974698882.Spec : Prop :=
  ∀ n, P3250027054974698882.a n = A174928 n

end A174928

/-! ## A174928.P10945221113310703831

`∑[A010689(n)²]`
-/

namespace A174928.P10945221113310703831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010689 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174928.P10945221113310703831

namespace A174928

/-- `∑[A010689(n)²]` -/
def P10945221113310703831.Spec : Prop :=
  ∀ n, P10945221113310703831.a n = A174928 n

end A174928

/-! ## A174928.P17997022862728231793

`∑[2^A010677(n)]`
-/

namespace A174928.P17997022862728231793
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A010677 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174928.P17997022862728231793

namespace A174928

/-- `∑[2^A010677(n)]` -/
def P17997022862728231793.Spec : Prop :=
  ∀ n, P17997022862728231793.a n = (A174928 n : ℚ)

end A174928

/-! ## A174928.P5880239566646791012

`∑[A010685(n)^3]`
-/

namespace A174928.P5880239566646791012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174928.P5880239566646791012

namespace A174928

/-- `∑[A010685(n)^3]` -/
def P5880239566646791012.Spec : Prop :=
  ∀ n, P5880239566646791012.a n = A174928 n

end A174928

/-! ## A174928.P12669347845089021092

`∑[4^A010674(n)]`
-/

namespace A174928.P12669347845089021092
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A010674 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174928.P12669347845089021092

namespace A174928

/-- `∑[4^A010674(n)]` -/
def P12669347845089021092.Spec : Prop :=
  ∀ n, P12669347845089021092.a n = (A174928 n : ℚ)

end A174928

/-! ## A174928.P6154193692529185384

`∑[(A010678(n)+1)²]`
-/

namespace A174928.P6154193692529185384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010678 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174928.P6154193692529185384

namespace A174928

/-- `∑[(A010678(n)+1)²]` -/
def P6154193692529185384.Spec : Prop :=
  ∀ n, P6154193692529185384.a n = A174928 n

end A174928

/-!
# A174929: Partial sums of A174928.

The programs for A174929, the canonical program `A174929.P14191682634992144574` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174929 has offset 0).

The definition of A174929 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174929.P14191682634992144574

`a(n-1)+a(n-2)-a(n-3)+65` with `a(0)=1, a(1)=66, a(2)=132`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A174929

/-- `a(n-1)+a(n-2)-a(n-3)+65` -/
def P14191682634992144574.Spec : Prop :=
  ∀ n, P14191682634992144574.a n = A174929 n

theorem P14191682634992144574.correct : P14191682634992144574.Spec := by
  intro n
  simp only [A174929]

end A174929

/-! ## A174929.P13510463130297914903

`(71+264*n+130*n²-63*(-1)^n)/8`
-/

namespace A174929.P13510463130297914903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((71 + 264 * n + 130 * n ^ 2 : ℤ) - 63 * (-1) ^ n : ℚ) / 8

end

end A174929.P13510463130297914903

namespace A174929

/-- `(71+264*n+130*n²-63*(-1)^n)/8` -/
def P13510463130297914903.Spec : Prop :=
  ∀ n, P13510463130297914903.a n = (A174929 n : ℚ)

theorem P13510463130297914903.correct : P13510463130297914903.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A174929, Nat.add_sub_cancel, A174929.P13510463130297914903.a, A174929.P14191682634992144574.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A174929, Nat.add_sub_cancel, A174929.P13510463130297914903.a, A174929.P14191682634992144574.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A174929

/-! ## A174929.P2125355664231774172

`∑[∑[64^(n%2)]]`
-/

namespace A174929.P2125355664231774172
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64 ^ (n % 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174929.P2125355664231774172

namespace A174929

/-- `∑[∑[64^(n%2)]]` -/
def P2125355664231774172.Spec : Prop :=
  ∀ n, (P2125355664231774172.a n : ℤ) = A174929 n

end A174929

/-! ## A174929.P6404525539620279098

`∑[∑[64^and(1, n)]]`
-/

namespace A174929.P6404525539620279098
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64 ^ Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174929.P6404525539620279098

namespace A174929

/-- `∑[∑[64^and(1, n)]]` -/
def P6404525539620279098.Spec : Prop :=
  ∀ n, (P6404525539620279098.a n : ℤ) = A174929 n

end A174929

/-! ## A174929.P2965870974571047455

`∑[a(n-2)+65]` with `a(0)=1, a(1)=65`
-/

namespace A174929.P2965870974571047455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 65] fun n f1 =>
  f1 (n - 2) + 65

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174929.P2965870974571047455

namespace A174929

/-- `∑[a(n-2)+65]` -/
def P2965870974571047455.Spec : Prop :=
  ∀ n, (P2965870974571047455.a n : ℤ) = A174929 n

end A174929

/-! ## A174929.P558614195493214721

`∑[∑[gcd(2, n+1)^6]]`
-/

namespace A174929.P558614195493214721
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) ^ 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174929.P558614195493214721

namespace A174929

/-- `∑[∑[gcd(2, n+1)^6]]` -/
def P558614195493214721.Spec : Prop :=
  ∀ n, (P558614195493214721.a n : ℤ) = A174929 n

end A174929

/-! ## A174929.P4009214462043581668

`∑[∑[8*8/a(n-1)]]` with `a(0)=1`
-/

namespace A174929.P4009214462043581668
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  8 * (8 / f2 (n - 1))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174929.P4009214462043581668

namespace A174929

/-- `∑[∑[8*8/a(n-1)]]` -/
def P4009214462043581668.Spec : Prop :=
  ∀ n, P4009214462043581668.a n = (A174929 n : ℚ)

end A174929

/-! ## A174929.P16062082465481381784

`∑[∑[floor(4^(3/a(n-1)))]]` with `a(0)=1`
-/

namespace A174929.P16062082465481381784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  ⌊(4 : ℝ) ^ (3 / (f2 (n - 1) : ℚ) : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174929.P16062082465481381784

namespace A174929

/-- `∑[∑[floor(4^(3/a(n-1)))]]` -/
def P16062082465481381784.Spec : Prop :=
  ∀ n, P16062082465481381784.a n = A174929 n

end A174929

/-! ## A174929.P11368588116705764030

`∑[A174928(n)]`
-/

namespace A174929.P11368588116705764030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174929.P11368588116705764030

namespace A174929

/-- `∑[A174928(n)]` -/
def P11368588116705764030.Spec : Prop :=
  ∀ n, P11368588116705764030.a n = A174929 n

end A174929

/-! ## A174929.P6420243293508243669

`∑[∑[A174927(n)]]`
-/

namespace A174929.P6420243293508243669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174927 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174929.P6420243293508243669

namespace A174929

/-- `∑[∑[A174927(n)]]` -/
def P6420243293508243669.Spec : Prop :=
  ∀ n, P6420243293508243669.a n = A174929 n

end A174929

/-!
# A174931: Half of the digital sum of base 3 representations of 2^n.

The programs for A174931, there is no canonical definition to state claims against.
-/

/-! ## A174931.P17883789191549612604

`A261009(n+1)/2`
-/

namespace A174931.P17883789191549612604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261009 (n + 1) : ℚ) / 2

end

end A174931.P17883789191549612604

/-! ## A174931.P18429431673919212559

`a(n-1)*ratio[A261009(n)]` with `a(0)=1`
-/

namespace A174931.P18429431673919212559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261009 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A174931.P18429431673919212559

/-! ## A174931.P277592004514962284

`A001281(A261009(n+1))`
-/

namespace A174931.P277592004514962284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A261009 (n + 1)).toNat

end

end A174931.P277592004514962284

/-! ## A174931.P10809863342258041685

`A004526(A261009(n+1)+1)`
-/

namespace A174931.P10809863342258041685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A261009 (n + 1) + 1).toNat

end

end A174931.P10809863342258041685

/-! ## A174931.P1939949586025098341

`A065033(A261009(n+1)-1)`
-/

namespace A174931.P1939949586025098341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A261009 (n + 1) - 1).toNat

end

end A174931.P1939949586025098341

/-! ## A174931.P2945701763946022187

`A261009(n)/2*ratio[A261009(n)]`
-/

namespace A174931.P2945701763946022187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261009 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261009 n : ℚ) / 2 * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A174931.P2945701763946022187

/-! ## A174931.P1368236973352750043

`A004525(A261009(1-(n-2*n)))`
-/

namespace A174931.P1368236973352750043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A261009 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat).toNat

end

end A174931.P1368236973352750043

/-! ## A174931.P317098678543453279

`A064727(A261009(n+1)²)`
-/

namespace A174931.P317098678543453279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (A261009 (n + 1) ^ 2).toNat

end

end A174931.P317098678543453279

/-! ## A174931.P9984057470537137580

`A131097(A022331(n+1))/2`
-/

namespace A174931.P9984057470537137580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131097 (A022331 (n + 1)).toNat : ℚ) / 2

end

end A174931.P9984057470537137580

/-! ## A174931.P10395033017569257129

`∑{digits}[A004642(n+1), #/2]`
-/

namespace A174931.P10395033017569257129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004642 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x : ℚ) / 2).sum

end

end A174931.P10395033017569257129

/-!
# A174932: a(n) = Sum_{d|n} A007955(d) * A000027(n/d) = Sum_{d|n} A007955(d) * (n/d), where A007955(m) = product of divisors of m.

The programs for A174932, the canonical program `A174932.P9080548440124926555` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174932 has offset 1).

The definition of A174932 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322671, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A174932.P9080548440124926555

`(n+1)*A322671(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A174932

/-- `(n+1)*A322671(n+1)` -/
def P9080548440124926555.Spec : Prop :=
  ∀ n, P9080548440124926555.a n = A174932 (n + 1)

theorem P9080548440124926555.correct : P9080548440124926555.Spec := by
  intro n
  simp only [A174932, Nat.add_sub_cancel]

end A174932

/-! ## A174932.P5037528043443985446

`(n+1)*∑{d}[n+1, A007956(#)]`
-/

namespace A174932.P5037528043443985446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A007956 d)

end

end A174932.P5037528043443985446

namespace A174932

/-- `(n+1)*∑{d}[n+1, A007956(#)]` -/
def P5037528043443985446.Spec : Prop :=
  ∀ n, P5037528043443985446.a n = A174932 (n + 1)

end A174932

/-! ## A174932.P8068976870226167465

`∑{d}[n+1, #*A007955((n+1)/#)]`
-/

namespace A174932.P8068976870226167465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174932.P8068976870226167465

namespace A174932

/-- `∑{d}[n+1, #*A007955((n+1)/#)]` -/
def P8068976870226167465.Spec : Prop :=
  ∀ n, P8068976870226167465.a n = A174932 (n + 1)

end A174932

/-! ## A174932.P9672042941884317110

`(n+1)*∑{d}[n+1, #^(A000005(#)/2)/#]`
-/

namespace A174932.P9672042941884317110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * (∑ d ∈ Nat.divisors (f1 n), (d : ℝ) ^ ((A000005 d : ℚ) / 2 : ℝ) / (d : ℝ))

end

end A174932.P9672042941884317110

namespace A174932

/-- `(n+1)*∑{d}[n+1, #^(A000005(#)/2)/#]` -/
def P9672042941884317110.Spec : Prop :=
  ∀ n, P9672042941884317110.a n = (A174932 (n + 1) : ℝ)

end A174932

/-! ## A174932.P18320576301227914707

`∑{d}[n+1, A000203(#)*A174940((n+1)/#)]`
-/

namespace A174932.P18320576301227914707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A174940 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174932.P18320576301227914707

namespace A174932

/-- `∑{d}[n+1, A000203(#)*A174940((n+1)/#)]` -/
def P18320576301227914707.Spec : Prop :=
  ∀ n, P18320576301227914707.a n = A174932 (n + 1)

end A174932

/-! ## A174932.P15811976891647079035

`∑{d}[n+1, A000010(#)*A175317((n+1)/#)]`
-/

namespace A174932.P15811976891647079035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A175317 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174932.P15811976891647079035

namespace A174932

/-- `∑{d}[n+1, A000010(#)*A175317((n+1)/#)]` -/
def P15811976891647079035.Spec : Prop :=
  ∀ n, P15811976891647079035.a n = A174932 (n + 1)

end A174932

/-! ## A174932.P16395689865623696202

`∑{d}[n+1, sqrt(A277169(#))]*(n+1)`
-/

namespace A174932.P16395689865623696202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A277169 d : ℝ)) * (n + 1 : ℝ)

end

end A174932.P16395689865623696202

namespace A174932

/-- `∑{d}[n+1, sqrt(A277169(#))]*(n+1)` -/
def P16395689865623696202.Spec : Prop :=
  ∀ n, P16395689865623696202.a n = (A174932 (n + 1) : ℝ)

end A174932

/-!
# A174933: a(n) = Sum_{d|n} A007955(d) * A000027(d) = Sum_{d|n} A007955(d) * (d), where A007955(m) = product of divisors of m.

The programs for A174933, the canonical program `A174933.P15059812043474275287` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174933 has offset 1).

The definition of A174933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174933.P15059812043474275287

`∑{d}[n+1, A338576(#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A174933

/-- `∑{d}[n+1, A338576(#)]` -/
def P15059812043474275287.Spec : Prop :=
  ∀ n, P15059812043474275287.a n = A174933 (n + 1)

theorem P15059812043474275287.correct : P15059812043474275287.Spec := by
  intro n
  simp only [A174933, Nat.add_sub_cancel]

end A174933

/-! ## A174933.P4149744480495012359

`∑{d}[n+1, #*A007955(#)]`
-/

namespace A174933.P4149744480495012359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007955 d

end

end A174933.P4149744480495012359

namespace A174933

/-- `∑{d}[n+1, #*A007955(#)]` -/
def P4149744480495012359.Spec : Prop :=
  ∀ n, P4149744480495012359.a n = A174933 (n + 1)

end A174933

/-! ## A174933.P7963099702043863579

`∑{d}[n+1, #²*A007956(#)]`
-/

namespace A174933.P7963099702043863579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d ^ 2 : ℤ) * A007956 d

end

end A174933.P7963099702043863579

namespace A174933

/-- `∑{d}[n+1, #²*A007956(#)]` -/
def P7963099702043863579.Spec : Prop :=
  ∀ n, P7963099702043863579.a n = A174933 (n + 1)

end A174933

/-! ## A174933.P17811670272444421426

`∑{d}[n+1, #^(A000005(#)/2+1)]`
-/

namespace A174933.P17811670272444421426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℝ) ^ ((A000005 d : ℚ) / 2 + 1 : ℝ)

end

end A174933.P17811670272444421426

namespace A174933

/-- `∑{d}[n+1, #^(A000005(#)/2+1)]` -/
def P17811670272444421426.Spec : Prop :=
  ∀ n, P17811670272444421426.a n = (A174933 (n + 1) : ℝ)

end A174933

/-! ## A174933.P6438182126169569178

`∑{d}[n+1, #*A240694(A006218(#))]`
-/

namespace A174933.P6438182126169569178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A240694 (A006218 d).toNat

end

end A174933.P6438182126169569178

namespace A174933

/-- `∑{d}[n+1, #*A240694(A006218(#))]` -/
def P6438182126169569178.Spec : Prop :=
  ∀ n, P6438182126169569178.a n = A174933 (n + 1)

end A174933

/-!
# A174934: a(n) = Sum_{k<=n} A007955(k) * A000027(n-k+1) = Sum_{k<=n} A007955(k) * (n-k+1), where A007955(m) = product of divisors of m.

The programs for A174934, the canonical program `A174934.P1492431127303697690` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174934 has offset 1).

The definition of A174934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174934.P1492431127303697690

`∑[∑[∏{d}[n+1, #]]]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A174934

/-- `∑[∑[∏{d}[n+1, #]]]` -/
def P1492431127303697690.Spec : Prop :=
  ∀ n, (P1492431127303697690.a n : ℤ) = A174934 (n + 1)

theorem P1492431127303697690.correct : P1492431127303697690.Spec := by
  intro n
  simp only [A174934, Nat.add_sub_cancel]

end A174934

/-! ## A174934.P13934984068293565603

`∑[∑[exp(∑{d}[n+1, log(#)])]]`
-/

namespace A174934.P13934984068293565603
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ d ∈ Nat.divisors (f3 n), Real.log (d : ℝ))

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174934.P13934984068293565603

namespace A174934

/-- `∑[∑[exp(∑{d}[n+1, log(#)])]]` -/
def P13934984068293565603.Spec : Prop :=
  ∀ n, P13934984068293565603.a n = (A174934 (n + 1) : ℝ)

end A174934

/-! ## A174934.P14310054938183806357

`∑[∑[2^∑{d}[n+1, log2(#)]]]`
-/

namespace A174934.P14310054938183806357
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ d ∈ Nat.divisors (f3 n), Real.logb 2 (d : ℝ))

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174934.P14310054938183806357

namespace A174934

/-- `∑[∑[2^∑{d}[n+1, log2(#)]]]` -/
def P14310054938183806357.Spec : Prop :=
  ∀ n, P14310054938183806357.a n = (A174934 (n + 1) : ℝ)

end A174934

/-! ## A174934.P4022542500944896579

`∑[∑[ratio[∏{d}[n, #]]*∏{d}[n, #]]]`
-/

namespace A174934.P4022542500944896579
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℚ) / (f3 n : ℚ) * ((∏ d ∈ Nat.divisors (f5 n), d : ℕ) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174934.P4022542500944896579

namespace A174934

/-- `∑[∑[ratio[∏{d}[n, #]]*∏{d}[n, #]]]` -/
def P4022542500944896579.Spec : Prop :=
  ∀ n, P4022542500944896579.a n = (A174934 (n + 1) : ℚ)

end A174934

/-! ## A174934.P16716387608610095082

`∑[∑[abs(∏{d}[2*n-(n-1), -#])]]`
-/

namespace A174934.P16716387608610095082
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ d ∈ Nat.divisors (f3 n).natAbs, (-(d : ℤ))|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174934.P16716387608610095082

namespace A174934

/-- `∑[∑[abs(∏{d}[2*n-(n-1), -#])]]` -/
def P16716387608610095082.Spec : Prop :=
  ∀ n, P16716387608610095082.a n = A174934 (n + 1)

end A174934

/-! ## A174934.P3880808499446127226

`∑[A175318(n+1)]`
-/

namespace A174934.P3880808499446127226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174934.P3880808499446127226

namespace A174934

/-- `∑[A175318(n+1)]` -/
def P3880808499446127226.Spec : Prop :=
  ∀ n, P3880808499446127226.a n = A174934 (n + 1)

theorem P3880808499446127226.correct : P3880808499446127226.Spec := by
  intro n
  simp only [A174934, Nat.add_sub_cancel, A174934.P3880808499446127226.f1, A174934.P3880808499446127226.a, A174934.P1492431127303697690.f3, A174934.P1492431127303697690.f2, A174934.P1492431127303697690.f1, A174934.P1492431127303697690.a, A175318, A175318.P13298413136417052649.f2, A175318.P13298413136417052649.f1, A175318.P13298413136417052649.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A174934

/-! ## A174934.P8629571410802860251

`∑[∑[A007955(n+1)]]`
-/

namespace A174934.P8629571410802860251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174934.P8629571410802860251

namespace A174934

/-- `∑[∑[A007955(n+1)]]` -/
def P8629571410802860251.Spec : Prop :=
  ∀ n, P8629571410802860251.a n = A174934 (n + 1)

end A174934

/-! ## A174934.P16031749010431287700

`∑[∑[sqrt(A062758(n+1))]]`
-/

namespace A174934.P16031749010431287700
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062758 (n + 1) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174934.P16031749010431287700

namespace A174934

/-- `∑[∑[sqrt(A062758(n+1))]]` -/
def P16031749010431287700.Spec : Prop :=
  ∀ n, P16031749010431287700.a n = (A174934 (n + 1) : ℝ)

end A174934

/-!
# A174935: a(n) = Sum_{k<=n} A007955(k) * A000027(k) = Sum_{k<=n} A007955(k) * k, where A007955(m) = product of divisors of m.

The programs for A174935, the canonical program `A174935.P1710162816317349073` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174935 has offset 1).

The definition of A174935 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174935.P1710162816317349073

`∑[(n+1)*∏{d}[n+1, #]]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A174935

/-- `∑[(n+1)*∏{d}[n+1, #]]` -/
def P1710162816317349073.Spec : Prop :=
  ∀ n, (P1710162816317349073.a n : ℤ) = A174935 (n + 1)

theorem P1710162816317349073.correct : P1710162816317349073.Spec := by
  intro n
  simp only [A174935, Nat.add_sub_cancel]

end A174935

/-! ## A174935.P15478717096831665703

`∑[(n+1)*exp(∑{d}[n+1, log(#)])]`
-/

namespace A174935.P15478717096831665703
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.exp (∑ d ∈ Nat.divisors (f2 n), Real.log (d : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174935.P15478717096831665703

namespace A174935

/-- `∑[(n+1)*exp(∑{d}[n+1, log(#)])]` -/
def P15478717096831665703.Spec : Prop :=
  ∀ n, P15478717096831665703.a n = (A174935 (n + 1) : ℝ)

end A174935

/-! ## A174935.P16936883507967297357

`a(n-1)+(n+1)*∏{d}[n+1, #]` with `a(0)=1`
-/

namespace A174935.P16936883507967297357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1) * (∏ d ∈ Nat.divisors (f1 n), d)

end

end A174935.P16936883507967297357

namespace A174935

/-- `a(n-1)+(n+1)*∏{d}[n+1, #]` -/
def P16936883507967297357.Spec : Prop :=
  ∀ n, (P16936883507967297357.a n : ℤ) = A174935 (n + 1)

end A174935

/-! ## A174935.P7957286055012240451

`∑[A338576(n+1)]`
-/

namespace A174935.P7957286055012240451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174935.P7957286055012240451

namespace A174935

/-- `∑[A338576(n+1)]` -/
def P7957286055012240451.Spec : Prop :=
  ∀ n, P7957286055012240451.a n = A174935 (n + 1)

end A174935

/-! ## A174935.P7784780581406202830

`∑[(n+1)*A007955(n+1)]`
-/

namespace A174935.P7784780581406202830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174935.P7784780581406202830

namespace A174935

/-- `∑[(n+1)*A007955(n+1)]` -/
def P7784780581406202830.Spec : Prop :=
  ∀ n, P7784780581406202830.a n = A174935 (n + 1)

end A174935

/-! ## A174935.P13071491652917099774

`∑[(n+1)²*A007956(n+1)]`
-/

namespace A174935.P13071491652917099774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A007956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174935.P13071491652917099774

namespace A174935

/-- `∑[(n+1)²*A007956(n+1)]` -/
def P13071491652917099774.Spec : Prop :=
  ∀ n, P13071491652917099774.a n = A174935 (n + 1)

end A174935

/-! ## A174935.P5423803900367526487

`∑[sqrt(n+1)^(A000005(n+1)+2)]`
-/

namespace A174935.P5423803900367526487
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) ^ (A000005 (n + 1) + 2 : ℤ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174935.P5423803900367526487

namespace A174935

/-- `∑[sqrt(n+1)^(A000005(n+1)+2)]` -/
def P5423803900367526487.Spec : Prop :=
  ∀ n, P5423803900367526487.a n = (A174935 (n + 1) : ℝ)

end A174935

/-! ## A174935.P16146198387885030989

`∑[(n+1)*(n+1)^(Δ[A006218(n)]/2)]`
-/

namespace A174935.P16146198387885030989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * (n + 1 : ℝ) ^ ((f2 (n + 1) - f2 n : ℚ) / 2 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174935.P16146198387885030989

namespace A174935

/-- `∑[(n+1)*(n+1)^(Δ[A006218(n)]/2)]` -/
def P16146198387885030989.Spec : Prop :=
  ∀ n, P16146198387885030989.a n = (A174935 (n + 1) : ℝ)

end A174935

/-!
# A174936: a(n) = Sum_{d|n} A007955(d) * A007955(n/d), where A007955(m) = product of divisors of m.

The programs for A174936, the canonical program `A174936.P12299057279148383531` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174936 has offset 1).

The definition of A174936 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174936.P8360761557204638756

`∑{d}[n+1, A007955(#)*A007955((n+1)/#)]`
-/

namespace A174936.P8360761557204638756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007955 d * A007955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174936.P8360761557204638756

namespace A174936

/-- `∑{d}[n+1, A007955(#)*A007955((n+1)/#)]` -/
def P8360761557204638756.Spec : Prop :=
  ∀ n, P8360761557204638756.a n = A174936 (n + 1)

end A174936

/-! ## A174936.P12299057279148383531

`∑{d}[n+1, A174940(#)*A175317((n+1)/#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A174936

/-- `∑{d}[n+1, A174940(#)*A175317((n+1)/#)]` -/
def P12299057279148383531.Spec : Prop :=
  ∀ n, P12299057279148383531.a n = A174936 (n + 1)

theorem P12299057279148383531.correct : P12299057279148383531.Spec := by
  intro n
  simp only [A174936, Nat.add_sub_cancel]

end A174936

/-!
# A174937: a(n) = Sum_{d|n} d^tau(d).

The programs for A174937, the canonical program `A174937.P745784790892421709` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174937 has offset 1).

The definition of A174937 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174937.P46095548204965581

`∑{d}[n+1, A062758(#)]`
-/

namespace A174937.P46095548204965581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062758 d

end

end A174937.P46095548204965581

namespace A174937

/-- `∑{d}[n+1, A062758(#)]` -/
def P46095548204965581.Spec : Prop :=
  ∀ n, P46095548204965581.a n = A174937 (n + 1)

end A174937

/-! ## A174937.P14483330748431592197

`∑{d}[n+1, A007955(#)²]`
-/

namespace A174937.P14483330748431592197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007955 d ^ 2

end

end A174937.P14483330748431592197

namespace A174937

/-- `∑{d}[n+1, A007955(#)²]` -/
def P14483330748431592197.Spec : Prop :=
  ∀ n, P14483330748431592197.a n = A174937 (n + 1)

end A174937

/-! ## A174937.P17877063489405110288

`∑{d}[n+1, #^A000005(#)]`
-/

namespace A174937.P17877063489405110288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (A000005 d : ℤ)

end

end A174937.P17877063489405110288

namespace A174937

/-- `∑{d}[n+1, #^A000005(#)]` -/
def P17877063489405110288.Spec : Prop :=
  ∀ n, P17877063489405110288.a n = (A174937 (n + 1) : ℚ)

end A174937

/-! ## A174937.P745784790892421709

`∑{d}[n+1, (#*A007956(#))²]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A174937

/-- `∑{d}[n+1, (#*A007956(#))²]` -/
def P745784790892421709.Spec : Prop :=
  ∀ n, P745784790892421709.a n = A174937 (n + 1)

theorem P745784790892421709.correct : P745784790892421709.Spec := by
  intro n
  simp only [A174937, Nat.add_sub_cancel]

end A174937

/-! ## A174937.P522256379087879876

`∑{d}[n+1, A240694(A006218(#))²]`
-/

namespace A174937.P522256379087879876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A240694 (A006218 d).toNat ^ 2

end

end A174937.P522256379087879876

namespace A174937

/-- `∑{d}[n+1, A240694(A006218(#))²]` -/
def P522256379087879876.Spec : Prop :=
  ∀ n, P522256379087879876.a n = A174937 (n + 1)

end A174937

/-!
# A174938: a(n) = Sum_{k<=n} A007955(k) * A007955(n-k+1), where A007955(m) = product of divisors of m.

The programs for A174938, there is no canonical definition to state claims against.
-/

/-! ## A174938.P9916877589826427147

`∑[∑[A092487(n^n)+n+1]]`
-/

namespace A174938.P9916877589826427147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092487 (n ^ n) + (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174938.P9916877589826427147

/-! ## A174938.P14090319672977907133

`∑[A006087(A027077(n+1))]`
-/

namespace A174938.P14090319672977907133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006087 (A027077 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174938.P14090319672977907133

/-!
# A174939: a(n) = Sum_{k<=n} A007955(k) * A007955(k) = Sum_{k<=n} A007955(k)^2, where A007955(m) = product of divisors of m.

The programs for A174939, the canonical program `A174939.P18405479148824108625` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174939 has offset 1).

The definition of A174939 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174939.P18405479148824108625

`∑[∏{d}[n+1, #²]]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A174939

/-- `∑[∏{d}[n+1, #²]]` -/
def P18405479148824108625.Spec : Prop :=
  ∀ n, (P18405479148824108625.a n : ℤ) = A174939 (n + 1)

theorem P18405479148824108625.correct : P18405479148824108625.Spec := by
  intro n
  simp only [A174939, Nat.add_sub_cancel]

end A174939

/-! ## A174939.P1781230727843139242

`∑[∏[ratio[∏{d}[n, #]]²]]`
-/

namespace A174939.P1781230727843139242
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f3 (n + 1) : ℚ) / (f3 n : ℚ)) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174939.P1781230727843139242

namespace A174939

/-- `∑[∏[ratio[∏{d}[n, #]]²]]` -/
def P1781230727843139242.Spec : Prop :=
  ∀ n, P1781230727843139242.a n = (A174939 (n + 1) : ℚ)

end A174939

/-! ## A174939.P8371577630707039468

`∑[∏{d}[n+1, #]^2]`
-/

namespace A174939.P8371577630707039468
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f2 n), d) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174939.P8371577630707039468

namespace A174939

/-- `∑[∏{d}[n+1, #]^2]` -/
def P8371577630707039468.Spec : Prop :=
  ∀ n, (P8371577630707039468.a n : ℤ) = A174939 (n + 1)

end A174939

/-! ## A174939.P4610991256785795499

`∑[∏{d}[xor(n, -1), #]²]`
-/

namespace A174939.P4610991256785795499
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f2 n).natAbs, d) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174939.P4610991256785795499

namespace A174939

/-- `∑[∏{d}[xor(n, -1), #]²]` -/
def P4610991256785795499.Spec : Prop :=
  ∀ n, (P4610991256785795499.a n : ℤ) = A174939 (n + 1)

end A174939

/-! ## A174939.P17150617622116314858

`∑[root(∏{d}[n+1, #], 1/2)]`
-/

namespace A174939.P17150617622116314858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℝ) ^ (1 / ((1 : ℚ) / 2 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174939.P17150617622116314858

namespace A174939

/-- `∑[root(∏{d}[n+1, #], 1/2)]` -/
def P17150617622116314858.Spec : Prop :=
  ∀ n, P17150617622116314858.a n = (A174939 (n + 1) : ℝ)

end A174939

/-! ## A174939.P751894025053951757

`∑[2^∑{d}[n+1, log2(#²)]]`
-/

namespace A174939.P751894025053951757
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ d ∈ Nat.divisors (f2 n), Real.logb 2 (d ^ 2 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174939.P751894025053951757

namespace A174939

/-- `∑[2^∑{d}[n+1, log2(#²)]]` -/
def P751894025053951757.Spec : Prop :=
  ∀ n, P751894025053951757.a n = (A174939 (n + 1) : ℝ)

end A174939

/-! ## A174939.P9506057539484161426

`∑[∏{d}[2*n-(n-1), #]²]`
-/

namespace A174939.P9506057539484161426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f2 n).natAbs, d) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174939.P9506057539484161426

namespace A174939

/-- `∑[∏{d}[2*n-(n-1), #]²]` -/
def P9506057539484161426.Spec : Prop :=
  ∀ n, (P9506057539484161426.a n : ℤ) = A174939 (n + 1)

end A174939

/-! ## A174939.P5739928435483114920

`∏{d}[n+1, #²]+a(n-1)` with `a(0)=1`
-/

namespace A174939.P5739928435483114920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∏ d ∈ Nat.divisors (f1 n), d ^ 2 + a (n - 1)

end

end A174939.P5739928435483114920

namespace A174939

/-- `∏{d}[n+1, #²]+a(n-1)` -/
def P5739928435483114920.Spec : Prop :=
  ∀ n, (P5739928435483114920.a n : ℤ) = A174939 (n + 1)

end A174939

/-! ## A174939.P17681024263145937978

`∑[(n+1)^∏{e}[n+1, #+1]]`
-/

namespace A174939.P17681024263145937978
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174939.P17681024263145937978

namespace A174939

/-- `∑[(n+1)^∏{e}[n+1, #+1]]` -/
def P17681024263145937978.Spec : Prop :=
  ∀ n, (P17681024263145937978.a n : ℤ) = A174939 (n + 1)

end A174939

/-! ## A174939.P17615695135204232907

`∑[lcm(n+1, ∏{d}[n+1, lcm(#, n+1)])]`
-/

namespace A174939.P17615695135204232907
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (∏ d ∈ Nat.divisors (f2 n), Nat.lcm d (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174939.P17615695135204232907

namespace A174939

/-- `∑[lcm(n+1, ∏{d}[n+1, lcm(#, n+1)])]` -/
def P17615695135204232907.Spec : Prop :=
  ∀ n, (P17615695135204232907.a n : ℤ) = A174939 (n + 1)

end A174939

/-! ## A174939.P2011086705786537852

`∑[A062758(n+1)]`
-/

namespace A174939.P2011086705786537852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174939.P2011086705786537852

namespace A174939

/-- `∑[A062758(n+1)]` -/
def P2011086705786537852.Spec : Prop :=
  ∀ n, P2011086705786537852.a n = A174939 (n + 1)

end A174939

/-! ## A174939.P16491470272082874663

`∑[abs(A217854(n+1))]`
-/

namespace A174939.P16491470272082874663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A217854 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174939.P16491470272082874663

namespace A174939

/-- `∑[abs(A217854(n+1))]` -/
def P16491470272082874663.Spec : Prop :=
  ∀ n, P16491470272082874663.a n = A174939 (n + 1)

end A174939

/-! ## A174939.P14445659406409814304

`∑[A007955(n+1)²]`
-/

namespace A174939.P14445659406409814304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174939.P14445659406409814304

namespace A174939

/-- `∑[A007955(n+1)²]` -/
def P14445659406409814304.Spec : Prop :=
  ∀ n, P14445659406409814304.a n = A174939 (n + 1)

end A174939

/-! ## A174939.P15212871789470955045

`∑[(n+1)^Δ[A006218(n)]]`
-/

namespace A174939.P15212871789470955045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174939.P15212871789470955045

namespace A174939

/-- `∑[(n+1)^Δ[A006218(n)]]` -/
def P15212871789470955045.Spec : Prop :=
  ∀ n, P15212871789470955045.a n = (A174939 (n + 1) : ℚ)

end A174939

/-! ## A174939.P16206114157019529944

`∑[(n+1)^A000005(n+1)]`
-/

namespace A174939.P16206114157019529944
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000005 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174939.P16206114157019529944

namespace A174939

/-- `∑[(n+1)^A000005(n+1)]` -/
def P16206114157019529944.Spec : Prop :=
  ∀ n, P16206114157019529944.a n = (A174939 (n + 1) : ℚ)

end A174939

/-! ## A174939.P18073770398781215903

`∑[((n+1)*A007956(n+1))²]`
-/

namespace A174939.P18073770398781215903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A007956 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174939.P18073770398781215903

namespace A174939

/-- `∑[((n+1)*A007956(n+1))²]` -/
def P18073770398781215903.Spec : Prop :=
  ∀ n, P18073770398781215903.a n = A174939 (n + 1)

end A174939

/-! ## A174939.P17485865210697443168

`∑[(n+1)²*A277169(n+1)]`
-/

namespace A174939.P17485865210697443168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A277169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174939.P17485865210697443168

namespace A174939

/-- `∑[(n+1)²*A277169(n+1)]` -/
def P17485865210697443168.Spec : Prop :=
  ∀ n, P17485865210697443168.a n = A174939 (n + 1)

end A174939

/-! ## A174939.P17105379631698927711

`∑[(A338576(n+1)/(n+1))²]`
-/

namespace A174939.P17105379631698927711
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A338576 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174939.P17105379631698927711

namespace A174939

/-- `∑[(A338576(n+1)/(n+1))²]` -/
def P17105379631698927711.Spec : Prop :=
  ∀ n, P17105379631698927711.a n = (A174939 (n + 1) : ℚ)

end A174939

/-! ## A174939.P1734601850801065557

`∑[(n+1)^(A038040(n+1)/(n+1))]`
-/

namespace A174939.P1734601850801065557
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174939.P1734601850801065557

namespace A174939

/-- `∑[(n+1)^(A038040(n+1)/(n+1))]` -/
def P1734601850801065557.Spec : Prop :=
  ∀ n, P1734601850801065557.a n = (A174939 (n + 1) : ℝ)

end A174939

/-! ## A174939.P4131635906912487350

`∑[A240694(∑[A000005(n+1)])²]`
-/

namespace A174939.P4131635906912487350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240694 (∑ j ∈ Finset.range (n + 1), f2 j).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174939.P4131635906912487350

namespace A174939

/-- `∑[A240694(∑[A000005(n+1)])²]` -/
def P4131635906912487350.Spec : Prop :=
  ∀ n, P4131635906912487350.a n = A174939 (n + 1)

end A174939

/-!
# A174940: a(n) = Sum_{d|n} A007955(d) * A008683(n/d) = Sum_{d|n} A007955(d) * mu(n/d), where A007955(m) = number of divisors of m.

The programs for A174940, the canonical program `A174940.P16857254554969626556` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174940 has offset 1).

The definition of A174940 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174940.P7214986565874031717

`∑{d}[n+1, A008683(#)*A007955((n+1)/#)]`
-/

namespace A174940.P7214986565874031717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A007955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174940.P7214986565874031717

namespace A174940

/-- `∑{d}[n+1, A008683(#)*A007955((n+1)/#)]` -/
def P7214986565874031717.Spec : Prop :=
  ∀ n, P7214986565874031717.a n = A174940 (n + 1)

end A174940

/-! ## A174940.P2051350176904793328

`∑{d}[n+1, A007427(#)*A175317((n+1)/#)]`
-/

namespace A174940.P2051350176904793328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A175317 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174940.P2051350176904793328

namespace A174940

/-- `∑{d}[n+1, A007427(#)*A175317((n+1)/#)]` -/
def P2051350176904793328.Spec : Prop :=
  ∀ n, P2051350176904793328.a n = A174940 (n + 1)

end A174940

/-! ## A174940.P16857254554969626556

`∑{d}[n+1, A046692(#)*A174932((n+1)/#)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A174940

/-- `∑{d}[n+1, A046692(#)*A174932((n+1)/#)]` -/
def P16857254554969626556.Spec : Prop :=
  ∀ n, P16857254554969626556.a n = A174940 (n + 1)

theorem P16857254554969626556.correct : P16857254554969626556.Spec := by
  intro n
  simp only [A174940, Nat.add_sub_cancel]

end A174940

/-!
# A174941: a(n) = Sum_{d|n} A007955(d) * A008683(d) = Sum_{d|n} A007955(d) * mu(d), where A007955(m) = product of divisors of m.

The programs for A174941, the canonical program `A174941.P11439559617156554674` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174941 has offset 1).

The definition of A174941 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174941.P11439559617156554674

`∏{p}[n+1, -1%#]*A174940(∏{p}[n+1, #])`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A174941

/-- `∏{p}[n+1, -1%#]*A174940(∏{p}[n+1, #])` -/
def P11439559617156554674.Spec : Prop :=
  ∀ n, P11439559617156554674.a n = A174941 (n + 1)

theorem P11439559617156554674.correct : P11439559617156554674.Spec := by
  intro n
  simp only [A174941, Nat.add_sub_cancel]

end A174941

/-! ## A174941.P80960394666270015

`∑{d}[n+1, A008683(#)*A183103(#)]`
-/

namespace A174941.P80960394666270015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A183103 d

end

end A174941.P80960394666270015

namespace A174941

/-- `∑{d}[n+1, A008683(#)*A183103(#)]` -/
def P80960394666270015.Spec : Prop :=
  ∀ n, P80960394666270015.a n = A174941 (n + 1)

end A174941

/-! ## A174941.P18055242938438284366

`A318833(A078599(n+1))-A007947(n+1)`
-/

namespace A174941.P18055242938438284366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318833 (A078599 (n + 1)).toNat - A007947 (n + 1)

end

end A174941.P18055242938438284366

namespace A174941

/-- `A318833(A078599(n+1))-A007947(n+1)` -/
def P18055242938438284366.Spec : Prop :=
  ∀ n, P18055242938438284366.a n = A174941 (n + 1)

end A174941

/-! ## A174941.P17241734193791422883

`A318833(A078599(n+1))-A015053(n+1)`
-/

namespace A174941.P17241734193791422883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318833 (A078599 (n + 1)).toNat - A015053 (n + 1)

end

end A174941.P17241734193791422883

namespace A174941

/-- `A318833(A078599(n+1))-A015053(n+1)` -/
def P17241734193791422883.Spec : Prop :=
  ∀ n, P17241734193791422883.a n = A174941 (n + 1)

end A174941

/-! ## A174941.P2673768222649223539

`A318833(A078599(n+1))-A088835(n+1)`
-/

namespace A174941.P2673768222649223539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318833 (A078599 (n + 1)).toNat - A088835 (n + 1)

end

end A174941.P2673768222649223539

namespace A174941

/-- `A318833(A078599(n+1))-A088835(n+1)` -/
def P2673768222649223539.Spec : Prop :=
  ∀ n, P2673768222649223539.a n = A174941 (n + 1)

end A174941

/-!
# A174943: a(n) = Sum_{k<=n} A007955(k) * A008683(k) = Sum_{k<=n} A007955(k) * mu(k), where A007955(m) = product of divisors of m.

The programs for A174943, the canonical program `A174943.P12663220338328729978` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174943 has offset 1).

The definition of A174943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174943.P7447786712172858200

`∑[∏{d}[n+1, #]*∏{e}[n+1, floor(log(atan(#)))]]`
-/

namespace A174943.P7447786712172858200
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) * (∏ p ∈ Nat.primeFactors (f3 n), ⌊Real.log (Real.arctan (Nat.factorization (f3 n) p : ℝ))⌋)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174943.P7447786712172858200

namespace A174943

/-- `∑[∏{d}[n+1, #]*∏{e}[n+1, floor(log(atan(#)))]]` -/
def P7447786712172858200.Spec : Prop :=
  ∀ n, P7447786712172858200.a n = A174943 (n + 1)

end A174943

/-! ## A174943.P7995516523953474348

`∑[round(acot(∏{e}[n+1, -#]))*∏{d}[n+1, #]]`
-/

namespace A174943.P7995516523953474348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f2 n), (-(Nat.factorization (f2 n) p : ℤ)) : ℤ) : ℝ)) * ((∏ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174943.P7995516523953474348

namespace A174943

/-- `∑[round(acot(∏{e}[n+1, -#]))*∏{d}[n+1, #]]` -/
def P7995516523953474348.Spec : Prop :=
  ∀ n, P7995516523953474348.a n = A174943 (n + 1)

end A174943

/-! ## A174943.P12663220338328729978

`∑[∏{d}[n+1, #]*∏{e}[n+1, -floor(1/#)]]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A174943

/-- `∑[∏{d}[n+1, #]*∏{e}[n+1, -floor(1/#)]]` -/
def P12663220338328729978.Spec : Prop :=
  ∀ n, P12663220338328729978.a n = A174943 (n + 1)

theorem P12663220338328729978.correct : P12663220338328729978.Spec := by
  intro n
  simp only [A174943, Nat.add_sub_cancel]

end A174943

/-! ## A174943.P10038899977161792119

`∑[round(1/∏{e}[n+1, -#²])*∏{d}[n+1, #]]`
-/

namespace A174943.P10038899977161792119
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f2 n), (-(Nat.factorization (f2 n) p ^ 2 : ℤ)) : ℤ) : ℚ)) * ((∏ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174943.P10038899977161792119

namespace A174943

/-- `∑[round(1/∏{e}[n+1, -#²])*∏{d}[n+1, #]]` -/
def P10038899977161792119.Spec : Prop :=
  ∀ n, P10038899977161792119.a n = A174943 (n + 1)

end A174943

/-! ## A174943.P16017783436286646300

`∑[∏{d}[n+1, #]*A008683(n+1)]`
-/

namespace A174943.P16017783436286646300
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) * A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174943.P16017783436286646300

namespace A174943

/-- `∑[∏{d}[n+1, #]*A008683(n+1)]` -/
def P16017783436286646300.Spec : Prop :=
  ∀ n, P16017783436286646300.a n = A174943 (n + 1)

end A174943

/-!
# A174947: Triangle read by rows: T(n,k) = (prime(n)+1) mod prime(k).

The programs for A174947, the canonical program `A174947.P3508889498750790158` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174947 has offset 1).

The definition of A174947 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(A000040(row(n)+1)+1)%A000040(col(n)+1)` (program `A174947.P3508889498750790158`, by `A174947.P3508889498750790158.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174947.P3508889498750790158

`(A000040(row(n)+1)+1)%A000040(col(n)+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A174947

/-- `(A000040(row(n)+1)+1)%A000040(col(n)+1)` -/
def P3508889498750790158.Spec : Prop :=
  ∀ n, P3508889498750790158.a n = A174947 (n + 1)

theorem P3508889498750790158.correct : P3508889498750790158.Spec := by
  intro n
  simp only [A174947, Nat.add_sub_cancel]

end A174947

/-! ## A174947.P3946399957543125814

`(A005145(n+1)+1)%A037126(n+1)`
-/

namespace A174947.P3946399957543125814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005145 (n + 1) + 1) (A037126 (n + 1))

end

end A174947.P3946399957543125814

namespace A174947

/-- `(A005145(n+1)+1)%A037126(n+1)` -/
def P3946399957543125814.Spec : Prop :=
  ∀ n, P3946399957543125814.a n = A174947 (n + 1)

end A174947

/-! ## A174947.P17920267581730504725

`(A065342(n+1)+1)%A037126(n+1)`
-/

namespace A174947.P17920267581730504725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065342 (n + 1) + 1) (A037126 (n + 1))

end

end A174947.P17920267581730504725

namespace A174947

/-- `(A065342(n+1)+1)%A037126(n+1)` -/
def P17920267581730504725.Spec : Prop :=
  ∀ n, P17920267581730504725.a n = A174947 (n + 1)

end A174947

/-! ## A174947.P6292965016139005844

`(A086800(n+1)+1)%A037126(n+1)`
-/

namespace A174947.P6292965016139005844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086800 (n + 1) + 1) (A037126 (n + 1))

end

end A174947.P6292965016139005844

namespace A174947

/-- `(A086800(n+1)+1)%A037126(n+1)` -/
def P6292965016139005844.Spec : Prop :=
  ∀ n, P6292965016139005844.a n = A174947 (n + 1)

end A174947

/-! ## A174947.P4114641610151224520

`A008864(∑[A010054(n)])%A037126(n+1)`
-/

namespace A174947.P4114641610151224520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008864 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A037126 (n + 1))

end

end A174947.P4114641610151224520

namespace A174947

/-- `A008864(∑[A010054(n)])%A037126(n+1)` -/
def P4114641610151224520.Spec : Prop :=
  ∀ n, P4114641610151224520.a n = A174947 (n + 1)

end A174947

/-! ## A174947.P16931526312281069280

`A000203(A005145(n+1))%A037126(n+1)`
-/

namespace A174947.P16931526312281069280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A005145 (n + 1)).toNat) (A037126 (n + 1))

end

end A174947.P16931526312281069280

namespace A174947

/-- `A000203(A005145(n+1))%A037126(n+1)` -/
def P16931526312281069280.Spec : Prop :=
  ∀ n, P16931526312281069280.a n = A174947 (n + 1)

end A174947

/-! ## A174947.P9931254942776941854

`A008864(A002024(n+1))%A037126(n+1)`
-/

namespace A174947.P9931254942776941854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008864 (A002024 (n + 1)).toNat) (A037126 (n + 1))

end

end A174947.P9931254942776941854

namespace A174947

/-- `A008864(A002024(n+1))%A037126(n+1)` -/
def P9931254942776941854.Spec : Prop :=
  ∀ n, P9931254942776941854.a n = A174947 (n + 1)

end A174947

/-! ## A174947.P13365965275984407898

`A000203(A087112(n+1))%A037126(n+1)`
-/

namespace A174947.P13365965275984407898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A087112 (n + 1)).toNat) (A037126 (n + 1))

end

end A174947.P13365965275984407898

namespace A174947

/-- `A000203(A087112(n+1))%A037126(n+1)` -/
def P13365965275984407898.Spec : Prop :=
  ∀ n, P13365965275984407898.a n = A174947 (n + 1)

end A174947

/-! ## A174947.P1901493379347872265

`A000203(A008578(A003057(n+2)))%A037126(n+1)`
-/

namespace A174947.P1901493379347872265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A008578 (A003057 (n + 2)).toNat).toNat) (A037126 (n + 1))

end

end A174947.P1901493379347872265

namespace A174947

/-- `A000203(A008578(A003057(n+2)))%A037126(n+1)` -/
def P1901493379347872265.Spec : Prop :=
  ∀ n, P1901493379347872265.a n = A174947 (n + 1)

end A174947

/-!
# A174949: Triangle read by rows: T(n,k) = B(n,k) - B(n,0) + 1 where B(n,k) = 2 * (5*binomial(n,k)*(n+1)!*k!*(n-k)! + (n+k+1)!*(n-k)! + (2*n-k+1)!*k!) / ((n+1)!*k!*(n-k)!).

The programs for A174949, there is no canonical definition to state claims against.
-/

/-! ## A174949.P2905022783404633401

`A166343(n+1)+1-A130925(5^A014473(n))`
-/

namespace A174949.P2905022783404633401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166343 (n + 1) + 1 - A130925 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A014473 n : ℤ))).toNat

end

end A174949.P2905022783404633401

/-!
# A174950: Size of sea of semiprimes surrounding n-th prime.

The programs for A174950, there is no canonical definition to state claims against.
-/

/-! ## A174950.P7407493836570230956

`and(A001222(n+4), A215260(A201836(n+1)))`
-/

namespace A174950.P7407493836570230956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (n + 4)) (A215260 (A201836 (n + 1)).toNat)

end

end A174950.P7407493836570230956

/-! ## A174950.P848041697743457449

`A263728(A116525(n)+1)%3`
-/

namespace A174950.P848041697743457449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263728 (A116525 n + 1).toNat) 3

end

end A174950.P848041697743457449

/-! ## A174950.P3168566209785587349

`A105700(∑[A099383(A259448(n+1))])`
-/

namespace A174950.P3168566209785587349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099383 (A259448 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A174950.P3168566209785587349

/-! ## A174950.P9324101643221761509

`A074941(A094359(n)+Δ[A007504(n)])`
-/

namespace A174950.P9324101643221761509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074941 (A094359 n + (f1 (n + 1) - f1 n)).toNat

end

end A174950.P9324101643221761509

/-! ## A174950.P5447021915387963456

`A074941(A094359(n)+A000040(n+1))`
-/

namespace A174950.P5447021915387963456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074941 (A094359 n + A000040 (n + 1)).toNat

end

end A174950.P5447021915387963456

/-!
# A174953: Triangle read by rows: T(n,k) = prime(n) mod semiprime(k), 1<=k<=n.

The programs for A174953, the canonical program `A174953.P7290493215914422876` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174953 has offset 1).

The definition of A174953 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174953.P7290493215914422876

`A005145(n+1)%A001358(A002260(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A174953

/-- `A005145(n+1)%A001358(A002260(n+1))` -/
def P7290493215914422876.Spec : Prop :=
  ∀ n, P7290493215914422876.a n = A174953 (n + 1)

theorem P7290493215914422876.correct : P7290493215914422876.Spec := by
  intro n
  simp only [A174953, Nat.add_sub_cancel]

end A174953

/-! ## A174953.P15684720428990119516

`A008578(comp[∑[n]]-n)%A001358(A002260(n+1))`
-/

namespace A174953.P15684720428990119516
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)) (A001358 (A002260 (n + 1)).toNat)

end

end A174953.P15684720428990119516

namespace A174953

/-- `A008578(comp[∑[n]]-n)%A001358(A002260(n+1))` -/
def P15684720428990119516.Spec : Prop :=
  ∀ n, P15684720428990119516.a n = A174953 (n + 1)

end A174953

/-! ## A174953.P17311381638821379994

`A051599(A057944(n))%A001358(A002260(n+1))`
-/

namespace A174953.P17311381638821379994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051599 (A057944 n).toNat) (A001358 (A002260 (n + 1)).toNat)

end

end A174953.P17311381638821379994

namespace A174953

/-- `A051599(A057944(n))%A001358(A002260(n+1))` -/
def P17311381638821379994.Spec : Prop :=
  ∀ n, P17311381638821379994.a n = A174953 (n + 1)

end A174953

/-! ## A174953.P9834150405448445308

`A094290(A137688(n))%A001358(A002260(n+1))`
-/

namespace A174953.P9834150405448445308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094290 (A137688 n).toNat) (A001358 (A002260 (n + 1)).toNat)

end

end A174953.P9834150405448445308

namespace A174953

/-- `A094290(A137688(n))%A001358(A002260(n+1))` -/
def P9834150405448445308.Spec : Prop :=
  ∀ n, P9834150405448445308.a n = A174953 (n + 1)

end A174953

/-! ## A174953.P11215629821653983472

`A000040(A002024(n+1))%A001358(A002260(n+1))`
-/

namespace A174953.P11215629821653983472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A002024 (n + 1)).toNat) (A001358 (A002260 (n + 1)).toNat)

end

end A174953.P11215629821653983472

namespace A174953

/-- `A000040(A002024(n+1))%A001358(A002260(n+1))` -/
def P11215629821653983472.Spec : Prop :=
  ∀ n, P11215629821653983472.a n = A174953 (n + 1)

end A174953

/-! ## A174953.P65502320781661033

`A037126(A127739(n+1))%A001358(A002260(n+1))`
-/

namespace A174953.P65502320781661033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037126 (A127739 (n + 1)).toNat) (A001358 (A002260 (n + 1)).toNat)

end

end A174953.P65502320781661033

namespace A174953

/-- `A037126(A127739(n+1))%A001358(A002260(n+1))` -/
def P65502320781661033.Spec : Prop :=
  ∀ n, P65502320781661033.a n = A174953 (n + 1)

end A174953

/-!
# A174954: a(1)=1 and a(2)=2, a(n) = square of the sum of previous terms.

The programs for A174954, there is no canonical definition to state claims against.
-/

/-! ## A174954.P16716769749467454682

`Δ[a(n-1)+a(n-1)²]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A174954.P16716769749467454682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  f1 (n - 1) + f1 (n - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A174954.P16716769749467454682

/-! ## A174954.P13016289866679872655

`floor(a(n-1)+sqrt(a(n-1)))²` with `a(0)=1, a(1)=2`
-/

namespace A174954.P13016289866679872655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(a (n - 1) : ℝ) + Real.sqrt (a (n - 1) : ℝ)⌋ ^ 2

end

end A174954.P13016289866679872655

/-! ## A174954.P16634277536363229641

`Δ[(a(n-1)+1)*a(n-1)]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A174954.P16634277536363229641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  (f1 (n - 1) + 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A174954.P16634277536363229641

/-! ## A174954.P7998282599962707908

`Δ[A082732(n+1)-char[1]]`
-/

namespace A174954.P7998282599962707908
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082732 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174954.P7998282599962707908

/-!
# A174955: Lesser of twin primes p1 such that p1*p2+-6 are prime numbers.

The programs for A174955, there is no canonical definition to state claims against.
-/

/-! ## A174955.P10983044074816287628

`∩[A001359(n+1), A240621(n+1)]`
-/

namespace A174955.P10983044074816287628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174955.P10983044074816287628

/-! ## A174955.P923181099267256874

`∩[A240621(n+1), A378983(n+1)]`
-/

namespace A174955.P923181099267256874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174955.P923181099267256874

/-! ## A174955.P15323689646607313222

`∩[A054799(n+1), A240621(n+1)]`
-/

namespace A174955.P15323689646607313222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174955.P15323689646607313222

/-! ## A174955.P5088113989677817174

`∩[A063700(n+1), A240621(n+1)]`
-/

namespace A174955.P5088113989677817174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174955.P5088113989677817174

/-! ## A174955.P5784891176094218009

`∩[A111166(n+1), A240621(n+1)]`
-/

namespace A174955.P5784891176094218009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174955.P5784891176094218009

/-! ## A174955.P5255549151630894780

`∩[A124588(n+1), A240621(n+1)]`
-/

namespace A174955.P5255549151630894780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174955.P5255549151630894780

/-! ## A174955.P4792102671016150070

`∩[A181747(n+1), A240621(n+1)]`
-/

namespace A174955.P4792102671016150070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174955.P4792102671016150070

/-! ## A174955.P1992852750139858827

`∩[A240621(n+1), A280255(n+1)]`
-/

namespace A174955.P1992852750139858827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174955.P1992852750139858827

/-! ## A174955.P3957145673217657724

`∩[A063693(n+1), A240621(n+1)]`
-/

namespace A174955.P3957145673217657724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174955.P3957145673217657724

/-! ## A174955.P10488925376273748002

`∩[A240621(n+1), A394509(n+1)]`
-/

namespace A174955.P10488925376273748002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174955.P10488925376273748002

/-! ## A174955.P12392305237194887282

`∩[A240621(n+1), A395788(n+1)]`
-/

namespace A174955.P12392305237194887282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174955.P12392305237194887282

/-! ## A174955.P1924004993792303613

`∩[A073534(n+1), A240621(n+1)]`
-/

namespace A174955.P1924004993792303613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174955.P1924004993792303613

/-! ## A174955.P5587517555375006056

`∩[A240621(n+1), A280590(n+1)]`
-/

namespace A174955.P5587517555375006056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174955.P5587517555375006056

/-! ## A174955.P9167521013407568133

`∩[A001838(n+1), A240621(n+1)]`
-/

namespace A174955.P9167521013407568133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174955.P9167521013407568133

/-!
# A174956: 0 unless n is the k-th semiprime when a(n) = k.

The programs for A174956, the canonical program `A174956.P4901462298165488404` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174956 has offset 1).

The definition of A174956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174956.P13010416744414786937

`A064911(n+1)*A072000(n+1)`
-/

namespace A174956.P13010416744414786937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1) * A072000 (n + 1)

end

end A174956.P13010416744414786937

namespace A174956

/-- `A064911(n+1)*A072000(n+1)` -/
def P13010416744414786937.Spec : Prop :=
  ∀ n, P13010416744414786937.a n = A174956 (n + 1)

end A174956

/-! ## A174956.P12459687282468952212

`A058933(n+1)*A064911(n+1)`
-/

namespace A174956.P12459687282468952212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (n + 1) * A064911 (n + 1)

end

end A174956.P12459687282468952212

namespace A174956

/-- `A058933(n+1)*A064911(n+1)` -/
def P12459687282468952212.Spec : Prop :=
  ∀ n, P12459687282468952212.a n = A174956 (n + 1)

end A174956

/-! ## A174956.P5758944721814937856

`A072000(n^ceil(A064911(n+1)/(n+1))+1)`
-/

namespace A174956.P5758944721814937856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈(A064911 (n + 1) : ℚ) / (n + 1 : ℚ)⌉ : ℤ) + 1)).toNat

end

end A174956.P5758944721814937856

namespace A174956

/-- `A072000(n^ceil(A064911(n+1)/(n+1))+1)` -/
def P5758944721814937856.Spec : Prop :=
  ∀ n, P5758944721814937856.a n = A174956 (n + 1)

end A174956

/-! ## A174956.P16517215184616502341

`A010051(A032742(n+1))*A072000(n+1)`
-/

namespace A174956.P16517215184616502341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A032742 (n + 1)).toNat * A072000 (n + 1)

end

end A174956.P16517215184616502341

namespace A174956

/-- `A010051(A032742(n+1))*A072000(n+1)` -/
def P16517215184616502341.Spec : Prop :=
  ∀ n, P16517215184616502341.a n = A174956 (n + 1)

end A174956

/-! ## A174956.P1414716978260600553

`(A072613(n+1)+A056811(n+1))*A064911(n+1)`
-/

namespace A174956.P1414716978260600553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A072613 (n + 1) + A056811 (n + 1)) * A064911 (n + 1)

end

end A174956.P1414716978260600553

namespace A174956

/-- `(A072613(n+1)+A056811(n+1))*A064911(n+1)` -/
def P1414716978260600553.Spec : Prop :=
  ∀ n, P1414716978260600553.a n = A174956 (n + 1)

end A174956

/-! ## A174956.P1050508463947791439

`(A334940(n+1)-A072613(n+1))*A064911(n+1)`
-/

namespace A174956.P1050508463947791439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A334940 (n + 1) - A072613 (n + 1)) * A064911 (n + 1)

end

end A174956.P1050508463947791439

namespace A174956

/-- `(A334940(n+1)-A072613(n+1))*A064911(n+1)` -/
def P1050508463947791439.Spec : Prop :=
  ∀ n, P1050508463947791439.a n = A174956 (n + 1)

end A174956

/-! ## A174956.P4901462298165488404

`(A072000(n+1)-A072000(A028310(n)))*A072000(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A174956

/-- `(A072000(n+1)-A072000(A028310(n)))*A072000(n+1)` -/
def P4901462298165488404.Spec : Prop :=
  ∀ n, P4901462298165488404.a n = A174956 (n + 1)

theorem P4901462298165488404.correct : P4901462298165488404.Spec := by
  intro n
  simp only [A174956, Nat.add_sub_cancel]

end A174956

/-! ## A174956.P6709583304974402508

`A072000(n+1)*A101605(2*(n+1))`
-/

namespace A174956.P6709583304974402508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (n + 1) * A101605 (2 * (n + 1))

end

end A174956.P6709583304974402508

namespace A174956

/-- `A072000(n+1)*A101605(2*(n+1))` -/
def P6709583304974402508.Spec : Prop :=
  ∀ n, P6709583304974402508.a n = A174956 (n + 1)

end A174956

/-! ## A174956.P8859817276666237403

`∑[A101605(2*n+2)]*A101605(2*n+2)`
-/

namespace A174956.P8859817276666237403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (2 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A101605 (2 * n + 2)

end

end A174956.P8859817276666237403

namespace A174956

/-- `∑[A101605(2*n+2)]*A101605(2*n+2)` -/
def P8859817276666237403.Spec : Prop :=
  ∀ n, P8859817276666237403.a n = A174956 (n + 1)

end A174956

/-! ## A174956.P1182612643427431843

`(A072000(n+1)-A072000(A233583(n+1)))*A072000(n+1)`
-/

namespace A174956.P1182612643427431843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A072000 (n + 1) - A072000 (A233583 (n + 1)).toNat) * A072000 (n + 1)

end

end A174956.P1182612643427431843

namespace A174956

/-- `(A072000(n+1)-A072000(A233583(n+1)))*A072000(n+1)` -/
def P1182612643427431843.Spec : Prop :=
  ∀ n, P1182612643427431843.a n = A174956 (n + 1)

end A174956

/-!
# A174958: a(n)=Sum((A008292(n - j, j) - C(n - j - 1, j))/2, j=0, [(n - 1)/2]).

The programs for A174958, there is no canonical definition to state claims against.
-/

/-! ## A174958.P6096470361791441646

`floor((A000800(n)-A000045(n))/2)`
-/

namespace A174958.P6096470361791441646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000800 n - A000045 n : ℚ) / 2⌋

end

end A174958.P6096470361791441646

/-! ## A174958.P5357616745560984870

`A004526(A000800(n)-A000045(n))`
-/

namespace A174958.P5357616745560984870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000800 n - A000045 n).toNat

end

end A174958.P5357616745560984870

/-! ## A174958.P4703549334741090391

`A175126(A000800(n)-A000045(n))`
-/

namespace A174958.P4703549334741090391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A000800 n - A000045 n).toNat

end

end A174958.P4703549334741090391

/-! ## A174958.P6845505414280968075

`A004526(A000800(n)-A324969(n+1))`
-/

namespace A174958.P6845505414280968075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000800 n - A324969 (n + 1)).toNat

end

end A174958.P6845505414280968075

/-!
# A174959: G.f.: x^3*(2*x-1) / ((1-x)*(1-x-x^2)*(1-2*x^2)).

The programs for A174959, the canonical program `A174959.P10307397227822754556` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174959 has offset 0).

The definition of A174959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174959.P10307397227822754556

`2*a(n-1)+2*a(n-2)-5*a(n-3)+2*a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=-1, a(4)=0`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A174959

/-- `2*a(n-1)+2*a(n-2)-5*a(n-3)+2*a(n-5)` -/
def P10307397227822754556.Spec : Prop :=
  ∀ n, P10307397227822754556.a n = A174959 n

theorem P10307397227822754556.correct : P10307397227822754556.Spec := by
  intro n
  simp only [A174959]

end A174959

/-! ## A174959.P540253650671843175

`∑[A295725(abs(1-n))]`
-/

namespace A174959.P540253650671843175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295725 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174959.P540253650671843175

namespace A174959

/-- `∑[A295725(abs(1-n))]` -/
def P540253650671843175.Spec : Prop :=
  ∀ n, P540253650671843175.a n = A174959 n

end A174959

/-! ## A174959.P8981408965671921776

`A295725(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A174959.P8981408965671921776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A295725 (n - 1) + a (n - 1)

end

end A174959.P8981408965671921776

namespace A174959

/-- `A295725(n-1)+a(n-1)` -/
def P8981408965671921776.Spec : Prop :=
  ∀ n, P8981408965671921776.a n = A174959 n

end A174959

/-! ## A174959.P1526037089994498678

`A000045(n)-∑[2*a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A174959.P1526037089994498678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A174959.P1526037089994498678

namespace A174959

/-- `A000045(n)-∑[2*a(n-2)]` -/
def P1526037089994498678.Spec : Prop :=
  ∀ n, P1526037089994498678.a n = A174959 n

end A174959

/-! ## A174959.P13152019881381146389

`A001611(n)-A060546(n)`
-/

namespace A174959.P13152019881381146389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - A060546 n

end

end A174959.P13152019881381146389

namespace A174959

/-- `A001611(n)-A060546(n)` -/
def P13152019881381146389.Spec : Prop :=
  ∀ n, P13152019881381146389.a n = A174959 n

end A174959

/-! ## A174959.P11363837418421562538

`A295619(n)-A052955(n)`
-/

namespace A174959.P11363837418421562538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295619 n - A052955 n

end

end A174959.P11363837418421562538

namespace A174959

/-- `A295619(n)-A052955(n)` -/
def P11363837418421562538.Spec : Prop :=
  ∀ n, P11363837418421562538.a n = A174959 n

end A174959

/-! ## A174959.P12113770333121183877

`A001611(n)-∑[A131575(n)]`
-/

namespace A174959.P12113770333121183877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174959.P12113770333121183877

namespace A174959

/-- `A001611(n)-∑[A131575(n)]` -/
def P12113770333121183877.Spec : Prop :=
  ∀ n, P12113770333121183877.a n = A174959 n

end A174959

/-! ## A174959.P5832128991889077080

`A001611(n)-Δ[A027383(n)]`
-/

namespace A174959.P5832128991889077080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - (f1 (n + 1) - f1 n)

end

end A174959.P5832128991889077080

namespace A174959

/-- `A001611(n)-Δ[A027383(n)]` -/
def P5832128991889077080.Spec : Prop :=
  ∀ n, P5832128991889077080.a n = A174959 n

end A174959

/-! ## A174959.P8853269477093409039

`A001611(n)-A016116(n+1)`
-/

namespace A174959.P8853269477093409039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - A016116 (n + 1)

end

end A174959.P8853269477093409039

namespace A174959

/-- `A001611(n)-A016116(n+1)` -/
def P8853269477093409039.Spec : Prop :=
  ∀ n, P8853269477093409039.a n = A174959 n

end A174959

/-! ## A174959.P10647064169241955931

`A000045(n)+1-A060546(n)`
-/

namespace A174959.P10647064169241955931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (1 - A060546 n)

end

end A174959.P10647064169241955931

namespace A174959

/-- `A000045(n)+1-A060546(n)` -/
def P10647064169241955931.Spec : Prop :=
  ∀ n, P10647064169241955931.a n = A174959 n

end A174959

/-! ## A174959.P1615306847646573304

`A157725(n)-A051032(n+1)`
-/

namespace A174959.P1615306847646573304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n - A051032 (n + 1)

end

end A174959.P1615306847646573304

namespace A174959

/-- `A157725(n)-A051032(n+1)` -/
def P1615306847646573304.Spec : Prop :=
  ∀ n, P1615306847646573304.a n = A174959 n

end A174959

/-! ## A174959.P2177193453672306971

`A000045(n)+1-∑[A131575(n)]`
-/

namespace A174959.P2177193453672306971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A174959.P2177193453672306971

namespace A174959

/-- `A000045(n)+1-∑[A131575(n)]` -/
def P2177193453672306971.Spec : Prop :=
  ∀ n, P2177193453672306971.a n = A174959 n

end A174959

/-! ## A174959.P14789505264787278046

`A000045(n)+1-Δ[A027383(n)]`
-/

namespace A174959.P14789505264787278046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (1 - (f1 (n + 1) - f1 n))

end

end A174959.P14789505264787278046

namespace A174959

/-- `A000045(n)+1-Δ[A027383(n)]` -/
def P14789505264787278046.Spec : Prop :=
  ∀ n, P14789505264787278046.a n = A174959 n

end A174959

/-! ## A174959.P4952972189662529817

`A001611(n)-Δ[A163978(n+1)]`
-/

namespace A174959.P4952972189662529817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - (f1 (n + 1) - f1 n)

end

end A174959.P4952972189662529817

namespace A174959

/-- `A001611(n)-Δ[A163978(n+1)]` -/
def P4952972189662529817.Spec : Prop :=
  ∀ n, P4952972189662529817.a n = A174959 n

end A174959

/-! ## A174959.P1635676336392925852

`A000045(n)+1-∏[A000034(n)]`
-/

namespace A174959.P1635676336392925852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (1 - ∏ j ∈ Finset.range (n + 1), f1 j)

end

end A174959.P1635676336392925852

namespace A174959

/-- `A000045(n)+1-∏[A000034(n)]` -/
def P1635676336392925852.Spec : Prop :=
  ∀ n, P1635676336392925852.a n = A174959 n

end A174959

/-! ## A174959.P8008947968299538634

`A001611(n)-∏[A176895(2*n)]`
-/

namespace A174959.P8008947968299538634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A174959.P8008947968299538634

namespace A174959

/-- `A001611(n)-∏[A176895(2*n)]` -/
def P8008947968299538634.Spec : Prop :=
  ∀ n, P8008947968299538634.a n = A174959 n

end A174959

/-! ## A174959.P4422214631415538754

`A000045(n)+1-A016116(n+1)`
-/

namespace A174959.P4422214631415538754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + 1 - A016116 (n + 1)

end

end A174959.P4422214631415538754

namespace A174959

/-- `A000045(n)+1-A016116(n+1)` -/
def P4422214631415538754.Spec : Prop :=
  ∀ n, P4422214631415538754.a n = A174959 n

end A174959

/-! ## A174959.P6598708695634703862

`A000045(n)+1-Δ[A163978(n+1)]`
-/

namespace A174959.P6598708695634703862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (1 - (f1 (n + 1) - f1 n))

end

end A174959.P6598708695634703862

namespace A174959

/-- `A000045(n)+1-Δ[A163978(n+1)]` -/
def P6598708695634703862.Spec : Prop :=
  ∀ n, P6598708695634703862.a n = A174959 n

end A174959

/-! ## A174959.P9315095444364194478

`A000045(n)+1-∏[A176895(2*n)]`
-/

namespace A174959.P9315095444364194478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + 1 - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A174959.P9315095444364194478

namespace A174959

/-- `A000045(n)+1-∏[A176895(2*n)]` -/
def P9315095444364194478.Spec : Prop :=
  ∀ n, P9315095444364194478.a n = A174959 n

end A174959

/-! ## A174959.P12399947009871517058

`A000045(n)+1-A011782(A080513(n))`
-/

namespace A174959.P12399947009871517058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (1 - A011782 (A080513 n).toNat)

end

end A174959.P12399947009871517058

namespace A174959

/-- `A000045(n)+1-A011782(A080513(n))` -/
def P12399947009871517058.Spec : Prop :=
  ∀ n, P12399947009871517058.a n = A174959 n

end A174959

/-!
# A174960: Smallest prime p such that p + n*(n+1)/2 is prime, or 0 if no such prime exists.

The programs for A174960, there is no canonical definition to state claims against.
-/

/-! ## A174960.P18086157879327060366

`A300817(∑[n]^A001876(n))`
-/

namespace A174960.P18086157879327060366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A001876 n : ℤ))).toNat

end

end A174960.P18086157879327060366

/-! ## A174960.P17107598575871504423

`A300817(∑[n]^A153764(n))`
-/

namespace A174960.P17107598575871504423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A153764 n : ℤ))).toNat

end

end A174960.P17107598575871504423

/-! ## A174960.P5739479656194813443

`A300817(∑[n]^A172353(n))`
-/

namespace A174960.P5739479656194813443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A172353 n : ℤ))).toNat

end

end A174960.P5739479656194813443

/-! ## A174960.P204364315236582120

`A300817(∑[n]^A274193(n))`
-/

namespace A174960.P204364315236582120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A274193 n : ℤ))).toNat

end

end A174960.P204364315236582120

/-! ## A174960.P14476087241024403396

`A300817(∑[n]^A284249(n))`
-/

namespace A174960.P14476087241024403396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A284249 n : ℤ))).toNat

end

end A174960.P14476087241024403396

/-!
# A174961: Number of non-unitary divisors of the n-th nonsquarefree number.

The programs for A174961, the canonical program `A174961.P1799675732854535246` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174961 has offset 1).

The definition of A174961 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A048105, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A174961.P1799675732854535246

`A048105(A013929(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A174961

/-- `A048105(A013929(n+1))` -/
def P1799675732854535246.Spec : Prop :=
  ∀ n, P1799675732854535246.a n = A174961 (n + 1)

theorem P1799675732854535246.correct : P1799675732854535246.Spec := by
  intro n
  simp only [A174961, Nat.add_sub_cancel]

end A174961

/-! ## A174961.P17188628043317508409

`∑{d}[A013929(n+1), or(1, A008683(#))]`
-/

namespace A174961.P17188628043317508409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.lor 1 (A008683 d)

end

end A174961.P17188628043317508409

namespace A174961

/-- `∑{d}[A013929(n+1), or(1, A008683(#))]` -/
def P17188628043317508409.Spec : Prop :=
  ∀ n, P17188628043317508409.a n = A174961 (n + 1)

end A174961

/-! ## A174961.P188518772561893848

`A000005(A013929(n+1))-A000005(A076333(n+1))`
-/

namespace A174961.P188518772561893848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A013929 (n + 1)).toNat - A000005 (A076333 (n + 1)).toNat

end

end A174961.P188518772561893848

namespace A174961

/-- `A000005(A013929(n+1))-A000005(A076333(n+1))` -/
def P188518772561893848.Spec : Prop :=
  ∀ n, P188518772561893848.a n = A174961 (n + 1)

end A174961

/-! ## A174961.P2232746716955353401

`A048105(A162966(n+2))`
-/

namespace A174961.P2232746716955353401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (A162966 (n + 2)).toNat

end

end A174961.P2232746716955353401

namespace A174961

/-- `A048105(A162966(n+2))` -/
def P2232746716955353401.Spec : Prop :=
  ∀ n, P2232746716955353401.a n = A174961 (n + 1)

end A174961

/-! ## A174961.P6487352006818037108

`A048105(lt[1, A005361(n+1)]+1)`
-/

namespace A174961.P6487352006818037108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A174961.P6487352006818037108

namespace A174961

/-- `A048105(lt[1, A005361(n+1)]+1)` -/
def P6487352006818037108.Spec : Prop :=
  ∀ n, P6487352006818037108.a n = A174961 (n + 1)

end A174961

/-! ## A174961.P6784634490726609506

`A048105(lt[1, A046951(n+1)]+1)`
-/

namespace A174961.P6784634490726609506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A174961.P6784634490726609506

namespace A174961

/-- `A048105(lt[1, A046951(n+1)]+1)` -/
def P6784634490726609506.Spec : Prop :=
  ∀ n, P6784634490726609506.a n = A174961 (n + 1)

end A174961

/-! ## A174961.P6019832329014010116

`A048105(lt[A008683(n+1)², 1]+1)`
-/

namespace A174961.P6019832329014010116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A174961.P6019832329014010116

namespace A174961

/-- `A048105(lt[A008683(n+1)², 1]+1)` -/
def P6019832329014010116.Spec : Prop :=
  ∀ n, P6019832329014010116.a n = A174961 (n + 1)

end A174961

/-! ## A174961.P8494577002599312263

`A048105(eq[1, A008683(n+1)+1]+1)`
-/

namespace A174961.P8494577002599312263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A174961.P8494577002599312263

namespace A174961

/-- `A048105(eq[1, A008683(n+1)+1]+1)` -/
def P8494577002599312263.Spec : Prop :=
  ∀ n, P8494577002599312263.a n = A174961 (n + 1)

end A174961

/-! ## A174961.P2467101398810482293

`A048105(lt[1, A048105(n+1)+1]+1)`
-/

namespace A174961.P2467101398810482293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A174961.P2467101398810482293

namespace A174961

/-- `A048105(lt[1, A048105(n+1)+1]+1)` -/
def P2467101398810482293.Spec : Prop :=
  ∀ n, P2467101398810482293.a n = A174961 (n + 1)

end A174961

/-! ## A174961.P17471368047240756061

`∑{d}[A013929(n+1), A001221(A249739(#))]`
-/

namespace A174961.P17471368047240756061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 (A249739 d).toNat

end

end A174961.P17471368047240756061

namespace A174961

/-- `∑{d}[A013929(n+1), A001221(A249739(#))]` -/
def P17471368047240756061.Spec : Prop :=
  ∀ n, P17471368047240756061.a n = A174961 (n + 1)

end A174961

/-! ## A174961.P2294733601507552964

`A048105(A046027(n+1)*A384064(n+1))`
-/

namespace A174961.P2294733601507552964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (A046027 (n + 1) * A384064 (n + 1)).toNat

end

end A174961.P2294733601507552964

namespace A174961

/-- `A048105(A046027(n+1)*A384064(n+1))` -/
def P2294733601507552964.Spec : Prop :=
  ∀ n, P2294733601507552964.a n = A174961 (n + 1)

end A174961

/-! ## A174961.P109981216887853698

`A048105(lt[1, A285718(n+1)])`
-/

namespace A174961.P109981216887853698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A174961.P109981216887853698

namespace A174961

/-- `A048105(lt[1, A285718(n+1)])` -/
def P109981216887853698.Spec : Prop :=
  ∀ n, P109981216887853698.a n = A174961 (n + 1)

end A174961

/-!
# A174962: a(n) = n^n*(3+n)/2.

The programs for A174962, the canonical program `A174962.P16400334399799843144` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174962 has offset 1).

The definition of A174962 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^(n+1)*(3+n+1)/2` (program `A174962.P11620531813696674436`, by `A174962.P11620531813696674436.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174962.P11620531813696674436

`(n+1)^(n+1)*(3+n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A174962.P11620531813696674436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) * (3 + (n + 1)) : ℚ) / 2

end

end A174962.P11620531813696674436

namespace A174962

/-- `(n+1)^(n+1)*(3+n+1)/2` -/
def P11620531813696674436.Spec : Prop :=
  ∀ n, P11620531813696674436.a n = (A174962 (n + 1) : ℚ)

theorem P11620531813696674436.correct : P11620531813696674436.Spec := by
  intro n
  simp only [A174962, Nat.add_sub_cancel, A174962.P11620531813696674436.a, A174962.P16400334399799843144.a, A000096, A000096.P6925830517264718723.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A174962

/-! ## A174962.P16400334399799843144

`(n+1)^n*A000096(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A174962

/-- `(n+1)^n*A000096(n+1)` -/
def P16400334399799843144.Spec : Prop :=
  ∀ n, P16400334399799843144.a n = A174962 (n + 1)

theorem P16400334399799843144.correct : P16400334399799843144.Spec := by
  intro n
  simp only [A174962, Nat.add_sub_cancel]

end A174962

/-! ## A174962.P14919046826202655532

`A397420(A034856(n+2))`
-/

namespace A174962.P14919046826202655532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397420 (A034856 (n + 2)).toNat

end

end A174962.P14919046826202655532

namespace A174962

/-- `A397420(A034856(n+2))` -/
def P14919046826202655532.Spec : Prop :=
  ∀ n, P14919046826202655532.a n = A174962 (n + 1)

end A174962

/-! ## A174962.P17579279726157049676

`A397420(A000096(n+2)-1)`
-/

namespace A174962.P17579279726157049676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397420 (A000096 (n + 2) - 1).toNat

end

end A174962.P17579279726157049676

namespace A174962

/-- `A397420(A000096(n+2)-1)` -/
def P17579279726157049676.Spec : Prop :=
  ∀ n, P17579279726157049676.a n = A174962 (n + 1)

end A174962

/-! ## A174962.P1142858457172394260

`A081132(n)+A000312(n+1)`
-/

namespace A174962.P1142858457172394260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081132 n + A000312 (n + 1)

end

end A174962.P1142858457172394260

namespace A174962

/-- `A081132(n)+A000312(n+1)` -/
def P1142858457172394260.Spec : Prop :=
  ∀ n, P1142858457172394260.a n = A174962 (n + 1)

theorem P1142858457172394260.correct : P1142858457172394260.Spec := by
  intro n
  simp only [A174962, Nat.add_sub_cancel, A174962.P1142858457172394260.a, A174962.P16400334399799843144.a, A000096, A000096.P6925830517264718723.a, A000312, A000312.P3932771318196185165.a, A081132, A081132.P15624606944283833960.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A174962

/-! ## A174962.P8895440644998064381

`A000096(n+1)*A000169(n+1)`
-/

namespace A174962.P8895440644998064381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 1) * A000169 (n + 1)

end

end A174962.P8895440644998064381

namespace A174962

/-- `A000096(n+1)*A000169(n+1)` -/
def P8895440644998064381.Spec : Prop :=
  ∀ n, P8895440644998064381.a n = A174962 (n + 1)

theorem P8895440644998064381.correct : P8895440644998064381.Spec := by
  intro n
  simp only [A174962, Nat.add_sub_cancel, A174962.P8895440644998064381.a, A174962.P16400334399799843144.a, A000096, A000096.P6925830517264718723.a, A000169, A000169.P4048163930515893600.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A174962

/-! ## A174962.P12900967674247263598

`A000312(n+1)+A055897(n+2)/2`
-/

namespace A174962.P12900967674247263598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000312 (n + 1) : ℚ) + (A055897 (n + 2) : ℚ) / 2

end

end A174962.P12900967674247263598

namespace A174962

/-- `A000312(n+1)+A055897(n+2)/2` -/
def P12900967674247263598.Spec : Prop :=
  ∀ n, P12900967674247263598.a n = (A174962 (n + 1) : ℚ)

theorem P12900967674247263598.correct : P12900967674247263598.Spec := by
  intro n
  simp only [A174962, Nat.add_sub_cancel, A174962.P12900967674247263598.a, A174962.P16400334399799843144.a, A000096, A000096.P6925830517264718723.a, A000312, A000312.P3932771318196185165.a, A055897, A055897.P15855458032712343485.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A174962

/-! ## A174962.P6576794464122818322

`A000312(n+1)+A000169(n+1)*A000217(n+1)`
-/

namespace A174962.P6576794464122818322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (n + 1) + A000169 (n + 1) * A000217 (n + 1)

end

end A174962.P6576794464122818322

namespace A174962

/-- `A000312(n+1)+A000169(n+1)*A000217(n+1)` -/
def P6576794464122818322.Spec : Prop :=
  ∀ n, P6576794464122818322.a n = A174962 (n + 1)

theorem P6576794464122818322.correct : P6576794464122818322.Spec := by
  intro n
  simp only [A174962, Nat.add_sub_cancel, A174962.P6576794464122818322.a, A174962.P16400334399799843144.a, A000096, A000096.P6925830517264718723.a, A000169, A000169.P4048163930515893600.a, A000217, A000217.P10269402890581615239.a, A000312, A000312.P3932771318196185165.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A174962

/-!
# A174963: Determinant of the symmetric n X n matrix M_n where M_n(j,k) = n for j = k, M_n(j,n) = n-j, M_n(n,k) = n-k, M_n(j,k) = 0 otherwise.

The programs for A174963, the canonical program `A174963.P17238427548066664110` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174963 has offset 1).

The definition of A174963 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174963.P17238427548066664110

`(n+1)^(n+1)-n*(n+1)*(2*(n+1)-1)/6*(n+1)^(n-1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A174963

/-- `(n+1)^(n+1)-n*(n+1)*(2*(n+1)-1)/6*(n+1)^(n-1)` -/
def P17238427548066664110.Spec : Prop :=
  ∀ n, P17238427548066664110.a n = (A174963 (n + 1) : ℚ)

end A174963

/-!
# A174964: Determinant of the symmetric n X n matrix M_n where M_n(j,k) = n^2+1 for j = k, M_n(j,k) = n for abs(j-k) = 1, M_n(j,k) = 0 otherwise.

The programs for A174964, there is no canonical definition to state claims against.
-/

/-! ## A174964.P10149795819188183376

`A343009(n+1)+record[A245910(n)]`
-/

namespace A174964.P10149795819188183376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343009 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174964.P10149795819188183376

/-! ## A174964.P14251587792198117117

`A343009(n+1)+A062206(n+1)`
-/

namespace A174964.P14251587792198117117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343009 (n + 1) + A062206 (n + 1)

end

end A174964.P14251587792198117117

/-!
# A174965: Length of the n-th run of consecutive terms in A000961.

The programs for A174965, the canonical program `A174965.P13643991388117450283` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174965 has offset 1).

The definition of A174965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9987 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174965.P13643991388117450283

`Δ[record[(n+1)%(A057820(n+1)+n)]]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A174965

/-- `Δ[record[(n+1)%(A057820(n+1)+n)]]` -/
def P13643991388117450283.Spec : Prop :=
  ∀ n, P13643991388117450283.a n = A174965 (n + 1)

theorem P13643991388117450283.correct : P13643991388117450283.Spec := by
  intro n
  simp only [A174965, Nat.add_sub_cancel]

end A174965

/-! ## A174965.P6821482620623645152

`Δ[record[A074591(n+1)-A085970(n+1)]]`
-/

namespace A174965.P6821482620623645152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (n + 1) - A085970 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174965.P6821482620623645152

namespace A174965

/-- `Δ[record[A074591(n+1)-A085970(n+1)]]` -/
def P6821482620623645152.Spec : Prop :=
  ∀ n, P6821482620623645152.a n = A174965 (n + 1)

end A174965

/-! ## A174965.P17905370466796949844

`Δ[record[A065515(n+1)*A143731(n+1)]]`
-/

namespace A174965.P17905370466796949844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (n + 1) * A143731 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174965.P17905370466796949844

namespace A174965

/-- `Δ[record[A065515(n+1)*A143731(n+1)]]` -/
def P17905370466796949844.Spec : Prop :=
  ∀ n, P17905370466796949844.a n = A174965 (n + 1)

end A174965

/-! ## A174965.P3503415668045823586

`Δ[record[A095874(n+2)-A095874(n+1)]]`
-/

namespace A174965.P3503415668045823586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095874 (n + 2) - A095874 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174965.P3503415668045823586

namespace A174965

/-- `Δ[record[A095874(n+2)-A095874(n+1)]]` -/
def P3503415668045823586.Spec : Prop :=
  ∀ n, P3503415668045823586.a n = A174965 (n + 1)

end A174965

/-! ## A174965.P11722840223387340942

`Δ[record[A065515(n+1)%A181064(n+1)]]`
-/

namespace A174965.P11722840223387340942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065515 (n + 1)) (A181064 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174965.P11722840223387340942

namespace A174965

/-- `Δ[record[A065515(n+1)%A181064(n+1)]]` -/
def P11722840223387340942.Spec : Prop :=
  ∀ n, P11722840223387340942.a n = A174965 (n + 1)

end A174965

/-!
# A174966: Triangle read by rows: T(n,k) = binomial(n,k) + Eulerian1(n+1,k) - binomial(n,k) * Eulerian1(n+1,k).

The programs for A174966, the canonical program `A174966.P16671628396494930920` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174966 has offset 0).

The definition of A174966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1857 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174966.P4629886975593299793

`A176487(n)+1-A141686(n+1)`
-/

namespace A174966.P4629886975593299793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176487 n + (1 - A141686 (n + 1))

end

end A174966.P4629886975593299793

namespace A174966

/-- `A176487(n)+1-A141686(n+1)` -/
def P4629886975593299793.Spec : Prop :=
  ∀ n, P4629886975593299793.a n = A174966 n

theorem P4629886975593299793.correct : P4629886975593299793.Spec := by
  intro n
  simp only [A174966, Nat.add_sub_cancel, A174966.P4629886975593299793.a, A174966.P16671628396494930920.a, A007318, A007318.P11755526479805562006.a, A008292, A008292.P18172958035633294905.a, A014473, A014473.P9301799580602651200.a, A141686, A141686.P6622129944905453990.a, A176487, A176487.P5024915074260981774.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A174966

/-! ## A174966.P7685613509072913020

`2*A141689(n+1)-A141686(n+1)`
-/

namespace A174966.P7685613509072913020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141689 (n + 1) - A141686 (n + 1)

end

end A174966.P7685613509072913020

namespace A174966

/-- `2*A141689(n+1)-A141686(n+1)` -/
def P7685613509072913020.Spec : Prop :=
  ∀ n, P7685613509072913020.a n = A174966 n

end A174966

/-! ## A174966.P16671628396494930920

`A007318(n)-A008292(n+1)*A014473(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A174966

/-- `A007318(n)-A008292(n+1)*A014473(n)` -/
def P16671628396494930920.Spec : Prop :=
  ∀ n, P16671628396494930920.a n = A174966 n

theorem P16671628396494930920.correct : P16671628396494930920.Spec := by
  intro n
  simp only [A174966]

end A174966

/-! ## A174966.P1449911834457750588

`abs(A117440(n))-A008292(n+1)*A014473(n)`
-/

namespace A174966.P1449911834457750588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117440 n| - A008292 (n + 1) * A014473 n

end

end A174966.P1449911834457750588

namespace A174966

/-- `abs(A117440(n))-A008292(n+1)*A014473(n)` -/
def P1449911834457750588.Spec : Prop :=
  ∀ n, P1449911834457750588.a n = A174966 n

end A174966

/-! ## A174966.P9934732688084365989

`A008292(n+1)+A007318(n)-A141686(n+1)`
-/

namespace A174966.P9934732688084365989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A007318 n - A141686 (n + 1))

end

end A174966.P9934732688084365989

namespace A174966

/-- `A008292(n+1)+A007318(n)-A141686(n+1)` -/
def P9934732688084365989.Spec : Prop :=
  ∀ n, P9934732688084365989.a n = A174966 n

theorem P9934732688084365989.correct : P9934732688084365989.Spec := by
  intro n
  simp only [A174966, Nat.add_sub_cancel, A174966.P9934732688084365989.a, A174966.P16671628396494930920.a, A007318, A007318.P11755526479805562006.a, A008292, A008292.P18172958035633294905.a, A014473, A014473.P9301799580602651200.a, A141686, A141686.P6622129944905453990.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A174966

/-!
# A174967: Smallest number of the form k^2 + k + 1 with n distinct prime divisors.

The programs for A174967, there is no canonical definition to state claims against.
-/

/-! ## A174967.P4547101892415913844

`A004652(A138769(n+1))`
-/

namespace A174967.P4547101892415913844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (A138769 (n + 1)).toNat

end

end A174967.P4547101892415913844

/-! ## A174967.P14109448170728112785

`or(A002620(A138769(n+1)), A171435(n+1))`
-/

namespace A174967.P14109448170728112785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002620 (A138769 (n + 1)).toNat) (A171435 (n + 1))

end

end A174967.P14109448170728112785

/-! ## A174967.P5456950669825882309

`A004524(A004524(n))+A002620(A138769(n+1))+1`
-/

namespace A174967.P5456950669825882309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A004524 n).toNat + (A002620 (A138769 (n + 1)).toNat + 1)

end

end A174967.P5456950669825882309

/-!
# A174968: Decimal expansion of (1 + sqrt(2))/2.

The programs for A174968, there is no canonical definition to state claims against.
-/

/-! ## A174968.P880634323561677223

`A351898(n)/(char[1]+1)`
-/

namespace A174968.P880634323561677223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351898 (n + 2) : ℚ) / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ)

end

end A174968.P880634323561677223

/-! ## A174968.P4793280205841022832

`(A157214(n)-char[1-n^8])/(A063524(n)+1)`
-/

namespace A174968.P4793280205841022832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 8 : ℤ)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157214 (n + 2) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℚ) / (A063524 n + 1 : ℚ)

end

end A174968.P4793280205841022832

/-! ## A174968.P4111318407754286803

`1/A000034(A004275(n))*A351898(n)`
-/

namespace A174968.P4111318407754286803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A000034 (A004275 n).toNat : ℚ) * (A351898 (n + 2) : ℚ)

end

end A174968.P4111318407754286803

/-!
# A174969: Composites of form n^2 + n + 1.

The programs for A174969, the canonical program `A174969.P12124736851959896936` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174969 has offset 1).

The definition of A174969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8589 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174969.P3725909222120537046

`∩[n²+1+n, A325658(n+2)]`
-/

namespace A174969.P3725909222120537046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325658 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174969.P3725909222120537046

namespace A174969

/-- `∩[n²+1+n, A325658(n+2)]` -/
def P3725909222120537046.Spec : Prop :=
  ∀ n, (P3725909222120537046.a n : ℤ) = A174969 (n + 1)

end A174969

/-! ## A174969.P12124736851959896936

`A002061(lt[2, A278251(n)])`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A174969

/-- `A002061(lt[2, A278251(n)])` -/
def P12124736851959896936.Spec : Prop :=
  ∀ n, P12124736851959896936.a n = A174969 (n + 1)

theorem P12124736851959896936.correct : P12124736851959896936.Spec := by
  intro n
  simp only [A174969, Nat.add_sub_cancel]

end A174969

/-! ## A174969.P4357286164478205608

`∩[A325658(n+1), A008811(A004274(n))]`
-/

namespace A174969.P4357286164478205608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008811 (A004274 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174969.P4357286164478205608

namespace A174969

/-- `∩[A325658(n+1), A008811(A004274(n))]` -/
def P4357286164478205608.Spec : Prop :=
  ∀ n, (P4357286164478205608.a n : ℤ) = A174969 (n + 1)

end A174969

/-! ## A174969.P8412420550293603793

`∩[A325658(n+1), A008811(A005408(n))]`
-/

namespace A174969.P8412420550293603793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008811 (A005408 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174969.P8412420550293603793

namespace A174969

/-- `∩[A325658(n+1), A008811(A005408(n))]` -/
def P8412420550293603793.Spec : Prop :=
  ∀ n, (P8412420550293603793.a n : ℤ) = A174969 (n + 1)

end A174969

/-! ## A174969.P6289395787228277053

`∩[A325658(n+1), A130404(A005408(n+1))]`
-/

namespace A174969.P6289395787228277053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130404 (A005408 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174969.P6289395787228277053

namespace A174969

/-- `∩[A325658(n+1), A130404(A005408(n+1))]` -/
def P6289395787228277053.Spec : Prop :=
  ∀ n, (P6289395787228277053.a n : ℤ) = A174969 (n + 1)

end A174969

/-! ## A174969.P18425069660457961697

`record[A171435(A034111(n+1))]`
-/

namespace A174969.P18425069660457961697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A034111 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174969.P18425069660457961697

namespace A174969

/-- `record[A171435(A034111(n+1))]` -/
def P18425069660457961697.Spec : Prop :=
  ∀ n, P18425069660457961697.a n = A174969 (n + 1)

end A174969

/-! ## A174969.P7969999229300756870

`record[A171435(A002061(n+5))]`
-/

namespace A174969.P7969999229300756870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A002061 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174969.P7969999229300756870

namespace A174969

/-- `record[A171435(A002061(n+5))]` -/
def P7969999229300756870.Spec : Prop :=
  ∀ n, P7969999229300756870.a n = A174969 (n + 1)

end A174969

/-! ## A174969.P10392343904723962452

`filter[A002061(n), A066247(#)]`
-/

namespace A174969.P10392343904723962452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A174969.P10392343904723962452

namespace A174969

/-- `filter[A002061(n), A066247(#)]` -/
def P10392343904723962452.Spec : Prop :=
  ∀ n, P10392343904723962452.a n = A174969 (n + 1)

end A174969

/-! ## A174969.P11450679510819715750

`filter[A002061(n), A202238(#)]`
-/

namespace A174969.P11450679510819715750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A174969.P11450679510819715750

namespace A174969

/-- `filter[A002061(n), A202238(#)]` -/
def P11450679510819715750.Spec : Prop :=
  ∀ n, P11450679510819715750.a n = A174969 (n + 1)

end A174969

/-! ## A174969.P10155977338227913555

`filter[A002061(n), A323162(#)]`
-/

namespace A174969.P10155977338227913555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A174969.P10155977338227913555

namespace A174969

/-- `filter[A002061(n), A323162(#)]` -/
def P10155977338227913555.Spec : Prop :=
  ∀ n, P10155977338227913555.a n = A174969 (n + 1)

end A174969

/-! ## A174969.P9145265467974689758

`filter[A034111(n+1), A005171(#)]`
-/

namespace A174969.P9145265467974689758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A174969.P9145265467974689758

namespace A174969

/-- `filter[A034111(n+1), A005171(#)]` -/
def P9145265467974689758.Spec : Prop :=
  ∀ n, P9145265467974689758.a n = A174969 (n + 1)

end A174969

/-! ## A174969.P472552311038945712

`filter[A034111(n+1), A066247(#)]`
-/

namespace A174969.P472552311038945712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A174969.P472552311038945712

namespace A174969

/-- `filter[A034111(n+1), A066247(#)]` -/
def P472552311038945712.Spec : Prop :=
  ∀ n, P472552311038945712.a n = A174969 (n + 1)

end A174969

/-! ## A174969.P14481507299184870120

`filter[A034111(n+1), A202238(#)]`
-/

namespace A174969.P14481507299184870120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A174969.P14481507299184870120

namespace A174969

/-- `filter[A034111(n+1), A202238(#)]` -/
def P14481507299184870120.Spec : Prop :=
  ∀ n, P14481507299184870120.a n = A174969 (n + 1)

end A174969

/-! ## A174969.P14330984797624508944

`filter[A034111(n+1), A292438(#)]`
-/

namespace A174969.P14330984797624508944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A174969.P14330984797624508944

namespace A174969

/-- `filter[A034111(n+1), A292438(#)]` -/
def P14330984797624508944.Spec : Prop :=
  ∀ n, P14330984797624508944.a n = A174969 (n + 1)

end A174969

/-! ## A174969.P4060470433889494236

`filter[A034111(n+1), A323162(#)]`
-/

namespace A174969.P4060470433889494236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A174969.P4060470433889494236

namespace A174969

/-- `filter[A034111(n+1), A323162(#)]` -/
def P4060470433889494236.Spec : Prop :=
  ∀ n, P4060470433889494236.a n = A174969 (n + 1)

end A174969

/-! ## A174969.P10963089408336211851

`filter[A002061(n+2), A005171(#)]`
-/

namespace A174969.P10963089408336211851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A174969.P10963089408336211851

namespace A174969

/-- `filter[A002061(n+2), A005171(#)]` -/
def P10963089408336211851.Spec : Prop :=
  ∀ n, P10963089408336211851.a n = A174969 (n + 1)

end A174969

/-! ## A174969.P3058730162679721265

`filter[A002061(n+2), A292438(#)]`
-/

namespace A174969.P3058730162679721265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A174969.P3058730162679721265

namespace A174969

/-- `filter[A002061(n+2), A292438(#)]` -/
def P3058730162679721265.Spec : Prop :=
  ∀ n, P3058730162679721265.a n = A174969 (n + 1)

end A174969

/-! ## A174969.P2902696568621753915

`filter[A152032(2*n), A066247(#)]`
-/

namespace A174969.P2902696568621753915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152032 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A174969.P2902696568621753915

namespace A174969

/-- `filter[A152032(2*n), A066247(#)]` -/
def P2902696568621753915.Spec : Prop :=
  ∀ n, P2902696568621753915.a n = A174969 (n + 1)

end A174969

/-! ## A174969.P3124525608286041148

`filter[A152032(2*n), A202238(#)]`
-/

namespace A174969.P3124525608286041148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152032 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A174969.P3124525608286041148

namespace A174969

/-- `filter[A152032(2*n), A202238(#)]` -/
def P3124525608286041148.Spec : Prop :=
  ∀ n, P3124525608286041148.a n = A174969 (n + 1)

end A174969

/-! ## A174969.P14952998936073813361

`filter[A152032(2*n), A323162(#)]`
-/

namespace A174969.P14952998936073813361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152032 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A174969.P14952998936073813361

namespace A174969

/-- `filter[A152032(2*n), A323162(#)]` -/
def P14952998936073813361.Spec : Prop :=
  ∀ n, P14952998936073813361.a n = A174969 (n + 1)

end A174969

/-!
# A174970: The base 6 expansion of the number of trailing zeros of the base 6 expansion of (6^n)!.

The programs for A174970, there is no canonical definition to state claims against.
-/

/-! ## A174970.P7598071572575649604

`A002277(n+1)-A098181(A002281(n))`
-/

namespace A174970.P7598071572575649604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002277 (n + 1) - A098181 (A002281 n).toNat

end

end A174970.P7598071572575649604

/-!
# A174971: Periodic sequence: repeat (3,-3).

The programs for A174971, the canonical program `A174971.P4730089716543344271` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174971 has offset 0).

The definition of A174971 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174971.P4730089716543344271

`3*(-1)^n`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A174971

/-- `3*(-1)^n` -/
def P4730089716543344271.Spec : Prop :=
  ∀ n, P4730089716543344271.a n = A174971 n

theorem P4730089716543344271.correct : P4730089716543344271.Spec := by
  intro n
  simp only [A174971]

end A174971

/-!
# A174972: Number of surreal number forms produced by the n-th iteration of the induction rule.

The programs for A174972, there is no canonical definition to state claims against.
-/

/-! ## A174972.P7759435553911131805

`∑[A085411(2^n)]`
-/

namespace A174972.P7759435553911131805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085411 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174972.P7759435553911131805

/-! ## A174972.P7826201901941831928

`A211164(∑[2^n])`
-/

namespace A174972.P7826201901941831928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211164 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A174972.P7826201901941831928

/-! ## A174972.P5430264111492544475

`A049610(2^n+1)`
-/

namespace A174972.P5430264111492544475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (2 ^ n + 1)

end

end A174972.P5430264111492544475

/-! ## A174972.P10639424747030272091

`A336102(2^(n+1))`
-/

namespace A174972.P10639424747030272091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336102 (2 ^ (n + 1))

end

end A174972.P10639424747030272091

/-! ## A174972.P10070498040338371607

`A001792(2^n-1)`
-/

namespace A174972.P10070498040338371607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (2 ^ n - 1)

end

end A174972.P10070498040338371607

/-!
# A174973: Numbers whose divisors increase by a factor of at most 2.

The programs for A174973, there is no canonical definition to state claims against.
-/

/-! ## A174973.P5868938861493880032

`A047836(n+1)/2`
-/

namespace A174973.P5868938861493880032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047836 (n + 1) : ℚ) / 2

end

end A174973.P5868938861493880032

/-! ## A174973.P8035078512247258183

`A389763(n)+a(n-1)` with `a(0)=1`
-/

namespace A174973.P8035078512247258183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A389763 n + a (n - 1)

end

end A174973.P8035078512247258183

/-! ## A174973.P17808348072013030220

`filter[A094229(n+1), A365429(#)]`
-/

namespace A174973.P17808348072013030220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A174973.P17808348072013030220

/-! ## A174973.P12423947461982380403

`filter[A279029(n+1), A365429(#)]`
-/

namespace A174973.P12423947461982380403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A174973.P12423947461982380403

/-! ## A174973.P18018627947508653961

`filter[A005153(n+1), A365429(#)]`
-/

namespace A174973.P18018627947508653961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A174973.P18018627947508653961

/-! ## A174973.P14087986018551823363

`filter[A093891(n+1), A365429(#)]`
-/

namespace A174973.P14087986018551823363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A174973.P14087986018551823363

/-! ## A174973.P16625584255042868370

`filter[A279029(n+1), A347950(#)]`
-/

namespace A174973.P16625584255042868370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A174973.P16625584255042868370

/-! ## A174973.P12099064306107661556

`filter[A196149(n+1), A365429(#)]`
-/

namespace A174973.P12099064306107661556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A174973.P12099064306107661556

/-! ## A174973.P2025624257661911899

`eq[1, A365429(n+1)]+1`
-/

namespace A174973.P2025624257661911899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365429 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A174973.P2025624257661911899

/-! ## A174973.P17067100521911699496

`filter[A377929(n+1), A365429(#)]`
-/

namespace A174973.P17067100521911699496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A174973.P17067100521911699496

/-! ## A174973.P16716577332889192085

`filter[A363227(n+1), A365429(#)]`
-/

namespace A174973.P16716577332889192085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A174973.P16716577332889192085

/-! ## A174973.P10744172453371561246

`filter[A103288(n+1), A365429(#)]`
-/

namespace A174973.P10744172453371561246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A174973.P10744172453371561246

/-! ## A174973.P2102865011636067334

`filter[A175495(n+1), A365429(#)]`
-/

namespace A174973.P2102865011636067334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A174973.P2102865011636067334

/-! ## A174973.P9230726552528720200

`filter[A071562(n+1), A365429(#)]`
-/

namespace A174973.P9230726552528720200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A174973.P9230726552528720200

/-! ## A174973.P3139779277857926836

`filter[A071562(n+1), A379968(#)]`
-/

namespace A174973.P3139779277857926836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379968 (f1 j).toNat = 1) n)

end

end A174973.P3139779277857926836

/-! ## A174973.P11151829527187020122

`∩[A071562(n+1), A279029(n+1)]`
-/

namespace A174973.P11151829527187020122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174973.P11151829527187020122

/-! ## A174973.P11109428915875146554

`A014682(A047836(n+1))`
-/

namespace A174973.P11109428915875146554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A047836 (n + 1)).toNat

end

end A174973.P11109428915875146554

/-!
# A174976: Primes which have an equal number of 0,1,2 in their Base_3 expansion.

The programs for A174976, there is no canonical definition to state claims against.
-/

/-! ## A174976.P7040977100804123890

`p?[A049354(n+1)]`
-/

namespace A174976.P7040977100804123890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174976.P7040977100804123890

/-! ## A174976.P4282366514820600221

`record[p?[A049354(A126759(n))]]`
-/

namespace A174976.P4282366514820600221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049354 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174976.P4282366514820600221

/-! ## A174976.P10102942674270131808

`record[p?[A049354(A133310(n))]]`
-/

namespace A174976.P10102942674270131808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049354 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174976.P10102942674270131808

/-! ## A174976.P14926932968093007050

`∩[A000040(n+1), A049354(n+1)]`
-/

namespace A174976.P14926932968093007050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174976.P14926932968093007050

/-! ## A174976.P8010338696041232102

`p?[∩[A039000(n+1), A039276(n+1)]]`
-/

namespace A174976.P8010338696041232102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039000 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039276 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A174976.P8010338696041232102

/-!
# A174978: For definition see comments lines.

The programs for A174978, there is no canonical definition to state claims against.
-/

/-! ## A174978.P11308885547720838774

`A005555(A284289(A080079(n+1))²)`
-/

namespace A174978.P11308885547720838774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A284289 (A080079 (n + 1)).toNat ^ 2).toNat

end

end A174978.P11308885547720838774

/-! ## A174978.P8357005139256612118

`A005555((A033264(n+1)*A160467(n+1))²)`
-/

namespace A174978.P8357005139256612118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 ((A033264 (n + 1) * A160467 (n + 1)) ^ 2).toNat

end

end A174978.P8357005139256612118

/-! ## A174978.P8626939090294067714

`A005555(lcm(A033264(n+1), A160467(n+1))²)`
-/

namespace A174978.P8626939090294067714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (Int.lcm (A033264 (n + 1)) (A160467 (n + 1)) ^ 2)

end

end A174978.P8626939090294067714

/-!
# A174980: Stern's diatomic series type ([0,1], 1).

The programs for A174980, the canonical program `A174980.P9143177174350052576` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174980 has offset 0).

The definition of A174980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174980.P2156477724054648076

`A324337(A038554(n))`
-/

namespace A174980.P2156477724054648076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (A038554 n).toNat

end

end A174980.P2156477724054648076

namespace A174980

/-- `A324337(A038554(n))` -/
def P2156477724054648076.Spec : Prop :=
  ∀ n, P2156477724054648076.a n = A174980 n

end A174980

/-! ## A174980.P3471676210770469792

`A324337(A038556(n))`
-/

namespace A174980.P3471676210770469792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (A038556 n).toNat

end

end A174980.P3471676210770469792

namespace A174980

/-- `A324337(A038556(n))` -/
def P3471676210770469792.Spec : Prop :=
  ∀ n, P3471676210770469792.a n = A174980 n

end A174980

/-! ## A174980.P9143177174350052576

`A002487(A003817(n)-n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A174980

/-- `A002487(A003817(n)-n)` -/
def P9143177174350052576.Spec : Prop :=
  ∀ n, P9143177174350052576.a n = A174980 n

theorem P9143177174350052576.correct : P9143177174350052576.Spec := by
  intro n
  simp only [A174980]

end A174980

/-! ## A174980.P7140794614027413808

`A002487(n-A006257(n))`
-/

namespace A174980.P7140794614027413808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 ((n : ℤ) - A006257 n).toNat

end

end A174980.P7140794614027413808

namespace A174980

/-- `A002487(n-A006257(n))` -/
def P7140794614027413808.Spec : Prop :=
  ∀ n, P7140794614027413808.a n = A174980 n

end A174980

/-! ## A174980.P13650339506711480935

`A002487(xor(n, A003817(n)))`
-/

namespace A174980.P13650339506711480935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Int.xor (n : ℤ) (A003817 n)).toNat

end

end A174980.P13650339506711480935

namespace A174980

/-- `A002487(xor(n, A003817(n)))` -/
def P13650339506711480935.Spec : Prop :=
  ∀ n, P13650339506711480935.a n = A174980 n

end A174980

/-! ## A174980.P6616059815596587741

`A002487(∑[A048298(n)]-n)`
-/

namespace A174980.P6616059815596587741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A174980.P6616059815596587741

namespace A174980

/-- `A002487(∑[A048298(n)]-n)` -/
def P6616059815596587741.Spec : Prop :=
  ∀ n, P6616059815596587741.a n = A174980 n

end A174980

/-! ## A174980.P2757593779458343716

`A002487(A062383(n)-(n+1))`
-/

namespace A174980.P2757593779458343716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A062383 n - (n + 1 : ℤ)).toNat

end

end A174980.P2757593779458343716

namespace A174980

/-- `A002487(A062383(n)-(n+1))` -/
def P2757593779458343716.Spec : Prop :=
  ∀ n, P2757593779458343716.a n = A174980 n

end A174980

/-! ## A174980.P9332919161647170812

`A002487(A004760(n+2)-(2*n+1))`
-/

namespace A174980.P9332919161647170812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A004760 (n + 2) - (2 * n + 1 : ℤ)).toNat

end

end A174980.P9332919161647170812

namespace A174980

/-- `A002487(A004760(n+2)-(2*n+1))` -/
def P9332919161647170812.Spec : Prop :=
  ∀ n, P9332919161647170812.a n = A174980 n

end A174980

/-! ## A174980.P2393145607447843069

`A002487(A053645(A122155(n+1)))`
-/

namespace A174980.P2393145607447843069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A053645 (A122155 (n + 1)).toNat).toNat

end

end A174980.P2393145607447843069

namespace A174980

/-- `A002487(A053645(A122155(n+1)))` -/
def P2393145607447843069.Spec : Prop :=
  ∀ n, P2393145607447843069.a n = A174980 n

end A174980

/-! ## A174980.P3253459655412190812

`A002487(A003817(n)%A028310(n))`
-/

namespace A174980.P3253459655412190812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Int.tmod (A003817 n) (A028310 n)).toNat

end

end A174980.P3253459655412190812

namespace A174980

/-- `A002487(A003817(n)%A028310(n))` -/
def P3253459655412190812.Spec : Prop :=
  ∀ n, P3253459655412190812.a n = A174980 n

end A174980

/-! ## A174980.P17222901635309697687

`A002487(A053645(A054429(n+1)+1))`
-/

namespace A174980.P17222901635309697687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A053645 (A054429 (n + 1) + 1).toNat).toNat

end

end A174980.P17222901635309697687

namespace A174980

/-- `A002487(A053645(A054429(n+1)+1))` -/
def P17222901635309697687.Spec : Prop :=
  ∀ n, P17222901635309697687.a n = A174980 n

end A174980

/-! ## A174980.P3679045654020003688

`A002487(and(A036044(n)+1, A036044(n)))`
-/

namespace A174980.P3679045654020003688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Int.land (A036044 n + 1) (A036044 n)).toNat

end

end A174980.P3679045654020003688

namespace A174980

/-- `A002487(and(A036044(n)+1, A036044(n)))` -/
def P3679045654020003688.Spec : Prop :=
  ∀ n, P3679045654020003688.a n = A174980 n

end A174980

/-! ## A174980.P4664891677129105615

`A002487(A036044(n)-and(1, A036044(n)))`
-/

namespace A174980.P4664891677129105615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A036044 n - Int.land 1 (A036044 n)).toNat

end

end A174980.P4664891677129105615

namespace A174980

/-- `A002487(A036044(n)-and(1, A036044(n)))` -/
def P4664891677129105615.Spec : Prop :=
  ∀ n, P4664891677129105615.a n = A174980 n

end A174980

/-! ## A174980.P4163318998666104789

`A002487(n+1)-A007305(A003602(n+1))`
-/

namespace A174980.P4163318998666104789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) - A007305 (A003602 (n + 1)).toNat

end

end A174980.P4163318998666104789

namespace A174980

/-- `A002487(n+1)-A007305(A003602(n+1))` -/
def P4163318998666104789.Spec : Prop :=
  ∀ n, P4163318998666104789.a n = A174980 n

end A174980

/-! ## A174980.P14397969734611497102

`A002487(A053645(A117120(A063946(n+1))+1))`
-/

namespace A174980.P14397969734611497102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A053645 (A117120 (A063946 (n + 1)).toNat + 1).toNat).toNat

end

end A174980.P14397969734611497102

namespace A174980

/-- `A002487(A053645(A117120(A063946(n+1))+1))` -/
def P14397969734611497102.Spec : Prop :=
  ∀ n, P14397969734611497102.a n = A174980 n

end A174980

/-! ## A174980.P4308960266141675213

`A002487(A035327(2*n)-1)`
-/

namespace A174980.P4308960266141675213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A035327 (2 * n) - 1).toNat

end

end A174980.P4308960266141675213

namespace A174980

/-- `A002487(A035327(2*n)-1)` -/
def P4308960266141675213.Spec : Prop :=
  ∀ n, P4308960266141675213.a n = A174980 n

end A174980

/-! ## A174980.P18269039675376756801

`A002487(floor(A035327(2*n)/2))`
-/

namespace A174980.P18269039675376756801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 ⌊(A035327 (2 * n) : ℚ) / 2⌋.toNat

end

end A174980.P18269039675376756801

namespace A174980

/-- `A002487(floor(A035327(2*n)/2))` -/
def P18269039675376756801.Spec : Prop :=
  ∀ n, P18269039675376756801.a n = A174980 n

end A174980

/-! ## A174980.P12377313899221143096

`A002487(A035327(2*n+1))`
-/

namespace A174980.P12377313899221143096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A035327 (2 * n + 1)).toNat

end

end A174980.P12377313899221143096

namespace A174980

/-- `A002487(A035327(2*n+1))` -/
def P12377313899221143096.Spec : Prop :=
  ∀ n, P12377313899221143096.a n = A174980 n

end A174980

/-! ## A174980.P17367813815565191337

`A002487(A036044(2*n+1))`
-/

namespace A174980.P17367813815565191337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A036044 (2 * n + 1)).toNat

end

end A174980.P17367813815565191337

namespace A174980

/-- `A002487(A036044(2*n+1))` -/
def P17367813815565191337.Spec : Prop :=
  ∀ n, P17367813815565191337.a n = A174980 n

end A174980

/-! ## A174980.P11134529385274456592

`A002487(A080079(2*n+1)-1)`
-/

namespace A174980.P11134529385274456592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A080079 (2 * n + 1) - 1).toNat

end

end A174980.P11134529385274456592

namespace A174980

/-- `A002487(A080079(2*n+1)-1)` -/
def P11134529385274456592.Spec : Prop :=
  ∀ n, P11134529385274456592.a n = A174980 n

end A174980

/-!
# A174981: Numerators of the L-tree, left-to-right enumeration.

The programs for A174981, there is no canonical definition to state claims against.
-/

/-! ## A174981.P13051867404755971241

`A174980(lt[n, xor(n, floor(n/2))]+1)`
-/

namespace A174981.P13051867404755971241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174980 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A174981.P13051867404755971241

/-! ## A174981.P469767796241275185

`A020944(lt[n, xor(n, floor(n/3))]+1)`
-/

namespace A174981.P469767796241275185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A174981.P469767796241275185

/-! ## A174981.P17295121999671447438

`A174980(2^floor(log2(n+1))+n+2)`
-/

namespace A174981.P17295121999671447438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174980 (2 ^ Nat.log 2 (n + 1) + n + 2)

end

end A174981.P17295121999671447438

/-! ## A174981.P9877591944156614198

`A002487(xor(n+1, 2^floor(log2(n+1))-1)-1)`
-/

namespace A174981.P9877591944156614198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Int.xor (n + 1 : ℤ) ((2 ^ Nat.log 2 (n + 1) : ℤ) - 1) - 1).toNat

end

end A174981.P9877591944156614198

/-! ## A174981.P17327137575864239482

`A020944(A304588(n+2))`
-/

namespace A174981.P17327137575864239482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020944 (A304588 (n + 2)).toNat

end

end A174981.P17327137575864239482

/-! ## A174981.P7449803413802314298

`A020944(A004756(n+1)+1)`
-/

namespace A174981.P7449803413802314298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020944 (A004756 (n + 1) + 1).toNat

end

end A174981.P7449803413802314298

/-! ## A174981.P10450966890366287946

`A020951(A004758(n+1)+1)`
-/

namespace A174981.P10450966890366287946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (A004758 (n + 1) + 1).toNat

end

end A174981.P10450966890366287946

/-! ## A174981.P6824316015329716727

`A002487(A054429(n+1)-1)`
-/

namespace A174981.P6824316015329716727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A054429 (n + 1) - 1).toNat

end

end A174981.P6824316015329716727

/-! ## A174981.P17058454197392799028

`A287730(A054429(n+1)+63)`
-/

namespace A174981.P17058454197392799028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287730 (A054429 (n + 1) + 63).toNat

end

end A174981.P17058454197392799028

/-! ## A174981.P12013128013938588595

`A002487(3%A047679(n)²+n)`
-/

namespace A174981.P12013128013938588595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Int.tmod 3 (A047679 n ^ 2) + (n : ℤ)).toNat

end

end A174981.P12013128013938588595

/-!
# A174982: The number of words of length n with letters a, b, c with at least as many a's as b's and at least as many b's as c's and no adjacent letters forming the pattern aba or abc.

The programs for A174982, there is no canonical definition to state claims against.
-/

/-! ## A174982.P666273650397541518

`A204004(A003242(∑[n-2*floor(n/4)]))`
-/

namespace A174982.P666273650397541518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * ⌊(n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204004 (A003242 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A174982.P666273650397541518

/-!
# A174988: Expansion of -x*(x-1)*(3*x+1) / (9*x^4-8*x^2+1).

The programs for A174988, the canonical program `A174988.P8308192036675305783` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174988 has offset 0).

The definition of A174988 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+2x^2-3x^3)/(1-8x^2+9x^4))` (program `A174988.P8308192036675305783`, by `A174988.P8308192036675305783.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174988.P8308192036675305783

`ogf((x+2x^2-3x^3)/(1-8x^2+9x^4))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A174988

/-- `ogf((x+2x^2-3x^3)/(1-8x^2+9x^4))` -/
def P8308192036675305783.Spec : Prop :=
  ∀ n, P8308192036675305783.a n = A174988 n

theorem P8308192036675305783.correct : P8308192036675305783.Spec := by
  intro n
  simp only [A174988]

end A174988

/-! ## A174988.P11521061759974511260

`8*a(n-2)-9*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A174988.P11521061759974511260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 5] fun n a =>
  8 * a (n - 2) - 9 * a (n - 4)

end

end A174988.P11521061759974511260

namespace A174988

/-- `8*a(n-2)-9*a(n-4)` -/
def P11521061759974511260.Spec : Prop :=
  ∀ n, P11521061759974511260.a n = A174988 n

end A174988

/-! ## A174988.P2079679826439622501

`2^floor(n/2)*((1+sqrt(7))^n-(1-sqrt(7))^n)/(2^n*sqrt(7))`
-/

namespace A174988.P2079679826439622501
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) : ℝ) * ((1 + Real.sqrt (7 : ℝ)) ^ n - (1 - Real.sqrt (7 : ℝ)) ^ n) / ((2 ^ n : ℝ) * Real.sqrt (7 : ℝ))

end

end A174988.P2079679826439622501

namespace A174988

/-- `2^floor(n/2)*((1+sqrt(7))^n-(1-sqrt(7))^n)/(2^n*sqrt(7))` -/
def P2079679826439622501.Spec : Prop :=
  ∀ n, P2079679826439622501.a n = (A174988 n : ℝ)

end A174988

/-! ## A174988.P11162039190500119223

`lcm(2, a(n-1))+3*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A174988.P11162039190500119223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.lcm 2 (a (n - 1)) + 3 * a (n - 2)

end

end A174988.P11162039190500119223

namespace A174988

/-- `lcm(2, a(n-1))+3*a(n-2)` -/
def P11162039190500119223.Spec : Prop :=
  ∀ n, (P11162039190500119223.a n : ℤ) = A174988 n

end A174988

/-! ## A174988.P3174031386077302641

`A002536(n)*A040001(n)`
-/

namespace A174988.P3174031386077302641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002536 n * A040001 n

end

end A174988.P3174031386077302641

namespace A174988

/-- `A002536(n)*A040001(n)` -/
def P3174031386077302641.Spec : Prop :=
  ∀ n, P3174031386077302641.a n = A174988 n

end A174988

/-! ## A174988.P4767429229759452625

`A002536(n)*A134451(n)`
-/

namespace A174988.P4767429229759452625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002536 n * A134451 n

end

end A174988.P4767429229759452625

namespace A174988

/-- `A002536(n)*A134451(n)` -/
def P4767429229759452625.Spec : Prop :=
  ∀ n, P4767429229759452625.a n = A174988 n

end A174988

/-!
# A174989: Partial sums of A003602.

The programs for A174989, the canonical program `A174989.P15853758169137628291` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174989 has offset 1).

The definition of A174989 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174989.P15853758169137628291

`ceil((n+1)/2)*(1+ceil((n+1)/2))/2+a(floor((n+1)/2)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A174989

/-- `ceil((n+1)/2)*(1+ceil((n+1)/2))/2+a(floor((n+1)/2)-1)` -/
def P15853758169137628291.Spec : Prop :=
  ∀ n, P15853758169137628291.a n = (A174989 (n + 1) : ℚ)

end A174989

/-! ## A174989.P13669065560828513011

`(A135013(n+1)+n+1)/2`
-/

namespace A174989.P13669065560828513011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135013 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A174989.P13669065560828513011

namespace A174989

/-- `(A135013(n+1)+n+1)/2` -/
def P13669065560828513011.Spec : Prop :=
  ∀ n, P13669065560828513011.a n = (A174989 (n + 1) : ℚ)

end A174989

/-! ## A174989.P16245050840906764323

`∑[floor(n/(xor(n, n+1)+1))+1]`
-/

namespace A174989.P16245050840906764323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174989.P16245050840906764323

namespace A174989

/-- `∑[floor(n/(xor(n, n+1)+1))+1]` -/
def P16245050840906764323.Spec : Prop :=
  ∀ n, P16245050840906764323.a n = A174989 (n + 1)

end A174989

/-! ## A174989.P13502237546964673328

`∑[A003602(n+1)]`
-/

namespace A174989.P13502237546964673328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174989.P13502237546964673328

namespace A174989

/-- `∑[A003602(n+1)]` -/
def P13502237546964673328.Spec : Prop :=
  ∀ n, P13502237546964673328.a n = A174989 (n + 1)

end A174989

/-! ## A174989.P511220867649893401

`∑[A025480(n)+1]`
-/

namespace A174989.P511220867649893401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174989.P511220867649893401

namespace A174989

/-- `∑[A025480(n)+1]` -/
def P511220867649893401.Spec : Prop :=
  ∀ n, P511220867649893401.a n = A174989 (n + 1)

end A174989

/-! ## A174989.P7556643226491691959

`∑[A103391(n+2)-1]`
-/

namespace A174989.P7556643226491691959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174989.P7556643226491691959

namespace A174989

/-- `∑[A103391(n+2)-1]` -/
def P7556643226491691959.Spec : Prop :=
  ∀ n, P7556643226491691959.a n = A174989 (n + 1)

end A174989

/-! ## A174989.P1540070351633465272

`∑[A110963(2*n+1)]`
-/

namespace A174989.P1540070351633465272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110963 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174989.P1540070351633465272

namespace A174989

/-- `∑[A110963(2*n+1)]` -/
def P1540070351633465272.Spec : Prop :=
  ∀ n, P1540070351633465272.a n = A174989 (n + 1)

end A174989

/-! ## A174989.P6747332068597260926

`∑[A110962(2*n)+1]`
-/

namespace A174989.P6747332068597260926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174989.P6747332068597260926

namespace A174989

/-- `∑[A110962(2*n)+1]` -/
def P6747332068597260926.Spec : Prop :=
  ∀ n, P6747332068597260926.a n = A174989 (n + 1)

end A174989

/-! ## A174989.P10264745212970641280

`∑[ceil(A000265(n+1)/2)]`
-/

namespace A174989.P10264745212970641280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000265 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174989.P10264745212970641280

namespace A174989

/-- `∑[ceil(A000265(n+1)/2)]` -/
def P10264745212970641280.Spec : Prop :=
  ∀ n, P10264745212970641280.a n = A174989 (n + 1)

end A174989

/-! ## A174989.P17382518674971997681

`∑[A110654(A000265(n+1))]`
-/

namespace A174989.P17382518674971997681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174989.P17382518674971997681

namespace A174989

/-- `∑[A110654(A000265(n+1))]` -/
def P17382518674971997681.Spec : Prop :=
  ∀ n, P17382518674971997681.a n = A174989 (n + 1)

end A174989

/-! ## A174989.P1557322790519185023

`∑[A048673(A064989(n+1))]`
-/

namespace A174989.P1557322790519185023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A064989 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174989.P1557322790519185023

namespace A174989

/-- `∑[A048673(A064989(n+1))]` -/
def P1557322790519185023.Spec : Prop :=
  ∀ n, P1557322790519185023.a n = A174989 (n + 1)

end A174989

/-! ## A174989.P3934458849333732315

`∑[A028242(A000265(n+1)-1)]`
-/

namespace A174989.P3934458849333732315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A000265 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174989.P3934458849333732315

namespace A174989

/-- `∑[A028242(A000265(n+1)-1)]` -/
def P3934458849333732315.Spec : Prop :=
  ∀ n, P3934458849333732315.a n = A174989 (n + 1)

end A174989

/-! ## A174989.P632989951135567864

`∑[A359164(2*(n+1))]`
-/

namespace A174989.P632989951135567864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359164 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174989.P632989951135567864

namespace A174989

/-- `∑[A359164(2*(n+1))]` -/
def P632989951135567864.Spec : Prop :=
  ∀ n, P632989951135567864.a n = A174989 (n + 1)

end A174989

/-! ## A174989.P15296210845150314593

`∑[A349135(4*(n+1))]`
-/

namespace A174989.P15296210845150314593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349135 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174989.P15296210845150314593

namespace A174989

/-- `∑[A349135(4*(n+1))]` -/
def P15296210845150314593.Spec : Prop :=
  ∀ n, P15296210845150314593.a n = A174989 (n + 1)

end A174989

/-! ## A174989.P17933123903217354668

`A028242(∑[A000265(n+1)])+A028242(n)`
-/

namespace A174989.P17933123903217354668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A028242 n

end

end A174989.P17933123903217354668

namespace A174989

/-- `A028242(∑[A000265(n+1)])+A028242(n)` -/
def P17933123903217354668.Spec : Prop :=
  ∀ n, P17933123903217354668.a n = A174989 (n + 1)

end A174989

/-! ## A174989.P9093869411486655120

`A003602(A135013(n+1)+n)`
-/

namespace A174989.P9093869411486655120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A135013 (n + 1) + (n : ℤ)).toNat

end

end A174989.P9093869411486655120

namespace A174989

/-- `A003602(A135013(n+1)+n)` -/
def P9093869411486655120.Spec : Prop :=
  ∀ n, P9093869411486655120.a n = A174989 (n + 1)

end A174989

/-! ## A174989.P7816032588030247343

`A006370(A135013(n+1)+n+1)`
-/

namespace A174989.P7816032588030247343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A135013 (n + 1) + (n + 1 : ℤ)).toNat

end

end A174989.P7816032588030247343

namespace A174989

/-- `A006370(A135013(n+1)+n+1)` -/
def P7816032588030247343.Spec : Prop :=
  ∀ n, P7816032588030247343.a n = A174989 (n + 1)

end A174989

/-! ## A174989.P8956875981134851627

`A025480(A135013(n+1)+n+1)`
-/

namespace A174989.P8956875981134851627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A135013 (n + 1) + (n + 1 : ℤ)).toNat

end

end A174989.P8956875981134851627

namespace A174989

/-- `A025480(A135013(n+1)+n+1)` -/
def P8956875981134851627.Spec : Prop :=
  ∀ n, P8956875981134851627.a n = A174989 (n + 1)

end A174989

/-! ## A174989.P3583382829330657186

`A101279(A135013(n+1)+n+2)`
-/

namespace A174989.P3583382829330657186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A135013 (n + 1) + (n + 2 : ℤ)).toNat

end

end A174989.P3583382829330657186

namespace A174989

/-- `A101279(A135013(n+1)+n+2)` -/
def P3583382829330657186.Spec : Prop :=
  ∀ n, P3583382829330657186.a n = A174989 (n + 1)

end A174989

/-!
# A174992: a(n) = n! - A000800(n).

The programs for A174992, there is no canonical definition to state claims against.
-/

/-! ## A174992.P450926207999315786

`n!-A000800(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A174992.P450926207999315786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A000800 n

end

end A174992.P450926207999315786

/-! ## A174992.P14472972428888439102

`A000142(n)-A000800(n)`
-/

namespace A174992.P14472972428888439102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A000800 n

end

end A174992.P14472972428888439102

/-! ## A174992.P17777784060771153282

`∏[A028310(n)]-A000800(n)`
-/

namespace A174992.P17777784060771153282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A000800 n

end

end A174992.P17777784060771153282

/-! ## A174992.P11357039950956101472

`∏[A008619(A004273(n))]-A000800(n)`
-/

namespace A174992.P11357039950956101472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A000800 n

end

end A174992.P11357039950956101472

/-! ## A174992.P13404930621670396552

`A199660(2*n+1)-A000800(n)`
-/

namespace A174992.P13404930621670396552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199660 (2 * n + 1) - A000800 n

end

end A174992.P13404930621670396552

/-!
# A174993: a(n) = -Floor[n/2]! + Sum[(Eulerian[n - j, j]), {j, 0, Floor[n/2]}].

The programs for A174993, there is no canonical definition to state claims against.
-/

/-! ## A174993.P17304653440448657925

`A000800(n+1)-floor(n/2)!`
-/

namespace A174993.P17304653440448657925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000800 (n + 1) - (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat : ℤ)

end

end A174993.P17304653440448657925

/-! ## A174993.P3120598585535645834

`A000800(n+1)-A000142(A004526(n))`
-/

namespace A174993.P3120598585535645834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000800 (n + 1) - A000142 (A004526 n).toNat

end

end A174993.P3120598585535645834

/-! ## A174993.P5525457967738398527

`A055679(A149766(n))`
-/

namespace A174993.P5525457967738398527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A149766 n).toNat

end

end A174993.P5525457967738398527

/-!
# A174994: Repeat (8*n+4)^2.

The programs for A174994, the canonical program `A174994.P6941636954525028030` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174994 has offset 0).

The definition of A174994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174994.P6941636954525028030

`(8*floor(n/2)+4)²`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A174994

/-- `(8*floor(n/2)+4)²` -/
def P6941636954525028030.Spec : Prop :=
  ∀ n, P6941636954525028030.a n = A174994 n

theorem P6941636954525028030.correct : P6941636954525028030.Spec := by
  intro n
  simp only [A174994]

end A174994

/-! ## A174994.P4491945956409287002

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=16, a(1)=16, a(2)=144, a(3)=144, a(4)=400`
-/

namespace A174994.P4491945956409287002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16, 16, 144, 144, 400] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A174994.P4491945956409287002

namespace A174994

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P4491945956409287002.Spec : Prop :=
  ∀ n, P4491945956409287002.a n = A174994 n

end A174994

/-! ## A174994.P8331218417420959546

`A174683(A043547(n+1))`
-/

namespace A174994.P8331218417420959546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174683 (A043547 (n + 1)).toNat

end

end A174994.P8331218417420959546

namespace A174994

/-- `A174683(A043547(n+1))` -/
def P8331218417420959546.Spec : Prop :=
  ∀ n, P8331218417420959546.a n = A174994 n

end A174994

/-! ## A174994.P13305343309276595272

`(2*sqrt(or(1, n)))^4`
-/

namespace A174994.P13305343309276595272
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * Real.sqrt (Nat.lor 1 n : ℝ)) ^ 4

end

end A174994.P13305343309276595272

namespace A174994

/-- `(2*sqrt(or(1, n)))^4` -/
def P13305343309276595272.Spec : Prop :=
  ∀ n, P13305343309276595272.a n = (A174994 n : ℝ)

end A174994

/-! ## A174994.P10678140082956559309

`4/(2*or(1, n))^-2`
-/

namespace A174994.P10678140082956559309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (2 * Nat.lor 1 n : ℚ) ^ (-2 : ℤ)

end

end A174994.P10678140082956559309

namespace A174994

/-- `4/(2*or(1, n))^-2` -/
def P10678140082956559309.Spec : Prop :=
  ∀ n, P10678140082956559309.a n = (A174994 n : ℚ)

end A174994

/-! ## A174994.P6046412998273063327

`4*∑[4-a(n-1)]²` with `a(0)=2, a(1)=0`
-/

namespace A174994.P6046412998273063327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A174994.P6046412998273063327

namespace A174994

/-- `4*∑[4-a(n-1)]²` -/
def P6046412998273063327.Spec : Prop :=
  ∀ n, P6046412998273063327.a n = A174994 n

end A174994

/-! ## A174994.P14512317329421889837

`floor((4-∑[8-a(n-1)])²)` with `a(0)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A174994.P14512317329421889837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  8 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A174994.P14512317329421889837

namespace A174994

/-- `floor((4-∑[8-a(n-1)])²)` -/
def P14512317329421889837.Spec : Prop :=
  ∀ n, P14512317329421889837.a n = A174994 n

end A174994

/-! ## A174994.P2022764127920921568

`A016802(or(1, n))`
-/

namespace A174994.P2022764127920921568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016802 (Nat.lor 1 n)

end

end A174994.P2022764127920921568

namespace A174994

/-- `A016802(or(1, n))` -/
def P2022764127920921568.Spec : Prop :=
  ∀ n, P2022764127920921568.a n = A174994 n

end A174994

/-! ## A174994.P10798507023068441868

`A174683(or(1, n))`
-/

namespace A174994.P10798507023068441868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174683 (Nat.lor 1 n)

end

end A174994.P10798507023068441868

namespace A174994

/-- `A174683(or(1, n))` -/
def P10798507023068441868.Spec : Prop :=
  ∀ n, P10798507023068441868.a n = A174994 n

end A174994

/-! ## A174994.P5874362935849433283

`A017114(floor(n/2))`
-/

namespace A174994.P5874362935849433283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017114 ⌊(n : ℚ) / 2⌋.toNat

end

end A174994.P5874362935849433283

namespace A174994

/-- `A017114(floor(n/2))` -/
def P5874362935849433283.Spec : Prop :=
  ∀ n, P5874362935849433283.a n = A174994 n

end A174994

/-! ## A174994.P2886612586441635867

`2*A139098(or(1, n))`
-/

namespace A174994.P2886612586441635867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139098 (Nat.lor 1 n)

end

end A174994.P2886612586441635867

namespace A174994

/-- `2*A139098(or(1, n))` -/
def P2886612586441635867.Spec : Prop :=
  ∀ n, P2886612586441635867.a n = A174994 n

end A174994

/-! ## A174994.P15814803341736506320

`A016802(A109613(n))`
-/

namespace A174994.P15814803341736506320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016802 (A109613 n).toNat

end

end A174994.P15814803341736506320

namespace A174994

/-- `A016802(A109613(n))` -/
def P15814803341736506320.Spec : Prop :=
  ∀ n, P15814803341736506320.a n = A174994 n

end A174994

/-! ## A174994.P5836891960021143473

`A168398(n+1)*A168398(n+1)`
-/

namespace A174994.P5836891960021143473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168398 (n + 1) * A168398 (n + 1)

end

end A174994.P5836891960021143473

namespace A174994

/-- `A168398(n+1)*A168398(n+1)` -/
def P5836891960021143473.Spec : Prop :=
  ∀ n, P5836891960021143473.a n = A174994 n

theorem P5836891960021143473.correct : P5836891960021143473.Spec := by
  intro n
  simp only [A174994, Nat.add_sub_cancel, A174994.P5836891960021143473.a, A174994.P6941636954525028030.a, A168398, A168398.P703617105454378462.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A174994

/-! ## A174994.P12041557306048519600

`A175971(A168236(n+1))`
-/

namespace A174994.P12041557306048519600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175971 (A168236 (n + 1)).toNat

end

end A174994.P12041557306048519600

namespace A174994

/-- `A175971(A168236(n+1))` -/
def P12041557306048519600.Spec : Prop :=
  ∀ n, P12041557306048519600.a n = A174994 n

end A174994

/-! ## A174994.P9859720217133220931

`A175971(A342131(n+1))`
-/

namespace A174994.P9859720217133220931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175971 (A342131 (n + 1)).toNat

end

end A174994.P9859720217133220931

namespace A174994

/-- `A175971(A342131(n+1))` -/
def P9859720217133220931.Spec : Prop :=
  ∀ n, P9859720217133220931.a n = A174994 n

end A174994

/-! ## A174994.P11667273738954895770

`A174683(A321220(n)-1)`
-/

namespace A174994.P11667273738954895770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174683 (A321220 n - 1).toNat

end

end A174994.P11667273738954895770

namespace A174994

/-- `A174683(A321220(n)-1)` -/
def P11667273738954895770.Spec : Prop :=
  ∀ n, P11667273738954895770.a n = A174994 n

end A174994

/-! ## A174994.P14936450901648040864

`A016742(2*or(1, n))`
-/

namespace A174994.P14936450901648040864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 (2 * Nat.lor 1 n)

end

end A174994.P14936450901648040864

namespace A174994

/-- `A016742(2*or(1, n))` -/
def P14936450901648040864.Spec : Prop :=
  ∀ n, P14936450901648040864.a n = A174994 n

end A174994

/-! ## A174994.P5572879714359945606

`A154615(2*or(1, n))`
-/

namespace A174994.P5572879714359945606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154615 (2 * Nat.lor 1 n)

end

end A174994.P5572879714359945606

namespace A174994

/-- `A154615(2*or(1, n))` -/
def P5572879714359945606.Spec : Prop :=
  ∀ n, P5572879714359945606.a n = A174994 n

end A174994

/-! ## A174994.P33664014580299406

`A184635(2*or(1, n))`
-/

namespace A174994.P33664014580299406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184635 (2 * Nat.lor 1 n)

end

end A174994.P33664014580299406

namespace A174994

/-- `A184635(2*or(1, n))` -/
def P33664014580299406.Spec : Prop :=
  ∀ n, P33664014580299406.a n = A174994 n

end A174994

/-! ## A174994.P17796941489421352381

`A195146(2*or(1, n))`
-/

namespace A174994.P17796941489421352381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195146 (2 * Nat.lor 1 n)

end

end A174994.P17796941489421352381

namespace A174994

/-- `A195146(2*or(1, n))` -/
def P17796941489421352381.Spec : Prop :=
  ∀ n, P17796941489421352381.a n = A174994 n

end A174994

/-!
# A174995: Products of decimal digits.

The programs for A174995, there is no canonical definition to state claims against.
-/

/-! ## A174995.P7684961981316662882

`lt[A033677(A028310(n)), 10]`
-/

namespace A174995.P7684961981316662882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A174995.P7684961981316662882

/-! ## A174995.P17707967567058038303

`filter[A140332(n+1), A178788(#)]`
-/

namespace A174995.P17707967567058038303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A174995.P17707967567058038303

/-! ## A174995.P13768876048299997849

`filter[A140332(n+1), A196368(#)]`
-/

namespace A174995.P13768876048299997849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A174995.P13768876048299997849

/-! ## A174995.P2262533645098215396

`filter[A368955(n+1), A178788(#)]`
-/

namespace A174995.P2262533645098215396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A174995.P2262533645098215396

/-! ## A174995.P16045150968613915104

`filter[A368955(n+1), A196368(#)]`
-/

namespace A174995.P16045150968613915104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A174995.P16045150968613915104

/-!
# A174996: Triangle read by rows: T(n,k) = (prime(n)-1) mod prime(k).

The programs for A174996, the canonical program `A174996.P1796701449800722961` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174996 has offset 1).

The definition of A174996 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(A000040(row(n)+1)-1)%A000040(col(n)+1)` (program `A174996.P1796701449800722961`, by `A174996.P1796701449800722961.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174996.P1796701449800722961

`(A000040(row(n)+1)-1)%A000040(col(n)+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A174996

/-- `(A000040(row(n)+1)-1)%A000040(col(n)+1)` -/
def P1796701449800722961.Spec : Prop :=
  ∀ n, P1796701449800722961.a n = A174996 (n + 1)

theorem P1796701449800722961.correct : P1796701449800722961.Spec := by
  intro n
  simp only [A174996, Nat.add_sub_cancel]

end A174996

/-! ## A174996.P1086725186471035298

`(A065342(n+1)-1)%A037126(n+1)`
-/

namespace A174996.P1086725186471035298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065342 (n + 1) - 1) (A037126 (n + 1))

end

end A174996.P1086725186471035298

namespace A174996

/-- `(A065342(n+1)-1)%A037126(n+1)` -/
def P1086725186471035298.Spec : Prop :=
  ∀ n, P1086725186471035298.a n = A174996 (n + 1)

end A174996

/-! ## A174996.P5598570337565443019

`A006093(comp[C(n, 2)]-(n+1))%A037126(n+1)`
-/

namespace A174996.P5598570337565443019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - (n + 1))) (A037126 (n + 1))

end

end A174996.P5598570337565443019

namespace A174996

/-- `A006093(comp[C(n, 2)]-(n+1))%A037126(n+1)` -/
def P5598570337565443019.Spec : Prop :=
  ∀ n, P5598570337565443019.a n = A174996 (n + 1)

end A174996

/-! ## A174996.P9893016983744824528

`A000010(A005145(n+1))%A037126(n+1)`
-/

namespace A174996.P9893016983744824528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A005145 (n + 1)).toNat) (A037126 (n + 1))

end

end A174996.P9893016983744824528

namespace A174996

/-- `A000010(A005145(n+1))%A037126(n+1)` -/
def P9893016983744824528.Spec : Prop :=
  ∀ n, P9893016983744824528.a n = A174996 (n + 1)

end A174996

/-! ## A174996.P5271759245945371195

`A006093(A002024(n+1))%A037126(n+1)`
-/

namespace A174996.P5271759245945371195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (A002024 (n + 1)).toNat) (A037126 (n + 1))

end

end A174996.P5271759245945371195

namespace A174996

/-- `A006093(A002024(n+1))%A037126(n+1)` -/
def P5271759245945371195.Spec : Prop :=
  ∀ n, P5271759245945371195.a n = A174996 (n + 1)

end A174996

/-! ## A174996.P16945019646561711972

`(A005145(n+1)-1)%A000040(A002260(n+1))`
-/

namespace A174996.P16945019646561711972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005145 (n + 1) - 1) (A000040 (A002260 (n + 1)).toNat)

end

end A174996.P16945019646561711972

namespace A174996

/-- `(A005145(n+1)-1)%A000040(A002260(n+1))` -/
def P16945019646561711972.Spec : Prop :=
  ∀ n, P16945019646561711972.a n = A174996 (n + 1)

end A174996

/-! ## A174996.P1887598097774073492

`A246676(A137688(n))%A037126(n+1)`
-/

namespace A174996.P1887598097774073492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246676 (A137688 n).toNat) (A037126 (n + 1))

end

end A174996.P1887598097774073492

namespace A174996

/-- `A246676(A137688(n))%A037126(n+1)` -/
def P1887598097774073492.Spec : Prop :=
  ∀ n, P1887598097774073492.a n = A174996 (n + 1)

end A174996

/-!
# A174997: Integer part of the greatest eigenvalues of the matrix n X n whose elements are the Fibonacci numbers F(n) (A000045) such that n X n = ((F(0),F(1),...,F(n-1)),(F(n),F(n+1),...,F(2n-1)),...,(F(n(n-1)),F(n(n-1)+1),...,F(n^2-1))), for n=1,2,...

The programs for A174997, there is no canonical definition to state claims against.
-/

/-! ## A174997.P5598242533274664737

`2*A320975(3*n+1)`
-/

namespace A174997.P5598242533274664737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A320975 (3 * n + 1)

end

end A174997.P5598242533274664737

/-!
# A174998: a(n) = A116909(n) - 2.

The programs for A174998, there is no canonical definition to state claims against.
-/

/-! ## A174998.P642284328258224699

`A116909(n+1)-2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A174998.P642284328258224699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116909 (n + 1) - 2

end

end A174998.P642284328258224699

/-! ## A174998.P517607989243543437

`A137830(ceil(1/(n+1)))+A116909(n+1)`
-/

namespace A174998.P517607989243543437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137830 ⌈1 / (n + 1 : ℚ)⌉.toNat + A116909 (n + 1)

end

end A174998.P517607989243543437

/-! ## A174998.P7946598117485545258

`A329484(A328579(n))+A116909(n+1)`
-/

namespace A174998.P7946598117485545258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329484 (A328579 n).toNat + A116909 (n + 1)

end

end A174998.P7946598117485545258

/-! ## A174998.P4394574833130721577

`A118824(A000265(n+1))+A116909(n+1)`
-/

namespace A174998.P4394574833130721577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (A000265 (n + 1)).toNat + A116909 (n + 1)

end

end A174998.P4394574833130721577

/-! ## A174998.P11164822766636993759

`A329484(A031215(n+1))+A116909(n+1)`
-/

namespace A174998.P11164822766636993759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329484 (A031215 (n + 1)).toNat + A116909 (n + 1)

end

end A174998.P11164822766636993759

/-! ## A174998.P16632123031898761028

`A118824(A017497(4*n))+A116909(n+1)`
-/

namespace A174998.P16632123031898761028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (A017497 (4 * n)).toNat + A116909 (n + 1)

end

end A174998.P16632123031898761028

/-! ## A174998.P2914994578758835868

`A118824(A017497(n)+n)+A116909(n+1)`
-/

namespace A174998.P2914994578758835868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (A017497 n + (n : ℤ)).toNat + A116909 (n + 1)

end

end A174998.P2914994578758835868

/-! ## A174998.P6089414179451756046

`A118824(A048700(n+1))+A116909(n+1)`
-/

namespace A174998.P6089414179451756046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (A048700 (n + 1)).toNat + A116909 (n + 1)

end

end A174998.P6089414179451756046

/-! ## A174998.P3661714808793842814

`A329484(A001359(n+1))+A116909(n+1)`
-/

namespace A174998.P3661714808793842814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329484 (A001359 (n + 1)).toNat + A116909 (n + 1)

end

end A174998.P3661714808793842814

/-! ## A174998.P18004552157229866026

`and(A116909(n+1), A156698(n))`
-/

namespace A174998.P18004552157229866026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A116909 (n + 1)) (A156698 n)

end

end A174998.P18004552157229866026

/-! ## A174998.P8234684774763200429

`and(A093178(n²), A116909(n+1))`
-/

namespace A174998.P8234684774763200429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A093178 (n ^ 2)) (A116909 (n + 1))

end

end A174998.P8234684774763200429

/-! ## A174998.P13828840377333340688

`xor(2, A116909(n+1))^A002061(n)`
-/

namespace A174998.P13828840377333340688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 2 (A116909 (n + 1)) : ℚ) ^ (A002061 n : ℤ)

end

end A174998.P13828840377333340688

/-! ## A174998.P11573873759256547281

`xor(2, A116909(n+1))^A007318(n)`
-/

namespace A174998.P11573873759256547281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 2 (A116909 (n + 1)) : ℚ) ^ (A007318 n : ℤ)

end

end A174998.P11573873759256547281

/-! ## A174998.P2064181055445314954

`xor(2, A116909(n+1))^A016777(n)`
-/

namespace A174998.P2064181055445314954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 2 (A116909 (n + 1)) : ℚ) ^ (A016777 n : ℤ)

end

end A174998.P2064181055445314954

/-! ## A174998.P12164646565342114401

`xor(2, A116909(n+1))^A288386(n)`
-/

namespace A174998.P12164646565342114401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 2 (A116909 (n + 1)) : ℚ) ^ (A288386 n : ℤ)

end

end A174998.P12164646565342114401

/-! ## A174998.P5076259297220376084

`xor(2, A116909(n+1))^A050037(n+1)`
-/

namespace A174998.P5076259297220376084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 2 (A116909 (n + 1)) : ℚ) ^ (A050037 (n + 1) : ℤ)

end

end A174998.P5076259297220376084

/-! ## A174998.P15199967737327369457

`xor(2, A116909(n+1))^A168329(n+1)`
-/

namespace A174998.P15199967737327369457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 2 (A116909 (n + 1)) : ℚ) ^ (A168329 (n + 1) : ℤ)

end

end A174998.P15199967737327369457

/-! ## A174998.P6734643134401890103

`and(A116909(n+1), A158660(A029653(n)))`
-/

namespace A174998.P6734643134401890103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A116909 (n + 1)) (A158660 (A029653 n).toNat)

end

end A174998.P6734643134401890103

/-! ## A174998.P2794269977856981395

`and(A116909(n+1), A260729(n))`
-/

namespace A174998.P2794269977856981395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A116909 (n + 1)) (A260729 n)

end

end A174998.P2794269977856981395

/-! ## A174998.P14668060900428321028

`and(1, A116909(n+1))^A340907(∑[n+1])`
-/

namespace A174998.P14668060900428321028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 1 (A116909 (n + 1)) : ℚ) ^ (A340907 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A174998.P14668060900428321028

/-!
# A174999: Partial sums of A156681.

The programs for A174999, there is no canonical definition to state claims against.
-/

/-! ## A174999.P11260133399010527683

`∑[A156681(n+1)]`
-/

namespace A174999.P11260133399010527683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174999.P11260133399010527683

/-! ## A174999.P4526384590286012204

`∑[A242778(2*(n+1))/2]`
-/

namespace A174999.P4526384590286012204
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242778 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174999.P4526384590286012204

/-! ## A174999.P6973594128886709773

`∑[A001281(A242778(2*(n+1)))]`
-/

namespace A174999.P6973594128886709773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A242778 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174999.P6973594128886709773

/-! ## A174999.P3764946129351913830

`A004525(∑[A242778(2*(n+1))])`
-/

namespace A174999.P3764946129351913830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242778 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A174999.P3764946129351913830

/-! ## A174999.P7154478138822591723

`A004526(∑[A242778(2*(n+1))])`
-/

namespace A174999.P7154478138822591723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242778 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A174999.P7154478138822591723

