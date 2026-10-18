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
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
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
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A146000: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 3X3 plus 2,1 2,2 2,3 1,2 3,2.

The programs for A146000, there is no canonical definition to state claims against.
-/

/-! ## A146000.P15208599471991904525

`A146002(2*(n+2))`
-/

namespace A146000.P15208599471991904525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146002 (2 * (n + 2))

end

end A146000.P15208599471991904525

/-! ## A146000.P9150912776453637478

`A026834(A181999(n))`
-/

namespace A146000.P9150912776453637478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026834 (A181999 n).toNat

end

end A146000.P9150912776453637478

/-! ## A146000.P3586050503700635843

`A216266(A279555(n+1)+n)`
-/

namespace A146000.P3586050503700635843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216266 (A279555 (n + 1) + (n : ℤ)).toNat

end

end A146000.P3586050503700635843

/-!
# A146001: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 3 X 3 plus 2,1 2,2 2,3 1,2 3,2.

The programs for A146001, there is no canonical definition to state claims against.
-/

/-! ## A146001.P13909082950735422039

`A060689(A162963(n+1))+A010054(A060689(n+1))`
-/

namespace A146001.P13909082950735422039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060689 (A162963 (n + 1)).toNat + A010054 (A060689 (n + 1)).toNat

end

end A146001.P13909082950735422039

/-!
# A146005: a(n) = n*Lucas(n).

The programs for A146005, the canonical program `A146005.P6209391916366834839` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146005 has offset 0).

The definition of A146005 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146005.P6209391916366834839

`n*A000032(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A146005

/-- `n*A000032(n)` -/
def P6209391916366834839.Spec : Prop :=
  ∀ n, P6209391916366834839.a n = A146005 n

theorem P6209391916366834839.correct : P6209391916366834839.Spec := by
  intro n
  simp only [A146005]

end A146005

/-! ## A146005.P12902833783882561336

`A000045(n)-5*A000045(n+1)+5*A010049(n+1)`
-/

namespace A146005.P12902833783882561336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - 5 * A000045 (n + 1) + 5 * A010049 (n + 1)

end

end A146005.P12902833783882561336

namespace A146005

/-- `A000045(n)-5*A000045(n+1)+5*A010049(n+1)` -/
def P12902833783882561336.Spec : Prop :=
  ∀ n, P12902833783882561336.a n = A146005 n

end A146005

/-! ## A146005.P8203835310249962159

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=12`
-/

namespace A146005.P8203835310249962159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 6, 12] fun n a =>
  2 * a (n - 1) + a (n - 2) - 2 * a (n - 3) - a (n - 4)

end

end A146005.P8203835310249962159

namespace A146005

/-- `2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` -/
def P8203835310249962159.Spec : Prop :=
  ∀ n, P8203835310249962159.a n = A146005 n

end A146005

/-! ## A146005.P2048119321359195833

`n*Δ[round(ϕ^(n+1))]`
-/

namespace A146005.P2048119321359195833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A146005.P2048119321359195833

namespace A146005

/-- `n*Δ[round(ϕ^(n+1))]` -/
def P2048119321359195833.Spec : Prop :=
  ∀ n, P2048119321359195833.a n = A146005 n

end A146005

/-! ## A146005.P10348512846294258079

`ogf((x+4x^2-x^3)/(1-2x-x^2+2x^3+x^4))`
-/

namespace A146005.P10348512846294258079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4, -1] [1, -2, -1, 2, 1] n

end

end A146005.P10348512846294258079

namespace A146005

/-- `ogf((x+4x^2-x^3)/(1-2x-x^2+2x^3+x^4))` -/
def P10348512846294258079.Spec : Prop :=
  ∀ n, P10348512846294258079.a n = A146005 n

end A146005

/-! ## A146005.P14859536350160276312

`n*A001612(n)-n`
-/

namespace A146005.P14859536350160276312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001612 n - (n : ℤ)

end

end A146005.P14859536350160276312

namespace A146005

/-- `n*A001612(n)-n` -/
def P14859536350160276312.Spec : Prop :=
  ∀ n, P14859536350160276312.a n = A146005 n

end A146005

/-! ## A146005.P18290857206291440322

`abs(n*A061084(n+1))`
-/

namespace A146005.P18290857206291440322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A061084 (n + 1)|

end

end A146005.P18290857206291440322

namespace A146005

/-- `abs(n*A061084(n+1))` -/
def P18290857206291440322.Spec : Prop :=
  ∀ n, P18290857206291440322.a n = A146005 n

end A146005

/-! ## A146005.P16381429223438802191

`A178521(n)+A094588(n)`
-/

namespace A146005.P16381429223438802191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178521 n + A094588 n

end

end A146005.P16381429223438802191

namespace A146005

/-- `A178521(n)+A094588(n)` -/
def P16381429223438802191.Spec : Prop :=
  ∀ n, P16381429223438802191.a n = A146005 n

end A146005

/-! ## A146005.P16293278382158924685

`A354044(n)+A264147(n)`
-/

namespace A146005.P16293278382158924685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354044 n + A264147 n

end

end A146005.P16293278382158924685

namespace A146005

/-- `A354044(n)+A264147(n)` -/
def P16293278382158924685.Spec : Prop :=
  ∀ n, P16293278382158924685.a n = A146005 n

end A146005

/-! ## A146005.P12496892742779933107

`A258321(n)-A000045(n)`
-/

namespace A146005.P12496892742779933107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258321 n - A000045 n

end

end A146005.P12496892742779933107

namespace A146005

/-- `A258321(n)-A000045(n)` -/
def P12496892742779933107.Spec : Prop :=
  ∀ n, P12496892742779933107.a n = A146005 n

end A146005

/-! ## A146005.P2868059714063033157

`A000045(n)+A264147(n)+A023607(n)`
-/

namespace A146005.P2868059714063033157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A264147 n + A023607 n)

end

end A146005.P2868059714063033157

namespace A146005

/-- `A000045(n)+A264147(n)+A023607(n)` -/
def P2868059714063033157.Spec : Prop :=
  ∀ n, P2868059714063033157.a n = A146005 n

end A146005

/-! ## A146005.P15371069370657134843

`A045925(n)+A264147(n)+A094588(n)`
-/

namespace A146005.P15371069370657134843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 n + (A264147 n + A094588 n)

end

end A146005.P15371069370657134843

namespace A146005

/-- `A045925(n)+A264147(n)+A094588(n)` -/
def P15371069370657134843.Spec : Prop :=
  ∀ n, P15371069370657134843.a n = A146005 n

end A146005

/-! ## A146005.P14644792838509520762

`A023607(n)+A023607(n)-A045925(n)`
-/

namespace A146005.P14644792838509520762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023607 n + (A023607 n - A045925 n)

end

end A146005.P14644792838509520762

namespace A146005

/-- `A023607(n)+A023607(n)-A045925(n)` -/
def P14644792838509520762.Spec : Prop :=
  ∀ n, P14644792838509520762.a n = A146005 n

end A146005

/-! ## A146005.P10721618247458625541

`A023607(n)+A094588(n)-A000045(n)`
-/

namespace A146005.P10721618247458625541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023607 n + (A094588 n - A000045 n)

end

end A146005.P10721618247458625541

namespace A146005

/-- `A023607(n)+A094588(n)-A000045(n)` -/
def P10721618247458625541.Spec : Prop :=
  ∀ n, P10721618247458625541.a n = A146005 n

end A146005

/-! ## A146005.P11867864132424998534

`A023607(n)+A354044(n)-A099920(n)`
-/

namespace A146005.P11867864132424998534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023607 n + (A354044 n - A099920 n)

end

end A146005.P11867864132424998534

namespace A146005

/-- `A023607(n)+A354044(n)-A099920(n)` -/
def P11867864132424998534.Spec : Prop :=
  ∀ n, P11867864132424998534.a n = A146005 n

end A146005

/-! ## A146005.P5399776520239234507

`A088209(n)+A178521(n)-A007502(n+1)`
-/

namespace A146005.P5399776520239234507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088209 n + (A178521 n - A007502 (n + 1))

end

end A146005.P5399776520239234507

namespace A146005

/-- `A088209(n)+A178521(n)-A007502(n+1)` -/
def P5399776520239234507.Spec : Prop :=
  ∀ n, P5399776520239234507.a n = A146005 n

end A146005

/-! ## A146005.P18335322270876859893

`A088209(n)+A264147(n)-A000045(n+1)`
-/

namespace A146005.P18335322270876859893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088209 n + (A264147 n - A000045 (n + 1))

end

end A146005.P18335322270876859893

namespace A146005

/-- `A088209(n)+A264147(n)-A000045(n+1)` -/
def P18335322270876859893.Spec : Prop :=
  ∀ n, P18335322270876859893.a n = A146005 n

end A146005

/-! ## A146005.P8870122421170441828

`A088209(n)+A354044(n)-A136391(n+2)`
-/

namespace A146005.P8870122421170441828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088209 n + (A354044 n - A136391 (n + 2))

end

end A146005.P8870122421170441828

namespace A146005

/-- `A088209(n)+A354044(n)-A136391(n+2)` -/
def P8870122421170441828.Spec : Prop :=
  ∀ n, P8870122421170441828.a n = A146005 n

end A146005

/-! ## A146005.P18124258663529252182

`A136391(n+1)+A264147(n+1)+A264147(n)`
-/

namespace A146005.P18124258663529252182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136391 (n + 1) + (A264147 (n + 1) + A264147 n)

end

end A146005.P18124258663529252182

namespace A146005

/-- `A136391(n+1)+A264147(n+1)+A264147(n)` -/
def P18124258663529252182.Spec : Prop :=
  ∀ n, P18124258663529252182.a n = A146005 n

end A146005

/-! ## A146005.P8265521634409354034

`A023607(n+1)+A264147(n)-A007502(n+1)`
-/

namespace A146005.P8265521634409354034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023607 (n + 1) + (A264147 n - A007502 (n + 1))

end

end A146005.P8265521634409354034

namespace A146005

/-- `A023607(n+1)+A264147(n)-A007502(n+1)` -/
def P8265521634409354034.Spec : Prop :=
  ∀ n, P8265521634409354034.a n = A146005 n

end A146005

/-!
# A146006: Number of n X n binary arrays with all ones connected only in a 3X3 tee 1,1 1,2 1,3 2,2 3,2 in any orientation.

The programs for A146006, there is no canonical definition to state claims against.
-/

/-! ## A146006.P10095788269212489158

`A146008(2*(n+2))`
-/

namespace A146006.P10095788269212489158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146008 (2 * (n + 2))

end

end A146006.P10095788269212489158

/-! ## A146006.P815573803303854332

`A326788(A099152(n))+A318664(n+1)`
-/

namespace A146006.P815573803303854332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326788 (A099152 n).toNat + A318664 (n + 1)

end

end A146006.P815573803303854332

/-!
# A146007: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 3 X 3 tee 1,1 1,2 1,3 2,2 3,2 in any orientation.

The programs for A146007, there is no canonical definition to state claims against.
-/

/-! ## A146007.P8872486665895415623

`A050521(A149295(n))`
-/

namespace A146007.P8872486665895415623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050521 (A149295 n).toNat

end

end A146007.P8872486665895415623

/-! ## A146007.P3724976666224467303

`A058871(A141539(n!))`
-/

namespace A146007.P3724976666224467303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058871 (A141539 (Nat.factorial n)).toNat

end

end A146007.P3724976666224467303

/-! ## A146007.P201682613822546975

`A108438(A232964(n+1))`
-/

namespace A146007.P201682613822546975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108438 (A232964 (n + 1)).toNat

end

end A146007.P201682613822546975

/-!
# A146008: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 3X3 tee 1,1 1,2 1,3 2,2 3,2 in any orientation.

The programs for A146008, there is no canonical definition to state claims against.
-/

/-! ## A146008.P6722852880493286074

`A128227(floor(sqrt(A003514(n))))`
-/

namespace A146008.P6722852880493286074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (Int.sqrt (A003514 n)).toNat

end

end A146008.P6722852880493286074

/-! ## A146008.P6007659218325057394

`A002260(ceil(sqrt(A003514(n))))`
-/

namespace A146008.P6007659218325057394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 ⌈Real.sqrt (A003514 n : ℝ)⌉.toNat

end

end A146008.P6007659218325057394

/-! ## A146008.P9367652262701214799

`∏{p}[A279861(A245619(n)), #]`
-/

namespace A146008.P9367652262701214799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279861 (A245619 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A146008.P9367652262701214799

/-! ## A146008.P73159177426972851

`A002635(A148416(n)-A142151(n))`
-/

namespace A146008.P73159177426972851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (A148416 n - A142151 n).toNat

end

end A146008.P73159177426972851

/-! ## A146008.P12048644264756130391

`gcd(A080928(2*(n+2)), A382201(A003242(n)))`
-/

namespace A146008.P12048644264756130391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080928 (2 * (n + 2))) (A382201 (A003242 n).toNat)

end

end A146008.P12048644264756130391

/-!
# A146009: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 3X3 tee 1,1 1,2 1,3 2,2 3,2 in any orientation.

The programs for A146009, there is no canonical definition to state claims against.
-/

/-! ## A146009.P8372915344306541446

`A146011(2*(n+2))`
-/

namespace A146009.P8372915344306541446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146011 (2 * (n + 2))

end

end A146009.P8372915344306541446

/-!
# A146010: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 3X3 tee 1,1 1,2 1,3 2,2 3,2 in any orientation.

The programs for A146010, there is no canonical definition to state claims against.
-/

/-! ## A146010.P14687711180897195518

`A166158(A146156(n+1))`
-/

namespace A146010.P14687711180897195518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166158 (A146156 (n + 1)).toNat

end

end A146010.P14687711180897195518

/-! ## A146010.P3161486088044401260

`A132667(A118330(n))`
-/

namespace A146010.P3161486088044401260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132667 (A118330 n).toNat

end

end A146010.P3161486088044401260

/-! ## A146010.P1822197670882144247

`A241898(A363431(n))`
-/

namespace A146010.P1822197670882144247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241898 (A363431 n).toNat

end

end A146010.P1822197670882144247

/-! ## A146010.P13944809502259764987

`A113221(A146220(n+1))`
-/

namespace A146010.P13944809502259764987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113221 (A146220 (n + 1)).toNat

end

end A146010.P13944809502259764987

/-! ## A146010.P12415390610233540862

`A347623(A357288(n+1))`
-/

namespace A146010.P12415390610233540862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347623 (A357288 (n + 1)).toNat

end

end A146010.P12415390610233540862

/-!
# A146011: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 3X3 tee 1,1 1,2 1,3 2,2 3,2 in any orientation.

The programs for A146011, there is no canonical definition to state claims against.
-/

/-! ## A146011.P9910066023115086624

`A146418(A382083(n+1))`
-/

namespace A146011.P9910066023115086624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146418 (A382083 (n + 1)).toNat

end

end A146011.P9910066023115086624

/-! ## A146011.P431006577449697134

`A146418(A248502(n+2))`
-/

namespace A146011.P431006577449697134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146418 (A248502 (n + 2)).toNat

end

end A146011.P431006577449697134

/-! ## A146011.P1537369583435402883

`A146418(A250039(n+2))`
-/

namespace A146011.P1537369583435402883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146418 (A250039 (n + 2)).toNat

end

end A146011.P1537369583435402883

/-! ## A146011.P11751555824037839129

`A146418(A004885(n+1)+3)`
-/

namespace A146011.P11751555824037839129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146418 (A004885 (n + 1) + 3).toNat

end

end A146011.P11751555824037839129

/-! ## A146011.P10339656243883327407

`A146418(A004896(n+1)+3)`
-/

namespace A146011.P10339656243883327407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146418 (A004896 (n + 1) + 3).toNat

end

end A146011.P10339656243883327407

/-!
# A146012: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 3X3 tee 1,1 1,2 1,3 2,2 3,2 in any orientation.

The programs for A146012, there is no canonical definition to state claims against.
-/

/-! ## A146012.P12008381951146646730

`∏{e}[18*a(n-1), #]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=3`
-/

namespace A146012.P12008381951146646730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 3, 3] fun n f1 =>
  18 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A146012.P12008381951146646730

/-! ## A146012.P7697564074200619598

`A177040(floor((n²-n)/7)²)`
-/

namespace A146012.P7697564074200619598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177040 (⌊((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 7⌋ ^ 2).toNat

end

end A146012.P7697564074200619598

/-! ## A146012.P9858388557191041756

`A164529(A178852(n))`
-/

namespace A146012.P9858388557191041756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164529 (A178852 n).toNat

end

end A146012.P9858388557191041756

/-! ## A146012.P8818424291744278799

`A086626(A276658(n))`
-/

namespace A146012.P8818424291744278799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086626 (A276658 n).toNat

end

end A146012.P8818424291744278799

/-! ## A146012.P343211310628898547

`A164529(A215067(n))`
-/

namespace A146012.P343211310628898547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164529 (A215067 n).toNat

end

end A146012.P343211310628898547

/-!
# A146013: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 3X3 tee 1,1 1,2 1,3 2,2 3,2 in any orientation.

The programs for A146013, there is no canonical definition to state claims against.
-/

/-! ## A146013.P2070441868478120844

`A130044(A077937(n)-A000330(n))`
-/

namespace A146013.P2070441868478120844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130044 (A077937 n - A000330 n).toNat

end

end A146013.P2070441868478120844

/-! ## A146013.P5149204641681386380

`A204892(A000984(n))-A318588(n+1)`
-/

namespace A146013.P5149204641681386380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A000984 n).toNat - A318588 (n + 1)

end

end A146013.P5149204641681386380

/-! ## A146013.P11308688134739067554

`or(A065333(n+1), A132270(A149055(n)))`
-/

namespace A146013.P11308688134739067554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A065333 (n + 1)) (A132270 (A149055 n).toNat)

end

end A146013.P11308688134739067554

/-! ## A146013.P144978680284225135

`or(A132270(A149055(n)), A191322(n+4))`
-/

namespace A146013.P144978680284225135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A132270 (A149055 n).toNat) (A191322 (n + 4))

end

end A146013.P144978680284225135

/-!
# A146015: Number of n X n binary arrays with all ones connected only in a 2X4 el 1,1 1,2 1,3 1,4 2,4 with any orientation.

The programs for A146015, there is no canonical definition to state claims against.
-/

/-! ## A146015.P6954740863577129362

`A146017(2*(n+2))`
-/

namespace A146015.P6954740863577129362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146017 (2 * (n + 2))

end

end A146015.P6954740863577129362

/-! ## A146015.P8542521710960027270

`or(1, A146017(A032583(n+1)))`
-/

namespace A146015.P8542521710960027270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146017 (A032583 (n + 1)).toNat)

end

end A146015.P8542521710960027270

/-! ## A146015.P13178726271797766091

`or(1, A146017(A144396(n+1)))`
-/

namespace A146015.P13178726271797766091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146017 (A144396 (n + 1)).toNat)

end

end A146015.P13178726271797766091

/-! ## A146015.P7718225990213814717

`∏{d}[A144396(n+1), A146017(#)]`
-/

namespace A146015.P7718225990213814717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A146017 d

end

end A146015.P7718225990213814717

/-! ## A146015.P5275715632280916201

`A146017(A144396(n+1))/A007318(∑[n])`
-/

namespace A146015.P5275715632280916201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146017 (A144396 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A146015.P5275715632280916201

/-!
# A146017: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 2X4 el 1,1 1,2 1,3 1,4 2,4 with any orientation.

The programs for A146017, there is no canonical definition to state claims against.
-/

/-! ## A146017.P4698635833671879511

`A013597(A003106(n)^A003106(n))`
-/

namespace A146017.P4698635833671879511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 (SequenceMachineLib.roundAway ((A003106 n : ℚ) ^ (A003106 n : ℤ))).toNat

end

end A146017.P4698635833671879511

/-! ## A146017.P7212359669902288892

`A013597(A325691(n)^A325691(n))`
-/

namespace A146017.P7212359669902288892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 (SequenceMachineLib.roundAway ((A325691 n : ℚ) ^ (A325691 n : ℤ))).toNat

end

end A146017.P7212359669902288892

/-! ## A146017.P15511536222346851490

`A013597(A345163(n)^A345163(n))`
-/

namespace A146017.P15511536222346851490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 (SequenceMachineLib.roundAway ((A345163 n : ℚ) ^ (A345163 n : ℤ))).toNat

end

end A146017.P15511536222346851490

/-! ## A146017.P7161991145517097729

`A008284(A171979(A171979(A240303(A362612(n)))))`
-/

namespace A146017.P7161991145517097729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A171979 (A171979 (A240303 (A362612 n).toNat).toNat).toNat).toNat

end

end A146017.P7161991145517097729

/-!
# A146018: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 2X4 el 1,1 1,2 1,3 1,4 2,4 with any orientation.

The programs for A146018, there is no canonical definition to state claims against.
-/

/-! ## A146018.P16459630939468237017

`A146020(2*n+3)`
-/

namespace A146018.P16459630939468237017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146020 (2 * n + 3)

end

end A146018.P16459630939468237017

/-! ## A146018.P9775048790871446381

`or(1, A146020(A144396(n+1)))`
-/

namespace A146018.P9775048790871446381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146020 (A144396 (n + 1)).toNat)

end

end A146018.P9775048790871446381

/-! ## A146018.P10195105430316535131

`∏{d}[A144396(n+1), A146020(#)]`
-/

namespace A146018.P10195105430316535131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A146020 d

end

end A146018.P10195105430316535131

/-! ## A146018.P3940725982697354213

`A146020(A144396(n+1))/A007318(∑[n])`
-/

namespace A146018.P3940725982697354213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146020 (A144396 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A146018.P3940725982697354213

/-! ## A146018.P13359248682537177206

`A146020(A144396(n+1))%A183470(n+1)`
-/

namespace A146018.P13359248682537177206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146020 (A144396 (n + 1)).toNat) (A183470 (n + 1))

end

end A146018.P13359248682537177206

/-!
# A146019: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 2X4 el 1,1 1,2 1,3 1,4 2,4 with any orientation.

The programs for A146019, there is no canonical definition to state claims against.
-/

/-! ## A146019.P13853717735138881429

`ceil(A325388(ceil(ceil(2^(n-2)/2)/2))/2)`
-/

namespace A146019.P13853717735138881429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A325388 ⌈(⌈(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) / 2⌉ : ℚ) / 2⌉.toNat : ℚ) / 2⌉

end

end A146019.P13853717735138881429

/-! ## A146019.P12428861978495610366

`A358992(A036761(n))`
-/

namespace A146019.P12428861978495610366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358992 (A036761 n).toNat

end

end A146019.P12428861978495610366

/-! ## A146019.P6190597889280445385

`A347624(A280152(∑[n]))`
-/

namespace A146019.P6190597889280445385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347624 (A280152 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A146019.P6190597889280445385

/-! ## A146019.P9109070482302945017

`A342194(A075126(n+2))`
-/

namespace A146019.P9109070482302945017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342194 (A075126 (n + 2)).toNat

end

end A146019.P9109070482302945017

/-! ## A146019.P14845117478169934343

`A137735(C(A124973(n), 2))`
-/

namespace A146019.P14845117478169934343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (Nat.choose (A124973 n).toNat 2)

end

end A146019.P14845117478169934343

/-!
# A146020: Number of n X n binary arrays symmetric about the diagonal and under 90-degree rotation with all ones connected only in a 2 X 4 el 1,1 1,2 1,3 1,4 2,4 with any orientation.

The programs for A146020, there is no canonical definition to state claims against.
-/

/-! ## A146020.P14724533354497164828

`A106317(A146450(n+1))`
-/

namespace A146020.P14724533354497164828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106317 (A146450 (n + 1)).toNat

end

end A146020.P14724533354497164828

/-! ## A146020.P3983689668320572305

`A175857(A146458(n+1))`
-/

namespace A146020.P3983689668320572305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175857 (A146458 (n + 1)).toNat

end

end A146020.P3983689668320572305

/-! ## A146020.P15112192564298678

`A216956(A147144(n+1))`
-/

namespace A146020.P15112192564298678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216956 (A147144 (n + 1)).toNat

end

end A146020.P15112192564298678

/-! ## A146020.P13048793820244705860

`A238256(A146474(n+1))`
-/

namespace A146020.P13048793820244705860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238256 (A146474 (n + 1)).toNat

end

end A146020.P13048793820244705860

/-! ## A146020.P5443913214790780273

`A239931(A146132(n+1))`
-/

namespace A146020.P5443913214790780273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239931 (A146132 (n + 1)).toNat

end

end A146020.P5443913214790780273

/-!
# A146021: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 2X4 el 1,1 1,2 1,3 1,4 2,4 with any orientation.

The programs for A146021, there is no canonical definition to state claims against.
-/

/-! ## A146021.P13031857438173368463

`A368275(A047166(n+1))`
-/

namespace A146021.P13031857438173368463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368275 (A047166 (n + 1)).toNat

end

end A146021.P13031857438173368463

/-! ## A146021.P15859387385993185480

`xor(4, or(1, A265568(A351343(n))))-4`
-/

namespace A146021.P15859387385993185480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (Int.lor 1 (A265568 (A351343 n).toNat)) - 4

end

end A146021.P15859387385993185480

/-! ## A146021.P9737244156176502746

`and(A088357(n), A324761(A004149(n)))`
-/

namespace A146021.P9737244156176502746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088357 n) (A324761 (A004149 n).toNat)

end

end A146021.P9737244156176502746

/-! ## A146021.P8509674667508304624

`and(A033851(n+1), A324761(A004149(n)))`
-/

namespace A146021.P8509674667508304624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033851 (n + 1)) (A324761 (A004149 n).toNat)

end

end A146021.P8509674667508304624

/-! ## A146021.P14798929464144809662

`and(A088357(n), A324761(A177794(n+1)))`
-/

namespace A146021.P14798929464144809662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088357 n) (A324761 (A177794 (n + 1)).toNat)

end

end A146021.P14798929464144809662

/-!
# A146022: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 2X4 el 1,1 1,2 1,3 1,4 2,4 with any orientation.

The programs for A146022, there is no canonical definition to state claims against.
-/

/-! ## A146022.P17648523380124793451

`A171435(A005496(n²))`
-/

namespace A146022.P17648523380124793451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A005496 (n ^ 2)).toNat

end

end A146022.P17648523380124793451

/-! ## A146022.P2349568140979231935

`A274613(∑[A274959(n+4)])`
-/

namespace A146022.P2349568140979231935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274959 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274613 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A146022.P2349568140979231935

/-! ## A146022.P2898119239971595253

`A005496(n²%A002135(n))`
-/

namespace A146022.P2898119239971595253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (Int.tmod (n ^ 2 : ℤ) (A002135 n)).toNat

end

end A146022.P2898119239971595253

/-!
# A146023: Triangle read by rows, square of A027293.

The programs for A146023, there is no canonical definition to state claims against.
-/

/-! ## A146023.P3332467855235965445

`A000712(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A146023.P3332467855235965445
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A146023.P3332467855235965445

/-! ## A146023.P13131207037891047266

`A000712(C(comp[∑[n]]-n, 2)-n-1)`
-/

namespace A146023.P13131207037891047266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - 1).toNat

end

end A146023.P13131207037891047266

/-! ## A146023.P15574484166281386782

`A000712(A025581(n))`
-/

namespace A146023.P15574484166281386782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (A025581 n).toNat

end

end A146023.P15574484166281386782

/-! ## A146023.P10359647541040136894

`A000712(val(A130321(n), 2))`
-/

namespace A146023.P10359647541040136894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (SequenceMachineLib.valuation (A130321 n).toNat 2)

end

end A146023.P10359647541040136894

/-! ## A146023.P14602462769331165111

`A000712(A004736(n+1)-1)`
-/

namespace A146023.P14602462769331165111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (A004736 (n + 1) - 1).toNat

end

end A146023.P14602462769331165111

/-! ## A146023.P16510472498224967087

`A000712(A000096(A003056(n))-n)`
-/

namespace A146023.P16510472498224967087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (A000096 (A003056 n).toNat - (n : ℤ)).toNat

end

end A146023.P16510472498224967087

/-! ## A146023.P14847406407486472897

`A000712(A004736(n+2)%A004736(n+1))`
-/

namespace A146023.P14847406407486472897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (Int.tmod (A004736 (n + 2)) (A004736 (n + 1))).toNat

end

end A146023.P14847406407486472897

/-! ## A146023.P1249347199327658963

`A103923(A292565(n+1))`
-/

namespace A146023.P1249347199327658963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103923 (A292565 (n + 1)).toNat

end

end A146023.P1249347199327658963

/-! ## A146023.P10830157323219230951

`A103923(2*A055461(n+1))`
-/

namespace A146023.P10830157323219230951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103923 (2 * A055461 (n + 1)).toNat

end

end A146023.P10830157323219230951

/-! ## A146023.P3861619925622612846

`A301830(A130321(n))`
-/

namespace A146023.P3861619925622612846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301830 (A130321 n).toNat

end

end A146023.P3861619925622612846

/-!
# A146026: Numbers that can be written from base 2 to base 9 using only the digits 0 to 3.

The programs for A146026, there is no canonical definition to state claims against.
-/

/-! ## A146026.P8919526771907566538

`∑[A241734(3*A239261(3*n))]`
-/

namespace A146026.P8919526771907566538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241734 (3 * A239261 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146026.P8919526771907566538

/-! ## A146026.P13054334870481488835

`∑[∑{e}[A022183(n), A000110(2*n)-#]]+n`
-/

namespace A146026.P13054334870481488835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022183 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (A000110 (2 * n) - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A146026.P13054334870481488835

/-!
# A146030: Number of n X n binary arrays with all 1's connected only in a 3 X 3 el 1,1 1,2 1,3 2,3 3,3 in any orientation.

The programs for A146030, there is no canonical definition to state claims against.
-/

/-! ## A146030.P10060158259960056595

`A146032(2*(n+2))`
-/

namespace A146030.P10060158259960056595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146032 (2 * (n + 2))

end

end A146030.P10060158259960056595

/-! ## A146030.P4618157019270743058

`∏{p}[A146032(A245586(n+1)), #]`
-/

namespace A146030.P4618157019270743058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146032 (A245586 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A146030.P4618157019270743058

/-! ## A146030.P14604407666261126751

`∏{p}[A146032(A044051(n+4)), #]`
-/

namespace A146030.P14604407666261126751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146032 (A044051 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A146030.P14604407666261126751

/-! ## A146030.P7328288111703294718

`A146032(A245586(n+1))%A346997(n)`
-/

namespace A146030.P7328288111703294718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146032 (A245586 (n + 1)).toNat) (A346997 n)

end

end A146030.P7328288111703294718

/-!
# A146032: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 3X3 el 1,1 1,2 1,3 2,3 3,3 in any orientation.

The programs for A146032, there is no canonical definition to state claims against.
-/

/-! ## A146032.P17579709697002195150

`A146030(floor(n/2)^floor(atan(n)))`
-/

namespace A146032.P17579709697002195150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146030 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / 2⌋ : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A146032.P17579709697002195150

/-! ## A146032.P17498909147237864499

`A146030(floor(n/2)+C(n, n²))`
-/

namespace A146032.P17498909147237864499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146030 (⌊(n : ℚ) / 2⌋ + (Nat.choose n (n ^ 2) : ℤ)).toNat

end

end A146032.P17498909147237864499

/-! ## A146032.P9492365059784603977

`A146030(gcd(C(n, n²), floor(n/2)))`
-/

namespace A146032.P9492365059784603977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146030 (Int.gcd (Nat.choose n (n ^ 2) : ℤ) ⌊(n : ℚ) / 2⌋)

end

end A146032.P9492365059784603977

/-! ## A146032.P8656397640486612927

`A146030(or(C(n, n²), floor(n/2)))`
-/

namespace A146032.P8656397640486612927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146030 (Int.lor (Nat.choose n (n ^ 2) : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A146032.P8656397640486612927

/-! ## A146032.P16394915525901094256

`A146030(∑[A267043(n)])`
-/

namespace A146032.P16394915525901094256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146030 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A146032.P16394915525901094256

/-!
# A146033: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 3X3 el 1,1 1,2 1,3 2,3 3,3 in any orientation.

The programs for A146033, there is no canonical definition to state claims against.
-/

/-! ## A146033.P11036420156810497364

`A146035(2*(n+2))`
-/

namespace A146033.P11036420156810497364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146035 (2 * (n + 2))

end

end A146033.P11036420156810497364

/-! ## A146033.P8129100690462754880

`or(1, A146035(A103517(n+1)))`
-/

namespace A146033.P8129100690462754880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146035 (A103517 (n + 1)).toNat)

end

end A146033.P8129100690462754880

/-! ## A146033.P3040568123019300981

`or(1, A146035(A144396(n+1)))`
-/

namespace A146033.P3040568123019300981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146035 (A144396 (n + 1)).toNat)

end

end A146033.P3040568123019300981

/-! ## A146033.P17090432895815470162

`A146035(A144396(n+1))%A034314(n)`
-/

namespace A146033.P17090432895815470162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146035 (A144396 (n + 1)).toNat) (A034314 n)

end

end A146033.P17090432895815470162

/-! ## A146033.P17899485448557457410

`A146035(A144396(n+1))/A007318(∑[n])`
-/

namespace A146033.P17899485448557457410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146035 (A144396 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A146033.P17899485448557457410

/-!
# A146034: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 3X3 el 1,1 1,2 1,3 2,3 3,3 in any orientation.

The programs for A146034, there is no canonical definition to state claims against.
-/

/-! ## A146034.P15799532520902587661

`or(1, A003987(A147681(n)))`
-/

namespace A146034.P15799532520902587661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A003987 (A147681 n).toNat)

end

end A146034.P15799532520902587661

/-! ## A146034.P855042863251521773

`or(1, A143999(A027376(n)))`
-/

namespace A146034.P855042863251521773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A143999 (A027376 n).toNat)

end

end A146034.P855042863251521773

/-! ## A146034.P10431373768852981226

`A003987(or(A020077(n), A034386(n)))`
-/

namespace A146034.P10431373768852981226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (Int.lor (A020077 n) (A034386 n)).toNat

end

end A146034.P10431373768852981226

/-! ## A146034.P3510057101463860870

`or(A000196(A104429(n)), A154921(n))`
-/

namespace A146034.P3510057101463860870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000196 (A104429 n).toNat) (A154921 n)

end

end A146034.P3510057101463860870

/-!
# A146035: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 3X3 el 1,1 1,2 1,3 2,3 3,3 in any orientation.

The programs for A146035, there is no canonical definition to state claims against.
-/

/-! ## A146035.P11241831755116131060

`A146033(floor(n/2)^round(atan(n)/2))`
-/

namespace A146035.P11241831755116131060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146033 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / 2⌋ : ℚ) ^ (SequenceMachineLib.roundAway (Real.arctan (n : ℝ) / 2) : ℤ))).toNat

end

end A146035.P11241831755116131060

/-! ## A146035.P17757691559613670455

`A146033(∑[A267043(n)])`
-/

namespace A146035.P17757691559613670455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146033 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A146035.P17757691559613670455

/-! ## A146035.P18029702990731112007

`A146033(A065033(abs(1-n)))`
-/

namespace A146035.P18029702990731112007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146033 (A065033 |1 - (n : ℤ)|.toNat).toNat

end

end A146035.P18029702990731112007

/-! ## A146035.P16610275564753903520

`A146033(A008619(abs(2-n)))`
-/

namespace A146035.P16610275564753903520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146033 (A008619 |2 - (n : ℤ)|.toNat).toNat

end

end A146035.P16610275564753903520

/-! ## A146035.P1268920477210924911

`A146033(A028310(floor(n/2)))`
-/

namespace A146035.P1268920477210924911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146033 (A028310 ⌊(n : ℚ) / 2⌋.toNat).toNat

end

end A146035.P1268920477210924911

/-!
# A146036: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 3X3 el 1,1 1,2 1,3 2,3 3,3 in any orientation.

The programs for A146036, there is no canonical definition to state claims against.
-/

/-! ## A146036.P15796984773822945215

`or(A113406(A113387(n)), A147245(n+1))`
-/

namespace A146036.P15796984773822945215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A113406 (A113387 n).toNat) (A147245 (n + 1))

end

end A146036.P15796984773822945215

/-! ## A146036.P12926308867786723142

`or(A113406(A113392(n)), A147245(n+1))`
-/

namespace A146036.P12926308867786723142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A113406 (A113392 n).toNat) (A147245 (n + 1))

end

end A146036.P12926308867786723142

/-! ## A146036.P14146922247195043834

`or(A147245(n+1), A342789(A036653(n)))`
-/

namespace A146036.P14146922247195043834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147245 (n + 1)) (A342789 (A036653 n).toNat)

end

end A146036.P14146922247195043834

/-! ## A146036.P5122513654612215706

`A241466(A014963(n+1))+A147245(n+1)`
-/

namespace A146036.P5122513654612215706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241466 (A014963 (n + 1)).toNat + A147245 (n + 1)

end

end A146036.P5122513654612215706

/-! ## A146036.P2291130933833627735

`A280443(A002098(n))`
-/

namespace A146036.P2291130933833627735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280443 (A002098 n).toNat

end

end A146036.P2291130933833627735

/-!
# A146037: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 3X3 el 1,1 1,2 1,3 2,3 3,3 in any orientation.

The programs for A146037, there is no canonical definition to state claims against.
-/

/-! ## A146037.P1573993215590009827

`or(A266742(A336103(n)), A349401(n))`
-/

namespace A146037.P1573993215590009827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266742 (A336103 n).toNat) (A349401 n)

end

end A146037.P1573993215590009827

/-! ## A146037.P9332091297358366765

`A105519(A006318(n))+A036039(n+1)`
-/

namespace A146037.P9332091297358366765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105519 (A006318 n).toNat + A036039 (n + 1)

end

end A146037.P9332091297358366765

/-!
# A146038: Number of n X n binary arrays with all ones connected only in a 2X4 tee 1,1 1,2 1,3 2,3 1,4 in any orientation.

The programs for A146038, there is no canonical definition to state claims against.
-/

/-! ## A146038.P14021361142165899435

`A146040(2*(n+2))`
-/

namespace A146038.P14021361142165899435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146040 (2 * (n + 2))

end

end A146038.P14021361142165899435

/-! ## A146038.P8009870077573988185

`or(1, A146040(A138830(n+1)))`
-/

namespace A146038.P8009870077573988185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146040 (A138830 (n + 1)).toNat)

end

end A146038.P8009870077573988185

/-! ## A146038.P18403382284884306590

`or(1, A146040(A144396(n+1)))`
-/

namespace A146038.P18403382284884306590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146040 (A144396 (n + 1)).toNat)

end

end A146038.P18403382284884306590

/-! ## A146038.P17190918315635837808

`A146040(A144396(n+1))^A007318(∑[n])`
-/

namespace A146038.P17190918315635837808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146040 (A144396 (n + 1)).toNat : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A146038.P17190918315635837808

/-! ## A146038.P1211057340941885683

`A146040(A144396(n+1))/A000041(C(2, n+2))`
-/

namespace A146038.P1211057340941885683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146040 (A144396 (n + 1)).toNat : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A146038.P1211057340941885683

/-!
# A146039: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 2X4 tee 1,1 1,2 1,3 2,3 1,4 in any orientation.

The programs for A146039, there is no canonical definition to state claims against.
-/

/-! ## A146039.P8820621895819984997

`A146128(gcd((n+1)²/∏{p}[n+1, #], ∑[6*n]))`
-/

namespace A146039.P8820621895819984997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146128 (Int.gcd (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

end

end A146039.P8820621895819984997

/-! ## A146039.P5796534904495029729

`A131152(A146128(n+1))`
-/

namespace A146039.P5796534904495029729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131152 (A146128 (n + 1)).toNat

end

end A146039.P5796534904495029729

/-! ## A146039.P12842792767494659694

`A146128(A000005(5^n))`
-/

namespace A146039.P12842792767494659694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146128 (A000005 (5 ^ n)).toNat

end

end A146039.P12842792767494659694

/-! ## A146039.P18039820931724875374

`A146128(A146129(n+1)+n)`
-/

namespace A146039.P18039820931724875374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146128 (A146129 (n + 1) + (n : ℤ)).toNat

end

end A146039.P18039820931724875374

/-!
# A146040: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all 1's connected only in a 2 X 4 tee 1,1 1,2 1,3 2,3 1,4 in any orientation.

The programs for A146040, there is no canonical definition to state claims against.
-/

/-! ## A146040.P5778417640447331042

`A146038(ceil(A024867(n+2)/A001840(2*(n+2))))`
-/

namespace A146040.P5778417640447331042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146038 ⌈(A024867 (n + 2) : ℚ) / (A001840 (2 * (n + 2)) : ℚ)⌉.toNat

end

end A146040.P5778417640447331042

/-! ## A146040.P6431952525696478521

`A246675(A146129(n+1))`
-/

namespace A146040.P6431952525696478521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246675 (A146129 (n + 1)).toNat

end

end A146040.P6431952525696478521

/-! ## A146040.P15025333397483095603

`A293262(A146471(n+1))`
-/

namespace A146040.P15025333397483095603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293262 (A146471 (n + 1)).toNat

end

end A146040.P15025333397483095603

/-! ## A146040.P2800138754458637587

`A146129(C(A161950(n+1), n))`
-/

namespace A146040.P2800138754458637587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146129 (Nat.choose (A161950 (n + 1)).toNat n)

end

end A146040.P2800138754458637587

/-! ## A146040.P3764935935772318609

`filter[A146129(n+1), A005713(#)]`
-/

namespace A146040.P3764935935772318609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005713 (f1 j).toNat = 1) n)

end

end A146040.P3764935935772318609

/-!
# A146041: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 2X4 tee 1,1 1,2 1,3 2,3 1,4 in any orientation.

The programs for A146041, there is no canonical definition to state claims against.
-/

/-! ## A146041.P8555980162648443982

`A146043(2*n+3)`
-/

namespace A146041.P8555980162648443982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146043 (2 * n + 3)

end

end A146041.P8555980162648443982

/-! ## A146041.P483236668705803417

`or(1, A146043(A111305(n+1)))`
-/

namespace A146041.P483236668705803417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146043 (A111305 (n + 1)).toNat)

end

end A146041.P483236668705803417

/-! ## A146041.P17508624657614645985

`or(1, A146043(A325038(n+1)))`
-/

namespace A146041.P17508624657614645985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146043 (A325038 (n + 1)).toNat)

end

end A146041.P17508624657614645985

/-! ## A146041.P9156246859758978158

`A146043(A111305(n+1))%A190339(n)`
-/

namespace A146041.P9156246859758978158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146043 (A111305 (n + 1)).toNat) (A190339 n)

end

end A146041.P9156246859758978158

/-! ## A146041.P14576865452045769205

`A146043(A325038(n+1))%A190339(n)`
-/

namespace A146041.P14576865452045769205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146043 (A325038 (n + 1)).toNat) (A190339 n)

end

end A146041.P14576865452045769205

/-!
# A146042: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 2X4 tee 1,1 1,2 1,3 2,3 1,4 in any orientation.

The programs for A146042, there is no canonical definition to state claims against.
-/

/-! ## A146042.P12103980438461314041

`or(1, ∑[A058932(n+3)])`
-/

namespace A146042.P12103980438461314041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058932 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A146042.P12103980438461314041

/-! ## A146042.P11915612908837517710

`or(1, A245879(n+1)-n)`
-/

namespace A146042.P11915612908837517710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A245879 (n + 1) - (n : ℤ))

end

end A146042.P11915612908837517710

/-! ## A146042.P14541805202031940908

`or(1, A106445(floor((sqrt(2)^n/3)²)))`
-/

namespace A146042.P14541805202031940908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A106445 ⌊(Real.sqrt (2 : ℝ) ^ n / 3) ^ 2⌋.toNat)

end

end A146042.P14541805202031940908

/-! ## A146042.P15704124129848649743

`or(1, A106447(floor((sqrt(2)^n/3)²)))`
-/

namespace A146042.P15704124129848649743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A106447 ⌊(Real.sqrt (2 : ℝ) ^ n / 3) ^ 2⌋.toNat)

end

end A146042.P15704124129848649743

/-! ## A146042.P13998859583743096910

`floor(2^(n+1)/(n+1))-A291166(floor(2^n/(n+1)))`
-/

namespace A146042.P13998859583743096910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ (n + 1) : ℚ) / (n + 1 : ℚ)⌋ - A291166 ⌊(2 ^ n : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A146042.P13998859583743096910

/-!
# A146043: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 2X4 tee 1,1 1,2 1,3 2,3 1,4 in any orientation.

The programs for A146043, there is no canonical definition to state claims against.
-/

/-! ## A146043.P13534580138138870627

`A146041(A322630(ceil(or(1, 1-n)²/8)))`
-/

namespace A146043.P13534580138138870627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146041 (A322630 ⌈(Int.lor 1 (1 - (n : ℤ)) ^ 2 : ℚ) / 8⌉.toNat).toNat

end

end A146043.P13534580138138870627

/-! ## A146043.P14345988334644777104

`A091208(A146185(n+1))`
-/

namespace A146043.P14345988334644777104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091208 (A146185 (n + 1)).toNat

end

end A146043.P14345988334644777104

/-! ## A146043.P4511330633352846119

`A356065(A146474(n+1))`
-/

namespace A146043.P4511330633352846119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356065 (A146474 (n + 1)).toNat

end

end A146043.P4511330633352846119

/-! ## A146043.P16962512168062081540

`A392698(A146132(n+1))`
-/

namespace A146043.P16962512168062081540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392698 (A146132 (n + 1)).toNat

end

end A146043.P16962512168062081540

/-!
# A146044: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 2X4 tee 1,1 1,2 1,3 2,3 1,4 in any orientation.

The programs for A146044, there is no canonical definition to state claims against.
-/

/-! ## A146044.P3289768751910021356

`A146837((val(n+1, 10)+1)*(n+2))`
-/

namespace A146044.P3289768751910021356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146837 ((SequenceMachineLib.valuation (n + 1) 10 + 1) * (n + 2))

end

end A146044.P3289768751910021356

/-! ## A146044.P14444964635937858050

`A146837(C(n+2, val(n+1, 10)+1))`
-/

namespace A146044.P14444964635937858050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146837 (Nat.choose (n + 2) (SequenceMachineLib.valuation (n + 1) 10 + 1))

end

end A146044.P14444964635937858050

/-! ## A146044.P5744451614275657960

`A146837(A032555(n+1)+1)`
-/

namespace A146044.P5744451614275657960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146837 (A032555 (n + 1) + 1).toNat

end

end A146044.P5744451614275657960

/-! ## A146044.P14236533620149057859

`A146837(A051022(n+1)+1)`
-/

namespace A146044.P14236533620149057859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146837 (A051022 (n + 1) + 1).toNat

end

end A146044.P14236533620149057859

/-! ## A146044.P16049493194030738459

`A146837(A056544(n+1)+1)`
-/

namespace A146044.P16049493194030738459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146837 (A056544 (n + 1) + 1).toNat

end

end A146044.P16049493194030738459

/-!
# A146045: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 2X4 tee 1,1 1,2 1,3 2,3 1,4 in any orientation.

The programs for A146045, there is no canonical definition to state claims against.
-/

/-! ## A146045.P3123890894889321103

`or(1, A002635(A073992(n+1)))`
-/

namespace A146045.P3123890894889321103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002635 (A073992 (n + 1)).toNat)

end

end A146045.P3123890894889321103

/-! ## A146045.P2807823877806184128

`A028900(A076316(n+1)-A145389(n))`
-/

namespace A146045.P2807823877806184128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (A076316 (n + 1) - A145389 n).toNat

end

end A146045.P2807823877806184128

/-!
# A146046: Number of n X n binary arrays with all ones connected only in a 2X2 block with tail 1,1 1,2 1,3 2,2 2,3 in any orientation.

The programs for A146046, there is no canonical definition to state claims against.
-/

/-! ## A146046.P9997643961311586672

`A146048(2*n+3)`
-/

namespace A146046.P9997643961311586672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146048 (2 * n + 3)

end

end A146046.P9997643961311586672

/-! ## A146046.P13809102687941724657

`∏{p}[A146048(A003151(n+1)), #]`
-/

namespace A146046.P13809102687941724657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146048 (A003151 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A146046.P13809102687941724657

/-! ## A146046.P4836389164750484253

`∏{p}[A146048(A187686(n+1)), #]`
-/

namespace A146046.P4836389164750484253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146048 (A187686 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A146046.P4836389164750484253

/-!
# A146047: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 2X2 block with tail 1,1 1,2 1,3 2,2 2,3 in any orientation.

The programs for A146047, there is no canonical definition to state claims against.
-/

/-! ## A146047.P10299811508839805876

`A187369(A221365(n)+A009635(n))`
-/

namespace A146047.P10299811508839805876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187369 (A221365 n + A009635 n).toNat

end

end A146047.P10299811508839805876

/-! ## A146047.P6752278163185520054

`A136206(A331331(n)+A278534(n))`
-/

namespace A146047.P6752278163185520054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136206 (A331331 n + A278534 n).toNat

end

end A146047.P6752278163185520054

/-! ## A146047.P3014097642639738914

`A099608(xor(A303742(n), A328358(n)))`
-/

namespace A146047.P3014097642639738914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099608 (Int.xor (A303742 n) (A328358 n)).toNat

end

end A146047.P3014097642639738914

/-!
# A146048: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 2X2 block with tail 1,1 1,2 1,3 2,2 2,3 in any orientation.

The programs for A146048, there is no canonical definition to state claims against.
-/

/-! ## A146048.P7284420664140790126

`A146046(floor(n/2)^floor(atan(n)))`
-/

namespace A146048.P7284420664140790126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146046 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / 2⌋ : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A146048.P7284420664140790126

/-! ## A146048.P15757881169396516829

`A146046(A028310(floor(n/2)))`
-/

namespace A146048.P15757881169396516829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146046 (A028310 ⌊(n : ℚ) / 2⌋.toNat).toNat

end

end A146048.P15757881169396516829

/-! ## A146048.P10823309856454424511

`A146046(gcd(floor(n/2), A336616(n)))`
-/

namespace A146048.P10823309856454424511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146046 (Int.gcd ⌊(n : ℚ) / 2⌋ (A336616 n))

end

end A146048.P10823309856454424511

/-! ## A146048.P8477385815425096231

`A146046(gcd(A000142(n), A004526(n)))`
-/

namespace A146048.P8477385815425096231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146046 (Int.gcd (A000142 n) (A004526 n))

end

end A146048.P8477385815425096231

/-! ## A146048.P10190889685651225597

`57%A005496(∏[gcd(2, n)]-1)`
-/

namespace A146048.P10190889685651225597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 57 (A005496 (∏ j ∈ Finset.range (n + 1), f1 j - 1))

end

end A146048.P10190889685651225597

/-!
# A146049: Number of n X n binary arrays symmetric about main diagonal with all 1's connected only in a 2 X 2 block with tail 1,1 1,2 1,3 2,2 2,3 in any orientation.

The programs for A146049, there is no canonical definition to state claims against.
-/

/-! ## A146049.P9001669644904111409

`A146051(2*(n+2))`
-/

namespace A146049.P9001669644904111409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146051 (2 * (n + 2))

end

end A146049.P9001669644904111409

/-! ## A146049.P13857145377713505438

`A069799(A146051(Δ[(n+1)²]))`
-/

namespace A146049.P13857145377713505438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069799 (A146051 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A146049.P13857145377713505438

/-! ## A146049.P5003504127499789687

`A325461(A009211(n))`
-/

namespace A146049.P5003504127499789687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325461 (A009211 n).toNat

end

end A146049.P5003504127499789687

/-!
# A146050: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 2X2 block with tail 1,1 1,2 1,3 2,2 2,3 in any orientation.

The programs for A146050, there is no canonical definition to state claims against.
-/

/-! ## A146050.P9235403482043025583

`A147500((n+1)^(val(n+1, 10)+1))`
-/

namespace A146050.P9235403482043025583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147500 ((n + 1) ^ (SequenceMachineLib.valuation (n + 1) 10 + 1))

end

end A146050.P9235403482043025583

/-! ## A146050.P3615292084982437360

`A156724(A132780(n))`
-/

namespace A146050.P3615292084982437360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156724 (A132780 n).toNat

end

end A146050.P3615292084982437360

/-! ## A146050.P17435686091211004357

`A147502(A310973(n))`
-/

namespace A146050.P17435686091211004357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147502 (A310973 n).toNat

end

end A146050.P17435686091211004357

/-! ## A146050.P8911437621570038284

`A147502(A310974(n))`
-/

namespace A146050.P8911437621570038284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147502 (A310974 n).toNat

end

end A146050.P8911437621570038284

/-! ## A146050.P32024735678790716

`A243714(A222589(n))`
-/

namespace A146050.P32024735678790716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243714 (A222589 n).toNat

end

end A146050.P32024735678790716

/-!
# A146051: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 2X2 block with tail 1,1 1,2 1,3 2,2 2,3 in any orientation.

The programs for A146051, there is no canonical definition to state claims against.
-/

/-! ## A146051.P143294138434389640

`A103841(A146911(n+1))`
-/

namespace A146051.P143294138434389640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103841 (A146911 (n + 1)).toNat

end

end A146051.P143294138434389640

/-! ## A146051.P10721230860386994620

`A131319(A145957(n+1))`
-/

namespace A146051.P10721230860386994620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131319 (A145957 (n + 1)).toNat

end

end A146051.P10721230860386994620

/-! ## A146051.P6077946459056340393

`A196186(A147045(n+1))`
-/

namespace A146051.P6077946459056340393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196186 (A147045 (n + 1)).toNat

end

end A146051.P6077946459056340393

/-! ## A146051.P17363727460835481936

`A196186(A147195(n+1))`
-/

namespace A146051.P17363727460835481936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196186 (A147195 (n + 1)).toNat

end

end A146051.P17363727460835481936

/-! ## A146051.P11165053304548053767

`A196186(A147399(n+1))`
-/

namespace A146051.P11165053304548053767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196186 (A147399 (n + 1)).toNat

end

end A146051.P11165053304548053767

/-!
# A146053: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 2X2 block with tail 1,1 1,2 1,3 2,2 2,3 in any orientation.

The programs for A146053, there is no canonical definition to state claims against.
-/

/-! ## A146053.P10980189271414774229

`A161154(A161131(char[1]+n))`
-/

namespace A146053.P10980189271414774229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161154 (A161131 ((if ∃ j, f1 j = n then 1 else 0) + n)).toNat

end

end A146053.P10980189271414774229

/-! ## A146053.P1747233285570270695

`A161154(or(char[1], A161131(n)))`
-/

namespace A146053.P1747233285570270695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161154 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A161131 n)).toNat

end

end A146053.P1747233285570270695

/-! ## A146053.P12923660708425533650

`A161154(xor(char[1], A161131(n)))`
-/

namespace A146053.P12923660708425533650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161154 (Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A161131 n)).toNat

end

end A146053.P12923660708425533650

/-!
# A146054: Number of n X n binary arrays with all ones connected only in a 2X3 U in any orientation.

The programs for A146054, there is no canonical definition to state claims against.
-/

/-! ## A146054.P15676760501572150973

`A146056(2*(n+2))`
-/

namespace A146054.P15676760501572150973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146056 (2 * (n + 2))

end

end A146054.P15676760501572150973

/-!
# A146056: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 2X3 U in any orientation.

The programs for A146056, there is no canonical definition to state claims against.
-/

/-! ## A146056.P3507312082531824168

`A207873(A095326(n+1))`
-/

namespace A146056.P3507312082531824168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207873 (A095326 (n + 1)).toNat

end

end A146056.P3507312082531824168

/-! ## A146056.P6722373442476272399

`and(A147163(n+5), A147254(n+1))`
-/

namespace A146056.P6722373442476272399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A147163 (n + 5)) (A147254 (n + 1))

end

end A146056.P6722373442476272399

/-! ## A146056.P590219373384921409

`A147076(n+1)+A028930(A146062(n+1))`
-/

namespace A146056.P590219373384921409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147076 (n + 1) + A028930 (A146062 (n + 1)).toNat

end

end A146056.P590219373384921409

/-! ## A146056.P18417209785154287704

`A001650(∑[A283918(n+1)]^A003165(n+1))`
-/

namespace A146056.P18417209785154287704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A003165 (n + 1) : ℤ))).toNat

end

end A146056.P18417209785154287704

/-!
# A146057: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 2X3 U in any orientation.

The programs for A146057, there is no canonical definition to state claims against.
-/

/-! ## A146057.P17397392587582756843

`A146059(2*(n+2))`
-/

namespace A146057.P17397392587582756843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146059 (2 * (n + 2))

end

end A146057.P17397392587582756843

/-! ## A146057.P14437154159654901333

`A146059(A005843(n+2))^A290105(n+1)`
-/

namespace A146057.P14437154159654901333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146059 (A005843 (n + 2)).toNat : ℚ) ^ (A290105 (n + 1) : ℤ)

end

end A146057.P14437154159654901333

/-! ## A146057.P16513129421352087227

`A146059(A005843(n+2))%A146086(n+1)`
-/

namespace A146057.P16513129421352087227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146059 (A005843 (n + 2)).toNat) (A146086 (n + 1))

end

end A146057.P16513129421352087227

/-! ## A146057.P3968587039116849746

`A318719(A074862(n+1))`
-/

namespace A146057.P3968587039116849746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318719 (A074862 (n + 1)).toNat

end

end A146057.P3968587039116849746

/-!
# A146058: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 2X3 U in any orientation.

The programs for A146058, there is no canonical definition to state claims against.
-/

/-! ## A146058.P5164001822944369698

`A072089(A146369(n+2))`
-/

namespace A146058.P5164001822944369698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072089 (A146369 (n + 2)).toNat

end

end A146058.P5164001822944369698

/-! ## A146058.P3902072135182888133

`A072089(A146377(n+2))`
-/

namespace A146058.P3902072135182888133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072089 (A146377 (n + 2)).toNat

end

end A146058.P3902072135182888133

/-! ## A146058.P10469775435132104013

`A124741(A124753(n*A213652(n)))`
-/

namespace A146058.P10469775435132104013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A124753 ((n : ℤ) * A213652 n).toNat).toNat

end

end A146058.P10469775435132104013

/-! ## A146058.P7080185852659672092

`A124741(A124753(n)^A071625(n+1))`
-/

namespace A146058.P7080185852659672092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (SequenceMachineLib.roundAway ((A124753 n : ℚ) ^ (A071625 (n + 1) : ℤ))).toNat

end

end A146058.P7080185852659672092

/-! ## A146058.P11872431352283299098

`A124741(A124753(n)%A187819(n+1))`
-/

namespace A146058.P11872431352283299098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (Int.tmod (A124753 n) (A187819 (n + 1))).toNat

end

end A146058.P11872431352283299098

/-!
# A146059: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 2X3 U in any orientation.

The programs for A146059, there is no canonical definition to state claims against.
-/

/-! ## A146059.P15236148939884008828

`A028234(A147220(n+1)+A129296(n+1))`
-/

namespace A146059.P15236148939884008828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A147220 (n + 1) + A129296 (n + 1)).toNat

end

end A146059.P15236148939884008828

/-! ## A146059.P14050683874628242745

`gcd(A002808(A002524(n)), A007092(2*n+1))`
-/

namespace A146059.P14050683874628242745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002808 (A002524 n).toNat) (A007092 (2 * n + 1))

end

end A146059.P14050683874628242745

/-! ## A146059.P11640637979636535227

`A028234(A147220(n+1)+A000005((abs(1-n)+1)*(n+1)+n)/2)`
-/

namespace A146059.P11640637979636535227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (SequenceMachineLib.roundAway ((A147220 (n + 1) : ℚ) + (A000005 ((|1 - (n : ℤ)| + 1) * (n + 1 : ℤ) + (n : ℤ)).toNat : ℚ) / 2)).toNat

end

end A146059.P11640637979636535227

/-!
# A146060: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 2X3 U in any orientation.

The programs for A146060, there is no canonical definition to state claims against.
-/

/-! ## A146060.P1506640716260424794

`or(1, A291168(∑[n+4]-3))`
-/

namespace A146060.P1506640716260424794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A291168 (∑ j ∈ Finset.range (n + 1), f1 j - 3))

end

end A146060.P1506640716260424794

/-! ## A146060.P11825123802921092233

`A291168(char[2^n-1]+∑[n+4]-3)`
-/

namespace A146060.P11825123802921092233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291168 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 3)).toNat

end

end A146060.P11825123802921092233

/-! ## A146060.P1558424286909953646

`A287286(A184297(n+1))`
-/

namespace A146060.P1558424286909953646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287286 (A184297 (n + 1)).toNat

end

end A146060.P1558424286909953646

/-! ## A146060.P16633214078757340075

`or(1, A085263(A229182(n)))`
-/

namespace A146060.P16633214078757340075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A085263 (A229182 n).toNat)

end

end A146060.P16633214078757340075

/-! ## A146060.P3473124470713802004

`or(1, A228247(A132461(n)))`
-/

namespace A146060.P3473124470713802004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A228247 (A132461 n).toNat)

end

end A146060.P3473124470713802004

/-!
# A146061: Eigentriangle, row sums = A000009, the number of partitions of n into odd parts.

The programs for A146061, there is no canonical definition to state claims against.
-/

/-! ## A146061.P9959700876353736703

`A286752(A101737(n+1))+A097807(n)`
-/

namespace A146061.P9959700876353736703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286752 (A101737 (n + 1)).toNat + A097807 n

end

end A146061.P9959700876353736703

/-! ## A146061.P3366187604828256844

`A144152(n+1)-A082858(A144156(n))`
-/

namespace A146061.P3366187604828256844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144152 (n + 1) - A082858 (A144156 n).toNat

end

end A146061.P3366187604828256844

/-! ## A146061.P7122511000766817510

`A328511(n+1)+A195017(A001924(A130321(n)))`
-/

namespace A146061.P7122511000766817510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328511 (n + 1) + A195017 (A001924 (A130321 n).toNat).toNat

end

end A146061.P7122511000766817510

/-! ## A146061.P2229425786812711423

`A353513(A186434(n+1))+A097807(n)`
-/

namespace A146061.P2229425786812711423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353513 (A186434 (n + 1)).toNat + A097807 n

end

end A146061.P2229425786812711423

/-!
# A146062: Number of n X n binary arrays symmetric under 180 degree rotation with all 1's connected only in a 2 X 3 U in any orientation.

The programs for A146062, there is no canonical definition to state claims against.
-/

/-! ## A146062.P14253747735666870538

`A317543(A018789(n+1))`
-/

namespace A146062.P14253747735666870538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317543 (A018789 (n + 1)).toNat

end

end A146062.P14253747735666870538

/-! ## A146062.P14227302175450831149

`A350535(A369546(n+1))`
-/

namespace A146062.P14227302175450831149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350535 (A369546 (n + 1)).toNat

end

end A146062.P14227302175450831149

/-! ## A146062.P15493944428000797586

`A272882(A074862(n+2))`
-/

namespace A146062.P15493944428000797586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272882 (A074862 (n + 2)).toNat

end

end A146062.P15493944428000797586

/-!
# A146063: Number of n X n binary arrays with all ones connected only in a 5-point zee 1,1 2,1 2,2 2,3 3,3 in any orientation.

The programs for A146063, there is no canonical definition to state claims against.
-/

/-! ## A146063.P15976154632543793260

`A146065(2*(n+2))`
-/

namespace A146063.P15976154632543793260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146065 (2 * (n + 2))

end

end A146063.P15976154632543793260

/-! ## A146063.P14735163724110789985

`A146065(A005843(n+2))^A290105(n+1)`
-/

namespace A146063.P14735163724110789985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146065 (A005843 (n + 2)).toNat : ℚ) ^ (A290105 (n + 1) : ℤ)

end

end A146063.P14735163724110789985

/-!
# A146065: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 5-point zee 1,1 2,1 2,2 2,3 3,3 in any orientation.

The programs for A146065, there is no canonical definition to state claims against.
-/

/-! ## A146065.P946443159556554338

`A146063(A028310(floor(n/2)))`
-/

namespace A146065.P946443159556554338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146063 (A028310 ⌊(n : ℚ) / 2⌋.toNat).toNat

end

end A146065.P946443159556554338

/-! ## A146065.P10059163025414474629

`A146063(gcd(floor(n/2), A336616(n)))`
-/

namespace A146065.P10059163025414474629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146063 (Int.gcd ⌊(n : ℚ) / 2⌋ (A336616 n))

end

end A146065.P10059163025414474629

/-! ## A146065.P4409791967194066776

`A241154(A309283(n)+A309247(n))`
-/

namespace A146065.P4409791967194066776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241154 (A309283 n + A309247 n).toNat

end

end A146065.P4409791967194066776

/-! ## A146065.P14840369510688297103

`and(-3, A053615(or(n, 5^floor(n/2))))`
-/

namespace A146065.P14840369510688297103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A053615 (Int.lor (n : ℤ) (SequenceMachineLib.roundAway ((5 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)))).toNat)

end

end A146065.P14840369510688297103

/-! ## A146065.P9216978169552439157

`and(5^floor(n/2), A054576(5^floor(n/2)))`
-/

namespace A146065.P9216978169552439157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((5 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))) (A054576 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat)

end

end A146065.P9216978169552439157

/-!
# A146066: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 5-point zee 1,1 2,1 2,2 2,3 3,3 in any orientation.

The programs for A146066, there is no canonical definition to state claims against.
-/

/-! ## A146066.P10018971955684484994

`A146068(2*(n+2))`
-/

namespace A146066.P10018971955684484994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146068 (2 * (n + 2))

end

end A146066.P10018971955684484994

/-! ## A146066.P2661662535935886116

`A146068(A005843(n+2))^A290105(n+1)`
-/

namespace A146066.P2661662535935886116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146068 (A005843 (n + 2)).toNat : ℚ) ^ (A290105 (n + 1) : ℤ)

end

end A146066.P2661662535935886116

/-! ## A146066.P2731698608678481080

`A146068(A005843(n+2))%A146086(n+1)`
-/

namespace A146066.P2731698608678481080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146068 (A005843 (n + 2)).toNat) (A146086 (n + 1))

end

end A146066.P2731698608678481080

/-!
# A146067: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 5-point zee 1,1 2,1 2,2 2,3 3,3 in any orientation.

The programs for A146067, there is no canonical definition to state claims against.
-/

/-! ## A146067.P12439218296504094099

`A359708(A006723(n+1))`
-/

namespace A146067.P12439218296504094099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359708 (A006723 (n + 1)).toNat

end

end A146067.P12439218296504094099

/-! ## A146067.P15135862480535176112

`A352633(A146449(n+1))`
-/

namespace A146067.P15135862480535176112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352633 (A146449 (n + 1)).toNat

end

end A146067.P15135862480535176112

/-! ## A146067.P7373895251486821667

`A342466(A325578(n+1))`
-/

namespace A146067.P7373895251486821667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342466 (A325578 (n + 1)).toNat

end

end A146067.P7373895251486821667

/-! ## A146067.P11001076005978845249

`filter[A006723(n), A075437(#)]`
-/

namespace A146067.P11001076005978845249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075437 (f1 j).toNat = 1) n)

end

end A146067.P11001076005978845249

/-! ## A146067.P11760343100819655439

`filter[A006723(n), A091447(#)]`
-/

namespace A146067.P11760343100819655439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091447 (f1 j).toNat = 1) n)

end

end A146067.P11760343100819655439

/-!
# A146068: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 5-point zee 1,1 2,1 2,2 2,3 3,3 in any orientation.

The programs for A146068, there is no canonical definition to state claims against.
-/

/-! ## A146068.P5377055430878812099

`A347179(A146450(n+1))`
-/

namespace A146068.P5377055430878812099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347179 (A146450 (n + 1)).toNat

end

end A146068.P5377055430878812099

/-! ## A146068.P8738732175816051540

`A358062(A147198(n+1))`
-/

namespace A146068.P8738732175816051540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358062 (A147198 (n + 1)).toNat

end

end A146068.P8738732175816051540

/-!
# A146069: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 5-point zee 1,1 2,1 2,2 2,3 3,3 in any orientation.

The programs for A146069, there is no canonical definition to state claims against.
-/

/-! ## A146069.P17550933907878453553

`A212321(A326588(2*n)+A303297(n+1))`
-/

namespace A146069.P17550933907878453553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212321 (A326588 (2 * n) + A303297 (n + 1)).toNat

end

end A146069.P17550933907878453553

/-! ## A146069.P8481316018039673647

`A291168(∑[floor(2*sqrt(n))+n])`
-/

namespace A146069.P8481316018039673647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (n : ℝ)⌋ + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291168 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A146069.P8481316018039673647

/-! ## A146069.P18195260100042635298

`A093513(floor(n/3)^∑[floor(n/5)])`
-/

namespace A146069.P18195260100042635298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093513 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / 3⌋ : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat

end

end A146069.P18195260100042635298

/-! ## A146069.P12072142348297808252

`A160124(C(n, 5))%(C(n, 4)+1)+1`
-/

namespace A146069.P12072142348297808252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160124 (Nat.choose n 5)) (Nat.choose n 4 + 1 : ℤ) + 1

end

end A146069.P12072142348297808252

/-! ## A146069.P1741742067874294222

`A033260(A149544(n))`
-/

namespace A146069.P1741742067874294222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033260 (A149544 n).toNat

end

end A146069.P1741742067874294222

/-!
# A146070: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 5-point zee 1,1 2,1 2,2 2,3 3,3 in any orientation.

The programs for A146070, there is no canonical definition to state claims against.
-/

/-! ## A146070.P432818748100551774

`A111039(a(n-1))` with `a(0)=1, a(1)=1, a(2)=5, a(3)=1, a(4)=9`
-/

namespace A146070.P432818748100551774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5, 1, 9] fun n a =>
  A111039 (a (n - 1)).toNat

end

end A146070.P432818748100551774

/-! ## A146070.P3431283451509827250

`A158405(2*A161779(n))`
-/

namespace A146070.P3431283451509827250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (2 * A161779 n).toNat

end

end A146070.P3431283451509827250

/-! ## A146070.P12540083888163481225

`and(A027748(A363546(n)), A355165(n))`
-/

namespace A146070.P12540083888163481225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027748 (A363546 n).toNat) (A355165 n)

end

end A146070.P12540083888163481225

/-!
# A146071: Consider A145834 as the first step of the sieving (subtracting the sum of its prime factors with repetition from the composite numbers). This sequence is the result of the subsequent application of above described sieving - thus all terms of this sequence arise as prime numbers.

The programs for A146071, there is no canonical definition to state claims against.
-/

/-! ## A146071.P8231677200003503462

`A353051(Δ[A053767(n)])`
-/

namespace A146071.P8231677200003503462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353051 (f1 (n + 1) - f1 n).toNat

end

end A146071.P8231677200003503462

/-! ## A146071.P3044620882219299012

`A353051(A002808(n+1))`
-/

namespace A146071.P3044620882219299012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353051 (A002808 (n + 1)).toNat

end

end A146071.P3044620882219299012

/-! ## A146071.P139204321437870061

`A353051(A018252(n+2))`
-/

namespace A146071.P139204321437870061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353051 (A018252 (n + 2)).toNat

end

end A146071.P139204321437870061

/-! ## A146071.P1292481412600892045

`A353051(comp[A353051(n+1)])`
-/

namespace A146071.P1292481412600892045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353051 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353051 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A146071.P1292481412600892045

/-! ## A146071.P15268932396784903908

`A353051(A072668(n+1)+1)`
-/

namespace A146071.P15268932396784903908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353051 (A072668 (n + 1) + 1).toNat

end

end A146071.P15268932396784903908

/-! ## A146071.P4236848949705820503

`A353051(eq[0, A339579(n+1)])`
-/

namespace A146071.P4236848949705820503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353051 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A146071.P4236848949705820503

/-! ## A146071.P13319063399824771549

`A353051(lt[2, A000005(n+1)]+1)`
-/

namespace A146071.P13319063399824771549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353051 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A146071.P13319063399824771549

/-! ## A146071.P15993127687648627185

`A353051(lt[A000010(n+1), n]+1)`
-/

namespace A146071.P15993127687648627185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353051 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A146071.P15993127687648627185

/-!
# A146075: Weight distribution of [41,21,9] binary quadratic-residue (or QR) code.

The programs for A146075, there is no canonical definition to state claims against.
-/

/-! ## A146075.P3436742296739811607

`A165190(ceil(n/8)^comp[4*n])`
-/

namespace A146075.P3436742296739811607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (⌈(n : ℚ) / 8⌉ ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n).toNat

end

end A146075.P3436742296739811607

/-! ## A146075.P13765438413169787940

`A127477(A305046(n+1))`
-/

namespace A146075.P13765438413169787940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127477 (A305046 (n + 1)).toNat

end

end A146075.P13765438413169787940

/-! ## A146075.P9535418081282188951

`A247889(A254783(n+1))`
-/

namespace A146075.P9535418081282188951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247889 (A254783 (n + 1)).toNat

end

end A146075.P9535418081282188951

/-! ## A146075.P3210234741724173473

`A028899(A244106(n+9))`
-/

namespace A146075.P3210234741724173473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (A244106 (n + 9)).toNat

end

end A146075.P3210234741724173473

/-! ## A146075.P11876660774790922518

`A063656(C(A055022(n), n))`
-/

namespace A146075.P11876660774790922518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 (Nat.choose (A055022 n).toNat n)

end

end A146075.P11876660774790922518

/-!
# A146076: Sum of even divisors of n.

The programs for A146076, the canonical program `A146076.P5513778411624192836` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146076 has offset 1).

The definition of A146076 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146076.P5513778411624192836

`A000203(n+1)-A000593(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A146076

/-- `A000203(n+1)-A000593(n+1)` -/
def P5513778411624192836.Spec : Prop :=
  ∀ n, P5513778411624192836.a n = A146076 (n + 1)

theorem P5513778411624192836.correct : P5513778411624192836.Spec := by
  intro n
  simp only [A146076, Nat.add_sub_cancel]

end A146076

/-! ## A146076.P9121843655604226059

`A000203(n+1)*(1-1/A038712(n+1))`
-/

namespace A146076.P9121843655604226059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) * (1 - 1 / (A038712 (n + 1) : ℚ))

end

end A146076.P9121843655604226059

namespace A146076

/-- `A000203(n+1)*(1-1/A038712(n+1))` -/
def P9121843655604226059.Spec : Prop :=
  ∀ n, P9121843655604226059.a n = (A146076 (n + 1) : ℚ)

end A146076

/-! ## A146076.P71471816697042861

`∑{d}[n+1, #%or(1, #)]`
-/

namespace A146076.P71471816697042861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d % Nat.lor 1 d

end

end A146076.P71471816697042861

namespace A146076

/-- `∑{d}[n+1, #%or(1, #)]` -/
def P71471816697042861.Spec : Prop :=
  ∀ n, (P71471816697042861.a n : ℤ) = A146076 (n + 1)

end A146076

/-! ## A146076.P12882711641551086365

`2*∑{d}[∑[n]%(n+1), #]`
-/

namespace A146076.P12882711641551086365
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), d)

end

end A146076.P12882711641551086365

namespace A146076

/-- `2*∑{d}[∑[n]%(n+1), #]` -/
def P12882711641551086365.Spec : Prop :=
  ∀ n, (P12882711641551086365.a n : ℤ) = A146076 (n + 1)

end A146076

/-! ## A146076.P7955199529213491772

`∑{d}[∑[n+1]%(n+1), (n+1)/#]`
-/

namespace A146076.P7955199529213491772
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ)

end

end A146076.P7955199529213491772

namespace A146076

/-- `∑{d}[∑[n+1]%(n+1), (n+1)/#]` -/
def P7955199529213491772.Spec : Prop :=
  ∀ n, P7955199529213491772.a n = (A146076 (n + 1) : ℚ)

end A146076

/-! ## A146076.P10271450421225918798

`2*∑{d}[∑[A001057(n)], #]`
-/

namespace A146076.P10271450421225918798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A146076.P10271450421225918798

namespace A146076

/-- `2*∑{d}[∑[A001057(n)], #]` -/
def P10271450421225918798.Spec : Prop :=
  ∀ n, (P10271450421225918798.a n : ℤ) = A146076 (n + 1)

end A146076

/-! ## A146076.P4889902237874598433

`2*n%2*A245092(n)`
-/

namespace A146076.P4889902237874598433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n % 2) : ℕ) : ℤ) * A245092 n

end

end A146076.P4889902237874598433

namespace A146076

/-- `2*n%2*A245092(n)` -/
def P4889902237874598433.Spec : Prop :=
  ∀ n, P4889902237874598433.a n = A146076 (n + 1)

end A146076

/-! ## A146076.P11596600174323553540

`and(1, n)*A326136(n+1)`
-/

namespace A146076.P11596600174323553540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A326136 (n + 1)

end

end A146076.P11596600174323553540

namespace A146076

/-- `and(1, n)*A326136(n+1)` -/
def P11596600174323553540.Spec : Prop :=
  ∀ n, P11596600174323553540.a n = A146076 (n + 1)

end A146076

/-! ## A146076.P880039433105958759

`∑{d}[n+1, #*A000035(#-1)]`
-/

namespace A146076.P880039433105958759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000035 (d - 1)

end

end A146076.P880039433105958759

namespace A146076

/-- `∑{d}[n+1, #*A000035(#-1)]` -/
def P880039433105958759.Spec : Prop :=
  ∀ n, P880039433105958759.a n = A146076 (n + 1)

end A146076

/-! ## A146076.P8890319112730484910

`2*and(1, n)*A000203(floor(n/2)+1)`
-/

namespace A146076.P8890319112730484910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.land 1 n : ℤ) * A000203 (⌊(n : ℚ) / 2⌋ + 1).toNat

end

end A146076.P8890319112730484910

namespace A146076

/-- `2*and(1, n)*A000203(floor(n/2)+1)` -/
def P8890319112730484910.Spec : Prop :=
  ∀ n, P8890319112730484910.a n = A146076 (n + 1)

end A146076

/-! ## A146076.P17287305806581409037

`∑{d}[n+1, #*A010673((n+1)/#-1)]`
-/

namespace A146076.P17287305806581409037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A010673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A146076.P17287305806581409037

namespace A146076

/-- `∑{d}[n+1, #*A010673((n+1)/#-1)]` -/
def P17287305806581409037.Spec : Prop :=
  ∀ n, P17287305806581409037.a n = A146076 (n + 1)

end A146076

/-! ## A146076.P4101771483167489516

`A010673(n)*A245092(n)`
-/

namespace A146076.P4101771483167489516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n * A245092 n

end

end A146076.P4101771483167489516

namespace A146076

/-- `A010673(n)*A245092(n)` -/
def P4101771483167489516.Spec : Prop :=
  ∀ n, P4101771483167489516.a n = A146076 (n + 1)

end A146076

/-! ## A146076.P7551736849863472332

`A000035(n)*A326136(n+1)`
-/

namespace A146076.P7551736849863472332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A326136 (n + 1)

end

end A146076.P7551736849863472332

namespace A146076

/-- `A000035(n)*A326136(n+1)` -/
def P7551736849863472332.Spec : Prop :=
  ∀ n, P7551736849863472332.a n = A146076 (n + 1)

end A146076

/-! ## A146076.P12783403811967134653

`A010673(n)*A326065(n+1)`
-/

namespace A146076.P12783403811967134653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n * A326065 (n + 1)

end

end A146076.P12783403811967134653

namespace A146076

/-- `A010673(n)*A326065(n+1)` -/
def P12783403811967134653.Spec : Prop :=
  ∀ n, P12783403811967134653.a n = A146076 (n + 1)

end A146076

/-! ## A146076.P7824311978562192557

`(1-A033999(n))*A245092(n)`
-/

namespace A146076.P7824311978562192557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A033999 n) * A245092 n

end

end A146076.P7824311978562192557

namespace A146076

/-- `(1-A033999(n))*A245092(n)` -/
def P7824311978562192557.Spec : Prop :=
  ∀ n, P7824311978562192557.a n = A146076 (n + 1)

end A146076

/-! ## A146076.P18252194886572238432

`lcm(A010673(n), A326136(n+1))`
-/

namespace A146076.P18252194886572238432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010673 n) (A326136 (n + 1))

end

end A146076.P18252194886572238432

namespace A146076

/-- `lcm(A010673(n), A326136(n+1))` -/
def P18252194886572238432.Spec : Prop :=
  ∀ n, (P18252194886572238432.a n : ℤ) = A146076 (n + 1)

end A146076

/-! ## A146076.P14899110925179978866

`and(2, A004277(n))*A245092(n)`
-/

namespace A146076.P14899110925179978866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A004277 n) * A245092 n

end

end A146076.P14899110925179978866

namespace A146076

/-- `and(2, A004277(n))*A245092(n)` -/
def P14899110925179978866.Spec : Prop :=
  ∀ n, P14899110925179978866.a n = A146076 (n + 1)

end A146076

/-! ## A146076.P1543185905992943913

`A326052(n+1)+A326050(n+1)`
-/

namespace A146076.P1543185905992943913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326052 (n + 1) + A326050 (n + 1)

end

end A146076.P1543185905992943913

namespace A146076

/-- `A326052(n+1)+A326050(n+1)` -/
def P1543185905992943913.Spec : Prop :=
  ∀ n, P1543185905992943913.a n = A146076 (n + 1)

end A146076

/-! ## A146076.P9518379735627848015

`A000593(n+1)-A002129(n+1)`
-/

namespace A146076.P9518379735627848015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) - A002129 (n + 1)

end

end A146076.P9518379735627848015

namespace A146076

/-- `A000593(n+1)-A002129(n+1)` -/
def P9518379735627848015.Spec : Prop :=
  ∀ n, P9518379735627848015.a n = A146076 (n + 1)

end A146076

/-! ## A146076.P4407792194526194390

`A074400(n+1)-A054785(n+1)`
-/

namespace A146076.P4407792194526194390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) - A054785 (n + 1)

end

end A146076.P4407792194526194390

namespace A146076

/-- `A074400(n+1)-A054785(n+1)` -/
def P4407792194526194390.Spec : Prop :=
  ∀ n, P4407792194526194390.a n = A146076 (n + 1)

end A146076

/-!
# A146078: Expansion of 1/(1-x*(1-9*x)).

The programs for A146078, the canonical program `A146078.P3938494697576129915` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146078 has offset 0).

The definition of A146078 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x+9x^2))` (program `A146078.P3938494697576129915`, by `A146078.P3938494697576129915.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A146078.P3938494697576129915

`ogf(1/(1-x+9x^2))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A146078

/-- `ogf(1/(1-x+9x^2))` -/
def P3938494697576129915.Spec : Prop :=
  ∀ n, P3938494697576129915.a n = A146078 n

theorem P3938494697576129915.correct : P3938494697576129915.Spec := by
  intro n
  simp only [A146078]

end A146078

/-! ## A146078.P10530262501282904823

`a(n-1)-9*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A146078.P10530262501282904823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - 9 * a (n - 2)

end

end A146078.P10530262501282904823

namespace A146078

/-- `a(n-1)-9*a(n-2)` -/
def P10530262501282904823.Spec : Prop :=
  ∀ n, P10530262501282904823.a n = A146078 n

end A146078

/-! ## A146078.P3224293521654576878

`∏[(a(n-1)-9)/a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A146078.P3224293521654576878
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (f1 (n - 1) - 9) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A146078.P3224293521654576878

namespace A146078

/-- `∏[(a(n-1)-9)/a(n-1)]` -/
def P3224293521654576878.Spec : Prop :=
  ∀ n, P3224293521654576878.a n = (A146078 n : ℚ)

end A146078

/-! ## A146078.P13083397121428689179

`A133665(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A146078.P13083397121428689179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A133665 n - 2 * a (n - 1)

end

end A146078.P13083397121428689179

namespace A146078

/-- `A133665(n)-2*a(n-1)` -/
def P13083397121428689179.Spec : Prop :=
  ∀ n, P13083397121428689179.a n = A146078 n

end A146078

/-!
# A146079: Period 9: repeat 2,4,8,5,4,5,8,4,2.

The programs for A146079, the canonical program `A146079.P6492804251308497016` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146079 has offset 0).

The definition of A146079 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146079.P6492804251308497016

`a(n-9)` with `a(0)=2, a(1)=4, a(2)=8, a(3)=5, a(4)=4, a(5)=5, a(6)=8, a(7)=4, a(8)=2`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A146079

/-- `a(n-9)` -/
def P6492804251308497016.Spec : Prop :=
  ∀ n, (P6492804251308497016.a n : ℤ) = A146079 n

theorem P6492804251308497016.correct : P6492804251308497016.Spec := by
  intro n
  simp only [A146079]

end A146079

/-!
# A146080: Expansion of 1/(1-x*(1-10*x)).

The programs for A146080, the canonical program `A146080.P13445032914508050931` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146080 has offset 0).

The definition of A146080 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x+10x^2))` (program `A146080.P13445032914508050931`, by `A146080.P13445032914508050931.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A146080.P13445032914508050931

`ogf(1/(1-x+10x^2))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A146080

/-- `ogf(1/(1-x+10x^2))` -/
def P13445032914508050931.Spec : Prop :=
  ∀ n, P13445032914508050931.a n = A146080 n

theorem P13445032914508050931.correct : P13445032914508050931.Spec := by
  intro n
  simp only [A146080]

end A146080

/-! ## A146080.P14021051112959672265

`a(n-1)-10*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A146080.P14021051112959672265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - 10 * a (n - 2)

end

end A146080.P14021051112959672265

namespace A146080

/-- `a(n-1)-10*a(n-2)` -/
def P14021051112959672265.Spec : Prop :=
  ∀ n, P14021051112959672265.a n = A146080 n

end A146080

/-! ## A146080.P13767041470901299156

`a(n-1)-(a(n-2)+a(n-2)/(1/3)²)` with `a(0)=1, a(1)=1`
-/

namespace A146080.P13767041470901299156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - (a (n - 2) + a (n - 2) / ((1 : ℚ) / 3) ^ 2)

end

end A146080.P13767041470901299156

namespace A146080

/-- `a(n-1)-(a(n-2)+a(n-2)/(1/3)²)` -/
def P13767041470901299156.Spec : Prop :=
  ∀ n, P13767041470901299156.a n = (A146080 n : ℚ)

end A146080

/-! ## A146080.P3388784140640373739

`a(n-1)-a(n-2)/(1/3)²-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A146080.P3388784140640373739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - a (n - 2) / ((1 : ℚ) / 3) ^ 2 - a (n - 2)

end

end A146080.P3388784140640373739

namespace A146080

/-- `a(n-1)-a(n-2)/(1/3)²-a(n-2)` -/
def P3388784140640373739.Spec : Prop :=
  ∀ n, P3388784140640373739.a n = (A146080 n : ℚ)

end A146080

/-! ## A146080.P1194137831721654561

`∏[1-10/a(n-1)]/4` with `a(0)=4, a(1)=1`
-/

namespace A146080.P1194137831721654561
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 1] fun n f1 =>
  1 - 10 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / 4

end

end A146080.P1194137831721654561

namespace A146080

/-- `∏[1-10/a(n-1)]/4` -/
def P1194137831721654561.Spec : Prop :=
  ∀ n, P1194137831721654561.a n = (A146080 n : ℚ)

end A146080

/-!
# A146081: First differences of A145980.

The programs for A146081, the canonical program `A146081.P3586309163147182051` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146081 has offset 0).

The definition of A146081 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146081.P3586309163147182051

`74*n+110`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A146081

/-- `74*n+110` -/
def P3586309163147182051.Spec : Prop :=
  ∀ n, (P3586309163147182051.a n : ℤ) = A146081 n

theorem P3586309163147182051.correct : P3586309163147182051.Spec := by
  intro n
  simp only [A146081]

end A146081

/-!
# A146082: a(n) = A146081(n) mod 9.

The programs for A146082, the canonical program `A146082.P14586874301250303883` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146082 has offset 0).

The definition of A146082 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146082.P14586874301250303883

`(74*n+110)%9`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A146082

/-- `(74*n+110)%9` -/
def P14586874301250303883.Spec : Prop :=
  ∀ n, (P14586874301250303883.a n : ℤ) = A146082 n

theorem P14586874301250303883.correct : P14586874301250303883.Spec := by
  intro n
  simp only [A146082]

end A146082

/-!
# A146083: Expansion of 1/(1 - x*(1 - 11*x)).

The programs for A146083, the canonical program `A146083.P3500874003958137541` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146083 has offset 0).

The definition of A146083 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x+11x^2))` (program `A146083.P3500874003958137541`, by `A146083.P3500874003958137541.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A146083.P3500874003958137541

`ogf(1/(1-x+11x^2))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A146083

/-- `ogf(1/(1-x+11x^2))` -/
def P3500874003958137541.Spec : Prop :=
  ∀ n, P3500874003958137541.a n = A146083 n

theorem P3500874003958137541.correct : P3500874003958137541.Spec := by
  intro n
  simp only [A146083]

end A146083

/-! ## A146083.P5615046850567660809

`a(n-1)-11*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A146083.P5615046850567660809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - 11 * a (n - 2)

end

end A146083.P5615046850567660809

namespace A146083

/-- `a(n-1)-11*a(n-2)` -/
def P5615046850567660809.Spec : Prop :=
  ∀ n, P5615046850567660809.a n = A146083 n

end A146083

/-!
# A146084: Expansion of 1/(1-x(1-12x)).

The programs for A146084, the canonical program `A146084.P4827488879670690483` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146084 has offset 0).

The definition of A146084 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x+12x^2))` (program `A146084.P4827488879670690483`, by `A146084.P4827488879670690483.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A146084.P4827488879670690483

`ogf(1/(1-x+12x^2))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A146084

/-- `ogf(1/(1-x+12x^2))` -/
def P4827488879670690483.Spec : Prop :=
  ∀ n, P4827488879670690483.a n = A146084 n

theorem P4827488879670690483.correct : P4827488879670690483.Spec := by
  intro n
  simp only [A146084]

end A146084

/-! ## A146084.P17301781059169104522

`a(n-1)-12*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A146084.P17301781059169104522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - 12 * a (n - 2)

end

end A146084.P17301781059169104522

namespace A146084

/-- `a(n-1)-12*a(n-2)` -/
def P17301781059169104522.Spec : Prop :=
  ∀ n, P17301781059169104522.a n = A146084 n

end A146084

/-!
# A146085: Positive integers a(n) such that for every integer m == 1 (mod 3), m >= 4, there exists a unique representation of m as a sum of the form a(l) + 3*a(s).

The programs for A146085, there is no canonical definition to state claims against.
-/

/-! ## A146085.P16458026388582964293

`eq[1, A105186(n)]`
-/

namespace A146085.P16458026388582964293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105186 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146085.P16458026388582964293

/-! ## A146085.P10971380484313760407

`eq[1, A163325(n)]`
-/

namespace A146085.P10971380484313760407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163325 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146085.P10971380484313760407

/-! ## A146085.P10366784355936917262

`A163330(∑[n])+1`
-/

namespace A146085.P10366784355936917262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163330 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A146085.P10366784355936917262

/-! ## A146085.P9667381856310066405

`record[A163330(n)+1]`
-/

namespace A146085.P9667381856310066405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163330 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146085.P9667381856310066405

/-! ## A146085.P550295483870607043

`record[1-A065369(n)]`
-/

namespace A146085.P550295483870607043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A065369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146085.P550295483870607043

/-! ## A146085.P15388480935267086557

`3*A037314(n)+1`
-/

namespace A146085.P15388480935267086557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A037314 n + 1

end

end A146085.P15388480935267086557

/-! ## A146085.P10110195664778910718

`A163328(∑[n+2]-1)`
-/

namespace A146085.P10110195664778910718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163328 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A146085.P10110195664778910718

/-! ## A146085.P16407895806940995391

`3*A163328(∑[n])+1`
-/

namespace A146085.P16407895806940995391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A163328 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A146085.P16407895806940995391

/-! ## A146085.P3469266299349793305

`A163330(C(n+2, 2)+1)`
-/

namespace A146085.P3469266299349793305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163330 (Nat.choose (n + 2) 2 + 1)

end

end A146085.P3469266299349793305

/-! ## A146085.P2909818548922726032

`A016777(A037314(n))`
-/

namespace A146085.P2909818548922726032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A037314 n).toNat

end

end A146085.P2909818548922726032

/-!
# A146086: Number of n-digit numbers with each digit odd where the digits 1 and 3 occur an even number of times.

The programs for A146086, the canonical program `A146086.P5724964958736556546` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146086 has offset 1).

The definition of A146086 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146086.P2667857780472108716

`(5^(n+1)+2*3^(n+1)+1)/4`
-/

namespace A146086.P2667857780472108716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 ^ (n + 1) + 2 * 3 ^ (n + 1) + 1 : ℚ) / 4

end

end A146086.P2667857780472108716

namespace A146086

/-- `(5^(n+1)+2*3^(n+1)+1)/4` -/
def P2667857780472108716.Spec : Prop :=
  ∀ n, P2667857780472108716.a n = (A146086 (n + 1) : ℚ)

theorem P2667857780472108716.correct : P2667857780472108716.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A146086, Nat.add_sub_cancel, A146086.P2667857780472108716.a, A146086.P5724964958736556546.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A146086, Nat.add_sub_cancel, A146086.P2667857780472108716.a, A146086.P5724964958736556546.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A146086

/-! ## A146086.P5724964958736556546

`9*a(n-1)-23*a(n-2)+15*a(n-3)` with `a(0)=3, a(1)=11, a(2)=45`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A146086

/-- `9*a(n-1)-23*a(n-2)+15*a(n-3)` -/
def P5724964958736556546.Spec : Prop :=
  ∀ n, P5724964958736556546.a n = A146086 (n + 1)

theorem P5724964958736556546.correct : P5724964958736556546.Spec := by
  intro n
  simp only [A146086, Nat.add_sub_cancel]

end A146086

/-! ## A146086.P13542157542202476325

`or(1, ∑[A074606(n)])`
-/

namespace A146086.P13542157542202476325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074606 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A146086.P13542157542202476325

namespace A146086

/-- `or(1, ∑[A074606(n)])` -/
def P13542157542202476325.Spec : Prop :=
  ∀ n, P13542157542202476325.a n = A146086 (n + 1)

end A146086

/-! ## A146086.P61574097262514079

`xor(1, ∑[2*A081186(n)])`
-/

namespace A146086.P61574097262514079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A146086.P61574097262514079

namespace A146086

/-- `xor(1, ∑[2*A081186(n)])` -/
def P61574097262514079.Spec : Prop :=
  ∀ n, P61574097262514079.a n = A146086 (n + 1)

end A146086

/-! ## A146086.P15863649608905906767

`∑[A074507(n)-ceil(sin(n)²)]`
-/

namespace A146086.P15863649608905906767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074507 n - ⌈Real.sin (n : ℝ) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146086.P15863649608905906767

namespace A146086

/-- `∑[A074507(n)-ceil(sin(n)²)]` -/
def P15863649608905906767.Spec : Prop :=
  ∀ n, P15863649608905906767.a n = A146086 (n + 1)

end A146086

/-! ## A146086.P11088192301847429136

`or(1, ∑[2*(floor(A155603(n)/2)+1)])`
-/

namespace A146086.P11088192301847429136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (⌊(A155603 n : ℚ) / 2⌋ + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A146086.P11088192301847429136

namespace A146086

/-- `or(1, ∑[2*(floor(A155603(n)/2)+1)])` -/
def P11088192301847429136.Spec : Prop :=
  ∀ n, P11088192301847429136.a n = A146086 (n + 1)

end A146086

/-! ## A146086.P3454760280719866749

`∑[A074606(n)+A000007(n)]`
-/

namespace A146086.P3454760280719866749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074606 n + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146086.P3454760280719866749

namespace A146086

/-- `∑[A074606(n)+A000007(n)]` -/
def P3454760280719866749.Spec : Prop :=
  ∀ n, P3454760280719866749.a n = A146086 (n + 1)

end A146086

/-! ## A146086.P3069981067531683112

`∑[A120950(n)+A004277(n)]`
-/

namespace A146086.P3069981067531683112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120950 n + A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146086.P3069981067531683112

namespace A146086

/-- `∑[A120950(n)+A004277(n)]` -/
def P3069981067531683112.Spec : Prop :=
  ∀ n, P3069981067531683112.a n = A146086 (n + 1)

end A146086

/-! ## A146086.P5498695369431387647

`∑[A074606(n)+A063524(n+1)]`
-/

namespace A146086.P5498695369431387647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074606 n + A063524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146086.P5498695369431387647

namespace A146086

/-- `∑[A074606(n)+A063524(n+1)]` -/
def P5498695369431387647.Spec : Prop :=
  ∀ n, P5498695369431387647.a n = A146086 (n + 1)

end A146086

/-! ## A146086.P17971365544333955054

`xor(1, ∑[A000351(n)+A000244(n)])`
-/

namespace A146086.P17971365544333955054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n + A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A146086.P17971365544333955054

namespace A146086

/-- `xor(1, ∑[A000351(n)+A000244(n)])` -/
def P17971365544333955054.Spec : Prop :=
  ∀ n, P17971365544333955054.a n = A146086 (n + 1)

end A146086

/-! ## A146086.P16197913645761633463

`(∑[2*A081186(n)]+1)*A002110(C(n, n+1))`
-/

namespace A146086.P16197913645761633463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A002110 (Nat.choose n (n + 1))

end

end A146086.P16197913645761633463

namespace A146086

/-- `(∑[2*A081186(n)]+1)*A002110(C(n, n+1))` -/
def P16197913645761633463.Spec : Prop :=
  ∀ n, P16197913645761633463.a n = A146086 (n + 1)

end A146086

/-! ## A146086.P8644363843379581094

`∑[A081186(n)*A178815(n+1)]`
-/

namespace A146086.P8644363843379581094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081186 n * A178815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146086.P8644363843379581094

namespace A146086

/-- `∑[A081186(n)*A178815(n+1)]` -/
def P8644363843379581094.Spec : Prop :=
  ∀ n, P8644363843379581094.a n = A146086 (n + 1)

end A146086

/-!
# A146087: a(n) = 3*A146085(n) - 1.

The programs for A146087, there is no canonical definition to state claims against.
-/

/-! ## A146087.P15351998216339894487

`3*A146085(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A146087.P15351998216339894487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A146085 (n + 1) - 1

end

end A146087.P15351998216339894487

/-! ## A146087.P2382271121184727369

`A146091(n+1)+1`
-/

namespace A146087.P2382271121184727369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146091 (n + 1) + 1

end

end A146087.P2382271121184727369

/-! ## A146087.P17413612425396388354

`A037314(3*n+2)`
-/

namespace A146087.P17413612425396388354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (3 * n + 2)

end

end A146087.P17413612425396388354

/-! ## A146087.P12785140386232214949

`3*A163330(∑[n])+2`
-/

namespace A146087.P12785140386232214949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A163330 (∑ j ∈ Finset.range (n + 1), f1 j) + 2

end

end A146087.P12785140386232214949

/-! ## A146087.P1475524944566987886

`A208665(3*n+2)/3`
-/

namespace A146087.P1475524944566987886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208665 (3 * n + 2) : ℚ) / 3

end

end A146087.P1475524944566987886

/-! ## A146087.P4471227135471338329

`A338086(3*n+2)/4`
-/

namespace A146087.P4471227135471338329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338086 (3 * n + 2) : ℚ) / 4

end

end A146087.P4471227135471338329

/-! ## A146087.P5257192828988455556

`A017185(A037314(n))`
-/

namespace A146087.P5257192828988455556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 (A037314 n).toNat

end

end A146087.P5257192828988455556

/-! ## A146087.P8228167558741677214

`record[A065369(A017185(n))]`
-/

namespace A146087.P8228167558741677214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065369 (A017185 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146087.P8228167558741677214

/-! ## A146087.P9443406821390792927

`A002517(A146091(n+1))`
-/

namespace A146087.P9443406821390792927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A146091 (n + 1)).toNat

end

end A146087.P9443406821390792927

/-! ## A146087.P11670580530687859987

`A189666(A146085(n+1))`
-/

namespace A146087.P11670580530687859987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189666 (A146085 (n + 1)).toNat

end

end A146087.P11670580530687859987

/-!
# A146091: a(n) = 3*A146085(n) - 2.

The programs for A146091, there is no canonical definition to state claims against.
-/

/-! ## A146091.P17533708642089400083

`3*A146085(n+1)-2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A146091.P17533708642089400083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A146085 (n + 1) - 2

end

end A146091.P17533708642089400083

/-! ## A146091.P1015742524336036302

`A146087(n+1)-1`
-/

namespace A146091.P1015742524336036302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146087 (n + 1) - 1

end

end A146091.P1015742524336036302

/-! ## A146091.P11576809802806975506

`A037314(3*n+1)`
-/

namespace A146091.P11576809802806975506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (3 * n + 1)

end

end A146091.P11576809802806975506

/-! ## A146091.P18353706645918403733

`3*A163330(∑[n])+1`
-/

namespace A146091.P18353706645918403733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A163330 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A146091.P18353706645918403733

/-! ## A146091.P7349182113268129057

`-xor(-1, A037314(3*n))`
-/

namespace A146091.P7349182113268129057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (A037314 (3 * n))

end

end A146091.P7349182113268129057

/-! ## A146091.P4884786051120736397

`A208665(3*n+1)/3`
-/

namespace A146091.P4884786051120736397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208665 (3 * n + 1) : ℚ) / 3

end

end A146091.P4884786051120736397

/-! ## A146091.P8031249649460228988

`A338086(3*n+1)/4`
-/

namespace A146091.P8031249649460228988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338086 (3 * n + 1) : ℚ) / 4

end

end A146091.P8031249649460228988

/-! ## A146091.P10814827037592707462

`A017173(A037314(n))`
-/

namespace A146091.P10814827037592707462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 (A037314 n).toNat

end

end A146091.P10814827037592707462

/-! ## A146091.P9260447352128708554

`record[A105186(A017209(n))]`
-/

namespace A146091.P9260447352128708554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105186 (A017209 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146091.P9260447352128708554

/-! ## A146091.P18380568667330440958

`A004483(A146087(n+1))`
-/

namespace A146091.P18380568667330440958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A146087 (n + 1)).toNat

end

end A146091.P18380568667330440958

/-!
# A146093: Bell numbers (A000110) read mod 3.

The programs for A146093, the canonical program `A146093.P9281428778145003701` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146093 has offset 0).

The definition of A146093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A146093.P9281428778145003701

`(a(n-2)+a(n-3))%3` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A146093

/-- `(a(n-2)+a(n-3))%3` -/
def P9281428778145003701.Spec : Prop :=
  ∀ n, (P9281428778145003701.a n : ℤ) = A146093 n

theorem P9281428778145003701.correct : P9281428778145003701.Spec := by
  intro n
  simp only [A146093]

end A146093

/-!
# A146094: Bell numbers (A000110) read mod 4.

The programs for A146094, there is no canonical definition to state claims against.
-/

/-! ## A146094.P15877758554044967110

`A146098(n)%4`
-/

namespace A146094.P15877758554044967110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146098 n) 4

end

end A146094.P15877758554044967110

/-!
# A146095: Bell numbers (A000110) read mod 5.

The programs for A146095, the canonical program `A146095.P18017980214213889046` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146095 has offset 0).

The definition of A146095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A146095.P18017980214213889046

`(a(n-4)+a(n-5))%5` with `a(0)=1, a(1)=1, a(2)=2, a(3)=0, a(4)=0`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A146095

/-- `(a(n-4)+a(n-5))%5` -/
def P18017980214213889046.Spec : Prop :=
  ∀ n, (P18017980214213889046.a n : ℤ) = A146095 n

theorem P18017980214213889046.correct : P18017980214213889046.Spec := by
  intro n
  simp only [A146095]

end A146095

/-! ## A146095.P17717408910647697444

`A146100(n)%5`
-/

namespace A146095.P17717408910647697444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146100 n) 5

end

end A146095.P17717408910647697444

namespace A146095

/-- `A146100(n)%5` -/
def P17717408910647697444.Spec : Prop :=
  ∀ n, P17717408910647697444.a n = A146095 n

end A146095

/-! ## A146095.P12194265377575810013

`A146105(n)%5`
-/

namespace A146095.P12194265377575810013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146105 n) 5

end

end A146095.P12194265377575810013

namespace A146095

/-- `A146105(n)%5` -/
def P12194265377575810013.Spec : Prop :=
  ∀ n, P12194265377575810013.a n = A146095 n

end A146095

/-! ## A146095.P14813278242435474207

`A146110(n)%5`
-/

namespace A146095.P14813278242435474207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146110 n) 5

end

end A146095.P14813278242435474207

namespace A146095

/-- `A146110(n)%5` -/
def P14813278242435474207.Spec : Prop :=
  ∀ n, P14813278242435474207.a n = A146095 n

end A146095

/-! ## A146095.P4402728784538704607

`A146115(n)%5`
-/

namespace A146095.P4402728784538704607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146115 n) 5

end

end A146095.P4402728784538704607

namespace A146095

/-- `A146115(n)%5` -/
def P4402728784538704607.Spec : Prop :=
  ∀ n, P4402728784538704607.a n = A146095 n

end A146095

/-! ## A146095.P10373839239012449822

`A146120(n)%5`
-/

namespace A146095.P10373839239012449822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146120 n) 5

end

end A146095.P10373839239012449822

namespace A146095

/-- `A146120(n)%5` -/
def P10373839239012449822.Spec : Prop :=
  ∀ n, P10373839239012449822.a n = A146095 n

end A146095

/-! ## A146095.P16678448914584429826

`A010874(A146105(n))`
-/

namespace A146095.P16678448914584429826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A146105 n).toNat

end

end A146095.P16678448914584429826

namespace A146095

/-- `A010874(A146105(n))` -/
def P16678448914584429826.Spec : Prop :=
  ∀ n, P16678448914584429826.a n = A146095 n

end A146095

/-! ## A146095.P1050133488301189958

`A010874(A146110(n))`
-/

namespace A146095.P1050133488301189958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A146110 n).toNat

end

end A146095.P1050133488301189958

namespace A146095

/-- `A010874(A146110(n))` -/
def P1050133488301189958.Spec : Prop :=
  ∀ n, P1050133488301189958.a n = A146095 n

end A146095

/-! ## A146095.P10610726113079333682

`A010874(A146120(n))`
-/

namespace A146095.P10610726113079333682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A146120 n).toNat

end

end A146095.P10610726113079333682

namespace A146095

/-- `A010874(A146120(n))` -/
def P10610726113079333682.Spec : Prop :=
  ∀ n, P10610726113079333682.a n = A146095 n

end A146095

/-! ## A146095.P2983517602875735325

`A000110(n)%5`
-/

namespace A146095.P2983517602875735325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000110 n) 5

end

end A146095.P2983517602875735325

namespace A146095

/-- `A000110(n)%5` -/
def P2983517602875735325.Spec : Prop :=
  ∀ n, P2983517602875735325.a n = A146095 n

end A146095

/-!
# A146096: Bell numbers (A000110) read mod 6.

The programs for A146096, there is no canonical definition to state claims against.
-/

/-! ## A146096.P2763153204386908986

`A146102(n)%6`
-/

namespace A146096.P2763153204386908986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146102 n) 6

end

end A146096.P2763153204386908986

/-!
# A146097: Bell numbers (A000110) read mod 7.

The programs for A146097, there is no canonical definition to state claims against.
-/

/-! ## A146097.P2051029967455564648

`A146104(n)%7`
-/

namespace A146097.P2051029967455564648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146104 n) 7

end

end A146097.P2051029967455564648

/-! ## A146097.P6402075067666567501

`A146111(n)%7`
-/

namespace A146097.P6402075067666567501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146111 n) 7

end

end A146097.P6402075067666567501

/-! ## A146097.P10347768938462702517

`A146118(n)%7`
-/

namespace A146097.P10347768938462702517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146118 n) 7

end

end A146097.P10347768938462702517

/-! ## A146097.P6962456775961911123

`A010876(A146104(n))`
-/

namespace A146097.P6962456775961911123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A146104 n).toNat

end

end A146097.P6962456775961911123

/-! ## A146097.P17888383433211973586

`A010876(A146111(n))`
-/

namespace A146097.P17888383433211973586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A146111 n).toNat

end

end A146097.P17888383433211973586

/-! ## A146097.P4976006821226897205

`A010876(A146118(n))`
-/

namespace A146097.P4976006821226897205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A146118 n).toNat

end

end A146097.P4976006821226897205

/-! ## A146097.P226627943544998731

`A070696(2*A146118(n))/2`
-/

namespace A146097.P226627943544998731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070696 (2 * A146118 n).toNat : ℚ) / 2

end

end A146097.P226627943544998731

/-! ## A146097.P1225102627233309140

`A000110(n)%7`
-/

namespace A146097.P1225102627233309140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000110 n) 7

end

end A146097.P1225102627233309140

/-! ## A146097.P16043891558321167740

`A327884(∑[n])%7`
-/

namespace A146097.P16043891558321167740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327884 (∑ j ∈ Finset.range (n + 1), f1 j)) 7

end

end A146097.P16043891558321167740

/-! ## A146097.P2800186213443892517

`Δ[A005001(n)]%7`
-/

namespace A146097.P2800186213443892517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 7

end

end A146097.P2800186213443892517

/-!
# A146098: Bell numbers (A000110) read mod 8.

The programs for A146098, there is no canonical definition to state claims against.
-/

/-! ## A146098.P13308294423887013045

`A146106(n)%8`
-/

namespace A146098.P13308294423887013045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146106 n) 8

end

end A146098.P13308294423887013045

/-!
# A146099: Bell numbers (A000110) read mod 9.

The programs for A146099, there is no canonical definition to state claims against.
-/

/-! ## A146099.P164561270619616136

`dr(A146108(n))`
-/

namespace A146099.P164561270619616136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A146108 n)

end

end A146099.P164561270619616136

