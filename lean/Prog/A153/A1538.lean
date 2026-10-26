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
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B008.C000
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C022
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A153800: Indices of perfect numbers (A000396) in the sequence of multiply-perfect numbers (A007691).

The programs for A153800, there is no canonical definition to state claims against.
-/

/-! ## A153800.P13405860633246410455

`A153802(n+1)+A000040(n+1)`
-/

namespace A153800.P13405860633246410455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153802 (n + 1) + A000040 (n + 1)

end

end A153800.P13405860633246410455

/-! ## A153800.P9716369687396021170

`A153803(n+1)+A000043(n+1)`
-/

namespace A153800.P9716369687396021170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153803 (n + 1) + A000043 (n + 1)

end

end A153800.P9716369687396021170

/-! ## A153800.P9152133948499904057

`A153802(n+1)+A069676(n+1)`
-/

namespace A153800.P9152133948499904057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153802 (n + 1) + A069676 (n + 1)

end

end A153800.P9152133948499904057

/-! ## A153800.P13170811513429000257

`A153802(n+1)+A069684(n+1)`
-/

namespace A153800.P13170811513429000257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153802 (n + 1) + A069684 (n + 1)

end

end A153800.P13170811513429000257

/-! ## A153800.P11996582639865893800

`A153802(n+1)+A095320(n+1)`
-/

namespace A153800.P11996582639865893800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153802 (n + 1) + A095320 (n + 1)

end

end A153800.P11996582639865893800

/-!
# A153801: Index of Mersenne number A000225 that is also Mersenne prime A000668, minus n-th prime: a(n) = A000043(n) - A000040(n).

The programs for A153801, there is no canonical definition to state claims against.
-/

/-! ## A153801.P6088853689257880157

`A000043(n+1)-A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A153801.P6088853689257880157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1) - A000040 (n + 1)

end

end A153801.P6088853689257880157

/-! ## A153801.P14015978166316582971

`2*A153804(n+1)`
-/

namespace A153801.P14015978166316582971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153804 (n + 1)

end

end A153801.P14015978166316582971

/-! ## A153801.P5571651980103951122

`A090748(n+1)-∑[A075526(n)]`
-/

namespace A153801.P5571651980103951122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090748 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153801.P5571651980103951122

/-! ## A153801.P2635880292428259331

`A000043(n+1)-Δ[A007504(n)]`
-/

namespace A153801.P2635880292428259331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1) - (f1 (n + 1) - f1 n)

end

end A153801.P2635880292428259331

/-! ## A153801.P17867236531729053850

`A000043(n+1)-record[A051698(n)]`
-/

namespace A153801.P17867236531729053850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153801.P17867236531729053850

/-!
# A153802: a(n) = A153800(n) - A000040(n).

The programs for A153802, there is no canonical definition to state claims against.
-/

/-! ## A153802.P18139268789474761363

`A153800(n+1)-A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A153802.P18139268789474761363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153800 (n + 1) - A000040 (n + 1)

end

end A153802.P18139268789474761363

/-! ## A153802.P6141771280345011882

`A153800(n+1)-Δ[A007504(n)]`
-/

namespace A153802.P6141771280345011882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153800 (n + 1) - (f1 (n + 1) - f1 n)

end

end A153802.P6141771280345011882

/-! ## A153802.P10941779594533970448

`A153803(n+1)+A153801(n+1)`
-/

namespace A153802.P10941779594533970448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153803 (n + 1) + A153801 (n + 1)

end

end A153802.P10941779594533970448

/-! ## A153802.P13442095115208296165

`A153800(n+1)-A038618(n+1)`
-/

namespace A153802.P13442095115208296165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153800 (n + 1) - A038618 (n + 1)

end

end A153802.P13442095115208296165

/-!
# A153803: a(n) = A153800(n) - A000043(n).

The programs for A153803, there is no canonical definition to state claims against.
-/

/-! ## A153803.P8485521123826987487

`A153800(n+1)-A000043(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A153803.P8485521123826987487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153800 (n + 1) - A000043 (n + 1)

end

end A153803.P8485521123826987487

/-! ## A153803.P9399363555229227917

`A153802(n+1)-A153801(n+1)`
-/

namespace A153803.P9399363555229227917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153802 (n + 1) - A153801 (n + 1)

end

end A153803.P9399363555229227917

/-! ## A153803.P8076274034422882764

`A153800(n+1)-eq[0, A127587(n)]`
-/

namespace A153803.P8076274034422882764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153800 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A153803.P8076274034422882764

/-! ## A153803.P169407981683638649

`A153800(n+1)-eq[1, A046800(n)]`
-/

namespace A153803.P169407981683638649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153800 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A153803.P169407981683638649

/-! ## A153803.P5128411584529478118

`A153800(n+1)-eq[1, A059959(n)]`
-/

namespace A153803.P5128411584529478118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059959 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153800 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A153803.P5128411584529478118

/-!
# A153804: a(n) = A153801(n)/2.

The programs for A153804, there is no canonical definition to state claims against.
-/

/-! ## A153804.P3365995504027677639

`A153801(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A153804.P3365995504027677639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153801 (n + 1) : ℚ) / 2

end

end A153804.P3365995504027677639

/-! ## A153804.P14710686546394826296

`(A000043(n+1)-A000040(n+1))/2`
-/

namespace A153804.P14710686546394826296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000043 (n + 1) - A000040 (n + 1) : ℚ) / 2

end

end A153804.P14710686546394826296

/-! ## A153804.P9019875362774469686

`(A000043(n+1)-Δ[A007504(n)])/2`
-/

namespace A153804.P9019875362774469686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000043 (n + 1) - (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A153804.P9019875362774469686

/-! ## A153804.P7414372216565203515

`(A050475(n+1)-A008864(n+1))/2`
-/

namespace A153804.P7414372216565203515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050475 (n + 1) - A008864 (n + 1) : ℚ) / 2

end

end A153804.P7414372216565203515

/-! ## A153804.P7569797783340274988

`(A000043(n+1)-A095320(n+1))/2`
-/

namespace A153804.P7569797783340274988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000043 (n + 1) - A095320 (n + 1) : ℚ) / 2

end

end A153804.P7569797783340274988

/-!
# A153805: Decimal expansion of 3-e.

The programs for A153805, there is no canonical definition to state claims against.
-/

/-! ## A153805.P16964490786853523794

`9-A001113(n+1)`
-/

namespace A153805.P16964490786853523794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A001113 (n + 1 + 1)

end

end A153805.P16964490786853523794

/-! ## A153805.P3443948942955937469

`a(n-1)-Δ[A001113(n)]` with `a(0)=2`
-/

namespace A153805.P3443948942955937469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n)

end

end A153805.P3443948942955937469

/-! ## A153805.P15331727666263016106

`A187747(n+1)+A153799(n)`
-/

namespace A153805.P15331727666263016106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 (n + 1) + A153799 n

end

end A153805.P15331727666263016106

/-! ## A153805.P1761427148036803637

`A121239(n+1)`
-/

namespace A153805.P1761427148036803637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121239 (n + 1 + 1)

end

end A153805.P1761427148036803637

/-! ## A153805.P16089259068935506842

`9-A091131(n+1)`
-/

namespace A153805.P16089259068935506842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A091131 (n + 1 + 1)

end

end A153805.P16089259068935506842

/-! ## A153805.P6660714422795632412

`9-Δ[A197563(n)-A046974(n)]`
-/

namespace A153805.P6660714422795632412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197563 n - A046974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (f1 (n + 1) - f1 n)

end

end A153805.P6660714422795632412

/-! ## A153805.P17376961121440115785

`A187747(n+1)+A030644(n+1)`
-/

namespace A153805.P17376961121440115785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 (n + 1) + A030644 (n + 1 + 1)

end

end A153805.P17376961121440115785

/-! ## A153805.P2802757671280331156

`9-A001355(2*(n+2))`
-/

namespace A153805.P2802757671280331156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A001355 (2 * (n + 2))

end

end A153805.P2802757671280331156

/-! ## A153805.P5018329322917899449

`7-∑[A095942(n+1)]`
-/

namespace A153805.P5018329322917899449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153805.P5018329322917899449

/-!
# A153806: Strobogrammatic cyclops numbers.

The programs for A153806, there is no canonical definition to state claims against.
-/

/-! ## A153806.P10323470824503852486

`∩[A000787(n+1), A134808(n+1)]`
-/

namespace A153806.P10323470824503852486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153806.P10323470824503852486

/-! ## A153806.P1387113505110674662

`∩[A000787(n+1), A043489(n+1)]`
-/

namespace A153806.P1387113505110674662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153806.P1387113505110674662

/-!
# A153807: Strobogrammatic cyclops primes.

The programs for A153807, there is no canonical definition to state claims against.
-/

/-! ## A153807.P8717661650574052518

`∩[A007597(n+1), A153806(n+1)]`
-/

namespace A153807.P8717661650574052518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153807.P8717661650574052518

/-! ## A153807.P7209280127729086217

`∩[A018847(n+1), A153806(n+1)]`
-/

namespace A153807.P7209280127729086217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153807.P7209280127729086217

/-! ## A153807.P5991530058892539971

`∩[A080788(n+1), A153806(n+1)]`
-/

namespace A153807.P5991530058892539971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153807.P5991530058892539971

/-! ## A153807.P11659856450862481717

`∩[A057770(n+1), A153806(n+1)]`
-/

namespace A153807.P11659856450862481717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153807.P11659856450862481717

/-! ## A153807.P7532720856252800346

`∩[A153806(n+1), A178316(n+1)]`
-/

namespace A153807.P7532720856252800346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153807.P7532720856252800346

/-!
# A153808: 8 times octagonal numbers: 8*n*(3*n-2).

The programs for A153808, the canonical program `A153808.P12582623721954130915` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153808 has offset 0).

The definition of A153808 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*n*(3*n-2)` (program `A153808.P12582623721954130915`, by `A153808.P12582623721954130915.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153808.P16677471052784592552

`24*n²-16*n`
-/

namespace A153808.P16677471052784592552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (24 * n ^ 2 : ℤ) - (16 * n : ℤ)

end

end A153808.P16677471052784592552

namespace A153808

/-- `24*n²-16*n` -/
def P16677471052784592552.Spec : Prop :=
  ∀ n, P16677471052784592552.a n = A153808 n

theorem P16677471052784592552.correct : P16677471052784592552.Spec := by
  intro n
  simp only [A153808, Nat.add_sub_cancel, A153808.P16677471052784592552.a, A153808.P12582623721954130915.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A153808

/-! ## A153808.P12582623721954130915

`8*n*(3*n-2)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153808

/-- `8*n*(3*n-2)` -/
def P12582623721954130915.Spec : Prop :=
  ∀ n, P12582623721954130915.a n = A153808 n

theorem P12582623721954130915.correct : P12582623721954130915.Spec := by
  intro n
  simp only [A153808]

end A153808

/-! ## A153808.P326182965168634934

`∑[a(n-1)+48]` with `a(0)=0, a(1)=8`
-/

namespace A153808.P326182965168634934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 8] fun n f1 =>
  f1 (n - 1) + 48

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153808.P326182965168634934

namespace A153808

/-- `∑[a(n-1)+48]` -/
def P326182965168634934.Spec : Prop :=
  ∀ n, (P326182965168634934.a n : ℤ) = A153808 n

end A153808

/-! ## A153808.P15069408373921350078

`A187173(2*(n+1))/2`
-/

namespace A153808.P15069408373921350078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187173 (2 * (n + 1)) : ℚ) / 2

end

end A153808.P15069408373921350078

namespace A153808

/-- `A187173(2*(n+1))/2` -/
def P15069408373921350078.Spec : Prop :=
  ∀ n, P15069408373921350078.a n = (A153808 n : ℚ)

end A153808

/-! ## A153808.P16638167989804924121

`A008590(A000567(n))`
-/

namespace A153808.P16638167989804924121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A000567 n).toNat

end

end A153808.P16638167989804924121

namespace A153808

/-- `A008590(A000567(n))` -/
def P16638167989804924121.Spec : Prop :=
  ∀ n, P16638167989804924121.a n = A153808 n

end A153808

/-! ## A153808.P9788821183249480233

`A181390(A271740(n))`
-/

namespace A153808.P9788821183249480233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181390 (A271740 n).toNat

end

end A153808.P9788821183249480233

namespace A153808

/-- `A181390(A271740(n))` -/
def P9788821183249480233.Spec : Prop :=
  ∀ n, P9788821183249480233.a n = A153808 n

end A153808

/-!
# A153809: Complement of A134928.

The programs for A153809, there is no canonical definition to state claims against.
-/

/-! ## A153809.P1897469362480798126

`comp[A134928(n+1)-1]+1`
-/

namespace A153809.P1897469362480798126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134928 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A153809.P1897469362480798126

/-! ## A153809.P3128667222057795156

`comp[A134930(n+2)-1]+1`
-/

namespace A153809.P3128667222057795156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134930 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A153809.P3128667222057795156

/-! ## A153809.P1701239762893211421

`xor(C(3, n²), comp[A134930(n+1)])`
-/

namespace A153809.P1701239762893211421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (Nat.choose 3 (n ^ 2)) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A153809.P1701239762893211421

/-! ## A153809.P12354527589324782540

`comp[A023443(A134928(n+1))]+1`
-/

namespace A153809.P12354527589324782540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A134928 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A153809.P12354527589324782540

/-! ## A153809.P3128333640360617637

`comp[A134930(n+1)-A000038(n)]`
-/

namespace A153809.P3128333640360617637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134930 (n + 1) - A000038 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153809.P3128333640360617637

/-! ## A153809.P14110799503937418307

`comp[A134930(n+1)%A007483(n)]`
-/

namespace A153809.P14110799503937418307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134930 (n + 1)) (A007483 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153809.P14110799503937418307

/-!
# A153810: Decimal expansion of 1 - gamma, where gamma is Euler's constant (or the Euler-Mascheroni constant).

The programs for A153810, there is no canonical definition to state claims against.
-/

/-! ## A153810.P242273479807611573

`9-A001620(n)`
-/

namespace A153810.P242273479807611573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A001620 n

end

end A153810.P242273479807611573

/-! ## A153810.P4264502468268882582

`9-Δ[A093084(n)]`
-/

namespace A153810.P4264502468268882582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (f1 (n + 1) - f1 n)

end

end A153810.P4264502468268882582

/-! ## A153810.P5873044971945062566

`A061601(Δ[A093084(n)])`
-/

namespace A153810.P5873044971945062566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (f1 (n + 1) - f1 n).toNat

end

end A153810.P5873044971945062566

/-! ## A153810.P18281334818568853397

`A001489(Δ[A093084(n)])+9`
-/

namespace A153810.P18281334818568853397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (f1 (n + 1) - f1 n).toNat + 9

end

end A153810.P18281334818568853397

/-! ## A153810.P16427458326371031111

`9-(A093084(n+1)-A093084(n))`
-/

namespace A153810.P16427458326371031111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (A093084 (n + 1) - A093084 n)

end

end A153810.P16427458326371031111

/-! ## A153810.P2908468055674458829

`A061601(A093084(n+1)-A093084(n))`
-/

namespace A153810.P2908468055674458829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A093084 (n + 1) - A093084 n).toNat

end

end A153810.P2908468055674458829

/-! ## A153810.P15447370626370565149

`A319026(n)*A320748(A320748(a(n-1)+1)+1)` with `a(0)=4`
-/

namespace A153810.P15447370626370565149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A319026 n * A320748 (A320748 (a (n - 1) + 1).toNat + 1).toNat

end

end A153810.P15447370626370565149

/-!
# A153812: Primes p such that 6*p^2+1 is also prime.

The programs for A153812, there is no canonical definition to state claims against.
-/

/-! ## A153812.P12037447662120118368

`p?[n*A102853(2*n)-n]`
-/

namespace A153812.P12037447662120118368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A102853 (2 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153812.P12037447662120118368

/-! ## A153812.P3671410491560278971

`eq[A102853(2*n)+n, A003415(2*n)]`
-/

namespace A153812.P3671410491560278971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102853 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153812.P3671410491560278971

/-! ## A153812.P4014537038232348782

`eq[A102853(2*n)+n, A302055(2*n)]`
-/

namespace A153812.P4014537038232348782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102853 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153812.P4014537038232348782

/-! ## A153812.P599991361223169264

`A000040(eq[1, A112745(n+1)]+1)`
-/

namespace A153812.P599991361223169264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A153812.P599991361223169264

/-! ## A153812.P18017446481210719172

`p?[A000040(n+1)*A112745(n+1)]`
-/

namespace A153812.P18017446481210719172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A112745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153812.P18017446481210719172

/-!
# A153813: Decimal expansion of log_12 (8).

The programs for A153813, there is no canonical definition to state claims against.
-/

/-! ## A153813.P2833982535604233090

`9-A154969(n+1)`
-/

namespace A153813.P2833982535604233090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A154969 (n + 1 + 1)

end

end A153813.P2833982535604233090

/-!
# A153814: a(n) = 1001*n.

The programs for A153814, the canonical program `A153814.P11607196311472420382` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153814 has offset 1).

The definition of A153814 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153814.P11607196311472420382

`13*77*(n+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153814

/-- `13*77*(n+1)` -/
def P11607196311472420382.Spec : Prop :=
  ∀ n, (P11607196311472420382.a n : ℤ) = A153814 (n + 1)

theorem P11607196311472420382.correct : P11607196311472420382.Spec := by
  intro n
  simp only [A153814, Nat.add_sub_cancel]

end A153814

/-!
# A153815: Indices of nontrivial zeros of the Riemann zeta function where the real part of zeta'(s) becomes negative.

The programs for A153815, there is no canonical definition to state claims against.
-/

/-! ## A153815.P4865755796179214713

`∪[A282793(n+1), A282794(n+1)]`
-/

namespace A153815.P4865755796179214713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A153815.P4865755796179214713

/-! ## A153815.P15161089302855443972

`A134451(A042919(n))+A114856(n+1)`
-/

namespace A153815.P15161089302855443972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A042919 n).toNat + A114856 (n + 1)

end

end A153815.P15161089302855443972

/-! ## A153815.P8787542774897511872

`A305936(3*n+2)+A114856(A032555(n+1))`
-/

namespace A153815.P8787542774897511872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305936 (3 * n + 2) + A114856 (A032555 (n + 1)).toNat

end

end A153815.P8787542774897511872

/-! ## A153815.P1226670795071335414

`A246588(A356063(2*(n+2)))+A114856(n+1)`
-/

namespace A153815.P1226670795071335414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246588 (A356063 (2 * (n + 2))).toNat + A114856 (n + 1)

end

end A153815.P1226670795071335414

/-!
# A153816: a(n) = Sum_{i=1..(10^n-1)/9} floor(((10^n-1)/9)/i).

The programs for A153816, the canonical program `A153816.P9630201049829707410` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153816 has offset 1).

The definition of A153816 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153816.P9630201049829707410

`A006218(A002275(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A153816

/-- `A006218(A002275(n+1))` -/
def P9630201049829707410.Spec : Prop :=
  ∀ n, P9630201049829707410.a n = A153816 (n + 1)

theorem P9630201049829707410.correct : P9630201049829707410.Spec := by
  intro n
  simp only [A153816, Nat.add_sub_cancel]

end A153816

/-!
# A153817: a(n)=Sum_{k=1..n} floor((n*k)/(n+k)).

The programs for A153817, there is no canonical definition to state claims against.
-/

/-! ## A153817.P17165137420796030573

`∑[A000038(A113336(n+1))+n-A213633(n+1)]`
-/

namespace A153817.P17165137420796030573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A113336 (n + 1)).toNat + (n : ℤ) - A213633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153817.P17165137420796030573

/-! ## A153817.P10980243276383352157

`∑[n]-A321368(A000124(n))`
-/

namespace A153817.P10980243276383352157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A321368 (A000124 n).toNat

end

end A153817.P10980243276383352157

/-! ## A153817.P11187225594686699597

`∑[A213634(n+1)-A057427(A077998(n))]`
-/

namespace A153817.P11187225594686699597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213634 (n + 1) - A057427 (A077998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153817.P11187225594686699597

/-! ## A153817.P11294091460789705598

`A121262(A000108(n))+A002088(n)`
-/

namespace A153817.P11294091460789705598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A000108 n).toNat + A002088 n

end

end A153817.P11294091460789705598

/-! ## A153817.P5838055545798684851

`A285125(A131524(3*n+4))+A002088(n)`
-/

namespace A153817.P5838055545798684851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285125 (A131524 (3 * n + 4)).toNat + A002088 n

end

end A153817.P5838055545798684851

/-!
# A153818: a(n) = Sum_{k=1..n} floor(n^2/k^2).

The programs for A153818, the canonical program `A153818.P11151295241026271931` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153818 has offset 1).

The definition of A153818 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013936, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A153818.P11151295241026271931

`A013936((n+1)²)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A153818

/-- `A013936((n+1)²)` -/
def P11151295241026271931.Spec : Prop :=
  ∀ n, P11151295241026271931.a n = A153818 (n + 1)

theorem P11151295241026271931.correct : P11151295241026271931.Spec := by
  intro n
  simp only [A153818, Nat.add_sub_cancel]

end A153818

/-! ## A153818.P15567913935780081409

`or(char[1], A013936((n+1)^2))`
-/

namespace A153818.P15567913935780081409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A013936 ((n + 1) ^ 2))

end

end A153818.P15567913935780081409

namespace A153818

/-- `or(char[1], A013936((n+1)^2))` -/
def P15567913935780081409.Spec : Prop :=
  ∀ n, P15567913935780081409.a n = A153818 (n + 1)

end A153818

/-! ## A153818.P12233835844188720392

`record[A013936(A117910(n)²)]`
-/

namespace A153818.P12233835844188720392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013936 (A117910 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153818.P12233835844188720392

namespace A153818

/-- `record[A013936(A117910(n)²)]` -/
def P12233835844188720392.Spec : Prop :=
  ∀ n, P12233835844188720392.a n = A153818 (n + 1)

end A153818

/-! ## A153818.P13431940774396340972

`record[A013936(A133310(n)²)]`
-/

namespace A153818.P13431940774396340972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013936 (A133310 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153818.P13431940774396340972

namespace A153818

/-- `record[A013936(A133310(n)²)]` -/
def P13431940774396340972.Spec : Prop :=
  ∀ n, P13431940774396340972.a n = A153818 (n + 1)

end A153818

/-! ## A153818.P13036051583643440469

`record[A013936(A134478(n)²)]`
-/

namespace A153818.P13036051583643440469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013936 (A134478 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153818.P13036051583643440469

namespace A153818

/-- `record[A013936(A134478(n)²)]` -/
def P13036051583643440469.Spec : Prop :=
  ∀ n, P13036051583643440469.a n = A153818 (n + 1)

end A153818

/-! ## A153818.P7745329826743764955

`A000027(A013936((n+1)^2))`
-/

namespace A153818.P7745329826743764955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A013936 ((n + 1) ^ 2)).toNat

end

end A153818.P7745329826743764955

namespace A153818

/-- `A000027(A013936((n+1)^2))` -/
def P7745329826743764955.Spec : Prop :=
  ∀ n, P7745329826743764955.a n = A153818 (n + 1)

end A153818

/-! ## A153818.P9552022497820591919

`A013936((n+1)^2)+A000007(n+1)`
-/

namespace A153818.P9552022497820591919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013936 ((n + 1) ^ 2) + A000007 (n + 1)

end

end A153818.P9552022497820591919

namespace A153818

/-- `A013936((n+1)^2)+A000007(n+1)` -/
def P9552022497820591919.Spec : Prop :=
  ∀ n, P9552022497820591919.a n = A153818 (n + 1)

theorem P9552022497820591919.correct : P9552022497820591919.Spec := by
  intro n
  simp only [A153818, Nat.add_sub_cancel, A153818.P9552022497820591919.a, A153818.P11151295241026271931.a, A000007, A000007.P6599383543502402472.a, A013936, A013936.P11699563197597450949.f2, A013936.P11699563197597450949.f1, A013936.P11699563197597450949.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153818

/-! ## A153818.P563779796815284004

`A013936((n+1)^2)^A019427(2*n)`
-/

namespace A153818.P563779796815284004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013936 ((n + 1) ^ 2) : ℚ) ^ (A019427 (2 * n) : ℤ)

end

end A153818.P563779796815284004

namespace A153818

/-- `A013936((n+1)^2)^A019427(2*n)` -/
def P563779796815284004.Spec : Prop :=
  ∀ n, P563779796815284004.a n = (A153818 (n + 1) : ℚ)

end A153818

/-! ## A153818.P6495342848211312923

`A007318(C(2, n))*A013936((n+1)^2)`
-/

namespace A153818.P6495342848211312923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A013936 ((n + 1) ^ 2)

end

end A153818.P6495342848211312923

namespace A153818

/-- `A007318(C(2, n))*A013936((n+1)^2)` -/
def P6495342848211312923.Spec : Prop :=
  ∀ n, P6495342848211312923.a n = A153818 (n + 1)

end A153818

/-! ## A153818.P9535638271210008685

`A013936((n+1)^2)%∑[A000040(n+3)]`
-/

namespace A153818.P9535638271210008685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013936 ((n + 1) ^ 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A153818.P9535638271210008685

namespace A153818

/-- `A013936((n+1)^2)%∑[A000040(n+3)]` -/
def P9535638271210008685.Spec : Prop :=
  ∀ n, P9535638271210008685.a n = A153818 (n + 1)

end A153818

/-! ## A153818.P6839532100605019533

`A014963(4*n+6)*A013936((n+1)^2)`
-/

namespace A153818.P6839532100605019533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * A013936 ((n + 1) ^ 2)

end

end A153818.P6839532100605019533

namespace A153818

/-- `A014963(4*n+6)*A013936((n+1)^2)` -/
def P6839532100605019533.Spec : Prop :=
  ∀ n, P6839532100605019533.a n = A153818 (n + 1)

end A153818

/-! ## A153818.P11192291140809173546

`A013936((n+1)^2)+A008683(12*n+8)`
-/

namespace A153818.P11192291140809173546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013936 ((n + 1) ^ 2) + A008683 (12 * n + 8)

end

end A153818.P11192291140809173546

namespace A153818

/-- `A013936((n+1)^2)+A008683(12*n+8)` -/
def P11192291140809173546.Spec : Prop :=
  ∀ n, P11192291140809173546.a n = A153818 (n + 1)

end A153818

/-! ## A153818.P4006908093467080505

`A013936((n+1)^2)^gcd(2, A000040(n+1))`
-/

namespace A153818.P4006908093467080505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013936 ((n + 1) ^ 2) ^ Int.gcd 2 (A000040 (n + 1))

end

end A153818.P4006908093467080505

namespace A153818

/-- `A013936((n+1)^2)^gcd(2, A000040(n+1))` -/
def P4006908093467080505.Spec : Prop :=
  ∀ n, P4006908093467080505.a n = A153818 (n + 1)

end A153818

/-! ## A153818.P16999878973301729871

`A000005(gcd(n, n+1))*A013936((n+1)^2)`
-/

namespace A153818.P16999878973301729871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd n (n + 1)) * A013936 ((n + 1) ^ 2)

end

end A153818.P16999878973301729871

namespace A153818

/-- `A000005(gcd(n, n+1))*A013936((n+1)^2)` -/
def P16999878973301729871.Spec : Prop :=
  ∀ n, P16999878973301729871.a n = A153818 (n + 1)

end A153818

/-! ## A153818.P929728169650093649

`val(A005117(n+2), 3)!*A013936((n+1)^2)`
-/

namespace A153818.P929728169650093649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.valuation (A005117 (n + 2)).toNat 3) : ℤ) * A013936 ((n + 1) ^ 2)

end

end A153818.P929728169650093649

namespace A153818

/-- `val(A005117(n+2), 3)!*A013936((n+1)^2)` -/
def P929728169650093649.Spec : Prop :=
  ∀ n, P929728169650093649.a n = A153818 (n + 1)

end A153818

/-! ## A153818.P8137788290818314076

`A000188(A005117(n+1))*A013936((n+1)^2)`
-/

namespace A153818.P8137788290818314076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A005117 (n + 1)).toNat * A013936 ((n + 1) ^ 2)

end

end A153818.P8137788290818314076

namespace A153818

/-- `A000188(A005117(n+1))*A013936((n+1)^2)` -/
def P8137788290818314076.Spec : Prop :=
  ∀ n, P8137788290818314076.a n = A153818 (n + 1)

end A153818

/-! ## A153818.P5762368421718078921

`A000188(A020639(n+1))*A013936((n+1)^2)`
-/

namespace A153818.P5762368421718078921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A020639 (n + 1)).toNat * A013936 ((n + 1) ^ 2)

end

end A153818.P5762368421718078921

namespace A153818

/-- `A000188(A020639(n+1))*A013936((n+1)^2)` -/
def P5762368421718078921.Spec : Prop :=
  ∀ n, P5762368421718078921.a n = A153818 (n + 1)

end A153818

/-!
# A153819: Linear recurrence with a(n) = 3a(n-1) - a(n-2) + 2 = 4a(n-1) - 4a(n-2) + a(n-3). Full sequence for A153466.

The programs for A153819, the canonical program `A153819.P10153525068020778191` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153819 has offset 0).

The definition of A153819 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-2)+2` (program `A153819.P10153525068020778191`, by `A153819.P10153525068020778191.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153819.P10153525068020778191

`3*a(n-1)-a(n-2)+2` with `a(0)=16, a(1)=34`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153819

/-- `3*a(n-1)-a(n-2)+2` -/
def P10153525068020778191.Spec : Prop :=
  ∀ n, P10153525068020778191.a n = A153819 n

theorem P10153525068020778191.correct : P10153525068020778191.Spec := by
  intro n
  simp only [A153819]

end A153819

/-! ## A153819.P17127839867206422059

`4*a(n-1)-4*a(n-2)+a(n-3)` with `a(0)=16, a(1)=34, a(2)=88`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A153819.P17127839867206422059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16, 34, 88] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2) + a (n - 3)

end

end A153819.P17127839867206422059

namespace A153819

/-- `4*a(n-1)-4*a(n-2)+a(n-3)` -/
def P17127839867206422059.Spec : Prop :=
  ∀ n, P17127839867206422059.a n = A153819 n

end A153819

/-! ## A153819.P8203132159684560509

`2*A153873(n)`
-/

namespace A153819.P8203132159684560509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153873 n

end

end A153819.P8203132159684560509

namespace A153819

/-- `2*A153873(n)` -/
def P8203132159684560509.Spec : Prop :=
  ∀ n, P8203132159684560509.a n = A153819 n

end A153819

/-! ## A153819.P16573508072791721076

`18*A000045(2*n+1)-2`
-/

namespace A153819.P16573508072791721076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A000045 (2 * n + 1) - 2

end

end A153819.P16573508072791721076

namespace A153819

/-- `18*A000045(2*n+1)-2` -/
def P16573508072791721076.Spec : Prop :=
  ∀ n, P16573508072791721076.a n = A153819 n

end A153819

/-! ## A153819.P9572078487071761194

`A022352(Δ[n²])-2`
-/

namespace A153819.P9572078487071761194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022352 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A153819.P9572078487071761194

namespace A153819

/-- `A022352(Δ[n²])-2` -/
def P9572078487071761194.Spec : Prop :=
  ∀ n, P9572078487071761194.a n = A153819 n

end A153819

/-! ## A153819.P7605710174865052841

`Δ[A022352(2*n)]-2`
-/

namespace A153819.P7605710174865052841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022352 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A153819.P7605710174865052841

namespace A153819

/-- `Δ[A022352(2*n)]-2` -/
def P7605710174865052841.Spec : Prop :=
  ∀ n, P7605710174865052841.a n = A153819 n

end A153819

/-! ## A153819.P558962981986458948

`2*(A022092(2*n+1)-1)`
-/

namespace A153819.P558962981986458948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A022092 (2 * n + 1) - 1)

end

end A153819.P558962981986458948

namespace A153819

/-- `2*(A022092(2*n+1)-1)` -/
def P558962981986458948.Spec : Prop :=
  ∀ n, P558962981986458948.a n = A153819 n

end A153819

/-! ## A153819.P8887831754634023567

`2*(9*A000045(Δ[n²])-1)`
-/

namespace A153819.P8887831754634023567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (9 * A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1)

end

end A153819.P8887831754634023567

namespace A153819

/-- `2*(9*A000045(Δ[n²])-1)` -/
def P8887831754634023567.Spec : Prop :=
  ∀ n, P8887831754634023567.a n = A153819 n

end A153819

/-! ## A153819.P16698741362345991484

`2*(Δ[9*A000045(2*n)]-1)`
-/

namespace A153819.P16698741362345991484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n - 1)

end

end A153819.P16698741362345991484

namespace A153819

/-- `2*(Δ[9*A000045(2*n)]-1)` -/
def P16698741362345991484.Spec : Prop :=
  ∀ n, P16698741362345991484.a n = A153819 n

end A153819

/-! ## A153819.P734201486275698600

`A155110(n)+A153388(n)`
-/

namespace A153819.P734201486275698600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155110 n + A153388 n

end

end A153819.P734201486275698600

namespace A153819

/-- `A155110(n)+A153388(n)` -/
def P734201486275698600.Spec : Prop :=
  ∀ n, P734201486275698600.a n = A153819 n

end A153819

/-! ## A153819.P11946333466610613526

`2*(A155110(n)+A027941(n))`
-/

namespace A153819.P11946333466610613526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A155110 n + A027941 n)

end

end A153819.P11946333466610613526

namespace A153819

/-- `2*(A155110(n)+A027941(n))` -/
def P11946333466610613526.Spec : Prop :=
  ∀ n, P11946333466610613526.a n = A153819 n

end A153819

/-! ## A153819.P8349948953587662654

`2*(A153388(n)-A027941(n))`
-/

namespace A153819.P8349948953587662654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A153388 n - A027941 n)

end

end A153819.P8349948953587662654

namespace A153819

/-- `2*(A153388(n)-A027941(n))` -/
def P8349948953587662654.Spec : Prop :=
  ∀ n, P8349948953587662654.a n = A153819 n

end A153819

/-! ## A153819.P6335534107202395877

`A022106(2*n+1)+A000032(2*n)-2`
-/

namespace A153819.P6335534107202395877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022106 (2 * n + 1) + (A000032 (2 * n) - 2)

end

end A153819.P6335534107202395877

namespace A153819

/-- `A022106(2*n+1)+A000032(2*n)-2` -/
def P6335534107202395877.Spec : Prop :=
  ∀ n, P6335534107202395877.a n = A153819 n

end A153819

/-! ## A153819.P12797057891740584952

`A022128(2*n+1)-(A000285(2*n)+2)`
-/

namespace A153819.P12797057891740584952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022128 (2 * n + 1) - (A000285 (2 * n) + 2)

end

end A153819.P12797057891740584952

namespace A153819

/-- `A022128(2*n+1)-(A000285(2*n)+2)` -/
def P12797057891740584952.Spec : Prop :=
  ∀ n, P12797057891740584952.a n = A153819 n

end A153819

/-! ## A153819.P10225423483845334098

`A022129(2*n+1)-(A001060(2*n)+2)`
-/

namespace A153819.P10225423483845334098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022129 (2 * n + 1) - (A001060 (2 * n) + 2)

end

end A153819.P10225423483845334098

namespace A153819

/-- `A022129(2*n+1)-(A001060(2*n)+2)` -/
def P10225423483845334098.Spec : Prop :=
  ∀ n, P10225423483845334098.a n = A153819 n

end A153819

/-! ## A153819.P8773429995371275795

`A022105(2*n+1)+A013655(2*n)-2`
-/

namespace A153819.P8773429995371275795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022105 (2 * n + 1) + (A013655 (2 * n) - 2)

end

end A153819.P8773429995371275795

namespace A153819

/-- `A022105(2*n+1)+A013655(2*n)-2` -/
def P8773429995371275795.Spec : Prop :=
  ∀ n, P8773429995371275795.a n = A153819 n

end A153819

/-! ## A153819.P7197764682781172036

`A022117(2*n+1)+A104449(2*n)-2`
-/

namespace A153819.P7197764682781172036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022117 (2 * n + 1) + (A104449 (2 * n) - 2)

end

end A153819.P7197764682781172036

namespace A153819

/-- `A022117(2*n+1)+A104449(2*n)-2` -/
def P7197764682781172036.Spec : Prop :=
  ∀ n, P7197764682781172036.a n = A153819 n

end A153819

/-! ## A153819.P2282921444247580171

`A294116(2*n+1)-(A020701(2*n)+2)`
-/

namespace A153819.P2282921444247580171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294116 (2 * n + 1) - (A020701 (2 * n) + 2)

end

end A153819.P2282921444247580171

namespace A153819

/-- `A294116(2*n+1)-(A020701(2*n)+2)` -/
def P2282921444247580171.Spec : Prop :=
  ∀ n, P2282921444247580171.a n = A153819 n

end A153819

/-! ## A153819.P16033112184694831768

`2*(A022311(2*n+1)+A000032(2*n))`
-/

namespace A153819.P16033112184694831768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A022311 (2 * n + 1) + A000032 (2 * n))

end

end A153819.P16033112184694831768

namespace A153819

/-- `2*(A022311(2*n+1)+A000032(2*n))` -/
def P16033112184694831768.Spec : Prop :=
  ∀ n, P16033112184694831768.a n = A153819 n

end A153819

/-! ## A153819.P5240644902456129485

`2*(A022090(2*n+1)+A001595(2*n))`
-/

namespace A153819.P5240644902456129485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A022090 (2 * n + 1) + A001595 (2 * n))

end

end A153819.P5240644902456129485

namespace A153819

/-- `2*(A022090(2*n+1)+A001595(2*n))` -/
def P5240644902456129485.Spec : Prop :=
  ∀ n, P5240644902456129485.a n = A153819 n

end A153819

/-!
# A153820: Bell number A000110(n) minus Bessel number A006789(n).

The programs for A153820, there is no canonical definition to state claims against.
-/

/-! ## A153820.P5963859791364379627

`A000110(n)-A006789(n)`
-/

namespace A153820.P5963859791364379627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A006789 n

end

end A153820.P5963859791364379627

/-! ## A153820.P3156337573215072939

`abs(A292935(n))-A006789(n)`
-/

namespace A153820.P3156337573215072939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 n| - A006789 n

end

end A153820.P3156337573215072939

/-! ## A153820.P8606533050110424981

`Δ[A005001(n)]-A006789(n)`
-/

namespace A153820.P8606533050110424981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006789 n

end

end A153820.P8606533050110424981

/-! ## A153820.P7592100734397007548

`A011971(A000217(n))-A006789(n)`
-/

namespace A153820.P7592100734397007548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A000217 n).toNat - A006789 n

end

end A153820.P7592100734397007548

/-! ## A153820.P16775800258710061882

`A056857(A000124(n))-A006789(n)`
-/

namespace A153820.P16775800258710061882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056857 (A000124 n).toNat - A006789 n

end

end A153820.P16775800258710061882

/-! ## A153820.P3085547390045199794

`A011972(A161680(n))-A006789(n)`
-/

namespace A153820.P3085547390045199794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (A161680 n).toNat - A006789 n

end

end A153820.P3085547390045199794

/-!
# A153821: Recursive triangular sequence: A(n,k)= A(n - 1, k - 1) + A(n - 1, k) + (3 (-1 + n) (-4 + 3 n))*A(n - 2, k - 1).

The programs for A153821, the canonical program `A153821.P12203463743983628080` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153821 has offset 1).

The definition of A153821 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `T(n-1,k-1)+T(n-1,k)+3*(-1+row(n)+1)*(-4+3*(row(n)+1))*T(n-2,k-1)` (program `A153821.P12203463743983628080`, by `A153821.P12203463743983628080.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153821.P12203463743983628080

`T(n-1,k-1)+T(n-1,k)+3*(-1+row(n)+1)*(-4+3*(row(n)+1))*T(n-2,k-1)` with `a(0)=2, a(1)=5, a(2)=5, a(3)=2, a(4)=76, a(5)=2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153821

/-- `T(n-1,k-1)+T(n-1,k)+3*(-1+row(n)+1)*(-4+3*(row(n)+1))*T(n-2,k-1)` -/
def P12203463743983628080.Spec : Prop :=
  ∀ n, P12203463743983628080.a n = A153821 (n + 1)

theorem P12203463743983628080.correct : P12203463743983628080.Spec := by
  intro n
  simp only [A153821, Nat.add_sub_cancel]

end A153821

/-!
# A153823: Number of proper divisors of n!.

The programs for A153823, the canonical program `A153823.P12958428199370976494` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153823 has offset 0).

The definition of A153823 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153823.P12958428199370976494

`A027423(n)-1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A153823

/-- `A027423(n)-1` -/
def P12958428199370976494.Spec : Prop :=
  ∀ n, P12958428199370976494.a n = A153823 n

theorem P12958428199370976494.correct : P12958428199370976494.Spec := by
  intro n
  simp only [A153823]

end A153823

/-! ## A153823.P4261353646866343553

`A000005(n!)-1`
-/

namespace A153823.P4261353646866343553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.factorial n) - 1

end

end A153823.P4261353646866343553

namespace A153823

/-- `A000005(n!)-1` -/
def P4261353646866343553.Spec : Prop :=
  ∀ n, P4261353646866343553.a n = A153823 n

end A153823

/-! ## A153823.P10789311736088282961

`A000005(A000142(n))-1`
-/

namespace A153823.P10789311736088282961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000142 n).toNat - 1

end

end A153823.P10789311736088282961

namespace A153823

/-- `A000005(A000142(n))-1` -/
def P10789311736088282961.Spec : Prop :=
  ∀ n, P10789311736088282961.a n = A153823 n

end A153823

/-! ## A153823.P16773391942262787282

`A337106(n)+A157928(n)`
-/

namespace A153823.P16773391942262787282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337106 n + A157928 n

end

end A153823.P16773391942262787282

namespace A153823

/-- `A337106(n)+A157928(n)` -/
def P16773391942262787282.Spec : Prop :=
  ∀ n, P16773391942262787282.a n = A153823 n

theorem P16773391942262787282.correct : P16773391942262787282.Spec := by
  intro n
  simp only [A153823, Nat.add_sub_cancel, A153823.P16773391942262787282.a, A153823.P12958428199370976494.a, A027423, A027423.P14066705804803784298.a, A157928, A157928.P11639971120062672373.a, A337106, A337106.P11641309545225411868.a, A000005, A000005.P16091521709108585461.a, A000142, A000142.P3272619076580183195.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153823

/-! ## A153823.P15270847403911313452

`A057428(n+1)+A027423(n)`
-/

namespace A153823.P15270847403911313452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A027423 n

end

end A153823.P15270847403911313452

namespace A153823

/-- `A057428(n+1)+A027423(n)` -/
def P15270847403911313452.Spec : Prop :=
  ∀ n, P15270847403911313452.a n = A153823 n

theorem P15270847403911313452.correct : P15270847403911313452.Spec := by
  intro n
  simp only [A153823, Nat.add_sub_cancel, A153823.P15270847403911313452.a, A153823.P12958428199370976494.a, A027423, A027423.P14066705804803784298.a, A057428, A057428.P2999489532230392221.a, A000005, A000005.P16091521709108585461.a, A000142, A000142.P3272619076580183195.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153823

/-! ## A153823.P14998547226678667155

`A260196(n+2)+A027423(n)`
-/

namespace A153823.P14998547226678667155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A027423 n

end

end A153823.P14998547226678667155

namespace A153823

/-- `A260196(n+2)+A027423(n)` -/
def P14998547226678667155.Spec : Prop :=
  ∀ n, P14998547226678667155.a n = A153823 n

end A153823

/-! ## A153823.P1764785616181400538

`A336940(n)+A337257(n)-1`
-/

namespace A153823.P1764785616181400538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336940 n + (A337257 n - 1)

end

end A153823.P1764785616181400538

namespace A153823

/-- `A336940(n)+A337257(n)-1` -/
def P1764785616181400538.Spec : Prop :=
  ∀ n, P1764785616181400538.a n = A153823 n

theorem P1764785616181400538.correct : P1764785616181400538.Spec := by
  intro n
  simp only [A153823, Nat.add_sub_cancel, A153823.P1764785616181400538.a, A153823.P12958428199370976494.a, A027423, A027423.P14066705804803784298.a, A336940, A336940.P4983532060712905772.a, A337257, A337257.P14876870470645707118.a, A000005, A000005.P16091521709108585461.a, A000142, A000142.P3272619076580183195.a, A011371, A011371.P8892659874704383252.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153823

/-! ## A153823.P14256633515345631570

`A336940(A028310(n))-(1-A337257(n))`
-/

namespace A153823.P14256633515345631570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336940 (A028310 n).toNat - (1 - A337257 n)

end

end A153823.P14256633515345631570

namespace A153823

/-- `A336940(A028310(n))-(1-A337257(n))` -/
def P14256633515345631570.Spec : Prop :=
  ∀ n, P14256633515345631570.a n = A153823 n

end A153823

/-! ## A153823.P5113926698327095897

`A059341(A000079(gcd(n, n+1)))+A027423(n)`
-/

namespace A153823.P5113926698327095897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059341 (A000079 (Nat.gcd n (n + 1))).toNat + A027423 n

end

end A153823.P5113926698327095897

namespace A153823

/-- `A059341(A000079(gcd(n, n+1)))+A027423(n)` -/
def P5113926698327095897.Spec : Prop :=
  ∀ n, P5113926698327095897.a n = A153823 n

end A153823

/-! ## A153823.P3797857958496496343

`and(A027423(n)+A000225(n), A000225(n))`
-/

namespace A153823.P3797857958496496343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027423 n + A000225 n) (A000225 n)

end

end A153823.P3797857958496496343

namespace A153823

/-- `and(A027423(n)+A000225(n), A000225(n))` -/
def P3797857958496496343.Spec : Prop :=
  ∀ n, P3797857958496496343.a n = A153823 n

end A153823

/-!
# A153824: Sum of proper divisors of n!: a(n) = sigma(n!) - n!.

The programs for A153824, the canonical program `A153824.P12658510175369252475` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153824 has offset 0).

The definition of A153824 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n!)-n!` (program `A153824.P12658510175369252475`, by `A153824.P12658510175369252475.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153824.P13199856983944491611

`A062569(n)-A000142(n)`
-/

namespace A153824.P13199856983944491611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062569 n - A000142 n

end

end A153824.P13199856983944491611

namespace A153824

/-- `A062569(n)-A000142(n)` -/
def P13199856983944491611.Spec : Prop :=
  ∀ n, P13199856983944491611.a n = A153824 n

end A153824

/-! ## A153824.P12658510175369252475

`A000203(n!)-n!`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A153824

/-- `A000203(n!)-n!` -/
def P12658510175369252475.Spec : Prop :=
  ∀ n, P12658510175369252475.a n = A153824 n

theorem P12658510175369252475.correct : P12658510175369252475.Spec := by
  intro n
  simp only [A153824]

end A153824

/-! ## A153824.P9864172349537721965

`A001065(A000142(n))`
-/

namespace A153824.P9864172349537721965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A000142 n).toNat

end

end A153824.P9864172349537721965

namespace A153824

/-- `A001065(A000142(n))` -/
def P9864172349537721965.Spec : Prop :=
  ∀ n, P9864172349537721965.a n = A153824 n

end A153824

/-! ## A153824.P15312454190081361811

`A153825(n)+A153823(n)`
-/

namespace A153824.P15312454190081361811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153825 n + A153823 n

end

end A153824.P15312454190081361811

namespace A153824

/-- `A153825(n)+A153823(n)` -/
def P15312454190081361811.Spec : Prop :=
  ∀ n, P15312454190081361811.a n = A153824 n

end A153824

/-! ## A153824.P15621862338373895409

`A062569(n)-Δ[A003422(n)]`
-/

namespace A153824.P15621862338373895409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062569 n - (f1 (n + 1) - f1 n)

end

end A153824.P15621862338373895409

namespace A153824

/-- `A062569(n)-Δ[A003422(n)]` -/
def P15621862338373895409.Spec : Prop :=
  ∀ n, P15621862338373895409.a n = A153824 n

end A153824

/-! ## A153824.P5391865578573168032

`A062569(n)-∏[A028310(n)]`
-/

namespace A153824.P5391865578573168032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062569 n - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A153824.P5391865578573168032

namespace A153824

/-- `A062569(n)-∏[A028310(n)]` -/
def P5391865578573168032.Spec : Prop :=
  ∀ n, P5391865578573168032.a n = A153824 n

end A153824

/-! ## A153824.P11718729844367860711

`A062569(n)-Δ[A067078(n+1)]`
-/

namespace A153824.P11718729844367860711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062569 n - (f1 (n + 1) - f1 n)

end

end A153824.P11718729844367860711

namespace A153824

/-- `A062569(n)-Δ[A067078(n+1)]` -/
def P11718729844367860711.Spec : Prop :=
  ∀ n, P11718729844367860711.a n = A153824 n

end A153824

/-! ## A153824.P1108054767679035257

`A062569(n)-A008279(A000096(n))`
-/

namespace A153824.P1108054767679035257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062569 n - A008279 (A000096 n).toNat

end

end A153824.P1108054767679035257

namespace A153824

/-- `A062569(n)-A008279(A000096(n))` -/
def P1108054767679035257.Spec : Prop :=
  ∀ n, P1108054767679035257.a n = A153824 n

end A153824

/-! ## A153824.P8019444272641497907

`A062569(n)-A098361(A000217(n))`
-/

namespace A153824.P8019444272641497907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062569 n - A098361 (A000217 n).toNat

end

end A153824.P8019444272641497907

namespace A153824

/-- `A062569(n)-A098361(A000217(n))` -/
def P8019444272641497907.Spec : Prop :=
  ∀ n, P8019444272641497907.a n = A153824 n

end A153824

/-!
# A153825: Sum of proper divisors minus the number of proper divisors of n!.

The programs for A153825, the canonical program `A153825.P2086424196053372448` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153825 has offset 0).

The definition of A153825 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153825.P13991561254228301554

`A153824(n)-A153823(n)`
-/

namespace A153825.P13991561254228301554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153824 n - A153823 n

end

end A153825.P13991561254228301554

namespace A153825

/-- `A153824(n)-A153823(n)` -/
def P13991561254228301554.Spec : Prop :=
  ∀ n, P13991561254228301554.a n = A153825 n

end A153825

/-! ## A153825.P1679427135170308675

`A000203(n!)-n!-A000005(n!)+1`
-/

namespace A153825.P1679427135170308675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.factorial n) - (Nat.factorial n : ℤ) - A000005 (Nat.factorial n) + 1

end

end A153825.P1679427135170308675

namespace A153825

/-- `A000203(n!)-n!-A000005(n!)+1` -/
def P1679427135170308675.Spec : Prop :=
  ∀ n, P1679427135170308675.a n = A153825 n

end A153825

/-! ## A153825.P2086424196053372448

`A152770(A000142(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A153825

/-- `A152770(A000142(n))` -/
def P2086424196053372448.Spec : Prop :=
  ∀ n, P2086424196053372448.a n = A153825 n

theorem P2086424196053372448.correct : P2086424196053372448.Spec := by
  intro n
  simp only [A153825]

end A153825

/-! ## A153825.P7438646426567905514

`A153824(n)+1-A027423(n)`
-/

namespace A153825.P7438646426567905514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153824 n + (1 - A027423 n)

end

end A153825.P7438646426567905514

namespace A153825

/-- `A153824(n)+1-A027423(n)` -/
def P7438646426567905514.Spec : Prop :=
  ∀ n, P7438646426567905514.a n = A153825 n

end A153825

/-! ## A153825.P8663230487821867471

`A062569(n)-(A153823(n)+A000142(n))`
-/

namespace A153825.P8663230487821867471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062569 n - (A153823 n + A000142 n)

end

end A153825.P8663230487821867471

namespace A153825

/-- `A062569(n)-(A153823(n)+A000142(n))` -/
def P8663230487821867471.Spec : Prop :=
  ∀ n, P8663230487821867471.a n = A153825 n

end A153825

/-! ## A153825.P17076349886370436548

`A062569(n)-n!-(A336940(n)+A337257(n)-1)`
-/

namespace A153825.P17076349886370436548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062569 n - (Nat.factorial n : ℤ) - (A336940 n + (A337257 n - 1))

end

end A153825.P17076349886370436548

namespace A153825

/-- `A062569(n)-n!-(A336940(n)+A337257(n)-1)` -/
def P17076349886370436548.Spec : Prop :=
  ∀ n, P17076349886370436548.a n = A153825 n

end A153825

/-! ## A153825.P9064365678797114481

`A062569(n)-n!-((A011371(n)+1)*A336940(n)-1)`
-/

namespace A153825.P9064365678797114481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062569 n - (Nat.factorial n : ℤ) - ((A011371 n + 1) * A336940 n - 1)

end

end A153825.P9064365678797114481

namespace A153825

/-- `A062569(n)-n!-((A011371(n)+1)*A336940(n)-1)` -/
def P9064365678797114481.Spec : Prop :=
  ∀ n, P9064365678797114481.a n = A153825 n

end A153825

/-!
# A153827: Index sequence to A089840: positions of bijections that preserve A129593 (that is, they permute the Łukasiewicz-word computed for a general tree).

The programs for A153827, there is no canonical definition to state claims against.
-/

/-! ## A153827.P8587834374825505866

`∪[A153826(n), A153828(n)]`
-/

namespace A153827.P8587834374825505866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153826 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153828 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A153827.P8587834374825505866

/-! ## A153827.P10359149557380264848

`eq[A127099(A127108(n)), A134841(n)]`
-/

namespace A153827.P10359149557380264848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127099 (A127108 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134841 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153827.P10359149557380264848

/-! ## A153827.P8048269851051243499

`eq[A167625(2*n+3), A372703(A167625(n+1))]`
-/

namespace A153827.P8048269851051243499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167625 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372703 (A167625 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153827.P8048269851051243499

/-!
# A153828: Index sequence to A089840: set-wise difference of A153827 and A153826.

The programs for A153828, there is no canonical definition to state claims against.
-/

/-! ## A153828.P5383265006516664331

`∑[A043386(A037571(n+1))]%A043386(n+1)`
-/

namespace A153828.P5383265006516664331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043386 (A037571 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A043386 (n + 1))

end

end A153828.P5383265006516664331

/-!
# A153829: Index sequence to A089840: positions of bijections that preserve A153835, or equivalently, A127302 (the non-oriented form of binary trees).

The programs for A153829, there is no canonical definition to state claims against.
-/

/-! ## A153829.P9235482064368146730

`∪[A153830(n), A153831(n)]`
-/

namespace A153829.P9235482064368146730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153830 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153831 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A153829.P9235482064368146730

/-!
# A153830: Index sequence to A089840: positions of bijections that preserve A127302 (the non-oriented form of binary trees) and whose behavior does not depend on whether there are internal or terminal nodes (leaves) in the neighborhood of any vertex.

The programs for A153830, there is no canonical definition to state claims against.
-/

/-! ## A153830.P13234343140834180895

`A153829(A146028(n+1))`
-/

namespace A153830.P13234343140834180895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153829 (A146028 (n + 1)).toNat

end

end A153830.P13234343140834180895

/-!
# A153836: a(n) = 2^(n^2) - 2^(n^2 - n + 1) for n >= 1; a(0) = 0.

The programs for A153836, there is no canonical definition to state claims against.
-/

/-! ## A153836.P14458901952221032012

`A000918(round(sqrt(n²+1)))*A053763(n)`
-/

namespace A153836.P14458901952221032012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat * A053763 n

end

end A153836.P14458901952221032012

/-! ## A153836.P4924389697947334940

`A255047(n²)-A255047(A002061(n))`
-/

namespace A153836.P4924389697947334940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 (n ^ 2) - A255047 (A002061 n).toNat

end

end A153836.P4924389697947334940

/-! ## A153836.P3098686501093103302

`A002416(n)-A002416(n)/A011782(n)`
-/

namespace A153836.P3098686501093103302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002416 n : ℚ) - (A002416 n : ℚ) / (A011782 n : ℚ)

end

end A153836.P3098686501093103302

/-! ## A153836.P919916901349967827

`A257272(n)%A000051(n)*A053763(n)`
-/

namespace A153836.P919916901349967827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257272 n) (A000051 n) * A053763 n

end

end A153836.P919916901349967827

/-! ## A153836.P12336067159914927763

`A131577(n)^A233583(n+1)*A000918(n)`
-/

namespace A153836.P12336067159914927763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131577 n : ℚ) ^ (A233583 (n + 1) : ℤ) * (A000918 n : ℚ)

end

end A153836.P12336067159914927763

/-!
# A153838: Records in A153004.

The programs for A153838, there is no canonical definition to state claims against.
-/

/-! ## A153838.P10422632917098414108

`floor(3*A152973(n+1)/2)`
-/

namespace A153838.P10422632917098414108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * A152973 (n + 1) : ℚ) / 2⌋

end

end A153838.P10422632917098414108

/-! ## A153838.P9378268813307355153

`A006368(A152973(n+1))`
-/

namespace A153838.P9378268813307355153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A152973 (n + 1)).toNat

end

end A153838.P9378268813307355153

/-! ## A153838.P9916048373362843220

`A006368(A152768(n+2)/2)`
-/

namespace A153838.P9916048373362843220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (SequenceMachineLib.roundAway ((A152768 (n + 2) : ℚ) / 2)).toNat

end

end A153838.P9916048373362843220

/-! ## A153838.P13179753080818609117

`A233570(A152768(n+2)/2)`
-/

namespace A153838.P13179753080818609117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233570 (SequenceMachineLib.roundAway ((A152768 (n + 2) : ℚ) / 2)).toNat

end

end A153838.P13179753080818609117

/-! ## A153838.P7502357849105914621

`A007494(A152973(n+1)-1)+1`
-/

namespace A153838.P7502357849105914621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A152973 (n + 1) - 1).toNat + 1

end

end A153838.P7502357849105914621

/-!
# A153839: First Sunday in n-th month of 365-day year starting on Sunday.

The programs for A153839, there is no canonical definition to state claims against.
-/

/-! ## A153839.P14669860018715138606

`A153840(n+1)%7+1`
-/

namespace A153839.P14669860018715138606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153840 (n + 1)) 7 + 1

end

end A153839.P14669860018715138606

/-! ## A153839.P3359086226918860268

`(7-A189915(n+1))%7+1`
-/

namespace A153839.P3359086226918860268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (7 - A189915 (n + 1)) 7 + 1

end

end A153839.P3359086226918860268

/-! ## A153839.P2431545333388314151

`(A153841(n+1)%7+1)%7+1`
-/

namespace A153839.P2431545333388314151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A153841 (n + 1)) 7 + 1) 7 + 1

end

end A153839.P2431545333388314151

/-! ## A153839.P9154490787565954353

`(7-(A130447(n+1)-1)%7)%7+1`
-/

namespace A153839.P9154490787565954353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (7 - Int.tmod (A130447 (n + 1) - 1) 7) 7 + 1

end

end A153839.P9154490787565954353

/-! ## A153839.P2961735041163216799

`(7-(23-A153845(n+1))%7)%7+1`
-/

namespace A153839.P2961735041163216799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (7 - Int.tmod (23 - A153845 (n + 1)) 7) 7 + 1

end

end A153839.P2961735041163216799

/-!
# A153840: First Sunday in the n-th month of a 365-day year starting on Monday.

The programs for A153840, there is no canonical definition to state claims against.
-/

/-! ## A153840.P3383336311106283105

`7-A189915(n+1)`
-/

namespace A153840.P3383336311106283105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - A189915 (n + 1)

end

end A153840.P3383336311106283105

/-! ## A153840.P17871924978906054848

`7-A061251(n)%7`
-/

namespace A153840.P17871924978906054848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - Int.tmod (A061251 n) 7

end

end A153840.P17871924978906054848

/-! ## A153840.P16645689979589463606

`A153841(n+1)%7+1`
-/

namespace A153840.P16645689979589463606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153841 (n + 1)) 7 + 1

end

end A153840.P16645689979589463606

/-! ## A153840.P9500091794030971610

`7-(A130447(n+1)-1)%7`
-/

namespace A153840.P9500091794030971610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - Int.tmod (A130447 (n + 1) - 1) 7

end

end A153840.P9500091794030971610

/-! ## A153840.P11109434195004385910

`7-(8-A153839(n+1))%7`
-/

namespace A153840.P11109434195004385910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - Int.tmod (8 - A153839 (n + 1)) 7

end

end A153840.P11109434195004385910

/-!
# A153841: First Sunday in n-th month of 365-day year starting on Tuesday.

The programs for A153841, there is no canonical definition to state claims against.
-/

/-! ## A153841.P13160831760112424567

`A153842(n+1)%7+1`
-/

namespace A153841.P13160831760112424567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153842 (n + 1)) 7 + 1

end

end A153841.P13160831760112424567

/-! ## A153841.P15037481843561555281

`7-A130447(n+1)%7`
-/

namespace A153841.P15037481843561555281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - Int.tmod (A130447 (n + 1)) 7

end

end A153841.P15037481843561555281

/-! ## A153841.P11606081909071929365

`(A153843(n+1)%7+1)%7+1`
-/

namespace A153841.P11606081909071929365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A153843 (n + 1)) 7 + 1) 7 + 1

end

end A153841.P11606081909071929365

/-! ## A153841.P12413439158214934014

`A053829(A153845(n+1)+Δ[A053829(n)]+3)`
-/

namespace A153841.P12413439158214934014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A153845 (n + 1) + (f1 (n + 1) - f1 n) + 3).toNat

end

end A153841.P12413439158214934014

/-! ## A153841.P5976946095850078358

`A161801(A186719(2*n+5))+A153842(n+1)`
-/

namespace A153841.P5976946095850078358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161801 (A186719 (2 * n + 5)).toNat + A153842 (n + 1)

end

end A153841.P5976946095850078358

/-!
# A153842: First Sunday in n-th month of 365-day year starting on Wednesday.

The programs for A153842, there is no canonical definition to state claims against.
-/

/-! ## A153842.P13311271668958255357

`A153843(n+1)%7+1`
-/

namespace A153842.P13311271668958255357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153843 (n + 1)) 7 + 1

end

end A153842.P13311271668958255357

/-! ## A153842.P1595641671342538397

`A053829(A153845(n+1)+Δ[A053829(n)]+2)`
-/

namespace A153842.P1595641671342538397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A153845 (n + 1) + (f1 (n + 1) - f1 n) + 2).toNat

end

end A153842.P1595641671342538397

/-!
# A153843: First Sunday in n-th month of 365-day year starting on Thursday.

The programs for A153843, there is no canonical definition to state claims against.
-/

/-! ## A153843.P3568384617190512150

`A153844(n+1)%7+1`
-/

namespace A153843.P3568384617190512150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153844 (n + 1)) 7 + 1

end

end A153843.P3568384617190512150

/-! ## A153843.P4281581133669749957

`(A153845(n+1)%7+1)%7+1`
-/

namespace A153843.P4281581133669749957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A153845 (n + 1)) 7 + 1) 7 + 1

end

end A153843.P4281581133669749957

/-! ## A153843.P10022940709003055084

`((A073304(n)%7+1)%7+1)%7+1`
-/

namespace A153843.P10022940709003055084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (Int.tmod (A073304 n) 7 + 1) 7 + 1) 7 + 1

end

end A153843.P10022940709003055084

/-! ## A153843.P8281019647779541720

`((A153839(n+1)%7+1)%7+1)%7+1`
-/

namespace A153843.P8281019647779541720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (Int.tmod (A153839 (n + 1)) 7 + 1) 7 + 1) 7 + 1

end

end A153843.P8281019647779541720

/-! ## A153843.P13130424305085279624

`(((A153840(n+1)%7+1)%7+1)%7+1)%7+1`
-/

namespace A153843.P13130424305085279624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (Int.tmod (Int.tmod (A153840 (n + 1)) 7 + 1) 7 + 1) 7 + 1) 7 + 1

end

end A153843.P13130424305085279624

/-!
# A153844: First Sunday in n-th month of 365-day year starting on Friday.

The programs for A153844, there is no canonical definition to state claims against.
-/

/-! ## A153844.P17468399757476571991

`A153845(n+1)%7+1`
-/

namespace A153844.P17468399757476571991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153845 (n + 1)) 7 + 1

end

end A153844.P17468399757476571991

/-! ## A153844.P18143974585991546160

`(A073304(n)%7+1)%7+1`
-/

namespace A153844.P18143974585991546160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A073304 n) 7 + 1) 7 + 1

end

end A153844.P18143974585991546160

/-! ## A153844.P2594820748889984970

`(A153839(n+1)%7+1)%7+1`
-/

namespace A153844.P2594820748889984970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A153839 (n + 1)) 7 + 1) 7 + 1

end

end A153844.P2594820748889984970

/-! ## A153844.P1307631502817658603

`((A153840(n+1)%7+1)%7+1)%7+1`
-/

namespace A153844.P1307631502817658603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (Int.tmod (A153840 (n + 1)) 7 + 1) 7 + 1) 7 + 1

end

end A153844.P1307631502817658603

/-! ## A153844.P1797640943617635053

`(((7-A189915(n+1))%7+1)%7+1)%7+1`
-/

namespace A153844.P1797640943617635053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (Int.tmod (7 - A189915 (n + 1)) 7 + 1) 7 + 1) 7 + 1

end

end A153844.P1797640943617635053

/-!
# A153845: First Sunday in n-th month of 365-day year starting on Saturday.

The programs for A153845, there is no canonical definition to state claims against.
-/

/-! ## A153845.P7436896276378514034

`A073304(n)%7+1`
-/

namespace A153845.P7436896276378514034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073304 n) 7 + 1

end

end A153845.P7436896276378514034

/-! ## A153845.P9398409654280507812

`A153839(n+1)%7+1`
-/

namespace A153845.P9398409654280507812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153839 (n + 1)) 7 + 1

end

end A153845.P9398409654280507812

/-! ## A153845.P11350156164101559028

`(A153840(n+1)%7+1)%7+1`
-/

namespace A153845.P11350156164101559028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A153840 (n + 1)) 7 + 1) 7 + 1

end

end A153845.P11350156164101559028

/-! ## A153845.P7613790943825555877

`((7-A189915(n+1))%7+1)%7+1`
-/

namespace A153845.P7613790943825555877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (7 - A189915 (n + 1)) 7 + 1) 7 + 1

end

end A153845.P7613790943825555877

/-! ## A153845.P12484168896035433081

`((7-(A130447(n+1)-1)%7)%7+1)%7+1`
-/

namespace A153845.P12484168896035433081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (7 - Int.tmod (A130447 (n + 1) - 1) 7) 7 + 1) 7 + 1

end

end A153845.P12484168896035433081

/-!
# A153847: Number of non-isomorphic connected I-graphs I(n,j,k) on 2n vertices (1<=j,k<=Floor[(n-1)/2]).

The programs for A153847, there is no canonical definition to state claims against.
-/

/-! ## A153847.P14489435763217050176

`or(A077105(n+3), A287112(A006596(n+2)))`
-/

namespace A153847.P14489435763217050176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A077105 (n + 3)) (A287112 (A006596 (n + 2)).toNat)

end

end A153847.P14489435763217050176

/-! ## A153847.P8519076073889428558

`A219644(A000051(n)-A003842(n))`
-/

namespace A153847.P8519076073889428558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219644 (A000051 n - A003842 n).toNat

end

end A153847.P8519076073889428558

/-!
# A153848: a(n) = 7*(10^(2*n) - 1)/33.

The programs for A153848, the canonical program `A153848.P12709393412551249424` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153848 has offset 1).

The definition of A153848 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153848.P12709393412551249424

`21*A094028(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A153848

/-- `21*A094028(n)` -/
def P12709393412551249424.Spec : Prop :=
  ∀ n, P12709393412551249424.a n = A153848 (n + 1)

theorem P12709393412551249424.correct : P12709393412551249424.Spec := by
  intro n
  simp only [A153848, Nat.add_sub_cancel]

end A153848

/-! ## A153848.P16593566802323465093

`7*(10^(2*(n+1))-1)/33`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A153848.P16593566802323465093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * ((10 ^ (2 * (n + 1)) : ℤ) - 1) : ℚ) / 33

end

end A153848.P16593566802323465093

namespace A153848

/-- `7*(10^(2*(n+1))-1)/33` -/
def P16593566802323465093.Spec : Prop :=
  ∀ n, P16593566802323465093.a n = (A153848 (n + 1) : ℚ)

end A153848

/-! ## A153848.P170132409842599955

`∑[a(n-1)*100]` with `a(0)=21`
-/

namespace A153848.P170132409842599955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [21] fun n f1 =>
  f1 (n - 1) * 100

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153848.P170132409842599955

namespace A153848

/-- `∑[a(n-1)*100]` -/
def P170132409842599955.Spec : Prop :=
  ∀ n, (P170132409842599955.a n : ℤ) = A153848 (n + 1)

end A153848

/-! ## A153848.P11057971295089620368

`10*10*a(n-1)+21` with `a(0)=21`
-/

namespace A153848.P11057971295089620368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [21] fun n a =>
  10 * (10 * a (n - 1)) + 21

end

end A153848.P11057971295089620368

namespace A153848

/-- `10*10*a(n-1)+21` -/
def P11057971295089620368.Spec : Prop :=
  ∀ n, (P11057971295089620368.a n : ℤ) = A153848 (n + 1)

end A153848

/-! ## A153848.P6713993171622200306

`record[21*A279028(n)]`
-/

namespace A153848.P6713993171622200306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 * A279028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153848.P6713993171622200306

namespace A153848

/-- `record[21*A279028(n)]` -/
def P6713993171622200306.Spec : Prop :=
  ∀ n, P6713993171622200306.a n = A153848 (n + 1)

end A153848

/-! ## A153848.P16093955155930486032

`A037495(2*n+1)`
-/

namespace A153848.P16093955155930486032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037495 (2 * n + 1 + 1)

end

end A153848.P16093955155930486032

namespace A153848

/-- `A037495(2*n+1)` -/
def P16093955155930486032.Spec : Prop :=
  ∀ n, P16093955155930486032.a n = A153848 (n + 1)

end A153848

/-! ## A153848.P2238859744824401833

`A033619(2*(A139280(n+1)+2))`
-/

namespace A153848.P2238859744824401833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (2 * (A139280 (n + 1) + 2)).toNat

end

end A153848.P2238859744824401833

namespace A153848

/-- `A033619(2*(A139280(n+1)+2))` -/
def P2238859744824401833.Spec : Prop :=
  ∀ n, P2238859744824401833.a n = A153848 (n + 1)

end A153848

/-! ## A153848.P15538609754465899470

`A056830(2*(n+1))+A002275(2*(n+1))`
-/

namespace A153848.P15538609754465899470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 (2 * (n + 1)) + A002275 (2 * (n + 1))

end

end A153848.P15538609754465899470

namespace A153848

/-- `A056830(2*(n+1))+A002275(2*(n+1))` -/
def P15538609754465899470.Spec : Prop :=
  ∀ n, P15538609754465899470.a n = A153848 (n + 1)

end A153848

/-! ## A153848.P13024750744742001290

`2*A000042(2*(n+1))-A056830(2*n+1)`
-/

namespace A153848.P13024750744742001290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000042 (2 * (n + 1)) - A056830 (2 * n + 1)

end

end A153848.P13024750744742001290

namespace A153848

/-- `2*A000042(2*(n+1))-A056830(2*n+1)` -/
def P13024750744742001290.Spec : Prop :=
  ∀ n, P13024750744742001290.a n = A153848 (n + 1)

end A153848

/-!
# A153849: a(n) is the coefficient of x^n in the (n+2)-th self-composition of g.f. A(x) for n>=1, with a(1)=1.

The programs for A153849, there is no canonical definition to state claims against.
-/

/-! ## A153849.P910967781619489749

`ceil(A096753(3*n)/12)`
-/

namespace A153849.P910967781619489749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A096753 (3 * n) : ℚ) / 12⌉

end

end A153849.P910967781619489749

/-!
# A153851: Nonzero coefficients of the g.f. that satisfies: A(x) = x + A(A(x))^3.

The programs for A153851, there is no canonical definition to state claims against.
-/

/-! ## A153851.P2761726484883236035

`A230197((n+4)^n)+1`
-/

namespace A153851.P2761726484883236035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230197 ((n + 4) ^ n) + 1

end

end A153851.P2761726484883236035

/-!
# A153852: Nonzero coefficients of g.f.: A(x) = G(G(x)) where G(x) = x + G(G(x))^3 is the g.f. of A153851.

The programs for A153852, there is no canonical definition to state claims against.
-/

/-! ## A153852.P16015069418540154606

`A052456(n)+A007094(A002275(n))`
-/

namespace A153852.P16015069418540154606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052456 n + A007094 (A002275 n).toNat

end

end A153852.P16015069418540154606

/-!
# A153853: Nonzero coefficients of g.f.: A(x) = G(G(G(x))) where G(x) = x + G(G(x))^3 is the g.f. of A153851.

The programs for A153853, there is no canonical definition to state claims against.
-/

/-! ## A153853.P6233591160085104083

`A075607((n+2)*a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A153853.P6233591160085104083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A075607 ((n + 2 : ℤ) * a (n - 1)).toNat

end

end A153853.P6233591160085104083

/-!
# A153859: Triangle read by rows, A007318 * (A007476 * 0 ^(n-k)).

The programs for A153859, there is no canonical definition to state claims against.
-/

/-! ## A153859.P14120255692474996882

`A007318(n)*A007476(A002262(n))`
-/

namespace A153859.P14120255692474996882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A007476 (A002262 n).toNat

end

end A153859.P14120255692474996882

/-! ## A153859.P17726706938830111801

`abs(A007476(A002262(n))*A108086(n))`
-/

namespace A153859.P17726706938830111801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007476 (A002262 n).toNat * A108086 n|

end

end A153859.P17726706938830111801

/-! ## A153859.P14691017379094985290

`abs(A007476(A002262(n))*A130595(n))`
-/

namespace A153859.P14691017379094985290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007476 (A002262 n).toNat * A130595 n|

end

end A153859.P14691017379094985290

/-! ## A153859.P10128720779192110995

`sqrt(A008459(n))*A007476(A002262(n))`
-/

namespace A153859.P10128720779192110995
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A007476 (A002262 n).toNat : ℝ)

end

end A153859.P10128720779192110995

/-! ## A153859.P15485034397614681141

`Δ[A102363(n)]*A007476(A002262(n))`
-/

namespace A153859.P15485034397614681141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A007476 (A002262 n).toNat

end

end A153859.P15485034397614681141

/-! ## A153859.P4864452106959230543

`A007318(n)*A007476(A025668(n+1))`
-/

namespace A153859.P4864452106959230543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A007476 (A025668 (n + 1)).toNat

end

end A153859.P4864452106959230543

/-! ## A153859.P12142371405838447666

`A007318(n)*A007476(A144328(n+1))`
-/

namespace A153859.P12142371405838447666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A007476 (A144328 (n + 1)).toNat

end

end A153859.P12142371405838447666

/-! ## A153859.P1146886178879664353

`abs(A007476(A025668(n+1))*A108086(n))`
-/

namespace A153859.P1146886178879664353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007476 (A025668 (n + 1)).toNat * A108086 n|

end

end A153859.P1146886178879664353

/-! ## A153859.P17630184904207304845

`abs(A007476(A025668(n+1))*A130595(n))`
-/

namespace A153859.P17630184904207304845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007476 (A025668 (n + 1)).toNat * A130595 n|

end

end A153859.P17630184904207304845

/-! ## A153859.P13565947916785313404

`abs(A007476(A144328(n+1))*A108086(n))`
-/

namespace A153859.P13565947916785313404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007476 (A144328 (n + 1)).toNat * A108086 n|

end

end A153859.P13565947916785313404

/-!
# A153860: Triangle by columns: leftmost column = (1, 0, 1, -1, 1, -1, 1, ...); columns >1 = (1, 1, 0, 0, 0, ...).

The programs for A153860, the canonical program `A153860.P3106289355422847430` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153860 has offset 1).

The definition of A153860 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153860.P3106289355422847430

`Δ[A103451(n)]^A025581(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A153860

/-- `Δ[A103451(n)]^A025581(n)` -/
def P3106289355422847430.Spec : Prop :=
  ∀ n, P3106289355422847430.a n = (A153860 (n + 1) : ℚ)

end A153860

/-! ## A153860.P2352282977585389199

`Δ[A103451(n)]^A242378(n)`
-/

namespace A153860.P2352282977585389199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A242378 n : ℤ)

end

end A153860.P2352282977585389199

namespace A153860

/-- `Δ[A103451(n)]^A242378(n)` -/
def P2352282977585389199.Spec : Prop :=
  ∀ n, P2352282977585389199.a n = (A153860 (n + 1) : ℚ)

end A153860

/-! ## A153860.P3245236377710656517

`Δ[A103452(n)²]^A341907(n)`
-/

namespace A153860.P3245236377710656517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A341907 n : ℤ)

end

end A153860.P3245236377710656517

namespace A153860

/-- `Δ[A103452(n)²]^A341907(n)` -/
def P3245236377710656517.Spec : Prop :=
  ∀ n, P3245236377710656517.a n = (A153860 (n + 1) : ℚ)

end A153860

/-! ## A153860.P8037361228790051502

`Δ[A103451(n)]^A206735(n+1)`
-/

namespace A153860.P8037361228790051502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A206735 (n + 1) : ℤ)

end

end A153860.P8037361228790051502

namespace A153860

/-- `Δ[A103451(n)]^A206735(n+1)` -/
def P8037361228790051502.Spec : Prop :=
  ∀ n, P8037361228790051502.a n = (A153860 (n + 1) : ℚ)

end A153860

/-! ## A153860.P8625142132401915086

`(Δ[A131816(n)]%2)^A025581(n)`
-/

namespace A153860.P8625142132401915086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131816 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (f1 (n + 1) - f1 n) 2 : ℚ) ^ (A025581 n : ℤ)

end

end A153860.P8625142132401915086

namespace A153860

/-- `(Δ[A131816(n)]%2)^A025581(n)` -/
def P8625142132401915086.Spec : Prop :=
  ∀ n, P8625142132401915086.a n = (A153860 (n + 1) : ℚ)

end A153860

/-! ## A153860.P4372043673382884527

`Δ[A103452(n)²]^A327029(n+1)`
-/

namespace A153860.P4372043673382884527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A327029 (n + 1) : ℤ)

end

end A153860.P4372043673382884527

namespace A153860

/-- `Δ[A103452(n)²]^A327029(n+1)` -/
def P4372043673382884527.Spec : Prop :=
  ∀ n, P4372043673382884527.a n = (A153860 (n + 1) : ℚ)

end A153860

/-! ## A153860.P9203180001365909958

`Δ[A103451(n)]^A047264(A004736(n+1))`
-/

namespace A153860.P9203180001365909958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A047264 (A004736 (n + 1)).toNat : ℤ)

end

end A153860.P9203180001365909958

namespace A153860

/-- `Δ[A103451(n)]^A047264(A004736(n+1))` -/
def P9203180001365909958.Spec : Prop :=
  ∀ n, P9203180001365909958.a n = (A153860 (n + 1) : ℚ)

end A153860

/-! ## A153860.P9526649446082408651

`(A001223(A007318(n))-A111596(n+1))%2`
-/

namespace A153860.P9526649446082408651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001223 (A007318 n).toNat - A111596 (n + 1)) 2

end

end A153860.P9526649446082408651

namespace A153860

/-- `(A001223(A007318(n))-A111596(n+1))%2` -/
def P9526649446082408651.Spec : Prop :=
  ∀ n, P9526649446082408651.a n = A153860 (n + 1)

end A153860

/-! ## A153860.P8383413926069855490

`Δ[A010051(A134059(n))]^A025581(n)`
-/

namespace A153860.P8383413926069855490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A134059 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A025581 n : ℤ)

end

end A153860.P8383413926069855490

namespace A153860

/-- `Δ[A010051(A134059(n))]^A025581(n)` -/
def P8383413926069855490.Spec : Prop :=
  ∀ n, P8383413926069855490.a n = (A153860 (n + 1) : ℚ)

end A153860

/-! ## A153860.P10642449065890342361

`Δ[A103451(n)]^A122283(n)`
-/

namespace A153860.P10642449065890342361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A122283 n : ℤ)

end

end A153860.P10642449065890342361

namespace A153860

/-- `Δ[A103451(n)]^A122283(n)` -/
def P10642449065890342361.Spec : Prop :=
  ∀ n, P10642449065890342361.a n = (A153860 (n + 1) : ℚ)

end A153860

/-!
# A153861: Triangle read by rows, binomial transform of triangle A153860.

The programs for A153861, the canonical program `A153861.P17055082449652381719` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153861 has offset 0).

The definition of A153861 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153861.P17055082449652381719

`2*T(n-1,k)+T(n-1,k-1)-T(n-2,k)-T(n-2,k-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153861

/-- `2*T(n-1,k)+T(n-1,k-1)-T(n-2,k)-T(n-2,k-1)` -/
def P17055082449652381719.Spec : Prop :=
  ∀ n, P17055082449652381719.a n = A153861 n

theorem P17055082449652381719.correct : P17055082449652381719.Spec := by
  intro n
  simp only [A153861]

end A153861

/-! ## A153861.P12012757180969943209

`T(n-1,k)+C(row(n), col(n))` with `a(0)=1, a(1)=1`
-/

namespace A153861.P12012757180969943209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUp a n + Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n)

end

end A153861.P12012757180969943209

namespace A153861

/-- `T(n-1,k)+C(row(n), col(n))` -/
def P12012757180969943209.Spec : Prop :=
  ∀ n, (P12012757180969943209.a n : ℤ) = A153861 n

end A153861

/-! ## A153861.P10079716542212790432

`A074909(n+1)-char[∑[n+1]]`
-/

namespace A153861.P10079716542212790432
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A153861.P10079716542212790432

namespace A153861

/-- `A074909(n+1)-char[∑[n+1]]` -/
def P10079716542212790432.Spec : Prop :=
  ∀ n, P10079716542212790432.a n = A153861 n

end A153861

/-! ## A153861.P8735979292775058618

`A259525(n)+A132046(n)`
-/

namespace A153861.P8735979292775058618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259525 n + A132046 n

end

end A153861.P8735979292775058618

namespace A153861

/-- `A259525(n)+A132046(n)` -/
def P8735979292775058618.Spec : Prop :=
  ∀ n, P8735979292775058618.a n = A153861 n

end A153861

/-! ## A153861.P2940504812879242112

`A135278(n)-A073424(n)`
-/

namespace A153861.P2940504812879242112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n - A073424 n

end

end A153861.P2940504812879242112

namespace A153861

/-- `A135278(n)-A073424(n)` -/
def P2940504812879242112.Spec : Prop :=
  ∀ n, P2940504812879242112.a n = A153861 n

end A153861

/-! ## A153861.P16915039580953321344

`A193819(n)/A059268(n)`
-/

namespace A153861.P16915039580953321344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193819 n : ℚ) / (A059268 n : ℚ)

end

end A153861.P16915039580953321344

namespace A153861

/-- `A193819(n)/A059268(n)` -/
def P16915039580953321344.Spec : Prop :=
  ∀ n, P16915039580953321344.a n = (A153861 n : ℚ)

end A153861

/-! ## A153861.P10224230391395516212

`A259477(n)/A004736(n+1)`
-/

namespace A153861.P10224230391395516212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259477 n : ℚ) / (A004736 (n + 1) : ℚ)

end

end A153861.P10224230391395516212

namespace A153861

/-- `A259477(n)/A004736(n+1)` -/
def P10224230391395516212.Spec : Prop :=
  ∀ n, P10224230391395516212.a n = (A153861 n : ℚ)

end A153861

/-! ## A153861.P8385848382111161226

`A135278(n)-char[A000096(n)+1]`
-/

namespace A153861.P8385848382111161226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A153861.P8385848382111161226

namespace A153861

/-- `A135278(n)-char[A000096(n)+1]` -/
def P8385848382111161226.Spec : Prop :=
  ∀ n, P8385848382111161226.a n = A153861 n

end A153861

/-! ## A153861.P2960131531442894500

`A135278(1-A130296(n+1)+n)`
-/

namespace A153861.P2960131531442894500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (1 - A130296 (n + 1) + (n : ℤ)).toNat

end

end A153861.P2960131531442894500

namespace A153861

/-- `A135278(1-A130296(n+1)+n)` -/
def P2960131531442894500.Spec : Prop :=
  ∀ n, P2960131531442894500.a n = A153861 n

end A153861

/-! ## A153861.P17030295374434722651

`C(A002024(A028310(n)), A002260(n+1))`
-/

namespace A153861.P17030295374434722651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002024 (A028310 n).toNat).toNat (A002260 (n + 1)).toNat

end

end A153861.P17030295374434722651

namespace A153861

/-- `C(A002024(A028310(n)), A002260(n+1))` -/
def P17030295374434722651.Spec : Prop :=
  ∀ n, (P17030295374434722651.a n : ℤ) = A153861 n

end A153861

/-! ## A153861.P6373198310880195057

`C(A002024(A028310(n)), A002262(n)+1)`
-/

namespace A153861.P6373198310880195057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002024 (A028310 n).toNat).toNat (A002262 n + 1).toNat

end

end A153861.P6373198310880195057

namespace A153861

/-- `C(A002024(A028310(n)), A002262(n)+1)` -/
def P6373198310880195057.Spec : Prop :=
  ∀ n, (P6373198310880195057.a n : ℤ) = A153861 n

end A153861

/-! ## A153861.P551005311164923897

`C(A002024(A028310(n)), A048151(n+1))`
-/

namespace A153861.P551005311164923897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002024 (A028310 n).toNat).toNat (A048151 (n + 1)).toNat

end

end A153861.P551005311164923897

namespace A153861

/-- `C(A002024(A028310(n)), A048151(n+1))` -/
def P551005311164923897.Spec : Prop :=
  ∀ n, (P551005311164923897.a n : ℤ) = A153861 n

end A153861

/-! ## A153861.P16178839311570823781

`A135278(n)-(A007318(n)-A206735(n))`
-/

namespace A153861.P16178839311570823781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n - (A007318 n - A206735 n)

end

end A153861.P16178839311570823781

namespace A153861

/-- `A135278(n)-(A007318(n)-A206735(n))` -/
def P16178839311570823781.Spec : Prop :=
  ∀ n, P16178839311570823781.a n = A153861 n

end A153861

/-! ## A153861.P6047958693397663586

`A007318(n+1)+A007318(n)-A103451(n)`
-/

namespace A153861.P6047958693397663586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) + (A007318 n - A103451 n)

end

end A153861.P6047958693397663586

namespace A153861

/-- `A007318(n+1)+A007318(n)-A103451(n)` -/
def P6047958693397663586.Spec : Prop :=
  ∀ n, P6047958693397663586.a n = A153861 n

end A153861

/-! ## A153861.P17972560283457507879

`A007318(n+1)+A132046(n)-A007318(n)`
-/

namespace A153861.P17972560283457507879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) + (A132046 n - A007318 n)

end

end A153861.P17972560283457507879

namespace A153861

/-- `A007318(n+1)+A132046(n)-A007318(n)` -/
def P17972560283457507879.Spec : Prop :=
  ∀ n, P17972560283457507879.a n = A153861 n

end A153861

/-! ## A153861.P12402341915949611327

`A007318(n+1)+A109128(n)-A132044(n)`
-/

namespace A153861.P12402341915949611327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) + (A109128 n - A132044 n)

end

end A153861.P12402341915949611327

namespace A153861

/-- `A007318(n+1)+A109128(n)-A132044(n)` -/
def P12402341915949611327.Spec : Prop :=
  ∀ n, P12402341915949611327.a n = A153861 n

end A153861

/-! ## A153861.P3213373725710451876

`A007318(n+1)+A135226(n)-A135225(n)`
-/

namespace A153861.P3213373725710451876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) + (A135226 n - A135225 n)

end

end A153861.P3213373725710451876

namespace A153861

/-- `A007318(n+1)+A135226(n)-A135225(n)` -/
def P3213373725710451876.Spec : Prop :=
  ∀ n, P3213373725710451876.a n = A153861 n

end A153861

/-! ## A153861.P16241037880226853300

`A208510(n+1)+A135278(n)-A029653(n)`
-/

namespace A153861.P16241037880226853300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (n + 1) + (A135278 n - A029653 n)

end

end A153861.P16241037880226853300

namespace A153861

/-- `A208510(n+1)+A135278(n)-A029653(n)` -/
def P16241037880226853300.Spec : Prop :=
  ∀ n, P16241037880226853300.a n = A153861 n

end A153861

/-! ## A153861.P9238950029032256360

`A007318(n+1)+A007318(n)%A008288(n)`
-/

namespace A153861.P9238950029032256360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) + Int.tmod (A007318 n) (A008288 n)

end

end A153861.P9238950029032256360

namespace A153861

/-- `A007318(n+1)+A007318(n)%A008288(n)` -/
def P9238950029032256360.Spec : Prop :=
  ∀ n, P9238950029032256360.a n = A153861 n

end A153861

/-! ## A153861.P3305454771559946473

`A007318(n+1)+A132071(n)-A002024(n+1)`
-/

namespace A153861.P3305454771559946473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) + (A132071 n - A002024 (n + 1))

end

end A153861.P3305454771559946473

namespace A153861

/-- `A007318(n+1)+A132071(n)-A002024(n+1)` -/
def P3305454771559946473.Spec : Prop :=
  ∀ n, P3305454771559946473.a n = A153861 n

end A153861

/-!
# A153862: Smallest of four consecutive Fibonacci numbers such that sum of four consecutive Fibonacci numbers is prime number.

The programs for A153862, there is no canonical definition to state claims against.
-/

/-! ## A153862.P14848659630978733097

`round(A153863(n+1)/ϕ)`
-/

namespace A153862.P14848659630978733097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A153863 (n + 1) : ℝ) / Real.goldenRatio)

end

end A153862.P14848659630978733097

/-! ## A153862.P11878497901538166518

`A000045(A001606(n+3)-3)`
-/

namespace A153862.P11878497901538166518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A001606 (n + 3) - 3).toNat

end

end A153862.P11878497901538166518

/-! ## A153862.P11566576377459897531

`A000045(eq[1, A086599(n+3)])`
-/

namespace A153862.P11566576377459897531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086599 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A153862.P11566576377459897531

/-! ## A153862.P4634150848862038567

`A000045(eq[2, A272377(n+3)])`
-/

namespace A153862.P4634150848862038567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272377 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A153862.P4634150848862038567

/-! ## A153862.P14699987457664434013

`A153865(n+1)-A153863(n+1)`
-/

namespace A153862.P14699987457664434013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153865 (n + 1) - A153863 (n + 1)

end

end A153862.P14699987457664434013

/-!
# A153863: Second-to-smallest of four consecutive Fibonacci numbers such that sum of four consecutive Fibonacci numbers is prime number.

The programs for A153863, there is no canonical definition to state claims against.
-/

/-! ## A153863.P13659979690237511525

`A000045(A001606(n+3)-2)`
-/

namespace A153863.P13659979690237511525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A001606 (n + 3) - 2).toNat

end

end A153863.P13659979690237511525

/-! ## A153863.P18053804819616187937

`record[A000045(n+2)%A280104(n)]`
-/

namespace A153863.P18053804819616187937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (n + 2)) (A280104 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153863.P18053804819616187937

/-! ## A153863.P3822884799867645228

`A000045(eq[1, A086599(n+3)]+1)`
-/

namespace A153863.P3822884799867645228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086599 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A153863.P3822884799867645228

/-! ## A153863.P7331512888014981394

`A000045(eq[2, A272377(n+3)]+1)`
-/

namespace A153863.P7331512888014981394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272377 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A153863.P7331512888014981394

/-!
# A153865: Second-to-largest of four consecutive Fibonacci numbers such that sum of those four consecutive Fibonacci numbers is a prime number.

The programs for A153865, there is no canonical definition to state claims against.
-/

/-! ## A153865.P6972933127970566471

`round(ϕ*A153863(n+1))`
-/

namespace A153865.P6972933127970566471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A153863 (n + 1) : ℝ))

end

end A153865.P6972933127970566471

/-! ## A153865.P18654903164202348

`round(A153866(n+1)/ϕ)`
-/

namespace A153865.P18654903164202348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A153866 (n + 1) : ℝ) / Real.goldenRatio)

end

end A153865.P18654903164202348

/-! ## A153865.P1186503197981691829

`A212804(A001606(n+3))`
-/

namespace A153865.P1186503197981691829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A001606 (n + 3)).toNat

end

end A153865.P1186503197981691829

/-! ## A153865.P7385268002605014686

`A000045(A001606(n+3)-1)`
-/

namespace A153865.P7385268002605014686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A001606 (n + 3) - 1).toNat

end

end A153865.P7385268002605014686

/-! ## A153865.P8595259813424574291

`A153863(n+1)+A153862(n+1)`
-/

namespace A153865.P8595259813424574291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153863 (n + 1) + A153862 (n + 1)

end

end A153865.P8595259813424574291

/-!
# A153866: Largest of four consecutive Fibonacci numbers whose sum is a prime number.

The programs for A153866, there is no canonical definition to state claims against.
-/

/-! ## A153866.P12133919634669734488

`round(ϕ*A153865(n+1))`
-/

namespace A153866.P12133919634669734488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A153865 (n + 1) : ℝ))

end

end A153866.P12133919634669734488

/-! ## A153866.P11413704211122617313

`A000045(A001606(n+3))`
-/

namespace A153866.P11413704211122617313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A001606 (n + 3)).toNat

end

end A153866.P11413704211122617313

/-! ## A153866.P16691510857725857661

`A302126(2*A001606(n+3))`
-/

namespace A153866.P16691510857725857661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (2 * A001606 (n + 3)).toNat

end

end A153866.P16691510857725857661

/-! ## A153866.P4394464375657334365

`A153865(n+1)+A153863(n+1)`
-/

namespace A153866.P4394464375657334365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153865 (n + 1) + A153863 (n + 1)

end

end A153866.P4394464375657334365

/-! ## A153866.P6918123050804045197

`A153862(n+1)+2*A153863(n+1)`
-/

namespace A153866.P6918123050804045197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153862 (n + 1) + 2 * A153863 (n + 1)

end

end A153866.P6918123050804045197

/-!
# A153867: Primes which are the sum of four consecutive Fibonacci numbers.

The programs for A153867, there is no canonical definition to state claims against.
-/

/-! ## A153867.P4574351727343787020

`A005479(n+3)`
-/

namespace A153867.P4574351727343787020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005479 (n + 3)

end

end A153867.P4574351727343787020

/-! ## A153867.P11619020316806059822

`record[A280104(n+4)]`
-/

namespace A153867.P11619020316806059822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280104 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153867.P11619020316806059822

/-! ## A153867.P11340610175511929511

`A000032(A001606(n+3))`
-/

namespace A153867.P11340610175511929511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A001606 (n + 3)).toNat

end

end A153867.P11340610175511929511

/-! ## A153867.P959939467065391664

`A254729(A001606(n+3)+1)`
-/

namespace A153867.P959939467065391664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254729 (A001606 (n + 3) + 1).toNat

end

end A153867.P959939467065391664

/-! ## A153867.P9409544024563028414

`A288219(A001606(n+3)-2)`
-/

namespace A153867.P9409544024563028414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288219 (A001606 (n + 3) - 2).toNat

end

end A153867.P9409544024563028414

/-!
# A153868: Triangle read by rows, A135278 * (A040027 * 0^(n-k)).

The programs for A153868, there is no canonical definition to state claims against.
-/

/-! ## A153868.P3467412210646532175

`A040027(A002262(n))*A135278(n)`
-/

namespace A153868.P3467412210646532175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040027 (A002262 n).toNat * A135278 n

end

end A153868.P3467412210646532175

/-! ## A153868.P8904245294997963745

`A040027(A002262(n))*A074909(n+1)`
-/

namespace A153868.P8904245294997963745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040027 (A002262 n).toNat * A074909 (n + 1)

end

end A153868.P8904245294997963745

/-! ## A153868.P8603912660076232605

`A107315(A127568(n))*A135278(n)`
-/

namespace A153868.P8603912660076232605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107315 (A127568 n).toNat * A135278 n

end

end A153868.P8603912660076232605

/-! ## A153868.P4232694503196390774

`A074909(n+1)*A107315(A127568(n))`
-/

namespace A153868.P4232694503196390774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) * A107315 (A127568 n).toNat

end

end A153868.P4232694503196390774

/-! ## A153868.P5410775425724306659

`(∑[A214292(n)]+1)*A107315(A127568(n))`
-/

namespace A153868.P5410775425724306659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A107315 (A127568 n).toNat

end

end A153868.P5410775425724306659

/-!
# A153869: Triangle read by rows, A129186 * A128064(unsigned).

The programs for A153869, the canonical program `A153869.P16225442478312210075` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153869 has offset 1).

The definition of A153869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153869.P11261201051362661435

`(1-C(∑[char[∑[n]]], 2)+n)*char[∑[n-gcd(n, ∑[n])]+n]`
-/

namespace A153869.P11261201051362661435
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

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f6 j) : ℤ)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * ((if ∃ j, f4 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A153869.P11261201051362661435

namespace A153869

/-- `(1-C(∑[char[∑[n]]], 2)+n)*char[∑[n-gcd(n, ∑[n])]+n]` -/
def P11261201051362661435.Spec : Prop :=
  ∀ n, P11261201051362661435.a n = A153869 (n + 1)

end A153869

/-! ## A153869.P12120970308336602347

`A113125(n)*A153764(n)`
-/

namespace A153869.P12120970308336602347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113125 n * A153764 n

end

end A153869.P12120970308336602347

namespace A153869

/-- `A113125(n)*A153764(n)` -/
def P12120970308336602347.Spec : Prop :=
  ∀ n, P12120970308336602347.a n = A153869 (n + 1)

end A153869

/-! ## A153869.P7358379138988078296

`A113125(n)%A123966(n)`
-/

namespace A153869.P7358379138988078296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113125 n) (A123966 n)

end

end A153869.P7358379138988078296

namespace A153869

/-- `A113125(n)%A123966(n)` -/
def P7358379138988078296.Spec : Prop :=
  ∀ n, P7358379138988078296.a n = A153869 (n + 1)

end A153869

/-! ## A153869.P514855368860362675

`lcm(A071919(n), A113125(n))`
-/

namespace A153869.P514855368860362675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A071919 n) (A113125 n)

end

end A153869.P514855368860362675

namespace A153869

/-- `lcm(A071919(n), A113125(n))` -/
def P514855368860362675.Spec : Prop :=
  ∀ n, (P514855368860362675.a n : ℤ) = A153869 (n + 1)

end A153869

/-! ## A153869.P4187282851123352339

`C(A128227(n), A007318(n+2))`
-/

namespace A153869.P4187282851123352339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A128227 n).toNat (A007318 (n + 2)).toNat

end

end A153869.P4187282851123352339

namespace A153869

/-- `C(A128227(n), A007318(n+2))` -/
def P4187282851123352339.Spec : Prop :=
  ∀ n, (P4187282851123352339.a n : ℤ) = A153869 (n + 1)

end A153869

/-! ## A153869.P16225442478312210075

`A132440(abs(A132440(n+1)-n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A153869

/-- `A132440(abs(A132440(n+1)-n))` -/
def P16225442478312210075.Spec : Prop :=
  ∀ n, P16225442478312210075.a n = A153869 (n + 1)

theorem P16225442478312210075.correct : P16225442478312210075.Spec := by
  intro n
  simp only [A153869, Nat.add_sub_cancel]

end A153869

/-! ## A153869.P3085889010856823612

`A002260(n+1)*A097806(n+1)`
-/

namespace A153869.P3085889010856823612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A097806 (n + 1)

end

end A153869.P3085889010856823612

namespace A153869

/-- `A002260(n+1)*A097806(n+1)` -/
def P3085889010856823612.Spec : Prop :=
  ∀ n, P3085889010856823612.a n = A153869 (n + 1)

end A153869

/-! ## A153869.P17198967399615104453

`A002260(n+1)*A103451(n+2)`
-/

namespace A153869.P17198967399615104453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A103451 (n + 2)

end

end A153869.P17198967399615104453

namespace A153869

/-- `A002260(n+1)*A103451(n+2)` -/
def P17198967399615104453.Spec : Prop :=
  ∀ n, P17198967399615104453.a n = A153869 (n + 1)

end A153869

/-! ## A153869.P1523958752065374044

`A134402(n+1-A132440(n+1))`
-/

namespace A153869.P1523958752065374044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134402 ((n + 1 : ℤ) - A132440 (n + 1)).toNat

end

end A153869.P1523958752065374044

namespace A153869

/-- `A134402(n+1-A132440(n+1))` -/
def P1523958752065374044.Spec : Prop :=
  ∀ n, P1523958752065374044.a n = A153869 (n + 1)

end A153869

/-! ## A153869.P15898217256526447603

`A134402(n+1-A130460(n+2))`
-/

namespace A153869.P15898217256526447603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134402 ((n + 1 : ℤ) - A130460 (n + 2)).toNat

end

end A153869.P15898217256526447603

namespace A153869

/-- `A134402(n+1-A130460(n+2))` -/
def P15898217256526447603.Spec : Prop :=
  ∀ n, P15898217256526447603.a n = A153869 (n + 1)

end A153869

/-! ## A153869.P10129549991567617743

`A097806(n+1)*A144328(n+2)`
-/

namespace A153869.P10129549991567617743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 (n + 1) * A144328 (n + 2)

end

end A153869.P10129549991567617743

namespace A153869

/-- `A097806(n+1)*A144328(n+2)` -/
def P10129549991567617743.Spec : Prop :=
  ∀ n, P10129549991567617743.a n = A153869 (n + 1)

end A153869

/-! ## A153869.P1363188103454399324

`A002260(n+1)%Δ[A134231(n+1)]`
-/

namespace A153869.P1363188103454399324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (n + 1)) (f1 (n + 1) - f1 n)

end

end A153869.P1363188103454399324

namespace A153869

/-- `A002260(n+1)%Δ[A134231(n+1)]` -/
def P1363188103454399324.Spec : Prop :=
  ∀ n, P1363188103454399324.a n = A153869 (n + 1)

end A153869

/-! ## A153869.P1491493404845452183

`A134402(A083920(n+1))+A134402(n+1)`
-/

namespace A153869.P1491493404845452183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134402 (A083920 (n + 1)).toNat + A134402 (n + 1)

end

end A153869.P1491493404845452183

namespace A153869

/-- `A134402(A083920(n+1))+A134402(n+1)` -/
def P1491493404845452183.Spec : Prop :=
  ∀ n, P1491493404845452183.a n = A153869 (n + 1)

end A153869

/-! ## A153869.P13531984503318300635

`A128229(n+2)/A128227(n+1)*A128227(n)`
-/

namespace A153869.P13531984503318300635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128229 (n + 2) : ℚ) / (A128227 (n + 1) : ℚ) * (A128227 n : ℚ)

end

end A153869.P13531984503318300635

namespace A153869

/-- `A128229(n+2)/A128227(n+1)*A128227(n)` -/
def P13531984503318300635.Spec : Prop :=
  ∀ n, P13531984503318300635.a n = (A153869 (n + 1) : ℚ)

end A153869

/-! ## A153869.P16595022119077732523

`A002260(n+1)*A167374(n+1)*A167374(n+1)`
-/

namespace A153869.P16595022119077732523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A167374 (n + 1) * A167374 (n + 1)

end

end A153869.P16595022119077732523

namespace A153869

/-- `A002260(n+1)*A167374(n+1)*A167374(n+1)` -/
def P16595022119077732523.Spec : Prop :=
  ∀ n, P16595022119077732523.a n = A153869 (n + 1)

end A153869

/-! ## A153869.P2324228432238947981

`A002260(n+1)*A127701(n+2)/A128221(n+2)`
-/

namespace A153869.P2324228432238947981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) * A127701 (n + 2) : ℚ) / (A128221 (n + 2) : ℚ)

end

end A153869.P2324228432238947981

namespace A153869

/-- `A002260(n+1)*A127701(n+2)/A128221(n+2)` -/
def P2324228432238947981.Spec : Prop :=
  ∀ n, P2324228432238947981.a n = (A153869 (n + 1) : ℚ)

end A153869

/-! ## A153869.P5063387375801916564

`A002260(n+1)*A127701(n+2)/A128222(n+2)`
-/

namespace A153869.P5063387375801916564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) * A127701 (n + 2) : ℚ) / (A128222 (n + 2) : ℚ)

end

end A153869.P5063387375801916564

namespace A153869

/-- `A002260(n+1)*A127701(n+2)/A128222(n+2)` -/
def P5063387375801916564.Spec : Prop :=
  ∀ n, P5063387375801916564.a n = (A153869 (n + 1) : ℚ)

end A153869

/-! ## A153869.P8793086341682201125

`A134402(n+1-A134402(n+2))`
-/

namespace A153869.P8793086341682201125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134402 ((n + 1 : ℤ) - A134402 (n + 2)).toNat

end

end A153869.P8793086341682201125

namespace A153869

/-- `A134402(n+1-A134402(n+2))` -/
def P8793086341682201125.Spec : Prop :=
  ∀ n, P8793086341682201125.a n = A153869 (n + 1)

end A153869

/-! ## A153869.P14492139877716890524

`C(A002260(n+1), A008288(n+2))`
-/

namespace A153869.P14492139877716890524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002260 (n + 1)).toNat (A008288 (n + 2)).toNat

end

end A153869.P14492139877716890524

namespace A153869

/-- `C(A002260(n+1), A008288(n+2))` -/
def P14492139877716890524.Spec : Prop :=
  ∀ n, (P14492139877716890524.a n : ℤ) = A153869 (n + 1)

end A153869

/-! ## A153869.P7588788814355961633

`C(A028310(A048151(n+1)), A131063(n+2))`
-/

namespace A153869.P7588788814355961633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A028310 (A048151 (n + 1)).toNat).toNat (A131063 (n + 2)).toNat

end

end A153869.P7588788814355961633

namespace A153869

/-- `C(A028310(A048151(n+1)), A131063(n+2))` -/
def P7588788814355961633.Spec : Prop :=
  ∀ n, (P7588788814355961633.a n : ℤ) = A153869 (n + 1)

end A153869

/-!
# A153873: a(n) = 9*Fibonacci(2n+1) - 1.

The programs for A153873, the canonical program `A153873.P2413952631112389765` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153873 has offset 0).

The definition of A153873 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*A000045(2*n+1)-1` (program `A153873.P2413952631112389765`, by `A153873.P2413952631112389765.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153873.P16055150218874029504

`3*a(n-1)-a(n-2)+1` with `a(0)=8, a(1)=17`
-/

namespace A153873.P16055150218874029504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 17] fun n a =>
  3 * a (n - 1) - a (n - 2) + 1

end

end A153873.P16055150218874029504

namespace A153873

/-- `3*a(n-1)-a(n-2)+1` -/
def P16055150218874029504.Spec : Prop :=
  ∀ n, P16055150218874029504.a n = A153873 n

end A153873

/-! ## A153873.P440842355515391867

`9*A001519(n+1)-1`
-/

namespace A153873.P440842355515391867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A001519 (n + 1) - 1

end

end A153873.P440842355515391867

namespace A153873

/-- `9*A001519(n+1)-1` -/
def P440842355515391867.Spec : Prop :=
  ∀ n, P440842355515391867.a n = A153873 n

end A153873

/-! ## A153873.P2413952631112389765

`9*A000045(2*n+1)-1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A153873

/-- `9*A000045(2*n+1)-1` -/
def P2413952631112389765.Spec : Prop :=
  ∀ n, P2413952631112389765.a n = A153873 n

theorem P2413952631112389765.correct : P2413952631112389765.Spec := by
  intro n
  simp only [A153873]

end A153873

/-! ## A153873.P9454027371362441371

`record[a(n-2)-(a(n-1)+1)]` with `a(0)=8, a(1)=8`
-/

namespace A153873.P9454027371362441371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8, 8] fun n f1 =>
  f1 (n - 2) - (f1 (n - 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153873.P9454027371362441371

namespace A153873

/-- `record[a(n-2)-(a(n-1)+1)]` -/
def P9454027371362441371.Spec : Prop :=
  ∀ n, P9454027371362441371.a n = A153873 n

end A153873

/-! ## A153873.P14906913469239201807

`record[a(n-2)-1-a(n-1)]` with `a(0)=8, a(1)=8`
-/

namespace A153873.P14906913469239201807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8, 8] fun n f1 =>
  f1 (n - 2) - 1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153873.P14906913469239201807

namespace A153873

/-- `record[a(n-2)-1-a(n-1)]` -/
def P14906913469239201807.Spec : Prop :=
  ∀ n, P14906913469239201807.a n = A153873 n

end A153873

/-! ## A153873.P1386463645725995933

`A022092(Δ[n²])-1`
-/

namespace A153873.P1386463645725995933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A153873.P1386463645725995933

namespace A153873

/-- `A022092(Δ[n²])-1` -/
def P1386463645725995933.Spec : Prop :=
  ∀ n, P1386463645725995933.a n = A153873 n

end A153873

/-! ## A153873.P17920561658255574124

`9*Δ[A000045(2*n)]-1`
-/

namespace A153873.P17920561658255574124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (f1 (n + 1) - f1 n) - 1

end

end A153873.P17920561658255574124

namespace A153873

/-- `9*Δ[A000045(2*n)]-1` -/
def P17920561658255574124.Spec : Prop :=
  ∀ n, P17920561658255574124.a n = A153873 n

end A153873

/-! ## A153873.P3041502617457574122

`A155110(n)+A027941(n)`
-/

namespace A153873.P3041502617457574122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155110 n + A027941 n

end

end A153873.P3041502617457574122

namespace A153873

/-- `A155110(n)+A027941(n)` -/
def P3041502617457574122.Spec : Prop :=
  ∀ n, P3041502617457574122.a n = A153873 n

theorem P3041502617457574122.correct : P3041502617457574122.Spec := by
  intro n
  simp only [A153873, Nat.add_sub_cancel, A153873.P3041502617457574122.a, A153873.P2413952631112389765.a, A000045, A000045.P11838749114346432762.a, A027941, A027941.P8226647174057246379.a, A155110, A155110.P4227014663594105038.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153873

/-! ## A153873.P4352755793173871449

`A153388(n)-A027941(n)`
-/

namespace A153873.P4352755793173871449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153388 n - A027941 n

end

end A153873.P4352755793173871449

namespace A153873

/-- `A153388(n)-A027941(n)` -/
def P4352755793173871449.Spec : Prop :=
  ∀ n, P4352755793173871449.a n = A153873 n

end A153873

/-! ## A153873.P1441940631246982751

`A293064(n+2)+A155110(n)`
-/

namespace A153873.P1441940631246982751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293064 (n + 2) + A155110 n

end

end A153873.P1441940631246982751

namespace A153873

/-- `A293064(n+2)+A155110(n)` -/
def P1441940631246982751.Spec : Prop :=
  ∀ n, P1441940631246982751.a n = A153873 n

end A153873

/-! ## A153873.P6497365048047139737

`A022114(2*n+1)-A192908(n+1)`
-/

namespace A153873.P6497365048047139737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022114 (2 * n + 1) - A192908 (n + 1)

end

end A153873.P6497365048047139737

namespace A153873

/-- `A022114(2*n+1)-A192908(n+1)` -/
def P6497365048047139737.Spec : Prop :=
  ∀ n, P6497365048047139737.a n = A153873 n

end A153873

/-! ## A153873.P17267352337784681245

`A022311(2*n+1)+A000032(2*n)`
-/

namespace A153873.P17267352337784681245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022311 (2 * n + 1) + A000032 (2 * n)

end

end A153873.P17267352337784681245

namespace A153873

/-- `A022311(2*n+1)+A000032(2*n)` -/
def P17267352337784681245.Spec : Prop :=
  ∀ n, P17267352337784681245.a n = A153873 n

end A153873

/-! ## A153873.P17253813197799273802

`A022090(2*n+1)+A001595(2*n)`
-/

namespace A153873.P17253813197799273802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022090 (2 * n + 1) + A001595 (2 * n)

end

end A153873.P17253813197799273802

namespace A153873

/-- `A022090(2*n+1)+A001595(2*n)` -/
def P17253813197799273802.Spec : Prop :=
  ∀ n, P17253813197799273802.a n = A153873 n

end A153873

/-! ## A153873.P1682377566285682258

`A022310(2*n+1)+A013655(2*n)`
-/

namespace A153873.P1682377566285682258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022310 (2 * n + 1) + A013655 (2 * n)

end

end A153873.P1682377566285682258

namespace A153873

/-- `A022310(2*n+1)+A013655(2*n)` -/
def P1682377566285682258.Spec : Prop :=
  ∀ n, P1682377566285682258.a n = A153873 n

end A153873

/-! ## A153873.P1425264684935812585

`A022403(2*n)+A022088(2*n+1)`
-/

namespace A153873.P1425264684935812585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022403 (2 * n) + A022088 (2 * n + 1)

end

end A153873.P1425264684935812585

namespace A153873

/-- `A022403(2*n)+A022088(2*n+1)` -/
def P1425264684935812585.Spec : Prop :=
  ∀ n, P1425264684935812585.a n = A153873 n

end A153873

/-! ## A153873.P10396672856386168174

`A152163(2*n)+A022321(2*n+1)`
-/

namespace A153873.P10396672856386168174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 (2 * n) + A022321 (2 * n + 1)

end

end A153873.P10396672856386168174

namespace A153873

/-- `A152163(2*n)+A022321(2*n+1)` -/
def P10396672856386168174.Spec : Prop :=
  ∀ n, P10396672856386168174.a n = A153873 n

end A153873

/-! ## A153873.P13586972586225097339

`A212804(2*n)+A022312(2*n+1)`
-/

namespace A153873.P13586972586225097339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (2 * n) + A022312 (2 * n + 1)

end

end A153873.P13586972586225097339

namespace A153873

/-- `A212804(2*n)+A022312(2*n+1)` -/
def P13586972586225097339.Spec : Prop :=
  ∀ n, P13586972586225097339.a n = A153873 n

end A153873

/-! ## A153873.P9691523493864396986

`A187179(2*n+1)+A111733(2*n)`
-/

namespace A153873.P9691523493864396986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187179 (2 * n + 1) + A111733 (2 * n)

end

end A153873.P9691523493864396986

namespace A153873

/-- `A187179(2*n+1)+A111733(2*n)` -/
def P9691523493864396986.Spec : Prop :=
  ∀ n, P9691523493864396986.a n = A153873 n

end A153873

/-! ## A153873.P12519421081246561768

`A377628(2*n)+A022089(2*n+1)`
-/

namespace A153873.P12519421081246561768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377628 (2 * n) + A022089 (2 * n + 1)

end

end A153873.P12519421081246561768

namespace A153873

/-- `A377628(2*n)+A022089(2*n+1)` -/
def P12519421081246561768.Spec : Prop :=
  ∀ n, P12519421081246561768.a n = A153873 n

end A153873

/-!
# A153875: 3 times 13-gonal (or tridecagonal) numbers: a(n) = 3*n*(11*n - 9)/2.

The programs for A153875, the canonical program `A153875.P13954036086149778126` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153875 has offset 0).

The definition of A153875 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*(11*n-9)/2` (program `A153875.P11264490694774123182`, by `A153875.P11264490694774123182.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153875.P3785032348271388588

`(33*n²-27*n)/2`
-/

namespace A153875.P3785032348271388588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((33 * n ^ 2 : ℤ) - (27 * n : ℤ) : ℚ) / 2

end

end A153875.P3785032348271388588

namespace A153875

/-- `(33*n²-27*n)/2` -/
def P3785032348271388588.Spec : Prop :=
  ∀ n, P3785032348271388588.a n = (A153875 n : ℚ)

theorem P3785032348271388588.correct : P3785032348271388588.Spec := by
  intro n
  induction n with
  | zero => simp [A153875, A153875.P3785032348271388588.a, A153875.P13954036086149778126.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A153875, Nat.add_sub_cancel, A153875.P3785032348271388588.a, A153875.P13954036086149778126.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A153875

/-! ## A153875.P11264490694774123182

`3*n*(11*n-9)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A153875.P11264490694774123182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n : ℤ) * ((11 * n : ℤ) - 9) : ℚ) / 2

end

end A153875.P11264490694774123182

namespace A153875

/-- `3*n*(11*n-9)/2` -/
def P11264490694774123182.Spec : Prop :=
  ∀ n, P11264490694774123182.a n = (A153875 n : ℚ)

theorem P11264490694774123182.correct : P11264490694774123182.Spec := by
  intro n
  induction n with
  | zero => simp [A153875, A153875.P11264490694774123182.a, A153875.P13954036086149778126.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A153875, Nat.add_sub_cancel, A153875.P11264490694774123182.a, A153875.P13954036086149778126.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A153875

/-! ## A153875.P13954036086149778126

`a(n-1)+33*n-30` with `a(0)=0`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153875

/-- `a(n-1)+33*n-30` -/
def P13954036086149778126.Spec : Prop :=
  ∀ n, P13954036086149778126.a n = A153875 n

theorem P13954036086149778126.correct : P13954036086149778126.Spec := by
  intro n
  simp only [A153875]

end A153875

/-! ## A153875.P8715689528005772585

`A051865(n)*3`
-/

namespace A153875.P8715689528005772585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051865 n * 3

end

end A153875.P8715689528005772585

namespace A153875

/-- `A051865(n)*3` -/
def P8715689528005772585.Spec : Prop :=
  ∀ n, P8715689528005772585.a n = A153875 n

end A153875

/-! ## A153875.P9100871537560245524

`∑[a(n-1)+33]` with `a(0)=0, a(1)=3`
-/

namespace A153875.P9100871537560245524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 1) + 33

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153875.P9100871537560245524

namespace A153875

/-- `∑[a(n-1)+33]` -/
def P9100871537560245524.Spec : Prop :=
  ∀ n, (P9100871537560245524.a n : ℤ) = A153875 n

end A153875

/-! ## A153875.P8404744840554413715

`3/2*A152997(n)`
-/

namespace A153875.P8404744840554413715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A152997 n : ℚ)

end

end A153875.P8404744840554413715

namespace A153875

/-- `3/2*A152997(n)` -/
def P8404744840554413715.Spec : Prop :=
  ∀ n, P8404744840554413715.a n = (A153875 n : ℚ)

theorem P8404744840554413715.correct : P8404744840554413715.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A153875, Nat.add_sub_cancel, A153875.P8404744840554413715.a, A153875.P13954036086149778126.a, A152997, A152997.P11215865166906993200.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A153875, Nat.add_sub_cancel, A153875.P8404744840554413715.a, A153875.P13954036086149778126.a, A152997, A152997.P11215865166906993200.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A153875

/-! ## A153875.P3651317415581301585

`A282851(n)+2*n`
-/

namespace A153875.P3651317415581301585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282851 n + (2 * n : ℤ)

end

end A153875.P3651317415581301585

namespace A153875

/-- `A282851(n)+2*n` -/
def P3651317415581301585.Spec : Prop :=
  ∀ n, P3651317415581301585.a n = A153875 n

end A153875

/-! ## A153875.P8094954049337377057

`3*(A180223(n)-n)`
-/

namespace A153875.P8094954049337377057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A180223 n - (n : ℤ))

end

end A153875.P8094954049337377057

namespace A153875

/-- `3*(A180223(n)-n)` -/
def P8094954049337377057.Spec : Prop :=
  ∀ n, P8094954049337377057.a n = A153875 n

end A153875

/-! ## A153875.P11883731738137446013

`∑[n]+2*A051870(n)`
-/

namespace A153875.P11883731738137446013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2 * A051870 n

end

end A153875.P11883731738137446013

namespace A153875

/-- `∑[n]+2*A051870(n)` -/
def P11883731738137446013.Spec : Prop :=
  ∀ n, P11883731738137446013.a n = A153875 n

end A153875

/-! ## A153875.P8510971592189900269

`A098923(n)+∑[2*n]`
-/

namespace A153875.P8510971592189900269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098923 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A153875.P8510971592189900269

namespace A153875

/-- `A098923(n)+∑[2*n]` -/
def P8510971592189900269.Spec : Prop :=
  ∀ n, P8510971592189900269.a n = A153875 n

end A153875

/-! ## A153875.P14336568989525852229

`2*A180232(n)-∑[n]`
-/

namespace A153875.P14336568989525852229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180232 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A153875.P14336568989525852229

namespace A153875

/-- `2*A180232(n)-∑[n]` -/
def P14336568989525852229.Spec : Prop :=
  ∀ n, P14336568989525852229.a n = A153875 n

end A153875

/-! ## A153875.P3600429627610479336

`A152777(n)-n*(n+3)`
-/

namespace A153875.P3600429627610479336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152777 n - (n * (n + 3) : ℤ)

end

end A153875.P3600429627610479336

namespace A153875

/-- `A152777(n)-n*(n+3)` -/
def P3600429627610479336.Spec : Prop :=
  ∀ n, P3600429627610479336.a n = A153875 n

end A153875

/-! ## A153875.P12073533207530673916

`A051871(n)+(4*n-3)*2*n`
-/

namespace A153875.P12073533207530673916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051871 n + ((4 * n : ℤ) - 3) * (2 * n : ℤ)

end

end A153875.P12073533207530673916

namespace A153875

/-- `A051871(n)+(4*n-3)*2*n` -/
def P12073533207530673916.Spec : Prop :=
  ∀ n, P12073533207530673916.a n = A153875 n

end A153875

/-! ## A153875.P5943899267829385715

`A064200(n)+A062741(n)`
-/

namespace A153875.P5943899267829385715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064200 n + A062741 n

end

end A153875.P5943899267829385715

namespace A153875

/-- `A064200(n)+A062741(n)` -/
def P5943899267829385715.Spec : Prop :=
  ∀ n, P5943899267829385715.a n = A153875 n

end A153875

/-! ## A153875.P5500890236109159174

`A139267(n)+A051875(n)`
-/

namespace A153875.P5500890236109159174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139267 n + A051875 n

end

end A153875.P5500890236109159174

namespace A153875

/-- `A139267(n)+A051875(n)` -/
def P5500890236109159174.Spec : Prop :=
  ∀ n, P5500890236109159174.a n = A153875 n

end A153875

/-! ## A153875.P586148197237300600

`A139268(n)+A051873(n)`
-/

namespace A153875.P586148197237300600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139268 n + A051873 n

end

end A153875.P586148197237300600

namespace A153875

/-- `A139268(n)+A051873(n)` -/
def P586148197237300600.Spec : Prop :=
  ∀ n, P586148197237300600.a n = A153875 n

end A153875

/-! ## A153875.P9088298015037972

`A139271(n)+A051871(n)`
-/

namespace A153875.P9088298015037972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139271 n + A051871 n

end

end A153875.P9088298015037972

namespace A153875

/-- `A139271(n)+A051871(n)` -/
def P9088298015037972.Spec : Prop :=
  ∀ n, P9088298015037972.a n = A153875 n

end A153875

/-! ## A153875.P9509760668054562796

`A152965(n)+A051867(n)`
-/

namespace A153875.P9509760668054562796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152965 n + A051867 n

end

end A153875.P9509760668054562796

namespace A153875

/-- `A152965(n)+A051867(n)` -/
def P9509760668054562796.Spec : Prop :=
  ∀ n, P9509760668054562796.a n = A153875 n

end A153875

/-! ## A153875.P7171732149867424816

`A152995(n)+A051869(n)`
-/

namespace A153875.P7171732149867424816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152995 n + A051869 n

end

end A153875.P7171732149867424816

namespace A153875

/-- `A152995(n)+A051869(n)` -/
def P7171732149867424816.Spec : Prop :=
  ∀ n, P7171732149867424816.a n = A153875 n

end A153875

/-! ## A153875.P6859051824353062068

`A152997(n)+A051865(n)`
-/

namespace A153875.P6859051824353062068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152997 n + A051865 n

end

end A153875.P6859051824353062068

namespace A153875

/-- `A152997(n)+A051865(n)` -/
def P6859051824353062068.Spec : Prop :=
  ∀ n, P6859051824353062068.a n = A153875 n

end A153875

/-!
# A153876: a(n) = Sum_{i=2^(n-1)..2^n-1} sigma_0(i), sigma_0(i) number of divisors of n, n positive integer.

The programs for A153876, there is no canonical definition to state claims against.
-/

/-! ## A153876.P16333440056508000705

`A085831(n+1)-A085831(n)-1`
-/

namespace A153876.P16333440056508000705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085831 (n + 1) - A085831 n - 1

end

end A153876.P16333440056508000705

/-! ## A153876.P5453696817486355233

`Δ[A085831(n)]-1`
-/

namespace A153876.P5453696817486355233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A153876.P5453696817486355233

/-! ## A153876.P17077965889233687993

`Δ[A085831(n)+A001489(n)]`
-/

namespace A153876.P17077965889233687993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085831 n + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153876.P17077965889233687993

/-! ## A153876.P1337339420887930597

`Δ[A085831(n)+A022993(n)]`
-/

namespace A153876.P1337339420887930597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085831 n + A022993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153876.P1337339420887930597

/-! ## A153876.P18034327301160106652

`Δ[A085831(n)+A001478(n+1)]`
-/

namespace A153876.P18034327301160106652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085831 n + A001478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153876.P18034327301160106652

/-!
# A153877: Numbers n such that 5n-1 and 5n+1 are both prime.

The programs for A153877, the canonical program `A153877.P12442606473326752863` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153877 has offset 1).

The definition of A153877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153877.P3738209008475426435

`2*A124518(n+1)`
-/

namespace A153877.P3738209008475426435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124518 (n + 1)

end

end A153877.P3738209008475426435

namespace A153877

/-- `2*A124518(n+1)` -/
def P3738209008475426435.Spec : Prop :=
  ∀ n, P3738209008475426435.a n = A153877 (n + 1)

end A153877

/-! ## A153877.P8893214718638713983

`6*A176114(n+1)`
-/

namespace A153877.P8893214718638713983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A176114 (n + 1)

end

end A153877.P8893214718638713983

namespace A153877

/-- `6*A176114(n+1)` -/
def P8893214718638713983.Spec : Prop :=
  ∀ n, P8893214718638713983.a n = A153877 (n + 1)

end A153877

/-! ## A153877.P3757456249589403927

`ceil(A060229(n+1)/5)`
-/

namespace A153877.P3757456249589403927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A060229 (n + 1) : ℚ) / 5⌉

end

end A153877.P3757456249589403927

namespace A153877

/-- `ceil(A060229(n+1)/5)` -/
def P3757456249589403927.Spec : Prop :=
  ∀ n, P3757456249589403927.a n = A153877 (n + 1)

end A153877

/-! ## A153877.P2598442664814520267

`2*(A131356(n+1)+1)`
-/

namespace A153877.P2598442664814520267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A131356 (n + 1) + 1)

end

end A153877.P2598442664814520267

namespace A153877

/-- `2*(A131356(n+1)+1)` -/
def P2598442664814520267.Spec : Prop :=
  ∀ n, P2598442664814520267.a n = A153877 (n + 1)

end A153877

/-! ## A153877.P56463985308713864

`(A282326(n+1)-1)/5`
-/

namespace A153877.P56463985308713864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282326 (n + 1) - 1 : ℚ) / 5

end

end A153877.P56463985308713864

namespace A153877

/-- `(A282326(n+1)-1)/5` -/
def P56463985308713864.Spec : Prop :=
  ∀ n, P56463985308713864.a n = (A153877 (n + 1) : ℚ)

end A153877

/-! ## A153877.P12442606473326752863

`∩[A024894(n+1), A153355(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A153877

/-- `∩[A024894(n+1), A153355(n+1)]` -/
def P12442606473326752863.Spec : Prop :=
  ∀ n, (P12442606473326752863.a n : ℤ) = A153877 (n + 1)

theorem P12442606473326752863.correct : P12442606473326752863.Spec := by
  intro n
  simp only [A153877, Nat.add_sub_cancel]

end A153877

/-! ## A153877.P1818327415682677750

`∩[A024894(n+1), A392111(n+1)]`
-/

namespace A153877.P1818327415682677750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153877.P1818327415682677750

namespace A153877

/-- `∩[A024894(n+1), A392111(n+1)]` -/
def P1818327415682677750.Spec : Prop :=
  ∀ n, (P1818327415682677750.a n : ℤ) = A153877 (n + 1)

end A153877

/-! ## A153877.P16412626382073519646

`∩[A153355(n+1), A392111(n+1)]`
-/

namespace A153877.P16412626382073519646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153877.P16412626382073519646

namespace A153877

/-- `∩[A153355(n+1), A392111(n+1)]` -/
def P16412626382073519646.Spec : Prop :=
  ∀ n, (P16412626382073519646.a n : ℤ) = A153877 (n + 1)

end A153877

/-! ## A153877.P10894373363521359220

`2*∩[A024912(n+1), A105042(n+1)]`
-/

namespace A153877.P10894373363521359220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153877.P10894373363521359220

namespace A153877

/-- `2*∩[A024912(n+1), A105042(n+1)]` -/
def P10894373363521359220.Spec : Prop :=
  ∀ n, (P10894373363521359220.a n : ℤ) = A153877 (n + 1)

end A153877

/-! ## A153877.P5165894861609784009

`A124518(A000027(n+1))+A124518(n+1)`
-/

namespace A153877.P5165894861609784009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124518 (A000027 (n + 1)).toNat + A124518 (n + 1)

end

end A153877.P5165894861609784009

namespace A153877

/-- `A124518(A000027(n+1))+A124518(n+1)` -/
def P5165894861609784009.Spec : Prop :=
  ∀ n, P5165894861609784009.a n = A153877 (n + 1)

end A153877

/-! ## A153877.P9798929414542278854

`A124518(n+1)+A124518(A023443(n)+2)`
-/

namespace A153877.P9798929414542278854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124518 (n + 1) + A124518 (A023443 n + 2).toNat

end

end A153877.P9798929414542278854

namespace A153877

/-- `A124518(n+1)+A124518(A023443(n)+2)` -/
def P9798929414542278854.Spec : Prop :=
  ∀ n, P9798929414542278854.a n = A153877 (n + 1)

end A153877

/-! ## A153877.P16710320066289206229

`A124518(n+1)+A124518((n+1)%A014574(n+1))`
-/

namespace A153877.P16710320066289206229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124518 (n + 1) + A124518 (Int.tmod (n + 1 : ℤ) (A014574 (n + 1))).toNat

end

end A153877.P16710320066289206229

namespace A153877

/-- `A124518(n+1)+A124518((n+1)%A014574(n+1))` -/
def P16710320066289206229.Spec : Prop :=
  ∀ n, P16710320066289206229.a n = A153877 (n + 1)

end A153877

/-! ## A153877.P17139884554797922796

`A124518(n+1)²/A176114(n+1)-A124518(n+1)`
-/

namespace A153877.P17139884554797922796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124518 (n + 1) ^ 2 : ℚ) / (A176114 (n + 1) : ℚ) - (A124518 (n + 1) : ℚ)

end

end A153877.P17139884554797922796

namespace A153877

/-- `A124518(n+1)²/A176114(n+1)-A124518(n+1)` -/
def P17139884554797922796.Spec : Prop :=
  ∀ n, P17139884554797922796.a n = (A153877 (n + 1) : ℚ)

end A153877

/-! ## A153877.P18136530888779312334

`A008458(A176114(n+1))`
-/

namespace A153877.P18136530888779312334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A176114 (n + 1)).toNat

end

end A153877.P18136530888779312334

namespace A153877

/-- `A008458(A176114(n+1))` -/
def P18136530888779312334.Spec : Prop :=
  ∀ n, P18136530888779312334.a n = A153877 (n + 1)

end A153877

/-! ## A153877.P5547093802717362495

`A016969(A176114(n+1)-1)+1`
-/

namespace A153877.P5547093802717362495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (A176114 (n + 1) - 1).toNat + 1

end

end A153877.P5547093802717362495

namespace A153877

/-- `A016969(A176114(n+1)-1)+1` -/
def P5547093802717362495.Spec : Prop :=
  ∀ n, P5547093802717362495.a n = A153877 (n + 1)

end A153877

/-! ## A153877.P11099126352338726770

`A004277(A124518(n+1))`
-/

namespace A153877.P11099126352338726770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A124518 (n + 1)).toNat

end

end A153877.P11099126352338726770

namespace A153877

/-- `A004277(A124518(n+1))` -/
def P11099126352338726770.Spec : Prop :=
  ∀ n, P11099126352338726770.a n = A153877 (n + 1)

end A153877

/-! ## A153877.P8882369207076785637

`A052380(A131356(n+1))`
-/

namespace A153877.P8882369207076785637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052380 (A131356 (n + 1)).toNat

end

end A153877.P8882369207076785637

namespace A153877

/-- `A052380(A131356(n+1))` -/
def P8882369207076785637.Spec : Prop :=
  ∀ n, P8882369207076785637.a n = A153877 (n + 1)

end A153877

/-! ## A153877.P10770723672899081022

`A000010(A282326(n+1))/5`
-/

namespace A153877.P10770723672899081022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A282326 (n + 1)).toNat : ℚ) / 5

end

end A153877.P10770723672899081022

namespace A153877

/-- `A000010(A282326(n+1))/5` -/
def P10770723672899081022.Spec : Prop :=
  ∀ n, P10770723672899081022.a n = (A153877 (n + 1) : ℚ)

end A153877

/-! ## A153877.P13461369757862941289

`2*eq[A048198(n), A099837(n)]`
-/

namespace A153877.P13461369757862941289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048198 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153877.P13461369757862941289

namespace A153877

/-- `2*eq[A048198(n), A099837(n)]` -/
def P13461369757862941289.Spec : Prop :=
  ∀ n, (P13461369757862941289.a n : ℤ) = A153877 (n + 1)

end A153877

/-! ## A153877.P9255440756847777581

`A124518(n+1)+A124518(n+1)/A124522(A040040(n+1))`
-/

namespace A153877.P9255440756847777581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124518 (n + 1) : ℚ) + (A124518 (n + 1) : ℚ) / (A124522 (A040040 (n + 1)).toNat : ℚ)

end

end A153877.P9255440756847777581

namespace A153877

/-- `A124518(n+1)+A124518(n+1)/A124522(A040040(n+1))` -/
def P9255440756847777581.Spec : Prop :=
  ∀ n, P9255440756847777581.a n = (A153877 (n + 1) : ℚ)

end A153877

/-!
# A153878: A triangular sequence recursion: A(n,k)=A(n - 1, k - 1) + A(n - 1, k) + (-12 + 5 n) (-9 + 5 n)*A(n - 2, k - 1).

The programs for A153878, the canonical program `A153878.P15345332439163003836` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153878 has offset 1).

The definition of A153878 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `T(n-1,k-1)+T(n-1,k)+(-12+5*(row(n)+1))*(-9+5*(row(n)+1))*T(n-2,k-1)` (program `A153878.P15345332439163003836`, by `A153878.P15345332439163003836.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153878.P15345332439163003836

`T(n-1,k-1)+T(n-1,k)+(-12+5*(row(n)+1))*(-9+5*(row(n)+1))*T(n-2,k-1)` with `a(0)=2, a(1)=3, a(2)=3, a(3)=2, a(4)=44, a(5)=2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153878

/-- `T(n-1,k-1)+T(n-1,k)+(-12+5*(row(n)+1))*(-9+5*(row(n)+1))*T(n-2,k-1)` -/
def P15345332439163003836.Spec : Prop :=
  ∀ n, P15345332439163003836.a n = A153878 (n + 1)

theorem P15345332439163003836.correct : P15345332439163003836.Spec := by
  intro n
  simp only [A153878, Nat.add_sub_cancel]

end A153878

/-!
# A153879: A triangular sequence recursion: A(n,k)=A(n - 1, k - 1) + A(n - 1, k) + (5 (-2 + n) (-7 + 5 n))*A(n - 2, k - 1).

The programs for A153879, the canonical program `A153879.P11033842198888742319` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153879 has offset 1).

The definition of A153879 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `T(n-1,k-1)+T(n-1,k)+5*(-2+row(n)+1)*(-7+5*(row(n)+1))*T(n-2,k-1)` (program `A153879.P11033842198888742319`, by `A153879.P11033842198888742319.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153879.P11033842198888742319

`T(n-1,k-1)+T(n-1,k)+5*(-2+row(n)+1)*(-7+5*(row(n)+1))*T(n-2,k-1)` with `a(0)=2, a(1)=5, a(2)=5, a(3)=2, a(4)=96, a(5)=2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153879

/-- `T(n-1,k-1)+T(n-1,k)+5*(-2+row(n)+1)*(-7+5*(row(n)+1))*T(n-2,k-1)` -/
def P11033842198888742319.Spec : Prop :=
  ∀ n, P11033842198888742319.a n = A153879 (n + 1)

theorem P11033842198888742319.correct : P11033842198888742319.Spec := by
  intro n
  simp only [A153879, Nat.add_sub_cancel]

end A153879

/-!
# A153880: Shift factorial base representation left by one digit.

The programs for A153880, the canonical program `A153880.P3482003210963129646` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153880 has offset 0).

The definition of A153880 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153880.P3482003210963129646

`∑[A073575(n+1)]-A073575(n+1)+n`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A153880

/-- `∑[A073575(n+1)]-A073575(n+1)+n` -/
def P3482003210963129646.Spec : Prop :=
  ∀ n, P3482003210963129646.a n = A153880 n

theorem P3482003210963129646.correct : P3482003210963129646.Spec := by
  intro n
  simp only [A153880]

end A153880

/-! ## A153880.P14565264902941525541

`eq[1, A275832(n)]`
-/

namespace A153880.P14565264902941525541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275832 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153880.P14565264902941525541

namespace A153880

/-- `eq[1, A275832(n)]` -/
def P14565264902941525541.Spec : Prop :=
  ∀ n, (P14565264902941525541.a n : ℤ) = A153880 n

end A153880

/-! ## A153880.P246321183393335462

`record[A276009(n)]`
-/

namespace A153880.P246321183393335462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153880.P246321183393335462

namespace A153880

/-- `record[A276009(n)]` -/
def P246321183393335462.Spec : Prop :=
  ∀ n, P246321183393335462.a n = A153880 n

end A153880

/-! ## A153880.P594621221492640393

`record[n-A276008(n)]`
-/

namespace A153880.P594621221492640393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A276008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153880.P594621221492640393

namespace A153880

/-- `record[n-A276008(n)]` -/
def P594621221492640393.Spec : Prop :=
  ∀ n, P594621221492640393.a n = A153880 n

end A153880

/-! ## A153880.P16784027408489029154

`eq[1, val(A275725(n), 2)]`
-/

namespace A153880.P16784027408489029154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A275725 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153880.P16784027408489029154

namespace A153880

/-- `eq[1, val(A275725(n), 2)]` -/
def P16784027408489029154.Spec : Prop :=
  ∀ n, (P16784027408489029154.a n : ℤ) = A153880 n

end A153880

/-! ## A153880.P6990553585094700374

`A276009(A231720(n))`
-/

namespace A153880.P6990553585094700374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276009 (A231720 n).toNat

end

end A153880.P6990553585094700374

namespace A153880

/-- `A276009(A231720(n))` -/
def P6990553585094700374.Spec : Prop :=
  ∀ n, P6990553585094700374.a n = A153880 n

end A153880

/-! ## A153880.P8733492961969363576

`A276009(A255411(n))`
-/

namespace A153880.P8733492961969363576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276009 (A255411 n).toNat

end

end A153880.P8733492961969363576

namespace A153880

/-- `A276009(A255411(n))` -/
def P8733492961969363576.Spec : Prop :=
  ∀ n, P8733492961969363576.a n = A153880 n

end A153880

/-! ## A153880.P3774860615483880403

`A255411(n)-(A225901(n)+n)`
-/

namespace A153880.P3774860615483880403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 n - (A225901 n + (n : ℤ))

end

end A153880.P3774860615483880403

namespace A153880

/-- `A255411(n)-(A225901(n)+n)` -/
def P3774860615483880403.Spec : Prop :=
  ∀ n, P3774860615483880403.a n = A153880 n

end A153880

/-! ## A153880.P5537308953527650280

`2*eq[A275962(2*n+1), A275962(2*n)]`
-/

namespace A153880.P5537308953527650280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275962 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275962 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153880.P5537308953527650280

namespace A153880

/-- `2*eq[A275962(2*n+1), A275962(2*n)]` -/
def P5537308953527650280.Spec : Prop :=
  ∀ n, (P5537308953527650280.a n : ℤ) = A153880 n

end A153880

/-! ## A153880.P5000681424439004989

`eq[1, A072411(and(-A275725(n), A275725(n)))]`
-/

namespace A153880.P5000681424439004989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (Int.land (-A275725 n) (A275725 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153880.P5000681424439004989

namespace A153880

/-- `eq[1, A072411(and(-A275725(n), A275725(n)))]` -/
def P5000681424439004989.Spec : Prop :=
  ∀ n, (P5000681424439004989.a n : ℤ) = A153880 n

end A153880

/-! ## A153880.P12901309116325649860

`comp[A273670(n)]`
-/

namespace A153880.P12901309116325649860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273670 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153880.P12901309116325649860

namespace A153880

/-- `comp[A273670(n)]` -/
def P12901309116325649860.Spec : Prop :=
  ∀ n, (P12901309116325649860.a n : ℤ) = A153880 n

end A153880

/-! ## A153880.P6981757637176664414

`eq[2, A020639(A275734(n)+1)]`
-/

namespace A153880.P6981757637176664414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A275734 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153880.P6981757637176664414

namespace A153880

/-- `eq[2, A020639(A275734(n)+1)]` -/
def P6981757637176664414.Spec : Prop :=
  ∀ n, (P6981757637176664414.a n : ℤ) = A153880 n

end A153880

/-! ## A153880.P15089212017627030934

`lt[2, A020639(A275734(n)+2)]`
-/

namespace A153880.P15089212017627030934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A275734 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153880.P15089212017627030934

namespace A153880

/-- `lt[2, A020639(A275734(n)+2)]` -/
def P15089212017627030934.Spec : Prop :=
  ∀ n, (P15089212017627030934.a n : ℤ) = A153880 n

end A153880

/-! ## A153880.P7397621945389444254

`lt[A276950(n), 1]`
-/

namespace A153880.P7397621945389444254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276950 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153880.P7397621945389444254

namespace A153880

/-- `lt[A276950(n), 1]` -/
def P7397621945389444254.Spec : Prop :=
  ∀ n, (P7397621945389444254.a n : ℤ) = A153880 n

end A153880

/-! ## A153880.P5165356734169316221

`lt[C(2, A276949(n)), 2]`
-/

namespace A153880.P5165356734169316221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A276949 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153880.P5165356734169316221

namespace A153880

/-- `lt[C(2, A276949(n)), 2]` -/
def P5165356734169316221.Spec : Prop :=
  ∀ n, (P5165356734169316221.a n : ℤ) = A153880 n

end A153880

/-! ## A153880.P12080100713333419381

`eq[A002483(n), A276950(n)]`
-/

namespace A153880.P12080100713333419381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002483 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153880.P12080100713333419381

namespace A153880

/-- `eq[A002483(n), A276950(n)]` -/
def P12080100713333419381.Spec : Prop :=
  ∀ n, (P12080100713333419381.a n : ℤ) = A153880 n

end A153880

/-! ## A153880.P15350393079909608995

`eq[A005871(n), A276950(n)]`
-/

namespace A153880.P15350393079909608995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005871 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153880.P15350393079909608995

namespace A153880

/-- `eq[A005871(n), A276950(n)]` -/
def P15350393079909608995.Spec : Prop :=
  ∀ n, (P15350393079909608995.a n : ℤ) = A153880 n

end A153880

/-! ## A153880.P14656565555874942346

`eq[A005872(n), A276950(n)]`
-/

namespace A153880.P14656565555874942346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005872 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153880.P14656565555874942346

namespace A153880

/-- `eq[A005872(n), A276950(n)]` -/
def P14656565555874942346.Spec : Prop :=
  ∀ n, (P14656565555874942346.a n : ℤ) = A153880 n

end A153880

/-! ## A153880.P2235808868272223043

`eq[A005888(n), A276950(n)]`
-/

namespace A153880.P2235808868272223043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005888 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153880.P2235808868272223043

namespace A153880

/-- `eq[A005888(n), A276950(n)]` -/
def P2235808868272223043.Spec : Prop :=
  ∀ n, (P2235808868272223043.a n : ℤ) = A153880 n

end A153880

/-! ## A153880.P11619195628566978910

`eq[A005926(n), A276950(n)]`
-/

namespace A153880.P11619195628566978910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153880.P11619195628566978910

namespace A153880

/-- `eq[A005926(n), A276950(n)]` -/
def P11619195628566978910.Spec : Prop :=
  ∀ n, (P11619195628566978910.a n : ℤ) = A153880 n

end A153880

/-!
# A153881: 1 followed by -1, -1, -1, ... .

The programs for A153881, the canonical program `A153881.P8399249979383960517` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153881 has offset 1).

The definition of A153881 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153881.P8399249979383960517

`2*floor(1/(n+1))-1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153881

/-- `2*floor(1/(n+1))-1` -/
def P8399249979383960517.Spec : Prop :=
  ∀ n, P8399249979383960517.a n = A153881 (n + 1)

theorem P8399249979383960517.correct : P8399249979383960517.Spec := by
  intro n
  simp only [A153881, Nat.add_sub_cancel]

end A153881

/-!
# A153882: a(n) = ((6 + sqrt(5))^n - (6 - sqrt(5))^n)/(2*sqrt(5)).

The programs for A153882, the canonical program `A153882.P7802216299632036490` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153882 has offset 1).

The definition of A153882 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((6+sqrt(5))^(n+1)-(6-sqrt(5))^(n+1))/(2*sqrt(5))` (program `A153882.P3953651630142672986`, by `A153882.P3953651630142672986.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153882.P7802216299632036490

`12*a(n-1)-31*a(n-2)` with `a(0)=1, a(1)=12`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153882

/-- `12*a(n-1)-31*a(n-2)` -/
def P7802216299632036490.Spec : Prop :=
  ∀ n, P7802216299632036490.a n = A153882 (n + 1)

theorem P7802216299632036490.correct : P7802216299632036490.Spec := by
  intro n
  simp only [A153882, Nat.add_sub_cancel]

end A153882

/-! ## A153882.P3953651630142672986

`((6+sqrt(5))^(n+1)-(6-sqrt(5))^(n+1))/(2*sqrt(5))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A153882.P3953651630142672986
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((6 + Real.sqrt (5 : ℝ)) ^ (n + 1) - (6 - Real.sqrt (5 : ℝ)) ^ (n + 1)) / (2 * Real.sqrt (5 : ℝ))

end

end A153882.P3953651630142672986

namespace A153882

/-- `((6+sqrt(5))^(n+1)-(6-sqrt(5))^(n+1))/(2*sqrt(5))` -/
def P3953651630142672986.Spec : Prop :=
  ∀ n, P3953651630142672986.a n = (A153882 (n + 1) : ℝ)

theorem P3953651630142672986.correct : P3953651630142672986.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A153882, Nat.add_sub_cancel, A153882.P3953651630142672986.a, A153882.P7802216299632036490.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A153882, Nat.add_sub_cancel, A153882.P3953651630142672986.a, A153882.P7802216299632036490.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A153882

/-! ## A153882.P3160336020370121802

`ogf(1/(1-12x+31x^2))`
-/

namespace A153882.P3160336020370121802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -12, 31] n

end

end A153882.P3160336020370121802

namespace A153882

/-- `ogf(1/(1-12x+31x^2))` -/
def P3160336020370121802.Spec : Prop :=
  ∀ n, P3160336020370121802.a n = A153882 (n + 1)

end A153882

/-! ## A153882.P1596136027485463542

`∑[A163146(n)]`
-/

namespace A153882.P1596136027485463542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153882.P1596136027485463542

namespace A153882

/-- `∑[A163146(n)]` -/
def P1596136027485463542.Spec : Prop :=
  ∀ n, P1596136027485463542.a n = A153882 (n + 1)

end A153882

/-! ## A153882.P12427672408146616145

`A152107(n)+6*a(n-1)` with `a(0)=1`
-/

namespace A153882.P12427672408146616145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A152107 n + 6 * a (n - 1)

end

end A153882.P12427672408146616145

namespace A153882

/-- `A152107(n)+6*a(n-1)` -/
def P12427672408146616145.Spec : Prop :=
  ∀ n, P12427672408146616145.a n = A153882 (n + 1)

end A153882

/-! ## A153882.P2488296057120276607

`∑[A163066(n)-A152107(n)]`
-/

namespace A153882.P2488296057120276607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163066 n - A152107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153882.P2488296057120276607

namespace A153882

/-- `∑[A163066(n)-A152107(n)]` -/
def P2488296057120276607.Spec : Prop :=
  ∀ n, P2488296057120276607.a n = A153882 (n + 1)

end A153882

/-! ## A153882.P17749194211406937779

`A163306(n+1)-A152107(n+1)`
-/

namespace A153882.P17749194211406937779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163306 (n + 1) - A152107 (n + 1)

end

end A153882.P17749194211406937779

namespace A153882

/-- `A163306(n+1)-A152107(n+1)` -/
def P17749194211406937779.Spec : Prop :=
  ∀ n, P17749194211406937779.a n = A153882 (n + 1)

end A153882

/-! ## A153882.P10016396051100766662

`a(n-1)+A163146(n)/A033999(2*n)` with `a(0)=1`
-/

namespace A153882.P10016396051100766662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A163146 n : ℚ) / (A033999 (2 * n) : ℚ)

end

end A153882.P10016396051100766662

namespace A153882

/-- `a(n-1)+A163146(n)/A033999(2*n)` -/
def P10016396051100766662.Spec : Prop :=
  ∀ n, P10016396051100766662.a n = (A153882 (n + 1) : ℚ)

end A153882

/-!
# A153883: a(n) = A153880(n)/2.

The programs for A153883, the canonical program `A153883.P3806345231788212027` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153883 has offset 0).

The definition of A153883 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153880, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A153883.P3806345231788212027

`A153880(n)/2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A153883

/-- `A153880(n)/2` -/
def P3806345231788212027.Spec : Prop :=
  ∀ n, P3806345231788212027.a n = (A153883 n : ℚ)

end A153883

/-! ## A153883.P8368832490148947134

`record[A276009(n)/2]`
-/

namespace A153883.P8368832490148947134
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276009 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153883.P8368832490148947134

namespace A153883

/-- `record[A276009(n)/2]` -/
def P8368832490148947134.Spec : Prop :=
  ∀ n, P8368832490148947134.a n = (A153883 n : ℚ)

end A153883

/-! ## A153883.P58540683789483714

`eq[0, A213890(2*n)]`
-/

namespace A153883.P58540683789483714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213890 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153883.P58540683789483714

namespace A153883

/-- `eq[0, A213890(2*n)]` -/
def P58540683789483714.Spec : Prop :=
  ∀ n, (P58540683789483714.a n : ℤ) = A153883 n

end A153883

/-! ## A153883.P13197416477340452340

`eq[0, A213890(n)]/2`
-/

namespace A153883.P13197416477340452340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213890 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A153883.P13197416477340452340

namespace A153883

/-- `eq[0, A213890(n)]/2` -/
def P13197416477340452340.Spec : Prop :=
  ∀ n, P13197416477340452340.a n = (A153883 n : ℚ)

end A153883

/-! ## A153883.P2892507710009885809

`eq[1, A275832(2*n)]`
-/

namespace A153883.P2892507710009885809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275832 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153883.P2892507710009885809

namespace A153883

/-- `eq[1, A275832(2*n)]` -/
def P2892507710009885809.Spec : Prop :=
  ∀ n, (P2892507710009885809.a n : ℤ) = A153883 n

end A153883

/-! ## A153883.P13502121375110060414

`eq[1, A275832(n)]/2`
-/

namespace A153883.P13502121375110060414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275832 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A153883.P13502121375110060414

namespace A153883

/-- `eq[1, A275832(n)]/2` -/
def P13502121375110060414.Spec : Prop :=
  ∀ n, P13502121375110060414.a n = (A153883 n : ℚ)

end A153883

/-! ## A153883.P7105597570636374676

`record[(n-A276008(n))/2]`
-/

namespace A153883.P7105597570636374676
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A276008 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153883.P7105597570636374676

namespace A153883

/-- `record[(n-A276008(n))/2]` -/
def P7105597570636374676.Spec : Prop :=
  ∀ n, P7105597570636374676.a n = (A153883 n : ℚ)

end A153883

/-! ## A153883.P10105217660216070705

`eq[1, val(A275725(2*n), 2)]`
-/

namespace A153883.P10105217660216070705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A275725 (2 * n)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153883.P10105217660216070705

namespace A153883

/-- `eq[1, val(A275725(2*n), 2)]` -/
def P10105217660216070705.Spec : Prop :=
  ∀ n, (P10105217660216070705.a n : ℤ) = A153883 n

end A153883

/-! ## A153883.P4168600228006964326

`lt[C(2, A276949(2*n)), 2]`
-/

namespace A153883.P4168600228006964326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A276949 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153883.P4168600228006964326

namespace A153883

/-- `lt[C(2, A276949(2*n)), 2]` -/
def P4168600228006964326.Spec : Prop :=
  ∀ n, (P4168600228006964326.a n : ℤ) = A153883 n

end A153883

/-! ## A153883.P12203669831931208400

`lt[A276951(2*n), n+1]`
-/

namespace A153883.P12203669831931208400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276951 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153883.P12203669831931208400

namespace A153883

/-- `lt[A276951(2*n), n+1]` -/
def P12203669831931208400.Spec : Prop :=
  ∀ n, (P12203669831931208400.a n : ℤ) = A153883 n

end A153883

/-!
# A153884: a(n) = ((7 + sqrt(5))^n - (7 - sqrt(5))^n)/(2*sqrt(5)).

The programs for A153884, the canonical program `A153884.P5994593576852230343` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153884 has offset 1).

The definition of A153884 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((7+sqrt(5))^(n+1)-(7-sqrt(5))^(n+1))/(2*sqrt(5))` (program `A153884.P16622357468098582021`, by `A153884.P16622357468098582021.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153884.P5994593576852230343

`14*a(n-1)-44*a(n-2)` with `a(0)=1, a(1)=14`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153884

/-- `14*a(n-1)-44*a(n-2)` -/
def P5994593576852230343.Spec : Prop :=
  ∀ n, P5994593576852230343.a n = A153884 (n + 1)

theorem P5994593576852230343.correct : P5994593576852230343.Spec := by
  intro n
  simp only [A153884, Nat.add_sub_cancel]

end A153884

/-! ## A153884.P16622357468098582021

`((7+sqrt(5))^(n+1)-(7-sqrt(5))^(n+1))/(2*sqrt(5))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A153884.P16622357468098582021
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((7 + Real.sqrt (5 : ℝ)) ^ (n + 1) - (7 - Real.sqrt (5 : ℝ)) ^ (n + 1)) / (2 * Real.sqrt (5 : ℝ))

end

end A153884.P16622357468098582021

namespace A153884

/-- `((7+sqrt(5))^(n+1)-(7-sqrt(5))^(n+1))/(2*sqrt(5))` -/
def P16622357468098582021.Spec : Prop :=
  ∀ n, P16622357468098582021.a n = (A153884 (n + 1) : ℝ)

theorem P16622357468098582021.correct : P16622357468098582021.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A153884, Nat.add_sub_cancel, A153884.P16622357468098582021.a, A153884.P5994593576852230343.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A153884, Nat.add_sub_cancel, A153884.P16622357468098582021.a, A153884.P5994593576852230343.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A153884

/-! ## A153884.P1245519693143787135

`2^n*A099453(n)`
-/

namespace A153884.P1245519693143787135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A099453 n

end

end A153884.P1245519693143787135

namespace A153884

/-- `2^n*A099453(n)` -/
def P1245519693143787135.Spec : Prop :=
  ∀ n, P1245519693143787135.a n = A153884 (n + 1)

end A153884

/-! ## A153884.P8304088247943394631

`A152108(n)+7*a(n-1)` with `a(0)=1`
-/

namespace A153884.P8304088247943394631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A152108 n + 7 * a (n - 1)

end

end A153884.P8304088247943394631

namespace A153884

/-- `A152108(n)+7*a(n-1)` -/
def P8304088247943394631.Spec : Prop :=
  ∀ n, P8304088247943394631.a n = A153884 (n + 1)

end A153884

/-! ## A153884.P5744208276245513526

`a(n-1)+A163147(n)+a(n-1)` with `a(0)=1`
-/

namespace A153884.P5744208276245513526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A163147 n + a (n - 1))

end

end A153884.P5744208276245513526

namespace A153884

/-- `a(n-1)+A163147(n)+a(n-1)` -/
def P5744208276245513526.Spec : Prop :=
  ∀ n, P5744208276245513526.a n = A153884 (n + 1)

end A153884

/-! ## A153884.P3926257846182561421

`A099453(n)*A131572(2*n+1)`
-/

namespace A153884.P3926257846182561421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099453 n * A131572 (2 * n + 1)

end

end A153884.P3926257846182561421

namespace A153884

/-- `A099453(n)*A131572(2*n+1)` -/
def P3926257846182561421.Spec : Prop :=
  ∀ n, P3926257846182561421.a n = A153884 (n + 1)

end A153884

/-! ## A153884.P4902363617420624698

`A099453(n)*A102363(A000217(n))`
-/

namespace A153884.P4902363617420624698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099453 n * A102363 (A000217 n).toNat

end

end A153884.P4902363617420624698

namespace A153884

/-- `A099453(n)*A102363(A000217(n))` -/
def P4902363617420624698.Spec : Prop :=
  ∀ n, P4902363617420624698.a n = A153884 (n + 1)

end A153884

/-!
# A153885: a(n) = ((8 + sqrt(5))^n - (8 - sqrt(5))^n)/(2*sqrt(5)).

The programs for A153885, the canonical program `A153885.P2421554866701314478` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153885 has offset 1).

The definition of A153885 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((8+sqrt(5))^(n+1)-(8-sqrt(5))^(n+1))/(2*sqrt(5))` (program `A153885.P16774712696301765744`, by `A153885.P16774712696301765744.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153885.P2421554866701314478

`16*a(n-1)-59*a(n-2)` with `a(0)=1, a(1)=16`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153885

/-- `16*a(n-1)-59*a(n-2)` -/
def P2421554866701314478.Spec : Prop :=
  ∀ n, P2421554866701314478.a n = A153885 (n + 1)

theorem P2421554866701314478.correct : P2421554866701314478.Spec := by
  intro n
  simp only [A153885, Nat.add_sub_cancel]

end A153885

/-! ## A153885.P16774712696301765744

`((8+sqrt(5))^(n+1)-(8-sqrt(5))^(n+1))/(2*sqrt(5))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A153885.P16774712696301765744
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((8 + Real.sqrt (5 : ℝ)) ^ (n + 1) - (8 - Real.sqrt (5 : ℝ)) ^ (n + 1)) / (2 * Real.sqrt (5 : ℝ))

end

end A153885.P16774712696301765744

namespace A153885

/-- `((8+sqrt(5))^(n+1)-(8-sqrt(5))^(n+1))/(2*sqrt(5))` -/
def P16774712696301765744.Spec : Prop :=
  ∀ n, P16774712696301765744.a n = (A153885 (n + 1) : ℝ)

theorem P16774712696301765744.correct : P16774712696301765744.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A153885, Nat.add_sub_cancel, A153885.P16774712696301765744.a, A153885.P2421554866701314478.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A153885, Nat.add_sub_cancel, A153885.P16774712696301765744.a, A153885.P2421554866701314478.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A153885

/-! ## A153885.P17098166844701677971

`A163148(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A153885.P17098166844701677971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A163148 n + 3 * a (n - 1)

end

end A153885.P17098166844701677971

namespace A153885

/-- `A163148(n)+3*a(n-1)` -/
def P17098166844701677971.Spec : Prop :=
  ∀ n, P17098166844701677971.a n = A153885 (n + 1)

end A153885

/-! ## A153885.P13366878598911157762

`A152109(n)+8*a(n-1)` with `a(0)=1`
-/

namespace A153885.P13366878598911157762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A152109 n + 8 * a (n - 1)

end

end A153885.P13366878598911157762

namespace A153885

/-- `A152109(n)+8*a(n-1)` -/
def P13366878598911157762.Spec : Prop :=
  ∀ n, P13366878598911157762.a n = A153885 (n + 1)

end A153885

/-!
# A153886: a(n) = ((9 + sqrt(5))^n - (9 - sqrt(5))^n)/(2*sqrt(5)).

The programs for A153886, the canonical program `A153886.P2789202481055722468` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153886 has offset 1).

The definition of A153886 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((9+sqrt(5))^(n+1)-(9-sqrt(5))^(n+1))/(2*sqrt(5))` (program `A153886.P6329298318680057208`, by `A153886.P6329298318680057208.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153886.P2789202481055722468

`18*a(n-1)-76*a(n-2)` with `a(0)=1, a(1)=18`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153886

/-- `18*a(n-1)-76*a(n-2)` -/
def P2789202481055722468.Spec : Prop :=
  ∀ n, P2789202481055722468.a n = A153886 (n + 1)

theorem P2789202481055722468.correct : P2789202481055722468.Spec := by
  intro n
  simp only [A153886, Nat.add_sub_cancel]

end A153886

/-! ## A153886.P6329298318680057208

`((9+sqrt(5))^(n+1)-(9-sqrt(5))^(n+1))/(2*sqrt(5))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A153886.P6329298318680057208
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((9 + Real.sqrt (5 : ℝ)) ^ (n + 1) - (9 - Real.sqrt (5 : ℝ)) ^ (n + 1)) / (2 * Real.sqrt (5 : ℝ))

end

end A153886.P6329298318680057208

namespace A153886

/-- `((9+sqrt(5))^(n+1)-(9-sqrt(5))^(n+1))/(2*sqrt(5))` -/
def P6329298318680057208.Spec : Prop :=
  ∀ n, P6329298318680057208.a n = (A153886 (n + 1) : ℝ)

theorem P6329298318680057208.correct : P6329298318680057208.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A153886, Nat.add_sub_cancel, A153886.P6329298318680057208.a, A153886.P2789202481055722468.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A153886, Nat.add_sub_cancel, A153886.P6329298318680057208.a, A153886.P2789202481055722468.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A153886

/-! ## A153886.P6977469369943216634

`2^n*A081574(n+1)`
-/

namespace A153886.P6977469369943216634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A081574 (n + 1)

end

end A153886.P6977469369943216634

namespace A153886

/-- `2^n*A081574(n+1)` -/
def P6977469369943216634.Spec : Prop :=
  ∀ n, P6977469369943216634.a n = A153886 (n + 1)

end A153886

/-! ## A153886.P11942762563126512656

`A152261(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A153886.P11942762563126512656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A152261 n + 9 * a (n - 1)

end

end A153886.P11942762563126512656

namespace A153886

/-- `A152261(n)+9*a(n-1)` -/
def P11942762563126512656.Spec : Prop :=
  ∀ n, P11942762563126512656.a n = A153886 (n + 1)

end A153886

/-! ## A153886.P645073284034556411

`A081574(n+1)*A131577(n+1)`
-/

namespace A153886.P645073284034556411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081574 (n + 1) * A131577 (n + 1)

end

end A153886.P645073284034556411

namespace A153886

/-- `A081574(n+1)*A131577(n+1)` -/
def P645073284034556411.Spec : Prop :=
  ∀ n, P645073284034556411.a n = A153886 (n + 1)

end A153886

/-!
# A153887: Smallest of five consecutive Fibonacci numbers whose sum is a prime number.

The programs for A153887, there is no canonical definition to state claims against.
-/

/-! ## A153887.P1066533847228408540

`round(A153889(n+1)/ϕ²)`
-/

namespace A153887.P1066533847228408540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A153889 (n + 1) : ℝ) / Real.goldenRatio ^ 2)

end

end A153887.P1066533847228408540

/-! ## A153887.P4926573824021309396

`A153889(n+1)-A153888(n+1)`
-/

namespace A153887.P4926573824021309396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153889 (n + 1) - A153888 (n + 1)

end

end A153887.P4926573824021309396

/-! ## A153887.P15899961873824163319

`3*A153889(n+1)-A153891(n+1)`
-/

namespace A153887.P15899961873824163319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A153889 (n + 1) - A153891 (n + 1)

end

end A153887.P15899961873824163319

/-! ## A153887.P2712147101356049597

`round(A153891(n+1)/ϕ)%A153888(n+1)`
-/

namespace A153887.P2712147101356049597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A153891 (n + 1) : ℝ) / Real.goldenRatio)) (A153888 (n + 1))

end

end A153887.P2712147101356049597

/-! ## A153887.P9918534915231958945

`A153890(n+1)%A153888(n+1)`
-/

namespace A153887.P9918534915231958945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153890 (n + 1)) (A153888 (n + 1))

end

end A153887.P9918534915231958945

/-!
# A153888: Second-to-smallest of five consecutive Fibonacci numbers such that sum of five consecutive Fibonacci numbers is prime number.

The programs for A153888, there is no canonical definition to state claims against.
-/

/-! ## A153888.P16065005231244565689

`round(A153889(n+1)/ϕ)`
-/

namespace A153888.P16065005231244565689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A153889 (n + 1) : ℝ) / Real.goldenRatio)

end

end A153888.P16065005231244565689

/-! ## A153888.P12613697377144780168

`A153891(n+1)-2*A153889(n+1)`
-/

namespace A153888.P12613697377144780168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153891 (n + 1) - 2 * A153889 (n + 1)

end

end A153888.P12613697377144780168

/-! ## A153888.P7403458943400237722

`A153891(n+1)-A153889(n+1)-A153892(n+1)%A153891(n+1)`
-/

namespace A153888.P7403458943400237722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153891 (n + 1) - A153889 (n + 1) - Int.tmod (A153892 (n + 1)) (A153891 (n + 1))

end

end A153888.P7403458943400237722

/-! ## A153888.P2463321751748726685

`A153889(n+1)-A153887(n+1)`
-/

namespace A153888.P2463321751748726685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153889 (n + 1) - A153887 (n + 1)

end

end A153888.P2463321751748726685

/-! ## A153888.P6566118113569700076

`A153889(n+1)+A153881(n+1)*A153887(n+1)`
-/

namespace A153888.P6566118113569700076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153889 (n + 1) + A153881 (n + 1) * A153887 (n + 1)

end

end A153888.P6566118113569700076

/-!
# A153889: Middle of five consecutive Fibonacci numbers such that sum of five consecutive Fibonacci numbers is prime number.

The programs for A153889, there is no canonical definition to state claims against.
-/

/-! ## A153889.P16459754333203954563

`A153892(n+1)%A153891(n+1)`
-/

namespace A153889.P16459754333203954563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153892 (n + 1)) (A153891 (n + 1))

end

end A153889.P16459754333203954563

/-! ## A153889.P11914382217852407389

`(A153891(n+1)-A153888(n+1))/2`
-/

namespace A153889.P11914382217852407389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153891 (n + 1) - A153888 (n + 1) : ℚ) / 2

end

end A153889.P11914382217852407389

/-! ## A153889.P15034903082290900189

`A153888(n+1)+A153887(n+1)`
-/

namespace A153889.P15034903082290900189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153888 (n + 1) + A153887 (n + 1)

end

end A153889.P15034903082290900189

/-! ## A153889.P17746008825593932064

`round(A153890(n+1)/ϕ)`
-/

namespace A153889.P17746008825593932064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A153890 (n + 1) : ℝ) / Real.goldenRatio)

end

end A153889.P17746008825593932064

/-! ## A153889.P4446750278429686097

`A153890(n+1)-A153888(n+1)`
-/

namespace A153889.P4446750278429686097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153890 (n + 1) - A153888 (n + 1)

end

end A153889.P4446750278429686097

/-!
# A153890: Second-to-largest of five consecutive Fibonacci numbers such that sum of five consecutive Fibonacci numbers is prime number.

The programs for A153890, there is no canonical definition to state claims against.
-/

/-! ## A153890.P12876513739308489754

`round(ϕ*A153889(n+1))`
-/

namespace A153890.P12876513739308489754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A153889 (n + 1) : ℝ))

end

end A153890.P12876513739308489754

/-! ## A153890.P2833202972244668700

`round(A153891(n+1)/ϕ)`
-/

namespace A153890.P2833202972244668700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A153891 (n + 1) : ℝ) / Real.goldenRatio)

end

end A153890.P2833202972244668700

/-! ## A153890.P17786063642487298649

`A153889(n+1)+A153888(n+1)`
-/

namespace A153890.P17786063642487298649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153889 (n + 1) + A153888 (n + 1)

end

end A153890.P17786063642487298649

/-! ## A153890.P9809519393716002757

`A153891(n+1)-A153889(n+1)`
-/

namespace A153890.P9809519393716002757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153891 (n + 1) - A153889 (n + 1)

end

end A153890.P9809519393716002757

/-! ## A153890.P5206585848113407169

`A153887(n+1)+2*A153888(n+1)`
-/

namespace A153890.P5206585848113407169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153887 (n + 1) + 2 * A153888 (n + 1)

end

end A153890.P5206585848113407169

/-!
# A153891: Largest of five consecutive Fibonacci numbers such that the sum of the five consecutive Fibonacci numbers is prime.

The programs for A153891, there is no canonical definition to state claims against.
-/

/-! ## A153891.P1662332706258596377

`A153888(n+1)+2*A153889(n+1)`
-/

namespace A153891.P1662332706258596377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153888 (n + 1) + 2 * A153889 (n + 1)

end

end A153891.P1662332706258596377

/-! ## A153891.P13238939241451654787

`(A153892(n+1)-A153889(n+1))/2`
-/

namespace A153891.P13238939241451654787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153892 (n + 1) - A153889 (n + 1) : ℚ) / 2

end

end A153891.P13238939241451654787

/-! ## A153891.P7577736530577878959

`A153888(n+1)+A153887(n+1)+A153889(n+1)+A153888(n+1)`
-/

namespace A153891.P7577736530577878959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153888 (n + 1) + A153887 (n + 1) + (A153889 (n + 1) + A153888 (n + 1))

end

end A153891.P7577736530577878959

/-! ## A153891.P5869064945700840134

`round(ϕ*A153890(n+1))`
-/

namespace A153891.P5869064945700840134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A153890 (n + 1) : ℝ))

end

end A153891.P5869064945700840134

/-! ## A153891.P14183379034884877969

`A153890(n+1)+A153889(n+1)`
-/

namespace A153891.P14183379034884877969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153890 (n + 1) + A153889 (n + 1)

end

end A153891.P14183379034884877969

/-!
# A153892: Primes that are the sum of five consecutive Fibonacci numbers.

The programs for A153892, there is no canonical definition to state claims against.
-/

/-! ## A153892.P13445412125205950863

`A153889(n+1)+2*A153891(n+1)`
-/

namespace A153892.P13445412125205950863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153889 (n + 1) + 2 * A153891 (n + 1)

end

end A153892.P13445412125205950863

/-! ## A153892.P11987063947509175416

`3*A153891(n+1)-A153890(n+1)`
-/

namespace A153892.P11987063947509175416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A153891 (n + 1) - A153890 (n + 1)

end

end A153892.P11987063947509175416

/-! ## A153892.P6846745233350264288

`p?[round(ϕ*a(n-1))]` with `a(0)=7, a(1)=12`
-/

namespace A153892.P6846745233350264288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 12] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153892.P6846745233350264288

/-!
# A153893: a(n) = 3*2^n - 1.

The programs for A153893, the canonical program `A153893.P14487975062432883580` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153893 has offset 0).

The definition of A153893 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*2^n-1` (program `A153893.P14487975062432883580`, by `A153893.P14487975062432883580.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153893.P14487975062432883580

`3*2^n-1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153893

/-- `3*2^n-1` -/
def P14487975062432883580.Spec : Prop :=
  ∀ n, P14487975062432883580.a n = A153893 n

theorem P14487975062432883580.correct : P14487975062432883580.Spec := by
  intro n
  simp only [A153893]

end A153893

/-! ## A153893.P17114946837316879632

`A055010(n+1)`
-/

namespace A153893.P17114946837316879632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 (n + 1)

end

end A153893.P17114946837316879632

namespace A153893

/-- `A055010(n+1)` -/
def P17114946837316879632.Spec : Prop :=
  ∀ n, P17114946837316879632.a n = A153893 n

end A153893

/-! ## A153893.P8540691961936355088

`A083329(n+1)`
-/

namespace A153893.P8540691961936355088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 (n + 1)

end

end A153893.P8540691961936355088

namespace A153893

/-- `A083329(n+1)` -/
def P8540691961936355088.Spec : Prop :=
  ∀ n, P8540691961936355088.a n = A153893 n

end A153893

/-! ## A153893.P14543467853846414869

`ogf((2-x)/(1-3x+2x^2))`
-/

namespace A153893.P14543467853846414869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, -3, 2] n

end

end A153893.P14543467853846414869

namespace A153893

/-- `ogf((2-x)/(1-3x+2x^2))` -/
def P14543467853846414869.Spec : Prop :=
  ∀ n, P14543467853846414869.a n = A153893 n

end A153893

/-! ## A153893.P1290660560190509652

`abs(1-lcm(3, 2^n))`
-/

namespace A153893.P1290660560190509652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.lcm 3 (2 ^ n) : ℤ)|

end

end A153893.P1290660560190509652

namespace A153893

/-- `abs(1-lcm(3, 2^n))` -/
def P1290660560190509652.Spec : Prop :=
  ∀ n, P1290660560190509652.a n = A153893 n

end A153893

/-! ## A153893.P61850859526728082

`or(1, 2*a(n-1))` with `a(0)=2`
-/

namespace A153893.P61850859526728082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lor 1 (2 * a (n - 1))

end

end A153893.P61850859526728082

namespace A153893

/-- `or(1, 2*a(n-1))` -/
def P61850859526728082.Spec : Prop :=
  ∀ n, (P61850859526728082.a n : ℤ) = A153893 n

end A153893

/-! ## A153893.P16789365703606253393

`xor(1, 2*a(n-1))` with `a(0)=2`
-/

namespace A153893.P16789365703606253393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.xor 1 (2 * a (n - 1))

end

end A153893.P16789365703606253393

namespace A153893

/-- `xor(1, 2*a(n-1))` -/
def P16789365703606253393.Spec : Prop :=
  ∀ n, (P16789365703606253393.a n : ℤ) = A153893 n

end A153893

/-! ## A153893.P12246076730820576776

`∑[2*a(n-1)]` with `a(0)=2, a(1)=3`
-/

namespace A153893.P12246076730820576776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153893.P12246076730820576776

namespace A153893

/-- `∑[2*a(n-1)]` -/
def P12246076730820576776.Spec : Prop :=
  ∀ n, (P12246076730820576776.a n : ℤ) = A153893 n

end A153893

/-! ## A153893.P4620561029173331772

`abs(2*a(n-1)+1)` with `a(0)=2`
-/

namespace A153893.P4620561029173331772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) + 1

end

end A153893.P4620561029173331772

namespace A153893

/-- `abs(2*a(n-1)+1)` -/
def P4620561029173331772.Spec : Prop :=
  ∀ n, (P4620561029173331772.a n : ℤ) = A153893 n

theorem P4620561029173331772.correct : P4620561029173331772.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A153893, Nat.add_sub_cancel, A153893.P4620561029173331772.a, A153893.P14487975062432883580.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A153893, Nat.add_sub_cancel, A153893.P4620561029173331772.a, A153893.P14487975062432883580.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A153893

/-! ## A153893.P15103207704129739941

`floor(2*a(n-1)+ϕ)` with `a(0)=2`
-/

namespace A153893.P15103207704129739941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(2 * a (n - 1) : ℝ) + Real.goldenRatio⌋

end

end A153893.P15103207704129739941

namespace A153893

/-- `floor(2*a(n-1)+ϕ)` -/
def P15103207704129739941.Spec : Prop :=
  ∀ n, P15103207704129739941.a n = A153893 n

end A153893

/-! ## A153893.P10973266280663243321

`2*(a(n-1)+1/2)` with `a(0)=2`
-/

namespace A153893.P10973266280663243321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  2 * (a (n - 1) + (1 : ℚ) / 2)

end

end A153893.P10973266280663243321

namespace A153893

/-- `2*(a(n-1)+1/2)` -/
def P10973266280663243321.Spec : Prop :=
  ∀ n, P10973266280663243321.a n = (A153893 n : ℚ)

theorem P10973266280663243321.correct : P10973266280663243321.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A153893, Nat.add_sub_cancel, A153893.P10973266280663243321.a, A153893.P14487975062432883580.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A153893, Nat.add_sub_cancel, A153893.P10973266280663243321.a, A153893.P14487975062432883580.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A153893

/-! ## A153893.P10359394409228980018

`record[2*a(n-2)+1]` with `a(0)=2, a(1)=0`
-/

namespace A153893.P10359394409228980018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  2 * f1 (n - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153893.P10359394409228980018

namespace A153893

/-- `record[2*a(n-2)+1]` -/
def P10359394409228980018.Spec : Prop :=
  ∀ n, (P10359394409228980018.a n : ℤ) = A153893 n

end A153893

/-! ## A153893.P3088775529685045816

`floor(2*(ϕ-(1-a(n-1))))` with `a(0)=2`
-/

namespace A153893.P3088775529685045816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊2 * (Real.goldenRatio - (1 - a (n - 1) : ℝ))⌋

end

end A153893.P3088775529685045816

namespace A153893

/-- `floor(2*(ϕ-(1-a(n-1))))` -/
def P3088775529685045816.Spec : Prop :=
  ∀ n, P3088775529685045816.a n = A153893 n

end A153893

/-! ## A153893.P6733310190331184499

`2*(1-(1/2-a(n-1)))` with `a(0)=2`
-/

namespace A153893.P6733310190331184499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  2 * (1 - ((1 : ℚ) / 2 - a (n - 1)))

end

end A153893.P6733310190331184499

namespace A153893

/-- `2*(1-(1/2-a(n-1)))` -/
def P6733310190331184499.Spec : Prop :=
  ∀ n, P6733310190331184499.a n = (A153893 n : ℚ)

theorem P6733310190331184499.correct : P6733310190331184499.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A153893, Nat.add_sub_cancel, A153893.P6733310190331184499.a, A153893.P14487975062432883580.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A153893, Nat.add_sub_cancel, A153893.P6733310190331184499.a, A153893.P14487975062432883580.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A153893

/-! ## A153893.P7964911453970345702

`∑[a(n-1)/(1-1/2)]` with `a(0)=2, a(1)=3`
-/

namespace A153893.P7964911453970345702
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  f1 (n - 1) / (1 - (1 : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153893.P7964911453970345702

namespace A153893

/-- `∑[a(n-1)/(1-1/2)]` -/
def P7964911453970345702.Spec : Prop :=
  ∀ n, P7964911453970345702.a n = (A153893 n : ℚ)

end A153893

/-! ## A153893.P8072340203902979529

`abs(a(n-1)+a(n-1)+1)` with `a(0)=2`
-/

namespace A153893.P8072340203902979529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (a (n - 1) + 1)

end

end A153893.P8072340203902979529

namespace A153893

/-- `abs(a(n-1)+a(n-1)+1)` -/
def P8072340203902979529.Spec : Prop :=
  ∀ n, (P8072340203902979529.a n : ℤ) = A153893 n

theorem P8072340203902979529.correct : P8072340203902979529.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A153893, Nat.add_sub_cancel, A153893.P8072340203902979529.a, A153893.P14487975062432883580.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A153893, Nat.add_sub_cancel, A153893.P8072340203902979529.a, A153893.P14487975062432883580.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A153893

/-! ## A153893.P5745541413312092669

`floor(a(n-1)+a(n-1)+1)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A153893.P5745541413312092669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (a (n - 1) + 1)

end

end A153893.P5745541413312092669

namespace A153893

/-- `floor(a(n-1)+a(n-1)+1)` -/
def P5745541413312092669.Spec : Prop :=
  ∀ n, (P5745541413312092669.a n : ℤ) = A153893 n

theorem P5745541413312092669.correct : P5745541413312092669.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A153893, Nat.add_sub_cancel, A153893.P5745541413312092669.a, A153893.P14487975062432883580.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A153893, Nat.add_sub_cancel, A153893.P5745541413312092669.a, A153893.P14487975062432883580.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A153893

/-! ## A153893.P16841660078138481690

`ceil(a(n-1)+a(n-1)+1)` with `a(0)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A153893.P16841660078138481690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (a (n - 1) + 1)

end

end A153893.P16841660078138481690

namespace A153893

/-- `ceil(a(n-1)+a(n-1)+1)` -/
def P16841660078138481690.Spec : Prop :=
  ∀ n, (P16841660078138481690.a n : ℤ) = A153893 n

theorem P16841660078138481690.correct : P16841660078138481690.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A153893, Nat.add_sub_cancel, A153893.P16841660078138481690.a, A153893.P14487975062432883580.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A153893, Nat.add_sub_cancel, A153893.P16841660078138481690.a, A153893.P14487975062432883580.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A153893

/-! ## A153893.P12384670465910085698

`round(a(n-1)+a(n-1)+1)` with `a(0)=2`

`round` is left out, it is the identity on integers.
-/

namespace A153893.P12384670465910085698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (a (n - 1) + 1)

end

end A153893.P12384670465910085698

namespace A153893

/-- `round(a(n-1)+a(n-1)+1)` -/
def P12384670465910085698.Spec : Prop :=
  ∀ n, (P12384670465910085698.a n : ℤ) = A153893 n

theorem P12384670465910085698.correct : P12384670465910085698.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A153893, Nat.add_sub_cancel, A153893.P12384670465910085698.a, A153893.P14487975062432883580.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A153893, Nat.add_sub_cancel, A153893.P12384670465910085698.a, A153893.P14487975062432883580.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A153893

/-! ## A153893.P635569435766496065

`or(1, a(n-1)+a(n-1)+1)` with `a(0)=2`
-/

namespace A153893.P635569435766496065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lor 1 (a (n - 1) + (a (n - 1) + 1))

end

end A153893.P635569435766496065

namespace A153893

/-- `or(1, a(n-1)+a(n-1)+1)` -/
def P635569435766496065.Spec : Prop :=
  ∀ n, (P635569435766496065.a n : ℤ) = A153893 n

end A153893

/-!
# A153894: a(n) = 5*2^n - 1.

The programs for A153894, the canonical program `A153894.P17894482557759526959` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153894 has offset 0).

The definition of A153894 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*2^n-1` (program `A153894.P17894482557759526959`, by `A153894.P17894482557759526959.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153894.P17894482557759526959

`5*2^n-1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153894

/-- `5*2^n-1` -/
def P17894482557759526959.Spec : Prop :=
  ∀ n, P17894482557759526959.a n = A153894 n

theorem P17894482557759526959.correct : P17894482557759526959.Spec := by
  intro n
  simp only [A153894]

end A153894

/-! ## A153894.P7381868932627462282

`A052549(n+1)`
-/

namespace A153894.P7381868932627462282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052549 (n + 1)

end

end A153894.P7381868932627462282

namespace A153894

/-- `A052549(n+1)` -/
def P7381868932627462282.Spec : Prop :=
  ∀ n, P7381868932627462282.a n = A153894 n

end A153894

/-! ## A153894.P4205971816001562521

`ogf((4-3x)/(1-3x+2x^2))`
-/

namespace A153894.P4205971816001562521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -3] [1, -3, 2] n

end

end A153894.P4205971816001562521

namespace A153894

/-- `ogf((4-3x)/(1-3x+2x^2))` -/
def P4205971816001562521.Spec : Prop :=
  ∀ n, P4205971816001562521.a n = A153894 n

end A153894

/-! ## A153894.P6472747574959881706

`abs(1-lcm(5, 2^n))`
-/

namespace A153894.P6472747574959881706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.lcm 5 (2 ^ n) : ℤ)|

end

end A153894.P6472747574959881706

namespace A153894

/-- `abs(1-lcm(5, 2^n))` -/
def P6472747574959881706.Spec : Prop :=
  ∀ n, P6472747574959881706.a n = A153894 n

end A153894

/-! ## A153894.P10469875523814331551

`or(1, 2*a(n-1))` with `a(0)=4`
-/

namespace A153894.P10469875523814331551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.lor 1 (2 * a (n - 1))

end

end A153894.P10469875523814331551

namespace A153894

/-- `or(1, 2*a(n-1))` -/
def P10469875523814331551.Spec : Prop :=
  ∀ n, (P10469875523814331551.a n : ℤ) = A153894 n

end A153894

/-! ## A153894.P5595796575010161409

`xor(1, 2*a(n-1))` with `a(0)=4`
-/

namespace A153894.P5595796575010161409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.xor 1 (2 * a (n - 1))

end

end A153894.P5595796575010161409

namespace A153894

/-- `xor(1, 2*a(n-1))` -/
def P5595796575010161409.Spec : Prop :=
  ∀ n, (P5595796575010161409.a n : ℤ) = A153894 n

end A153894

/-! ## A153894.P739898589746625225

`∑[2*a(n-1)]` with `a(0)=4, a(1)=5`
-/

namespace A153894.P739898589746625225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 5] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153894.P739898589746625225

namespace A153894

/-- `∑[2*a(n-1)]` -/
def P739898589746625225.Spec : Prop :=
  ∀ n, (P739898589746625225.a n : ℤ) = A153894 n

end A153894

/-! ## A153894.P5810869866892899446

`abs(2*a(n-1)+1)` with `a(0)=4`
-/

namespace A153894.P5810869866892899446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  2 * a (n - 1) + 1

end

end A153894.P5810869866892899446

namespace A153894

/-- `abs(2*a(n-1)+1)` -/
def P5810869866892899446.Spec : Prop :=
  ∀ n, (P5810869866892899446.a n : ℤ) = A153894 n

theorem P5810869866892899446.correct : P5810869866892899446.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A153894, Nat.add_sub_cancel, A153894.P5810869866892899446.a, A153894.P17894482557759526959.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A153894, Nat.add_sub_cancel, A153894.P5810869866892899446.a, A153894.P17894482557759526959.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A153894

/-! ## A153894.P16194680566204896697

`floor(2*a(n-1)+ϕ)` with `a(0)=4`
-/

namespace A153894.P16194680566204896697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌊(2 * a (n - 1) : ℝ) + Real.goldenRatio⌋

end

end A153894.P16194680566204896697

namespace A153894

/-- `floor(2*a(n-1)+ϕ)` -/
def P16194680566204896697.Spec : Prop :=
  ∀ n, P16194680566204896697.a n = A153894 n

end A153894

/-! ## A153894.P13161228981718232868

`2*(a(n-1)+1/2)` with `a(0)=4`
-/

namespace A153894.P13161228981718232868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  2 * (a (n - 1) + (1 : ℚ) / 2)

end

end A153894.P13161228981718232868

namespace A153894

/-- `2*(a(n-1)+1/2)` -/
def P13161228981718232868.Spec : Prop :=
  ∀ n, P13161228981718232868.a n = (A153894 n : ℚ)

theorem P13161228981718232868.correct : P13161228981718232868.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A153894, Nat.add_sub_cancel, A153894.P13161228981718232868.a, A153894.P17894482557759526959.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A153894, Nat.add_sub_cancel, A153894.P13161228981718232868.a, A153894.P17894482557759526959.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A153894

/-! ## A153894.P10765110147562058951

`record[2*a(n-2)+1]` with `a(0)=4, a(1)=0`
-/

namespace A153894.P10765110147562058951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 0] fun n f1 =>
  2 * f1 (n - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153894.P10765110147562058951

namespace A153894

/-- `record[2*a(n-2)+1]` -/
def P10765110147562058951.Spec : Prop :=
  ∀ n, (P10765110147562058951.a n : ℤ) = A153894 n

end A153894

/-! ## A153894.P15540542854610287256

`2*(1-(1/2-a(n-1)))` with `a(0)=4`
-/

namespace A153894.P15540542854610287256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  2 * (1 - ((1 : ℚ) / 2 - a (n - 1)))

end

end A153894.P15540542854610287256

namespace A153894

/-- `2*(1-(1/2-a(n-1)))` -/
def P15540542854610287256.Spec : Prop :=
  ∀ n, P15540542854610287256.a n = (A153894 n : ℚ)

theorem P15540542854610287256.correct : P15540542854610287256.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A153894, Nat.add_sub_cancel, A153894.P15540542854610287256.a, A153894.P17894482557759526959.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A153894, Nat.add_sub_cancel, A153894.P15540542854610287256.a, A153894.P17894482557759526959.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A153894

/-! ## A153894.P12783346816020154498

`∑[a(n-1)/(1-1/2)]` with `a(0)=4, a(1)=5`
-/

namespace A153894.P12783346816020154498
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 5] fun n f1 =>
  f1 (n - 1) / (1 - (1 : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153894.P12783346816020154498

namespace A153894

/-- `∑[a(n-1)/(1-1/2)]` -/
def P12783346816020154498.Spec : Prop :=
  ∀ n, P12783346816020154498.a n = (A153894 n : ℚ)

end A153894

/-! ## A153894.P14355048949900797746

`abs(a(n-1)+a(n-1)+1)` with `a(0)=4`
-/

namespace A153894.P14355048949900797746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (a (n - 1) + 1)

end

end A153894.P14355048949900797746

namespace A153894

/-- `abs(a(n-1)+a(n-1)+1)` -/
def P14355048949900797746.Spec : Prop :=
  ∀ n, (P14355048949900797746.a n : ℤ) = A153894 n

theorem P14355048949900797746.correct : P14355048949900797746.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A153894, Nat.add_sub_cancel, A153894.P14355048949900797746.a, A153894.P17894482557759526959.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A153894, Nat.add_sub_cancel, A153894.P14355048949900797746.a, A153894.P17894482557759526959.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A153894

/-! ## A153894.P17569336301733693706

`floor(a(n-1)+a(n-1)+1)` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A153894.P17569336301733693706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (a (n - 1) + 1)

end

end A153894.P17569336301733693706

namespace A153894

/-- `floor(a(n-1)+a(n-1)+1)` -/
def P17569336301733693706.Spec : Prop :=
  ∀ n, (P17569336301733693706.a n : ℤ) = A153894 n

theorem P17569336301733693706.correct : P17569336301733693706.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A153894, Nat.add_sub_cancel, A153894.P17569336301733693706.a, A153894.P17894482557759526959.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A153894, Nat.add_sub_cancel, A153894.P17569336301733693706.a, A153894.P17894482557759526959.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A153894

/-! ## A153894.P3343329627700604178

`ceil(a(n-1)+a(n-1)+1)` with `a(0)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A153894.P3343329627700604178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (a (n - 1) + 1)

end

end A153894.P3343329627700604178

namespace A153894

/-- `ceil(a(n-1)+a(n-1)+1)` -/
def P3343329627700604178.Spec : Prop :=
  ∀ n, (P3343329627700604178.a n : ℤ) = A153894 n

theorem P3343329627700604178.correct : P3343329627700604178.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A153894, Nat.add_sub_cancel, A153894.P3343329627700604178.a, A153894.P17894482557759526959.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A153894, Nat.add_sub_cancel, A153894.P3343329627700604178.a, A153894.P17894482557759526959.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A153894

/-! ## A153894.P17692521912698845207

`round(a(n-1)+a(n-1)+1)` with `a(0)=4`

`round` is left out, it is the identity on integers.
-/

namespace A153894.P17692521912698845207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (a (n - 1) + 1)

end

end A153894.P17692521912698845207

namespace A153894

/-- `round(a(n-1)+a(n-1)+1)` -/
def P17692521912698845207.Spec : Prop :=
  ∀ n, (P17692521912698845207.a n : ℤ) = A153894 n

theorem P17692521912698845207.correct : P17692521912698845207.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A153894, Nat.add_sub_cancel, A153894.P17692521912698845207.a, A153894.P17894482557759526959.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A153894, Nat.add_sub_cancel, A153894.P17692521912698845207.a, A153894.P17894482557759526959.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A153894

/-! ## A153894.P14891958636406093850

`or(1, a(n-1)+a(n-1)+1)` with `a(0)=4`
-/

namespace A153894.P14891958636406093850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.lor 1 (a (n - 1) + (a (n - 1) + 1))

end

end A153894.P14891958636406093850

namespace A153894

/-- `or(1, a(n-1)+a(n-1)+1)` -/
def P14891958636406093850.Spec : Prop :=
  ∀ n, (P14891958636406093850.a n : ℤ) = A153894 n

end A153894

/-! ## A153894.P17271394103348713325

`record[a(n-2)+a(n-2)+1]` with `a(0)=4, a(1)=0`
-/

namespace A153894.P17271394103348713325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 0] fun n f1 =>
  f1 (n - 2) + (f1 (n - 2) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153894.P17271394103348713325

namespace A153894

/-- `record[a(n-2)+a(n-2)+1]` -/
def P17271394103348713325.Spec : Prop :=
  ∀ n, (P17271394103348713325.a n : ℤ) = A153894 n

end A153894

/-! ## A153894.P6976576233962372199

`(2*a(n-1)+1)%(3*a(n-1))` with `a(0)=4`
-/

namespace A153894.P6976576233962372199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  (2 * a (n - 1) + 1) % (3 * a (n - 1))

end

end A153894.P6976576233962372199

namespace A153894

/-- `(2*a(n-1)+1)%(3*a(n-1))` -/
def P6976576233962372199.Spec : Prop :=
  ∀ n, (P6976576233962372199.a n : ℤ) = A153894 n

end A153894

