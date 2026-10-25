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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
# A180600: a(n+1) = a(n) if A180458(n+1) = A180458(n), otherwise a(n+1) = a(n)+1.

The programs for A180600, there is no canonical definition to state claims against.
-/

/-! ## A180600.P117777856084637460

`∑[char[A000720(A002113(n+3)-1)]]`
-/

namespace A180600.P117777856084637460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A002113 (n + 3) - 1).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180600.P117777856084637460

/-! ## A180600.P3084824510038668466

`A282711(A180458(n+1))`
-/

namespace A180600.P3084824510038668466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282711 (A180458 (n + 1)).toNat

end

end A180600.P3084824510038668466

/-! ## A180600.P1810623414675552428

`A282711(A050376(n+1)+n-1)`
-/

namespace A180600.P1810623414675552428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282711 (A050376 (n + 1) + ((n : ℤ) - 1)).toNat

end

end A180600.P1810623414675552428

/-! ## A180600.P16668414271811940152

`A282711(A069905(n)+2*n+1)`
-/

namespace A180600.P16668414271811940152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282711 (A069905 n + (2 * n + 1 : ℤ)).toNat

end

end A180600.P16668414271811940152

/-! ## A180600.P1516882152481834582

`A282711(∑[A000005(A299015(n+1))])`
-/

namespace A180600.P1516882152481834582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A299015 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282711 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A180600.P1516882152481834582

/-!
# A180601: Number of occurrences of the digit(s) with smallest frequency in the n-th Fibonacci number.

The programs for A180601, there is no canonical definition to state claims against.
-/

/-! ## A180601.P14397994694151018309

`A025465(A155966(n)-A090929(n+1))`
-/

namespace A180601.P14397994694151018309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025465 (A155966 n - A090929 (n + 1)).toNat

end

end A180601.P14397994694151018309

/-! ## A180601.P11048140175701801603

`A025469(A155966(n)-A090929(n+1))`
-/

namespace A180601.P11048140175701801603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 (A155966 n - A090929 (n + 1)).toNat

end

end A180601.P11048140175701801603

/-! ## A180601.P14084226624882905805

`val(A329348(A005993(n)), 16)`
-/

namespace A180601.P14084226624882905805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A329348 (A005993 n).toNat).toNat 16

end

end A180601.P14084226624882905805

/-! ## A180601.P15895786937183442938

`val(A295985(A299978(n+1)), 16)`
-/

namespace A180601.P15895786937183442938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A295985 (A299978 (n + 1)).toNat).toNat 16

end

end A180601.P15895786937183442938

/-! ## A180601.P6912693528542771272

`A037800(and(n+1, A155050(n)))`
-/

namespace A180601.P6912693528542771272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (Int.land (n + 1 : ℤ) (A155050 n)).toNat

end

end A180601.P6912693528542771272

/-! ## A180601.P7693741590981469911

`A322358(A263097(n+1)+2*n+1)`
-/

namespace A180601.P7693741590981469911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322358 (A263097 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A180601.P7693741590981469911

/-! ## A180601.P4515013144367866473

`and(A008616(n), A070109(A165661(n)))`
-/

namespace A180601.P4515013144367866473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008616 n) (A070109 (A165661 n).toNat)

end

end A180601.P4515013144367866473

/-! ## A180601.P14391545979948528594

`A005171(n+3)*A070109(A165661(n))`
-/

namespace A180601.P14391545979948528594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 3) * A070109 (A165661 n).toNat

end

end A180601.P14391545979948528594

/-! ## A180601.P8801510238620483171

`and(A007318(n+3), A070109(A165661(n)))`
-/

namespace A180601.P8801510238620483171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007318 (n + 3)) (A070109 (A165661 n).toNat)

end

end A180601.P8801510238620483171

/-!
# A180602: a(n) = (2^(n+1) - 1)^n.

The programs for A180602, the canonical program `A180602.P10670334587036284452` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180602 has offset 0).

The definition of A180602 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(n+1)-1)^n` (program `A180602.P10670334587036284452`, by `A180602.P10670334587036284452.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A180602.P10670334587036284452

`(2^(n+1)-1)^n`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A180602

/-- `(2^(n+1)-1)^n` -/
def P10670334587036284452.Spec : Prop :=
  ∀ n, P10670334587036284452.a n = A180602 n

theorem P10670334587036284452.correct : P10670334587036284452.Spec := by
  intro n
  simp only [A180602]

end A180602

/-! ## A180602.P4960125060562263834

`abs(∑{d}[2^n, -#]^n)`
-/

namespace A180602.P4960125060562263834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ d ∈ Nat.divisors (f1 n), (-(d : ℤ))) ^ n|

end

end A180602.P4960125060562263834

namespace A180602

/-- `abs(∑{d}[2^n, -#]^n)` -/
def P4960125060562263834.Spec : Prop :=
  ∀ n, P4960125060562263834.a n = A180602 n

end A180602

/-! ## A180602.P11740281782528615065

`abs(A086459(n+1))`
-/

namespace A180602.P11740281782528615065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A086459 (n + 1)|

end

end A180602.P11740281782528615065

namespace A180602

/-- `abs(A086459(n+1))` -/
def P11740281782528615065.Spec : Prop :=
  ∀ n, P11740281782528615065.a n = A180602 n

end A180602

/-! ## A180602.P5473292039068143568

`A245789(A058331(n))`
-/

namespace A180602.P5473292039068143568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245789 (A058331 n).toNat

end

end A180602.P5473292039068143568

namespace A180602

/-- `A245789(A058331(n))` -/
def P5473292039068143568.Spec : Prop :=
  ∀ n, P5473292039068143568.a n = A180602 n

end A180602

/-! ## A180602.P4758081950066169768

`A055601(n+1)/A000225(n+1)`
-/

namespace A180602.P4758081950066169768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055601 (n + 1) : ℚ) / (A000225 (n + 1) : ℚ)

end

end A180602.P4758081950066169768

namespace A180602

/-- `A055601(n+1)/A000225(n+1)` -/
def P4758081950066169768.Spec : Prop :=
  ∀ n, P4758081950066169768.a n = (A180602 n : ℚ)

end A180602

/-!
# A180606: G.f.: A(x) = exp( Sum_{n>=1} (2^n-1)^(n-1)*x^n/n ).

The programs for A180606, there is no canonical definition to state claims against.
-/

/-! ## A180606.P221581623098553773

`A002202(n^floor((n/2)²))`
-/

namespace A180606.P221581623098553773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊((n : ℚ) / 2) ^ 2⌋ : ℤ))).toNat

end

end A180606.P221581623098553773

/-!
# A180607: Number of commutation classes of reduced words for the longest element of a Weyl group of type D_n.

The programs for A180607, there is no canonical definition to state claims against.
-/

/-! ## A180607.P7285466632927381665

`A002858(lcm(A124572(n), A124577(n)))`
-/

namespace A180607.P7285466632927381665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (Int.lcm (A124572 n) (A124577 n))

end

end A180607.P7285466632927381665

/-!
# A180608: O.g.f.: exp( Sum_{n>=1} A067692(n)*x^n/n ), where A067692(n) = [sigma(n)^2 + sigma(n,2)]/2.

The programs for A180608, there is no canonical definition to state claims against.
-/

/-! ## A180608.P1633889024326548496

`or(A061256(n), A134022(A079522(n)))`
-/

namespace A180608.P1633889024326548496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061256 n) (A134022 (A079522 n).toNat)

end

end A180608.P1633889024326548496

/-! ## A180608.P7427649692390732095

`or(A061256(n), A341022(A001629(n)))`
-/

namespace A180608.P7427649692390732095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061256 n) (A341022 ((A001629 n).toNat + 35))

end

end A180608.P7427649692390732095

/-! ## A180608.P10863032885608498836

`A341024(A116018(n+1))+A061256(n)`
-/

namespace A180608.P10863032885608498836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341024 ((A116018 (n + 1)).toNat + 84) + A061256 n

end

end A180608.P10863032885608498836

/-! ## A180608.P1507927940844952813

`A334493(A354050(n+1))+A061256(n)`
-/

namespace A180608.P1507927940844952813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334493 (A354050 (n + 1)).toNat + A061256 n

end

end A180608.P1507927940844952813

/-! ## A180608.P5241332775065733155

`A241470(A364915(n+2))+A061256(n)`
-/

namespace A180608.P5241332775065733155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241470 (A364915 (n + 2)).toNat + A061256 n

end

end A180608.P5241332775065733155

/-!
# A180609: G.f. L(x) satisfies: L(x) = L(exp(x)-1)*(1-exp(-x))/x = Sum_{n>=1} a(n)*x^n/(n!*(n+1)!).

The programs for A180609, there is no canonical definition to state claims against.
-/

/-! ## A180609.P8528368632407637038

`A120058(∑{d}[n+1, #]*A292623(n+1))`
-/

namespace A180609.P8528368632407637038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120058 (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A292623 (n + 1)).toNat

end

end A180609.P8528368632407637038

/-!
# A180610: G.f. satisfies: L(x) = L(x*exp(x))/(1+x) = Sum_{n>=1} a(n)*x^n/n!^2.

The programs for A180610, there is no canonical definition to state claims against.
-/

/-! ## A180610.P9761399891431668249

`(n+1)*A180614(n+1)`
-/

namespace A180610.P9761399891431668249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A180614 (n + 1)

end

end A180610.P9761399891431668249

/-! ## A180610.P16149844954250797507

`A180614(n+1)*A291769(n)`
-/

namespace A180610.P16149844954250797507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180614 (n + 1) * A291769 n

end

end A180610.P16149844954250797507

/-! ## A180610.P8938755237651651129

`A180614(n+1)*A348553(n)`
-/

namespace A180610.P8938755237651651129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180614 (n + 1) * A348553 n

end

end A180610.P8938755237651651129

/-!
# A180611: Largest palindromic prime divisor of semiprime(n). Zero if no such divisor exists.

The programs for A180611, there is no canonical definition to state claims against.
-/

/-! ## A180611.P18321123158067901334

`A180506(A001358(n+1))`
-/

namespace A180611.P18321123158067901334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180506 (A001358 (n + 1)).toNat

end

end A180611.P18321123158067901334

/-! ## A180611.P5907660220787074092

`A180506(A176540(n+2))`
-/

namespace A180611.P5907660220787074092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180506 (A176540 (n + 2)).toNat

end

end A180611.P5907660220787074092

/-! ## A180611.P9169919325041618957

`A180506(lt[1, A105700(n)])`
-/

namespace A180611.P9169919325041618957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A180611.P9169919325041618957

/-! ## A180611.P17825982318121767321

`A180506(eq[2, A105700(n)])`
-/

namespace A180611.P17825982318121767321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180611.P17825982318121767321

/-! ## A180611.P12698367127068800617

`A180506(A088707(n+1)-1)`
-/

namespace A180611.P12698367127068800617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180506 (A088707 (n + 1) - 1).toNat

end

end A180611.P12698367127068800617

/-!
# A180613: The number of palindromic primes in the first n terms of A006530.

The programs for A180613, there is no canonical definition to state claims against.
-/

/-! ## A180613.P89364772915116652

`∑[∏{p}[n+1, round(sqrt(3/#))]]-1`
-/

namespace A180613.P89364772915116652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.roundAway (Real.sqrt (3 / (p : ℚ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A180613.P89364772915116652

/-! ## A180613.P8227109663756906769

`A071523(n+1)-1`
-/

namespace A180613.P8227109663756906769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071523 (n + 1) - 1

end

end A180613.P8227109663756906769

/-! ## A180613.P14944543024986247004

`∑[char[A051038(n+2)-1]]`
-/

namespace A180613.P14944543024986247004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180613.P14944543024986247004

/-! ## A180613.P15647706978452176296

`∑[char[lt[A006530(n+1), 12]]]-1`
-/

namespace A180613.P15647706978452176296
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A180613.P15647706978452176296

/-! ## A180613.P8887429063302349385

`∑[C(n+1, A003964(n+1))]-1`
-/

namespace A180613.P8887429063302349385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A003964 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A180613.P8887429063302349385

/-! ## A180613.P6968918198643595516

`comp[A033620(n+1)+n-2]-n`
-/

namespace A180613.P6968918198643595516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1) + ((n : ℤ) - 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A180613.P6968918198643595516

/-! ## A180613.P3802816273323955281

`A214526(A071523(n+1)²)`
-/

namespace A180613.P3802816273323955281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A071523 (n + 1) ^ 2).toNat

end

end A180613.P3802816273323955281

/-! ## A180613.P345094654701881524

`A070198(n)%A071523(n+1)`
-/

namespace A180613.P345094654701881524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A071523 (n + 1))

end

end A180613.P345094654701881524

/-! ## A180613.P9199102402306250421

`∑[A136522(A006530(n+1))]-1`
-/

namespace A180613.P9199102402306250421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A180613.P9199102402306250421

/-! ## A180613.P6454346814191474133

`A079782(n+1)%A071523(n+1)`
-/

namespace A180613.P6454346814191474133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A071523 (n + 1))

end

end A180613.P6454346814191474133

/-!
# A180614: G.f. satisfies: L(x) = L(x*exp(x))/(1+x) = Sum_{n>=1} a(n)*x^n/(n!*(n-1)!).

The programs for A180614, there is no canonical definition to state claims against.
-/

/-! ## A180614.P16074094887816491397

`A180610(n+1)/(n+1)`
-/

namespace A180614.P16074094887816491397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180610 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A180614.P16074094887816491397

/-!
# A180615: Numbers starting with 1 such that the sum of any two distinct elements has an odd number of distinct prime factors.

The programs for A180615, there is no canonical definition to state claims against.
-/

/-! ## A180615.P17173124306835156665

`A334733(or(6*C(n, 3), ∏{p}[n+1, #]))`
-/

namespace A180615.P17173124306835156665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334733 (Nat.lor (6 * Nat.choose n 3) (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A180615.P17173124306835156665

/-! ## A180615.P13906790668559354176

`∑[A051120(A049315(n))]`
-/

namespace A180615.P13906790668559354176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051120 (A049315 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180615.P13906790668559354176

/-!
# A180617: Sum of divisors of the product of two consecutive primes.

The programs for A180617, the canonical program `A180617.P4406684303062301047` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180617 has offset 1).

The definition of A180617 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180617.P17791268151643616551

`A126199(n+1)+1`
-/

namespace A180617.P17791268151643616551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126199 (n + 1) + 1

end

end A180617.P17791268151643616551

namespace A180617

/-- `A126199(n+1)+1` -/
def P17791268151643616551.Spec : Prop :=
  ∀ n, P17791268151643616551.a n = A180617 (n + 1)

theorem P17791268151643616551.correct : P17791268151643616551.Spec := by
  intro n
  simp only [A180617, Nat.add_sub_cancel, A180617.P17791268151643616551.a, A180617.P4406684303062301047.a, A001043, A001043.P18269783162673735460.a, A006094, A006094.P10257567645245129766.a, A126199, A126199.P3423459806366818693.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A180617

/-! ## A180617.P4406684303062301047

`A006094(n+1)+A001043(n+1)+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A180617

/-- `A006094(n+1)+A001043(n+1)+1` -/
def P4406684303062301047.Spec : Prop :=
  ∀ n, P4406684303062301047.a n = A180617 (n + 1)

theorem P4406684303062301047.correct : P4406684303062301047.Spec := by
  intro n
  simp only [A180617, Nat.add_sub_cancel]

end A180617

/-! ## A180617.P4484689328471435201

`A000203(A006094(n+1))`
-/

namespace A180617.P4484689328471435201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A006094 (n + 1)).toNat

end

end A180617.P4484689328471435201

namespace A180617

/-- `A000203(A006094(n+1))` -/
def P4484689328471435201.Spec : Prop :=
  ∀ n, P4484689328471435201.a n = A180617 (n + 1)

end A180617

/-! ## A180617.P6622613047203059797

`4*A079079(n+1)`
-/

namespace A180617.P6622613047203059797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A079079 (n + 1)

end

end A180617.P6622613047203059797

namespace A180617

/-- `4*A079079(n+1)` -/
def P6622613047203059797.Spec : Prop :=
  ∀ n, P6622613047203059797.a n = A180617 (n + 1)

end A180617

/-! ## A180617.P15178343420963966573

`A092949(n+1)+A006094(n+1)`
-/

namespace A180617.P15178343420963966573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 (n + 1) + A006094 (n + 1)

end

end A180617.P15178343420963966573

namespace A180617

/-- `A092949(n+1)+A006094(n+1)` -/
def P15178343420963966573.Spec : Prop :=
  ∀ n, P15178343420963966573.a n = A180617 (n + 1)

theorem P15178343420963966573.correct : P15178343420963966573.Spec := by
  intro n
  simp only [A180617, Nat.add_sub_cancel, A180617.P15178343420963966573.a, A180617.P4406684303062301047.a, A001043, A001043.P18269783162673735460.a, A006094, A006094.P10257567645245129766.a, A092949, A092949.P1382492647621219255.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A180617

/-! ## A180617.P6157539797258339473

`A286624(n+1)+A065091(n+1)`
-/

namespace A180617.P6157539797258339473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286624 (n + 1) + A065091 (n + 1)

end

end A180617.P6157539797258339473

namespace A180617

/-- `A286624(n+1)+A065091(n+1)` -/
def P6157539797258339473.Spec : Prop :=
  ∀ n, P6157539797258339473.a n = A180617 (n + 1)

theorem P6157539797258339473.correct : P6157539797258339473.Spec := by
  intro n
  simp only [A180617, Nat.add_sub_cancel, A180617.P6157539797258339473.a, A180617.P4406684303062301047.a, A001043, A001043.P18269783162673735460.a, A006094, A006094.P10257567645245129766.a, A065091, A065091.P6971844946592549357.a, A286624, A286624.P15071627796879516967.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A123134, A123134.P8662972197791221738.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A180617

/-! ## A180617.P15352387300437371821

`A345727(n+1)+A008864(n+1)`
-/

namespace A180617.P15352387300437371821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345727 (n + 1) + A008864 (n + 1)

end

end A180617.P15352387300437371821

namespace A180617

/-- `A345727(n+1)+A008864(n+1)` -/
def P15352387300437371821.Spec : Prop :=
  ∀ n, P15352387300437371821.a n = A180617 (n + 1)

theorem P15352387300437371821.correct : P15352387300437371821.Spec := by
  intro n
  simp only [A180617, Nat.add_sub_cancel, A180617.P15352387300437371821.a, A180617.P4406684303062301047.a, A001043, A001043.P18269783162673735460.a, A006094, A006094.P10257567645245129766.a, A008864, A008864.P9177617808325052279.a, A345727, A345727.P2376584514298467307.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A180617

/-! ## A180617.P10031526289541161597

`A123134(n+1)+A055670(n+2)`
-/

namespace A180617.P10031526289541161597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123134 (n + 1) + A055670 (n + 2)

end

end A180617.P10031526289541161597

namespace A180617

/-- `A123134(n+1)+A055670(n+2)` -/
def P10031526289541161597.Spec : Prop :=
  ∀ n, P10031526289541161597.a n = A180617 (n + 1)

end A180617

/-! ## A180617.P1312392093782710900

`A006254(n+1)*A089241(n+1)`
-/

namespace A180617.P1312392093782710900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) * A089241 (n + 1)

end

end A180617.P1312392093782710900

namespace A180617

/-- `A006254(n+1)*A089241(n+1)` -/
def P1312392093782710900.Spec : Prop :=
  ∀ n, P1312392093782710900.a n = A180617 (n + 1)

end A180617

/-! ## A180617.P3638099257201654657

`A135731(n+1)*A175216(n+1)`
-/

namespace A180617.P3638099257201654657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1) * A175216 (n + 1)

end

end A180617.P3638099257201654657

namespace A180617

/-- `A135731(n+1)*A175216(n+1)` -/
def P3638099257201654657.Spec : Prop :=
  ∀ n, P3638099257201654657.a n = A180617 (n + 1)

end A180617

/-! ## A180617.P1048027777155176653

`A063086(n+1)*A309772(n+1)`
-/

namespace A180617.P1048027777155176653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063086 (n + 1) * A309772 (n + 1)

end

end A180617.P1048027777155176653

namespace A180617

/-- `A063086(n+1)*A309772(n+1)` -/
def P1048027777155176653.Spec : Prop :=
  ∀ n, P1048027777155176653.a n = A180617 (n + 1)

end A180617

/-! ## A180617.P9242698281948163946

`A123134(n+1)+A123134(n+1)/A000040(n+1)`
-/

namespace A180617.P9242698281948163946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123134 (n + 1) : ℚ) + (A123134 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A180617.P9242698281948163946

namespace A180617

/-- `A123134(n+1)+A123134(n+1)/A000040(n+1)` -/
def P9242698281948163946.Spec : Prop :=
  ∀ n, P9242698281948163946.a n = (A180617 (n + 1) : ℚ)

end A180617

/-! ## A180617.P1590585669863691193

`A023523(n+2)+A001043(n+1)`
-/

namespace A180617.P1590585669863691193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 2) + A001043 (n + 1)

end

end A180617.P1590585669863691193

namespace A180617

/-- `A023523(n+2)+A001043(n+1)` -/
def P1590585669863691193.Spec : Prop :=
  ∀ n, P1590585669863691193.a n = A180617 (n + 1)

end A180617

/-! ## A180617.P4359925941007100589

`A123134(n+1)+A008864(n+2)`
-/

namespace A180617.P4359925941007100589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123134 (n + 1) + A008864 (n + 2)

end

end A180617.P4359925941007100589

namespace A180617

/-- `A123134(n+1)+A008864(n+2)` -/
def P4359925941007100589.Spec : Prop :=
  ∀ n, P4359925941007100589.a n = A180617 (n + 1)

theorem P4359925941007100589.correct : P4359925941007100589.Spec := by
  intro n
  simp only [A180617, Nat.add_sub_cancel, A180617.P4359925941007100589.a, A180617.P4406684303062301047.a, A001043, A001043.P18269783162673735460.a, A006094, A006094.P10257567645245129766.a, A008864, A008864.P9177617808325052279.a, A123134, A123134.P8662972197791221738.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A180617

/-! ## A180617.P593833837746047558

`A123134(n+1)+A028815(n+2)`
-/

namespace A180617.P593833837746047558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123134 (n + 1) + A028815 (n + 2)

end

end A180617.P593833837746047558

namespace A180617

/-- `A123134(n+1)+A028815(n+2)` -/
def P593833837746047558.Spec : Prop :=
  ∀ n, P593833837746047558.a n = A180617 (n + 1)

end A180617

/-! ## A180617.P905942703327698431

`A286624(n+1)+A000040(n+2)`
-/

namespace A180617.P905942703327698431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286624 (n + 1) + A000040 (n + 2)

end

end A180617.P905942703327698431

namespace A180617

/-- `A286624(n+1)+A000040(n+2)` -/
def P905942703327698431.Spec : Prop :=
  ∀ n, P905942703327698431.a n = A180617 (n + 1)

theorem P905942703327698431.correct : P905942703327698431.Spec := by
  intro n
  simp only [A180617, Nat.add_sub_cancel, A180617.P905942703327698431.a, A180617.P4406684303062301047.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A006094, A006094.P10257567645245129766.a, A286624, A286624.P15071627796879516967.a, A123134, A123134.P8662972197791221738.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A180617

/-! ## A180617.P15482904984029481138

`A175216(n+2)+A123134(n+1)`
-/

namespace A180617.P15482904984029481138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175216 (n + 2) + A123134 (n + 1)

end

end A180617.P15482904984029481138

namespace A180617

/-- `A175216(n+2)+A123134(n+1)` -/
def P15482904984029481138.Spec : Prop :=
  ∀ n, P15482904984029481138.a n = A180617 (n + 1)

end A180617

/-! ## A180617.P15526575762253573673

`A345727(n+1)+A299763(n+2)`
-/

namespace A180617.P15526575762253573673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345727 (n + 1) + A299763 (n + 2)

end

end A180617.P15526575762253573673

namespace A180617

/-- `A345727(n+1)+A299763(n+2)` -/
def P15526575762253573673.Spec : Prop :=
  ∀ n, P15526575762253573673.a n = A180617 (n + 1)

end A180617

/-! ## A180617.P14189287415026633314

`A008864(n+1)*A008864(n+2)`
-/

namespace A180617.P14189287415026633314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) * A008864 (n + 2)

end

end A180617.P14189287415026633314

namespace A180617

/-- `A008864(n+1)*A008864(n+2)` -/
def P14189287415026633314.Spec : Prop :=
  ∀ n, P14189287415026633314.a n = A180617 (n + 1)

theorem P14189287415026633314.correct : P14189287415026633314.Spec := by
  intro n
  simp only [A180617, Nat.add_sub_cancel, A180617.P14189287415026633314.a, A180617.P4406684303062301047.a, A001043, A001043.P18269783162673735460.a, A006094, A006094.P10257567645245129766.a, A008864, A008864.P9177617808325052279.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A180617

/-! ## A180617.P11090323831913481154

`A028815(n+1)*A028815(n+2)`
-/

namespace A180617.P11090323831913481154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) * A028815 (n + 2)

end

end A180617.P11090323831913481154

namespace A180617

/-- `A028815(n+1)*A028815(n+2)` -/
def P11090323831913481154.Spec : Prop :=
  ∀ n, P11090323831913481154.a n = A180617 (n + 1)

end A180617

/-!
# A180618: The next smallest pandigital multiple of the pandigital number A050278(n).

The programs for A180618, there is no canonical definition to state claims against.
-/

/-! ## A180618.P1446677703241201376

`A050278(n+1)*A061393(A084032(n+1))`
-/

namespace A180618.P1446677703241201376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050278 (n + 1) * A061393 (A084032 (n + 1)).toNat

end

end A180618.P1446677703241201376

/-!
# A180619: Consider the function f(n)=1/(Abs(n-r)), where r is the Dottie number, A003957. Let g(n) be defined by the recursion g(n)=Cos(g(n-1)),g(0)=1. Now, a(n)=floor(f(g(n))).

The programs for A180619, there is no canonical definition to state claims against.
-/

/-! ## A180619.P7972597479246754072

`A003059(A211572(n+1)-A211590(n+1))`
-/

namespace A180619.P7972597479246754072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A211572 (n + 1) - A211590 (n + 1)).toNat

end

end A180619.P7972597479246754072

/-! ## A180619.P346934189999175605

`A003059(A211572(n+1)%A211590(n+1))`
-/

namespace A180619.P346934189999175605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (Int.tmod (A211572 (n + 1)) (A211590 (n + 1))).toNat

end

end A180619.P346934189999175605

/-!
# A180620: Odd legs of primitive Pythagorean triples (with multiplicity) sorted with respect to increasing hypotenuse.

The programs for A180620, there is no canonical definition to state claims against.
-/

/-! ## A180620.P15320375726004514423

`A093507(n+1)-(A231100(n+1)+A020882(n+1))`
-/

namespace A180620.P15320375726004514423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093507 (n + 1) - (A231100 (n + 1) + A020882 (n + 1))

end

end A180620.P15320375726004514423

/-! ## A180620.P12051482373971157301

`A005408(A298042(n+1)^A251072(n))`
-/

namespace A180620.P12051482373971157301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway ((A298042 (n + 1) : ℚ) ^ (A251072 n : ℤ))).toNat

end

end A180620.P12051482373971157301

/-! ## A180620.P15676282755589596486

`A005408(A298042(n+1)%A057178(n+1))`
-/

namespace A180620.P15676282755589596486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (Int.tmod (A298042 (n + 1)) (A057178 (n + 1))).toNat

end

end A180620.P15676282755589596486

/-! ## A180620.P4992251242220808534

`A005408(A251072(n)²²*A298042(n+1))`
-/

namespace A180620.P4992251242220808534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 ((A251072 n ^ 2) ^ 2 * A298042 (n + 1)).toNat

end

end A180620.P4992251242220808534

/-! ## A180620.P15029523278534976392

`A005408(A298042(n+1))%A133973(2*(n+2))`
-/

namespace A180620.P15029523278534976392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 (A298042 (n + 1)).toNat) (A133973 (2 * (n + 2)))

end

end A180620.P15029523278534976392

/-!
# A180621: Partial sums of A180620.

The programs for A180621, there is no canonical definition to state claims against.
-/

/-! ## A180621.P12560913316938508903

`∑[A180620(n+1)]`
-/

namespace A180621.P12560913316938508903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180621.P12560913316938508903

/-! ## A180621.P14553828439206036766

`∑[or(1, A180620(-xor(n, -1)))]`
-/

namespace A180621.P14553828439206036766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A180620 (-Int.xor (n : ℤ) (-1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180621.P14553828439206036766

/-! ## A180621.P7877956566397542294

`A180620(n+1)+a(A023443(n))` with `a(0)=3`
-/

namespace A180621.P7877956566397542294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A180620 (n + 1) + a (A023443 n).toNat

end

end A180621.P7877956566397542294

/-! ## A180621.P717168906296996556

`∑[A180620(-xor(n, -1))%A017605(n)]`
-/

namespace A180621.P717168906296996556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180620 (-Int.xor (n : ℤ) (-1)).toNat) (A017605 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180621.P717168906296996556

/-! ## A180621.P810109874929461468

`∑[A180620(-xor(n, -1))]%A095667(n)`
-/

namespace A180621.P810109874929461468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180620 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A095667 n)

end

end A180621.P810109874929461468

/-!
# A180622: Number of distinct sums i+j, absolute differences |i-j|, products ij and quotients i/j and j/i with 1 <= i, j <= n.

The programs for A180622, there is no canonical definition to state claims against.
-/

/-! ## A180622.P529632353724353935

`A263995(n+1)+A018805(n+1)-n`
-/

namespace A180622.P529632353724353935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263995 (n + 1) + A018805 (n + 1) - (n : ℤ)

end

end A180622.P529632353724353935

/-! ## A180622.P160550569313041480

`A263995(n+1)+2*A002088(n+1)-(n+1)`
-/

namespace A180622.P160550569313041480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263995 (n + 1) + 2 * A002088 (n + 1) - (n + 1 : ℤ)

end

end A180622.P160550569313041480

/-! ## A180622.P10642055801553088144

`A241918(A000011(2*(n+1)))+A007491(n+1)`
-/

namespace A180622.P10642055801553088144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241918 (A000011 (2 * (n + 1))).toNat + A007491 (n + 1)

end

end A180622.P10642055801553088144

/-!
# A180623: Expansion of exp(x^2*cosec(x)).

The programs for A180623, there is no canonical definition to state claims against.
-/

/-! ## A180623.P6938787836718487381

`A349428(floor(sqrt(n!)))`
-/

namespace A180623.P6938787836718487381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349428 (Nat.sqrt (Nat.factorial n))

end

end A180623.P6938787836718487381

/-! ## A180623.P11480364870704018987

`A322267(4*C(n, ceil(n/2)))`
-/

namespace A180623.P11480364870704018987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322267 (4 * Nat.choose n ⌈(n : ℚ) / 2⌉.toNat)

end

end A180623.P11480364870704018987

/-!
# A180624: Partials sums of A090615.

The programs for A180624, there is no canonical definition to state claims against.
-/

/-! ## A180624.P618414012329503742

`∑[A090615(n+1)]`
-/

namespace A180624.P618414012329503742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180624.P618414012329503742

/-! ## A180624.P9325412140951820678

`∑[record[A090615(A000174(n))]]`
-/

namespace A180624.P9325412140951820678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090615 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180624.P9325412140951820678

/-! ## A180624.P13094796063186923627

`∑[record[A090615(A020986(n))]]`
-/

namespace A180624.P13094796063186923627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090615 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180624.P13094796063186923627

/-! ## A180624.P3002389017298584643

`∑[record[A090615(A046693(n))]]`
-/

namespace A180624.P3002389017298584643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090615 (A046693 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180624.P3002389017298584643

/-! ## A180624.P7328762316767405619

`∑[record[A090615(A065648(n))]]`
-/

namespace A180624.P7328762316767405619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090615 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180624.P7328762316767405619

/-!
# A180627: Numbers k such that 6*k! - 1 is prime.

The programs for A180627, there is no canonical definition to state claims against.
-/

/-! ## A180627.P10058212719566666732

`A000026(A000112(n))%A019503(n+1)`
-/

namespace A180627.P10058212719566666732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000026 (A000112 n).toNat) (A019503 (n + 1))

end

end A180627.P10058212719566666732

/-!
# A180629: Numbers k such that 8*k! - 1 is prime.

The programs for A180629, there is no canonical definition to state claims against.
-/

/-! ## A180629.P15697165052559173860

`A065712(ceil((2^n+3/2)²)+(1-n)²+n)`
-/

namespace A180629.P15697165052559173860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065712 (⌈((2 ^ n : ℚ) + (3 : ℚ) / 2) ^ 2⌉ + ((1 - (n : ℤ)) ^ 2 + (n : ℤ))).toNat

end

end A180629.P15697165052559173860

/-! ## A180629.P11654721492779158021

`record[Δ[A136803(A008282(n+1))]]`
-/

namespace A180629.P11654721492779158021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136803 (A008282 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180629.P11654721492779158021

/-! ## A180629.P1200407444003671980

`record[A025663(p?[A169969(n+1)])]`
-/

namespace A180629.P1200407444003671980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169969 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025663 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180629.P1200407444003671980

/-!
# A180632: Minimum length of a string over the alphabet A = {1,2,...,n} that contains every permutation of A as a substring exactly once, also known as length of the minimal super-permutation.

The programs for A180632, there is no canonical definition to state claims against.
-/

/-! ## A180632.P2088335919861934705

`∑[dr(n)!]-1`
-/

namespace A180632.P2088335919861934705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.digitalRoot (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A180632.P2088335919861934705

/-!
# A180633: a(n) is the number of iterations of function f(x) = phi(x)-1 needed before zero is reached, when starting from the initial value x = n.

The programs for A180633, the canonical program `A180633.P2164913276918581847` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180633 has offset 0).

The definition of A180633 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A180633.P2164913276918581847

`1+a(A000010(n)-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A180633

/-- `1+a(A000010(n)-1)` -/
def P2164913276918581847.Spec : Prop :=
  ∀ n, (P2164913276918581847.a n : ℤ) = A180633 n

theorem P2164913276918581847.correct : P2164913276918581847.Spec := by
  intro n
  simp only [A180633]

end A180633

/-! ## A180633.P11179688393584113939

`a(A109606(n))+1` with `a(0)=0`
-/

namespace A180633.P11179688393584113939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A109606 n).toNat + 1

end

end A180633.P11179688393584113939

namespace A180633

/-- `a(A109606(n))+1` -/
def P11179688393584113939.Spec : Prop :=
  ∀ n, (P11179688393584113939.a n : ℤ) = A180633 n

end A180633

/-! ## A180633.P4250422483054138990

`a(A000010(n)-1)+1` with `a(0)=0`
-/

namespace A180633.P4250422483054138990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A000010 n - 1).toNat + 1

end

end A180633.P4250422483054138990

namespace A180633

/-- `a(A000010(n)-1)+1` -/
def P4250422483054138990.Spec : Prop :=
  ∀ n, (P4250422483054138990.a n : ℤ) = A180633 n

end A180633

/-! ## A180633.P10035749160728523224

`a(A039649(n)-2)+1` with `a(0)=0`
-/

namespace A180633.P10035749160728523224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A039649 n - 2).toNat + 1

end

end A180633.P10035749160728523224

namespace A180633

/-- `a(A039649(n)-2)+1` -/
def P10035749160728523224.Spec : Prop :=
  ∀ n, (P10035749160728523224.a n : ℤ) = A180633 n

end A180633

/-! ## A180633.P4317587340178928439

`floor(a(A000010(n)-1)-A057428(n))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A180633.P4317587340178928439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (A000010 n - 1).toNat - A057428 n

end

end A180633.P4317587340178928439

namespace A180633

/-- `floor(a(A000010(n)-1)-A057428(n))` -/
def P4317587340178928439.Spec : Prop :=
  ∀ n, P4317587340178928439.a n = A180633 n

end A180633

/-! ## A180633.P13533003470555889054

`a(A225530(n)-1)+1` with `a(0)=0, a(1)=1`
-/

namespace A180633.P13533003470555889054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A225530 n - 1).toNat + 1

end

end A180633.P13533003470555889054

namespace A180633

/-- `a(A225530(n)-1)+1` -/
def P13533003470555889054.Spec : Prop :=
  ∀ n, (P13533003470555889054.a n : ℤ) = A180633 n

end A180633

/-!
# A180634: Numbers n such that the discriminant of the n-th cyclotomic polynomial is a square.

The programs for A180634, the canonical program `A180634.P12343115903824163931` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180634 has offset 1).

The definition of A180634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180634.P12343115903824163931

`lt[n*A211487(n+1), 2]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A180634

/-- `lt[n*A211487(n+1), 2]+1` -/
def P12343115903824163931.Spec : Prop :=
  ∀ n, (P12343115903824163931.a n : ℤ) = A180634 (n + 1)

theorem P12343115903824163931.correct : P12343115903824163931.Spec := by
  intro n
  simp only [A180634, Nat.add_sub_cancel]

end A180634

/-! ## A180634.P5039674015800208566

`∪[A033949(n+1), A002604(n)]`
-/

namespace A180634.P5039674015800208566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002604 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A180634.P5039674015800208566

namespace A180634

/-- `∪[A033949(n+1), A002604(n)]` -/
def P5039674015800208566.Spec : Prop :=
  ∀ n, (P5039674015800208566.a n : ℤ) = A180634 (n + 1)

end A180634

/-! ## A180634.P3273364102860271718

`∪[A005484(n), A033949(n+1)]`
-/

namespace A180634.P3273364102860271718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005484 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A180634.P3273364102860271718

namespace A180634

/-- `∪[A005484(n), A033949(n+1)]` -/
def P3273364102860271718.Spec : Prop :=
  ∀ n, (P3273364102860271718.a n : ℤ) = A180634 (n + 1)

end A180634

/-! ## A180634.P9162679477145656039

`∪[A006139(n), A033949(n+1)]`
-/

namespace A180634.P9162679477145656039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006139 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A180634.P9162679477145656039

namespace A180634

/-- `∪[A006139(n), A033949(n+1)]` -/
def P9162679477145656039.Spec : Prop :=
  ∀ n, (P9162679477145656039.a n : ℤ) = A180634 (n + 1)

end A180634

/-! ## A180634.P13430428975194521667

`∪[A006952(n), A033949(n+1)]`
-/

namespace A180634.P13430428975194521667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006952 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A180634.P13430428975194521667

namespace A180634

/-- `∪[A006952(n), A033949(n+1)]` -/
def P13430428975194521667.Spec : Prop :=
  ∀ n, (P13430428975194521667.a n : ℤ) = A180634 (n + 1)

end A180634

/-! ## A180634.P14797245995708432565

`∪[A033949(n+1), A025495(n)]`
-/

namespace A180634.P14797245995708432565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025495 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A180634.P14797245995708432565

namespace A180634

/-- `∪[A033949(n+1), A025495(n)]` -/
def P14797245995708432565.Spec : Prop :=
  ∀ n, (P14797245995708432565.a n : ℤ) = A180634 (n + 1)

end A180634

/-! ## A180634.P1428999594556379884

`∪[A033949(n+1), A033568(n)]`
-/

namespace A180634.P1428999594556379884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033568 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A180634.P1428999594556379884

namespace A180634

/-- `∪[A033949(n+1), A033568(n)]` -/
def P1428999594556379884.Spec : Prop :=
  ∀ n, (P1428999594556379884.a n : ℤ) = A180634 (n + 1)

end A180634

/-! ## A180634.P12628207645555856858

`∪[A033949(n+1), A046161(n)]`
-/

namespace A180634.P12628207645555856858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A180634.P12628207645555856858

namespace A180634

/-- `∪[A033949(n+1), A046161(n)]` -/
def P12628207645555856858.Spec : Prop :=
  ∀ n, (P12628207645555856858.a n : ℤ) = A180634 (n + 1)

end A180634

/-! ## A180634.P9760459029849889669

`∪[A033949(n+1), A048497(n)]`
-/

namespace A180634.P9760459029849889669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048497 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A180634.P9760459029849889669

namespace A180634

/-- `∪[A033949(n+1), A048497(n)]` -/
def P9760459029849889669.Spec : Prop :=
  ∀ n, (P9760459029849889669.a n : ℤ) = A180634 (n + 1)

end A180634

/-! ## A180634.P12942126905541920728

`∪[A033949(n+1), A048501(n)]`
-/

namespace A180634.P12942126905541920728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048501 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A180634.P12942126905541920728

namespace A180634

/-- `∪[A033949(n+1), A048501(n)]` -/
def P12942126905541920728.Spec : Prop :=
  ∀ n, (P12942126905541920728.a n : ℤ) = A180634 (n + 1)

end A180634

/-! ## A180634.P17712500289263074811

`∪[A033949(n+1), A050242(n)]`
-/

namespace A180634.P17712500289263074811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050242 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A180634.P17712500289263074811

namespace A180634

/-- `∪[A033949(n+1), A050242(n)]` -/
def P17712500289263074811.Spec : Prop :=
  ∀ n, (P17712500289263074811.a n : ℤ) = A180634 (n + 1)

end A180634

/-! ## A180634.P5441006562747895234

`∪[A033949(n+1), A052481(n)]`
-/

namespace A180634.P5441006562747895234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052481 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A180634.P5441006562747895234

namespace A180634

/-- `∪[A033949(n+1), A052481(n)]` -/
def P5441006562747895234.Spec : Prop :=
  ∀ n, (P5441006562747895234.a n : ℤ) = A180634 (n + 1)

end A180634

/-! ## A180634.P12799036314837116905

`∪[A033949(n+1), A060899(n)]`
-/

namespace A180634.P12799036314837116905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060899 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A180634.P12799036314837116905

namespace A180634

/-- `∪[A033949(n+1), A060899(n)]` -/
def P12799036314837116905.Spec : Prop :=
  ∀ n, (P12799036314837116905.a n : ℤ) = A180634 (n + 1)

end A180634

/-! ## A180634.P1600323429038198326

`∪[A033949(n+1), A063727(n)]`
-/

namespace A180634.P1600323429038198326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063727 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A180634.P1600323429038198326

namespace A180634

/-- `∪[A033949(n+1), A063727(n)]` -/
def P1600323429038198326.Spec : Prop :=
  ∀ n, (P1600323429038198326.a n : ℤ) = A180634 (n + 1)

end A180634

/-! ## A180634.P15171457466031449654

`∪[A033949(n+1), A074092(n)]`
-/

namespace A180634.P15171457466031449654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A180634.P15171457466031449654

namespace A180634

/-- `∪[A033949(n+1), A074092(n)]` -/
def P15171457466031449654.Spec : Prop :=
  ∀ n, (P15171457466031449654.a n : ℤ) = A180634 (n + 1)

end A180634

/-! ## A180634.P15439207713342377562

`∪[A033949(n+1), A077410(n)]`
-/

namespace A180634.P15439207713342377562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077410 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A180634.P15439207713342377562

namespace A180634

/-- `∪[A033949(n+1), A077410(n)]` -/
def P15439207713342377562.Spec : Prop :=
  ∀ n, (P15439207713342377562.a n : ℤ) = A180634 (n + 1)

end A180634

/-! ## A180634.P2229131721604672748

`∪[A033949(n+1), A092355(n)]`
-/

namespace A180634.P2229131721604672748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092355 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A180634.P2229131721604672748

namespace A180634

/-- `∪[A033949(n+1), A092355(n)]` -/
def P2229131721604672748.Spec : Prop :=
  ∀ n, (P2229131721604672748.a n : ℤ) = A180634 (n + 1)

end A180634

/-! ## A180634.P6108519907832247862

`∪[A033949(n+1), A141130(n)]`
-/

namespace A180634.P6108519907832247862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141130 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A180634.P6108519907832247862

namespace A180634

/-- `∪[A033949(n+1), A141130(n)]` -/
def P6108519907832247862.Spec : Prop :=
  ∀ n, (P6108519907832247862.a n : ℤ) = A180634 (n + 1)

end A180634

/-! ## A180634.P17034208674135699963

`∪[A033949(n+1), A141132(n)]`
-/

namespace A180634.P17034208674135699963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141132 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A180634.P17034208674135699963

namespace A180634

/-- `∪[A033949(n+1), A141132(n)]` -/
def P17034208674135699963.Spec : Prop :=
  ∀ n, (P17034208674135699963.a n : ℤ) = A180634 (n + 1)

end A180634

/-! ## A180634.P18208845532890059822

`∪[A033949(n+1), A212975(n)]`
-/

namespace A180634.P18208845532890059822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212975 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A180634.P18208845532890059822

namespace A180634

/-- `∪[A033949(n+1), A212975(n)]` -/
def P18208845532890059822.Spec : Prop :=
  ∀ n, (P18208845532890059822.a n : ℤ) = A180634 (n + 1)

end A180634

/-!
# A180635: The number of smooth Schubert varieties in the affine analog of the flag manifold of type A.

The programs for A180635, there is no canonical definition to state claims against.
-/

/-! ## A180635.P13969023449498333618

`A072154(2*A140476(n)-n)`
-/

namespace A180635.P13969023449498333618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (2 * A140476 n - (n : ℤ)).toNat

end

end A180635.P13969023449498333618

/-!
# A180636: Positive integers that are divisible by neither 8k-1 nor 8k+1, for all k > 0.

The programs for A180636, the canonical program `A180636.P9143062899493612538` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180636 has offset 1).

The definition of A180636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3002 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180636.P9143062899493612538

`∩[A343107(n+1), A343110(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A180636

/-- `∩[A343107(n+1), A343110(n+1)]` -/
def P9143062899493612538.Spec : Prop :=
  ∀ n, (P9143062899493612538.a n : ℤ) = A180636 (n + 1)

theorem P9143062899493612538.correct : P9143062899493612538.Spec := by
  intro n
  simp only [A180636, Nat.add_sub_cancel]

end A180636

/-! ## A180636.P9365213082600983052

`eq[1, ∑{d}[n, A091248(#)%2]]`
-/

namespace A180636.P9365213082600983052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), Int.tmod (A091248 d) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180636.P9365213082600983052

namespace A180636

/-- `eq[1, ∑{d}[n, A091248(#)%2]]` -/
def P9365213082600983052.Spec : Prop :=
  ∀ n, (P9365213082600983052.a n : ℤ) = A180636 (n + 1)

end A180636

/-! ## A180636.P10300398824003897174

`eq[1, ∑{d}[n, A250122(#)%2]]`
-/

namespace A180636.P10300398824003897174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), Int.tmod (A250122 d) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180636.P10300398824003897174

namespace A180636

/-- `eq[1, ∑{d}[n, A250122(#)%2]]` -/
def P10300398824003897174.Spec : Prop :=
  ∀ n, (P10300398824003897174.a n : ℤ) = A180636 (n + 1)

end A180636

/-! ## A180636.P11515988447389775604

`eq[1, ∑{d}[n, A222002(#+1)%2]]`
-/

namespace A180636.P11515988447389775604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), Int.tmod (A222002 (d + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180636.P11515988447389775604

namespace A180636

/-- `eq[1, ∑{d}[n, A222002(#+1)%2]]` -/
def P11515988447389775604.Spec : Prop :=
  ∀ n, (P11515988447389775604.a n : ℤ) = A180636 (n + 1)

end A180636

/-! ## A180636.P7640807027630956237

`lt[A284100(n+1), A244544(n+1)]+1`
-/

namespace A180636.P7640807027630956237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244544 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A180636.P7640807027630956237

namespace A180636

/-- `lt[A284100(n+1), A244544(n+1)]+1` -/
def P7640807027630956237.Spec : Prop :=
  ∀ n, (P7640807027630956237.a n : ℤ) = A180636 (n + 1)

end A180636

/-! ## A180636.P7535904933990512422

`lt[A284100(A028310(n)), A244544(n)]`
-/

namespace A180636.P7535904933990512422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284100 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244544 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180636.P7535904933990512422

namespace A180636

/-- `lt[A284100(A028310(n)), A244544(n)]` -/
def P7535904933990512422.Spec : Prop :=
  ∀ n, (P7535904933990512422.a n : ℤ) = A180636 (n + 1)

end A180636

/-! ## A180636.P13366052190188093751

`lt[A284100(A008574(n)), A244544(n)]`
-/

namespace A180636.P13366052190188093751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284100 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244544 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180636.P13366052190188093751

namespace A180636

/-- `lt[A284100(A008574(n)), A244544(n)]` -/
def P13366052190188093751.Spec : Prop :=
  ∀ n, (P13366052190188093751.a n : ℤ) = A180636 (n + 1)

end A180636

/-!
# A180637: Digital root of A179899.

The programs for A180637, the canonical program `A180637.P11947041617568078126` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180637 has offset 1).

The definition of A180637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180637.P11947041617568078126

`dr(A179899(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A180637

/-- `dr(A179899(n+1))` -/
def P11947041617568078126.Spec : Prop :=
  ∀ n, (P11947041617568078126.a n : ℤ) = A180637 (n + 1)

theorem P11947041617568078126.correct : P11947041617568078126.Spec := by
  intro n
  simp only [A180637, Nat.add_sub_cancel]

end A180637

/-! ## A180637.P9261389682619810901

`dr(2-A172048(n+1))`
-/

namespace A180637.P9261389682619810901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (2 - A172048 (n + 1))

end

end A180637.P9261389682619810901

namespace A180637

/-- `dr(2-A172048(n+1))` -/
def P9261389682619810901.Spec : Prop :=
  ∀ n, (P9261389682619810901.a n : ℤ) = A180637 (n + 1)

end A180637

/-! ## A180637.P5353071084909721052

`dr(3*A047845(n+1))`
-/

namespace A180637.P5353071084909721052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (3 * A047845 (n + 1))

end

end A180637.P5353071084909721052

namespace A180637

/-- `dr(3*A047845(n+1))` -/
def P5353071084909721052.Spec : Prop :=
  ∀ n, (P5353071084909721052.a n : ℤ) = A180637 (n + 1)

theorem P5353071084909721052.correct : P5353071084909721052.Spec := by
  intro n
  simp only [A180637, Nat.add_sub_cancel, A180637.P5353071084909721052.a, A180637.P11947041617568078126.a, A047845, A047845.P10472410554983521945.f1, A047845.P10472410554983521945.f2, A047845.P10472410554983521945.a, A179899, A179899.P8119244184585946797.f1, A179899.P8119244184585946797.f2, A179899.P8119244184585946797.a, A101264, A101264.P18132826973570150985.a, A057427, A057427.P3058147525557661423.a, A085090, A085090.P7648760271981686645.f1, A085090.P7648760271981686645.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A180637

/-! ## A180637.P8996165487563798977

`dr(3*comp[floor(A000040(n+1)/2)])`
-/

namespace A180637.P8996165487563798977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A180637.P8996165487563798977

namespace A180637

/-- `dr(3*comp[floor(A000040(n+1)/2)])` -/
def P8996165487563798977.Spec : Prop :=
  ∀ n, (P8996165487563798977.a n : ℤ) = A180637 (n + 1)

end A180637

/-! ## A180637.P5750688569439586846

`dr(3*comp[eq[1, A001222(2*n+1)]])`
-/

namespace A180637.P5750688569439586846
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A180637.P5750688569439586846

namespace A180637

/-- `dr(3*comp[eq[1, A001222(2*n+1)]])` -/
def P5750688569439586846.Spec : Prop :=
  ∀ n, (P5750688569439586846.a n : ℤ) = A180637 (n + 1)

end A180637

/-! ## A180637.P7769404821820822185

`dr(3*comp[eq[2, A000005(2*n+1)]])`
-/

namespace A180637.P7769404821820822185
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A180637.P7769404821820822185

namespace A180637

/-- `dr(3*comp[eq[2, A000005(2*n+1)]])` -/
def P7769404821820822185.Spec : Prop :=
  ∀ n, (P7769404821820822185.a n : ℤ) = A180637 (n + 1)

end A180637

/-! ## A180637.P7333485082672954536

`dr(3*lt[A006530(2*n+1), n+2])`
-/

namespace A180637.P7333485082672954536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (3 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A180637.P7333485082672954536

namespace A180637

/-- `dr(3*lt[A006530(2*n+1), n+2])` -/
def P7333485082672954536.Spec : Prop :=
  ∀ n, (P7333485082672954536.a n : ℤ) = A180637 (n + 1)

end A180637

/-! ## A180637.P9476164182192061597

`dr(3*lt[A020639(2*n+1), n+2])`
-/

namespace A180637.P9476164182192061597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (3 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A180637.P9476164182192061597

namespace A180637

/-- `dr(3*lt[A020639(2*n+1), n+2])` -/
def P9476164182192061597.Spec : Prop :=
  ∀ n, (P9476164182192061597.a n : ℤ) = A180637 (n + 1)

end A180637

/-! ## A180637.P14106574605154955873

`A180593(A047845(n+1)-A180593(n))`
-/

namespace A180637.P14106574605154955873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180593 (A047845 (n + 1) - A180593 n).toNat

end

end A180637.P14106574605154955873

namespace A180637

/-- `A180593(A047845(n+1)-A180593(n))` -/
def P14106574605154955873.Spec : Prop :=
  ∀ n, P14106574605154955873.a n = A180637 (n + 1)

end A180637

/-! ## A180637.P3717234695150152570

`A180593(A047845(n+1))`
-/

namespace A180637.P3717234695150152570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180593 (A047845 (n + 1)).toNat

end

end A180637.P3717234695150152570

namespace A180637

/-- `A180593(A047845(n+1))` -/
def P3717234695150152570.Spec : Prop :=
  ∀ n, P3717234695150152570.a n = A180637 (n + 1)

end A180637

/-! ## A180637.P15234518515884775169

`dr(A007494(A014076(n+1)-1))`
-/

namespace A180637.P15234518515884775169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007494 (A014076 (n + 1) - 1).toNat)

end

end A180637.P15234518515884775169

namespace A180637

/-- `dr(A007494(A014076(n+1)-1))` -/
def P15234518515884775169.Spec : Prop :=
  ∀ n, (P15234518515884775169.a n : ℤ) = A180637 (n + 1)

end A180637

/-! ## A180637.P5073659892988222573

`dr(3*lt[A014963(2*n+1), n+2])`
-/

namespace A180637.P5073659892988222573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (3 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A180637.P5073659892988222573

namespace A180637

/-- `dr(3*lt[A014963(2*n+1), n+2])` -/
def P5073659892988222573.Spec : Prop :=
  ∀ n, (P5073659892988222573.a n : ℤ) = A180637 (n + 1)

end A180637

/-! ## A180637.P505357770100485328

`dr(A047229(A014076(n+1)))`
-/

namespace A180637.P505357770100485328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A047229 (A014076 (n + 1)).toNat)

end

end A180637.P505357770100485328

namespace A180637

/-- `dr(A047229(A014076(n+1)))` -/
def P505357770100485328.Spec : Prop :=
  ∀ n, (P505357770100485328.a n : ℤ) = A180637 (n + 1)

end A180637

/-! ## A180637.P18046920167368579844

`dr(A082009(A172048(n+1)))`
-/

namespace A180637.P18046920167368579844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A082009 (A172048 (n + 1)).toNat)

end

end A180637.P18046920167368579844

namespace A180637

/-- `dr(A082009(A172048(n+1)))` -/
def P18046920167368579844.Spec : Prop :=
  ∀ n, (P18046920167368579844.a n : ℤ) = A180637 (n + 1)

end A180637

/-!
# A180638: Phan Thành Nam's upper bound on the number of non-relativistic electrons bound to a nucleus of charge n.

The programs for A180638, there is no canonical definition to state claims against.
-/

/-! ## A180638.P16789921357712811435

`A134914(A054556(n+5))+n`
-/

namespace A180638.P16789921357712811435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (A054556 (n + 5)).toNat + (n : ℤ)

end

end A180638.P16789921357712811435

/-! ## A180638.P4459745988171756857

`A048766(A253391(n+1))+1+n`
-/

namespace A180638.P4459745988171756857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A253391 (n + 1)).toNat + 1 + (n : ℤ)

end

end A180638.P4459745988171756857

/-! ## A180638.P17754823505982196327

`A048766(A033991(n+4))+n+1`
-/

namespace A180638.P17754823505982196327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A033991 (n + 4)).toNat + (n + 1 : ℤ)

end

end A180638.P17754823505982196327

/-! ## A180638.P16027073920387842944

`A003056(∑[A028786(n+4)])`
-/

namespace A180638.P16027073920387842944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028786 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A180638.P16027073920387842944

/-!
# A180639: a(n) is the number of integers k <= n that are not solution of phi(x) = k for any x, where phi is the Euler totient function A000010.

The programs for A180639, the canonical program `A180639.P15369991327257143544` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180639 has offset 1).

The definition of A180639 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264810, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A180639.P15369991327257143544

`n+1-A264810(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A180639

/-- `n+1-A264810(n+1)` -/
def P15369991327257143544.Spec : Prop :=
  ∀ n, P15369991327257143544.a n = A180639 (n + 1)

theorem P15369991327257143544.correct : P15369991327257143544.Spec := by
  intro n
  simp only [A180639, Nat.add_sub_cancel]

end A180639

/-! ## A180639.P9986589772741847168

`∑[1-A264739(n+1)]`
-/

namespace A180639.P9986589772741847168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A264739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180639.P9986589772741847168

namespace A180639

/-- `∑[1-A264739(n+1)]` -/
def P9986589772741847168.Spec : Prop :=
  ∀ n, P9986589772741847168.a n = A180639 (n + 1)

end A180639

/-! ## A180639.P8002379265233186418

`∑[C(2, A215240(n+1))]`
-/

namespace A180639.P8002379265233186418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A215240 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180639.P8002379265233186418

namespace A180639

/-- `∑[C(2, A215240(n+1))]` -/
def P8002379265233186418.Spec : Prop :=
  ∀ n, (P8002379265233186418.a n : ℤ) = A180639 (n + 1)

end A180639

/-! ## A180639.P599502212109141579

`∑[C(n, A049283(n+1))]`
-/

namespace A180639.P599502212109141579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A049283 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180639.P599502212109141579

namespace A180639

/-- `∑[C(n, A049283(n+1))]` -/
def P599502212109141579.Spec : Prop :=
  ∀ n, (P599502212109141579.a n : ℤ) = A180639 (n + 1)

end A180639

/-! ## A180639.P15015065325056751934

`∑[C(n, A057635(n+1))]`
-/

namespace A180639.P15015065325056751934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A057635 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180639.P15015065325056751934

namespace A180639

/-- `∑[C(n, A057635(n+1))]` -/
def P15015065325056751934.Spec : Prop :=
  ∀ n, (P15015065325056751934.a n : ℤ) = A180639 (n + 1)

end A180639

/-! ## A180639.P5139397070176998156

`∑[floor(acot(A014197(n+1)))]`
-/

namespace A180639.P5139397070176998156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A014197 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180639.P5139397070176998156

namespace A180639

/-- `∑[floor(acot(A014197(n+1)))]` -/
def P5139397070176998156.Spec : Prop :=
  ∀ n, P5139397070176998156.a n = A180639 (n + 1)

end A180639

/-! ## A180639.P5496911698675683822

`∑[floor(1/A322310(n+1))]`
-/

namespace A180639.P5496911698675683822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A322310 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180639.P5496911698675683822

namespace A180639

/-- `∑[floor(1/A322310(n+1))]` -/
def P5496911698675683822.Spec : Prop :=
  ∀ n, P5496911698675683822.a n = A180639 (n + 1)

end A180639

/-! ## A180639.P1696538631295713419

`∑[gcd(2, A323169(n+1))-1]`
-/

namespace A180639.P1696538631295713419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A323169 (n + 1)) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180639.P1696538631295713419

namespace A180639

/-- `∑[gcd(2, A323169(n+1))-1]` -/
def P1696538631295713419.Spec : Prop :=
  ∀ n, P1696538631295713419.a n = A180639 (n + 1)

end A180639

/-! ## A180639.P5224600187067717754

`∑[char[comp[A000010(n+1)-1]]]`
-/

namespace A180639.P5224600187067717754
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180639.P5224600187067717754

namespace A180639

/-- `∑[char[comp[A000010(n+1)-1]]]` -/
def P5224600187067717754.Spec : Prop :=
  ∀ n, (P5224600187067717754.a n : ℤ) = A180639 (n + 1)

end A180639

/-! ## A180639.P14504914138683997252

`n-∑[char[∑[A083533(n+1)]]]`
-/

namespace A180639.P14504914138683997252
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A180639.P14504914138683997252

namespace A180639

/-- `n-∑[char[∑[A083533(n+1)]]]` -/
def P14504914138683997252.Spec : Prop :=
  ∀ n, P14504914138683997252.a n = A180639 (n + 1)

end A180639

/-! ## A180639.P15265284872412299442

`∑[A323169(A323169(n+1)+2)]`
-/

namespace A180639.P15265284872412299442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (A323169 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180639.P15265284872412299442

namespace A180639

/-- `∑[A323169(A323169(n+1)+2)]` -/
def P15265284872412299442.Spec : Prop :=
  ∀ n, P15265284872412299442.a n = A180639 (n + 1)

end A180639

/-! ## A180639.P11432920092542275435

`∑[A059841(A049283(n+1))]`
-/

namespace A180639.P11432920092542275435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A049283 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180639.P11432920092542275435

namespace A180639

/-- `∑[A059841(A049283(n+1))]` -/
def P11432920092542275435.Spec : Prop :=
  ∀ n, P11432920092542275435.a n = A180639 (n + 1)

end A180639

/-! ## A180639.P632420431618582595

`∑[A014197(2*n+3)^A014197(n+1)]`
-/

namespace A180639.P632420431618582595
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014197 (2 * n + 3) : ℚ) ^ (A014197 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180639.P632420431618582595

namespace A180639

/-- `∑[A014197(2*n+3)^A014197(n+1)]` -/
def P632420431618582595.Spec : Prop :=
  ∀ n, P632420431618582595.a n = (A180639 (n + 1) : ℚ)

end A180639

/-! ## A180639.P15706240970099162813

`∑[A080995(2*A014197(n+1)²)]`
-/

namespace A180639.P15706240970099162813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080995 (2 * A014197 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180639.P15706240970099162813

namespace A180639

/-- `∑[A080995(2*A014197(n+1)²)]` -/
def P15706240970099162813.Spec : Prop :=
  ∀ n, P15706240970099162813.a n = A180639 (n + 1)

end A180639

/-! ## A180639.P9722042453140930524

`∑[A010051(2*A322310(n+1))]`
-/

namespace A180639.P9722042453140930524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * A322310 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180639.P9722042453140930524

namespace A180639

/-- `∑[A010051(2*A322310(n+1))]` -/
def P9722042453140930524.Spec : Prop :=
  ∀ n, P9722042453140930524.a n = A180639 (n + 1)

end A180639

/-! ## A180639.P657804951943880086

`∑[A010051(A322310(A322310(n+1)))]`
-/

namespace A180639.P657804951943880086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A322310 (A322310 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180639.P657804951943880086

namespace A180639

/-- `∑[A010051(A322310(A322310(n+1)))]` -/
def P657804951943880086.Spec : Prop :=
  ∀ n, P657804951943880086.a n = A180639 (n + 1)

end A180639

/-! ## A180639.P11989422714302430118

`∑[C(A280749(n), A280712(n+1))]`
-/

namespace A180639.P11989422714302430118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A280749 n).toNat (A280712 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180639.P11989422714302430118

namespace A180639

/-- `∑[C(A280749(n), A280712(n+1))]` -/
def P11989422714302430118.Spec : Prop :=
  ∀ n, (P11989422714302430118.a n : ℤ) = A180639 (n + 1)

end A180639

/-! ## A180639.P12265608493545468405

`∑[C(A280750(n), A280712(n+1))]`
-/

namespace A180639.P12265608493545468405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A280750 n).toNat (A280712 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180639.P12265608493545468405

namespace A180639

/-- `∑[C(A280750(n), A280712(n+1))]` -/
def P12265608493545468405.Spec : Prop :=
  ∀ n, (P12265608493545468405.a n : ℤ) = A180639 (n + 1)

end A180639

/-!
# A180640: Primes P such that P < (largest prime factor of (P-1)) * (largest prime factor of (P+1)).

The programs for A180640, there is no canonical definition to state claims against.
-/

/-! ## A180640.P12218963551052426953

`eq[A003415(n), A355690(A303888(n+1))]`
-/

namespace A180640.P12218963551052426953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355690 (A303888 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180640.P12218963551052426953

/-! ## A180640.P3062042873804568004

`eq[A003415(n), A355690(A305281(n+1))]`
-/

namespace A180640.P3062042873804568004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355690 (A305281 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180640.P3062042873804568004

/-! ## A180640.P15756879677117417187

`A089189(A184117(n+1)%A128339(n+1))`
-/

namespace A180640.P15756879677117417187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089189 (Int.tmod (A184117 (n + 1)) (A128339 (n + 1))).toNat

end

end A180640.P15756879677117417187

/-! ## A180640.P7193585973913474316

`A000040(lt[A172486(n+1), A385000(n)])`
-/

namespace A180640.P7193585973913474316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A180640.P7193585973913474316

/-! ## A180640.P1053720928998465627

`A218123(A093840(n+1))`
-/

namespace A180640.P1053720928998465627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218123 (A093840 (n + 1)).toNat

end

end A180640.P1053720928998465627

/-!
# A180641: Primes P such that P > (largest prime factor of (P-1)) * (largest prime factor of (P+1)).

The programs for A180641, there is no canonical definition to state claims against.
-/

/-! ## A180641.P14855270235721601192

`A230775(A090693(3*n+4)*A109274(n+1))`
-/

namespace A180641.P14855270235721601192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A090693 (3 * n + 4) * A109274 (n + 1)).toNat

end

end A180641.P14855270235721601192

/-! ## A180641.P18070961415113571915

`A302607(A015739(2*(n+1))+A315897(n+2)+2)`
-/

namespace A180641.P18070961415113571915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302607 (A015739 (2 * (n + 1)) + (A315897 (n + 2) + 2)).toNat

end

end A180641.P18070961415113571915

/-!
# A180642: Numbers k such that phi(k)/4 is a prime, where phi is the Euler totient function.

The programs for A180642, there is no canonical definition to state claims against.
-/

/-! ## A180642.P3581255017552360939

`eq[3, A329378(A000010(C(2, n²)+n))]`
-/

namespace A180642.P3581255017552360939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329378 (A000010 (Nat.choose 2 (n ^ 2) + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180642.P3581255017552360939

/-! ## A180642.P1248494652818667729

`eq[2, A319694(A000010(n+1))]+1`
-/

namespace A180642.P1248494652818667729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319694 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A180642.P1248494652818667729

/-! ## A180642.P5490733160149730161

`eq[2, A070821(A109606(n+1)+1)]+1`
-/

namespace A180642.P5490733160149730161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070821 (A109606 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A180642.P5490733160149730161

/-! ## A180642.P7699347715430096287

`eq[2, A299480(A225530(n))]`
-/

namespace A180642.P7699347715430096287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299480 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180642.P7699347715430096287

/-!
# A180643: Numbers n such that 1+phi(n)^2 is prime. Phi is the Euler totient function.

The programs for A180643, the canonical program `A180643.P1113260082687038800` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180643 has offset 1).

The definition of A180643 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2006 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180643.P1113260082687038800

`eq[1, A053000(A000010(n+1))]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A180643

/-- `eq[1, A053000(A000010(n+1))]+1` -/
def P1113260082687038800.Spec : Prop :=
  ∀ n, (P1113260082687038800.a n : ℤ) = A180643 (n + 1)

theorem P1113260082687038800.correct : P1113260082687038800.Spec := by
  intro n
  simp only [A180643, Nat.add_sub_cancel]

end A180643

/-! ## A180643.P4595801856643921880

`record[A000027(n+1)/A053000(A000010(n+1))]`
-/

namespace A180643.P4595801856643921880
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A053000 (A000010 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180643.P4595801856643921880

namespace A180643

/-- `record[A000027(n+1)/A053000(A000010(n+1))]` -/
def P4595801856643921880.Spec : Prop :=
  ∀ n, P4595801856643921880.a n = (A180643 (n + 1) : ℚ)

end A180643

/-! ## A180643.P6875764026998744341

`record[(A005408(n)-n)/A053000(A000010(n+1))]`
-/

namespace A180643.P6875764026998744341
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n - (n : ℤ) : ℚ) / (A053000 (A000010 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180643.P6875764026998744341

namespace A180643

/-- `record[(A005408(n)-n)/A053000(A000010(n+1))]` -/
def P6875764026998744341.Spec : Prop :=
  ∀ n, P6875764026998744341.a n = (A180643 (n + 1) : ℚ)

end A180643

/-! ## A180643.P3204905396512630354

`record[gcd(n+1, A249122(A067541(2*n+1)))]`
-/

namespace A180643.P3204905396512630354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A249122 (A067541 (2 * n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180643.P3204905396512630354

namespace A180643

/-- `record[gcd(n+1, A249122(A067541(2*n+1)))]` -/
def P3204905396512630354.Spec : Prop :=
  ∀ n, (P3204905396512630354.a n : ℤ) = A180643 (n + 1)

end A180643

/-! ## A180643.P4431328188725301879

`record[A008619(2*n)/A053000(A000010(n+1))]`
-/

namespace A180643.P4431328188725301879
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A053000 (A000010 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180643.P4431328188725301879

namespace A180643

/-- `record[A008619(2*n)/A053000(A000010(n+1))]` -/
def P4431328188725301879.Spec : Prop :=
  ∀ n, P4431328188725301879.a n = (A180643 (n + 1) : ℚ)

end A180643

/-! ## A180643.P6173437286973735701

`record[A213634(2*n+1)/A053000(A000010(n+1))]`
-/

namespace A180643.P6173437286973735701
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213634 (2 * n + 1) : ℚ) / (A053000 (A000010 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180643.P6173437286973735701

namespace A180643

/-- `record[A213634(2*n+1)/A053000(A000010(n+1))]` -/
def P6173437286973735701.Spec : Prop :=
  ∀ n, P6173437286973735701.a n = (A180643 (n + 1) : ℚ)

end A180643

/-! ## A180643.P18088271635383352449

`eq[1, A001221(A127473(n+1)+1)]+1`
-/

namespace A180643.P18088271635383352449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A127473 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A180643.P18088271635383352449

namespace A180643

/-- `eq[1, A001221(A127473(n+1)+1)]+1` -/
def P18088271635383352449.Spec : Prop :=
  ∀ n, (P18088271635383352449.a n : ℤ) = A180643 (n + 1)

end A180643

/-! ## A180643.P5970287875891940148

`eq[1, A001222(A000010(n+1)²+1)]+1`
-/

namespace A180643.P5970287875891940148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000010 (n + 1) ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A180643.P5970287875891940148

namespace A180643

/-- `eq[1, A001222(A000010(n+1)²+1)]+1` -/
def P5970287875891940148.Spec : Prop :=
  ∀ n, (P5970287875891940148.a n : ℤ) = A180643 (n + 1)

end A180643

/-! ## A180643.P12944694529954937444

`eq[2, A000005(A000010(n+1)²+1)]+1`
-/

namespace A180643.P12944694529954937444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (n + 1) ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A180643.P12944694529954937444

namespace A180643

/-- `eq[2, A000005(A000010(n+1)²+1)]+1` -/
def P12944694529954937444.Spec : Prop :=
  ∀ n, (P12944694529954937444.a n : ℤ) = A180643 (n + 1)

end A180643

/-! ## A180643.P9079856921265135136

`eq[1, A001222((A039649(n+1)-1)²+1)]+1`
-/

namespace A180643.P9079856921265135136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((A039649 (n + 1) - 1) ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A180643.P9079856921265135136

namespace A180643

/-- `eq[1, A001222((A039649(n+1)-1)²+1)]+1` -/
def P9079856921265135136.Spec : Prop :=
  ∀ n, (P9079856921265135136.a n : ℤ) = A180643 (n + 1)

end A180643

/-!
# A180644: Numbers k such that 3+phi(k)^2 is a prime.

The programs for A180644, there is no canonical definition to state claims against.
-/

/-! ## A180644.P296724774810698751

`eq[1, A001222(A000010(n+1)²+3)]+1`
-/

namespace A180644.P296724774810698751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000010 (n + 1) ^ 2 + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A180644.P296724774810698751

/-! ## A180644.P5983835710412541240

`eq[2, A000005(A000010(n+1)²+3)]+1`
-/

namespace A180644.P5983835710412541240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (n + 1) ^ 2 + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A180644.P5983835710412541240

/-! ## A180644.P12611270216576013323

`lt[2, A014963(A000010(n+1)²+3)]+1`
-/

namespace A180644.P12611270216576013323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000010 (n + 1) ^ 2 + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A180644.P12611270216576013323

/-!
# A180645: Numbers n such that 5+phi(n)^2 is prime. Phi(n) is Euler's totient.

The programs for A180645, there is no canonical definition to state claims against.
-/

/-! ## A180645.P11909076448707243037

`eq[5, A300817(A225530(n))]`
-/

namespace A180645.P11909076448707243037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180645.P11909076448707243037

/-! ## A180645.P9712402682646385452

`eq[1, A001222(A000010(n+1)²+5)]+1`
-/

namespace A180645.P9712402682646385452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000010 (n + 1) ^ 2 + 5).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A180645.P9712402682646385452

/-! ## A180645.P16970638457560288334

`lt[A336853(A127473(n+1)+5), n]+1`
-/

namespace A180645.P16970638457560288334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (A127473 (n + 1) + 5).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A180645.P16970638457560288334

/-! ## A180645.P6253470912541209359

`∩[A051913(n+1), A055570(n)]`
-/

namespace A180645.P6253470912541209359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180645.P6253470912541209359

/-! ## A180645.P11493268724965655131

`∩[A066498(n+1), A055570(n)]`
-/

namespace A180645.P11493268724965655131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180645.P11493268724965655131

/-!
# A180646: Numbers k such that 3 + phi(k)^3 is prime, where phi is Euler's totient function.

The programs for A180646, there is no canonical definition to state claims against.
-/

/-! ## A180646.P16228398455148568561

`eq[0, A301924((n+1)*∏{p}[n+1, #-1/#]/∏{p}[n+1, #+1])]+1`
-/

namespace A180646.P16228398455148568561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301924 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f3 n), ((p : ℚ) - 1 / (p : ℚ))) / ((∏ p ∈ Nat.primeFactors (f4 n), (p + 1) : ℕ) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A180646.P16228398455148568561

/-! ## A180646.P18254650611648709540

`lt[A182406(Δ[A002088(n)]), 1]+1`
-/

namespace A180646.P18254650611648709540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182406 (f2 (n + 1) - f2 n).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A180646.P18254650611648709540

/-! ## A180646.P12405983327791910349

`eq[1, A304330(A000010(n+1))]+1`
-/

namespace A180646.P12405983327791910349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304330 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A180646.P12405983327791910349

/-! ## A180646.P1256374232518934576

`eq[2, A249027(A039649(n+1))]+1`
-/

namespace A180646.P1256374232518934576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249027 (A039649 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A180646.P1256374232518934576

/-! ## A180646.P5511207502201028051

`A198466(A000628(n))+n`
-/

namespace A180646.P5511207502201028051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198466 (A000628 n).toNat + (n : ℤ)

end

end A180646.P5511207502201028051

/-!
# A180647: Numbers n such that 5 + phi(n)^3 is prime. Phi is Euler's totient function.

The programs for A180647, there is no canonical definition to state claims against.
-/

/-! ## A180647.P10443013675173733185

`lt[A319350((A039649(n+1)-1)^3+5), 4]+1`
-/

namespace A180647.P10443013675173733185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319350 ((A039649 (n + 1) - 1) ^ 3 + 5).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A180647.P10443013675173733185

/-! ## A180647.P11960523146349937909

`∪[A332511(n+1), A332512(n+1)]%A281610(n+1)`
-/

namespace A180647.P11960523146349937909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332512 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A281610 (n + 1))

end

end A180647.P11960523146349937909

/-!
# A180648: Numbers k such that 1 + phi(k)^4 is a prime. Phi is Euler's totient function.

The programs for A180648, the canonical program `A180648.P10189235092180966563` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180648 has offset 1).

The definition of A180648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1820 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180648.P10189235092180966563

`eq[1, A193929(A000010(n+1))]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A180648

/-- `eq[1, A193929(A000010(n+1))]+1` -/
def P10189235092180966563.Spec : Prop :=
  ∀ n, (P10189235092180966563.a n : ℤ) = A180648 (n + 1)

theorem P10189235092180966563.correct : P10189235092180966563.Spec := by
  intro n
  simp only [A180648, Nat.add_sub_cancel]

end A180648

/-! ## A180648.P3906881248144901330

`record[A000027(n+1)/A193929(A000010(n+1))]`
-/

namespace A180648.P3906881248144901330
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A193929 (A000010 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180648.P3906881248144901330

namespace A180648

/-- `record[A000027(n+1)/A193929(A000010(n+1))]` -/
def P3906881248144901330.Spec : Prop :=
  ∀ n, P3906881248144901330.a n = (A180648 (n + 1) : ℚ)

end A180648

/-! ## A180648.P14399767539839462973

`record[(A005408(n)-n)/A193929(A000010(n+1))]`
-/

namespace A180648.P14399767539839462973
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n - (n : ℤ) : ℚ) / (A193929 (A000010 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180648.P14399767539839462973

namespace A180648

/-- `record[(A005408(n)-n)/A193929(A000010(n+1))]` -/
def P14399767539839462973.Spec : Prop :=
  ∀ n, P14399767539839462973.a n = (A180648 (n + 1) : ℚ)

end A180648

/-! ## A180648.P5623686089786245023

`record[A158388(n+1)+n/A193929(A000010(n+1))]`
-/

namespace A180648.P5623686089786245023
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158388 (n + 1) : ℚ) + (n : ℚ) / (A193929 (A000010 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180648.P5623686089786245023

namespace A180648

/-- `record[A158388(n+1)+n/A193929(A000010(n+1))]` -/
def P5623686089786245023.Spec : Prop :=
  ∀ n, P5623686089786245023.a n = (A180648 (n + 1) : ℚ)

end A180648

/-! ## A180648.P17695072073529611493

`record[A008619(2*n)/A193929(A000010(n+1))]`
-/

namespace A180648.P17695072073529611493
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A193929 (A000010 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180648.P17695072073529611493

namespace A180648

/-- `record[A008619(2*n)/A193929(A000010(n+1))]` -/
def P17695072073529611493.Spec : Prop :=
  ∀ n, P17695072073529611493.a n = (A180648 (n + 1) : ℚ)

end A180648

/-! ## A180648.P12664102786057105668

`eq[A057427(n), A193929(A225530(n))]`
-/

namespace A180648.P12664102786057105668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180648.P12664102786057105668

namespace A180648

/-- `eq[A057427(n), A193929(A225530(n))]` -/
def P12664102786057105668.Spec : Prop :=
  ∀ n, (P12664102786057105668.a n : ℤ) = A180648 (n + 1)

end A180648

/-!
# A180649: The difference A046682 - A180652.

The programs for A180649, there is no canonical definition to state claims against.
-/

/-! ## A180649.P14500525043332975814

`A046682(n)-A180652(n)`
-/

namespace A180649.P14500525043332975814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046682 n - A180652 n

end

end A180649.P14500525043332975814

/-! ## A180649.P6674157234760331892

`A046682(char[1]+n)%A180652(n)`
-/

namespace A180649.P6674157234760331892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046682 ((if ∃ j, f1 j = n then 1 else 0) + n)) (A180652 n)

end

end A180649.P6674157234760331892

/-! ## A180649.P12549731372609080089

`A000041(n)-(A180652(n)+A000701(n))`
-/

namespace A180649.P12549731372609080089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A180652 n + A000701 n)

end

end A180649.P12549731372609080089

/-! ## A180649.P9610233042112962901

`A000700(n)+A000701(n)-A180652(n)`
-/

namespace A180649.P9610233042112962901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n + (A000701 n - A180652 n)

end

end A180649.P9610233042112962901

/-! ## A180649.P1036656541075291727

`(A046682(n)%A180652(n))%A000032(n)`
-/

namespace A180649.P1036656541075291727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A046682 n) (A180652 n)) (A000032 n)

end

end A180649.P1036656541075291727

/-! ## A180649.P3392168907828672731

`A000041(n)-A330644(n)/2-A180652(n)`
-/

namespace A180649.P3392168907828672731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n : ℚ) - (A330644 n : ℚ) / 2 - (A180652 n : ℚ)

end

end A180649.P3392168907828672731

/-!
# A180650: Irregular triangle in which row n consists of the smaller of pairs of amicable numbers of the form 2^n pq, with p and q odd primes.

The programs for A180650, there is no canonical definition to state claims against.
-/

/-! ## A180650.P18035287196761609027

`∑{d}[A180651(n+2), #]-A180651(n+2)`
-/

namespace A180650.P18035287196761609027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180651 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - A180651 (n + 2)

end

end A180650.P18035287196761609027

/-!
# A180651: Irregular triangle in which row n consists of the larger of pairs of amicable numbers of the form 2^n pq, with p and q odd primes.

The programs for A180651, there is no canonical definition to state claims against.
-/

/-! ## A180651.P11294236749043351697

`∑{d}[A180650(n+2), #]-A180650(n+2)`
-/

namespace A180651.P11294236749043351697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180650 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - A180650 (n + 2)

end

end A180651.P11294236749043351697

/-! ## A180651.P2504956140365335968

`A183013(eq[8, A209308(n)])`
-/

namespace A180651.P2504956140365335968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183013 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180651.P2504956140365335968

/-!
# A180652: Number of different hook length multisets of partitions of n.

The programs for A180652, there is no canonical definition to state claims against.
-/

/-! ## A180652.P10605555814556275900

`A046682(n)-A180649(n)`
-/

namespace A180652.P10605555814556275900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046682 n - A180649 n

end

end A180652.P10605555814556275900

/-! ## A180652.P12197404686958819839

`A000041(n)-(A180649(n)+A000701(n))`
-/

namespace A180652.P12197404686958819839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A180649 n + A000701 n)

end

end A180652.P12197404686958819839

/-! ## A180652.P16716403791733488269

`A000700(n)+A000701(n)-A180649(n)`
-/

namespace A180652.P16716403791733488269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n + (A000701 n - A180649 n)

end

end A180652.P16716403791733488269

/-! ## A180652.P5673547819246175691

`A000701(n)+abs(A081362(n))-A180649(n)`
-/

namespace A180652.P5673547819246175691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 n + (|A081362 n| - A180649 n)

end

end A180652.P5673547819246175691

/-! ## A180652.P2579439932129492788

`sqrt(A001255(n))-(A180649(n)+A000701(n))`
-/

namespace A180652.P2579439932129492788
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A180649 n + A000701 n : ℝ)

end

end A180652.P2579439932129492788

/-! ## A180652.P10887792688854433413

`∑[A002865(n)]-(A180649(n)+A000701(n))`
-/

namespace A180652.P10887792688854433413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A180649 n + A000701 n)

end

end A180652.P10887792688854433413

/-! ## A180652.P13735568227418136634

`A035363(2*n)-A000701(n)-A180649(n)`
-/

namespace A180652.P13735568227418136634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A000701 n - A180649 n

end

end A180652.P13735568227418136634

/-! ## A180652.P772909466949291622

`A119620(2*n)-A000701(n)-A180649(n)`
-/

namespace A180652.P772909466949291622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - A000701 n - A180649 n

end

end A180652.P772909466949291622

/-! ## A180652.P4396597780446848322

`A000041(n)-A330644(n)/2-A180649(n)`
-/

namespace A180652.P4396597780446848322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n : ℚ) - (A330644 n : ℚ) / 2 - (A180649 n : ℚ)

end

end A180652.P4396597780446848322

/-! ## A180652.P18382083146070210076

`(A000041(n)+abs(A081362(n)))/2-A180649(n)`
-/

namespace A180652.P18382083146070210076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n + |A081362 n| : ℚ) / 2 - (A180649 n : ℚ)

end

end A180652.P18382083146070210076

/-!
# A180653: 'DP(n,k)' triangle read by rows. DP(n,k) is the number of k-double-palindromes of n.

The programs for A180653, there is no canonical definition to state claims against.
-/

/-! ## A180653.P2743435982120265691

`A180171(n+1)-A179519(n+1)`
-/

namespace A180653.P2743435982120265691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180171 (n + 1) - A179519 (n + 1)

end

end A180653.P2743435982120265691

/-! ## A180653.P8066182769041301901

`A180171(n+1)+A001489(A179519(n+1)+1)+1`
-/

namespace A180653.P8066182769041301901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180171 (n + 1) + A001489 (A179519 (n + 1) + 1).toNat + 1

end

end A180653.P8066182769041301901

/-! ## A180653.P5222478924902863214

`A180171(n+1)+A181111(n+1)-A180279(n+1)`
-/

namespace A180653.P5222478924902863214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180171 (n + 1) + (A181111 (n + 1) - A180279 (n + 1))

end

end A180653.P5222478924902863214

/-! ## A180653.P10336454052751778315

`A180171(n+1)-A171712(n+1)*A179317(n+1)`
-/

namespace A180653.P10336454052751778315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180171 (n + 1) - A171712 (n + 1) * A179317 (n + 1)

end

end A180653.P10336454052751778315

/-! ## A180653.P16568922491669471914

`A053828(A007318(n)^A320955(n))-A179519(n+1)`
-/

namespace A180653.P16568922491669471914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (SequenceMachineLib.roundAway ((A007318 n : ℚ) ^ (A320955 n : ℤ))).toNat - A179519 (n + 1)

end

end A180653.P16568922491669471914

/-!
# A180654: E.g.f.: A(x) = Sum_{n>=0} log( Sum_{k=0..n} C(n,k)^2*x^k )^n*x^n/(n!*n^n).

The programs for A180654, there is no canonical definition to state claims against.
-/

/-! ## A180654.P13504226523375055946

`A377091(A156216(n))`
-/

namespace A180654.P13504226523375055946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (A156216 n).toNat

end

end A180654.P13504226523375055946

/-!
# A180655: Semiprimes (products of two distinct primes) of the form, next perfect square minus semiprime equals perfect square.

The programs for A180655, there is no canonical definition to state claims against.
-/

/-! ## A180655.P2561031033042457267

`filter[A218485(n+1), A064911(#)]`
-/

namespace A180655.P2561031033042457267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A180655.P2561031033042457267

/-! ## A180655.P15541470213235214707

`filter[A218485(n+1), A280710(#)]`
-/

namespace A180655.P15541470213235214707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A180655.P15541470213235214707

/-! ## A180655.P8846525061928309229

`filter[A218485(n+1), A353476(#)]`
-/

namespace A180655.P8846525061928309229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353476 (f1 j).toNat = 1) n)

end

end A180655.P8846525061928309229

/-! ## A180655.P3974202553062555702

`filter[A218485(n+1), A353480(#)]`
-/

namespace A180655.P3974202553062555702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A180655.P3974202553062555702

/-! ## A180655.P2245562720256868104

`filter[A218485(n+1), A353481(#)]`
-/

namespace A180655.P2245562720256868104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A180655.P2245562720256868104

/-!
# A180656: Squarefree semiprimes k such that (m+1)^2-k is also a square, where m = ceiling(sqrt(k)).

The programs for A180656, there is no canonical definition to state claims against.
-/

/-! ## A180656.P12013570728909837218

`eq[A130819(n+1)+2, A003415(n)]`
-/

namespace A180656.P12013570728909837218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130819 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180656.P12013570728909837218

/-! ## A180656.P17261034733293316213

`eq[A130819(n+1)+2, A369971(n)]`
-/

namespace A180656.P17261034733293316213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130819 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369971 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180656.P17261034733293316213

/-! ## A180656.P10834028360303819484

`eq[A161205(n+1)+4, A003415(n)]`
-/

namespace A180656.P10834028360303819484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (n + 1) + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180656.P10834028360303819484

/-! ## A180656.P12495984343872425825

`eq[A077425(n+3), A109386(n+1)]+1`
-/

namespace A180656.P12495984343872425825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077425 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109386 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A180656.P12495984343872425825

/-! ## A180656.P13120726942355799639

`eq[A003415(n), A103517(A003059(n+1))]`
-/

namespace A180656.P13120726942355799639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A003059 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180656.P13120726942355799639

/-!
# A180657: Numerator of the fraction tan( Sum_{k=1..n} arctan(k) ).

The programs for A180657, there is no canonical definition to state claims against.
-/

/-! ## A180657.P4800419578777681497

`A105751(n+1)/A105750(n+1)*A220447(n+1)`
-/

namespace A180657.P4800419578777681497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105751 (n + 1) : ℚ) / (A105750 (n + 1) : ℚ) * (A220447 (n + 1) : ℚ)

end

end A180657.P4800419578777681497

/-!
# A180662: The Golden Triangle: T(n,k) = A001654(k) for n>=0 and 0<=k<=n.

The programs for A180662, the canonical program `A180662.P5005019183728633200` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180662 has offset 0).

The definition of A180662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180662.P5005019183728633200

`A001654(A002262(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A180662

/-- `A001654(A002262(n))` -/
def P5005019183728633200.Spec : Prop :=
  ∀ n, P5005019183728633200.a n = A180662 n

theorem P5005019183728633200.correct : P5005019183728633200.Spec := by
  intro n
  simp only [A180662]

end A180662

/-! ## A180662.P18224718033491503757

`A180663(A112367(n))`
-/

namespace A180662.P18224718033491503757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180663 (A112367 n).toNat

end

end A180662.P18224718033491503757

namespace A180662

/-- `A180663(A112367(n))` -/
def P18224718033491503757.Spec : Prop :=
  ∀ n, P18224718033491503757.a n = A180662 n

end A180662

/-! ## A180662.P566715731662975961

`A001654(A002260(n+1)-1)`
-/

namespace A180662.P566715731662975961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (A002260 (n + 1) - 1).toNat

end

end A180662.P566715731662975961

namespace A180662

/-- `A001654(A002260(n+1)-1)` -/
def P566715731662975961.Spec : Prop :=
  ∀ n, P566715731662975961.a n = A180662 n

theorem P566715731662975961.correct : P566715731662975961.Spec := by
  intro n
  simp only [A180662, Nat.add_sub_cancel, A180662.P566715731662975961.a, A180662.P5005019183728633200.a, A001654, A001654.P2587154079132953885.a, A002260, A002260.P769748059679640451.a, A002262, A002262.P12129691700837801527.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A180662

/-! ## A180662.P4693614273353453628

`A104763(n+1)*A141169(n)`
-/

namespace A180662.P4693614273353453628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) * A141169 n

end

end A180662.P4693614273353453628

namespace A180662

/-- `A104763(n+1)*A141169(n)` -/
def P4693614273353453628.Spec : Prop :=
  ∀ n, P4693614273353453628.a n = A180662 n

end A180662

/-! ## A180662.P6102672020507958386

`(A193588(n)-A141169(n))*A141169(n)`
-/

namespace A180662.P6102672020507958386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A193588 n - A141169 n) * A141169 n

end

end A180662.P6102672020507958386

namespace A180662

/-- `(A193588(n)-A141169(n))*A141169(n)` -/
def P6102672020507958386.Spec : Prop :=
  ∀ n, P6102672020507958386.a n = A180662 n

end A180662

/-! ## A180662.P15391706950306483151

`(A193588(n)-A104763(n+1))*A104763(n+1)`
-/

namespace A180662.P15391706950306483151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A193588 n - A104763 (n + 1)) * A104763 (n + 1)

end

end A180662.P15391706950306483151

namespace A180662

/-- `(A193588(n)-A104763(n+1))*A104763(n+1)` -/
def P15391706950306483151.Spec : Prop :=
  ∀ n, P15391706950306483151.a n = A180662 n

end A180662

/-! ## A180662.P17507342293723186931

`A000045(A002260(n+1))*A000045(A002262(n))`
-/

namespace A180662.P17507342293723186931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002260 (n + 1)).toNat * A000045 (A002262 n).toNat

end

end A180662.P17507342293723186931

namespace A180662

/-- `A000045(A002260(n+1))*A000045(A002262(n))` -/
def P17507342293723186931.Spec : Prop :=
  ∀ n, P17507342293723186931.a n = A180662 n

end A180662

/-! ## A180662.P10586552325514525035

`A180663(A056943(n+1))`
-/

namespace A180662.P10586552325514525035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180663 (A056943 (n + 1)).toNat

end

end A180662.P10586552325514525035

namespace A180662

/-- `A180663(A056943(n+1))` -/
def P10586552325514525035.Spec : Prop :=
  ∀ n, P10586552325514525035.a n = A180662 n

end A180662

/-! ## A180662.P9541749203763889552

`A180663(A061579(n))`
-/

namespace A180662.P9541749203763889552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180663 (A061579 n).toNat

end

end A180662.P9541749203763889552

namespace A180662

/-- `A180663(A061579(n))` -/
def P9541749203763889552.Spec : Prop :=
  ∀ n, P9541749203763889552.a n = A180662 n

end A180662

/-! ## A180662.P18209820389947272896

`A141169(comp[∑[n]])*A141169(n)`
-/

namespace A180662.P18209820389947272896
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A141169 n

end

end A180662.P18209820389947272896

namespace A180662

/-- `A141169(comp[∑[n]])*A141169(n)` -/
def P18209820389947272896.Spec : Prop :=
  ∀ n, P18209820389947272896.a n = A180662 n

end A180662

/-! ## A180662.P16636474062393763390

`A180663(A286147(n))`
-/

namespace A180662.P16636474062393763390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180663 (A286147 n).toNat

end

end A180662.P16636474062393763390

namespace A180662

/-- `A180663(A286147(n))` -/
def P16636474062393763390.Spec : Prop :=
  ∀ n, P16636474062393763390.a n = A180662 n

end A180662

/-! ## A180662.P14804936739968397667

`∑{d}[A059268(n), A000045(log2(#))²]`
-/

namespace A180662.P14804936739968397667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000045 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat ^ 2

end

end A180662.P14804936739968397667

namespace A180662

/-- `∑{d}[A059268(n), A000045(log2(#))²]` -/
def P14804936739968397667.Spec : Prop :=
  ∀ n, P14804936739968397667.a n = A180662 n

end A180662

/-! ## A180662.P2053653769212802116

`A001654(A019586(A035513(n+1)))`
-/

namespace A180662.P2053653769212802116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (A019586 (A035513 (n + 1)).toNat).toNat

end

end A180662.P2053653769212802116

namespace A180662

/-- `A001654(A019586(A035513(n+1)))` -/
def P2053653769212802116.Spec : Prop :=
  ∀ n, P2053653769212802116.a n = A180662 n

end A180662

/-! ## A180662.P16696447799119770767

`∑{d}[A059268(n), A106345(#)²]`
-/

namespace A180662.P16696447799119770767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A106345 d ^ 2

end

end A180662.P16696447799119770767

namespace A180662

/-- `∑{d}[A059268(n), A106345(#)²]` -/
def P16696447799119770767.Spec : Prop :=
  ∀ n, P16696447799119770767.a n = A180662 n

end A180662

/-!
# A180663: Mirror image of the Golden Triangle: T(n,k) = A001654(n-k) for n>=0 and 0<=k<=n.

The programs for A180663, the canonical program `A180663.P4613963120806556599` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180663 has offset 0).

The definition of A180663 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180663.P4613963120806556599

`round(A158753(n+2)/5)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A180663

/-- `round(A158753(n+2)/5)` -/
def P4613963120806556599.Spec : Prop :=
  ∀ n, P4613963120806556599.a n = A180663 n

theorem P4613963120806556599.correct : P4613963120806556599.Spec := by
  intro n
  simp only [A180663]

end A180663

/-! ## A180663.P335755881514693976

`A001654(A025581(n))`
-/

namespace A180663.P335755881514693976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (A025581 n).toNat

end

end A180663.P335755881514693976

namespace A180663

/-- `A001654(A025581(n))` -/
def P335755881514693976.Spec : Prop :=
  ∀ n, P335755881514693976.a n = A180663 n

end A180663

/-! ## A180663.P12309183435916441180

`A001654(A004736(n+1)-1)`
-/

namespace A180663.P12309183435916441180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (A004736 (n + 1) - 1).toNat

end

end A180663.P12309183435916441180

namespace A180663

/-- `A001654(A004736(n+1)-1)` -/
def P12309183435916441180.Spec : Prop :=
  ∀ n, P12309183435916441180.a n = A180663 n

end A180663

/-! ## A180663.P15625387911029688160

`A001654(A003056(n)-A002262(n))`
-/

namespace A180663.P15625387911029688160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (A003056 n - A002262 n).toNat

end

end A180663.P15625387911029688160

namespace A180663

/-- `A001654(A003056(n)-A002262(n))` -/
def P15625387911029688160.Spec : Prop :=
  ∀ n, P15625387911029688160.a n = A180663 n

end A180663

/-! ## A180663.P13146651962711039321

`A001654(A000217(A002024(n+1))-(n+1))`
-/

namespace A180663.P13146651962711039321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (A000217 (A002024 (n + 1)).toNat - (n + 1 : ℤ)).toNat

end

end A180663.P13146651962711039321

namespace A180663

/-- `A001654(A000217(A002024(n+1))-(n+1))` -/
def P13146651962711039321.Spec : Prop :=
  ∀ n, P13146651962711039321.a n = A180663 n

end A180663

/-! ## A180663.P13914706105055995295

`A000045(A004736(n+1))*A000045(A025581(n))`
-/

namespace A180663.P13914706105055995295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004736 (n + 1)).toNat * A000045 (A025581 n).toNat

end

end A180663.P13914706105055995295

namespace A180663

/-- `A000045(A004736(n+1))*A000045(A025581(n))` -/
def P13914706105055995295.Spec : Prop :=
  ∀ n, P13914706105055995295.a n = A180663 n

end A180663

/-! ## A180663.P516794732152763444

`A180662(A061579(n))`
-/

namespace A180663.P516794732152763444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180662 (A061579 n).toNat

end

end A180663.P516794732152763444

namespace A180663

/-- `A180662(A061579(n))` -/
def P516794732152763444.Spec : Prop :=
  ∀ n, P516794732152763444.a n = A180663 n

end A180663

/-! ## A180663.P15643567356520195216

`A180662(A038722(n+1)-1)`
-/

namespace A180663.P15643567356520195216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180662 (A038722 (n + 1) - 1).toNat

end

end A180663.P15643567356520195216

namespace A180663

/-- `A180662(A038722(n+1)-1)` -/
def P15643567356520195216.Spec : Prop :=
  ∀ n, P15643567356520195216.a n = A180663 n

end A180663

/-! ## A180663.P8847653070520212436

`A180662(A038722(n+2))`
-/

namespace A180663.P8847653070520212436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180662 (A038722 (n + 2)).toNat

end

end A180663.P8847653070520212436

namespace A180663

/-- `A180662(A038722(n+2))` -/
def P8847653070520212436.Spec : Prop :=
  ∀ n, P8847653070520212436.a n = A180663 n

end A180663

/-! ## A180663.P1748358107529029578

`(A104762(A014132(n+1))-A104762(n+1))*A104762(n+1)`
-/

namespace A180663.P1748358107529029578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A104762 (A014132 (n + 1)).toNat - A104762 (n + 1)) * A104762 (n + 1)

end

end A180663.P1748358107529029578

namespace A180663

/-- `(A104762(A014132(n+1))-A104762(n+1))*A104762(n+1)` -/
def P1748358107529029578.Spec : Prop :=
  ∀ n, P1748358107529029578.a n = A180663 n

end A180663

/-! ## A180663.P12261537029546191786

`A180662(A278818(n)-1)`
-/

namespace A180663.P12261537029546191786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180662 (A278818 n - 1).toNat

end

end A180663.P12261537029546191786

namespace A180663

/-- `A180662(A278818(n)-1)` -/
def P12261537029546191786.Spec : Prop :=
  ∀ n, P12261537029546191786.a n = A180663 n

end A180663

/-! ## A180663.P17200415372651365540

`A180662(A278818(n+1))`
-/

namespace A180663.P17200415372651365540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180662 (A278818 (n + 1)).toNat

end

end A180663.P17200415372651365540

namespace A180663

/-- `A180662(A278818(n+1))` -/
def P17200415372651365540.Spec : Prop :=
  ∀ n, P17200415372651365540.a n = A180663 n

end A180663

/-!
# A180664: Golden Triangle sums: a(n) = a(n-1) + A001654(n+1) with a(0)=0.

The programs for A180664, the canonical program `A180664.P1517700304713585636` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180664 has offset 0).

The definition of A180664 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+A001654(n+1)` (program `A180664.P1517700304713585636`, by `A180664.P1517700304713585636.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A180664.P1517700304713585636

`a(n-1)+A001654(n+1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A180664

/-- `a(n-1)+A001654(n+1)` -/
def P1517700304713585636.Spec : Prop :=
  ∀ n, P1517700304713585636.a n = A180664 n

theorem P1517700304713585636.correct : P1517700304713585636.Spec := by
  intro n
  simp only [A180664]

end A180664

/-! ## A180664.P14079502435604560956

`ceil(ϕ²*a(n-1))+2` with `a(0)=0`
-/

namespace A180664.P14079502435604560956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌉ + 2

end

end A180664.P14079502435604560956

namespace A180664

/-- `ceil(ϕ²*a(n-1))+2` -/
def P14079502435604560956.Spec : Prop :=
  ∀ n, P14079502435604560956.a n = A180664 n

end A180664

/-! ## A180664.P7069591620709644353

`ogf((2x+2x^2-x^3)/(1-3x+3x^3-x^4))`
-/

namespace A180664.P7069591620709644353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 2, -1] [1, -3, 0, 3, -1] n

end

end A180664.P7069591620709644353

namespace A180664

/-- `ogf((2x+2x^2-x^3)/(1-3x+3x^3-x^4))` -/
def P7069591620709644353.Spec : Prop :=
  ∀ n, P7069591620709644353.a n = A180664 n

end A180664

/-! ## A180664.P384508062100065912

`ceil(a(n-1)/(2-ϕ))+2` with `a(0)=0`
-/

namespace A180664.P384508062100065912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈(a (n - 1) : ℝ) / (2 - Real.goldenRatio)⌉ + 2

end

end A180664.P384508062100065912

namespace A180664

/-- `ceil(a(n-1)/(2-ϕ))+2` -/
def P384508062100065912.Spec : Prop :=
  ∀ n, P384508062100065912.a n = A180664 n

end A180664

/-! ## A180664.P13815090711557121853

`floor(ϕ²*a(n-1))+3` with `a(0)=0, a(1)=2`
-/

namespace A180664.P13815090711557121853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  ⌊Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌋ + 3

end

end A180664.P13815090711557121853

namespace A180664

/-- `floor(ϕ²*a(n-1))+3` -/
def P13815090711557121853.Spec : Prop :=
  ∀ n, P13815090711557121853.a n = A180664 n

end A180664

/-! ## A180664.P7662917045372921244

`gcd(2, n)+3*a(n-1)-a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A180664.P7662917045372921244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  (Nat.gcd 2 n : ℤ) + (3 * a (n - 1) - a (n - 2))

end

end A180664.P7662917045372921244

namespace A180664

/-- `gcd(2, n)+3*a(n-1)-a(n-2)` -/
def P7662917045372921244.Spec : Prop :=
  ∀ n, P7662917045372921244.a n = A180664 n

end A180664

/-! ## A180664.P1782386467829785457

`Δ[A080145(n)]-1`
-/

namespace A180664.P1782386467829785457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A180664.P1782386467829785457

namespace A180664

/-- `Δ[A080145(n)]-1` -/
def P1782386467829785457.Spec : Prop :=
  ∀ n, P1782386467829785457.a n = A180664 n

end A180664

/-! ## A180664.P17024969488694579851

`A064831(n+1)-1`
-/

namespace A180664.P17024969488694579851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064831 (n + 1) - 1

end

end A180664.P17024969488694579851

namespace A180664

/-- `A064831(n+1)-1` -/
def P17024969488694579851.Spec : Prop :=
  ∀ n, P17024969488694579851.a n = A180664 n

end A180664

/-! ## A180664.P502764075639578646

`A166516(n+2)-2`
-/

namespace A180664.P502764075639578646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166516 (n + 2) - 2

end

end A180664.P502764075639578646

namespace A180664

/-- `A166516(n+2)-2` -/
def P502764075639578646.Spec : Prop :=
  ∀ n, P502764075639578646.a n = A180664 n

end A180664

/-! ## A180664.P2490739690372916808

`A097083(Δ[n²])-1`
-/

namespace A180664.P2490739690372916808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097083 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A180664.P2490739690372916808

namespace A180664

/-- `A097083(Δ[n²])-1` -/
def P2490739690372916808.Spec : Prop :=
  ∀ n, P2490739690372916808.a n = A180664 n

end A180664

/-! ## A180664.P3025594155666744950

`∑[A001654(n+1)]-1`
-/

namespace A180664.P3025594155666744950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A180664.P3025594155666744950

namespace A180664

/-- `∑[A001654(n+1)]-1` -/
def P3025594155666744950.Spec : Prop :=
  ∀ n, P3025594155666744950.a n = A180664 n

end A180664

/-! ## A180664.P12129158787754354156

`∑[A070550(2*n)]-1`
-/

namespace A180664.P12129158787754354156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070550 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A180664.P12129158787754354156

namespace A180664

/-- `∑[A070550(2*n)]-1` -/
def P12129158787754354156.Spec : Prop :=
  ∀ n, P12129158787754354156.a n = A180664 n

end A180664

/-! ## A180664.P17950024437673083300

`Δ[∑[∑[A001654(n)]]-n]`
-/

namespace A180664.P17950024437673083300
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180664.P17950024437673083300

namespace A180664

/-- `Δ[∑[∑[A001654(n)]]-n]` -/
def P17950024437673083300.Spec : Prop :=
  ∀ n, P17950024437673083300.a n = A180664 n

end A180664

/-! ## A180664.P13403973151907064662

`A080239(2*(n+1))-1`
-/

namespace A180664.P13403973151907064662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080239 (2 * (n + 1)) - 1

end

end A180664.P13403973151907064662

namespace A180664

/-- `A080239(2*(n+1))-1` -/
def P13403973151907064662.Spec : Prop :=
  ∀ n, P13403973151907064662.a n = A180664 n

end A180664

/-! ## A180664.P10783726311837110547

`A005313(n+2)-(n+3)`
-/

namespace A180664.P10783726311837110547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005313 (n + 2) - (n + 3 : ℤ)

end

end A180664.P10783726311837110547

namespace A180664

/-- `A005313(n+2)-(n+3)` -/
def P10783726311837110547.Spec : Prop :=
  ∀ n, P10783726311837110547.a n = A180664 n

end A180664

/-! ## A180664.P10934791142124162904

`∑[A006498(2*n+1)]-1`
-/

namespace A180664.P10934791142124162904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A180664.P10934791142124162904

namespace A180664

/-- `∑[A006498(2*n+1)]-1` -/
def P10934791142124162904.Spec : Prop :=
  ∀ n, P10934791142124162904.a n = A180664 n

end A180664

/-! ## A180664.P17871723757138946898

`∑[A295688(2*n+1)]-1`
-/

namespace A180664.P17871723757138946898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295688 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A180664.P17871723757138946898

namespace A180664

/-- `∑[A295688(2*n+1)]-1` -/
def P17871723757138946898.Spec : Prop :=
  ∀ n, P17871723757138946898.a n = A180664 n

end A180664

/-! ## A180664.P8670390395775195278

`∑[∑[A000045(n+1)²]]-1`
-/

namespace A180664.P8670390395775195278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A180664.P8670390395775195278

namespace A180664

/-- `∑[∑[A000045(n+1)²]]-1` -/
def P8670390395775195278.Spec : Prop :=
  ∀ n, P8670390395775195278.a n = A180664 n

end A180664

/-! ## A180664.P8710027090594870849

`floor((A000045(n+3)/ϕ)²)-1`
-/

namespace A180664.P8710027090594870849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000045 (n + 3) : ℝ) / Real.goldenRatio) ^ 2⌋ - 1

end

end A180664.P8710027090594870849

namespace A180664

/-- `floor((A000045(n+3)/ϕ)²)-1` -/
def P8710027090594870849.Spec : Prop :=
  ∀ n, P8710027090594870849.a n = A180664 n

end A180664

/-! ## A180664.P17608025788219994517

`A000045(n+2)²-(n%2+1)`
-/

namespace A180664.P17608025788219994517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) ^ 2 - ((n % 2 + 1 : ℕ) : ℤ)

end

end A180664.P17608025788219994517

namespace A180664

/-- `A000045(n+2)²-(n%2+1)` -/
def P17608025788219994517.Spec : Prop :=
  ∀ n, P17608025788219994517.a n = A180664 n

end A180664

/-!
# A180665: Golden Triangle sums: a(n)=a(n-2)+A001654(n) with a(0)=0 and a(1)=1.

The programs for A180665, the canonical program `A180665.P3269746418656464574` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180665 has offset 0).

The definition of A180665 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+A001654(n)` (program `A180665.P3269746418656464574`, by `A180665.P3269746418656464574.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A180665.P3269746418656464574

`a(n-2)+A001654(n)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A180665

/-- `a(n-2)+A001654(n)` -/
def P3269746418656464574.Spec : Prop :=
  ∀ n, P3269746418656464574.a n = A180665 n

theorem P3269746418656464574.correct : P3269746418656464574.Spec := by
  intro n
  simp only [A180665]

end A180665

/-! ## A180665.P15925322677227450382

`ogf(x/(1-2x-3x^2+3x^3+2x^4-x^5))`
-/

namespace A180665.P15925322677227450382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, -3, 3, 2, -1] n

end

end A180665.P15925322677227450382

namespace A180665

/-- `ogf(x/(1-2x-3x^2+3x^3+2x^4-x^5))` -/
def P15925322677227450382.Spec : Prop :=
  ∀ n, P15925322677227450382.a n = A180665 n

end A180665

/-! ## A180665.P13181163224161906071

`∑[A115059(2*n)]`
-/

namespace A180665.P13181163224161906071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115059 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180665.P13181163224161906071

namespace A180665

/-- `∑[A115059(2*n)]` -/
def P13181163224161906071.Spec : Prop :=
  ∀ n, P13181163224161906071.a n = A180665 n

end A180665

/-! ## A180665.P12973166997921056502

`∑[∑[abs(A119283(n))]]`
-/

namespace A180665.P12973166997921056502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A119283 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180665.P12973166997921056502

namespace A180665

/-- `∑[∑[abs(A119283(n))]]` -/
def P12973166997921056502.Spec : Prop :=
  ∀ n, P12973166997921056502.a n = A180665 n

end A180665

/-! ## A180665.P13937739530101234598

`A192873(n)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A180665.P13937739530101234598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A192873 n - a (n - 3)

end

end A180665.P13937739530101234598

namespace A180665

/-- `A192873(n)-a(n-3)` -/
def P13937739530101234598.Spec : Prop :=
  ∀ n, P13937739530101234598.a n = A180665 n

end A180665

/-! ## A180665.P15790698317237527639

`A115059(n+n)+a(n-1)` with `a(0)=0`
-/

namespace A180665.P15790698317237527639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A115059 (n + n) + a (n - 1)

end

end A180665.P15790698317237527639

namespace A180665

/-- `A115059(n+n)+a(n-1)` -/
def P15790698317237527639.Spec : Prop :=
  ∀ n, P15790698317237527639.a n = A180665 n

end A180665

/-! ## A180665.P1255950442977718599

`∑[a(n-2)+A000045(n)²]` with `a(0)=0, a(1)=1`
-/

namespace A180665.P1255950442977718599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + A000045 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180665.P1255950442977718599

namespace A180665

/-- `∑[a(n-2)+A000045(n)²]` -/
def P1255950442977718599.Spec : Prop :=
  ∀ n, P1255950442977718599.a n = A180665 n

end A180665

/-! ## A180665.P6584379288414495036

`a(n-2)+A000045(n+1)*A000045(n)` with `a(0)=0, a(1)=1`
-/

namespace A180665.P6584379288414495036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + A000045 (n + 1) * A000045 n

end

end A180665.P6584379288414495036

namespace A180665

/-- `a(n-2)+A000045(n+1)*A000045(n)` -/
def P6584379288414495036.Spec : Prop :=
  ∀ n, P6584379288414495036.a n = A180665 n

end A180665

/-! ## A180665.P12972484412964028059

`A064831(n)-a(n-1)` with `a(0)=0`
-/

namespace A180665.P12972484412964028059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A064831 n - a (n - 1)

end

end A180665.P12972484412964028059

namespace A180665

/-- `A064831(n)-a(n-1)` -/
def P12972484412964028059.Spec : Prop :=
  ∀ n, P12972484412964028059.a n = A180665 n

end A180665

/-! ## A180665.P1592420780598781314

`floor((A000045(n+2)/ϕ)²-a(n-1))` with `a(0)=0`
-/

namespace A180665.P1592420780598781314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊((A000045 (n + 2) : ℝ) / Real.goldenRatio) ^ 2 - (a (n - 1) : ℝ)⌋

end

end A180665.P1592420780598781314

namespace A180665

/-- `floor((A000045(n+2)/ϕ)²-a(n-1))` -/
def P1592420780598781314.Spec : Prop :=
  ∀ n, P1592420780598781314.a n = A180665 n

end A180665

/-! ## A180665.P17529041285512127034

`∑[a(n-2)+round(A000032(2*n)/5)]` with `a(0)=0, a(1)=1`
-/

namespace A180665.P17529041285512127034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + SequenceMachineLib.roundAway ((A000032 (2 * n) : ℚ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180665.P17529041285512127034

namespace A180665

/-- `∑[a(n-2)+round(A000032(2*n)/5)]` -/
def P17529041285512127034.Spec : Prop :=
  ∀ n, P17529041285512127034.a n = A180665 n

end A180665

/-! ## A180665.P9358055255399770466

`∑[A000045(2*n)-a(n-1)]-a(n-1)` with `a(0)=0`
-/

namespace A180665.P9358055255399770466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000045 (2 * n) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A180665.P9358055255399770466

namespace A180665

/-- `∑[A000045(2*n)-a(n-1)]-a(n-1)` -/
def P9358055255399770466.Spec : Prop :=
  ∀ n, P9358055255399770466.a n = A180665 n

end A180665

/-!
# A180666: Golden Triangle sums: a(n)=a(n-4)+A001654(n) with a(0)=0, a(1)=1, a(2)=2 and a(3)=6.

The programs for A180666, the canonical program `A180666.P11651877787722463626` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180666 has offset 0).

The definition of A180666 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-4)+A001654(n)` (program `A180666.P11651877787722463626`, by `A180666.P11651877787722463626.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A180666.P11651877787722463626

`a(n-4)+A001654(n)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=6`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A180666

/-- `a(n-4)+A001654(n)` -/
def P11651877787722463626.Spec : Prop :=
  ∀ n, P11651877787722463626.a n = A180666 n

theorem P11651877787722463626.correct : P11651877787722463626.Spec := by
  intro n
  simp only [A180666]

end A180666

/-! ## A180666.P1303178301947672177

`A180665(n)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A180666.P1303178301947672177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A180665 n - a (n - 2)

end

end A180666.P1303178301947672177

namespace A180666

/-- `A180665(n)-a(n-2)` -/
def P1303178301947672177.Spec : Prop :=
  ∀ n, P1303178301947672177.a n = A180666 n

end A180666

/-! ## A180666.P9608020348445912531

`a(n-4)+A000045(n+1)*A000045(n)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=6`
-/

namespace A180666.P9608020348445912531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 6] fun n a =>
  a (n - 4) + A000045 (n + 1) * A000045 n

end

end A180666.P9608020348445912531

namespace A180666

/-- `a(n-4)+A000045(n+1)*A000045(n)` -/
def P9608020348445912531.Spec : Prop :=
  ∀ n, P9608020348445912531.a n = A180666 n

end A180666

/-! ## A180666.P10266688884565449263

`A002264(A000045(n+2)²)-a(n-1)` with `a(0)=0`
-/

namespace A180666.P10266688884565449263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002264 (A000045 (n + 2) ^ 2).toNat - a (n - 1)

end

end A180666.P10266688884565449263

namespace A180666

/-- `A002264(A000045(n+2)²)-a(n-1)` -/
def P10266688884565449263.Spec : Prop :=
  ∀ n, P10266688884565449263.a n = A180666 n

end A180666

/-! ## A180666.P7869638903066784112

`A004526(A274376(2*(n+1))-A339985(n))`
-/

namespace A180666.P7869638903066784112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A274376 (2 * (n + 1)) - A339985 n).toNat

end

end A180666.P7869638903066784112

namespace A180666

/-- `A004526(A274376(2*(n+1))-A339985(n))` -/
def P7869638903066784112.Spec : Prop :=
  ∀ n, P7869638903066784112.a n = A180666 n

end A180666

/-!
# A180667: The maximum number of points obtainable in a game of Entanglement on a board of radius n.

The programs for A180667, the canonical program `A180667.P8091854819582746065` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180667 has offset 1).

The definition of A180667 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180667.P8091854819582746065

`225/2*(n+1)^4+45*(n+1)^3-135*(n+1)²-51/2*(n+1)+44`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A180667

/-- `225/2*(n+1)^4+45*(n+1)^3-135*(n+1)²-51/2*(n+1)+44` -/
def P8091854819582746065.Spec : Prop :=
  ∀ n, P8091854819582746065.a n = (A180667 (n + 1) : ℚ)

end A180667

/-!
# A180668: a(n) = a(n-1)+a(n-2)+a(n-3)+4*n-8 with a(0)=0, a(1)=0 and a(2)=1.

The programs for A180668, the canonical program `A180668.P2499105793571571794` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180668 has offset 0).

The definition of A180668 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)+4*n-8` (program `A180668.P2499105793571571794`, by `A180668.P2499105793571571794.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A180668.P9572935792456085875

`2*a(n-1)-a(n-4)+4` with `a(0)=0, a(1)=0, a(2)=1, a(3)=5`
-/

namespace A180668.P9572935792456085875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 5] fun n a =>
  2 * a (n - 1) - a (n - 4) + 4

end

end A180668.P9572935792456085875

namespace A180668

/-- `2*a(n-1)-a(n-4)+4` -/
def P9572935792456085875.Spec : Prop :=
  ∀ n, P9572935792456085875.a n = A180668 n

end A180668

/-! ## A180668.P2499105793571571794

`a(n-1)+a(n-2)+a(n-3)+4*n-8` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A180668

/-- `a(n-1)+a(n-2)+a(n-3)+4*n-8` -/
def P2499105793571571794.Spec : Prop :=
  ∀ n, P2499105793571571794.a n = A180668 n

theorem P2499105793571571794.correct : P2499105793571571794.Spec := by
  intro n
  simp only [A180668]

end A180668

/-! ## A180668.P8223138406207309835

`a(n-1)+A001590(n+3)-2` with `a(0)=0`
-/

namespace A180668.P8223138406207309835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A001590 (n + 3) - 2

end

end A180668.P8223138406207309835

namespace A180668

/-- `a(n-1)+A001590(n+3)-2` -/
def P8223138406207309835.Spec : Prop :=
  ∀ n, P8223138406207309835.a n = A180668 n

end A180668

/-! ## A180668.P2891543741709726959

`4-a(n-4)+a(n-1)+a(n-1)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=5`
-/

namespace A180668.P2891543741709726959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 5] fun n a =>
  4 - a (n - 4) + (a (n - 1) + a (n - 1))

end

end A180668.P2891543741709726959

namespace A180668

/-- `4-a(n-4)+a(n-1)+a(n-1)` -/
def P2891543741709726959.Spec : Prop :=
  ∀ n, P2891543741709726959.a n = A180668 n

end A180668

/-! ## A180668.P12719984932987640619

`4-(a(n-4)-a(n-1)-a(n-1))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=5`
-/

namespace A180668.P12719984932987640619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 5] fun n a =>
  4 - (a (n - 4) - a (n - 1) - a (n - 1))

end

end A180668.P12719984932987640619

namespace A180668

/-- `4-(a(n-4)-a(n-1)-a(n-1))` -/
def P12719984932987640619.Spec : Prop :=
  ∀ n, P12719984932987640619.a n = A180668 n

end A180668

/-! ## A180668.P14039732941348824010

`∑[∑[A000213(n)]-2]+1`
-/

namespace A180668.P14039732941348824010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A180668.P14039732941348824010

namespace A180668

/-- `∑[∑[A000213(n)]-2]+1` -/
def P14039732941348824010.Spec : Prop :=
  ∀ n, P14039732941348824010.a n = A180668 n

end A180668

/-! ## A180668.P17925002015874865861

`A089068(n+2)-Δ[n²]`
-/

namespace A180668.P17925002015874865861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089068 (n + 2) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A180668.P17925002015874865861

namespace A180668

/-- `A089068(n+2)-Δ[n²]` -/
def P17925002015874865861.Spec : Prop :=
  ∀ n, P17925002015874865861.a n = A180668 n

end A180668

/-! ## A180668.P1260874864411413665

`A301657(n+2)-2*(n+2)`
-/

namespace A180668.P1260874864411413665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301657 (n + 2) - (2 * (n + 2) : ℤ)

end

end A180668.P1260874864411413665

namespace A180668

/-- `A301657(n+2)-2*(n+2)` -/
def P1260874864411413665.Spec : Prop :=
  ∀ n, P1260874864411413665.a n = A180668 n

end A180668

/-! ## A180668.P6414543670701180962

`A000073(n+4)-2*(n+1)`
-/

namespace A180668.P6414543670701180962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 4) - (2 * (n + 1) : ℤ)

end

end A180668.P6414543670701180962

namespace A180668

/-- `A000073(n+4)-2*(n+1)` -/
def P6414543670701180962.Spec : Prop :=
  ∀ n, P6414543670701180962.a n = A180668 n

end A180668

/-! ## A180668.P2261391989970014560

`∑[Δ[A308189(2*n+1)]-2]`
-/

namespace A180668.P2261391989970014560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308189 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180668.P2261391989970014560

namespace A180668

/-- `∑[Δ[A308189(2*n+1)]-2]` -/
def P2261391989970014560.Spec : Prop :=
  ∀ n, P2261391989970014560.a n = A180668 n

end A180668

/-! ## A180668.P4343796523898506067

`∑[abs(A078042(n))]-(2*n+1)`
-/

namespace A180668.P4343796523898506067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078042 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 * n + 1 : ℤ)

end

end A180668.P4343796523898506067

namespace A180668

/-- `∑[abs(A078042(n))]-(2*n+1)` -/
def P4343796523898506067.Spec : Prop :=
  ∀ n, P4343796523898506067.a n = A180668 n

end A180668

/-! ## A180668.P10062348697950410116

`∑[A001590(n+3)]-(2*n+1)`
-/

namespace A180668.P10062348697950410116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 * n + 1 : ℤ)

end

end A180668.P10062348697950410116

namespace A180668

/-- `∑[A001590(n+3)]-(2*n+1)` -/
def P10062348697950410116.Spec : Prop :=
  ∀ n, P10062348697950410116.a n = A180668 n

end A180668

/-! ## A180668.P5691406602211766208

`∑[∑[A000213(n)]]-A005408(n)`
-/

namespace A180668.P5691406602211766208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005408 n

end

end A180668.P5691406602211766208

namespace A180668

/-- `∑[∑[A000213(n)]]-A005408(n)` -/
def P5691406602211766208.Spec : Prop :=
  ∀ n, P5691406602211766208.a n = A180668 n

end A180668

/-! ## A180668.P10017046575926763470

`∑[2*A089068(n)]-A089068(n)`
-/

namespace A180668.P10017046575926763470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A089068 n

end

end A180668.P10017046575926763470

namespace A180668

/-- `∑[2*A089068(n)]-A089068(n)` -/
def P10017046575926763470.Spec : Prop :=
  ∀ n, P10017046575926763470.a n = A180668 n

end A180668

/-! ## A180668.P11164076416732025668

`Δ[∑[A000073(n+3)]+1-(n²+n)]`
-/

namespace A180668.P11164076416732025668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1 - (n ^ 2 + n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180668.P11164076416732025668

namespace A180668

/-- `Δ[∑[A000073(n+3)]+1-(n²+n)]` -/
def P11164076416732025668.Spec : Prop :=
  ∀ n, P11164076416732025668.a n = A180668 n

end A180668

/-! ## A180668.P5855540042269772899

`2*A000295(n)-A050231(n+1)`
-/

namespace A180668.P5855540042269772899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000295 n - A050231 (n + 1)

end

end A180668.P5855540042269772899

namespace A180668

/-- `2*A000295(n)-A050231(n+1)` -/
def P5855540042269772899.Spec : Prop :=
  ∀ n, P5855540042269772899.a n = A180668 n

end A180668

/-! ## A180668.P10477186498374687485

`∑[∑[A000213(n)%A000108(n)]]`
-/

namespace A180668.P10477186498374687485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000213 n) (A000108 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180668.P10477186498374687485

namespace A180668

/-- `∑[∑[A000213(n)%A000108(n)]]` -/
def P10477186498374687485.Spec : Prop :=
  ∀ n, P10477186498374687485.a n = A180668 n

end A180668

/-!
# A180669: a(n) = a(n-1)+a(n-2)+a(n-3)+4*n^2-16*n+18 with a(0)=0, a(1)=0 and a(2)=1.

The programs for A180669, the canonical program `A180669.P5255471292933667830` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180669 has offset 0).

The definition of A180669 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)+4*n²-16*n+18` (program `A180669.P5255471292933667830`, by `A180669.P5255471292933667830.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A180669.P6677603662126471079

`a(n-1)+a(n-2)+a(n-3)+4*(n-2)²+2` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A180669.P6677603662126471079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) + 4 * ((n : ℤ) - 2) ^ 2 + 2

end

end A180669.P6677603662126471079

namespace A180669

/-- `a(n-1)+a(n-2)+a(n-3)+4*(n-2)²+2` -/
def P6677603662126471079.Spec : Prop :=
  ∀ n, P6677603662126471079.a n = A180669 n

theorem P6677603662126471079.correct : P6677603662126471079.Spec := by
  intro n
  simp only [A180669, Nat.add_sub_cancel, A180669.P6677603662126471079.a, A180669.P5255471292933667830.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A180669

/-! ## A180669.P5255471292933667830

`a(n-1)+a(n-2)+a(n-3)+4*n²-16*n+18` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A180669

/-- `a(n-1)+a(n-2)+a(n-3)+4*n²-16*n+18` -/
def P5255471292933667830.Spec : Prop :=
  ∀ n, P5255471292933667830.a n = A180669 n

theorem P5255471292933667830.correct : P5255471292933667830.Spec := by
  intro n
  simp only [A180669]

end A180669

/-! ## A180669.P16392483860437291977

`a(n-1)+A001590(n+5)-2-4*n` with `a(0)=0`
-/

namespace A180669.P16392483860437291977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A001590 (n + 5) - 2 - (4 * n : ℤ)

end

end A180669.P16392483860437291977

namespace A180669

/-- `a(n-1)+A001590(n+5)-2-4*n` -/
def P16392483860437291977.Spec : Prop :=
  ∀ n, P16392483860437291977.a n = A180669 n

end A180669

/-! ## A180669.P6779201416243181887

`3*a(n-1)-2*a(n-2)-a(n-4)+a(n-5)+8` with `a(0)=0, a(1)=0, a(2)=1, a(3)=7, a(4)=26`
-/

namespace A180669.P6779201416243181887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 7, 26] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) - a (n - 4) + a (n - 5) + 8

end

end A180669.P6779201416243181887

namespace A180669

/-- `3*a(n-1)-2*a(n-2)-a(n-4)+a(n-5)+8` -/
def P6779201416243181887.Spec : Prop :=
  ∀ n, P6779201416243181887.a n = A180669 n

end A180669

/-! ## A180669.P7227852965216751782

`∑[A027053(n+2)]-(∑[4*n]+1)`
-/

namespace A180669.P7227852965216751782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027053 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ)

end

end A180669.P7227852965216751782

namespace A180669

/-- `∑[A027053(n+2)]-(∑[4*n]+1)` -/
def P7227852965216751782.Spec : Prop :=
  ∀ n, P7227852965216751782.a n = A180669 n

end A180669

/-! ## A180669.P7258448753162537412

`A180668(n+2)-A001844(n)`
-/

namespace A180669.P7258448753162537412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180668 (n + 2) - A001844 n

end

end A180669.P7258448753162537412

namespace A180669

/-- `A180668(n+2)-A001844(n)` -/
def P7258448753162537412.Spec : Prop :=
  ∀ n, P7258448753162537412.a n = A180669 n

end A180669

/-! ## A180669.P536337392434156822

`∑[A027053(n+2)-A008574(n)]`
-/

namespace A180669.P536337392434156822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027053 (n + 2) - A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180669.P536337392434156822

namespace A180669

/-- `∑[A027053(n+2)-A008574(n)]` -/
def P536337392434156822.Spec : Prop :=
  ∀ n, P536337392434156822.a n = A180669 n

end A180669

/-! ## A180669.P499815511804278172

`∑[2*A180668(n)]-A180668(n)`
-/

namespace A180669.P499815511804278172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A180668 n

end

end A180669.P499815511804278172

namespace A180669

/-- `∑[2*A180668(n)]-A180668(n)` -/
def P499815511804278172.Spec : Prop :=
  ∀ n, P499815511804278172.a n = A180669 n

end A180669

/-! ## A180669.P17942230756418801400

`∑[∑[A027082(A014206(n))-1]]`
-/

namespace A180669.P17942230756418801400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027082 (A014206 n).toNat - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180669.P17942230756418801400

namespace A180669

/-- `∑[∑[A027082(A014206(n))-1]]` -/
def P17942230756418801400.Spec : Prop :=
  ∀ n, P17942230756418801400.a n = A180669 n

end A180669

/-!
# A180670: a(n) = a(n-1)+a(n-2)+a(n-3)+(8*n^3-48*n^2+112*n-96)/3 with a(0)=0, a(1)=0 and a(2)=1.

The programs for A180670, the canonical program `A180670.P6737041665798080008` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180670 has offset 0).

The definition of A180670 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180670.P6737041665798080008

`a(n-1)+A001590(n+7)-(12+4*n+4*n²)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A180670

/-- `a(n-1)+A001590(n+7)-(12+4*n+4*n²)` -/
def P6737041665798080008.Spec : Prop :=
  ∀ n, P6737041665798080008.a n = A180670 n

theorem P6737041665798080008.correct : P6737041665798080008.Spec := by
  intro n
  simp only [A180670]

end A180670

/-! ## A180670.P7926842877910801258

`A180669(n+2)-A001845(n)`
-/

namespace A180670.P7926842877910801258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180669 (n + 2) - A001845 n

end

end A180670.P7926842877910801258

namespace A180670

/-- `A180669(n+2)-A001845(n)` -/
def P7926842877910801258.Spec : Prop :=
  ∀ n, P7926842877910801258.a n = A180670 n

end A180670

/-! ## A180670.P14903004548403230623

`A180669(n+2)-∑[A005899(n)]`
-/

namespace A180670.P14903004548403230623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180669 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180670.P14903004548403230623

namespace A180670

/-- `A180669(n+2)-∑[A005899(n)]` -/
def P14903004548403230623.Spec : Prop :=
  ∀ n, P14903004548403230623.a n = A180670 n

end A180670

/-! ## A180670.P3825335888539890514

`∑[2*A180669(n)]-A180669(n)`
-/

namespace A180670.P3825335888539890514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A180669 n

end

end A180670.P3825335888539890514

namespace A180670

/-- `∑[2*A180669(n)]-A180669(n)` -/
def P3825335888539890514.Spec : Prop :=
  ∀ n, P3825335888539890514.a n = A180670 n

end A180670

/-! ## A180670.P12612902019073059963

`A180669(n+2)+A001489(A001845(n)+1)+1`
-/

namespace A180670.P12612902019073059963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180669 (n + 2) + A001489 (A001845 n + 1).toNat + 1

end

end A180670.P12612902019073059963

namespace A180670

/-- `A180669(n+2)+A001489(A001845(n)+1)+1` -/
def P12612902019073059963.Spec : Prop :=
  ∀ n, P12612902019073059963.a n = A180670 n

end A180670

/-!
# A180671: a(n) = Fibonacci(n+6) - Fibonacci(6).

The programs for A180671, the canonical program `A180671.P8323101946571905079` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180671 has offset 0).

The definition of A180671 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180671.P8323101946571905079

`a(n-1)+a(n-2)+8` with `a(0)=0, a(1)=5`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A180671

/-- `a(n-1)+a(n-2)+8` -/
def P8323101946571905079.Spec : Prop :=
  ∀ n, (P8323101946571905079.a n : ℤ) = A180671 n

theorem P8323101946571905079.correct : P8323101946571905079.Spec := by
  intro n
  simp only [A180671]

end A180671

/-! ## A180671.P15562738329341191591

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=5, a(2)=13`
-/

namespace A180671.P15562738329341191591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 13] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A180671.P15562738329341191591

namespace A180671

/-- `2*a(n-1)-a(n-3)` -/
def P15562738329341191591.Spec : Prop :=
  ∀ n, P15562738329341191591.a n = A180671 n

end A180671

/-! ## A180671.P12269023327653010563

`ogf((5x+3x^2)/(1-2x+x^3))`
-/

namespace A180671.P12269023327653010563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 3] [1, -2, 0, 1] n

end

end A180671.P12269023327653010563

namespace A180671

/-- `ogf((5x+3x^2)/(1-2x+x^3))` -/
def P12269023327653010563.Spec : Prop :=
  ∀ n, P12269023327653010563.a n = A180671 n

end A180671

/-! ## A180671.P6823569883791373583

`ceil(ϕ*(a(n-1)+3))` with `a(0)=0`
-/

namespace A180671.P6823569883791373583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) + 3 : ℝ)⌉

end

end A180671.P6823569883791373583

namespace A180671

/-- `ceil(ϕ*(a(n-1)+3))` -/
def P6823569883791373583.Spec : Prop :=
  ∀ n, P6823569883791373583.a n = A180671 n

end A180671

/-! ## A180671.P14583298118457210806

`round(ϕ*(a(n-1)+3))` with `a(0)=0`
-/

namespace A180671.P14583298118457210806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) + 3 : ℝ))

end

end A180671.P14583298118457210806

namespace A180671

/-- `round(ϕ*(a(n-1)+3))` -/
def P14583298118457210806.Spec : Prop :=
  ∀ n, P14583298118457210806.a n = A180671 n

end A180671

/-! ## A180671.P6334616125947771933

`floor(ϕ*a(n-1))+5` with `a(0)=0`
-/

namespace A180671.P6334616125947771933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) : ℝ)⌋ + 5

end

end A180671.P6334616125947771933

namespace A180671

/-- `floor(ϕ*a(n-1))+5` -/
def P6334616125947771933.Spec : Prop :=
  ∀ n, P6334616125947771933.a n = A180671 n

end A180671

/-! ## A180671.P4029842750646701594

`5-ceil(-(ϕ*a(n-1)))` with `a(0)=0`
-/

namespace A180671.P4029842750646701594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  5 - ⌈-(Real.goldenRatio * (a (n - 1) : ℝ))⌉

end

end A180671.P4029842750646701594

namespace A180671

/-- `5-ceil(-(ϕ*a(n-1)))` -/
def P4029842750646701594.Spec : Prop :=
  ∀ n, P4029842750646701594.a n = A180671 n

end A180671

/-! ## A180671.P2047547676565920547

`5-round(-(ϕ*a(n-1)))` with `a(0)=0`
-/

namespace A180671.P2047547676565920547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  5 - SequenceMachineLib.roundAway (-(Real.goldenRatio * (a (n - 1) : ℝ)))

end

end A180671.P2047547676565920547

namespace A180671

/-- `5-round(-(ϕ*a(n-1)))` -/
def P2047547676565920547.Spec : Prop :=
  ∀ n, P2047547676565920547.a n = A180671 n

end A180671

/-! ## A180671.P4771507916814454062

`∑[A020701(n)]-3`
-/

namespace A180671.P4771507916814454062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A180671.P4771507916814454062

namespace A180671

/-- `∑[A020701(n)]-3` -/
def P4771507916814454062.Spec : Prop :=
  ∀ n, P4771507916814454062.a n = A180671 n

end A180671

/-! ## A180671.P15794786018716567961

`A020732(n+1)-7`
-/

namespace A180671.P15794786018716567961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020732 (n + 1) - 7

end

end A180671.P15794786018716567961

namespace A180671

/-- `A020732(n+1)-7` -/
def P15794786018716567961.Spec : Prop :=
  ∀ n, P15794786018716567961.a n = A180671 n

end A180671

/-! ## A180671.P9408460538328098472

`A001911(n+3)-6`
-/

namespace A180671.P9408460538328098472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (n + 3) - 6

end

end A180671.P9408460538328098472

namespace A180671

/-- `A001911(n+3)-6` -/
def P9408460538328098472.Spec : Prop :=
  ∀ n, P9408460538328098472.a n = A180671 n

end A180671

/-! ## A180671.P1079629034976747627

`A020712(n+1)-8`
-/

namespace A180671.P1079629034976747627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 (n + 1) - 8

end

end A180671.P1079629034976747627

namespace A180671

/-- `A020712(n+1)-8` -/
def P1079629034976747627.Spec : Prop :=
  ∀ n, P1079629034976747627.a n = A180671 n

end A180671

/-! ## A180671.P6826630592599445485

`A167616(n+6)-3`
-/

namespace A180671.P6826630592599445485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167616 (n + 6) - 3

end

end A180671.P6826630592599445485

namespace A180671

/-- `A167616(n+6)-3` -/
def P6826630592599445485.Spec : Prop :=
  ∀ n, P6826630592599445485.a n = A180671 n

end A180671

/-! ## A180671.P17857702165895358372

`A020701(n+2)-8`
-/

namespace A180671.P17857702165895358372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 (n + 2) - 8

end

end A180671.P17857702165895358372

namespace A180671

/-- `A020701(n+2)-8` -/
def P17857702165895358372.Spec : Prop :=
  ∀ n, P17857702165895358372.a n = A180671 n

end A180671

/-! ## A180671.P17481466302803519432

`A020717(n+1)-9`
-/

namespace A180671.P17481466302803519432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020717 (n + 1) - 9

end

end A180671.P17481466302803519432

namespace A180671

/-- `A020717(n+1)-9` -/
def P17481466302803519432.Spec : Prop :=
  ∀ n, P17481466302803519432.a n = A180671 n

end A180671

/-! ## A180671.P4992944410243952736

`A157728(n+6)-4`
-/

namespace A180671.P4992944410243952736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157728 (n + 6) - 4

end

end A180671.P4992944410243952736

namespace A180671

/-- `A157728(n+6)-4` -/
def P4992944410243952736.Spec : Prop :=
  ∀ n, P4992944410243952736.a n = A180671 n

end A180671

/-! ## A180671.P15816602269980703808

`A006327(n+6)-5`
-/

namespace A180671.P15816602269980703808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006327 (n + 6) - 5

end

end A180671.P15816602269980703808

namespace A180671

/-- `A006327(n+6)-5` -/
def P15816602269980703808.Spec : Prop :=
  ∀ n, P15816602269980703808.a n = A180671 n

end A180671

/-! ## A180671.P1705170388775653137

`A020695(n+3)-8`
-/

namespace A180671.P1705170388775653137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (n + 3) - 8

end

end A180671.P1705170388775653137

namespace A180671

/-- `A020695(n+3)-8` -/
def P1705170388775653137.Spec : Prop :=
  ∀ n, P1705170388775653137.a n = A180671 n

end A180671

/-! ## A180671.P16243513148257448896

`A020706(n+2)-9`
-/

namespace A180671.P16243513148257448896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 (n + 2) - 9

end

end A180671.P16243513148257448896

namespace A180671

/-- `A020706(n+2)-9` -/
def P16243513148257448896.Spec : Prop :=
  ∀ n, P16243513148257448896.a n = A180671 n

end A180671

/-! ## A180671.P553365446079582489

`A048577(n+3)-9`
-/

namespace A180671.P553365446079582489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 (n + 3) - 9

end

end A180671.P553365446079582489

namespace A180671

/-- `A048577(n+3)-9` -/
def P553365446079582489.Spec : Prop :=
  ∀ n, P553365446079582489.a n = A180671 n

end A180671

/-!
# A180672: a(n) = Fibonacci(n+7) - Fibonacci(7).

The programs for A180672, the canonical program `A180672.P4813256208908583574` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180672 has offset 0).

The definition of A180672 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180672.P4813256208908583574

`a(n-1)+a(n-2)+13` with `a(0)=0, a(1)=8`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A180672

/-- `a(n-1)+a(n-2)+13` -/
def P4813256208908583574.Spec : Prop :=
  ∀ n, (P4813256208908583574.a n : ℤ) = A180672 n

theorem P4813256208908583574.correct : P4813256208908583574.Spec := by
  intro n
  simp only [A180672]

end A180672

/-! ## A180672.P9992059986848190910

`8*A000071(n+2)+5*A000071(n+1)`
-/

namespace A180672.P9992059986848190910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000071 (n + 2) + 5 * A000071 (n + 1)

end

end A180672.P9992059986848190910

namespace A180672

/-- `8*A000071(n+2)+5*A000071(n+1)` -/
def P9992059986848190910.Spec : Prop :=
  ∀ n, P9992059986848190910.a n = A180672 n

end A180672

/-! ## A180672.P1553069971598894044

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=8, a(2)=21`
-/

namespace A180672.P1553069971598894044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 8, 21] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A180672.P1553069971598894044

namespace A180672

/-- `2*a(n-1)-a(n-3)` -/
def P1553069971598894044.Spec : Prop :=
  ∀ n, P1553069971598894044.a n = A180672 n

end A180672

/-! ## A180672.P293057286772519526

`ogf((8x+5x^2)/(1-2x+x^3))`
-/

namespace A180672.P293057286772519526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, 5] [1, -2, 0, 1] n

end

end A180672.P293057286772519526

namespace A180672

/-- `ogf((8x+5x^2)/(1-2x+x^3))` -/
def P293057286772519526.Spec : Prop :=
  ∀ n, P293057286772519526.a n = A180672 n

end A180672

/-! ## A180672.P11770327443268443890

`floor(ϕ*(a(n-1)+5))` with `a(0)=0`
-/

namespace A180672.P11770327443268443890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) + 5 : ℝ)⌋

end

end A180672.P11770327443268443890

namespace A180672

/-- `floor(ϕ*(a(n-1)+5))` -/
def P11770327443268443890.Spec : Prop :=
  ∀ n, P11770327443268443890.a n = A180672 n

end A180672

/-! ## A180672.P12648132941133568895

`round(ϕ*(a(n-1)+5))` with `a(0)=0`
-/

namespace A180672.P12648132941133568895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) + 5 : ℝ))

end

end A180672.P12648132941133568895

namespace A180672

/-- `round(ϕ*(a(n-1)+5))` -/
def P12648132941133568895.Spec : Prop :=
  ∀ n, P12648132941133568895.a n = A180672 n

end A180672

/-! ## A180672.P12964675486203702081

`ceil(ϕ*a(n-1))+8` with `a(0)=0`
-/

namespace A180672.P12964675486203702081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) : ℝ)⌉ + 8

end

end A180672.P12964675486203702081

namespace A180672

/-- `ceil(ϕ*a(n-1))+8` -/
def P12964675486203702081.Spec : Prop :=
  ∀ n, P12964675486203702081.a n = A180672 n

end A180672

/-! ## A180672.P1200088876560464845

`∑[A020712(n)]-5`
-/

namespace A180672.P1200088876560464845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 5

end

end A180672.P1200088876560464845

namespace A180672

/-- `∑[A020712(n)]-5` -/
def P1200088876560464845.Spec : Prop :=
  ∀ n, P1200088876560464845.a n = A180672 n

end A180672

/-! ## A180672.P9781495396846694924

`floor(ϕ*A180671(n))`
-/

namespace A180672.P9781495396846694924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A180671 n : ℝ)⌋

end

end A180672.P9781495396846694924

namespace A180672

/-- `floor(ϕ*A180671(n))` -/
def P9781495396846694924.Spec : Prop :=
  ∀ n, P9781495396846694924.a n = A180672 n

end A180672

/-! ## A180672.P11461645844381492496

`A180671(n+1)-5`
-/

namespace A180672.P11461645844381492496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180671 (n + 1) - 5

end

end A180672.P11461645844381492496

namespace A180672

/-- `A180671(n+1)-5` -/
def P11461645844381492496.Spec : Prop :=
  ∀ n, P11461645844381492496.a n = A180672 n

end A180672

/-! ## A180672.P12463538945176343601

`A167616(n+7)-8`
-/

namespace A180672.P12463538945176343601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167616 (n + 7) - 8

end

end A180672.P12463538945176343601

namespace A180672

/-- `A167616(n+7)-8` -/
def P12463538945176343601.Spec : Prop :=
  ∀ n, P12463538945176343601.a n = A180672 n

end A180672

/-! ## A180672.P8171457409102880709

`A020701(n+3)-13`
-/

namespace A180672.P8171457409102880709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 (n + 3) - 13

end

end A180672.P8171457409102880709

namespace A180672

/-- `A020701(n+3)-13` -/
def P8171457409102880709.Spec : Prop :=
  ∀ n, P8171457409102880709.a n = A180672 n

end A180672

/-! ## A180672.P10727358230571731600

`A048577(n+4)-14`
-/

namespace A180672.P10727358230571731600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 (n + 4) - 14

end

end A180672.P10727358230571731600

namespace A180672

/-- `A048577(n+4)-14` -/
def P10727358230571731600.Spec : Prop :=
  ∀ n, P10727358230571731600.a n = A180672 n

end A180672

/-! ## A180672.P7889321280598165236

`A071679(n+5)-13`
-/

namespace A180672.P7889321280598165236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071679 (n + 5) - 13

end

end A180672.P7889321280598165236

namespace A180672

/-- `A071679(n+5)-13` -/
def P7889321280598165236.Spec : Prop :=
  ∀ n, P7889321280598165236.a n = A180672 n

end A180672

/-! ## A180672.P7112108693417870852

`A018910(n+4)-15`
-/

namespace A180672.P7112108693417870852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 (n + 4) - 15

end

end A180672.P7112108693417870852

namespace A180672

/-- `A018910(n+4)-15` -/
def P7112108693417870852.Spec : Prop :=
  ∀ n, P7112108693417870852.a n = A180672 n

end A180672

/-! ## A180672.P10597256493635158879

`A169622(n+5)-16`
-/

namespace A180672.P10597256493635158879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169622 (n + 5) - 16

end

end A180672.P10597256493635158879

namespace A180672

/-- `A169622(n+5)-16` -/
def P10597256493635158879.Spec : Prop :=
  ∀ n, P10597256493635158879.a n = A180672 n

end A180672

/-! ## A180672.P1422661629083209486

`∑[A020695(n+2)]-5`
-/

namespace A180672.P1422661629083209486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 5

end

end A180672.P1422661629083209486

namespace A180672

/-- `∑[A020695(n+2)]-5` -/
def P1422661629083209486.Spec : Prop :=
  ∀ n, P1422661629083209486.a n = A180672 n

end A180672

/-! ## A180672.P5243999802149224878

`∑[A000045(n+5)]-5`
-/

namespace A180672.P5243999802149224878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 5

end

end A180672.P5243999802149224878

namespace A180672

/-- `∑[A000045(n+5)]-5` -/
def P5243999802149224878.Spec : Prop :=
  ∀ n, P5243999802149224878.a n = A180672 n

end A180672

/-! ## A180672.P17884107443349796424

`A001891(n+2)+2*(n-2)`
-/

namespace A180672.P17884107443349796424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 (n + 2) + 2 * ((n : ℤ) - 2)

end

end A180672.P17884107443349796424

namespace A180672

/-- `A001891(n+2)+2*(n-2)` -/
def P17884107443349796424.Spec : Prop :=
  ∀ n, P17884107443349796424.a n = A180672 n

end A180672

/-! ## A180672.P9802229301933211349

`record[A000045(n+1)-(2*n+1)]+2*n`
-/

namespace A180672.P9802229301933211349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (2 * n : ℤ)

end

end A180672.P9802229301933211349

namespace A180672

/-- `record[A000045(n+1)-(2*n+1)]+2*n` -/
def P9802229301933211349.Spec : Prop :=
  ∀ n, P9802229301933211349.a n = A180672 n

end A180672

/-!
# A180673: a(n) = Fibonacci(n+8) - Fibonacci(8).

The programs for A180673, the canonical program `A180673.P7495852835662184496` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180673 has offset 0).

The definition of A180673 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180673.P7495852835662184496

`a(n-1)+a(n-2)+21` with `a(0)=0, a(1)=13`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A180673

/-- `a(n-1)+a(n-2)+21` -/
def P7495852835662184496.Spec : Prop :=
  ∀ n, (P7495852835662184496.a n : ℤ) = A180673 n

theorem P7495852835662184496.correct : P7495852835662184496.Spec := by
  intro n
  simp only [A180673]

end A180673

/-! ## A180673.P4083750867727664854

`13*A000071(n+2)+8*A000071(n+1)`
-/

namespace A180673.P4083750867727664854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A000071 (n + 2) + 8 * A000071 (n + 1)

end

end A180673.P4083750867727664854

namespace A180673

/-- `13*A000071(n+2)+8*A000071(n+1)` -/
def P4083750867727664854.Spec : Prop :=
  ∀ n, P4083750867727664854.a n = A180673 n

end A180673

/-! ## A180673.P10077272540119398178

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=13, a(2)=34`
-/

namespace A180673.P10077272540119398178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 13, 34] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A180673.P10077272540119398178

namespace A180673

/-- `2*a(n-1)-a(n-3)` -/
def P10077272540119398178.Spec : Prop :=
  ∀ n, P10077272540119398178.a n = A180673 n

end A180673

/-! ## A180673.P3180994672436837618

`ceil(ϕ*(a(n-1)+8))` with `a(0)=0`
-/

namespace A180673.P3180994672436837618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) + 8 : ℝ)⌉

end

end A180673.P3180994672436837618

namespace A180673

/-- `ceil(ϕ*(a(n-1)+8))` -/
def P3180994672436837618.Spec : Prop :=
  ∀ n, P3180994672436837618.a n = A180673 n

end A180673

/-! ## A180673.P13940987304144060723

`round(ϕ*(a(n-1)+8))` with `a(0)=0`
-/

namespace A180673.P13940987304144060723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) + 8 : ℝ))

end

end A180673.P13940987304144060723

namespace A180673

/-- `round(ϕ*(a(n-1)+8))` -/
def P13940987304144060723.Spec : Prop :=
  ∀ n, P13940987304144060723.a n = A180673 n

end A180673

/-! ## A180673.P9857916940876721260

`ceil(ϕ*A180672(n))`
-/

namespace A180673.P9857916940876721260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (A180672 n : ℝ)⌉

end

end A180673.P9857916940876721260

namespace A180673

/-- `ceil(ϕ*A180672(n))` -/
def P9857916940876721260.Spec : Prop :=
  ∀ n, P9857916940876721260.a n = A180673 n

end A180673

/-! ## A180673.P15016588105925732041

`A180672(n+1)-8`
-/

namespace A180673.P15016588105925732041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180672 (n + 1) - 8

end

end A180673.P15016588105925732041

namespace A180673

/-- `A180672(n+1)-8` -/
def P15016588105925732041.Spec : Prop :=
  ∀ n, P15016588105925732041.a n = A180673 n

end A180673

/-! ## A180673.P14538465673202958837

`A167616(n+8)-16`
-/

namespace A180673.P14538465673202958837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167616 (n + 8) - 16

end

end A180673.P14538465673202958837

namespace A180673

/-- `A167616(n+8)-16` -/
def P14538465673202958837.Spec : Prop :=
  ∀ n, P14538465673202958837.a n = A180673 n

end A180673

/-! ## A180673.P4055426211508839385

`A020706(n+4)-22`
-/

namespace A180673.P4055426211508839385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 (n + 4) - 22

end

end A180673.P4055426211508839385

namespace A180673

/-- `A020706(n+4)-22` -/
def P4055426211508839385.Spec : Prop :=
  ∀ n, P4055426211508839385.a n = A180673 n

end A180673

/-! ## A180673.P4771302820832205792

`A000045(n+8)-21`
-/

namespace A180673.P4771302820832205792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 8) - 21

end

end A180673.P4771302820832205792

namespace A180673

/-- `A000045(n+8)-21` -/
def P4771302820832205792.Spec : Prop :=
  ∀ n, P4771302820832205792.a n = A180673 n

end A180673

/-! ## A180673.P10684129571706852802

`abs(8-∑[A020695(n+3)])`
-/

namespace A180673.P10684129571706852802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |8 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A180673.P10684129571706852802

namespace A180673

/-- `abs(8-∑[A020695(n+3)])` -/
def P10684129571706852802.Spec : Prop :=
  ∀ n, P10684129571706852802.a n = A180673 n

end A180673

/-! ## A180673.P9953557701176540959

`A180671(n)+A180671(n)+A167616(n+5)`
-/

namespace A180673.P9953557701176540959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180671 n + (A180671 n + A167616 (n + 5))

end

end A180673.P9953557701176540959

namespace A180673

/-- `A180671(n)+A180671(n)+A167616(n+5)` -/
def P9953557701176540959.Spec : Prop :=
  ∀ n, P9953557701176540959.a n = A180673 n

end A180673

/-! ## A180673.P13375270655607898807

`A006327(n+4)+A180672(n)+A167616(n+5)`
-/

namespace A180673.P13375270655607898807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006327 (n + 4) + (A180672 n + A167616 (n + 5))

end

end A180673.P13375270655607898807

namespace A180673

/-- `A006327(n+4)+A180672(n)+A167616(n+5)` -/
def P13375270655607898807.Spec : Prop :=
  ∀ n, P13375270655607898807.a n = A180673 n

end A180673

/-! ## A180673.P3499130060359548574

`A180674(n)-A180672(n)`
-/

namespace A180673.P3499130060359548574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180674 n - A180672 n

end

end A180673.P3499130060359548574

namespace A180673

/-- `A180674(n)-A180672(n)` -/
def P3499130060359548574.Spec : Prop :=
  ∀ n, P3499130060359548574.a n = A180673 n

end A180673

/-!
# A180674: a(n) = Fibonacci(n+9) - Fibonacci(9).

The programs for A180674, the canonical program `A180674.P8311312104899301461` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180674 has offset 0).

The definition of A180674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180674.P8311312104899301461

`a(n-1)+a(n-2)+34` with `a(0)=0, a(1)=21`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A180674

/-- `a(n-1)+a(n-2)+34` -/
def P8311312104899301461.Spec : Prop :=
  ∀ n, (P8311312104899301461.a n : ℤ) = A180674 n

theorem P8311312104899301461.correct : P8311312104899301461.Spec := by
  intro n
  simp only [A180674]

end A180674

/-! ## A180674.P6131117240308466275

`21*A000071(n+2)+13*A000071(n+1)`
-/

namespace A180674.P6131117240308466275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 * A000071 (n + 2) + 13 * A000071 (n + 1)

end

end A180674.P6131117240308466275

namespace A180674

/-- `21*A000071(n+2)+13*A000071(n+1)` -/
def P6131117240308466275.Spec : Prop :=
  ∀ n, P6131117240308466275.a n = A180674 n

end A180674

/-! ## A180674.P7323676949339854793

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=21, a(2)=55`
-/

namespace A180674.P7323676949339854793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 21, 55] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A180674.P7323676949339854793

namespace A180674

/-- `2*a(n-1)-a(n-3)` -/
def P7323676949339854793.Spec : Prop :=
  ∀ n, P7323676949339854793.a n = A180674 n

end A180674

/-! ## A180674.P6797352328042375766

`ceil(ϕ*(a(n-1)+8))+8` with `a(0)=0`
-/

namespace A180674.P6797352328042375766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) + 8 : ℝ)⌉ + 8

end

end A180674.P6797352328042375766

namespace A180674

/-- `ceil(ϕ*(a(n-1)+8))+8` -/
def P6797352328042375766.Spec : Prop :=
  ∀ n, P6797352328042375766.a n = A180674 n

end A180674

/-! ## A180674.P11350797169912760790

`floor(ϕ*A180673(n))`
-/

namespace A180674.P11350797169912760790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A180673 n : ℝ)⌋

end

end A180674.P11350797169912760790

namespace A180674

/-- `floor(ϕ*A180673(n))` -/
def P11350797169912760790.Spec : Prop :=
  ∀ n, P11350797169912760790.a n = A180674 n

end A180674

/-! ## A180674.P14980767065749227045

`A180672(n+2)-21`
-/

namespace A180674.P14980767065749227045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180672 (n + 2) - 21

end

end A180674.P14980767065749227045

namespace A180674

/-- `A180672(n+2)-21` -/
def P14980767065749227045.Spec : Prop :=
  ∀ n, P14980767065749227045.a n = A180674 n

end A180674

/-! ## A180674.P11123001651195938367

`A020732(n+4)-33`
-/

namespace A180674.P11123001651195938367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020732 (n + 4) - 33

end

end A180674.P11123001651195938367

namespace A180674

/-- `A020732(n+4)-33` -/
def P11123001651195938367.Spec : Prop :=
  ∀ n, P11123001651195938367.a n = A180674 n

end A180674

/-! ## A180674.P34956493882756421

`A157728(n+9)-30`
-/

namespace A180674.P34956493882756421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157728 (n + 9) - 30

end

end A180674.P34956493882756421

namespace A180674

/-- `A157728(n+9)-30` -/
def P34956493882756421.Spec : Prop :=
  ∀ n, P34956493882756421.a n = A180674 n

end A180674

/-! ## A180674.P9026982709457060331

`A000045(n+9)-34`
-/

namespace A180674.P9026982709457060331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 9) - 34

end

end A180674.P9026982709457060331

namespace A180674

/-- `A000045(n+9)-34` -/
def P9026982709457060331.Spec : Prop :=
  ∀ n, P9026982709457060331.a n = A180674 n

end A180674

/-! ## A180674.P13223781733765339745

`A180673(n)+A180672(n)`
-/

namespace A180674.P13223781733765339745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180673 n + A180672 n

end

end A180674.P13223781733765339745

namespace A180674

/-- `A180673(n)+A180672(n)` -/
def P13223781733765339745.Spec : Prop :=
  ∀ n, P13223781733765339745.a n = A180674 n

end A180674

/-! ## A180674.P10489639612891614418

`A180671(n)+2*A180672(n)`
-/

namespace A180674.P10489639612891614418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180671 n + 2 * A180672 n

end

end A180674.P10489639612891614418

namespace A180674

/-- `A180671(n)+2*A180672(n)` -/
def P10489639612891614418.Spec : Prop :=
  ∀ n, P10489639612891614418.a n = A180674 n

end A180674

/-! ## A180674.P535168436216454520

`A180673(n)+A180673(n)-A180671(n)`
-/

namespace A180674.P535168436216454520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180673 n + (A180673 n - A180671 n)

end

end A180674.P535168436216454520

namespace A180674

/-- `A180673(n)+A180673(n)-A180671(n)` -/
def P535168436216454520.Spec : Prop :=
  ∀ n, P535168436216454520.a n = A180674 n

end A180674

/-! ## A180674.P16385785069049759080

`2*A180673(n)-A180671(n)`
-/

namespace A180674.P16385785069049759080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180673 n - A180671 n

end

end A180674.P16385785069049759080

namespace A180674

/-- `2*A180673(n)-A180671(n)` -/
def P16385785069049759080.Spec : Prop :=
  ∀ n, P16385785069049759080.a n = A180674 n

end A180674

/-! ## A180674.P3210050700216920065

`∑[A020712(n+3)]-A020712(n+3)`
-/

namespace A180674.P3210050700216920065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A020712 (n + 3)

end

end A180674.P3210050700216920065

namespace A180674

/-- `∑[A020712(n+3)]-A020712(n+3)` -/
def P3210050700216920065.Spec : Prop :=
  ∀ n, P3210050700216920065.a n = A180674 n

end A180674

/-! ## A180674.P2837415931094733460

`∑[A020701(n+4)]-A020701(n+4)`
-/

namespace A180674.P2837415931094733460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A020701 (n + 4)

end

end A180674.P2837415931094733460

namespace A180674

/-- `∑[A020701(n+4)]-A020701(n+4)` -/
def P2837415931094733460.Spec : Prop :=
  ∀ n, P2837415931094733460.a n = A180674 n

end A180674

/-!
# A180675: The Ca3 sums of the Pell-Jacobsthal triangle A013609.

The programs for A180675, the canonical program `A180675.P15767428010715337683` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180675 has offset 0).

The definition of A180675 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180675.P15767428010715337683

`11*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A180675

/-- `11*a(n-1)-3*a(n-2)+a(n-3)` -/
def P15767428010715337683.Spec : Prop :=
  ∀ n, P15767428010715337683.a n = A180675 n

theorem P15767428010715337683.correct : P15767428010715337683.Spec := by
  intro n
  simp only [A180675]

end A180675

/-! ## A180675.P11255097099058708414

`A008998(3*floor(n-atan(n)))`
-/

namespace A180675.P11255097099058708414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 (3 * ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋).toNat

end

end A180675.P11255097099058708414

namespace A180675

/-- `A008998(3*floor(n-atan(n)))` -/
def P11255097099058708414.Spec : Prop :=
  ∀ n, P11255097099058708414.a n = A180675 n

end A180675

/-! ## A180675.P11867431382266280482

`A008998(3*A289207(n))`
-/

namespace A180675.P11867431382266280482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 (3 * A289207 n).toNat

end

end A180675.P11867431382266280482

namespace A180675

/-- `A008998(3*A289207(n))` -/
def P11867431382266280482.Spec : Prop :=
  ∀ n, P11867431382266280482.a n = A180675 n

end A180675

/-! ## A180675.P8273542782130826060

`A008998(record[A009531(n)]-n)`
-/

namespace A180675.P8273542782130826060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat

end

end A180675.P8273542782130826060

namespace A180675

/-- `A008998(record[A009531(n)]-n)` -/
def P8273542782130826060.Spec : Prop :=
  ∀ n, P8273542782130826060.a n = A180675 n

end A180675

/-! ## A180675.P11965344273790803334

`A008998(A004275(A004275(n))-n)`
-/

namespace A180675.P11965344273790803334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 (A004275 (A004275 n).toNat - (n : ℤ)).toNat

end

end A180675.P11965344273790803334

namespace A180675

/-- `A008998(A004275(A004275(n))-n)` -/
def P11965344273790803334.Spec : Prop :=
  ∀ n, P11965344273790803334.a n = A180675 n

end A180675

/-!
# A180676: The Gi3 sums of the Pell-Jacobsthal triangle A013609.

The programs for A180676, the canonical program `A180676.P3875246305182067011` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180676 has offset 0).

The definition of A180676 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180676.P3875246305182067011

`20*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A180676

/-- `20*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P3875246305182067011.Spec : Prop :=
  ∀ n, P3875246305182067011.a n = A180676 n

theorem P3875246305182067011.correct : P3875246305182067011.Spec := by
  intro n
  simp only [A180676]

end A180676

/-! ## A180676.P8410674669092048822

`A117439(abs(3-n)+n-3)`
-/

namespace A180676.P8410674669092048822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117439 (|3 - (n : ℤ)| + ((n : ℤ) - 3)).toNat

end

end A180676.P8410674669092048822

namespace A180676

/-- `A117439(abs(3-n)+n-3)` -/
def P8410674669092048822.Spec : Prop :=
  ∀ n, P8410674669092048822.a n = A180676 n

end A180676

/-! ## A180676.P4313415109381324812

`A008999(∑[∑[A185232(n)]])`
-/

namespace A180676.P4313415109381324812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185232 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008999 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A180676.P4313415109381324812

namespace A180676

/-- `A008999(∑[∑[A185232(n)]])` -/
def P4313415109381324812.Spec : Prop :=
  ∀ n, P4313415109381324812.a n = A180676 n

end A180676

/-!
# A180677: The Gi4 sums of the Pell-Jacobsthal triangle A013609.

The programs for A180677, the canonical program `A180677.P13530044987835740317` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180677 has offset 0).

The definition of A180677 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180677.P13530044987835740317

`9*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` with `a(0)=1, a(1)=3, a(2)=15, a(3)=87`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A180677

/-- `9*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` -/
def P13530044987835740317.Spec : Prop :=
  ∀ n, P13530044987835740317.a n = A180677 n

theorem P13530044987835740317.correct : P13530044987835740317.Spec := by
  intro n
  simp only [A180677]

end A180677

/-! ## A180677.P14370354227988269410

`A052942(4*n)`
-/

namespace A180677.P14370354227988269410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052942 (4 * n)

end

end A180677.P14370354227988269410

namespace A180677

/-- `A052942(4*n)` -/
def P14370354227988269410.Spec : Prop :=
  ∀ n, P14370354227988269410.a n = A180677 n

end A180677

/-! ## A180677.P8549517361794888068

`record[A052942(A088440(n))]`
-/

namespace A180677.P8549517361794888068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052942 (A088440 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180677.P8549517361794888068

namespace A180677

/-- `record[A052942(A088440(n))]` -/
def P8549517361794888068.Spec : Prop :=
  ∀ n, P8549517361794888068.a n = A180677 n

end A180677

/-! ## A180677.P9937176400054143077

`record[A052942(n)^A219977(n)]`
-/

namespace A180677.P9937176400054143077
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052942 n : ℚ) ^ (A219977 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180677.P9937176400054143077

namespace A180677

/-- `record[A052942(n)^A219977(n)]` -/
def P9937176400054143077.Spec : Prop :=
  ∀ n, P9937176400054143077.a n = (A180677 n : ℚ)

end A180677

/-! ## A180677.P13936086127298371561

`record[A052942(Δ[A001082(n+1)])]`
-/

namespace A180677.P13936086127298371561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052942 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180677.P13936086127298371561

namespace A180677

/-- `record[A052942(Δ[A001082(n+1)])]` -/
def P13936086127298371561.Spec : Prop :=
  ∀ n, P13936086127298371561.a n = A180677 n

end A180677

/-! ## A180677.P12501547300249929953

`∑[A011782(n)*A078484(n+1)]`
-/

namespace A180677.P12501547300249929953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A078484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180677.P12501547300249929953

namespace A180677

/-- `∑[A011782(n)*A078484(n+1)]` -/
def P12501547300249929953.Spec : Prop :=
  ∀ n, P12501547300249929953.a n = A180677 n

end A180677

/-! ## A180677.P13620384933192704598

`record[and(A052942(n), A056594(n+2))]`
-/

namespace A180677.P13620384933192704598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052942 n) (A056594 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180677.P13620384933192704598

namespace A180677

/-- `record[and(A052942(n), A056594(n+2))]` -/
def P13620384933192704598.Spec : Prop :=
  ∀ n, P13620384933192704598.a n = A180677 n

end A180677

/-! ## A180677.P11339148484476650730

`record[A052942(A106617(n)+A065190(n+1))]`
-/

namespace A180677.P11339148484476650730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052942 (A106617 n + A065190 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180677.P11339148484476650730

namespace A180677

/-- `record[A052942(A106617(n)+A065190(n+1))]` -/
def P11339148484476650730.Spec : Prop :=
  ∀ n, P11339148484476650730.a n = A180677 n

end A180677

/-!
# A180678: The Ze2 sums of the Pell-Jacobsthal triangle A013609.

The programs for A180678, the canonical program `A180678.P9052170128633108152` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180678 has offset 0).

The definition of A180678 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180678.P9052170128633108152

`6*a(n-1)-11*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A180678

/-- `6*a(n-1)-11*a(n-2)+8*a(n-3)` -/
def P9052170128633108152.Spec : Prop :=
  ∀ n, P9052170128633108152.a n = A180678 n

theorem P9052170128633108152.correct : P9052170128633108152.Spec := by
  intro n
  simp only [A180678]

end A180678

/-! ## A180678.P228816006382728464

`A052947(3*n)`
-/

namespace A180678.P228816006382728464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052947 (3 * n)

end

end A180678.P228816006382728464

namespace A180678

/-- `A052947(3*n)` -/
def P228816006382728464.Spec : Prop :=
  ∀ n, P228816006382728464.a n = A180678 n

end A180678

/-! ## A180678.P1431012743479378243

`A159287(3*n+2)`
-/

namespace A180678.P1431012743479378243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159287 (3 * n + 2)

end

end A180678.P1431012743479378243

namespace A180678

/-- `A159287(3*n+2)` -/
def P1431012743479378243.Spec : Prop :=
  ∀ n, P1431012743479378243.a n = A180678 n

end A180678

/-! ## A180678.P8631452581379449924

`A159288(3*n)-A159284(3*n)`
-/

namespace A180678.P8631452581379449924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159288 (3 * n) - A159284 (3 * n)

end

end A180678.P8631452581379449924

namespace A180678

/-- `A159288(3*n)-A159284(3*n)` -/
def P8631452581379449924.Spec : Prop :=
  ∀ n, P8631452581379449924.a n = A180678 n

end A180678

/-! ## A180678.P10016450759379683592

`record[A052947(A002620(n)%(n+1)+2)]`
-/

namespace A180678.P10016450759379683592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052947 (Int.tmod (A002620 n) (n + 1 : ℤ) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180678.P10016450759379683592

namespace A180678

/-- `record[A052947(A002620(n)%(n+1)+2)]` -/
def P10016450759379683592.Spec : Prop :=
  ∀ n, P10016450759379683592.a n = A180678 n

end A180678

/-! ## A180678.P2984281601931575480

`record[A052947(n+1)^(A000071(n+1)%2)]`
-/

namespace A180678.P2984281601931575480
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052947 (n + 1) : ℚ) ^ (Int.tmod (A000071 (n + 1)) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180678.P2984281601931575480

namespace A180678

/-- `record[A052947(n+1)^(A000071(n+1)%2)]` -/
def P2984281601931575480.Spec : Prop :=
  ∀ n, P2984281601931575480.a n = (A180678 n : ℚ)

end A180678

/-!
# A180679: Numbers with three distinct prime factors which when concatenated in any order form prime numbers.

The programs for A180679, there is no canonical definition to state claims against.
-/

/-! ## A180679.P8367781041749878632

`record[∏{p}[A181559(n+1), #]]`
-/

namespace A180679.P8367781041749878632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181559 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180679.P8367781041749878632

/-! ## A180679.P7402388259754023327

`A181559(A326702(n)+A141769(n+1))`
-/

namespace A180679.P7402388259754023327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181559 (A326702 n + A141769 (n + 1)).toNat

end

end A180679.P7402388259754023327

/-! ## A180679.P14284868309129982947

`A181559(A184010(n+1)^A351345(n))`
-/

namespace A180679.P14284868309129982947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181559 (SequenceMachineLib.roundAway ((A184010 (n + 1) : ℚ) ^ (A351345 n : ℤ))).toNat

end

end A180679.P14284868309129982947

/-!
# A180680: Expansion of e.g.f. (1 - sqrt(1 - 4*LambertW(x)))/2.

The programs for A180680, there is no canonical definition to state claims against.
-/

/-! ## A180680.P15994437231735250922

`A014777(A295244(n))-n`
-/

namespace A180680.P15994437231735250922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014777 (A295244 n).toNat - (n : ℤ)

end

end A180680.P15994437231735250922

/-!
# A180682: a(n) is the largest path count within the (right-aligned Ferrers plots of the) partitions of n.

The programs for A180682, there is no canonical definition to state claims against.
-/

/-! ## A180682.P10250122988966690551

`Δ[A257639(Δ[A000711(n)])]`
-/

namespace A180682.P10250122988966690551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000711 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180682.P10250122988966690551

/-! ## A180682.P607873408810433210

`A015753(n)+∑[A152148(A257565(n))]`
-/

namespace A180682.P607873408810433210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152148 (A257565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015753 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180682.P607873408810433210

/-! ## A180682.P9720446697797855145

`A332577(n)-A135461(A187069(2*n))`
-/

namespace A180682.P9720446697797855145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332577 n - A135461 (A187069 (2 * n)).toNat

end

end A180682.P9720446697797855145

/-! ## A180682.P10947898630714405874

`A243113(A320222(n+2))`
-/

namespace A180682.P10947898630714405874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243113 (A320222 (n + 2)).toNat

end

end A180682.P10947898630714405874

/-!
# A180683: T(n,k) is the sum of the path counts in the (right-aligned Ferrers plots of) the partitions of n in exactly k parts.

The programs for A180683, there is no canonical definition to state claims against.
-/

/-! ## A180683.P16750101961633128381

`A006590(A008284(n+1)^A353806(n+1))`
-/

namespace A180683.P16750101961633128381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006590 (SequenceMachineLib.roundAway ((A008284 (n + 1) : ℚ) ^ (A353806 (n + 1) : ℤ))).toNat

end

end A180683.P16750101961633128381

/-! ## A180683.P16814676199943465932

`A027424(A008284(n+1)^A361129(n+2))`
-/

namespace A180683.P16814676199943465932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027424 (SequenceMachineLib.roundAway ((A008284 (n + 1) : ℚ) ^ (A361129 (n + 2) : ℤ))).toNat

end

end A180683.P16814676199943465932

/-! ## A180683.P7089691118550145866

`A109512(A008284(n+1)^A361129(n+2))`
-/

namespace A180683.P7089691118550145866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109512 (SequenceMachineLib.roundAway ((A008284 (n + 1) : ℚ) ^ (A361129 (n + 2) : ℤ))).toNat

end

end A180683.P7089691118550145866

/-! ## A180683.P234252977454949171

`A130473(A008284(n+1)^A361129(n+2))`
-/

namespace A180683.P234252977454949171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130473 (SequenceMachineLib.roundAway ((A008284 (n + 1) : ℚ) ^ (A361129 (n + 2) : ℤ))).toNat

end

end A180683.P234252977454949171

/-! ## A180683.P5816128295012018978

`A285215(A008284(n+1)^A361129(n+2))`
-/

namespace A180683.P5816128295012018978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285215 (SequenceMachineLib.roundAway ((A008284 (n + 1) : ℚ) ^ (A361129 (n + 2) : ℤ))).toNat

end

end A180683.P5816128295012018978

/-!
# A180684: a(n) equals the sum of path counts in the (right-aligned Ferrers plots of) the partitions of n.

The programs for A180684, there is no canonical definition to state claims against.
-/

/-! ## A180684.P580203891095307271

`A357742(A091696(n+1))`
-/

namespace A180684.P580203891095307271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357742 (A091696 (n + 1)).toNat

end

end A180684.P580203891095307271

/-! ## A180684.P7371015033179694701

`A374249(A007865(n))+A341674(n+1)`
-/

namespace A180684.P7371015033179694701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374249 (A007865 n).toNat + A341674 (n + 1)

end

end A180684.P7371015033179694701

/-!
# A180685: Primes consisting of all of the cube digits (i.e., 0, 1 and 8) at least once.

The programs for A180685, there is no canonical definition to state claims against.
-/

/-! ## A180685.P16169088458139112436

`p?[A046031(A031944(n+1))]`
-/

namespace A180685.P16169088458139112436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046031 (A031944 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180685.P16169088458139112436

/-! ## A180685.P12282663476767330085

`∩[A000040(n+1), A046031(A031944(n+1))]`
-/

namespace A180685.P12282663476767330085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046031 (A031944 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180685.P12282663476767330085

/-!
# A180687: G.f.: A(x) = Sum_{n>=0} log(1 + 2^n*x/(1-x))^n/n!.

The programs for A180687, there is no canonical definition to state claims against.
-/

/-! ## A180687.P5351282572179837660

`A002837(2^∑[n]+n+1)-n`
-/

namespace A180687.P5351282572179837660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1)) - (n : ℤ)

end

end A180687.P5351282572179837660

/-!
# A180689: 

The programs for A180689, there is no canonical definition to state claims against.
-/

/-! ## A180689.P11758322107065075084

`A001020(A180690(n+1))`
-/

namespace A180689.P11758322107065075084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (A180690 (n + 1)).toNat

end

end A180689.P11758322107065075084

/-!
# A180691: Smallest power of 12 that begins with n.

The programs for A180691, there is no canonical definition to state claims against.
-/

/-! ## A180691.P17978938030609439736

`12^A180692(n+1)`
-/

namespace A180691.P17978938030609439736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 : ℚ) ^ (A180692 (n + 1) : ℤ)

end

end A180691.P17978938030609439736

/-! ## A180691.P17780722964825750677

`A001021(A180692(n+1))`
-/

namespace A180691.P17780722964825750677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001021 (A180692 (n + 1)).toNat

end

end A180691.P17780722964825750677

/-! ## A180691.P14195454035264739759

`12^A034463(A017533(n))`
-/

namespace A180691.P14195454035264739759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 : ℚ) ^ (A034463 (A017533 n).toNat : ℤ)

end

end A180691.P14195454035264739759

/-!
# A180692: 12^a(n) is smallest power of 12 beginning with n.

The programs for A180692, there is no canonical definition to state claims against.
-/

/-! ## A180692.P11129868074754783917

`val(A180691(n+1), 3)`
-/

namespace A180692.P11129868074754783917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A180691 (n + 1)).toNat 3

end

end A180692.P11129868074754783917

/-!
# A180695: Smallest power of 14 that begins with n.

The programs for A180695, there is no canonical definition to state claims against.
-/

/-! ## A180695.P5005553370386681303

`A001023(A180696(n+1))`
-/

namespace A180695.P5005553370386681303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001023 (A180696 (n + 1)).toNat

end

end A180695.P5005553370386681303

/-!
# A180699: 

The programs for A180699, there is no canonical definition to state claims against.
-/

/-! ## A180699.P2871837080126163855

`16^A180700(n+1)`
-/

namespace A180699.P2871837080126163855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (16 : ℚ) ^ (A180700 (n + 1) : ℤ)

end

end A180699.P2871837080126163855

/-! ## A180699.P2833975691895150298

`A001025(A180700(n+1))`
-/

namespace A180699.P2833975691895150298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001025 (A180700 (n + 1)).toNat

end

end A180699.P2833975691895150298

