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
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
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
# A340700: Lower of a pair of adjacent perfect powers, both with exponents > 2.

The programs for A340700, there is no canonical definition to state claims against.
-/

/-! ## A340700.P1638203472225855907

`A340701(n+1)-A340706(n+1)`
-/

namespace A340700.P1638203472225855907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340701 (n + 1) - A340706 (n + 1)

end

end A340700.P1638203472225855907

/-! ## A340700.P17842042131839733922

`A340702(n+1)^A340704(n+1)`
-/

namespace A340700.P17842042131839733922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340702 (n + 1) : ℚ) ^ (A340704 (n + 1) : ℤ)

end

end A340700.P17842042131839733922

/-! ## A340700.P1252832686131203264

`A340703(n+1)^A340705(n+1)-A340706(n+1)`
-/

namespace A340700.P1252832686131203264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340703 (n + 1) : ℚ) ^ (A340705 (n + 1) : ℤ) - (A340706 (n + 1) : ℚ)

end

end A340700.P1252832686131203264

/-!
# A340701: Upper of a pair of adjacent perfect powers, both with exponents > 2.

The programs for A340701, there is no canonical definition to state claims against.
-/

/-! ## A340701.P9765888890494758738

`A340700(n+1)+A340706(n+1)`
-/

namespace A340701.P9765888890494758738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340700 (n + 1) + A340706 (n + 1)

end

end A340701.P9765888890494758738

/-! ## A340701.P8700041370433152903

`A340703(n+1)^A340705(n+1)`
-/

namespace A340701.P8700041370433152903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340703 (n + 1) : ℚ) ^ (A340705 (n + 1) : ℤ)

end

end A340701.P8700041370433152903

/-! ## A340701.P17416663286925662768

`A340706(n+1)+A340702(n+1)^A340704(n+1)`
-/

namespace A340701.P17416663286925662768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340706 (n + 1) : ℚ) + (A340702 (n + 1) : ℚ) ^ (A340704 (n + 1) : ℤ)

end

end A340701.P17416663286925662768

/-!
# A340702: Root of the lower member A340700 of a pair of adjacent perfect powers, both with exponents > 2.

The programs for A340702, there is no canonical definition to state claims against.
-/

/-! ## A340702.P2096715731623106547

`root(A340700(n+1), A340704(n+1))`
-/

namespace A340702.P2096715731623106547
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A340700 (n + 1) : ℝ) ^ (1 / (A340704 (n + 1) : ℝ))

end

end A340702.P2096715731623106547

/-! ## A340702.P8602562429548859896

`floor(root(A340701(n+1), A340704(n+1)))`
-/

namespace A340702.P8602562429548859896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A340701 (n + 1) : ℝ) ^ (1 / (A340704 (n + 1) : ℝ))⌋

end

end A340702.P8602562429548859896

/-! ## A340702.P13897662287882463891

`root(A340701(n+1)-A340706(n+1), A340704(n+1))`
-/

namespace A340702.P13897662287882463891
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A340701 (n + 1) - A340706 (n + 1) : ℝ) ^ (1 / (A340704 (n + 1) : ℝ))

end

end A340702.P13897662287882463891

/-! ## A340702.P14714504792708846815

`∏{p}[A340700(n+1), #]`
-/

namespace A340702.P14714504792708846815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340700 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A340702.P14714504792708846815

/-! ## A340702.P16707115284538094859

`∏{p}[record[A340700(A137735(n))], #]`
-/

namespace A340702.P16707115284538094859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340700 (A137735 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A340702.P16707115284538094859

/-!
# A340703: Root of the upper member A340701 of a pair of adjacent perfect powers, both with exponents > 2.

The programs for A340703, there is no canonical definition to state claims against.
-/

/-! ## A340703.P2703169617240271278

`root(A340701(n+1), A340705(n+1))`
-/

namespace A340703.P2703169617240271278
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A340701 (n + 1) : ℝ) ^ (1 / (A340705 (n + 1) : ℝ))

end

end A340703.P2703169617240271278

/-! ## A340703.P18326154549105041157

`ceil(root(A340700(n+1), A340705(n+1)))`
-/

namespace A340703.P18326154549105041157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A340700 (n + 1) : ℝ) ^ (1 / (A340705 (n + 1) : ℝ))⌉

end

end A340703.P18326154549105041157

/-! ## A340703.P15452929517401172533

`root(A340706(n+1)+A340700(n+1), A340705(n+1))`
-/

namespace A340703.P15452929517401172533
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A340706 (n + 1) + A340700 (n + 1) : ℝ) ^ (1 / (A340705 (n + 1) : ℝ))

end

end A340703.P15452929517401172533

/-! ## A340703.P2977700049001490215

`∏{p}[A000027(A340701(n+1)), #]`
-/

namespace A340703.P2977700049001490215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A340701 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A340703.P2977700049001490215

/-! ## A340703.P7665246648194270287

`∏{p}[A340701(A309151(n+1)), #]`
-/

namespace A340703.P7665246648194270287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340701 (A309151 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A340703.P7665246648194270287

/-!
# A340704: Exponent of the lower member A340700 of a pair of adjacent perfect powers, both with exponents > 2.

The programs for A340704, there is no canonical definition to state claims against.
-/

/-! ## A340704.P2085980689267477822

`val(A340700(n+1), A340702(n+1))`
-/

namespace A340704.P2085980689267477822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A340700 (n + 1)).toNat (A340702 (n + 1)).toNat

end

end A340704.P2085980689267477822

/-! ## A340704.P3209935188381336652

`val(A340701(n+1)-A340706(n+1), A340702(n+1))`
-/

namespace A340704.P3209935188381336652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A340701 (n + 1) - A340706 (n + 1)).toNat (A340702 (n + 1)).toNat

end

end A340704.P3209935188381336652

/-! ## A340704.P8408297769996950905

`val(A340703(n+1)^A340705(n+1)-A340706(n+1), ∏{p}[A340700(n+1), #])`
-/

namespace A340704.P8408297769996950905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340700 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((A340703 (n + 1) : ℚ) ^ (A340705 (n + 1) : ℤ) - (A340706 (n + 1) : ℚ))).toNat (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A340704.P8408297769996950905

/-!
# A340705: Exponent of the upper member A340701 of a pair of adjacent perfect powers, both with exponents > 2.

The programs for A340705, there is no canonical definition to state claims against.
-/

/-! ## A340705.P7997094272100756335

`val(A340701(n+1), A340703(n+1))`
-/

namespace A340705.P7997094272100756335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A340701 (n + 1)).toNat (A340703 (n + 1)).toNat

end

end A340705.P7997094272100756335

/-! ## A340705.P13980378190174642384

`val(A340706(n+1)+A340700(n+1), A340703(n+1))`
-/

namespace A340705.P13980378190174642384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A340706 (n + 1) + A340700 (n + 1)).toNat (A340703 (n + 1)).toNat

end

end A340705.P13980378190174642384

/-!
# A340706: Difference between upper and lower member of a pair of adjacent perfect powers A340700 and A340701, both with exponents > 2.

The programs for A340706, there is no canonical definition to state claims against.
-/

/-! ## A340706.P10138100691381421072

`A340701(n+1)-A340700(n+1)`
-/

namespace A340706.P10138100691381421072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340701 (n + 1) - A340700 (n + 1)

end

end A340706.P10138100691381421072

/-! ## A340706.P12288286422511255761

`A340701(n+1)-A340702(n+1)^A340704(n+1)`
-/

namespace A340706.P12288286422511255761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340701 (n + 1) : ℚ) - (A340702 (n + 1) : ℚ) ^ (A340704 (n + 1) : ℤ)

end

end A340706.P12288286422511255761

/-! ## A340706.P3900261604164898043

`A340703(n+1)^A340705(n+1)-A340700(n+1)`
-/

namespace A340706.P3900261604164898043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340703 (n + 1) : ℚ) ^ (A340705 (n + 1) : ℤ) - (A340700 (n + 1) : ℚ)

end

end A340706.P3900261604164898043

/-! ## A340706.P11291976142894541761

`A340701(n+1)%(A340700(n+1)/A340702(n+1))`
-/

namespace A340706.P11291976142894541761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340701 (n + 1)) (SequenceMachineLib.roundAway ((A340700 (n + 1) : ℚ) / (A340702 (n + 1) : ℚ)))

end

end A340706.P11291976142894541761

/-! ## A340706.P14172958487203161011

`lcm(A340701(n+1), A340703(n+1))%A340700(n+1)`
-/

namespace A340706.P14172958487203161011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lcm (A340701 (n + 1)) (A340703 (n + 1)) : ℤ) (A340700 (n + 1))

end

end A340706.P14172958487203161011

/-!
# A340707: a(n) = (prevprime(2^n) + nextprime(2^n))/2 - 2^n where prevprime(n) = A151799(n) and nextprime(n) = A151800(n).

The programs for A340707, there is no canonical definition to state claims against.
-/

/-! ## A340707.P5153468553302078979

`(A013597(n+2)-A013603(n+2))/2`
-/

namespace A340707.P5153468553302078979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013597 (n + 2) - A013603 (n + 2) : ℚ) / 2

end

end A340707.P5153468553302078979

/-! ## A340707.P980587091795293600

`A013597(n+2)-A058249(n+2)/2`
-/

namespace A340707.P980587091795293600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013597 (n + 2) : ℚ) - (A058249 (n + 2) : ℚ) / 2

end

end A340707.P980587091795293600

/-! ## A340707.P5086550876590176331

`A058249(n+2)/2-A013603(n+2)`
-/

namespace A340707.P5086550876590176331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058249 (n + 2) : ℚ) / 2 - (A013603 (n + 2) : ℚ)

end

end A340707.P5086550876590176331

/-! ## A340707.P13804118725018970411

`(A092131(n+2)-A013603(n+2))/2`
-/

namespace A340707.P13804118725018970411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092131 (n + 2) - A013603 (n + 2) : ℚ) / 2

end

end A340707.P13804118725018970411

/-! ## A340707.P7398273162047903550

`A092131(n+2)-A058249(n+2)/2`
-/

namespace A340707.P7398273162047903550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092131 (n + 2) : ℚ) - (A058249 (n + 2) : ℚ) / 2

end

end A340707.P7398273162047903550

/-! ## A340707.P2587393129718685764

`A013597(n+2)-A014682(A058249(n+2))`
-/

namespace A340707.P2587393129718685764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 (n + 2) - A014682 (A058249 (n + 2)).toNat

end

end A340707.P2587393129718685764

/-!
# A340708: Maximum denominator of resistances obtained by an electrical network with n unit resistors.

The programs for A340708, there is no canonical definition to state claims against.
-/

/-! ## A340708.P4382572246741970620

`A344650(n)+A326534(A204631(n))`
-/

namespace A340708.P4382572246741970620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344650 n + A326534 (A204631 n).toNat

end

end A340708.P4382572246741970620

/-! ## A340708.P11406360705792961874

`A176845(A018146(n))`
-/

namespace A340708.P11406360705792961874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176845 (A018146 n).toNat

end

end A340708.P11406360705792961874

/-! ## A340708.P14627686393691071465

`A325400(A018067(n))`
-/

namespace A340708.P14627686393691071465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325400 (A018067 n).toNat

end

end A340708.P14627686393691071465

/-! ## A340708.P9779274635573863222

`A387584(A018175(n))`
-/

namespace A340708.P9779274635573863222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387584 (A018175 n).toNat

end

end A340708.P9779274635573863222

/-! ## A340708.P13887639653515220098

`A365737(A060816(n)+n)`
-/

namespace A340708.P13887639653515220098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365737 (A060816 n + (n : ℤ)).toNat

end

end A340708.P13887639653515220098

/-!
# A340709: Let k = n/2 + floor(n/4) if n is even, otherwise (3n+1)/2; then a(n) = A093545(k).

The programs for A340709, the canonical program `A340709.P15672028804283203266` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340709 has offset 0).

The definition of A340709 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093545, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340709.P15672028804283203266

`A093545(A342131(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A340709

/-- `A093545(A342131(n))` -/
def P15672028804283203266.Spec : Prop :=
  ∀ n, P15672028804283203266.a n = A340709 n

theorem P15672028804283203266.correct : P15672028804283203266.Spec := by
  intro n
  simp only [A340709]

end A340709

/-! ## A340709.P12324351989365091054

`floor(A047208(n+1)/(3-∑[(-1)^n]))`
-/

namespace A340709.P12324351989365091054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A047208 (n + 1) : ℚ) / ((3 - ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A340709.P12324351989365091054

namespace A340709

/-- `floor(A047208(n+1)/(3-∑[(-1)^n]))` -/
def P12324351989365091054.Spec : Prop :=
  ∀ n, P12324351989365091054.a n = A340709 n

end A340709

/-! ## A340709.P16625057066705818514

`round(A036666(n+1)/A080512(n+1))`
-/

namespace A340709.P16625057066705818514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A036666 (n + 1) : ℚ) / (A080512 (n + 1) : ℚ))

end

end A340709.P16625057066705818514

namespace A340709

/-- `round(A036666(n+1)/A080512(n+1))` -/
def P16625057066705818514.Spec : Prop :=
  ∀ n, P16625057066705818514.a n = A340709 n

end A340709

/-! ## A340709.P7004344033285972762

`ceil(A273368(n)/(2*A195013(n+1)))`
-/

namespace A340709.P7004344033285972762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A273368 n : ℚ) / (2 * A195013 (n + 1) : ℚ)⌉

end

end A340709.P7004344033285972762

namespace A340709

/-- `ceil(A273368(n)/(2*A195013(n+1)))` -/
def P7004344033285972762.Spec : Prop :=
  ∀ n, P7004344033285972762.a n = A340709 n

end A340709

/-! ## A340709.P8154421681596235616

`A093545(A006368(n+1)-1)`
-/

namespace A340709.P8154421681596235616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093545 (A006368 (n + 1) - 1).toNat

end

end A340709.P8154421681596235616

namespace A340709

/-- `A093545(A006368(n+1)-1)` -/
def P8154421681596235616.Spec : Prop :=
  ∀ n, P8154421681596235616.a n = A340709 n

end A340709

/-! ## A340709.P14291820613002795496

`ceil(A273368(n)/A005843(A195013(n+1)))`
-/

namespace A340709.P14291820613002795496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A273368 n : ℚ) / (A005843 (A195013 (n + 1)).toNat : ℚ)⌉

end

end A340709.P14291820613002795496

namespace A340709

/-- `ceil(A273368(n)/A005843(A195013(n+1)))` -/
def P14291820613002795496.Spec : Prop :=
  ∀ n, P14291820613002795496.a n = A340709 n

end A340709

/-! ## A340709.P3586975086339162146

`A008615(8*n-A006370(n))`
-/

namespace A340709.P3586975086339162146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 ((8 * n : ℤ) - A006370 n).toNat

end

end A340709.P3586975086339162146

namespace A340709

/-- `A008615(8*n-A006370(n))` -/
def P3586975086339162146.Spec : Prop :=
  ∀ n, P3586975086339162146.a n = A340709 n

end A340709

/-! ## A340709.P627840012301259423

`A008615(A195140(n)+A008579(n))`
-/

namespace A340709.P627840012301259423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A195140 n + A008579 n).toNat

end

end A340709.P627840012301259423

namespace A340709

/-- `A008615(A195140(n)+A008579(n))` -/
def P627840012301259423.Spec : Prop :=
  ∀ n, P627840012301259423.a n = A340709 n

end A340709

/-! ## A340709.P12228973913303817405

`A008615(A296910(n)+A195159(n))`
-/

namespace A340709.P12228973913303817405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A296910 n + A195159 n).toNat

end

end A340709.P12228973913303817405

namespace A340709

/-- `A008615(A296910(n)+A195159(n))` -/
def P12228973913303817405.Spec : Prop :=
  ∀ n, P12228973913303817405.a n = A340709 n

end A340709

/-! ## A340709.P12924151593428488890

`A008615(Δ[A032769(2*(n+1))]*A032769(2*n+1))`
-/

namespace A340709.P12924151593428488890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032769 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 ((f1 (n + 1) - f1 n) * A032769 (2 * n + 1)).toNat

end

end A340709.P12924151593428488890

namespace A340709

/-- `A008615(Δ[A032769(2*(n+1))]*A032769(2*n+1))` -/
def P12924151593428488890.Spec : Prop :=
  ∀ n, P12924151593428488890.a n = A340709 n

end A340709

/-! ## A340709.P15583707400784831495

`ceil(A005843(A085787(n))/A195013(n+1))`
-/

namespace A340709.P15583707400784831495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005843 (A085787 n).toNat : ℚ) / (A195013 (n + 1) : ℚ)⌉

end

end A340709.P15583707400784831495

namespace A340709

/-- `ceil(A005843(A085787(n))/A195013(n+1))` -/
def P15583707400784831495.Spec : Prop :=
  ∀ n, P15583707400784831495.a n = A340709 n

end A340709

/-!
# A340714: a(n) is the sum of (n-2*j) for j < n/2 coprime to n.

The programs for A340714, the canonical program `A340714.P5712239063157682719` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340714 has offset 1).

The definition of A340714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340714.P3338404580507295705

`(2*A124440(n+1))%A023896(n+1)`
-/

namespace A340714.P3338404580507295705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A124440 (n + 1)) (A023896 (n + 1))

end

end A340714.P3338404580507295705

namespace A340714

/-- `(2*A124440(n+1))%A023896(n+1)` -/
def P3338404580507295705.Spec : Prop :=
  ∀ n, P3338404580507295705.a n = A340714 (n + 1)

end A340714

/-! ## A340714.P5712239063157682719

`∑{d}[n+1, A002620(#-1)*A055615((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A340714

/-- `∑{d}[n+1, A002620(#-1)*A055615((n+1)/#)]` -/
def P5712239063157682719.Spec : Prop :=
  ∀ n, P5712239063157682719.a n = A340714 (n + 1)

theorem P5712239063157682719.correct : P5712239063157682719.Spec := by
  intro n
  simp only [A340714, Nat.add_sub_cancel]

end A340714

/-! ## A340714.P13078295333925421389

`(A066840(n+1)-A124440(n+1))*A057428(n)`
-/

namespace A340714.P13078295333925421389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A066840 (n + 1) - A124440 (n + 1)) * A057428 n

end

end A340714.P13078295333925421389

namespace A340714

/-- `(A066840(n+1)-A124440(n+1))*A057428(n)` -/
def P13078295333925421389.Spec : Prop :=
  ∀ n, P13078295333925421389.a n = A340714 (n + 1)

end A340714

/-! ## A340714.P17166772930804591507

`(A124440(n+1)-A066840(n+1))%A008440(n)`
-/

namespace A340714.P17166772930804591507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124440 (n + 1) - A066840 (n + 1)) (A008440 n)

end

end A340714.P17166772930804591507

namespace A340714

/-- `(A124440(n+1)-A066840(n+1))%A008440(n)` -/
def P17166772930804591507.Spec : Prop :=
  ∀ n, P17166772930804591507.a n = A340714 (n + 1)

end A340714

/-! ## A340714.P960739218282416489

`A124440(n+1)%A008453(n)-A066840(n+1)`
-/

namespace A340714.P960739218282416489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124440 (n + 1)) (A008453 n) - A066840 (n + 1)

end

end A340714.P960739218282416489

namespace A340714

/-- `A124440(n+1)%A008453(n)-A066840(n+1)` -/
def P960739218282416489.Spec : Prop :=
  ∀ n, P960739218282416489.a n = A340714 (n + 1)

end A340714

/-! ## A340714.P17742589264930356279

`A005843(A124440(n+1))%A023896(n+1)`
-/

namespace A340714.P17742589264930356279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A124440 (n + 1)).toNat) (A023896 (n + 1))

end

end A340714.P17742589264930356279

namespace A340714

/-- `A005843(A124440(n+1))%A023896(n+1)` -/
def P17742589264930356279.Spec : Prop :=
  ∀ n, P17742589264930356279.a n = A340714 (n + 1)

end A340714

/-!
# A340716: Lexicographically earliest sequence of positive integers with as many distinct values as possible such that for any n > 0, a(n + pi(n)) = a(n) (where pi(n) = A000720(n) corresponds to the number of prime numbers <= n).

The programs for A340716, there is no canonical definition to state claims against.
-/

/-! ## A340716.P10382243568858982673

`∑{e}[A005010(n), A194976(#)]`
-/

namespace A340716.P10382243568858982673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A194976 (Nat.factorization (f1 n).natAbs p)

end

end A340716.P10382243568858982673

/-! ## A340716.P14929337003214780117

`∑{e}[A005015(n), A194976(#)]`
-/

namespace A340716.P14929337003214780117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A194976 (Nat.factorization (f1 n).natAbs p)

end

end A340716.P14929337003214780117

/-! ## A340716.P9908893364084510519

`∑{e}[A005010(n), A195082(#)]`
-/

namespace A340716.P9908893364084510519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A195082 (Nat.factorization (f1 n).natAbs p)

end

end A340716.P9908893364084510519

/-! ## A340716.P3588858421310761031

`A195097(A080036(n)+A015161(n))`
-/

namespace A340716.P3588858421310761031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195097 (A080036 n + A015161 n).toNat

end

end A340716.P3588858421310761031

/-! ## A340716.P14119920211409604268

`A195097(or(A015161(n), A080036(n)))`
-/

namespace A340716.P14119920211409604268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195097 (Int.lor (A015161 n) (A080036 n)).toNat

end

end A340716.P14119920211409604268

/-!
# A340717: Lexicographically earliest sequence of nonnegative integers with as many distinct values as possible such that for any n >= 0, a(rev(n)) = a(n) (where rev(n) = A030101(n) corresponds to the binary reversal of n).

The programs for A340717, there is no canonical definition to state claims against.
-/

/-! ## A340717.P11997024015300903809

`A323889(n)+A008683(A151800(n²))`
-/

namespace A340717.P11997024015300903809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323889 n + A008683 (A151800 (n ^ 2)).toNat

end

end A340717.P11997024015300903809

/-! ## A340717.P1954937613457208726

`A323889(n)-A266227(A046132(n+1))`
-/

namespace A340717.P1954937613457208726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323889 n - A266227 (A046132 (n + 1)).toNat

end

end A340717.P1954937613457208726

/-! ## A340717.P16170278180008793070

`A057918(A323889(n)²)`
-/

namespace A340717.P16170278180008793070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A323889 n ^ 2).toNat

end

end A340717.P16170278180008793070

/-! ## A340717.P3371716084657104588

`A259361(A323889(n)²)`
-/

namespace A340717.P3371716084657104588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A323889 n ^ 2).toNat

end

end A340717.P3371716084657104588

/-! ## A340717.P9521765602836556726

`A057918(A323889(2*n)*A323889(n))`
-/

namespace A340717.P9521765602836556726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A323889 (2 * n) * A323889 n).toNat

end

end A340717.P9521765602836556726

/-! ## A340717.P1377512313929043821

`A259361(A323889(2*n)*A323889(n))`
-/

namespace A340717.P1377512313929043821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A323889 (2 * n) * A323889 n).toNat

end

end A340717.P1377512313929043821

/-! ## A340717.P1794761836967988076

`A070198(n)%A323889(n)`
-/

namespace A340717.P1794761836967988076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A323889 n)

end

end A340717.P1794761836967988076

/-! ## A340717.P898669993128780888

`A079782(n+1)%A323889(n)`
-/

namespace A340717.P898669993128780888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A323889 n)

end

end A340717.P898669993128780888

/-! ## A340717.P13608183519239358525

`A083685(n+1)%A323889(n)`
-/

namespace A340717.P13608183519239358525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A323889 n)

end

end A340717.P13608183519239358525

/-! ## A340717.P12309446414251430527

`A121934(n+1)%A323889(n)`
-/

namespace A340717.P12309446414251430527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A323889 n)

end

end A340717.P12309446414251430527

/-! ## A340717.P4592510920437559156

`A323889(n)-A007318(∑[n]-n)`
-/

namespace A340717.P4592510920437559156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323889 n - A007318 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A340717.P4592510920437559156

/-! ## A340717.P6901367220188805749

`A323889(n)-A293377(eq[1, A293377(n)])`
-/

namespace A340717.P6901367220188805749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323889 n - A293377 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A340717.P6901367220188805749

/-! ## A340717.P7630284159110308250

`A030494(n+1)%A323889(n)`
-/

namespace A340717.P7630284159110308250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A323889 n)

end

end A340717.P7630284159110308250

/-! ## A340717.P2343225904623707655

`A072828(n+1)%A323889(n)`
-/

namespace A340717.P2343225904623707655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A323889 n)

end

end A340717.P2343225904623707655

/-!
# A340718: a(n) is the least k such that A340717(k) = n.

The programs for A340718, the canonical program `A340718.P5164710603548811233` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340718 has offset 0).

The definition of A340718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4224 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340718.P5302832829025609515

`lt[n, A264619(n)%(2*n+1)+1]`
-/

namespace A340718.P5302832829025609515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264619 n) (2 * n + 1 : ℤ) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A340718.P5302832829025609515

namespace A340718

/-- `lt[n, A264619(n)%(2*n+1)+1]` -/
def P5302832829025609515.Spec : Prop :=
  ∀ n, (P5302832829025609515.a n : ℤ) = A340718 n

end A340718

/-! ## A340718.P7023382078027471867

`lt[n, A264618(n)%(2^ceil(log2(n+1)))+1]`
-/

namespace A340718.P7023382078027471867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264618 n) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A340718.P7023382078027471867

namespace A340718

/-- `lt[n, A264618(n)%(2^ceil(log2(n+1)))+1]` -/
def P7023382078027471867.Spec : Prop :=
  ∀ n, (P7023382078027471867.a n : ℤ) = A340718 n

end A340718

/-! ## A340718.P13366824302666996242

`∪[A006995(n+1), A161601(n+1)]`
-/

namespace A340718.P13366824302666996242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340718.P13366824302666996242

namespace A340718

/-- `∪[A006995(n+1), A161601(n+1)]` -/
def P13366824302666996242.Spec : Prop :=
  ∀ n, (P13366824302666996242.a n : ℤ) = A340718 n

end A340718

/-! ## A340718.P18200766771795843171

`lt[n, A151800(A264619(n)%(2*n+1))]`
-/

namespace A340718.P18200766771795843171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (Int.tmod (A264619 n) (2 * n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A340718.P18200766771795843171

namespace A340718

/-- `lt[n, A151800(A264619(n)%(2*n+1))]` -/
def P18200766771795843171.Spec : Prop :=
  ∀ n, (P18200766771795843171.a n : ℤ) = A340718 n

end A340718

/-! ## A340718.P14269231662238436709

`record[A325401(n)]`
-/

namespace A340718.P14269231662238436709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340718.P14269231662238436709

namespace A340718

/-- `record[A325401(n)]` -/
def P14269231662238436709.Spec : Prop :=
  ∀ n, P14269231662238436709.a n = A340718 n

end A340718

/-! ## A340718.P5164710603548811233

`lt[A055945(n), 1]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A340718

/-- `lt[A055945(n), 1]` -/
def P5164710603548811233.Spec : Prop :=
  ∀ n, (P5164710603548811233.a n : ℤ) = A340718 n

theorem P5164710603548811233.correct : P5164710603548811233.Spec := by
  intro n
  simp only [A340718]

end A340718

/-! ## A340718.P1306719057562499443

`lt[n-1, xor(n, A175919(n))]`
-/

namespace A340718.P1306719057562499443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A175919 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A340718.P1306719057562499443

namespace A340718

/-- `lt[n-1, xor(n, A175919(n))]` -/
def P1306719057562499443.Spec : Prop :=
  ∀ n, (P1306719057562499443.a n : ℤ) = A340718 n

end A340718

/-! ## A340718.P1525649241244828570

`eq[n, A331166(A093411(n))]`
-/

namespace A340718.P1525649241244828570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331166 (A093411 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340718.P1525649241244828570

namespace A340718

/-- `eq[n, A331166(A093411(n))]` -/
def P1525649241244828570.Spec : Prop :=
  ∀ n, (P1525649241244828570.a n : ℤ) = A340718 n

end A340718

/-! ## A340718.P1377929802871908905

`A325401(eq[n, A325401(n)])`
-/

namespace A340718.P1377929802871908905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A340718.P1377929802871908905

namespace A340718

/-- `A325401(eq[n, A325401(n)])` -/
def P1377929802871908905.Spec : Prop :=
  ∀ n, P1377929802871908905.a n = A340718 n

end A340718

/-! ## A340718.P4398331289925236690

`A325401(lt[n, A325401(n)+1])`
-/

namespace A340718.P4398331289925236690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A340718.P4398331289925236690

namespace A340718

/-- `A325401(lt[n, A325401(n)+1])` -/
def P4398331289925236690.Spec : Prop :=
  ∀ n, P4398331289925236690.a n = A340718 n

end A340718

/-! ## A340718.P15277659871732779804

`A325401(lt[n-1, A325401(n)])`
-/

namespace A340718.P15277659871732779804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A340718.P15277659871732779804

namespace A340718

/-- `A325401(lt[n-1, A325401(n)])` -/
def P15277659871732779804.Spec : Prop :=
  ∀ n, P15277659871732779804.a n = A340718 n

end A340718

/-! ## A340718.P4929252848442471539

`comp[A161602(n+1)]`
-/

namespace A340718.P4929252848442471539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A340718.P4929252848442471539

namespace A340718

/-- `comp[A161602(n+1)]` -/
def P4929252848442471539.Spec : Prop :=
  ∀ n, (P4929252848442471539.a n : ℤ) = A340718 n

end A340718

/-! ## A340718.P4287481532247334666

`lt[n, A030101(n)+1]`
-/

namespace A340718.P4287481532247334666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A340718.P4287481532247334666

namespace A340718

/-- `lt[n, A030101(n)+1]` -/
def P4287481532247334666.Spec : Prop :=
  ∀ n, (P4287481532247334666.a n : ℤ) = A340718 n

end A340718

/-! ## A340718.P12341741888110760742

`record[A331166(A030101(n))]`
-/

namespace A340718.P12341741888110760742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331166 (A030101 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340718.P12341741888110760742

namespace A340718

/-- `record[A331166(A030101(n))]` -/
def P12341741888110760742.Spec : Prop :=
  ∀ n, P12341741888110760742.a n = A340718 n

end A340718

/-! ## A340718.P17002500268419811959

`eq[A022998(n), A331166(n)]`
-/

namespace A340718.P17002500268419811959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331166 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A340718.P17002500268419811959

namespace A340718

/-- `eq[A022998(n), A331166(n)]` -/
def P17002500268419811959.Spec : Prop :=
  ∀ n, (P17002500268419811959.a n : ℤ) = A340718 n

end A340718

/-! ## A340718.P6415166163057655498

`eq[A030101(n), A325402(n)]`
-/

namespace A340718.P6415166163057655498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325402 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A340718.P6415166163057655498

namespace A340718

/-- `eq[A030101(n), A325402(n)]` -/
def P6415166163057655498.Spec : Prop :=
  ∀ n, (P6415166163057655498.a n : ℤ) = A340718 n

end A340718

/-! ## A340718.P14617128753876223220

`eq[n, A331166(A026741(n))]`
-/

namespace A340718.P14617128753876223220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331166 (A026741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340718.P14617128753876223220

namespace A340718

/-- `eq[n, A331166(A026741(n))]` -/
def P14617128753876223220.Spec : Prop :=
  ∀ n, (P14617128753876223220.a n : ℤ) = A340718 n

end A340718

/-! ## A340718.P2748269573157647024

`eq[A065530(n), A331166(n)]`
-/

namespace A340718.P2748269573157647024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065530 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331166 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A340718.P2748269573157647024

namespace A340718

/-- `eq[A065530(n), A331166(n)]` -/
def P2748269573157647024.Spec : Prop :=
  ∀ n, (P2748269573157647024.a n : ℤ) = A340718 n

end A340718

/-! ## A340718.P9186585758713091692

`eq[A065679(n), A331166(n)]`
-/

namespace A340718.P9186585758713091692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065679 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331166 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A340718.P9186585758713091692

namespace A340718

/-- `eq[A065679(n), A331166(n)]` -/
def P9186585758713091692.Spec : Prop :=
  ∀ n, (P9186585758713091692.a n : ℤ) = A340718 n

end A340718

/-! ## A340718.P12595974357147934526

`eq[n, A331166(A093048(n))]`
-/

namespace A340718.P12595974357147934526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331166 (A093048 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340718.P12595974357147934526

namespace A340718

/-- `eq[n, A331166(A093048(n))]` -/
def P12595974357147934526.Spec : Prop :=
  ∀ n, (P12595974357147934526.a n : ℤ) = A340718 n

end A340718

/-!
# A340719: Number of partitions of n into 8 distinct and relatively prime parts.

The programs for A340719, there is no canonical definition to state claims against.
-/

/-! ## A340719.P4663887017278090365

`A008637(n)-A014154(5*A054252(n))²`
-/

namespace A340719.P4663887017278090365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008637 n - A014154 (5 * A054252 n).toNat ^ 2

end

end A340719.P4663887017278090365

/-! ## A340719.P12982162366650288012

`A008637(n)-A014154(lcm(5, A054252(n)))²`
-/

namespace A340719.P12982162366650288012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008637 n - A014154 (Int.lcm 5 (A054252 n)) ^ 2

end

end A340719.P12982162366650288012

/-! ## A340719.P4437165938291125962

`A008637(n)-(A178780(A004277(n))*A178780(n))²`
-/

namespace A340719.P4437165938291125962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008637 n - (A178780 (A004277 n).toNat * A178780 n) ^ 2

end

end A340719.P4437165938291125962

/-! ## A340719.P8394604880732182443

`A008637(n)-(A151878(A183917(n+1))-A178780(n))²`
-/

namespace A340719.P8394604880732182443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008637 n - (A151878 (A183917 (n + 1)).toNat - A178780 n) ^ 2

end

end A340719.P8394604880732182443

/-! ## A340719.P6120352937295879248

`A008637(n)-A102683(A253852(n))`
-/

namespace A340719.P6120352937295879248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008637 n - A102683 (A253852 n).toNat

end

end A340719.P6120352937295879248

/-!
# A340727: a(n) is the smallest integer that can be written as a product of n distinct integers > 1 in at least two different ways.

The programs for A340727, there is no canonical definition to state claims against.
-/

/-! ## A340727.P18376077377858277691

`A332559(n+3)*A347188(A000045(n+3))`
-/

namespace A340727.P18376077377858277691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332559 (n + 3) * A347188 (A000045 (n + 3)).toNat

end

end A340727.P18376077377858277691

/-! ## A340727.P15232772184400111619

`2*A109099(A000607(3*n+4))`
-/

namespace A340727.P15232772184400111619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109099 (A000607 (3 * n + 4)).toNat

end

end A340727.P15232772184400111619

/-!
# A340728: a(n) is the number of divisors d of n such that n/d - d is prime.

The programs for A340728, there is no canonical definition to state claims against.
-/

/-! ## A340728.P1885967330722524237

`A070032(A116699(n+1))%A070032(n+1)`
-/

namespace A340728.P1885967330722524237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070032 (A116699 (n + 1)).toNat) (A070032 (n + 1))

end

end A340728.P1885967330722524237

/-! ## A340728.P11936232834217061076

`A001221(gcd(A007920(n), A069860(n+1)))`
-/

namespace A340728.P11936232834217061076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A007920 n) (A069860 (n + 1)))

end

end A340728.P11936232834217061076

/-! ## A340728.P16020566220359811305

`A343030(A102998(n+1)%(n+2))`
-/

namespace A340728.P16020566220359811305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 (Int.tmod (A102998 (n + 1)) (n + 2 : ℤ)).toNat

end

end A340728.P16020566220359811305

/-! ## A340728.P631895781727622519

`A287520(gcd(comp[2*n+3], A112863(3*n+1)))`
-/

namespace A340728.P631895781727622519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287520 (Int.gcd (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A112863 (3 * n + 1)))

end

end A340728.P631895781727622519

/-! ## A340728.P14153878764879983155

`A240208(3*n+1)%A347205(comp[n*n%2+3])`
-/

namespace A340728.P14153878764879983155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2) + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240208 (3 * n + 1)) (A347205 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A340728.P14153878764879983155

/-!
# A340729: a(n) is the least k such that there are exactly n divisors d of k for which k/d-d is prime.

The programs for A340729, there is no canonical definition to state claims against.
-/

/-! ## A340729.P8430198050640845570

`A392071(A393680(n))`
-/

namespace A340729.P8430198050640845570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392071 (A393680 n).toNat

end

end A340729.P8430198050640845570

/-! ## A340729.P14506870264022161694

`∑[A003987(floor(A001348(n+1)/2))]`
-/

namespace A340729.P14506870264022161694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 ⌊(A001348 (n + 1) : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340729.P14506870264022161694

/-!
# A340731: Numbers k such that A067439(k) is prime.

The programs for A340731, there is no canonical definition to state claims against.
-/

/-! ## A340731.P12715064888874444875

`lt[A007318(n), A332083(A087980(n+1))]`
-/

namespace A340731.P12715064888874444875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332083 (A087980 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A340731.P12715064888874444875

/-! ## A340731.P13995013282026390447

`lt[A222266(n+1), A332083(A087980(n+1))]`
-/

namespace A340731.P13995013282026390447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332083 (A087980 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A340731.P13995013282026390447

/-! ## A340731.P3330153481962110420

`lt[A332055(n+1), A332083(A087980(n+1))]`
-/

namespace A340731.P3330153481962110420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332083 (A087980 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A340731.P3330153481962110420

/-!
# A340732: Number of partitions of n into 4 parts such that the product of the smallest and largest parts is equal to the product of the middle two parts.

The programs for A340732, there is no canonical definition to state claims against.
-/

/-! ## A340732.P9063746008835674485

`A025075(A284464(n))`
-/

namespace A340732.P9063746008835674485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025075 (A284464 n).toNat

end

end A340732.P9063746008835674485

/-! ## A340732.P416870650981311238

`A333805(A005229(n+1)^A082023(n))`
-/

namespace A340732.P416870650981311238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333805 (SequenceMachineLib.roundAway ((A005229 (n + 1) : ℚ) ^ (A082023 n : ℤ))).toNat

end

end A340732.P416870650981311238

/-! ## A340732.P9283622042907262930

`(A240868(3*(n+1))+A077468(3*n+5))%A144372(A145154(n))`
-/

namespace A340732.P9283622042907262930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240868 (3 * (n + 1)) + A077468 (3 * n + 5)) (A144372 (A145154 n).toNat)

end

end A340732.P9283622042907262930

/-! ## A340732.P4103673350523554495

`A333750(3^A325332(n))`
-/

namespace A340732.P4103673350523554495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333750 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A325332 n : ℤ))).toNat

end

end A340732.P4103673350523554495

/-! ## A340732.P2899614040901676104

`A316523(C(A120641(n), A023895(n)))`
-/

namespace A340732.P2899614040901676104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316523 (Nat.choose (A120641 n).toNat (A023895 n).toNat)

end

end A340732.P2899614040901676104

/-!
# A340734: Number of partitions of 2n into 4 parts that divide 2n.

The programs for A340734, there is no canonical definition to state claims against.
-/

/-! ## A340734.P13135047746209201786

`A356915(round(1/acot(n))+n)`
-/

namespace A340734.P13135047746209201786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356915 (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + (n : ℤ)).toNat

end

end A340734.P13135047746209201786

/-! ## A340734.P324654515520412545

`A356915(comp[2*(n+1)]+1)`
-/

namespace A340734.P324654515520412545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356915 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A340734.P324654515520412545

/-!
# A340735: a(n) is the smallest positive integer that begins a run of exactly 2*n-1 consecutive integers having at least 4 divisors each.

The programs for A340735, there is no canonical definition to state claims against.
-/

/-! ## A340735.P7191348420357836019

`A004016(A026303(n))+8*n²`
-/

namespace A340735.P7191348420357836019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (A026303 n).toNat + (8 * n ^ 2 : ℤ)

end

end A340735.P7191348420357836019

/-!
# A340736: Prime values in A067439, in the order in which they appear.

The programs for A340736, there is no canonical definition to state claims against.
-/

/-! ## A340736.P1965820751775782773

`A067439(A340731(n+1))`
-/

namespace A340736.P1965820751775782773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067439 (A340731 (n + 1)).toNat

end

end A340736.P1965820751775782773

/-! ## A340736.P18222784300426341372

`p?[A067439(n+1)]`
-/

namespace A340736.P18222784300426341372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A340736.P18222784300426341372

/-! ## A340736.P4624032539719112902

`p?[Δ[A072481(n)]-A072514(n+1)]`
-/

namespace A340736.P4624032539719112902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072481 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A072514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A340736.P4624032539719112902

/-! ## A340736.P5477304858069797678

`p?[A004125(n+1)-A072514(n+1)]`
-/

namespace A340736.P5477304858069797678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (n + 1) - A072514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A340736.P5477304858069797678

/-! ## A340736.P16295038109148864992

`p?[∑[A235796(n+1)]-A072514(n+1)]`
-/

namespace A340736.P16295038109148864992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A072514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A340736.P16295038109148864992

/-! ## A340736.P15919558013623975850

`p?[A000217(n)-(A153485(n+1)+A072514(n+1))]`
-/

namespace A340736.P15919558013623975850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - (A153485 (n + 1) + A072514 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A340736.P15919558013623975850

/-! ## A340736.P4318796686149987351

`filter[A067439(n+3), A010051(#)]`
-/

namespace A340736.P4318796686149987351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067439 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A340736.P4318796686149987351

/-! ## A340736.P18237636693449852840

`p?[A014682(A067436(n+1))-A072514(n+1)]`
-/

namespace A340736.P18237636693449852840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A067436 (n + 1)).toNat - A072514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A340736.P18237636693449852840

/-!
# A340737: Numerators of a sequence of fractions converging to e.

The programs for A340737, there is no canonical definition to state claims against.
-/

/-! ## A340737.P14810591644304467759

`round(e*A340738(n+1))`
-/

namespace A340737.P14810591644304467759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 * (A340738 (n + 1) : ℝ))

end

end A340737.P14810591644304467759

/-! ## A340737.P5909128897807566848

`A006258(A181385(n+3))`
-/

namespace A340737.P5909128897807566848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006258 (A181385 (n + 3)).toNat

end

end A340737.P5909128897807566848

/-! ## A340737.P7649395752127485808

`A006258(A035106(n+2)+1)`
-/

namespace A340737.P7649395752127485808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006258 (A035106 (n + 2) + 1).toNat

end

end A340737.P7649395752127485808

/-! ## A340737.P10059454284323809160

`A006258(A184676(n+1)+2)`
-/

namespace A340737.P10059454284323809160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006258 (A184676 (n + 1) + 2).toNat

end

end A340737.P10059454284323809160

/-! ## A340737.P5321845096577102305

`round(e*A006259(A184676(n+1)+2))`
-/

namespace A340737.P5321845096577102305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 * (A006259 (A184676 (n + 1) + 2).toNat : ℝ))

end

end A340737.P5321845096577102305

/-!
# A340738: Denominator of a sequence of fractions converging to e.

The programs for A340738, there is no canonical definition to state claims against.
-/

/-! ## A340738.P2356521235844854629

`A006259(A181385(n+3))`
-/

namespace A340738.P2356521235844854629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006259 (A181385 (n + 3)).toNat

end

end A340738.P2356521235844854629

/-! ## A340738.P9829523480118490527

`A006259(A184676(n+1)+2)`
-/

namespace A340738.P9829523480118490527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006259 (A184676 (n + 1) + 2).toNat

end

end A340738.P9829523480118490527

/-! ## A340738.P10721062780305260185

`round(A006258(A035106(n+2)+1)/e)`
-/

namespace A340738.P10721062780305260185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A006258 (A035106 (n + 2) + 1).toNat : ℝ) / Real.exp 1)

end

end A340738.P10721062780305260185

/-! ## A340738.P16878727947691755211

`round(A006258(A184676(n+1)+2)/e)`
-/

namespace A340738.P16878727947691755211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A006258 (A184676 (n + 1) + 2).toNat : ℝ) / Real.exp 1)

end

end A340738.P16878727947691755211

/-! ## A340738.P12253440962591804709

`round(A340737(n+1)/e)`
-/

namespace A340738.P12253440962591804709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A340737 (n + 1) : ℝ) / Real.exp 1)

end

end A340738.P12253440962591804709

/-!
# A340739: The stopping time sequence for the 3x+1 function, restricted to its range and adjusted. Each term is the number of iterations of the function until it decreases.

The programs for A340739, there is no canonical definition to state claims against.
-/

/-! ## A340739.P4160781052145441242

`A122458(A047270(n+1))`
-/

namespace A340739.P4160781052145441242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122458 (A047270 (n + 1)).toNat

end

end A340739.P4160781052145441242

/-! ## A340739.P2328937180890433835

`A122458(or(1, A016789(n)))`
-/

namespace A340739.P2328937180890433835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122458 (Int.lor 1 (A016789 n)).toNat

end

end A340739.P2328937180890433835

/-! ## A340739.P10115784994757959719

`A122458(A047235(n+1)+1)`
-/

namespace A340739.P10115784994757959719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122458 (A047235 (n + 1) + 1).toNat

end

end A340739.P10115784994757959719

/-! ## A340739.P7061565496054821394

`A122458(A008585(n+1)-and(1, n))`
-/

namespace A340739.P7061565496054821394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122458 (A008585 (n + 1) - (Nat.land 1 n : ℤ)).toNat

end

end A340739.P7061565496054821394

/-! ## A340739.P574639366676527581

`A122458(A008585(n+1)-Δ[A004526(n)])`
-/

namespace A340739.P574639366676527581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122458 (A008585 (n + 1) - (f1 (n + 1) - f1 n)).toNat

end

end A340739.P574639366676527581

/-! ## A340739.P6752155785164649573

`A122458(eq[A098486(n+1), A123167(n+1)])`
-/

namespace A340739.P6752155785164649573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122458 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A340739.P6752155785164649573

/-! ## A340739.P1697323845173638884

`A122458(A122458((n+1)*(n+1))+A016777(n))`
-/

namespace A340739.P1697323845173638884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122458 (A122458 ((n + 1) * (n + 1)) + A016777 n).toNat

end

end A340739.P1697323845173638884

/-!
# A340742: Primes in A340740, in the order in which they occur.

The programs for A340742, there is no canonical definition to state claims against.
-/

/-! ## A340742.P11623266998504688311

`A340740(A340741(n+1))`
-/

namespace A340742.P11623266998504688311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340740 (A340741 (n + 1)).toNat

end

end A340742.P11623266998504688311

/-! ## A340742.P2837414823716529419

`p?[A340740(n+1)]`
-/

namespace A340742.P2837414823716529419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A340742.P2837414823716529419

/-! ## A340742.P11151744623351873780

`A028310(p?[A340740(1-(n-2*n))])`
-/

namespace A340742.P11151744623351873780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340740 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A340742.P11151744623351873780

/-! ## A340742.P17908863480303840515

`A039650(p?[A340740(1-(n-2*n))])`
-/

namespace A340742.P17908863480303840515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340740 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039650 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A340742.P17908863480303840515

/-! ## A340742.P13534636784110543529

`A039653(p?[A340740(1-(n-2*n))])`
-/

namespace A340742.P13534636784110543529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340740 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A340742.P13534636784110543529

/-!
# A340744: Primes in A340618, in the order in which they occur.

The programs for A340744, there is no canonical definition to state claims against.
-/

/-! ## A340744.P17575105862077557679

`A316650(A340618(n+1))`
-/

namespace A340744.P17575105862077557679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316650 (A340618 (n + 1)).toNat

end

end A340744.P17575105862077557679

/-! ## A340744.P5976604265544392997

`p?[A316650(n+1)]`
-/

namespace A340744.P5976604265544392997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A340744.P5976604265544392997

/-! ## A340744.P18330973780178000937

`filter[A316650(n+1), A010051(#)]`
-/

namespace A340744.P18330973780178000937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A340744.P18330973780178000937

/-! ## A340744.P12801149141389016252

`filter[A316650(n+1), A080339(#)]`
-/

namespace A340744.P12801149141389016252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A340744.P12801149141389016252

/-! ## A340744.P6841470360547001405

`filter[A316650(n+1), A080545(#)]`
-/

namespace A340744.P6841470360547001405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A340744.P6841470360547001405

/-! ## A340744.P16860811863017252350

`filter[A316650(n+1), A171387(#)]`
-/

namespace A340744.P16860811863017252350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A340744.P16860811863017252350

/-!
# A340745: a(n) is the number of "add the square" iterations required to reach or exceed 1 starting at 1/n.

The programs for A340745, there is no canonical definition to state claims against.
-/

/-! ## A340745.P1681307627503101567

`comp[3^n+n]`
-/

namespace A340745.P1681307627503101567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A340745.P1681307627503101567

/-! ## A340745.P3620120322613330934

`lt[char[3^n+n], 1]`
-/

namespace A340745.P3620120322613330934
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A340745.P3620120322613330934

/-! ## A340745.P10101334903003640379

`dr(∑[char[3^n]])+n`
-/

namespace A340745.P10101334903003640379
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + n

end

end A340745.P10101334903003640379

/-! ## A340745.P12885982812927233854

`∑[char[3^n]]%5+n`
-/

namespace A340745.P12885982812927233854
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 5 + n

end

end A340745.P12885982812927233854

/-! ## A340745.P567172260276270967

`and(∑[char[3^n]]+n, -1)`
-/

namespace A340745.P567172260276270967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ) (-1)

end

end A340745.P567172260276270967

/-! ## A340745.P17356747135241525365

`∑[∏{p}[n, val(#, 3)]]-1+n`
-/

namespace A340745.P17356747135241525365
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 + (n : ℤ)

end

end A340745.P17356747135241525365

/-! ## A340745.P4875503692341025625

`∑[char[3^val(n+1, 2)]]+n`
-/

namespace A340745.P4875503692341025625
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (n + 1) 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A340745.P4875503692341025625

/-! ## A340745.P12556940350630560689

`∑[char[3*a(n-1)]]+n` with `a(0)=1`
-/

namespace A340745.P12556940350630560689
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  3 * f2 (n - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A340745.P12556940350630560689

/-! ## A340745.P9487041183579428992

`A080342(n+1)+n`
-/

namespace A340745.P9487041183579428992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (n + 1) + (n : ℤ)

end

end A340745.P9487041183579428992

/-! ## A340745.P15394228236786442333

`ceil(log2(A081611(n))+n)`
-/

namespace A340745.P15394228236786442333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A081611 n : ℝ) + (n : ℝ)⌉

end

end A340745.P15394228236786442333

/-!
# A340746: Numbers in array A322744 that do not have a unique decomposition into numbers of A307002 and are not equal to A322744(n,k), n > 1, k in the sequence.

The programs for A340746, there is no canonical definition to state claims against.
-/

/-! ## A340746.P9552577402183388431

`A340747(∑[∏{e}[A207397(n)+1, #!]])`
-/

namespace A340746.P9552577402183388431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207397 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorial (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340747 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A340746.P9552577402183388431

/-! ## A340746.P14156896738386889410

`A340747(lt[A340754(n+2), A340764(2*n+1)])`
-/

namespace A340746.P14156896738386889410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340754 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340747 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A340746.P14156896738386889410

/-!
# A340749: Fermat weak pseudoprimes k to a base d, where d | k and 1 < d < k.

The programs for A340749, there is no canonical definition to state claims against.
-/

/-! ## A340749.P4028895667560304124

`lt[1, A371883(n+1)]+1`
-/

namespace A340749.P4028895667560304124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371883 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A340749.P4028895667560304124

/-! ## A340749.P2299646769959850263

`A324455(lt[A305466(n), A321905(3*n+2)])`
-/

namespace A340749.P2299646769959850263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305466 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321905 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324455 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A340749.P2299646769959850263

/-! ## A340749.P1782937450863033318

`A361102(lt[(n%2)^n, A265603(3*n+2)])`
-/

namespace A340749.P1782937450863033318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265603 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A340749.P1782937450863033318

/-! ## A340749.P3067389233680862060

`A024619(lt[A324886(n+5), A059802(n+1)])`
-/

namespace A340749.P3067389233680862060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324886 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A340749.P3067389233680862060

/-! ## A340749.P9807702176004289313

`A324455(A229300(n+1)%A270613(2*n+5))`
-/

namespace A340749.P9807702176004289313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324455 (Int.tmod (A229300 (n + 1)) (A270613 (2 * n + 5))).toNat

end

end A340749.P9807702176004289313

/-!
# A340750: Primes p such that the number of primes that divide p-q for at least one prime q < p is prime.

The programs for A340750, there is no canonical definition to state claims against.
-/

/-! ## A340750.P2750856164739016277

`p?[A114802(n+1)-A124449(n+1)]`
-/

namespace A340750.P2750856164739016277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114802 (n + 1) - A124449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A340750.P2750856164739016277

/-!
# A340752: a(n) is the least prime p such that there is at least one prime <= p in each congruence class mod prime(n).

The programs for A340752, there is no canonical definition to state claims against.
-/

/-! ## A340752.P11609843586856684161

`A038026(Δ[A007504(n)])`
-/

namespace A340752.P11609843586856684161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038026 (f1 (n + 1) - f1 n).toNat

end

end A340752.P11609843586856684161

/-! ## A340752.P12598098153701967821

`A038026(A000040(n+1))`
-/

namespace A340752.P12598098153701967821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038026 (A000040 (n + 1)).toNat

end

end A340752.P12598098153701967821

/-! ## A340752.P8160080679992447060

`A038026(A008578(n+2))`
-/

namespace A340752.P8160080679992447060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038026 (A008578 (n + 2)).toNat

end

end A340752.P8160080679992447060

/-! ## A340752.P5052387901031250919

`A038026(A182986(n+2))`
-/

namespace A340752.P5052387901031250919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038026 (A182986 (n + 2)).toNat

end

end A340752.P5052387901031250919

/-! ## A340752.P2334594244385271190

`A038026(eq[1, A003415(n)])`
-/

namespace A340752.P2334594244385271190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038026 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A340752.P2334594244385271190

/-! ## A340752.P1012201740915856566

`A038026(record[A006530(n+2)])`
-/

namespace A340752.P1012201740915856566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038026 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A340752.P1012201740915856566

/-! ## A340752.P14268277050616663776

`A038026(record[A014963(n+2)])`
-/

namespace A340752.P14268277050616663776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038026 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A340752.P14268277050616663776

/-! ## A340752.P6985035241236054902

`A038026(record[A020639(n+2)])`
-/

namespace A340752.P6985035241236054902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038026 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A340752.P6985035241236054902

/-! ## A340752.P17578006330389582495

`A038026(A006093(n+1)+1)`
-/

namespace A340752.P17578006330389582495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038026 (A006093 (n + 1) + 1).toNat

end

end A340752.P17578006330389582495

/-! ## A340752.P14043471588823323224

`A038026(A100484(n+1)/2)`
-/

namespace A340752.P14043471588823323224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038026 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A340752.P14043471588823323224

/-! ## A340752.P7238507825513467333

`A038026(record[A000010(n+1)+1])`
-/

namespace A340752.P7238507825513467333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038026 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A340752.P7238507825513467333

/-! ## A340752.P8621135012546428166

`A038026(A034694(A006093(n+1)))`
-/

namespace A340752.P8621135012546428166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038026 (A034694 (A006093 (n + 1)).toNat).toNat

end

end A340752.P8621135012546428166

/-! ## A340752.P17171337315894753236

`A038026(A007504(n+1)-A007504(n))`
-/

namespace A340752.P17171337315894753236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038026 (A007504 (n + 1) - A007504 n).toNat

end

end A340752.P17171337315894753236

/-! ## A340752.P12723507391303442571

`p?[A010051(n+1)*A038026(n+1)]`
-/

namespace A340752.P12723507391303442571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A038026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A340752.P12723507391303442571

/-! ## A340752.P3183940786219872258

`A038026(A077017(n+2))`
-/

namespace A340752.P3183940786219872258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038026 (A077017 (n + 2)).toNat

end

end A340752.P3183940786219872258

/-! ## A340752.P14413781745336721545

`A000040(A178215(n+1))`
-/

namespace A340752.P14413781745336721545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A178215 (n + 1)).toNat

end

end A340752.P14413781745336721545

/-! ## A340752.P15507360413333611626

`p?[A038026(n+2)*A078899(n+2)]`
-/

namespace A340752.P15507360413333611626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038026 (n + 2) * A078899 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A340752.P15507360413333611626

/-!
# A340756: Number of partitions of n into 4 semiprime parts.

The programs for A340756, there is no canonical definition to state claims against.
-/

/-! ## A340756.P7420944944170760114

`A025431(A295797(n+3)+2)`
-/

namespace A340756.P7420944944170760114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025431 (A295797 (n + 3) + 2).toNat

end

end A340756.P7420944944170760114

/-! ## A340756.P5844374424459738407

`A384781(A342335(n))+A131576(n+5)`
-/

namespace A340756.P5844374424459738407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384781 (A342335 n).toNat + A131576 (n + 5)

end

end A340756.P5844374424459738407

/-! ## A340756.P16511301941146416552

`A029377(eq[1, A286320(n)])`
-/

namespace A340756.P16511301941146416552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029377 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A340756.P16511301941146416552

/-! ## A340756.P972379105299903717

`A115623(3*A317877(n+1))`
-/

namespace A340756.P972379105299903717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115623 (3 * A317877 (n + 1)).toNat

end

end A340756.P972379105299903717

/-! ## A340756.P6917825825438425431

`A029197(n)%(A071072(n+1)-2)`
-/

namespace A340756.P6917825825438425431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029197 n) (A071072 (n + 1) - 2)

end

end A340756.P6917825825438425431

/-!
# A340759: Primes p such that 2*p+3*q is prime, where q is the next prime after p.

The programs for A340759, there is no canonical definition to state claims against.
-/

/-! ## A340759.P2441102933637902199

`eq[A282243(n+1), A323349(n)]`
-/

namespace A340759.P2441102933637902199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323349 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A340759.P2441102933637902199

/-! ## A340759.P11651692553601449118

`A301916(n+1)-A186685(A022553(n))`
-/

namespace A340759.P11651692553601449118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301916 (n + 1) - A186685 (A022553 n).toNat

end

end A340759.P11651692553601449118

/-! ## A340759.P8105010442880151105

`eq[A335405(n), A373833(A055105(n+1))]`
-/

namespace A340759.P8105010442880151105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335405 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373833 (A055105 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A340759.P8105010442880151105

/-! ## A340759.P9103578603078205402

`eq[A165413(A323050(n+1)), A323774(n)]`
-/

namespace A340759.P9103578603078205402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165413 (A323050 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323774 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A340759.P9103578603078205402

/-! ## A340759.P9791527741600629474

`A322394(A308197(n+1)%A076866(2*(n+2)))`
-/

namespace A340759.P9791527741600629474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322394 (Int.tmod (A308197 (n + 1)) (A076866 (2 * (n + 2)))).toNat

end

end A340759.P9791527741600629474

/-!
# A340760: Number of partitions of n into 4 parts whose largest 3 parts have the same parity.

The programs for A340760, the canonical program `A340760.P7898734539021318041` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340760 has offset 0).

The definition of A340760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1587 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340760.P7898734539021318041

`Δ[A308733(abs(1-n))]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A340760

/-- `Δ[A308733(abs(1-n))]` -/
def P7898734539021318041.Spec : Prop :=
  ∀ n, P7898734539021318041.a n = A340760 n

theorem P7898734539021318041.correct : P7898734539021318041.Spec := by
  intro n
  simp only [A340760]

end A340760

/-! ## A340760.P3075537896419555514

`A008763(∑[1-a(n-1)])` with `a(0)=2`
-/

namespace A340760.P3075537896419555514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A340760.P3075537896419555514

namespace A340760

/-- `A008763(∑[1-a(n-1)])` -/
def P3075537896419555514.Spec : Prop :=
  ∀ n, P3075537896419555514.a n = A340760 n

end A340760

/-! ## A340760.P17220228793832417902

`A008763(A028242(n)+1)`
-/

namespace A340760.P17220228793832417902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (A028242 n + 1).toNat

end

end A340760.P17220228793832417902

namespace A340760

/-- `A008763(A028242(n)+1)` -/
def P17220228793832417902.Spec : Prop :=
  ∀ n, P17220228793832417902.a n = A340760 n

end A340760

/-! ## A340760.P5297881323795657025

`A008763(A030451(n+1))`
-/

namespace A340760.P5297881323795657025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (A030451 (n + 1)).toNat

end

end A340760.P5297881323795657025

namespace A340760

/-- `A008763(A030451(n+1))` -/
def P5297881323795657025.Spec : Prop :=
  ∀ n, P5297881323795657025.a n = A340760 n

end A340760

/-! ## A340760.P15214538068472791801

`A008763(Δ[A035106(n+1)])`
-/

namespace A340760.P15214538068472791801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (f1 (n + 1) - f1 n).toNat

end

end A340760.P15214538068472791801

namespace A340760

/-- `A008763(Δ[A035106(n+1)])` -/
def P15214538068472791801.Spec : Prop :=
  ∀ n, P15214538068472791801.a n = A340760 n

end A340760

/-! ## A340760.P6968550809096139503

`A008763(A110659(2*n)+1)`
-/

namespace A340760.P6968550809096139503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (A110659 (2 * n) + 1).toNat

end

end A340760.P6968550809096139503

namespace A340760

/-- `A008763(A110659(2*n)+1)` -/
def P6968550809096139503.Spec : Prop :=
  ∀ n, P6968550809096139503.a n = A340760 n

end A340760

/-! ## A340760.P17799067017129410499

`A008763(3*A008619(n)-(n+1))`
-/

namespace A340760.P17799067017129410499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (3 * A008619 n - (n + 1 : ℤ)).toNat

end

end A340760.P17799067017129410499

namespace A340760

/-- `A008763(3*A008619(n)-(n+1))` -/
def P17799067017129410499.Spec : Prop :=
  ∀ n, P17799067017129410499.a n = A340760 n

end A340760

/-! ## A340760.P14310277556292705294

`A307966(n+3)-A308096(n+3)`
-/

namespace A340760.P14310277556292705294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307966 (n + 3) - A308096 (n + 3)

end

end A340760.P14310277556292705294

namespace A340760

/-- `A307966(n+3)-A308096(n+3)` -/
def P14310277556292705294.Spec : Prop :=
  ∀ n, P14310277556292705294.a n = A340760 n

end A340760

/-! ## A340760.P13407668915400343995

`A008763(∑[A171177(or(1, 1-n)+n)])`
-/

namespace A340760.P13407668915400343995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171177 (Int.lor 1 (1 - (n : ℤ)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A340760.P13407668915400343995

namespace A340760

/-- `A008763(∑[A171177(or(1, 1-n)+n)])` -/
def P13407668915400343995.Spec : Prop :=
  ∀ n, P13407668915400343995.a n = A340760 n

end A340760

/-! ## A340760.P3904732440725257778

`2*A308096(n+1)-A336973(n+1)`
-/

namespace A340760.P3904732440725257778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A308096 (n + 1) - A336973 (n + 1)

end

end A340760.P3904732440725257778

namespace A340760

/-- `2*A308096(n+1)-A336973(n+1)` -/
def P3904732440725257778.Spec : Prop :=
  ∀ n, P3904732440725257778.a n = A340760 n

end A340760

/-! ## A340760.P6119271131539059275

`A008763(A065033(A004442(n))+1)`
-/

namespace A340760.P6119271131539059275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (A065033 (A004442 n).toNat + 1).toNat

end

end A340760.P6119271131539059275

namespace A340760

/-- `A008763(A065033(A004442(n))+1)` -/
def P6119271131539059275.Spec : Prop :=
  ∀ n, P6119271131539059275.a n = A340760 n

end A340760

/-! ## A340760.P14731829971458247673

`A008763(A028242(2*A028242(n)))`
-/

namespace A340760.P14731829971458247673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (A028242 (2 * A028242 n).toNat).toNat

end

end A340760.P14731829971458247673

namespace A340760

/-- `A008763(A028242(2*A028242(n)))` -/
def P14731829971458247673.Spec : Prop :=
  ∀ n, P14731829971458247673.a n = A340760 n

end A340760

/-!
# A340761: Number of partitions of n into 4 parts whose 'middle' two parts have the same parity.

The programs for A340761, the canonical program `A340761.P12690093205737544502` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340761 has offset 0).

The definition of A340761 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1482 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340761.P12690093205737544502

`A026810(n)-a(n-2)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A340761

/-- `A026810(n)-a(n-2)` -/
def P12690093205737544502.Spec : Prop :=
  ∀ n, P12690093205737544502.a n = A340761 n

theorem P12690093205737544502.correct : P12690093205737544502.Spec := by
  intro n
  simp only [A340761]

end A340761

/-! ## A340761.P18121931530306294859

`∑[A005044(abs(1-n))]-a(n-2)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A340761.P18121931530306294859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 2)

end

end A340761.P18121931530306294859

namespace A340761

/-- `∑[A005044(abs(1-n))]-a(n-2)` -/
def P18121931530306294859.Spec : Prop :=
  ∀ n, P18121931530306294859.a n = A340761 n

end A340761

/-! ## A340761.P145423758084608139

`∑[A308068(abs(A097062(n)))]`
-/

namespace A340761.P145423758084608139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308068 |A097062 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340761.P145423758084608139

namespace A340761

/-- `∑[A308068(abs(A097062(n)))]` -/
def P145423758084608139.Spec : Prop :=
  ∀ n, P145423758084608139.a n = A340761 n

end A340761

/-! ## A340761.P12046153759297517776

`∑[A062781(A110657(n+6))]`
-/

namespace A340761.P12046153759297517776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062781 (A110657 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340761.P12046153759297517776

namespace A340761

/-- `∑[A062781(A110657(n+6))]` -/
def P12046153759297517776.Spec : Prop :=
  ∀ n, P12046153759297517776.a n = A340761 n

end A340761

/-! ## A340761.P10183707214949526643

`A340760(abs(1-n))+A340760(n)`
-/

namespace A340761.P10183707214949526643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340760 |1 - (n : ℤ)|.toNat + A340760 n

end

end A340761.P10183707214949526643

namespace A340761

/-- `A340760(abs(1-n))+A340760(n)` -/
def P10183707214949526643.Spec : Prop :=
  ∀ n, P10183707214949526643.a n = A340761 n

end A340761

/-! ## A340761.P17968143787393141412

`abs(a(n-2)-A288165(A008486(n)))` with `a(0)=0, a(1)=0`
-/

namespace A340761.P17968143787393141412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  |a (n - 2) - A288165 (A008486 n).toNat|

end

end A340761.P17968143787393141412

namespace A340761

/-- `abs(a(n-2)-A288165(A008486(n)))` -/
def P17968143787393141412.Spec : Prop :=
  ∀ n, P17968143787393141412.a n = A340761 n

end A340761

/-! ## A340761.P5512641547828165976

`A029268(A008585(n))-A025767(n)`
-/

namespace A340761.P5512641547828165976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029268 (A008585 n).toNat - A025767 n

end

end A340761.P5512641547828165976

namespace A340761

/-- `A029268(A008585(n))-A025767(n)` -/
def P5512641547828165976.Spec : Prop :=
  ∀ n, P5512641547828165976.a n = A340761 n

end A340761

/-!
# A340762: Numbers k such that iterations of phi(k), phi(phi(k)), ... end in ... 4, 2, 1.

The programs for A340762, the canonical program `A340762.P17623527530836035086` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340762 has offset 1).

The definition of A340762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340762.P17623527530836035086

`eq[2, A000005(a(A000010(n)))]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=2`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A340762

/-- `eq[2, A000005(a(A000010(n)))]` -/
def P17623527530836035086.Spec : Prop :=
  ∀ n, (P17623527530836035086.a n : ℤ) = A340762 (n + 1)

theorem P17623527530836035086.correct : P17623527530836035086.Spec := by
  intro n
  simp only [A340762, Nat.add_sub_cancel]

end A340762

/-! ## A340762.P17520104006749922984

`eq[2, A031067(a(A000010(n)))]` with `a(0)=0, a(1)=0, a(2)=3, a(3)=1, a(4)=2`
-/

namespace A340762.P17520104006749922984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 3, 1, 2] fun n f2 =>
  A031067 (f2 (A000010 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340762.P17520104006749922984

namespace A340762

/-- `eq[2, A031067(a(A000010(n)))]` -/
def P17520104006749922984.Spec : Prop :=
  ∀ n, (P17520104006749922984.a n : ℤ) = A340762 (n + 1)

end A340762

/-! ## A340762.P6764040154696781817

`eq[1, A158298(a(A000010(n)))]` with `a(0)=2, a(1)=3, a(2)=2, a(3)=3, a(4)=1`
-/

namespace A340762.P6764040154696781817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 2, 3, 1] fun n f2 =>
  A158298 (f2 (A000010 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340762.P6764040154696781817

namespace A340762

/-- `eq[1, A158298(a(A000010(n)))]` -/
def P6764040154696781817.Spec : Prop :=
  ∀ n, (P6764040154696781817.a n : ℤ) = A340762 (n + 1)

end A340762

/-! ## A340762.P1341657289932033149

`eq[2, A052297(a(A000010(n+1)-1)+1)]+1` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A340762.P1341657289932033149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 2] fun n f2 =>
  A052297 (f2 (A000010 (n + 1) - 1).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340762.P1341657289932033149

namespace A340762

/-- `eq[2, A052297(a(A000010(n+1)-1)+1)]+1` -/
def P1341657289932033149.Spec : Prop :=
  ∀ n, (P1341657289932033149.a n : ℤ) = A340762 (n + 1)

end A340762

/-! ## A340762.P9125283965783042527

`lt[2, A049113(n+1)]+1`
-/

namespace A340762.P9125283965783042527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049113 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A340762.P9125283965783042527

namespace A340762

/-- `lt[2, A049113(n+1)]+1` -/
def P9125283965783042527.Spec : Prop :=
  ∀ n, (P9125283965783042527.a n : ℤ) = A340762 (n + 1)

end A340762

/-! ## A340762.P6333245130829628004

`lt[2, A049116(n+1)]+1`
-/

namespace A340762.P6333245130829628004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049116 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A340762.P6333245130829628004

namespace A340762

/-- `lt[2, A049116(n+1)]+1` -/
def P6333245130829628004.Spec : Prop :=
  ∀ n, (P6333245130829628004.a n : ℤ) = A340762 (n + 1)

end A340762

/-! ## A340762.P12083803774642365686

`A020725(lt[2, A049116(n+1)])`
-/

namespace A340762.P12083803774642365686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A340762.P12083803774642365686

namespace A340762

/-- `A020725(lt[2, A049116(n+1)])` -/
def P12083803774642365686.Spec : Prop :=
  ∀ n, P12083803774642365686.a n = A340762 (n + 1)

end A340762

/-! ## A340762.P9773516195721508268

`lt[2, A049116(A000007(n)+n)]`
-/

namespace A340762.P9773516195721508268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049116 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A340762.P9773516195721508268

namespace A340762

/-- `lt[2, A049116(A000007(n)+n)]` -/
def P9773516195721508268.Spec : Prop :=
  ∀ n, (P9773516195721508268.a n : ℤ) = A340762 (n + 1)

end A340762

/-! ## A340762.P8235623633214252145

`lt[2, A049116(abs(A000007(n)-n))]`
-/

namespace A340762.P8235623633214252145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049116 |A000007 n - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A340762.P8235623633214252145

namespace A340762

/-- `lt[2, A049116(abs(A000007(n)-n))]` -/
def P8235623633214252145.Spec : Prop :=
  ∀ n, (P8235623633214252145.a n : ℤ) = A340762 (n + 1)

end A340762

/-!
# A340763: Number of primes p <= n that are congruent to 1 modulo 3.

The programs for A340763, the canonical program `A340763.P400008052296073909` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340763 has offset 1).

The definition of A340763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340763.P400008052296073909

`∑[char[p?[3*n+1]-1]]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A340763

/-- `∑[char[p?[3*n+1]-1]]` -/
def P400008052296073909.Spec : Prop :=
  ∀ n, (P400008052296073909.a n : ℤ) = A340763 (n + 1)

theorem P400008052296073909.correct : P400008052296073909.Spec := by
  intro n
  simp only [A340763, Nat.add_sub_cancel]

end A340763

/-! ## A340763.P15970347475538356812

`∑[char[A002476(n+1)-1]]`
-/

namespace A340763.P15970347475538356812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340763.P15970347475538356812

namespace A340763

/-- `∑[char[A002476(n+1)-1]]` -/
def P15970347475538356812.Spec : Prop :=
  ∀ n, (P15970347475538356812.a n : ℤ) = A340763 (n + 1)

end A340763

/-! ## A340763.P16813535609106087869

`∑[C(3, A320116(n+1))]-3`
-/

namespace A340763.P16813535609106087869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A320116 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A340763.P16813535609106087869

namespace A340763

/-- `∑[C(3, A320116(n+1))]-3` -/
def P16813535609106087869.Spec : Prop :=
  ∀ n, P16813535609106087869.a n = A340763 (n + 1)

end A340763

/-! ## A340763.P7607706409799683442

`∑[char[record[A057063(3*n+4)]]]`
-/

namespace A340763.P7607706409799683442
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057063 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340763.P7607706409799683442

namespace A340763

/-- `∑[char[record[A057063(3*n+4)]]]` -/
def P7607706409799683442.Spec : Prop :=
  ∀ n, (P7607706409799683442.a n : ℤ) = A340763 (n + 1)

end A340763

/-! ## A340763.P8779952277784862779

`∑[char[3*n]*A010051(n+1)]`
-/

namespace A340763.P8779952277784862779
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) * A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340763.P8779952277784862779

namespace A340763

/-- `∑[char[3*n]*A010051(n+1)]` -/
def P8779952277784862779.Spec : Prop :=
  ∀ n, P8779952277784862779.a n = A340763 (n + 1)

end A340763

/-! ## A340763.P10130454241967412251

`∑[char[6*n]*A105661(n+1)]`
-/

namespace A340763.P10130454241967412251
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) * A105661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340763.P10130454241967412251

namespace A340763

/-- `∑[char[6*n]*A105661(n+1)]` -/
def P10130454241967412251.Spec : Prop :=
  ∀ n, P10130454241967412251.a n = A340763 (n + 1)

end A340763

/-! ## A340763.P11397414339426198485

`∑[(1-n²%3)%A049076(n+1)]`
-/

namespace A340763.P11397414339426198485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - ((n ^ 2 % 3 : ℕ) : ℤ)) (A049076 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340763.P11397414339426198485

namespace A340763

/-- `∑[(1-n²%3)%A049076(n+1)]` -/
def P11397414339426198485.Spec : Prop :=
  ∀ n, P11397414339426198485.a n = A340763 (n + 1)

end A340763

/-! ## A340763.P17252639392022007898

`∑[char[A000010(A002476(n+1))]]`
-/

namespace A340763.P17252639392022007898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002476 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340763.P17252639392022007898

namespace A340763

/-- `∑[char[A000010(A002476(n+1))]]` -/
def P17252639392022007898.Spec : Prop :=
  ∀ n, (P17252639392022007898.a n : ℤ) = A340763 (n + 1)

end A340763

/-! ## A340763.P16536699011277657057

`A340764(n+1)-A321856(n+1)`
-/

namespace A340763.P16536699011277657057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (n + 1) - A321856 (n + 1)

end

end A340763.P16536699011277657057

namespace A340763

/-- `A340764(n+1)-A321856(n+1)` -/
def P16536699011277657057.Spec : Prop :=
  ∀ n, P16536699011277657057.a n = A340763 (n + 1)

end A340763

/-! ## A340763.P10531623327152637855

`∑[A239961(C(3, A320116(n+1))+1)]`
-/

namespace A340763.P10531623327152637855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239961 (Nat.choose 3 (A320116 (n + 1)).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340763.P10531623327152637855

namespace A340763

/-- `∑[A239961(C(3, A320116(n+1))+1)]` -/
def P10531623327152637855.Spec : Prop :=
  ∀ n, P10531623327152637855.a n = A340763 (n + 1)

end A340763

/-! ## A340763.P10221784807094884313

`a(n-1)+and(A004646(n), A080339(n+1))` with `a(0)=0`
-/

namespace A340763.P10221784807094884313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Int.land (A004646 n) (A080339 (n + 1))

end

end A340763.P10221784807094884313

namespace A340763

/-- `a(n-1)+and(A004646(n), A080339(n+1))` -/
def P10221784807094884313.Spec : Prop :=
  ∀ n, P10221784807094884313.a n = A340763 (n + 1)

end A340763

/-!
# A340764: Number of primes p <= n that are congruent to 2 modulo 3.

The programs for A340764, the canonical program `A340764.P6242509030891960440` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340764 has offset 1).

The definition of A340764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340764.P15143247270653479743

`∑[char[p?[3*n-1]-1]]`
-/

namespace A340764.P15143247270653479743
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340764.P15143247270653479743

namespace A340764

/-- `∑[char[p?[3*n-1]-1]]` -/
def P15143247270653479743.Spec : Prop :=
  ∀ n, (P15143247270653479743.a n : ℤ) = A340764 (n + 1)

end A340764

/-! ## A340764.P17460952408670170702

`∑[char[A003627(n+1)-1]]`
-/

namespace A340764.P17460952408670170702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340764.P17460952408670170702

namespace A340764

/-- `∑[char[A003627(n+1)-1]]` -/
def P17460952408670170702.Spec : Prop :=
  ∀ n, (P17460952408670170702.a n : ℤ) = A340764 (n + 1)

end A340764

/-! ## A340764.P3534988156601320595

`∑[char[record[A000010(3*n+2)]]]`
-/

namespace A340764.P3534988156601320595
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340764.P3534988156601320595

namespace A340764

/-- `∑[char[record[A000010(3*n+2)]]]` -/
def P3534988156601320595.Spec : Prop :=
  ∀ n, (P3534988156601320595.a n : ℤ) = A340764 (n + 1)

end A340764

/-! ## A340764.P10430347858683675621

`∑[char[record[A003958(3*n+2)]]]`
-/

namespace A340764.P10430347858683675621
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340764.P10430347858683675621

namespace A340764

/-- `∑[char[record[A003958(3*n+2)]]]` -/
def P10430347858683675621.Spec : Prop :=
  ∀ n, (P10430347858683675621.a n : ℤ) = A340764 (n + 1)

end A340764

/-! ## A340764.P3584971224169813

`∑[char[record[A033879(3*n+2)]]]`
-/

namespace A340764.P3584971224169813
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340764.P3584971224169813

namespace A340764

/-- `∑[char[record[A033879(3*n+2)]]]` -/
def P3584971224169813.Spec : Prop :=
  ∀ n, (P3584971224169813.a n : ℤ) = A340764 (n + 1)

end A340764

/-! ## A340764.P15154867699166200862

`∑[char[record[A322352(3*n+2)]]]`
-/

namespace A340764.P15154867699166200862
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322352 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340764.P15154867699166200862

namespace A340764

/-- `∑[char[record[A322352(3*n+2)]]]` -/
def P15154867699166200862.Spec : Prop :=
  ∀ n, (P15154867699166200862.a n : ℤ) = A340764 (n + 1)

end A340764

/-! ## A340764.P1036926051402129230

`∑[char[record[A326147(3*n+2)]]]`
-/

namespace A340764.P1036926051402129230
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326147 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340764.P1036926051402129230

namespace A340764

/-- `∑[char[record[A326147(3*n+2)]]]` -/
def P1036926051402129230.Spec : Prop :=
  ∀ n, (P1036926051402129230.a n : ℤ) = A340764 (n + 1)

end A340764

/-! ## A340764.P18167247455815339958

`∑[A010051(n*∑[n]%3+1)]`
-/

namespace A340764.P18167247455815339958
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n * ((∑ j ∈ Finset.range (n + 1), f2 j) % 3) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340764.P18167247455815339958

namespace A340764

/-- `∑[A010051(n*∑[n]%3+1)]` -/
def P18167247455815339958.Spec : Prop :=
  ∀ n, P18167247455815339958.a n = A340764 (n + 1)

end A340764

/-! ## A340764.P6242509030891960440

`∑[(∑[n]*A061007(n+1))%3]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A340764

/-- `∑[(∑[n]*A061007(n+1))%3]` -/
def P6242509030891960440.Spec : Prop :=
  ∀ n, P6242509030891960440.a n = A340764 (n + 1)

theorem P6242509030891960440.correct : P6242509030891960440.Spec := by
  intro n
  simp only [A340764, Nat.add_sub_cancel]

end A340764

/-! ## A340764.P4329613646521706549

`∑[(∑[n]*A080339(n+1))%3]`
-/

namespace A340764.P4329613646521706549
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A080339 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340764.P4329613646521706549

namespace A340764

/-- `∑[(∑[n]*A080339(n+1))%3]` -/
def P4329613646521706549.Spec : Prop :=
  ∀ n, P4329613646521706549.a n = A340764 (n + 1)

end A340764

/-! ## A340764.P12146584755976501696

`∑[char[record[A006530(3*n+2)]-1]]`
-/

namespace A340764.P12146584755976501696
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340764.P12146584755976501696

namespace A340764

/-- `∑[char[record[A006530(3*n+2)]-1]]` -/
def P12146584755976501696.Spec : Prop :=
  ∀ n, (P12146584755976501696.a n : ℤ) = A340764 (n + 1)

end A340764

/-! ## A340764.P13872092101842188547

`∑[char[record[A020639(3*n+2)]-1]]`
-/

namespace A340764.P13872092101842188547
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340764.P13872092101842188547

namespace A340764

/-- `∑[char[record[A020639(3*n+2)]-1]]` -/
def P13872092101842188547.Spec : Prop :=
  ∀ n, (P13872092101842188547.a n : ℤ) = A340764 (n + 1)

end A340764

/-! ## A340764.P14215559360505677842

`∑[char[3*n+1]*A010051(n+1)]`
-/

namespace A340764.P14215559360505677842
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) * A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340764.P14215559360505677842

namespace A340764

/-- `∑[char[3*n+1]*A010051(n+1)]` -/
def P14215559360505677842.Spec : Prop :=
  ∀ n, P14215559360505677842.a n = A340764 (n + 1)

end A340764

/-! ## A340764.P17265923526877768596

`∑[char[A000010(A003627(n+1))]]`
-/

namespace A340764.P17265923526877768596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003627 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340764.P17265923526877768596

namespace A340764

/-- `∑[char[A000010(A003627(n+1))]]` -/
def P17265923526877768596.Spec : Prop :=
  ∀ n, (P17265923526877768596.a n : ℤ) = A340764 (n + 1)

end A340764

/-! ## A340764.P6700809059298126297

`∑[C(A080425(n), A073182(n+1))]`
-/

namespace A340764.P6700809059298126297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A080425 n).toNat (A073182 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340764.P6700809059298126297

namespace A340764

/-- `∑[C(A080425(n), A073182(n+1))]` -/
def P6700809059298126297.Spec : Prop :=
  ∀ n, (P6700809059298126297.a n : ℤ) = A340764 (n + 1)

end A340764

/-! ## A340764.P4178170604373748566

`A340763(n+1)+A321856(n+1)`
-/

namespace A340764.P4178170604373748566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340763 (n + 1) + A321856 (n + 1)

end

end A340764.P4178170604373748566

namespace A340764

/-- `A340763(n+1)+A321856(n+1)` -/
def P4178170604373748566.Spec : Prop :=
  ∀ n, P4178170604373748566.a n = A340764 (n + 1)

end A340764

/-! ## A340764.P15056595247121585619

`∑[char[record[A187730(3*n+2)]]]`
-/

namespace A340764.P15056595247121585619
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187730 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340764.P15056595247121585619

namespace A340764

/-- `∑[char[record[A187730(3*n+2)]]]` -/
def P15056595247121585619.Spec : Prop :=
  ∀ n, (P15056595247121585619.a n : ℤ) = A340764 (n + 1)

end A340764

/-! ## A340764.P16543321925953935964

`∑[char[A014963(3*n+5)-1]]-1`
-/

namespace A340764.P16543321925953935964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (3 * n + 5) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A340764.P16543321925953935964

namespace A340764

/-- `∑[char[A014963(3*n+5)-1]]-1` -/
def P16543321925953935964.Spec : Prop :=
  ∀ n, P16543321925953935964.a n = A340764 (n + 1)

end A340764

/-! ## A340764.P5967234357168416456

`∑[char[A061397(A016777(n)+1)-1]]`
-/

namespace A340764.P5967234357168416456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A016777 n + 1).toNat - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340764.P5967234357168416456

namespace A340764

/-- `∑[char[A061397(A016777(n)+1)-1]]` -/
def P5967234357168416456.Spec : Prop :=
  ∀ n, (P5967234357168416456.a n : ℤ) = A340764 (n + 1)

end A340764

/-! ## A340764.P11390709386731470137

`∑[char[A000010(A014963(3*n+2))]]`
-/

namespace A340764.P11390709386731470137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A014963 (3 * n + 2)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340764.P11390709386731470137

namespace A340764

/-- `∑[char[A000010(A014963(3*n+2))]]` -/
def P11390709386731470137.Spec : Prop :=
  ∀ n, (P11390709386731470137.a n : ℤ) = A340764 (n + 1)

end A340764

/-!
# A340765: Numbers k such that iterations of phi(k), phi(phi(k)), ... end in ... 6, 2, 1.

The programs for A340765, there is no canonical definition to state claims against.
-/

/-! ## A340765.P3747553211885069127

`eq[2, A000005(a(A000010(n)))]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=0, a(4)=1, a(5)=0, a(6)=2`
-/

namespace A340765.P3747553211885069127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 0, 1, 0, 2] fun n f2 =>
  A000005 (f2 (A000010 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340765.P3747553211885069127

/-! ## A340765.P10833304219556039741

`eq[2, A031067(a(A000010(n)))]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=0, a(4)=1, a(5)=1, a(6)=2`
-/

namespace A340765.P10833304219556039741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 0, 1, 1, 2] fun n f2 =>
  A031067 (f2 (A000010 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340765.P10833304219556039741

/-! ## A340765.P6953431960423478500

`eq[1, A049541(a(A000010(n)))]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=0, a(4)=2, a(5)=2, a(6)=1`
-/

namespace A340765.P6953431960423478500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2, 0, 2, 2, 1] fun n f2 =>
  A049541 (f2 (A000010 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340765.P6953431960423478500

/-! ## A340765.P16646213676266117550

`eq[0, A025581(a(A000010(n)))]` with `a(0)=3, a(1)=2, a(2)=2, a(3)=2, a(4)=1, a(5)=1, a(6)=0`
-/

namespace A340765.P16646213676266117550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 2, 2, 1, 1, 0] fun n f2 =>
  A025581 (f2 (A000010 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340765.P16646213676266117550

/-! ## A340765.P1798224006437684676

`eq[1, A158298(a(A000010(n)))]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=3, a(4)=2, a(5)=3, a(6)=1`
-/

namespace A340765.P1798224006437684676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 3, 2, 3, 1] fun n f2 =>
  A158298 (f2 (A000010 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340765.P1798224006437684676

/-!
# A340766: Number of ordered subsequences of {1,...,2n} containing at least n elements and such that the first differences contain only odd numbers.

The programs for A340766, there is no canonical definition to state claims against.
-/

/-! ## A340766.P12065592890938295946

`A345123(∑[4*n])`
-/

namespace A340766.P12065592890938295946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345123 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A340766.P12065592890938295946

/-! ## A340766.P17128513256640881099

`record[A345123(A286147(A286147(n)))]`
-/

namespace A340766.P17128513256640881099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345123 (A286147 (A286147 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340766.P17128513256640881099

/-! ## A340766.P2446655726968132366

`A345123(A046092(n))%A207747(n+1)`
-/

namespace A340766.P2446655726968132366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345123 (A046092 n).toNat) (A207747 (n + 1))

end

end A340766.P2446655726968132366

/-! ## A340766.P17910245990869978144

`A047999(A014105(n))*A345123(A046092(n))`
-/

namespace A340766.P17910245990869978144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (A014105 n).toNat * A345123 (A046092 n).toNat

end

end A340766.P17910245990869978144

/-! ## A340766.P16495203329112783076

`record[A010052(2*n+1)*A345123(n)]`
-/

namespace A340766.P16495203329112783076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * n + 1) * A345123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340766.P16495203329112783076

/-!
# A340767: Number of primes p <= 6*n + 5 that are congruent to 2 modulo 3.

The programs for A340767, the canonical program `A340767.P5650621943417437149` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340767 has offset 0).

The definition of A340767 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340764, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340767.P5650621943417437149

`A340764(6*n+5)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A340767

/-- `A340764(6*n+5)` -/
def P5650621943417437149.Spec : Prop :=
  ∀ n, P5650621943417437149.a n = A340767 n

theorem P5650621943417437149.correct : P5650621943417437149.Spec := by
  intro n
  simp only [A340767]

end A340767

/-! ## A340767.P3297191865864665704

`A172103(n+1)+1`
-/

namespace A340767.P3297191865864665704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172103 (n + 1) + 1

end

end A340767.P3297191865864665704

namespace A340767

/-- `A172103(n+1)+1` -/
def P3297191865864665704.Spec : Prop :=
  ∀ n, P3297191865864665704.a n = A340767 n

end A340767

/-! ## A340767.P2686925058177024362

`∑[A167020(n+1)]+1`
-/

namespace A340767.P2686925058177024362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A340767.P2686925058177024362

namespace A340767

/-- `∑[A167020(n+1)]+1` -/
def P2686925058177024362.Spec : Prop :=
  ∀ n, P2686925058177024362.a n = A340767 n

end A340767

/-! ## A340767.P11984948306386841996

`∑[A075743(Δ[n²])]+1`
-/

namespace A340767.P11984948306386841996
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A340767.P11984948306386841996

namespace A340767

/-- `∑[A075743(Δ[n²])]+1` -/
def P11984948306386841996.Spec : Prop :=
  ∀ n, P11984948306386841996.a n = A340767 n

end A340767

/-! ## A340767.P13966490429144165325

`∑[char[A059325(n+1)]]+1`
-/

namespace A340767.P13966490429144165325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A340767.P13966490429144165325

namespace A340767

/-- `∑[char[A059325(n+1)]]+1` -/
def P13966490429144165325.Spec : Prop :=
  ∀ n, (P13966490429144165325.a n : ℤ) = A340767 n

end A340767

/-! ## A340767.P15108308153245967232

`1-∑[A156706(2*n+1)]`
-/

namespace A340767.P15108308153245967232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340767.P15108308153245967232

namespace A340767

/-- `1-∑[A156706(2*n+1)]` -/
def P15108308153245967232.Spec : Prop :=
  ∀ n, P15108308153245967232.a n = A340767 n

end A340767

/-! ## A340767.P17187948964481103754

`A020725(A172103(n+1))`
-/

namespace A340767.P17187948964481103754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A172103 (n + 1)).toNat

end

end A340767.P17187948964481103754

namespace A340767

/-- `A020725(A172103(n+1))` -/
def P17187948964481103754.Spec : Prop :=
  ∀ n, P17187948964481103754.a n = A340767 n

end A340767

/-! ## A340767.P670944582332440056

`A172104(n+1)+A323011(n+1)+1`
-/

namespace A340767.P670944582332440056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172104 (n + 1) + (A323011 (n + 1) + 1)

end

end A340767.P670944582332440056

namespace A340767

/-- `A172104(n+1)+A323011(n+1)+1` -/
def P670944582332440056.Spec : Prop :=
  ∀ n, P670944582332440056.a n = A340767 n

end A340767

/-! ## A340767.P2897032050827600723

`∑[A056563(3*(n+1))]`
-/

namespace A340767.P2897032050827600723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056563 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340767.P2897032050827600723

namespace A340767

/-- `∑[A056563(3*(n+1))]` -/
def P2897032050827600723.Spec : Prop :=
  ∀ n, P2897032050827600723.a n = A340767 n

end A340767

/-!
# A340768: Third-smallest divisor of n-th composite number.

The programs for A340768, there is no canonical definition to state claims against.
-/

/-! ## A340768.P4588519152409413790

`A292269(Δ[A053767(n)])`
-/

namespace A340768.P4588519152409413790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (f1 (n + 1) - f1 n).toNat

end

end A340768.P4588519152409413790

/-! ## A340768.P4137729062844130972

`A292269(A002808(n+1))`
-/

namespace A340768.P4137729062844130972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (A002808 (n + 1)).toNat

end

end A340768.P4137729062844130972

/-! ## A340768.P2404743413060268721

`A292269(A018252(n+2))`
-/

namespace A340768.P2404743413060268721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (A018252 (n + 2)).toNat

end

end A340768.P2404743413060268721

/-! ## A340768.P15844217550384608678

`A292269(A141468(n+3))`
-/

namespace A340768.P15844217550384608678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (A141468 (n + 3)).toNat

end

end A340768.P15844217550384608678

/-! ## A340768.P7349768558769923062

`A292269(lt[1, A003415(n)])`
-/

namespace A340768.P7349768558769923062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A340768.P7349768558769923062

/-! ## A340768.P9655187696841344047

`A292269(lt[1, A074206(n)])`
-/

namespace A340768.P9655187696841344047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A340768.P9655187696841344047

/-! ## A340768.P450632877485070714

`A292269(lt[1, A107463(n)])`
-/

namespace A340768.P450632877485070714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A340768.P450632877485070714

/-! ## A340768.P6119206222281668192

`A292269(lt[1, A175126(n)])`
-/

namespace A340768.P6119206222281668192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A340768.P6119206222281668192

/-! ## A340768.P13146747532793303406

`filter[A292269(n+1), A069513(#)]`
-/

namespace A340768.P13146747532793303406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A340768.P13146747532793303406

/-! ## A340768.P12041153014708546772

`filter[A292269(n+1), A092248(#)]`
-/

namespace A340768.P12041153014708546772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092248 (f1 j).toNat = 1) n)

end

end A340768.P12041153014708546772

/-!
# A340769: The third-smallest divisor of n-th square number, n>1.

The programs for A340769, there is no canonical definition to state claims against.
-/

/-! ## A340769.P5557253208811873537

`A292269((n+2)²)`
-/

namespace A340769.P5557253208811873537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 ((n + 2) ^ 2)

end

end A340769.P5557253208811873537

/-! ## A340769.P1724432619050317001

`or(char[1], A292269(A064549(n+2)))`
-/

namespace A340769.P1724432619050317001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A292269 (A064549 (n + 2)).toNat)

end

end A340769.P1724432619050317001

/-! ## A340769.P9067732916824883661

`A125746(A292269((n+2)*(n+2)))`
-/

namespace A340769.P9067732916824883661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (A292269 ((n + 2) * (n + 2))).toNat

end

end A340769.P9067732916824883661

/-! ## A340769.P9521146219460783139

`lcm(A033999(n), A292269(A064549(n+2)))`
-/

namespace A340769.P9521146219460783139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A292269 (A064549 (n + 2)).toNat)

end

end A340769.P9521146219460783139

/-! ## A340769.P13602678800485203193

`or(A033684(n), A292269(A000290(n+2)))`
-/

namespace A340769.P13602678800485203193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033684 n) (A292269 (A000290 (n + 2)).toNat)

end

end A340769.P13602678800485203193

/-! ## A340769.P12455010567725740202

`∑{d}[A292269(A064549(n+2)), A000010(#)]`
-/

namespace A340769.P12455010567725740202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (A064549 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A340769.P12455010567725740202

/-! ## A340769.P16215859985487442245

`∏{d}[A292269(A064549(n+2)), A006530(#)]`
-/

namespace A340769.P16215859985487442245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (A064549 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A006530 d

end

end A340769.P16215859985487442245

/-! ## A340769.P7238561901266671429

`∏{d}[A292269(A064549(n+2)), A014963(#)]`
-/

namespace A340769.P7238561901266671429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (A064549 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A340769.P7238561901266671429

/-! ## A340769.P1431477725843074623

`A000034(12*n)*A292269(A064549(n+2))`
-/

namespace A340769.P1431477725843074623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (12 * n) * A292269 (A064549 (n + 2)).toNat

end

end A340769.P1431477725843074623

/-! ## A340769.P4292856153857166414

`A292269(A064549(n+2))%A000032(n+4)`
-/

namespace A340769.P4292856153857166414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292269 (A064549 (n + 2)).toNat) (A000032 (n + 4))

end

end A340769.P4292856153857166414

/-!
# A340770: Indices k of prime numbers such that prime(k)-2 and prime(k)^2-2 are both prime numbers.

The programs for A340770, there is no canonical definition to state claims against.
-/

/-! ## A340770.P14188755592073691995

`∩[A107770(n+1), A137291(n+1)]`
-/

namespace A340770.P14188755592073691995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340770.P14188755592073691995

/-! ## A340770.P16996063934779043794

`∩[A107770(n+1), A173472(n+1)]`
-/

namespace A340770.P16996063934779043794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340770.P16996063934779043794

/-! ## A340770.P6032451499943331730

`filter[A137291(n+1), A062301(#)]`
-/

namespace A340770.P6032451499943331730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A062301 (f1 j).toNat = 1) n)

end

end A340770.P6032451499943331730

/-! ## A340770.P4328741808857286410

`filter[A173472(n+1), A062301(#)]`
-/

namespace A340770.P4328741808857286410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A062301 (f1 j).toNat = 1) n)

end

end A340770.P4328741808857286410

/-! ## A340770.P6642609092629778224

`A000720(A128550(n+1))+1`
-/

namespace A340770.P6642609092629778224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A128550 (n + 1)).toNat + 1

end

end A340770.P6642609092629778224

/-! ## A340770.P5722339524968586843

`A061395(A128550(n+1)+2)`
-/

namespace A340770.P5722339524968586843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A128550 (n + 1) + 2).toNat

end

end A340770.P5722339524968586843

/-! ## A340770.P3177741256546753810

`A000720(ceil(sqrt(A065017(n+1))))`
-/

namespace A340770.P3177741256546753810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌈Real.sqrt (A065017 (n + 1) : ℝ)⌉.toNat

end

end A340770.P3177741256546753810

/-! ## A340770.P3627270950485819681

`A061395(ceil(sqrt(A065017(n+1))))`
-/

namespace A340770.P3627270950485819681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 ⌈Real.sqrt (A065017 (n + 1) : ℝ)⌉.toNat

end

end A340770.P3627270950485819681

/-! ## A340770.P15494749338838630981

`A000720(round(sqrt(A065017(n+1))))`
-/

namespace A340770.P15494749338838630981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway (Real.sqrt (A065017 (n + 1) : ℝ))).toNat

end

end A340770.P15494749338838630981

/-! ## A340770.P5407933790313524310

`A061395(round(sqrt(A065017(n+1))))`
-/

namespace A340770.P5407933790313524310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway (Real.sqrt (A065017 (n + 1) : ℝ))).toNat

end

end A340770.P5407933790313524310

/-! ## A340770.P12597291577702831928

`A000720(sqrt(A065017(n+1)+2))`
-/

namespace A340770.P12597291577702831928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway (Real.sqrt (A065017 (n + 1) + 2 : ℝ))).toNat

end

end A340770.P12597291577702831928

/-! ## A340770.P12521465171119326685

`A061395(sqrt(A065017(n+1)+2))`
-/

namespace A340770.P12521465171119326685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway (Real.sqrt (A065017 (n + 1) + 2 : ℝ))).toNat

end

end A340770.P12521465171119326685

/-! ## A340770.P12120065681808731718

`A000720(p?[A126148(n+1)+2])`
-/

namespace A340770.P12120065681808731718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126148 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A340770.P12120065681808731718

/-! ## A340770.P1987422507645031658

`A304106(A128550(n+1))`
-/

namespace A340770.P1987422507645031658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304106 (A128550 (n + 1)).toNat

end

end A340770.P1987422507645031658

/-!
# A340771: Numbers which are the sum of some number of consecutive prime squares.

The programs for A340771, there is no canonical definition to state claims against.
-/

/-! ## A340771.P11607604459709876972

`A048261(eq[A054977(n), A124775(n)])`
-/

namespace A340771.P11607604459709876972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124775 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048261 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A340771.P11607604459709876972

/-! ## A340771.P5126904934069988724

`A048261(eq[A124775(n), A158388(n)])`
-/

namespace A340771.P5126904934069988724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124775 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048261 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A340771.P5126904934069988724

/-! ## A340771.P17105470857365414201

`∑{p}[A066117(n+1)², #²]`
-/

namespace A340771.P17105470857365414201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066117 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A340771.P17105470857365414201

/-! ## A340771.P16019017301436544926

`A005063(A066117(n+1))`
-/

namespace A340771.P16019017301436544926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (A066117 (n + 1)).toNat

end

end A340771.P16019017301436544926

/-! ## A340771.P260336331718042938

`A005063(A098012(n+1)^A103921(n+4))`
-/

namespace A340771.P260336331718042938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (SequenceMachineLib.roundAway ((A098012 (n + 1) : ℚ) ^ (A103921 (n + 4) : ℤ))).toNat

end

end A340771.P260336331718042938

/-!
# A340772: Number of strictly increasing sequences of n integers 0 < u_1 < ... < u_n such that 1/u_1 + 1/(u_1 + u_2) + ... + 1/(u_1 + ... + u_n) = n/(n+1).

The programs for A340772, there is no canonical definition to state claims against.
-/

/-! ## A340772.P16695530212789638321

`A351005(∑[2^n])`
-/

namespace A340772.P16695530212789638321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351005 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A340772.P16695530212789638321

/-! ## A340772.P12330305903361461775

`A351593(∑[2^n])`
-/

namespace A340772.P12330305903361461775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351593 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A340772.P12330305903361461775

/-!
# A340774: Dirichlet g.f.: Sum_{n>0} a(n)/n^s = zeta(s-1) * zeta(2*s-1).

The programs for A340774, the canonical program `A340774.P8127324298675915138` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340774 has offset 1).

The definition of A340774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340774.P5193813682036287660

`∑{d}[A000188(n+1), (n+1)/#]`
-/

namespace A340774.P5193813682036287660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (n + 1 : ℚ) / (d : ℚ)

end

end A340774.P5193813682036287660

namespace A340774

/-- `∑{d}[A000188(n+1), (n+1)/#]` -/
def P5193813682036287660.Spec : Prop :=
  ∀ n, P5193813682036287660.a n = (A340774 (n + 1) : ℚ)

end A340774

/-! ## A340774.P12431565545221825975

`∑{d}[A057918(n+1)+1, (n+1)/#]`
-/

namespace A340774.P12431565545221825975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (n + 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (n + 1 : ℚ) / (d : ℚ)

end

end A340774.P12431565545221825975

namespace A340774

/-- `∑{d}[A057918(n+1)+1, (n+1)/#]` -/
def P12431565545221825975.Spec : Prop :=
  ∀ n, P12431565545221825975.a n = (A340774 (n + 1) : ℚ)

end A340774

/-! ## A340774.P83361161590307212

`(n+1)*∑{d}[n+1, A037213(#)/#]`
-/

namespace A340774.P83361161590307212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ d ∈ Nat.divisors (f1 n), (A037213 d : ℚ) / (d : ℚ))

end

end A340774.P83361161590307212

namespace A340774

/-- `(n+1)*∑{d}[n+1, A037213(#)/#]` -/
def P83361161590307212.Spec : Prop :=
  ∀ n, P83361161590307212.a n = (A340774 (n + 1) : ℚ)

end A340774

/-! ## A340774.P11581398456969905142

`A019554(n+1)*A069290(n+1)`
-/

namespace A340774.P11581398456969905142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1) * A069290 (n + 1)

end

end A340774.P11581398456969905142

namespace A340774

/-- `A019554(n+1)*A069290(n+1)` -/
def P11581398456969905142.Spec : Prop :=
  ∀ n, P11581398456969905142.a n = A340774 (n + 1)

end A340774

/-! ## A340774.P1513722533396067152

`∑{d}[n+1, A000010(#)*A069290((n+1)/#)]`
-/

namespace A340774.P1513722533396067152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A069290 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A340774.P1513722533396067152

namespace A340774

/-- `∑{d}[n+1, A000010(#)*A069290((n+1)/#)]` -/
def P1513722533396067152.Spec : Prop :=
  ∀ n, P1513722533396067152.a n = A340774 (n + 1)

end A340774

/-! ## A340774.P8127324298675915138

`∑{d}[n+1, A057670(#)*A061019((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A340774

/-- `∑{d}[n+1, A057670(#)*A061019((n+1)/#)]` -/
def P8127324298675915138.Spec : Prop :=
  ∀ n, P8127324298675915138.a n = A340774 (n + 1)

theorem P8127324298675915138.correct : P8127324298675915138.Spec := by
  intro n
  simp only [A340774, Nat.add_sub_cancel]

end A340774

/-! ## A340774.P8663809603411383723

`∑{d}[n+1, A055155(#)*A074722((n+1)/#)]`
-/

namespace A340774.P8663809603411383723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055155 d * A074722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A340774.P8663809603411383723

namespace A340774

/-- `∑{d}[n+1, A055155(#)*A074722((n+1)/#)]` -/
def P8663809603411383723.Spec : Prop :=
  ∀ n, P8663809603411383723.a n = A340774 (n + 1)

end A340774

/-! ## A340774.P5581584281053117983

`∑{d}[n+1, A007431(#)*A124316((n+1)/#)]`
-/

namespace A340774.P5581584281053117983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A124316 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A340774.P5581584281053117983

namespace A340774

/-- `∑{d}[n+1, A007431(#)*A124316((n+1)/#)]` -/
def P5581584281053117983.Spec : Prop :=
  ∀ n, P5581584281053117983.a n = A340774 (n + 1)

end A340774

/-! ## A340774.P3105142867246096028

`∑{d}[n+1, A060640(#)*A178450((n+1)/#)]`
-/

namespace A340774.P3105142867246096028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060640 d * A178450 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A340774.P3105142867246096028

namespace A340774

/-- `∑{d}[n+1, A060640(#)*A178450((n+1)/#)]` -/
def P3105142867246096028.Spec : Prop :=
  ∀ n, P3105142867246096028.a n = A340774 (n + 1)

end A340774

/-! ## A340774.P8091317972563170978

`∑{d}[n+1, A035316(#)*A346612((n+1)/#)]`
-/

namespace A340774.P8091317972563170978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035316 d * A346612 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A340774.P8091317972563170978

namespace A340774

/-- `∑{d}[n+1, A035316(#)*A346612((n+1)/#)]` -/
def P8091317972563170978.Spec : Prop :=
  ∀ n, P8091317972563170978.a n = A340774 (n + 1)

end A340774

/-! ## A340774.P5753646783199681126

`∑{d}[n+1, A346613(#)*A358272((n+1)/#)]`
-/

namespace A340774.P5753646783199681126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A346613 d * A358272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A340774.P5753646783199681126

namespace A340774

/-- `∑{d}[n+1, A346613(#)*A358272((n+1)/#)]` -/
def P5753646783199681126.Spec : Prop :=
  ∀ n, P5753646783199681126.a n = A340774 (n + 1)

end A340774

/-! ## A340774.P4399654348845066688

`A000203(A000188(n+1))*A019554(n+1)`
-/

namespace A340774.P4399654348845066688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000188 (n + 1)).toNat * A019554 (n + 1)

end

end A340774.P4399654348845066688

namespace A340774

/-- `A000203(A000188(n+1))*A019554(n+1)` -/
def P4399654348845066688.Spec : Prop :=
  ∀ n, P4399654348845066688.a n = A340774 (n + 1)

end A340774

/-! ## A340774.P3541815658086981077

`∑{d}[A019554(A003557(n+1)), #*A019554(n+1)]`
-/

namespace A340774.P3541815658086981077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A003557 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A019554 (n + 1)

end

end A340774.P3541815658086981077

namespace A340774

/-- `∑{d}[A019554(A003557(n+1)), #*A019554(n+1)]` -/
def P3541815658086981077.Spec : Prop :=
  ∀ n, P3541815658086981077.a n = A340774 (n + 1)

end A340774

/-! ## A340774.P12443766406937891919

`A007947(n+1)/A152958(A007947(n+1))*A152958(n+1)`
-/

namespace A340774.P12443766406937891919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A152958 (A007947 (n + 1)).toNat : ℚ) * (A152958 (n + 1) : ℚ)

end

end A340774.P12443766406937891919

namespace A340774

/-- `A007947(n+1)/A152958(A007947(n+1))*A152958(n+1)` -/
def P12443766406937891919.Spec : Prop :=
  ∀ n, P12443766406937891919.a n = (A340774 (n + 1) : ℚ)

end A340774

/-! ## A340774.P18236785517808226327

`A000203(A000188(n+1))*A053166((n+1)*A003557(n+1))`
-/

namespace A340774.P18236785517808226327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000188 (n + 1)).toNat * A053166 ((n + 1 : ℤ) * A003557 (n + 1)).toNat

end

end A340774.P18236785517808226327

namespace A340774

/-- `A000203(A000188(n+1))*A053166((n+1)*A003557(n+1))` -/
def P18236785517808226327.Spec : Prop :=
  ∀ n, P18236785517808226327.a n = A340774 (n + 1)

end A340774

/-! ## A340774.P876922371203799636

`A000203(A000188(n+1))*A053166((n+1)*A057521(n+1))`
-/

namespace A340774.P876922371203799636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000188 (n + 1)).toNat * A053166 ((n + 1 : ℤ) * A057521 (n + 1)).toNat

end

end A340774.P876922371203799636

namespace A340774

/-- `A000203(A000188(n+1))*A053166((n+1)*A057521(n+1))` -/
def P876922371203799636.Spec : Prop :=
  ∀ n, P876922371203799636.a n = A340774 (n + 1)

end A340774

/-!
# A340775: G.f.: Sum_{n>=0} x^n/(1 - x^2*(1+x)^n).

The programs for A340775, there is no canonical definition to state claims against.
-/

/-! ## A340775.P10050180958475463514

`A320230(A006053(n)+1)`
-/

namespace A340775.P10050180958475463514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320230 (A006053 n + 1).toNat

end

end A340775.P10050180958475463514

/-! ## A340775.P3766906059072921455

`A364347(A000055(n))+floor(n/2)`
-/

namespace A340775.P3766906059072921455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364347 (A000055 n).toNat + ⌊(n : ℚ) / 2⌋

end

end A340775.P3766906059072921455

/-! ## A340775.P1376758512377169217

`A008619(A113863(n)-n%floor(sqrt(n+1)))`
-/

namespace A340775.P1376758512377169217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A113863 n - ((n % Nat.sqrt (n + 1) : ℕ) : ℤ)).toNat

end

end A340775.P1376758512377169217

/-! ## A340775.P15264788749514530978

`A008620(A293606(n)+A005627(n))`
-/

namespace A340775.P15264788749514530978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A293606 n + A005627 n).toNat

end

end A340775.P15264788749514530978

/-! ## A340775.P5900511341112522279

`A131996(A126087(n))`
-/

namespace A340775.P5900511341112522279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131996 (A126087 n).toNat

end

end A340775.P5900511341112522279

/-!
# A340776: G.f.: Sum_{n>=0} x^n/(1 - x*(1+x)^(n+1)).

The programs for A340776, there is no canonical definition to state claims against.
-/

/-! ## A340776.P13103043530731147685

`∑[abs(Δ[A099236(n)])]`
-/

namespace A340776.P13103043530731147685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099236 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340776.P13103043530731147685

/-! ## A340776.P16541671312346307072

`A099236(n+1)-1`
-/

namespace A340776.P16541671312346307072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099236 (n + 1) - 1

end

end A340776.P16541671312346307072

/-! ## A340776.P11306718513949698951

`record[Δ[A099236(∑[n]%(n+1))]]`
-/

namespace A340776.P11306718513949698951
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099236 ((∑ j ∈ Finset.range (n + 1), f3 j) % (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340776.P11306718513949698951

/-! ## A340776.P8056685309850143191

`∑[A185284(n)+Δ[A099236(n)]]`
-/

namespace A340776.P8056685309850143191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099236 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340776.P8056685309850143191

/-! ## A340776.P12786787262325710164

`∑[A014963(6*(n+1))*Δ[A099236(n)]]`
-/

namespace A340776.P12786787262325710164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099236 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340776.P12786787262325710164

/-!
# A340780: Losing positions n (P-positions) in the following game: two players take turns dividing the current value of n by either a prime power > 1 or by A007947(n) to obtain the new value of n. The winner is the player whose division results in 1.

The programs for A340780, there is no canonical definition to state claims against.
-/

/-! ## A340780.P2319772325018678214

`record[(n+1)^val(A050336(n+1)+1, 10)]`
-/

namespace A340780.P2319772325018678214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ SequenceMachineLib.valuation (A050336 (n + 1) + 1).toNat 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340780.P2319772325018678214

/-! ## A340780.P14579855648534302529

`filter[A385576(n+1), A005171(#)]`
-/

namespace A340780.P14579855648534302529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A340780.P14579855648534302529

/-! ## A340780.P8417574160784202652

`filter[A385576(n+1), A087049(#)]`
-/

namespace A340780.P8417574160784202652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A340780.P8417574160784202652

/-! ## A340780.P12378777953793878143

`filter[A385576(n+1), A353380(#)]`
-/

namespace A340780.P12378777953793878143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353380 (f1 j).toNat = 1) n)

end

end A340780.P12378777953793878143

/-! ## A340780.P6427193380459221729

`filter[A385576(n+1), A359464(#)]`
-/

namespace A340780.P6427193380459221729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A340780.P6427193380459221729

/-!
# A340781: a(n) = (n - 1)*prime(n + 1) mod prime(n).

The programs for A340781, the canonical program `A340781.P3679915960738657885` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340781 has offset 1).

The definition of A340781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340781.P11830310793063059026

`A306192(n+1)%Δ[A007504(n)]`
-/

namespace A340781.P11830310793063059026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306192 (n + 1)) (f1 (n + 1) - f1 n)

end

end A340781.P11830310793063059026

namespace A340781

/-- `A306192(n+1)%Δ[A007504(n)]` -/
def P11830310793063059026.Spec : Prop :=
  ∀ n, P11830310793063059026.a n = A340781 (n + 1)

end A340781

/-! ## A340781.P3679915960738657885

`(n*A065091(n+1))%A000040(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A340781

/-- `(n*A065091(n+1))%A000040(n+1)` -/
def P3679915960738657885.Spec : Prop :=
  ∀ n, P3679915960738657885.a n = A340781 (n + 1)

theorem P3679915960738657885.correct : P3679915960738657885.Spec := by
  intro n
  simp only [A340781, Nat.add_sub_cancel]

end A340781

/-! ## A340781.P13994090255984620191

`(n*A045533(n+1))%A273960(n+1)`
-/

namespace A340781.P13994090255984620191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A045533 (n + 1)) (A273960 (n + 1))

end

end A340781.P13994090255984620191

namespace A340781

/-- `(n*A045533(n+1))%A273960(n+1)` -/
def P13994090255984620191.Spec : Prop :=
  ∀ n, P13994090255984620191.a n = A340781 (n + 1)

end A340781

/-! ## A340781.P9420046103509076942

`(n*A000040(n+2))%A000040(n+1)`
-/

namespace A340781.P9420046103509076942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A000040 (n + 2)) (A000040 (n + 1))

end

end A340781.P9420046103509076942

namespace A340781

/-- `(n*A000040(n+2))%A000040(n+1)` -/
def P9420046103509076942.Spec : Prop :=
  ∀ n, P9420046103509076942.a n = A340781 (n + 1)

end A340781

/-! ## A340781.P8001315687645536935

`(n*A001223(n+1))%A008578(n+2)`
-/

namespace A340781.P8001315687645536935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A001223 (n + 1)) (A008578 (n + 2))

end

end A340781.P8001315687645536935

namespace A340781

/-- `(n*A001223(n+1))%A008578(n+2)` -/
def P8001315687645536935.Spec : Prop :=
  ∀ n, P8001315687645536935.a n = A340781 (n + 1)

end A340781

/-! ## A340781.P5784611058780203825

`(n*A008578(n+3))%A008578(n+2)`
-/

namespace A340781.P5784611058780203825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A008578 (n + 3)) (A008578 (n + 2))

end

end A340781.P5784611058780203825

namespace A340781

/-- `(n*A008578(n+3))%A008578(n+2)` -/
def P5784611058780203825.Spec : Prop :=
  ∀ n, P5784611058780203825.a n = A340781 (n + 1)

end A340781

/-! ## A340781.P15838926057418934065

`(n*A001043(n+1))%record[A020639(n+2)]`
-/

namespace A340781.P15838926057418934065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A001043 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A340781.P15838926057418934065

namespace A340781

/-- `(n*A001043(n+1))%record[A020639(n+2)]` -/
def P15838926057418934065.Spec : Prop :=
  ∀ n, P15838926057418934065.a n = A340781 (n + 1)

end A340781

/-! ## A340781.P16640179203969625257

`(n*A129767(2*n+3))%A129767(2*n+1)`
-/

namespace A340781.P16640179203969625257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A129767 (2 * n + 3)) (A129767 (2 * n + 1))

end

end A340781.P16640179203969625257

namespace A340781

/-- `(n*A129767(2*n+3))%A129767(2*n+1)` -/
def P16640179203969625257.Spec : Prop :=
  ∀ n, P16640179203969625257.a n = A340781 (n + 1)

end A340781

/-! ## A340781.P14582334530072064373

`(n*A209259(2*n+3))%A209259(2*n+1)`
-/

namespace A340781.P14582334530072064373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A209259 (2 * n + 3)) (A209259 (2 * n + 1))

end

end A340781.P14582334530072064373

namespace A340781

/-- `(n*A209259(2*n+3))%A209259(2*n+1)` -/
def P14582334530072064373.Spec : Prop :=
  ∀ n, P14582334530072064373.a n = A340781 (n + 1)

end A340781

/-! ## A340781.P1668277227373269540

`lcm(n, A207790(2*(n+2)))%A207790(2*(n+1))`
-/

namespace A340781.P1668277227373269540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lcm (n : ℤ) (A207790 (2 * (n + 2))) : ℤ) (A207790 (2 * (n + 1)))

end

end A340781.P1668277227373269540

namespace A340781

/-- `lcm(n, A207790(2*(n+2)))%A207790(2*(n+1))` -/
def P1668277227373269540.Spec : Prop :=
  ∀ n, P1668277227373269540.a n = A340781 (n + 1)

end A340781

/-!
# A340783: a(n) = n if n <= 3; for n>3, a(n) = the closest number to a(n-1) that has not occurred earlier and has at least one common factor with a(n-2), but none with a(n-1). In case of a tie, choose the smaller.

The programs for A340783, there is no canonical definition to state claims against.
-/

/-! ## A340783.P4217164536213525194

`A387731(A077168(n))`
-/

namespace A340783.P4217164536213525194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387731 (A077168 n).toNat

end

end A340783.P4217164536213525194

/-! ## A340783.P5632903009806473149

`A387731(n+1)+A000007(A000079(n))`
-/

namespace A340783.P5632903009806473149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387731 (n + 1) + A000007 (A000079 n).toNat

end

end A340783.P5632903009806473149

/-! ## A340783.P3233485956167850422

`A387731(n+1)+A056978(A289403(n))`
-/

namespace A340783.P3233485956167850422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387731 (n + 1) + A056978 (A289403 n).toNat

end

end A340783.P3233485956167850422

/-! ## A340783.P6572326732797953553

`A000035(A083318(n))*A387731(n+1)`
-/

namespace A340783.P6572326732797953553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A083318 n).toNat * A387731 (n + 1)

end

end A340783.P6572326732797953553

/-! ## A340783.P17931730335762034022

`A387731(n+1)/A053164(A205484(n))`
-/

namespace A340783.P17931730335762034022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A387731 (n + 1) : ℚ) / (A053164 (A205484 n).toNat : ℚ)

end

end A340783.P17931730335762034022

/-!
# A340784: Heinz numbers of even-length integer partitions of even numbers.

The programs for A340784, the canonical program `A340784.P18190419391720154980` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340784 has offset 1).

The definition of A340784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340784.P11277331361703189112

`eq[1, A353331(n+1)]+1`
-/

namespace A340784.P11277331361703189112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353331 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340784.P11277331361703189112

namespace A340784

/-- `eq[1, A353331(n+1)]+1` -/
def P11277331361703189112.Spec : Prop :=
  ∀ n, (P11277331361703189112.a n : ℤ) = A340784 (n + 1)

end A340784

/-! ## A340784.P6155710674749080907

`lt[1, A008458(A353333(n+1))]+1`
-/

namespace A340784.P6155710674749080907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A353333 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A340784.P6155710674749080907

namespace A340784

/-- `lt[1, A008458(A353333(n+1))]+1` -/
def P6155710674749080907.Spec : Prop :=
  ∀ n, (P6155710674749080907.a n : ℤ) = A340784 (n + 1)

end A340784

/-! ## A340784.P323430964305215161

`record[A000027(n+1)*A353331(n+1)]`
-/

namespace A340784.P323430964305215161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A353331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340784.P323430964305215161

namespace A340784

/-- `record[A000027(n+1)*A353331(n+1)]` -/
def P323430964305215161.Spec : Prop :=
  ∀ n, P323430964305215161.a n = A340784 (n + 1)

end A340784

/-! ## A340784.P12700533592717586281

`filter[A028260(n+1), A353331(#)]`
-/

namespace A340784.P12700533592717586281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353331 (f1 j).toNat = 1) n)

end

end A340784.P12700533592717586281

namespace A340784

/-- `filter[A028260(n+1), A353331(#)]` -/
def P12700533592717586281.Spec : Prop :=
  ∀ n, P12700533592717586281.a n = A340784 (n + 1)

end A340784

/-! ## A340784.P14790324779277526811

`∩[A028260(n+1), A322014(n+1)]`
-/

namespace A340784.P14790324779277526811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340784.P14790324779277526811

namespace A340784

/-- `∩[A028260(n+1), A322014(n+1)]` -/
def P14790324779277526811.Spec : Prop :=
  ∀ n, (P14790324779277526811.a n : ℤ) = A340784 (n + 1)

end A340784

/-! ## A340784.P5730619593759555980

`filter[A300061(n+1), A065043(#)]`
-/

namespace A340784.P5730619593759555980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A340784.P5730619593759555980

namespace A340784

/-- `filter[A300061(n+1), A065043(#)]` -/
def P5730619593759555980.Spec : Prop :=
  ∀ n, P5730619593759555980.a n = A340784 (n + 1)

end A340784

/-! ## A340784.P12460658910273969685

`filter[A300061(n+1), A353331(#)]`
-/

namespace A340784.P12460658910273969685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353331 (f1 j).toNat = 1) n)

end

end A340784.P12460658910273969685

namespace A340784

/-- `filter[A300061(n+1), A353331(#)]` -/
def P12460658910273969685.Spec : Prop :=
  ∀ n, P12460658910273969685.a n = A340784 (n + 1)

end A340784

/-! ## A340784.P18190419391720154980

`∩[A028260(n+1), A300061(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A340784

/-- `∩[A028260(n+1), A300061(n+1)]` -/
def P18190419391720154980.Spec : Prop :=
  ∀ n, (P18190419391720154980.a n : ℤ) = A340784 (n + 1)

theorem P18190419391720154980.correct : P18190419391720154980.Spec := by
  intro n
  simp only [A340784, Nat.add_sub_cancel]

end A340784

/-! ## A340784.P4687752644976637140

`∩[A300061(n+1), A322014(n+1)]`
-/

namespace A340784.P4687752644976637140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340784.P4687752644976637140

namespace A340784

/-- `∩[A300061(n+1), A322014(n+1)]` -/
def P4687752644976637140.Spec : Prop :=
  ∀ n, (P4687752644976637140.a n : ℤ) = A340784 (n + 1)

end A340784

/-! ## A340784.P2380617154684624732

`filter[A322014(n+1), A065043(#)]`
-/

namespace A340784.P2380617154684624732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A340784.P2380617154684624732

namespace A340784

/-- `filter[A322014(n+1), A065043(#)]` -/
def P2380617154684624732.Spec : Prop :=
  ∀ n, P2380617154684624732.a n = A340784 (n + 1)

end A340784

/-! ## A340784.P10500607915291048738

`filter[A322014(n+1), A353331(#)]`
-/

namespace A340784.P10500607915291048738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353331 (f1 j).toNat = 1) n)

end

end A340784.P10500607915291048738

namespace A340784

/-- `filter[A322014(n+1), A353331(#)]` -/
def P10500607915291048738.Spec : Prop :=
  ∀ n, P10500607915291048738.a n = A340784 (n + 1)

end A340784

/-! ## A340784.P5664329039132398691

`filter[A347450(n+1), A353331(#)]`
-/

namespace A340784.P5664329039132398691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353331 (f1 j).toNat = 1) n)

end

end A340784.P5664329039132398691

namespace A340784

/-- `filter[A347450(n+1), A353331(#)]` -/
def P5664329039132398691.Spec : Prop :=
  ∀ n, P5664329039132398691.a n = A340784 (n + 1)

end A340784

/-! ## A340784.P7172939226339222053

`∩[A300061(n+1), A347450(n+1)]`
-/

namespace A340784.P7172939226339222053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340784.P7172939226339222053

namespace A340784

/-- `∩[A300061(n+1), A347450(n+1)]` -/
def P7172939226339222053.Spec : Prop :=
  ∀ n, (P7172939226339222053.a n : ℤ) = A340784 (n + 1)

end A340784

/-! ## A340784.P3543804759639952577

`filter[A174891(n+1), A353331(#)]`
-/

namespace A340784.P3543804759639952577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353331 (f1 j).toNat = 1) n)

end

end A340784.P3543804759639952577

namespace A340784

/-- `filter[A174891(n+1), A353331(#)]` -/
def P3543804759639952577.Spec : Prop :=
  ∀ n, P3543804759639952577.a n = A340784 (n + 1)

end A340784

/-! ## A340784.P16346164525497590618

`filter[A239289(n+1), A353331(#)]`
-/

namespace A340784.P16346164525497590618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353331 (f1 j).toNat = 1) n)

end

end A340784.P16346164525497590618

namespace A340784

/-- `filter[A239289(n+1), A353331(#)]` -/
def P16346164525497590618.Spec : Prop :=
  ∀ n, P16346164525497590618.a n = A340784 (n + 1)

end A340784

/-! ## A340784.P15968666882403867141

`filter[A233182(n+1), A353331(#)]`
-/

namespace A340784.P15968666882403867141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353331 (f1 j).toNat = 1) n)

end

end A340784.P15968666882403867141

namespace A340784

/-- `filter[A233182(n+1), A353331(#)]` -/
def P15968666882403867141.Spec : Prop :=
  ∀ n, P15968666882403867141.a n = A340784 (n + 1)

end A340784

/-! ## A340784.P14257011962903014572

`filter[A018252(n+1), A353331(#)]`
-/

namespace A340784.P14257011962903014572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353331 (f1 j).toNat = 1) n)

end

end A340784.P14257011962903014572

namespace A340784

/-- `filter[A018252(n+1), A353331(#)]` -/
def P14257011962903014572.Spec : Prop :=
  ∀ n, P14257011962903014572.a n = A340784 (n + 1)

end A340784

/-! ## A340784.P11619178187547778254

`filter[A065090(n+1), A353331(#)]`
-/

namespace A340784.P11619178187547778254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353331 (f1 j).toNat = 1) n)

end

end A340784.P11619178187547778254

namespace A340784

/-- `filter[A065090(n+1), A353331(#)]` -/
def P11619178187547778254.Spec : Prop :=
  ∀ n, P11619178187547778254.a n = A340784 (n + 1)

end A340784

/-! ## A340784.P11926811663321609247

`filter[A171581(n+1), A353331(#)]`
-/

namespace A340784.P11926811663321609247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353331 (f1 j).toNat = 1) n)

end

end A340784.P11926811663321609247

namespace A340784

/-- `filter[A171581(n+1), A353331(#)]` -/
def P11926811663321609247.Spec : Prop :=
  ∀ n, P11926811663321609247.a n = A340784 (n + 1)

end A340784

/-! ## A340784.P5534700381876261016

`filter[A141468(n+2), A353331(#)]`
-/

namespace A340784.P5534700381876261016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353331 (f1 j).toNat = 1) n)

end

end A340784.P5534700381876261016

namespace A340784

/-- `filter[A141468(n+2), A353331(#)]` -/
def P5534700381876261016.Spec : Prop :=
  ∀ n, P5534700381876261016.a n = A340784 (n + 1)

end A340784

/-!
# A340785: Number of factorizations of 2n into even factors > 1.

The programs for A340785, there is no canonical definition to state claims against.
-/

/-! ## A340785.P14026109951095938922

`A349906(2*(n+1))`
-/

namespace A340785.P14026109951095938922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349906 (2 * (n + 1))

end

end A340785.P14026109951095938922

/-! ## A340785.P1496436838966663932

`A349906(n+2+n)%(n+2+n)`
-/

namespace A340785.P1496436838966663932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349906 (n + 2 + n)) (n + 2 + n : ℤ)

end

end A340785.P1496436838966663932

/-! ## A340785.P2290374909561543912

`A108501(A008619(n))^(n%2)`
-/

namespace A340785.P2290374909561543912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108501 (A008619 n).toNat ^ (n % 2)

end

end A340785.P2290374909561543912

/-! ## A340785.P8265003577317886741

`A108501(A004526(n)+1)^and(1, n)`
-/

namespace A340785.P8265003577317886741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108501 (A004526 n + 1).toNat ^ Nat.land 1 n

end

end A340785.P8265003577317886741

/-! ## A340785.P11922672725114485279

`A349906(A103517(n))^A040001(n)`
-/

namespace A340785.P11922672725114485279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349906 (A103517 n).toNat : ℚ) ^ (A040001 n : ℤ)

end

end A340785.P11922672725114485279

/-! ## A340785.P10080646781005516468

`A320439(A290641(2*(n+1)))`
-/

namespace A340785.P10080646781005516468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320439 (A290641 (2 * (n + 1))).toNat

end

end A340785.P10080646781005516468

/-!
# A340786: Number of factorizations of 4n into an even number of even factors > 1.

The programs for A340786, there is no canonical definition to state claims against.
-/

/-! ## A340786.P7310648537772834016

`or(A039999(A255483(n)), A069157(n+1))`
-/

namespace A340786.P7310648537772834016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A039999 (A255483 n).toNat) (A069157 (n + 1))

end

end A340786.P7310648537772834016

/-! ## A340786.P13122057050323085843

`A001511(∑[C(n+3, 2)]*A034836(n+1))`
-/

namespace A340786.P13122057050323085843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A034836 (n + 1)).toNat

end

end A340786.P13122057050323085843

/-! ## A340786.P5931013379124287022

`A001511(A008778(n)*A033273(n+1))`
-/

namespace A340786.P5931013379124287022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A008778 n * A033273 (n + 1)).toNat

end

end A340786.P5931013379124287022

/-! ## A340786.P16369941347742706156

`A001511(A008778(n)*A034836(n+1))`
-/

namespace A340786.P16369941347742706156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A008778 n * A034836 (n + 1)).toNat

end

end A340786.P16369941347742706156

/-! ## A340786.P9055464167195295665

`A320266(n+1)+A295883(A000079(n))`
-/

namespace A340786.P9055464167195295665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320266 (n + 1) + A295883 (A000079 n).toNat

end

end A340786.P9055464167195295665

/-!
# A340787: Heinz numbers of integer partitions of positive rank.

The programs for A340787, there is no canonical definition to state claims against.
-/

/-! ## A340787.P15669084773460557055

`comp[A330394(n)-1]+1`
-/

namespace A340787.P15669084773460557055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330394 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A340787.P15669084773460557055

/-! ## A340787.P3351194961557789743

`eq[0, A331281(n+1)]+1`
-/

namespace A340787.P3351194961557789743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331281 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340787.P3351194961557789743

/-! ## A340787.P12684346356176942006

`lt[0, A257541(n+2)]+2`
-/

namespace A340787.P12684346356176942006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257541 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A340787.P12684346356176942006

/-! ## A340787.P16241882704807670219

`eq[0, A331281(gcd(n, C(2, n)))]`
-/

namespace A340787.P16241882704807670219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331281 (Nat.gcd n (Nat.choose 2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340787.P16241882704807670219

/-! ## A340787.P2881017675949340290

`comp[A324521(n+1)-2]+2`
-/

namespace A340787.P2881017675949340290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324521 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A340787.P2881017675949340290

/-! ## A340787.P10338966058188855382

`comp[n*A331281(n+2)]+2`
-/

namespace A340787.P10338966058188855382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A331281 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A340787.P10338966058188855382

/-! ## A340787.P6412822967176742586

`lt[A331281(round(sqrt(n²+1))), 1]`
-/

namespace A340787.P6412822967176742586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331281 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A340787.P6412822967176742586

/-! ## A340787.P4908362121426207356

`comp[n*A331282(2*(n+1))]+1`
-/

namespace A340787.P4908362121426207356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A331282 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A340787.P4908362121426207356

/-! ## A340787.P5594369935188503390

`∩[A352487(n+1), A356438(n+1)]`
-/

namespace A340787.P5594369935188503390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340787.P5594369935188503390

/-! ## A340787.P3263517233183608398

`∪[A340604(n+1), A340605(n+1)]`
-/

namespace A340787.P3263517233183608398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340787.P3263517233183608398

/-!
# A340788: Heinz numbers of integer partitions of negative rank.

The programs for A340788, there is no canonical definition to state claims against.
-/

/-! ## A340788.P16262922207529150026

`filter[n+1, A331282(#)]`
-/

namespace A340788.P16262922207529150026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331282 (f1 j) = 1) n)

end

end A340788.P16262922207529150026

/-! ## A340788.P17858293694149400681

`eq[1, A331282(n+1)]+1`
-/

namespace A340788.P17858293694149400681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331282 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340788.P17858293694149400681

/-! ## A340788.P16548044763546879103

`record[(n+4)*A331282(n+4)]`
-/

namespace A340788.P16548044763546879103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A331282 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340788.P16548044763546879103

/-! ## A340788.P13857777625833492118

`eq[1, A331282(A028310(n))]`
-/

namespace A340788.P13857777625833492118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331282 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340788.P13857777625833492118

/-! ## A340788.P16539502377617749074

`A020725(eq[1, A331282(n+1)])`
-/

namespace A340788.P16539502377617749074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A340788.P16539502377617749074

/-! ## A340788.P6064980062594975091

`A065475(lt[0, A331282(n+1)])`
-/

namespace A340788.P6064980062594975091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A340788.P6064980062594975091

/-! ## A340788.P3804447352744788626

`eq[1, A331282(A138153(n+1))]`
-/

namespace A340788.P3804447352744788626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331282 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340788.P3804447352744788626

/-! ## A340788.P3174773199173847021

`eq[1, A331282(A233583(n+1))]`
-/

namespace A340788.P3174773199173847021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331282 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340788.P3174773199173847021

/-! ## A340788.P11135185760471668957

`∪[A340929(n+1), A340930(n+1)]`
-/

namespace A340788.P11135185760471668957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340788.P11135185760471668957

/-! ## A340788.P3041090311563682994

`lt[A061395(n+1), A001222(n+1)]+1`
-/

namespace A340788.P3041090311563682994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A340788.P3041090311563682994

/-!
# A340789: a(n) = (n!)^2 * Sum_{k=1..n} (-1)^(k+1) / (k!)^2.

The programs for A340789, the canonical program `A340789.P6861036504713089929` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340789 has offset 0).

The definition of A340789 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A340789.P6861036504713089929

`n²*a(n-1)-(-1)^n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A340789

/-- `n²*a(n-1)-(-1)^n` -/
def P6861036504713089929.Spec : Prop :=
  ∀ n, P6861036504713089929.a n = A340789 n

theorem P6861036504713089929.correct : P6861036504713089929.Spec := by
  intro n
  simp only [A340789]

end A340789

/-! ## A340789.P789585746608477509

`-xor(1, -(n²*a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A340789.P789585746608477509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  -Int.xor 1 (-((n ^ 2 : ℤ) * a (n - 1)))

end

end A340789.P789585746608477509

namespace A340789

/-- `-xor(1, -(n²*a(n-1)))` -/
def P789585746608477509.Spec : Prop :=
  ∀ n, P789585746608477509.a n = A340789 n

end A340789

/-! ## A340789.P17861114282398820534

`n*n*a(n-1)-(-1)^n` with `a(0)=0`
-/

namespace A340789.P17861114282398820534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * ((n : ℤ) * a (n - 1)) - (-1) ^ n

end

end A340789.P17861114282398820534

namespace A340789

/-- `n*n*a(n-1)-(-1)^n` -/
def P17861114282398820534.Spec : Prop :=
  ∀ n, P17861114282398820534.a n = A340789 n

theorem P17861114282398820534.correct : P17861114282398820534.Spec := by
  intro n
  simp only [A340789, Nat.add_sub_cancel, A340789.P17861114282398820534.a, A340789.P6861036504713089929.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A340789

/-! ## A340789.P8385000401666246602

`a(n-1)/n^(-2)-(-1)^n` with `a(0)=0`
-/

namespace A340789.P8385000401666246602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-2 : ℤ) - ((-1) ^ n : ℚ)

end

end A340789.P8385000401666246602

namespace A340789

/-- `a(n-1)/n^(-2)-(-1)^n` -/
def P8385000401666246602.Spec : Prop :=
  ∀ n, P8385000401666246602.a n = (A340789 n : ℚ)

end A340789

/-! ## A340789.P13862572531806411309

`A165326(n)+n²*a(n-1)` with `a(0)=0`
-/

namespace A340789.P13862572531806411309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A165326 n + (n ^ 2 : ℤ) * a (n - 1)

end

end A340789.P13862572531806411309

namespace A340789

/-- `A165326(n)+n²*a(n-1)` -/
def P13862572531806411309.Spec : Prop :=
  ∀ n, P13862572531806411309.a n = A340789 n

end A340789

/-!
# A340791: Irregular triangle read by rows in which row n lists the positive divisors of n that are >= sqrt(n) in decreasing order.

The programs for A340791, there is no canonical definition to state claims against.
-/

/-! ## A340791.P6219016217731689669

`∑[char[A211275(n+1)]]/A161906(n+1)`
-/

namespace A340791.P6219016217731689669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211275 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A161906 (n + 1) : ℚ)

end

end A340791.P6219016217731689669

/-! ## A340791.P6716520678105073136

`(∑[char[A094820(n+1)]]+1)/A161906(n+1)`
-/

namespace A340791.P6716520678105073136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094820 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / (A161906 (n + 1) : ℚ)

end

end A340791.P6716520678105073136

/-! ## A340791.P9335557257050565752

`∑[A036987(A161906(n+1)²)]/A161906(n+1)`
-/

namespace A340791.P9335557257050565752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A161906 (n + 1) ^ 2).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A161906 (n + 1) : ℚ)

end

end A340791.P9335557257050565752

/-! ## A340791.P6307825601074267717

`∑[A068101(A161906(n+1)²)]/A161906(n+1)`
-/

namespace A340791.P6307825601074267717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068101 (A161906 (n + 1) ^ 2).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A161906 (n + 1) : ℚ)

end

end A340791.P6307825601074267717

/-! ## A340791.P10118752518615539928

`∑[A077618(A161906(n+1)²)]/A161906(n+1)`
-/

namespace A340791.P10118752518615539928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077618 (A161906 (n + 1) ^ 2).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A161906 (n + 1) : ℚ)

end

end A340791.P10118752518615539928

/-! ## A340791.P10908963200421611748

`∑[A000035(A161906(n+1)!)]/A161906(n+1)`
-/

namespace A340791.P10908963200421611748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Nat.factorial (A161906 (n + 1)).toNat)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A161906 (n + 1) : ℚ)

end

end A340791.P10908963200421611748

/-! ## A340791.P4790189228906956071

`A161908(n+1)/A161906(n+1)*A319135(n+1)`
-/

namespace A340791.P4790189228906956071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161908 (n + 1) : ℚ) / (A161906 (n + 1) : ℚ) * (A319135 (n + 1) : ℚ)

end

end A340791.P4790189228906956071

/-! ## A340791.P2975836413868445140

`∑[A000010(A161906(n+1)²)%2]/A161906(n+1)`
-/

namespace A340791.P2975836413868445140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A161906 (n + 1) ^ 2).toNat) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A161906 (n + 1) : ℚ)

end

end A340791.P2975836413868445140

/-! ## A340791.P16619187996632162732

`A340792(n+1)/A161906(n+1)`
-/

namespace A340791.P16619187996632162732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340792 (n + 1) : ℚ) / (A161906 (n + 1) : ℚ)

end

end A340791.P16619187996632162732

/-!
# A340792: List in which n appears ceiling(d(n)/2) = A038548(n) times, where d(n) is the number of divisors of n.

The programs for A340792, there is no canonical definition to state claims against.
-/

/-! ## A340792.P10047209074460088013

`∑[char[A211275(n+1)]]`
-/

namespace A340792.P10047209074460088013
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211275 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340792.P10047209074460088013

/-! ## A340792.P3848924366846876220

`∑[char[∑[A220400(4*n)]]]`
-/

namespace A340792.P3848924366846876220
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (4 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340792.P3848924366846876220

/-! ## A340792.P13087672426602307600

`∑[round(acot(A161906(n+1)))]`
-/

namespace A340792.P13087672426602307600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A161906 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340792.P13087672426602307600

/-! ## A340792.P9637862689734271495

`∑[char[A091627(n)+1]]+1`
-/

namespace A340792.P9637862689734271495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091627 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A340792.P9637862689734271495

/-! ## A340792.P1361823353080861651

`∑[char[A094820(n+1)]]+1`
-/

namespace A340792.P1361823353080861651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094820 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A340792.P1361823353080861651

/-! ## A340792.P7794012124102612372

`∑[char[∑[A038548(n+1)]]]+1`
-/

namespace A340792.P7794012124102612372
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A340792.P7794012124102612372

/-! ## A340792.P11157591222191640858

`∑[char[∑[A072670(n)+1]]]+1`
-/

namespace A340792.P11157591222191640858
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A340792.P11157591222191640858

/-! ## A340792.P5538257247404746314

`A061017(∑[A055027(n+1)])`
-/

namespace A340792.P5538257247404746314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A340792.P5538257247404746314

/-! ## A340792.P4803512413813595486

`∑[A016394(A161906(n+1))]`
-/

namespace A340792.P4803512413813595486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016394 (A161906 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340792.P4803512413813595486

/-! ## A340792.P8749456794219793686

`∑[A008683(A161906(n+1)²)]`
-/

namespace A340792.P8749456794219793686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A161906 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340792.P8749456794219793686

/-!
# A340793: Sequence whose partial sums give A000203.

The programs for A340793, the canonical program `A340793.P1700930985006359286` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340793 has offset 1).

The definition of A340793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340793.P1700930985006359286

`∑{d}[n+1, #]-∑{d}[n, #]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A340793

/-- `∑{d}[n+1, #]-∑{d}[n, #]` -/
def P1700930985006359286.Spec : Prop :=
  ∀ n, P1700930985006359286.a n = A340793 (n + 1)

theorem P1700930985006359286.correct : P1700930985006359286.Spec := by
  intro n
  simp only [A340793, Nat.add_sub_cancel]

end A340793

/-! ## A340793.P9737133855582471729

`A053222(abs(1-n)+1)`
-/

namespace A340793.P9737133855582471729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (|1 - (n : ℤ)| + 1).toNat

end

end A340793.P9737133855582471729

namespace A340793

/-- `A053222(abs(1-n)+1)` -/
def P9737133855582471729.Spec : Prop :=
  ∀ n, P9737133855582471729.a n = A340793 (n + 1)

end A340793

/-! ## A340793.P6940269179645543067

`Δ[A160664(n)]-∑{d}[n, #]`
-/

namespace A340793.P6940269179645543067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A340793.P6940269179645543067

namespace A340793

/-- `Δ[A160664(n)]-∑{d}[n, #]` -/
def P6940269179645543067.Spec : Prop :=
  ∀ n, P6940269179645543067.a n = A340793 (n + 1)

end A340793

/-! ## A340793.P2580391823994356947

`A000203(n+1)-∑{d}[n, #]`
-/

namespace A340793.P2580391823994356947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A340793.P2580391823994356947

namespace A340793

/-- `A000203(n+1)-∑{d}[n, #]` -/
def P2580391823994356947.Spec : Prop :=
  ∀ n, P2580391823994356947.a n = A340793 (n + 1)

end A340793

/-! ## A340793.P8984784246278240786

`A053223(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A340793.P8984784246278240786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A053223 (n - 1) + a (n - 1)

end

end A340793.P8984784246278240786

namespace A340793

/-- `A053223(n-1)+a(n-1)` -/
def P8984784246278240786.Spec : Prop :=
  ∀ n, P8984784246278240786.a n = A340793 (n + 1)

end A340793

/-! ## A340793.P9506475221325297678

`Δ[A000203(abs(1-n)+1)%(12*n+1)]`
-/

namespace A340793.P9506475221325297678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (|1 - (n : ℤ)| + 1).toNat) (12 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340793.P9506475221325297678

namespace A340793

/-- `Δ[A000203(abs(1-n)+1)%(12*n+1)]` -/
def P9506475221325297678.Spec : Prop :=
  ∀ n, P9506475221325297678.a n = A340793 (n + 1)

end A340793

/-! ## A340793.P11039348915312362836

`A000007(n)+Δ[A039653(n)]`
-/

namespace A340793.P11039348915312362836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A340793.P11039348915312362836

namespace A340793

/-- `A000007(n)+Δ[A039653(n)]` -/
def P11039348915312362836.Spec : Prop :=
  ∀ n, P11039348915312362836.a n = A340793 (n + 1)

end A340793

/-! ## A340793.P16934072212814621300

`A173455(n+1)+n-A039653(n)`
-/

namespace A340793.P16934072212814621300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (n + 1) + ((n : ℤ) - A039653 n)

end

end A340793.P16934072212814621300

namespace A340793

/-- `A173455(n+1)+n-A039653(n)` -/
def P16934072212814621300.Spec : Prop :=
  ∀ n, P16934072212814621300.a n = A340793 (n + 1)

end A340793

/-! ## A340793.P3509306691790525305

`A000203(n+1)-(A000203(n-1)+a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A340793.P3509306691790525305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000203 (n + 1) - (A000203 (n - 1) + a (n - 1))

end

end A340793.P3509306691790525305

namespace A340793

/-- `A000203(n+1)-(A000203(n-1)+a(n-1))` -/
def P3509306691790525305.Spec : Prop :=
  ∀ n, P3509306691790525305.a n = A340793 (n + 1)

end A340793

/-! ## A340793.P1347595411804897295

`Δ[A039653(n)+A014963(A001316(n))]`
-/

namespace A340793.P1347595411804897295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n + A014963 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340793.P1347595411804897295

namespace A340793

/-- `Δ[A039653(n)+A014963(A001316(n))]` -/
def P1347595411804897295.Spec : Prop :=
  ∀ n, P1347595411804897295.a n = A340793 (n + 1)

end A340793

/-! ## A340793.P11712107622236705049

`Δ[A039653(n)+A020639(A000010(n+2))]`
-/

namespace A340793.P11712107622236705049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n + A020639 (A000010 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340793.P11712107622236705049

namespace A340793

/-- `Δ[A039653(n)+A020639(A000010(n+2))]` -/
def P11712107622236705049.Spec : Prop :=
  ∀ n, P11712107622236705049.a n = A340793 (n + 1)

end A340793

/-! ## A340793.P11261700506435021643

`Δ[∑{d}[n, #]]`
-/

namespace A340793.P11261700506435021643
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A340793.P11261700506435021643

namespace A340793

/-- `Δ[∑{d}[n, #]]` -/
def P11261700506435021643.Spec : Prop :=
  ∀ n, P11261700506435021643.a n = A340793 (n + 1)

theorem P11261700506435021643.correct : P11261700506435021643.Spec := by
  intro n
  simp only [A340793, Nat.add_sub_cancel, A340793.P11261700506435021643.f2, A340793.P11261700506435021643.f1, A340793.P11261700506435021643.a, A340793.P1700930985006359286.f1, A340793.P1700930985006359286.f2, A340793.P1700930985006359286.a, SequenceMachineLib.memo_apply]

end A340793

/-! ## A340793.P12355175357301747648

`Δ[A245092(2*(n+1)-A157532(n+1))]`
-/

namespace A340793.P12355175357301747648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 ((2 * (n + 1) : ℤ) - A157532 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340793.P12355175357301747648

namespace A340793

/-- `Δ[A245092(2*(n+1)-A157532(n+1))]` -/
def P12355175357301747648.Spec : Prop :=
  ∀ n, P12355175357301747648.a n = A340793 (n + 1)

end A340793

/-! ## A340793.P5653555135050903182

`Δ[A245092(n+2-A157532(n+1)+n)]`
-/

namespace A340793.P5653555135050903182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 ((n + 2 : ℤ) - A157532 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340793.P5653555135050903182

namespace A340793

/-- `Δ[A245092(n+2-A157532(n+1)+n)]` -/
def P5653555135050903182.Spec : Prop :=
  ∀ n, P5653555135050903182.a n = A340793 (n + 1)

end A340793

/-! ## A340793.P3980645862507400317

`A000203(n+1)+A182629(n)-A046746(n)`
-/

namespace A340793.P3980645862507400317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A182629 n - A046746 n)

end

end A340793.P3980645862507400317

namespace A340793

/-- `A000203(n+1)+A182629(n)-A046746(n)` -/
def P3980645862507400317.Spec : Prop :=
  ∀ n, P3980645862507400317.a n = A340793 (n + 1)

end A340793

/-! ## A340793.P7339400046670295185

`Δ[A001065(A065262(abs(1-2*n)+1))+1+n]`
-/

namespace A340793.P7339400046670295185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A065262 (|1 - (2 * n : ℤ)| + 1).toNat).toNat + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340793.P7339400046670295185

namespace A340793

/-- `Δ[A001065(A065262(abs(1-2*n)+1))+1+n]` -/
def P7339400046670295185.Spec : Prop :=
  ∀ n, P7339400046670295185.a n = A340793 (n + 1)

end A340793

/-! ## A340793.P10349379525248619053

`A028310(A039653(n+1))-A039653(n)`
-/

namespace A340793.P10349379525248619053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A039653 (n + 1)).toNat - A039653 n

end

end A340793.P10349379525248619053

namespace A340793

/-- `A028310(A039653(n+1))-A039653(n)` -/
def P10349379525248619053.Spec : Prop :=
  ∀ n, P10349379525248619053.a n = A340793 (n + 1)

end A340793

/-! ## A340793.P9820336462434909312

`Δ[A039653(n)-A014963(4*n+2)]`
-/

namespace A340793.P9820336462434909312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n - A014963 (4 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340793.P9820336462434909312

namespace A340793

/-- `Δ[A039653(n)-A014963(4*n+2)]` -/
def P9820336462434909312.Spec : Prop :=
  ∀ n, P9820336462434909312.a n = A340793 (n + 1)

end A340793

/-! ## A340793.P2051880012648753661

`A000203(n+1)-A323243(A005940(n+1))`
-/

namespace A340793.P2051880012648753661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A323243 (A005940 (n + 1)).toNat

end

end A340793.P2051880012648753661

namespace A340793

/-- `A000203(n+1)-A323243(A005940(n+1))` -/
def P2051880012648753661.Spec : Prop :=
  ∀ n, P2051880012648753661.a n = A340793 (n + 1)

end A340793

/-!
# A340795: a(n) is the number of divisors of n that are Brazilian.

The programs for A340795, there is no canonical definition to state claims against.
-/

/-! ## A340795.P14546605674268379704

`A056978(C(A047201(n+1), 2^val(n+1, 2)))`
-/

namespace A340795.P14546605674268379704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056978 (Nat.choose (A047201 (n + 1)).toNat (2 ^ SequenceMachineLib.valuation (n + 1) 2))

end

end A340795.P14546605674268379704

/-! ## A340795.P16480072596847903873

`A220136(lt[A000081(n), A224064(2*n+5)]+1)`
-/

namespace A340795.P16480072596847903873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224064 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A340795.P16480072596847903873

/-! ## A340795.P458419282411376213

`A320005(A049905(n+1))`
-/

namespace A340795.P458419282411376213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320005 (A049905 (n + 1)).toNat

end

end A340795.P458419282411376213

/-! ## A340795.P17115422430435531796

`val(A103881(A360405(3*(n+1))), 6)`
-/

namespace A340795.P17115422430435531796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A103881 (A360405 (3 * (n + 1))).toNat).toNat 6

end

end A340795.P17115422430435531796

/-! ## A340795.P16418429597446555433

`∑{p}[A059344(3*n+1), A372552(#)]`
-/

namespace A340795.P16418429597446555433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059344 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A372552 p

end

end A340795.P16418429597446555433

/-!
# A340797: Integers whose number of divisors that are Brazilian sets a new record.

The programs for A340797, there is no canonical definition to state claims against.
-/

/-! ## A340797.P1051749937770186668

`A340796(record[A340795(n+1)])`
-/

namespace A340797.P1051749937770186668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340796 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A340797.P1051749937770186668

/-! ## A340797.P10572693916051003716

`A340796(lt[A340796(n), ∑[2*n]+41])`
-/

namespace A340797.P10572693916051003716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340796 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 41

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340796 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A340797.P10572693916051003716

/-! ## A340797.P14999880660584698781

`record[A340796(n)%A341057(3*n+5)]`
-/

namespace A340797.P14999880660584698781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340796 n) (A341057 (3 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340797.P14999880660584698781

/-!
# A340798: Square array read by descending antidiagonals. Let G be a simple labeled graph on n nodes. T(n,k) is the number of ways to give G an acyclic orientation and a coloring function C:V(G) -> {1,2,...,k} so that u->v implies C(u) >= C(v) for all u,v in V(G), n >= 0, k >= 0.

The programs for A340798, there is no canonical definition to state claims against.
-/

/-! ## A340798.P8925500948117065760

`A294046(n)+A083910(A153701(n+1))`
-/

namespace A340798.P8925500948117065760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294046 n + A083910 (A153701 (n + 1)).toNat

end

end A340798.P8925500948117065760

/-! ## A340798.P9602867086712206081

`A072088(A349971(n+1))+A004526(A185213(n))`
-/

namespace A340798.P9602867086712206081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A349971 (n + 1)).toNat + A004526 (A185213 n).toNat

end

end A340798.P9602867086712206081

/-!
# A340799: a(n) is the smallest prime p such that p + 1 has 2n divisors.

The programs for A340799, there is no canonical definition to state claims against.
-/

/-! ## A340799.P9751944761239140699

`A006530(A006530(n+4)*A080371(n+1))`
-/

namespace A340799.P9751944761239140699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006530 (n + 4) * A080371 (n + 1)).toNat

end

end A340799.P9751944761239140699

/-! ## A340799.P14635981441432398261

`A272476(A080371(n+1))`
-/

namespace A340799.P14635981441432398261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 (A080371 (n + 1)).toNat

end

end A340799.P14635981441432398261

/-! ## A340799.P960321511223664597

`A030101(A132479(n))*A080371(n+1)`
-/

namespace A340799.P960321511223664597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A132479 n).toNat * A080371 (n + 1)

end

end A340799.P960321511223664597

/-! ## A340799.P1178318276843083425

`A080367(A080371(n+1)*A095118(n+5))`
-/

namespace A340799.P1178318276843083425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080367 (A080371 (n + 1) * A095118 (n + 5)).toNat

end

end A340799.P1178318276843083425

/-! ## A340799.P14649124836088761094

`A080367(A080371(n+1)*A385193(n+1))`
-/

namespace A340799.P14649124836088761094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080367 (A080371 (n + 1) * A385193 (n + 1)).toNat

end

end A340799.P14649124836088761094

