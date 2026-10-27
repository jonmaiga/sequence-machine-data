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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
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
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A307400: G.f. A(x) satisfies: A(x) = 1 + Sum_{k>=1} k*x^k*A(x)^k/(1 + x^k).

The programs for A307400, there is no canonical definition to state claims against.
-/

/-! ## A307400.P2401718612599972870

`A079631(A179505(n)+A000900(n))`
-/

namespace A307400.P2401718612599972870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079631 (A179505 n + A000900 n).toNat

end

end A307400.P2401718612599972870

/-! ## A307400.P8010309200116561395

`A176638(n+1)-A304326(A270080(n))`
-/

namespace A307400.P8010309200116561395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176638 (n + 1) - A304326 (A270080 n).toNat

end

end A307400.P8010309200116561395

/-! ## A307400.P163346524076151540

`A262128(n)+A262115(A000108(n+3))`
-/

namespace A307400.P163346524076151540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262128 n + A262115 (A000108 (n + 3)).toNat

end

end A307400.P163346524076151540

/-!
# A307401: G.f. A(x) satisfies: A(x) = 1 + Sum_{k>=1} k*x^k*A(x)^k/(1 + x^k*A(x)^k).

The programs for A307401, there is no canonical definition to state claims against.
-/

/-! ## A307401.P9582974460455615311

`A063733(∑[A113153(n+1)-(n+1)]+1)`
-/

namespace A307401.P9582974460455615311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113153 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A307401.P9582974460455615311

/-! ## A307401.P13296822706509692128

`A054404(A150016(n)+A000041(n))`
-/

namespace A307401.P13296822706509692128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A150016 n + A000041 n).toNat

end

end A307401.P13296822706509692128

/-! ## A307401.P16131612629481616661

`A199247(n)+A023975(A006603(n))`
-/

namespace A307401.P16131612629481616661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199247 n + A023975 (A006603 n).toNat

end

end A307401.P16131612629481616661

/-!
# A307402: G.f. A(x) satisfies: A(x) = Sum_{j>=0} j!*x^j*A(x)^j / Product_{k=1..j} (1 - k*x*A(x)).

The programs for A307402, there is no canonical definition to state claims against.
-/

/-! ## A307402.P6951813401366845162

`A063208(A334317(n)-floor(n*gcd(2, n%3)/3))`
-/

namespace A307402.P6951813401366845162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063208 (A334317 n - ⌊(n : ℚ) * ((Nat.gcd 2 (n % 3) : ℚ) / 3)⌋).toNat

end

end A307402.P6951813401366845162

/-! ## A307402.P11659717937955514851

`A193931(n)+A056943(A001147(n))`
-/

namespace A307402.P11659717937955514851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193931 n + A056943 (A001147 n).toNat

end

end A307402.P11659717937955514851

/-!
# A307408: a(n) = (A001222(n) - 1)*A001221(n) + 2.

The programs for A307408, the canonical program `A307408.P14900321585277075839` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307408 has offset 1).

The definition of A307408 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(A001222(n+1)-1)*A001221(n+1)+2` (program `A307408.P14900321585277075839`, by `A307408.P14900321585277075839.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A307408.P7538333109790097456

`A307409(n+1)+2`
-/

namespace A307408.P7538333109790097456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307409 (n + 1) + 2

end

end A307408.P7538333109790097456

namespace A307408

/-- `A307409(n+1)+2` -/
def P7538333109790097456.Spec : Prop :=
  ∀ n, P7538333109790097456.a n = A307408 (n + 1)

end A307408

/-! ## A307408.P14714581353291787888

`2+(A001222(n+1)-1)*A001221(n+1)`
-/

namespace A307408.P14714581353291787888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + (A001222 (n + 1) - 1) * A001221 (n + 1)

end

end A307408.P14714581353291787888

namespace A307408

/-- `2+(A001222(n+1)-1)*A001221(n+1)` -/
def P14714581353291787888.Spec : Prop :=
  ∀ n, P14714581353291787888.a n = A307408 (n + 1)

theorem P14714581353291787888.correct : P14714581353291787888.Spec := by
  intro n
  simp only [A307408, Nat.add_sub_cancel, A307408.P14714581353291787888.a, A307408.P14900321585277075839.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A307408

/-! ## A307408.P14900321585277075839

`(A001222(n+1)-1)*A001221(n+1)+2`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A307408

/-- `(A001222(n+1)-1)*A001221(n+1)+2` -/
def P14900321585277075839.Spec : Prop :=
  ∀ n, P14900321585277075839.a n = A307408 (n + 1)

theorem P14900321585277075839.correct : P14900321585277075839.Spec := by
  intro n
  simp only [A307408, Nat.add_sub_cancel]

end A307408

/-! ## A307408.P12762620670483189588

`∑{p}[n+1, A001222((n+1)/#)]+2`
-/

namespace A307408.P12762620670483189588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat + 2

end

end A307408.P12762620670483189588

namespace A307408

/-- `∑{p}[n+1, A001222((n+1)/#)]+2` -/
def P12762620670483189588.Spec : Prop :=
  ∀ n, P12762620670483189588.a n = A307408 (n + 1)

end A307408

/-! ## A307408.P7651623899329177920

`Δ[A006218(n)]-A328959(n+1)`
-/

namespace A307408.P7651623899329177920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A328959 (n + 1)

end

end A307408.P7651623899329177920

namespace A307408

/-- `Δ[A006218(n)]-A328959(n+1)` -/
def P7651623899329177920.Spec : Prop :=
  ∀ n, P7651623899329177920.a n = A307408 (n + 1)

end A307408

/-! ## A307408.P8542722992218881040

`A000005(n+1)-A328959(n+1)`
-/

namespace A307408.P8542722992218881040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A328959 (n + 1)

end

end A307408.P8542722992218881040

namespace A307408

/-- `A000005(n+1)-A328959(n+1)` -/
def P8542722992218881040.Spec : Prop :=
  ∀ n, P8542722992218881040.a n = A307408 (n + 1)

theorem P8542722992218881040.correct : P8542722992218881040.Spec := by
  intro n
  simp only [A307408, Nat.add_sub_cancel, A307408.P8542722992218881040.a, A307408.P14900321585277075839.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A328959, A328959.P14672643124768497102.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A307408

/-! ## A307408.P17126744471824633333

`A113901(n+1)+2-A001221(n+1)`
-/

namespace A307408.P17126744471824633333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113901 (n + 1) + (2 - A001221 (n + 1))

end

end A307408.P17126744471824633333

namespace A307408

/-- `A113901(n+1)+2-A001221(n+1)` -/
def P17126744471824633333.Spec : Prop :=
  ∀ n, P17126744471824633333.a n = A307408 (n + 1)

theorem P17126744471824633333.correct : P17126744471824633333.Spec := by
  intro n
  simp only [A307408, Nat.add_sub_cancel, A307408.P17126744471824633333.a, A307408.P14900321585277075839.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A113901, A113901.P4362226141671724758.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A307408

/-! ## A307408.P1306404033134918466

`A033273(n+1)+2-A328958(n+1)`
-/

namespace A307408.P1306404033134918466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1) + (2 - A328958 (n + 1))

end

end A307408.P1306404033134918466

namespace A307408

/-- `A033273(n+1)+2-A328958(n+1)` -/
def P1306404033134918466.Spec : Prop :=
  ∀ n, P1306404033134918466.a n = A307408 (n + 1)

theorem P1306404033134918466.correct : P1306404033134918466.Spec := by
  intro n
  simp only [A307408, Nat.add_sub_cancel, A307408.P1306404033134918466.a, A307408.P14900321585277075839.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A033273, A033273.P18420659424697249895.a, A328958, A328958.P3249382024381690087.a, A000005, A000005.P16091521709108585461.a, A113901, A113901.P4362226141671724758.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A307408

/-! ## A307408.P11599275357566214583

`A001221(n+1)*A252736(n+1)+2`
-/

namespace A307408.P11599275357566214583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A252736 (n + 1) + 2

end

end A307408.P11599275357566214583

namespace A307408

/-- `A001221(n+1)*A252736(n+1)+2` -/
def P11599275357566214583.Spec : Prop :=
  ∀ n, P11599275357566214583.a n = A307408 (n + 1)

end A307408

/-! ## A307408.P17382841384026732608

`A087624(n+1)*A252736(n+1)+2`
-/

namespace A307408.P17382841384026732608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (n + 1) * A252736 (n + 1) + 2

end

end A307408.P17382841384026732608

namespace A307408

/-- `A087624(n+1)*A252736(n+1)+2` -/
def P17382841384026732608.Spec : Prop :=
  ∀ n, P17382841384026732608.a n = A307408 (n + 1)

end A307408

/-! ## A307408.P6124205895880050292

`A001221(n+1)*A001222(A032742(n+1))+2`
-/

namespace A307408.P6124205895880050292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A001222 (A032742 (n + 1)).toNat + 2

end

end A307408.P6124205895880050292

namespace A307408

/-- `A001221(n+1)*A001222(A032742(n+1))+2` -/
def P6124205895880050292.Spec : Prop :=
  ∀ n, P6124205895880050292.a n = A307408 (n + 1)

end A307408

/-! ## A307408.P18067319192436862958

`A001221(n+1)*A001222(A052126(n+1))+2`
-/

namespace A307408.P18067319192436862958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A001222 (A052126 (n + 1)).toNat + 2

end

end A307408.P18067319192436862958

namespace A307408

/-- `A001221(n+1)*A001222(A052126(n+1))+2` -/
def P18067319192436862958.Spec : Prop :=
  ∀ n, P18067319192436862958.a n = A307408 (n + 1)

end A307408

/-! ## A307408.P3295900270094948276

`A001221(n+1)*A046660(A061142(n+1))+2`
-/

namespace A307408.P3295900270094948276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A046660 (A061142 (n + 1)).toNat + 2

end

end A307408.P3295900270094948276

namespace A307408

/-- `A001221(n+1)*A046660(A061142(n+1))+2` -/
def P3295900270094948276.Spec : Prop :=
  ∀ n, P3295900270094948276.a n = A307408 (n + 1)

end A307408

/-! ## A307408.P16734099636011817890

`A113901(n+1)+A328958(n+1)-A328959(n+1)`
-/

namespace A307408.P16734099636011817890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113901 (n + 1) + (A328958 (n + 1) - A328959 (n + 1))

end

end A307408.P16734099636011817890

namespace A307408

/-- `A113901(n+1)+A328958(n+1)-A328959(n+1)` -/
def P16734099636011817890.Spec : Prop :=
  ∀ n, P16734099636011817890.a n = A307408 (n + 1)

theorem P16734099636011817890.correct : P16734099636011817890.Spec := by
  intro n
  simp only [A307408, Nat.add_sub_cancel, A307408.P16734099636011817890.a, A307408.P14900321585277075839.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A113901, A113901.P4362226141671724758.a, A328958, A328958.P3249382024381690087.a, A328959, A328959.P14672643124768497102.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A307408

/-! ## A307408.P5048150243449782857

`A325801(A124508(n+1))+2`
-/

namespace A307408.P5048150243449782857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325801 (A124508 (n + 1)).toNat + 2

end

end A307408.P5048150243449782857

namespace A307408

/-- `A325801(A124508(n+1))+2` -/
def P5048150243449782857.Spec : Prop :=
  ∀ n, P5048150243449782857.a n = A307408 (n + 1)

end A307408

/-! ## A307408.P9216877802378177757

`∑{e}[A205959(n+1), #]+2`
-/

namespace A307408.P9216877802378177757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205959 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 2

end

end A307408.P9216877802378177757

namespace A307408

/-- `∑{e}[A205959(n+1), #]+2` -/
def P9216877802378177757.Spec : Prop :=
  ∀ n, (P9216877802378177757.a n : ℤ) = A307408 (n + 1)

end A307408

/-! ## A307408.P12712169581668430881

`A001222(∏{p}[n+1, ceil(n/#)])+2`
-/

namespace A307408.P12712169581668430881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), ⌈(n : ℚ) / (p : ℚ)⌉).toNat + 2

end

end A307408.P12712169581668430881

namespace A307408

/-- `A001222(∏{p}[n+1, ceil(n/#)])+2` -/
def P12712169581668430881.Spec : Prop :=
  ∀ n, P12712169581668430881.a n = A307408 (n + 1)

end A307408

/-! ## A307408.P15223853053411631772

`A001222(A205959(n+1))+2`
-/

namespace A307408.P15223853053411631772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A205959 (n + 1)).toNat + 2

end

end A307408.P15223853053411631772

namespace A307408

/-- `A001222(A205959(n+1))+2` -/
def P15223853053411631772.Spec : Prop :=
  ∀ n, P15223853053411631772.a n = A307408 (n + 1)

end A307408

/-!
# A307409: a(n) = (A001222(n) - 1)*A001221(n).

The programs for A307409, the canonical program `A307409.P14464226460867145203` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307409 has offset 1).

The definition of A307409 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(A001222(n+1)-1)*A001221(n+1)` (program `A307409.P14464226460867145203`, by `A307409.P14464226460867145203.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A307409.P5835612713459037129

`A307408(n+1)-2`
-/

namespace A307409.P5835612713459037129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307408 (n + 1) - 2

end

end A307409.P5835612713459037129

namespace A307409

/-- `A307408(n+1)-2` -/
def P5835612713459037129.Spec : Prop :=
  ∀ n, P5835612713459037129.a n = A307409 (n + 1)

theorem P5835612713459037129.correct : P5835612713459037129.Spec := by
  intro n
  simp only [A307409, Nat.add_sub_cancel, A307409.P5835612713459037129.a, A307409.P14464226460867145203.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A307408, A307408.P14900321585277075839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A307409

/-! ## A307409.P14464226460867145203

`(A001222(n+1)-1)*A001221(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A307409

/-- `(A001222(n+1)-1)*A001221(n+1)` -/
def P14464226460867145203.Spec : Prop :=
  ∀ n, P14464226460867145203.a n = A307409 (n + 1)

theorem P14464226460867145203.correct : P14464226460867145203.Spec := by
  intro n
  simp only [A307409, Nat.add_sub_cancel]

end A307409

/-! ## A307409.P167761947557745270

`∑{p}[n+1, A001222((n+1)/#)]`
-/

namespace A307409.P167761947557745270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat

end

end A307409.P167761947557745270

namespace A307409

/-- `∑{p}[n+1, A001222((n+1)/#)]` -/
def P167761947557745270.Spec : Prop :=
  ∀ n, P167761947557745270.a n = A307409 (n + 1)

end A307409

/-! ## A307409.P17174739492989251890

`(∑{e}[n+1, #]-1)*A001222(∏{p}[n+1, #])`
-/

namespace A307409.P17174739492989251890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - 1) * A001222 (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A307409.P17174739492989251890

namespace A307409

/-- `(∑{e}[n+1, #]-1)*A001222(∏{p}[n+1, #])` -/
def P17174739492989251890.Spec : Prop :=
  ∀ n, P17174739492989251890.a n = A307409 (n + 1)

end A307409

/-! ## A307409.P2597110130964569720

`A023444(A307408(n+1))`
-/

namespace A307409.P2597110130964569720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A307408 (n + 1)).toNat

end

end A307409.P2597110130964569720

namespace A307409

/-- `A023444(A307408(n+1))` -/
def P2597110130964569720.Spec : Prop :=
  ∀ n, P2597110130964569720.a n = A307409 (n + 1)

end A307409

/-! ## A307409.P10895182729727048581

`A113901(n+1)-A001221(n+1)`
-/

namespace A307409.P10895182729727048581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113901 (n + 1) - A001221 (n + 1)

end

end A307409.P10895182729727048581

namespace A307409

/-- `A113901(n+1)-A001221(n+1)` -/
def P10895182729727048581.Spec : Prop :=
  ∀ n, P10895182729727048581.a n = A307409 (n + 1)

theorem P10895182729727048581.correct : P10895182729727048581.Spec := by
  intro n
  simp only [A307409, Nat.add_sub_cancel, A307409.P10895182729727048581.a, A307409.P14464226460867145203.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A113901, A113901.P4362226141671724758.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A307409

/-! ## A307409.P5921722575574395704

`A033273(n+1)-A328958(n+1)`
-/

namespace A307409.P5921722575574395704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1) - A328958 (n + 1)

end

end A307409.P5921722575574395704

namespace A307409

/-- `A033273(n+1)-A328958(n+1)` -/
def P5921722575574395704.Spec : Prop :=
  ∀ n, P5921722575574395704.a n = A307409 (n + 1)

theorem P5921722575574395704.correct : P5921722575574395704.Spec := by
  intro n
  simp only [A307409, Nat.add_sub_cancel, A307409.P5921722575574395704.a, A307409.P14464226460867145203.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A033273, A033273.P18420659424697249895.a, A328958, A328958.P3249382024381690087.a, A000005, A000005.P16091521709108585461.a, A113901, A113901.P4362226141671724758.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A307409

/-! ## A307409.P12722153857642082509

`A001221(n+1)*A252736(n+1)`
-/

namespace A307409.P12722153857642082509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A252736 (n + 1)

end

end A307409.P12722153857642082509

namespace A307409

/-- `A001221(n+1)*A252736(n+1)` -/
def P12722153857642082509.Spec : Prop :=
  ∀ n, P12722153857642082509.a n = A307409 (n + 1)

end A307409

/-! ## A307409.P16671405823539698333

`A087624(n+1)*A252736(n+1)`
-/

namespace A307409.P16671405823539698333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (n + 1) * A252736 (n + 1)

end

end A307409.P16671405823539698333

namespace A307409

/-- `A087624(n+1)*A252736(n+1)` -/
def P16671405823539698333.Spec : Prop :=
  ∀ n, P16671405823539698333.a n = A307409 (n + 1)

end A307409

/-! ## A307409.P14999566523524366825

`A387470(n+1)%A378993(n+1)`
-/

namespace A307409.P14999566523524366825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A387470 (n + 1)) (A378993 (n + 1))

end

end A307409.P14999566523524366825

namespace A307409

/-- `A387470(n+1)%A378993(n+1)` -/
def P14999566523524366825.Spec : Prop :=
  ∀ n, P14999566523524366825.a n = A307409 (n + 1)

end A307409

/-! ## A307409.P17239822547371752183

`(Δ[A022559(n)]-1)*A001221(n+1)`
-/

namespace A307409.P17239822547371752183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 1) * A001221 (n + 1)

end

end A307409.P17239822547371752183

namespace A307409

/-- `(Δ[A022559(n)]-1)*A001221(n+1)` -/
def P17239822547371752183.Spec : Prop :=
  ∀ n, P17239822547371752183.a n = A307409 (n + 1)

end A307409

/-! ## A307409.P9455185680032363701

`A000005(n+1)-(A328959(n+1)+2)`
-/

namespace A307409.P9455185680032363701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A328959 (n + 1) + 2)

end

end A307409.P9455185680032363701

namespace A307409

/-- `A000005(n+1)-(A328959(n+1)+2)` -/
def P9455185680032363701.Spec : Prop :=
  ∀ n, P9455185680032363701.a n = A307409 (n + 1)

theorem P9455185680032363701.correct : P9455185680032363701.Spec := by
  intro n
  simp only [A307409, Nat.add_sub_cancel, A307409.P9455185680032363701.a, A307409.P14464226460867145203.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A328959, A328959.P14672643124768497102.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A307408, A307408.P14900321585277075839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A307409

/-! ## A307409.P6552723691756933695

`(A086436(n+1)-1)*A001221(n+1)`
-/

namespace A307409.P6552723691756933695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A086436 (n + 1) - 1) * A001221 (n + 1)

end

end A307409.P6552723691756933695

namespace A307409

/-- `(A086436(n+1)-1)*A001221(n+1)` -/
def P6552723691756933695.Spec : Prop :=
  ∀ n, P6552723691756933695.a n = A307409 (n + 1)

end A307409

/-! ## A307409.P4368546526799817870

`(A001222(n+1)-1)*A087624(n+1)`
-/

namespace A307409.P4368546526799817870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) - 1) * A087624 (n + 1)

end

end A307409.P4368546526799817870

namespace A307409

/-- `(A001222(n+1)-1)*A087624(n+1)` -/
def P4368546526799817870.Spec : Prop :=
  ∀ n, P4368546526799817870.a n = A307409 (n + 1)

end A307409

/-! ## A307409.P6150165345408196535

`(A144494(n+1)-1)*A087624(n+1)`
-/

namespace A307409.P6150165345408196535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A144494 (n + 1) - 1) * A087624 (n + 1)

end

end A307409.P6150165345408196535

namespace A307409

/-- `(A144494(n+1)-1)*A087624(n+1)` -/
def P6150165345408196535.Spec : Prop :=
  ∀ n, P6150165345408196535.a n = A307409 (n + 1)

end A307409

/-! ## A307409.P13439891830707373781

`(A378309(n+1)-1)*A087624(n+1)`
-/

namespace A307409.P13439891830707373781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A378309 (n + 1) - 1) * A087624 (n + 1)

end

end A307409.P13439891830707373781

namespace A307409

/-- `(A378309(n+1)-1)*A087624(n+1)` -/
def P13439891830707373781.Spec : Prop :=
  ∀ n, P13439891830707373781.a n = A307409 (n + 1)

end A307409

/-! ## A307409.P2524444353633718721

`(A073093(n+1)-2)*A001221(n+1)`
-/

namespace A307409.P2524444353633718721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A073093 (n + 1) - 2) * A001221 (n + 1)

end

end A307409.P2524444353633718721

namespace A307409

/-- `(A073093(n+1)-2)*A001221(n+1)` -/
def P2524444353633718721.Spec : Prop :=
  ∀ n, P2524444353633718721.a n = A307409 (n + 1)

theorem P2524444353633718721.correct : P2524444353633718721.Spec := by
  intro n
  simp only [A307409, Nat.add_sub_cancel, A307409.P2524444353633718721.a, A307409.P14464226460867145203.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A073093, A073093.P258081957281391684.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A307409

/-! ## A307409.P17563734755726727760

`∑{p}[n+1, A001222(n+1)-A001222(#)]`
-/

namespace A307409.P17563734755726727760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (A001222 (n + 1) - A001222 p)

end

end A307409.P17563734755726727760

namespace A307409

/-- `∑{p}[n+1, A001222(n+1)-A001222(#)]` -/
def P17563734755726727760.Spec : Prop :=
  ∀ n, P17563734755726727760.a n = A307409 (n + 1)

end A307409

/-! ## A307409.P13708857751873483233

`∑{e}[A007947(n+1), A001222(n+1)-#]`
-/

namespace A307409.P13708857751873483233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A001222 (n + 1) - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A307409.P13708857751873483233

namespace A307409

/-- `∑{e}[A007947(n+1), A001222(n+1)-#]` -/
def P13708857751873483233.Spec : Prop :=
  ∀ n, P13708857751873483233.a n = A307409 (n + 1)

end A307409

/-! ## A307409.P14676293496315277214

`∑{d}[n+1, A001222(#)*A010051((n+1)/#)]`
-/

namespace A307409.P14676293496315277214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001222 d * A010051 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307409.P14676293496315277214

namespace A307409

/-- `∑{d}[n+1, A001222(#)*A010051((n+1)/#)]` -/
def P14676293496315277214.Spec : Prop :=
  ∀ n, P14676293496315277214.a n = A307409 (n + 1)

end A307409

/-!
# A307410: Numerators of the product in the singular series.

The programs for A307410, the canonical program `A307410.P14070864280016795678` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307410 has offset 1).

The definition of A307410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307410.P16491729160364906383

`A305444(n+1)/A173557(n+1)*A380839(n+1)`
-/

namespace A307410.P16491729160364906383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305444 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ) * (A380839 (n + 1) : ℚ)

end

end A307410.P16491729160364906383

namespace A307410

/-- `A305444(n+1)/A173557(n+1)*A380839(n+1)` -/
def P16491729160364906383.Spec : Prop :=
  ∀ n, P16491729160364906383.a n = (A307410 (n + 1) : ℚ)

end A307410

/-! ## A307410.P14070864280016795678

`A002472(n+1)/gcd(A002472(n+1), A055034(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A307410

/-- `A002472(n+1)/gcd(A002472(n+1), A055034(n+1))` -/
def P14070864280016795678.Spec : Prop :=
  ∀ n, P14070864280016795678.a n = (A307410 (n + 1) : ℚ)

end A307410

/-! ## A307410.P15193325490380134138

`A184997(n+1)/gcd(A000010(n+1), A184997(n+1))`
-/

namespace A307410.P15193325490380134138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184997 (n + 1) : ℚ) / (Int.gcd (A000010 (n + 1)) (A184997 (n + 1)) : ℚ)

end

end A307410.P15193325490380134138

namespace A307410

/-- `A184997(n+1)/gcd(A000010(n+1), A184997(n+1))` -/
def P15193325490380134138.Spec : Prop :=
  ∀ n, P15193325490380134138.a n = (A307410 (n + 1) : ℚ)

end A307410

/-! ## A307410.P15585919276103893938

`lcm(A000010(n+1), A002472(n+1))/A000010(n+1)`
-/

namespace A307410.P15585919276103893938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000010 (n + 1)) (A002472 (n + 1)) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A307410.P15585919276103893938

namespace A307410

/-- `lcm(A000010(n+1), A002472(n+1))/A000010(n+1)` -/
def P15585919276103893938.Spec : Prop :=
  ∀ n, P15585919276103893938.a n = (A307410 (n + 1) : ℚ)

end A307410

/-! ## A307410.P14854109625522543026

`A305444(n+1)%A241909(A288870(n))`
-/

namespace A307410.P14854109625522543026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305444 (n + 1)) (A241909 (A288870 n).toNat)

end

end A307410.P14854109625522543026

namespace A307410

/-- `A305444(n+1)%A241909(A288870(n))` -/
def P14854109625522543026.Spec : Prop :=
  ∀ n, P14854109625522543026.a n = A307410 (n + 1)

end A307410

/-!
# A307411: G.f. A(x) satisfies: A(x) = 1 + x*A(x)*(1 + 2*x*A(x))/(1 - x*A(x) - x^2*A(x)^2).

The programs for A307411, there is no canonical definition to state claims against.
-/

/-! ## A307411.P5490274876196224014

`A033543(n)-A001221(A000165(n))`
-/

namespace A307411.P5490274876196224014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033543 n - A001221 (A000165 n).toNat

end

end A307411.P5490274876196224014

/-! ## A307411.P17191967892233408292

`A033543(n)-A001221(A352326(n))`
-/

namespace A307411.P17191967892233408292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033543 n - A001221 (A352326 n).toNat

end

end A307411.P17191967892233408292

/-! ## A307411.P11049267702243405895

`A033543(n)-A004216(A271655(n+1))`
-/

namespace A307411.P11049267702243405895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033543 n - A004216 (A271655 (n + 1)).toNat

end

end A307411.P11049267702243405895

/-!
# A307412: G.f. A(x) satisfies: A(x) = 1 + x*A(x)/(1 - 2*x*A(x) - x^2*A(x)^2).

The programs for A307412, there is no canonical definition to state claims against.
-/

/-! ## A307412.P7845986999886926168

`A190315(n)/(n+1)`
-/

namespace A307412.P7845986999886926168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190315 n : ℚ) / (n + 1 : ℚ)

end

end A307412.P7845986999886926168

/-! ## A307412.P12547981265017007225

`A190215(A046092(n))/(n+1)`
-/

namespace A307412.P12547981265017007225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190215 (A046092 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A307412.P12547981265017007225

/-! ## A307412.P8508975867822834303

`record[gcd(A190215(n), A204016(n+1))]/(n+1)`
-/

namespace A307412.P8508975867822834303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A190215 n) (A204016 (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)

end

end A307412.P8508975867822834303

/-! ## A307412.P13940164350323393143

`floor(A190215(A046092(n))/A008619(2*n))`
-/

namespace A307412.P13940164350323393143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A190215 (A046092 n).toNat : ℚ) / (A008619 (2 * n) : ℚ)⌋

end

end A307412.P13940164350323393143

/-! ## A307412.P4245464369117887691

`floor(A190215(A046092(n))/A052938(2*n))`
-/

namespace A307412.P4245464369117887691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A190215 (A046092 n).toNat : ℚ) / (A052938 (2 * n) : ℚ)⌋

end

end A307412.P4245464369117887691

/-!
# A307413: G.f. A(x) satisfies: A(x) = 1 + x*A(x)/(1 - x*A(x) - 2*x^2*A(x)^2).

The programs for A307413, there is no canonical definition to state claims against.
-/

/-! ## A307413.P6622275165711607747

`abs(A326564(n))`
-/

namespace A307413.P6622275165711607747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A326564 n|

end

end A307413.P6622275165711607747

/-! ## A307413.P15172813924844657266

`A165326(n)*A326564(n)`
-/

namespace A307413.P15172813924844657266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n * A326564 n

end

end A307413.P15172813924844657266

/-! ## A307413.P11328971740094085767

`gcd(A000038(n), A326564(n))`
-/

namespace A307413.P11328971740094085767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A326564 n)

end

end A307413.P11328971740094085767

/-! ## A307413.P11979109632440630253

`lcm(A006466(n), A326564(n))`
-/

namespace A307413.P11979109632440630253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006466 n) (A326564 n)

end

end A307413.P11979109632440630253

/-! ## A307413.P11419559077820937872

`ceil(A316363(n+1)/2)`
-/

namespace A307413.P11419559077820937872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A316363 (n + 1) : ℚ) / 2⌉

end

end A307413.P11419559077820937872

/-! ## A307413.P7207052879095462421

`A316363(n+1)/A036453(n+1)`
-/

namespace A307413.P7207052879095462421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316363 (n + 1) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A307413.P7207052879095462421

/-!
# A307414: Numbers k such that A014285(k) and A007504(k) are coprime.

The programs for A307414, the canonical program `A307414.P5147274626846036237` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307414 has offset 1).

The definition of A307414 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6095 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307414.P11482163852853684245

`eq[1, A309036(n+1)]+1`
-/

namespace A307414.P11482163852853684245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309036 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A307414.P11482163852853684245

namespace A307414

/-- `eq[1, A309036(n+1)]+1` -/
def P11482163852853684245.Spec : Prop :=
  ∀ n, (P11482163852853684245.a n : ℤ) = A307414 (n + 1)

end A307414

/-! ## A307414.P16896304969655067045

`record[(n+2)/A309036(n+2)]`
-/

namespace A307414.P16896304969655067045
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A309036 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307414.P16896304969655067045

namespace A307414

/-- `record[(n+2)/A309036(n+2)]` -/
def P16896304969655067045.Spec : Prop :=
  ∀ n, P16896304969655067045.a n = (A307414 (n + 1) : ℚ)

end A307414

/-! ## A307414.P5147274626846036237

`eq[A014285(n+1), A306834(n+1)]+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A307414

/-- `eq[A014285(n+1), A306834(n+1)]+1` -/
def P5147274626846036237.Spec : Prop :=
  ∀ n, (P5147274626846036237.a n : ℤ) = A307414 (n + 1)

theorem P5147274626846036237.correct : P5147274626846036237.Spec := by
  intro n
  simp only [A307414, Nat.add_sub_cancel]

end A307414

/-! ## A307414.P6939174842709808308

`eq[∑[A008578(n+2)], A307716(n+1)]+1`
-/

namespace A307414.P6939174842709808308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307716 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1

end

end A307414.P6939174842709808308

namespace A307414

/-- `eq[∑[A008578(n+2)], A307716(n+1)]+1` -/
def P6939174842709808308.Spec : Prop :=
  ∀ n, (P6939174842709808308.a n : ℤ) = A307414 (n + 1)

end A307414

/-! ## A307414.P112052517452756829

`eq[A007504(n), A307716(A233583(n+1))]`
-/

namespace A307414.P112052517452756829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307716 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307414.P112052517452756829

namespace A307414

/-- `eq[A007504(n), A307716(A233583(n+1))]` -/
def P112052517452756829.Spec : Prop :=
  ∀ n, (P112052517452756829.a n : ℤ) = A307414 (n + 1)

end A307414

/-!
# A307415: Total number of parts in all symmetric m-color cyclic compositions of n (that is, the total number of parts in all achiral cyclic compositions of n where a part with size m can be colored with one of m colors).

The programs for A307415, there is no canonical definition to state claims against.
-/

/-! ## A307415.P5806099288930718690

`2*A308817(n+1)-A308723(n+1)`
-/

namespace A307415.P5806099288930718690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A308817 (n + 1) - A308723 (n + 1)

end

end A307415.P5806099288930718690

/-! ## A307415.P10135181274772457973

`A308723(n+1)-A005843(A308723(n+1)-A308817(n+1))`
-/

namespace A307415.P10135181274772457973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308723 (n + 1) - A005843 (A308723 (n + 1) - A308817 (n + 1)).toNat

end

end A307415.P10135181274772457973

/-! ## A307415.P9142709570020577956

`A005843(A308817(n+1))-A308723(n+1)`
-/

namespace A307415.P9142709570020577956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A308817 (n + 1)).toNat - A308723 (n + 1)

end

end A307415.P9142709570020577956

/-!
# A307416: Number of narcissistic group-separable preference profiles.

The programs for A307416, there is no canonical definition to state claims against.
-/

/-! ## A307416.P3207510773131343583

`∏{p}[floor(abs(A120451(n+1)^n/3-n))+1, #-1]`
-/

namespace A307416.P3207510773131343583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(A120451 (n + 1) ^ n : ℚ) / 3 - (n : ℚ)|⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A307416.P3207510773131343583

/-! ## A307416.P278942130101954019

`∏{p}[round(A296241(2*n+1)^n/3)-n+1, #-1]`
-/

namespace A307416.P278942130101954019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A296241 (2 * n + 1) ^ n : ℚ) / 3) - (n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A307416.P278942130101954019

/-!
# A307418: Expansion of 1/(1 - x - 2*x/(1 - 3*x - 4*x/(1 - 5*x - 6*x/(1 - 7*x - 8*x/(1 - ...))))), a continued fraction.

The programs for A307418, there is no canonical definition to state claims against.
-/

/-! ## A307418.P17270274513221650661

`A013928(A001861(n)²+1)`
-/

namespace A307418.P17270274513221650661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A001861 n ^ 2 + 1).toNat

end

end A307418.P17270274513221650661

/-!
# A307419: Triangle of harmonic numbers T(n, k) = [t^n] Gamma(n+k+t)/Gamma(k+t) for n >= 0 and 0 <= k <= n, read by rows.

The programs for A307419, there is no canonical definition to state claims against.
-/

/-! ## A307419.P3360563900256390767

`A383206(n)+A289165(A220632(3*n+5))`
-/

namespace A307419.P3360563900256390767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383206 n + A289165 (A220632 (3 * n + 5)).toNat

end

end A307419.P3360563900256390767

/-! ## A307419.P15644115109216314214

`A089867(A383206(n))`
-/

namespace A307419.P15644115109216314214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A383206 n).toNat

end

end A307419.P15644115109216314214

/-! ## A307419.P17665077113083800829

`A152208(A255494(n)-A202178(n+1))`
-/

namespace A307419.P17665077113083800829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152208 (A255494 n - A202178 (n + 1)).toNat

end

end A307419.P17665077113083800829

/-! ## A307419.P12588066317854668553

`A336746(A132789(n+1)*A360742(n))`
-/

namespace A307419.P12588066317854668553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336746 (A132789 (n + 1) * A360742 n).toNat

end

end A307419.P12588066317854668553

/-! ## A307419.P4110235283783557085

`A271704(n)+A102683(A208956(3*n+1))`
-/

namespace A307419.P4110235283783557085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271704 n + A102683 (A208956 (3 * n + 1)).toNat

end

end A307419.P4110235283783557085

/-!
# A307420: Dirichlet g.f.: zeta(2*s) * zeta(3*s) / zeta(s).

The programs for A307420, the canonical program `A307420.P2385378640941051895` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307420 has offset 1).

The definition of A307420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307420.P2385378640941051895

`∏{e}[n+1, A115360(#)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A307420

/-- `∏{e}[n+1, A115360(#)]` -/
def P2385378640941051895.Spec : Prop :=
  ∀ n, P2385378640941051895.a n = A307420 (n + 1)

theorem P2385378640941051895.correct : P2385378640941051895.Spec := by
  intro n
  simp only [A307420, Nat.add_sub_cancel]

end A307420

/-! ## A307420.P9150706652432405315

`(A124315(n+1)+1)%3-1`
-/

namespace A307420.P9150706652432405315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124315 (n + 1) + 1) 3 - 1

end

end A307420.P9150706652432405315

namespace A307420

/-- `(A124315(n+1)+1)%3-1` -/
def P9150706652432405315.Spec : Prop :=
  ∀ n, P9150706652432405315.a n = A307420 (n + 1)

end A307420

/-! ## A307420.P15921736971489498278

`A049347(A124315(n+1)-1)`
-/

namespace A307420.P15921736971489498278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A124315 (n + 1) - 1).toNat

end

end A307420.P15921736971489498278

namespace A307420

/-- `A049347(A124315(n+1)-1)` -/
def P15921736971489498278.Spec : Prop :=
  ∀ n, P15921736971489498278.a n = A307420 (n + 1)

end A307420

/-! ## A307420.P12086406091224632257

`∑{d}[n+1, A008836(#)*A010057((n+1)/#)]`
-/

namespace A307420.P12086406091224632257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A010057 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307420.P12086406091224632257

namespace A307420

/-- `∑{d}[n+1, A008836(#)*A010057((n+1)/#)]` -/
def P12086406091224632257.Spec : Prop :=
  ∀ n, P12086406091224632257.a n = A307420 (n + 1)

end A307420

/-! ## A307420.P7993685405193005128

`∑{d}[n+1, A061704(#)*A158522((n+1)/#)]`
-/

namespace A307420.P7993685405193005128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061704 d * A158522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307420.P7993685405193005128

namespace A307420

/-- `∑{d}[n+1, A061704(#)*A158522((n+1)/#)]` -/
def P7993685405193005128.Spec : Prop :=
  ∀ n, P7993685405193005128.a n = A307420 (n + 1)

end A307420

/-! ## A307420.P13342227316791172124

`∑{d}[n+1, A010052(#)*A210826((n+1)/#)]`
-/

namespace A307420.P13342227316791172124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d * A210826 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307420.P13342227316791172124

namespace A307420

/-- `∑{d}[n+1, A010052(#)*A210826((n+1)/#)]` -/
def P13342227316791172124.Spec : Prop :=
  ∀ n, P13342227316791172124.a n = A307420 (n + 1)

end A307420

/-! ## A307420.P13185005475312707950

`∑{d}[n+1, A007427(#)*A322885((n+1)/#)]`
-/

namespace A307420.P13185005475312707950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A322885 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307420.P13185005475312707950

namespace A307420

/-- `∑{d}[n+1, A007427(#)*A322885((n+1)/#)]` -/
def P13185005475312707950.Spec : Prop :=
  ∀ n, P13185005475312707950.a n = A307420 (n + 1)

end A307420

/-! ## A307420.P11126380340029185683

`∑{d}[n+1, A008683(#)*A370256((n+1)/#)]`
-/

namespace A307420.P11126380340029185683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A370256 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307420.P11126380340029185683

namespace A307420

/-- `∑{d}[n+1, A008683(#)*A370256((n+1)/#)]` -/
def P11126380340029185683.Spec : Prop :=
  ∀ n, P11126380340029185683.a n = A307420 (n + 1)

end A307420

/-! ## A307420.P15791259650305425283

`∑{d}[n+1, A219009(#)*A355448((n+1)/#)]`
-/

namespace A307420.P15791259650305425283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A219009 d * A355448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307420.P15791259650305425283

namespace A307420

/-- `∑{d}[n+1, A219009(#)*A355448((n+1)/#)]` -/
def P15791259650305425283.Spec : Prop :=
  ∀ n, P15791259650305425283.a n = A307420 (n + 1)

end A307420

/-! ## A307420.P5047924387177183791

`∑{d}[n+1, A307421(#)*A329484((n+1)/#)]`
-/

namespace A307420.P5047924387177183791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307421 d * A329484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307420.P5047924387177183791

namespace A307420

/-- `∑{d}[n+1, A307421(#)*A329484((n+1)/#)]` -/
def P5047924387177183791.Spec : Prop :=
  ∀ n, P5047924387177183791.a n = A307420 (n + 1)

end A307420

/-! ## A307420.P8870465284531559348

`∑{d}[n+1, A323363(#)*A327626((n+1)/#)]`
-/

namespace A307420.P8870465284531559348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323363 d * A327626 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307420.P8870465284531559348

namespace A307420

/-- `∑{d}[n+1, A323363(#)*A327626((n+1)/#)]` -/
def P8870465284531559348.Spec : Prop :=
  ∀ n, P8870465284531559348.a n = A307420 (n + 1)

end A307420

/-! ## A307420.P9840284724100990334

`∑{d}[n+1, A307427(#)*A369308((n+1)/#)]`
-/

namespace A307420.P9840284724100990334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307427 d * A369308 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307420.P9840284724100990334

namespace A307420

/-- `∑{d}[n+1, A307427(#)*A369308((n+1)/#)]` -/
def P9840284724100990334.Spec : Prop :=
  ∀ n, P9840284724100990334.a n = A307420 (n + 1)

end A307420

/-!
# A307421: Dirichlet g.f.: zeta(s) * zeta(3*s) / zeta(2*s).

The programs for A307421, the canonical program `A307421.P10510512587857110973` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307421 has offset 1).

The definition of A307421 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A210826, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A307421.P10510512587857110973

`abs(A210826(n+1))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A307421

/-- `abs(A210826(n+1))` -/
def P10510512587857110973.Spec : Prop :=
  ∀ n, P10510512587857110973.a n = A307421 (n + 1)

theorem P10510512587857110973.correct : P10510512587857110973.Spec := by
  intro n
  simp only [A307421, Nat.add_sub_cancel]

end A307421

/-! ## A307421.P5654673648962357623

`∏{e}[n+1, round(abs(cos(#)))]`
-/

namespace A307421.P5654673648962357623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway |Real.cos (Nat.factorization (f1 n) p : ℝ)|

end

end A307421.P5654673648962357623

namespace A307421

/-- `∏{e}[n+1, round(abs(cos(#)))]` -/
def P5654673648962357623.Spec : Prop :=
  ∀ n, P5654673648962357623.a n = A307421 (n + 1)

end A307421

/-! ## A307421.P4039439273592520852

`∏{e}[n+1, round(cos(#))²]`
-/

namespace A307421.P4039439273592520852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (Real.cos (Nat.factorization (f1 n) p : ℝ)) ^ 2

end

end A307421.P4039439273592520852

namespace A307421

/-- `∏{e}[n+1, round(cos(#))²]` -/
def P4039439273592520852.Spec : Prop :=
  ∀ n, P4039439273592520852.a n = A307421 (n + 1)

end A307421

/-! ## A307421.P11858402816939160755

`∏{e}[n+1, dr(round(cos(#)))]`
-/

namespace A307421.P11858402816939160755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway (Real.cos (Nat.factorization (f1 n) p : ℝ)))

end

end A307421.P11858402816939160755

namespace A307421

/-- `∏{e}[n+1, dr(round(cos(#)))]` -/
def P11858402816939160755.Spec : Prop :=
  ∀ n, (P11858402816939160755.a n : ℤ) = A307421 (n + 1)

end A307421

/-! ## A307421.P13328742148289607176

`∏{e}[n+1, (#+1)²%3]`
-/

namespace A307421.P13328742148289607176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) ^ 2 % 3

end

end A307421.P13328742148289607176

namespace A307421

/-- `∏{e}[n+1, (#+1)²%3]` -/
def P13328742148289607176.Spec : Prop :=
  ∀ n, (P13328742148289607176.a n : ℤ) = A307421 (n + 1)

end A307421

/-! ## A307421.P9935551127992522874

`∑{d}[n+1, gcd(n, #)]²%3`
-/

namespace A307421.P9935551127992522874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d) ^ 2 % 3

end

end A307421.P9935551127992522874

namespace A307421

/-- `∑{d}[n+1, gcd(n, #)]²%3` -/
def P9935551127992522874.Spec : Prop :=
  ∀ n, (P9935551127992522874.a n : ℤ) = A307421 (n + 1)

end A307421

/-! ## A307421.P12657890972086476545

`abs(A299406(n+1))`
-/

namespace A307421.P12657890972086476545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A299406 (n + 1)|

end

end A307421.P12657890972086476545

namespace A307421

/-- `abs(A299406(n+1))` -/
def P12657890972086476545.Spec : Prop :=
  ∀ n, P12657890972086476545.a n = A307421 (n + 1)

end A307421

/-! ## A307421.P1561303401923707800

`1-A353470(n+1)`
-/

namespace A307421.P1561303401923707800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A353470 (n + 1)

end

end A307421.P1561303401923707800

namespace A307421

/-- `1-A353470(n+1)` -/
def P1561303401923707800.Spec : Prop :=
  ∀ n, P1561303401923707800.a n = A307421 (n + 1)

end A307421

/-! ## A307421.P17047596742399189625

`A294932(n+1)%2`
-/

namespace A307421.P17047596742399189625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294932 (n + 1)) 2

end

end A307421.P17047596742399189625

namespace A307421

/-- `A294932(n+1)%2` -/
def P17047596742399189625.Spec : Prop :=
  ∀ n, P17047596742399189625.a n = A307421 (n + 1)

end A307421

/-! ## A307421.P5918542735418020397

`A351219(n+1)%2`
-/

namespace A307421.P5918542735418020397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351219 (n + 1)) 2

end

end A307421.P5918542735418020397

namespace A307421

/-- `A351219(n+1)%2` -/
def P5918542735418020397.Spec : Prop :=
  ∀ n, P5918542735418020397.a n = A307421 (n + 1)

end A307421

/-! ## A307421.P12188133619979892993

`A351348(n+1)%2`
-/

namespace A307421.P12188133619979892993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351348 (n + 1)) 2

end

end A307421.P12188133619979892993

namespace A307421

/-- `A351348(n+1)%2` -/
def P12188133619979892993.Spec : Prop :=
  ∀ n, P12188133619979892993.a n = A307421 (n + 1)

end A307421

/-! ## A307421.P14158404246918864025

`A035116(n+1)%3`
-/

namespace A307421.P14158404246918864025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035116 (n + 1)) 3

end

end A307421.P14158404246918864025

namespace A307421

/-- `A035116(n+1)%3` -/
def P14158404246918864025.Spec : Prop :=
  ∀ n, P14158404246918864025.a n = A307421 (n + 1)

end A307421

/-! ## A307421.P13726209072082044713

`A358380(n+1)%3`
-/

namespace A307421.P13726209072082044713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358380 (n + 1)) 3

end

end A307421.P13726209072082044713

namespace A307421

/-- `A358380(n+1)%3` -/
def P13726209072082044713.Spec : Prop :=
  ∀ n, P13726209072082044713.a n = A307421 (n + 1)

end A307421

/-! ## A307421.P14031607615052720038

`floor(sqrt(A074943(n+1)))`
-/

namespace A307421.P14031607615052720038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A074943 (n + 1))

end

end A307421.P14031607615052720038

namespace A307421

/-- `floor(sqrt(A074943(n+1)))` -/
def P14031607615052720038.Spec : Prop :=
  ∀ n, P14031607615052720038.a n = A307421 (n + 1)

end A307421

/-! ## A307421.P3060842043695250544

`∑{d}[n+1, A307424(#)]`
-/

namespace A307421.P3060842043695250544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307424 d

end

end A307421.P3060842043695250544

namespace A307421

/-- `∑{d}[n+1, A307424(#)]` -/
def P3060842043695250544.Spec : Prop :=
  ∀ n, P3060842043695250544.a n = A307421 (n + 1)

end A307421

/-! ## A307421.P13666988396594906356

`A000005(n+1)²%3`
-/

namespace A307421.P13666988396594906356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (n + 1) ^ 2) 3

end

end A307421.P13666988396594906356

namespace A307421

/-- `A000005(n+1)²%3` -/
def P13666988396594906356.Spec : Prop :=
  ∀ n, P13666988396594906356.a n = A307421 (n + 1)

end A307421

/-! ## A307421.P6169847464864100904

`char[A336590(n+1)-1]`
-/

namespace A307421.P6169847464864100904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336590 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A307421.P6169847464864100904

namespace A307421

/-- `char[A336590(n+1)-1]` -/
def P6169847464864100904.Spec : Prop :=
  ∀ n, (P6169847464864100904.a n : ℤ) = A307421 (n + 1)

end A307421

/-! ## A307421.P15187527901116130584

`∏{e}[A050985(n+1), 2-#]`
-/

namespace A307421.P15187527901116130584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (2 - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A307421.P15187527901116130584

namespace A307421

/-- `∏{e}[A050985(n+1), 2-#]` -/
def P15187527901116130584.Spec : Prop :=
  ∀ n, P15187527901116130584.a n = A307421 (n + 1)

end A307421

/-! ## A307421.P17874255933069803578

`A000032(∏{e}[n+1, #+1])%2`
-/

namespace A307421.P17874255933069803578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))) 2

end

end A307421.P17874255933069803578

namespace A307421

/-- `A000032(∏{e}[n+1, #+1])%2` -/
def P17874255933069803578.Spec : Prop :=
  ∀ n, P17874255933069803578.a n = A307421 (n + 1)

end A307421

/-! ## A307421.P7152580160726969943

`A010052(A000189(n+1))`
-/

namespace A307421.P7152580160726969943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A000189 (n + 1)).toNat

end

end A307421.P7152580160726969943

namespace A307421

/-- `A010052(A000189(n+1))` -/
def P7152580160726969943.Spec : Prop :=
  ∀ n, P7152580160726969943.a n = A307421 (n + 1)

end A307421

/-!
# A307423: Dirichlet g.f.: zeta(2*s) / zeta(3*s).

The programs for A307423, the canonical program `A307423.P10309501498730965419` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307423 has offset 1).

The definition of A307423 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307423.P10309501498730965419

`∏{e}[n+1, ((-1)^#)%#]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A307423

/-- `∏{e}[n+1, ((-1)^#)%#]` -/
def P10309501498730965419.Spec : Prop :=
  ∀ n, P10309501498730965419.a n = A307423 (n + 1)

theorem P10309501498730965419.correct : P10309501498730965419.Spec := by
  intro n
  simp only [A307423, Nat.add_sub_cancel]

end A307423

/-! ## A307423.P14202873681546823335

`A326415(n+1)%3`
-/

namespace A307423.P14202873681546823335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326415 (n + 1)) 3

end

end A307423.P14202873681546823335

namespace A307423

/-- `A326415(n+1)%3` -/
def P14202873681546823335.Spec : Prop :=
  ∀ n, P14202873681546823335.a n = A307423 (n + 1)

end A307423

/-! ## A307423.P16642308276454732446

`∑{d}[n+1, A307428(#)]`
-/

namespace A307423.P16642308276454732446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307428 d

end

end A307423.P16642308276454732446

namespace A307423

/-- `∑{d}[n+1, A307428(#)]` -/
def P16642308276454732446.Spec : Prop :=
  ∀ n, P16642308276454732446.a n = A307423 (n + 1)

end A307423

/-! ## A307423.P5152675006376372095

`A355683(A071975(n+1))`
-/

namespace A307423.P5152675006376372095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355683 (A071975 (n + 1)).toNat

end

end A307423.P5152675006376372095

namespace A307423

/-- `A355683(A071975(n+1))` -/
def P5152675006376372095.Spec : Prop :=
  ∀ n, P5152675006376372095.a n = A307423 (n + 1)

end A307423

/-! ## A307423.P8570307061833552659

`A355683(A350389(n+1))`
-/

namespace A307423.P8570307061833552659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355683 (A350389 (n + 1)).toNat

end

end A307423.P8570307061833552659

namespace A307423

/-- `A355683(A350389(n+1))` -/
def P8570307061833552659.Spec : Prop :=
  ∀ n, P8570307061833552659.a n = A307423 (n + 1)

end A307423

/-! ## A307423.P16131100637118769531

`A008836(n+1)*A112526(n+1)`
-/

namespace A307423.P16131100637118769531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A112526 (n + 1)

end

end A307423.P16131100637118769531

namespace A307423

/-- `A008836(n+1)*A112526(n+1)` -/
def P16131100637118769531.Spec : Prop :=
  ∀ n, P16131100637118769531.a n = A307423 (n + 1)

end A307423

/-! ## A307423.P15942412359084109410

`A162511(n+1)*A355683(n+1)`
-/

namespace A307423.P15942412359084109410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162511 (n + 1) * A355683 (n + 1)

end

end A307423.P15942412359084109410

namespace A307423

/-- `A162511(n+1)*A355683(n+1)` -/
def P15942412359084109410.Spec : Prop :=
  ∀ n, P15942412359084109410.a n = A307423 (n + 1)

end A307423

/-! ## A307423.P14262627097314831065

`A379012(n+1)/A158522(n+1)`
-/

namespace A307423.P14262627097314831065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379012 (n + 1) : ℚ) / (A158522 (n + 1) : ℚ)

end

end A307423.P14262627097314831065

namespace A307423

/-- `A379012(n+1)/A158522(n+1)` -/
def P14262627097314831065.Spec : Prop :=
  ∀ n, P14262627097314831065.a n = (A307423 (n + 1) : ℚ)

end A307423

/-! ## A307423.P17136228652674586625

`A355683((n+1)/A350388(n+1))`
-/

namespace A307423.P17136228652674586625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350388 (n + 1) : ℚ))).toNat

end

end A307423.P17136228652674586625

namespace A307423

/-- `A355683((n+1)/A350388(n+1))` -/
def P17136228652674586625.Spec : Prop :=
  ∀ n, P17136228652674586625.a n = A307423 (n + 1)

end A307423

/-! ## A307423.P17173572210006240451

`A379012(n+1)/A390490(n+1)`
-/

namespace A307423.P17173572210006240451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379012 (n + 1) : ℚ) / (A390490 (n + 1) : ℚ)

end

end A307423.P17173572210006240451

namespace A307423

/-- `A379012(n+1)/A390490(n+1)` -/
def P17173572210006240451.Spec : Prop :=
  ∀ n, P17173572210006240451.a n = (A307423 (n + 1) : ℚ)

end A307423

/-! ## A307423.P3343763808573378584

`∑{d}[n+1, A008683(#)*A056624((n+1)/#)]`
-/

namespace A307423.P3343763808573378584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056624 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307423.P3343763808573378584

namespace A307423

/-- `∑{d}[n+1, A008683(#)*A056624((n+1)/#)]` -/
def P3343763808573378584.Spec : Prop :=
  ∀ n, P3343763808573378584.a n = A307423 (n + 1)

end A307423

/-! ## A307423.P13968511972408405491

`∑{d}[n+1, A007427(#)*A092520((n+1)/#)]`
-/

namespace A307423.P13968511972408405491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A092520 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307423.P13968511972408405491

namespace A307423

/-- `∑{d}[n+1, A007427(#)*A092520((n+1)/#)]` -/
def P13968511972408405491.Spec : Prop :=
  ∀ n, P13968511972408405491.a n = A307423 (n + 1)

end A307423

/-! ## A307423.P3854026989857527783

`∑{d}[n+1, A008836(#)*A212793((n+1)/#)]`
-/

namespace A307423.P3854026989857527783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A212793 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307423.P3854026989857527783

namespace A307423

/-- `∑{d}[n+1, A008836(#)*A212793((n+1)/#)]` -/
def P3854026989857527783.Spec : Prop :=
  ∀ n, P3854026989857527783.a n = A307423 (n + 1)

end A307423

/-! ## A307423.P6495011546762667723

`∑{d}[n+1, A073184(#)*A158522((n+1)/#)]`
-/

namespace A307423.P6495011546762667723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A073184 d * A158522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307423.P6495011546762667723

namespace A307423

/-- `∑{d}[n+1, A073184(#)*A158522((n+1)/#)]` -/
def P6495011546762667723.Spec : Prop :=
  ∀ n, P6495011546762667723.a n = A307423 (n + 1)

end A307423

/-! ## A307423.P13875806017917380791

`∑{d}[n+1, A008966(#)*A303915((n+1)/#)]`
-/

namespace A307423.P13875806017917380791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A303915 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307423.P13875806017917380791

namespace A307423

/-- `∑{d}[n+1, A008966(#)*A303915((n+1)/#)]` -/
def P13875806017917380791.Spec : Prop :=
  ∀ n, P13875806017917380791.a n = A307423 (n + 1)

end A307423

/-! ## A307423.P18444890459305279416

`∑{d}[n+1, A226602(#)*A326415((n+1)/#)]`
-/

namespace A307423.P18444890459305279416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A226602 d * A326415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307423.P18444890459305279416

namespace A307423

/-- `∑{d}[n+1, A226602(#)*A326415((n+1)/#)]` -/
def P18444890459305279416.Spec : Prop :=
  ∀ n, P18444890459305279416.a n = A307423 (n + 1)

end A307423

/-! ## A307423.P7376272126288131532

`∑{d}[n+1, A254981(#)*A323363((n+1)/#)]`
-/

namespace A307423.P7376272126288131532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254981 d * A323363 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307423.P7376272126288131532

namespace A307423

/-- `∑{d}[n+1, A254981(#)*A323363((n+1)/#)]` -/
def P7376272126288131532.Spec : Prop :=
  ∀ n, P7376272126288131532.a n = A307423 (n + 1)

end A307423

/-! ## A307423.P13193719651024984419

`∑{d}[n+1, A271102(#)*A389887((n+1)/#)]`
-/

namespace A307423.P13193719651024984419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 d * A389887 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307423.P13193719651024984419

namespace A307423

/-- `∑{d}[n+1, A271102(#)*A389887((n+1)/#)]` -/
def P13193719651024984419.Spec : Prop :=
  ∀ n, P13193719651024984419.a n = A307423 (n + 1)

end A307423

/-! ## A307423.P4560574625872676225

`A076479(n+1)*A112526(n+1)*A162511(n+1)`
-/

namespace A307423.P4560574625872676225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (n + 1) * A112526 (n + 1) * A162511 (n + 1)

end

end A307423.P4560574625872676225

namespace A307423

/-- `A076479(n+1)*A112526(n+1)*A162511(n+1)` -/
def P4560574625872676225.Spec : Prop :=
  ∀ n, P4560574625872676225.a n = A307423 (n + 1)

end A307423

/-! ## A307423.P9688187594899946955

`A008683(A007913(n+1)*A055231(n+1))`
-/

namespace A307423.P9688187594899946955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007913 (n + 1) * A055231 (n + 1)).toNat

end

end A307423.P9688187594899946955

namespace A307423

/-- `A008683(A007913(n+1)*A055231(n+1))` -/
def P9688187594899946955.Spec : Prop :=
  ∀ n, P9688187594899946955.a n = A307423 (n + 1)

end A307423

/-!
# A307424: Dirichlet g.f.: zeta(3*s) / zeta(2*s).

The programs for A307424, the canonical program `A307424.P13439001856309968497` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307424 has offset 1).

The definition of A307424 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307424.P13439001856309968497

`∏{e}[n+1, 1-#%3]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A307424

/-- `∏{e}[n+1, 1-#%3]` -/
def P13439001856309968497.Spec : Prop :=
  ∀ n, P13439001856309968497.a n = A307424 (n + 1)

theorem P13439001856309968497.correct : P13439001856309968497.Spec := by
  intro n
  simp only [A307424, Nat.add_sub_cancel]

end A307424

/-! ## A307424.P11858121948577294083

`∏{e}[n+1, -#%3+1]`
-/

namespace A307424.P11858121948577294083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Int.tmod (-(Nat.factorization (f1 n) p : ℤ)) 3 + 1)

end

end A307424.P11858121948577294083

namespace A307424

/-- `∏{e}[n+1, -#%3+1]` -/
def P11858121948577294083.Spec : Prop :=
  ∀ n, P11858121948577294083.a n = A307424 (n + 1)

end A307424

/-! ## A307424.P727037400510639030

`∑{d}[n+1, A307427(#)]`
-/

namespace A307424.P727037400510639030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307427 d

end

end A307424.P727037400510639030

namespace A307424

/-- `∑{d}[n+1, A307427(#)]` -/
def P727037400510639030.Spec : Prop :=
  ∀ n, P727037400510639030.a n = A307424 (n + 1)

end A307424

/-! ## A307424.P8578080257737621497

`∏{e}[n+1, A057078(#)]`
-/

namespace A307424.P8578080257737621497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A057078 (Nat.factorization (f1 n) p)

end

end A307424.P8578080257737621497

namespace A307424

/-- `∏{e}[n+1, A057078(#)]` -/
def P8578080257737621497.Spec : Prop :=
  ∀ n, P8578080257737621497.a n = A307424 (n + 1)

end A307424

/-! ## A307424.P227384760897769399

`∏{e}[A050985(n+1), 1-#]`
-/

namespace A307424.P227384760897769399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A307424.P227384760897769399

namespace A307424

/-- `∏{e}[A050985(n+1), 1-#]` -/
def P227384760897769399.Spec : Prop :=
  ∀ n, P227384760897769399.a n = A307424 (n + 1)

end A307424

/-! ## A307424.P8180437792256677112

`A057078(A063647(n+1))`
-/

namespace A307424.P8180437792256677112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A063647 (n + 1)).toNat

end

end A307424.P8180437792256677112

namespace A307424

/-- `A057078(A063647(n+1))` -/
def P8180437792256677112.Spec : Prop :=
  ∀ n, P8180437792256677112.a n = A307424 (n + 1)

end A307424

/-! ## A307424.P3928986222088032824

`A084091(A048691(n+1))`
-/

namespace A307424.P3928986222088032824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084091 (A048691 (n + 1)).toNat

end

end A307424.P3928986222088032824

namespace A307424

/-- `A084091(A048691(n+1))` -/
def P3928986222088032824.Spec : Prop :=
  ∀ n, P3928986222088032824.a n = A307424 (n + 1)

end A307424

/-! ## A307424.P4620557987442792301

`A163804(A156688(n+1))`
-/

namespace A307424.P4620557987442792301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163804 (A156688 (n + 1)).toNat

end

end A307424.P4620557987442792301

namespace A307424

/-- `A163804(A156688(n+1))` -/
def P4620557987442792301.Spec : Prop :=
  ∀ n, P4620557987442792301.a n = A307424 (n + 1)

end A307424

/-! ## A307424.P12072289968029972066

`A271102(A050985(n+1))`
-/

namespace A307424.P12072289968029972066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271102 (A050985 (n + 1)).toNat

end

end A307424.P12072289968029972066

namespace A307424

/-- `A271102(A050985(n+1))` -/
def P12072289968029972066.Spec : Prop :=
  ∀ n, P12072289968029972066.a n = A307424 (n + 1)

end A307424

/-! ## A307424.P12748322987209178948

`A049347(A048691(n+1)-1)`
-/

namespace A307424.P12748322987209178948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A048691 (n + 1) - 1).toNat

end

end A307424.P12748322987209178948

namespace A307424

/-- `A049347(A048691(n+1)-1)` -/
def P12748322987209178948.Spec : Prop :=
  ∀ n, P12748322987209178948.a n = A307424 (n + 1)

end A307424

/-! ## A307424.P10428709957732909939

`∑{d}[n+1, A008966(#)*A210826((n+1)/#)]`
-/

namespace A307424.P10428709957732909939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A210826 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307424.P10428709957732909939

namespace A307424

/-- `∑{d}[n+1, A008966(#)*A210826((n+1)/#)]` -/
def P10428709957732909939.Spec : Prop :=
  ∀ n, P10428709957732909939.a n = A307424 (n + 1)

end A307424

/-! ## A307424.P10141442489223926711

`∑{d}[n+1, A010057(#)*A271102((n+1)/#)]`
-/

namespace A307424.P10141442489223926711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010057 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307424.P10141442489223926711

namespace A307424

/-- `∑{d}[n+1, A010057(#)*A271102((n+1)/#)]` -/
def P10141442489223926711.Spec : Prop :=
  ∀ n, P10141442489223926711.a n = A307424 (n + 1)

end A307424

/-! ## A307424.P8251168260593391070

`∑{d}[n+1, A008683(#)*A307421((n+1)/#)]`
-/

namespace A307424.P8251168260593391070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A307421 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307424.P8251168260593391070

namespace A307424

/-- `∑{d}[n+1, A008683(#)*A307421((n+1)/#)]` -/
def P8251168260593391070.Spec : Prop :=
  ∀ n, P8251168260593391070.a n = A307424 (n + 1)

end A307424

/-! ## A307424.P18218933009923804526

`∑{d}[n+1, A061704(#)*A307445((n+1)/#)]`
-/

namespace A307424.P18218933009923804526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061704 d * A307445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307424.P18218933009923804526

namespace A307424

/-- `∑{d}[n+1, A061704(#)*A307445((n+1)/#)]` -/
def P18218933009923804526.Spec : Prop :=
  ∀ n, P18218933009923804526.a n = A307424 (n + 1)

end A307424

/-! ## A307424.P467325497068066302

`∑{d}[n+1, A078429(#)*A328729((n+1)/#)]`
-/

namespace A307424.P467325497068066302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078429 d * A328729 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307424.P467325497068066302

namespace A307424

/-- `∑{d}[n+1, A078429(#)*A328729((n+1)/#)]` -/
def P467325497068066302.Spec : Prop :=
  ∀ n, P467325497068066302.a n = A307424 (n + 1)

end A307424

/-! ## A307424.P4497979978665888268

`∑{d}[n+1, A158522(#)*A387960((n+1)/#)]`
-/

namespace A307424.P4497979978665888268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A387960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307424.P4497979978665888268

namespace A307424

/-- `∑{d}[n+1, A158522(#)*A387960((n+1)/#)]` -/
def P4497979978665888268.Spec : Prop :=
  ∀ n, P4497979978665888268.a n = A307424 (n + 1)

end A307424

/-! ## A307424.P17033787405494334070

`A102283(A344328(n+1))`
-/

namespace A307424.P17033787405494334070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A344328 (n + 1)).toNat

end

end A307424.P17033787405494334070

namespace A307424

/-- `A102283(A344328(n+1))` -/
def P17033787405494334070.Spec : Prop :=
  ∀ n, P17033787405494334070.a n = A307424 (n + 1)

end A307424

/-! ## A307424.P424370567973045175

`(A016873(A016003(n+1))+1)%3-1`
-/

namespace A307424.P424370567973045175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016873 (A016003 (n + 1)).toNat + 1) 3 - 1

end

end A307424.P424370567973045175

namespace A307424

/-- `(A016873(A016003(n+1))+1)%3-1` -/
def P424370567973045175.Spec : Prop :=
  ∀ n, P424370567973045175.a n = A307424 (n + 1)

end A307424

/-! ## A307424.P7610738286366913797

`∏{e}[(n+1)², round(cos(#))]`
-/

namespace A307424.P7610738286366913797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (Real.cos (Nat.factorization (f1 n) p : ℝ))

end

end A307424.P7610738286366913797

namespace A307424

/-- `∏{e}[(n+1)², round(cos(#))]` -/
def P7610738286366913797.Spec : Prop :=
  ∀ n, P7610738286366913797.a n = A307424 (n + 1)

end A307424

/-! ## A307424.P5194766220495961673

`∏{e}[(n+1)², A000484(#)]`
-/

namespace A307424.P5194766220495961673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000484 (Nat.factorization (f1 n) p)

end

end A307424.P5194766220495961673

namespace A307424

/-- `∏{e}[(n+1)², A000484(#)]` -/
def P5194766220495961673.Spec : Prop :=
  ∀ n, P5194766220495961673.a n = A307424 (n + 1)

end A307424

/-!
# A307425: Dirichlet g.f.: zeta(s) / (zeta(2*s) * zeta(3*s)).

The programs for A307425, the canonical program `A307425.P15398168593737495323` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307425 has offset 1).

The definition of A307425 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307425.P17761124999475570878

`∏{e}[n+1, A014625(8*(#+#))]`
-/

namespace A307425.P17761124999475570878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A014625 (8 * (Nat.factorization (f1 n) p + Nat.factorization (f1 n) p))

end

end A307425.P17761124999475570878

namespace A307425

/-- `∏{e}[n+1, A014625(8*(#+#))]` -/
def P17761124999475570878.Spec : Prop :=
  ∀ n, P17761124999475570878.a n = A307425 (n + 1)

end A307425

/-! ## A307425.P16110074287063924349

`A271102(A000189(n+1))`
-/

namespace A307425.P16110074287063924349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271102 (A000189 (n + 1)).toNat

end

end A307425.P16110074287063924349

namespace A307425

/-- `A271102(A000189(n+1))` -/
def P16110074287063924349.Spec : Prop :=
  ∀ n, P16110074287063924349.a n = A307425 (n + 1)

end A307425

/-! ## A307425.P15612693466361404239

`∏{e}[n+1, A121373(A006005(#))]`
-/

namespace A307425.P15612693466361404239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A121373 (A006005 (Nat.factorization (f1 n) p)).toNat

end

end A307425.P15612693466361404239

namespace A307425

/-- `∏{e}[n+1, A121373(A006005(#))]` -/
def P15612693466361404239.Spec : Prop :=
  ∀ n, P15612693466361404239.a n = A307425 (n + 1)

end A307425

/-! ## A307425.P2072080984041514839

`∏{e}[n+1, A121373(A057476(#))]`
-/

namespace A307425.P2072080984041514839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A121373 (A057476 (Nat.factorization (f1 n) p)).toNat

end

end A307425.P2072080984041514839

namespace A307425

/-- `∏{e}[n+1, A121373(A057476(#))]` -/
def P2072080984041514839.Spec : Prop :=
  ∀ n, P2072080984041514839.a n = A307425 (n + 1)

end A307425

/-! ## A307425.P12001759106590986232

`A210826(n+1)*A363553(n+1)`
-/

namespace A307425.P12001759106590986232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210826 (n + 1) * A363553 (n + 1)

end

end A307425.P12001759106590986232

namespace A307425

/-- `A210826(n+1)*A363553(n+1)` -/
def P12001759106590986232.Spec : Prop :=
  ∀ n, P12001759106590986232.a n = A307425 (n + 1)

end A307425

/-! ## A307425.P17257903333446473876

`∏{e}[n+1, A008683(A024675((#+2)²+1))]`
-/

namespace A307425.P17257903333446473876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A008683 (A024675 ((Nat.factorization (f1 n) p + 2) ^ 2 + 1)).toNat

end

end A307425.P17257903333446473876

namespace A307425

/-- `∏{e}[n+1, A008683(A024675((#+2)²+1))]` -/
def P17257903333446473876.Spec : Prop :=
  ∀ n, P17257903333446473876.a n = A307425 (n + 1)

end A307425

/-! ## A307425.P15398168593737495323

`∑{d}[n+1, A073184(#)*A307445((n+1)/#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A307425

/-- `∑{d}[n+1, A073184(#)*A307445((n+1)/#)]` -/
def P15398168593737495323.Spec : Prop :=
  ∀ n, P15398168593737495323.a n = A307425 (n + 1)

theorem P15398168593737495323.correct : P15398168593737495323.Spec := by
  intro n
  simp only [A307425, Nat.add_sub_cancel]

end A307425

/-! ## A307425.P13172840549293979788

`∑{d}[n+1, A212793(#)*A271102((n+1)/#)]`
-/

namespace A307425.P13172840549293979788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A212793 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307425.P13172840549293979788

namespace A307425

/-- `∑{d}[n+1, A212793(#)*A271102((n+1)/#)]` -/
def P13172840549293979788.Spec : Prop :=
  ∀ n, P13172840549293979788.a n = A307425 (n + 1)

end A307425

/-! ## A307425.P5322864373554922795

`∑{d}[n+1, A254926(#)*A328729((n+1)/#)]`
-/

namespace A307425.P5322864373554922795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254926 d * A328729 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307425.P5322864373554922795

namespace A307425

/-- `∑{d}[n+1, A254926(#)*A328729((n+1)/#)]` -/
def P5322864373554922795.Spec : Prop :=
  ∀ n, P5322864373554922795.a n = A307425 (n + 1)

end A307425

/-! ## A307425.P6466643758519100330

`∑{d}[n+1, A307430(#)*A355684((n+1)/#)]`
-/

namespace A307425.P6466643758519100330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307430 d * A355684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307425.P6466643758519100330

namespace A307425

/-- `∑{d}[n+1, A307430(#)*A355684((n+1)/#)]` -/
def P6466643758519100330.Spec : Prop :=
  ∀ n, P6466643758519100330.a n = A307425 (n + 1)

end A307425

/-! ## A307425.P17194107133754072128

`∑{d}[n+1, A307427(#)*A369306((n+1)/#)]`
-/

namespace A307425.P17194107133754072128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307427 d * A369306 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307425.P17194107133754072128

namespace A307425

/-- `∑{d}[n+1, A307427(#)*A369306((n+1)/#)]` -/
def P17194107133754072128.Spec : Prop :=
  ∀ n, P17194107133754072128.a n = A307425 (n + 1)

end A307425

/-! ## A307425.P10383300486209400047

`∏{e}[n+1, A008683(A002415(A006530(#)+#))]`
-/

namespace A307425.P10383300486209400047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A008683 (A002415 (A006530 (Nat.factorization (f1 n) p) + (Nat.factorization (f1 n) p : ℤ)).toNat).toNat

end

end A307425.P10383300486209400047

namespace A307425

/-- `∏{e}[n+1, A008683(A002415(A006530(#)+#))]` -/
def P10383300486209400047.Spec : Prop :=
  ∀ n, P10383300486209400047.a n = A307425 (n + 1)

end A307425

/-! ## A307425.P7853067931569539172

`∏{e}[n+1, A016345(#)*A197879(A007306(#)+1)]`
-/

namespace A307425.P7853067931569539172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A016345 (Nat.factorization (f1 n) p) * A197879 (A007306 (Nat.factorization (f1 n) p) + 1).toNat

end

end A307425.P7853067931569539172

namespace A307425

/-- `∏{e}[n+1, A016345(#)*A197879(A007306(#)+1)]` -/
def P7853067931569539172.Spec : Prop :=
  ∀ n, P7853067931569539172.a n = A307425 (n + 1)

end A307425

/-! ## A307425.P11354657521737050993

`A016219(A112624(n+1))`
-/

namespace A307425.P11354657521737050993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016219 (A112624 (n + 1)).toNat

end

end A307425.P11354657521737050993

namespace A307425

/-- `A016219(A112624(n+1))` -/
def P11354657521737050993.Spec : Prop :=
  ∀ n, P11354657521737050993.a n = A307425 (n + 1)

end A307425

/-! ## A307425.P3883369431124948062

`A359814(A067665(A072411(n+1)))`
-/

namespace A307425.P3883369431124948062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359814 (A067665 (A072411 (n + 1)).toNat).toNat

end

end A307425.P3883369431124948062

namespace A307425

/-- `A359814(A067665(A072411(n+1)))` -/
def P3883369431124948062.Spec : Prop :=
  ∀ n, P3883369431124948062.a n = A307425 (n + 1)

end A307425

/-!
# A307426: a(n) is the number of canonical polygons with 4n edges having 4-fold rotational symmetry.

The programs for A307426, there is no canonical definition to state claims against.
-/

/-! ## A307426.P3651280112656876636

`A233583(A047143(n+1))`
-/

namespace A307426.P3651280112656876636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A047143 (n + 1)).toNat

end

end A307426.P3651280112656876636

/-! ## A307426.P16581285992771773422

`A157271(A081294(n))+A105476(n)`
-/

namespace A307426.P16581285992771773422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A081294 n).toNat + A105476 n

end

end A307426.P16581285992771773422

/-!
# A307427: Dirichlet g.f.: zeta(3*s) / (zeta(s) * zeta(2*s)).

The programs for A307427, the canonical program `A307427.P1360631857162909734` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307427 has offset 1).

The definition of A307427 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307424, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A307427.P1360631857162909734

`∑{d}[n+1, A008683(#)*A307424((n+1)/#)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A307427

/-- `∑{d}[n+1, A008683(#)*A307424((n+1)/#)]` -/
def P1360631857162909734.Spec : Prop :=
  ∀ n, P1360631857162909734.a n = A307427 (n + 1)

theorem P1360631857162909734.correct : P1360631857162909734.Spec := by
  intro n
  simp only [A307427, Nat.add_sub_cancel]

end A307427

/-! ## A307427.P5120428134275053338

`∏{e}[n+1, A099837(#)]`
-/

namespace A307427.P5120428134275053338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A099837 (Nat.factorization (f1 n) p)

end

end A307427.P5120428134275053338

namespace A307427

/-- `∏{e}[n+1, A099837(#)]` -/
def P5120428134275053338.Spec : Prop :=
  ∀ n, P5120428134275053338.a n = A307427 (n + 1)

end A307427

/-! ## A307427.P1679167295331562229

`∏{e}[n+1, A089807(#²)]`
-/

namespace A307427.P1679167295331562229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A089807 (Nat.factorization (f1 n) p ^ 2)

end

end A307427.P1679167295331562229

namespace A307427

/-- `∏{e}[n+1, A089807(#²)]` -/
def P1679167295331562229.Spec : Prop :=
  ∀ n, P1679167295331562229.a n = A307427 (n + 1)

end A307427

/-! ## A307427.P355744781384453444

`∏{e}[n+1, A131756(#²)]`
-/

namespace A307427.P355744781384453444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A131756 (Nat.factorization (f1 n) p ^ 2)

end

end A307427.P355744781384453444

namespace A307427

/-- `∏{e}[n+1, A131756(#²)]` -/
def P355744781384453444.Spec : Prop :=
  ∀ n, P355744781384453444.a n = A307427 (n + 1)

end A307427

/-! ## A307427.P11726245613442069727

`∏{e}[n+1, A087204(#+#)]`
-/

namespace A307427.P11726245613442069727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A087204 (Nat.factorization (f1 n) p + Nat.factorization (f1 n) p)

end

end A307427.P11726245613442069727

namespace A307427

/-- `∏{e}[n+1, A087204(#+#)]` -/
def P11726245613442069727.Spec : Prop :=
  ∀ n, P11726245613442069727.a n = A307427 (n + 1)

end A307427

/-! ## A307427.P15222759950609944197

`∏{e}[n+1, gcd(4, A219529(#))-2]`
-/

namespace A307427.P15222759950609944197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((Int.gcd 4 (A219529 (Nat.factorization (f1 n) p)) : ℤ) - 2)

end

end A307427.P15222759950609944197

namespace A307427

/-- `∏{e}[n+1, gcd(4, A219529(#))-2]` -/
def P15222759950609944197.Spec : Prop :=
  ∀ n, P15222759950609944197.a n = A307427 (n + 1)

end A307427

/-! ## A307427.P16386290087879758347

`∏{e}[n+1, A168199(val(#, 3)+1)-3]`
-/

namespace A307427.P16386290087879758347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A168199 (SequenceMachineLib.valuation (Nat.factorization (f1 n) p) 3 + 1) - 3)

end

end A307427.P16386290087879758347

namespace A307427

/-- `∏{e}[n+1, A168199(val(#, 3)+1)-3]` -/
def P16386290087879758347.Spec : Prop :=
  ∀ n, P16386290087879758347.a n = A307427 (n + 1)

end A307427

/-! ## A307427.P15351983316491354533

`∑{d}[n+1, A007427(#)*A307421((n+1)/#)]`
-/

namespace A307427.P15351983316491354533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A307421 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307427.P15351983316491354533

namespace A307427

/-- `∑{d}[n+1, A007427(#)*A307421((n+1)/#)]` -/
def P15351983316491354533.Spec : Prop :=
  ∀ n, P15351983316491354533.a n = A307427 (n + 1)

end A307427

/-! ## A307427.P2212862765817121993

`∑{d}[n+1, A010057(#)*A307445((n+1)/#)]`
-/

namespace A307427.P2212862765817121993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010057 d * A307445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307427.P2212862765817121993

namespace A307427

/-- `∑{d}[n+1, A010057(#)*A307445((n+1)/#)]` -/
def P2212862765817121993.Spec : Prop :=
  ∀ n, P2212862765817121993.a n = A307427 (n + 1)

end A307427

/-! ## A307427.P16149879520355130318

`∑{d}[n+1, A210826(#)*A271102((n+1)/#)]`
-/

namespace A307427.P16149879520355130318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A210826 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307427.P16149879520355130318

namespace A307427

/-- `∑{d}[n+1, A210826(#)*A271102((n+1)/#)]` -/
def P16149879520355130318.Spec : Prop :=
  ∀ n, P16149879520355130318.a n = A307427 (n + 1)

end A307427

/-! ## A307427.P12895561693783236135

`∑{d}[n+1, A327626(#)*A347090((n+1)/#)]`
-/

namespace A307427.P12895561693783236135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327626 d * A347090 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307427.P12895561693783236135

namespace A307427

/-- `∑{d}[n+1, A327626(#)*A347090((n+1)/#)]` -/
def P12895561693783236135.Spec : Prop :=
  ∀ n, P12895561693783236135.a n = A307427 (n + 1)

end A307427

/-! ## A307427.P16750669123568225995

`∑{d}[n+1, A326415(#)*A387960((n+1)/#)]`
-/

namespace A307427.P16750669123568225995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326415 d * A387960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307427.P16750669123568225995

namespace A307427

/-- `∑{d}[n+1, A326415(#)*A387960((n+1)/#)]` -/
def P16750669123568225995.Spec : Prop :=
  ∀ n, P16750669123568225995.a n = A307427 (n + 1)

end A307427

/-! ## A307427.P13800729646078373744

`∑{d}[n+1, A355837(#)*A380395((n+1)/#)]`
-/

namespace A307427.P13800729646078373744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A355837 d * A380395 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307427.P13800729646078373744

namespace A307427

/-- `∑{d}[n+1, A355837(#)*A380395((n+1)/#)]` -/
def P13800729646078373744.Spec : Prop :=
  ∀ n, P13800729646078373744.a n = A307427 (n + 1)

end A307427

/-! ## A307427.P5979858245996491721

`∏{e}[(n+1)², A100051(#)]`
-/

namespace A307427.P5979858245996491721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A100051 (Nat.factorization (f1 n) p)

end

end A307427.P5979858245996491721

namespace A307427

/-- `∏{e}[(n+1)², A100051(#)]` -/
def P5979858245996491721.Spec : Prop :=
  ∀ n, P5979858245996491721.a n = A307427 (n + 1)

end A307427

/-! ## A307427.P36868085259151143

`∏{e}[(n+1)², A181982(#)]`
-/

namespace A307427.P36868085259151143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A181982 (Nat.factorization (f1 n) p)

end

end A307427.P36868085259151143

namespace A307427

/-- `∏{e}[(n+1)², A181982(#)]` -/
def P36868085259151143.Spec : Prop :=
  ∀ n, P36868085259151143.a n = A307427 (n + 1)

end A307427

/-! ## A307427.P10682597241601143671

`2*A332732(A011262(n+1))-A332732(n+1)`
-/

namespace A307427.P10682597241601143671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A332732 (A011262 (n + 1)).toNat - A332732 (n + 1)

end

end A307427.P10682597241601143671

namespace A307427

/-- `2*A332732(A011262(n+1))-A332732(n+1)` -/
def P10682597241601143671.Spec : Prop :=
  ∀ n, P10682597241601143671.a n = A307427 (n + 1)

end A307427

/-!
# A307428: Dirichlet g.f.: zeta(2*s) / (zeta(s) * zeta(3*s)).

The programs for A307428, the canonical program `A307428.P2706480034166304644` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307428 has offset 1).

The definition of A307428 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307423, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A307428.P2706480034166304644

`∑{d}[n+1, A008683(#)*A307423((n+1)/#)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A307428

/-- `∑{d}[n+1, A008683(#)*A307423((n+1)/#)]` -/
def P2706480034166304644.Spec : Prop :=
  ∀ n, P2706480034166304644.a n = A307428 (n + 1)

theorem P2706480034166304644.correct : P2706480034166304644.Spec := by
  intro n
  simp only [A307428, Nat.add_sub_cancel]

end A307428

/-! ## A307428.P16440218756939845179

`A390490(A368886(n+1))`
-/

namespace A307428.P16440218756939845179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390490 (A368886 (n + 1)).toNat

end

end A307428.P16440218756939845179

namespace A307428

/-- `A390490(A368886(n+1))` -/
def P16440218756939845179.Spec : Prop :=
  ∀ n, P16440218756939845179.a n = A307428 (n + 1)

end A307428

/-! ## A307428.P14098905803800674773

`A008836(n+1)*A368248(n+1)`
-/

namespace A307428.P14098905803800674773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A368248 (n + 1)

end

end A307428.P14098905803800674773

namespace A307428

/-- `A008836(n+1)*A368248(n+1)` -/
def P14098905803800674773.Spec : Prop :=
  ∀ n, P14098905803800674773.a n = A307428 (n + 1)

end A307428

/-! ## A307428.P17455705933350162734

`A158522(n+1)/A365498(n+1)`
-/

namespace A307428.P17455705933350162734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158522 (n + 1) : ℚ) / (A365498 (n + 1) : ℚ)

end

end A307428.P17455705933350162734

namespace A307428

/-- `A158522(n+1)/A365498(n+1)` -/
def P17455705933350162734.Spec : Prop :=
  ∀ n, P17455705933350162734.a n = (A307428 (n + 1) : ℚ)

end A307428

/-! ## A307428.P6335065397960237458

`A390490(n+1)/A368885(n+1)`
-/

namespace A307428.P6335065397960237458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390490 (n + 1) : ℚ) / (A368885 (n + 1) : ℚ)

end

end A307428.P6335065397960237458

namespace A307428

/-- `A390490(n+1)/A368885(n+1)` -/
def P6335065397960237458.Spec : Prop :=
  ∀ n, P6335065397960237458.a n = (A307428 (n + 1) : ℚ)

end A307428

/-! ## A307428.P15360294252387407739

`∑{d}[n+1, A007427(#)*A056624((n+1)/#)]`
-/

namespace A307428.P15360294252387407739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A056624 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307428.P15360294252387407739

namespace A307428

/-- `∑{d}[n+1, A007427(#)*A056624((n+1)/#)]` -/
def P15360294252387407739.Spec : Prop :=
  ∀ n, P15360294252387407739.a n = A307428 (n + 1)

end A307428

/-! ## A307428.P16978950181118329959

`∑{d}[n+1, A007428(#)*A092520((n+1)/#)]`
-/

namespace A307428.P16978950181118329959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A092520 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307428.P16978950181118329959

namespace A307428

/-- `∑{d}[n+1, A007428(#)*A092520((n+1)/#)]` -/
def P16978950181118329959.Spec : Prop :=
  ∀ n, P16978950181118329959.a n = A307428 (n + 1)

end A307428

/-! ## A307428.P1425508516326858453

`∑{d}[n+1, A158522(#)*A212793((n+1)/#)]`
-/

namespace A307428.P1425508516326858453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A212793 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307428.P1425508516326858453

namespace A307428

/-- `∑{d}[n+1, A158522(#)*A212793((n+1)/#)]` -/
def P1425508516326858453.Spec : Prop :=
  ∀ n, P1425508516326858453.a n = A307428 (n + 1)

end A307428

/-! ## A307428.P11496349231195874208

`∑{d}[n+1, A073184(#)*A326415((n+1)/#)]`
-/

namespace A307428.P11496349231195874208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A073184 d * A326415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307428.P11496349231195874208

namespace A307428

/-- `∑{d}[n+1, A073184(#)*A326415((n+1)/#)]` -/
def P11496349231195874208.Spec : Prop :=
  ∀ n, P11496349231195874208.a n = A307428 (n + 1)

end A307428

/-! ## A307428.P15057610598647432221

`∑{d}[n+1, A271102(#)*A303915((n+1)/#)]`
-/

namespace A307428.P15057610598647432221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 d * A303915 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307428.P15057610598647432221

namespace A307428

/-- `∑{d}[n+1, A271102(#)*A303915((n+1)/#)]` -/
def P15057610598647432221.Spec : Prop :=
  ∀ n, P15057610598647432221.a n = A307428 (n + 1)

end A307428

/-! ## A307428.P2815124935224510871

`∑{d}[n+1, A254926(#)*A323363((n+1)/#)]`
-/

namespace A307428.P2815124935224510871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254926 d * A323363 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307428.P2815124935224510871

namespace A307428

/-- `∑{d}[n+1, A254926(#)*A323363((n+1)/#)]` -/
def P2815124935224510871.Spec : Prop :=
  ∀ n, P2815124935224510871.a n = A307428 (n + 1)

end A307428

/-! ## A307428.P471897177829179123

`∑{d}[n+1, A307425(#)*A329484((n+1)/#)]`
-/

namespace A307428.P471897177829179123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307425 d * A329484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307428.P471897177829179123

namespace A307428

/-- `∑{d}[n+1, A307425(#)*A329484((n+1)/#)]` -/
def P471897177829179123.Spec : Prop :=
  ∀ n, P471897177829179123.a n = A307428 (n + 1)

end A307428

/-! ## A307428.P5130136889895456728

`∑{d}[n+1, A307445(#)*A389887((n+1)/#)]`
-/

namespace A307428.P5130136889895456728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307445 d * A389887 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307428.P5130136889895456728

namespace A307428

/-- `∑{d}[n+1, A307445(#)*A389887((n+1)/#)]` -/
def P5130136889895456728.Spec : Prop :=
  ∀ n, P5130136889895456728.a n = A307428 (n + 1)

end A307428

/-! ## A307428.P8324798942189045670

`∑{d}[n+1, A355684(#)*A390490((n+1)/#)]`
-/

namespace A307428.P8324798942189045670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A355684 d * A390490 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307428.P8324798942189045670

namespace A307428

/-- `∑{d}[n+1, A355684(#)*A390490((n+1)/#)]` -/
def P8324798942189045670.Spec : Prop :=
  ∀ n, P8324798942189045670.a n = A307428 (n + 1)

end A307428

/-!
# A307429: Triangle read by rows: T(n,k) is the number of permutations of {1..n} at Kendall tau distance k of permutation sigma1 and k+1 Kendall tau distance of permutation sigma2, where sigma1 and sigma2 are at Kendall tau distance 1.

The programs for A307429, there is no canonical definition to state claims against.
-/

/-! ## A307429.P18159441760199959281

`A008302(n+1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A307429.P18159441760199959281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A008302 (n + 1) - a (n - 1)

end

end A307429.P18159441760199959281

/-! ## A307429.P15285981645310464008

`A274887(n+1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A307429.P15285981645310464008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A274887 (n + 1) - a (n - 1)

end

end A307429.P15285981645310464008

/-! ## A307429.P5605551135735808823

`abs(a(n-1)-A274887(-xor(n, -1)))` with `a(0)=1, a(1)=1`
-/

namespace A307429.P5605551135735808823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  |a (n - 1) - A274887 (-Int.xor (n : ℤ) (-1)).toNat|

end

end A307429.P5605551135735808823

/-! ## A307429.P5244659120851184629

`A274887(-xor(n, -1))-A000035(2*n)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A307429.P5244659120851184629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A274887 (-Int.xor (n : ℤ) (-1)).toNat - A000035 (2 * n) - a (n - 1)

end

end A307429.P5244659120851184629

/-! ## A307429.P7110559720560793688

`A143842(A229545(n+1))`
-/

namespace A307429.P7110559720560793688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143842 (A229545 (n + 1)).toNat

end

end A307429.P7110559720560793688

/-!
# A307430: Dirichlet g.f.: zeta(s) / zeta(4*s).

The programs for A307430, the canonical program `A307430.P6888452884517711225` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307430 has offset 1).

The definition of A307430 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227291, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A307430.P6888452884517711225

`∑{d}[n+1, abs(A008683((n+1)/#))*A227291(#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A307430

/-- `∑{d}[n+1, abs(A008683((n+1)/#))*A227291(#)]` -/
def P6888452884517711225.Spec : Prop :=
  ∀ n, P6888452884517711225.a n = A307430 (n + 1)

theorem P6888452884517711225.correct : P6888452884517711225.Spec := by
  intro n
  simp only [A307430, Nat.add_sub_cancel]

end A307430

/-! ## A307430.P5713597393120759187

`∏{e}[n+1, C(3, #)%2]`
-/

namespace A307430.P5713597393120759187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose 3 (Nat.factorization (f1 n) p) % 2

end

end A307430.P5713597393120759187

namespace A307430

/-- `∏{e}[n+1, C(3, #)%2]` -/
def P5713597393120759187.Spec : Prop :=
  ∀ n, (P5713597393120759187.a n : ℤ) = A307430 (n + 1)

end A307430

/-! ## A307430.P14589750171288194623

`and(1, ∏{e}[n+1, C(3, #)])`
-/

namespace A307430.P14589750171288194623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose 3 (Nat.factorization (f1 n) p))

end

end A307430.P14589750171288194623

namespace A307430

/-- `and(1, ∏{e}[n+1, C(3, #)])` -/
def P14589750171288194623.Spec : Prop :=
  ∀ n, (P14589750171288194623.a n : ℤ) = A307430 (n + 1)

end A307430

/-! ## A307430.P14133100116027897420

`∏{e}[n+1, round(2/(#+1))]`
-/

namespace A307430.P14133100116027897420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (2 / (Nat.factorization (f1 n) p + 1 : ℚ))

end

end A307430.P14133100116027897420

namespace A307430

/-- `∏{e}[n+1, round(2/(#+1))]` -/
def P14133100116027897420.Spec : Prop :=
  ∀ n, P14133100116027897420.a n = A307430 (n + 1)

end A307430

/-! ## A307430.P17710085147990008762

`abs(A053865(n+1))`
-/

namespace A307430.P17710085147990008762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053865 (n + 1)|

end

end A307430.P17710085147990008762

namespace A307430

/-- `abs(A053865(n+1))` -/
def P17710085147990008762.Spec : Prop :=
  ∀ n, P17710085147990008762.a n = A307430 (n + 1)

end A307430

/-! ## A307430.P17281818610217343289

`abs(A189022(n+1))`
-/

namespace A307430.P17281818610217343289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A189022 (n + 1)|

end

end A307430.P17281818610217343289

namespace A307430

/-- `abs(A189022(n+1))` -/
def P17281818610217343289.Spec : Prop :=
  ∀ n, P17281818610217343289.a n = A307430 (n + 1)

end A307430

/-! ## A307430.P17768440917183054254

`abs(A307445(n+1))`
-/

namespace A307430.P17768440917183054254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A307445 (n + 1)|

end

end A307430.P17768440917183054254

namespace A307430

/-- `abs(A307445(n+1))` -/
def P17768440917183054254.Spec : Prop :=
  ∀ n, P17768440917183054254.a n = A307430 (n + 1)

end A307430

/-! ## A307430.P6059854237415110490

`abs(A363552(n+1))`
-/

namespace A307430.P6059854237415110490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A363552 (n + 1)|

end

end A307430.P6059854237415110490

namespace A307430

/-- `abs(A363552(n+1))` -/
def P6059854237415110490.Spec : Prop :=
  ∀ n, P6059854237415110490.a n = A307430 (n + 1)

end A307430

/-! ## A307430.P3556701511123916479

`and(1, A007428(n+1))`
-/

namespace A307430.P3556701511123916479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A007428 (n + 1))

end

end A307430.P3556701511123916479

namespace A307430

/-- `and(1, A007428(n+1))` -/
def P3556701511123916479.Spec : Prop :=
  ∀ n, P3556701511123916479.a n = A307430 (n + 1)

end A307430

/-! ## A307430.P15296826134540328403

`floor(1/A062379(n+1))`
-/

namespace A307430.P15296826134540328403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A062379 (n + 1) : ℚ)⌋

end

end A307430.P15296826134540328403

namespace A307430

/-- `floor(1/A062379(n+1))` -/
def P15296826134540328403.Spec : Prop :=
  ∀ n, P15296826134540328403.a n = A307430 (n + 1)

end A307430

/-! ## A307430.P8082688313816381400

`char[lt[A051903(n+1), 4]]`
-/

namespace A307430.P8082688313816381400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A307430.P8082688313816381400

namespace A307430

/-- `char[lt[A051903(n+1), 4]]` -/
def P8082688313816381400.Spec : Prop :=
  ∀ n, (P8082688313816381400.a n : ℤ) = A307430 (n + 1)

end A307430

/-! ## A307430.P15924766788542674495

`A008966(A000188(n+1))`
-/

namespace A307430.P15924766788542674495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A000188 (n + 1)).toNat

end

end A307430.P15924766788542674495

namespace A307430

/-- `A008966(A000188(n+1))` -/
def P15924766788542674495.Spec : Prop :=
  ∀ n, P15924766788542674495.a n = A307430 (n + 1)

end A307430

/-! ## A307430.P17653422566221544724

`A008683(A008835(n+1))`
-/

namespace A307430.P17653422566221544724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008835 (n + 1)).toNat

end

end A307430.P17653422566221544724

namespace A307430

/-- `A008683(A008835(n+1))` -/
def P17653422566221544724.Spec : Prop :=
  ∀ n, P17653422566221544724.a n = A307430 (n + 1)

end A307430

/-! ## A307430.P16102166847074668373

`A212793(A003557(n+1))`
-/

namespace A307430.P16102166847074668373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (A003557 (n + 1)).toNat

end

end A307430.P16102166847074668373

namespace A307430

/-- `A212793(A003557(n+1))` -/
def P16102166847074668373.Spec : Prop :=
  ∀ n, P16102166847074668373.a n = A307430 (n + 1)

end A307430

/-! ## A307430.P11975024898152371821

`A063524(A317933(n+1))`
-/

namespace A307430.P11975024898152371821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A317933 (n + 1)).toNat

end

end A307430.P11975024898152371821

namespace A307430

/-- `A063524(A317933(n+1))` -/
def P11975024898152371821.Spec : Prop :=
  ∀ n, P11975024898152371821.a n = A307430 (n + 1)

end A307430

/-! ## A307430.P1674171603147472547

`A212793(A000188(n+1)²)`
-/

namespace A307430.P1674171603147472547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (A000188 (n + 1) ^ 2).toNat

end

end A307430.P1674171603147472547

namespace A307430

/-- `A212793(A000188(n+1)²)` -/
def P1674171603147472547.Spec : Prop :=
  ∀ n, P1674171603147472547.a n = A307430 (n + 1)

end A307430

/-! ## A307430.P16595358935346249123

`A256692(n+1)%A118136(n)`
-/

namespace A307430.P16595358935346249123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256692 (n + 1)) (A118136 n)

end

end A307430.P16595358935346249123

namespace A307430

/-- `A256692(n+1)%A118136(n)` -/
def P16595358935346249123.Spec : Prop :=
  ∀ n, P16595358935346249123.a n = A307430 (n + 1)

end A307430

/-! ## A307430.P14868577376660991100

`gcd(A000038(n), A053865(n+1))`
-/

namespace A307430.P14868577376660991100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A053865 (n + 1))

end

end A307430.P14868577376660991100

namespace A307430

/-- `gcd(A000038(n), A053865(n+1))` -/
def P14868577376660991100.Spec : Prop :=
  ∀ n, (P14868577376660991100.a n : ℤ) = A307430 (n + 1)

end A307430

/-! ## A307430.P4085241284690579233

`∑{d}[n+1, A008966(#)*A227291((n+1)/#)]`
-/

namespace A307430.P4085241284690579233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A227291 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307430.P4085241284690579233

namespace A307430

/-- `∑{d}[n+1, A008966(#)*A227291((n+1)/#)]` -/
def P4085241284690579233.Spec : Prop :=
  ∀ n, P4085241284690579233.a n = A307430 (n + 1)

end A307430

/-! ## A307430.P5832121444583608915

`∑{d}[n+1, A008683(#)*A252505((n+1)/#)]`
-/

namespace A307430.P5832121444583608915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A252505 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307430.P5832121444583608915

namespace A307430

/-- `∑{d}[n+1, A008683(#)*A252505((n+1)/#)]` -/
def P5832121444583608915.Spec : Prop :=
  ∀ n, P5832121444583608915.a n = A307430 (n + 1)

end A307430

/-!
# A307431: Number T(n,k) of partitions of n into parts whose bitwise OR equals k; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A307431, there is no canonical definition to state claims against.
-/

/-! ## A307431.P11261821006371502639

`A106277(A340556(n)+6)`
-/

namespace A307431.P11261821006371502639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106277 (A340556 n + 6).toNat

end

end A307431.P11261821006371502639

/-! ## A307431.P6483251750214866886

`A101674(7*A256311(n))`
-/

namespace A307431.P6483251750214866886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101674 (7 * A256311 n).toNat

end

end A307431.P6483251750214866886

/-! ## A307431.P11099259992454786771

`A241338(A142071(n))%3`
-/

namespace A307431.P11099259992454786771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241338 (A142071 n).toNat) 3

end

end A307431.P11099259992454786771

/-! ## A307431.P4752880105919605611

`A241389(A342981(n))%3`
-/

namespace A307431.P4752880105919605611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241389 (A342981 n).toNat) 3

end

end A307431.P4752880105919605611

/-! ## A307431.P7717675516884991165

`A054635(∑{d}[A267480(n), #])`
-/

namespace A307431.P7717675516884991165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A307431.P7717675516884991165

/-!
# A307432: Number T(n,k) of partitions of n into parts whose bitwise AND equals k; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A307432, there is no canonical definition to state claims against.
-/

/-! ## A307432.P7954015664288083258

`A037800(A111549(n)+11)`
-/

namespace A307432.P7954015664288083258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A111549 n + 11).toNat

end

end A307432.P7954015664288083258

/-! ## A307432.P9120776181646502320

`A308121(p?[A308151(n+1)]^A308151(n+1))`
-/

namespace A307432.P9120776181646502320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308121 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A308151 (n + 1) : ℤ))).toNat

end

end A307432.P9120776181646502320

/-! ## A307432.P14528910319039631225

`A319453(lt[A002925(n+1), 2])`
-/

namespace A307432.P14528910319039631225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002925 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319453 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A307432.P14528910319039631225

/-! ## A307432.P13716119786077427661

`A240574(A097285(p?[A122327(n)]))`
-/

namespace A307432.P13716119786077427661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240574 (A097285 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A307432.P13716119786077427661

/-! ## A307432.P1537034598674080596

`A301652(A079980(n))`
-/

namespace A307432.P1537034598674080596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301652 (A079980 n).toNat

end

end A307432.P1537034598674080596

/-!
# A307433: A special version of Pascal's triangle where only powers of 2 are permitted.

The programs for A307433, there is no canonical definition to state claims against.
-/

/-! ## A307433.P7397926889136270241

`gcd(A059268(n), A334727(A089633(n)))`
-/

namespace A307433.P7397926889136270241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059268 n) (A334727 (A089633 n).toNat)

end

end A307433.P7397926889136270241

/-! ## A307433.P9739980777201293728

`2^(∑[char[∑[n]]]-A087735(n+1))`
-/

namespace A307433.P9739980777201293728
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A087735 (n + 1) : ℤ)

end

end A307433.P9739980777201293728

/-! ## A307433.P11428017437087770652

`A140513(n)/2^A087735(n+1)`
-/

namespace A307433.P11428017437087770652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140513 n : ℚ) / (2 : ℚ) ^ (A087735 (n + 1) : ℤ)

end

end A307433.P11428017437087770652

/-! ## A307433.P9423285450713938010

`A140513(n)/A000079(A087735(n+1))`
-/

namespace A307433.P9423285450713938010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140513 n : ℚ) / (A000079 (A087735 (n + 1)).toNat : ℚ)

end

end A307433.P9423285450713938010

/-! ## A307433.P16724238639410850205

`A000079(A002024(n+1)-A087735(n+1))`
-/

namespace A307433.P16724238639410850205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002024 (n + 1) - A087735 (n + 1)).toNat

end

end A307433.P16724238639410850205

/-! ## A307433.P10678899487665788035

`A008862(A002024(n+1)-A087735(n+1))`
-/

namespace A307433.P10678899487665788035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 (A002024 (n + 1) - A087735 (n + 1)).toNat

end

end A307433.P10678899487665788035

/-! ## A307433.P15312066140111374472

`A100139(A002024(n+1)-A087735(n+1))`
-/

namespace A307433.P15312066140111374472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100139 (A002024 (n + 1) - A087735 (n + 1)).toNat

end

end A307433.P15312066140111374472

/-! ## A307433.P14100903702413079561

`A000079(A002024(n+1)%A087735(n+1))`
-/

namespace A307433.P14100903702413079561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Int.tmod (A002024 (n + 1)) (A087735 (n + 1))).toNat

end

end A307433.P14100903702413079561

/-! ## A307433.P10833940251739949605

`A000079(xor(A002024(n+1), A087735(n+1)))`
-/

namespace A307433.P10833940251739949605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Int.xor (A002024 (n + 1)) (A087735 (n + 1))).toNat

end

end A307433.P10833940251739949605

/-! ## A307433.P12108098140839647350

`A059268(n)/A059268(A087735(n+1)+n)`
-/

namespace A307433.P12108098140839647350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059268 n : ℚ) / (A059268 (A087735 (n + 1) + (n : ℤ)).toNat : ℚ)

end

end A307433.P12108098140839647350

/-!
# A307434: a(n) is the smallest k such that the p-rank of (Z/kZ)* is 2, where p = prime(n) and (Z/kZ)* is the multiplicative group of integers modulo n.

The programs for A307434, there is no canonical definition to state claims against.
-/

/-! ## A307434.P6844199325425969817

`A307436(A006005(n+1))`
-/

namespace A307434.P6844199325425969817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307436 (A006005 (n + 1)).toNat

end

end A307434.P6844199325425969817

/-! ## A307434.P16653747518670324854

`A307436(A176997(n+1))`
-/

namespace A307434.P16653747518670324854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307436 (A176997 (n + 1)).toNat

end

end A307434.P16653747518670324854

/-! ## A307434.P14827349126219598954

`A307436(A075643(n+2))`
-/

namespace A307434.P14827349126219598954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307436 (A075643 (n + 2)).toNat

end

end A307434.P14827349126219598954

/-! ## A307434.P6632358264728826878

`A307436(or(1, A006093(n+1)))`
-/

namespace A307434.P6632358264728826878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307436 (Int.lor 1 (A006093 (n + 1))).toNat

end

end A307434.P6632358264728826878

/-! ## A307434.P7049659603587234975

`A307436(record[A006530(2*n+1)])`
-/

namespace A307434.P7049659603587234975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307436 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A307434.P7049659603587234975

/-!
# A307435: Number of partitions of n into parts whose bitwise AND equals 0.

The programs for A307435, there is no canonical definition to state claims against.
-/

/-! ## A307435.P5548666858444198740

`A307432(∑[n])`
-/

namespace A307435.P5548666858444198740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307432 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A307435.P5548666858444198740

/-! ## A307435.P11635503583927783927

`or(char[3], A307432(A000217(n)))`
-/

namespace A307435.P11635503583927783927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A307432 (A000217 n).toNat)

end

end A307435.P11635503583927783927

/-! ## A307435.P11785019382784251939

`A307432(A179865(n+1))+floor(acot(n))`
-/

namespace A307435.P11785019382784251939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307432 (A179865 (n + 1)).toNat + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A307435.P11785019382784251939

/-! ## A307435.P14061425410518336626

`A307432(C(n+1, 2))%A007694(3*n+4)`
-/

namespace A307435.P14061425410518336626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307432 (Nat.choose (n + 1) 2)) (A007694 (3 * n + 4))

end

end A307435.P14061425410518336626

/-! ## A307435.P14358975626143235725

`A307432(or(1, n)*ceil(n/2))%A007694(3*n+4)`
-/

namespace A307435.P14358975626143235725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307432 ((Nat.lor 1 n : ℤ) * ⌈(n : ℚ) / 2⌉).toNat) (A007694 (3 * n + 4))

end

end A307435.P14358975626143235725

/-! ## A307435.P12901809014006776570

`A307432(A000217(n))%A000412(n)`
-/

namespace A307435.P12901809014006776570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307432 (A000217 n).toNat) (A000412 n)

end

end A307435.P12901809014006776570

/-! ## A307435.P8110084756663196041

`gcd(A000038(n), A307432(A000217(n)))`
-/

namespace A307435.P8110084756663196041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A307432 (A000217 n).toNat)

end

end A307435.P8110084756663196041

/-! ## A307435.P14376403058241376699

`lcm(A020985(n), A307432(A000217(n)))`
-/

namespace A307435.P14376403058241376699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A307432 (A000217 n).toNat)

end

end A307435.P14376403058241376699

/-! ## A307435.P2541945237129799233

`and(A290297(n), A307432(A000217(n)))`
-/

namespace A307435.P2541945237129799233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290297 n) (A307432 (A000217 n).toNat)

end

end A307435.P2541945237129799233

/-! ## A307435.P3352061730448265651

`A007318(C(2, n))*A307432(A000217(n))`
-/

namespace A307435.P3352061730448265651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A307432 (A000217 n).toNat

end

end A307435.P3352061730448265651

/-! ## A307435.P9376149570589326249

`A000041(C(2, n+2))*A307432(A000217(n))`
-/

namespace A307435.P9376149570589326249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A307432 (A000217 n).toNat

end

end A307435.P9376149570589326249

/-! ## A307435.P3462460945873558941

`A307432(A000217(n))^(A000040(n+1)%2)`
-/

namespace A307435.P3462460945873558941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307432 (A000217 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A307435.P3462460945873558941

/-! ## A307435.P16943590316694069171

`abs((1-2*A000035(n))*A307432(A000217(n)))`
-/

namespace A307435.P16943590316694069171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - 2 * A000035 n) * A307432 (A000217 n).toNat|

end

end A307435.P16943590316694069171

/-! ## A307435.P12052305326534723391

`A307432(A000217(n))/C(A000010(n+1), n)!`
-/

namespace A307435.P12052305326534723391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307432 (A000217 n).toNat : ℚ) / (Nat.factorial (Nat.choose (A000010 (n + 1)).toNat n) : ℚ)

end

end A307435.P12052305326534723391

/-! ## A307435.P10879744196185061757

`A007318(gcd(n+1, 2*n))*A307432(A000217(n))`
-/

namespace A307435.P10879744196185061757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.gcd (n + 1) (2 * n)) * A307432 (A000217 n).toNat

end

end A307435.P10879744196185061757

/-!
# A307439: G.f. A(x) satisfies: A(x) = Sum_{j>=0} j!*x^j*A(x)^j / Product_{k=1..j} (1 - k*x).

The programs for A307439, there is no canonical definition to state claims against.
-/

/-! ## A307439.P1017934020709776159

`A316626(A088717(n+1))`
-/

namespace A307439.P1017934020709776159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316626 (A088717 (n + 1)).toNat

end

end A307439.P1017934020709776159

/-! ## A307439.P4516367463774752629

`A004525(A192941(n)+n!)`
-/

namespace A307439.P4516367463774752629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A192941 n + (Nat.factorial n : ℤ)).toNat

end

end A307439.P4516367463774752629

/-!
# A307440: G.f. A(x) satisfies: A(x) = Sum_{j>=0} j!*x^j / Product_{k=1..j} (1 - k*x*A(x)).

The programs for A307440, there is no canonical definition to state claims against.
-/

/-! ## A307440.P14437072017735835556

`A199337(A076996(n+1))`
-/

namespace A307440.P14437072017735835556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199337 (A076996 (n + 1)).toNat

end

end A307440.P14437072017735835556

/-! ## A307440.P1152736596312354320

`A269371(A135082(n)-n)`
-/

namespace A307440.P1152736596312354320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269371 (A135082 n - (n : ℤ)).toNat

end

end A307440.P1152736596312354320

/-!
# A307441: G.f. A(x) satisfies: A(x) = Sum_{k>=0} k!*x^k*A(x)^k/(1 - x)^(k+1).

The programs for A307441, there is no canonical definition to state claims against.
-/

/-! ## A307441.P9621452885738443573

`ceil(A235199(A007808(n+1))/2)`
-/

namespace A307441.P9621452885738443573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A235199 (A007808 (n + 1)).toNat : ℚ) / 2⌉

end

end A307441.P9621452885738443573

/-! ## A307441.P16344831949827238405

`A275847(floor(A000142(n+2)/3)+1)`
-/

namespace A307441.P16344831949827238405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275847 (⌊(A000142 (n + 2) : ℚ) / 3⌋ + 1).toNat

end

end A307441.P16344831949827238405

/-!
# A307442: G.f. A(x) satisfies: A(x) = Sum_{k>=0} k!*x^k*A(x)^k/(1 - x*A(x))^(k+1).

The programs for A307442, there is no canonical definition to state claims against.
-/

/-! ## A307442.P17070028437291020852

`A083920(A355164(n))+1`
-/

namespace A307442.P17070028437291020852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (A355164 n).toNat + 1

end

end A307442.P17070028437291020852

/-! ## A307442.P14140940794220701447

`A122797(A355164(n)+1)`
-/

namespace A307442.P14140940794220701447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122797 (A355164 n + 1).toNat

end

end A307442.P14140940794220701447

/-!
# A307443: G.f. A(x) satisfies: A(x) = Sum_{k>=0} k!*x^k*A(x)^k/(1 + x)^(k+1).

The programs for A307443, there is no canonical definition to state claims against.
-/

/-! ## A307443.P9330228673782809553

`A321286(n)+A027868(A296943(n))`
-/

namespace A307443.P9330228673782809553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321286 n + A027868 (A296943 n).toNat

end

end A307443.P9330228673782809553

/-! ## A307443.P8570459552808637854

`A242062(or(A000225(n), A005500(n)))`
-/

namespace A307443.P8570459552808637854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (Int.lor (A000225 n) (A005500 n)).toNat

end

end A307443.P8570459552808637854

/-! ## A307443.P6459888588807002395

`A242062(or(A005500(n), A231868(n)))`
-/

namespace A307443.P6459888588807002395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (Int.lor (A005500 n) (A231868 n)).toNat

end

end A307443.P6459888588807002395

/-!
# A307444: G.f. A(x) satisfies: A(x) = Sum_{k>=0} k!*x^k*A(x)^k/(1 + x*A(x))^(k+1).

The programs for A307444, there is no canonical definition to state claims against.
-/

/-! ## A307444.P14793324797529110491

`A103221(A184511(n)+A122517(n))`
-/

namespace A307444.P14793324797529110491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A184511 n + A122517 n).toNat

end

end A307444.P14793324797529110491

/-! ## A307444.P14154500497247215966

`A131945(A321286(n))*A325697(A054519(n))`
-/

namespace A307444.P14154500497247215966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131945 (A321286 n).toNat * A325697 (A054519 n).toNat

end

end A307444.P14154500497247215966

/-!
# A307445: Dirichlet g.f.: 1 / (zeta(s) * zeta(2*s)).

The programs for A307445, the canonical program `A307445.P6687231974138292594` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307445 has offset 1).

The definition of A307445 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A307445.P6687231974138292594

`∑{d}[n+1, A008683((n+1)/#)*A271102(#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A307445

/-- `∑{d}[n+1, A008683((n+1)/#)*A271102(#)]` -/
def P6687231974138292594.Spec : Prop :=
  ∀ n, P6687231974138292594.a n = A307445 (n + 1)

theorem P6687231974138292594.correct : P6687231974138292594.Spec := by
  intro n
  simp only [A307445, Nat.add_sub_cancel]

end A307445

/-! ## A307445.P18379199082787207991

`∑{d}[n+1, abs(A008683((n+1)/#))*A007427(#)]`
-/

namespace A307445.P18379199082787207991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), |A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat| * A007427 d

end

end A307445.P18379199082787207991

namespace A307445

/-- `∑{d}[n+1, abs(A008683((n+1)/#))*A007427(#)]` -/
def P18379199082787207991.Spec : Prop :=
  ∀ n, P18379199082787207991.a n = A307445 (n + 1)

end A307445

/-! ## A307445.P7376498672748956954

`∏{e}[n+1, A014660(#²)]`
-/

namespace A307445.P7376498672748956954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A014660 (Nat.factorization (f1 n) p ^ 2)

end

end A307445.P7376498672748956954

namespace A307445

/-- `∏{e}[n+1, A014660(#²)]` -/
def P7376498672748956954.Spec : Prop :=
  ∀ n, P7376498672748956954.a n = A307445 (n + 1)

end A307445

/-! ## A307445.P16607653919978112817

`∏{e}[n+1, A015416(#²)]`
-/

namespace A307445.P16607653919978112817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A015416 (Nat.factorization (f1 n) p ^ 2)

end

end A307445.P16607653919978112817

namespace A307445

/-- `∏{e}[n+1, A015416(#²)]` -/
def P16607653919978112817.Spec : Prop :=
  ∀ n, P16607653919978112817.a n = A307445 (n + 1)

end A307445

/-! ## A307445.P7601647288543563356

`∏{e}[n+1, A015500(#²)]`
-/

namespace A307445.P7601647288543563356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A015500 (Nat.factorization (f1 n) p ^ 2)

end

end A307445.P7601647288543563356

namespace A307445

/-- `∏{e}[n+1, A015500(#²)]` -/
def P7601647288543563356.Spec : Prop :=
  ∀ n, P7601647288543563356.a n = A307445 (n + 1)

end A307445

/-! ## A307445.P7164426778284181710

`∑{d}[n+1, #*A347090((n+1)/#)]`
-/

namespace A307445.P7164426778284181710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A347090 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307445.P7164426778284181710

namespace A307445

/-- `∑{d}[n+1, #*A347090((n+1)/#)]` -/
def P7164426778284181710.Spec : Prop :=
  ∀ n, P7164426778284181710.a n = A307445 (n + 1)

end A307445

/-! ## A307445.P5402170561171845855

`A076479(n+1)*A189022(n+1)`
-/

namespace A307445.P5402170561171845855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (n + 1) * A189022 (n + 1)

end

end A307445.P5402170561171845855

namespace A307445

/-- `A076479(n+1)*A189022(n+1)` -/
def P5402170561171845855.Spec : Prop :=
  ∀ n, P5402170561171845855.a n = A307445 (n + 1)

end A307445

/-! ## A307445.P7883362251815359430

`A064179(n+1)*A307430(n+1)`
-/

namespace A307445.P7883362251815359430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (n + 1) * A307430 (n + 1)

end

end A307445.P7883362251815359430

namespace A307445

/-- `A064179(n+1)*A307430(n+1)` -/
def P7883362251815359430.Spec : Prop :=
  ∀ n, P7883362251815359430.a n = A307445 (n + 1)

end A307445

/-! ## A307445.P14761088320194570710

`A189022(n+1)*A257098(n+1)`
-/

namespace A307445.P14761088320194570710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189022 (n + 1) * A257098 (n + 1)

end

end A307445.P14761088320194570710

namespace A307445

/-- `A189022(n+1)*A257098(n+1)` -/
def P14761088320194570710.Spec : Prop :=
  ∀ n, P14761088320194570710.a n = A307445 (n + 1)

end A307445

/-! ## A307445.P5961265113766327335

`A166234(n+1)*A363552(n+1)`
-/

namespace A307445.P5961265113766327335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166234 (n + 1) * A363552 (n + 1)

end

end A307445.P5961265113766327335

namespace A307445

/-- `A166234(n+1)*A363552(n+1)` -/
def P5961265113766327335.Spec : Prop :=
  ∀ n, P5961265113766327335.a n = A307445 (n + 1)

end A307445

/-! ## A307445.P8380428405497022633

`A166234(n+1)*A363553(n+1)`
-/

namespace A307445.P8380428405497022633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166234 (n + 1) * A363553 (n + 1)

end

end A307445.P8380428405497022633

namespace A307445

/-- `A166234(n+1)*A363553(n+1)` -/
def P8380428405497022633.Spec : Prop :=
  ∀ n, P8380428405497022633.a n = A307445 (n + 1)

end A307445

/-! ## A307445.P7942887749766452892

`∏{e}[n+1, A014751((#-A000040(#))²)]`
-/

namespace A307445.P7942887749766452892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A014751 (((Nat.factorization (f1 n) p : ℤ) - A000040 (Nat.factorization (f1 n) p)) ^ 2).toNat

end

end A307445.P7942887749766452892

namespace A307445

/-- `∏{e}[n+1, A014751((#-A000040(#))²)]` -/
def P7942887749766452892.Spec : Prop :=
  ∀ n, P7942887749766452892.a n = A307445 (n + 1)

end A307445

/-! ## A307445.P11988051725500687606

`∑{d}[n+1, A007427(#)*A008966((n+1)/#)]`
-/

namespace A307445.P11988051725500687606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A008966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307445.P11988051725500687606

namespace A307445

/-- `∑{d}[n+1, A007427(#)*A008966((n+1)/#)]` -/
def P11988051725500687606.Spec : Prop :=
  ∀ n, P11988051725500687606.a n = A307445 (n + 1)

end A307445

/-! ## A307445.P15117672126987048711

`∑{d}[n+1, A007428(#)*A034444((n+1)/#)]`
-/

namespace A307445.P15117672126987048711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A034444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307445.P15117672126987048711

namespace A307445

/-- `∑{d}[n+1, A007428(#)*A034444((n+1)/#)]` -/
def P15117672126987048711.Spec : Prop :=
  ∀ n, P15117672126987048711.a n = A307445 (n + 1)

end A307445

/-! ## A307445.P6220732114162355976

`∑{d}[n+1, A046692(#)*A063659((n+1)/#)]`
-/

namespace A307445.P6220732114162355976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A063659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307445.P6220732114162355976

namespace A307445

/-- `∑{d}[n+1, A046692(#)*A063659((n+1)/#)]` -/
def P6220732114162355976.Spec : Prop :=
  ∀ n, P6220732114162355976.a n = A307445 (n + 1)

end A307445

/-! ## A307445.P7901189244852437421

`∑{d}[n+1, A055615(#)*A130107((n+1)/#)]`
-/

namespace A307445.P7901189244852437421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A130107 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307445.P7901189244852437421

namespace A307445

/-- `∑{d}[n+1, A055615(#)*A130107((n+1)/#)]` -/
def P7901189244852437421.Spec : Prop :=
  ∀ n, P7901189244852437421.a n = A307445 (n + 1)

end A307445

/-! ## A307445.P7843966518895826670

`∑{d}[n+1, A048691(#)*A247343((n+1)/#)]`
-/

namespace A307445.P7843966518895826670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d * A247343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307445.P7843966518895826670

namespace A307445

/-- `∑{d}[n+1, A048691(#)*A247343((n+1)/#)]` -/
def P7843966518895826670.Spec : Prop :=
  ∀ n, P7843966518895826670.a n = A307445 (n + 1)

end A307445

/-! ## A307445.P9887191799297375711

`∑{d}[n+1, A035116(#)*A341831((n+1)/#)]`
-/

namespace A307445.P9887191799297375711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035116 d * A341831 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307445.P9887191799297375711

namespace A307445

/-- `∑{d}[n+1, A035116(#)*A341831((n+1)/#)]` -/
def P9887191799297375711.Spec : Prop :=
  ∀ n, P9887191799297375711.a n = A307445 (n + 1)

end A307445

/-! ## A307445.P13522689388920870677

`∑{d}[n+1, A007875(#)*A378213((n+1)/#)]`
-/

namespace A307445.P13522689388920870677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007875 d * A378213 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307445.P13522689388920870677

namespace A307445

/-- `∑{d}[n+1, A007875(#)*A378213((n+1)/#)]` -/
def P13522689388920870677.Spec : Prop :=
  ∀ n, P13522689388920870677.a n = A307445 (n + 1)

end A307445

/-! ## A307445.P634223812289939169

`∑{d}[n+1, A062367(#)*A341832((n+1)/#)]`
-/

namespace A307445.P634223812289939169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062367 d * A341832 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307445.P634223812289939169

namespace A307445

/-- `∑{d}[n+1, A062367(#)*A341832((n+1)/#)]` -/
def P634223812289939169.Spec : Prop :=
  ∀ n, P634223812289939169.a n = A307445 (n + 1)

end A307445

/-!
# A307451: Sum of binary weights of two consecutive Fibonacci numbers minus the binary weight of the following Fibonacci number.

The programs for A307451, the canonical program `A307451.P4194924638858022531` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307451 has offset 2).

The definition of A307451 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A307451.P4194924638858022531

`A011373(n)+A011373(n+1)-A011373(n+2)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A307451

/-- `A011373(n)+A011373(n+1)-A011373(n+2)` -/
def P4194924638858022531.Spec : Prop :=
  ∀ n, P4194924638858022531.a n = A307451 (n + 2)

theorem P4194924638858022531.correct : P4194924638858022531.Spec := by
  intro n
  simp only [A307451, Nat.add_sub_cancel]

end A307451

/-! ## A307451.P14020001305230109580

`A011373(n)-Δ[A011373(n+1)]`
-/

namespace A307451.P14020001305230109580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011373 n - (f1 (n + 1) - f1 n)

end

end A307451.P14020001305230109580

namespace A307451

/-- `A011373(n)-Δ[A011373(n+1)]` -/
def P14020001305230109580.Spec : Prop :=
  ∀ n, P14020001305230109580.a n = A307451 (n + 2)

theorem P14020001305230109580.correct : P14020001305230109580.Spec := by
  intro n
  simp only [A307451, Nat.add_sub_cancel, A307451.P14020001305230109580.f1, A307451.P14020001305230109580.a, A307451.P4194924638858022531.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A307451

/-! ## A307451.P11937457755927446689

`A000120(xor(A051124(n+1), A053602(2*n)))`
-/

namespace A307451.P11937457755927446689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A051124 (n + 1)) (A053602 (2 * n))).toNat

end

end A307451.P11937457755927446689

namespace A307451

/-- `A000120(xor(A051124(n+1), A053602(2*n)))` -/
def P11937457755927446689.Spec : Prop :=
  ∀ n, P11937457755927446689.a n = A307451 (n + 2)

end A307451

/-! ## A307451.P5579960623194146125

`A000120(xor(A051124(n), A123231(2*n+3)))`
-/

namespace A307451.P5579960623194146125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A051124 n) (A123231 (2 * n + 3))).toNat

end

end A307451.P5579960623194146125

namespace A307451

/-- `A000120(xor(A051124(n), A123231(2*n+3)))` -/
def P5579960623194146125.Spec : Prop :=
  ∀ n, P5579960623194146125.a n = A307451 (n + 2)

end A307451

/-! ## A307451.P14543301346042197851

`val(A066526(n+2), 2)`
-/

namespace A307451.P14543301346042197851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A066526 (n + 2)).toNat 2

end

end A307451.P14543301346042197851

namespace A307451

/-- `val(A066526(n+2), 2)` -/
def P14543301346042197851.Spec : Prop :=
  ∀ n, (P14543301346042197851.a n : ℤ) = A307451 (n + 2)

end A307451

/-!
# A307452: Primes p such that the sum of the decimal digits of p^4 is also a prime.

The programs for A307452, there is no canonical definition to state claims against.
-/

/-! ## A307452.P8515174330855501076

`p?[n*A032741(A055565(n))]`
-/

namespace A307452.P8515174330855501076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A032741 (A055565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307452.P8515174330855501076

/-! ## A307452.P16953581395190691902

`record[A006530(root(A135554(n+1), 4))]`
-/

namespace A307452.P16953581395190691902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A135554 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307452.P16953581395190691902

/-! ## A307452.P18303717860128977934

`record[A014963(root(A135554(n+1), 4))]`
-/

namespace A307452.P18303717860128977934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((A135554 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307452.P18303717860128977934

/-! ## A307452.P9410405180340115021

`record[A020639(root(A135554(n+1), 4))]`
-/

namespace A307452.P9410405180340115021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A135554 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307452.P9410405180340115021

/-! ## A307452.P16652844941574479071

`eq[2, A032741(n)+A032741(A055565(n))]`
-/

namespace A307452.P16652844941574479071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + A032741 (A055565 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A307452.P16652844941574479071

/-!
# A307454: a(n) is the number of canonical polygons with 2n edges having 2-fold rotational symmetry.

The programs for A307454, there is no canonical definition to state claims against.
-/

/-! ## A307454.P3180871496491604579

`∑[(n+1)*A147388(2*n+5)]`
-/

namespace A307454.P3180871496491604579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A147388 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307454.P3180871496491604579

/-! ## A307454.P3192731655452096245

`A195185(A151047(n))`
-/

namespace A307454.P3192731655452096245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195185 (A151047 n).toNat

end

end A307454.P3192731655452096245

/-!
# A307457: Longest path length in the n-Apollonian network.

The programs for A307457, the canonical program `A307457.P9082979809045642284` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307457 has offset 1).

The definition of A307457 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A307457.P9082979809045642284

`3*a(n-1)-2*a(n-2)` with `a(0)=3, a(1)=6, a(2)=14`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A307457

/-- `3*a(n-1)-2*a(n-2)` -/
def P9082979809045642284.Spec : Prop :=
  ∀ n, P9082979809045642284.a n = A307457 (n + 1)

theorem P9082979809045642284.correct : P9082979809045642284.Spec := by
  intro n
  simp only [A307457, Nat.add_sub_cancel]

end A307457

/-! ## A307457.P7814573133015427151

`ogf((3-3x+2x^2)/(1-3x+2x^2))`
-/

namespace A307457.P7814573133015427151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -3, 2] [1, -3, 2] n

end

end A307457.P7814573133015427151

namespace A307457

/-- `ogf((3-3x+2x^2)/(1-3x+2x^2))` -/
def P7814573133015427151.Spec : Prop :=
  ∀ n, P7814573133015427151.a n = A307457 (n + 1)

end A307457

/-! ## A307457.P12572427881745216944

`2*or(1, a(n-1))` with `a(0)=3`
-/

namespace A307457.P12572427881745216944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  2 * Nat.lor 1 (a (n - 1))

end

end A307457.P12572427881745216944

namespace A307457

/-- `2*or(1, a(n-1))` -/
def P12572427881745216944.Spec : Prop :=
  ∀ n, (P12572427881745216944.a n : ℤ) = A307457 (n + 1)

end A307457

/-! ## A307457.P12866175822878993863

`lcm(2, or(1, a(n-1)))` with `a(0)=3`
-/

namespace A307457.P12866175822878993863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.lcm 2 (Nat.lor 1 (a (n - 1)))

end

end A307457.P12866175822878993863

namespace A307457

/-- `lcm(2, or(1, a(n-1)))` -/
def P12866175822878993863.Spec : Prop :=
  ∀ n, (P12866175822878993863.a n : ℤ) = A307457 (n + 1)

end A307457

/-! ## A307457.P1847549233017555479

`2*(a(n-1)+1)` with `a(0)=3, a(1)=6`
-/

namespace A307457.P1847549233017555479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 6] fun n a =>
  2 * (a (n - 1) + 1)

end

end A307457.P1847549233017555479

namespace A307457

/-- `2*(a(n-1)+1)` -/
def P1847549233017555479.Spec : Prop :=
  ∀ n, (P1847549233017555479.a n : ℤ) = A307457 (n + 1)

end A307457

/-! ## A307457.P13096138412644035219

`lcm(4, a(n-1))+2` with `a(0)=3, a(1)=6`
-/

namespace A307457.P13096138412644035219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 6] fun n a =>
  Nat.lcm 4 (a (n - 1)) + 2

end

end A307457.P13096138412644035219

namespace A307457

/-- `lcm(4, a(n-1))+2` -/
def P13096138412644035219.Spec : Prop :=
  ∀ n, (P13096138412644035219.a n : ℤ) = A307457 (n + 1)

end A307457

/-! ## A307457.P3867179229242764308

`2*xor(1, a(n-1))` with `a(0)=3, a(1)=6`
-/

namespace A307457.P3867179229242764308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 6] fun n a =>
  2 * Nat.xor 1 (a (n - 1))

end

end A307457.P3867179229242764308

namespace A307457

/-- `2*xor(1, a(n-1))` -/
def P3867179229242764308.Spec : Prop :=
  ∀ n, (P3867179229242764308.a n : ℤ) = A307457 (n + 1)

end A307457

/-! ## A307457.P7903226911248348124

`∑[2*a(n-1)]` with `a(0)=3, a(1)=3, a(2)=8`
-/

namespace A307457.P7903226911248348124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 3, 8] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307457.P7903226911248348124

namespace A307457

/-- `∑[2*a(n-1)]` -/
def P7903226911248348124.Spec : Prop :=
  ∀ n, (P7903226911248348124.a n : ℤ) = A307457 (n + 1)

end A307457

/-! ## A307457.P8300058553274872457

`or(2^n, ∑[2^(n+1)])`
-/

namespace A307457.P8300058553274872457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 ^ n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A307457.P8300058553274872457

namespace A307457

/-- `or(2^n, ∑[2^(n+1)])` -/
def P8300058553274872457.Spec : Prop :=
  ∀ n, (P8300058553274872457.a n : ℤ) = A307457 (n + 1)

end A307457

/-! ## A307457.P14373041415993931635

`∑[2^(n+1)]+floor(acot(n))`
-/

namespace A307457.P14373041415993931635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A307457.P14373041415993931635

namespace A307457

/-- `∑[2^(n+1)]+floor(acot(n))` -/
def P14373041415993931635.Spec : Prop :=
  ∀ n, P14373041415993931635.a n = A307457 (n + 1)

end A307457

/-! ## A307457.P9600363166108474087

`record[2*a(n-1)]-2` with `a(0)=5, a(1)=1`
-/

namespace A307457.P9600363166108474087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - 2

end

end A307457.P9600363166108474087

namespace A307457

/-- `record[2*a(n-1)]-2` -/
def P9600363166108474087.Spec : Prop :=
  ∀ n, P9600363166108474087.a n = A307457 (n + 1)

end A307457

/-! ## A307457.P5448878964708588701

`record[a(n-1)+2^n]` with `a(0)=3, a(1)=2`
-/

namespace A307457.P5448878964708588701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  f1 (n - 1) + 2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307457.P5448878964708588701

namespace A307457

/-- `record[a(n-1)+2^n]` -/
def P5448878964708588701.Spec : Prop :=
  ∀ n, (P5448878964708588701.a n : ℤ) = A307457 (n + 1)

end A307457

/-! ## A307457.P4077907158599374835

`floor(2^(n+2)-atan(n+1))`
-/

namespace A307457.P4077907158599374835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ (n + 2) : ℝ) - Real.arctan (n + 1 : ℝ)⌋

end

end A307457.P4077907158599374835

namespace A307457

/-- `floor(2^(n+2)-atan(n+1))` -/
def P4077907158599374835.Spec : Prop :=
  ∀ n, P4077907158599374835.a n = A307457 (n + 1)

end A307457

/-! ## A307457.P5924809370663558657

`2^(n+2)-ceil(atan(n+1))`
-/

namespace A307457.P5924809370663558657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - ⌈Real.arctan (n + 1 : ℝ)⌉

end

end A307457.P5924809370663558657

namespace A307457

/-- `2^(n+2)-ceil(atan(n+1))` -/
def P5924809370663558657.Spec : Prop :=
  ∀ n, P5924809370663558657.a n = A307457 (n + 1)

end A307457

/-! ## A307457.P7961389416288820501

`4-2*(1-a(n-1))` with `a(0)=3, a(1)=6`
-/

namespace A307457.P7961389416288820501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 6] fun n a =>
  4 - 2 * (1 - a (n - 1))

end

end A307457.P7961389416288820501

namespace A307457

/-- `4-2*(1-a(n-1))` -/
def P7961389416288820501.Spec : Prop :=
  ∀ n, P7961389416288820501.a n = A307457 (n + 1)

end A307457

/-! ## A307457.P6497756645419807360

`a(n-1)+2^(n+1)` with `a(0)=3, a(1)=6`
-/

namespace A307457.P6497756645419807360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 6] fun n a =>
  a (n - 1) + 2 ^ (n + 1)

end

end A307457.P6497756645419807360

namespace A307457

/-- `a(n-1)+2^(n+1)` -/
def P6497756645419807360.Spec : Prop :=
  ∀ n, (P6497756645419807360.a n : ℤ) = A307457 (n + 1)

end A307457

/-! ## A307457.P6761816808846583798

`∑[2^(n+1)]+C(2, n+2)`
-/

namespace A307457.P6761816808846583798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose 2 (n + 2)

end

end A307457.P6761816808846583798

namespace A307457

/-- `∑[2^(n+1)]+C(2, n+2)` -/
def P6761816808846583798.Spec : Prop :=
  ∀ n, (P6761816808846583798.a n : ℤ) = A307457 (n + 1)

end A307457

/-! ## A307457.P14793478042428058917

`xor(a(n-1)+2, a(n-1))` with `a(0)=3`
-/

namespace A307457.P14793478042428058917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.xor (a (n - 1) + 2) (a (n - 1))

end

end A307457.P14793478042428058917

namespace A307457

/-- `xor(a(n-1)+2, a(n-1))` -/
def P14793478042428058917.Spec : Prop :=
  ∀ n, (P14793478042428058917.a n : ℤ) = A307457 (n + 1)

end A307457

/-! ## A307457.P10977429676789133775

`∑[2^(n+1)]+round(acot(n+1))`
-/

namespace A307457.P10977429676789133775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + SequenceMachineLib.roundAway (SequenceMachineLib.acot (n + 1 : ℝ))

end

end A307457.P10977429676789133775

namespace A307457

/-- `∑[2^(n+1)]+round(acot(n+1))` -/
def P10977429676789133775.Spec : Prop :=
  ∀ n, P10977429676789133775.a n = A307457 (n + 1)

end A307457

/-! ## A307457.P15988090748126983067

`floor(∑[2^(n+1)]+1/(n+1))`
-/

namespace A307457.P15988090748126983067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + 1 / (n + 1 : ℚ)⌋

end

end A307457.P15988090748126983067

namespace A307457

/-- `floor(∑[2^(n+1)]+1/(n+1))` -/
def P15988090748126983067.Spec : Prop :=
  ∀ n, P15988090748126983067.a n = A307457 (n + 1)

end A307457

/-!
# A307459: Longest path length in the n X n antelope graph.

The programs for A307459, there is no canonical definition to state claims against.
-/

/-! ## A307459.P7364666619418747532

`A274848(n+1)%A056363(n)`
-/

namespace A307459.P7364666619418747532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274848 (n + 1)) (A056363 n)

end

end A307459.P7364666619418747532

/-! ## A307459.P3752097191630093053

`A284065(n+1)%A095892(n)`
-/

namespace A307459.P3752097191630093053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284065 (n + 1)) (A095892 n)

end

end A307459.P3752097191630093053

/-! ## A307459.P18413539522562157520

`A153792(A153820(n))%A049871(n)`
-/

namespace A307459.P18413539522562157520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153792 (A153820 n).toNat) (A049871 n)

end

end A307459.P18413539522562157520

/-! ## A307459.P11413089524168194572

`A285981(A123291(n+1))+A285981(n)`
-/

namespace A307459.P11413089524168194572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285981 (A123291 (n + 1)).toNat + A285981 n

end

end A307459.P11413089524168194572

/-! ## A307459.P12314623666337697331

`A137845(n+1)%A195177(A271270(n))`
-/

namespace A307459.P12314623666337697331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137845 (n + 1)) (A195177 (A271270 n).toNat)

end

end A307459.P12314623666337697331

/-!
# A307464: Number of Catalan words of length n avoiding the pattern 000.

The programs for A307464, the canonical program `A307464.P5883354235068503648` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307464 has offset 0).

The definition of A307464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307464.P12180593080635161911

`ogf((1-2x^2)/(1-x-3x^2+x^3))`
-/

namespace A307464.P12180593080635161911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2] [1, -1, -3, 1] n

end

end A307464.P12180593080635161911

namespace A307464

/-- `ogf((1-2x^2)/(1-x-3x^2+x^3))` -/
def P12180593080635161911.Spec : Prop :=
  ∀ n, P12180593080635161911.a n = A307464 n

end A307464

/-! ## A307464.P5883354235068503648

`3*a(n-2)+a(n-1)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A307464

/-- `3*a(n-2)+a(n-1)-a(n-3)` -/
def P5883354235068503648.Spec : Prop :=
  ∀ n, P5883354235068503648.a n = A307464 n

theorem P5883354235068503648.correct : P5883354235068503648.Spec := by
  intro n
  simp only [A307464]

end A307464

/-! ## A307464.P1586430873783294863

`a(n-1)-(a(n-3)-3*a(n-2))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A307464.P1586430873783294863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) - (a (n - 3) - 3 * a (n - 2))

end

end A307464.P1586430873783294863

namespace A307464

/-- `a(n-1)-(a(n-3)-3*a(n-2))` -/
def P1586430873783294863.Spec : Prop :=
  ∀ n, P1586430873783294863.a n = A307464 n

end A307464

/-! ## A307464.P11225463575663102224

`a(n-1)+a(n-2)+a(n-2)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A307464.P11225463575663102224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) + (a (n - 2) - a (n - 3))))

end

end A307464.P11225463575663102224

namespace A307464

/-- `a(n-1)+a(n-2)+a(n-2)+a(n-2)-a(n-3)` -/
def P11225463575663102224.Spec : Prop :=
  ∀ n, P11225463575663102224.a n = A307464 n

end A307464

/-! ## A307464.P4702741399783523538

`a(n-1)-(a(n-3)-a(n-2)-a(n-2)-a(n-2))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A307464.P4702741399783523538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 2) - a (n - 2) - a (n - 2))

end

end A307464.P4702741399783523538

namespace A307464

/-- `a(n-1)-(a(n-3)-a(n-2)-a(n-2)-a(n-2))` -/
def P4702741399783523538.Spec : Prop :=
  ∀ n, P4702741399783523538.a n = A307464 n

end A307464

/-! ## A307464.P11324069996069168313

`A087640(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A307464.P11324069996069168313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A087640 (n - 1) + a (n - 1)

end

end A307464.P11324069996069168313

namespace A307464

/-- `A087640(n-1)+a(n-1)` -/
def P11324069996069168313.Spec : Prop :=
  ∀ n, P11324069996069168313.a n = A307464 n

end A307464

/-! ## A307464.P6719475960816404868

`A382683(n)+A382683(n)-A125691(n)`
-/

namespace A307464.P6719475960816404868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382683 n + (A382683 n - A125691 n)

end

end A307464.P6719475960816404868

namespace A307464

/-- `A382683(n)+A382683(n)-A125691(n)` -/
def P6719475960816404868.Spec : Prop :=
  ∀ n, P6719475960816404868.a n = A307464 n

end A307464

/-! ## A307464.P13739395010839949336

`∑[A087640(n)]-A087640(n)%A030186(n)`
-/

namespace A307464.P13739395010839949336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087640 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.tmod (A087640 n) (A030186 n)

end

end A307464.P13739395010839949336

namespace A307464

/-- `∑[A087640(n)]-A087640(n)%A030186(n)` -/
def P13739395010839949336.Spec : Prop :=
  ∀ n, P13739395010839949336.a n = A307464 n

end A307464

/-!
# A307465: Number of Catalan words of length n avoiding the pattern 110.

The programs for A307465, the canonical program `A307465.P3080160631820080051` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307465 has offset 0).

The definition of A307465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307465.P5722048788360815158

`ogf((1-3x+2x^2+x^3)/(1-4x+4x^2-x^4))`
-/

namespace A307465.P5722048788360815158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 2, 1] [1, -4, 4, 0, -1] n

end

end A307465.P5722048788360815158

namespace A307465

/-- `ogf((1-3x+2x^2+x^3)/(1-4x+4x^2-x^4))` -/
def P5722048788360815158.Spec : Prop :=
  ∀ n, P5722048788360815158.a n = A307465 n

end A307465

/-! ## A307465.P3080160631820080051

`∑[2*a(n-1)+a(n-2)+1]` with `a(0)=1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A307465

/-- `∑[2*a(n-1)+a(n-2)+1]` -/
def P3080160631820080051.Spec : Prop :=
  ∀ n, (P3080160631820080051.a n : ℤ) = A307465 n

theorem P3080160631820080051.correct : P3080160631820080051.Spec := by
  intro n
  simp only [A307465]

end A307465

/-! ## A307465.P2174217348508351768

`2*a(n-1)-3+a(n-2)+n` with `a(0)=1, a(1)=1`
-/

namespace A307465.P2174217348508351768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * a (n - 1) - 3 + (a (n - 2) + (n : ℤ))

end

end A307465.P2174217348508351768

namespace A307465

/-- `2*a(n-1)-3+a(n-2)+n` -/
def P2174217348508351768.Spec : Prop :=
  ∀ n, P2174217348508351768.a n = A307465 n

end A307465

/-! ## A307465.P13959522777707294102

`2*a(n-1)-(3-a(n-2)-n)` with `a(0)=1, a(1)=1`
-/

namespace A307465.P13959522777707294102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * a (n - 1) - (3 - a (n - 2) - (n : ℤ))

end

end A307465.P13959522777707294102

namespace A307465

/-- `2*a(n-1)-(3-a(n-2)-n)` -/
def P13959522777707294102.Spec : Prop :=
  ∀ n, P13959522777707294102.a n = A307465 n

end A307465

/-! ## A307465.P3814678904386014379

`∑[a(n-1)+1+a(n-1)+a(n-2)]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A307465.P3814678904386014379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 1) + 1 + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307465.P3814678904386014379

namespace A307465

/-- `∑[a(n-1)+1+a(n-1)+a(n-2)]` -/
def P3814678904386014379.Spec : Prop :=
  ∀ n, (P3814678904386014379.a n : ℤ) = A307465 n

theorem P3814678904386014379.correct : P3814678904386014379.Spec := by
  intro n
  simp only [A307465, Nat.add_sub_cancel, A307465.P3814678904386014379.f1, A307465.P3814678904386014379.a, A307465.P3080160631820080051.f1, A307465.P3080160631820080051.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A307465

/-! ## A307465.P6561612947551392035

`a(n-1)-3+a(n-1)+a(n-2)+n` with `a(0)=1, a(1)=1`
-/

namespace A307465.P6561612947551392035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - 3 + (a (n - 1) + (a (n - 2) + (n : ℤ)))

end

end A307465.P6561612947551392035

namespace A307465

/-- `a(n-1)-3+a(n-1)+a(n-2)+n` -/
def P6561612947551392035.Spec : Prop :=
  ∀ n, P6561612947551392035.a n = A307465 n

end A307465

/-! ## A307465.P11966277816981143269

`a(n-1)-(3-a(n-1)-a(n-2)-n)` with `a(0)=1, a(1)=1`
-/

namespace A307465.P11966277816981143269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - (3 - a (n - 1) - a (n - 2) - (n : ℤ))

end

end A307465.P11966277816981143269

namespace A307465

/-- `a(n-1)-(3-a(n-1)-a(n-2)-n)` -/
def P11966277816981143269.Spec : Prop :=
  ∀ n, P11966277816981143269.a n = A307465 n

end A307465

/-! ## A307465.P9070971341255833675

`A100131(n)-n`
-/

namespace A307465.P9070971341255833675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100131 n - (n : ℤ)

end

end A307465.P9070971341255833675

namespace A307465

/-- `A100131(n)-n` -/
def P9070971341255833675.Spec : Prop :=
  ∀ n, P9070971341255833675.a n = A307465 n

end A307465

/-! ## A307465.P18069088748302013057

`∑[A171842(n)]-n`
-/

namespace A307465.P18069088748302013057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A307465.P18069088748302013057

namespace A307465

/-- `∑[A171842(n)]-n` -/
def P18069088748302013057.Spec : Prop :=
  ∀ n, P18069088748302013057.a n = A307465 n

end A307465

/-! ## A307465.P12275972819771903480

`∑[A293004(n)/2]+1`
-/

namespace A307465.P12275972819771903480
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293004 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A307465.P12275972819771903480

namespace A307465

/-- `∑[A293004(n)/2]+1` -/
def P12275972819771903480.Spec : Prop :=
  ∀ n, P12275972819771903480.a n = (A307465 n : ℚ)

end A307465

/-! ## A307465.P10147046213752744268

`∑[∑[abs(A176981(n))]]-n`
-/

namespace A307465.P10147046213752744268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176981 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A307465.P10147046213752744268

namespace A307465

/-- `∑[∑[abs(A176981(n))]]-n` -/
def P10147046213752744268.Spec : Prop :=
  ∀ n, P10147046213752744268.a n = A307465 n

end A307465

/-! ## A307465.P6670006714181099419

`A005409(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A307465.P6670006714181099419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A005409 n + a (n - 2)

end

end A307465.P6670006714181099419

namespace A307465

/-- `A005409(n)+a(n-2)` -/
def P6670006714181099419.Spec : Prop :=
  ∀ n, P6670006714181099419.a n = A307465 n

end A307465

/-! ## A307465.P14114645621761767929

`∑[∑[A000129(abs(1-n))]]-n`
-/

namespace A307465.P14114645621761767929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A307465.P14114645621761767929

namespace A307465

/-- `∑[∑[A000129(abs(1-n))]]-n` -/
def P14114645621761767929.Spec : Prop :=
  ∀ n, P14114645621761767929.a n = A307465 n

end A307465

/-! ## A307465.P3800902557422051798

`A048739(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A307465.P3800902557422051798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A048739 (n - 2) + a (n - 1)

end

end A307465.P3800902557422051798

namespace A307465

/-- `A048739(n-2)+a(n-1)` -/
def P3800902557422051798.Spec : Prop :=
  ∀ n, P3800902557422051798.a n = A307465 n

end A307465

/-! ## A307465.P12414759030984085662

`A113225(n)-A004526(n)`
-/

namespace A307465.P12414759030984085662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113225 n - A004526 n

end

end A307465.P12414759030984085662

namespace A307465

/-- `A113225(n)-A004526(n)` -/
def P12414759030984085662.Spec : Prop :=
  ∀ n, P12414759030984085662.a n = A307465 n

end A307465

/-! ## A307465.P2279731781490131714

`A116404(n)-A004524(n)`
-/

namespace A307465.P2279731781490131714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116404 n - A004524 n

end

end A307465.P2279731781490131714

namespace A307465

/-- `A116404(n)-A004524(n)` -/
def P2279731781490131714.Spec : Prop :=
  ∀ n, P2279731781490131714.a n = A307465 n

end A307465

/-! ## A307465.P6026266844388686315

`∑[A247311(A016789(n))]+1`
-/

namespace A307465.P6026266844388686315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247311 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A307465.P6026266844388686315

namespace A307465

/-- `∑[A247311(A016789(n))]+1` -/
def P6026266844388686315.Spec : Prop :=
  ∀ n, P6026266844388686315.a n = A307465 n

end A307465

/-! ## A307465.P7294955131883088235

`A113225(n)-A002265(2*n)`
-/

namespace A307465.P7294955131883088235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113225 n - A002265 (2 * n)

end

end A307465.P7294955131883088235

namespace A307465

/-- `A113225(n)-A002265(2*n)` -/
def P7294955131883088235.Spec : Prop :=
  ∀ n, P7294955131883088235.a n = A307465 n

end A307465

/-! ## A307465.P6117694819327051535

`A008619(n)+A105635(n)-n`
-/

namespace A307465.P6117694819327051535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + (A105635 n - (n : ℤ))

end

end A307465.P6117694819327051535

namespace A307465

/-- `A008619(n)+A105635(n)-n` -/
def P6117694819327051535.Spec : Prop :=
  ∀ n, P6117694819327051535.a n = A307465 n

end A307465

/-! ## A307465.P4682826237051302945

`A110654(n)+A113225(n)-n`
-/

namespace A307465.P4682826237051302945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + (A113225 n - (n : ℤ))

end

end A307465.P4682826237051302945

namespace A307465

/-- `A110654(n)+A113225(n)-n` -/
def P4682826237051302945.Spec : Prop :=
  ∀ n, P4682826237051302945.a n = A307465 n

end A307465

/-!
# A307466: Number of Catalan words of length n avoiding the pattern 210.

The programs for A307466, the canonical program `A307466.P4025654233009935254` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307466 has offset 0).

The definition of A307466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307466.P9379939833629020382

`abs(A322504(n))-A131577(n)`
-/

namespace A307466.P9379939833629020382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A322504 n| - A131577 n

end

end A307466.P9379939833629020382

namespace A307466

/-- `abs(A322504(n))-A131577(n)` -/
def P9379939833629020382.Spec : Prop :=
  ∀ n, P9379939833629020382.a n = A307466 n

end A307466

/-! ## A307466.P9700347163363748163

`abs(A322504(n))-Δ[A011782(n)]`
-/

namespace A307466.P9700347163363748163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A322504 n| - (f1 (n + 1) - f1 n)

end

end A307466.P9700347163363748163

namespace A307466

/-- `abs(A322504(n))-Δ[A011782(n)]` -/
def P9700347163363748163.Spec : Prop :=
  ∀ n, P9700347163363748163.a n = A307466 n

end A307466

/-! ## A307466.P4025654233009935254

`∑[A085810(A028310(n))-A166444(n)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A307466

/-- `∑[A085810(A028310(n))-A166444(n)]` -/
def P4025654233009935254.Spec : Prop :=
  ∀ n, P4025654233009935254.a n = A307466 n

theorem P4025654233009935254.correct : P4025654233009935254.Spec := by
  intro n
  simp only [A307466]

end A307466

/-! ## A307466.P9772685508548557875

`A085810(n+1)-(A215404(n)+A131577(n))`
-/

namespace A307466.P9772685508548557875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085810 (n + 1) - (A215404 n + A131577 n)

end

end A307466.P9772685508548557875

namespace A307466

/-- `A085810(n+1)-(A215404(n)+A131577(n))` -/
def P9772685508548557875.Spec : Prop :=
  ∀ n, P9772685508548557875.a n = A307466 n

end A307466

/-! ## A307466.P15877878205800527778

`A085810(n+1)-(A215404(n)+Δ[A011782(n)])`
-/

namespace A307466.P15877878205800527778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085810 (n + 1) - (A215404 n + (f1 (n + 1) - f1 n))

end

end A307466.P15877878205800527778

namespace A307466

/-- `A085810(n+1)-(A215404(n)+Δ[A011782(n)])` -/
def P15877878205800527778.Spec : Prop :=
  ∀ n, P15877878205800527778.a n = A307466 n

end A307466

/-!
# A307468: Cogrowth sequence for the Heisenberg group.

The programs for A307468, there is no canonical definition to state claims against.
-/

/-! ## A307468.P15403782792394348873

`record[A352838(n)]`
-/

namespace A307468.P15403782792394348873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307468.P15403782792394348873

/-!
# A307469: a(n) = 2*a(n-1) + 6*a(n-2) for n >= 2, a(0) = 1, a(1) = 5.

The programs for A307469, the canonical program `A307469.P6834174734093477014` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307469 has offset 0).

The definition of A307469 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+6*a(n-2)` (program `A307469.P6834174734093477014`, by `A307469.P6834174734093477014.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A307469.P6834174734093477014

`2*a(n-1)+6*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A307469

/-- `2*a(n-1)+6*a(n-2)` -/
def P6834174734093477014.Spec : Prop :=
  ∀ n, (P6834174734093477014.a n : ℤ) = A307469 n

theorem P6834174734093477014.correct : P6834174734093477014.Spec := by
  intro n
  simp only [A307469]

end A307469

/-! ## A307469.P2159719005598899320

`3*A083099(n)+A083099(n+1)`
-/

namespace A307469.P2159719005598899320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A083099 n + A083099 (n + 1)

end

end A307469.P2159719005598899320

namespace A307469

/-- `3*A083099(n)+A083099(n+1)` -/
def P2159719005598899320.Spec : Prop :=
  ∀ n, P2159719005598899320.a n = A307469 n

end A307469

/-! ## A307469.P8713783426704658608

`ogf((1+3x)/(1-2x-6x^2))`
-/

namespace A307469.P8713783426704658608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -2, -6] n

end

end A307469.P8713783426704658608

namespace A307469

/-- `ogf((1+3x)/(1-2x-6x^2))` -/
def P8713783426704658608.Spec : Prop :=
  ∀ n, P8713783426704658608.a n = A307469 n

end A307469

/-! ## A307469.P7299137755661642539

`2*(4*a(n-2)-(a(n-2)-a(n-1)))` with `a(0)=1, a(1)=5`
-/

namespace A307469.P7299137755661642539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  2 * (4 * a (n - 2) - (a (n - 2) - a (n - 1)))

end

end A307469.P7299137755661642539

namespace A307469

/-- `2*(4*a(n-2)-(a(n-2)-a(n-1)))` -/
def P7299137755661642539.Spec : Prop :=
  ∀ n, P7299137755661642539.a n = A307469 n

end A307469

/-! ## A307469.P17414175643892633850

`A083099(n+2)/2`
-/

namespace A307469.P17414175643892633850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083099 (n + 2) : ℚ) / 2

end

end A307469.P17414175643892633850

namespace A307469

/-- `A083099(n+2)/2` -/
def P17414175643892633850.Spec : Prop :=
  ∀ n, P17414175643892633850.a n = (A307469 n : ℚ)

end A307469

/-! ## A307469.P3508048554820502199

`∑[round(A083098(n+1)/2)]`
-/

namespace A307469.P3508048554820502199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A083098 (n + 1) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307469.P3508048554820502199

namespace A307469

/-- `∑[round(A083098(n+1)/2)]` -/
def P3508048554820502199.Spec : Prop :=
  ∀ n, P3508048554820502199.a n = A307469 n

end A307469

/-! ## A307469.P3752027178873012267

`A384712(n)+A083099(n)`
-/

namespace A307469.P3752027178873012267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384712 n + A083099 n

end

end A307469.P3752027178873012267

namespace A307469

/-- `A384712(n)+A083099(n)` -/
def P3752027178873012267.Spec : Prop :=
  ∀ n, P3752027178873012267.a n = A307469 n

end A307469

/-! ## A307469.P14998413329964562850

`A384711(n)+A274520(n)`
-/

namespace A307469.P14998413329964562850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384711 n + A274520 n

end

end A307469.P14998413329964562850

namespace A307469

/-- `A384711(n)+A274520(n)` -/
def P14998413329964562850.Spec : Prop :=
  ∀ n, P14998413329964562850.a n = A307469 n

end A307469

/-! ## A307469.P17543860678605301972

`A133592(n+1)-A384711(n)`
-/

namespace A307469.P17543860678605301972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133592 (n + 1) - A384711 n

end

end A307469.P17543860678605301972

namespace A307469

/-- `A133592(n+1)-A384711(n)` -/
def P17543860678605301972.Spec : Prop :=
  ∀ n, P17543860678605301972.a n = A307469 n

end A307469

/-! ## A307469.P6981596429146335195

`A002536(n+2)*A016116(n)`
-/

namespace A307469.P6981596429146335195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002536 (n + 2) * A016116 n

end

end A307469.P6981596429146335195

namespace A307469

/-- `A002536(n+2)*A016116(n)` -/
def P6981596429146335195.Spec : Prop :=
  ∀ n, P6981596429146335195.a n = A307469 n

end A307469

/-! ## A307469.P16872285718102319204

`A083099(n)+A384711(n)+A083099(n)`
-/

namespace A307469.P16872285718102319204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083099 n + (A384711 n + A083099 n)

end

end A307469.P16872285718102319204

namespace A307469

/-- `A083099(n)+A384711(n)+A083099(n)` -/
def P16872285718102319204.Spec : Prop :=
  ∀ n, P16872285718102319204.a n = A307469 n

end A307469

/-! ## A307469.P13738900815943263400

`A384712(n)+A384712(n)-A384711(n)`
-/

namespace A307469.P13738900815943263400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384712 n + (A384712 n - A384711 n)

end

end A307469.P13738900815943263400

namespace A307469

/-- `A384712(n)+A384712(n)-A384711(n)` -/
def P13738900815943263400.Spec : Prop :=
  ∀ n, P13738900815943263400.a n = A307469 n

end A307469

/-! ## A307469.P2846393121684777383

`A083099(n+1)+A274520(n)+A083099(n)`
-/

namespace A307469.P2846393121684777383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083099 (n + 1) + (A274520 n + A083099 n)

end

end A307469.P2846393121684777383

namespace A307469

/-- `A083099(n+1)+A274520(n)+A083099(n)` -/
def P2846393121684777383.Spec : Prop :=
  ∀ n, P2846393121684777383.a n = A307469 n

end A307469

/-! ## A307469.P1516094835417351880

`A133592(n+1)-(A083099(n+1)+A083099(n))`
-/

namespace A307469.P1516094835417351880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133592 (n + 1) - (A083099 (n + 1) + A083099 n)

end

end A307469.P1516094835417351880

namespace A307469

/-- `A133592(n+1)-(A083099(n+1)+A083099(n))` -/
def P1516094835417351880.Spec : Prop :=
  ∀ n, P1516094835417351880.a n = A307469 n

end A307469

/-! ## A307469.P13183547759475909824

`A274520(n+2)/4`
-/

namespace A307469.P13183547759475909824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274520 (n + 2) : ℚ) / 4

end

end A307469.P13183547759475909824

namespace A307469

/-- `A274520(n+2)/4` -/
def P13183547759475909824.Spec : Prop :=
  ∀ n, P13183547759475909824.a n = (A307469 n : ℚ)

end A307469

/-! ## A307469.P7392955128832951417

`A291008(n+2)/14`
-/

namespace A307469.P7392955128832951417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291008 (n + 2) : ℚ) / 14

end

end A307469.P7392955128832951417

namespace A307469

/-- `A291008(n+2)/14` -/
def P7392955128832951417.Spec : Prop :=
  ∀ n, P7392955128832951417.a n = (A307469 n : ℚ)

end A307469

/-!
# A307471: SanD primes with d = 14: p and p+d are both prime and digit sum A007953(p*(p+d)) = d.

The programs for A307471, there is no canonical definition to state claims against.
-/

/-! ## A307471.P7958344519056147920

`A307479(A287216(n)+A032555(n+1))`
-/

namespace A307471.P7958344519056147920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307479 (A287216 n + A032555 (n + 1)).toNat

end

end A307471.P7958344519056147920

/-! ## A307471.P12389140868815774055

`A307479(A287216(n)+A032559(n+1))`
-/

namespace A307471.P12389140868815774055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307479 (A287216 n + A032559 (n + 1)).toNat

end

end A307471.P12389140868815774055

/-! ## A307471.P8574055501158960662

`A307479(A287216(n)+A039616(2*n+3))`
-/

namespace A307471.P8574055501158960662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307479 (A287216 n + A039616 (2 * n + 3)).toNat

end

end A307471.P8574055501158960662

/-! ## A307471.P6077967744828281145

`p?[A335139(2*n+1)-14]`
-/

namespace A307471.P6077967744828281145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335139 (2 * n + 1) - 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307471.P6077967744828281145

/-!
# A307479: SanD primes: primes p such that p+d is also prime and digit_sum(p(p+d)) = d, for some d.

The programs for A307479, there is no canonical definition to state claims against.
-/

/-! ## A307479.P11234038069412796309

`A020639(A308821(n+1))`
-/

namespace A307479.P11234038069412796309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A308821 (n + 1)).toNat

end

end A307479.P11234038069412796309

/-! ## A307479.P9133933663832366258

`A067695(or(2, A308821(n+1)))`
-/

namespace A307479.P9133933663832366258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067695 (Int.lor 2 (A308821 (n + 1))).toNat

end

end A307479.P9133933663832366258

/-! ## A307479.P2065400393515675417

`A074828(or(2, A308821(n+1)))`
-/

namespace A307479.P2065400393515675417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (Int.lor 2 (A308821 (n + 1))).toNat

end

end A307479.P2065400393515675417

/-!
# A307481: Numbers that can be expressed as x+2y+z such that x, y, z, x+y, y+z, and x+2y+z are all positive squares.

The programs for A307481, there is no canonical definition to state claims against.
-/

/-! ## A307481.P14815819488042227825

`A338890(n+1)²`
-/

namespace A307481.P14815819488042227825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338890 (n + 1) ^ 2

end

end A307481.P14815819488042227825

/-! ## A307481.P1613727485613458701

`A338890(n+1)^(2%A002144(n+1))`
-/

namespace A307481.P1613727485613458701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338890 (n + 1) : ℚ) ^ (Int.tmod 2 (A002144 (n + 1)) : ℤ)

end

end A307481.P1613727485613458701

/-! ## A307481.P836264542271930178

`A338890(A000027(n+1))*A338890(n+1)`
-/

namespace A307481.P836264542271930178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338890 (A000027 (n + 1)).toNat * A338890 (n + 1)

end

end A307481.P836264542271930178

/-! ## A307481.P18403701144859290007

`(A338890(n+1)%A008846(A004431(n+1)))^2`
-/

namespace A307481.P18403701144859290007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338890 (n + 1)) (A008846 (A004431 (n + 1)).toNat) ^ 2

end

end A307481.P18403701144859290007

/-! ## A307481.P7035754854693346478

`A338890(n+1)^A000040(A001222(A140726(n+1)))`
-/

namespace A307481.P7035754854693346478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338890 (n + 1) : ℚ) ^ (A000040 (A001222 (A140726 (n + 1)).toNat).toNat : ℤ)

end

end A307481.P7035754854693346478

/-! ## A307481.P6854655164865294765

`A338890(n+1)^(A005089(A084646(n+1))+1)`
-/

namespace A307481.P6854655164865294765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338890 (n + 1) : ℚ) ^ (A005089 (A084646 (n + 1)).toNat + 1 : ℤ)

end

end A307481.P6854655164865294765

/-!
# A307482: First coordinate, divided by 2, of path in rotated lattice corresponding to A307446 and A307447. A307483 gives second coordinate.

The programs for A307482, there is no canonical definition to state claims against.
-/

/-! ## A307482.P11868639001863149289

`A352746(A352734(n+1)+A033273(n+1))`
-/

namespace A307482.P11868639001863149289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352746 (A352734 (n + 1) + A033273 (n + 1)).toNat

end

end A307482.P11868639001863149289

/-! ## A307482.P16073562399593521794

`A352746(A352734(n+1)+A292886(n+1))`
-/

namespace A307482.P16073562399593521794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352746 (A352734 (n + 1) + A292886 (n + 1)).toNat

end

end A307482.P16073562399593521794

/-!
# A307485: A permutation of the nonnegative integers: one odd, two even, four odd, eight even, etc.; extended to nonnegative integer with a(0) = 0.

The programs for A307485, the canonical program `A307485.P15072943444614128588` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307485 has offset 0).

The definition of A307485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307485.P15072943444614128588

`ceil((5*n-(∑[∏{p}[2*n, n*val(#², 2)]]-n))/3)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A307485

/-- `ceil((5*n-(∑[∏{p}[2*n, n*val(#², 2)]]-n))/3)` -/
def P15072943444614128588.Spec : Prop :=
  ∀ n, P15072943444614128588.a n = A307485 n

theorem P15072943444614128588.correct : P15072943444614128588.Spec := by
  intro n
  simp only [A307485]

end A307485

/-! ## A307485.P2282711046979010440

`floor(2*(A006257(n)+n)/3)`
-/

namespace A307485.P2282711046979010440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * (A006257 n + (n : ℤ)) : ℚ) / 3⌋

end

end A307485.P2282711046979010440

namespace A307485

/-- `floor(2*(A006257(n)+n)/3)` -/
def P2282711046979010440.Spec : Prop :=
  ∀ n, P2282711046979010440.a n = A307485 n

end A307485

/-! ## A307485.P7025812114279978131

`2*n-A000975(ceil(log2(n+1)))`
-/

namespace A307485.P7025812114279978131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A000975 ⌈Real.logb 2 (n + 1 : ℝ)⌉.toNat

end

end A307485.P7025812114279978131

namespace A307485

/-- `2*n-A000975(ceil(log2(n+1)))` -/
def P7025812114279978131.Spec : Prop :=
  ∀ n, P7025812114279978131.a n = A307485 n

end A307485

/-! ## A307485.P2582502153908131646

`ceil((A006257(2*n)+2*n)/3)`
-/

namespace A307485.P2582502153908131646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006257 (2 * n) + (2 * n : ℤ) : ℚ) / 3⌉

end

end A307485.P2582502153908131646

namespace A307485

/-- `ceil((A006257(2*n)+2*n)/3)` -/
def P2582502153908131646.Spec : Prop :=
  ∀ n, P2582502153908131646.a n = A307485 n

end A307485

/-! ## A307485.P9983419206647729621

`2*n-A004523(2^ceil(log2(n+1)))`
-/

namespace A307485.P9983419206647729621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A004523 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat

end

end A307485.P9983419206647729621

namespace A307485

/-- `2*n-A004523(2^ceil(log2(n+1)))` -/
def P9983419206647729621.Spec : Prop :=
  ∀ n, P9983419206647729621.a n = A307485 n

end A307485

/-! ## A307485.P8073975655619567559

`2*n-A322042(2^ceil(log2(n+1)))`
-/

namespace A307485.P8073975655619567559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A322042 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat

end

end A307485.P8073975655619567559

namespace A307485

/-- `2*n-A322042(2^ceil(log2(n+1)))` -/
def P8073975655619567559.Spec : Prop :=
  ∀ n, P8073975655619567559.a n = A307485 n

end A307485

/-! ## A307485.P9498691802494488558

`2*n-A006068(A003817(n))`
-/

namespace A307485.P9498691802494488558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A006068 (A003817 n).toNat

end

end A307485.P9498691802494488558

namespace A307485

/-- `2*n-A006068(A003817(n))` -/
def P9498691802494488558.Spec : Prop :=
  ∀ n, P9498691802494488558.a n = A307485 n

end A307485

/-! ## A307485.P14001853488553112141

`A004396(A006257(n)+n)`
-/

namespace A307485.P14001853488553112141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A006257 n + (n : ℤ)).toNat

end

end A307485.P14001853488553112141

namespace A307485

/-- `A004396(A006257(n)+n)` -/
def P14001853488553112141.Spec : Prop :=
  ∀ n, P14001853488553112141.a n = A307485 n

end A307485

/-! ## A307485.P13980475209441964536

`ceil((a(n-1)+2)/A014963(2*n))` with `a(0)=0`
-/

namespace A307485.P13980475209441964536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈(a (n - 1) + 2 : ℚ) / (A014963 (2 * n) : ℚ)⌉

end

end A307485.P13980475209441964536

namespace A307485

/-- `ceil((a(n-1)+2)/A014963(2*n))` -/
def P13980475209441964536.Spec : Prop :=
  ∀ n, P13980475209441964536.a n = A307485 n

end A307485

/-! ## A307485.P12921934067631878922

`round(A230892(6*n+2)/6)`
-/

namespace A307485.P12921934067631878922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A230892 (6 * n + 2) : ℚ) / 6)

end

end A307485.P12921934067631878922

namespace A307485

/-- `round(A230892(6*n+2)/6)` -/
def P12921934067631878922.Spec : Prop :=
  ∀ n, P12921934067631878922.a n = A307485 n

end A307485

/-! ## A307485.P3320790997674094749

`floor(A080541(3*n+1)/3)`
-/

namespace A307485.P3320790997674094749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A080541 (3 * n + 1) : ℚ) / 3⌋

end

end A307485.P3320790997674094749

namespace A307485

/-- `floor(A080541(3*n+1)/3)` -/
def P3320790997674094749.Spec : Prop :=
  ∀ n, P3320790997674094749.a n = A307485 n

end A307485

/-! ## A307485.P16048620483463781673

`A002264(A273105(2*n)+n+1)`
-/

namespace A307485.P16048620483463781673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A273105 (2 * n) + (n + 1 : ℤ)).toNat

end

end A307485.P16048620483463781673

namespace A307485

/-- `A002264(A273105(2*n)+n+1)` -/
def P16048620483463781673.Spec : Prop :=
  ∀ n, P16048620483463781673.a n = A307485 n

end A307485

/-! ## A307485.P8699778540061093671

`A002264(A006257(2*n+1)+2*n)`
-/

namespace A307485.P8699778540061093671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A006257 (2 * n + 1) + (2 * n : ℤ)).toNat

end

end A307485.P8699778540061093671

namespace A307485

/-- `A002264(A006257(2*n+1)+2*n)` -/
def P8699778540061093671.Spec : Prop :=
  ∀ n, P8699778540061093671.a n = A307485 n

end A307485

/-! ## A307485.P14544013595516881796

`2*n-A154443(A053644(n))`
-/

namespace A307485.P14544013595516881796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A154443 (A053644 n).toNat

end

end A307485.P14544013595516881796

namespace A307485

/-- `2*n-A154443(A053644(n))` -/
def P14544013595516881796.Spec : Prop :=
  ∀ n, P14544013595516881796.a n = A307485 n

end A307485

/-! ## A307485.P5971806072023311208

`2*n-A154443(A072376(2*n))`
-/

namespace A307485.P5971806072023311208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A154443 (A072376 (2 * n)).toNat

end

end A307485.P5971806072023311208

namespace A307485

/-- `2*n-A154443(A072376(2*n))` -/
def P5971806072023311208.Spec : Prop :=
  ∀ n, P5971806072023311208.a n = A307485 n

end A307485

/-! ## A307485.P7990026526753436691

`round(A080541(6*n+1)/6)`
-/

namespace A307485.P7990026526753436691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A080541 (6 * n + 1) : ℚ) / 6)

end

end A307485.P7990026526753436691

namespace A307485

/-- `round(A080541(6*n+1)/6)` -/
def P7990026526753436691.Spec : Prop :=
  ∀ n, P7990026526753436691.a n = A307485 n

end A307485

/-!
# A307487: G.f. A(x) satisfies: A(x) = 1 + Sum_{k>=1} mu(k)*x^k*A(x)^k/(1 - x^k*A(x)^k)^2, where mu() is the Möbius function (A008683).

The programs for A307487, there is no canonical definition to state claims against.
-/

/-! ## A307487.P13656341472612098214

`A212380(n+2)-Δ[A233583(A230090(n+1))]`
-/

namespace A307487.P13656341472612098214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A230090 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212380 (n + 2) - (f1 (n + 1) - f1 n)

end

end A307487.P13656341472612098214

/-! ## A307487.P17564610077146042482

`A216447(A032551(n+1))+A179006(n)`
-/

namespace A307487.P17564610077146042482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216447 (A032551 (n + 1)).toNat + A179006 n

end

end A307487.P17564610077146042482

/-! ## A307487.P16912486332317952188

`A212380(n+2)-A111429(A000078(n))`
-/

namespace A307487.P16912486332317952188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212380 (n + 2) - A111429 (A000078 n).toNat

end

end A307487.P16912486332317952188

/-! ## A307487.P14774923729311125179

`A212380(n+2)-A180649(A212384(n))`
-/

namespace A307487.P14774923729311125179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212380 (n + 2) - A180649 (A212384 n).toNat

end

end A307487.P14774923729311125179

/-!
# A307488: G.f. A(x) satisfies: A(x) = 1 + Sum_{k>=1} mu(k)^2*x^k*A(x)^k/(1 - x^k*A(x)^k)^2, where mu() is the Möbius function (A008683).

The programs for A307488, there is no canonical definition to state claims against.
-/

/-! ## A307488.P16539599582988700887

`A026405(A367258(n+1))`
-/

namespace A307488.P16539599582988700887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026405 (A367258 (n + 1)).toNat

end

end A307488.P16539599582988700887

/-! ## A307488.P7131933910026630809

`A308358(A363546(n)+1)+A000108(n)`
-/

namespace A307488.P7131933910026630809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308358 (A363546 n + 1).toNat + A000108 n

end

end A307488.P7131933910026630809

/-! ## A307488.P16781623453478292615

`A065033(A075364(n+1)-A011782(n))`
-/

namespace A307488.P16781623453478292615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A075364 (n + 1) - A011782 n).toNat

end

end A307488.P16781623453478292615

/-!
# A307489: G.f. A(x) satisfies: A(x) = 1/(1 - 2*x*A(x) - x*A(x)/(1 - x*A(x)/(1 - x*A(x)/(1 - ...)))), a continued fraction.

The programs for A307489, there is no canonical definition to state claims against.
-/

/-! ## A307489.P6028134889626058500

`A386938(n)/(n+1)`
-/

namespace A307489.P6028134889626058500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386938 n : ℚ) / (n + 1 : ℚ)

end

end A307489.P6028134889626058500

/-! ## A307489.P17857595775629817892

`A035324(A001844(n))/(n+1)`
-/

namespace A307489.P17857595775629817892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035324 (A001844 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A307489.P17857595775629817892

/-! ## A307489.P5762968857356273201

`A188109(∑[n]+1)`
-/

namespace A307489.P5762968857356273201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188109 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A307489.P5762968857356273201

/-! ## A307489.P11213284868152657582

`record[A188109(n+1)]`
-/

namespace A307489.P11213284868152657582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307489.P11213284868152657582

/-! ## A307489.P7009750890409011315

`record[ratio[A188109(A028310(n))]]`
-/

namespace A307489.P7009750890409011315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188109 (A028310 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307489.P7009750890409011315

/-!
# A307490: G.f. A(x) satisfies: A(x) = 1/(1 - x*A(x) - x^2*A(x)^2/(1 - x^2*A(x)^2/(1 - x^2*A(x)^2/(1 - ...)))), a continued fraction.

The programs for A307490, there is no canonical definition to state claims against.
-/

/-! ## A307490.P14354857089439557344

`A054336(∑[4*n])/(n+1)`
-/

namespace A307490.P14354857089439557344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054336 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A307490.P14354857089439557344

/-! ## A307490.P12737355742859769113

`A195120(∑[A150566(n)])`
-/

namespace A307490.P12737355742859769113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A307490.P12737355742859769113

/-! ## A307490.P10614676331822852010

`A110656(7*A132840(n))`
-/

namespace A307490.P10614676331822852010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (7 * A132840 n).toNat

end

end A307490.P10614676331822852010

/-!
# A307491: Numbers that are both centered triangular and tetrahedral.

The programs for A307491, there is no canonical definition to state claims against.
-/

/-! ## A307491.P8349596885943943863

`∩[A005448(n+1), A000292(n)]`
-/

namespace A307491.P8349596885943943863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307491.P8349596885943943863

/-!
# A307494: Expansion of Product_{j>=1} 1/(1 - j*(-1 + Product_{k>=1} 1/(1 - k*x^k))^j).

The programs for A307494, there is no canonical definition to state claims against.
-/

/-! ## A307494.P15224162393654912256

`A356954(ceil(∑[sqrt(n)]))`
-/

namespace A307494.P15224162393654912256
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356954 ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉.toNat

end

end A307494.P15224162393654912256

/-! ## A307494.P12721074328804314434

`∏{e}[ceil(4^n/2), A356954(#)]`
-/

namespace A307494.P12721074328804314434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 ^ n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A356954 (Nat.factorization (f1 n).natAbs p)

end

end A307494.P12721074328804314434

/-!
# A307495: Expansion of Sum_{k>=0} k!*((1 - sqrt(1 - 4*x))/2)^k.

The programs for A307495, there is no canonical definition to state claims against.
-/

/-! ## A307495.P11183036006165738105

`A140709(2*n²+1)`
-/

namespace A307495.P11183036006165738105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140709 (2 * n ^ 2 + 1)

end

end A307495.P11183036006165738105

/-! ## A307495.P9781319979741109008

`A285703(A007318(n)*A038155(n)+1)`
-/

namespace A307495.P9781319979741109008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285703 (A007318 n * A038155 n + 1).toNat

end

end A307495.P9781319979741109008

/-! ## A307495.P14440432085816560865

`A285703(A038155(n)*A066094(n)+1)`
-/

namespace A307495.P14440432085816560865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285703 (A038155 n * A066094 n + 1).toNat

end

end A307495.P14440432085816560865

/-!
# A307496: Expansion of Product_{k>=1} (1 + ((1 - sqrt(1 - 4*x))/2)^k).

The programs for A307496, there is no canonical definition to state claims against.
-/

/-! ## A307496.P15642590947297253101

`A248231(A289593(n+1))`
-/

namespace A307496.P15642590947297253101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A289593 (n + 1)).toNat

end

end A307496.P15642590947297253101

/-! ## A307496.P12965128803313605850

`A343609(11*A148364(n))`
-/

namespace A307496.P12965128803313605850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (11 * A148364 n).toNat

end

end A307496.P12965128803313605850

/-! ## A307496.P16414706244619758015

`A343609(lcm(11, A148364(n)))`
-/

namespace A307496.P16414706244619758015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (Int.lcm 11 (A148364 n))

end

end A307496.P16414706244619758015

/-! ## A307496.P9939654844527043339

`A191305(2*A102366(n+1))`
-/

namespace A307496.P9939654844527043339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191305 (2 * A102366 (n + 1)).toNat

end

end A307496.P9939654844527043339

/-!
# A307497: Expansion of Product_{k>=1} (1+x^k)^((-1)^k*k^k).

The programs for A307497, there is no canonical definition to state claims against.
-/

/-! ## A307497.P2810866949614582960

`∑[A055615(∑[A261053(n)])]`
-/

namespace A307497.P2810866949614582960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261053 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307497.P2810866949614582960

/-!
# A307498: Numbers k such that the digits of k in base 10 are a permutation of those of k in some other base.

The programs for A307498, there is no canonical definition to state claims against.
-/

/-! ## A307498.P6023508852255145962

`∩[A308493(n+1), A343951(n+1)]`
-/

namespace A307498.P6023508852255145962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307498.P6023508852255145962

/-!
# A307499: The number of primes between two consecutive prime Lucas numbers, bounds excluded.

The programs for A307499, there is no canonical definition to state claims against.
-/

/-! ## A307499.P12901926589685658985

`Δ[A000720(p?[A000032(n)])]-1`
-/

namespace A307499.P12901926589685658985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A307499.P12901926589685658985

/-! ## A307499.P47742258314853950

`Δ[A055396(p?[A000032(n)])]-1`
-/

namespace A307499.P47742258314853950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A307499.P47742258314853950

/-! ## A307499.P6721254518013763329

`Δ[A061395(A005479(n+1))]-1`
-/

namespace A307499.P6721254518013763329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A005479 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A307499.P6721254518013763329

/-! ## A307499.P10088435378708150371

`Δ[record[A263111(A050120(n+1))]]-1`
-/

namespace A307499.P10088435378708150371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263111 (A050120 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A307499.P10088435378708150371

/-! ## A307499.P6102146912229367598

`Δ[record[A263111(A050122(n+1))]]-1`
-/

namespace A307499.P6102146912229367598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263111 (A050122 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A307499.P6102146912229367598

