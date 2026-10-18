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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B007.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A212600: Composite numbers p-m! arising in A212266.

The programs for A212600, the canonical program `A212600.P11668726103471995510` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212600 has offset 1).

The definition of A212600 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5599 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212600.P11668726103471995510

`filter[A136437(n+3), A066247(#)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A212600

/-- `filter[A136437(n+3), A066247(#)]` -/
def P11668726103471995510.Spec : Prop :=
  ∀ n, P11668726103471995510.a n = A212600 (n + 1)

theorem P11668726103471995510.correct : P11668726103471995510.Spec := by
  intro n
  simp only [A212600, Nat.add_sub_cancel]

end A212600

/-! ## A212600.P11689213126780948452

`filter[A136437(n+3), A202238(#)]`
-/

namespace A212600.P11689213126780948452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136437 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A212600.P11689213126780948452

namespace A212600

/-- `filter[A136437(n+3), A202238(#)]` -/
def P11689213126780948452.Spec : Prop :=
  ∀ n, P11689213126780948452.a n = A212600 (n + 1)

end A212600

/-! ## A212600.P13636418342774008447

`filter[A136437(n+3), A323162(#)]`
-/

namespace A212600.P13636418342774008447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136437 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A212600.P13636418342774008447

namespace A212600

/-- `filter[A136437(n+3), A323162(#)]` -/
def P13636418342774008447.Spec : Prop :=
  ∀ n, P13636418342774008447.a n = A212600 (n + 1)

end A212600

/-! ## A212600.P1140378830317245074

`A136437(∑{d}[A212266(n+1), A000720(#)])`
-/

namespace A212600.P1140378830317245074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136437 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d).toNat

end

end A212600.P1140378830317245074

namespace A212600

/-- `A136437(∑{d}[A212266(n+1), A000720(#)])` -/
def P1140378830317245074.Spec : Prop :=
  ∀ n, P1140378830317245074.a n = A212600 (n + 1)

end A212600

/-! ## A212600.P9284217300376385122

`A136437(∑{p}[A212266(n+1), A000720(#)])`
-/

namespace A212600.P9284217300376385122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136437 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p).toNat

end

end A212600.P9284217300376385122

namespace A212600

/-- `A136437(∑{p}[A212266(n+1), A000720(#)])` -/
def P9284217300376385122.Spec : Prop :=
  ∀ n, P9284217300376385122.a n = A212600 (n + 1)

end A212600

/-! ## A212600.P15757123080946958658

`A212598(A212266(n+1))`
-/

namespace A212600.P15757123080946958658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212598 (A212266 (n + 1)).toNat

end

end A212600.P15757123080946958658

namespace A212600

/-- `A212598(A212266(n+1))` -/
def P15757123080946958658.Spec : Prop :=
  ∀ n, P15757123080946958658.a n = A212600 (n + 1)

end A212600

/-! ## A212600.P11996790753480268014

`A212266(n+1)-A048764(p?[A212266(n+1)])`
-/

namespace A212600.P11996790753480268014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212266 (n + 1) - A048764 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A212600.P11996790753480268014

namespace A212600

/-- `A212266(n+1)-A048764(p?[A212266(n+1)])` -/
def P11996790753480268014.Spec : Prop :=
  ∀ n, P11996790753480268014.a n = A212600 (n + 1)

end A212600

/-!
# A212601: Intersection of A001567 and A212502.

The programs for A212601, there is no canonical definition to state claims against.
-/

/-! ## A212601.P16686627532583090824

`∩[A001567(n+1), A213337(n+1)]`
-/

namespace A212601.P16686627532583090824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212601.P16686627532583090824

/-! ## A212601.P14910103584264339041

`∩[A178723(n+1), A213337(n+1)]`
-/

namespace A212601.P14910103584264339041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212601.P14910103584264339041

/-! ## A212601.P4276361858081782448

`∩[A001567(n+1), A212502(n+1)]`
-/

namespace A212601.P4276361858081782448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212601.P4276361858081782448

/-! ## A212601.P2872370480374721219

`∩[A127643(n+1), A213337(n+1)]`
-/

namespace A212601.P2872370480374721219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212601.P2872370480374721219

/-!
# A212602: a(n) is the smallest prime such that it and the previous prime are both of the form x^2 + n * y^2.

The programs for A212602, there is no canonical definition to state claims against.
-/

/-! ## A212602.P7496142296068690667

`p?[A341890(∑[A341869(2*n+3)])]`
-/

namespace A212602.P7496142296068690667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341869 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341890 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A212602.P7496142296068690667

/-!
# A212606: Number of distinct sums <= 1 of reciprocals of positive integers <= n.

The programs for A212606, there is no canonical definition to state claims against.
-/

/-! ## A212606.P10358885320907296959

`A235388(A038754(n+4))-A235388(n+1)`
-/

namespace A212606.P10358885320907296959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235388 (A038754 (n + 4)).toNat - A235388 (n + 1)

end

end A212606.P10358885320907296959

/-!
# A212607: Number of distinct sums <= 1 of distinct reciprocals of integers <= n.

The programs for A212607, there is no canonical definition to state claims against.
-/

/-! ## A212607.P16845622590670083791

`A117171(A169739(n))`
-/

namespace A212607.P16845622590670083791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117171 (A169739 n).toNat

end

end A212607.P16845622590670083791

/-! ## A212607.P7778548984951467812

`A322847(A072642(n)+1)`
-/

namespace A212607.P7778548984951467812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322847 (A072642 n + 1).toNat

end

end A212607.P7778548984951467812

/-! ## A212607.P6643495654543867427

`A353866(A072642(n)+1)`
-/

namespace A212607.P6643495654543867427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353866 (A072642 n + 1).toNat

end

end A212607.P6643495654543867427

/-! ## A212607.P8973396597844987564

`A108549(∑[A060166(n+1)])`
-/

namespace A212607.P8973396597844987564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108549 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212607.P8973396597844987564

/-! ## A212607.P1378771803262190784

`A213710(n)+A128834(A086855(n))`
-/

namespace A212607.P1378771803262190784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213710 n + A128834 (A086855 n).toNat

end

end A212607.P1378771803262190784

/-!
# A212608: Deficient numbers n having a companion m > n such that sigma(n)/n = sigma(m)/m.

The programs for A212608, there is no canonical definition to state claims against.
-/

/-! ## A212608.P3718756287035653533

`A211680(Δ[n²])`
-/

namespace A212608.P3718756287035653533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211680 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A212608.P3718756287035653533

/-! ## A212608.P9247768707424727333

`lcm(3, A211680(2*n+1))`
-/

namespace A212608.P9247768707424727333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A211680 (2 * n + 1))

end

end A212608.P9247768707424727333

/-! ## A212608.P17918625984437302373

`A211680(n+1+n)+char[41]`
-/

namespace A212608.P17918625984437302373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211680 (n + 1 + n) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A212608.P17918625984437302373

/-! ## A212608.P5663352087367329062

`A000027(A211680(2*n+1))`
-/

namespace A212608.P5663352087367329062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A211680 (2 * n + 1)).toNat

end

end A212608.P5663352087367329062

/-! ## A212608.P2753512968732250389

`or(1, A211680(A109613(2*n)))`
-/

namespace A212608.P2753512968732250389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A211680 (A109613 (2 * n)).toNat)

end

end A212608.P2753512968732250389

/-!
# A212609: The larger companion to the deficient numbers in A212608.

The programs for A212609, there is no canonical definition to state claims against.
-/

/-! ## A212609.P3500899700345888907

`A211680(2*(n+1))`
-/

namespace A212609.P3500899700345888907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211680 (2 * (n + 1))

end

end A212609.P3500899700345888907

/-! ## A212609.P10413159285074200591

`record[A211680(xor(1, n)+1)]`
-/

namespace A212609.P10413159285074200591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211680 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212609.P10413159285074200591

/-! ## A212609.P12986907138528838919

`record[A211680(n+2)/(-1)^n]`
-/

namespace A212609.P12986907138528838919
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211680 (n + 2) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212609.P12986907138528838919

/-! ## A212609.P2505497850627205664

`record[A211680(comp[and(n, n+3)]+1)]`
-/

namespace A212609.P2505497850627205664
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 3)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211680 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212609.P2505497850627205664

/-! ## A212609.P4037836163091136544

`record[A211680(A133265(n))]`
-/

namespace A212609.P4037836163091136544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211680 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212609.P4037836163091136544

/-!
# A212610: Pairs of primitive deficient numbers having the same value of sigma(k)/k, listed by increasing value of the larger of the two k values.

The programs for A212610, there is no canonical definition to state claims against.
-/

/-! ## A212610.P6111365428325410228

`A211680((n+1)^A209866(n))`
-/

namespace A212610.P6111365428325410228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211680 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A209866 n : ℤ))).toNat

end

end A212610.P6111365428325410228

/-!
# A212611: Primitive deficient numbers n having a companion m > n such that sigma(n)/n = sigma(m)/m (ordered by increasing (smallest possible) m).

The programs for A212611, there is no canonical definition to state claims against.
-/

/-! ## A212611.P1693811792187317920

`A212610(2*n+1)`
-/

namespace A212611.P1693811792187317920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212610 (2 * n + 1)

end

end A212611.P1693811792187317920

/-! ## A212611.P15299535464723203881

`or(floor(1/(n+1)), A212610((n+1)²-n²))`
-/

namespace A212611.P15299535464723203881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊1 / (n + 1 : ℚ)⌋ (A212610 ((n + 1) ^ 2 - n ^ 2))

end

end A212611.P15299535464723203881

/-! ## A212611.P14535633470586388794

`A033999(2*n)*A212610(A005408(n))`
-/

namespace A212611.P14535633470586388794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A212610 (A005408 n).toNat

end

end A212611.P14535633470586388794

/-!
# A212612: The larger companion to the primitive deficient numbers in A212611.

The programs for A212612, there is no canonical definition to state claims against.
-/

/-! ## A212612.P8115578422907619016

`A212610(2*(n+1))`
-/

namespace A212612.P8115578422907619016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212610 (2 * (n + 1))

end

end A212612.P8115578422907619016

/-! ## A212612.P14927859825379828322

`record[A212610((n+1)/2^val(n+1, 2)+1)]`
-/

namespace A212612.P14927859825379828322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212610 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212612.P14927859825379828322

/-! ## A212612.P8866277448170086246

`record[A212610(A133265(n))]`
-/

namespace A212612.P8866277448170086246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212610 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212612.P8866277448170086246

/-! ## A212612.P10250078029182853099

`record[A212610(A212595(n))]`
-/

namespace A212612.P10250078029182853099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212610 (A212595 (n + 10)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212612.P10250078029182853099

/-! ## A212612.P14533619292823203516

`record[A212610(A014681(n+1))]`
-/

namespace A212612.P14533619292823203516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212610 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212612.P14533619292823203516

/-!
# A212616: Least triangular number that is the product of n triangular numbers greater than 1.

The programs for A212616, there is no canonical definition to state claims against.
-/

/-! ## A212616.P72886904435224043

`A281153(xor(3, A281167(2*n+1)))`
-/

namespace A212616.P72886904435224043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281153 (Int.xor 3 (A281167 (2 * n + 1))).toNat

end

end A212616.P72886904435224043

/-!
# A212619: Sum of the distances between all unordered pairs of vertices of degree 3 in the rooted tree with Matula-Goebel number n.

The programs for A212619, there is no canonical definition to state claims against.
-/

/-! ## A212619.P12412545434890614399

`and(-A344970(n+1), A206499(n+1))`
-/

namespace A212619.P12412545434890614399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A344970 (n + 1)) (A206499 (n + 1))

end

end A212619.P12412545434890614399

/-! ## A212619.P13649503683313051763

`and(A000041(A104324(n)), A206499(n+1))`
-/

namespace A212619.P13649503683313051763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000041 (A104324 n).toNat) (A206499 (n + 1))

end

end A212619.P13649503683313051763

/-! ## A212619.P16326637020609883621

`and(A007448(A231550(n)), A206499(n+1))`
-/

namespace A212619.P16326637020609883621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007448 (A231550 n).toNat) (A206499 (n + 1))

end

end A212619.P16326637020609883621

/-! ## A212619.P17797907920853500902

`A014306(A243073(n+1))*A206499(n+1)`
-/

namespace A212619.P17797907920853500902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 (A243073 (n + 1)).toNat * A206499 (n + 1)

end

end A212619.P17797907920853500902

/-! ## A212619.P13311585761053717739

`and(A039552(A003961(n+1)), A206499(n+1))`
-/

namespace A212619.P13311585761053717739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A039552 (A003961 (n + 1)).toNat) (A206499 (n + 1))

end

end A212619.P13311585761053717739

/-! ## A212619.P10619345746608268864

`and(A001318(A109129(n+1)), A206499(n+1))`
-/

namespace A212619.P10619345746608268864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001318 (A109129 (n + 1)).toNat) (A206499 (n + 1))

end

end A212619.P10619345746608268864

/-! ## A212619.P18415746675820260316

`and(A120562(A196063(n+1)), A206499(n+1))`
-/

namespace A212619.P18415746675820260316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A120562 (A196063 (n + 1)).toNat) (A206499 (n + 1))

end

end A212619.P18415746675820260316

/-! ## A212619.P7791250064753140759

`and(A016777(A342585(n+1)), A206499(n+1))`
-/

namespace A212619.P7791250064753140759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016777 (A342585 (n + 1)).toNat) (A206499 (n + 1))

end

end A212619.P7791250064753140759

/-! ## A212619.P13331029192095555217

`A206499(or(A050985(n+1), A188291(n+1)))`
-/

namespace A212619.P13331029192095555217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206499 (Int.lor (A050985 (n + 1)) (A188291 (n + 1))).toNat

end

end A212619.P13331029192095555217

/-! ## A212619.P14536795021214928613

`A196055(n+1)%A120562(A196063(n+1))`
-/

namespace A212619.P14536795021214928613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196055 (n + 1)) (A120562 (A196063 (n + 1)).toNat)

end

end A212619.P14536795021214928613

/-!
# A212620: Irregular triangle read by rows: T(n,k) is the number of k-vertex subtrees of the rooted tree with Matula-Goebel number n (n>=1, k>=1).

The programs for A212620, there is no canonical definition to state claims against.
-/

/-! ## A212620.P12550725009075760299

`A001511(record[A115195(n)])`
-/

namespace A212620.P12550725009075760299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115195 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A212620.P12550725009075760299

/-! ## A212620.P6752283254312444635

`A007814(record[A115195(n)])+1`
-/

namespace A212620.P6752283254312444635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115195 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A212620.P6752283254312444635

/-! ## A212620.P3766842344094897174

`ceil(p?[A025581(A182757(n+1))]/2)`
-/

namespace A212620.P3766842344094897174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A182757 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌉

end

end A212620.P3766842344094897174

/-! ## A212620.P4048413413707858172

`A000005(A003484(record[A115195(n)]))`
-/

namespace A212620.P4048413413707858172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115195 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003484 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A212620.P4048413413707858172

/-! ## A212620.P6504907325543439338

`A000720(p?[A025581(A182757(n+1))])`
-/

namespace A212620.P6504907325543439338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A182757 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A212620.P6504907325543439338

/-!
# A212623: Irregular triangle read by rows: T(n,k) is the number of independent vertex subsets with k vertices of the rooted tree with Matula-Goebel number n (n>=1, k>=0).

The programs for A212623, there is no canonical definition to state claims against.
-/

/-! ## A212623.P16721081067796089043

`A212628(A213670(n+1))+A185284(2*n+1)`
-/

namespace A212623.P16721081067796089043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212628 (A213670 (n + 1)).toNat + A185284 (2 * n + 1)

end

end A212623.P16721081067796089043

/-! ## A212623.P5694640092456775366

`A227837(A015068(n))+A212628(A213670(n+1))`
-/

namespace A212623.P5694640092456775366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227837 (A015068 n).toNat + A212628 (A213670 (n + 1)).toNat

end

end A212623.P5694640092456775366

/-! ## A212623.P1628022586074554121

`A070939(A213670(n+1)%A111157(n+1))`
-/

namespace A212623.P1628022586074554121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.tmod (A213670 (n + 1)) (A111157 (n + 1))).toNat

end

end A212623.P1628022586074554121

/-! ## A212623.P7971152786041362393

`and(A000203(2^n), A212628(A213670(n+1)))`
-/

namespace A212623.P7971152786041362393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (2 ^ n)) (A212628 (A213670 (n + 1)).toNat)

end

end A212623.P7971152786041362393

/-! ## A212623.P7382316805735419095

`A070939(A213670(n+1))%A374635(2*n+3)`
-/

namespace A212623.P7382316805735419095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 (A213670 (n + 1)).toNat) (A374635 (2 * n + 3))

end

end A212623.P7382316805735419095

/-!
# A212625: Number of vertices in the largest independent vertex subset of the rooted tree with Matula-Goebel number n.

The programs for A212625, there is no canonical definition to state claims against.
-/

/-! ## A212625.P6132152488311486249

`A061775(n+1)-A206483(n+1)`
-/

namespace A212625.P6132152488311486249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (n + 1) - A206483 (n + 1)

end

end A212625.P6132152488311486249

/-! ## A212625.P5751915910926028719

`Δ[A325544(n)]+1-A206483(n+1)`
-/

namespace A212625.P5751915910926028719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 - A206483 (n + 1)

end

end A212625.P5751915910926028719

/-! ## A212625.P5955010533601675146

`A196050(n+1)+1-A206483(n+1)`
-/

namespace A212625.P5955010533601675146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (n + 1) + (1 - A206483 (n + 1))

end

end A212625.P5955010533601675146

/-! ## A212625.P15848632976530421066

`∑{e}[A324922(n+1), #]+1-A206483(n+1)`
-/

namespace A212625.P15848632976530421066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1 : ℕ) : ℤ) - A206483 (n + 1)

end

end A212625.P15848632976530421066

/-! ## A212625.P6009828310582450091

`A196050(Δ[A007504(n)])-A206483(n+1)`
-/

namespace A212625.P6009828310582450091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (f1 (n + 1) - f1 n).toNat - A206483 (n + 1)

end

end A212625.P6009828310582450091

/-! ## A212625.P14798685542427436515

`A196050(A000040(n+1))-A206483(n+1)`
-/

namespace A212625.P14798685542427436515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (A000040 (n + 1)).toNat - A206483 (n + 1)

end

end A212625.P14798685542427436515

/-! ## A212625.P4472257010559044691

`A005496(A196050(n+1)-A206483(n+1))`
-/

namespace A212625.P4472257010559044691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A196050 (n + 1) - A206483 (n + 1)).toNat

end

end A212625.P4472257010559044691

/-! ## A212625.P7018170686199239456

`A005555(A196050(n+1)-A206483(n+1))`
-/

namespace A212625.P7018170686199239456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A196050 (n + 1) - A206483 (n + 1)).toNat

end

end A212625.P7018170686199239456

/-! ## A212625.P10426311011820882309

`A196050(A005843(n+1))-A206483(n+1)`
-/

namespace A212625.P10426311011820882309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (A005843 (n + 1)).toNat - A206483 (n + 1)

end

end A212625.P10426311011820882309

/-!
# A212626: Number of largest independent vertex subsets of the rooted tree with Matula-Goebel number n.

The programs for A212626, there is no canonical definition to state claims against.
-/

/-! ## A212626.P12518796175352766770

`A212627(∑[A212625(n+1)])`
-/

namespace A212626.P12518796175352766770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212627 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212626.P12518796175352766770

/-! ## A212626.P5656597491765680169

`A212627(∑[A061775(n+1)-A206483(n+1)])`
-/

namespace A212626.P5656597491765680169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (n + 1) - A206483 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212627 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212626.P5656597491765680169

/-! ## A212626.P14580549178434536124

`A212627(∑[A196050(n+1)+1-A206483(n+1)])`
-/

namespace A212626.P14580549178434536124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (n + 1) + (1 - A206483 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212627 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212626.P14580549178434536124

/-! ## A212626.P2014025245127041343

`A212623(∑[A212625(n+1)+1])`
-/

namespace A212626.P2014025245127041343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212625 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212623 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212626.P2014025245127041343

/-!
# A212627: Irregular triangle read by rows: T(n,k) is the number of maximal independent vertex subsets with k vertices of the rooted tree with Matula-Goebel number n (n>=1, k>=1).

The programs for A212627, there is no canonical definition to state claims against.
-/

/-! ## A212627.P6038051208924573274

`A240061(or(A003401(n+1), A195312(n)))`
-/

namespace A212627.P6038051208924573274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240061 (Int.lor (A003401 (n + 1)) (A195312 n)).toNat

end

end A212627.P6038051208924573274

/-! ## A212627.P8324051268449843740

`A136230(A002371(n+1))%4`
-/

namespace A212627.P8324051268449843740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136230 (A002371 (n + 1)).toNat) 4

end

end A212627.P8324051268449843740

/-! ## A212627.P9268271713109860911

`A168389(A263007(3*n+4))%4`
-/

namespace A212627.P9268271713109860911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168389 (A263007 (3 * n + 4)).toNat) 4

end

end A212627.P9268271713109860911

/-! ## A212627.P3369535289458380444

`A101211(n+5)-A124761(A232616(2*n+1))`
-/

namespace A212627.P3369535289458380444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101211 (n + 5) - A124761 (A232616 (2 * n + 1)).toNat

end

end A212627.P3369535289458380444

/-! ## A212627.P16800862030857899261

`A240060(∑{e}[n+1, #]+A000041(n))`
-/

namespace A212627.P16800862030857899261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240060 (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) + A000041 n).toNat

end

end A212627.P16800862030857899261

/-!
# A212628: Number of maximal independent vertex subsets in the rooted tree with Matula-Goebel number n.

The programs for A212628, there is no canonical definition to state claims against.
-/

/-! ## A212628.P2976722615492236204

`A196058(n+1)+A010054(A000204(n+1))`
-/

namespace A212628.P2976722615492236204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196058 (n + 1) + A010054 (A000204 (n + 1)).toNat

end

end A212628.P2976722615492236204

/-!
# A212630: Irregular triangle read by rows: T(n,k) is the number of dominating subsets with k vertices of the rooted tree with Matula-Goebel number n (n>=1, k>=1).

The programs for A212630, there is no canonical definition to state claims against.
-/

/-! ## A212630.P3515376641939207110

`A204018(A200062(n+5))%(comp[∑[n]]-n)`
-/

namespace A212630.P3515376641939207110
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204018 (A200062 (n + 5)).toNat) ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A212630.P3515376641939207110

/-!
# A212632: The domination number of the rooted tree with Matula-Goebel number n.

The programs for A212632, there is no canonical definition to state claims against.
-/

/-! ## A212632.P15746911066439744420

`A069010(10^A184156(n+1))`
-/

namespace A212632.P15746911066439744420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (SequenceMachineLib.roundAway ((10 : ℚ) ^ (A184156 (n + 1) : ℤ))).toNat

end

end A212632.P15746911066439744420

/-! ## A212632.P6837467675966802909

`A185090(A184156(n+1)²+6)`
-/

namespace A212632.P6837467675966802909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185090 (A184156 (n + 1) ^ 2 + 6).toNat

end

end A212632.P6837467675966802909

/-! ## A212632.P7379589382757784114

`A010766(A000070(A184156(n+1)²))`
-/

namespace A212632.P7379589382757784114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A000070 (A184156 (n + 1) ^ 2).toNat).toNat

end

end A212632.P7379589382757784114

/-! ## A212632.P1677881463898739498

`A001222(A022367(A184156(n+1)²))`
-/

namespace A212632.P1677881463898739498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A022367 (A184156 (n + 1) ^ 2).toNat).toNat

end

end A212632.P1677881463898739498

/-!
# A212633: Triangle read by rows: T(n,k) is the number of dominating subsets with cardinality k of the path tree P_n (n>=1, 1<=k<=n).

The programs for A212633, there is no canonical definition to state claims against.
-/

/-! ## A212633.P17672109675564982455

`A202241(n)-A235145(A022349(n))`
-/

namespace A212633.P17672109675564982455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202241 n - A235145 (A022349 n).toNat

end

end A212633.P17672109675564982455

/-! ## A212633.P12906039938536834273

`A202241(n)-A025669(A135814(n)!)`
-/

namespace A212633.P12906039938536834273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202241 n - A025669 (Nat.factorial (A135814 n).toNat)

end

end A212633.P12906039938536834273

/-! ## A212633.P8367034960342460591

`A202241(n)-A135814(A135814(n)!)`
-/

namespace A212633.P8367034960342460591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202241 n - A135814 (Nat.factorial (A135814 n).toNat)

end

end A212633.P8367034960342460591

/-! ## A212633.P1132449918615927600

`A202241(n)-A010052(A253023(n+1))`
-/

namespace A212633.P1132449918615927600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202241 n - A010052 (A253023 (n + 1)).toNat

end

end A212633.P1132449918615927600

/-! ## A212633.P12259222107450906228

`A202241(n)-A235145(A048006(n+1))`
-/

namespace A212633.P12259222107450906228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202241 n - A235145 (A048006 (n + 1)).toNat

end

end A212633.P12259222107450906228

/-!
# A212634: Triangle read by rows: T(n,k) is the number of dominating subsets with cardinality k of the cycle C_n (n >= 1, 1 <= k <= n).

The programs for A212634, there is no canonical definition to state claims against.
-/

/-! ## A212634.P11159091151685854512

`A199011(∑[A100428(A005682(n+5))])`
-/

namespace A212634.P11159091151685854512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100428 (A005682 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199011 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212634.P11159091151685854512

/-! ## A212634.P12452028506635858549

`A089000(A161953(n+1)+A000194(n))`
-/

namespace A212634.P12452028506635858549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089000 (A161953 (n + 1) + A000194 n).toNat

end

end A212634.P12452028506635858549

/-! ## A212634.P5985648595438349447

`A089000(A187829(n+1)+A000194(n))`
-/

namespace A212634.P5985648595438349447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089000 (A187829 (n + 1) + A000194 n).toNat

end

end A212634.P5985648595438349447

/-! ## A212634.P13778467097878635527

`A199011(A187829(n+1)+A000194(n))`
-/

namespace A212634.P13778467097878635527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199011 (A187829 (n + 1) + A000194 n).toNat

end

end A212634.P13778467097878635527

/-! ## A212634.P13382247899240158451

`A199011(A184010(n+1)^A008835(n+1))`
-/

namespace A212634.P13382247899240158451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199011 (SequenceMachineLib.roundAway ((A184010 (n + 1) : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A212634.P13382247899240158451

/-!
# A212637: Minimal m>=0 such that (2*n-1)!! + 2^m is prime.

The programs for A212637, there is no canonical definition to state claims against.
-/

/-! ## A212637.P687917875867805960

`ceil(log2(A103512(n+1)%A050848(n+1)))`
-/

namespace A212637.P687917875867805960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Int.tmod (A103512 (n + 1)) (A050848 (n + 1)) : ℝ)⌉

end

end A212637.P687917875867805960

/-! ## A212637.P14115877045891842449

`A066620(A103512(n+1)*A135580(n))`
-/

namespace A212637.P14115877045891842449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066620 (A103512 (n + 1) * A135580 n).toNat

end

end A212637.P14115877045891842449

/-! ## A212637.P13627861820130891736

`A066620(lcm(A103512(n+1), A135580(n)))`
-/

namespace A212637.P13627861820130891736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066620 (Int.lcm (A103512 (n + 1)) (A135580 n))

end

end A212637.P13627861820130891736

/-! ## A212637.P16452136261306061021

`ceil(log2(A103512(n+1)))%A152635(n+1)`
-/

namespace A212637.P16452136261306061021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.logb 2 (A103512 (n + 1) : ℝ)⌉ (A152635 (n + 1))

end

end A212637.P16452136261306061021

/-! ## A212637.P16621154089537216206

`A036174(A103512(n+1))`
-/

namespace A212637.P16621154089537216206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036174 (A103512 (n + 1)).toNat

end

end A212637.P16621154089537216206

/-!
# A212638: a(n) = n-th powerful number that is the first integer of its prime signature, divided by its largest squarefree divisor: A003557(A181800(n)).

The programs for A212638, there is no canonical definition to state claims against.
-/

/-! ## A212638.P13926626751550492718

`A003557(A181800(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A212638.P13926626751550492718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A181800 (n + 1)).toNat

end

end A212638.P13926626751550492718

/-! ## A212638.P6513862085427422057

`A181800(n+1)/gcd(A181800(n+1), A319865(n+1))`
-/

namespace A212638.P6513862085427422057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181800 (n + 1) : ℚ) / (Int.gcd (A181800 (n + 1)) (A319865 (n + 1)) : ℚ)

end

end A212638.P6513862085427422057

/-! ## A212638.P11944837178885822174

`filter[A306458(n+1), A322585(#)]`
-/

namespace A212638.P11944837178885822174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A212638.P11944837178885822174

/-! ## A212638.P15018767137910666103

`filter[A397500(n+1), A322585(#)]`
-/

namespace A212638.P15018767137910666103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A212638.P15018767137910666103

/-! ## A212638.P10831179114674446276

`A336551(∩[A025487(n+1), A353485(n+1)])+1`
-/

namespace A212638.P10831179114674446276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353485 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) + 1

end

end A212638.P10831179114674446276

/-!
# A212639: Number of prime factors of A181800(n) (n-th powerful number that is the first integer of its prime signature), counted with multiplicity.

The programs for A212639, there is no canonical definition to state claims against.
-/

/-! ## A212639.P14051168355394579624

`A001222(A181800(n+1))`
-/

namespace A212639.P14051168355394579624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A181800 (n + 1)).toNat

end

end A212639.P14051168355394579624

/-! ## A212639.P15477888233966973004

`A212645(n+1)+A212179(n+1)`
-/

namespace A212639.P15477888233966973004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212645 (n + 1) + A212179 (n + 1)

end

end A212639.P15477888233966973004

/-! ## A212639.P2445056371608036671

`A212645(n+1)+A001221(A181800(n+1)/A212638(n+1))`
-/

namespace A212639.P2445056371608036671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212645 (n + 1) + A001221 (SequenceMachineLib.roundAway ((A181800 (n + 1) : ℚ) / (A212638 (n + 1) : ℚ))).toNat

end

end A212639.P2445056371608036671

/-! ## A212639.P4035728513004492564

`∑{e}[A212638(n+1), #+1]`
-/

namespace A212639.P4035728513004492564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212638 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A212639.P4035728513004492564

/-! ## A212639.P14212800961957872581

`log2(∏{e}[A181800(n+1), A000079(#)])`
-/

namespace A212639.P14212800961957872581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000079 (Nat.factorization (f1 n).natAbs p) : ℤ) : ℝ)

end

end A212639.P14212800961957872581

/-! ## A212639.P4376345914705335398

`∑{e}[∩[A025487(n+1), A055744(n+1)], #]`
-/

namespace A212639.P4376345914705335398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055744 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A212639.P4376345914705335398

/-! ## A212639.P10949558837583940823

`∑{e}[record[gcd(A307107(n+1)², A025487(n+1))], #]`
-/

namespace A212639.P10949558837583940823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A307107 (n + 1) ^ 2) (A025487 (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A212639.P10949558837583940823

/-! ## A212639.P15999471951303600484

`A212179(n+1)+A001222(A212638(n+1))`
-/

namespace A212639.P15999471951303600484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212179 (n + 1) + A001222 (A212638 (n + 1)).toNat

end

end A212639.P15999471951303600484

/-! ## A212639.P14531463186389347581

`A212645(n+1)+A001221(A212638(n+1))`
-/

namespace A212639.P14531463186389347581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212645 (n + 1) + A001221 (A212638 (n + 1)).toNat

end

end A212639.P14531463186389347581

/-!
# A212640: Number of divisors of A181800(n) (n-th powerful number that is the first integer of its prime signature).

The programs for A212640, there is no canonical definition to state claims against.
-/

/-! ## A212640.P3874705494164609568

`A000005(A181800(n+1))`
-/

namespace A212640.P3874705494164609568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A181800 (n + 1)).toNat

end

end A212640.P3874705494164609568

/-! ## A212640.P8898369920289154191

`∏{e}[A212638(n+1), #+2]`
-/

namespace A212640.P8898369920289154191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212638 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 2)

end

end A212640.P8898369920289154191

/-! ## A212640.P7766905189498874688

`∑{d}[A181800(2*n-n+1), ceil(1/#)]`
-/

namespace A212640.P7766905189498874688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 ((2 * n : ℤ) - (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ⌈1 / (d : ℚ)⌉

end

end A212640.P7766905189498874688

/-! ## A212640.P6564262063145281994

`∏{e}[∩[A025487(n+1), A055744(n+1)], #+1]`
-/

namespace A212640.P6564262063145281994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055744 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A212640.P6564262063145281994

/-! ## A212640.P17369745033348630938

`A343443(A212638(n+1))`
-/

namespace A212640.P17369745033348630938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343443 (A212638 (n + 1)).toNat

end

end A212640.P17369745033348630938

/-!
# A212641: Largest odd divisor of A212640(n) (number of divisors of n-th powerful number that is the first integer of its prime signature).

The programs for A212641, there is no canonical definition to state claims against.
-/

/-! ## A212641.P4862051144850374159

`A000265(A212640(n+1))`
-/

namespace A212641.P4862051144850374159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A212640 (n + 1)).toNat

end

end A212641.P4862051144850374159

/-! ## A212641.P12239928882429375820

`A212181(A181800(n+1))`
-/

namespace A212641.P12239928882429375820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212181 (A181800 (n + 1)).toNat

end

end A212641.P12239928882429375820

/-! ## A212641.P7214037887759854699

`A171435(2*A212640(n+1))`
-/

namespace A212641.P7214037887759854699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * A212640 (n + 1)).toNat

end

end A212641.P7214037887759854699

/-! ## A212641.P12281935560139848230

`A302034(2*A212640(n+1))`
-/

namespace A212641.P12281935560139848230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302034 (2 * A212640 (n + 1)).toNat

end

end A212641.P12281935560139848230

/-! ## A212641.P234676967941332331

`A028234(lcm(2, A212640(n+1)))`
-/

namespace A212641.P234676967941332331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (Int.lcm 2 (A212640 (n + 1)))

end

end A212641.P234676967941332331

/-! ## A212641.P5586280230792476255

`A028234(2*A212640(n+1))`
-/

namespace A212641.P5586280230792476255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (2 * A212640 (n + 1)).toNat

end

end A212641.P5586280230792476255

/-! ## A212641.P3588502658442066019

`A093803(2*A212640(n+1))`
-/

namespace A212641.P3588502658442066019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093803 (2 * A212640 (n + 1)).toNat

end

end A212641.P3588502658442066019

/-! ## A212641.P14094880302603786199

`A139391(2*A212640(n+1))`
-/

namespace A212641.P14094880302603786199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139391 (2 * A212640 (n + 1)).toNat

end

end A212641.P14094880302603786199

/-! ## A212641.P16342499333549939565

`A161150(2*A212640(n+1))`
-/

namespace A212641.P16342499333549939565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161150 (2 * A212640 (n + 1)).toNat

end

end A212641.P16342499333549939565

/-! ## A212641.P5665919966163130866

`A161150(A212640(n+1)+A212640(n+1))`
-/

namespace A212641.P5665919966163130866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161150 (A212640 (n + 1) + A212640 (n + 1)).toNat

end

end A212641.P5665919966163130866

/-!
# A212642: a(n) = number of distinct prime signatures represented among divisors of A181800(n) (n-th powerful number that is the first integer of its prime signature).

The programs for A212642, there is no canonical definition to state claims against.
-/

/-! ## A212642.P10517896518468608381

`A085082(A181800(n+1))`
-/

namespace A212642.P10517896518468608381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085082 (A181800 (n + 1)).toNat

end

end A212642.P10517896518468608381

/-! ## A212642.P18060742972922983145

`∑{d}[A181800(n+1), A322585(#)]`
-/

namespace A212642.P18060742972922983145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A322585 d

end

end A212642.P18060742972922983145

/-! ## A212642.P17474597710054919882

`A322584(∩[A025487(n+1), A055744(n+1)])`
-/

namespace A212642.P17474597710054919882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055744 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322584 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A212642.P17474597710054919882

/-! ## A212642.P15714582064965723038

`A322584(∩[A025487(n+1), A353485(n+1)])`
-/

namespace A212642.P15714582064965723038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353485 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322584 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A212642.P15714582064965723038

/-! ## A212642.P9805632902409924679

`A322584(∏{p}[A212638(n+1), #]*A212638(n+1))`
-/

namespace A212642.P9805632902409924679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322584 (((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) * A212638 (n + 1)).toNat

end

end A212642.P9805632902409924679

/-!
# A212643: Let b(n) and c(n) be the total numbers of distinct prime signatures and second signatures, respectively, represented among divisors of A181800(n) (first integers of each second signature; cf. A212172). b(n) mod c(n) = a(n).

The programs for A212643, there is no canonical definition to state claims against.
-/

/-! ## A212643.P8240509943425594301

`A212642(n+1)%A212644(n+1)`
-/

namespace A212643.P8240509943425594301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212642 (n + 1)) (A212644 (n + 1))

end

end A212643.P8240509943425594301

/-! ## A212643.P7457521444223595462

`A322584(A181800(n+1))%A212644(n+1)`
-/

namespace A212643.P7457521444223595462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322584 (A181800 (n + 1)).toNat) (A212644 (n + 1))

end

end A212643.P7457521444223595462

/-! ## A212643.P4034390958844135892

`A085082(record[A212173(n+1)])%A212644(n+1)`
-/

namespace A212643.P4034390958844135892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085082 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A212644 (n + 1))

end

end A212643.P4034390958844135892

/-! ## A212643.P4636885155369439762

`A085082(A181800(n+1))%A085082(A212638(n+1))`
-/

namespace A212643.P4636885155369439762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085082 (A181800 (n + 1)).toNat) (A085082 (A212638 (n + 1)).toNat)

end

end A212643.P4636885155369439762

/-! ## A212643.P9231355401990472353

`A076389(A136625(2*n))%A165412(n+1)`
-/

namespace A212643.P9231355401990472353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076389 (A136625 (2 * n)).toNat) (A165412 (n + 1))

end

end A212643.P9231355401990472353

/-!
# A212644: If an integer's second signature (cf. A212172) is the n-th to appear among positive integers, a(n) = number of distinct second signatures represented among its divisors.

The programs for A212644, there is no canonical definition to state claims against.
-/

/-! ## A212644.P11960829623940220869

`A212180(A181800(n+1))`
-/

namespace A212644.P11960829623940220869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212180 (A181800 (n + 1)).toNat

end

end A212644.P11960829623940220869

/-! ## A212644.P12765214130231624872

`∑{d}[A212638(n+1), A322585(#)]`
-/

namespace A212644.P12765214130231624872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A322585 d

end

end A212644.P12765214130231624872

/-! ## A212644.P2265393089664785387

`A322584(A212638(n+1))`
-/

namespace A212644.P2265393089664785387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322584 (A212638 (n + 1)).toNat

end

end A212644.P2265393089664785387

/-! ## A212644.P2808296567664128194

`A322584(A181800(n+1)/∏{p}[A181800(n+1), #])`
-/

namespace A212644.P2808296567664128194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322584 (SequenceMachineLib.roundAway ((A181800 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ))).toNat

end

end A212644.P2808296567664128194

/-! ## A212644.P6442305735655078470

`A085082(A212638(-xor(n, -1)))`
-/

namespace A212644.P6442305735655078470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085082 (A212638 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A212644.P6442305735655078470

/-! ## A212644.P13956875604801097063

`A085082(root(A212638(n+1), 2)²)`
-/

namespace A212644.P13956875604801097063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085082 (SequenceMachineLib.roundAway (((A212638 (n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat

end

end A212644.P13956875604801097063

/-! ## A212644.P5137510303016631415

`A085082(A212638(n+1)+char[1])`
-/

namespace A212644.P5137510303016631415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085082 (A212638 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A212644.P5137510303016631415

/-! ## A212644.P13721373281227817729

`A085082(A212638(2*n+1-n))`
-/

namespace A212644.P13721373281227817729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085082 (A212638 (2 * n + 1 - n)).toNat

end

end A212644.P13721373281227817729

/-! ## A212644.P323060093074162843

`A085082(A212638(n+1))%A001060(n)`
-/

namespace A212644.P323060093074162843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085082 (A212638 (n + 1)).toNat) (A001060 n)

end

end A212644.P323060093074162843

/-! ## A212644.P17271322269810931856

`∑{d}[A085082(A212638(n+1)), A000010(#)]`
-/

namespace A212644.P17271322269810931856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085082 (A212638 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A212644.P17271322269810931856

/-!
# A212645: a(n) = number of excess prime divisors of A181800(n) (n-th powerful number that is the first integer of its prime signature).

The programs for A212645, there is no canonical definition to state claims against.
-/

/-! ## A212645.P14168252158725387480

`A212639(n+1)-A212179(n+1)`
-/

namespace A212645.P14168252158725387480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212639 (n + 1) - A212179 (n + 1)

end

end A212645.P14168252158725387480

/-! ## A212645.P16689959992562906791

`A001222(A212638(n+1))`
-/

namespace A212645.P16689959992562906791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A212638 (n + 1)).toNat

end

end A212645.P16689959992562906791

/-! ## A212645.P2404018365111614553

`A046660(A181800(n+1))`
-/

namespace A212645.P2404018365111614553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A181800 (n + 1)).toNat

end

end A212645.P2404018365111614553

/-! ## A212645.P13004710986602949091

`A212639(n+1)-A076558(A181800(n+1)/A212638(n+1))`
-/

namespace A212645.P13004710986602949091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212639 (n + 1) - A076558 (SequenceMachineLib.roundAway ((A181800 (n + 1) : ℚ) / (A212638 (n + 1) : ℚ))).toNat

end

end A212645.P13004710986602949091

/-! ## A212645.P12170891851135737649

`A056239(∏{e}[A212638(n+1), A000040(#)])`
-/

namespace A212645.P12170891851135737649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A212645.P12170891851135737649

/-! ## A212645.P17211053372354004479

`A212639(n+1)-A001221(A212638(n+1))`
-/

namespace A212645.P17211053372354004479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212639 (n + 1) - A001221 (A212638 (n + 1)).toNat

end

end A212645.P17211053372354004479

/-! ## A212645.P10060237550070246330

`A001222(A181800(n+1)/∏{p}[A181800(n+1), #])`
-/

namespace A212645.P10060237550070246330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A181800 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ))).toNat

end

end A212645.P10060237550070246330

/-! ## A212645.P4226485558493610586

`A001222(A181800(n+1))-A212179(n+1)`
-/

namespace A212645.P4226485558493610586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A181800 (n + 1)).toNat - A212179 (n + 1)

end

end A212645.P4226485558493610586

/-! ## A212645.P746564619835852329

`A001222(A181800(n+1)/A007947(A181800(n+1)))`
-/

namespace A212645.P746564619835852329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A181800 (n + 1) : ℚ) / (A007947 (A181800 (n + 1)).toNat : ℚ))).toNat

end

end A212645.P746564619835852329

/-!
# A212646: a(n) = number of Abelian groups of order A181800(n) (n-th powerful number that is the first integer of its prime signature).

The programs for A212646, there is no canonical definition to state claims against.
-/

/-! ## A212646.P10088922354536042827

`A000688(A181800(n+1))`
-/

namespace A212646.P10088922354536042827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A181800 (n + 1)).toNat

end

end A212646.P10088922354536042827

/-! ## A212646.P10487986662502762948

`∏{e}[A212638(n+1), A000041(#+1)]`
-/

namespace A212646.P10487986662502762948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000041 (Nat.factorization (f1 n).natAbs p + 1)

end

end A212646.P10487986662502762948

/-! ## A212646.P8156119098764523099

`∏{e}[A181800(n+1), A000041(#)]`
-/

namespace A212646.P8156119098764523099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000041 (Nat.factorization (f1 n).natAbs p)

end

end A212646.P8156119098764523099

/-! ## A212646.P8537436036056658898

`∏{e}[A181800(n+1), A213598(#)]`
-/

namespace A212646.P8537436036056658898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A213598 (Nat.factorization (f1 n).natAbs p)

end

end A212646.P8537436036056658898

/-! ## A212646.P13309214874454315086

`∏{e}[A064549(A212638(n+1)), A000041(#)]`
-/

namespace A212646.P13309214874454315086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A212638 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000041 (Nat.factorization (f1 n).natAbs p)

end

end A212646.P13309214874454315086

/-!
# A212647: a(n) = product of exponents in canonical prime factorization of A181800(n) (n-th powerful number that is the first integer of its prime signature); a(1) = 1 by convention.

The programs for A212647, there is no canonical definition to state claims against.
-/

/-! ## A212647.P1743296090483119175

`A000005(A212638(n+1))`
-/

namespace A212647.P1743296090483119175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A212638 (n + 1)).toNat

end

end A212647.P1743296090483119175

/-! ## A212647.P8307123995746379459

`A005361(A181800(n+1))`
-/

namespace A212647.P8307123995746379459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A181800 (n + 1)).toNat

end

end A212647.P8307123995746379459

/-! ## A212647.P7010500591205436215

`∑{d}[A212638(n+1), gcd(#, A000040(n+1))]`
-/

namespace A212647.P7010500591205436215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212638 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.gcd (d : ℤ) (A000040 (n + 1))

end

end A212647.P7010500591205436215

/-! ## A212647.P13783557409964066302

`∏{p}[A212638(n+1), val(A181800(n+1), #)]`
-/

namespace A212647.P13783557409964066302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212638 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, SequenceMachineLib.valuation (A181800 (n + 1)).toNat p

end

end A212647.P13783557409964066302

/-! ## A212647.P7173012039328872832

`∑{d}[A212638(n+1), #^A135416(3*n+2)]`
-/

namespace A212647.P7173012039328872832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212638 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ (A135416 (3 * n + 2) : ℤ)

end

end A212647.P7173012039328872832

/-! ## A212647.P8291652827900741195

`∏{e}[∩[A025487(n+1), A055744(n+1)], #]`
-/

namespace A212647.P8291652827900741195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055744 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A212647.P8291652827900741195

/-! ## A212647.P14976773655200267398

`∏{e}[record[gcd(A307107(n+1)², A025487(n+1))], #]`
-/

namespace A212647.P14976773655200267398
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A307107 (n + 1) ^ 2) (A025487 (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A212647.P14976773655200267398

/-! ## A212647.P8396620719625672228

`A000005(A181800(n+1)/A007947(A181800(n+1)))`
-/

namespace A212647.P8396620719625672228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A181800 (n + 1) : ℚ) / (A007947 (A181800 (n + 1)).toNat : ℚ))).toNat

end

end A212647.P8396620719625672228

/-!
# A212649: a(n) = floor(Sum_{k=0..n-1} sqrt(n^2 - k^2)).

The programs for A212649, there is no canonical definition to state claims against.
-/

/-! ## A212649.P37338609612386495

`record[A152205(n+1)-A135671(n+1)]`
-/

namespace A212649.P37338609612386495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152205 (n + 1) - A135671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212649.P37338609612386495

/-! ## A212649.P5299093984751569976

`A283733(n)+A001221(A001790(n))`
-/

namespace A212649.P5299093984751569976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283733 n + A001221 (A001790 n).toNat

end

end A212649.P5299093984751569976

/-! ## A212649.P17280285026469434033

`A274933(A397972(n+1))`
-/

namespace A212649.P17280285026469434033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274933 (A397972 (n + 1)).toNat

end

end A212649.P17280285026469434033

/-! ## A212649.P17941861613374513554

`∑[A327705(∑[A132180(n)])]`
-/

namespace A212649.P17941861613374513554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132180 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327705 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212649.P17941861613374513554

/-! ## A212649.P4937452108761661194

`A000196(floor(∑[A250120(3*n+2)]/9)²)`
-/

namespace A212649.P4937452108761661194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 9⌋ ^ 2).toNat

end

end A212649.P4937452108761661194

/-!
# A212650: Number of permutations of n elements with at least one fixed point and at least one 2-cycle (transposition).

The programs for A212650, there is no canonical definition to state claims against.
-/

/-! ## A212650.P1693828279678320445

`A027616(n)+A038205(n)-A000166(n)`
-/

namespace A212650.P1693828279678320445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027616 n + (A038205 n - A000166 n)

end

end A212650.P1693828279678320445

/-! ## A212650.P18091157030337502843

`A000142(n)-A237928(∑[n])`
-/

namespace A212650.P18091157030337502843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A237928 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212650.P18091157030337502843

/-! ## A212650.P3525442538759766335

`A355181(n)+Δ[A008835(A052991(n))]`
-/

namespace A212650.P3525442538759766335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (A052991 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355181 n + (f1 (n + 1) - f1 n)

end

end A212650.P3525442538759766335

/-!
# A212652: a(n) is the least positive integer M such that n = T(M) - T(k), for k an integer, 0 <= k <= M, where T(r) = A000217(r) is the r-th triangular number.

The programs for A212652, there is no canonical definition to state claims against.
-/

/-! ## A212652.P2554435021761629488

`A109814(n+1)+A118235(n+1)-1`
-/

namespace A212652.P2554435021761629488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109814 (n + 1) + A118235 (n + 1) - 1

end

end A212652.P2554435021761629488

/-! ## A212652.P13586948695528180911

`A218621(n+1)+((n+1)/A218621(n+1)-1)/2`
-/

namespace A212652.P13586948695528180911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218621 (n + 1) : ℚ) + ((n + 1 : ℚ) / (A218621 (n + 1) : ℚ) - 1) / 2

end

end A212652.P13586948695528180911

/-! ## A212652.P5266283258350603822

`A109814(n+1)+A023443(A118235(n+1))`
-/

namespace A212652.P5266283258350603822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109814 (n + 1) + A023443 (A118235 (n + 1)).toNat

end

end A212652.P5266283258350603822

/-! ## A212652.P12924158949708049888

`A104513(n+1)+A118235(n+1)-A043545(n)`
-/

namespace A212652.P12924158949708049888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104513 (n + 1) + (A118235 (n + 1) - A043545 n)

end

end A212652.P12924158949708049888

/-! ## A212652.P17972749017615302987

`A118235(n+1)+A005408(n)%A109814(n+1)`
-/

namespace A212652.P17972749017615302987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118235 (n + 1) + Int.tmod (A005408 n) (A109814 (n + 1))

end

end A212652.P17972749017615302987

/-! ## A212652.P9660804809341367690

`A286013(A109814(n+1)+∑[A003056(n)])`
-/

namespace A212652.P9660804809341367690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286013 (A109814 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212652.P9660804809341367690

/-! ## A212652.P7566997881642858086

`A003056(A000217(A118235(n+1))+n)`
-/

namespace A212652.P7566997881642858086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000217 (A118235 (n + 1)).toNat + (n : ℤ)).toNat

end

end A212652.P7566997881642858086

/-! ## A212652.P14044589167701073142

`A000196(A005408(n)+A118235(n+1)²)`
-/

namespace A212652.P14044589167701073142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A005408 n + A118235 (n + 1) ^ 2).toNat

end

end A212652.P14044589167701073142

/-! ## A212652.P1445529288510779217

`A000196(A005843(n)+A118235(n+1)²)`
-/

namespace A212652.P1445529288510779217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A005843 n + A118235 (n + 1) ^ 2).toNat

end

end A212652.P1445529288510779217

/-! ## A212652.P447746567169298492

`A000196(A005408(n)+A002522(A118235(n+1)))`
-/

namespace A212652.P447746567169298492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A005408 n + A002522 (A118235 (n + 1)).toNat).toNat

end

end A212652.P447746567169298492

/-!
# A212653: Number of steps to reach 1 in the Collatz (3x+1) problem starting with 3^n + 1.

The programs for A212653, there is no canonical definition to state claims against.
-/

/-! ## A212653.P1823147658380989946

`A075487(n)-1`
-/

namespace A212653.P1823147658380989946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075487 n - 1

end

end A212653.P1823147658380989946

/-! ## A212653.P2535299946043102542

`A220890(val(n²+5, 6))+A075487(n)`
-/

namespace A212653.P2535299946043102542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220890 (SequenceMachineLib.valuation (n ^ 2 + 5) 6) + A075487 n

end

end A212653.P2535299946043102542

/-! ## A212653.P17240504895277470176

`A109957(A000108(n*char[1]))+A075487(n)`
-/

namespace A212653.P17240504895277470176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109957 (A000108 (n * (if ∃ j, f1 j = n then 1 else 0))).toNat + A075487 n

end

end A212653.P17240504895277470176

/-! ## A212653.P3722160876231110332

`A179118(2*n)-3*n`
-/

namespace A212653.P3722160876231110332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179118 (2 * n) - (3 * n : ℤ)

end

end A212653.P3722160876231110332

/-! ## A212653.P1164690876700953791

`A082551(p?[A195126(n)])+A075487(n)`
-/

namespace A212653.P1164690876700953791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A075487 n

end

end A212653.P1164690876700953791

/-! ## A212653.P10406456507567516435

`A114592(A225856(n+1))+A075487(n)`
-/

namespace A212653.P10406456507567516435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (A225856 (n + 1)).toNat + A075487 n

end

end A212653.P10406456507567516435

/-! ## A212653.P15102008513742348597

`A023443(A075487(n))`
-/

namespace A212653.P15102008513742348597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A075487 n).toNat

end

end A212653.P15102008513742348597

/-! ## A212653.P17909457041209797656

`A023445(A075487(n)+2)`
-/

namespace A212653.P17909457041209797656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A075487 n + 2).toNat

end

end A212653.P17909457041209797656

/-! ## A212653.P9605594903463335685

`lcm(A024000(A075487(n)), A033999(n))`
-/

namespace A212653.P9605594903463335685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A024000 (A075487 n).toNat) (A033999 n)

end

end A212653.P9605594903463335685

/-! ## A212653.P3015555399023079077

`A024000(A075487(n))*A033999(2*n+1)`
-/

namespace A212653.P3015555399023079077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A075487 n).toNat * A033999 (2 * n + 1)

end

end A212653.P3015555399023079077

/-! ## A212653.P2257041832435259396

`A092152(A054892(n+1))+A075487(n)`
-/

namespace A212653.P2257041832435259396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (A054892 (n + 1)).toNat + A075487 n

end

end A212653.P2257041832435259396

/-! ## A212653.P14872965171022780869

`A087960(A053743(n))+A075487(n)`
-/

namespace A212653.P14872965171022780869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A053743 n).toNat + A075487 n

end

end A212653.P14872965171022780869

/-!
# A212654: LCM of the first few p-smooth numbers for a prime number p if in A007416; otherwise smallest number with same number of divisors (see example for details).

The programs for A212654, there is no canonical definition to state claims against.
-/

/-! ## A212654.P16105154789847090819

`A002182(lt[ceil((n+1)²/12), ∏{p}[n+1, #+1]])`
-/

namespace A212654.P16105154789847090819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) ^ 2 : ℚ) / 12⌉

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A212654.P16105154789847090819

/-! ## A212654.P907212008338674728

`record[A139770(A097922(n))]`
-/

namespace A212654.P907212008338674728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139770 (A097922 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212654.P907212008338674728

/-! ## A212654.P3984608445217956770

`record[A130461(A130573(n))]`
-/

namespace A212654.P3984608445217956770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130461 (A130573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212654.P3984608445217956770

/-! ## A212654.P857012772897590256

`filter[A208767(n+1), A371691(#)]`
-/

namespace A212654.P857012772897590256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371691 (f1 j).toNat = 1) n)

end

end A212654.P857012772897590256

/-!
# A212655: Denominator of Bernoulli(2*n,1/2) / Period of length 2: repeat 12, 60.

The programs for A212655, the canonical program `A212655.P8958679214032791556` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212655 has offset 1).

The definition of A212655 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033469, A040874, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A212655.P13199819175117925271

`4^n*A165949(n+1)`
-/

namespace A212655.P13199819175117925271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A165949 (n + 1)

end

end A212655.P13199819175117925271

namespace A212655

/-- `4^n*A165949(n+1)` -/
def P13199819175117925271.Spec : Prop :=
  ∀ n, P13199819175117925271.a n = A212655 (n + 1)

end A212655

/-! ## A212655.P8958679214032791556

`A033469(n+1)/A040874(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A212655

/-- `A033469(n+1)/A040874(n+1)` -/
def P8958679214032791556.Spec : Prop :=
  ∀ n, P8958679214032791556.a n = (A212655 (n + 1) : ℚ)

end A212655

/-! ## A212655.P14864451224320378104

`lcm(A000302(n), A165949(n+1))`
-/

namespace A212655.P14864451224320378104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000302 n) (A165949 (n + 1))

end

end A212655.P14864451224320378104

namespace A212655

/-- `lcm(A000302(n), A165949(n+1))` -/
def P14864451224320378104.Spec : Prop :=
  ∀ n, (P14864451224320378104.a n : ℤ) = A212655 (n + 1)

end A212655

/-! ## A212655.P1180243792872686587

`lcm(5, A002445(n+1))/30*A000302(n)`
-/

namespace A212655.P1180243792872686587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 5 (A002445 (n + 1)) : ℚ) / 30 * (A000302 n : ℚ)

end

end A212655.P1180243792872686587

namespace A212655

/-- `lcm(5, A002445(n+1))/30*A000302(n)` -/
def P1180243792872686587.Spec : Prop :=
  ∀ n, P1180243792872686587.a n = (A212655 (n + 1) : ℚ)

end A212655

/-! ## A212655.P14202832241265982478

`A002445(n+1)/A040214(n+1)*A000302(n)`
-/

namespace A212655.P14202832241265982478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002445 (n + 1) : ℚ) / (A040214 (n + 1) : ℚ) * (A000302 n : ℚ)

end

end A212655.P14202832241265982478

namespace A212655

/-- `A002445(n+1)/A040214(n+1)*A000302(n)` -/
def P14202832241265982478.Spec : Prop :=
  ∀ n, P14202832241265982478.a n = (A212655 (n + 1) : ℚ)

end A212655

/-! ## A212655.P17000857599475967385

`A140814(n+1)/A165734(n+1)*A000302(n)`
-/

namespace A212655.P17000857599475967385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140814 (n + 1) : ℚ) / (A165734 (n + 1) : ℚ) * (A000302 n : ℚ)

end

end A212655.P17000857599475967385

namespace A212655

/-- `A140814(n+1)/A165734(n+1)*A000302(n)` -/
def P17000857599475967385.Spec : Prop :=
  ∀ n, P17000857599475967385.a n = (A212655 (n + 1) : ℚ)

end A212655

/-!
# A212656: a(n) = 5*n^2 + 1.

The programs for A212656, the canonical program `A212656.P2315777106201839583` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212656 has offset 0).

The definition of A212656 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n²+1` (program `A212656.P2315777106201839583`, by `A212656.P2315777106201839583.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A212656.P2315777106201839583

`5*n²+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A212656

/-- `5*n²+1` -/
def P2315777106201839583.Spec : Prop :=
  ∀ n, (P2315777106201839583.a n : ℤ) = A212656 n

theorem P2315777106201839583.correct : P2315777106201839583.Spec := by
  intro n
  simp only [A212656]

end A212656

/-! ## A212656.P9021429226671982816

`abs(xor(5*n², -1))`
-/

namespace A212656.P9021429226671982816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (5 * n ^ 2 : ℤ) (-1)|

end

end A212656.P9021429226671982816

namespace A212656

/-- `abs(xor(5*n², -1))` -/
def P9021429226671982816.Spec : Prop :=
  ∀ n, P9021429226671982816.a n = A212656 n

end A212656

/-! ## A212656.P5665530569588473936

`-xor(5*n², -1)`
-/

namespace A212656.P5665530569588473936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (5 * n ^ 2 : ℤ) (-1)

end

end A212656.P5665530569588473936

namespace A212656

/-- `-xor(5*n², -1)` -/
def P5665530569588473936.Spec : Prop :=
  ∀ n, P5665530569588473936.a n = A212656 n

end A212656

/-! ## A212656.P15271131586064578857

`∑[a(n-1)+10]` with `a(0)=1, a(1)=5`
-/

namespace A212656.P15271131586064578857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212656.P15271131586064578857

namespace A212656

/-- `∑[a(n-1)+10]` -/
def P15271131586064578857.Spec : Prop :=
  ∀ n, (P15271131586064578857.a n : ℤ) = A212656 n

end A212656

/-! ## A212656.P13407701233617248819

`ceil(xor(1, 10*n²)/2)`
-/

namespace A212656.P13407701233617248819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (10 * n ^ 2) : ℚ) / 2⌉

end

end A212656.P13407701233617248819

namespace A212656

/-- `ceil(xor(1, 10*n²)/2)` -/
def P13407701233617248819.Spec : Prop :=
  ∀ n, P13407701233617248819.a n = A212656 n

end A212656

/-! ## A212656.P14960213724189336199

`∑[ogf((1+3x+6x^2)/(1-2x+x^2))]`
-/

namespace A212656.P14960213724189336199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 6] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212656.P14960213724189336199

namespace A212656

/-- `∑[ogf((1+3x+6x^2)/(1-2x+x^2))]` -/
def P14960213724189336199.Spec : Prop :=
  ∀ n, P14960213724189336199.a n = A212656 n

end A212656

/-! ## A212656.P15354581186027103936

`ogf((1+3x+6x^2)/(1-3x+3x^2-x^3))`
-/

namespace A212656.P15354581186027103936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 6] [1, -3, 3, -1] n

end

end A212656.P15354581186027103936

namespace A212656

/-- `ogf((1+3x+6x^2)/(1-3x+3x^2-x^3))` -/
def P15354581186027103936.Spec : Prop :=
  ∀ n, P15354581186027103936.a n = A212656 n

end A212656

/-! ## A212656.P17385349907126070950

`(ceil(10*(n²-cos(4)))-5)/2`
-/

namespace A212656.P17385349907126070950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈10 * ((n ^ 2 : ℝ) - Real.cos (4 : ℝ))⌉ - 5 : ℚ) / 2

end

end A212656.P17385349907126070950

namespace A212656

/-- `(ceil(10*(n²-cos(4)))-5)/2` -/
def P17385349907126070950.Spec : Prop :=
  ∀ n, P17385349907126070950.a n = (A212656 n : ℚ)

end A212656

/-! ## A212656.P1884234808275889654

`abs(5*(lcm(n, n+1)-n)+1)`
-/

namespace A212656.P1884234808275889654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 * ((Nat.lcm n (n + 1) : ℤ) - (n : ℤ)) + 1|

end

end A212656.P1884234808275889654

namespace A212656

/-- `abs(5*(lcm(n, n+1)-n)+1)` -/
def P1884234808275889654.Spec : Prop :=
  ∀ n, P1884234808275889654.a n = A212656 n

end A212656

/-! ## A212656.P6213905310912761433

`∑[lcm(3, 2*n+n-1)+n-2]`
-/

namespace A212656.P6213905310912761433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 ((2 * n : ℤ) + ((n : ℤ) - 1)) : ℤ) + ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212656.P6213905310912761433

namespace A212656

/-- `∑[lcm(3, 2*n+n-1)+n-2]` -/
def P6213905310912761433.Spec : Prop :=
  ∀ n, P6213905310912761433.a n = A212656 n

end A212656

/-! ## A212656.P15761698551937094039

`ceil(A005901(n)/2)`
-/

namespace A212656.P15761698551937094039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005901 n : ℚ) / 2⌉

end

end A212656.P15761698551937094039

namespace A212656

/-- `ceil(A005901(n)/2)` -/
def P15761698551937094039.Spec : Prop :=
  ∀ n, P15761698551937094039.a n = A212656 n

end A212656

/-! ## A212656.P3358996266656518605

`ceil(A158187(n)/2)`
-/

namespace A212656.P3358996266656518605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158187 n : ℚ) / 2⌉

end

end A212656.P3358996266656518605

namespace A212656

/-- `ceil(A158187(n)/2)` -/
def P3358996266656518605.Spec : Prop :=
  ∀ n, P3358996266656518605.a n = A212656 n

end A212656

/-! ## A212656.P4607331405491507912

`ceil(A010005(n)/3)`
-/

namespace A212656.P4607331405491507912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010005 n : ℚ) / 3⌉

end

end A212656.P4607331405491507912

namespace A212656

/-- `ceil(A010005(n)/3)` -/
def P4607331405491507912.Spec : Prop :=
  ∀ n, P4607331405491507912.a n = A212656 n

end A212656

/-! ## A212656.P710285179632511154

`(A033583(n)+2)/2`
-/

namespace A212656.P710285179632511154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033583 n + 2 : ℚ) / 2

end

end A212656.P710285179632511154

namespace A212656

/-- `(A033583(n)+2)/2` -/
def P710285179632511154.Spec : Prop :=
  ∀ n, P710285179632511154.a n = (A212656 n : ℚ)

end A212656

/-! ## A212656.P14318390925722910015

`(A064761(n)+3)/3`
-/

namespace A212656.P14318390925722910015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064761 n + 3 : ℚ) / 3

end

end A212656.P14318390925722910015

namespace A212656

/-- `(A064761(n)+3)/3` -/
def P14318390925722910015.Spec : Prop :=
  ∀ n, P14318390925722910015.a n = (A212656 n : ℚ)

end A212656

/-! ## A212656.P15601258135773568116

`(A158493(n)+3)/4`
-/

namespace A212656.P15601258135773568116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158493 n + 3 : ℚ) / 4

end

end A212656.P15601258135773568116

namespace A212656

/-- `(A158493(n)+3)/4` -/
def P15601258135773568116.Spec : Prop :=
  ∀ n, P15601258135773568116.a n = (A212656 n : ℚ)

end A212656

/-! ## A212656.P8738312036767132415

`(A061722(n)-5)/2`
-/

namespace A212656.P8738312036767132415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061722 n - 5 : ℚ) / 2

end

end A212656.P8738312036767132415

namespace A212656

/-- `(A061722(n)-5)/2` -/
def P8738312036767132415.Spec : Prop :=
  ∀ n, P8738312036767132415.a n = (A212656 n : ℚ)

end A212656

/-! ## A212656.P10016983956074973193

`(n*A008592(n)+2)/2`
-/

namespace A212656.P10016983956074973193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A008592 n + 2 : ℚ) / 2

end

end A212656.P10016983956074973193

namespace A212656

/-- `(n*A008592(n)+2)/2` -/
def P10016983956074973193.Spec : Prop :=
  ∀ n, P10016983956074973193.a n = (A212656 n : ℚ)

end A212656

/-! ## A212656.P741144098746800167

`ceil((5*2*A000290(n)+1)/2)`
-/

namespace A212656.P741144098746800167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(5 * (2 * A000290 n) + 1 : ℚ) / 2⌉

end

end A212656.P741144098746800167

namespace A212656

/-- `ceil((5*2*A000290(n)+1)/2)` -/
def P741144098746800167.Spec : Prop :=
  ∀ n, P741144098746800167.a n = A212656 n

end A212656

/-!
# A212657: Number of subsets of {1,2,...,n} with the sum of reciprocals <= 1.

The programs for A212657, there is no canonical definition to state claims against.
-/

/-! ## A212657.P5668226075479617458

`A092670(n+1)+A305442(n)-A092669(n+1)`
-/

namespace A212657.P5668226075479617458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092670 (n + 1) + (A305442 n - A092669 (n + 1))

end

end A212657.P5668226075479617458

/-! ## A212657.P15266426381407357429

`A103378(2*n+1)+record[A153462(n+4)]`
-/

namespace A212657.P15266426381407357429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153462 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103378 (2 * n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212657.P15266426381407357429

/-! ## A212657.P4507289611760934519

`A157271(A135491(n)+A003056(n))`
-/

namespace A212657.P4507289611760934519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A135491 n + A003056 n).toNat

end

end A212657.P4507289611760934519

/-! ## A212657.P6083649111964188808

`A003056(A003056(n))+A000073(A120126(n)+2)`
-/

namespace A212657.P6083649111964188808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A003056 n).toNat + A000073 (A120126 n + 2).toNat

end

end A212657.P6083649111964188808

/-! ## A212657.P6163816841471034933

`A082447(A148129(n+1))`
-/

namespace A212657.P6163816841471034933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A148129 (n + 1)).toNat

end

end A212657.P6163816841471034933

/-!
# A212658: Number of multisets {1^k1, 2^k2, ..., n^kn}, ki >= 0, with the sum of reciprocals <= 1.

The programs for A212658, there is no canonical definition to state claims against.
-/

/-! ## A212658.P13306688848575980089

`A066490(3*A002605(n+1)+1)`
-/

namespace A212658.P13306688848575980089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066490 (3 * A002605 (n + 1) + 1).toNat

end

end A212658.P13306688848575980089

/-! ## A212658.P10790502386958315874

`xor(A003055(n+2), A291267(n+2))`
-/

namespace A212658.P10790502386958315874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003055 (n + 2)) (A291267 (n + 2))

end

end A212658.P10790502386958315874

/-! ## A212658.P3485835274837728459

`A185283(A055824(n)+n)`
-/

namespace A212658.P3485835274837728459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A055824 n + (n : ℤ)).toNat

end

end A212658.P3485835274837728459

/-! ## A212658.P9952440086635584156

`A185283(or(n, A055824(n)))`
-/

namespace A212658.P9952440086635584156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (Int.lor (n : ℤ) (A055824 n)).toNat

end

end A212658.P9952440086635584156

/-!
# A212659: Good's example of a "Standard List" of prime words over the alphabet {1,2}.

The programs for A212659, there is no canonical definition to state claims against.
-/

/-! ## A212659.P7375611118172451789

`A136407(∑[∏[A050603(n)]])`
-/

namespace A212659.P7375611118172451789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136407 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212659.P7375611118172451789

/-! ## A212659.P1362063166482333164

`A064770(A267675(n)+A000142(n))`
-/

namespace A212659.P1362063166482333164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 (A267675 n + A000142 n).toNat

end

end A212659.P1362063166482333164

/-! ## A212659.P2479995135781145058

`A064770(A005899(n)*A327868(n))`
-/

namespace A212659.P2479995135781145058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 (A005899 n * A327868 n).toNat

end

end A212659.P2479995135781145058

/-!
# A212660: Partial products of A001037.

The programs for A212660, there is no canonical definition to state claims against.
-/

/-! ## A212660.P17155212135389466743

`a(n-1)*A001037(n-1)` with `a(0)=1`
-/

namespace A212660.P17155212135389466743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A001037 (n - 1)

end

end A212660.P17155212135389466743

/-! ## A212660.P17234158585814409920

`∏[A123223(A161680(n))]`
-/

namespace A212660.P17234158585814409920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123223 (A161680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A212660.P17234158585814409920

/-! ## A212660.P11976610328040838031

`∏[A001037(log2(A011782(n)))]`
-/

namespace A212660.P11976610328040838031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A212660.P11976610328040838031

/-! ## A212660.P8738089697733477125

`∏[A001037(n)]/A001037(n)`
-/

namespace A212660.P8738089697733477125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A001037 n : ℚ)

end

end A212660.P8738089697733477125

/-! ## A212660.P3239145924677054428

`∏[A123223(log2(A006125(n)))]`
-/

namespace A212660.P3239145924677054428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123223 (SequenceMachineLib.roundAway (Real.logb 2 (A006125 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A212660.P3239145924677054428

/-!
# A212661: a(n) = smallest number of edges that must be removed from K_n to obtain a graceful graph.

The programs for A212661, there is no canonical definition to state claims against.
-/

/-! ## A212661.P5010537262088360661

`C(n+3, 2)-A004137(n+3)`
-/

namespace A212661.P5010537262088360661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 2 : ℤ) - A004137 (n + 3)

end

end A212661.P5010537262088360661

/-! ## A212661.P2912168800720908006

`A000217(n+2)-A004137(n+3)`
-/

namespace A212661.P2912168800720908006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) - A004137 (n + 3)

end

end A212661.P2912168800720908006

/-! ## A212661.P10526036143812617661

`A055998(n)+3-A004137(n+3)`
-/

namespace A212661.P10526036143812617661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n + 3 - A004137 (n + 3)

end

end A212661.P10526036143812617661

/-! ## A212661.P8530288508329994223

`record[A038722(n+2)]-A004137(n+3)`
-/

namespace A212661.P8530288508329994223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A004137 (n + 3)

end

end A212661.P8530288508329994223

/-! ## A212661.P2726545797820803490

`A007318(A155212(n)+5)-A004137(n+3)`
-/

namespace A212661.P2726545797820803490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A155212 n + 5).toNat - A004137 (n + 3)

end

end A212661.P2726545797820803490

/-!
# A212662: Numbers k for which k' = x' + y', where x > 0, k = x + y, and k', x', y' are the arithmetic derivatives of k, x, y.

The programs for A212662, there is no canonical definition to state claims against.
-/

/-! ## A212662.P723999286485513600

`lt[0, A212663(n+1)]+1`
-/

namespace A212662.P723999286485513600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212663 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A212662.P723999286485513600

/-! ## A212662.P4631352980046761870

`lt[0, A212663(A028310(n))]`
-/

namespace A212662.P4631352980046761870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212663 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A212662.P4631352980046761870

/-! ## A212662.P8948251814343608533

`lt[0, A212663(A000038(n)+n)]`
-/

namespace A212662.P8948251814343608533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212663 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A212662.P8948251814343608533

/-! ## A212662.P6543171277825198529

`lt[0, A212663(abs(A000038(n)-n))]`
-/

namespace A212662.P6543171277825198529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212663 |A000038 n - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A212662.P6543171277825198529

/-! ## A212662.P15216729543798574628

`lt[A106444(n), (lcm(3, n)/3-n)²+n]`
-/

namespace A212662.P15216729543798574628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106444 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 3 n : ℚ) / 3 - (n : ℚ)) ^ 2 + (n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A212662.P15216729543798574628

/-!
# A212663: Number of ways to represent n' as x' + y', where x+y = n, x > 0, and n', x', y' are the arithmetic derivatives of n, x, y.

The programs for A212663, there is no canonical definition to state claims against.
-/

/-! ## A212663.P3079696757483294735

`val(A337701(2*n+5), A001106(A069932(2*n+3)))`
-/

namespace A212663.P3079696757483294735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A337701 (2 * n + 5)).toNat (A001106 (A069932 (2 * n + 3)).toNat).toNat

end

end A212663.P3079696757483294735

/-! ## A212663.P15915242141327258341

`A280750(and(A099036(n+1), A131304(n+1)))`
-/

namespace A212663.P15915242141327258341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280750 (Int.land (A099036 (n + 1)) (A131304 (n + 1))).toNat

end

end A212663.P15915242141327258341

/-! ## A212663.P6789709563827338014

`A347245(A258974(3*(n+1)))+A347245(3*(n+1))`
-/

namespace A212663.P6789709563827338014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347245 (A258974 (3 * (n + 1))).toNat + A347245 (3 * (n + 1))

end

end A212663.P6789709563827338014

/-! ## A212663.P13720589199741793972

`A353626(A226514(n))`
-/

namespace A212663.P13720589199741793972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353626 (A226514 n).toNat

end

end A212663.P13720589199741793972

/-! ## A212663.P8173238971875460542

`A214090(A000361(floor(n/(xor(n, n+1)+1))+1)²)`
-/

namespace A212663.P8173238971875460542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214090 (A000361 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat ^ 2).toNat

end

end A212663.P8173238971875460542

/-!
# A212665: Numbers such that the greatest prime divisor is less than the sum of the other distinct prime divisors.

The programs for A212665, there is no canonical definition to state claims against.
-/

/-! ## A212665.P61105270520011648

`A000408(n+1)*A249883(A001147(n))`
-/

namespace A212665.P61105270520011648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000408 (n + 1) * A249883 (A001147 n).toNat

end

end A212665.P61105270520011648

/-!
# A212666: Numbers such that the greatest prime divisor is less than the product of the other distinct prime divisors.

The programs for A212666, the canonical program `A212666.P6478584111494388376` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212666 has offset 1).

The definition of A212666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8484 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212666.P6478584111494388376

`lt[A006530(n+1)², A007947(n+1)]+1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A212666

/-- `lt[A006530(n+1)², A007947(n+1)]+1` -/
def P6478584111494388376.Spec : Prop :=
  ∀ n, (P6478584111494388376.a n : ℤ) = A212666 (n + 1)

theorem P6478584111494388376.correct : P6478584111494388376.Spec := by
  intro n
  simp only [A212666, Nat.add_sub_cancel]

end A212666

/-! ## A212666.P11409437453615612482

`lt[A006530(n+1), A293810(n+1)]+1`
-/

namespace A212666.P11409437453615612482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293810 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A212666.P11409437453615612482

namespace A212666

/-- `lt[A006530(n+1), A293810(n+1)]+1` -/
def P11409437453615612482.Spec : Prop :=
  ∀ n, (P11409437453615612482.a n : ℤ) = A212666 (n + 1)

end A212666

/-! ## A212666.P8413910309999405335

`lt[A111089(n+1), A293810(n+1)]+1`
-/

namespace A212666.P8413910309999405335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293810 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A212666.P8413910309999405335

namespace A212666

/-- `lt[A111089(n+1), A293810(n+1)]+1` -/
def P8413910309999405335.Spec : Prop :=
  ∀ n, (P8413910309999405335.a n : ℤ) = A212666 (n + 1)

end A212666

/-! ## A212666.P12796122659955928802

`A065475(lt[A111089(n+1), A293810(n+1)])`
-/

namespace A212666.P12796122659955928802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A212666.P12796122659955928802

namespace A212666

/-- `A065475(lt[A111089(n+1), A293810(n+1)])` -/
def P12796122659955928802.Spec : Prop :=
  ∀ n, P12796122659955928802.a n = A212666 (n + 1)

end A212666

/-! ## A212666.P7578277119474596357

`A291046(n+1)+A000007(A054582(n))`
-/

namespace A212666.P7578277119474596357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291046 (n + 1) + A000007 (A054582 n).toNat

end

end A212666.P7578277119474596357

namespace A212666

/-- `A291046(n+1)+A000007(A054582(n))` -/
def P7578277119474596357.Spec : Prop :=
  ∀ n, P7578277119474596357.a n = A212666 (n + 1)

end A212666

/-! ## A212666.P5445375052630272648

`A291046(n+1)+A000007(A073738(n))`
-/

namespace A212666.P5445375052630272648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291046 (n + 1) + A000007 (A073738 n).toNat

end

end A212666.P5445375052630272648

namespace A212666

/-- `A291046(n+1)+A000007(A073738(n))` -/
def P5445375052630272648.Spec : Prop :=
  ∀ n, P5445375052630272648.a n = A212666 (n + 1)

end A212666

/-! ## A212666.P4300477292230632331

`A291046(n+1)+A000007(A213495(n))`
-/

namespace A212666.P4300477292230632331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291046 (n + 1) + A000007 (A213495 n).toNat

end

end A212666.P4300477292230632331

namespace A212666

/-- `A291046(n+1)+A000007(A213495(n))` -/
def P4300477292230632331.Spec : Prop :=
  ∀ n, P4300477292230632331.a n = A212666 (n + 1)

end A212666

/-! ## A212666.P9273358385630944844

`∩[A114024(n+1), A291046(n+1)]`
-/

namespace A212666.P9273358385630944844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212666.P9273358385630944844

namespace A212666

/-- `∩[A114024(n+1), A291046(n+1)]` -/
def P9273358385630944844.Spec : Prop :=
  ∀ n, (P9273358385630944844.a n : ℤ) = A212666 (n + 1)

end A212666

/-! ## A212666.P11711582863923842615

`∩[A278638(n+1), A291046(n+1)]`
-/

namespace A212666.P11711582863923842615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212666.P11711582863923842615

namespace A212666

/-- `∩[A278638(n+1), A291046(n+1)]` -/
def P11711582863923842615.Spec : Prop :=
  ∀ n, (P11711582863923842615.a n : ℤ) = A212666 (n + 1)

end A212666

/-! ## A212666.P9485759180791246179

`∩[A291046(n+1), A398391(n+1)]`
-/

namespace A212666.P9485759180791246179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212666.P9485759180791246179

namespace A212666

/-- `∩[A291046(n+1), A398391(n+1)]` -/
def P9485759180791246179.Spec : Prop :=
  ∀ n, (P9485759180791246179.a n : ℤ) = A212666 (n + 1)

end A212666

/-!
# A212667: Numbers k such that the sum of digits of k equals the concatenation of the distinct prime divisors of k.

The programs for A212667, there is no canonical definition to state claims against.
-/

/-! ## A212667.P18160958727641894004

`A000027(A252357(n+1))`
-/

namespace A212667.P18160958727641894004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A252357 (n + 1)).toNat

end

end A212667.P18160958727641894004

/-! ## A212667.P9019117297333195111

`A111747(A268530(n+1))`
-/

namespace A212667.P9019117297333195111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111747 (A268530 (n + 1)).toNat

end

end A212667.P9019117297333195111

/-!
# A212668: a(n) = (16/3)*(n+1)*n*(n-1) + 8*n^2 + 1.

The programs for A212668, the canonical program `A212668.P10230400385732310854` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212668 has offset 1).

The definition of A212668 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212668.P10230400385732310854

`16/3*(n+2)*(n+1)*n+8*(n+1)²+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A212668

/-- `16/3*(n+2)*(n+1)*n+8*(n+1)²+1` -/
def P10230400385732310854.Spec : Prop :=
  ∀ n, P10230400385732310854.a n = (A212668 (n + 1) : ℚ)

end A212668

/-! ## A212668.P13259131627037574867

`(2*A212669(n+1))%A212670(n+1)`
-/

namespace A212668.P13259131627037574867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A212669 (n + 1)) (A212670 (n + 1))

end

end A212668.P13259131627037574867

namespace A212668

/-- `(2*A212669(n+1))%A212670(n+1)` -/
def P13259131627037574867.Spec : Prop :=
  ∀ n, P13259131627037574867.a n = A212668 (n + 1)

end A212668

/-! ## A212668.P13545754595744394780

`Δ[(n+1)*A322594(n)]`
-/

namespace A212668.P13545754595744394780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A322594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212668.P13545754595744394780

namespace A212668

/-- `Δ[(n+1)*A322594(n)]` -/
def P13545754595744394780.Spec : Prop :=
  ∀ n, P13545754595744394780.a n = A212668 (n + 1)

end A212668

/-! ## A212668.P11725088926294758679

`(A268484(2*n+1)+A014106(2*n))/2`
-/

namespace A212668.P11725088926294758679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268484 (2 * n + 1) + A014106 (2 * n) : ℚ) / 2

end

end A212668.P11725088926294758679

namespace A212668

/-- `(A268484(2*n+1)+A014106(2*n))/2` -/
def P11725088926294758679.Spec : Prop :=
  ∀ n, P11725088926294758679.a n = (A212668 (n + 1) : ℚ)

end A212668

/-! ## A212668.P4003484703857299367

`(A080859(2*n+1)+A001845(2*n+1))/2`
-/

namespace A212668.P4003484703857299367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080859 (2 * n + 1) + A001845 (2 * n + 1) : ℚ) / 2

end

end A212668.P4003484703857299367

namespace A212668

/-- `(A080859(2*n+1)+A001845(2*n+1))/2` -/
def P4003484703857299367.Spec : Prop :=
  ∀ n, P4003484703857299367.a n = (A212668 (n + 1) : ℚ)

end A212668

/-! ## A212668.P11462231747893315507

`∑[A321019(2*(n+1))-7]`
-/

namespace A212668.P11462231747893315507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321019 (2 * (n + 1)) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212668.P11462231747893315507

namespace A212668

/-- `∑[A321019(2*(n+1))-7]` -/
def P11462231747893315507.Spec : Prop :=
  ∀ n, P11462231747893315507.a n = A212668 (n + 1)

end A212668

/-! ## A212668.P935025361497298374

`∑[A063130((n+1)²)+2]`
-/

namespace A212668.P935025361497298374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063130 ((n + 1) ^ 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212668.P935025361497298374

namespace A212668

/-- `∑[A063130((n+1)²)+2]` -/
def P935025361497298374.Spec : Prop :=
  ∀ n, P935025361497298374.a n = A212668 (n + 1)

end A212668

/-! ## A212668.P8090561170509979347

`A340520(A091823(n+1))`
-/

namespace A212668.P8090561170509979347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340520 (A091823 (n + 1)).toNat

end

end A212668.P8090561170509979347

namespace A212668

/-- `A340520(A091823(n+1))` -/
def P8090561170509979347.Spec : Prop :=
  ∀ n, P8090561170509979347.a n = A212668 (n + 1)

end A212668

/-!
# A212669: a(n) = 2/15 * (32*n^5 + 80*n^4 + 40*n^3 - 20*n^2 + 3*n).

The programs for A212669, the canonical program `A212669.P13872816623606607563` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212669 has offset 1).

The definition of A212669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212669.P13872816623606607563

`2*(n+1)+16*A002299(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A212669

/-- `2*(n+1)+16*A002299(n)` -/
def P13872816623606607563.Spec : Prop :=
  ∀ n, P13872816623606607563.a n = A212669 (n + 1)

theorem P13872816623606607563.correct : P13872816623606607563.Spec := by
  intro n
  simp only [A212669, Nat.add_sub_cancel]

end A212669

/-! ## A212669.P13370960478495771470

`∑[(n+1)*∑[A017114(n)]+2]`
-/

namespace A212669.P13370960478495771470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017114 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212669.P13370960478495771470

namespace A212669

/-- `∑[(n+1)*∑[A017114(n)]+2]` -/
def P13370960478495771470.Spec : Prop :=
  ∀ n, P13370960478495771470.a n = A212669 (n + 1)

end A212669

/-! ## A212669.P1614672827947063706

`16*A002299(n)+A005408(n)+1`
-/

namespace A212669.P1614672827947063706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A002299 n + (A005408 n + 1)

end

end A212669.P1614672827947063706

namespace A212669

/-- `16*A002299(n)+A005408(n)+1` -/
def P1614672827947063706.Spec : Prop :=
  ∀ n, P1614672827947063706.a n = A212669 (n + 1)

end A212669

/-! ## A212669.P15465349073881211155

`(A212670(n+1)+A212668(n+1))/2`
-/

namespace A212669.P15465349073881211155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212670 (n + 1) + A212668 (n + 1) : ℚ) / 2

end

end A212669.P15465349073881211155

namespace A212669

/-- `(A212670(n+1)+A212668(n+1))/2` -/
def P15465349073881211155.Spec : Prop :=
  ∀ n, P15465349073881211155.a n = (A212669 (n + 1) : ℚ)

end A212669

/-! ## A212669.P8125327023969141879

`A072819(2*(n+1))+A069038(2*(n+1))`
-/

namespace A212669.P8125327023969141879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072819 (2 * (n + 1)) + A069038 (2 * (n + 1))

end

end A212669.P8125327023969141879

namespace A212669

/-- `A072819(2*(n+1))+A069038(2*(n+1))` -/
def P8125327023969141879.Spec : Prop :=
  ∀ n, P8125327023969141879.a n = A212669 (n + 1)

end A212669

/-!
# A212670: a(n) = 1/15*(128*n^5 + 320*n^4 + 80*n^3 - 200*n^2 + 92*n - 15).

The programs for A212670, the canonical program `A212670.P10485648342619102015` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212670 has offset 1).

The definition of A212670 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212670.P10485648342619102015

`1/15*(8*(n+1)²-4*(n+1)+1)*(16*(n+1)^3+48*(n+1)²+32*(n+1)-15)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A212670

/-- `1/15*(8*(n+1)²-4*(n+1)+1)*(16*(n+1)^3+48*(n+1)²+32*(n+1)-15)` -/
def P10485648342619102015.Spec : Prop :=
  ∀ n, P10485648342619102015.a n = (A212670 (n + 1) : ℚ)

end A212670

/-! ## A212670.P14722103620791162701

`2*A212669(n+1)-A212668(n+1)`
-/

namespace A212670.P14722103620791162701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212669 (n + 1) - A212668 (n + 1)

end

end A212670.P14722103620791162701

namespace A212670

/-- `2*A212669(n+1)-A212668(n+1)` -/
def P14722103620791162701.Spec : Prop :=
  ∀ n, P14722103620791162701.a n = A212670 (n + 1)

end A212670

/-! ## A212670.P15789061441271523043

`2*A212705(n+1)-A212706(n+1)`
-/

namespace A212670.P15789061441271523043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212705 (n + 1) - A212706 (n + 1)

end

end A212670.P15789061441271523043

namespace A212670

/-- `2*A212705(n+1)-A212706(n+1)` -/
def P15789061441271523043.Spec : Prop :=
  ∀ n, P15789061441271523043.a n = A212670 (n + 1)

end A212670

/-! ## A212670.P14055221693946372585

`A212669(n+1)+A212669(n+1)-Δ[(n+1)*A322594(n)]`
-/

namespace A212670.P14055221693946372585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A322594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212669 (n + 1) + (A212669 (n + 1) - (f1 (n + 1) - f1 n))

end

end A212670.P14055221693946372585

namespace A212670

/-- `A212669(n+1)+A212669(n+1)-Δ[(n+1)*A322594(n)]` -/
def P14055221693946372585.Spec : Prop :=
  ∀ n, P14055221693946372585.a n = A212670 (n + 1)

end A212670

/-! ## A212670.P3719355711128542944

`A212669(n+1)+A212669(n+1)-(A268484(2*n+1)+A014106(2*n))/2`
-/

namespace A212670.P3719355711128542944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212669 (n + 1) : ℚ) + ((A212669 (n + 1) : ℚ) - (A268484 (2 * n + 1) + A014106 (2 * n) : ℚ) / 2)

end

end A212670.P3719355711128542944

namespace A212670

/-- `A212669(n+1)+A212669(n+1)-(A268484(2*n+1)+A014106(2*n))/2` -/
def P3719355711128542944.Spec : Prop :=
  ∀ n, P3719355711128542944.a n = (A212670 (n + 1) : ℚ)

end A212670

/-!
# A212671: A001037(n)!.

The programs for A212671, the canonical program `A212671.P4871280416965862351` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212671 has offset 0).

The definition of A212671 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001037, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A212671.P4871280416965862351

`A001037(n)!`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A212671

/-- `A001037(n)!` -/
def P4871280416965862351.Spec : Prop :=
  ∀ n, (P4871280416965862351.a n : ℤ) = A212671 n

theorem P4871280416965862351.correct : P4871280416965862351.Spec := by
  intro n
  simp only [A212671]

end A212671

/-! ## A212671.P3061824856104458287

`A277633(n)!`
-/

namespace A212671.P3061824856104458287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A277633 n).toNat

end

end A212671.P3061824856104458287

namespace A212671

/-- `A277633(n)!` -/
def P3061824856104458287.Spec : Prop :=
  ∀ n, (P3061824856104458287.a n : ℤ) = A212671 n

end A212671

/-! ## A212671.P13931799836738195234

`A123223(∑[n])!`
-/

namespace A212671.P13931799836738195234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A123223 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A212671.P13931799836738195234

namespace A212671

/-- `A123223(∑[n])!` -/
def P13931799836738195234.Spec : Prop :=
  ∀ n, (P13931799836738195234.a n : ℤ) = A212671 n

end A212671

/-! ## A212671.P9045556043650808858

`ratio[A212660(n)]!`
-/

namespace A212671.P9045556043650808858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212660 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A212671.P9045556043650808858

namespace A212671

/-- `ratio[A212660(n)]!` -/
def P9045556043650808858.Spec : Prop :=
  ∀ n, (P9045556043650808858.a n : ℤ) = A212671 n

end A212671

/-! ## A212671.P13295566401513924566

`A059966(C(2, n²)+n)!`
-/

namespace A212671.P13295566401513924566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A059966 (Nat.choose 2 (n ^ 2) + n)).toNat

end

end A212671.P13295566401513924566

namespace A212671

/-- `A059966(C(2, n²)+n)!` -/
def P13295566401513924566.Spec : Prop :=
  ∀ n, (P13295566401513924566.a n : ℤ) = A212671 n

end A212671

/-!
# A212672: Partial products of A212671.

The programs for A212672, there is no canonical definition to state claims against.
-/

/-! ## A212672.P14341534058867176088

`a(n-1)*A212671(n-1)` with `a(0)=1`
-/

namespace A212672.P14341534058867176088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A212671 (n - 1)

end

end A212672.P14341534058867176088

/-! ## A212672.P5128870608045558734

`∏[A212671(A235049(n))]`
-/

namespace A212672.P5128870608045558734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212671 (A235049 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A212672.P5128870608045558734

/-! ## A212672.P10896242341458277526

`∏[A123223(A161680(n))!]`
-/

namespace A212672.P10896242341458277526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A123223 (A161680 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A212672.P10896242341458277526

/-! ## A212672.P11634117141167413185

`∏[A212671(n)]/A212671(n)`
-/

namespace A212672.P11634117141167413185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212671 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A212671 n : ℚ)

end

end A212672.P11634117141167413185

/-! ## A212672.P10892241245595402024

`∏[A277633(n)!]/A277633(n)!`
-/

namespace A212672.P10892241245595402024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A277633 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.factorial (A277633 n).toNat : ℚ)

end

end A212672.P10892241245595402024

/-!
# A212673: Number of (w,x,y,z) with all terms in {1,...,n} and w<=|x-y|+|y-z|.

The programs for A212673, the canonical program `A212673.P2177340831605710094` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212673 has offset 0).

The definition of A212673 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212673.P2177340831605710094

`4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=8, a(3)=46, a(4)=152, a(5)=378`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A212673

/-- `4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` -/
def P2177340831605710094.Spec : Prop :=
  ∀ n, P2177340831605710094.a n = A212673 n

theorem P2177340831605710094.correct : P2177340831605710094.Spec := by
  intro n
  simp only [A212673]

end A212673

/-! ## A212673.P12903314635826596170

`n^4-A212674(n)`
-/

namespace A212673.P12903314635826596170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212674 n

end

end A212673.P12903314635826596170

namespace A212673

/-- `n^4-A212674(n)` -/
def P12903314635826596170.Spec : Prop :=
  ∀ n, P12903314635826596170.a n = A212673 n

end A212673

/-! ## A212673.P1454745293957867565

`A212692(n)+A212568(n)`
-/

namespace A212673.P1454745293957867565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212692 n + A212568 n

end

end A212673.P1454745293957867565

namespace A212673

/-- `A212692(n)+A212568(n)` -/
def P1454745293957867565.Spec : Prop :=
  ∀ n, P1454745293957867565.a n = A212673 n

end A212673

/-! ## A212673.P5871054129162399589

`abs(A000583(n)-A212674(n))`
-/

namespace A212673.P5871054129162399589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212674 n|

end

end A212673.P5871054129162399589

namespace A212673

/-- `abs(A000583(n)-A212674(n))` -/
def P5871054129162399589.Spec : Prop :=
  ∀ n, P5871054129162399589.a n = A212673 n

end A212673

/-! ## A212673.P16884365857047803451

`A037270(n)+A212714(n)-n²`
-/

namespace A212673.P16884365857047803451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037270 n + (A212714 n - (n ^ 2 : ℤ))

end

end A212673.P16884365857047803451

namespace A212673

/-- `A037270(n)+A212714(n)-n²` -/
def P16884365857047803451.Spec : Prop :=
  ∀ n, P16884365857047803451.a n = A212673 n

end A212673

/-! ## A212673.P2328973368054746436

`∑[A002620(n)+(n-1)*A000566(n)]`
-/

namespace A212673.P2328973368054746436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + ((n : ℤ) - 1) * A000566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212673.P2328973368054746436

namespace A212673

/-- `∑[A002620(n)+(n-1)*A000566(n)]` -/
def P2328973368054746436.Spec : Prop :=
  ∀ n, P2328973368054746436.a n = A212673 n

end A212673

/-! ## A212673.P12835341706460797884

`A212689(n)+A212690(n)-A212674(n)`
-/

namespace A212673.P12835341706460797884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212689 n + (A212690 n - A212674 n)

end

end A212673.P12835341706460797884

namespace A212673

/-- `A212689(n)+A212690(n)-A212674(n)` -/
def P12835341706460797884.Spec : Prop :=
  ∀ n, P12835341706460797884.a n = A212673 n

end A212673

/-! ## A212673.P15164346557588811390

`A212714(n)+A002378(n)*A161680(n)`
-/

namespace A212673.P15164346557588811390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212714 n + A002378 n * A161680 n

end

end A212673.P15164346557588811390

namespace A212673

/-- `A212714(n)+A002378(n)*A161680(n)` -/
def P15164346557588811390.Spec : Prop :=
  ∀ n, P15164346557588811390.a n = A212673 n

end A212673

/-! ## A212673.P8755243202550063611

`∑[A212133(n)-n]+A050534(n)+A045947(n)`
-/

namespace A212673.P8755243202550063611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212133 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A050534 n + A045947 n)

end

end A212673.P8755243202550063611

namespace A212673

/-- `∑[A212133(n)-n]+A050534(n)+A045947(n)` -/
def P8755243202550063611.Spec : Prop :=
  ∀ n, P8755243202550063611.a n = A212673 n

end A212673

/-! ## A212673.P14418745245203732784

`∑[A309690(record[2*lcm(2, n)-n])]`
-/

namespace A212673.P14418745245203732784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lcm 2 n : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309690 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212673.P14418745245203732784

namespace A212673

/-- `∑[A309690(record[2*lcm(2, n)-n])]` -/
def P14418745245203732784.Spec : Prop :=
  ∀ n, P14418745245203732784.a n = A212673 n

end A212673

/-! ## A212673.P2078778686257542623

`∑[A309690(record[3*A006257(n)])]`
-/

namespace A212673.P2078778686257542623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006257 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309690 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212673.P2078778686257542623

namespace A212673

/-- `∑[A309690(record[3*A006257(n)])]` -/
def P2078778686257542623.Spec : Prop :=
  ∀ n, P2078778686257542623.a n = A212673 n

end A212673

/-! ## A212673.P10044953276941388357

`A212714(n)+A161680(n²)`
-/

namespace A212673.P10044953276941388357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212714 n + A161680 (n ^ 2)

end

end A212673.P10044953276941388357

namespace A212673

/-- `A212714(n)+A161680(n²)` -/
def P10044953276941388357.Spec : Prop :=
  ∀ n, P10044953276941388357.a n = A212673 n

end A212673

/-! ## A212673.P16878377847485194164

`floor(A190816(n²)/8)`
-/

namespace A212673.P16878377847485194164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A190816 (n ^ 2) : ℚ) / 8⌋

end

end A212673.P16878377847485194164

namespace A212673

/-- `floor(A190816(n²)/8)` -/
def P16878377847485194164.Spec : Prop :=
  ∀ n, P16878377847485194164.a n = A212673 n

end A212673

/-! ## A212673.P197746534376584968

`A265431(n²)-n²`
-/

namespace A212673.P197746534376584968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265431 (n ^ 2) - (n ^ 2 : ℤ)

end

end A212673.P197746534376584968

namespace A212673

/-- `A265431(n²)-n²` -/
def P197746534376584968.Spec : Prop :=
  ∀ n, P197746534376584968.a n = A212673 n

end A212673

/-! ## A212673.P9025842342057683080

`n²²-A282513(n²)`
-/

namespace A212673.P9025842342057683080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A282513 (n ^ 2)

end

end A212673.P9025842342057683080

namespace A212673

/-- `n²²-A282513(n²)` -/
def P9025842342057683080.Spec : Prop :=
  ∀ n, P9025842342057683080.a n = A212673 n

end A212673

/-! ## A212673.P5531242858036386483

`n²²-A001859(n²)/2`
-/

namespace A212673.P5531242858036386483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℚ) - (A001859 (n ^ 2) : ℚ) / 2

end

end A212673.P5531242858036386483

namespace A212673

/-- `n²²-A001859(n²)/2` -/
def P5531242858036386483.Spec : Prop :=
  ∀ n, P5531242858036386483.a n = (A212673 n : ℚ)

end A212673

/-!
# A212674: Number of (w,x,y,z) with all terms in {1,...,n} and w > |x-y| + |y-z|.

The programs for A212674, the canonical program `A212674.P4419897294948211988` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212674 has offset 0).

The definition of A212674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212674.P4419897294948211988

`4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=8, a(3)=35, a(4)=104, a(5)=247`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A212674

/-- `4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` -/
def P4419897294948211988.Spec : Prop :=
  ∀ n, P4419897294948211988.a n = A212674 n

theorem P4419897294948211988.correct : P4419897294948211988.Spec := by
  intro n
  simp only [A212674]

end A212674

/-! ## A212674.P15207929349169311701

`(ceil(3*(n²/2)²)+n²)/2`
-/

namespace A212674.P15207929349169311701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈3 * ((n ^ 2 : ℚ) / 2) ^ 2⌉ + (n ^ 2 : ℤ) : ℚ) / 2

end

end A212674.P15207929349169311701

namespace A212674

/-- `(ceil(3*(n²/2)²)+n²)/2` -/
def P15207929349169311701.Spec : Prop :=
  ∀ n, P15207929349169311701.a n = (A212674 n : ℚ)

end A212674

/-! ## A212674.P11315239574669171132

`n^4-A212673(n)`
-/

namespace A212674.P11315239574669171132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212673 n

end

end A212674.P11315239574669171132

namespace A212674

/-- `n^4-A212673(n)` -/
def P11315239574669171132.Spec : Prop :=
  ∀ n, P11315239574669171132.a n = A212674 n

end A212674

/-! ## A212674.P3815487513325174365

`A037270(n)-A212714(n)`
-/

namespace A212674.P3815487513325174365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037270 n - A212714 n

end

end A212674.P3815487513325174365

namespace A212674

/-- `A037270(n)-A212714(n)` -/
def P3815487513325174365.Spec : Prop :=
  ∀ n, P3815487513325174365.a n = A212674 n

end A212674

/-! ## A212674.P8444417079891130712

`A212675(n)-A212692(n)`
-/

namespace A212674.P8444417079891130712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212675 n - A212692 n

end

end A212674.P8444417079891130712

namespace A212674

/-- `A212675(n)-A212692(n)` -/
def P8444417079891130712.Spec : Prop :=
  ∀ n, P8444417079891130712.a n = A212674 n

end A212674

/-! ## A212674.P17258934909174002912

`∑[∑[A009946(n)]-A009946(n)]`
-/

namespace A212674.P17258934909174002912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009946 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A009946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212674.P17258934909174002912

namespace A212674

/-- `∑[∑[A009946(n)]-A009946(n)]` -/
def P17258934909174002912.Spec : Prop :=
  ∀ n, P17258934909174002912.a n = A212674 n

end A212674

/-! ## A212674.P16629875005107141414

`ceil(n²/2)*A016777(A002620(n))`
-/

namespace A212674.P16629875005107141414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 2⌉ * A016777 (A002620 n).toNat

end

end A212674.P16629875005107141414

namespace A212674

/-- `ceil(n²/2)*A016777(A002620(n))` -/
def P16629875005107141414.Spec : Prop :=
  ∀ n, P16629875005107141414.a n = A212674 n

end A212674

/-! ## A212674.P9184146711099638620

`A000982(n)*A266285(A099392(n+1))`
-/

namespace A212674.P9184146711099638620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n * A266285 (A099392 (n + 1)).toNat

end

end A212674.P9184146711099638620

namespace A212674

/-- `A000982(n)*A266285(A099392(n+1))` -/
def P9184146711099638620.Spec : Prop :=
  ∀ n, P9184146711099638620.a n = A212674 n

end A212674

/-! ## A212674.P7845142014697135710

`C(n²+1, 2)-A001971(n²)`
-/

namespace A212674.P7845142014697135710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2 + 1) 2 : ℤ) - A001971 (n ^ 2)

end

end A212674.P7845142014697135710

namespace A212674

/-- `C(n²+1, 2)-A001971(n²)` -/
def P7845142014697135710.Spec : Prop :=
  ∀ n, P7845142014697135710.a n = A212674 n

end A212674

/-! ## A212674.P1067545152807700751

`A033436(n²)+A000982(n)`
-/

namespace A212674.P1067545152807700751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033436 (n ^ 2) + A000982 n

end

end A212674.P1067545152807700751

namespace A212674

/-- `A033436(n²)+A000982(n)` -/
def P1067545152807700751.Spec : Prop :=
  ∀ n, P1067545152807700751.a n = A212674 n

end A212674

/-! ## A212674.P10379100604820384098

`A037270(n)-A001971(n²)`
-/

namespace A212674.P10379100604820384098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037270 n - A001971 (n ^ 2)

end

end A212674.P10379100604820384098

namespace A212674

/-- `A037270(n)-A001971(n²)` -/
def P10379100604820384098.Spec : Prop :=
  ∀ n, P10379100604820384098.a n = A212674 n

end A212674

/-! ## A212674.P15013637095306899888

`A000217(n²)-A001971(n²)`
-/

namespace A212674.P15013637095306899888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n ^ 2) - A001971 (n ^ 2)

end

end A212674.P15013637095306899888

namespace A212674

/-- `A000217(n²)-A001971(n²)` -/
def P15013637095306899888.Spec : Prop :=
  ∀ n, P15013637095306899888.a n = A212674 n

end A212674

/-! ## A212674.P631817057461751370

`n*A006003(n)-A001971(n²)`
-/

namespace A212674.P631817057461751370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A006003 n - A001971 (n ^ 2)

end

end A212674.P631817057461751370

namespace A212674

/-- `n*A006003(n)-A001971(n²)` -/
def P631817057461751370.Spec : Prop :=
  ∀ n, P631817057461751370.a n = A212674 n

end A212674

/-! ## A212674.P18254807965141658570

`n²*A005893(n)/4-A001971(n²)`
-/

namespace A212674.P18254807965141658570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A005893 n : ℚ) / 4 - (A001971 (n ^ 2) : ℚ)

end

end A212674.P18254807965141658570

namespace A212674

/-- `n²*A005893(n)/4-A001971(n²)` -/
def P18254807965141658570.Spec : Prop :=
  ∀ n, P18254807965141658570.a n = (A212674 n : ℚ)

end A212674

/-! ## A212674.P15809748827324028170

`n*(A006002(n)-n²)-A001971(n²)`
-/

namespace A212674.P15809748827324028170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A006002 n - (n ^ 2 : ℤ)) - A001971 (n ^ 2)

end

end A212674.P15809748827324028170

namespace A212674

/-- `n*(A006002(n)-n²)-A001971(n²)` -/
def P15809748827324028170.Spec : Prop :=
  ∀ n, P15809748827324028170.a n = A212674 n

end A212674

/-! ## A212674.P15392221694735168351

`(n-1)*A064808(n)+1-A001971(n²)`
-/

namespace A212674.P15392221694735168351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A064808 n + 1 - A001971 (n ^ 2)

end

end A212674.P15392221694735168351

namespace A212674

/-- `(n-1)*A064808(n)+1-A001971(n²)` -/
def P15392221694735168351.Spec : Prop :=
  ∀ n, P15392221694735168351.a n = A212674 n

end A212674

/-! ## A212674.P12269687071136047510

`(A028310(n²)+1)/2*n²-A001971(n²)`
-/

namespace A212674.P12269687071136047510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (n ^ 2) + 1 : ℚ) / 2 * (n ^ 2 : ℚ) - (A001971 (n ^ 2) : ℚ)

end

end A212674.P12269687071136047510

namespace A212674

/-- `(A028310(n²)+1)/2*n²-A001971(n²)` -/
def P12269687071136047510.Spec : Prop :=
  ∀ n, P12269687071136047510.a n = (A212674 n : ℚ)

end A212674

/-! ## A212674.P2173308323225138655

`A282513(n²)`
-/

namespace A212674.P2173308323225138655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282513 (n ^ 2)

end

end A212674.P2173308323225138655

namespace A212674

/-- `A282513(n²)` -/
def P2173308323225138655.Spec : Prop :=
  ∀ n, P2173308323225138655.a n = A212674 n

end A212674

/-! ## A212674.P5453071354467252065

`round(A001859(n²)/2)`
-/

namespace A212674.P5453071354467252065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001859 (n ^ 2) : ℚ) / 2)

end

end A212674.P5453071354467252065

namespace A212674

/-- `round(A001859(n²)/2)` -/
def P5453071354467252065.Spec : Prop :=
  ∀ n, P5453071354467252065.a n = A212674 n

end A212674

/-! ## A212674.P8604676766977506158

`A001971(2*n)*A037915(n²)`
-/

namespace A212674.P8604676766977506158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (2 * n) * A037915 (n ^ 2)

end

end A212674.P8604676766977506158

namespace A212674

/-- `A001971(2*n)*A037915(n²)` -/
def P8604676766977506158.Spec : Prop :=
  ∀ n, P8604676766977506158.a n = A212674 n

end A212674

/-!
# A212675: Number of (w,x,y,z) with all terms in {1,...,n} and w >= |x-y| + |y-z|.

The programs for A212675, the canonical program `A212675.P10913673658005018760` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212675 has offset 0).

The definition of A212675 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212675.P10913673658005018760

`4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=14, a(3)=57, a(4)=158, a(5)=353`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A212675

/-- `4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` -/
def P10913673658005018760.Spec : Prop :=
  ∀ n, P10913673658005018760.a n = A212675 n

theorem P10913673658005018760.correct : P10913673658005018760.Spec := by
  intro n
  simp only [A212675]

end A212675

/-! ## A212675.P8344435987301387360

`n^4-A212568(n)`
-/

namespace A212675.P8344435987301387360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212568 n

end

end A212675.P8344435987301387360

namespace A212675

/-- `n^4-A212568(n)` -/
def P8344435987301387360.Spec : Prop :=
  ∀ n, P8344435987301387360.a n = A212675 n

end A212675

/-! ## A212675.P4557581386433549925

`A212692(n)+A212674(n)`
-/

namespace A212675.P4557581386433549925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212692 n + A212674 n

end

end A212675.P4557581386433549925

namespace A212675

/-- `A212692(n)+A212674(n)` -/
def P4557581386433549925.Spec : Prop :=
  ∀ n, P4557581386433549925.a n = A212675 n

end A212675

/-! ## A212675.P8555768725414199538

`abs(A000583(n)-A212568(n))`
-/

namespace A212675.P8555768725414199538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212568 n|

end

end A212675.P8555768725414199538

namespace A212675

/-- `abs(A000583(n)-A212568(n))` -/
def P8555768725414199538.Spec : Prop :=
  ∀ n, P8555768725414199538.a n = A212675 n

end A212675

/-! ## A212675.P15186412855791892455

`A212563(n)+A212564(n)-A212568(n)`
-/

namespace A212675.P15186412855791892455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212563 n + (A212564 n - A212568 n)

end

end A212675.P15186412855791892455

namespace A212675

/-- `A212563(n)+A212564(n)-A212568(n)` -/
def P15186412855791892455.Spec : Prop :=
  ∀ n, P15186412855791892455.a n = A212675 n

end A212675

/-! ## A212675.P4317272826820447011

`A212571(n)+A212574(n)-A212568(n)`
-/

namespace A212675.P4317272826820447011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212571 n + (A212574 n - A212568 n)

end

end A212675.P4317272826820447011

namespace A212675

/-- `A212571(n)+A212574(n)-A212568(n)` -/
def P4317272826820447011.Spec : Prop :=
  ∀ n, P4317272826820447011.a n = A212675 n

end A212675

/-! ## A212675.P7575011034740425159

`A000038(n+1)+A000583(n)-A212568(n)`
-/

namespace A212675.P7575011034740425159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + (A000583 n - A212568 n)

end

end A212675.P7575011034740425159

namespace A212675

/-- `A000038(n+1)+A000583(n)-A212568(n)` -/
def P7575011034740425159.Spec : Prop :=
  ∀ n, P7575011034740425159.a n = A212675 n

end A212675

/-! ## A212675.P6474113420715680731

`(A000583(n)-A212568(n))%(7*A002522(n))²`
-/

namespace A212675.P6474113420715680731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 n - A212568 n) ((7 * A002522 n) ^ 2)

end

end A212675.P6474113420715680731

namespace A212675

/-- `(A000583(n)-A212568(n))%(7*A002522(n))²` -/
def P6474113420715680731.Spec : Prop :=
  ∀ n, P6474113420715680731.a n = A212675 n

end A212675

/-! ## A212675.P7035890446748311477

`A000583(n)-(A212568(n)+A000038(A314970(n)))`
-/

namespace A212675.P7035890446748311477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - (A212568 n + A000038 (A314970 n).toNat)

end

end A212675.P7035890446748311477

namespace A212675

/-- `A000583(n)-(A212568(n)+A000038(A314970(n)))` -/
def P7035890446748311477.Spec : Prop :=
  ∀ n, P7035890446748311477.a n = A212675 n

end A212675

/-! ## A212675.P804384045936675862

`A245842(∑[n+1])+A000583(n)-A212568(n)`
-/

namespace A212675.P804384045936675862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245842 (∑ j ∈ Finset.range (n + 1), f1 j) + (A000583 n - A212568 n)

end

end A212675.P804384045936675862

namespace A212675

/-- `A245842(∑[n+1])+A000583(n)-A212568(n)` -/
def P804384045936675862.Spec : Prop :=
  ∀ n, P804384045936675862.a n = A212675 n

end A212675

/-!
# A212676: Number of (w,x,y,z) with all terms in {1,...,n} and w+x=|x-y|+|y-z|.

The programs for A212676, the canonical program `A212676.P10516445017516578818` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212676 has offset 0).

The definition of A212676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212676.P10516445017516578818

`A342397(n)+n*∑[A065033(n)-2]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A212676

/-- `A342397(n)+n*∑[A065033(n)-2]` -/
def P10516445017516578818.Spec : Prop :=
  ∀ n, P10516445017516578818.a n = A212676 n

theorem P10516445017516578818.correct : P10516445017516578818.Spec := by
  intro n
  simp only [A212676]

end A212676

/-! ## A212676.P3658750149123518137

`A272459(A028310(n))+A080838(n+1)`
-/

namespace A212676.P3658750149123518137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272459 (A028310 n).toNat + A080838 (n + 1)

end

end A212676.P3658750149123518137

namespace A212676

/-- `A272459(A028310(n))+A080838(n+1)` -/
def P3658750149123518137.Spec : Prop :=
  ∀ n, P3658750149123518137.a n = A212676 n

end A212676

/-! ## A212676.P12075698317094977382

`∑[A338544(n)+A329451(A004273(n))]`
-/

namespace A212676.P12075698317094977382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338544 n + A329451 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212676.P12075698317094977382

namespace A212676

/-- `∑[A338544(n)+A329451(A004273(n))]` -/
def P12075698317094977382.Spec : Prop :=
  ∀ n, P12075698317094977382.a n = A212676 n

end A212676

/-! ## A212676.P15688810632234555066

`A005900(n)-∑[eq[1, A109439(n+1)]]`
-/

namespace A212676.P15688810632234555066
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109439 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212676.P15688810632234555066

namespace A212676

/-- `A005900(n)-∑[eq[1, A109439(n+1)]]` -/
def P15688810632234555066.Spec : Prop :=
  ∀ n, P15688810632234555066.a n = A212676 n

end A212676

/-!
# A212677: Number of (w,x,y,z) with all terms in {1,...,n} and w+y=|x-y|+|y-z|.

The programs for A212677, the canonical program `A212677.P3721750323941663788` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212677 has offset 0).

The definition of A212677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212677.P3721750323941663788

`∑[A242771(record[A029579(n)])]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A212677

/-- `∑[A242771(record[A029579(n)])]` -/
def P3721750323941663788.Spec : Prop :=
  ∀ n, P3721750323941663788.a n = A212677 n

theorem P3721750323941663788.correct : P3721750323941663788.Spec := by
  intro n
  simp only [A212677]

end A212677

/-! ## A212677.P16284073791939227837

`∑[A242771(record[A141310(n)])]`
-/

namespace A212677.P16284073791939227837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242771 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212677.P16284073791939227837

namespace A212677

/-- `∑[A242771(record[A141310(n)])]` -/
def P16284073791939227837.Spec : Prop :=
  ∀ n, P16284073791939227837.a n = A212677 n

end A212677

/-! ## A212677.P787531838538380400

`A007290(n)+∑[A056827(A004273(n))]`
-/

namespace A212677.P787531838538380400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056827 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007290 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212677.P787531838538380400

namespace A212677

/-- `A007290(n)+∑[A056827(A004273(n))]` -/
def P787531838538380400.Spec : Prop :=
  ∀ n, P787531838538380400.a n = A212677 n

end A212677

/-! ## A212677.P1195969557764973412

`C(2*n, 3)/2-∑[A211540(2*n+1)]`
-/

namespace A212677.P1195969557764973412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) 3 : ℚ) / 2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A212677.P1195969557764973412

namespace A212677

/-- `C(2*n, 3)/2-∑[A211540(2*n+1)]` -/
def P1195969557764973412.Spec : Prop :=
  ∀ n, P1195969557764973412.a n = (A212677 n : ℚ)

end A212677

/-! ## A212677.P12623321934014685569

`∑[A242771(2*n+1)]-A242771(2*n+1)`
-/

namespace A212677.P12623321934014685569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242771 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A242771 (2 * n + 1)

end

end A212677.P12623321934014685569

namespace A212677

/-- `∑[A242771(2*n+1)]-A242771(2*n+1)` -/
def P12623321934014685569.Spec : Prop :=
  ∀ n, P12623321934014685569.a n = A212677 n

end A212677

/-! ## A212677.P12213159576820756938

`A034262(n)-A026810(A016825(n))`
-/

namespace A212677.P12213159576820756938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034262 n - A026810 (A016825 n).toNat

end

end A212677.P12213159576820756938

namespace A212677

/-- `A034262(n)-A026810(A016825(n))` -/
def P12213159576820756938.Spec : Prop :=
  ∀ n, P12213159576820756938.a n = A212677 n

end A212677

/-! ## A212677.P17101613003495918884

`A007290(n)+∑[A004523(A103505(n))]`
-/

namespace A212677.P17101613003495918884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A103505 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007290 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212677.P17101613003495918884

namespace A212677

/-- `A007290(n)+∑[A004523(A103505(n))]` -/
def P17101613003495918884.Spec : Prop :=
  ∀ n, P17101613003495918884.a n = A212677 n

end A212677

/-! ## A212677.P4022035860237091721

`∑[A004396(A005475(n))]-2*n²`
-/

namespace A212677.P4022035860237091721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A005475 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 * n ^ 2 : ℤ)

end

end A212677.P4022035860237091721

namespace A212677

/-- `∑[A004396(A005475(n))]-2*n²` -/
def P4022035860237091721.Spec : Prop :=
  ∀ n, P4022035860237091721.a n = A212677 n

end A212677

/-! ## A212677.P8273607610172248453

`∑[A004396(A005475(n))-A130824(n)]`
-/

namespace A212677.P8273607610172248453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A005475 n).toNat - A130824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212677.P8273607610172248453

namespace A212677

/-- `∑[A004396(A005475(n))-A130824(n)]` -/
def P8273607610172248453.Spec : Prop :=
  ∀ n, P8273607610172248453.a n = A212677 n

end A212677

/-!
# A212679: Number of (w,x,y,z) with all terms in {1,...,n} and |x-y|=|y-z|.

The programs for A212679, the canonical program `A212679.P284850091772590425` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212679 has offset 0).

The definition of A212679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212679.P284850091772590425

`n*ceil(3/2*n²-n)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A212679

/-- `n*ceil(3/2*n²-n)` -/
def P284850091772590425.Spec : Prop :=
  ∀ n, P284850091772590425.a n = A212679 n

theorem P284850091772590425.correct : P284850091772590425.Spec := by
  intro n
  simp only [A212679]

end A212679

/-! ## A212679.P3235233827826705569

`abs(n*∑[a(n-2)+6])` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A212679.P3235233827826705569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  f1 (n - 2) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212679.P3235233827826705569

namespace A212679

/-- `abs(n*∑[a(n-2)+6])` -/
def P3235233827826705569.Spec : Prop :=
  ∀ n, (P3235233827826705569.a n : ℤ) = A212679 n

end A212679

/-! ## A212679.P13637913611569840640

`floor(n*∑[a(n-2)+6])` with `a(0)=0, a(1)=1, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A212679.P13637913611569840640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  f1 (n - 2) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212679.P13637913611569840640

namespace A212679

/-- `floor(n*∑[a(n-2)+6])` -/
def P13637913611569840640.Spec : Prop :=
  ∀ n, (P13637913611569840640.a n : ℤ) = A212679 n

end A212679

/-! ## A212679.P10594804729580592719

`ceil(n*∑[a(n-2)+6])` with `a(0)=0, a(1)=1, a(2)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A212679.P10594804729580592719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  f1 (n - 2) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212679.P10594804729580592719

namespace A212679

/-- `ceil(n*∑[a(n-2)+6])` -/
def P10594804729580592719.Spec : Prop :=
  ∀ n, (P10594804729580592719.a n : ℤ) = A212679 n

end A212679

/-! ## A212679.P2503746378254728083

`round(n*∑[a(n-2)+6])` with `a(0)=0, a(1)=1, a(2)=3`

`round` is left out, it is the identity on integers.
-/

namespace A212679.P2503746378254728083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  f1 (n - 2) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212679.P2503746378254728083

namespace A212679

/-- `round(n*∑[a(n-2)+6])` -/
def P2503746378254728083.Spec : Prop :=
  ∀ n, (P2503746378254728083.a n : ℤ) = A212679 n

end A212679

/-! ## A212679.P13818016227650323208

`n*A238410(n+1)-n²`
-/

namespace A212679.P13818016227650323208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A238410 (n + 1) - (n ^ 2 : ℤ)

end

end A212679.P13818016227650323208

namespace A212679

/-- `n*A238410(n+1)-n²` -/
def P13818016227650323208.Spec : Prop :=
  ∀ n, P13818016227650323208.a n = A212679 n

end A212679

/-! ## A212679.P594961302541471313

`2*n*A077043(n)-n²`
-/

namespace A212679.P594961302541471313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A077043 n) - (n ^ 2 : ℤ)

end

end A212679.P594961302541471313

namespace A212679

/-- `2*n*A077043(n)-n²` -/
def P594961302541471313.Spec : Prop :=
  ∀ n, P594961302541471313.a n = A212679 n

end A212679

/-! ## A212679.P6667255781468924447

`2*n*A084684(n)+1-(n+1)²`
-/

namespace A212679.P6667255781468924447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A084684 n) + 1 - ((n + 1) ^ 2 : ℤ)

end

end A212679.P6667255781468924447

namespace A212679

/-- `2*n*A084684(n)+1-(n+1)²` -/
def P6667255781468924447.Spec : Prop :=
  ∀ n, P6667255781468924447.a n = A212679 n

end A212679

/-! ## A212679.P3758590379461624408

`A059722(n)-A323724(n)`
-/

namespace A212679.P3758590379461624408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059722 n - A323724 n

end

end A212679.P3758590379461624408

namespace A212679

/-- `A059722(n)-A323724(n)` -/
def P3758590379461624408.Spec : Prop :=
  ∀ n, P3758590379461624408.a n = A212679 n

end A212679

/-! ## A212679.P16586996057265172397

`A212682(n)-A212681(n)`
-/

namespace A212679.P16586996057265172397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212682 n - A212681 n

end

end A212679.P16586996057265172397

namespace A212679

/-- `A212682(n)-A212681(n)` -/
def P16586996057265172397.Spec : Prop :=
  ∀ n, P16586996057265172397.a n = A212679 n

end A212679

/-! ## A212679.P4477818468726977862

`2*A212682(n)-A000583(n)`
-/

namespace A212679.P4477818468726977862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212682 n - A000583 n

end

end A212679.P4477818468726977862

namespace A212679

/-- `2*A212682(n)-A000583(n)` -/
def P4477818468726977862.Spec : Prop :=
  ∀ n, P4477818468726977862.a n = A212679 n

end A212679

/-! ## A212679.P14362677036639617303

`A000583(n)-2*A212681(n)`
-/

namespace A212679.P14362677036639617303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - 2 * A212681 n

end

end A212679.P14362677036639617303

namespace A212679

/-- `A000583(n)-2*A212681(n)` -/
def P14362677036639617303.Spec : Prop :=
  ∀ n, P14362677036639617303.a n = A212679 n

end A212679

/-! ## A212679.P12185941983470719414

`A004188(n)+A026741(n)-n²`
-/

namespace A212679.P12185941983470719414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004188 n + (A026741 n - (n ^ 2 : ℤ))

end

end A212679.P12185941983470719414

namespace A212679

/-- `A004188(n)+A026741(n)-n²` -/
def P12185941983470719414.Spec : Prop :=
  ∀ n, P12185941983470719414.a n = A212679 n

end A212679

/-! ## A212679.P3038586444908109551

`A212503(n)-(n-A077043(n))²`
-/

namespace A212679.P3038586444908109551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212503 n - ((n : ℤ) - A077043 n) ^ 2

end

end A212679.P3038586444908109551

namespace A212679

/-- `A212503(n)-(n-A077043(n))²` -/
def P3038586444908109551.Spec : Prop :=
  ∀ n, P3038586444908109551.a n = A212679 n

end A212679

/-! ## A212679.P4269295388336171080

`A323724(A005843(n))/2-A323724(n)`
-/

namespace A212679.P4269295388336171080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323724 (A005843 n).toNat : ℚ) / 2 - (A323724 n : ℚ)

end

end A212679.P4269295388336171080

namespace A212679

/-- `A323724(A005843(n))/2-A323724(n)` -/
def P4269295388336171080.Spec : Prop :=
  ∀ n, P4269295388336171080.a n = (A212679 n : ℚ)

end A212679

/-!
# A212680: Number of (w,x,y,z) with all terms in {1,...,n} and |x-y|=|y-z|+1.

The programs for A212680, the canonical program `A212680.P1534418409331953024` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212680 has offset 0).

The definition of A212680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212680.P1534418409331953024

`n*ceil(3*(1-n)²/2)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A212680

/-- `n*ceil(3*(1-n)²/2)` -/
def P1534418409331953024.Spec : Prop :=
  ∀ n, P1534418409331953024.a n = A212680 n

theorem P1534418409331953024.correct : P1534418409331953024.Spec := by
  intro n
  simp only [A212680]

end A212680

/-! ## A212680.P18091189358162621824

`n*∑[a(n-2)+6]-n²` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5`
-/

namespace A212680.P18091189358162621824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 5] fun n f1 =>
  f1 (n - 2) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (n ^ 2 : ℤ)

end

end A212680.P18091189358162621824

namespace A212680

/-- `n*∑[a(n-2)+6]-n²` -/
def P18091189358162621824.Spec : Prop :=
  ∀ n, P18091189358162621824.a n = A212680 n

end A212680

/-! ## A212680.P17979403856080721770

`A007531(n)+n*A007590(n)`
-/

namespace A212680.P17979403856080721770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 n + (n : ℤ) * A007590 n

end

end A212680.P17979403856080721770

namespace A212680

/-- `A007531(n)+n*A007590(n)` -/
def P17979403856080721770.Spec : Prop :=
  ∀ n, P17979403856080721770.a n = A212680 n

end A212680

/-! ## A212680.P9401938292002790285

`A007531(n)+2*n*A002620(n)`
-/

namespace A212680.P9401938292002790285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 n + 2 * ((n : ℤ) * A002620 n)

end

end A212680.P9401938292002790285

namespace A212680

/-- `A007531(n)+2*n*A002620(n)` -/
def P9401938292002790285.Spec : Prop :=
  ∀ n, P9401938292002790285.a n = A212680 n

end A212680

/-! ## A212680.P16649542058635552203

`n*A238410(n+2)-6*n²`
-/

namespace A212680.P16649542058635552203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A238410 (n + 2) - (6 * n ^ 2 : ℤ)

end

end A212680.P16649542058635552203

namespace A212680

/-- `n*A238410(n+2)-6*n²` -/
def P16649542058635552203.Spec : Prop :=
  ∀ n, P16649542058635552203.a n = A212680 n

end A212680

/-!
# A212681: Number of (w,x,y,z) with all terms in {1,...,n} and |x-y|<|y-z|.

The programs for A212681, the canonical program `A212681.P2694671929904226289` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212681 has offset 0).

The definition of A212681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212681.P2694671929904226289

`n*Δ[floor((1-n)^4/8)]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A212681

/-- `n*Δ[floor((1-n)^4/8)]` -/
def P2694671929904226289.Spec : Prop :=
  ∀ n, P2694671929904226289.a n = A212681 n

theorem P2694671929904226289.correct : P2694671929904226289.Spec := by
  intro n
  simp only [A212681]

end A212681

/-! ## A212681.P12273055922745831851

`lcm(2, 2*n*Δ[floor(((n-1)/2)²²)])`
-/

namespace A212681.P12273055922745831851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((((n : ℤ) - 1 : ℚ) / 2) ^ 2) ^ 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((2 * n : ℤ) * (f1 (n + 1) - f1 n))

end

end A212681.P12273055922745831851

namespace A212681

/-- `lcm(2, 2*n*Δ[floor(((n-1)/2)²²)])` -/
def P12273055922745831851.Spec : Prop :=
  ∀ n, (P12273055922745831851.a n : ℤ) = A212681 n

end A212681

/-! ## A212681.P6906715221703519139

`n²²-A212682(n)`
-/

namespace A212681.P6906715221703519139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A212682 n

end

end A212681.P6906715221703519139

namespace A212681

/-- `n²²-A212682(n)` -/
def P6906715221703519139.Spec : Prop :=
  ∀ n, P6906715221703519139.a n = A212681 n

end A212681

/-! ## A212681.P1857895353884820101

`A212682(n)-A212679(n)`
-/

namespace A212681.P1857895353884820101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212682 n - A212679 n

end

end A212681.P1857895353884820101

namespace A212681

/-- `A212682(n)-A212679(n)` -/
def P1857895353884820101.Spec : Prop :=
  ∀ n, P1857895353884820101.a n = A212681 n

end A212681

/-! ## A212681.P13819783900866114403

`n*A212684(n)-A212679(n)`
-/

namespace A212681.P13819783900866114403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A212684 n - A212679 n

end

end A212681.P13819783900866114403

namespace A212681

/-- `n*A212684(n)-A212679(n)` -/
def P13819783900866114403.Spec : Prop :=
  ∀ n, P13819783900866114403.a n = A212681 n

end A212681

/-! ## A212681.P5318840165445153413

`(n*A212683(n))%A019561(n)`
-/

namespace A212681.P5318840165445153413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A212683 n) (A019561 n)

end

end A212681.P5318840165445153413

namespace A212681

/-- `(n*A212683(n))%A019561(n)` -/
def P5318840165445153413.Spec : Prop :=
  ∀ n, P5318840165445153413.a n = A212681 n

end A212681

/-!
# A212682: Number of (w,x,y,z) with all terms in {1,...,n} and |x-y|>=|y-z|.

The programs for A212682, the canonical program `A212682.P5650088900639429692` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212682 has offset 0).

The definition of A212682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212682.P5650088900639429692

`n*(Δ[round(n^4/8)]-n)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A212682

/-- `n*(Δ[round(n^4/8)]-n)` -/
def P5650088900639429692.Spec : Prop :=
  ∀ n, P5650088900639429692.a n = A212682 n

theorem P5650088900639429692.correct : P5650088900639429692.Spec := by
  intro n
  simp only [A212682]

end A212682

/-! ## A212682.P1548485607109301554

`n²²-A212681(n)`
-/

namespace A212682.P1548485607109301554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A212681 n

end

end A212682.P1548485607109301554

namespace A212682

/-- `n²²-A212681(n)` -/
def P1548485607109301554.Spec : Prop :=
  ∀ n, P1548485607109301554.a n = A212682 n

end A212682

/-! ## A212682.P1923466338873621384

`lcm(n, n*A212684(n))`
-/

namespace A212682.P1923466338873621384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) * A212684 n)

end

end A212682.P1923466338873621384

namespace A212682

/-- `lcm(n, n*A212684(n))` -/
def P1923466338873621384.Spec : Prop :=
  ∀ n, (P1923466338873621384.a n : ℤ) = A212682 n

end A212682

/-! ## A212682.P14609302459588136523

`A212681(n)+A212679(n)`
-/

namespace A212682.P14609302459588136523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212681 n + A212679 n

end

end A212682.P14609302459588136523

namespace A212682

/-- `A212681(n)+A212679(n)` -/
def P14609302459588136523.Spec : Prop :=
  ∀ n, P14609302459588136523.a n = A212682 n

end A212682

/-! ## A212682.P3434817587982637218

`abs(A000583(n)-A212681(n))`
-/

namespace A212682.P3434817587982637218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212681 n|

end

end A212682.P3434817587982637218

namespace A212682

/-- `abs(A000583(n)-A212681(n))` -/
def P3434817587982637218.Spec : Prop :=
  ∀ n, P3434817587982637218.a n = A212682 n

end A212682

/-! ## A212682.P10628843382869608985

`abs(A001489(n)*A212684(n))`
-/

namespace A212682.P10628843382869608985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 n * A212684 n|

end

end A212682.P10628843382869608985

namespace A212682

/-- `abs(A001489(n)*A212684(n))` -/
def P10628843382869608985.Spec : Prop :=
  ∀ n, P10628843382869608985.a n = A212682 n

end A212682

/-! ## A212682.P1034400271601121681

`A212578(n)+A036464(n+1)`
-/

namespace A212682.P1034400271601121681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212578 n + A036464 (n + 1)

end

end A212682.P1034400271601121681

namespace A212682

/-- `A212578(n)+A036464(n+1)` -/
def P1034400271601121681.Spec : Prop :=
  ∀ n, P1034400271601121681.a n = A212682 n

end A212682

/-! ## A212682.P14011746227745516369

`A211787(n)+A211797(n)-A212681(n)`
-/

namespace A212682.P14011746227745516369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 n + (A211797 n - A212681 n)

end

end A212682.P14011746227745516369

namespace A212682

/-- `A211787(n)+A211797(n)-A212681(n)` -/
def P14011746227745516369.Spec : Prop :=
  ∀ n, P14011746227745516369.a n = A212682 n

end A212682

/-!
# A212683: Number of (w,x,y,z) with all terms in {1,...,n} and |x-y| = w + |y-z|.

The programs for A212683, the canonical program `A212683.P15436969242200464973` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212683 has offset 0).

The definition of A212683 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212683.P15436969242200464973

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=8, a(4)=22`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A212683

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P15436969242200464973.Spec : Prop :=
  ∀ n, P15436969242200464973.a n = A212683 n

theorem P15436969242200464973.correct : P15436969242200464973.Spec := by
  intro n
  simp only [A212683]

end A212683

/-! ## A212683.P7031587075722554072

`Δ[floor((1-n)^4/8)]`
-/

namespace A212683.P7031587075722554072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((1 - (n : ℤ)) ^ 4 : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212683.P7031587075722554072

namespace A212683

/-- `Δ[floor((1-n)^4/8)]` -/
def P7031587075722554072.Spec : Prop :=
  ∀ n, P7031587075722554072.a n = A212683 n

end A212683

/-! ## A212683.P12917613366439719755

`∑[∑[a(n-2)+6]]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=4`
-/

namespace A212683.P12917613366439719755
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 4] fun n f2 =>
  f2 (n - 2) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212683.P12917613366439719755

namespace A212683

/-- `∑[∑[a(n-2)+6]]` -/
def P12917613366439719755.Spec : Prop :=
  ∀ n, (P12917613366439719755.a n : ℤ) = A212683 n

end A212683

/-! ## A212683.P17844796485111470659

`∑[∑[∑[floor(a(n-2))]]]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=2, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A212683.P17844796485111470659
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 2, 4] fun n f3 =>
  f3 (n - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212683.P17844796485111470659

namespace A212683

/-- `∑[∑[∑[floor(a(n-2))]]]` -/
def P17844796485111470659.Spec : Prop :=
  ∀ n, (P17844796485111470659.a n : ℤ) = A212683 n

end A212683

/-! ## A212683.P15979452003575440157

`(n-1)^3+n-1-a(n-1)` with `a(0)=0`
-/

namespace A212683.P15979452003575440157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n : ℤ) - 1) ^ 3 + ((n : ℤ) - 1 - a (n - 1))

end

end A212683.P15979452003575440157

namespace A212683

/-- `(n-1)^3+n-1-a(n-1)` -/
def P15979452003575440157.Spec : Prop :=
  ∀ n, P15979452003575440157.a n = A212683 n

end A212683

/-! ## A212683.P1839221532346610632

`(n-1)^3-(a(n-1)-(n-1))` with `a(0)=0`
-/

namespace A212683.P1839221532346610632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n : ℤ) - 1) ^ 3 - (a (n - 1) - ((n : ℤ) - 1))

end

end A212683.P1839221532346610632

namespace A212683

/-- `(n-1)^3-(a(n-1)-(n-1))` -/
def P1839221532346610632.Spec : Prop :=
  ∀ n, P1839221532346610632.a n = A212683 n

end A212683

/-! ## A212683.P15176937450172323302

`((1-n)²+1)*(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A212683.P15176937450172323302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((1 - (n : ℤ)) ^ 2 + 1) * ((n : ℤ) - 1) - a (n - 1)

end

end A212683.P15176937450172323302

namespace A212683

/-- `((1-n)²+1)*(n-1)-a(n-1)` -/
def P15176937450172323302.Spec : Prop :=
  ∀ n, P15176937450172323302.a n = A212683 n

end A212683

/-! ## A212683.P17677657684479409362

`floor(A212133(n)/4)`
-/

namespace A212683.P17677657684479409362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A212133 n : ℚ) / 4⌋

end

end A212683.P17677657684479409362

namespace A212683

/-- `floor(A212133(n)/4)` -/
def P17677657684479409362.Spec : Prop :=
  ∀ n, P17677657684479409362.a n = A212683 n

end A212683

/-! ## A212683.P15485559908218071552

`n^3-A212684(n)`
-/

namespace A212683.P15485559908218071552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - A212684 n

end

end A212683.P15485559908218071552

namespace A212683

/-- `n^3-A212684(n)` -/
def P15485559908218071552.Spec : Prop :=
  ∀ n, P15485559908218071552.a n = A212683 n

end A212683

/-! ## A212683.P6743596848196477749

`2*(A002717(n)-n²)`
-/

namespace A212683.P6743596848196477749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002717 n - (n ^ 2 : ℤ))

end

end A212683.P6743596848196477749

namespace A212683

/-- `2*(A002717(n)-n²)` -/
def P6743596848196477749.Spec : Prop :=
  ∀ n, P6743596848196477749.a n = A212683 n

end A212683

/-! ## A212683.P5900602344617981054

`floor((A007531(n)+n^3)/4)`
-/

namespace A212683.P5900602344617981054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007531 n + (n ^ 3 : ℤ) : ℚ) / 4⌋

end

end A212683.P5900602344617981054

namespace A212683

/-- `floor((A007531(n)+n^3)/4)` -/
def P5900602344617981054.Spec : Prop :=
  ∀ n, P5900602344617981054.a n = A212683 n

end A212683

/-! ## A212683.P7316668050072677788

`A011934(n)-A000326(n)`
-/

namespace A212683.P7316668050072677788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011934 n - A000326 n

end

end A212683.P7316668050072677788

namespace A212683

/-- `A011934(n)-A000326(n)` -/
def P7316668050072677788.Spec : Prop :=
  ∀ n, P7316668050072677788.a n = A212683 n

end A212683

/-! ## A212683.P8756760229554689588

`A006003(n)-A077043(n)`
-/

namespace A212683.P8756760229554689588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n - A077043 n

end

end A212683.P8756760229554689588

namespace A212683

/-- `A006003(n)-A077043(n)` -/
def P8756760229554689588.Spec : Prop :=
  ∀ n, P8756760229554689588.a n = A212683 n

end A212683

/-! ## A212683.P13215568591426014181

`A212969(n)-A006584(n)`
-/

namespace A212683.P13215568591426014181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212969 n - A006584 n

end

end A212683.P13215568591426014181

namespace A212683

/-- `A212969(n)-A006584(n)` -/
def P13215568591426014181.Spec : Prop :=
  ∀ n, P13215568591426014181.a n = A212683 n

end A212683

/-! ## A212683.P16011313024494364977

`A229183(n)-A001859(n)`
-/

namespace A212683.P16011313024494364977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229183 n - A001859 n

end

end A212683.P16011313024494364977

namespace A212683

/-- `A229183(n)-A001859(n)` -/
def P16011313024494364977.Spec : Prop :=
  ∀ n, P16011313024494364977.a n = A212683 n

end A212683

/-! ## A212683.P16512548920823185380

`A212681(n)/A028310(n)`
-/

namespace A212683.P16512548920823185380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212681 n : ℚ) / (A028310 n : ℚ)

end

end A212683.P16512548920823185380

namespace A212683

/-- `A212681(n)/A028310(n)` -/
def P16512548920823185380.Spec : Prop :=
  ∀ n, P16512548920823185380.a n = (A212683 n : ℚ)

end A212683

/-! ## A212683.P15201871775395606197

`∑[A238410(A000007(n)+n)]`
-/

namespace A212683.P15201871775395606197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238410 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212683.P15201871775395606197

namespace A212683

/-- `∑[A238410(A000007(n)+n)]` -/
def P15201871775395606197.Spec : Prop :=
  ∀ n, P15201871775395606197.a n = A212683 n

end A212683

/-! ## A212683.P4145914001500698915

`A055232(n)-A134238(n+1)`
-/

namespace A212683.P4145914001500698915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055232 n - A134238 (n + 1)

end

end A212683.P4145914001500698915

namespace A212683

/-- `A055232(n)-A134238(n+1)` -/
def P4145914001500698915.Spec : Prop :=
  ∀ n, P4145914001500698915.a n = A212683 n

end A212683

/-! ## A212683.P8629314929513702347

`A182260(n+1)-A397977(n)`
-/

namespace A212683.P8629314929513702347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182260 (n + 1) - A397977 n

end

end A212683.P8629314929513702347

namespace A212683

/-- `A182260(n+1)-A397977(n)` -/
def P8629314929513702347.Spec : Prop :=
  ∀ n, P8629314929513702347.a n = A212683 n

end A212683

/-! ## A212683.P6803036620028980887

`2*A019298(A004273(n)-n)`
-/

namespace A212683.P6803036620028980887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019298 (A004273 n - (n : ℤ)).toNat

end

end A212683.P6803036620028980887

namespace A212683

/-- `2*A019298(A004273(n)-n)` -/
def P6803036620028980887.Spec : Prop :=
  ∀ n, P6803036620028980887.a n = A212683 n

end A212683

/-!
# A212684: Number of (w,x,y,z) with all terms in {1,...,n} and |x-y|=n-w+|y-z|.

The programs for A212684, the canonical program `A212684.P2370947564610215663` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212684 has offset 0).

The definition of A212684 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212684.P17335867876090883700

`(2*n*(n+2)*(2*n-1)-(-1)^n+1)/8`
-/

namespace A212684.P17335867876090883700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * ((n : ℤ) * ((n + 2 : ℤ) * ((2 * n : ℤ) - 1))) - (-1) ^ n + 1 : ℚ) / 8

end

end A212684.P17335867876090883700

namespace A212684

/-- `(2*n*(n+2)*(2*n-1)-(-1)^n+1)/8` -/
def P17335867876090883700.Spec : Prop :=
  ∀ n, P17335867876090883700.a n = (A212684 n : ℚ)

theorem P17335867876090883700.correct : P17335867876090883700.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A212684, Nat.add_sub_cancel, A212684.P17335867876090883700.a, A212684.P2370947564610215663.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A212684, Nat.add_sub_cancel, A212684.P17335867876090883700.a, A212684.P2370947564610215663.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A212684

/-! ## A212684.P2370947564610215663

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=19, a(4)=42`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A212684

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P2370947564610215663.Spec : Prop :=
  ∀ n, P2370947564610215663.a n = A212684 n

theorem P2370947564610215663.correct : P2370947564610215663.Spec := by
  intro n
  simp only [A212684]

end A212684

/-! ## A212684.P6842429112047363112

`∑[∑[a(n-2)+6]]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=8`
-/

namespace A212684.P6842429112047363112
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 8] fun n f2 =>
  f2 (n - 2) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212684.P6842429112047363112

namespace A212684

/-- `∑[∑[a(n-2)+6]]` -/
def P6842429112047363112.Spec : Prop :=
  ∀ n, (P6842429112047363112.a n : ℤ) = A212684 n

end A212684

/-! ## A212684.P1867517669494531934

`ceil((n+2)*C(2*n, 2)/4)`
-/

namespace A212684.P1867517669494531934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℚ) * ((Nat.choose (2 * n) 2 : ℚ) / 4)⌉

end

end A212684.P1867517669494531934

namespace A212684

/-- `ceil((n+2)*C(2*n, 2)/4)` -/
def P1867517669494531934.Spec : Prop :=
  ∀ n, P1867517669494531934.a n = A212684 n

end A212684

/-! ## A212684.P17619247443371717049

`round((n+2)*C(2*n, 2)/4)`
-/

namespace A212684.P17619247443371717049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℚ) * ((Nat.choose (2 * n) 2 : ℚ) / 4))

end

end A212684.P17619247443371717049

namespace A212684

/-- `round((n+2)*C(2*n, 2)/4)` -/
def P17619247443371717049.Spec : Prop :=
  ∀ n, P17619247443371717049.a n = A212684 n

end A212684

/-! ## A212684.P12386476708391996986

`n^3+1-(a(n-1)+n)` with `a(0)=0`
-/

namespace A212684.P12386476708391996986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n ^ 3 : ℤ) + (1 - (a (n - 1) + (n : ℤ)))

end

end A212684.P12386476708391996986

namespace A212684

/-- `n^3+1-(a(n-1)+n)` -/
def P12386476708391996986.Spec : Prop :=
  ∀ n, P12386476708391996986.a n = A212684 n

end A212684

/-! ## A212684.P389652396129317763

`a(n-2)+3*(n²-n)` with `a(0)=0, a(1)=1`
-/

namespace A212684.P389652396129317763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + 3 * ((n ^ 2 : ℤ) - (n : ℤ))

end

end A212684.P389652396129317763

namespace A212684

/-- `a(n-2)+3*(n²-n)` -/
def P389652396129317763.Spec : Prop :=
  ∀ n, P389652396129317763.a n = A212684 n

end A212684

/-! ## A212684.P6363969804464459547

`1-(a(n-1)-(n^3-n))` with `a(0)=0`
-/

namespace A212684.P6363969804464459547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a (n - 1) - ((n ^ 3 : ℤ) - (n : ℤ)))

end

end A212684.P6363969804464459547

namespace A212684

/-- `1-(a(n-1)-(n^3-n))` -/
def P6363969804464459547.Spec : Prop :=
  ∀ n, P6363969804464459547.a n = A212684 n

end A212684

/-! ## A212684.P11861965937039576017

`n*n²-a(n-1)-(n-1)` with `a(0)=0`
-/

namespace A212684.P11861965937039576017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n * n ^ 2 : ℤ) - a (n - 1) - ((n : ℤ) - 1)

end

end A212684.P11861965937039576017

namespace A212684

/-- `n*n²-a(n-1)-(n-1)` -/
def P11861965937039576017.Spec : Prop :=
  ∀ n, P11861965937039576017.a n = A212684 n

end A212684

/-! ## A212684.P11586042547153629469

`n*(n*n-1)+1-a(n-1)` with `a(0)=0`
-/

namespace A212684.P11586042547153629469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * ((n * n : ℤ) - 1) + (1 - a (n - 1))

end

end A212684.P11586042547153629469

namespace A212684

/-- `n*(n*n-1)+1-a(n-1)` -/
def P11586042547153629469.Spec : Prop :=
  ∀ n, P11586042547153629469.a n = A212684 n

end A212684

/-! ## A212684.P6842486845370878697

`2*A019298(n)-n`
-/

namespace A212684.P6842486845370878697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019298 n - (n : ℤ)

end

end A212684.P6842486845370878697

namespace A212684

/-- `2*A019298(n)-n` -/
def P6842486845370878697.Spec : Prop :=
  ∀ n, P6842486845370878697.a n = A212684 n

end A212684

/-! ## A212684.P2784797760358225316

`A212960(n)/2-n`
-/

namespace A212684.P2784797760358225316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212960 n : ℚ) / 2 - (n : ℚ)

end

end A212684.P2784797760358225316

namespace A212684

/-- `A212960(n)/2-n` -/
def P2784797760358225316.Spec : Prop :=
  ∀ n, P2784797760358225316.a n = (A212684 n : ℚ)

end A212684

/-! ## A212684.P6072614869071772843

`n^3-A212683(n)`
-/

namespace A212684.P6072614869071772843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - A212683 n

end

end A212684.P6072614869071772843

namespace A212684

/-- `n^3-A212683(n)` -/
def P6072614869071772843.Spec : Prop :=
  ∀ n, P6072614869071772843.a n = A212684 n

end A212684

/-! ## A212684.P4354068326457091220

`∑[A238410(n+1)]-n`
-/

namespace A212684.P4354068326457091220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A212684.P4354068326457091220

namespace A212684

/-- `∑[A238410(n+1)]-n` -/
def P4354068326457091220.Spec : Prop :=
  ∀ n, P4354068326457091220.a n = A212684 n

end A212684

/-! ## A212684.P5284510729487860829

`∑[A000982(n)+n²]-n`
-/

namespace A212684.P5284510729487860829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A212684.P5284510729487860829

namespace A212684

/-- `∑[A000982(n)+n²]-n` -/
def P5284510729487860829.Spec : Prop :=
  ∀ n, P5284510729487860829.a n = A212684 n

end A212684

/-! ## A212684.P5471471742876837054

`∑[A227017(n+1)-(n+1)]`
-/

namespace A212684.P5471471742876837054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227017 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212684.P5471471742876837054

namespace A212684

/-- `∑[A227017(n+1)-(n+1)]` -/
def P5471471742876837054.Spec : Prop :=
  ∀ n, P5471471742876837054.a n = A212684 n

end A212684

/-! ## A212684.P3844956619275430966

`A182260(n+1)-(∑[n]+n)`
-/

namespace A212684.P3844956619275430966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182260 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ)

end

end A212684.P3844956619275430966

namespace A212684

/-- `A182260(n+1)-(∑[n]+n)` -/
def P3844956619275430966.Spec : Prop :=
  ∀ n, P3844956619275430966.a n = A212684 n

end A212684

/-! ## A212684.P11741809176545125133

`abs(floor((n/2)²+n)-A006002(n))`
-/

namespace A212684.P11741809176545125133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊((n : ℚ) / 2) ^ 2 + (n : ℚ)⌋ - A006002 n|

end

end A212684.P11741809176545125133

namespace A212684

/-- `abs(floor((n/2)²+n)-A006002(n))` -/
def P11741809176545125133.Spec : Prop :=
  ∀ n, P11741809176545125133.a n = A212684 n

end A212684

/-! ## A212684.P14331419323585750123

`A131941(n)+A051925(n)`
-/

namespace A212684.P14331419323585750123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131941 n + A051925 n

end

end A212684.P14331419323585750123

namespace A212684

/-- `A131941(n)+A051925(n)` -/
def P14331419323585750123.Spec : Prop :=
  ∀ n, P14331419323585750123.a n = A212684 n

end A212684

/-! ## A212684.P2494213290859702121

`A135503(n)+A077043(n)`
-/

namespace A212684.P2494213290859702121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + A077043 n

end

end A212684.P2494213290859702121

namespace A212684

/-- `A135503(n)+A077043(n)` -/
def P2494213290859702121.Spec : Prop :=
  ∀ n, P2494213290859702121.a n = A212684 n

end A212684

/-!
# A212685: Number of (w,x,y,z) with all terms in {1,...,n} and |w-x|=w+|y-z|.

The programs for A212685, the canonical program `A212685.P10066585936033022700` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212685 has offset 0).

The definition of A212685 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212685.P10066585936033022700

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=7, a(4)=18`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A212685

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P10066585936033022700.Spec : Prop :=
  ∀ n, P10066585936033022700.a n = A212685 n

theorem P10066585936033022700.correct : P10066585936033022700.Spec := by
  intro n
  simp only [A212685]

end A212685

/-! ## A212685.P18046949879597116306

`∑[∑[comp[or(2, n)]]]-n²`
-/

namespace A212685.P18046949879597116306
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n ^ 2 : ℤ)

end

end A212685.P18046949879597116306

namespace A212685

/-- `∑[∑[comp[or(2, n)]]]-n²` -/
def P18046949879597116306.Spec : Prop :=
  ∀ n, P18046949879597116306.a n = A212685 n

end A212685

/-! ## A212685.P4521170555210674162

`∑[n²-comp[3*(n+1)]]`
-/

namespace A212685.P4521170555210674162
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212685.P4521170555210674162

namespace A212685

/-- `∑[n²-comp[3*(n+1)]]` -/
def P4521170555210674162.Spec : Prop :=
  ∀ n, P4521170555210674162.a n = A212685 n

end A212685

/-! ## A212685.P9403153997516735501

`∑[∑[or(1, n)+n-1]]-n²`
-/

namespace A212685.P9403153997516735501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n + n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A212685.P9403153997516735501

namespace A212685

/-- `∑[∑[or(1, n)+n-1]]-n²` -/
def P9403153997516735501.Spec : Prop :=
  ∀ n, P9403153997516735501.a n = A212685 n

end A212685

/-! ## A212685.P15954054856921582006

`floor(A168547(n)/8)`
-/

namespace A212685.P15954054856921582006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A168547 n : ℚ) / 8⌋

end

end A212685.P15954054856921582006

namespace A212685

/-- `floor(A168547(n)/8)` -/
def P15954054856921582006.Spec : Prop :=
  ∀ n, P15954054856921582006.a n = A212685 n

end A212685

/-! ## A212685.P13965521294121588539

`∑[A035608(n)]-n²`
-/

namespace A212685.P13965521294121588539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A212685.P13965521294121588539

namespace A212685

/-- `∑[A035608(n)]-n²` -/
def P13965521294121588539.Spec : Prop :=
  ∀ n, P13965521294121588539.a n = A212685 n

end A212685

/-! ## A212685.P6426866973670593507

`∑[n²]-A077043(n)`
-/

namespace A212685.P6426866973670593507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A077043 n

end

end A212685.P6426866973670593507

namespace A212685

/-- `∑[n²]-A077043(n)` -/
def P6426866973670593507.Spec : Prop :=
  ∀ n, P6426866973670593507.a n = A212685 n

end A212685

/-! ## A212685.P1685118316471984791

`∑[A267682(n)-n]-1`
-/

namespace A212685.P1685118316471984791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267682 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A212685.P1685118316471984791

namespace A212685

/-- `∑[A267682(n)-n]-1` -/
def P1685118316471984791.Spec : Prop :=
  ∀ n, P1685118316471984791.a n = A212685 n

end A212685

/-! ## A212685.P7655457655611593712

`∑[n²]-sqrt(A212503(n))`
-/

namespace A212685.P7655457655611593712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.sqrt (A212503 n : ℝ)

end

end A212685.P7655457655611593712

namespace A212685

/-- `∑[n²]-sqrt(A212503(n))` -/
def P7655457655611593712.Spec : Prop :=
  ∀ n, P7655457655611593712.a n = (A212685 n : ℝ)

end A212685

/-! ## A212685.P15820773874693966027

`∑[∑[A042948(n)]]-n²`
-/

namespace A212685.P15820773874693966027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A212685.P15820773874693966027

namespace A212685

/-- `∑[∑[A042948(n)]]-n²` -/
def P15820773874693966027.Spec : Prop :=
  ∀ n, P15820773874693966027.a n = A212685 n

end A212685

/-! ## A212685.P10144625389925486849

`A078126(n)+∑[(1-n)²]`
-/

namespace A212685.P10144625389925486849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078126 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212685.P10144625389925486849

namespace A212685

/-- `A078126(n)+∑[(1-n)²]` -/
def P10144625389925486849.Spec : Prop :=
  ∀ n, P10144625389925486849.a n = A212685 n

end A212685

/-! ## A212685.P13206796367144895395

`∑[A317186(n)-2*n]-1`
-/

namespace A212685.P13206796367144895395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317186 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A212685.P13206796367144895395

namespace A212685

/-- `∑[A317186(n)-2*n]-1` -/
def P13206796367144895395.Spec : Prop :=
  ∀ n, P13206796367144895395.a n = A212685 n

end A212685

/-! ## A212685.P13886231180428459256

`∑[n²]-(∑[A007494(n)]-n)`
-/

namespace A212685.P13886231180428459256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ))

end

end A212685.P13886231180428459256

namespace A212685

/-- `∑[n²]-(∑[A007494(n)]-n)` -/
def P13886231180428459256.Spec : Prop :=
  ∀ n, P13886231180428459256.a n = A212685 n

end A212685

/-! ## A212685.P8550707188947093351

`∑[∑[A004273(n)+char[2*n]-2]+2]-1`
-/

namespace A212685.P8550707188947093351
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A212685.P8550707188947093351

namespace A212685

/-- `∑[∑[A004273(n)+char[2*n]-2]+2]-1` -/
def P8550707188947093351.Spec : Prop :=
  ∀ n, P8550707188947093351.a n = A212685 n

end A212685

/-! ## A212685.P11415677394073282067

`A225972(n)+A008794(n)`
-/

namespace A212685.P11415677394073282067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225972 n + A008794 n

end

end A212685.P11415677394073282067

namespace A212685

/-- `A225972(n)+A008794(n)` -/
def P11415677394073282067.Spec : Prop :=
  ∀ n, P11415677394073282067.a n = A212685 n

end A212685

/-! ## A212685.P15106290281760202665

`A006003(n)-A131941(n)`
-/

namespace A212685.P15106290281760202665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n - A131941 n

end

end A212685.P15106290281760202665

namespace A212685

/-- `A006003(n)-A131941(n)` -/
def P15106290281760202665.Spec : Prop :=
  ∀ n, P15106290281760202665.a n = A212685 n

end A212685

/-! ## A212685.P4519965488794129753

`A056520(n)-A084684(n)`
-/

namespace A212685.P4519965488794129753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056520 n - A084684 n

end

end A212685.P4519965488794129753

namespace A212685

/-- `A056520(n)-A084684(n)` -/
def P4519965488794129753.Spec : Prop :=
  ∀ n, P4519965488794129753.a n = A212685 n

end A212685

/-! ## A212685.P11986434844525475896

`A002413(n)-A212684(n)`
-/

namespace A212685.P11986434844525475896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002413 n - A212684 n

end

end A212685.P11986434844525475896

namespace A212685

/-- `A002413(n)-A212684(n)` -/
def P11986434844525475896.Spec : Prop :=
  ∀ n, P11986434844525475896.a n = A212685 n

end A212685

/-! ## A212685.P10565304325930392051

`A145069(n)-A115006(n)`
-/

namespace A212685.P10565304325930392051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145069 n - A115006 n

end

end A212685.P10565304325930392051

namespace A212685

/-- `A145069(n)-A115006(n)` -/
def P10565304325930392051.Spec : Prop :=
  ∀ n, P10565304325930392051.a n = A212685 n

end A212685

/-! ## A212685.P6621212729156840010

`A173704(n)-A090809(n)`
-/

namespace A212685.P6621212729156840010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173704 n - A090809 n

end

end A212685.P6621212729156840010

namespace A212685

/-- `A173704(n)-A090809(n)` -/
def P6621212729156840010.Spec : Prop :=
  ∀ n, P6621212729156840010.a n = A212685 n

end A212685

/-!
# A212686: Number of (w,x,y,z) with all terms in {1,...,n} and 2|w-x|=n+|y-z|.

The programs for A212686, the canonical program `A212686.P12431169409885253418` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212686 has offset 0).

The definition of A212686 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212686.P12431169409885253418

`∑[and(n, -2)²]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A212686

/-- `∑[and(n, -2)²]` -/
def P12431169409885253418.Spec : Prop :=
  ∀ n, P12431169409885253418.a n = A212686 n

theorem P12431169409885253418.correct : P12431169409885253418.Spec := by
  intro n
  simp only [A212686]

end A212686

/-! ## A212686.P9478838022012932410

`∑[and(n, -2)^2]`
-/

namespace A212686.P9478838022012932410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212686.P9478838022012932410

namespace A212686

/-- `∑[and(n, -2)^2]` -/
def P9478838022012932410.Spec : Prop :=
  ∀ n, P9478838022012932410.a n = A212686 n

theorem P9478838022012932410.correct : P9478838022012932410.Spec := by
  intro n
  simp only [A212686, Nat.add_sub_cancel, A212686.P9478838022012932410.f1, A212686.P9478838022012932410.a, A212686.P12431169409885253418.f1, A212686.P12431169409885253418.a, SequenceMachineLib.memo_apply]

end A212686

/-! ## A212686.P6905109716696872003

`∑[(1-or(1, n))²]`
-/

namespace A212686.P6905109716696872003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.lor 1 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212686.P6905109716696872003

namespace A212686

/-- `∑[(1-or(1, n))²]` -/
def P6905109716696872003.Spec : Prop :=
  ∀ n, P6905109716696872003.a n = A212686 n

end A212686

/-! ## A212686.P2232914151659811784

`∑[xor(1, or(1, n))²]`
-/

namespace A212686.P2232914151659811784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.lor 1 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212686.P2232914151659811784

namespace A212686

/-- `∑[xor(1, or(1, n))²]` -/
def P2232914151659811784.Spec : Prop :=
  ∀ n, (P2232914151659811784.a n : ℤ) = A212686 n

end A212686

/-! ## A212686.P1553779641795853708

`∑[(n%2-n)²]`
-/

namespace A212686.P1553779641795853708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n % 2 : ℕ) : ℤ) - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212686.P1553779641795853708

namespace A212686

/-- `∑[(n%2-n)²]` -/
def P1553779641795853708.Spec : Prop :=
  ∀ n, P1553779641795853708.a n = A212686 n

end A212686

/-! ## A212686.P1277426136452754221

`∑[(or(1, n)-1)^2]`
-/

namespace A212686.P1277426136452754221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212686.P1277426136452754221

namespace A212686

/-- `∑[(or(1, n)-1)^2]` -/
def P1277426136452754221.Spec : Prop :=
  ∀ n, P1277426136452754221.a n = A212686 n

end A212686

/-! ## A212686.P14935940407914584840

`∑[xor(1, or(1, n))^2]`
-/

namespace A212686.P14935940407914584840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.lor 1 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212686.P14935940407914584840

namespace A212686

/-- `∑[xor(1, or(1, n))^2]` -/
def P14935940407914584840.Spec : Prop :=
  ∀ n, (P14935940407914584840.a n : ℤ) = A212686 n

end A212686

/-! ## A212686.P13313574664929396966

`∑[(2*floor(n/2))²]`
-/

namespace A212686.P13313574664929396966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ⌊(n : ℚ) / 2⌋) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212686.P13313574664929396966

namespace A212686

/-- `∑[(2*floor(n/2))²]` -/
def P13313574664929396966.Spec : Prop :=
  ∀ n, P13313574664929396966.a n = A212686 n

end A212686

/-! ## A212686.P551253982601825978

`a(n-1)+and(n, -2)²` with `a(0)=0`
-/

namespace A212686.P551253982601825978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Int.land (n : ℤ) (-2) ^ 2

end

end A212686.P551253982601825978

namespace A212686

/-- `a(n-1)+and(n, -2)²` -/
def P551253982601825978.Spec : Prop :=
  ∀ n, P551253982601825978.a n = A212686 n

end A212686

/-! ## A212686.P18425096098906524158

`floor(∑[∑[2-a(n-1)]²])` with `a(0)=0, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A212686.P18425096098906524158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212686.P18425096098906524158

namespace A212686

/-- `floor(∑[∑[2-a(n-1)]²])` -/
def P18425096098906524158.Spec : Prop :=
  ∀ n, P18425096098906524158.a n = A212686 n

end A212686

/-! ## A212686.P2129499342675932328

`a(n-1)+(and(1, n)-n)²` with `a(0)=0`
-/

namespace A212686.P2129499342675932328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((Nat.land 1 n : ℤ) - (n : ℤ)) ^ 2

end

end A212686.P2129499342675932328

namespace A212686

/-- `a(n-1)+(and(1, n)-n)²` -/
def P2129499342675932328.Spec : Prop :=
  ∀ n, P2129499342675932328.a n = A212686 n

end A212686

/-! ## A212686.P8394499584069638349

`4*∑[∑[1-a(n-1)]²]` with `a(0)=0, a(1)=0`
-/

namespace A212686.P8394499584069638349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212686.P8394499584069638349

namespace A212686

/-- `4*∑[∑[1-a(n-1)]²]` -/
def P8394499584069638349.Spec : Prop :=
  ∀ n, P8394499584069638349.a n = A212686 n

end A212686

/-! ## A212686.P18089107490718138730

`∑[∑[4-a(n-1)]²]/4` with `a(0)=0, a(1)=0`
-/

namespace A212686.P18089107490718138730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  4 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A212686.P18089107490718138730

namespace A212686

/-- `∑[∑[4-a(n-1)]²]/4` -/
def P18089107490718138730.Spec : Prop :=
  ∀ n, P18089107490718138730.a n = (A212686 n : ℚ)

end A212686

/-! ## A212686.P16402557892920426269

`a(n-1)+(2*floor(n/2))²` with `a(0)=0`
-/

namespace A212686.P16402557892920426269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (2 * ⌊(n : ℚ) / 2⌋) ^ 2

end

end A212686.P16402557892920426269

namespace A212686

/-- `a(n-1)+(2*floor(n/2))²` -/
def P16402557892920426269.Spec : Prop :=
  ∀ n, P16402557892920426269.a n = A212686 n

end A212686

/-! ## A212686.P4566910304922977087

`lcm(2, ∑[(gcd(2, n+1)-(n+1))²])`
-/

namespace A212686.P4566910304922977087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 2 (n + 1) : ℤ) - (n + 1 : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212686.P4566910304922977087

namespace A212686

/-- `lcm(2, ∑[(gcd(2, n+1)-(n+1))²])` -/
def P4566910304922977087.Spec : Prop :=
  ∀ n, (P4566910304922977087.a n : ℤ) = A212686 n

end A212686

/-! ## A212686.P8079816116481705735

`4*∑[A008794(n)]`
-/

namespace A212686.P8079816116481705735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212686.P8079816116481705735

namespace A212686

/-- `4*∑[A008794(n)]` -/
def P8079816116481705735.Spec : Prop :=
  ∀ n, P8079816116481705735.a n = A212686 n

end A212686

/-! ## A212686.P6893426696721360916

`ceil((∑[8*A004526(n)²]+1)/2)-1`
-/

namespace A212686.P6893426696721360916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A004526 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2⌉ - 1

end

end A212686.P6893426696721360916

namespace A212686

/-- `ceil((∑[8*A004526(n)²]+1)/2)-1` -/
def P6893426696721360916.Spec : Prop :=
  ∀ n, P6893426696721360916.a n = A212686 n

end A212686

/-! ## A212686.P9119842022617858451

`A033547(n)-A109043(n)`
-/

namespace A212686.P9119842022617858451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033547 n - A109043 n

end

end A212686.P9119842022617858451

namespace A212686

/-- `A033547(n)-A109043(n)` -/
def P9119842022617858451.Spec : Prop :=
  ∀ n, P9119842022617858451.a n = A212686 n

end A212686

/-! ## A212686.P3794478110037700712

`A101986(n)-A104585(n)`
-/

namespace A212686.P3794478110037700712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101986 n - A104585 n

end

end A212686.P3794478110037700712

namespace A212686

/-- `A101986(n)-A104585(n)` -/
def P3794478110037700712.Spec : Prop :=
  ∀ n, P3794478110037700712.a n = A212686 n

end A212686

/-! ## A212686.P2325578518721018745

`A217873(n)-A020875(n)`
-/

namespace A212686.P2325578518721018745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217873 n - A020875 n

end

end A212686.P2325578518721018745

namespace A212686

/-- `A217873(n)-A020875(n)` -/
def P2325578518721018745.Spec : Prop :=
  ∀ n, P2325578518721018745.a n = A212686 n

end A212686

/-!
# A212687: Number of (w,x,y,z) with all terms in {1,...,n} and 2|w-x|

The programs for A212687, the canonical program `A212687.P13544540666538065801` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212687 has offset 0).

The definition of A212687 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212687.P13544540666538065801

`n²²-A212688(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A212687

/-- `n²²-A212688(n)` -/
def P13544540666538065801.Spec : Prop :=
  ∀ n, P13544540666538065801.a n = A212687 n

theorem P13544540666538065801.correct : P13544540666538065801.Spec := by
  intro n
  simp only [A212687]

end A212687

/-! ## A212687.P313017475147758213

`A212690(n)-A212686(n)`
-/

namespace A212687.P313017475147758213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212690 n - A212686 n

end

end A212687.P313017475147758213

namespace A212687

/-- `A212690(n)-A212686(n)` -/
def P313017475147758213.Spec : Prop :=
  ∀ n, P313017475147758213.a n = A212687 n

end A212687

/-! ## A212687.P1870830766090503912

`abs(A000583(n)-A212688(n))`
-/

namespace A212687.P1870830766090503912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212688 n|

end

end A212687.P1870830766090503912

namespace A212687

/-- `abs(A000583(n)-A212688(n))` -/
def P1870830766090503912.Spec : Prop :=
  ∀ n, P1870830766090503912.a n = A212687 n

end A212687

/-! ## A212687.P4759392930796753700

`A212673(n)+A212674(n)-A212688(n)`
-/

namespace A212687.P4759392930796753700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212673 n + (A212674 n - A212688 n)

end

end A212687.P4759392930796753700

namespace A212687

/-- `A212673(n)+A212674(n)-A212688(n)` -/
def P4759392930796753700.Spec : Prop :=
  ∀ n, P4759392930796753700.a n = A212687 n

end A212687

/-! ## A212687.P15451047116455397453

`A212689(n)+A212690(n)-A212688(n)`
-/

namespace A212687.P15451047116455397453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212689 n + (A212690 n - A212688 n)

end

end A212687.P15451047116455397453

namespace A212687

/-- `A212689(n)+A212690(n)-A212688(n)` -/
def P15451047116455397453.Spec : Prop :=
  ∀ n, P15451047116455397453.a n = A212687 n

end A212687

/-! ## A212687.P13273374856627189427

`(A000583(n)-A212688(n))*A057427(n)`
-/

namespace A212687.P13273374856627189427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212688 n) * A057427 n

end

end A212687.P13273374856627189427

namespace A212687

/-- `(A000583(n)-A212688(n))*A057427(n)` -/
def P13273374856627189427.Spec : Prop :=
  ∀ n, P13273374856627189427.a n = A212687 n

end A212687

/-! ## A212687.P13976041947273528304

`or(A000583(n)-A212688(n), A000035(n))`
-/

namespace A212687.P13976041947273528304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000583 n - A212688 n) (A000035 n)

end

end A212687.P13976041947273528304

namespace A212687

/-- `or(A000583(n)-A212688(n), A000035(n))` -/
def P13976041947273528304.Spec : Prop :=
  ∀ n, P13976041947273528304.a n = A212687 n

end A212687

/-! ## A212687.P7407754273858177810

`char[A017158(n)]+A000583(n)-A212688(n)`
-/

namespace A212687.P7407754273858177810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017158 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A000583 n - A212688 n)

end

end A212687.P7407754273858177810

namespace A212687

/-- `char[A017158(n)]+A000583(n)-A212688(n)` -/
def P7407754273858177810.Spec : Prop :=
  ∀ n, P7407754273858177810.a n = A212687 n

end A212687

/-! ## A212687.P3222272353511725391

`A000583(n)-A212688(n)%A101099(n+1)`
-/

namespace A212687.P3222272353511725391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - Int.tmod (A212688 n) (A101099 (n + 1))

end

end A212687.P3222272353511725391

namespace A212687

/-- `A000583(n)-A212688(n)%A101099(n+1)` -/
def P3222272353511725391.Spec : Prop :=
  ∀ n, P3222272353511725391.a n = A212687 n

end A212687

/-! ## A212687.P14996509895643806531

`lcm(A000583(n)-A212688(n), A009001(2*n))`
-/

namespace A212687.P14996509895643806531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000583 n - A212688 n) (A009001 (2 * n))

end

end A212687.P14996509895643806531

namespace A212687

/-- `lcm(A000583(n)-A212688(n), A009001(2*n))` -/
def P14996509895643806531.Spec : Prop :=
  ∀ n, (P14996509895643806531.a n : ℤ) = A212687 n

end A212687

/-! ## A212687.P2279736002850721961

`(A000583(n)-A212688(n))*A014963(A008458(n))`
-/

namespace A212687.P2279736002850721961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212688 n) * A014963 (A008458 n).toNat

end

end A212687.P2279736002850721961

namespace A212687

/-- `(A000583(n)-A212688(n))*A014963(A008458(n))` -/
def P2279736002850721961.Spec : Prop :=
  ∀ n, P2279736002850721961.a n = A212687 n

end A212687

/-! ## A212687.P12386519491378901194

`(A000583(n)-A212688(n))*A014963(A001749(n+1))`
-/

namespace A212687.P12386519491378901194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212688 n) * A014963 (A001749 (n + 1)).toNat

end

end A212687.P12386519491378901194

namespace A212687

/-- `(A000583(n)-A212688(n))*A014963(A001749(n+1))` -/
def P12386519491378901194.Spec : Prop :=
  ∀ n, P12386519491378901194.a n = A212687 n

end A212687

/-! ## A212687.P6442722160820965544

`(A000583(n)-A212688(n))^A014963(∑[n+1])`
-/

namespace A212687.P6442722160820965544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212688 n : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A212687.P6442722160820965544

namespace A212687

/-- `(A000583(n)-A212688(n))^A014963(∑[n+1])` -/
def P6442722160820965544.Spec : Prop :=
  ∀ n, P6442722160820965544.a n = (A212687 n : ℚ)

end A212687

/-! ## A212687.P5674365691420035556

`A212689(n)+A077043(n²)`
-/

namespace A212687.P5674365691420035556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212689 n + A077043 (n ^ 2)

end

end A212687.P5674365691420035556

namespace A212687

/-- `A212689(n)+A077043(n²)` -/
def P5674365691420035556.Spec : Prop :=
  ∀ n, P5674365691420035556.a n = A212687 n

end A212687

/-!
# A212688: Number of (w,x,y,z) with all terms in {1,...,n} and 2|w-x|>=n+|y-z|.

The programs for A212688, the canonical program `A212688.P5874699807576936125` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212688 has offset 0).

The definition of A212688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212688.P9530969350383239056

`n²²-A212687(n)`
-/

namespace A212688.P9530969350383239056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A212687 n

end

end A212688.P9530969350383239056

namespace A212688

/-- `n²²-A212687(n)` -/
def P9530969350383239056.Spec : Prop :=
  ∀ n, P9530969350383239056.a n = A212688 n

end A212688

/-! ## A212688.P7024759479450488872

`A212689(n)+A212686(n)`
-/

namespace A212688.P7024759479450488872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212689 n + A212686 n

end

end A212688.P7024759479450488872

namespace A212688

/-- `A212689(n)+A212686(n)` -/
def P7024759479450488872.Spec : Prop :=
  ∀ n, P7024759479450488872.a n = A212688 n

end A212688

/-! ## A212688.P7005333116693158026

`A131479(n)-A212689(n)`
-/

namespace A212688.P7005333116693158026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131479 n - A212689 n

end

end A212688.P7005333116693158026

namespace A212688

/-- `A131479(n)-A212689(n)` -/
def P7005333116693158026.Spec : Prop :=
  ∀ n, P7005333116693158026.a n = A212688 n

end A212688

/-! ## A212688.P17807971850985032453

`A105636(n)-A289179(n+1)`
-/

namespace A212688.P17807971850985032453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105636 n - A289179 (n + 1)

end

end A212688.P17807971850985032453

namespace A212688

/-- `A105636(n)-A289179(n+1)` -/
def P17807971850985032453.Spec : Prop :=
  ∀ n, P17807971850985032453.a n = A212688 n

end A212688

/-! ## A212688.P7851779794350167915

`A212714(n)+A212686(n)/2`
-/

namespace A212688.P7851779794350167915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212714 n : ℚ) + (A212686 n : ℚ) / 2

end

end A212688.P7851779794350167915

namespace A212688

/-- `A212714(n)+A212686(n)/2` -/
def P7851779794350167915.Spec : Prop :=
  ∀ n, P7851779794350167915.a n = (A212688 n : ℚ)

end A212688

/-! ## A212688.P11877765939372467067

`4*A011863(n)-A212689(n)`
-/

namespace A212688.P11877765939372467067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A011863 n - A212689 n

end

end A212688.P11877765939372467067

namespace A212688

/-- `4*A011863(n)-A212689(n)` -/
def P11877765939372467067.Spec : Prop :=
  ∀ n, P11877765939372467067.a n = A212688 n

end A212688

/-! ## A212688.P5874699807576936125

`A212714(n)+∑[2*A008794(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A212688

/-- `A212714(n)+∑[2*A008794(n)]` -/
def P5874699807576936125.Spec : Prop :=
  ∀ n, P5874699807576936125.a n = A212688 n

theorem P5874699807576936125.correct : P5874699807576936125.Spec := by
  intro n
  simp only [A212688]

end A212688

/-! ## A212688.P7903113027569448195

`A212714(n)+∑[A000982(A052928(n))]`
-/

namespace A212688.P7903113027569448195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A052928 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212714 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212688.P7903113027569448195

namespace A212688

/-- `A212714(n)+∑[A000982(A052928(n))]` -/
def P7903113027569448195.Spec : Prop :=
  ∀ n, P7903113027569448195.a n = A212688 n

end A212688

/-! ## A212688.P16699537513615655530

`A212714(n)+∑[A005843(A008794(n))]`
-/

namespace A212688.P16699537513615655530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008794 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212714 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212688.P16699537513615655530

namespace A212688

/-- `A212714(n)+∑[A005843(A008794(n))]` -/
def P16699537513615655530.Spec : Prop :=
  ∀ n, P16699537513615655530.a n = A212688 n

end A212688

/-! ## A212688.P11720224206207820985

`A002620(n²)-A212689(n)`
-/

namespace A212688.P11720224206207820985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n ^ 2) - A212689 n

end

end A212688.P11720224206207820985

namespace A212688

/-- `A002620(n²)-A212689(n)` -/
def P11720224206207820985.Spec : Prop :=
  ∀ n, P11720224206207820985.a n = A212688 n

end A212688

/-!
# A212689: Number of (w,x,y,z) with all terms in {1,...,n} and 2|w-x|>n+|y-z|.

The programs for A212689, the canonical program `A212689.P12151621685584583542` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212689 has offset 0).

The definition of A212689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212689.P8702678087669054757

`n²²-A212690(n)`
-/

namespace A212689.P8702678087669054757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A212690 n

end

end A212689.P8702678087669054757

namespace A212689

/-- `n²²-A212690(n)` -/
def P8702678087669054757.Spec : Prop :=
  ∀ n, P8702678087669054757.a n = A212689 n

end A212689

/-! ## A212689.P12151621685584583542

`A131479(n)-A212688(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A212689

/-- `A131479(n)-A212688(n)` -/
def P12151621685584583542.Spec : Prop :=
  ∀ n, P12151621685584583542.a n = A212689 n

theorem P12151621685584583542.correct : P12151621685584583542.Spec := by
  intro n
  simp only [A212689]

end A212689

/-! ## A212689.P3665834019648109562

`A212688(n)-A212686(n)`
-/

namespace A212689.P3665834019648109562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212688 n - A212686 n

end

end A212689.P3665834019648109562

namespace A212689

/-- `A212688(n)-A212686(n)` -/
def P3665834019648109562.Spec : Prop :=
  ∀ n, P3665834019648109562.a n = A212689 n

end A212689

/-! ## A212689.P3237003666106525161

`A212714(n)-A212686(n)/2`
-/

namespace A212689.P3237003666106525161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212714 n : ℚ) - (A212686 n : ℚ) / 2

end

end A212689.P3237003666106525161

namespace A212689

/-- `A212714(n)-A212686(n)/2` -/
def P3237003666106525161.Spec : Prop :=
  ∀ n, P3237003666106525161.a n = (A212689 n : ℚ)

end A212689

/-! ## A212689.P1503380233774835460

`A212714(n)-∑[2*A008794(n)]`
-/

namespace A212689.P1503380233774835460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212714 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212689.P1503380233774835460

namespace A212689

/-- `A212714(n)-∑[2*A008794(n)]` -/
def P1503380233774835460.Spec : Prop :=
  ∀ n, P1503380233774835460.a n = A212689 n

end A212689

/-! ## A212689.P15454197556250018848

`A212714(n)-∑[A000982(A052928(n))]`
-/

namespace A212689.P15454197556250018848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A052928 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212714 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212689.P15454197556250018848

namespace A212689

/-- `A212714(n)-∑[A000982(A052928(n))]` -/
def P15454197556250018848.Spec : Prop :=
  ∀ n, P15454197556250018848.a n = A212689 n

end A212689

/-! ## A212689.P17128665888053777028

`A050534(n)+A173196(n)-A142150(n)`
-/

namespace A212689.P17128665888053777028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 n + (A173196 n - A142150 n)

end

end A212689.P17128665888053777028

namespace A212689

/-- `A050534(n)+A173196(n)-A142150(n)` -/
def P17128665888053777028.Spec : Prop :=
  ∀ n, P17128665888053777028.a n = A212689 n

end A212689

/-! ## A212689.P3895841386316112274

`(A002620(n)+n)*A000982(n)-A005900(n)`
-/

namespace A212689.P3895841386316112274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002620 n + (n : ℤ)) * A000982 n - A005900 n

end

end A212689.P3895841386316112274

namespace A212689

/-- `(A002620(n)+n)*A000982(n)-A005900(n)` -/
def P3895841386316112274.Spec : Prop :=
  ∀ n, P3895841386316112274.a n = A212689 n

end A212689

/-! ## A212689.P7746750375492168625

`A212714(n)-∑[A005843(A008794(n))]`
-/

namespace A212689.P7746750375492168625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008794 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212714 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212689.P7746750375492168625

namespace A212689

/-- `A212714(n)-∑[A005843(A008794(n))]` -/
def P7746750375492168625.Spec : Prop :=
  ∀ n, P7746750375492168625.a n = A212689 n

end A212689

/-!
# A212690: Number of (w,x,y,z) with all terms in {1,...,n} and 2|w-x| <= n+|y-z|.

The programs for A212690, the canonical program `A212690.P220314655135149710` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212690 has offset 0).

The definition of A212690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212690.P220314655135149710

`n²²-A212689(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A212690

/-- `n²²-A212689(n)` -/
def P220314655135149710.Spec : Prop :=
  ∀ n, P220314655135149710.a n = A212690 n

theorem P220314655135149710.correct : P220314655135149710.Spec := by
  intro n
  simp only [A212690]

end A212690

/-! ## A212690.P16786165619139040617

`A212687(n)+A212686(n)`
-/

namespace A212690.P16786165619139040617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212687 n + A212686 n

end

end A212690.P16786165619139040617

namespace A212690

/-- `A212687(n)+A212686(n)` -/
def P16786165619139040617.Spec : Prop :=
  ∀ n, P16786165619139040617.a n = A212690 n

end A212690

/-! ## A212690.P13344490696963507143

`abs(A000583(n)-A212689(n))`
-/

namespace A212690.P13344490696963507143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212689 n|

end

end A212690.P13344490696963507143

namespace A212690

/-- `abs(A000583(n)-A212689(n))` -/
def P13344490696963507143.Spec : Prop :=
  ∀ n, P13344490696963507143.a n = A212690 n

end A212690

/-! ## A212690.P7883379681073954839

`A212673(n)+A212674(n)-A212689(n)`
-/

namespace A212690.P7883379681073954839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212673 n + (A212674 n - A212689 n)

end

end A212690.P7883379681073954839

namespace A212690

/-- `A212673(n)+A212674(n)-A212689(n)` -/
def P7883379681073954839.Spec : Prop :=
  ∀ n, P7883379681073954839.a n = A212690 n

end A212690

/-! ## A212690.P4517744531551165894

`A212681(n)+A212682(n)-A212689(n)`
-/

namespace A212690.P4517744531551165894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212681 n + (A212682 n - A212689 n)

end

end A212690.P4517744531551165894

namespace A212690

/-- `A212681(n)+A212682(n)-A212689(n)` -/
def P4517744531551165894.Spec : Prop :=
  ∀ n, P4517744531551165894.a n = A212690 n

end A212690

/-! ## A212690.P4384669085367236971

`A212687(n)+A212688(n)-A212689(n)`
-/

namespace A212690.P4384669085367236971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212687 n + (A212688 n - A212689 n)

end

end A212690.P4384669085367236971

namespace A212690

/-- `A212687(n)+A212688(n)-A212689(n)` -/
def P4384669085367236971.Spec : Prop :=
  ∀ n, P4384669085367236971.a n = A212690 n

end A212690

/-! ## A212690.P4722636529671957834

`A005843(n+1)%2+A000583(n)-A212689(n)`
-/

namespace A212690.P4722636529671957834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (n + 1)) 2 + (A000583 n - A212689 n)

end

end A212690.P4722636529671957834

namespace A212690

/-- `A005843(n+1)%2+A000583(n)-A212689(n)` -/
def P4722636529671957834.Spec : Prop :=
  ∀ n, P4722636529671957834.a n = A212690 n

end A212690

/-! ## A212690.P3022544796589649032

`A036044(n+1)%2+A000583(n)-A212689(n)`
-/

namespace A212690.P3022544796589649032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036044 (n + 1)) 2 + (A000583 n - A212689 n)

end

end A212690.P3022544796589649032

namespace A212690

/-- `A036044(n+1)%2+A000583(n)-A212689(n)` -/
def P3022544796589649032.Spec : Prop :=
  ∀ n, P3022544796589649032.a n = A212690 n

end A212690

/-! ## A212690.P4636556424331884418

`A212688(n)+A077043(n²)`
-/

namespace A212690.P4636556424331884418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212688 n + A077043 (n ^ 2)

end

end A212690.P4636556424331884418

namespace A212690

/-- `A212688(n)+A077043(n²)` -/
def P4636556424331884418.Spec : Prop :=
  ∀ n, P4636556424331884418.a n = A212690 n

end A212690

/-!
# A212691: Number of (w,x,y,z) with all terms in {1,...,n} and w+|x-y|<=|x-z|+|y-z|.

The programs for A212691, the canonical program `A212691.P13624024582917438686` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212691 has offset 0).

The definition of A212691 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212691.P13624024582917438686

`2*(A129371(n)-n²)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A212691

/-- `2*(A129371(n)-n²)` -/
def P13624024582917438686.Spec : Prop :=
  ∀ n, P13624024582917438686.a n = A212691 n

theorem P13624024582917438686.correct : P13624024582917438686.Spec := by
  intro n
  simp only [A212691]

end A212691

/-! ## A212691.P10316633032256721389

`2*(∑[A129370(n)]-n²)`
-/

namespace A212691.P10316633032256721389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ))

end

end A212691.P10316633032256721389

namespace A212691

/-- `2*(∑[A129370(n)]-n²)` -/
def P10316633032256721389.Spec : Prop :=
  ∀ n, P10316633032256721389.a n = A212691 n

end A212691

/-! ## A212691.P8600246288621883868

`2*(∑[A308422(n)]-A308422(n))`
-/

namespace A212691.P8600246288621883868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A308422 n)

end

end A212691.P8600246288621883868

namespace A212691

/-- `2*(∑[A308422(n)]-A308422(n))` -/
def P8600246288621883868.Spec : Prop :=
  ∀ n, P8600246288621883868.a n = A212691 n

end A212691

/-! ## A212691.P1222181669122815565

`A007290(n)+A008619(n)*A161680(n)`
-/

namespace A212691.P1222181669122815565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007290 n + A008619 n * A161680 n

end

end A212691.P1222181669122815565

namespace A212691

/-- `A007290(n)+A008619(n)*A161680(n)` -/
def P1222181669122815565.Spec : Prop :=
  ∀ n, P1222181669122815565.a n = A212691 n

end A212691

/-! ## A212691.P7838126400759730454

`A280186(A004525(2*n+1))+A212683(n)`
-/

namespace A212691.P7838126400759730454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280186 (A004525 (2 * n + 1)).toNat + A212683 n

end

end A212691.P7838126400759730454

namespace A212691

/-- `A280186(A004525(2*n+1))+A212683(n)` -/
def P7838126400759730454.Spec : Prop :=
  ∀ n, P7838126400759730454.a n = A212691 n

end A212691

/-!
# A212692: Number of (w,x,y,z) with all terms in {1,...,n} and w<|x-y|+|y-z|.

The programs for A212692, the canonical program `A212692.P360741472597932802` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212692 has offset 0).

The definition of A212692 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212692.P360741472597932802

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=0, a(2)=6, a(3)=22, a(4)=54`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A212692

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P360741472597932802.Spec : Prop :=
  ∀ n, P360741472597932802.a n = A212692 n

theorem P360741472597932802.correct : P360741472597932802.Spec := by
  intro n
  simp only [A212692]

end A212692

/-! ## A212692.P7250646031088294680

`∑[∑[a(n-2)+10]]` with `a(0)=0, a(1)=0, a(2)=6`
-/

namespace A212692.P7250646031088294680
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 6] fun n f2 =>
  f2 (n - 2) + 10

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212692.P7250646031088294680

namespace A212692

/-- `∑[∑[a(n-2)+10]]` -/
def P7250646031088294680.Spec : Prop :=
  ∀ n, (P7250646031088294680.a n : ℤ) = A212692 n

end A212692

/-! ## A212692.P1012207437571107212

`∑[floor(n/2)+5*C(n, 2)]`
-/

namespace A212692.P1012207437571107212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + (5 * Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212692.P1012207437571107212

namespace A212692

/-- `∑[floor(n/2)+5*C(n, 2)]` -/
def P1012207437571107212.Spec : Prop :=
  ∀ n, P1012207437571107212.a n = A212692 n

end A212692

/-! ## A212692.P10713904126885903218

`∑[∑[∑[floor(a(n-2))]]]` with `a(0)=0, a(1)=0, a(2)=6, a(3)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A212692.P10713904126885903218
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 6, 4] fun n f3 =>
  f3 (n - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212692.P10713904126885903218

namespace A212692

/-- `∑[∑[∑[floor(a(n-2))]]]` -/
def P10713904126885903218.Spec : Prop :=
  ∀ n, (P10713904126885903218.a n : ℤ) = A212692 n

end A212692

/-! ## A212692.P10659824942188075438

`∑[floor(5/2*n²)-2*n]`
-/

namespace A212692.P10659824942188075438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 : ℚ) / 2 * (n ^ 2 : ℚ)⌋ - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212692.P10659824942188075438

namespace A212692

/-- `∑[floor(5/2*n²)-2*n]` -/
def P10659824942188075438.Spec : Prop :=
  ∀ n, P10659824942188075438.a n = A212692 n

end A212692

/-! ## A212692.P6813383876430016157

`(n+1)*n²-∑[∑[n%2+n]]`
-/

namespace A212692.P6813383876430016157
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * n ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212692.P6813383876430016157

namespace A212692

/-- `(n+1)*n²-∑[∑[n%2+n]]` -/
def P6813383876430016157.Spec : Prop :=
  ∀ n, P6813383876430016157.a n = A212692 n

end A212692

/-! ## A212692.P14230063731185533267

`A144945(n)-a(n-1)` with `a(0)=0`
-/

namespace A212692.P14230063731185533267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A144945 n - a (n - 1)

end

end A212692.P14230063731185533267

namespace A212692

/-- `A144945(n)-a(n-1)` -/
def P14230063731185533267.Spec : Prop :=
  ∀ n, P14230063731185533267.a n = A212692 n

end A212692

/-! ## A212692.P2309868880544776144

`2*(A212980(n+1)-∑[n])`
-/

namespace A212692.P2309868880544776144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A212980 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A212692.P2309868880544776144

namespace A212692

/-- `2*(A212980(n+1)-∑[n])` -/
def P2309868880544776144.Spec : Prop :=
  ∀ n, P2309868880544776144.a n = A212692 n

end A212692

/-! ## A212692.P10843415833796295909

`2*∑[A249547(n)-2*n]`
-/

namespace A212692.P10843415833796295909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249547 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212692.P10843415833796295909

namespace A212692

/-- `2*∑[A249547(n)-2*n]` -/
def P10843415833796295909.Spec : Prop :=
  ∀ n, P10843415833796295909.a n = A212692 n

end A212692

/-! ## A212692.P11118569277940900724

`∑[A121509(n+1)]-(n+1)²`
-/

namespace A212692.P11118569277940900724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A212692.P11118569277940900724

namespace A212692

/-- `∑[A121509(n+1)]-(n+1)²` -/
def P11118569277940900724.Spec : Prop :=
  ∀ n, P11118569277940900724.a n = A212692 n

end A212692

/-! ## A212692.P4732528521751955649

`ceil(∑[A153784(n)-n-(n+1)]/4)`
-/

namespace A212692.P4732528521751955649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153784 n - (n : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4⌉

end

end A212692.P4732528521751955649

namespace A212692

/-- `ceil(∑[A153784(n)-n-(n+1)]/4)` -/
def P4732528521751955649.Spec : Prop :=
  ∀ n, P4732528521751955649.a n = A212692 n

end A212692

/-! ## A212692.P4835213661304651994

`A007904(n)-A028387(n)`
-/

namespace A212692.P4835213661304651994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007904 n - A028387 n

end

end A212692.P4835213661304651994

namespace A212692

/-- `A007904(n)-A028387(n)` -/
def P4835213661304651994.Spec : Prop :=
  ∀ n, P4835213661304651994.a n = A212692 n

end A212692

/-! ## A212692.P14601084324283449262

`A162147(n)-A115006(n)`
-/

namespace A212692.P14601084324283449262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162147 n - A115006 n

end

end A212692.P14601084324283449262

namespace A212692

/-- `A162147(n)-A115006(n)` -/
def P14601084324283449262.Spec : Prop :=
  ∀ n, P14601084324283449262.a n = A212692 n

end A212692

/-! ## A212692.P2983837916613549162

`A212673(n)-A212568(n)`
-/

namespace A212692.P2983837916613549162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212673 n - A212568 n

end

end A212692.P2983837916613549162

namespace A212692

/-- `A212673(n)-A212568(n)` -/
def P2983837916613549162.Spec : Prop :=
  ∀ n, P2983837916613549162.a n = A212692 n

end A212692

/-! ## A212692.P13172699549282047193

`A212675(n)-A212674(n)`
-/

namespace A212692.P13172699549282047193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212675 n - A212674 n

end

end A212692.P13172699549282047193

namespace A212692

/-- `A212675(n)-A212674(n)` -/
def P13172699549282047193.Spec : Prop :=
  ∀ n, P13172699549282047193.a n = A212692 n

end A212692

/-! ## A212692.P2330015083476287803

`A002413(n)-A002620(n+1)`
-/

namespace A212692.P2330015083476287803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002413 n - A002620 (n + 1)

end

end A212692.P2330015083476287803

namespace A212692

/-- `A002413(n)-A002620(n+1)` -/
def P2330015083476287803.Spec : Prop :=
  ∀ n, P2330015083476287803.a n = A212692 n

end A212692

/-! ## A212692.P3209139213204163032

`A132124(n)-A182260(n+1)`
-/

namespace A212692.P3209139213204163032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132124 n - A182260 (n + 1)

end

end A212692.P3209139213204163032

namespace A212692

/-- `A132124(n)-A182260(n+1)` -/
def P3209139213204163032.Spec : Prop :=
  ∀ n, P3209139213204163032.a n = A212692 n

end A212692

/-! ## A212692.P1302807095516753936

`A299290(n)-A177342(n+1)`
-/

namespace A212692.P1302807095516753936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299290 n - A177342 (n + 1)

end

end A212692.P1302807095516753936

namespace A212692

/-- `A299290(n)-A177342(n+1)` -/
def P1302807095516753936.Spec : Prop :=
  ∀ n, P1302807095516753936.a n = A212692 n

end A212692

/-! ## A212692.P16089069030370425322

`(A050409(n)-A111746(n))/2`
-/

namespace A212692.P16089069030370425322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050409 n - A111746 n : ℚ) / 2

end

end A212692.P16089069030370425322

namespace A212692

/-- `(A050409(n)-A111746(n))/2` -/
def P16089069030370425322.Spec : Prop :=
  ∀ n, P16089069030370425322.a n = (A212692 n : ℚ)

end A212692

/-! ## A212692.P4554520447750116406

`A050409(n)-A248575(n)/2`
-/

namespace A212692.P4554520447750116406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050409 n : ℚ) - (A248575 n : ℚ) / 2

end

end A212692.P4554520447750116406

namespace A212692

/-- `A050409(n)-A248575(n)/2` -/
def P4554520447750116406.Spec : Prop :=
  ∀ n, P4554520447750116406.a n = (A212692 n : ℚ)

end A212692

/-!
# A212694: Number of 2-colored Dyck n-paths with up steps (U, u), down steps (D, d), and avoiding UU and DD.

The programs for A212694, there is no canonical definition to state claims against.
-/

/-! ## A212694.P17448195978228794336

`A284520(A005185(9^n))`
-/

namespace A212694.P17448195978228794336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284520 (A005185 (9 ^ n)).toNat

end

end A212694.P17448195978228794336

/-!
# A212696: Central coefficient of the triangle A097609.

The programs for A212696, there is no canonical definition to state claims against.
-/

/-! ## A212696.P14113670347729720816

`(n+1)*A055113(n+1)`
-/

namespace A212696.P14113670347729720816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A055113 (n + 1)

end

end A212696.P14113670347729720816

/-! ## A212696.P13061555020966454029

`(n+1)*(A000108(n)-A111160(n))`
-/

namespace A212696.P13061555020966454029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000108 n - A111160 n)

end

end A212696.P13061555020966454029

/-! ## A212696.P13522533218214104228

`(A000108(n)-A111160(n))*A008619(2*n)`
-/

namespace A212696.P13522533218214104228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000108 n - A111160 n) * A008619 (2 * n)

end

end A212696.P13522533218214104228

/-! ## A212696.P17609932854793164651

`(n+1)*A123880(∑[n])`
-/

namespace A212696.P17609932854793164651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A123880 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212696.P17609932854793164651

/-! ## A212696.P9560200558409343125

`A097609(∑[4*n])`
-/

namespace A212696.P9560200558409343125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097609 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212696.P9560200558409343125

/-! ## A212696.P6672136369851315691

`lcm(n+1, A097609(A046092(n)))`
-/

namespace A212696.P6672136369851315691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A097609 (A046092 n).toNat)

end

end A212696.P6672136369851315691

/-! ## A212696.P2031352724929885134

`gcd(A000038(n), A097609(A046092(n)))`
-/

namespace A212696.P2031352724929885134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A097609 (A046092 n).toNat)

end

end A212696.P2031352724929885134

/-! ## A212696.P8291191421417111589

`A097609(A005563(n)+n²)%A137223(n)`
-/

namespace A212696.P8291191421417111589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097609 (A005563 n + (n ^ 2 : ℤ)).toNat) (A137223 n)

end

end A212696.P8291191421417111589

/-! ## A212696.P1072670549032264852

`or(A000007(n), A097609(A005563(n)+n²))`
-/

namespace A212696.P1072670549032264852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A097609 (A005563 n + (n ^ 2 : ℤ)).toNat)

end

end A212696.P1072670549032264852

/-!
# A212697: a(n) = 2*n*3^(n-1).

The programs for A212697, the canonical program `A212697.P17413442370211379531` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212697 has offset 1).

The definition of A212697 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)*3^n` (program `A212697.P17413442370211379531`, by `A212697.P17413442370211379531.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A212697.P16456021760367650043

`2*3^n*(n+1)`
-/

namespace A212697.P16456021760367650043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 3 ^ n * (n + 1)

end

end A212697.P16456021760367650043

namespace A212697

/-- `2*3^n*(n+1)` -/
def P16456021760367650043.Spec : Prop :=
  ∀ n, (P16456021760367650043.a n : ℤ) = A212697 (n + 1)

theorem P16456021760367650043.correct : P16456021760367650043.Spec := by
  intro n
  simp only [A212697, Nat.add_sub_cancel, A212697.P16456021760367650043.a, A212697.P17413442370211379531.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A212697

/-! ## A212697.P17413442370211379531

`2*(n+1)*3^n`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A212697

/-- `2*(n+1)*3^n` -/
def P17413442370211379531.Spec : Prop :=
  ∀ n, (P17413442370211379531.a n : ℤ) = A212697 (n + 1)

theorem P17413442370211379531.correct : P17413442370211379531.Spec := by
  intro n
  simp only [A212697, Nat.add_sub_cancel]

end A212697

/-! ## A212697.P13374863664111880667

`ogf(2/(1-6x+9x^2))`
-/

namespace A212697.P13374863664111880667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2] [1, -6, 9] n

end

end A212697.P13374863664111880667

namespace A212697

/-- `ogf(2/(1-6x+9x^2))` -/
def P13374863664111880667.Spec : Prop :=
  ∀ n, P13374863664111880667.a n = A212697 (n + 1)

end A212697

/-! ## A212697.P6623876574333176230

`floor((n+1)*∑[3*a(n-1)])` with `a(0)=2, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A212697.P6623876574333176230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212697.P6623876574333176230

namespace A212697

/-- `floor((n+1)*∑[3*a(n-1)])` -/
def P6623876574333176230.Spec : Prop :=
  ∀ n, (P6623876574333176230.a n : ℤ) = A212697 (n + 1)

end A212697

/-! ## A212697.P17459044182088254942

`floor(3*(n+1)*a(n-1)/n)` with `a(0)=2`
-/

namespace A212697.P17459044182088254942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊3 * ((n + 1 : ℚ) * ((a (n - 1) : ℚ) / (n : ℚ)))⌋

end

end A212697.P17459044182088254942

namespace A212697

/-- `floor(3*(n+1)*a(n-1)/n)` -/
def P17459044182088254942.Spec : Prop :=
  ∀ n, P17459044182088254942.a n = A212697 (n + 1)

end A212697

/-! ## A212697.P11871667962747832272

`Δ[3^n]+a(n-1)/cot(atan(3))` with `a(0)=2`
-/

namespace A212697.P11871667962747832272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℝ := SequenceMachineLib.rec [2] fun n a =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ) + a (n - 1) / Real.cot (Real.arctan (3 : ℝ))

end

end A212697.P11871667962747832272

namespace A212697

/-- `Δ[3^n]+a(n-1)/cot(atan(3))` -/
def P11871667962747832272.Spec : Prop :=
  ∀ n, P11871667962747832272.a n = (A212697 (n + 1) : ℝ)

end A212697

/-! ## A212697.P5926551642061918863

`Δ[3^n]+a(n-1)/sqrt(1/9)` with `a(0)=2`
-/

namespace A212697.P5926551642061918863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℝ := SequenceMachineLib.rec [2] fun n a =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ) + a (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ)

end

end A212697.P5926551642061918863

namespace A212697

/-- `Δ[3^n]+a(n-1)/sqrt(1/9)` -/
def P5926551642061918863.Spec : Prop :=
  ∀ n, P5926551642061918863.a n = (A212697 (n + 1) : ℝ)

theorem P5926551642061918863.correct : P5926551642061918863.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A212697, Nat.add_sub_cancel, A212697.P5926551642061918863.f1, A212697.P5926551642061918863.a, A212697.P17413442370211379531.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A212697, Nat.add_sub_cancel, A212697.P5926551642061918863.f1, A212697.P5926551642061918863.a, A212697.P17413442370211379531.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A212697

/-! ## A212697.P16285275321314046453

`(n+1)*∑[3*a(n-1)]+n+1` with `a(0)=1, a(1)=4`
-/

namespace A212697.P16285275321314046453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1)

end

end A212697.P16285275321314046453

namespace A212697

/-- `(n+1)*∑[3*a(n-1)]+n+1` -/
def P16285275321314046453.Spec : Prop :=
  ∀ n, (P16285275321314046453.a n : ℤ) = A212697 (n + 1)

end A212697

/-! ## A212697.P17909347298490175303

`∑[2*A081038(n)]`
-/

namespace A212697.P17909347298490175303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212697.P17909347298490175303

namespace A212697

/-- `∑[2*A081038(n)]` -/
def P17909347298490175303.Spec : Prop :=
  ∀ n, P17909347298490175303.a n = A212697 (n + 1)

end A212697

/-! ## A212697.P5678707810285263874

`A140320(n+1)-1`
-/

namespace A212697.P5678707810285263874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140320 (n + 1) - 1

end

end A212697.P5678707810285263874

namespace A212697

/-- `A140320(n+1)-1` -/
def P5678707810285263874.Spec : Prop :=
  ∀ n, P5678707810285263874.a n = A212697 (n + 1)

end A212697

/-! ## A212697.P7659158626219777077

`A124647(n)+3^n`
-/

namespace A212697.P7659158626219777077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124647 n + (3 ^ n : ℤ)

end

end A212697.P7659158626219777077

namespace A212697

/-- `A124647(n)+3^n` -/
def P7659158626219777077.Spec : Prop :=
  ∀ n, P7659158626219777077.a n = A212697 (n + 1)

end A212697

/-! ## A212697.P3894052024397821262

`record[(n+2)*A254006(n)]`
-/

namespace A212697.P3894052024397821262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A254006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212697.P3894052024397821262

namespace A212697

/-- `record[(n+2)*A254006(n)]` -/
def P3894052024397821262.Spec : Prop :=
  ∀ n, P3894052024397821262.a n = A212697 (n + 1)

end A212697

/-! ## A212697.P17745601184385379955

`A224327(n+1)+1+n`
-/

namespace A212697.P17745601184385379955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224327 (n + 1) + 1 + (n : ℤ)

end

end A212697.P17745601184385379955

namespace A212697

/-- `A224327(n+1)+1+n` -/
def P17745601184385379955.Spec : Prop :=
  ∀ n, P17745601184385379955.a n = A212697 (n + 1)

end A212697

/-!
# A212698: Main transitions in systems of n particles with spin 3/2.

The programs for A212698, the canonical program `A212698.P14527659835463141838` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212698 has offset 1).

The definition of A212698 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212698.P16059830340846834512

`3*(n+1)*4^n`
-/

namespace A212698.P16059830340846834512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1) * 4 ^ n)

end

end A212698.P16059830340846834512

namespace A212698

/-- `3*(n+1)*4^n` -/
def P16059830340846834512.Spec : Prop :=
  ∀ n, (P16059830340846834512.a n : ℤ) = A212698 (n + 1)

theorem P16059830340846834512.correct : P16059830340846834512.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A212698, Nat.add_sub_cancel, A212698.P16059830340846834512.a, A212698.P14527659835463141838.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A212698, Nat.add_sub_cancel, A212698.P16059830340846834512.a, A212698.P14527659835463141838.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A212698

/-! ## A212698.P14527659835463141838

`8*a(n-1)-16*a(n-2)` with `a(0)=3, a(1)=24`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A212698

/-- `8*a(n-1)-16*a(n-2)` -/
def P14527659835463141838.Spec : Prop :=
  ∀ n, P14527659835463141838.a n = A212698 (n + 1)

theorem P14527659835463141838.correct : P14527659835463141838.Spec := by
  intro n
  simp only [A212698, Nat.add_sub_cancel]

end A212698

/-! ## A212698.P11359217590180249666

`ogf(3/(1-8x+16x^2))`
-/

namespace A212698.P11359217590180249666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3] [1, -8, 16] n

end

end A212698.P11359217590180249666

namespace A212698

/-- `ogf(3/(1-8x+16x^2))` -/
def P11359217590180249666.Spec : Prop :=
  ∀ n, P11359217590180249666.a n = A212698 (n + 1)

end A212698

/-! ## A212698.P2253084946791425391

`∑[lcm(3, Δ[n*4^(n-1)])]`
-/

namespace A212698.P2253084946791425391
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (SequenceMachineLib.roundAway (f2 (n + 1) - f2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212698.P2253084946791425391

namespace A212698

/-- `∑[lcm(3, Δ[n*4^(n-1)])]` -/
def P2253084946791425391.Spec : Prop :=
  ∀ n, (P2253084946791425391.a n : ℤ) = A212698 (n + 1)

end A212698

/-! ## A212698.P8509058551887057299

`floor(4*(n+1)*a(n-1)/n)` with `a(0)=3`
-/

namespace A212698.P8509058551887057299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊4 * ((n + 1 : ℚ) * ((a (n - 1) : ℚ) / (n : ℚ)))⌋

end

end A212698.P8509058551887057299

namespace A212698

/-- `floor(4*(n+1)*a(n-1)/n)` -/
def P8509058551887057299.Spec : Prop :=
  ∀ n, P8509058551887057299.a n = A212698 (n + 1)

end A212698

/-! ## A212698.P6898224125178810536

`A084858(Δ[n²])`
-/

namespace A212698.P6898224125178810536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084858 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A212698.P6898224125178810536

namespace A212698

/-- `A084858(Δ[n²])` -/
def P6898224125178810536.Spec : Prop :=
  ∀ n, P6898224125178810536.a n = A212698 (n + 1)

end A212698

/-! ## A212698.P2284068785377956790

`A179608(Δ[n²])`
-/

namespace A212698.P2284068785377956790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179608 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A212698.P2284068785377956790

namespace A212698

/-- `A179608(Δ[n²])` -/
def P2284068785377956790.Spec : Prop :=
  ∀ n, P2284068785377956790.a n = A212698 (n + 1)

end A212698

/-! ## A212698.P8901707064700075888

`∑[3*A081039(n)]`
-/

namespace A212698.P8901707064700075888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A081039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212698.P8901707064700075888

namespace A212698

/-- `∑[3*A081039(n)]` -/
def P8901707064700075888.Spec : Prop :=
  ∀ n, P8901707064700075888.a n = A212698 (n + 1)

end A212698

/-! ## A212698.P10401723359776096433

`A229504(n+2)/2`
-/

namespace A212698.P10401723359776096433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229504 (n + 2) : ℚ) / 2

end

end A212698.P10401723359776096433

namespace A212698

/-- `A229504(n+2)/2` -/
def P10401723359776096433.Spec : Prop :=
  ∀ n, P10401723359776096433.a n = (A212698 (n + 1) : ℚ)

end A212698

/-! ## A212698.P7775819189308745216

`∑[3*Δ[A002697(n)]]`
-/

namespace A212698.P7775819189308745216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212698.P7775819189308745216

namespace A212698

/-- `∑[3*Δ[A002697(n)]]` -/
def P7775819189308745216.Spec : Prop :=
  ∀ n, P7775819189308745216.a n = A212698 (n + 1)

end A212698

/-! ## A212698.P12385857126243693745

`A128543(2*(n+1))/2`
-/

namespace A212698.P12385857126243693745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128543 (2 * (n + 1)) : ℚ) / 2

end

end A212698.P12385857126243693745

namespace A212698

/-- `A128543(2*(n+1))/2` -/
def P12385857126243693745.Spec : Prop :=
  ∀ n, P12385857126243693745.a n = (A212698 (n + 1) : ℚ)

end A212698

/-! ## A212698.P14747442698328042907

`3*A002699(n+1)/2`
-/

namespace A212698.P14747442698328042907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A002699 (n + 1) : ℚ) / 2

end

end A212698.P14747442698328042907

namespace A212698

/-- `3*A002699(n+1)/2` -/
def P14747442698328042907.Spec : Prop :=
  ∀ n, P14747442698328042907.a n = (A212698 (n + 1) : ℚ)

end A212698

/-! ## A212698.P11692143997635876102

`(n+1)*A002023(n)/2`
-/

namespace A212698.P11692143997635876102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A002023 n : ℚ) / 2

end

end A212698.P11692143997635876102

namespace A212698

/-- `(n+1)*A002023(n)/2` -/
def P11692143997635876102.Spec : Prop :=
  ∀ n, P11692143997635876102.a n = (A212698 (n + 1) : ℚ)

end A212698

/-! ## A212698.P13327981819707259999

`record[3*A002697(abs(1-n))]`
-/

namespace A212698.P13327981819707259999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002697 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212698.P13327981819707259999

namespace A212698

/-- `record[3*A002697(abs(1-n))]` -/
def P13327981819707259999.Spec : Prop :=
  ∀ n, P13327981819707259999.a n = A212698 (n + 1)

end A212698

/-! ## A212698.P13493917331183916124

`abs((n+1)*Δ[A000079(n)²])`
-/

namespace A212698.P13493917331183916124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * (f1 (n + 1) - f1 n)|

end

end A212698.P13493917331183916124

namespace A212698

/-- `abs((n+1)*Δ[A000079(n)²])` -/
def P13493917331183916124.Spec : Prop :=
  ∀ n, P13493917331183916124.a n = A212698 (n + 1)

end A212698

/-! ## A212698.P17798495118970695411

`(A074494(2*(n+1))+1)/2`
-/

namespace A212698.P17798495118970695411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074494 (2 * (n + 1)) + 1 : ℚ) / 2

end

end A212698.P17798495118970695411

namespace A212698

/-- `(A074494(2*(n+1))+1)/2` -/
def P17798495118970695411.Spec : Prop :=
  ∀ n, P17798495118970695411.a n = (A212698 (n + 1) : ℚ)

end A212698

/-!
# A212699: Main transitions in systems of n particles with spin 2.

The programs for A212699, the canonical program `A212699.P12628470739363750558` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212699 has offset 1).

The definition of A212699 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212699.P2484213549185466937

`4*(n+1)*5^n`
-/

namespace A212699.P2484213549185466937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * ((n + 1) * 5 ^ n)

end

end A212699.P2484213549185466937

namespace A212699

/-- `4*(n+1)*5^n` -/
def P2484213549185466937.Spec : Prop :=
  ∀ n, (P2484213549185466937.a n : ℤ) = A212699 (n + 1)

theorem P2484213549185466937.correct : P2484213549185466937.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A212699, Nat.add_sub_cancel, A212699.P2484213549185466937.a, A212699.P12628470739363750558.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A212699, Nat.add_sub_cancel, A212699.P2484213549185466937.a, A212699.P12628470739363750558.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A212699

/-! ## A212699.P12628470739363750558

`10*a(n-1)-25*a(n-2)` with `a(0)=4, a(1)=40`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A212699

/-- `10*a(n-1)-25*a(n-2)` -/
def P12628470739363750558.Spec : Prop :=
  ∀ n, P12628470739363750558.a n = A212699 (n + 1)

theorem P12628470739363750558.correct : P12628470739363750558.Spec := by
  intro n
  simp only [A212699, Nat.add_sub_cancel]

end A212699

/-! ## A212699.P14154077535212501871

`ogf(4/(1-10x+25x^2))`
-/

namespace A212699.P14154077535212501871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4] [1, -10, 25] n

end

end A212699.P14154077535212501871

namespace A212699

/-- `ogf(4/(1-10x+25x^2))` -/
def P14154077535212501871.Spec : Prop :=
  ∀ n, P14154077535212501871.a n = A212699 (n + 1)

end A212699

/-! ## A212699.P2305034440359233136

`record[(10/n+5)*a(n-2)]` with `a(0)=4, a(1)=0`
-/

namespace A212699.P2305034440359233136
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 0] fun n f1 =>
  (10 / (n : ℚ) + 5) * f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212699.P2305034440359233136

namespace A212699

/-- `record[(10/n+5)*a(n-2)]` -/
def P2305034440359233136.Spec : Prop :=
  ∀ n, P2305034440359233136.a n = (A212699 (n + 1) : ℚ)

end A212699

/-! ## A212699.P16108992074960795860

`floor(5*(n+1)*a(n-1)/n)` with `a(0)=4`
-/

namespace A212699.P16108992074960795860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌊5 * ((n + 1 : ℚ) * ((a (n - 1) : ℚ) / (n : ℚ)))⌋

end

end A212699.P16108992074960795860

namespace A212699

/-- `floor(5*(n+1)*a(n-1)/n)` -/
def P16108992074960795860.Spec : Prop :=
  ∀ n, P16108992074960795860.a n = A212699 (n + 1)

end A212699

/-! ## A212699.P14435074214638496908

`Δ[5^n-ceil(acot(n))]+a(n-1)/(1-4/5)` with `a(0)=4`
-/

namespace A212699.P14435074214638496908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) - ⌈SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  (f1 (n + 1) - f1 n : ℚ) + a (n - 1) / (1 - (4 : ℚ) / 5)

end

end A212699.P14435074214638496908

namespace A212699

/-- `Δ[5^n-ceil(acot(n))]+a(n-1)/(1-4/5)` -/
def P14435074214638496908.Spec : Prop :=
  ∀ n, P14435074214638496908.a n = (A212699 (n + 1) : ℚ)

end A212699

/-! ## A212699.P17528945770462600173

`∑[4*A081040(n)]`
-/

namespace A212699.P17528945770462600173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A081040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212699.P17528945770462600173

namespace A212699

/-- `∑[4*A081040(n)]` -/
def P17528945770462600173.Spec : Prop :=
  ∀ n, P17528945770462600173.a n = A212699 (n + 1)

end A212699

/-! ## A212699.P4124539601221548094

`(n+1)*A199215(n)-(n+1)`
-/

namespace A212699.P4124539601221548094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A199215 n - (n + 1 : ℤ)

end

end A212699.P4124539601221548094

namespace A212699

/-- `(n+1)*A199215(n)-(n+1)` -/
def P4124539601221548094.Spec : Prop :=
  ∀ n, P4124539601221548094.a n = A212699 (n + 1)

end A212699

/-! ## A212699.P5329639539974587057

`(n+1)*Δ[A104745(n)]-n-1`
-/

namespace A212699.P5329639539974587057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104745 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n) - (n : ℤ) - 1

end

end A212699.P5329639539974587057

namespace A212699

/-- `(n+1)*Δ[A104745(n)]-n-1` -/
def P5329639539974587057.Spec : Prop :=
  ∀ n, P5329639539974587057.a n = A212699 (n + 1)

end A212699

/-! ## A212699.P11220888701453885677

`record[Δ[A056451(n)]*A029579(n)]`
-/

namespace A212699.P11220888701453885677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056451 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A029579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212699.P11220888701453885677

namespace A212699

/-- `record[Δ[A056451(n)]*A029579(n)]` -/
def P11220888701453885677.Spec : Prop :=
  ∀ n, P11220888701453885677.a n = A212699 (n + 1)

end A212699

/-! ## A212699.P3385490268252682095

`A081040(n+1)-A000351(n+1)`
-/

namespace A212699.P3385490268252682095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081040 (n + 1) - A000351 (n + 1)

end

end A212699.P3385490268252682095

namespace A212699

/-- `A081040(n+1)-A000351(n+1)` -/
def P3385490268252682095.Spec : Prop :=
  ∀ n, P3385490268252682095.a n = A212699 (n + 1)

end A212699

/-! ## A212699.P8474643266673191957

`A026955(2*(n+1))-A026395(2*(n+1))`
-/

namespace A212699.P8474643266673191957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026955 (2 * (n + 1)) - A026395 (2 * (n + 1))

end

end A212699.P8474643266673191957

namespace A212699

/-- `A026955(2*(n+1))-A026395(2*(n+1))` -/
def P8474643266673191957.Spec : Prop :=
  ∀ n, P8474643266673191957.a n = A212699 (n + 1)

end A212699

/-! ## A212699.P932837933637419929

`A000351(n)+A000351(n)*A004767(n)`
-/

namespace A212699.P932837933637419929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n + A000351 n * A004767 n

end

end A212699.P932837933637419929

namespace A212699

/-- `A000351(n)+A000351(n)*A004767(n)` -/
def P932837933637419929.Spec : Prop :=
  ∀ n, P932837933637419929.a n = A212699 (n + 1)

end A212699

/-! ## A212699.P4309511519335504354

`A020729(n)*4*(n+1)/2`
-/

namespace A212699.P4309511519335504354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020729 n * (4 * (n + 1) : ℤ) : ℚ) / 2

end

end A212699.P4309511519335504354

namespace A212699

/-- `A020729(n)*4*(n+1)/2` -/
def P4309511519335504354.Spec : Prop :=
  ∀ n, P4309511519335504354.a n = (A212699 (n + 1) : ℚ)

end A212699

/-! ## A212699.P9795875524384955589

`Δ[n*A024049(n)]-A024049(n)`
-/

namespace A212699.P9795875524384955589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A024049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A024049 n

end

end A212699.P9795875524384955589

namespace A212699

/-- `Δ[n*A024049(n)]-A024049(n)` -/
def P9795875524384955589.Spec : Prop :=
  ∀ n, P9795875524384955589.a n = A212699 (n + 1)

end A212699

/-! ## A212699.P13453884768535535735

`Δ[n*A034474(n)]-A034474(n)`
-/

namespace A212699.P13453884768535535735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A034474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A034474 n

end

end A212699.P13453884768535535735

namespace A212699

/-- `Δ[n*A034474(n)]-A034474(n)` -/
def P13453884768535535735.Spec : Prop :=
  ∀ n, P13453884768535535735.a n = A212699 (n + 1)

end A212699

/-! ## A212699.P13821688368188299814

`Δ[n*A242328(n)]-A242328(n)`
-/

namespace A212699.P13821688368188299814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A242328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A242328 n

end

end A212699.P13821688368188299814

namespace A212699

/-- `Δ[n*A242328(n)]-A242328(n)` -/
def P13821688368188299814.Spec : Prop :=
  ∀ n, P13821688368188299814.a n = A212699 (n + 1)

end A212699

/-! ## A212699.P12761064023255025600

`A004277(n+1)*A133632(2*(n+1))/2`
-/

namespace A212699.P12761064023255025600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (n + 1) * A133632 (2 * (n + 1)) : ℚ) / 2

end

end A212699.P12761064023255025600

namespace A212699

/-- `A004277(n+1)*A133632(2*(n+1))/2` -/
def P12761064023255025600.Spec : Prop :=
  ∀ n, P12761064023255025600.a n = (A212699 (n + 1) : ℚ)

end A212699

/-! ## A212699.P10572630554864364867

`A036291(n+1)-(A036291(n)+A000351(n))`
-/

namespace A212699.P10572630554864364867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036291 (n + 1) - (A036291 n + A000351 n)

end

end A212699.P10572630554864364867

namespace A212699

/-- `A036291(n+1)-(A036291(n)+A000351(n))` -/
def P10572630554864364867.Spec : Prop :=
  ∀ n, P10572630554864364867.a n = A212699 (n + 1)

end A212699

/-! ## A212699.P6023157799903828513

`5*(n+1)*a(n-1)/n` with `a(0)=4`
-/

namespace A212699.P6023157799903828513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  5 * ((n + 1 : ℚ) * a (n - 1)) / (n : ℚ)

end

end A212699.P6023157799903828513

namespace A212699

/-- `5*(n+1)*a(n-1)/n` -/
def P6023157799903828513.Spec : Prop :=
  ∀ n, P6023157799903828513.a n = (A212699 (n + 1) : ℚ)

end A212699

