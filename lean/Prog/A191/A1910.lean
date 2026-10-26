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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A191001: Indices k where A191620(k) = A191751(k).

The programs for A191001, there is no canonical definition to state claims against.
-/

/-! ## A191001.P2392548812620636074

`eq[A191620(n+1), A191751(n+1)]+1`
-/

namespace A191001.P2392548812620636074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191751 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A191001.P2392548812620636074

/-! ## A191001.P6655252479155423812

`∑[A141021(A325455(n+4))]`
-/

namespace A191001.P6655252479155423812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141021 (A325455 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191001.P6655252479155423812

/-! ## A191001.P16144149765020428545

`∑[A004526(∏{e}[A000142(n)+2+n, #+1])]`
-/

namespace A191001.P16144149765020428545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + 2 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191001.P16144149765020428545

/-! ## A191001.P3613080757080724966

`∑[A000005(or(n+2, n!))/2]`
-/

namespace A191001.P3613080757080724966
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (Nat.lor (n + 2) (Nat.factorial n)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191001.P3613080757080724966

/-! ## A191001.P4980756303401000348

`∑[A000005(xor(n+2, n!))/2]`
-/

namespace A191001.P4980756303401000348
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (Nat.xor (n + 2) (Nat.factorial n)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191001.P4980756303401000348

/-!
# A191002: Completely multiplicative function with a(prime(k)) = prime(k)*prime(k+1).

The programs for A191002, the canonical program `A191002.P17774142683052749299` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191002 has offset 1).

The definition of A191002 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A191002.P17774142683052749299

`(n+1)*A003961(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A191002

/-- `(n+1)*A003961(n+1)` -/
def P17774142683052749299.Spec : Prop :=
  ∀ n, P17774142683052749299.a n = A191002 (n + 1)

theorem P17774142683052749299.correct : P17774142683052749299.Spec := by
  intro n
  simp only [A191002, Nat.add_sub_cancel]

end A191002

/-! ## A191002.P15360104911958060167

`(n+1)*(A253885(n)+1)`
-/

namespace A191002.P15360104911958060167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A253885 n + 1)

end

end A191002.P15360104911958060167

namespace A191002

/-- `(n+1)*(A253885(n)+1)` -/
def P15360104911958060167.Spec : Prop :=
  ∀ n, P15360104911958060167.a n = A191002 (n + 1)

end A191002

/-! ## A191002.P14770285503910304082

`(n+1)*sqrt(A379481(n+1))`
-/

namespace A191002.P14770285503910304082
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A379481 (n + 1) : ℝ)

end

end A191002.P14770285503910304082

namespace A191002

/-- `(n+1)*sqrt(A379481(n+1))` -/
def P14770285503910304082.Spec : Prop :=
  ∀ n, P14770285503910304082.a n = (A191002 (n + 1) : ℝ)

end A191002

/-! ## A191002.P7863570923084385259

`(n+1)*(A243501(n+1)-1)`
-/

namespace A191002.P7863570923084385259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A243501 (n + 1) - 1)

end

end A191002.P7863570923084385259

namespace A191002

/-- `(n+1)*(A243501(n+1)-1)` -/
def P7863570923084385259.Spec : Prop :=
  ∀ n, P7863570923084385259.a n = A191002 (n + 1)

end A191002

/-! ## A191002.P12888516392183008753

`(n+1)/3*A249734(n+1)`
-/

namespace A191002.P12888516392183008753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A249734 (n + 1) : ℚ)

end

end A191002.P12888516392183008753

namespace A191002

/-- `(n+1)/3*A249734(n+1)` -/
def P12888516392183008753.Spec : Prop :=
  ∀ n, P12888516392183008753.a n = (A191002 (n + 1) : ℚ)

end A191002

/-! ## A191002.P1469131206654344818

`(n+1)*∑{d}[n+1, A003972(#)]`
-/

namespace A191002.P1469131206654344818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A003972 d)

end

end A191002.P1469131206654344818

namespace A191002

/-- `(n+1)*∑{d}[n+1, A003972(#)]` -/
def P1469131206654344818.Spec : Prop :=
  ∀ n, P1469131206654344818.a n = A191002 (n + 1)

end A191002

/-! ## A191002.P3824579699603061340

`(n+1)*(2*A048673(n+1)-1)`
-/

namespace A191002.P3824579699603061340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 * A048673 (n + 1) - 1)

end

end A191002.P3824579699603061340

namespace A191002

/-- `(n+1)*(2*A048673(n+1)-1)` -/
def P3824579699603061340.Spec : Prop :=
  ∀ n, P3824579699603061340.a n = A191002 (n + 1)

end A191002

/-! ## A191002.P15322468007663136585

`(n+1)*(A336853(n+1)+n+1)`
-/

namespace A191002.P15322468007663136585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A336853 (n + 1) + (n + 1 : ℤ))

end

end A191002.P15322468007663136585

namespace A191002

/-- `(n+1)*(A336853(n+1)+n+1)` -/
def P15322468007663136585.Spec : Prop :=
  ∀ n, P15322468007663136585.a n = A191002 (n + 1)

end A191002

/-! ## A191002.P3934588453940031668

`∑{d}[n+1, #*A353789((n+1)/#)]`
-/

namespace A191002.P3934588453940031668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A353789 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A191002.P3934588453940031668

namespace A191002

/-- `∑{d}[n+1, #*A353789((n+1)/#)]` -/
def P3934588453940031668.Spec : Prop :=
  ∀ n, P3934588453940031668.a n = A191002 (n + 1)

end A191002

/-! ## A191002.P1368508973172237485

`(n+1)*(A252748(n+1)+2*(n+1))`
-/

namespace A191002.P1368508973172237485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A252748 (n + 1) + (2 * (n + 1) : ℤ))

end

end A191002.P1368508973172237485

namespace A191002

/-- `(n+1)*(A252748(n+1)+2*(n+1))` -/
def P1368508973172237485.Spec : Prop :=
  ∀ n, P1368508973172237485.a n = A191002 (n + 1)

end A191002

/-! ## A191002.P17249761560211438560

`A000265(n+1)*A283980(n+1)`
-/

namespace A191002.P17249761560211438560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A283980 (n + 1)

end

end A191002.P17249761560211438560

namespace A191002

/-- `A000265(n+1)*A283980(n+1)` -/
def P17249761560211438560.Spec : Prop :=
  ∀ n, P17249761560211438560.a n = A191002 (n + 1)

end A191002

/-! ## A191002.P12727821434513969185

`A045965(n+1)/2*A103517(n)`
-/

namespace A191002.P12727821434513969185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045965 (n + 1) : ℚ) / 2 * (A103517 n : ℚ)

end

end A191002.P12727821434513969185

namespace A191002

/-- `A045965(n+1)/2*A103517(n)` -/
def P12727821434513969185.Spec : Prop :=
  ∀ n, P12727821434513969185.a n = (A191002 (n + 1) : ℚ)

end A191002

/-! ## A191002.P16730566217082620182

`∑{d}[n+1, A023900(#)*A347124((n+1)/#)]`
-/

namespace A191002.P16730566217082620182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A347124 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A191002.P16730566217082620182

namespace A191002

/-- `∑{d}[n+1, A023900(#)*A347124((n+1)/#)]` -/
def P16730566217082620182.Spec : Prop :=
  ∀ n, P16730566217082620182.a n = A191002 (n + 1)

end A191002

/-! ## A191002.P3562702502428544703

`∑{d}[n+1, A055615(#)*A341528((n+1)/#)]`
-/

namespace A191002.P3562702502428544703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A341528 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A191002.P3562702502428544703

namespace A191002

/-- `∑{d}[n+1, A055615(#)*A341528((n+1)/#)]` -/
def P3562702502428544703.Spec : Prop :=
  ∀ n, P3562702502428544703.a n = A191002 (n + 1)

end A191002

/-! ## A191002.P8948524170327147292

`∑{d}[n+1, A341529(#)*A346234((n+1)/#)]`
-/

namespace A191002.P8948524170327147292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341529 d * A346234 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A191002.P8948524170327147292

namespace A191002

/-- `∑{d}[n+1, A341529(#)*A346234((n+1)/#)]` -/
def P8948524170327147292.Spec : Prop :=
  ∀ n, P8948524170327147292.a n = A191002 (n + 1)

end A191002

/-! ## A191002.P939128253407754054

`∑{d}[n+1, A347125(#)*A378220((n+1)/#)]`
-/

namespace A191002.P939128253407754054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347125 d * A378220 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A191002.P939128253407754054

namespace A191002

/-- `∑{d}[n+1, A347125(#)*A378220((n+1)/#)]` -/
def P939128253407754054.Spec : Prop :=
  ∀ n, P939128253407754054.a n = A191002 (n + 1)

end A191002

/-! ## A191002.P3052742740369448993

`A161151(2*n+1)*A283980(n+1)`
-/

namespace A191002.P3052742740369448993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161151 (2 * n + 1) * A283980 (n + 1)

end

end A191002.P3052742740369448993

namespace A191002

/-- `A161151(2*n+1)*A283980(n+1)` -/
def P3052742740369448993.Spec : Prop :=
  ∀ n, P3052742740369448993.a n = A191002 (n + 1)

end A191002

/-! ## A191002.P16550920824585754260

`(n+1)*A389909(2*(n+1))`
-/

namespace A191002.P16550920824585754260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A389909 (2 * (n + 1))

end

end A191002.P16550920824585754260

namespace A191002

/-- `(n+1)*A389909(2*(n+1))` -/
def P16550920824585754260.Spec : Prop :=
  ∀ n, P16550920824585754260.a n = A191002 (n + 1)

end A191002

/-! ## A191002.P9645702706037726349

`(n+1)*A045965(2*(n+1))/3`
-/

namespace A191002.P9645702706037726349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A045965 (2 * (n + 1)) : ℚ) / 3)

end

end A191002.P9645702706037726349

namespace A191002

/-- `(n+1)*A045965(2*(n+1))/3` -/
def P9645702706037726349.Spec : Prop :=
  ∀ n, P9645702706037726349.a n = (A191002 (n + 1) : ℚ)

end A191002

/-! ## A191002.P816751876085099793

`(n+1)*A243500(A243502(n+1))`
-/

namespace A191002.P816751876085099793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A243500 (A243502 (n + 1)).toNat

end

end A191002.P816751876085099793

namespace A191002

/-- `(n+1)*A243500(A243502(n+1))` -/
def P816751876085099793.Spec : Prop :=
  ∀ n, P816751876085099793.a n = A191002 (n + 1)

end A191002

/-!
# A191003: E.g.f. arctan(x/cos(x)) (odd powers only).

The programs for A191003, there is no canonical definition to state claims against.
-/

/-! ## A191003.P5628852615415716691

`A009443(Δ[n²])*A033999(n)`
-/

namespace A191003.P5628852615415716691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009443 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A033999 n

end

end A191003.P5628852615415716691

/-! ## A191003.P17888672187934385148

`A009443(2*n+1)/A033999(n)`
-/

namespace A191003.P17888672187934385148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009443 (2 * n + 1) : ℚ) / (A033999 n : ℚ)

end

end A191003.P17888672187934385148

/-! ## A191003.P13238859768706727277

`A009443(2*n+1)*A033999(2*n+1)*A033999(n+1)`
-/

namespace A191003.P13238859768706727277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009443 (2 * n + 1) * A033999 (2 * n + 1) * A033999 (n + 1)

end

end A191003.P13238859768706727277

/-! ## A191003.P4738836935525048216

`A009384(2*n+1)*A009443(2*n+1)`
-/

namespace A191003.P4738836935525048216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009384 (2 * n + 1) * A009443 (2 * n + 1)

end

end A191003.P4738836935525048216

/-! ## A191003.P1099983848816088738

`A009443(A005408(n))/A009384(2*n+1)`
-/

namespace A191003.P1099983848816088738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009443 (A005408 n).toNat : ℚ) / (A009384 (2 * n + 1) : ℚ)

end

end A191003.P1099983848816088738

/-!
# A191005: E.g.f. cos(x)/(cos(x)-x).

The programs for A191005, there is no canonical definition to state claims against.
-/

/-! ## A191005.P7198620442522547157

`A028310(n)*A200309(A028310(n)-1)`
-/

namespace A191005.P7198620442522547157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A200309 (A028310 n - 1).toNat

end

end A191005.P7198620442522547157

/-! ## A191005.P13786469139278646164

`abs(A274922(n))*A200309(A004273(n)-n)`
-/

namespace A191005.P13786469139278646164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A274922 n| * A200309 (A004273 n - (n : ℤ)).toNat

end

end A191005.P13786469139278646164

/-! ## A191005.P250426228619571294

`A134478(∑[n])*A200309(A004273(n)-n)`
-/

namespace A191005.P250426228619571294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (∑ j ∈ Finset.range (n + 1), f1 j) * A200309 (A004273 n - (n : ℤ)).toNat

end

end A191005.P250426228619571294

/-! ## A191005.P44500208230318718

`A000007(n)+n*A200309(A004273(n)-n)`
-/

namespace A191005.P44500208230318718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) * A200309 (A004273 n - (n : ℤ)).toNat

end

end A191005.P44500208230318718

/-! ## A191005.P13286578307470729650

`A008619(A004275(n))*A200309(A004273(n)-n)`
-/

namespace A191005.P13286578307470729650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004275 n).toNat * A200309 (A004273 n - (n : ℤ)).toNat

end

end A191005.P13286578307470729650

/-! ## A191005.P15918303802465111410

`A144151(A000124(n))*A200309(A004273(n)-n)`
-/

namespace A191005.P15918303802465111410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144151 (A000124 n).toNat * A200309 (A004273 n - (n : ℤ)).toNat

end

end A191005.P15918303802465111410

/-!
# A191006: Number of n X n symmetric binary matrices with each 1 adjacent to exactly 1 diagonally neighboring 1.

The programs for A191006, there is no canonical definition to state claims against.
-/

/-! ## A191006.P4423610513269463646

`∏[a(n-1)+a(n-3)]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A191006.P4423610513269463646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  f1 (n - 1) + f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A191006.P4423610513269463646

/-! ## A191006.P441900325493199625

`∏[Δ[A048585(n)]]`
-/

namespace A191006.P441900325493199625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048585 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A191006.P441900325493199625

/-! ## A191006.P6753504146309433148

`∏[Δ[A048588(n)]]`
-/

namespace A191006.P6753504146309433148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048588 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A191006.P6753504146309433148

/-! ## A191006.P3954895633118120384

`∏[record[A078012(n)]]`
-/

namespace A191006.P3954895633118120384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A191006.P3954895633118120384

/-! ## A191006.P14096967750299575921

`∏[A068921(n+1)]`
-/

namespace A191006.P14096967750299575921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A191006.P14096967750299575921

/-!
# A191007: a(n) = n*2^(n+1) + (2^(n+3)+(-1)^n)/3.

The programs for A191007, the canonical program `A191007.P14348734800263367869` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191007 has offset 0).

The definition of A191007 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191007.P5159278918191630885

`n*2^(n+1)+(2^(n+3)+(-1)^n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A191007.P5159278918191630885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * 2 ^ (n + 1) : ℚ) + ((2 ^ (n + 3) : ℤ) + (-1) ^ n : ℚ) / 3

end

end A191007.P5159278918191630885

namespace A191007

/-- `n*2^(n+1)+(2^(n+3)+(-1)^n)/3` -/
def P5159278918191630885.Spec : Prop :=
  ∀ n, P5159278918191630885.a n = (A191007 n : ℚ)

end A191007

/-! ## A191007.P14348734800263367869

`3*A045883(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A191007

/-- `3*A045883(n+1)` -/
def P14348734800263367869.Spec : Prop :=
  ∀ n, P14348734800263367869.a n = A191007 n

theorem P14348734800263367869.correct : P14348734800263367869.Spec := by
  intro n
  simp only [A191007]

end A191007

/-! ## A191007.P14086429634577291592

`ogf(3/(1-3x+4x^3))`
-/

namespace A191007.P14086429634577291592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3] [1, -3, 0, 4] n

end

end A191007.P14086429634577291592

namespace A191007

/-- `ogf(3/(1-3x+4x^3))` -/
def P14086429634577291592.Spec : Prop :=
  ∀ n, P14086429634577291592.a n = A191007 n

end A191007

/-! ## A191007.P2911853563276608500

`∑[3*Δ[A045883(n)]]`
-/

namespace A191007.P2911853563276608500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045883 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191007.P2911853563276608500

namespace A191007

/-- `∑[3*Δ[A045883(n)]]` -/
def P2911853563276608500.Spec : Prop :=
  ∀ n, P2911853563276608500.a n = A191007 n

end A191007

/-! ## A191007.P900304359267205008

`∑[3*A059570(n+1)]`
-/

namespace A191007.P900304359267205008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A059570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191007.P900304359267205008

namespace A191007

/-- `∑[3*A059570(n+1)]` -/
def P900304359267205008.Spec : Prop :=
  ∀ n, P900304359267205008.a n = A191007 n

end A191007

/-! ## A191007.P2639412576384536067

`3*∑[∑[abs(A084219(n))]]`
-/

namespace A191007.P2639412576384536067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084219 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A191007.P2639412576384536067

namespace A191007

/-- `3*∑[∑[abs(A084219(n))]]` -/
def P2639412576384536067.Spec : Prop :=
  ∀ n, P2639412576384536067.a n = A191007 n

end A191007

/-! ## A191007.P1698765741183964719

`3/2*A140960(n+2)`
-/

namespace A191007.P1698765741183964719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A140960 (n + 2) : ℚ)

end

end A191007.P1698765741183964719

namespace A191007

/-- `3/2*A140960(n+2)` -/
def P1698765741183964719.Spec : Prop :=
  ∀ n, P1698765741183964719.a n = (A191007 n : ℚ)

end A191007

/-! ## A191007.P3019892097499848408

`∑[3*(A140960(n)+2^n)]`
-/

namespace A191007.P3019892097499848408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A140960 n + (2 ^ n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191007.P3019892097499848408

namespace A191007

/-- `∑[3*(A140960(n)+2^n)]` -/
def P3019892097499848408.Spec : Prop :=
  ∀ n, P3019892097499848408.a n = A191007 n

end A191007

/-! ## A191007.P10024719501429294205

`3*∑[A001792(n)-a(n-1)]` with `a(0)=1`
-/

namespace A191007.P10024719501429294205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A001792 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A191007.P10024719501429294205

namespace A191007

/-- `3*∑[A001792(n)-a(n-1)]` -/
def P10024719501429294205.Spec : Prop :=
  ∀ n, P10024719501429294205.a n = A191007 n

end A191007

/-!
# A191008: a(n) = (n*3^(n+1)+((5*3^(n+1)+(-1)^(n))/4))/4.

The programs for A191008, the canonical program `A191008.P2616592787066840827` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191008 has offset 0).

The definition of A191008 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n*3^(n+1)+(5*3^(n+1)+(-1)^n)/4)/4` (program `A191008.P11821990041106590525`, by `A191008.P11821990041106590525.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191008.P2616592787066840827

`5*a(n-1)-3*a(n-2)-9*a(n-3)` with `a(0)=1, a(1)=5, a(2)=22`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191008

/-- `5*a(n-1)-3*a(n-2)-9*a(n-3)` -/
def P2616592787066840827.Spec : Prop :=
  ∀ n, P2616592787066840827.a n = A191008 n

theorem P2616592787066840827.correct : P2616592787066840827.Spec := by
  intro n
  simp only [A191008]

end A191008

/-! ## A191008.P11821990041106590525

`(n*3^(n+1)+(5*3^(n+1)+(-1)^n)/4)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A191008.P11821990041106590525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * 3 ^ (n + 1) : ℚ) + ((5 * 3 ^ (n + 1) : ℤ) + (-1) ^ n : ℚ) / 4) / 4

end

end A191008.P11821990041106590525

namespace A191008

/-- `(n*3^(n+1)+(5*3^(n+1)+(-1)^n)/4)/4` -/
def P11821990041106590525.Spec : Prop :=
  ∀ n, P11821990041106590525.a n = (A191008 n : ℚ)

theorem P11821990041106590525.correct : P11821990041106590525.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A191008, Nat.add_sub_cancel, A191008.P11821990041106590525.a, A191008.P2616592787066840827.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A191008, Nat.add_sub_cancel, A191008.P11821990041106590525.a, A191008.P2616592787066840827.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A191008

/-! ## A191008.P13817680468130168601

`ogf(1/(1-5x+3x^2+9x^3))`
-/

namespace A191008.P13817680468130168601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -5, 3, 9] n

end

end A191008.P13817680468130168601

namespace A191008

/-- `ogf(1/(1-5x+3x^2+9x^3))` -/
def P13817680468130168601.Spec : Prop :=
  ∀ n, P13817680468130168601.a n = A191008 n

end A191008

/-! ## A191008.P12104615836960015233

`(n+1)*(3^n-a(n-1)/(n+1))` with `a(0)=1`
-/

namespace A191008.P12104615836960015233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) * ((3 ^ n : ℚ) - a (n - 1) / (n + 1 : ℚ))

end

end A191008.P12104615836960015233

namespace A191008

/-- `(n+1)*(3^n-a(n-1)/(n+1))` -/
def P12104615836960015233.Spec : Prop :=
  ∀ n, P12104615836960015233.a n = (A191008 n : ℚ)

end A191008

/-! ## A191008.P8276683644934625120

`∑[A119916(n+1)]`
-/

namespace A191008.P8276683644934625120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191008.P8276683644934625120

namespace A191008

/-- `∑[A119916(n+1)]` -/
def P8276683644934625120.Spec : Prop :=
  ∀ n, P8276683644934625120.a n = A191008 n

end A191008

/-! ## A191008.P14262316494059255260

`A081038(n)+a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A191008.P14262316494059255260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  A081038 n + a (n - 2)

end

end A191008.P14262316494059255260

namespace A191008

/-- `A081038(n)+a(n-2)` -/
def P14262316494059255260.Spec : Prop :=
  ∀ n, P14262316494059255260.a n = A191008 n

end A191008

/-! ## A191008.P849878377230858136

`∑[A046717(n)+3*a(n-1)]` with `a(0)=1`
-/

namespace A191008.P849878377230858136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A046717 n + 3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191008.P849878377230858136

namespace A191008

/-- `∑[A046717(n)+3*a(n-1)]` -/
def P849878377230858136.Spec : Prop :=
  ∀ n, P849878377230858136.a n = A191008 n

end A191008

/-! ## A191008.P10113188607186051750

`(n+1)*3^n-a(n-1)` with `a(0)=1`
-/

namespace A191008.P10113188607186051750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1) * 3 ^ n : ℤ) - a (n - 1)

end

end A191008.P10113188607186051750

namespace A191008

/-- `(n+1)*3^n-a(n-1)` -/
def P10113188607186051750.Spec : Prop :=
  ∀ n, P10113188607186051750.a n = A191008 n

end A191008

/-! ## A191008.P3398627604214912128

`abs(A246798(∑[n]))`
-/

namespace A191008.P3398627604214912128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A246798 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A191008.P3398627604214912128

namespace A191008

/-- `abs(A246798(∑[n]))` -/
def P3398627604214912128.Spec : Prop :=
  ∀ n, P3398627604214912128.a n = A191008 n

end A191008

/-!
# A191009: The remainder of (sum of proper divisors of n) mod (largest proper divisor of n).

The programs for A191009, there is no canonical definition to state claims against.
-/

/-! ## A191009.P6596535403605534197

`A001065(n+2)%A032742(n+2)`
-/

namespace A191009.P6596535403605534197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001065 (n + 2)) (A032742 (n + 2))

end

end A191009.P6596535403605534197

/-! ## A191009.P6141401218735134338

`A000203(n+2)%((n+2)/A020639(n+2))`
-/

namespace A191009.P6141401218735134338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 2)) (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (A020639 (n + 2) : ℚ)))

end

end A191009.P6141401218735134338

/-! ## A191009.P1580715817697670146

`A000203(n+2)%A032742(n+2)`
-/

namespace A191009.P1580715817697670146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 2)) (A032742 (n + 2))

end

end A191009.P1580715817697670146

/-! ## A191009.P16151397995646082675

`A318505(n+2)%A032742(n+2)`
-/

namespace A191009.P16151397995646082675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318505 (n + 2)) (A032742 (n + 2))

end

end A191009.P16151397995646082675

/-! ## A191009.P7051707402204437873

`A326061(n+2)%A032742(n+2)`
-/

namespace A191009.P7051707402204437873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326061 (n + 2)) (A032742 (n + 2))

end

end A191009.P7051707402204437873

/-! ## A191009.P18411368998476706349

`Δ[A024916(n+1)]%A032742(n+2)`
-/

namespace A191009.P18411368998476706349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A032742 (n + 2))

end

end A191009.P18411368998476706349

/-!
# A191010: a(n) = (n*4^(n+1) + (6*4^(n+1)+(-1)^n)/5)/5.

The programs for A191010, the canonical program `A191010.P16954525138975077941` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191010 has offset 0).

The definition of A191010 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n*4^(n+1)+(6*4^(n+1)+(-1)^n)/5)/5` (program `A191010.P8010868239533401053`, by `A191010.P8010868239533401053.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191010.P16954525138975077941

`7*a(n-1)-8*a(n-2)-16*a(n-3)` with `a(0)=1, a(1)=7, a(2)=41`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191010

/-- `7*a(n-1)-8*a(n-2)-16*a(n-3)` -/
def P16954525138975077941.Spec : Prop :=
  ∀ n, P16954525138975077941.a n = A191010 n

theorem P16954525138975077941.correct : P16954525138975077941.Spec := by
  intro n
  simp only [A191010]

end A191010

/-! ## A191010.P8010868239533401053

`(n*4^(n+1)+(6*4^(n+1)+(-1)^n)/5)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A191010.P8010868239533401053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * 4 ^ (n + 1) : ℚ) + ((6 * 4 ^ (n + 1) : ℤ) + (-1) ^ n : ℚ) / 5) / 5

end

end A191010.P8010868239533401053

namespace A191010

/-- `(n*4^(n+1)+(6*4^(n+1)+(-1)^n)/5)/5` -/
def P8010868239533401053.Spec : Prop :=
  ∀ n, P8010868239533401053.a n = (A191010 n : ℚ)

theorem P8010868239533401053.correct : P8010868239533401053.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A191010, Nat.add_sub_cancel, A191010.P8010868239533401053.a, A191010.P16954525138975077941.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A191010, Nat.add_sub_cancel, A191010.P8010868239533401053.a, A191010.P16954525138975077941.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A191010

/-! ## A191010.P9518742126501294897

`ogf(1/(1-7x+8x^2+16x^3))`
-/

namespace A191010.P9518742126501294897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -7, 8, 16] n

end

end A191010.P9518742126501294897

namespace A191010

/-- `ogf(1/(1-7x+8x^2+16x^3))` -/
def P9518742126501294897.Spec : Prop :=
  ∀ n, P9518742126501294897.a n = A191010 n

end A191010

/-! ## A191010.P11699623324850960954

`(n+1)*4^n-a(n-1)` with `a(0)=1`
-/

namespace A191010.P11699623324850960954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1) * 4 ^ n : ℤ) - a (n - 1)

end

end A191010.P11699623324850960954

namespace A191010

/-- `(n+1)*4^n-a(n-1)` -/
def P11699623324850960954.Spec : Prop :=
  ∀ n, P11699623324850960954.a n = A191010 n

end A191010

/-! ## A191010.P1007979642644212652

`floor(A002697(n+1)-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A191010.P1007979642644212652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002697 (n + 1) - a (n - 1)

end

end A191010.P1007979642644212652

namespace A191010

/-- `floor(A002697(n+1)-a(n-1))` -/
def P1007979642644212652.Spec : Prop :=
  ∀ n, P1007979642644212652.a n = A191010 n

end A191010

/-! ## A191010.P3503360116640706240

`a(n-2)-Δ[-A002697(n)]` with `a(0)=1, a(1)=7`
-/

namespace A191010.P3503360116640706240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A002697 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  a (n - 2) - (f1 (n + 1) - f1 n)

end

end A191010.P3503360116640706240

namespace A191010

/-- `a(n-2)-Δ[-A002697(n)]` -/
def P3503360116640706240.Spec : Prop :=
  ∀ n, P3503360116640706240.a n = A191010 n

end A191010

/-! ## A191010.P2345409491856050292

`A007910(2*n)+4*a(n-1)` with `a(0)=1`
-/

namespace A191010.P2345409491856050292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007910 (2 * n) + 4 * a (n - 1)

end

end A191010.P2345409491856050292

namespace A191010

/-- `A007910(2*n)+4*a(n-1)` -/
def P2345409491856050292.Spec : Prop :=
  ∀ n, P2345409491856050292.a n = A191010 n

end A191010

/-! ## A191010.P10960079776400915324

`Δ[a(n-2)+A057711(2*n)/2]` with `a(0)=0, a(1)=1`
-/

namespace A191010.P10960079776400915324
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + (A057711 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191010.P10960079776400915324

namespace A191010

/-- `Δ[a(n-2)+A057711(2*n)/2]` -/
def P10960079776400915324.Spec : Prop :=
  ∀ n, P10960079776400915324.a n = (A191010 n : ℚ)

end A191010

/-! ## A191010.P14990919396680434935

`Δ[a(n-2)-(A002697(n)-A002699(n))]` with `a(0)=2, a(1)=3`
-/

namespace A191010.P14990919396680434935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  f1 (n - 2) - (A002697 n - A002699 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191010.P14990919396680434935

namespace A191010

/-- `Δ[a(n-2)-(A002697(n)-A002699(n))]` -/
def P14990919396680434935.Spec : Prop :=
  ∀ n, P14990919396680434935.a n = A191010 n

end A191010

/-!
# A191012: a(n) = n^5 - n^4 + n^3 - n^2 + n.

The programs for A191012, the canonical program `A191012.P3049009521135598509` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191012 has offset 0).

The definition of A191012 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5-n^4+n^3-n²+n` (program `A191012.P3049009521135598509`, by `A191012.P3049009521135598509.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191012.P18176359525754981276

`n*(n^4-n^3+n²-n+1)`
-/

namespace A191012.P18176359525754981276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n ^ 4 : ℤ) - (n ^ 3 : ℤ) + (n ^ 2 : ℤ) - (n : ℤ) + 1)

end

end A191012.P18176359525754981276

namespace A191012

/-- `n*(n^4-n^3+n²-n+1)` -/
def P18176359525754981276.Spec : Prop :=
  ∀ n, P18176359525754981276.a n = A191012 n

theorem P18176359525754981276.correct : P18176359525754981276.Spec := by
  intro n
  simp only [A191012, Nat.add_sub_cancel, A191012.P18176359525754981276.a, A191012.P3049009521135598509.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A191012

/-! ## A191012.P3049009521135598509

`n^5-n^4+n^3-n²+n`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191012

/-- `n^5-n^4+n^3-n²+n` -/
def P3049009521135598509.Spec : Prop :=
  ∀ n, P3049009521135598509.a n = A191012 n

theorem P3049009521135598509.correct : P3049009521135598509.Spec := by
  intro n
  simp only [A191012]

end A191012

/-! ## A191012.P7691965293707423479

`lcm(n, round(n^5/(n+1)))`
-/

namespace A191012.P7691965293707423479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (SequenceMachineLib.roundAway ((n ^ 5 : ℚ) / (n + 1 : ℚ)))

end

end A191012.P7691965293707423479

namespace A191012

/-- `lcm(n, round(n^5/(n+1)))` -/
def P7691965293707423479.Spec : Prop :=
  ∀ n, (P7691965293707423479.a n : ℤ) = A191012 n

end A191012

/-! ## A191012.P16524002845816592916

`A131472(n)/(n+1)`
-/

namespace A191012.P16524002845816592916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131472 n : ℚ) / (n + 1 : ℚ)

end

end A191012.P16524002845816592916

namespace A191012

/-- `A131472(n)/(n+1)` -/
def P16524002845816592916.Spec : Prop :=
  ∀ n, P16524002845816592916.a n = (A191012 n : ℚ)

theorem P16524002845816592916.correct : P16524002845816592916.Spec := by
  intro n
  simp only [A191012, Nat.add_sub_cancel, A191012.P16524002845816592916.a, A191012.P3049009521135598509.a, A131472, A131472.P7274504250054804871.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A191012

/-! ## A191012.P12650686593986245063

`2*A167963(n)/(n+1)`
-/

namespace A191012.P12650686593986245063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A167963 n : ℚ) / (n + 1 : ℚ)

end

end A191012.P12650686593986245063

namespace A191012

/-- `2*A167963(n)/(n+1)` -/
def P12650686593986245063.Spec : Prop :=
  ∀ n, P12650686593986245063.a n = (A191012 n : ℚ)

end A191012

/-! ## A191012.P3660358167923271779

`(A001014(n)+n)/(n+1)`
-/

namespace A191012.P3660358167923271779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001014 n + (n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A191012.P3660358167923271779

namespace A191012

/-- `(A001014(n)+n)/(n+1)` -/
def P3660358167923271779.Spec : Prop :=
  ∀ n, P3660358167923271779.a n = (A191012 n : ℚ)

theorem P3660358167923271779.correct : P3660358167923271779.Spec := by
  intro n
  simp only [A191012, Nat.add_sub_cancel, A191012.P3660358167923271779.a, A191012.P3049009521135598509.a, A001014, A001014.P10270364271630987481.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A191012

/-! ## A191012.P10986827935481559277

`(A000578(n)²+n)/(n+1)`
-/

namespace A191012.P10986827935481559277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 n ^ 2 + (n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A191012.P10986827935481559277

namespace A191012

/-- `(A000578(n)²+n)/(n+1)` -/
def P10986827935481559277.Spec : Prop :=
  ∀ n, P10986827935481559277.a n = (A191012 n : ℚ)

theorem P10986827935481559277.correct : P10986827935481559277.Spec := by
  intro n
  simp only [A191012, Nat.add_sub_cancel, A191012.P10986827935481559277.a, A191012.P3049009521135598509.a, A000578, A000578.P12162961755414704816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A191012

/-! ## A191012.P113335963371254216

`(A002604(n)-1+n)/(n+1)`
-/

namespace A191012.P113335963371254216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002604 n - 1 + (n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A191012.P113335963371254216

namespace A191012

/-- `(A002604(n)-1+n)/(n+1)` -/
def P113335963371254216.Spec : Prop :=
  ∀ n, P113335963371254216.a n = (A191012 n : ℚ)

theorem P113335963371254216.correct : P113335963371254216.Spec := by
  intro n
  simp only [A191012, Nat.add_sub_cancel, A191012.P113335963371254216.a, A191012.P3049009521135598509.a, A002604, A002604.P7413616626921950618.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A191012

/-!
# A191013: Largest k such that (2^n-k)*2^n-k is a prime number.

The programs for A191013, there is no canonical definition to state claims against.
-/

/-! ## A191013.P3098254140401024296

`A011373(A085016(n))+A000096(n)`
-/

namespace A191013.P3098254140401024296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011373 (A085016 n).toNat + A000096 n

end

end A191013.P3098254140401024296

/-! ## A191013.P10521686428983226461

`A000918(n+2)-A085841(A036275(n+1))`
-/

namespace A191013.P10521686428983226461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 (n + 2) - A085841 (A036275 (n + 1)).toNat

end

end A191013.P10521686428983226461

/-!
# A191014: a(n) = 10*a(n-1) + 2*a(n-2), with a(0)=0, a(1)=1.

The programs for A191014, the canonical program `A191014.P1046555839299162881` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191014 has offset 0).

The definition of A191014 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)+2*a(n-2)` (program `A191014.P1046555839299162881`, by `A191014.P1046555839299162881.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191014.P1046555839299162881

`10*a(n-1)+2*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191014

/-- `10*a(n-1)+2*a(n-2)` -/
def P1046555839299162881.Spec : Prop :=
  ∀ n, (P1046555839299162881.a n : ℤ) = A191014 n

theorem P1046555839299162881.correct : P1046555839299162881.Spec := by
  intro n
  simp only [A191014]

end A191014

/-! ## A191014.P6636332644998240792

`ogf(x/(1-10x-2x^2))`
-/

namespace A191014.P6636332644998240792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -10, -2] n

end

end A191014.P6636332644998240792

namespace A191014

/-- `ogf(x/(1-10x-2x^2))` -/
def P6636332644998240792.Spec : Prop :=
  ∀ n, P6636332644998240792.a n = A191014 n

end A191014

/-! ## A191014.P2894448012263692047

`A002605(n)*A120893(n)`
-/

namespace A191014.P2894448012263692047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 n * A120893 n

end

end A191014.P2894448012263692047

namespace A191014

/-- `A002605(n)*A120893(n)` -/
def P2894448012263692047.Spec : Prop :=
  ∀ n, P2894448012263692047.a n = A191014 n

end A191014

/-! ## A191014.P5852806679904380751

`(A106707(n)+A006253(n))*A002605(n)`
-/

namespace A191014.P5852806679904380751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A106707 n + A006253 n) * A002605 n

end

end A191014.P5852806679904380751

namespace A191014

/-- `(A106707(n)+A006253(n))*A002605(n)` -/
def P5852806679904380751.Spec : Prop :=
  ∀ n, P5852806679904380751.a n = A191014 n

end A191014

/-! ## A191014.P18339645185212350641

`(A006253(n)-A001353(n))*A002605(n)`
-/

namespace A191014.P18339645185212350641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006253 n - A001353 n) * A002605 n

end

end A191014.P18339645185212350641

namespace A191014

/-- `(A006253(n)-A001353(n))*A002605(n)` -/
def P18339645185212350641.Spec : Prop :=
  ∀ n, P18339645185212350641.a n = A191014 n

end A191014

/-! ## A191014.P11464734669643546992

`lcm(A002605(n)%A001075(n), A120893(n))`
-/

namespace A191014.P11464734669643546992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (A002605 n) (A001075 n)) (A120893 n)

end

end A191014.P11464734669643546992

namespace A191014

/-- `lcm(A002605(n)%A001075(n), A120893(n))` -/
def P11464734669643546992.Spec : Prop :=
  ∀ n, (P11464734669643546992.a n : ℤ) = A191014 n

end A191014

/-! ## A191014.P18321548357053442665

`1/18*sqrt(3)*((5+3*sqrt(3))^n-(5-3*sqrt(3))^n)`
-/

namespace A191014.P18321548357053442665
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 18 : ℝ) * Real.sqrt (3 : ℝ) * ((5 + 3 * Real.sqrt (3 : ℝ)) ^ n - (5 - 3 * Real.sqrt (3 : ℝ)) ^ n)

end

end A191014.P18321548357053442665

namespace A191014

/-- `1/18*sqrt(3)*((5+3*sqrt(3))^n-(5-3*sqrt(3))^n)` -/
def P18321548357053442665.Spec : Prop :=
  ∀ n, P18321548357053442665.a n = (A191014 n : ℝ)

theorem P18321548357053442665.correct : P18321548357053442665.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A191014, Nat.add_sub_cancel, A191014.P18321548357053442665.a, A191014.P1046555839299162881.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A191014, Nat.add_sub_cancel, A191014.P18321548357053442665.a, A191014.P1046555839299162881.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A191014

/-!
# A191015: Number of isomorphism classes of Coxeter systems with n reflections.

The programs for A191015, there is no canonical definition to state claims against.
-/

/-! ## A191015.P1987510561416698988

`floor(A345918(A000041(n+1))/3)+1`
-/

namespace A191015.P1987510561416698988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A345918 (A000041 (n + 1)).toNat : ℚ) / 3⌋ + 1

end

end A191015.P1987510561416698988

/-! ## A191015.P7194203489770346036

`A350842(n)+A076142(A288414(n))`
-/

namespace A191015.P7194203489770346036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350842 n + A076142 (A288414 n).toNat

end

end A191015.P7194203489770346036

/-! ## A191015.P9577557353090782949

`xor(A085979(A175654(n)), A271661(n))`
-/

namespace A191015.P9577557353090782949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A085979 (A175654 n).toNat) (A271661 n)

end

end A191015.P9577557353090782949

/-! ## A191015.P6589374919542110297

`xor(A269245(A131893(n)), A330228(n))`
-/

namespace A191015.P6589374919542110297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A269245 (A131893 n).toNat) (A330228 n)

end

end A191015.P6589374919542110297

/-!
# A191016: Number of projective reflection products on a set with n elements.

The programs for A191016, there is no canonical definition to state claims against.
-/

/-! ## A191016.P16578177048464651470

`A106466(A007838(n+1))`
-/

namespace A191016.P16578177048464651470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 (A007838 (n + 1)).toNat

end

end A191016.P16578177048464651470

/-! ## A191016.P17583106162864464935

`A003602(A007838(n+1)+1)`
-/

namespace A191016.P17583106162864464935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A007838 (n + 1) + 1).toNat

end

end A191016.P17583106162864464935

/-! ## A191016.P14582467698707453008

`A289436(A007838(n+1)+2)`
-/

namespace A191016.P14582467698707453008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289436 (A007838 (n + 1) + 2).toNat

end

end A191016.P14582467698707453008

/-!
# A191017: Primes with Kronecker symbol (p|14) = 1.

The programs for A191017, the canonical program `A191017.P9280210911899250304` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191017 has offset 1).

The definition of A191017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191017.P9280210911899250304

`∪[A106915(n+1), A274675(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A191017

/-- `∪[A106915(n+1), A274675(n+1)]` -/
def P9280210911899250304.Spec : Prop :=
  ∀ n, (P9280210911899250304.a n : ℤ) = A191017 (n + 1)

theorem P9280210911899250304.correct : P9280210911899250304.Spec := by
  intro n
  simp only [A191017, Nat.add_sub_cancel]

end A191017

/-! ## A191017.P1062320297372990074

`p?[lt[1, A192006(n)]]`
-/

namespace A191017.P1062320297372990074
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191017.P1062320297372990074

namespace A191017

/-- `p?[lt[1, A192006(n)]]` -/
def P1062320297372990074.Spec : Prop :=
  ∀ n, (P1062320297372990074.a n : ℤ) = A191017 (n + 1)

end A191017

/-! ## A191017.P7738577115949005205

`eq[A005127(n), A192006(n)]`
-/

namespace A191017.P7738577115949005205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191017.P7738577115949005205

namespace A191017

/-- `eq[A005127(n), A192006(n)]` -/
def P7738577115949005205.Spec : Prop :=
  ∀ n, (P7738577115949005205.a n : ℤ) = A191017 (n + 1)

end A191017

/-! ## A191017.P13360822640310684781

`eq[A005128(n), A192006(n)]`
-/

namespace A191017.P13360822640310684781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191017.P13360822640310684781

namespace A191017

/-- `eq[A005128(n), A192006(n)]` -/
def P13360822640310684781.Spec : Prop :=
  ∀ n, (P13360822640310684781.a n : ℤ) = A191017 (n + 1)

end A191017

/-! ## A191017.P16915037673041935199

`eq[A062830(n), A192006(n)]`
-/

namespace A191017.P16915037673041935199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191017.P16915037673041935199

namespace A191017

/-- `eq[A062830(n), A192006(n)]` -/
def P16915037673041935199.Spec : Prop :=
  ∀ n, (P16915037673041935199.a n : ℤ) = A191017 (n + 1)

end A191017

/-! ## A191017.P13832810107664309028

`eq[A192006(n), A319410(n)]`
-/

namespace A191017.P13832810107664309028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191017.P13832810107664309028

namespace A191017

/-- `eq[A192006(n), A319410(n)]` -/
def P13832810107664309028.Spec : Prop :=
  ∀ n, (P13832810107664309028.a n : ℤ) = A191017 (n + 1)

end A191017

/-! ## A191017.P10657115560726661169

`eq[A192006(n), A322366(n)]`
-/

namespace A191017.P10657115560726661169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322366 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191017.P10657115560726661169

namespace A191017

/-- `eq[A192006(n), A322366(n)]` -/
def P10657115560726661169.Spec : Prop :=
  ∀ n, (P10657115560726661169.a n : ℤ) = A191017 (n + 1)

end A191017

/-! ## A191017.P17246887217290445922

`eq[2, A003415(n)*A192006(n)]`
-/

namespace A191017.P17246887217290445922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n * A192006 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191017.P17246887217290445922

namespace A191017

/-- `eq[2, A003415(n)*A192006(n)]` -/
def P17246887217290445922.Spec : Prop :=
  ∀ n, (P17246887217290445922.a n : ℤ) = A191017 (n + 1)

end A191017

/-! ## A191017.P9192190562186684027

`p?[n*A343453(A192006(n)+3)]`
-/

namespace A191017.P9192190562186684027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A343453 (A192006 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191017.P9192190562186684027

namespace A191017

/-- `p?[n*A343453(A192006(n)+3)]` -/
def P9192190562186684027.Spec : Prop :=
  ∀ n, P9192190562186684027.a n = A191017 (n + 1)

end A191017

/-! ## A191017.P5190181614600283531

`A000040(eq[2, A192006(A000040(n+1))]+1)`
-/

namespace A191017.P5190181614600283531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A191017.P5190181614600283531

namespace A191017

/-- `A000040(eq[2, A192006(A000040(n+1))]+1)` -/
def P5190181614600283531.Spec : Prop :=
  ∀ n, P5190181614600283531.a n = A191017 (n + 1)

end A191017

/-! ## A191017.P5090505416697966139

`eq[A007012(n), A192006(n)]`
-/

namespace A191017.P5090505416697966139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191017.P5090505416697966139

namespace A191017

/-- `eq[A007012(n), A192006(n)]` -/
def P5090505416697966139.Spec : Prop :=
  ∀ n, (P5090505416697966139.a n : ℤ) = A191017 (n + 1)

end A191017

/-! ## A191017.P6341793564578950898

`p?[eq[2, A192006(2*n)]]`
-/

namespace A191017.P6341793564578950898
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191017.P6341793564578950898

namespace A191017

/-- `p?[eq[2, A192006(2*n)]]` -/
def P6341793564578950898.Spec : Prop :=
  ∀ n, (P6341793564578950898.a n : ℤ) = A191017 (n + 1)

end A191017

/-! ## A191017.P11369042780191441787

`eq[A053204(n), A192006(n)]`
-/

namespace A191017.P11369042780191441787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191017.P11369042780191441787

namespace A191017

/-- `eq[A053204(n), A192006(n)]` -/
def P11369042780191441787.Spec : Prop :=
  ∀ n, (P11369042780191441787.a n : ℤ) = A191017 (n + 1)

end A191017

/-!
# A191018: Primes p with Jacobi symbol (p|3*5) = 1.

The programs for A191018, the canonical program `A191018.P5058550977677883264` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191018 has offset 1).

The definition of A191018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191018.P5058550977677883264

`p?[a(n-1)+a(n-1)%15]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191018

/-- `p?[a(n-1)+a(n-1)%15]` -/
def P5058550977677883264.Spec : Prop :=
  ∀ n, (P5058550977677883264.a n : ℤ) = A191018 (n + 1)

theorem P5058550977677883264.correct : P5058550977677883264.Spec := by
  intro n
  simp only [A191018, Nat.add_sub_cancel]

end A191018

/-! ## A191018.P2906948238957061193

`p?[a(n-1)--a(n-1)%15]` with `a(0)=1`
-/

namespace A191018.P2906948238957061193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - Int.tmod (-f1 (n - 1)) 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191018.P2906948238957061193

namespace A191018

/-- `p?[a(n-1)--a(n-1)%15]` -/
def P2906948238957061193.Spec : Prop :=
  ∀ n, P2906948238957061193.a n = A191018 (n + 1)

end A191018

/-! ## A191018.P1508688393127581871

`∪[A033212(n+1), A343241(n+1)]`
-/

namespace A191018.P1508688393127581871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191018.P1508688393127581871

namespace A191018

/-- `∪[A033212(n+1), A343241(n+1)]` -/
def P1508688393127581871.Spec : Prop :=
  ∀ n, (P1508688393127581871.a n : ℤ) = A191018 (n + 1)

end A191018

/-! ## A191018.P17886394674030794516

`∩[A341786(n+1), A387959(n+1)]`
-/

namespace A191018.P17886394674030794516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191018.P17886394674030794516

namespace A191018

/-- `∩[A341786(n+1), A387959(n+1)]` -/
def P17886394674030794516.Spec : Prop :=
  ∀ n, (P17886394674030794516.a n : ℤ) = A191018 (n + 1)

end A191018

/-! ## A191018.P6803671847428845325

`∩[A163578(n+1), A341786(n+1)]`
-/

namespace A191018.P6803671847428845325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191018.P6803671847428845325

namespace A191018

/-- `∩[A163578(n+1), A341786(n+1)]` -/
def P6803671847428845325.Spec : Prop :=
  ∀ n, (P6803671847428845325.a n : ℤ) = A191018 (n + 1)

end A191018

/-! ## A191018.P8828346051089565348

`record[A006530(∑[2^(n%4)]+1)]`
-/

namespace A191018.P8828346051089565348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n % 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191018.P8828346051089565348

namespace A191018

/-- `record[A006530(∑[2^(n%4)]+1)]` -/
def P8828346051089565348.Spec : Prop :=
  ∀ n, P8828346051089565348.a n = A191018 (n + 1)

end A191018

/-! ## A191018.P18183534182502267267

`p?[2*A003485(n)-A002265(n)]`
-/

namespace A191018.P18183534182502267267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003485 n - A002265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191018.P18183534182502267267

namespace A191018

/-- `p?[2*A003485(n)-A002265(n)]` -/
def P18183534182502267267.Spec : Prop :=
  ∀ n, P18183534182502267267.a n = A191018 (n + 1)

end A191018

/-! ## A191018.P14101605374190406163

`∩[A113544(n+1), A341786(n+1)]`
-/

namespace A191018.P14101605374190406163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191018.P14101605374190406163

namespace A191018

/-- `∩[A113544(n+1), A341786(n+1)]` -/
def P14101605374190406163.Spec : Prop :=
  ∀ n, (P14101605374190406163.a n : ℤ) = A191018 (n + 1)

end A191018

/-! ## A191018.P14445180168241398692

`p?[A032766(A131531(n+1)²+n)+2+n]`
-/

namespace A191018.P14445180168241398692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A131531 (n + 1) ^ 2 + (n : ℤ)).toNat + 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191018.P14445180168241398692

namespace A191018

/-- `p?[A032766(A131531(n+1)²+n)+2+n]` -/
def P14445180168241398692.Spec : Prop :=
  ∀ n, P14445180168241398692.a n = A191018 (n + 1)

end A191018

/-! ## A191018.P18438840581531105392

`p?[n+1+A030118(n+1)+A004526(A030118(n))]`
-/

namespace A191018.P18438840581531105392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A030118 (n + 1) + A004526 (A030118 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191018.P18438840581531105392

namespace A191018

/-- `p?[n+1+A030118(n+1)+A004526(A030118(n))]` -/
def P18438840581531105392.Spec : Prop :=
  ∀ n, P18438840581531105392.a n = A191018 (n + 1)

end A191018

/-! ## A191018.P13462197197553299667

`p?[A047202(n+1)-(2-dr(n))]`
-/

namespace A191018.P13462197197553299667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047202 (n + 1) - (2 - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191018.P13462197197553299667

namespace A191018

/-- `p?[A047202(n+1)-(2-dr(n))]` -/
def P13462197197553299667.Spec : Prop :=
  ∀ n, P13462197197553299667.a n = A191018 (n + 1)

end A191018

/-! ## A191018.P14155558411344750842

`p?[lt[1, A123864(n)]]`
-/

namespace A191018.P14155558411344750842
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123864 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191018.P14155558411344750842

namespace A191018

/-- `p?[lt[1, A123864(n)]]` -/
def P14155558411344750842.Spec : Prop :=
  ∀ n, (P14155558411344750842.a n : ℤ) = A191018 (n + 1)

end A191018

/-! ## A191018.P5830832000672713388

`p?[n*A316569(n)]`
-/

namespace A191018.P5830832000672713388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A316569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191018.P5830832000672713388

namespace A191018

/-- `p?[n*A316569(n)]` -/
def P5830832000672713388.Spec : Prop :=
  ∀ n, P5830832000672713388.a n = A191018 (n + 1)

end A191018

/-! ## A191018.P2787541343152867176

`eq[A072721(n), A316569(n)]`
-/

namespace A191018.P2787541343152867176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316569 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191018.P2787541343152867176

namespace A191018

/-- `eq[A072721(n), A316569(n)]` -/
def P2787541343152867176.Spec : Prop :=
  ∀ n, (P2787541343152867176.a n : ℤ) = A191018 (n + 1)

end A191018

/-! ## A191018.P7568384372122706519

`eq[A123864(n), A319410(n)]`
-/

namespace A191018.P7568384372122706519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123864 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191018.P7568384372122706519

namespace A191018

/-- `eq[A123864(n), A319410(n)]` -/
def P7568384372122706519.Spec : Prop :=
  ∀ n, (P7568384372122706519.a n : ℤ) = A191018 (n + 1)

end A191018

/-! ## A191018.P8718545564559777665

`eq[A210442(n), A316569(n)]`
-/

namespace A191018.P8718545564559777665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316569 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191018.P8718545564559777665

namespace A191018

/-- `eq[A210442(n), A316569(n)]` -/
def P8718545564559777665.Spec : Prop :=
  ∀ n, (P8718545564559777665.a n : ℤ) = A191018 (n + 1)

end A191018

/-! ## A191018.P16933075728977520249

`eq[A211110(n), A316569(n)]`
-/

namespace A191018.P16933075728977520249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316569 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191018.P16933075728977520249

namespace A191018

/-- `eq[A211110(n), A316569(n)]` -/
def P16933075728977520249.Spec : Prop :=
  ∀ n, (P16933075728977520249.a n : ℤ) = A191018 (n + 1)

end A191018

/-! ## A191018.P2370770769553467094

`eq[A284289(n), A316569(n)]`
-/

namespace A191018.P2370770769553467094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316569 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191018.P2370770769553467094

namespace A191018

/-- `eq[A284289(n), A316569(n)]` -/
def P2370770769553467094.Spec : Prop :=
  ∀ n, (P2370770769553467094.a n : ℤ) = A191018 (n + 1)

end A191018

/-! ## A191018.P10278661638026417583

`eq[A316569(n), A322968(n)]`
-/

namespace A191018.P10278661638026417583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316569 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191018.P10278661638026417583

namespace A191018

/-- `eq[A316569(n), A322968(n)]` -/
def P10278661638026417583.Spec : Prop :=
  ∀ n, (P10278661638026417583.a n : ℤ) = A191018 (n + 1)

end A191018

/-!
# A191019: Rational primes that decompose in the quadratic field Q(sqrt(-19)).

The programs for A191019, the canonical program `A191019.P4122170196560416808` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191019 has offset 1).

The definition of A191019 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 604 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191019.P3368612560041757305

`∩[A106863(n+1), A160544(n+1)]`
-/

namespace A191019.P3368612560041757305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191019.P3368612560041757305

namespace A191019

/-- `∩[A106863(n+1), A160544(n+1)]` -/
def P3368612560041757305.Spec : Prop :=
  ∀ n, (P3368612560041757305.a n : ℤ) = A191019 (n + 1)

end A191019

/-! ## A191019.P15682657042806753281

`p?[lt[2, A028641(n)]]`
-/

namespace A191019.P15682657042806753281
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028641 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191019.P15682657042806753281

namespace A191019

/-- `p?[lt[2, A028641(n)]]` -/
def P15682657042806753281.Spec : Prop :=
  ∀ n, (P15682657042806753281.a n : ℤ) = A191019 (n + 1)

end A191019

/-! ## A191019.P4122170196560416808

`p?[n*A011585(n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A191019

/-- `p?[n*A011585(n)]` -/
def P4122170196560416808.Spec : Prop :=
  ∀ n, P4122170196560416808.a n = A191019 (n + 1)

theorem P4122170196560416808.correct : P4122170196560416808.Spec := by
  intro n
  simp only [A191019, Nat.add_sub_cancel]

end A191019

/-! ## A191019.P16080417474963867427

`eq[A028641(n), A048785(n)]`
-/

namespace A191019.P16080417474963867427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191019.P16080417474963867427

namespace A191019

/-- `eq[A028641(n), A048785(n)]` -/
def P16080417474963867427.Spec : Prop :=
  ∀ n, (P16080417474963867427.a n : ℤ) = A191019 (n + 1)

end A191019

/-! ## A191019.P1654325428527623961

`eq[A011585(n), A072721(n)]`
-/

namespace A191019.P1654325428527623961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191019.P1654325428527623961

namespace A191019

/-- `eq[A011585(n), A072721(n)]` -/
def P1654325428527623961.Spec : Prop :=
  ∀ n, (P1654325428527623961.a n : ℤ) = A191019 (n + 1)

end A191019

/-! ## A191019.P13698838830274730703

`eq[A011585(n), A210442(n)]`
-/

namespace A191019.P13698838830274730703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191019.P13698838830274730703

namespace A191019

/-- `eq[A011585(n), A210442(n)]` -/
def P13698838830274730703.Spec : Prop :=
  ∀ n, (P13698838830274730703.a n : ℤ) = A191019 (n + 1)

end A191019

/-! ## A191019.P4782875598779873204

`eq[A011585(n), A211110(n)]`
-/

namespace A191019.P4782875598779873204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191019.P4782875598779873204

namespace A191019

/-- `eq[A011585(n), A211110(n)]` -/
def P4782875598779873204.Spec : Prop :=
  ∀ n, (P4782875598779873204.a n : ℤ) = A191019 (n + 1)

end A191019

/-! ## A191019.P9366503668847011101

`eq[A011585(n), A284289(n)]`
-/

namespace A191019.P9366503668847011101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191019.P9366503668847011101

namespace A191019

/-- `eq[A011585(n), A284289(n)]` -/
def P9366503668847011101.Spec : Prop :=
  ∀ n, (P9366503668847011101.a n : ℤ) = A191019 (n + 1)

end A191019

/-! ## A191019.P15736956378666147998

`eq[A011585(n), A322968(n)]`
-/

namespace A191019.P15736956378666147998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191019.P15736956378666147998

namespace A191019

/-- `eq[A011585(n), A322968(n)]` -/
def P15736956378666147998.Spec : Prop :=
  ∀ n, (P15736956378666147998.a n : ℤ) = A191019 (n + 1)

end A191019

/-! ## A191019.P18149240968605855789

`eq[A011585(n), A053989(n+1)]`
-/

namespace A191019.P18149240968605855789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191019.P18149240968605855789

namespace A191019

/-- `eq[A011585(n), A053989(n+1)]` -/
def P18149240968605855789.Spec : Prop :=
  ∀ n, (P18149240968605855789.a n : ℤ) = A191019 (n + 1)

end A191019

/-! ## A191019.P2024730562294578247

`eq[A011585(n), A231820(n+1)]`
-/

namespace A191019.P2024730562294578247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191019.P2024730562294578247

namespace A191019

/-- `eq[A011585(n), A231820(n+1)]` -/
def P2024730562294578247.Spec : Prop :=
  ∀ n, (P2024730562294578247.a n : ℤ) = A191019 (n + 1)

end A191019

/-! ## A191019.P4918839720012557812

`p?[n*A109466(A028641(n)+1)]`
-/

namespace A191019.P4918839720012557812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A109466 (A028641 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191019.P4918839720012557812

namespace A191019

/-- `p?[n*A109466(A028641(n)+1)]` -/
def P4918839720012557812.Spec : Prop :=
  ∀ n, P4918839720012557812.a n = A191019 (n + 1)

end A191019

/-! ## A191019.P7169013102539081135

`p?[n*A226464(A028641(n)+1)]`
-/

namespace A191019.P7169013102539081135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A226464 (A028641 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191019.P7169013102539081135

namespace A191019

/-- `p?[n*A226464(A028641(n)+1)]` -/
def P7169013102539081135.Spec : Prop :=
  ∀ n, P7169013102539081135.a n = A191019 (n + 1)

end A191019

/-! ## A191019.P5618380955983781357

`eq[(A068346(n)+2)², A028641(n)]`
-/

namespace A191019.P5618380955983781357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A068346 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191019.P5618380955983781357

namespace A191019

/-- `eq[(A068346(n)+2)², A028641(n)]` -/
def P5618380955983781357.Spec : Prop :=
  ∀ n, (P5618380955983781357.a n : ℤ) = A191019 (n + 1)

end A191019

/-! ## A191019.P292257778529086213

`eq[(A072480(n)+2)², A028641(n)]`
-/

namespace A191019.P292257778529086213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A072480 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191019.P292257778529086213

namespace A191019

/-- `eq[(A072480(n)+2)², A028641(n)]` -/
def P292257778529086213.Spec : Prop :=
  ∀ n, (P292257778529086213.a n : ℤ) = A191019 (n + 1)

end A191019

/-! ## A191019.P13574532142546374435

`eq[(A082024(n)+2)², A028641(n)]`
-/

namespace A191019.P13574532142546374435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A082024 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191019.P13574532142546374435

namespace A191019

/-- `eq[(A082024(n)+2)², A028641(n)]` -/
def P13574532142546374435.Spec : Prop :=
  ∀ n, (P13574532142546374435.a n : ℤ) = A191019 (n + 1)

end A191019

/-! ## A191019.P8518954960432461087

`eq[(A277894(n)+2)², A028641(n)]`
-/

namespace A191019.P8518954960432461087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A277894 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191019.P8518954960432461087

namespace A191019

/-- `eq[(A277894(n)+2)², A028641(n)]` -/
def P8518954960432461087.Spec : Prop :=
  ∀ n, (P8518954960432461087.a n : ℤ) = A191019 (n + 1)

end A191019

/-! ## A191019.P13663366934078540614

`∩[A106863(n+1), A269020(n+1)]`
-/

namespace A191019.P13663366934078540614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191019.P13663366934078540614

namespace A191019

/-- `∩[A106863(n+1), A269020(n+1)]` -/
def P13663366934078540614.Spec : Prop :=
  ∀ n, (P13663366934078540614.a n : ℤ) = A191019 (n + 1)

end A191019

/-! ## A191019.P9561959515104027335

`p?[(n+1)*A035171(A035171(n+1)+2)]`
-/

namespace A191019.P9561959515104027335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A035171 (A035171 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191019.P9561959515104027335

namespace A191019

/-- `p?[(n+1)*A035171(A035171(n+1)+2)]` -/
def P9561959515104027335.Spec : Prop :=
  ∀ n, P9561959515104027335.a n = A191019 (n + 1)

end A191019

/-! ## A191019.P4303721576711954313

`p?[lcm(n, A271206(A028641(n)+3))]`
-/

namespace A191019.P4303721576711954313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A271206 (A028641 n + 3).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191019.P4303721576711954313

namespace A191019

/-- `p?[lcm(n, A271206(A028641(n)+3))]` -/
def P4303721576711954313.Spec : Prop :=
  ∀ n, (P4303721576711954313.a n : ℤ) = A191019 (n + 1)

end A191019

/-!
# A191020: Primes p with Kronecker symbol (p|2*11) = 1.

The programs for A191020, there is no canonical definition to state claims against.
-/

/-! ## A191020.P8322001278261378309

`∩[A035241(n+1), A071621(n+1)]`
-/

namespace A191020.P8322001278261378309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191020.P8322001278261378309

/-! ## A191020.P11324628219694758635

`∩[A035241(n+1), A108719(n+1)]`
-/

namespace A191020.P11324628219694758635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191020.P11324628219694758635

/-! ## A191020.P9367429313410153357

`p?[eq[2, A255647(n)]]`
-/

namespace A191020.P9367429313410153357
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255647 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191020.P9367429313410153357

/-! ## A191020.P8641736856063671330

`p?[(n+1)%(A035168(n+1)+n)]`
-/

namespace A191020.P8641736856063671330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A035168 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191020.P8641736856063671330

/-! ## A191020.P6513294877889170606

`eq[A255647(n), A319410(n)]`
-/

namespace A191020.P6513294877889170606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255647 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191020.P6513294877889170606

/-! ## A191020.P18223798333730399856

`eq[2, A277894(n)+A255647(n)]`
-/

namespace A191020.P18223798333730399856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277894 n + A255647 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191020.P18223798333730399856

/-! ## A191020.P73326853800499355

`eq[2*A104725(n), A255647(n)]`
-/

namespace A191020.P73326853800499355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104725 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255647 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191020.P73326853800499355

/-! ## A191020.P6221640903175684794

`A000040(eq[2, A255647(A008578(n+1))])`
-/

namespace A191020.P6221640903175684794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255647 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A191020.P6221640903175684794

/-! ## A191020.P4568466310371523156

`p?[(A035168(A000040(n+1))-1)*A000040(n+1)]`
-/

namespace A191020.P4568466310371523156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035168 (A000040 (n + 1)).toNat - 1) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191020.P4568466310371523156

/-! ## A191020.P8375357856281811214

`eq[A053204(n), A255647(n)]`
-/

namespace A191020.P8375357856281811214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255647 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191020.P8375357856281811214

/-! ## A191020.P8397054475432131450

`eq[A119655(n), A255647(n)]`
-/

namespace A191020.P8397054475432131450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119655 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255647 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191020.P8397054475432131450

/-!
# A191021: Primes that are squares mod 23.

The programs for A191021, there is no canonical definition to state claims against.
-/

/-! ## A191021.P262796739347081107

`∪[A106867(n+1), A033217(n+2)]`
-/

namespace A191021.P262796739347081107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191021.P262796739347081107

/-! ## A191021.P14964776297714749494

`record[A296932(n+1)%A048058(n)]`
-/

namespace A191021.P14964776297714749494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296932 (n + 1)) (A048058 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191021.P14964776297714749494

/-! ## A191021.P6219578029928525454

`p?[A278580(n+1)]`
-/

namespace A191021.P6219578029928525454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191021.P6219578029928525454

/-! ## A191021.P12246573513423932528

`record[A006530(A278580(n+2))]`
-/

namespace A191021.P12246573513423932528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A278580 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191021.P12246573513423932528

/-! ## A191021.P8706814286068052146

`record[A020639(A278580(n+4))]`
-/

namespace A191021.P8706814286068052146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A278580 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191021.P8706814286068052146

/-! ## A191021.P946976271266112651

`filter[A278580(n+1), A010051(#)]`
-/

namespace A191021.P946976271266112651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A191021.P946976271266112651

/-! ## A191021.P12299472752363736867

`∩[A000040(n+1), A278580(n+1)]`
-/

namespace A191021.P12299472752363736867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191021.P12299472752363736867

/-! ## A191021.P208282333573294052

`∩[A045319(n+1), A278580(n+1)]`
-/

namespace A191021.P208282333573294052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191021.P208282333573294052

/-! ## A191021.P7279021554712390117

`∩[A182986(n+1), A278580(n+1)]`
-/

namespace A191021.P7279021554712390117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191021.P7279021554712390117

/-! ## A191021.P13460350927804089986

`∩[A278580(n+1), A296932(n+1)]`
-/

namespace A191021.P13460350927804089986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191021.P13460350927804089986

/-! ## A191021.P4929519874391251537

`p?[n*A011586(n)]`
-/

namespace A191021.P4929519874391251537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191021.P4929519874391251537

/-! ## A191021.P17846937003801204663

`eq[A011586(n), A072721(n)]`
-/

namespace A191021.P17846937003801204663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011586 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191021.P17846937003801204663

/-! ## A191021.P4051022129946755189

`eq[A011586(n), A210442(n)]`
-/

namespace A191021.P4051022129946755189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011586 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191021.P4051022129946755189

/-! ## A191021.P5765578964321955518

`eq[A011586(n), A211110(n)]`
-/

namespace A191021.P5765578964321955518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011586 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191021.P5765578964321955518

/-! ## A191021.P4870113438088231375

`eq[A011586(n), A284289(n)]`
-/

namespace A191021.P4870113438088231375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011586 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191021.P4870113438088231375

/-! ## A191021.P7272283394346028396

`eq[A011586(n), A322968(n)]`
-/

namespace A191021.P7272283394346028396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011586 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191021.P7272283394346028396

/-! ## A191021.P22611563835366923

`filter[A278580(n+2), A080339(#)]`
-/

namespace A191021.P22611563835366923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278580 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A191021.P22611563835366923

/-! ## A191021.P358159708490539674

`eq[A011586(n), A053989(n+1)]`
-/

namespace A191021.P358159708490539674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011586 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191021.P358159708490539674

/-! ## A191021.P17363129861472440233

`eq[A011586(n), A231820(n+1)]`
-/

namespace A191021.P17363129861472440233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011586 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191021.P17363129861472440233

/-! ## A191021.P13007822734960397853

`eq[1, A011586(n)*A231734(n+1)]`
-/

namespace A191021.P13007822734960397853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011586 n * A231734 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191021.P13007822734960397853

/-!
# A191022: Primes that are squares mod 29.

The programs for A191022, there is no canonical definition to state claims against.
-/

/-! ## A191022.P1083475060002440717

`p?[A038901(n+1)+char[4]]`
-/

namespace A191022.P1083475060002440717
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038901 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191022.P1083475060002440717

/-! ## A191022.P16498894842130481436

`record[A006530(A038901(n+1)+char[4])]`
-/

namespace A191022.P16498894842130481436
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A038901 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191022.P16498894842130481436

/-! ## A191022.P13069327779592735780

`record[A020639(A038901(n+1)+char[4])]`
-/

namespace A191022.P13069327779592735780
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A038901 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191022.P13069327779592735780

/-! ## A191022.P2536710343611395521

`p?[A035264(n+3)+char[9]]`
-/

namespace A191022.P2536710343611395521
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035264 (n + 3) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191022.P2536710343611395521

/-! ## A191022.P14070063397616644389

`∩[A038901(n+1), A160546(n+1)]`
-/

namespace A191022.P14070063397616644389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191022.P14070063397616644389

/-! ## A191022.P16112773438020144182

`eq[A011587(n), A072721(n)]`
-/

namespace A191022.P16112773438020144182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011587 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191022.P16112773438020144182

/-! ## A191022.P16007641724433642353

`eq[A011587(n), A210442(n)]`
-/

namespace A191022.P16007641724433642353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011587 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191022.P16007641724433642353

/-! ## A191022.P10904779186250902682

`eq[A011587(n), A211110(n)]`
-/

namespace A191022.P10904779186250902682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011587 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191022.P10904779186250902682

/-! ## A191022.P3741766936872885756

`eq[A072721(n), A186305(n)]`
-/

namespace A191022.P3741766936872885756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186305 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191022.P3741766936872885756

/-! ## A191022.P1727252734283579170

`eq[A011587(n), A284289(n)]`
-/

namespace A191022.P1727252734283579170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011587 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191022.P1727252734283579170

/-! ## A191022.P5410912971905925907

`eq[A011587(n), A322968(n)]`
-/

namespace A191022.P5410912971905925907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011587 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191022.P5410912971905925907

/-! ## A191022.P6667588638740687365

`eq[A186305(n), A210442(n)]`
-/

namespace A191022.P6667588638740687365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186305 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191022.P6667588638740687365

/-! ## A191022.P12095098893589683938

`eq[A186305(n), A322968(n)]`
-/

namespace A191022.P12095098893589683938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186305 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191022.P12095098893589683938

/-! ## A191022.P4377140710837838349

`eq[A011587(n), A053989(n+1)]`
-/

namespace A191022.P4377140710837838349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011587 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191022.P4377140710837838349

/-! ## A191022.P3670097369675670951

`eq[A011587(n), A231820(n+1)]`
-/

namespace A191022.P3670097369675670951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011587 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191022.P3670097369675670951

/-! ## A191022.P3535041200266508259

`eq[1, A011587(n)*A231734(n+1)]`
-/

namespace A191022.P3535041200266508259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011587 n * A231734 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191022.P3535041200266508259

/-! ## A191022.P9996942817379494177

`eq[A011587(n), A117545(n+1)]`
-/

namespace A191022.P9996942817379494177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011587 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191022.P9996942817379494177

/-!
# A191023: Primes p which have Kronecker symbol (p|30) = 1.

The programs for A191023, there is no canonical definition to state claims against.
-/

/-! ## A191023.P11702111218532783945

`p?[eq[2, A035160(n+1)]+1]`
-/

namespace A191023.P11702111218532783945
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035160 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191023.P11702111218532783945

/-! ## A191023.P4984655276387491551

`p?[eq[A118917(n), A122855(n)]]`
-/

namespace A191023.P4984655276387491551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118917 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122855 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191023.P4984655276387491551

/-! ## A191023.P14280477925403527100

`p?[eq[A118917(n), A123864(n)]]`
-/

namespace A191023.P14280477925403527100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118917 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123864 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191023.P14280477925403527100

/-! ## A191023.P8283022933974562373

`p?[eq[A226162(n), A322796(n)]]`
-/

namespace A191023.P8283022933974562373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226162 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322796 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191023.P8283022933974562373

/-! ## A191023.P15077926878090757532

`eq[A277894(n)+A118917(n), A122855(n)]`
-/

namespace A191023.P15077926878090757532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277894 n + A118917 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122855 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191023.P15077926878090757532

/-! ## A191023.P18032450780170768476

`p?[n+6-A019426(A314362(n))]`
-/

namespace A191023.P18032450780170768476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 6 : ℤ) - A019426 (A314362 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191023.P18032450780170768476

/-!
# A191024: Primes that are squares mod 31.

The programs for A191024, there is no canonical definition to state claims against.
-/

/-! ## A191024.P109624580482745225

`∪[A106872(n+1), A033221(n+2)]`
-/

namespace A191024.P109624580482745225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033221 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191024.P109624580482745225

/-! ## A191024.P12005603709502434606

`∩[A160547(n+1), A267481(n+1)]`
-/

namespace A191024.P12005603709502434606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191024.P12005603709502434606

/-! ## A191024.P14409514955151349855

`p?[eq[2, A035159(n+1)]+1]`
-/

namespace A191024.P14409514955151349855
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035159 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191024.P14409514955151349855

/-! ## A191024.P423022382529087445

`eq[A011588(n), A072721(n)]`
-/

namespace A191024.P423022382529087445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191024.P423022382529087445

/-! ## A191024.P11270765376805985381

`eq[A011588(n), A210442(n)]`
-/

namespace A191024.P11270765376805985381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191024.P11270765376805985381

/-! ## A191024.P10510566524443974611

`eq[A011588(n), A211110(n)]`
-/

namespace A191024.P10510566524443974611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191024.P10510566524443974611

/-! ## A191024.P8640853731596669412

`eq[A011588(n), A284289(n)]`
-/

namespace A191024.P8640853731596669412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191024.P8640853731596669412

/-! ## A191024.P15290490251518476290

`eq[A011588(n), A322968(n)]`
-/

namespace A191024.P15290490251518476290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191024.P15290490251518476290

/-! ## A191024.P5064265316735717784

`eq[A011588(n), A053989(n+1)]`
-/

namespace A191024.P5064265316735717784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191024.P5064265316735717784

/-! ## A191024.P7329718852298554046

`eq[A011588(n), A231820(n+1)]`
-/

namespace A191024.P7329718852298554046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191024.P7329718852298554046

/-! ## A191024.P11330736824283567941

`eq[2, A011588(n)+A003415(n)]`
-/

namespace A191024.P11330736824283567941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011588 n + A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191024.P11330736824283567941

/-! ## A191024.P2622266503138467839

`eq[1, A011588(n)*A231734(n+1)]`
-/

namespace A191024.P2622266503138467839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011588 n * A231734 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191024.P2622266503138467839

/-! ## A191024.P1523252879381075543

`record[A014963(eq[2, A035159(n+1)]+1)]`
-/

namespace A191024.P1523252879381075543
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035159 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191024.P1523252879381075543

/-! ## A191024.P14397144885386896676

`p?[(A035159(n+1)-1)*A007947(n+1)]`
-/

namespace A191024.P14397144885386896676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035159 (n + 1) - 1) * A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191024.P14397144885386896676

/-! ## A191024.P16377919206126499793

`p?[(n+1)*A035159(A035159(n+1)+7)]`
-/

namespace A191024.P16377919206126499793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A035159 (A035159 (n + 1) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191024.P16377919206126499793

/-! ## A191024.P3480065752921613845

`eq[A000005(n+1), A181289(A035159(n+1))]+1`
-/

namespace A191024.P3480065752921613845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181289 (A035159 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A191024.P3480065752921613845

/-! ## A191024.P11125439062088768977

`eq[A011588(n), A117545(n+1)]`
-/

namespace A191024.P11125439062088768977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191024.P11125439062088768977

/-!
# A191025: Primes p which have Kronecker symbol (p|34) = 1.

The programs for A191025, there is no canonical definition to state claims against.
-/

/-! ## A191025.P4450612631031215693

`p?[A038909(n+2)+char[3]]`
-/

namespace A191025.P4450612631031215693
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038909 (n + 2) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191025.P4450612631031215693

/-! ## A191025.P5493853664818350590

`record[A006530(A038909(n+2)+char[3])]`
-/

namespace A191025.P5493853664818350590
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A038909 (n + 2) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191025.P5493853664818350590

/-! ## A191025.P17602504562899145622

`record[A020639(A038909(n+2)+char[3])]`
-/

namespace A191025.P17602504562899145622
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A038909 (n + 2) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191025.P17602504562899145622

/-! ## A191025.P10599659140169490757

`∩[A038909(n+1), A204458(n+1)]`
-/

namespace A191025.P10599659140169490757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191025.P10599659140169490757

/-! ## A191025.P14730092960865945717

`p?[A038909(n+1)%p?[A000788(n)]]`
-/

namespace A191025.P14730092960865945717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038909 (n + 1)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191025.P14730092960865945717

/-! ## A191025.P11284945505363745908

`∩[A028974(n+1), A038909(n+1)]`
-/

namespace A191025.P11284945505363745908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191025.P11284945505363745908

/-! ## A191025.P1027120748925728059

`∩[A038909(n+1), A377721(n+1)]`
-/

namespace A191025.P1027120748925728059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191025.P1027120748925728059

/-! ## A191025.P13731964475224854533

`record[A014963(A038909(n+2)+char[3])]`
-/

namespace A191025.P13731964475224854533
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A038909 (n + 2) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191025.P13731964475224854533

/-! ## A191025.P9084465083452653417

`A038909(A293754(n+1)+1)`
-/

namespace A191025.P9084465083452653417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038909 (A293754 (n + 1) + 1).toNat

end

end A191025.P9084465083452653417

/-!
# A191026: Primes p that have Jacobi symbol (p|35) = 1.

The programs for A191026, the canonical program `A191026.P14743048384192298842` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191026 has offset 1).

The definition of A191026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 606 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191026.P14743048384192298842

`p?[eq[2, A035155(n+1)]+1]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A191026

/-- `p?[eq[2, A035155(n+1)]+1]` -/
def P14743048384192298842.Spec : Prop :=
  ∀ n, (P14743048384192298842.a n : ℤ) = A191026 (n + 1)

theorem P14743048384192298842.correct : P14743048384192298842.Spec := by
  intro n
  simp only [A191026, Nat.add_sub_cancel]

end A191026

/-! ## A191026.P3271333917749994990

`eq[A072721(n), A390614(n)]`
-/

namespace A191026.P3271333917749994990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191026.P3271333917749994990

namespace A191026

/-- `eq[A072721(n), A390614(n)]` -/
def P3271333917749994990.Spec : Prop :=
  ∀ n, (P3271333917749994990.a n : ℤ) = A191026 (n + 1)

end A191026

/-! ## A191026.P7885112148181245605

`eq[A210442(n), A390614(n)]`
-/

namespace A191026.P7885112148181245605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191026.P7885112148181245605

namespace A191026

/-- `eq[A210442(n), A390614(n)]` -/
def P7885112148181245605.Spec : Prop :=
  ∀ n, (P7885112148181245605.a n : ℤ) = A191026 (n + 1)

end A191026

/-! ## A191026.P16969711686017448711

`eq[A211110(n), A390614(n)]`
-/

namespace A191026.P16969711686017448711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191026.P16969711686017448711

namespace A191026

/-- `eq[A211110(n), A390614(n)]` -/
def P16969711686017448711.Spec : Prop :=
  ∀ n, (P16969711686017448711.a n : ℤ) = A191026 (n + 1)

end A191026

/-! ## A191026.P3959801036982591283

`eq[A284289(n), A390614(n)]`
-/

namespace A191026.P3959801036982591283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191026.P3959801036982591283

namespace A191026

/-- `eq[A284289(n), A390614(n)]` -/
def P3959801036982591283.Spec : Prop :=
  ∀ n, (P3959801036982591283.a n : ℤ) = A191026 (n + 1)

end A191026

/-! ## A191026.P9900233843359757315

`eq[A322968(n), A390614(n)]`
-/

namespace A191026.P9900233843359757315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191026.P9900233843359757315

namespace A191026

/-- `eq[A322968(n), A390614(n)]` -/
def P9900233843359757315.Spec : Prop :=
  ∀ n, (P9900233843359757315.a n : ℤ) = A191026 (n + 1)

end A191026

/-! ## A191026.P10603558286999479715

`eq[A053989(n+1), A390614(n)]`
-/

namespace A191026.P10603558286999479715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191026.P10603558286999479715

namespace A191026

/-- `eq[A053989(n+1), A390614(n)]` -/
def P10603558286999479715.Spec : Prop :=
  ∀ n, (P10603558286999479715.a n : ℤ) = A191026 (n + 1)

end A191026

/-! ## A191026.P11058001759525542608

`eq[A231820(n+1), A390614(n)]`
-/

namespace A191026.P11058001759525542608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191026.P11058001759525542608

namespace A191026

/-- `eq[A231820(n+1), A390614(n)]` -/
def P11058001759525542608.Spec : Prop :=
  ∀ n, (P11058001759525542608.a n : ℤ) = A191026 (n + 1)

end A191026

/-! ## A191026.P15357640478810689060

`p?[A153152(eq[2, A035155(n+1)])]`
-/

namespace A191026.P15357640478810689060
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035155 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191026.P15357640478810689060

namespace A191026

/-- `p?[A153152(eq[2, A035155(n+1)])]` -/
def P15357640478810689060.Spec : Prop :=
  ∀ n, P15357640478810689060.a n = A191026 (n + 1)

end A191026

/-! ## A191026.P15218519583397262440

`p?[(A035155(n+1)-1)*A153152(n)]`
-/

namespace A191026.P15218519583397262440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035155 (n + 1) - 1) * A153152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191026.P15218519583397262440

namespace A191026

/-- `p?[(A035155(n+1)-1)*A153152(n)]` -/
def P15218519583397262440.Spec : Prop :=
  ∀ n, P15218519583397262440.a n = A191026 (n + 1)

end A191026

/-! ## A191026.P1519834896433791578

`p?[(A035155(n+1)-1)*A193356(n+1)]`
-/

namespace A191026.P1519834896433791578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035155 (n + 1) - 1) * A193356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191026.P1519834896433791578

namespace A191026

/-- `p?[(A035155(n+1)-1)*A193356(n+1)]` -/
def P1519834896433791578.Spec : Prop :=
  ∀ n, P1519834896433791578.a n = A191026 (n + 1)

end A191026

/-! ## A191026.P5003212262773943970

`p?[A002262(A035155(n+1))*A153152(n)]`
-/

namespace A191026.P5003212262773943970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A035155 (n + 1)).toNat * A153152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191026.P5003212262773943970

namespace A191026

/-- `p?[A002262(A035155(n+1))*A153152(n)]` -/
def P5003212262773943970.Spec : Prop :=
  ∀ n, P5003212262773943970.a n = A191026 (n + 1)

end A191026

/-! ## A191026.P7634636187161207632

`A000040(eq[2, A035155(A000040(n+1))]+1)`
-/

namespace A191026.P7634636187161207632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035155 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A191026.P7634636187161207632

namespace A191026

/-- `A000040(eq[2, A035155(A000040(n+1))]+1)` -/
def P7634636187161207632.Spec : Prop :=
  ∀ n, P7634636187161207632.a n = A191026 (n + 1)

end A191026

/-! ## A191026.P1581278574961131768

`p?[A002262(A035155(n+1))*A193356(n+1)]`
-/

namespace A191026.P1581278574961131768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A035155 (n + 1)).toNat * A193356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191026.P1581278574961131768

namespace A191026

/-- `p?[A002262(A035155(n+1))*A193356(n+1)]` -/
def P1581278574961131768.Spec : Prop :=
  ∀ n, P1581278574961131768.a n = A191026 (n + 1)

end A191026

/-! ## A191026.P13786338287638530279

`eq[A117545(n+1), A390614(n)]`
-/

namespace A191026.P13786338287638530279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191026.P13786338287638530279

namespace A191026

/-- `eq[A117545(n+1), A390614(n)]` -/
def P13786338287638530279.Spec : Prop :=
  ∀ n, (P13786338287638530279.a n : ℤ) = A191026 (n + 1)

end A191026

/-!
# A191027: Primes that are nonzero squares mod 37.

The programs for A191027, there is no canonical definition to state claims against.
-/

/-! ## A191027.P14023580953033849389

`record[A038913(n+1)%A020147(n+1)]`
-/

namespace A191027.P14023580953033849389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038913 (n + 1)) (A020147 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191027.P14023580953033849389

/-! ## A191027.P7691827516388112244

`p?[n*gcd(33, A070660(n))]`
-/

namespace A191027.P7691827516388112244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.gcd 33 (A070660 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191027.P7691827516388112244

/-! ## A191027.P211604587888717810

`eq[A011589(n), A072721(n)]`
-/

namespace A191027.P211604587888717810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011589 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191027.P211604587888717810

/-! ## A191027.P16283325433661235090

`eq[A011589(n), A210442(n)]`
-/

namespace A191027.P16283325433661235090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011589 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191027.P16283325433661235090

/-! ## A191027.P6946084463366379558

`eq[A011589(n), A211110(n)]`
-/

namespace A191027.P6946084463366379558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011589 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191027.P6946084463366379558

/-! ## A191027.P276612509498489479

`eq[A011589(n), A284289(n)]`
-/

namespace A191027.P276612509498489479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011589 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191027.P276612509498489479

/-! ## A191027.P9609336439873021623

`eq[A011589(n), A322968(n)]`
-/

namespace A191027.P9609336439873021623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011589 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191027.P9609336439873021623

/-! ## A191027.P5037852770433636437

`eq[A011589(n), A053989(n+1)]`
-/

namespace A191027.P5037852770433636437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011589 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191027.P5037852770433636437

/-! ## A191027.P6774548980279573507

`eq[A011589(n), A231820(n+1)]`
-/

namespace A191027.P6774548980279573507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011589 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191027.P6774548980279573507

/-! ## A191027.P6240943689798778335

`eq[1, A011589(n)*A231734(n+1)]`
-/

namespace A191027.P6240943689798778335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011589 n * A231734 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191027.P6240943689798778335

/-! ## A191027.P17271999303271745013

`record[A038913(n+1)%A022383(n)]`
-/

namespace A191027.P17271999303271745013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038913 (n + 1)) (A022383 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191027.P17271999303271745013

/-! ## A191027.P4657271341077754230

`∩[A038913(n+1), A248667(n+1)]`
-/

namespace A191027.P4657271341077754230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191027.P4657271341077754230

/-! ## A191027.P10360440401961829331

`eq[A011589(n), A117545(n+1)]`
-/

namespace A191027.P10360440401961829331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011589 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191027.P10360440401961829331

/-!
# A191028: Primes p with Kronecker symbol (p|38) = 1.

The programs for A191028, there is no canonical definition to state claims against.
-/

/-! ## A191028.P6675395966336986416

`p?[(n+1)*A002262(A035152(n+1))]`
-/

namespace A191028.P6675395966336986416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002262 (A035152 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191028.P6675395966336986416

/-! ## A191028.P16479674038155037646

`p?[(A035152(n+1)-1)*A004442(n)]`
-/

namespace A191028.P16479674038155037646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035152 (n + 1) - 1) * A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191028.P16479674038155037646

/-! ## A191028.P15647189602789808587

`p?[(A035152(n+1)-1)*A153152(n)]`
-/

namespace A191028.P15647189602789808587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035152 (n + 1) - 1) * A153152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191028.P15647189602789808587

/-! ## A191028.P4311791802726799282

`p?[(n+2)*A003415(A035152(n+2))]`
-/

namespace A191028.P4311791802726799282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A003415 (A035152 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191028.P4311791802726799282

/-! ## A191028.P6839761721987201886

`eq[A035152(n+1), A051612(n+1)]+1`
-/

namespace A191028.P6839761721987201886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A191028.P6839761721987201886

/-! ## A191028.P12544910813244422681

`p?[(n+1)*A172474(A035152(n+1)+1)]`
-/

namespace A191028.P12544910813244422681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A172474 (A035152 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191028.P12544910813244422681

/-! ## A191028.P2376623372716869013

`p?[gcd(2-A035152(n+1), A089026(n+1))]`
-/

namespace A191028.P2376623372716869013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A035152 (n + 1)) (A089026 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191028.P2376623372716869013

/-! ## A191028.P5512274102647297117

`A000040(eq[2, A035152(A008578(n+1))])`
-/

namespace A191028.P5512274102647297117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035152 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A191028.P5512274102647297117

/-! ## A191028.P329943024639964113

`p?[A002262(A035152(n+1))*A153152(n)]`
-/

namespace A191028.P329943024639964113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A035152 (n + 1)).toNat * A153152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191028.P329943024639964113

/-! ## A191028.P11632996819561105886

`eq[A035152(n+1), A053204(n+1)]+1`
-/

namespace A191028.P11632996819561105886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A191028.P11632996819561105886

/-! ## A191028.P10493877402537557877

`eq[A035152(A093178(n)), A053204(n)]`
-/

namespace A191028.P10493877402537557877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035152 (A093178 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191028.P10493877402537557877

/-!
# A191029: Primes p with Jacobi symbol (p|39) = 1.

The programs for A191029, the canonical program `A191029.P9038524740072031153` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191029 has offset 1).

The definition of A191029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 606 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191029.P9038524740072031153

`p?[eq[2, A035151(n+1)]+1]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A191029

/-- `p?[eq[2, A035151(n+1)]+1]` -/
def P9038524740072031153.Spec : Prop :=
  ∀ n, (P9038524740072031153.a n : ℤ) = A191029 (n + 1)

theorem P9038524740072031153.correct : P9038524740072031153.Spec := by
  intro n
  simp only [A191029, Nat.add_sub_cancel]

end A191029

/-! ## A191029.P7844635391032733833

`eq[A072721(n), A388073(n)]`
-/

namespace A191029.P7844635391032733833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388073 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191029.P7844635391032733833

namespace A191029

/-- `eq[A072721(n), A388073(n)]` -/
def P7844635391032733833.Spec : Prop :=
  ∀ n, (P7844635391032733833.a n : ℤ) = A191029 (n + 1)

end A191029

/-! ## A191029.P3057800932059902806

`eq[A210442(n), A388073(n)]`
-/

namespace A191029.P3057800932059902806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388073 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191029.P3057800932059902806

namespace A191029

/-- `eq[A210442(n), A388073(n)]` -/
def P3057800932059902806.Spec : Prop :=
  ∀ n, (P3057800932059902806.a n : ℤ) = A191029 (n + 1)

end A191029

/-! ## A191029.P11353257347515310092

`eq[A211110(n), A388073(n)]`
-/

namespace A191029.P11353257347515310092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388073 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191029.P11353257347515310092

namespace A191029

/-- `eq[A211110(n), A388073(n)]` -/
def P11353257347515310092.Spec : Prop :=
  ∀ n, (P11353257347515310092.a n : ℤ) = A191029 (n + 1)

end A191029

/-! ## A191029.P7020212245721120975

`eq[A284289(n), A388073(n)]`
-/

namespace A191029.P7020212245721120975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388073 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191029.P7020212245721120975

namespace A191029

/-- `eq[A284289(n), A388073(n)]` -/
def P7020212245721120975.Spec : Prop :=
  ∀ n, (P7020212245721120975.a n : ℤ) = A191029 (n + 1)

end A191029

/-! ## A191029.P13171536610208868867

`eq[A322968(n), A388073(n)]`
-/

namespace A191029.P13171536610208868867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388073 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191029.P13171536610208868867

namespace A191029

/-- `eq[A322968(n), A388073(n)]` -/
def P13171536610208868867.Spec : Prop :=
  ∀ n, (P13171536610208868867.a n : ℤ) = A191029 (n + 1)

end A191029

/-! ## A191029.P12262006453850559595

`eq[A053989(n+1), A388073(n)]`
-/

namespace A191029.P12262006453850559595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388073 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191029.P12262006453850559595

namespace A191029

/-- `eq[A053989(n+1), A388073(n)]` -/
def P12262006453850559595.Spec : Prop :=
  ∀ n, (P12262006453850559595.a n : ℤ) = A191029 (n + 1)

end A191029

/-! ## A191029.P592543076476976299

`eq[A231820(n+1), A388073(n)]`
-/

namespace A191029.P592543076476976299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388073 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191029.P592543076476976299

namespace A191029

/-- `eq[A231820(n+1), A388073(n)]` -/
def P592543076476976299.Spec : Prop :=
  ∀ n, (P592543076476976299.a n : ℤ) = A191029 (n + 1)

end A191029

/-! ## A191029.P826450014025375540

`p?[(A035151(n+1)-1)*A007947(n+1)]`
-/

namespace A191029.P826450014025375540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035151 (n + 1) - 1) * A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191029.P826450014025375540

namespace A191029

/-- `p?[(A035151(n+1)-1)*A007947(n+1)]` -/
def P826450014025375540.Spec : Prop :=
  ∀ n, P826450014025375540.a n = A191029 (n + 1)

end A191029

/-! ## A191029.P2676373625284975686

`p?[(n+1)*(A035151(n+1)-A345994(n+1))]`
-/

namespace A191029.P2676373625284975686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A035151 (n + 1) - A345994 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191029.P2676373625284975686

namespace A191029

/-- `p?[(n+1)*(A035151(n+1)-A345994(n+1))]` -/
def P2676373625284975686.Spec : Prop :=
  ∀ n, P2676373625284975686.a n = A191029 (n + 1)

end A191029

/-! ## A191029.P8716047823616643562

`A000040(eq[2, A035151(A008578(n+1))])`
-/

namespace A191029.P8716047823616643562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035151 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A191029.P8716047823616643562

namespace A191029

/-- `A000040(eq[2, A035151(A008578(n+1))])` -/
def P8716047823616643562.Spec : Prop :=
  ∀ n, P8716047823616643562.a n = A191029 (n + 1)

end A191029

/-! ## A191029.P17043817350029400000

`A000040(eq[2, A035151(A000040(n+1))]+1)`
-/

namespace A191029.P17043817350029400000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035151 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A191029.P17043817350029400000

namespace A191029

/-- `A000040(eq[2, A035151(A000040(n+1))]+1)` -/
def P17043817350029400000.Spec : Prop :=
  ∀ n, P17043817350029400000.a n = A191029 (n + 1)

end A191029

/-! ## A191029.P14786396613458451927

`eq[A117545(n+1), A388073(n)]`
-/

namespace A191029.P14786396613458451927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388073 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191029.P14786396613458451927

namespace A191029

/-- `eq[A117545(n+1), A388073(n)]` -/
def P14786396613458451927.Spec : Prop :=
  ∀ n, (P14786396613458451927.a n : ℤ) = A191029 (n + 1)

end A191029

/-!
# A191030: Primes that are quadratic residues mod 41.

The programs for A191030, there is no canonical definition to state claims against.
-/

/-! ## A191030.P5583894199130360980

`p?[A038919(n+1)+char[5]]`
-/

namespace A191030.P5583894199130360980
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038919 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191030.P5583894199130360980

/-! ## A191030.P16574985277754586730

`record[A038919(n+1)%Δ[A033849(n+1)]]`
-/

namespace A191030.P16574985277754586730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033849 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038919 (n + 1)) (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191030.P16574985277754586730

/-! ## A191030.P18035596540374823359

`p?[n*A011590(n)]`
-/

namespace A191030.P18035596540374823359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191030.P18035596540374823359

/-! ## A191030.P9012109687556845044

`eq[A011590(n), A072721(n)]`
-/

namespace A191030.P9012109687556845044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011590 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191030.P9012109687556845044

/-! ## A191030.P559238998100809305

`eq[A011590(n), A210442(n)]`
-/

namespace A191030.P559238998100809305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011590 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191030.P559238998100809305

/-! ## A191030.P14330878078638944157

`eq[A011590(n), A211110(n)]`
-/

namespace A191030.P14330878078638944157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011590 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191030.P14330878078638944157

/-! ## A191030.P7827719263926259754

`eq[A011590(n), A284289(n)]`
-/

namespace A191030.P7827719263926259754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011590 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191030.P7827719263926259754

/-! ## A191030.P17691795684651190697

`eq[A011590(n), A322968(n)]`
-/

namespace A191030.P17691795684651190697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011590 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191030.P17691795684651190697

/-! ## A191030.P8499798606058071219

`eq[A011590(n), A053989(n+1)]`
-/

namespace A191030.P8499798606058071219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011590 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191030.P8499798606058071219

/-! ## A191030.P7708237894710419159

`eq[A011590(n), A231820(n+1)]`
-/

namespace A191030.P7708237894710419159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011590 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191030.P7708237894710419159

/-! ## A191030.P16278029145343493661

`eq[A011590(n), A117545(n+1)]`
-/

namespace A191030.P16278029145343493661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011590 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191030.P16278029145343493661

/-! ## A191030.P11504599479920980712

`∩[A038919(n+1), A181092(n+1)]`
-/

namespace A191030.P11504599479920980712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191030.P11504599479920980712

/-!
# A191031: Primes that are squares mod 43.

The programs for A191031, there is no canonical definition to state claims against.
-/

/-! ## A191031.P14688631061835497712

`p?[lt[2, A138811(n)]]`
-/

namespace A191031.P14688631061835497712
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138811 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191031.P14688631061835497712

/-! ## A191031.P12538566686005592255

`eq[A011591(n), A072721(n)]`
-/

namespace A191031.P12538566686005592255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191031.P12538566686005592255

/-! ## A191031.P3139844163610807823

`eq[A048785(n), A138811(n)]`
-/

namespace A191031.P3139844163610807823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191031.P3139844163610807823

/-! ## A191031.P2411317951467288089

`eq[A011591(n), A210442(n)]`
-/

namespace A191031.P2411317951467288089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191031.P2411317951467288089

/-! ## A191031.P183532356181103889

`eq[A011591(n), A211110(n)]`
-/

namespace A191031.P183532356181103889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191031.P183532356181103889

/-! ## A191031.P4578149135828572937

`eq[A011591(n), A284289(n)]`
-/

namespace A191031.P4578149135828572937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191031.P4578149135828572937

/-! ## A191031.P7252641071502260437

`eq[A011591(n), A322968(n)]`
-/

namespace A191031.P7252641071502260437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191031.P7252641071502260437

/-! ## A191031.P17221626192433982675

`eq[A011591(n), A053989(n+1)]`
-/

namespace A191031.P17221626192433982675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191031.P17221626192433982675

/-! ## A191031.P7017260667483606354

`eq[A011591(n), A231820(n+1)]`
-/

namespace A191031.P7017260667483606354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191031.P7017260667483606354

/-! ## A191031.P187126964004103947

`p?[n*A002266(A138811(n)+1)]`
-/

namespace A191031.P187126964004103947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002266 (A138811 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191031.P187126964004103947

/-! ## A191031.P1227678910580825162

`p?[n*A023416(A138811(n)+1)]`
-/

namespace A191031.P1227678910580825162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A023416 (A138811 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191031.P1227678910580825162

/-! ## A191031.P8734858906842634568

`eq[(A068346(n)+2)², A138811(n)]`
-/

namespace A191031.P8734858906842634568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A068346 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191031.P8734858906842634568

/-! ## A191031.P863193852218108231

`eq[(A072480(n)+2)², A138811(n)]`
-/

namespace A191031.P863193852218108231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A072480 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191031.P863193852218108231

/-! ## A191031.P16768267247784940239

`eq[(A277894(n)+2)², A138811(n)]`
-/

namespace A191031.P16768267247784940239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A277894 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191031.P16768267247784940239

/-! ## A191031.P10878487586083806155

`eq[(A278648(n)+2)², A138811(n)]`
-/

namespace A191031.P10878487586083806155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A278648 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191031.P10878487586083806155

/-! ## A191031.P16712803798712006222

`eq[(2*A032741(n))², A138811(n)]`
-/

namespace A191031.P16712803798712006222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A032741 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191031.P16712803798712006222

/-! ## A191031.P15876122169568114415

`p?[n*A023416(17-A138811(n))]`
-/

namespace A191031.P15876122169568114415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A023416 (17 - A138811 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191031.P15876122169568114415

/-! ## A191031.P15362600133225680450

`p?[(n+1)*A122202(A138811(n+1))]`
-/

namespace A191031.P15362600133225680450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A122202 (A138811 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191031.P15362600133225680450

/-! ## A191031.P655680670667589127

`eq[A056982(A053989(n+1)), A138811(n)]`
-/

namespace A191031.P655680670667589127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056982 (A053989 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191031.P655680670667589127

/-! ## A191031.P9356709996225136364

`eq[A011591(n), A117545(n+1)]`
-/

namespace A191031.P9356709996225136364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191031.P9356709996225136364

/-!
# A191032: Primes p with Kronecker symbol (p|46) = 1.

The programs for A191032, there is no canonical definition to state claims against.
-/

/-! ## A191032.P8894727016757505345

`p?[eq[2, A035144(n+1)]+1]`
-/

namespace A191032.P8894727016757505345
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035144 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191032.P8894727016757505345

/-! ## A191032.P2988507195968405244

`p?[A004442(eq[2, A035144(n+1)])]`
-/

namespace A191032.P2988507195968405244
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035144 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191032.P2988507195968405244

/-! ## A191032.P4114813282005579502

`p?[(A035144(n+1)-1)*A004442(n)]`
-/

namespace A191032.P4114813282005579502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035144 (n + 1) - 1) * A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191032.P4114813282005579502

/-! ## A191032.P11691146414593076698

`p?[gcd(2-A035144(n+1), A089026(n+1))]`
-/

namespace A191032.P11691146414593076698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A035144 (n + 1)) (A089026 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191032.P11691146414593076698

/-! ## A191032.P3782088516490346766

`eq[2, A068346(n)+A035144(A047411(n+1))]`
-/

namespace A191032.P3782088516490346766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 n + A035144 (A047411 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191032.P3782088516490346766

/-! ## A191032.P16364824752033459211

`eq[2, A277894(n)+A035144(A047411(n+1))]`
-/

namespace A191032.P16364824752033459211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277894 n + A035144 (A047411 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191032.P16364824752033459211

/-! ## A191032.P13516980901248293118

`eq[A035144(n+1), A053204(n+1)]+1`
-/

namespace A191032.P13516980901248293118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A191032.P13516980901248293118

/-! ## A191032.P7856191308772291819

`eq[A035144(A047411(n+1)), A053204(n)]`
-/

namespace A191032.P7856191308772291819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035144 (A047411 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191032.P7856191308772291819

/-! ## A191032.P16460769441589263459

`eq[A035144(n+1), A119655(n+1)]+1`
-/

namespace A191032.P16460769441589263459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119655 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A191032.P16460769441589263459

/-!
# A191033: Primes that are squares mod 47.

The programs for A191033, there is no canonical definition to state claims against.
-/

/-! ## A191033.P16216248678032538996

`p?[(n+1)*(A035143(n+1)-1)]`
-/

namespace A191033.P16216248678032538996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A035143 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191033.P16216248678032538996

/-! ## A191033.P1480271697672459968

`eq[A011592(n), A072721(n)]`
-/

namespace A191033.P1480271697672459968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191033.P1480271697672459968

/-! ## A191033.P13641482856787925926

`eq[A011592(n), A210442(n)]`
-/

namespace A191033.P13641482856787925926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191033.P13641482856787925926

/-! ## A191033.P3921847908174940006

`eq[A011592(n), A211110(n)]`
-/

namespace A191033.P3921847908174940006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191033.P3921847908174940006

/-! ## A191033.P2935038412489571684

`eq[A011592(n), A284289(n)]`
-/

namespace A191033.P2935038412489571684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191033.P2935038412489571684

/-! ## A191033.P16694211002452547511

`eq[A011592(n), A322968(n)]`
-/

namespace A191033.P16694211002452547511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191033.P16694211002452547511

/-! ## A191033.P1520089966896533450

`eq[A011592(n), A053989(n+1)]`
-/

namespace A191033.P1520089966896533450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191033.P1520089966896533450

/-! ## A191033.P291911734822577466

`eq[A011592(n), A231820(n+1)]`
-/

namespace A191033.P291911734822577466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191033.P291911734822577466

/-! ## A191033.P5997803258629966672

`p?[(n+1)*A320857(A035143(n+1)+5)]`
-/

namespace A191033.P5997803258629966672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A320857 (A035143 (n + 1) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191033.P5997803258629966672

/-! ## A191033.P17368572641801041280

`A000040(eq[2, A035143(A000040(n+1))]+1)`
-/

namespace A191033.P17368572641801041280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035143 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A191033.P17368572641801041280

/-! ## A191033.P1123180340884237216

`record[A267601(n+1)%A022323(A056023(n+1))]`
-/

namespace A191033.P1123180340884237216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267601 (n + 1)) (A022323 (A056023 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191033.P1123180340884237216

/-! ## A191033.P8077305119432343023

`p?[(n+1)*A059268(A035143(n+1)+4)]`
-/

namespace A191033.P8077305119432343023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A059268 (A035143 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191033.P8077305119432343023

/-! ## A191033.P2560311467484428638

`p?[(A035143(n+1)-1)*A139693(n)]`
-/

namespace A191033.P2560311467484428638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035143 (n + 1) - 1) * A139693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191033.P2560311467484428638

/-! ## A191033.P7096670705342340771

`eq[A011592(n), A117545(n+1)]`
-/

namespace A191033.P7096670705342340771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191033.P7096670705342340771

/-!
# A191034: Primes p with Jacobi symbol (p|51) = 1.

The programs for A191034, there is no canonical definition to state claims against.
-/

/-! ## A191034.P12336247984001923534

`A065380(lt[A000288(n), A284861(n)])`
-/

namespace A191034.P12336247984001923534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065380 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A191034.P12336247984001923534

/-! ## A191034.P2040297083799808564

`A000040(lt[A335703(n), A202017(n+1)])`
-/

namespace A191034.P2040297083799808564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335703 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A191034.P2040297083799808564

/-! ## A191034.P9667978050043712654

`A065091(lt[A000079(n+4), A334772(n+2)])`
-/

namespace A191034.P9667978050043712654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334772 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A191034.P9667978050043712654

/-!
# A191035: Primes that are squares mod 53.

The programs for A191035, there is no canonical definition to state claims against.
-/

/-! ## A191035.P6144893188961779043

`p?[n*A011593(n)]`
-/

namespace A191035.P6144893188961779043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191035.P6144893188961779043

/-! ## A191035.P17109964792634069910

`eq[A011593(n), A072721(n)]`
-/

namespace A191035.P17109964792634069910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011593 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191035.P17109964792634069910

/-! ## A191035.P7229358449176682955

`eq[A011593(n), A210442(n)]`
-/

namespace A191035.P7229358449176682955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011593 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191035.P7229358449176682955

/-! ## A191035.P805191015093805561

`eq[A011593(n), A211110(n)]`
-/

namespace A191035.P805191015093805561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011593 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191035.P805191015093805561

/-! ## A191035.P17666360677692233539

`eq[A011593(n), A284289(n)]`
-/

namespace A191035.P17666360677692233539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011593 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191035.P17666360677692233539

/-! ## A191035.P3735159746529543335

`eq[A011593(n), A322968(n)]`
-/

namespace A191035.P3735159746529543335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011593 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191035.P3735159746529543335

/-! ## A191035.P6470016103695697281

`eq[A011593(n), A053989(n+1)]`
-/

namespace A191035.P6470016103695697281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011593 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191035.P6470016103695697281

/-! ## A191035.P12647765170531492187

`eq[A011593(n), A231820(n+1)]`
-/

namespace A191035.P12647765170531492187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011593 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191035.P12647765170531492187

/-! ## A191035.P10444566071086883861

`p?[or(A011593(n)-1, A093178(n))]`
-/

namespace A191035.P10444566071086883861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011593 n - 1) (A093178 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191035.P10444566071086883861

/-! ## A191035.P17968282408323880273

`eq[A011593(n), A117545(n+1)]`
-/

namespace A191035.P17968282408323880273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011593 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191035.P17968282408323880273

/-!
# A191036: Primes p that have Jacobi symbol (p|55) = 1.

The programs for A191036, there is no canonical definition to state claims against.
-/

/-! ## A191036.P8507241923724175705

`p?[eq[A352550(n+1), A352565(n+1)]+1]`
-/

namespace A191036.P8507241923724175705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352550 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352565 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191036.P8507241923724175705

/-! ## A191036.P9350696038775996265

`p?[record[A029455(n+3)-A088567(n+1)]]`
-/

namespace A191036.P9350696038775996265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029455 (n + 3) - A088567 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191036.P9350696038775996265

/-! ## A191036.P15354971036107461475

`eq[A003415(n), A124331(A249125(n+1))]`
-/

namespace A191036.P15354971036107461475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124331 (A249125 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191036.P15354971036107461475

/-! ## A191036.P6735442999651918425

`eq[A032741(n), A124331(A249125(n+1))]`
-/

namespace A191036.P6735442999651918425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124331 (A249125 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191036.P6735442999651918425

/-!
# A191037: Primes p that have Jacobi symbol (p|58) = 1.

The programs for A191037, there is no canonical definition to state claims against.
-/

/-! ## A191037.P5377989285300355568

`∩[A029674(n+1), A038937(n+1)]`
-/

namespace A191037.P5377989285300355568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191037.P5377989285300355568

/-! ## A191037.P15766273252366404066

`∩[A038937(n+1), A126003(n+1)]`
-/

namespace A191037.P15766273252366404066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191037.P15766273252366404066

/-! ## A191037.P1824441487497695541

`p?[A313145(n)-A014963(A129374(n))]`
-/

namespace A191037.P1824441487497695541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313145 n - A014963 (A129374 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191037.P1824441487497695541

/-! ## A191037.P4987342898752859818

`A000040(lt[A090888(n), A007733(n+1)])`
-/

namespace A191037.P4987342898752859818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090888 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A191037.P4987342898752859818

/-! ## A191037.P16241117299171892454

`A000040(lt[A144183(n), A000265(n+1)])`
-/

namespace A191037.P16241117299171892454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A191037.P16241117299171892454

/-!
# A191038: Primes that are squares mod 59.

The programs for A191038, there is no canonical definition to state claims against.
-/

/-! ## A191038.P14984056800626546216

`eq[A011594(n), A072721(n)]`
-/

namespace A191038.P14984056800626546216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191038.P14984056800626546216

/-! ## A191038.P255037233917209716

`eq[A011594(n), A210442(n)]`
-/

namespace A191038.P255037233917209716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191038.P255037233917209716

/-! ## A191038.P9904062001324654009

`eq[A011594(n), A211110(n)]`
-/

namespace A191038.P9904062001324654009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191038.P9904062001324654009

/-! ## A191038.P7428157055429261144

`eq[A011594(n), A284289(n)]`
-/

namespace A191038.P7428157055429261144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191038.P7428157055429261144

/-! ## A191038.P15685719050177402106

`eq[A011594(n), A322968(n)]`
-/

namespace A191038.P15685719050177402106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191038.P15685719050177402106

/-! ## A191038.P15680115747787989834

`eq[A011594(n), A053989(n+1)]`
-/

namespace A191038.P15680115747787989834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191038.P15680115747787989834

/-! ## A191038.P14357657542008717867

`eq[A011594(n), A231820(n+1)]`
-/

namespace A191038.P14357657542008717867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191038.P14357657542008717867

/-! ## A191038.P10097775703688389926

`eq[A011594(n), A117545(n+1)]`
-/

namespace A191038.P10097775703688389926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191038.P10097775703688389926

/-! ## A191038.P4862580314407342683

`eq[A011594(n), A331885(n)]`
-/

namespace A191038.P4862580314407342683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331885 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191038.P4862580314407342683

/-! ## A191038.P14534287919418515407

`eq[A011594(n), A239938(n+1)]`
-/

namespace A191038.P14534287919418515407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239938 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191038.P14534287919418515407

/-!
# A191039: Primes that are squares mod 61.

The programs for A191039, there is no canonical definition to state claims against.
-/

/-! ## A191039.P4689580366515559435

`∩[A038941(n+1), A065396(n+1)]`
-/

namespace A191039.P4689580366515559435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191039.P4689580366515559435

/-! ## A191039.P17483797457381215566

`∩[A065396(n+1), A243654(n+1)]`
-/

namespace A191039.P17483797457381215566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191039.P17483797457381215566

/-! ## A191039.P13012719851873071947

`p?[n*A011595(n)]`
-/

namespace A191039.P13012719851873071947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191039.P13012719851873071947

/-! ## A191039.P12026454891594652147

`eq[A011595(n), A072721(n)]`
-/

namespace A191039.P12026454891594652147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011595 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191039.P12026454891594652147

/-! ## A191039.P6116694135533926229

`eq[A011595(n), A210442(n)]`
-/

namespace A191039.P6116694135533926229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011595 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191039.P6116694135533926229

/-! ## A191039.P2071499124641961022

`eq[A011595(n), A211110(n)]`
-/

namespace A191039.P2071499124641961022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011595 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191039.P2071499124641961022

/-! ## A191039.P3630509980632881162

`eq[A011595(n), A284289(n)]`
-/

namespace A191039.P3630509980632881162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011595 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191039.P3630509980632881162

/-! ## A191039.P670057179528676387

`eq[A011595(n), A322968(n)]`
-/

namespace A191039.P670057179528676387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011595 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191039.P670057179528676387

/-! ## A191039.P8963554796590038958

`eq[A011595(n), A053989(n+1)]`
-/

namespace A191039.P8963554796590038958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011595 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191039.P8963554796590038958

/-! ## A191039.P10426413290347584318

`eq[A011595(n), A231820(n+1)]`
-/

namespace A191039.P10426413290347584318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011595 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191039.P10426413290347584318

/-! ## A191039.P11554141896567202787

`eq[1, A011595(n)*A231734(n+1)]`
-/

namespace A191039.P11554141896567202787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011595 n * A231734 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191039.P11554141896567202787

/-! ## A191039.P6133152330389472645

`eq[A011595(n), A117545(n+1)]`
-/

namespace A191039.P6133152330389472645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011595 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191039.P6133152330389472645

/-!
# A191040: Primes p that have Kronecker symbol (p|62) = 1.

The programs for A191040, there is no canonical definition to state claims against.
-/

/-! ## A191040.P6266050158065299052

`p?[A005408(record[A326441(n)])]`
-/

namespace A191040.P6266050158065299052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326441 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191040.P6266050158065299052

/-! ## A191040.P9812086417382676997

`A000040(lt[A272722(n+5), n])`
-/

namespace A191040.P9812086417382676997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272722 (n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A191040.P9812086417382676997

/-! ## A191040.P546968724245978635

`p?[∑[A094839(A325129(n+1))]]`
-/

namespace A191040.P546968724245978635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094839 (A325129 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191040.P546968724245978635

/-! ## A191040.P16819992513317562929

`record[A006530(lt[3, A330369(n+1)])]`
-/

namespace A191040.P16819992513317562929
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330369 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191040.P16819992513317562929

/-!
# A191041: Primes that are squares mod 67.

The programs for A191041, there is no canonical definition to state claims against.
-/

/-! ## A191041.P15822598839159906108

`p?[lt[2, A318984(n)]]`
-/

namespace A191041.P15822598839159906108
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318984 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191041.P15822598839159906108

/-! ## A191041.P15898861382204756187

`p?[n*A011596(n)]`
-/

namespace A191041.P15898861382204756187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191041.P15898861382204756187

/-! ## A191041.P9367281787332953719

`eq[A011596(n), A072721(n)]`
-/

namespace A191041.P9367281787332953719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011596 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191041.P9367281787332953719

/-! ## A191041.P11527452941327415905

`eq[A011596(n), A210442(n)]`
-/

namespace A191041.P11527452941327415905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011596 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191041.P11527452941327415905

/-! ## A191041.P9887490164714330555

`eq[A011596(n), A211110(n)]`
-/

namespace A191041.P9887490164714330555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011596 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191041.P9887490164714330555

/-! ## A191041.P5217484150418631982

`eq[A011596(n), A284289(n)]`
-/

namespace A191041.P5217484150418631982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011596 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191041.P5217484150418631982

/-! ## A191041.P9646859125716140221

`eq[A011596(n), A322968(n)]`
-/

namespace A191041.P9646859125716140221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011596 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191041.P9646859125716140221

/-! ## A191041.P258594175462175889

`eq[A048785(n), A318984(n)]`
-/

namespace A191041.P258594175462175889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318984 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191041.P258594175462175889

/-! ## A191041.P7511744604229006830

`p?[eq[A011596(n), A118102(n)]]`
-/

namespace A191041.P7511744604229006830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011596 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118102 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191041.P7511744604229006830

/-! ## A191041.P12196576293925586416

`p?[eq[A011596(n), A324198(n)]]`
-/

namespace A191041.P12196576293925586416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011596 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191041.P12196576293925586416

/-! ## A191041.P17048295277921936176

`eq[A011596(n), A053989(n+1)]`
-/

namespace A191041.P17048295277921936176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011596 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191041.P17048295277921936176

/-! ## A191041.P5212078466588839753

`eq[A011596(n), A231820(n+1)]`
-/

namespace A191041.P5212078466588839753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011596 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191041.P5212078466588839753

/-! ## A191041.P1257041180680094389

`record[A000010(lt[2, A318984(n)])]+1`
-/

namespace A191041.P1257041180680094389
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318984 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A191041.P1257041180680094389

/-! ## A191041.P18004419763964725238

`p?[n*A085811(A318984(n)+2)]`
-/

namespace A191041.P18004419763964725238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A085811 (A318984 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191041.P18004419763964725238

/-! ## A191041.P4207079141363910332

`eq[(2*A072491(n))², A318984(n)]`
-/

namespace A191041.P4207079141363910332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A072491 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318984 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191041.P4207079141363910332

/-! ## A191041.P15817735963835125393

`p?[gcd(n, A099040(A318984(n)²)²)]`
-/

namespace A191041.P15817735963835125393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A099040 (A318984 n ^ 2).toNat ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191041.P15817735963835125393

/-! ## A191041.P7595088524143653326

`eq[1, A011596(n)*A231734(n+1)]`
-/

namespace A191041.P7595088524143653326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011596 n * A231734 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191041.P7595088524143653326

/-! ## A191041.P16993088489824074084

`eq[A001222(n+1), A305559(A318984(n+1))]+1`
-/

namespace A191041.P16993088489824074084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305559 (A318984 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A191041.P16993088489824074084

/-! ## A191041.P16185245751263429259

`eq[A000005(n+1), A318984(A318984(n+1))]+1`
-/

namespace A191041.P16185245751263429259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318984 (A318984 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A191041.P16185245751263429259

/-! ## A191041.P15150635687975290418

`eq[A011596(n), A117545(n+1)]`
-/

namespace A191041.P15150635687975290418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011596 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191041.P15150635687975290418

/-!
# A191042: Primes p that have Jacobi symbol (p|69) = 1.

The programs for A191042, there is no canonical definition to state claims against.
-/

/-! ## A191042.P11444749640048586462

`A038951(round(sqrt(A028878(n))))`
-/

namespace A191042.P11444749640048586462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038951 (SequenceMachineLib.roundAway (Real.sqrt (A028878 n : ℝ))).toNat

end

end A191042.P11444749640048586462

/-! ## A191042.P18432948293836822780

`∩[A038951(n+1), A177103(n+1)]`
-/

namespace A191042.P18432948293836822780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191042.P18432948293836822780

/-! ## A191042.P10785053836583858837

`∩[A038951(n+1), A299791(n+1)]`
-/

namespace A191042.P10785053836583858837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191042.P10785053836583858837

/-! ## A191042.P2421025168241054803

`∩[A038951(n+1), A272260(n+1)]`
-/

namespace A191042.P2421025168241054803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191042.P2421025168241054803

/-! ## A191042.P4428139268761652232

`p?[A141736(A038967(n+1))+A038951(n+1)]`
-/

namespace A191042.P4428139268761652232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141736 (A038967 (n + 1)).toNat + A038951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191042.P4428139268761652232

/-!
# A191043: Primes p that have Kronecker symbol (p|70) = 1.

The programs for A191043, there is no canonical definition to state claims against.
-/

/-! ## A191043.P8808377584747918391

`p?[A206822(A053438(n)+9)]`
-/

namespace A191043.P8808377584747918391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206822 (A053438 n + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191043.P8808377584747918391

/-! ## A191043.P10857108559826228995

`p?[A099649(A099649(n+1)+12)]`
-/

namespace A191043.P10857108559826228995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099649 (A099649 (n + 1) + 12).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191043.P10857108559826228995

/-! ## A191043.P16723035851413528051

`∩[A280846(n+1), A386338(n+1)]`
-/

namespace A191043.P16723035851413528051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191043.P16723035851413528051

/-!
# A191044: Primes that are squares mod 71.

The programs for A191044, there is no canonical definition to state claims against.
-/

/-! ## A191044.P6090852016833900291

`p?[n*A011597(n)]`
-/

namespace A191044.P6090852016833900291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191044.P6090852016833900291

/-! ## A191044.P4473498242185240011

`eq[A011597(n), A072721(n)]`
-/

namespace A191044.P4473498242185240011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011597 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191044.P4473498242185240011

/-! ## A191044.P14611504635905592053

`eq[A011597(n), A210442(n)]`
-/

namespace A191044.P14611504635905592053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011597 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191044.P14611504635905592053

/-! ## A191044.P9704423232762097034

`eq[A011597(n), A211110(n)]`
-/

namespace A191044.P9704423232762097034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011597 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191044.P9704423232762097034

/-! ## A191044.P16685908884261282884

`eq[A011597(n), A284289(n)]`
-/

namespace A191044.P16685908884261282884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011597 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191044.P16685908884261282884

/-! ## A191044.P7941350886416575882

`eq[A011597(n), A322968(n)]`
-/

namespace A191044.P7941350886416575882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011597 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191044.P7941350886416575882

/-! ## A191044.P4191886290904645505

`eq[A011597(n), A053989(n+1)]`
-/

namespace A191044.P4191886290904645505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011597 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191044.P4191886290904645505

/-! ## A191044.P2631276897670219236

`eq[A011597(n), A231820(n+1)]`
-/

namespace A191044.P2631276897670219236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011597 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191044.P2631276897670219236

/-! ## A191044.P9529167855162791280

`eq[2, A011597(n)+A003415(n)]`
-/

namespace A191044.P9529167855162791280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011597 n + A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191044.P9529167855162791280

/-! ## A191044.P8805646044839581861

`eq[A011597(n), A117545(n+1)]`
-/

namespace A191044.P8805646044839581861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011597 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191044.P8805646044839581861

/-!
# A191045: Primes that are squares mod 73.

The programs for A191045, there is no canonical definition to state claims against.
-/

/-! ## A191045.P4907663206937734338

`eq[A011598(n), A072721(n)]`
-/

namespace A191045.P4907663206937734338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011598 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191045.P4907663206937734338

/-! ## A191045.P15296611047533437149

`eq[A011598(n), A210442(n)]`
-/

namespace A191045.P15296611047533437149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011598 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191045.P15296611047533437149

/-! ## A191045.P11979070886919934211

`eq[A011598(n), A211110(n)]`
-/

namespace A191045.P11979070886919934211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011598 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191045.P11979070886919934211

/-! ## A191045.P17977439757017332182

`eq[A011598(n), A284289(n)]`
-/

namespace A191045.P17977439757017332182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011598 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191045.P17977439757017332182

/-! ## A191045.P13285080613267070928

`eq[A011598(n), A322968(n)]`
-/

namespace A191045.P13285080613267070928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011598 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191045.P13285080613267070928

/-! ## A191045.P5013573557182820496

`eq[A011598(n), A053989(n+1)]`
-/

namespace A191045.P5013573557182820496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011598 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191045.P5013573557182820496

/-! ## A191045.P11635976437991471595

`eq[A011598(n), A231820(n+1)]`
-/

namespace A191045.P11635976437991471595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011598 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191045.P11635976437991471595

/-! ## A191045.P5804437413199815027

`eq[A011598(2*n), A231734(n+1)]`
-/

namespace A191045.P5804437413199815027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011598 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231734 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191045.P5804437413199815027

/-! ## A191045.P212872253534255110

`eq[A011598(n), A117545(n+1)]`
-/

namespace A191045.P212872253534255110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011598 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191045.P212872253534255110

/-! ## A191045.P14489626796048625864

`eq[A011598(n), A331885(n)]`
-/

namespace A191045.P14489626796048625864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011598 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331885 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191045.P14489626796048625864

/-!
# A191046: Primes p that have Kronecker symbol (p|74) = 1.

The programs for A191046, there is no canonical definition to state claims against.
-/

/-! ## A191046.P8507840419612848565

`p?[A038959(n+2)+char[5]]`
-/

namespace A191046.P8507840419612848565
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038959 (n + 2) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191046.P8507840419612848565

/-! ## A191046.P8613967249835207890

`∩[A038959(n+1), A318871(n+1)]`
-/

namespace A191046.P8613967249835207890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191046.P8613967249835207890

/-! ## A191046.P12014362706964108469

`record[A000265(A038959(n+2)+char[5])]`
-/

namespace A191046.P12014362706964108469
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A038959 (n + 2) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191046.P12014362706964108469

/-! ## A191046.P2716187112344277303

`record[A006530(A038959(n+2)+char[5])]`
-/

namespace A191046.P2716187112344277303
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A038959 (n + 2) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191046.P2716187112344277303

/-! ## A191046.P3277629581735284096

`record[A020639(A038959(n+2)+char[5])]`
-/

namespace A191046.P3277629581735284096
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A038959 (n + 2) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191046.P3277629581735284096

/-! ## A191046.P13888218746696843037

`record[A034699(A038959(n+2)+char[5])]`
-/

namespace A191046.P13888218746696843037
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A038959 (n + 2) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191046.P13888218746696843037

/-! ## A191046.P3141994286935967810

`record[A093178(A038959(n+2)+char[5])]`
-/

namespace A191046.P3141994286935967810
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A038959 (n + 2) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191046.P3141994286935967810

/-! ## A191046.P15258805392621435262

`record[A014963(A038959(n+2)+char[5])]`
-/

namespace A191046.P15258805392621435262
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A038959 (n + 2) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191046.P15258805392621435262

/-! ## A191046.P3031707804729326250

`record[A060819(A038959(n+2)+char[5])]`
-/

namespace A191046.P3031707804729326250
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A038959 (n + 2) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191046.P3031707804729326250

/-!
# A191047: Primes p that have Kronecker symbol (p|78) = 1.

The programs for A191047, there is no canonical definition to state claims against.
-/

/-! ## A191047.P10026208426617688883

`p?[A225387(lt[1, A046214(n+1)]+4)]`
-/

namespace A191047.P10026208426617688883
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046214 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225387 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191047.P10026208426617688883

/-! ## A191047.P13305091265817147380

`A117366(A317964(n+4)%A223631(n+3))`
-/

namespace A191047.P13305091265817147380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (Int.tmod (A317964 (n + 4)) (A223631 (n + 3))).toNat

end

end A191047.P13305091265817147380

/-! ## A191047.P7651403794897826522

`A000040(lt[A020492(n+1), A114588(3*n+1)])`
-/

namespace A191047.P7651403794897826522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114588 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A191047.P7651403794897826522

/-!
# A191048: Primes that are squares mod 79.

The programs for A191048, there is no canonical definition to state claims against.
-/

/-! ## A191048.P15534701527837407989

`p?[n*A011599(n)]`
-/

namespace A191048.P15534701527837407989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191048.P15534701527837407989

/-! ## A191048.P6143428082538022969

`eq[A011599(n), A072721(n)]`
-/

namespace A191048.P6143428082538022969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011599 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191048.P6143428082538022969

/-! ## A191048.P726717748350811894

`eq[A011599(n), A210442(n)]`
-/

namespace A191048.P726717748350811894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011599 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191048.P726717748350811894

/-! ## A191048.P16538573566418177851

`eq[A011599(n), A211110(n)]`
-/

namespace A191048.P16538573566418177851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011599 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191048.P16538573566418177851

/-! ## A191048.P17586833549746602413

`eq[A011599(n), A284289(n)]`
-/

namespace A191048.P17586833549746602413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011599 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191048.P17586833549746602413

/-! ## A191048.P14601254505128193307

`eq[A011599(n), A322968(n)]`
-/

namespace A191048.P14601254505128193307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011599 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191048.P14601254505128193307

/-! ## A191048.P10918274665348634985

`eq[A011599(n), A053989(n+1)]`
-/

namespace A191048.P10918274665348634985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011599 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191048.P10918274665348634985

/-! ## A191048.P9853942302896798852

`eq[A011599(n), A231820(n+1)]`
-/

namespace A191048.P9853942302896798852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011599 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191048.P9853942302896798852

/-! ## A191048.P11060518052559583933

`eq[A011599(2*n), A231734(n+1)]`
-/

namespace A191048.P11060518052559583933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011599 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231734 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191048.P11060518052559583933

/-! ## A191048.P10513910224579829681

`eq[A011599(n), A117545(n+1)]`
-/

namespace A191048.P10513910224579829681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011599 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191048.P10513910224579829681

/-! ## A191048.P14359823575842817107

`lt[A341702(n)², A011599(n)]`
-/

namespace A191048.P14359823575842817107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341702 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011599 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191048.P14359823575842817107

/-!
# A191049: Primes p that have Kronecker symbol (p|82) = 1.

The programs for A191049, there is no canonical definition to state claims against.
-/

/-! ## A191049.P13990007085792601264

`p?[A038967(n+2)+char[7]]`
-/

namespace A191049.P13990007085792601264
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038967 (n + 2) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191049.P13990007085792601264

/-! ## A191049.P4152889094543084171

`p?[gcd(31, A038967(n+1))*A038967(n+2)]`
-/

namespace A191049.P4152889094543084171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 31 (A038967 (n + 1)) : ℤ) * A038967 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191049.P4152889094543084171

/-! ## A191049.P9273045281241285361

`record[A000265(A038967(n+2)+char[7])]`
-/

namespace A191049.P9273045281241285361
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A038967 (n + 2) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191049.P9273045281241285361

/-! ## A191049.P13238039242912622288

`record[A020639(A038967(n+2)+char[7])]`
-/

namespace A191049.P13238039242912622288
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A038967 (n + 2) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191049.P13238039242912622288

/-! ## A191049.P5465252698324427011

`∩[A038967(n+1), A069254(n+1)]`
-/

namespace A191049.P5465252698324427011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191049.P5465252698324427011

/-! ## A191049.P3801586826117302300

`∩[A038967(n+1), A326310(n+1)]`
-/

namespace A191049.P3801586826117302300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191049.P3801586826117302300

/-! ## A191049.P10986786581407347882

`record[A014963(A038967(n+2)+char[7])]`
-/

namespace A191049.P10986786581407347882
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A038967 (n + 2) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191049.P10986786581407347882

/-!
# A191050: Primes that are squares mod 83.

The programs for A191050, there is no canonical definition to state claims against.
-/

/-! ## A191050.P18373438052689814643

`p?[n*A011600(n)]`
-/

namespace A191050.P18373438052689814643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191050.P18373438052689814643

/-! ## A191050.P1946911553920153367

`eq[A011600(n), A072721(n)]`
-/

namespace A191050.P1946911553920153367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011600 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191050.P1946911553920153367

/-! ## A191050.P6811058088923707402

`eq[A011600(n), A210442(n)]`
-/

namespace A191050.P6811058088923707402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011600 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191050.P6811058088923707402

/-! ## A191050.P11288794280301785767

`eq[A011600(n), A211110(n)]`
-/

namespace A191050.P11288794280301785767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011600 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191050.P11288794280301785767

/-! ## A191050.P4139106034725847918

`eq[A011600(n), A284289(n)]`
-/

namespace A191050.P4139106034725847918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011600 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191050.P4139106034725847918

/-! ## A191050.P5352935470807146919

`eq[A011600(n), A322968(n)]`
-/

namespace A191050.P5352935470807146919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011600 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191050.P5352935470807146919

/-! ## A191050.P12836348098317728180

`eq[A011600(n), A053989(n+1)]`
-/

namespace A191050.P12836348098317728180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011600 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191050.P12836348098317728180

/-! ## A191050.P5682209986134362233

`eq[A011600(n), A231820(n+1)]`
-/

namespace A191050.P5682209986134362233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011600 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191050.P5682209986134362233

/-! ## A191050.P6998860603842761760

`eq[1, A011600(n)*A231734(n+1)]`
-/

namespace A191050.P6998860603842761760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011600 n * A231734 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191050.P6998860603842761760

/-! ## A191050.P18008244311538582099

`eq[A011600(n), A117545(n+1)]`
-/

namespace A191050.P18008244311538582099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011600 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191050.P18008244311538582099

/-!
# A191051: Primes p that have Kronecker symbol (p|86) = 1.

The programs for A191051, there is no canonical definition to state claims against.
-/

/-! ## A191051.P16223968489955295498

`filter[A138980(n), A174208(#)]`
-/

namespace A191051.P16223968489955295498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174208 (f1 j).toNat = 1) n)

end

end A191051.P16223968489955295498

/-! ## A191051.P8423967273798449440

`filter[A020620(n+1), A174208(#)]`
-/

namespace A191051.P8423967273798449440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174208 (f1 j).toNat = 1) n)

end

end A191051.P8423967273798449440

/-! ## A191051.P13203477767191982369

`filter[A181325(n+1), A174208(#)]`
-/

namespace A191051.P13203477767191982369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174208 (f1 j).toNat = 1) n)

end

end A191051.P13203477767191982369

/-! ## A191051.P11223660444888211714

`filter[A333541(n+1), A174208(#)]`
-/

namespace A191051.P11223660444888211714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174208 (f1 j).toNat = 1) n)

end

end A191051.P11223660444888211714

/-! ## A191051.P9952546293222439621

`filter[A049561(n+2), A174208(#)]`
-/

namespace A191051.P9952546293222439621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174208 (f1 j).toNat = 1) n)

end

end A191051.P9952546293222439621

/-!
# A191052: Primes p that have Kronecker symbol (p|87) = 1.

The programs for A191052, there is no canonical definition to state claims against.
-/

/-! ## A191052.P9175641377987506972

`p?[∑[A339812(A059266(n+1))]]`
-/

namespace A191052.P9175641377987506972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339812 (A059266 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191052.P9175641377987506972

/-! ## A191052.P10665248002276182543

`xor(A036580(A345692(n+1)), A345707(n+1))`
-/

namespace A191052.P10665248002276182543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036580 (A345692 (n + 1)).toNat) (A345707 (n + 1))

end

end A191052.P10665248002276182543

/-! ## A191052.P6837509340116537077

`A000040(lt[A175584(n+1), A175591(3*n+5)])`
-/

namespace A191052.P6837509340116537077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175591 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A191052.P6837509340116537077

/-!
# A191053: Primes that are squares mod 89.

The programs for A191053, there is no canonical definition to state claims against.
-/

/-! ## A191053.P5351449679665623735

`p?[A038977(n+1)+char[10]]`
-/

namespace A191053.P5351449679665623735
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038977 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191053.P5351449679665623735

/-! ## A191053.P18185996511008901101

`record[A020639(A038977(n+1)+char[10])]`
-/

namespace A191053.P18185996511008901101
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A038977 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191053.P18185996511008901101

/-! ## A191053.P6966216500199876358

`eq[A011601(n), A072721(n)]`
-/

namespace A191053.P6966216500199876358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191053.P6966216500199876358

/-! ## A191053.P985703852056024819

`eq[A011601(n), A210442(n)]`
-/

namespace A191053.P985703852056024819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191053.P985703852056024819

/-! ## A191053.P11299201204242033957

`eq[A011601(n), A211110(n)]`
-/

namespace A191053.P11299201204242033957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191053.P11299201204242033957

/-! ## A191053.P12978216989145272278

`eq[A011601(n), A284289(n)]`
-/

namespace A191053.P12978216989145272278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191053.P12978216989145272278

/-! ## A191053.P9923111068882549301

`eq[A011601(n), A322968(n)]`
-/

namespace A191053.P9923111068882549301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191053.P9923111068882549301

/-! ## A191053.P11138902340690679677

`eq[A011601(n), A053989(n+1)]`
-/

namespace A191053.P11138902340690679677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191053.P11138902340690679677

/-! ## A191053.P6744338641134737769

`eq[A011601(n), A231820(n+1)]`
-/

namespace A191053.P6744338641134737769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191053.P6744338641134737769

/-! ## A191053.P209537492261430309

`eq[A011601(2*n), A231734(n+1)]`
-/

namespace A191053.P209537492261430309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011601 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231734 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191053.P209537492261430309

/-! ## A191053.P5103793915307198104

`eq[A011601(n), A117545(n+1)]`
-/

namespace A191053.P5103793915307198104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191053.P5103793915307198104

/-!
# A191054: Primes p such that Jacobi(p,91) = 1.

The programs for A191054, there is no canonical definition to state claims against.
-/

/-! ## A191054.P10199620662922797433

`p?[A196269(n+1)+A196266(A002808(n+1))]`
-/

namespace A191054.P10199620662922797433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196269 (n + 1) + A196266 (A002808 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191054.P10199620662922797433

/-! ## A191054.P8293654792208920463

`A216495(n+3)%A029951(A283691(3*(n+1)))`
-/

namespace A191054.P8293654792208920463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216495 (n + 3)) (A029951 (A283691 (3 * (n + 1))).toNat)

end

end A191054.P8293654792208920463

/-!
# A191055: Primes p that have Kronecker symbol (p|93) = 1.

The programs for A191055, there is no canonical definition to state claims against.
-/

/-! ## A191055.P6570751452147217452

`A038981(A102352(n+1))`
-/

namespace A191055.P6570751452147217452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038981 (A102352 (n + 1)).toNat

end

end A191055.P6570751452147217452

/-! ## A191055.P12577343434265176831

`∩[A038981(n+1), A125293(n+1)]`
-/

namespace A191055.P12577343434265176831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191055.P12577343434265176831

/-! ## A191055.P771074918577956185

`∩[A038981(n+1), A243118(n+1)]`
-/

namespace A191055.P771074918577956185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191055.P771074918577956185

/-!
# A191056: Primes p that have Kronecker symbol (p|94) = 1.

The programs for A191056, there is no canonical definition to state claims against.
-/

/-! ## A191056.P17908768441186956664

`A179479(lt[n, A179531(n)²])`
-/

namespace A191056.P17908768441186956664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179531 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179479 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A191056.P17908768441186956664

/-! ## A191056.P5029648317185253932

`A179479(∑[A273134(n+1)]+1)`
-/

namespace A191056.P5029648317185253932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179479 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A191056.P5029648317185253932

/-! ## A191056.P12656989787059393560

`p?[or(A179479(n+2), A273134(n+1))]`
-/

namespace A191056.P12656989787059393560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A179479 (n + 2)) (A273134 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191056.P12656989787059393560

/-! ## A191056.P901132448472234303

`A179479(lt[A078898(n), A179531(n)])`
-/

namespace A191056.P901132448472234303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179479 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A191056.P901132448472234303

/-! ## A191056.P15316669587099216803

`A179479(lt[A320471(n+1), A179531(n)])`
-/

namespace A191056.P15316669587099216803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179479 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A191056.P15316669587099216803

/-!
# A191058: Primes that are squares mod 97.

The programs for A191058, there is no canonical definition to state claims against.
-/

/-! ## A191058.P5304522020683235705

`p?[A038987(n+1)+char[11]]`
-/

namespace A191058.P5304522020683235705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038987 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191058.P5304522020683235705

/-! ## A191058.P10063858344018530534

`record[A006530(A038987(n+1)+char[11])]`
-/

namespace A191058.P10063858344018530534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A038987 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191058.P10063858344018530534

/-! ## A191058.P11499170362613548666

`record[A020639(A038987(n+1)+char[11])]`
-/

namespace A191058.P11499170362613548666
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A038987 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191058.P11499170362613548666

/-! ## A191058.P16785460258288508084

`record[A000010(A038987(n+1)+char[11])+1]`
-/

namespace A191058.P16785460258288508084
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A038987 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191058.P16785460258288508084

/-! ## A191058.P10963837899831771221

`p?[n*A011602(n)]`
-/

namespace A191058.P10963837899831771221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191058.P10963837899831771221

/-! ## A191058.P6847062270541174845

`eq[A011602(n), A072721(n)]`
-/

namespace A191058.P6847062270541174845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011602 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191058.P6847062270541174845

/-! ## A191058.P452703193804336377

`eq[A011602(n), A210442(n)]`
-/

namespace A191058.P452703193804336377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011602 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191058.P452703193804336377

/-! ## A191058.P4019506497466803892

`eq[A011602(n), A211110(n)]`
-/

namespace A191058.P4019506497466803892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011602 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191058.P4019506497466803892

/-! ## A191058.P5253417927832985296

`eq[A011602(n), A284289(n)]`
-/

namespace A191058.P5253417927832985296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011602 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191058.P5253417927832985296

/-! ## A191058.P16786303255837238324

`eq[A011602(n), A322968(n)]`
-/

namespace A191058.P16786303255837238324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011602 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191058.P16786303255837238324

/-! ## A191058.P18426931411867798230

`eq[A011602(n), A053989(n+1)]`
-/

namespace A191058.P18426931411867798230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011602 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191058.P18426931411867798230

/-! ## A191058.P14087468422393323570

`eq[A011602(n), A231820(n+1)]`
-/

namespace A191058.P14087468422393323570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011602 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191058.P14087468422393323570

/-! ## A191058.P17436401982283268846

`record[A014963(A038987(n+1)+char[11])]`
-/

namespace A191058.P17436401982283268846
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A038987 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191058.P17436401982283268846

/-! ## A191058.P10575071465009165706

`eq[A011602(2*n), A231734(n+1)]`
-/

namespace A191058.P10575071465009165706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011602 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231734 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191058.P10575071465009165706

/-! ## A191058.P14312896472941095811

`eq[A011602(n), A117545(n+1)]`
-/

namespace A191058.P14312896472941095811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011602 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191058.P14312896472941095811

/-!
# A191059: Primes p that have Kronecker symbol (p|6) = -1.

The programs for A191059, the canonical program `A191059.P2301529256744788492` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191059 has offset 1).

The definition of A191059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191059.P2301529256744788492

`p?[A074229(n+1)-6]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A191059

/-- `p?[A074229(n+1)-6]` -/
def P2301529256744788492.Spec : Prop :=
  ∀ n, P2301529256744788492.a n = A191059 (n + 1)

theorem P2301529256744788492.correct : P2301529256744788492.Spec := by
  intro n
  simp only [A191059, Nat.add_sub_cancel]

end A191059

/-! ## A191059.P11215028368192407075

`p?[A047535(n+1)-A047500(n+1)]`
-/

namespace A191059.P11215028368192407075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047535 (n + 1) - A047500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191059.P11215028368192407075

namespace A191059

/-- `p?[A047535(n+1)-A047500(n+1)]` -/
def P11215028368192407075.Spec : Prop :=
  ∀ n, P11215028368192407075.a n = A191059 (n + 1)

end A191059

/-! ## A191059.P12659079691171919031

`p?[A047535(n+3)-A047547(n+1)]`
-/

namespace A191059.P12659079691171919031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047535 (n + 3) - A047547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191059.P12659079691171919031

namespace A191059

/-- `p?[A047535(n+3)-A047547(n+1)]` -/
def P12659079691171919031.Spec : Prop :=
  ∀ n, P12659079691171919031.a n = A191059 (n + 1)

end A191059

/-! ## A191059.P10695535510678293808

`p?[n+1+A118504(A129402(n+1)+1)+n]`
-/

namespace A191059.P10695535510678293808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A118504 (A129402 (n + 1) + 1).toNat + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191059.P10695535510678293808

namespace A191059

/-- `p?[n+1+A118504(A129402(n+1)+1)+n]` -/
def P10695535510678293808.Spec : Prop :=
  ∀ n, P10695535510678293808.a n = A191059 (n + 1)

end A191059

/-! ## A191059.P9405343597807368674

`p?[A042965(2*n+1)-A010892(A042965(n+2))]`
-/

namespace A191059.P9405343597807368674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (2 * n + 1) - A010892 (A042965 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191059.P9405343597807368674

namespace A191059

/-- `p?[A042965(2*n+1)-A010892(A042965(n+2))]` -/
def P9405343597807368674.Spec : Prop :=
  ∀ n, P9405343597807368674.a n = A191059 (n + 1)

end A191059

/-! ## A191059.P17007989427302165080

`p?[A168186(2*(n+2))]`
-/

namespace A191059.P17007989427302165080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168186 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191059.P17007989427302165080

namespace A191059

/-- `p?[A168186(2*(n+2))]` -/
def P17007989427302165080.Spec : Prop :=
  ∀ n, P17007989427302165080.a n = A191059 (n + 1)

end A191059

/-! ## A191059.P8949075878275411991

`p?[eq[0, A000377(n)]]`
-/

namespace A191059.P8949075878275411991
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191059.P8949075878275411991

namespace A191059

/-- `p?[eq[0, A000377(n)]]` -/
def P8949075878275411991.Spec : Prop :=
  ∀ n, (P8949075878275411991.a n : ℤ) = A191059 (n + 1)

end A191059

/-! ## A191059.P16539616299483253583

`p?[n*(A190611(n)+1)]`
-/

namespace A191059.P16539616299483253583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A190611 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191059.P16539616299483253583

namespace A191059

/-- `p?[n*(A190611(n)+1)]` -/
def P16539616299483253583.Spec : Prop :=
  ∀ n, P16539616299483253583.a n = A191059 (n + 1)

end A191059

/-! ## A191059.P1782950766303507334

`p?[n*(A261122(n)+1)]`
-/

namespace A191059.P1782950766303507334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A261122 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191059.P1782950766303507334

namespace A191059

/-- `p?[n*(A261122(n)+1)]` -/
def P1782950766303507334.Spec : Prop :=
  ∀ n, P1782950766303507334.a n = A191059 (n + 1)

end A191059

/-! ## A191059.P5110218360855356164

`eq[A072480(n), A190611(n)]`
-/

namespace A191059.P5110218360855356164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190611 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191059.P5110218360855356164

namespace A191059

/-- `eq[A072480(n), A190611(n)]` -/
def P5110218360855356164.Spec : Prop :=
  ∀ n, (P5110218360855356164.a n : ℤ) = A191059 (n + 1)

end A191059

/-! ## A191059.P9884776685736778987

`eq[A000377(n), A277894(n)]`
-/

namespace A191059.P9884776685736778987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191059.P9884776685736778987

namespace A191059

/-- `eq[A000377(n), A277894(n)]` -/
def P9884776685736778987.Spec : Prop :=
  ∀ n, (P9884776685736778987.a n : ℤ) = A191059 (n + 1)

end A191059

/-! ## A191059.P4876979061340270442

`eq[A068346(n), A261122(n)]`
-/

namespace A191059.P4876979061340270442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191059.P4876979061340270442

namespace A191059

/-- `eq[A068346(n), A261122(n)]` -/
def P4876979061340270442.Spec : Prop :=
  ∀ n, (P4876979061340270442.a n : ℤ) = A191059 (n + 1)

end A191059

/-! ## A191059.P8959981647099006612

`eq[A072480(n), A261122(n)]`
-/

namespace A191059.P8959981647099006612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191059.P8959981647099006612

namespace A191059

/-- `eq[A072480(n), A261122(n)]` -/
def P8959981647099006612.Spec : Prop :=
  ∀ n, (P8959981647099006612.a n : ℤ) = A191059 (n + 1)

end A191059

/-! ## A191059.P3105126156331019119

`eq[A109017(n), A260148(n)]`
-/

namespace A191059.P3105126156331019119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109017 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260148 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191059.P3105126156331019119

namespace A191059

/-- `eq[A109017(n), A260148(n)]` -/
def P3105126156331019119.Spec : Prop :=
  ∀ n, (P3105126156331019119.a n : ℤ) = A191059 (n + 1)

end A191059

/-! ## A191059.P9548089245335341069

`eq[A190611(n), A277894(n)]`
-/

namespace A191059.P9548089245335341069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190611 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191059.P9548089245335341069

namespace A191059

/-- `eq[A190611(n), A277894(n)]` -/
def P9548089245335341069.Spec : Prop :=
  ∀ n, (P9548089245335341069.a n : ℤ) = A191059 (n + 1)

end A191059

/-! ## A191059.P208026395705591823

`eq[A190611(n), A278648(n)]`
-/

namespace A191059.P208026395705591823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190611 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278648 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191059.P208026395705591823

namespace A191059

/-- `eq[A190611(n), A278648(n)]` -/
def P208026395705591823.Spec : Prop :=
  ∀ n, (P208026395705591823.a n : ℤ) = A191059 (n + 1)

end A191059

/-! ## A191059.P14256788792115456238

`eq[A261122(n), A277894(n)]`
-/

namespace A191059.P14256788792115456238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191059.P14256788792115456238

namespace A191059

/-- `eq[A261122(n), A277894(n)]` -/
def P14256788792115456238.Spec : Prop :=
  ∀ n, (P14256788792115456238.a n : ℤ) = A191059 (n + 1)

end A191059

/-! ## A191059.P8300679975811016

`eq[A261122(n), A278648(n)]`
-/

namespace A191059.P8300679975811016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278648 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191059.P8300679975811016

namespace A191059

/-- `eq[A261122(n), A278648(n)]` -/
def P8300679975811016.Spec : Prop :=
  ∀ n, (P8300679975811016.a n : ℤ) = A191059 (n + 1)

end A191059

/-! ## A191059.P9664991158278990604

`eq[A261122(n), A338554(n)]`
-/

namespace A191059.P9664991158278990604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338554 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191059.P9664991158278990604

namespace A191059

/-- `eq[A261122(n), A338554(n)]` -/
def P9664991158278990604.Spec : Prop :=
  ∀ n, (P9664991158278990604.a n : ℤ) = A191059 (n + 1)

end A191059

/-! ## A191059.P4071070553518197486

`eq[A109017(n)+2, A210442(n)]`
-/

namespace A191059.P4071070553518197486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109017 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191059.P4071070553518197486

namespace A191059

/-- `eq[A109017(n)+2, A210442(n)]` -/
def P4071070553518197486.Spec : Prop :=
  ∀ n, (P4071070553518197486.a n : ℤ) = A191059 (n + 1)

end A191059

/-!
# A191060: Primes that are not squares mod 11.

The programs for A191060, the canonical program `A191060.P4493238980681511032` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191060 has offset 1).

The definition of A191060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191060.P4493238980681511032

`p?[A267541(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A191060

/-- `p?[A267541(n)]` -/
def P4493238980681511032.Spec : Prop :=
  ∀ n, P4493238980681511032.a n = A191060 (n + 1)

theorem P4493238980681511032.correct : P4493238980681511032.Spec := by
  intro n
  simp only [A191060, Nat.add_sub_cancel]

end A191060

/-! ## A191060.P1748451358529530514

`filter[A267541(n), A010051(#)]`
-/

namespace A191060.P1748451358529530514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A191060.P1748451358529530514

namespace A191060

/-- `filter[A267541(n), A010051(#)]` -/
def P1748451358529530514.Spec : Prop :=
  ∀ n, P1748451358529530514.a n = A191060 (n + 1)

end A191060

/-! ## A191060.P9649388478521190083

`filter[A267541(n), A302777(#)]`
-/

namespace A191060.P9649388478521190083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A191060.P9649388478521190083

namespace A191060

/-- `filter[A267541(n), A302777(#)]` -/
def P9649388478521190083.Spec : Prop :=
  ∀ n, P9649388478521190083.a n = A191060 (n + 1)

end A191060

/-! ## A191060.P4329368186714585745

`filter[A267541(n), A355937(#)]`
-/

namespace A191060.P4329368186714585745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A191060.P4329368186714585745

namespace A191060

/-- `filter[A267541(n), A355937(#)]` -/
def P4329368186714585745.Spec : Prop :=
  ∀ n, P4329368186714585745.a n = A191060 (n + 1)

end A191060

/-! ## A191060.P16668396843848513162

`record[A020639(A267541(n+1))]`
-/

namespace A191060.P16668396843848513162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A267541 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191060.P16668396843848513162

namespace A191060

/-- `record[A020639(A267541(n+1))]` -/
def P16668396843848513162.Spec : Prop :=
  ∀ n, P16668396843848513162.a n = A191060 (n + 1)

end A191060

/-! ## A191060.P7550943215457261076

`∩[A000040(n+1), A267541(n)]`
-/

namespace A191060.P7550943215457261076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191060.P7550943215457261076

namespace A191060

/-- `∩[A000040(n+1), A267541(n)]` -/
def P7550943215457261076.Spec : Prop :=
  ∀ n, (P7550943215457261076.a n : ℤ) = A191060 (n + 1)

end A191060

/-! ## A191060.P1115319667642239932

`∩[A000430(n+1), A267541(n)]`
-/

namespace A191060.P1115319667642239932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191060.P1115319667642239932

namespace A191060

/-- `∩[A000430(n+1), A267541(n)]` -/
def P1115319667642239932.Spec : Prop :=
  ∀ n, (P1115319667642239932.a n : ℤ) = A191060 (n + 1)

end A191060

/-! ## A191060.P13610075479877173761

`∩[A008578(n+1), A267541(n)]`
-/

namespace A191060.P13610075479877173761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191060.P13610075479877173761

namespace A191060

/-- `∩[A008578(n+1), A267541(n)]` -/
def P13610075479877173761.Spec : Prop :=
  ∀ n, (P13610075479877173761.a n : ℤ) = A191060 (n + 1)

end A191060

/-! ## A191060.P7601587845296853648

`∩[A009087(n+1), A267541(n)]`
-/

namespace A191060.P7601587845296853648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191060.P7601587845296853648

namespace A191060

/-- `∩[A009087(n+1), A267541(n)]` -/
def P7601587845296853648.Spec : Prop :=
  ∀ n, (P7601587845296853648.a n : ℤ) = A191060 (n + 1)

end A191060

/-! ## A191060.P8970316310667012995

`∩[A033946(n+1), A267541(n)]`
-/

namespace A191060.P8970316310667012995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191060.P8970316310667012995

namespace A191060

/-- `∩[A033946(n+1), A267541(n)]` -/
def P8970316310667012995.Spec : Prop :=
  ∀ n, (P8970316310667012995.a n : ℤ) = A191060 (n + 1)

end A191060

/-! ## A191060.P85652486709859878

`∩[A045319(n+1), A267541(n)]`
-/

namespace A191060.P85652486709859878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191060.P85652486709859878

namespace A191060

/-- `∩[A045319(n+1), A267541(n)]` -/
def P85652486709859878.Spec : Prop :=
  ∀ n, (P85652486709859878.a n : ℤ) = A191060 (n + 1)

end A191060

/-! ## A191060.P9928945240201233037

`∩[A045344(n+1), A267541(n)]`
-/

namespace A191060.P9928945240201233037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191060.P9928945240201233037

namespace A191060

/-- `∩[A045344(n+1), A267541(n)]` -/
def P9928945240201233037.Spec : Prop :=
  ∀ n, (P9928945240201233037.a n : ℤ) = A191060 (n + 1)

end A191060

/-! ## A191060.P16043813841812996502

`∩[A046022(n+1), A267541(n)]`
-/

namespace A191060.P16043813841812996502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191060.P16043813841812996502

namespace A191060

/-- `∩[A046022(n+1), A267541(n)]` -/
def P16043813841812996502.Spec : Prop :=
  ∀ n, (P16043813841812996502.a n : ℤ) = A191060 (n + 1)

end A191060

/-! ## A191060.P16277732679506046005

`∩[A049543(n+1), A267541(n)]`
-/

namespace A191060.P16277732679506046005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191060.P16277732679506046005

namespace A191060

/-- `∩[A049543(n+1), A267541(n)]` -/
def P16277732679506046005.Spec : Prop :=
  ∀ n, (P16277732679506046005.a n : ℤ) = A191060 (n + 1)

end A191060

/-! ## A191060.P4208541569850873462

`∩[A050376(n+1), A267541(n)]`
-/

namespace A191060.P4208541569850873462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191060.P4208541569850873462

namespace A191060

/-- `∩[A050376(n+1), A267541(n)]` -/
def P4208541569850873462.Spec : Prop :=
  ∀ n, (P4208541569850873462.a n : ℤ) = A191060 (n + 1)

end A191060

/-! ## A191060.P12333534005893993370

`∩[A062972(n+1), A267541(n)]`
-/

namespace A191060.P12333534005893993370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191060.P12333534005893993370

namespace A191060

/-- `∩[A062972(n+1), A267541(n)]` -/
def P12333534005893993370.Spec : Prop :=
  ∀ n, (P12333534005893993370.a n : ℤ) = A191060 (n + 1)

end A191060

/-! ## A191060.P9557880489035186753

`∩[A067126(n+1), A267541(n)]`
-/

namespace A191060.P9557880489035186753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191060.P9557880489035186753

namespace A191060

/-- `∩[A067126(n+1), A267541(n)]` -/
def P9557880489035186753.Spec : Prop :=
  ∀ n, (P9557880489035186753.a n : ℤ) = A191060 (n + 1)

end A191060

/-! ## A191060.P1857400400333394111

`∩[A084400(n+1), A267541(n)]`
-/

namespace A191060.P1857400400333394111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191060.P1857400400333394111

namespace A191060

/-- `∩[A084400(n+1), A267541(n)]` -/
def P1857400400333394111.Spec : Prop :=
  ∀ n, (P1857400400333394111.a n : ℤ) = A191060 (n + 1)

end A191060

/-! ## A191060.P4526218344255695873

`∩[A089237(n+1), A267541(n)]`
-/

namespace A191060.P4526218344255695873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191060.P4526218344255695873

namespace A191060

/-- `∩[A089237(n+1), A267541(n)]` -/
def P4526218344255695873.Spec : Prop :=
  ∀ n, (P4526218344255695873.a n : ℤ) = A191060 (n + 1)

end A191060

/-! ## A191060.P3638910076457266545

`∩[A158611(n+1), A267541(n)]`
-/

namespace A191060.P3638910076457266545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191060.P3638910076457266545

namespace A191060

/-- `∩[A158611(n+1), A267541(n)]` -/
def P3638910076457266545.Spec : Prop :=
  ∀ n, (P3638910076457266545.a n : ℤ) = A191060 (n + 1)

end A191060

/-!
# A191061: Primes p that have Kronecker symbol (p|14) = -1.

The programs for A191061, there is no canonical definition to state claims against.
-/

/-! ## A191061.P8897702201269516314

`A274504(n+3)`
-/

namespace A191061.P8897702201269516314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274504 (n + 3)

end

end A191061.P8897702201269516314

/-! ## A191061.P12760067391781820350

`p?[eq[0, A192006(n)]]`
-/

namespace A191061.P12760067391781820350
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191061.P12760067391781820350

/-! ## A191061.P17430039070730156938

`eq[A068346(n), A192006(n)]`
-/

namespace A191061.P17430039070730156938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191061.P17430039070730156938

/-! ## A191061.P10749959880186559196

`eq[A192006(n), A277894(n)]`
-/

namespace A191061.P10749959880186559196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191061.P10749959880186559196

/-! ## A191061.P16341032970918929074

`eq[A192006(n), A338554(n)]`
-/

namespace A191061.P16341032970918929074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338554 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191061.P16341032970918929074

/-! ## A191061.P7870739703321218567

`eq[A192006(n)+1, A003415(n)]`
-/

namespace A191061.P7870739703321218567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191061.P7870739703321218567

/-! ## A191061.P3914699903354609641

`eq[2, A192006(n)+A005127(n)]`
-/

namespace A191061.P3914699903354609641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 n + A005127 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191061.P3914699903354609641

/-! ## A191061.P8411617788780268264

`eq[2, A192006(n)+A005128(n)]`
-/

namespace A191061.P8411617788780268264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 n + A005128 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191061.P8411617788780268264

/-! ## A191061.P18302564616917385317

`eq[2, A192006(n)+A062830(n)]`
-/

namespace A191061.P18302564616917385317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 n + A062830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191061.P18302564616917385317

/-! ## A191061.P1354786233741538374

`eq[2, A322366(n)+A192006(n)]`
-/

namespace A191061.P1354786233741538374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322366 n + A192006 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191061.P1354786233741538374

/-! ## A191061.P3477537832573462863

`eq[2, A319410(n)+A192006(n)²]`
-/

namespace A191061.P3477537832573462863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n + A192006 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191061.P3477537832573462863

/-! ## A191061.P12721620851862054374

`eq[n+1, A000203(A192006(n)+n)]`
-/

namespace A191061.P12721620851862054374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A192006 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191061.P12721620851862054374

/-! ## A191061.P15342289426476937361

`p?[n*A106288(3*A192006(n)+1)]`
-/

namespace A191061.P15342289426476937361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A106288 (3 * A192006 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191061.P15342289426476937361

/-! ## A191061.P3952043319471439939

`eq[A192006(A192006(n)), A319410(n)]`
-/

namespace A191061.P3952043319471439939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 (A192006 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191061.P3952043319471439939

/-! ## A191061.P16602994832927487292

`eq[2, A192006(n)+A007012(n)]`
-/

namespace A191061.P16602994832927487292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 n + A007012 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191061.P16602994832927487292

/-! ## A191061.P10569607445570748659

`eq[A192006(n)+2, A053204(n)]`
-/

namespace A191061.P10569607445570748659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191061.P10569607445570748659

/-! ## A191061.P14658566080242139474

`eq[A053204(n), A192006(A192006(n))]`
-/

namespace A191061.P14658566080242139474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 (A192006 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191061.P14658566080242139474

/-! ## A191061.P4752832410781320093

`eq[A003415(A003415(n)), A192006(n)]`
-/

namespace A191061.P4752832410781320093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A003415 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191061.P4752832410781320093

/-!
# A191062: Primes p that have Kronecker symbol (p|15) = -1.

The programs for A191062, the canonical program `A191062.P17446567034412063392` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191062 has offset 1).

The definition of A191062 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191062.P17446567034412063392

`p?[a(n-4)+30]` with `a(0)=7, a(1)=11, a(2)=13, a(3)=29`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191062

/-- `p?[a(n-4)+30]` -/
def P17446567034412063392.Spec : Prop :=
  ∀ n, (P17446567034412063392.a n : ℤ) = A191062 (n + 1)

theorem P17446567034412063392.correct : P17446567034412063392.Spec := by
  intro n
  simp only [A191062, Nat.add_sub_cancel]

end A191062

/-! ## A191062.P1541293369010084238

`p?[A296716(n+1)]`
-/

namespace A191062.P1541293369010084238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191062.P1541293369010084238

namespace A191062

/-- `p?[A296716(n+1)]` -/
def P1541293369010084238.Spec : Prop :=
  ∀ n, P1541293369010084238.a n = A191062 (n + 1)

end A191062

/-! ## A191062.P365982727994878856

`filter[A296716(n+1), A010051(#)]`
-/

namespace A191062.P365982727994878856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A191062.P365982727994878856

namespace A191062

/-- `filter[A296716(n+1), A010051(#)]` -/
def P365982727994878856.Spec : Prop :=
  ∀ n, P365982727994878856.a n = A191062 (n + 1)

end A191062

/-! ## A191062.P15309045309094174513

`filter[A296716(n+1), A355937(#)]`
-/

namespace A191062.P15309045309094174513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A191062.P15309045309094174513

namespace A191062

/-- `filter[A296716(n+1), A355937(#)]` -/
def P15309045309094174513.Spec : Prop :=
  ∀ n, P15309045309094174513.a n = A191062 (n + 1)

end A191062

/-! ## A191062.P4300407847598826881

`∩[A296716(n+1), A222030(n)]`
-/

namespace A191062.P4300407847598826881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222030 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191062.P4300407847598826881

namespace A191062

/-- `∩[A296716(n+1), A222030(n)]` -/
def P4300407847598826881.Spec : Prop :=
  ∀ n, (P4300407847598826881.a n : ℤ) = A191062 (n + 1)

end A191062

/-! ## A191062.P17421177666371909707

`∩[A000040(n+1), A296716(n+1)]`
-/

namespace A191062.P17421177666371909707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191062.P17421177666371909707

namespace A191062

/-- `∩[A000040(n+1), A296716(n+1)]` -/
def P17421177666371909707.Spec : Prop :=
  ∀ n, (P17421177666371909707.a n : ℤ) = A191062 (n + 1)

end A191062

/-! ## A191062.P9886611017830579288

`∩[A000430(n+1), A296716(n+1)]`
-/

namespace A191062.P9886611017830579288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191062.P9886611017830579288

namespace A191062

/-- `∩[A000430(n+1), A296716(n+1)]` -/
def P9886611017830579288.Spec : Prop :=
  ∀ n, (P9886611017830579288.a n : ℤ) = A191062 (n + 1)

end A191062

/-! ## A191062.P11355451854143879824

`∩[A004139(n+1), A296716(n+1)]`
-/

namespace A191062.P11355451854143879824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191062.P11355451854143879824

namespace A191062

/-- `∩[A004139(n+1), A296716(n+1)]` -/
def P11355451854143879824.Spec : Prop :=
  ∀ n, (P11355451854143879824.a n : ℤ) = A191062 (n + 1)

end A191062

/-! ## A191062.P11717303018808495815

`∩[A006005(n+1), A296716(n+1)]`
-/

namespace A191062.P11717303018808495815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191062.P11717303018808495815

namespace A191062

/-- `∩[A006005(n+1), A296716(n+1)]` -/
def P11717303018808495815.Spec : Prop :=
  ∀ n, (P11717303018808495815.a n : ℤ) = A191062 (n + 1)

end A191062

/-! ## A191062.P1904809883518449640

`∩[A008578(n+1), A296716(n+1)]`
-/

namespace A191062.P1904809883518449640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191062.P1904809883518449640

namespace A191062

/-- `∩[A008578(n+1), A296716(n+1)]` -/
def P1904809883518449640.Spec : Prop :=
  ∀ n, (P1904809883518449640.a n : ℤ) = A191062 (n + 1)

end A191062

/-! ## A191062.P6856660279950799079

`∩[A009087(n+1), A296716(n+1)]`
-/

namespace A191062.P6856660279950799079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191062.P6856660279950799079

namespace A191062

/-- `∩[A009087(n+1), A296716(n+1)]` -/
def P6856660279950799079.Spec : Prop :=
  ∀ n, (P6856660279950799079.a n : ℤ) = A191062 (n + 1)

end A191062

/-! ## A191062.P8443932436862831579

`∩[A033946(n+1), A296716(n+1)]`
-/

namespace A191062.P8443932436862831579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191062.P8443932436862831579

namespace A191062

/-- `∩[A033946(n+1), A296716(n+1)]` -/
def P8443932436862831579.Spec : Prop :=
  ∀ n, (P8443932436862831579.a n : ℤ) = A191062 (n + 1)

end A191062

/-! ## A191062.P1081458758605474667

`∩[A050150(n+1), A296716(n+1)]`
-/

namespace A191062.P1081458758605474667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191062.P1081458758605474667

namespace A191062

/-- `∩[A050150(n+1), A296716(n+1)]` -/
def P1081458758605474667.Spec : Prop :=
  ∀ n, (P1081458758605474667.a n : ℤ) = A191062 (n + 1)

end A191062

/-! ## A191062.P4332131712192219510

`∩[A053813(n+1), A296716(n+1)]`
-/

namespace A191062.P4332131712192219510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191062.P4332131712192219510

namespace A191062

/-- `∩[A053813(n+1), A296716(n+1)]` -/
def P4332131712192219510.Spec : Prop :=
  ∀ n, (P4332131712192219510.a n : ℤ) = A191062 (n + 1)

end A191062

/-! ## A191062.P8454490511581896400

`∩[A055977(n+1), A296716(n+1)]`
-/

namespace A191062.P8454490511581896400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191062.P8454490511581896400

namespace A191062

/-- `∩[A055977(n+1), A296716(n+1)]` -/
def P8454490511581896400.Spec : Prop :=
  ∀ n, (P8454490511581896400.a n : ℤ) = A191062 (n + 1)

end A191062

/-! ## A191062.P10849916991559604569

`∩[A067126(n+1), A296716(n+1)]`
-/

namespace A191062.P10849916991559604569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191062.P10849916991559604569

namespace A191062

/-- `∩[A067126(n+1), A296716(n+1)]` -/
def P10849916991559604569.Spec : Prop :=
  ∀ n, (P10849916991559604569.a n : ℤ) = A191062 (n + 1)

end A191062

/-! ## A191062.P2532002086193004737

`∩[A140826(n+1), A296716(n+1)]`
-/

namespace A191062.P2532002086193004737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191062.P2532002086193004737

namespace A191062

/-- `∩[A140826(n+1), A296716(n+1)]` -/
def P2532002086193004737.Spec : Prop :=
  ∀ n, (P2532002086193004737.a n : ℤ) = A191062 (n + 1)

end A191062

/-! ## A191062.P17529788513100771381

`filter[A296716(n+1), A302777(#)]`
-/

namespace A191062.P17529788513100771381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A191062.P17529788513100771381

namespace A191062

/-- `filter[A296716(n+1), A302777(#)]` -/
def P17529788513100771381.Spec : Prop :=
  ∀ n, P17529788513100771381.a n = A191062 (n + 1)

end A191062

/-! ## A191062.P8067492681344360487

`filter[A296716(n+1), A323152(#)]`
-/

namespace A191062.P8067492681344360487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A191062.P8067492681344360487

namespace A191062

/-- `filter[A296716(n+1), A323152(#)]` -/
def P8067492681344360487.Spec : Prop :=
  ∀ n, P8067492681344360487.a n = A191062 (n + 1)

end A191062

/-! ## A191062.P10817720532387939921

`filter[A296716(n+1), A323153(#)]`
-/

namespace A191062.P10817720532387939921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A191062.P10817720532387939921

namespace A191062

/-- `filter[A296716(n+1), A323153(#)]` -/
def P10817720532387939921.Spec : Prop :=
  ∀ n, P10817720532387939921.a n = A191062 (n + 1)

end A191062

/-!
# A191063: Primes that are not squares mod 19.

The programs for A191063, the canonical program `A191063.P9795136441190372636` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191063 has offset 1).

The definition of A191063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 624 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191063.P11421253367563826416

`p?[comp[A341787(n+1)]]`
-/

namespace A191063.P11421253367563826416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191063.P11421253367563826416

namespace A191063

/-- `p?[comp[A341787(n+1)]]` -/
def P11421253367563826416.Spec : Prop :=
  ∀ n, (P11421253367563826416.a n : ℤ) = A191063 (n + 1)

end A191063

/-! ## A191063.P5748645342342316827

`p?[eq[0, A028641(n)]]`
-/

namespace A191063.P5748645342342316827
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028641 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191063.P5748645342342316827

namespace A191063

/-- `p?[eq[0, A028641(n)]]` -/
def P5748645342342316827.Spec : Prop :=
  ∀ n, (P5748645342342316827.a n : ℤ) = A191063 (n + 1)

end A191063

/-! ## A191063.P7779965957739711556

`eq[A028641(n), A068346(n)]`
-/

namespace A191063.P7779965957739711556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191063.P7779965957739711556

namespace A191063

/-- `eq[A028641(n), A068346(n)]` -/
def P7779965957739711556.Spec : Prop :=
  ∀ n, (P7779965957739711556.a n : ℤ) = A191063 (n + 1)

end A191063

/-! ## A191063.P4686655716148538057

`eq[A028641(n), A072480(n)]`
-/

namespace A191063.P4686655716148538057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191063.P4686655716148538057

namespace A191063

/-- `eq[A028641(n), A072480(n)]` -/
def P4686655716148538057.Spec : Prop :=
  ∀ n, (P4686655716148538057.a n : ℤ) = A191063 (n + 1)

end A191063

/-! ## A191063.P11224561827750916864

`eq[A028641(n), A082024(n)]`
-/

namespace A191063.P11224561827750916864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082024 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191063.P11224561827750916864

namespace A191063

/-- `eq[A028641(n), A082024(n)]` -/
def P11224561827750916864.Spec : Prop :=
  ∀ n, (P11224561827750916864.a n : ℤ) = A191063 (n + 1)

end A191063

/-! ## A191063.P13128042168607334004

`eq[A028641(n), A277894(n)]`
-/

namespace A191063.P13128042168607334004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191063.P13128042168607334004

namespace A191063

/-- `eq[A028641(n), A277894(n)]` -/
def P13128042168607334004.Spec : Prop :=
  ∀ n, (P13128042168607334004.a n : ℤ) = A191063 (n + 1)

end A191063

/-! ## A191063.P10078036600908653186

`eq[A028641(n), A338554(n)]`
-/

namespace A191063.P10078036600908653186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338554 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191063.P10078036600908653186

namespace A191063

/-- `eq[A028641(n), A338554(n)]` -/
def P10078036600908653186.Spec : Prop :=
  ∀ n, (P10078036600908653186.a n : ℤ) = A191063 (n + 1)

end A191063

/-! ## A191063.P11770032302453723643

`eq[(A011585(n)+2)², A210442(n)]`
-/

namespace A191063.P11770032302453723643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011585 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191063.P11770032302453723643

namespace A191063

/-- `eq[(A011585(n)+2)², A210442(n)]` -/
def P11770032302453723643.Spec : Prop :=
  ∀ n, (P11770032302453723643.a n : ℤ) = A191063 (n + 1)

end A191063

/-! ## A191063.P17876518178291217788

`eq[A011585(n)+2, A284289(n)²]`
-/

namespace A191063.P17876518178291217788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191063.P17876518178291217788

namespace A191063

/-- `eq[A011585(n)+2, A284289(n)²]` -/
def P17876518178291217788.Spec : Prop :=
  ∀ n, (P17876518178291217788.a n : ℤ) = A191063 (n + 1)

end A191063

/-! ## A191063.P9795136441190372636

`p?[n*(A000038(n)-A011585(n))]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A191063

/-- `p?[n*(A000038(n)-A011585(n))]` -/
def P9795136441190372636.Spec : Prop :=
  ∀ n, P9795136441190372636.a n = A191063 (n + 1)

theorem P9795136441190372636.correct : P9795136441190372636.Spec := by
  intro n
  simp only [A191063, Nat.add_sub_cancel]

end A191063

/-! ## A191063.P5131518068873093591

`eq[A011585(n)+2, A053989(n+1)²]`
-/

namespace A191063.P5131518068873093591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191063.P5131518068873093591

namespace A191063

/-- `eq[A011585(n)+2, A053989(n+1)²]` -/
def P5131518068873093591.Spec : Prop :=
  ∀ n, (P5131518068873093591.a n : ℤ) = A191063 (n + 1)

end A191063

/-! ## A191063.P17325073362133443740

`eq[A011585(n)+2, A231820(n+1)²]`
-/

namespace A191063.P17325073362133443740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191063.P17325073362133443740

namespace A191063

/-- `eq[A011585(n)+2, A231820(n+1)²]` -/
def P17325073362133443740.Spec : Prop :=
  ∀ n, (P17325073362133443740.a n : ℤ) = A191063 (n + 1)

end A191063

/-! ## A191063.P16274890841185366534

`eq[A011585(n)+2, A211110(n)²]`
-/

namespace A191063.P16274890841185366534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191063.P16274890841185366534

namespace A191063

/-- `eq[A011585(n)+2, A211110(n)²]` -/
def P16274890841185366534.Spec : Prop :=
  ∀ n, (P16274890841185366534.a n : ℤ) = A191063 (n + 1)

end A191063

/-! ## A191063.P13865085793603211793

`p?[n*A109466(A028641(n)²)]`
-/

namespace A191063.P13865085793603211793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A109466 (A028641 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191063.P13865085793603211793

namespace A191063

/-- `p?[n*A109466(A028641(n)²)]` -/
def P13865085793603211793.Spec : Prop :=
  ∀ n, P13865085793603211793.a n = A191063 (n + 1)

end A191063

/-! ## A191063.P6078317317038321369

`p?[n*A011585(2*n)]`
-/

namespace A191063.P6078317317038321369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011585 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191063.P6078317317038321369

namespace A191063

/-- `p?[n*A011585(2*n)]` -/
def P6078317317038321369.Spec : Prop :=
  ∀ n, P6078317317038321369.a n = A191063 (n + 1)

end A191063

/-! ## A191063.P13527445367315601565

`eq[A011585(2*n), A072721(n)]`
-/

namespace A191063.P13527445367315601565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191063.P13527445367315601565

namespace A191063

/-- `eq[A011585(2*n), A072721(n)]` -/
def P13527445367315601565.Spec : Prop :=
  ∀ n, (P13527445367315601565.a n : ℤ) = A191063 (n + 1)

end A191063

/-! ## A191063.P18125722613382936202

`eq[A011585(2*n), A210442(n)]`
-/

namespace A191063.P18125722613382936202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191063.P18125722613382936202

namespace A191063

/-- `eq[A011585(2*n), A210442(n)]` -/
def P18125722613382936202.Spec : Prop :=
  ∀ n, (P18125722613382936202.a n : ℤ) = A191063 (n + 1)

end A191063

/-! ## A191063.P466515549387404893

`eq[A011585(2*n), A211110(n)]`
-/

namespace A191063.P466515549387404893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191063.P466515549387404893

namespace A191063

/-- `eq[A011585(2*n), A211110(n)]` -/
def P466515549387404893.Spec : Prop :=
  ∀ n, (P466515549387404893.a n : ℤ) = A191063 (n + 1)

end A191063

/-! ## A191063.P3977297270246194395

`eq[A011585(2*n), A284289(n)]`
-/

namespace A191063.P3977297270246194395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191063.P3977297270246194395

namespace A191063

/-- `eq[A011585(2*n), A284289(n)]` -/
def P3977297270246194395.Spec : Prop :=
  ∀ n, (P3977297270246194395.a n : ℤ) = A191063 (n + 1)

end A191063

/-!
# A191064: Primes p that have Kronecker symbol (p|22) = -1.

The programs for A191064, there is no canonical definition to state claims against.
-/

/-! ## A191064.P15585231903592133267

`p?[xor(n, -A255647(n))]`
-/

namespace A191064.P15585231903592133267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-A255647 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191064.P15585231903592133267

/-! ## A191064.P2182616228036200100

`eq[A255647(n), A277894(n)]`
-/

namespace A191064.P2182616228036200100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255647 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191064.P2182616228036200100

/-! ## A191064.P15953684976434979034

`eq[exp(A255647(n)), A104725(n)]`
-/

namespace A191064.P15953684976434979034
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A255647 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A191064.P15953684976434979034

/-! ## A191064.P11838177336920120886

`eq[2, A319410(n)+A255647(n)]`
-/

namespace A191064.P11838177336920120886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n + A255647 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191064.P11838177336920120886

/-! ## A191064.P11666279848845547773

`eq[2, A255647(n)+A103509(n+1)]`
-/

namespace A191064.P11666279848845547773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255647 n + A103509 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191064.P11666279848845547773

/-! ## A191064.P18031850927266495750

`p?[n-A000201(n+1)*A255647(n)]`
-/

namespace A191064.P18031850927266495750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000201 (n + 1) * A255647 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191064.P18031850927266495750

/-! ## A191064.P10246479024798085785

`p?[(A035168(A000040(n+1))+1)*A000040(n+1)]`
-/

namespace A191064.P10246479024798085785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035168 (A000040 (n + 1)).toNat + 1) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191064.P10246479024798085785

/-! ## A191064.P2266064134907289693

`eq[2, A255647(n)+A053204(n)]`
-/

namespace A191064.P2266064134907289693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255647 n + A053204 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191064.P2266064134907289693

/-! ## A191064.P5871886904521363497

`eq[2, A255647(n)+A119655(n)]`
-/

namespace A191064.P5871886904521363497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255647 n + A119655 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191064.P5871886904521363497

/-! ## A191064.P12130965505427887780

`eq[2, A255647(n)+A249802(n+1)]`
-/

namespace A191064.P12130965505427887780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255647 n + A249802 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191064.P12130965505427887780

/-!
# A191065: Primes that are not squares mod 23.

The programs for A191065, there is no canonical definition to state claims against.
-/

/-! ## A191065.P3177344096785032582

`A045344(eq[2, A308176(n+1)])`
-/

namespace A191065.P3177344096785032582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A191065.P3177344096785032582

/-! ## A191065.P2413819760502509188

`A065091(eq[2, A308176(n+1)])`
-/

namespace A191065.P2413819760502509188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A191065.P2413819760502509188

/-! ## A191065.P4211844519318003645

`A000040(eq[2, A308176(n+1)]+1)`
-/

namespace A191065.P4211844519318003645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A191065.P4211844519318003645

/-! ## A191065.P8217615107231415057

`A008578(eq[2, A308176(n+1)]+2)`
-/

namespace A191065.P8217615107231415057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A191065.P8217615107231415057

/-! ## A191065.P2871726007019633857

`p?[A278579(n+1)]`
-/

namespace A191065.P2871726007019633857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191065.P2871726007019633857

/-! ## A191065.P2197483153747119034

`filter[A278579(n+1), A010051(#)]`
-/

namespace A191065.P2197483153747119034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A191065.P2197483153747119034

/-! ## A191065.P677440074468268947

`filter[A278579(n+1), A302777(#)]`
-/

namespace A191065.P677440074468268947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A191065.P677440074468268947

/-! ## A191065.P7853530594682788860

`filter[A278579(n+1), A355937(#)]`
-/

namespace A191065.P7853530594682788860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A191065.P7853530594682788860

/-! ## A191065.P14164888929068018913

`∩[A000040(n+1), A278579(n+1)]`
-/

namespace A191065.P14164888929068018913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191065.P14164888929068018913

/-! ## A191065.P5927980036201595249

`∩[A000430(n+1), A278579(n+1)]`
-/

namespace A191065.P5927980036201595249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191065.P5927980036201595249

/-! ## A191065.P4038186348388604813

`∩[A006005(n+1), A278579(n+1)]`
-/

namespace A191065.P4038186348388604813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191065.P4038186348388604813

/-! ## A191065.P18444828145584892532

`∩[A008578(n+1), A278579(n+1)]`
-/

namespace A191065.P18444828145584892532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191065.P18444828145584892532

/-! ## A191065.P8782234775322589024

`∩[A009087(n+1), A278579(n+1)]`
-/

namespace A191065.P8782234775322589024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191065.P8782234775322589024

/-! ## A191065.P13761949938601851855

`∩[A033946(n+1), A278579(n+1)]`
-/

namespace A191065.P13761949938601851855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191065.P13761949938601851855

/-! ## A191065.P18417451339820149140

`∩[A045344(n+1), A278579(n+1)]`
-/

namespace A191065.P18417451339820149140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191065.P18417451339820149140

/-! ## A191065.P11630449998176621013

`∩[A046022(n+1), A278579(n+1)]`
-/

namespace A191065.P11630449998176621013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191065.P11630449998176621013

/-! ## A191065.P17396186130969417661

`∩[A049555(n+1), A278579(n+1)]`
-/

namespace A191065.P17396186130969417661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191065.P17396186130969417661

/-! ## A191065.P3837484250467165126

`∩[A050150(n+1), A278579(n+1)]`
-/

namespace A191065.P3837484250467165126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191065.P3837484250467165126

/-! ## A191065.P2849229094309830131

`∩[A050376(n+1), A278579(n+1)]`
-/

namespace A191065.P2849229094309830131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191065.P2849229094309830131

/-! ## A191065.P14051605349538470830

`∩[A062090(n+1), A278579(n+1)]`
-/

namespace A191065.P14051605349538470830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191065.P14051605349538470830

/-!
# A191066: Primes p that have Kronecker symbol (p|30) = -1.

The programs for A191066, there is no canonical definition to state claims against.
-/

/-! ## A191066.P12295551427309365829

`p?[eq[-A226162(n), A322796(n)]]`
-/

namespace A191066.P12295551427309365829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A226162 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322796 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191066.P12295551427309365829

/-! ## A191066.P10635704739535773321

`p?[eq[2, A122855(n)+A118917(n)]]`
-/

namespace A191066.P10635704739535773321
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122855 n + A118917 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191066.P10635704739535773321

/-! ## A191066.P7855294115176590565

`p?[eq[2, A123864(n)+A118917(n)]]`
-/

namespace A191066.P7855294115176590565
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123864 n + A118917 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191066.P7855294115176590565

/-! ## A191066.P914002473761506412

`p?[eq[A035160(n+1), A318880(n+1)]+1]`
-/

namespace A191066.P914002473761506412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035160 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318880 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191066.P914002473761506412

/-! ## A191066.P3347293597123794670

`p?[eq[A226162(2*n), A322796(n)]]`
-/

namespace A191066.P3347293597123794670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226162 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322796 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191066.P3347293597123794670

/-!
# A191067: Primes that are not squares mod 31.

The programs for A191067, there is no canonical definition to state claims against.
-/

/-! ## A191067.P9058157911821948777

`p?[comp[A035235(n+1)]]`
-/

namespace A191067.P9058157911821948777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035235 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191067.P9058157911821948777

/-! ## A191067.P5196168521605753810

`p?[xor(n, 1-A035159(n+1))]`
-/

namespace A191067.P5196168521605753810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (1 - A035159 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191067.P5196168521605753810

/-! ## A191067.P4447403029016135919

`p?[(n+2)*(A035159(n+2)+1)]`
-/

namespace A191067.P4447403029016135919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A035159 (n + 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191067.P4447403029016135919

/-! ## A191067.P4724819873295132344

`eq[A011588(n), A260148(n)]`
-/

namespace A191067.P4724819873295132344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260148 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191067.P4724819873295132344

/-! ## A191067.P12284870000183698315

`eq[A011588(n)+2, A003415(n)]`
-/

namespace A191067.P12284870000183698315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011588 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191067.P12284870000183698315

/-! ## A191067.P4733615433138909453

`eq[A011588(n)+2, A284289(n)²]`
-/

namespace A191067.P4733615433138909453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011588 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191067.P4733615433138909453

/-! ## A191067.P13702058221974141203

`p?[or(-A035159(n+1), A165998(n))]`
-/

namespace A191067.P13702058221974141203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A035159 (n + 1)) (A165998 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191067.P13702058221974141203

/-! ## A191067.P10500513635026634840

`p?[(1-A035159(n+1))*A004442(n)]`
-/

namespace A191067.P10500513635026634840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A035159 (n + 1)) * A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191067.P10500513635026634840

/-! ## A191067.P15737959896758023010

`eq[A011588(n)+2, A053989(n+1)²]`
-/

namespace A191067.P15737959896758023010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011588 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191067.P15737959896758023010

/-! ## A191067.P3784225737318397898

`eq[A011588(n)+2, A231734(n+1)²]`
-/

namespace A191067.P3784225737318397898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011588 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231734 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191067.P3784225737318397898

/-! ## A191067.P11598733736245625031

`eq[A011588(n)+2, A231820(n+1)²]`
-/

namespace A191067.P11598733736245625031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011588 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191067.P11598733736245625031

/-! ## A191067.P17803346031766152330

`p?[or(-A035159(n+1), A089026(n+1))]`
-/

namespace A191067.P17803346031766152330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A035159 (n + 1)) (A089026 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191067.P17803346031766152330

/-! ## A191067.P1056360675691151916

`p?[or(-A035159(n+1), A188385(n+1))]`
-/

namespace A191067.P1056360675691151916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A035159 (n + 1)) (A188385 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191067.P1056360675691151916

/-! ## A191067.P8574779248879577046

`p?[A004442(A035159(n+1))*A004442(n)]`
-/

namespace A191067.P8574779248879577046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A035159 (n + 1)).toNat * A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191067.P8574779248879577046

/-! ## A191067.P8345740129554015622

`eq[A011588(n)+2, A211110(n)²]`
-/

namespace A191067.P8345740129554015622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011588 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191067.P8345740129554015622

/-! ## A191067.P13935372023070938508

`eq[A011588(n)+2, A210442(n)²]`
-/

namespace A191067.P13935372023070938508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011588 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191067.P13935372023070938508

/-! ## A191067.P5284521108009244147

`p?[lt[A123063(2*n), 1]]`
-/

namespace A191067.P5284521108009244147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123063 (2 * n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191067.P5284521108009244147

/-! ## A191067.P1210550141400834549

`record[A014963(lt[A123063(2*n), 1])]`
-/

namespace A191067.P1210550141400834549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123063 (2 * n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191067.P1210550141400834549

/-! ## A191067.P16640077021990217813

`eq[A011588(n)+2, A117545(n+1)²]`
-/

namespace A191067.P16640077021990217813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011588 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191067.P16640077021990217813

/-!
# A191068: Primes p that have Kronecker symbol (p|35) = -1.

The programs for A191068, the canonical program `A191068.P6506479572961148821` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191068 has offset 1).

The definition of A191068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 621 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191068.P6506479572961148821

`p?[(n+1)*(1-A035155(n+1))]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A191068

/-- `p?[(n+1)*(1-A035155(n+1))]` -/
def P6506479572961148821.Spec : Prop :=
  ∀ n, P6506479572961148821.a n = A191068 (n + 1)

theorem P6506479572961148821.correct : P6506479572961148821.Spec := by
  intro n
  simp only [A191068, Nat.add_sub_cancel]

end A191068

/-! ## A191068.P3327975514417910605

`p?[(n+1)*A035155(A035155(n+1)+1)]`
-/

namespace A191068.P3327975514417910605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A035155 (A035155 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191068.P3327975514417910605

namespace A191068

/-- `p?[(n+1)*A035155(A035155(n+1)+1)]` -/
def P3327975514417910605.Spec : Prop :=
  ∀ n, P3327975514417910605.a n = A191068 (n + 1)

end A191068

/-! ## A191068.P17927967209668052412

`p?[n+1-lcm(n, A035155(A006530(n+1)))]`
-/

namespace A191068.P17927967209668052412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Int.lcm (n : ℤ) (A035155 (A006530 (n + 1)).toNat) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191068.P17927967209668052412

namespace A191068

/-- `p?[n+1-lcm(n, A035155(A006530(n+1)))]` -/
def P17927967209668052412.Spec : Prop :=
  ∀ n, P17927967209668052412.a n = A191068 (n + 1)

end A191068

/-! ## A191068.P11638813442782011849

`p?[n+1-lcm(A000040(n+1), A035155(n+1))]`
-/

namespace A191068.P11638813442782011849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Int.lcm (A000040 (n + 1)) (A035155 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191068.P11638813442782011849

namespace A191068

/-- `p?[n+1-lcm(A000040(n+1), A035155(n+1))]` -/
def P11638813442782011849.Spec : Prop :=
  ∀ n, P11638813442782011849.a n = A191068 (n + 1)

end A191068

/-! ## A191068.P10663504358032819951

`A000040(eq[0, A035155(A000040(n+1))]+1)`
-/

namespace A191068.P10663504358032819951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035155 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A191068.P10663504358032819951

namespace A191068

/-- `A000040(eq[0, A035155(A000040(n+1))]+1)` -/
def P10663504358032819951.Spec : Prop :=
  ∀ n, P10663504358032819951.a n = A191068 (n + 1)

end A191068

/-!
# A191069: Primes p that have Kronecker symbol (p|38) = -1.

The programs for A191069, there is no canonical definition to state claims against.
-/

/-! ## A191069.P12817022513612622272

`p?[n+1-n*A035152(n+1)]`
-/

namespace A191069.P12817022513612622272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (n : ℤ) * A035152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191069.P12817022513612622272

/-! ## A191069.P1011348124309339744

`p?[A000007(A035152(n+1))*(n+1)]`
-/

namespace A191069.P1011348124309339744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A035152 (n + 1)).toNat * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191069.P1011348124309339744

/-! ## A191069.P12857243861868252177

`p?[(1-A035152(n+1))*A004442(n)]`
-/

namespace A191069.P12857243861868252177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A035152 (n + 1)) * A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191069.P12857243861868252177

/-! ## A191069.P11677396107924263728

`p?[(1-A035152(n+1))*A153152(n)]`
-/

namespace A191069.P11677396107924263728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A035152 (n + 1)) * A153152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191069.P11677396107924263728

/-! ## A191069.P14271321400469521394

`p?[gcd(A035152(n+1), A089026(n+1))]`
-/

namespace A191069.P14271321400469521394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035152 (n + 1)) (A089026 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191069.P14271321400469521394

/-! ## A191069.P8264895452871706218

`p?[(n+1)*A010052(A035152(n+1)+1)]`
-/

namespace A191069.P8264895452871706218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010052 (A035152 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191069.P8264895452871706218

/-! ## A191069.P547654487416945779

`p?[(n+1)*A035152(26*A035152(n+1)+1)]`
-/

namespace A191069.P547654487416945779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A035152 (26 * A035152 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191069.P547654487416945779

/-! ## A191069.P13463124769651521507

`p?[A004442(A035152(n+1))*A004442(n)]`
-/

namespace A191069.P13463124769651521507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A035152 (n + 1)).toNat * A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191069.P13463124769651521507

/-! ## A191069.P10990976585808128846

`eq[2, A053204(n)+A035152(A093178(n))]`
-/

namespace A191069.P10990976585808128846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n + A035152 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191069.P10990976585808128846

/-! ## A191069.P13754344097636314816

`p?[(n+1)*A001316(n*A035152(n+1))]`
-/

namespace A191069.P13754344097636314816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001316 ((n : ℤ) * A035152 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191069.P13754344097636314816

/-!
# A191070: Primes p that have Kronecker symbol (p|39) = -1.

The programs for A191070, the canonical program `A191070.P10123948899731297363` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191070 has offset 1).

The definition of A191070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 621 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191070.P10123948899731297363

`p?[(n+1)*(1-A035151(n+1))]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A191070

/-- `p?[(n+1)*(1-A035151(n+1))]` -/
def P10123948899731297363.Spec : Prop :=
  ∀ n, P10123948899731297363.a n = A191070 (n + 1)

theorem P10123948899731297363.correct : P10123948899731297363.Spec := by
  intro n
  simp only [A191070, Nat.add_sub_cancel]

end A191070

/-! ## A191070.P3094823311192644739

`eq[A260148(n), A388073(n)]`
-/

namespace A191070.P3094823311192644739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260148 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388073 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191070.P3094823311192644739

namespace A191070

/-- `eq[A260148(n), A388073(n)]` -/
def P3094823311192644739.Spec : Prop :=
  ∀ n, (P3094823311192644739.a n : ℤ) = A191070 (n + 1)

end A191070

/-! ## A191070.P13223234581193191768

`p?[(n+1)*A035151(A035151(n+1)+9)]`
-/

namespace A191070.P13223234581193191768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A035151 (A035151 (n + 1) + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191070.P13223234581193191768

namespace A191070

/-- `p?[(n+1)*A035151(A035151(n+1)+9)]` -/
def P13223234581193191768.Spec : Prop :=
  ∀ n, P13223234581193191768.a n = A191070 (n + 1)

end A191070

/-! ## A191070.P7790797286284687438

`p?[n+1-lcm(n, A035151(A000265(n+1)))]`
-/

namespace A191070.P7790797286284687438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Int.lcm (n : ℤ) (A035151 (A000265 (n + 1)).toNat) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191070.P7790797286284687438

namespace A191070

/-- `p?[n+1-lcm(n, A035151(A000265(n+1)))]` -/
def P7790797286284687438.Spec : Prop :=
  ∀ n, P7790797286284687438.a n = A191070 (n + 1)

end A191070

/-! ## A191070.P16425872848952920914

`p?[lcm(n+1, A035151(A035151(n+1)²+1)²)]`
-/

namespace A191070.P16425872848952920914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A035151 (A035151 (n + 1) ^ 2 + 1).toNat ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191070.P16425872848952920914

namespace A191070

/-- `p?[lcm(n+1, A035151(A035151(n+1)²+1)²)]` -/
def P16425872848952920914.Spec : Prop :=
  ∀ n, (P16425872848952920914.a n : ℤ) = A191070 (n + 1)

end A191070

/-! ## A191070.P14130915891179599871

`p?[(n+1)*A239261(A035151(n+1))]`
-/

namespace A191070.P14130915891179599871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A239261 (A035151 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191070.P14130915891179599871

namespace A191070

/-- `p?[(n+1)*A239261(A035151(n+1))]` -/
def P14130915891179599871.Spec : Prop :=
  ∀ n, P14130915891179599871.a n = A191070 (n + 1)

end A191070

/-!
# A191071: Primes p that have Kronecker symbol (p|46) = -1.

The programs for A191071, there is no canonical definition to state claims against.
-/

/-! ## A191071.P3774068249656992535

`p?[(1-A035144(n+1))*A004442(n)]`
-/

namespace A191071.P3774068249656992535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A035144 (n + 1)) * A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191071.P3774068249656992535

/-! ## A191071.P12837202987004743431

`p?[gcd(A035144(n+1), A089026(n+1))]`
-/

namespace A191071.P12837202987004743431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035144 (n + 1)) (A089026 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191071.P12837202987004743431

/-! ## A191071.P747495456607567567

`eq[A035144(n+1), A068346(n+1)]+1`
-/

namespace A191071.P747495456607567567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A191071.P747495456607567567

/-! ## A191071.P17189645667637148941

`eq[A035144(n+1), A277894(n+1)]+1`
-/

namespace A191071.P17189645667637148941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277894 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A191071.P17189645667637148941

/-! ## A191071.P6937978467710437835

`p?[A004442(A035144(n+1))*A004442(n)]`
-/

namespace A191071.P6937978467710437835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A035144 (n + 1)).toNat * A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191071.P6937978467710437835

/-! ## A191071.P7425801985107061865

`eq[A035144(A047411(n+1)-n), A068346(n)]`
-/

namespace A191071.P7425801985107061865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035144 (A047411 (n + 1) - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191071.P7425801985107061865

/-! ## A191071.P290911914505767345

`eq[A035144(A047411(n+1)-n), A277894(n)]`
-/

namespace A191071.P290911914505767345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035144 (A047411 (n + 1) - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191071.P290911914505767345

/-! ## A191071.P14497786807790797528

`eq[A035144(A047411(n+1)), A068346(n)]`
-/

namespace A191071.P14497786807790797528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035144 (A047411 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191071.P14497786807790797528

/-! ## A191071.P2161004557330494274

`eq[A035144(A047411(n+1)), A277894(n)]`
-/

namespace A191071.P2161004557330494274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035144 (A047411 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191071.P2161004557330494274

/-! ## A191071.P7760637707815397814

`eq[2, A053204(n)+A035144(A047411(n+1))]`
-/

namespace A191071.P7760637707815397814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n + A035144 (A047411 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191071.P7760637707815397814

/-!
# A191072: Primes that are not squares mod 47.

The programs for A191072, there is no canonical definition to state claims against.
-/

/-! ## A191072.P12230933704476069391

`p?[comp[A267601(n+1)]]`
-/

namespace A191072.P12230933704476069391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267601 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191072.P12230933704476069391

/-! ## A191072.P15857879976843678168

`eq[A011592(n), A260148(n)]`
-/

namespace A191072.P15857879976843678168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260148 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191072.P15857879976843678168

/-! ## A191072.P6974678871624298609

`eq[A011592(n)+2, A284289(n)²]`
-/

namespace A191072.P6974678871624298609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011592 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191072.P6974678871624298609

/-! ## A191072.P7762512585601456157

`p?[(n+1)*A028242(A035143(n+1))]`
-/

namespace A191072.P7762512585601456157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A028242 (A035143 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191072.P7762512585601456157

/-! ## A191072.P11407637368439533547

`p?[(1-A035143(n+1))*A139693(n)]`
-/

namespace A191072.P11407637368439533547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A035143 (n + 1)) * A139693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191072.P11407637368439533547

/-! ## A191072.P11590338352528590361

`eq[A011592(n)+2, A053989(n+1)²]`
-/

namespace A191072.P11590338352528590361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011592 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191072.P11590338352528590361

/-! ## A191072.P3090851867114805959

`eq[A011592(n)+2, A231734(n+1)²]`
-/

namespace A191072.P3090851867114805959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011592 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231734 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191072.P3090851867114805959

/-! ## A191072.P4514860465027992688

`eq[A011592(n)+2, A231820(n+1)²]`
-/

namespace A191072.P4514860465027992688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011592 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191072.P4514860465027992688

/-! ## A191072.P10948623748824123395

`p?[(1-A035143(n+1))*A019554(n+1)]`
-/

namespace A191072.P10948623748824123395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A035143 (n + 1)) * A019554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191072.P10948623748824123395

/-! ## A191072.P16973749105882274878

`p?[(1-A035143(n+1))*A089247(n+1)]`
-/

namespace A191072.P16973749105882274878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A035143 (n + 1)) * A089247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191072.P16973749105882274878

/-! ## A191072.P13404779604891719999

`p?[A010059(A035143(n+1))*A139693(n)]`
-/

namespace A191072.P13404779604891719999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A035143 (n + 1)).toNat * A139693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191072.P13404779604891719999

/-! ## A191072.P15593114016176690268

`p?[A008458(A035143(n+1))*A019554(n+1)]`
-/

namespace A191072.P15593114016176690268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A035143 (n + 1)).toNat * A019554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191072.P15593114016176690268

/-! ## A191072.P397070500985415401

`eq[A011592(n)+2, A211110(n)²]`
-/

namespace A191072.P397070500985415401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011592 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191072.P397070500985415401

/-! ## A191072.P12145430666255120669

`p?[A016777(A035143(n+1))*A089247(n+1)]`
-/

namespace A191072.P12145430666255120669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A035143 (n + 1)).toNat * A089247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191072.P12145430666255120669

/-! ## A191072.P14741840216292774281

`eq[A011592(n)+2, A210442(n)²]`
-/

namespace A191072.P14741840216292774281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011592 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191072.P14741840216292774281

/-! ## A191072.P791393264479401948

`eq[A011592(n)+2, A117545(n+1)²]`
-/

namespace A191072.P791393264479401948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011592 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191072.P791393264479401948

/-! ## A191072.P12033890652645275548

`p?[(1-A035143(n+1))*A250246(n+1)]`
-/

namespace A191072.P12033890652645275548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A035143 (n + 1)) * A250246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191072.P12033890652645275548

/-!
# A191073: Primes that are not squares mod 51.

The programs for A191073, there is no canonical definition to state claims against.
-/

/-! ## A191073.P8682850066116177226

`p?[A076118(n)*A200219(n+1)]`
-/

namespace A191073.P8682850066116177226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076118 n * A200219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191073.P8682850066116177226

/-! ## A191073.P10813550428054951331

`p?[A000265(n+1)*A200219(3*(n+1))]`
-/

namespace A191073.P10813550428054951331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A200219 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191073.P10813550428054951331

/-!
# A191074: Primes p that have Kronecker symbol (p|55) = -1.

The programs for A191074, there is no canonical definition to state claims against.
-/

/-! ## A191074.P16373523169959694091

`p?[∑[∏{e}[A064029(n+1), #]]]`
-/

namespace A191074.P16373523169959694091
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064029 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191074.P16373523169959694091

/-! ## A191074.P1512374627200383046

`p?[∑[A118957(2*(n+1))%4]]`
-/

namespace A191074.P1512374627200383046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118957 (2 * (n + 1))) 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191074.P1512374627200383046

/-! ## A191074.P18407838649452954879

`A094548(A038980(n+1))`
-/

namespace A191074.P18407838649452954879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094548 (A038980 (n + 1)).toNat

end

end A191074.P18407838649452954879

/-! ## A191074.P2379414454701409044

`eq[A003415(n), A121041(A061237(3*n+1))]`
-/

namespace A191074.P2379414454701409044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121041 (A061237 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191074.P2379414454701409044

/-!
# A191075: Primes that are not squares mod 59.

The programs for A191075, there is no canonical definition to state claims against.
-/

/-! ## A191075.P14471895205052929607

`eq[(A011594(n)+2)², A210442(n)]`
-/

namespace A191075.P14471895205052929607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011594 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191075.P14471895205052929607

/-! ## A191075.P14355994293020965454

`eq[A011594(n)+2, A284289(n)²]`
-/

namespace A191075.P14355994293020965454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011594 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191075.P14355994293020965454

/-! ## A191075.P15852918362217609051

`eq[A011594(n)+2, A053989(n+1)²]`
-/

namespace A191075.P15852918362217609051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011594 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191075.P15852918362217609051

/-! ## A191075.P2174777094391285641

`eq[A011594(n)+2, A231734(n+1)²]`
-/

namespace A191075.P2174777094391285641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011594 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231734 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191075.P2174777094391285641

/-! ## A191075.P6249749280939405994

`eq[A011594(n)+2, A231820(n+1)²]`
-/

namespace A191075.P6249749280939405994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011594 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191075.P6249749280939405994

/-! ## A191075.P8350434334664530804

`eq[A011594(n)+2, A211110(n)²]`
-/

namespace A191075.P8350434334664530804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011594 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191075.P8350434334664530804

/-! ## A191075.P1675170935529833161

`eq[A011594(2*n), A072721(n)]`
-/

namespace A191075.P1675170935529833161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011594 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191075.P1675170935529833161

/-! ## A191075.P13474046014527264502

`eq[A011594(2*n), A210442(n)]`
-/

namespace A191075.P13474046014527264502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011594 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191075.P13474046014527264502

/-! ## A191075.P15376293999469773981

`eq[A011594(2*n), A211110(n)]`
-/

namespace A191075.P15376293999469773981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011594 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191075.P15376293999469773981

/-! ## A191075.P5092712269848784354

`eq[A011594(2*n), A284289(n)]`
-/

namespace A191075.P5092712269848784354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011594 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191075.P5092712269848784354

/-! ## A191075.P18338177391083158368

`eq[A011594(2*n), A322968(n)]`
-/

namespace A191075.P18338177391083158368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011594 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191075.P18338177391083158368

/-! ## A191075.P9806281396300904635

`eq[A011594(2*n), A053989(n+1)]`
-/

namespace A191075.P9806281396300904635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011594 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191075.P9806281396300904635

/-! ## A191075.P11084692904006217617

`eq[A011594(2*n), A231820(n+1)]`
-/

namespace A191075.P11084692904006217617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011594 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191075.P11084692904006217617

/-! ## A191075.P5489600771415397860

`eq[A011594(2*n), A117545(n+1)]`
-/

namespace A191075.P5489600771415397860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011594 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191075.P5489600771415397860

/-! ## A191075.P5586585056438079543

`eq[A011594(n)+2, A117545(n+1)²]`
-/

namespace A191075.P5586585056438079543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011594 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191075.P5586585056438079543

/-!
# A191076: Primes p that have Kronecker symbol (p|62) = -1.

The programs for A191076, there is no canonical definition to state claims against.
-/

/-! ## A191076.P12538061981039610830

`p?[A128291(A128291(n+1))-7]`
-/

namespace A191076.P12538061981039610830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128291 (A128291 (n + 1)).toNat - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191076.P12538061981039610830

/-!
# A191077: Primes that are not squares mod 67.

The programs for A191077, there is no canonical definition to state claims against.
-/

/-! ## A191077.P12211186405097530556

`p?[lt[A318984(n), 1]]`
-/

namespace A191077.P12211186405097530556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318984 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191077.P12211186405097530556

/-! ## A191077.P36932226045172252

`eq[A068346(n), A318984(n)]`
-/

namespace A191077.P36932226045172252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318984 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191077.P36932226045172252

/-! ## A191077.P15057154332800609571

`eq[A072480(n), A318984(n)]`
-/

namespace A191077.P15057154332800609571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318984 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191077.P15057154332800609571

/-! ## A191077.P14843017957211073024

`eq[A277894(n), A318984(n)]`
-/

namespace A191077.P14843017957211073024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277894 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318984 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191077.P14843017957211073024

/-! ## A191077.P15698459073557798380

`eq[A278648(n), A318984(n)]`
-/

namespace A191077.P15698459073557798380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278648 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318984 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191077.P15698459073557798380

/-! ## A191077.P14477313087799607185

`eq[A318984(n), A338554(n)]`
-/

namespace A191077.P14477313087799607185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318984 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338554 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191077.P14477313087799607185

/-! ## A191077.P6121259969894811382

`eq[A072491(n)², A318984(A318984(n))]`
-/

namespace A191077.P6121259969894811382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318984 (A318984 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191077.P6121259969894811382

/-! ## A191077.P3150608557678858890

`p?[n*A011596(2*n)]`
-/

namespace A191077.P3150608557678858890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011596 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191077.P3150608557678858890

/-! ## A191077.P17191181327628723591

`eq[A011596(2*n), A072721(n)]`
-/

namespace A191077.P17191181327628723591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011596 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191077.P17191181327628723591

/-! ## A191077.P8541343266473678932

`eq[A011596(2*n), A210442(n)]`
-/

namespace A191077.P8541343266473678932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011596 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191077.P8541343266473678932

/-! ## A191077.P15169997344583765424

`eq[A011596(2*n), A211110(n)]`
-/

namespace A191077.P15169997344583765424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011596 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191077.P15169997344583765424

/-! ## A191077.P11382904579247835680

`eq[A011596(2*n), A284289(n)]`
-/

namespace A191077.P11382904579247835680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011596 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191077.P11382904579247835680

/-! ## A191077.P14962885252602664529

`eq[A011596(2*n), A322968(n)]`
-/

namespace A191077.P14962885252602664529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011596 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191077.P14962885252602664529

/-! ## A191077.P4916663770005041803

`eq[A318984(n), A340732(n)]`
-/

namespace A191077.P4916663770005041803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318984 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340732 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191077.P4916663770005041803

/-!
# A191079: Primes that are not squares mod 71.

The programs for A191079, there is no canonical definition to state claims against.
-/

/-! ## A191079.P4872113710163345841

`p?[and(n, A011597(n))]`
-/

namespace A191079.P4872113710163345841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A011597 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191079.P4872113710163345841

/-! ## A191079.P7363060633831109766

`eq[A011597(n), A260148(n)]`
-/

namespace A191079.P7363060633831109766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011597 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260148 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191079.P7363060633831109766

/-! ## A191079.P3766137230958732713

`eq[-A011597(n), A284289(n)]`
-/

namespace A191079.P3766137230958732713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A011597 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191079.P3766137230958732713

/-! ## A191079.P13486056554307841194

`p?[eq[A011597(n), A081729(n)]]`
-/

namespace A191079.P13486056554307841194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011597 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191079.P13486056554307841194

/-! ## A191079.P482724168336654645

`eq[A011597(n)+2, A003415(n)]`
-/

namespace A191079.P482724168336654645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011597 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191079.P482724168336654645

/-! ## A191079.P12061177193387362496

`eq[1, A003415(and(n, A011597(n)))]`
-/

namespace A191079.P12061177193387362496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (Int.land (n : ℤ) (A011597 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191079.P12061177193387362496

/-! ## A191079.P12744364282137977267

`p?[n*(A000007(n)-A011597(n))]`
-/

namespace A191079.P12744364282137977267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000007 n - A011597 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191079.P12744364282137977267

/-! ## A191079.P15510953723037642951

`p?[A154271(n+1)-n*A011597(n)]`
-/

namespace A191079.P15510953723037642951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154271 (n + 1) - (n : ℤ) * A011597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191079.P15510953723037642951

/-! ## A191079.P3965292079974311722

`eq[A011597(n)+2, A054251(n)]`
-/

namespace A191079.P3965292079974311722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011597 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054251 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191079.P3965292079974311722

/-! ## A191079.P11965284007825288227

`eq[A011597(n)+2, A331888(n)]`
-/

namespace A191079.P11965284007825288227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011597 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331888 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191079.P11965284007825288227

/-!
# A191080: Primes p that have Kronecker symbol (p|78) = -1.

The programs for A191080, there is no canonical definition to state claims against.
-/

/-! ## A191080.P7210580410313207604

`p?[record[A222252(n)+A183993(n+1)]]`
-/

namespace A191080.P7210580410313207604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 n + A183993 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191080.P7210580410313207604

/-! ## A191080.P12713292497001576415

`A000040(A350255(floor(n²/2)+2*(n+1)))`
-/

namespace A191080.P12713292497001576415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A350255 (⌊(n ^ 2 : ℚ) / 2⌋ + (2 * (n + 1) : ℤ)).toNat).toNat

end

end A191080.P12713292497001576415

/-! ## A191080.P15571025615702470279

`A020602(record[A181861(n)])`
-/

namespace A191080.P15571025615702470279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020602 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A191080.P15571025615702470279

/-! ## A191080.P5259289125815394157

`A023238(record[A328719(2*n+3)])`
-/

namespace A191080.P5259289125815394157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328719 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023238 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A191080.P5259289125815394157

/-!
# A191081: Primes that are not squares mod 79.

The programs for A191081, there is no canonical definition to state claims against.
-/

/-! ## A191081.P4895060213261469739

`eq[A011599(n), A260148(n)]`
-/

namespace A191081.P4895060213261469739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011599 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260148 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191081.P4895060213261469739

/-! ## A191081.P11540473719759649412

`eq[(A011599(n)+2)², A211110(n)]`
-/

namespace A191081.P11540473719759649412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011599 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191081.P11540473719759649412

/-! ## A191081.P3762401644666964933

`eq[A011599(n)+2, A284289(n)²]`
-/

namespace A191081.P3762401644666964933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011599 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191081.P3762401644666964933

/-! ## A191081.P4161219300313604765

`eq[A011599(n)+2, A053989(n+1)²]`
-/

namespace A191081.P4161219300313604765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011599 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191081.P4161219300313604765

/-! ## A191081.P517892938740297875

`eq[A011599(n)+2, A231734(n+1)²]`
-/

namespace A191081.P517892938740297875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011599 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231734 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191081.P517892938740297875

/-! ## A191081.P13145963044107004406

`eq[A011599(n)+2, A231820(n+1)²]`
-/

namespace A191081.P13145963044107004406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011599 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191081.P13145963044107004406

/-! ## A191081.P13691108188292644358

`eq[A011599(n)+2, A210442(n)²]`
-/

namespace A191081.P13691108188292644358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011599 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191081.P13691108188292644358

/-! ## A191081.P16916718377670528029

`eq[2, and(A011599(n), A284289(2*n))]`
-/

namespace A191081.P16916718377670528029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011599 n) (A284289 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191081.P16916718377670528029

/-! ## A191081.P2941632740888233363

`eq[A011599(n)+2, A117545(n+1)²]`
-/

namespace A191081.P2941632740888233363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011599 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191081.P2941632740888233363

/-! ## A191081.P10468727281993306499

`eq[A011599(n)+2, A331885(n)²]`
-/

namespace A191081.P10468727281993306499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011599 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331885 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191081.P10468727281993306499

/-!
# A191082: Primes that are not squares mod 83.

The programs for A191082, there is no canonical definition to state claims against.
-/

/-! ## A191082.P928501107691776212

`eq[(A011600(n)+2)², A210442(n)]`
-/

namespace A191082.P928501107691776212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011600 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191082.P928501107691776212

/-! ## A191082.P17264233076570903837

`eq[A011600(n)+2, A284289(n)²]`
-/

namespace A191082.P17264233076570903837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011600 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191082.P17264233076570903837

/-! ## A191082.P11680093050311431868

`eq[A011600(n)+2, A053989(n+1)²]`
-/

namespace A191082.P11680093050311431868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011600 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191082.P11680093050311431868

/-! ## A191082.P1505594925461416159

`eq[A011600(n)+2, A231734(n+1)²]`
-/

namespace A191082.P1505594925461416159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011600 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231734 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191082.P1505594925461416159

/-! ## A191082.P980862878736191912

`eq[A011600(n)+2, A231820(n+1)²]`
-/

namespace A191082.P980862878736191912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011600 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191082.P980862878736191912

/-! ## A191082.P8773913210498328242

`eq[A011600(n)+2, A211110(n)²]`
-/

namespace A191082.P8773913210498328242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011600 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191082.P8773913210498328242

/-! ## A191082.P5429807705466145009

`p?[n*A011600(2*n)]`
-/

namespace A191082.P5429807705466145009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011600 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191082.P5429807705466145009

/-! ## A191082.P5490670061992814977

`eq[A011600(2*n), A072721(n)]`
-/

namespace A191082.P5490670061992814977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011600 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191082.P5490670061992814977

/-! ## A191082.P11127187006056784536

`eq[A011600(2*n), A210442(n)]`
-/

namespace A191082.P11127187006056784536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011600 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191082.P11127187006056784536

/-! ## A191082.P1576133352328031499

`eq[A011600(2*n), A211110(n)]`
-/

namespace A191082.P1576133352328031499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011600 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191082.P1576133352328031499

/-! ## A191082.P11521914849217488429

`eq[A011600(2*n), A284289(n)]`
-/

namespace A191082.P11521914849217488429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011600 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191082.P11521914849217488429

/-! ## A191082.P3097136283071885670

`eq[A011600(2*n), A322968(n)]`
-/

namespace A191082.P3097136283071885670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011600 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191082.P3097136283071885670

/-! ## A191082.P2994968766857337481

`eq[A011600(2*n), A053989(n+1)]`
-/

namespace A191082.P2994968766857337481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011600 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191082.P2994968766857337481

/-! ## A191082.P16389765828796133446

`eq[A011600(2*n), A231734(n+1)]`
-/

namespace A191082.P16389765828796133446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011600 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231734 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191082.P16389765828796133446

/-! ## A191082.P14761325700962761881

`eq[A011600(2*n), A231820(n+1)]`
-/

namespace A191082.P14761325700962761881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011600 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191082.P14761325700962761881

/-! ## A191082.P1067964815963652187

`eq[A011600(2*n), A117545(n+1)]`
-/

namespace A191082.P1067964815963652187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011600 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191082.P1067964815963652187

/-! ## A191082.P182212709780571670

`eq[A011600(n)+2, A117545(n+1)²]`
-/

namespace A191082.P182212709780571670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011600 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191082.P182212709780571670

/-!
# A191084: Primes p that have Kronecker symbol (p|87) = -1.

The programs for A191084, there is no canonical definition to state claims against.
-/

/-! ## A191084.P5686432453307492880

`A042988(lt[A157305(n), A185234(n)])`
-/

namespace A191084.P5686432453307492880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157305 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A191084.P5686432453307492880

/-! ## A191084.P17602131928087994163

`A032758(lt[A165781(n), A033188(n+1)])`
-/

namespace A191084.P17602131928087994163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165781 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032758 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A191084.P17602131928087994163

/-! ## A191084.P4871443127817338030

`A361977(2*(n+2))%A361937(A361975(n+1))`
-/

namespace A191084.P4871443127817338030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361977 (2 * (n + 2))) (A361937 (A361975 (n + 1)).toNat)

end

end A191084.P4871443127817338030

/-!
# A191087: Primes p that have Kronecker symbol (p|95) = -1.

The programs for A191087, there is no canonical definition to state claims against.
-/

/-! ## A191087.P6794127905792824181

`p?[lt[A275280(n+2), A275318(n+1)]]`
-/

namespace A191087.P6794127905792824181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275280 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275318 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191087.P6794127905792824181

/-! ## A191087.P10699537236018107419

`p?[A279206(3*n)*A279244(n+1)]`
-/

namespace A191087.P10699537236018107419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279206 (3 * n) * A279244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191087.P10699537236018107419

/-! ## A191087.P15666100997576585812

`A115232(lt[A080134(n+1), A225632(n+4)])`
-/

namespace A191087.P15666100997576585812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225632 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115232 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A191087.P15666100997576585812

/-! ## A191087.P10748041993097239392

`A042990(A032559(n+1)+A029837(3*(n+1)))`
-/

namespace A191087.P10748041993097239392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 (A032559 (n + 1) + A029837 (3 * (n + 1))).toNat

end

end A191087.P10748041993097239392

/-! ## A191087.P13841269227496879045

`A000040(lt[A001316(n+1), A212954(2*n+5)])`
-/

namespace A191087.P13841269227496879045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212954 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A191087.P13841269227496879045

/-!
# A191089: Least prime p such that the first n primes are not squares mod p.

The programs for A191089, there is no canonical definition to state claims against.
-/

/-! ## A191089.P18003340885325453086

`A191088(A043318(n+1))`
-/

namespace A191089.P18003340885325453086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191088 (A043318 (n + 1)).toNat

end

end A191089.P18003340885325453086

/-! ## A191089.P4305410189681559768

`A191088(A044915(n+1))`
-/

namespace A191089.P4305410189681559768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191088 (A044915 (n + 1)).toNat

end

end A191089.P4305410189681559768

/-! ## A191089.P663708761323308427

`A191088(A055647(n+1))`
-/

namespace A191089.P663708761323308427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191088 (A055647 (n + 1)).toNat

end

end A191089.P663708761323308427

/-! ## A191089.P15782091737223434105

`A191088(A057846(n+1))`
-/

namespace A191089.P15782091737223434105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191088 (A057846 (n + 1)).toNat

end

end A191089.P15782091737223434105

/-!
# A191090: a(n)^2 is the largest square required when writing n as a partition of squares.

The programs for A191090, there is no canonical definition to state claims against.
-/

/-! ## A191090.P8566574176925875641

`lcm(A063435(A035382(n)), A241898(n+1))`
-/

namespace A191090.P8566574176925875641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A063435 (A035382 n).toNat) (A241898 (n + 1))

end

end A191090.P8566574176925875641

/-! ## A191090.P15056056625368331020

`A033183(A007947(n+1))+A015052(A183102(n+1))`
-/

namespace A191090.P15056056625368331020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A007947 (n + 1)).toNat + A015052 (A183102 (n + 1)).toNat

end

end A191090.P15056056625368331020

/-! ## A191090.P8479776381836328803

`A033183(A015052(n+1))+A015052(A183102(n+1))`
-/

namespace A191090.P8479776381836328803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A015052 (n + 1)).toNat + A015052 (A183102 (n + 1)).toNat

end

end A191090.P8479776381836328803

/-! ## A191090.P9176451039785344302

`A241898(n+1)+A014306(A210709(n))`
-/

namespace A191090.P9176451039785344302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241898 (n + 1) + A014306 (A210709 n).toNat

end

end A191090.P9176451039785344302

/-! ## A191090.P13566527778292256366

`A241898(n+1)%A002907(n)`
-/

namespace A191090.P13566527778292256366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241898 (n + 1)) (A002907 n)

end

end A191090.P13566527778292256366

/-!
# A191091: Least number of squares required when writing n as a sum of squares with the smallest square as large as possible.

The programs for A191091, there is no canonical definition to state claims against.
-/

/-! ## A191091.P7296969438152199869

`gcd(A037460(A128129(n+1)), A096436(n+1))`
-/

namespace A191091.P7296969438152199869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037460 (A128129 (n + 1)).toNat) (A096436 (n + 1))

end

end A191091.P7296969438152199869

/-! ## A191091.P9556527046107492667

`A002828(A130696(4*(n+1)+1))`
-/

namespace A191091.P9556527046107492667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A130696 (4 * (n + 1) + 1)).toNat

end

end A191091.P9556527046107492667

/-! ## A191091.P2020759472624440522

`A060689(A251072(2*n))+A002828(n+1)`
-/

namespace A191091.P2020759472624440522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060689 (A251072 (2 * n)).toNat + A002828 (n + 1)

end

end A191091.P2020759472624440522

/-! ## A191091.P680206442713921189

`A002828(lt[A056863(n+1), n+1])`
-/

namespace A191091.P680206442713921189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056863 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A191091.P680206442713921189

/-! ## A191091.P11858876947854381931

`A002828(lt[A304311(n), A250120(n)])`
-/

namespace A191091.P11858876947854381931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304311 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A191091.P11858876947854381931

/-!
# A191092: Number of n-cell polycubes that are proper in n-3 dimensions.

The programs for A191092, there is no canonical definition to state claims against.
-/

/-! ## A191092.P5169151235088419684

`A195739(∑[n+3]+1)`
-/

namespace A191092.P5169151235088419684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195739 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A191092.P5169151235088419684

/-! ## A191092.P2447522015845355857

`A195739(A034856(n+2))/A294335(n)`
-/

namespace A191092.P2447522015845355857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195739 (A034856 (n + 2)).toNat : ℚ) / (A294335 n : ℚ)

end

end A191092.P2447522015845355857

/-! ## A191092.P4056839864870810821

`A195739(A034856(n+2))%A002439(n)`
-/

namespace A191092.P4056839864870810821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195739 (A034856 (n + 2)).toNat) (A002439 n)

end

end A191092.P4056839864870810821

/-! ## A191092.P6442809528862892394

`and(A057428(n), A195739(A034856(n+2)))`
-/

namespace A191092.P6442809528862892394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A195739 (A034856 (n + 2)).toNat)

end

end A191092.P6442809528862892394

/-!
# A191094: Number of n-cell fixed tree-like polycubes in 4 dimensions.

The programs for A191094, there is no canonical definition to state claims against.
-/

/-! ## A191094.P208112849652472067

`A380693(∑[A206178(n)])`
-/

namespace A191094.P208112849652472067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380693 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A191094.P208112849652472067

/-!
# A191095: Number of n-cell fixed tree-like polycubes in 5 dimensions.

The programs for A191095, there is no canonical definition to state claims against.
-/

/-! ## A191095.P9679917614068293423

`∑[A222254(∏[A045855(n+1)])]`
-/

namespace A191095.P9679917614068293423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045855 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191095.P9679917614068293423

/-!
# A191099: 5th differences of Bell numbers.

The programs for A191099, there is no canonical definition to state claims against.
-/

/-! ## A191099.P5357665952353194960

`Δ[A011967(n)]`
-/

namespace A191099.P5357665952353194960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191099.P5357665952353194960

/-! ## A191099.P10026522293906257662

`Δ[Δ[A011966(n)]]`
-/

namespace A191099.P10026522293906257662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011966 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191099.P10026522293906257662

/-! ## A191099.P1795578052797337364

`Δ[Δ[Δ[A011965(n)]]]`
-/

namespace A191099.P1795578052797337364
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191099.P1795578052797337364

/-! ## A191099.P16772248908022471638

`A106436(A055999(n+3))`
-/

namespace A191099.P16772248908022471638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (A055999 (n + 3)).toNat

end

end A191099.P16772248908022471638

/-! ## A191099.P17554260086115193843

`Δ[Δ[A011972(A055998(n))]]`
-/

namespace A191099.P17554260086115193843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (A055998 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191099.P17554260086115193843

/-! ## A191099.P9456666075538069499

`A011967(n+1)-A011967(n)`
-/

namespace A191099.P9456666075538069499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011967 (n + 1) - A011967 n

end

end A191099.P9456666075538069499

