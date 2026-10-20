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
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
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
# A164100: Number of planar graphs with n nodes and chromatic number 3.

The programs for A164100, there is no canonical definition to state claims against.
-/

/-! ## A164100.P11350211740044882706

`A001950(A143889(n))-A343411(2*n+3)`
-/

namespace A164100.P11350211740044882706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A143889 n).toNat - A343411 (2 * n + 3)

end

end A164100.P11350211740044882706

/-!
# A164101: Number of planar graphs with n nodes and chromatic number 4.

The programs for A164101, there is no canonical definition to state claims against.
-/

/-! ## A164101.P16001518561224578521

`A004277(Δ[A332885(comp[2*(n+1)])])`
-/

namespace A164101.P16001518561224578521
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332885 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (f1 (n + 1) - f1 n).toNat

end

end A164101.P16001518561224578521

/-!
# A164110: a(n) = 12*a(n-1) - 34*a(n-2) for n > 1; a(0) = 5, a(1) = 36.

The programs for A164110, the canonical program `A164110.P14648106665769557463` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164110 has offset 0).

The definition of A164110 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*a(n-1)-34*a(n-2)` (program `A164110.P14648106665769557463`, by `A164110.P14648106665769557463.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164110.P14648106665769557463

`12*a(n-1)-34*a(n-2)` with `a(0)=5, a(1)=36`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A164110

/-- `12*a(n-1)-34*a(n-2)` -/
def P14648106665769557463.Spec : Prop :=
  ∀ n, P14648106665769557463.a n = A164110 n

theorem P14648106665769557463.correct : P14648106665769557463.Spec := by
  intro n
  simp only [A164110]

end A164110

/-! ## A164110.P2753073171321110835

`((5+3*sqrt(2))*(6+sqrt(2))^n+(5-3*sqrt(2))*(6-sqrt(2))^n)/2`
-/

namespace A164110.P2753073171321110835
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + 3 * Real.sqrt (2 : ℝ)) * (6 + Real.sqrt (2 : ℝ)) ^ n + (5 - 3 * Real.sqrt (2 : ℝ)) * (6 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A164110.P2753073171321110835

namespace A164110

/-- `((5+3*sqrt(2))*(6+sqrt(2))^n+(5-3*sqrt(2))*(6-sqrt(2))^n)/2` -/
def P2753073171321110835.Spec : Prop :=
  ∀ n, P2753073171321110835.a n = (A164110 n : ℝ)

end A164110

/-! ## A164110.P10871814168424683325

`Δ[A163458(n)]-A163458(n)`
-/

namespace A164110.P10871814168424683325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A163458 n

end

end A164110.P10871814168424683325

namespace A164110

/-- `Δ[A163458(n)]-A163458(n)` -/
def P10871814168424683325.Spec : Prop :=
  ∀ n, P10871814168424683325.a n = A164110 n

end A164110

/-! ## A164110.P3961785640938863348

`A164021(n)+2*A163458(n)`
-/

namespace A164110.P3961785640938863348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164021 n + 2 * A163458 n

end

end A164110.P3961785640938863348

namespace A164110

/-- `A164021(n)+2*A163458(n)` -/
def P3961785640938863348.Spec : Prop :=
  ∀ n, P3961785640938863348.a n = A164110 n

end A164110

/-! ## A164110.P11179782278060022566

`A081183(n)+5*A163458(n)`
-/

namespace A164110.P11179782278060022566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081183 n + 5 * A163458 n

end

end A164110.P11179782278060022566

namespace A164110

/-- `A081183(n)+5*A163458(n)` -/
def P11179782278060022566.Spec : Prop :=
  ∀ n, P11179782278060022566.a n = A164110 n

end A164110

/-! ## A164110.P253697792528650285

`A163458(n+1)-2*A163458(n)`
-/

namespace A164110.P253697792528650285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163458 (n + 1) - 2 * A163458 n

end

end A164110.P253697792528650285

namespace A164110

/-- `A163458(n+1)-2*A163458(n)` -/
def P253697792528650285.Spec : Prop :=
  ∀ n, P253697792528650285.a n = A164110 n

end A164110

/-!
# A164111: Expansion of (1-x)/(1+4*x^2).

The programs for A164111, the canonical program `A164111.P17696812543228935689` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164111 has offset 0).

The definition of A164111 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+4x^2))` (program `A164111.P17696812543228935689`, by `A164111.P17696812543228935689.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164111.P17696812543228935689

`ogf((1-x)/(1+4x^2))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A164111

/-- `ogf((1-x)/(1+4x^2))` -/
def P17696812543228935689.Spec : Prop :=
  ∀ n, P17696812543228935689.a n = A164111 n

theorem P17696812543228935689.correct : P17696812543228935689.Spec := by
  intro n
  simp only [A164111]

end A164111

/-! ## A164111.P16233706230878475727

`A087960(n)*A213173(n)`
-/

namespace A164111.P16233706230878475727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A213173 n

end

end A164111.P16233706230878475727

namespace A164111

/-- `A087960(n)*A213173(n)` -/
def P16233706230878475727.Spec : Prop :=
  ∀ n, P16233706230878475727.a n = A164111 n

end A164111

/-! ## A164111.P571031885980086754

`A087960(n)*2^A052928(n)`
-/

namespace A164111.P571031885980086754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087960 n : ℚ) * (2 : ℚ) ^ (A052928 n : ℤ)

end

end A164111.P571031885980086754

namespace A164111

/-- `A087960(n)*2^A052928(n)` -/
def P571031885980086754.Spec : Prop :=
  ∀ n, P571031885980086754.a n = (A164111 n : ℚ)

end A164111

/-! ## A164111.P5434452957978925001

`Δ[-(4*a(n-2))]` with `a(0)=0, a(1)=1`
-/

namespace A164111.P5434452957978925001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  -(4 * f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164111.P5434452957978925001

namespace A164111

/-- `Δ[-(4*a(n-2))]` -/
def P5434452957978925001.Spec : Prop :=
  ∀ n, P5434452957978925001.a n = A164111 n

end A164111

/-! ## A164111.P1674750189968921493

`Δ[4*(5-a(n-2))]` with `a(0)=4, a(1)=5`
-/

namespace A164111.P1674750189968921493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 5] fun n f1 =>
  4 * (5 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164111.P1674750189968921493

namespace A164111

/-- `Δ[4*(5-a(n-2))]` -/
def P1674750189968921493.Spec : Prop :=
  ∀ n, P1674750189968921493.a n = A164111 n

end A164111

/-! ## A164111.P12968797450744478044

`∏[and(3, a(n-1))!-2]` with `a(0)=1`
-/

namespace A164111.P12968797450744478044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (Nat.factorial (Int.land 3 (f1 (n - 1))).toNat : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A164111.P12968797450744478044

namespace A164111

/-- `∏[and(3, a(n-1))!-2]` -/
def P12968797450744478044.Spec : Prop :=
  ∀ n, P12968797450744478044.a n = A164111 n

end A164111

/-! ## A164111.P13812260766993055732

`∏[3%(n+2)-a(n-1)]` with `a(0)=1`
-/

namespace A164111.P13812260766993055732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((3 % (n + 2) : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A164111.P13812260766993055732

namespace A164111

/-- `∏[3%(n+2)-a(n-1)]` -/
def P13812260766993055732.Spec : Prop :=
  ∀ n, P13812260766993055732.a n = A164111 n

end A164111

/-! ## A164111.P4326222937986117431

`4-4*(a(n-2)+1)` with `a(0)=1, a(1)=-1`
-/

namespace A164111.P4326222937986117431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  4 - 4 * (a (n - 2) + 1)

end

end A164111.P4326222937986117431

namespace A164111

/-- `4-4*(a(n-2)+1)` -/
def P4326222937986117431.Spec : Prop :=
  ∀ n, P4326222937986117431.a n = A164111 n

end A164111

/-! ## A164111.P14729689329021588614

`4*(1-a(n-2))-4` with `a(0)=1, a(1)=-1`
-/

namespace A164111.P14729689329021588614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  4 * (1 - a (n - 2)) - 4

end

end A164111.P14729689329021588614

namespace A164111

/-- `4*(1-a(n-2))-4` -/
def P14729689329021588614.Spec : Prop :=
  ∀ n, P14729689329021588614.a n = A164111 n

end A164111

/-! ## A164111.P12866048726389884454

`a(n-2)/(3/4-1)` with `a(0)=1, a(1)=-1`
-/

namespace A164111.P12866048726389884454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, -1] fun n a =>
  a (n - 2) / ((3 : ℚ) / 4 - 1)

end

end A164111.P12866048726389884454

namespace A164111

/-- `a(n-2)/(3/4-1)` -/
def P12866048726389884454.Spec : Prop :=
  ∀ n, P12866048726389884454.a n = (A164111 n : ℚ)

end A164111

/-! ## A164111.P659714989630072585

`∏[A040011(n)-2]`
-/

namespace A164111.P659714989630072585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040011 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A164111.P659714989630072585

namespace A164111

/-- `∏[A040011(n)-2]` -/
def P659714989630072585.Spec : Prop :=
  ∀ n, P659714989630072585.a n = A164111 n

end A164111

/-! ## A164111.P3837556785709784436

`∏[A040035(n)/2-2]`
-/

namespace A164111.P3837556785709784436
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040035 n : ℚ) / 2 - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A164111.P3837556785709784436

namespace A164111

/-- `∏[A040035(n)/2-2]` -/
def P3837556785709784436.Spec : Prop :=
  ∀ n, P3837556785709784436.a n = (A164111 n : ℚ)

end A164111

/-! ## A164111.P557556196219424934

`2^(n-1)*A228826(n)`
-/

namespace A164111.P557556196219424934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A228826 n : ℚ)

end

end A164111.P557556196219424934

namespace A164111

/-- `2^(n-1)*A228826(n)` -/
def P557556196219424934.Spec : Prop :=
  ∀ n, P557556196219424934.a n = (A164111 n : ℚ)

end A164111

/-! ## A164111.P13247002126083068521

`2^floor(n/2)*∏[A280193(n)]`
-/

namespace A164111.P13247002126083068521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A164111.P13247002126083068521

namespace A164111

/-- `2^floor(n/2)*∏[A280193(n)]` -/
def P13247002126083068521.Spec : Prop :=
  ∀ n, P13247002126083068521.a n = (A164111 n : ℚ)

end A164111

/-! ## A164111.P17638949962150411835

`A009116(A042948(n))`
-/

namespace A164111.P17638949962150411835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 (A042948 n).toNat

end

end A164111.P17638949962150411835

namespace A164111

/-- `A009116(A042948(n))` -/
def P17638949962150411835.Spec : Prop :=
  ∀ n, P17638949962150411835.a n = A164111 n

end A164111

/-! ## A164111.P1131460076779257163

`A016116(n)²*A087960(n)`
-/

namespace A164111.P1131460076779257163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n ^ 2 * A087960 n

end

end A164111.P1131460076779257163

namespace A164111

/-- `A016116(n)²*A087960(n)` -/
def P1131460076779257163.Spec : Prop :=
  ∀ n, P1131460076779257163.a n = A164111 n

end A164111

/-! ## A164111.P6881853400756993683

`∏[A280193(n)]*A016116(n)`
-/

namespace A164111.P6881853400756993683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A016116 n

end

end A164111.P6881853400756993683

namespace A164111

/-- `∏[A280193(n)]*A016116(n)` -/
def P6881853400756993683.Spec : Prop :=
  ∀ n, P6881853400756993683.a n = A164111 n

end A164111

/-! ## A164111.P12041678656450801504

`A016116(n)*A117575(n+1)`
-/

namespace A164111.P12041678656450801504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A117575 (n + 1)

end

end A164111.P12041678656450801504

namespace A164111

/-- `A016116(n)*A117575(n+1)` -/
def P12041678656450801504.Spec : Prop :=
  ∀ n, P12041678656450801504.a n = A164111 n

end A164111

/-! ## A164111.P16114471660862226570

`A009116(2*n-A000035(n))`
-/

namespace A164111.P16114471660862226570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 ((2 * n : ℤ) - A000035 n).toNat

end

end A164111.P16114471660862226570

namespace A164111

/-- `A009116(2*n-A000035(n))` -/
def P16114471660862226570.Spec : Prop :=
  ∀ n, P16114471660862226570.a n = A164111 n

end A164111

/-!
# A164114: Numbers k such that Chowla(k) + phi(k) is prime.

The programs for A164114, there is no canonical definition to state claims against.
-/

/-! ## A164114.P15328690775851425792

`A001223(3*(n+1))+∑[A001223(A060656(n))]`
-/

namespace A164114.P15328690775851425792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A060656 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (3 * (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164114.P15328690775851425792

/-!
# A164116: Expansion of (1 - x) * (1 - x^4) / (1 - x^5) in powers of x.

The programs for A164116, the canonical program `A164116.P6266006637120309631` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164116 has offset 0).

The definition of A164116 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-x^4+x^5)/(1-x^5))` (program `A164116.P6266006637120309631`, by `A164116.P6266006637120309631.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164116.P6266006637120309631

`ogf((1-x-x^4+x^5)/(1-x^5))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A164116

/-- `ogf((1-x-x^4+x^5)/(1-x^5))` -/
def P6266006637120309631.Spec : Prop :=
  ∀ n, P6266006637120309631.a n = A164116 n

theorem P6266006637120309631.correct : P6266006637120309631.Spec := by
  intro n
  simp only [A164116]

end A164116

/-!
# A164117: Expansion of (1 - x) * (1 - x^10) / ((1 - x^2) * (1 - x^4) * (1 - x^5)) in powers of x.

The programs for A164117, the canonical program `A164117.P13940159785774736757` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164117 has offset 0).

The definition of A164117 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-x^10+x^11)/(1-x^2-x^4-x^5+x^6+x^7+x^9-x^11))` (program `A164117.P13940159785774736757`, by `A164117.P13940159785774736757.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164117.P13940159785774736757

`ogf((1-x-x^10+x^11)/(1-x^2-x^4-x^5+x^6+x^7+x^9-x^11))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A164117

/-- `ogf((1-x-x^10+x^11)/(1-x^2-x^4-x^5+x^6+x^7+x^9-x^11))` -/
def P13940159785774736757.Spec : Prop :=
  ∀ n, P13940159785774736757.a n = A164117 n

theorem P13940159785774736757.correct : P13940159785774736757.Spec := by
  intro n
  simp only [A164117]

end A164117

/-!
# A164118: Expansion of (1 - x^2) * (1 - x^4) * (1 - x^5) / ((1 - x) * (1 - x^10)) in powers of x.

The programs for A164118, the canonical program `A164118.P5850917572799906989` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164118 has offset 0).

The definition of A164118 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2-x^4-x^5+x^6+x^7+x^9-x^11)/(1-x-x^10+x^11))` (program `A164118.P5850917572799906989`, by `A164118.P5850917572799906989.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164118.P5850917572799906989

`ogf((1-x^2-x^4-x^5+x^6+x^7+x^9-x^11)/(1-x-x^10+x^11))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A164118

/-- `ogf((1-x^2-x^4-x^5+x^6+x^7+x^9-x^11)/(1-x-x^10+x^11))` -/
def P5850917572799906989.Spec : Prop :=
  ∀ n, P5850917572799906989.a n = A164118 n

theorem P5850917572799906989.correct : P5850917572799906989.Spec := by
  intro n
  simp only [A164118]

end A164118

/-!
# A164119: Numbers k that are the smallest number that produces the ordered pair (d(k), d(k+1)), where d(k) is the number of divisors of k.

The programs for A164119, there is no canonical definition to state claims against.
-/

/-! ## A164119.P7866964145322143161

`lt[A348326(A008486(n)), A069771(n)]`
-/

namespace A164119.P7866964145322143161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348326 (A008486 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069771 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A164119.P7866964145322143161

/-! ## A164119.P3486912273801807691

`lt[A002093(n+1), A278483(A179879(n+1))]`
-/

namespace A164119.P3486912273801807691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278483 (A179879 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A164119.P3486912273801807691

/-! ## A164119.P915296541212762203

`lt[A331844(3*n), A006530(A321901(2*n+1))]`
-/

namespace A164119.P915296541212762203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331844 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A321901 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A164119.P915296541212762203

/-! ## A164119.P14833226298110891558

`lt[A048761(A348326(3*n)), n]`
-/

namespace A164119.P14833226298110891558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048761 (A348326 (3 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A164119.P14833226298110891558

/-! ## A164119.P14608648524783176951

`lt[A331844(3*n), A007953(∑[(n+1)²])]`
-/

namespace A164119.P14608648524783176951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331844 (3 * n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A164119.P14608648524783176951

/-!
# A164120: Partial sums of A162396.

The programs for A164120, the canonical program `A164120.P16384415261488799401` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164120 has offset 1).

The definition of A164120 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164120.P16384415261488799401

`2*a(n-2)+7` with `a(0)=5, a(1)=7`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A164120

/-- `2*a(n-2)+7` -/
def P16384415261488799401.Spec : Prop :=
  ∀ n, (P16384415261488799401.a n : ℤ) = A164120 (n + 1)

theorem P16384415261488799401.correct : P16384415261488799401.Spec := by
  intro n
  simp only [A164120, Nat.add_sub_cancel]

end A164120

/-! ## A164120.P16530598395375422181

`(19-5*(-1)^(n+1))*2^((2*(n+1)-1+(-1)^(n+1))/4)/2-7`
-/

namespace A164120.P16530598395375422181
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (19 - 5 * (-1) ^ (n + 1) : ℝ) * (2 : ℝ) ^ (((2 * (n + 1) : ℤ) - 1 + (-1) ^ (n + 1) : ℚ) / 4 : ℝ) / 2 - 7

end

end A164120.P16530598395375422181

namespace A164120

/-- `(19-5*(-1)^(n+1))*2^((2*(n+1)-1+(-1)^(n+1))/4)/2-7` -/
def P16530598395375422181.Spec : Prop :=
  ∀ n, P16530598395375422181.a n = (A164120 (n + 1) : ℝ)

end A164120

/-! ## A164120.P4389483758259508237

`∑[ogf((5+2x)/(1-2x^2))]`
-/

namespace A164120.P4389483758259508237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 2] [1, 0, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164120.P4389483758259508237

namespace A164120

/-- `∑[ogf((5+2x)/(1-2x^2))]` -/
def P4389483758259508237.Spec : Prop :=
  ∀ n, P4389483758259508237.a n = A164120 (n + 1)

end A164120

/-! ## A164120.P138593908912920068

`ogf((5+2x)/(1-x-2x^2+2x^3))`
-/

namespace A164120.P138593908912920068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 2] [1, -1, -2, 2] n

end

end A164120.P138593908912920068

namespace A164120

/-- `ogf((5+2x)/(1-x-2x^2+2x^3))` -/
def P138593908912920068.Spec : Prop :=
  ∀ n, P138593908912920068.a n = A164120 (n + 1)

end A164120

/-! ## A164120.P5429833035865182278

`∑[2*a(n-2)]` with `a(0)=5, a(1)=2`
-/

namespace A164120.P5429833035865182278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 2] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164120.P5429833035865182278

namespace A164120

/-- `∑[2*a(n-2)]` -/
def P5429833035865182278.Spec : Prop :=
  ∀ n, (P5429833035865182278.a n : ℤ) = A164120 (n + 1)

end A164120

/-! ## A164120.P9568834987989790457

`∑[∏[2/a(n-1)]]` with `a(0)=5`
-/

namespace A164120.P9568834987989790457
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [5] fun n f2 =>
  2 / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164120.P9568834987989790457

namespace A164120

/-- `∑[∏[2/a(n-1)]]` -/
def P9568834987989790457.Spec : Prop :=
  ∀ n, P9568834987989790457.a n = (A164120 (n + 1) : ℚ)

end A164120

/-! ## A164120.P17039477305948125402

`∑[a(n-2)/(1-1/2)]` with `a(0)=5, a(1)=2`
-/

namespace A164120.P17039477305948125402
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [5, 2] fun n f1 =>
  f1 (n - 2) / (1 - (1 : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164120.P17039477305948125402

namespace A164120

/-- `∑[a(n-2)/(1-1/2)]` -/
def P17039477305948125402.Spec : Prop :=
  ∀ n, P17039477305948125402.a n = (A164120 (n + 1) : ℚ)

end A164120

/-! ## A164120.P15074376262128575124

`∑[A162396(n+1)]`
-/

namespace A164120.P15074376262128575124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164120.P15074376262128575124

namespace A164120

/-- `∑[A162396(n+1)]` -/
def P15074376262128575124.Spec : Prop :=
  ∀ n, P15074376262128575124.a n = A164120 (n + 1)

end A164120

/-! ## A164120.P13375452533382580915

`∑[A112032(n)+A016116(n)]`
-/

namespace A164120.P13375452533382580915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112032 n + A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164120.P13375452533382580915

namespace A164120

/-- `∑[A112032(n)+A016116(n)]` -/
def P13375452533382580915.Spec : Prop :=
  ∀ n, P13375452533382580915.a n = A164120 (n + 1)

end A164120

/-! ## A164120.P7471081787204281566

`∑[lcm(A040024(n), A060546(n))]`
-/

namespace A164120.P7471081787204281566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040024 n) (A060546 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164120.P7471081787204281566

namespace A164120

/-- `∑[lcm(A040024(n), A060546(n))]` -/
def P7471081787204281566.Spec : Prop :=
  ∀ n, (P7471081787204281566.a n : ℤ) = A164120 (n + 1)

end A164120

/-! ## A164120.P1389759940730457350

`∑[A016116(n+1)*A176260(n)]`
-/

namespace A164120.P1389759940730457350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1) * A176260 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164120.P1389759940730457350

namespace A164120

/-- `∑[A016116(n+1)*A176260(n)]` -/
def P1389759940730457350.Spec : Prop :=
  ∀ n, P1389759940730457350.a n = A164120 (n + 1)

end A164120

/-! ## A164120.P9074638102637824406

`∑[(A177499(2*(n+1))+1)*A016116(n)]`
-/

namespace A164120.P9074638102637824406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A177499 (2 * (n + 1)) + 1) * A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164120.P9074638102637824406

namespace A164120

/-- `∑[(A177499(2*(n+1))+1)*A016116(n)]` -/
def P9074638102637824406.Spec : Prop :=
  ∀ n, P9074638102637824406.a n = A164120 (n + 1)

end A164120

/-!
# A164121: a(1)=1. a(n) = the smallest odd integer > a(n-1) such that a(n)*2 - a(n-1) is prime.

The programs for A164121, there is no canonical definition to state claims against.
-/

/-! ## A164121.P4640439859281435225

`record[A171176(2*(n+2))-A137849(2*n+3)]`
-/

namespace A164121.P4640439859281435225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171176 (2 * (n + 2)) - A137849 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164121.P4640439859281435225

/-! ## A164121.P5048333710931593791

`lt[A028920(A156759(n+1)), A028920(n)]`
-/

namespace A164121.P5048333710931593791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (A156759 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A164121.P5048333710931593791

/-! ## A164121.P1145247604120332343

`lt[A317791(A304716(n+1)), A055396(n+2)]`
-/

namespace A164121.P1145247604120332343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317791 (A304716 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A164121.P1145247604120332343

/-! ## A164121.P14567916004649498157

`lt[A220122(A205217(3*n+1)), A282849(n+1)]`
-/

namespace A164121.P14567916004649498157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (A205217 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282849 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A164121.P14567916004649498157

/-! ## A164121.P13955979357708449865

`or(1, eq[A010892(n), A010894(n)])`
-/

namespace A164121.P13955979357708449865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 (n + 21)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A164121.P13955979357708449865

/-!
# A164122: a(n) = A164121(n+1)*2 - A164121(n).

The programs for A164122, there is no canonical definition to state claims against.
-/

/-! ## A164122.P12706378577947098840

`A164121(n+2)*2-A164121(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A164122.P12706378577947098840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164121 (n + 2) * 2 - A164121 (n + 1)

end

end A164122.P12706378577947098840

/-! ## A164122.P4570625786761482881

`A164121(n+2)+Δ[A164121(n+1)]`
-/

namespace A164122.P4570625786761482881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164121 (n + 2) + (f1 (n + 1) - f1 n)

end

end A164122.P4570625786761482881

/-! ## A164122.P15657306211599108203

`A006530(lcm(2, A164121(n+2))-A164121(n+1))`
-/

namespace A164122.P15657306211599108203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((Int.lcm 2 (A164121 (n + 2)) : ℤ) - A164121 (n + 1)).toNat

end

end A164122.P15657306211599108203

/-! ## A164122.P1841984975993480244

`A218123(A320894(n+2))`
-/

namespace A164122.P1841984975993480244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218123 (A320894 (n + 2)).toNat

end

end A164122.P1841984975993480244

/-! ## A164122.P9949767514405314878

`A307701(A127046(n+2))`
-/

namespace A164122.P9949767514405314878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307701 (A127046 (n + 2)).toNat

end

end A164122.P9949767514405314878

/-!
# A164123: Partial sums of A162436.

The programs for A164123, the canonical program `A164123.P7954600482302528546` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164123 has offset 1).

The definition of A164123 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164123.P7954600482302528546

`3*a(n-2)+4` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A164123

/-- `3*a(n-2)+4` -/
def P7954600482302528546.Spec : Prop :=
  ∀ n, (P7954600482302528546.a n : ℤ) = A164123 (n + 1)

theorem P7954600482302528546.correct : P7954600482302528546.Spec := by
  intro n
  simp only [A164123, Nat.add_sub_cancel]

end A164123

/-! ## A164123.P6236959980797875868

`A038754(n+2)-2`
-/

namespace A164123.P6236959980797875868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (n + 2) - 2

end

end A164123.P6236959980797875868

namespace A164123

/-- `A038754(n+2)-2` -/
def P6236959980797875868.Spec : Prop :=
  ∀ n, P6236959980797875868.a n = A164123 (n + 1)

end A164123

/-! ## A164123.P15206072220921850862

`(5-(-1)^(n+1))*3^(1/4*(2*(n+1)-1+(-1)^(n+1)))/2-2`
-/

namespace A164123.P15206072220921850862
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 - (-1) ^ (n + 1) : ℝ) * (3 : ℝ) ^ ((1 : ℚ) / 4 * ((2 * (n + 1) : ℤ) - 1 + (-1) ^ (n + 1) : ℚ) : ℝ) / 2 - 2

end

end A164123.P15206072220921850862

namespace A164123

/-- `(5-(-1)^(n+1))*3^(1/4*(2*(n+1)-1+(-1)^(n+1)))/2-2` -/
def P15206072220921850862.Spec : Prop :=
  ∀ n, P15206072220921850862.a n = (A164123 (n + 1) : ℝ)

end A164123

/-! ## A164123.P16874369004380612108

`ogf((1+3x)/(1-x-3x^2+3x^3))`
-/

namespace A164123.P16874369004380612108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -1, -3, 3] n

end

end A164123.P16874369004380612108

namespace A164123

/-- `ogf((1+3x)/(1-x-3x^2+3x^3))` -/
def P16874369004380612108.Spec : Prop :=
  ∀ n, P16874369004380612108.a n = A164123 (n + 1)

end A164123

/-! ## A164123.P9699896986651782846

`abs(∑[3*a(n-2)])` with `a(0)=1, a(1)=3`
-/

namespace A164123.P9699896986651782846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  3 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164123.P9699896986651782846

namespace A164123

/-- `abs(∑[3*a(n-2)])` -/
def P9699896986651782846.Spec : Prop :=
  ∀ n, (P9699896986651782846.a n : ℤ) = A164123 (n + 1)

end A164123

/-! ## A164123.P17876346995276323501

`floor(∑[3*a(n-2)])` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A164123.P17876346995276323501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  3 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164123.P17876346995276323501

namespace A164123

/-- `floor(∑[3*a(n-2)])` -/
def P17876346995276323501.Spec : Prop :=
  ∀ n, (P17876346995276323501.a n : ℤ) = A164123 (n + 1)

end A164123

/-! ## A164123.P6968927142315552548

`ceil(∑[3*a(n-2)])` with `a(0)=1, a(1)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A164123.P6968927142315552548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  3 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164123.P6968927142315552548

namespace A164123

/-- `ceil(∑[3*a(n-2)])` -/
def P6968927142315552548.Spec : Prop :=
  ∀ n, (P6968927142315552548.a n : ℤ) = A164123 (n + 1)

end A164123

/-! ## A164123.P16943663938318996226

`round(∑[3*a(n-2)])` with `a(0)=1, a(1)=3`

`round` is left out, it is the identity on integers.
-/

namespace A164123.P16943663938318996226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  3 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164123.P16943663938318996226

namespace A164123

/-- `round(∑[3*a(n-2)])` -/
def P16943663938318996226.Spec : Prop :=
  ∀ n, (P16943663938318996226.a n : ℤ) = A164123 (n + 1)

end A164123

/-! ## A164123.P15484100551719175561

`floor(∑[3^∑[1-a(n-1)]])` with `a(0)=0`
-/

namespace A164123.P15484100551719175561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A164123.P15484100551719175561

namespace A164123

/-- `floor(∑[3^∑[1-a(n-1)]])` -/
def P15484100551719175561.Spec : Prop :=
  ∀ n, P15484100551719175561.a n = A164123 (n + 1)

end A164123

/-!
# A164124: First differences of A016041.

The programs for A164124, there is no canonical definition to state claims against.
-/

/-! ## A164124.P2308382299793705958

`Δ[A016041(A028310(n))]`
-/

namespace A164124.P2308382299793705958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016041 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164124.P2308382299793705958

/-! ## A164124.P17623993251562555549

`Δ[A016041(A065033(2*n))]`
-/

namespace A164124.P17623993251562555549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016041 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164124.P17623993251562555549

/-! ## A164124.P7510044793029257936

`Δ[A016041(A000007(n)+n)]`
-/

namespace A164124.P7510044793029257936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016041 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164124.P7510044793029257936

/-! ## A164124.P16780438270337786627

`Δ[A016041(A004277(n)-n)]`
-/

namespace A164124.P16780438270337786627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016041 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164124.P16780438270337786627

/-! ## A164124.P11845920782655956576

`Δ[A016041(gcd(n, A008486(n)))]`
-/

namespace A164124.P11845920782655956576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016041 (Int.gcd (n : ℤ) (A008486 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164124.P11845920782655956576

/-! ## A164124.P13014055095470448175

`Δ[A016041(A004273(n)+1-n)]`
-/

namespace A164124.P13014055095470448175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016041 (A004273 n + (1 - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164124.P13014055095470448175

/-! ## A164124.P6482066579795347633

`Δ[A016041(A008486(n)-2*n)]`
-/

namespace A164124.P6482066579795347633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016041 (A008486 n - (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164124.P6482066579795347633

/-! ## A164124.P17671147697320396715

`Δ[A016041(A008486(n)-n-n)]`
-/

namespace A164124.P17671147697320396715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016041 (A008486 n - (n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164124.P17671147697320396715

/-! ## A164124.P316781929422605752

`Δ[A016041(A004525(A004277(n)))]`
-/

namespace A164124.P316781929422605752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016041 (A004525 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164124.P316781929422605752

/-! ## A164124.P10307621511898409248

`A016041(n+1)-A016041(A028310(n))`
-/

namespace A164124.P10307621511898409248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016041 (n + 1) - A016041 (A028310 n).toNat

end

end A164124.P10307621511898409248

/-! ## A164124.P544982936319926988

`A016041(n+1)-A016041(A065033(2*n))`
-/

namespace A164124.P544982936319926988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016041 (n + 1) - A016041 (A065033 (2 * n)).toNat

end

end A164124.P544982936319926988

/-! ## A164124.P17450660783684906507

`A016041(n+1)-A016041(A000007(n)+n)`
-/

namespace A164124.P17450660783684906507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016041 (n + 1) - A016041 (A000007 n + (n : ℤ)).toNat

end

end A164124.P17450660783684906507

/-! ## A164124.P4104217050227066618

`A016041(n+1)-A016041(A004277(n)-n)`
-/

namespace A164124.P4104217050227066618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016041 (n + 1) - A016041 (A004277 n - (n : ℤ)).toNat

end

end A164124.P4104217050227066618

/-! ## A164124.P10085921211640427537

`Δ[A016041(A007318(A000124(n)))]`
-/

namespace A164124.P10085921211640427537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016041 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164124.P10085921211640427537

/-! ## A164124.P12022847802437380039

`A016041(n+1)-A016041(A137734(n²))`
-/

namespace A164124.P12022847802437380039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016041 (n + 1) - A016041 (A137734 (n ^ 2)).toNat

end

end A164124.P12022847802437380039

/-! ## A164124.P3182286136072156395

`A016041(n+1)-A016041(A137735(n²))`
-/

namespace A164124.P3182286136072156395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016041 (n + 1) - A016041 (A137735 (n ^ 2)).toNat

end

end A164124.P3182286136072156395

/-! ## A164124.P11732857977138947784

`Δ[A016041(A137734(n²))]`
-/

namespace A164124.P11732857977138947784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016041 (A137734 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164124.P11732857977138947784

/-! ## A164124.P99032246281199698

`Δ[A016041(A137735(n²))]`
-/

namespace A164124.P99032246281199698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016041 (A137735 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164124.P99032246281199698

/-!
# A164125: First differences of A029971.

The programs for A164125, there is no canonical definition to state claims against.
-/

/-! ## A164125.P593858989345031227

`Δ[A029971(n+1)]`
-/

namespace A164125.P593858989345031227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164125.P593858989345031227

/-! ## A164125.P17142281395379616364

`A029971(n+2)-A029971(n+1)`
-/

namespace A164125.P17142281395379616364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029971 (n + 2) - A029971 (n + 1)

end

end A164125.P17142281395379616364

/-! ## A164125.P11508972021816795267

`Δ[p?[A014190(n+1)]]`
-/

namespace A164125.P11508972021816795267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164125.P11508972021816795267

/-! ## A164125.P13343032842338050131

`Δ[record[A020639(A014190(n+3))]]`
-/

namespace A164125.P13343032842338050131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A014190 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164125.P13343032842338050131

/-!
# A164126: First differences of A006995.

The programs for A164126, the canonical program `A164126.P5222690194869759477` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164126 has offset 1).

The definition of A164126 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006995, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A164126.P5222690194869759477

`A006995(n+2)-A006995(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A164126

/-- `A006995(n+2)-A006995(n+1)` -/
def P5222690194869759477.Spec : Prop :=
  ∀ n, P5222690194869759477.a n = A164126 (n + 1)

theorem P5222690194869759477.correct : P5222690194869759477.Spec := by
  intro n
  simp only [A164126, Nat.add_sub_cancel]

end A164126

/-! ## A164126.P16541108482761901373

`Δ[A006995(n+1)]`
-/

namespace A164126.P16541108482761901373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164126.P16541108482761901373

namespace A164126

/-- `Δ[A006995(n+1)]` -/
def P16541108482761901373.Spec : Prop :=
  ∀ n, P16541108482761901373.a n = A164126 (n + 1)

theorem P16541108482761901373.correct : P16541108482761901373.Spec := by
  intro n
  simp only [A164126, Nat.add_sub_cancel, A164126.P16541108482761901373.f1, A164126.P16541108482761901373.a, A164126.P5222690194869759477.a, SequenceMachineLib.memo_apply]

end A164126

/-! ## A164126.P7605193131821600884

`abs(Δ[A006995(A008619(2*n))])`
-/

namespace A164126.P7605193131821600884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A164126.P7605193131821600884

namespace A164126

/-- `abs(Δ[A006995(A008619(2*n))])` -/
def P7605193131821600884.Spec : Prop :=
  ∀ n, P7605193131821600884.a n = A164126 (n + 1)

end A164126

/-! ## A164126.P8917533780446479160

`A044918(2*(n+1))-A044918(2*n+1)`
-/

namespace A164126.P8917533780446479160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044918 (2 * (n + 1)) - A044918 (2 * n + 1)

end

end A164126.P8917533780446479160

namespace A164126

/-- `A044918(2*(n+1))-A044918(2*n+1)` -/
def P8917533780446479160.Spec : Prop :=
  ∀ n, P8917533780446479160.a n = A164126 (n + 1)

end A164126

/-! ## A164126.P10611216705779448260

`Δ[record[A049776(n+1)]]`
-/

namespace A164126.P10611216705779448260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049776 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164126.P10611216705779448260

namespace A164126

/-- `Δ[record[A049776(n+1)]]` -/
def P10611216705779448260.Spec : Prop :=
  ∀ n, P10611216705779448260.a n = A164126 (n + 1)

end A164126

/-! ## A164126.P13630591202885088792

`Δ[sqrt(A192775(n+1))]`
-/

namespace A164126.P13630591202885088792
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A192775 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164126.P13630591202885088792

namespace A164126

/-- `Δ[sqrt(A192775(n+1))]` -/
def P13630591202885088792.Spec : Prop :=
  ∀ n, P13630591202885088792.a n = (A164126 (n + 1) : ℝ)

end A164126

/-! ## A164126.P5183063266435743066

`Δ[lt[A303534(n), 1]]`
-/

namespace A164126.P5183063266435743066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303534 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A164126.P5183063266435743066

namespace A164126

/-- `Δ[lt[A303534(n), 1]]` -/
def P5183063266435743066.Spec : Prop :=
  ∀ n, P5183063266435743066.a n = A164126 (n + 1)

end A164126

/-! ## A164126.P6610559091738601436

`Δ[lt[A175919(n), 1]]`
-/

namespace A164126.P6610559091738601436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A164126.P6610559091738601436

namespace A164126

/-- `Δ[lt[A175919(n), 1]]` -/
def P6610559091738601436.Spec : Prop :=
  ∀ n, P6610559091738601436.a n = A164126 (n + 1)

end A164126

/-! ## A164126.P11498275285577049994

`Δ[eq[n, A030101(n)]]`
-/

namespace A164126.P11498275285577049994
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A164126.P11498275285577049994

namespace A164126

/-- `Δ[eq[n, A030101(n)]]` -/
def P11498275285577049994.Spec : Prop :=
  ∀ n, P11498275285577049994.a n = A164126 (n + 1)

end A164126

/-! ## A164126.P10948604245722363628

`Δ[record[A030101(n)%A000079(A215467(n))]]`
-/

namespace A164126.P10948604245722363628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030101 n) (A000079 (A215467 n).toNat)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164126.P10948604245722363628

namespace A164126

/-- `Δ[record[A030101(n)%A000079(A215467(n))]]` -/
def P10948604245722363628.Spec : Prop :=
  ∀ n, P10948604245722363628.a n = A164126 (n + 1)

end A164126

/-! ## A164126.P13092764262798636594

`Δ[record[A330717(n)]]`
-/

namespace A164126.P13092764262798636594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330717 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164126.P13092764262798636594

namespace A164126

/-- `Δ[record[A330717(n)]]` -/
def P13092764262798636594.Spec : Prop :=
  ∀ n, P13092764262798636594.a n = A164126 (n + 1)

end A164126

/-! ## A164126.P6736046072933646682

`Δ[record[A331471(n)]]`
-/

namespace A164126.P6736046072933646682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331471 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164126.P6736046072933646682

namespace A164126

/-- `Δ[record[A331471(n)]]` -/
def P6736046072933646682.Spec : Prop :=
  ∀ n, P6736046072933646682.a n = A164126 (n + 1)

end A164126

/-! ## A164126.P6874032993687642716

`Δ[record[A331804(n)]]`
-/

namespace A164126.P6874032993687642716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164126.P6874032993687642716

namespace A164126

/-- `Δ[record[A331804(n)]]` -/
def P6874032993687642716.Spec : Prop :=
  ∀ n, P6874032993687642716.a n = A164126 (n + 1)

end A164126

/-! ## A164126.P669087569591039265

`Δ[record[gcd(n, A325401(2*n))]]`
-/

namespace A164126.P669087569591039265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A325401 (2 * n))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A164126.P669087569591039265

namespace A164126

/-- `Δ[record[gcd(n, A325401(2*n))]]` -/
def P669087569591039265.Spec : Prop :=
  ∀ n, P669087569591039265.a n = A164126 (n + 1)

end A164126

/-! ## A164126.P18161311108231868327

`Δ[eq[A334666(n), A334667(n)]]`
-/

namespace A164126.P18161311108231868327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334666 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334667 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A164126.P18161311108231868327

namespace A164126

/-- `Δ[eq[A334666(n), A334667(n)]]` -/
def P18161311108231868327.Spec : Prop :=
  ∀ n, P18161311108231868327.a n = A164126 (n + 1)

end A164126

/-! ## A164126.P4075672769671216821

`record[A330717(n+1)]-record[A330717(n)]`
-/

namespace A164126.P4075672769671216821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A164126.P4075672769671216821

namespace A164126

/-- `record[A330717(n+1)]-record[A330717(n)]` -/
def P4075672769671216821.Spec : Prop :=
  ∀ n, P4075672769671216821.a n = A164126 (n + 1)

end A164126

/-!
# A164129: Primes that are the sums of cubes of three consecutive primes.

The programs for A164129, there is no canonical definition to state claims against.
-/

/-! ## A164129.P10750477435633889165

`p?[A133530(n+1)]`
-/

namespace A164129.P10750477435633889165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164129.P10750477435633889165

/-!
# A164131: Numbers k such that k^2 == 2 (mod 31).

The programs for A164131, the canonical program `A164131.P5745600518702844297` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164131 has offset 1).

The definition of A164131 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164131.P5745600518702844297

`31*n-a(n-1)` with `a(0)=8`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A164131

/-- `31*n-a(n-1)` -/
def P5745600518702844297.Spec : Prop :=
  ∀ n, P5745600518702844297.a n = A164131 (n + 1)

theorem P5745600518702844297.correct : P5745600518702844297.Spec := by
  intro n
  simp only [A164131, Nat.add_sub_cancel]

end A164131

/-! ## A164131.P7306334833222586103

`(31+(-1)^n+62*n)/4`
-/

namespace A164131.P7306334833222586103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (31 + (-1) ^ n + (62 * n : ℤ) : ℚ) / 4

end

end A164131.P7306334833222586103

namespace A164131

/-- `(31+(-1)^n+62*n)/4` -/
def P7306334833222586103.Spec : Prop :=
  ∀ n, P7306334833222586103.a n = (A164131 (n + 1) : ℚ)

theorem P7306334833222586103.correct : P7306334833222586103.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A164131, Nat.add_sub_cancel, A164131.P7306334833222586103.a, A164131.P5745600518702844297.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A164131, Nat.add_sub_cancel, A164131.P7306334833222586103.a, A164131.P5745600518702844297.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A164131

/-! ## A164131.P9029812096957114606

`a(n-2)+31` with `a(0)=8, a(1)=23`
-/

namespace A164131.P9029812096957114606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8, 23] fun n a =>
  a (n - 2) + 31

end

end A164131.P9029812096957114606

namespace A164131

/-- `a(n-2)+31` -/
def P9029812096957114606.Spec : Prop :=
  ∀ n, (P9029812096957114606.a n : ℤ) = A164131 (n + 1)

end A164131

/-! ## A164131.P1261639909931947136

`∑[31-a(n-1)]` with `a(0)=8, a(1)=15`
-/

namespace A164131.P1261639909931947136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8, 15] fun n f1 =>
  31 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164131.P1261639909931947136

namespace A164131

/-- `∑[31-a(n-1)]` -/
def P1261639909931947136.Spec : Prop :=
  ∀ n, P1261639909931947136.a n = A164131 (n + 1)

end A164131

/-! ## A164131.P12672150722166248358

`∑[A040056(n)-n%2]`
-/

namespace A164131.P12672150722166248358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 n - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164131.P12672150722166248358

namespace A164131

/-- `∑[A040056(n)-n%2]` -/
def P12672150722166248358.Spec : Prop :=
  ∀ n, P12672150722166248358.a n = A164131 (n + 1)

end A164131

/-! ## A164131.P7908737147795539072

`round((5*A016945(n)+n)/2)`
-/

namespace A164131.P7908737147795539072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((5 * A016945 n + (n : ℤ) : ℚ) / 2)

end

end A164131.P7908737147795539072

namespace A164131

/-- `round((5*A016945(n)+n)/2)` -/
def P7908737147795539072.Spec : Prop :=
  ∀ n, P7908737147795539072.a n = A164131 (n + 1)

end A164131

/-! ## A164131.P13427958445808656444

`Δ[A081585(n)-floor((n/2)²)]`
-/

namespace A164131.P13427958445808656444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081585 n - ⌊((n : ℚ) / 2) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164131.P13427958445808656444

namespace A164131

/-- `Δ[A081585(n)-floor((n/2)²)]` -/
def P13427958445808656444.Spec : Prop :=
  ∀ n, P13427958445808656444.a n = A164131 (n + 1)

end A164131

/-! ## A164131.P15390986004404969403

`floor((31*record[1-A130724(n)+n]+1)/4)`
-/

namespace A164131.P15390986004404969403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A130724 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(31 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1 : ℚ) / 4⌋

end

end A164131.P15390986004404969403

namespace A164131

/-- `floor((31*record[1-A130724(n)+n]+1)/4)` -/
def P15390986004404969403.Spec : Prop :=
  ∀ n, P15390986004404969403.a n = A164131 (n + 1)

end A164131

/-! ## A164131.P15590657366469448252

`round((A214863(A016825(n))-n)/2)`
-/

namespace A164131.P15590657366469448252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A214863 (A016825 n).toNat - (n : ℤ) : ℚ) / 2)

end

end A164131.P15590657366469448252

namespace A164131

/-- `round((A214863(A016825(n))-n)/2)` -/
def P15590657366469448252.Spec : Prop :=
  ∀ n, P15590657366469448252.a n = A164131 (n + 1)

end A164131

/-! ## A164131.P9171391620085112280

`round((A016945(n)+A016873(A016873(n)))/2)`
-/

namespace A164131.P9171391620085112280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016945 n + A016873 (A016873 n).toNat : ℚ) / 2)

end

end A164131.P9171391620085112280

namespace A164131

/-- `round((A016945(n)+A016873(A016873(n)))/2)` -/
def P9171391620085112280.Spec : Prop :=
  ∀ n, P9171391620085112280.a n = A164131 (n + 1)

end A164131

/-! ## A164131.P10323831323167633769

`A160547(A164284(n+1))`
-/

namespace A164131.P10323831323167633769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160547 (A164284 (n + 1)).toNat

end

end A164131.P10323831323167633769

namespace A164131

/-- `A160547(A164284(n+1))` -/
def P10323831323167633769.Spec : Prop :=
  ∀ n, P10323831323167633769.a n = A164131 (n + 1)

end A164131

/-! ## A164131.P656032330146495850

`A314390(4*n+2)`
-/

namespace A164131.P656032330146495850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314390 (4 * n + 2)

end

end A164131.P656032330146495850

namespace A164131

/-- `A314390(4*n+2)` -/
def P656032330146495850.Spec : Prop :=
  ∀ n, P656032330146495850.a n = A164131 (n + 1)

end A164131

/-! ## A164131.P15475499296320048797

`eq[A070453(n), A155124(n)]`
-/

namespace A164131.P15475499296320048797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070453 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155124 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164131.P15475499296320048797

namespace A164131

/-- `eq[A070453(n), A155124(n)]` -/
def P15475499296320048797.Spec : Prop :=
  ∀ n, (P15475499296320048797.a n : ℤ) = A164131 (n + 1)

end A164131

/-! ## A164131.P16151355418939597550

`eq[A070574(n), A329505(n)]`
-/

namespace A164131.P16151355418939597550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329505 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164131.P16151355418939597550

namespace A164131

/-- `eq[A070574(n), A329505(n)]` -/
def P16151355418939597550.Spec : Prop :=
  ∀ n, (P16151355418939597550.a n : ℤ) = A164131 (n + 1)

end A164131

/-! ## A164131.P3858796394656116533

`eq[A070574(n), A329509(n)]`
-/

namespace A164131.P3858796394656116533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329509 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164131.P3858796394656116533

namespace A164131

/-- `eq[A070574(n), A329509(n)]` -/
def P3858796394656116533.Spec : Prop :=
  ∀ n, (P3858796394656116533.a n : ℤ) = A164131 (n + 1)

end A164131

/-! ## A164131.P1776761919645765245

`eq[A070453(n), A072751(n+1)]`
-/

namespace A164131.P1776761919645765245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070453 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072751 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164131.P1776761919645765245

namespace A164131

/-- `eq[A070453(n), A072751(n+1)]` -/
def P1776761919645765245.Spec : Prop :=
  ∀ n, (P1776761919645765245.a n : ℤ) = A164131 (n + 1)

end A164131

/-! ## A164131.P15988736723964908982

`eq[A070453(n), A078832(n+1)]`
-/

namespace A164131.P15988736723964908982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070453 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078832 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164131.P15988736723964908982

namespace A164131

/-- `eq[A070453(n), A078832(n+1)]` -/
def P15988736723964908982.Spec : Prop :=
  ∀ n, (P15988736723964908982.a n : ℤ) = A164131 (n + 1)

end A164131

/-! ## A164131.P11008614840573930910

`eq[A070453(n), A104435(n+1)]`
-/

namespace A164131.P11008614840573930910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070453 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104435 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164131.P11008614840573930910

namespace A164131

/-- `eq[A070453(n), A104435(n+1)]` -/
def P11008614840573930910.Spec : Prop :=
  ∀ n, (P11008614840573930910.a n : ℤ) = A164131 (n + 1)

end A164131

/-!
# A164132: Primes which are an eighth of the sum of two consecutive primes.

The programs for A164132, there is no canonical definition to state claims against.
-/

/-! ## A164132.P12182197105586748542

`A075279(n+1)/4`
-/

namespace A164132.P12182197105586748542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075279 (n + 1) : ℚ) / 4

end

end A164132.P12182197105586748542

/-! ## A164132.P15649188781074818832

`p?[A391355(n+1)]`
-/

namespace A164132.P15649188781074818832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164132.P15649188781074818832

/-! ## A164132.P2618088681686521027

`∩[A000040(n+1), A391355(n+1)]`
-/

namespace A164132.P2618088681686521027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164132.P2618088681686521027

/-! ## A164132.P364061715348409093

`∩[A004139(n+1), A391355(n+1)]`
-/

namespace A164132.P364061715348409093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164132.P364061715348409093

/-! ## A164132.P17728628341955959018

`∩[A045319(n+1), A391355(n+1)]`
-/

namespace A164132.P17728628341955959018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164132.P17728628341955959018

/-! ## A164132.P5237729683116087600

`∩[A051948(n+1), A391355(n+1)]`
-/

namespace A164132.P5237729683116087600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164132.P5237729683116087600

/-! ## A164132.P6301609201813732701

`∩[A053813(n+1), A391355(n+1)]`
-/

namespace A164132.P6301609201813732701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164132.P6301609201813732701

/-! ## A164132.P12071073848385254136

`∩[A065091(n+1), A391355(n+1)]`
-/

namespace A164132.P12071073848385254136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164132.P12071073848385254136

/-! ## A164132.P14891790120333164834

`∩[A065396(n+1), A391355(n+1)]`
-/

namespace A164132.P14891790120333164834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164132.P14891790120333164834

/-! ## A164132.P5763166680924492914

`∩[A106118(n+1), A391355(n+1)]`
-/

namespace A164132.P5763166680924492914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164132.P5763166680924492914

/-! ## A164132.P8997758546594131369

`∩[A116974(n+1), A391355(n+1)]`
-/

namespace A164132.P8997758546594131369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164132.P8997758546594131369

/-! ## A164132.P1934748101212536598

`filter[A391355(n+1), A010051(#)]`
-/

namespace A164132.P1934748101212536598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A164132.P1934748101212536598

/-! ## A164132.P13072705428830617778

`∑{p}[A075279(n+1), A000010(#)]`
-/

namespace A164132.P13072705428830617778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 p

end

end A164132.P13072705428830617778

/-! ## A164132.P7284829661522618207

`filter[A391355(n+1), A323153(#)]`
-/

namespace A164132.P7284829661522618207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A164132.P7284829661522618207

/-! ## A164132.P17775195367760066970

`A000265(A075279(n+1))`
-/

namespace A164132.P17775195367760066970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A075279 (n + 1)).toNat

end

end A164132.P17775195367760066970

/-! ## A164132.P16697589907586975335

`A006530(A075279(n+1))%A031932(n+1)`
-/

namespace A164132.P16697589907586975335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A075279 (n + 1)).toNat) (A031932 (n + 1))

end

end A164132.P16697589907586975335

/-! ## A164132.P745258763004157182

`∩[A087749(n+1), A391355(n+1)]`
-/

namespace A164132.P745258763004157182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164132.P745258763004157182

/-!
# A164133: Primes p such that 4*p and 6*p are each the sum of two consecutive primes.

The programs for A164133, there is no canonical definition to state claims against.
-/

/-! ## A164133.P14229859427977512341

`∩[A118134(n+1), A163487(n+1)]`
-/

namespace A164133.P14229859427977512341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164133.P14229859427977512341

/-! ## A164133.P11783382622098574544

`∩[A163487(n+1), A390789(n+1)]`
-/

namespace A164133.P11783382622098574544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164133.P11783382622098574544

/-! ## A164133.P4613698878704903756

`∩[A118134(n+1), A391352(n+1)]`
-/

namespace A164133.P4613698878704903756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164133.P4613698878704903756

/-! ## A164133.P5525753203056909426

`∩[A014682(A072568(n+1)), A163487(n+1)]`
-/

namespace A164133.P5525753203056909426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A072568 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164133.P5525753203056909426

/-!
# A164134: Primes p such that 12*p is the sum of two consecutive primes.

The programs for A164134, there is no canonical definition to state claims against.
-/

/-! ## A164134.P11049944797446405701

`A075281(n+1)/6`
-/

namespace A164134.P11049944797446405701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075281 (n + 1) : ℚ) / 6

end

end A164134.P11049944797446405701

/-! ## A164134.P13764767461687617309

`p?[A392114(n+1)]`
-/

namespace A164134.P13764767461687617309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164134.P13764767461687617309

/-! ## A164134.P14436154098064745296

`filter[A392114(n+1), A010051(#)]`
-/

namespace A164134.P14436154098064745296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A164134.P14436154098064745296

/-! ## A164134.P13294127397725098777

`filter[A392114(n+1), A323153(#)]`
-/

namespace A164134.P13294127397725098777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A164134.P13294127397725098777

/-! ## A164134.P4195972256871411319

`filter[A392114(n+2), A323152(#)]`
-/

namespace A164134.P4195972256871411319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392114 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A164134.P4195972256871411319

/-! ## A164134.P6541926012589792571

`∩[A000040(n+1), A392114(n+1)]`
-/

namespace A164134.P6541926012589792571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164134.P6541926012589792571

/-! ## A164134.P5446497374334565402

`∩[A051948(n+1), A392114(n+1)]`
-/

namespace A164134.P5446497374334565402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164134.P5446497374334565402

/-! ## A164134.P13151903244202204942

`∩[A053813(n+1), A392114(n+1)]`
-/

namespace A164134.P13151903244202204942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164134.P13151903244202204942

/-! ## A164134.P10982008591614728255

`∩[A106118(n+1), A392114(n+1)]`
-/

namespace A164134.P10982008591614728255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164134.P10982008591614728255

/-! ## A164134.P9045387767099402966

`∩[A116974(n+1), A392114(n+1)]`
-/

namespace A164134.P9045387767099402966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164134.P9045387767099402966

/-! ## A164134.P17798957340961162598

`∩[A175787(n+1), A392114(n+1)]`
-/

namespace A164134.P17798957340961162598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164134.P17798957340961162598

/-! ## A164134.P17675773340757397161

`∩[A182986(n+1), A392114(n+1)]`
-/

namespace A164134.P17675773340757397161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164134.P17675773340757397161

/-! ## A164134.P5545922153000902781

`∩[A348283(n+1), A392114(n+1)]`
-/

namespace A164134.P5545922153000902781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164134.P5545922153000902781

/-! ## A164134.P17039245520072445992

`record[A006530(A072570(n+1)/2)]`
-/

namespace A164134.P17039245520072445992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A072570 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164134.P17039245520072445992

/-! ## A164134.P5645480944568561366

`record[A006530(A072570(n+1))]`
-/

namespace A164134.P5645480944568561366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A072570 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164134.P5645480944568561366

/-! ## A164134.P11581034510947295983

`A000040(record[A061395(A072570(n+1))])`
-/

namespace A164134.P11581034510947295983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A072570 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A164134.P11581034510947295983

/-! ## A164134.P7514306373981977291

`A001221(a(n-1))*A006530(A075281(n+1))` with `a(0)=2`
-/

namespace A164134.P7514306373981977291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001221 (a (n - 1)).toNat * A006530 (A075281 (n + 1)).toNat

end

end A164134.P7514306373981977291

/-! ## A164134.P7490681557105435304

`A001222(a(n-1))*A006530(A075281(n+1))` with `a(0)=2`
-/

namespace A164134.P7490681557105435304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001222 (a (n - 1)).toNat * A006530 (A075281 (n + 1)).toNat

end

end A164134.P7490681557105435304

/-! ## A164134.P11219119252759969383

`A006530(A075281(n+1))-A008683((n+1)²)`
-/

namespace A164134.P11219119252759969383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A075281 (n + 1)).toNat - A008683 ((n + 1) ^ 2)

end

end A164134.P11219119252759969383

/-!
# A164135: Numbers k such that k^2 == 2 (mod 47).

The programs for A164135, the canonical program `A164135.P7674206916984917697` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164135 has offset 1).

The definition of A164135 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164135.P7418094342221644195

`(47+19*(-1)^(n+1)+94*n)/4`
-/

namespace A164135.P7418094342221644195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (47 + 19 * (-1) ^ (n + 1) + (94 * n : ℤ) : ℚ) / 4

end

end A164135.P7418094342221644195

namespace A164135

/-- `(47+19*(-1)^(n+1)+94*n)/4` -/
def P7418094342221644195.Spec : Prop :=
  ∀ n, P7418094342221644195.a n = (A164135 (n + 1) : ℚ)

theorem P7418094342221644195.correct : P7418094342221644195.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A164135, Nat.add_sub_cancel, A164135.P7418094342221644195.a, A164135.P7674206916984917697.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A164135, Nat.add_sub_cancel, A164135.P7418094342221644195.a, A164135.P7674206916984917697.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A164135

/-! ## A164135.P7674206916984917697

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=7, a(1)=40, a(2)=54`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A164135

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P7674206916984917697.Spec : Prop :=
  ∀ n, P7674206916984917697.a n = A164135 (n + 1)

theorem P7674206916984917697.correct : P7674206916984917697.Spec := by
  intro n
  simp only [A164135, Nat.add_sub_cancel]

end A164135

/-! ## A164135.P18331840632901890762

`a(n-2)+47` with `a(0)=7, a(1)=40`
-/

namespace A164135.P18331840632901890762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7, 40] fun n a =>
  a (n - 2) + 47

end

end A164135.P18331840632901890762

namespace A164135

/-- `a(n-2)+47` -/
def P18331840632901890762.Spec : Prop :=
  ∀ n, (P18331840632901890762.a n : ℤ) = A164135 (n + 1)

end A164135

/-! ## A164135.P4071623107007353466

`∑[floor(a(n-2))]` with `a(0)=7, a(1)=33, a(2)=14`

`floor` is left out, it is the identity on integers.
-/

namespace A164135.P4071623107007353466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 33, 14] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164135.P4071623107007353466

namespace A164135

/-- `∑[floor(a(n-2))]` -/
def P4071623107007353466.Spec : Prop :=
  ∀ n, (P4071623107007353466.a n : ℤ) = A164135 (n + 1)

end A164135

/-! ## A164135.P14437524935527676378

`∑[47-a(n-1)]` with `a(0)=7, a(1)=33`
-/

namespace A164135.P14437524935527676378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 33] fun n f1 =>
  47 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164135.P14437524935527676378

namespace A164135

/-- `∑[47-a(n-1)]` -/
def P14437524935527676378.Spec : Prop :=
  ∀ n, P14437524935527676378.a n = A164135 (n + 1)

end A164135

/-! ## A164135.P15732871783812384801

`47*n-a(n-1)` with `a(0)=7`
-/

namespace A164135.P15732871783812384801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  (47 * n : ℤ) - a (n - 1)

end

end A164135.P15732871783812384801

namespace A164135

/-- `47*n-a(n-1)` -/
def P15732871783812384801.Spec : Prop :=
  ∀ n, P15732871783812384801.a n = A164135 (n + 1)

end A164135

/-! ## A164135.P772417275235188290

`A159754(n+1)-A166517(n)`
-/

namespace A164135.P772417275235188290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1) - A166517 n

end

end A164135.P772417275235188290

namespace A164135

/-- `A159754(n+1)-A166517(n)` -/
def P772417275235188290.Spec : Prop :=
  ∀ n, P772417275235188290.a n = A164135 (n + 1)

end A164135

/-! ## A164135.P18017850922071398820

`A155097(n+1)+A090771(n+1)`
-/

namespace A164135.P18017850922071398820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155097 (n + 1) + A090771 (n + 1)

end

end A164135.P18017850922071398820

namespace A164135

/-- `A155097(n+1)+A090771(n+1)` -/
def P18017850922071398820.Spec : Prop :=
  ∀ n, P18017850922071398820.a n = A164135 (n + 1)

end A164135

/-! ## A164135.P10342758846621592629

`A171141(n+1)+A168301(n+1)`
-/

namespace A164135.P10342758846621592629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (n + 1) + A168301 (n + 1)

end

end A164135.P10342758846621592629

namespace A164135

/-- `A171141(n+1)+A168301(n+1)` -/
def P10342758846621592629.Spec : Prop :=
  ∀ n, P10342758846621592629.a n = A164135 (n + 1)

end A164135

/-! ## A164135.P5161011146202805247

`A176010(n+1)-A159254(n+1)`
-/

namespace A164135.P5161011146202805247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176010 (n + 1) - A159254 (n + 1)

end

end A164135.P5161011146202805247

namespace A164135

/-- `A176010(n+1)-A159254(n+1)` -/
def P5161011146202805247.Spec : Prop :=
  ∀ n, P5161011146202805247.a n = A164135 (n + 1)

end A164135

/-! ## A164135.P9074852802030866857

`A241406(n+1)-A113804(n+1)`
-/

namespace A164135.P9074852802030866857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241406 (n + 1) - A113804 (n + 1)

end

end A164135.P9074852802030866857

namespace A164135

/-- `A241406(n+1)-A113804(n+1)` -/
def P9074852802030866857.Spec : Prop :=
  ∀ n, P9074852802030866857.a n = A164135 (n + 1)

end A164135

/-! ## A164135.P1792466166695093638

`A175885(n+1)+2*A306771(n+1)`
-/

namespace A164135.P1792466166695093638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175885 (n + 1) + 2 * A306771 (n + 1)

end

end A164135.P1792466166695093638

namespace A164135

/-- `A175885(n+1)+2*A306771(n+1)` -/
def P1792466166695093638.Spec : Prop :=
  ∀ n, P1792466166695093638.a n = A164135 (n + 1)

end A164135

/-! ## A164135.P16319253630946120360

`A166598(A091999(n+1)+n)+A091999(n+1)`
-/

namespace A164135.P16319253630946120360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166598 (A091999 (n + 1) + (n : ℤ)).toNat + A091999 (n + 1)

end

end A164135.P16319253630946120360

namespace A164135

/-- `A166598(A091999(n+1)+n)+A091999(n+1)` -/
def P16319253630946120360.Spec : Prop :=
  ∀ n, P16319253630946120360.a n = A164135 (n + 1)

end A164135

/-! ## A164135.P7499011460909539775

`A168286(A168286(3*n+1))-A047304(3*n+1)`
-/

namespace A164135.P7499011460909539775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168286 (A168286 (3 * n + 1)).toNat - A047304 (3 * n + 1)

end

end A164135.P7499011460909539775

namespace A164135

/-- `A168286(A168286(3*n+1))-A047304(3*n+1)` -/
def P7499011460909539775.Spec : Prop :=
  ∀ n, P7499011460909539775.a n = A164135 (n + 1)

end A164135

/-! ## A164135.P8771579841595004251

`A047370(A168336(A016789(n)))-(n+3)`
-/

namespace A164135.P8771579841595004251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047370 (A168336 (A016789 n).toNat).toNat - (n + 3 : ℤ)

end

end A164135.P8771579841595004251

namespace A164135

/-- `A047370(A168336(A016789(n)))-(n+3)` -/
def P8771579841595004251.Spec : Prop :=
  ∀ n, P8771579841595004251.a n = A164135 (n + 1)

end A164135

/-! ## A164135.P12727767350663320262

`eq[A070469(n), A155124(n)]`
-/

namespace A164135.P12727767350663320262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070469 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155124 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164135.P12727767350663320262

namespace A164135

/-- `eq[A070469(n), A155124(n)]` -/
def P12727767350663320262.Spec : Prop :=
  ∀ n, (P12727767350663320262.a n : ℤ) = A164135 (n + 1)

end A164135

/-! ## A164135.P16968899645366519504

`eq[A070590(n), A329505(n)]`
-/

namespace A164135.P16968899645366519504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070590 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329505 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164135.P16968899645366519504

namespace A164135

/-- `eq[A070590(n), A329505(n)]` -/
def P16968899645366519504.Spec : Prop :=
  ∀ n, (P16968899645366519504.a n : ℤ) = A164135 (n + 1)

end A164135

/-! ## A164135.P8720834038188576184

`eq[A070590(n), A329509(n)]`
-/

namespace A164135.P8720834038188576184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070590 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329509 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164135.P8720834038188576184

namespace A164135

/-- `eq[A070590(n), A329509(n)]` -/
def P8720834038188576184.Spec : Prop :=
  ∀ n, (P8720834038188576184.a n : ℤ) = A164135 (n + 1)

end A164135

/-! ## A164135.P16188495029834068989

`eq[A070687(n), A329507(n)]`
-/

namespace A164135.P16188495029834068989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070687 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329507 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164135.P16188495029834068989

namespace A164135

/-- `eq[A070687(n), A329507(n)]` -/
def P16188495029834068989.Spec : Prop :=
  ∀ n, (P16188495029834068989.a n : ℤ) = A164135 (n + 1)

end A164135

/-! ## A164135.P4080944348141628832

`eq[A070687(n), A329513(n)]`
-/

namespace A164135.P4080944348141628832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070687 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329513 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164135.P4080944348141628832

namespace A164135

/-- `eq[A070687(n), A329513(n)]` -/
def P4080944348141628832.Spec : Prop :=
  ∀ n, (P4080944348141628832.a n : ℤ) = A164135 (n + 1)

end A164135

/-!
# A164136: a(n) = 11*n*(n+1).

The programs for A164136, the canonical program `A164136.P8976148698682902853` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164136 has offset 0).

The definition of A164136 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*n*(n+1)` (program `A164136.P8976148698682902853`, by `A164136.P8976148698682902853.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164136.P8976148698682902853

`11*n*(n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A164136

/-- `11*n*(n+1)` -/
def P8976148698682902853.Spec : Prop :=
  ∀ n, (P8976148698682902853.a n : ℤ) = A164136 n

theorem P8976148698682902853.correct : P8976148698682902853.Spec := by
  intro n
  simp only [A164136]

end A164136

/-! ## A164136.P3003121971551074251

`abs(11*n*xor(n, -1))`
-/

namespace A164136.P3003121971551074251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(11 * n : ℤ) * Int.xor (n : ℤ) (-1)|

end

end A164136.P3003121971551074251

namespace A164136

/-- `abs(11*n*xor(n, -1))` -/
def P3003121971551074251.Spec : Prop :=
  ∀ n, P3003121971551074251.a n = A164136 n

end A164136

/-! ## A164136.P16281734779624657816

`floor(∑[a(n-1)+22])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A164136.P16281734779624657816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 22

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164136.P16281734779624657816

namespace A164136

/-- `floor(∑[a(n-1)+22])` -/
def P16281734779624657816.Spec : Prop :=
  ∀ n, (P16281734779624657816.a n : ℤ) = A164136 n

end A164136

/-! ## A164136.P18153564649799685346

`∑[n]/tan(acot(23))-∑[n]`
-/

namespace A164136.P18153564649799685346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.tan (SequenceMachineLib.acot (23 : ℝ)) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ)

end

end A164136.P18153564649799685346

namespace A164136

/-- `∑[n]/tan(acot(23))-∑[n]` -/
def P18153564649799685346.Spec : Prop :=
  ∀ n, P18153564649799685346.a n = (A164136 n : ℝ)

end A164136

/-! ## A164136.P17199411309234805806

`23*n-(n-a(n-1))` with `a(0)=0`
-/

namespace A164136.P17199411309234805806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (23 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A164136.P17199411309234805806

namespace A164136

/-- `23*n-(n-a(n-1))` -/
def P17199411309234805806.Spec : Prop :=
  ∀ n, P17199411309234805806.a n = A164136 n

theorem P17199411309234805806.correct : P17199411309234805806.Spec := by
  intro n
  induction n with
  | zero => simp [A164136, A164136.P17199411309234805806.a, A164136.P8976148698682902853.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A164136, Nat.add_sub_cancel, A164136.P17199411309234805806.a, A164136.P8976148698682902853.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A164136

/-! ## A164136.P16867226883197428076

`A006222(n)-3`
-/

namespace A164136.P16867226883197428076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006222 n - 3

end

end A164136.P16867226883197428076

namespace A164136

/-- `A006222(n)-3` -/
def P16867226883197428076.Spec : Prop :=
  ∀ n, P16867226883197428076.a n = A164136 n

end A164136

/-! ## A164136.P7737037067342008139

`A195039(n)-∑[n]`
-/

namespace A164136.P7737037067342008139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195039 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A164136.P7737037067342008139

namespace A164136

/-- `A195039(n)-∑[n]` -/
def P7737037067342008139.Spec : Prop :=
  ∀ n, P7737037067342008139.a n = A164136 n

end A164136

/-! ## A164136.P14684063009113338819

`A069173(n+1)-1`
-/

namespace A164136.P14684063009113338819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069173 (n + 1) - 1

end

end A164136.P14684063009113338819

namespace A164136

/-- `A069173(n+1)-1` -/
def P14684063009113338819.Spec : Prop :=
  ∀ n, P14684063009113338819.a n = A164136 n

end A164136

/-!
# A164137: Number of binary strings of length n with equal numbers of 000 and 001 substrings.

The programs for A164137, there is no canonical definition to state claims against.
-/

/-! ## A164137.P11360999373727701067

`2^n-A371662(n)-A371682(n)`
-/

namespace A164137.P11360999373727701067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A371662 n - A371682 n

end

end A164137.P11360999373727701067

/-! ## A164137.P16739428956285739375

`A371692(∑[n+2])`
-/

namespace A164137.P16739428956285739375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371692 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A164137.P16739428956285739375

/-! ## A164137.P13739699971615929839

`A156689(A289814(n)+2^n)`
-/

namespace A164137.P13739699971615929839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156689 (A289814 n + (2 ^ n : ℤ)).toNat

end

end A164137.P13739699971615929839

/-! ## A164137.P7563301402430350399

`A156689(or(2^n, A289814(n)))`
-/

namespace A164137.P7563301402430350399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156689 (Int.lor (2 ^ n : ℤ) (A289814 n)).toNat

end

end A164137.P7563301402430350399

/-! ## A164137.P4064670370442777939

`A156689(xor(2^n, A289814(n)))`
-/

namespace A164137.P4064670370442777939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156689 (Int.xor (2 ^ n : ℤ) (A289814 n)).toNat

end

end A164137.P4064670370442777939

/-!
# A164138: Number of binary strings of length n with equal numbers of 000 and 010 substrings.

The programs for A164138, there is no canonical definition to state claims against.
-/

/-! ## A164138.P134290713995709040

`∑[A350899(A017401(n))+1]`
-/

namespace A164138.P134290713995709040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350899 (A017401 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164138.P134290713995709040

/-! ## A164138.P11483441103361969013

`A330779(A330796(n)+A210218(n+1))`
-/

namespace A164138.P11483441103361969013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330779 (A330796 n + A210218 (n + 1)).toNat

end

end A164138.P11483441103361969013

/-! ## A164138.P8297775134643401469

`A000194(A051134(n+1)*A051163(n))`
-/

namespace A164138.P8297775134643401469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A051134 (n + 1) * A051163 n).toNat

end

end A164138.P8297775134643401469

/-!
# A164139: Number of binary strings of length n with equal numbers of 000 and 011 substrings.

The programs for A164139, there is no canonical definition to state claims against.
-/

/-! ## A164139.P590035933907395088

`A054846(A004273(n))+A001462(A192785(n))`
-/

namespace A164139.P590035933907395088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A004273 n).toNat + A001462 (A192785 n).toNat

end

end A164139.P590035933907395088

/-! ## A164139.P5264286824880897556

`∑[A367611(A025591(n+1))]`
-/

namespace A164139.P5264286824880897556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367611 (A025591 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164139.P5264286824880897556

/-! ## A164139.P16540270912679339306

`A374685(A374742(n))+1+n`
-/

namespace A164139.P16540270912679339306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374685 (A374742 n).toNat + 1 + (n : ℤ)

end

end A164139.P16540270912679339306

/-! ## A164139.P8480099736216253098

`A003056(∑[∑[A337186(n+1)]])`
-/

namespace A164139.P8480099736216253098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337186 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164139.P8480099736216253098

/-! ## A164139.P18034258419888132558

`A055086(A003080(n)+A000096(n))`
-/

namespace A164139.P18034258419888132558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A003080 n + A000096 n).toNat

end

end A164139.P18034258419888132558

/-!
# A164140: Number of binary strings of length n with equal numbers of 000 and 101 substrings.

The programs for A164140, there is no canonical definition to state claims against.
-/

/-! ## A164140.P9255646086342368618

`A003056(A025235(n)+∑[n]+n²)`
-/

namespace A164140.P9255646086342368618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A025235 n + ((∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2 : ℕ) : ℤ)).toNat

end

end A164140.P9255646086342368618

/-! ## A164140.P8868193264857382789

`A002024(A071716(n)+A000292(n))`
-/

namespace A164140.P8868193264857382789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A071716 n + A000292 n).toNat

end

end A164140.P8868193264857382789

/-! ## A164140.P4960297214977103620

`A055086(A178520(n)+A000096(n))`
-/

namespace A164140.P4960297214977103620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A178520 n + A000096 n).toNat

end

end A164140.P4960297214977103620

/-! ## A164140.P8990790942037288664

`A003056(A180306(n+1)+A148670(n))`
-/

namespace A164140.P8990790942037288664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A180306 (n + 1) + A148670 n).toNat

end

end A164140.P8990790942037288664

/-! ## A164140.P9227129954000712769

`A072176(n+1)+A001222(A093627(n+1))`
-/

namespace A164140.P9227129954000712769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072176 (n + 1) + A001222 (A093627 (n + 1)).toNat

end

end A164140.P9227129954000712769

/-!
# A164141: Number of binary strings of length n with equal numbers of 001 and 010 substrings.

The programs for A164141, there is no canonical definition to state claims against.
-/

/-! ## A164141.P17358093424712385521

`Δ[A164158(n)]`
-/

namespace A164141.P17358093424712385521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164141.P17358093424712385521

/-! ## A164141.P3411285264678946440

`A164158(n+1)-A164158(n)`
-/

namespace A164141.P3411285264678946440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164158 (n + 1) - A164158 n

end

end A164141.P3411285264678946440

/-! ## A164141.P12025084603507008972

`record[A164158(abs(1-n))]-A164158(n)`
-/

namespace A164141.P12025084603507008972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164158 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A164158 n

end

end A164141.P12025084603507008972

/-! ## A164141.P17118454871460042206

`∑[A060162(∑[n]+1)]`
-/

namespace A164141.P17118454871460042206
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060162 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164141.P17118454871460042206

/-! ## A164141.P4878761446090877774

`A164158(n+1)%(A164158(n)%A021634(n)+1)+1`
-/

namespace A164141.P4878761446090877774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164158 (n + 1)) (Int.tmod (A164158 n) (A021634 n) + 1) + 1

end

end A164141.P4878761446090877774

/-! ## A164141.P16459107780620395475

`∑[A059780(n²+1+n)]`
-/

namespace A164141.P16459107780620395475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059780 (n ^ 2 + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164141.P16459107780620395475

/-!
# A164142: Number of binary strings of length n with equal numbers of 001 and 011 substrings.

The programs for A164142, there is no canonical definition to state claims against.
-/

/-! ## A164142.P2855424641549484945

`Δ[A164168(n)]`
-/

namespace A164142.P2855424641549484945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164142.P2855424641549484945

/-! ## A164142.P4490237020418438791

`A164168(n+1)-A164168(n)`
-/

namespace A164142.P4490237020418438791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164168 (n + 1) - A164168 n

end

end A164142.P4490237020418438791

/-! ## A164142.P5780741062557590073

`(A164146(n)+A164145(n))/2`
-/

namespace A164142.P5780741062557590073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164146 n + A164145 n : ℚ) / 2

end

end A164142.P5780741062557590073

/-! ## A164142.P10903757479153995672

`A164145(n)+A014682(A164146(n)-A164145(n))`
-/

namespace A164142.P10903757479153995672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164145 n + A014682 (A164146 n - A164145 n).toNat

end

end A164142.P10903757479153995672

/-! ## A164142.P3270186991607117846

`A164145(n)+A029578(A164146(n)-A164145(n))`
-/

namespace A164142.P3270186991607117846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164145 n + A029578 (A164146 n - A164145 n).toNat

end

end A164142.P3270186991607117846

/-!
# A164143: Number of binary strings of length n with equal numbers of 001 and 100 substrings.

The programs for A164143, the canonical program `A164143.P1851592452922551319` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164143 has offset 0).

The definition of A164143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164143.P11057546611186563743

`ogf((-1+2x^3+2x^4)/(-1+2x))`
-/

namespace A164143.P11057546611186563743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, -2, -2] [1, -2] n

end

end A164143.P11057546611186563743

namespace A164143

/-- `ogf((-1+2x^3+2x^4)/(-1+2x))` -/
def P11057546611186563743.Spec : Prop :=
  ∀ n, P11057546611186563743.a n = A164143 n

end A164143

/-! ## A164143.P1851592452922551319

`2*a(n-1)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6, a(4)=10`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A164143

/-- `2*a(n-1)` -/
def P1851592452922551319.Spec : Prop :=
  ∀ n, (P1851592452922551319.a n : ℤ) = A164143 n

theorem P1851592452922551319.correct : P1851592452922551319.Spec := by
  intro n
  simp only [A164143]

end A164143

/-! ## A164143.P9213104419226129618

`a(n-1)+a(n-1)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6, a(4)=10`
-/

namespace A164143.P9213104419226129618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 6, 10] fun n a =>
  a (n - 1) + a (n - 1)

end

end A164143.P9213104419226129618

namespace A164143

/-- `a(n-1)+a(n-1)` -/
def P9213104419226129618.Spec : Prop :=
  ∀ n, (P9213104419226129618.a n : ℤ) = A164143 n

theorem P9213104419226129618.correct : P9213104419226129618.Spec := by
  intro n
  simp only [A164143, Nat.add_sub_cancel, A164143.P9213104419226129618.a, A164143.P1851592452922551319.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A164143

/-! ## A164143.P1048748307378173319

`A164161(n)-a(n-2)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A164143.P1048748307378173319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A164161 n - a (n - 2)

end

end A164143.P1048748307378173319

namespace A164143

/-- `A164161(n)-a(n-2)` -/
def P1048748307378173319.Spec : Prop :=
  ∀ n, P1048748307378173319.a n = A164143 n

end A164143

/-! ## A164143.P10478863450602718387

`A171869(n+1)+Δ[A171869(n+3)]`
-/

namespace A164143.P10478863450602718387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171869 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171869 (n + 1) + (f1 (n + 1) - f1 n)

end

end A164143.P10478863450602718387

namespace A164143

/-- `A171869(n+1)+Δ[A171869(n+3)]` -/
def P10478863450602718387.Spec : Prop :=
  ∀ n, P10478863450602718387.a n = A164143 n

end A164143

/-! ## A164143.P12665074815030363324

`A029747(A028310(A004271(n)+n))`
-/

namespace A164143.P12665074815030363324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (A028310 (A004271 n + (n : ℤ)).toNat).toNat

end

end A164143.P12665074815030363324

namespace A164143

/-- `A029747(A028310(A004271(n)+n))` -/
def P12665074815030363324.Spec : Prop :=
  ∀ n, P12665074815030363324.a n = A164143 n

end A164143

/-!
# A164144: Number of binary strings of length n with equal numbers of 001 and 101 substrings.

The programs for A164144, there is no canonical definition to state claims against.
-/

/-! ## A164144.P6459988125879276202

`A089867(A000389(n))+A004277(n)`
-/

namespace A164144.P6459988125879276202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A000389 n).toNat + A004277 n

end

end A164144.P6459988125879276202

/-! ## A164144.P693703402958847486

`A241733(A241733(n))+A134914(A084529(n+1))`
-/

namespace A164144.P693703402958847486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241733 (A241733 n).toNat + A134914 (A084529 (n + 1)).toNat

end

end A164144.P693703402958847486

/-!
# A164145: Number of binary strings of length n with equal numbers of 001 and 110 substrings.

The programs for A164145, there is no canonical definition to state claims against.
-/

/-! ## A164145.P1256937256748117098

`A164142(n)+A164142(n)-A164146(n)`
-/

namespace A164145.P1256937256748117098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164142 n + (A164142 n - A164146 n)

end

end A164145.P1256937256748117098

/-! ## A164145.P17100090183969321049

`2*A164142(n)-A164146(n)`
-/

namespace A164145.P17100090183969321049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164142 n - A164146 n

end

end A164145.P17100090183969321049

/-! ## A164145.P808304687365121690

`(2*A164142(n))%A000265(A164146(n)+1)+1`
-/

namespace A164145.P808304687365121690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A164142 n) (A000265 (A164146 n + 1).toNat) + 1

end

end A164145.P808304687365121690

/-! ## A164145.P15420995750305487404

`A004277(A164142(n))-A164146(n)`
-/

namespace A164145.P15420995750305487404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A164142 n).toNat - A164146 n

end

end A164145.P15420995750305487404

/-! ## A164145.P6686782138979494621

`A011542(A099855(n+1))`
-/

namespace A164145.P6686782138979494621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011542 (A099855 (n + 1)).toNat

end

end A164145.P6686782138979494621

/-!
# A164146: Number of binary strings of length n with equal numbers of 010 and 101 substrings.

The programs for A164146, there is no canonical definition to state claims against.
-/

/-! ## A164146.P4227542026070355625

`(2-A000007(n))*A274160(n+1)`
-/

namespace A164146.P4227542026070355625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A274160 (n + 1)

end

end A164146.P4227542026070355625

/-! ## A164146.P8454218892027342578

`A164142(n)+A164142(n)-A164145(n)`
-/

namespace A164146.P8454218892027342578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164142 n + (A164142 n - A164145 n)

end

end A164146.P8454218892027342578

/-! ## A164146.P14381218454135618922

`2*A164142(n)-A164145(n)`
-/

namespace A164146.P14381218454135618922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164142 n - A164145 n

end

end A164146.P14381218454135618922

/-! ## A164146.P14196548547711271383

`A307796(∑[A002264(2*n+1)])`
-/

namespace A164146.P14196548547711271383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307796 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164146.P14196548547711271383

/-! ## A164146.P12499028169454726230

`A307796(∑[n-A002264(n+1)])`
-/

namespace A164146.P12499028169454726230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A002264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307796 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164146.P12499028169454726230

/-! ## A164146.P2130637215616003416

`A303696(∑[n+2]-1)`
-/

namespace A164146.P2130637215616003416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303696 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A164146.P2130637215616003416

/-! ## A164146.P8972172299111655582

`A307796(∑[n]-A002264(∑[n]))`
-/

namespace A164146.P8972172299111655582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307796 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A002264 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

end

end A164146.P8972172299111655582

/-! ## A164146.P8875472716137987207

`A307796(A008615((n+1)*2*n))`
-/

namespace A164146.P8875472716137987207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307796 (A008615 ((n + 1) * (2 * n))).toNat

end

end A164146.P8875472716137987207

/-! ## A164146.P15042472579379820188

`A020639(A010010(n))*A274160(n+1)`
-/

namespace A164146.P15042472579379820188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A010010 n).toNat * A274160 (n + 1)

end

end A164146.P15042472579379820188

/-!
# A164147: Number of binary strings of length n with equal numbers of 0000 and 0001 substrings.

The programs for A164147, there is no canonical definition to state claims against.
-/

/-! ## A164147.P13776939486841278993

`A164187(A187829(n+1))-A164183(n)`
-/

namespace A164147.P13776939486841278993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164187 (A187829 (n + 1)).toNat - A164183 n

end

end A164147.P13776939486841278993

/-! ## A164147.P75072543184597506

`A157271(A171857(n+1))`
-/

namespace A164147.P75072543184597506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A171857 (n + 1)).toNat

end

end A164147.P75072543184597506

/-! ## A164147.P13530568133983507268

`A164187(n+1)-A100196(A271893(n)+A180272(n))`
-/

namespace A164147.P13530568133983507268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164187 (n + 1) - A100196 (A271893 n + A180272 n).toNat

end

end A164147.P13530568133983507268

/-! ## A164147.P13033656112881011750

`A354535(A109263(n+1))`
-/

namespace A164147.P13033656112881011750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354535 (A109263 (n + 1)).toNat

end

end A164147.P13033656112881011750

/-! ## A164147.P12908212108833702157

`A249728(A377099(n+1))`
-/

namespace A164147.P12908212108833702157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (A377099 (n + 1)).toNat

end

end A164147.P12908212108833702157

/-!
# A164148: Number of binary strings of length n with equal numbers of 0000 and 0010 substrings.

The programs for A164148, there is no canonical definition to state claims against.
-/

/-! ## A164148.P17316005020575415933

`A172471(A071732(n)+n)`
-/

namespace A164148.P17316005020575415933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A071732 n + (n : ℤ)).toNat

end

end A164148.P17316005020575415933

/-! ## A164148.P17310520000362449639

`A216256(A026012(n)+A000065(n))`
-/

namespace A164148.P17310520000362449639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216256 (A026012 n + A000065 n).toNat

end

end A164148.P17310520000362449639

/-! ## A164148.P13772807260280252609

`A137734(A257674(n))+A005255(n)`
-/

namespace A164148.P13772807260280252609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A257674 n).toNat + A005255 n

end

end A164148.P13772807260280252609

/-! ## A164148.P14911298668655073935

`A182028(n)+A071673(A149015(n))`
-/

namespace A164148.P14911298668655073935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182028 n + A071673 (A149015 n).toNat

end

end A164148.P14911298668655073935

/-! ## A164148.P15612449247746118623

`A135491(n)-A130635(A004731(n))`
-/

namespace A164148.P15612449247746118623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135491 n - A130635 (A004731 n).toNat

end

end A164148.P15612449247746118623

/-!
# A164149: Number of binary strings of length n with equal numbers of 0000 and 0011 substrings.

The programs for A164149, there is no canonical definition to state claims against.
-/

/-! ## A164149.P8237852074856707725

`A001221(A008323(n))+A000073(n+3)`
-/

namespace A164149.P8237852074856707725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008323 n).toNat + A000073 (n + 3)

end

end A164149.P8237852074856707725

/-! ## A164149.P17663052188783167772

`floor(sqrt(sqrt(A001573(2*(n+2)))))`
-/

namespace A164149.P17663052188783167772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A001573 (2 * (n + 2)) : ℝ))⌋

end

end A164149.P17663052188783167772

/-! ## A164149.P16520230318019050536

`∑[A003059(A200543(n))]`
-/

namespace A164149.P16520230318019050536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A200543 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164149.P16520230318019050536

/-! ## A164149.P10151193709824769449

`∑[A330236(A224957(n))]`
-/

namespace A164149.P10151193709824769449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330236 (A224957 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164149.P10151193709824769449

/-! ## A164149.P13480764550439779322

`A257639(A052906(n+1))`
-/

namespace A164149.P13480764550439779322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A052906 (n + 1)).toNat

end

end A164149.P13480764550439779322

/-!
# A164150: Number of binary strings of length n with equal numbers of 0000 and 0101 substrings.

The programs for A164150, there is no canonical definition to state claims against.
-/

/-! ## A164150.P10631718441765556539

`∑[A003056(Δ[A125809(n)])]`
-/

namespace A164150.P10631718441765556539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125809 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164150.P10631718441765556539

/-! ## A164150.P12007730438806004681

`∑[A055086(or(n, A148310(n)))]`
-/

namespace A164150.P12007730438806004681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (Int.lor (n : ℤ) (A148310 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164150.P12007730438806004681

/-! ## A164150.P10091305159054158315

`A001462(abs(∑[A113067(n+1)]))`
-/

namespace A164150.P10091305159054158315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 |∑ j ∈ Finset.range (n + 1), f1 j|.toNat

end

end A164150.P10091305159054158315

/-! ## A164150.P4029766167836039919

`A001462(floor(A001654(n+2)/2))`
-/

namespace A164150.P4029766167836039919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 ⌊(A001654 (n + 2) : ℚ) / 2⌋.toNat

end

end A164150.P4029766167836039919

/-! ## A164150.P14330547488974223738

`A185284(record[lcm(2, n)])+A164387(n)`
-/

namespace A164150.P14330547488974223738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) + A164387 n

end

end A164150.P14330547488974223738

/-!
# A164151: Number of binary strings of length n with equal numbers of 0000 and 0110 substrings.

The programs for A164151, there is no canonical definition to state claims against.
-/

/-! ## A164151.P12739948043495425631

`A257639(Δ[A185265(n)²])`
-/

namespace A164151.P12739948043495425631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185265 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (f1 (n + 1) - f1 n).toNat

end

end A164151.P12739948043495425631

/-! ## A164151.P5881840357922684858

`A326774(A052825(n))+1+n`
-/

namespace A164151.P5881840357922684858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326774 (A052825 n).toNat + 1 + (n : ℤ)

end

end A164151.P5881840357922684858

/-! ## A164151.P17074339020418083962

`A257639(Δ[∑[A242525(n+1)]²])`
-/

namespace A164151.P17074339020418083962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242525 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (f1 (n + 1) - f1 n).toNat

end

end A164151.P17074339020418083962

/-! ## A164151.P12237747661359847227

`A348553(n)+A326774(A052825(n))`
-/

namespace A164151.P12237747661359847227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 n + A326774 (A052825 n).toNat

end

end A164151.P12237747661359847227

/-! ## A164151.P16893722295188844379

`A164387(n)-A001221(A309860(n))`
-/

namespace A164151.P16893722295188844379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164387 n - A001221 (A309860 n).toNat

end

end A164151.P16893722295188844379

/-!
# A164152: Number of binary strings of length n with equal numbers of 0000 and 0111 substrings.

The programs for A164152, there is no canonical definition to state claims against.
-/

/-! ## A164152.P7909646522347864058

`A164153(n)+A001221(A248767(n+1))`
-/

namespace A164152.P7909646522347864058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164153 n + A001221 (A248767 (n + 1)).toNat

end

end A164152.P7909646522347864058

/-! ## A164152.P2297794282482270220

`∑[A003056(A148124(n+1))]`
-/

namespace A164152.P2297794282482270220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A148124 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164152.P2297794282482270220

/-! ## A164152.P14711956423427050965

`A005041(Δ[A080937(n)])+n`
-/

namespace A164152.P14711956423427050965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (f1 (n + 1) - f1 n).toNat + (n : ℤ)

end

end A164152.P14711956423427050965

/-! ## A164152.P12444438086125554358

`A005041(A006053(2*n))+n`
-/

namespace A164152.P12444438086125554358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A006053 (2 * n)).toNat + (n : ℤ)

end

end A164152.P12444438086125554358

/-! ## A164152.P272788692238644697

`A164153(n)+A164056(A092539(n))`
-/

namespace A164152.P272788692238644697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164153 n + A164056 (A092539 n).toNat

end

end A164152.P272788692238644697

/-!
# A164153: Number of binary strings of length n with equal numbers of 0000 and 1001 substrings.

The programs for A164153, there is no canonical definition to state claims against.
-/

/-! ## A164153.P10585932357284756328

`∑[ceil((lt[A255120(n+1), 1]+1)/2)]`
-/

namespace A164153.P10585932357284756328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255120 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164153.P10585932357284756328

/-! ## A164153.P5252516991326428686

`A164152(n)-A001221(A248767(n+1))`
-/

namespace A164153.P5252516991326428686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164152 n - A001221 (A248767 (n + 1)).toNat

end

end A164153.P5252516991326428686

/-! ## A164153.P9881998110646941132

`∑[A003056(∑[A151386(n)])]`
-/

namespace A164153.P9881998110646941132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151386 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164153.P9881998110646941132

/-! ## A164153.P9106269972899010807

`A026819(A052252(n+4)+2^n)`
-/

namespace A164153.P9106269972899010807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A052252 (n + 4) + (2 ^ n : ℤ)).toNat

end

end A164153.P9106269972899010807

/-! ## A164153.P15371823245734313124

`A164152(n)-A164056(A092539(n))`
-/

namespace A164153.P15371823245734313124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164152 n - A164056 (A092539 n).toNat

end

end A164153.P15371823245734313124

/-!
# A164154: Number of binary strings of length n with equal numbers of 0000 and 1111 substrings.

The programs for A164154, there is no canonical definition to state claims against.
-/

/-! ## A164154.P7028629833237419003

`A135491(n)+A063725(A178963(n))`
-/

namespace A164154.P7028629833237419003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135491 n + A063725 (A178963 n).toNat

end

end A164154.P7028629833237419003

/-! ## A164154.P15659833337689419725

`A161205(A071721(n))`
-/

namespace A164154.P15659833337689419725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A071721 n).toNat

end

end A164154.P15659833337689419725

/-! ## A164154.P8859522277493671787

`A229219(A274019(n))`
-/

namespace A164154.P8859522277493671787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229219 (A274019 n).toNat

end

end A164154.P8859522277493671787

/-! ## A164154.P6834245987185975117

`A055086(A110490(n+1))`
-/

namespace A164154.P6834245987185975117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A110490 (n + 1)).toNat

end

end A164154.P6834245987185975117

/-! ## A164154.P4035320987653123020

`A082447(A148776(n+1))`
-/

namespace A164154.P4035320987653123020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A148776 (n + 1)).toNat

end

end A164154.P4035320987653123020

/-!
# A164155: Number of binary strings of length n with equal numbers of 0001 and 0010 substrings.

The programs for A164155, there is no canonical definition to state claims against.
-/

/-! ## A164155.P9435838019679040723

`Δ[A164198(n)]`
-/

namespace A164155.P9435838019679040723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164155.P9435838019679040723

/-! ## A164155.P14944565306666079640

`A164198(n+1)-A164198(n)`
-/

namespace A164155.P14944565306666079640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164198 (n + 1) - A164198 n

end

end A164155.P14944565306666079640

/-! ## A164155.P13501028352099262677

`∑[A023193(A000225(n+1)-A006128(n))]`
-/

namespace A164155.P13501028352099262677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A000225 (n + 1) - A006128 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164155.P13501028352099262677

/-! ## A164155.P15875275345177581224

`Δ[A178798(A136484(n))+A164238(n)]`
-/

namespace A164155.P15875275345177581224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A136484 n).toNat + A164238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164155.P15875275345177581224

/-! ## A164155.P5229207158626902321

`A172471(A149233(n+1))`
-/

namespace A164155.P5229207158626902321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A149233 (n + 1)).toNat

end

end A164155.P5229207158626902321

/-!
# A164156: Number of binary strings of length n with equal numbers of 0001 and 0011 substrings.

The programs for A164156, there is no canonical definition to state claims against.
-/

/-! ## A164156.P15376604999448682371

`Δ[A164213(n)]`
-/

namespace A164156.P15376604999448682371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164156.P15376604999448682371

/-! ## A164156.P16158602696527816120

`A164213(n+1)-A164213(n)`
-/

namespace A164156.P16158602696527816120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164213 (n + 1) - A164213 n

end

end A164156.P16158602696527816120

/-! ## A164156.P7098688016493084410

`record[A164213(abs(1-n))]-A164213(n)`
-/

namespace A164156.P7098688016493084410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164213 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A164213 n

end

end A164156.P7098688016493084410

/-! ## A164156.P797204611994604426

`record[A164213(A002260(n+1))]%(A164213(n)+1)+1`
-/

namespace A164156.P797204611994604426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164213 (A002260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A164213 n + 1) + 1

end

end A164156.P797204611994604426

/-! ## A164156.P9393355308505381164

`A164213(A348553(n))-A000027(A164213(n))`
-/

namespace A164156.P9393355308505381164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164213 (A348553 n).toNat - A000027 (A164213 n).toNat

end

end A164156.P9393355308505381164

/-!
# A164157: Number of binary strings of length n with equal numbers of 0001 and 0100 substrings.

The programs for A164157, there is no canonical definition to state claims against.
-/

/-! ## A164157.P3157472887786777363

`A254948(A374743(n+1))`
-/

namespace A164157.P3157472887786777363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254948 (A374743 (n + 1)).toNat

end

end A164157.P3157472887786777363

/-! ## A164157.P11105437333560871617

`A351596(A284250(n))+A097197(n)`
-/

namespace A164157.P11105437333560871617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351596 (A284250 n).toNat + A097197 n

end

end A164157.P11105437333560871617

/-! ## A164157.P14874963384916205417

`A055086(∑[A257641(n)+A174868(n)])`
-/

namespace A164157.P14874963384916205417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257641 n + A174868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164157.P14874963384916205417

/-! ## A164157.P993763422637707676

`A262689(A078789(n)+∑[A155212(n)])`
-/

namespace A164157.P993763422637707676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A078789 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164157.P993763422637707676

/-! ## A164157.P2525013930421517041

`A136444(n+1)+A265533(A136444(n))+1+n`
-/

namespace A164157.P2525013930421517041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136444 (n + 1) + (A265533 (A136444 n).toNat + 1 + (n : ℤ))

end

end A164157.P2525013930421517041

/-!
# A164158: Number of binary strings of length n with equal numbers of 0001 and 0101 substrings.

The programs for A164158, there is no canonical definition to state claims against.
-/

/-! ## A164158.P14331494223640503694

`∑[A164141(abs(1-n))]-1`
-/

namespace A164158.P14331494223640503694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164141 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A164158.P14331494223640503694

/-! ## A164158.P12321555426634555167

`∑[A164141(floor(n²/(n+1)))]`
-/

namespace A164158.P12321555426634555167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164141 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164158.P12321555426634555167

/-! ## A164158.P6846809223679889191

`A164141(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A164158.P6846809223679889191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A164141 (n - 1) + a (n - 1)

end

end A164158.P6846809223679889191

/-! ## A164158.P14203709118400014670

`floor(root(∑[A219415(n+1)], 7))`
-/

namespace A164158.P14203709118400014670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ (1 / (7 : ℝ))⌋

end

end A164158.P14203709118400014670

/-! ## A164158.P10687987069476315272

`A216256(A052958(n))`
-/

namespace A164158.P10687987069476315272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216256 (A052958 n).toNat

end

end A164158.P10687987069476315272

/-!
# A164159: Number of binary strings of length n with equal numbers of 0001 and 0110 substrings.

The programs for A164159, there is no canonical definition to state claims against.
-/

/-! ## A164159.P13459373311938759033

`A109680(A164172(n))`
-/

namespace A164159.P13459373311938759033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (A164172 n).toNat

end

end A164159.P13459373311938759033

/-! ## A164159.P13429971538031923567

`A056926(A164172(n)²)`
-/

namespace A164159.P13429971538031923567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A164172 n ^ 2).toNat

end

end A164159.P13429971538031923567

/-! ## A164159.P10434566568281456344

`A262689(A164172(n)²)`
-/

namespace A164159.P10434566568281456344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A164172 n ^ 2).toNat

end

end A164159.P10434566568281456344

/-! ## A164159.P6486648731245672563

`A164172(A004892(n+1))`
-/

namespace A164159.P6486648731245672563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164172 (A004892 (n + 1)).toNat

end

end A164159.P6486648731245672563

/-! ## A164159.P7920942029007764555

`A164172(A004903(n+1))`
-/

namespace A164159.P7920942029007764555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164172 (A004903 (n + 1)).toNat

end

end A164159.P7920942029007764555

/-!
# A164160: Number of binary strings of length n with equal numbers of 0001 and 0111 substrings.

The programs for A164160, there is no canonical definition to state claims against.
-/

/-! ## A164160.P5686823021184725505

`A318186(A319769(n)-A168050(n+2))`
-/

namespace A164160.P5686823021184725505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318186 (A319769 n - A168050 (n + 2)).toNat

end

end A164160.P5686823021184725505

/-! ## A164160.P9198389344828563895

`floor(sqrt(∑[A000201(3^n+1)-1]))`
-/

namespace A164160.P9198389344828563895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (3 ^ n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A164160.P9198389344828563895

/-! ## A164160.P821483764441483790

`A242396(floor(floor(3/2*a(n-1))/2))` with `a(0)=1, a(1)=2`
-/

namespace A164160.P821483764441483790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A242396 ⌊(⌊(3 : ℚ) / 2 * (a (n - 1) : ℚ)⌋ : ℚ) / 2⌋.toNat

end

end A164160.P821483764441483790

/-! ## A164160.P5052443041876868851

`A070966(A003946(n))`
-/

namespace A164160.P5052443041876868851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070966 (A003946 n).toNat

end

end A164160.P5052443041876868851

/-! ## A164160.P3347871641164869286

`A070966(A165184(n))`
-/

namespace A164160.P3347871641164869286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070966 (A165184 n).toNat

end

end A164160.P3347871641164869286

/-!
# A164161: Number of binary strings of length n with equal numbers of 0001 and 1000 substrings.

The programs for A164161, the canonical program `A164161.P6482015056513290671` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164161 has offset 0).

The definition of A164161 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164161.P6482015056513290671

`ogf((-1+2x^4+2x^5+2x^6)/(-1+2x))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A164161

/-- `ogf((-1+2x^4+2x^5+2x^6)/(-1+2x))` -/
def P6482015056513290671.Spec : Prop :=
  ∀ n, P6482015056513290671.a n = A164161 n

theorem P6482015056513290671.correct : P6482015056513290671.Spec := by
  intro n
  simp only [A164161]

end A164161

/-! ## A164161.P16467885415044256585

`2*(a(n-1)-A035377(A180101(n+1)))` with `a(0)=1`
-/

namespace A164161.P16467885415044256585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - A035377 (A180101 (n + 1)).toNat)

end

end A164161.P16467885415044256585

namespace A164161

/-- `2*(a(n-1)-A035377(A180101(n+1)))` -/
def P16467885415044256585.Spec : Prop :=
  ∀ n, P16467885415044256585.a n = A164161 n

end A164161

/-! ## A164161.P10529102618243241787

`A005408(a(n-1))-A110566(n+2)` with `a(0)=1`
-/

namespace A164161.P10529102618243241787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005408 (a (n - 1)).toNat - A110566 (n + 2)

end

end A164161.P10529102618243241787

namespace A164161

/-- `A005408(a(n-1))-A110566(n+2)` -/
def P10529102618243241787.Spec : Prop :=
  ∀ n, P10529102618243241787.a n = A164161 n

end A164161

/-! ## A164161.P6328955866123840963

`2*a(n-1)-A006996(A220143(n+1))` with `a(0)=1`
-/

namespace A164161.P6328955866123840963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A006996 (A220143 (n + 1)).toNat

end

end A164161.P6328955866123840963

namespace A164161

/-- `2*a(n-1)-A006996(A220143(n+1))` -/
def P6328955866123840963.Spec : Prop :=
  ∀ n, P6328955866123840963.a n = A164161 n

end A164161

/-! ## A164161.P13338522295366994995

`A005843(a(n-1))-A000122(A046699(n+2))` with `a(0)=1`
-/

namespace A164161.P13338522295366994995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005843 (a (n - 1)).toNat - A000122 (A046699 (n + 2)).toNat

end

end A164161.P13338522295366994995

namespace A164161

/-- `A005843(a(n-1))-A000122(A046699(n+2))` -/
def P13338522295366994995.Spec : Prop :=
  ∀ n, P13338522295366994995.a n = A164161 n

end A164161

/-!
# A164162: Number of binary strings of length n with equal numbers of 0001 and 1001 substrings.

The programs for A164162, there is no canonical definition to state claims against.
-/

/-! ## A164162.P11086652301921380673

`A000006(A022553(n))+∑[n]`
-/

namespace A164162.P11086652301921380673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A022553 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A164162.P11086652301921380673

/-! ## A164162.P18258778515503666523

`A000217(n)+A000006(A022553(n))`
-/

namespace A164162.P18258778515503666523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + A000006 (A022553 n).toNat

end

end A164162.P18258778515503666523

/-! ## A164162.P17267702133869624782

`A000217(n)+A000196(ceil(6*4^(n-3)))`
-/

namespace A164162.P17267702133869624782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + A000196 ⌈6 * (4 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌉.toNat

end

end A164162.P17267702133869624782

/-! ## A164162.P12421414858362445733

`A003056(A161712(n)+A028243(n+1))`
-/

namespace A164162.P12421414858362445733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A161712 n + A028243 (n + 1)).toNat

end

end A164162.P12421414858362445733

/-! ## A164162.P7342366350226617441

`A187786(n)+A069623(A226452(2*n))`
-/

namespace A164162.P7342366350226617441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187786 n + A069623 (A226452 (2 * n)).toNat

end

end A164162.P7342366350226617441

/-!
# A164163: Number of binary strings of length n with equal numbers of 0001 and 1010 substrings.

The programs for A164163, there is no canonical definition to state claims against.
-/

/-! ## A164163.P1308546312397136919

`∑[A003056(A115254(n)+n)]`
-/

namespace A164163.P1308546312397136919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A115254 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164163.P1308546312397136919

/-! ## A164163.P10894551841682805780

`A005041(record[A114626(n+2)])+comp[2*n+3]`
-/

namespace A164163.P10894551841682805780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114626 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

end

end A164163.P10894551841682805780

/-! ## A164163.P12158571978245281696

`A004001(A164183(n*A072137(n)))+comp[2*n+3]`
-/

namespace A164163.P12158571978245281696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A164183 ((n : ℤ) * A072137 n).toNat).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A164163.P12158571978245281696

/-! ## A164163.P17497544026258659945

`∑[A061266(A127682(3*n+5)+A000108(n))-2]+n`
-/

namespace A164163.P17497544026258659945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061266 (A127682 (3 * n + 5) + A000108 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A164163.P17497544026258659945

/-! ## A164163.P14633560976547303196

`∑[A000194(A234643(n))]`
-/

namespace A164163.P14633560976547303196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A234643 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164163.P14633560976547303196

/-!
# A164164: Number of binary strings of length n with equal numbers of 0001 and 1100 substrings.

The programs for A164164, there is no canonical definition to state claims against.
-/

/-! ## A164164.P5906402279010719002

`lt[((2*n)^3)%(4*n+1), 8]+ceil(2^(n-1))`
-/

namespace A164164.P5906402279010719002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 3 % (4 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A164164.P5906402279010719002

/-! ## A164164.P5018309046865202302

`∑[2*(a(n-1)-1)]%p?[∑[2^n+2]]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A164164.P5018309046865202302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4] fun n f1 =>
  2 * (f1 (n - 1) - 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A164164.P5018309046865202302

/-! ## A164164.P15571627809743674240

`A050363(3^n)+comp[2*n+3]`
-/

namespace A164164.P15571627809743674240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050363 (3 ^ n) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A164164.P15571627809743674240

/-! ## A164164.P12933025122154638130

`∑[A322846(a(n-1)+1)]-n` with `a(0)=1`
-/

namespace A164164.P12933025122154638130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A322846 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A164164.P12933025122154638130

/-! ## A164164.P15815264223071169403

`∑[∑[A003002(A383751(2*n))]]`
-/

namespace A164164.P15815264223071169403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A383751 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164164.P15815264223071169403

/-!
# A164165: Number of binary strings of length n with equal numbers of 0001 and 1110 substrings.

The programs for A164165, there is no canonical definition to state claims against.
-/

/-! ## A164165.P8742290345725951457

`A124222(A052810(n))+A001045(n)`
-/

namespace A164165.P8742290345725951457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124222 (A052810 n).toNat + A001045 n

end

end A164165.P8742290345725951457

/-! ## A164165.P10157073408705650519

`A005578(A307887(n))+A000982(n)`
-/

namespace A164165.P10157073408705650519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (A307887 n).toNat + A000982 n

end

end A164165.P10157073408705650519

/-! ## A164165.P17976332160086382863

`A172471(A208737(n))+A000124(n)`
-/

namespace A164165.P17976332160086382863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A208737 n).toNat + A000124 n

end

end A164165.P17976332160086382863

/-! ## A164165.P1810692829742738557

`A172471(A241891(n))+A007590(n)`
-/

namespace A164165.P1810692829742738557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A241891 n).toNat + A007590 n

end

end A164165.P1810692829742738557

/-! ## A164165.P3445734320455578355

`A059261(A365103(n))+A007590(n)`
-/

namespace A164165.P3445734320455578355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059261 (A365103 n).toNat + A007590 n

end

end A164165.P3445734320455578355

/-!
# A164166: Number of binary strings of length n with equal numbers of 0010 and 0100 substrings.

The programs for A164166, there is no canonical definition to state claims against.
-/

/-! ## A164166.P7657810318990657982

`A036453(A018037(n))*A176485(n+2)`
-/

namespace A164166.P7657810318990657982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (A018037 n).toNat * A176485 (n + 2)

end

end A164166.P7657810318990657982

/-! ## A164166.P1051528556072823918

`A061395(A008776(n))*A176485(n+2)`
-/

namespace A164166.P1051528556072823918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A008776 n).toNat * A176485 (n + 2)

end

end A164166.P1051528556072823918

/-! ## A164166.P3275888888526521411

`A036453(A145642(n+1))*A176485(n+2)`
-/

namespace A164166.P3275888888526521411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (A145642 (n + 1)).toNat * A176485 (n + 2)

end

end A164166.P3275888888526521411

/-! ## A164166.P11893171993557307966

`A091225(A286075(n))+A087221(2*(n+1))`
-/

namespace A164166.P11893171993557307966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (A286075 n).toNat + A087221 (2 * (n + 1))

end

end A164166.P11893171993557307966

/-! ## A164166.P18400158642289212317

`A176485(n+2)*A331083(A000032(2*n))`
-/

namespace A164166.P18400158642289212317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176485 (n + 2) * A331083 (A000032 (2 * n)).toNat

end

end A164166.P18400158642289212317

/-!
# A164167: Number of binary strings of length n with equal numbers of 0010 and 0101 substrings.

The programs for A164167, there is no canonical definition to state claims against.
-/

/-! ## A164167.P11302767450992235725

`record[A008651(xor(6, A309399(n)))]`
-/

namespace A164167.P11302767450992235725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (Int.xor 6 (A309399 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164167.P11302767450992235725

/-! ## A164167.P8003941855422358389

`A261104(A084086(n+1))`
-/

namespace A164167.P8003941855422358389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A084086 (n + 1)).toNat

end

end A164167.P8003941855422358389

/-! ## A164167.P8207437316242841700

`A375815(A006724(n+1))`
-/

namespace A164167.P8207437316242841700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375815 (A006724 (n + 1)).toNat

end

end A164167.P8207437316242841700

/-! ## A164167.P11404371505762561015

`A375815(A057409(n+1))`
-/

namespace A164167.P11404371505762561015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375815 (A057409 (n + 1)).toNat

end

end A164167.P11404371505762561015

/-! ## A164167.P595401116194554259

`A051889(∑[∑[A018089(n)]])`
-/

namespace A164167.P595401116194554259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018089 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164167.P595401116194554259

/-!
# A164168: Number of binary strings of length n with equal numbers of 0010 and 0110 substrings.

The programs for A164168, there is no canonical definition to state claims against.
-/

/-! ## A164168.P3710835450504013517

`∑[A164142(floor(n²/(n+1)))]`
-/

namespace A164168.P3710835450504013517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164142 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164168.P3710835450504013517

/-! ## A164168.P5897079808549137588

`A164142(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A164168.P5897079808549137588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A164142 (n - 1) + a (n - 1)

end

end A164168.P5897079808549137588

/-! ## A164168.P17277632535311920823

`∑[A164142(n)]+1-A164142(n)`
-/

namespace A164168.P17277632535311920823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A164142 n)

end

end A164168.P17277632535311920823

/-! ## A164168.P11020480909257309197

`A164146(n+1)-Δ[A164142(n)]`
-/

namespace A164168.P11020480909257309197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164146 (n + 1) - (f1 (n + 1) - f1 n)

end

end A164168.P11020480909257309197

/-! ## A164168.P171503951125830707

`A164146(n)-Δ[A164145(n)-A164142(n)]`
-/

namespace A164168.P171503951125830707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164145 n - A164142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164146 n - (f1 (n + 1) - f1 n)

end

end A164168.P171503951125830707

/-! ## A164168.P3232317233422354325

`Δ[∑[A164146(n)]-A164142(n)]`
-/

namespace A164168.P3232317233422354325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164146 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A164142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164168.P3232317233422354325

/-!
# A164169: Number of binary strings of length n with equal numbers of 0010 and 1001 substrings.

The programs for A164169, there is no canonical definition to state claims against.
-/

/-! ## A164169.P465870332241894454

`A161205(A148591(n+1))`
-/

namespace A164169.P465870332241894454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A148591 (n + 1)).toNat

end

end A164169.P465870332241894454

/-! ## A164169.P10898419743547858503

`A161205(A100447(n)-1)`
-/

namespace A164169.P10898419743547858503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A100447 n - 1).toNat

end

end A164169.P10898419743547858503

/-! ## A164169.P5423815246892809762

`A161205(∑[∑[A148845(n)]])`
-/

namespace A164169.P5423815246892809762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148845 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164169.P5423815246892809762

/-! ## A164169.P10434806031010619209

`A161205(A008965(2*n+1))`
-/

namespace A164169.P10434806031010619209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A008965 (2 * n + 1)).toNat

end

end A164169.P10434806031010619209

/-! ## A164169.P12553356294225714874

`A161205(A059966(2*n+1))`
-/

namespace A164169.P12553356294225714874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A059966 (2 * n + 1)).toNat

end

end A164169.P12553356294225714874

/-!
# A164170: Number of binary strings of length n with equal numbers of 0010 and 1010 substrings.

The programs for A164170, there is no canonical definition to state claims against.
-/

/-! ## A164170.P15759810727066500522

`A172471(∑[∑[A149876(n)]])`
-/

namespace A164170.P15759810727066500522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149876 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164170.P15759810727066500522

/-! ## A164170.P15488799278579473914

`A003056(A050183(n)+1)+n`
-/

namespace A164170.P15488799278579473914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A050183 n + 1).toNat + (n : ℤ)

end

end A164170.P15488799278579473914

/-! ## A164170.P8304075177251202008

`A028310(n)+A003056(A050183(n))`
-/

namespace A164170.P8304075177251202008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + A003056 (A050183 n).toNat

end

end A164170.P8304075177251202008

/-! ## A164170.P9001999307714403915

`A316355(n)+A073188(A071724(n))`
-/

namespace A164170.P9001999307714403915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 n + A073188 (A071724 n).toNat

end

end A164170.P9001999307714403915

/-! ## A164170.P14653349960115254407

`A094373(n)+∑[A001221(A096752(n))]`
-/

namespace A164170.P14653349960115254407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A096752 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164170.P14653349960115254407

/-!
# A164171: Number of binary strings of length n with equal numbers of 0010 and 1011 substrings.

The programs for A164171, there is no canonical definition to state claims against.
-/

/-! ## A164171.P13800862490261706780

`A055086(A302287(n))+n`
-/

namespace A164171.P13800862490261706780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A302287 n).toNat + (n : ℤ)

end

end A164171.P13800862490261706780

/-! ## A164171.P8722163010889723521

`A067086(∑[∑[A093637(n)]])`
-/

namespace A164171.P8722163010889723521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093637 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067086 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164171.P8722163010889723521

/-! ## A164171.P14535010255273829589

`∑[A100617(A082733(n+1))]`
-/

namespace A164171.P14535010255273829589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (A082733 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164171.P14535010255273829589

/-!
# A164172: Number of binary strings of length n with equal numbers of 0010 and 1100 substrings.

The programs for A164172, there is no canonical definition to state claims against.
-/

/-! ## A164172.P15523052521831297760

`∑[A006670(∑[A056323(n)])]`
-/

namespace A164172.P15523052521831297760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056323 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006670 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164172.P15523052521831297760

/-!
# A164173: Number of binary strings of length n with equal numbers of 0010 and 1101 substrings.

The programs for A164173, there is no canonical definition to state claims against.
-/

/-! ## A164173.P5401848267443155482

`∑[∑[A273190(A000083(n+2))]]`
-/

namespace A164173.P5401848267443155482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A000083 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164173.P5401848267443155482

/-! ## A164173.P3910728742563308690

`2*A083277(a(n-1)²)` with `a(0)=1`
-/

namespace A164173.P3910728742563308690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A083277 (a (n - 1) ^ 2).toNat

end

end A164173.P3910728742563308690

/-! ## A164173.P8228371867219128940

`∑[A204164(A018039(n))]`
-/

namespace A164173.P8228371867219128940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A018039 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164173.P8228371867219128940

/-! ## A164173.P15199800378624934649

`A114571(A097083(n+1))`
-/

namespace A164173.P15199800378624934649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114571 (A097083 (n + 1)).toNat

end

end A164173.P15199800378624934649

/-! ## A164173.P1606036863411061544

`A105223(A200464(n+1))`
-/

namespace A164173.P1606036863411061544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105223 (A200464 (n + 1)).toNat

end

end A164173.P1606036863411061544

/-!
# A164174: Number of binary strings of length n with equal numbers of 0011 and 0101 substrings.

The programs for A164174, there is no canonical definition to state claims against.
-/

/-! ## A164174.P8693925405636627564

`A004788(2^(n+1)-2*n)+∑[ceil(n/2)]`
-/

namespace A164174.P8693925405636627564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004788 (2 ^ (n + 1) - 2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164174.P8693925405636627564

/-! ## A164174.P8984941778721776761

`A003056(floor((11/4)^n)+floor((11/4)^n))`
-/

namespace A164174.P8984941778721776761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (⌊((11 : ℚ) / 4) ^ n⌋ + ⌊((11 : ℚ) / 4) ^ n⌋).toNat

end

end A164174.P8984941778721776761

/-! ## A164174.P2135828947265824078

`A002024(A292549(n))`
-/

namespace A164174.P2135828947265824078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A292549 n).toNat

end

end A164174.P2135828947265824078

/-! ## A164174.P16665630235804135099

`A002024(A316411(n))`
-/

namespace A164174.P16665630235804135099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A316411 (n + 10)).toNat

end

end A164174.P16665630235804135099

/-! ## A164174.P4793341621583012338

`A235963(A134396(n))`
-/

namespace A164174.P4793341621583012338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A134396 n).toNat

end

end A164174.P4793341621583012338

/-!
# A164175: Number of binary strings of length n with equal numbers of 0011 and 1100 substrings.

The programs for A164175, there is no canonical definition to state claims against.
-/

/-! ## A164175.P13992821090394252400

`A004074(A198275(n))+1`
-/

namespace A164175.P13992821090394252400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004074 (A198275 n).toNat + 1

end

end A164175.P13992821090394252400

/-! ## A164175.P7579668694641495574

`A201997(A217282(n))+a(n-1)` with `a(0)=1`
-/

namespace A164175.P7579668694641495574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A201997 (A217282 n).toNat + a (n - 1)

end

end A164175.P7579668694641495574

/-! ## A164175.P2677252658787117043

`A161205(A088218(n)+A000292(n))`
-/

namespace A164175.P2677252658787117043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A088218 n + A000292 n).toNat

end

end A164175.P2677252658787117043

/-! ## A164175.P17059933991286846065

`A161205(A088218(n)+A000326(n))`
-/

namespace A164175.P17059933991286846065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A088218 n + A000326 n).toNat

end

end A164175.P17059933991286846065

/-! ## A164175.P15966097224037238741

`A304943(A082307(n))+A016029(n+1)`
-/

namespace A164175.P15966097224037238741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304943 (A082307 n).toNat + A016029 (n + 1)

end

end A164175.P15966097224037238741

/-!
# A164176: Number of binary strings of length n with equal numbers of 0101 and 1010 substrings.

The programs for A164176, there is no canonical definition to state claims against.
-/

/-! ## A164176.P1957054743298000795

`A020639(A000984(n))*A087221(2*n)`
-/

namespace A164176.P1957054743298000795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000984 n).toNat * A087221 (2 * n)

end

end A164176.P1957054743298000795

/-! ## A164176.P13428074789048872817

`A161205(A150041(n))`
-/

namespace A164176.P13428074789048872817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A150041 n).toNat

end

end A164176.P13428074789048872817

/-! ## A164176.P8612212311609155190

`A161205(A150043(n))`
-/

namespace A164176.P8612212311609155190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A150043 n).toNat

end

end A164176.P8612212311609155190

/-! ## A164176.P5970094279981071421

`A161205(A048118(n+1))`
-/

namespace A164176.P5970094279981071421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A048118 (n + 1)).toNat

end

end A164176.P5970094279981071421

/-! ## A164176.P1138147359053413581

`A321578(A148682(n+1))`
-/

namespace A164176.P1138147359053413581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321578 (A148682 (n + 1)).toNat

end

end A164176.P1138147359053413581

/-!
# A164177: Number of binary strings of length n with equal numbers of 0110 and 1001 substrings.

The programs for A164177, there is no canonical definition to state claims against.
-/

/-! ## A164177.P12164249693551963383

`Δ[A226454(∑[A089170(n)])]`
-/

namespace A164177.P12164249693551963383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089170 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226454 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164177.P12164249693551963383

/-! ## A164177.P10293674316000669253

`Δ[A226454(A061497(n+1))]`
-/

namespace A164177.P10293674316000669253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226454 (A061497 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164177.P10293674316000669253

/-! ## A164177.P9196059953225811197

`Δ[A226454(A225891(n+1))]`
-/

namespace A164177.P9196059953225811197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226454 (A225891 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164177.P9196059953225811197

/-! ## A164177.P10654636940728422817

`Δ[A226454(A089170(n)+n)]`
-/

namespace A164177.P10654636940728422817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226454 (A089170 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164177.P10654636940728422817

/-! ## A164177.P17870956044114166055

`A161205(A071717(n))`
-/

namespace A164177.P17870956044114166055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A071717 n).toNat

end

end A164177.P17870956044114166055

/-!
# A164178: Number of binary strings of length n with equal numbers of 00000 and 00001 substrings.

The programs for A164178, there is no canonical definition to state claims against.
-/

/-! ## A164178.P1295488505420235540

`A038567(A151290(n))-1`
-/

namespace A164178.P1295488505420235540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A151290 n).toNat - 1

end

end A164178.P1295488505420235540

/-! ## A164178.P4142546304611258400

`A100196(2*A002387(n)+n)`
-/

namespace A164178.P4142546304611258400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (2 * A002387 n + (n : ℤ)).toNat

end

end A164178.P4142546304611258400

/-! ## A164178.P1060337079927724491

`A100196(A004277(round(exp(n-γ)))+n)`
-/

namespace A164178.P1060337079927724491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A004277 (SequenceMachineLib.roundAway (Real.exp ((n : ℝ) - Real.eulerMascheroniConstant))).toNat + (n : ℤ)).toNat

end

end A164178.P1060337079927724491

/-! ## A164178.P2847083292069236618

`A210021(n)-A267841(A000108(n))`
-/

namespace A164178.P2847083292069236618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210021 n - A267841 (A000108 n).toNat

end

end A164178.P2847083292069236618

/-! ## A164178.P10918485147583246159

`A100196(A002387(n)+A002387(n)+n)`
-/

namespace A164178.P10918485147583246159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A002387 n + (A002387 n + (n : ℤ))).toNat

end

end A164178.P10918485147583246159

/-!
# A164179: Number of binary strings of length n with equal numbers of 00000 and 00010 substrings.

The programs for A164179, there is no canonical definition to state claims against.
-/

/-! ## A164179.P17352456366125238615

`A100196(A261235(n)+A191653(n))`
-/

namespace A164179.P17352456366125238615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A261235 n + A191653 n).toNat

end

end A164179.P17352456366125238615

/-! ## A164179.P11999703608198210627

`A100196(A191653(n)-(1-A261235(n)))`
-/

namespace A164179.P11999703608198210627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A191653 n - (1 - A261235 n)).toNat

end

end A164179.P11999703608198210627

/-! ## A164179.P2878592478576196423

`A164183(n+1)-A157271(A171857(n+1))`
-/

namespace A164179.P2878592478576196423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164183 (n + 1) - A157271 (A171857 (n + 1)).toNat

end

end A164179.P2878592478576196423

/-! ## A164179.P2089940961103424967

`A100196(A165652(3*n+1)+A018035(n))`
-/

namespace A164179.P2089940961103424967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A165652 (3 * n + 1) + A018035 n).toNat

end

end A164179.P2089940961103424967

/-! ## A164179.P7459581030068990646

`A085701(A164180(n))`
-/

namespace A164179.P7459581030068990646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085701 (A164180 n).toNat

end

end A164179.P7459581030068990646

/-!
# A164180: Number of binary strings of length n with equal numbers of 00000 and 00011 substrings.

The programs for A164180, there is no canonical definition to state claims against.
-/

/-! ## A164180.P8567896022383728411

`A089074(n)+A043564(A025227(n))`
-/

namespace A164180.P8567896022383728411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089074 n + A043564 (A025227 n).toNat

end

end A164180.P8567896022383728411

/-! ## A164180.P4542395761495765105

`A202193(A134869(n+1))+∑[A004197(n)]`
-/

namespace A164180.P4542395761495765105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202193 (A134869 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164180.P4542395761495765105

/-! ## A164180.P12076445283351270931

`A274759(A133137(n+1))+A202193(A000124(n+1))-1`
-/

namespace A164180.P12076445283351270931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274759 (A133137 (n + 1)).toNat + (A202193 (A000124 (n + 1)).toNat - 1)

end

end A164180.P12076445283351270931

/-!
# A164181: Number of binary strings of length n with equal numbers of 00000 and 00100 substrings.

The programs for A164181, there is no canonical definition to state claims against.
-/

/-! ## A164181.P4104629592265153441

`∑[A331904(A247322(n+1)+1)]`
-/

namespace A164181.P4104629592265153441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331904 (A247322 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164181.P4104629592265153441

/-! ## A164181.P7893153985285523534

`∑[A002024(A148873(n))]`
-/

namespace A164181.P7893153985285523534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A148873 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164181.P7893153985285523534

/-! ## A164181.P17570168895400048927

`∑[A003056(∑[A148719(n)])]`
-/

namespace A164181.P17570168895400048927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148719 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164181.P17570168895400048927

/-! ## A164181.P11516987409910066767

`∑[A003056(∑[A148734(n)])]`
-/

namespace A164181.P11516987409910066767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148734 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164181.P11516987409910066767

/-! ## A164181.P7501258960196823874

`A185037((3-n)²)+A164182(n)`
-/

namespace A164181.P7501258960196823874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185037 ((3 - (n : ℤ)) ^ 2).toNat + A164182 n

end

end A164181.P7501258960196823874

/-!
# A164182: Number of binary strings of length n with equal numbers of 00000 and 00101 substrings.

The programs for A164182, there is no canonical definition to state claims against.
-/

/-! ## A164182.P9305608357439341151

`round(A000217(Δ[A000045(2*(n+1))])^(1/3))`
-/

namespace A164182.P9305608357439341151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000217 (f1 (n + 1) - f1 n).toNat : ℝ) ^ ((1 : ℚ) / 3 : ℝ))

end

end A164182.P9305608357439341151

/-! ## A164182.P1797297834116833099

`A189624(A025527(n+1))+A164184(n)`
-/

namespace A164182.P1797297834116833099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189624 (A025527 (n + 1)).toNat + A164184 n

end

end A164182.P1797297834116833099

/-! ## A164182.P4481091950520459645

`A100196(A097136(n))`
-/

namespace A164182.P4481091950520459645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A097136 n).toNat

end

end A164182.P4481091950520459645

/-! ## A164182.P3361374489129300959

`A100196(A097134(n)+1)`
-/

namespace A164182.P3361374489129300959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A097134 n + 1).toNat

end

end A164182.P3361374489129300959

/-! ## A164182.P8223925155861942061

`A100196(3*A001906(n)+2)`
-/

namespace A164182.P8223925155861942061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (3 * A001906 n + 2).toNat

end

end A164182.P8223925155861942061

/-!
# A164183: Number of binary strings of length n with equal numbers of 00000 and 00110 substrings.

The programs for A164183, there is no canonical definition to state claims against.
-/

/-! ## A164183.P16999060451741398715

`A164187(A187829(n+1))-A164147(n)`
-/

namespace A164183.P16999060451741398715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164187 (A187829 (n + 1)).toNat - A164147 n

end

end A164183.P16999060451741398715

/-! ## A164183.P11468834433844307572

`A316869(A035064(3*n+5))+A077596(n+1)`
-/

namespace A164183.P11468834433844307572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 (A035064 (3 * n + 5)).toNat + A077596 (n + 1)

end

end A164183.P11468834433844307572

/-! ## A164183.P17172370549566401521

`∑[A026819(∑[A143013(n)])]`
-/

namespace A164183.P17172370549566401521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143013 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164183.P17172370549566401521

/-! ## A164183.P5600668591603509413

`∑[A046155(∑[A143013(n)])]`
-/

namespace A164183.P5600668591603509413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143013 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164183.P5600668591603509413

/-! ## A164183.P3245709047115105573

`A100196(A271893(n)+A180272(n))`
-/

namespace A164183.P3245709047115105573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A271893 n + A180272 n).toNat

end

end A164183.P3245709047115105573

/-!
# A164184: Number of binary strings of length n with equal numbers of 00000 and 01001 substrings.

The programs for A164184, there is no canonical definition to state claims against.
-/

/-! ## A164184.P9047884480502256542

`A333382(A374636(n))+A164190(n)`
-/

namespace A164184.P9047884480502256542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A374636 n).toNat + A164190 n

end

end A164184.P9047884480502256542

/-! ## A164184.P8387274099268630420

`A062108(A192674(n+1))+A054898(n)`
-/

namespace A164184.P8387274099268630420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A192674 (n + 1)).toNat + A054898 n

end

end A164184.P8387274099268630420

/-! ## A164184.P2249635546714787832

`A164182(n)-A189624(A025527(n+1))`
-/

namespace A164184.P2249635546714787832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164182 n - A189624 (A025527 (n + 1)).toNat

end

end A164184.P2249635546714787832

/-! ## A164184.P15251336217171004386

`A178798(A320250(3*n+1))+A164190(n)`
-/

namespace A164184.P15251336217171004386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A320250 (3 * n + 1)).toNat + A164190 n

end

end A164184.P15251336217171004386

/-! ## A164184.P12418048791889008488

`A001462(A017928(n))`
-/

namespace A164184.P12418048791889008488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A017928 n).toNat

end

end A164184.P12418048791889008488

/-!
# A164185: Number of binary strings of length n with equal numbers of 00000 and 01010 substrings.

The programs for A164185, there is no canonical definition to state claims against.
-/

/-! ## A164185.P10755654925369177449

`∑[A185283(A047150(n²+(n+1)²))]`
-/

namespace A164185.P10755654925369177449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A047150 (n ^ 2 + (n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164185.P10755654925369177449

/-! ## A164185.P2412986385332545163

`A288622(A058312(n+1))+A275544(n)`
-/

namespace A164185.P2412986385332545163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288622 (A058312 (n + 1)).toNat + A275544 n

end

end A164185.P2412986385332545163

/-! ## A164185.P12635679994617661777

`A194806(A194820(n+1)+A005183(n)-1)`
-/

namespace A164185.P12635679994617661777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194806 (A194820 (n + 1) + (A005183 n - 1)).toNat

end

end A164185.P12635679994617661777

/-! ## A164185.P8369908576352454759

`∑[A280194(A087051(n))]+3%A226762(n+1)`
-/

namespace A164185.P8369908576352454759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280194 (A087051 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.tmod 3 (A226762 (n + 1))

end

end A164185.P8369908576352454759

/-! ## A164185.P17723218063474894893

`A085701(A164189(n))`
-/

namespace A164185.P17723218063474894893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085701 (A164189 n).toNat

end

end A164185.P17723218063474894893

/-!
# A164186: Number of binary strings of length n with equal numbers of 00000 and 01011 substrings.

The programs for A164186, there is no canonical definition to state claims against.
-/

/-! ## A164186.P6861406656315615314

`∑[A194640(A289920(n))]`
-/

namespace A164186.P6861406656315615314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A289920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164186.P6861406656315615314

/-! ## A164186.P8870677978397896631

`A164188(n)+A125005(A058335(n+1))`
-/

namespace A164186.P8870677978397896631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164188 n + A125005 (A058335 (n + 1)).toNat

end

end A164186.P8870677978397896631

/-! ## A164186.P11529722938531177607

`A178798(A048816(n+1))+A164188(n)`
-/

namespace A164186.P11529722938531177607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A048816 (n + 1)).toNat + A164188 n

end

end A164186.P11529722938531177607

/-! ## A164186.P297622306950327122

`∑[A000006(∑[A317879(n+1)])]`
-/

namespace A164186.P297622306950327122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317879 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164186.P297622306950327122

/-!
# A164187: Number of binary strings of length n with equal numbers of 00000 and 01110 substrings.

The programs for A164187, there is no canonical definition to state claims against.
-/

/-! ## A164187.P13800471411142552865

`A011782(n)+A003056(A183112(n))`
-/

namespace A164187.P13800471411142552865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + A003056 (A183112 n).toNat

end

end A164187.P13800471411142552865

/-! ## A164187.P799756474145591712

`A178798(A079500(n))+A164190(n)`
-/

namespace A164187.P799756474145591712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A079500 n).toNat + A164190 n

end

end A164187.P799756474145591712

/-! ## A164187.P1058388418301908308

`A178798(A108351(n))+A164190(n)`
-/

namespace A164187.P1058388418301908308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A108351 n).toNat + A164190 n

end

end A164187.P1058388418301908308

/-! ## A164187.P16135567297511820502

`A164190(n)-A007814(A018031(n))`
-/

namespace A164187.P16135567297511820502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164190 n - A007814 (A018031 n).toNat

end

end A164187.P16135567297511820502

/-! ## A164187.P507561050770182707

`A164186(n)-A178780(A077868(n))`
-/

namespace A164187.P507561050770182707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164186 n - A178780 (A077868 n).toNat

end

end A164187.P507561050770182707

/-!
# A164188: Number of binary strings of length n with equal numbers of 00000 and 10001 substrings.

The programs for A164188, there is no canonical definition to state claims against.
-/

/-! ## A164188.P13387598067222525225

`A164186(n)-A125005(A058335(n+1))`
-/

namespace A164188.P13387598067222525225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164186 n - A125005 (A058335 (n + 1)).toNat

end

end A164188.P13387598067222525225

/-! ## A164188.P15071033855676770224

`A164186(n)-A178798(A320250(3*n+1))`
-/

namespace A164188.P15071033855676770224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164186 n - A178798 (A320250 (3 * n + 1)).toNat

end

end A164188.P15071033855676770224

/-! ## A164188.P2861620324425439965

`floor(A241304(2*(n+1))/A241308(3*(n+1)))`
-/

namespace A164188.P2861620324425439965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A241304 (2 * (n + 1)) : ℚ) / (A241308 (3 * (n + 1)) : ℚ)⌋

end

end A164188.P2861620324425439965

/-! ## A164188.P7170884815341133570

`A166861(n+1)+A033665(A090882(n+1))`
-/

namespace A164188.P7170884815341133570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166861 (n + 1) + A033665 (A090882 (n + 1)).toNat

end

end A164188.P7170884815341133570

/-!
# A164189: Number of binary strings of length n with equal numbers of 00000 and 10101 substrings.

The programs for A164189, there is no canonical definition to state claims against.
-/

/-! ## A164189.P11449335055391294510

`A054846(Δ[Δ[A000071(n+1)²]])`
-/

namespace A164189.P11449335055391294510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (f1 (n + 1) - f1 n).toNat

end

end A164189.P11449335055391294510

/-! ## A164189.P11340787925683197823

`A344614(A043315(n+1))-floor(n/6)`
-/

namespace A164189.P11340787925683197823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344614 (A043315 (n + 1)).toNat - ⌊(n : ℚ) / 6⌋

end

end A164189.P11340787925683197823

/-! ## A164189.P13350729412186812173

`A363723(A038140(n+1))+A164183(n)`
-/

namespace A164189.P13350729412186812173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363723 (A038140 (n + 1)).toNat + A164183 n

end

end A164189.P13350729412186812173

/-!
# A164190: Number of binary strings of length n with equal numbers of 00000 and 11011 substrings.

The programs for A164190, there is no canonical definition to state claims against.
-/

/-! ## A164190.P847150073024555998

`A062108(A192674(n+1))`
-/

namespace A164190.P847150073024555998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A192674 (n + 1)).toNat

end

end A164190.P847150073024555998

/-! ## A164190.P8690512820796105074

`A164182(n)-(A189624(A025527(n+1))+A054898(n))`
-/

namespace A164190.P8690512820796105074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164182 n - (A189624 (A025527 (n + 1)).toNat + A054898 n)

end

end A164190.P8690512820796105074

/-! ## A164190.P11142098328287805964

`A164184(n)-A054898(n)^A062108(A025527(n+1))`
-/

namespace A164190.P11142098328287805964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164184 n : ℚ) - (A054898 n : ℚ) ^ (A062108 (A025527 (n + 1)).toNat : ℤ)

end

end A164190.P11142098328287805964

/-! ## A164190.P15922594139747096321

`A164184(n)-A189624(A025527(n+1)^A054898(n))`
-/

namespace A164190.P15922594139747096321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164184 n - A189624 (SequenceMachineLib.roundAway ((A025527 (n + 1) : ℚ) ^ (A054898 n : ℤ))).toNat

end

end A164190.P15922594139747096321

/-!
# A164191: Number of binary strings of length n with equal numbers of 00000 and 11111 substrings.

The programs for A164191, there is no canonical definition to state claims against.
-/

/-! ## A164191.P14646533531268945324

`A347698(A193147(n))+∑[A280194(n)]`
-/

namespace A164191.P14646533531268945324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280194 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347698 (A193147 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164191.P14646533531268945324

/-! ## A164191.P9514803031374524243

`A347520(A001592(n+1))+∑[A280194(n)]`
-/

namespace A164191.P9514803031374524243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280194 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (A001592 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164191.P9514803031374524243

/-!
# A164192: Number of binary strings of length n with equal numbers of 00001 and 00010 substrings.

The programs for A164192, there is no canonical definition to state claims against.
-/

/-! ## A164192.P8698958688075027545

`A164212(A046469(n))`
-/

namespace A164192.P8698958688075027545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164212 (A046469 n).toNat

end

end A164192.P8698958688075027545

/-! ## A164192.P10933270100224543811

`A164212(A087036(n))`
-/

namespace A164192.P10933270100224543811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164212 (A087036 n).toNat

end

end A164192.P10933270100224543811

/-! ## A164192.P14227402643417495218

`A164212(A087051(n))`
-/

namespace A164192.P14227402643417495218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164212 (A087051 n).toNat

end

end A164192.P14227402643417495218

/-! ## A164192.P3071831315081155902

`A164212(A004893(n+1))`
-/

namespace A164192.P3071831315081155902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164212 (A004893 (n + 1)).toNat

end

end A164192.P3071831315081155902

/-! ## A164192.P4394343574857737592

`A164212(A004904(n+1))`
-/

namespace A164192.P4394343574857737592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164212 (A004904 (n + 1)).toNat

end

end A164192.P4394343574857737592

/-!
# A164194: Number of binary strings of length n with equal numbers of 00001 and 00100 substrings.

The programs for A164194, there is no canonical definition to state claims against.
-/

/-! ## A164194.P5111556426609611930

`2*A164231(A062399(n))-A164251(n)`
-/

namespace A164194.P5111556426609611930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164231 (A062399 n).toNat - A164251 n

end

end A164194.P5111556426609611930

/-! ## A164194.P15679114772598155453

`2*A164231(n)-A164251(A351870(n))`
-/

namespace A164194.P15679114772598155453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164231 n - A164251 (A351870 n).toNat

end

end A164194.P15679114772598155453

/-! ## A164194.P13687984965903137457

`2*A164231(n)-A164251(n)%p?[A000032(n)]`
-/

namespace A164194.P13687984965903137457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164231 n - Int.tmod (A164251 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A164194.P13687984965903137457

/-! ## A164194.P9196847905180863413

`A164231(A062399(n))+A164231(n)-A164251(n)`
-/

namespace A164194.P9196847905180863413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164231 (A062399 n).toNat + (A164231 n - A164251 n)

end

end A164194.P9196847905180863413

/-! ## A164194.P15691340201692867676

`A164231(n)-(A164251(n)-A164231(A351870(n)))`
-/

namespace A164194.P15691340201692867676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164231 n - (A164251 n - A164231 (A351870 n).toNat)

end

end A164194.P15691340201692867676

/-!
# A164195: Number of binary strings of length n with equal numbers of 00001 and 00101 substrings.

The programs for A164195, there is no canonical definition to state claims against.
-/

/-! ## A164195.P13967329102477235741

`A142150(A164256(n)+A164209(n))`
-/

namespace A164195.P13967329102477235741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A164256 n + A164209 n).toNat

end

end A164195.P13967329102477235741

/-! ## A164195.P15070895755575814100

`and(A164196(A087051(n)), A164232(n))`
-/

namespace A164195.P15070895755575814100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A164196 (A087051 n).toNat) (A164232 n)

end

end A164195.P15070895755575814100

/-! ## A164195.P17113306226446325892

`and(A164217(n), A164232(A087051(n)))`
-/

namespace A164195.P17113306226446325892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A164217 n) (A164232 (A087051 n).toNat)

end

end A164195.P17113306226446325892

/-! ## A164195.P7210063564595480701

`A054846(A050231(n+1)+A005013(2*(n+1)))`
-/

namespace A164195.P7210063564595480701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A050231 (n + 1) + A005013 (2 * (n + 1))).toNat

end

end A164195.P7210063564595480701

/-! ## A164195.P6414858604912511061

`A085701(A164196(n))`
-/

namespace A164195.P6414858604912511061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085701 (A164196 n).toNat

end

end A164195.P6414858604912511061

/-!
# A164196: Number of binary strings of length n with equal numbers of 00001 and 00110 substrings.

The programs for A164196, there is no canonical definition to state claims against.
-/

/-! ## A164196.P3576516666444993772

`A164217(A062399(n))`
-/

namespace A164196.P3576516666444993772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164217 (A062399 n).toNat

end

end A164196.P3576516666444993772

/-! ## A164196.P430961599154335809

`A164217(A120126(n))`
-/

namespace A164196.P430961599154335809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164217 (A120126 n).toNat

end

end A164196.P430961599154335809

/-! ## A164196.P3592660383222305259

`A164217(A351870(n))`
-/

namespace A164196.P3592660383222305259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164217 (A351870 n).toNat

end

end A164196.P3592660383222305259

/-! ## A164196.P2193911484620296465

`A164217(A004894(n+1))`
-/

namespace A164196.P2193911484620296465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164217 (A004894 (n + 1)).toNat

end

end A164196.P2193911484620296465

/-! ## A164196.P13442314790216613718

`A164217(A004905(n+1))`
-/

namespace A164196.P13442314790216613718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164217 (A004905 (n + 1)).toNat

end

end A164196.P13442314790216613718

/-!
# A164197: Number of binary strings of length n with equal numbers of 00001 and 01000 substrings.

The programs for A164197, there is no canonical definition to state claims against.
-/

/-! ## A164197.P1851549104798820017

`A164233(n)-A185284(A000045(n))`
-/

namespace A164197.P1851549104798820017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164233 n - A185284 (A000045 n).toNat

end

end A164197.P1851549104798820017

/-! ## A164197.P7554252483476097059

`A164233(n)-A185284(A047468(n+1))`
-/

namespace A164197.P7554252483476097059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164233 n - A185284 (A047468 (n + 1)).toNat

end

end A164197.P7554252483476097059

/-! ## A164197.P16054248715805754745

`A164233(n)-A185284(A152947(n+1))`
-/

namespace A164197.P16054248715805754745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164233 n - A185284 (A152947 (n + 1)).toNat

end

end A164197.P16054248715805754745

/-! ## A164197.P10984269978339124956

`A164233(n)-A185284(A357488(n+1))`
-/

namespace A164197.P10984269978339124956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164233 n - A185284 (A357488 (n + 1)).toNat

end

end A164197.P10984269978339124956

/-! ## A164197.P2267080015010527649

`A164233(n)-A185284(p?[A109680(n+4)])`
-/

namespace A164197.P2267080015010527649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164233 n - A185284 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A164197.P2267080015010527649

/-!
# A164198: Number of binary strings of length n with equal numbers of 00001 and 01001 substrings.

The programs for A164198, there is no canonical definition to state claims against.
-/

/-! ## A164198.P3192167716139013761

`A164155(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A164198.P3192167716139013761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A164155 (n - 1) + a (n - 1)

end

end A164198.P3192167716139013761

/-! ## A164198.P17161585509195198766

`∑[A164155(A004273(n)-n)]`
-/

namespace A164198.P17161585509195198766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164155 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164198.P17161585509195198766

/-! ## A164198.P629737760521666569

`∑[A164155(n-A057427(n))]`
-/

namespace A164198.P629737760521666569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164155 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164198.P629737760521666569

/-! ## A164198.P9350878269530943356

`∑[A164155(A004526(A004273(n)))]`
-/

namespace A164198.P9350878269530943356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164155 (A004526 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164198.P9350878269530943356

/-! ## A164198.P16804768791815467627

`∑[A164155(A004526(A004275(n)))]`
-/

namespace A164198.P16804768791815467627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164155 (A004526 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164198.P16804768791815467627

/-! ## A164198.P2072037152936773561

`∑[A164155(n)]+1-A164155(n)`
-/

namespace A164198.P2072037152936773561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164155 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A164155 n)

end

end A164198.P2072037152936773561

/-!
# A164199: Number of binary strings of length n with equal numbers of 00001 and 01010 substrings.

The programs for A164199, there is no canonical definition to state claims against.
-/

/-! ## A164199.P17104248967560028273

`A180649(A000013(n))+A164242(n)`
-/

namespace A164199.P17104248967560028273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180649 (A000013 n).toNat + A164242 n

end

end A164199.P17104248967560028273

/-! ## A164199.P5106450783041201344

`A164237(n)+A025469(A185334(n))`
-/

namespace A164199.P5106450783041201344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164237 n + A025469 (A185334 n).toNat

end

end A164199.P5106450783041201344

/-! ## A164199.P13365806435355128699

`A164223(n)+A135907(A212998(n))`
-/

namespace A164199.P13365806435355128699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164223 n + A135907 (A212998 n).toNat

end

end A164199.P13365806435355128699

/-! ## A164199.P17143351980216827084

`A085701(A164223(n))`
-/

namespace A164199.P17143351980216827084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085701 (A164223 n).toNat

end

end A164199.P17143351980216827084

/-! ## A164199.P1488864851259101541

`A055086(A228404(n))`
-/

namespace A164199.P1488864851259101541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A228404 n).toNat

end

end A164199.P1488864851259101541

