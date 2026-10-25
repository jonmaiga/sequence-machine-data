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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
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
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B004.C003
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A117000: a(n) = Sum_{d|n} Jacobi(2,d)*d.

The programs for A117000, the canonical program `A117000.P13797727626534501886` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117000 has offset 1).

The definition of A117000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117000.P15077989235866012227

`(-1)^(n+2)*A113418(n+1)`
-/

namespace A117000.P15077989235866012227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 2) * A113418 (n + 1)

end

end A117000.P15077989235866012227

namespace A117000

/-- `(-1)^(n+2)*A113418(n+1)` -/
def P15077989235866012227.Spec : Prop :=
  ∀ n, P15077989235866012227.a n = A117000 (n + 1)

end A117000

/-! ## A117000.P1901727965938570661

`-(A131999(n+1)/2)`
-/

namespace A117000.P1901727965938570661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A131999 (n + 1) : ℚ) / 2)

end

end A117000.P1901727965938570661

namespace A117000

/-- `-(A131999(n+1)/2)` -/
def P1901727965938570661.Spec : Prop :=
  ∀ n, P1901727965938570661.a n = (A117000 (n + 1) : ℚ)

end A117000

/-! ## A117000.P10671846718529624563

`A256357((n+1)/(n+1-and(n, n+1)))`
-/

namespace A117000.P10671846718529624563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256357 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ) : ℚ))).toNat

end

end A117000.P10671846718529624563

namespace A117000

/-- `A256357((n+1)/(n+1-and(n, n+1)))` -/
def P10671846718529624563.Spec : Prop :=
  ∀ n, P10671846718529624563.a n = A117000 (n + 1)

end A117000

/-! ## A117000.P13797727626534501886

`A113417(A025480(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A117000

/-- `A113417(A025480(n))` -/
def P13797727626534501886.Spec : Prop :=
  ∀ n, P13797727626534501886.a n = A117000 (n + 1)

theorem P13797727626534501886.correct : P13797727626534501886.Spec := by
  intro n
  simp only [A117000, Nat.add_sub_cancel]

end A117000

/-! ## A117000.P8664832400592911505

`A113418(A000265(n+1))`
-/

namespace A117000.P8664832400592911505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113418 (A000265 (n + 1)).toNat

end

end A117000.P8664832400592911505

namespace A117000

/-- `A113418(A000265(n+1))` -/
def P8664832400592911505.Spec : Prop :=
  ∀ n, P8664832400592911505.a n = A117000 (n + 1)

end A117000

/-! ## A117000.P6229878851518540850

`A256357(A065883(n+1))`
-/

namespace A117000.P6229878851518540850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256357 (A065883 (n + 1)).toNat

end

end A117000.P6229878851518540850

namespace A117000

/-- `A256357(A065883(n+1))` -/
def P6229878851518540850.Spec : Prop :=
  ∀ n, P6229878851518540850.a n = A117000 (n + 1)

end A117000

/-! ## A117000.P1167986220973724999

`A256357(A259445(n+1))`
-/

namespace A117000.P1167986220973724999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256357 (A259445 (n + 1)).toNat

end

end A117000.P1167986220973724999

namespace A117000

/-- `A256357(A259445(n+1))` -/
def P1167986220973724999.Spec : Prop :=
  ∀ n, P1167986220973724999.a n = A117000 (n + 1)

end A117000

/-! ## A117000.P12164338730592956655

`A117005(n+1)+A117001(n+1)`
-/

namespace A117000.P12164338730592956655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117005 (n + 1) + A117001 (n + 1)

end

end A117000.P12164338730592956655

namespace A117000

/-- `A117005(n+1)+A117001(n+1)` -/
def P12164338730592956655.Spec : Prop :=
  ∀ n, P12164338730592956655.a n = A117000 (n + 1)

end A117000

/-! ## A117000.P17932047336585667899

`∑{d}[n+1, A099894(#-1)*A113418((n+1)/#)]`
-/

namespace A117000.P17932047336585667899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099894 (d - 1) * A113418 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117000.P17932047336585667899

namespace A117000

/-- `∑{d}[n+1, A099894(#-1)*A113418((n+1)/#)]` -/
def P17932047336585667899.Spec : Prop :=
  ∀ n, P17932047336585667899.a n = A117000 (n + 1)

end A117000

/-! ## A117000.P3593009849617970878

`A113418(n+1)/A113416(n)*A131999(n)`
-/

namespace A117000.P3593009849617970878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113418 (n + 1) : ℚ) / (A113416 n : ℚ) * (A131999 n : ℚ)

end

end A117000.P3593009849617970878

namespace A117000

/-- `A113418(n+1)/A113416(n)*A131999(n)` -/
def P3593009849617970878.Spec : Prop :=
  ∀ n, P3593009849617970878.a n = (A117000 (n + 1) : ℚ)

end A117000

/-! ## A117000.P4303210150299496015

`∑{d}[n+1, #*A091337(#)]`
-/

namespace A117000.P4303210150299496015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A091337 d

end

end A117000.P4303210150299496015

namespace A117000

/-- `∑{d}[n+1, #*A091337(#)]` -/
def P4303210150299496015.Spec : Prop :=
  ∀ n, P4303210150299496015.a n = A117000 (n + 1)

end A117000

/-! ## A117000.P5884462312100678298

`A113416(n+1)/A280560(n+2)`
-/

namespace A117000.P5884462312100678298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113416 (n + 1) : ℚ) / (A280560 (n + 2) : ℚ)

end

end A117000.P5884462312100678298

namespace A117000

/-- `A113416(n+1)/A280560(n+2)` -/
def P5884462312100678298.Spec : Prop :=
  ∀ n, P5884462312100678298.a n = (A117000 (n + 1) : ℚ)

end A117000

/-! ## A117000.P4743653936274985251

`A113418(2*(n+1))-A131999(n+1)`
-/

namespace A117000.P4743653936274985251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113418 (2 * (n + 1)) - A131999 (n + 1)

end

end A117000.P4743653936274985251

namespace A117000

/-- `A113418(2*(n+1))-A131999(n+1)` -/
def P4743653936274985251.Spec : Prop :=
  ∀ n, P4743653936274985251.a n = A117000 (n + 1)

end A117000

/-! ## A117000.P5700304688456121519

`A091337(2*n)-A113418(2*n+2)`
-/

namespace A117000.P5700304688456121519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (2 * n) - A113418 (2 * n + 2)

end

end A117000.P5700304688456121519

namespace A117000

/-- `A091337(2*n)-A113418(2*n+2)` -/
def P5700304688456121519.Spec : Prop :=
  ∀ n, P5700304688456121519.a n = A117000 (n + 1)

end A117000

/-! ## A117000.P8929224008115322652

`A131999(∑[n])/A131999(n)`
-/

namespace A117000.P8929224008115322652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131999 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A131999 n : ℚ)

end

end A117000.P8929224008115322652

namespace A117000

/-- `A131999(∑[n])/A131999(n)` -/
def P8929224008115322652.Spec : Prop :=
  ∀ n, P8929224008115322652.a n = (A117000 (n + 1) : ℚ)

end A117000

/-!
# A117001: Sum_{d|n, sqrt(n) < d <= n} Jacobi(2,d)*d - Sum_{d|n, 1 <= d < sqrt(n)} Jacobi(2,d)*d.

The programs for A117001, there is no canonical definition to state claims against.
-/

/-! ## A117001.P12343066001915668670

`A117000(n+1)-A117005(n+1)`
-/

namespace A117001.P12343066001915668670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117000 (n + 1) - A117005 (n + 1)

end

end A117001.P12343066001915668670

/-! ## A117001.P15854877055812823341

`floor(-(A131999(n+1)/2))-A117005(n+1)`
-/

namespace A117001.P15854877055812823341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊-((A131999 (n + 1) : ℚ) / 2)⌋ - A117005 (n + 1)

end

end A117001.P15854877055812823341

/-! ## A117001.P15776266072574178840

`(-1)^n*A113418(n+1)-A117005(n+1)`
-/

namespace A117001.P15776266072574178840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A113418 (n + 1) - A117005 (n + 1)

end

end A117001.P15776266072574178840

/-! ## A117001.P10221711244421054858

`A113417(floor(n/(xor(n, n+1)+1)))-A117005(n+1)`
-/

namespace A117001.P10221711244421054858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113417 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat - A117005 (n + 1)

end

end A117001.P10221711244421054858

/-! ## A117001.P15391356525947403806

`A113418((n+1)/2^val(n+1, 2))-A117005(n+1)`
-/

namespace A117001.P15391356525947403806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113418 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat - A117005 (n + 1)

end

end A117001.P15391356525947403806

/-! ## A117001.P15647578346483772294

`A256357((n+1)/(n+1-and(n, n+1)))-A117005(n+1)`
-/

namespace A117001.P15647578346483772294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256357 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ) : ℚ))).toNat - A117005 (n + 1)

end

end A117001.P15647578346483772294

/-! ## A117001.P15744950761258624822

`A113417(A025480(n))-A117005(n+1)`
-/

namespace A117001.P15744950761258624822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113417 (A025480 n).toNat - A117005 (n + 1)

end

end A117001.P15744950761258624822

/-! ## A117001.P5871643940434204533

`A113418(A000265(n+1))-A117005(n+1)`
-/

namespace A117001.P5871643940434204533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113418 (A000265 (n + 1)).toNat - A117005 (n + 1)

end

end A117001.P5871643940434204533

/-! ## A117001.P12495581474135172045

`∑{d}[n+1, #*A091337(#)]-A117005(n+1)`
-/

namespace A117001.P12495581474135172045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A091337 d - A117005 (n + 1)

end

end A117001.P12495581474135172045

/-! ## A117001.P15092028122390431003

`floor(-(A113416(2*(n+1))/2))-A117005(n+1)`
-/

namespace A117001.P15092028122390431003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊-((A113416 (2 * (n + 1)) : ℚ) / 2)⌋ - A117005 (n + 1)

end

end A117001.P15092028122390431003

/-!
# A117002: a(n) = sigma(n) + 3*A079667(n).

The programs for A117002, the canonical program `A117002.P1582964510362147293` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117002 has offset 1).

The definition of A117002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117002.P1582964510362147293

`∑{d}[n+1, #]+3*∑{d}[n+1, abs(#-(n+1)/#)/2]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117002

/-- `∑{d}[n+1, #]+3*∑{d}[n+1, abs(#-(n+1)/#)/2]` -/
def P1582964510362147293.Spec : Prop :=
  ∀ n, P1582964510362147293.a n = (A117002 (n + 1) : ℚ)

end A117002

/-! ## A117002.P3455559403172168948

`Δ[A160664(n)]+3*A079667(n+1)`
-/

namespace A117002.P3455559403172168948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3 * A079667 (n + 1)

end

end A117002.P3455559403172168948

namespace A117002

/-- `Δ[A160664(n)]+3*A079667(n+1)` -/
def P3455559403172168948.Spec : Prop :=
  ∀ n, P3455559403172168948.a n = A117002 (n + 1)

end A117002

/-! ## A117002.P17524938101499803715

`A117003(n+1)+2*A079667(n+1)`
-/

namespace A117002.P17524938101499803715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117003 (n + 1) + 2 * A079667 (n + 1)

end

end A117002.P17524938101499803715

namespace A117002

/-- `A117003(n+1)+2*A079667(n+1)` -/
def P17524938101499803715.Spec : Prop :=
  ∀ n, P17524938101499803715.a n = A117002 (n + 1)

end A117002

/-! ## A117002.P6800759195163310479

`A000203(n+1)+3*A079667(n+1)`
-/

namespace A117002.P6800759195163310479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + 3 * A079667 (n + 1)

end

end A117002.P6800759195163310479

namespace A117002

/-- `A000203(n+1)+3*A079667(n+1)` -/
def P6800759195163310479.Spec : Prop :=
  ∀ n, P6800759195163310479.a n = A117002 (n + 1)

end A117002

/-! ## A117002.P11708770121114217942

`2*A117003(n+1)-A117004(n+1)`
-/

namespace A117002.P11708770121114217942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117003 (n + 1) - A117004 (n + 1)

end

end A117002.P11708770121114217942

namespace A117002

/-- `2*A117003(n+1)-A117004(n+1)` -/
def P11708770121114217942.Spec : Prop :=
  ∀ n, P11708770121114217942.a n = A117002 (n + 1)

end A117002

/-! ## A117002.P8138378847174390277

`A117004(n+1)+4*A079667(n+1)`
-/

namespace A117002.P8138378847174390277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117004 (n + 1) + 4 * A079667 (n + 1)

end

end A117002.P8138378847174390277

namespace A117002

/-- `A117004(n+1)+4*A079667(n+1)` -/
def P8138378847174390277.Spec : Prop :=
  ∀ n, P8138378847174390277.a n = A117002 (n + 1)

end A117002

/-! ## A117002.P6969205116886791879

`A074400(n+1)/2+3*A079667(n+1)`
-/

namespace A117002.P6969205116886791879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 + (3 * A079667 (n + 1) : ℚ)

end

end A117002.P6969205116886791879

namespace A117002

/-- `A074400(n+1)/2+3*A079667(n+1)` -/
def P6969205116886791879.Spec : Prop :=
  ∀ n, P6969205116886791879.a n = (A117002 (n + 1) : ℚ)

end A117002

/-! ## A117002.P3897578658595811509

`A008585(A079667(n+1))+A000203(n+1)`
-/

namespace A117002.P3897578658595811509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A079667 (n + 1)).toNat + A000203 (n + 1)

end

end A117002.P3897578658595811509

namespace A117002

/-- `A008585(A079667(n+1))+A000203(n+1)` -/
def P3897578658595811509.Spec : Prop :=
  ∀ n, P3897578658595811509.a n = A117002 (n + 1)

end A117002

/-! ## A117002.P14309847537413150760

`A117003(n+1)+A005843(A079667(n+1))`
-/

namespace A117002.P14309847537413150760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117003 (n + 1) + A005843 (A079667 (n + 1)).toNat

end

end A117002.P14309847537413150760

namespace A117002

/-- `A117003(n+1)+A005843(A079667(n+1))` -/
def P14309847537413150760.Spec : Prop :=
  ∀ n, P14309847537413150760.a n = A117002 (n + 1)

end A117002

/-! ## A117002.P16713036175651669210

`A117004(n+1)+A008586(A079667(n+1))`
-/

namespace A117002.P16713036175651669210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117004 (n + 1) + A008586 (A079667 (n + 1)).toNat

end

end A117002.P16713036175651669210

namespace A117002

/-- `A117004(n+1)+A008586(A079667(n+1))` -/
def P16713036175651669210.Spec : Prop :=
  ∀ n, P16713036175651669210.a n = A117002 (n + 1)

end A117002

/-!
# A117003: a(n) = sigma(n) + A079667(n).

The programs for A117003, there is no canonical definition to state claims against.
-/

/-! ## A117003.P5233850585349204543

`A079667(n+1)+∑{d}[n+1, #]`
-/

namespace A117003.P5233850585349204543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079667 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A117003.P5233850585349204543

/-! ## A117003.P8801175288881736699

`A079667(n+1)+Δ[A160664(n)]`
-/

namespace A117003.P8801175288881736699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079667 (n + 1) + (f1 (n + 1) - f1 n)

end

end A117003.P8801175288881736699

/-! ## A117003.P11419267071186223919

`A079667(n+1)+A000203(n+1)`
-/

namespace A117003.P11419267071186223919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079667 (n + 1) + A000203 (n + 1)

end

end A117003.P11419267071186223919

/-! ## A117003.P8965165814387031558

`A238535(n+1)+A070038(n+1)`
-/

namespace A117003.P8965165814387031558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238535 (n + 1) + A070038 (n + 1)

end

end A117003.P8965165814387031558

/-! ## A117003.P11956205799562662058

`A074400(n+1)-A117004(n+1)`
-/

namespace A117003.P11956205799562662058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) - A117004 (n + 1)

end

end A117003.P11956205799562662058

/-! ## A117003.P13018164351447127668

`A117004(n+1)+2*A079667(n+1)`
-/

namespace A117003.P13018164351447127668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117004 (n + 1) + 2 * A079667 (n + 1)

end

end A117003.P13018164351447127668

/-! ## A117003.P14409786397640295793

`A245092(2*n+1)+A079667(n+1)`
-/

namespace A117003.P14409786397640295793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) + A079667 (n + 1)

end

end A117003.P14409786397640295793

/-! ## A117003.P818656821858332035

`2*A000203(n+1)-A117004(n+1)`
-/

namespace A117003.P818656821858332035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (n + 1) - A117004 (n + 1)

end

end A117003.P818656821858332035

/-! ## A117003.P3149201141026154830

`A079667(n+1)+A074400(n+1)/2`
-/

namespace A117003.P3149201141026154830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079667 (n + 1) : ℚ) + (A074400 (n + 1) : ℚ) / 2

end

end A117003.P3149201141026154830

/-! ## A117003.P2963149113816642488

`A117002(n+1)-2*A079667(n+1)`
-/

namespace A117003.P2963149113816642488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117002 (n + 1) - 2 * A079667 (n + 1)

end

end A117003.P2963149113816642488

/-! ## A117003.P2198215869502187076

`A079667(n+1)+A001065(n+1)+n+1`
-/

namespace A117003.P2198215869502187076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079667 (n + 1) + (A001065 (n + 1) + (n + 1 : ℤ))

end

end A117003.P2198215869502187076

/-! ## A117003.P11838300705717331708

`A079667(n+1)+A155085(n+1)-(n+1)`
-/

namespace A117003.P11838300705717331708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079667 (n + 1) + (A155085 (n + 1) - (n + 1 : ℤ))

end

end A117003.P11838300705717331708

/-! ## A117003.P10250655370763591536

`A079667(n+1)+A064987(n+1)/(n+1)`
-/

namespace A117003.P10250655370763591536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079667 (n + 1) : ℚ) + (A064987 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A117003.P10250655370763591536

/-! ## A117003.P17641711801532617094

`∑{d}[n+1, A064948(#)*A178450((n+1)/#)]`
-/

namespace A117003.P17641711801532617094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064948 d * A178450 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117003.P17641711801532617094

/-! ## A117003.P12567979523237381053

`A070038(n+1)+A079667(n+1)+A070039(n+1)`
-/

namespace A117003.P12567979523237381053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070038 (n + 1) + (A079667 (n + 1) + A070039 (n + 1))

end

end A117003.P12567979523237381053

/-! ## A117003.P14146318749946018745

`A000203(n+1)+A070038(n+1)-A066839(n+1)`
-/

namespace A117003.P14146318749946018745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A070038 (n + 1) - A066839 (n + 1))

end

end A117003.P14146318749946018745

/-! ## A117003.P9341290530741888862

`A070038(n+1)+A070038(n+1)-A037213(n+1)`
-/

namespace A117003.P9341290530741888862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070038 (n + 1) + (A070038 (n + 1) - A037213 (n + 1))

end

end A117003.P9341290530741888862

/-! ## A117003.P4385342957347177412

`A060866(n+1)+A079667(n+1)-A037213(n+1)`
-/

namespace A117003.P4385342957347177412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060866 (n + 1) + (A079667 (n + 1) - A037213 (n + 1))

end

end A117003.P4385342957347177412

/-! ## A117003.P11792574828593034194

`∑{d}[n+1, A010052(#)*A118778((n+1)/#)]`
-/

namespace A117003.P11792574828593034194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d * A118778 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117003.P11792574828593034194

/-!
# A117004: a(n) = sigma(n) - A079667(n).

The programs for A117004, there is no canonical definition to state claims against.
-/

/-! ## A117004.P2061719047968379223

`∑{d}[n+1, #]-A079667(n+1)`
-/

namespace A117004.P2061719047968379223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A079667 (n + 1)

end

end A117004.P2061719047968379223

/-! ## A117004.P9658899704843921619

`Δ[A160664(n)]-A079667(n+1)`
-/

namespace A117004.P9658899704843921619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A079667 (n + 1)

end

end A117004.P9658899704843921619

/-! ## A117004.P10175342908732004007

`A070039(n+1)+A066839(n+1)`
-/

namespace A117004.P10175342908732004007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070039 (n + 1) + A066839 (n + 1)

end

end A117004.P10175342908732004007

/-! ## A117004.P4665019715661931704

`A000203(n+1)-A079667(n+1)`
-/

namespace A117004.P4665019715661931704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A079667 (n + 1)

end

end A117004.P4665019715661931704

/-! ## A117004.P16755093565940986569

`A074400(n+1)-A117003(n+1)`
-/

namespace A117004.P16755093565940986569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) - A117003 (n + 1)

end

end A117004.P16755093565940986569

/-! ## A117004.P746456840699622398

`2*A000203(n+1)-A117003(n+1)`
-/

namespace A117004.P746456840699622398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (n + 1) - A117003 (n + 1)

end

end A117004.P746456840699622398

/-! ## A117004.P6417018589609114335

`A117003(n+1)-2*A079667(n+1)`
-/

namespace A117004.P6417018589609114335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117003 (n + 1) - 2 * A079667 (n + 1)

end

end A117004.P6417018589609114335

/-! ## A117004.P162981543720776138

`2*A117003(n+1)-A117002(n+1)`
-/

namespace A117004.P162981543720776138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117003 (n + 1) - A117002 (n + 1)

end

end A117004.P162981543720776138

/-! ## A117004.P6862358759983076774

`A074400(n+1)/2-A079667(n+1)`
-/

namespace A117004.P6862358759983076774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A079667 (n + 1) : ℚ)

end

end A117004.P6862358759983076774

/-! ## A117004.P8829945846747056067

`A001065(n+1)+n+1-A079667(n+1)`
-/

namespace A117004.P8829945846747056067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (n + 1 : ℤ) - A079667 (n + 1)

end

end A117004.P8829945846747056067

/-! ## A117004.P5865914305392510473

`A155085(n+1)-(n+1)-A079667(n+1)`
-/

namespace A117004.P5865914305392510473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (n + 1 : ℤ) - A079667 (n + 1)

end

end A117004.P5865914305392510473

/-! ## A117004.P705430340363016805

`A064987(n+1)/(n+1)-A079667(n+1)`
-/

namespace A117004.P705430340363016805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) - (A079667 (n + 1) : ℚ)

end

end A117004.P705430340363016805

/-! ## A117004.P4098524881173160999

`∑{d}[n+1, A064949(#)*A178450((n+1)/#)]`
-/

namespace A117004.P4098524881173160999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064949 d * A178450 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117004.P4098524881173160999

/-! ## A117004.P7435760209304800407

`A237588(n+1)+(n+1)²-n²-A079667(n+1)`
-/

namespace A117004.P7435760209304800407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + ((n + 1) ^ 2 : ℤ) - (n ^ 2 : ℤ) - A079667 (n + 1)

end

end A117004.P7435760209304800407

/-! ## A117004.P11220609794319026171

`A070039(n+1)+A070039(n+1)+A037213(n+1)`
-/

namespace A117004.P11220609794319026171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070039 (n + 1) + (A070039 (n + 1) + A037213 (n + 1))

end

end A117004.P11220609794319026171

/-! ## A117004.P9590363339828025191

`A000203(n+1)+A066839(n+1)-A070038(n+1)`
-/

namespace A117004.P9590363339828025191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A066839 (n + 1) - A070038 (n + 1))

end

end A117004.P9590363339828025191

/-! ## A117004.P12802858758047627124

`A066839(n+1)+A066839(n+1)-A037213(n+1)`
-/

namespace A117004.P12802858758047627124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066839 (n + 1) + (A066839 (n + 1) - A037213 (n + 1))

end

end A117004.P12802858758047627124

/-! ## A117004.P14401237909028075459

`A060866(n+1)-(A079667(n+1)+A037213(n+1))`
-/

namespace A117004.P14401237909028075459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060866 (n + 1) - (A079667 (n + 1) + A037213 (n + 1))

end

end A117004.P14401237909028075459

/-! ## A117004.P14290249870601327909

`A070038(n+1)+A070039(n+1)-A079667(n+1)`
-/

namespace A117004.P14290249870601327909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070038 (n + 1) + (A070039 (n + 1) - A079667 (n + 1))

end

end A117004.P14290249870601327909

/-! ## A117004.P16065934253538221697

`A117003(n+1)-A005843(A079667(n+1))`
-/

namespace A117004.P16065934253538221697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117003 (n + 1) - A005843 (A079667 (n + 1)).toNat

end

end A117004.P16065934253538221697

/-!
# A117005: a(n) = A117000(n) - A117001(n).

The programs for A117005, there is no canonical definition to state claims against.
-/

/-! ## A117005.P10414312757444271134

`A117000(n+1)-A117001(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117005.P10414312757444271134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117000 (n + 1) - A117001 (n + 1)

end

end A117005.P10414312757444271134

/-! ## A117005.P2028796928956308909

`floor(-(A131999(n+1)/2))-A117001(n+1)`
-/

namespace A117005.P2028796928956308909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊-((A131999 (n + 1) : ℚ) / 2)⌋ - A117001 (n + 1)

end

end A117005.P2028796928956308909

/-! ## A117005.P5106863526131256823

`(-1)^n*A113418(n+1)-A117001(n+1)`
-/

namespace A117005.P5106863526131256823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A113418 (n + 1) - A117001 (n + 1)

end

end A117005.P5106863526131256823

/-! ## A117005.P2225547374425633092

`A113417(floor(n/(xor(n, n+1)+1)))-A117001(n+1)`
-/

namespace A117005.P2225547374425633092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113417 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat - A117001 (n + 1)

end

end A117005.P2225547374425633092

/-! ## A117005.P9570767084456907229

`A113418((n+1)/2^val(n+1, 2))-A117001(n+1)`
-/

namespace A117005.P9570767084456907229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113418 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat - A117001 (n + 1)

end

end A117005.P9570767084456907229

/-! ## A117005.P12965115180143986366

`A256357((n+1)/(n+1-and(n, n+1)))-A117001(n+1)`
-/

namespace A117005.P12965115180143986366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256357 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ) : ℚ))).toNat - A117001 (n + 1)

end

end A117005.P12965115180143986366

/-! ## A117005.P5301743181487920845

`A113417(A025480(n))-A117001(n+1)`
-/

namespace A117005.P5301743181487920845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113417 (A025480 n).toNat - A117001 (n + 1)

end

end A117005.P5301743181487920845

/-! ## A117005.P15804357630621733590

`A113418(A000265(n+1))-A117001(n+1)`
-/

namespace A117005.P15804357630621733590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113418 (A000265 (n + 1)).toNat - A117001 (n + 1)

end

end A117005.P15804357630621733590

/-! ## A117005.P10642430767333562838

`∑{d}[n+1, #*A091337(#)]-A117001(n+1)`
-/

namespace A117005.P10642430767333562838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A091337 d - A117001 (n + 1)

end

end A117005.P10642430767333562838

/-! ## A117005.P6826749221350988392

`floor(-(A113416(2*(n+1))/2))-A117001(n+1)`
-/

namespace A117005.P6826749221350988392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊-((A113416 (2 * (n + 1)) : ℚ) / 2)⌋ - A117001 (n + 1)

end

end A117005.P6826749221350988392

/-!
# A117006: A117000(n) + A117001(n).

The programs for A117006, there is no canonical definition to state claims against.
-/

/-! ## A117006.P17215099808293963536

`A117000(n+1)+A117001(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117006.P17215099808293963536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117000 (n + 1) + A117001 (n + 1)

end

end A117006.P17215099808293963536

/-! ## A117006.P13788976751635860577

`-(A131999(n+1)+A117005(n+1))`
-/

namespace A117006.P13788976751635860577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A131999 (n + 1) + A117005 (n + 1))

end

end A117006.P13788976751635860577

/-! ## A117006.P6694831982464516749

`A117005(n+1)+2*A117001(n+1)`
-/

namespace A117006.P6694831982464516749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117005 (n + 1) + 2 * A117001 (n + 1)

end

end A117006.P6694831982464516749

/-! ## A117006.P1478604912597318956

`A117001(n+1)-A113418(2*(n+1))`
-/

namespace A117006.P1478604912597318956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117001 (n + 1) - A113418 (2 * (n + 1))

end

end A117006.P1478604912597318956

/-! ## A117006.P9341844842455579656

`2*A117000(n+1)-A117005(n+1)`
-/

namespace A117006.P9341844842455579656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117000 (n + 1) - A117005 (n + 1)

end

end A117006.P9341844842455579656

/-! ## A117006.P2067627592828318467

`-(A117005(n+1)+A113416(2*(n+1)))`
-/

namespace A117006.P2067627592828318467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A117005 (n + 1) + A113416 (2 * (n + 1)))

end

end A117006.P2067627592828318467

/-! ## A117006.P2431216195558162257

`A117001(n+1)+floor(-(A131999(n+1)/2))`
-/

namespace A117006.P2431216195558162257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117001 (n + 1) + ⌊-((A131999 (n + 1) : ℚ) / 2)⌋

end

end A117006.P2431216195558162257

/-! ## A117006.P5424506849266604034

`A117001(n+1)+∑{d}[n+1, #*A091337(#)]`
-/

namespace A117006.P5424506849266604034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117001 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A091337 d

end

end A117006.P5424506849266604034

/-! ## A117006.P279760678536789853

`A117001(n+1)+A113417(floor(n/(xor(n, n+1)+1)))`
-/

namespace A117006.P279760678536789853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117001 (n + 1) + A113417 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat

end

end A117006.P279760678536789853

/-! ## A117006.P13903205117915019490

`A117001(n+1)+A113417(A025480(n))`
-/

namespace A117006.P13903205117915019490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117001 (n + 1) + A113417 (A025480 n).toNat

end

end A117006.P13903205117915019490

/-!
# A117007: A117000(8*n-1) - A117001(8*n-1).

The programs for A117007, there is no canonical definition to state claims against.
-/

/-! ## A117007.P9302231996297120930

`A117000(8*(n+1)-1)-A117001(8*(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117007.P9302231996297120930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117000 (8 * (n + 1) - 1) - A117001 (8 * (n + 1) - 1)

end

end A117007.P9302231996297120930

/-! ## A117007.P8168976830889719902

`2*A117008(n+1)`
-/

namespace A117007.P8168976830889719902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117008 (n + 1)

end

end A117007.P8168976830889719902

/-! ## A117007.P16633275852471667108

`A117005(A004771(n))`
-/

namespace A117007.P16633275852471667108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117005 (A004771 n).toNat

end

end A117007.P16633275852471667108

/-! ## A117007.P13403081839368249537

`A117005(A133655(n+1))`
-/

namespace A117007.P13403081839368249537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117005 (A133655 (n + 1)).toNat

end

end A117007.P13403081839368249537

/-! ## A117007.P12501228754361324511

`A117008(A000027(n+1))/(1-1/2)`
-/

namespace A117007.P12501228754361324511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117008 (A000027 (n + 1)).toNat : ℚ) / (1 - (1 : ℚ) / 2)

end

end A117007.P12501228754361324511

/-! ## A117007.P3411862922705634243

`2/(A117008(n+1)%A004771(n))^-1`
-/

namespace A117007.P3411862922705634243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (Int.tmod (A117008 (n + 1)) (A004771 n) : ℚ) ^ (-1 : ℤ)

end

end A117007.P3411862922705634243

/-! ## A117007.P17328864421271598224

`(A117008(n+1)/(1-1/2))%A033173(n+1)`
-/

namespace A117007.P17328864421271598224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A117008 (n + 1) : ℚ) / (1 - (1 : ℚ) / 2))) (A033173 (n + 1))

end

end A117007.P17328864421271598224

/-! ## A117007.P3440951382334272359

`A117008(A000027(n+1))+A117008(n+1)`
-/

namespace A117007.P3440951382334272359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117008 (A000027 (n + 1)).toNat + A117008 (n + 1)

end

end A117007.P3440951382334272359

/-! ## A117007.P7846293773425873155

`A117008(n+1)+A117008(A239700(n+1)+n)`
-/

namespace A117007.P7846293773425873155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117008 (n + 1) + A117008 (A239700 (n + 1) + (n : ℤ)).toNat

end

end A117007.P7846293773425873155

/-!
# A117008: (A117000(8*n-1) - A117001(8*n-1))/2.

The programs for A117008, there is no canonical definition to state claims against.
-/

/-! ## A117008.P10842916230604277496

`(A117000(8*(n+1)-1)-A117001(8*(n+1)-1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117008.P10842916230604277496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117000 (8 * (n + 1) - 1) - A117001 (8 * (n + 1) - 1) : ℚ) / 2

end

end A117008.P10842916230604277496

/-! ## A117008.P15176015851785836789

`A117007(n+1)/2`
-/

namespace A117008.P15176015851785836789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117007 (n + 1) : ℚ) / 2

end

end A117008.P15176015851785836789

/-! ## A117008.P5319470845887316311

`2^A008683(A000040(n+1))*A117007(n+1)`
-/

namespace A117008.P5319470845887316311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A000040 (n + 1)).toNat : ℤ) * (A117007 (n + 1) : ℚ)

end

end A117008.P5319470845887316311

/-! ## A117008.P1284298327164185356

`2^A008683(A006450(n+1))*A117007(n+1)`
-/

namespace A117008.P1284298327164185356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A006450 (n + 1)).toNat : ℤ) * (A117007 (n + 1) : ℚ)

end

end A117008.P1284298327164185356

/-! ## A117008.P9984467226628440320

`2^A008683(A045415(n+1))*A117007(n+1)`
-/

namespace A117008.P9984467226628440320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A045415 (n + 1)).toNat : ℤ) * (A117007 (n + 1) : ℚ)

end

end A117008.P9984467226628440320

/-! ## A117008.P9530117540912183362

`2^A008683(A073102(n+1))*A117007(n+1)`
-/

namespace A117008.P9530117540912183362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A073102 (n + 1)).toNat : ℤ) * (A117007 (n + 1) : ℚ)

end

end A117008.P9530117540912183362

/-! ## A117008.P11895075314570900188

`2^A008683(A089721(n+1))*A117007(n+1)`
-/

namespace A117008.P11895075314570900188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A089721 (n + 1)).toNat : ℤ) * (A117007 (n + 1) : ℚ)

end

end A117008.P11895075314570900188

/-! ## A117008.P15230733254835005181

`2^A008683(A141854(n+1))*A117007(n+1)`
-/

namespace A117008.P15230733254835005181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A141854 (n + 1)).toNat : ℤ) * (A117007 (n + 1) : ℚ)

end

end A117008.P15230733254835005181

/-! ## A117008.P16425976926697652159

`2^A008683(A151800(2*n+1))*A117007(n+1)`
-/

namespace A117008.P16425976926697652159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A151800 (2 * n + 1)).toNat : ℤ) * (A117007 (n + 1) : ℚ)

end

end A117008.P16425976926697652159

/-! ## A117008.P2071152412963669178

`2^A008683(A257244(2*(n+1)))*A117007(n+1)`
-/

namespace A117008.P2071152412963669178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A257244 (2 * (n + 1))).toNat : ℤ) * (A117007 (n + 1) : ℚ)

end

end A117008.P2071152412963669178

/-!
# A117009: A117000(8*n+1) + A117001(8*n-1).

The programs for A117009, there is no canonical definition to state claims against.
-/

/-! ## A117009.P678129187434541353

`A117005(8*n+1)`
-/

namespace A117009.P678129187434541353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117005 (8 * n + 1)

end

end A117009.P678129187434541353

/-! ## A117009.P14756778552133776952

`or(A000007(n), A117005(A017077(n)))`
-/

namespace A117009.P14756778552133776952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A117005 (A017077 n).toNat)

end

end A117009.P14756778552133776952

/-! ## A117009.P11029408059007103605

`A000007(n)+A117005(A017077(n))%A250120(n)`
-/

namespace A117009.P11029408059007103605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + Int.tmod (A117005 (A017077 n).toNat) (A250120 n)

end

end A117009.P11029408059007103605

/-!
# A117010: a(n) = A126098(n) - 1.

The programs for A117010, there is no canonical definition to state claims against.
-/

/-! ## A117010.P8928991708182134375

`A126098(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117010.P8928991708182134375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126098 (n + 1) - 1

end

end A117010.P8928991708182134375

/-! ## A117010.P8676716309012704491

`record[Δ[A126098(A158416(n))]]`
-/

namespace A117010.P8676716309012704491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126098 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117010.P8676716309012704491

/-! ## A117010.P17047065239359071162

`A260196(n+2)+A126098(n+1)`
-/

namespace A117010.P17047065239359071162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A126098 (n + 1)

end

end A117010.P17047065239359071162

/-! ## A117010.P9982085884297469376

`A209615(A134965(n+1))+A126098(n+1)`
-/

namespace A117010.P9982085884297469376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (A134965 (n + 1)).toNat + A126098 (n + 1)

end

end A117010.P9982085884297469376

/-! ## A117010.P13466322796621073937

`sqrt(A136404(n+1))-1`
-/

namespace A117010.P13466322796621073937
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A136404 (n + 1) : ℝ) - 1

end

end A117010.P13466322796621073937

/-! ## A117010.P1286447262931580536

`A033999(2*n+1)+sqrt(A136404(n+1))`
-/

namespace A117010.P1286447262931580536
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A033999 (2 * n + 1) : ℝ) + Real.sqrt (A136404 (n + 1) : ℝ)

end

end A117010.P1286447262931580536

/-! ## A117010.P3888928428794962031

`A165326(A108605(n+1))+A126098(n+1)`
-/

namespace A117010.P3888928428794962031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (A108605 (n + 1)).toNat + A126098 (n + 1)

end

end A117010.P3888928428794962031

/-! ## A117010.P2909145981645656069

`A072828(2*n+1)%A126098(n+1)`
-/

namespace A117010.P2909145981645656069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (2 * n + 1)) (A126098 (n + 1))

end

end A117010.P2909145981645656069

/-!
# A117012: Primes of the form k^2+5*k+c (k>=0), where c=3 for even k and c=-3 for odd k.

The programs for A117012, the canonical program `A117012.P9702005270601097127` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117012 has offset 1).

The definition of A117012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117012.P5988792143942402464

`p?[(n+3)²-6-n*round(sin(n%6))]`
-/

namespace A117012.P5988792143942402464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) - 6 - (n : ℤ) * SequenceMachineLib.roundAway (Real.sin ((n % 6 : ℕ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117012.P5988792143942402464

namespace A117012

/-- `p?[(n+3)²-6-n*round(sin(n%6))]` -/
def P5988792143942402464.Spec : Prop :=
  ∀ n, P5988792143942402464.a n = A117012 (n + 1)

end A117012

/-! ## A117012.P9702005270601097127

`p?[A028557(n+1)-3*(-1)^n]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A117012

/-- `p?[A028557(n+1)-3*(-1)^n]` -/
def P9702005270601097127.Spec : Prop :=
  ∀ n, P9702005270601097127.a n = A117012 (n + 1)

theorem P9702005270601097127.correct : P9702005270601097127.Spec := by
  intro n
  simp only [A117012, Nat.add_sub_cancel]

end A117012

/-! ## A117012.P4143276962677329888

`p?[A028878(n)-A100050(n)]`
-/

namespace A117012.P4143276962677329888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028878 n - A100050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117012.P4143276962677329888

namespace A117012

/-- `p?[A028878(n)-A100050(n)]` -/
def P4143276962677329888.Spec : Prop :=
  ∀ n, P4143276962677329888.a n = A117012 (n + 1)

end A117012

/-! ## A117012.P9669636690211463213

`p?[A104675(n)-A174971(n)]`
-/

namespace A117012.P9669636690211463213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104675 n - A174971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117012.P9669636690211463213

namespace A117012

/-- `p?[A104675(n)-A174971(n)]` -/
def P9669636690211463213.Spec : Prop :=
  ∀ n, P9669636690211463213.a n = A117012 (n + 1)

end A117012

/-! ## A117012.P6740959183786561539

`p?[A028878(n)-A325692(n)]`
-/

namespace A117012.P6740959183786561539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028878 n - A325692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117012.P6740959183786561539

namespace A117012

/-- `p?[A028878(n)-A325692(n)]` -/
def P6740959183786561539.Spec : Prop :=
  ∀ n, P6740959183786561539.a n = A117012 (n + 1)

end A117012

/-!
# A117013: Decimal expansion of (sine of 1 radian)^2.

The programs for A117013, there is no canonical definition to state claims against.
-/

/-! ## A117013.P3278833094038039555

`9-A117033(n)`
-/

namespace A117013.P3278833094038039555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A117033 n

end

end A117013.P3278833094038039555

/-!
# A117027: Determinants of 2 X 2 matrices of non-overlapping blocks of 4 consecutive primes.

The programs for A117027, the canonical program `A117027.P12689404551430193321` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117027 has offset 1).

The definition of A117027 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117027.P12689404551430193321

`A117301(4*n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A117027

/-- `A117301(4*n+1)` -/
def P12689404551430193321.Spec : Prop :=
  ∀ n, P12689404551430193321.a n = A117027 (n + 1)

theorem P12689404551430193321.correct : P12689404551430193321.Spec := by
  intro n
  simp only [A117027, Nat.add_sub_cancel]

end A117027

/-! ## A117027.P10991253108089038052

`A224782(C(2, n))+A117301(A016813(n))`
-/

namespace A117027.P10991253108089038052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224782 (Nat.choose 2 n) + A117301 (A016813 n).toNat

end

end A117027.P10991253108089038052

namespace A117027

/-- `A224782(C(2, n))+A117301(A016813(n))` -/
def P10991253108089038052.Spec : Prop :=
  ∀ n, P10991253108089038052.a n = A117027 (n + 1)

end A117027

/-! ## A117027.P3350652104568641127

`A117301(A016813(n))*A181855(C(2, n))`
-/

namespace A117027.P3350652104568641127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117301 (A016813 n).toNat * A181855 (Nat.choose 2 n)

end

end A117027.P3350652104568641127

namespace A117027

/-- `A117301(A016813(n))*A181855(C(2, n))` -/
def P3350652104568641127.Spec : Prop :=
  ∀ n, P3350652104568641127.a n = A117027 (n + 1)

end A117027

/-! ## A117027.P12886062020393077006

`A224782(A010553(n+1))+A117301(A016813(n))`
-/

namespace A117027.P12886062020393077006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224782 (A010553 (n + 1)).toNat + A117301 (A016813 n).toNat

end

end A117027.P12886062020393077006

namespace A117027

/-- `A224782(A010553(n+1))+A117301(A016813(n))` -/
def P12886062020393077006.Spec : Prop :=
  ∀ n, P12886062020393077006.a n = A117027 (n + 1)

end A117027

/-! ## A117027.P14588239027538048431

`A117301(A016813(n))%A105094(n)`
-/

namespace A117027.P14588239027538048431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117301 (A016813 n).toNat) (A105094 n)

end

end A117027.P14588239027538048431

namespace A117027

/-- `A117301(A016813(n))%A105094(n)` -/
def P14588239027538048431.Spec : Prop :=
  ∀ n, P14588239027538048431.a n = A117027 (n + 1)

end A117027

/-!
# A117030: a(1) = a(2) = 1; a(n) = a(n-1)*a(n-2) - a(n-3) - a(n-4) - ... - a(1) for n>2.

The programs for A117030, there is no canonical definition to state claims against.
-/

/-! ## A117030.P1719430514227317383

`(a(n-2)+1)*(a(n-1)-a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A117030.P1719430514227317383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (a (n - 2) + 1) * (a (n - 1) - a (n - 3))

end

end A117030.P1719430514227317383

/-!
# A117033: Decimal expansion of (cos 1)^2.

The programs for A117033, there is no canonical definition to state claims against.
-/

/-! ## A117033.P5947448483457894783

`9-A117013(n)`
-/

namespace A117033.P5947448483457894783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A117013 n

end

end A117033.P5947448483457894783

/-!
# A117045: Integers k (not perfect squares) such that the continued fraction expansion of the square root of k has period at most 2.

The programs for A117045, there is no canonical definition to state claims against.
-/

/-! ## A117045.P17097572331609192658

`A320773(comp[∑[4*(3^n-1)]])`
-/

namespace A117045.P17097572331609192658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((3 ^ n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320773 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A117045.P17097572331609192658

/-! ## A117045.P4314623430292837299

`∩[A183224(n+1), A320773(n+1)]`
-/

namespace A117045.P4314623430292837299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117045.P4314623430292837299

/-! ## A117045.P3724402504526738594

`record[A320773(n+1)%A007318(A320772(n+1))]`
-/

namespace A117045.P3724402504526738594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320773 (n + 1)) (A007318 (A320772 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117045.P3724402504526738594

/-! ## A117045.P10844714884250349662

`∑[A001176(A284086(n)+2)]`
-/

namespace A117045.P10844714884250349662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (A284086 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117045.P10844714884250349662

/-!
# A117046: Number of letters in common in the Spanish names for n and n+1.

The programs for A117046, there is no canonical definition to state claims against.
-/

/-! ## A117046.P3469183267142824698

`Δ[A153453(n)]-A117114(n)`
-/

namespace A117046.P3469183267142824698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A117114 n

end

end A117046.P3469183267142824698

/-!
# A117047: Primes of the form 60*k + 11.

The programs for A117047, the canonical program `A117047.P12714779244650753106` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117047 has offset 1).

The definition of A117047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4916 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117047.P6343577690636201553

`∩[A030430(n+1), A141302(n+1)]`
-/

namespace A117047.P6343577690636201553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117047.P6343577690636201553

namespace A117047

/-- `∩[A030430(n+1), A141302(n+1)]` -/
def P6343577690636201553.Spec : Prop :=
  ∀ n, (P6343577690636201553.a n : ℤ) = A117047 (n + 1)

end A117047

/-! ## A117047.P14660113070291426975

`∩[A141302(n+1), A141884(n+1)]`
-/

namespace A117047.P14660113070291426975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117047.P14660113070291426975

namespace A117047

/-- `∩[A141302(n+1), A141884(n+1)]` -/
def P14660113070291426975.Spec : Prop :=
  ∀ n, (P14660113070291426975.a n : ℤ) = A117047 (n + 1)

end A117047

/-! ## A117047.P12714779244650753106

`p?[6*10*n+11]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117047

/-- `p?[6*10*n+11]` -/
def P12714779244650753106.Spec : Prop :=
  ∀ n, (P12714779244650753106.a n : ℤ) = A117047 (n + 1)

theorem P12714779244650753106.correct : P12714779244650753106.Spec := by
  intro n
  simp only [A117047, Nat.add_sub_cancel]

end A117047

/-! ## A117047.P12523151071005130590

`∩[A030430(n+1), A068231(n+1)]`
-/

namespace A117047.P12523151071005130590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117047.P12523151071005130590

namespace A117047

/-- `∩[A030430(n+1), A068231(n+1)]` -/
def P12523151071005130590.Spec : Prop :=
  ∀ n, (P12523151071005130590.a n : ℤ) = A117047 (n + 1)

end A117047

/-! ## A117047.P17614722012816936043

`∩[A045453(n+1), A068231(n+1)]`
-/

namespace A117047.P17614722012816936043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117047.P17614722012816936043

namespace A117047

/-- `∩[A045453(n+1), A068231(n+1)]` -/
def P17614722012816936043.Spec : Prop :=
  ∀ n, (P17614722012816936043.a n : ℤ) = A117047 (n + 1)

end A117047

/-! ## A117047.P11118740643350775456

`∩[A030430(n+1), A141187(n+1)]`
-/

namespace A117047.P11118740643350775456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117047.P11118740643350775456

namespace A117047

/-- `∩[A030430(n+1), A141187(n+1)]` -/
def P11118740643350775456.Spec : Prop :=
  ∀ n, (P11118740643350775456.a n : ℤ) = A117047 (n + 1)

end A117047

/-! ## A117047.P17541715381899697953

`∩[A045453(n+1), A141187(n+1)]`
-/

namespace A117047.P17541715381899697953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117047.P17541715381899697953

namespace A117047

/-- `∩[A045453(n+1), A141187(n+1)]` -/
def P17541715381899697953.Spec : Prop :=
  ∀ n, (P17541715381899697953.a n : ℤ) = A117047 (n + 1)

end A117047

/-! ## A117047.P2504070874345284741

`∩[A068231(n+1), A140506(n+1)]`
-/

namespace A117047.P2504070874345284741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117047.P2504070874345284741

namespace A117047

/-- `∩[A068231(n+1), A140506(n+1)]` -/
def P2504070874345284741.Spec : Prop :=
  ∀ n, (P2504070874345284741.a n : ℤ) = A117047 (n + 1)

end A117047

/-! ## A117047.P1892737983475100720

`∩[A141884(n+1), A141187(n+1)]`
-/

namespace A117047.P1892737983475100720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117047.P1892737983475100720

namespace A117047

/-- `∩[A141884(n+1), A141187(n+1)]` -/
def P1892737983475100720.Spec : Prop :=
  ∀ n, (P1892737983475100720.a n : ℤ) = A117047 (n + 1)

end A117047

/-! ## A117047.P8130906308195963422

`∩[A030430(n+1), A141123(n+1)]`
-/

namespace A117047.P8130906308195963422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117047.P8130906308195963422

namespace A117047

/-- `∩[A030430(n+1), A141123(n+1)]` -/
def P8130906308195963422.Spec : Prop :=
  ∀ n, (P8130906308195963422.a n : ℤ) = A117047 (n + 1)

end A117047

/-! ## A117047.P1951291881381039306

`∩[A045453(n+1), A141123(n+1)]`
-/

namespace A117047.P1951291881381039306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117047.P1951291881381039306

namespace A117047

/-- `∩[A045453(n+1), A141123(n+1)]` -/
def P1951291881381039306.Spec : Prop :=
  ∀ n, (P1951291881381039306.a n : ℤ) = A117047 (n + 1)

end A117047

/-! ## A117047.P13497585510304713910

`∩[A132238(n+1), A141884(n+1)]`
-/

namespace A117047.P13497585510304713910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117047.P13497585510304713910

namespace A117047

/-- `∩[A132238(n+1), A141884(n+1)]` -/
def P13497585510304713910.Spec : Prop :=
  ∀ n, (P13497585510304713910.a n : ℤ) = A117047 (n + 1)

end A117047

/-! ## A117047.P11989654309903459586

`∩[A068231(n+1), A090756(n+1)]`
-/

namespace A117047.P11989654309903459586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117047.P11989654309903459586

namespace A117047

/-- `∩[A068231(n+1), A090756(n+1)]` -/
def P11989654309903459586.Spec : Prop :=
  ∀ n, (P11989654309903459586.a n : ℤ) = A117047 (n + 1)

end A117047

/-! ## A117047.P5767434235343848692

`∩[A090756(n+1), A141187(n+1)]`
-/

namespace A117047.P5767434235343848692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117047.P5767434235343848692

namespace A117047

/-- `∩[A090756(n+1), A141187(n+1)]` -/
def P5767434235343848692.Spec : Prop :=
  ∀ n, (P5767434235343848692.a n : ℤ) = A117047 (n + 1)

end A117047

/-! ## A117047.P8244546215394752410

`∩[A363215(n+1), A132232(n+1)]`
-/

namespace A117047.P8244546215394752410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117047.P8244546215394752410

namespace A117047

/-- `∩[A363215(n+1), A132232(n+1)]` -/
def P8244546215394752410.Spec : Prop :=
  ∀ n, (P8244546215394752410.a n : ℤ) = A117047 (n + 1)

end A117047

/-! ## A117047.P830078197102647639

`∩[A004615(n+1), A068231(n+1)]`
-/

namespace A117047.P830078197102647639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117047.P830078197102647639

namespace A117047

/-- `∩[A004615(n+1), A068231(n+1)]` -/
def P830078197102647639.Spec : Prop :=
  ∀ n, (P830078197102647639.a n : ℤ) = A117047 (n + 1)

end A117047

/-! ## A117047.P8250395552013908230

`∩[A004615(n+1), A141123(n+1)]`
-/

namespace A117047.P8250395552013908230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117047.P8250395552013908230

namespace A117047

/-- `∩[A004615(n+1), A141123(n+1)]` -/
def P8250395552013908230.Spec : Prop :=
  ∀ n, (P8250395552013908230.a n : ℤ) = A117047 (n + 1)

end A117047

/-! ## A117047.P4712496453571517656

`∩[A004615(n+1), A141187(n+1)]`
-/

namespace A117047.P4712496453571517656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117047.P4712496453571517656

namespace A117047

/-- `∩[A004615(n+1), A141187(n+1)]` -/
def P4712496453571517656.Spec : Prop :=
  ∀ n, (P4712496453571517656.a n : ℤ) = A117047 (n + 1)

end A117047

/-! ## A117047.P10812707890864687940

`∩[A004615(n+1), A141302(n+1)]`
-/

namespace A117047.P10812707890864687940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117047.P10812707890864687940

namespace A117047

/-- `∩[A004615(n+1), A141302(n+1)]` -/
def P10812707890864687940.Spec : Prop :=
  ∀ n, (P10812707890864687940.a n : ℤ) = A117047 (n + 1)

end A117047

/-! ## A117047.P9113763057405400526

`∩[A030430(n+1), A332516(n+1)]`
-/

namespace A117047.P9113763057405400526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117047.P9113763057405400526

namespace A117047

/-- `∩[A030430(n+1), A332516(n+1)]` -/
def P9113763057405400526.Spec : Prop :=
  ∀ n, (P9113763057405400526.a n : ℤ) = A117047 (n + 1)

end A117047

/-!
# A117048: Prime numbers that are expressible as the sum of two positive triangular numbers.

The programs for A117048, there is no canonical definition to state claims against.
-/

/-! ## A117048.P11597644630268098438

`A117112(A065475(n+1))`
-/

namespace A117048.P11597644630268098438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117112 (A065475 (n + 1)).toNat

end

end A117048.P11597644630268098438

/-! ## A117048.P17774829529136359445

`A117112(A181440(n+2))`
-/

namespace A117048.P17774829529136359445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117112 (A181440 (n + 2)).toNat

end

end A117048.P17774829529136359445

/-! ## A117048.P14139333217179181410

`A117112(A184985(n+2))`
-/

namespace A117048.P14139333217179181410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117112 (A184985 (n + 2)).toNat

end

end A117048.P14139333217179181410

/-! ## A117048.P18188422408490187414

`A129950(2*(n+1))+A117112(n+2)`
-/

namespace A117048.P18188422408490187414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129950 (2 * (n + 1)) + A117112 (n + 2)

end

end A117048.P18188422408490187414

/-! ## A117048.P5959461459792435350

`A117112(n+2-A109578(2*n+1))`
-/

namespace A117048.P5959461459792435350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117112 ((n + 2 : ℤ) - A109578 (2 * n + 1)).toNat

end

end A117048.P5959461459792435350

/-! ## A117048.P4412516239393371599

`A117112(A105560(A105560(n+1))+n)`
-/

namespace A117048.P4412516239393371599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117112 (A105560 (A105560 (n + 1)).toNat + (n : ℤ)).toNat

end

end A117048.P4412516239393371599

/-! ## A117048.P8328431597809118776

`A117112(A352894(2*n+1)+n+1)`
-/

namespace A117048.P8328431597809118776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117112 (A352894 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A117048.P8328431597809118776

/-! ## A117048.P2413319436485937321

`∩[A045344(n+1), A117112(n+1)]`
-/

namespace A117048.P2413319436485937321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117048.P2413319436485937321

/-! ## A117048.P12247810843729462707

`∩[A117112(n+1), A335402(n+1)]`
-/

namespace A117048.P12247810843729462707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117048.P12247810843729462707

/-! ## A117048.P9800956839901210229

`∩[A067934(n+1), A117112(n+1)]`
-/

namespace A117048.P9800956839901210229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117048.P9800956839901210229

/-! ## A117048.P3516055825740403627

`filter[A117112(n+1), A014578(#)]`
-/

namespace A117048.P3516055825740403627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A117048.P3516055825740403627

/-! ## A117048.P9100323184045349637

`filter[A117112(n+1), A356162(#)]`
-/

namespace A117048.P9100323184045349637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356162 (f1 j).toNat = 1) n)

end

end A117048.P9100323184045349637

/-! ## A117048.P12181374182572398350

`filter[A117112(n+1), A359172(#)]`
-/

namespace A117048.P12181374182572398350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359172 (f1 j).toNat = 1) n)

end

end A117048.P12181374182572398350

/-! ## A117048.P12429752080383001664

`filter[A117112(n+1), A359374(#)]`
-/

namespace A117048.P12429752080383001664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A117048.P12429752080383001664

/-! ## A117048.P6536983265299156685

`filter[A117112(n+1), A359377(#)]`
-/

namespace A117048.P6536983265299156685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A117048.P6536983265299156685

/-! ## A117048.P654666823017791875

`filter[A117112(n+1), A361022(#)]`
-/

namespace A117048.P654666823017791875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361022 (f1 j).toNat = 1) n)

end

end A117048.P654666823017791875

/-! ## A117048.P5419412447464970774

`∩[A026480(n+1), A117112(n+1)]`
-/

namespace A117048.P5419412447464970774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117048.P5419412447464970774

/-! ## A117048.P5749298134519024251

`∩[A117112(n+1), A163578(n+1)]`
-/

namespace A117048.P5749298134519024251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117048.P5749298134519024251

/-! ## A117048.P15772997185127366145

`∩[A117112(n+1), A177512(n+1)]`
-/

namespace A117048.P15772997185127366145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117048.P15772997185127366145

/-! ## A117048.P14469028264217603728

`filter[A117112(n+1), A323511(#)]`
-/

namespace A117048.P14469028264217603728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323511 (f1 j).toNat = 1) n)

end

end A117048.P14469028264217603728

/-!
# A117049: Primes of the form 22*(n^2)+1.

The programs for A117049, there is no canonical definition to state claims against.
-/

/-! ## A117049.P11290184307425425372

`∩[A141849(n+1), A158537(n)]`
-/

namespace A117049.P11290184307425425372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158537 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117049.P11290184307425425372

/-! ## A117049.P12896367877561245165

`p?[22*n²+1]`
-/

namespace A117049.P12896367877561245165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 * n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A117049.P12896367877561245165

/-! ## A117049.P3710911096898608814

`or(1, p?[or(1, 22*n²)])`
-/

namespace A117049.P3710911096898608814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (22 * n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A117049.P3710911096898608814

/-! ## A117049.P9379132705049352163

`∩[A215163(n+1), A158537(n)]`
-/

namespace A117049.P9379132705049352163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158537 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117049.P9379132705049352163

/-! ## A117049.P3562934055987694534

`∩[A215390(n+1), A158537(n)]`
-/

namespace A117049.P3562934055987694534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158537 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117049.P3562934055987694534

/-! ## A117049.P2481631617502067110

`∩[A352494(n+1), A158537(n)]`
-/

namespace A117049.P2481631617502067110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158537 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117049.P2481631617502067110

/-! ## A117049.P5509615108213551445

`∩[A033216(n+1), A158537(n)]`
-/

namespace A117049.P5509615108213551445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158537 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117049.P5509615108213551445

/-!
# A117051: Enneagonal numbers whose sum of digits is also enneagonal.

The programs for A117051, there is no canonical definition to state claims against.
-/

/-! ## A117051.P12168622618672447837

`A001106(eq[A003056(n), A330101(n)])`
-/

namespace A117051.P12168622618672447837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A117051.P12168622618672447837

/-!
# A117052: Enneagonal numbers for which the product of the digits is also an enneagonal number.

The programs for A117052, there is no canonical definition to state claims against.
-/

/-! ## A117052.P4278949622896886386

`A001106(round(A287684(3*n+4)/(A308306(n+1)+1)+n))`
-/

namespace A117052.P4278949622896886386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (SequenceMachineLib.roundAway ((A287684 (3 * n + 4) : ℚ) / (A308306 (n + 1) + 1 : ℚ) + (n : ℚ))).toNat

end

end A117052.P4278949622896886386

/-! ## A117052.P2071129354260697488

`A001106(lt[Δ[n*floor(n/2)], 5])`
-/

namespace A117052.P2071129354260697488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n)

end

end A117052.P2071129354260697488

/-!
# A117053: Enneagonal numbers for which both the sum of the digits and the product of the digits are also enneagonal numbers.

The programs for A117053, there is no canonical definition to state claims against.
-/

/-! ## A117053.P6265978612383393909

`∩[A117051(n+1), A117052(n+1)]`
-/

namespace A117053.P6265978612383393909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117053.P6265978612383393909

/-!
# A117054: Number of ordered ways of writing n = i + j, where i is a prime and j is of the form k*(k+1), k > 0.

The programs for A117054, there is no canonical definition to state claims against.
-/

/-! ## A117054.P10562207185856693233

`A000051(n)%A085035(A133041(n))`
-/

namespace A117054.P10562207185856693233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000051 n) (A085035 (A133041 n).toNat)

end

end A117054.P10562207185856693233

/-! ## A117054.P11210204147595404645

`C(A061358(n+2), A000002(A365063(n+1)))`
-/

namespace A117054.P11210204147595404645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A061358 (n + 2)).toNat (A000002 (A365063 (n + 1)).toNat).toNat

end

end A117054.P11210204147595404645

/-! ## A117054.P14575337202274381267

`A345388(∑[A317239(n)])`
-/

namespace A117054.P14575337202274381267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345388 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A117054.P14575337202274381267

/-! ## A117054.P13834506335834867256

`A303163(A195865(n))%3`
-/

namespace A117054.P13834506335834867256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303163 (A195865 n).toNat) 3

end

end A117054.P13834506335834867256

/-! ## A117054.P10553060051772823486

`A005136(and(A227362(n), A315609(n)))`
-/

namespace A117054.P10553060051772823486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (Int.land (A227362 n) (A315609 n)).toNat

end

end A117054.P10553060051772823486

/-!
# A117055: Palindromes for which the product of the digits is also a palindrome.

The programs for A117055, there is no canonical definition to state claims against.
-/

/-! ## A117055.P474836065866798507

`∩[A002113(n+1), A090273(n+1)]`
-/

namespace A117055.P474836065866798507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117055.P474836065866798507

/-! ## A117055.P2239036107767824924

`filter[A090273(n+1), A136522(#)]`
-/

namespace A117055.P2239036107767824924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A117055.P2239036107767824924

/-! ## A117055.P9079416077017546959

`eq[A256756(A007954(n)), A256756(n)]`
-/

namespace A117055.P9079416077017546959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117055.P9079416077017546959

/-! ## A117055.P5013655410561468566

`eq[A056965(n), A308859(A007954(n))]`
-/

namespace A117055.P5013655410561468566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308859 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117055.P5013655410561468566

/-! ## A117055.P6267960836806988667

`A117056(n+1)%A201069(n+1)`
-/

namespace A117055.P6267960836806988667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117056 (n + 1)) (A201069 (n + 1))

end

end A117055.P6267960836806988667

/-!
# A117056: Palindromes for which both the sum of the digits and the product of the digits are also palindromes.

The programs for A117056, there is no canonical definition to state claims against.
-/

/-! ## A117056.P6431557015009081137

`∩[A082208(n+1), A117055(n+1)]`
-/

namespace A117056.P6431557015009081137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117056.P6431557015009081137

/-! ## A117056.P5462954729578387114

`∩[A082208(n+1), A090273(n+1)]`
-/

namespace A117056.P5462954729578387114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117056.P5462954729578387114

/-!
# A117057: Palindromes which are divisible by the product of their digits.

The programs for A117057, there is no canonical definition to state claims against.
-/

/-! ## A117057.P9651554762552885330

`∩[A082937(n+1), A277856(n+1)]`
-/

namespace A117057.P9651554762552885330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117057.P9651554762552885330

/-! ## A117057.P4868413011641914027

`∩[A007602(n+1), A082937(n+1)]`
-/

namespace A117057.P4868413011641914027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117057.P4868413011641914027

/-! ## A117057.P2696168607890339662

`∩[A002113(n+1), A007602(n+1)]`
-/

namespace A117057.P2696168607890339662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117057.P2696168607890339662

/-! ## A117057.P143975748900915738

`∩[A002113(n+1), A180484(n+1)]`
-/

namespace A117057.P143975748900915738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117057.P143975748900915738

/-! ## A117057.P7220088624543996013

`∩[A007602(n+1), A178354(n+1)]`
-/

namespace A117057.P7220088624543996013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117057.P7220088624543996013

/-!
# A117058: Palindromes for which the product of the digits is prime.

The programs for A117058, there is no canonical definition to state claims against.
-/

/-! ## A117058.P9085626008161113225

`∩[A028842(n+1), A071272(n+1)]`
-/

namespace A117058.P9085626008161113225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117058.P9085626008161113225

/-! ## A117058.P13500479533044104426

`∩[A028842(n+1), A076609(n+1)]`
-/

namespace A117058.P13500479533044104426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117058.P13500479533044104426

/-! ## A117058.P15359674035018455114

`∩[A028842(n+1), A082207(n+1)]`
-/

namespace A117058.P15359674035018455114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117058.P15359674035018455114

/-! ## A117058.P16896534507277336905

`∩[A028842(n+1), A083136(n+1)]`
-/

namespace A117058.P16896534507277336905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117058.P16896534507277336905

/-! ## A117058.P10128563738684978894

`∩[A028842(n+1), A117055(n+1)]`
-/

namespace A117058.P10128563738684978894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117058.P10128563738684978894

/-!
# A117059: Palindromes for which the multiplicative digital root is a prime.

The programs for A117059, there is no canonical definition to state claims against.
-/

/-! ## A117059.P1495690243974376922

`∩[A002113(n+1), A028843(n+1)]`
-/

namespace A117059.P1495690243974376922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117059.P1495690243974376922

/-! ## A117059.P5691061441904340957

`∩[A028843(n+1), A061917(n+1)]`
-/

namespace A117059.P5691061441904340957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117059.P5691061441904340957

/-! ## A117059.P8750620198032845868

`∩[A028843(n+1), A083158(n+1)]`
-/

namespace A117059.P8750620198032845868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117059.P8750620198032845868

/-! ## A117059.P5090276740642327278

`filter[A028843(n+1), A136522(#)]`
-/

namespace A117059.P5090276740642327278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A117059.P5090276740642327278

/-!
# A117060: Mersenne numbers for which the product of the digits is not zero.

The programs for A117060, there is no canonical definition to state claims against.
-/

/-! ## A117060.P123831675509510147

`A238938(n+2)-1`
-/

namespace A117060.P123831675509510147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238938 (n + 2) - 1

end

end A117060.P123831675509510147

/-! ## A117060.P14452751020321133139

`∑[abs(Δ[A238938(n+1)])]`
-/

namespace A117060.P14452751020321133139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238938 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117060.P14452751020321133139

/-! ## A117060.P775982594083553333

`2^A305932(n+1)-1`
-/

namespace A117060.P775982594083553333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A305932 (n + 1) : ℤ) - 1

end

end A117060.P775982594083553333

/-! ## A117060.P80093353743570060

`A000225(A305932(n+1))`
-/

namespace A117060.P80093353743570060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A305932 (n + 1)).toNat

end

end A117060.P80093353743570060

/-! ## A117060.P7314350510574372793

`A000225(eq[A000007(n), A027870(n)])`
-/

namespace A117060.P7314350510574372793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A117060.P7314350510574372793

/-!
# A117061: a(n) = (s(n-1))^2+n, with a(1) = 1 and s(k) = A007953(a(k)).

The programs for A117061, the canonical program `A117061.P6783340963500244464` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117061 has offset 1).

The definition of A117061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117061.P6783340963500244464

`A118881(a(n-1))+1+n` with `a(0)=1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A117061

/-- `A118881(a(n-1))+1+n` -/
def P6783340963500244464.Spec : Prop :=
  ∀ n, P6783340963500244464.a n = A117061 (n + 1)

theorem P6783340963500244464.correct : P6783340963500244464.Spec := by
  intro n
  simp only [A117061, Nat.add_sub_cancel]

end A117061

/-! ## A117061.P15579350811585368724

`A007953(a(n-1))²+n+1` with `a(0)=1`
-/

namespace A117061.P15579350811585368724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007953 (a (n - 1)).toNat ^ 2 + (n + 1 : ℤ)

end

end A117061.P15579350811585368724

namespace A117061

/-- `A007953(a(n-1))²+n+1` -/
def P15579350811585368724.Spec : Prop :=
  ∀ n, P15579350811585368724.a n = A117061 (n + 1)

theorem P15579350811585368724.correct : P15579350811585368724.Spec := by
  intro n
  simp only [A117061, Nat.add_sub_cancel, A117061.P15579350811585368724.a, A117061.P6783340963500244464.a, A007953, A007953.P3472751987379697826.a, A118881, A118881.P8524186405013838056.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A117061

/-! ## A117061.P136828097215923259

`A000290(A007953(floor(a(n-1))))+n+1` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A117061.P136828097215923259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000290 (A007953 (a (n - 1)).toNat).toNat + (n + 1 : ℤ)

end

end A117061.P136828097215923259

namespace A117061

/-- `A000290(A007953(floor(a(n-1))))+n+1` -/
def P136828097215923259.Spec : Prop :=
  ∀ n, P136828097215923259.a n = A117061 (n + 1)

end A117061

/-! ## A117061.P4468506065364210149

`A000290(A007953(ceil(a(n-1))))+n+1` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A117061.P4468506065364210149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000290 (A007953 (a (n - 1)).toNat).toNat + (n + 1 : ℤ)

end

end A117061.P4468506065364210149

namespace A117061

/-- `A000290(A007953(ceil(a(n-1))))+n+1` -/
def P4468506065364210149.Spec : Prop :=
  ∀ n, P4468506065364210149.a n = A117061 (n + 1)

end A117061

/-! ## A117061.P3492877215702809999

`A000290(A007953(round(a(n-1))))+n+1` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A117061.P3492877215702809999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000290 (A007953 (a (n - 1)).toNat).toNat + (n + 1 : ℤ)

end

end A117061.P3492877215702809999

namespace A117061

/-- `A000290(A007953(round(a(n-1))))+n+1` -/
def P3492877215702809999.Spec : Prop :=
  ∀ n, P3492877215702809999.a n = A117061 (n + 1)

end A117061

/-!
# A117062: Hexagonal numbers for which the sum of the digits is also a hexagonal number.

The programs for A117062, there is no canonical definition to state claims against.
-/

/-! ## A117062.P16630665751594678562

`∩[C(2*n, 2), A117309(n)]`
-/

namespace A117062.P16630665751594678562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117309 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117062.P16630665751594678562

/-! ## A117062.P12228909533299658795

`∩[A000384(n), A117309(n)]`
-/

namespace A117062.P12228909533299658795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117309 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117062.P12228909533299658795

/-! ## A117062.P13804313379395650387

`∩[(2*n²-n)%A117309(n+4), A117309(n)]`
-/

namespace A117062.P13804313379395650387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * n ^ 2 : ℤ) - (n : ℤ)) (A117309 (n + 4))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117309 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117062.P13804313379395650387

/-! ## A117062.P9993644464363820880

`∩[A117309(n), A260699(n)]`
-/

namespace A117062.P9993644464363820880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117309 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260699 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117062.P9993644464363820880

/-! ## A117062.P13833284179172736428

`∩[A117309(n), A266304(n)]`
-/

namespace A117062.P13833284179172736428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117309 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266304 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117062.P13833284179172736428

/-! ## A117062.P14148684117508125948

`∩[A117309(n), A266665(n)]`
-/

namespace A117062.P14148684117508125948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117309 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266665 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117062.P14148684117508125948

/-!
# A117063: Hexagonal numbers for which the product of the digits is also a hexagonal number.

The programs for A117063, there is no canonical definition to state claims against.
-/

/-! ## A117063.P4977499289223300316

`∩[C(2*n, 2), A117310(n)]`
-/

namespace A117063.P4977499289223300316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117310 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117063.P4977499289223300316

/-! ## A117063.P10008683111089791668

`∩[A000384(n), A117310(n)]`
-/

namespace A117063.P10008683111089791668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117310 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117063.P10008683111089791668

/-! ## A117063.P15621852704966452435

`∩[n*lt[A020639(n+1), 3], A117310(n)]`
-/

namespace A117063.P15621852704966452435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117310 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A117063.P15621852704966452435

/-! ## A117063.P11503801759431464921

`∩[A117310(n), A260699(n)]`
-/

namespace A117063.P11503801759431464921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260699 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117063.P11503801759431464921

/-! ## A117063.P10974666271607040777

`∩[A117310(n), A266304(n)]`
-/

namespace A117063.P10974666271607040777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266304 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117063.P10974666271607040777

/-! ## A117063.P13888617360299679221

`∩[A117310(n), A266665(n)]`
-/

namespace A117063.P13888617360299679221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266665 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117063.P13888617360299679221

/-!
# A117064: Hexagonal numbers for which both the sum of the digits and the product of the digits are also hexagonal numbers.

The programs for A117064, there is no canonical definition to state claims against.
-/

/-! ## A117064.P4423284921453459071

`∩[A117063(n+1), A117062(n)]`
-/

namespace A117064.P4423284921453459071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117062 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117064.P4423284921453459071

/-! ## A117064.P14750954183220723912

`∩[A117063(n+1), A117309(n)]`
-/

namespace A117064.P14750954183220723912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117309 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117064.P14750954183220723912

/-! ## A117064.P9150207162658144573

`∩[A117062(n), A117310(n)]`
-/

namespace A117064.P9150207162658144573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117062 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117310 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117064.P9150207162658144573

/-!
# A117065: Primes that are not the sum of 3 pentagonal numbers.

The programs for A117065, there is no canonical definition to state claims against.
-/

/-! ## A117065.P5100279443422249816

`p?[A003679(n+1)]`
-/

namespace A117065.P5100279443422249816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117065.P5100279443422249816

/-! ## A117065.P4815868868617062802

`p?[record[A003679(A052938(n))]]`
-/

namespace A117065.P4815868868617062802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003679 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117065.P4815868868617062802

/-! ## A117065.P225394421159406386

`p?[record[A003679(A133310(n))]]`
-/

namespace A117065.P225394421159406386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003679 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117065.P225394421159406386

/-! ## A117065.P1731938594433995209

`p?[record[A003679(A291769(n))]]`
-/

namespace A117065.P1731938594433995209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003679 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117065.P1731938594433995209

/-! ## A117065.P3766339080187847243

`record[A006530(A003679(n+5))]`
-/

namespace A117065.P3766339080187847243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A003679 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117065.P3766339080187847243

/-!
# A117066: Partial sums of cupolar numbers (1/3)*(n+1)*(5*n^2+7*n+3) (A096000).

The programs for A117066, the canonical program `A117066.P1931222265622537435` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117066 has offset 1).

The definition of A117066 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117066.P1931222265622537435

`(n+1)²*(n+2)*(5*(n+1)+1)/12`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117066

/-- `(n+1)²*(n+2)*(5*(n+1)+1)/12` -/
def P1931222265622537435.Spec : Prop :=
  ∀ n, P1931222265622537435.a n = (A117066 (n + 1) : ℚ)

end A117066

/-! ## A117066.P8737472353510124379

`∑[∑[∑[a(n-1)+10]]]` with `a(0)=1, a(1)=8`
-/

namespace A117066.P8737472353510124379
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f3 =>
  f3 (n - 1) + 10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117066.P8737472353510124379

namespace A117066

/-- `∑[∑[∑[a(n-1)+10]]]` -/
def P8737472353510124379.Spec : Prop :=
  ∀ n, (P8737472353510124379.a n : ℤ) = A117066 (n + 1)

end A117066

/-! ## A117066.P13421225211440530663

`∑[A096000(n)]`
-/

namespace A117066.P13421225211440530663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117066.P13421225211440530663

namespace A117066

/-- `∑[A096000(n)]` -/
def P13421225211440530663.Spec : Prop :=
  ∀ n, P13421225211440530663.a n = A117066 (n + 1)

end A117066

/-! ## A117066.P6750250501197219454

`A108678(n)+∑[∑[n²]]`
-/

namespace A117066.P6750250501197219454
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108678 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A117066.P6750250501197219454

namespace A117066

/-- `A108678(n)+∑[∑[n²]]` -/
def P6750250501197219454.Spec : Prop :=
  ∀ n, P6750250501197219454.a n = A117066 (n + 1)

end A117066

/-! ## A117066.P18365494805937484157

`∑[A057813(n)]-∑[n]²`
-/

namespace A117066.P18365494805937484157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057813 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A117066.P18365494805937484157

namespace A117066

/-- `∑[A057813(n)]-∑[n]²` -/
def P18365494805937484157.Spec : Prop :=
  ∀ n, P18365494805937484157.a n = A117066 (n + 1)

end A117066

/-! ## A117066.P8708463068093658225

`A368046(n)+(n+1)^3`
-/

namespace A117066.P8708463068093658225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368046 n + ((n + 1) ^ 3 : ℤ)

end

end A117066.P8708463068093658225

namespace A117066

/-- `A368046(n)+(n+1)^3` -/
def P8708463068093658225.Spec : Prop :=
  ∀ n, P8708463068093658225.a n = A117066 (n + 1)

end A117066

/-! ## A117066.P16469581246441389246

`(n+1)/2*A033994(n+1)`
-/

namespace A117066.P16469581246441389246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A033994 (n + 1) : ℚ)

end

end A117066.P16469581246441389246

namespace A117066

/-- `(n+1)/2*A033994(n+1)` -/
def P16469581246441389246.Spec : Prop :=
  ∀ n, P16469581246441389246.a n = (A117066 (n + 1) : ℚ)

end A117066

/-! ## A117066.P4332544588806107257

`A008911(n+1)+∑[n+1]²`
-/

namespace A117066.P4332544588806107257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A117066.P4332544588806107257

namespace A117066

/-- `A008911(n+1)+∑[n+1]²` -/
def P4332544588806107257.Spec : Prop :=
  ∀ n, P4332544588806107257.a n = A117066 (n + 1)

end A117066

/-! ## A117066.P604204832296597041

`∑[A144945(n+1)+(n+1)²]`
-/

namespace A117066.P604204832296597041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144945 (n + 1) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117066.P604204832296597041

namespace A117066

/-- `∑[A144945(n+1)+(n+1)²]` -/
def P604204832296597041.Spec : Prop :=
  ∀ n, P604204832296597041.a n = A117066 (n + 1)

end A117066

/-! ## A117066.P9913666106050559616

`A098077(n+1)-∑[n+1]²`
-/

namespace A117066.P9913666106050559616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098077 (n + 1) - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A117066.P9913666106050559616

namespace A117066

/-- `A098077(n+1)-∑[n+1]²` -/
def P9913666106050559616.Spec : Prop :=
  ∀ n, P9913666106050559616.a n = A117066 (n + 1)

end A117066

/-! ## A117066.P10773926516610260307

`A051799(n)-A027480(n)`
-/

namespace A117066.P10773926516610260307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051799 n - A027480 n

end

end A117066.P10773926516610260307

namespace A117066

/-- `A051799(n)-A027480(n)` -/
def P10773926516610260307.Spec : Prop :=
  ∀ n, P10773926516610260307.a n = A117066 (n + 1)

end A117066

/-! ## A117066.P6064405401660698610

`Δ[A000217(n)*A000292(n)]`
-/

namespace A117066.P6064405401660698610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117066.P6064405401660698610

namespace A117066

/-- `Δ[A000217(n)*A000292(n)]` -/
def P6064405401660698610.Spec : Prop :=
  ∀ n, P6064405401660698610.a n = A117066 (n + 1)

end A117066

/-! ## A117066.P6806883351645509154

`A006323(n+1)+A001296(n)`
-/

namespace A117066.P6806883351645509154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006323 (n + 1) + A001296 n

end

end A117066.P6806883351645509154

namespace A117066

/-- `A006323(n+1)+A001296(n)` -/
def P6806883351645509154.Spec : Prop :=
  ∀ n, P6806883351645509154.a n = A117066 (n + 1)

end A117066

/-! ## A117066.P12000676390804500216

`A051740(n)+A050534(n+1)`
-/

namespace A117066.P12000676390804500216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051740 n + A050534 (n + 1)

end

end A117066.P12000676390804500216

namespace A117066

/-- `A051740(n)+A050534(n+1)` -/
def P12000676390804500216.Spec : Prop :=
  ∀ n, P12000676390804500216.a n = A117066 (n + 1)

end A117066

/-! ## A117066.P3983599017396564991

`A132117(n+1)+A004320(n)`
-/

namespace A117066.P3983599017396564991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132117 (n + 1) + A004320 n

end

end A117066.P3983599017396564991

namespace A117066

/-- `A132117(n+1)+A004320(n)` -/
def P3983599017396564991.Spec : Prop :=
  ∀ n, P3983599017396564991.a n = A117066 (n + 1)

end A117066

/-! ## A117066.P2735034213216476856

`A178073(n+1)+A014205(n)`
-/

namespace A117066.P2735034213216476856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178073 (n + 1) + A014205 n

end

end A117066.P2735034213216476856

namespace A117066

/-- `A178073(n+1)+A014205(n)` -/
def P2735034213216476856.Spec : Prop :=
  ∀ n, P2735034213216476856.a n = A117066 (n + 1)

end A117066

/-! ## A117066.P15926085708901136390

`A185355(n+1)+A050509(n)`
-/

namespace A117066.P15926085708901136390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185355 (n + 1) + A050509 n

end

end A117066.P15926085708901136390

namespace A117066

/-- `A185355(n+1)+A050509(n)` -/
def P15926085708901136390.Spec : Prop :=
  ∀ n, P15926085708901136390.a n = A117066 (n + 1)

end A117066

/-! ## A117066.P14654932963192535907

`A162668(n)+A134393(n+1)`
-/

namespace A117066.P14654932963192535907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162668 n + A134393 (n + 1)

end

end A117066.P14654932963192535907

namespace A117066

/-- `A162668(n)+A134393(n+1)` -/
def P14654932963192535907.Spec : Prop :=
  ∀ n, P14654932963192535907.a n = A117066 (n + 1)

end A117066

/-! ## A117066.P236374315827743994

`A053134(n)-A052149(n+1)`
-/

namespace A117066.P236374315827743994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053134 n - A052149 (n + 1)

end

end A117066.P236374315827743994

namespace A117066

/-- `A053134(n)-A052149(n+1)` -/
def P236374315827743994.Spec : Prop :=
  ∀ n, P236374315827743994.a n = A117066 (n + 1)

end A117066

/-! ## A117066.P17902009710233703397

`A380353(n+1)-A346636(n)`
-/

namespace A117066.P17902009710233703397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380353 (n + 1) - A346636 n

end

end A117066.P17902009710233703397

namespace A117066

/-- `A380353(n+1)-A346636(n)` -/
def P17902009710233703397.Spec : Prop :=
  ∀ n, P17902009710233703397.a n = A117066 (n + 1)

end A117066

/-!
# A117067: Decimal value of binary number whose n-th 1 is followed by F(n) 0's.

The programs for A117067, there is no canonical definition to state claims against.
-/

/-! ## A117067.P13697565242949203383

`1+a(n-1)*2^(1+A000045(n))` with `a(0)=1`
-/

namespace A117067.P13697565242949203383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  1 + a (n - 1) * (2 : ℚ) ^ (1 + A000045 n : ℤ)

end

end A117067.P13697565242949203383

/-! ## A117067.P445796983074268567

`A048678(A048722(n+1))`
-/

namespace A117067.P445796983074268567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (A048722 (n + 1)).toNat

end

end A117067.P445796983074268567

/-!
# A117070: Number at start of segment n of A078783.

The programs for A117070, there is no canonical definition to state claims against.
-/

/-! ## A117070.P8410748244178002358

`lt[n, A257502(n+1)]+1`
-/

namespace A117070.P8410748244178002358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257502 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A117070.P8410748244178002358

/-! ## A117070.P18105039390205706817

`A078783(3*n+1)`
-/

namespace A117070.P18105039390205706817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078783 (3 * n + 1)

end

end A117070.P18105039390205706817

/-! ## A117070.P9070789468214447172

`record[A078783(n+1)%A117073(n+2)]`
-/

namespace A117070.P9070789468214447172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078783 (n + 1)) (A117073 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117070.P9070789468214447172

/-! ## A117070.P16525222911587110270

`A078783(n+1+n+n)%A078310(n+1)`
-/

namespace A117070.P16525222911587110270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078783 (n + 1 + n + n)) (A078310 (n + 1))

end

end A117070.P16525222911587110270

/-! ## A117070.P6294905210296136195

`A117071(n+1)+2-Δ[A117071(n+1)]`
-/

namespace A117070.P6294905210296136195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117071 (n + 1) + (2 - (f1 (n + 1) - f1 n))

end

end A117070.P6294905210296136195

/-! ## A117070.P12479146296948697811

`lt[A257515(n), A000045(A257502(n))]`
-/

namespace A117070.P12479146296948697811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257515 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A257502 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A117070.P12479146296948697811

/-! ## A117070.P15620941709836775700

`lt[A000045(n), 2*A000045(A257502(n))]`
-/

namespace A117070.P15620941709836775700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (A257502 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A117070.P15620941709836775700

/-!
# A117071: Number at middle of segment n of A078783.

The programs for A117071, there is no canonical definition to state claims against.
-/

/-! ## A117071.P8021020947379718137

`A078783(3*n+2)`
-/

namespace A117071.P8021020947379718137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078783 (3 * n + 2)

end

end A117071.P8021020947379718137

/-! ## A117071.P1859268376322182607

`record[A078783(record[(n+1)%3+n+1])]`
-/

namespace A117071.P1859268376322182607
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 3 + (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078783 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117071.P1859268376322182607

/-! ## A117071.P12275914718614287849

`record[A078783(A257502(n+1)+1)]`
-/

namespace A117071.P12275914718614287849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078783 (A257502 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117071.P12275914718614287849

/-! ## A117071.P16630289140762733548

`record[A078783(A001057(n+1)+1+n)]`
-/

namespace A117071.P16630289140762733548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078783 (A001057 (n + 1) + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117071.P16630289140762733548

/-! ## A117071.P9518688130448948319

`record[A117073(A257502(n+1)+2)+n]`
-/

namespace A117071.P9518688130448948319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117073 (A257502 (n + 1) + 2).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117071.P9518688130448948319

/-!
# A117072: Number at end of segment n of A078783.

The programs for A117072, there is no canonical definition to state claims against.
-/

/-! ## A117072.P3329187926809444832

`A117071(n+2)-1`
-/

namespace A117072.P3329187926809444832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117071 (n + 2) - 1

end

end A117072.P3329187926809444832

/-! ## A117072.P11507113488043793918

`A078783(3*(n+1))`
-/

namespace A117072.P11507113488043793918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078783 (3 * (n + 1))

end

end A117072.P11507113488043793918

/-! ## A117072.P14484942028884883292

`record[A078783(A257502(n+1)+2)]`
-/

namespace A117072.P14484942028884883292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078783 (A257502 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117072.P14484942028884883292

/-! ## A117072.P4582909731471088972

`A078783(Δ[A000326(n+1)]+1)-1`
-/

namespace A117072.P4582909731471088972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078783 (f1 (n + 1) - f1 n + 1).toNat - 1

end

end A117072.P4582909731471088972

/-! ## A117072.P18141324273587999819

`record[A078783(A001057(n+1)+2+n)]`
-/

namespace A117072.P18141324273587999819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078783 (A001057 (n + 1) + 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117072.P18141324273587999819

/-!
# A117073: Sequence of which A078783 is the Recamán transform.

The programs for A117073, there is no canonical definition to state claims against.
-/

/-! ## A117073.P830223815592842313

`record[Δ[A078783(A246552(n))]]`
-/

namespace A117073.P830223815592842313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078783 (A246552 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117073.P830223815592842313

/-! ## A117073.P16651925759477260867

`lt[A113009(n), A073334(n)]`
-/

namespace A117073.P16651925759477260867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113009 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A117073.P16651925759477260867

/-! ## A117073.P2931454901542572297

`lt[A279645(A335525(n+1)), 3]`
-/

namespace A117073.P2931454901542572297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279645 (A335525 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A117073.P2931454901542572297

/-! ## A117073.P17460506418350051369

`lt[A000040(n+1), A212991(A256455(n+1))]`
-/

namespace A117073.P17460506418350051369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212991 (A256455 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A117073.P17460506418350051369

/-! ## A117073.P7432092003720763294

`lt[A122888(3*n+2), A023197(A008278(n+3))]`
-/

namespace A117073.P7432092003720763294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122888 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023197 (A008278 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A117073.P7432092003720763294

/-!
# A117074: Number at start of segment n of A117073.

The programs for A117074, there is no canonical definition to state claims against.
-/

/-! ## A117074.P4300434857983192902

`A117075(n+1)-2`
-/

namespace A117074.P4300434857983192902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117075 (n + 1) - 2

end

end A117074.P4300434857983192902

/-! ## A117074.P15817330804275349142

`A117073(3*n+1)`
-/

namespace A117074.P15817330804275349142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117073 (3 * n + 1)

end

end A117074.P15817330804275349142

/-! ## A117074.P9668288048086850590

`Δ[A117071(n+1)]-3`
-/

namespace A117074.P9668288048086850590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A117074.P9668288048086850590

/-! ## A117074.P14164350428967996003

`Δ[A078783(3*n+2)]-3`
-/

namespace A117074.P14164350428967996003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078783 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A117074.P14164350428967996003

/-! ## A117074.P10734398164533778171

`∑[abs(Δ[A117073(3*n)])]-2`
-/

namespace A117074.P10734398164533778171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117073 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A117074.P10734398164533778171

/-!
# A117075: Number at end of segment n of A117073.

The programs for A117075, there is no canonical definition to state claims against.
-/

/-! ## A117075.P7901898260737060761

`A117074(n+1)+2`
-/

namespace A117075.P7901898260737060761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117074 (n + 1) + 2

end

end A117075.P7901898260737060761

/-! ## A117075.P6415260829688047782

`A117073(3*(n+1))`
-/

namespace A117075.P6415260829688047782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117073 (3 * (n + 1))

end

end A117075.P6415260829688047782

/-! ## A117075.P5703884878261744427

`Δ[A117071(n+1)]-1`
-/

namespace A117075.P5703884878261744427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A117075.P5703884878261744427

/-! ## A117075.P18037368944342120199

`∑[abs(Δ[A117073(3*n)])]`
-/

namespace A117075.P18037368944342120199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117073 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117075.P18037368944342120199

/-! ## A117075.P6428456973561163156

`record[Δ[record[A078783(n+2)]]]`
-/

namespace A117075.P6428456973561163156
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078783 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117075.P6428456973561163156

/-!
# A117076: Prime numbers with more even digits than odd digits.

The programs for A117076, there is no canonical definition to state claims against.
-/

/-! ## A117076.P2315713103098288418

`p?[A352546(n+1)]`
-/

namespace A117076.P2315713103098288418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117076.P2315713103098288418

/-! ## A117076.P11192596144036522632

`∩[A000040(n+1), A352546(n+1)]`
-/

namespace A117076.P11192596144036522632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117076.P11192596144036522632

/-! ## A117076.P631876138677349145

`∩[A008578(n+1), A352546(n+1)]`
-/

namespace A117076.P631876138677349145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117076.P631876138677349145

/-! ## A117076.P14932559904015406103

`∩[A033946(n+1), A352546(n+1)]`
-/

namespace A117076.P14932559904015406103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117076.P14932559904015406103

/-! ## A117076.P3148339767410181053

`∩[A045319(n+1), A352546(n+1)]`
-/

namespace A117076.P3148339767410181053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117076.P3148339767410181053

/-! ## A117076.P9350047785849093421

`∩[A045344(n+1), A352546(n+1)]`
-/

namespace A117076.P9350047785849093421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117076.P9350047785849093421

/-! ## A117076.P12574953552923094112

`∩[A182140(n+1), A352546(n+1)]`
-/

namespace A117076.P12574953552923094112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117076.P12574953552923094112

/-! ## A117076.P6264612464872747884

`∩[A189710(n+1), A352546(n+1)]`
-/

namespace A117076.P6264612464872747884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117076.P6264612464872747884

/-! ## A117076.P9374032311760301963

`p?[A135761(p?[A024657(n)])]`
-/

namespace A117076.P9374032311760301963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135761 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117076.P9374032311760301963

/-! ## A117076.P7052109230127031576

`eq[A003415(n), A205141(A308005(n))]`
-/

namespace A117076.P7052109230127031576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205141 (A308005 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117076.P7052109230127031576

/-!
# A117077: Define binary strings S(0)=0, S(1)=1, S(n) = S(n-2)S(n-1); a(n) = S(n) converted to decimal.

The programs for A117077, there is no canonical definition to state claims against.
-/

/-! ## A117077.P15712976784817014360

`A162437(n+2)%A162437(n+1)`
-/

namespace A117077.P15712976784817014360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162437 (n + 2)) (A162437 (n + 1))

end

end A117077.P15712976784817014360

/-! ## A117077.P8275880629056843834

`and(A063896(n+1), A162437(n+2))`
-/

namespace A117077.P8275880629056843834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063896 (n + 1)) (A162437 (n + 2))

end

end A117077.P8275880629056843834

/-! ## A117077.P9425025753479329859

`A030101(A005203(n))`
-/

namespace A117077.P9425025753479329859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A005203 n).toNat

end

end A117077.P9425025753479329859

/-!
# A117078: a(n) is the smallest k such that prime(n+1) = prime(n) + (prime(n) mod k), or 0 if no such k exists.

The programs for A117078, there is no canonical definition to state claims against.
-/

/-! ## A117078.P10639913670423097174

`A118534(n+1)/or(1, A117563(n+1))`
-/

namespace A117078.P10639913670423097174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118534 (n + 1) : ℚ) / (Int.lor 1 (A117563 (n + 1)) : ℚ)

end

end A117078.P10639913670423097174

/-! ## A117078.P9643655391906625440

`A118534(n+1)/gcd(A062234(n+1), A117563(n+1))`
-/

namespace A117078.P9643655391906625440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118534 (n + 1) : ℚ) / (Int.gcd (A062234 (n + 1)) (A117563 (n + 1)) : ℚ)

end

end A117078.P9643655391906625440

/-! ## A117078.P1890394319762064325

`A118534(n+1)/A093178(A117563(n+1))`
-/

namespace A117078.P1890394319762064325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118534 (n + 1) : ℚ) / (A093178 (A117563 (n + 1)).toNat : ℚ)

end

end A117078.P1890394319762064325

/-! ## A117078.P14378115165210308862

`ceil(A118144(n+1)/(n+1))*A062234(n+1)/A093178(A117563(n+1))`
-/

namespace A117078.P14378115165210308862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A118144 (n + 1) : ℚ) / (n + 1 : ℚ)⌉ * A062234 (n + 1) : ℚ) / (A093178 (A117563 (n + 1)).toNat : ℚ)

end

end A117078.P14378115165210308862

/-! ## A117078.P2877851159215164259

`(A000040(n+1)-A001223(n+1)%(n+1))%A000040(n+1)/A093178(A117563(n+1))`
-/

namespace A117078.P2877851159215164259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A000040 (n + 1) - Int.tmod (A001223 (n + 1)) (n + 1 : ℤ)) (A000040 (n + 1)) : ℚ) / (A093178 (A117563 (n + 1)).toNat : ℚ)

end

end A117078.P2877851159215164259

/-! ## A117078.P12123873081227526584

`A062234(n+1)%A195586(n)/A093178(A117563(n+1))`
-/

namespace A117078.P12123873081227526584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A062234 (n + 1)) (A195586 n) : ℚ) / (A093178 (A117563 (n + 1)).toNat : ℚ)

end

end A117078.P12123873081227526584

/-! ## A117078.P4314710239559083043

`A006530(A005250(n+2))%2*A062234(n+1)/A093178(A117563(n+1))`
-/

namespace A117078.P4314710239559083043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A006530 (A005250 (n + 2)).toNat) 2 * A062234 (n + 1) : ℚ) / (A093178 (A117563 (n + 1)).toNat : ℚ)

end

end A117078.P4314710239559083043

/-!
# A117079: a(1) = 1; a(n) = 2*a(n-1) + (number of digits in a(n-1)).

The programs for A117079, there is no canonical definition to state claims against.
-/

/-! ## A117079.P6566046715898575882

`A073053(a(n-1))%10+2*a(n-1)` with `a(0)=1`
-/

namespace A117079.P6566046715898575882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A073053 (a (n - 1)).toNat) 10 + 2 * a (n - 1)

end

end A117079.P6566046715898575882

/-! ## A117079.P1004067469748702015

`A118764(a(n-1)+1)+a(n-1)` with `a(0)=1`
-/

namespace A117079.P1004067469748702015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A118764 (a (n - 1) + 1).toNat + a (n - 1)

end

end A117079.P1004067469748702015

/-! ## A117079.P18377150542767268240

`A055642(a(n-1))+2*a(n-1)` with `a(0)=1`
-/

namespace A117079.P18377150542767268240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055642 (a (n - 1)).toNat + 2 * a (n - 1)

end

end A117079.P18377150542767268240

/-! ## A117079.P6938360818079792365

`a(n-1)+a(n-1)+A004216(a(n-1))+1` with `a(0)=1`
-/

namespace A117079.P6938360818079792365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (A004216 (a (n - 1)).toNat + 1))

end

end A117079.P6938360818079792365

/-! ## A117079.P18026149379397308362

`A005187(A337843(a(n-1)))` with `a(0)=1`
-/

namespace A117079.P18026149379397308362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005187 (A337843 (a (n - 1)).toNat).toNat

end

end A117079.P18026149379397308362

/-!
# A117080: a(n) = 2a(n-1)+a(n-3)+1 with a(1)=1, a(2)=3, a(3)=8.

The programs for A117080, the canonical program `A117080.P2965146362121245552` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117080 has offset 1).

The definition of A117080 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-3)+1` (program `A117080.P2965146362121245552`, by `A117080.P2965146362121245552.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117080.P2965146362121245552

`2*a(n-1)+a(n-3)+1` with `a(0)=1, a(1)=3, a(2)=8`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117080

/-- `2*a(n-1)+a(n-3)+1` -/
def P2965146362121245552.Spec : Prop :=
  ∀ n, (P2965146362121245552.a n : ℤ) = A117080 (n + 1)

theorem P2965146362121245552.correct : P2965146362121245552.Spec := by
  intro n
  simp only [A117080, Nat.add_sub_cancel]

end A117080

/-! ## A117080.P17048681308100759562

`ogf((1+x^2-x^3)/(1-3x+2x^2-x^3+x^4))`
-/

namespace A117080.P17048681308100759562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1, -1] [1, -3, 2, -1, 1] n

end

end A117080.P17048681308100759562

namespace A117080

/-- `ogf((1+x^2-x^3)/(1-3x+2x^2-x^3+x^4))` -/
def P17048681308100759562.Spec : Prop :=
  ∀ n, P17048681308100759562.a n = A117080 (n + 1)

end A117080

/-! ## A117080.P4519264946840002072

`a(n-1)+1+a(n-1)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=8`
-/

namespace A117080.P4519264946840002072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 8] fun n a =>
  a (n - 1) + 1 + (a (n - 1) + a (n - 3))

end

end A117080.P4519264946840002072

namespace A117080

/-- `a(n-1)+1+a(n-1)+a(n-3)` -/
def P4519264946840002072.Spec : Prop :=
  ∀ n, (P4519264946840002072.a n : ℤ) = A117080 (n + 1)

theorem P4519264946840002072.correct : P4519264946840002072.Spec := by
  intro n
  simp only [A117080, Nat.add_sub_cancel, A117080.P4519264946840002072.a, A117080.P2965146362121245552.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A117080

/-! ## A117080.P8514100980807181312

`∑[A193641(n+1)-A052980(n)]+1`
-/

namespace A117080.P8514100980807181312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (n + 1) - A052980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A117080.P8514100980807181312

namespace A117080

/-- `∑[A193641(n+1)-A052980(n)]+1` -/
def P8514100980807181312.Spec : Prop :=
  ∀ n, P8514100980807181312.a n = A117080 (n + 1)

end A117080

/-! ## A117080.P16991278013762600022

`A052980(n+1)+A077852(n)-A008998(n)`
-/

namespace A117080.P16991278013762600022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 (n + 1) + (A077852 n - A008998 n)

end

end A117080.P16991278013762600022

namespace A117080

/-- `A052980(n+1)+A077852(n)-A008998(n)` -/
def P16991278013762600022.Spec : Prop :=
  ∀ n, P16991278013762600022.a n = A117080 (n + 1)

end A117080

/-! ## A117080.P11890390403073037665

`A008998(n+1)+A077852(n)-A052910(n+1)`
-/

namespace A117080.P11890390403073037665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 (n + 1) + (A077852 n - A052910 (n + 1))

end

end A117080.P11890390403073037665

namespace A117080

/-- `A008998(n+1)+A077852(n)-A052910(n+1)` -/
def P11890390403073037665.Spec : Prop :=
  ∀ n, P11890390403073037665.a n = A117080 (n + 1)

end A117080

/-! ## A117080.P13024803075162512145

`A265106(n+2)/2`
-/

namespace A117080.P13024803075162512145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265106 (n + 2) : ℚ) / 2

end

end A117080.P13024803075162512145

namespace A117080

/-- `A265106(n+2)/2` -/
def P13024803075162512145.Spec : Prop :=
  ∀ n, P13024803075162512145.a n = (A117080 (n + 1) : ℚ)

end A117080

/-! ## A117080.P14579822834726018960

`A019489(n)-A052910(n+1)`
-/

namespace A117080.P14579822834726018960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019489 n - A052910 (n + 1)

end

end A117080.P14579822834726018960

namespace A117080

/-- `A019489(n)-A052910(n+1)` -/
def P14579822834726018960.Spec : Prop :=
  ∀ n, P14579822834726018960.a n = A117080 (n + 1)

end A117080

/-! ## A117080.P7153871741192687219

`A019489(n)-2*A008998(n)`
-/

namespace A117080.P7153871741192687219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019489 n - 2 * A008998 n

end

end A117080.P7153871741192687219

namespace A117080

/-- `A019489(n)-2*A008998(n)` -/
def P7153871741192687219.Spec : Prop :=
  ∀ n, P7153871741192687219.a n = A117080 (n + 1)

end A117080

/-! ## A117080.P5510231342423900516

`A019489(n)-Δ[A193641(n+1)]`
-/

namespace A117080.P5510231342423900516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019489 n - (f1 (n + 1) - f1 n)

end

end A117080.P5510231342423900516

namespace A117080

/-- `A019489(n)-Δ[A193641(n+1)]` -/
def P5510231342423900516.Spec : Prop :=
  ∀ n, P5510231342423900516.a n = A117080 (n + 1)

end A117080

/-! ## A117080.P8867404533855696365

`A077852(n+1)-A052910(n+1)`
-/

namespace A117080.P8867404533855696365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077852 (n + 1) - A052910 (n + 1)

end

end A117080.P8867404533855696365

namespace A117080

/-- `A077852(n+1)-A052910(n+1)` -/
def P8867404533855696365.Spec : Prop :=
  ∀ n, P8867404533855696365.a n = A117080 (n + 1)

end A117080

/-! ## A117080.P14602143909267154323

`A077852(n+1)-2*A008998(n)`
-/

namespace A117080.P14602143909267154323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077852 (n + 1) - 2 * A008998 n

end

end A117080.P14602143909267154323

namespace A117080

/-- `A077852(n+1)-2*A008998(n)` -/
def P14602143909267154323.Spec : Prop :=
  ∀ n, P14602143909267154323.a n = A117080 (n + 1)

end A117080

/-! ## A117080.P3175881825783064522

`∑[A193641(n+1)]+1-A008998(n)`
-/

namespace A117080.P3175881825783064522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A008998 n)

end

end A117080.P3175881825783064522

namespace A117080

/-- `∑[A193641(n+1)]+1-A008998(n)` -/
def P3175881825783064522.Spec : Prop :=
  ∀ n, P3175881825783064522.a n = A117080 (n + 1)

end A117080

/-! ## A117080.P15766893867145654820

`A193641(n+1)+A019489(n)-A193641(n+2)`
-/

namespace A117080.P15766893867145654820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (n + 1) + (A019489 n - A193641 (n + 2))

end

end A117080.P15766893867145654820

namespace A117080

/-- `A193641(n+1)+A019489(n)-A193641(n+2)` -/
def P15766893867145654820.Spec : Prop :=
  ∀ n, P15766893867145654820.a n = A117080 (n + 1)

end A117080

/-! ## A117080.P7045229988845669806

`A077852(n+1)+A193641(n+1)-A193641(n+2)`
-/

namespace A117080.P7045229988845669806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077852 (n + 1) + (A193641 (n + 1) - A193641 (n + 2))

end

end A117080.P7045229988845669806

namespace A117080

/-- `A077852(n+1)+A193641(n+1)-A193641(n+2)` -/
def P7045229988845669806.Spec : Prop :=
  ∀ n, P7045229988845669806.a n = A117080 (n + 1)

end A117080

/-! ## A117080.P5363238759040222568

`A019489(n)-Δ[A232059(n+1)/2]`
-/

namespace A117080.P5363238759040222568
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232059 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019489 n : ℚ) - (f1 (n + 1) - f1 n)

end

end A117080.P5363238759040222568

namespace A117080

/-- `A019489(n)-Δ[A232059(n+1)/2]` -/
def P5363238759040222568.Spec : Prop :=
  ∀ n, P5363238759040222568.a n = (A117080 (n + 1) : ℚ)

end A117080

/-! ## A117080.P12226154420261462203

`A022040(n)%Δ[A020708(n)]`
-/

namespace A117080.P12226154420261462203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022040 n) (f1 (n + 1) - f1 n)

end

end A117080.P12226154420261462203

namespace A117080

/-- `A022040(n)%Δ[A020708(n)]` -/
def P12226154420261462203.Spec : Prop :=
  ∀ n, P12226154420261462203.a n = A117080 (n + 1)

end A117080

/-!
# A117081: a(n) = 36*n^2 - 810*n + 2753, producing the conjectured record number of 45 primes in a contiguous range of n for quadratic polynomials, i.e., abs(a(n)) is prime for 0 <= n < 44.

The programs for A117081, there is no canonical definition to state claims against.
-/

/-! ## A117081.P8889588969109262859

`A140318(A054252(n))*A140350(2*(n+1))`
-/

namespace A117081.P8889588969109262859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140318 (A054252 n).toNat * A140350 (2 * (n + 1))

end

end A117081.P8889588969109262859

/-!
# A117082: Octagonal numbers for which the sum of the digits is also an octagonal number.

The programs for A117082, there is no canonical definition to state claims against.
-/

/-! ## A117082.P10066093692841558013

`A000567(∑[A260111(2^ceil(n/2))])`
-/

namespace A117082.P10066093692841558013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260111 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A117082.P10066093692841558013

/-!
# A117083: Octagonal numbers for which the product of the digits is also an octagonal number.

The programs for A117083, there is no canonical definition to state claims against.
-/

/-! ## A117083.P3665445311697813922

`A000567(lt[Δ[A185216(3*n+4)], 3])`
-/

namespace A117083.P3665445311697813922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185216 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n)

end

end A117083.P3665445311697813922

/-! ## A117083.P173410507939965623

`A000567(lt[A370724(3*n), A010529(n)])`
-/

namespace A117083.P173410507939965623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370724 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A117083.P173410507939965623

/-! ## A117083.P1786322553734731603

`A000567(lt[A025618(n+1), A288185(n+1)])`
-/

namespace A117083.P1786322553734731603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A117083.P1786322553734731603

/-!
# A117084: Octagonal numbers for which both the sum and the product of the digits is also an octagonal number.

The programs for A117084, there is no canonical definition to state claims against.
-/

/-! ## A117084.P8944486713049961361

`∩[A117082(n), A117083(n)]`
-/

namespace A117084.P8944486713049961361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117082 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117083 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117084.P8944486713049961361

/-!
# A117086: Number of partitions of n such that the largest part is a multiple of the smallest part.

The programs for A117086, there is no canonical definition to state claims against.
-/

/-! ## A117086.P17890046353038117095

`∑[A069897(A164931(n+1)²)]`
-/

namespace A117086.P17890046353038117095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069897 (A164931 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117086.P17890046353038117095

/-! ## A117086.P12041594062718689624

`∑{d}[A085908(n+1), A336106(#)]`
-/

namespace A117086.P12041594062718689624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A336106 d

end

end A117086.P12041594062718689624

/-! ## A117086.P3058404288093732330

`A129251(A092255(n))+A083710(n+1)`
-/

namespace A117086.P3058404288093732330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129251 (A092255 n).toNat + A083710 (n + 1)

end

end A117086.P3058404288093732330

/-! ## A117086.P1074109037285933392

`A083710(n+1)+A010051(A361637(n))`
-/

namespace A117086.P1074109037285933392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083710 (n + 1) + A010051 (A361637 n).toNat

end

end A117086.P1074109037285933392

/-!
# A117087: Number of partitions of n such that the largest part and the smallest part are relatively prime.

The programs for A117087, there is no canonical definition to state claims against.
-/

/-! ## A117087.P4624312128632077630

`Δ[A000070(n)]-A114326(n+1)`
-/

namespace A117087.P4624312128632077630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A114326 (n + 1)

end

end A117087.P4624312128632077630

/-! ## A117087.P6337835872832756724

`record[A035363(n)]-A114326(n+1)`
-/

namespace A117087.P6337835872832756724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A114326 (n + 1)

end

end A117087.P6337835872832756724

/-! ## A117087.P17559307785558644989

`record[A035444(n)]-A114326(n+1)`
-/

namespace A117087.P17559307785558644989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A114326 (n + 1)

end

end A117087.P17559307785558644989

/-! ## A117087.P10349978764491069046

`record[A114099(n)]-A114326(n+1)`
-/

namespace A117087.P10349978764491069046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A114326 (n + 1)

end

end A117087.P10349978764491069046

/-! ## A117087.P17128986138467884574

`A000041(n+1)-A114326(n+1)`
-/

namespace A117087.P17128986138467884574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A114326 (n + 1)

end

end A117087.P17128986138467884574

/-!
# A117088: a(n) = (11*5^n - 7)/4.

The programs for A117088, the canonical program `A117088.P16303928399122718312` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117088 has offset 0).

The definition of A117088 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*5^n-7)/4` (program `A117088.P16737328606599414201`, by `A117088.P16737328606599414201.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117088.P16303928399122718312

`5*a(n-1)+7` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A117088

/-- `5*a(n-1)+7` -/
def P16303928399122718312.Spec : Prop :=
  ∀ n, (P16303928399122718312.a n : ℤ) = A117088 n

theorem P16303928399122718312.correct : P16303928399122718312.Spec := by
  intro n
  simp only [A117088]

end A117088

/-! ## A117088.P16737328606599414201

`(11*5^n-7)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117088.P16737328606599414201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 * 5 ^ n : ℤ) - 7 : ℚ) / 4

end

end A117088.P16737328606599414201

namespace A117088

/-- `(11*5^n-7)/4` -/
def P16737328606599414201.Spec : Prop :=
  ∀ n, P16737328606599414201.a n = (A117088 n : ℚ)

theorem P16737328606599414201.correct : P16737328606599414201.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A117088, Nat.add_sub_cancel, A117088.P16737328606599414201.a, A117088.P16303928399122718312.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A117088, Nat.add_sub_cancel, A117088.P16737328606599414201.a, A117088.P16303928399122718312.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A117088

/-! ## A117088.P10883890540588990840

`ogf((1+6x)/(1-6x+5x^2))`
-/

namespace A117088.P10883890540588990840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6] [1, -6, 5] n

end

end A117088.P10883890540588990840

namespace A117088

/-- `ogf((1+6x)/(1-6x+5x^2))` -/
def P10883890540588990840.Spec : Prop :=
  ∀ n, P10883890540588990840.a n = A117088 n

end A117088

/-! ## A117088.P14571118481119617128

`lcm(5, a(n-1))+7` with `a(0)=1`
-/

namespace A117088.P14571118481119617128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 5 (a (n - 1)) + 7

end

end A117088.P14571118481119617128

namespace A117088

/-- `lcm(5, a(n-1))+7` -/
def P14571118481119617128.Spec : Prop :=
  ∀ n, (P14571118481119617128.a n : ℤ) = A117088 n

end A117088

/-! ## A117088.P2927586208974097416

`∑[5*a(n-1)]` with `a(0)=1, a(1)=11`
-/

namespace A117088.P2927586208974097416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117088.P2927586208974097416

namespace A117088

/-- `∑[5*a(n-1)]` -/
def P2927586208974097416.Spec : Prop :=
  ∀ n, (P2927586208974097416.a n : ℤ) = A117088 n

end A117088

/-! ## A117088.P743374342470771525

`12-5*(1-a(n-1))` with `a(0)=1`
-/

namespace A117088.P743374342470771525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  12 - 5 * (1 - a (n - 1))

end

end A117088.P743374342470771525

namespace A117088

/-- `12-5*(1-a(n-1))` -/
def P743374342470771525.Spec : Prop :=
  ∀ n, P743374342470771525.a n = A117088 n

end A117088

/-! ## A117088.P11137299798752974500

`∑[a(n-1)/(1-4/5)]` with `a(0)=1, a(1)=11`
-/

namespace A117088.P11137299798752974500
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  f1 (n - 1) / (1 - (4 : ℚ) / 5)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117088.P11137299798752974500

namespace A117088

/-- `∑[a(n-1)/(1-4/5)]` -/
def P11137299798752974500.Spec : Prop :=
  ∀ n, P11137299798752974500.a n = (A117088 n : ℚ)

end A117088

/-! ## A117088.P17580177765521911910

`A199314(n)-2`
-/

namespace A117088.P17580177765521911910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199314 n - 2

end

end A117088.P17580177765521911910

namespace A117088

/-- `A199314(n)-2` -/
def P17580177765521911910.Spec : Prop :=
  ∀ n, P17580177765521911910.a n = A117088 n

end A117088

/-! ## A117088.P13822665946208539672

`A199315(n)/2-2`
-/

namespace A117088.P13822665946208539672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199315 n : ℚ) / 2 - 2

end

end A117088.P13822665946208539672

namespace A117088

/-- `A199315(n)/2-2` -/
def P13822665946208539672.Spec : Prop :=
  ∀ n, P13822665946208539672.a n = (A117088 n : ℚ)

end A117088

/-! ## A117088.P6691204766095338194

`A125833(n)+A125833(n)+A003463(n+1)`
-/

namespace A117088.P6691204766095338194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125833 n + (A125833 n + A003463 (n + 1))

end

end A117088.P6691204766095338194

namespace A117088

/-- `A125833(n)+A125833(n)+A003463(n+1)` -/
def P6691204766095338194.Spec : Prop :=
  ∀ n, P6691204766095338194.a n = A117088 n

end A117088

/-! ## A117088.P8819774988102144987

`A199316(n)/4-2`
-/

namespace A117088.P8819774988102144987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199316 n : ℚ) / 4 - 2

end

end A117088.P8819774988102144987

namespace A117088

/-- `A199316(n)/4-2` -/
def P8819774988102144987.Spec : Prop :=
  ∀ n, P8819774988102144987.a n = (A117088 n : ℚ)

end A117088

/-! ## A117088.P17282427781607980079

`∑[A003953(n)/ceil(2^(n-1))]`
-/

namespace A117088.P17282427781607980079
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003953 n : ℚ) / (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117088.P17282427781607980079

namespace A117088

/-- `∑[A003953(n)/ceil(2^(n-1))]` -/
def P17282427781607980079.Spec : Prop :=
  ∀ n, P17282427781607980079.a n = (A117088 n : ℚ)

end A117088

/-!
# A117089: Primes that are not the sum of 3 hexagonal numbers.

The programs for A117089, there is no canonical definition to state claims against.
-/

/-! ## A117089.P15267467583566983877

`p?[A007536(n+1)]`
-/

namespace A117089.P15267467583566983877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117089.P15267467583566983877

/-! ## A117089.P13785435350160664948

`p?[record[A007536(A263111(n))]]`
-/

namespace A117089.P13785435350160664948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007536 (A263111 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117089.P13785435350160664948

/-! ## A117089.P3826576298374794532

`p?[record[A007536(A291769(n))]]`
-/

namespace A117089.P3826576298374794532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007536 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117089.P3826576298374794532

/-! ## A117089.P17728043626000065217

`record[A006530(A007536(n+2))]`
-/

namespace A117089.P17728043626000065217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A007536 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117089.P17728043626000065217

/-! ## A117089.P18135388382794366047

`filter[A007536(n+1), A010051(#)]`
-/

namespace A117089.P18135388382794366047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A117089.P18135388382794366047

/-! ## A117089.P9529078525381997547

`filter[A007536(n+1), A257531(#)]`
-/

namespace A117089.P9529078525381997547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A117089.P9529078525381997547

/-! ## A117089.P8948322181787684075

`filter[A007536(n+1), A323152(#)]`
-/

namespace A117089.P8948322181787684075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A117089.P8948322181787684075

/-! ## A117089.P15327611350476581329

`filter[A007536(n+1), A323153(#)]`
-/

namespace A117089.P15327611350476581329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A117089.P15327611350476581329

/-! ## A117089.P2843290438060353813

`∩[A000040(n+1), A007536(n+1)]`
-/

namespace A117089.P2843290438060353813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117089.P2843290438060353813

/-! ## A117089.P8726469740664694805

`∩[A006005(n+1), A007536(n+1)]`
-/

namespace A117089.P8726469740664694805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117089.P8726469740664694805

/-!
# A117092: Numbers n such that nextprime(2*n) > 2*nextprime(n) (here nextprime = A007918; if p is prime then nextprime(p) = p).

The programs for A117092, there is no canonical definition to state claims against.
-/

/-! ## A117092.P14745873089878399795

`∪[A000040(n+1), A117099(n+1)]`
-/

namespace A117092.P14745873089878399795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A117092.P14745873089878399795

/-! ## A117092.P12406226948843688850

`lt[2, A060264(n)/A007918(n)]`
-/

namespace A117092.P12406226948843688850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060264 n : ℚ) / (A007918 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A117092.P12406226948843688850

/-! ## A117092.P870427293494601264

`lt[A007920(n), A110654(A007920(2*n))]`
-/

namespace A117092.P870427293494601264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A007920 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A117092.P870427293494601264

/-! ## A117092.P16247697903072630136

`eq[2, A284694(A016726(n+1))]+1`
-/

namespace A117092.P16247697903072630136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284694 (A016726 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A117092.P16247697903072630136

/-! ## A117092.P4576705772117836591

`lt[A005843(A007920(n)), A013632(2*n)]`
-/

namespace A117092.P4576705772117836591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A007920 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A117092.P4576705772117836591

/-! ## A117092.P17145549372906137162

`lt[A007920(n), A028242(A007920(2*n+1))]`
-/

namespace A117092.P17145549372906137162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A007920 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A117092.P17145549372906137162

/-! ## A117092.P17212041200534832394

`record[A005843(n+1)/A284694(A016726(n+1))]`
-/

namespace A117092.P17212041200534832394
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (A284694 (A016726 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117092.P17212041200534832394

/-!
# A117093: Numbers k such that nextprime(3*k) > 3*nextprime(k) (if p is prime then nextprime(p) = p).

The programs for A117093, there is no canonical definition to state claims against.
-/

/-! ## A117093.P1030307599353836794

`∪[A000040(n+1), A117100(n+1)]`
-/

namespace A117093.P1030307599353836794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A117093.P1030307599353836794

/-! ## A117093.P16574236798966664497

`lt[A295520(n), A051064(A029447(n+1))]`
-/

namespace A117093.P16574236798966664497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295520 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (A029447 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A117093.P16574236798966664497

/-!
# A117094: Numbers k such that nextprime(5*k) > 5*nextprime(k) (if p is prime then nextprime(p) = p).

The programs for A117094, there is no canonical definition to state claims against.
-/

/-! ## A117094.P8292326133665581981

`∪[A000040(n+1), A117101(n+1)]`
-/

namespace A117094.P8292326133665581981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A117094.P8292326133665581981

/-! ## A117094.P3823913275552222305

`eq[A007920(n), A010052(A219852(n+1))]`
-/

namespace A117094.P3823913275552222305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A219852 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117094.P3823913275552222305

/-! ## A117094.P10777837183593916647

`A359373(n+1)-A000493(A339027(n))`
-/

namespace A117094.P10777837183593916647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359373 (n + 1) - A000493 (A339027 n).toNat

end

end A117094.P10777837183593916647

/-! ## A117094.P12762783313101777795

`lt[A361902(n), A357137(A339353(3*n+1))]`
-/

namespace A117094.P12762783313101777795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361902 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357137 (A339353 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A117094.P12762783313101777795

/-!
# A117095: Numbers k such that nextprime(7*k) > 7*nextprime(k) (if p is prime then nextprime(p) = p).

The programs for A117095, there is no canonical definition to state claims against.
-/

/-! ## A117095.P12639554014050948243

`lt[A005563(n), A008592(A333259(n))]`
-/

namespace A117095.P12639554014050948243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A333259 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A117095.P12639554014050948243

/-! ## A117095.P3972601288237252021

`filter[A367066(2*(n+1)), A252233(#)]`
-/

namespace A117095.P3972601288237252021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367066 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A117095.P3972601288237252021

/-! ## A117095.P18374839179385553348

`filter[A367066(2*(n+1)), A374130(#)]`
-/

namespace A117095.P18374839179385553348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367066 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374130 (f1 j).toNat = 1) n)

end

end A117095.P18374839179385553348

/-! ## A117095.P4943055808614006187

`filter[A367066(2*(n+1)), A374466(#)]`
-/

namespace A117095.P4943055808614006187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367066 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374466 (f1 j).toNat = 1) n)

end

end A117095.P4943055808614006187

/-! ## A117095.P13218255340266573012

`lt[A051699(n), A329314(A035457(n))]`
-/

namespace A117095.P13218255340266573012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329314 (A035457 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A117095.P13218255340266573012

/-!
# A117096: Numbers n such that nextprime(2*n)

The programs for A117096, the canonical program `A117096.P17502464881523089586` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117096 has offset 1).

The definition of A117096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6060 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117096.P11771851990501134917

`comp[A117092(n+1)-1]+1`
-/

namespace A117096.P11771851990501134917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117092 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A117096.P11771851990501134917

namespace A117096

/-- `comp[A117092(n+1)-1]+1` -/
def P11771851990501134917.Spec : Prop :=
  ∀ n, (P11771851990501134917.a n : ℤ) = A117096 (n + 1)

end A117096

/-! ## A117096.P17502464881523089586

`eq[2, ceil(A060264(n)/A007918(n))]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A117096

/-- `eq[2, ceil(A060264(n)/A007918(n))]` -/
def P17502464881523089586.Spec : Prop :=
  ∀ n, (P17502464881523089586.a n : ℤ) = A117096 (n + 1)

theorem P17502464881523089586.correct : P17502464881523089586.Spec := by
  intro n
  simp only [A117096, Nat.add_sub_cancel]

end A117096

/-! ## A117096.P4755082895316352463

`lt[A028242(A060264(n)), A007918(n)]`
-/

namespace A117096.P4755082895316352463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A060264 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A117096.P4755082895316352463

namespace A117096

/-- `lt[A028242(A060264(n)), A007918(n)]` -/
def P4755082895316352463.Spec : Prop :=
  ∀ n, (P4755082895316352463.a n : ℤ) = A117096 (n + 1)

end A117096

/-! ## A117096.P16967752521953411947

`lt[A028242(A013632(2*n)), A007920(n)]`
-/

namespace A117096.P16967752521953411947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A013632 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A117096.P16967752521953411947

namespace A117096

/-- `lt[A028242(A013632(2*n)), A007920(n)]` -/
def P16967752521953411947.Spec : Prop :=
  ∀ n, (P16967752521953411947.a n : ℤ) = A117096 (n + 1)

end A117096

/-! ## A117096.P2226565814180000841

`lt[A028242(A007918(2*n+1)), A007918(n)]`
-/

namespace A117096.P2226565814180000841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A007918 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A117096.P2226565814180000841

namespace A117096

/-- `lt[A028242(A007918(2*n+1)), A007918(n)]` -/
def P2226565814180000841.Spec : Prop :=
  ∀ n, (P2226565814180000841.a n : ℤ) = A117096 (n + 1)

end A117096

/-!
# A117097: Numbers n such that nextprime(3*n)

The programs for A117097, there is no canonical definition to state claims against.
-/

/-! ## A117097.P7908011381013454394

`comp[A117093(n+1)-1]+1`
-/

namespace A117097.P7908011381013454394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117093 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A117097.P7908011381013454394

/-! ## A117097.P1111764569753887314

`lt[A230980(n), A007918(3*n)%A007918(n)]`
-/

namespace A117097.P1111764569753887314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007918 (3 * n)) (A007918 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A117097.P1111764569753887314

/-! ## A117097.P16004212118640612771

`eq[char[A117093(n+1)], A151933(n)]`
-/

namespace A117097.P16004212118640612771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117093 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A117097.P16004212118640612771

/-! ## A117097.P11271416360198585537

`eq[char[A117093(n+1)], A151622(n)]`
-/

namespace A117097.P11271416360198585537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117093 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A117097.P11271416360198585537

/-! ## A117097.P9163562658932324412

`A018252(∑[A080508(A326039(n+1))])`
-/

namespace A117097.P9163562658932324412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080508 (A326039 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A117097.P9163562658932324412

/-!
# A117098: Numbers k such that nextprime(5*k)

The programs for A117098, there is no canonical definition to state claims against.
-/

/-! ## A117098.P7573261236316515184

`eq[char[A117094(n+1)], A000038(n)]`
-/

namespace A117098.P7573261236316515184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117094 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A117098.P7573261236316515184

/-! ## A117098.P15579827408731064739

`eq[char[A117094(n+1)], A151933(n)]`
-/

namespace A117098.P15579827408731064739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117094 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A117098.P15579827408731064739

/-! ## A117098.P3329990461361622783

`lt[char[A117094(n+1)]*A077643(n), n]`
-/

namespace A117098.P3329990461361622783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117094 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A077643 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A117098.P3329990461361622783

/-! ## A117098.P4836262906808869660

`A018252(lt[A008578(n+1), A356850(3*n+1)])`
-/

namespace A117098.P4836262906808869660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356850 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A117098.P4836262906808869660

/-! ## A117098.P5704024306435280176

`A018252(lt[n, A348366(2*n+1)]+1)`
-/

namespace A117098.P5704024306435280176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348366 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A117098.P5704024306435280176

/-!
# A117099: Numbers n such that nextprime(2*n)>2*nextprime(n) and n is composite (if p is prime then nextprime(p)=p).

The programs for A117099, there is no canonical definition to state claims against.
-/

/-! ## A117099.P9332428730169646468

`filter[A117092(n+1), A005171(#)]`
-/

namespace A117099.P9332428730169646468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A117099.P9332428730169646468

/-! ## A117099.P6051671183154081203

`filter[A117092(n+1), A066247(#)]`
-/

namespace A117099.P6051671183154081203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A117099.P6051671183154081203

/-! ## A117099.P9069163884450404197

`∩[A002808(n+1), A117092(n+1)]`
-/

namespace A117099.P9069163884450404197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117099.P9069163884450404197

/-! ## A117099.P16449902140988638322

`∩[A018252(n+1), A117092(n+1)]`
-/

namespace A117099.P16449902140988638322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117099.P16449902140988638322

/-! ## A117099.P13273016250585415208

`∩[A117092(n+1), A141468(n+1)]`
-/

namespace A117099.P13273016250585415208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117099.P13273016250585415208

/-! ## A117099.P15789603686305243186

`∩[A077654(n+1), A117092(n+1)]`
-/

namespace A117099.P15789603686305243186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117099.P15789603686305243186

