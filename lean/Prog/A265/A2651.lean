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
import Seq.B000.C020
import Seq.B000.C021
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import Seq.Opaque.C025

/-!
# A265100: a(n) = 9*A005836(n) + 5, n >= 1.

The programs for A265100, the canonical program `A265100.P11859098700391126980` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265100 has offset 1).

The definition of A265100 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265100.P11859098700391126980

`9*A005836(n+1)+5`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A265100

/-- `9*A005836(n+1)+5` -/
def P11859098700391126980.Spec : Prop :=
  ∀ n, P11859098700391126980.a n = A265100 (n + 1)

theorem P11859098700391126980.correct : P11859098700391126980.Spec := by
  intro n
  simp only [A265100, Nat.add_sub_cancel]

end A265100

/-! ## A265100.P9439113043945874760

`3*∑[3*a(∑[n]%n)-3]-1` with `a(0)=2`
-/

namespace A265100.P9439113043945874760
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  3 * f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A265100.P9439113043945874760

namespace A265100

/-- `3*∑[3*a(∑[n]%n)-3]-1` -/
def P9439113043945874760.Spec : Prop :=
  ∀ n, P9439113043945874760.a n = A265100 (n + 1)

end A265100

/-! ## A265100.P8548222313000944646

`∑[3*a(floor(n/2))-a(n-1)]` with `a(0)=5, a(1)=9`
-/

namespace A265100.P8548222313000944646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 9] fun n f1 =>
  3 * f1 ⌊(n : ℚ) / 2⌋.toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265100.P8548222313000944646

namespace A265100

/-- `∑[3*a(floor(n/2))-a(n-1)]` -/
def P8548222313000944646.Spec : Prop :=
  ∀ n, P8548222313000944646.a n = A265100 (n + 1)

end A265100

/-! ## A265100.P5088809154992883084

`9*(∑[and(n, -n)^log2(3)]+n)/2+5`
-/

namespace A265100.P5088809154992883084
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  9 * ((∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)) / 2) + 5

end

end A265100.P5088809154992883084

namespace A265100

/-- `9*(∑[and(n, -n)^log2(3)]+n)/2+5` -/
def P5088809154992883084.Spec : Prop :=
  ∀ n, P5088809154992883084.a n = (A265100 (n + 1) : ℝ)

end A265100

/-! ## A265100.P2410128210866614308

`a(and(n-1, -(n+1)))+a(n-1)+4` with `a(0)=5`
-/

namespace A265100.P2410128210866614308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (Int.land ((n : ℤ) - 1) (-(n + 1 : ℤ))).toNat + a (n - 1) + 4

end

end A265100.P2410128210866614308

namespace A265100

/-- `a(and(n-1, -(n+1)))+a(n-1)+4` -/
def P2410128210866614308.Spec : Prop :=
  ∀ n, (P2410128210866614308.a n : ℤ) = A265100 (n + 1)

end A265100

/-! ## A265100.P13244958224752695247

`record[-(a(n-2)+a(xor(n, n-2)/2))]` with `a(0)=5, a(1)=3`
-/

namespace A265100.P13244958224752695247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 3] fun n f1 =>
  -(f1 (n - 2) + f1 (SequenceMachineLib.roundAway ((Int.xor (n : ℤ) ((n : ℤ) - 2) : ℚ) / 2)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265100.P13244958224752695247

namespace A265100

/-- `record[-(a(n-2)+a(xor(n, n-2)/2))]` -/
def P13244958224752695247.Spec : Prop :=
  ∀ n, P13244958224752695247.a n = A265100 (n + 1)

end A265100

/-! ## A265100.P9183923161740673306

`2-3*(1-record[3-(a(n-2)+a(xor(n, n-2)/2))])` with `a(0)=2, a(1)=2`
-/

namespace A265100.P9183923161740673306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  3 - (f1 (n - 2) + f1 (SequenceMachineLib.roundAway ((Int.xor (n : ℤ) ((n : ℤ) - 2) : ℚ) / 2)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - 3 * (1 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A265100.P9183923161740673306

namespace A265100

/-- `2-3*(1-record[3-(a(n-2)+a(xor(n, n-2)/2))])` -/
def P9183923161740673306.Spec : Prop :=
  ∀ n, P9183923161740673306.a n = A265100 (n + 1)

end A265100

/-! ## A265100.P14959793064398541795

`A356426(n+1)+A356426(n+1)+A191107(n+1)`
-/

namespace A265100.P14959793064398541795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356426 (n + 1) + (A356426 (n + 1) + A191107 (n + 1))

end

end A265100.P14959793064398541795

namespace A265100

/-- `A356426(n+1)+A356426(n+1)+A191107(n+1)` -/
def P14959793064398541795.Spec : Prop :=
  ∀ n, P14959793064398541795.a n = A265100 (n + 1)

end A265100

/-! ## A265100.P17880277637425726111

`A356426(2*(n+1))`
-/

namespace A265100.P17880277637425726111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356426 (2 * (n + 1))

end

end A265100.P17880277637425726111

namespace A265100

/-- `A356426(2*(n+1))` -/
def P17880277637425726111.Spec : Prop :=
  ∀ n, P17880277637425726111.a n = A265100 (n + 1)

end A265100

/-! ## A265100.P7903410515566140227

`A089118(Δ[n²])+3`
-/

namespace A265100.P7903410515566140227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089118 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 3

end

end A265100.P7903410515566140227

namespace A265100

/-- `A089118(Δ[n²])+3` -/
def P7903410515566140227.Spec : Prop :=
  ∀ n, P7903410515566140227.a n = A265100 (n + 1)

end A265100

/-! ## A265100.P473478132239680939

`A356426(Δ[n²])+3`
-/

namespace A265100.P473478132239680939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356426 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 3

end

end A265100.P473478132239680939

namespace A265100

/-- `A356426(Δ[n²])+3` -/
def P473478132239680939.Spec : Prop :=
  ∀ n, P473478132239680939.a n = A265100 (n + 1)

end A265100

/-! ## A265100.P175021495420108452

`A191107(2*(n+1))+1`
-/

namespace A265100.P175021495420108452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191107 (2 * (n + 1)) + 1

end

end A265100.P175021495420108452

namespace A265100

/-- `A191107(2*(n+1))+1` -/
def P175021495420108452.Spec : Prop :=
  ∀ n, P175021495420108452.a n = A265100 (n + 1)

end A265100

/-! ## A265100.P10077223681595452486

`A081601(2*(n+1))+2`
-/

namespace A265100.P10077223681595452486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081601 (2 * (n + 1)) + 2

end

end A265100.P10077223681595452486

namespace A265100

/-- `A081601(2*(n+1))+2` -/
def P10077223681595452486.Spec : Prop :=
  ∀ n, P10077223681595452486.a n = A265100 (n + 1)

end A265100

/-! ## A265100.P14982649256366001335

`A074939(2*n+1)+A001285(n)`
-/

namespace A265100.P14982649256366001335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074939 (2 * n + 1) + A001285 n

end

end A265100.P14982649256366001335

namespace A265100

/-- `A074939(2*n+1)+A001285(n)` -/
def P14982649256366001335.Spec : Prop :=
  ∀ n, P14982649256366001335.a n = A265100 (n + 1)

end A265100

/-! ## A265100.P5685188475920296960

`A033159(2*(n+1))+A005823(2*(n+1))`
-/

namespace A265100.P5685188475920296960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033159 (2 * (n + 1)) + A005823 (2 * (n + 1))

end

end A265100.P5685188475920296960

namespace A265100

/-- `A033159(2*(n+1))+A005823(2*(n+1))` -/
def P5685188475920296960.Spec : Prop :=
  ∀ n, P5685188475920296960.a n = A265100 (n + 1)

end A265100

/-! ## A265100.P10017803674807592064

`A055247(2*(n+1))+A004793(2*(n+1))`
-/

namespace A265100.P10017803674807592064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055247 (2 * (n + 1)) + A004793 (2 * (n + 1))

end

end A265100.P10017803674807592064

namespace A265100

/-- `A055247(2*(n+1))+A004793(2*(n+1))` -/
def P10017803674807592064.Spec : Prop :=
  ∀ n, P10017803674807592064.a n = A265100 (n + 1)

end A265100

/-! ## A265100.P5638027910344171271

`A074938(2*n+1)+A001285(2*n+1)`
-/

namespace A265100.P5638027910344171271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074938 (2 * n + 1) + A001285 (2 * n + 1)

end

end A265100.P5638027910344171271

namespace A265100

/-- `A074938(2*n+1)+A001285(2*n+1)` -/
def P5638027910344171271.Spec : Prop :=
  ∀ n, P5638027910344171271.a n = A265100 (n + 1)

end A265100

/-! ## A265100.P5014858950472180025

`A191106(2*(n+1))+A003278(2*(n+1))`
-/

namespace A265100.P5014858950472180025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191106 (2 * (n + 1)) + A003278 (2 * (n + 1))

end

end A265100.P5014858950472180025

namespace A265100

/-- `A191106(2*(n+1))+A003278(2*(n+1))` -/
def P5014858950472180025.Spec : Prop :=
  ∀ n, P5014858950472180025.a n = A265100 (n + 1)

end A265100

/-! ## A265100.P13949970441474783760

`A191106(2*n+1)+A033164(2*n+1)`
-/

namespace A265100.P13949970441474783760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191106 (2 * n + 1) + A033164 (2 * n + 1)

end

end A265100.P13949970441474783760

namespace A265100

/-- `A191106(2*n+1)+A033164(2*n+1)` -/
def P13949970441474783760.Spec : Prop :=
  ∀ n, P13949970441474783760.a n = A265100 (n + 1)

end A265100

/-! ## A265100.P12281508628955049189

`A003278(4*(n+1))`
-/

namespace A265100.P12281508628955049189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (4 * (n + 1))

end

end A265100.P12281508628955049189

namespace A265100

/-- `A003278(4*(n+1))` -/
def P12281508628955049189.Spec : Prop :=
  ∀ n, P12281508628955049189.a n = A265100 (n + 1)

end A265100

/-!
# A265101: a(n) = binomial(6*n + 5, 3*n + 1)/(6*n + 5).

The programs for A265101, there is no canonical definition to state claims against.
-/

/-! ## A265101.P75033264193681366

`A050181(3*n+1)`
-/

namespace A265101.P75033264193681366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050181 (3 * n + 1)

end

end A265101.P75033264193681366

/-! ## A265101.P840996039123037855

`A003441(3*n+2)`
-/

namespace A265101.P840996039123037855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003441 (3 * n + 2)

end

end A265101.P840996039123037855

/-! ## A265101.P11867041429541615931

`A000245(3*n+2)/3`
-/

namespace A265101.P11867041429541615931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000245 (3 * n + 2) : ℚ) / 3

end

end A265101.P11867041429541615931

/-! ## A265101.P15599868340533802004

`A037955(A016969(n))/A016969(n)`
-/

namespace A265101.P15599868340533802004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037955 (A016969 n).toNat : ℚ) / (A016969 n : ℚ)

end

end A265101.P15599868340533802004

/-! ## A265101.P10128442025490500011

`A132892(A164016(n))`
-/

namespace A265101.P10128442025490500011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132892 (A164016 n).toNat

end

end A265101.P10128442025490500011

/-!
# A265102: a(n) = binomial(8*n + 6, 4*n + 1)/(8*n + 6).

The programs for A265102, there is no canonical definition to state claims against.
-/

/-! ## A265102.P12179135184724758524

`A003444(4*(n+1))`
-/

namespace A265102.P12179135184724758524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003444 (4 * (n + 1))

end

end A265102.P12179135184724758524

/-! ## A265102.P16628306276308197866

`A050182(4*n+1)`
-/

namespace A265102.P16628306276308197866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050182 (4 * n + 1)

end

end A265102.P16628306276308197866

/-! ## A265102.P5114000325122504140

`A000913(4*n+2)`
-/

namespace A265102.P5114000325122504140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000913 (4 * n + 2)

end

end A265102.P5114000325122504140

/-! ## A265102.P9760202552596777800

`A006078(3*(n+1)+n)`
-/

namespace A265102.P9760202552596777800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006078 (3 * (n + 1) + n)

end

end A265102.P9760202552596777800

/-! ## A265102.P5566094421876796180

`A220881((8*n+2)/2+4)`
-/

namespace A265102.P5566094421876796180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220881 (SequenceMachineLib.roundAway ((8 * n + 2 : ℚ) / 2 + 4)).toNat

end

end A265102.P5566094421876796180

/-!
# A265103: a(n) = binomial(10*n + 7, 5*n + 1)/(10*n + 7).

The programs for A265103, there is no canonical definition to state claims against.
-/

/-! ## A265103.P8214815874052939915

`A050183(4*n+n+1)`
-/

namespace A265103.P8214815874052939915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050183 (4 * n + (n + 1))

end

end A265103.P8214815874052939915

/-! ## A265103.P1421414799894363397

`A306444(A000096(n+4)+6)`
-/

namespace A265103.P1421414799894363397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306444 (A000096 (n + 4) + 6).toNat

end

end A265103.P1421414799894363397

/-!
# A265104: a(n) = A265100(n+1) - 6, n >= 1.

The programs for A265104, the canonical program `A265104.P5308251035994619113` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265104 has offset 1).

The definition of A265104 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265104.P5308251035994619113

`A265100(n+2)-6`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A265104

/-- `A265100(n+2)-6` -/
def P5308251035994619113.Spec : Prop :=
  ∀ n, P5308251035994619113.a n = A265104 (n + 1)

theorem P5308251035994619113.correct : P5308251035994619113.Spec := by
  intro n
  simp only [A265104, Nat.add_sub_cancel]

end A265104

/-! ## A265104.P10993590679157659846

`∑[3*Δ[3*a(floor(n/2))+n]+6]-1` with `a(0)=0`
-/

namespace A265104.P10993590679157659846
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  3 * f2 ⌊(n : ℚ) / 2⌋.toNat + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A265104.P10993590679157659846

namespace A265104

/-- `∑[3*Δ[3*a(floor(n/2))+n]+6]-1` -/
def P10993590679157659846.Spec : Prop :=
  ∀ n, P10993590679157659846.a n = A265104 (n + 1)

end A265104

/-! ## A265104.P14832608074164837161

`A089118(2*(n+1))`
-/

namespace A265104.P14832608074164837161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089118 (2 * (n + 1))

end

end A265104.P14832608074164837161

namespace A265104

/-- `A089118(2*(n+1))` -/
def P14832608074164837161.Spec : Prop :=
  ∀ n, P14832608074164837161.a n = A265104 (n + 1)

end A265104

/-! ## A265104.P12256236819883699285

`A356447(3*(n+1))`
-/

namespace A265104.P12256236819883699285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356447 (3 * (n + 1))

end

end A265104.P12256236819883699285

namespace A265104

/-- `A356447(3*(n+1))` -/
def P12256236819883699285.Spec : Prop :=
  ∀ n, P12256236819883699285.a n = A265104 (n + 1)

end A265104

/-! ## A265104.P1082551411931893320

`A370662(6*(n+1))`
-/

namespace A265104.P1082551411931893320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370662 (6 * (n + 1))

end

end A265104.P1082551411931893320

namespace A265104

/-- `A370662(6*(n+1))` -/
def P1082551411931893320.Spec : Prop :=
  ∀ n, P1082551411931893320.a n = A265104 (n + 1)

end A265104

/-!
# A265105: Triangle T(n,k) of coefficients of q^k in LB_n(12/3), set partitions that avoid 12/3 with lb=k. Related to a restricted divisor function.

The programs for A265105, there is no canonical definition to state claims against.
-/

/-! ## A265105.P15142821260642842058

`A097806(A057728(A186988(n+1)))+A035614(n)`
-/

namespace A265105.P15142821260642842058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 (A057728 (A186988 (n + 1)).toNat).toNat + A035614 n

end

end A265105.P15142821260642842058

/-! ## A265105.P11820340713387275274

`A035612(n+1)-A235145(A023607(n))`
-/

namespace A265105.P11820340713387275274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (n + 1) - A235145 (A023607 n).toNat

end

end A265105.P11820340713387275274

/-! ## A265105.P914672650750750618

`A035612(n+1)-A055641(A214938(n))`
-/

namespace A265105.P914672650750750618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (n + 1) - A055641 (A214938 n).toNat

end

end A265105.P914672650750750618

/-! ## A265105.P1385897477665462487

`A035612(n+1)-A102683(A287381(n))`
-/

namespace A265105.P1385897477665462487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (n + 1) - A102683 (A287381 n).toNat

end

end A265105.P1385897477665462487

/-! ## A265105.P13594554861927771397

`A261092(A002574(n+4))+A035614(n)`
-/

namespace A265105.P13594554861927771397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261092 (A002574 (n + 4)).toNat + A035614 n

end

end A265105.P13594554861927771397

/-!
# A265106: Expansion of (x^5-x^4-2*x^3+x^2-x)/(-x^4+x^3-2*x^2+3*x-1).

The programs for A265106, the canonical program `A265106.P14345330640873408604` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265106 has offset 0).

The definition of A265106 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265106.P14345330640873408604

`2*a(n-1)+a(n-3)+2` with `a(0)=0, a(1)=1, a(2)=2, a(3)=6, a(4)=16`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A265106

/-- `2*a(n-1)+a(n-3)+2` -/
def P14345330640873408604.Spec : Prop :=
  ∀ n, (P14345330640873408604.a n : ℤ) = A265106 n

theorem P14345330640873408604.correct : P14345330640873408604.Spec := by
  intro n
  simp only [A265106]

end A265106

/-! ## A265106.P6572901352791107424

`A279211(A110052(n))`
-/

namespace A265106.P6572901352791107424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279211 (A110052 n).toNat

end

end A265106.P6572901352791107424

namespace A265106

/-- `A279211(A110052(n))` -/
def P6572901352791107424.Spec : Prop :=
  ∀ n, P6572901352791107424.a n = A265106 n

end A265106

/-! ## A265106.P7141197629324003732

`A033183(Δ[n²]*A308580(n))`
-/

namespace A265106.P7141197629324003732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A308580 n).toNat

end

end A265106.P7141197629324003732

namespace A265106

/-- `A033183(Δ[n²]*A308580(n))` -/
def P7141197629324003732.Spec : Prop :=
  ∀ n, P7141197629324003732.a n = A265106 n

end A265106

/-! ## A265106.P4693393535559380581

`A001462(A000984(n))-A226290(n)`
-/

namespace A265106.P4693393535559380581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A000984 n).toNat - A226290 n

end

end A265106.P4693393535559380581

namespace A265106

/-- `A001462(A000984(n))-A226290(n)` -/
def P4693393535559380581.Spec : Prop :=
  ∀ n, P4693393535559380581.a n = A265106 n

end A265106

/-!
# A265107: Expansion of (2*x^4+x^3+x)/(-x^2-2*x+1).

The programs for A265107, the canonical program `A265107.P11128251971785169295` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265107 has offset 0).

The definition of A265107 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265107.P11128251971785169295

`2*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=6, a(4)=16`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A265107

/-- `2*a(n-1)+a(n-2)` -/
def P11128251971785169295.Spec : Prop :=
  ∀ n, (P11128251971785169295.a n : ℤ) = A265107 n

theorem P11128251971785169295.correct : P11128251971785169295.Spec := by
  intro n
  simp only [A265107]

end A265107

/-! ## A265107.P18145818905022686579

`(A078343(n+2)%A000051(2*n))%A078343(n)`
-/

namespace A265107.P18145818905022686579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A078343 (n + 2)) (A000051 (2 * n))) (A078343 n)

end

end A265107.P18145818905022686579

namespace A265107

/-- `(A078343(n+2)%A000051(2*n))%A078343(n)` -/
def P18145818905022686579.Spec : Prop :=
  ∀ n, P18145818905022686579.a n = A265107 n

end A265107

/-! ## A265107.P2779805946244090761

`ceil(A210695(n)/A052937(n))`
-/

namespace A265107.P2779805946244090761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A210695 n : ℚ) / (A052937 n : ℚ)⌉

end

end A265107.P2779805946244090761

namespace A265107

/-- `ceil(A210695(n)/A052937(n))` -/
def P2779805946244090761.Spec : Prop :=
  ∀ n, P2779805946244090761.a n = A265107 n

end A265107

/-! ## A265107.P10821646468484150854

`round(A210695(n)/∑[A001333(n)])`
-/

namespace A265107.P10821646468484150854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A210695 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ))

end

end A265107.P10821646468484150854

namespace A265107

/-- `round(A210695(n)/∑[A001333(n)])` -/
def P10821646468484150854.Spec : Prop :=
  ∀ n, P10821646468484150854.a n = A265107 n

end A265107

/-! ## A265107.P3888225451871771793

`round(A006451(2*n)/A052937(n+1))`
-/

namespace A265107.P3888225451871771793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A006451 (2 * n) : ℚ) / (A052937 (n + 1) : ℚ))

end

end A265107.P3888225451871771793

namespace A265107

/-- `round(A006451(2*n)/A052937(n+1))` -/
def P3888225451871771793.Spec : Prop :=
  ∀ n, P3888225451871771793.a n = A265107 n

end A265107

/-! ## A265107.P10112198190701766013

`A078343(A293754(n+1))%A078343(n)`
-/

namespace A265107.P10112198190701766013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078343 (A293754 (n + 1)).toNat) (A078343 n)

end

end A265107.P10112198190701766013

namespace A265107

/-- `A078343(A293754(n+1))%A078343(n)` -/
def P10112198190701766013.Spec : Prop :=
  ∀ n, P10112198190701766013.a n = A265107 n

end A265107

/-!
# A265108: The number of n-digit numbers in A264847 (pluritriangular numbers).

The programs for A265108, there is no canonical definition to state claims against.
-/

/-! ## A265108.P11991730312296883128

`A123064(a(n-1)+n)` with `a(0)=0, a(1)=4`
-/

namespace A265108.P11991730312296883128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  A123064 (a (n - 1) + (n : ℤ)).toNat

end

end A265108.P11991730312296883128

/-! ## A265108.P11728387308329017575

`A121855(∑[A323770(n)])`
-/

namespace A265108.P11728387308329017575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121855 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A265108.P11728387308329017575

/-!
# A265110: Partial row products of table A027746, prime factors with repetition.

The programs for A265110, there is no canonical definition to state claims against.
-/

/-! ## A265110.P16564182376074328641

`A027749(∑[A088806(n+1)!])`
-/

namespace A265110.P16564182376074328641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A088806 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027749 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265110.P16564182376074328641

/-! ## A265110.P12746765498101756239

`A027749(∑[A062378(n+1)!!])`
-/

namespace A265110.P12746765498101756239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.factorial (A062378 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027749 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265110.P12746765498101756239

/-! ## A265110.P5948188996453712895

`A285904(n+1)-A353472(A001333(n))`
-/

namespace A265110.P5948188996453712895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285904 (n + 1) - A353472 (A001333 n).toNat

end

end A265110.P5948188996453712895

/-! ## A265110.P16894550594595407307

`A285904(n+1)-A285963(A285913(n))`
-/

namespace A265110.P16894550594595407307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285904 (n + 1) - A285963 (A285913 n).toNat

end

end A265110.P16894550594595407307

/-! ## A265110.P18364029366088634789

`A134021(A003016(2*(n+1))*A383385(3*n+4))`
-/

namespace A265110.P18364029366088634789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 (A003016 (2 * (n + 1)) * A383385 (3 * n + 4)).toNat

end

end A265110.P18364029366088634789

/-!
# A265111: A rearrangement of the terms of A027746 (seen as flat list) such that adjacent terms are distinct.

The programs for A265111, there is no canonical definition to state claims against.
-/

/-! ## A265111.P14072871925198731152

`ratio[A265125(A123108(2*n))]`
-/

namespace A265111.P14072871925198731152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265125 (A123108 (2 * n)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A265111.P14072871925198731152

/-! ## A265111.P9944605958100856991

`ratio[A265125(A000267(A002620(n)))]`
-/

namespace A265111.P9944605958100856991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265125 (A000267 (A002620 n).toNat).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A265111.P9944605958100856991

/-! ## A265111.P2727902427287286290

`A265125(n+1)/A265125(A028310(n))`
-/

namespace A265111.P2727902427287286290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265125 (n + 1) : ℚ) / (A265125 (A028310 n).toNat : ℚ)

end

end A265111.P2727902427287286290

/-! ## A265111.P8628633234519638239

`ratio[A265125(A007318(A000124(n)))]`
-/

namespace A265111.P8628633234519638239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265125 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A265111.P8628633234519638239

/-! ## A265111.P14435080146996611573

`ratio[A265125(A004736(A133263(n)))]`
-/

namespace A265111.P14435080146996611573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265125 (A004736 (A133263 n).toNat).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A265111.P14435080146996611573

/-!
# A265112: a(n) = A023360(A000040(n)): number of compositions of prime(n) into prime parts.

The programs for A265112, there is no canonical definition to state claims against.
-/

/-! ## A265112.P13905649216207196640

`A023360(A000040(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265112.P13905649216207196640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023360 (A000040 (n + 1)).toNat

end

end A265112.P13905649216207196640

/-! ## A265112.P7189148835733658858

`A023360(p?[xor(1, n)])`
-/

namespace A265112.P7189148835733658858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023360 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A265112.P7189148835733658858

/-! ## A265112.P14173079421581218242

`A023360(record[A051698(n)])`
-/

namespace A265112.P14173079421581218242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023360 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A265112.P14173079421581218242

/-! ## A265112.P10089732590022306877

`A023360(A008578(n+2))`
-/

namespace A265112.P10089732590022306877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023360 (A008578 (n + 2)).toNat

end

end A265112.P10089732590022306877

/-! ## A265112.P7318756560257138849

`A023360(eq[1, A032741(n)])`
-/

namespace A265112.P7318756560257138849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023360 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265112.P7318756560257138849

/-! ## A265112.P10626200663858551136

`A023360(record[A006530(n+2)])`
-/

namespace A265112.P10626200663858551136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023360 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A265112.P10626200663858551136

/-! ## A265112.P10058721449926758729

`A023360(record[A014963(n+2)])`
-/

namespace A265112.P10058721449926758729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023360 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A265112.P10058721449926758729

/-! ## A265112.P17490735422759186905

`A023360(record[A020639(n+2)])`
-/

namespace A265112.P17490735422759186905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023360 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A265112.P17490735422759186905

/-! ## A265112.P8822588995897923518

`A023360(A001747(n+2)/2)`
-/

namespace A265112.P8822588995897923518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023360 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A265112.P8822588995897923518

/-! ## A265112.P9494905117021210447

`A023360(p?[record[A017666(n+1)]])`
-/

namespace A265112.P9494905117021210447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023360 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A265112.P9494905117021210447

/-! ## A265112.P3857158033436275024

`A023360(A007504(n+1)-A007504(n))`
-/

namespace A265112.P3857158033436275024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023360 (A007504 (n + 1) - A007504 n).toNat

end

end A265112.P3857158033436275024

/-! ## A265112.P14123905586010508794

`A023360(A030514(n+1)/A030078(n+1))`
-/

namespace A265112.P14123905586010508794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023360 (SequenceMachineLib.roundAway ((A030514 (n + 1) : ℚ) / (A030078 (n + 1) : ℚ))).toNat

end

end A265112.P14123905586010508794

/-!
# A265113: Primes p such that p and p^2 have the same number of 1's in their binary representations.

The programs for A265113, the canonical program `A265113.P13699448009274336171` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265113 has offset 1).

The definition of A265113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 585 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265113.P13699448009274336171

`p?[A077436(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A265113

/-- `p?[A077436(n+1)]` -/
def P13699448009274336171.Spec : Prop :=
  ∀ n, P13699448009274336171.a n = A265113 (n + 1)

theorem P13699448009274336171.correct : P13699448009274336171.Spec := by
  intro n
  simp only [A265113, Nat.add_sub_cancel]

end A265113

/-! ## A265113.P1886553487270176699

`p?[A261586(n+1)+A000007(n)]`
-/

namespace A265113.P1886553487270176699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261586 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265113.P1886553487270176699

namespace A265113

/-- `p?[A261586(n+1)+A000007(n)]` -/
def P1886553487270176699.Spec : Prop :=
  ∀ n, P1886553487270176699.a n = A265113 (n + 1)

end A265113

/-! ## A265113.P13404377980075609803

`p?[A261586(n+1)+A036987(2*n)]`
-/

namespace A265113.P13404377980075609803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261586 (n + 1) + A036987 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265113.P13404377980075609803

namespace A265113

/-- `p?[A261586(n+1)+A036987(2*n)]` -/
def P13404377980075609803.Spec : Prop :=
  ∀ n, P13404377980075609803.a n = A265113 (n + 1)

end A265113

/-! ## A265113.P3816625524485758320

`∩[A077436(n+1), A236514(n+1)]`
-/

namespace A265113.P3816625524485758320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265113.P3816625524485758320

namespace A265113

/-- `∩[A077436(n+1), A236514(n+1)]` -/
def P3816625524485758320.Spec : Prop :=
  ∀ n, (P3816625524485758320.a n : ℤ) = A265113 (n + 1)

end A265113

/-! ## A265113.P875696385799507731

`p?[A000034(A002202(n+1))*A261586(n+1)]`
-/

namespace A265113.P875696385799507731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A002202 (n + 1)).toNat * A261586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265113.P875696385799507731

namespace A265113

/-- `p?[A000034(A002202(n+1))*A261586(n+1)]` -/
def P875696385799507731.Spec : Prop :=
  ∀ n, P875696385799507731.a n = A265113 (n + 1)

end A265113

/-! ## A265113.P6188123293450712567

`∩[A077436(n+1), A095316(n+1)]`
-/

namespace A265113.P6188123293450712567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265113.P6188123293450712567

namespace A265113

/-- `∩[A077436(n+1), A095316(n+1)]` -/
def P6188123293450712567.Spec : Prop :=
  ∀ n, (P6188123293450712567.a n : ℤ) = A265113 (n + 1)

end A265113

/-! ## A265113.P13623183963216373330

`∩[A077436(n+1), A095320(n+1)]`
-/

namespace A265113.P13623183963216373330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265113.P13623183963216373330

namespace A265113

/-- `∩[A077436(n+1), A095320(n+1)]` -/
def P13623183963216373330.Spec : Prop :=
  ∀ n, (P13623183963216373330.a n : ℤ) = A265113 (n + 1)

end A265113

/-! ## A265113.P3897997147190614336

`∩[A077436(n+1), A216884(n+1)]`
-/

namespace A265113.P3897997147190614336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265113.P3897997147190614336

namespace A265113

/-- `∩[A077436(n+1), A216884(n+1)]` -/
def P3897997147190614336.Spec : Prop :=
  ∀ n, (P3897997147190614336.a n : ℤ) = A265113 (n + 1)

end A265113

/-! ## A265113.P5529951803957395000

`∩[A000040(n+1), A077436(n+1)]`
-/

namespace A265113.P5529951803957395000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265113.P5529951803957395000

namespace A265113

/-- `∩[A000040(n+1), A077436(n+1)]` -/
def P5529951803957395000.Spec : Prop :=
  ∀ n, (P5529951803957395000.a n : ℤ) = A265113 (n + 1)

end A265113

/-! ## A265113.P86387886210888938

`∩[A045319(n+1), A077436(n+1)]`
-/

namespace A265113.P86387886210888938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265113.P86387886210888938

namespace A265113

/-- `∩[A045319(n+1), A077436(n+1)]` -/
def P86387886210888938.Spec : Prop :=
  ∀ n, (P86387886210888938.a n : ℤ) = A265113 (n + 1)

end A265113

/-! ## A265113.P18294434286069885671

`∩[A070159(n+1), A077436(n+1)]`
-/

namespace A265113.P18294434286069885671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265113.P18294434286069885671

namespace A265113

/-- `∩[A070159(n+1), A077436(n+1)]` -/
def P18294434286069885671.Spec : Prop :=
  ∀ n, (P18294434286069885671.a n : ℤ) = A265113 (n + 1)

end A265113

/-! ## A265113.P14551447385306368644

`∩[A077436(n+1), A106118(n+1)]`
-/

namespace A265113.P14551447385306368644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265113.P14551447385306368644

namespace A265113

/-- `∩[A077436(n+1), A106118(n+1)]` -/
def P14551447385306368644.Spec : Prop :=
  ∀ n, (P14551447385306368644.a n : ℤ) = A265113 (n + 1)

end A265113

/-! ## A265113.P8231376160742760238

`∩[A077436(n+1), A132630(n+1)]`
-/

namespace A265113.P8231376160742760238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265113.P8231376160742760238

namespace A265113

/-- `∩[A077436(n+1), A132630(n+1)]` -/
def P8231376160742760238.Spec : Prop :=
  ∀ n, (P8231376160742760238.a n : ℤ) = A265113 (n + 1)

end A265113

/-! ## A265113.P13214780366963049041

`∩[A077436(n+1), A136327(n+1)]`
-/

namespace A265113.P13214780366963049041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265113.P13214780366963049041

namespace A265113

/-- `∩[A077436(n+1), A136327(n+1)]` -/
def P13214780366963049041.Spec : Prop :=
  ∀ n, (P13214780366963049041.a n : ℤ) = A265113 (n + 1)

end A265113

/-! ## A265113.P14643152479156532409

`∩[A077436(n+1), A189710(n+1)]`
-/

namespace A265113.P14643152479156532409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265113.P14643152479156532409

namespace A265113

/-- `∩[A077436(n+1), A189710(n+1)]` -/
def P14643152479156532409.Spec : Prop :=
  ∀ n, (P14643152479156532409.a n : ℤ) = A265113 (n + 1)

end A265113

/-! ## A265113.P440654892908406882

`∩[A077436(n+1), A197636(n+1)]`
-/

namespace A265113.P440654892908406882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265113.P440654892908406882

namespace A265113

/-- `∩[A077436(n+1), A197636(n+1)]` -/
def P440654892908406882.Spec : Prop :=
  ∀ n, (P440654892908406882.a n : ℤ) = A265113 (n + 1)

end A265113

/-! ## A265113.P7680804456397396500

`∩[A077436(n+1), A328232(n+1)]`
-/

namespace A265113.P7680804456397396500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265113.P7680804456397396500

namespace A265113

/-- `∩[A077436(n+1), A328232(n+1)]` -/
def P7680804456397396500.Spec : Prop :=
  ∀ n, (P7680804456397396500.a n : ℤ) = A265113 (n + 1)

end A265113

/-! ## A265113.P4742761725382053996

`filter[A077436(n+2), A010051(#)]`
-/

namespace A265113.P4742761725382053996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077436 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A265113.P4742761725382053996

namespace A265113

/-- `filter[A077436(n+2), A010051(#)]` -/
def P4742761725382053996.Spec : Prop :=
  ∀ n, P4742761725382053996.a n = A265113 (n + 1)

end A265113

/-! ## A265113.P11752374998007974630

`∩[A236514(n+1), A352084(n+1)]`
-/

namespace A265113.P11752374998007974630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265113.P11752374998007974630

namespace A265113

/-- `∩[A236514(n+1), A352084(n+1)]` -/
def P11752374998007974630.Spec : Prop :=
  ∀ n, (P11752374998007974630.a n : ℤ) = A265113 (n + 1)

end A265113

/-! ## A265113.P3484784607440843601

`record[A006530(2*A261586(n+1))]`
-/

namespace A265113.P3484784607440843601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A261586 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265113.P3484784607440843601

namespace A265113

/-- `record[A006530(2*A261586(n+1))]` -/
def P3484784607440843601.Spec : Prop :=
  ∀ n, P3484784607440843601.a n = A265113 (n + 1)

end A265113

/-!
# A265115: Number of nX3 arrays containing 3 copies of 0..n-1 with row sums equal, column sums equal and full-length antidiagonal sums equal to the short dimension sums.

The programs for A265115, there is no canonical definition to state claims against.
-/

/-! ## A265115.P363055062341087457

`and(∑[A323503(3*n)], A281663(n+1))`
-/

namespace A265115.P363055062341087457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323503 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A281663 (n + 1))

end

end A265115.P363055062341087457

/-! ## A265115.P6061676567643610774

`A077957(n)*A165412(A102376(n))`
-/

namespace A265115.P6061676567643610774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 n * A165412 (A102376 n).toNat

end

end A265115.P6061676567643610774

/-! ## A265115.P2235123771103272240

`A000005(A084159(n))*A265829(n)`
-/

namespace A265115.P2235123771103272240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A084159 n).toNat * A265829 n

end

end A265115.P2235123771103272240

/-!
# A265116: Number of nX4 arrays of permutations of 4 copies of 0..n-1 with row sums equal, column sums equal and full-length antidiagonal sums equal to the short dimension sums.

The programs for A265116, there is no canonical definition to state claims against.
-/

/-! ## A265116.P9613247062567225295

`A265117(A141214(n+1))`
-/

namespace A265116.P9613247062567225295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265117 (A141214 (n + 1)).toNat

end

end A265116.P9613247062567225295

/-! ## A265116.P7558169765227828235

`A265117(A027379(n+2))`
-/

namespace A265116.P7558169765227828235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265117 (A027379 (n + 2)).toNat

end

end A265116.P7558169765227828235

/-! ## A265116.P8440039733728404323

`A265117(A055998(n+2))`
-/

namespace A265116.P8440039733728404323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265117 (A055998 (n + 2)).toNat

end

end A265116.P8440039733728404323

/-!
# A265117: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with row sums equal, column sums equal and full-length antidiagonal sums equal to the short dimension sums.

The programs for A265117, there is no canonical definition to state claims against.
-/

/-! ## A265117.P12430619311101966578

`A337997(A121314(n)%A112684(n+1))`
-/

namespace A265117.P12430619311101966578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337997 (Int.tmod (A121314 n) (A112684 (n + 1))).toNat

end

end A265117.P12430619311101966578

/-! ## A265117.P17364899654443030404

`A326476(A326476(n)+A007920(4*n+1))`
-/

namespace A265117.P17364899654443030404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326476 (A326476 n + A007920 (4 * n + 1)).toNat

end

end A265117.P17364899654443030404

/-! ## A265117.P16812223581014043672

`and(A020651(A300208(n+1)), A265863(n+1))`
-/

namespace A265117.P16812223581014043672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020651 (A300208 (n + 1)).toNat) (A265863 (n + 1))

end

end A265117.P16812223581014043672

/-! ## A265117.P16074219456726657605

`and(A274292(n), A351545(A020695(n)))`
-/

namespace A265117.P16074219456726657605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A274292 n) (A351545 (A020695 n).toNat)

end

end A265117.P16074219456726657605

/-! ## A265117.P12828049404283612575

`A007953(C(A261718(n), A178568(n+1)))`
-/

namespace A265117.P12828049404283612575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (Nat.choose (A261718 n).toNat (A178568 (n + 1)).toNat)

end

end A265117.P12828049404283612575

/-!
# A265118: Number of 3Xn arrays containing n copies of 0..3-1 with row sums equal, column sums equal and full-length antidiagonal sums equal to the short dimension sums.

The programs for A265118, there is no canonical definition to state claims against.
-/

/-! ## A265118.P11589981342368714360

`A265117(∑[n+2]+4)`
-/

namespace A265118.P11589981342368714360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265117 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A265118.P11589981342368714360

/-! ## A265118.P3557660774656214697

`lcm(2, A265117(A167614(n+1)))`
-/

namespace A265118.P3557660774656214697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A265117 (A167614 (n + 1)).toNat)

end

end A265118.P3557660774656214697

/-! ## A265118.P5573835591854239890

`A265117(A167614(n+1))+A011729(n)`
-/

namespace A265118.P5573835591854239890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265117 (A167614 (n + 1)).toNat + A011729 n

end

end A265118.P5573835591854239890

/-! ## A265118.P7439009284006064619

`A265117(A167614(n+1))+A025466(n)`
-/

namespace A265118.P7439009284006064619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265117 (A167614 (n + 1)).toNat + A025466 n

end

end A265118.P7439009284006064619

/-! ## A265118.P11296330670477218343

`A265117(A167614(n+1))+A031346(n)`
-/

namespace A265118.P11296330670477218343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265117 (A167614 (n + 1)).toNat + A031346 n

end

end A265118.P11296330670477218343

/-!
# A265119: Number of 4Xn arrays containing n copies of 0..4-1 with row sums equal, column sums equal and full-length antidiagonal sums equal to the short dimension sums.

The programs for A265119, there is no canonical definition to state claims against.
-/

/-! ## A265119.P12325895402771493709

`A265117(A141214(n)+7)`
-/

namespace A265119.P12325895402771493709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265117 (A141214 n + 7).toNat

end

end A265119.P12325895402771493709

/-! ## A265119.P7332989196369524819

`A265117(A052905(n)+9)`
-/

namespace A265119.P7332989196369524819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265117 (A052905 n + 9).toNat

end

end A265119.P7332989196369524819

/-! ## A265119.P14928557894227995969

`A265117(A055999(n)+10)`
-/

namespace A265119.P14928557894227995969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265117 (A055999 n + 10).toNat

end

end A265119.P14928557894227995969

/-! ## A265119.P3884633457718096624

`A265117(eq[5, A066657(n)])`
-/

namespace A265119.P3884633457718096624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265119.P3884633457718096624

/-!
# A265122: Binary representation of the n-th iteration of the "Rule 73" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265122, there is no canonical definition to state claims against.
-/

/-! ## A265122.P12873496703914041512

`A007088(A265156(n))`
-/

namespace A265122.P12873496703914041512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A265156 n).toNat

end

end A265122.P12873496703914041512

/-! ## A265122.P6069817487061817305

`A185544(2*A265156(n))`
-/

namespace A265122.P6069817487061817305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A265156 n).toNat

end

end A265122.P6069817487061817305

/-!
# A265124: Integers n such that A002110(n) + A006450(n) is prime.

The programs for A265124, there is no canonical definition to state claims against.
-/

/-! ## A265124.P5525723894761099248

`∑[A250120(A324095(n+4))%A184399(n+1)]`
-/

namespace A265124.P5525723894761099248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250120 (A324095 (n + 4)).toNat) (A184399 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265124.P5525723894761099248

/-! ## A265124.P4784755301489041163

`lt[A132634(A233583(n+1)), A008474(3*n+1)]`
-/

namespace A265124.P4784755301489041163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132634 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008474 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A265124.P4784755301489041163

/-! ## A265124.P12927190811114752548

`A165305(a(n-1)+1)` with `a(0)=1`
-/

namespace A265124.P12927190811114752548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A165305 (a (n - 1) + 1).toNat

end

end A265124.P12927190811114752548

/-! ## A265124.P5496076810167727117

`∑[floor(sqrt(A178688(3*(n+1))))]`
-/

namespace A265124.P5496076810167727117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A178688 (3 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265124.P5496076810167727117

/-! ## A265124.P17217770659813029697

`or(n+1, A121432(a(n-1))-1)` with `a(0)=1`
-/

namespace A265124.P17217770659813029697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (n + 1 : ℤ) (A121432 (a (n - 1)).toNat - 1)

end

end A265124.P17217770659813029697

/-!
# A265125: Partial products of A265111.

The programs for A265125, there is no canonical definition to state claims against.
-/

/-! ## A265125.P12826881451545062015

`∏[A265111(n+1)]`
-/

namespace A265125.P12826881451545062015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A265125.P12826881451545062015

/-! ## A265125.P2372667844038795496

`a(n-1)*A265111(A000027(n+1))` with `a(0)=1`
-/

namespace A265125.P2372667844038795496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A265111 (A000027 (n + 1)).toNat

end

end A265125.P2372667844038795496

/-! ## A265125.P11444374351440447312

`a(n-1)*A265111(A008619(2*n))` with `a(0)=1`
-/

namespace A265125.P11444374351440447312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A265111 (A008619 (2 * n)).toNat

end

end A265125.P11444374351440447312

/-! ## A265125.P11991335672180294013

`∏[A265111(A008619(2*n))%A016945(n)]`
-/

namespace A265125.P11991335672180294013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265111 (A008619 (2 * n)).toNat) (A016945 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A265125.P11991335672180294013

/-! ## A265125.P3305088870629663436

`∏[A020639(A260443(n)²)]`
-/

namespace A265125.P3305088870629663436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A260443 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A265125.P3305088870629663436

/-!
# A265127: a(n) = prime(n) * 2^n.

The programs for A265127, the canonical program `A265127.P10114735400883052266` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265127 has offset 1).

The definition of A265127 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A239885, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A265127.P10114735400883052266

`4*A239885(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A265127

/-- `4*A239885(n+1)` -/
def P10114735400883052266.Spec : Prop :=
  ∀ n, P10114735400883052266.a n = A265127 (n + 1)

theorem P10114735400883052266.correct : P10114735400883052266.Spec := by
  intro n
  simp only [A265127, Nat.add_sub_cancel]

end A265127

/-! ## A265127.P15063015091902908517

`2^(n+1)*p?[comp[n²]]`
-/

namespace A265127.P15063015091902908517
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1) * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A265127.P15063015091902908517

namespace A265127

/-- `2^(n+1)*p?[comp[n²]]` -/
def P15063015091902908517.Spec : Prop :=
  ∀ n, (P15063015091902908517.a n : ℤ) = A265127 (n + 1)

end A265127

/-! ## A265127.P15757238075578314449

`2^(n+1)*record[∑{p}[n+2, #]]`
-/

namespace A265127.P15757238075578314449
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265127.P15757238075578314449

namespace A265127

/-- `2^(n+1)*record[∑{p}[n+2, #]]` -/
def P15757238075578314449.Spec : Prop :=
  ∀ n, (P15757238075578314449.a n : ℤ) = A265127 (n + 1)

end A265127

/-! ## A265127.P12976545662318647204

`2*A110295(n+1)`
-/

namespace A265127.P12976545662318647204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110295 (n + 1)

end

end A265127.P12976545662318647204

namespace A265127

/-- `2*A110295(n+1)` -/
def P12976545662318647204.Spec : Prop :=
  ∀ n, P12976545662318647204.a n = A265127 (n + 1)

end A265127

/-! ## A265127.P14179388166698257788

`2^n*A100484(n+1)`
-/

namespace A265127.P14179388166698257788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A100484 (n + 1)

end

end A265127.P14179388166698257788

namespace A265127

/-- `2^n*A100484(n+1)` -/
def P14179388166698257788.Spec : Prop :=
  ∀ n, P14179388166698257788.a n = A265127 (n + 1)

end A265127

/-! ## A265127.P16920780337292837850

`2^n*A001747(n+2)`
-/

namespace A265127.P16920780337292837850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001747 (n + 2)

end

end A265127.P16920780337292837850

namespace A265127

/-- `2^n*A001747(n+2)` -/
def P16920780337292837850.Spec : Prop :=
  ∀ n, P16920780337292837850.a n = A265127 (n + 1)

end A265127

/-! ## A265127.P9235916425141313503

`∏[2*ratio[record[A020639(n+1)]]]`
-/

namespace A265127.P9235916425141313503
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A265127.P9235916425141313503

namespace A265127

/-- `∏[2*ratio[record[A020639(n+1)]]]` -/
def P9235916425141313503.Spec : Prop :=
  ∀ n, P9235916425141313503.a n = (A265127 (n + 1) : ℚ)

end A265127

/-! ## A265127.P15234189589955747670

`2^(n+1)*A000040(n+1)`
-/

namespace A265127.P15234189589955747670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A000040 (n + 1)

end

end A265127.P15234189589955747670

namespace A265127

/-- `2^(n+1)*A000040(n+1)` -/
def P15234189589955747670.Spec : Prop :=
  ∀ n, P15234189589955747670.a n = A265127 (n + 1)

end A265127

/-! ## A265127.P2943241653272076819

`2^(n+1)*record[A006530(n+2)]`
-/

namespace A265127.P2943241653272076819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265127.P2943241653272076819

namespace A265127

/-- `2^(n+1)*record[A006530(n+2)]` -/
def P2943241653272076819.Spec : Prop :=
  ∀ n, P2943241653272076819.a n = A265127 (n + 1)

end A265127

/-! ## A265127.P9602637531828142861

`2^(n+1)*record[A020639(n+2)]`
-/

namespace A265127.P9602637531828142861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265127.P9602637531828142861

namespace A265127

/-- `2^(n+1)*record[A020639(n+2)]` -/
def P9602637531828142861.Spec : Prop :=
  ∀ n, P9602637531828142861.a n = A265127 (n + 1)

end A265127

/-! ## A265127.P7509636507931058346

`A011782(n)*A062876(n+1)`
-/

namespace A265127.P7509636507931058346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A062876 (n + 1)

end

end A265127.P7509636507931058346

namespace A265127

/-- `A011782(n)*A062876(n+1)` -/
def P7509636507931058346.Spec : Prop :=
  ∀ n, P7509636507931058346.a n = A265127 (n + 1)

end A265127

/-! ## A265127.P5488811370386044316

`lcm(A062876(n+1), A077552(n))`
-/

namespace A265127.P5488811370386044316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062876 (n + 1)) (A077552 n)

end

end A265127.P5488811370386044316

namespace A265127

/-- `lcm(A062876(n+1), A077552(n))` -/
def P5488811370386044316.Spec : Prop :=
  ∀ n, (P5488811370386044316.a n : ℤ) = A265127 (n + 1)

end A265127

/-! ## A265127.P506905771448632636

`A000040(n+1)*record[A135530(n)]`
-/

namespace A265127.P506905771448632636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265127.P506905771448632636

namespace A265127

/-- `A000040(n+1)*record[A135530(n)]` -/
def P506905771448632636.Spec : Prop :=
  ∀ n, P506905771448632636.a n = A265127 (n + 1)

end A265127

/-! ## A265127.P16958076998586218820

`A000040(n+1)*A000079(n+1)`
-/

namespace A265127.P16958076998586218820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000079 (n + 1)

end

end A265127.P16958076998586218820

namespace A265127

/-- `A000040(n+1)*A000079(n+1)` -/
def P16958076998586218820.Spec : Prop :=
  ∀ n, P16958076998586218820.a n = A265127 (n + 1)

end A265127

/-! ## A265127.P14927065074807281548

`A000040(n+1)*A155559(n+1)`
-/

namespace A265127.P14927065074807281548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A155559 (n + 1)

end

end A265127.P14927065074807281548

namespace A265127

/-- `A000040(n+1)*A155559(n+1)` -/
def P14927065074807281548.Spec : Prop :=
  ∀ n, P14927065074807281548.a n = A265127 (n + 1)

end A265127

/-! ## A265127.P7261743513922178059

`A000040(n+1)*A171449(n+1)`
-/

namespace A265127.P7261743513922178059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A171449 (n + 1)

end

end A265127.P7261743513922178059

namespace A265127

/-- `A000040(n+1)*A171449(n+1)` -/
def P7261743513922178059.Spec : Prop :=
  ∀ n, P7261743513922178059.a n = A265127 (n + 1)

end A265127

/-! ## A265127.P3475367766063573036

`A000040(n+1)*A171559(n+1)`
-/

namespace A265127.P3475367766063573036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A171559 (n + 1)

end

end A265127.P3475367766063573036

namespace A265127

/-- `A000040(n+1)*A171559(n+1)` -/
def P3475367766063573036.Spec : Prop :=
  ∀ n, P3475367766063573036.a n = A265127 (n + 1)

end A265127

/-! ## A265127.P8526767601700583297

`A000079(n+1)*A008578(n+2)`
-/

namespace A265127.P8526767601700583297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A008578 (n + 2)

end

end A265127.P8526767601700583297

namespace A265127

/-- `A000079(n+1)*A008578(n+2)` -/
def P8526767601700583297.Spec : Prop :=
  ∀ n, P8526767601700583297.a n = A265127 (n + 1)

end A265127

/-! ## A265127.P11748983258471151592

`A000040(n+1)*A011782(n+2)`
-/

namespace A265127.P11748983258471151592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A011782 (n + 2)

end

end A265127.P11748983258471151592

namespace A265127

/-- `A000040(n+1)*A011782(n+2)` -/
def P11748983258471151592.Spec : Prop :=
  ∀ n, P11748983258471151592.a n = A265127 (n + 1)

end A265127

/-! ## A265127.P7340999437175075537

`A000040(n+1)*A131577(n+2)`
-/

namespace A265127.P7340999437175075537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A131577 (n + 2)

end

end A265127.P7340999437175075537

namespace A265127

/-- `A000040(n+1)*A131577(n+2)` -/
def P7340999437175075537.Spec : Prop :=
  ∀ n, P7340999437175075537.a n = A265127 (n + 1)

end A265127

/-!
# A265128: Nonprimes excluding numbers of the forms 2*p and p^i where p is a prime and i is a positive integer.

The programs for A265128, there is no canonical definition to state claims against.
-/

/-! ## A265128.P15228349489654740363

`comp[A354925(n+2)]`
-/

namespace A265128.P15228349489654740363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354925 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A265128.P15228349489654740363

/-! ## A265128.P5994624835778268914

`lt[A020513(n)+1, A066882(n)²]`
-/

namespace A265128.P5994624835778268914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A265128.P5994624835778268914

/-! ## A265128.P3725218219282253325

`comp[∩[A102466(n+1), A285801(n+1)]]`
-/

namespace A265128.P3725218219282253325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102466 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285801 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A265128.P3725218219282253325

/-! ## A265128.P875495989832809987

`comp[∪[A100484(n+1), A246655(n+1)]]`
-/

namespace A265128.P875495989832809987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A265128.P875495989832809987

/-! ## A265128.P17696128787546603978

`comp[∪[A001747(n+1), A225657(n+2)]]`
-/

namespace A265128.P17696128787546603978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225657 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A265128.P17696128787546603978

/-! ## A265128.P4658832598716965765

`lt[A067240(A028310(n)), A065033(n)]`
-/

namespace A265128.P4658832598716965765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067240 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A265128.P4658832598716965765

/-! ## A265128.P6669528881765205703

`lt[A107393(A008587(n)), A066882(n)]`
-/

namespace A265128.P6669528881765205703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A008587 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A265128.P6669528881765205703

/-! ## A265128.P3311665606952018608

`lt[A107393(A140680(n)), A066882(n)]`
-/

namespace A265128.P3311665606952018608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A140680 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A265128.P3311665606952018608

/-! ## A265128.P15706819745685933787

`lt[A013928(A257088(n)), A092976(n)]`
-/

namespace A265128.P15706819745685933787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A257088 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A265128.P15706819745685933787

/-! ## A265128.P18316893372951882281

`lt[A013928(A257088(n)), A225244(n)]`
-/

namespace A265128.P18316893372951882281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A257088 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A265128.P18316893372951882281

/-!
# A265129: Triangle read by rows, formed as the sum of the two versions of the natural numbers filling an equilateral triangle.

The programs for A265129, the canonical program `A265129.P1641231358581526435` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265129 has offset 1).

The definition of A265129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265129.P13887941299521806858

`∑[char[∑[n]]]²+1`
-/

namespace A265129.P13887941299521806858
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1

end

end A265129.P13887941299521806858

namespace A265129

/-- `∑[char[∑[n]]]²+1` -/
def P13887941299521806858.Spec : Prop :=
  ∀ n, (P13887941299521806858.a n : ℤ) = A265129 (n + 1)

end A265129

/-! ## A265129.P14124168086867913551

`-xor(∑[char[∑[n]]]², -1)`
-/

namespace A265129.P14124168086867913551
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) (-1)

end

end A265129.P14124168086867913551

namespace A265129

/-- `-xor(∑[char[∑[n]]]², -1)` -/
def P14124168086867913551.Spec : Prop :=
  ∀ n, P14124168086867913551.a n = A265129 (n + 1)

end A265129

/-! ## A265129.P17978593561858761921

`A002522(∑[char[∑[n]]])`
-/

namespace A265129.P17978593561858761921
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265129.P17978593561858761921

namespace A265129

/-- `A002522(∑[char[∑[n]]])` -/
def P17978593561858761921.Spec : Prop :=
  ∀ n, P17978593561858761921.a n = A265129 (n + 1)

end A265129

/-! ## A265129.P18054365233857438976

`A033638(∑[2*char[∑[n]]])`
-/

namespace A265129.P18054365233857438976
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265129.P18054365233857438976

namespace A265129

/-- `A033638(∑[2*char[∑[n]]])` -/
def P18054365233857438976.Spec : Prop :=
  ∀ n, P18054365233857438976.a n = A265129 (n + 1)

end A265129

/-! ## A265129.P6817300005577418540

`A005893(∑[char[∑[n]]])/2`
-/

namespace A265129.P6817300005577418540
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005893 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A265129.P6817300005577418540

namespace A265129

/-- `A005893(∑[char[∑[n]]])/2` -/
def P6817300005577418540.Spec : Prop :=
  ∀ n, P6817300005577418540.a n = (A265129 (n + 1) : ℚ)

end A265129

/-! ## A265129.P1641231358581526435

`abs(A114327(n)+2*(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A265129

/-- `abs(A114327(n)+2*(n+1))` -/
def P1641231358581526435.Spec : Prop :=
  ∀ n, P1641231358581526435.a n = A265129 (n + 1)

theorem P1641231358581526435.correct : P1641231358581526435.Spec := by
  intro n
  simp only [A265129, Nat.add_sub_cancel]

end A265129

/-! ## A265129.P1776165677298667065

`abs(2*n-A185869(n+1))`
-/

namespace A265129.P1776165677298667065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A185869 (n + 1)|

end

end A265129.P1776165677298667065

namespace A265129

/-- `abs(2*n-A185869(n+1))` -/
def P1776165677298667065.Spec : Prop :=
  ∀ n, P1776165677298667065.a n = A265129 (n + 1)

end A265129

/-! ## A265129.P6557467758792283620

`Δ[(n+1)²-A144216(n+1)]`
-/

namespace A265129.P6557467758792283620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A144216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265129.P6557467758792283620

namespace A265129

/-- `Δ[(n+1)²-A144216(n+1)]` -/
def P6557467758792283620.Spec : Prop :=
  ∀ n, P6557467758792283620.a n = A265129 (n + 1)

end A265129

/-! ## A265129.P10174788816785731233

`ceil(sqrt(A002024(n+1)²²+2))`
-/

namespace A265129.P10174788816785731233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A002024 (n + 1) ^ 2) ^ 2 + 2 : ℝ)⌉

end

end A265129.P10174788816785731233

namespace A265129

/-- `ceil(sqrt(A002024(n+1)²²+2))` -/
def P10174788816785731233.Spec : Prop :=
  ∀ n, P10174788816785731233.a n = A265129 (n + 1)

end A265129

/-! ## A265129.P16932384578698332455

`A000027(round(sqrt(2*n+1))²+1)`
-/

namespace A265129.P16932384578698332455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) ^ 2 + 1).toNat

end

end A265129.P16932384578698332455

namespace A265129

/-- `A000027(round(sqrt(2*n+1))²+1)` -/
def P16932384578698332455.Spec : Prop :=
  ∀ n, P16932384578698332455.a n = A265129 (n + 1)

end A265129

/-! ## A265129.P11205738850368235238

`A133128(A057944(n))`
-/

namespace A265129.P11205738850368235238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133128 (A057944 n).toNat

end

end A265129.P11205738850368235238

namespace A265129

/-- `A133128(A057944(n))` -/
def P11205738850368235238.Spec : Prop :=
  ∀ n, P11205738850368235238.a n = A265129 (n + 1)

end A265129

/-! ## A265129.P15819610719227500054

`A004202(A057944(n)+1)`
-/

namespace A265129.P15819610719227500054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 (A057944 n + 1).toNat

end

end A265129.P15819610719227500054

namespace A265129

/-- `A004202(A057944(n)+1)` -/
def P15819610719227500054.Spec : Prop :=
  ∀ n, P15819610719227500054.a n = A265129 (n + 1)

end A265129

/-! ## A265129.P17593242047910463816

`A013945(A111650(n+1))`
-/

namespace A265129.P17593242047910463816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013945 (A111650 (n + 1)).toNat

end

end A265129.P17593242047910463816

namespace A265129

/-- `A013945(A111650(n+1))` -/
def P17593242047910463816.Spec : Prop :=
  ∀ n, P17593242047910463816.a n = A265129 (n + 1)

end A265129

/-! ## A265129.P9254680654752532470

`A351475(A005145(n+1))`
-/

namespace A265129.P9254680654752532470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351475 (A005145 (n + 1)).toNat

end

end A265129.P9254680654752532470

namespace A265129

/-- `A351475(A005145(n+1))` -/
def P9254680654752532470.Spec : Prop :=
  ∀ n, P9254680654752532470.a n = A265129 (n + 1)

end A265129

/-! ## A265129.P8546240632125546475

`A160457(A003057(n+2))`
-/

namespace A265129.P8546240632125546475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160457 (A003057 (n + 2)).toNat

end

end A265129.P8546240632125546475

namespace A265129

/-- `A160457(A003057(n+2))` -/
def P8546240632125546475.Spec : Prop :=
  ∀ n, P8546240632125546475.a n = A265129 (n + 1)

end A265129

/-! ## A265129.P12389017854178216139

`∑[A073423(n)*A134636(n)]`
-/

namespace A265129.P12389017854178216139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n * A134636 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265129.P12389017854178216139

namespace A265129

/-- `∑[A073423(n)*A134636(n)]` -/
def P12389017854178216139.Spec : Prop :=
  ∀ n, P12389017854178216139.a n = A265129 (n + 1)

end A265129

/-! ## A265129.P3815285701280159774

`A004202(1-A002262(n)+n)`
-/

namespace A265129.P3815285701280159774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 (1 - A002262 n + (n : ℤ)).toNat

end

end A265129.P3815285701280159774

namespace A265129

/-- `A004202(1-A002262(n)+n)` -/
def P3815285701280159774.Spec : Prop :=
  ∀ n, P3815285701280159774.a n = A265129 (n + 1)

end A265129

/-! ## A265129.P16845417036890994538

`A004202(A004201(n+1)-n)`
-/

namespace A265129.P16845417036890994538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 (A004201 (n + 1) - (n : ℤ)).toNat

end

end A265129.P16845417036890994538

namespace A265129

/-- `A004202(A004201(n+1)-n)` -/
def P16845417036890994538.Spec : Prop :=
  ∀ n, P16845417036890994538.a n = A265129 (n + 1)

end A265129

/-! ## A265129.P7630139536531780190

`A004202(n+2-A002260(n+1))`
-/

namespace A265129.P7630139536531780190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 ((n + 2 : ℤ) - A002260 (n + 1)).toNat

end

end A265129.P7630139536531780190

namespace A265129

/-- `A004202(n+2-A002260(n+1))` -/
def P7630139536531780190.Spec : Prop :=
  ∀ n, P7630139536531780190.a n = A265129 (n + 1)

end A265129

/-! ## A265129.P12648723893915380973

`A070216(n+2-A002260(n+1))`
-/

namespace A265129.P12648723893915380973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070216 ((n + 2 : ℤ) - A002260 (n + 1)).toNat

end

end A265129.P12648723893915380973

namespace A265129

/-- `A070216(n+2-A002260(n+1))` -/
def P12648723893915380973.Spec : Prop :=
  ∀ n, P12648723893915380973.a n = A265129 (n + 1)

end A265129

/-!
# A265130: Total sum of number of lambda-parking functions, where lambda ranges over all partitions of k into distinct parts with largest part n and n<=k<=n*(n+1)/2.

The programs for A265130, there is no canonical definition to state claims against.
-/

/-! ## A265130.P5645194055605930505

`Δ[A060072(n+1)/round(1/acot(n))]`
-/

namespace A265130.P5645194055605930505
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060072 (n + 1) : ℚ) / (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265130.P5645194055605930505

/-! ## A265130.P17524138089288633010

`Δ[A037205(n)/A028310(n²)]`
-/

namespace A265130.P17524138089288633010
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037205 n : ℚ) / (A028310 (n ^ 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265130.P17524138089288633010

/-! ## A265130.P17780614672811984828

`Δ[A037205(n)%A058128(n+1)]`
-/

namespace A265130.P17780614672811984828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037205 n) (A058128 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265130.P17780614672811984828

/-! ## A265130.P8700462055339196160

`Δ[n/(n+1)*A058128(n+1)/A028310(n)]`
-/

namespace A265130.P8700462055339196160
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 1 : ℚ) * (A058128 (n + 1) : ℚ) / (A028310 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265130.P8700462055339196160

/-! ## A265130.P3943176343139284324

`A060073(n+2)-A060072(n+1)/A028310(n)`
-/

namespace A265130.P3943176343139284324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060073 (n + 2) : ℚ) - (A060072 (n + 1) : ℚ) / (A028310 n : ℚ)

end

end A265130.P3943176343139284324

/-!
# A265132: Number of nonintersecting (or self-avoiding) rook paths joining opposite corners of an n X n grid that move in 3 or fewer cardinal directions.

The programs for A265132, there is no canonical definition to state claims against.
-/

/-! ## A265132.P954463809488342362

`2*(n+1)^n-C(2*n, n)`
-/

namespace A265132.P954463809488342362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) ^ n : ℤ) - (Nat.choose (2 * n) n : ℤ)

end

end A265132.P954463809488342362

/-! ## A265132.P13546923268530782830

`2*(n+1)^n-A000984(n)`
-/

namespace A265132.P13546923268530782830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) ^ n : ℤ) - A000984 n

end

end A265132.P13546923268530782830

/-! ## A265132.P5593545781638446481

`2*(n+1)^n-record[A081668(n)]`
-/

namespace A265132.P5593545781638446481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) ^ n : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265132.P5593545781638446481

/-! ## A265132.P11992050104352829761

`A000169(n+1)+A000169(n+1)-A000984(n)`
-/

namespace A265132.P11992050104352829761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (n + 1) + (A000169 (n + 1) - A000984 n)

end

end A265132.P11992050104352829761

/-! ## A265132.P7400998131674454274

`A000169(n+1)+A000169(n+1)-A081668(2*n)`
-/

namespace A265132.P7400998131674454274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (n + 1) + (A000169 (n + 1) - A081668 (2 * n))

end

end A265132.P7400998131674454274

/-!
# A265133: Beatty sequence for log(2).

The programs for A265133, the canonical program `A265133.P341175718013203174` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265133 has offset 1).

The definition of A265133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265133.P4625762644520977580

`floor(log(2)*(n+1))`
-/

namespace A265133.P4625762644520977580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (2 : ℝ) * (n + 1 : ℝ)⌋

end

end A265133.P4625762644520977580

namespace A265133

/-- `floor(log(2)*(n+1))` -/
def P4625762644520977580.Spec : Prop :=
  ∀ n, P4625762644520977580.a n = A265133 (n + 1)

end A265133

/-! ## A265133.P6235577129072813474

`∑[dr(Δ[floor(n*log(2))])]`
-/

namespace A265133.P6235577129072813474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.log (2 : ℝ)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265133.P6235577129072813474

namespace A265133

/-- `∑[dr(Δ[floor(n*log(2))])]` -/
def P6235577129072813474.Spec : Prop :=
  ∀ n, (P6235577129072813474.a n : ℤ) = A265133 (n + 1)

end A265133

/-! ## A265133.P341175718013203174

`∑[A022933(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A265133

/-- `∑[A022933(n)]` -/
def P341175718013203174.Spec : Prop :=
  ∀ n, P341175718013203174.a n = A265133 (n + 1)

theorem P341175718013203174.correct : P341175718013203174.Spec := by
  intro n
  simp only [A265133, Nat.add_sub_cancel]

end A265133

/-! ## A265133.P13809224603554409602

`∑[char[A307513(n+1)]]`
-/

namespace A265133.P13809224603554409602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307513 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265133.P13809224603554409602

namespace A265133

/-- `∑[char[A307513(n+1)]]` -/
def P13809224603554409602.Spec : Prop :=
  ∀ n, (P13809224603554409602.a n : ℤ) = A265133 (n + 1)

end A265133

/-! ## A265133.P11312818710983088858

`A059541(n+1)-(n+1)`
-/

namespace A265133.P11312818710983088858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059541 (n + 1) - (n + 1 : ℤ)

end

end A265133.P11312818710983088858

namespace A265133

/-- `A059541(n+1)-(n+1)` -/
def P11312818710983088858.Spec : Prop :=
  ∀ n, P11312818710983088858.a n = A265133 (n + 1)

end A265133

/-! ## A265133.P10171442832208012976

`∑[A000045(Δ[floor(n*log(2))])]`
-/

namespace A265133.P10171442832208012976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.log (2 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265133.P10171442832208012976

namespace A265133

/-- `∑[A000045(Δ[floor(n*log(2))])]` -/
def P10171442832208012976.Spec : Prop :=
  ∀ n, P10171442832208012976.a n = A265133 (n + 1)

end A265133

/-! ## A265133.P12497523510970179962

`A330214(n+1)-A059548(n+1)`
-/

namespace A265133.P12497523510970179962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330214 (n + 1) - A059548 (n + 1)

end

end A265133.P12497523510970179962

namespace A265133

/-- `A330214(n+1)-A059548(n+1)` -/
def P12497523510970179962.Spec : Prop :=
  ∀ n, P12497523510970179962.a n = A265133 (n + 1)

end A265133

/-! ## A265133.P12432636304958814473

`A059541(n+1)%A000027(n+1)`
-/

namespace A265133.P12432636304958814473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059541 (n + 1)) (A000027 (n + 1))

end

end A265133.P12432636304958814473

namespace A265133

/-- `A059541(n+1)%A000027(n+1)` -/
def P12432636304958814473.Spec : Prop :=
  ∀ n, P12432636304958814473.a n = A265133 (n + 1)

end A265133

/-! ## A265133.P15877899896850524239

`ceil(log(A000079(n+1)))-1`
-/

namespace A265133.P15877899896850524239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A000079 (n + 1) : ℝ)⌉ - 1

end

end A265133.P15877899896850524239

namespace A265133

/-- `ceil(log(A000079(n+1)))-1` -/
def P15877899896850524239.Spec : Prop :=
  ∀ n, P15877899896850524239.a n = A265133 (n + 1)

end A265133

/-! ## A265133.P6321034783149114199

`A121902(A301049(n+1))`
-/

namespace A265133.P6321034783149114199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A301049 (n + 1)).toNat

end

end A265133.P6321034783149114199

namespace A265133

/-- `A121902(A301049(n+1))` -/
def P6321034783149114199.Spec : Prop :=
  ∀ n, P6321034783149114199.a n = A265133 (n + 1)

end A265133

/-!
# A265134: Numbers that are the sum of two distinct nonzero triangular numbers in exactly two ways.

The programs for A265134, there is no canonical definition to state claims against.
-/

/-! ## A265134.P2797534072636659926

`eq[2, A307597(n)]`
-/

namespace A265134.P2797534072636659926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265134.P2797534072636659926

/-! ## A265134.P15184280637701936520

`eq[1, A011864(A053603(n))]`
-/

namespace A265134.P15184280637701936520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 (A053603 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265134.P15184280637701936520

/-! ## A265134.P10127748309872769173

`lt[1, A007318(A307597(n)²)]`
-/

namespace A265134.P10127748309872769173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A307597 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A265134.P10127748309872769173

/-! ## A265134.P5784014828384502276

`eq[2, A053603(A053603(n)!)]`
-/

namespace A265134.P5784014828384502276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 (Nat.factorial (A053603 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265134.P5784014828384502276

/-! ## A265134.P11648981596852572341

`eq[2, A102563(A053603(n)+1)]`
-/

namespace A265134.P11648981596852572341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102563 (A053603 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265134.P11648981596852572341

/-! ## A265134.P16842751255987190406

`eq[2, A103609(A053603(n)+2)]`
-/

namespace A265134.P16842751255987190406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A053603 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265134.P16842751255987190406

/-! ## A265134.P8651940360697693890

`lt[2, A220517(A053603(n)+1)]`
-/

namespace A265134.P8651940360697693890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220517 (A053603 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A265134.P8651940360697693890

/-! ## A265134.P15947000032658370790

`lt[1, A007318(A307597(n)+2)]`
-/

namespace A265134.P15947000032658370790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A307597 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A265134.P15947000032658370790

/-! ## A265134.P7986788384064994737

`lt[2, A020639(A307597(n)+1)]`
-/

namespace A265134.P7986788384064994737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A307597 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A265134.P7986788384064994737

/-! ## A265134.P14273934027773880463

`lt[1, A007318(2*A307597(n))]`
-/

namespace A265134.P14273934027773880463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (2 * A307597 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A265134.P14273934027773880463

/-!
# A265135: Numbers that are the sum of two distinct nonzero triangular numbers in more than two ways.

The programs for A265135, there is no canonical definition to state claims against.
-/

/-! ## A265135.P11797661782050160994

`lt[2, A307597(n)]`
-/

namespace A265135.P11797661782050160994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A265135.P11797661782050160994

/-! ## A265135.P5481926479816224489

`lt[5, A053603(n)]`
-/

namespace A265135.P5481926479816224489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A265135.P5481926479816224489

/-! ## A265135.P1752011282928885323

`comp[A224921(A307597(n)+3)+n]`
-/

namespace A265135.P1752011282928885323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224921 (A307597 n + 3).toNat + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A265135.P1752011282928885323

/-! ## A265135.P12200391737013504380

`∪[A265136(n+1), A265137(n+1)]`
-/

namespace A265135.P12200391737013504380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A265135.P12200391737013504380

/-! ## A265135.P4603774240993500459

`∪[A265136(n+1), A265138(n+1)]%A265136(n+3)`
-/

namespace A265135.P4603774240993500459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265138 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A265136 (n + 3))

end

end A265135.P4603774240993500459

/-!
# A265136: Numbers that are the sum of two distinct nonzero triangular numbers in exactly three ways.

The programs for A265136, there is no canonical definition to state claims against.
-/

/-! ## A265136.P16289060211605826160

`eq[3, A307597(n)]`
-/

namespace A265136.P16289060211605826160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265136.P16289060211605826160

/-! ## A265136.P18402642169764877332

`eq[6, A053603(n)]`
-/

namespace A265136.P18402642169764877332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265136.P18402642169764877332

/-! ## A265136.P5063952943229863907

`filter[A064828(n+1), A267683(#)]`
-/

namespace A265136.P5063952943229863907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267683 (f1 j).toNat = 1) n)

end

end A265136.P5063952943229863907

/-! ## A265136.P1150165144820065249

`filter[A064828(n+1), A267810(#)]`
-/

namespace A265136.P1150165144820065249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267810 (f1 j).toNat = 1) n)

end

end A265136.P1150165144820065249

/-! ## A265136.P8095082520911871268

`filter[A064828(n+1), A267813(#)]`
-/

namespace A265136.P8095082520911871268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267813 (f1 j).toNat = 1) n)

end

end A265136.P8095082520911871268

/-!
# A265137: Numbers that are the sum of two distinct nonzero triangular numbers in more than three ways.

The programs for A265137, there is no canonical definition to state claims against.
-/

/-! ## A265137.P17421658614994024852

`lt[3, A052344(n)]`
-/

namespace A265137.P17421658614994024852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A265137.P17421658614994024852

/-! ## A265137.P13926571108338874624

`lt[3, A307597(n)]`
-/

namespace A265137.P13926571108338874624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A265137.P13926571108338874624

/-! ## A265137.P5053217253489635457

`lt[6, A053603(n)]`
-/

namespace A265137.P5053217253489635457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A265137.P5053217253489635457

/-!
# A265138: Numbers that are the sum of two distinct nonzero triangular numbers in exactly four ways.

The programs for A265138, there is no canonical definition to state claims against.
-/

/-! ## A265138.P14181732696573541639

`eq[4, A307597(n)]`
-/

namespace A265138.P14181732696573541639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265138.P14181732696573541639

/-! ## A265138.P13983300099201972852

`eq[3, A103609(A053603(n))]`
-/

namespace A265138.P13983300099201972852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A053603 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265138.P13983300099201972852

/-! ## A265138.P9500662862419318121

`A265137(comp[A140268(n+1)-A284910(2*n+3)])`
-/

namespace A265138.P9500662862419318121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140268 (n + 1) - A284910 (2 * n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265137 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A265138.P9500662862419318121

/-! ## A265138.P10616741557921336453

`A265137(A238015(n)+A055645(n))`
-/

namespace A265138.P10616741557921336453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265137 (A238015 n + A055645 n).toNat

end

end A265138.P10616741557921336453

/-! ## A265138.P12305045173244695287

`A265137(A043320(n+1))`
-/

namespace A265138.P12305045173244695287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265137 (A043320 (n + 1)).toNat

end

end A265138.P12305045173244695287

/-!
# A265140: Numbers that are the sum of two distinct nonzero triangular numbers in exactly one way.

The programs for A265140, there is no canonical definition to state claims against.
-/

/-! ## A265140.P5393676656422923321

`eq[1, A307597(n)]`
-/

namespace A265140.P5393676656422923321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265140.P5393676656422923321

/-! ## A265140.P2371283399665621364

`lt[1, A339441(n)%3]`
-/

namespace A265140.P2371283399665621364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339441 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A265140.P2371283399665621364

/-! ## A265140.P703017671897457640

`eq[3, or(1, A053603(n))]`
-/

namespace A265140.P703017671897457640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A053603 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265140.P703017671897457640

/-! ## A265140.P14468452022063119911

`lt[abs(1-A307597(n+1)), 1]+1`
-/

namespace A265140.P14468452022063119911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A307597 (n + 1)|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A265140.P14468452022063119911

/-! ## A265140.P10204715958730196771

`eq[1, A000073(A053603(n))]`
-/

namespace A265140.P10204715958730196771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A053603 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265140.P10204715958730196771

/-! ## A265140.P6804368290349970441

`eq[2, A000001(A053603(n)²)]`
-/

namespace A265140.P6804368290349970441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A053603 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265140.P6804368290349970441

/-! ## A265140.P1796955102167168300

`lt[A354006(A307597(n)²), 1]`
-/

namespace A265140.P1796955102167168300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354006 (A307597 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A265140.P1796955102167168300

/-! ## A265140.P7916123079378795528

`eq[1, A053603(A053603(n)!)]`
-/

namespace A265140.P7916123079378795528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 (Nat.factorial (A053603 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265140.P7916123079378795528

/-! ## A265140.P17654659660449677856

`eq[2, A000010(A053603(n)+1)]`
-/

namespace A265140.P17654659660449677856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A053603 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265140.P17654659660449677856

/-! ## A265140.P15046537115463873688

`eq[3, A020639(A339441(n)+1)]`
-/

namespace A265140.P15046537115463873688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A339441 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265140.P15046537115463873688

/-!
# A265141: Irregular table read by rows: n-th row lists the 9 n-gonal numbers of a 3 X 3 semimagic square with the smallest magic sum. The terms of each row are arranged in the manner shown in A261816.

The programs for A265141, there is no canonical definition to state claims against.
-/

/-! ## A265141.P12929402494199270744

`A061304(3*n+5)*A275109(A084785(n))`
-/

namespace A265141.P12929402494199270744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061304 (3 * n + 5) * A275109 (A084785 n).toNat

end

end A265141.P12929402494199270744

/-!
# A265143: Least positive integer n having only the digits 0 or 1 in base 3, such that the product with A263488(n) also has only digits 0 or 1 in base 3.

The programs for A265143, there is no canonical definition to state claims against.
-/

/-! ## A265143.P17480815477289208658

`A046079(A348612(n+1)+A000078(2*n))`
-/

namespace A265143.P17480815477289208658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (A348612 (n + 1) + A000078 (2 * n)).toNat

end

end A265143.P17480815477289208658

/-!
# A265144: Number of lambda-parking functions of the unique partition lambda with encoding n = Product_{i:lambda} prime(i).

The programs for A265144, there is no canonical definition to state claims against.
-/

/-! ## A265144.P9695703633985858022

`A153452(n+1)+A001222(A181811(n+1))`
-/

namespace A265144.P9695703633985858022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153452 (n + 1) + A001222 (A181811 (n + 1)).toNat

end

end A265144.P9695703633985858022

/-! ## A265144.P11770618312072301032

`A290252(A156552(n+1))+A001222(A181811(n+1))`
-/

namespace A265144.P11770618312072301032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (A156552 (n + 1)).toNat + A001222 (A181811 (n + 1)).toNat

end

end A265144.P11770618312072301032

/-! ## A265144.P11426965726973205536

`A318995(n+1)+A007302(A003546(n+1)^A325166(n+1))`
-/

namespace A265144.P11426965726973205536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (n + 1) + A007302 (SequenceMachineLib.roundAway ((A003546 (n + 1) : ℚ) ^ (A325166 (n + 1) : ℤ))).toNat

end

end A265144.P11426965726973205536

/-! ## A265144.P11690377642937605742

`A153452(n+1)+A087436(A108951(n+1))`
-/

namespace A265144.P11690377642937605742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153452 (n + 1) + A087436 (A108951 (n + 1)).toNat

end

end A265144.P11690377642937605742

/-! ## A265144.P8947709287669177503

`A001222(A189264(n+1)+A000170(n))`
-/

namespace A265144.P8947709287669177503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A189264 (n + 1) + A000170 n).toNat

end

end A265144.P8947709287669177503

/-!
# A265145: Number of lambda-parking functions of the unique strict partition lambda with parts i_1

The programs for A265145, there is no canonical definition to state claims against.
-/

/-! ## A265145.P14800225948408299157

`A265144(A332462(n+1))`
-/

namespace A265145.P14800225948408299157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265144 (A332462 (n + 1)).toNat

end

end A265145.P14800225948408299157

/-!
# A265146: Triangle T(n,k) in which n-th row lists the parts i_1=1, 1<=k<=A001222(n).

The programs for A265146, there is no canonical definition to state claims against.
-/

/-! ## A265146.P771669998902655523

`A241910(n+2)+A112798(n+2)`
-/

namespace A265146.P771669998902655523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241910 (n + 2) + A112798 (n + 2)

end

end A265146.P771669998902655523

/-! ## A265146.P11815775709070857822

`A252464(A265110(n+2))`
-/

namespace A265146.P11815775709070857822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A265110 (n + 2)).toNat

end

end A265146.P11815775709070857822

/-! ## A265146.P6890590579818166158

`A252736(A265110(n+2))+A112798(n+2)`
-/

namespace A265146.P6890590579818166158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A265110 (n + 2)).toNat + A112798 (n + 2)

end

end A265146.P6890590579818166158

/-! ## A265146.P11781837393966568528

`A252736(A265110(n+2))+A065770(A027746(n+2))`
-/

namespace A265146.P11781837393966568528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A265110 (n + 2)).toNat + A065770 (A027746 (n + 2)).toNat

end

end A265146.P11781837393966568528

/-! ## A265146.P10103515349321982480

`A346698(A027746(n+2)²)+A252736(A265110(n+2))`
-/

namespace A265146.P10103515349321982480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (A027746 (n + 2) ^ 2).toNat + A252736 (A265110 (n + 2)).toNat

end

end A265146.P10103515349321982480

/-!
# A265147: a(1) = 2, a(n) = smallest number > a(n-1) such that the concatenation of a(n-1) and a(n) is a square.

The programs for A265147, there is no canonical definition to state claims against.
-/

/-! ## A265147.P5685091490604304630

`A243091(a(n-1))` with `a(0)=2`
-/

namespace A265147.P5685091490604304630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A243091 (a (n - 1)).toNat

end

end A265147.P5685091490604304630

/-!
# A265148: a(1) = 4, a(n) = smallest number > a(n-1) such that the concatenation of a(n-1) and a(n) is a square.

The programs for A265148, there is no canonical definition to state claims against.
-/

/-! ## A265148.P13188255207169081950

`A243091(a(n-1))` with `a(0)=4`
-/

namespace A265148.P13188255207169081950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A243091 (a (n - 1)).toNat

end

end A265148.P13188255207169081950

/-!
# A265149: a(1) = 8, a(n) = smallest number > a(n-1) such that the concatenation of a(n-1) and a(n) is a square.

The programs for A265149, there is no canonical definition to state claims against.
-/

/-! ## A265149.P13920961177738172973

`A243091(a(n-1))` with `a(0)=8`
-/

namespace A265149.P13920961177738172973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A243091 (a (n - 1)).toNat

end

end A265149.P13920961177738172973

/-!
# A265150: a(1) = 10, a(n) = smallest number > a(n-1) such that the concatenation of a(n-1) and a(n) is a square.

The programs for A265150, there is no canonical definition to state claims against.
-/

/-! ## A265150.P9076457993064102746

`A243091(a(n-1))` with `a(0)=10`
-/

namespace A265150.P9076457993064102746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  A243091 (a (n - 1)).toNat

end

end A265150.P9076457993064102746

/-! ## A265150.P5902706824167904633

`A243093(a(n-1))` with `a(0)=10`
-/

namespace A265150.P5902706824167904633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  A243093 (a (n - 1)).toNat

end

end A265150.P5902706824167904633

/-!
# A265151: a(1) = 11, a(n) = smallest number > a(n-1) such that the concatenation of a(n-1) and a(n) is a square.

The programs for A265151, there is no canonical definition to state claims against.
-/

/-! ## A265151.P3078847087626130919

`A243091(a(n-1))` with `a(0)=11`
-/

namespace A265151.P3078847087626130919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  A243091 (a (n - 1)).toNat

end

end A265151.P3078847087626130919

/-! ## A265151.P8094749588359533570

`A243093(a(n-1))` with `a(0)=11`
-/

namespace A265151.P8094749588359533570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  A243093 (a (n - 1)).toNat

end

end A265151.P8094749588359533570

/-!
# A265152: a(1) = 14, a(n) = smallest number > a(n-1) such that the concatenation of a(n-1) and a(n) is a square.

The programs for A265152, there is no canonical definition to state claims against.
-/

/-! ## A265152.P16253596853722482783

`A243091(a(n-1))` with `a(0)=14`
-/

namespace A265152.P16253596853722482783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14] fun n a =>
  A243091 (a (n - 1)).toNat

end

end A265152.P16253596853722482783

/-! ## A265152.P16588611026481032928

`A243093(a(n-1))` with `a(0)=14`
-/

namespace A265152.P16588611026481032928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14] fun n a =>
  A243093 (a (n - 1)).toNat

end

end A265152.P16588611026481032928

/-!
# A265153: a(1) = 15, a(n) = smallest number > a(n-1) such that the concatenation of a(n-1) and a(n) is a square.

The programs for A265153, there is no canonical definition to state claims against.
-/

/-! ## A265153.P13444990080457190388

`A243091(a(n-1))` with `a(0)=15`
-/

namespace A265153.P13444990080457190388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [15] fun n a =>
  A243091 (a (n - 1)).toNat

end

end A265153.P13444990080457190388

/-!
# A265154: a(1) = 16, a(n) = smallest number > a(n-1) such that the concatenation of a(n-1) and a(n) is a square.

The programs for A265154, there is no canonical definition to state claims against.
-/

/-! ## A265154.P17938167140715075974

`A243091(a(n-1))` with `a(0)=16`
-/

namespace A265154.P17938167140715075974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  A243091 (a (n - 1)).toNat

end

end A265154.P17938167140715075974

/-! ## A265154.P7258081707804702530

`record[A243091(a(A142150(n)))]` with `a(0)=16`
-/

namespace A265154.P7258081707804702530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [16] fun n f1 =>
  A243091 (f1 (A142150 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265154.P7258081707804702530

/-!
# A265156: Decimal representation of the n-th iteration of the "Rule 73" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265156, there is no canonical definition to state claims against.
-/

/-! ## A265156.P15002920854197923435

`or(A000079(n)*A279547(n), A279548(n))`
-/

namespace A265156.P15002920854197923435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 n * A279547 n) (A279548 n)

end

end A265156.P15002920854197923435

/-! ## A265156.P9258912860863073762

`A267609(n)%Δ[A004524(A267609(n))]`
-/

namespace A265156.P9258912860863073762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A267609 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267609 n) (f1 (n + 1) - f1 n)

end

end A265156.P9258912860863073762

/-!
# A265157: Number of 2's in the base-3 representation of 2^n - 1.

The programs for A265157, the canonical program `A265157.P8146945990280447041` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265157 has offset 0).

The definition of A265157 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260683, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A265157.P8146945990280447041

`A260683(n)-A000035(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A265157

/-- `A260683(n)-A000035(n)` -/
def P8146945990280447041.Spec : Prop :=
  ∀ n, P8146945990280447041.a n = A265157 n

theorem P8146945990280447041.correct : P8146945990280447041.Spec := by
  intro n
  simp only [A265157]

end A265157

/-! ## A265157.P17886861577270540938

`A260683(n)-char[A005408(n)]`
-/

namespace A265157.P17886861577270540938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260683 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A265157.P17886861577270540938

namespace A265157

/-- `A260683(n)-char[A005408(n)]` -/
def P17886861577270540938.Spec : Prop :=
  ∀ n, P17886861577270540938.a n = A265157 n

end A265157

/-! ## A265157.P5278736529534295332

`A260683(n)-char[A003961(n+1)]`
-/

namespace A265157.P5278736529534295332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260683 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A265157.P5278736529534295332

namespace A265157

/-- `A260683(n)-char[A003961(n+1)]` -/
def P5278736529534295332.Spec : Prop :=
  ∀ n, P5278736529534295332.a n = A265157 n

end A265157

/-! ## A265157.P8055082340730329709

`A260683(n)-A136409(Δ[or(1, n)])`
-/

namespace A265157.P8055082340730329709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260683 n - A136409 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A265157.P8055082340730329709

namespace A265157

/-- `A260683(n)-A136409(Δ[or(1, n)])` -/
def P8055082340730329709.Spec : Prop :=
  ∀ n, P8055082340730329709.a n = A265157 n

end A265157

/-! ## A265157.P4302310044002010192

`A260683(n)-A077267(Δ[or(1, n+1)])`
-/

namespace A265157.P4302310044002010192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260683 n - A077267 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A265157.P4302310044002010192

namespace A265157

/-- `A260683(n)-A077267(Δ[or(1, n+1)])` -/
def P4302310044002010192.Spec : Prop :=
  ∀ n, P4302310044002010192.a n = A265157 n

end A265157

/-! ## A265157.P17779318070633714946

`A260683(n)-A014707(2*n)`
-/

namespace A265157.P17779318070633714946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260683 n - A014707 (2 * n)

end

end A265157.P17779318070633714946

namespace A265157

/-- `A260683(n)-A014707(2*n)` -/
def P17779318070633714946.Spec : Prop :=
  ∀ n, P17779318070633714946.a n = A265157 n

end A265157

/-! ## A265157.P619956829201527143

`A260683(n)-A081603(A005836(n+1)+1)`
-/

namespace A265157.P619956829201527143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260683 n - A081603 (A005836 (n + 1) + 1).toNat

end

end A265157.P619956829201527143

namespace A265157

/-- `A260683(n)-A081603(A005836(n+1)+1)` -/
def P619956829201527143.Spec : Prop :=
  ∀ n, P619956829201527143.a n = A265157 n

end A265157

/-! ## A265157.P7880273873701288195

`∑{digits}[1-A004642(n), A073642(#)]`
-/

namespace A265157.P7880273873701288195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A004642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A073642 x).sum

end

end A265157.P7880273873701288195

namespace A265157

/-- `∑{digits}[1-A004642(n), A073642(#)]` -/
def P7880273873701288195.Spec : Prop :=
  ∀ n, P7880273873701288195.a n = A265157 n

end A265157

/-!
# A265159: Rectangular array A read by upward antidiagonals in which the entry in row n and column k is defined by A(n,k) = 5 + 9*A005836(2^(k - 1)*(2 n - 1)), n,k >= 1.

The programs for A265159, there is no canonical definition to state claims against.
-/

/-! ## A265159.P5181512477784520194

`A265100(A135764(n+1))`
-/

namespace A265159.P5181512477784520194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265100 (A135764 (n + 1)).toNat

end

end A265159.P5181512477784520194

/-! ## A265159.P12775163522971880684

`A356426(2*A135764(n+1))`
-/

namespace A265159.P12775163522971880684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356426 (2 * A135764 (n + 1)).toNat

end

end A265159.P12775163522971880684

/-! ## A265159.P6577779846598320139

`A003278(4*A135764(n+1))`
-/

namespace A265159.P6577779846598320139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (4 * A135764 (n + 1)).toNat

end

end A265159.P6577779846598320139

/-! ## A265159.P14799966327494685612

`A186776(4*A135764(n+1))`
-/

namespace A265159.P14799966327494685612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186776 (4 * A135764 (n + 1)).toNat

end

end A265159.P14799966327494685612

/-! ## A265159.P17769066071771335360

`A005836(4*A135764(n+1))+1`
-/

namespace A265159.P17769066071771335360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (4 * A135764 (n + 1)).toNat + 1

end

end A265159.P17769066071771335360

/-!
# A265160: a(n) = 2^n + prime(n).

The programs for A265160, the canonical program `A265160.P10879582922766651151` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265160 has offset 1).

The definition of A265160 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100484, A111209, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A265160.P10879582922766651151

`A100484(n+1)+A111209(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A265160

/-- `A100484(n+1)+A111209(n+1)` -/
def P10879582922766651151.Spec : Prop :=
  ∀ n, P10879582922766651151.a n = A265160 (n + 1)

theorem P10879582922766651151.correct : P10879582922766651151.Spec := by
  intro n
  simp only [A265160, Nat.add_sub_cancel]

end A265160

/-! ## A265160.P3948794919903619693

`p?[comp[n²]]+2^(n+1)`
-/

namespace A265160.P3948794919903619693
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 2 ^ (n + 1)

end

end A265160.P3948794919903619693

namespace A265160

/-- `p?[comp[n²]]+2^(n+1)` -/
def P3948794919903619693.Spec : Prop :=
  ∀ n, (P3948794919903619693.a n : ℤ) = A265160 (n + 1)

end A265160

/-! ## A265160.P5864483657783257901

`record[∑{p}[n+2, #]]+2^(n+1)`
-/

namespace A265160.P5864483657783257901
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2 ^ (n + 1)

end

end A265160.P5864483657783257901

namespace A265160

/-- `record[∑{p}[n+2, #]]+2^(n+1)` -/
def P5864483657783257901.Spec : Prop :=
  ∀ n, (P5864483657783257901.a n : ℤ) = A265160 (n + 1)

end A265160

/-! ## A265160.P3710061940587181875

`A000040(n+1)+2^(n+1)`
-/

namespace A265160.P3710061940587181875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (2 ^ (n + 1) : ℤ)

end

end A265160.P3710061940587181875

namespace A265160

/-- `A000040(n+1)+2^(n+1)` -/
def P3710061940587181875.Spec : Prop :=
  ∀ n, P3710061940587181875.a n = A265160 (n + 1)

end A265160

/-! ## A265160.P5139080416037314258

`A008578(n+2)+2^(n+1)`
-/

namespace A265160.P5139080416037314258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + (2 ^ (n + 1) : ℤ)

end

end A265160.P5139080416037314258

namespace A265160

/-- `A008578(n+2)+2^(n+1)` -/
def P5139080416037314258.Spec : Prop :=
  ∀ n, P5139080416037314258.a n = A265160 (n + 1)

end A265160

/-! ## A265160.P10778329309279751689

`record[A006530(n+2)]+2^(n+1)`
-/

namespace A265160.P10778329309279751689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (2 ^ (n + 1) : ℤ)

end

end A265160.P10778329309279751689

namespace A265160

/-- `record[A006530(n+2)]+2^(n+1)` -/
def P10778329309279751689.Spec : Prop :=
  ∀ n, P10778329309279751689.a n = A265160 (n + 1)

end A265160

/-! ## A265160.P6931726126302962207

`record[A020639(n+2)]+2^(n+1)`
-/

namespace A265160.P6931726126302962207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (2 ^ (n + 1) : ℤ)

end

end A265160.P6931726126302962207

namespace A265160

/-- `record[A020639(n+2)]+2^(n+1)` -/
def P6931726126302962207.Spec : Prop :=
  ∀ n, P6931726126302962207.a n = A265160 (n + 1)

end A265160

/-! ## A265160.P13089216961459220500

`A048578(n)+A006093(n+1)`
-/

namespace A265160.P13089216961459220500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n + A006093 (n + 1)

end

end A265160.P13089216961459220500

namespace A265160

/-- `A048578(n)+A006093(n+1)` -/
def P13089216961459220500.Spec : Prop :=
  ∀ n, P13089216961459220500.a n = A265160 (n + 1)

end A265160

/-! ## A265160.P6493086858031899429

`A126646(n)+A008864(n+1)`
-/

namespace A265160.P6493086858031899429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + A008864 (n + 1)

end

end A265160.P6493086858031899429

namespace A265160

/-- `A126646(n)+A008864(n+1)` -/
def P6493086858031899429.Spec : Prop :=
  ∀ n, P6493086858031899429.a n = A265160 (n + 1)

end A265160

/-! ## A265160.P16096142351054848297

`A198633(n)+A006005(n+1)`
-/

namespace A265160.P16096142351054848297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n + A006005 (n + 1)

end

end A265160.P16096142351054848297

namespace A265160

/-- `A198633(n)+A006005(n+1)` -/
def P16096142351054848297.Spec : Prop :=
  ∀ n, P16096142351054848297.a n = A265160 (n + 1)

end A265160

/-! ## A265160.P7006262652630333776

`A107622(n+1)+A101622(n)`
-/

namespace A265160.P7006262652630333776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107622 (n + 1) + A101622 n

end

end A265160.P7006262652630333776

namespace A265160

/-- `A107622(n+1)+A101622(n)` -/
def P7006262652630333776.Spec : Prop :=
  ∀ n, P7006262652630333776.a n = A265160 (n + 1)

end A265160

/-! ## A265160.P15279409598205472212

`record[A135530(n)]+A000040(n+1)`
-/

namespace A265160.P15279409598205472212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + A000040 (n + 1)

end

end A265160.P15279409598205472212

namespace A265160

/-- `record[A135530(n)]+A000040(n+1)` -/
def P15279409598205472212.Spec : Prop :=
  ∀ n, P15279409598205472212.a n = A265160 (n + 1)

end A265160

/-! ## A265160.P811190671056985994

`A000079(n+1)+A000040(n+1)`
-/

namespace A265160.P811190671056985994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + A000040 (n + 1)

end

end A265160.P811190671056985994

namespace A265160

/-- `A000079(n+1)+A000040(n+1)` -/
def P811190671056985994.Spec : Prop :=
  ∀ n, P811190671056985994.a n = A265160 (n + 1)

end A265160

/-! ## A265160.P16657505013023737915

`A008864(n+1)+A000225(n+1)`
-/

namespace A265160.P16657505013023737915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + A000225 (n + 1)

end

end A265160.P16657505013023737915

namespace A265160

/-- `A008864(n+1)+A000225(n+1)` -/
def P16657505013023737915.Spec : Prop :=
  ∀ n, P16657505013023737915.a n = A265160 (n + 1)

end A265160

/-! ## A265160.P5963887112047687901

`A028815(n+1)+A000225(n+1)`
-/

namespace A265160.P5963887112047687901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) + A000225 (n + 1)

end

end A265160.P5963887112047687901

namespace A265160

/-- `A028815(n+1)+A000225(n+1)` -/
def P5963887112047687901.Spec : Prop :=
  ∀ n, P5963887112047687901.a n = A265160 (n + 1)

end A265160

/-! ## A265160.P18056348942857936961

`A062777(n+1)+A014193(n+1)`
-/

namespace A265160.P18056348942857936961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062777 (n + 1) + A014193 (n + 1)

end

end A265160.P18056348942857936961

namespace A265160

/-- `A062777(n+1)+A014193(n+1)` -/
def P18056348942857936961.Spec : Prop :=
  ∀ n, P18056348942857936961.a n = A265160 (n + 1)

end A265160

/-! ## A265160.P16670545328131736085

`A155559(n+1)+A000040(n+1)`
-/

namespace A265160.P16670545328131736085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 (n + 1) + A000040 (n + 1)

end

end A265160.P16670545328131736085

namespace A265160

/-- `A155559(n+1)+A000040(n+1)` -/
def P16670545328131736085.Spec : Prop :=
  ∀ n, P16670545328131736085.a n = A265160 (n + 1)

end A265160

/-! ## A265160.P6288842950831293737

`A171449(n+1)+A000040(n+1)`
-/

namespace A265160.P6288842950831293737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171449 (n + 1) + A000040 (n + 1)

end

end A265160.P6288842950831293737

namespace A265160

/-- `A171449(n+1)+A000040(n+1)` -/
def P6288842950831293737.Spec : Prop :=
  ∀ n, P6288842950831293737.a n = A265160 (n + 1)

end A265160

/-! ## A265160.P10498582352752454343

`A171559(n+1)+A000040(n+1)`
-/

namespace A265160.P10498582352752454343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171559 (n + 1) + A000040 (n + 1)

end

end A265160.P10498582352752454343

namespace A265160

/-- `A171559(n+1)+A000040(n+1)` -/
def P10498582352752454343.Spec : Prop :=
  ∀ n, P10498582352752454343.a n = A265160 (n + 1)

end A265160

/-! ## A265160.P18077433692707140854

`A173072(n+1)+A131520(n+1)`
-/

namespace A265160.P18077433692707140854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173072 (n + 1) + A131520 (n + 1)

end

end A265160.P18077433692707140854

namespace A265160

/-- `A173072(n+1)+A131520(n+1)` -/
def P18077433692707140854.Spec : Prop :=
  ∀ n, P18077433692707140854.a n = A265160 (n + 1)

end A265160

/-!
# A265161: Array A read by upward antidiagonals in which the entry in row n and column k is defined by A(n,k) = (3/2)*(3^k - 1) + A265159(n,k), n,k >= 1.

The programs for A265161, there is no canonical definition to state claims against.
-/

/-! ## A265161.P2383986337873097665

`A089118(2*A135764(n+1))`
-/

namespace A265161.P2383986337873097665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089118 (2 * A135764 (n + 1)).toNat

end

end A265161.P2383986337873097665

/-! ## A265161.P10377983986851625041

`A265159(n+1)+A085296(A135764(n+1))`
-/

namespace A265161.P10377983986851625041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265159 (n + 1) + A085296 (A135764 (n + 1)).toNat

end

end A265161.P10377983986851625041

/-! ## A265161.P10816488528601873810

`A356426(2*A135764(n+1))+A085296(A135764(n+1))`
-/

namespace A265161.P10816488528601873810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356426 (2 * A135764 (n + 1)).toNat + A085296 (A135764 (n + 1)).toNat

end

end A265161.P10816488528601873810

/-! ## A265161.P2030011102044624337

`A085296(A135764(n+1))+A003278(4*A135764(n+1))`
-/

namespace A265161.P2030011102044624337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085296 (A135764 (n + 1)).toNat + A003278 (4 * A135764 (n + 1)).toNat

end

end A265161.P2030011102044624337

/-! ## A265161.P16895154867475400675

`A186776(4*A135764(n+1))+A085296(A135764(n+1))`
-/

namespace A265161.P16895154867475400675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186776 (4 * A135764 (n + 1)).toNat + A085296 (A135764 (n + 1)).toNat

end

end A265161.P16895154867475400675

/-!
# A265164: Sum of the n-th row of the array A265163(n, k).

The programs for A265164, there is no canonical definition to state claims against.
-/

/-! ## A265164.P9860006507191696214

`A028310(or(A242003(n+2), A330327(n+1)))`
-/

namespace A265164.P9860006507191696214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lor (A242003 (n + 2)) (A330327 (n + 1))).toNat

end

end A265164.P9860006507191696214

/-! ## A265164.P11293903816784108807

`or(A242003(n+2), A293304(A096224(n+1)))`
-/

namespace A265164.P11293903816784108807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A242003 (n + 2)) (A293304 (A096224 (n + 1)).toNat)

end

end A265164.P11293903816784108807

/-!
# A265165: a(n) = sum of the n-th column of the array A265163(n,k). See Comments for more details.

The programs for A265165, there is no canonical definition to state claims against.
-/

/-! ## A265165.P15659936798455899313

`A002264((3*n-1)*a(n-1)-a(n-2))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A265165.P15659936798455899313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A002264 (((3 * n : ℤ) - 1) * a (n - 1) - a (n - 2)).toNat

end

end A265165.P15659936798455899313

/-! ## A265165.P8517491205525051088

`A008647(n*A346747(n))`
-/

namespace A265165.P8517491205525051088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 ((n : ℤ) * A346747 n).toNat

end

end A265165.P8517491205525051088

/-! ## A265165.P13099418171275649785

`A219652(ceil((A000670(n)-and(3, n))/4))`
-/

namespace A265165.P13099418171275649785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219652 ⌈(A000670 n - (Nat.land 3 n : ℤ) : ℚ) / 4⌉.toNat

end

end A265165.P13099418171275649785

/-!
# A265166: Numbers n such that 2^n-1 and 5^n-1 are coprime.

The programs for A265166, there is no canonical definition to state claims against.
-/

/-! ## A265166.P6066654582875295235

`eq[1, A214180(n+1)]+1`
-/

namespace A265166.P6066654582875295235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214180 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A265166.P6066654582875295235

/-! ## A265166.P18410483616237922461

`eq[1, A270390(n+1)]+1`
-/

namespace A265166.P18410483616237922461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270390 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A265166.P18410483616237922461

/-! ## A265166.P13731820993637006385

`eq[n%2, A270390(or(1, n))]`
-/

namespace A265166.P13731820993637006385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270390 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265166.P13731820993637006385

/-! ## A265166.P11268020911248500686

`record[(n+2)/A214180(n+2)]`
-/

namespace A265166.P11268020911248500686
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A214180 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265166.P11268020911248500686

/-! ## A265166.P12753988456716328101

`A004442(eq[1, A214180(n+1)])`
-/

namespace A265166.P12753988456716328101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265166.P12753988456716328101

/-! ## A265166.P2126231785786129846

`A004442(eq[1, A270390(n+1)])`
-/

namespace A265166.P2126231785786129846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265166.P2126231785786129846

/-! ## A265166.P7862977516266171867

`A097062(eq[1, A214180(n+1)])`
-/

namespace A265166.P7862977516266171867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097062 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265166.P7862977516266171867

/-! ## A265166.P8607774943918029500

`eq[1, A214180(A000038(n)+n)]`
-/

namespace A265166.P8607774943918029500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214180 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265166.P8607774943918029500

/-! ## A265166.P8345655458770263728

`eq[n%2, A214180(A029579(n))]`
-/

namespace A265166.P8345655458770263728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214180 (A029579 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265166.P8345655458770263728

/-! ## A265166.P8566325460292551513

`record[A000027(n+1)/A270390(n+1)]`
-/

namespace A265166.P8566325460292551513
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A270390 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265166.P8566325460292551513

/-!
# A265167: Number of n X 2 arrays containing 2 copies of 0..n-1 with no equal horizontal or vertical neighbors and new values introduced sequentially from 0.

The programs for A265167, there is no canonical definition to state claims against.
-/

/-! ## A265167.P13103602087123108506

`A264952(n+1)/(n+1)!`
-/

namespace A265167.P13103602087123108506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264952 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A265167.P13103602087123108506

/-! ## A265167.P11137300583857505289

`A264952(n+1)/Δ[A007489(n)]`
-/

namespace A265167.P11137300583857505289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264952 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A265167.P11137300583857505289

/-! ## A265167.P14914004719957853531

`A264952(n+1)/∏[A291769(n)]`
-/

namespace A265167.P14914004719957853531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264952 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A265167.P14914004719957853531

/-! ## A265167.P17719512741569037201

`A264952(n+1)/record[A123361(n)]`
-/

namespace A265167.P17719512741569037201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123361 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264952 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A265167.P17719512741569037201

/-! ## A265167.P10403808882305044779

`A264952(n+1)/A000142(n+1)`
-/

namespace A265167.P10403808882305044779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264952 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ)

end

end A265167.P10403808882305044779

/-!
# A265168: Number of n X 3 arrays containing 3 copies of 0..n-1 with no equal horizontal or vertical neighbors and new values introduced sequentially from 0.

The programs for A265168, there is no canonical definition to state claims against.
-/

/-! ## A265168.P1797705721495041954

`A265170(∑[n+3]+1)`
-/

namespace A265168.P1797705721495041954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265170 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265168.P1797705721495041954

/-! ## A265168.P14318732359295402959

`A264953(n+1)/(n+1)!`
-/

namespace A265168.P14318732359295402959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264953 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A265168.P14318732359295402959

/-! ## A265168.P7459969198248603871

`A264953(n+1)/A253284(∑[n])`
-/

namespace A265168.P7459969198248603871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264953 (n + 1) : ℚ) / (A253284 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A265168.P7459969198248603871

/-! ## A265168.P14656605060159303368

`A264953(n+1)/Δ[A007489(n)]`
-/

namespace A265168.P14656605060159303368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264953 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A265168.P14656605060159303368

/-!
# A265169: Number of nX4 arrays of permutations of 4 copies of 0..n-1 with no equal horizontal or vertical neighbors and new values introduced sequentially from 0.

The programs for A265169, there is no canonical definition to state claims against.
-/

/-! ## A265169.P17563358722377576512

`A265170(∑[n+4]+3)`
-/

namespace A265169.P17563358722377576512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265170 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A265169.P17563358722377576512

/-! ## A265169.P16510562748613707585

`record[floor(A265170(n+1)/A058876(n+5))]`
-/

namespace A265169.P16510562748613707585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A265170 (n + 1) : ℚ) / (A058876 (n + 5) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265169.P16510562748613707585

/-! ## A265169.P13670837925896458633

`A265170(A141214(n+1))^A181783(n)`
-/

namespace A265169.P13670837925896458633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265170 (A141214 (n + 1)).toNat : ℚ) ^ (A181783 n : ℤ)

end

end A265169.P13670837925896458633

/-!
# A265170: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with no equal horizontal or vertical neighbors and new values introduced sequentially from 0.

The programs for A265170, there is no canonical definition to state claims against.
-/

/-! ## A265170.P13144205718665213219

`A264954(n+1)/A166350(n+1)`
-/

namespace A265170.P13144205718665213219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264954 (n + 1) : ℚ) / (A166350 (n + 1) : ℚ)

end

end A265170.P13144205718665213219

/-! ## A265170.P318955998234369208

`A264954(n+1)/A002260(n+1)!`
-/

namespace A265170.P318955998234369208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264954 (n + 1) : ℚ) / (Nat.factorial (A002260 (n + 1)).toNat : ℚ)

end

end A265170.P318955998234369208

/-! ## A265170.P4132825382894175018

`A264954(n+1)/A214078(A133819(n+1))`
-/

namespace A265170.P4132825382894175018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264954 (n + 1) : ℚ) / (A214078 (A133819 (n + 1)).toNat : ℚ)

end

end A265170.P4132825382894175018

/-! ## A265170.P7641378665921684040

`A264954(n+1)/A214078(A002260(n+1)²)`
-/

namespace A265170.P7641378665921684040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264954 (n + 1) : ℚ) / (A214078 (A002260 (n + 1) ^ 2).toNat : ℚ)

end

end A265170.P7641378665921684040

/-! ## A265170.P864344329193135913

`A264954(n+1)/A000142(sqrt(A133819(n+1)))`
-/

namespace A265170.P864344329193135913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264954 (n + 1) : ℚ) / (A000142 (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ))).toNat : ℚ)

end

end A265170.P864344329193135913

/-! ## A265170.P5208854871266223420

`A264954(n+1)/A004736(A038722(n+1))!`
-/

namespace A265170.P5208854871266223420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264954 (n + 1) : ℚ) / (Nat.factorial (A004736 (A038722 (n + 1)).toNat).toNat : ℚ)

end

end A265170.P5208854871266223420

/-!
# A265171: Number of 5Xn arrays containing n copies of 0..5-1 with no equal horizontal or vertical neighbors and new values introduced sequentially from 0.

The programs for A265171, there is no canonical definition to state claims against.
-/

/-! ## A265171.P4518053886761195032

`record[ratio[A264957(A193592(n))]]`
-/

namespace A265171.P4518053886761195032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264957 (A193592 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265171.P4518053886761195032

/-! ## A265171.P10202974075466083078

`A264957(n+1)/A264957(A027828(n))`
-/

namespace A265171.P10202974075466083078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264957 (n + 1) : ℚ) / (A264957 (A027828 n).toNat : ℚ)

end

end A265171.P10202974075466083078

/-! ## A265171.P6111546911025671155

`A264957(n+1)/A264957(A065648(n))`
-/

namespace A265171.P6111546911025671155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264957 (n + 1) : ℚ) / (A264957 (A065648 n).toNat : ℚ)

end

end A265171.P6111546911025671155

/-! ## A265171.P935102788522001024

`A264957(n+1)/A264957(A119329(n))`
-/

namespace A265171.P935102788522001024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264957 (n + 1) : ℚ) / (A264957 (A119329 n).toNat : ℚ)

end

end A265171.P935102788522001024

/-!
# A265172: Binary representation of the n-th iteration of the "Rule 90" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265172, there is no canonical definition to state claims against.
-/

/-! ## A265172.P2871630806783593687

`record[A277917(n)]`
-/

namespace A265172.P2871630806783593687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277917 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265172.P2871630806783593687

/-! ## A265172.P16043308298733989735

`A006943(2*n)`
-/

namespace A265172.P16043308298733989735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006943 (2 * n)

end

end A265172.P16043308298733989735

/-! ## A265172.P17158149361586455861

`A006943(A005408(n))/11`
-/

namespace A265172.P17158149361586455861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006943 (A005408 n).toNat : ℚ) / 11

end

end A265172.P17158149361586455861

/-! ## A265172.P2433837389106086253

`record[A006943(A088705(n)+n)]`
-/

namespace A265172.P2433837389106086253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006943 (A088705 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265172.P2433837389106086253

/-! ## A265172.P4013949556953264203

`record[gcd(A006943(n+1), A006943(n))]`
-/

namespace A265172.P4013949556953264203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006943 (n + 1)) (A006943 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265172.P4013949556953264203

/-!
# A265173: Number of nX1 0..n*1-1 arrays with upper left zero and lower right n*1-1 and each element differing from its horizontal and vertical neighbors by a power of two.

The programs for A265173, there is no canonical definition to state claims against.
-/

/-! ## A265173.P9118548102882397409

`A265601(∑[n]+1)`
-/

namespace A265173.P9118548102882397409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265601 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265173.P9118548102882397409

/-! ## A265173.P12492053737071741200

`A265601(A000124(n))+A185255(n)`
-/

namespace A265173.P12492053737071741200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265601 (A000124 n).toNat + A185255 n

end

end A265173.P12492053737071741200

/-! ## A265173.P3452187841677340184

`gcd(A000038(n), A265601(A000124(n)))`
-/

namespace A265173.P3452187841677340184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A265601 (A000124 n).toNat)

end

end A265173.P3452187841677340184

/-! ## A265173.P16761153420171038319

`or(A000007(n), A265601(A000124(n)))`
-/

namespace A265173.P16761153420171038319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A265601 (A000124 n).toNat)

end

end A265173.P16761153420171038319

/-! ## A265173.P298637933823524197

`A265494(∑[n]+1)`
-/

namespace A265173.P298637933823524197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265494 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265173.P298637933823524197

/-!
# A265174: Number of nX2 0..n*2-1 arrays with upper left zero and lower right n*2-1 and each element differing from its horizontal and vertical neighbors by a power of two.

The programs for A265174, there is no canonical definition to state claims against.
-/

/-! ## A265174.P8516421734816101660

`A265178(∑[n+1]+2)`
-/

namespace A265174.P8516421734816101660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265178 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A265174.P8516421734816101660

/-! ## A265174.P9257727068402389594

`record[root(A265178(n+1), A144150(n))]`
-/

namespace A265174.P9257727068402389594
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A265178 (n + 1) : ℝ) ^ (1 / (A144150 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265174.P9257727068402389594

/-! ## A265174.P9439120642200526857

`record[root(A265178(n+1), A307855(n))]`
-/

namespace A265174.P9439120642200526857
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A265178 (n + 1) : ℝ) ^ (1 / (A307855 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265174.P9439120642200526857

/-! ## A265174.P4434357313674747043

`record[gcd(A185158(n+1), A265178(n+1))]`
-/

namespace A265174.P4434357313674747043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185158 (n + 1)) (A265178 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265174.P4434357313674747043

/-! ## A265174.P8931361727247257032

`record[ratio[A265178(n+1)]*A265601(n+1)]`
-/

namespace A265174.P8931361727247257032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265178 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ) * (A265601 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265174.P8931361727247257032

/-!
# A265175: Number of nX3 0..n*3-1 arrays with upper left zero and lower right n*3-1 and each element differing from its horizontal and vertical neighbors by a power of two.

The programs for A265175, there is no canonical definition to state claims against.
-/

/-! ## A265175.P6718542057995595387

`A265178(∑[n+2]+4)`
-/

namespace A265175.P6718542057995595387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265178 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A265175.P6718542057995595387

/-! ## A265175.P7812903057218154552

`A265178(A167614(n+1))+A185255(n)`
-/

namespace A265175.P7812903057218154552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265178 (A167614 (n + 1)).toNat + A185255 n

end

end A265175.P7812903057218154552

/-! ## A265175.P12755290519666318321

`gcd(A000038(n), A265178(A167614(n+1)))`
-/

namespace A265175.P12755290519666318321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A265178 (A167614 (n + 1)).toNat)

end

end A265175.P12755290519666318321

/-! ## A265175.P9464765785871909700

`lcm(A219347(n), A265178(A167614(n+1)))`
-/

namespace A265175.P9464765785871909700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A219347 n) (A265178 (A167614 (n + 1)).toNat)

end

end A265175.P9464765785871909700

/-! ## A265175.P7976202194994228088

`or(A000007(n), A265178(A167614(n+1)))`
-/

namespace A265175.P7976202194994228088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A265178 (A167614 (n + 1)).toNat)

end

end A265175.P7976202194994228088

/-!
# A265176: Number of nX4 0..n*4-1 arrays with upper left zero and lower right n*4-1 and each element differing from its horizontal and vertical neighbors by a power of two.

The programs for A265176, there is no canonical definition to state claims against.
-/

/-! ## A265176.P16643959830320732846

`A265178(A141214(n)+7)`
-/

namespace A265176.P16643959830320732846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265178 (A141214 n + 7).toNat

end

end A265176.P16643959830320732846

/-! ## A265176.P2388896263430825627

`A265178(A052905(n)+9)`
-/

namespace A265176.P2388896263430825627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265178 (A052905 n + 9).toNat

end

end A265176.P2388896263430825627

/-! ## A265176.P5349936543997793740

`A265178(A055999(n)+10)`
-/

namespace A265176.P5349936543997793740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265178 (A055999 n + 10).toNat

end

end A265176.P5349936543997793740

/-! ## A265176.P15924924493062280669

`A265178(eq[5, A066657(n)])`
-/

namespace A265176.P15924924493062280669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265176.P15924924493062280669

/-!
# A265177: Number of n X 5 0..n*5-1 arrays with upper left zero and lower right n*5-1 and each element differing from its horizontal and vertical neighbors by a power of two.

The programs for A265177, there is no canonical definition to state claims against.
-/

/-! ## A265177.P384016745289271089

`A265178(A374005(n+1))`
-/

namespace A265177.P384016745289271089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265178 (A374005 (n + 1)).toNat

end

end A265177.P384016745289271089

/-! ## A265177.P4906227638148977926

`A265178(A155212(n)+13)`
-/

namespace A265177.P4906227638148977926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265178 (A155212 n + 13).toNat

end

end A265177.P4906227638148977926

/-! ## A265177.P3055611224418864807

`A265178(A056000(n)+15)`
-/

namespace A265177.P3055611224418864807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265178 (A056000 n + 15).toNat

end

end A265177.P3055611224418864807

/-!
# A265184: a(n) = Sum_{k = 0..n} (-1)^k*prime(k)#, where prime(k)# is the prime factorial function.

The programs for A265184, there is no canonical definition to state claims against.
-/

/-! ## A265184.P15015151336207357304

`∑[(-1)^n*∏[eq[n, ∏{d}[n, #]]]]`
-/

namespace A265184.P15015151336207357304
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f5 n), d

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265184.P15015151336207357304

/-! ## A265184.P264115997539239101

`∑[∏[eq[n, ∏{d}[n, #]]]/(-1)^n]`
-/

namespace A265184.P264115997539239101
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f5 n), d

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265184.P264115997539239101

/-! ## A265184.P6105724145303492688

`∑[A070918(∑[n])]`
-/

namespace A265184.P6105724145303492688
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070918 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265184.P6105724145303492688

/-! ## A265184.P3556077225542078638

`∑[(-1)^n*A002110(n)]`
-/

namespace A265184.P3556077225542078638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A002110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265184.P3556077225542078638

/-! ## A265184.P2654325467722912940

`∑[-a(n-1)*A000040(n)]` with `a(0)=1`
-/

namespace A265184.P2654325467722912940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -(f1 (n - 1) * A000040 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265184.P2654325467722912940

/-!
# A265185: Non-vanishing traces of the powers of the adjacency matrix for the simple Lie algebra B_4: 2 * ((2 + sqrt(2))^n + (2 - sqrt(2))^n).

The programs for A265185, the canonical program `A265185.P13911797425153417806` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265185 has offset 0).

The definition of A265185 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265185.P13911797425153417806

`2*A056236(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A265185

/-- `2*A056236(n)` -/
def P13911797425153417806.Spec : Prop :=
  ∀ n, P13911797425153417806.a n = A265185 n

theorem P13911797425153417806.correct : P13911797425153417806.Spec := by
  intro n
  simp only [A265185]

end A265185

/-! ## A265185.P16916009193549311353

`4*A006012(n)`
-/

namespace A265185.P16916009193549311353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A006012 n

end

end A265185.P16916009193549311353

namespace A265185

/-- `4*A006012(n)` -/
def P16916009193549311353.Spec : Prop :=
  ∀ n, P16916009193549311353.a n = A265185 n

end A265185

/-! ## A265185.P15218512180112296610

`2*(2*a(n-1)-a(n-2))` with `a(0)=4, a(1)=8`
-/

namespace A265185.P15218512180112296610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 8] fun n a =>
  2 * (2 * a (n - 1) - a (n - 2))

end

end A265185.P15218512180112296610

namespace A265185

/-- `2*(2*a(n-1)-a(n-2))` -/
def P15218512180112296610.Spec : Prop :=
  ∀ n, P15218512180112296610.a n = A265185 n

end A265185

/-! ## A265185.P6392076582663135484

`2*((2+sqrt(2))^n+(2-sqrt(2))^n)`
-/

namespace A265185.P6392076582663135484
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * ((2 + Real.sqrt (2 : ℝ)) ^ n + (2 - Real.sqrt (2 : ℝ)) ^ n)

end

end A265185.P6392076582663135484

namespace A265185

/-- `2*((2+sqrt(2))^n+(2-sqrt(2))^n)` -/
def P6392076582663135484.Spec : Prop :=
  ∀ n, P6392076582663135484.a n = (A265185 n : ℝ)

end A265185

/-! ## A265185.P12737702158070918992

`∑[4*A204089(n)]`
-/

namespace A265185.P12737702158070918992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A204089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265185.P12737702158070918992

namespace A265185

/-- `∑[4*A204089(n)]` -/
def P12737702158070918992.Spec : Prop :=
  ∀ n, P12737702158070918992.a n = A265185 n

end A265185

/-! ## A265185.P1477235550293986361

`Δ[2*A293067(n+1)]`
-/

namespace A265185.P1477235550293986361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A293067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265185.P1477235550293986361

namespace A265185

/-- `Δ[2*A293067(n+1)]` -/
def P1477235550293986361.Spec : Prop :=
  ∀ n, P1477235550293986361.a n = A265185 n

end A265185

/-! ## A265185.P293358323935737384

`Δ[4*A087161(n+1)]`
-/

namespace A265185.P293358323935737384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A087161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265185.P293358323935737384

namespace A265185

/-- `Δ[4*A087161(n+1)]` -/
def P293358323935737384.Spec : Prop :=
  ∀ n, P293358323935737384.a n = A265185 n

end A265185

/-! ## A265185.P15669212495693585762

`A162269(n)-A007070(n)`
-/

namespace A265185.P15669212495693585762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162269 n - A007070 n

end

end A265185.P15669212495693585762

namespace A265185

/-- `A162269(n)-A007070(n)` -/
def P15669212495693585762.Spec : Prop :=
  ∀ n, P15669212495693585762.a n = A265185 n

end A265185

/-! ## A265185.P17903705828256918171

`A163608(n)-A111566(n)`
-/

namespace A265185.P17903705828256918171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163608 n - A111566 n

end

end A265185.P17903705828256918171

namespace A265185

/-- `A163608(n)-A111566(n)` -/
def P17903705828256918171.Spec : Prop :=
  ∀ n, P17903705828256918171.a n = A265185 n

end A265185

/-! ## A265185.P10185495882130324293

`A162269(n)-A204089(n+1)`
-/

namespace A265185.P10185495882130324293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162269 n - A204089 (n + 1)

end

end A265185.P10185495882130324293

namespace A265185

/-- `A162269(n)-A204089(n+1)` -/
def P10185495882130324293.Spec : Prop :=
  ∀ n, P10185495882130324293.a n = A265185 n

end A265185

/-! ## A265185.P363233293452321065

`A106731(n)+2*A161941(n)`
-/

namespace A265185.P363233293452321065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106731 n + 2 * A161941 n

end

end A265185.P363233293452321065

namespace A265185

/-- `A106731(n)+2*A161941(n)` -/
def P363233293452321065.Spec : Prop :=
  ∀ n, P363233293452321065.a n = A265185 n

end A265185

/-! ## A265185.P17553862090894103012

`A162269(n)-A007068(2*n+1)`
-/

namespace A265185.P17553862090894103012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162269 n - A007068 (2 * n + 1)

end

end A265185.P17553862090894103012

namespace A265185

/-- `A162269(n)-A007068(2*n+1)` -/
def P17553862090894103012.Spec : Prop :=
  ∀ n, P17553862090894103012.a n = A265185 n

end A265185

/-! ## A265185.P1734749609313859154

`2*A161941(n)-A060995(n+1)`
-/

namespace A265185.P1734749609313859154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161941 n - A060995 (n + 1)

end

end A265185.P1734749609313859154

namespace A265185

/-- `2*A161941(n)-A060995(n+1)` -/
def P1734749609313859154.Spec : Prop :=
  ∀ n, P1734749609313859154.a n = A265185 n

end A265185

/-! ## A265185.P2092730797725543934

`A030435(2*n)+A030435(2*n)`
-/

namespace A265185.P2092730797725543934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030435 (2 * n) + A030435 (2 * n)

end

end A265185.P2092730797725543934

namespace A265185

/-- `A030435(2*n)+A030435(2*n)` -/
def P2092730797725543934.Spec : Prop :=
  ∀ n, P2092730797725543934.a n = A265185 n

end A265185

/-! ## A265185.P906601460346636019

`A006012(n)+A056236(n)+A006012(n)`
-/

namespace A265185.P906601460346636019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n + (A056236 n + A006012 n)

end

end A265185.P906601460346636019

namespace A265185

/-- `A006012(n)+A056236(n)+A006012(n)` -/
def P906601460346636019.Spec : Prop :=
  ∀ n, P906601460346636019.a n = A265185 n

end A265185

/-! ## A265185.P12068992107027122104

`A106731(n)+A163608(n)-A007070(n)`
-/

namespace A265185.P12068992107027122104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106731 n + (A163608 n - A007070 n)

end

end A265185.P12068992107027122104

namespace A265185

/-- `A106731(n)+A163608(n)-A007070(n)` -/
def P12068992107027122104.Spec : Prop :=
  ∀ n, P12068992107027122104.a n = A265185 n

end A265185

/-! ## A265185.P9016478198839516485

`A106731(n)+A106731(n)+A056236(n+1)`
-/

namespace A265185.P9016478198839516485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106731 n + (A106731 n + A056236 (n + 1))

end

end A265185.P9016478198839516485

namespace A265185

/-- `A106731(n)+A106731(n)+A056236(n+1)` -/
def P9016478198839516485.Spec : Prop :=
  ∀ n, P9016478198839516485.a n = A265185 n

end A265185

/-! ## A265185.P2913417242502397189

`A106731(n+1)+A162269(n)+A007070(n)`
-/

namespace A265185.P2913417242502397189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106731 (n + 1) + (A162269 n + A007070 n)

end

end A265185.P2913417242502397189

namespace A265185

/-- `A106731(n+1)+A162269(n)+A007070(n)` -/
def P2913417242502397189.Spec : Prop :=
  ∀ n, P2913417242502397189.a n = A265185 n

end A265185

/-! ## A265185.P3041362819934603482

`A007070(n+1)+A007070(n)-A164298(n)`
-/

namespace A265185.P3041362819934603482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 (n + 1) + (A007070 n - A164298 n)

end

end A265185.P3041362819934603482

namespace A265185

/-- `A007070(n+1)+A007070(n)-A164298(n)` -/
def P3041362819934603482.Spec : Prop :=
  ∀ n, P3041362819934603482.a n = A265185 n

end A265185

/-!
# A265186: Triangle read by rows giving successive states of cellular automaton generated by "Rule 175" initiated with a single ON (black) cell.

The programs for A265186, the canonical program `A265186.P6783567592415756402` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265186 has offset 0).

The definition of A265186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265186.P1733206222054110421

`char[comp[(n+1)²+2]]`
-/

namespace A265186.P1733206222054110421
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A265186.P1733206222054110421

namespace A265186

/-- `char[comp[(n+1)²+2]]` -/
def P1733206222054110421.Spec : Prop :=
  ∀ n, (P1733206222054110421.a n : ℤ) = A265186 n

end A265186

/-! ## A265186.P422743191772360969

`1-char[or(2, (n+1)²)]`
-/

namespace A265186.P422743191772360969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 ((n + 1) ^ 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A265186.P422743191772360969

namespace A265186

/-- `1-char[or(2, (n+1)²)]` -/
def P422743191772360969.Spec : Prop :=
  ∀ n, P422743191772360969.a n = A265186 n

end A265186

/-! ## A265186.P3422433189873290212

`xor(1, char[(n+1)²+2])`
-/

namespace A265186.P3422433189873290212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A265186.P3422433189873290212

namespace A265186

/-- `xor(1, char[(n+1)²+2])` -/
def P3422433189873290212.Spec : Prop :=
  ∀ n, (P3422433189873290212.a n : ℤ) = A265186 n

end A265186

/-! ## A265186.P10288695096244477910

`dr(1-char[(n+1)²+2])`
-/

namespace A265186.P10288695096244477910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A265186.P10288695096244477910

namespace A265186

/-- `dr(1-char[(n+1)²+2])` -/
def P10288695096244477910.Spec : Prop :=
  ∀ n, (P10288695096244477910.a n : ℤ) = A265186 n

end A265186

/-! ## A265186.P15496767139963924410

`1-char[record[(1-n)²+2]]`
-/

namespace A265186.P15496767139963924410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A265186.P15496767139963924410

namespace A265186

/-- `1-char[record[(1-n)²+2]]` -/
def P15496767139963924410.Spec : Prop :=
  ∀ n, P15496767139963924410.a n = A265186 n

end A265186

/-! ## A265186.P6783567592415756402

`ceil(∏{d}[n-2, #/(3-2*n)])`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A265186

/-- `ceil(∏{d}[n-2, #/(3-2*n)])` -/
def P6783567592415756402.Spec : Prop :=
  ∀ n, P6783567592415756402.a n = A265186 n

theorem P6783567592415756402.correct : P6783567592415756402.Spec := by
  intro n
  simp only [A265186]

end A265186

/-! ## A265186.P3711153177983956987

`val(5*(char[n*(n+2)+3]+1)+1, 2)`
-/

namespace A265186.P3711153177983956987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 2) + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (5 * ((if ∃ j, f1 j = n then 1 else 0) + 1) + 1) 2

end

end A265186.P3711153177983956987

namespace A265186

/-- `val(5*(char[n*(n+2)+3]+1)+1, 2)` -/
def P3711153177983956987.Spec : Prop :=
  ∀ n, (P3711153177983956987.a n : ℤ) = A265186 n

end A265186

/-! ## A265186.P16114083818496168882

`A267635(xor(2, n))`
-/

namespace A265186.P16114083818496168882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 (Nat.xor 2 n)

end

end A265186.P16114083818496168882

namespace A265186

/-- `A267635(xor(2, n))` -/
def P16114083818496168882.Spec : Prop :=
  ∀ n, P16114083818496168882.a n = A265186 n

end A265186

/-! ## A265186.P14772776674358250941

`A267621(abs(1-n))`
-/

namespace A265186.P14772776674358250941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267621 |1 - (n : ℤ)|.toNat

end

end A265186.P14772776674358250941

namespace A265186

/-- `A267621(abs(1-n))` -/
def P14772776674358250941.Spec : Prop :=
  ∀ n, P14772776674358250941.a n = A265186 n

end A265186

/-! ## A265186.P7609644549800119519

`1-char[A133128(n)+1]`
-/

namespace A265186.P7609644549800119519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133128 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A265186.P7609644549800119519

namespace A265186

/-- `1-char[A133128(n)+1]` -/
def P7609644549800119519.Spec : Prop :=
  ∀ n, P7609644549800119519.a n = A265186 n

end A265186

/-! ## A265186.P3815304365288125143

`1-char[A008459(n)+2]`
-/

namespace A265186.P3815304365288125143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A265186.P3815304365288125143

namespace A265186

/-- `1-char[A008459(n)+2]` -/
def P3815304365288125143.Spec : Prop :=
  ∀ n, P3815304365288125143.a n = A265186 n

end A265186

/-! ## A265186.P13543302447441645780

`1-char[A082043(n)+2]`
-/

namespace A265186.P13543302447441645780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082043 n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A265186.P13543302447441645780

namespace A265186

/-- `1-char[A082043(n)+2]` -/
def P13543302447441645780.Spec : Prop :=
  ∀ n, P13543302447441645780.a n = A265186 n

end A265186

/-! ## A265186.P16678200434022384508

`1-char[A253909(n)+2]`
-/

namespace A265186.P16678200434022384508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253909 n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A265186.P16678200434022384508

namespace A265186

/-- `1-char[A253909(n)+2]` -/
def P16678200434022384508.Spec : Prop :=
  ∀ n, P16678200434022384508.a n = A265186 n

end A265186

/-! ## A265186.P11798789872947630850

`1-char[A005563(n)+3]`
-/

namespace A265186.P11798789872947630850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A265186.P11798789872947630850

namespace A265186

/-- `1-char[A005563(n)+3]` -/
def P11798789872947630850.Spec : Prop :=
  ∀ n, P11798789872947630850.a n = A265186 n

end A265186

/-! ## A265186.P16299776065427777846

`1-char[A267942(n+3)]`
-/

namespace A265186.P16299776065427777846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267942 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A265186.P16299776065427777846

namespace A265186

/-- `1-char[A267942(n+3)]` -/
def P16299776065427777846.Spec : Prop :=
  ∀ n, P16299776065427777846.a n = A265186 n

end A265186

/-! ## A265186.P12946263475715617190

`1-char[A027688(n)+n]`
-/

namespace A265186.P12946263475715617190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A265186.P12946263475715617190

namespace A265186

/-- `1-char[A027688(n)+n]` -/
def P12946263475715617190.Spec : Prop :=
  ∀ n, P12946263475715617190.a n = A265186 n

end A265186

/-! ## A265186.P12342199274354730595

`A267635((2*n)%(n+2))`
-/

namespace A265186.P12342199274354730595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 (2 * n % (n + 2))

end

end A265186.P12342199274354730595

namespace A265186

/-- `A267635((2*n)%(n+2))` -/
def P12342199274354730595.Spec : Prop :=
  ∀ n, P12342199274354730595.a n = A265186 n

end A265186

/-! ## A265186.P391358715906842729

`A263243(n-a(n-1))` with `a(0)=1`
-/

namespace A265186.P391358715906842729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A263243 ((n : ℤ) - a (n - 1)).toNat

end

end A265186.P391358715906842729

namespace A265186

/-- `A263243(n-a(n-1))` -/
def P391358715906842729.Spec : Prop :=
  ∀ n, P391358715906842729.a n = A265186 n

end A265186

/-! ## A265186.P5712940292810386058

`A267520(n-a(n-1))` with `a(0)=1`
-/

namespace A265186.P5712940292810386058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267520 ((n : ℤ) - a (n - 1)).toNat

end

end A265186.P5712940292810386058

namespace A265186

/-- `A267520(n-a(n-1))` -/
def P5712940292810386058.Spec : Prop :=
  ∀ n, P5712940292810386058.a n = A265186 n

end A265186

/-!
# A265187: Nonnegative m for which 2*floor(m^2/11) = floor(2*m^2/11).

The programs for A265187, the canonical program `A265187.P4262766928689560207` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265187 has offset 1).

The definition of A265187 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265187.P4262766928689560207

`a(n-1)+a(n-9)-a(n-10)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=5, a(5)=6, a(6)=7, a(7)=9, a(8)=10, a(9)=11`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A265187

/-- `a(n-1)+a(n-9)-a(n-10)` -/
def P4262766928689560207.Spec : Prop :=
  ∀ n, P4262766928689560207.a n = A265187 (n + 1)

theorem P4262766928689560207.correct : P4262766928689560207.Spec := by
  intro n
  simp only [A265187, Nat.add_sub_cancel]

end A265187

/-! ## A265187.P11346189235455718086

`n+floor(1/2+2*n/9)`
-/

namespace A265187.P11346189235455718086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + ⌊(1 : ℚ) / 2 + 2 * ((n : ℚ) / 9)⌋

end

end A265187.P11346189235455718086

namespace A265187

/-- `n+floor(1/2+2*n/9)` -/
def P11346189235455718086.Spec : Prop :=
  ∀ n, P11346189235455718086.a n = A265187 (n + 1)

end A265187

/-! ## A265187.P10074686412421643382

`floor(∑[floor(a(n-3))]/3)` with `a(0)=1, a(1)=4, a(2)=3, a(3)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A265187.P10074686412421643382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 3, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A265187.P10074686412421643382

namespace A265187

/-- `floor(∑[floor(a(n-3))]/3)` -/
def P10074686412421643382.Spec : Prop :=
  ∀ n, P10074686412421643382.a n = A265187 (n + 1)

end A265187

/-! ## A265187.P5971086048582807291

`comp[A299647(n+1)]`
-/

namespace A265187.P5971086048582807291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299647 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A265187.P5971086048582807291

namespace A265187

/-- `comp[A299647(n+1)]` -/
def P5971086048582807291.Spec : Prop :=
  ∀ n, (P5971086048582807291.a n : ℤ) = A265187 (n + 1)

end A265187

/-! ## A265187.P9655622326901287189

`comp[A028835(2*(n+1))+n]`
-/

namespace A265187.P9655622326901287189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (2 * (n + 1)) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A265187.P9655622326901287189

namespace A265187

/-- `comp[A028835(2*(n+1))+n]` -/
def P9655622326901287189.Spec : Prop :=
  ∀ n, (P9655622326901287189.a n : ℤ) = A265187 (n + 1)

end A265187

/-! ## A265187.P17774306794389198361

`comp[A005408(n)+comp[A047299(n+1)]]`
-/

namespace A265187.P17774306794389198361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A265187.P17774306794389198361

namespace A265187

/-- `comp[A005408(n)+comp[A047299(n+1)]]` -/
def P17774306794389198361.Spec : Prop :=
  ∀ n, (P17774306794389198361.a n : ℤ) = A265187 (n + 1)

end A265187

/-! ## A265187.P7238970945424682080

`A057367(A004523(2*n+1)+2*n+1)`
-/

namespace A265187.P7238970945424682080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057367 (A004523 (2 * n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A265187.P7238970945424682080

namespace A265187

/-- `A057367(A004523(2*n+1)+2*n+1)` -/
def P7238970945424682080.Spec : Prop :=
  ∀ n, P7238970945424682080.a n = A265187 (n + 1)

end A265187

/-! ## A265187.P6341473975234504858

`A002264(A004773(2*n+1)+n)`
-/

namespace A265187.P6341473975234504858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A004773 (2 * n + 1) + (n : ℤ)).toNat

end

end A265187.P6341473975234504858

namespace A265187

/-- `A002264(A004773(2*n+1)+n)` -/
def P6341473975234504858.Spec : Prop :=
  ∀ n, P6341473975234504858.a n = A265187 (n + 1)

end A265187

/-! ## A265187.P6095645370133492824

`A002264(A010761(2*n+1)+2*n+1)`
-/

namespace A265187.P6095645370133492824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A010761 (2 * n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A265187.P6095645370133492824

namespace A265187

/-- `A002264(A010761(2*n+1)+2*n+1)` -/
def P6095645370133492824.Spec : Prop :=
  ∀ n, P6095645370133492824.a n = A265187 (n + 1)

end A265187

/-! ## A265187.P5778303487521774886

`A002264(A005408(2*n)-A002264(n+1))`
-/

namespace A265187.P5778303487521774886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A005408 (2 * n) - A002264 (n + 1)).toNat

end

end A265187.P5778303487521774886

namespace A265187

/-- `A002264(A005408(2*n)-A002264(n+1))` -/
def P5778303487521774886.Spec : Prop :=
  ∀ n, P5778303487521774886.a n = A265187 (n + 1)

end A265187

/-! ## A265187.P14591158123064566121

`A311816(n)%A008486(n)`
-/

namespace A265187.P14591158123064566121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311816 n) (A008486 n)

end

end A265187.P14591158123064566121

namespace A265187

/-- `A311816(n)%A008486(n)` -/
def P14591158123064566121.Spec : Prop :=
  ∀ n, P14591158123064566121.a n = A265187 (n + 1)

end A265187

/-! ## A265187.P15906498934011827031

`A057367(A010761(2*(2*n+1)))`
-/

namespace A265187.P15906498934011827031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057367 (A010761 (2 * (2 * n + 1))).toNat

end

end A265187.P15906498934011827031

namespace A265187

/-- `A057367(A010761(2*(2*n+1)))` -/
def P15906498934011827031.Spec : Prop :=
  ∀ n, P15906498934011827031.a n = A265187 (n + 1)

end A265187

/-! ## A265187.P5944183110656753617

`A314218(n)%A312901(n)`
-/

namespace A265187.P5944183110656753617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A314218 n) (A312901 n)

end

end A265187.P5944183110656753617

namespace A265187

/-- `A314218(n)%A312901(n)` -/
def P5944183110656753617.Spec : Prop :=
  ∀ n, P5944183110656753617.a n = A265187 (n + 1)

end A265187

/-! ## A265187.P2069317103943531817

`A315538(n)%A314710(n)`
-/

namespace A265187.P2069317103943531817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A315538 n) (A314710 n)

end

end A265187.P2069317103943531817

namespace A265187

/-- `A315538(n)%A314710(n)` -/
def P2069317103943531817.Spec : Prop :=
  ∀ n, P2069317103943531817.a n = A265187 (n + 1)

end A265187

/-! ## A265187.P12399733093924671803

`A008589(n)%A315706(n)`
-/

namespace A265187.P12399733093924671803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008589 n) (A315706 n)

end

end A265187.P12399733093924671803

namespace A265187

/-- `A008589(n)%A315706(n)` -/
def P12399733093924671803.Spec : Prop :=
  ∀ n, P12399733093924671803.a n = A265187 (n + 1)

end A265187

/-! ## A265187.P17266946706732489016

`A260160(A047529(2*n+1)+2*n)`
-/

namespace A265187.P17266946706732489016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260160 (A047529 (2 * n + 1) + (2 * n : ℤ)).toNat

end

end A265187.P17266946706732489016

namespace A265187

/-- `A260160(A047529(2*n+1)+2*n)` -/
def P17266946706732489016.Spec : Prop :=
  ∀ n, P17266946706732489016.a n = A265187 (n + 1)

end A265187

/-! ## A265187.P4397497582781674732

`A343609(A017437(n))`
-/

namespace A265187.P4397497582781674732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A017437 n).toNat

end

end A265187.P4397497582781674732

namespace A265187

/-- `A343609(A017437(n))` -/
def P4397497582781674732.Spec : Prop :=
  ∀ n, P4397497582781674732.a n = A265187 (n + 1)

end A265187

/-! ## A265187.P17194654757102559959

`round(log2(A094975(n)))`
-/

namespace A265187.P17194654757102559959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A094975 n : ℝ))

end

end A265187.P17194654757102559959

namespace A265187

/-- `round(log2(A094975(n)))` -/
def P17194654757102559959.Spec : Prop :=
  ∀ n, P17194654757102559959.a n = A265187 (n + 1)

end A265187

/-!
# A265188: Nonnegative m for which 3*floor(m^2/11) = floor(3*m^2/11).

The programs for A265188, the canonical program `A265188.P10025752816625158049` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265188 has offset 1).

The definition of A265188 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265188.P10025752816625158049

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=6, a(4)=10, a(5)=11`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A265188

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P10025752816625158049.Spec : Prop :=
  ∀ n, P10025752816625158049.a n = A265188 (n + 1)

theorem P10025752816625158049.correct : P10025752816625158049.Spec := by
  intro n
  simp only [A265188, Nat.add_sub_cancel]

end A265188

/-! ## A265188.P12444334432147456612

`3*round(2*n/5)+n`
-/

namespace A265188.P12444334432147456612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.roundAway (2 * ((n : ℚ) / 5)) + (n : ℤ)

end

end A265188.P12444334432147456612

namespace A265188

/-- `3*round(2*n/5)+n` -/
def P12444334432147456612.Spec : Prop :=
  ∀ n, P12444334432147456612.a n = A265188 (n + 1)

end A265188

/-! ## A265188.P8122631841228058525

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=1, a(4)=4, a(5)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A265188.P8122631841228058525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 1, 4, 1] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265188.P8122631841228058525

namespace A265188

/-- `∑[floor(a(n-5))]` -/
def P8122631841228058525.Spec : Prop :=
  ∀ n, (P8122631841228058525.a n : ℤ) = A265188 (n + 1)

end A265188

/-! ## A265188.P6238417840786196922

`∑[gcd(4, a(n-5))]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=1, a(4)=4, a(5)=1`
-/

namespace A265188.P6238417840786196922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 1, 4, 1] fun n f1 =>
  Nat.gcd 4 (f1 (n - 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265188.P6238417840786196922

namespace A265188

/-- `∑[gcd(4, a(n-5))]` -/
def P6238417840786196922.Spec : Prop :=
  ∀ n, (P6238417840786196922.a n : ℤ) = A265188 (n + 1)

end A265188

/-! ## A265188.P15840457037075777691

`∑[a(n-5)%5]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=1, a(4)=4, a(5)=1`
-/

namespace A265188.P15840457037075777691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 1, 4, 1] fun n f1 =>
  f1 (n - 5) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265188.P15840457037075777691

namespace A265188

/-- `∑[a(n-5)%5]` -/
def P15840457037075777691.Spec : Prop :=
  ∀ n, (P15840457037075777691.a n : ℤ) = A265188 (n + 1)

end A265188

/-! ## A265188.P8871070651758912089

`∑[a(n-5)^a(n-1)]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=1, a(4)=4, a(5)=1`
-/

namespace A265188.P8871070651758912089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 1, 4, 1] fun n f1 =>
  f1 (n - 5) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265188.P8871070651758912089

namespace A265188

/-- `∑[a(n-5)^a(n-1)]` -/
def P8871070651758912089.Spec : Prop :=
  ∀ n, (P8871070651758912089.a n : ℤ) = A265188 (n + 1)

end A265188

/-! ## A265188.P15157646036571214809

`eq[A289122(n+1), A289122(n)]`
-/

namespace A265188.P15157646036571214809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A265188.P15157646036571214809

namespace A265188

/-- `eq[A289122(n+1), A289122(n)]` -/
def P15157646036571214809.Spec : Prop :=
  ∀ n, (P15157646036571214809.a n : ℤ) = A265188 (n + 1)

end A265188

/-! ## A265188.P3145716897625841629

`A023443(A047534(2*(n+1))-n)`
-/

namespace A265188.P3145716897625841629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A047534 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A265188.P3145716897625841629

namespace A265188

/-- `A023443(A047534(2*(n+1))-n)` -/
def P3145716897625841629.Spec : Prop :=
  ∀ n, P3145716897625841629.a n = A265188 (n + 1)

end A265188

/-! ## A265188.P13751629441058066363

`A008598(n)%A314840(n)`
-/

namespace A265188.P13751629441058066363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008598 n) (A314840 n)

end

end A265188.P13751629441058066363

namespace A265188

/-- `A008598(n)%A314840(n)` -/
def P13751629441058066363.Spec : Prop :=
  ∀ n, P13751629441058066363.a n = A265188 (n + 1)

end A265188

/-! ## A265188.P13410359934889394729

`A008589(n)%A316026(n)`
-/

namespace A265188.P13410359934889394729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008589 n) (A316026 n)

end

end A265188.P13410359934889394729

namespace A265188

/-- `A008589(n)%A316026(n)` -/
def P13410359934889394729.Spec : Prop :=
  ∀ n, P13410359934889394729.a n = A265188 (n + 1)

end A265188

/-! ## A265188.P12605087630065158118

`A008601(n)%A315525(n)`
-/

namespace A265188.P12605087630065158118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008601 n) (A315525 n)

end

end A265188.P12605087630065158118

namespace A265188

/-- `A008601(n)%A315525(n)` -/
def P12605087630065158118.Spec : Prop :=
  ∀ n, P12605087630065158118.a n = A265188 (n + 1)

end A265188

/-! ## A265188.P7436079624453585861

`eq[A310164(n), A310192(n)]`
-/

namespace A265188.P7436079624453585861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310192 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A265188.P7436079624453585861

namespace A265188

/-- `eq[A310164(n), A310192(n)]` -/
def P7436079624453585861.Spec : Prop :=
  ∀ n, (P7436079624453585861.a n : ℤ) = A265188 (n + 1)

end A265188

/-! ## A265188.P13633687299568971859

`lt[A020639(A312902(n)), 3]`
-/

namespace A265188.P13633687299568971859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A312902 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A265188.P13633687299568971859

namespace A265188

/-- `lt[A020639(A312902(n)), 3]` -/
def P13633687299568971859.Spec : Prop :=
  ∀ n, (P13633687299568971859.a n : ℤ) = A265188 (n + 1)

end A265188

/-! ## A265188.P12563699605525965775

`eq[A311347(n), A312902(n)]`
-/

namespace A265188.P12563699605525965775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311347 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312902 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A265188.P12563699605525965775

namespace A265188

/-- `eq[A311347(n), A312902(n)]` -/
def P12563699605525965775.Spec : Prop :=
  ∀ n, (P12563699605525965775.a n : ℤ) = A265188 (n + 1)

end A265188

/-! ## A265188.P5901784844851435516

`lt[A020639(A313281(n)), 3]`
-/

namespace A265188.P5901784844851435516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A313281 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A265188.P5901784844851435516

namespace A265188

/-- `lt[A020639(A313281(n)), 3]` -/
def P5901784844851435516.Spec : Prop :=
  ∀ n, (P5901784844851435516.a n : ℤ) = A265188 (n + 1)

end A265188

/-! ## A265188.P7721720317435479626

`lt[A020639(A311804(2*n)), 3]`
-/

namespace A265188.P7721720317435479626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A311804 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A265188.P7721720317435479626

namespace A265188

/-- `lt[A020639(A311804(2*n)), 3]` -/
def P7721720317435479626.Spec : Prop :=
  ∀ n, (P7721720317435479626.a n : ℤ) = A265188 (n + 1)

end A265188

/-! ## A265188.P14237534073898372137

`A196279(A141694(n))`
-/

namespace A265188.P14237534073898372137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196279 (A141694 n).toNat

end

end A265188.P14237534073898372137

namespace A265188

/-- `A196279(A141694(n))` -/
def P14237534073898372137.Spec : Prop :=
  ∀ n, P14237534073898372137.a n = A265188 (n + 1)

end A265188

/-!
# A265189: Soddy circles: the two circles tangent to each of three mutually tangent circles.

The programs for A265189, there is no canonical definition to state claims against.
-/

/-! ## A265189.P3631129625610484964

`A018300(xor(3, A131260(n+1)))`
-/

namespace A265189.P3631129625610484964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018300 (Int.xor 3 (A131260 (n + 1))).toNat

end

end A265189.P3631129625610484964

/-!
# A265190: Number of nX3 arrays containing 3 copies of 0..n-1 with no equal horizontal or antidiagonal neighbors and new values introduced sequentially from 0.

The programs for A265190, there is no canonical definition to state claims against.
-/

/-! ## A265190.P2262861537235593870

`A265192(∑[n+3]+1)`
-/

namespace A265190.P2262861537235593870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265192 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265190.P2262861537235593870

/-! ## A265190.P1199845264595057671

`A265192(A034856(n+2))+A000007(2*(n+2))`
-/

namespace A265190.P1199845264595057671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265192 (A034856 (n + 2)).toNat + A000007 (2 * (n + 2))

end

end A265190.P1199845264595057671

/-!
# A265191: Number of nX4 arrays of permutations of 4 copies of 0..n-1 with no equal horizontal or antidiagonal neighbors and new values introduced sequentially from 0.

The programs for A265191, there is no canonical definition to state claims against.
-/

/-! ## A265191.P4098302478887765317

`A265192(A141214(n+1))`
-/

namespace A265191.P4098302478887765317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265192 (A141214 (n + 1)).toNat

end

end A265191.P4098302478887765317

/-! ## A265191.P3169053436608236563

`A265192(A027379(n+2))`
-/

namespace A265191.P3169053436608236563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265192 (A027379 (n + 2)).toNat

end

end A265191.P3169053436608236563

/-! ## A265191.P15769570697678141359

`A265192(A055998(n+2))`
-/

namespace A265191.P15769570697678141359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265192 (A055998 (n + 2)).toNat

end

end A265191.P15769570697678141359

/-!
# A265192: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with no equal horizontal or antidiagonal neighbors and new values introduced sequentially from 0.

The programs for A265192, there is no canonical definition to state claims against.
-/

/-! ## A265192.P7323679708719897846

`A320353(n)%A002110(A097805(n))`
-/

namespace A265192.P7323679708719897846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320353 n) (A002110 (A097805 n).toNat)

end

end A265192.P7323679708719897846

/-! ## A265192.P10581638498018219000

`and(A345247(A293724(n)), A347306(n+1))`
-/

namespace A265192.P10581638498018219000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A345247 (A293724 n).toNat) (A347306 (n + 1))

end

end A265192.P10581638498018219000

/-! ## A265192.P7983760568088488687

`and(A187186(A263484(3*n+4)), A269945(n))`
-/

namespace A265192.P7983760568088488687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A187186 (A263484 (3 * n + 4)).toNat) (A269945 n)

end

end A265192.P7983760568088488687

/-! ## A265192.P2064700314435549404

`A116488(lcm(n+1, ceil(2^(n-1))))`
-/

namespace A265192.P2064700314435549404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116488 (Int.lcm (n + 1 : ℤ) ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉)

end

end A265192.P2064700314435549404

/-! ## A265192.P7275904597649762551

`A240499(A187556(n))`
-/

namespace A265192.P7275904597649762551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240499 (A187556 n).toNat

end

end A265192.P7275904597649762551

/-!
# A265193: Number of 3Xn arrays containing n copies of 0..3-1 with no equal horizontal or antidiagonal neighbors and new values introduced sequentially from 0.

The programs for A265193, there is no canonical definition to state claims against.
-/

/-! ## A265193.P536290760186039022

`A265192(∑[n+2]+4)`
-/

namespace A265193.P536290760186039022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265192 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A265193.P536290760186039022

/-! ## A265193.P12180207955751947038

`record[A265192(A152950(n+1))]`
-/

namespace A265193.P12180207955751947038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265192 (A152950 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265193.P12180207955751947038

/-! ## A265193.P12239474575172213807

`record[A265192(n+5)%A094527(n+4)]`
-/

namespace A265193.P12239474575172213807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265192 (n + 5)) (A094527 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265193.P12239474575172213807

/-! ## A265193.P534854128980024860

`A265192(A167614(n+1))+A025437(n)`
-/

namespace A265193.P534854128980024860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265192 (A167614 (n + 1)).toNat + A025437 n

end

end A265193.P534854128980024860

/-! ## A265193.P2765695642101586425

`A265192(A167614(n+1))+A033665(n)`
-/

namespace A265193.P2765695642101586425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265192 (A167614 (n + 1)).toNat + A033665 n

end

end A265193.P2765695642101586425

/-!
# A265194: Number of 4Xn arrays containing n copies of 0..4-1 with no equal horizontal or antidiagonal neighbors and new values introduced sequentially from 0.

The programs for A265194, there is no canonical definition to state claims against.
-/

/-! ## A265194.P4894456533957446751

`A265192(∑[n+3]+7)`
-/

namespace A265194.P4894456533957446751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265192 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A265194.P4894456533957446751

/-! ## A265194.P8962835068773952606

`record[A265192(n+5)/A049444(n)]`
-/

namespace A265194.P8962835068773952606
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265192 (n + 5) : ℚ) / (A049444 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265194.P8962835068773952606

/-! ## A265194.P6299250289853751412

`A265192(A167614(n+2)+1)%A197952(n+1)`
-/

namespace A265194.P6299250289853751412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265192 (A167614 (n + 2) + 1).toNat) (A197952 (n + 1))

end

end A265194.P6299250289853751412

/-! ## A265194.P12740817677163151617

`A269250(3*(n+1))+A265192(A167614(n+2)+1)`
-/

namespace A265194.P12740817677163151617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269250 (3 * (n + 1)) + A265192 (A167614 (n + 2) + 1).toNat

end

end A265194.P12740817677163151617

/-!
# A265195: Number of 5Xn arrays containing n copies of 0..5-1 with no equal horizontal or antidiagonal neighbors and new values introduced sequentially from 0.

The programs for A265195, there is no canonical definition to state claims against.
-/

/-! ## A265195.P7937405226245386011

`record[A265192(∑[n]+5)]`
-/

namespace A265195.P7937405226245386011
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265192 (∑ j ∈ Finset.range (n + 1), f2 j + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265195.P7937405226245386011

/-! ## A265195.P16739168571508923661

`A265192(A167499(n+3))`
-/

namespace A265195.P16739168571508923661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265192 (A167499 (n + 3)).toNat

end

end A265195.P16739168571508923661

/-! ## A265195.P4939070659795025405

`A265192(A155212(n)+13)`
-/

namespace A265195.P4939070659795025405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265192 (A155212 n + 13).toNat

end

end A265195.P4939070659795025405

/-!
# A265196: Irregular triangle read by rows, where T(n, k) is the coefficient of degree k of the polynomial Product_{j=0..n} (1-x^(3*j+1))*(1-x^(3*j+2)).

The programs for A265196, there is no canonical definition to state claims against.
-/

/-! ## A265196.P12595670472663194256

`A038498(lt[A175056(2*n+3), 2*n])`
-/

namespace A265196.P12595670472663194256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175056 (2 * n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038498 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A265196.P12595670472663194256

/-!
# A265197: Magic sums of 3 X 3 semimagic squares composed of triangular numbers.

The programs for A265197, there is no canonical definition to state claims against.
-/

/-! ## A265197.P12773630876442637935

`∪[A269060(n+1), floor(A269297(n+1)/8)]`
-/

namespace A265197.P12773630876442637935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A269297 (n + 1) : ℚ) / 8⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A265197.P12773630876442637935

/-! ## A265197.P372764578669148693

`floor(A269297(n+1)/8)`
-/

namespace A265197.P372764578669148693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A269297 (n + 1) : ℚ) / 8⌋

end

end A265197.P372764578669148693

/-! ## A265197.P8945382340188907022

`∏{d}[round(A269297(n+1)/8), A014963(#)]`
-/

namespace A265197.P8945382340188907022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A269297 (n + 1) : ℚ) / 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A265197.P8945382340188907022

/-! ## A265197.P18338025608051658231

`A007318(C(2, n))*round(A269297(n+1)/8)`
-/

namespace A265197.P18338025608051658231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * SequenceMachineLib.roundAway ((A269297 (n + 1) : ℚ) / 8)

end

end A265197.P18338025608051658231

/-! ## A265197.P9947764678985350985

`A008683(4*(n+1))+round(A269297(n+1)/8)`
-/

namespace A265197.P9947764678985350985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) + SequenceMachineLib.roundAway ((A269297 (n + 1) : ℚ) / 8)

end

end A265197.P9947764678985350985

