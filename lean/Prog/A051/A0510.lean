import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B002.C006
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
# A051000: Sum of cubes of odd divisors of n.

The programs for A051000, the canonical program `A051000.P12716278985122959744` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051000 has offset 1).

The definition of A051000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051000.P191073044020140355

`∑{d}[A000265(n+1), #^3]`
-/

namespace A051000.P191073044020140355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 3

end

end A051000.P191073044020140355

namespace A051000

/-- `∑{d}[A000265(n+1), #^3]` -/
def P191073044020140355.Spec : Prop :=
  ∀ n, (P191073044020140355.a n : ℤ) = A051000 (n + 1)

end A051000

/-! ## A051000.P2815854723559447262

`A001158((n+1)/2^val(n+1, 2))`
-/

namespace A051000.P2815854723559447262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A051000.P2815854723559447262

namespace A051000

/-- `A001158((n+1)/2^val(n+1, 2))` -/
def P2815854723559447262.Spec : Prop :=
  ∀ n, P2815854723559447262.a n = A051000 (n + 1)

end A051000

/-! ## A051000.P14523971883765852260

`A007331((n+1)/2^val(n+1, 2))`
-/

namespace A051000.P14523971883765852260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007331 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A051000.P14523971883765852260

namespace A051000

/-- `A007331((n+1)/2^val(n+1, 2))` -/
def P14523971883765852260.Spec : Prop :=
  ∀ n, P14523971883765852260.a n = A051000 (n + 1)

end A051000

/-! ## A051000.P14248921670996193186

`A078307((n+1)/2^val(n+1, 2))`
-/

namespace A051000.P14248921670996193186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078307 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A051000.P14248921670996193186

namespace A051000

/-- `A078307((n+1)/2^val(n+1, 2))` -/
def P14248921670996193186.Spec : Prop :=
  ∀ n, P14248921670996193186.a n = A051000 (n + 1)

end A051000

/-! ## A051000.P12716278985122959744

`A001158((n+1)/xor(n, or(n, n+1)))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A051000

/-- `A001158((n+1)/xor(n, or(n, n+1)))` -/
def P12716278985122959744.Spec : Prop :=
  ∀ n, P12716278985122959744.a n = A051000 (n + 1)

theorem P12716278985122959744.correct : P12716278985122959744.Spec := by
  intro n
  simp only [A051000, Nat.add_sub_cancel]

end A051000

/-! ## A051000.P228759896648643191

`A008457((n+1)*2^-val(n+1, 2))`
-/

namespace A051000.P228759896648643191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008457 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (2 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ))).toNat

end

end A051000.P228759896648643191

namespace A051000

/-- `A008457((n+1)*2^-val(n+1, 2))` -/
def P228759896648643191.Spec : Prop :=
  ∀ n, P228759896648643191.a n = A051000 (n + 1)

end A051000

/-! ## A051000.P11588133497879122110

`A008457(2^(log2(n+1)-val(n+1, 2)))`
-/

namespace A051000.P11588133497879122110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008457 (SequenceMachineLib.roundAway ((2 : ℝ) ^ (Real.logb 2 (n + 1 : ℝ) - (SequenceMachineLib.valuation (n + 1) 2 : ℝ)))).toNat

end

end A051000.P11588133497879122110

namespace A051000

/-- `A008457(2^(log2(n+1)-val(n+1, 2)))` -/
def P11588133497879122110.Spec : Prop :=
  ∀ n, P11588133497879122110.a n = A051000 (n + 1)

end A051000

/-! ## A051000.P9545699076109885882

`A007331((n+1)/and(n+1, -(n+1)))`
-/

namespace A051000.P9545699076109885882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007331 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A051000.P9545699076109885882

namespace A051000

/-- `A007331((n+1)/and(n+1, -(n+1)))` -/
def P9545699076109885882.Spec : Prop :=
  ∀ n, P9545699076109885882.a n = A051000 (n + 1)

end A051000

/-! ## A051000.P11276647204133830249

`A008457((n+1)/and(n+1, -(n+1)))`
-/

namespace A051000.P11276647204133830249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008457 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A051000.P11276647204133830249

namespace A051000

/-- `A008457((n+1)/and(n+1, -(n+1)))` -/
def P11276647204133830249.Spec : Prop :=
  ∀ n, P11276647204133830249.a n = A051000 (n + 1)

end A051000

/-! ## A051000.P64928769014897641

`A138503((n+1)/and(n+1, -(n+1)))`
-/

namespace A051000.P64928769014897641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138503 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A051000.P64928769014897641

namespace A051000

/-- `A138503((n+1)/and(n+1, -(n+1)))` -/
def P64928769014897641.Spec : Prop :=
  ∀ n, P64928769014897641.a n = A051000 (n + 1)

end A051000

/-! ## A051000.P16580643677151655406

`A045823(A025480(n))`
-/

namespace A051000.P16580643677151655406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045823 (A025480 n).toNat

end

end A051000.P16580643677151655406

namespace A051000

/-- `A045823(A025480(n))` -/
def P16580643677151655406.Spec : Prop :=
  ∀ n, P16580643677151655406.a n = A051000 (n + 1)

end A051000

/-! ## A051000.P2921023617955320946

`A001158(A000265(n+1))`
-/

namespace A051000.P2921023617955320946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (A000265 (n + 1)).toNat

end

end A051000.P2921023617955320946

namespace A051000

/-- `A001158(A000265(n+1))` -/
def P2921023617955320946.Spec : Prop :=
  ∀ n, P2921023617955320946.a n = A051000 (n + 1)

end A051000

/-! ## A051000.P10729425139451229869

`A001158(A153733(n)+1)`
-/

namespace A051000.P10729425139451229869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (A153733 n + 1).toNat

end

end A051000.P10729425139451229869

namespace A051000

/-- `A001158(A153733(n)+1)` -/
def P10729425139451229869.Spec : Prop :=
  ∀ n, P10729425139451229869.a n = A051000 (n + 1)

end A051000

/-! ## A051000.P287061580298171065

`A008457(A000265(2*(n+1)))`
-/

namespace A051000.P287061580298171065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008457 (A000265 (2 * (n + 1))).toNat

end

end A051000.P287061580298171065

namespace A051000

/-- `A008457(A000265(2*(n+1)))` -/
def P287061580298171065.Spec : Prop :=
  ∀ n, P287061580298171065.a n = A051000 (n + 1)

end A051000

/-! ## A051000.P15377091326751883768

`A050454(n+1)+A050451(n+1)`
-/

namespace A051000.P15377091326751883768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050454 (n + 1) + A050451 (n + 1)

end

end A051000.P15377091326751883768

namespace A051000

/-- `A050454(n+1)+A050451(n+1)` -/
def P15377091326751883768.Spec : Prop :=
  ∀ n, P15377091326751883768.a n = A051000 (n + 1)

theorem P15377091326751883768.correct : P15377091326751883768.Spec := by
  intro n
  simp only [A051000, Nat.add_sub_cancel, A051000.P15377091326751883768.a, A051000.P12716278985122959744.a, A001158, A001158.P5142498491642488153.f1, A001158.P5142498491642488153.a, A050451, A050451.P9220370011251437069.a, A050454, A050454.P6949249148858722665.f1, A050454.P6949249148858722665.a, A000578, A000578.P12162961755414704816.a, A062828, A062828.P6719252676437091402.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051000

/-! ## A051000.P14849002412387048989

`A001158((n+1)/A006519(n+1))`
-/

namespace A051000.P14849002412387048989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A051000.P14849002412387048989

namespace A051000

/-- `A001158((n+1)/A006519(n+1))` -/
def P14849002412387048989.Spec : Prop :=
  ∀ n, P14849002412387048989.a n = A051000 (n + 1)

end A051000

/-! ## A051000.P3653838360286546204

`A007331((n+1)/A006519(n+1))`
-/

namespace A051000.P3653838360286546204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007331 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A051000.P3653838360286546204

namespace A051000

/-- `A007331((n+1)/A006519(n+1))` -/
def P3653838360286546204.Spec : Prop :=
  ∀ n, P3653838360286546204.a n = A051000 (n + 1)

end A051000

/-! ## A051000.P10857091184585261791

`A138503((n+1)/A006519(n+1))`
-/

namespace A051000.P10857091184585261791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138503 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A051000.P10857091184585261791

namespace A051000

/-- `A138503((n+1)/A006519(n+1))` -/
def P10857091184585261791.Spec : Prop :=
  ∀ n, P10857091184585261791.a n = A051000 (n + 1)

end A051000

/-! ## A051000.P6653238470022955742

`A001158(n+1)/A318935(n+1)`
-/

namespace A051000.P6653238470022955742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001158 (n + 1) : ℚ) / (A318935 (n + 1) : ℚ)

end

end A051000.P6653238470022955742

namespace A051000

/-- `A001158(n+1)/A318935(n+1)` -/
def P6653238470022955742.Spec : Prop :=
  ∀ n, P6653238470022955742.a n = (A051000 (n + 1) : ℚ)

end A051000

/-! ## A051000.P13928432139991610981

`gcd(A001158(n+1), A004017(n+1))`
-/

namespace A051000.P13928432139991610981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001158 (n + 1)) (A004017 (n + 1))

end

end A051000.P13928432139991610981

namespace A051000

/-- `gcd(A001158(n+1), A004017(n+1))` -/
def P13928432139991610981.Spec : Prop :=
  ∀ n, (P13928432139991610981.a n : ℤ) = A051000 (n + 1)

end A051000

/-!
# A051001: Sum of 4th powers of odd divisors of n.

The programs for A051001, the canonical program `A051001.P2883852462470465960` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051001 has offset 1).

The definition of A051001 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A001159, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A051001.P2883852462470465960

`A001159(A000265(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A051001

/-- `A001159(A000265(n+1))` -/
def P2883852462470465960.Spec : Prop :=
  ∀ n, P2883852462470465960.a n = A051001 (n + 1)

theorem P2883852462470465960.correct : P2883852462470465960.Spec := by
  intro n
  simp only [A051001, Nat.add_sub_cancel]

end A051001

/-! ## A051001.P5587101283181839516

`∑{d}[(n+1)/and(n+1, -(n+1)), A000583(#)]`
-/

namespace A051001.P5587101283181839516
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000583 d

end

end A051001.P5587101283181839516

namespace A051001

/-- `∑{d}[(n+1)/and(n+1, -(n+1)), A000583(#)]` -/
def P5587101283181839516.Spec : Prop :=
  ∀ n, P5587101283181839516.a n = A051001 (n + 1)

end A051001

/-! ## A051001.P15918971723128452843

`A001159(A153733(n)+1)`
-/

namespace A051001.P15918971723128452843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001159 (A153733 n + 1).toNat

end

end A051001.P15918971723128452843

namespace A051001

/-- `A001159(A153733(n)+1)` -/
def P15918971723128452843.Spec : Prop :=
  ∀ n, P15918971723128452843.a n = A051001 (n + 1)

theorem P15918971723128452843.correct : P15918971723128452843.Spec := by
  intro n
  simp only [A051001, Nat.add_sub_cancel, A051001.P15918971723128452843.a, A051001.P2883852462470465960.a, A000265, A000265.P2772582252347773295.a, A001159, A001159.P9898895530264138649.f1, A001159.P9898895530264138649.a, A153733, A153733.P10755713114946739736.a, A003602, A003602.P7612175048291952394.a, A331739, A331739.P457850794578440847.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051001

/-! ## A051001.P1670223487393492078

`A285989(A153733(n)+1)`
-/

namespace A051001.P1670223487393492078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285989 (A153733 n + 1).toNat

end

end A051001.P1670223487393492078

namespace A051001

/-- `A285989(A153733(n)+1)` -/
def P1670223487393492078.Spec : Prop :=
  ∀ n, P1670223487393492078.a n = A051001 (n + 1)

end A051001

/-! ## A051001.P14412189046032498343

`∑{d}[A005408(A025480(n)), #²²]`
-/

namespace A051001.P14412189046032498343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A025480 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d ^ 2) ^ 2

end

end A051001.P14412189046032498343

namespace A051001

/-- `∑{d}[A005408(A025480(n)), #²²]` -/
def P14412189046032498343.Spec : Prop :=
  ∀ n, (P14412189046032498343.a n : ℤ) = A051001 (n + 1)

end A051001

/-! ## A051001.P10520850489093410782

`A050455(n+1)+A050448(n+1)`
-/

namespace A051001.P10520850489093410782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050455 (n + 1) + A050448 (n + 1)

end

end A051001.P10520850489093410782

namespace A051001

/-- `A050455(n+1)+A050448(n+1)` -/
def P10520850489093410782.Spec : Prop :=
  ∀ n, P10520850489093410782.a n = A051001 (n + 1)

theorem P10520850489093410782.correct : P10520850489093410782.Spec := by
  intro n
  simp only [A051001, Nat.add_sub_cancel, A051001.P10520850489093410782.a, A051001.P2883852462470465960.a, A000265, A000265.P2772582252347773295.a, A001159, A001159.P9898895530264138649.f1, A001159.P9898895530264138649.a, A050448, A050448.P12990945603469115476.a, A050455, A050455.P12046715105957438179.f1, A050455.P12046715105957438179.a, A003602, A003602.P7612175048291952394.a, A062828, A062828.P6719252676437091402.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051001

/-! ## A051001.P16655935778204160209

`A285989((n+1)/A006519(n+1))`
-/

namespace A051001.P16655935778204160209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285989 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A051001.P16655935778204160209

namespace A051001

/-- `A285989((n+1)/A006519(n+1))` -/
def P16655935778204160209.Spec : Prop :=
  ∀ n, P16655935778204160209.a n = A051001 (n + 1)

end A051001

/-! ## A051001.P3487767301379027686

`gcd(A001159(n+1), A279395(n+1))`
-/

namespace A051001.P3487767301379027686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001159 (n + 1)) (A279395 (n + 1))

end

end A051001.P3487767301379027686

namespace A051001

/-- `gcd(A001159(n+1), A279395(n+1))` -/
def P3487767301379027686.Spec : Prop :=
  ∀ n, (P3487767301379027686.a n : ℤ) = A051001 (n + 1)

end A051001

/-! ## A051001.P3196205922038872306

`gcd(A284900(n+1), A321560(n+1))`
-/

namespace A051001.P3196205922038872306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A284900 (n + 1)) (A321560 (n + 1))

end

end A051001.P3196205922038872306

namespace A051001

/-- `gcd(A284900(n+1), A321560(n+1))` -/
def P3196205922038872306.Spec : Prop :=
  ∀ n, (P3196205922038872306.a n : ℤ) = A051001 (n + 1)

end A051001

/-! ## A051001.P15016741987504219251

`∑{d}[A064989(n+1), A003961(#)²²]`
-/

namespace A051001.P15016741987504219251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A003961 d ^ 2) ^ 2

end

end A051001.P15016741987504219251

namespace A051001

/-- `∑{d}[A064989(n+1), A003961(#)²²]` -/
def P15016741987504219251.Spec : Prop :=
  ∀ n, P15016741987504219251.a n = A051001 (n + 1)

end A051001

/-! ## A051001.P1882677545559434195

`A050456(n+1)+2*A050455(n+1)`
-/

namespace A051001.P1882677545559434195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050456 (n + 1) + 2 * A050455 (n + 1)

end

end A051001.P1882677545559434195

namespace A051001

/-- `A050456(n+1)+2*A050455(n+1)` -/
def P1882677545559434195.Spec : Prop :=
  ∀ n, P1882677545559434195.a n = A051001 (n + 1)

theorem P1882677545559434195.correct : P1882677545559434195.Spec := by
  intro n
  simp only [A051001, Nat.add_sub_cancel, A051001.P1882677545559434195.a, A051001.P2883852462470465960.a, A000265, A000265.P2772582252347773295.a, A001159, A001159.P9898895530264138649.f1, A001159.P9898895530264138649.a, A050455, A050455.P12046715105957438179.f1, A050455.P12046715105957438179.a, A050456, A050456.P2703078225834932298.a, A003602, A003602.P7612175048291952394.a, A050448, A050448.P12990945603469115476.a, A062828, A062828.P6719252676437091402.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051001

/-! ## A051001.P13856912095764640906

`2*A050448(n+1)-A050456(n+1)`
-/

namespace A051001.P13856912095764640906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050448 (n + 1) - A050456 (n + 1)

end

end A051001.P13856912095764640906

namespace A051001

/-- `2*A050448(n+1)-A050456(n+1)` -/
def P13856912095764640906.Spec : Prop :=
  ∀ n, P13856912095764640906.a n = A051001 (n + 1)

theorem P13856912095764640906.correct : P13856912095764640906.Spec := by
  intro n
  simp only [A051001, Nat.add_sub_cancel, A051001.P13856912095764640906.a, A051001.P2883852462470465960.a, A000265, A000265.P2772582252347773295.a, A001159, A001159.P9898895530264138649.f1, A001159.P9898895530264138649.a, A050448, A050448.P12990945603469115476.a, A050456, A050456.P2703078225834932298.a, A003602, A003602.P7612175048291952394.a, A050455, A050455.P12046715105957438179.f1, A050455.P12046715105957438179.a, A062828, A062828.P6719252676437091402.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051001

/-! ## A051001.P6951034889881882583

`∑{d}[n+1, A138503(#)*A189393((n+1)/#)]`
-/

namespace A051001.P6951034889881882583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A138503 d * A189393 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A051001.P6951034889881882583

namespace A051001

/-- `∑{d}[n+1, A138503(#)*A189393((n+1)/#)]` -/
def P6951034889881882583.Spec : Prop :=
  ∀ n, P6951034889881882583.a n = A051001 (n + 1)

end A051001

/-! ## A051001.P8266415921515148641

`A285989(A326125(n+1)/∑{d}[2*(n+1), (n+1)%#])`
-/

namespace A051001.P8266415921515148641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285989 (SequenceMachineLib.roundAway ((A326125 (n + 1) : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), (n + 1) % d : ℕ) : ℚ))).toNat

end

end A051001.P8266415921515148641

namespace A051001

/-- `A285989(A326125(n+1)/∑{d}[2*(n+1), (n+1)%#])` -/
def P8266415921515148641.Spec : Prop :=
  ∀ n, P8266415921515148641.a n = A051001 (n + 1)

end A051001

/-! ## A051001.P17190972753157248278

`A284900(n+1)/A284900(A006519(n+1))`
-/

namespace A051001.P17190972753157248278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284900 (n + 1) : ℚ) / (A284900 (A006519 (n + 1)).toNat : ℚ)

end

end A051001.P17190972753157248278

namespace A051001

/-- `A284900(n+1)/A284900(A006519(n+1))` -/
def P17190972753157248278.Spec : Prop :=
  ∀ n, P17190972753157248278.a n = (A051001 (n + 1) : ℚ)

end A051001

/-! ## A051001.P2728978259694883262

`A285989(A326125(n+1)/A002131(n+1))`
-/

namespace A051001.P2728978259694883262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285989 (SequenceMachineLib.roundAway ((A326125 (n + 1) : ℚ) / (A002131 (n + 1) : ℚ))).toNat

end

end A051001.P2728978259694883262

namespace A051001

/-- `A285989(A326125(n+1)/A002131(n+1))` -/
def P2728978259694883262.Spec : Prop :=
  ∀ n, P2728978259694883262.a n = A051001 (n + 1)

end A051001

/-! ## A051001.P8723537509224217272

`∑{d}[n+1, (#*A000035(#))²²]`
-/

namespace A051001.P8723537509224217272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (((d : ℤ) * A000035 d) ^ 2) ^ 2

end

end A051001.P8723537509224217272

namespace A051001

/-- `∑{d}[n+1, (#*A000035(#))²²]` -/
def P8723537509224217272.Spec : Prop :=
  ∀ n, P8723537509224217272.a n = A051001 (n + 1)

end A051001

/-! ## A051001.P7990907712452516730

`∑{d}[A353412(2*(n+1)), #²²]`
-/

namespace A051001.P7990907712452516730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353412 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d ^ 2) ^ 2

end

end A051001.P7990907712452516730

namespace A051001

/-- `∑{d}[A353412(2*(n+1)), #²²]` -/
def P7990907712452516730.Spec : Prop :=
  ∀ n, (P7990907712452516730.a n : ℤ) = A051001 (n + 1)

end A051001

/-! ## A051001.P3707207017895656613

`A352032(2*(n+1))`
-/

namespace A051001.P3707207017895656613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352032 (2 * (n + 1))

end

end A051001.P3707207017895656613

namespace A051001

/-- `A352032(2*(n+1))` -/
def P3707207017895656613.Spec : Prop :=
  ∀ n, P3707207017895656613.a n = A051001 (n + 1)

end A051001

/-!
# A051002: Sum of 5th powers of odd divisors of n.

The programs for A051002, the canonical program `A051002.P11635871298119985317` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051002 has offset 1).

The definition of A051002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051002.P14702850210291798590

`A321544((n+1)/and(n+1, -(n+1)))`
-/

namespace A051002.P14702850210291798590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321544 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A051002.P14702850210291798590

namespace A051002

/-- `A321544((n+1)/and(n+1, -(n+1)))` -/
def P14702850210291798590.Spec : Prop :=
  ∀ n, P14702850210291798590.a n = A051002 (n + 1)

end A051002

/-! ## A051002.P7677027579364670863

`A001160(A000265(n+1))`
-/

namespace A051002.P7677027579364670863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001160 (A000265 (n + 1)).toNat

end

end A051002.P7677027579364670863

namespace A051002

/-- `A001160(A000265(n+1))` -/
def P7677027579364670863.Spec : Prop :=
  ∀ n, P7677027579364670863.a n = A051002 (n + 1)

end A051002

/-! ## A051002.P11635871298119985317

`A081864(A003602(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A051002

/-- `A081864(A003602(n+1))` -/
def P11635871298119985317.Spec : Prop :=
  ∀ n, P11635871298119985317.a n = A051002 (n + 1)

theorem P11635871298119985317.correct : P11635871298119985317.Spec := by
  intro n
  simp only [A051002, Nat.add_sub_cancel]

end A051002

/-! ## A051002.P7429045823094447070

`A081864(A025480(n)+1)`
-/

namespace A051002.P7429045823094447070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081864 (A025480 n + 1).toNat

end

end A051002.P7429045823094447070

namespace A051002

/-- `A081864(A025480(n)+1)` -/
def P7429045823094447070.Spec : Prop :=
  ∀ n, P7429045823094447070.a n = A051002 (n + 1)

end A051002

/-! ## A051002.P3722644335575964254

`A001160(A153733(n)+1)`
-/

namespace A051002.P3722644335575964254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001160 (A153733 n + 1).toNat

end

end A051002.P3722644335575964254

namespace A051002

/-- `A001160(A153733(n)+1)` -/
def P3722644335575964254.Spec : Prop :=
  ∀ n, P3722644335575964254.a n = A051002 (n + 1)

end A051002

/-! ## A051002.P18175748495639323757

`A096960(A153733(n)+1)`
-/

namespace A051002.P18175748495639323757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096960 (A153733 n + 1).toNat

end

end A051002.P18175748495639323757

namespace A051002

/-- `A096960(A153733(n)+1)` -/
def P18175748495639323757.Spec : Prop :=
  ∀ n, P18175748495639323757.a n = A051002 (n + 1)

end A051002

/-! ## A051002.P7311283814307345397

`A096960((n+1)/A006519(n+1))`
-/

namespace A051002.P7311283814307345397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A051002.P7311283814307345397

namespace A051002

/-- `A096960((n+1)/A006519(n+1))` -/
def P7311283814307345397.Spec : Prop :=
  ∀ n, P7311283814307345397.a n = A051002 (n + 1)

end A051002

/-! ## A051002.P16856486593944149696

`gcd(A001160(n+1), A096960(n+1))`
-/

namespace A051002.P16856486593944149696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001160 (n + 1)) (A096960 (n + 1))

end

end A051002.P16856486593944149696

namespace A051002

/-- `gcd(A001160(n+1), A096960(n+1))` -/
def P16856486593944149696.Spec : Prop :=
  ∀ n, (P16856486593944149696.a n : ℤ) = A051002 (n + 1)

end A051002

/-! ## A051002.P4140309069617547928

`gcd(A284926(n+1), A321561(n+1))`
-/

namespace A051002.P4140309069617547928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A284926 (n + 1)) (A321561 (n + 1))

end

end A051002.P4140309069617547928

namespace A051002

/-- `gcd(A284926(n+1), A321561(n+1))` -/
def P4140309069617547928.Spec : Prop :=
  ∀ n, (P4140309069617547928.a n : ℤ) = A051002 (n + 1)

end A051002

/-! ## A051002.P16000464807679218757

`A096960(A326125(n+1)/∑{d}[2*(n+1), (n+1)%#])`
-/

namespace A051002.P16000464807679218757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096960 (SequenceMachineLib.roundAway ((A326125 (n + 1) : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), (n + 1) % d : ℕ) : ℚ))).toNat

end

end A051002.P16000464807679218757

namespace A051002

/-- `A096960(A326125(n+1)/∑{d}[2*(n+1), (n+1)%#])` -/
def P16000464807679218757.Spec : Prop :=
  ∀ n, P16000464807679218757.a n = A051002 (n + 1)

end A051002

/-! ## A051002.P4800348957287117295

`A096960(A326125(n+1)/A002131(n+1))`
-/

namespace A051002.P4800348957287117295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096960 (SequenceMachineLib.roundAway ((A326125 (n + 1) : ℚ) / (A002131 (n + 1) : ℚ))).toNat

end

end A051002.P4800348957287117295

namespace A051002

/-- `A096960(A326125(n+1)/A002131(n+1))` -/
def P4800348957287117295.Spec : Prop :=
  ∀ n, P4800348957287117295.a n = A051002 (n + 1)

end A051002

/-! ## A051002.P8742613227722505880

`A352033(2*(n+1))`
-/

namespace A051002.P8742613227722505880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352033 (2 * (n + 1))

end

end A051002.P8742613227722505880

namespace A051002

/-- `A352033(2*(n+1))` -/
def P8742613227722505880.Spec : Prop :=
  ∀ n, P8742613227722505880.a n = A051002 (n + 1)

end A051002

/-! ## A051002.P10561808342152462054

`gcd(A321544(2*(n+1)), A321544(n+1))`
-/

namespace A051002.P10561808342152462054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A321544 (2 * (n + 1))) (A321544 (n + 1))

end

end A051002.P10561808342152462054

namespace A051002

/-- `gcd(A321544(2*(n+1)), A321544(n+1))` -/
def P10561808342152462054.Spec : Prop :=
  ∀ n, (P10561808342152462054.a n : ℤ) = A051002 (n + 1)

end A051002

/-!
# A051003: Beastly (or hateful) numbers: numbers containing the string 666 in their decimal expansion.

The programs for A051003, there is no canonical definition to state claims against.
-/

/-! ## A051003.P7695000481514307282

`A138563(n+1)-A109010(A289789(n))`
-/

namespace A051003.P7695000481514307282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138563 (n + 1) - A109010 (A289789 n).toNat

end

end A051003.P7695000481514307282

/-! ## A051003.P5473063569451435668

`A138563(n+1)-A109010(A067863(n+1))`
-/

namespace A051003.P5473063569451435668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138563 (n + 1) - A109010 (A067863 (n + 1)).toNat

end

end A051003.P5473063569451435668

/-! ## A051003.P13040074428327877704

`A138563(n+1)-A099886(A099882(n+1))`
-/

namespace A051003.P13040074428327877704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138563 (n + 1) - A099886 (A099882 (n + 1)).toNat

end

end A051003.P13040074428327877704

/-!
# A051004: Numbers divisible both by their individual digits and by the sum of their digits.

The programs for A051004, there is no canonical definition to state claims against.
-/

/-! ## A051004.P11044603250726230255

`∩[A002796(n+1), A217973(n+1)]`
-/

namespace A051004.P11044603250726230255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051004.P11044603250726230255

/-! ## A051004.P16456987312875164890

`∩[A034838(n+1), A217973(n+1)]`
-/

namespace A051004.P16456987312875164890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051004.P16456987312875164890

/-! ## A051004.P15199911898827605896

`∩[A005349(n+1), A034838(n+1)]`
-/

namespace A051004.P15199911898827605896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051004.P15199911898827605896

/-! ## A051004.P1784892440344848326

`∩[A034838(n+1), A356349(n+1)]`
-/

namespace A051004.P1784892440344848326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051004.P1784892440344848326

/-! ## A051004.P5605185165493350838

`∩[A034838(n+1), A082516(n)+a(n-1)]` with `a(0)=1`
-/

namespace A051004.P5605185165493350838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A082516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051004.P5605185165493350838

/-! ## A051004.P16037733078818659755

`∩[A034838(n+1), A113315(n+1)*A325454(n+1)]`
-/

namespace A051004.P16037733078818659755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113315 (n + 1) * A325454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051004.P16037733078818659755

/-! ## A051004.P14168729435378646828

`filter[A034838(n+1), A188641(#)]`
-/

namespace A051004.P14168729435378646828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A051004.P14168729435378646828

/-!
# A051005: PartitionsQ[ A035359 ], i.e., prime values of PartitionsQ.

The programs for A051005, there is no canonical definition to state claims against.
-/

/-! ## A051005.P11486432352486308823

`A000009(A035359(n+1))`
-/

namespace A051005.P11486432352486308823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A035359 (n + 1)).toNat

end

end A051005.P11486432352486308823

/-! ## A051005.P6679769548516204449

`A254269(A035359(2*n+1-n))`
-/

namespace A051005.P6679769548516204449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254269 (A035359 (2 * n + 1 - n)).toNat

end

end A051005.P6679769548516204449

/-! ## A051005.P11549793791644605652

`gcd(A000038(n), A081360(A035359(n+1)))`
-/

namespace A051005.P11549793791644605652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A081360 (A035359 (n + 1)).toNat)

end

end A051005.P11549793791644605652

/-! ## A051005.P10522425132442121995

`lcm(A020985(n), A081360(A035359(n+1)))`
-/

namespace A051005.P10522425132442121995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A081360 (A035359 (n + 1)).toNat)

end

end A051005.P10522425132442121995

/-! ## A051005.P16570289080129066925

`A111133(A035359(n+1))-A057428(A001934(n))`
-/

namespace A051005.P16570289080129066925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (A035359 (n + 1)).toNat - A057428 (A001934 n).toNat

end

end A051005.P16570289080129066925

/-!
# A051006: Prime constant: decimal value of (A010051 interpreted as a binary number).

The programs for A051006, there is no canonical definition to state claims against.
-/

/-! ## A051006.P15690866893565490529

`A072812(n+2)`
-/

namespace A051006.P15690866893565490529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072812 (n + 2)

end

end A051006.P15690866893565490529

/-! ## A051006.P3274609626365853079

`dr(A072812(A080513(A005408(n))))`
-/

namespace A051006.P3274609626365853079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A072812 (A080513 (A005408 n).toNat).toNat)

end

end A051006.P3274609626365853079

/-! ## A051006.P16997903319059603759

`dr(A072812(A080513(A103517(n))))`
-/

namespace A051006.P16997903319059603759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A072812 (A080513 (A103517 n).toNat).toNat)

end

end A051006.P16997903319059603759

/-!
# A051007: Continued fraction for prime constant A051006.

The programs for A051007, there is no canonical definition to state claims against.
-/

/-! ## A051007.P13198413903678629401

`A182665(n+1)+A025581(A002190(n))`
-/

namespace A051007.P13198413903678629401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182665 (n + 1) + A025581 (A002190 n).toNat

end

end A051007.P13198413903678629401

/-! ## A051007.P4736026656153509908

`A008578(A004026(n+1))-A010815(n)`
-/

namespace A051007.P4736026656153509908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A004026 (n + 1)).toNat - A010815 n

end

end A051007.P4736026656153509908

/-!
# A051009: Reduced denominators of Newton's iteration for sqrt(2).

The programs for A051009, the canonical program `A051009.P17998959816542013925` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051009 has offset 1).

The definition of A051009 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051009.P17998959816542013925

`2*a(n-1)*sqrt(2*a(n-1)²+1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051009

/-- `2*a(n-1)*sqrt(2*a(n-1)²+1)` -/
def P17998959816542013925.Spec : Prop :=
  ∀ n, P17998959816542013925.a n = (A051009 (n + 1) : ℝ)

end A051009

/-! ## A051009.P13168938621963564752

`1/(2*sqrt(2))*((1+sqrt(2))^2^n-(1-sqrt(2))^2^n)`
-/

namespace A051009.P13168938621963564752
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / (2 * Real.sqrt (2 : ℝ)) * ((1 + Real.sqrt (2 : ℝ)) ^ 2 ^ n - (1 - Real.sqrt (2 : ℝ)) ^ 2 ^ n)

end

end A051009.P13168938621963564752

namespace A051009

/-- `1/(2*sqrt(2))*((1+sqrt(2))^2^n-(1-sqrt(2))^2^n)` -/
def P13168938621963564752.Spec : Prop :=
  ∀ n, P13168938621963564752.a n = (A051009 (n + 1) : ℝ)

end A051009

/-! ## A051009.P819202724404896615

`A000129(2^n)`
-/

namespace A051009.P819202724404896615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (2 ^ n)

end

end A051009.P819202724404896615

namespace A051009

/-- `A000129(2^n)` -/
def P819202724404896615.Spec : Prop :=
  ∀ n, P819202724404896615.a n = A051009 (n + 1)

end A051009

/-! ## A051009.P8352078712798193881

`A084068(2^n)`
-/

namespace A051009.P8352078712798193881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084068 (2 ^ n)

end

end A051009.P8352078712798193881

namespace A051009

/-- `A084068(2^n)` -/
def P8352078712798193881.Spec : Prop :=
  ∀ n, P8352078712798193881.a n = A051009 (n + 1)

end A051009

/-! ## A051009.P8935007879025921820

`A209445(2^n)`
-/

namespace A051009.P8935007879025921820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209445 (2 ^ n)

end

end A051009.P8935007879025921820

namespace A051009

/-- `A209445(2^n)` -/
def P8935007879025921820.Spec : Prop :=
  ∀ n, P8935007879025921820.a n = A051009 (n + 1)

end A051009

/-!
# A051010: Triangle T(m,n) giving of number of steps in the Euclidean algorithm for gcd(m,n) with 0<=m

The programs for A051010, there is no canonical definition to state claims against.
-/

/-! ## A051010.P6757128329304408168

`A107435(A028310(n))-A010054(n)`
-/

namespace A051010.P6757128329304408168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107435 (A028310 n).toNat - A010054 n

end

end A051010.P6757128329304408168

/-! ## A051010.P10237455130363015022

`A107435(A028310(n))-char[A000217(n)]`
-/

namespace A051010.P10237455130363015022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107435 (A028310 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A051010.P10237455130363015022

/-! ## A051010.P4023598944514956444

`A107435(A010054(n)+n)-A010054(n)`
-/

namespace A051010.P4023598944514956444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107435 (A010054 n + (n : ℤ)).toNat - A010054 n

end

end A051010.P4023598944514956444

/-! ## A051010.P6396073900396437744

`A107435(A028310(n))-Δ[A123578(n)]`
-/

namespace A051010.P6396073900396437744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107435 (A028310 n).toNat - (f1 (n + 1) - f1 n)

end

end A051010.P6396073900396437744

/-! ## A051010.P16636839212205035572

`A107435(A233583(n+1))-Δ[A123578(n)]`
-/

namespace A051010.P16636839212205035572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107435 (A233583 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A051010.P16636839212205035572

/-! ## A051010.P5205881970541908622

`A107435(A233583(n+1))-char[A000217(n)]`
-/

namespace A051010.P5205881970541908622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107435 (A233583 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A051010.P5205881970541908622

/-! ## A051010.P3980331741153939623

`A107435(A233583(n+1))-char[A057944(n)]`
-/

namespace A051010.P3980331741153939623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107435 (A233583 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A051010.P3980331741153939623

/-! ## A051010.P10764671731622315565

`char[A014132(n+1)]*A107435(A233583(n+1))`
-/

namespace A051010.P10764671731622315565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A107435 (A233583 (n + 1)).toNat

end

end A051010.P10764671731622315565

/-! ## A051010.P3524477915334017975

`A107435(A233583(n+1))-A000007(A053616(n))`
-/

namespace A051010.P3524477915334017975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107435 (A233583 (n + 1)).toNat - A000007 (A053616 n).toNat

end

end A051010.P3524477915334017975

/-! ## A051010.P4628557076710389419

`A107435(A233583(n+1))-A112316(A002262(n))`
-/

namespace A051010.P4628557076710389419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107435 (A233583 (n + 1)).toNat - A112316 (A002262 n).toNat

end

end A051010.P4628557076710389419

/-!
# A051011: Numerator of average of number of steps in Euclidean algorithm for all gcd(m,n) with 0<=m

The programs for A051011, there is no canonical definition to state claims against.
-/

/-! ## A051011.P676452024385489273

`lcm(n+1, A049826(n+1))/(n+1)`
-/

namespace A051011.P676452024385489273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A049826 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A051011.P676452024385489273

/-! ## A051011.P9476581649310355053

`A049826(n+1)/(n+1)*A051012(n+1)`
-/

namespace A051011.P9476581649310355053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049826 (n + 1) : ℚ) / (n + 1 : ℚ) * (A051012 (n + 1) : ℚ)

end

end A051011.P9476581649310355053

/-! ## A051011.P7200819900837148056

`A049826(n+1)/A000027((n+1)/A051012(n+1))`
-/

namespace A051011.P7200819900837148056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049826 (n + 1) : ℚ) / (A000027 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A051012 (n + 1) : ℚ))).toNat : ℚ)

end

end A051011.P7200819900837148056

/-! ## A051011.P490146111253363693

`A049826(n+1)/gcd(A000027(n+1), A049826(n+1))`
-/

namespace A051011.P490146111253363693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049826 (n + 1) : ℚ) / (Int.gcd (A000027 (n + 1)) (A049826 (n + 1)) : ℚ)

end

end A051011.P490146111253363693

/-!
# A051012: Denominator of average of number of steps in Euclidean algorithm for all gcd(m,n) with 0 <= m < n.

The programs for A051012, there is no canonical definition to state claims against.
-/

/-! ## A051012.P6382781821679777665

`(n+1)/gcd(n+1, A049826(n+1))`
-/

namespace A051012.P6382781821679777665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A049826 (n + 1)) : ℚ)

end

end A051012.P6382781821679777665

/-! ## A051012.P2472508787771510963

`A327938(n+1)^A351563(A100158(n+1))`
-/

namespace A051012.P2472508787771510963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327938 (n + 1) : ℚ) ^ (A351563 (A100158 (n + 1)).toNat : ℤ)

end

end A051012.P2472508787771510963

/-! ## A051012.P18235552264418968932

`gcd(n+1, A259456(A310958(n)))`
-/

namespace A051012.P18235552264418968932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A259456 (A310958 n).toNat)

end

end A051012.P18235552264418968932

/-! ## A051012.P13453696440305478759

`gcd(n*A259456(A310958(n)), A077168(n))`
-/

namespace A051012.P13453696440305478759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A259456 (A310958 n).toNat) (A077168 n)

end

end A051012.P13453696440305478759

/-! ## A051012.P1827064925937172908

`gcd(A038770(n+1), A060681(A000740(n+1)))`
-/

namespace A051012.P1827064925937172908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038770 (n + 1)) (A060681 (A000740 (n + 1)).toNat)

end

end A051012.P1827064925937172908

/-!
# A051013: Number of nonaveraging subsets on {1,2,...,n}.

The programs for A051013, there is no canonical definition to state claims against.
-/

/-! ## A051013.P4766992393169154306

`2^n-A018788(n)`
-/

namespace A051013.P4766992393169154306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A018788 n

end

end A051013.P4766992393169154306

/-! ## A051013.P13301202720700009725

`∑[A334893(n)]`
-/

namespace A051013.P13301202720700009725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051013.P13301202720700009725

/-! ## A051013.P16667496972036824402

`abs(A000079(n)-A018788(n))`
-/

namespace A051013.P16667496972036824402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A018788 n|

end

end A051013.P16667496972036824402

/-! ## A051013.P4650703021501742060

`A000225(n)+1-A018788(n)`
-/

namespace A051013.P4650703021501742060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A018788 n)

end

end A051013.P4650703021501742060

/-! ## A051013.P907697340681036673

`abs(A011782(n+1)-A018788(n))`
-/

namespace A051013.P907697340681036673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 (n + 1) - A018788 n|

end

end A051013.P907697340681036673

/-!
# A051014: Number of nondividing sets on {1,2,...,n}.

The programs for A051014, there is no canonical definition to state claims against.
-/

/-! ## A051014.P14164887215115223410

`A374760(n+2)-A040051(A001787(n))`
-/

namespace A051014.P14164887215115223410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374760 (n + 2) - A040051 (A001787 n).toNat

end

end A051014.P14164887215115223410

/-! ## A051014.P14742979574352660287

`A347867(n+1)+A289174(A211068(n+4))`
-/

namespace A051014.P14742979574352660287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347867 (n + 1) + A289174 (A211068 (n + 4)).toNat

end

end A051014.P14742979574352660287

/-! ## A051014.P11021547714448251516

`A167934(n)+lt[A003106(n), A032741(2*(n+2))]`
-/

namespace A051014.P11021547714448251516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167934 n + (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A051014.P11021547714448251516

/-! ## A051014.P4562874137140687823

`A327719(2*(n+1))+A189628(A134816(3*n+4))`
-/

namespace A051014.P4562874137140687823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327719 (2 * (n + 1)) + A189628 (A134816 (3 * n + 4)).toNat

end

end A051014.P4562874137140687823

/-! ## A051014.P8781685674462572554

`A389262(A178063(n))`
-/

namespace A051014.P8781685674462572554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389262 (A178063 n).toNat

end

end A051014.P8781685674462572554

/-!
# A051016: Numbers k for which r^k-floor(r^k) < 1/2, where r is the real root of x^3-x-1.

The programs for A051016, there is no canonical definition to state claims against.
-/

/-! ## A051016.P10451193959108192924

`lt[n*char[A051017(n+1)], n]`
-/

namespace A051016.P10451193959108192924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051017 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A051016.P10451193959108192924

/-! ## A051016.P6482419272117831191

`eq[char[A051017(n+1)], A000007(n)]`
-/

namespace A051016.P6482419272117831191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051017 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A051016.P6482419272117831191

/-! ## A051016.P12638603526171755758

`eq[char[A051017(n+1)], A000038(n)]`
-/

namespace A051016.P12638603526171755758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051017 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A051016.P12638603526171755758

/-! ## A051016.P3627640293511378703

`lt[char[A051017(n+1)], A057427(n)]`
-/

namespace A051016.P3627640293511378703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051017 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A051016.P3627640293511378703

/-! ## A051016.P1877136989034992095

`eq[char[A051017(n+1)], A151933(n)]`
-/

namespace A051016.P1877136989034992095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051017 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A051016.P1877136989034992095

/-!
# A051017: Numbers k for which r^k-floor(r^k) > 1/2, where r is the real root of x^3-x-1.

The programs for A051017, there is no canonical definition to state claims against.
-/

/-! ## A051017.P13971470344389409470

`comp[A051016(n+1)-1]+1`
-/

namespace A051017.P13971470344389409470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051016 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A051017.P13971470344389409470

/-! ## A051017.P1531488274245658908

`eq[char[A051016(n+1)], A000007(n)]`
-/

namespace A051017.P1531488274245658908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051016 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A051017.P1531488274245658908

/-! ## A051017.P13542116436851367939

`eq[char[A051016(n+1)], A000038(n)]`
-/

namespace A051017.P13542116436851367939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051016 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A051017.P13542116436851367939

/-! ## A051017.P15452947433609429689

`eq[char[A051016(n+1)], A084099(2*n)]`
-/

namespace A051017.P15452947433609429689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051016 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084099 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A051017.P15452947433609429689

/-! ## A051017.P17217398095698344291

`lt[A259967(n), A205579(n)²]`
-/

namespace A051017.P17217398095698344291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259967 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205579 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051017.P17217398095698344291

/-!
# A051018: Numbers that are 2-persistent but not 3-persistent.

The programs for A051018, there is no canonical definition to state claims against.
-/

/-! ## A051018.P4310249299446994177

`A050278(A204085(n+1))`
-/

namespace A051018.P4310249299446994177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050278 (A204085 (n + 1)).toNat

end

end A051018.P4310249299446994177

/-! ## A051018.P15119804854279965699

`A050278(eq[0, A260736(xor(1, n))])`
-/

namespace A051018.P15119804854279965699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260736 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051018.P15119804854279965699

/-! ## A051018.P814324177163816515

`A050278(eq[32, A275725(n+32)])`
-/

namespace A051018.P814324177163816515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275725 (n + 32)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051018.P814324177163816515

/-! ## A051018.P605272258853728958

`A050278(eq[32, A275725(n)]-32)`
-/

namespace A051018.P605272258853728958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 32)

end

end A051018.P605272258853728958

/-! ## A051018.P7028045186860710394

`A050278(eq[n, A292570(or(1, n))])`
-/

namespace A051018.P7028045186860710394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292570 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051018.P7028045186860710394

/-!
# A051022: Interpolate 0's between each pair of digits of n.

The programs for A051022, there is no canonical definition to state claims against.
-/

/-! ## A051022.P2829496501124632158

`A338754(n)/11`
-/

namespace A051022.P2829496501124632158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338754 n : ℚ) / 11

end

end A051022.P2829496501124632158

/-! ## A051022.P5906532264910555777

`A055649(A171397(n))`
-/

namespace A051022.P5906532264910555777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055649 (A171397 n).toNat

end

end A051022.P5906532264910555777

/-! ## A051022.P7282561259520017002

`A049872(A102487(n+1))`
-/

namespace A051022.P7282561259520017002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049872 (A102487 (n + 1)).toNat

end

end A051022.P7282561259520017002

/-! ## A051022.P13600520836583930322

`A055648(A094823(n))`
-/

namespace A051022.P13600520836583930322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055648 (A094823 n).toNat

end

end A051022.P13600520836583930322

/-! ## A051022.P18128424337640481513

`A055645(A102489(n))`
-/

namespace A051022.P18128424337640481513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 (A102489 n).toNat

end

end A051022.P18128424337640481513

/-! ## A051022.P12181311552073908292

`A055643(A102493(n+1))`
-/

namespace A051022.P12181311552073908292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (A102493 (n + 1)).toNat

end

end A051022.P12181311552073908292

/-! ## A051022.P1011453125003859270

`eq[n, A039723(n)]`
-/

namespace A051022.P1011453125003859270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039723 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051022.P1011453125003859270

/-! ## A051022.P3655653621049113094

`eq[A007953(n), A055017(n)]`
-/

namespace A051022.P3655653621049113094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051022.P3655653621049113094

/-! ## A051022.P3859149834690499394

`eq[A055017(n), A093017(n)]`
-/

namespace A051022.P3859149834690499394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051022.P3859149834690499394

/-! ## A051022.P11939117871046976238

`A039723(lt[A039723(n), n+1])`
-/

namespace A051022.P11939117871046976238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039723 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039723 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A051022.P11939117871046976238

/-! ## A051022.P10367262646371442720

`A039723(lt[A039723(n)-1, n])`
-/

namespace A051022.P10367262646371442720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039723 n - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039723 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A051022.P10367262646371442720

/-! ## A051022.P6420047310230889563

`record[A073835(n)]`
-/

namespace A051022.P6420047310230889563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051022.P6420047310230889563

/-! ## A051022.P7767412709678566167

`A106612(A338754(n))`
-/

namespace A051022.P7767412709678566167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (A338754 n).toNat

end

end A051022.P7767412709678566167

/-! ## A051022.P5296527071727666130

`eq[A073835(n), A249873(n)]`
-/

namespace A051022.P5296527071727666130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073835 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051022.P5296527071727666130

/-! ## A051022.P17728134782300278418

`eq[A073835(n), A352152(n)]`
-/

namespace A051022.P17728134782300278418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073835 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352152 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051022.P17728134782300278418

/-! ## A051022.P6510015933578240319

`eq[A073835(n), A381966(n)]`
-/

namespace A051022.P6510015933578240319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073835 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381966 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051022.P6510015933578240319

/-! ## A051022.P12781444170494352977

`eq[A055017(n), A076314(A076314(n))]`
-/

namespace A051022.P12781444170494352977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 (A076314 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051022.P12781444170494352977

/-!
# A051023: Middle column of rule-30 1-D cellular automaton, from a lone 1 cell.

The programs for A051023, there is no canonical definition to state claims against.
-/

/-! ## A051023.P3405898722501492093

`1-A226474(n)`
-/

namespace A051023.P3405898722501492093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A226474 n

end

end A051023.P3405898722501492093

/-! ## A051023.P1498738788238647567

`char[A327984(n+1)]`
-/

namespace A051023.P1498738788238647567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A051023.P1498738788238647567

/-! ## A051023.P930913247615930766

`char[comp[A327985(n+1)]]`
-/

namespace A051023.P930913247615930766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327985 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A051023.P930913247615930766

/-! ## A051023.P8499165560952192140

`(a(n-1)-A327974(n))²` with `a(0)=1`
-/

namespace A051023.P8499165560952192140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - A327974 n) ^ 2

end

end A051023.P8499165560952192140

/-! ## A051023.P11164868976788883105

`A105348(6*n*A226474(n))`
-/

namespace A051023.P11164868976788883105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105348 (6 * ((n : ℤ) * A226474 n)).toNat

end

end A051023.P11164868976788883105

/-! ## A051023.P11540243242653064620

`and(1, A226474(n)+A135561(n+1))`
-/

namespace A051023.P11540243242653064620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A226474 n + A135561 (n + 1))

end

end A051023.P11540243242653064620

/-! ## A051023.P4297450725631133474

`(A039649(n+1)*A226474(n)+1)%2`
-/

namespace A051023.P4297450725631133474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039649 (n + 1) * A226474 n + 1) 2

end

end A051023.P4297450725631133474

/-! ## A051023.P16080568361022927927

`A191254(xor(n, n+1)*A226474(n)+6)`
-/

namespace A051023.P16080568361022927927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191254 ((Nat.xor n (n + 1) : ℤ) * A226474 n + 6).toNat

end

end A051023.P16080568361022927927

/-! ## A051023.P7620221147275092124

`A191255(xor(n, n+1)*A226474(n)+6)`
-/

namespace A051023.P7620221147275092124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191255 ((Nat.xor n (n + 1) : ℤ) * A226474 n + 6).toNat

end

end A051023.P7620221147275092124

/-! ## A051023.P17785866646228805704

`A000035(A226474(n)+2*n+1)`
-/

namespace A051023.P17785866646228805704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A226474 n + (2 * n + 1 : ℤ)).toNat

end

end A051023.P17785866646228805704

/-! ## A051023.P4592969144651094927

`xor(A226474(A327985(n+1)), A226474(n))`
-/

namespace A051023.P4592969144651094927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A226474 (A327985 (n + 1)).toNat) (A226474 n)

end

end A051023.P4592969144651094927

/-! ## A051023.P3149167775096373551

`A191265(A226474(n)+A191267(n+1))`
-/

namespace A051023.P3149167775096373551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191265 (A226474 n + A191267 (n + 1)).toNat

end

end A051023.P3149167775096373551

/-! ## A051023.P1143345819176540236

`A191254(A226474(n)*A250247(2*n+3)+6)`
-/

namespace A051023.P1143345819176540236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191254 (A226474 n * A250247 (2 * n + 3) + 6).toNat

end

end A051023.P1143345819176540236

/-! ## A051023.P13436528201041370725

`A092539(n)%2`
-/

namespace A051023.P13436528201041370725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092539 n) 2

end

end A051023.P13436528201041370725

/-! ## A051023.P2598675467749202239

`and(A048578(n), A092539(n))`
-/

namespace A051023.P2598675467749202239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A092539 n)

end

end A051023.P2598675467749202239

/-! ## A051023.P17306072317738947532

`and(A092539(n), A158388(n))`
-/

namespace A051023.P17306072317738947532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092539 n) (A158388 n)

end

end A051023.P17306072317738947532

/-! ## A051023.P9568900475936238722

`and(A066827(n+1), A092539(n))`
-/

namespace A051023.P9568900475936238722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066827 (n + 1)) (A092539 n)

end

end A051023.P9568900475936238722

/-! ## A051023.P16000744165114051288

`and(A020737(n), A092539(n))`
-/

namespace A051023.P16000744165114051288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A092539 n)

end

end A051023.P16000744165114051288

/-! ## A051023.P8920690489773604825

`and(A092539(n), A195744(n))`
-/

namespace A051023.P8920690489773604825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092539 n) (A195744 n)

end

end A051023.P8920690489773604825

/-!
# A051024: Values of n for which pi_{4,3}(p_n) - pi_{4,1}(p_n) = -1, where p_n is the n-th prime and pi_{m,a}(x) is the number of primes <= x which are congruent to a (mod m).

The programs for A051024, there is no canonical definition to state claims against.
-/

/-! ## A051024.P13204495601246887175

`A096628(record[Δ[A220527(n)]])`
-/

namespace A051024.P13204495601246887175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220527 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096628 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051024.P13204495601246887175

/-!
# A051025: Primes p for which pi_{4,3}(p) - pi_{4,1}(p) = -1, where pi_{m,a}(x) is the number of primes <= x which are congruent to a (mod m).

The programs for A051025, there is no canonical definition to state claims against.
-/

/-! ## A051025.P738818966580363493

`A199547(A007496(2*(n+1))-n)`
-/

namespace A051025.P738818966580363493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199547 (A007496 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A051025.P738818966580363493

/-!
# A051026: Number of primitive subsequences of {1, 2, ..., n}.

The programs for A051026, there is no canonical definition to state claims against.
-/

/-! ## A051026.P8762807611046224025

`∑[A046923(A020135(n))]`
-/

namespace A051026.P8762807611046224025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046923 (A020135 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051026.P8762807611046224025

/-! ## A051026.P8901372777758845715

`A083023(A356716(n+1))`
-/

namespace A051026.P8901372777758845715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083023 (A356716 (n + 1)).toNat

end

end A051026.P8901372777758845715

/-! ## A051026.P4212274204062523130

`A089866(A158415(n+2))`
-/

namespace A051026.P4212274204062523130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089866 (A158415 (n + 2)).toNat

end

end A051026.P4212274204062523130

/-! ## A051026.P6563688095060775333

`eq[1, A000120(A087086(n))]`
-/

namespace A051026.P6563688095060775333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A087086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051026.P6563688095060775333

/-! ## A051026.P12732778240835059767

`∑[A000005(∑[A200752(n)²])]`
-/

namespace A051026.P12732778240835059767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200752 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051026.P12732778240835059767

/-!
# A051027: a(n) = sigma(sigma(n)) = sum of the divisors of the sum of the divisors of n.

The programs for A051027, the canonical program `A051027.P5984083100296461897` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051027 has offset 1).

The definition of A051027 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051027.P5984083100296461897

`A000203(A000203(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A051027

/-- `A000203(A000203(n+1))` -/
def P5984083100296461897.Spec : Prop :=
  ∀ n, P5984083100296461897.a n = A051027 (n + 1)

theorem P5984083100296461897.correct : P5984083100296461897.Spec := by
  intro n
  simp only [A051027, Nat.add_sub_cancel]

end A051027

/-! ## A051027.P8980952969701484566

`∑{d}[∑{d}[n+1, #], #]`
-/

namespace A051027.P8980952969701484566
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A051027.P8980952969701484566

namespace A051027

/-- `∑{d}[∑{d}[n+1, #], #]` -/
def P8980952969701484566.Spec : Prop :=
  ∀ n, (P8980952969701484566.a n : ℤ) = A051027 (n + 1)

end A051027

/-! ## A051027.P5931169640010289387

`∑[A111408(n)]`
-/

namespace A051027.P5931169640010289387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051027.P5931169640010289387

namespace A051027

/-- `∑[A111408(n)]` -/
def P5931169640010289387.Spec : Prop :=
  ∀ n, P5931169640010289387.a n = A051027 (n + 1)

end A051027

/-! ## A051027.P5182577740369207490

`∑{d}[Δ[A160664(n)], #]`
-/

namespace A051027.P5182577740369207490
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A051027.P5182577740369207490

namespace A051027

/-- `∑{d}[Δ[A160664(n)], #]` -/
def P5182577740369207490.Spec : Prop :=
  ∀ n, (P5182577740369207490.a n : ℤ) = A051027 (n + 1)

end A051027

/-! ## A051027.P4270094538584855771

`∑{d}[A143348(n+1), #]`
-/

namespace A051027.P4270094538584855771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A051027.P4270094538584855771

namespace A051027

/-- `∑{d}[A143348(n+1), #]` -/
def P4270094538584855771.Spec : Prop :=
  ∀ n, (P4270094538584855771.a n : ℤ) = A051027 (n + 1)

end A051027

/-! ## A051027.P17770018321460642998

`A000203(Δ[A160664(n)])`
-/

namespace A051027.P17770018321460642998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (n + 1) - f1 n).toNat

end

end A051027.P17770018321460642998

namespace A051027

/-- `A000203(Δ[A160664(n)])` -/
def P17770018321460642998.Spec : Prop :=
  ∀ n, P17770018321460642998.a n = A051027 (n + 1)

end A051027

/-! ## A051027.P1114370911736950717

`A227758(n+1)+A155085(n+1)`
-/

namespace A051027.P1114370911736950717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227758 (n + 1) + A155085 (n + 1)

end

end A051027.P1114370911736950717

namespace A051027

/-- `A227758(n+1)+A155085(n+1)` -/
def P1114370911736950717.Spec : Prop :=
  ∀ n, P1114370911736950717.a n = A051027 (n + 1)

theorem P1114370911736950717.correct : P1114370911736950717.Spec := by
  intro n
  simp only [A051027, Nat.add_sub_cancel, A051027.P1114370911736950717.a, A051027.P5984083100296461897.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A155085, A155085.P3282672389110014595.a, A227758, A227758.P8934593272528539020.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051027

/-! ## A051027.P16794007557873646456

`A193337(n+1)+A193336(n+1)`
-/

namespace A051027.P16794007557873646456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193337 (n + 1) + A193336 (n + 1)

end

end A051027.P16794007557873646456

namespace A051027

/-- `A193337(n+1)+A193336(n+1)` -/
def P16794007557873646456.Spec : Prop :=
  ∀ n, P16794007557873646456.a n = A051027 (n + 1)

theorem P16794007557873646456.correct : P16794007557873646456.Spec := by
  intro n
  simp only [A051027, Nat.add_sub_cancel, A051027.P16794007557873646456.a, A051027.P5984083100296461897.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A193336, A193336.P7441199582202554829.a, A193337, A193337.P10860167010947937724.a, A000593, A000593.P13640346029616979906.a, A146076, A146076.P5513778411624192836.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051027

/-! ## A051027.P11907754704395528782

`A249353(n+1)-A000010(n+1)`
-/

namespace A051027.P11907754704395528782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249353 (n + 1) - A000010 (n + 1)

end

end A051027.P11907754704395528782

namespace A051027

/-- `A249353(n+1)-A000010(n+1)` -/
def P11907754704395528782.Spec : Prop :=
  ∀ n, P11907754704395528782.a n = A051027 (n + 1)

theorem P11907754704395528782.correct : P11907754704395528782.Spec := by
  intro n
  simp only [A051027, Nat.add_sub_cancel, A051027.P11907754704395528782.a, A051027.P5984083100296461897.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A249353, A249353.P10664740351747725873.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051027

/-! ## A051027.P16834564255722875657

`A353802(n+1)-A353803(n+1)`
-/

namespace A051027.P16834564255722875657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353802 (n + 1) - A353803 (n + 1)

end

end A051027.P16834564255722875657

namespace A051027

/-- `A353802(n+1)-A353803(n+1)` -/
def P16834564255722875657.Spec : Prop :=
  ∀ n, P16834564255722875657.a n = A051027 (n + 1)

end A051027

/-! ## A051027.P3099348276281958952

`A318059(n+1)*A353751(n+1)`
-/

namespace A051027.P3099348276281958952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318059 (n + 1) * A353751 (n + 1)

end

end A051027.P3099348276281958952

namespace A051027

/-- `A318059(n+1)*A353751(n+1)` -/
def P3099348276281958952.Spec : Prop :=
  ∀ n, P3099348276281958952.a n = A051027 (n + 1)

end A051027

/-! ## A051027.P16237787813619453845

`A353804(n+1)*A353805(n+1)`
-/

namespace A051027.P16237787813619453845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353804 (n + 1) * A353805 (n + 1)

end

end A051027.P16237787813619453845

namespace A051027

/-- `A353804(n+1)*A353805(n+1)` -/
def P16237787813619453845.Spec : Prop :=
  ∀ n, P16237787813619453845.a n = A051027 (n + 1)

end A051027

/-! ## A051027.P17165188364519699499

`A000203(A000203(2*n-(n-1))-and(1, 2*n))`
-/

namespace A051027.P17165188364519699499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - (Nat.land 1 (2 * n) : ℤ)).toNat

end

end A051027.P17165188364519699499

namespace A051027

/-- `A000203(A000203(2*n-(n-1))-and(1, 2*n))` -/
def P17165188364519699499.Spec : Prop :=
  ∀ n, P17165188364519699499.a n = A051027 (n + 1)

end A051027

/-! ## A051027.P18266668359817102782

`A000203(gcd(n, n-1)*A000203(2*n-(n-1)))`
-/

namespace A051027.P18266668359817102782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((Int.gcd (n : ℤ) ((n : ℤ) - 1) : ℤ) * A000203 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat).toNat

end

end A051027.P18266668359817102782

namespace A051027

/-- `A000203(gcd(n, n-1)*A000203(2*n-(n-1)))` -/
def P18266668359817102782.Spec : Prop :=
  ∀ n, P18266668359817102782.a n = A051027 (n + 1)

end A051027

/-! ## A051027.P5175217482489479394

`A353804(n+1)*A353806(n+1)-A353803(n+1)`
-/

namespace A051027.P5175217482489479394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353804 (n + 1) * A353806 (n + 1) - A353803 (n + 1)

end

end A051027.P5175217482489479394

namespace A051027

/-- `A353804(n+1)*A353806(n+1)-A353803(n+1)` -/
def P5175217482489479394.Spec : Prop :=
  ∀ n, P5175217482489479394.a n = A051027 (n + 1)

end A051027

/-! ## A051027.P10369146163902580779

`A353802(n+1)*A353805(n+1)/A353806(n+1)`
-/

namespace A051027.P10369146163902580779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353802 (n + 1) * A353805 (n + 1) : ℚ) / (A353806 (n + 1) : ℚ)

end

end A051027.P10369146163902580779

namespace A051027

/-- `A353802(n+1)*A353805(n+1)/A353806(n+1)` -/
def P10369146163902580779.Spec : Prop :=
  ∀ n, P10369146163902580779.a n = (A051027 (n + 1) : ℚ)

end A051027

/-! ## A051027.P1702949750159491513

`A074400(A245092(2*n+1))/2`
-/

namespace A051027.P1702949750159491513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (A245092 (2 * n + 1)).toNat : ℚ) / 2

end

end A051027.P1702949750159491513

namespace A051027

/-- `A074400(A245092(2*n+1))/2` -/
def P1702949750159491513.Spec : Prop :=
  ∀ n, P1702949750159491513.a n = (A051027 (n + 1) : ℚ)

end A051027

/-! ## A051027.P15344950742682420046

`A074400(A074400(n+1)/2)/2`
-/

namespace A051027.P15344950742682420046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat : ℚ) / 2

end

end A051027.P15344950742682420046

namespace A051027

/-- `A074400(A074400(n+1)/2)/2` -/
def P15344950742682420046.Spec : Prop :=
  ∀ n, P15344950742682420046.a n = (A051027 (n + 1) : ℚ)

end A051027

/-! ## A051027.P4005203425794862162

`A245092(A002659(n+1))`
-/

namespace A051027.P4005203425794862162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A002659 (n + 1)).toNat

end

end A051027.P4005203425794862162

namespace A051027

/-- `A245092(A002659(n+1))` -/
def P4005203425794862162.Spec : Prop :=
  ∀ n, P4005203425794862162.a n = A051027 (n + 1)

end A051027

/-! ## A051027.P2212641887728166291

`A245092(A074400(n+1)-1)`
-/

namespace A051027.P2212641887728166291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A074400 (n + 1) - 1).toNat

end

end A051027.P2212641887728166291

namespace A051027

/-- `A245092(A074400(n+1)-1)` -/
def P2212641887728166291.Spec : Prop :=
  ∀ n, P2212641887728166291.a n = A051027 (n + 1)

end A051027

/-!
# A051030: Ramanujan's c-series: expansion of (2+8*x-10*x^2)/(1-82*x-82*x^2+x^3).

The programs for A051030, there is no canonical definition to state claims against.
-/

/-! ## A051030.P7096423705990296840

`A051029(n+1)-(A051028(n+1)+A051028(n))`
-/

namespace A051030.P7096423705990296840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051029 (n + 1) - (A051028 (n + 1) + A051028 n)

end

end A051030.P7096423705990296840

/-!
# A051031: Triangle read by rows: T(n,r) is the number of not necessarily connected r-regular graphs with n nodes, 0 <= r < n.

The programs for A051031, there is no canonical definition to state claims against.
-/

/-! ## A051031.P15211980294594563688

`A068934(A127739(n+1)-A004197(n))`
-/

namespace A051031.P15211980294594563688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068934 (A127739 (n + 1) - A004197 n).toNat

end

end A051031.P15211980294594563688

/-! ## A051031.P13542309991116574878

`A068934(A004736(n+1)+n-A004197(n))`
-/

namespace A051031.P13542309991116574878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068934 (A004736 (n + 1) + ((n : ℤ) - A004197 n)).toNat

end

end A051031.P13542309991116574878

/-! ## A051031.P17025723733931655662

`A068934(n+1)+A068933(n+1)`
-/

namespace A051031.P17025723733931655662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068934 (n + 1) + A068933 (n + 1)

end

end A051031.P17025723733931655662

/-! ## A051031.P3689999353683614117

`A109036(A136489(n)%A109128(n))`
-/

namespace A051031.P3689999353683614117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109036 (Int.tmod (A136489 n) (A109128 n)).toNat

end

end A051031.P3689999353683614117

/-! ## A051031.P10276583656802863582

`A068063(A008327(n)*A319367(n+1))`
-/

namespace A051031.P10276583656802863582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A008327 n * A319367 (n + 1)).toNat

end

end A051031.P10276583656802863582

/-!
# A051032: Summatory Rudin-Shapiro sequence for 2^(n-1).

The programs for A051032, the canonical program `A051032.P4278756852996248785` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051032 has offset 1).

The definition of A051032 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051032.P4278756852996248785

`2^ceil(n/2)+1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051032

/-- `2^ceil(n/2)+1` -/
def P4278756852996248785.Spec : Prop :=
  ∀ n, P4278756852996248785.a n = (A051032 (n + 1) : ℚ)

end A051032

/-! ## A051032.P10481392492761058349

`∑[ogf((2+x-4x^2)/(1-2x^2))]`
-/

namespace A051032.P10481392492761058349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, -4] [1, 0, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051032.P10481392492761058349

namespace A051032

/-- `∑[ogf((2+x-4x^2)/(1-2x^2))]` -/
def P10481392492761058349.Spec : Prop :=
  ∀ n, P10481392492761058349.a n = A051032 (n + 1)

end A051032

/-! ## A051032.P6083722145390855921

`ogf((2+x-4x^2)/(1-x-2x^2+2x^3))`
-/

namespace A051032.P6083722145390855921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, -4] [1, -1, -2, 2] n

end

end A051032.P6083722145390855921

namespace A051032

/-- `ogf((2+x-4x^2)/(1-x-2x^2+2x^3))` -/
def P6083722145390855921.Spec : Prop :=
  ∀ n, P6083722145390855921.a n = A051032 (n + 1)

end A051032

/-! ## A051032.P10755631229195882855

`∑[2*a(n-2)]` with `a(0)=2, a(1)=1, a(2)=0`
-/

namespace A051032.P10755631229195882855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 0] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051032.P10755631229195882855

namespace A051032

/-- `∑[2*a(n-2)]` -/
def P10755631229195882855.Spec : Prop :=
  ∀ n, (P10755631229195882855.a n : ℤ) = A051032 (n + 1)

end A051032

/-! ## A051032.P585969388149729223

`xor(3, 2*a(n-2))` with `a(0)=2, a(1)=3, a(2)=3`
-/

namespace A051032.P585969388149729223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 3] fun n a =>
  Nat.xor 3 (2 * a (n - 2))

end

end A051032.P585969388149729223

namespace A051032

/-- `xor(3, 2*a(n-2))` -/
def P585969388149729223.Spec : Prop :=
  ∀ n, (P585969388149729223.a n : ℤ) = A051032 (n + 1)

end A051032

/-! ## A051032.P13450706138430010571

`abs(1-2*a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A051032.P13450706138430010571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  |1 - 2 * a (n - 2)|

end

end A051032.P13450706138430010571

namespace A051032

/-- `abs(1-2*a(n-2))` -/
def P13450706138430010571.Spec : Prop :=
  ∀ n, P13450706138430010571.a n = A051032 (n + 1)

end A051032

/-! ## A051032.P8796780472555184154

`abs(a(n-2)+a(n-2)-1)` with `a(0)=2, a(1)=3`
-/

namespace A051032.P8796780472555184154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  |a (n - 2) + (a (n - 2) - 1)|

end

end A051032.P8796780472555184154

namespace A051032

/-- `abs(a(n-2)+a(n-2)-1)` -/
def P8796780472555184154.Spec : Prop :=
  ∀ n, P8796780472555184154.a n = A051032 (n + 1)

end A051032

/-! ## A051032.P17432633674701788267

`abs(1-a(n-2)-a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A051032.P17432633674701788267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  |1 - a (n - 2) - a (n - 2)|

end

end A051032.P17432633674701788267

namespace A051032

/-- `abs(1-a(n-2)-a(n-2))` -/
def P17432633674701788267.Spec : Prop :=
  ∀ n, P17432633674701788267.a n = A051032 (n + 1)

end A051032

/-! ## A051032.P13432918699246214361

`floor(a(n-2)+a(n-2)-1)` with `a(0)=2, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A051032.P13432918699246214361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) + (a (n - 2) - 1)

end

end A051032.P13432918699246214361

namespace A051032

/-- `floor(a(n-2)+a(n-2)-1)` -/
def P13432918699246214361.Spec : Prop :=
  ∀ n, P13432918699246214361.a n = A051032 (n + 1)

end A051032

/-! ## A051032.P6827977615388052128

`floor(a(n-2)-(1-a(n-2)))` with `a(0)=2, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A051032.P6827977615388052128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) - (1 - a (n - 2))

end

end A051032.P6827977615388052128

namespace A051032

/-- `floor(a(n-2)-(1-a(n-2)))` -/
def P6827977615388052128.Spec : Prop :=
  ∀ n, P6827977615388052128.a n = A051032 (n + 1)

end A051032

/-! ## A051032.P9999346517346502804

`ceil(a(n-2)+a(n-2)-1)` with `a(0)=2, a(1)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A051032.P9999346517346502804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) + (a (n - 2) - 1)

end

end A051032.P9999346517346502804

namespace A051032

/-- `ceil(a(n-2)+a(n-2)-1)` -/
def P9999346517346502804.Spec : Prop :=
  ∀ n, P9999346517346502804.a n = A051032 (n + 1)

end A051032

/-! ## A051032.P12155946872866185767

`ceil(a(n-2)-(1-a(n-2)))` with `a(0)=2, a(1)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A051032.P12155946872866185767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) - (1 - a (n - 2))

end

end A051032.P12155946872866185767

namespace A051032

/-- `ceil(a(n-2)-(1-a(n-2)))` -/
def P12155946872866185767.Spec : Prop :=
  ∀ n, P12155946872866185767.a n = A051032 (n + 1)

end A051032

/-! ## A051032.P7641992431964032641

`round(a(n-2)+a(n-2)-1)` with `a(0)=2, a(1)=3`

`round` is left out, it is the identity on integers.
-/

namespace A051032.P7641992431964032641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) + (a (n - 2) - 1)

end

end A051032.P7641992431964032641

namespace A051032

/-- `round(a(n-2)+a(n-2)-1)` -/
def P7641992431964032641.Spec : Prop :=
  ∀ n, P7641992431964032641.a n = A051032 (n + 1)

end A051032

/-! ## A051032.P15184042186494568969

`round(a(n-2)-(1-a(n-2)))` with `a(0)=2, a(1)=3`

`round` is left out, it is the identity on integers.
-/

namespace A051032.P15184042186494568969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) - (1 - a (n - 2))

end

end A051032.P15184042186494568969

namespace A051032

/-- `round(a(n-2)-(1-a(n-2)))` -/
def P15184042186494568969.Spec : Prop :=
  ∀ n, P15184042186494568969.a n = A051032 (n + 1)

end A051032

/-! ## A051032.P15540507284123354995

`∑[a(n-2)-a(n-2)/(-1)^n]` with `a(0)=2, a(1)=1`
-/

namespace A051032.P15540507284123354995
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 2) - f1 (n - 2) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051032.P15540507284123354995

namespace A051032

/-- `∑[a(n-2)-a(n-2)/(-1)^n]` -/
def P15540507284123354995.Spec : Prop :=
  ∀ n, P15540507284123354995.a n = (A051032 (n + 1) : ℚ)

end A051032

/-! ## A051032.P2749317394816943931

`(a(n-2)+a(n-2)-1)/a(n-1)%2` with `a(0)=2, a(1)=3`
-/

namespace A051032.P2749317394816943931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n a =>
  (a (n - 2) + (a (n - 2) - 1)) / (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) 2 : ℚ)

end

end A051032.P2749317394816943931

namespace A051032

/-- `(a(n-2)+a(n-2)-1)/a(n-1)%2` -/
def P2749317394816943931.Spec : Prop :=
  ∀ n, P2749317394816943931.a n = (A051032 (n + 1) : ℚ)

end A051032

/-! ## A051032.P8143516232975002958

`A000051(ceil(n/2))`
-/

namespace A051032.P8143516232975002958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 ⌈(n : ℚ) / 2⌉.toNat

end

end A051032.P8143516232975002958

namespace A051032

/-- `A000051(ceil(n/2))` -/
def P8143516232975002958.Spec : Prop :=
  ∀ n, P8143516232975002958.a n = A051032 (n + 1)

end A051032

/-! ## A051032.P16673785113905687311

`A052552(and(1, n)+n)`
-/

namespace A051032.P16673785113905687311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 (Nat.land 1 n + n)

end

end A051032.P16673785113905687311

namespace A051032

/-- `A052552(and(1, n)+n)` -/
def P16673785113905687311.Spec : Prop :=
  ∀ n, P16673785113905687311.a n = A051032 (n + 1)

end A051032

/-! ## A051032.P555164773894874934

`A136417(and(1, n)+n)`
-/

namespace A051032.P555164773894874934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136417 (Nat.land 1 n + n)

end

end A051032.P555164773894874934

namespace A051032

/-- `A136417(and(1, n)+n)` -/
def P555164773894874934.Spec : Prop :=
  ∀ n, P555164773894874934.a n = A051032 (n + 1)

end A051032

/-! ## A051032.P3976600796907210186

`A094373(A080513(n))`
-/

namespace A051032.P3976600796907210186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (A080513 n).toNat

end

end A051032.P3976600796907210186

namespace A051032

/-- `A094373(A080513(n))` -/
def P3976600796907210186.Spec : Prop :=
  ∀ n, P3976600796907210186.a n = A051032 (n + 1)

end A051032

/-!
# A051033: a(n) = binomial(n, floor(n/3)).

The programs for A051033, the canonical program `A051033.P5799552983514192915` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051033 has offset 0).

The definition of A051033 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, floor(n/3))` (program `A051033.P5799552983514192915`, by `A051033.P5799552983514192915.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051033.P5799552983514192915

`C(n, floor(n/3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051033

/-- `C(n, floor(n/3))` -/
def P5799552983514192915.Spec : Prop :=
  ∀ n, (P5799552983514192915.a n : ℤ) = A051033 n

theorem P5799552983514192915.correct : P5799552983514192915.Spec := by
  intro n
  simp only [A051033]

end A051033

/-! ## A051033.P9815545936755909041

`A047193(floor(acot(n)+n))+1`
-/

namespace A051033.P9815545936755909041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047193 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat + 1

end

end A051033.P9815545936755909041

namespace A051033

/-- `A047193(floor(acot(n)+n))+1` -/
def P9815545936755909041.Spec : Prop :=
  ∀ n, P9815545936755909041.a n = A051033 n

end A051033

/-! ## A051033.P17375681097512487166

`A047193(abs(1-n)+1)+1`
-/

namespace A051033.P17375681097512487166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047193 (|1 - (n : ℤ)| + 1).toNat + 1

end

end A051033.P17375681097512487166

namespace A051033

/-- `A047193(abs(1-n)+1)+1` -/
def P17375681097512487166.Spec : Prop :=
  ∀ n, P17375681097512487166.a n = A051033 n

end A051033

/-! ## A051033.P16563641360603564050

`abs(1-C(n, A002264(n)))+1`
-/

namespace A051033.P16563641360603564050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.choose n (A002264 n).toNat : ℤ)| + 1

end

end A051033.P16563641360603564050

namespace A051033

/-- `abs(1-C(n, A002264(n)))+1` -/
def P16563641360603564050.Spec : Prop :=
  ∀ n, P16563641360603564050.a n = A051033 n

end A051033

/-! ## A051033.P16791396782272224438

`A074909(∑[n]-(n-n%3)/3)`
-/

namespace A051033.P16791396782272224438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - ((n : ℤ) - ((n % 3 : ℕ) : ℤ) : ℚ) / 3)).toNat

end

end A051033.P16791396782272224438

namespace A051033

/-- `A074909(∑[n]-(n-n%3)/3)` -/
def P16791396782272224438.Spec : Prop :=
  ∀ n, P16791396782272224438.a n = A051033 n

end A051033

/-! ## A051033.P16096280199577028045

`A074909(A171452(n))`
-/

namespace A051033.P16096280199577028045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A171452 n).toNat

end

end A051033.P16096280199577028045

namespace A051033

/-- `A074909(A171452(n))` -/
def P16096280199577028045.Spec : Prop :=
  ∀ n, P16096280199577028045.a n = A051033 n

end A051033

/-! ## A051033.P1766269901890317838

`A074909(A389143(n))`
-/

namespace A051033.P1766269901890317838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A389143 n).toNat

end

end A051033.P1766269901890317838

namespace A051033

/-- `A074909(A389143(n))` -/
def P1766269901890317838.Spec : Prop :=
  ∀ n, P1766269901890317838.a n = A051033 n

end A051033

/-! ## A051033.P720129437160354061

`A074909(∑[n]-A002264(n))`
-/

namespace A051033.P720129437160354061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A002264 n).toNat

end

end A051033.P720129437160354061

namespace A051033

/-- `A074909(∑[n]-A002264(n))` -/
def P720129437160354061.Spec : Prop :=
  ∀ n, P720129437160354061.a n = A051033 n

end A051033

/-! ## A051033.P7623033667222408629

`A074909(A000217(n)-floor(n/3))`
-/

namespace A051033.P7623033667222408629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A000217 n - ⌊(n : ℚ) / 3⌋).toNat

end

end A051033.P7623033667222408629

namespace A051033

/-- `A074909(A000217(n)-floor(n/3))` -/
def P7623033667222408629.Spec : Prop :=
  ∀ n, P7623033667222408629.a n = A051033 n

end A051033

/-! ## A051033.P18086296253366018507

`A074909(A000124(n)-(floor(n/3)+1))`
-/

namespace A051033.P18086296253366018507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A000124 n - (⌊(n : ℚ) / 3⌋ + 1)).toNat

end

end A051033.P18086296253366018507

namespace A051033

/-- `A074909(A000124(n)-(floor(n/3)+1))` -/
def P18086296253366018507.Spec : Prop :=
  ∀ n, P18086296253366018507.a n = A051033 n

end A051033

/-! ## A051033.P10233348334559999925

`A007318(floor(∑[γ²+n]))`
-/

namespace A051033.P10233348334559999925
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.eulerMascheroniConstant ^ 2 + (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat

end

end A051033.P10233348334559999925

namespace A051033

/-- `A007318(floor(∑[γ²+n]))` -/
def P10233348334559999925.Spec : Prop :=
  ∀ n, P10233348334559999925.a n = A051033 n

end A051033

/-! ## A051033.P15296504438955976759

`A135227(∑[n²%3]+∑[n])`
-/

namespace A051033.P15296504438955976759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135227 (∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A051033.P15296504438955976759

namespace A051033

/-- `A135227(∑[n²%3]+∑[n])` -/
def P15296504438955976759.Spec : Prop :=
  ∀ n, P15296504438955976759.a n = A051033 n

end A051033

/-! ## A051033.P6688405473858093809

`A061554(A171452(n+1))`
-/

namespace A051033.P6688405473858093809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 (A171452 (n + 1)).toNat

end

end A051033.P6688405473858093809

namespace A051033

/-- `A061554(A171452(n+1))` -/
def P6688405473858093809.Spec : Prop :=
  ∀ n, P6688405473858093809.a n = A051033 n

end A051033

/-! ## A051033.P872786603329771910

`A014473(A111097(n+1))+1`
-/

namespace A051033.P872786603329771910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A111097 (n + 1)).toNat + 1

end

end A051033.P872786603329771910

namespace A051033

/-- `A014473(A111097(n+1))+1` -/
def P872786603329771910.Spec : Prop :=
  ∀ n, P872786603329771910.a n = A051033 n

end A051033

/-! ## A051033.P6475650038880956245

`A132749(A000096(n)-floor(n/3))`
-/

namespace A051033.P6475650038880956245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 (A000096 n - ⌊(n : ℚ) / 3⌋).toNat

end

end A051033.P6475650038880956245

namespace A051033

/-- `A132749(A000096(n)-floor(n/3))` -/
def P6475650038880956245.Spec : Prop :=
  ∀ n, P6475650038880956245.a n = A051033 n

end A051033

/-! ## A051033.P1301783939803332177

`A061554(A000217(n+1)-A322042(n+2))`
-/

namespace A051033.P1301783939803332177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 (A000217 (n + 1) - A322042 (n + 2)).toNat

end

end A051033.P1301783939803332177

namespace A051033

/-- `A061554(A000217(n+1)-A322042(n+2))` -/
def P1301783939803332177.Spec : Prop :=
  ∀ n, P1301783939803332177.a n = A051033 n

end A051033

/-! ## A051033.P11688974980369379791

`A071919(A024401(n+1))`
-/

namespace A051033.P11688974980369379791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (A024401 (n + 1)).toNat

end

end A051033.P11688974980369379791

namespace A051033

/-- `A071919(A024401(n+1))` -/
def P11688974980369379791.Spec : Prop :=
  ∀ n, P11688974980369379791.a n = A051033 n

end A051033

/-! ## A051033.P2859329242441024939

`A071919(A002264(n)+∑[n+1])`
-/

namespace A051033.P2859329242441024939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (A002264 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A051033.P2859329242441024939

namespace A051033

/-- `A071919(A002264(n)+∑[n+1])` -/
def P2859329242441024939.Spec : Prop :=
  ∀ n, P2859329242441024939.a n = A051033 n

end A051033

/-! ## A051033.P5461736301882258898

`A152905(A240438(n+1)+n)`
-/

namespace A051033.P5461736301882258898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152905 (A240438 (n + 1) + (n : ℤ)).toNat

end

end A051033.P5461736301882258898

namespace A051033

/-- `A152905(A240438(n+1)+n)` -/
def P5461736301882258898.Spec : Prop :=
  ∀ n, P5461736301882258898.a n = A051033 n

end A051033

/-!
# A051035: Composite numbers which can be represented as the sum of two primes (i.e., A002808 excluding A025583).

The programs for A051035, the canonical program `A051035.P2378121049745272071` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051035 has offset 1).

The definition of A051035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9711 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051035.P15297567662529498955

`∪[A107986(n+1), A020739(n)]`
-/

namespace A051035.P15297567662529498955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051035.P15297567662529498955

namespace A051035

/-- `∪[A107986(n+1), A020739(n)]` -/
def P15297567662529498955.Spec : Prop :=
  ∀ n, (P15297567662529498955.a n : ℤ) = A051035 (n + 1)

end A051035

/-! ## A051035.P2378121049745272071

`filter[A014091(n+1), A005171(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A051035

/-- `filter[A014091(n+1), A005171(#)]` -/
def P2378121049745272071.Spec : Prop :=
  ∀ n, P2378121049745272071.a n = A051035 (n + 1)

theorem P2378121049745272071.correct : P2378121049745272071.Spec := by
  intro n
  simp only [A051035, Nat.add_sub_cancel]

end A051035

/-! ## A051035.P882844791670629554

`filter[A014091(n+1), A066247(#)]`
-/

namespace A051035.P882844791670629554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A051035.P882844791670629554

namespace A051035

/-- `filter[A014091(n+1), A066247(#)]` -/
def P882844791670629554.Spec : Prop :=
  ∀ n, P882844791670629554.a n = A051035 (n + 1)

end A051035

/-! ## A051035.P8665796270824187163

`filter[A014091(n+1), A283265(#)]`
-/

namespace A051035.P8665796270824187163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A051035.P8665796270824187163

namespace A051035

/-- `filter[A014091(n+1), A283265(#)]` -/
def P8665796270824187163.Spec : Prop :=
  ∀ n, P8665796270824187163.a n = A051035 (n + 1)

end A051035

/-! ## A051035.P13432730185226961704

`∩[A002808(n+1), A014091(n+1)]`
-/

namespace A051035.P13432730185226961704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051035.P13432730185226961704

namespace A051035

/-- `∩[A002808(n+1), A014091(n+1)]` -/
def P13432730185226961704.Spec : Prop :=
  ∀ n, (P13432730185226961704.a n : ℤ) = A051035 (n + 1)

end A051035

/-! ## A051035.P15428378825731133168

`∩[A014091(n+1), A018252(n+1)]`
-/

namespace A051035.P15428378825731133168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051035.P15428378825731133168

namespace A051035

/-- `∩[A014091(n+1), A018252(n+1)]` -/
def P15428378825731133168.Spec : Prop :=
  ∀ n, (P15428378825731133168.a n : ℤ) = A051035 (n + 1)

end A051035

/-! ## A051035.P7725669768032316526

`∩[A014091(n+1), A141468(n+1)]`
-/

namespace A051035.P7725669768032316526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051035.P7725669768032316526

namespace A051035

/-- `∩[A014091(n+1), A141468(n+1)]` -/
def P7725669768032316526.Spec : Prop :=
  ∀ n, (P7725669768032316526.a n : ℤ) = A051035 (n + 1)

end A051035

/-! ## A051035.P9264258789770689371

`∩[A014091(n+1), A079696(n+1)-1]`
-/

namespace A051035.P9264258789770689371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051035.P9264258789770689371

namespace A051035

/-- `∩[A014091(n+1), A079696(n+1)-1]` -/
def P9264258789770689371.Spec : Prop :=
  ∀ n, (P9264258789770689371.a n : ℤ) = A051035 (n + 1)

end A051035

/-! ## A051035.P1461256633050712968

`∩[A014091(n+1), A065090(n+1)]`
-/

namespace A051035.P1461256633050712968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051035.P1461256633050712968

namespace A051035

/-- `∩[A014091(n+1), A065090(n+1)]` -/
def P1461256633050712968.Spec : Prop :=
  ∀ n, (P1461256633050712968.a n : ℤ) = A051035 (n + 1)

end A051035

/-! ## A051035.P8102509189687330611

`∩[A014091(n+1), A171581(n+1)]`
-/

namespace A051035.P8102509189687330611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051035.P8102509189687330611

namespace A051035

/-- `∩[A014091(n+1), A171581(n+1)]` -/
def P8102509189687330611.Spec : Prop :=
  ∀ n, (P8102509189687330611.a n : ℤ) = A051035 (n + 1)

end A051035

/-! ## A051035.P850926904923142839

`∩[A014091(n+1), A173905(n+1)]`
-/

namespace A051035.P850926904923142839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051035.P850926904923142839

namespace A051035

/-- `∩[A014091(n+1), A173905(n+1)]` -/
def P850926904923142839.Spec : Prop :=
  ∀ n, (P850926904923142839.a n : ℤ) = A051035 (n + 1)

end A051035

/-! ## A051035.P12716067248856508319

`eq[2, A024935(n+2)]+2`
-/

namespace A051035.P12716067248856508319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024935 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A051035.P12716067248856508319

namespace A051035

/-- `eq[2, A024935(n+2)]+2` -/
def P12716067248856508319.Spec : Prop :=
  ∀ n, (P12716067248856508319.a n : ℤ) = A051035 (n + 1)

end A051035

/-! ## A051035.P6585297040122182774

`A009056(eq[2, A024935(n+2)])`
-/

namespace A051035.P6585297040122182774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024935 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051035.P6585297040122182774

namespace A051035

/-- `A009056(eq[2, A024935(n+2)])` -/
def P6585297040122182774.Spec : Prop :=
  ∀ n, P6585297040122182774.a n = A051035 (n + 1)

end A051035

/-! ## A051035.P9821768592984537840

`lt[1, A003415(n)*A061358(n)]`
-/

namespace A051035.P9821768592984537840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n * A061358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A051035.P9821768592984537840

namespace A051035

/-- `lt[1, A003415(n)*A061358(n)]` -/
def P9821768592984537840.Spec : Prop :=
  ∀ n, (P9821768592984537840.a n : ℤ) = A051035 (n + 1)

end A051035

/-! ## A051035.P7635573694789509338

`lt[char[A151800(n)], A061358(n)]`
-/

namespace A051035.P7635573694789509338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A051035.P7635573694789509338

namespace A051035

/-- `lt[char[A151800(n)], A061358(n)]` -/
def P7635573694789509338.Spec : Prop :=
  ∀ n, (P7635573694789509338.a n : ℤ) = A051035 (n + 1)

end A051035

/-! ## A051035.P15497955421395977516

`lt[char[A001097(n+1)], A061358(n)]`
-/

namespace A051035.P15497955421395977516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A051035.P15497955421395977516

namespace A051035

/-- `lt[char[A001097(n+1)], A061358(n)]` -/
def P15497955421395977516.Spec : Prop :=
  ∀ n, (P15497955421395977516.a n : ℤ) = A051035 (n + 1)

end A051035

/-! ## A051035.P17946390847649712904

`lt[char[A006512(n+1)], A061358(n)]`
-/

namespace A051035.P17946390847649712904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A051035.P17946390847649712904

namespace A051035

/-- `lt[char[A006512(n+1)], A061358(n)]` -/
def P17946390847649712904.Spec : Prop :=
  ∀ n, (P17946390847649712904.a n : ℤ) = A051035 (n + 1)

end A051035

/-! ## A051035.P11254119071740077502

`lt[char[A008578(n+1)], A061358(n)]`
-/

namespace A051035.P11254119071740077502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A051035.P11254119071740077502

namespace A051035

/-- `lt[char[A008578(n+1)], A061358(n)]` -/
def P11254119071740077502.Spec : Prop :=
  ∀ n, (P11254119071740077502.a n : ℤ) = A051035 (n + 1)

end A051035

/-! ## A051035.P11478495258891413864

`lt[char[A065091(n+1)], A061358(n)]`
-/

namespace A051035.P11478495258891413864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A051035.P11478495258891413864

namespace A051035

/-- `lt[char[A065091(n+1)], A061358(n)]` -/
def P11478495258891413864.Spec : Prop :=
  ∀ n, (P11478495258891413864.a n : ℤ) = A051035 (n + 1)

end A051035

/-! ## A051035.P162162741277722201

`lt[char[A077800(n+1)], A061358(n)]`
-/

namespace A051035.P162162741277722201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A051035.P162162741277722201

namespace A051035

/-- `lt[char[A077800(n+1)], A061358(n)]` -/
def P162162741277722201.Spec : Prop :=
  ∀ n, (P162162741277722201.a n : ℤ) = A051035 (n + 1)

end A051035

/-!
# A051036: a(n) = binomial(n, floor(n/4)).

The programs for A051036, the canonical program `A051036.P18202131986206384769` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051036 has offset 0).

The definition of A051036 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, floor(n/4))` (program `A051036.P18202131986206384769`, by `A051036.P18202131986206384769.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051036.P18202131986206384769

`C(n, floor(n/4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051036

/-- `C(n, floor(n/4))` -/
def P18202131986206384769.Spec : Prop :=
  ∀ n, (P18202131986206384769.a n : ℤ) = A051036 n

theorem P18202131986206384769.correct : P18202131986206384769.Spec := by
  intro n
  simp only [A051036]

end A051036

/-! ## A051036.P17953987895558636776

`A008311(floor(∑[(n+1)/2]))`
-/

namespace A051036.P17953987895558636776
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008311 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat

end

end A051036.P17953987895558636776

namespace A051036

/-- `A008311(floor(∑[(n+1)/2]))` -/
def P17953987895558636776.Spec : Prop :=
  ∀ n, P17953987895558636776.a n = A051036 n

end A051036

/-! ## A051036.P4109294732642958866

`A034869(floor(∑[(n+1)/2]))`
-/

namespace A051036.P4109294732642958866
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034869 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat

end

end A051036.P4109294732642958866

namespace A051036

/-- `A034869(floor(∑[(n+1)/2]))` -/
def P4109294732642958866.Spec : Prop :=
  ∀ n, P4109294732642958866.a n = A051036 n

end A051036

/-! ## A051036.P13599599780985682244

`A074909(∑[n]-floor(n/4))`
-/

namespace A051036.P13599599780985682244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊(n : ℚ) / 4⌋).toNat

end

end A051036.P13599599780985682244

namespace A051036

/-- `A074909(∑[n]-floor(n/4))` -/
def P13599599780985682244.Spec : Prop :=
  ∀ n, P13599599780985682244.a n = A051036 n

end A051036

/-! ## A051036.P9316839988847756835

`A007318(floor(∑[3/4+n]))`
-/

namespace A051036.P9316839988847756835
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 + (n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat

end

end A051036.P9316839988847756835

namespace A051036

/-- `A007318(floor(∑[3/4+n]))` -/
def P9316839988847756835.Spec : Prop :=
  ∀ n, P9316839988847756835.a n = A051036 n

end A051036

/-! ## A051036.P3581574417704266546

`A107430(∑[or(1, n)]-1)`
-/

namespace A051036.P3581574417704266546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107430 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A051036.P3581574417704266546

namespace A051036

/-- `A107430(∑[or(1, n)]-1)` -/
def P3581574417704266546.Spec : Prop :=
  ∀ n, P3581574417704266546.a n = A051036 n

end A051036

/-! ## A051036.P15225505432226249037

`A061554(∑[n%2+n])`
-/

namespace A051036.P15225505432226249037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051036.P15225505432226249037

namespace A051036

/-- `A061554(∑[n%2+n])` -/
def P15225505432226249037.Spec : Prop :=
  ∀ n, P15225505432226249037.a n = A051036 n

end A051036

/-! ## A051036.P2794875766051404717

`A061554(A194274(n))`
-/

namespace A051036.P2794875766051404717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 (A194274 n).toNat

end

end A051036.P2794875766051404717

namespace A051036

/-- `A061554(A194274(n))` -/
def P2794875766051404717.Spec : Prop :=
  ∀ n, P2794875766051404717.a n = A051036 n

end A051036

/-! ## A051036.P14006324193446768169

`A061554(A007590(n+1))`
-/

namespace A051036.P14006324193446768169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 (A007590 (n + 1)).toNat

end

end A051036.P14006324193446768169

namespace A051036

/-- `A061554(A007590(n+1))` -/
def P14006324193446768169.Spec : Prop :=
  ∀ n, P14006324193446768169.a n = A051036 n

end A051036

/-! ## A051036.P15895224919994226088

`A061554(A080476(n+1))`
-/

namespace A051036.P15895224919994226088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 (A080476 (n + 1)).toNat

end

end A051036.P15895224919994226088

namespace A051036

/-- `A061554(A080476(n+1))` -/
def P15895224919994226088.Spec : Prop :=
  ∀ n, P15895224919994226088.a n = A051036 n

end A051036

/-! ## A051036.P7440725427523075554

`A061554(A000982(n)+n)`
-/

namespace A051036.P7440725427523075554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 (A000982 n + (n : ℤ)).toNat

end

end A051036.P7440725427523075554

namespace A051036

/-- `A061554(A000982(n)+n)` -/
def P7440725427523075554.Spec : Prop :=
  ∀ n, P7440725427523075554.a n = A051036 n

end A051036

/-! ## A051036.P8330423672095592734

`A061554(∑[A000035(n)+n])`
-/

namespace A051036.P8330423672095592734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A051036.P8330423672095592734

namespace A051036

/-- `A061554(∑[A000035(n)+n])` -/
def P8330423672095592734.Spec : Prop :=
  ∀ n, P8330423672095592734.a n = A051036 n

end A051036

/-! ## A051036.P8427317064850505634

`A061554(2*A002620(n+1))`
-/

namespace A051036.P8427317064850505634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 (2 * A002620 (n + 1)).toNat

end

end A051036.P8427317064850505634

namespace A051036

/-- `A061554(2*A002620(n+1))` -/
def P8427317064850505634.Spec : Prop :=
  ∀ n, P8427317064850505634.a n = A051036 n

end A051036

/-! ## A051036.P5134995961746828032

`A061554(∑[∑[2*A000035(n)]])`
-/

namespace A051036.P5134995961746828032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A051036.P5134995961746828032

namespace A051036

/-- `A061554(∑[∑[2*A000035(n)]])` -/
def P5134995961746828032.Spec : Prop :=
  ∀ n, P5134995961746828032.a n = A051036 n

end A051036

/-! ## A051036.P519939141527062888

`A061554(∑[2*A004526(n+1)])`
-/

namespace A051036.P519939141527062888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A051036.P519939141527062888

namespace A051036

/-- `A061554(∑[2*A004526(n+1)])` -/
def P519939141527062888.Spec : Prop :=
  ∀ n, P519939141527062888.a n = A051036 n

end A051036

/-! ## A051036.P16943575183635142279

`A061554(A004526(n+1)+∑[n])`
-/

namespace A051036.P16943575183635142279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 (A004526 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A051036.P16943575183635142279

namespace A051036

/-- `A061554(A004526(n+1)+∑[n])` -/
def P16943575183635142279.Spec : Prop :=
  ∀ n, P16943575183635142279.a n = A051036 n

end A051036

/-! ## A051036.P17485512488893025748

`A061554(eq[1, A239303(n+1)])`
-/

namespace A051036.P17485512488893025748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051036.P17485512488893025748

namespace A051036

/-- `A061554(eq[1, A239303(n+1)])` -/
def P17485512488893025748.Spec : Prop :=
  ∀ n, P17485512488893025748.a n = A051036 n

end A051036

/-! ## A051036.P14478051049938980176

`A107430(A004526(n²)+n)`
-/

namespace A051036.P14478051049938980176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107430 (A004526 (n ^ 2) + (n : ℤ)).toNat

end

end A051036.P14478051049938980176

namespace A051036

/-- `A107430(A004526(n²)+n)` -/
def P14478051049938980176.Spec : Prop :=
  ∀ n, P14478051049938980176.a n = A051036 n

end A051036

/-!
# A051037: 5-smooth numbers, i.e., numbers whose prime divisors are all <= 5.

The programs for A051037, there is no canonical definition to state claims against.
-/

/-! ## A051037.P1953338884854212955

`A143207(n+1)/30`
-/

namespace A051037.P1953338884854212955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143207 (n + 1) : ℚ) / 30

end

end A051037.P1953338884854212955

/-! ## A051037.P15939713152141268565

`A080193(n+1)/5`
-/

namespace A051037.P15939713152141268565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080193 (n + 1) : ℚ) / 5

end

end A051037.P15939713152141268565

/-! ## A051037.P13538759198602077706

`A219794(n)+a(n-1)` with `a(0)=1`
-/

namespace A051037.P13538759198602077706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A219794 n + a (n - 1)

end

end A051037.P13538759198602077706

/-! ## A051037.P3745718879654825905

`∪[A143207(n+1), A257997(n+1)]`
-/

namespace A051037.P3745718879654825905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051037.P3745718879654825905

/-! ## A051037.P6805434302938453575

`∪[A337800(n+1), A080193(n+1)]`
-/

namespace A051037.P6805434302938453575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051037.P6805434302938453575

/-! ## A051037.P15267249195682324368

`∑[A219794(n+1)]+1-A219794(n+1)`
-/

namespace A051037.P15267249195682324368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A219794 (n + 1))

end

end A051037.P15267249195682324368

/-! ## A051037.P13395799117947849917

`A108651(n+1)/8`
-/

namespace A051037.P13395799117947849917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108651 (n + 1) : ℚ) / 8

end

end A051037.P13395799117947849917

/-! ## A051037.P3114555809522981313

`gcd(A080193(n+1), A108651(A181440(n+1)))`
-/

namespace A051037.P3114555809522981313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080193 (n + 1)) (A108651 (A181440 (n + 1)).toNat)

end

end A051037.P3114555809522981313

/-! ## A051037.P9753512478685232186

`∩[A002473(n+1), A143513(n+1)]`
-/

namespace A051037.P9753512478685232186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051037.P9753512478685232186

/-! ## A051037.P13915024351293442021

`∩[A002473(n+1), A068095(n+1)]`
-/

namespace A051037.P13915024351293442021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051037.P13915024351293442021

/-! ## A051037.P1978006744170832463

`∩[A068095(n+1), A143513(n+1)]`
-/

namespace A051037.P1978006744170832463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051037.P1978006744170832463

/-! ## A051037.P3102219503144765966

`∩[A097752(n+1), A143513(n+1)]`
-/

namespace A051037.P3102219503144765966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051037.P3102219503144765966

/-! ## A051037.P11302832310249181093

`∩[A051038(n+1), A068095(n+1)]`
-/

namespace A051037.P11302832310249181093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051037.P11302832310249181093

/-! ## A051037.P12293233288349302417

`∩[A051038(n+1), A143513(n+1)]`
-/

namespace A051037.P12293233288349302417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051037.P12293233288349302417

/-! ## A051037.P12949327277148804975

`∩[A068095(n+1), A084034(n+1)]`
-/

namespace A051037.P12949327277148804975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051037.P12949327277148804975

/-! ## A051037.P16122559336797342779

`∩[A084034(n+1), A143513(n+1)]`
-/

namespace A051037.P16122559336797342779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051037.P16122559336797342779

/-! ## A051037.P12115041791417992524

`∩[A080197(n+1), A143513(n+1)]`
-/

namespace A051037.P12115041791417992524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051037.P12115041791417992524

/-! ## A051037.P8345840690389408369

`∩[A033637(n+1), A068095(n+1)]`
-/

namespace A051037.P8345840690389408369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051037.P8345840690389408369

/-! ## A051037.P18119248247628125556

`∩[A033637(n+1), A143513(n+1)]`
-/

namespace A051037.P18119248247628125556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051037.P18119248247628125556

/-! ## A051037.P17765618990874886068

`∩[A033620(n+1), A068095(n+1)]`
-/

namespace A051037.P17765618990874886068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051037.P17765618990874886068

/-!
# A051038: 11-smooth numbers: numbers whose prime divisors are all <= 11.

The programs for A051038, there is no canonical definition to state claims against.
-/

/-! ## A051038.P6849860485985201026

`A080195(n+1)/11`
-/

namespace A051038.P6849860485985201026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080195 (n + 1) : ℚ) / 11

end

end A051038.P6849860485985201026

/-! ## A051038.P850615908072496350

`A147572(n+1)/A147572(gcd(n, A007947(n+1)))`
-/

namespace A051038.P850615908072496350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147572 (n + 1) : ℚ) / (A147572 (Int.gcd (n : ℤ) (A007947 (n + 1))) : ℚ)

end

end A051038.P850615908072496350

/-! ## A051038.P13067468396181978017

`∩[A080681(n+1), A084034(n+1)]`
-/

namespace A051038.P13067468396181978017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051038.P13067468396181978017

/-! ## A051038.P18054723394443921842

`∩[A080682(n+1), A084034(n+1)]`
-/

namespace A051038.P18054723394443921842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051038.P18054723394443921842

/-! ## A051038.P18315914312198236845

`lt[A061395(n+1), 6]+1`
-/

namespace A051038.P18315914312198236845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A051038.P18315914312198236845

/-! ## A051038.P5156903197094014996

`lt[A006530(n+1), 12]+1`
-/

namespace A051038.P5156903197094014996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A051038.P5156903197094014996

/-! ## A051038.P11913551340347900098

`lt[A006530(n*A000005(a(n-1))), 13]` with `a(0)=13`
-/

namespace A051038.P11913551340347900098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [13] fun n f1 =>
  A006530 ((n : ℤ) * A000005 (f1 (n - 1)).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051038.P11913551340347900098

/-! ## A051038.P574526958886936261

`record[A392598(n+1)]`
-/

namespace A051038.P574526958886936261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051038.P574526958886936261

/-! ## A051038.P18315106774222899615

`lt[n-2-A243291(n+1), 3]+1`
-/

namespace A051038.P18315106774222899615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 - A243291 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A051038.P18315106774222899615

/-! ## A051038.P11263756245616935007

`lt[(A014963(A053585(n+1))/8)², 2]+1`
-/

namespace A051038.P11263756245616935007
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A014963 (A053585 (n + 1)).toNat : ℚ) / 8) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A051038.P11263756245616935007

/-! ## A051038.P2525491018593129517

`record[A003964(n+1)/(A003964(n+1)-n)]`
-/

namespace A051038.P2525491018593129517
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003964 (n + 1) : ℚ) / (A003964 (n + 1) - (n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051038.P2525491018593129517

/-! ## A051038.P12769563026804716302

`record[A048841(n)/A006530(A048841(n))]`
-/

namespace A051038.P12769563026804716302
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048841 n : ℚ) / (A006530 (A048841 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051038.P12769563026804716302

/-! ## A051038.P11044032199434293053

`record[A008593(n+1)/A006530(A008593(n+1))]`
-/

namespace A051038.P11044032199434293053
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008593 (n + 1) : ℚ) / (A006530 (A008593 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051038.P11044032199434293053

/-! ## A051038.P14019826893751015664

`record[A317311(n+1)/A006530(A317311(n+1))]`
-/

namespace A051038.P14019826893751015664
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317311 (n + 1) : ℚ) / (A006530 (A317311 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051038.P14019826893751015664

/-! ## A051038.P18151055083229233507

`∩[A302492(n+1), A080197(n+1)]`
-/

namespace A051038.P18151055083229233507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051038.P18151055083229233507

/-! ## A051038.P546814560034773804

`∩[A302492(n+1), A084034(n+1)]`
-/

namespace A051038.P546814560034773804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051038.P546814560034773804

/-! ## A051038.P741949612019524118

`A052126(A080195(n+1))`
-/

namespace A051038.P741949612019524118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A080195 (n + 1)).toNat

end

end A051038.P741949612019524118

/-! ## A051038.P8087235588736549606

`A262115(2*A080195(n+1))`
-/

namespace A051038.P8087235588736549606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262115 (2 * A080195 (n + 1)).toNat

end

end A051038.P8087235588736549606

/-! ## A051038.P10379094892972793889

`A147572(n+1)/∏{p}[A147572(n+1), #]`
-/

namespace A051038.P10379094892972793889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147572 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147572 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ)

end

end A051038.P10379094892972793889

/-! ## A051038.P7725575427324849217

`record[A003963(A319985(n+1))]`
-/

namespace A051038.P7725575427324849217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A319985 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051038.P7725575427324849217

/-!
# A051039: 4-Stohr sequence.

The programs for A051039, the canonical program `A051039.P6786470407655246725` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051039 has offset 1).

The definition of A051039 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051039.P6786470407655246725

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=31`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051039

/-- `2*a(n-1)-a(n-2)` -/
def P6786470407655246725.Spec : Prop :=
  ∀ n, P6786470407655246725.a n = A051039 (n + 1)

theorem P6786470407655246725.correct : P6786470407655246725.Spec := by
  intro n
  simp only [A051039, Nat.add_sub_cancel]

end A051039

/-!
# A051040: 5-Stohr sequence.

The programs for A051040, the canonical program `A051040.P4183895774317396587` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051040 has offset 1).

The definition of A051040 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051040.P4183895774317396587

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=32, a(6)=63`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051040

/-- `2*a(n-1)-a(n-2)` -/
def P4183895774317396587.Spec : Prop :=
  ∀ n, P4183895774317396587.a n = A051040 (n + 1)

theorem P4183895774317396587.correct : P4183895774317396587.Spec := by
  intro n
  simp only [A051040, Nat.add_sub_cancel]

end A051040

/-!
# A051041: Number of squarefree quaternary words of length n.

The programs for A051041, there is no canonical definition to state claims against.
-/

/-! ## A051041.P8551351934367741939

`A214943(A034856(n+1))-floor(acot(n))`
-/

namespace A051041.P8551351934367741939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214943 (A034856 (n + 1)).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A051041.P8551351934367741939

/-! ## A051041.P9592034135179322803

`A214943(A034856(n+1))-A000007(n)`
-/

namespace A051041.P9592034135179322803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214943 (A034856 (n + 1)).toNat - A000007 n

end

end A051041.P9592034135179322803

/-! ## A051041.P15939495840961690021

`A214943(A034856(n+1))-A151933(n)`
-/

namespace A051041.P15939495840961690021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214943 (A034856 (n + 1)).toNat - A151933 n

end

end A051041.P15939495840961690021

/-! ## A051041.P7938698285765514252

`A214943(A034856(n+1))/A054977(n)`
-/

namespace A051041.P7938698285765514252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214943 (A034856 (n + 1)).toNat : ℚ) / (A054977 n : ℚ)

end

end A051041.P7938698285765514252

/-! ## A051041.P520938519393211052

`A214943(A034856(n+1))^A011611(n²)`
-/

namespace A051041.P520938519393211052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214943 (A034856 (n + 1)).toNat : ℚ) ^ (A011611 (n ^ 2) : ℤ)

end

end A051041.P520938519393211052

/-!
# A051042: Number of ternary cubefree words of length n.

The programs for A051042, there is no canonical definition to state claims against.
-/

/-! ## A051042.P7818819627670589520

`A248608(A120895(n+1))`
-/

namespace A051042.P7818819627670589520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248608 (A120895 (n + 1)).toNat

end

end A051042.P7818819627670589520

/-! ## A051042.P5682272985122742299

`A162036(n+1)-record[A352541(n)]`
-/

namespace A051042.P5682272985122742299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162036 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051042.P5682272985122742299

/-!
# A051043: Number of quaternary cubefree words of length n.

The programs for A051043, there is no canonical definition to state claims against.
-/

/-! ## A051043.P10454709077444754686

`and(A123620(n), A222253(A123620(n)))`
-/

namespace A051043.P10454709077444754686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A123620 n) (A222253 (A123620 n).toNat)

end

end A051043.P10454709077444754686

/-! ## A051043.P2991222145480947406

`A123620(n)-A241444(A241461(n+1))`
-/

namespace A051043.P2991222145480947406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123620 n - A241444 (A241461 (n + 1)).toNat

end

end A051043.P2991222145480947406

/-! ## A051043.P4587539168325794229

`A123620(n)-A241468(A000700(3*n+4))`
-/

namespace A051043.P4587539168325794229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123620 n - A241468 (A000700 (3 * n + 4)).toNat

end

end A051043.P4587539168325794229

/-!
# A051044: Odd values of the PartitionsQ function A000009.

The programs for A051044, there is no canonical definition to state claims against.
-/

/-! ## A051044.P2515158667370394166

`A000009(A001318(n))`
-/

namespace A051044.P2515158667370394166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A001318 n).toNat

end

end A051044.P2515158667370394166

/-! ## A051044.P1231732652679068394

`A000009(∑[gcd(n, ∑[n])])`
-/

namespace A051044.P1231732652679068394
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051044.P1231732652679068394

/-! ## A051044.P16898453159764495419

`A000009(∑[A026741(n)])`
-/

namespace A051044.P16898453159764495419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A051044.P16898453159764495419

/-! ## A051044.P5103614402300853079

`A000009(A319390(n)-1)`
-/

namespace A051044.P5103614402300853079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A319390 n - 1).toNat

end

end A051044.P5103614402300853079

/-! ## A051044.P8305490231610478897

`A000009(A152749(n)/2)`
-/

namespace A051044.P8305490231610478897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.roundAway ((A152749 n : ℚ) / 2)).toNat

end

end A051044.P8305490231610478897

/-! ## A051044.P7151659052658100674

`A000009(eq[1, A010815(n)²])`
-/

namespace A051044.P7151659052658100674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051044.P7151659052658100674

/-! ## A051044.P16319433178598617322

`A000009(eq[1, gcd(2, A000009(n))])`
-/

namespace A051044.P16319433178598617322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A000009 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A051044.P16319433178598617322

/-! ## A051044.P18297664398265474657

`A000009(A272104(2*(n+1))/2)`
-/

namespace A051044.P18297664398265474657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.roundAway ((A272104 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A051044.P18297664398265474657

/-! ## A051044.P1287180981950221993

`A000009(A074378(n)-A057569(n+1))`
-/

namespace A051044.P1287180981950221993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A074378 n - A057569 (n + 1)).toNat

end

end A051044.P1287180981950221993

/-! ## A051044.P670901317301283863

`A000009(A272212(n+1)+A272104(n+1))`
-/

namespace A051044.P670901317301283863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A272212 (n + 1) + A272104 (n + 1)).toNat

end

end A051044.P670901317301283863

/-! ## A051044.P6125190461194361172

`A035457(A152749(n))`
-/

namespace A051044.P6125190461194361172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A152749 n).toNat

end

end A051044.P6125190461194361172

/-! ## A051044.P13040810451178689281

`A035457(2*A001318(n))`
-/

namespace A051044.P13040810451178689281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * A001318 n).toNat

end

end A051044.P13040810451178689281

/-! ## A051044.P1013703945069970815

`A172033(2*A001318(n))`
-/

namespace A051044.P1013703945069970815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (2 * A001318 n).toNat

end

end A051044.P1013703945069970815

/-! ## A051044.P62053167064706828

`A172033(A001318(n)+A001318(n)+1)`
-/

namespace A051044.P62053167064706828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (A001318 n + (A001318 n + 1)).toNat

end

end A051044.P62053167064706828

/-!
# A051045: Number of distinct resistances possible for n resistors with resistances 1, 2, ..., n, each connected in series or parallel to the previous one.

The programs for A051045, there is no canonical definition to state claims against.
-/

/-! ## A051045.P5342677836081697573

`xor(1, A008621((n+3)!/6+(n+4)*a(n-1)))` with `a(0)=1`
-/

namespace A051045.P5342677836081697573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 (A008621 (SequenceMachineLib.roundAway ((Nat.factorial (n + 3) : ℚ) / 6 + ((n + 4 : ℤ) * a (n - 1) : ℚ))).toNat)

end

end A051045.P5342677836081697573

/-! ## A051045.P12257530986318808986

`A004001(A231556(n)+floor(7^(n/4)))`
-/

namespace A051045.P12257530986318808986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A231556 n + ⌊(7 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋).toNat

end

end A051045.P12257530986318808986

/-!
# A051047: For n > 5, a(n) = 15*a(n-1) - 15*a(n-2) + a(n-3); initial terms are 1, 3, 8, 120, 1680.

The programs for A051047, the canonical program `A051047.P17952875004202404441` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051047 has offset 1).

The definition of A051047 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051047.P17952875004202404441

`14*a(n-1)-a(n-2)+8` with `a(0)=1, a(1)=3, a(2)=8, a(3)=120`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051047

/-- `14*a(n-1)-a(n-2)+8` -/
def P17952875004202404441.Spec : Prop :=
  ∀ n, P17952875004202404441.a n = A051047 (n + 1)

theorem P17952875004202404441.correct : P17952875004202404441.Spec := by
  intro n
  simp only [A051047, Nat.add_sub_cancel]

end A051047

/-! ## A051047.P7219350953025461384

`A120892(2*n-A157928(n))`
-/

namespace A051047.P7219350953025461384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120892 ((2 * n : ℤ) - A157928 n).toNat

end

end A051047.P7219350953025461384

namespace A051047

/-- `A120892(2*n-A157928(n))` -/
def P7219350953025461384.Spec : Prop :=
  ∀ n, P7219350953025461384.a n = A051047 (n + 1)

end A051047

/-! ## A051047.P6954617174422101483

`A120892(n-A157928(n)+n)`
-/

namespace A051047.P6954617174422101483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120892 ((n : ℤ) - A157928 n + (n : ℤ)).toNat

end

end A051047.P6954617174422101483

namespace A051047

/-- `A120892(n-A157928(n)+n)` -/
def P6954617174422101483.Spec : Prop :=
  ∀ n, P6954617174422101483.a n = A051047 (n + 1)

end A051047

/-! ## A051047.P17594732057664112714

`A120892(n-(A157928(n)-n))`
-/

namespace A051047.P17594732057664112714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120892 ((n : ℤ) - (A157928 n - (n : ℤ))).toNat

end

end A051047.P17594732057664112714

namespace A051047

/-- `A120892(n-(A157928(n)-n))` -/
def P17594732057664112714.Spec : Prop :=
  ∀ n, P17594732057664112714.a n = A051047 (n + 1)

end A051047

/-! ## A051047.P5318593538799500503

`A120892(Δ[n²-A004275(n)])`
-/

namespace A051047.P5318593538799500503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A004275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120892 (f1 (n + 1) - f1 n).toNat

end

end A051047.P5318593538799500503

namespace A051047

/-- `A120892(Δ[n²-A004275(n)])` -/
def P5318593538799500503.Spec : Prop :=
  ∀ n, P5318593538799500503.a n = A051047 (n + 1)

end A051047

/-! ## A051047.P9395545663137741540

`A120892(A004275(n)+ceil(sin(n)²))`
-/

namespace A051047.P9395545663137741540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120892 (A004275 n + ⌈Real.sin (n : ℝ) ^ 2⌉).toNat

end

end A051047.P9395545663137741540

namespace A051047

/-- `A120892(A004275(n)+ceil(sin(n)²))` -/
def P9395545663137741540.Spec : Prop :=
  ∀ n, P9395545663137741540.a n = A051047 (n + 1)

end A051047

/-! ## A051047.P11481817285269192488

`A120892(A057427(n)+A004275(n))`
-/

namespace A051047.P11481817285269192488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120892 (A057427 n + A004275 n).toNat

end

end A051047.P11481817285269192488

namespace A051047

/-- `A120892(A057427(n)+A004275(n))` -/
def P11481817285269192488.Spec : Prop :=
  ∀ n, P11481817285269192488.a n = A051047 (n + 1)

end A051047

/-! ## A051047.P9455612873434574752

`A120892(A004273(n)-A159075(n))`
-/

namespace A051047.P9455612873434574752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120892 (A004273 n - A159075 n).toNat

end

end A051047.P9455612873434574752

namespace A051047

/-- `A120892(A004273(n)-A159075(n))` -/
def P9455612873434574752.Spec : Prop :=
  ∀ n, P9455612873434574752.a n = A051047 (n + 1)

end A051047

/-! ## A051047.P6895420710768541100

`A120892(A004273(n)+A159075(n)²)`
-/

namespace A051047.P6895420710768541100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120892 (A004273 n + A159075 n ^ 2).toNat

end

end A051047.P6895420710768541100

namespace A051047

/-- `A120892(A004273(n)+A159075(n)²)` -/
def P6895420710768541100.Spec : Prop :=
  ∀ n, P6895420710768541100.a n = A051047 (n + 1)

end A051047

/-!
# A051048: Sqrt[a(n)a(n+1)+1] of A051047.

The programs for A051048, there is no canonical definition to state claims against.
-/

/-! ## A051048.P398100690178761967

`record[p?[A060000(A233308(n))]]`
-/

namespace A051048.P398100690178761967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 (A233308 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051048.P398100690178761967

/-!
# A051049: Number of moves needed to solve an (n+1)-ring baguenaudier if two simultaneous moves of the two end rings are counted as one.

The programs for A051049, the canonical program `A051049.P4107407933189927976` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051049 has offset 0).

The definition of A051049 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051049.P4107407933189927976

`2^n-n%2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051049

/-- `2^n-n%2` -/
def P4107407933189927976.Spec : Prop :=
  ∀ n, P4107407933189927976.a n = A051049 n

theorem P4107407933189927976.correct : P4107407933189927976.Spec := by
  intro n
  simp only [A051049]

end A051049

/-! ## A051049.P3547510805646951024

`2^n-(1-(-1)^n)/2`
-/

namespace A051049.P3547510805646951024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) - (1 - (-1) ^ n : ℚ) / 2

end

end A051049.P3547510805646951024

namespace A051049

/-- `2^n-(1-(-1)^n)/2` -/
def P3547510805646951024.Spec : Prop :=
  ∀ n, P3547510805646951024.a n = (A051049 n : ℚ)

end A051049

/-! ## A051049.P5161467828074978921

`ogf((1-x+x^2)/(1-2x-x^2+2x^3))`
-/

namespace A051049.P5161467828074978921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, -2, -1, 2] n

end

end A051049.P5161467828074978921

namespace A051049

/-- `ogf((1-x+x^2)/(1-2x-x^2+2x^3))` -/
def P5161467828074978921.Spec : Prop :=
  ∀ n, P5161467828074978921.a n = A051049 n

end A051049

/-! ## A051049.P4592225590619969891

`∑[a(n-1)+2*a(n-2)]` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A051049.P4592225590619969891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3] fun n f1 =>
  f1 (n - 1) + 2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051049.P4592225590619969891

namespace A051049

/-- `∑[a(n-1)+2*a(n-2)]` -/
def P4592225590619969891.Spec : Prop :=
  ∀ n, (P4592225590619969891.a n : ℤ) = A051049 n

end A051049

/-! ## A051049.P5496045756857500491

`∑[a(n-1)+lcm(2, a(n-2))]` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A051049.P5496045756857500491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3] fun n f1 =>
  f1 (n - 1) + Nat.lcm 2 (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051049.P5496045756857500491

namespace A051049

/-- `∑[a(n-1)+lcm(2, a(n-2))]` -/
def P5496045756857500491.Spec : Prop :=
  ∀ n, (P5496045756857500491.a n : ℤ) = A051049 n

end A051049

/-! ## A051049.P11514321440516839707

`abs(a(n-1)+2*a(n-2)+1)` with `a(0)=1, a(1)=1`
-/

namespace A051049.P11514321440516839707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + 2 * a (n - 2) + 1

end

end A051049.P11514321440516839707

namespace A051049

/-- `abs(a(n-1)+2*a(n-2)+1)` -/
def P11514321440516839707.Spec : Prop :=
  ∀ n, (P11514321440516839707.a n : ℤ) = A051049 n

end A051049

/-! ## A051049.P13862926319176951976

`floor(2*a(n-2)+a(n-1)+1)` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A051049.P13862926319176951976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * a (n - 2) + (a (n - 1) + 1)

end

end A051049.P13862926319176951976

namespace A051049

/-- `floor(2*a(n-2)+a(n-1)+1)` -/
def P13862926319176951976.Spec : Prop :=
  ∀ n, (P13862926319176951976.a n : ℤ) = A051049 n

end A051049

/-! ## A051049.P2730378987552226078

`2*(a(n-2)+(a(n-1)+1)/2)` with `a(0)=1, a(1)=1`
-/

namespace A051049.P2730378987552226078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (a (n - 2) + (a (n - 1) + 1) / 2)

end

end A051049.P2730378987552226078

namespace A051049

/-- `2*(a(n-2)+(a(n-1)+1)/2)` -/
def P2730378987552226078.Spec : Prop :=
  ∀ n, P2730378987552226078.a n = (A051049 n : ℚ)

end A051049

/-! ## A051049.P6089317779235068894

`∑[a(n-2)+a(n-1)+a(n-2)]` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A051049.P6089317779235068894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3] fun n f1 =>
  f1 (n - 2) + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051049.P6089317779235068894

namespace A051049

/-- `∑[a(n-2)+a(n-1)+a(n-2)]` -/
def P6089317779235068894.Spec : Prop :=
  ∀ n, (P6089317779235068894.a n : ℤ) = A051049 n

end A051049

/-! ## A051049.P7934692958833690882

`floor(a(n-1)+a(n-2)+a(n-2)+1)` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A051049.P7934692958833690882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) + 1))

end

end A051049.P7934692958833690882

namespace A051049

/-- `floor(a(n-1)+a(n-2)+a(n-2)+1)` -/
def P7934692958833690882.Spec : Prop :=
  ∀ n, (P7934692958833690882.a n : ℤ) = A051049 n

end A051049

/-! ## A051049.P16035068142446591888

`abs(1-A052531(n))`
-/

namespace A051049.P16035068142446591888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A052531 n|

end

end A051049.P16035068142446591888

namespace A051049

/-- `abs(1-A052531(n))` -/
def P16035068142446591888.Spec : Prop :=
  ∀ n, P16035068142446591888.a n = A051049 n

end A051049

/-! ## A051049.P3133564690683506704

`A106624(A014601(n))`
-/

namespace A051049.P3133564690683506704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106624 (A014601 n).toNat

end

end A051049.P3133564690683506704

namespace A051049

/-- `A106624(A014601(n))` -/
def P3133564690683506704.Spec : Prop :=
  ∀ n, P3133564690683506704.a n = A051049 n

end A051049

/-! ## A051049.P2275117581826874368

`A056450(n)%A000051(n)`
-/

namespace A051049.P2275117581826874368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056450 n) (A000051 n)

end

end A051049.P2275117581826874368

namespace A051049

/-- `A056450(n)%A000051(n)` -/
def P2275117581826874368.Spec : Prop :=
  ∀ n, P2275117581826874368.a n = A051049 n

end A051049

/-! ## A051049.P829838475292482996

`A285475(n)%A052531(n)`
-/

namespace A051049.P829838475292482996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285475 n) (A052531 n)

end

end A051049.P829838475292482996

namespace A051049

/-- `A285475(n)%A052531(n)` -/
def P829838475292482996.Spec : Prop :=
  ∀ n, P829838475292482996.a n = A051049 n

end A051049

/-! ## A051049.P12585522493181595975

`gcd(A166926(n), A286773(n))`
-/

namespace A051049.P12585522493181595975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166926 n) (A286773 n)

end

end A051049.P12585522493181595975

namespace A051049

/-- `gcd(A166926(n), A286773(n))` -/
def P12585522493181595975.Spec : Prop :=
  ∀ n, (P12585522493181595975.a n : ℤ) = A051049 n

end A051049

/-! ## A051049.P2813186221603177548

`and(A280293(n), A285475(n))`
-/

namespace A051049.P2813186221603177548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A280293 n) (A285475 n)

end

end A051049.P2813186221603177548

namespace A051049

/-- `and(A280293(n), A285475(n))` -/
def P2813186221603177548.Spec : Prop :=
  ∀ n, P2813186221603177548.a n = A051049 n

end A051049

/-! ## A051049.P11294250989068402404

`and(A280293(n), A286675(n))`
-/

namespace A051049.P11294250989068402404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A280293 n) (A286675 n)

end

end A051049.P11294250989068402404

namespace A051049

/-- `and(A280293(n), A286675(n))` -/
def P11294250989068402404.Spec : Prop :=
  ∀ n, P11294250989068402404.a n = A051049 n

end A051049

/-! ## A051049.P6951419148714124818

`and(A285475(n), A289370(n))`
-/

namespace A051049.P6951419148714124818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285475 n) (A289370 n)

end

end A051049.P6951419148714124818

namespace A051049

/-- `and(A285475(n), A289370(n))` -/
def P6951419148714124818.Spec : Prop :=
  ∀ n, P6951419148714124818.a n = A051049 n

end A051049

/-! ## A051049.P4003373326236072269

`xor(A000035(n), A099430(n))`
-/

namespace A051049.P4003373326236072269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 n) (A099430 n)

end

end A051049.P4003373326236072269

namespace A051049

/-- `xor(A000035(n), A099430(n))` -/
def P4003373326236072269.Spec : Prop :=
  ∀ n, P4003373326236072269.a n = A051049 n

end A051049

/-! ## A051049.P14637174502420967621

`xor(A059841(n), A166977(n))`
-/

namespace A051049.P14637174502420967621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059841 n) (A166977 n)

end

end A051049.P14637174502420967621

namespace A051049

/-- `xor(A059841(n), A166977(n))` -/
def P14637174502420967621.Spec : Prop :=
  ∀ n, P14637174502420967621.a n = A051049 n

end A051049

/-!
# A051052: a(n) = binomial(n, floor(n/5)).

The programs for A051052, the canonical program `A051052.P961557295282439439` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051052 has offset 0).

The definition of A051052 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, floor(n/5))` (program `A051052.P961557295282439439`, by `A051052.P961557295282439439.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051052.P961557295282439439

`C(n, floor(n/5))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051052

/-- `C(n, floor(n/5))` -/
def P961557295282439439.Spec : Prop :=
  ∀ n, (P961557295282439439.a n : ℤ) = A051052 n

theorem P961557295282439439.correct : P961557295282439439.Spec := by
  intro n
  simp only [A051052]

end A051052

/-! ## A051052.P17901002143024204060

`A074909(∑[n]-A002266(n))`
-/

namespace A051052.P17901002143024204060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A002266 n).toNat

end

end A051052.P17901002143024204060

namespace A051052

/-- `A074909(∑[n]-A002266(n))` -/
def P17901002143024204060.Spec : Prop :=
  ∀ n, P17901002143024204060.a n = A051052 n

end A051052

/-! ## A051052.P5092544302467532905

`A074909(A002266(n)+C(n, 2))`
-/

namespace A051052.P5092544302467532905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A002266 n + (Nat.choose n 2 : ℤ)).toNat

end

end A051052.P5092544302467532905

namespace A051052

/-- `A074909(A002266(n)+C(n, 2))` -/
def P5092544302467532905.Spec : Prop :=
  ∀ n, P5092544302467532905.a n = A051052 n

end A051052

/-! ## A051052.P6141919682300134005

`A007318(floor(∑[n]+n/5))`
-/

namespace A051052.P6141919682300134005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (n : ℚ) / 5⌋.toNat

end

end A051052.P6141919682300134005

namespace A051052

/-- `A007318(floor(∑[n]+n/5))` -/
def P6141919682300134005.Spec : Prop :=
  ∀ n, P6141919682300134005.a n = A051052 n

end A051052

/-! ## A051052.P15143359558607098862

`A066704(A077169(n))`
-/

namespace A051052.P15143359558607098862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066704 (A077169 n).toNat

end

end A051052.P15143359558607098862

namespace A051052

/-- `A066704(A077169(n))` -/
def P15143359558607098862.Spec : Prop :=
  ∀ n, P15143359558607098862.a n = A051052 n

end A051052

/-! ## A051052.P11221667407834066142

`A107430(A057354(n)+A000217(n))`
-/

namespace A051052.P11221667407834066142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107430 (A057354 n + A000217 n).toNat

end

end A051052.P11221667407834066142

namespace A051052

/-- `A107430(A057354(n)+A000217(n))` -/
def P11221667407834066142.Spec : Prop :=
  ∀ n, P11221667407834066142.a n = A051052 n

end A051052

/-! ## A051052.P11955426450249433396

`A061554(A000096(n)-A057354(n))`
-/

namespace A051052.P11955426450249433396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 (A000096 n - A057354 n).toNat

end

end A051052.P11955426450249433396

namespace A051052

/-- `A061554(A000096(n)-A057354(n))` -/
def P11955426450249433396.Spec : Prop :=
  ∀ n, P11955426450249433396.a n = A051052 n

end A051052

/-! ## A051052.P10332400218138691245

`A071919(A059995(2*n)+∑[n+1])`
-/

namespace A051052.P10332400218138691245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (A059995 (2 * n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A051052.P10332400218138691245

namespace A051052

/-- `A071919(A059995(2*n)+∑[n+1])` -/
def P10332400218138691245.Spec : Prop :=
  ∀ n, P10332400218138691245.a n = A051052 n

end A051052

/-!
# A051053: a(n) = binomial(n, floor(n/6)).

The programs for A051053, the canonical program `A051053.P15845409228881226266` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051053 has offset 0).

The definition of A051053 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, floor(n/6))` (program `A051053.P15845409228881226266`, by `A051053.P15845409228881226266.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051053.P15845409228881226266

`C(n, floor(n/6))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051053

/-- `C(n, floor(n/6))` -/
def P15845409228881226266.Spec : Prop :=
  ∀ n, (P15845409228881226266.a n : ℤ) = A051053 n

theorem P15845409228881226266.correct : P15845409228881226266.Spec := by
  intro n
  simp only [A051053]

end A051053

/-! ## A051053.P16508330637816649664

`A007318(floor(∑[n]+n/6))`
-/

namespace A051053.P16508330637816649664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (n : ℚ) / 6⌋.toNat

end

end A051053.P16508330637816649664

namespace A051053

/-- `A007318(floor(∑[n]+n/6))` -/
def P16508330637816649664.Spec : Prop :=
  ∀ n, P16508330637816649664.a n = A051053 n

end A051053

/-! ## A051053.P1543160473171827338

`A061554(A111097(n+1))`
-/

namespace A051053.P1543160473171827338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 (A111097 (n + 1)).toNat

end

end A051053.P1543160473171827338

namespace A051053

/-- `A061554(A111097(n+1))` -/
def P1543160473171827338.Spec : Prop :=
  ∀ n, P1543160473171827338.a n = A051053 n

end A051053

/-! ## A051053.P2010357061384466357

`A061554(A389142(n+1))`
-/

namespace A051053.P2010357061384466357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 (A389142 (n + 1)).toNat

end

end A051053.P2010357061384466357

namespace A051053

/-- `A061554(A389142(n+1))` -/
def P2010357061384466357.Spec : Prop :=
  ∀ n, P2010357061384466357.a n = A051053 n

end A051053

/-! ## A051053.P12687979749551107549

`A061554(∑[n+1]-A008620(n))`
-/

namespace A051053.P12687979749551107549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A008620 n).toNat

end

end A051053.P12687979749551107549

namespace A051053

/-- `A061554(∑[n+1]-A008620(n))` -/
def P12687979749551107549.Spec : Prop :=
  ∀ n, P12687979749551107549.a n = A051053 n

end A051053

/-! ## A051053.P17269213998641604168

`A107430(A000096(n)-∑[n²%3])`
-/

namespace A051053.P17269213998641604168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107430 (A000096 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A051053.P17269213998641604168

namespace A051053

/-- `A107430(A000096(n)-∑[n²%3])` -/
def P17269213998641604168.Spec : Prop :=
  ∀ n, P17269213998641604168.a n = A051053 n

end A051053

/-! ## A051053.P12396489213016273489

`A061554(A322042(n+1)+A000217(n))`
-/

namespace A051053.P12396489213016273489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 (A322042 (n + 1) + A000217 n).toNat

end

end A051053.P12396489213016273489

namespace A051053

/-- `A061554(A322042(n+1)+A000217(n))` -/
def P12396489213016273489.Spec : Prop :=
  ∀ n, P12396489213016273489.a n = A051053 n

end A051053

/-! ## A051053.P11167764787525587092

`A097805(A097992(n)+∑[n+1])`
-/

namespace A051053.P11167764787525587092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A097992 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A051053.P11167764787525587092

namespace A051053

/-- `A097805(A097992(n)+∑[n+1])` -/
def P11167764787525587092.Spec : Prop :=
  ∀ n, P11167764787525587092.a n = A051053 n

end A051053

/-! ## A051053.P1869179640596613483

`A071919(A047368(n+1)+A000124(n))`
-/

namespace A051053.P1869179640596613483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (A047368 (n + 1) + A000124 n).toNat

end

end A051053.P1869179640596613483

namespace A051053

/-- `A071919(A047368(n+1)+A000124(n))` -/
def P1869179640596613483.Spec : Prop :=
  ∀ n, P1869179640596613483.a n = A051053 n

end A051053

/-! ## A051053.P15572662454781437384

`A097805(A047368(n+1)+A000124(n)+1)`
-/

namespace A051053.P15572662454781437384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A047368 (n + 1) + (A000124 n + 1)).toNat

end

end A051053.P15572662454781437384

namespace A051053

/-- `A097805(A047368(n+1)+A000124(n)+1)` -/
def P15572662454781437384.Spec : Prop :=
  ∀ n, P15572662454781437384.a n = A051053 n

end A051053

/-!
# A051055: 'Connected' alternating sign n X n matrices, i.e., not made from smaller blocks.

The programs for A051055, there is no canonical definition to state claims against.
-/

/-! ## A051055.P6615848112376990094

`A048996(A076176(n))-A293109(n)`
-/

namespace A051055.P6615848112376990094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048996 (A076176 n).toNat - A293109 n

end

end A051055.P6615848112376990094

/-!
# A051056: Record subsequence of b(3k), b()=A048142().

The programs for A051056, there is no canonical definition to state claims against.
-/

/-! ## A051056.P14302738369019093576

`A048142(3*n+1)`
-/

namespace A051056.P14302738369019093576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048142 (3 * n + 1)

end

end A051056.P14302738369019093576

/-! ## A051056.P4166911198019515160

`A048142(A016777(n))%(2^n)`
-/

namespace A051056.P4166911198019515160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048142 (A016777 n).toNat) (2 ^ n : ℤ)

end

end A051056.P4166911198019515160

/-! ## A051056.P989260228189522463

`(A096419(3*n+1)-A051059(n))/2`
-/

namespace A051056.P989260228189522463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096419 (3 * n + 1) - A051059 n : ℚ) / 2

end

end A051056.P989260228189522463

/-! ## A051056.P16475854379429699153

`(A096419(3*n+1)-A048141(3*n+1))/2`
-/

namespace A051056.P16475854379429699153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096419 (3 * n + 1) - A048141 (3 * n + 1) : ℚ) / 2

end

end A051056.P16475854379429699153

/-! ## A051056.P9959803581898025835

`A048142(A016777(n))*A178489(n)`
-/

namespace A051056.P9959803581898025835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048142 (A016777 n).toNat * A178489 n

end

end A051056.P9959803581898025835

/-!
# A051057: Record subsequence of b(3k+1), b()=A048142().

The programs for A051057, there is no canonical definition to state claims against.
-/

/-! ## A051057.P2010682476819082797

`A048142(3*n+2)`
-/

namespace A051057.P2010682476819082797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048142 (3 * n + 2)

end

end A051057.P2010682476819082797

/-! ## A051057.P16856439615611658152

`or(char[4], A048142(A016789(n)))`
-/

namespace A051057.P16856439615611658152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A048142 (A016789 n).toNat)

end

end A051057.P16856439615611658152

/-! ## A051057.P5584302510142067991

`(A096419(3*n+2)-A051060(n))/2`
-/

namespace A051057.P5584302510142067991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096419 (3 * n + 2) - A051060 n : ℚ) / 2

end

end A051057.P5584302510142067991

/-! ## A051057.P8777055171863982257

`A048142(A016789(n))*A057427(n)`
-/

namespace A051057.P8777055171863982257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048142 (A016789 n).toNat * A057427 n

end

end A051057.P8777055171863982257

/-! ## A051057.P4720290159731198270

`A048142(A016789(n))%A000032(n)`
-/

namespace A051057.P4720290159731198270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048142 (A016789 n).toNat) (A000032 n)

end

end A051057.P4720290159731198270

/-!
# A051058: Record subsequence of b(3k+2), b()=A048142().

The programs for A051058, there is no canonical definition to state claims against.
-/

/-! ## A051058.P11170235318977815065

`A048142(3*(n+1))`
-/

namespace A051058.P11170235318977815065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048142 (3 * (n + 1))

end

end A051058.P11170235318977815065

/-! ## A051058.P15493215098395331625

`or(char[10], A048142(A031193(n+1)))`
-/

namespace A051058.P15493215098395331625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A048142 (A031193 (n + 1)).toNat)

end

end A051058.P15493215098395331625

/-! ## A051058.P16802588819930858830

`A048142(A008486(n+1))%(2^n)`
-/

namespace A051058.P16802588819930858830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048142 (A008486 (n + 1)).toNat) (2 ^ n : ℤ)

end

end A051058.P16802588819930858830

/-! ## A051058.P10863565551114414710

`(A096419(3*(n+1))-A051061(n+1))/2`
-/

namespace A051058.P10863565551114414710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096419 (3 * (n + 1)) - A051061 (n + 1) : ℚ) / 2

end

end A051058.P10863565551114414710

/-! ## A051058.P9818411926117079481

`A048142(A031193(n+1))%A000032(n)`
-/

namespace A051058.P9818411926117079481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048142 (A031193 (n + 1)).toNat) (A000032 n)

end

end A051058.P9818411926117079481

/-!
# A051059: a(n) = A048141(3*n+1).

The programs for A051059, there is no canonical definition to state claims against.
-/

/-! ## A051059.P15054547568411380787

`A048141(3*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051059.P15054547568411380787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048141 (3 * n + 1)

end

end A051059.P15054547568411380787

/-! ## A051059.P9108903572513594963

`abs(1-A048141(Δ[n²]+n))+1`
-/

namespace A051059.P9108903572513594963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A048141 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat| + 1

end

end A051059.P9108903572513594963

/-! ## A051059.P280793024112134171

`or(char[1], A048141(A016777(n)))`
-/

namespace A051059.P280793024112134171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A048141 (A016777 n).toNat)

end

end A051059.P280793024112134171

/-! ## A051059.P16784788418553118703

`A048141(A016777(n))%A000051(n)`
-/

namespace A051059.P16784788418553118703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048141 (A016777 n).toNat) (A000051 n)

end

end A051059.P16784788418553118703

/-! ## A051059.P5702750321522905388

`gcd(A000038(n), A048141(A016777(n)))`
-/

namespace A051059.P5702750321522905388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A048141 (A016777 n).toNat)

end

end A051059.P5702750321522905388

/-! ## A051059.P14952681148707720504

`∑{d}[A048141(A016777(n)), A000010(#)]`
-/

namespace A051059.P14952681148707720504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048141 (A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A051059.P14952681148707720504

/-! ## A051059.P4132271848302761341

`A007318(∑[n])*A048141(A016777(n))`
-/

namespace A051059.P4132271848302761341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A048141 (A016777 n).toNat

end

end A051059.P4132271848302761341

/-! ## A051059.P17652454087518583726

`A048141(A016777(n))+A000038(n+1)`
-/

namespace A051059.P17652454087518583726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048141 (A016777 n).toNat + A000038 (n + 1)

end

end A051059.P17652454087518583726

/-! ## A051059.P984725001139173138

`A000045(and(2, n-3))!*A048141(A016777(n))`
-/

namespace A051059.P984725001139173138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000045 (Int.land 2 ((n : ℤ) - 3)).toNat).toNat : ℤ) * A048141 (A016777 n).toNat

end

end A051059.P984725001139173138

/-!
# A051060: a(n) = A048141(3*n+2).

The programs for A051060, there is no canonical definition to state claims against.
-/

/-! ## A051060.P6874610601760168629

`A048141(3*n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051060.P6874610601760168629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048141 (3 * n + 2)

end

end A051060.P6874610601760168629

/-! ## A051060.P10023174883102570662

`or(char[2], A048141(A016789(n)))`
-/

namespace A051060.P10023174883102570662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A048141 (A016789 n).toNat)

end

end A051060.P10023174883102570662

/-! ## A051060.P16114046873526870550

`A048141(A016789(n))*A054977(n)`
-/

namespace A051060.P16114046873526870550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048141 (A016789 n).toNat * A054977 n

end

end A051060.P16114046873526870550

/-! ## A051060.P5461361877500093945

`A048141(A016789(n))*A057427(n)`
-/

namespace A051060.P5461361877500093945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048141 (A016789 n).toNat * A057427 n

end

end A051060.P5461361877500093945

/-! ## A051060.P5014517204788736849

`A048141(A016789(n))%A000032(n)`
-/

namespace A051060.P5014517204788736849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048141 (A016789 n).toNat) (A000032 n)

end

end A051060.P5014517204788736849

/-! ## A051060.P12961572972160543642

`∑{d}[A048141(A016789(n)), A000010(#)]`
-/

namespace A051060.P12961572972160543642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048141 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A051060.P12961572972160543642

/-! ## A051060.P11181481410304658359

`A007318(∑[n])*A048141(A016789(n))`
-/

namespace A051060.P11181481410304658359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A048141 (A016789 n).toNat

end

end A051060.P11181481410304658359

/-! ## A051060.P9056079636446101029

`A048141(A016789(n))+A000007(n+1)`
-/

namespace A051060.P9056079636446101029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048141 (A016789 n).toNat + A000007 (n + 1)

end

end A051060.P9056079636446101029

/-! ## A051060.P14898771410571950262

`A048141(A016789(n))+A000038(n+1)`
-/

namespace A051060.P14898771410571950262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048141 (A016789 n).toNat + A000038 (n + 1)

end

end A051060.P14898771410571950262

/-! ## A051060.P11049765403597056739

`A000034(2*n)*A048141(A016789(n))`
-/

namespace A051060.P11049765403597056739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A048141 (A016789 n).toNat

end

end A051060.P11049765403597056739

/-!
# A051061: a(n) = A048141(3*n).

The programs for A051061, there is no canonical definition to state claims against.
-/

/-! ## A051061.P11793728408751646287

`A048141(3*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051061.P11793728408751646287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048141 (3 * (n + 1))

end

end A051061.P11793728408751646287

/-! ## A051061.P13361925535570448399

`or(char[8], A048141(A008486(n+1)))`
-/

namespace A051061.P13361925535570448399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A048141 (A008486 (n + 1)).toNat)

end

end A051061.P13361925535570448399

/-! ## A051061.P9051950391749413970

`or(char[8], A048141(A031193(n+1)))`
-/

namespace A051061.P9051950391749413970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A048141 (A031193 (n + 1)).toNat)

end

end A051061.P9051950391749413970

/-! ## A051061.P12177310327629341495

`A048141(A008486(n+1))%A000032(n)`
-/

namespace A051061.P12177310327629341495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048141 (A008486 (n + 1)).toNat) (A000032 n)

end

end A051061.P12177310327629341495

/-! ## A051061.P2911218174844089957

`A048141(A031193(n+1))%A000011(n)`
-/

namespace A051061.P2911218174844089957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048141 (A031193 (n + 1)).toNat) (A000011 n)

end

end A051061.P2911218174844089957

/-! ## A051061.P2063531233676378580

`and(A048141(A031193(n+1)), A057428(n))`
-/

namespace A051061.P2063531233676378580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048141 (A031193 (n + 1)).toNat) (A057428 n)

end

end A051061.P2063531233676378580

/-! ## A051061.P6592778002371484132

`∑{d}[A048141(A008486(n+1)), A000010(#)]`
-/

namespace A051061.P6592778002371484132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048141 (A008486 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A051061.P6592778002371484132

/-! ## A051061.P13124836343781050148

`A048141(A008486(n+1))+2%((-1)^A020639(n+1))`
-/

namespace A051061.P13124836343781050148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048141 (A008486 (n + 1)).toNat + Int.tmod 2 (SequenceMachineLib.roundAway ((-1 : ℚ) ^ (A020639 (n + 1) : ℤ)))

end

end A051061.P13124836343781050148

/-!
# A051062: a(n) = 16*n + 8.

The programs for A051062, the canonical program `A051062.P11177069363644223625` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051062 has offset 0).

The definition of A051062 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*n+8` (program `A051062.P11177069363644223625`, by `A051062.P11177069363644223625.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051062.P11177069363644223625

`16*n+8`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051062

/-- `16*n+8` -/
def P11177069363644223625.Spec : Prop :=
  ∀ n, (P11177069363644223625.a n : ℤ) = A051062 n

theorem P11177069363644223625.correct : P11177069363644223625.Spec := by
  intro n
  simp only [A051062]

end A051062

/-!
# A051063: 27*n+9 or 27*n+18.

The programs for A051063, the canonical program `A051063.P10942290841897667309` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051063 has offset 1).

The definition of A051063 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051063.P10942290841897667309

`27*n-a(n-1)` with `a(0)=9`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051063

/-- `27*n-a(n-1)` -/
def P10942290841897667309.Spec : Prop :=
  ∀ n, P10942290841897667309.a n = A051063 (n + 1)

theorem P10942290841897667309.correct : P10942290841897667309.Spec := by
  intro n
  simp only [A051063, Nat.add_sub_cancel]

end A051063

/-! ## A051063.P15243106278448723420

`9*comp[3*n]`
-/

namespace A051063.P15243106278448723420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A051063.P15243106278448723420

namespace A051063

/-- `9*comp[3*n]` -/
def P15243106278448723420.Spec : Prop :=
  ∀ n, (P15243106278448723420.a n : ℤ) = A051063 (n + 1)

end A051063

/-! ## A051063.P7887019115226343603

`record[lcm(9, n+1)]`
-/

namespace A051063.P7887019115226343603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 9 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051063.P7887019115226343603

namespace A051063

/-- `record[lcm(9, n+1)]` -/
def P7887019115226343603.Spec : Prop :=
  ∀ n, (P7887019115226343603.a n : ℤ) = A051063 (n + 1)

end A051063

/-! ## A051063.P5398682898928161230

`a(n-2)+27` with `a(0)=9, a(1)=18`
-/

namespace A051063.P5398682898928161230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9, 18] fun n a =>
  a (n - 2) + 27

end

end A051063.P5398682898928161230

namespace A051063

/-- `a(n-2)+27` -/
def P5398682898928161230.Spec : Prop :=
  ∀ n, (P5398682898928161230.a n : ℤ) = A051063 (n + 1)

end A051063

/-! ## A051063.P3198218219805637985

`record[3*lcm(3, 1-n)]`
-/

namespace A051063.P3198218219805637985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Int.lcm 3 (1 - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051063.P3198218219805637985

namespace A051063

/-- `record[3*lcm(3, 1-n)]` -/
def P3198218219805637985.Spec : Prop :=
  ∀ n, (P3198218219805637985.a n : ℤ) = A051063 (n + 1)

end A051063

/-! ## A051063.P324586785696386600

`∑[abs(a(n-2))]` with `a(0)=9, a(1)=9, a(2)=18`
-/

namespace A051063.P324586785696386600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9, 9, 18] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051063.P324586785696386600

namespace A051063

/-- `∑[abs(a(n-2))]` -/
def P324586785696386600.Spec : Prop :=
  ∀ n, (P324586785696386600.a n : ℤ) = A051063 (n + 1)

end A051063

/-! ## A051063.P4666979199448301876

`∑[27-a(n-1)]` with `a(0)=9, a(1)=9`
-/

namespace A051063.P4666979199448301876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9, 9] fun n f1 =>
  27 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051063.P4666979199448301876

namespace A051063

/-- `∑[27-a(n-1)]` -/
def P4666979199448301876.Spec : Prop :=
  ∀ n, P4666979199448301876.a n = A051063 (n + 1)

end A051063

/-! ## A051063.P7890443478606971825

`∑[∑[ogf((9+9x+9x^2)/(1+x))]]`
-/

namespace A051063.P7890443478606971825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, 9, 9] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051063.P7890443478606971825

namespace A051063

/-- `∑[∑[ogf((9+9x+9x^2)/(1+x))]]` -/
def P7890443478606971825.Spec : Prop :=
  ∀ n, P7890443478606971825.a n = A051063 (n + 1)

end A051063

/-! ## A051063.P8504263191651206535

`ogf((9+9x+9x^2)/(1-x-x^2+x^3))`
-/

namespace A051063.P8504263191651206535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, 9, 9] [1, -1, -1, 1] n

end

end A051063.P8504263191651206535

namespace A051063

/-- `ogf((9+9x+9x^2)/(1-x-x^2+x^3))` -/
def P8504263191651206535.Spec : Prop :=
  ∀ n, P8504263191651206535.a n = A051063 (n + 1)

end A051063

/-! ## A051063.P5022342569158394713

`record[(n+1)*dr(((n+2)*(n+3))²)]`
-/

namespace A051063.P5022342569158394713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * SequenceMachineLib.digitalRoot (((n + 2) * (n + 3)) ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051063.P5022342569158394713

namespace A051063

/-- `record[(n+1)*dr(((n+2)*(n+3))²)]` -/
def P5022342569158394713.Spec : Prop :=
  ∀ n, (P5022342569158394713.a n : ℤ) = A051063 (n + 1)

end A051063

/-! ## A051063.P10807598951506628735

`∑[A040073(n)]`
-/

namespace A051063.P10807598951506628735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051063.P10807598951506628735

namespace A051063

/-- `∑[A040073(n)]` -/
def P10807598951506628735.Spec : Prop :=
  ∀ n, P10807598951506628735.a n = A051063 (n + 1)

end A051063

/-! ## A051063.P14746762880671219527

`∑[3*A040007(n)]`
-/

namespace A051063.P14746762880671219527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A040007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051063.P14746762880671219527

namespace A051063

/-- `∑[3*A040007(n)]` -/
def P14746762880671219527.Spec : Prop :=
  ∀ n, P14746762880671219527.a n = A051063 (n + 1)

end A051063

/-! ## A051063.P2141590391309057230

`∑[A040307(n)/2]`
-/

namespace A051063.P2141590391309057230
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040307 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051063.P2141590391309057230

namespace A051063

/-- `∑[A040307(n)/2]` -/
def P2141590391309057230.Spec : Prop :=
  ∀ n, P2141590391309057230.a n = (A051063 (n + 1) : ℚ)

end A051063

/-! ## A051063.P160229100874266905

`∑[A040703(n)/3]`
-/

namespace A051063.P160229100874266905
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040703 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051063.P160229100874266905

namespace A051063

/-- `∑[A040703(n)/3]` -/
def P160229100874266905.Spec : Prop :=
  ∀ n, P160229100874266905.a n = (A051063 (n + 1) : ℚ)

end A051063

/-! ## A051063.P14525751650203041970

`∑[A010157(2*n)]+2*n+1`
-/

namespace A051063.P14525751650203041970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010157 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1 : ℤ)

end

end A051063.P14525751650203041970

namespace A051063

/-- `∑[A010157(2*n)]+2*n+1` -/
def P14525751650203041970.Spec : Prop :=
  ∀ n, P14525751650203041970.a n = A051063 (n + 1)

end A051063

/-! ## A051063.P12725663322218565395

`A212161(n)+A016885(n)`
-/

namespace A051063.P12725663322218565395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212161 n + A016885 n

end

end A051063.P12725663322218565395

namespace A051063

/-- `A212161(n)+A016885(n)` -/
def P12725663322218565395.Spec : Prop :=
  ∀ n, P12725663322218565395.a n = A051063 (n + 1)

end A051063

/-! ## A051063.P42589210654672375

`A147587(n)-A152832(n)`
-/

namespace A051063.P42589210654672375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147587 n - A152832 n

end

end A051063.P42589210654672375

namespace A051063

/-- `A147587(n)-A152832(n)` -/
def P42589210654672375.Spec : Prop :=
  ∀ n, P42589210654672375.a n = A051063 (n + 1)

end A051063

/-! ## A051063.P16963921986604494167

`A112651(n+1)+A004768(n)`
-/

namespace A051063.P16963921986604494167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112651 (n + 1) + A004768 n

end

end A051063.P16963921986604494167

namespace A051063

/-- `A112651(n+1)+A004768(n)` -/
def P16963921986604494167.Spec : Prop :=
  ∀ n, P16963921986604494167.a n = A051063 (n + 1)

end A051063

/-! ## A051063.P1063540940300679463

`A168409(n+1)+A017173(n)`
-/

namespace A051063.P1063540940300679463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168409 (n + 1) + A017173 n

end

end A051063.P1063540940300679463

namespace A051063

/-- `A168409(n+1)+A017173(n)` -/
def P1063540940300679463.Spec : Prop :=
  ∀ n, P1063540940300679463.a n = A051063 (n + 1)

end A051063

/-! ## A051063.P14953794026342932765

`A168411(n+1)+A017185(n)`
-/

namespace A051063.P14953794026342932765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168411 (n + 1) + A017185 n

end

end A051063.P14953794026342932765

namespace A051063

/-- `A168411(n+1)+A017185(n)` -/
def P14953794026342932765.Spec : Prop :=
  ∀ n, P14953794026342932765.a n = A051063 (n + 1)

end A051063

/-!
# A051064: 3^a(n) exactly divides 3n. Or, 3-adic valuation of 3n.

The programs for A051064, the canonical program `A051064.P9470330273706946210` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051064 has offset 1).

The definition of A051064 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051064.P2200002279448373946

`1+val(n+1, 3)`
-/

namespace A051064.P2200002279448373946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.valuation (n + 1) 3

end

end A051064.P2200002279448373946

namespace A051064

/-- `1+val(n+1, 3)` -/
def P2200002279448373946.Spec : Prop :=
  ∀ n, (P2200002279448373946.a n : ℤ) = A051064 (n + 1)

theorem P2200002279448373946.correct : P2200002279448373946.Spec := by
  intro n
  simp only [A051064, Nat.add_sub_cancel, A051064.P2200002279448373946.a, A051064.P9470330273706946210.a, A007949, A007949.P16509802526550351827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051064

/-! ## A051064.P9470330273706946210

`A007949(n+1)+1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A051064

/-- `A007949(n+1)+1` -/
def P9470330273706946210.Spec : Prop :=
  ∀ n, P9470330273706946210.a n = A051064 (n + 1)

theorem P9470330273706946210.correct : P9470330273706946210.Spec := by
  intro n
  simp only [A051064, Nat.add_sub_cancel]

end A051064

/-! ## A051064.P5526113058794041471

`1/2*(3-A053735(n+1)+A053735(n))`
-/

namespace A051064.P5526113058794041471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (3 - A053735 (n + 1) + A053735 n : ℚ)

end

end A051064.P5526113058794041471

namespace A051064

/-- `1/2*(3-A053735(n+1)+A053735(n))` -/
def P5526113058794041471.Spec : Prop :=
  ∀ n, P5526113058794041471.a n = (A051064 (n + 1) : ℚ)

end A051064

/-! ## A051064.P6285771144905597236

`A004128(n+1)-A004128(n)`
-/

namespace A051064.P6285771144905597236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 (n + 1) - A004128 n

end

end A051064.P6285771144905597236

namespace A051064

/-- `A004128(n+1)-A004128(n)` -/
def P6285771144905597236.Spec : Prop :=
  ∀ n, P6285771144905597236.a n = A051064 (n + 1)

end A051064

/-! ## A051064.P13849935384289550617

`val(4*n-(n-3), 3)`
-/

namespace A051064.P13849935384289550617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((4 * n : ℤ) - ((n : ℤ) - 3)).toNat 3

end

end A051064.P13849935384289550617

namespace A051064

/-- `val(4*n-(n-3), 3)` -/
def P13849935384289550617.Spec : Prop :=
  ∀ n, (P13849935384289550617.a n : ℤ) = A051064 (n + 1)

end A051064

/-! ## A051064.P17330209180395393155

`Δ[a(floor(n/3))+n]` with `a(0)=0`
-/

namespace A051064.P17330209180395393155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 3⌋.toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A051064.P17330209180395393155

namespace A051064

/-- `Δ[a(floor(n/3))+n]` -/
def P17330209180395393155.Spec : Prop :=
  ∀ n, P17330209180395393155.a n = A051064 (n + 1)

end A051064

/-! ## A051064.P8859792625073175491

`ceil(ratio[A054390(n)])`
-/

namespace A051064.P8859792625073175491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A051064.P8859792625073175491

namespace A051064

/-- `ceil(ratio[A054390(n)])` -/
def P8859792625073175491.Spec : Prop :=
  ∀ n, P8859792625073175491.a n = A051064 (n + 1)

end A051064

/-! ## A051064.P3635518930155250067

`ceil(ratio[A117535(n)])`
-/

namespace A051064.P3635518930155250067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117535 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A051064.P3635518930155250067

namespace A051064

/-- `ceil(ratio[A117535(n)])` -/
def P3635518930155250067.Spec : Prop :=
  ∀ n, P3635518930155250067.a n = A051064 (n + 1)

end A051064

/-! ## A051064.P3156534306783782867

`Δ[A054861(n)]+1`
-/

namespace A051064.P3156534306783782867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A051064.P3156534306783782867

namespace A051064

/-- `Δ[A054861(n)]+1` -/
def P3156534306783782867.Spec : Prop :=
  ∀ n, P3156534306783782867.a n = A051064 (n + 1)

end A051064

/-! ## A051064.P1367218049804032808

`A366922(n+1)-1`
-/

namespace A051064.P1367218049804032808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366922 (n + 1) - 1

end

end A051064.P1367218049804032808

namespace A051064

/-- `A366922(n+1)-1` -/
def P1367218049804032808.Spec : Prop :=
  ∀ n, P1367218049804032808.a n = A051064 (n + 1)

theorem P1367218049804032808.correct : P1367218049804032808.Spec := by
  intro n
  simp only [A051064, Nat.add_sub_cancel, A051064.P1367218049804032808.a, A051064.P9470330273706946210.a, A007949, A007949.P16509802526550351827.a, A366922, A366922.P8080897665247785144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051064

/-! ## A051064.P53201013655305131

`A351563(6*(n+1))`
-/

namespace A051064.P53201013655305131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351563 (6 * (n + 1))

end

end A051064.P53201013655305131

namespace A051064

/-- `A351563(6*(n+1))` -/
def P53201013655305131.Spec : Prop :=
  ∀ n, P53201013655305131.a n = A051064 (n + 1)

end A051064

/-! ## A051064.P330022133288475934

`A005496(val(n+1, 3))`
-/

namespace A051064.P330022133288475934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (SequenceMachineLib.valuation (n + 1) 3)

end

end A051064.P330022133288475934

namespace A051064

/-- `A005496(val(n+1, 3))` -/
def P330022133288475934.Spec : Prop :=
  ∀ n, P330022133288475934.a n = A051064 (n + 1)

end A051064

/-! ## A051064.P12190046663234796875

`A005555(val(n+1, 3))`
-/

namespace A051064.P12190046663234796875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (SequenceMachineLib.valuation (n + 1) 3)

end

end A051064.P12190046663234796875

namespace A051064

/-- `A005555(val(n+1, 3))` -/
def P12190046663234796875.Spec : Prop :=
  ∀ n, P12190046663234796875.a n = A051064 (n + 1)

end A051064

/-! ## A051064.P11694675461453334227

`log2(A318666(n+1))+1`
-/

namespace A051064.P11694675461453334227
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A318666 (n + 1) : ℝ) + 1

end

end A051064.P11694675461453334227

namespace A051064

/-- `log2(A318666(n+1))+1` -/
def P11694675461453334227.Spec : Prop :=
  ∀ n, P11694675461453334227.a n = (A051064 (n + 1) : ℝ)

end A051064

/-! ## A051064.P7687135784674563036

`Δ[A344853(n)/2]+1`
-/

namespace A051064.P7687135784674563036
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344853 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A051064.P7687135784674563036

namespace A051064

/-- `Δ[A344853(n)/2]+1` -/
def P7687135784674563036.Spec : Prop :=
  ∀ n, P7687135784674563036.a n = (A051064 (n + 1) : ℚ)

end A051064

/-! ## A051064.P15642974823314852806

`2-Δ[A230641(n)/2]`
-/

namespace A051064.P15642974823314852806
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230641 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A051064.P15642974823314852806

namespace A051064

/-- `2-Δ[A230641(n)/2]` -/
def P15642974823314852806.Spec : Prop :=
  ∀ n, P15642974823314852806.a n = (A051064 (n + 1) : ℚ)

end A051064

/-! ## A051064.P18163931391778833162

`A364222(n+1)/(n+1)`
-/

namespace A051064.P18163931391778833162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364222 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A051064.P18163931391778833162

namespace A051064

/-- `A364222(n+1)/(n+1)` -/
def P18163931391778833162.Spec : Prop :=
  ∀ n, P18163931391778833162.a n = (A051064 (n + 1) : ℚ)

end A051064

/-! ## A051064.P3629692000358388381

`floor(log(A038500(n+1)))+1`
-/

namespace A051064.P3629692000358388381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A038500 (n + 1) : ℝ)⌋ + 1

end

end A051064.P3629692000358388381

namespace A051064

/-- `floor(log(A038500(n+1)))+1` -/
def P3629692000358388381.Spec : Prop :=
  ∀ n, P3629692000358388381.a n = A051064 (n + 1)

end A051064

/-! ## A051064.P14774813875798916553

`ceil(log(A074724(n+1)))-1`
-/

namespace A051064.P14774813875798916553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A074724 (n + 1) : ℝ)⌉ - 1

end

end A051064.P14774813875798916553

namespace A051064

/-- `ceil(log(A074724(n+1)))-1` -/
def P14774813875798916553.Spec : Prop :=
  ∀ n, P14774813875798916553.a n = A051064 (n + 1)

end A051064

/-! ## A051064.P3234220205025136126

`A371638(n+1)-Δ[n²]`
-/

namespace A051064.P3234220205025136126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371638 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A051064.P3234220205025136126

namespace A051064

/-- `A371638(n+1)-Δ[n²]` -/
def P3234220205025136126.Spec : Prop :=
  ∀ n, P3234220205025136126.a n = A051064 (n + 1)

theorem P3234220205025136126.correct : P3234220205025136126.Spec := by
  intro n
  simp only [A051064, Nat.add_sub_cancel, A051064.P3234220205025136126.f1, A051064.P3234220205025136126.a, A051064.P9470330273706946210.a, A007949, A007949.P16509802526550351827.a, A371638, A371638.P3848879041737044132.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051064

/-!
# A051065: a(n) = A004128(n) mod 2.

The programs for A051065, the canonical program `A051065.P10336473871385333894` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051065 has offset 0).

The definition of A051065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051065.P10336473871385333894

`(a(floor(n/3))+n)%2` with `a(0)=0`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051065

/-- `(a(floor(n/3))+n)%2` -/
def P10336473871385333894.Spec : Prop :=
  ∀ n, (P10336473871385333894.a n : ℤ) = A051065 n

theorem P10336473871385333894.correct : P10336473871385333894.Spec := by
  intro n
  simp only [A051065]

end A051065

/-! ## A051065.P15409197052187807033

`(n-a(floor(n/3)))%2` with `a(0)=0`
-/

namespace A051065.P15409197052187807033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod ((n : ℤ) - a ⌊(n : ℚ) / 3⌋.toNat) 2

end

end A051065.P15409197052187807033

namespace A051065

/-- `(n-a(floor(n/3)))%2` -/
def P15409197052187807033.Spec : Prop :=
  ∀ n, P15409197052187807033.a n = A051065 n

end A051065

/-! ## A051065.P565416900377738732

`and(1, a(floor(n/3))+n)` with `a(0)=0`
-/

namespace A051065.P565416900377738732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.land 1 (a ⌊(n : ℚ) / 3⌋.toNat + n)

end

end A051065.P565416900377738732

namespace A051065

/-- `and(1, a(floor(n/3))+n)` -/
def P565416900377738732.Spec : Prop :=
  ∀ n, (P565416900377738732.a n : ℤ) = A051065 n

theorem P565416900377738732.correct : P565416900377738732.Spec := by
  intro n
  simp only [A051065, Nat.add_sub_cancel, A051065.P565416900377738732.a, A051065.P10336473871385333894.a, SequenceMachineLib.memo_apply]
  try simp

end A051065

/-! ## A051065.P6700781370479013970

`and(1, n-a(floor(n/3)))` with `a(0)=0`
-/

namespace A051065.P6700781370479013970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land 1 ((n : ℤ) - a ⌊(n : ℚ) / 3⌋.toNat)

end

end A051065.P6700781370479013970

namespace A051065

/-- `and(1, n-a(floor(n/3)))` -/
def P6700781370479013970.Spec : Prop :=
  ∀ n, P6700781370479013970.a n = A051065 n

end A051065

/-! ## A051065.P11485054135340577374

`xor(n%2, a(floor(n/3)))` with `a(0)=0`
-/

namespace A051065.P11485054135340577374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor (n % 2) (a ⌊(n : ℚ) / 3⌋.toNat)

end

end A051065.P11485054135340577374

namespace A051065

/-- `xor(n%2, a(floor(n/3)))` -/
def P11485054135340577374.Spec : Prop :=
  ∀ n, (P11485054135340577374.a n : ℤ) = A051065 n

end A051065

/-! ## A051065.P4176577925159603388

`and(1, xor(n, a(floor(n/3))))` with `a(0)=0`
-/

namespace A051065.P4176577925159603388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.land 1 (Nat.xor n (a ⌊(n : ℚ) / 3⌋.toNat))

end

end A051065.P4176577925159603388

namespace A051065

/-- `and(1, xor(n, a(floor(n/3))))` -/
def P4176577925159603388.Spec : Prop :=
  ∀ n, (P4176577925159603388.a n : ℤ) = A051065 n

end A051065

/-! ## A051065.P15604064652463712064

`A004128(n)%2`
-/

namespace A051065.P15604064652463712064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004128 n) 2

end

end A051065.P15604064652463712064

namespace A051065

/-- `A004128(n)%2` -/
def P15604064652463712064.Spec : Prop :=
  ∀ n, P15604064652463712064.a n = A051065 n

end A051065

/-! ## A051065.P7644685753550624362

`A051068(n)%2`
-/

namespace A051065.P7644685753550624362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051068 n) 2

end

end A051065.P7644685753550624362

namespace A051065

/-- `A051068(n)%2` -/
def P7644685753550624362.Spec : Prop :=
  ∀ n, P7644685753550624362.a n = A051065 n

end A051065

/-! ## A051065.P8434918303105047287

`A089792(n)%2`
-/

namespace A051065.P8434918303105047287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089792 n) 2

end

end A051065.P8434918303105047287

namespace A051065

/-- `A089792(n)%2` -/
def P8434918303105047287.Spec : Prop :=
  ∀ n, P8434918303105047287.a n = A051065 n

end A051065

/-! ## A051065.P16464529468001308247

`A105186(n)%2`
-/

namespace A051065.P16464529468001308247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105186 n) 2

end

end A051065.P16464529468001308247

namespace A051065

/-- `A105186(n)%2` -/
def P16464529468001308247.Spec : Prop :=
  ∀ n, P16464529468001308247.a n = A051065 n

end A051065

/-! ## A051065.P7514674882242547947

`A163325(n)%2`
-/

namespace A051065.P7514674882242547947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163325 n) 2

end

end A051065.P7514674882242547947

namespace A051065

/-- `A163325(n)%2` -/
def P7514674882242547947.Spec : Prop :=
  ∀ n, P7514674882242547947.a n = A051065 n

end A051065

/-! ## A051065.P18259046745421060642

`A163528(n)%2`
-/

namespace A051065.P18259046745421060642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163528 n) 2

end

end A051065.P18259046745421060642

namespace A051065

/-- `A163528(n)%2` -/
def P18259046745421060642.Spec : Prop :=
  ∀ n, P18259046745421060642.a n = A051065 n

end A051065

/-! ## A051065.P11406449993422835462

`∑[A014578(n)]%2`
-/

namespace A051065.P11406449993422835462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A051065.P11406449993422835462

namespace A051065

/-- `∑[A014578(n)]%2` -/
def P11406449993422835462.Spec : Prop :=
  ∀ n, P11406449993422835462.a n = A051065 n

end A051065

/-! ## A051065.P1443878325585047928

`∑[A163532(n)]%2`
-/

namespace A051065.P1443878325585047928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A051065.P1443878325585047928

namespace A051065

/-- `∑[A163532(n)]%2` -/
def P1443878325585047928.Spec : Prop :=
  ∀ n, P1443878325585047928.a n = A051065 n

end A051065

/-! ## A051065.P9847723261695218992

`A372095(n+1)%2`
-/

namespace A051065.P9847723261695218992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372095 (n + 1)) 2

end

end A051065.P9847723261695218992

namespace A051065

/-- `A372095(n+1)%2` -/
def P9847723261695218992.Spec : Prop :=
  ∀ n, P9847723261695218992.a n = A051065 n

end A051065

/-! ## A051065.P1572407360588934069

`(A054861(n)+n)%2`
-/

namespace A051065.P1572407360588934069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054861 n + (n : ℤ)) 2

end

end A051065.P1572407360588934069

namespace A051065

/-- `(A054861(n)+n)%2` -/
def P1572407360588934069.Spec : Prop :=
  ∀ n, P1572407360588934069.a n = A051065 n

end A051065

/-! ## A051065.P3870994048471864755

`1-(A163533(n)+a(n-1))` with `a(0)=0`
-/

namespace A051065.P3870994048471864755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (A163533 n + a (n - 1))

end

end A051065.P3870994048471864755

namespace A051065

/-- `1-(A163533(n)+a(n-1))` -/
def P3870994048471864755.Spec : Prop :=
  ∀ n, P3870994048471864755.a n = A051065 n

end A051065

/-! ## A051065.P17636968991450920301

`A000035(A051068(n))`
-/

namespace A051065.P17636968991450920301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A051068 n).toNat

end

end A051065.P17636968991450920301

namespace A051065

/-- `A000035(A051068(n))` -/
def P17636968991450920301.Spec : Prop :=
  ∀ n, P17636968991450920301.a n = A051065 n

end A051065

/-!
# A051066: Partial sums of A051065.

The programs for A051066, the canonical program `A051066.P11180252852596779216` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051066 has offset 0).

The definition of A051066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051066.P11180252852596779216

`∑[(a(floor(n/3))+n)%2]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051066

/-- `∑[(a(floor(n/3))+n)%2]` -/
def P11180252852596779216.Spec : Prop :=
  ∀ n, (P11180252852596779216.a n : ℤ) = A051066 n

theorem P11180252852596779216.correct : P11180252852596779216.Spec := by
  intro n
  simp only [A051066]

end A051066

/-! ## A051066.P18071056937534441690

`∑[(n-a(floor(n/3)))%2]` with `a(0)=0`
-/

namespace A051066.P18071056937534441690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.tmod ((n : ℤ) - f1 ⌊(n : ℚ) / 3⌋.toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051066.P18071056937534441690

namespace A051066

/-- `∑[(n-a(floor(n/3)))%2]` -/
def P18071056937534441690.Spec : Prop :=
  ∀ n, P18071056937534441690.a n = A051066 n

end A051066

/-! ## A051066.P9834177102065080081

`∑[and(1, a(floor(n/3))+n)]` with `a(0)=0`
-/

namespace A051066.P9834177102065080081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.land 1 (f1 ⌊(n : ℚ) / 3⌋.toNat + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051066.P9834177102065080081

namespace A051066

/-- `∑[and(1, a(floor(n/3))+n)]` -/
def P9834177102065080081.Spec : Prop :=
  ∀ n, (P9834177102065080081.a n : ℤ) = A051066 n

theorem P9834177102065080081.correct : P9834177102065080081.Spec := by
  intro n
  simp only [A051066, Nat.add_sub_cancel, A051066.P9834177102065080081.f1, A051066.P9834177102065080081.a, A051066.P11180252852596779216.f1, A051066.P11180252852596779216.a, SequenceMachineLib.memo_apply]
  try simp

end A051066

/-! ## A051066.P13413740774125778342

`∑[A051065(n)]`
-/

namespace A051066.P13413740774125778342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051066.P13413740774125778342

namespace A051066

/-- `∑[A051065(n)]` -/
def P13413740774125778342.Spec : Prop :=
  ∀ n, P13413740774125778342.a n = A051066 n

theorem P13413740774125778342.correct : P13413740774125778342.Spec := by
  intro n
  simp only [A051066, Nat.add_sub_cancel, A051066.P13413740774125778342.f1, A051066.P13413740774125778342.a, A051066.P11180252852596779216.f1, A051066.P11180252852596779216.a, A051065, A051065.P10336473871385333894.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051066

/-! ## A051066.P2038857035738793370

`∑[A004128(n)%2]`
-/

namespace A051066.P2038857035738793370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004128 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051066.P2038857035738793370

namespace A051066

/-- `∑[A004128(n)%2]` -/
def P2038857035738793370.Spec : Prop :=
  ∀ n, P2038857035738793370.a n = A051066 n

end A051066

/-! ## A051066.P15582383382421135690

`∑[A051068(n)%2]`
-/

namespace A051066.P15582383382421135690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051068 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051066.P15582383382421135690

namespace A051066

/-- `∑[A051068(n)%2]` -/
def P15582383382421135690.Spec : Prop :=
  ∀ n, P15582383382421135690.a n = A051066 n

end A051066

/-! ## A051066.P15262073173368608663

`∑[A089792(n)%2]`
-/

namespace A051066.P15262073173368608663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089792 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051066.P15262073173368608663

namespace A051066

/-- `∑[A089792(n)%2]` -/
def P15262073173368608663.Spec : Prop :=
  ∀ n, P15262073173368608663.a n = A051066 n

end A051066

/-! ## A051066.P1194641892929922406

`∑[A163325(n)%2]`
-/

namespace A051066.P1194641892929922406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163325 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051066.P1194641892929922406

namespace A051066

/-- `∑[A163325(n)%2]` -/
def P1194641892929922406.Spec : Prop :=
  ∀ n, P1194641892929922406.a n = A051066 n

end A051066

/-! ## A051066.P4894939165094941091

`∑[A163528(n)%2]`
-/

namespace A051066.P4894939165094941091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163528 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051066.P4894939165094941091

namespace A051066

/-- `∑[A163528(n)%2]` -/
def P4894939165094941091.Spec : Prop :=
  ∀ n, P4894939165094941091.a n = A051066 n

end A051066

/-! ## A051066.P7393319358542267196

`∑[(A054861(n)+n)%2]`
-/

namespace A051066.P7393319358542267196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054861 n + (n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051066.P7393319358542267196

namespace A051066

/-- `∑[(A054861(n)+n)%2]` -/
def P7393319358542267196.Spec : Prop :=
  ∀ n, P7393319358542267196.a n = A051066 n

end A051066

/-! ## A051066.P7530857776913146103

`n-(A163529(n)+a(n-1))` with `a(0)=0`
-/

namespace A051066.P7530857776913146103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - (A163529 n + a (n - 1))

end

end A051066.P7530857776913146103

namespace A051066

/-- `n-(A163529(n)+a(n-1))` -/
def P7530857776913146103.Spec : Prop :=
  ∀ n, P7530857776913146103.a n = A051066 n

end A051066

/-! ## A051066.P5621341556329795699

`∑[A000035(A163528(n))]`
-/

namespace A051066.P5621341556329795699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A163528 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051066.P5621341556329795699

namespace A051066

/-- `∑[A000035(A163528(n))]` -/
def P5621341556329795699.Spec : Prop :=
  ∀ n, P5621341556329795699.a n = A051066 n

end A051066

/-! ## A051066.P2058393296871673419

`∑[A000035(A004128(n))]`
-/

namespace A051066.P2058393296871673419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004128 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051066.P2058393296871673419

namespace A051066

/-- `∑[A000035(A004128(n))]` -/
def P2058393296871673419.Spec : Prop :=
  ∀ n, P2058393296871673419.a n = A051066 n

end A051066

/-! ## A051066.P12381377955105904206

`∑[A051067(2*n)]`
-/

namespace A051066.P12381377955105904206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051067 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051066.P12381377955105904206

namespace A051066

/-- `∑[A051067(2*n)]` -/
def P12381377955105904206.Spec : Prop :=
  ∀ n, P12381377955105904206.a n = A051066 n

end A051066

/-! ## A051066.P14043264011133763329

`A051067(n+n)+a(n-1)` with `a(0)=0`
-/

namespace A051066.P14043264011133763329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A051067 (n + n) + a (n - 1)

end

end A051066.P14043264011133763329

namespace A051066

/-- `A051067(n+n)+a(n-1)` -/
def P14043264011133763329.Spec : Prop :=
  ∀ n, P14043264011133763329.a n = A051066 n

end A051066

/-! ## A051066.P14315112428239906253

`∑[and(A004128(n), A227339(2*n+3))]`
-/

namespace A051066.P14315112428239906253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004128 n) (A227339 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051066.P14315112428239906253

namespace A051066

/-- `∑[and(A004128(n), A227339(2*n+3))]` -/
def P14315112428239906253.Spec : Prop :=
  ∀ n, P14315112428239906253.a n = A051066 n

end A051066

/-! ## A051066.P8191343695722728685

`∑[A054861(3*n)%2]`
-/

namespace A051066.P8191343695722728685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054861 (3 * n)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051066.P8191343695722728685

namespace A051066

/-- `∑[A054861(3*n)%2]` -/
def P8191343695722728685.Spec : Prop :=
  ∀ n, P8191343695722728685.a n = A051066 n

end A051066

/-! ## A051066.P3788894144911904429

`∑[∑[∑{d}[3*n², A001222(#)]]%2]`
-/

namespace A051066.P3788894144911904429
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), A001222 d

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051066.P3788894144911904429

namespace A051066

/-- `∑[∑[∑{d}[3*n², A001222(#)]]%2]` -/
def P3788894144911904429.Spec : Prop :=
  ∀ n, P3788894144911904429.a n = A051066 n

end A051066

/-!
# A051067: A051066 read mod 2.

The programs for A051067, the canonical program `A051067.P7192697901553181401` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051067 has offset 0).

The definition of A051067 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051067.P7192697901553181401

`∑[a(floor(n/3))+n]%2` with `a(0)=0`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051067

/-- `∑[a(floor(n/3))+n]%2` -/
def P7192697901553181401.Spec : Prop :=
  ∀ n, (P7192697901553181401.a n : ℤ) = A051067 n

theorem P7192697901553181401.correct : P7192697901553181401.Spec := by
  intro n
  simp only [A051067]

end A051067

/-! ## A051067.P13386054630491900138

`∑[n-a(floor(n/3))]%2` with `a(0)=0`
-/

namespace A051067.P13386054630491900138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - f1 ⌊(n : ℚ) / 3⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A051067.P13386054630491900138

namespace A051067

/-- `∑[n-a(floor(n/3))]%2` -/
def P13386054630491900138.Spec : Prop :=
  ∀ n, P13386054630491900138.a n = A051067 n

end A051067

/-! ## A051067.P3941419900641799188

`and(1, ∑[a(floor(n/3))+n])` with `a(0)=0`
-/

namespace A051067.P3941419900641799188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 3⌋.toNat + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051067.P3941419900641799188

namespace A051067

/-- `and(1, ∑[a(floor(n/3))+n])` -/
def P3941419900641799188.Spec : Prop :=
  ∀ n, (P3941419900641799188.a n : ℤ) = A051067 n

theorem P3941419900641799188.correct : P3941419900641799188.Spec := by
  intro n
  simp only [A051067, Nat.add_sub_cancel, A051067.P3941419900641799188.f1, A051067.P3941419900641799188.a, A051067.P7192697901553181401.f1, A051067.P7192697901553181401.a, SequenceMachineLib.memo_apply]
  try simp

end A051067

/-! ## A051067.P9038835386451228416

`A051066(n)%2`
-/

namespace A051067.P9038835386451228416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051066 n) 2

end

end A051067.P9038835386451228416

namespace A051067

/-- `A051066(n)%2` -/
def P9038835386451228416.Spec : Prop :=
  ∀ n, P9038835386451228416.a n = A051067 n

end A051067

/-! ## A051067.P17085427740505697573

`A122250(n)%2`
-/

namespace A051067.P17085427740505697573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122250 n) 2

end

end A051067.P17085427740505697573

namespace A051067

/-- `A122250(n)%2` -/
def P17085427740505697573.Spec : Prop :=
  ∀ n, P17085427740505697573.a n = A051067 n

end A051067

/-! ## A051067.P14592586266131074735

`∑[A004128(n)]%2`
-/

namespace A051067.P14592586266131074735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A051067.P14592586266131074735

namespace A051067

/-- `∑[A004128(n)]%2` -/
def P14592586266131074735.Spec : Prop :=
  ∀ n, P14592586266131074735.a n = A051067 n

end A051067

/-! ## A051067.P14999978684118543767

`∑[A051065(n)]%2`
-/

namespace A051067.P14999978684118543767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A051067.P14999978684118543767

namespace A051067

/-- `∑[A051065(n)]%2` -/
def P14999978684118543767.Spec : Prop :=
  ∀ n, P14999978684118543767.a n = A051067 n

end A051067

/-! ## A051067.P13240002491725122760

`∑[A089792(n)]%2`
-/

namespace A051067.P13240002491725122760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A051067.P13240002491725122760

namespace A051067

/-- `∑[A089792(n)]%2` -/
def P13240002491725122760.Spec : Prop :=
  ∀ n, P13240002491725122760.a n = A051067 n

end A051067

/-! ## A051067.P3840382183940699109

`∑[A105186(n)]%2`
-/

namespace A051067.P3840382183940699109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A051067.P3840382183940699109

namespace A051067

/-- `∑[A105186(n)]%2` -/
def P3840382183940699109.Spec : Prop :=
  ∀ n, P3840382183940699109.a n = A051067 n

end A051067

/-! ## A051067.P6770719934636237867

`∑[A163528(n)]%2`
-/

namespace A051067.P6770719934636237867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A051067.P6770719934636237867

namespace A051067

/-- `∑[A163528(n)]%2` -/
def P6770719934636237867.Spec : Prop :=
  ∀ n, P6770719934636237867.a n = A051067 n

end A051067

/-! ## A051067.P18406667973558883162

`∑[A054861(n)+n]%2`
-/

namespace A051067.P18406667973558883162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A051067.P18406667973558883162

namespace A051067

/-- `∑[A054861(n)+n]%2` -/
def P18406667973558883162.Spec : Prop :=
  ∀ n, P18406667973558883162.a n = A051067 n

end A051067

/-! ## A051067.P5796783624869898672

`∑[∑[val(A006863(n), 3)]]%2`
-/

namespace A051067.P5796783624869898672
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006863 n).toNat 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A051067.P5796783624869898672

namespace A051067

/-- `∑[∑[val(A006863(n), 3)]]%2` -/
def P5796783624869898672.Spec : Prop :=
  ∀ n, (P5796783624869898672.a n : ℤ) = A051067 n

end A051067

/-! ## A051067.P10099231399886617065

`A000035(A051066(n))`
-/

namespace A051067.P10099231399886617065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A051066 n).toNat

end

end A051067.P10099231399886617065

namespace A051067

/-- `A000035(A051066(n))` -/
def P10099231399886617065.Spec : Prop :=
  ∀ n, P10099231399886617065.a n = A051067 n

end A051067

/-! ## A051067.P6308570057009414248

`A000035(∑[A051065(n)])`
-/

namespace A051067.P6308570057009414248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A051067.P6308570057009414248

namespace A051067

/-- `A000035(∑[A051065(n)])` -/
def P6308570057009414248.Spec : Prop :=
  ∀ n, P6308570057009414248.a n = A051067 n

end A051067

/-! ## A051067.P2775333500134321717

`and(A007664(n), A051066(n))`
-/

namespace A051067.P2775333500134321717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007664 n) (A051066 n)

end

end A051067.P2775333500134321717

namespace A051067

/-- `and(A007664(n), A051066(n))` -/
def P2775333500134321717.Spec : Prop :=
  ∀ n, P2775333500134321717.a n = A051067 n

end A051067

/-! ## A051067.P265738051678843693

`and(A051066(n), A054977(n))`
-/

namespace A051067.P265738051678843693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051066 n) (A054977 n)

end

end A051067.P265738051678843693

namespace A051067

/-- `and(A051066(n), A054977(n))` -/
def P265738051678843693.Spec : Prop :=
  ∀ n, P265738051678843693.a n = A051067 n

end A051067

/-! ## A051067.P7730199918343127525

`and(A051066(n), A057427(n))`
-/

namespace A051067.P7730199918343127525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051066 n) (A057427 n)

end

end A051067.P7730199918343127525

namespace A051067

/-- `and(A051066(n), A057427(n))` -/
def P7730199918343127525.Spec : Prop :=
  ∀ n, P7730199918343127525.a n = A051067 n

end A051067

/-! ## A051067.P9414428158894114838

`and(1, A051066(n)²*A036086(n))`
-/

namespace A051067.P9414428158894114838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A051066 n ^ 2 * A036086 n)

end

end A051067.P9414428158894114838

namespace A051067

/-- `and(1, A051066(n)²*A036086(n))` -/
def P9414428158894114838.Spec : Prop :=
  ∀ n, P9414428158894114838.a n = A051067 n

end A051067

/-! ## A051067.P13732109366804255036

`and(∑[A004128(n)], A227339(2*n+3))`
-/

namespace A051067.P13732109366804255036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A227339 (2 * n + 3))

end

end A051067.P13732109366804255036

namespace A051067

/-- `and(∑[A004128(n)], A227339(2*n+3))` -/
def P13732109366804255036.Spec : Prop :=
  ∀ n, P13732109366804255036.a n = A051067 n

end A051067

/-! ## A051067.P1330159545507157738

`∑[A054861(3*n)]%2`
-/

namespace A051067.P1330159545507157738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A051067.P1330159545507157738

namespace A051067

/-- `∑[A054861(3*n)]%2` -/
def P1330159545507157738.Spec : Prop :=
  ∀ n, P1330159545507157738.a n = A051067 n

end A051067

/-!
# A051068: Partial sums of A014578.

The programs for A051068, the canonical program `A051068.P4319521893724831295` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051068 has offset 0).

The definition of A051068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051068.P4319521893724831295

`n-a(floor(n/3))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051068

/-- `n-a(floor(n/3))` -/
def P4319521893724831295.Spec : Prop :=
  ∀ n, P4319521893724831295.a n = A051068 n

theorem P4319521893724831295.correct : P4319521893724831295.Spec := by
  intro n
  simp only [A051068]

end A051068

/-! ## A051068.P16899251182654359467

`∑[1-a(val(n, 3)%2)]` with `a(0)=0`
-/

namespace A051068.P16899251182654359467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (SequenceMachineLib.valuation n 3 % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051068.P16899251182654359467

namespace A051068

/-- `∑[1-a(val(n, 3)%2)]` -/
def P16899251182654359467.Spec : Prop :=
  ∀ n, P16899251182654359467.a n = A051068 n

end A051068

/-! ## A051068.P8704600035430748051

`∑[1-a(∑[∑[n]]%n)]` with `a(0)=0`
-/

namespace A051068.P8704600035430748051
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051068.P8704600035430748051

namespace A051068

/-- `∑[1-a(∑[∑[n]]%n)]` -/
def P8704600035430748051.Spec : Prop :=
  ∀ n, P8704600035430748051.a n = A051068 n

end A051068

/-! ## A051068.P4403430958145783913

`∑[A014578(n)]`
-/

namespace A051068.P4403430958145783913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051068.P4403430958145783913

namespace A051068

/-- `∑[A014578(n)]` -/
def P4403430958145783913.Spec : Prop :=
  ∀ n, P4403430958145783913.a n = A051068 n

end A051068

/-! ## A051068.P8342672063546920429

`∑[abs(A163532(n))]`
-/

namespace A051068.P8342672063546920429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A163532 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051068.P8342672063546920429

namespace A051068

/-- `∑[abs(A163532(n))]` -/
def P8342672063546920429.Spec : Prop :=
  ∀ n, P8342672063546920429.a n = A051068 n

end A051068

/-! ## A051068.P2947119574961096960

`∑[abs(A163533(3*n))]`
-/

namespace A051068.P2947119574961096960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A163533 (3 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051068.P2947119574961096960

namespace A051068

/-- `∑[abs(A163533(3*n))]` -/
def P2947119574961096960.Spec : Prop :=
  ∀ n, P2947119574961096960.a n = A051068 n

end A051068

/-! ## A051068.P7474223972499701566

`∑[A163532(2*n)²]`
-/

namespace A051068.P7474223972499701566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163532 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051068.P7474223972499701566

namespace A051068

/-- `∑[A163532(2*n)²]` -/
def P7474223972499701566.Spec : Prop :=
  ∀ n, P7474223972499701566.a n = A051068 n

end A051068

/-! ## A051068.P11222255436959348465

`∑[char[A007417(n+1)]]`
-/

namespace A051068.P11222255436959348465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007417 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051068.P11222255436959348465

namespace A051068

/-- `∑[char[A007417(n+1)]]` -/
def P11222255436959348465.Spec : Prop :=
  ∀ n, (P11222255436959348465.a n : ℤ) = A051068 n

end A051068

/-! ## A051068.P1899907406885089724

`n-∑[abs(A163533(n))]`
-/

namespace A051068.P1899907406885089724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A163533 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051068.P1899907406885089724

namespace A051068

/-- `n-∑[abs(A163533(n))]` -/
def P1899907406885089724.Spec : Prop :=
  ∀ n, P1899907406885089724.a n = A051068 n

end A051068

/-! ## A051068.P5160761273912455377

`n-∑[A163533(2*n)²]`
-/

namespace A051068.P5160761273912455377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163533 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051068.P5160761273912455377

namespace A051068

/-- `n-∑[A163533(2*n)²]` -/
def P5160761273912455377.Spec : Prop :=
  ∀ n, P5160761273912455377.a n = A051068 n

end A051068

/-! ## A051068.P5568376174871124799

`a(n-1)+1-A182581(n)` with `a(0)=0`
-/

namespace A051068.P5568376174871124799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (1 - A182581 n)

end

end A051068.P5568376174871124799

namespace A051068

/-- `a(n-1)+1-A182581(n)` -/
def P5568376174871124799.Spec : Prop :=
  ∀ n, P5568376174871124799.a n = A051068 n

end A051068

/-! ## A051068.P10304847663619003595

`n-∑[char[A092401(2*(n+1))]]`
-/

namespace A051068.P10304847663619003595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092401 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051068.P10304847663619003595

namespace A051068

/-- `n-∑[char[A092401(2*(n+1))]]` -/
def P10304847663619003595.Spec : Prop :=
  ∀ n, P10304847663619003595.a n = A051068 n

end A051068

/-! ## A051068.P5283987722914165748

`A050294(n+1)-A014578(n+1)`
-/

namespace A051068.P5283987722914165748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050294 (n + 1) - A014578 (n + 1)

end

end A051068.P5283987722914165748

namespace A051068

/-- `A050294(n+1)-A014578(n+1)` -/
def P5283987722914165748.Spec : Prop :=
  ∀ n, P5283987722914165748.a n = A051068 n

end A051068

/-! ## A051068.P4239303910846970390

`A182581(n+1)-∑[A182581(n+1)]+n`
-/

namespace A051068.P4239303910846970390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182581 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A051068.P4239303910846970390

namespace A051068

/-- `A182581(n+1)-∑[A182581(n+1)]+n` -/
def P4239303910846970390.Spec : Prop :=
  ∀ n, P4239303910846970390.a n = A051068 n

end A051068

/-! ## A051068.P11598404903705604696

`A050294(n+1)-A163532(n+1)*A163532(n+1)`
-/

namespace A051068.P11598404903705604696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050294 (n + 1) - A163532 (n + 1) * A163532 (n + 1)

end

end A051068.P11598404903705604696

namespace A051068

/-- `A050294(n+1)-A163532(n+1)*A163532(n+1)` -/
def P11598404903705604696.Spec : Prop :=
  ∀ n, P11598404903705604696.a n = A051068 n

end A051068

/-! ## A051068.P14233379122100248367

`∑[char[A092401(2*n+1)]]`
-/

namespace A051068.P14233379122100248367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092401 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051068.P14233379122100248367

namespace A051068

/-- `∑[char[A092401(2*n+1)]]` -/
def P14233379122100248367.Spec : Prop :=
  ∀ n, (P14233379122100248367.a n : ℤ) = A051068 n

end A051068

/-! ## A051068.P15387680819469389520

`∑[char[(n+1)*A038500(n+1)]]`
-/

namespace A051068.P15387680819469389520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A038500 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051068.P15387680819469389520

namespace A051068

/-- `∑[char[(n+1)*A038500(n+1)]]` -/
def P15387680819469389520.Spec : Prop :=
  ∀ n, (P15387680819469389520.a n : ℤ) = A051068 n

end A051068

/-! ## A051068.P12278581247821670569

`A186444(3*n+1)`
-/

namespace A051068.P12278581247821670569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186444 (3 * n + 1)

end

end A051068.P12278581247821670569

namespace A051068

/-- `A186444(3*n+1)` -/
def P12278581247821670569.Spec : Prop :=
  ∀ n, P12278581247821670569.a n = A051068 n

end A051068

/-!
# A051070: a(n) is the n-th term in sequence A_n, respecting the offset, or a(n) = -1 if A_n has fewer than n terms.

The programs for A051070, there is no canonical definition to state claims against.
-/

/-! ## A051070.P17108899761913214446

`A107357(n+1)-1`
-/

namespace A051070.P17108899761913214446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107357 (n + 1) - 1

end

end A051070.P17108899761913214446

/-! ## A051070.P8960825293083022111

`A232500(round(n/(n+1)))+A107357(n+1)`
-/

namespace A051070.P8960825293083022111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232500 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat + A107357 (n + 1)

end

end A051070.P8960825293083022111

/-! ## A051070.P14087022762036930230

`A250221(A053169(n+1))+A107357(n+1)`
-/

namespace A051070.P14087022762036930230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250221 (A053169 (n + 1)).toNat + A107357 (n + 1)

end

end A051070.P14087022762036930230

/-! ## A051070.P3795216164218493458

`A340142(A340113(n+1))+A107357(n+1)`
-/

namespace A051070.P3795216164218493458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340142 (A340113 (n + 1)).toNat + A107357 (n + 1)

end

end A051070.P3795216164218493458

/-! ## A051070.P12176025850267063798

`A340142(p?[A259145(n+1)])+A107357(n+1)`
-/

namespace A051070.P12176025850267063798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340142 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A107357 (n + 1)

end

end A051070.P12176025850267063798

/-!
# A051071: Primes p such that x^4 = -2 has a solution mod p.

The programs for A051071, there is no canonical definition to state claims against.
-/

/-! ## A051071.P11951539632019426390

`∪[A014754(n+1), A045339(n+1)]`
-/

namespace A051071.P11951539632019426390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051071.P11951539632019426390

/-! ## A051071.P13391643192399472881

`∪[A014754(n+1), A051073(n+1)]`
-/

namespace A051071.P13391643192399472881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051071.P13391643192399472881

/-! ## A051071.P1468506717189211880

`∪[A014754(n+1), A051077(n+1)]`
-/

namespace A051071.P1468506717189211880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051071.P1468506717189211880

/-! ## A051071.P4154385440670501598

`∪[A014754(n+1), A051085(n+1)]`
-/

namespace A051071.P4154385440670501598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051071.P4154385440670501598

/-! ## A051071.P8721841766931881165

`A112417(∪[A007520(n+1), A051095(n+1)])`
-/

namespace A051071.P8721841766931881165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051095 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112417 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A051071.P8721841766931881165

/-! ## A051071.P1950053862264108196

`A112417(∪[A045339(n+1), A051095(n+1)])`
-/

namespace A051071.P1950053862264108196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051095 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112417 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A051071.P1950053862264108196

/-! ## A051071.P16321340019670175471

`A112417(∪[A051085(n+1), A051095(n+1)])`
-/

namespace A051071.P16321340019670175471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051095 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112417 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A051071.P16321340019670175471

/-! ## A051071.P4367044931322772885

`∪[A051073(n+1), A112417(A051095(n+2))]`
-/

namespace A051071.P4367044931322772885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112417 (A051095 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051071.P4367044931322772885

/-!
# A051072: Primes p such that x^6 = -2 has a solution mod p.

The programs for A051072, there is no canonical definition to state claims against.
-/

/-! ## A051072.P6457771882199978984

`∩[A033203(n+1), A040028(n+1)]`
-/

namespace A051072.P6457771882199978984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051072.P6457771882199978984

/-! ## A051072.P7629142567096204487

`∩[A040028(n+1), A341784(n+1)]`
-/

namespace A051072.P7629142567096204487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051072.P7629142567096204487

/-! ## A051072.P16925567009615088987

`∩[A034031(n+1), A040028(n+1)]`
-/

namespace A051072.P16925567009615088987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051072.P16925567009615088987

/-! ## A051072.P4859696623367145577

`∩[A040028(n+1), A057127(n+1)]`
-/

namespace A051072.P4859696623367145577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051072.P4859696623367145577

/-! ## A051072.P13695997884911081005

`∩[A034034(n+1), A040028(n+1)]`
-/

namespace A051072.P13695997884911081005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051072.P13695997884911081005

/-! ## A051072.P4579081987198179702

`∩[A002479(n+1), A040028(n+1)]`
-/

namespace A051072.P4579081987198179702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051072.P4579081987198179702

/-! ## A051072.P14725386726745915293

`∩[A033203(n+1), A057760(n+1)]`
-/

namespace A051072.P14725386726745915293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051072.P14725386726745915293

/-! ## A051072.P7361092155271965013

`∩[A040028(n+1), A047475(n+1)]`
-/

namespace A051072.P7361092155271965013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051072.P7361092155271965013

/-! ## A051072.P4185179575371404332

`∩[A040028(n+1), A047404(n+1)]`
-/

namespace A051072.P4185179575371404332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051072.P4185179575371404332

/-! ## A051072.P14711887894499459856

`∩[A040028(n+1), A047454(n+1)]`
-/

namespace A051072.P14711887894499459856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051072.P14711887894499459856

/-! ## A051072.P12492713504361514716

`∩[A040028(n+1), A047476(n+1)]`
-/

namespace A051072.P12492713504361514716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051072.P12492713504361514716

/-! ## A051072.P14918461515244001730

`∩[A040028(n+1), A047527(n+1)+1]`
-/

namespace A051072.P14918461515244001730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047527 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051072.P14918461515244001730

/-! ## A051072.P8873508539458225921

`filter[A040028(n+1), A342892(#)]`
-/

namespace A051072.P8873508539458225921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342892 (f1 j).toNat = 1) n)

end

end A051072.P8873508539458225921

/-! ## A051072.P3306233788680475136

`∩[A040028(n+1), A047542(n+1)+2]`
-/

namespace A051072.P3306233788680475136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047542 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051072.P3306233788680475136

/-! ## A051072.P17532952133515583279

`∩[A040028(n+1), A047555(n+1)+2]`
-/

namespace A051072.P17532952133515583279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047555 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051072.P17532952133515583279

/-! ## A051072.P7684198116572519890

`∩[A040028(n+1), A047405(n+1)]`
-/

namespace A051072.P7684198116572519890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051072.P7684198116572519890

/-! ## A051072.P13010149678022933332

`∩[A040028(n+1), A047419(n+1)]`
-/

namespace A051072.P13010149678022933332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051072.P13010149678022933332

/-! ## A051072.P13643805996661912775

`∩[A040028(n+1), A047453(n+1)]`
-/

namespace A051072.P13643805996661912775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051072.P13643805996661912775

/-! ## A051072.P4678907843925876682

`∩[A040028(n+1), A047420(n+1)]`
-/

namespace A051072.P4678907843925876682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051072.P4678907843925876682

/-! ## A051072.P5415114745787963725

`∩[A040028(n+1), A047513(n+1)+2]`
-/

namespace A051072.P5415114745787963725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051072.P5415114745787963725

/-!
# A051073: Primes p such that x^8 = -2 has a solution mod p.

The programs for A051073, there is no canonical definition to state claims against.
-/

/-! ## A051073.P6540445699499304844

`∪[A051077(n+1), A252279(n+1)]`
-/

namespace A051073.P6540445699499304844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051073.P6540445699499304844

/-! ## A051073.P9771384585605801135

`∪[A051085(n+1), A252279(n+1)]`
-/

namespace A051073.P9771384585605801135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051073.P9771384585605801135

/-! ## A051073.P14343854445999924665

`val(A000079(A051077(n+1)), 2)`
-/

namespace A051073.P14343854445999924665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000079 (A051077 (n + 1)).toNat).toNat 2

end

end A051073.P14343854445999924665

/-! ## A051073.P1141150298792697805

`record[A051077(A106501(n+1)-2)]`
-/

namespace A051073.P1141150298792697805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051077 (A106501 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051073.P1141150298792697805

/-!
# A051074: Primes p such that x^10 = -2 has a solution mod p.

The programs for A051074, there is no canonical definition to state claims against.
-/

/-! ## A051074.P7408249046459489682

`∩[A033203(n+1), A040159(n+1)]`
-/

namespace A051074.P7408249046459489682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051074.P7408249046459489682

/-! ## A051074.P3522062007807038579

`∩[A040159(n+1), A341784(n+1)]`
-/

namespace A051074.P3522062007807038579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051074.P3522062007807038579

/-! ## A051074.P18279381743876695786

`∩[A034031(n+1), A040159(n+1)]`
-/

namespace A051074.P18279381743876695786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051074.P18279381743876695786

/-! ## A051074.P13375906696360705525

`∩[A040159(n+1), A057127(n+1)]`
-/

namespace A051074.P13375906696360705525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051074.P13375906696360705525

/-! ## A051074.P4965514939913640205

`∩[A034034(n+1), A040159(n+1)]`
-/

namespace A051074.P4965514939913640205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051074.P4965514939913640205

/-! ## A051074.P14585181124472702527

`∩[A002479(n+1), A040159(n+1)]`
-/

namespace A051074.P14585181124472702527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051074.P14585181124472702527

/-! ## A051074.P8023001549991348412

`∩[A040159(n+1), A047475(n+1)]`
-/

namespace A051074.P8023001549991348412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051074.P8023001549991348412

/-! ## A051074.P16394743037917083987

`∩[A040159(n+1), A047404(n+1)]`
-/

namespace A051074.P16394743037917083987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051074.P16394743037917083987

/-! ## A051074.P1411799029842489941

`∩[A040159(n+1), A047454(n+1)]`
-/

namespace A051074.P1411799029842489941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051074.P1411799029842489941

/-! ## A051074.P3909191705773007523

`∩[A040159(n+1), A047476(n+1)]`
-/

namespace A051074.P3909191705773007523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051074.P3909191705773007523

/-! ## A051074.P4701609027097815135

`∩[A040159(n+1), A047527(n+1)+1]`
-/

namespace A051074.P4701609027097815135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047527 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051074.P4701609027097815135

/-! ## A051074.P14461319436275469100

`filter[A040159(n+1), A342892(#)]`
-/

namespace A051074.P14461319436275469100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342892 (f1 j).toNat = 1) n)

end

end A051074.P14461319436275469100

/-! ## A051074.P9858697947344277785

`∩[A040159(n+1), A047405(n+1)]`
-/

namespace A051074.P9858697947344277785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051074.P9858697947344277785

/-! ## A051074.P7497986932436021036

`∩[A040159(n+1), A047419(n+1)]`
-/

namespace A051074.P7497986932436021036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051074.P7497986932436021036

/-! ## A051074.P15446546822313441955

`∩[A040159(n+1), A047453(n+1)]`
-/

namespace A051074.P15446546822313441955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051074.P15446546822313441955

/-! ## A051074.P897738701069125941

`∩[A040159(n+1), A047542(n+1)+2]`
-/

namespace A051074.P897738701069125941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047542 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051074.P897738701069125941

/-! ## A051074.P9983902106293695677

`∩[A040159(n+1), A047555(n+1)+2]`
-/

namespace A051074.P9983902106293695677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047555 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051074.P9983902106293695677

/-! ## A051074.P4387342581652504770

`∩[A040159(n+1), A047420(n+1)]`
-/

namespace A051074.P4387342581652504770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051074.P4387342581652504770

/-! ## A051074.P8833610584986139829

`∩[A040159(n+1), A047513(n+1)+2]`
-/

namespace A051074.P8833610584986139829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051074.P8833610584986139829

/-! ## A051074.P1367772213737718698

`filter[A040159(n+1), A131078(#)]`
-/

namespace A051074.P1367772213737718698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131078 (f1 j).toNat = 1) n)

end

end A051074.P1367772213737718698

/-!
# A051075: Primes p such that x^12 = -2 has a solution mod p.

The programs for A051075, there is no canonical definition to state claims against.
-/

/-! ## A051075.P2481057286407995998

`∩[A051071(n+1), A051072(n+1)]`
-/

namespace A051075.P2481057286407995998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051075.P2481057286407995998

/-! ## A051075.P5351919411074886949

`∩[A040028(n+1), A051071(n+1)]`
-/

namespace A051075.P5351919411074886949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051075.P5351919411074886949

/-! ## A051075.P10002412443415889252

`∩[A051071(n+1), A057760(n+1)]`
-/

namespace A051075.P10002412443415889252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051075.P10002412443415889252

/-! ## A051075.P7659588113476788913

`∪[A051087(n+1), A112417(A051093(n+1))]`
-/

namespace A051075.P7659588113476788913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112417 (A051093 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051075.P7659588113476788913

/-! ## A051075.P5869059162916388866

`A007967(A051087(n+1))`
-/

namespace A051075.P5869059162916388866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007967 (A051087 (n + 1)).toNat

end

end A051075.P5869059162916388866

/-!
# A051076: Primes p such that x^14 = -2 has a solution mod p.

The programs for A051076, there is no canonical definition to state claims against.
-/

/-! ## A051076.P1065990313985031829

`∩[A033203(n+1), A042966(n+1)]`
-/

namespace A051076.P1065990313985031829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051076.P1065990313985031829

/-! ## A051076.P10477772951804664825

`∩[A042966(n+1), A341784(n+1)]`
-/

namespace A051076.P10477772951804664825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051076.P10477772951804664825

/-! ## A051076.P2981615562174274673

`∩[A034031(n+1), A042966(n+1)]`
-/

namespace A051076.P2981615562174274673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051076.P2981615562174274673

/-! ## A051076.P12656545775959532686

`∩[A042966(n+1), A057127(n+1)]`
-/

namespace A051076.P12656545775959532686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051076.P12656545775959532686

/-! ## A051076.P3101729810695607165

`∩[A034034(n+1), A042966(n+1)]`
-/

namespace A051076.P3101729810695607165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051076.P3101729810695607165

/-! ## A051076.P15193455058715237412

`∩[A002479(n+1), A042966(n+1)]`
-/

namespace A051076.P15193455058715237412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051076.P15193455058715237412

/-! ## A051076.P9616995604800065581

`∩[A042966(n+1), A047475(n+1)]`
-/

namespace A051076.P9616995604800065581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051076.P9616995604800065581

/-! ## A051076.P3026169706238384826

`∩[A042966(n+1), A047404(n+1)]`
-/

namespace A051076.P3026169706238384826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051076.P3026169706238384826

/-! ## A051076.P17277763771329967500

`∩[A042966(n+1), A047454(n+1)]`
-/

namespace A051076.P17277763771329967500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051076.P17277763771329967500

/-! ## A051076.P2370572078512604906

`∩[A042966(n+1), A047476(n+1)]`
-/

namespace A051076.P2370572078512604906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051076.P2370572078512604906

/-! ## A051076.P2168955006349376947

`∩[A042966(n+1), A047527(n+1)+1]`
-/

namespace A051076.P2168955006349376947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047527 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051076.P2168955006349376947

/-! ## A051076.P14453875359788230987

`filter[A042966(n+1), A342892(#)]`
-/

namespace A051076.P14453875359788230987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342892 (f1 j).toNat = 1) n)

end

end A051076.P14453875359788230987

/-! ## A051076.P1946610801802740570

`∩[A042966(n+1), A047542(n+1)+2]`
-/

namespace A051076.P1946610801802740570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047542 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051076.P1946610801802740570

/-! ## A051076.P13121635209317308191

`∩[A042966(n+1), A047555(n+1)+2]`
-/

namespace A051076.P13121635209317308191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047555 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051076.P13121635209317308191

/-! ## A051076.P3660993884214625867

`∩[A042966(n+1), A047405(n+1)]`
-/

namespace A051076.P3660993884214625867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051076.P3660993884214625867

/-! ## A051076.P11468108754859420910

`∩[A042966(n+1), A047419(n+1)]`
-/

namespace A051076.P11468108754859420910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051076.P11468108754859420910

/-! ## A051076.P17379259949695685779

`∩[A042966(n+1), A047453(n+1)]`
-/

namespace A051076.P17379259949695685779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051076.P17379259949695685779

/-! ## A051076.P11058761028428368046

`∩[A042966(n+1), A047420(n+1)]`
-/

namespace A051076.P11058761028428368046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051076.P11058761028428368046

/-! ## A051076.P12802122674631740375

`∩[A042966(n+1), A047513(n+1)+2]`
-/

namespace A051076.P12802122674631740375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051076.P12802122674631740375

/-! ## A051076.P14372447909414670057

`filter[A042966(n+1), A131078(#)]`
-/

namespace A051076.P14372447909414670057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131078 (f1 j).toNat = 1) n)

end

end A051076.P14372447909414670057

/-!
# A051077: Primes p such that x^16 = -2 has a solution mod p.

The programs for A051077, there is no canonical definition to state claims against.
-/

/-! ## A051077.P1423349528069111582

`A050368(∪[A051085(n+1), A051093(n+1)])`
-/

namespace A051077.P1423349528069111582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051093 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050368 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A051077.P1423349528069111582

/-! ## A051077.P7823130607750303676

`A050368(∪[A051093(n+1), A163183(n+1)])`
-/

namespace A051077.P7823130607750303676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050368 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A051077.P7823130607750303676

/-! ## A051077.P5832671513677642218

`A112417(∪[A007520(n+1), A051081(n+1)])`
-/

namespace A051077.P5832671513677642218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051081 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112417 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A051077.P5832671513677642218

/-! ## A051077.P2680370829413658217

`∩[A051073(n+1), A216509(n+1)]`
-/

namespace A051077.P2680370829413658217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051077.P2680370829413658217

/-!
# A051078: Primes p such that x^18 = -2 has a solution mod p.

The programs for A051078, there is no canonical definition to state claims against.
-/

/-! ## A051078.P10448579799563083306

`∩[A033203(n+1), A049596(n+1)]`
-/

namespace A051078.P10448579799563083306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051078.P10448579799563083306

/-! ## A051078.P3499556099194785344

`∩[A049596(n+1), A051072(n+1)]`
-/

namespace A051078.P3499556099194785344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051078.P3499556099194785344

/-! ## A051078.P805220545819102959

`∩[A049596(n+1), A341784(n+1)]`
-/

namespace A051078.P805220545819102959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051078.P805220545819102959

/-! ## A051078.P7697709399452017382

`∩[A034031(n+1), A049596(n+1)]`
-/

namespace A051078.P7697709399452017382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051078.P7697709399452017382

/-! ## A051078.P1515614420472751343

`∩[A049596(n+1), A057127(n+1)]`
-/

namespace A051078.P1515614420472751343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051078.P1515614420472751343

/-! ## A051078.P17072952308220243878

`∩[A034034(n+1), A049596(n+1)]`
-/

namespace A051078.P17072952308220243878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051078.P17072952308220243878

/-! ## A051078.P16259944854464096621

`∩[A002479(n+1), A049596(n+1)]`
-/

namespace A051078.P16259944854464096621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051078.P16259944854464096621

/-! ## A051078.P1793798743670933999

`∩[A047475(n+1), A049596(n+1)]`
-/

namespace A051078.P1793798743670933999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051078.P1793798743670933999

/-! ## A051078.P16645886054289988930

`∩[A047404(n+1), A049596(n+1)]`
-/

namespace A051078.P16645886054289988930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051078.P16645886054289988930

/-! ## A051078.P14650871669815144572

`∩[A047454(n+1), A049596(n+1)]`
-/

namespace A051078.P14650871669815144572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051078.P14650871669815144572

/-! ## A051078.P13858713326630391238

`∩[A047476(n+1), A049596(n+1)]`
-/

namespace A051078.P13858713326630391238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051078.P13858713326630391238

/-! ## A051078.P4315415708625598179

`∩[A047527(n+1)+1, A049596(n+1)]`
-/

namespace A051078.P4315415708625598179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047527 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051078.P4315415708625598179

/-!
# A051079: Primes p such that x^20 = -2 has a solution mod p.

The programs for A051079, there is no canonical definition to state claims against.
-/

/-! ## A051079.P6912569102267409536

`∩[A051071(n+1), A051074(n+1)]`
-/

namespace A051079.P6912569102267409536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051079.P6912569102267409536

/-! ## A051079.P17287806933983020304

`∩[A040159(n+1), A051071(n+1)]`
-/

namespace A051079.P17287806933983020304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051079.P17287806933983020304

/-! ## A051079.P9128571102510783853

`A007967(∩[A040159(n+1), A051095(n+1)])`
-/

namespace A051079.P9128571102510783853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051095 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007967 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A051079.P9128571102510783853

/-! ## A051079.P18101970326024042306

`A007967(∩[A051074(n+1), A051095(n+1)])`
-/

namespace A051079.P18101970326024042306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051095 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007967 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A051079.P18101970326024042306

/-! ## A051079.P6937104424212976131

`record[A051095(n+1)%A119484(2*n+1)]`
-/

namespace A051079.P6937104424212976131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051095 (n + 1)) (A119484 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051079.P6937104424212976131

/-!
# A051080: Primes p such that x^22 = -2 has a solution mod p.

The programs for A051080, there is no canonical definition to state claims against.
-/

/-! ## A051080.P12257889297977624879

`∩[A033203(n+1), A049543(n+1)]`
-/

namespace A051080.P12257889297977624879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051080.P12257889297977624879

/-! ## A051080.P8774634345894462184

`∩[A034031(n+1), A049543(n+1)]`
-/

namespace A051080.P8774634345894462184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051080.P8774634345894462184

/-! ## A051080.P2569259429682919685

`∩[A049543(n+1), A341784(n+1)]`
-/

namespace A051080.P2569259429682919685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051080.P2569259429682919685

/-! ## A051080.P6129907467782173069

`∩[A049543(n+1), A057127(n+1)]`
-/

namespace A051080.P6129907467782173069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051080.P6129907467782173069

/-! ## A051080.P7243197753194058520

`∩[A034034(n+1), A049543(n+1)]`
-/

namespace A051080.P7243197753194058520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051080.P7243197753194058520

/-! ## A051080.P5493047218003602026

`∩[A002479(n+1), A049543(n+1)]`
-/

namespace A051080.P5493047218003602026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051080.P5493047218003602026

/-! ## A051080.P1406828145493750271

`∩[A047475(n+1), A049543(n+1)]`
-/

namespace A051080.P1406828145493750271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051080.P1406828145493750271

/-! ## A051080.P9279999522399915686

`∩[A047404(n+1), A049543(n+1)]`
-/

namespace A051080.P9279999522399915686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051080.P9279999522399915686

/-! ## A051080.P3001419904676855073

`∩[A047454(n+1), A049543(n+1)]`
-/

namespace A051080.P3001419904676855073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051080.P3001419904676855073

/-! ## A051080.P1374256840432031442

`∩[A047476(n+1), A049543(n+1)]`
-/

namespace A051080.P1374256840432031442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051080.P1374256840432031442

/-! ## A051080.P9776334152976970521

`∩[A047527(n+1)+1, A049543(n+1)]`
-/

namespace A051080.P9776334152976970521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047527 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051080.P9776334152976970521

/-! ## A051080.P18010936519041227134

`filter[A049543(n+1), A342892(#)]`
-/

namespace A051080.P18010936519041227134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342892 (f1 j).toNat = 1) n)

end

end A051080.P18010936519041227134

/-! ## A051080.P5090678736349878248

`∩[A047542(n+1)+2, A049543(n+1)]`
-/

namespace A051080.P5090678736349878248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047542 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051080.P5090678736349878248

/-! ## A051080.P16142590162593443027

`∩[A047555(n+1)+2, A049543(n+1)]`
-/

namespace A051080.P16142590162593443027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047555 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051080.P16142590162593443027

/-! ## A051080.P2204024132310920702

`∩[A047405(n+1), A049543(n+1)]`
-/

namespace A051080.P2204024132310920702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051080.P2204024132310920702

/-! ## A051080.P8535588969494787734

`∩[A047419(n+1), A049543(n+1)]`
-/

namespace A051080.P8535588969494787734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051080.P8535588969494787734

/-! ## A051080.P13203758543420135087

`∩[A047453(n+1), A049543(n+1)]`
-/

namespace A051080.P13203758543420135087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051080.P13203758543420135087

/-! ## A051080.P4635833372576136101

`∩[A047420(n+1), A049543(n+1)]`
-/

namespace A051080.P4635833372576136101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051080.P4635833372576136101

/-! ## A051080.P10108047851529778790

`filter[A049543(n+1), A131078(#)]`
-/

namespace A051080.P10108047851529778790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131078 (f1 j).toNat = 1) n)

end

end A051080.P10108047851529778790

/-! ## A051080.P16804575743739260296

`filter[A049543(n+1), A391183(#)]`
-/

namespace A051080.P16804575743739260296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391183 (f1 j).toNat = 1) n)

end

end A051080.P16804575743739260296

/-!
# A051081: Primes p such that x^24 = -2 has a solution mod p.

The programs for A051081, there is no canonical definition to state claims against.
-/

/-! ## A051081.P16944644001327570399

`∩[A040028(n+1), A051073(n+1)]`
-/

namespace A051081.P16944644001327570399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051081.P16944644001327570399

/-! ## A051081.P17321850146388419079

`∩[A051072(n+1), A051073(n+1)]`
-/

namespace A051081.P17321850146388419079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051081.P17321850146388419079

/-! ## A051081.P15619270945348579784

`∩[A051073(n+1), A051075(n+1)]`
-/

namespace A051081.P15619270945348579784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051081.P15619270945348579784

/-! ## A051081.P13494442394982541508

`∩[A051073(n+1), A057760(n+1)]`
-/

namespace A051081.P13494442394982541508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051081.P13494442394982541508

/-! ## A051081.P16242402985888935376

`A112417(A051093(n+1))`
-/

namespace A051081.P16242402985888935376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112417 (A051093 (n + 1)).toNat

end

end A051081.P16242402985888935376

/-!
# A051082: Primes p such that x^26 = -2 has a solution mod p.

The programs for A051082, there is no canonical definition to state claims against.
-/

/-! ## A051082.P11877176373807319692

`∩[A033203(n+1), A049545(n+1)]`
-/

namespace A051082.P11877176373807319692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051082.P11877176373807319692

/-! ## A051082.P5429333365421498268

`∩[A049545(n+1), A341784(n+1)]`
-/

namespace A051082.P5429333365421498268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051082.P5429333365421498268

/-! ## A051082.P16868137052920017069

`∩[A034031(n+1), A049545(n+1)]`
-/

namespace A051082.P16868137052920017069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051082.P16868137052920017069

/-! ## A051082.P780656073642006130

`∩[A049545(n+1), A057127(n+1)]`
-/

namespace A051082.P780656073642006130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051082.P780656073642006130

/-! ## A051082.P3585176284722034609

`∩[A034034(n+1), A049545(n+1)]`
-/

namespace A051082.P3585176284722034609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051082.P3585176284722034609

/-! ## A051082.P12190417473558434011

`∩[A002479(n+1), A049545(n+1)]`
-/

namespace A051082.P12190417473558434011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051082.P12190417473558434011

/-! ## A051082.P24204274799357739

`∩[A047475(n+1), A049545(n+1)]`
-/

namespace A051082.P24204274799357739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051082.P24204274799357739

/-! ## A051082.P15780342572200416487

`∩[A047404(n+1), A049545(n+1)]`
-/

namespace A051082.P15780342572200416487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051082.P15780342572200416487

/-! ## A051082.P1121845280523787004

`∩[A047454(n+1), A049545(n+1)]`
-/

namespace A051082.P1121845280523787004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051082.P1121845280523787004

/-! ## A051082.P1509321029957187889

`∩[A047476(n+1), A049545(n+1)]`
-/

namespace A051082.P1509321029957187889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051082.P1509321029957187889

/-! ## A051082.P4067908782189475894

`∩[A047527(n+1)+1, A049545(n+1)]`
-/

namespace A051082.P4067908782189475894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047527 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051082.P4067908782189475894

/-! ## A051082.P3769887265446423681

`filter[A049545(n+1), A342892(#)]`
-/

namespace A051082.P3769887265446423681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342892 (f1 j).toNat = 1) n)

end

end A051082.P3769887265446423681

/-! ## A051082.P15310345606090066592

`∩[A047542(n+1)+2, A049545(n+1)]`
-/

namespace A051082.P15310345606090066592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047542 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051082.P15310345606090066592

/-! ## A051082.P15539698692732719565

`∩[A047555(n+1)+2, A049545(n+1)]`
-/

namespace A051082.P15539698692732719565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047555 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051082.P15539698692732719565

/-! ## A051082.P1995462487259660001

`∩[A047405(n+1), A049545(n+1)]`
-/

namespace A051082.P1995462487259660001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051082.P1995462487259660001

/-! ## A051082.P9628805336244066674

`∩[A047419(n+1), A049545(n+1)]`
-/

namespace A051082.P9628805336244066674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051082.P9628805336244066674

/-! ## A051082.P18048165101072656150

`∩[A047453(n+1), A049545(n+1)]`
-/

namespace A051082.P18048165101072656150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051082.P18048165101072656150

/-! ## A051082.P16593686994090400699

`∩[A047420(n+1), A049545(n+1)]`
-/

namespace A051082.P16593686994090400699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051082.P16593686994090400699

/-! ## A051082.P2201814737189798944

`∩[A047513(n+1)+2, A049545(n+1)]`
-/

namespace A051082.P2201814737189798944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051082.P2201814737189798944

/-! ## A051082.P7156021175373640078

`filter[A049545(n+1), A131078(#)]`
-/

namespace A051082.P7156021175373640078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131078 (f1 j).toNat = 1) n)

end

end A051082.P7156021175373640078

/-!
# A051083: Primes p such that x^28 = -2 has a solution mod p.

The programs for A051083, there is no canonical definition to state claims against.
-/

/-! ## A051083.P14001760867377828949

`∩[A051071(n+1), A051076(n+1)]`
-/

namespace A051083.P14001760867377828949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051083.P14001760867377828949

/-! ## A051083.P14177840618204582645

`∩[A042966(n+1), A051071(n+1)]`
-/

namespace A051083.P14177840618204582645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051083.P14177840618204582645

/-! ## A051083.P7654224725247315376

`∩[A028804(n+1), A051071(n+1)]`
-/

namespace A051083.P7654224725247315376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051083.P7654224725247315376

/-!
# A051084: Primes p such that x^30 = -2 has a solution mod p.

The programs for A051084, there is no canonical definition to state claims against.
-/

/-! ## A051084.P498290864732743257

`∩[A040028(n+1), A051074(n+1)]`
-/

namespace A051084.P498290864732743257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051084.P498290864732743257

/-! ## A051084.P1682367972588639439

`∩[A051072(n+1), A051074(n+1)]`
-/

namespace A051084.P1682367972588639439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051084.P1682367972588639439

/-! ## A051084.P4014909112258274690

`∩[A033203(n+1), A049547(n+1)]`
-/

namespace A051084.P4014909112258274690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051084.P4014909112258274690

/-! ## A051084.P6084745848774962655

`∩[A049547(n+1), A051072(n+1)]`
-/

namespace A051084.P6084745848774962655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051084.P6084745848774962655

/-! ## A051084.P17508721072776752008

`∩[A049547(n+1), A051074(n+1)]`
-/

namespace A051084.P17508721072776752008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051084.P17508721072776752008

/-! ## A051084.P4076923607097872907

`∩[A049547(n+1), A341784(n+1)]`
-/

namespace A051084.P4076923607097872907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051084.P4076923607097872907

/-! ## A051084.P12787298496022095256

`∩[A040159(n+1), A051072(n+1)]`
-/

namespace A051084.P12787298496022095256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051084.P12787298496022095256

/-! ## A051084.P17299141740205351969

`∩[A034031(n+1), A049547(n+1)]`
-/

namespace A051084.P17299141740205351969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051084.P17299141740205351969

/-! ## A051084.P11882779906259441878

`∩[A049547(n+1), A057127(n+1)]`
-/

namespace A051084.P11882779906259441878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051084.P11882779906259441878

/-! ## A051084.P11165761172588700461

`∩[A034034(n+1), A049547(n+1)]`
-/

namespace A051084.P11165761172588700461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051084.P11165761172588700461

/-! ## A051084.P15280388403042990030

`∩[A002479(n+1), A049547(n+1)]`
-/

namespace A051084.P15280388403042990030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051084.P15280388403042990030

/-! ## A051084.P4184580029227919239

`∩[A051074(n+1), A057760(n+1)]`
-/

namespace A051084.P4184580029227919239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051084.P4184580029227919239

/-! ## A051084.P11786737475921412504

`∩[A047475(n+1), A049547(n+1)]`
-/

namespace A051084.P11786737475921412504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051084.P11786737475921412504

/-! ## A051084.P17691851172035764361

`∩[A047404(n+1), A049547(n+1)]`
-/

namespace A051084.P17691851172035764361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051084.P17691851172035764361

/-! ## A051084.P17975190924063392383

`∩[A047454(n+1), A049547(n+1)]`
-/

namespace A051084.P17975190924063392383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051084.P17975190924063392383

/-! ## A051084.P10138513008655055794

`∩[A047476(n+1), A049547(n+1)]`
-/

namespace A051084.P10138513008655055794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051084.P10138513008655055794

/-! ## A051084.P13746947268944490470

`∩[A047527(n+1)+1, A049547(n+1)]`
-/

namespace A051084.P13746947268944490470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047527 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051084.P13746947268944490470

/-! ## A051084.P16213496029971909052

`filter[A049547(n+1), A342892(#)]`
-/

namespace A051084.P16213496029971909052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342892 (f1 j).toNat = 1) n)

end

end A051084.P16213496029971909052

/-! ## A051084.P12656983685686633550

`∩[A047405(n+1), A049547(n+1)]`
-/

namespace A051084.P12656983685686633550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051084.P12656983685686633550

/-! ## A051084.P12152233835787702009

`∩[A047419(n+1), A049547(n+1)]`
-/

namespace A051084.P12152233835787702009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051084.P12152233835787702009

/-!
# A051086: Primes p such that x^34 = -2 has a solution mod p.

The programs for A051086, there is no canonical definition to state claims against.
-/

/-! ## A051086.P6366966170468876007

`∩[A033203(n+1), A049549(n+1)]`
-/

namespace A051086.P6366966170468876007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051086.P6366966170468876007

/-! ## A051086.P13238365206166601553

`∩[A049549(n+1), A341784(n+1)]`
-/

namespace A051086.P13238365206166601553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051086.P13238365206166601553

/-! ## A051086.P3330655140664997153

`∩[A034031(n+1), A049549(n+1)]`
-/

namespace A051086.P3330655140664997153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051086.P3330655140664997153

/-! ## A051086.P1910968684973829857

`∩[A049549(n+1), A057127(n+1)]`
-/

namespace A051086.P1910968684973829857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051086.P1910968684973829857

/-! ## A051086.P15902218344817628807

`∩[A034034(n+1), A049549(n+1)]`
-/

namespace A051086.P15902218344817628807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051086.P15902218344817628807

/-! ## A051086.P8789771388878351128

`∩[A002479(n+1), A049549(n+1)]`
-/

namespace A051086.P8789771388878351128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051086.P8789771388878351128

/-! ## A051086.P7174952259243122465

`∩[A047475(n+1), A049549(n+1)]`
-/

namespace A051086.P7174952259243122465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051086.P7174952259243122465

/-! ## A051086.P18180869111541002216

`∩[A047404(n+1), A049549(n+1)]`
-/

namespace A051086.P18180869111541002216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051086.P18180869111541002216

/-! ## A051086.P8474727998306384296

`∩[A047454(n+1), A049549(n+1)]`
-/

namespace A051086.P8474727998306384296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051086.P8474727998306384296

/-! ## A051086.P6323327244906038244

`∩[A047476(n+1), A049549(n+1)]`
-/

namespace A051086.P6323327244906038244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051086.P6323327244906038244

/-! ## A051086.P15801938441430758088

`∩[A047527(n+1)+1, A049549(n+1)]`
-/

namespace A051086.P15801938441430758088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047527 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051086.P15801938441430758088

/-! ## A051086.P17100349318364737301

`filter[A049549(n+1), A342892(#)]`
-/

namespace A051086.P17100349318364737301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342892 (f1 j).toNat = 1) n)

end

end A051086.P17100349318364737301

/-! ## A051086.P15806308361245785654

`∩[A047542(n+1)+2, A049549(n+1)]`
-/

namespace A051086.P15806308361245785654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047542 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051086.P15806308361245785654

/-! ## A051086.P1639148217763491812

`∩[A047555(n+1)+2, A049549(n+1)]`
-/

namespace A051086.P1639148217763491812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047555 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051086.P1639148217763491812

/-! ## A051086.P917200672455704944

`∩[A047405(n+1), A049549(n+1)]`
-/

namespace A051086.P917200672455704944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051086.P917200672455704944

/-! ## A051086.P17524901611922702997

`∩[A047419(n+1), A049549(n+1)]`
-/

namespace A051086.P17524901611922702997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051086.P17524901611922702997

/-! ## A051086.P1915235983544716717

`∩[A047453(n+1), A049549(n+1)]`
-/

namespace A051086.P1915235983544716717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051086.P1915235983544716717

/-! ## A051086.P4352037033890723055

`∩[A047420(n+1), A049549(n+1)]`
-/

namespace A051086.P4352037033890723055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051086.P4352037033890723055

/-! ## A051086.P10583844982465096707

`∩[A047513(n+1)+2, A049549(n+1)]`
-/

namespace A051086.P10583844982465096707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051086.P10583844982465096707

/-! ## A051086.P7987480158615944826

`filter[A049549(n+1), A131078(#)]`
-/

namespace A051086.P7987480158615944826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131078 (f1 j).toNat = 1) n)

end

end A051086.P7987480158615944826

/-!
# A051087: Primes p such that x^36 = -2 has a solution mod p.

The programs for A051087, there is no canonical definition to state claims against.
-/

/-! ## A051087.P12332849600611161283

`∩[A049596(n+1), A051071(n+1)]`
-/

namespace A051087.P12332849600611161283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051087.P12332849600611161283

/-! ## A051087.P1524307650873259348

`∩[A049596(n+1), A051075(n+1)]`
-/

namespace A051087.P1524307650873259348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051087.P1524307650873259348

/-! ## A051087.P3650520281266791834

`∩[A051071(n+1), A051078(n+1)]`
-/

namespace A051087.P3650520281266791834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051087.P3650520281266791834

/-! ## A051087.P3598399032008693563

`∩[A051075(n+1), A051078(n+1)]`
-/

namespace A051087.P3598399032008693563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051087.P3598399032008693563

/-! ## A051087.P3071759962031460742

`∩[A051075(n+1), A154755(n+1)]`
-/

namespace A051087.P3071759962031460742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051087.P3071759962031460742

/-!
# A051088: Primes p such that x^38 = -2 has a solution mod p.

The programs for A051088, there is no canonical definition to state claims against.
-/

/-! ## A051088.P280517873018639575

`∩[A033203(n+1), A049551(n+1)]`
-/

namespace A051088.P280517873018639575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051088.P280517873018639575

/-! ## A051088.P11770528902139845479

`∩[A049551(n+1), A341784(n+1)]`
-/

namespace A051088.P11770528902139845479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051088.P11770528902139845479

/-! ## A051088.P14791498543849075508

`∩[A034031(n+1), A049551(n+1)]`
-/

namespace A051088.P14791498543849075508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051088.P14791498543849075508

/-! ## A051088.P4899937338899852001

`∩[A049551(n+1), A057127(n+1)]`
-/

namespace A051088.P4899937338899852001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051088.P4899937338899852001

/-! ## A051088.P17246839220331582601

`∩[A034034(n+1), A049551(n+1)]`
-/

namespace A051088.P17246839220331582601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051088.P17246839220331582601

/-! ## A051088.P13850087158040548528

`∩[A002479(n+1), A049551(n+1)]`
-/

namespace A051088.P13850087158040548528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051088.P13850087158040548528

/-! ## A051088.P17560776024574486304

`∩[A047475(n+1), A049551(n+1)]`
-/

namespace A051088.P17560776024574486304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051088.P17560776024574486304

/-! ## A051088.P750453205237939471

`∩[A047404(n+1), A049551(n+1)]`
-/

namespace A051088.P750453205237939471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051088.P750453205237939471

/-! ## A051088.P12357160851601763242

`∩[A047454(n+1), A049551(n+1)]`
-/

namespace A051088.P12357160851601763242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051088.P12357160851601763242

/-! ## A051088.P15072909263265457434

`∩[A047476(n+1), A049551(n+1)]`
-/

namespace A051088.P15072909263265457434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051088.P15072909263265457434

/-! ## A051088.P16059481956388930422

`∩[A047527(n+1)+1, A049551(n+1)]`
-/

namespace A051088.P16059481956388930422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047527 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051088.P16059481956388930422

/-! ## A051088.P3615541865827026419

`filter[A049551(n+1), A342892(#)]`
-/

namespace A051088.P3615541865827026419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342892 (f1 j).toNat = 1) n)

end

end A051088.P3615541865827026419

/-! ## A051088.P1897321898646764265

`∩[A047542(n+1)+2, A049551(n+1)]`
-/

namespace A051088.P1897321898646764265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047542 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051088.P1897321898646764265

/-! ## A051088.P11673282344082480781

`∩[A047555(n+1)+2, A049551(n+1)]`
-/

namespace A051088.P11673282344082480781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047555 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051088.P11673282344082480781

/-! ## A051088.P1377437035277567411

`∩[A047405(n+1), A049551(n+1)]`
-/

namespace A051088.P1377437035277567411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051088.P1377437035277567411

/-! ## A051088.P16330865275894039130

`∩[A047420(n+1), A049551(n+1)]`
-/

namespace A051088.P16330865275894039130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051088.P16330865275894039130

/-! ## A051088.P3542271487522731725

`∩[A047513(n+1)+2, A049551(n+1)]`
-/

namespace A051088.P3542271487522731725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051088.P3542271487522731725

/-! ## A051088.P10168927291060424487

`filter[A049551(n+1), A131078(#)]`
-/

namespace A051088.P10168927291060424487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131078 (f1 j).toNat = 1) n)

end

end A051088.P10168927291060424487

/-! ## A051088.P13065123354397430014

`filter[A049551(n+1), A391183(#)]`
-/

namespace A051088.P13065123354397430014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391183 (f1 j).toNat = 1) n)

end

end A051088.P13065123354397430014

/-!
# A051089: Primes p such that x^40 = -2 has a solution mod p.

The programs for A051089, there is no canonical definition to state claims against.
-/

/-! ## A051089.P5095264542210837095

`∩[A040159(n+1), A051073(n+1)]`
-/

namespace A051089.P5095264542210837095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051089.P5095264542210837095

/-! ## A051089.P6409945112089005199

`∩[A051073(n+1), A051074(n+1)]`
-/

namespace A051089.P6409945112089005199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051089.P6409945112089005199

/-! ## A051089.P1531399797964570744

`∩[A051073(n+1), A051079(n+1)]`
-/

namespace A051089.P1531399797964570744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051089.P1531399797964570744

/-! ## A051089.P4349532978342379983

`A007967(∩[A040159(n+1), A051077(n+1)])`
-/

namespace A051089.P4349532978342379983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051077 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007967 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A051089.P4349532978342379983

/-! ## A051089.P11915867244582423897

`A007967(∩[A051074(n+1), A051077(n+1)])`
-/

namespace A051089.P11915867244582423897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051077 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007967 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A051089.P11915867244582423897

/-!
# A051090: Primes p such that x^42 = -2 has a solution mod p.

The programs for A051090, there is no canonical definition to state claims against.
-/

/-! ## A051090.P11704250056033298522

`∩[A033203(n+1), A049553(n+1)]`
-/

namespace A051090.P11704250056033298522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051090.P11704250056033298522

/-! ## A051090.P12641936187128474293

`∩[A040028(n+1), A051076(n+1)]`
-/

namespace A051090.P12641936187128474293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051090.P12641936187128474293

/-! ## A051090.P10709990596448401931

`∩[A042966(n+1), A051072(n+1)]`
-/

namespace A051090.P10709990596448401931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051090.P10709990596448401931

/-! ## A051090.P8104137273618435126

`∩[A049553(n+1), A051072(n+1)]`
-/

namespace A051090.P8104137273618435126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051090.P8104137273618435126

/-! ## A051090.P2893116943017144968

`∩[A049553(n+1), A051076(n+1)]`
-/

namespace A051090.P2893116943017144968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051090.P2893116943017144968

/-! ## A051090.P11820165159315568950

`∩[A051072(n+1), A051076(n+1)]`
-/

namespace A051090.P11820165159315568950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051090.P11820165159315568950

/-! ## A051090.P12798763518310090310

`∩[A049553(n+1), A341784(n+1)]`
-/

namespace A051090.P12798763518310090310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051090.P12798763518310090310

/-! ## A051090.P7307227287813418458

`∩[A034031(n+1), A049553(n+1)]`
-/

namespace A051090.P7307227287813418458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051090.P7307227287813418458

/-! ## A051090.P8614867861201404615

`∩[A049553(n+1), A057127(n+1)]`
-/

namespace A051090.P8614867861201404615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051090.P8614867861201404615

/-! ## A051090.P3352181898807629343

`∩[A034034(n+1), A049553(n+1)]`
-/

namespace A051090.P3352181898807629343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051090.P3352181898807629343

/-! ## A051090.P14317587331359164376

`∩[A002479(n+1), A049553(n+1)]`
-/

namespace A051090.P14317587331359164376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051090.P14317587331359164376

/-! ## A051090.P6119873260360402237

`∩[A051076(n+1), A057760(n+1)]`
-/

namespace A051090.P6119873260360402237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051090.P6119873260360402237

/-! ## A051090.P16494972438938081831

`∩[A047475(n+1), A049553(n+1)]`
-/

namespace A051090.P16494972438938081831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051090.P16494972438938081831

/-! ## A051090.P15441744959437647067

`∩[A047404(n+1), A049553(n+1)]`
-/

namespace A051090.P15441744959437647067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051090.P15441744959437647067

/-! ## A051090.P1594598531524360739

`∩[A047454(n+1), A049553(n+1)]`
-/

namespace A051090.P1594598531524360739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051090.P1594598531524360739

/-! ## A051090.P13901759513523621169

`∩[A047476(n+1), A049553(n+1)]`
-/

namespace A051090.P13901759513523621169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051090.P13901759513523621169

/-! ## A051090.P9750309117613287472

`∩[A047527(n+1)+1, A049553(n+1)]`
-/

namespace A051090.P9750309117613287472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047527 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051090.P9750309117613287472

/-! ## A051090.P14369549812451720947

`filter[A049553(n+1), A342892(#)]`
-/

namespace A051090.P14369549812451720947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342892 (f1 j).toNat = 1) n)

end

end A051090.P14369549812451720947

/-! ## A051090.P11447629724439407201

`∩[A047405(n+1), A049553(n+1)]`
-/

namespace A051090.P11447629724439407201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051090.P11447629724439407201

/-! ## A051090.P17388127608259297624

`∩[A047419(n+1), A049553(n+1)]`
-/

namespace A051090.P17388127608259297624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051090.P17388127608259297624

/-!
# A051091: Primes p such that x^44 = -2 has a solution mod p.

The programs for A051091, there is no canonical definition to state claims against.
-/

/-! ## A051091.P9266688792960077098

`∩[A051071(n+1), A051080(n+1)]`
-/

namespace A051091.P9266688792960077098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051091.P9266688792960077098

/-! ## A051091.P3592383310904143249

`∩[A049543(n+1), A051071(n+1)]`
-/

namespace A051091.P3592383310904143249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051091.P3592383310904143249

/-! ## A051091.P324039808325417352

`A051071(lt[A232711(n+1), A357992(3*n+1)])`
-/

namespace A051091.P324039808325417352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357992 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A051091.P324039808325417352

/-! ## A051091.P15124984764944782845

`record[A051080(n+1)%A083156(n+1)]`
-/

namespace A051091.P15124984764944782845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051080 (n + 1)) (A083156 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051091.P15124984764944782845

/-! ## A051091.P15955280267574167595

`∩[A051095(n+1), A353178(n+1)]`
-/

namespace A051091.P15955280267574167595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051091.P15955280267574167595

/-!
# A051092: Primes p such that x^46 = -2 has a solution mod p.

The programs for A051092, there is no canonical definition to state claims against.
-/

/-! ## A051092.P82607586180418427

`∩[A033203(n+1), A049555(n+1)]`
-/

namespace A051092.P82607586180418427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051092.P82607586180418427

/-! ## A051092.P14349578765270923320

`∩[A049555(n+1), A341784(n+1)]`
-/

namespace A051092.P14349578765270923320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051092.P14349578765270923320

/-! ## A051092.P4837032697805778559

`∩[A034031(n+1), A049555(n+1)]`
-/

namespace A051092.P4837032697805778559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051092.P4837032697805778559

/-! ## A051092.P13074963986760513181

`∩[A049555(n+1), A057127(n+1)]`
-/

namespace A051092.P13074963986760513181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051092.P13074963986760513181

/-! ## A051092.P9449024887997447568

`∩[A034034(n+1), A049555(n+1)]`
-/

namespace A051092.P9449024887997447568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051092.P9449024887997447568

/-! ## A051092.P13307556152644925100

`∩[A002479(n+1), A049555(n+1)]`
-/

namespace A051092.P13307556152644925100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051092.P13307556152644925100

/-! ## A051092.P9356970570130990835

`∩[A047475(n+1), A049555(n+1)]`
-/

namespace A051092.P9356970570130990835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051092.P9356970570130990835

/-! ## A051092.P15715266358997191359

`∩[A047404(n+1), A049555(n+1)]`
-/

namespace A051092.P15715266358997191359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051092.P15715266358997191359

/-! ## A051092.P10616462768687330268

`∩[A047454(n+1), A049555(n+1)]`
-/

namespace A051092.P10616462768687330268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051092.P10616462768687330268

/-! ## A051092.P17394273834451466984

`∩[A047476(n+1), A049555(n+1)]`
-/

namespace A051092.P17394273834451466984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051092.P17394273834451466984

/-! ## A051092.P3567276529939354582

`∩[A047527(n+1)+1, A049555(n+1)]`
-/

namespace A051092.P3567276529939354582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047527 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051092.P3567276529939354582

/-! ## A051092.P5514227053008622142

`filter[A049555(n+1), A342892(#)]`
-/

namespace A051092.P5514227053008622142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342892 (f1 j).toNat = 1) n)

end

end A051092.P5514227053008622142

/-! ## A051092.P18038013504952953701

`∩[A047542(n+1)+2, A049555(n+1)]`
-/

namespace A051092.P18038013504952953701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047542 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051092.P18038013504952953701

/-! ## A051092.P14331785213209289444

`∩[A047555(n+1)+2, A049555(n+1)]`
-/

namespace A051092.P14331785213209289444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047555 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051092.P14331785213209289444

/-! ## A051092.P10860553668476722141

`∩[A047405(n+1), A049555(n+1)]`
-/

namespace A051092.P10860553668476722141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051092.P10860553668476722141

/-! ## A051092.P11436109005679865779

`∩[A047419(n+1), A049555(n+1)]`
-/

namespace A051092.P11436109005679865779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051092.P11436109005679865779

/-! ## A051092.P16159350303896327868

`∩[A047453(n+1), A049555(n+1)]`
-/

namespace A051092.P16159350303896327868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051092.P16159350303896327868

/-! ## A051092.P8530538443867816106

`∩[A047420(n+1), A049555(n+1)]`
-/

namespace A051092.P8530538443867816106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051092.P8530538443867816106

/-! ## A051092.P6519429993505561186

`∩[A047513(n+1)+2, A049555(n+1)]`
-/

namespace A051092.P6519429993505561186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051092.P6519429993505561186

/-! ## A051092.P7669106298988245855

`filter[A049555(n+1), A131078(#)]`
-/

namespace A051092.P7669106298988245855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131078 (f1 j).toNat = 1) n)

end

end A051092.P7669106298988245855

/-!
# A051093: Primes p such that x^48 = -2 has a solution mod p.

The programs for A051093, there is no canonical definition to state claims against.
-/

/-! ## A051093.P15971558522796419626

`∩[A040028(n+1), A051077(n+1)]`
-/

namespace A051093.P15971558522796419626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051093.P15971558522796419626

/-! ## A051093.P17659359353717476950

`∩[A051072(n+1), A051077(n+1)]`
-/

namespace A051093.P17659359353717476950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051093.P17659359353717476950

/-! ## A051093.P16526876736675874002

`∩[A051075(n+1), A051077(n+1)]`
-/

namespace A051093.P16526876736675874002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051093.P16526876736675874002

/-! ## A051093.P12266780282741381029

`∩[A051077(n+1), A051081(n+1)]`
-/

namespace A051093.P12266780282741381029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051093.P12266780282741381029

/-! ## A051093.P7657788379805346215

`∩[A051077(n+1), A057760(n+1)]`
-/

namespace A051093.P7657788379805346215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051093.P7657788379805346215

/-!
# A051094: Primes p such that x^50 = -2 has a solution mod p.

The programs for A051094, there is no canonical definition to state claims against.
-/

/-! ## A051094.P10088143804348390864

`∩[A033203(n+1), A049557(n+1)]`
-/

namespace A051094.P10088143804348390864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051094.P10088143804348390864

/-! ## A051094.P17567484116339582431

`∩[A049557(n+1), A051074(n+1)]`
-/

namespace A051094.P17567484116339582431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051094.P17567484116339582431

/-! ## A051094.P3034110657899510435

`∩[A049557(n+1), A341784(n+1)]`
-/

namespace A051094.P3034110657899510435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051094.P3034110657899510435

/-! ## A051094.P16275179150762919281

`∩[A034031(n+1), A049557(n+1)]`
-/

namespace A051094.P16275179150762919281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051094.P16275179150762919281

/-! ## A051094.P4376444472921696373

`∩[A049557(n+1), A057127(n+1)]`
-/

namespace A051094.P4376444472921696373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051094.P4376444472921696373

/-! ## A051094.P13783888245491672794

`∩[A034034(n+1), A049557(n+1)]`
-/

namespace A051094.P13783888245491672794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051094.P13783888245491672794

/-! ## A051094.P11383954666888726887

`∩[A002479(n+1), A049557(n+1)]`
-/

namespace A051094.P11383954666888726887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051094.P11383954666888726887

/-! ## A051094.P6273101873009261279

`∩[A047475(n+1), A049557(n+1)]`
-/

namespace A051094.P6273101873009261279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051094.P6273101873009261279

/-! ## A051094.P14263461863472017352

`∩[A047404(n+1), A049557(n+1)]`
-/

namespace A051094.P14263461863472017352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051094.P14263461863472017352

/-! ## A051094.P6766688347315266880

`∩[A047454(n+1), A049557(n+1)]`
-/

namespace A051094.P6766688347315266880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051094.P6766688347315266880

/-! ## A051094.P10325772057665841387

`∩[A047476(n+1), A049557(n+1)]`
-/

namespace A051094.P10325772057665841387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051094.P10325772057665841387

/-! ## A051094.P4699918019710111352

`∩[A047527(n+1)+1, A049557(n+1)]`
-/

namespace A051094.P4699918019710111352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047527 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051094.P4699918019710111352

/-! ## A051094.P11355847126397012259

`filter[A049557(n+1), A342892(#)]`
-/

namespace A051094.P11355847126397012259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342892 (f1 j).toNat = 1) n)

end

end A051094.P11355847126397012259

/-! ## A051094.P13454901354418764617

`∩[A047405(n+1), A049557(n+1)]`
-/

namespace A051094.P13454901354418764617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051094.P13454901354418764617

/-! ## A051094.P4264029595037476279

`∩[A047419(n+1), A049557(n+1)]`
-/

namespace A051094.P4264029595037476279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051094.P4264029595037476279

/-! ## A051094.P5790704009658757252

`∩[A047453(n+1), A049557(n+1)]`
-/

namespace A051094.P5790704009658757252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051094.P5790704009658757252

/-! ## A051094.P15481437383019206352

`∩[A047542(n+1)+2, A049557(n+1)]`
-/

namespace A051094.P15481437383019206352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047542 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051094.P15481437383019206352

/-! ## A051094.P1340831290657526562

`∩[A047555(n+1)+2, A049557(n+1)]`
-/

namespace A051094.P1340831290657526562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047555 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051094.P1340831290657526562

/-! ## A051094.P5227076061296975270

`∩[A047420(n+1), A049557(n+1)]`
-/

namespace A051094.P5227076061296975270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051094.P5227076061296975270

/-! ## A051094.P14787290740706819351

`∩[A047513(n+1)+2, A049557(n+1)]`
-/

namespace A051094.P14787290740706819351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051094.P14787290740706819351

/-!
# A051095: Primes p such that x^52 = -2 has a solution mod p.

The programs for A051095, there is no canonical definition to state claims against.
-/

/-! ## A051095.P8130638018469524037

`∩[A051071(n+1), A051082(n+1)]`
-/

namespace A051095.P8130638018469524037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051095.P8130638018469524037

/-! ## A051095.P13688402091326203905

`∩[A049545(n+1), A051071(n+1)]`
-/

namespace A051095.P13688402091326203905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051095.P13688402091326203905

/-! ## A051095.P7792875371501462490

`A051071(A180004(n+1)%A114931(n+1))`
-/

namespace A051095.P7792875371501462490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (Int.tmod (A180004 (n + 1)) (A114931 (n + 1))).toNat

end

end A051095.P7792875371501462490

/-! ## A051095.P5053825588763697325

`or(A051071(n+1), A066287(A321620(2*(n+2))))`
-/

namespace A051095.P5053825588763697325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051071 (n + 1)) (A066287 (A321620 (2 * (n + 2))).toNat)

end

end A051095.P5053825588763697325

/-!
# A051096: 

The programs for A051096, there is no canonical definition to state claims against.
-/

/-! ## A051096.P4835705466549687094

`∩[A051078(n+1), A371782(n+1)]`
-/

namespace A051096.P4835705466549687094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051096.P4835705466549687094

/-! ## A051096.P2115601091766801914

`∩[A051078(n+1), A275616(n+1)]`
-/

namespace A051096.P2115601091766801914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051096.P2115601091766801914

/-! ## A051096.P4251165523417491248

`∩[A051078(n+1), A242410(n+1)]`
-/

namespace A051096.P4251165523417491248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051096.P4251165523417491248

/-! ## A051096.P2166932314782281647

`∩[A051078(n+1), A326535(n+1)]`
-/

namespace A051096.P2166932314782281647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051096.P2166932314782281647

/-! ## A051096.P605248062959536903

`∩[A051078(n+1), A368999(n+1)]`
-/

namespace A051096.P605248062959536903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051096.P605248062959536903

/-! ## A051096.P7966695125205883667

`∩[A051078(n+1), A358215(n+1)]`
-/

namespace A051096.P7966695125205883667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051096.P7966695125205883667

/-! ## A051096.P5591422836564804501

`∩[A007933(n+1), A051078(n+1)]`
-/

namespace A051096.P5591422836564804501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051096.P5591422836564804501

/-! ## A051096.P8973437047083032775

`∩[A051078(n+1), A062062(n+1)]`
-/

namespace A051096.P8973437047083032775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051096.P8973437047083032775

/-! ## A051096.P10787945011057575381

`∩[A051078(n+1), A258613(n+1)]`
-/

namespace A051096.P10787945011057575381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051096.P10787945011057575381

/-! ## A051096.P4696099409907704507

`∩[A051078(n+1), A358976(n+1)]`
-/

namespace A051096.P4696099409907704507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051096.P4696099409907704507

/-! ## A051096.P15754759432891544087

`∩[A051078(n+1), A358977(n+1)]`
-/

namespace A051096.P15754759432891544087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051096.P15754759432891544087

/-! ## A051096.P9035154406235637832

`∩[A051078(n+1), A358978(n+1)]`
-/

namespace A051096.P9035154406235637832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051096.P9035154406235637832

/-! ## A051096.P7136465078342703996

`∩[A051078(n+1), A300064(n+1)]`
-/

namespace A051096.P7136465078342703996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051096.P7136465078342703996

/-! ## A051096.P1731847905000978715

`∩[A051078(n+1), A064594(n+1)]`
-/

namespace A051096.P1731847905000978715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051096.P1731847905000978715

/-! ## A051096.P8649833900685318050

`∩[A051078(n+1), A144338(n+1)]`
-/

namespace A051096.P8649833900685318050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051096.P8649833900685318050

/-! ## A051096.P14352288216803411062

`∩[A051078(n+1), A198191(n+1)]`
-/

namespace A051096.P14352288216803411062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051096.P14352288216803411062

/-! ## A051096.P3069212878828503797

`filter[A051078(n+1), A053867(#)]`
-/

namespace A051096.P3069212878828503797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053867 (f1 j).toNat = 1) n)

end

end A051096.P3069212878828503797

/-! ## A051096.P10521288376917472880

`filter[A049596(n+1), A342892(#)]`
-/

namespace A051096.P10521288376917472880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342892 (f1 j).toNat = 1) n)

end

end A051096.P10521288376917472880

/-! ## A051096.P10927763835850757832

`∩[A051078(n+1), A063743(n+1)]`
-/

namespace A051096.P10927763835850757832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051096.P10927763835850757832

/-! ## A051096.P13128294051863895062

`∩[A051078(n+1), A087268(n+1)]`
-/

namespace A051096.P13128294051863895062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051096.P13128294051863895062

/-!
# A051097: Primes p such that x^56 = -2 has a solution mod p.

The programs for A051097, there is no canonical definition to state claims against.
-/

/-! ## A051097.P2401786383603523586

`∩[A042966(n+1), A051073(n+1)]`
-/

namespace A051097.P2401786383603523586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051097.P2401786383603523586

/-! ## A051097.P11774966940023840325

`∩[A051073(n+1), A051076(n+1)]`
-/

namespace A051097.P11774966940023840325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051097.P11774966940023840325

/-! ## A051097.P4458387658158432537

`∩[A051073(n+1), A051083(n+1)]`
-/

namespace A051097.P4458387658158432537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051097.P4458387658158432537

/-! ## A051097.P2141266369695845911

`A112417(∩[A051076(n+1), A051077(n+1)])`
-/

namespace A051097.P2141266369695845911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051077 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112417 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A051097.P2141266369695845911

/-! ## A051097.P11544614729119244735

`A051073(lt[A104358(n+2), A048366(n+1)])`
-/

namespace A051097.P11544614729119244735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104358 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A051097.P11544614729119244735

/-!
# A051098: Primes p such that x^58 = -2 has a solution mod p.

The programs for A051098, there is no canonical definition to state claims against.
-/

/-! ## A051098.P2017420364694458121

`∩[A033203(n+1), A049561(n+1)]`
-/

namespace A051098.P2017420364694458121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051098.P2017420364694458121

/-! ## A051098.P2763137033376613378

`∩[A049561(n+1), A341784(n+1)]`
-/

namespace A051098.P2763137033376613378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051098.P2763137033376613378

/-! ## A051098.P15645072265033703951

`∩[A034031(n+1), A049561(n+1)]`
-/

namespace A051098.P15645072265033703951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051098.P15645072265033703951

/-! ## A051098.P14200307541550380099

`∩[A049561(n+1), A057127(n+1)]`
-/

namespace A051098.P14200307541550380099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051098.P14200307541550380099

/-! ## A051098.P4938538138200495336

`∩[A034034(n+1), A049561(n+1)]`
-/

namespace A051098.P4938538138200495336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051098.P4938538138200495336

/-! ## A051098.P18179145911523896170

`∩[A002479(n+1), A049561(n+1)]`
-/

namespace A051098.P18179145911523896170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051098.P18179145911523896170

/-! ## A051098.P15594836681859582414

`∩[A047475(n+1), A049561(n+1)]`
-/

namespace A051098.P15594836681859582414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051098.P15594836681859582414

/-! ## A051098.P8117336102065315786

`∩[A047404(n+1), A049561(n+1)]`
-/

namespace A051098.P8117336102065315786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051098.P8117336102065315786

/-! ## A051098.P15368523042021371861

`∩[A047454(n+1), A049561(n+1)]`
-/

namespace A051098.P15368523042021371861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051098.P15368523042021371861

/-! ## A051098.P12420645230345337127

`∩[A047476(n+1), A049561(n+1)]`
-/

namespace A051098.P12420645230345337127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051098.P12420645230345337127

/-! ## A051098.P3390835966146023440

`∩[A047527(n+1)+1, A049561(n+1)]`
-/

namespace A051098.P3390835966146023440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047527 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051098.P3390835966146023440

/-! ## A051098.P592992198938254890

`filter[A049561(n+1), A342892(#)]`
-/

namespace A051098.P592992198938254890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342892 (f1 j).toNat = 1) n)

end

end A051098.P592992198938254890

/-! ## A051098.P5532448023575888986

`∩[A047542(n+1)+2, A049561(n+1)]`
-/

namespace A051098.P5532448023575888986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047542 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051098.P5532448023575888986

/-! ## A051098.P9176464233837189816

`∩[A047555(n+1)+2, A049561(n+1)]`
-/

namespace A051098.P9176464233837189816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047555 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051098.P9176464233837189816

/-! ## A051098.P4073967139667849883

`∩[A047405(n+1), A049561(n+1)]`
-/

namespace A051098.P4073967139667849883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051098.P4073967139667849883

/-! ## A051098.P3963270527069593899

`∩[A047419(n+1), A049561(n+1)]`
-/

namespace A051098.P3963270527069593899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051098.P3963270527069593899

/-! ## A051098.P1535374529093093247

`∩[A047453(n+1), A049561(n+1)]`
-/

namespace A051098.P1535374529093093247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051098.P1535374529093093247

/-! ## A051098.P17148058290218419197

`∩[A047420(n+1), A049561(n+1)]`
-/

namespace A051098.P17148058290218419197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051098.P17148058290218419197

/-! ## A051098.P6978350080906679329

`∩[A047513(n+1)+2, A049561(n+1)]`
-/

namespace A051098.P6978350080906679329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051098.P6978350080906679329

/-! ## A051098.P4202561704921466673

`filter[A049561(n+1), A131078(#)]`
-/

namespace A051098.P4202561704921466673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131078 (f1 j).toNat = 1) n)

end

end A051098.P4202561704921466673

/-!
# A051099: Primes p such that x^60 = -2 has a solution mod p.

The programs for A051099, there is no canonical definition to state claims against.
-/

/-! ## A051099.P12338223643124009268

`∩[A040028(n+1), A051079(n+1)]`
-/

namespace A051099.P12338223643124009268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051099.P12338223643124009268

/-! ## A051099.P7812184512765455538

`∩[A040159(n+1), A051075(n+1)]`
-/

namespace A051099.P7812184512765455538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051099.P7812184512765455538

/-! ## A051099.P1101868943752558977

`∩[A049547(n+1), A051071(n+1)]`
-/

namespace A051099.P1101868943752558977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051099.P1101868943752558977

/-! ## A051099.P7792694816287168540

`∩[A049547(n+1), A051075(n+1)]`
-/

namespace A051099.P7792694816287168540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051099.P7792694816287168540

/-! ## A051099.P155200493772982125

`∩[A049547(n+1), A051079(n+1)]`
-/

namespace A051099.P155200493772982125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051099.P155200493772982125

/-! ## A051099.P14906860184684159171

`∩[A051071(n+1), A051084(n+1)]`
-/

namespace A051099.P14906860184684159171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051099.P14906860184684159171

/-! ## A051099.P5826789981122627583

`∩[A051072(n+1), A051079(n+1)]`
-/

namespace A051099.P5826789981122627583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051099.P5826789981122627583

/-! ## A051099.P6678135292436554827

`∩[A051074(n+1), A051075(n+1)]`
-/

namespace A051099.P6678135292436554827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051099.P6678135292436554827

/-! ## A051099.P15121285941959691863

`∩[A051075(n+1), A051079(n+1)]`
-/

namespace A051099.P15121285941959691863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051099.P15121285941959691863

/-! ## A051099.P13986411845936624554

`∩[A051075(n+1), A051084(n+1)]`
-/

namespace A051099.P13986411845936624554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051099.P13986411845936624554

/-! ## A051099.P7719280795758728585

`∩[A051079(n+1), A051084(n+1)]`
-/

namespace A051099.P7719280795758728585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051099.P7719280795758728585

/-! ## A051099.P12135936982316490618

`∩[A051079(n+1), A057760(n+1)]`
-/

namespace A051099.P12135936982316490618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051099.P12135936982316490618

