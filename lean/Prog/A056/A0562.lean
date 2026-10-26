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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A056200: a(n) = 2^n - A056045(n).

The programs for A056200, the canonical program `A056200.P3887230577951053264` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056200 has offset 1).

The definition of A056200 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056045, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056200.P3887230577951053264

`2^(n+1)-A056045(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A056200

/-- `2^(n+1)-A056045(n+1)` -/
def P3887230577951053264.Spec : Prop :=
  ∀ n, P3887230577951053264.a n = A056200 (n + 1)

theorem P3887230577951053264.correct : P3887230577951053264.Spec := by
  intro n
  simp only [A056200, Nat.add_sub_cancel]

end A056200

/-! ## A056200.P7548739179273375433

`2^(n+1)-∑{d}[n+1, C(n+1, #)]`
-/

namespace A056200.P7548739179273375433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), Nat.choose (n + 1) d : ℕ) : ℤ)

end

end A056200.P7548739179273375433

namespace A056200

/-- `2^(n+1)-∑{d}[n+1, C(n+1, #)]` -/
def P7548739179273375433.Spec : Prop :=
  ∀ n, P7548739179273375433.a n = A056200 (n + 1)

end A056200

/-! ## A056200.P7950508106910918900

`and(-A056045(n+1), A126646(n))`
-/

namespace A056200.P7950508106910918900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A056045 (n + 1)) (A126646 n)

end

end A056200.P7950508106910918900

namespace A056200

/-- `and(-A056045(n+1), A126646(n))` -/
def P7950508106910918900.Spec : Prop :=
  ∀ n, P7950508106910918900.a n = A056200 (n + 1)

end A056200

/-! ## A056200.P13829768618128399659

`abs(A060546(2*(n+1))-A056045(n+1))`
-/

namespace A056200.P13829768618128399659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A060546 (2 * (n + 1)) - A056045 (n + 1)|

end

end A056200.P13829768618128399659

namespace A056200

/-- `abs(A060546(2*(n+1))-A056045(n+1))` -/
def P13829768618128399659.Spec : Prop :=
  ∀ n, P13829768618128399659.a n = A056200 (n + 1)

end A056200

/-! ## A056200.P4874810001025368674

`A000079(n)+A000079(n)-A056045(n+1)`
-/

namespace A056200.P4874810001025368674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A000079 n - A056045 (n + 1))

end

end A056200.P4874810001025368674

namespace A056200

/-- `A000079(n)+A000079(n)-A056045(n+1)` -/
def P4874810001025368674.Spec : Prop :=
  ∀ n, P4874810001025368674.a n = A056200 (n + 1)

theorem P4874810001025368674.correct : P4874810001025368674.Spec := by
  intro n
  simp only [A056200, Nat.add_sub_cancel, A056200.P4874810001025368674.a, A056200.P3887230577951053264.a, A000079, A000079.P10855139691139572931.a, A056045, A056045.P5899715325518009035.f1, A056045.P5899715325518009035.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A056200

/-! ## A056200.P7299623862945305905

`A056188(n+1)+A056189(n+1)-A056045(n+1)`
-/

namespace A056200.P7299623862945305905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056188 (n + 1) + (A056189 (n + 1) - A056045 (n + 1))

end

end A056200.P7299623862945305905

namespace A056200

/-- `A056188(n+1)+A056189(n+1)-A056045(n+1)` -/
def P7299623862945305905.Spec : Prop :=
  ∀ n, P7299623862945305905.a n = A056200 (n + 1)

end A056200

/-! ## A056200.P10395444699850428956

`A082906(n+1)+A271834(n+1)-A056045(n+1)`
-/

namespace A056200.P10395444699850428956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082906 (n + 1) + (A271834 (n + 1) - A056045 (n + 1))

end

end A056200.P10395444699850428956

namespace A056200

/-- `A082906(n+1)+A271834(n+1)-A056045(n+1)` -/
def P10395444699850428956.Spec : Prop :=
  ∀ n, P10395444699850428956.a n = A056200 (n + 1)

end A056200

/-!
# A056201: Characteristic cube divisor (A056191) of central binomial coefficient (A001405).

The programs for A056201, there is no canonical definition to state claims against.
-/

/-! ## A056201.P2484213155343305977

`A056059(n+1)^3`
-/

namespace A056201.P2484213155343305977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056059 (n + 1) ^ 3

end

end A056201.P2484213155343305977

/-! ## A056201.P14257224903582539150

`A056059(n+1)/(A056646(n+1)/A056056(n+1))²`
-/

namespace A056201.P14257224903582539150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056059 (n + 1) : ℚ) / ((A056646 (n + 1) : ℚ) / (A056056 (n + 1) : ℚ)) ^ 2

end

end A056201.P14257224903582539150

/-! ## A056201.P14518295824503929828

`A000578(A056059(n+1))`
-/

namespace A056201.P14518295824503929828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A056059 (n + 1)).toNat

end

end A056201.P14518295824503929828

/-! ## A056201.P11237409120483142050

`A002821(A056059(n+1)²)`
-/

namespace A056201.P11237409120483142050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (A056059 (n + 1) ^ 2).toNat

end

end A056201.P11237409120483142050

/-! ## A056201.P11864907654870262279

`(A056058(n+1)/A056060(n+1))^3`
-/

namespace A056201.P11864907654870262279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A056058 (n + 1) : ℚ) / (A056060 (n + 1) : ℚ)) ^ 3

end

end A056201.P11864907654870262279

/-! ## A056201.P1667636357068198149

`A001405(n+1)/A056202(n+1)`
-/

namespace A056201.P1667636357068198149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (n + 1) : ℚ) / (A056202 (n + 1) : ℚ)

end

end A056201.P1667636357068198149

/-! ## A056201.P5095937342912968074

`A008833(A056059(n+1)²²)/A056059(n+1)`
-/

namespace A056201.P5095937342912968074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008833 ((A056059 (n + 1) ^ 2) ^ 2).toNat : ℚ) / (A056059 (n + 1) : ℚ)

end

end A056201.P5095937342912968074

/-! ## A056201.P4921532450993865393

`A000190(A056059(n+1)²²)`
-/

namespace A056201.P4921532450993865393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 ((A056059 (n + 1) ^ 2) ^ 2).toNat

end

end A056201.P4921532450993865393

/-! ## A056201.P7603564909409621076

`A056191(A001405(n+1)/A056060(n+1))`
-/

namespace A056201.P7603564909409621076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056191 (SequenceMachineLib.roundAway ((A001405 (n + 1) : ℚ) / (A056060 (n + 1) : ℚ))).toNat

end

end A056201.P7603564909409621076

/-!
# A056202: Central binomial coefficient A001405(n) divided by its characteristic cube divisor A056201(n).

The programs for A056202, there is no canonical definition to state claims against.
-/

/-! ## A056202.P13342661536112091070

`A001405(n+1)/A056201(n+1)`
-/

namespace A056202.P13342661536112091070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (n + 1) : ℚ) / (A056201 (n + 1) : ℚ)

end

end A056202.P13342661536112091070

/-! ## A056202.P18412279286934783445

`A001405(n+1)/A056059(n+1)^3`
-/

namespace A056202.P18412279286934783445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (n + 1) : ℚ) / (A056059 (n + 1) ^ 3 : ℚ)

end

end A056202.P18412279286934783445

/-! ## A056202.P16230778256252685329

`A056060(n+1)*A056647(n+1)`
-/

namespace A056202.P16230778256252685329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056060 (n + 1) * A056647 (n + 1)

end

end A056202.P16230778256252685329

/-! ## A056202.P5671886068146260753

`Δ[A036256(n)]/A056201(n+1)`
-/

namespace A056202.P5671886068146260753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036256 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A056201 (n + 1) : ℚ)

end

end A056202.P5671886068146260753

/-! ## A056202.P1739823723572184116

`record[A046899(n)]/A056201(n+1)`
-/

namespace A056202.P1739823723572184116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A056201 (n + 1) : ℚ)

end

end A056202.P1739823723572184116

/-! ## A056202.P11794703811528368279

`record[A034869(n)]/A056201(n+1)`
-/

namespace A056202.P11794703811528368279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034869 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A056201 (n + 1) : ℚ)

end

end A056202.P11794703811528368279

/-!
# A056203: Triangle of numbers related to congruum problem: T(n,k)=n^2+2nk-k^2 with n>k>0, starting at T(2,1)=7.

The programs for A056203, the canonical program `A056203.P4742980478354179597` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056203 has offset 1).

The definition of A056203 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057103, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056203.P4742980478354179597

`sqrt(A057103(n+2)+A055096(n+2)²)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A056203

/-- `sqrt(A057103(n+2)+A055096(n+2)²)` -/
def P4742980478354179597.Spec : Prop :=
  ∀ n, P4742980478354179597.a n = (A056203 (n + 1) : ℝ)

end A056203

/-! ## A056203.P3996138070355983078

`sqrt(2*A057103(n+2)+A057105(n+1)²)`
-/

namespace A056203.P3996138070355983078
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * A057103 (n + 2) + A057105 (n + 1) ^ 2 : ℝ)

end

end A056203.P3996138070355983078

namespace A056203

/-- `sqrt(2*A057103(n+2)+A057105(n+1)²)` -/
def P3996138070355983078.Spec : Prop :=
  ∀ n, P3996138070355983078.a n = (A056203 (n + 1) : ℝ)

end A056203

/-! ## A056203.P4489918924757940461

`A338432(n+1)+A098352(n+1)`
-/

namespace A056203.P4489918924757940461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338432 (n + 1) + A098352 (n + 1)

end

end A056203.P4489918924757940461

namespace A056203

/-- `A338432(n+1)+A098352(n+1)` -/
def P4489918924757940461.Spec : Prop :=
  ∀ n, P4489918924757940461.a n = A056203 (n + 1)

end A056203

/-! ## A056203.P8688287262021951288

`A003991(n+1)+A001283(n+2)`
-/

namespace A056203.P8688287262021951288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + A001283 (n + 2)

end

end A056203.P8688287262021951288

namespace A056203

/-- `A003991(n+1)+A001283(n+2)` -/
def P8688287262021951288.Spec : Prop :=
  ∀ n, P8688287262021951288.a n = A056203 (n + 1)

end A056203

/-! ## A056203.P4914650301493434691

`A055096(n+2)+2*A003991(n+1)`
-/

namespace A056203.P4914650301493434691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055096 (n + 2) + 2 * A003991 (n + 1)

end

end A056203.P4914650301493434691

namespace A056203

/-- `A055096(n+2)+2*A003991(n+1)` -/
def P4914650301493434691.Spec : Prop :=
  ∀ n, P4914650301493434691.a n = A056203 (n + 1)

end A056203

/-! ## A056203.P730154693681466184

`A055096(n+2)+A098352(n+1)/2`
-/

namespace A056203.P730154693681466184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055096 (n + 2) : ℚ) + (A098352 (n + 1) : ℚ) / 2

end

end A056203.P730154693681466184

namespace A056203

/-- `A055096(n+2)+A098352(n+1)/2` -/
def P730154693681466184.Spec : Prop :=
  ∀ n, P730154693681466184.a n = (A056203 (n + 1) : ℚ)

end A056203

/-! ## A056203.P6284537023164781222

`2*A001283(n+2)-A055096(n+2)`
-/

namespace A056203.P6284537023164781222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001283 (n + 2) - A055096 (n + 2)

end

end A056203.P6284537023164781222

namespace A056203

/-- `2*A001283(n+2)-A055096(n+2)` -/
def P6284537023164781222.Spec : Prop :=
  ∀ n, P6284537023164781222.a n = A056203 (n + 1)

end A056203

/-! ## A056203.P8162477350495266741

`2*A140978(n+1)-A004736(n+1)²`
-/

namespace A056203.P8162477350495266741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140978 (n + 1) - A004736 (n + 1) ^ 2

end

end A056203.P8162477350495266741

namespace A056203

/-- `2*A140978(n+1)-A004736(n+1)²` -/
def P8162477350495266741.Spec : Prop :=
  ∀ n, P8162477350495266741.a n = A056203 (n + 1)

end A056203

/-! ## A056203.P2108772950132219566

`2*A003057(n+2)²-A055461(n+1)`
-/

namespace A056203.P2108772950132219566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003057 (n + 2) ^ 2 - A055461 (n + 1)

end

end A056203.P2108772950132219566

namespace A056203

/-- `2*A003057(n+2)²-A055461(n+1)` -/
def P2108772950132219566.Spec : Prop :=
  ∀ n, P2108772950132219566.a n = A056203 (n + 1)

end A056203

/-! ## A056203.P16616160282724909461

`2*A003057(n+2)²-A004736(n+1)²`
-/

namespace A056203.P16616160282724909461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003057 (n + 2) ^ 2 - A004736 (n + 1) ^ 2

end

end A056203.P16616160282724909461

namespace A056203

/-- `2*A003057(n+2)²-A004736(n+1)²` -/
def P16616160282724909461.Spec : Prop :=
  ∀ n, P16616160282724909461.a n = A056203 (n + 1)

end A056203

/-! ## A056203.P13443938917261768652

`A001105(A003057(n+2))-A004736(n+1)²`
-/

namespace A056203.P13443938917261768652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (A003057 (n + 2)).toNat - A004736 (n + 1) ^ 2

end

end A056203.P13443938917261768652

namespace A056203

/-- `A001105(A003057(n+2))-A004736(n+1)²` -/
def P13443938917261768652.Spec : Prop :=
  ∀ n, P13443938917261768652.a n = A056203 (n + 1)

end A056203

/-! ## A056203.P2012090269821521800

`A001283(n+2)+A003989(n+1)*A003990(n+1)`
-/

namespace A056203.P2012090269821521800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001283 (n + 2) + A003989 (n + 1) * A003990 (n + 1)

end

end A056203.P2012090269821521800

namespace A056203

/-- `A001283(n+2)+A003989(n+1)*A003990(n+1)` -/
def P2012090269821521800.Spec : Prop :=
  ∀ n, P2012090269821521800.a n = A056203 (n + 1)

end A056203

/-! ## A056203.P2730785875180439126

`A055096(n+2)+A004525(A098352(n+1))`
-/

namespace A056203.P2730785875180439126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055096 (n + 2) + A004525 (A098352 (n + 1)).toNat

end

end A056203.P2730785875180439126

namespace A056203

/-- `A055096(n+2)+A004525(A098352(n+1))` -/
def P2730785875180439126.Spec : Prop :=
  ∀ n, P2730785875180439126.a n = A056203 (n + 1)

end A056203

/-! ## A056203.P11307711081230451963

`A005843(A001283(n+2))-A055096(n+2)`
-/

namespace A056203.P11307711081230451963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A001283 (n + 2)).toNat - A055096 (n + 2)

end

end A056203.P11307711081230451963

namespace A056203

/-- `A005843(A001283(n+2))-A055096(n+2)` -/
def P11307711081230451963.Spec : Prop :=
  ∀ n, P11307711081230451963.a n = A056203 (n + 1)

end A056203

/-! ## A056203.P12474647859854709237

`A003963(A073060(n))+A001283(n+2)`
-/

namespace A056203.P12474647859854709237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A073060 n).toNat + A001283 (n + 2)

end

end A056203.P12474647859854709237

namespace A056203

/-- `A003963(A073060(n))+A001283(n+2)` -/
def P12474647859854709237.Spec : Prop :=
  ∀ n, P12474647859854709237.a n = A056203 (n + 1)

end A056203

/-!
# A056204: Number of n X 5 binary matrices under row and column permutations and column complementations.

The programs for A056204, there is no canonical definition to state claims against.
-/

/-! ## A056204.P6429320608807139139

`A363349(Δ[A023551(n+1)])`
-/

namespace A056204.P6429320608807139139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363349 (f1 (n + 1) - f1 n).toNat

end

end A056204.P6429320608807139139

/-! ## A056204.P5188947313274630878

`A363349(A155212(n+2)+2)`
-/

namespace A056204.P5188947313274630878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363349 (A155212 (n + 2) + 2).toNat

end

end A056204.P5188947313274630878

/-! ## A056204.P12483423819539107929

`A363349(Δ[A055831(n+5)]-1)`
-/

namespace A056204.P12483423819539107929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363349 (f1 (n + 1) - f1 n - 1).toNat

end

end A056204.P12483423819539107929

/-!
# A056205: Number of n X 6 binary matrices under row and column permutations and column complementations.

The programs for A056205, there is no canonical definition to state claims against.
-/

/-! ## A056205.P8018621851025779418

`A363349(eq[6, A025581(n)])`
-/

namespace A056205.P8018621851025779418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056205.P8018621851025779418

/-! ## A056205.P17297572279553596041

`A363349(A055999(n+4)-1)`
-/

namespace A056205.P17297572279553596041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363349 (A055999 (n + 4) - 1).toNat

end

end A056205.P17297572279553596041

/-! ## A056205.P11648796842111294489

`A363349(A056115(n+2)+8)`
-/

namespace A056205.P11648796842111294489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363349 (A056115 (n + 2) + 8).toNat

end

end A056205.P11648796842111294489

/-! ## A056205.P2095273537691057474

`A363349(eq[3, A141169(n)]+A016789(2*(n+2))/2)`
-/

namespace A056205.P2095273537691057474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363349 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) + (A016789 (2 * (n + 2)) : ℚ) / 2)).toNat

end

end A056205.P2095273537691057474

/-!
# A056206: Smallest prime p such that p + 2^n is also a prime.

The programs for A056206, there is no canonical definition to state claims against.
-/

/-! ## A056206.P5442755387953659742

`A056208(n)-2^n`
-/

namespace A056206.P5442755387953659742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056208 n - (2 ^ n : ℤ)

end

end A056206.P5442755387953659742

/-! ## A056206.P1619740327973047369

`A014963(A056208(n)-A000079(n))`
-/

namespace A056206.P1619740327973047369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A056208 n - A000079 n).toNat

end

end A056206.P1619740327973047369

/-! ## A056206.P15648691218939741804

`A020639(A056208(n)-A000079(n))`
-/

namespace A056206.P15648691218939741804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A056208 n - A000079 n).toNat

end

end A056206.P15648691218939741804

/-! ## A056206.P16570729933713822974

`A063956(A056208(n)-A000079(n))`
-/

namespace A056206.P16570729933713822974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063956 (A056208 n - A000079 n).toNat

end

end A056206.P16570729933713822974

/-! ## A056206.P18254079222172648993

`A001414(A056208(n)-A016116(2*n))`
-/

namespace A056206.P18254079222172648993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A056208 n - A016116 (2 * n)).toNat

end

end A056206.P18254079222172648993

/-! ## A056206.P2730352712477982833

`A006530(A056208(n)-A016116(2*n))`
-/

namespace A056206.P2730352712477982833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A056208 n - A016116 (2 * n)).toNat

end

end A056206.P2730352712477982833

/-! ## A056206.P4619889688807445241

`A007918(A056208(n)-A016116(2*n))`
-/

namespace A056206.P4619889688807445241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A056208 n - A016116 (2 * n)).toNat

end

end A056206.P4619889688807445241

/-!
# A056207: Number of binary trees of height <= n.

The programs for A056207, the canonical program `A056207.P1556105150605585897` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056207 has offset 1).

The definition of A056207 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056207.P1556105150605585897

`a(n-1)²+4*a(n-1)+3` with `a(0)=3`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056207

/-- `a(n-1)²+4*a(n-1)+3` -/
def P1556105150605585897.Spec : Prop :=
  ∀ n, (P1556105150605585897.a n : ℤ) = A056207 (n + 1)

theorem P1556105150605585897.correct : P1556105150605585897.Spec := by
  intro n
  simp only [A056207, Nat.add_sub_cancel]

end A056207

/-! ## A056207.P16672342338589381191

`(a(n-1)+2)²-1` with `a(0)=3`
-/

namespace A056207.P16672342338589381191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (a (n - 1) + 2) ^ 2 - 1

end

end A056207.P16672342338589381191

namespace A056207

/-- `(a(n-1)+2)²-1` -/
def P16672342338589381191.Spec : Prop :=
  ∀ n, P16672342338589381191.a n = A056207 (n + 1)

end A056207

/-! ## A056207.P7950980298946969984

`(a(n-1)+2)^(4/2)-1` with `a(0)=3`
-/

namespace A056207.P7950980298946969984
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [3] fun n a =>
  (a (n - 1) + 2) ^ ((4 : ℚ) / 2 : ℝ) - 1

end

end A056207.P7950980298946969984

namespace A056207

/-- `(a(n-1)+2)^(4/2)-1` -/
def P7950980298946969984.Spec : Prop :=
  ∀ n, P7950980298946969984.a n = (A056207 (n + 1) : ℝ)

end A056207

/-! ## A056207.P10859527220588427362

`∑[A001699(n+2)]`
-/

namespace A056207.P10859527220588427362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001699 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056207.P10859527220588427362

namespace A056207

/-- `∑[A001699(n+2)]` -/
def P10859527220588427362.Spec : Prop :=
  ∀ n, P10859527220588427362.a n = A056207 (n + 1)

end A056207

/-!
# A056208: Primes p+2^n arising in A056206.

The programs for A056208, there is no canonical definition to state claims against.
-/

/-! ## A056208.P448472645283926811

`A056206(n)+2^n`
-/

namespace A056208.P448472645283926811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056206 n + (2 ^ n : ℤ)

end

end A056208.P448472645283926811

/-! ## A056208.P8825469908148036974

`A000225(n)+A056206(n)+1`
-/

namespace A056208.P8825469908148036974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A056206 n + 1)

end

end A056208.P8825469908148036974

/-! ## A056208.P396850399254808329

`A000051(n)+A056206(n)-1`
-/

namespace A056208.P396850399254808329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A056206 n - 1)

end

end A056208.P396850399254808329

/-! ## A056208.P1027481447567593996

`A016116(2*n)+A056206(n)`
-/

namespace A056208.P1027481447567593996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n) + A056206 n

end

end A056208.P1027481447567593996

/-! ## A056208.P6713277338083499890

`A000051(n)+A000010(A056206(n))`
-/

namespace A056208.P6713277338083499890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + A000010 (A056206 n).toNat

end

end A056208.P6713277338083499890

/-! ## A056208.P17395749565732651097

`A000225(n)+A000203(A056206(n))`
-/

namespace A056208.P17395749565732651097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + A000203 (A056206 n).toNat

end

end A056208.P17395749565732651097

/-! ## A056208.P540885284363645942

`∑[A057728(∑[n]+2)]+A056206(n)`
-/

namespace A056208.P540885284363645942
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A056206 n

end

end A056208.P540885284363645942

/-!
# A056210: Primes p whose period of reciprocal equals (p-1)/5.

The programs for A056210, there is no canonical definition to state claims against.
-/

/-! ## A056210.P18096420132726800785

`A045319(eq[5, A060370(n+1)])`
-/

namespace A056210.P18096420132726800785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056210.P18096420132726800785

/-! ## A056210.P13858870662306818836

`A045344(eq[5, A060370(n+1)])`
-/

namespace A056210.P13858870662306818836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056210.P13858870662306818836

/-! ## A056210.P7073860328075516959

`A065091(eq[5, A060370(n+1)])`
-/

namespace A056210.P7073860328075516959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056210.P7073860328075516959

/-!
# A056211: Primes p whose period of reciprocal equals (p-1)/6.

The programs for A056211, there is no canonical definition to state claims against.
-/

/-! ## A056211.P15798114774679450614

`A045319(eq[6, A060370(n+1)])`
-/

namespace A056211.P15798114774679450614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056211.P15798114774679450614

/-! ## A056211.P6499311300283835160

`A045344(eq[6, A060370(n+1)])`
-/

namespace A056211.P6499311300283835160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056211.P6499311300283835160

/-! ## A056211.P6543576959413178324

`A065091(eq[6, A060370(n+1)])`
-/

namespace A056211.P6543576959413178324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056211.P6543576959413178324

/-! ## A056211.P11210231610817136001

`A004139(eq[6, A060370(n+2)])`
-/

namespace A056211.P11210231610817136001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060370 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056211.P11210231610817136001

/-! ## A056211.P9586513703832046981

`A000040(eq[6, A060370(n+1)]+1)`
-/

namespace A056211.P9586513703832046981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A056211.P9586513703832046981

/-!
# A056218: If n = p_1^a_1 * p_2^a_2 * p_3^a_3 * ..., where p_k is the k-th prime and the a's are nonnegative integers, then a(n) = n!/product_{k >= 1} [(p_k)!^a_k].

The programs for A056218, there is no canonical definition to state claims against.
-/

/-! ## A056218.P5964728828845454085

`A075377(lt[A075377(n+1), 2*n])`
-/

namespace A056218.P5964728828845454085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075377 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075377 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A056218.P5964728828845454085

/-! ## A056218.P13473984767436006786

`A075377(lt[A075377(n+1)/2, n])`
-/

namespace A056218.P13473984767436006786
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075377 (n + 1) : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075377 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A056218.P13473984767436006786

/-! ## A056218.P17679382435140317641

`A075377(lt[A075377(n+1)-n, n])`
-/

namespace A056218.P17679382435140317641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075377 (n + 1) - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075377 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A056218.P17679382435140317641

/-! ## A056218.P10650875982057467069

`n!/∏{d}[n, A014963(#)!]`
-/

namespace A056218.P10650875982057467069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / ((∏ d ∈ Nat.divisors (f1 n), Nat.factorial (A014963 d).toNat : ℕ) : ℚ)

end

end A056218.P10650875982057467069

/-! ## A056218.P2317844017648609495

`A000142(n)/A240023(A028310(n))`
-/

namespace A056218.P2317844017648609495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A240023 (A028310 n).toNat : ℚ)

end

end A056218.P2317844017648609495

/-!
# A056220: a(n) = 2*n^2 - 1.

The programs for A056220, the canonical program `A056220.P5045014962229294692` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056220 has offset 0).

The definition of A056220 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n²-1` (program `A056220.P5045014962229294692`, by `A056220.P5045014962229294692.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A056220.P5045014962229294692

`2*n²-1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056220

/-- `2*n²-1` -/
def P5045014962229294692.Spec : Prop :=
  ∀ n, P5045014962229294692.a n = A056220 n

theorem P5045014962229294692.correct : P5045014962229294692.Spec := by
  intro n
  simp only [A056220]

end A056220

/-! ## A056220.P9987167400551315147

`xor(-(2*n²), -1)`
-/

namespace A056220.P9987167400551315147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(2 * n ^ 2 : ℤ)) (-1)

end

end A056220.P9987167400551315147

namespace A056220

/-- `xor(-(2*n²), -1)` -/
def P9987167400551315147.Spec : Prop :=
  ∀ n, P9987167400551315147.a n = A056220 n

end A056220

/-! ## A056220.P514628940732879474

`or(1, ∑[4*n-2])`
-/

namespace A056220.P514628940732879474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A056220.P514628940732879474

namespace A056220

/-- `or(1, ∑[4*n-2])` -/
def P514628940732879474.Spec : Prop :=
  ∀ n, P514628940732879474.a n = A056220 n

end A056220

/-! ## A056220.P3709330010103590503

`-or(1, -(2*n²))`
-/

namespace A056220.P3709330010103590503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-(2 * n ^ 2 : ℤ))

end

end A056220.P3709330010103590503

namespace A056220

/-- `-or(1, -(2*n²))` -/
def P3709330010103590503.Spec : Prop :=
  ∀ n, P3709330010103590503.a n = A056220 n

end A056220

/-! ## A056220.P11785575626461191900

`floor(2*(cos(2)+n²))`
-/

namespace A056220.P11785575626461191900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (Real.cos (2 : ℝ) + (n ^ 2 : ℝ))⌋

end

end A056220.P11785575626461191900

namespace A056220

/-- `floor(2*(cos(2)+n²))` -/
def P11785575626461191900.Spec : Prop :=
  ∀ n, P11785575626461191900.a n = A056220 n

end A056220

/-! ## A056220.P2824977676335501735

`round(2*(cos(2)+n²))`
-/

namespace A056220.P2824977676335501735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * (Real.cos (2 : ℝ) + (n ^ 2 : ℝ)))

end

end A056220.P2824977676335501735

namespace A056220

/-- `round(2*(cos(2)+n²))` -/
def P2824977676335501735.Spec : Prop :=
  ∀ n, P2824977676335501735.a n = A056220 n

end A056220

/-! ## A056220.P5666458378210041182

`ceil(2*(cos(3)+n²))`
-/

namespace A056220.P5666458378210041182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * (Real.cos (3 : ℝ) + (n ^ 2 : ℝ))⌉

end

end A056220.P5666458378210041182

namespace A056220

/-- `ceil(2*(cos(3)+n²))` -/
def P5666458378210041182.Spec : Prop :=
  ∀ n, P5666458378210041182.a n = A056220 n

end A056220

/-! ## A056220.P13548693804720913071

`floor(2*(tan(3)+n²))`
-/

namespace A056220.P13548693804720913071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (Real.tan (3 : ℝ) + (n ^ 2 : ℝ))⌋

end

end A056220.P13548693804720913071

namespace A056220

/-- `floor(2*(tan(3)+n²))` -/
def P13548693804720913071.Spec : Prop :=
  ∀ n, P13548693804720913071.a n = A056220 n

end A056220

/-! ## A056220.P14959272266105702154

`floor(2*(cot(2)+n²))`
-/

namespace A056220.P14959272266105702154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (Real.cot (2 : ℝ) + (n ^ 2 : ℝ))⌋

end

end A056220.P14959272266105702154

namespace A056220

/-- `floor(2*(cot(2)+n²))` -/
def P14959272266105702154.Spec : Prop :=
  ∀ n, P14959272266105702154.a n = A056220 n

end A056220

/-! ## A056220.P1588229398337748920

`round(2*(cot(2)+n²))`
-/

namespace A056220.P1588229398337748920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * (Real.cot (2 : ℝ) + (n ^ 2 : ℝ)))

end

end A056220.P1588229398337748920

namespace A056220

/-- `round(2*(cot(2)+n²))` -/
def P1588229398337748920.Spec : Prop :=
  ∀ n, P1588229398337748920.a n = A056220 n

end A056220

/-! ## A056220.P17882547715475989186

`ceil(n/acot(2*n)-ϕ)`
-/

namespace A056220.P17882547715475989186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / SequenceMachineLib.acot (2 * n : ℝ) - Real.goldenRatio⌉

end

end A056220.P17882547715475989186

namespace A056220

/-- `ceil(n/acot(2*n)-ϕ)` -/
def P17882547715475989186.Spec : Prop :=
  ∀ n, P17882547715475989186.a n = A056220 n

end A056220

/-! ## A056220.P8876176875481215680

`∑[a(n-1)+4]` with `a(0)=-1, a(1)=2`
-/

namespace A056220.P8876176875481215680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 2] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056220.P8876176875481215680

namespace A056220

/-- `∑[a(n-1)+4]` -/
def P8876176875481215680.Spec : Prop :=
  ∀ n, P8876176875481215680.a n = A056220 n

end A056220

/-! ## A056220.P16630069429534412227

`∑[ogf((-1+4x+x^2)/(1-2x+x^2))]`
-/

namespace A056220.P16630069429534412227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 4, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056220.P16630069429534412227

namespace A056220

/-- `∑[ogf((-1+4x+x^2)/(1-2x+x^2))]` -/
def P16630069429534412227.Spec : Prop :=
  ∀ n, P16630069429534412227.a n = A056220 n

end A056220

/-! ## A056220.P14091973926514071009

`ogf((-1+4x+x^2)/(1-3x+3x^2-x^3))`
-/

namespace A056220.P14091973926514071009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 4, 1] [1, -3, 3, -1] n

end

end A056220.P14091973926514071009

namespace A056220

/-- `ogf((-1+4x+x^2)/(1-3x+3x^2-x^3))` -/
def P14091973926514071009.Spec : Prop :=
  ∀ n, P14091973926514071009.a n = A056220 n

end A056220

/-! ## A056220.P13750785600873291024

`(Δ[C(2*n, 3)]-2)/2`
-/

namespace A056220.P13750785600873291024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 2 : ℚ) / 2

end

end A056220.P13750785600873291024

namespace A056220

/-- `(Δ[C(2*n, 3)]-2)/2` -/
def P13750785600873291024.Spec : Prop :=
  ∀ n, P13750785600873291024.a n = (A056220 n : ℚ)

theorem P13750785600873291024.correct : P13750785600873291024.Spec := by
  intro n
  simp only [A056220, Nat.add_sub_cancel, A056220.P13750785600873291024.f1, A056220.P13750785600873291024.a, A056220.P5045014962229294692.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A056220

/-! ## A056220.P16238877951679517363

`ceil(C(2*n, 2)-ϕ+n)`
-/

namespace A056220.P16238877951679517363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (2 * n) 2 : ℝ) - Real.goldenRatio + (n : ℝ)⌉

end

end A056220.P16238877951679517363

namespace A056220

/-- `ceil(C(2*n, 2)-ϕ+n)` -/
def P16238877951679517363.Spec : Prop :=
  ∀ n, P16238877951679517363.a n = A056220 n

end A056220

/-! ## A056220.P16400488212056473129

`ceil(C(2*n, 2)-(ϕ-n))`
-/

namespace A056220.P16400488212056473129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (2 * n) 2 : ℝ) - (Real.goldenRatio - (n : ℝ))⌉

end

end A056220.P16400488212056473129

namespace A056220

/-- `ceil(C(2*n, 2)-(ϕ-n))` -/
def P16400488212056473129.Spec : Prop :=
  ∀ n, P16400488212056473129.a n = A056220 n

end A056220

/-! ## A056220.P7295932918100447551

`(Δ[lcm(n, n-1)]²-2)/2`
-/

namespace A056220.P7295932918100447551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 - 2 : ℚ) / 2

end

end A056220.P7295932918100447551

namespace A056220

/-- `(Δ[lcm(n, n-1)]²-2)/2` -/
def P7295932918100447551.Spec : Prop :=
  ∀ n, P7295932918100447551.a n = (A056220 n : ℚ)

end A056220

/-! ## A056220.P13111413010073732907

`ceil(n*2*n-atan(n+2))`
-/

namespace A056220.P13111413010073732907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n * (2 * n) : ℝ) - Real.arctan (n + 2 : ℝ)⌉

end

end A056220.P13111413010073732907

namespace A056220

/-- `ceil(n*2*n-atan(n+2))` -/
def P13111413010073732907.Spec : Prop :=
  ∀ n, P13111413010073732907.a n = A056220 n

end A056220

/-! ## A056220.P2929665246260436868

`floor(n*2*n-acot(n+1))`
-/

namespace A056220.P2929665246260436868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n * (2 * n) : ℝ) - SequenceMachineLib.acot (n + 1 : ℝ)⌋

end

end A056220.P2929665246260436868

namespace A056220

/-- `floor(n*2*n-acot(n+1))` -/
def P2929665246260436868.Spec : Prop :=
  ∀ n, P2929665246260436868.a n = A056220 n

end A056220

/-!
# A056221: Image of primes (A000040) under "little Hankel" transform that sends [c_0, c_1, ...] to [d_0, d_1, ...] where d_n = c_n^2 - c_{n+1}*c_{n-1}.

The programs for A056221, the canonical program `A056221.P15833640707976573169` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056221 has offset 1).

The definition of A056221 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056221.P15833640707976573169

`A000040(n+2)²-A000040(n+1)*A000040(n+3)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A056221

/-- `A000040(n+2)²-A000040(n+1)*A000040(n+3)` -/
def P15833640707976573169.Spec : Prop :=
  ∀ n, P15833640707976573169.a n = A056221 (n + 1)

theorem P15833640707976573169.correct : P15833640707976573169.Spec := by
  intro n
  simp only [A056221, Nat.add_sub_cancel]

end A056221

/-! ## A056221.P5220276756638080211

`A090076(n+1)-A324795(n+1)`
-/

namespace A056221.P5220276756638080211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (n + 1) - A324795 (n + 1)

end

end A056221.P5220276756638080211

namespace A056221

/-- `A090076(n+1)-A324795(n+1)` -/
def P5220276756638080211.Spec : Prop :=
  ∀ n, P5220276756638080211.a n = A056221 (n + 1)

theorem P5220276756638080211.correct : P5220276756638080211.Spec := by
  intro n
  simp only [A056221, Nat.add_sub_cancel, A056221.P5220276756638080211.a, A056221.P15833640707976573169.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A090076, A090076.P13758090141823920472.a, A324795, A324795.P13520528308914604177.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A056221

/-! ## A056221.P11512989873069947580

`A065091(n+1)²-A090076(n+1)`
-/

namespace A056221.P11512989873069947580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) ^ 2 - A090076 (n + 1)

end

end A056221.P11512989873069947580

namespace A056221

/-- `A065091(n+1)²-A090076(n+1)` -/
def P11512989873069947580.Spec : Prop :=
  ∀ n, P11512989873069947580.a n = A056221 (n + 1)

end A056221

/-! ## A056221.P18096132233236866898

`A048852(n+1)-A000040(n+1)*A001223(n+2)`
-/

namespace A056221.P18096132233236866898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048852 (n + 1) - A000040 (n + 1) * A001223 (n + 2)

end

end A056221.P18096132233236866898

namespace A056221

/-- `A048852(n+1)-A000040(n+1)*A001223(n+2)` -/
def P18096132233236866898.Spec : Prop :=
  ∀ n, P18096132233236866898.a n = A056221 (n + 1)

end A056221

/-! ## A056221.P18249745596373551954

`A066116(n+3)/A090076(n+1)-A090076(n+1)`
-/

namespace A056221.P18249745596373551954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066116 (n + 3) : ℚ) / (A090076 (n + 1) : ℚ) - (A090076 (n + 1) : ℚ)

end

end A056221.P18249745596373551954

namespace A056221

/-- `A066116(n+3)/A090076(n+1)-A090076(n+1)` -/
def P18249745596373551954.Spec : Prop :=
  ∀ n, P18249745596373551954.a n = (A056221 (n + 1) : ℚ)

end A056221

/-! ## A056221.P7087272040712914024

`A006094(n+1)²/A001248(n+1)-A090076(n+1)`
-/

namespace A056221.P7087272040712914024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006094 (n + 1) ^ 2 : ℚ) / (A001248 (n + 1) : ℚ) - (A090076 (n + 1) : ℚ)

end

end A056221.P7087272040712914024

namespace A056221

/-- `A006094(n+1)²/A001248(n+1)-A090076(n+1)` -/
def P7087272040712914024.Spec : Prop :=
  ∀ n, P7087272040712914024.a n = (A056221 (n + 1) : ℚ)

end A056221

/-! ## A056221.P3181561649913098273

`A065091(n+1)²-A046301(n+1)/A065091(n+1)`
-/

namespace A056221.P3181561649913098273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 1) ^ 2 : ℚ) - (A046301 (n + 1) : ℚ) / (A065091 (n + 1) : ℚ)

end

end A056221.P3181561649913098273

namespace A056221

/-- `A065091(n+1)²-A046301(n+1)/A065091(n+1)` -/
def P3181561649913098273.Spec : Prop :=
  ∀ n, P3181561649913098273.a n = (A056221 (n + 1) : ℚ)

end A056221

/-! ## A056221.P1581177318189282951

`(A046301(n+1)/A090076(n+1))²-A090076(n+1)`
-/

namespace A056221.P1581177318189282951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A046301 (n + 1) : ℚ) / (A090076 (n + 1) : ℚ)) ^ 2 - (A090076 (n + 1) : ℚ)

end

end A056221.P1581177318189282951

namespace A056221

/-- `(A046301(n+1)/A090076(n+1))²-A090076(n+1)` -/
def P1581177318189282951.Spec : Prop :=
  ∀ n, P1581177318189282951.a n = (A056221 (n + 1) : ℚ)

end A056221

/-! ## A056221.P3914818562078747338

`A258155(n+1)/A090076(n+1)²-A090076(n+1)`
-/

namespace A056221.P3914818562078747338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258155 (n + 1) : ℚ) / (A090076 (n + 1) ^ 2 : ℚ) - (A090076 (n + 1) : ℚ)

end

end A056221.P3914818562078747338

namespace A056221

/-- `A258155(n+1)/A090076(n+1)²-A090076(n+1)` -/
def P3914818562078747338.Spec : Prop :=
  ∀ n, P3914818562078747338.a n = (A056221 (n + 1) : ℚ)

end A056221

/-! ## A056221.P15511795664748298186

`A001248(n+2)-A090076(n+1)`
-/

namespace A056221.P15511795664748298186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 2) - A090076 (n + 1)

end

end A056221.P15511795664748298186

namespace A056221

/-- `A001248(n+2)-A090076(n+1)` -/
def P15511795664748298186.Spec : Prop :=
  ∀ n, P15511795664748298186.a n = A056221 (n + 1)

end A056221

/-! ## A056221.P16362789394453626560

`A000040(n+2)²-A090076(n+1)`
-/

namespace A056221.P16362789394453626560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) ^ 2 - A090076 (n + 1)

end

end A056221.P16362789394453626560

namespace A056221

/-- `A000040(n+2)²-A090076(n+1)` -/
def P16362789394453626560.Spec : Prop :=
  ∀ n, P16362789394453626560.a n = A056221 (n + 1)

end A056221

/-! ## A056221.P12219121249356243603

`A000040(n+2)*A073272(n+1)-A022462(n+1)`
-/

namespace A056221.P12219121249356243603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A073272 (n + 1) - A022462 (n + 1)

end

end A056221.P12219121249356243603

namespace A056221

/-- `A000040(n+2)*A073272(n+1)-A022462(n+1)` -/
def P12219121249356243603.Spec : Prop :=
  ∀ n, P12219121249356243603.a n = A056221 (n + 1)

end A056221

/-! ## A056221.P3032250268960806038

`A000040(n+2)*A001223(n+1)-A205955(n+1)`
-/

namespace A056221.P3032250268960806038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A001223 (n + 1) - A205955 (n + 1)

end

end A056221.P3032250268960806038

namespace A056221

/-- `A000040(n+2)*A001223(n+1)-A205955(n+1)` -/
def P3032250268960806038.Spec : Prop :=
  ∀ n, P3032250268960806038.a n = A056221 (n + 1)

theorem P3032250268960806038.correct : P3032250268960806038.Spec := by
  intro n
  simp only [A056221, Nat.add_sub_cancel, A056221.P3032250268960806038.a, A056221.P15833640707976573169.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A205955, A205955.P3288332573374675140.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A056221

/-! ## A056221.P14383285382266305836

`A001248(n+2)-A000040(n+1)*A065091(n+2)`
-/

namespace A056221.P14383285382266305836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 2) - A000040 (n + 1) * A065091 (n + 2)

end

end A056221.P14383285382266305836

namespace A056221

/-- `A001248(n+2)-A000040(n+1)*A065091(n+2)` -/
def P14383285382266305836.Spec : Prop :=
  ∀ n, P14383285382266305836.a n = A056221 (n + 1)

theorem P14383285382266305836.correct : P14383285382266305836.Spec := by
  intro n
  simp only [A056221, Nat.add_sub_cancel, A056221.P14383285382266305836.a, A056221.P15833640707976573169.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A056221

/-! ## A056221.P12340905101495247646

`A000040(n+2)²-A176098(n+3)`
-/

namespace A056221.P12340905101495247646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) ^ 2 - A176098 (n + 3)

end

end A056221.P12340905101495247646

namespace A056221

/-- `A000040(n+2)²-A176098(n+3)` -/
def P12340905101495247646.Spec : Prop :=
  ∀ n, P12340905101495247646.a n = A056221 (n + 1)

end A056221

/-! ## A056221.P14658821398069125023

`p?[A061345(n)]²-A090076(n+1)`
-/

namespace A056221.P14658821398069125023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - A090076 (n + 1)

end

end A056221.P14658821398069125023

namespace A056221

/-- `p?[A061345(n)]²-A090076(n+1)` -/
def P14658821398069125023.Spec : Prop :=
  ∀ n, P14658821398069125023.a n = A056221 (n + 1)

end A056221

/-! ## A056221.P16237815746901526881

`A000040(n+2)²-A333747(2*(n+1))`
-/

namespace A056221.P16237815746901526881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) ^ 2 - A333747 (2 * (n + 1))

end

end A056221.P16237815746901526881

namespace A056221

/-- `A000040(n+2)²-A333747(2*(n+1))` -/
def P16237815746901526881.Spec : Prop :=
  ∀ n, P16237815746901526881.a n = A056221 (n + 1)

end A056221

/-! ## A056221.P8210426039491487089

`p?[A004273(n)]²-A090076(n+1)`
-/

namespace A056221.P8210426039491487089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - A090076 (n + 1)

end

end A056221.P8210426039491487089

namespace A056221

/-- `p?[A004273(n)]²-A090076(n+1)` -/
def P8210426039491487089.Spec : Prop :=
  ∀ n, P8210426039491487089.a n = A056221 (n + 1)

end A056221

/-! ## A056221.P2121950540554991578

`p?[A005408(n)]²-A090076(n+1)`
-/

namespace A056221.P2121950540554991578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - A090076 (n + 1)

end

end A056221.P2121950540554991578

namespace A056221

/-- `p?[A005408(n)]²-A090076(n+1)` -/
def P2121950540554991578.Spec : Prop :=
  ∀ n, P2121950540554991578.a n = A056221 (n + 1)

end A056221

/-! ## A056221.P9204326119084197796

`A056140(p?[Δ[n²]])`
-/

namespace A056221.P9204326119084197796
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056140 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A056221.P9204326119084197796

namespace A056221

/-- `A056140(p?[Δ[n²]])` -/
def P9204326119084197796.Spec : Prop :=
  ∀ n, P9204326119084197796.a n = A056221 (n + 1)

end A056221

/-!
# A056222: Image of partition numbers (A000041) under "little Hankel" transform that sends [c_0, c_1, ...] to [d_0, d_1, ...] where d_n = c_n^2 - c_{n+1}*c_{n-1}.

The programs for A056222, there is no canonical definition to state claims against.
-/

/-! ## A056222.P8635947200127797727

`A000041(n+1)²-A000041(n)*A000041(n+2)`
-/

namespace A056222.P8635947200127797727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A000041 n * A000041 (n + 2)

end

end A056222.P8635947200127797727

/-!
# A056223: Hankel transform of partition numbers (A000041).

The programs for A056223, there is no canonical definition to state claims against.
-/

/-! ## A056223.P17580009985080278035

`A180494(A277439(n+1))`
-/

namespace A056223.P17580009985080278035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180494 (A277439 (n + 1)).toNat

end

end A056223.P17580009985080278035

/-! ## A056223.P11532391674402348206

`A046978(or(2*n, A218952(n)))`
-/

namespace A056223.P11532391674402348206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (Int.lor (2 * n : ℤ) (A218952 n)).toNat

end

end A056223.P11532391674402348206

/-! ## A056223.P14243214345937554666

`A242647(A315073(n)+A071332(n+1))`
-/

namespace A056223.P14243214345937554666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242647 (A315073 n + A071332 (n + 1)).toNat

end

end A056223.P14243214345937554666

/-! ## A056223.P8653431491261426283

`A008683(or(A004525(n), A167834(n+1)))`
-/

namespace A056223.P8653431491261426283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.lor (A004525 n) (A167834 (n + 1))).toNat

end

end A056223.P8653431491261426283

/-! ## A056223.P17982048761385805727

`A008683(A128362(n+1)+A014688(n+1))`
-/

namespace A056223.P17982048761385805727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A128362 (n + 1) + A014688 (n + 1)).toNat

end

end A056223.P17982048761385805727

/-!
# A056224: Image of number of divisors sequence (A000005) under "little Hankel" transform that sends [c_0, c_1, ...] to [d_0, d_1, ...] where d_n = c_n^2 - c_{n+1}*c_{n-1}.

The programs for A056224, the canonical program `A056224.P11237647721291882159` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056224 has offset 1).

The definition of A056224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056224.P11237647721291882159

`A000005(n+2)²-A000005(n+1)*A000005(n+3)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A056224

/-- `A000005(n+2)²-A000005(n+1)*A000005(n+3)` -/
def P11237647721291882159.Spec : Prop :=
  ∀ n, P11237647721291882159.a n = A056224 (n + 1)

theorem P11237647721291882159.correct : P11237647721291882159.Spec := by
  intro n
  simp only [A056224, Nat.add_sub_cancel]

end A056224

/-!
# A056226: Image of Moebius function (A008683) under "little Hankel" transform that sends [c_0, c_1, ...] to [d_0, d_1, ...] where d_n = c_n^2 - c_{n+1}*c_{n-1}.

The programs for A056226, the canonical program `A056226.P10838765858308527224` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056226 has offset 1).

The definition of A056226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056226.P5078149374491530474

`A008683(n+1)²-A008683(floor((n+2)/acot(n)))`
-/

namespace A056226.P5078149374491530474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2 - A008683 ⌊(n + 2 : ℝ) / SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A056226.P5078149374491530474

namespace A056226

/-- `A008683(n+1)²-A008683(floor((n+2)/acot(n)))` -/
def P5078149374491530474.Spec : Prop :=
  ∀ n, P5078149374491530474.a n = A056226 (n + 1)

end A056226

/-! ## A056226.P10838765858308527224

`A008966(n+1)-A008683(A085046(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A056226

/-- `A008966(n+1)-A008683(A085046(n+1))` -/
def P10838765858308527224.Spec : Prop :=
  ∀ n, P10838765858308527224.a n = A056226 (n + 1)

theorem P10838765858308527224.correct : P10838765858308527224.Spec := by
  intro n
  simp only [A056226, Nat.add_sub_cancel]

end A056226

/-! ## A056226.P7339210168270297323

`A008966(n+1)-A008683(A132411(n+1))`
-/

namespace A056226.P7339210168270297323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) - A008683 (A132411 (n + 1)).toNat

end

end A056226.P7339210168270297323

namespace A056226

/-- `A008966(n+1)-A008683(A132411(n+1))` -/
def P7339210168270297323.Spec : Prop :=
  ∀ n, P7339210168270297323.a n = A056226 (n + 1)

end A056226

/-! ## A056226.P6153000255762070112

`A008683(n+1)²-A008683(A085046(n+1))`
-/

namespace A056226.P6153000255762070112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2 - A008683 (A085046 (n + 1)).toNat

end

end A056226.P6153000255762070112

namespace A056226

/-- `A008683(n+1)²-A008683(A085046(n+1))` -/
def P6153000255762070112.Spec : Prop :=
  ∀ n, P6153000255762070112.a n = A056226 (n + 1)

end A056226

/-! ## A056226.P8505294906974751356

`A008683(n+1)²-A008683(A132411(n+1))`
-/

namespace A056226.P8505294906974751356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2 - A008683 (A132411 (n + 1)).toNat

end

end A056226.P8505294906974751356

namespace A056226

/-- `A008683(n+1)²-A008683(A132411(n+1))` -/
def P8505294906974751356.Spec : Prop :=
  ∀ n, P8505294906974751356.a n = A056226 (n + 1)

end A056226

/-! ## A056226.P15180327144374246730

`Δ[A013928(n+1)]-A008683(A085046(n+1))`
-/

namespace A056226.P15180327144374246730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A008683 (A085046 (n + 1)).toNat

end

end A056226.P15180327144374246730

namespace A056226

/-- `Δ[A013928(n+1)]-A008683(A085046(n+1))` -/
def P15180327144374246730.Spec : Prop :=
  ∀ n, P15180327144374246730.a n = A056226 (n + 1)

theorem P15180327144374246730.correct : P15180327144374246730.Spec := by
  intro n
  simp only [A056226, Nat.add_sub_cancel, A056226.P15180327144374246730.f1, A056226.P15180327144374246730.a, A056226.P10838765858308527224.a, A008683, A008683.P18254306604665478110.a, A008966, A008966.P884693903657889754.a, A013928, A013928.P12891540521727461604.f2, A013928.P12891540521727461604.f1, A013928.P12891540521727461604.a, A085046, A085046.P11786341925002024628.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A005940, A005940.P5942875842694471387.a, A010060, A010060.P3080921269106500717.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A056226

/-! ## A056226.P5007890718448211386

`A008966(n+1)+A008683(2*A085046(n+1))`
-/

namespace A056226.P5007890718448211386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) + A008683 (2 * A085046 (n + 1)).toNat

end

end A056226.P5007890718448211386

namespace A056226

/-- `A008966(n+1)+A008683(2*A085046(n+1))` -/
def P5007890718448211386.Spec : Prop :=
  ∀ n, P5007890718448211386.a n = A056226 (n + 1)

end A056226

/-! ## A056226.P6163187457285725583

`A080323(n+1)²-A080323(A085046(n+1))`
-/

namespace A056226.P6163187457285725583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080323 (n + 1) ^ 2 - A080323 (A085046 (n + 1)).toNat

end

end A056226.P6163187457285725583

namespace A056226

/-- `A080323(n+1)²-A080323(A085046(n+1))` -/
def P6163187457285725583.Spec : Prop :=
  ∀ n, P6163187457285725583.a n = A056226 (n + 1)

end A056226

/-!
# A056228: Image of Euler totient function (A000010) under "little Hankel" transform that sends [c_0, c_1, ...] to [d_0, d_1, ...] where d_n = c_n^2 - c_{n+1}*c_{n-1}.

The programs for A056228, the canonical program `A056228.P17826182728079616557` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056228 has offset 1).

The definition of A056228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056228.P17826182728079616557

`A000010(n+2)²-A000010(n+1)*A000010(n+3)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A056228

/-- `A000010(n+2)²-A000010(n+1)*A000010(n+3)` -/
def P17826182728079616557.Spec : Prop :=
  ∀ n, P17826182728079616557.a n = A056228 (n + 1)

theorem P17826182728079616557.correct : P17826182728079616557.Spec := by
  intro n
  simp only [A056228, Nat.add_sub_cancel]

end A056228

/-! ## A056228.P15058676543795437628

`A000010(n+2)²-A000010(lcm(n+1, n+3))`
-/

namespace A056228.P15058676543795437628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2) ^ 2 - A000010 (Nat.lcm (n + 1) (n + 3))

end

end A056228.P15058676543795437628

namespace A056228

/-- `A000010(n+2)²-A000010(lcm(n+1, n+3))` -/
def P15058676543795437628.Spec : Prop :=
  ∀ n, P15058676543795437628.a n = A056228 (n + 1)

end A056228

/-!
# A056231: Form an array with 3 rows: row 1 begins with 1; all rows are increasing; each entry is sum of 2 entries above it; each number appears at most once; smallest unused number is appended to first row if possible. Sequence gives row 1.

The programs for A056231, there is no canonical definition to state claims against.
-/

/-! ## A056231.P7008818818000263254

`A056232(n)-a(n-1)` with `a(0)=1`
-/

namespace A056231.P7008818818000263254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056232 n - a (n - 1)

end

end A056231.P7008818818000263254

/-! ## A056231.P17650398564135386772

`eq[A010815(A206396(n+4)), A010815(n)]`
-/

namespace A056231.P17650398564135386772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A206396 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056231.P17650398564135386772

/-! ## A056231.P3630057484253528493

`lt[A280384(A344341(n+1)), A209933(n+1)]`
-/

namespace A056231.P3630057484253528493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280384 (A344341 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209933 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A056231.P3630057484253528493

/-! ## A056231.P11372140755187849941

`lt[A303975(A084546(2*n)), A323076(2*(n+1))]`
-/

namespace A056231.P11372140755187849941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (A084546 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323076 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A056231.P11372140755187849941

/-!
# A056232: Form an array with 3 rows: row 1 begins with 1; all rows are increasing; each entry is sum of 2 entries above it; each number appears at most once; smallest unused number is appended to first row if possible. Sequence gives row 2.

The programs for A056232, there is no canonical definition to state claims against.
-/

/-! ## A056232.P11622518933813128074

`A056233(n)-a(n-1)` with `a(0)=3`
-/

namespace A056232.P11622518933813128074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A056233 n - a (n - 1)

end

end A056232.P11622518933813128074

/-! ## A056232.P16063347498552762984

`A056231(n+1)+A056231(n+2)`
-/

namespace A056232.P16063347498552762984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056231 (n + 1) + A056231 (n + 2)

end

end A056232.P16063347498552762984

/-! ## A056232.P10500904790413848274

`∑[A001222(A263611(n+4)+1)]`
-/

namespace A056232.P10500904790413848274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A263611 (n + 4) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056232.P10500904790413848274

/-! ## A056232.P728841376631687308

`A184118(n+1)+A087960(A308317(n+1))`
-/

namespace A056232.P728841376631687308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184118 (n + 1) + A087960 (A308317 (n + 1)).toNat

end

end A056232.P728841376631687308

/-!
# A056233: Form an array with 3 rows: row 1 begins with 1; all rows are increasing; each entry is sum of 2 entries above it; each number appears at most once; smallest unused number is appended to first row if possible. Sequence gives row 3.

The programs for A056233, there is no canonical definition to state claims against.
-/

/-! ## A056233.P10090376785105357301

`A056232(n+1)+A056232(n+2)`
-/

namespace A056233.P10090376785105357301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056232 (n + 1) + A056232 (n + 2)

end

end A056233.P10090376785105357301

/-! ## A056233.P7399277120918499029

`A328303(3*n+4)+A006928(A191970(n))`
-/

namespace A056233.P7399277120918499029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328303 (3 * n + 4) + A006928 (A191970 n).toNat

end

end A056233.P7399277120918499029

/-!
# A056235: 

The programs for A056235, there is no canonical definition to state claims against.
-/

/-! ## A056235.P8577190012337273344

`A003261(∑[2^n+2*a(n-1)])` with `a(0)=2`
-/

namespace A056235.P8577190012337273344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  2 ^ n + 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003261 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A056235.P8577190012337273344

/-!
# A056236: a(n) = (2 + sqrt(2))^n + (2 - sqrt(2))^n.

The programs for A056236, the canonical program `A056236.P4307867653412060877` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056236 has offset 0).

The definition of A056236 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056236.P13778499385062447039

`floor((2+sqrt(2))*a(n-1))` with `a(0)=2, a(1)=4, a(2)=12`
-/

namespace A056236.P13778499385062447039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 12] fun n a =>
  ⌊(2 + Real.sqrt (2 : ℝ)) * (a (n - 1) : ℝ)⌋

end

end A056236.P13778499385062447039

namespace A056236

/-- `floor((2+sqrt(2))*a(n-1))` -/
def P13778499385062447039.Spec : Prop :=
  ∀ n, P13778499385062447039.a n = A056236 n

end A056236

/-! ## A056236.P4307867653412060877

`4*a(n-1)-2*a(n-2)` with `a(0)=2, a(1)=4`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056236

/-- `4*a(n-1)-2*a(n-2)` -/
def P4307867653412060877.Spec : Prop :=
  ∀ n, P4307867653412060877.a n = A056236 n

theorem P4307867653412060877.correct : P4307867653412060877.Spec := by
  intro n
  simp only [A056236]

end A056236

/-! ## A056236.P12433340998191860958

`2*A006012(n)`
-/

namespace A056236.P12433340998191860958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006012 n

end

end A056236.P12433340998191860958

namespace A056236

/-- `2*A006012(n)` -/
def P12433340998191860958.Spec : Prop :=
  ∀ n, P12433340998191860958.a n = A056236 n

end A056236

/-! ## A056236.P1309688838003968583

`2^((n-2)/2)*((1+(-1)^n)*A002203(n)+2*sqrt(2)*(1-(-1)^n)*A000129(n))`
-/

namespace A056236.P1309688838003968583
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (((n : ℤ) - 2 : ℚ) / 2 : ℝ) * (((1 + (-1) ^ n) * A002203 n : ℝ) + 2 * Real.sqrt (2 : ℝ) * (1 - (-1) ^ n : ℝ) * (A000129 n : ℝ))

end

end A056236.P1309688838003968583

namespace A056236

/-- `2^((n-2)/2)*((1+(-1)^n)*A002203(n)+2*sqrt(2)*(1-(-1)^n)*A000129(n))` -/
def P1309688838003968583.Spec : Prop :=
  ∀ n, P1309688838003968583.a n = (A056236 n : ℝ)

end A056236

/-! ## A056236.P12769591750664635746

`2^(2*n)*(cos(π/8)^(2*n)+cos(3*π/8)^(2*n))`
-/

namespace A056236.P12769591750664635746
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 ^ (2 * n) : ℝ) * (Real.cos (Real.pi / 8) ^ (2 * n) + Real.cos (3 * Real.pi / 8) ^ (2 * n))

end

end A056236.P12769591750664635746

namespace A056236

/-- `2^(2*n)*(cos(π/8)^(2*n)+cos(3*π/8)^(2*n))` -/
def P12769591750664635746.Spec : Prop :=
  ∀ n, P12769591750664635746.a n = (A056236 n : ℝ)

end A056236

/-! ## A056236.P9311975436577722920

`ogf((2-4x)/(1-4x+2x^2))`
-/

namespace A056236.P9311975436577722920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4] [1, -4, 2] n

end

end A056236.P9311975436577722920

namespace A056236

/-- `ogf((2-4x)/(1-4x+2x^2))` -/
def P9311975436577722920.Spec : Prop :=
  ∀ n, P9311975436577722920.a n = A056236 n

end A056236

/-! ## A056236.P12699482490235069703

`(2+sqrt(2))^n+(2-sqrt(2))^n`
-/

namespace A056236.P12699482490235069703
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 + Real.sqrt (2 : ℝ)) ^ n + (2 - Real.sqrt (2 : ℝ)) ^ n

end

end A056236.P12699482490235069703

namespace A056236

/-- `(2+sqrt(2))^n+(2-sqrt(2))^n` -/
def P12699482490235069703.Spec : Prop :=
  ∀ n, P12699482490235069703.a n = (A056236 n : ℝ)

theorem P12699482490235069703.correct : P12699482490235069703.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A056236, Nat.add_sub_cancel, A056236.P12699482490235069703.a, A056236.P4307867653412060877.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A056236, Nat.add_sub_cancel, A056236.P12699482490235069703.a, A056236.P4307867653412060877.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A056236

/-! ## A056236.P7085168758464443076

`A030435(2*n)`
-/

namespace A056236.P7085168758464443076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030435 (2 * n)

end

end A056236.P7085168758464443076

namespace A056236

/-- `A030435(2*n)` -/
def P7085168758464443076.Spec : Prop :=
  ∀ n, P7085168758464443076.a n = A056236 n

end A056236

/-! ## A056236.P1310897311068792359

`Δ[A293067(n+1)]`
-/

namespace A056236.P1310897311068792359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056236.P1310897311068792359

namespace A056236

/-- `Δ[A293067(n+1)]` -/
def P1310897311068792359.Spec : Prop :=
  ∀ n, P1310897311068792359.a n = A056236 n

end A056236

/-! ## A056236.P12056569131239349019

`∑[2*A204089(n)]`
-/

namespace A056236.P12056569131239349019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056236.P12056569131239349019

namespace A056236

/-- `∑[2*A204089(n)]` -/
def P12056569131239349019.Spec : Prop :=
  ∀ n, P12056569131239349019.a n = A056236 n

end A056236

/-! ## A056236.P17524639764748614105

`2*A030436(2*n)`
-/

namespace A056236.P17524639764748614105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030436 (2 * n)

end

end A056236.P17524639764748614105

namespace A056236

/-- `2*A030436(2*n)` -/
def P17524639764748614105.Spec : Prop :=
  ∀ n, P17524639764748614105.a n = A056236 n

end A056236

/-! ## A056236.P8230112677137680616

`2*A062112(Δ[n²])`
-/

namespace A056236.P8230112677137680616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062112 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A056236.P8230112677137680616

namespace A056236

/-- `2*A062112(Δ[n²])` -/
def P8230112677137680616.Spec : Prop :=
  ∀ n, P8230112677137680616.a n = A056236 n

end A056236

/-! ## A056236.P2374247591297433099

`Δ[2*A087161(n+1)]`
-/

namespace A056236.P2374247591297433099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056236.P2374247591297433099

namespace A056236

/-- `Δ[2*A087161(n+1)]` -/
def P2374247591297433099.Spec : Prop :=
  ∀ n, P2374247591297433099.a n = A056236 n

end A056236

/-! ## A056236.P16054485815438125307

`2*(A060995(n)+a(n-1))` with `a(0)=2`
-/

namespace A056236.P16054485815438125307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (A060995 n + a (n - 1))

end

end A056236.P16054485815438125307

namespace A056236

/-- `2*(A060995(n)+a(n-1))` -/
def P16054485815438125307.Spec : Prop :=
  ∀ n, P16054485815438125307.a n = A056236 n

end A056236

/-! ## A056236.P5579952012236195605

`2*(A106731(n)+A007070(n))`
-/

namespace A056236.P5579952012236195605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A106731 n + A007070 n)

end

end A056236.P5579952012236195605

namespace A056236

/-- `2*(A106731(n)+A007070(n))` -/
def P5579952012236195605.Spec : Prop :=
  ∀ n, P5579952012236195605.a n = A056236 n

end A056236

/-! ## A056236.P6311031740648109707

`A060546(n+2)*A079496(n)`
-/

namespace A056236.P6311031740648109707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (n + 2) * A079496 n

end

end A056236.P6311031740648109707

namespace A056236

/-- `A060546(n+2)*A079496(n)` -/
def P6311031740648109707.Spec : Prop :=
  ∀ n, P6311031740648109707.a n = A056236 n

end A056236

/-! ## A056236.P4952322288560523208

`2*(A088013(n)+A084154(n))`
-/

namespace A056236.P4952322288560523208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A088013 n + A084154 n)

end

end A056236.P4952322288560523208

namespace A056236

/-- `2*(A088013(n)+A084154(n))` -/
def P4952322288560523208.Spec : Prop :=
  ∀ n, P4952322288560523208.a n = A056236 n

end A056236

/-! ## A056236.P16668601302431544887

`A016116(n+3)*A079496(n)`
-/

namespace A056236.P16668601302431544887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 3) * A079496 n

end

end A056236.P16668601302431544887

namespace A056236

/-- `A016116(n+3)*A079496(n)` -/
def P16668601302431544887.Spec : Prop :=
  ∀ n, P16668601302431544887.a n = A056236 n

end A056236

/-! ## A056236.P5223701302093638334

`2*(A161941(n)-A007052(n))`
-/

namespace A056236.P5223701302093638334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A161941 n - A007052 n)

end

end A056236.P5223701302093638334

namespace A056236

/-- `2*(A161941(n)-A007052(n))` -/
def P5223701302093638334.Spec : Prop :=
  ∀ n, P5223701302093638334.a n = A056236 n

end A056236

/-! ## A056236.P2219010515282310924

`2*A060546(n)*A079496(n)`
-/

namespace A056236.P2219010515282310924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A060546 n * A079496 n)

end

end A056236.P2219010515282310924

namespace A056236

/-- `2*A060546(n)*A079496(n)` -/
def P2219010515282310924.Spec : Prop :=
  ∀ n, P2219010515282310924.a n = A056236 n

end A056236

/-!
# A056237: a(n) = 2*n^2 + 9*n - 5.

The programs for A056237, the canonical program `A056237.P7210447433602134809` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056237 has offset 1).

The definition of A056237 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)²+9*(n+1)-5` (program `A056237.P7210447433602134809`, by `A056237.P7210447433602134809.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A056237.P1961869296280852518

`(n+6)*(2*(n+1)-1)`
-/

namespace A056237.P1961869296280852518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 6 : ℤ) * ((2 * (n + 1) : ℤ) - 1)

end

end A056237.P1961869296280852518

namespace A056237

/-- `(n+6)*(2*(n+1)-1)` -/
def P1961869296280852518.Spec : Prop :=
  ∀ n, P1961869296280852518.a n = A056237 (n + 1)

theorem P1961869296280852518.correct : P1961869296280852518.Spec := by
  intro n
  simp only [A056237, Nat.add_sub_cancel, A056237.P1961869296280852518.a, A056237.P7210447433602134809.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A056237

/-! ## A056237.P7210447433602134809

`2*(n+1)²+9*(n+1)-5`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056237

/-- `2*(n+1)²+9*(n+1)-5` -/
def P7210447433602134809.Spec : Prop :=
  ∀ n, P7210447433602134809.a n = A056237 (n + 1)

theorem P7210447433602134809.correct : P7210447433602134809.Spec := by
  intro n
  simp only [A056237, Nat.add_sub_cancel]

end A056237

/-! ## A056237.P6207193869754550334

`∑[a(n-1)+4]` with `a(0)=6, a(1)=15`
-/

namespace A056237.P6207193869754550334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 15] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056237.P6207193869754550334

namespace A056237

/-- `∑[a(n-1)+4]` -/
def P6207193869754550334.Spec : Prop :=
  ∀ n, (P6207193869754550334.a n : ℤ) = A056237 (n + 1)

end A056237

/-! ## A056237.P17341943081053412959

`∑[ogf((6+3x-5x^2)/(1-2x+x^2))]`
-/

namespace A056237.P17341943081053412959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 3, -5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056237.P17341943081053412959

namespace A056237

/-- `∑[ogf((6+3x-5x^2)/(1-2x+x^2))]` -/
def P17341943081053412959.Spec : Prop :=
  ∀ n, P17341943081053412959.a n = A056237 (n + 1)

end A056237

/-! ## A056237.P9277721368058444978

`ogf((6+3x-5x^2)/(1-3x+3x^2-x^3))`
-/

namespace A056237.P9277721368058444978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 3, -5] [1, -3, 3, -1] n

end

end A056237.P9277721368058444978

namespace A056237

/-- `ogf((6+3x-5x^2)/(1-3x+3x^2-x^3))` -/
def P9277721368058444978.Spec : Prop :=
  ∀ n, P9277721368058444978.a n = A056237 (n + 1)

end A056237

/-! ## A056237.P6284913266361577483

`floor((2*n+1)/acot(n+6))`
-/

namespace A056237.P6284913266361577483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℝ) / SequenceMachineLib.acot (n + 6 : ℝ)⌋

end

end A056237.P6284913266361577483

namespace A056237

/-- `floor((2*n+1)/acot(n+6))` -/
def P6284913266361577483.Spec : Prop :=
  ∀ n, P6284913266361577483.a n = A056237 (n + 1)

end A056237

/-! ## A056237.P1004189642739446574

`(2*n+1)/tan(acot(n+6))`
-/

namespace A056237.P1004189642739446574
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℝ) / Real.tan (SequenceMachineLib.acot (n + 6 : ℝ))

end

end A056237.P1004189642739446574

namespace A056237

/-- `(2*n+1)/tan(acot(n+6))` -/
def P1004189642739446574.Spec : Prop :=
  ∀ n, P1004189642739446574.a n = (A056237 (n + 1) : ℝ)

end A056237

/-! ## A056237.P6212629373843669981

`(2*n+1)/cot(atan(n+6))`
-/

namespace A056237.P6212629373843669981
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℝ) / Real.cot (Real.arctan (n + 6 : ℝ))

end

end A056237.P6212629373843669981

namespace A056237

/-- `(2*n+1)/cot(atan(n+6))` -/
def P6212629373843669981.Spec : Prop :=
  ∀ n, P6212629373843669981.a n = (A056237 (n + 1) : ℝ)

end A056237

/-! ## A056237.P11881370178169321888

`lcm(2*n+1, (2*n+1)*(n+6))`
-/

namespace A056237.P11881370178169321888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) ((2 * n + 1) * (n + 6))

end

end A056237.P11881370178169321888

namespace A056237

/-- `lcm(2*n+1, (2*n+1)*(n+6))` -/
def P11881370178169321888.Spec : Prop :=
  ∀ n, (P11881370178169321888.a n : ℤ) = A056237 (n + 1)

theorem P11881370178169321888.correct : P11881370178169321888.Spec := by
  intro n
  simp only [A056237, Nat.add_sub_cancel, A056237.P11881370178169321888.a, A056237.P7210447433602134809.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A056237

/-! ## A056237.P6687909063815315385

`A056115(Δ[n²])`
-/

namespace A056237.P6687909063815315385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056115 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A056237.P6687909063815315385

namespace A056237

/-- `A056115(Δ[n²])` -/
def P6687909063815315385.Spec : Prop :=
  ∀ n, P6687909063815315385.a n = A056237 (n + 1)

end A056237

/-! ## A056237.P14303580942274490206

`A119412(Δ[n²])/2`
-/

namespace A056237.P14303580942274490206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119412 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A056237.P14303580942274490206

namespace A056237

/-- `A119412(Δ[n²])/2` -/
def P14303580942274490206.Spec : Prop :=
  ∀ n, P14303580942274490206.a n = (A056237 (n + 1) : ℚ)

end A056237

/-! ## A056237.P6223005981471450370

`A000984(n+1)*A055998(n+1)/A000984(n)`
-/

namespace A056237.P6223005981471450370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 (n + 1) * A055998 (n + 1) : ℚ) / (A000984 n : ℚ)

end

end A056237.P6223005981471450370

namespace A056237

/-- `A000984(n+1)*A055998(n+1)/A000984(n)` -/
def P6223005981471450370.Spec : Prop :=
  ∀ n, P6223005981471450370.a n = (A056237 (n + 1) : ℚ)

end A056237

/-!
# A056238: Nontrivial palindromic denominators in Leibniz's harmonic triangle.

The programs for A056238, there is no canonical definition to state claims against.
-/

/-! ## A056238.P9924785794126719689

`∩[A002113(n+1), A007622(n+1)]`
-/

namespace A056238.P9924785794126719689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056238.P9924785794126719689

/-! ## A056238.P4450714869532815203

`∩[A007622(n+1), A029951(n+1)]`
-/

namespace A056238.P4450714869532815203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056238.P4450714869532815203

/-! ## A056238.P1478838721553934569

`∩[A007622(n+1), A032350(n+1)]`
-/

namespace A056238.P1478838721553934569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056238.P1478838721553934569

/-! ## A056238.P13538891226243568812

`∩[A007622(n+1), A081939(n+1)]`
-/

namespace A056238.P13538891226243568812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056238.P13538891226243568812

/-!
# A056239: If n = Product_{k >= 1} (p_k)^(c_k) where p_k is k-th prime and c_k >= 0 then a(n) = Sum_{k >= 1} k*c_k.

The programs for A056239, the canonical program `A056239.P11316688788989965672` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056239 has offset 1).

The definition of A056239 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056239.P6084450584214843451

`n+1-A178503(n+1)`
-/

namespace A056239.P6084450584214843451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A178503 (n + 1)

end

end A056239.P6084450584214843451

namespace A056239

/-- `n+1-A178503(n+1)` -/
def P6084450584214843451.Spec : Prop :=
  ∀ n, P6084450584214843451.a n = A056239 (n + 1)

theorem P6084450584214843451.correct : P6084450584214843451.Spec := by
  intro n
  simp only [A056239, Nat.add_sub_cancel, A056239.P6084450584214843451.a, A056239.P11316688788989965672.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A178503, A178503.P4821530667985743072.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A048896, A048896.P6461019053085857547.a, A048881, A048881.P16567064232951496228.a, A364557, A364557.P16113127302810243144.a, A000120, A000120.P2816527436160941581.a, A297167, A297167.P13113550866660970867.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A056239

/-! ## A056239.P11316688788989965672

`A161511(A156552(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A056239

/-- `A161511(A156552(n+1))` -/
def P11316688788989965672.Spec : Prop :=
  ∀ n, P11316688788989965672.a n = A056239 (n + 1)

theorem P11316688788989965672.correct : P11316688788989965672.Spec := by
  intro n
  simp only [A056239, Nat.add_sub_cancel]

end A056239

/-! ## A056239.P6487806805965118296

`A227183(A243354(n+1))`
-/

namespace A056239.P6487806805965118296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227183 (A243354 (n + 1)).toNat

end

end A056239.P6487806805965118296

namespace A056239

/-- `A227183(A243354(n+1))` -/
def P6487806805965118296.Spec : Prop :=
  ∀ n, P6487806805965118296.a n = A056239 (n + 1)

end A056239

/-! ## A056239.P13287054745083951466

`A001222(A108951(n+1))`
-/

namespace A056239.P13287054745083951466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A108951 (n + 1)).toNat

end

end A056239.P13287054745083951466

namespace A056239

/-- `A001222(A108951(n+1))` -/
def P13287054745083951466.Spec : Prop :=
  ∀ n, P13287054745083951466.a n = A056239 (n + 1)

end A056239

/-! ## A056239.P15453510687437183458

`∑{d}[n+1, A297109(#)]`
-/

namespace A056239.P15453510687437183458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A297109 d

end

end A056239.P15453510687437183458

namespace A056239

/-- `∑{d}[n+1, A297109(#)]` -/
def P15453510687437183458.Spec : Prop :=
  ∀ n, P15453510687437183458.a n = A056239 (n + 1)

end A056239

/-! ## A056239.P12402125725208955627

`A316436(2*(n+1))-1`
-/

namespace A056239.P12402125725208955627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316436 (2 * (n + 1)) - 1

end

end A056239.P12402125725208955627

namespace A056239

/-- `A316436(2*(n+1))-1` -/
def P12402125725208955627.Spec : Prop :=
  ∀ n, P12402125725208955627.a n = A056239 (n + 1)

end A056239

/-! ## A056239.P16737130572644524820

`A380345(n+1)-(n+1)`
-/

namespace A056239.P16737130572644524820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380345 (n + 1) - (n + 1 : ℤ)

end

end A056239.P16737130572644524820

namespace A056239

/-- `A380345(n+1)-(n+1)` -/
def P16737130572644524820.Spec : Prop :=
  ∀ n, P16737130572644524820.a n = A056239 (n + 1)

theorem P16737130572644524820.correct : P16737130572644524820.Spec := by
  intro n
  simp only [A056239, Nat.add_sub_cancel, A056239.P16737130572644524820.a, A056239.P11316688788989965672.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A380345, A380345.P3416860299638001481.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A048896, A048896.P6461019053085857547.a, A048881, A048881.P16567064232951496228.a, A364557, A364557.P16113127302810243144.a, A000120, A000120.P2816527436160941581.a, A297167, A297167.P13113550866660970867.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A056239

/-! ## A056239.P5219517671574256563

`A304739(A064664(n+1))`
-/

namespace A056239.P5219517671574256563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304739 (A064664 (n + 1)).toNat

end

end A056239.P5219517671574256563

namespace A056239

/-- `A304739(A064664(n+1))` -/
def P5219517671574256563.Spec : Prop :=
  ∀ n, P5219517671574256563.a n = A056239 (n + 1)

end A056239

/-! ## A056239.P15150711538553950542

`A318995(n+1)+Δ[A022559(n)]`
-/

namespace A056239.P15150711538553950542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (n + 1) + (f1 (n + 1) - f1 n)

end

end A056239.P15150711538553950542

namespace A056239

/-- `A318995(n+1)+Δ[A022559(n)]` -/
def P15150711538553950542.Spec : Prop :=
  ∀ n, P15150711538553950542.a n = A056239 (n + 1)

theorem P15150711538553950542.correct : P15150711538553950542.Spec := by
  intro n
  simp only [A056239, Nat.add_sub_cancel, A056239.P15150711538553950542.f1, A056239.P15150711538553950542.a, A056239.P11316688788989965672.a, A022559, A022559.P10554250414511796107.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A318995, A318995.P1948814167447618937.f1, A318995.P1948814167447618937.a, A001222, A001222.P11318177267732088261.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A048896, A048896.P6461019053085857547.a, A048881, A048881.P16567064232951496228.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A364557, A364557.P16113127302810243144.a, A000120, A000120.P2816527436160941581.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A297167, A297167.P13113550866660970867.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A056239

/-! ## A056239.P12720721300580619818

`A318995(n+1)+A001222(n+1)`
-/

namespace A056239.P12720721300580619818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (n + 1) + A001222 (n + 1)

end

end A056239.P12720721300580619818

namespace A056239

/-- `A318995(n+1)+A001222(n+1)` -/
def P12720721300580619818.Spec : Prop :=
  ∀ n, P12720721300580619818.a n = A056239 (n + 1)

end A056239

/-! ## A056239.P9257680507822662160

`A339823(n+1)+A000523(n+1)`
-/

namespace A056239.P9257680507822662160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339823 (n + 1) + A000523 (n + 1)

end

end A056239.P9257680507822662160

namespace A056239

/-- `A339823(n+1)+A000523(n+1)` -/
def P9257680507822662160.Spec : Prop :=
  ∀ n, P9257680507822662160.a n = A056239 (n + 1)

theorem P9257680507822662160.correct : P9257680507822662160.Spec := by
  intro n
  simp only [A056239, Nat.add_sub_cancel, A056239.P9257680507822662160.a, A056239.P11316688788989965672.a, A000523, A000523.P3314682526375882520.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A339823, A339823.P7188446837761765173.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A048896, A048896.P6461019053085857547.a, A048881, A048881.P16567064232951496228.a, A364557, A364557.P16113127302810243144.a, A000120, A000120.P2816527436160941581.a, A297167, A297167.P13113550866660970867.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A056239

/-! ## A056239.P8348063342741489909

`A380955(n+1)+A066328(n+1)`
-/

namespace A056239.P8348063342741489909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380955 (n + 1) + A066328 (n + 1)

end

end A056239.P8348063342741489909

namespace A056239

/-- `A380955(n+1)+A066328(n+1)` -/
def P8348063342741489909.Spec : Prop :=
  ∀ n, P8348063342741489909.a n = A056239 (n + 1)

theorem P8348063342741489909.correct : P8348063342741489909.Spec := by
  intro n
  simp only [A056239, Nat.add_sub_cancel, A056239.P8348063342741489909.a, A056239.P11316688788989965672.a, A066328, A066328.P12696213530568252908.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A380955, A380955.P4555660258455395016.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048896, A048896.P6461019053085857547.a, A048881, A048881.P16567064232951496228.a, A364557, A364557.P16113127302810243144.a, A000120, A000120.P2816527436160941581.a, A297167, A297167.P13113550866660970867.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A056239

/-! ## A056239.P11382179953367153216

`A325135(n+1)+A252464(n+1)`
-/

namespace A056239.P11382179953367153216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325135 (n + 1) + A252464 (n + 1)

end

end A056239.P11382179953367153216

namespace A056239

/-- `A325135(n+1)+A252464(n+1)` -/
def P11382179953367153216.Spec : Prop :=
  ∀ n, P11382179953367153216.a n = A056239 (n + 1)

theorem P11382179953367153216.correct : P11382179953367153216.Spec := by
  intro n
  simp only [A056239, Nat.add_sub_cancel, A056239.P11382179953367153216.a, A056239.P11316688788989965672.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A252464, A252464.P11274602121942962009.a, A325135, A325135.P723858522553438036.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A048896, A048896.P6461019053085857547.a, A061395, A061395.P8431317036300486107.a, A252736, A252736.P2865412191134230649.f1, A252736.P2865412191134230649.a, A029837, A029837.P1050578713049589.a, A048881, A048881.P16567064232951496228.a, A087207, A087207.P12536008426233777954.a, A364557, A364557.P16113127302810243144.a, A000120, A000120.P2816527436160941581.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A297167, A297167.P13113550866660970867.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A056239

/-! ## A056239.P14025743787048888364

`A325223(n+1)+A263297(n+1)`
-/

namespace A056239.P14025743787048888364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325223 (n + 1) + A263297 (n + 1)

end

end A056239.P14025743787048888364

namespace A056239

/-- `A325223(n+1)+A263297(n+1)` -/
def P14025743787048888364.Spec : Prop :=
  ∀ n, P14025743787048888364.a n = A056239 (n + 1)

theorem P14025743787048888364.correct : P14025743787048888364.Spec := by
  intro n
  simp only [A056239, Nat.add_sub_cancel, A056239.P14025743787048888364.a, A056239.P11316688788989965672.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A263297, A263297.P13367388864379357855.a, A325223, A325223.P14926081058052058470.a, A000265, A000265.P2772582252347773295.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A048896, A048896.P6461019053085857547.a, A061395, A061395.P8431317036300486107.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A003602, A003602.P7612175048291952394.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A048881, A048881.P16567064232951496228.a, A087207, A087207.P12536008426233777954.a, A364557, A364557.P16113127302810243144.a, A000120, A000120.P2816527436160941581.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A110963, A110963.P3344771894533151408.a, A158611, A158611.P9275629407611603775.a, A297167, A297167.P13113550866660970867.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A056239

/-! ## A056239.P6343664116609199165

`A325166(n+1)+A297113(n+1)`
-/

namespace A056239.P6343664116609199165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325166 (n + 1) + A297113 (n + 1)

end

end A056239.P6343664116609199165

namespace A056239

/-- `A325166(n+1)+A297113(n+1)` -/
def P6343664116609199165.Spec : Prop :=
  ∀ n, P6343664116609199165.a n = A056239 (n + 1)

theorem P6343664116609199165.correct : P6343664116609199165.Spec := by
  intro n
  simp only [A056239, Nat.add_sub_cancel, A056239.P6343664116609199165.a, A056239.P11316688788989965672.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A297113, A297113.P441289280190658386.a, A325166, A325166.P2969046862009635167.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A046660, A046660.P3614759855976580945.a, A048896, A048896.P6461019053085857547.a, A061395, A061395.P8431317036300486107.a, A001221, A001221.P10258181745752134128.a, A001222, A001222.P11318177267732088261.a, A029837, A029837.P1050578713049589.a, A048881, A048881.P16567064232951496228.a, A087207, A087207.P12536008426233777954.a, A364557, A364557.P16113127302810243144.a, A000120, A000120.P2816527436160941581.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A059841, A059841.P7264174615531153985.a, A122111, A122111.P18124015185857335041.a, A297167, A297167.P13113550866660970867.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A056239

/-! ## A056239.P12750161365952124668

`A325225(n+1)+A325224(n+1)`
-/

namespace A056239.P12750161365952124668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (n + 1) + A325224 (n + 1)

end

end A056239.P12750161365952124668

namespace A056239

/-- `A325225(n+1)+A325224(n+1)` -/
def P12750161365952124668.Spec : Prop :=
  ∀ n, P12750161365952124668.a n = A056239 (n + 1)

theorem P12750161365952124668.correct : P12750161365952124668.Spec := by
  intro n
  simp only [A056239, Nat.add_sub_cancel, A056239.P12750161365952124668.a, A056239.P11316688788989965672.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A325224, A325224.P1117031498842339426.a, A325225, A325225.P14443977259877716091.a, A001222, A001222.P11318177267732088261.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A048896, A048896.P6461019053085857547.a, A061395, A061395.P8431317036300486107.a, A263297, A263297.P13367388864379357855.a, A000265, A000265.P2772582252347773295.a, A029837, A029837.P1050578713049589.a, A048881, A048881.P16567064232951496228.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A122111, A122111.P18124015185857335041.a, A364557, A364557.P16113127302810243144.a, A000120, A000120.P2816527436160941581.a, A003602, A003602.P7612175048291952394.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A064989, A064989.P13349672914146769936.a, A297167, A297167.P13113550866660970867.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A056239

/-! ## A056239.P18287839583432137814

`A329622(n+1)+A324888(n+1)`
-/

namespace A056239.P18287839583432137814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329622 (n + 1) + A324888 (n + 1)

end

end A056239.P18287839583432137814

namespace A056239

/-- `A329622(n+1)+A324888(n+1)` -/
def P18287839583432137814.Spec : Prop :=
  ∀ n, P18287839583432137814.a n = A056239 (n + 1)

theorem P18287839583432137814.correct : P18287839583432137814.Spec := by
  intro n
  simp only [A056239, Nat.add_sub_cancel, A056239.P18287839583432137814.a, A056239.P11316688788989965672.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A324888, A324888.P9516220772583118182.a, A329622, A329622.P7903740635264919835.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A048896, A048896.P6461019053085857547.a, A108951, A108951.P1294613322156543690.a, A276150, A276150.P11723566750596417578.a, A048881, A048881.P16567064232951496228.a, A064989, A064989.P13349672914146769936.a, A260188, A260188.P5872051986536960582.a, A364557, A364557.P16113127302810243144.a, A000120, A000120.P2816527436160941581.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A105561, A105561.P9613495167303290584.f1, A105561.P9613495167303290584.f2, A105561.P9613495167303290584.a, A297167, A297167.P13113550866660970867.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A056239

/-! ## A056239.P463632727538954184

`A339896(n+1)+A339894(n+1)`
-/

namespace A056239.P463632727538954184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339896 (n + 1) + A339894 (n + 1)

end

end A056239.P463632727538954184

namespace A056239

/-- `A339896(n+1)+A339894(n+1)` -/
def P463632727538954184.Spec : Prop :=
  ∀ n, P463632727538954184.a n = A056239 (n + 1)

theorem P463632727538954184.correct : P463632727538954184.Spec := by
  intro n
  simp only [A056239, Nat.add_sub_cancel, A056239.P463632727538954184.a, A056239.P11316688788989965672.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A339894, A339894.P9202660857362270704.a, A339896, A339896.P16852048549527834821.a, A000523, A000523.P3314682526375882520.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A048896, A048896.P6461019053085857547.a, A122111, A122111.P18124015185857335041.a, A048881, A048881.P16567064232951496228.a, A064989, A064989.P13349672914146769936.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A364557, A364557.P16113127302810243144.a, A000120, A000120.P2816527436160941581.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A297167, A297167.P13113550866660970867.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A056239

/-! ## A056239.P15126528679926286143

`A356159(n+1)+A355930(n+1)`
-/

namespace A056239.P15126528679926286143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356159 (n + 1) + A355930 (n + 1)

end

end A056239.P15126528679926286143

namespace A056239

/-- `A356159(n+1)+A355930(n+1)` -/
def P15126528679926286143.Spec : Prop :=
  ∀ n, P15126528679926286143.a n = A056239 (n + 1)

theorem P15126528679926286143.correct : P15126528679926286143.Spec := by
  intro n
  simp only [A056239, Nat.add_sub_cancel, A056239.P15126528679926286143.a, A056239.P11316688788989965672.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A355930, A355930.P13161575751402351718.a, A356159, A356159.P17667965768721708085.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A046523, A046523.P3407874444772092792.a, A048896, A048896.P6461019053085857547.a, A048881, A048881.P16567064232951496228.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, A364557, A364557.P16113127302810243144.a, A000120, A000120.P2816527436160941581.a, A001511, A001511.P17146462531039486101.a, A008578, A008578.P3639467937083264764.a, A064989, A064989.P13349672914146769936.a, A108951, A108951.P1294613322156543690.a, A122111, A122111.P18124015185857335041.a, A297167, A297167.P13113550866660970867.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A056239

/-!
# A056240: Smallest number whose prime divisors (taken with multiplicity) add to n.

The programs for A056240, there is no canonical definition to state claims against.
-/

/-! ## A056240.P2706486470188315369

`abs(Δ[A392577(n+1)])`
-/

namespace A056240.P2706486470188315369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A056240.P2706486470188315369

/-! ## A056240.P15979613422141089378

`A327415(n+2)-char[4]`
-/

namespace A056240.P15979613422141089378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327415 (n + 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A056240.P15979613422141089378

/-! ## A056240.P4142817943193919389

`A304481(A327415(n+2))`
-/

namespace A056240.P4142817943193919389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304481 (A327415 (n + 2)).toNat

end

end A056240.P4142817943193919389

/-! ## A056240.P18291442916545192612

`A064364(A034891(n+1)+1)`
-/

namespace A056240.P18291442916545192612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064364 (A034891 (n + 1) + 1).toNat

end

end A056240.P18291442916545192612

/-! ## A056240.P3985272327288579329

`A064364(∑[A000607(n+1)]+2)`
-/

namespace A056240.P3985272327288579329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064364 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A056240.P3985272327288579329

/-!
# A056241: Triangle T(n,k) = number of k-part order-consecutive partitions of n (1<=k<=n).

The programs for A056241, there is no canonical definition to state claims against.
-/

/-! ## A056241.P8974499678272430226

`A122935(comp[∑[n]])`
-/

namespace A056241.P8974499678272430226
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122935 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A056241.P8974499678272430226

/-! ## A056241.P15588159682717641963

`A027907(2*n+1-∑[char[∑[n]]])`
-/

namespace A056241.P15588159682717641963
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (2 * n + 1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A056241.P15588159682717641963

/-! ## A056241.P1043236541207731162

`or(char[1], A027907(A133280(n)))`
-/

namespace A056241.P1043236541207731162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A027907 (A133280 n).toNat)

end

end A056241.P1043236541207731162

/-! ## A056241.P12304238661085563755

`A169623(A003056(n)²+2*n)`
-/

namespace A056241.P12304238661085563755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 (A003056 n ^ 2 + (2 * n : ℤ)).toNat

end

end A056241.P12304238661085563755

/-! ## A056241.P16562693523191691243

`A027907(A133280(n))^A131843(n)`
-/

namespace A056241.P16562693523191691243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027907 (A133280 n).toNat : ℚ) ^ (A131843 n : ℤ)

end

end A056241.P16562693523191691243

/-! ## A056241.P15297305343783485630

`gcd(A027907(A133280(n)), A130123(n))`
-/

namespace A056241.P15297305343783485630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027907 (A133280 n).toNat) (A130123 n)

end

end A056241.P15297305343783485630

/-! ## A056241.P9735297714287854620

`A027907(A133280(n))+A000007(n+1)`
-/

namespace A056241.P9735297714287854620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (A133280 n).toNat + A000007 (n + 1)

end

end A056241.P9735297714287854620

/-! ## A056241.P15917457077191621999

`A027907(A133280(n))%A000041(n+2)`
-/

namespace A056241.P15917457077191621999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027907 (A133280 n).toNat) (A000041 (n + 2))

end

end A056241.P15917457077191621999

/-! ## A056241.P6158896934967465130

`A027907(A133280(n))^Δ[A014132(n+1)]`
-/

namespace A056241.P6158896934967465130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027907 (A133280 n).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A056241.P6158896934967465130

/-! ## A056241.P18330202605290496363

`A027907(A133280(n))+A000045(C(n, n+1))`
-/

namespace A056241.P18330202605290496363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (A133280 n).toNat + A000045 (Nat.choose n (n + 1))

end

end A056241.P18330202605290496363

/-! ## A056241.P10837652357585942428

`A027907(A133280(n))*A057979(2*n)`
-/

namespace A056241.P10837652357585942428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (A133280 n).toNat * A057979 (2 * n)

end

end A056241.P10837652357585942428

/-! ## A056241.P823336894372245541

`A330510(n)-A123934(n+1)`
-/

namespace A056241.P823336894372245541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330510 n - A123934 (n + 1)

end

end A056241.P823336894372245541

/-!
# A056242: Triangle read by rows: T(n,k) = number of k-part order-consecutive partition of {1,2,...,n} (1 <= k <= n).

The programs for A056242, the canonical program `A056242.P14843817194002707074` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056242 has offset 1).

The definition of A056242 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056242.P14843817194002707074

`2*T(n-1,k)+2*T(n-1,k-1)-T(n-2,k)-T(n-2,k-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056242

/-- `2*T(n-1,k)+2*T(n-1,k-1)-T(n-2,k)-T(n-2,k-1)` -/
def P14843817194002707074.Spec : Prop :=
  ∀ n, P14843817194002707074.a n = A056242 (n + 1)

theorem P14843817194002707074.correct : P14843817194002707074.Spec := by
  intro n
  simp only [A056242, Nat.add_sub_cancel]

end A056242

/-! ## A056242.P128979083050280253

`A117317(A061579(n))`
-/

namespace A056242.P128979083050280253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117317 (A061579 n).toNat

end

end A056242.P128979083050280253

namespace A056242

/-- `A117317(A061579(n))` -/
def P128979083050280253.Spec : Prop :=
  ∀ n, P128979083050280253.a n = A056242 (n + 1)

end A056242

/-! ## A056242.P12577889178117801167

`A117317(A114327(n)+n)`
-/

namespace A056242.P12577889178117801167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117317 (A114327 n + (n : ℤ)).toNat

end

end A056242.P12577889178117801167

namespace A056242

/-- `A117317(A114327(n)+n)` -/
def P12577889178117801167.Spec : Prop :=
  ∀ n, P12577889178117801167.a n = A056242 (n + 1)

end A056242

/-! ## A056242.P17550042710462377408

`A117317(A038722(n+1)-1)`
-/

namespace A056242.P17550042710462377408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117317 (A038722 (n + 1) - 1).toNat

end

end A056242.P17550042710462377408

namespace A056242

/-- `A117317(A038722(n+1)-1)` -/
def P17550042710462377408.Spec : Prop :=
  ∀ n, P17550042710462377408.a n = A056242 (n + 1)

end A056242

/-! ## A056242.P12231809461986671622

`A117317(A093995(n+1)-(n+1))`
-/

namespace A056242.P12231809461986671622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117317 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A056242.P12231809461986671622

namespace A056242

/-- `A117317(A093995(n+1)-(n+1))` -/
def P12231809461986671622.Spec : Prop :=
  ∀ n, P12231809461986671622.a n = A056242 (n + 1)

end A056242

/-! ## A056242.P14917410783753861178

`A117317(-A024000(A038722(n+1)))`
-/

namespace A056242.P14917410783753861178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117317 (-A024000 (A038722 (n + 1)).toNat).toNat

end

end A056242.P14917410783753861178

namespace A056242

/-- `A117317(-A024000(A038722(n+1)))` -/
def P14917410783753861178.Spec : Prop :=
  ∀ n, P14917410783753861178.a n = A056242 (n + 1)

end A056242

/-!
# A056243: Third diagonal of triangle A056242.

The programs for A056243, the canonical program `A056243.P18307963841988564982` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056243 has offset 3).

The definition of A056243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056243.P18307963841988564982

`A100312(n)+A084899(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A056243

/-- `A100312(n)+A084899(n)` -/
def P18307963841988564982.Spec : Prop :=
  ∀ n, P18307963841988564982.a n = A056243 (n + 3)

theorem P18307963841988564982.correct : P18307963841988564982.Spec := by
  intro n
  simp only [A056243, Nat.add_sub_cancel]

end A056243

/-! ## A056243.P13759253526212476129

`A089658(n)+∑[A136530(n)]`
-/

namespace A056243.P13759253526212476129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089658 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056243.P13759253526212476129

namespace A056243

/-- `A089658(n)+∑[A136530(n)]` -/
def P13759253526212476129.Spec : Prop :=
  ∀ n, P13759253526212476129.a n = A056243 (n + 3)

end A056243

/-! ## A056243.P6061683902440780965

`A276289(n+1)+A089658(n)`
-/

namespace A056243.P6061683902440780965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276289 (n + 1) + A089658 n

end

end A056243.P6061683902440780965

namespace A056243

/-- `A276289(n+1)+A089658(n)` -/
def P6061683902440780965.Spec : Prop :=
  ∀ n, P6061683902440780965.a n = A056243 (n + 3)

end A056243

/-! ## A056243.P13117067651862783466

`A136530(n)+3*A001788(n)`
-/

namespace A056243.P13117067651862783466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136530 n + 3 * A001788 n

end

end A056243.P13117067651862783466

namespace A056243

/-- `A136530(n)+3*A001788(n)` -/
def P13117067651862783466.Spec : Prop :=
  ∀ n, P13117067651862783466.a n = A056243 (n + 3)

end A056243

/-! ## A056243.P9338011304351014721

`A014477(n)+Δ[A001815(n)/2]`
-/

namespace A056243.P9338011304351014721
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001815 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014477 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A056243.P9338011304351014721

namespace A056243

/-- `A014477(n)+Δ[A001815(n)/2]` -/
def P9338011304351014721.Spec : Prop :=
  ∀ n, P9338011304351014721.a n = (A056243 (n + 3) : ℚ)

end A056243

/-! ## A056243.P4101635346234833315

`A178987(n+2)+A058396(n+1)`
-/

namespace A056243.P4101635346234833315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178987 (n + 2) + A058396 (n + 1)

end

end A056243.P4101635346234833315

namespace A056243

/-- `A178987(n+2)+A058396(n+1)` -/
def P4101635346234833315.Spec : Prop :=
  ∀ n, P4101635346234833315.a n = A056243 (n + 3)

end A056243

/-! ## A056243.P16699902939302773951

`A072863(n)+(n+2)*A036289(n)`
-/

namespace A056243.P16699902939302773951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072863 n + (n + 2 : ℤ) * A036289 n

end

end A056243.P16699902939302773951

namespace A056243

/-- `A072863(n)+(n+2)*A036289(n)` -/
def P16699902939302773951.Spec : Prop :=
  ∀ n, P16699902939302773951.a n = A056243 (n + 3)

end A056243

/-! ## A056243.P2811594350666063037

`A001788(n+1)+A089658(n)+A001788(n)`
-/

namespace A056243.P2811594350666063037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 (n + 1) + (A089658 n + A001788 n)

end

end A056243.P2811594350666063037

namespace A056243

/-- `A001788(n+1)+A089658(n)+A001788(n)` -/
def P2811594350666063037.Spec : Prop :=
  ∀ n, P2811594350666063037.a n = A056243 (n + 3)

end A056243

/-! ## A056243.P802907227270480833

`A084899(n+1)+A001788(n)-A276289(n)`
-/

namespace A056243.P802907227270480833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084899 (n + 1) + (A001788 n - A276289 n)

end

end A056243.P802907227270480833

namespace A056243

/-- `A084899(n+1)+A001788(n)-A276289(n)` -/
def P802907227270480833.Spec : Prop :=
  ∀ n, P802907227270480833.a n = A056243 (n + 3)

end A056243

/-! ## A056243.P1376776311369765549

`A117317(∑[n+2]+3)`
-/

namespace A056243.P1376776311369765549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117317 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A056243.P1376776311369765549

namespace A056243

/-- `A117317(∑[n+2]+3)` -/
def P1376776311369765549.Spec : Prop :=
  ∀ n, P1376776311369765549.a n = A056243 (n + 3)

end A056243

/-! ## A056243.P17713888358604594196

`A056242(∑[n+3]+1)`
-/

namespace A056243.P17713888358604594196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056242 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A056243.P17713888358604594196

namespace A056243

/-- `A056242(∑[n+3]+1)` -/
def P17713888358604594196.Spec : Prop :=
  ∀ n, P17713888358604594196.a n = A056243 (n + 3)

end A056243

/-!
# A056244: Indices of primes in sequence defined by A(0) = 11, A(n) = 10*A(n-1) + 21 for n > 0.

The programs for A056244, there is no canonical definition to state claims against.
-/

/-! ## A056244.P8412453232066317880

`A259050(n+1)-1`
-/

namespace A056244.P8412453232066317880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259050 (n + 1) - 1

end

end A056244.P8412453232066317880

/-! ## A056244.P7201799840417332858

`record[Δ[A259050(A152271(n))]]`
-/

namespace A056244.P7201799840417332858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259050 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056244.P7201799840417332858

/-! ## A056244.P4866896355801176766

`A321804(C(2, n))+A259050(n+1)`
-/

namespace A056244.P4866896355801176766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (Nat.choose 2 n) + A259050 (n + 1)

end

end A056244.P4866896355801176766

/-! ## A056244.P17123867346448821821

`A321804(∑{d}[n, #])+A259050(n+1)`
-/

namespace A056244.P17123867346448821821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (∑ d ∈ Nat.divisors (f1 n), d) + A259050 (n + 1)

end

end A056244.P17123867346448821821

/-! ## A056244.P4193867725730647578

`abs(A259050(n+1)+A033999(2*n+1))`
-/

namespace A056244.P4193867725730647578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A259050 (n + 1) + A033999 (2 * n + 1)|

end

end A056244.P4193867725730647578

/-!
# A056245: Indices of primes in sequence defined by A(0) = 11, A(n) = 10*A(n-1) + 31 for n > 0.

The programs for A056245, there is no canonical definition to state claims against.
-/

/-! ## A056245.P17803758968573642541

`A259123(n+1)-1`
-/

namespace A056245.P17803758968573642541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259123 (n + 1) - 1

end

end A056245.P17803758968573642541

/-!
# A056246: Indices of primes in sequence defined by A(0) = 11, A(n) = 10*A(n-1) + 41 for n > 0.

The programs for A056246, there is no canonical definition to state claims against.
-/

/-! ## A056246.P12238274703337287304

`A259122(n+1)-1`
-/

namespace A056246.P12238274703337287304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259122 (n + 1) - 1

end

end A056246.P12238274703337287304

/-! ## A056246.P10671362467950653296

`record[Δ[A259122(A152271(n))]]`
-/

namespace A056246.P10671362467950653296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259122 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056246.P10671362467950653296

/-! ## A056246.P2409561304478450388

`record[Δ[A259122(A193592(n))]]`
-/

namespace A056246.P2409561304478450388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259122 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056246.P2409561304478450388

/-! ## A056246.P8963863239840928441

`record[Δ[A259122(A050873(n+1))]]`
-/

namespace A056246.P8963863239840928441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259122 (A050873 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056246.P8963863239840928441

/-! ## A056246.P7968281304896969967

`record[Δ[A259122(A200370(n+1))]]`
-/

namespace A056246.P7968281304896969967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259122 (A200370 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056246.P7968281304896969967

/-!
# A056247: Indices of primes in sequence defined by A(0) = 11, A(n) = 10*A(n-1) + 51 for n > 0.

The programs for A056247, there is no canonical definition to state claims against.
-/

/-! ## A056247.P7032441158479505351

`A259118(n+1)-1`
-/

namespace A056247.P7032441158479505351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259118 (n + 1) - 1

end

end A056247.P7032441158479505351

/-! ## A056247.P17534838888089603830

`record[Δ[A259118(A152271(n))]]`
-/

namespace A056247.P17534838888089603830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259118 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056247.P17534838888089603830

/-! ## A056247.P6634451461471429598

`record[Δ[A259118(A158416(n))]]`
-/

namespace A056247.P6634451461471429598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259118 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056247.P6634451461471429598

/-! ## A056247.P9770823479730725704

`record[Δ[A259118(A285577(n+1))]]`
-/

namespace A056247.P9770823479730725704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259118 (A285577 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056247.P9770823479730725704

/-! ## A056247.P16459454819901821844

`A260196(n+2)+A259118(n+1)`
-/

namespace A056247.P16459454819901821844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A259118 (n + 1)

end

end A056247.P16459454819901821844

/-!
# A056248: Indices of primes in sequence defined by A(0) = 11, A(n) = 10*A(n-1) + 61 for n > 0.

The programs for A056248, there is no canonical definition to state claims against.
-/

/-! ## A056248.P2774950907818941151

`A259121(n+1)-1`
-/

namespace A056248.P2774950907818941151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259121 (n + 1) - 1

end

end A056248.P2774950907818941151

/-! ## A056248.P17546261423552008694

`record[Δ[A259121(A152271(n))]]`
-/

namespace A056248.P17546261423552008694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259121 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056248.P17546261423552008694

/-! ## A056248.P9748124939245886227

`record[Δ[A259121(A057058(n+1))]]`
-/

namespace A056248.P9748124939245886227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259121 (A057058 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056248.P9748124939245886227

/-! ## A056248.P6143450430205972187

`record[Δ[A259121(A200370(n+1))]]`
-/

namespace A056248.P6143450430205972187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259121 (A200370 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056248.P6143450430205972187

/-! ## A056248.P8494395147130383300

`record[Δ[A259121(A260438(n+1))]]`
-/

namespace A056248.P8494395147130383300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259121 (A260438 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056248.P8494395147130383300

/-!
# A056249: Indices of primes in sequence defined by A(0) = 11, A(n) = 10*A(n-1) + 71 for n > 0.

The programs for A056249, there is no canonical definition to state claims against.
-/

/-! ## A056249.P7482497243888989102

`A259119(n+1)-1`
-/

namespace A056249.P7482497243888989102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259119 (n + 1) - 1

end

end A056249.P7482497243888989102

/-! ## A056249.P572994702939305141

`record[Δ[A259119(A152271(n))]]`
-/

namespace A056249.P572994702939305141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259119 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056249.P572994702939305141

/-! ## A056249.P11788566819538653615

`A259506(n+1)+A259119(n+1)`
-/

namespace A056249.P11788566819538653615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259506 (n + 1) + A259119 (n + 1)

end

end A056249.P11788566819538653615

/-! ## A056249.P9642012368415061815

`A260196(n+2)+A259119(n+1)`
-/

namespace A056249.P9642012368415061815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A259119 (n + 1)

end

end A056249.P9642012368415061815

/-! ## A056249.P7722350041191863134

`A352311(A224697(n))+A259119(n+1)`
-/

namespace A056249.P7722350041191863134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352311 (A224697 n).toNat + A259119 (n + 1)

end

end A056249.P7722350041191863134

/-!
# A056250: Indices of primes in sequence defined by A(0) = 11, A(n) = 10*A(n-1) + 81 for n > 0.

The programs for A056250, there is no canonical definition to state claims against.
-/

/-! ## A056250.P16702785701542287709

`A259120(n+1)-1`
-/

namespace A056250.P16702785701542287709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259120 (n + 1) - 1

end

end A056250.P16702785701542287709

/-! ## A056250.P4705239165271400136

`record[Δ[A259120(A152271(n))]]`
-/

namespace A056250.P4705239165271400136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259120 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056250.P4705239165271400136

/-! ## A056250.P8358272805934255901

`record[Δ[A259120(A158416(n))]]`
-/

namespace A056250.P8358272805934255901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259120 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056250.P8358272805934255901

/-! ## A056250.P12559322193798928643

`A259506(n+1)+A259120(n+1)`
-/

namespace A056250.P12559322193798928643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259506 (n + 1) + A259120 (n + 1)

end

end A056250.P12559322193798928643

/-! ## A056250.P1278595423231079479

`A260196(n+2)+A259120(n+1)`
-/

namespace A056250.P1278595423231079479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A259120 (n + 1)

end

end A056250.P1278595423231079479

/-!
# A056251: Indices of primes in sequence defined by A(0) = 33, A(n) = 10*A(n-1) - 17 for n > 0.

The programs for A056251, there is no canonical definition to state claims against.
-/

/-! ## A056251.P14749161468202069922

`A082704(n+1)-2`
-/

namespace A056251.P14749161468202069922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082704 (n + 1) - 2

end

end A056251.P14749161468202069922

/-! ## A056251.P13569313883821308693

`A259128(n+2)-1`
-/

namespace A056251.P13569313883821308693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259128 (n + 2) - 1

end

end A056251.P13569313883821308693

/-! ## A056251.P18269052326602978705

`A289207(A082704(n+1))`
-/

namespace A056251.P18269052326602978705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A082704 (n + 1)).toNat

end

end A056251.P18269052326602978705

/-! ## A056251.P14481774218262012853

`A023443(A259128(n+2))`
-/

namespace A056251.P14481774218262012853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A259128 (n + 2)).toNat

end

end A056251.P14481774218262012853

/-! ## A056251.P14919626094261162087

`A289207(A259128(n+2)+1)`
-/

namespace A056251.P14919626094261162087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A259128 (n + 2) + 1).toNat

end

end A056251.P14919626094261162087

/-!
# A056252: Indices of primes in sequence defined by A(0) = 33, A(n) = 10*A(n-1) - 7 for n > 0.

The programs for A056252, there is no canonical definition to state claims against.
-/

/-! ## A056252.P17924749629667352134

`A082705(n+1)-2`
-/

namespace A056252.P17924749629667352134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082705 (n + 1) - 2

end

end A056252.P17924749629667352134

/-!
# A056253: Indices of primes in sequence defined by A(0) = 33, A(n) = 10*A(n-1) + 13 for n > 0.

The programs for A056253, there is no canonical definition to state claims against.
-/

/-! ## A056253.P6361064483610902807

`A082706(n+1)-2`
-/

namespace A056253.P6361064483610902807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082706 (n + 1) - 2

end

end A056253.P6361064483610902807

/-!
# A056254: Indices of primes in sequence defined by A(0) = 33, A(n) = 10*A(n-1) + 23 for n > 0.

The programs for A056254, there is no canonical definition to state claims against.
-/

/-! ## A056254.P7969993518435245498

`A082707(n+1)-2`
-/

namespace A056254.P7969993518435245498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082707 (n + 1) - 2

end

end A056254.P7969993518435245498

/-! ## A056254.P3810505774247641723

`A259126(n+1)-1`
-/

namespace A056254.P3810505774247641723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259126 (n + 1) - 1

end

end A056254.P3810505774247641723

/-! ## A056254.P15350807529480417537

`abs(1-A259126(A348553(n)))`
-/

namespace A056254.P15350807529480417537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A259126 (A348553 n).toNat|

end

end A056254.P15350807529480417537

/-! ## A056254.P15923988558316546622

`record[A259126(A141256(n))-1]`
-/

namespace A056254.P15923988558316546622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259126 (A141256 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056254.P15923988558316546622

/-! ## A056254.P18247731470258384004

`xor(1, A082707(A008729(n)))-1`
-/

namespace A056254.P18247731470258384004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A082707 (A008729 n).toNat) - 1

end

end A056254.P18247731470258384004

/-!
# A056255: Indices of primes in sequence defined by A(0) = 33, A(n) = 10*A(n-1) + 43 for n > 0.

The programs for A056255, there is no canonical definition to state claims against.
-/

/-! ## A056255.P4262320177960175100

`A082708(n+1)-2`
-/

namespace A056255.P4262320177960175100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082708 (n + 1) - 2

end

end A056255.P4262320177960175100

/-! ## A056255.P13795464284445251338

`A259125(n+1)-1`
-/

namespace A056255.P13795464284445251338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259125 (n + 1) - 1

end

end A056255.P13795464284445251338

/-! ## A056255.P15246095029528241144

`abs(1-A259125(comp[42*n]))`
-/

namespace A056255.P15246095029528241144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  42 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A259125 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)|

end

end A056255.P15246095029528241144

/-! ## A056255.P17283968344930248012

`xor(1, A082708(A291769(n)))-1`
-/

namespace A056255.P17283968344930248012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A082708 (A291769 n).toNat) - 1

end

end A056255.P17283968344930248012

/-! ## A056255.P11380591878403436429

`xor(1, A259125(A348553(n)))-2`
-/

namespace A056255.P11380591878403436429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A259125 (A348553 n).toNat) - 2

end

end A056255.P11380591878403436429

/-!
# A056256: Indices of primes in sequence defined by A(0) = 33, A(n) = 10*A(n-1) + 53 for n > 0.

The programs for A056256, there is no canonical definition to state claims against.
-/

/-! ## A056256.P9158174938342191700

`A082709(n+1)-2`
-/

namespace A056256.P9158174938342191700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082709 (n + 1) - 2

end

end A056256.P9158174938342191700

/-! ## A056256.P17112773538731037351

`A259127(n+1)-1`
-/

namespace A056256.P17112773538731037351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259127 (n + 1) - 1

end

end A056256.P17112773538731037351

/-! ## A056256.P167459129325158851

`A023444(A082709(n+1))`
-/

namespace A056256.P167459129325158851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A082709 (n + 1)).toNat

end

end A056256.P167459129325158851

/-! ## A056256.P14534308063926583994

`A014681(A259127(n+1))`
-/

namespace A056256.P14534308063926583994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A259127 (n + 1)).toNat

end

end A056256.P14534308063926583994

/-! ## A056256.P4845993362732277017

`record[A259127(A133310(n))-1]`
-/

namespace A056256.P4845993362732277017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259127 (A133310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056256.P4845993362732277017

/-!
# A056257: Indices of primes in sequence defined by A(0) = 77, A(n) = 10*A(n-1) - 43 for n > 0.

The programs for A056257, there is no canonical definition to state claims against.
-/

/-! ## A056257.P12232473762956783405

`A082711(n+1)-2`
-/

namespace A056257.P12232473762956783405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082711 (n + 1) - 2

end

end A056257.P12232473762956783405

/-! ## A056257.P593113698775703108

`A259135(n+1)-1`
-/

namespace A056257.P593113698775703108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259135 (n + 1) - 1

end

end A056257.P593113698775703108

/-! ## A056257.P15678199174027565326

`A234044(A351086(n))+A082711(n+1)`
-/

namespace A056257.P15678199174027565326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234044 (A351086 n).toNat + A082711 (n + 1)

end

end A056257.P15678199174027565326

/-! ## A056257.P10036305474566000025

`A269429(A250662(n))+A259135(n+1)`
-/

namespace A056257.P10036305474566000025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269429 (A250662 n).toNat + A259135 (n + 1)

end

end A056257.P10036305474566000025

/-! ## A056257.P2909967244021522820

`A299990(A133959(n+1))+A082711(n+1)`
-/

namespace A056257.P2909967244021522820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299990 (A133959 (n + 1)).toNat + A082711 (n + 1)

end

end A056257.P2909967244021522820

/-!
# A056258: Indices of primes in sequence defined by A(0) = 77, A(n) = 10*A(n-1) - 23 for n > 0.

The programs for A056258, there is no canonical definition to state claims against.
-/

/-! ## A056258.P1446889649445291043

`A082712(n+1)-2`
-/

namespace A056258.P1446889649445291043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082712 (n + 1) - 2

end

end A056258.P1446889649445291043

/-! ## A056258.P5392402886121374078

`A259136(n+1)-1`
-/

namespace A056258.P5392402886121374078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259136 (n + 1) - 1

end

end A056258.P5392402886121374078

/-! ## A056258.P56434986823498794

`A321804(n)+A259136(n+1)`
-/

namespace A056258.P56434986823498794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 n + A259136 (n + 1)

end

end A056258.P56434986823498794

/-!
# A056259: Indices of primes in sequence defined by A(0) = 77, A(n) = 10*A(n-1) - 13 for n > 0.

The programs for A056259, there is no canonical definition to state claims against.
-/

/-! ## A056259.P12586466796275727051

`A082713(n+1)-2`
-/

namespace A056259.P12586466796275727051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082713 (n + 1) - 2

end

end A056259.P12586466796275727051

/-! ## A056259.P12224943957279806658

`A259132(n+1)-1`
-/

namespace A056259.P12224943957279806658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259132 (n + 1) - 1

end

end A056259.P12224943957279806658

/-! ## A056259.P8506099070071358085

`abs(1-A259132(n-log2(1/2)))`
-/

namespace A056259.P8506099070071358085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A259132 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat|

end

end A056259.P8506099070071358085

/-! ## A056259.P14677410181131511033

`abs(A259132(A348553(n))-1)`
-/

namespace A056259.P14677410181131511033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A259132 (A348553 n).toNat - 1|

end

end A056259.P14677410181131511033

/-!
# A056260: Indices of primes in sequence defined by A(0) = 77, A(n) = 10*A(n-1) - 3 for n > 0. Numbers n such that (690*10^n + 3)/9 is prime.

The programs for A056260, there is no canonical definition to state claims against.
-/

/-! ## A056260.P3311078150240180253

`A082714(n+1)-2`
-/

namespace A056260.P3311078150240180253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082714 (n + 1) - 2

end

end A056260.P3311078150240180253

/-! ## A056260.P3577230758061286477

`A259133(n+1)-1`
-/

namespace A056260.P3577230758061286477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259133 (n + 1) - 1

end

end A056260.P3577230758061286477

/-! ## A056260.P3530354650465460236

`abs(1-A259133(A348553(n)))`
-/

namespace A056260.P3530354650465460236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A259133 (A348553 n).toNat|

end

end A056260.P3530354650465460236

/-! ## A056260.P3910255220915349574

`record[A082714(A065648(n))-2]`
-/

namespace A056260.P3910255220915349574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082714 (A065648 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056260.P3910255220915349574

/-! ## A056260.P4514065989316829945

`xor(1, A082714(A077168(n)))-1`
-/

namespace A056260.P4514065989316829945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A082714 (A077168 n).toNat) - 1

end

end A056260.P4514065989316829945

/-!
# A056262: Indices of primes in sequence defined by A(0) = 77, A(n) = 10*A(n-1) + 17 for n > 0.

The programs for A056262, there is no canonical definition to state claims against.
-/

/-! ## A056262.P3871095538503806582

`A082715(n+1)-2`
-/

namespace A056262.P3871095538503806582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082715 (n + 1) - 2

end

end A056262.P3871095538503806582

/-! ## A056262.P14119374917741241983

`A259137(n+1)-1`
-/

namespace A056262.P14119374917741241983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259137 (n + 1) - 1

end

end A056262.P14119374917741241983

/-! ## A056262.P14318249644585609916

`abs(1-A259137(A348553(n)))`
-/

namespace A056262.P14318249644585609916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A259137 (A348553 n).toNat|

end

end A056262.P14318249644585609916

/-! ## A056262.P16348301836872656582

`xor(1, A082715(A082743(n)))-1`
-/

namespace A056262.P16348301836872656582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A082715 (A082743 n).toNat) - 1

end

end A056262.P16348301836872656582

/-! ## A056262.P6089606264948466709

`or(1, A259137(A005496(n)))-2`
-/

namespace A056262.P6089606264948466709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A259137 (A005496 n).toNat) - 2

end

end A056262.P6089606264948466709

/-!
# A056263: Indices of primes in sequence defined by A(0) = 77, A(n) = 10*A(n-1) + 27 for n > 0.

The programs for A056263, there is no canonical definition to state claims against.
-/

/-! ## A056263.P15534081726626226757

`A082716(n+1)-2`
-/

namespace A056263.P15534081726626226757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082716 (n + 1) - 2

end

end A056263.P15534081726626226757

/-! ## A056263.P4203274390053696430

`record[A082716(A065648(n))-2]`
-/

namespace A056263.P4203274390053696430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082716 (A065648 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056263.P4203274390053696430

/-! ## A056263.P9482966081456249552

`A280560(2*n+1)+A082716(n+1)`
-/

namespace A056263.P9482966081456249552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (2 * n + 1) + A082716 (n + 1)

end

end A056263.P9482966081456249552

/-! ## A056263.P15417374740454730090

`A224822(A319150(n))+A082716(n+1)`
-/

namespace A056263.P15417374740454730090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224822 (A319150 n).toNat + A082716 (n + 1)

end

end A056263.P15417374740454730090

/-! ## A056263.P9800459826414901168

`A259134(n+2)-1`
-/

namespace A056263.P9800459826414901168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259134 (n + 2) - 1

end

end A056263.P9800459826414901168

/-!
# A056264: Indices of primes in sequence defined by A(0) = 99, A(n) = 10*A(n-1) - 71 for n > 0.

The programs for A056264, there is no canonical definition to state claims against.
-/

/-! ## A056264.P4064839501175685593

`A082717(n+1)-2`
-/

namespace A056264.P4064839501175685593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082717 (n + 1) - 2

end

end A056264.P4064839501175685593

/-!
# A056265: Indices of primes in sequence defined by A(0) = 99, A(n) = 10*A(n-1) - 61 for n > 0.

The programs for A056265, there is no canonical definition to state claims against.
-/

/-! ## A056265.P4803717268700084338

`A082718(n+1)-2`
-/

namespace A056265.P4803717268700084338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082718 (n + 1) - 2

end

end A056265.P4803717268700084338

/-! ## A056265.P3466475092428524368

`A259140(n+1)-1`
-/

namespace A056265.P3466475092428524368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259140 (n + 1) - 1

end

end A056265.P3466475092428524368

/-!
# A056266: Indices of primes in sequence defined by A(0) = 99, A(n) = 10*A(n-1) - 1 for n > 0.

The programs for A056266, there is no canonical definition to state claims against.
-/

/-! ## A056266.P7417123629643441828

`A082719(n+1)-2`
-/

namespace A056266.P7417123629643441828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082719 (n + 1) - 2

end

end A056266.P7417123629643441828

/-! ## A056266.P9222097115796681869

`A259139(n+1)-1`
-/

namespace A056266.P9222097115796681869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259139 (n + 1) - 1

end

end A056266.P9222097115796681869

/-! ## A056266.P5951394920831876576

`xor(1, A082719(A005496(n)))-1`
-/

namespace A056266.P5951394920831876576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A082719 (A005496 n).toNat) - 1

end

end A056266.P5951394920831876576

/-! ## A056266.P12583391967694775656

`xor(1, A082719(A077168(n)))-1`
-/

namespace A056266.P12583391967694775656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A082719 (A077168 n).toNat) - 1

end

end A056266.P12583391967694775656

/-! ## A056266.P11076068840272520291

`or(1, A259139(A034894(n)))-2`
-/

namespace A056266.P11076068840272520291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A259139 (A034894 n).toNat) - 2

end

end A056266.P11076068840272520291

/-!
# A056267: Number of primitive (aperiodic) words of length n which contain exactly two different symbols.

The programs for A056267, the canonical program `A056267.P9047364021855205352` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056267 has offset 1).

The definition of A056267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056267.P7008846347199435110

`2*A056278(n+1)`
-/

namespace A056267.P7008846347199435110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056278 (n + 1)

end

end A056267.P7008846347199435110

namespace A056267

/-- `2*A056278(n+1)` -/
def P7008846347199435110.Spec : Prop :=
  ∀ n, P7008846347199435110.a n = A056267 (n + 1)

end A056267

/-! ## A056267.P9047364021855205352

`and(-2, A038199(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A056267

/-- `and(-2, A038199(n+1))` -/
def P9047364021855205352.Spec : Prop :=
  ∀ n, P9047364021855205352.a n = A056267 (n + 1)

theorem P9047364021855205352.correct : P9047364021855205352.Spec := by
  intro n
  simp only [A056267, Nat.add_sub_cancel]

end A056267

/-! ## A056267.P13981650610817360358

`record[(n-char[2])*A001037(n)]`
-/

namespace A056267.P13981650610817360358
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) * A001037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056267.P13981650610817360358

namespace A056267

/-- `record[(n-char[2])*A001037(n)]` -/
def P13981650610817360358.Spec : Prop :=
  ∀ n, P13981650610817360358.a n = A056267 (n + 1)

end A056267

/-! ## A056267.P13116472056702655955

`A027375((n+1)%(2*n+1))`
-/

namespace A056267.P13116472056702655955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027375 ((n + 1) % (2 * n + 1))

end

end A056267.P13116472056702655955

namespace A056267

/-- `A027375((n+1)%(2*n+1))` -/
def P13116472056702655955.Spec : Prop :=
  ∀ n, P13116472056702655955.a n = A056267 (n + 1)

end A056267

/-! ## A056267.P16048541179055734849

`2*A000740(n+1)%(2^n)`
-/

namespace A056267.P16048541179055734849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A000740 (n + 1)) (2 ^ n : ℤ)

end

end A056267.P16048541179055734849

namespace A056267

/-- `2*A000740(n+1)%(2^n)` -/
def P16048541179055734849.Spec : Prop :=
  ∀ n, P16048541179055734849.a n = A056267 (n + 1)

end A056267

/-! ## A056267.P9442427645821818211

`ceil(sqrt(n²+n))*A001037(n+1)`
-/

namespace A056267.P9442427645821818211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n ^ 2 + n : ℝ)⌉ * A001037 (n + 1)

end

end A056267.P9442427645821818211

namespace A056267

/-- `ceil(sqrt(n²+n))*A001037(n+1)` -/
def P9442427645821818211.Spec : Prop :=
  ∀ n, P9442427645821818211.a n = A056267 (n + 1)

end A056267

/-! ## A056267.P17208986862479413118

`A027375(A087156(n+1))`
-/

namespace A056267.P17208986862479413118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027375 (A087156 (n + 1)).toNat

end

end A056267.P17208986862479413118

namespace A056267

/-- `A027375(A087156(n+1))` -/
def P17208986862479413118.Spec : Prop :=
  ∀ n, P17208986862479413118.a n = A056267 (n + 1)

end A056267

/-! ## A056267.P8965139095475573763

`A027375(A184985(n+1))`
-/

namespace A056267.P8965139095475573763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027375 (A184985 (n + 1)).toNat

end

end A056267.P8965139095475573763

namespace A056267

/-- `A027375(A184985(n+1))` -/
def P8965139095475573763.Spec : Prop :=
  ∀ n, P8965139095475573763.a n = A056267 (n + 1)

end A056267

/-! ## A056267.P6990798717137938813

`A027375(A199969(n+2))`
-/

namespace A056267.P6990798717137938813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027375 (A199969 (n + 2)).toNat

end

end A056267.P6990798717137938813

namespace A056267

/-- `A027375(A199969(n+2))` -/
def P6990798717137938813.Spec : Prop :=
  ∀ n, P6990798717137938813.a n = A056267 (n + 1)

end A056267

/-! ## A056267.P2375673297653473008

`A027375(1-A000007(n)+n)`
-/

namespace A056267.P2375673297653473008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027375 (1 - A000007 n + (n : ℤ)).toNat

end

end A056267.P2375673297653473008

namespace A056267

/-- `A027375(1-A000007(n)+n)` -/
def P2375673297653473008.Spec : Prop :=
  ∀ n, P2375673297653473008.a n = A056267 (n + 1)

end A056267

/-! ## A056267.P11819526360334337953

`A038199(n+1)-A000007(n)`
-/

namespace A056267.P11819526360334337953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038199 (n + 1) - A000007 n

end

end A056267.P11819526360334337953

namespace A056267

/-- `A038199(n+1)-A000007(n)` -/
def P11819526360334337953.Spec : Prop :=
  ∀ n, P11819526360334337953.a n = A056267 (n + 1)

end A056267

/-! ## A056267.P2729110392956163281

`A027375(1-(A000007(n)-n))`
-/

namespace A056267.P2729110392956163281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027375 (1 - (A000007 n - (n : ℤ))).toNat

end

end A056267.P2729110392956163281

namespace A056267

/-- `A027375(1-(A000007(n)-n))` -/
def P2729110392956163281.Spec : Prop :=
  ∀ n, P2729110392956163281.a n = A056267 (n + 1)

end A056267

/-! ## A056267.P6105662696219510509

`A038199(n+1)*A057427(n)`
-/

namespace A056267.P6105662696219510509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038199 (n + 1) * A057427 n

end

end A056267.P6105662696219510509

namespace A056267

/-- `A038199(n+1)*A057427(n)` -/
def P6105662696219510509.Spec : Prop :=
  ∀ n, P6105662696219510509.a n = A056267 (n + 1)

end A056267

/-! ## A056267.P11083530419274428018

`and(A038199(n+1), A057428(n))`
-/

namespace A056267.P11083530419274428018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038199 (n + 1)) (A057428 n)

end

end A056267.P11083530419274428018

namespace A056267

/-- `and(A038199(n+1), A057428(n))` -/
def P11083530419274428018.Spec : Prop :=
  ∀ n, P11083530419274428018.a n = A056267 (n + 1)

end A056267

/-! ## A056267.P11933388942496036208

`and(A038199(n+1), A281500(n))`
-/

namespace A056267.P11933388942496036208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038199 (n + 1)) (A281500 n)

end

end A056267.P11933388942496036208

namespace A056267

/-- `and(A038199(n+1), A281500(n))` -/
def P11933388942496036208.Spec : Prop :=
  ∀ n, P11933388942496036208.a n = A056267 (n + 1)

end A056267

/-! ## A056267.P4713489140194407654

`A027375(floor(log2(A130887(n+1))))`
-/

namespace A056267.P4713489140194407654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027375 (Nat.log 2 (A130887 (n + 1)).toNat)

end

end A056267.P4713489140194407654

namespace A056267

/-- `A027375(floor(log2(A130887(n+1))))` -/
def P4713489140194407654.Spec : Prop :=
  ∀ n, P4713489140194407654.a n = A056267 (n + 1)

end A056267

/-! ## A056267.P14007726036587689880

`A027375(ceil(log2(A038199(n+1))))`
-/

namespace A056267.P14007726036587689880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027375 ⌈Real.logb 2 (A038199 (n + 1) : ℝ)⌉.toNat

end

end A056267.P14007726036587689880

namespace A056267

/-- `A027375(ceil(log2(A038199(n+1))))` -/
def P14007726036587689880.Spec : Prop :=
  ∀ n, P14007726036587689880.a n = A056267 (n + 1)

end A056267

/-! ## A056267.P9721653520809983243

`A027375(ceil(log2(A224840(n+1))))`
-/

namespace A056267.P9721653520809983243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027375 ⌈Real.logb 2 (A224840 (n + 1) : ℝ)⌉.toNat

end

end A056267.P9721653520809983243

namespace A056267

/-- `A027375(ceil(log2(A224840(n+1))))` -/
def P9721653520809983243.Spec : Prop :=
  ∀ n, P9721653520809983243.a n = A056267 (n + 1)

end A056267

/-! ## A056267.P6211745833763457816

`A027375(round(log2(A038199(n+1))))`
-/

namespace A056267.P6211745833763457816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027375 (SequenceMachineLib.roundAway (Real.logb 2 (A038199 (n + 1) : ℝ))).toNat

end

end A056267.P6211745833763457816

namespace A056267

/-- `A027375(round(log2(A038199(n+1))))` -/
def P6211745833763457816.Spec : Prop :=
  ∀ n, P6211745833763457816.a n = A056267 (n + 1)

end A056267

/-!
# A056268: Number of primitive (aperiodic) words of length n which contain exactly three different symbols.

The programs for A056268, the canonical program `A056268.P10353224445978175421` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056268 has offset 1).

The definition of A056268 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056268.P10353224445978175421

`6*A056279(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A056268

/-- `6*A056279(n+1)` -/
def P10353224445978175421.Spec : Prop :=
  ∀ n, P10353224445978175421.a n = A056268 (n + 1)

theorem P10353224445978175421.correct : P10353224445978175421.Spec := by
  intro n
  simp only [A056268, Nat.add_sub_cancel]

end A056268

/-! ## A056268.P14208908363347780040

`(n+1)*A056288(n+1)`
-/

namespace A056268.P14208908363347780040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A056288 (n + 1)

end

end A056268.P14208908363347780040

namespace A056268

/-- `(n+1)*A056288(n+1)` -/
def P14208908363347780040.Spec : Prop :=
  ∀ n, P14208908363347780040.a n = A056268 (n + 1)

end A056268

/-! ## A056268.P972759206556823860

`6*(A056274(n+1)-A000740(n+1))`
-/

namespace A056268.P972759206556823860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A056274 (n + 1) - A000740 (n + 1))

end

end A056268.P972759206556823860

namespace A056268

/-- `6*(A056274(n+1)-A000740(n+1))` -/
def P972759206556823860.Spec : Prop :=
  ∀ n, P972759206556823860.a n = A056268 (n + 1)

end A056268

/-! ## A056268.P4757447017449786440

`(n+1)*(A326660(n+1)+A056349(n+1))`
-/

namespace A056268.P4757447017449786440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A326660 (n + 1) + A056349 (n + 1))

end

end A056268.P4757447017449786440

namespace A056268

/-- `(n+1)*(A326660(n+1)+A056349(n+1))` -/
def P4757447017449786440.Spec : Prop :=
  ∀ n, P4757447017449786440.a n = A056268 (n + 1)

end A056268

/-! ## A056268.P8314386162298772763

`(A056499(n+1)+2*A326660(n+1))*(n+1)`
-/

namespace A056268.P8314386162298772763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056499 (n + 1) + 2 * A326660 (n + 1)) * (n + 1 : ℤ)

end

end A056268.P8314386162298772763

namespace A056268

/-- `(A056499(n+1)+2*A326660(n+1))*(n+1)` -/
def P8314386162298772763.Spec : Prop :=
  ∀ n, P8314386162298772763.a n = A056268 (n + 1)

end A056268

/-! ## A056268.P6300119656199859504

`(n+1)*A254040(∑[n+1]+3)`
-/

namespace A056268.P6300119656199859504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A254040 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A056268.P6300119656199859504

namespace A056268

/-- `(n+1)*A254040(∑[n+1]+3)` -/
def P6300119656199859504.Spec : Prop :=
  ∀ n, P6300119656199859504.a n = A056268 (n + 1)

end A056268

/-!
# A056269: Number of primitive (aperiodic) words of length n which contain exactly four different symbols.

The programs for A056269, the canonical program `A056269.P4748138964941863798` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056269 has offset 1).

The definition of A056269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056269.P18172461700746751487

`24*A056280(n+1)`
-/

namespace A056269.P18172461700746751487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A056280 (n + 1)

end

end A056269.P18172461700746751487

namespace A056269

/-- `24*A056280(n+1)` -/
def P18172461700746751487.Spec : Prop :=
  ∀ n, P18172461700746751487.a n = A056269 (n + 1)

end A056269

/-! ## A056269.P16979722538897274464

`(n+1)*A056289(n+1)`
-/

namespace A056269.P16979722538897274464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A056289 (n + 1)

end

end A056269.P16979722538897274464

namespace A056269

/-- `(n+1)*A056289(n+1)` -/
def P16979722538897274464.Spec : Prop :=
  ∀ n, P16979722538897274464.a n = A056269 (n + 1)

end A056269

/-! ## A056269.P14116026314671990272

`A056289(n+1)*A326178(n)`
-/

namespace A056269.P14116026314671990272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056289 (n + 1) * A326178 n

end

end A056269.P14116026314671990272

namespace A056269

/-- `A056289(n+1)*A326178(n)` -/
def P14116026314671990272.Spec : Prop :=
  ∀ n, P14116026314671990272.a n = A056269 (n + 1)

end A056269

/-! ## A056269.P3069372016954150919

`(n+1)*(A326789(n+1)+A056350(n+1))`
-/

namespace A056269.P3069372016954150919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A326789 (n + 1) + A056350 (n + 1))

end

end A056269.P3069372016954150919

namespace A056269

/-- `(n+1)*(A326789(n+1)+A056350(n+1))` -/
def P3069372016954150919.Spec : Prop :=
  ∀ n, P3069372016954150919.a n = A056269 (n + 1)

end A056269

/-! ## A056269.P4748138964941863798

`∑{d}[n+1, A000919(#)*A008683((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A056269

/-- `∑{d}[n+1, A000919(#)*A008683((n+1)/#)]` -/
def P4748138964941863798.Spec : Prop :=
  ∀ n, P4748138964941863798.a n = A056269 (n + 1)

theorem P4748138964941863798.correct : P4748138964941863798.Spec := by
  intro n
  simp only [A056269, Nat.add_sub_cancel]

end A056269

/-! ## A056269.P9252035837962938179

`(n+1)*∑{d}[n+1, A008683(#)*A056284((n+1)/#)]`
-/

namespace A056269.P9252035837962938179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A008683 d * A056284 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat)

end

end A056269.P9252035837962938179

namespace A056269

/-- `(n+1)*∑{d}[n+1, A008683(#)*A056284((n+1)/#)]` -/
def P9252035837962938179.Spec : Prop :=
  ∀ n, P9252035837962938179.a n = A056269 (n + 1)

end A056269

/-! ## A056269.P10265834711985129830

`(n+1)*(A056350(n+1)+A056350(n+1)-A056500(n+1))`
-/

namespace A056269.P10265834711985129830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A056350 (n + 1) + (A056350 (n + 1) - A056500 (n + 1)))

end

end A056269.P10265834711985129830

namespace A056269

/-- `(n+1)*(A056350(n+1)+A056350(n+1)-A056500(n+1))` -/
def P10265834711985129830.Spec : Prop :=
  ∀ n, P10265834711985129830.a n = A056269 (n + 1)

end A056269

/-!
# A056270: Number of primitive (aperiodic) words of length n which contain exactly five different symbols.

The programs for A056270, there is no canonical definition to state claims against.
-/

/-! ## A056270.P851741430272569091

`10*12*A056281(n+1)`
-/

namespace A056270.P851741430272569091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (12 * A056281 (n + 1))

end

end A056270.P851741430272569091

/-! ## A056270.P15661730290941176898

`(n+1)*A056290(n+1)`
-/

namespace A056270.P15661730290941176898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A056290 (n + 1)

end

end A056270.P15661730290941176898

/-! ## A056270.P927882036709923162

`A056290(n+1)*A326178(n)`
-/

namespace A056270.P927882036709923162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056290 (n + 1) * A326178 n

end

end A056270.P927882036709923162

/-! ## A056270.P6319885283208253591

`∑{d}[n+1, A008683(#)*A056285((n+1)/#)]*A254667(n+1)`
-/

namespace A056270.P6319885283208253591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A008683 d * A056285 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat) * A254667 (n + 1)

end

end A056270.P6319885283208253591

/-! ## A056270.P12805347716231338362

`∑{d}[n+1, A056285(#)*A069158((n+1)/#)]*A254667(n+1)`
-/

namespace A056270.P12805347716231338362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A056285 d * A069158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat) * A254667 (n + 1)

end

end A056270.P12805347716231338362

/-! ## A056270.P6141562762382090380

`A056290(n+1)*A131209(n)`
-/

namespace A056270.P6141562762382090380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056290 (n + 1) * A131209 n

end

end A056270.P6141562762382090380

/-! ## A056270.P7091124137730305955

`A254040(A347553(n+3)+6)*A254667(n+1)`
-/

namespace A056270.P7091124137730305955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254040 (A347553 (n + 3) + 6).toNat * A254667 (n + 1)

end

end A056270.P7091124137730305955

/-!
# A056271: Number of primitive (aperiodic) words of length n which contain exactly six different symbols.

The programs for A056271, there is no canonical definition to state claims against.
-/

/-! ## A056271.P2646341025706396683

`(n+1)*A056291(n+1)`
-/

namespace A056271.P2646341025706396683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A056291 (n + 1)

end

end A056271.P2646341025706396683

/-! ## A056271.P18087208738131272348

`A056291(n+1)*A326178(n)`
-/

namespace A056271.P18087208738131272348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056291 (n + 1) * A326178 n

end

end A056271.P18087208738131272348

/-! ## A056271.P14541498875986904153

`∑{d}[n+1, A008683(#)*A000920((n+1)/#)]`
-/

namespace A056271.P14541498875986904153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A000920 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056271.P14541498875986904153

/-! ## A056271.P17515987341005918946

`∑{d}[n+1, A000920(#)*A069158((n+1)/#)]`
-/

namespace A056271.P17515987341005918946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000920 d * A069158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056271.P17515987341005918946

/-! ## A056271.P6165930440721887080

`A056282(n+1)*A202095(A007318(∑[n]))`
-/

namespace A056271.P6165930440721887080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056282 (n + 1) * A202095 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A056271.P6165930440721887080

/-! ## A056271.P15635754779607454176

`A056291(n+1)*A131209(n)`
-/

namespace A056271.P15635754779607454176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056291 (n + 1) * A131209 n

end

end A056271.P15635754779607454176

/-!
# A056272: Word structures of length n using a 5-ary alphabet.

The programs for A056272, the canonical program `A056272.P10027317883557140852` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056272 has offset 0).

The definition of A056272 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056272.P5845517462088532134

`A056506(abs(1-2*n))`
-/

namespace A056272.P5845517462088532134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056506 |1 - (2 * n : ℤ)|.toNat

end

end A056272.P5845517462088532134

namespace A056272

/-- `A056506(abs(1-2*n))` -/
def P5845517462088532134.Spec : Prop :=
  ∀ n, P5845517462088532134.a n = A056272 n

end A056272

/-! ## A056272.P12573561381653143961

`A056470(A004277(n))`
-/

namespace A056272.P12573561381653143961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056470 (A004277 n).toNat

end

end A056272.P12573561381653143961

namespace A056272

/-- `A056470(A004277(n))` -/
def P12573561381653143961.Spec : Prop :=
  ∀ n, P12573561381653143961.a n = A056272 n

end A056272

/-! ## A056272.P10891753054961034625

`A056470(A053438(n))`
-/

namespace A056272.P10891753054961034625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056470 (A053438 n).toNat

end

end A056272.P10891753054961034625

namespace A056272

/-- `A056470(A053438(n))` -/
def P10891753054961034625.Spec : Prop :=
  ∀ n, P10891753054961034625.a n = A056272 n

end A056272

/-! ## A056272.P15464140152422167455

`A056470(A004274(n+1))`
-/

namespace A056272.P15464140152422167455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056470 (A004274 (n + 1)).toNat

end

end A056272.P15464140152422167455

namespace A056272

/-- `A056470(A004274(n+1))` -/
def P15464140152422167455.Spec : Prop :=
  ∀ n, P15464140152422167455.a n = A056272 n

end A056272

/-! ## A056272.P10573514974121830301

`A056470(A004275(n+1))`
-/

namespace A056272.P10573514974121830301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056470 (A004275 (n + 1)).toNat

end

end A056272.P10573514974121830301

namespace A056272

/-- `A056470(A004275(n+1))` -/
def P10573514974121830301.Spec : Prop :=
  ∀ n, P10573514974121830301.a n = A056272 n

end A056272

/-! ## A056272.P9542988551711140225

`A056470(A004273(n)+1)`
-/

namespace A056272.P9542988551711140225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056470 (A004273 n + 1).toNat

end

end A056272.P9542988551711140225

namespace A056272

/-- `A056470(A004273(n)+1)` -/
def P9542988551711140225.Spec : Prop :=
  ∀ n, P9542988551711140225.a n = A056272 n

end A056272

/-! ## A056272.P9308700517808444166

`A056470(A004280(n+1))`
-/

namespace A056272.P9308700517808444166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056470 (A004280 (n + 1)).toNat

end

end A056272.P9308700517808444166

namespace A056272

/-- `A056470(A004280(n+1))` -/
def P9308700517808444166.Spec : Prop :=
  ∀ n, P9308700517808444166.a n = A056272 n

end A056272

/-! ## A056272.P10392197255890761790

`A056470(A316571(n+1))`
-/

namespace A056272.P10392197255890761790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056470 (A316571 (n + 1)).toNat

end

end A056272.P10392197255890761790

namespace A056272

/-- `A056470(A316571(n+1))` -/
def P10392197255890761790.Spec : Prop :=
  ∀ n, P10392197255890761790.a n = A056272 n

end A056272

/-! ## A056272.P6387223647738845612

`A056470(A346301(n+1))`
-/

namespace A056272.P6387223647738845612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056470 (A346301 (n + 1)).toNat

end

end A056272.P6387223647738845612

namespace A056272

/-- `A056470(A346301(n+1))` -/
def P6387223647738845612.Spec : Prop :=
  ∀ n, P6387223647738845612.a n = A056272 n

end A056272

/-! ## A056272.P3022203493555700175

`A056470(A377994(n+1))`
-/

namespace A056272.P3022203493555700175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056470 (A377994 (n + 1)).toNat

end

end A056272.P3022203493555700175

namespace A056272

/-- `A056470(A377994(n+1))` -/
def P3022203493555700175.Spec : Prop :=
  ∀ n, P3022203493555700175.a n = A056272 n

end A056272

/-! ## A056272.P9597076249295739223

`A056470(A300576(n+2))`
-/

namespace A056272.P9597076249295739223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056470 (A300576 (n + 2)).toNat

end

end A056272.P9597076249295739223

namespace A056272

/-- `A056470(A300576(n+2))` -/
def P9597076249295739223.Spec : Prop :=
  ∀ n, P9597076249295739223.a n = A056272 n

end A056272

/-! ## A056272.P13476225495028448772

`∑{d}[A028310(n), A056276(#)]`
-/

namespace A056272.P13476225495028448772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056276 d

end

end A056272.P13476225495028448772

namespace A056272

/-- `∑{d}[A028310(n), A056276(#)]` -/
def P13476225495028448772.Spec : Prop :=
  ∀ n, P13476225495028448772.a n = A056272 n

end A056272

/-! ## A056272.P4917937217371528418

`2*A056324(n)-A305751(n)`
-/

namespace A056272.P4917937217371528418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056324 n - A305751 n

end

end A056272.P4917937217371528418

namespace A056272

/-- `2*A056324(n)-A305751(n)` -/
def P4917937217371528418.Spec : Prop :=
  ∀ n, P4917937217371528418.a n = A056272 n

end A056272

/-! ## A056272.P5699634146160498573

`A056470(lt[Δ[A056455(n+2)], n])`
-/

namespace A056272.P5699634146160498573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056455 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056470 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n)

end

end A056272.P5699634146160498573

namespace A056272

/-- `A056470(lt[Δ[A056455(n+2)], n])` -/
def P5699634146160498573.Spec : Prop :=
  ∀ n, P5699634146160498573.a n = A056272 n

end A056272

/-! ## A056272.P2162442663243903802

`A056470(2*n+1-A057427(n))`
-/

namespace A056272.P2162442663243903802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056470 ((2 * n + 1 : ℤ) - A057427 n).toNat

end

end A056272.P2162442663243903802

namespace A056272

/-- `A056470(2*n+1-A057427(n))` -/
def P2162442663243903802.Spec : Prop :=
  ∀ n, P2162442663243903802.a n = A056272 n

end A056272

/-! ## A056272.P4196462800799253284

`A056470(A132753(n)-A132730(n))`
-/

namespace A056272.P4196462800799253284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056470 (A132753 n - A132730 n).toNat

end

end A056272.P4196462800799253284

namespace A056272

/-- `A056470(A132753(n)-A132730(n))` -/
def P4196462800799253284.Spec : Prop :=
  ∀ n, P4196462800799253284.a n = A056272 n

end A056272

/-! ## A056272.P2503605376721848825

`A305751(n)+2*A320935(A028310(n))`
-/

namespace A056272.P2503605376721848825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305751 n + 2 * A320935 (A028310 n).toNat

end

end A056272.P2503605376721848825

namespace A056272

/-- `A305751(n)+2*A320935(A028310(n))` -/
def P2503605376721848825.Spec : Prop :=
  ∀ n, P2503605376721848825.a n = A056272 n

end A056272

/-! ## A056272.P5405277651474024374

`A305751(n)+2*A320935(A233583(n+1))`
-/

namespace A056272.P5405277651474024374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305751 n + 2 * A320935 (A233583 (n + 1)).toNat

end

end A056272.P5405277651474024374

namespace A056272

/-- `A305751(n)+2*A320935(A233583(n+1))` -/
def P5405277651474024374.Spec : Prop :=
  ∀ n, P5405277651474024374.a n = A056272 n

end A056272

/-! ## A056272.P11088565138645265664

`A000265(A059268(n))*A056506(A004273(n))`
-/

namespace A056272.P11088565138645265664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A059268 n).toNat * A056506 (A004273 n).toNat

end

end A056272.P11088565138645265664

namespace A056272

/-- `A000265(A059268(n))*A056506(A004273(n))` -/
def P11088565138645265664.Spec : Prop :=
  ∀ n, P11088565138645265664.a n = A056272 n

end A056272

/-! ## A056272.P10027317883557140852

`A222867(n+1)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A056272

/-- `A222867(n+1)-a(n-1)` -/
def P10027317883557140852.Spec : Prop :=
  ∀ n, P10027317883557140852.a n = A056272 n

theorem P10027317883557140852.correct : P10027317883557140852.Spec := by
  intro n
  simp only [A056272]

end A056272

/-!
# A056273: Word structures of length n using a 6-ary alphabet.

The programs for A056273, there is no canonical definition to state claims against.
-/

/-! ## A056273.P17846062524895967834

`A056507(abs(1-2*n))`
-/

namespace A056273.P17846062524895967834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056507 |1 - (2 * n : ℤ)|.toNat

end

end A056273.P17846062524895967834

/-! ## A056273.P16497077602107716587

`A056471(record[abs(xor(1, n-2))])`
-/

namespace A056273.P16497077602107716587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 ((n : ℤ) - 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056471 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A056273.P16497077602107716587

/-! ## A056273.P4504945909388387715

`A222776(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A056273.P4504945909388387715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A222776 (n + 1) - a (n - 1)

end

end A056273.P4504945909388387715

/-! ## A056273.P11915831144800440425

`A056471(A004277(n))`
-/

namespace A056273.P11915831144800440425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056471 (A004277 n).toNat

end

end A056273.P11915831144800440425

/-! ## A056273.P5373302649091703180

`A056471(A053438(n))`
-/

namespace A056273.P5373302649091703180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056471 (A053438 n).toNat

end

end A056273.P5373302649091703180

/-! ## A056273.P3034528050845199433

`A056471(A004274(n+1))`
-/

namespace A056273.P3034528050845199433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056471 (A004274 (n + 1)).toNat

end

end A056273.P3034528050845199433

/-! ## A056273.P8699321319733844901

`A056471(A004275(n+1))`
-/

namespace A056273.P8699321319733844901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056471 (A004275 (n + 1)).toNat

end

end A056273.P8699321319733844901

/-! ## A056273.P6351033035536320596

`A056471(A004280(n+1))`
-/

namespace A056273.P6351033035536320596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056471 (A004280 (n + 1)).toNat

end

end A056273.P6351033035536320596

/-! ## A056273.P15994393611966961460

`A056471(A316571(n+1))`
-/

namespace A056273.P15994393611966961460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056471 (A316571 (n + 1)).toNat

end

end A056273.P15994393611966961460

/-! ## A056273.P4986590778148803647

`A056471(A346301(n+1))`
-/

namespace A056273.P4986590778148803647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056471 (A346301 (n + 1)).toNat

end

end A056273.P4986590778148803647

/-! ## A056273.P18064669557979745546

`A056471(A377994(n+1))`
-/

namespace A056273.P18064669557979745546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056471 (A377994 (n + 1)).toNat

end

end A056273.P18064669557979745546

/-! ## A056273.P5885614118215657517

`A056471(A300576(n+2))`
-/

namespace A056273.P5885614118215657517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056471 (A300576 (n + 2)).toNat

end

end A056273.P5885614118215657517

/-! ## A056273.P4464564066859566320

`A056471(2*(A000007(n)+n))`
-/

namespace A056273.P4464564066859566320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056471 (2 * (A000007 n + (n : ℤ))).toNat

end

end A056273.P4464564066859566320

/-! ## A056273.P11509826641264522786

`2*A056325(n)-A305752(n)`
-/

namespace A056273.P11509826641264522786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056325 n - A305752 n

end

end A056273.P11509826641264522786

/-! ## A056273.P14521953220603321768

`A056471(A000007(n)+n+n)`
-/

namespace A056273.P14521953220603321768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056471 (A000007 n + (n : ℤ) + (n : ℤ)).toNat

end

end A056273.P14521953220603321768

/-! ## A056273.P15811611807889911449

`A056471(lt[Δ[A056455(n+2)], n])`
-/

namespace A056273.P15811611807889911449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056455 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056471 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n)

end

end A056273.P15811611807889911449

/-! ## A056273.P4545301218643722999

`A056471(2*n+1-A057427(n))`
-/

namespace A056273.P4545301218643722999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056471 ((2 * n + 1 : ℤ) - A057427 n).toNat

end

end A056273.P4545301218643722999

/-! ## A056273.P15839528774981637454

`A056471(lt[∑[(-2)^n], A054353(n+1)])`
-/

namespace A056273.P15839528774981637454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056471 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A056273.P15839528774981637454

/-! ## A056273.P11450290226942222542

`A320936(A028310(n))+A056325(n)`
-/

namespace A056273.P11450290226942222542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320936 (A028310 n).toNat + A056325 n

end

end A056273.P11450290226942222542

/-! ## A056273.P8407437432982156401

`A305752(n)+2*A320936(A028310(n))`
-/

namespace A056273.P8407437432982156401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305752 n + 2 * A320936 (A028310 n).toNat

end

end A056273.P8407437432982156401

/-!
# A056274: Number of primitive (aperiodic) word structures of length n using a 3-ary alphabet.

The programs for A056274, the canonical program `A056274.P6989764788007675043` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056274 has offset 1).

The definition of A056274 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056274.P9402929718987131969

`A056279(n+1)+A000740(n+1)`
-/

namespace A056274.P9402929718987131969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056279 (n + 1) + A000740 (n + 1)

end

end A056274.P9402929718987131969

namespace A056274

/-- `A056279(n+1)+A000740(n+1)` -/
def P9402929718987131969.Spec : Prop :=
  ∀ n, P9402929718987131969.a n = A056274 (n + 1)

theorem P9402929718987131969.correct : P9402929718987131969.Spec := by
  intro n
  simp only [A056274, Nat.add_sub_cancel, A056274.P9402929718987131969.a, A056274.P6989764788007675043.a, A000740, A000740.P14835443835842648949.a, A034741, A034741.P4749384178526345619.f1, A034741.P4749384178526345619.a, A056279, A056279.P11750011524147072327.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, A034754, A034754.P850414589168933379.f1, A034754.P850414589168933379.a, A055615, A055615.P8993130195977213181.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A008683, A008683.P18254306604665478110.a, A034753, A034753.P12853043952854742106.f1, A034753.P12853043952854742106.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A359189, A359189.P3487482950995534039.f1, A359189.P3487482950995534039.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A056274

/-! ## A056274.P6546943100183269982

`A056279(n+1)+(n+1)*A001037(n+1)/2`
-/

namespace A056274.P6546943100183269982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056279 (n + 1) : ℚ) + ((n + 1 : ℤ) * A001037 (n + 1) : ℚ) / 2

end

end A056274.P6546943100183269982

namespace A056274

/-- `A056279(n+1)+(n+1)*A001037(n+1)/2` -/
def P6546943100183269982.Spec : Prop :=
  ∀ n, P6546943100183269982.a n = (A056274 (n + 1) : ℚ)

end A056274

/-! ## A056274.P1058509914832786655

`∑{d}[n+1, A007051(#-1)*A008683((n+1)/#)]`
-/

namespace A056274.P1058509914832786655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007051 (d - 1) * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056274.P1058509914832786655

namespace A056274

/-- `∑{d}[n+1, A007051(#-1)*A008683((n+1)/#)]` -/
def P1058509914832786655.Spec : Prop :=
  ∀ n, P1058509914832786655.a n = A056274 (n + 1)

end A056274

/-! ## A056274.P4229302978137637641

`A056278(n+1)+A056279(n+1)+char[A056313(n+1)]`
-/

namespace A056274.P4229302978137637641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056313 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056278 (n + 1) + (A056279 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A056274.P4229302978137637641

namespace A056274

/-- `A056278(n+1)+A056279(n+1)+char[A056313(n+1)]` -/
def P4229302978137637641.Spec : Prop :=
  ∀ n, P4229302978137637641.a n = A056274 (n + 1)

end A056274

/-! ## A056274.P6989764788007675043

`ceil(A034741(n+1)/2)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A056274

/-- `ceil(A034741(n+1)/2)` -/
def P6989764788007675043.Spec : Prop :=
  ∀ n, P6989764788007675043.a n = A056274 (n + 1)

theorem P6989764788007675043.correct : P6989764788007675043.Spec := by
  intro n
  simp only [A056274, Nat.add_sub_cancel]

end A056274

/-! ## A056274.P5864011428742456850

`A034741(round(sqrt(n²+1))+1)/2`
-/

namespace A056274.P5864011428742456850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034741 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat : ℚ) / 2

end

end A056274.P5864011428742456850

namespace A056274

/-- `A034741(round(sqrt(n²+1))+1)/2` -/
def P5864011428742456850.Spec : Prop :=
  ∀ n, P5864011428742456850.a n = (A056274 (n + 1) : ℚ)

end A056274

/-! ## A056274.P13406556881621715224

`floor(A034741(A028310(n)+1)/2)`
-/

namespace A056274.P13406556881621715224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A034741 (A028310 n + 1).toNat : ℚ) / 2⌋

end

end A056274.P13406556881621715224

namespace A056274

/-- `floor(A034741(A028310(n)+1)/2)` -/
def P13406556881621715224.Spec : Prop :=
  ∀ n, P13406556881621715224.a n = A056274 (n + 1)

end A056274

/-! ## A056274.P348755964117059854

`(A034741(n+1)+A000007(n))/2`
-/

namespace A056274.P348755964117059854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034741 (n + 1) + A000007 n : ℚ) / 2

end

end A056274.P348755964117059854

namespace A056274

/-- `(A034741(n+1)+A000007(n))/2` -/
def P348755964117059854.Spec : Prop :=
  ∀ n, P348755964117059854.a n = (A056274 (n + 1) : ℚ)

end A056274

/-! ## A056274.P1173545026206229668

`1/A036453(n+1)*A034741(n+1)`
-/

namespace A056274.P1173545026206229668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A036453 (n + 1) : ℚ) * (A034741 (n + 1) : ℚ)

end

end A056274.P1173545026206229668

namespace A056274

/-- `1/A036453(n+1)*A034741(n+1)` -/
def P1173545026206229668.Spec : Prop :=
  ∀ n, P1173545026206229668.a n = (A056274 (n + 1) : ℚ)

end A056274

/-! ## A056274.P2363579139724961218

`ceil(A054718(n+1)/6)`
-/

namespace A056274.P2363579139724961218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A054718 (n + 1) : ℚ) / 6⌉

end

end A056274.P2363579139724961218

namespace A056274

/-- `ceil(A054718(n+1)/6)` -/
def P2363579139724961218.Spec : Prop :=
  ∀ n, P2363579139724961218.a n = A056274 (n + 1)

end A056274

/-! ## A056274.P7587257941496341110

`A056275(n+1)-A056280(n+1)`
-/

namespace A056274.P7587257941496341110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056275 (n + 1) - A056280 (n + 1)

end

end A056274.P7587257941496341110

namespace A056274

/-- `A056275(n+1)-A056280(n+1)` -/
def P7587257941496341110.Spec : Prop :=
  ∀ n, P7587257941496341110.a n = A056274 (n + 1)

theorem P7587257941496341110.correct : P7587257941496341110.Spec := by
  intro n
  simp only [A056274, Nat.add_sub_cancel, A056274.P7587257941496341110.a, A056274.P6989764788007675043.a, A034741, A034741.P4749384178526345619.f1, A034741.P4749384178526345619.a, A056275, A056275.P6054715868794929524.f1, A056275.P6054715868794929524.a, A056280, A056280.P10499943578114336456.a, A007581, A007581.P15232168184730947590.a, A008683, A008683.P18254306604665478110.a, A034754, A034754.P850414589168933379.f1, A034754.P850414589168933379.a, A055615, A055615.P8993130195977213181.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A034753, A034753.P12853043952854742106.f1, A034753.P12853043952854742106.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A359189, A359189.P3487482950995534039.f1, A359189.P3487482950995534039.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A056274

/-! ## A056274.P11995309495226615082

`A056276(n+1)-(A056281(n+1)+A056280(n+1))`
-/

namespace A056274.P11995309495226615082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056276 (n + 1) - (A056281 (n + 1) + A056280 (n + 1))

end

end A056274.P11995309495226615082

namespace A056274

/-- `A056276(n+1)-(A056281(n+1)+A056280(n+1))` -/
def P11995309495226615082.Spec : Prop :=
  ∀ n, P11995309495226615082.a n = A056274 (n + 1)

end A056274

/-!
# A056275: Number of primitive (aperiodic) word structures of length n using a 4-ary alphabet.

The programs for A056275, the canonical program `A056275.P6054715868794929524` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056275 has offset 1).

The definition of A056275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056275.P18279611898864656469

`A056280(n+1)+A056274(n+1)`
-/

namespace A056275.P18279611898864656469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056280 (n + 1) + A056274 (n + 1)

end

end A056275.P18279611898864656469

namespace A056275

/-- `A056280(n+1)+A056274(n+1)` -/
def P18279611898864656469.Spec : Prop :=
  ∀ n, P18279611898864656469.a n = A056275 (n + 1)

theorem P18279611898864656469.correct : P18279611898864656469.Spec := by
  intro n
  simp only [A056275, Nat.add_sub_cancel, A056275.P18279611898864656469.a, A056275.P6054715868794929524.f1, A056275.P6054715868794929524.a, A007581, A007581.P15232168184730947590.a, A008683, A008683.P18254306604665478110.a, A056274, A056274.P6989764788007675043.a, A056280, A056280.P10499943578114336456.a, A034741, A034741.P4749384178526345619.f1, A034741.P4749384178526345619.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A034754, A034754.P850414589168933379.f1, A034754.P850414589168933379.a, A055615, A055615.P8993130195977213181.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A005940, A005940.P5942875842694471387.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A008966, A008966.P884693903657889754.a, A010060, A010060.P3080921269106500717.a, A034753, A034753.P12853043952854742106.f1, A034753.P12853043952854742106.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A056275

/-! ## A056275.P6054715868794929524

`∑{d}[n+1, A007581(#-1)*A008683((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A056275

/-- `∑{d}[n+1, A007581(#-1)*A008683((n+1)/#)]` -/
def P6054715868794929524.Spec : Prop :=
  ∀ n, P6054715868794929524.a n = A056275 (n + 1)

theorem P6054715868794929524.correct : P6054715868794929524.Spec := by
  intro n
  simp only [A056275, Nat.add_sub_cancel]

end A056275

/-! ## A056275.P18315303776462614585

`A000740(n+1)+A056280(n+1)+A056279(n+1)`
-/

namespace A056275.P18315303776462614585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000740 (n + 1) + (A056280 (n + 1) + A056279 (n + 1))

end

end A056275.P18315303776462614585

namespace A056275

/-- `A000740(n+1)+A056280(n+1)+A056279(n+1)` -/
def P18315303776462614585.Spec : Prop :=
  ∀ n, P18315303776462614585.a n = A056275 (n + 1)

theorem P18315303776462614585.correct : P18315303776462614585.Spec := by
  intro n
  simp only [A056275, Nat.add_sub_cancel, A056275.P18315303776462614585.a, A056275.P6054715868794929524.f1, A056275.P6054715868794929524.a, A000740, A000740.P14835443835842648949.a, A007581, A007581.P15232168184730947590.a, A008683, A008683.P18254306604665478110.a, A056279, A056279.P11750011524147072327.a, A056280, A056280.P10499943578114336456.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, A056274, A056274.P6989764788007675043.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A034741, A034741.P4749384178526345619.f1, A034741.P4749384178526345619.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A005940, A005940.P5942875842694471387.a, A008966, A008966.P884693903657889754.a, A010060, A010060.P3080921269106500717.a, A034754, A034754.P850414589168933379.f1, A034754.P850414589168933379.a, A055615, A055615.P8993130195977213181.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A056275

/-! ## A056275.P13160786344556820432

`A056276(n+1)-A056281(n+1)`
-/

namespace A056275.P13160786344556820432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056276 (n + 1) - A056281 (n + 1)

end

end A056275.P13160786344556820432

namespace A056275

/-- `A056276(n+1)-A056281(n+1)` -/
def P13160786344556820432.Spec : Prop :=
  ∀ n, P13160786344556820432.a n = A056275 (n + 1)

end A056275

/-!
# A056276: Number of primitive (aperiodic) word structures of length n using a 5-ary alphabet.

The programs for A056276, there is no canonical definition to state claims against.
-/

/-! ## A056276.P4032888389646602482

`A056281(n+1)+A056275(n+1)`
-/

namespace A056276.P4032888389646602482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056281 (n + 1) + A056275 (n + 1)

end

end A056276.P4032888389646602482

/-! ## A056276.P2470480448925570529

`A056274(n+1)+A056281(n+1)+A056280(n+1)`
-/

namespace A056276.P2470480448925570529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056274 (n + 1) + (A056281 (n + 1) + A056280 (n + 1))

end

end A056276.P2470480448925570529

/-! ## A056276.P13669239196828123063

`A056281(n+1)+A000740(n+1)+A056280(n+1)+A056279(n+1)`
-/

namespace A056276.P13669239196828123063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056281 (n + 1) + (A000740 (n + 1) + (A056280 (n + 1) + A056279 (n + 1)))

end

end A056276.P13669239196828123063

/-! ## A056276.P17664600505751370232

`A056277(n+1)-A056282(n+1)`
-/

namespace A056276.P17664600505751370232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056277 (n + 1) - A056282 (n + 1)

end

end A056276.P17664600505751370232

/-!
# A056277: Number of primitive (aperiodic) word structures of length n using a 6-ary alphabet.

The programs for A056277, there is no canonical definition to state claims against.
-/

/-! ## A056277.P16353771653124009835

`A056282(n+1)+A056276(n+1)`
-/

namespace A056277.P16353771653124009835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056282 (n + 1) + A056276 (n + 1)

end

end A056277.P16353771653124009835

/-! ## A056277.P5521070111665653387

`A056275(n+1)+A056282(n+1)+A056281(n+1)`
-/

namespace A056277.P5521070111665653387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056275 (n + 1) + (A056282 (n + 1) + A056281 (n + 1))

end

end A056277.P5521070111665653387

/-! ## A056277.P11551721462699375152

`A137651(A184218(n+1)+7)+A056276(n+1)`
-/

namespace A056277.P11551721462699375152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137651 (A184218 (n + 1) + 7).toNat + A056276 (n + 1)

end

end A056277.P11551721462699375152

/-! ## A056277.P9354325593795215483

`A137651(A077169(n)+1+n)+A056276(n+1)`
-/

namespace A056277.P9354325593795215483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137651 (A077169 n + 1 + (n : ℤ)).toNat + A056276 (n + 1)

end

end A056277.P9354325593795215483

/-!
# A056278: Number of primitive (aperiodic) word structures of length n which contain exactly two different symbols.

The programs for A056278, the canonical program `A056278.P6109967652677741343` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056278 has offset 1).

The definition of A056278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056278.P6109967652677741343

`A000740(n+1)%(2^n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A056278

/-- `A000740(n+1)%(2^n)` -/
def P6109967652677741343.Spec : Prop :=
  ∀ n, P6109967652677741343.a n = A056278 (n + 1)

theorem P6109967652677741343.correct : P6109967652677741343.Spec := by
  intro n
  simp only [A056278, Nat.add_sub_cancel]

end A056278

/-! ## A056278.P8532851510925024070

`A000740(n+1)-A000007(n)`
-/

namespace A056278.P8532851510925024070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000740 (n + 1) - A000007 n

end

end A056278.P8532851510925024070

namespace A056278

/-- `A000740(n+1)-A000007(n)` -/
def P8532851510925024070.Spec : Prop :=
  ∀ n, P8532851510925024070.a n = A056278 (n + 1)

end A056278

/-! ## A056278.P840808456271322129

`A155559(n)-A178472(n+1)`
-/

namespace A056278.P840808456271322129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n - A178472 (n + 1)

end

end A056278.P840808456271322129

namespace A056278

/-- `A155559(n)-A178472(n+1)` -/
def P840808456271322129.Spec : Prop :=
  ∀ n, P840808456271322129.a n = A056278 (n + 1)

end A056278

/-! ## A056278.P17808064646031185182

`A000740(n+1)*A057427(n)`
-/

namespace A056278.P17808064646031185182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000740 (n + 1) * A057427 n

end

end A056278.P17808064646031185182

namespace A056278

/-- `A000740(n+1)*A057427(n)` -/
def P17808064646031185182.Spec : Prop :=
  ∀ n, P17808064646031185182.a n = A056278 (n + 1)

end A056278

/-! ## A056278.P11175401365855912374

`and(A000225(n), A000740(n+1))`
-/

namespace A056278.P11175401365855912374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A000740 (n + 1))

end

end A056278.P11175401365855912374

namespace A056278

/-- `and(A000225(n), A000740(n+1))` -/
def P11175401365855912374.Spec : Prop :=
  ∀ n, P11175401365855912374.a n = A056278 (n + 1)

end A056278

/-! ## A056278.P5698757352825966987

`and(A000740(n+1), A057428(n))`
-/

namespace A056278.P5698757352825966987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000740 (n + 1)) (A057428 n)

end

end A056278.P5698757352825966987

namespace A056278

/-- `and(A000740(n+1), A057428(n))` -/
def P5698757352825966987.Spec : Prop :=
  ∀ n, P5698757352825966987.a n = A056278 (n + 1)

end A056278

/-! ## A056278.P7520045306904717145

`and(A000740(n+1), A134824(n))`
-/

namespace A056278.P7520045306904717145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000740 (n + 1)) (A134824 n)

end

end A056278.P7520045306904717145

namespace A056278

/-- `and(A000740(n+1), A134824(n))` -/
def P7520045306904717145.Spec : Prop :=
  ∀ n, P7520045306904717145.a n = A056278 (n + 1)

end A056278

/-! ## A056278.P7806488743169594973

`A000740(n+1)-A063524(n+1)`
-/

namespace A056278.P7806488743169594973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000740 (n + 1) - A063524 (n + 1)

end

end A056278.P7806488743169594973

namespace A056278

/-- `A000740(n+1)-A063524(n+1)` -/
def P7806488743169594973.Spec : Prop :=
  ∀ n, P7806488743169594973.a n = A056278 (n + 1)

end A056278

/-! ## A056278.P13364283861600049150

`A000740(n+1)-char[A056313(n+1)]`
-/

namespace A056278.P13364283861600049150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056313 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000740 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A056278.P13364283861600049150

namespace A056278

/-- `A000740(n+1)-char[A056313(n+1)]` -/
def P13364283861600049150.Spec : Prop :=
  ∀ n, P13364283861600049150.a n = A056278 (n + 1)

end A056278

/-! ## A056278.P13327028782657210367

`A000740(n+1)+A036453(n+1)-2`
-/

namespace A056278.P13327028782657210367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000740 (n + 1) + (A036453 (n + 1) - 2)

end

end A056278.P13327028782657210367

namespace A056278

/-- `A000740(n+1)+A036453(n+1)-2` -/
def P13327028782657210367.Spec : Prop :=
  ∀ n, P13327028782657210367.a n = A056278 (n + 1)

end A056278

/-! ## A056278.P13275928231359342180

`A000740(n+1)+A157532(n+1)-3`
-/

namespace A056278.P13275928231359342180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000740 (n + 1) + (A157532 (n + 1) - 3)

end

end A056278.P13275928231359342180

namespace A056278

/-- `A000740(n+1)+A157532(n+1)-3` -/
def P13275928231359342180.Spec : Prop :=
  ∀ n, P13275928231359342180.a n = A056278 (n + 1)

end A056278

/-! ## A056278.P12803697581258369302

`A000740(n+1)-A280910(2*n+1)`
-/

namespace A056278.P12803697581258369302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000740 (n + 1) - A280910 (2 * n + 1)

end

end A056278.P12803697581258369302

namespace A056278

/-- `A000740(n+1)-A280910(2*n+1)` -/
def P12803697581258369302.Spec : Prop :=
  ∀ n, P12803697581258369302.a n = A056278 (n + 1)

end A056278

/-! ## A056278.P18088730548137828955

`A059966(n+1)/2*A087156(n+1)`
-/

namespace A056278.P18088730548137828955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059966 (n + 1) : ℚ) / 2 * (A087156 (n + 1) : ℚ)

end

end A056278.P18088730548137828955

namespace A056278

/-- `A059966(n+1)/2*A087156(n+1)` -/
def P18088730548137828955.Spec : Prop :=
  ∀ n, P18088730548137828955.a n = (A056278 (n + 1) : ℚ)

end A056278

/-! ## A056278.P18301435745628007339

`A060477(n+1)/2*A087156(n+1)`
-/

namespace A056278.P18301435745628007339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060477 (n + 1) : ℚ) / 2 * (A087156 (n + 1) : ℚ)

end

end A056278.P18301435745628007339

namespace A056278

/-- `A060477(n+1)/2*A087156(n+1)` -/
def P18301435745628007339.Spec : Prop :=
  ∀ n, P18301435745628007339.a n = (A056278 (n + 1) : ℚ)

end A056278

/-! ## A056278.P13272527905772051911

`∑{d}[n+1, A000225(#-1)*A008683((n+1)/#)]`
-/

namespace A056278.P13272527905772051911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000225 (d - 1) * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056278.P13272527905772051911

namespace A056278

/-- `∑{d}[n+1, A000225(#-1)*A008683((n+1)/#)]` -/
def P13272527905772051911.Spec : Prop :=
  ∀ n, P13272527905772051911.a n = A056278 (n + 1)

end A056278

/-! ## A056278.P12277328452752174972

`A001221(A000961(n+1))*A000740(n+1)`
-/

namespace A056278.P12277328452752174972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000961 (n + 1)).toNat * A000740 (n + 1)

end

end A056278.P12277328452752174972

namespace A056278

/-- `A001221(A000961(n+1))*A000740(n+1)` -/
def P12277328452752174972.Spec : Prop :=
  ∀ n, P12277328452752174972.a n = A056278 (n + 1)

end A056278

/-! ## A056278.P18440291894175905041

`A000740(n+1)*A052409(A052410(n+1))`
-/

namespace A056278.P18440291894175905041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000740 (n + 1) * A052409 (A052410 (n + 1)).toNat

end

end A056278.P18440291894175905041

namespace A056278

/-- `A000740(n+1)*A052409(A052410(n+1))` -/
def P18440291894175905041.Spec : Prop :=
  ∀ n, P18440291894175905041.a n = A056278 (n + 1)

end A056278

/-! ## A056278.P6576116727303947403

`A027375(n)+A152061(n)-A178472(n+1)`
-/

namespace A056278.P6576116727303947403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027375 n + (A152061 n - A178472 (n + 1))

end

end A056278.P6576116727303947403

namespace A056278

/-- `A027375(n)+A152061(n)-A178472(n+1)` -/
def P6576116727303947403.Spec : Prop :=
  ∀ n, P6576116727303947403.a n = A056278 (n + 1)

end A056278

/-! ## A056278.P1352637749261572232

`A000740(n+1)+A000007(n)*A008683(n+2)`
-/

namespace A056278.P1352637749261572232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000740 (n + 1) + A000007 n * A008683 (n + 2)

end

end A056278.P1352637749261572232

namespace A056278

/-- `A000740(n+1)+A000007(n)*A008683(n+2)` -/
def P1352637749261572232.Spec : Prop :=
  ∀ n, P1352637749261572232.a n = A056278 (n + 1)

end A056278

/-!
# A056279: Number of primitive (aperiodic) word structures of length n which contain exactly three different symbols.

The programs for A056279, the canonical program `A056279.P11750011524147072327` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056279 has offset 1).

The definition of A056279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056279.P15661375061913639991

`(n+1)/6*A056288(n+1)`
-/

namespace A056279.P15661375061913639991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 6 * (A056288 (n + 1) : ℚ)

end

end A056279.P15661375061913639991

namespace A056279

/-- `(n+1)/6*A056288(n+1)` -/
def P15661375061913639991.Spec : Prop :=
  ∀ n, P15661375061913639991.a n = (A056279 (n + 1) : ℚ)

end A056279

/-! ## A056279.P11750011524147072327

`A056274(n+1)-A000740(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A056279

/-- `A056274(n+1)-A000740(n+1)` -/
def P11750011524147072327.Spec : Prop :=
  ∀ n, P11750011524147072327.a n = A056279 (n + 1)

theorem P11750011524147072327.correct : P11750011524147072327.Spec := by
  intro n
  simp only [A056279, Nat.add_sub_cancel]

end A056279

/-! ## A056279.P13030089389628957242

`A056268(n+1)/6`
-/

namespace A056279.P13030089389628957242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056268 (n + 1) : ℚ) / 6

end

end A056279.P13030089389628957242

namespace A056279

/-- `A056268(n+1)/6` -/
def P13030089389628957242.Spec : Prop :=
  ∀ n, P13030089389628957242.a n = (A056279 (n + 1) : ℚ)

theorem P13030089389628957242.correct : P13030089389628957242.Spec := by
  intro n
  simp only [A056279, Nat.add_sub_cancel, A056279.P13030089389628957242.a, A056279.P11750011524147072327.a, A000740, A000740.P14835443835842648949.a, A056268, A056268.P10353224445978175421.a, A056274, A056274.P6989764788007675043.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, A034741, A034741.P4749384178526345619.f1, A034741.P4749384178526345619.a, A008683, A008683.P18254306604665478110.a, A034754, A034754.P850414589168933379.f1, A034754.P850414589168933379.a, A055615, A055615.P8993130195977213181.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A034753, A034753.P12853043952854742106.f1, A034753.P12853043952854742106.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A056279

/-! ## A056279.P16449736823068694125

`A137651(A133263(n)+1)`
-/

namespace A056279.P16449736823068694125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137651 (A133263 n + 1).toNat

end

end A056279.P16449736823068694125

namespace A056279

/-- `A137651(A133263(n)+1)` -/
def P16449736823068694125.Spec : Prop :=
  ∀ n, P16449736823068694125.a n = A056279 (n + 1)

end A056279

/-! ## A056279.P11163140707258464185

`A137651(∑[A233583(n+1)])`
-/

namespace A056279.P11163140707258464185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137651 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A056279.P11163140707258464185

namespace A056279

/-- `A137651(∑[A233583(n+1)])` -/
def P11163140707258464185.Spec : Prop :=
  ∀ n, P11163140707258464185.a n = A056279 (n + 1)

end A056279

/-! ## A056279.P2775845970591358323

`A137651(∑[A254667(n)]+2)`
-/

namespace A056279.P2775845970591358323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137651 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A056279.P2775845970591358323

namespace A056279

/-- `A137651(∑[A254667(n)]+2)` -/
def P2775845970591358323.Spec : Prop :=
  ∀ n, P2775845970591358323.a n = A056279 (n + 1)

end A056279

/-! ## A056279.P6411769933692953665

`A137651(A238531(n+1)+1)`
-/

namespace A056279.P6411769933692953665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137651 (A238531 (n + 1) + 1).toNat

end

end A056279.P6411769933692953665

namespace A056279

/-- `A137651(A238531(n+1)+1)` -/
def P6411769933692953665.Spec : Prop :=
  ∀ n, P6411769933692953665.a n = A056279 (n + 1)

end A056279

/-!
# A056280: Number of primitive (aperiodic) word structures of length n which contain exactly four different symbols.

The programs for A056280, the canonical program `A056280.P10499943578114336456` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056280 has offset 1).

The definition of A056280 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056280.P16435736075426078760

`(n+1)/24*A056289(n+1)`
-/

namespace A056280.P16435736075426078760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 24 * (A056289 (n + 1) : ℚ)

end

end A056280.P16435736075426078760

namespace A056280

/-- `(n+1)/24*A056289(n+1)` -/
def P16435736075426078760.Spec : Prop :=
  ∀ n, P16435736075426078760.a n = (A056280 (n + 1) : ℚ)

end A056280

/-! ## A056280.P10499943578114336456

`A056275(n+1)-A056274(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A056280

/-- `A056275(n+1)-A056274(n+1)` -/
def P10499943578114336456.Spec : Prop :=
  ∀ n, P10499943578114336456.a n = A056280 (n + 1)

theorem P10499943578114336456.correct : P10499943578114336456.Spec := by
  intro n
  simp only [A056280, Nat.add_sub_cancel]

end A056280

/-! ## A056280.P5278950950703119553

`A056269(n+1)/24`
-/

namespace A056280.P5278950950703119553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056269 (n + 1) : ℚ) / 24

end

end A056280.P5278950950703119553

namespace A056280

/-- `A056269(n+1)/24` -/
def P5278950950703119553.Spec : Prop :=
  ∀ n, P5278950950703119553.a n = (A056280 (n + 1) : ℚ)

end A056280

/-! ## A056280.P5542955115588129268

`A056276(n+1)-(A056281(n+1)+A056274(n+1))`
-/

namespace A056280.P5542955115588129268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056276 (n + 1) - (A056281 (n + 1) + A056274 (n + 1))

end

end A056280.P5542955115588129268

namespace A056280

/-- `A056276(n+1)-(A056281(n+1)+A056274(n+1))` -/
def P5542955115588129268.Spec : Prop :=
  ∀ n, P5542955115588129268.a n = A056280 (n + 1)

end A056280

/-! ## A056280.P5488670002521712101

`A137651(A060576(n)+∑[n]+3)`
-/

namespace A056280.P5488670002521712101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137651 (A060576 n + ((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℤ)).toNat

end

end A056280.P5488670002521712101

namespace A056280

/-- `A137651(A060576(n)+∑[n]+3)` -/
def P5488670002521712101.Spec : Prop :=
  ∀ n, P5488670002521712101.a n = A056280 (n + 1)

end A056280

/-! ## A056280.P3310573115111401036

`A137651(A145018(n+1))%A056334(n+1)`
-/

namespace A056280.P3310573115111401036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137651 (A145018 (n + 1)).toNat) (A056334 (n + 1))

end

end A056280.P3310573115111401036

namespace A056280

/-- `A137651(A145018(n+1))%A056334(n+1)` -/
def P3310573115111401036.Spec : Prop :=
  ∀ n, P3310573115111401036.a n = A056280 (n + 1)

end A056280

/-! ## A056280.P8009213419084505542

`A137651(A145018(n+1))%A038559(n)`
-/

namespace A056280.P8009213419084505542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137651 (A145018 (n + 1)).toNat) (A038559 n)

end

end A056280.P8009213419084505542

namespace A056280

/-- `A137651(A145018(n+1))%A038559(n)` -/
def P8009213419084505542.Spec : Prop :=
  ∀ n, P8009213419084505542.a n = A056280 (n + 1)

end A056280

/-!
# A056281: Number of primitive (aperiodic) word structures of length n which contain exactly five different symbols.

The programs for A056281, there is no canonical definition to state claims against.
-/

/-! ## A056281.P10680598442068712750

`A056276(n+1)-A056275(n+1)`
-/

namespace A056281.P10680598442068712750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056276 (n + 1) - A056275 (n + 1)

end

end A056281.P10680598442068712750

/-! ## A056281.P9390889902247985583

`A056276(n+1)-(A056280(n+1)+A056274(n+1))`
-/

namespace A056281.P9390889902247985583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056276 (n + 1) - (A056280 (n + 1) + A056274 (n + 1))

end

end A056281.P9390889902247985583

/-! ## A056281.P1864142503606014848

`A056277(n+1)-(A056282(n+1)+A056275(n+1))`
-/

namespace A056281.P1864142503606014848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056277 (n + 1) - (A056282 (n + 1) + A056275 (n + 1))

end

end A056281.P1864142503606014848

/-! ## A056281.P11085770495075626131

`A137651(A077169(n+1))`
-/

namespace A056281.P11085770495075626131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137651 (A077169 (n + 1)).toNat

end

end A056281.P11085770495075626131

/-!
# A056282: Number of primitive (aperiodic) word structures of length n which contain exactly six different symbols.

The programs for A056282, there is no canonical definition to state claims against.
-/

/-! ## A056282.P14266910895966986699

`A056277(n+1)-A056276(n+1)`
-/

namespace A056282.P14266910895966986699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056277 (n + 1) - A056276 (n + 1)

end

end A056282.P14266910895966986699

/-! ## A056282.P118459451024131713

`A056277(n+1)-(A056281(n+1)+A056275(n+1))`
-/

namespace A056282.P118459451024131713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056277 (n + 1) - (A056281 (n + 1) + A056275 (n + 1))

end

end A056282.P118459451024131713

/-! ## A056282.P7489090107983975980

`A056277(n+1)-(A056274(n+1)+A056281(n+1)+A056280(n+1))`
-/

namespace A056282.P7489090107983975980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056277 (n + 1) - (A056274 (n + 1) + (A056281 (n + 1) + A056280 (n + 1)))

end

end A056282.P7489090107983975980

/-! ## A056282.P12422956211407328200

`A137651(A184218(n+1)+7)`
-/

namespace A056282.P12422956211407328200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137651 (A184218 (n + 1) + 7).toNat

end

end A056282.P12422956211407328200

/-! ## A056282.P16276166936934964897

`A137651(A077169(n)+1+n)`
-/

namespace A056282.P16276166936934964897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137651 (A077169 n + 1 + (n : ℤ)).toNat

end

end A056282.P16276166936934964897

/-!
# A056283: Number of n-bead necklaces with exactly three different colored beads.

The programs for A056283, the canonical program `A056283.P12975955271875151804` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056283 has offset 1).

The definition of A056283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056283.P7871192335333977089

`A001867(n+1)-3*A000031(n+1)+3`
-/

namespace A056283.P7871192335333977089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001867 (n + 1) - 3 * A000031 (n + 1) + 3

end

end A056283.P7871192335333977089

namespace A056283

/-- `A001867(n+1)-3*A000031(n+1)+3` -/
def P7871192335333977089.Spec : Prop :=
  ∀ n, P7871192335333977089.a n = A056283 (n + 1)

end A056283

/-! ## A056283.P12975955271875151804

`∑{d}[n+1, A056288(#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A056283

/-- `∑{d}[n+1, A056288(#)]` -/
def P12975955271875151804.Spec : Prop :=
  ∀ n, P12975955271875151804.a n = A056283 (n + 1)

theorem P12975955271875151804.correct : P12975955271875151804.Spec := by
  intro n
  simp only [A056283, Nat.add_sub_cancel]

end A056283

/-! ## A056283.P3341376562678871659

`A305542(n+1)+A056343(n+1)`
-/

namespace A056283.P3341376562678871659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305542 (n + 1) + A056343 (n + 1)

end

end A056283.P3341376562678871659

namespace A056283

/-- `A305542(n+1)+A056343(n+1)` -/
def P3341376562678871659.Spec : Prop :=
  ∀ n, P3341376562678871659.a n = A056283 (n + 1)

end A056283

/-! ## A056283.P6335703437335069218

`A056489(n+1)+2*A305542(n+1)`
-/

namespace A056283.P6335703437335069218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056489 (n + 1) + 2 * A305542 (n + 1)

end

end A056283.P6335703437335069218

namespace A056283

/-- `A056489(n+1)+2*A305542(n+1)` -/
def P6335703437335069218.Spec : Prop :=
  ∀ n, P6335703437335069218.a n = A056283 (n + 1)

end A056283

/-! ## A056283.P8680180989680587936

`2*A056343(n+1)-A056489(n+1)`
-/

namespace A056283.P8680180989680587936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056343 (n + 1) - A056489 (n + 1)

end

end A056283.P8680180989680587936

namespace A056283

/-- `2*A056343(n+1)-A056489(n+1)` -/
def P8680180989680587936.Spec : Prop :=
  ∀ n, P8680180989680587936.a n = A056283 (n + 1)

end A056283

/-! ## A056283.P7276957606550015877

`A001867(n+1)-3*A008965(n+1)`
-/

namespace A056283.P7276957606550015877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001867 (n + 1) - 3 * A008965 (n + 1)

end

end A056283.P7276957606550015877

namespace A056283

/-- `A001867(n+1)-3*A008965(n+1)` -/
def P7276957606550015877.Spec : Prop :=
  ∀ n, P7276957606550015877.a n = A056283 (n + 1)

end A056283

/-! ## A056283.P10527310816789483131

`A056343(n+1)+∑{d}[n+1, A326660(#)]`
-/

namespace A056283.P10527310816789483131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056343 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A326660 d

end

end A056283.P10527310816789483131

namespace A056283

/-- `A056343(n+1)+∑{d}[n+1, A326660(#)]` -/
def P10527310816789483131.Spec : Prop :=
  ∀ n, P10527310816789483131.a n = A056283 (n + 1)

end A056283

/-! ## A056283.P16836780672534432706

`∑{d}[n+1, A056349(#)]+∑{d}[n+1, A326660(#)]`
-/

namespace A056283.P16836780672534432706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056349 d + ∑ d ∈ Nat.divisors (f2 n), A326660 d

end

end A056283.P16836780672534432706

namespace A056283

/-- `∑{d}[n+1, A056349(#)]+∑{d}[n+1, A326660(#)]` -/
def P16836780672534432706.Spec : Prop :=
  ∀ n, P16836780672534432706.a n = A056283 (n + 1)

end A056283

/-! ## A056283.P14182374401226660518

`A056489(n+1)+2*A305541(A152950(n+1))`
-/

namespace A056283.P14182374401226660518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056489 (n + 1) + 2 * A305541 (A152950 (n + 1)).toNat

end

end A056283.P14182374401226660518

namespace A056283

/-- `A056489(n+1)+2*A305541(A152950(n+1))` -/
def P14182374401226660518.Spec : Prop :=
  ∀ n, P14182374401226660518.a n = A056283 (n + 1)

end A056283

/-!
# A056284: Number of n-bead necklaces with exactly four different colored beads.

The programs for A056284, the canonical program `A056284.P1936811946049310131` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056284 has offset 1).

The definition of A056284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056284.P13456499604627733589

`A001868(n+1)-4*A001867(n+1)+6*A000031(n+1)-4`
-/

namespace A056284.P13456499604627733589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001868 (n + 1) - 4 * A001867 (n + 1) + 6 * A000031 (n + 1) - 4

end

end A056284.P13456499604627733589

namespace A056284

/-- `A001868(n+1)-4*A001867(n+1)+6*A000031(n+1)-4` -/
def P13456499604627733589.Spec : Prop :=
  ∀ n, P13456499604627733589.a n = A056284 (n + 1)

end A056284

/-! ## A056284.P1936811946049310131

`∑{d}[n+1, A056289(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A056284

/-- `∑{d}[n+1, A056289(#)]` -/
def P1936811946049310131.Spec : Prop :=
  ∀ n, P1936811946049310131.a n = A056284 (n + 1)

theorem P1936811946049310131.correct : P1936811946049310131.Spec := by
  intro n
  simp only [A056284, Nat.add_sub_cancel]

end A056284

/-! ## A056284.P265965973606657465

`A305543(n+1)+A056344(n+1)`
-/

namespace A056284.P265965973606657465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305543 (n + 1) + A056344 (n + 1)

end

end A056284.P265965973606657465

namespace A056284

/-- `A305543(n+1)+A056344(n+1)` -/
def P265965973606657465.Spec : Prop :=
  ∀ n, P265965973606657465.a n = A056284 (n + 1)

end A056284

/-! ## A056284.P2329765468761611034

`A056490(n+1)+2*A305543(n+1)`
-/

namespace A056284.P2329765468761611034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056490 (n + 1) + 2 * A305543 (n + 1)

end

end A056284.P2329765468761611034

namespace A056284

/-- `A056490(n+1)+2*A305543(n+1)` -/
def P2329765468761611034.Spec : Prop :=
  ∀ n, P2329765468761611034.a n = A056284 (n + 1)

end A056284

/-! ## A056284.P15143792774381396439

`2*A056344(n+1)-A056490(n+1)`
-/

namespace A056284.P15143792774381396439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056344 (n + 1) - A056490 (n + 1)

end

end A056284.P15143792774381396439

namespace A056284

/-- `2*A056344(n+1)-A056490(n+1)` -/
def P15143792774381396439.Spec : Prop :=
  ∀ n, P15143792774381396439.a n = A056284 (n + 1)

end A056284

/-! ## A056284.P17789779076220878538

`∑{d}[n+1, A056350(#)]+∑{d}[n+1, A326789(#)]`
-/

namespace A056284.P17789779076220878538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056350 d + ∑ d ∈ Nat.divisors (f2 n), A326789 d

end

end A056284.P17789779076220878538

namespace A056284

/-- `∑{d}[n+1, A056350(#)]+∑{d}[n+1, A326789(#)]` -/
def P17789779076220878538.Spec : Prop :=
  ∀ n, P17789779076220878538.a n = A056284 (n + 1)

end A056284

/-!
# A056285: Number of n-bead necklaces with exactly five different colored beads.

The programs for A056285, there is no canonical definition to state claims against.
-/

/-! ## A056285.P3890648378092550475

`A001869(n+1)-5*A001868(n+1)+10*A001867(n+1)-10*A000031(n+1)+5`
-/

namespace A056285.P3890648378092550475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001869 (n + 1) - 5 * A001868 (n + 1) + 10 * A001867 (n + 1) - 10 * A000031 (n + 1) + 5

end

end A056285.P3890648378092550475

/-! ## A056285.P5189115388311217004

`∑{d}[n+1, A056290(#)]`
-/

namespace A056285.P5189115388311217004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056290 d

end

end A056285.P5189115388311217004

/-! ## A056285.P6959052932939980373

`A305544(n+1)+A056345(n+1)`
-/

namespace A056285.P6959052932939980373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305544 (n + 1) + A056345 (n + 1)

end

end A056285.P6959052932939980373

/-! ## A056285.P9324599776393322822

`A056491(n+1)+2*A305544(n+1)`
-/

namespace A056285.P9324599776393322822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056491 (n + 1) + 2 * A305544 (n + 1)

end

end A056285.P9324599776393322822

/-! ## A056285.P13410873357260779588

`2*A056345(n+1)-A056491(n+1)`
-/

namespace A056285.P13410873357260779588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056345 (n + 1) - A056491 (n + 1)

end

end A056285.P13410873357260779588

/-! ## A056285.P9792071790535124414

`A305544(n+1)+A305544(n+1)+∑{d}[n+1, A056501(#)]`
-/

namespace A056285.P9792071790535124414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305544 (n + 1) + (A305544 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A056501 d)

end

end A056285.P9792071790535124414

/-!
# A056286: Number of n-bead necklaces with exactly six different colored beads.

The programs for A056286, there is no canonical definition to state claims against.
-/

/-! ## A056286.P11017821557317431993

`A054625(n+1)-6*A001869(n+1)+15*A001868(n+1)-20*A001867(n+1)+15*A000031(n+1)-6`
-/

namespace A056286.P11017821557317431993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054625 (n + 1) - 6 * A001869 (n + 1) + 15 * A001868 (n + 1) - 20 * A001867 (n + 1) + 15 * A000031 (n + 1) - 6

end

end A056286.P11017821557317431993

/-! ## A056286.P14797513174008618012

`∑{d}[n+1, A056291(#)]`
-/

namespace A056286.P14797513174008618012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056291 d

end

end A056286.P14797513174008618012

/-! ## A056286.P10076927920030756218

`A305545(n+1)+A056346(n+1)`
-/

namespace A056286.P10076927920030756218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305545 (n + 1) + A056346 (n + 1)

end

end A056286.P10076927920030756218

/-! ## A056286.P16900205996090733329

`A056492(n+1)+2*A305545(n+1)`
-/

namespace A056286.P16900205996090733329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056492 (n + 1) + 2 * A305545 (n + 1)

end

end A056286.P16900205996090733329

/-! ## A056286.P17765751123515989905

`2*A056346(n+1)-A056492(n+1)`
-/

namespace A056286.P17765751123515989905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056346 (n + 1) - A056492 (n + 1)

end

end A056286.P17765751123515989905

/-! ## A056286.P7555390654220541553

`A056346(n+1)+A056346(n+1)-∑{d}[n+1, A056502(#)]`
-/

namespace A056286.P7555390654220541553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056346 (n + 1) + (A056346 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A056502 d)

end

end A056286.P7555390654220541553

/-!
# A056288: Number of primitive (period n) n-bead necklaces with exactly three different colored beads.

The programs for A056288, the canonical program `A056288.P10959423349450089845` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056288 has offset 1).

The definition of A056288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056288.P8995841648778393909

`2*A056349(n+1)-A056499(n+1)`
-/

namespace A056288.P8995841648778393909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056349 (n + 1) - A056499 (n + 1)

end

end A056288.P8995841648778393909

namespace A056288

/-- `2*A056349(n+1)-A056499(n+1)` -/
def P8995841648778393909.Spec : Prop :=
  ∀ n, P8995841648778393909.a n = A056288 (n + 1)

end A056288

/-! ## A056288.P16767143580341565925

`∑{d}[n+1, A008683(#)*A056283((n+1)/#)]`
-/

namespace A056288.P16767143580341565925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056283 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056288.P16767143580341565925

namespace A056288

/-- `∑{d}[n+1, A008683(#)*A056283((n+1)/#)]` -/
def P16767143580341565925.Spec : Prop :=
  ∀ n, P16767143580341565925.a n = A056288 (n + 1)

end A056288

/-! ## A056288.P8748847303375886695

`A056349(A000027(n+1))+A056349(n+1)-A056499(n+1)`
-/

namespace A056288.P8748847303375886695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056349 (A000027 (n + 1)).toNat + (A056349 (n + 1) - A056499 (n + 1))

end

end A056288.P8748847303375886695

namespace A056288

/-- `A056349(A000027(n+1))+A056349(n+1)-A056499(n+1)` -/
def P8748847303375886695.Spec : Prop :=
  ∀ n, P8748847303375886695.a n = A056288 (n + 1)

end A056288

/-! ## A056288.P10959423349450089845

`6*A056279(n+1)/(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A056288

/-- `6*A056279(n+1)/(n+1)` -/
def P10959423349450089845.Spec : Prop :=
  ∀ n, P10959423349450089845.a n = (A056288 (n + 1) : ℚ)

end A056288

/-! ## A056288.P15713488130757539845

`A056268(n+1)/(n+1)`
-/

namespace A056288.P15713488130757539845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056268 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A056288.P15713488130757539845

namespace A056288

/-- `A056268(n+1)/(n+1)` -/
def P15713488130757539845.Spec : Prop :=
  ∀ n, P15713488130757539845.a n = (A056288 (n + 1) : ℚ)

end A056288

/-! ## A056288.P15817887422280292533

`A326660(n+1)+A056349(n+1)`
-/

namespace A056288.P15817887422280292533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326660 (n + 1) + A056349 (n + 1)

end

end A056288.P15817887422280292533

namespace A056288

/-- `A326660(n+1)+A056349(n+1)` -/
def P15817887422280292533.Spec : Prop :=
  ∀ n, P15817887422280292533.a n = A056288 (n + 1)

end A056288

/-! ## A056288.P5462063572823715374

`A056499(n+1)+2*A326660(n+1)`
-/

namespace A056288.P5462063572823715374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056499 (n + 1) + 2 * A326660 (n + 1)

end

end A056288.P5462063572823715374

namespace A056288

/-- `A056499(n+1)+2*A326660(n+1)` -/
def P5462063572823715374.Spec : Prop :=
  ∀ n, P5462063572823715374.a n = A056288 (n + 1)

end A056288

/-! ## A056288.P15089725546987055508

`A254040(∑[n+1]+3)`
-/

namespace A056288.P15089725546987055508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254040 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A056288.P15089725546987055508

namespace A056288

/-- `A254040(∑[n+1]+3)` -/
def P15089725546987055508.Spec : Prop :=
  ∀ n, P15089725546987055508.a n = A056288 (n + 1)

end A056288

/-! ## A056288.P10039254102578261243

`A056499(n+1)+2*A309651(A152950(n+1))`
-/

namespace A056288.P10039254102578261243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056499 (n + 1) + 2 * A309651 (A152950 (n + 1)).toNat

end

end A056288.P10039254102578261243

namespace A056288

/-- `A056499(n+1)+2*A309651(A152950(n+1))` -/
def P10039254102578261243.Spec : Prop :=
  ∀ n, P10039254102578261243.a n = A056288 (n + 1)

end A056288

/-!
# A056289: Number of primitive (period n) n-bead necklaces with exactly four different colored beads.

The programs for A056289, the canonical program `A056289.P8446985334841541821` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056289 has offset 1).

The definition of A056289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056289.P9141343188645869100

`A326789(n+1)+A056350(n+1)`
-/

namespace A056289.P9141343188645869100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326789 (n + 1) + A056350 (n + 1)

end

end A056289.P9141343188645869100

namespace A056289

/-- `A326789(n+1)+A056350(n+1)` -/
def P9141343188645869100.Spec : Prop :=
  ∀ n, P9141343188645869100.a n = A056289 (n + 1)

end A056289

/-! ## A056289.P879999639632179932

`A056500(n+1)+2*A326789(n+1)`
-/

namespace A056289.P879999639632179932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056500 (n + 1) + 2 * A326789 (n + 1)

end

end A056289.P879999639632179932

namespace A056289

/-- `A056500(n+1)+2*A326789(n+1)` -/
def P879999639632179932.Spec : Prop :=
  ∀ n, P879999639632179932.a n = A056289 (n + 1)

end A056289

/-! ## A056289.P3209742658499854705

`2*A056350(n+1)-A056500(n+1)`
-/

namespace A056289.P3209742658499854705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056350 (n + 1) - A056500 (n + 1)

end

end A056289.P3209742658499854705

namespace A056289

/-- `2*A056350(n+1)-A056500(n+1)` -/
def P3209742658499854705.Spec : Prop :=
  ∀ n, P3209742658499854705.a n = A056289 (n + 1)

end A056289

/-! ## A056289.P2632735918463688009

`∑{d}[n+1, A008683(#)*A056284((n+1)/#)]`
-/

namespace A056289.P2632735918463688009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056284 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056289.P2632735918463688009

namespace A056289

/-- `∑{d}[n+1, A008683(#)*A056284((n+1)/#)]` -/
def P2632735918463688009.Spec : Prop :=
  ∀ n, P2632735918463688009.a n = A056289 (n + 1)

end A056289

/-! ## A056289.P3011254881642561604

`A056350(A000027(n+1))+A056350(n+1)-A056500(n+1)`
-/

namespace A056289.P3011254881642561604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056350 (A000027 (n + 1)).toNat + (A056350 (n + 1) - A056500 (n + 1))

end

end A056289.P3011254881642561604

namespace A056289

/-- `A056350(A000027(n+1))+A056350(n+1)-A056500(n+1)` -/
def P3011254881642561604.Spec : Prop :=
  ∀ n, P3011254881642561604.a n = A056289 (n + 1)

end A056289

/-! ## A056289.P8446985334841541821

`A056269(n+1)/(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A056289

/-- `A056269(n+1)/(n+1)` -/
def P8446985334841541821.Spec : Prop :=
  ∀ n, P8446985334841541821.a n = (A056289 (n + 1) : ℚ)

end A056289

/-! ## A056289.P7020904097908668485

`A254040(A253145(n)+4)`
-/

namespace A056289.P7020904097908668485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254040 (A253145 n + 4).toNat

end

end A056289.P7020904097908668485

namespace A056289

/-- `A254040(A253145(n)+4)` -/
def P7020904097908668485.Spec : Prop :=
  ∀ n, P7020904097908668485.a n = A056289 (n + 1)

end A056289

/-! ## A056289.P13570964851215539402

`A254040(A167499(n)-A060576(n+1))`
-/

namespace A056289.P13570964851215539402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254040 (A167499 n - A060576 (n + 1)).toNat

end

end A056289.P13570964851215539402

namespace A056289

/-- `A254040(A167499(n)-A060576(n+1))` -/
def P13570964851215539402.Spec : Prop :=
  ∀ n, P13570964851215539402.a n = A056289 (n + 1)

end A056289

/-!
# A056290: Number of primitive (period n) n-bead necklaces with exactly five different colored beads.

The programs for A056290, there is no canonical definition to state claims against.
-/

/-! ## A056290.P4072284445626355939

`∑{d}[n+1, A008683(#)*A056285((n+1)/#)]`
-/

namespace A056290.P4072284445626355939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056285 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056290.P4072284445626355939

/-! ## A056290.P15111723071180955229

`∑{d}[n+1, A056285(#)*A069158((n+1)/#)]`
-/

namespace A056290.P15111723071180955229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056285 d * A069158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056290.P15111723071180955229

/-! ## A056290.P7565964988268476457

`∑{d}[n+1, A056285(#)*A253206((n+1)/#)]`
-/

namespace A056290.P7565964988268476457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056285 d * A253206 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056290.P7565964988268476457

/-! ## A056290.P5622409132383994158

`A056270(n+1)/(n+1)`
-/

namespace A056290.P5622409132383994158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056270 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A056290.P5622409132383994158

/-! ## A056290.P7808241855734442193

`A254040(A077169(n+2))`
-/

namespace A056290.P7808241855734442193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254040 (A077169 (n + 2)).toNat

end

end A056290.P7808241855734442193

/-! ## A056290.P1056492928874747315

`A254040(A347553(n+3)+6)`
-/

namespace A056290.P1056492928874747315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254040 (A347553 (n + 3) + 6).toNat

end

end A056290.P1056492928874747315

/-! ## A056290.P2935065451425924350

`A254040(A167499(n*A060576(n)))`
-/

namespace A056290.P2935065451425924350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254040 (A167499 ((n : ℤ) * A060576 n).toNat).toNat

end

end A056290.P2935065451425924350

/-! ## A056290.P2467022572697749050

`A254040(A060576(n)+A167499(n)-1)`
-/

namespace A056290.P2467022572697749050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254040 (A060576 n + (A167499 n - 1)).toNat

end

end A056290.P2467022572697749050

/-! ## A056290.P1795696621356543540

`A254040(A167614(n+1)-A254667(n))`
-/

namespace A056290.P1795696621356543540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254040 (A167614 (n + 1) - A254667 n).toNat

end

end A056290.P1795696621356543540

/-! ## A056290.P13032025893635136968

`A254040(A060576(n)-(1-A167499(n)))`
-/

namespace A056290.P13032025893635136968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254040 (A060576 n - (1 - A167499 n)).toNat

end

end A056290.P13032025893635136968

/-!
# A056291: Number of primitive (period n) n-bead necklaces with exactly six different colored beads.

The programs for A056291, there is no canonical definition to state claims against.
-/

/-! ## A056291.P13361499179425727026

`∑{d}[n+1, A008683(#)*A056286((n+1)/#)]`
-/

namespace A056291.P13361499179425727026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056286 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056291.P13361499179425727026

/-! ## A056291.P127633960918571854

`∑{d}[n+1, A056286(#)*A069158((n+1)/#)]`
-/

namespace A056291.P127633960918571854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056286 d * A069158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056291.P127633960918571854

/-! ## A056291.P14578159847861765661

`A056271(n+1)/(n+1)`
-/

namespace A056291.P14578159847861765661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056271 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A056291.P14578159847861765661

/-! ## A056291.P9134426771422616692

`∑{d}[n+1, A008683(#)*A000920((n+1)/#)]/(n+1)`
-/

namespace A056291.P9134426771422616692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A008683 d * A000920 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A056291.P9134426771422616692

/-! ## A056291.P14400962372847499464

`A254040(A077169(n)+2*(n+1))`
-/

namespace A056291.P14400962372847499464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254040 (A077169 n + (2 * (n + 1) : ℤ)).toNat

end

end A056291.P14400962372847499464

/-! ## A056291.P216473090055005444

`A254040(A022856(n+1)+A016825(n))`
-/

namespace A056291.P216473090055005444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254040 (A022856 (n + 1) + A016825 n).toNat

end

end A056291.P216473090055005444

/-!
# A056292: Number of n-bead necklace structures using a maximum of four different colored beads.

The programs for A056292, there is no canonical definition to state claims against.
-/

/-! ## A056292.P8826793988202488953

`∑{d}[n+1, A056300(#)]`
-/

namespace A056292.P8826793988202488953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056300 d

end

end A056292.P8826793988202488953

/-! ## A056292.P17964329070623158930

`A056297(n+1)+A002076(n+1)`
-/

namespace A056292.P17964329070623158930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056297 (n + 1) + A002076 (n + 1)

end

end A056292.P17964329070623158930

/-! ## A056292.P1840939132347197473

`A320744(n+1)+A056354(n+1)`
-/

namespace A056292.P1840939132347197473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320744 (n + 1) + A056354 (n + 1)

end

end A056292.P1840939132347197473

/-! ## A056292.P3908524534224629728

`2*A056354(n+1)-A305750(n+1)`
-/

namespace A056292.P3908524534224629728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056354 (n + 1) - A305750 (n + 1)

end

end A056292.P3908524534224629728

/-! ## A056292.P3883078243551194728

`A305750(n+1)+A320744(n+1)+A320744(n+1)`
-/

namespace A056292.P3883078243551194728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305750 (n + 1) + (A320744 (n + 1) + A320744 (n + 1))

end

end A056292.P3883078243551194728

/-! ## A056292.P8167298526387940231

`A056293(n+1)-A056298(n+1)`
-/

namespace A056292.P8167298526387940231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056293 (n + 1) - A056298 (n + 1)

end

end A056292.P8167298526387940231

/-!
# A056293: Number of n-bead necklace structures using a maximum of five different colored beads.

The programs for A056293, there is no canonical definition to state claims against.
-/

/-! ## A056293.P9448243864524825053

`∑{d}[n+1, A056301(#)]`
-/

namespace A056293.P9448243864524825053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056301 d

end

end A056293.P9448243864524825053

/-! ## A056293.P9514345821904071490

`A056298(n+1)+A056292(n+1)`
-/

namespace A056293.P9514345821904071490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056298 (n + 1) + A056292 (n + 1)

end

end A056293.P9514345821904071490

/-! ## A056293.P16195358750989450474

`A320745(n+1)+A056355(n+1)`
-/

namespace A056293.P16195358750989450474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320745 (n + 1) + A056355 (n + 1)

end

end A056293.P16195358750989450474

/-! ## A056293.P6309936517583528127

`2*A056355(n+1)-A305751(n+1)`
-/

namespace A056293.P6309936517583528127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056355 (n + 1) - A305751 (n + 1)

end

end A056293.P6309936517583528127

/-! ## A056293.P3441113082731450556

`A056292(n+1)+A320645(n+1)+A056360(n+1)`
-/

namespace A056293.P3441113082731450556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056292 (n + 1) + (A320645 (n + 1) + A056360 (n + 1))

end

end A056293.P3441113082731450556

/-! ## A056293.P14738443409137963439

`A305751(n+1)+A320745(n+1)+A320745(n+1)`
-/

namespace A056293.P14738443409137963439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305751 (n + 1) + (A320745 (n + 1) + A320745 (n + 1))

end

end A056293.P14738443409137963439

/-! ## A056293.P13237577674220947012

`A056294(n+1)-A056299(n+1)`
-/

namespace A056293.P13237577674220947012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056294 (n + 1) - A056299 (n + 1)

end

end A056293.P13237577674220947012

/-!
# A056294: Number of n-bead necklace structures using a maximum of six different colored beads.

The programs for A056294, there is no canonical definition to state claims against.
-/

/-! ## A056294.P513032361862325236

`∑{d}[n+1, A056302(#)]`
-/

namespace A056294.P513032361862325236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056302 d

end

end A056294.P513032361862325236

/-! ## A056294.P4889038601393440894

`A056299(n+1)+A056293(n+1)`
-/

namespace A056294.P4889038601393440894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056299 (n + 1) + A056293 (n + 1)

end

end A056294.P4889038601393440894

/-! ## A056294.P18006128329422526474

`A320746(n+1)+A056356(n+1)`
-/

namespace A056294.P18006128329422526474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320746 (n + 1) + A056356 (n + 1)

end

end A056294.P18006128329422526474

/-! ## A056294.P4990381096998188521

`2*A056356(n+1)-A305752(n+1)`
-/

namespace A056294.P4990381096998188521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056356 (n + 1) - A305752 (n + 1)

end

end A056294.P4990381096998188521

/-! ## A056294.P8812307059366912951

`A056293(n+1)+A320646(n+1)+A056361(n+1)`
-/

namespace A056294.P8812307059366912951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056293 (n + 1) + (A320646 (n + 1) + A056361 (n + 1))

end

end A056294.P8812307059366912951

/-! ## A056294.P12701652569376779973

`A305752(n+1)+A320746(n+1)+A320746(n+1)`
-/

namespace A056294.P12701652569376779973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305752 (n + 1) + (A320746 (n + 1) + A320746 (n + 1))

end

end A056294.P12701652569376779973

/-!
# A056295: Number of n-bead necklace structures using exactly two different colored beads.

The programs for A056295, the canonical program `A056295.P9438402425658344231` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056295 has offset 1).

The definition of A056295 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056295.P14391827053082577685

`A000013(n+1)-1`
-/

namespace A056295.P14391827053082577685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 (n + 1) - 1

end

end A056295.P14391827053082577685

namespace A056295

/-- `A000013(n+1)-1` -/
def P14391827053082577685.Spec : Prop :=
  ∀ n, P14391827053082577685.a n = A056295 (n + 1)

end A056295

/-! ## A056295.P18300521431383564382

`∑[abs(Δ[A000013(n)])]`
-/

namespace A056295.P18300521431383564382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056295.P18300521431383564382

namespace A056295

/-- `∑[abs(Δ[A000013(n)])]` -/
def P18300521431383564382.Spec : Prop :=
  ∀ n, P18300521431383564382.a n = A056295 (n + 1)

end A056295

/-! ## A056295.P3308715252224754078

`∑{d}[n+1, A056303(#)]`
-/

namespace A056295.P3308715252224754078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056303 d

end

end A056295.P3308715252224754078

namespace A056295

/-- `∑{d}[n+1, A056303(#)]` -/
def P3308715252224754078.Spec : Prop :=
  ∀ n, P3308715252224754078.a n = A056295 (n + 1)

end A056295

/-! ## A056295.P8502971761601715775

`A059053(n+1)+A056357(n+1)`
-/

namespace A056295.P8502971761601715775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059053 (n + 1) + A056357 (n + 1)

end

end A056295.P8502971761601715775

namespace A056295

/-- `A059053(n+1)+A056357(n+1)` -/
def P8502971761601715775.Spec : Prop :=
  ∀ n, P8502971761601715775.a n = A056295 (n + 1)

end A056295

/-! ## A056295.P1867893757351032997

`A000011(n+1)+A059053(n+1)-1`
-/

namespace A056295.P1867893757351032997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (n + 1) + (A059053 (n + 1) - 1)

end

end A056295.P1867893757351032997

namespace A056295

/-- `A000011(n+1)+A059053(n+1)-1` -/
def P1867893757351032997.Spec : Prop :=
  ∀ n, P1867893757351032997.a n = A056295 (n + 1)

end A056295

/-! ## A056295.P3897953152899262607

`A045674(n+1)+A045677(n+1)-1`
-/

namespace A056295.P3897953152899262607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045674 (n + 1) + (A045677 (n + 1) - 1)

end

end A056295.P3897953152899262607

namespace A056295

/-- `A045674(n+1)+A045677(n+1)-1` -/
def P3897953152899262607.Spec : Prop :=
  ∀ n, P3897953152899262607.a n = A056295 (n + 1)

end A056295

/-! ## A056295.P8235788285651319228

`A000048(n+1)+A115118(n+1)-1`
-/

namespace A056295.P8235788285651319228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 (n + 1) + (A115118 (n + 1) - 1)

end

end A056295.P8235788285651319228

namespace A056295

/-- `A000048(n+1)+A115118(n+1)-1` -/
def P8235788285651319228.Spec : Prop :=
  ∀ n, P8235788285651319228.a n = A056295 (n + 1)

end A056295

/-! ## A056295.P9438402425658344231

`A008965(n+1)-A000016(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A056295

/-- `A008965(n+1)-A000016(n+1)` -/
def P9438402425658344231.Spec : Prop :=
  ∀ n, P9438402425658344231.a n = A056295 (n + 1)

theorem P9438402425658344231.correct : P9438402425658344231.Spec := by
  intro n
  simp only [A056295, Nat.add_sub_cancel]

end A056295

/-! ## A056295.P16883194266099896997

`A000031(n+1)-A096010(n+1)`
-/

namespace A056295.P16883194266099896997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (n + 1) - A096010 (n + 1)

end

end A056295.P16883194266099896997

namespace A056295

/-- `A000031(n+1)-A096010(n+1)` -/
def P16883194266099896997.Spec : Prop :=
  ∀ n, P16883194266099896997.a n = A056295 (n + 1)

end A056295

/-! ## A056295.P7940249454613444283

`A000031(n+1)-(A000016(n+1)+1)`
-/

namespace A056295.P7940249454613444283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (n + 1) - (A000016 (n + 1) + 1)

end

end A056295.P7940249454613444283

namespace A056295

/-- `A000031(n+1)-(A000016(n+1)+1)` -/
def P7940249454613444283.Spec : Prop :=
  ∀ n, P7940249454613444283.a n = A056295 (n + 1)

theorem P7940249454613444283.correct : P7940249454613444283.Spec := by
  intro n
  simp only [A056295, Nat.add_sub_cancel, A056295.P7940249454613444283.a, A056295.P9438402425658344231.a, A000016, A000016.P4834367987804555054.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A008965, A008965.P16924218572130557635.a, A000007, A000007.P6599383543502402472.a, A059966, A059966.P16360813507758205577.f1, A059966.P16360813507758205577.a, A096010, A096010.P4903496547079153273.a, A008683, A008683.P18254306604665478110.a, A063776, A063776.P939957080839248717.f1, A063776.P939957080839248717.a, A059841, A059841.P7264174615531153985.a, A064355, A064355.P15803301992756024606.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A056295

/-! ## A056295.P1061918649032240764

`A008965(n+1)+1-A096010(n+1)`
-/

namespace A056295.P1061918649032240764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (n + 1) + (1 - A096010 (n + 1))

end

end A056295.P1061918649032240764

namespace A056295

/-- `A008965(n+1)+1-A096010(n+1)` -/
def P1061918649032240764.Spec : Prop :=
  ∀ n, P1061918649032240764.a n = A056295 (n + 1)

end A056295

/-! ## A056295.P17482830513899016024

`A008965(n+1)-A063776(n+1)/2`
-/

namespace A056295.P17482830513899016024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008965 (n + 1) : ℚ) - (A063776 (n + 1) : ℚ) / 2

end

end A056295.P17482830513899016024

namespace A056295

/-- `A008965(n+1)-A063776(n+1)/2` -/
def P17482830513899016024.Spec : Prop :=
  ∀ n, P17482830513899016024.a n = (A056295 (n + 1) : ℚ)

end A056295

/-! ## A056295.P2923026254266874086

`A306905(n+1)/(n+1)-1`
-/

namespace A056295.P2923026254266874086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306905 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A056295.P2923026254266874086

namespace A056295

/-- `A306905(n+1)/(n+1)-1` -/
def P2923026254266874086.Spec : Prop :=
  ∀ n, P2923026254266874086.a n = (A056295 (n + 1) : ℚ)

end A056295

/-! ## A056295.P16523850112371112291

`A216957(n+2)-(A011782(n+1)+1)`
-/

namespace A056295.P16523850112371112291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216957 (n + 2) - (A011782 (n + 1) + 1)

end

end A056295.P16523850112371112291

namespace A056295

/-- `A216957(n+2)-(A011782(n+1)+1)` -/
def P16523850112371112291.Spec : Prop :=
  ∀ n, P16523850112371112291.a n = A056295 (n + 1)

end A056295

/-! ## A056295.P5406664755503319450

`A000116(n+1)-(A300668(n+1)+1)`
-/

namespace A056295.P5406664755503319450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000116 (n + 1) - (A300668 (n + 1) + 1)

end

end A056295.P5406664755503319450

namespace A056295

/-- `A000116(n+1)-(A300668(n+1)+1)` -/
def P5406664755503319450.Spec : Prop :=
  ∀ n, P5406664755503319450.a n = A056295 (n + 1)

end A056295

/-! ## A056295.P17191566473284383072

`A008965(2*(n+1))-A063776(2*(n+1))`
-/

namespace A056295.P17191566473284383072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (2 * (n + 1)) - A063776 (2 * (n + 1))

end

end A056295.P17191566473284383072

namespace A056295

/-- `A008965(2*(n+1))-A063776(2*(n+1))` -/
def P17191566473284383072.Spec : Prop :=
  ∀ n, P17191566473284383072.a n = A056295 (n + 1)

end A056295

/-!
# A056296: Number of n-bead necklace structures using exactly three different colored beads.

The programs for A056296, there is no canonical definition to state claims against.
-/

/-! ## A056296.P17857368141894310823

`A002076(n+1)-A000013(n+1)`
-/

namespace A056296.P17857368141894310823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002076 (n + 1) - A000013 (n + 1)

end

end A056296.P17857368141894310823

/-! ## A056296.P5241500407473595584

`∑{d}[n+1, A056304(#)]`
-/

namespace A056296.P5241500407473595584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056304 d

end

end A056296.P5241500407473595584

/-! ## A056296.P15384163893378539815

`A320643(n+1)+A056358(n+1)`
-/

namespace A056296.P15384163893378539815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320643 (n + 1) + A056358 (n + 1)

end

end A056296.P15384163893378539815

/-! ## A056296.P2925625263239845833

`A304973(n+1)+A320643(n+1)+A320643(n+1)`
-/

namespace A056296.P2925625263239845833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304973 (n + 1) + (A320643 (n + 1) + A320643 (n + 1))

end

end A056296.P2925625263239845833

/-! ## A056296.P16856601380008706746

`A000016(n+1)+A002076(n+1)-A000031(n+1)`
-/

namespace A056296.P16856601380008706746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 (n + 1) + (A002076 (n + 1) - A000031 (n + 1))

end

end A056296.P16856601380008706746

/-! ## A056296.P15468990258677151198

`A056353(n+1)+A320743(n+1)-A000013(n+1)`
-/

namespace A056296.P15468990258677151198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056353 (n + 1) + (A320743 (n + 1) - A000013 (n + 1))

end

end A056296.P15468990258677151198

/-! ## A056296.P12142794700265841643

`A152175(A152950(n+1))%A000108(n)`
-/

namespace A056296.P12142794700265841643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152175 (A152950 (n + 1)).toNat) (A000108 n)

end

end A056296.P12142794700265841643

/-!
# A056297: Number of n-bead necklace structures using exactly four different colored beads.

The programs for A056297, there is no canonical definition to state claims against.
-/

/-! ## A056297.P8025177781721848081

`A056292(n+1)-A002076(n+1)`
-/

namespace A056297.P8025177781721848081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056292 (n + 1) - A002076 (n + 1)

end

end A056297.P8025177781721848081

/-! ## A056297.P5155738754644894904

`∑{d}[n+1, A056305(#)]`
-/

namespace A056297.P5155738754644894904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056305 d

end

end A056297.P5155738754644894904

/-! ## A056297.P97506596710331866

`A320644(n+1)+A056359(n+1)`
-/

namespace A056297.P97506596710331866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320644 (n + 1) + A056359 (n + 1)

end

end A056297.P97506596710331866

/-! ## A056297.P5286043793107080255

`A304974(n+1)+A320644(n+1)+A320644(n+1)`
-/

namespace A056297.P5286043793107080255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304974 (n + 1) + (A320644 (n + 1) + A320644 (n + 1))

end

end A056297.P5286043793107080255

/-! ## A056297.P7640372896736203134

`A056359(n+1)+A056359(n+1)-A304974(n+1)`
-/

namespace A056297.P7640372896736203134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056359 (n + 1) + (A056359 (n + 1) - A304974 (n + 1))

end

end A056297.P7640372896736203134

/-!
# A056298: Number of n-bead necklace structures using exactly five different colored beads.

The programs for A056298, there is no canonical definition to state claims against.
-/

/-! ## A056298.P17002615259376923653

`A056293(n+1)-A056292(n+1)`
-/

namespace A056298.P17002615259376923653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056293 (n + 1) - A056292 (n + 1)

end

end A056298.P17002615259376923653

/-! ## A056298.P17107156890820497285

`∑{d}[n+1, A056306(#)]`
-/

namespace A056298.P17107156890820497285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056306 d

end

end A056298.P17107156890820497285

/-! ## A056298.P16229739708610399443

`A320645(n+1)+A056360(n+1)`
-/

namespace A056298.P16229739708610399443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320645 (n + 1) + A056360 (n + 1)

end

end A056298.P16229739708610399443

/-! ## A056298.P6251310321780892086

`A320645(n+1)+∑{d}[n+1, A056369(#)]`
-/

namespace A056298.P6251310321780892086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320645 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A056369 d

end

end A056298.P6251310321780892086

/-! ## A056298.P16052292214523762429

`A304975(n+1)+A320645(n+1)+A320645(n+1)`
-/

namespace A056298.P16052292214523762429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304975 (n + 1) + (A320645 (n + 1) + A320645 (n + 1))

end

end A056298.P16052292214523762429

/-! ## A056298.P6170125406837637642

`A056294(n+1)-(A056299(n+1)+A056292(n+1))`
-/

namespace A056298.P6170125406837637642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056294 (n + 1) - (A056299 (n + 1) + A056292 (n + 1))

end

end A056298.P6170125406837637642

/-!
# A056299: Number of n-bead necklace structures using exactly six different colored beads.

The programs for A056299, there is no canonical definition to state claims against.
-/

/-! ## A056299.P5216292452056402295

`A056294(n+1)-A056293(n+1)`
-/

namespace A056299.P5216292452056402295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056294 (n + 1) - A056293 (n + 1)

end

end A056299.P5216292452056402295

/-! ## A056299.P9967210533356770748

`∑{d}[n+1, A056307(#)]`
-/

namespace A056299.P9967210533356770748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056307 d

end

end A056299.P9967210533356770748

/-! ## A056299.P1681260259849348626

`A320646(n+1)+A056361(n+1)`
-/

namespace A056299.P1681260259849348626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320646 (n + 1) + A056361 (n + 1)

end

end A056299.P1681260259849348626

/-! ## A056299.P12337400126555608186

`A304976(n+1)+A320646(n+1)+A320646(n+1)`
-/

namespace A056299.P12337400126555608186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304976 (n + 1) + (A320646 (n + 1) + A320646 (n + 1))

end

end A056299.P12337400126555608186

/-! ## A056299.P14975502898637230721

`A056361(n+1)+A056361(n+1)-A304976(n+1)`
-/

namespace A056299.P14975502898637230721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056361 (n + 1) + (A056361 (n + 1) - A304976 (n + 1))

end

end A056299.P14975502898637230721

/-! ## A056299.P2438146324772031213

`A056356(n+1)+A320646(n+1)-A056355(n+1)`
-/

namespace A056299.P2438146324772031213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056356 (n + 1) + (A320646 (n + 1) - A056355 (n + 1))

end

end A056299.P2438146324772031213

