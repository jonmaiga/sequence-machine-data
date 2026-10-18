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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
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
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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

/-!
# A320900: Expansion of Sum_{k>=1} x^k/(1 + x^k)^3.

The programs for A320900, the canonical program `A320900.P17696305435880861285` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320900 has offset 1).

The definition of A320900 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A050999, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A320900.P13921790191651000305

`(A002129(n+1)+A321543(n+1))/2`
-/

namespace A320900.P13921790191651000305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002129 (n + 1) + A321543 (n + 1) : ℚ) / 2

end

end A320900.P13921790191651000305

namespace A320900

/-- `(A002129(n+1)+A321543(n+1))/2` -/
def P13921790191651000305.Spec : Prop :=
  ∀ n, P13921790191651000305.a n = (A320900 (n + 1) : ℚ)

end A320900

/-! ## A320900.P17696305435880861285

`A000593(n+1)+A050999(n+1)-(A000203(n+1)+A001157(n+1))/2`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A320900

/-- `A000593(n+1)+A050999(n+1)-(A000203(n+1)+A001157(n+1))/2` -/
def P17696305435880861285.Spec : Prop :=
  ∀ n, P17696305435880861285.a n = (A320900 (n + 1) : ℚ)

end A320900

/-! ## A320900.P4431635358273389383

`∑{d}[n+1, -A089594(#)]`
-/

namespace A320900.P4431635358273389383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-A089594 d)

end

end A320900.P4431635358273389383

namespace A320900

/-- `∑{d}[n+1, -A089594(#)]` -/
def P4431635358273389383.Spec : Prop :=
  ∀ n, P4431635358273389383.a n = A320900 (n + 1)

end A320900

/-! ## A320900.P1466478901392686185

`A092346((n+1)/2^val(n+1, 2))-∑{d}[n+1, C(#+1, 2)]`
-/

namespace A320900.P1466478901392686185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092346 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat - ((∑ d ∈ Nat.divisors (f1 n), Nat.choose (d + 1) 2 : ℕ) : ℤ)

end

end A320900.P1466478901392686185

namespace A320900

/-- `A092346((n+1)/2^val(n+1, 2))-∑{d}[n+1, C(#+1, 2)]` -/
def P1466478901392686185.Spec : Prop :=
  ∀ n, P1466478901392686185.a n = A320900 (n + 1)

end A320900

/-! ## A320900.P10268630261418171471

`A363598(n+1)+A320901(n+1)`
-/

namespace A320900.P10268630261418171471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363598 (n + 1) + A320901 (n + 1)

end

end A320900.P10268630261418171471

namespace A320900

/-- `A363598(n+1)+A320901(n+1)` -/
def P10268630261418171471.Spec : Prop :=
  ∀ n, P10268630261418171471.a n = A320900 (n + 1)

end A320900

/-! ## A320900.P11126017353656020691

`A363022(n+1)+A321543(n+1)`
-/

namespace A320900.P11126017353656020691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363022 (n + 1) + A321543 (n + 1)

end

end A320900.P11126017353656020691

namespace A320900

/-- `A363022(n+1)+A321543(n+1)` -/
def P11126017353656020691.Spec : Prop :=
  ∀ n, P11126017353656020691.a n = A320900 (n + 1)

end A320900

/-! ## A320900.P1812872183546480398

`A002129(n+1)-A363022(n+1)`
-/

namespace A320900.P1812872183546480398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (n + 1) - A363022 (n + 1)

end

end A320900.P1812872183546480398

namespace A320900

/-- `A002129(n+1)-A363022(n+1)` -/
def P1812872183546480398.Spec : Prop :=
  ∀ n, P1812872183546480398.a n = A320900 (n + 1)

end A320900

/-! ## A320900.P8563649230596428614

`A363629(n+1)-A363630(n+1)`
-/

namespace A320900.P8563649230596428614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363629 (n + 1) - A363630 (n + 1)

end

end A320900.P8563649230596428614

namespace A320900

/-- `A363629(n+1)-A363630(n+1)` -/
def P8563649230596428614.Spec : Prop :=
  ∀ n, P8563649230596428614.a n = A320900 (n + 1)

end A320900

/-! ## A320900.P5919733008181391164

`∑{d}[n+1, A023900(#)*A364343((n+1)/#)]`
-/

namespace A320900.P5919733008181391164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A364343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A320900.P5919733008181391164

namespace A320900

/-- `∑{d}[n+1, A023900(#)*A364343((n+1)/#)]` -/
def P5919733008181391164.Spec : Prop :=
  ∀ n, P5919733008181391164.a n = A320900 (n + 1)

end A320900

/-! ## A320900.P16846598996864712599

`∑{d}[n+1, A046970(#)*A364351((n+1)/#)]`
-/

namespace A320900.P16846598996864712599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046970 d * A364351 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A320900.P16846598996864712599

namespace A320900

/-- `∑{d}[n+1, A046970(#)*A364351((n+1)/#)]` -/
def P16846598996864712599.Spec : Prop :=
  ∀ n, P16846598996864712599.a n = A320900 (n + 1)

end A320900

/-! ## A320900.P9644217783241590215

`A092346(A000265(n+1))-A007437(n+1)`
-/

namespace A320900.P9644217783241590215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092346 (A000265 (n + 1)).toNat - A007437 (n + 1)

end

end A320900.P9644217783241590215

namespace A320900

/-- `A092346(A000265(n+1))-A007437(n+1)` -/
def P9644217783241590215.Spec : Prop :=
  ∀ n, P9644217783241590215.a n = A320900 (n + 1)

end A320900

/-! ## A320900.P10941891430659785689

`A000593(n+1)+A050999(n+1)-A007437(n+1)`
-/

namespace A320900.P10941891430659785689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + (A050999 (n + 1) - A007437 (n + 1))

end

end A320900.P10941891430659785689

namespace A320900

/-- `A000593(n+1)+A050999(n+1)-A007437(n+1)` -/
def P10941891430659785689.Spec : Prop :=
  ∀ n, P10941891430659785689.a n = A320900 (n + 1)

end A320900

/-! ## A320900.P677532462425763314

`A002129(n+1)+A363615(n+1)-A325940(n+1)`
-/

namespace A320900.P677532462425763314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (n + 1) + (A363615 (n + 1) - A325940 (n + 1))

end

end A320900.P677532462425763314

namespace A320900

/-- `A002129(n+1)+A363615(n+1)-A325940(n+1)` -/
def P677532462425763314.Spec : Prop :=
  ∀ n, P677532462425763314.a n = A320900 (n + 1)

end A320900

/-! ## A320900.P7750308482132827651

`A048272(n+1)-(A363022(n+1)+A325940(n+1))`
-/

namespace A320900.P7750308482132827651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 1) - (A363022 (n + 1) + A325940 (n + 1))

end

end A320900.P7750308482132827651

namespace A320900

/-- `A048272(n+1)-(A363022(n+1)+A325940(n+1))` -/
def P7750308482132827651.Spec : Prop :=
  ∀ n, P7750308482132827651.a n = A320900 (n + 1)

end A320900

/-! ## A320900.P2856528268907329671

`A321543(n+1)+A325940(n+1)-A363615(n+1)`
-/

namespace A320900.P2856528268907329671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321543 (n + 1) + (A325940 (n + 1) - A363615 (n + 1))

end

end A320900.P2856528268907329671

namespace A320900

/-- `A321543(n+1)+A325940(n+1)-A363615(n+1)` -/
def P2856528268907329671.Spec : Prop :=
  ∀ n, P2856528268907329671.a n = A320900 (n + 1)

end A320900

/-! ## A320900.P15990706647462910943

`A320901(n+1)+A363022(n+1)-A363617(n+1)`
-/

namespace A320900.P15990706647462910943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320901 (n + 1) + (A363022 (n + 1) - A363617 (n + 1))

end

end A320900.P15990706647462910943

namespace A320900

/-- `A320901(n+1)+A363022(n+1)-A363617(n+1)` -/
def P15990706647462910943.Spec : Prop :=
  ∀ n, P15990706647462910943.a n = A320900 (n + 1)

end A320900

/-! ## A320900.P18200540256225499713

`A363629(n+1)-(A363631(n+1)+A320901(n+1))`
-/

namespace A320900.P18200540256225499713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363629 (n + 1) - (A363631 (n + 1) + A320901 (n + 1))

end

end A320900.P18200540256225499713

namespace A320900

/-- `A363629(n+1)-(A363631(n+1)+A320901(n+1))` -/
def P18200540256225499713.Spec : Prop :=
  ∀ n, P18200540256225499713.a n = A320900 (n + 1)

end A320900

/-! ## A320900.P13328292904980428570

`A363598(n+1)+A363630(n+1)-A363631(n+1)`
-/

namespace A320900.P13328292904980428570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363598 (n + 1) + (A363630 (n + 1) - A363631 (n + 1))

end

end A320900.P13328292904980428570

namespace A320900

/-- `A363598(n+1)+A363630(n+1)-A363631(n+1)` -/
def P13328292904980428570.Spec : Prop :=
  ∀ n, P13328292904980428570.a n = A320900 (n + 1)

end A320900

/-!
# A320901: Expansion of Sum_{k>=1} x^k/(1 + x^k)^4.

The programs for A320901, the canonical program `A320901.P2796526842798435949` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320901 has offset 1).

The definition of A320901 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A001158, A050999, A051000, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A320901.P6191443659479296647

`(A138503(n+1)+3*A321543(n+1)+2*A002129(n+1))/6`
-/

namespace A320901.P6191443659479296647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138503 (n + 1) + 3 * A321543 (n + 1) + 2 * A002129 (n + 1) : ℚ) / 6

end

end A320901.P6191443659479296647

namespace A320901

/-- `(A138503(n+1)+3*A321543(n+1)+2*A002129(n+1))/6` -/
def P6191443659479296647.Spec : Prop :=
  ∀ n, P6191443659479296647.a n = (A320901 (n + 1) : ℚ)

end A320901

/-! ## A320901.P2796526842798435949

`(4*A000593(n+1)+6*A050999(n+1)+2*A051000(n+1)-2*A000203(n+1)-3*A001157(n+1)-A001158(n+1))/6`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A320901

/-- `(4*A000593(n+1)+6*A050999(n+1)+2*A051000(n+1)-2*A000203(n+1)-3*A001157(n+1)-A001158(n+1))/6` -/
def P2796526842798435949.Spec : Prop :=
  ∀ n, P2796526842798435949.a n = (A320901 (n + 1) : ℚ)

end A320901

/-! ## A320901.P4661624204444610425

`A363617(n+1)+A321543(n+1)`
-/

namespace A320901.P4661624204444610425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363617 (n + 1) + A321543 (n + 1)

end

end A320901.P4661624204444610425

namespace A320901

/-- `A363617(n+1)+A321543(n+1)` -/
def P4661624204444610425.Spec : Prop :=
  ∀ n, P4661624204444610425.a n = A320901 (n + 1)

end A320901

/-! ## A320901.P11072984007766807313

`A320900(n+1)-A363598(n+1)`
-/

namespace A320901.P11072984007766807313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320900 (n + 1) - A363598 (n + 1)

end

end A320901.P11072984007766807313

namespace A320901

/-- `A320900(n+1)-A363598(n+1)` -/
def P11072984007766807313.Spec : Prop :=
  ∀ n, P11072984007766807313.a n = A320901 (n + 1)

end A320901

/-! ## A320901.P7865720502863854479

`A363630(n+1)-A363631(n+1)`
-/

namespace A320901.P7865720502863854479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363630 (n + 1) - A363631 (n + 1)

end

end A320901.P7865720502863854479

namespace A320901

/-- `A363630(n+1)-A363631(n+1)` -/
def P7865720502863854479.Spec : Prop :=
  ∀ n, P7865720502863854479.a n = A320901 (n + 1)

end A320901

/-! ## A320901.P10403438380827481620

`A002129(n+1)-(A363598(n+1)+A363022(n+1))`
-/

namespace A320901.P10403438380827481620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (n + 1) - (A363598 (n + 1) + A363022 (n + 1))

end

end A320901.P10403438380827481620

namespace A320901

/-- `A002129(n+1)-(A363598(n+1)+A363022(n+1))` -/
def P10403438380827481620.Spec : Prop :=
  ∀ n, P10403438380827481620.a n = A320901 (n + 1)

end A320901

/-! ## A320901.P13179913846330317926

`A363629(n+1)-(A363631(n+1)+A320900(n+1))`
-/

namespace A320901.P13179913846330317926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363629 (n + 1) - (A363631 (n + 1) + A320900 (n + 1))

end

end A320901.P13179913846330317926

namespace A320901

/-- `A363629(n+1)-(A363631(n+1)+A320900(n+1))` -/
def P13179913846330317926.Spec : Prop :=
  ∀ n, P13179913846330317926.a n = A320901 (n + 1)

end A320901

/-! ## A320901.P10149498017867753658

`A321543(n+1)+A363615(n+1)-A363616(n+1)`
-/

namespace A320901.P10149498017867753658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321543 (n + 1) + (A363615 (n + 1) - A363616 (n + 1))

end

end A320901.P10149498017867753658

namespace A320901

/-- `A321543(n+1)+A363615(n+1)-A363616(n+1)` -/
def P10149498017867753658.Spec : Prop :=
  ∀ n, P10149498017867753658.a n = A320901 (n + 1)

end A320901

/-! ## A320901.P5456413942123030714

`A363629(n+1)-(A363630(n+1)+A363598(n+1))`
-/

namespace A320901.P5456413942123030714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363629 (n + 1) - (A363630 (n + 1) + A363598 (n + 1))

end

end A320901.P5456413942123030714

namespace A320901

/-- `A363629(n+1)-(A363630(n+1)+A363598(n+1))` -/
def P5456413942123030714.Spec : Prop :=
  ∀ n, P5456413942123030714.a n = A320901 (n + 1)

end A320901

/-! ## A320901.P8456418834222958220

`∑{d}[n+1, A053122(A000124(#))]`
-/

namespace A320901.P8456418834222958220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053122 (A000124 d).toNat

end

end A320901.P8456418834222958220

namespace A320901

/-- `∑{d}[n+1, A053122(A000124(#))]` -/
def P8456418834222958220.Spec : Prop :=
  ∀ n, P8456418834222958220.a n = A320901 (n + 1)

end A320901

/-!
# A320902: Expansion of ogf(x, t) = u / (6*x - t*x*u - 2) with u = x*(2*x - 2*y + 8) + y - 3 and y = sqrt(1 - 4*x). Triangle read by rows: T(n, k) with 0 <= k <= n.

The programs for A320902, there is no canonical definition to state claims against.
-/

/-! ## A320902.P4874263091330446635

`A178786(A007318(n)²*A073483(n+1))`
-/

namespace A320902.P4874263091330446635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 (A007318 n ^ 2 * A073483 (n + 1)).toNat

end

end A320902.P4874263091330446635

/-! ## A320902.P1201620322417269605

`A178786(A007318(n)*A073483(n+1)*A007318(n))`
-/

namespace A320902.P1201620322417269605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 (A007318 n * A073483 (n + 1) * A007318 n).toNat

end

end A320902.P1201620322417269605

/-!
# A320903: Row sums of A320902.

The programs for A320903, there is no canonical definition to state claims against.
-/

/-! ## A320903.P16422442626190290769

`∑[A187188(A000031(2*n+3))]`
-/

namespace A320903.P16422442626190290769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A000031 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320903.P16422442626190290769

/-! ## A320903.P14491525021931797041

`∑[floor(sqrt(A272105(2*n)))]`
-/

namespace A320903.P14491525021931797041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A272105 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320903.P14491525021931797041

/-! ## A320903.P1846001933703974073

`round(∏{p}[A174493(n+1), sqrt(#)])`
-/

namespace A320903.P1846001933703974073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Real.sqrt (p : ℝ))

end

end A320903.P1846001933703974073

/-!
# A320904: T(n, k) = binomial(2*n + 1 - k, k)*hypergeom([1, 1, -k], [1, 2*(n - k + 1)], -1), triangle read by rows, T(n, k) for n >= 0 and 0 <= k <= n.

The programs for A320904, there is no canonical definition to state claims against.
-/

/-! ## A320904.P4342738407697079071

`A008949(A128116(n+1)+n)`
-/

namespace A320904.P4342738407697079071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A128116 (n + 1) + (n : ℤ)).toNat

end

end A320904.P4342738407697079071

/-! ## A320904.P5686428827701017736

`A052509(round(sqrt(2*(n+1)))²+2*(n+1)-A131818(n+2))`
-/

namespace A320904.P5686428827701017736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 + (2 * (n + 1) : ℤ) - A131818 (n + 2)).toNat

end

end A320904.P5686428827701017736

/-! ## A320904.P2951515873910093407

`A052509(A292564(n)+A131507(n))`
-/

namespace A320904.P2951515873910093407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 (A292564 n + A131507 n).toNat

end

end A320904.P2951515873910093407

/-! ## A320904.P7804843698445620184

`A052509(A061885(n)+∑[A198954(n)])`
-/

namespace A320904.P7804843698445620184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 (A061885 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A320904.P7804843698445620184

/-! ## A320904.P7230089698751387840

`A052509(A093995(n+1)+A061885(n))`
-/

namespace A320904.P7230089698751387840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 (A093995 (n + 1) + A061885 n).toNat

end

end A320904.P7230089698751387840

/-! ## A320904.P7660799391153962992

`A052509(eq[A057211(n+1), A100218(n)])`
-/

namespace A320904.P7660799391153962992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A320904.P7660799391153962992

/-! ## A320904.P8288186265426399603

`A052509(A185869(n+1)-A002260(n+1))`
-/

namespace A320904.P8288186265426399603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 (A185869 (n + 1) - A002260 (n + 1)).toNat

end

end A320904.P8288186265426399603

/-!
# A320905: T(n, k) = binomial(2*n - 1 - k, k - 1)*hypergeom([2, 2, 1-k], [1, 1 - 2*k + 2*n], -1), triangle read by rows, T(n, k) for n >= 1 and 1 <= k <= n.

The programs for A320905, there is no canonical definition to state claims against.
-/

/-! ## A320905.P10626786604441592371

`A320906(comp[∑[n]])-A320906(n)`
-/

namespace A320905.P10626786604441592371
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320906 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A320906 n

end

end A320905.P10626786604441592371

/-! ## A320905.P11156621420430324846

`A094275(A193860(n))`
-/

namespace A320905.P11156621420430324846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094275 (A193860 n).toNat

end

end A320905.P11156621420430324846

/-! ## A320905.P15105588435143116411

`A247140(A343599(n))`
-/

namespace A320905.P15105588435143116411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247140 (A343599 n).toNat

end

end A320905.P15105588435143116411

/-! ## A320905.P15378853740505524011

`A121902(15*A013618(n))`
-/

namespace A320905.P15378853740505524011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (15 * A013618 n).toNat

end

end A320905.P15378853740505524011

/-! ## A320905.P2925647805375192523

`A193860(n)-A056170(A000110(n))`
-/

namespace A320905.P2925647805375192523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193860 n - A056170 (A000110 n).toNat

end

end A320905.P2925647805375192523

/-!
# A320906: T(n, k) = binomial(2*n - k, k - 1)*hypergeom([2, 2, 1 - k], [1, 2*(1 - k + n)], -1), triangle read by rows, T(n,k) for n >= 0 and 0 <= k <= n.

The programs for A320906, there is no canonical definition to state claims against.
-/

/-! ## A320906.P15185692651602992056

`A248807(A229001(n)+1)`
-/

namespace A320906.P15185692651602992056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248807 (A229001 n + 1).toNat

end

end A320906.P15185692651602992056

/-! ## A320906.P269063066122807788

`A111660(A193860(n)-A193844(n))`
-/

namespace A320906.P269063066122807788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A193860 n - A193844 n).toNat

end

end A320906.P269063066122807788

/-! ## A320906.P3265222218655209087

`A303489(n)%A053213(A121757(n))`
-/

namespace A320906.P3265222218655209087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303489 n) (A053213 (A121757 n).toNat)

end

end A320906.P3265222218655209087

/-! ## A320906.P15540776361217592188

`lcm(A002262(n), A163301(A156576(n)))`
-/

namespace A320906.P15540776361217592188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002262 n) (A163301 (A156576 n).toNat)

end

end A320906.P15540776361217592188

/-! ## A320906.P13585645989660097214

`A007302(A139601(n)!)*A139601(n)`
-/

namespace A320906.P13585645989660097214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (Nat.factorial (A139601 n).toNat) * A139601 n

end

end A320906.P13585645989660097214

/-!
# A320907: Row sums of A320906.

The programs for A320907, there is no canonical definition to state claims against.
-/

/-! ## A320907.P3921937092646436968

`∑[A318947(n+3)]`
-/

namespace A320907.P3921937092646436968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318947 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320907.P3921937092646436968

/-! ## A320907.P12350429421038646420

`∑[record[A318947(A008611(n))]]`
-/

namespace A320907.P12350429421038646420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318947 (A008611 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320907.P12350429421038646420

/-! ## A320907.P4422604426558210299

`∑[record[A318947(A008616(n))]]`
-/

namespace A320907.P4422604426558210299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318947 (A008616 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320907.P4422604426558210299

/-! ## A320907.P1394095501866080478

`∑[record[A318947(A008624(n))]]`
-/

namespace A320907.P1394095501866080478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318947 (A008624 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320907.P1394095501866080478

/-! ## A320907.P544590764407772008

`∑[record[A318947(A004481(n))]]`
-/

namespace A320907.P544590764407772008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318947 (A004481 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320907.P544590764407772008

/-! ## A320907.P12335726878365029337

`∑[record[A318947(A002262(n))]]`
-/

namespace A320907.P12335726878365029337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318947 (A002262 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320907.P12335726878365029337

/-!
# A320909: Numbers k such that k^2 and k^3, when reversed, are prime.

The programs for A320909, there is no canonical definition to state claims against.
-/

/-! ## A320909.P932684655125144625

`∩[A059007(n+1), A059008(n+1)]`
-/

namespace A320909.P932684655125144625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320909.P932684655125144625

/-!
# A320910: a(n)/2^n is the expected length of the longest palindromic subsequence of a length-n binary string.

The programs for A320910, there is no canonical definition to state claims against.
-/

/-! ## A320910.P13105912949947135150

`A175944(A027472(n+3))+A148730(n)`
-/

namespace A320910.P13105912949947135150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175944 (A027472 (n + 3)).toNat + A148730 n

end

end A320910.P13105912949947135150

/-! ## A320910.P9622543683852680300

`A144917(n+1)+A144917(A301467(n+1))`
-/

namespace A320910.P9622543683852680300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144917 (n + 1) + A144917 (A301467 (n + 1)).toNat

end

end A320910.P9622543683852680300

/-!
# A320911: Numbers with an even number of prime factors (counted with multiplicity) that can be factored into squarefree semiprimes.

The programs for A320911, there is no canonical definition to state claims against.
-/

/-! ## A320911.P14259811065799710559

`lt[A227291(3*(n+1)), A320656(n+1)]+1`
-/

namespace A320911.P14259811065799710559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227291 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320656 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A320911.P14259811065799710559

/-! ## A320911.P15657932869082455918

`eq[1, A096826(n+1)]+1`
-/

namespace A320911.P15657932869082455918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096826 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320911.P15657932869082455918

/-! ## A320911.P322534165713158212

`lt[A000035(n), A355817(n+1)]+1`
-/

namespace A320911.P322534165713158212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355817 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A320911.P322534165713158212

/-! ## A320911.P2127963610318707576

`lt[A049084(n+1), A320656(n+1)]+1`
-/

namespace A320911.P2127963610318707576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320656 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A320911.P2127963610318707576

/-! ## A320911.P17420533970388680358

`record[(2-A096826(n+1))*A000027(n+1)]`
-/

namespace A320911.P17420533970388680358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A096826 (n + 1)) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320911.P17420533970388680358

/-! ## A320911.P12012052367706884142

`record[(n+1)/A266772(9*A096826(n+1))]`
-/

namespace A320911.P12012052367706884142
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A266772 (9 * A096826 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320911.P12012052367706884142

/-! ## A320911.P17272525688455945381

`record[A000027(n+1)/A076722(A096826(n+1))]`
-/

namespace A320911.P17272525688455945381
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A076722 (A096826 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320911.P17272525688455945381

/-! ## A320911.P2717971365056767193

`record[(n+1)*A131038(A096826(n+1)²)]`
-/

namespace A320911.P2717971365056767193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A131038 (A096826 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320911.P2717971365056767193

/-! ## A320911.P3336790821077804062

`record[(n+1)/A249817(A096826(n+1)²)²]`
-/

namespace A320911.P3336790821077804062
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A249817 (A096826 (n + 1) ^ 2).toNat ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320911.P3336790821077804062

/-!
# A320912: Numbers with an even number of prime factors (counted with multiplicity) that can be factored into distinct semiprimes.

The programs for A320912, there is no canonical definition to state claims against.
-/

/-! ## A320912.P7503489240794213725

`lt[0, A322353(n+1)]+1`
-/

namespace A320912.P7503489240794213725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322353 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A320912.P7503489240794213725

/-! ## A320912.P7264643934691461195

`eq[1, A257990(A322353(n+1)+1)]+1`
-/

namespace A320912.P7264643934691461195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A322353 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320912.P7264643934691461195

/-! ## A320912.P13275948331567863691

`lt[acot(n), A322353(A028310(n))]`
-/

namespace A320912.P13275948331567863691
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322353 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A320912.P13275948331567863691

/-! ## A320912.P2528341095998042204

`lt[A000007(n), A322353(A028310(n))]`
-/

namespace A320912.P2528341095998042204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322353 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A320912.P2528341095998042204

/-! ## A320912.P4360219182594849411

`lt[A000038(n), A322353(A028310(n))]`
-/

namespace A320912.P4360219182594849411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322353 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A320912.P4360219182594849411

/-! ## A320912.P7324133647245194056

`lt[A319853(3*n+1), A328254(n+1)]+1`
-/

namespace A320912.P7324133647245194056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319853 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328254 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A320912.P7324133647245194056

/-! ## A320912.P462528342045618404

`lt[A224447(n), A007428(n+1)]+1`
-/

namespace A320912.P462528342045618404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224447 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007428 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A320912.P462528342045618404

/-! ## A320912.P8748710585247125102

`record[A008683(A332462(n+1))*A053165(n+1)]`
-/

namespace A320912.P8748710585247125102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A332462 (n + 1)).toNat * A053165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320912.P8748710585247125102

/-!
# A320913: Numbers with an even number of prime factors (counted with multiplicity) that cannot be factored into squarefree semiprimes (A320891) but can be factored into distinct semiprimes (A320912).

The programs for A320913, there is no canonical definition to state claims against.
-/

/-! ## A320913.P18239747704483887075

`filter[A067801(n+1), A359466(#)]`
-/

namespace A320913.P18239747704483887075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A320913.P18239747704483887075

/-! ## A320913.P2167101621074027654

`eq[2, A002033(A101296(n+1))]+1`
-/

namespace A320913.P2167101621074027654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A101296 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320913.P2167101621074027654

/-! ## A320913.P3812089529388505143

`∩[A000028(n+1), A067801(n+1)]`
-/

namespace A320913.P3812089529388505143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320913.P3812089529388505143

/-! ## A320913.P12624507573152223456

`∩[A066427(n+1), A067801(n+1)]`
-/

namespace A320913.P12624507573152223456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320913.P12624507573152223456

/-! ## A320913.P5121102257866896553

`∩[A067801(n+1), A188654(n+1)]`
-/

namespace A320913.P5121102257866896553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320913.P5121102257866896553

/-! ## A320913.P5030285717972099348

`∩[A067801(n+1), A190641(n+1)]`
-/

namespace A320913.P5030285717972099348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320913.P5030285717972099348

/-! ## A320913.P4019305746765177797

`∩[A067801(n+1), A212164(n+1)]`
-/

namespace A320913.P4019305746765177797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320913.P4019305746765177797

/-! ## A320913.P5749506046634622603

`∩[A067801(n+1), A320891(n+1)]`
-/

namespace A320913.P5749506046634622603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320913.P5749506046634622603

/-!
# A320916: Consider A010060 as a 2-adic number ...100110010110, then a(n) is its approximation up to 2^n.

The programs for A320916, the canonical program `A320916.P15605735686363910133` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320916 has offset 0).

The definition of A320916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320916.P10426279289961411231

`∑[floor(2^(n-1))*A010059(comp[2*(n+1)])]`
-/

namespace A320916.P10426279289961411231
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ * A010059 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320916.P10426279289961411231

namespace A320916

/-- `∑[floor(2^(n-1))*A010059(comp[2*(n+1)])]` -/
def P10426279289961411231.Spec : Prop :=
  ∀ n, P10426279289961411231.a n = A320916 n

end A320916

/-! ## A320916.P15605735686363910133

`∑[A011782(n)*A080813(n+6)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A320916

/-- `∑[A011782(n)*A080813(n+6)]` -/
def P15605735686363910133.Spec : Prop :=
  ∀ n, P15605735686363910133.a n = A320916 n

theorem P15605735686363910133.correct : P15605735686363910133.Spec := by
  intro n
  simp only [A320916]

end A320916

/-! ## A320916.P18333483594369844992

`∑[char[A181155(n+1)]*A011782(n)]`
-/

namespace A320916.P18333483594369844992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181155 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320916.P18333483594369844992

namespace A320916

/-- `∑[char[A181155(n+1)]*A011782(n)]` -/
def P18333483594369844992.Spec : Prop :=
  ∀ n, P18333483594369844992.a n = A320916 n

end A320916

/-! ## A320916.P17699260465433553952

`∑[2^n*A010060(n)]%(2^n)`
-/

namespace A320916.P17699260465433553952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (2 ^ n : ℤ)

end

end A320916.P17699260465433553952

namespace A320916

/-- `∑[2^n*A010060(n)]%(2^n)` -/
def P17699260465433553952.Spec : Prop :=
  ∀ n, P17699260465433553952.a n = A320916 n

end A320916

/-! ## A320916.P15504497938237908581

`∑[floor(A137822(abs(1-2*n))^n/2)]`
-/

namespace A320916.P15504497938237908581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A137822 |1 - (2 * n : ℤ)|.toNat ^ n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320916.P15504497938237908581

namespace A320916

/-- `∑[floor(A137822(abs(1-2*n))^n/2)]` -/
def P15504497938237908581.Spec : Prop :=
  ∀ n, P15504497938237908581.a n = A320916 n

end A320916

/-!
# A320917: a(n) = sigma_2(n)*sigma_3(n)/sigma(n).

The programs for A320917, the canonical program `A320917.P11023542699531419551` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320917 has offset 1).

The definition of A320917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320917.P11023542699531419551

`∑{d}[n+1, #^3]*∑{d}[n+1, #²]/∑{d}[n+1, #]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A320917

/-- `∑{d}[n+1, #^3]*∑{d}[n+1, #²]/∑{d}[n+1, #]` -/
def P11023542699531419551.Spec : Prop :=
  ∀ n, P11023542699531419551.a n = (A320917 (n + 1) : ℚ)

end A320917

/-! ## A320917.P6847400801376881081

`A379814(n+1)/A000203(n+1)`
-/

namespace A320917.P6847400801376881081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379814 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)

end

end A320917.P6847400801376881081

namespace A320917

/-- `A379814(n+1)/A000203(n+1)` -/
def P6847400801376881081.Spec : Prop :=
  ∀ n, P6847400801376881081.a n = (A320917 (n + 1) : ℚ)

end A320917

/-! ## A320917.P3946826635645661482

`A001157(n+1)/A000203(n+1)*A001158(n+1)`
-/

namespace A320917.P3946826635645661482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A001158 (n + 1) : ℚ)

end

end A320917.P3946826635645661482

namespace A320917

/-- `A001157(n+1)/A000203(n+1)*A001158(n+1)` -/
def P3946826635645661482.Spec : Prop :=
  ∀ n, P3946826635645661482.a n = (A320917 (n + 1) : ℚ)

end A320917

/-! ## A320917.P12667863049267703709

`A001157(n+1)/A091258(n+1)*A091259(n+1)`
-/

namespace A320917.P12667863049267703709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) : ℚ) / (A091258 (n + 1) : ℚ) * (A091259 (n + 1) : ℚ)

end

end A320917.P12667863049267703709

namespace A320917

/-- `A001157(n+1)/A091258(n+1)*A091259(n+1)` -/
def P12667863049267703709.Spec : Prop :=
  ∀ n, P12667863049267703709.a n = (A320917 (n + 1) : ℚ)

end A320917

/-! ## A320917.P7076562431772503695

`A001158(n+1)/A064987(n+1)*A328259(n+1)`
-/

namespace A320917.P7076562431772503695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001158 (n + 1) : ℚ) / (A064987 (n + 1) : ℚ) * (A328259 (n + 1) : ℚ)

end

end A320917.P7076562431772503695

namespace A320917

/-- `A001158(n+1)/A064987(n+1)*A328259(n+1)` -/
def P7076562431772503695.Spec : Prop :=
  ∀ n, P7076562431772503695.a n = (A320917 (n + 1) : ℚ)

end A320917

/-! ## A320917.P5312801502310193850

`A001157(n+1)/A379812(n+1)*A379814(n+1)`
-/

namespace A320917.P5312801502310193850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) : ℚ) / (A379812 (n + 1) : ℚ) * (A379814 (n + 1) : ℚ)

end

end A320917.P5312801502310193850

namespace A320917

/-- `A001157(n+1)/A379812(n+1)*A379814(n+1)` -/
def P5312801502310193850.Spec : Prop :=
  ∀ n, P5312801502310193850.a n = (A320917 (n + 1) : ℚ)

end A320917

/-! ## A320917.P6551220715452250252

`A001158(n+1)/A379813(n+1)*A379814(n+1)`
-/

namespace A320917.P6551220715452250252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001158 (n + 1) : ℚ) / (A379813 (n + 1) : ℚ) * (A379814 (n + 1) : ℚ)

end

end A320917.P6551220715452250252

namespace A320917

/-- `A001158(n+1)/A379813(n+1)*A379814(n+1)` -/
def P6551220715452250252.Spec : Prop :=
  ∀ n, P6551220715452250252.a n = (A320917 (n + 1) : ℚ)

end A320917

/-! ## A320917.P3353084796442644315

`A379814(n+1)/(A092346(n+1)-A001157(n+1))`
-/

namespace A320917.P3353084796442644315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379814 (n + 1) : ℚ) / (A092346 (n + 1) - A001157 (n + 1) : ℚ)

end

end A320917.P3353084796442644315

namespace A320917

/-- `A379814(n+1)/(A092346(n+1)-A001157(n+1))` -/
def P3353084796442644315.Spec : Prop :=
  ∀ n, P3353084796442644315.a n = (A320917 (n + 1) : ℚ)

end A320917

/-! ## A320917.P5815461292710463977

`A001158(n+1)/A203848(n+1)*A203849(n+1)`
-/

namespace A320917.P5815461292710463977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001158 (n + 1) : ℚ) / (A203848 (n + 1) : ℚ) * (A203849 (n + 1) : ℚ)

end

end A320917.P5815461292710463977

namespace A320917

/-- `A001158(n+1)/A203848(n+1)*A203849(n+1)` -/
def P5815461292710463977.Spec : Prop :=
  ∀ n, P5815461292710463977.a n = (A320917 (n + 1) : ℚ)

end A320917

/-! ## A320917.P1095349118710772378

`A001157(n+1)/A203848(n+1)*A203838(n+1)`
-/

namespace A320917.P1095349118710772378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) : ℚ) / (A203848 (n + 1) : ℚ) * (A203838 (n + 1) : ℚ)

end

end A320917.P1095349118710772378

namespace A320917

/-- `A001157(n+1)/A203848(n+1)*A203838(n+1)` -/
def P1095349118710772378.Spec : Prop :=
  ∀ n, P1095349118710772378.a n = (A320917 (n + 1) : ℚ)

end A320917

/-! ## A320917.P10564019281589864113

`A001158(n+1)/A204271(n+1)*A204272(n+1)`
-/

namespace A320917.P10564019281589864113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001158 (n + 1) : ℚ) / (A204271 (n + 1) : ℚ) * (A204272 (n + 1) : ℚ)

end

end A320917.P10564019281589864113

namespace A320917

/-- `A001158(n+1)/A204271(n+1)*A204272(n+1)` -/
def P10564019281589864113.Spec : Prop :=
  ∀ n, P10564019281589864113.a n = (A320917 (n + 1) : ℚ)

end A320917

/-! ## A320917.P8572787512009369656

`A001157(n+1)/A204271(n+1)*A204273(n+1)`
-/

namespace A320917.P8572787512009369656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) : ℚ) / (A204271 (n + 1) : ℚ) * (A204273 (n + 1) : ℚ)

end

end A320917.P8572787512009369656

namespace A320917

/-- `A001157(n+1)/A204271(n+1)*A204273(n+1)` -/
def P8572787512009369656.Spec : Prop :=
  ∀ n, P8572787512009369656.a n = (A320917 (n + 1) : ℚ)

end A320917

/-!
# A320919: Positive integers k such that binomial(k, 3) is divisible by 6.

The programs for A320919, the canonical program `A320919.P17442627616504040684` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320919 has offset 1).

The definition of A320919 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A320919.P17442627616504040684

`a(n-1)+a(n-9)-a(n-10)` with `a(0)=1, a(1)=2, a(2)=9, a(3)=10, a(4)=18, a(5)=20, a(6)=28, a(7)=29, a(8)=36, a(9)=37`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A320919

/-- `a(n-1)+a(n-9)-a(n-10)` -/
def P17442627616504040684.Spec : Prop :=
  ∀ n, P17442627616504040684.a n = A320919 (n + 1)

theorem P17442627616504040684.correct : P17442627616504040684.Spec := by
  intro n
  simp only [A320919, Nat.add_sub_cancel]

end A320919

/-! ## A320919.P17030236988082799573

`eq[A049625(n)%3, A001511(n+1)]`
-/

namespace A320919.P17030236988082799573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049625 n) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320919.P17030236988082799573

namespace A320919

/-- `eq[A049625(n)%3, A001511(n+1)]` -/
def P17030236988082799573.Spec : Prop :=
  ∀ n, (P17030236988082799573.a n : ℤ) = A320919 (n + 1)

end A320919

/-! ## A320919.P6769152650779619061

`eq[A001511(n+1), A010872(A049625(n))]`
-/

namespace A320919.P6769152650779619061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A049625 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320919.P6769152650779619061

namespace A320919

/-- `eq[A001511(n+1), A010872(A049625(n))]` -/
def P6769152650779619061.Spec : Prop :=
  ∀ n, (P6769152650779619061.a n : ℤ) = A320919 (n + 1)

end A320919

/-! ## A320919.P5151185515320529727

`eq[A021913(A289831(n)), A208604(3*n)]`
-/

namespace A320919.P5151185515320529727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A289831 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208604 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320919.P5151185515320529727

namespace A320919

/-- `eq[A021913(A289831(n)), A208604(3*n)]` -/
def P5151185515320529727.Spec : Prop :=
  ∀ n, (P5151185515320529727.a n : ℤ) = A320919 (n + 1)

end A320919

/-!
# A320920: a(n) is the smallest number m such that binomial(m,n) is nonzero and is divisible by n!.

The programs for A320920, there is no canonical definition to state claims against.
-/

/-! ## A320920.P5040814558923676278

`A143998(or(A062105(n+2), A133661(n+1)))`
-/

namespace A320920.P5040814558923676278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143998 (Int.lor (A062105 (n + 2)) (A133661 (n + 1))).toNat

end

end A320920.P5040814558923676278

/-!
# A320921: Number of connected graphical partitions of 2n.

The programs for A320921, there is no canonical definition to state claims against.
-/

/-! ## A320921.P1943810298229026901

`ogf((1+x-x^2-x^3+2x^4+3x^5+4x^6+8x^7+7x^8)/(1-2x^2-2x^3+x^4))`
-/

namespace A320921.P1943810298229026901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1, -1, 2, 3, 4, 8, 7] [1, 0, -2, -2, 1] n

end

end A320921.P1943810298229026901

/-! ## A320921.P1751233017193552345

`ceil(record[A288115(n)/32])`
-/

namespace A320921.P1751233017193552345
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288115 n : ℚ) / 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A320921.P1751233017193552345

/-! ## A320921.P3576101505253021242

`round(A330459(n+3)/8)`
-/

namespace A320921.P3576101505253021242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A330459 (n + 3) : ℚ) / 8)

end

end A320921.P3576101505253021242

/-! ## A320921.P13822374380803555416

`ceil(A356236(2*n+1)/4)`
-/

namespace A320921.P13822374380803555416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A356236 (2 * n + 1) : ℚ) / 4⌉

end

end A320921.P13822374380803555416

/-! ## A320921.P17752320753348934254

`A000607(floor(n²/6)+n+n)`
-/

namespace A320921.P17752320753348934254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (⌊(n ^ 2 : ℚ) / 6⌋ + (n : ℤ) + (n : ℤ)).toNat

end

end A320921.P17752320753348934254

/-!
# A320922: Heinz numbers of graphical partitions.

The programs for A320922, there is no canonical definition to state claims against.
-/

/-! ## A320922.P11264434952690469978

`∩[A320924(n+1), comp[A339618(n+1)]]`
-/

namespace A320922.P11264434952690469978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320924 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339618 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A320922.P11264434952690469978

/-! ## A320922.P4047456086792778509

`∩[comp[A339618(n+1)], A339658(n+1)]`
-/

namespace A320922.P4047456086792778509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339618 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A320922.P4047456086792778509

/-!
# A320923: Heinz numbers of connected graphical partitions.

The programs for A320923, there is no canonical definition to state claims against.
-/

/-! ## A320923.P1978406604665944346

`∩[A320922(n+1), A320925(n+1)]`
-/

namespace A320923.P1978406604665944346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320923.P1978406604665944346

/-! ## A320923.P5086894917924589382

`A320922(∪[A071837(3*(n+1)), A007916(n+1)])`
-/

namespace A320923.P5086894917924589382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071837 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320922 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A320923.P5086894917924589382

/-! ## A320923.P9058837058050922350

`A320922(A317090(n+1))%A242945(n+1)`
-/

namespace A320923.P9058837058050922350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320922 (A317090 (n + 1)).toNat) (A242945 (n + 1))

end

end A320923.P9058837058050922350

/-! ## A320923.P6715374027801874583

`A320922(lt[A309524(3*n+1), A255869(n)])`
-/

namespace A320923.P6715374027801874583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309524 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320922 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A320923.P6715374027801874583

/-!
# A320924: Heinz numbers of multigraphical partitions.

The programs for A320924, there is no canonical definition to state claims against.
-/

/-! ## A320924.P5234655634731665629

`∪[A320922(n+1), A320925(n+1)]`
-/

namespace A320924.P5234655634731665629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A320924.P5234655634731665629

/-! ## A320924.P2325820194969062311

`∪[A320922(n+1), A339842(n+1)]`
-/

namespace A320924.P2325820194969062311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A320924.P2325820194969062311

/-! ## A320924.P7543145538630987533

`∪[A320925(n+1), A357976(n+1)]`
-/

namespace A320924.P7543145538630987533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A320924.P7543145538630987533

/-! ## A320924.P12554577113140249047

`filter[A322109(n+1), A137893(#)]`
-/

namespace A320924.P12554577113140249047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137893 (f1 j).toNat = 1) n)

end

end A320924.P12554577113140249047

/-! ## A320924.P14656752119689548435

`filter[A322109(n+1), A341347(#)]`
-/

namespace A320924.P14656752119689548435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341347 (f1 j).toNat = 1) n)

end

end A320924.P14656752119689548435

/-!
# A320925: Heinz numbers of connected multigraphical partitions.

The programs for A320925, there is no canonical definition to state claims against.
-/

/-! ## A320925.P6837953207445254240

`∪[A320923(n+1), A339842(n+1)]`
-/

namespace A320925.P6837953207445254240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320923 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A320925.P6837953207445254240

/-! ## A320925.P12704528344943846652

`A320924(lt[A127818(3*n+4), 9*n])`
-/

namespace A320925.P12704528344943846652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127818 (3 * n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320924 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A320925.P12704528344943846652

/-! ## A320925.P18262877119666412095

`∩[comp[A328596(3*n+2)], A321454(n+1)]`
-/

namespace A320925.P18262877119666412095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328596 (3 * n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A320925.P18262877119666412095

/-!
# A320926: Concatenation of successive segments generated by the morphism {0 -> {0, 0, 1}, 1 -> {0}}, starting with 0.

The programs for A320926, the canonical program `A320926.P3058602061450553408` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320926 has offset 1).

The definition of A320926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320926.P11423597882352519779

`and(1, ∪[2*n², (n+3)²])`
-/

namespace A320926.P11423597882352519779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n)

end

end A320926.P11423597882352519779

namespace A320926

/-- `and(1, ∪[2*n², (n+3)²])` -/
def P11423597882352519779.Spec : Prop :=
  ∀ n, (P11423597882352519779.a n : ℤ) = A320926 (n + 1)

end A320926

/-! ## A320926.P3885734609955253236

`2-Δ[round((n+2)/sqrt(2)+n)]`
-/

namespace A320926.P3885734609955253236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℝ) / Real.sqrt (2 : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A320926.P3885734609955253236

namespace A320926

/-- `2-Δ[round((n+2)/sqrt(2)+n)]` -/
def P3885734609955253236.Spec : Prop :=
  ∀ n, P3885734609955253236.a n = A320926 (n + 1)

end A320926

/-! ## A320926.P12744806953121257082

`char[A001954(n)-2]`
-/

namespace A320926.P12744806953121257082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001954 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A320926.P12744806953121257082

namespace A320926

/-- `char[A001954(n)-2]` -/
def P12744806953121257082.Spec : Prop :=
  ∀ n, (P12744806953121257082.a n : ℤ) = A320926 (n + 1)

end A320926

/-! ## A320926.P7654425918573294443

`char[A184118(n+1)-1]`
-/

namespace A320926.P7654425918573294443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184118 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A320926.P7654425918573294443

namespace A320926

/-- `char[A184118(n+1)-1]` -/
def P7654425918573294443.Spec : Prop :=
  ∀ n, (P7654425918573294443.a n : ℤ) = A320926 (n + 1)

end A320926

/-! ## A320926.P4667190939613467442

`char[A003152(2*n+1)-2]`
-/

namespace A320926.P4667190939613467442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (2 * n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A320926.P4667190939613467442

namespace A320926

/-- `char[A003152(2*n+1)-2]` -/
def P4667190939613467442.Spec : Prop :=
  ∀ n, (P4667190939613467442.a n : ℤ) = A320926 (n + 1)

end A320926

/-! ## A320926.P17749323992511937831

`char[2*floor((n+1)/2*sqrt(2))+n+3]*A286665(n+1)`
-/

namespace A320926.P17749323992511937831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊((n + 1 : ℚ) / 2 : ℝ) * Real.sqrt (2 : ℝ)⌋ + (n + 3 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A286665 (n + 1)

end

end A320926.P17749323992511937831

namespace A320926

/-- `char[2*floor((n+1)/2*sqrt(2))+n+3]*A286665(n+1)` -/
def P17749323992511937831.Spec : Prop :=
  ∀ n, P17749323992511937831.a n = A320926 (n + 1)

end A320926

/-! ## A320926.P3058602061450553408

`A079979(A286692(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A320926

/-- `A079979(A286692(n+1))` -/
def P3058602061450553408.Spec : Prop :=
  ∀ n, P3058602061450553408.a n = A320926 (n + 1)

theorem P3058602061450553408.correct : P3058602061450553408.Spec := by
  intro n
  simp only [A320926, Nat.add_sub_cancel]

end A320926

/-! ## A320926.P11857885785744330610

`and(A049728(n), A286665(n+1))`
-/

namespace A320926.P11857885785744330610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049728 n) (A286665 (n + 1))

end

end A320926.P11857885785744330610

namespace A320926

/-- `and(A049728(n), A286665(n+1))` -/
def P11857885785744330610.Spec : Prop :=
  ∀ n, P11857885785744330610.a n = A320926 (n + 1)

end A320926

/-! ## A320926.P7795977247887728616

`and(A083051(n), A286665(n+1))`
-/

namespace A320926.P7795977247887728616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083051 n) (A286665 (n + 1))

end

end A320926.P7795977247887728616

namespace A320926

/-- `and(A083051(n), A286665(n+1))` -/
def P7795977247887728616.Spec : Prop :=
  ∀ n, P7795977247887728616.a n = A320926 (n + 1)

end A320926

/-! ## A320926.P2246273731384584662

`and(A007071(n+1), A286665(n+1))`
-/

namespace A320926.P2246273731384584662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007071 (n + 1)) (A286665 (n + 1))

end

end A320926.P2246273731384584662

namespace A320926

/-- `and(A007071(n+1), A286665(n+1))` -/
def P2246273731384584662.Spec : Prop :=
  ∀ n, P2246273731384584662.a n = A320926 (n + 1)

end A320926

/-! ## A320926.P1970556041096818050

`and(A184117(n+1), A286665(n+1))`
-/

namespace A320926.P1970556041096818050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A184117 (n + 1)) (A286665 (n + 1))

end

end A320926.P1970556041096818050

namespace A320926

/-- `and(A184117(n+1), A286665(n+1))` -/
def P1970556041096818050.Spec : Prop :=
  ∀ n, P1970556041096818050.a n = A320926 (n + 1)

end A320926

/-! ## A320926.P11332657547401852721

`and(A184580(n+1), A286665(n+1))`
-/

namespace A320926.P11332657547401852721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A184580 (n + 1)) (A286665 (n + 1))

end

end A320926.P11332657547401852721

namespace A320926

/-- `and(A184580(n+1), A286665(n+1))` -/
def P11332657547401852721.Spec : Prop :=
  ∀ n, P11332657547401852721.a n = A320926 (n + 1)

end A320926

/-! ## A320926.P4672089684400219409

`and(A184622(n+1), A286665(n+1))`
-/

namespace A320926.P4672089684400219409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A184622 (n + 1)) (A286665 (n + 1))

end

end A320926.P4672089684400219409

namespace A320926

/-- `and(A184622(n+1), A286665(n+1))` -/
def P4672089684400219409.Spec : Prop :=
  ∀ n, P4672089684400219409.a n = A320926 (n + 1)

end A320926

/-! ## A320926.P14590060455626085978

`and(A184624(n+1), A286665(n+1))`
-/

namespace A320926.P14590060455626085978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A184624 (n + 1)) (A286665 (n + 1))

end

end A320926.P14590060455626085978

namespace A320926

/-- `and(A184624(n+1), A286665(n+1))` -/
def P14590060455626085978.Spec : Prop :=
  ∀ n, P14590060455626085978.a n = A320926 (n + 1)

end A320926

/-! ## A320926.P8984514424015028879

`and(A286665(n+1), A286803(n+1))`
-/

namespace A320926.P8984514424015028879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A286665 (n + 1)) (A286803 (n + 1))

end

end A320926.P8984514424015028879

namespace A320926

/-- `and(A286665(n+1), A286803(n+1))` -/
def P8984514424015028879.Spec : Prop :=
  ∀ n, P8984514424015028879.a n = A320926 (n + 1)

end A320926

/-! ## A320926.P2984791291771127224

`and(A286665(n+1), A288998(n+1))`
-/

namespace A320926.P2984791291771127224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A286665 (n + 1)) (A288998 (n + 1))

end

end A320926.P2984791291771127224

namespace A320926

/-- `and(A286665(n+1), A288998(n+1))` -/
def P2984791291771127224.Spec : Prop :=
  ∀ n, P2984791291771127224.a n = A320926 (n + 1)

end A320926

/-! ## A320926.P17930284614658720773

`and(A286665(n+1), A289037(n+1))`
-/

namespace A320926.P17930284614658720773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A286665 (n + 1)) (A289037 (n + 1))

end

end A320926.P17930284614658720773

namespace A320926

/-- `and(A286665(n+1), A289037(n+1))` -/
def P17930284614658720773.Spec : Prop :=
  ∀ n, P17930284614658720773.a n = A320926 (n + 1)

end A320926

/-! ## A320926.P13546450574452895663

`and(A286665(n+1), A346522(n+1))`
-/

namespace A320926.P13546450574452895663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A286665 (n + 1)) (A346522 (n + 1))

end

end A320926.P13546450574452895663

namespace A320926

/-- `and(A286665(n+1), A346522(n+1))` -/
def P13546450574452895663.Spec : Prop :=
  ∀ n, P13546450574452895663.a n = A320926 (n + 1)

end A320926

/-! ## A320926.P10937543091714407218

`A028982(n+2)%2`
-/

namespace A320926.P10937543091714407218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028982 (n + 2)) 2

end

end A320926.P10937543091714407218

namespace A320926

/-- `A028982(n+2)%2` -/
def P10937543091714407218.Spec : Prop :=
  ∀ n, P10937543091714407218.a n = A320926 (n + 1)

end A320926

/-!
# A320927: Concatenation of successive segments generated by the morphism {0 -> {0, 0, 1}, 1 -> {0,1,0}}, starting with 0.

The programs for A320927, the canonical program `A320927.P4673491442562324260` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320927 has offset 1).

The definition of A320927 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320927.P4673491442562324260

`char[A189724(n+1)-2]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A320927

/-- `char[A189724(n+1)-2]` -/
def P4673491442562324260.Spec : Prop :=
  ∀ n, (P4673491442562324260.a n : ℤ) = A320927 (n + 1)

theorem P4673491442562324260.correct : P4673491442562324260.Spec := by
  intro n
  simp only [A320927, Nat.add_sub_cancel]

end A320927

/-! ## A320927.P1356202163463879589

`1-A189723(n+2)`
-/

namespace A320927.P1356202163463879589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A189723 (n + 2)

end

end A320927.P1356202163463879589

namespace A320927

/-- `1-A189723(n+2)` -/
def P1356202163463879589.Spec : Prop :=
  ∀ n, P1356202163463879589.a n = A320927 (n + 1)

end A320927

/-! ## A320927.P13337058130219329487

`1-Δ[A189726(n+1)]`
-/

namespace A320927.P13337058130219329487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A320927.P13337058130219329487

namespace A320927

/-- `1-Δ[A189726(n+1)]` -/
def P13337058130219329487.Spec : Prop :=
  ∀ n, P13337058130219329487.a n = A320927 (n + 1)

end A320927

/-! ## A320927.P5544151241591142147

`A189632(Δ[A189724(n+1)]+1)`
-/

namespace A320927.P5544151241591142147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189632 (f1 (n + 1) - f1 n + 1).toNat

end

end A320927.P5544151241591142147

namespace A320927

/-- `A189632(Δ[A189724(n+1)]+1)` -/
def P5544151241591142147.Spec : Prop :=
  ∀ n, P5544151241591142147.a n = A320927 (n + 1)

end A320927

/-! ## A320927.P5841455756442106223

`n+2-A189725(A189726(n+2))`
-/

namespace A320927.P5841455756442106223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A189725 (A189726 (n + 2)).toNat

end

end A320927.P5841455756442106223

namespace A320927

/-- `n+2-A189725(A189726(n+2))` -/
def P5841455756442106223.Spec : Prop :=
  ∀ n, P5841455756442106223.a n = A320927 (n + 1)

end A320927

/-! ## A320927.P3887038806654842253

`(A039966(n+1)-A189668(n+2))²`
-/

namespace A320927.P3887038806654842253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039966 (n + 1) - A189668 (n + 2)) ^ 2

end

end A320927.P3887038806654842253

namespace A320927

/-- `(A039966(n+1)-A189668(n+2))²` -/
def P3887038806654842253.Spec : Prop :=
  ∀ n, P3887038806654842253.a n = A320927 (n + 1)

end A320927

/-! ## A320927.P10325583060408589736

`A189632(Δ[A189724(n+2)]²)`
-/

namespace A320927.P10325583060408589736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189724 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189632 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A320927.P10325583060408589736

namespace A320927

/-- `A189632(Δ[A189724(n+2)]²)` -/
def P10325583060408589736.Spec : Prop :=
  ∀ n, P10325583060408589736.a n = A320927 (n + 1)

end A320927

/-! ## A320927.P9542372504011463848

`A189664(A274601(n+1))`
-/

namespace A320927.P9542372504011463848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189664 (A274601 (n + 1)).toNat

end

end A320927.P9542372504011463848

namespace A320927

/-- `A189664(A274601(n+1))` -/
def P9542372504011463848.Spec : Prop :=
  ∀ n, P9542372504011463848.a n = A320927 (n + 1)

end A320927

/-! ## A320927.P17645493768784326848

`A189628(A338247(n+1))`
-/

namespace A320927.P17645493768784326848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189628 (A338247 (n + 1)).toNat

end

end A320927.P17645493768784326848

namespace A320927

/-- `A189628(A338247(n+1))` -/
def P17645493768784326848.Spec : Prop :=
  ∀ n, P17645493768784326848.a n = A320927 (n + 1)

end A320927

/-! ## A320927.P8233508938568186861

`A116178(A189724(n+2)-2)`
-/

namespace A320927.P8233508938568186861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116178 (A189724 (n + 2) - 2).toNat

end

end A320927.P8233508938568186861

namespace A320927

/-- `A116178(A189724(n+2)-2)` -/
def P8233508938568186861.Spec : Prop :=
  ∀ n, P8233508938568186861.a n = A320927 (n + 1)

end A320927

/-! ## A320927.P8424352073271441660

`1-A189727(2*n+3)`
-/

namespace A320927.P8424352073271441660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A189727 (2 * n + 3)

end

end A320927.P8424352073271441660

namespace A320927

/-- `1-A189727(2*n+3)` -/
def P8424352073271441660.Spec : Prop :=
  ∀ n, P8424352073271441660.a n = A320927 (n + 1)

end A320927

/-! ## A320927.P18048475214206392539

`A284905(Δ[A284913(2*n+1)])`
-/

namespace A320927.P18048475214206392539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284913 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284905 (f1 (n + 1) - f1 n).toNat

end

end A320927.P18048475214206392539

namespace A320927

/-- `A284905(Δ[A284913(2*n+1)])` -/
def P18048475214206392539.Spec : Prop :=
  ∀ n, P18048475214206392539.a n = A320927 (n + 1)

end A320927

/-! ## A320927.P4030792912190231895

`A285305(A028352(n+1))`
-/

namespace A320927.P4030792912190231895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285305 (A028352 (n + 1)).toNat

end

end A320927.P4030792912190231895

namespace A320927

/-- `A285305(A028352(n+1))` -/
def P4030792912190231895.Spec : Prop :=
  ∀ n, P4030792912190231895.a n = A320927 (n + 1)

end A320927

/-! ## A320927.P5104629616253651550

`A189706(A189724(n+2)-1)`
-/

namespace A320927.P5104629616253651550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189706 (A189724 (n + 2) - 1).toNat

end

end A320927.P5104629616253651550

namespace A320927

/-- `A189706(A189724(n+2)-1)` -/
def P5104629616253651550.Spec : Prop :=
  ∀ n, P5104629616253651550.a n = A320927 (n + 1)

end A320927

/-! ## A320927.P5239915808488878565

`A189723(3*(n+1)+2)`
-/

namespace A320927.P5239915808488878565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189723 (3 * (n + 1) + 2)

end

end A320927.P5239915808488878565

namespace A320927

/-- `A189723(3*(n+1)+2)` -/
def P5239915808488878565.Spec : Prop :=
  ∀ n, P5239915808488878565.a n = A320927 (n + 1)

end A320927

/-! ## A320927.P13213375982767834806

`A287447(3*(n+1)+2)`
-/

namespace A320927.P13213375982767834806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287447 (3 * (n + 1) + 2)

end

end A320927.P13213375982767834806

namespace A320927

/-- `A287447(3*(n+1)+2)` -/
def P13213375982767834806.Spec : Prop :=
  ∀ n, P13213375982767834806.a n = A320927 (n + 1)

end A320927

/-! ## A320927.P3099850839910252116

`A287524(3*(n+1)+2)`
-/

namespace A320927.P3099850839910252116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287524 (3 * (n + 1) + 2)

end

end A320927.P3099850839910252116

namespace A320927

/-- `A287524(3*(n+1)+2)` -/
def P3099850839910252116.Spec : Prop :=
  ∀ n, P3099850839910252116.a n = A320927 (n + 1)

end A320927

/-! ## A320927.P3522228683493698028

`A122434(A189724(n+2))`
-/

namespace A320927.P3522228683493698028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122434 (A189724 (n + 2)).toNat

end

end A320927.P3522228683493698028

namespace A320927

/-- `A122434(A189724(n+2))` -/
def P3522228683493698028.Spec : Prop :=
  ∀ n, P3522228683493698028.a n = A320927 (n + 1)

end A320927

/-! ## A320927.P14676809437653547166

`A285305(2*A274601(n+1))`
-/

namespace A320927.P14676809437653547166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285305 (2 * A274601 (n + 1)).toNat

end

end A320927.P14676809437653547166

namespace A320927

/-- `A285305(2*A274601(n+1))` -/
def P14676809437653547166.Spec : Prop :=
  ∀ n, P14676809437653547166.a n = A320927 (n + 1)

end A320927

/-! ## A320927.P8596568742779536700

`A284912(Δ[2*(n+1)²])`
-/

namespace A320927.P8596568742779536700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284912 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A320927.P8596568742779536700

namespace A320927

/-- `A284912(Δ[2*(n+1)²])` -/
def P8596568742779536700.Spec : Prop :=
  ∀ n, P8596568742779536700.a n = A320927 (n + 1)

end A320927

/-!
# A320928: Positions of 0 in A320927.

The programs for A320928, the canonical program `A320928.P14647254000613725565` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320928 has offset 1).

The definition of A320928 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320928.P8147520572601861019

`A189725(n+1)-1`
-/

namespace A320928.P8147520572601861019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189725 (n + 1) - 1

end

end A320928.P8147520572601861019

namespace A320928

/-- `A189725(n+1)-1` -/
def P8147520572601861019.Spec : Prop :=
  ∀ n, P8147520572601861019.a n = A320928 (n + 1)

end A320928

/-! ## A320928.P5021322066569804868

`comp[A189724(n+1)-1]`
-/

namespace A320928.P5021322066569804868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189724 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A320928.P5021322066569804868

namespace A320928

/-- `comp[A189724(n+1)-1]` -/
def P5021322066569804868.Spec : Prop :=
  ∀ n, (P5021322066569804868.a n : ℤ) = A320928 (n + 1)

end A320928

/-! ## A320928.P14647254000613725565

`floor((A284914(n+1)+n)/2)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A320928

/-- `floor((A284914(n+1)+n)/2)` -/
def P14647254000613725565.Spec : Prop :=
  ∀ n, P14647254000613725565.a n = A320928 (n + 1)

theorem P14647254000613725565.correct : P14647254000613725565.Spec := by
  intro n
  simp only [A320928, Nat.add_sub_cancel]

end A320928

/-! ## A320928.P3632781842671328479

`comp[(n+1)*A320927(n+1)]`
-/

namespace A320928.P3632781842671328479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A320927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A320928.P3632781842671328479

namespace A320928

/-- `comp[(n+1)*A320927(n+1)]` -/
def P3632781842671328479.Spec : Prop :=
  ∀ n, (P3632781842671328479.a n : ℤ) = A320928 (n + 1)

end A320928

/-! ## A320928.P5005872011035062960

`A008619(n-A189727(n+1))+n`
-/

namespace A320928.P5005872011035062960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n : ℤ) - A189727 (n + 1)).toNat + (n : ℤ)

end

end A320928.P5005872011035062960

namespace A320928

/-- `A008619(n-A189727(n+1))+n` -/
def P5005872011035062960.Spec : Prop :=
  ∀ n, P5005872011035062960.a n = A320928 (n + 1)

end A320928

/-! ## A320928.P5188650821533467816

`∪[A026232(n+1), A287526(n+1)]-1`
-/

namespace A320928.P5188650821533467816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287526 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A320928.P5188650821533467816

namespace A320928

/-- `∪[A026232(n+1), A287526(n+1)]-1` -/
def P5188650821533467816.Spec : Prop :=
  ∀ n, P5188650821533467816.a n = A320928 (n + 1)

end A320928

/-! ## A320928.P79031983743475228

`∪[A189634(n+1), A287526(n+1)]-1`
-/

namespace A320928.P79031983743475228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287526 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A320928.P79031983743475228

namespace A320928

/-- `∪[A189634(n+1), A287526(n+1)]-1` -/
def P79031983743475228.Spec : Prop :=
  ∀ n, P79031983743475228.a n = A320928 (n + 1)

end A320928

/-! ## A320928.P2278806520132562062

`∪[A287449(n+1), A287450(n+1)]-1`
-/

namespace A320928.P2278806520132562062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287450 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A320928.P2278806520132562062

namespace A320928

/-- `∪[A287449(n+1), A287450(n+1)]-1` -/
def P2278806520132562062.Spec : Prop :=
  ∀ n, P2278806520132562062.a n = A320928 (n + 1)

end A320928

/-! ## A320928.P11643000796797260156

`lt[0, A287524(n+1)]`
-/

namespace A320928.P11643000796797260156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A320928.P11643000796797260156

namespace A320928

/-- `lt[0, A287524(n+1)]` -/
def P11643000796797260156.Spec : Prop :=
  ∀ n, (P11643000796797260156.a n : ℤ) = A320928 (n + 1)

end A320928

/-! ## A320928.P16860012735522564055

`lt[tan(7), A287447(n+1)]`
-/

namespace A320928.P16860012735522564055
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (7 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287447 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A320928.P16860012735522564055

namespace A320928

/-- `lt[tan(7), A287447(n+1)]` -/
def P16860012735522564055.Spec : Prop :=
  ∀ n, (P16860012735522564055.a n : ℤ) = A320928 (n + 1)

end A320928

/-! ## A320928.P13041959386155097563

`record[(n+1)%(A287524(n+2)+n+1)]`
-/

namespace A320928.P13041959386155097563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A287524 (n + 2) + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320928.P13041959386155097563

namespace A320928

/-- `record[(n+1)%(A287524(n+2)+n+1)]` -/
def P13041959386155097563.Spec : Prop :=
  ∀ n, P13041959386155097563.a n = A320928 (n + 1)

end A320928

/-! ## A320928.P7877901493983963077

`eq[A039966(n), A189668(n+1)]`
-/

namespace A320928.P7877901493983963077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189668 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320928.P7877901493983963077

namespace A320928

/-- `eq[A039966(n), A189668(n+1)]` -/
def P7877901493983963077.Spec : Prop :=
  ∀ n, (P7877901493983963077.a n : ℤ) = A320928 (n + 1)

end A320928

/-! ## A320928.P3126382742242506928

`lt[A028310(n)-A189723(n+1), n]`
-/

namespace A320928.P3126382742242506928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A189723 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A320928.P3126382742242506928

namespace A320928

/-- `lt[A028310(n)-A189723(n+1), n]` -/
def P3126382742242506928.Spec : Prop :=
  ∀ n, (P3126382742242506928.a n : ℤ) = A320928 (n + 1)

end A320928

/-! ## A320928.P16037821792374140382

`eq[A287528(n+1)!, A287524(n+1)]`
-/

namespace A320928.P16037821792374140382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A287528 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320928.P16037821792374140382

namespace A320928

/-- `eq[A287528(n+1)!, A287524(n+1)]` -/
def P16037821792374140382.Spec : Prop :=
  ∀ n, (P16037821792374140382.a n : ℤ) = A320928 (n + 1)

end A320928

/-! ## A320928.P6470693580464504041

`lt[char[A287429(n+1)], A287447(n+1)]`
-/

namespace A320928.P6470693580464504041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287429 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287447 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A320928.P6470693580464504041

namespace A320928

/-- `lt[char[A287429(n+1)], A287447(n+1)]` -/
def P6470693580464504041.Spec : Prop :=
  ∀ n, (P6470693580464504041.a n : ℤ) = A320928 (n + 1)

end A320928

/-! ## A320928.P17061302075657763686

`lt[char[A287465(n)], 2*A287447(n+1)]`
-/

namespace A320928.P17061302075657763686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287465 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A287447 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A320928.P17061302075657763686

namespace A320928

/-- `lt[char[A287465(n)], 2*A287447(n+1)]` -/
def P17061302075657763686.Spec : Prop :=
  ∀ n, (P17061302075657763686.a n : ℤ) = A320928 (n + 1)

end A320928

/-! ## A320928.P9767561364797549563

`lt[1, A189723(n+1)*A189725(n+1)]`
-/

namespace A320928.P9767561364797549563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189723 (n + 1) * A189725 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A320928.P9767561364797549563

namespace A320928

/-- `lt[1, A189723(n+1)*A189725(n+1)]` -/
def P9767561364797549563.Spec : Prop :=
  ∀ n, (P9767561364797549563.a n : ℤ) = A320928 (n + 1)

end A320928

/-! ## A320928.P15112383364514147986

`record[(n+1)/gcd(A000040(n+1), A287524(n+2))]`
-/

namespace A320928.P15112383364514147986
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A000040 (n + 1)) (A287524 (n + 2)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320928.P15112383364514147986

namespace A320928

/-- `record[(n+1)/gcd(A000040(n+1), A287524(n+2))]` -/
def P15112383364514147986.Spec : Prop :=
  ∀ n, P15112383364514147986.a n = (A320928 (n + 1) : ℚ)

end A320928

/-!
# A320929: Positions of 1 in A320927.

The programs for A320929, the canonical program `A320929.P17062656815919905450` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320929 has offset 1).

The definition of A320929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320929.P17062656815919905450

`A189724(n+2)-1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A320929

/-- `A189724(n+2)-1` -/
def P17062656815919905450.Spec : Prop :=
  ∀ n, P17062656815919905450.a n = A320929 (n + 1)

theorem P17062656815919905450.correct : P17062656815919905450.Spec := by
  intro n
  simp only [A320929, Nat.add_sub_cancel]

end A320929

/-! ## A320929.P2060546212665984291

`filter[n+1, A320927(#)]`
-/

namespace A320929.P2060546212665984291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320927 (f1 j) = 1) n)

end

end A320929.P2060546212665984291

namespace A320929

/-- `filter[n+1, A320927(#)]` -/
def P2060546212665984291.Spec : Prop :=
  ∀ n, (P2060546212665984291.a n : ℤ) = A320929 (n + 1)

end A320929

/-! ## A320929.P8835245585877686114

`comp[n*A189723(n+1)]`
-/

namespace A320929.P8835245585877686114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A189723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A320929.P8835245585877686114

namespace A320929

/-- `comp[n*A189723(n+1)]` -/
def P8835245585877686114.Spec : Prop :=
  ∀ n, (P8835245585877686114.a n : ℤ) = A320929 (n + 1)

end A320929

/-! ## A320929.P18325726643022170492

`∑[abs(Δ[A189724(n+1)])]`
-/

namespace A320929.P18325726643022170492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189724 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320929.P18325726643022170492

namespace A320929

/-- `∑[abs(Δ[A189724(n+1)])]` -/
def P18325726643022170492.Spec : Prop :=
  ∀ n, P18325726643022170492.a n = A320929 (n + 1)

end A320929

/-! ## A320929.P3980652486231407580

`lt[A287447(n+2), 1]+1`
-/

namespace A320929.P3980652486231407580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287447 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A320929.P3980652486231407580

namespace A320929

/-- `lt[A287447(n+2), 1]+1` -/
def P3980652486231407580.Spec : Prop :=
  ∀ n, (P3980652486231407580.a n : ℤ) = A320929 (n + 1)

end A320929

/-! ## A320929.P1877765692247631692

`lt[A287524(n+2), 1]+1`
-/

namespace A320929.P1877765692247631692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287524 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A320929.P1877765692247631692

namespace A320929

/-- `lt[A287524(n+2), 1]+1` -/
def P1877765692247631692.Spec : Prop :=
  ∀ n, (P1877765692247631692.a n : ℤ) = A320929 (n + 1)

end A320929

/-! ## A320929.P5660951884984175706

`comp[A320927(n+1)+n]+1`
-/

namespace A320929.P5660951884984175706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320927 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A320929.P5660951884984175706

namespace A320929

/-- `comp[A320927(n+1)+n]+1` -/
def P5660951884984175706.Spec : Prop :=
  ∀ n, (P5660951884984175706.a n : ℤ) = A320929 (n + 1)

end A320929

/-! ## A320929.P9234038116523141646

`comp[n*floor(sqrt(A287524(n+1)))]`
-/

namespace A320929.P9234038116523141646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.sqrt (A287524 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A320929.P9234038116523141646

namespace A320929

/-- `comp[n*floor(sqrt(A287524(n+1)))]` -/
def P9234038116523141646.Spec : Prop :=
  ∀ n, (P9234038116523141646.a n : ℤ) = A320929 (n + 1)

end A320929

/-! ## A320929.P17105482687703114281

`lt[n*char[A320928(n+1)], n]`
-/

namespace A320929.P17105482687703114281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320928 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A320929.P17105482687703114281

namespace A320929

/-- `lt[n*char[A320928(n+1)], n]` -/
def P17105482687703114281.Spec : Prop :=
  ∀ n, (P17105482687703114281.a n : ℤ) = A320929 (n + 1)

end A320929

/-! ## A320929.P3436348081611128580

`A189723(n+2)+3*(n+1)`
-/

namespace A320929.P3436348081611128580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189723 (n + 2) + (3 * (n + 1) : ℤ)

end

end A320929.P3436348081611128580

namespace A320929

/-- `A189723(n+2)+3*(n+1)` -/
def P3436348081611128580.Spec : Prop :=
  ∀ n, P3436348081611128580.a n = A320929 (n + 1)

end A320929

/-! ## A320929.P10236475545579310028

`A284913(2*n+3)-(n+2)`
-/

namespace A320929.P10236475545579310028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284913 (2 * n + 3) - (n + 2 : ℤ)

end

end A320929.P10236475545579310028

namespace A320929

/-- `A284913(2*n+3)-(n+2)` -/
def P10236475545579310028.Spec : Prop :=
  ∀ n, P10236475545579310028.a n = A320929 (n + 1)

end A320929

/-! ## A320929.P9998076364207971382

`lt[n*A189727(2*n+1), n]`
-/

namespace A320929.P9998076364207971382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A189727 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A320929.P9998076364207971382

namespace A320929

/-- `lt[n*A189727(2*n+1), n]` -/
def P9998076364207971382.Spec : Prop :=
  ∀ n, (P9998076364207971382.a n : ℤ) = A320929 (n + 1)

end A320929

/-! ## A320929.P6012466656496625020

`lt[n*A287401(2*n+1), n]`
-/

namespace A320929.P6012466656496625020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A287401 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A320929.P6012466656496625020

namespace A320929

/-- `lt[n*A287401(2*n+1), n]` -/
def P6012466656496625020.Spec : Prop :=
  ∀ n, (P6012466656496625020.a n : ℤ) = A320929 (n + 1)

end A320929

/-! ## A320929.P749360880777414524

`lt[n*A287438(2*n+1), n]`
-/

namespace A320929.P749360880777414524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A287438 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A320929.P749360880777414524

namespace A320929

/-- `lt[n*A287438(2*n+1), n]` -/
def P749360880777414524.Spec : Prop :=
  ∀ n, (P749360880777414524.a n : ℤ) = A320929 (n + 1)

end A320929

/-! ## A320929.P12388747292143307990

`comp[n*A284914(2*n+1)%2]`
-/

namespace A320929.P12388747292143307990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A284914 (2 * n + 1)) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A320929.P12388747292143307990

namespace A320929

/-- `comp[n*A284914(2*n+1)%2]` -/
def P12388747292143307990.Spec : Prop :=
  ∀ n, (P12388747292143307990.a n : ℤ) = A320929 (n + 1)

end A320929

/-! ## A320929.P11048688393814316345

`A004483(A189724(n+2))`
-/

namespace A320929.P11048688393814316345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A189724 (n + 2)).toNat

end

end A320929.P11048688393814316345

namespace A320929

/-- `A004483(A189724(n+2))` -/
def P11048688393814316345.Spec : Prop :=
  ∀ n, P11048688393814316345.a n = A320929 (n + 1)

end A320929

/-! ## A320929.P13617596316781783174

`lt[A287447(A028310(n)+1), 1]`
-/

namespace A320929.P13617596316781783174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287447 (A028310 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A320929.P13617596316781783174

namespace A320929

/-- `lt[A287447(A028310(n)+1), 1]` -/
def P13617596316781783174.Spec : Prop :=
  ∀ n, (P13617596316781783174.a n : ℤ) = A320929 (n + 1)

end A320929

/-! ## A320929.P8821804843575832725

`eq[A028649(n), A189723(n+1)]`
-/

namespace A320929.P8821804843575832725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028649 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189723 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320929.P8821804843575832725

namespace A320929

/-- `eq[A028649(n), A189723(n+1)]` -/
def P8821804843575832725.Spec : Prop :=
  ∀ n, (P8821804843575832725.a n : ℤ) = A320929 (n + 1)

end A320929

/-!
# A320931: a(n) = [x^(n*(n+1)/2)] Product_{k=1..n} theta_3(q^k), where theta_3() is the Jacobi theta function.

The programs for A320931, there is no canonical definition to state claims against.
-/

/-! ## A320931.P8761508786417358461

`A000010(2*A276625(2^n))`
-/

namespace A320931.P8761508786417358461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * A276625 (2 ^ n)).toNat

end

end A320931.P8761508786417358461

/-! ## A320931.P16017845016860157364

`and(A036468(A000302(n)), A061202(3*n+2))`
-/

namespace A320931.P16017845016860157364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A036468 (A000302 n).toNat) (A061202 (3 * n + 2))

end

end A320931.P16017845016860157364

/-!
# A320932: a(n) = [x^(n*(n+1)/2)] Product_{k=1..n} Sum_{m>=0} x^(k*m^2).

The programs for A320932, there is no canonical definition to state claims against.
-/

/-! ## A320932.P16134980190314970163

`A354727(A316983(n+1)-A000225(n))`
-/

namespace A320932.P16134980190314970163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354727 (A316983 (n + 1) - A000225 n).toNat

end

end A320932.P16134980190314970163

/-!
# A320933: a(n) = 2^n - floor((n+3)/2).

The programs for A320933, the canonical program `A320933.P10760264581932849490` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320933 has offset 0).

The definition of A320933 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-floor((n+3)/2)` (program `A320933.P10760264581932849490`, by `A320933.P10760264581932849490.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A320933.P10760264581932849490

`2^n-floor((n+3)/2)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A320933

/-- `2^n-floor((n+3)/2)` -/
def P10760264581932849490.Spec : Prop :=
  ∀ n, P10760264581932849490.a n = A320933 n

theorem P10760264581932849490.correct : P10760264581932849490.Spec := by
  intro n
  simp only [A320933]

end A320933

/-! ## A320933.P15270735060181959714

`ogf((2x^2-x^3)/(1-3x+x^2+3x^3-2x^4))`
-/

namespace A320933.P15270735060181959714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, -1] [1, -3, 1, 3, -2] n

end

end A320933.P15270735060181959714

namespace A320933

/-- `ogf((2x^2-x^3)/(1-3x+x^2+3x^3-2x^4))` -/
def P15270735060181959714.Spec : Prop :=
  ∀ n, P15270735060181959714.a n = A320933 n

end A320933

/-! ## A320933.P13461497604662220436

`∑[floor(A051049(n)/2)]`
-/

namespace A320933.P13461497604662220436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051049 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320933.P13461497604662220436

namespace A320933

/-- `∑[floor(A051049(n)/2)]` -/
def P13461497604662220436.Spec : Prop :=
  ∀ n, P13461497604662220436.a n = A320933 n

end A320933

/-! ## A320933.P1887314304623445266

`∑[round(A141023(n)/2)]`
-/

namespace A320933.P1887314304623445266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A141023 n : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320933.P1887314304623445266

namespace A320933

/-- `∑[round(A141023(n)/2)]` -/
def P1887314304623445266.Spec : Prop :=
  ∀ n, P1887314304623445266.a n = A320933 n

end A320933

/-! ## A320933.P14815112491110168091

`∑[A131577(n)-and(1, n)]`
-/

namespace A320933.P14815112491110168091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320933.P14815112491110168091

namespace A320933

/-- `∑[A131577(n)-and(1, n)]` -/
def P14815112491110168091.Spec : Prop :=
  ∀ n, P14815112491110168091.a n = A320933 n

end A320933

/-! ## A320933.P14586378492198008300

`xor(A000225(n), A110654(n))`
-/

namespace A320933.P14586378492198008300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 n) (A110654 n)

end

end A320933.P14586378492198008300

namespace A320933

/-- `xor(A000225(n), A110654(n))` -/
def P14586378492198008300.Spec : Prop :=
  ∀ n, P14586378492198008300.a n = A320933 n

end A320933

/-! ## A320933.P6520497224520983939

`xor(A065033(n), A255047(n))`
-/

namespace A320933.P6520497224520983939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A065033 n) (A255047 n)

end

end A320933.P6520497224520983939

namespace A320933

/-- `xor(A065033(n), A255047(n))` -/
def P6520497224520983939.Spec : Prop :=
  ∀ n, P6520497224520983939.a n = A320933 n

end A320933

/-! ## A320933.P17693078008464687969

`xor(A135481(n), A173009(n+1))`
-/

namespace A320933.P17693078008464687969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A135481 n) (A173009 (n + 1))

end

end A320933.P17693078008464687969

namespace A320933

/-- `xor(A135481(n), A173009(n+1))` -/
def P17693078008464687969.Spec : Prop :=
  ∀ n, P17693078008464687969.a n = A320933 n

end A320933

/-! ## A320933.P4140694609331323253

`(A101622(n)-n)/2`
-/

namespace A320933.P4140694609331323253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101622 n - (n : ℤ) : ℚ) / 2

end

end A320933.P4140694609331323253

namespace A320933

/-- `(A101622(n)-n)/2` -/
def P4140694609331323253.Spec : Prop :=
  ∀ n, P4140694609331323253.a n = (A320933 n : ℚ)

end A320933

/-! ## A320933.P14744444171367896002

`(A140253(n+1)-(n+1))/2`
-/

namespace A320933.P14744444171367896002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140253 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A320933.P14744444171367896002

namespace A320933

/-- `(A140253(n+1)-(n+1))/2` -/
def P14744444171367896002.Spec : Prop :=
  ∀ n, P14744444171367896002.a n = (A320933 n : ℚ)

end A320933

/-! ## A320933.P7125730510295179747

`A126646(n)%A134522(n)`
-/

namespace A320933.P7125730510295179747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 n) (A134522 n)

end

end A320933.P7125730510295179747

namespace A320933

/-- `A126646(n)%A134522(n)` -/
def P7125730510295179747.Spec : Prop :=
  ∀ n, P7125730510295179747.a n = A320933 n

end A320933

/-! ## A320933.P13716751997085011848

`A076878(n+1)%A112884(n)`
-/

namespace A320933.P13716751997085011848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076878 (n + 1)) (A112884 n)

end

end A320933.P13716751997085011848

namespace A320933

/-- `A076878(n+1)%A112884(n)` -/
def P13716751997085011848.Spec : Prop :=
  ∀ n, P13716751997085011848.a n = A320933 n

end A320933

/-! ## A320933.P1488594407132108317

`A011377(n)%A081254(n+1)`
-/

namespace A320933.P1488594407132108317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011377 n) (A081254 (n + 1))

end

end A320933.P1488594407132108317

namespace A320933

/-- `A011377(n)%A081254(n+1)` -/
def P1488594407132108317.Spec : Prop :=
  ∀ n, P1488594407132108317.a n = A320933 n

end A320933

/-! ## A320933.P6638674681537950099

`(A004171(n)-A134353(n+1))/A000079(n+1)`
-/

namespace A320933.P6638674681537950099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004171 n - A134353 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A320933.P6638674681537950099

namespace A320933

/-- `(A004171(n)-A134353(n+1))/A000079(n+1)` -/
def P6638674681537950099.Spec : Prop :=
  ∀ n, P6638674681537950099.a n = (A320933 n : ℚ)

end A320933

/-!
# A320934: Number of chiral pairs of color patterns (set partitions) for a row of length n using 4 or fewer colors (subsets).

The programs for A320934, the canonical program `A320934.P8100376593685891607` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320934 has offset 1).

The definition of A320934 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A320934.P13757432553919940365

`2^(n+1)*(2^(n+1)-(-1)^(n+1)-3)/48`
-/

namespace A320934.P13757432553919940365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℚ) * (((2 ^ (n + 1) : ℤ) - (-1) ^ (n + 1) - 3 : ℚ) / 48)

end

end A320934.P13757432553919940365

namespace A320934

/-- `2^(n+1)*(2^(n+1)-(-1)^(n+1)-3)/48` -/
def P13757432553919940365.Spec : Prop :=
  ∀ n, P13757432553919940365.a n = (A320934 (n + 1) : ℚ)

end A320934

/-! ## A320934.P8100376593685891607

`A124303(n+1)-A056323(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A320934

/-- `A124303(n+1)-A056323(n+1)` -/
def P8100376593685891607.Spec : Prop :=
  ∀ n, P8100376593685891607.a n = A320934 (n + 1)

theorem P8100376593685891607.correct : P8100376593685891607.Spec := by
  intro n
  simp only [A320934, Nat.add_sub_cancel]

end A320934

/-! ## A320934.P8592525570184087187

`A056323(n+1)-A305750(n+1)`
-/

namespace A320934.P8592525570184087187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056323 (n + 1) - A305750 (n + 1)

end

end A320934.P8592525570184087187

namespace A320934

/-- `A056323(n+1)-A305750(n+1)` -/
def P8592525570184087187.Spec : Prop :=
  ∀ n, P8592525570184087187.a n = A320934 (n + 1)

end A320934

/-! ## A320934.P5705532825044817947

`(A124303(n+1)-A305750(n+1))/2`
-/

namespace A320934.P5705532825044817947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124303 (n + 1) - A305750 (n + 1) : ℚ) / 2

end

end A320934.P5705532825044817947

namespace A320934

/-- `(A124303(n+1)-A305750(n+1))/2` -/
def P5705532825044817947.Spec : Prop :=
  ∀ n, P5705532825044817947.a n = (A320934 (n + 1) : ℚ)

end A320934

/-! ## A320934.P13485849949281816758

`or(4*a(n-1), 4*a(n-2))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A320934.P13485849949281816758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  Nat.lor (4 * a (n - 1)) (4 * a (n - 2))

end

end A320934.P13485849949281816758

namespace A320934

/-- `or(4*a(n-1), 4*a(n-2))` -/
def P13485849949281816758.Spec : Prop :=
  ∀ n, (P13485849949281816758.a n : ℤ) = A320934 (n + 1)

end A320934

/-! ## A320934.P18232853150514710852

`∑[A395948(n)/2]`
-/

namespace A320934.P18232853150514710852
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A395948 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320934.P18232853150514710852

namespace A320934

/-- `∑[A395948(n)/2]` -/
def P18232853150514710852.Spec : Prop :=
  ∀ n, P18232853150514710852.a n = (A320934 (n + 1) : ℚ)

end A320934

/-! ## A320934.P16049584245521755686

`∑[floor((A051049(n)/4)²)]`
-/

namespace A320934.P16049584245521755686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A051049 n : ℚ) / 4) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320934.P16049584245521755686

namespace A320934

/-- `∑[floor((A051049(n)/4)²)]` -/
def P16049584245521755686.Spec : Prop :=
  ∀ n, P16049584245521755686.a n = A320934 (n + 1)

end A320934

/-! ## A320934.P1215927302834333852

`A007581(n)-A056323(n+1)`
-/

namespace A320934.P1215927302834333852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 n - A056323 (n + 1)

end

end A320934.P1215927302834333852

namespace A320934

/-- `A007581(n)-A056323(n+1)` -/
def P1215927302834333852.Spec : Prop :=
  ∀ n, P1215927302834333852.a n = A320934 (n + 1)

end A320934

/-! ## A320934.P1622504034635844010

`A242026(A028310(n))/12`
-/

namespace A320934.P1622504034635844010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242026 (A028310 n).toNat : ℚ) / 12

end

end A320934.P1622504034635844010

namespace A320934

/-- `A242026(A028310(n))/12` -/
def P1622504034635844010.Spec : Prop :=
  ∀ n, P1622504034635844010.a n = (A320934 (n + 1) : ℚ)

end A320934

/-! ## A320934.P9748300073669692856

`and(A002450(n), A181270(n+1))`
-/

namespace A320934.P9748300073669692856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002450 n) (A181270 (n + 1))

end

end A320934.P9748300073669692856

namespace A320934

/-- `and(A002450(n), A181270(n+1))` -/
def P9748300073669692856.Spec : Prop :=
  ∀ n, P9748300073669692856.a n = A320934 (n + 1)

end A320934

/-! ## A320934.P16702074992577526077

`and(C(A131577(n), 2), A001045(2*n))`
-/

namespace A320934.P16702074992577526077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.choose (A131577 n).toNat 2 : ℤ) (A001045 (2 * n))

end

end A320934.P16702074992577526077

namespace A320934

/-- `and(C(A131577(n), 2), A001045(2*n))` -/
def P16702074992577526077.Spec : Prop :=
  ∀ n, P16702074992577526077.a n = A320934 (n + 1)

end A320934

/-! ## A320934.P16455426831073943067

`and(A181270(n+1), A206374(n))`
-/

namespace A320934.P16455426831073943067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A181270 (n + 1)) (A206374 n)

end

end A320934.P16455426831073943067

namespace A320934

/-- `and(A181270(n+1), A206374(n))` -/
def P16455426831073943067.Spec : Prop :=
  ∀ n, P16455426831073943067.a n = A320934 (n + 1)

end A320934

/-! ## A320934.P16575717547880720802

`and(A181270(n+1), A330246(n))`
-/

namespace A320934.P16575717547880720802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A181270 (n + 1)) (A330246 n)

end

end A320934.P16575717547880720802

namespace A320934

/-- `and(A181270(n+1), A330246(n))` -/
def P16575717547880720802.Spec : Prop :=
  ∀ n, P16575717547880720802.a n = A320934 (n + 1)

end A320934

/-! ## A320934.P1367111448993659315

`and(A181270(n+1), A323824(n))`
-/

namespace A320934.P1367111448993659315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A181270 (n + 1)) (A323824 n)

end

end A320934.P1367111448993659315

namespace A320934

/-- `and(A181270(n+1), A323824(n))` -/
def P1367111448993659315.Spec : Prop :=
  ∀ n, P1367111448993659315.a n = A320934 (n + 1)

end A320934

/-! ## A320934.P6716892642782630036

`A320935(n+1)-A320528(n+1)`
-/

namespace A320934.P6716892642782630036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320935 (n + 1) - A320528 (n + 1)

end

end A320934.P6716892642782630036

namespace A320934

/-- `A320935(n+1)-A320528(n+1)` -/
def P6716892642782630036.Spec : Prop :=
  ∀ n, P6716892642782630036.a n = A320934 (n + 1)

end A320934

/-! ## A320934.P18096873424294231525

`A011782(n)*A084152(n)/A005578(n)`
-/

namespace A320934.P18096873424294231525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 n * A084152 n : ℚ) / (A005578 n : ℚ)

end

end A320934.P18096873424294231525

namespace A320934

/-- `A011782(n)*A084152(n)/A005578(n)` -/
def P18096873424294231525.Spec : Prop :=
  ∀ n, P18096873424294231525.a n = (A320934 (n + 1) : ℚ)

end A320934

/-!
# A320935: Number of chiral pairs of color patterns (set partitions) for a row of length n using 5 or fewer colors (subsets).

The programs for A320935, the canonical program `A320935.P5041505180703066764` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320935 has offset 1).

The definition of A320935 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056272, A056324, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A320935.P5041505180703066764

`A056272(n+1)-A056324(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A320935

/-- `A056272(n+1)-A056324(n+1)` -/
def P5041505180703066764.Spec : Prop :=
  ∀ n, P5041505180703066764.a n = A320935 (n + 1)

theorem P5041505180703066764.correct : P5041505180703066764.Spec := by
  intro n
  simp only [A320935, Nat.add_sub_cancel]

end A320935

/-! ## A320935.P2794779965475990738

`A056324(n+1)-A305751(n+1)`
-/

namespace A320935.P2794779965475990738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056324 (n + 1) - A305751 (n + 1)

end

end A320935.P2794779965475990738

namespace A320935

/-- `A056324(n+1)-A305751(n+1)` -/
def P2794779965475990738.Spec : Prop :=
  ∀ n, P2794779965475990738.a n = A320935 (n + 1)

end A320935

/-! ## A320935.P8903167324594756992

`(A056272(n+1)-A305751(n+1))/2`
-/

namespace A320935.P8903167324594756992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056272 (n + 1) - A305751 (n + 1) : ℚ) / 2

end

end A320935.P8903167324594756992

namespace A320935

/-- `(A056272(n+1)-A305751(n+1))/2` -/
def P8903167324594756992.Spec : Prop :=
  ∀ n, P8903167324594756992.a n = (A320935 (n + 1) : ℚ)

end A320935

/-! ## A320935.P2955053183113654564

`A320934(n+1)+A320528(n+1)`
-/

namespace A320935.P2955053183113654564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320934 (n + 1) + A320528 (n + 1)

end

end A320935.P2955053183113654564

namespace A320935

/-- `A320934(n+1)+A320528(n+1)` -/
def P2955053183113654564.Spec : Prop :=
  ∀ n, P2955053183113654564.a n = A320935 (n + 1)

end A320935

/-! ## A320935.P12007923025221109453

`A056470(2*(n+1))-A056324(n+1)`
-/

namespace A320935.P12007923025221109453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056470 (2 * (n + 1)) - A056324 (n + 1)

end

end A320935.P12007923025221109453

namespace A320935

/-- `A056470(2*(n+1))-A056324(n+1)` -/
def P12007923025221109453.Spec : Prop :=
  ∀ n, P12007923025221109453.a n = A320935 (n + 1)

end A320935

/-! ## A320935.P6102745706317433999

`A320936(n+1)-A320529(n+1)`
-/

namespace A320935.P6102745706317433999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320936 (n + 1) - A320529 (n + 1)

end

end A320935.P6102745706317433999

namespace A320935

/-- `A320936(n+1)-A320529(n+1)` -/
def P6102745706317433999.Spec : Prop :=
  ∀ n, P6102745706317433999.a n = A320935 (n + 1)

end A320935

/-!
# A320936: Number of chiral pairs of color patterns (set partitions) for a row of length n using 6 or fewer colors (subsets).

The programs for A320936, there is no canonical definition to state claims against.
-/

/-! ## A320936.P654566188525556553

`A056273(n+1)-A056325(n+1)`
-/

namespace A320936.P654566188525556553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056273 (n + 1) - A056325 (n + 1)

end

end A320936.P654566188525556553

/-! ## A320936.P7172592132905169675

`A056325(n+1)-A305752(n+1)`
-/

namespace A320936.P7172592132905169675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056325 (n + 1) - A305752 (n + 1)

end

end A320936.P7172592132905169675

/-! ## A320936.P13845656731062094597

`(A056273(n+1)-A305752(n+1))/2`
-/

namespace A320936.P13845656731062094597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056273 (n + 1) - A305752 (n + 1) : ℚ) / 2

end

end A320936.P13845656731062094597

/-! ## A320936.P1319543259333160294

`A320935(n+1)+A320529(n+1)`
-/

namespace A320936.P1319543259333160294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320935 (n + 1) + A320529 (n + 1)

end

end A320936.P1319543259333160294

/-! ## A320936.P4518386915171059913

`A056471(2*(n+1))-A056325(n+1)`
-/

namespace A320936.P4518386915171059913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056471 (2 * (n + 1)) - A056325 (n + 1)

end

end A320936.P4518386915171059913

/-! ## A320936.P14986302206978038360

`A320935(n+1)+A320525(A077169(n)+1+n)`
-/

namespace A320936.P14986302206978038360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320935 (n + 1) + A320525 (A077169 n + 1 + (n : ℤ)).toNat

end

end A320936.P14986302206978038360

/-!
# A320937: Number of chiral pairs of color patterns (set partitions) for a row of length n.

The programs for A320937, there is no canonical definition to state claims against.
-/

/-! ## A320937.P9609822673825307614

`A000110(n+1)-A103293(n+2)`
-/

namespace A320937.P9609822673825307614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) - A103293 (n + 2)

end

end A320937.P9609822673825307614

/-! ## A320937.P16627404870621417492

`A103293(n+2)-A080107(n+1)`
-/

namespace A320937.P16627404870621417492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103293 (n + 2) - A080107 (n + 1)

end

end A320937.P16627404870621417492

/-! ## A320937.P13117596950935151620

`record[A346500(n)]-A103293(n+2)`
-/

namespace A320937.P13117596950935151620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A103293 (n + 2)

end

end A320937.P13117596950935151620

/-! ## A320937.P1934510350357210363

`abs(A292935(n+1))-A103293(n+2)`
-/

namespace A320937.P1934510350357210363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 (n + 1)| - A103293 (n + 2)

end

end A320937.P1934510350357210363

/-! ## A320937.P8715875948663245101

`A000110(n+1)-(A327612(n+1)+A188164(n+1))`
-/

namespace A320937.P8715875948663245101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) - (A327612 (n + 1) + A188164 (n + 1))

end

end A320937.P8715875948663245101

/-!
# A320939: a(n) = n! * [x^n] log(1 + Sum_{k>=1} k^n*x^k/k!).

The programs for A320939, there is no canonical definition to state claims against.
-/

/-! ## A320939.P16605614978728452603

`2*n+1-A027746(A258172(n+1))`
-/

namespace A320939.P16605614978728452603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A027746 (A258172 (n + 1)).toNat

end

end A320939.P16605614978728452603

/-!
# A320940: a(n) = Sum_{d|n} d*sigma_n(d).

The programs for A320940, there is no canonical definition to state claims against.
-/

/-! ## A320940.P2843941498580414882

`A322104(2*(n+1)²)`
-/

namespace A320940.P2843941498580414882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322104 (2 * (n + 1) ^ 2)

end

end A320940.P2843941498580414882

/-!
# A320941: Expansion of Sum_{k>=1} x^k*(1 + x^k)/(1 - x^k)^4.

The programs for A320941, the canonical program `A320941.P11750252740358871811` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320941 has offset 1).

The definition of A320941 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A001158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A320941.P11750252740358871811

`(A000203(n+1)+3*A001157(n+1)+2*A001158(n+1))/6`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A320941

/-- `(A000203(n+1)+3*A001157(n+1)+2*A001158(n+1))/6` -/
def P11750252740358871811.Spec : Prop :=
  ∀ n, P11750252740358871811.a n = (A320941 (n + 1) : ℚ)

end A320941

/-! ## A320941.P13975126637167514753

`∑{d}[n+1, A000330(#)]`
-/

namespace A320941.P13975126637167514753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000330 d

end

end A320941.P13975126637167514753

namespace A320941

/-- `∑{d}[n+1, A000330(#)]` -/
def P13975126637167514753.Spec : Prop :=
  ∀ n, P13975126637167514753.a n = A320941 (n + 1)

end A320941

/-! ## A320941.P9582258884577141461

`A278403(n+1)-A363604(n+1)`
-/

namespace A320941.P9582258884577141461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278403 (n + 1) - A363604 (n + 1)

end

end A320941.P9582258884577141461

namespace A320941

/-- `A278403(n+1)-A363604(n+1)` -/
def P9582258884577141461.Spec : Prop :=
  ∀ n, P9582258884577141461.a n = A320941 (n + 1)

end A320941

/-! ## A320941.P16334677016716924740

`A007437(n+1)+2*A363604(n+1)`
-/

namespace A320941.P16334677016716924740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007437 (n + 1) + 2 * A363604 (n + 1)

end

end A320941.P16334677016716924740

namespace A320941

/-- `A007437(n+1)+2*A363604(n+1)` -/
def P16334677016716924740.Spec : Prop :=
  ∀ n, P16334677016716924740.a n = A320941 (n + 1)

end A320941

/-! ## A320941.P15465118064510215709

`∑{d}[n+1, A001157(#)*A053818((n+1)/#)]`
-/

namespace A320941.P15465118064510215709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d * A053818 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A320941.P15465118064510215709

namespace A320941

/-- `∑{d}[n+1, A001157(#)*A053818((n+1)/#)]` -/
def P15465118064510215709.Spec : Prop :=
  ∀ n, P15465118064510215709.a n = A320941 (n + 1)

end A320941

/-! ## A320941.P4376017338680563481

`∑{d}[n+1, A057660(#)*A344509((n+1)/#)]`
-/

namespace A320941.P4376017338680563481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057660 d * A344509 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A320941.P4376017338680563481

namespace A320941

/-- `∑{d}[n+1, A057660(#)*A344509((n+1)/#)]` -/
def P4376017338680563481.Spec : Prop :=
  ∀ n, P4376017338680563481.a n = A320941 (n + 1)

end A320941

/-! ## A320941.P11652631085996476758

`A001157(n+1)+A363607(n+1)+A363604(n+1)`
-/

namespace A320941.P11652631085996476758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) + (A363607 (n + 1) + A363604 (n + 1))

end

end A320941.P11652631085996476758

namespace A320941

/-- `A001157(n+1)+A363607(n+1)+A363604(n+1)` -/
def P11652631085996476758.Spec : Prop :=
  ∀ n, P11652631085996476758.a n = A320941 (n + 1)

end A320941

/-! ## A320941.P967350279191561660

`A363604(n+1)+A059358(n+1)`
-/

namespace A320941.P967350279191561660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363604 (n + 1) + A059358 (n + 1)

end

end A320941.P967350279191561660

namespace A320941

/-- `A363604(n+1)+A059358(n+1)` -/
def P967350279191561660.Spec : Prop :=
  ∀ n, P967350279191561660.a n = A320941 (n + 1)

end A320941

/-! ## A320941.P2484610169873469560

`A059358(n+1)+A363607(n+1)+A069153(n+1)`
-/

namespace A320941.P2484610169873469560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059358 (n + 1) + (A363607 (n + 1) + A069153 (n + 1))

end

end A320941.P2484610169873469560

namespace A320941

/-- `A059358(n+1)+A363607(n+1)+A069153(n+1)` -/
def P2484610169873469560.Spec : Prop :=
  ∀ n, P2484610169873469560.a n = A320941 (n + 1)

end A320941

/-! ## A320941.P326130639988961646

`A059358(n+1)+A059358(n+1)-A007437(n+1)`
-/

namespace A320941.P326130639988961646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059358 (n + 1) + (A059358 (n + 1) - A007437 (n + 1))

end

end A320941.P326130639988961646

namespace A320941

/-- `A059358(n+1)+A059358(n+1)-A007437(n+1)` -/
def P326130639988961646.Spec : Prop :=
  ∀ n, P326130639988961646.a n = A320941 (n + 1)

end A320941

/-! ## A320941.P13513713574916208149

`∑{d}[n+1, A006918(A004273(#))]`
-/

namespace A320941.P13513713574916208149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006918 (A004273 d).toNat

end

end A320941.P13513713574916208149

namespace A320941

/-- `∑{d}[n+1, A006918(A004273(#))]` -/
def P13513713574916208149.Spec : Prop :=
  ∀ n, P13513713574916208149.a n = A320941 (n + 1)

end A320941

/-! ## A320941.P6085024563037538554

`∑{d}[A000027(n+1), A008610(A004273(#))]`
-/

namespace A320941.P6085024563037538554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008610 (A004273 d).toNat

end

end A320941.P6085024563037538554

namespace A320941

/-- `∑{d}[A000027(n+1), A008610(A004273(#))]` -/
def P6085024563037538554.Spec : Prop :=
  ∀ n, P6085024563037538554.a n = A320941 (n + 1)

end A320941

/-! ## A320941.P9227035540438161021

`A000027(∑{d}[Δ[n²]-n, A000330(#)])`
-/

namespace A320941.P9227035540438161021
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000330 d).toNat

end

end A320941.P9227035540438161021

namespace A320941

/-- `A000027(∑{d}[Δ[n²]-n, A000330(#)])` -/
def P9227035540438161021.Spec : Prop :=
  ∀ n, P9227035540438161021.a n = A320941 (n + 1)

end A320941

/-!
# A320942: Expansion of Sum_{k>=1} (-1 + Product_{j>=1} (1 + x^(k*j))/(1 - x^(k*j))).

The programs for A320942, there is no canonical definition to state claims against.
-/

/-! ## A320942.P15362371822893230098

`∑{d}[n+1, A015128(#)]`
-/

namespace A320942.P15362371822893230098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A015128 d

end

end A320942.P15362371822893230098

/-! ## A320942.P2505434730774146889

`∑{d}[n+1, abs(A004402(#))]`
-/

namespace A320942.P2505434730774146889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), |A004402 d|

end

end A320942.P2505434730774146889

/-! ## A320942.P4216798091099603553

`∑{d}[n+1, A304627(#)+2]`
-/

namespace A320942.P4216798091099603553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A304627 d + 2)

end

end A320942.P4216798091099603553

/-! ## A320942.P14591886790446828895

`record[∑{d}[A024000(n), A015128(#)]]`
-/

namespace A320942.P14591886790446828895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A015128 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320942.P14591886790446828895

/-! ## A320942.P14148905969642669596

`∑{d}[n+1, A000005(#)*A300274((n+1)/#)]`
-/

namespace A320942.P14148905969642669596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A300274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A320942.P14148905969642669596

/-!
# A320944: a(n) is the number of perimeter tiles among all rhombic tilings of the 2n-gon.

The programs for A320944, there is no canonical definition to state claims against.
-/

/-! ## A320944.P817922491047708234

`∑[A002105(n+1)]*A377052(n)`
-/

namespace A320944.P817922491047708234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A377052 n

end

end A320944.P817922491047708234

/-!
# A320945: a(n) is the number of top-perimeter tiles among all rhombic tilings of the 2n-gon.

The programs for A320945, there is no canonical definition to state claims against.
-/

/-! ## A320945.P14489435794646381906

`ceil(2*(a(n-1)²+1)/3)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=20`
-/

namespace A320945.P14489435794646381906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 20] fun n a =>
  ⌈(2 * (a (n - 1) ^ 2 + 1) : ℚ) / 3⌉

end

end A320945.P14489435794646381906

/-!
# A320946: a(n) is the number of left-perimeter tiles among all rhombic tilings of the 2n-gon.

The programs for A320946, there is no canonical definition to state claims against.
-/

/-! ## A320946.P3028352891576275238

`(n+1)*A320945(n+2)`
-/

namespace A320946.P3028352891576275238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A320945 (n + 2)

end

end A320946.P3028352891576275238

/-!
# A320947: a(n) is the number of dominoes, among all domino tilings of the 2 X n rectangle, sharing a length-2 side with the boundary of the rectangle.

The programs for A320947, the canonical program `A320947.P16987707037501319809` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320947 has offset 1).

The definition of A320947 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A320947.P16987707037501319809

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=8, a(3)=16, a(4)=30`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A320947

/-- `2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` -/
def P16987707037501319809.Spec : Prop :=
  ∀ n, P16987707037501319809.a n = A320947 (n + 1)

theorem P16987707037501319809.correct : P16987707037501319809.Spec := by
  intro n
  simp only [A320947, Nat.add_sub_cancel]

end A320947

/-! ## A320947.P9439799202015230345

`A129715(n)+A000045(n+2)`
-/

namespace A320947.P9439799202015230345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129715 n + A000045 (n + 2)

end

end A320947.P9439799202015230345

namespace A320947

/-- `A129715(n)+A000045(n+2)` -/
def P9439799202015230345.Spec : Prop :=
  ∀ n, P9439799202015230345.a n = A320947 (n + 1)

end A320947

/-! ## A320947.P11094036567902283487

`A000071(n+2)+A129715(n)+1`
-/

namespace A320947.P11094036567902283487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) + (A129715 n + 1)

end

end A320947.P11094036567902283487

namespace A320947

/-- `A000071(n+2)+A129715(n)+1` -/
def P11094036567902283487.Spec : Prop :=
  ∀ n, P11094036567902283487.a n = A320947 (n + 1)

end A320947

/-! ## A320947.P5491767271921208511

`(2-A000007(n))*A029907(n+1)`
-/

namespace A320947.P5491767271921208511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A029907 (n + 1)

end

end A320947.P5491767271921208511

namespace A320947

/-- `(2-A000007(n))*A029907(n+1)` -/
def P5491767271921208511.Spec : Prop :=
  ∀ n, P5491767271921208511.a n = A320947 (n + 1)

end A320947

/-! ## A320947.P398093680446782851

`record[A006367(n)]+(n+1)*A212804(n+1)`
-/

namespace A320947.P398093680446782851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 1 : ℤ) * A212804 (n + 1)

end

end A320947.P398093680446782851

namespace A320947

/-- `record[A006367(n)]+(n+1)*A212804(n+1)` -/
def P398093680446782851.Spec : Prop :=
  ∀ n, P398093680446782851.a n = A320947 (n + 1)

end A320947

/-! ## A320947.P5016854147139183072

`(2-A354097(2*n+1))*A029907(n+1)`
-/

namespace A320947.P5016854147139183072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A354097 (2 * n + 1)) * A029907 (n + 1)

end

end A320947.P5016854147139183072

namespace A320947

/-- `(2-A354097(2*n+1))*A029907(n+1)` -/
def P5016854147139183072.Spec : Prop :=
  ∀ n, P5016854147139183072.a n = A320947 (n + 1)

end A320947

/-! ## A320947.P15229862218087232728

`A029907(n+1)+A029907((n+1)%(n+1)²)`
-/

namespace A320947.P15229862218087232728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (n + 1) + A029907 ((n + 1) % (n + 1) ^ 2)

end

end A320947.P15229862218087232728

namespace A320947

/-- `A029907(n+1)+A029907((n+1)%(n+1)²)` -/
def P15229862218087232728.Spec : Prop :=
  ∀ n, P15229862218087232728.a n = A320947 (n + 1)

end A320947

/-! ## A320947.P7983941541500229472

`(4*n+1-A004273(2*n))*A029907(n+1)`
-/

namespace A320947.P7983941541500229472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * n + 1 : ℤ) - A004273 (2 * n)) * A029907 (n + 1)

end

end A320947.P7983941541500229472

namespace A320947

/-- `(4*n+1-A004273(2*n))*A029907(n+1)` -/
def P7983941541500229472.Spec : Prop :=
  ∀ n, P7983941541500229472.a n = A320947 (n + 1)

end A320947

/-! ## A320947.P14546876697858144814

`(4*n+2-A004277(2*n))*A029907(n+1)`
-/

namespace A320947.P14546876697858144814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * n + 2 : ℤ) - A004277 (2 * n)) * A029907 (n + 1)

end

end A320947.P14546876697858144814

namespace A320947

/-- `(4*n+2-A004277(2*n))*A029907(n+1)` -/
def P14546876697858144814.Spec : Prop :=
  ∀ n, P14546876697858144814.a n = A320947 (n + 1)

end A320947

/-! ## A320947.P12139694924612526970

`A020639(A004277(n))*A029907(n+1)`
-/

namespace A320947.P12139694924612526970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A029907 (n + 1)

end

end A320947.P12139694924612526970

namespace A320947

/-- `A020639(A004277(n))*A029907(n+1)` -/
def P12139694924612526970.Spec : Prop :=
  ∀ n, P12139694924612526970.a n = A320947 (n + 1)

end A320947

/-! ## A320947.P14943417120232968298

`A001629(n+1)+A271785(n)+A006355(n)`
-/

namespace A320947.P14943417120232968298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 1) + (A271785 n + A006355 n)

end

end A320947.P14943417120232968298

namespace A320947

/-- `A001629(n+1)+A271785(n)+A006355(n)` -/
def P14943417120232968298.Spec : Prop :=
  ∀ n, P14943417120232968298.a n = A320947 (n + 1)

end A320947

/-! ## A320947.P17529575535289029103

`A099920(n+1)+A208354(n)-A226432(n+2)`
-/

namespace A320947.P17529575535289029103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 (n + 1) + (A208354 n - A226432 (n + 2))

end

end A320947.P17529575535289029103

namespace A320947

/-- `A099920(n+1)+A208354(n)-A226432(n+2)` -/
def P17529575535289029103.Spec : Prop :=
  ∀ n, P17529575535289029103.a n = A320947 (n + 1)

end A320947

/-! ## A320947.P9993835090838187355

`(A006257(2*n+1)-A006257(2*n))*A029907(n+1)`
-/

namespace A320947.P9993835090838187355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006257 (2 * n + 1) - A006257 (2 * n)) * A029907 (n + 1)

end

end A320947.P9993835090838187355

namespace A320947

/-- `(A006257(2*n+1)-A006257(2*n))*A029907(n+1)` -/
def P9993835090838187355.Spec : Prop :=
  ∀ n, P9993835090838187355.a n = A320947 (n + 1)

end A320947

/-!
# A320949: G.f. A(x) satisfies: Sum_{n>=0} (1+x)^(n^2) / (1 + A(x))^(n+1) = 1.

The programs for A320949, there is no canonical definition to state claims against.
-/

/-! ## A320949.P5742942549311281204

`A130482(A219344(n)+A072114(3*n))`
-/

namespace A320949.P5742942549311281204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130482 (A219344 n + A072114 (3 * n)).toNat

end

end A320949.P5742942549311281204

/-!
# A320950: G.f.: [ Sum_{n>=0} x^n * (1+x)^(n^2) ] * [ Sum_{n>=0} x^n / (1+x)^(n^2) ].

The programs for A320950, there is no canonical definition to state claims against.
-/

/-! ## A320950.P3526088689795379259

`A258210(A001253(n+2))+A099463(n)`
-/

namespace A320950.P3526088689795379259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258210 (A001253 (n + 2)).toNat + A099463 n

end

end A320950.P3526088689795379259

/-!
# A320951: G.f.: A(x) satisfies: A(x) = Sum_{n>=0} x^n * (1+x)^(n*(n+1)) / A(x)^n.

The programs for A320951, there is no canonical definition to state claims against.
-/

/-! ## A320951.P1423102037089542273

`A301929(n)-a(n-1)` with `a(0)=1`
-/

namespace A320951.P1423102037089542273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301929 n - a (n - 1)

end

end A320951.P1423102037089542273

/-! ## A320951.P2557331419594090090

`A025778(A259545(n+1)+A002620(n))`
-/

namespace A320951.P2557331419594090090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025778 (A259545 (n + 1) + A002620 n).toNat

end

end A320951.P2557331419594090090

/-! ## A320951.P11543152313626045245

`A228425(A238529(3*n+4)+A006318(n))`
-/

namespace A320951.P11543152313626045245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228425 (A238529 (3 * n + 4) + A006318 n).toNat

end

end A320951.P11543152313626045245

/-!
# A320954: G.f. A(x) satisfies: 1/(1-x) = Sum_{n>=0} (1+x)^(n^2) * x^n / A(x)^n.

The programs for A320954, there is no canonical definition to state claims against.
-/

/-! ## A320954.P6945998048018778916

`A051889(A365114(n))`
-/

namespace A320954.P6945998048018778916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A365114 n).toNat

end

end A320954.P6945998048018778916

/-! ## A320954.P14497571306422250134

`A008618(A068777(n+2))`
-/

namespace A320954.P14497571306422250134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A068777 (n + 2)).toNat

end

end A320954.P14497571306422250134

/-! ## A320954.P7952342432843920073

`A073750(A001250(n))+A001250(n)`
-/

namespace A320954.P7952342432843920073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073750 (A001250 n).toNat + A001250 n

end

end A320954.P7952342432843920073

/-!
# A320955: Square array read by ascending antidiagonals: A(n, k) (n >= 0, k >= 0) = Sum_{j=0..n-1} (!j/j!)*((n - j)^k/(n - j)!) if k > 0 and 1 if k = 0. Here !n denotes the subfactorial of n.

The programs for A320955, there is no canonical definition to state claims against.
-/

/-! ## A320955.P17228292454525302831

`A108934(∑[2*n]%comp[∑[n]])`
-/

namespace A320955.P17228292454525302831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108934 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A320955.P17228292454525302831

/-! ## A320955.P3275275883360794319

`A108934(∑[char[∑[n]]]²-(n+1))`
-/

namespace A320955.P3275275883360794319
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108934 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A320955.P3275275883360794319

/-! ## A320955.P4486796538093485854

`and(-1, A108934(A061579(n)))`
-/

namespace A320955.P4486796538093485854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A108934 (A061579 n).toNat)

end

end A320955.P4486796538093485854

/-! ## A320955.P7909844820167131727

`gcd(A000038(n), A108934(A061579(n)))`
-/

namespace A320955.P7909844820167131727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A108934 (A061579 n).toNat)

end

end A320955.P7909844820167131727

/-! ## A320955.P9176690189842686649

`∑{d}[A108934(A061579(n)), A000010(#)]`
-/

namespace A320955.P9176690189842686649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108934 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A320955.P9176690189842686649

/-! ## A320955.P15582819441820232671

`abs(A087960(n))*A108934(A061579(n))`
-/

namespace A320955.P15582819441820232671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A087960 n| * A108934 (A061579 n).toNat

end

end A320955.P15582819441820232671

/-! ## A320955.P12028090788996997462

`A108934(A061579(n))%A001359(n+1)`
-/

namespace A320955.P12028090788996997462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108934 (A061579 n).toNat) (A001359 (n + 1))

end

end A320955.P12028090788996997462

/-! ## A320955.P1554427871384288407

`A000041(C(n, n²))*A108934(A061579(n))`
-/

namespace A320955.P1554427871384288407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A108934 (A061579 n).toNat

end

end A320955.P1554427871384288407

/-! ## A320955.P4826420811969597101

`A108934(A061579(n))+A008683(4*(n+1))`
-/

namespace A320955.P4826420811969597101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108934 (A061579 n).toNat + A008683 (4 * (n + 1))

end

end A320955.P4826420811969597101

/-! ## A320955.P15359276557569044765

`A108934(A061579(n))^A014963(4*n+2)`
-/

namespace A320955.P15359276557569044765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108934 (A061579 n).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A320955.P15359276557569044765

/-!
# A320956: a(n) = A000110(n) * A000111(n). The exponential limit of sec + tan. Row sums of A373428.

The programs for A320956, there is no canonical definition to state claims against.
-/

/-! ## A320956.P7152847421425720376

`A000110(n)*A000111(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A320956.P7152847421425720376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A000111 n

end

end A320956.P7152847421425720376

/-! ## A320956.P1675417649495995980

`A292935(n)*A346838(n)`
-/

namespace A320956.P1675417649495995980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292935 n * A346838 n

end

end A320956.P1675417649495995980

/-! ## A320956.P3983464344466829156

`abs(A000111(n)*A292935(n))`
-/

namespace A320956.P3983464344466829156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000111 n * A292935 n|

end

end A320956.P3983464344466829156

/-! ## A320956.P7552956767438468650

`A000110(n)*A008282(∑[n]+1)`
-/

namespace A320956.P7552956767438468650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A008282 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A320956.P7552956767438468650

/-! ## A320956.P16026314018471809633

`A000110(n)*A229892(∑[n]+1)`
-/

namespace A320956.P16026314018471809633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A229892 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A320956.P16026314018471809633

/-! ## A320956.P14391488150742895615

`A000110(n)*A181937(∑[n]+n)`
-/

namespace A320956.P14391488150742895615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A181937 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A320956.P14391488150742895615

/-! ## A320956.P7390359984237280326

`A008282(∑[n]+1)*A283424(C(n, 2))`
-/

namespace A320956.P7390359984237280326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A283424 (Nat.choose n 2)

end

end A320956.P7390359984237280326

/-! ## A320956.P4096295180762785919

`A229892(∑[n]+1)*A283424(C(n, 2))`
-/

namespace A320956.P4096295180762785919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A283424 (Nat.choose n 2)

end

end A320956.P4096295180762785919

/-! ## A320956.P10697696651653244893

`A000111(n)*A186020(A000217(n))`
-/

namespace A320956.P10697696651653244893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n * A186020 (A000217 n).toNat

end

end A320956.P10697696651653244893

/-! ## A320956.P7165074095867357962

`A000110(n)*A147315(A161680(n))`
-/

namespace A320956.P7165074095867357962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A147315 (A161680 n).toNat

end

end A320956.P7165074095867357962

/-!
# A320957: a(n) = (1/6)*n!*[x^n] (2 + sec(3*x) + tan(3*x) + 3*sec(x) + 3*tan(x)).

The programs for A320957, there is no canonical definition to state claims against.
-/

/-! ## A320957.P17897771531419214589

`A000111(n)*A124302(n)`
-/

namespace A320957.P17897771531419214589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n * A124302 n

end

end A320957.P17897771531419214589

/-! ## A320957.P16964421418830124995

`abs(A124302(n)*A346838(n))`
-/

namespace A320957.P16964421418830124995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124302 n * A346838 n|

end

end A320957.P16964421418830124995

/-! ## A320957.P6969834068485183177

`A008281(A000096(n))*A124302(n)`
-/

namespace A320957.P6969834068485183177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (A000096 n).toNat * A124302 n

end

end A320957.P6969834068485183177

/-! ## A320957.P3564465337711389555

`A008282(A000124(n))*A124302(n)`
-/

namespace A320957.P3564465337711389555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (A000124 n).toNat * A124302 n

end

end A320957.P3564465337711389555

/-! ## A320957.P18042777345123176283

`A109449(A000217(n))*A124302(n)`
-/

namespace A320957.P18042777345123176283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (A000217 n).toNat * A124302 n

end

end A320957.P18042777345123176283

/-!
# A320958: The exponential limit of arcsin (odd indices only).

The programs for A320958, there is no canonical definition to state claims against.
-/

/-! ## A320958.P5529415575496350737

`record[A123023(n)²*record[A186020(n)]]`
-/

namespace A320958.P5529415575496350737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123023 n ^ 2 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320958.P5529415575496350737

/-! ## A320958.P12769170871285070132

`A001818(n)*A089004(2*n+1)`
-/

namespace A320958.P12769170871285070132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001818 n * A089004 (2 * n + 1)

end

end A320958.P12769170871285070132

/-! ## A320958.P8923129738533519279

`A001147(n)²*A000110(2*n+1)`
-/

namespace A320958.P8923129738533519279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n ^ 2 * A000110 (2 * n + 1)

end

end A320958.P8923129738533519279

/-! ## A320958.P1690921698588323755

`record[A089004(n+1)*A177145(n+1)]`
-/

namespace A320958.P1690921698588323755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089004 (n + 1) * A177145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320958.P1690921698588323755

/-! ## A320958.P8568494692231810659

`A000110(2*n+1)*A000246(2*n)`
-/

namespace A320958.P8568494692231810659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (2 * n + 1) * A000246 (2 * n)

end

end A320958.P8568494692231810659

/-!
# A320959: The exponential limit of arctanh (odd indices only).

The programs for A320959, there is no canonical definition to state claims against.
-/

/-! ## A320959.P8919997256197913329

`record[A320962(n+1)]`
-/

namespace A320959.P8919997256197913329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320959.P8919997256197913329

/-! ## A320959.P13790261053156829820

`A320962(2*n+1)`
-/

namespace A320959.P13790261053156829820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320962 (2 * n + 1)

end

end A320959.P13790261053156829820

/-! ## A320959.P3282634009380821763

`(2*n)!*A099977(n)`
-/

namespace A320959.P3282634009380821763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℤ) * A099977 n

end

end A320959.P3282634009380821763

/-! ## A320959.P3204093276937109731

`A059604((n+1)*Δ[n²])`
-/

namespace A320959.P3204093276937109731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059604 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A320959.P3204093276937109731

/-! ## A320959.P15152503220926954009

`(2*n)!*A000110(2*n+1)`
-/

namespace A320959.P15152503220926954009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℤ) * A000110 (2 * n + 1)

end

end A320959.P15152503220926954009

/-!
# A320961: The exponential limit of (-x)!, rounded to the nearest integer.

The programs for A320961, there is no canonical definition to state claims against.
-/

/-! ## A320961.P14567303671600242425

`A044922(n^comp[7*n-2])`
-/

namespace A320961.P14567303671600242425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044922 (n ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A320961.P14567303671600242425

/-!
# A320962: a(n) = (-1)^(n-1)*(n-1)!*Sum_{i=0..n} Stirling2(n, i) if n > 0 and 0 otherwise.

The programs for A320962, there is no canonical definition to state claims against.
-/

/-! ## A320962.P16415859763871702897

`-A104150(n)*A292935(n)`
-/

namespace A320962.P16415859763871702897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A104150 n * A292935 n)

end

end A320962.P16415859763871702897

/-! ## A320962.P12393176885848476942

`∏[or(1-n, n!)]*A000110(n)*A178334(n)`
-/

namespace A320962.P12393176885848476942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (1 - (n : ℤ)) (Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A000110 n * A178334 n

end

end A320962.P12393176885848476942

/-! ## A320962.P9593785414437676171

`A000110(n)*A048994(A000124(n))`
-/

namespace A320962.P9593785414437676171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A048994 (A000124 n).toNat

end

end A320962.P9593785414437676171

/-! ## A320962.P14947859696237927560

`A153881(n+1)*A292935(n)*A104150(n)`
-/

namespace A320962.P14947859696237927560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) * A292935 n * A104150 n

end

end A320962.P14947859696237927560

/-!
# A320963: a(n) = Sum_{j=0..n} Sum_{k=0..j} abs( Stirling1(j - k, k) ).

The programs for A320963, there is no canonical definition to state claims against.
-/

/-! ## A320963.P6554075008730132395

`∑[A343579(n)]`
-/

namespace A320963.P6554075008730132395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320963.P6554075008730132395

/-! ## A320963.P13272767834288505616

`A343579(n)+a(n-A057427(n))` with `a(0)=1`
-/

namespace A320963.P13272767834288505616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A343579 n + a ((n : ℤ) - A057427 n).toNat

end

end A320963.P13272767834288505616

/-! ## A320963.P17567070174820186124

`∑[A081753(A022492(n+1))]`
-/

namespace A320963.P17567070174820186124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A022492 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320963.P17567070174820186124

/-! ## A320963.P3058116945197044415

`∑[A008647(A022492(n+1)+5)]`
-/

namespace A320963.P3058116945197044415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A022492 (n + 1) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320963.P3058116945197044415

/-!
# A320964: a(n) = Sum_{j=0..n} Sum_{k=0..j} Stirling2(j - k, k).

The programs for A320964, there is no canonical definition to state claims against.
-/

/-! ## A320964.P11384010625291268330

`∑[A171367(n)]`
-/

namespace A320964.P11384010625291268330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320964.P11384010625291268330

/-! ## A320964.P8845466126235479590

`A363071(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A320964.P8845466126235479590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A363071 n + a (n - 2)

end

end A320964.P8845466126235479590

/-! ## A320964.P11353265709438535582

`∑[A024427(n-a(2%n))]` with `a(0)=1, a(1)=0`
-/

namespace A320964.P11353265709438535582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A024427 ((n : ℤ) - f1 (2 % n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320964.P11353265709438535582

/-! ## A320964.P1742264450828270457

`A024427(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A320964.P1742264450828270457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A024427 (n - 1) + a (n - 1)

end

end A320964.P1742264450828270457

/-! ## A320964.P17471174973881039348

`a(n-1)+A171367(n)+A000038(n+1)` with `a(0)=1`
-/

namespace A320964.P17471174973881039348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A171367 n + A000038 (n + 1))

end

end A320964.P17471174973881039348

/-!
# A320965: Squares divisible by a single cube > 1.

The programs for A320965, the canonical program `A320965.P2267012518773111815` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320965 has offset 1).

The definition of A320965 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060687, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A320965.P2267012518773111815

`A060687(n+1)²`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A320965

/-- `A060687(n+1)²` -/
def P2267012518773111815.Spec : Prop :=
  ∀ n, P2267012518773111815.a n = A320965 (n + 1)

theorem P2267012518773111815.correct : P2267012518773111815.Spec := by
  intro n
  simp only [A320965, Nat.add_sub_cancel]

end A320965

/-! ## A320965.P14213382350809422553

`(eq[2, A005361(n+1)]+1)²`
-/

namespace A320965.P14213382350809422553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A320965.P14213382350809422553

namespace A320965

/-- `(eq[2, A005361(n+1)]+1)²` -/
def P14213382350809422553.Spec : Prop :=
  ∀ n, (P14213382350809422553.a n : ℤ) = A320965 (n + 1)

end A320965

/-! ## A320965.P2453918653570829861

`(eq[2, A292582(n+1)]+1)²`
-/

namespace A320965.P2453918653570829861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292582 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A320965.P2453918653570829861

namespace A320965

/-- `(eq[2, A292582(n+1)]+1)²` -/
def P2453918653570829861.Spec : Prop :=
  ∀ n, (P2453918653570829861.a n : ℤ) = A320965 (n + 1)

end A320965

/-! ## A320965.P13096531006413646943

`(eq[2, A293515(n+1)]+1)²`
-/

namespace A320965.P13096531006413646943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293515 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A320965.P13096531006413646943

namespace A320965

/-- `(eq[2, A293515(n+1)]+1)²` -/
def P13096531006413646943.Spec : Prop :=
  ∀ n, (P13096531006413646943.a n : ℤ) = A320965 (n + 1)

end A320965

/-! ## A320965.P1316780811390965531

`(eq[2, A294875(n+1)]+1)²`
-/

namespace A320965.P1316780811390965531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294875 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A320965.P1316780811390965531

namespace A320965

/-- `(eq[2, A294875(n+1)]+1)²` -/
def P1316780811390965531.Spec : Prop :=
  ∀ n, (P1316780811390965531.a n : ℤ) = A320965 (n + 1)

end A320965

/-! ## A320965.P2914025349808441334

`(eq[2, A295879(n+1)]+1)²`
-/

namespace A320965.P2914025349808441334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295879 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A320965.P2914025349808441334

namespace A320965

/-- `(eq[2, A295879(n+1)]+1)²` -/
def P2914025349808441334.Spec : Prop :=
  ∀ n, (P2914025349808441334.a n : ℤ) = A320965 (n + 1)

end A320965

/-! ## A320965.P1162575824380744507

`∩[A038109(n+1), A082293(n+1)]²`
-/

namespace A320965.P1162575824380744507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A320965.P1162575824380744507

namespace A320965

/-- `∩[A038109(n+1), A082293(n+1)]²` -/
def P1162575824380744507.Spec : Prop :=
  ∀ n, (P1162575824380744507.a n : ℤ) = A320965 (n + 1)

end A320965

/-! ## A320965.P7529421934570272874

`∩[A059269(n+1), A082293(n+1)]²`
-/

namespace A320965.P7529421934570272874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A320965.P7529421934570272874

namespace A320965

/-- `∩[A059269(n+1), A082293(n+1)]²` -/
def P7529421934570272874.Spec : Prop :=
  ∀ n, (P7529421934570272874.a n : ℤ) = A320965 (n + 1)

end A320965

/-! ## A320965.P1091338149242624248

`∩[A067259(n+1), A082293(n+1)]²`
-/

namespace A320965.P1091338149242624248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A320965.P1091338149242624248

namespace A320965

/-- `∩[A067259(n+1), A082293(n+1)]²` -/
def P1091338149242624248.Spec : Prop :=
  ∀ n, (P1091338149242624248.a n : ℤ) = A320965 (n + 1)

end A320965

/-! ## A320965.P3623464591539276045

`∩[A072587(n+1), A082293(n+1)]²`
-/

namespace A320965.P3623464591539276045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A320965.P3623464591539276045

namespace A320965

/-- `∩[A072587(n+1), A082293(n+1)]²` -/
def P3623464591539276045.Spec : Prop :=
  ∀ n, (P3623464591539276045.a n : ℤ) = A320965 (n + 1)

end A320965

/-! ## A320965.P1141773543086712655

`(eq[1, A336567(n+1)]+1)²`
-/

namespace A320965.P1141773543086712655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336567 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A320965.P1141773543086712655

namespace A320965

/-- `(eq[1, A336567(n+1)]+1)²` -/
def P1141773543086712655.Spec : Prop :=
  ∀ n, (P1141773543086712655.a n : ℤ) = A320965 (n + 1)

end A320965

/-! ## A320965.P14102953524703588989

`(eq[2, A038538(n+1)]+1)²`
-/

namespace A320965.P14102953524703588989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038538 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A320965.P14102953524703588989

namespace A320965

/-- `(eq[2, A038538(n+1)]+1)²` -/
def P14102953524703588989.Spec : Prop :=
  ∀ n, (P14102953524703588989.a n : ℤ) = A320965 (n + 1)

end A320965

/-! ## A320965.P4046960728848148841

`(eq[2, A322453(n+1)]+1)²`
-/

namespace A320965.P4046960728848148841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322453 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A320965.P4046960728848148841

namespace A320965

/-- `(eq[2, A322453(n+1)]+1)²` -/
def P4046960728848148841.Spec : Prop :=
  ∀ n, (P4046960728848148841.a n : ℤ) = A320965 (n + 1)

end A320965

/-! ## A320965.P15729396078510954841

`∩[A013929(n+1), A048107(n+1)]²`
-/

namespace A320965.P15729396078510954841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A320965.P15729396078510954841

namespace A320965

/-- `∩[A013929(n+1), A048107(n+1)]²` -/
def P15729396078510954841.Spec : Prop :=
  ∀ n, (P15729396078510954841.a n : ℤ) = A320965 (n + 1)

end A320965

/-! ## A320965.P1009767867763253186

`∩[A038109(n+1), A048107(n+1)]²`
-/

namespace A320965.P1009767867763253186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A320965.P1009767867763253186

namespace A320965

/-- `∩[A038109(n+1), A048107(n+1)]²` -/
def P1009767867763253186.Spec : Prop :=
  ∀ n, (P1009767867763253186.a n : ℤ) = A320965 (n + 1)

end A320965

/-! ## A320965.P13373271610711647594

`∩[A048107(n+1), A059269(n+1)]²`
-/

namespace A320965.P13373271610711647594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A320965.P13373271610711647594

namespace A320965

/-- `∩[A048107(n+1), A059269(n+1)]²` -/
def P13373271610711647594.Spec : Prop :=
  ∀ n, (P13373271610711647594.a n : ℤ) = A320965 (n + 1)

end A320965

/-! ## A320965.P11859950694349469710

`∩[A048107(n+1), A067259(n+1)]²`
-/

namespace A320965.P11859950694349469710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A320965.P11859950694349469710

namespace A320965

/-- `∩[A048107(n+1), A067259(n+1)]²` -/
def P11859950694349469710.Spec : Prop :=
  ∀ n, (P11859950694349469710.a n : ℤ) = A320965 (n + 1)

end A320965

/-! ## A320965.P727433795821368321

`∩[A048107(n+1), A072587(n+1)]²`
-/

namespace A320965.P727433795821368321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A320965.P727433795821368321

namespace A320965

/-- `∩[A048107(n+1), A072587(n+1)]²` -/
def P727433795821368321.Spec : Prop :=
  ∀ n, (P727433795821368321.a n : ℤ) = A320965 (n + 1)

end A320965

/-! ## A320965.P6771998436074823415

`∩[A048107(n+1), A074661(n+1)]²`
-/

namespace A320965.P6771998436074823415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A320965.P6771998436074823415

namespace A320965

/-- `∩[A048107(n+1), A074661(n+1)]²` -/
def P6771998436074823415.Spec : Prop :=
  ∀ n, (P6771998436074823415.a n : ℤ) = A320965 (n + 1)

end A320965

/-! ## A320965.P13225324547920252972

`∩[A377847(n+1), A392365(n+1)]`
-/

namespace A320965.P13225324547920252972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320965.P13225324547920252972

namespace A320965

/-- `∩[A377847(n+1), A392365(n+1)]` -/
def P13225324547920252972.Spec : Prop :=
  ∀ n, (P13225324547920252972.a n : ℤ) = A320965 (n + 1)

end A320965

/-!
# A320966: Powerful numbers A001694 divisible by a cube > 1.

The programs for A320966, there is no canonical definition to state claims against.
-/

/-! ## A320966.P11689692896541649733

`∪[A062320(n+1), A102834(n+1)]`
-/

namespace A320966.P11689692896541649733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A320966.P11689692896541649733

/-! ## A320966.P15675303106293732337

`∪[A246549(n+1), A372404(n+1)]`
-/

namespace A320966.P15675303106293732337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A320966.P15675303106293732337

/-! ## A320966.P340386607943892484

`∪[A359280(n+1), A390540(n+1)]`
-/

namespace A320966.P340386607943892484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A320966.P340386607943892484

/-! ## A320966.P9852049236488113861

`∪[A372404(n+1), A377847(n+1)]`
-/

namespace A320966.P9852049236488113861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A320966.P9852049236488113861

/-! ## A320966.P6815982155076429972

`∪[A376936(n+1), A377847(n+1)]`
-/

namespace A320966.P6815982155076429972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A320966.P6815982155076429972

/-! ## A320966.P16293134785461477606

`∪[A372404(n+1), A390540(n+1)]`
-/

namespace A320966.P16293134785461477606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A320966.P16293134785461477606

/-! ## A320966.P4669102957960155041

`∩[A001694(n+1), A059172(n+1)]`
-/

namespace A320966.P4669102957960155041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320966.P4669102957960155041

/-! ## A320966.P10047534962051810334

`filter[A001694(n+1), A380439(#)]`
-/

namespace A320966.P10047534962051810334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380439 (f1 j).toNat = 1) n)

end

end A320966.P10047534962051810334

/-! ## A320966.P4611244037757313643

`∩[A001694(n+1), A046099(n+1)]`
-/

namespace A320966.P4611244037757313643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320966.P4611244037757313643

/-! ## A320966.P5818854102793178570

`record[A057521(A046099(n+1))]`
-/

namespace A320966.P5818854102793178570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A046099 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320966.P5818854102793178570

/-! ## A320966.P13935296303990567139

`record[A057521(A059172(n+1))]`
-/

namespace A320966.P13935296303990567139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A059172 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320966.P13935296303990567139

/-! ## A320966.P2764127544392462069

`∩[A046099(n+1), A393924(n+1)]`
-/

namespace A320966.P2764127544392462069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320966.P2764127544392462069

/-! ## A320966.P9195199661390761703

`∩[A059172(n+1), A393924(n+1)]`
-/

namespace A320966.P9195199661390761703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320966.P9195199661390761703

/-! ## A320966.P17297298884513442373

`lt[1, A095683(n+1)]+1`
-/

namespace A320966.P17297298884513442373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095683 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A320966.P17297298884513442373

/-! ## A320966.P7632006911855345864

`filter[A046099(n+1), A112526(#)]`
-/

namespace A320966.P7632006911855345864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A320966.P7632006911855345864

/-! ## A320966.P15232122787996262071

`filter[A059172(n+1), A112526(#)]`
-/

namespace A320966.P15232122787996262071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A320966.P15232122787996262071

/-! ## A320966.P7464352106315085202

`eq[A007427(n+1), A056169(n+1)]+1`
-/

namespace A320966.P7464352106315085202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A320966.P7464352106315085202

/-! ## A320966.P8080763397510682698

`lt[A254926(n+1), A057521(n+1)]+1`
-/

namespace A320966.P8080763397510682698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A320966.P8080763397510682698

/-! ## A320966.P2708377402937486436

`A065475(eq[A007427(n+1), A056169(n+1)])`
-/

namespace A320966.P2708377402937486436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A320966.P2708377402937486436

/-! ## A320966.P10276165982619350591

`A020725(lt[A254926(n+1), A057521(n+1)])`
-/

namespace A320966.P10276165982619350591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A320966.P10276165982619350591

/-!
# A320967: Expansion of Product_{k>0} theta_3(q^k)/theta_4(q^k), where theta_3() and theta_4() are the Jacobi theta functions.

The programs for A320967, there is no canonical definition to state claims against.
-/

/-! ## A320967.P14934108003068838219

`A099035(n+1)-A309307(A020699(n))`
-/

namespace A320967.P14934108003068838219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099035 (n + 1) - A309307 (A020699 n).toNat

end

end A320967.P14934108003068838219

/-! ## A320967.P3378815615631557929

`and(A008574(A024036(n)), A099035(n+1))`
-/

namespace A320967.P3378815615631557929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008574 (A024036 n).toNat) (A099035 (n + 1))

end

end A320967.P3378815615631557929

/-! ## A320967.P17014682831679974563

`A099035(n+1)-A155828(A135520(2*n+1))`
-/

namespace A320967.P17014682831679974563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099035 (n + 1) - A155828 (A135520 (2 * n + 1)).toNat

end

end A320967.P17014682831679974563

/-!
# A320968: Expansion of (Product_{k>0} theta_3(q^k)/theta_4(q^k))^(1/2), where theta_3() and theta_4() are the Jacobi theta functions.

The programs for A320968, there is no canonical definition to state claims against.
-/

/-! ## A320968.P13229920541564363885

`(-1)^n*A320098(n)`
-/

namespace A320968.P13229920541564363885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A320098 n

end

end A320968.P13229920541564363885

/-! ## A320968.P15549167175458753773

`abs(A320098(n))`
-/

namespace A320968.P15549167175458753773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A320098 n|

end

end A320968.P15549167175458753773

/-! ## A320968.P15709905421226540878

`gcd(A000038(n), A320098(n))`
-/

namespace A320968.P15709905421226540878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A320098 n)

end

end A320968.P15709905421226540878

/-! ## A320968.P14833367085265690939

`lcm(A000034(n), A320098(n))`
-/

namespace A320968.P14833367085265690939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A320098 n)

end

end A320968.P14833367085265690939

/-! ## A320968.P1851375139611421662

`lcm(-A320098(n), Δ[A184656(n+1)])`
-/

namespace A320968.P1851375139611421662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184656 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A320098 n) (f1 (n + 1) - f1 n)

end

end A320968.P1851375139611421662

/-!
# A320969: Semiprimes with distinct digits.

The programs for A320969, the canonical program `A320969.P9942009885707398919` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320969 has offset 1).

The definition of A320969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2796 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320969.P2464371940769058681

`filter[A210441(n+1), A064911(#)]`
-/

namespace A320969.P2464371940769058681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A320969.P2464371940769058681

namespace A320969

/-- `filter[A210441(n+1), A064911(#)]` -/
def P2464371940769058681.Spec : Prop :=
  ∀ n, P2464371940769058681.a n = A320969 (n + 1)

end A320969

/-! ## A320969.P7574762401983555622

`filter[A210441(n+1), A101040(#)]`
-/

namespace A320969.P7574762401983555622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A320969.P7574762401983555622

namespace A320969

/-- `filter[A210441(n+1), A101040(#)]` -/
def P7574762401983555622.Spec : Prop :=
  ∀ n, P7574762401983555622.a n = A320969 (n + 1)

end A320969

/-! ## A320969.P9942009885707398919

`∩[A001358(n+1), A210441(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A320969

/-- `∩[A001358(n+1), A210441(n+1)]` -/
def P9942009885707398919.Spec : Prop :=
  ∀ n, (P9942009885707398919.a n : ℤ) = A320969 (n + 1)

theorem P9942009885707398919.correct : P9942009885707398919.Spec := by
  intro n
  simp only [A320969, Nat.add_sub_cancel]

end A320969

/-! ## A320969.P13738839913841211115

`filter[A010784(n+2), A064911(#)]`
-/

namespace A320969.P13738839913841211115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A320969.P13738839913841211115

namespace A320969

/-- `filter[A010784(n+2), A064911(#)]` -/
def P13738839913841211115.Spec : Prop :=
  ∀ n, P13738839913841211115.a n = A320969 (n + 1)

end A320969

/-! ## A320969.P4716247667831121727

`∩[A001358(n+1), A010784(n+1)]`
-/

namespace A320969.P4716247667831121727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320969.P4716247667831121727

namespace A320969

/-- `∩[A001358(n+1), A010784(n+1)]` -/
def P4716247667831121727.Spec : Prop :=
  ∀ n, (P4716247667831121727.a n : ℤ) = A320969 (n + 1)

end A320969

/-! ## A320969.P17480511983700572218

`eq[A137564(n), A374897(n)]`
-/

namespace A320969.P17480511983700572218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374897 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320969.P17480511983700572218

namespace A320969

/-- `eq[A137564(n), A374897(n)]` -/
def P17480511983700572218.Spec : Prop :=
  ∀ n, (P17480511983700572218.a n : ℤ) = A320969 (n + 1)

end A320969

/-! ## A320969.P16547315690587645547

`eq[n, A374897(A320486(n))]`
-/

namespace A320969.P16547315690587645547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374897 (A320486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320969.P16547315690587645547

namespace A320969

/-- `eq[n, A374897(A320486(n))]` -/
def P16547315690587645547.Spec : Prop :=
  ∀ n, (P16547315690587645547.a n : ℤ) = A320969 (n + 1)

end A320969

/-! ## A320969.P4036267425319031944

`record[A137564(A001358(n+1))]`
-/

namespace A320969.P4036267425319031944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A001358 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320969.P4036267425319031944

namespace A320969

/-- `record[A137564(A001358(n+1))]` -/
def P4036267425319031944.Spec : Prop :=
  ∀ n, P4036267425319031944.a n = A320969 (n + 1)

end A320969

/-! ## A320969.P18124197658828862809

`record[A137564(eq[2, A105700(n)])]`
-/

namespace A320969.P18124197658828862809
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320969.P18124197658828862809

namespace A320969

/-- `record[A137564(eq[2, A105700(n)])]` -/
def P18124197658828862809.Spec : Prop :=
  ∀ n, P18124197658828862809.a n = A320969 (n + 1)

end A320969

/-! ## A320969.P3381049734083287785

`filter[A001358(n+1), A178788(#)]`
-/

namespace A320969.P3381049734083287785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A320969.P3381049734083287785

namespace A320969

/-- `filter[A001358(n+1), A178788(#)]` -/
def P3381049734083287785.Spec : Prop :=
  ∀ n, P3381049734083287785.a n = A320969 (n + 1)

end A320969

/-! ## A320969.P16842546867377410039

`filter[A176540(n+2), A178788(#)]`
-/

namespace A320969.P16842546867377410039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A320969.P16842546867377410039

namespace A320969

/-- `filter[A176540(n+2), A178788(#)]` -/
def P16842546867377410039.Spec : Prop :=
  ∀ n, P16842546867377410039.a n = A320969 (n + 1)

end A320969

/-! ## A320969.P7052904466610160815

`eq[A107846(n)+2, A105700(n)]`
-/

namespace A320969.P7052904466610160815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320969.P7052904466610160815

namespace A320969

/-- `eq[A107846(n)+2, A105700(n)]` -/
def P7052904466610160815.Spec : Prop :=
  ∀ n, (P7052904466610160815.a n : ℤ) = A320969 (n + 1)

end A320969

/-! ## A320969.P140328314150859635

`filter[A129767(2*(n+1)), A178788(#)]`
-/

namespace A320969.P140328314150859635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A320969.P140328314150859635

namespace A320969

/-- `filter[A129767(2*(n+1)), A178788(#)]` -/
def P140328314150859635.Spec : Prop :=
  ∀ n, P140328314150859635.a n = A320969 (n + 1)

end A320969

/-! ## A320969.P8096016087108419453

`record[A320486(A001358(2*n+1-n))]`
-/

namespace A320969.P8096016087108419453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 (A001358 (2 * n + 1 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320969.P8096016087108419453

namespace A320969

/-- `record[A320486(A001358(2*n+1-n))]` -/
def P8096016087108419453.Spec : Prop :=
  ∀ n, P8096016087108419453.a n = A320969 (n + 1)

end A320969

/-! ## A320969.P5809959409786215929

`eq[A107846(n)+1, char[A001358(n+1)]]`
-/

namespace A320969.P5809959409786215929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A320969.P5809959409786215929

namespace A320969

/-- `eq[A107846(n)+1, char[A001358(n+1)]]` -/
def P5809959409786215929.Spec : Prop :=
  ∀ n, (P5809959409786215929.a n : ℤ) = A320969 (n + 1)

end A320969

/-! ## A320969.P18332789800374733113

`eq[A108037(A332550(n)), A284289(n)]`
-/

namespace A320969.P18332789800374733113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108037 (A332550 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320969.P18332789800374733113

namespace A320969

/-- `eq[A108037(A332550(n)), A284289(n)]` -/
def P18332789800374733113.Spec : Prop :=
  ∀ n, (P18332789800374733113.a n : ℤ) = A320969 (n + 1)

end A320969

/-!
# A320973: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals: A(n,k) = n^k * Product_{p|n, p prime} (1 + 1/p^k).

The programs for A320973, there is no canonical definition to state claims against.
-/

/-! ## A320973.P13596489572965471707

`A279394(n+1)-A279372(A059268(n))`
-/

namespace A320973.P13596489572965471707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279394 (n + 1) - A279372 (A059268 n).toNat

end

end A320973.P13596489572965471707

/-! ## A320973.P7715204192794972150

`and(-A238303(A266632(n+1)), A279394(n+1))`
-/

namespace A320973.P7715204192794972150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A238303 (A266632 (n + 1)).toNat) (A279394 (n + 1))

end

end A320973.P7715204192794972150

/-! ## A320973.P819189871960583746

`and(-A238303(A266886(n+1)), A279394(n+1))`
-/

namespace A320973.P819189871960583746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A238303 (A266886 (n + 1)).toNat) (A279394 (n + 1))

end

end A320973.P819189871960583746

/-! ## A320973.P10484791144611668619

`and(-A168208(A233543(n)), A279394(n+1))`
-/

namespace A320973.P10484791144611668619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A168208 (A233543 n).toNat) (A279394 (n + 1))

end

end A320973.P10484791144611668619

/-! ## A320973.P17483410869805995573

`A279394(n+1)+1-A127568(A127568(n))`
-/

namespace A320973.P17483410869805995573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279394 (n + 1) + (1 - A127568 (A127568 n).toNat)

end

end A320973.P17483410869805995573

/-!
# A320974: a(n) = n^n * Product_{p|n, p prime} (1 + 1/p^n).

The programs for A320974, there is no canonical definition to state claims against.
-/

/-! ## A320974.P1026408320484703264

`∑{d}[∏{p}[n+1, #], ((n+1)/#)^(n+1)]`
-/

namespace A320974.P1026408320484703264
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℚ) / (d : ℚ)) ^ (n + 1)

end

end A320974.P1026408320484703264

/-! ## A320974.P9997066654485877452

`∑{d}[A007947(n+1), ((n+1)/#)^(n+1)]`
-/

namespace A320974.P9997066654485877452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n + 1 : ℚ) / (d : ℚ)) ^ (n + 1)

end

end A320974.P9997066654485877452

/-! ## A320974.P6989730712514642169

`A003557(n+1)^A326178(n)*A321236(n+1)`
-/

namespace A320974.P6989730712514642169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) : ℚ) ^ (A326178 n : ℤ) * (A321236 (n + 1) : ℚ)

end

end A320974.P6989730712514642169

/-! ## A320974.P16911536082540597690

`A003557(n+1)^A087156(n+1)*A321236(n+1)`
-/

namespace A320974.P16911536082540597690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) : ℚ) ^ (A087156 (n + 1) : ℤ) * (A321236 (n + 1) : ℚ)

end

end A320974.P16911536082540597690

/-! ## A320974.P274602501043706802

`A320973(2*(n+1)²)`
-/

namespace A320974.P274602501043706802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320973 (2 * (n + 1) ^ 2)

end

end A320974.P274602501043706802

/-!
# A320975: Greatest eigenvalues of the form x + y*sqrt(z) of the Fibonacci matrix of the form n X n = [[F(0),F(1),...,F(n-1)],[F(n),F(n+1),...,F(2n-1)],...,[F(n(n-1)),F(n(n-1)+1),...,F(n^2-1)]] represented by the triples of integers (x, y, z).

The programs for A320975, there is no canonical definition to state claims against.
-/

/-! ## A320975.P3236668817724566878

`A003285(A056137(n+1)+A056111(n))`
-/

namespace A320975.P3236668817724566878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A056137 (n + 1) + A056111 n).toNat

end

end A320975.P3236668817724566878

/-! ## A320975.P5520228517515567222

`A094125(n)%A116100(A001104(n+1))`
-/

namespace A320975.P5520228517515567222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094125 n) (A116100 (A001104 (n + 1)).toNat)

end

end A320975.P5520228517515567222

/-! ## A320975.P7457809285667750887

`A079464(n+1)%A002024(A230951(n))`
-/

namespace A320975.P7457809285667750887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079464 (n + 1)) (A002024 (A230951 n).toNat)

end

end A320975.P7457809285667750887

/-! ## A320975.P1702267797602012110

`A004767(n+1)%A213924(A148928(n))`
-/

namespace A320975.P1702267797602012110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004767 (n + 1)) (A213924 (A148928 n).toNat)

end

end A320975.P1702267797602012110

/-! ## A320975.P10267054080958946044

`A233386(A337067(n))%A132327(n+1)`
-/

namespace A320975.P10267054080958946044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233386 (A337067 n).toNat) (A132327 (n + 1))

end

end A320975.P10267054080958946044

/-!
# A320976: Number of permutations p of [n] such that the up-down signature of p has nonnegative partial sums with a maximal value of two.

The programs for A320976, there is no canonical definition to state claims against.
-/

/-! ## A320976.P10519756926547019563

`A262126(n+2)-A000111(n+2)`
-/

namespace A320976.P10519756926547019563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262126 (n + 2) - A000111 (n + 2)

end

end A320976.P10519756926547019563

/-! ## A320976.P18063632500332159708

`A262125(∑[n+2]+3)`
-/

namespace A320976.P18063632500332159708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A320976.P18063632500332159708

/-! ## A320976.P11571980052616702469

`record[A262125(A133263(A008611(n)))]`
-/

namespace A320976.P11571980052616702469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (A133263 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320976.P11571980052616702469

/-! ## A320976.P15038084563693485420

`A262125(A340266(n+1))-A000007(n)`
-/

namespace A320976.P15038084563693485420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (A340266 (n + 1)).toNat - A000007 n

end

end A320976.P15038084563693485420

/-! ## A320976.P12870371053991883535

`A262125(A340266(n+1))-A151878(n)`
-/

namespace A320976.P12870371053991883535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (A340266 (n + 1)).toNat - A151878 n

end

end A320976.P12870371053991883535

/-!
# A320977: Number of permutations p of [n] such that the up-down signature of p has nonnegative partial sums with a maximal value of three.

The programs for A320977, there is no canonical definition to state claims against.
-/

/-! ## A320977.P326314001929820610

`A262128(n+3)-A262126(n+3)`
-/

namespace A320977.P326314001929820610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262128 (n + 3) - A262126 (n + 3)

end

end A320977.P326314001929820610

/-! ## A320977.P10478753129089842175

`A262125(A167614(n+2))`
-/

namespace A320977.P10478753129089842175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (A167614 (n + 2)).toNat

end

end A320977.P10478753129089842175

/-! ## A320977.P9228106413048832698

`A262125(A152950(n+4))`
-/

namespace A320977.P9228106413048832698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (A152950 (n + 4)).toNat

end

end A320977.P9228106413048832698

/-! ## A320977.P14545595245868784865

`A262125(A052905(n)+8)`
-/

namespace A320977.P14545595245868784865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (A052905 n + 8).toNat

end

end A320977.P14545595245868784865

/-! ## A320977.P13265521074392984687

`A262125(A055999(n)+9)`
-/

namespace A320977.P13265521074392984687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (A055999 n + 9).toNat

end

end A320977.P13265521074392984687

/-! ## A320977.P2816743150933176281

`A262125(eq[3, A002262(n)])`
-/

namespace A320977.P2816743150933176281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320977.P2816743150933176281

/-! ## A320977.P7256529807948247606

`record[A262125(A133263(n)+1)]`
-/

namespace A320977.P7256529807948247606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (A133263 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320977.P7256529807948247606

/-! ## A320977.P6541365238144856469

`record[A262125(A000124(n)+2)]`
-/

namespace A320977.P6541365238144856469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (A000124 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320977.P6541365238144856469

/-! ## A320977.P9490433923009999187

`A262125(A340266(n+2)+1)`
-/

namespace A320977.P9490433923009999187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (A340266 (n + 2) + 1).toNat

end

end A320977.P9490433923009999187

/-! ## A320977.P16150337073106662555

`A262125(A046691(n+1)+7)`
-/

namespace A320977.P16150337073106662555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (A046691 (n + 1) + 7).toNat

end

end A320977.P16150337073106662555

/-!
# A320978: Number of permutations p of [n] such that the up-down signature of p has nonnegative partial sums with a maximal value of four.

The programs for A320978, there is no canonical definition to state claims against.
-/

/-! ## A320978.P6754887177804276918

`A262129(n+4)-A262128(n+4)`
-/

namespace A320978.P6754887177804276918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262129 (n + 4) - A262128 (n + 4)

end

end A320978.P6754887177804276918

/-! ## A320978.P8273461898572606221

`A262125(eq[4, A002262(n)])`
-/

namespace A320978.P8273461898572606221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320978.P8273461898572606221

/-! ## A320978.P13430222887055689493

`A262125(A167499(n+3)-1)`
-/

namespace A320978.P13430222887055689493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (A167499 (n + 3) - 1).toNat

end

end A320978.P13430222887055689493

/-! ## A320978.P17928632154558530691

`A262125(A055998(n+2)+7)`
-/

namespace A320978.P17928632154558530691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (A055998 (n + 2) + 7).toNat

end

end A320978.P17928632154558530691

/-! ## A320978.P12450966725388974986

`A262125(A046691(n+2)+8)`
-/

namespace A320978.P12450966725388974986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (A046691 (n + 2) + 8).toNat

end

end A320978.P12450966725388974986

/-! ## A320978.P6755202089338281323

`A262125(eq[2, A144328(n+1)-2])`
-/

namespace A320978.P6755202089338281323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320978.P6755202089338281323

/-! ## A320978.P2561771678184896150

`A262125(eq[2, A144328(n+1)/2])`
-/

namespace A320978.P2561771678184896150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A320978.P2561771678184896150

/-! ## A320978.P17137989158510823151

`A262125(A167614(n+1)+A020744(n))`
-/

namespace A320978.P17137989158510823151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (A167614 (n + 1) + A020744 n).toNat

end

end A320978.P17137989158510823151

/-!
# A320979: Number of permutations p of [n] such that the up-down signature of p has nonnegative partial sums with a maximal value of five.

The programs for A320979, there is no canonical definition to state claims against.
-/

/-! ## A320979.P5706441492035025649

`A262130(n+5)-A262129(n+5)`
-/

namespace A320979.P5706441492035025649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262130 (n + 5) - A262129 (n + 5)

end

end A320979.P5706441492035025649

/-! ## A320979.P14476744995707330458

`A262125(A167499(n+4))`
-/

namespace A320979.P14476744995707330458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (A167499 (n + 4)).toNat

end

end A320979.P14476744995707330458

/-! ## A320979.P12588780345118548532

`A262125(eq[5, A002262(n)])`
-/

namespace A320979.P12588780345118548532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320979.P12588780345118548532

/-! ## A320979.P5509949036038350425

`A262125(A000124(n+5)+4)`
-/

namespace A320979.P5509949036038350425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (A000124 (n + 5) + 4).toNat

end

end A320979.P5509949036038350425

/-! ## A320979.P736390995454137043

`A262125(A055998(n+3)+8)`
-/

namespace A320979.P736390995454137043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (A055998 (n + 3) + 8).toNat

end

end A320979.P736390995454137043

/-! ## A320979.P14757163643533247621

`A262125(A046691(n+5)-A005843(n+2))`
-/

namespace A320979.P14757163643533247621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (A046691 (n + 5) - A005843 (n + 2)).toNat

end

end A320979.P14757163643533247621

/-!
# A320980: Number of permutations p of [n] such that the up-down signature of p has nonnegative partial sums with a maximal value of six.

The programs for A320980, there is no canonical definition to state claims against.
-/

/-! ## A320980.P8832890674986841727

`A262131(n+6)-A262130(n+6)`
-/

namespace A320980.P8832890674986841727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262131 (n + 6) - A262130 (n + 6)

end

end A320980.P8832890674986841727

/-! ## A320980.P13744237341715673555

`A262125(eq[6, A002262(n)])`
-/

namespace A320980.P13744237341715673555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320980.P13744237341715673555

/-! ## A320980.P18164994056320909246

`A262125(eq[64, A059268(n)])`
-/

namespace A320980.P18164994056320909246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320980.P18164994056320909246

/-! ## A320980.P7784025875809925730

`A262125(eq[6, A144328(n+1)])`
-/

namespace A320980.P7784025875809925730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320980.P7784025875809925730

/-! ## A320980.P8428055361037366573

`A262125(eq[7, A002260(n+1)])`
-/

namespace A320980.P8428055361037366573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320980.P8428055361037366573

/-! ## A320980.P1965931003583896689

`A262125(eq[7, A134868(n+1)])`
-/

namespace A320980.P1965931003583896689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320980.P1965931003583896689

/-! ## A320980.P1757180920717584877

`A262125(eq[13, A104763(n+1)])`
-/

namespace A320980.P1757180920717584877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320980.P1757180920717584877

/-!
# A320981: Number of permutations p of [n] such that the up-down signature of p has nonnegative partial sums with a maximal value of seven.

The programs for A320981, there is no canonical definition to state claims against.
-/

/-! ## A320981.P18167184098121276265

`A262132(n+7)-A262131(n+7)`
-/

namespace A320981.P18167184098121276265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262132 (n + 7) - A262131 (n + 7)

end

end A320981.P18167184098121276265

/-! ## A320981.P13770048760882103494

`A262125(eq[7, A002262(n)])`
-/

namespace A320981.P13770048760882103494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320981.P13770048760882103494

/-! ## A320981.P12002181189560914664

`A262125(eq[7, A144328(n+1)])`
-/

namespace A320981.P12002181189560914664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320981.P12002181189560914664

/-! ## A320981.P12633240383453799083

`A262125(eq[8, A002260(n+1)])`
-/

namespace A320981.P12633240383453799083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320981.P12633240383453799083

/-! ## A320981.P10873986673480863047

`A262125(eq[8, A134868(n+1)])`
-/

namespace A320981.P10873986673480863047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320981.P10873986673480863047

/-! ## A320981.P2945896700078506882

`A262125(eq[8, A135223(n+1)])`
-/

namespace A320981.P2945896700078506882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320981.P2945896700078506882

/-!
# A320982: Number of permutations p of [n] such that the up-down signature of p has nonnegative partial sums with a maximal value of eight.

The programs for A320982, there is no canonical definition to state claims against.
-/

/-! ## A320982.P7598868256955498665

`A262133(n+8)-A262132(n+8)`
-/

namespace A320982.P7598868256955498665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262133 (n + 8) - A262132 (n + 8)

end

end A320982.P7598868256955498665

/-! ## A320982.P10550088885483158679

`A262125(eq[8, A002262(n)])`
-/

namespace A320982.P10550088885483158679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320982.P10550088885483158679

/-! ## A320982.P8770289409697289917

`A262125(eq[8, A144328(n+1)])`
-/

namespace A320982.P8770289409697289917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320982.P8770289409697289917

/-! ## A320982.P4818766018395346011

`A262125(eq[9, A002260(n+1)])`
-/

namespace A320982.P4818766018395346011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320982.P4818766018395346011

/-! ## A320982.P14347131829071654568

`A262125(eq[9, A134868(n+1)])`
-/

namespace A320982.P14347131829071654568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320982.P14347131829071654568

/-! ## A320982.P8564480961985559260

`A262125(eq[9, A135223(n+1)])`
-/

namespace A320982.P8564480961985559260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320982.P8564480961985559260

/-!
# A320983: Number of permutations p of [n] such that the up-down signature of p has nonnegative partial sums with a maximal value of nine.

The programs for A320983, there is no canonical definition to state claims against.
-/

/-! ## A320983.P17256947621049693272

`A262134(n+9)-A262133(n+9)`
-/

namespace A320983.P17256947621049693272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262134 (n + 9) - A262133 (n + 9)

end

end A320983.P17256947621049693272

/-! ## A320983.P4083824222608395732

`A262125(eq[9, A002262(n)])`
-/

namespace A320983.P4083824222608395732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320983.P4083824222608395732

/-! ## A320983.P15002837143878393685

`A262125(eq[9, A144328(n+1)])`
-/

namespace A320983.P15002837143878393685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320983.P15002837143878393685

/-! ## A320983.P17800751996974464459

`A262125(eq[10, A002260(n+1)])`
-/

namespace A320983.P17800751996974464459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320983.P17800751996974464459

/-! ## A320983.P15124544982591692705

`A262125(eq[10, A134868(n+1)])`
-/

namespace A320983.P15124544982591692705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320983.P15124544982591692705

/-! ## A320983.P9568220446716042439

`A262125(eq[19, A158405(n+1)])`
-/

namespace A320983.P9568220446716042439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320983.P9568220446716042439

/-!
# A320984: Number of permutations p of [n] such that the up-down signature of p has nonnegative partial sums with a maximal value of ten.

The programs for A320984, there is no canonical definition to state claims against.
-/

/-! ## A320984.P5563065409703782063

`A262135(n+10)-A262134(n+10)`
-/

namespace A320984.P5563065409703782063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262135 (n + 10) - A262134 (n + 10)

end

end A320984.P5563065409703782063

/-! ## A320984.P6306504589025944581

`A262125(eq[10, A002262(n)])`
-/

namespace A320984.P6306504589025944581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320984.P6306504589025944581

/-! ## A320984.P8341885356207083859

`A262125(eq[10, A144328(n+1)])`
-/

namespace A320984.P8341885356207083859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320984.P8341885356207083859

/-! ## A320984.P15165519525554445158

`A262125(eq[11, A002260(n+1)])`
-/

namespace A320984.P15165519525554445158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320984.P15165519525554445158

/-! ## A320984.P11564015092804225427

`A262125(eq[11, A134868(n+1)])`
-/

namespace A320984.P11564015092804225427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320984.P11564015092804225427

/-! ## A320984.P5280080600228773101

`A262125(eq[11, A135223(n+1)])`
-/

namespace A320984.P5280080600228773101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320984.P5280080600228773101

/-! ## A320984.P3945548484189220042

`A262125(eq[21, A158405(n+1)])`
-/

namespace A320984.P3945548484189220042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320984.P3945548484189220042

/-!
# A320985: Complement of A092855.

The programs for A320985, there is no canonical definition to state claims against.
-/

/-! ## A320985.P13329242361532645518

`A246339(n+1)-1`
-/

namespace A320985.P13329242361532645518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246339 (n + 1) - 1

end

end A320985.P13329242361532645518

/-! ## A320985.P10653701013629785613

`∪[A246356(n+1), A246357(n+1)]`
-/

namespace A320985.P10653701013629785613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A320985.P10653701013629785613

/-! ## A320985.P16807393004092570658

`∪[A247455(n+1), A247456(n+1)]`
-/

namespace A320985.P16807393004092570658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A320985.P16807393004092570658

/-! ## A320985.P17645648091891094788

`∪[A247631(n+1), A247632(n+1)]`
-/

namespace A320985.P17645648091891094788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A320985.P17645648091891094788

/-! ## A320985.P2147776062719053706

`∪[A293761(n+1), A293763(n+1)]`
-/

namespace A320985.P2147776062719053706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A320985.P2147776062719053706

/-! ## A320985.P4673704263754335509

`∪[A293761(n+1), A293762(n+1)]-1`
-/

namespace A320985.P4673704263754335509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293762 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A320985.P4673704263754335509

/-! ## A320985.P14998581168384346312

`eq[0, A004539(n+1)]`
-/

namespace A320985.P14998581168384346312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320985.P14998581168384346312

/-! ## A320985.P9767770787831616168

`lt[A004539(n+2), 1]+1`
-/

namespace A320985.P9767770787831616168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A320985.P9767770787831616168

/-! ## A320985.P9604661269151744079

`A023443(A246339(n+1))`
-/

namespace A320985.P9604661269151744079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A246339 (n + 1)).toNat

end

end A320985.P9604661269151744079

/-! ## A320985.P9558618930453098209

`lt[A238455(n), 1]+1`
-/

namespace A320985.P9558618930453098209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238455 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A320985.P9558618930453098209

/-! ## A320985.P12343134881392567726

`eq[0, floor(sqrt(2)*2^n)%2]`
-/

namespace A320985.P12343134881392567726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.sqrt (2 : ℝ) * (2 ^ n : ℝ)⌋ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320985.P12343134881392567726

/-! ## A320985.P17078301268887683859

`eq[0, and(1, floor(sqrt(2)*2^n))]`
-/

namespace A320985.P17078301268887683859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊Real.sqrt (2 : ℝ) * (2 ^ n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320985.P17078301268887683859

/-! ## A320985.P2455047892455449844

`lt[and(1, floor(sqrt(2)*2^n)), 1]`
-/

namespace A320985.P2455047892455449844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊Real.sqrt (2 : ℝ) * (2 ^ n : ℝ)⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A320985.P2455047892455449844

/-! ## A320985.P15580134805549721422

`lt[A084188(n)%2, 1]`
-/

namespace A320985.P15580134805549721422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084188 n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A320985.P15580134805549721422

/-! ## A320985.P17372016531438580729

`lt[gcd(2, A017912(2*n+1)), 2]`
-/

namespace A320985.P17372016531438580729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A017912 (2 * n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A320985.P17372016531438580729

/-!
# A320986: Fibonacci rabbit sequence number n coded in base four.

The programs for A320986, there is no canonical definition to state claims against.
-/

/-! ## A320986.P8046583077068723219

`record[char[A046691(n)]*A144287(n+1)]`
-/

namespace A320986.P8046583077068723219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A144287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320986.P8046583077068723219

/-! ## A320986.P12563239538843980500

`A144287(A141214(n))-A000007(n)`
-/

namespace A320986.P12563239538843980500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144287 (A141214 n).toNat - A000007 n

end

end A320986.P12563239538843980500

/-! ## A320986.P9172151364351077299

`A144287(A141214(n))*A178334(n)`
-/

namespace A320986.P9172151364351077299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144287 (A141214 n).toNat * A178334 n

end

end A320986.P9172151364351077299

/-! ## A320986.P14635387060859948496

`lcm(A144287(A141214(n)), A276088(n))`
-/

namespace A320986.P14635387060859948496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A144287 (A141214 n).toNat) (A276088 n)

end

end A320986.P14635387060859948496

/-! ## A320986.P1040557521648248876

`char[A144287(n+1)]*A144287(A055998(n+1))`
-/

namespace A320986.P1040557521648248876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144287 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A144287 (A055998 (n + 1)).toNat

end

end A320986.P1040557521648248876

/-!
# A320987: Fibonacci rabbit sequence number n coded in base five.

The programs for A320987, there is no canonical definition to state claims against.
-/

/-! ## A320987.P4390503359710138081

`abs(A062157(n))*A144287(A155212(n)+4)`
-/

namespace A320987.P4390503359710138081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062157 n| * A144287 (A155212 n + 4).toNat

end

end A320987.P4390503359710138081

/-! ## A320987.P15432247963826188917

`A033042(A005203(n))`
-/

namespace A320987.P15432247963826188917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (A005203 n).toNat

end

end A320987.P15432247963826188917

/-!
# A320988: Fibonacci rabbit sequence number n coded in base six.

The programs for A320988, there is no canonical definition to state claims against.
-/

/-! ## A320988.P10040485775921699941

`record[A228087(A052701(n))]`
-/

namespace A320988.P10040485775921699941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228087 (A052701 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320988.P10040485775921699941

/-!
# A320989: Fibonacci rabbit sequence number n coded in base seven.

The programs for A320989, there is no canonical definition to state claims against.
-/

/-! ## A320989.P9144050995940092577

`A033044(A005203(n)+1)`
-/

namespace A320989.P9144050995940092577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (A005203 n + 1).toNat

end

end A320989.P9144050995940092577

/-!
# A320990: Fibonacci rabbit sequence number n coded in base eight.

The programs for A320990, there is no canonical definition to state claims against.
-/

/-! ## A320990.P6393709761473611633

`A033045(A005203(n))`
-/

namespace A320990.P6393709761473611633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (A005203 n).toNat

end

end A320990.P6393709761473611633

/-! ## A320990.P1544262416849704884

`A033045(A063896(n+1)-A288581(n))`
-/

namespace A320990.P1544262416849704884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (A063896 (n + 1) - A288581 n).toNat

end

end A320990.P1544262416849704884

/-! ## A320990.P2266135512864789518

`A033045(record[A144287(n+1)*A283683(n+1)])`
-/

namespace A320990.P2266135512864789518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144287 (n + 1) * A283683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A320990.P2266135512864789518

/-!
# A320991: Fibonacci rabbit sequence number n coded in base nine.

The programs for A320991, there is no canonical definition to state claims against.
-/

/-! ## A320991.P10293512359007598012

`A033046(A005203(n))`
-/

namespace A320991.P10293512359007598012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 (A005203 n).toNat

end

end A320991.P10293512359007598012

/-! ## A320991.P2413332891045680257

`A033046(A063896(n+1)-A288581(n))`
-/

namespace A320991.P2413332891045680257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 (A063896 (n + 1) - A288581 n).toNat

end

end A320991.P2413332891045680257

/-! ## A320991.P17632049256564573624

`A033046(record[A144287(n+1)*A283683(n+1)])`
-/

namespace A320991.P17632049256564573624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144287 (n + 1) * A283683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A320991.P17632049256564573624

/-!
# A320992: Expansion of (Product_{k>0} theta_4(q^k)/theta_3(q^k))^(1/2), where theta_3() and theta_4() are the Jacobi theta functions.

The programs for A320992, there is no canonical definition to state claims against.
-/

/-! ## A320992.P15240773191518956748

`(-1)^n*A320078(n)`
-/

namespace A320992.P15240773191518956748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A320078 n

end

end A320992.P15240773191518956748

/-! ## A320992.P10460148940374317651

`A320078(n)/A033999(n)`
-/

namespace A320992.P10460148940374317651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320078 n : ℚ) / (A033999 n : ℚ)

end

end A320992.P10460148940374317651

/-! ## A320992.P11881835234360941382

`A320078(n)/A105812(n+3)`
-/

namespace A320992.P11881835234360941382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320078 n : ℚ) / (A105812 (n + 3) : ℚ)

end

end A320992.P11881835234360941382

/-! ## A320992.P15332824388332288049

`A320078(n)/A055975(A005408(n))`
-/

namespace A320992.P15332824388332288049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320078 n : ℚ) / (A055975 (A005408 n).toNat : ℚ)

end

end A320992.P15332824388332288049

/-! ## A320992.P10499371020167548226

`A320078(n)*A320098(n)/A320968(n)`
-/

namespace A320992.P10499371020167548226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320078 n * A320098 n : ℚ) / (A320968 n : ℚ)

end

end A320992.P10499371020167548226

/-! ## A320992.P6912052209382245508

`A320078(n)/A055975(A055975(n+1)+n)`
-/

namespace A320992.P6912052209382245508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320078 n : ℚ) / (A055975 (A055975 (n + 1) + (n : ℤ)).toNat : ℚ)

end

end A320992.P6912052209382245508

/-!
# A320993: Number of connected self-dual marked graphs on 2n nodes.

The programs for A320993, there is no canonical definition to state claims against.
-/

/-! ## A320993.P4200568075145516023

`A054919(n)+A318590(n)-A054921(n)`
-/

namespace A320993.P4200568075145516023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054919 n + (A318590 n - A054921 n)

end

end A320993.P4200568075145516023

/-! ## A320993.P10938708121321542509

`2*A318590(2*n)-A054921(2*n)`
-/

namespace A320993.P10938708121321542509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A318590 (2 * n) - A054921 (2 * n)

end

end A320993.P10938708121321542509

/-!
# A320996: Extremal values of Euler characteristics of polytopes.

The programs for A320996, there is no canonical definition to state claims against.
-/

/-! ## A320996.P3610873691833262401

`1-C(n, 2*round(n/4))%n!`
-/

namespace A320996.P3610873691833262401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((Nat.choose n (2 * SequenceMachineLib.roundAway ((n : ℚ) / 4)).toNat % Nat.factorial n : ℕ) : ℤ)

end

end A320996.P3610873691833262401

/-! ## A320996.P7791003190197263635

`1-C(n, A208251(n+1))`
-/

namespace A320996.P7791003190197263635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose n (A208251 (n + 1)).toNat : ℤ)

end

end A320996.P7791003190197263635

/-! ## A320996.P18255143513838503003

`1-C(n, A064475(n+5))`
-/

namespace A320996.P18255143513838503003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose n (A064475 (n + 5)).toNat : ℤ)

end

end A320996.P18255143513838503003

/-! ## A320996.P9259830531106797839

`A000034(ceil(2^(n-1)))-C(n, 2*round(n/4))`
-/

namespace A320996.P9259830531106797839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat - (Nat.choose n (2 * SequenceMachineLib.roundAway ((n : ℚ) / 4)).toNat : ℤ)

end

end A320996.P9259830531106797839

/-! ## A320996.P15052491751888676912

`A345999(ceil(2^(n-1)))-C(n, 2*round(n/4))`
-/

namespace A320996.P15052491751888676912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345999 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat - (Nat.choose n (2 * SequenceMachineLib.roundAway ((n : ℚ) / 4)).toNat : ℤ)

end

end A320996.P15052491751888676912

/-!
# A320998: Number of pseudo-square convex polyominoes with semiperimeter n.

The programs for A320998, there is no canonical definition to state claims against.
-/

/-! ## A320998.P17954008323973698404

`2*A045618(n)-A320999(n+6)`
-/

namespace A320998.P17954008323973698404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045618 n - A320999 (n + 6)

end

end A320998.P17954008323973698404

/-! ## A320998.P14245702198250218583

`∑[A036799(n+1)]-A320999(n+6)`
-/

namespace A320998.P14245702198250218583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A320999 (n + 6)

end

end A320998.P14245702198250218583

/-! ## A320998.P18075292426803401820

`A320999(A000079(n+3))-A320999(n+6)`
-/

namespace A320998.P18075292426803401820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320999 (A000079 (n + 3)).toNat - A320999 (n + 6)

end

end A320998.P18075292426803401820

/-!
# A320999: Related to the enumeration of pseudo-square convex polyominoes by semiperimeter.

The programs for A320999, there is no canonical definition to state claims against.
-/

/-! ## A320999.P4289533565893347045

`2*A045618(n)-A320998(n+6)`
-/

namespace A320999.P4289533565893347045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045618 n - A320998 (n + 6)

end

end A320999.P4289533565893347045

/-! ## A320999.P1033236974771148082

`∑[A036799(n+1)]-A320998(n+6)`
-/

namespace A320999.P1033236974771148082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A320998 (n + 6)

end

end A320999.P1033236974771148082

