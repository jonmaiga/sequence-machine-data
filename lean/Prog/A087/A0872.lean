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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
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
# A087200: a(n) is the smallest m such that m > A005235(n) and A002110(n)+m is prime.

The programs for A087200, there is no canonical definition to state claims against.
-/

/-! ## A087200.P16308048557016575873

`A097444(n+2)-∏[p?[A259153(n)]]`
-/

namespace A087200.P16308048557016575873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097444 (n + 2) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A087200.P16308048557016575873

/-! ## A087200.P15905068501958030437

`A097444(n+2)-∏[sqrt(A001248(n+1))]`
-/

namespace A087200.P15905068501958030437
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A097444 (n + 2) : ℝ) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A087200.P15905068501958030437

/-! ## A087200.P9317283344290125444

`A097444(n+2)-∏[A014692(n+1)+n]`
-/

namespace A087200.P9317283344290125444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097444 (n + 2) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A087200.P9317283344290125444

/-! ## A087200.P13632045406823793104

`A097444(n+2)-∏[A104192(n+1)+A000010(n+1)]`
-/

namespace A087200.P13632045406823793104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104192 (n + 1) + A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097444 (n + 2) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A087200.P13632045406823793104

/-! ## A087200.P2774597590779716501

`A097444(n+2)-∏[A022797(n+1)-A018252(n+1)]`
-/

namespace A087200.P2774597590779716501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022797 (n + 1) - A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097444 (n + 2) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A087200.P2774597590779716501

/-!
# A087204: Period 6: repeat [2, 1, -1, -2, -1, 1].

The programs for A087204, the canonical program `A087204.P12496729143361995151` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087204 has offset 0).

The definition of A087204 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087204.P12496729143361995151

`-a(n-3)` with `a(0)=2, a(1)=1, a(2)=-1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087204

/-- `-a(n-3)` -/
def P12496729143361995151.Spec : Prop :=
  ∀ n, P12496729143361995151.a n = A087204 n

theorem P12496729143361995151.correct : P12496729143361995151.Spec := by
  intro n
  simp only [A087204]

end A087204

/-!
# A087205: a(n) = -2*a(n-1) + 4*a(n-2), a(0)=1, a(1)=2.

The programs for A087205, the canonical program `A087205.P16043813412561213756` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087205 has offset 0).

The definition of A087205 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-2*a(n-1)+4*a(n-2)` (program `A087205.P16043813412561213756`, by `A087205.P16043813412561213756.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A087205.P16043813412561213756

`-2*a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087205

/-- `-2*a(n-1)+4*a(n-2)` -/
def P16043813412561213756.Spec : Prop :=
  ∀ n, P16043813412561213756.a n = A087205 n

theorem P16043813412561213756.correct : P16043813412561213756.Spec := by
  intro n
  simp only [A087205]

end A087205

/-! ## A087205.P8692516244393102850

`(-1)^(n+1)*A319196(n+1)`
-/

namespace A087205.P8692516244393102850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * A319196 (n + 1)

end

end A087205.P8692516244393102850

namespace A087205

/-- `(-1)^(n+1)*A319196(n+1)` -/
def P8692516244393102850.Spec : Prop :=
  ∀ n, P8692516244393102850.a n = A087205 n

end A087205

/-! ## A087205.P5794268029212326190

`ogf((1+4x)/(1+2x-4x^2))`
-/

namespace A087205.P5794268029212326190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, 2, -4] n

end

end A087205.P5794268029212326190

namespace A087205

/-- `ogf((1+4x)/(1+2x-4x^2))` -/
def P5794268029212326190.Spec : Prop :=
  ∀ n, P5794268029212326190.a n = A087205 n

end A087205

/-! ## A087205.P1620110991704576118

`8*(a(n-2)-a(n-3))` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A087205.P1620110991704576118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 0] fun n a =>
  8 * (a (n - 2) - a (n - 3))

end

end A087205.P1620110991704576118

namespace A087205

/-- `8*(a(n-2)-a(n-3))` -/
def P1620110991704576118.Spec : Prop :=
  ∀ n, P1620110991704576118.a n = A087205 n

end A087205

/-! ## A087205.P5530982455661811315

`(-2)^n*A152163(n)`
-/

namespace A087205.P5530982455661811315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n * A152163 n

end

end A087205.P5530982455661811315

namespace A087205

/-- `(-2)^n*A152163(n)` -/
def P5530982455661811315.Spec : Prop :=
  ∀ n, P5530982455661811315.a n = A087205 n

end A087205

/-! ## A087205.P11013720040777005641

`(2-A112469(n))*2^n`
-/

namespace A087205.P11013720040777005641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A112469 n) * (2 ^ n : ℤ)

end

end A087205.P11013720040777005641

namespace A087205

/-- `(2-A112469(n))*2^n` -/
def P11013720040777005641.Spec : Prop :=
  ∀ n, P11013720040777005641.a n = A087205 n

end A087205

/-! ## A087205.P2115647296517646489

`a(n-1)+a(n-1)-A086344(n)` with `a(0)=1`
-/

namespace A087205.P2115647296517646489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) - A086344 n)

end

end A087205.P2115647296517646489

namespace A087205

/-- `a(n-1)+a(n-1)-A086344(n)` -/
def P2115647296517646489.Spec : Prop :=
  ∀ n, P2115647296517646489.a n = A087205 n

end A087205

/-! ## A087205.P5261145169972617233

`A166444(2*n+1)/A166444(n+1)*A051792(2*(n+1))`
-/

namespace A087205.P5261145169972617233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166444 (2 * n + 1) : ℚ) / (A166444 (n + 1) : ℚ) * (A051792 (2 * (n + 1)) : ℚ)

end

end A087205.P5261145169972617233

namespace A087205

/-- `A166444(2*n+1)/A166444(n+1)*A051792(2*(n+1))` -/
def P5261145169972617233.Spec : Prop :=
  ∀ n, P5261145169972617233.a n = (A087205 n : ℚ)

end A087205

/-!
# A087206: a(n) = 2*a(n-1) + 4*a(n-2); with a(0)=1, a(1)=4.

The programs for A087206, the canonical program `A087206.P3833868936067658996` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087206 has offset 0).

The definition of A087206 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+4*a(n-2)` (program `A087206.P3833868936067658996`, by `A087206.P3833868936067658996.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A087206.P3833868936067658996

`2*a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087206

/-- `2*a(n-1)+4*a(n-2)` -/
def P3833868936067658996.Spec : Prop :=
  ∀ n, (P3833868936067658996.a n : ℤ) = A087206 n

theorem P3833868936067658996.correct : P3833868936067658996.Spec := by
  intro n
  simp only [A087206]

end A087206

/-! ## A087206.P4557963806857607048

`1/2*A063727(n+1)`
-/

namespace A087206.P4557963806857607048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A063727 (n + 1) : ℚ)

end

end A087206.P4557963806857607048

namespace A087206

/-- `1/2*A063727(n+1)` -/
def P4557963806857607048.Spec : Prop :=
  ∀ n, P4557963806857607048.a n = (A087206 n : ℚ)

end A087206

/-! ## A087206.P18039960087661791736

`ogf((1+2x)/(1-2x-4x^2))`
-/

namespace A087206.P18039960087661791736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -2, -4] n

end

end A087206.P18039960087661791736

namespace A087206

/-- `ogf((1+2x)/(1-2x-4x^2))` -/
def P18039960087661791736.Spec : Prop :=
  ∀ n, P18039960087661791736.a n = A087206 n

end A087206

/-! ## A087206.P1014585628961873115

`2*(3*a(n-2)-(a(n-2)-a(n-1)))` with `a(0)=1, a(1)=4`
-/

namespace A087206.P1014585628961873115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * (3 * a (n - 2) - (a (n - 2) - a (n - 1)))

end

end A087206.P1014585628961873115

namespace A087206

/-- `2*(3*a(n-2)-(a(n-2)-a(n-1)))` -/
def P1014585628961873115.Spec : Prop :=
  ∀ n, P1014585628961873115.a n = A087206 n

end A087206

/-! ## A087206.P9020331792079100956

`abs(A152174(n))`
-/

namespace A087206.P9020331792079100956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A152174 n|

end

end A087206.P9020331792079100956

namespace A087206

/-- `abs(A152174(n))` -/
def P9020331792079100956.Spec : Prop :=
  ∀ n, P9020331792079100956.a n = A087206 n

end A087206

/-! ## A087206.P6442551262673348547

`Δ[A081057(n)]`
-/

namespace A087206.P6442551262673348547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087206.P6442551262673348547

namespace A087206

/-- `Δ[A081057(n)]` -/
def P6442551262673348547.Spec : Prop :=
  ∀ n, P6442551262673348547.a n = A087206 n

end A087206

/-! ## A087206.P2366329395882569834

`A279245(2*n)`
-/

namespace A087206.P2366329395882569834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279245 (2 * n)

end

end A087206.P2366329395882569834

namespace A087206

/-- `A279245(2*n)` -/
def P2366329395882569834.Spec : Prop :=
  ∀ n, P2366329395882569834.a n = A087206 n

end A087206

/-! ## A087206.P17218010983506272073

`A279312(2*n)`
-/

namespace A087206.P17218010983506272073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279312 (2 * n)

end

end A087206.P17218010983506272073

namespace A087206

/-- `A279312(2*n)` -/
def P17218010983506272073.Spec : Prop :=
  ∀ n, P17218010983506272073.a n = A087206 n

end A087206

/-! ## A087206.P1460693003406435818

`abs(Δ[A086344(n)])`
-/

namespace A087206.P1460693003406435818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086344 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A087206.P1460693003406435818

namespace A087206

/-- `abs(Δ[A086344(n)])` -/
def P1460693003406435818.Spec : Prop :=
  ∀ n, P1460693003406435818.a n = A087206 n

end A087206

/-! ## A087206.P2719682640936882382

`A063727(n+1)/2`
-/

namespace A087206.P2719682640936882382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063727 (n + 1) : ℚ) / 2

end

end A087206.P2719682640936882382

namespace A087206

/-- `A063727(n+1)/2` -/
def P2719682640936882382.Spec : Prop :=
  ∀ n, P2719682640936882382.a n = (A087206 n : ℚ)

end A087206

/-! ## A087206.P1710984751163586214

`A085449(n+2)/2`
-/

namespace A087206.P1710984751163586214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085449 (n + 2) : ℚ) / 2

end

end A087206.P1710984751163586214

namespace A087206

/-- `A085449(n+2)/2` -/
def P1710984751163586214.Spec : Prop :=
  ∀ n, P1710984751163586214.a n = (A087206 n : ℚ)

end A087206

/-! ## A087206.P7047307330582260030

`A279312(Δ[n²])/2`
-/

namespace A087206.P7047307330582260030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279312 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A087206.P7047307330582260030

namespace A087206

/-- `A279312(Δ[n²])/2` -/
def P7047307330582260030.Spec : Prop :=
  ∀ n, P7047307330582260030.a n = (A087206 n : ℚ)

end A087206

/-! ## A087206.P13693693481179816724

`Δ[A014335(n+2)/2]`
-/

namespace A087206.P13693693481179816724
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014335 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087206.P13693693481179816724

namespace A087206

/-- `Δ[A014335(n+2)/2]` -/
def P13693693481179816724.Spec : Prop :=
  ∀ n, P13693693481179816724.a n = (A087206 n : ℚ)

end A087206

/-! ## A087206.P17165631314915862809

`A171648(2*n+3)/2`
-/

namespace A087206.P17165631314915862809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171648 (2 * n + 3) : ℚ) / 2

end

end A087206.P17165631314915862809

namespace A087206

/-- `A171648(2*n+3)/2` -/
def P17165631314915862809.Spec : Prop :=
  ∀ n, P17165631314915862809.a n = (A087206 n : ℚ)

end A087206

/-! ## A087206.P15959618431508870990

`2^n*A000045(n+2)`
-/

namespace A087206.P15959618431508870990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000045 (n + 2)

end

end A087206.P15959618431508870990

namespace A087206

/-- `2^n*A000045(n+2)` -/
def P15959618431508870990.Spec : Prop :=
  ∀ n, P15959618431508870990.a n = A087206 n

end A087206

/-! ## A087206.P10065458874312846602

`2^n*record[Δ[A000045(n)]]`
-/

namespace A087206.P10065458874312846602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087206.P10065458874312846602

namespace A087206

/-- `2^n*record[Δ[A000045(n)]]` -/
def P10065458874312846602.Spec : Prop :=
  ∀ n, P10065458874312846602.a n = A087206 n

end A087206

/-! ## A087206.P8974853812344269589

`Δ[A000045(n+3)]/2^-n`
-/

namespace A087206.P8974853812344269589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A087206.P8974853812344269589

namespace A087206

/-- `Δ[A000045(n+3)]/2^-n` -/
def P8974853812344269589.Spec : Prop :=
  ∀ n, P8974853812344269589.a n = (A087206 n : ℚ)

end A087206

/-! ## A087206.P2222966889142573132

`2^n*record[A000045(abs(1-n))]`
-/

namespace A087206.P2222966889142573132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087206.P2222966889142573132

namespace A087206

/-- `2^n*record[A000045(abs(1-n))]` -/
def P2222966889142573132.Spec : Prop :=
  ∀ n, P2222966889142573132.a n = A087206 n

end A087206

/-! ## A087206.P13996475005656112860

`∑[2^(n-1)*record[A000032(n)]]`
-/

namespace A087206.P13996475005656112860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087206.P13996475005656112860

namespace A087206

/-- `∑[2^(n-1)*record[A000032(n)]]` -/
def P13996475005656112860.Spec : Prop :=
  ∀ n, P13996475005656112860.a n = (A087206 n : ℚ)

end A087206

/-! ## A087206.P9621152237600285033

`Δ[2^n/5*A000032(n+2)]`
-/

namespace A087206.P9621152237600285033
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 5 * (A000032 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087206.P9621152237600285033

namespace A087206

/-- `Δ[2^n/5*A000032(n+2)]` -/
def P9621152237600285033.Spec : Prop :=
  ∀ n, P9621152237600285033.a n = (A087206 n : ℚ)

end A087206

/-!
# A087207: A binary representation of the primes that divide a number, shown in decimal.

The programs for A087207, the canonical program `A087207.P12536008426233777954` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087207 has offset 1).

The definition of A087207 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A048675, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A087207.P12536008426233777954

`A048675(A007947(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A087207

/-- `A048675(A007947(n+1))` -/
def P12536008426233777954.Spec : Prop :=
  ∀ n, P12536008426233777954.a n = A087207 (n + 1)

theorem P12536008426233777954.correct : P12536008426233777954.Spec := by
  intro n
  simp only [A087207, Nat.add_sub_cancel]

end A087207

/-! ## A087207.P11502774318173954539

`2^(A055396(n+1)-1)+a(A028234(n+1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A087207.P11502774318173954539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 : ℚ) ^ (A055396 (n + 1) - 1 : ℤ) + a (A028234 (n + 1) - 1).toNat

end

end A087207.P11502774318173954539

namespace A087207

/-- `2^(A055396(n+1)-1)+a(A028234(n+1)-1)` -/
def P11502774318173954539.Spec : Prop :=
  ∀ n, P11502774318173954539.a n = (A087207 (n + 1) : ℚ)

end A087207

/-! ## A087207.P18306598900717130858

`∑{p}[n+1, A048675(#)]`
-/

namespace A087207.P18306598900717130858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A048675 p

end

end A087207.P18306598900717130858

namespace A087207

/-- `∑{p}[n+1, A048675(#)]` -/
def P18306598900717130858.Spec : Prop :=
  ∀ n, P18306598900717130858.a n = A087207 (n + 1)

end A087207

/-! ## A087207.P6460740884011556584

`∑{p}[n+1, A048676(#)]`
-/

namespace A087207.P6460740884011556584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A048676 p

end

end A087207.P6460740884011556584

namespace A087207

/-- `∑{p}[n+1, A048676(#)]` -/
def P6460740884011556584.Spec : Prop :=
  ∀ n, P6460740884011556584.a n = A087207 (n + 1)

end A087207

/-! ## A087207.P550995263596481812

`∑{p}[n+1, A156552(#)]`
-/

namespace A087207.P550995263596481812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A156552 p

end

end A087207.P550995263596481812

namespace A087207

/-- `∑{p}[n+1, A156552(#)]` -/
def P550995263596481812.Spec : Prop :=
  ∀ n, P550995263596481812.a n = A087207 (n + 1)

end A087207

/-! ## A087207.P17780833535760029554

`∑{p}[n+1, A233249(#)]`
-/

namespace A087207.P17780833535760029554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A233249 p

end

end A087207.P17780833535760029554

namespace A087207

/-- `∑{p}[n+1, A233249(#)]` -/
def P17780833535760029554.Spec : Prop :=
  ∀ n, P17780833535760029554.a n = A087207 (n + 1)

end A087207

/-! ## A087207.P17480683907516278559

`∑{p}[n+1, A248663(#)]`
-/

namespace A087207.P17480683907516278559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A248663 p

end

end A087207.P17480683907516278559

namespace A087207

/-- `∑{p}[n+1, A248663(#)]` -/
def P17480683907516278559.Spec : Prop :=
  ∀ n, P17480683907516278559.a n = A087207 (n + 1)

end A087207

/-! ## A087207.P15809572413999221927

`∑{p}[n+1, A277333(#)]`
-/

namespace A087207.P15809572413999221927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A277333 p

end

end A087207.P15809572413999221927

namespace A087207

/-- `∑{p}[n+1, A277333(#)]` -/
def P15809572413999221927.Spec : Prop :=
  ∀ n, P15809572413999221927.a n = A087207 (n + 1)

end A087207

/-! ## A087207.P9068109378354356230

`∑{p}[n+1, A285330(#)]`
-/

namespace A087207.P9068109378354356230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A285330 p

end

end A087207.P9068109378354356230

namespace A087207

/-- `∑{p}[n+1, A285330(#)]` -/
def P9068109378354356230.Spec : Prop :=
  ∀ n, P9068109378354356230.a n = A087207 (n + 1)

end A087207

/-! ## A087207.P482003693975026667

`∑{p}[n+1, A297108(#)]`
-/

namespace A087207.P482003693975026667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A297108 p

end

end A087207.P482003693975026667

namespace A087207

/-- `∑{p}[n+1, A297108(#)]` -/
def P482003693975026667.Spec : Prop :=
  ∀ n, P482003693975026667.a n = A087207 (n + 1)

end A087207

/-! ## A087207.P5869957602830799241

`∑{p}[n+1, A297112(#)]`
-/

namespace A087207.P5869957602830799241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A297112 p

end

end A087207.P5869957602830799241

namespace A087207

/-- `∑{p}[n+1, A297112(#)]` -/
def P5869957602830799241.Spec : Prop :=
  ∀ n, P5869957602830799241.a n = A087207 (n + 1)

end A087207

/-! ## A087207.P17079164114314592456

`∑{p}[n+1, A297166(#)]`
-/

namespace A087207.P17079164114314592456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A297166 p

end

end A087207.P17079164114314592456

namespace A087207

/-- `∑{p}[n+1, A297166(#)]` -/
def P17079164114314592456.Spec : Prop :=
  ∀ n, P17079164114314592456.a n = A087207 (n + 1)

end A087207

/-! ## A087207.P13776831772189012633

`∑{p}[n+1, A324195(#)]`
-/

namespace A087207.P13776831772189012633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A324195 p

end

end A087207.P13776831772189012633

namespace A087207

/-- `∑{p}[n+1, A324195(#)]` -/
def P13776831772189012633.Spec : Prop :=
  ∀ n, P13776831772189012633.a n = A087207 (n + 1)

end A087207

/-! ## A087207.P11103640357106443755

`∑{p}[n+1, A331740(#)]`
-/

namespace A087207.P11103640357106443755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A331740 p

end

end A087207.P11103640357106443755

namespace A087207

/-- `∑{p}[n+1, A331740(#)]` -/
def P11103640357106443755.Spec : Prop :=
  ∀ n, P11103640357106443755.a n = A087207 (n + 1)

end A087207

/-! ## A087207.P8124986544450103625

`∑{p}[n+1, A334871(#)]`
-/

namespace A087207.P8124986544450103625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A334871 p

end

end A087207.P8124986544450103625

namespace A087207

/-- `∑{p}[n+1, A334871(#)]` -/
def P8124986544450103625.Spec : Prop :=
  ∀ n, P8124986544450103625.a n = A087207 (n + 1)

end A087207

/-! ## A087207.P2165637207606977050

`∑{p}[n+1, A335426(#)]`
-/

namespace A087207.P2165637207606977050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A335426 p

end

end A087207.P2165637207606977050

namespace A087207

/-- `∑{p}[n+1, A335426(#)]` -/
def P2165637207606977050.Spec : Prop :=
  ∀ n, P2165637207606977050.a n = A087207 (n + 1)

end A087207

/-! ## A087207.P3444919738408145256

`A048675(∏{p}[n+1, #])`
-/

namespace A087207.P3444919738408145256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A087207.P3444919738408145256

namespace A087207

/-- `A048675(∏{p}[n+1, #])` -/
def P3444919738408145256.Spec : Prop :=
  ∀ n, P3444919738408145256.a n = A087207 (n + 1)

end A087207

/-! ## A087207.P3671620276299705031

`A048676(∏{p}[n+1, #])`
-/

namespace A087207.P3671620276299705031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048676 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A087207.P3671620276299705031

namespace A087207

/-- `A048676(∏{p}[n+1, #])` -/
def P3671620276299705031.Spec : Prop :=
  ∀ n, P3671620276299705031.a n = A087207 (n + 1)

end A087207

/-! ## A087207.P5392941467703968032

`A248663(∏{p}[n+1, #])`
-/

namespace A087207.P5392941467703968032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A087207.P5392941467703968032

namespace A087207

/-- `A248663(∏{p}[n+1, #])` -/
def P5392941467703968032.Spec : Prop :=
  ∀ n, P5392941467703968032.a n = A087207 (n + 1)

end A087207

/-! ## A087207.P17919544364152755668

`A285330(∏{p}[n+1, #])`
-/

namespace A087207.P17919544364152755668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285330 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A087207.P17919544364152755668

namespace A087207

/-- `A285330(∏{p}[n+1, #])` -/
def P17919544364152755668.Spec : Prop :=
  ∀ n, P17919544364152755668.a n = A087207 (n + 1)

end A087207

/-!
# A087208: Expansion of e.g.f. exp(x)/(1-x^2).

The programs for A087208, the canonical program `A087208.P16699843073652140044` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087208 has offset 0).

The definition of A087208 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087208.P16699843073652140044

`n*(n-1)*a(n-2)+1` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087208

/-- `n*(n-1)*a(n-2)+1` -/
def P16699843073652140044.Spec : Prop :=
  ∀ n, P16699843073652140044.a n = A087208 n

theorem P16699843073652140044.correct : P16699843073652140044.Spec := by
  intro n
  simp only [A087208]

end A087208

/-! ## A087208.P366132328935422965

`(A000522(n)+(-1)^n*A000166(n))/2`
-/

namespace A087208.P366132328935422965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000522 n + (-1) ^ n * A000166 n : ℚ) / 2

end

end A087208.P366132328935422965

namespace A087208

/-- `(A000522(n)+(-1)^n*A000166(n))/2` -/
def P366132328935422965.Spec : Prop :=
  ∀ n, P366132328935422965.a n = (A087208 n : ℚ)

end A087208

/-! ## A087208.P5646028469504688315

`1-(n-n²)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A087208.P5646028469504688315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - ((n : ℤ) - (n ^ 2 : ℤ)) * a (n - 2)

end

end A087208.P5646028469504688315

namespace A087208

/-- `1-(n-n²)*a(n-2)` -/
def P5646028469504688315.Spec : Prop :=
  ∀ n, P5646028469504688315.a n = A087208 n

theorem P5646028469504688315.correct : P5646028469504688315.Spec := by
  intro n
  simp only [A087208, Nat.add_sub_cancel, A087208.P5646028469504688315.a, A087208.P16699843073652140044.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A087208

/-! ## A087208.P3424257888934803058

`1-(1-n)*n*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A087208.P3424257888934803058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - (1 - (n : ℤ)) * ((n : ℤ) * a (n - 2))

end

end A087208.P3424257888934803058

namespace A087208

/-- `1-(1-n)*n*a(n-2)` -/
def P3424257888934803058.Spec : Prop :=
  ∀ n, P3424257888934803058.a n = A087208 n

theorem P3424257888934803058.correct : P3424257888934803058.Spec := by
  intro n
  simp only [A087208, Nat.add_sub_cancel, A087208.P3424257888934803058.a, A087208.P16699843073652140044.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A087208

/-! ## A087208.P8757987840581594777

`Δ[A291484(n)]`
-/

namespace A087208.P8757987840581594777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087208.P8757987840581594777

namespace A087208

/-- `Δ[A291484(n)]` -/
def P8757987840581594777.Spec : Prop :=
  ∀ n, P8757987840581594777.a n = A087208 n

end A087208

/-! ## A087208.P15828954871965458070

`A291484(n+1)-A291484(n)`
-/

namespace A087208.P15828954871965458070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291484 (n + 1) - A291484 n

end

end A087208.P15828954871965458070

namespace A087208

/-- `A291484(n+1)-A291484(n)` -/
def P15828954871965458070.Spec : Prop :=
  ∀ n, P15828954871965458070.a n = A087208 n

end A087208

/-! ## A087208.P12962958127519178252

`A114633(n)/∑[n+1]`
-/

namespace A087208.P12962958127519178252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114633 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A087208.P12962958127519178252

namespace A087208

/-- `A114633(n)/∑[n+1]` -/
def P12962958127519178252.Spec : Prop :=
  ∀ n, P12962958127519178252.a n = (A087208 n : ℚ)

end A087208

/-! ## A087208.P6033801582064038790

`Δ[A263102(n+1)]/(n+1)`
-/

namespace A087208.P6033801582064038790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263102 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)

end

end A087208.P6033801582064038790

namespace A087208

/-- `Δ[A263102(n+1)]/(n+1)` -/
def P6033801582064038790.Spec : Prop :=
  ∀ n, P6033801582064038790.a n = (A087208 n : ℚ)

end A087208

/-!
# A087210: Numbers k such that k^2 can be expressed as x^3 + y^4 with positive integers x,y and gcd(k,x,y)=1.

The programs for A087210, there is no canonical definition to state claims against.
-/

/-! ## A087210.P7238828689781763923

`A221745(A045924(n+1))`
-/

namespace A087210.P7238828689781763923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221745 (A045924 (n + 1)).toNat

end

end A087210.P7238828689781763923

/-!
# A087211: a(n) = floor((1+2^n+3^n)/3).

The programs for A087211, the canonical program `A087211.P7111258434496308839` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087211 has offset 0).

The definition of A087211 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((1+2^n+3^n)/3)` (program `A087211.P7111258434496308839`, by `A087211.P7111258434496308839.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A087211.P14099409610121196456

`4*a(n-1)-a(n-2)-6*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=12`
-/

namespace A087211.P14099409610121196456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 12] fun n a =>
  4 * a (n - 1) - a (n - 2) - 6 * a (n - 3)

end

end A087211.P14099409610121196456

namespace A087211

/-- `4*a(n-1)-a(n-2)-6*a(n-3)` -/
def P14099409610121196456.Spec : Prop :=
  ∀ n, P14099409610121196456.a n = A087211 n

end A087211

/-! ## A087211.P7111258434496308839

`floor((1+2^n+3^n)/3)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087211

/-- `floor((1+2^n+3^n)/3)` -/
def P7111258434496308839.Spec : Prop :=
  ∀ n, P7111258434496308839.a n = A087211 n

theorem P7111258434496308839.correct : P7111258434496308839.Spec := by
  intro n
  simp only [A087211]

end A087211

/-! ## A087211.P302862001789623776

`ogf((1-2x-3x^2+4x^3)/(1-4x+x^2+6x^3))`
-/

namespace A087211.P302862001789623776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -3, 4] [1, -4, 1, 6] n

end

end A087211.P302862001789623776

namespace A087211

/-- `ogf((1-2x-3x^2+4x^3)/(1-4x+x^2+6x^3))` -/
def P302862001789623776.Spec : Prop :=
  ∀ n, P302862001789623776.a n = A087211 n

end A087211

/-! ## A087211.P2797349988581150241

`ceil(4*3^(n-2))+2^(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A087211.P2797349988581150241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (⌈4 * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉ : ℚ) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1))

end

end A087211.P2797349988581150241

namespace A087211

/-- `ceil(4*3^(n-2))+2^(n-1)-a(n-1)` -/
def P2797349988581150241.Spec : Prop :=
  ∀ n, P2797349988581150241.a n = (A087211 n : ℚ)

end A087211

/-! ## A087211.P6775531694450946818

`A001045(n)+ceil(3^(n-1))`
-/

namespace A087211.P6775531694450946818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A087211.P6775531694450946818

namespace A087211

/-- `A001045(n)+ceil(3^(n-1))` -/
def P6775531694450946818.Spec : Prop :=
  ∀ n, P6775531694450946818.a n = A087211 n

end A087211

/-! ## A087211.P9631956853566701785

`A133494(n)+A001045(n)`
-/

namespace A087211.P9631956853566701785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 n + A001045 n

end

end A087211.P9631956853566701785

namespace A087211

/-- `A133494(n)+A001045(n)` -/
def P9631956853566701785.Spec : Prop :=
  ∀ n, P9631956853566701785.a n = A087211 n

end A087211

/-! ## A087211.P5955219452907487857

`A152046(n)+A140429(n)`
-/

namespace A087211.P5955219452907487857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152046 n + A140429 n

end

end A087211.P5955219452907487857

namespace A087211

/-- `A152046(n)+A140429(n)` -/
def P5955219452907487857.Spec : Prop :=
  ∀ n, P5955219452907487857.a n = A087211 n

end A087211

/-! ## A087211.P8093293224927611741

`A000007(n)+Δ[A087432(n)]`
-/

namespace A087211.P8093293224927611741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A087211.P8093293224927611741

namespace A087211

/-- `A000007(n)+Δ[A087432(n)]` -/
def P8093293224927611741.Spec : Prop :=
  ∀ n, P8093293224927611741.a n = A087211 n

end A087211

/-! ## A087211.P5798406506793935804

`A152046(n)+Δ[A124302(n)]`
-/

namespace A087211.P5798406506793935804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152046 n + (f1 (n + 1) - f1 n)

end

end A087211.P5798406506793935804

namespace A087211

/-- `A152046(n)+Δ[A124302(n)]` -/
def P5798406506793935804.Spec : Prop :=
  ∀ n, P5798406506793935804.a n = A087211 n

end A087211

/-! ## A087211.P13830561351650851336

`A328284(n+3)+A133494(n)`
-/

namespace A087211.P13830561351650851336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328284 (n + 3) + A133494 n

end

end A087211.P13830561351650851336

namespace A087211

/-- `A328284(n+3)+A133494(n)` -/
def P13830561351650851336.Spec : Prop :=
  ∀ n, P13830561351650851336.a n = A087211 n

end A087211

/-! ## A087211.P2197569157188605867

`Δ[A087432(n)-A004273(n)]+2`
-/

namespace A087211.P2197569157188605867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087432 n - A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A087211.P2197569157188605867

namespace A087211

/-- `Δ[A087432(n)-A004273(n)]+2` -/
def P2197569157188605867.Spec : Prop :=
  ∀ n, P2197569157188605867.a n = A087211 n

end A087211

/-! ## A087211.P17661060665125939410

`Δ[A087432(n)]^(A000040(n+1)%2)`
-/

namespace A087211.P17661060665125939410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087432 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A087211.P17661060665125939410

namespace A087211

/-- `Δ[A087432(n)]^(A000040(n+1)%2)` -/
def P17661060665125939410.Spec : Prop :=
  ∀ n, P17661060665125939410.a n = (A087211 n : ℚ)

end A087211

/-! ## A087211.P14704597141934975689

`A074324(A004273(n))+A001045(n)`
-/

namespace A087211.P14704597141934975689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (A004273 n).toNat + A001045 n

end

end A087211.P14704597141934975689

namespace A087211

/-- `A074324(A004273(n))+A001045(n)` -/
def P14704597141934975689.Spec : Prop :=
  ∀ n, P14704597141934975689.a n = A087211 n

end A087211

/-! ## A087211.P8582347527785972979

`A108411(A004275(n))+A001045(n)`
-/

namespace A087211.P8582347527785972979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (A004275 n).toNat + A001045 n

end

end A087211.P8582347527785972979

namespace A087211

/-- `A108411(A004275(n))+A001045(n)` -/
def P8582347527785972979.Spec : Prop :=
  ∀ n, P8582347527785972979.a n = A087211 n

end A087211

/-! ## A087211.P2334849965467900159

`A108411(A163985(n))+A001045(n)`
-/

namespace A087211.P2334849965467900159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (A163985 n).toNat + A001045 n

end

end A087211.P2334849965467900159

namespace A087211

/-- `A108411(A163985(n))+A001045(n)` -/
def P2334849965467900159.Spec : Prop :=
  ∀ n, P2334849965467900159.a n = A087211 n

end A087211

/-! ## A087211.P7769643561346691512

`Δ[A141056(A004273(n))+A087432(n)]`
-/

namespace A087211.P7769643561346691512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 (A004273 n).toNat + A087432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087211.P7769643561346691512

namespace A087211

/-- `Δ[A141056(A004273(n))+A087432(n)]` -/
def P7769643561346691512.Spec : Prop :=
  ∀ n, P7769643561346691512.a n = A087211 n

end A087211

/-! ## A087211.P13870368395718952694

`A094039(A004277(n)-n)+A094039(n)`
-/

namespace A087211.P13870368395718952694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094039 (A004277 n - (n : ℤ)).toNat + A094039 n

end

end A087211.P13870368395718952694

namespace A087211

/-- `A094039(A004277(n)-n)+A094039(n)` -/
def P13870368395718952694.Spec : Prop :=
  ∀ n, P13870368395718952694.a n = A087211 n

end A087211

/-! ## A087211.P2690977376795549769

`A087432(n+1)+A000007(n)-A087432(n)`
-/

namespace A087211.P2690977376795549769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087432 (n + 1) + (A000007 n - A087432 n)

end

end A087211.P2690977376795549769

namespace A087211

/-- `A087432(n+1)+A000007(n)-A087432(n)` -/
def P2690977376795549769.Spec : Prop :=
  ∀ n, P2690977376795549769.a n = A087211 n

end A087211

/-!
# A087213: Expansion of (1+x-4*x^2) / ((1+x)*(1-4*x^2)).

The programs for A087213, the canonical program `A087213.P883086237007035780` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087213 has offset 0).

The definition of A087213 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-4x^2)/(1+x-4x^2-4x^3))` (program `A087213.P883086237007035780`, by `A087213.P883086237007035780.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A087213.P883086237007035780

`ogf((1+x-4x^2)/(1+x-4x^2-4x^3))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087213

/-- `ogf((1+x-4x^2)/(1+x-4x^2-4x^3))` -/
def P883086237007035780.Spec : Prop :=
  ∀ n, P883086237007035780.a n = A087213 n

theorem P883086237007035780.correct : P883086237007035780.Spec := by
  intro n
  simp only [A087213]

end A087213

/-! ## A087213.P17015887921612456791

`2^n/6-(-2)^n/2+4*(-1)^n/3`
-/

namespace A087213.P17015887921612456791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 6 - ((-2) ^ n : ℚ) / 2 + (4 * (-1) ^ n : ℚ) / 3

end

end A087213.P17015887921612456791

namespace A087213

/-- `2^n/6-(-2)^n/2+4*(-1)^n/3` -/
def P17015887921612456791.Spec : Prop :=
  ∀ n, P17015887921612456791.a n = (A087213 n : ℚ)

end A087213

/-! ## A087213.P5436051377078923097

`4*(a(n-2)-(-1)^n)` with `a(0)=1, a(1)=0`
-/

namespace A087213.P5436051377078923097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  4 * (a (n - 2) - (-1) ^ n)

end

end A087213.P5436051377078923097

namespace A087213

/-- `4*(a(n-2)-(-1)^n)` -/
def P5436051377078923097.Spec : Prop :=
  ∀ n, P5436051377078923097.a n = A087213 n

end A087213

/-! ## A087213.P3807838842464683064

`2*(A122959(n)+a(n-1))` with `a(0)=1`
-/

namespace A087213.P3807838842464683064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A122959 n + a (n - 1))

end

end A087213.P3807838842464683064

namespace A087213

/-- `2*(A122959(n)+a(n-1))` -/
def P3807838842464683064.Spec : Prop :=
  ∀ n, P3807838842464683064.a n = A087213 n

end A087213

/-! ## A087213.P9683737690581778566

`A000034(n)*A167193(n)`
-/

namespace A087213.P9683737690581778566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A167193 n

end

end A087213.P9683737690581778566

namespace A087213

/-- `A000034(n)*A167193(n)` -/
def P9683737690581778566.Spec : Prop :=
  ∀ n, P9683737690581778566.a n = A087213 n

end A087213

/-! ## A087213.P3519299786089936700

`A084642(n)*A167193(n)`
-/

namespace A087213.P3519299786089936700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084642 n * A167193 n

end

end A087213.P3519299786089936700

namespace A087213

/-- `A084642(n)*A167193(n)` -/
def P3519299786089936700.Spec : Prop :=
  ∀ n, P3519299786089936700.a n = A087213 n

end A087213

/-! ## A087213.P15491330367310567644

`Δ[A001045(A124625(n+1))]`
-/

namespace A087213.P15491330367310567644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A124625 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087213.P15491330367310567644

namespace A087213

/-- `Δ[A001045(A124625(n+1))]` -/
def P15491330367310567644.Spec : Prop :=
  ∀ n, P15491330367310567644.a n = A087213 n

end A087213

/-! ## A087213.P3937001992995079724

`(A000034(n)²-2)*A167030(n)`
-/

namespace A087213.P3937001992995079724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000034 n ^ 2 - 2) * A167030 n

end

end A087213.P3937001992995079724

namespace A087213

/-- `(A000034(n)²-2)*A167030(n)` -/
def P3937001992995079724.Spec : Prop :=
  ∀ n, P3937001992995079724.a n = A087213 n

end A087213

/-! ## A087213.P11833563901115416757

`Δ[(A001045(n)-1)*A059841(n)]`
-/

namespace A087213.P11833563901115416757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001045 n - 1) * A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087213.P11833563901115416757

namespace A087213

/-- `Δ[(A001045(n)-1)*A059841(n)]` -/
def P11833563901115416757.Spec : Prop :=
  ∀ n, P11833563901115416757.a n = A087213 n

end A087213

/-! ## A087213.P108643965024333431

`Δ[2*A136324(n)-A001045(n)]`
-/

namespace A087213.P108643965024333431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136324 n - A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087213.P108643965024333431

namespace A087213

/-- `Δ[2*A136324(n)-A001045(n)]` -/
def P108643965024333431.Spec : Prop :=
  ∀ n, P108643965024333431.a n = A087213 n

end A087213

/-!
# A087214: Expansion of e.g.f.: exp(x)/(1-x^2/2).

The programs for A087214, there is no canonical definition to state claims against.
-/

/-! ## A087214.P128512894204519237

`C(n, 2)*a(n-2)+1` with `a(0)=1, a(1)=1`
-/

namespace A087214.P128512894204519237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.choose n 2 * a (n - 2) + 1

end

end A087214.P128512894204519237

/-! ## A087214.P11683430438764403311

`(∑[n]-n)*a(n-2)+1` with `a(0)=1, a(1)=1`
-/

namespace A087214.P11683430438764403311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)) * a (n - 2) + 1

end

end A087214.P11683430438764403311

/-! ## A087214.P6446318591977123749

`1-(n-∑[n])*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A087214.P6446318591977123749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) * a (n - 2)

end

end A087214.P6446318591977123749

/-! ## A087214.P17402119550487884184

`a(n-2)*A000217(n-1)+1` with `a(0)=1, a(1)=1`
-/

namespace A087214.P17402119550487884184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A000217 (n - 1) + 1

end

end A087214.P17402119550487884184

/-! ## A087214.P11801981976810977395

`A126725(A028310(n))+1`
-/

namespace A087214.P11801981976810977395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126725 (A028310 n).toNat + 1

end

end A087214.P11801981976810977395

/-!
# A087215: Lucas(6*n): a(n) = 18*a(n-1) - a(n-2), starting with a(0) = 2 and a(1) = 18.

The programs for A087215, the canonical program `A087215.P8030015920644779110` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087215 has offset 0).

The definition of A087215 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `18*a(n-1)-a(n-2)` (program `A087215.P8030015920644779110`, by `A087215.P8030015920644779110.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A087215.P8030015920644779110

`18*a(n-1)-a(n-2)` with `a(0)=2, a(1)=18`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087215

/-- `18*a(n-1)-a(n-2)` -/
def P8030015920644779110.Spec : Prop :=
  ∀ n, P8030015920644779110.a n = A087215 n

theorem P8030015920644779110.correct : P8030015920644779110.Spec := by
  intro n
  simp only [A087215]

end A087215

/-! ## A087215.P15302223040886168383

`(9+sqrt(80))^n+(9-sqrt(80))^n`
-/

namespace A087215.P15302223040886168383
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (9 + Real.sqrt (80 : ℝ)) ^ n + (9 - Real.sqrt (80 : ℝ)) ^ n

end

end A087215.P15302223040886168383

namespace A087215

/-- `(9+sqrt(80))^n+(9-sqrt(80))^n` -/
def P15302223040886168383.Spec : Prop :=
  ∀ n, P15302223040886168383.a n = (A087215 n : ℝ)

end A087215

/-! ## A087215.P2012811504107644123

`2*A023039(n)`
-/

namespace A087215.P2012811504107644123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023039 n

end

end A087215.P2012811504107644123

namespace A087215

/-- `2*A023039(n)` -/
def P2012811504107644123.Spec : Prop :=
  ∀ n, P2012811504107644123.a n = A087215 n

end A087215

/-! ## A087215.P1046547822220544309

`A000032(6*n)`
-/

namespace A087215.P1046547822220544309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (6 * n)

end

end A087215.P1046547822220544309

namespace A087215

/-- `A000032(6*n)` -/
def P1046547822220544309.Spec : Prop :=
  ∀ n, P1046547822220544309.a n = A087215 n

end A087215

/-! ## A087215.P2249030337280703667

`ogf((2-18x)/(1-18x+x^2))`
-/

namespace A087215.P2249030337280703667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -18] [1, -18, 1] n

end

end A087215.P2249030337280703667

namespace A087215

/-- `ogf((2-18x)/(1-18x+x^2))` -/
def P2249030337280703667.Spec : Prop :=
  ∀ n, P2249030337280703667.a n = A087215 n

end A087215

/-! ## A087215.P4807091236398795501

`lcm(2, ceil(ϕ^(6*n)))`
-/

namespace A087215.P4807091236398795501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ⌈Real.goldenRatio ^ (6 * n)⌉

end

end A087215.P4807091236398795501

namespace A087215

/-- `lcm(2, ceil(ϕ^(6*n)))` -/
def P4807091236398795501.Spec : Prop :=
  ∀ n, (P4807091236398795501.a n : ℤ) = A087215 n

end A087215

/-! ## A087215.P13327477861725080202

`xor(3, floor(ϕ^(6*n)))`
-/

namespace A087215.P13327477861725080202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 ⌊Real.goldenRatio ^ (6 * n)⌋

end

end A087215.P13327477861725080202

namespace A087215

/-- `xor(3, floor(ϕ^(6*n)))` -/
def P13327477861725080202.Spec : Prop :=
  ∀ n, P13327477861725080202.a n = A087215 n

end A087215

/-! ## A087215.P16648230195154278655

`A014448(2*n)`
-/

namespace A087215.P16648230195154278655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014448 (2 * n)

end

end A087215.P16648230195154278655

namespace A087215

/-- `A014448(2*n)` -/
def P16648230195154278655.Spec : Prop :=
  ∀ n, P16648230195154278655.a n = A087215 n

end A087215

/-! ## A087215.P17982094516465554488

`A005248(3*n)`
-/

namespace A087215.P17982094516465554488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (3 * n)

end

end A087215.P17982094516465554488

namespace A087215

/-- `A005248(3*n)` -/
def P17982094516465554488.Spec : Prop :=
  ∀ n, P17982094516465554488.a n = A087215 n

end A087215

/-! ## A087215.P13910482173646855057

`A005247(6*n)`
-/

namespace A087215.P13910482173646855057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 (6 * n)

end

end A087215.P13910482173646855057

namespace A087215

/-- `A005247(6*n)` -/
def P13910482173646855057.Spec : Prop :=
  ∀ n, P13910482173646855057.a n = A087215 n

end A087215

/-!
# A087216: a(n) = (6n)!/((3n)!(2n)!2^n).

The programs for A087216, there is no canonical definition to state claims against.
-/

/-! ## A087216.P11343168476309285974

`∏[2*n+1]*A078531(2*n)`
-/

namespace A087216.P11343168476309285974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A078531 (2 * n)

end

end A087216.P11343168476309285974

/-! ## A087216.P18310450975073510784

`A004993(n)*A008543(n)`
-/

namespace A087216.P18310450975073510784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004993 n * A008543 n

end

end A087216.P18310450975073510784

/-! ## A087216.P3649634548112843900

`record[A055634(n)*A091527(n)]`
-/

namespace A087216.P3649634548112843900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055634 n * A091527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087216.P3649634548112843900

/-! ## A087216.P13468560593673422251

`record[A091527(n)*A123023(n)]`
-/

namespace A087216.P13468560593673422251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091527 n * A123023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087216.P13468560593673422251

/-! ## A087216.P7925037259384120016

`A055634(2*n)*A091527(2*n)`
-/

namespace A087216.P7925037259384120016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055634 (2 * n) * A091527 (2 * n)

end

end A087216.P7925037259384120016

/-!
# A087217: In decimal representation: smallest multiple of n containing it as substring.

The programs for A087217, there is no canonical definition to state claims against.
-/

/-! ## A087217.P18276662174528020011

`(n+1)*A086064(n+1)`
-/

namespace A087217.P18276662174528020011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A086064 (n + 1)

end

end A087217.P18276662174528020011

/-! ## A087217.P16878162794619650820

`(n+1)/cot(atan(A086064(Δ[n²]-n)))`
-/

namespace A087217.P16878162794619650820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.cot (Real.arctan (A086064 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ))

end

end A087217.P16878162794619650820

/-! ## A087217.P5221950330850213732

`A086064(n-log2(1/2))/(n+1)^-1`
-/

namespace A087217.P5221950330850213732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086064 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℚ) / (n + 1 : ℚ) ^ (-1 : ℤ)

end

end A087217.P5221950330850213732

/-! ## A087217.P3900455664523151441

`A086064(Δ[n²]-n)*A110514(2*n)`
-/

namespace A087217.P3900455664523151441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086064 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat * A110514 (2 * n)

end

end A087217.P3900455664523151441

/-!
# A087218: Satisfies A(x) = 1 + x*A(x)*f(x)^2, where f(x) = Sum_{k>=0} x^((3^n-1)/2) and f(x)^2 = 2 - f(x^2) + 2*Sum_{n>0} x^A023745(n).

The programs for A087218, there is no canonical definition to state claims against.
-/

/-! ## A087218.P12259478943944822044

`A078932(2*n)`
-/

namespace A087218.P12259478943944822044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078932 (2 * n)

end

end A087218.P12259478943944822044

/-! ## A087218.P13177448431066185562

`or(char[1], A078932(A004275(n+1)))`
-/

namespace A087218.P13177448431066185562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A078932 (A004275 (n + 1)).toNat)

end

end A087218.P13177448431066185562

/-! ## A087218.P17753504314019441286

`lcm((-1)^n, A078932(A004277(n)))`
-/

namespace A087218.P17753504314019441286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A078932 (A004277 n).toNat)

end

end A087218.P17753504314019441286

/-! ## A087218.P4869540049241885556

`or(A063524(n), A078932(A005843(n)))`
-/

namespace A087218.P4869540049241885556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A078932 (A005843 n).toNat)

end

end A087218.P4869540049241885556

/-! ## A087218.P11662341009957012239

`A078932(A005843(n))%A080040(n)`
-/

namespace A087218.P11662341009957012239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078932 (A005843 n).toNat) (A080040 n)

end

end A087218.P11662341009957012239

/-!
# A087219: Satisfies A(x) = f(x) + x*A(x)*f(x)^2, where f(x) = Sum_{k>=0} x^((3^n-1)/2) and f(x)^2 = 2 - f(x^2) + 2*Sum_{n>0} x^A023745(n). Also, A(x) = f(x)*B(x), where B(x) = Sum_{k>=0} A087218(k)*x^k.

The programs for A087219, there is no canonical definition to state claims against.
-/

/-! ## A087219.P18222466732474818822

`A078932(2*n+1)`
-/

namespace A087219.P18222466732474818822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078932 (2 * n + 1)

end

end A087219.P18222466732474818822

/-! ## A087219.P11449770511924486845

`record[A078932(xor(1, n))]`
-/

namespace A087219.P11449770511924486845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078932 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087219.P11449770511924486845

/-! ## A087219.P2759126746234961603

`record[A078932(n*n%2)]`
-/

namespace A087219.P2759126746234961603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078932 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087219.P2759126746234961603

/-! ## A087219.P11671871794355101675

`record[A078932(n*and(1, n))]`
-/

namespace A087219.P11671871794355101675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078932 (n * Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087219.P11671871794355101675

/-! ## A087219.P15031246025401416828

`record[A078932((-1)^n+n)]`
-/

namespace A087219.P15031246025401416828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078932 ((-1) ^ n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087219.P15031246025401416828

/-!
# A087220: Coefficients in an asymptotic series expanded in powers of 1/(4x).

The programs for A087220, there is no canonical definition to state claims against.
-/

/-! ## A087220.P13544673457228898363

`∑{d}[A099335(n+1), A348608(#)]`
-/

namespace A087220.P13544673457228898363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A348608 d

end

end A087220.P13544673457228898363

/-!
# A087221: Number of compositions (ordered partitions) of n into powers of 4.

The programs for A087221, there is no canonical definition to state claims against.
-/

/-! ## A087221.P13432613788071661505

`A054846(Δ[Δ[floor(7^(n/4))]])`
-/

namespace A087221.P13432613788071661505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (f1 (n + 1) - f1 n).toNat

end

end A087221.P13432613788071661505

/-! ## A087221.P4866055044738775085

`A257639(A128695(n))`
-/

namespace A087221.P4866055044738775085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A128695 n).toNat

end

end A087221.P4866055044738775085

/-! ## A087221.P291770039759578335

`A003056(floor(sqrt(A135335(n))))`
-/

namespace A087221.P291770039759578335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.sqrt (A135335 n)).toNat

end

end A087221.P291770039759578335

/-! ## A087221.P6907381015012159895

`A257639(ceil(sqrt(A084601(n))))`
-/

namespace A087221.P6907381015012159895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 ⌈Real.sqrt (A084601 n : ℝ)⌉.toNat

end

end A087221.P6907381015012159895

/-! ## A087221.P4959257131530810206

`A118759(A352041(n))`
-/

namespace A087221.P4959257131530810206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A352041 n).toNat

end

end A087221.P4959257131530810206

/-!
# A087222: G.f. satisfies A(x) = 1 + x*A(x)*f(x)^3, where f(x) = Sum_{k>=0} x^((4^k-1)/3).

The programs for A087222, there is no canonical definition to state claims against.
-/

/-! ## A087222.P8169206335494973331

`A087221(3*n)`
-/

namespace A087222.P8169206335494973331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087221 (3 * n)

end

end A087222.P8169206335494973331

/-! ## A087222.P11488332925633834391

`A087221(n/tan(acot(3)))^A000032((n+2)%(n+1))`
-/

namespace A087222.P11488332925633834391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087221 (SequenceMachineLib.roundAway ((n : ℝ) / Real.tan (SequenceMachineLib.acot (3 : ℝ)))).toNat : ℚ) ^ (A000032 ((n + 2) % (n + 1)) : ℤ)

end

end A087222.P11488332925633834391

/-! ## A087222.P6173967384122493118

`A087221(A008486(n))+C(n, A000712(n))`
-/

namespace A087222.P6173967384122493118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087221 (A008486 n).toNat + (Nat.choose n (A000712 n).toNat : ℤ)

end

end A087222.P6173967384122493118

/-! ## A087222.P893978254779119139

`A087221(A008486(n))+C(n, A005891(n))`
-/

namespace A087222.P893978254779119139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087221 (A008486 n).toNat + (Nat.choose n (A005891 n).toNat : ℤ)

end

end A087222.P893978254779119139

/-! ## A087222.P5120209440364840290

`A087221(A008486(n))+C(n, A082108(n))`
-/

namespace A087222.P5120209440364840290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087221 (A008486 n).toNat + (Nat.choose n (A082108 n).toNat : ℤ)

end

end A087222.P5120209440364840290

/-! ## A087222.P15928881612960655663

`A087221(A008486(n))+C(n, A235040(n))`
-/

namespace A087222.P15928881612960655663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087221 (A008486 n).toNat + (Nat.choose n (A235040 n).toNat : ℤ)

end

end A087222.P15928881612960655663

/-! ## A087222.P5644664130571932153

`A087221(A008486(n))+C(n, A304163(n+1))`
-/

namespace A087222.P5644664130571932153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087221 (A008486 n).toNat + (Nat.choose n (A304163 (n + 1)).toNat : ℤ)

end

end A087222.P5644664130571932153

/-! ## A087222.P9300899061208232630

`A087221(A008486(n))+C(n, A304164(n+1))`
-/

namespace A087222.P9300899061208232630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087221 (A008486 n).toNat + (Nat.choose n (A304164 (n + 1)).toNat : ℤ)

end

end A087222.P9300899061208232630

/-! ## A087222.P3821585449895382086

`A087221(A008486(n))%A001006(n+2)`
-/

namespace A087222.P3821585449895382086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087221 (A008486 n).toNat) (A001006 (n + 2))

end

end A087222.P3821585449895382086

/-! ## A087222.P4687826777396862509

`A087221(n/tan(acot(3)))%A007689(n)`
-/

namespace A087222.P4687826777396862509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087221 (SequenceMachineLib.roundAway ((n : ℝ) / Real.tan (SequenceMachineLib.acot (3 : ℝ)))).toNat) (A007689 n)

end

end A087222.P4687826777396862509

/-!
# A087223: G.f. satisfies A(x) = f(x) + x*A(x)*f(x)^3, where f(x) = Sum_{k>=0} x^((4^k-1)/3).

The programs for A087223, there is no canonical definition to state claims against.
-/

/-! ## A087223.P3586490672803716184

`A087221(3*n+1)`
-/

namespace A087223.P3586490672803716184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087221 (3 * n + 1)

end

end A087223.P3586490672803716184

/-! ## A087223.P2160978204383762805

`record[A087221(A087507(n))]`
-/

namespace A087223.P2160978204383762805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087221 (A087507 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087223.P2160978204383762805

/-! ## A087223.P17442748331436053443

`record[A087221(A257502(n))]`
-/

namespace A087223.P17442748331436053443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087221 (A257502 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087223.P17442748331436053443

/-! ## A087223.P17238613741487432492

`record[A087221(A074066(n+1))]`
-/

namespace A087223.P17238613741487432492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087221 (A074066 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087223.P17238613741487432492

/-! ## A087223.P7908785652070731004

`record[A087221(A123684(n+1))]`
-/

namespace A087223.P7908785652070731004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087221 (A123684 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087223.P7908785652070731004

/-! ## A087223.P2312439759978329760

`record[A087221(A266981(n)-1)]`
-/

namespace A087223.P2312439759978329760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087221 (A266981 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087223.P2312439759978329760

/-! ## A087223.P6887286661172712853

`record[A087221(A063914(n+1)-1)]`
-/

namespace A087223.P6887286661172712853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087221 (A063914 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087223.P6887286661172712853

/-!
# A087224: G.f. satisfies A(x) = f(x)^2 + x*A(x)*f(x)^3, where f(x) = Sum_{k>=0} x^((4^k-1)/3).

The programs for A087224, there is no canonical definition to state claims against.
-/

/-! ## A087224.P17813023123432404819

`A087221(3*n+2)`
-/

namespace A087224.P17813023123432404819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087221 (3 * n + 2)

end

end A087224.P17813023123432404819

/-! ## A087224.P6431670984329295873

`record[A087221(A004483(n))]`
-/

namespace A087224.P6431670984329295873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087221 (A004483 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087224.P6431670984329295873

/-! ## A087224.P18412509439382405842

`record[A087221(A014682(n))]`
-/

namespace A087224.P18412509439382405842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087221 (A014682 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087224.P18412509439382405842

/-! ## A087224.P9158792343662087644

`record[A087221(A266981(n))]`
-/

namespace A087224.P9158792343662087644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087221 (A266981 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087224.P9158792343662087644

/-! ## A087224.P12074172581147785473

`record[A087221(A063914(n+1))]`
-/

namespace A087224.P12074172581147785473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087221 (A063914 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087224.P12074172581147785473

/-! ## A087224.P16185238660649403529

`record[A087221(A257502(n)+1)]`
-/

namespace A087224.P16185238660649403529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087221 (A257502 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087224.P16185238660649403529

/-!
# A087225: Position of the largest peak value in Collatz (3x+1) trajectory.

The programs for A087225, there is no canonical definition to state claims against.
-/

/-! ## A087225.P13432055763129366066

`A220421(n+1)+1`
-/

namespace A087225.P13432055763129366066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220421 (n + 1) + 1

end

end A087225.P13432055763129366066

/-! ## A087225.P5896400664590841040

`A008908(n+1)-A222641(n+1)`
-/

namespace A087225.P5896400664590841040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - A222641 (n + 1)

end

end A087225.P5896400664590841040

/-! ## A087225.P9841519193127367412

`A006577(n+1)+1-A222641(n+1)`
-/

namespace A087225.P9841519193127367412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) + (1 - A222641 (n + 1))

end

end A087225.P9841519193127367412

/-! ## A087225.P5798649781688928594

`A006577(n+1)-A023443(A222641(n+1))`
-/

namespace A087225.P5798649781688928594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) - A023443 (A222641 (n + 1)).toNat

end

end A087225.P5798649781688928594

/-! ## A087225.P11843303585401656700

`A139399(n+1)+A158799(n)-A222641(n+1)`
-/

namespace A087225.P11843303585401656700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (n + 1) + (A158799 n - A222641 (n + 1))

end

end A087225.P11843303585401656700

/-! ## A087225.P17789022749079654615

`A006666(n+1)+A006667(n+1)-A222641(n+1)+1`
-/

namespace A087225.P17789022749079654615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (n + 1) + (A006667 (n + 1) - A222641 (n + 1)) + 1

end

end A087225.P17789022749079654615

/-! ## A087225.P15882398471208831761

`A008908(n+1)-A006577(A025586(n+1))`
-/

namespace A087225.P15882398471208831761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - A006577 (A025586 (n + 1)).toNat

end

end A087225.P15882398471208831761

/-! ## A087225.P10717023605221862121

`A006577(n+1)+1-A006577(A025586(n+1))`
-/

namespace A087225.P10717023605221862121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) + (1 - A006577 (A025586 (n + 1)).toNat)

end

end A087225.P10717023605221862121

/-! ## A087225.P15112913670345282804

`A139399(n+1)+1-A139399(A056959(n+1))`
-/

namespace A087225.P15112913670345282804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (n + 1) + (1 - A139399 (A056959 (n + 1)).toNat)

end

end A087225.P15112913670345282804

/-! ## A087225.P5483782269655720154

`A208981(n+1)+1-A208981(A056959(n+1))`
-/

namespace A087225.P5483782269655720154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208981 (n + 1) + (1 - A208981 (A056959 (n + 1)).toNat)

end

end A087225.P5483782269655720154

/-! ## A087225.P4403288694571168169

`A006577(n+1)+1-A006577(A270570(2*(n+1)))`
-/

namespace A087225.P4403288694571168169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) + 1 - A006577 (A270570 (2 * (n + 1))).toNat

end

end A087225.P4403288694571168169

/-!
# A087226: LCM of terms in Collatz (3x+1) function initiated at n.

The programs for A087226, there is no canonical definition to state claims against.
-/

/-! ## A087226.P1134027532561612796

`A225765(A003407(n))*A225784(n+1)`
-/

namespace A087226.P1134027532561612796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225765 (A003407 n).toNat * A225784 (n + 1)

end

end A087226.P1134027532561612796

/-! ## A087226.P7639556330086185153

`A196229(A047749(n))*A225784(n+1)`
-/

namespace A087226.P7639556330086185153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196229 (A047749 n).toNat * A225784 (n + 1)

end

end A087226.P7639556330086185153

/-! ## A087226.P9906187949188001511

`lcm(A145141(A337517(n)), A225784(n+1))`
-/

namespace A087226.P9906187949188001511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A145141 (A337517 n).toNat) (A225784 (n + 1))

end

end A087226.P9906187949188001511

/-!
# A087227: Number of distinct prime factors of A087226(n), the LCM of terms in trajectory of 3x+1 (function) initiated at n.

The programs for A087227, there is no canonical definition to state claims against.
-/

/-! ## A087227.P14773654537223290118

`A071625(A328673(3*n+1))+A006667(n+1)`
-/

namespace A087227.P14773654537223290118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A328673 (3 * n + 1)).toNat + A006667 (n + 1)

end

end A087227.P14773654537223290118

/-! ## A087227.P10053310429330663232

`or(A078719(n+1), A116373(n+1))%A297618(n+1)`
-/

namespace A087227.P10053310429330663232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (A078719 (n + 1)) (A116373 (n + 1))) (A297618 (n + 1))

end

end A087227.P10053310429330663232

/-! ## A087227.P12535008474263478854

`A286380(A093968(n+1))`
-/

namespace A087227.P12535008474263478854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 (A093968 (n + 1)).toNat

end

end A087227.P12535008474263478854

/-! ## A087227.P14429016482222973858

`A275866(A132344(n+1))`
-/

namespace A087227.P14429016482222973858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275866 (A132344 (n + 1)).toNat

end

end A087227.P14429016482222973858

/-! ## A087227.P9554115266104586908

`A057427(A392461(n+1))+A006667(n+1)`
-/

namespace A087227.P9554115266104586908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A392461 (n + 1)).toNat + A006667 (n + 1)

end

end A087227.P9554115266104586908

/-!
# A087229: Exponent of p=2 in 12n+4 = 3(4n+1)+1.

The programs for A087229, the canonical program `A087229.P9926633542854857690` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087229 has offset 0).

The definition of A087229 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087229.P13713267932161686490

`val(12*n+4, 2)`
-/

namespace A087229.P13713267932161686490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (12 * n + 4) 2

end

end A087229.P13713267932161686490

namespace A087229

/-- `val(12*n+4, 2)` -/
def P13713267932161686490.Spec : Prop :=
  ∀ n, (P13713267932161686490.a n : ℤ) = A087229 n

end A087229

/-! ## A087229.P9926633542854857690

`A007814(A017569(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A087229

/-- `A007814(A017569(n))` -/
def P9926633542854857690.Spec : Prop :=
  ∀ n, P9926633542854857690.a n = A087229 n

theorem P9926633542854857690.correct : P9926633542854857690.Spec := by
  intro n
  simp only [A087229]

end A087229

/-! ## A087229.P16932531433431225838

`val(Δ[n²]+n, 2)+2`
-/

namespace A087229.P16932531433431225838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat 2 + 2

end

end A087229.P16932531433431225838

namespace A087229

/-- `val(Δ[n²]+n, 2)+2` -/
def P16932531433431225838.Spec : Prop :=
  ∀ n, (P16932531433431225838.a n : ℤ) = A087229 n

end A087229

/-! ## A087229.P8326538750833318558

`A375961(n)+1`
-/

namespace A087229.P8326538750833318558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375961 n + 1

end

end A087229.P8326538750833318558

namespace A087229

/-- `A375961(n)+1` -/
def P8326538750833318558.Spec : Prop :=
  ∀ n, P8326538750833318558.a n = A087229 n

end A087229

/-! ## A087229.P13711799035046841551

`A371093(n)+2`
-/

namespace A087229.P13711799035046841551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371093 n + 2

end

end A087229.P13711799035046841551

namespace A087229

/-- `A371093(n)+2` -/
def P13711799035046841551.Spec : Prop :=
  ∀ n, P13711799035046841551.a n = A087229 n

end A087229

/-! ## A087229.P17084428953427002949

`log2(A329900(3*n+1))+2`
-/

namespace A087229.P17084428953427002949
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329900 (3 * n + 1) : ℝ) + 2

end

end A087229.P17084428953427002949

namespace A087229

/-- `log2(A329900(3*n+1))+2` -/
def P17084428953427002949.Spec : Prop :=
  ∀ n, P17084428953427002949.a n = (A087229 n : ℝ)

end A087229

/-! ## A087229.P1630104475252859166

`A085058(A048647(n))`
-/

namespace A087229.P1630104475252859166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 (A048647 n).toNat

end

end A087229.P1630104475252859166

namespace A087229

/-- `A085058(A048647(n))` -/
def P1630104475252859166.Spec : Prop :=
  ∀ n, P1630104475252859166.a n = A087229 n

end A087229

/-! ## A087229.P371760044631863911

`A371092(2*A375961(n))`
-/

namespace A087229.P371760044631863911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371092 (2 * A375961 n).toNat

end

end A087229.P371760044631863911

namespace A087229

/-- `A371092(2*A375961(n))` -/
def P371760044631863911.Spec : Prop :=
  ∀ n, P371760044631863911.a n = A087229 n

end A087229

/-! ## A087229.P1377732032207589737

`log2(A017569(n)/A067745(n+1))`
-/

namespace A087229.P1377732032207589737
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A017569 n : ℚ) / (A067745 (n + 1) : ℚ) : ℝ)

end

end A087229.P1377732032207589737

namespace A087229

/-- `log2(A017569(n)/A067745(n+1))` -/
def P1377732032207589737.Spec : Prop :=
  ∀ n, P1377732032207589737.a n = (A087229 n : ℝ)

end A087229

/-! ## A087229.P14260238251234186158

`log2(A017569(n)/A093411(3*n+1))`
-/

namespace A087229.P14260238251234186158
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A017569 n : ℚ) / (A093411 (3 * n + 1) : ℚ) : ℝ)

end

end A087229.P14260238251234186158

namespace A087229

/-- `log2(A017569(n)/A093411(3*n+1))` -/
def P14260238251234186158.Spec : Prop :=
  ∀ n, P14260238251234186158.a n = (A087229 n : ℝ)

end A087229

/-! ## A087229.P6641441080100158147

`A085058(A048724(n))`
-/

namespace A087229.P6641441080100158147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 (A048724 n).toNat

end

end A087229.P6641441080100158147

namespace A087229

/-- `A085058(A048724(n))` -/
def P6641441080100158147.Spec : Prop :=
  ∀ n, P6641441080100158147.a n = A087229 n

end A087229

/-! ## A087229.P13911614021346623480

`A072078(3*n+1)+1`
-/

namespace A087229.P13911614021346623480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072078 (3 * n + 1) + 1

end

end A087229.P13911614021346623480

namespace A087229

/-- `A072078(3*n+1)+1` -/
def P13911614021346623480.Spec : Prop :=
  ∀ n, P13911614021346623480.a n = A087229 n

end A087229

/-! ## A087229.P12973505606735269024

`A085058(3*n)`
-/

namespace A087229.P12973505606735269024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 (3 * n)

end

end A087229.P12973505606735269024

namespace A087229

/-- `A085058(3*n)` -/
def P12973505606735269024.Spec : Prop :=
  ∀ n, P12973505606735269024.a n = A087229 n

end A087229

/-! ## A087229.P15296520554862281394

`A089080(3*n+2)`
-/

namespace A087229.P15296520554862281394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (3 * n + 2)

end

end A087229.P15296520554862281394

namespace A087229

/-- `A089080(3*n+2)` -/
def P15296520554862281394.Spec : Prop :=
  ∀ n, P15296520554862281394.a n = A087229 n

end A087229

/-! ## A087229.P17850311176648891424

`A001511(A171977(2*n+1+n))`
-/

namespace A087229.P17850311176648891424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A171977 (2 * n + 1 + n)).toNat

end

end A087229.P17850311176648891424

namespace A087229

/-- `A001511(A171977(2*n+1+n))` -/
def P17850311176648891424.Spec : Prop :=
  ∀ n, P17850311176648891424.a n = A087229 n

end A087229

/-! ## A087229.P2811050618785322490

`A087230(2*n)`
-/

namespace A087229.P2811050618785322490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087230 (2 * n)

end

end A087229.P2811050618785322490

namespace A087229

/-- `A087230(2*n)` -/
def P2811050618785322490.Spec : Prop :=
  ∀ n, P2811050618785322490.a n = A087229 n

end A087229

/-! ## A087229.P11877888443694758629

`A063574(A266303(n))+2`
-/

namespace A087229.P11877888443694758629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063574 (A266303 n).toNat + 2

end

end A087229.P11877888443694758629

namespace A087229

/-- `A063574(A266303(n))+2` -/
def P11877888443694758629.Spec : Prop :=
  ∀ n, P11877888443694758629.a n = A087229 n

end A087229

/-! ## A087229.P8580681854070787570

`filter[A087230(n), A354807(#)]`
-/

namespace A087229.P8580681854070787570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354807 (f1 j).toNat = 1) n)

end

end A087229.P8580681854070787570

namespace A087229

/-- `filter[A087230(n), A354807(#)]` -/
def P8580681854070787570.Spec : Prop :=
  ∀ n, P8580681854070787570.a n = A087229 n

end A087229

/-! ## A087229.P10152016328742945003

`A007814(A048724(n)+1)+2`
-/

namespace A087229.P10152016328742945003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A048724 n + 1).toNat + 2

end

end A087229.P10152016328742945003

namespace A087229

/-- `A007814(A048724(n)+1)+2` -/
def P10152016328742945003.Spec : Prop :=
  ∀ n, P10152016328742945003.a n = A087229 n

end A087229

/-! ## A087229.P12971834850717522630

`A001511(3*n+1)+1`
-/

namespace A087229.P12971834850717522630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (3 * n + 1) + 1

end

end A087229.P12971834850717522630

namespace A087229

/-- `A001511(3*n+1)+1` -/
def P12971834850717522630.Spec : Prop :=
  ∀ n, P12971834850717522630.a n = A087229 n

end A087229

/-!
# A087230: a(n) is the 2-adic valuation of 6*n + 4.

The programs for A087230, the canonical program `A087230.P12877807738838144473` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087230 has offset 0).

The definition of A087230 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087230.P12877807738838144473

`A007814(A016957(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A087230

/-- `A007814(A016957(n))` -/
def P12877807738838144473.Spec : Prop :=
  ∀ n, P12877807738838144473.a n = A087230 n

theorem P12877807738838144473.correct : P12877807738838144473.Spec := by
  intro n
  simp only [A087230]

end A087230

/-! ## A087230.P16522273826756102919

`val(6*n+4, 2)`
-/

namespace A087230.P16522273826756102919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (6 * n + 4) 2

end

end A087230.P16522273826756102919

namespace A087230

/-- `val(6*n+4, 2)` -/
def P16522273826756102919.Spec : Prop :=
  ∀ n, (P16522273826756102919.a n : ℤ) = A087230 n

end A087230

/-! ## A087230.P13837334943880848055

`val(Δ[n²]+n+1, 2)+1`
-/

namespace A087230.P13837334943880848055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 1 : ℤ)).toNat 2 + 1

end

end A087230.P13837334943880848055

namespace A087230

/-- `val(Δ[n²]+n+1, 2)+1` -/
def P13837334943880848055.Spec : Prop :=
  ∀ n, (P13837334943880848055.a n : ℤ) = A087230 n

end A087230

/-! ## A087230.P9310524444207536902

`A371093(Δ[n²])`
-/

namespace A087230.P9310524444207536902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371093 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A087230.P9310524444207536902

namespace A087230

/-- `A371093(Δ[n²])` -/
def P9310524444207536902.Spec : Prop :=
  ∀ n, P9310524444207536902.a n = A087230 n

end A087230

/-! ## A087230.P303094591288615518

`A302045(6*n+4)`
-/

namespace A087230.P303094591288615518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302045 (6 * n + 4)

end

end A087230.P303094591288615518

namespace A087230

/-- `A302045(6*n+4)` -/
def P303094591288615518.Spec : Prop :=
  ∀ n, P303094591288615518.a n = A087230 n

end A087230

/-! ## A087230.P18272151120666321878

`A087229(Δ[n²])-2`
-/

namespace A087230.P18272151120666321878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087229 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A087230.P18272151120666321878

namespace A087230

/-- `A087229(Δ[n²])-2` -/
def P18272151120666321878.Spec : Prop :=
  ∀ n, P18272151120666321878.a n = A087230 n

end A087230

/-! ## A087230.P18392924006233624256

`A023444(A087229(2*n+1))`
-/

namespace A087230.P18392924006233624256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A087229 (2 * n + 1)).toNat

end

end A087230.P18392924006233624256

namespace A087230

/-- `A023444(A087229(2*n+1))` -/
def P18392924006233624256.Spec : Prop :=
  ∀ n, P18392924006233624256.a n = A087230 n

end A087230

/-! ## A087230.P941284798506368151

`filter[A371093(2*n+1), A102609(#)]`
-/

namespace A087230.P941284798506368151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371093 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A087230.P941284798506368151

namespace A087230

/-- `filter[A371093(2*n+1), A102609(#)]` -/
def P941284798506368151.Spec : Prop :=
  ∀ n, P941284798506368151.a n = A087230 n

end A087230

/-! ## A087230.P14852550966705572523

`A322584(3*n+2)`
-/

namespace A087230.P14852550966705572523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322584 (3 * n + 2)

end

end A087230.P14852550966705572523

namespace A087230

/-- `A322584(3*n+2)` -/
def P14852550966705572523.Spec : Prop :=
  ∀ n, P14852550966705572523.a n = A087230 n

end A087230

/-! ## A087230.P8411951907813173219

`A072078(3*n+2)`
-/

namespace A087230.P8411951907813173219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072078 (3 * n + 2)

end

end A087230.P8411951907813173219

namespace A087230

/-- `A072078(3*n+2)` -/
def P8411951907813173219.Spec : Prop :=
  ∀ n, P8411951907813173219.a n = A087230 n

end A087230

/-! ## A087230.P6869234785862771798

`A089080(3*(n+1))-1`
-/

namespace A087230.P6869234785862771798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (3 * (n + 1)) - 1

end

end A087230.P6869234785862771798

namespace A087230

/-- `A089080(3*(n+1))-1` -/
def P6869234785862771798.Spec : Prop :=
  ∀ n, P6869234785862771798.a n = A087230 n

end A087230

/-! ## A087230.P588341868715966420

`A375961(Δ[n²])-1`
-/

namespace A087230.P588341868715966420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375961 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A087230.P588341868715966420

namespace A087230

/-- `A375961(Δ[n²])-1` -/
def P588341868715966420.Spec : Prop :=
  ∀ n, P588341868715966420.a n = A087230 n

end A087230

/-! ## A087230.P4581519445004909463

`A065360(2*n+1)+1-A065360(2*(n+1))`
-/

namespace A087230.P4581519445004909463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065360 (2 * n + 1) + (1 - A065360 (2 * (n + 1)))

end

end A087230.P4581519445004909463

namespace A087230

/-- `A065360(2*n+1)+1-A065360(2*(n+1))` -/
def P4581519445004909463.Spec : Prop :=
  ∀ n, P4581519445004909463.a n = A087230 n

end A087230

/-! ## A087230.P15341972497331087297

`2-Δ[A065360(2*n+1)]`
-/

namespace A087230.P15341972497331087297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065360 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A087230.P15341972497331087297

namespace A087230

/-- `2-Δ[A065360(2*n+1)]` -/
def P15341972497331087297.Spec : Prop :=
  ∀ n, P15341972497331087297.a n = A087230 n

end A087230

/-! ## A087230.P9885089743748158720

`A001511(A338249(n+1))`
-/

namespace A087230.P9885089743748158720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A338249 (n + 1)).toNat

end

end A087230.P9885089743748158720

namespace A087230

/-- `A001511(A338249(n+1))` -/
def P9885089743748158720.Spec : Prop :=
  ∀ n, P9885089743748158720.a n = A087230 n

end A087230

/-! ## A087230.P2368079470656547802

`A001511(A053754(n+2))`
-/

namespace A087230.P2368079470656547802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A053754 (n + 2)).toNat

end

end A087230.P2368079470656547802

namespace A087230

/-- `A001511(A053754(n+2))` -/
def P2368079470656547802.Spec : Prop :=
  ∀ n, P2368079470656547802.a n = A087230 n

end A087230

/-! ## A087230.P15531325144420914146

`A001511(A065621(n+1)+1)`
-/

namespace A087230.P15531325144420914146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A065621 (n + 1) + 1).toNat

end

end A087230.P15531325144420914146

namespace A087230

/-- `A001511(A065621(n+1)+1)` -/
def P15531325144420914146.Spec : Prop :=
  ∀ n, P15531325144420914146.a n = A087230 n

end A087230

/-! ## A087230.P5803396826260802809

`A001511(A003188(2*n)+2)`
-/

namespace A087230.P5803396826260802809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A003188 (2 * n) + 2).toNat

end

end A087230.P5803396826260802809

namespace A087230

/-- `A001511(A003188(2*n)+2)` -/
def P5803396826260802809.Spec : Prop :=
  ∀ n, P5803396826260802809.a n = A087230 n

end A087230

/-! ## A087230.P1624415048913864660

`A001511(A047243(n+1))`
-/

namespace A087230.P1624415048913864660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A047243 (n + 1)).toNat

end

end A087230.P1624415048913864660

namespace A087230

/-- `A001511(A047243(n+1))` -/
def P1624415048913864660.Spec : Prop :=
  ∀ n, P1624415048913864660.a n = A087230 n

end A087230

/-! ## A087230.P436836513234371588

`A001511(A174091(2*n)+n)`
-/

namespace A087230.P436836513234371588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A174091 (2 * n) + (n : ℤ)).toNat

end

end A087230.P436836513234371588

namespace A087230

/-- `A001511(A174091(2*n)+n)` -/
def P436836513234371588.Spec : Prop :=
  ∀ n, P436836513234371588.a n = A087230 n

end A087230

/-!
# A087231: a(n) is the smallest number such that the exponent of p=2 factor in 6*a(n)+4 equals n.

The programs for A087231, the canonical program `A087231.P16756772011665758858` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087231 has offset 1).

The definition of A087231 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087231.P16756772011665758858

`a(n-1)+4*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=4, a(2)=6, a(3)=2, a(4)=26`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087231

/-- `a(n-1)+4*a(n-2)-4*a(n-3)` -/
def P16756772011665758858.Spec : Prop :=
  ∀ n, P16756772011665758858.a n = A087231 (n + 1)

theorem P16756772011665758858.correct : P16756772011665758858.Spec := by
  intro n
  simp only [A087231, Nat.add_sub_cancel]

end A087231

/-! ## A087231.P13852667932443446415

`4*a(n-2)+2` with `a(0)=1, a(1)=4, a(2)=6, a(3)=2`
-/

namespace A087231.P13852667932443446415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 6, 2] fun n a =>
  4 * a (n - 2) + 2

end

end A087231.P13852667932443446415

namespace A087231

/-- `4*a(n-2)+2` -/
def P13852667932443446415.Spec : Prop :=
  ∀ n, (P13852667932443446415.a n : ℤ) = A087231 (n + 1)

end A087231

/-! ## A087231.P11981266126618554405

`2*xor(3, 2^n-a(n-1))` with `a(0)=1`
-/

namespace A087231.P11981266126618554405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * Int.xor 3 ((2 ^ n : ℤ) - a (n - 1))

end

end A087231.P11981266126618554405

namespace A087231

/-- `2*xor(3, 2^n-a(n-1))` -/
def P11981266126618554405.Spec : Prop :=
  ∀ n, P11981266126618554405.a n = A087231 (n + 1)

end A087231

/-! ## A087231.P1847298806782516417

`xor(2, ∑[(-2)^n]+2^n)+1`
-/

namespace A087231.P1847298806782516417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (∑ j ∈ Finset.range (n + 1), f1 j + (2 ^ n : ℤ)) + 1

end

end A087231.P1847298806782516417

namespace A087231

/-- `xor(2, ∑[(-2)^n]+2^n)+1` -/
def P1847298806782516417.Spec : Prop :=
  ∀ n, P1847298806782516417.a n = A087231 (n + 1)

end A087231

/-! ## A087231.P8182813609780249938

`A077925(char[1]+n)+A000225(n)`
-/

namespace A087231.P8182813609780249938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 ((if ∃ j, f1 j = n then 1 else 0) + n) + A000225 n

end

end A087231.P8182813609780249938

namespace A087231

/-- `A077925(char[1]+n)+A000225(n)` -/
def P8182813609780249938.Spec : Prop :=
  ∀ n, P8182813609780249938.a n = A087231 (n + 1)

end A087231

/-! ## A087231.P16284798880006762559

`or(gcd(4, A176965(n+1)), A176965(n+1))`
-/

namespace A087231.P16284798880006762559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.gcd 4 (A176965 (n + 1)) : ℤ) (A176965 (n + 1))

end

end A087231.P16284798880006762559

namespace A087231

/-- `or(gcd(4, A176965(n+1)), A176965(n+1))` -/
def P16284798880006762559.Spec : Prop :=
  ∀ n, P16284798880006762559.a n = A087231 (n + 1)

end A087231

/-! ## A087231.P13820311627212259410

`A176965(n+1)+and(5, A176965(A151800(n+1)))`
-/

namespace A087231.P13820311627212259410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176965 (n + 1) + Int.land 5 (A176965 (A151800 (n + 1)).toNat)

end

end A087231.P13820311627212259410

namespace A087231

/-- `A176965(n+1)+and(5, A176965(A151800(n+1)))` -/
def P13820311627212259410.Spec : Prop :=
  ∀ n, P13820311627212259410.a n = A087231 (n + 1)

end A087231

/-!
# A087232: a(n) is the largest odd term in the 3x+1 trajectory initiated at n.

The programs for A087232, there is no canonical definition to state claims against.
-/

/-! ## A087232.P15114230004038015149

`A075684(A003602(n+1))`
-/

namespace A087232.P15114230004038015149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075684 (A003602 (n + 1)).toNat

end

end A087232.P15114230004038015149

/-! ## A087232.P18326775364076746982

`A075684(A025480(n)+1)`
-/

namespace A087232.P18326775364076746982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075684 (A025480 n + 1).toNat

end

end A087232.P18326775364076746982

/-! ## A087232.P7295165629423234336

`A075684(round(A000265(n+1)/2))`
-/

namespace A087232.P7295165629423234336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075684 (SequenceMachineLib.roundAway ((A000265 (n + 1) : ℚ) / 2)).toNat

end

end A087232.P7295165629423234336

/-! ## A087232.P14099534086512462152

`A075684((A000265(n+1)+1)/2)`
-/

namespace A087232.P14099534086512462152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075684 (SequenceMachineLib.roundAway ((A000265 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A087232.P14099534086512462152

/-! ## A087232.P3455016105259915755

`A075684(A001057(A000265(n+1)))`
-/

namespace A087232.P3455016105259915755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075684 (A001057 (A000265 (n + 1)).toNat).toNat

end

end A087232.P3455016105259915755

/-! ## A087232.P9532679851791475720

`A028242(A348006(n+1))`
-/

namespace A087232.P9532679851791475720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A348006 (n + 1)).toNat

end

end A087232.P9532679851791475720

/-! ## A087232.P8832945655213284492

`A004525(or(1, A348006(n+1)))`
-/

namespace A087232.P8832945655213284492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lor 1 (A348006 (n + 1))).toNat

end

end A087232.P8832945655213284492

/-! ## A087232.P11062877325151204636

`A000265(xor(1, A348006(n+1)))`
-/

namespace A087232.P11062877325151204636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.xor 1 (A348006 (n + 1))).toNat

end

end A087232.P11062877325151204636

/-! ## A087232.P13561812898766111413

`A000463(xor(2, A348006(n+1)))`
-/

namespace A087232.P13561812898766111413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (Int.xor 2 (A348006 (n + 1))).toNat

end

end A087232.P13561812898766111413

/-!
# A087233: a(n) = floor(sigma(A002110(n))/A002110(n)); integer quotient of divisor-sum of primorial numbers and primorials.

The programs for A087233, there is no canonical definition to state claims against.
-/

/-! ## A087233.P13180141904430928097

`∑[char[A072986(n+1)%A211419(n)]]`
-/

namespace A087233.P13180141904430928097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072986 (n + 1)) (A211419 n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087233.P13180141904430928097

/-! ## A087233.P9630059940541387379

`A102572(A053416(n)+A014574(n+1))`
-/

namespace A087233.P9630059940541387379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102572 (A053416 n + A014574 (n + 1)).toNat

end

end A087233.P9630059940541387379

/-! ## A087233.P15546729233223483800

`A000195(A302540(3*n+4)-A317144(n+3))`
-/

namespace A087233.P15546729233223483800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A302540 (3 * n + 4) - A317144 (n + 3)).toNat

end

end A087233.P15546729233223483800

/-! ## A087233.P6659734762222834610

`A000523(lt[A218799(n), A007954(n)])`
-/

namespace A087233.P6659734762222834610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218799 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A087233.P6659734762222834610

/-! ## A087233.P6464940819244599361

`A000193(A276625(n+1)+A127237(n))`
-/

namespace A087233.P6464940819244599361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 (A276625 (n + 1) + A127237 n).toNat

end

end A087233.P6464940819244599361

/-! ## A087233.P11976790670767210791

`A000523(lt[A163961(n+1), A136698(n)])`
-/

namespace A087233.P11976790670767210791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A087233.P11976790670767210791

/-! ## A087233.P16100071060488029977

`A000195(2*A125716(n+1))`
-/

namespace A087233.P16100071060488029977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (2 * A125716 (n + 1)).toNat

end

end A087233.P16100071060488029977

/-! ## A087233.P4018028992429825694

`A000195(A101635(n+1)+A000195(n+1))`
-/

namespace A087233.P4018028992429825694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A101635 (n + 1) + A000195 (n + 1)).toNat

end

end A087233.P4018028992429825694

/-! ## A087233.P14667349357593665300

`A097944(A051274(2*n+3)*A132271(n))`
-/

namespace A087233.P14667349357593665300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097944 (A051274 (2 * n + 3) * A132271 n).toNat

end

end A087233.P14667349357593665300

/-!
# A087234: Smallest deficient number with n distinct prime factors.

The programs for A087234, there is no canonical definition to state claims against.
-/

/-! ## A087234.P14022372761148193613

`A275733(A251588(n)+A033581(n))`
-/

namespace A087234.P14022372761148193613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275733 (A251588 n + A033581 n).toNat

end

end A087234.P14022372761148193613

/-!
# A087235: a(n) is the largest number in the set of solutions to n=x/pi(x), where pi(x)=A000720(x).

The programs for A087235, there is no canonical definition to state claims against.
-/

/-! ## A087235.P15238417079565379835

`A087241(2*n+3)`
-/

namespace A087235.P15238417079565379835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087241 (2 * n + 3)

end

end A087235.P15238417079565379835

/-! ## A087235.P6533410320521585594

`(n+2)*A102281(n+2)`
-/

namespace A087235.P6533410320521585594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A102281 (n + 2)

end

end A087235.P6533410320521585594

/-! ## A087235.P17279043570074843020

`A057809(∑[A038627(n+2)])`
-/

namespace A087235.P17279043570074843020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038627 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057809 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A087235.P17279043570074843020

/-! ## A087235.P4355233560725871334

`record[A087241(A004442(n+2))]`
-/

namespace A087235.P4355233560725871334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087241 (A004442 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087235.P4355233560725871334

/-! ## A087235.P2844143395475021715

`or(char[1], A087241(A005408(n+1)))`
-/

namespace A087235.P2844143395475021715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A087241 (A005408 (n + 1)).toNat)

end

end A087235.P2844143395475021715

/-!
# A087236: a(n) is the difference between the largest and smallest integer solutions to n=x/pi(x), where pi(x) = A000720(x).

The programs for A087236, there is no canonical definition to state claims against.
-/

/-! ## A087236.P1890871750510303488

`(n+2)*A087237(n+2)`
-/

namespace A087236.P1890871750510303488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A087237 (n + 2)

end

end A087236.P1890871750510303488

/-! ## A087236.P13777295899104037258

`A087235(n+2)-A038625(n+2)`
-/

namespace A087236.P13777295899104037258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087235 (n + 2) - A038625 (n + 2)

end

end A087236.P13777295899104037258

/-! ## A087236.P16346944942450900868

`A087235(n+2)-A087241(2*(n+1))`
-/

namespace A087236.P16346944942450900868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087235 (n + 2) - A087241 (2 * (n + 1))

end

end A087236.P16346944942450900868

/-! ## A087236.P9229750672374601812

`A087241(2*n+3)-A038625(n+2)`
-/

namespace A087236.P9229750672374601812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087241 (2 * n + 3) - A038625 (n + 2)

end

end A087236.P9229750672374601812

/-! ## A087236.P2663366458000840711

`A087241(2*n+3)-A087241(2*(n+1))`
-/

namespace A087236.P2663366458000840711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087241 (2 * n + 3) - A087241 (2 * (n + 1))

end

end A087236.P2663366458000840711

/-!
# A087237: a(n) = (Max{x : n*pi(x) = x} - Min{x : n*pi(x) = x})/n = A087236(n)/n.

The programs for A087237, there is no canonical definition to state claims against.
-/

/-! ## A087237.P7860006162437702853

`A087236(n+2)/(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A087237.P7860006162437702853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087236 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A087237.P7860006162437702853

/-! ## A087237.P8396661271247041772

`A102281(n+2)-A038626(n+2)`
-/

namespace A087237.P8396661271247041772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102281 (n + 2) - A038626 (n + 2)

end

end A087237.P8396661271247041772

/-! ## A087237.P18219669685528179254

`A102281(n+2)-A038625(n+2)/(n+2)`
-/

namespace A087237.P18219669685528179254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102281 (n + 2) : ℚ) - (A038625 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A087237.P18219669685528179254

/-! ## A087237.P17281636859664784834

`A102281(n+2)-A087241(2*(n+1))/(n+2)`
-/

namespace A087237.P17281636859664784834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102281 (n + 2) : ℚ) - (A087241 (2 * (n + 1)) : ℚ) / (n + 2 : ℚ)

end

end A087237.P17281636859664784834

/-! ## A087237.P17030444705124251937

`A102281(n+2)-record[A087241(n+2)/A033999(n)]/(n+2)`
-/

namespace A087237.P17030444705124251937
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087241 (n + 2) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102281 (n + 2) : ℚ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / (n + 2 : ℚ)

end

end A087237.P17030444705124251937

/-!
# A087238: First differences of A057809.

The programs for A087238, there is no canonical definition to state claims against.
-/

/-! ## A087238.P3710446517091035638

`A057809(n+2)-A057809(n+1)`
-/

namespace A087238.P3710446517091035638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057809 (n + 2) - A057809 (n + 1)

end

end A087238.P3710446517091035638

/-! ## A087238.P21063714464385

`Δ[A057809(n+1)]`
-/

namespace A087238.P21063714464385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087238.P21063714464385

/-! ## A087238.P12694697456750296622

`Δ[record[A057809(A133310(n))]]`
-/

namespace A087238.P12694697456750296622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057809 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087238.P12694697456750296622

/-! ## A087238.P12226275693699379057

`abs(Δ[A057809(A008619(2*n))])`
-/

namespace A087238.P12226275693699379057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057809 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A087238.P12226275693699379057

/-! ## A087238.P4777464478034577711

`Δ[A057809(A008619(2*n))]-A000035(2*n)`
-/

namespace A087238.P4777464478034577711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057809 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000035 (2 * n)

end

end A087238.P4777464478034577711

/-! ## A087238.P14218770892299726222

`A000027(Δ[A057809(Δ[n²]-n)])`
-/

namespace A087238.P14218770892299726222
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057809 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A087238.P14218770892299726222

/-!
# A087239: First differences of A038625.

The programs for A087239, there is no canonical definition to state claims against.
-/

/-! ## A087239.P12553346359949879949

`A038625(n+3)-A038625(n+2)`
-/

namespace A087239.P12553346359949879949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038625 (n + 3) - A038625 (n + 2)

end

end A087239.P12553346359949879949

/-! ## A087239.P9885940643382442893

`Δ[A038625(n+2)]`
-/

namespace A087239.P9885940643382442893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038625 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087239.P9885940643382442893

/-! ## A087239.P1753948248759603067

`Δ[A087241(2*(n+1))]`
-/

namespace A087239.P1753948248759603067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087241 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087239.P1753948248759603067

/-! ## A087239.P11111213752269043512

`Δ[(n+2)*A038626(n+2)]`
-/

namespace A087239.P11111213752269043512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A038626 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087239.P11111213752269043512

/-! ## A087239.P17625831619626578292

`-Δ[-A087241(n+2+n)]`
-/

namespace A087239.P17625831619626578292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A087241 (n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A087239.P17625831619626578292

/-!
# A087240: First differences of A087235.

The programs for A087240, there is no canonical definition to state claims against.
-/

/-! ## A087240.P16525809466297547388

`A087235(n+3)-A087235(n+2)`
-/

namespace A087240.P16525809466297547388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087235 (n + 3) - A087235 (n + 2)

end

end A087240.P16525809466297547388

/-! ## A087240.P3182940376834180006

`Δ[A087235(n+2)]`
-/

namespace A087240.P3182940376834180006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087235 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087240.P3182940376834180006

/-! ## A087240.P10976333623807411664

`Δ[A087241(2*n+3)]`
-/

namespace A087240.P10976333623807411664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087241 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087240.P10976333623807411664

/-! ## A087240.P17968951400734424367

`Δ[(n+2)*A102281(n+2)]`
-/

namespace A087240.P17968951400734424367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A102281 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087240.P17968951400734424367

/-! ## A087240.P7434382165433991615

`Δ[A057809(∑[A038627(n+2)])]`
-/

namespace A087240.P7434382165433991615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038627 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057809 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087240.P7434382165433991615

/-!
# A087241: Consecutive min and max-terms of solution-clusters of A057809, i,e, least and largest solutions to n=x/A000720[x].

The programs for A087241, there is no canonical definition to state claims against.
-/

/-! ## A087241.P6560478528356047784

`∪[A038625(n+2), A087235(n+2)]%A038625(3*n+4)`
-/

namespace A087241.P6560478528356047784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038625 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087235 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A038625 (3 * n + 4))

end

end A087241.P6560478528356047784

/-! ## A087241.P5347028144917521507

`A028310(∪[A038625(n+2), A087235(n+2)])`
-/

namespace A087241.P5347028144917521507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038625 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087235 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A087241.P5347028144917521507

/-! ## A087241.P16511270785561014645

`A254667(∪[A038625(n+2), A087235(n+2)])`
-/

namespace A087241.P16511270785561014645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038625 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087235 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A087241.P16511270785561014645

/-! ## A087241.P17338733857106283559

`A028310(∪[(n+2)*A038626(n+2), A087235(n+2)])`
-/

namespace A087241.P17338733857106283559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A038626 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087235 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A087241.P17338733857106283559

/-! ## A087241.P10420058398852205192

`A028310(∪[(n+2)*A102281(n+2), A038625(n+2)])`
-/

namespace A087241.P10420058398852205192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A102281 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038625 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A087241.P10420058398852205192

/-!
# A087242: Smallest prime number p such that n+p = q is also a prime, or 0 if no such prime number exists.

The programs for A087242, there is no canonical definition to state claims against.
-/

/-! ## A087242.P1098506013072810209

`A071375(A204894(n+1)-n)`
-/

namespace A087242.P1098506013072810209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071375 (A204894 (n + 1) - (n : ℤ)).toNat

end

end A087242.P1098506013072810209

/-! ## A087242.P18212838699950785389

`A061397(A204894(n+1)-(n+1))`
-/

namespace A087242.P18212838699950785389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A204894 (n + 1) - (n + 1 : ℤ)).toNat

end

end A087242.P18212838699950785389

/-! ## A087242.P5806757150711229622

`(2-A204897(n+1))*A204895(n+1)`
-/

namespace A087242.P5806757150711229622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A204897 (n + 1)) * A204895 (n + 1)

end

end A087242.P5806757150711229622

/-! ## A087242.P14985099714246968230

`A204895(n+1)*A278907(A141310(n))`
-/

namespace A087242.P14985099714246968230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204895 (n + 1) * A278907 (A141310 n).toNat

end

end A087242.P14985099714246968230

/-! ## A087242.P8987707779602640767

`A071375(A204897(n+1)+A204895(n+1))`
-/

namespace A087242.P8987707779602640767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071375 (A204897 (n + 1) + A204895 (n + 1)).toNat

end

end A087242.P8987707779602640767

/-! ## A087242.P3733303545601843480

`A061397(A204895(n+1)*A204897(n+1))`
-/

namespace A087242.P3733303545601843480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A204895 (n + 1) * A204897 (n + 1)).toNat

end

end A087242.P3733303545601843480

/-! ## A087242.P17344956036331191282

`A061397(A204895(n+1)^A204897(n+1))`
-/

namespace A087242.P17344956036331191282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (SequenceMachineLib.roundAway ((A204895 (n + 1) : ℚ) ^ (A204897 (n + 1) : ℤ))).toNat

end

end A087242.P17344956036331191282

/-! ## A087242.P6856148640920343554

`A061397(lcm(A204895(n+1), A204897(n+1)))`
-/

namespace A087242.P6856148640920343554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (Int.lcm (A204895 (n + 1)) (A204897 (n + 1)))

end

end A087242.P6856148640920343554

/-! ## A087242.P16333208242455994842

`A061397(A204895(n+1)+A204897(n+1)-1)`
-/

namespace A087242.P16333208242455994842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A204895 (n + 1) + (A204897 (n + 1) - 1)).toNat

end

end A087242.P16333208242455994842

/-! ## A087242.P7745698243248531292

`and(A204897(n+1), A342671(n+1))*A204895(n+1)`
-/

namespace A087242.P7745698243248531292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A204897 (n + 1)) (A342671 (n + 1)) * A204895 (n + 1)

end

end A087242.P7745698243248531292

/-!
# A087243: a(n) = n + A087242(n) or a(n)=0 if A087242(n)=0; the primes arising as n + A087242(n).

The programs for A087243, there is no canonical definition to state claims against.
-/

/-! ## A087243.P12239290011675781902

`∑{p}[A087242(n+1), n+1+#]`
-/

namespace A087243.P12239290011675781902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087242 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (n + 1 + p)

end

end A087243.P12239290011675781902

/-! ## A087243.P7712508898064783912

`2*n+3-(2*n+3)%A204894(n+1)`
-/

namespace A087243.P7712508898064783912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - Int.tmod (2 * n + 3 : ℤ) (A204894 (n + 1))

end

end A087243.P7712508898064783912

/-! ## A087243.P2183502978274351967

`A061397(A387853(n+2))`
-/

namespace A087243.P2183502978274351967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A387853 (n + 2)).toNat

end

end A087243.P2183502978274351967

/-! ## A087243.P10594614470571478690

`A049283(A204895(n+1)+n)`
-/

namespace A087243.P10594614470571478690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (A204895 (n + 1) + (n : ℤ)).toNat

end

end A087243.P10594614470571478690

/-! ## A087243.P422565112590525280

`A061397(A204895(n+1)+1+n)`
-/

namespace A087243.P422565112590525280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A204895 (n + 1) + 1 + (n : ℤ)).toNat

end

end A087243.P422565112590525280

/-! ## A087243.P2135332905136637109

`A204894(n+1)%A020484(n+1)`
-/

namespace A087243.P2135332905136637109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204894 (n + 1)) (A020484 (n + 1))

end

end A087243.P2135332905136637109

/-! ## A087243.P9532746241590787855

`A007918(n+3)%A093868(n+6)`
-/

namespace A087243.P9532746241590787855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007918 (n + 3)) (A093868 (n + 6))

end

end A087243.P9532746241590787855

/-! ## A087243.P2137949999388785111

`(2-A204897(n+1))*A204894(n+1)`
-/

namespace A087243.P2137949999388785111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A204897 (n + 1)) * A204894 (n + 1)

end

end A087243.P2137949999388785111

/-! ## A087243.P6053560246981689175

`∏{d}[A204894(n+1), #]%A270753(2*n+5)`
-/

namespace A087243.P6053560246981689175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) (A270753 (2 * n + 5))

end

end A087243.P6053560246981689175

/-! ## A087243.P13841642259890778913

`A151800(n+2)%A020484(A001281(n+2))`
-/

namespace A087243.P13841642259890778913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151800 (n + 2)) (A020484 (A001281 (n + 2)).toNat)

end

end A087243.P13841642259890778913

/-!
# A087244: Nonsquarefree deficient numbers.

The programs for A087244, the canonical program `A087244.P11901955224837126207` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087244 has offset 1).

The definition of A087244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5076 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087244.P16433781425856592089

`record[A125746(A013929(n+1))]`
-/

namespace A087244.P16433781425856592089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (A013929 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087244.P16433781425856592089

namespace A087244

/-- `record[A125746(A013929(n+1))]` -/
def P16433781425856592089.Spec : Prop :=
  ∀ n, P16433781425856592089.a n = A087244 (n + 1)

end A087244

/-! ## A087244.P1968895420951890960

`A125746(eq[n+1, A125746(n+1)+A008966(n+1)]+1)`
-/

namespace A087244.P1968895420951890960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (n + 1) + A008966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A087244.P1968895420951890960

namespace A087244

/-- `A125746(eq[n+1, A125746(n+1)+A008966(n+1)]+1)` -/
def P1968895420951890960.Spec : Prop :=
  ∀ n, P1968895420951890960.a n = A087244 (n + 1)

end A087244

/-! ## A087244.P11901955224837126207

`filter[A013929(n+1), A294934(#)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A087244

/-- `filter[A013929(n+1), A294934(#)]` -/
def P11901955224837126207.Spec : Prop :=
  ∀ n, P11901955224837126207.a n = A087244 (n + 1)

theorem P11901955224837126207.correct : P11901955224837126207.Spec := by
  intro n
  simp only [A087244, Nat.add_sub_cancel]

end A087244

/-! ## A087244.P10643700495873248737

`filter[A162966(n+2), A294934(#)]`
-/

namespace A087244.P10643700495873248737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A087244.P10643700495873248737

namespace A087244

/-- `filter[A162966(n+2), A294934(#)]` -/
def P10643700495873248737.Spec : Prop :=
  ∀ n, P10643700495873248737.a n = A087244 (n + 1)

end A087244

/-! ## A087244.P15297371867961871721

`filter[A354360(n+3), A294934(#)]`
-/

namespace A087244.P15297371867961871721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354360 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A087244.P15297371867961871721

namespace A087244

/-- `filter[A354360(n+3), A294934(#)]` -/
def P15297371867961871721.Spec : Prop :=
  ∀ n, P15297371867961871721.a n = A087244 (n + 1)

end A087244

/-! ## A087244.P17904613941374637059

`filter[A389462(n+1), A294934(#)]`
-/

namespace A087244.P17904613941374637059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A087244.P17904613941374637059

namespace A087244

/-- `filter[A389462(n+1), A294934(#)]` -/
def P17904613941374637059.Spec : Prop :=
  ∀ n, P17904613941374637059.a n = A087244 (n + 1)

end A087244

/-! ## A087244.P12989632425808879506

`filter[A005100(n+2), A087049(#)]`
-/

namespace A087244.P12989632425808879506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A087244.P12989632425808879506

namespace A087244

/-- `filter[A005100(n+2), A087049(#)]` -/
def P12989632425808879506.Spec : Prop :=
  ∀ n, P12989632425808879506.a n = A087244 (n + 1)

end A087244

/-! ## A087244.P10582046660214776674

`∩[A005100(n+1), A013929(n+1)]`
-/

namespace A087244.P10582046660214776674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087244.P10582046660214776674

namespace A087244

/-- `∩[A005100(n+1), A013929(n+1)]` -/
def P10582046660214776674.Spec : Prop :=
  ∀ n, (P10582046660214776674.a n : ℤ) = A087244 (n + 1)

end A087244

/-! ## A087244.P15687941790282317933

`∩[A005100(n+1), A389462(n+1)]`
-/

namespace A087244.P15687941790282317933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087244.P15687941790282317933

namespace A087244

/-- `∩[A005100(n+1), A389462(n+1)]` -/
def P15687941790282317933.Spec : Prop :=
  ∀ n, (P15687941790282317933.a n : ℤ) = A087244 (n + 1)

end A087244

/-! ## A087244.P18413583472392795277

`record[A125746(A088610(n+2))]`
-/

namespace A087244.P18413583472392795277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (A088610 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087244.P18413583472392795277

namespace A087244

/-- `record[A125746(A088610(n+2))]` -/
def P18413583472392795277.Spec : Prop :=
  ∀ n, P18413583472392795277.a n = A087244 (n + 1)

end A087244

/-! ## A087244.P13770946344131728832

`filter[A088610(2*(n+1)), A294934(#)]`
-/

namespace A087244.P13770946344131728832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A087244.P13770946344131728832

namespace A087244

/-- `filter[A088610(2*(n+1)), A294934(#)]` -/
def P13770946344131728832.Spec : Prop :=
  ∀ n, P13770946344131728832.a n = A087244 (n + 1)

end A087244

/-! ## A087244.P1195597790286185260

`filter[A005100(n+1), A107078(#)]`
-/

namespace A087244.P1195597790286185260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A087244.P1195597790286185260

namespace A087244

/-- `filter[A005100(n+1), A107078(#)]` -/
def P1195597790286185260.Spec : Prop :=
  ∀ n, P1195597790286185260.a n = A087244 (n + 1)

end A087244

/-! ## A087244.P18342675428169797190

`eq[A013586(n+1), A341618(n+1)]+1`
-/

namespace A087244.P18342675428169797190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341618 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A087244.P18342675428169797190

namespace A087244

/-- `eq[A013586(n+1), A341618(n+1)]+1` -/
def P18342675428169797190.Spec : Prop :=
  ∀ n, (P18342675428169797190.a n : ℤ) = A087244 (n + 1)

end A087244

/-! ## A087244.P6329818450726435003

`eq[A226177(n+1), A302110(n+1)]+1`
-/

namespace A087244.P6329818450726435003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302110 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A087244.P6329818450726435003

namespace A087244

/-- `eq[A226177(n+1), A302110(n+1)]+1` -/
def P6329818450726435003.Spec : Prop :=
  ∀ n, (P6329818450726435003.a n : ℤ) = A087244 (n + 1)

end A087244

/-! ## A087244.P1509118764986299457

`A065475(eq[A013586(n+1), A341618(n+1)])`
-/

namespace A087244.P1509118764986299457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A087244.P1509118764986299457

namespace A087244

/-- `A065475(eq[A013586(n+1), A341618(n+1)])` -/
def P1509118764986299457.Spec : Prop :=
  ∀ n, P1509118764986299457.a n = A087244 (n + 1)

end A087244

/-! ## A087244.P5243390090418963714

`A065475(eq[A226177(n+1), A302110(n+1)])`
-/

namespace A087244.P5243390090418963714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A087244.P5243390090418963714

namespace A087244

/-- `A065475(eq[A226177(n+1), A302110(n+1)])` -/
def P5243390090418963714.Spec : Prop :=
  ∀ n, P5243390090418963714.a n = A087244 (n + 1)

end A087244

/-! ## A087244.P12747774793229669231

`filter[A225353(n+1), A294934(#)]`
-/

namespace A087244.P12747774793229669231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A087244.P12747774793229669231

namespace A087244

/-- `filter[A225353(n+1), A294934(#)]` -/
def P12747774793229669231.Spec : Prop :=
  ∀ n, P12747774793229669231.a n = A087244 (n + 1)

end A087244

/-! ## A087244.P14735335763311736931

`filter[A125493(n+1), A087049(#)]`
-/

namespace A087244.P14735335763311736931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A087244.P14735335763311736931

namespace A087244

/-- `filter[A125493(n+1), A087049(#)]` -/
def P14735335763311736931.Spec : Prop :=
  ∀ n, P14735335763311736931.a n = A087244 (n + 1)

end A087244

/-! ## A087244.P5441570763741802752

`filter[A125493(n+1), A107078(#)]`
-/

namespace A087244.P5441570763741802752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A087244.P5441570763741802752

namespace A087244

/-- `filter[A125493(n+1), A107078(#)]` -/
def P5441570763741802752.Spec : Prop :=
  ∀ n, P5441570763741802752.a n = A087244 (n + 1)

end A087244

/-! ## A087244.P11772887393356317616

`∩[A013929(n+1), A125493(n+1)]`
-/

namespace A087244.P11772887393356317616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087244.P11772887393356317616

namespace A087244

/-- `∩[A013929(n+1), A125493(n+1)]` -/
def P11772887393356317616.Spec : Prop :=
  ∀ n, (P11772887393356317616.a n : ℤ) = A087244 (n + 1)

end A087244

/-!
# A087245: Nonsquarefree abundant numbers.

The programs for A087245, the canonical program `A087245.P3262090180692247072` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087245 has offset 1).

The definition of A087245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7795 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087245.P1435367380357989531

`eq[A008683(n+1)/74, A341621(n+1)]+1`
-/

namespace A087245.P1435367380357989531
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) : ℚ) / 74

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341621 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A087245.P1435367380357989531

namespace A087245

/-- `eq[A008683(n+1)/74, A341621(n+1)]+1` -/
def P1435367380357989531.Spec : Prop :=
  ∀ n, (P1435367380357989531.a n : ℤ) = A087245 (n + 1)

end A087245

/-! ## A087245.P3262090180692247072

`record[A105570(A005101(n+1))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A087245

/-- `record[A105570(A005101(n+1))]` -/
def P3262090180692247072.Spec : Prop :=
  ∀ n, P3262090180692247072.a n = A087245 (n + 1)

theorem P3262090180692247072.correct : P3262090180692247072.Spec := by
  intro n
  simp only [A087245, Nat.add_sub_cancel]

end A087245

/-! ## A087245.P15422688965892779526

`filter[A005101(n+1), A087049(#)]`
-/

namespace A087245.P15422688965892779526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A087245.P15422688965892779526

namespace A087245

/-- `filter[A005101(n+1), A087049(#)]` -/
def P15422688965892779526.Spec : Prop :=
  ∀ n, P15422688965892779526.a n = A087245 (n + 1)

end A087245

/-! ## A087245.P10419634451599896405

`filter[A005101(n+1), A355447(#)]`
-/

namespace A087245.P10419634451599896405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A087245.P10419634451599896405

namespace A087245

/-- `filter[A005101(n+1), A355447(#)]` -/
def P10419634451599896405.Spec : Prop :=
  ∀ n, P10419634451599896405.a n = A087245 (n + 1)

end A087245

/-! ## A087245.P9970876198118900227

`record[A105570(A224907(n+1)/2)]`
-/

namespace A087245.P9970876198118900227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (SequenceMachineLib.roundAway ((A224907 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087245.P9970876198118900227

namespace A087245

/-- `record[A105570(A224907(n+1)/2)]` -/
def P9970876198118900227.Spec : Prop :=
  ∀ n, P9970876198118900227.a n = A087245 (n + 1)

end A087245

/-! ## A087245.P17218203014092485439

`∩[A005101(n+1), A013929(n+2)]`
-/

namespace A087245.P17218203014092485439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087245.P17218203014092485439

namespace A087245

/-- `∩[A005101(n+1), A013929(n+2)]` -/
def P17218203014092485439.Spec : Prop :=
  ∀ n, (P17218203014092485439.a n : ℤ) = A087245 (n + 1)

end A087245

/-! ## A087245.P7468253002943164542

`∩[A005101(n+1), A126706(n+1)]`
-/

namespace A087245.P7468253002943164542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087245.P7468253002943164542

namespace A087245

/-- `∩[A005101(n+1), A126706(n+1)]` -/
def P7468253002943164542.Spec : Prop :=
  ∀ n, (P7468253002943164542.a n : ℤ) = A087245 (n + 1)

end A087245

/-! ## A087245.P3497163154338382978

`∩[A005101(n+1), A080756(n+1)]`
-/

namespace A087245.P3497163154338382978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087245.P3497163154338382978

namespace A087245

/-- `∩[A005101(n+1), A080756(n+1)]` -/
def P3497163154338382978.Spec : Prop :=
  ∀ n, (P3497163154338382978.a n : ℤ) = A087245 (n + 1)

end A087245

/-! ## A087245.P5432487353890527904

`∩[A005101(n+1), A162966(n+1)]`
-/

namespace A087245.P5432487353890527904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087245.P5432487353890527904

namespace A087245

/-- `∩[A005101(n+1), A162966(n+1)]` -/
def P5432487353890527904.Spec : Prop :=
  ∀ n, (P5432487353890527904.a n : ℤ) = A087245 (n + 1)

end A087245

/-! ## A087245.P17681088726097749038

`∩[A005101(n+1), A363597(n+1)]`
-/

namespace A087245.P17681088726097749038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087245.P17681088726097749038

namespace A087245

/-- `∩[A005101(n+1), A363597(n+1)]` -/
def P17681088726097749038.Spec : Prop :=
  ∀ n, (P17681088726097749038.a n : ℤ) = A087245 (n + 1)

end A087245

/-! ## A087245.P5850186709419757808

`filter[A013929(n+1), A294937(#)]`
-/

namespace A087245.P5850186709419757808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A087245.P5850186709419757808

namespace A087245

/-- `filter[A013929(n+1), A294937(#)]` -/
def P5850186709419757808.Spec : Prop :=
  ∀ n, P5850186709419757808.a n = A087245 (n + 1)

end A087245

/-! ## A087245.P5906966354003677625

`filter[A080756(n+1), A294937(#)]`
-/

namespace A087245.P5906966354003677625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A087245.P5906966354003677625

namespace A087245

/-- `filter[A080756(n+1), A294937(#)]` -/
def P5906966354003677625.Spec : Prop :=
  ∀ n, P5906966354003677625.a n = A087245 (n + 1)

end A087245

/-! ## A087245.P5432304502494578712

`filter[A126706(n+1), A294937(#)]`
-/

namespace A087245.P5432304502494578712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A087245.P5432304502494578712

namespace A087245

/-- `filter[A126706(n+1), A294937(#)]` -/
def P5432304502494578712.Spec : Prop :=
  ∀ n, P5432304502494578712.a n = A087245 (n + 1)

end A087245

/-! ## A087245.P14146246979085060049

`filter[A162966(n+1), A294937(#)]`
-/

namespace A087245.P14146246979085060049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A087245.P14146246979085060049

namespace A087245

/-- `filter[A162966(n+1), A294937(#)]` -/
def P14146246979085060049.Spec : Prop :=
  ∀ n, P14146246979085060049.a n = A087245 (n + 1)

end A087245

/-! ## A087245.P890551744665358819

`filter[A363597(n+1), A294937(#)]`
-/

namespace A087245.P890551744665358819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A087245.P890551744665358819

namespace A087245

/-- `filter[A363597(n+1), A294937(#)]` -/
def P890551744665358819.Spec : Prop :=
  ∀ n, P890551744665358819.a n = A087245 (n + 1)

end A087245

/-! ## A087245.P6903890877065130088

`filter[A088610(2*(n+1)), A294937(#)]`
-/

namespace A087245.P6903890877065130088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A087245.P6903890877065130088

namespace A087245

/-- `filter[A088610(2*(n+1)), A294937(#)]` -/
def P6903890877065130088.Spec : Prop :=
  ∀ n, P6903890877065130088.a n = A087245 (n + 1)

end A087245

/-! ## A087245.P8953728767828527079

`filter[A075378(2*n+1), A294937(#)]`
-/

namespace A087245.P8953728767828527079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075378 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A087245.P8953728767828527079

namespace A087245

/-- `filter[A075378(2*n+1), A294937(#)]` -/
def P8953728767828527079.Spec : Prop :=
  ∀ n, P8953728767828527079.a n = A087245 (n + 1)

end A087245

/-! ## A087245.P13685884435309429653

`filter[A005101(n+1), A107078(#)]`
-/

namespace A087245.P13685884435309429653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A087245.P13685884435309429653

namespace A087245

/-- `filter[A005101(n+1), A107078(#)]` -/
def P13685884435309429653.Spec : Prop :=
  ∀ n, P13685884435309429653.a n = A087245 (n + 1)

end A087245

/-! ## A087245.P6942352826927354497

`eq[A007423(n+1), A082551(n+1)]+1`
-/

namespace A087245.P6942352826927354497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A087245.P6942352826927354497

namespace A087245

/-- `eq[A007423(n+1), A082551(n+1)]+1` -/
def P6942352826927354497.Spec : Prop :=
  ∀ n, (P6942352826927354497.a n : ℤ) = A087245 (n + 1)

end A087245

/-! ## A087245.P5282132895211602254

`A020725(eq[A007423(n+1), A082551(n+1)])`
-/

namespace A087245.P5282132895211602254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A087245.P5282132895211602254

namespace A087245

/-- `A020725(eq[A007423(n+1), A082551(n+1)])` -/
def P5282132895211602254.Spec : Prop :=
  ∀ n, P5282132895211602254.a n = A087245 (n + 1)

end A087245

/-!
# A087246: Squarefree deficient numbers.

The programs for A087246, the canonical program `A087246.P10500642122879157726` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087246 has offset 1).

The definition of A087246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087246.P15796001582699733089

`lt[A326127(n+1), 0]+1`
-/

namespace A087246.P15796001582699733089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326127 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A087246.P15796001582699733089

namespace A087246

/-- `lt[A326127(n+1), 0]+1` -/
def P15796001582699733089.Spec : Prop :=
  ∀ n, (P15796001582699733089.a n : ℤ) = A087246 (n + 1)

end A087246

/-! ## A087246.P10500642122879157726

`lt[A326143(n+1)+1, 1]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A087246

/-- `lt[A326143(n+1)+1, 1]+1` -/
def P10500642122879157726.Spec : Prop :=
  ∀ n, (P10500642122879157726.a n : ℤ) = A087246 (n + 1)

theorem P10500642122879157726.correct : P10500642122879157726.Spec := by
  intro n
  simp only [A087246, Nat.add_sub_cancel]

end A087246

/-! ## A087246.P18337971348932893121

`record[A125746(A005117(n+1))]`
-/

namespace A087246.P18337971348932893121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (A005117 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087246.P18337971348932893121

namespace A087246

/-- `record[A125746(A005117(n+1))]` -/
def P18337971348932893121.Spec : Prop :=
  ∀ n, P18337971348932893121.a n = A087246 (n + 1)

end A087246

/-! ## A087246.P16363424846925883220

`record[A007913(A294934(n+1)+n)]`
-/

namespace A087246.P16363424846925883220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A294934 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087246.P16363424846925883220

namespace A087246

/-- `record[A007913(A294934(n+1)+n)]` -/
def P16363424846925883220.Spec : Prop :=
  ∀ n, P16363424846925883220.a n = A087246 (n + 1)

end A087246

/-! ## A087246.P10406851139001129901

`∩[A005117(n+1), A083210(n+1)]`
-/

namespace A087246.P10406851139001129901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087246.P10406851139001129901

namespace A087246

/-- `∩[A005117(n+1), A083210(n+1)]` -/
def P10406851139001129901.Spec : Prop :=
  ∀ n, (P10406851139001129901.a n : ℤ) = A087246 (n + 1)

end A087246

/-! ## A087246.P9196053242068859436

`∪[A000040(n+1), A087247(n+1)]`
-/

namespace A087246.P9196053242068859436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A087246.P9196053242068859436

namespace A087246

/-- `∪[A000040(n+1), A087247(n+1)]` -/
def P9196053242068859436.Spec : Prop :=
  ∀ n, (P9196053242068859436.a n : ℤ) = A087246 (n + 1)

end A087246

/-! ## A087246.P4703141530460510053

`∪[A087247(n+1), A235050(n+1)]`
-/

namespace A087246.P4703141530460510053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A087246.P4703141530460510053

namespace A087246

/-- `∪[A087247(n+1), A235050(n+1)]` -/
def P4703141530460510053.Spec : Prop :=
  ∀ n, (P4703141530460510053.a n : ℤ) = A087246 (n + 1)

end A087246

/-! ## A087246.P2030444246930704163

`lt[A048146(n+1)², A033879(n+1)]+1`
-/

namespace A087246.P2030444246930704163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A087246.P2030444246930704163

namespace A087246

/-- `lt[A048146(n+1)², A033879(n+1)]+1` -/
def P2030444246930704163.Spec : Prop :=
  ∀ n, (P2030444246930704163.a n : ℤ) = A087246 (n + 1)

end A087246

/-! ## A087246.P12456257383621566012

`filter[A005117(n+1), A294934(#)]`
-/

namespace A087246.P12456257383621566012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A087246.P12456257383621566012

namespace A087246

/-- `filter[A005117(n+1), A294934(#)]` -/
def P12456257383621566012.Spec : Prop :=
  ∀ n, P12456257383621566012.a n = A087246 (n + 1)

end A087246

/-! ## A087246.P14717959020624241412

`filter[A064594(n+1), A294934(#)]`
-/

namespace A087246.P14717959020624241412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A087246.P14717959020624241412

namespace A087246

/-- `filter[A064594(n+1), A294934(#)]` -/
def P14717959020624241412.Spec : Prop :=
  ∀ n, P14717959020624241412.a n = A087246 (n + 1)

end A087246

/-! ## A087246.P7578274532713106829

`lt[A326126(n+1), n+1]+1`
-/

namespace A087246.P7578274532713106829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326126 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A087246.P7578274532713106829

namespace A087246

/-- `lt[A326126(n+1), n+1]+1` -/
def P7578274532713106829.Spec : Prop :=
  ∀ n, (P7578274532713106829.a n : ℤ) = A087246 (n + 1)

end A087246

/-! ## A087246.P2412125346074353708

`lt[A326142(n+1), n+1]+1`
-/

namespace A087246.P2412125346074353708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326142 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A087246.P2412125346074353708

namespace A087246

/-- `lt[A326142(n+1), n+1]+1` -/
def P2412125346074353708.Spec : Prop :=
  ∀ n, (P2412125346074353708.a n : ℤ) = A087246 (n + 1)

end A087246

/-! ## A087246.P8207467128709185866

`filter[A348506(n+1), A294934(#)]`
-/

namespace A087246.P8207467128709185866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A087246.P8207467128709185866

namespace A087246

/-- `filter[A348506(n+1), A294934(#)]` -/
def P8207467128709185866.Spec : Prop :=
  ∀ n, P8207467128709185866.a n = A087246 (n + 1)

end A087246

/-! ## A087246.P1580059578272426581

`filter[A387710(n+1), A008966(#)]`
-/

namespace A087246.P1580059578272426581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A087246.P1580059578272426581

namespace A087246

/-- `filter[A387710(n+1), A008966(#)]` -/
def P1580059578272426581.Spec : Prop :=
  ∀ n, P1580059578272426581.a n = A087246 (n + 1)

end A087246

/-! ## A087246.P7241570455472099500

`filter[A387710(n+1), A323154(#)]`
-/

namespace A087246.P7241570455472099500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A087246.P7241570455472099500

namespace A087246

/-- `filter[A387710(n+1), A323154(#)]` -/
def P7241570455472099500.Spec : Prop :=
  ∀ n, P7241570455472099500.a n = A087246 (n + 1)

end A087246

/-! ## A087246.P10254801499728987696

`filter[A387710(n+1), A353559(#)]`
-/

namespace A087246.P10254801499728987696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A087246.P10254801499728987696

namespace A087246

/-- `filter[A387710(n+1), A353559(#)]` -/
def P10254801499728987696.Spec : Prop :=
  ∀ n, P10254801499728987696.a n = A087246 (n + 1)

end A087246

/-! ## A087246.P11557593521904435489

`filter[A387710(n+1), A353627(#)]`
-/

namespace A087246.P11557593521904435489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A087246.P11557593521904435489

namespace A087246

/-- `filter[A387710(n+1), A353627(#)]` -/
def P11557593521904435489.Spec : Prop :=
  ∀ n, P11557593521904435489.a n = A087246 (n + 1)

end A087246

/-! ## A087246.P8865506871413353118

`filter[A387710(n+1), A359834(#)]`
-/

namespace A087246.P8865506871413353118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A087246.P8865506871413353118

namespace A087246

/-- `filter[A387710(n+1), A359834(#)]` -/
def P8865506871413353118.Spec : Prop :=
  ∀ n, P8865506871413353118.a n = A087246 (n + 1)

end A087246

/-! ## A087246.P17066342878016366589

`filter[A348499(n+1), A294934(#)]`
-/

namespace A087246.P17066342878016366589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A087246.P17066342878016366589

namespace A087246

/-- `filter[A348499(n+1), A294934(#)]` -/
def P17066342878016366589.Spec : Prop :=
  ∀ n, P17066342878016366589.a n = A087246 (n + 1)

end A087246

/-! ## A087246.P9199005810869975262

`record[∏{p}[A005100(n+1), #]]`
-/

namespace A087246.P9199005810869975262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087246.P9199005810869975262

namespace A087246

/-- `record[∏{p}[A005100(n+1), #]]` -/
def P9199005810869975262.Spec : Prop :=
  ∀ n, (P9199005810869975262.a n : ℤ) = A087246 (n + 1)

end A087246

/-!
# A087247: Squarefree deficient nonprime numbers.

The programs for A087247, the canonical program `A087247.P1816243731063758448` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087247 has offset 1).

The definition of A087247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7929 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087247.P7640064449037403759

`filter[A000469(n+1), A294934(#)]`
-/

namespace A087247.P7640064449037403759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A087247.P7640064449037403759

namespace A087247

/-- `filter[A000469(n+1), A294934(#)]` -/
def P7640064449037403759.Spec : Prop :=
  ∀ n, P7640064449037403759.a n = A087247 (n + 1)

end A087247

/-! ## A087247.P13073396520675142671

`∩[A000469(n+1), A083210(n+1)]`
-/

namespace A087247.P13073396520675142671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087247.P13073396520675142671

namespace A087247

/-- `∩[A000469(n+1), A083210(n+1)]` -/
def P13073396520675142671.Spec : Prop :=
  ∀ n, (P13073396520675142671.a n : ℤ) = A087247 (n + 1)

end A087247

/-! ## A087247.P1816243731063758448

`filter[A087246(n+1), A005171(#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A087247

/-- `filter[A087246(n+1), A005171(#)]` -/
def P1816243731063758448.Spec : Prop :=
  ∀ n, P1816243731063758448.a n = A087247 (n + 1)

theorem P1816243731063758448.correct : P1816243731063758448.Spec := by
  intro n
  simp only [A087247, Nat.add_sub_cancel]

end A087247

/-! ## A087247.P18103358613444932951

`filter[A087246(n+1), A292438(#)]`
-/

namespace A087247.P18103358613444932951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A087247.P18103358613444932951

namespace A087247

/-- `filter[A087246(n+1), A292438(#)]` -/
def P18103358613444932951.Spec : Prop :=
  ∀ n, P18103358613444932951.a n = A087247 (n + 1)

end A087247

/-! ## A087247.P3473010376832312678

`filter[A087246(n+1), A354819(#)]`
-/

namespace A087247.P3473010376832312678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A087247.P3473010376832312678

namespace A087247

/-- `filter[A087246(n+1), A354819(#)]` -/
def P3473010376832312678.Spec : Prop :=
  ∀ n, P3473010376832312678.a n = A087247 (n + 1)

end A087247

/-! ## A087247.P15351711910776040717

`∩[A000469(n+1), A087246(n+1)]`
-/

namespace A087247.P15351711910776040717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087247.P15351711910776040717

namespace A087247

/-- `∩[A000469(n+1), A087246(n+1)]` -/
def P15351711910776040717.Spec : Prop :=
  ∀ n, (P15351711910776040717.a n : ℤ) = A087247 (n + 1)

end A087247

/-! ## A087247.P5476894098005215778

`∩[A067582(n+1), A087246(n+1)]`
-/

namespace A087247.P5476894098005215778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087247.P5476894098005215778

namespace A087247

/-- `∩[A067582(n+1), A087246(n+1)]` -/
def P5476894098005215778.Spec : Prop :=
  ∀ n, (P5476894098005215778.a n : ℤ) = A087247 (n + 1)

end A087247

/-! ## A087247.P11595968677155683931

`∩[A069169(n+1), A087246(n+1)]`
-/

namespace A087247.P11595968677155683931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087247.P11595968677155683931

namespace A087247

/-- `∩[A069169(n+1), A087246(n+1)]` -/
def P11595968677155683931.Spec : Prop :=
  ∀ n, (P11595968677155683931.a n : ℤ) = A087247 (n + 1)

end A087247

/-! ## A087247.P152881747228492049

`record[A340679(A087246(n+1))]`
-/

namespace A087247.P152881747228492049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340679 (A087246 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087247.P152881747228492049

namespace A087247

/-- `record[A340679(A087246(n+1))]` -/
def P152881747228492049.Spec : Prop :=
  ∀ n, P152881747228492049.a n = A087247 (n + 1)

end A087247

/-! ## A087247.P13934213868630378725

`record[and(A082551(n+1), A340679(n+1))]`
-/

namespace A087247.P13934213868630378725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082551 (n + 1)) (A340679 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087247.P13934213868630378725

namespace A087247

/-- `record[and(A082551(n+1), A340679(n+1))]` -/
def P13934213868630378725.Spec : Prop :=
  ∀ n, P13934213868630378725.a n = A087247 (n + 1)

end A087247

/-! ## A087247.P3264849461452592802

`filter[A387710(n+1), A354819(#)]`
-/

namespace A087247.P3264849461452592802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A087247.P3264849461452592802

namespace A087247

/-- `filter[A387710(n+1), A354819(#)]` -/
def P3264849461452592802.Spec : Prop :=
  ∀ n, P3264849461452592802.a n = A087247 (n + 1)

end A087247

/-! ## A087247.P5795757546235490809

`∩[A000469(n+1), A387710(n+1)]`
-/

namespace A087247.P5795757546235490809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087247.P5795757546235490809

namespace A087247

/-- `∩[A000469(n+1), A387710(n+1)]` -/
def P5795757546235490809.Spec : Prop :=
  ∀ n, (P5795757546235490809.a n : ℤ) = A087247 (n + 1)

end A087247

/-! ## A087247.P3870964536942429979

`∩[A087246(n+1), A240938(n+1)]`
-/

namespace A087247.P3870964536942429979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087247.P3870964536942429979

namespace A087247

/-- `∩[A087246(n+1), A240938(n+1)]` -/
def P3870964536942429979.Spec : Prop :=
  ∀ n, (P3870964536942429979.a n : ℤ) = A087247 (n + 1)

end A087247

/-! ## A087247.P1915825020627951972

`filter[A005100(n+1), A354819(#)]`
-/

namespace A087247.P1915825020627951972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A087247.P1915825020627951972

namespace A087247

/-- `filter[A005100(n+1), A354819(#)]` -/
def P1915825020627951972.Spec : Prop :=
  ∀ n, P1915825020627951972.a n = A087247 (n + 1)

end A087247

/-! ## A087247.P11547321443412194246

`∩[A000469(n+1), A005100(n+1)]`
-/

namespace A087247.P11547321443412194246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087247.P11547321443412194246

namespace A087247

/-- `∩[A000469(n+1), A005100(n+1)]` -/
def P11547321443412194246.Spec : Prop :=
  ∀ n, (P11547321443412194246.a n : ℤ) = A087247 (n + 1)

end A087247

/-! ## A087247.P4109112355445282588

`record[A340679(record[n-A082551(n+1)])]`
-/

namespace A087247.P4109112355445282588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A082551 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340679 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087247.P4109112355445282588

namespace A087247

/-- `record[A340679(record[n-A082551(n+1)])]` -/
def P4109112355445282588.Spec : Prop :=
  ∀ n, P4109112355445282588.a n = A087247 (n + 1)

end A087247

/-! ## A087247.P8281236017205533622

`∩[A048943(n+1), A087246(n+1)]`
-/

namespace A087247.P8281236017205533622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087247.P8281236017205533622

namespace A087247

/-- `∩[A048943(n+1), A087246(n+1)]` -/
def P8281236017205533622.Spec : Prop :=
  ∀ n, (P8281236017205533622.a n : ℤ) = A087247 (n + 1)

end A087247

/-! ## A087247.P13907369259037890207

`∩[A087246(n+1), A233182(n+1)]`
-/

namespace A087247.P13907369259037890207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087247.P13907369259037890207

namespace A087247

/-- `∩[A087246(n+1), A233182(n+1)]` -/
def P13907369259037890207.Spec : Prop :=
  ∀ n, (P13907369259037890207.a n : ℤ) = A087247 (n + 1)

end A087247

/-! ## A087247.P13566313994058108589

`filter[A083210(n+1), A354819(#)]`
-/

namespace A087247.P13566313994058108589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A087247.P13566313994058108589

namespace A087247

/-- `filter[A083210(n+1), A354819(#)]` -/
def P13566313994058108589.Spec : Prop :=
  ∀ n, P13566313994058108589.a n = A087247 (n + 1)

end A087247

/-! ## A087247.P9073066976346356097

`filter[A387892(n+1), A354819(#)]`
-/

namespace A087247.P9073066976346356097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A087247.P9073066976346356097

namespace A087247

/-- `filter[A387892(n+1), A354819(#)]` -/
def P9073066976346356097.Spec : Prop :=
  ∀ n, P9073066976346356097.a n = A087247 (n + 1)

end A087247

/-!
# A087248: Squarefree abundant numbers.

The programs for A087248, the canonical program `A087248.P12195210729776297847` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087248 has offset 1).

The definition of A087248 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5505 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087248.P6241475844571564491

`sqrt(A391428(n+1))`
-/

namespace A087248.P6241475844571564491
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A391428 (n + 1) : ℝ)

end

end A087248.P6241475844571564491

namespace A087248

/-- `sqrt(A391428(n+1))` -/
def P6241475844571564491.Spec : Prop :=
  ∀ n, P6241475844571564491.a n = (A087248 (n + 1) : ℝ)

end A087248

/-! ## A087248.P6690801230949864315

`record[A007947(A034683(n+1))]`
-/

namespace A087248.P6690801230949864315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A034683 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087248.P6690801230949864315

namespace A087248

/-- `record[A007947(A034683(n+1))]` -/
def P6690801230949864315.Spec : Prop :=
  ∀ n, P6690801230949864315.a n = A087248 (n + 1)

end A087248

/-! ## A087248.P12195210729776297847

`record[A007947(A308127(n+1))]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A087248

/-- `record[A007947(A308127(n+1))]` -/
def P12195210729776297847.Spec : Prop :=
  ∀ n, P12195210729776297847.a n = A087248 (n + 1)

theorem P12195210729776297847.correct : P12195210729776297847.Spec := by
  intro n
  simp only [A087248, Nat.add_sub_cancel]

end A087248

/-! ## A087248.P15316886954500543174

`filter[A034683(n+1), A008966(#)]`
-/

namespace A087248.P15316886954500543174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A087248.P15316886954500543174

namespace A087248

/-- `filter[A034683(n+1), A008966(#)]` -/
def P15316886954500543174.Spec : Prop :=
  ∀ n, P15316886954500543174.a n = A087248 (n + 1)

end A087248

/-! ## A087248.P1290037754724152695

`filter[A308127(n+1), A008966(#)]`
-/

namespace A087248.P1290037754724152695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A087248.P1290037754724152695

namespace A087248

/-- `filter[A308127(n+1), A008966(#)]` -/
def P1290037754724152695.Spec : Prop :=
  ∀ n, P1290037754724152695.a n = A087248 (n + 1)

end A087248

/-! ## A087248.P14519723546158474828

`filter[A357685(n+1), A008966(#)]`
-/

namespace A087248.P14519723546158474828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A087248.P14519723546158474828

namespace A087248

/-- `filter[A357685(n+1), A008966(#)]` -/
def P14519723546158474828.Spec : Prop :=
  ∀ n, P14519723546158474828.a n = A087248 (n + 1)

end A087248

/-! ## A087248.P7513056708850294391

`filter[A379029(n+1), A008966(#)]`
-/

namespace A087248.P7513056708850294391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A087248.P7513056708850294391

namespace A087248

/-- `filter[A379029(n+1), A008966(#)]` -/
def P7513056708850294391.Spec : Prop :=
  ∀ n, P7513056708850294391.a n = A087248 (n + 1)

end A087248

/-! ## A087248.P10126232479889708204

`filter[A034683(n+1), A354353(#)]`
-/

namespace A087248.P10126232479889708204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A087248.P10126232479889708204

namespace A087248

/-- `filter[A034683(n+1), A354353(#)]` -/
def P10126232479889708204.Spec : Prop :=
  ∀ n, P10126232479889708204.a n = A087248 (n + 1)

end A087248

/-! ## A087248.P17397130045669526157

`filter[A034683(n+1), A354819(#)]`
-/

namespace A087248.P17397130045669526157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A087248.P17397130045669526157

namespace A087248

/-- `filter[A034683(n+1), A354819(#)]` -/
def P17397130045669526157.Spec : Prop :=
  ∀ n, P17397130045669526157.a n = A087248 (n + 1)

end A087248

/-! ## A087248.P16846455346875809735

`filter[A390558(n+1), A008966(#)]`
-/

namespace A087248.P16846455346875809735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A087248.P16846455346875809735

namespace A087248

/-- `filter[A390558(n+1), A008966(#)]` -/
def P16846455346875809735.Spec : Prop :=
  ∀ n, P16846455346875809735.a n = A087248 (n + 1)

end A087248

/-! ## A087248.P3884908654937307360

`filter[A308127(n+1), A354353(#)]`
-/

namespace A087248.P3884908654937307360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A087248.P3884908654937307360

namespace A087248

/-- `filter[A308127(n+1), A354353(#)]` -/
def P3884908654937307360.Spec : Prop :=
  ∀ n, P3884908654937307360.a n = A087248 (n + 1)

end A087248

/-! ## A087248.P9917156663497793136

`filter[A308127(n+1), A354819(#)]`
-/

namespace A087248.P9917156663497793136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A087248.P9917156663497793136

namespace A087248

/-- `filter[A308127(n+1), A354819(#)]` -/
def P9917156663497793136.Spec : Prop :=
  ∀ n, P9917156663497793136.a n = A087248 (n + 1)

end A087248

/-! ## A087248.P6644134227977812986

`filter[A357685(n+1), A354353(#)]`
-/

namespace A087248.P6644134227977812986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A087248.P6644134227977812986

namespace A087248

/-- `filter[A357685(n+1), A354353(#)]` -/
def P6644134227977812986.Spec : Prop :=
  ∀ n, P6644134227977812986.a n = A087248 (n + 1)

end A087248

/-! ## A087248.P7759991825007687314

`filter[A379029(n+1), A354353(#)]`
-/

namespace A087248.P7759991825007687314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A087248.P7759991825007687314

namespace A087248

/-- `filter[A379029(n+1), A354353(#)]` -/
def P7759991825007687314.Spec : Prop :=
  ∀ n, P7759991825007687314.a n = A087248 (n + 1)

end A087248

/-! ## A087248.P13089026356649336905

`filter[A379029(n+1), A354819(#)]`
-/

namespace A087248.P13089026356649336905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A087248.P13089026356649336905

namespace A087248

/-- `filter[A379029(n+1), A354819(#)]` -/
def P13089026356649336905.Spec : Prop :=
  ∀ n, P13089026356649336905.a n = A087248 (n + 1)

end A087248

/-! ## A087248.P10566646331652167534

`filter[A390558(n+1), A354353(#)]`
-/

namespace A087248.P10566646331652167534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A087248.P10566646331652167534

namespace A087248

/-- `filter[A390558(n+1), A354353(#)]` -/
def P10566646331652167534.Spec : Prop :=
  ∀ n, P10566646331652167534.a n = A087248 (n + 1)

end A087248

/-! ## A087248.P11419898671256658849

`filter[A390558(n+1), A354819(#)]`
-/

namespace A087248.P11419898671256658849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A087248.P11419898671256658849

namespace A087248

/-- `filter[A390558(n+1), A354819(#)]` -/
def P11419898671256658849.Spec : Prop :=
  ∀ n, P11419898671256658849.a n = A087248 (n + 1)

end A087248

/-! ## A087248.P10850314107750424381

`filter[A290466(n+2), A008966(#)]`
-/

namespace A087248.P10850314107750424381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A087248.P10850314107750424381

namespace A087248

/-- `filter[A290466(n+2), A008966(#)]` -/
def P10850314107750424381.Spec : Prop :=
  ∀ n, P10850314107750424381.a n = A087248 (n + 1)

end A087248

/-! ## A087248.P568380475455468933

`filter[A389463(n+2), A008966(#)]`
-/

namespace A087248.P568380475455468933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389463 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A087248.P568380475455468933

namespace A087248

/-- `filter[A389463(n+2), A008966(#)]` -/
def P568380475455468933.Spec : Prop :=
  ∀ n, P568380475455468933.a n = A087248 (n + 1)

end A087248

/-!
# A087249: Squarefree numbers k such that sigma(k) is not squarefree.

The programs for A087249, the canonical program `A087249.P16550911521513337287` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087249 has offset 1).

The definition of A087249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087249.P16550911521513337287

`eq[A008683(A000203(n+1)), A048146(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A087249

/-- `eq[A008683(A000203(n+1)), A048146(n+1)]+1` -/
def P16550911521513337287.Spec : Prop :=
  ∀ n, (P16550911521513337287.a n : ℤ) = A087249 (n + 1)

theorem P16550911521513337287.correct : P16550911521513337287.Spec := by
  intro n
  simp only [A087249, Nat.add_sub_cancel]

end A087249

/-! ## A087249.P2684470359843916293

`eq[A008683(A000203(n+1)), A336644(n+1)]+1`
-/

namespace A087249.P2684470359843916293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336644 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A087249.P2684470359843916293

namespace A087249

/-- `eq[A008683(A000203(n+1)), A336644(n+1)]+1` -/
def P2684470359843916293.Spec : Prop :=
  ∀ n, (P2684470359843916293.a n : ℤ) = A087249 (n + 1)

end A087249

/-! ## A087249.P4999675670039067883

`eq[A008683(∑{d}[n+1, #]), A048146(n+1)]+1`
-/

namespace A087249.P4999675670039067883
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ d ∈ Nat.divisors (f2 n), d)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1

end

end A087249.P4999675670039067883

namespace A087249

/-- `eq[A008683(∑{d}[n+1, #]), A048146(n+1)]+1` -/
def P4999675670039067883.Spec : Prop :=
  ∀ n, (P4999675670039067883.a n : ℤ) = A087249 (n + 1)

end A087249

/-! ## A087249.P2304805201726431047

`eq[∑{e}[n+1, #-1], A100112(∑{d}[n+1, #])]+1`
-/

namespace A087249.P2304805201726431047
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ((Nat.factorization (f2 n) p : ℤ) - 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100112 (∑ d ∈ Nat.divisors (f4 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1

end

end A087249.P2304805201726431047

namespace A087249

/-- `eq[∑{e}[n+1, #-1], A100112(∑{d}[n+1, #])]+1` -/
def P2304805201726431047.Spec : Prop :=
  ∀ n, (P2304805201726431047.a n : ℤ) = A087249 (n + 1)

end A087249

/-! ## A087249.P7492042398362472109

`eq[A000688(n+1), A107078(A000203(n+1))]+1`
-/

namespace A087249.P7492042398362472109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107078 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A087249.P7492042398362472109

namespace A087249

/-- `eq[A000688(n+1), A107078(A000203(n+1))]+1` -/
def P7492042398362472109.Spec : Prop :=
  ∀ n, (P7492042398362472109.a n : ℤ) = A087249 (n + 1)

end A087249

/-! ## A087249.P18121843485008202780

`eq[A007424(n+1), A107078(A000203(n+1))]+1`
-/

namespace A087249.P18121843485008202780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107078 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A087249.P18121843485008202780

namespace A087249

/-- `eq[A007424(n+1), A107078(A000203(n+1))]+1` -/
def P18121843485008202780.Spec : Prop :=
  ∀ n, (P18121843485008202780.a n : ℤ) = A087249 (n + 1)

end A087249

/-! ## A087249.P8693339252183330529

`eq[A008683(A064478(n)), A105570(n)]`
-/

namespace A087249.P8693339252183330529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A064478 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087249.P8693339252183330529

namespace A087249

/-- `eq[A008683(A064478(n)), A105570(n)]` -/
def P8693339252183330529.Spec : Prop :=
  ∀ n, (P8693339252183330529.a n : ℤ) = A087249 (n + 1)

end A087249

/-!
# A087252: Numbers that are divisible by 4, but cannot be the largest peak value in a 3x+1 trajectory, regardless of the initial value.

The programs for A087252, there is no canonical definition to state claims against.
-/

/-! ## A087252.P17777280924545012228

`record[(4*(n+3))%A025586(n+3)]`
-/

namespace A087252.P17777280924545012228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * (n + 3) : ℤ) (A025586 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087252.P17777280924545012228

/-! ## A087252.P9061971453751401003

`4*(lt[n+1, A025586(n+1)/4]+1)`
-/

namespace A087252.P9061971453751401003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025586 (n + 1) : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1)

end

end A087252.P9061971453751401003

/-! ## A087252.P16389894629129780817

`4*eq[0, A087255(A008574(n))]`
-/

namespace A087252.P16389894629129780817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087255 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A087252.P16389894629129780817

/-! ## A087252.P3707687503252475009

`∩[A213199(n+1), A008574(n)]`
-/

namespace A087252.P3707687503252475009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087252.P3707687503252475009

/-! ## A087252.P5108461240950778790

`∩[A213199(n+1), A008586(n)]`
-/

namespace A087252.P5108461240950778790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087252.P5108461240950778790

/-! ## A087252.P3227547386712229291

`∩[A019442(n+1), A213199(n+1)]`
-/

namespace A087252.P3227547386712229291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087252.P3227547386712229291

/-! ## A087252.P154809088127662062

`∩[A059558(n+1), A213199(n+1)]`
-/

namespace A087252.P154809088127662062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087252.P154809088127662062

/-! ## A087252.P1068793570131846174

`∩[A136724(n+1), A213199(n+1)]`
-/

namespace A087252.P1068793570131846174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087252.P1068793570131846174

/-! ## A087252.P4009402164085675702

`∩[A192544(n+1), A213199(n+1)]`
-/

namespace A087252.P4009402164085675702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087252.P4009402164085675702

/-! ## A087252.P13812572488571287366

`record[A008574(n+3)%A056959(n+3)]`
-/

namespace A087252.P13812572488571287366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008574 (n + 3)) (A056959 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087252.P13812572488571287366

/-!
# A087253: Number of distinct initial values of various 3x+1 trajectories of which the peak-value equals 4n.

The programs for A087253, there is no canonical definition to state claims against.
-/

/-! ## A087253.P17401354085283970162

`A087255(4*(n+1))`
-/

namespace A087253.P17401354085283970162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087255 (4 * (n + 1))

end

end A087253.P17401354085283970162

/-! ## A087253.P9813444200818599767

`A087255(A008586(n+1))%15`
-/

namespace A087253.P9813444200818599767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087255 (A008586 (n + 1)).toNat) 15

end

end A087253.P9813444200818599767

/-! ## A087253.P6418970429985718202

`A087255(A059558(n+1))%17`
-/

namespace A087253.P6418970429985718202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087255 (A059558 (n + 1)).toNat) 17

end

end A087253.P6418970429985718202

/-! ## A087253.P4680884751417043087

`Δ[A087255(A008574(n))+a(n-1)]` with `a(0)=0`
-/

namespace A087253.P4680884751417043087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A087255 (A008574 n).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087253.P4680884751417043087

/-! ## A087253.P14779020275719928675

`A087255(A059558(n+1))+A000038(n+1)`
-/

namespace A087253.P14779020275719928675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087255 (A059558 (n + 1)).toNat + A000038 (n + 1)

end

end A087253.P14779020275719928675

/-! ## A087253.P10056708923333110066

`A087255(A059558(n+1))^(A000007(n)+1)`
-/

namespace A087253.P10056708923333110066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087255 (A059558 (n + 1)).toNat : ℚ) ^ (A000007 n + 1 : ℤ)

end

end A087253.P10056708923333110066

/-! ## A087253.P7545025732318339037

`A087255(A059558(n+1))+val(A286024(n), 10)`
-/

namespace A087253.P7545025732318339037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087255 (A059558 (n + 1)).toNat + (SequenceMachineLib.valuation (A286024 n).toNat 10 : ℤ)

end

end A087253.P7545025732318339037

/-! ## A087253.P1690585616865122391

`A087255(A059558(n+1))^A007318(C(2, n))`
-/

namespace A087253.P1690585616865122391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087255 (A059558 (n + 1)).toNat : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A087253.P1690585616865122391

/-! ## A087253.P8081693204209170247

`A087255(A059558(n+1))/A088705(Δ[n²])`
-/

namespace A087253.P8081693204209170247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087255 (A059558 (n + 1)).toNat : ℚ) / (A088705 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A087253.P8081693204209170247

/-! ## A087253.P8490144503476218635

`A087255(A059558(n+1))+floor(A043545(n)/2)`
-/

namespace A087253.P8490144503476218635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087255 (A059558 (n + 1)).toNat + ⌊(A043545 n : ℚ) / 2⌋

end

end A087253.P8490144503476218635

/-! ## A087253.P3899814008252012214

`A087255(A059558(n+1))+val(A050384(n+1), 10)`
-/

namespace A087253.P3899814008252012214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087255 (A059558 (n + 1)).toNat + (SequenceMachineLib.valuation (A050384 (n + 1)).toNat 10 : ℤ)

end

end A087253.P3899814008252012214

/-! ## A087253.P11575958519255242815

`A087255(A059558(n+1))+val(A050430(n+1), 10)`
-/

namespace A087253.P11575958519255242815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087255 (A059558 (n + 1)).toNat + (SequenceMachineLib.valuation (A050430 (n + 1)).toNat 10 : ℤ)

end

end A087253.P11575958519255242815

/-! ## A087253.P13514458224316032124

`A087255(A059558(n+1))+val(A050432(n+1), 10)`
-/

namespace A087253.P13514458224316032124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087255 (A059558 (n + 1)).toNat + (SequenceMachineLib.valuation (A050432 (n + 1)).toNat 10 : ℤ)

end

end A087253.P13514458224316032124

/-! ## A087253.P6969057545736502669

`A087255(A059558(n+1))^A051801(a(n-1))` with `a(0)=1`
-/

namespace A087253.P6969057545736502669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A087255 (A059558 (n + 1)).toNat : ℚ) ^ (A051801 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℤ)

end

end A087253.P6969057545736502669

/-! ## A087253.P16191528742166157990

`A087255(A059558(n+1))/A008683(n+1)²!`
-/

namespace A087253.P16191528742166157990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087255 (A059558 (n + 1)).toNat : ℚ) / (Nat.factorial (A008683 (n + 1) ^ 2).toNat : ℚ)

end

end A087253.P16191528742166157990

/-! ## A087253.P6703790828279748187

`A087255(A059558(n+1))/∑{e}[A000040(n+1), #]`
-/

namespace A087253.P6703790828279748187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087255 (A059558 (n + 1)).toNat : ℚ) / ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℚ)

end

end A087253.P6703790828279748187

/-! ## A087253.P11551904289598028365

`A087255(A059558(n+1))/A001222(A005235(n+1))`
-/

namespace A087253.P11551904289598028365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087255 (A059558 (n + 1)).toNat : ℚ) / (A001222 (A005235 (n + 1)).toNat : ℚ)

end

end A087253.P11551904289598028365

/-! ## A087253.P14297326313276592299

`A087255(A059558(n+1))/A001222(A037153(n+1))`
-/

namespace A087253.P14297326313276592299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087255 (A059558 (n + 1)).toNat : ℚ) / (A001222 (A037153 (n + 1)).toNat : ℚ)

end

end A087253.P14297326313276592299

/-! ## A087253.P15514449021596319326

`A087255(A059558(n+1))/A001222(A275272(n+1))`
-/

namespace A087253.P15514449021596319326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087255 (A059558 (n + 1)).toNat : ℚ) / (A001222 (A275272 (n + 1)).toNat : ℚ)

end

end A087253.P15514449021596319326

/-! ## A087253.P14546777179034855948

`A087255(A059558(n+1))^A001222(A270997(n+1))`
-/

namespace A087253.P14546777179034855948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087255 (A059558 (n + 1)).toNat : ℚ) ^ (A001222 (A270997 (n + 1)).toNat : ℤ)

end

end A087253.P14546777179034855948

/-!
# A087254: If we start the Collatz-iteration at these values, each divisible by 4, all subsequent terms in trajectory are smaller than the initial value.

The programs for A087254, there is no canonical definition to state claims against.
-/

/-! ## A087254.P6848034191745258655

`A222562(n+3)`
-/

namespace A087254.P6848034191745258655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222562 (n + 3)

end

end A087254.P6848034191745258655

/-! ## A087254.P4585385487674026427

`eq[1, A087255(n+3)]+3`
-/

namespace A087254.P4585385487674026427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087255 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A087254.P4585385487674026427

/-! ## A087254.P771955733729687052

`record[A222562(A262672(n))]`
-/

namespace A087254.P771955733729687052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222562 (A262672 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087254.P771955733729687052

/-! ## A087254.P18388928328090208761

`record[A222562(A052938(A008611(n)))]`
-/

namespace A087254.P18388928328090208761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222562 (A052938 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087254.P18388928328090208761

/-! ## A087254.P17766464907536612086

`record[A222562(A052938(A008619(n)))]`
-/

namespace A087254.P17766464907536612086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222562 (A052938 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087254.P17766464907536612086

/-! ## A087254.P16676211879212862036

`record[A222562(A052938(A052938(n)))]`
-/

namespace A087254.P16676211879212862036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222562 (A052938 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087254.P16676211879212862036

/-! ## A087254.P11235697458466314957

`record[A087258(A008574(A267528(n)))]`
-/

namespace A087254.P11235697458466314957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087258 (A008574 (A267528 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087254.P11235697458466314957

/-! ## A087254.P16147224921132473761

`record[A087258(A008586(A294732(n+2)))]`
-/

namespace A087254.P16147224921132473761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087258 (A008586 (A294732 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087254.P16147224921132473761

/-!
# A087255: Number of different initial values for 3x+1 trajectories of which the largest term appearing during the iteration equals n.

The programs for A087255, there is no canonical definition to state claims against.
-/

/-! ## A087255.P10063652496580524582

`A168201(C(n, A087263(n+1)))`
-/

namespace A087255.P10063652496580524582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (Nat.choose n (A087263 (n + 1)).toNat)

end

end A087255.P10063652496580524582

/-! ## A087255.P11255416506438510162

`C(A185155(2*(n+1)), A260109(A025480(n)))`
-/

namespace A087255.P11255416506438510162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A185155 (2 * (n + 1))).toNat (A260109 (A025480 n).toNat).toNat

end

end A087255.P11255416506438510162

/-! ## A087255.P3330273185907946287

`A277012(A323523(n))%A059010(A087263(n+1))`
-/

namespace A087255.P3330273185907946287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277012 (A323523 n).toNat) (A059010 (A087263 (n + 1)).toNat)

end

end A087255.P3330273185907946287

/-! ## A087255.P14069975248994259588

`∑{d}[A036297(A053627(n+1)), #]`
-/

namespace A087255.P14069975248994259588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036297 (A053627 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A087255.P14069975248994259588

/-! ## A087255.P276016917527432816

`A070533(and(A017911(n), A182492(n)))`
-/

namespace A087255.P276016917527432816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070533 (Int.land (A017911 n) (A182492 n)).toNat

end

end A087255.P276016917527432816

/-!
# A087256: Number of different initial values for 3x+1 trajectories in which the largest term appearing in the iteration is 2^n.

The programs for A087256, there is no canonical definition to state claims against.
-/

/-! ## A087256.P6929538681018856819

`A136766(Δ[A323787(floor(n/2))])`
-/

namespace A087256.P6929538681018856819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323787 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136766 (f1 (n + 1) - f1 n).toNat

end

end A087256.P6929538681018856819

/-! ## A087256.P3320357320277261733

`A254049(gcd(n+1, A048054(n+1)))`
-/

namespace A087256.P3320357320277261733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254049 (Int.gcd (n + 1 : ℤ) (A048054 (n + 1)))

end

end A087256.P3320357320277261733

/-! ## A087256.P10308619336744346177

`A330889((n^(n%2))^A057059(n+1))`
-/

namespace A087256.P10308619336744346177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330889 (SequenceMachineLib.roundAway ((n ^ (n % 2) : ℚ) ^ (A057059 (n + 1) : ℤ))).toNat

end

end A087256.P10308619336744346177

/-! ## A087256.P13443710878893067798

`A085099(A052125(n²+3)^val(n+1, 2)+1)`
-/

namespace A087256.P13443710878893067798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 (A052125 (n ^ 2 + 3) ^ SequenceMachineLib.valuation (n + 1) 2 + 1).toNat

end

end A087256.P13443710878893067798

/-! ## A087256.P16324689156471058211

`A008480((n²+2)*A067721(xor(n, n+1))+1)`
-/

namespace A087256.P16324689156471058211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 ((n ^ 2 + 2 : ℤ) * A067721 (Nat.xor n (n + 1)) + 1).toNat

end

end A087256.P16324689156471058211

/-!
# A087258: a(n) = gcd(n, A025586(n)), greatest common divisor of n and largest value in 3x+1 iteration list started at n.

The programs for A087258, there is no canonical definition to state claims against.
-/

/-! ## A087258.P3391961760241916246

`gcd(n+1, A025586(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A087258.P3391961760241916246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A025586 (n + 1))

end

end A087258.P3391961760241916246

/-! ## A087258.P7545100410900582294

`gcd(A025586(n+1), A131738(n))`
-/

namespace A087258.P7545100410900582294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025586 (n + 1)) (A131738 n)

end

end A087258.P7545100410900582294

/-! ## A087258.P7416814432462836737

`gcd(A056959(n+1), A165998(n))`
-/

namespace A087258.P7416814432462836737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056959 (n + 1)) (A165998 n)

end

end A087258.P7416814432462836737

/-! ## A087258.P14823969498809943912

`gcd(4*A347264(n+1), A000027(n+1))`
-/

namespace A087258.P14823969498809943912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (4 * A347264 (n + 1)) (A000027 (n + 1))

end

end A087258.P14823969498809943912

/-! ## A087258.P3085738446044689537

`gcd(A000027(n+1), A056959(A000027(n+1)))`
-/

namespace A087258.P3085738446044689537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A056959 (A000027 (n + 1)).toNat)

end

end A087258.P3085738446044689537

/-! ## A087258.P7130064158020980869

`gcd(Δ[A045943(n)], A270570(2*(n+1)))`
-/

namespace A087258.P7130064158020980869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A270570 (2 * (n + 1)))

end

end A087258.P7130064158020980869

/-! ## A087258.P6454165845950909055

`gcd(A028310(n+1), A270570(2*n+2))`
-/

namespace A087258.P6454165845950909055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 (n + 1)) (A270570 (2 * n + 2))

end

end A087258.P6454165845950909055

/-! ## A087258.P981557546002712937

`gcd(A008619(2*n+1), A087251(A328314(n+1)))`
-/

namespace A087258.P981557546002712937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008619 (2 * n + 1)) (A087251 (A328314 (n + 1)).toNat)

end

end A087258.P981557546002712937

/-!
# A087259: a(n) = lcm(n, A025586(n)), least common multiple of n and largest value in 3x+1 iteration list started at n.

The programs for A087259, there is no canonical definition to state claims against.
-/

/-! ## A087259.P16173608961473765363

`lcm(n+1, A025586(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A087259.P16173608961473765363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A025586 (n + 1))

end

end A087259.P16173608961473765363

/-! ## A087259.P13551511114505453691

`(n+1)*A025586(n+1)/A087258(n+1)`
-/

namespace A087259.P13551511114505453691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A025586 (n + 1) : ℚ) / (A087258 (n + 1) : ℚ))

end

end A087259.P13551511114505453691

/-! ## A087259.P6304855013806306199

`lcm(A151798(n)*A347264(n+1), A000027(n+1))`
-/

namespace A087259.P6304855013806306199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A151798 n * A347264 (n + 1)) (A000027 (n + 1))

end

end A087259.P6304855013806306199

/-! ## A087259.P17468910232589109495

`lcm(A008619(2*n), A087251(A328314(n+1)))`
-/

namespace A087259.P17468910232589109495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008619 (2 * n)) (A087251 (A328314 (n + 1)).toNat)

end

end A087259.P17468910232589109495

/-! ## A087259.P4945469941943387958

`lcm(xor(n, -1), A270570(2*(n+1)))`
-/

namespace A087259.P4945469941943387958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.xor (n : ℤ) (-1)) (A270570 (2 * (n + 1)))

end

end A087259.P4945469941943387958

/-! ## A087259.P9671624508793836469

`lcm(Δ[A001057(n)], A270570(2*(n+1)))`
-/

namespace A087259.P9671624508793836469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A270570 (2 * (n + 1)))

end

end A087259.P9671624508793836469

/-! ## A087259.P7828340967013858974

`lcm(A001057(2*n+1), A270570(2*n+2))`
-/

namespace A087259.P7828340967013858974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001057 (2 * n + 1)) (A270570 (2 * n + 2))

end

end A087259.P7828340967013858974

/-! ## A087259.P17263445622866955472

`lcm(Δ[n²]-n, A220237(A186701(n+1)))`
-/

namespace A087259.P17263445622866955472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)) (A220237 (A186701 (n + 1)).toNat)

end

end A087259.P17263445622866955472

/-!
# A087260: a(n) = gcd(4n, A025586(4n)), greatest common divisor of 4n and largest value in 3x+1 iteration list started at 4n.

The programs for A087260, there is no canonical definition to state claims against.
-/

/-! ## A087260.P7214803195995881398

`gcd(4*(n+1), A025586(4*(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A087260.P7214803195995881398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (4 * (n + 1) : ℤ) (A025586 (4 * (n + 1)))

end

end A087260.P7214803195995881398

/-! ## A087260.P14822135242533577622

`A087258(4*(n+1))`
-/

namespace A087260.P14822135242533577622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087258 (4 * (n + 1))

end

end A087260.P14822135242533577622

/-! ## A087260.P804487729503181056

`4*gcd(n+1, A056959(4*(n+1)))`
-/

namespace A087260.P804487729503181056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Int.gcd (n + 1 : ℤ) (A056959 (4 * (n + 1)))

end

end A087260.P804487729503181056

/-! ## A087260.P14977301496476487090

`lcm(2, A087258(Δ[A046092(n)]))`
-/

namespace A087260.P14977301496476487090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A087258 (f1 (n + 1) - f1 n).toNat)

end

end A087260.P14977301496476487090

/-! ## A087260.P14861358588320945912

`lcm(4, A087258(A008574(n+1)))`
-/

namespace A087260.P14861358588320945912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A087258 (A008574 (n + 1)).toNat)

end

end A087260.P14861358588320945912

/-! ## A087260.P8438011803407974716

`filter[A087258(n+1), A011765(#)]`
-/

namespace A087260.P8438011803407974716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011765 (f1 j).toNat = 1) n)

end

end A087260.P8438011803407974716

/-! ## A087260.P10237317686828728413

`filter[A087258(n+1), A107078(#)]`
-/

namespace A087260.P10237317686828728413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A087260.P10237317686828728413

/-! ## A087260.P10330134507695169439

`filter[A087258(n+1), A121262(#)]`
-/

namespace A087260.P10330134507695169439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A087260.P10330134507695169439

/-! ## A087260.P14899568708957765156

`filter[A087258(n+1), A319710(#)]`
-/

namespace A087260.P14899568708957765156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A087260.P14899568708957765156

/-! ## A087260.P1859949571371911430

`filter[A087258(n+1), A324883(#)]`
-/

namespace A087260.P1859949571371911430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324883 (f1 j).toNat = 1) n)

end

end A087260.P1859949571371911430

/-!
# A087261: a(n) = lcm(4n, A025586(4n)), least common multiple of 4n and the largest value in 3x+1 iteration list started at 4n.

The programs for A087261, there is no canonical definition to state claims against.
-/

/-! ## A087261.P8479493150191843649

`lcm(4*(n+1), A025586(4*(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A087261.P8479493150191843649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (4 * (n + 1) : ℤ) (A025586 (4 * (n + 1)))

end

end A087261.P8479493150191843649

/-! ## A087261.P10286266864360240374

`A087259(4*(n+1))`
-/

namespace A087261.P10286266864360240374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087259 (4 * (n + 1))

end

end A087261.P10286266864360240374

/-! ## A087261.P11543308188916775538

`lcm(2*(n+1), A270570(8*(n+1)))`
-/

namespace A087261.P11543308188916775538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * (n + 1) : ℤ) (A270570 (8 * (n + 1)))

end

end A087261.P11543308188916775538

/-! ## A087261.P13342777515726820704

`lcm(2, A087259(A059558(n+1)))`
-/

namespace A087261.P13342777515726820704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A087259 (A059558 (n + 1)).toNat)

end

end A087261.P13342777515726820704

/-! ## A087261.P2902382953399355415

`lcm(A025586(4*(n+1)), A103517(n))`
-/

namespace A087261.P2902382953399355415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A025586 (4 * (n + 1))) (A103517 n)

end

end A087261.P2902382953399355415

/-! ## A087261.P5343946950382814167

`lcm(A025586(A059558(n+1)), A030640(n))`
-/

namespace A087261.P5343946950382814167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A025586 (A059558 (n + 1)).toNat) (A030640 n)

end

end A087261.P5343946950382814167

/-! ## A087261.P12522891169269267587

`lcm(A025586(A008574(n+1)), A066560(n+1))`
-/

namespace A087261.P12522891169269267587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A025586 (A008574 (n + 1)).toNat) (A066560 (n + 1))

end

end A087261.P12522891169269267587

/-!
# A087262: Integer quotient of largest and initial values in 3x+1 iteration, started at n.

The programs for A087262, there is no canonical definition to state claims against.
-/

/-! ## A087262.P3283899812391616581

`floor(A025586(n+1)/(n+1))`
-/

namespace A087262.P3283899812391616581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025586 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A087262.P3283899812391616581

/-! ## A087262.P41290701166539082

`floor(A087251(A328314(n+1))/(n+1))`
-/

namespace A087262.P41290701166539082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A087251 (A328314 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A087262.P41290701166539082

/-! ## A087262.P15451387032331328604

`floor(gcd(A056959(n+1), A099894(n))/(n+1))`
-/

namespace A087262.P15451387032331328604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.gcd (A056959 (n + 1)) (A099894 n) : ℚ) / (n + 1 : ℚ)⌋

end

end A087262.P15451387032331328604

/-! ## A087262.P7024200119566851365

`floor(A270570(2*(n+1))/(n+1))`
-/

namespace A087262.P7024200119566851365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A270570 (2 * (n + 1)) : ℚ) / (n + 1 : ℚ)⌋

end

end A087262.P7024200119566851365

/-! ## A087262.P16955072009099740735

`ceil((A270570(n+2+n)-n)/(n+1))`
-/

namespace A087262.P16955072009099740735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A270570 (n + 2 + n) - (n : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A087262.P16955072009099740735

/-! ## A087262.P18128331978442768570

`floor(xor(1, xor(1, A270570(n+n+2)))/(n+1))`
-/

namespace A087262.P18128331978442768570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.xor 1 (Int.xor 1 (A270570 (n + n + 2))) : ℚ) / (n + 1 : ℚ)⌋

end

end A087262.P18128331978442768570

/-! ## A087262.P1066465198254295877

`floor(A270570(n+2+n)^A000041(C(2, A000005(n+1)))/(n+1))`
-/

namespace A087262.P1066465198254295877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A270570 (n + 2 + n) : ℚ) ^ (A000041 (Nat.choose 2 (A000005 (n + 1)).toNat) : ℤ) / (n + 1 : ℚ)⌋

end

end A087262.P1066465198254295877

/-! ## A087262.P939637007060882325

`floor(∑{d}[A270570(n+2+n), A000010(#)]/(n+1))`
-/

namespace A087262.P939637007060882325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270570 (n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A087262.P939637007060882325

/-! ## A087262.P6163119616592474110

`floor(A220237(A186701(n+1))/(n+1))`
-/

namespace A087262.P6163119616592474110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A220237 (A186701 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A087262.P6163119616592474110

/-! ## A087262.P6431533114702065550

`floor(A220237(∑[A008908(n+1)])/(n+1))`
-/

namespace A087262.P6431533114702065550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A220237 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A087262.P6431533114702065550

/-!
# A087264: a(n) is the least initial value of a 3x+1 trajectory in which 4n is the largest(peak) term or a(n)=0 if 4n cannot be a peak.

The programs for A087264, there is no canonical definition to state claims against.
-/

/-! ## A087264.P9887661678732308605

`A087263(4*(n+1))`
-/

namespace A087264.P9887661678732308605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087263 (4 * (n + 1))

end

end A087264.P9887661678732308605

/-!
# A087265: Lucas numbers L(8*n).

The programs for A087265, the canonical program `A087265.P14979811143218031810` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087265 has offset 0).

The definition of A087265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087265.P14979811143218031810

`47*a(n-1)-a(n-2)` with `a(0)=2, a(1)=47`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087265

/-- `47*a(n-1)-a(n-2)` -/
def P14979811143218031810.Spec : Prop :=
  ∀ n, P14979811143218031810.a n = A087265 n

theorem P14979811143218031810.correct : P14979811143218031810.Spec := by
  intro n
  simp only [A087265]

end A087265

/-! ## A087265.P6409389068112800450

`floor(ϕ^(8*n))+1`
-/

namespace A087265.P6409389068112800450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ (8 * n)⌋ + 1

end

end A087265.P6409389068112800450

namespace A087265

/-- `floor(ϕ^(8*n))+1` -/
def P6409389068112800450.Spec : Prop :=
  ∀ n, P6409389068112800450.a n = A087265 n

end A087265

/-! ## A087265.P7885726804216913064

`ceil(ϕ^floor(2/acot(4*n)))`
-/

namespace A087265.P7885726804216913064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ (⌊2 / SequenceMachineLib.acot (4 * n : ℝ)⌋ : ℤ)⌉

end

end A087265.P7885726804216913064

namespace A087265

/-- `ceil(ϕ^floor(2/acot(4*n)))` -/
def P7885726804216913064.Spec : Prop :=
  ∀ n, P7885726804216913064.a n = A087265 n

end A087265

/-! ## A087265.P3161312241009803538

`A056854(2*n)`
-/

namespace A087265.P3161312241009803538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056854 (2 * n)

end

end A087265.P3161312241009803538

namespace A087265

/-- `A056854(2*n)` -/
def P3161312241009803538.Spec : Prop :=
  ∀ n, P3161312241009803538.a n = A087265 n

end A087265

/-! ## A087265.P9474102479130945697

`A005248(4*n)`
-/

namespace A087265.P9474102479130945697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (4 * n)

end

end A087265.P9474102479130945697

namespace A087265

/-- `A005248(4*n)` -/
def P9474102479130945697.Spec : Prop :=
  ∀ n, P9474102479130945697.a n = A087265 n

end A087265

/-! ## A087265.P6856131094895395107

`A000032(8*n)`
-/

namespace A087265.P6856131094895395107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (8 * n)

end

end A087265.P6856131094895395107

namespace A087265

/-- `A000032(8*n)` -/
def P6856131094895395107.Spec : Prop :=
  ∀ n, P6856131094895395107.a n = A087265 n

end A087265

/-! ## A087265.P13018651015697201170

`A005247(8*n)`
-/

namespace A087265.P13018651015697201170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 (8 * n)

end

end A087265.P13018651015697201170

namespace A087265

/-- `A005247(8*n)` -/
def P13018651015697201170.Spec : Prop :=
  ∀ n, P13018651015697201170.a n = A087265 n

end A087265

/-! ## A087265.P8881783093917757973

`A020878(8*n)`
-/

namespace A087265.P8881783093917757973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020878 (8 * n)

end

end A087265.P8881783093917757973

namespace A087265

/-- `A020878(8*n)` -/
def P8881783093917757973.Spec : Prop :=
  ∀ n, P8881783093917757973.a n = A087265 n

end A087265

/-! ## A087265.P13503422540150560716

`A062724(8*n)`
-/

namespace A087265.P13503422540150560716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062724 (8 * n)

end

end A087265.P13503422540150560716

namespace A087265

/-- `A062724(8*n)` -/
def P13503422540150560716.Spec : Prop :=
  ∀ n, P13503422540150560716.a n = A087265 n

end A087265

/-! ## A087265.P8443729497579934106

`A127218(4*4*n)`
-/

namespace A087265.P8443729497579934106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 (4 * (4 * n))

end

end A087265.P8443729497579934106

namespace A087265

/-- `A127218(4*4*n)` -/
def P8443729497579934106.Spec : Prop :=
  ∀ n, P8443729497579934106.a n = A087265 n

end A087265

/-!
# A087266: a(n) = gcd(2^n, pi(2^n)) = gcd(A000079(n), A007053(n)).

The programs for A087266, the canonical program `A087266.P3243297445985223574` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087266 has offset 1).

The definition of A087266 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007053, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A087266.P3243297445985223574

`gcd(A000079(n+1), A007053(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A087266

/-- `gcd(A000079(n+1), A007053(n+1))` -/
def P3243297445985223574.Spec : Prop :=
  ∀ n, (P3243297445985223574.a n : ℤ) = A087266 (n + 1)

theorem P3243297445985223574.correct : P3243297445985223574.Spec := by
  intro n
  simp only [A087266, Nat.add_sub_cancel]

end A087266

/-! ## A087266.P4359759828721718298

`gcd(16, A007053(n+1))`
-/

namespace A087266.P4359759828721718298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 16 (A007053 (n + 1))

end

end A087266.P4359759828721718298

namespace A087266

/-- `gcd(16, A007053(n+1))` -/
def P4359759828721718298.Spec : Prop :=
  ∀ n, (P4359759828721718298.a n : ℤ) = A087266 (n + 1)

end A087266

/-! ## A087266.P5335083253141403899

`A000079(val(∑[A036378(n)], 2))`
-/

namespace A087266.P5335083253141403899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2)

end

end A087266.P5335083253141403899

namespace A087266

/-- `A000079(val(∑[A036378(n)], 2))` -/
def P5335083253141403899.Spec : Prop :=
  ∀ n, P5335083253141403899.a n = A087266 (n + 1)

end A087266

/-! ## A087266.P6123997077676976323

`A000079(val(A007053(n+1), 2))`
-/

namespace A087266.P6123997077676976323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A007053 (n + 1)).toNat 2)

end

end A087266.P6123997077676976323

namespace A087266

/-- `A000079(val(A007053(n+1), 2))` -/
def P6123997077676976323.Spec : Prop :=
  ∀ n, P6123997077676976323.a n = A087266 (n + 1)

end A087266

/-! ## A087266.P2091203413212321344

`A020639(2*(n+1))^val(∑[A036378(n)], 2)`
-/

namespace A087266.P2091203413212321344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1)) ^ SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A087266.P2091203413212321344

namespace A087266

/-- `A020639(2*(n+1))^val(∑[A036378(n)], 2)` -/
def P2091203413212321344.Spec : Prop :=
  ∀ n, P2091203413212321344.a n = A087266 (n + 1)

end A087266

/-! ## A087266.P14699833006159592608

`A020639(A000010(n+2))^val(A007053(n+1), 2)`
-/

namespace A087266.P14699833006159592608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat ^ SequenceMachineLib.valuation (A007053 (n + 1)).toNat 2

end

end A087266.P14699833006159592608

namespace A087266

/-- `A020639(A000010(n+2))^val(A007053(n+1), 2)` -/
def P14699833006159592608.Spec : Prop :=
  ∀ n, P14699833006159592608.a n = A087266 (n + 1)

end A087266

/-! ## A087266.P15374539392702084039

`gcd(A000079(n), A185192(n+1))`
-/

namespace A087266.P15374539392702084039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 n) (A185192 (n + 1))

end

end A087266.P15374539392702084039

namespace A087266

/-- `gcd(A000079(n), A185192(n+1))` -/
def P15374539392702084039.Spec : Prop :=
  ∀ n, (P15374539392702084039.a n : ℤ) = A087266 (n + 1)

end A087266

/-! ## A087266.P9095410044064397004

`gcd(8, A126279(A000124(n)))`
-/

namespace A087266.P9095410044064397004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 (A126279 (A000124 n).toNat)

end

end A087266.P9095410044064397004

namespace A087266

/-- `gcd(8, A126279(A000124(n)))` -/
def P9095410044064397004.Spec : Prop :=
  ∀ n, (P9095410044064397004.a n : ℤ) = A087266 (n + 1)

end A087266

/-!
# A087267: a(n) = gcd(n, pi(n)) where pi is A000720.

The programs for A087267, the canonical program `A087267.P1672816073380811605` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087267 has offset 1).

The definition of A087267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087267.P16698648492377152076

`(n+1)/A392359(n+1)`
-/

namespace A087267.P16698648492377152076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A392359 (n + 1) : ℚ)

end

end A087267.P16698648492377152076

namespace A087267

/-- `(n+1)/A392359(n+1)` -/
def P16698648492377152076.Spec : Prop :=
  ∀ n, P16698648492377152076.a n = (A087267 (n + 1) : ℚ)

end A087267

/-! ## A087267.P7726156329543479905

`gcd(n+1, A000720(n+1))`
-/

namespace A087267.P7726156329543479905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000720 (n + 1))

end

end A087267.P7726156329543479905

namespace A087267

/-- `gcd(n+1, A000720(n+1))` -/
def P7726156329543479905.Spec : Prop :=
  ∀ n, (P7726156329543479905.a n : ℤ) = A087267 (n + 1)

end A087267

/-! ## A087267.P1672816073380811605

`gcd(xor(n, -1), ∑[A010051(n+1)])`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A087267

/-- `gcd(xor(n, -1), ∑[A010051(n+1)])` -/
def P1672816073380811605.Spec : Prop :=
  ∀ n, (P1672816073380811605.a n : ℤ) = A087267 (n + 1)

theorem P1672816073380811605.correct : P1672816073380811605.Spec := by
  intro n
  simp only [A087267, Nat.add_sub_cancel]

end A087267

/-! ## A087267.P17889650846179789961

`gcd(comp[2*n]-n, A062298(n+1))`
-/

namespace A087267.P17889650846179789961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) (A062298 (n + 1))

end

end A087267.P17889650846179789961

namespace A087267

/-- `gcd(comp[2*n]-n, A062298(n+1))` -/
def P17889650846179789961.Spec : Prop :=
  ∀ n, (P17889650846179789961.a n : ℤ) = A087267 (n + 1)

end A087267

/-! ## A087267.P15081039426317651496

`gcd(C(2, C(3, n²))+n, A026233(n+1))`
-/

namespace A087267.P15081039426317651496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n : ℤ) (A026233 (n + 1))

end

end A087267.P15081039426317651496

namespace A087267

/-- `gcd(C(2, C(3, n²))+n, A026233(n+1))` -/
def P15081039426317651496.Spec : Prop :=
  ∀ n, (P15081039426317651496.a n : ℤ) = A087267 (n + 1)

end A087267

/-! ## A087267.P9789855971352526582

`gcd(A026233(n+1), A131738(n))`
-/

namespace A087267.P9789855971352526582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026233 (n + 1)) (A131738 n)

end

end A087267.P9789855971352526582

namespace A087267

/-- `gcd(A026233(n+1), A131738(n))` -/
def P9789855971352526582.Spec : Prop :=
  ∀ n, (P9789855971352526582.a n : ℤ) = A087267 (n + 1)

end A087267

/-! ## A087267.P626769934498052187

`gcd(A064427(n+1), A153152(n))`
-/

namespace A087267.P626769934498052187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064427 (n + 1)) (A153152 n)

end

end A087267.P626769934498052187

namespace A087267

/-- `gcd(A064427(n+1), A153152(n))` -/
def P626769934498052187.Spec : Prop :=
  ∀ n, (P626769934498052187.a n : ℤ) = A087267 (n + 1)

end A087267

/-! ## A087267.P6750679274174139396

`gcd(A005451(n+1), A230980(n))`
-/

namespace A087267.P6750679274174139396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005451 (n + 1)) (A230980 n)

end

end A087267.P6750679274174139396

namespace A087267

/-- `gcd(A005451(n+1), A230980(n))` -/
def P6750679274174139396.Spec : Prop :=
  ∀ n, (P6750679274174139396.a n : ℤ) = A087267 (n + 1)

end A087267

/-! ## A087267.P11363800917938333484

`gcd(A002378(n), A345888(n+1))`
-/

namespace A087267.P11363800917938333484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002378 n) (A345888 (n + 1))

end

end A087267.P11363800917938333484

namespace A087267

/-- `gcd(A002378(n), A345888(n+1))` -/
def P11363800917938333484.Spec : Prop :=
  ∀ n, (P11363800917938333484.a n : ℤ) = A087267 (n + 1)

end A087267

/-! ## A087267.P10272748367581497526

`gcd(A011379(n), A345890(n+1))`
-/

namespace A087267.P10272748367581497526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A011379 n) (A345890 (n + 1))

end

end A087267.P10272748367581497526

namespace A087267

/-- `gcd(A011379(n), A345890(n+1))` -/
def P10272748367581497526.Spec : Prop :=
  ∀ n, (P10272748367581497526.a n : ℤ) = A087267 (n + 1)

end A087267

/-! ## A087267.P9831566705377495747

`gcd(A062298(n+1), A326178(n))`
-/

namespace A087267.P9831566705377495747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062298 (n + 1)) (A326178 n)

end

end A087267.P9831566705377495747

namespace A087267

/-- `gcd(A062298(n+1), A326178(n))` -/
def P9831566705377495747.Spec : Prop :=
  ∀ n, (P9831566705377495747.a n : ℤ) = A087267 (n + 1)

end A087267

/-! ## A087267.P13763006017499047399

`gcd(A022447(n+1), A033286(n+1))`
-/

namespace A087267.P13763006017499047399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022447 (n + 1)) (A033286 (n + 1))

end

end A087267.P13763006017499047399

namespace A087267

/-- `gcd(A022447(n+1), A033286(n+1))` -/
def P13763006017499047399.Spec : Prop :=
  ∀ n, (P13763006017499047399.a n : ℤ) = A087267 (n + 1)

end A087267

/-! ## A087267.P77967991759095110

`gcd(A000027(n+1), A063084(n+1))`
-/

namespace A087267.P77967991759095110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A063084 (n + 1))

end

end A087267.P77967991759095110

namespace A087267

/-- `gcd(A000027(n+1), A063084(n+1))` -/
def P77967991759095110.Spec : Prop :=
  ∀ n, (P77967991759095110.a n : ℤ) = A087267 (n + 1)

end A087267

/-! ## A087267.P8898521930361999561

`gcd(A048671(n+1), A061009(n+1))`
-/

namespace A087267.P8898521930361999561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048671 (n + 1)) (A061009 (n + 1))

end

end A087267.P8898521930361999561

namespace A087267

/-- `gcd(A048671(n+1), A061009(n+1))` -/
def P8898521930361999561.Spec : Prop :=
  ∀ n, (P8898521930361999561.a n : ℤ) = A087267 (n + 1)

end A087267

/-! ## A087267.P14669869953753814007

`gcd(A061019(n+1), A128930(n+1))`
-/

namespace A087267.P14669869953753814007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061019 (n + 1)) (A128930 (n + 1))

end

end A087267.P14669869953753814007

namespace A087267

/-- `gcd(A061019(n+1), A128930(n+1))` -/
def P14669869953753814007.Spec : Prop :=
  ∀ n, (P14669869953753814007.a n : ℤ) = A087267 (n + 1)

end A087267

/-! ## A087267.P9350224743328113030

`gcd(A064505(n+1), A322828(n+1))`
-/

namespace A087267.P9350224743328113030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064505 (n + 1)) (A322828 (n + 1))

end

end A087267.P9350224743328113030

namespace A087267

/-- `gcd(A064505(n+1), A322828(n+1))` -/
def P9350224743328113030.Spec : Prop :=
  ∀ n, (P9350224743328113030.a n : ℤ) = A087267 (n + 1)

end A087267

/-! ## A087267.P8844567075388692597

`gcd(A028310(n+1), A230980(n+1))`
-/

namespace A087267.P8844567075388692597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 (n + 1)) (A230980 (n + 1))

end

end A087267.P8844567075388692597

namespace A087267

/-- `gcd(A028310(n+1), A230980(n+1))` -/
def P8844567075388692597.Spec : Prop :=
  ∀ n, (P8844567075388692597.a n : ℤ) = A087267 (n + 1)

end A087267

/-! ## A087267.P5473304229684220890

`gcd(n*A062298(n+1), A255573(A205783(n+1)))`
-/

namespace A087267.P5473304229684220890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A062298 (n + 1)) (A255573 (A205783 (n + 1)).toNat)

end

end A087267.P5473304229684220890

namespace A087267

/-- `gcd(n*A062298(n+1), A255573(A205783(n+1)))` -/
def P5473304229684220890.Spec : Prop :=
  ∀ n, (P5473304229684220890.a n : ℤ) = A087267 (n + 1)

end A087267

/-! ## A087267.P17988080381725370256

`gcd(A102885(n), A153152(n))`
-/

namespace A087267.P17988080381725370256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A102885 n) (A153152 n)

end

end A087267.P17988080381725370256

namespace A087267

/-- `gcd(A102885(n), A153152(n))` -/
def P17988080381725370256.Spec : Prop :=
  ∀ n, (P17988080381725370256.a n : ℤ) = A087267 (n + 1)

end A087267

/-! ## A087267.P8342398367900755809

`gcd(A086936(n+1), A096457(n+1))`
-/

namespace A087267.P8342398367900755809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A086936 (n + 1)) (A096457 (n + 1))

end

end A087267.P8342398367900755809

namespace A087267

/-- `gcd(A086936(n+1), A096457(n+1))` -/
def P8342398367900755809.Spec : Prop :=
  ∀ n, (P8342398367900755809.a n : ℤ) = A087267 (n + 1)

end A087267

/-!
# A087268: Solutions to gcd(x, pi(x)) = 1, where pi is A000720.

The programs for A087268, the canonical program `A087268.P11228589809658875935` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087268 has offset 1).

The definition of A087268 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087268.P4318200645747557387

`eq[1, gcd(n+1, A000720(n+1))]+1`
-/

namespace A087268.P4318200645747557387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000720 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A087268.P4318200645747557387

namespace A087268

/-- `eq[1, gcd(n+1, A000720(n+1))]+1` -/
def P4318200645747557387.Spec : Prop :=
  ∀ n, (P4318200645747557387.a n : ℤ) = A087268 (n + 1)

end A087268

/-! ## A087268.P11228589809658875935

`∪[A000040(n+1), A087269(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A087268

/-- `∪[A000040(n+1), A087269(n+1)]` -/
def P11228589809658875935.Spec : Prop :=
  ∀ n, (P11228589809658875935.a n : ℤ) = A087268 (n + 1)

theorem P11228589809658875935.correct : P11228589809658875935.Spec := by
  intro n
  simp only [A087268, Nat.add_sub_cancel]

end A087268

/-! ## A087268.P2572835381165113665

`∪[A008578(n+1), A087269(n+1)]`
-/

namespace A087268.P2572835381165113665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A087268.P2572835381165113665

namespace A087268

/-- `∪[A008578(n+1), A087269(n+1)]` -/
def P2572835381165113665.Spec : Prop :=
  ∀ n, (P2572835381165113665.a n : ℤ) = A087268 (n + 1)

end A087268

/-! ## A087268.P14692988846438769316

`∪[A033946(n+1), A087269(n+1)]`
-/

namespace A087268.P14692988846438769316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A087268.P14692988846438769316

namespace A087268

/-- `∪[A033946(n+1), A087269(n+1)]` -/
def P14692988846438769316.Spec : Prop :=
  ∀ n, (P14692988846438769316.a n : ℤ) = A087268 (n + 1)

end A087268

/-! ## A087268.P5886088434869033082

`record[A392359(n+1)]`
-/

namespace A087268.P5886088434869033082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087268.P5886088434869033082

namespace A087268

/-- `record[A392359(n+1)]` -/
def P5886088434869033082.Spec : Prop :=
  ∀ n, P5886088434869033082.a n = A087268 (n + 1)

end A087268

/-! ## A087268.P13887951375596856316

`1+eq[1, A087267(n+1)]`
-/

namespace A087268.P13887951375596856316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087267 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A087268.P13887951375596856316

namespace A087268

/-- `1+eq[1, A087267(n+1)]` -/
def P13887951375596856316.Spec : Prop :=
  ∀ n, (P13887951375596856316.a n : ℤ) = A087268 (n + 1)

end A087268

/-! ## A087268.P3363530310312508898

`A028310(lt[A087267(n+1), 2]+1)`
-/

namespace A087268.P3363530310312508898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087267 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A087268.P3363530310312508898

namespace A087268

/-- `A028310(lt[A087267(n+1), 2]+1)` -/
def P3363530310312508898.Spec : Prop :=
  ∀ n, P3363530310312508898.a n = A087268 (n + 1)

end A087268

/-! ## A087268.P11841459632835165537

`eq[1, gcd(n, A095117(n))]`
-/

namespace A087268.P11841459632835165537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A095117 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087268.P11841459632835165537

namespace A087268

/-- `eq[1, gcd(n, A095117(n))]` -/
def P11841459632835165537.Spec : Prop :=
  ∀ n, (P11841459632835165537.a n : ℤ) = A087268 (n + 1)

end A087268

/-! ## A087268.P15409779234902385031

`eq[1, gcd(n², A230980(n))]`
-/

namespace A087268.P15409779234902385031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 : ℤ) (A230980 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087268.P15409779234902385031

namespace A087268

/-- `eq[1, gcd(n², A230980(n))]` -/
def P15409779234902385031.Spec : Prop :=
  ∀ n, (P15409779234902385031.a n : ℤ) = A087268 (n + 1)

end A087268

/-! ## A087268.P7845901500575065377

`eq[1, gcd(n^3, A063084(n+1))]`
-/

namespace A087268.P7845901500575065377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 3 : ℤ) (A063084 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087268.P7845901500575065377

namespace A087268

/-- `eq[1, gcd(n^3, A063084(n+1))]` -/
def P7845901500575065377.Spec : Prop :=
  ∀ n, (P7845901500575065377.a n : ℤ) = A087268 (n + 1)

end A087268

/-!
# A087269: Nonprime solutions to gcd(x, pi(x)) = gcd(x, A000720(x)) = 1.

The programs for A087269, the canonical program `A087269.P9929686044178286403` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087269 has offset 1).

The definition of A087269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9973 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087269.P10680195839765904687

`A018252(eq[1, gcd(n, A141468(n+1))])`
-/

namespace A087269.P10680195839765904687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A141468 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A087269.P10680195839765904687

namespace A087269

/-- `A018252(eq[1, gcd(n, A141468(n+1))])` -/
def P10680195839765904687.Spec : Prop :=
  ∀ n, P10680195839765904687.a n = A087269 (n + 1)

end A087269

/-! ## A087269.P9929686044178286403

`A018252(eq[1, gcd(n+1, A018252(n+1))]+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A087269

/-- `A018252(eq[1, gcd(n+1, A018252(n+1))]+1)` -/
def P9929686044178286403.Spec : Prop :=
  ∀ n, P9929686044178286403.a n = A087269 (n + 1)

theorem P9929686044178286403.correct : P9929686044178286403.Spec := by
  intro n
  simp only [A087269, Nat.add_sub_cancel]

end A087269

/-! ## A087269.P10128552702879368285

`filter[A087268(n+1), A005171(#)]`
-/

namespace A087269.P10128552702879368285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A087269.P10128552702879368285

namespace A087269

/-- `filter[A087268(n+1), A005171(#)]` -/
def P10128552702879368285.Spec : Prop :=
  ∀ n, P10128552702879368285.a n = A087269 (n + 1)

end A087269

/-! ## A087269.P7034926320284916402

`∩[A018252(n+1), A087268(n+1)]`
-/

namespace A087269.P7034926320284916402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087269.P7034926320284916402

namespace A087269

/-- `∩[A018252(n+1), A087268(n+1)]` -/
def P7034926320284916402.Spec : Prop :=
  ∀ n, (P7034926320284916402.a n : ℤ) = A087269 (n + 1)

end A087269

/-! ## A087269.P4500173060890657374

`∩[A087268(n+1), A141468(n+1)]`
-/

namespace A087269.P4500173060890657374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087269.P4500173060890657374

namespace A087269

/-- `∩[A087268(n+1), A141468(n+1)]` -/
def P4500173060890657374.Spec : Prop :=
  ∀ n, (P4500173060890657374.a n : ℤ) = A087269 (n + 1)

end A087269

/-! ## A087269.P4551478755790300842

`∩[A056653(n+1), A087268(n+1)]`
-/

namespace A087269.P4551478755790300842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087269.P4551478755790300842

namespace A087269

/-- `∩[A056653(n+1), A087268(n+1)]` -/
def P4551478755790300842.Spec : Prop :=
  ∀ n, (P4551478755790300842.a n : ℤ) = A087269 (n + 1)

end A087269

/-! ## A087269.P11564526866185440220

`eq[A005171(n+1), A087267(n+1)]+1`
-/

namespace A087269.P11564526866185440220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087267 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A087269.P11564526866185440220

namespace A087269

/-- `eq[A005171(n+1), A087267(n+1)]+1` -/
def P11564526866185440220.Spec : Prop :=
  ∀ n, (P11564526866185440220.a n : ℤ) = A087269 (n + 1)

end A087269

/-!
# A087270: Solutions to gcd(x,pi(x)) = gcd(x, A000720(x)) > 1. Numbers x such that x and pi(x) have common divisor larger than one.

The programs for A087270, the canonical program `A087270.P2212235212749245519` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087270 has offset 1).

The definition of A087270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7765 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087270.P2212235212749245519

`A002808(lt[1, gcd(n+1, A018252(n+1))])`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A087270

/-- `A002808(lt[1, gcd(n+1, A018252(n+1))])` -/
def P2212235212749245519.Spec : Prop :=
  ∀ n, P2212235212749245519.a n = A087270 (n + 1)

theorem P2212235212749245519.correct : P2212235212749245519.Spec := by
  intro n
  simp only [A087270, Nat.add_sub_cancel]

end A087270

/-! ## A087270.P24997466263578514

`lt[1, gcd(n, A095117(n))]`
-/

namespace A087270.P24997466263578514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A095117 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A087270.P24997466263578514

namespace A087270

/-- `lt[1, gcd(n, A095117(n))]` -/
def P24997466263578514.Spec : Prop :=
  ∀ n, (P24997466263578514.a n : ℤ) = A087270 (n + 1)

end A087270

/-! ## A087270.P15290718910928438567

`lt[1, A087267(n+1)]+1`
-/

namespace A087270.P15290718910928438567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087267 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A087270.P15290718910928438567

namespace A087270

/-- `lt[1, A087267(n+1)]+1` -/
def P15290718910928438567.Spec : Prop :=
  ∀ n, (P15290718910928438567.a n : ℤ) = A087270 (n + 1)

end A087270

/-! ## A087270.P6599410338658794448

`lt[1, A087267(A028310(n))]`
-/

namespace A087270.P6599410338658794448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087267 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A087270.P6599410338658794448

namespace A087270

/-- `lt[1, A087267(A028310(n))]` -/
def P6599410338658794448.Spec : Prop :=
  ∀ n, (P6599410338658794448.a n : ℤ) = A087270 (n + 1)

end A087270

/-! ## A087270.P3961295886247794931

`A020725(lt[1, A087267(n+1)])`
-/

namespace A087270.P3961295886247794931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A087270.P3961295886247794931

namespace A087270

/-- `A020725(lt[1, A087267(n+1)])` -/
def P3961295886247794931.Spec : Prop :=
  ∀ n, P3961295886247794931.a n = A087270 (n + 1)

end A087270

/-! ## A087270.P12885327992586013360

`A065475(lt[1, A087267(n+1)])`
-/

namespace A087270.P12885327992586013360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A087270.P12885327992586013360

namespace A087270

/-- `A065475(lt[1, A087267(n+1)])` -/
def P12885327992586013360.Spec : Prop :=
  ∀ n, P12885327992586013360.a n = A087270 (n + 1)

end A087270

/-! ## A087270.P12497706583465520364

`eq[char[A087268(n+1)], A000007(n)]`
-/

namespace A087270.P12497706583465520364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087268 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A087270.P12497706583465520364

namespace A087270

/-- `eq[char[A087268(n+1)], A000007(n)]` -/
def P12497706583465520364.Spec : Prop :=
  ∀ n, (P12497706583465520364.a n : ℤ) = A087270 (n + 1)

end A087270

/-! ## A087270.P6554491128442724691

`eq[char[A087268(n+1)], A000038(n)]`
-/

namespace A087270.P6554491128442724691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087268 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A087270.P6554491128442724691

namespace A087270

/-- `eq[char[A087268(n+1)], A000038(n)]` -/
def P6554491128442724691.Spec : Prop :=
  ∀ n, (P6554491128442724691.a n : ℤ) = A087270 (n + 1)

end A087270

/-!
# A087272: a(n) is the largest prime number in 3x+1 trajectory initiated at n.

The programs for A087272, there is no canonical definition to state claims against.
-/

/-! ## A087272.P3544229561456170530

`A299963(A320028(n+2))`
-/

namespace A087272.P3544229561456170530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299963 (A320028 (n + 2)).toNat

end

end A087272.P3544229561456170530

/-! ## A087272.P1855630807677933726

`or(A001511(A320028(n+2)), A055510(n+2))`
-/

namespace A087272.P1855630807677933726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001511 (A320028 (n + 2)).toNat) (A055510 (n + 2))

end

end A087272.P1855630807677933726

/-! ## A087272.P17084172096400477406

`A007918(A055510(n+2))`
-/

namespace A087272.P17084172096400477406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A055510 (n + 2)).toNat

end

end A087272.P17084172096400477406

/-! ## A087272.P14460379453999884532

`A014681(A055510(n+2)+1)`
-/

namespace A087272.P14460379453999884532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A055510 (n + 2) + 1).toNat

end

end A087272.P14460379453999884532

/-! ## A087272.P9090193623352733119

`A004442(A055510(n+2)+2)-1`
-/

namespace A087272.P9090193623352733119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A055510 (n + 2) + 2).toNat - 1

end

end A087272.P9090193623352733119

/-!
# A087273: Largest prime factor of 3*prime(n) + 1.

The programs for A087273, the canonical program `A087273.P12180184023922161888` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087273 has offset 1).

The definition of A087273 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A087273.P12180184023922161888

`A006530(1+3*A000040(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A087273

/-- `A006530(1+3*A000040(n+1))` -/
def P12180184023922161888.Spec : Prop :=
  ∀ n, P12180184023922161888.a n = A087273 (n + 1)

theorem P12180184023922161888.correct : P12180184023922161888.Spec := by
  intro n
  simp only [A087273, Nat.add_sub_cancel]

end A087273

/-! ## A087273.P2354768200334788033

`A000040(A087274(n+1))`
-/

namespace A087273.P2354768200334788033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A087274 (n + 1)).toNat

end

end A087273.P2354768200334788033

namespace A087273

/-- `A000040(A087274(n+1))` -/
def P2354768200334788033.Spec : Prop :=
  ∀ n, P2354768200334788033.a n = A087273 (n + 1)

end A087273

/-! ## A087273.P17844612371318501480

`A008578(A087274(n+1)+1)`
-/

namespace A087273.P17844612371318501480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A087274 (n + 1) + 1).toNat

end

end A087273.P17844612371318501480

namespace A087273

/-- `A008578(A087274(n+1)+1)` -/
def P17844612371318501480.Spec : Prop :=
  ∀ n, P17844612371318501480.a n = A087273 (n + 1)

end A087273

/-! ## A087273.P7061938232423023450

`A006530(A001748(n+1)+1)`
-/

namespace A087273.P7061938232423023450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001748 (n + 1) + 1).toNat

end

end A087273.P7061938232423023450

namespace A087273

/-- `A006530(A001748(n+1)+1)` -/
def P7061938232423023450.Spec : Prop :=
  ∀ n, P7061938232423023450.a n = A087273 (n + 1)

end A087273

/-! ## A087273.P8114782843118258214

`A006530(A112773(n+2)+1)`
-/

namespace A087273.P8114782843118258214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A112773 (n + 2) + 1).toNat

end

end A087273.P8114782843118258214

namespace A087273

/-- `A006530(A112773(n+2)+1)` -/
def P8114782843118258214.Spec : Prop :=
  ∀ n, P8114782843118258214.a n = A087273 (n + 1)

end A087273

/-! ## A087273.P13331616914619230720

`A000040(A061395(A001748(n+1)+1))`
-/

namespace A087273.P13331616914619230720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061395 (A001748 (n + 1) + 1).toNat).toNat

end

end A087273.P13331616914619230720

namespace A087273

/-- `A000040(A061395(A001748(n+1)+1))` -/
def P13331616914619230720.Spec : Prop :=
  ∀ n, P13331616914619230720.a n = A087273 (n + 1)

end A087273

/-! ## A087273.P17363446620917607877

`A006530(A072055(n+1)+A000040(n+1))`
-/

namespace A087273.P17363446620917607877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A072055 (n + 1) + A000040 (n + 1)).toNat

end

end A087273.P17363446620917607877

namespace A087273

/-- `A006530(A072055(n+1)+A000040(n+1))` -/
def P17363446620917607877.Spec : Prop :=
  ∀ n, P17363446620917607877.a n = A087273 (n + 1)

end A087273

/-! ## A087273.P5460823034263327945

`A006530(A006093(n+1)+2*A008864(n+1))`
-/

namespace A087273.P5460823034263327945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006093 (n + 1) + 2 * A008864 (n + 1)).toNat

end

end A087273.P5460823034263327945

namespace A087273

/-- `A006530(A006093(n+1)+2*A008864(n+1))` -/
def P5460823034263327945.Spec : Prop :=
  ∀ n, P5460823034263327945.a n = A087273 (n + 1)

end A087273

/-! ## A087273.P7361554758589302062

`A006530(∑{d}[A000040(n+1), A000040(n+1)+#])`
-/

namespace A087273.P7361554758589302062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ d ∈ Nat.divisors (f1 n).natAbs, (A000040 (n + 1) + (d : ℤ))).toNat

end

end A087273.P7361554758589302062

namespace A087273

/-- `A006530(∑{d}[A000040(n+1), A000040(n+1)+#])` -/
def P7361554758589302062.Spec : Prop :=
  ∀ n, P7361554758589302062.a n = A087273 (n + 1)

end A087273

/-! ## A087273.P8397677002670281013

`A006530(A114557(2*n+1)+A114557(2*(n+1)))`
-/

namespace A087273.P8397677002670281013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A114557 (2 * n + 1) + A114557 (2 * (n + 1))).toNat

end

end A087273.P8397677002670281013

namespace A087273

/-- `A006530(A114557(2*n+1)+A114557(2*(n+1)))` -/
def P8397677002670281013.Spec : Prop :=
  ∀ n, P8397677002670281013.a n = A087273 (n + 1)

end A087273

/-! ## A087273.P7275882604689579847

`A006530(A000040(n+1)+A008864(n+1)+A000040(n+1))`
-/

namespace A087273.P7275882604689579847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000040 (n + 1) + (A008864 (n + 1) + A000040 (n + 1))).toNat

end

end A087273.P7275882604689579847

namespace A087273

/-- `A006530(A000040(n+1)+A008864(n+1)+A000040(n+1))` -/
def P7275882604689579847.Spec : Prop :=
  ∀ n, P7275882604689579847.a n = A087273 (n + 1)

end A087273

/-! ## A087273.P4730755461012192155

`A006530(A008864(n+1)+A008864(n+1)+A006093(n+1))`
-/

namespace A087273.P4730755461012192155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008864 (n + 1) + (A008864 (n + 1) + A006093 (n + 1))).toNat

end

end A087273.P4730755461012192155

namespace A087273

/-- `A006530(A008864(n+1)+A008864(n+1)+A006093(n+1))` -/
def P4730755461012192155.Spec : Prop :=
  ∀ n, P4730755461012192155.a n = A087273 (n + 1)

end A087273

/-! ## A087273.P5486175286678804850

`A006530(A138636(n+1)+2)`
-/

namespace A087273.P5486175286678804850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A138636 (n + 1) + 2).toNat

end

end A087273.P5486175286678804850

namespace A087273

/-- `A006530(A138636(n+1)+2)` -/
def P5486175286678804850.Spec : Prop :=
  ∀ n, P5486175286678804850.a n = A087273 (n + 1)

end A087273

/-! ## A087273.P5322558855486870124

`A006530(A016777(p?[comp[n²]]))`
-/

namespace A087273.P5322558855486870124
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A016777 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A087273.P5322558855486870124

namespace A087273

/-- `A006530(A016777(p?[comp[n²]]))` -/
def P5322558855486870124.Spec : Prop :=
  ∀ n, P5322558855486870124.a n = A087273 (n + 1)

end A087273

/-! ## A087273.P13353488706708648195

`A006530(3*record[A014963(n+2)]+1)`
-/

namespace A087273.P13353488706708648195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A087273.P13353488706708648195

namespace A087273

/-- `A006530(3*record[A014963(n+2)]+1)` -/
def P13353488706708648195.Spec : Prop :=
  ∀ n, P13353488706708648195.a n = A087273 (n + 1)

end A087273

/-! ## A087273.P3053799430548848069

`A006530(A016777(A000040(n+1)))`
-/

namespace A087273.P3053799430548848069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A016777 (A000040 (n + 1)).toNat).toNat

end

end A087273.P3053799430548848069

namespace A087273

/-- `A006530(A016777(A000040(n+1)))` -/
def P3053799430548848069.Spec : Prop :=
  ∀ n, P3053799430548848069.a n = A087273 (n + 1)

end A087273

/-! ## A087273.P11207287043138867162

`A006530(A008486(A000040(n+1))+1)`
-/

namespace A087273.P11207287043138867162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008486 (A000040 (n + 1)).toNat + 1).toNat

end

end A087273.P11207287043138867162

namespace A087273

/-- `A006530(A008486(A000040(n+1))+1)` -/
def P11207287043138867162.Spec : Prop :=
  ∀ n, P11207287043138867162.a n = A087273 (n + 1)

end A087273

/-! ## A087273.P13571743279324867896

`A006530(A008585(A000040(n+1))+1)`
-/

namespace A087273.P13571743279324867896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008585 (A000040 (n + 1)).toNat + 1).toNat

end

end A087273.P13571743279324867896

namespace A087273

/-- `A006530(A008585(A000040(n+1))+1)` -/
def P13571743279324867896.Spec : Prop :=
  ∀ n, P13571743279324867896.a n = A087273 (n + 1)

end A087273

/-! ## A087273.P18333194247827356100

`A006530(A017569(record[A006530(n+2)]))`
-/

namespace A087273.P18333194247827356100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A017569 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A087273.P18333194247827356100

namespace A087273

/-- `A006530(A017569(record[A006530(n+2)]))` -/
def P18333194247827356100.Spec : Prop :=
  ∀ n, P18333194247827356100.a n = A087273 (n + 1)

end A087273

/-! ## A087273.P11219693236624830640

`A006530(3*record[p?[A323237(n+1)]]+1)`
-/

namespace A087273.P11219693236624830640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323237 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A087273.P11219693236624830640

namespace A087273

/-- `A006530(3*record[p?[A323237(n+1)]]+1)` -/
def P11219693236624830640.Spec : Prop :=
  ∀ n, P11219693236624830640.a n = A087273 (n + 1)

end A087273

/-!
# A087274: Prime index of the largest prime factor of 3*prime(n)+1.

The programs for A087274, the canonical program `A087274.P5038767541345698985` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087274 has offset 1).

The definition of A087274 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A087273, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A087274.P5038767541345698985

`A000720(A087273(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A087274

/-- `A000720(A087273(n+1))` -/
def P5038767541345698985.Spec : Prop :=
  ∀ n, P5038767541345698985.a n = A087274 (n + 1)

theorem P5038767541345698985.correct : P5038767541345698985.Spec := by
  intro n
  simp only [A087274, Nat.add_sub_cancel]

end A087274

/-! ## A087274.P11239854549124481863

`A000720(A006530(1+3*A000040(n+1)))`
-/

namespace A087274.P11239854549124481863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006530 (1 + 3 * A000040 (n + 1)).toNat).toNat

end

end A087274.P11239854549124481863

namespace A087274

/-- `A000720(A006530(1+3*A000040(n+1)))` -/
def P11239854549124481863.Spec : Prop :=
  ∀ n, P11239854549124481863.a n = A087274 (n + 1)

end A087274

/-! ## A087274.P8299303461635809008

`A061395(2*A087273(n+1))`
-/

namespace A087274.P8299303461635809008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A087273 (n + 1)).toNat

end

end A087274.P8299303461635809008

namespace A087274

/-- `A061395(2*A087273(n+1))` -/
def P8299303461635809008.Spec : Prop :=
  ∀ n, P8299303461635809008.a n = A087274 (n + 1)

end A087274

/-! ## A087274.P4254021440714858350

`A061395(3*p?[round(8*n/7)]+1)`
-/

namespace A087274.P4254021440714858350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A087274.P4254021440714858350

namespace A087274

/-- `A061395(3*p?[round(8*n/7)]+1)` -/
def P4254021440714858350.Spec : Prop :=
  ∀ n, P4254021440714858350.a n = A087274 (n + 1)

end A087274

/-! ## A087274.P745966161588466223

`A061395(A001748(n+1)+1)`
-/

namespace A087274.P745966161588466223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A001748 (n + 1) + 1).toNat

end

end A087274.P745966161588466223

namespace A087274

/-- `A061395(A001748(n+1)+1)` -/
def P745966161588466223.Spec : Prop :=
  ∀ n, P745966161588466223.a n = A087274 (n + 1)

end A087274

/-! ## A087274.P14196274572983373959

`A061395(A112773(n+2)+1)`
-/

namespace A087274.P14196274572983373959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A112773 (n + 2) + 1).toNat

end

end A087274.P14196274572983373959

namespace A087274

/-- `A061395(A112773(n+2)+1)` -/
def P14196274572983373959.Spec : Prop :=
  ∀ n, P14196274572983373959.a n = A087274 (n + 1)

end A087274

/-! ## A087274.P640228589780674750

`A061395(3*A000040(n+1)+1)`
-/

namespace A087274.P640228589780674750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (3 * A000040 (n + 1) + 1).toNat

end

end A087274.P640228589780674750

namespace A087274

/-- `A061395(3*A000040(n+1)+1)` -/
def P640228589780674750.Spec : Prop :=
  ∀ n, P640228589780674750.a n = A087274 (n + 1)

end A087274

/-! ## A087274.P8116735609921043752

`A061395(A138636(n+1)+2)`
-/

namespace A087274.P8116735609921043752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A138636 (n + 1) + 2).toNat

end

end A087274.P8116735609921043752

namespace A087274

/-- `A061395(A138636(n+1)+2)` -/
def P8116735609921043752.Spec : Prop :=
  ∀ n, P8116735609921043752.a n = A087274 (n + 1)

end A087274

/-! ## A087274.P413497048697613526

`∑{d}[A087273(n+1), A056239(#)]`
-/

namespace A087274.P413497048697613526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A087274.P413497048697613526

namespace A087274

/-- `∑{d}[A087273(n+1), A056239(#)]` -/
def P413497048697613526.Spec : Prop :=
  ∀ n, P413497048697613526.a n = A087274 (n + 1)

end A087274

/-! ## A087274.P2735884005934468834

`A061395(A135984(n+1)+1)`
-/

namespace A087274.P2735884005934468834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A135984 (n + 1) + 1).toNat

end

end A087274.P2735884005934468834

namespace A087274

/-- `A061395(A135984(n+1)+1)` -/
def P2735884005934468834.Spec : Prop :=
  ∀ n, P2735884005934468834.a n = A087274 (n + 1)

end A087274

/-! ## A087274.P12088212773490555302

`A252735(3*p?[round(8*n/7)]+1)+1`
-/

namespace A087274.P12088212773490555302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat + 1

end

end A087274.P12088212773490555302

namespace A087274

/-- `A252735(3*p?[round(8*n/7)]+1)+1` -/
def P12088212773490555302.Spec : Prop :=
  ∀ n, P12088212773490555302.a n = A087274 (n + 1)

end A087274

/-!
# A087275: Write n in binary: 1ab..yz, then a(n) = 1b..yz + ... + 1yz + 1z + 1.

The programs for A087275, there is no canonical definition to state claims against.
-/

/-! ## A087275.P6873603019224714098

`(n+1)*floor(log2(n+1))-∑[xor(n, n+1)%(n+1)]`
-/

namespace A087275.P6873603019224714098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) % (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.log 2 (n + 1) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A087275.P6873603019224714098

/-! ## A087275.P5084921619048571949

`A049802(n+1)+A035327(n+1)`
-/

namespace A087275.P5084921619048571949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049802 (n + 1) + A035327 (n + 1)

end

end A087275.P5084921619048571949

/-! ## A087275.P17822761168611123427

`A049802(n+1)+∑[A099894(n)-1]`
-/

namespace A087275.P17822761168611123427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049802 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087275.P17822761168611123427

/-! ## A087275.P14498884685481437688

`A049802(n+1)+A003817(n)%(n+1)`
-/

namespace A087275.P14498884685481437688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049802 (n + 1) + Int.tmod (A003817 n) (n + 1 : ℤ)

end

end A087275.P14498884685481437688

/-! ## A087275.P9011957796528653275

`∑[A000523(2*n+1)-A080940(2*(n+1))]`
-/

namespace A087275.P9011957796528653275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * n + 1) - A080940 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087275.P9011957796528653275

/-! ## A087275.P10561947595628538624

`∑[A070939(2*n)-A080940(2*(n+1))]-(n+1)`
-/

namespace A087275.P10561947595628538624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (2 * n) - A080940 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A087275.P10561947595628538624

/-! ## A087275.P15448828903680778328

`A049802(n+1)+A030109(A059894(n+1))`
-/

namespace A087275.P15448828903680778328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049802 (n + 1) + A030109 (A059894 (n + 1)).toNat

end

end A087275.P15448828903680778328

/-! ## A087275.P5099132057044017441

`A053645(A054429(n+1))+A049802(n+1)`
-/

namespace A087275.P5099132057044017441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A054429 (n + 1)).toNat + A049802 (n + 1)

end

end A087275.P5099132057044017441

/-! ## A087275.P17102305569924911598

`∑[A000523(n+1)-A004273(A080940(n+1))]`
-/

namespace A087275.P17102305569924911598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) - A004273 (A080940 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087275.P17102305569924911598

/-! ## A087275.P16353058091620704916

`A087276(n+1)-(n+1)`
-/

namespace A087275.P16353058091620704916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087276 (n + 1) - (n + 1 : ℤ)

end

end A087275.P16353058091620704916

/-!
# A087276: Write n in binary: 1ab..yz, then a(n) = 1ab..yz + ... + 1yz + 1z + 1.

The programs for A087276, there is no canonical definition to state claims against.
-/

/-! ## A087276.P4790316783330766860

`(n+1)*floor(log2(n+1))-∑[xor(n, n+1)%(n+1)]+1+n`
-/

namespace A087276.P4790316783330766860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) % (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.log 2 (n + 1) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1 + (n : ℤ)

end

end A087276.P4790316783330766860

/-! ## A087276.P11812989162626125406

`A087275(n+1)+1+n`
-/

namespace A087276.P11812989162626125406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087275 (n + 1) + 1 + (n : ℤ)

end

end A087276.P11812989162626125406

/-! ## A087276.P8826969743115195349

`a(A162751(n)-1)+1+n` with `a(0)=1`
-/

namespace A087276.P8826969743115195349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A162751 n - 1).toNat + 1 + n

end

end A087276.P8826969743115195349

/-! ## A087276.P9831011572916116675

`A049802(n+1)+∑[A099894(n)]`
-/

namespace A087276.P9831011572916116675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049802 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087276.P9831011572916116675

/-! ## A087276.P14370815897093478901

`A049802(n+1)+A003817(n+1)`
-/

namespace A087276.P14370815897093478901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049802 (n + 1) + A003817 (n + 1)

end

end A087276.P14370815897093478901

/-! ## A087276.P15988000664593099735

`∑[A070939(2*n)-A080940(2*(n+1))]`
-/

namespace A087276.P15988000664593099735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (2 * n) - A080940 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087276.P15988000664593099735

/-! ## A087276.P3133483272989428482

`A049802(n+1)+A004273(A053644(n+1))`
-/

namespace A087276.P3133483272989428482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049802 (n + 1) + A004273 (A053644 (n + 1)).toNat

end

end A087276.P3133483272989428482

/-! ## A087276.P5843135897561766012

`A054429(n+1)+A049802(A004754(n+1))`
-/

namespace A087276.P5843135897561766012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (n + 1) + A049802 (A004754 (n + 1)).toNat

end

end A087276.P5843135897561766012

/-! ## A087276.P11804930327764652313

`A049802(n+1)+A000225(A070939(n+1))`
-/

namespace A087276.P11804930327764652313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049802 (n + 1) + A000225 (A070939 (n + 1)).toNat

end

end A087276.P11804930327764652313

/-! ## A087276.P2263725301258882240

`A030109(n+1)+A059894(n+1)+A049802(n+1)`
-/

namespace A087276.P2263725301258882240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (n + 1) + (A059894 (n + 1) + A049802 (n + 1))

end

end A087276.P2263725301258882240

/-!
# A087277: Numbers k such that the three second-degree cyclotomic polynomials x^2 + 1, x^2 - x + 1 and x^2 + x + 1 are simultaneously prime when evaluated at x=k.

The programs for A087277, there is no canonical definition to state claims against.
-/

/-! ## A087277.P8937343702364381156

`∩[A067664(n+1), A396060(n+1)]`
-/

namespace A087277.P8937343702364381156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087277.P8937343702364381156

/-! ## A087277.P12655744602211820825

`∩[A067664(n+1), A081945(n+1)]`
-/

namespace A087277.P12655744602211820825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087277.P12655744602211820825

/-! ## A087277.P10433551195640490144

`∩[A081945(n+1), A396060(n+1)]`
-/

namespace A087277.P10433551195640490144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087277.P10433551195640490144

/-! ## A087277.P10719158000100129723

`∩[A067664(n+1), A096174(n+1)]`
-/

namespace A087277.P10719158000100129723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087277.P10719158000100129723

/-! ## A087277.P18152452705181055466

`∩[A005574(n+1), A081945(n+1)]`
-/

namespace A087277.P18152452705181055466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087277.P18152452705181055466

/-!
# A087278: Nonnegative integers whose distance to the nearest square is not greater than 1.

The programs for A087278, the canonical program `A087278.P4838886995498495901` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087278 has offset 0).

The definition of A087278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087278.P4838886995498495901

`2*C(floor(n/3), 2)+n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087278

/-- `2*C(floor(n/3), 2)+n` -/
def P4838886995498495901.Spec : Prop :=
  ∀ n, (P4838886995498495901.a n : ℤ) = A087278 n

theorem P4838886995498495901.correct : P4838886995498495901.Spec := by
  intro n
  simp only [A087278]

end A087278

/-! ## A087278.P6078462178357490127

`∑[n²%3]+floor(n/3)²`
-/

namespace A087278.P6078462178357490127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊(n : ℚ) / 3⌋ ^ 2

end

end A087278.P6078462178357490127

namespace A087278

/-- `∑[n²%3]+floor(n/3)²` -/
def P6078462178357490127.Spec : Prop :=
  ∀ n, P6078462178357490127.a n = A087278 n

end A087278

/-! ## A087278.P15957976474497964679

`floor((1/2-floor(n/3))²+n)`
-/

namespace A087278.P15957976474497964679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((1 : ℚ) / 2 - (⌊(n : ℚ) / 3⌋ : ℚ)) ^ 2 + (n : ℚ)⌋

end

end A087278.P15957976474497964679

namespace A087278

/-- `floor((1/2-floor(n/3))²+n)` -/
def P15957976474497964679.Spec : Prop :=
  ∀ n, P15957976474497964679.a n = A087278 n

end A087278

/-! ## A087278.P10969154795506283309

`∑[char[3*n]]²-(1-n%3)`
-/

namespace A087278.P10969154795506283309
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (1 - ((n % 3 : ℕ) : ℤ))

end

end A087278.P10969154795506283309

namespace A087278

/-- `∑[char[3*n]]²-(1-n%3)` -/
def P10969154795506283309.Spec : Prop :=
  ∀ n, P10969154795506283309.a n = A087278 n

end A087278

/-! ## A087278.P12923570651235399356

`a(n-3)-Δ[floor(-(n²/3))]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A087278.P12923570651235399356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊-((n ^ 2 : ℚ) / 3)⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 3) - (f1 (n + 1) - f1 n)

end

end A087278.P12923570651235399356

namespace A087278

/-- `a(n-3)-Δ[floor(-(n²/3))]` -/
def P12923570651235399356.Spec : Prop :=
  ∀ n, P12923570651235399356.a n = A087278 n

end A087278

/-! ## A087278.P12539700262655051118

`2*A211534(n)+n`
-/

namespace A087278.P12539700262655051118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211534 n + (n : ℤ)

end

end A087278.P12539700262655051118

namespace A087278

/-- `2*A211534(n)+n` -/
def P12539700262655051118.Spec : Prop :=
  ∀ n, P12539700262655051118.a n = A087278 n

end A087278

/-! ## A087278.P11033026103473658257

`∪[A087279(n+1), n²]`
-/

namespace A087278.P11033026103473658257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087279 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A087278.P11033026103473658257

namespace A087278

/-- `∪[A087279(n+1), n²]` -/
def P11033026103473658257.Spec : Prop :=
  ∀ n, (P11033026103473658257.a n : ℤ) = A087278 n

end A087278

/-! ## A087278.P2499771696059089596

`∪[n²+1, A135276(n)]`
-/

namespace A087278.P2499771696059089596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A087278.P2499771696059089596

namespace A087278

/-- `∪[n²+1, A135276(n)]` -/
def P2499771696059089596.Spec : Prop :=
  ∀ n, (P2499771696059089596.a n : ℤ) = A087278 n

end A087278

/-! ## A087278.P1712378288102276028

`∑[abs((A130724(n)+1)%(n+1)-n)]`
-/

namespace A087278.P1712378288102276028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A130724 n + 1) (n + 1 : ℤ) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087278.P1712378288102276028

namespace A087278

/-- `∑[abs((A130724(n)+1)%(n+1)-n)]` -/
def P1712378288102276028.Spec : Prop :=
  ∀ n, P1712378288102276028.a n = A087278 n

end A087278

/-! ## A087278.P10090489992571970698

`∪[A135276(n), A002522(n)]`
-/

namespace A087278.P10090489992571970698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135276 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A087278.P10090489992571970698

namespace A087278

/-- `∪[A135276(n), A002522(n)]` -/
def P10090489992571970698.Spec : Prop :=
  ∀ n, (P10090489992571970698.a n : ℤ) = A087278 n

end A087278

/-! ## A087278.P8014323217751211334

`A008620(n)²-A057078(n)`
-/

namespace A087278.P8014323217751211334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n ^ 2 - A057078 n

end

end A087278.P8014323217751211334

namespace A087278

/-- `A008620(n)²-A057078(n)` -/
def P8014323217751211334.Spec : Prop :=
  ∀ n, P8014323217751211334.a n = A087278 n

end A087278

/-! ## A087278.P6927661507612163696

`A322042(n+1)+A211547(n)`
-/

namespace A087278.P6927661507612163696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322042 (n + 1) + A211547 n

end

end A087278.P6927661507612163696

namespace A087278

/-- `A322042(n+1)+A211547(n)` -/
def P6927661507612163696.Spec : Prop :=
  ∀ n, P6927661507612163696.a n = A087278 n

end A087278

/-! ## A087278.P8219841292793720640

`A002061(A002264(n))-1+n`
-/

namespace A087278.P8219841292793720640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A002264 n).toNat - 1 + (n : ℤ)

end

end A087278.P8219841292793720640

namespace A087278

/-- `A002061(A002264(n))-1+n` -/
def P8219841292793720640.Spec : Prop :=
  ∀ n, P8219841292793720640.a n = A087278 n

end A087278

/-! ## A087278.P11888804548428018956

`A075561(n+1)-A057078(n)`
-/

namespace A087278.P11888804548428018956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075561 (n + 1) - A057078 n

end

end A087278.P11888804548428018956

namespace A087278

/-- `A075561(n+1)-A057078(n)` -/
def P11888804548428018956.Spec : Prop :=
  ∀ n, P11888804548428018956.a n = A087278 n

end A087278

/-! ## A087278.P18366040045426635587

`∪[A363283(n+1), A005563(n)]`
-/

namespace A087278.P18366040045426635587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A087278.P18366040045426635587

namespace A087278

/-- `∪[A363283(n+1), A005563(n)]` -/
def P18366040045426635587.Spec : Prop :=
  ∀ n, (P18366040045426635587.a n : ℤ) = A087278 n

end A087278

/-! ## A087278.P1930225047146289415

`∪[A363283(n+1), A132411(n)]`
-/

namespace A087278.P1930225047146289415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132411 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A087278.P1930225047146289415

namespace A087278

/-- `∪[A363283(n+1), A132411(n)]` -/
def P1930225047146289415.Spec : Prop :=
  ∀ n, (P1930225047146289415.a n : ℤ) = A087278 n

end A087278

/-! ## A087278.P6843338713040296480

`A211547(n)+n-A002264(n)`
-/

namespace A087278.P6843338713040296480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211547 n + ((n : ℤ) - A002264 n)

end

end A087278.P6843338713040296480

namespace A087278

/-- `A211547(n)+n-A002264(n)` -/
def P6843338713040296480.Spec : Prop :=
  ∀ n, P6843338713040296480.a n = A087278 n

end A087278

/-! ## A087278.P1271833123223759033

`∑[A011655(n)]+A002264(n)²`
-/

namespace A087278.P1271833123223759033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A002264 n ^ 2

end

end A087278.P1271833123223759033

namespace A087278

/-- `∑[A011655(n)]+A002264(n)²` -/
def P1271833123223759033.Spec : Prop :=
  ∀ n, P1271833123223759033.a n = A087278 n

end A087278

/-! ## A087278.P10647701490053106450

`A008620(n)²+A010872(n)-1`
-/

namespace A087278.P10647701490053106450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n ^ 2 + (A010872 n - 1)

end

end A087278.P10647701490053106450

namespace A087278

/-- `A008620(n)²+A010872(n)-1` -/
def P10647701490053106450.Spec : Prop :=
  ∀ n, P10647701490053106450.a n = A087278 n

end A087278

/-! ## A087278.P7343888370033049011

`(A002264(n)+1)²-A057078(n)`
-/

namespace A087278.P7343888370033049011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002264 n + 1) ^ 2 - A057078 n

end

end A087278.P7343888370033049011

namespace A087278

/-- `(A002264(n)+1)²-A057078(n)` -/
def P7343888370033049011.Spec : Prop :=
  ∀ n, P7343888370033049011.a n = A087278 n

end A087278

/-!
# A087279: Nonnegative numbers whose distance to the nearest positive square equals exactly 1.

The programs for A087279, the canonical program `A087279.P3709852768944629291` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087279 has offset 1).

The definition of A087279 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087279.P3709852768944629291

`floor((n+2)/2)²+(-1)^(n+1)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087279

/-- `floor((n+2)/2)²+(-1)^(n+1)` -/
def P3709852768944629291.Spec : Prop :=
  ∀ n, P3709852768944629291.a n = A087279 (n + 1)

theorem P3709852768944629291.correct : P3709852768944629291.Spec := by
  intro n
  simp only [A087279, Nat.add_sub_cancel]

end A087279

/-! ## A087279.P14343567814876120478

`∪[(n+1)²+1, n*(n+2)]`
-/

namespace A087279.P14343567814876120478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A087279.P14343567814876120478

namespace A087279

/-- `∪[(n+1)²+1, n*(n+2)]` -/
def P14343567814876120478.Spec : Prop :=
  ∀ n, (P14343567814876120478.a n : ℤ) = A087279 (n + 1)

end A087279

/-! ## A087279.P12308636904194181533

`∑[gcd(1-n, 2%a(n-1))]` with `a(0)=0, a(1)=2`
-/

namespace A087279.P12308636904194181533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  Int.gcd (1 - (n : ℤ)) ((2 % f1 (n - 1) : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087279.P12308636904194181533

namespace A087279

/-- `∑[gcd(1-n, 2%a(n-1))]` -/
def P12308636904194181533.Spec : Prop :=
  ∀ n, (P12308636904194181533.a n : ℤ) = A087279 (n + 1)

end A087279

/-! ## A087279.P14364441780233165617

`ceil((n+1)²/2-a(n-1))` with `a(0)=0`
-/

namespace A087279.P14364441780233165617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈((n + 1) ^ 2 : ℚ) / 2 - (a (n - 1) : ℚ)⌉

end

end A087279.P14364441780233165617

namespace A087279

/-- `ceil((n+1)²/2-a(n-1))` -/
def P14364441780233165617.Spec : Prop :=
  ∀ n, P14364441780233165617.a n = A087279 (n + 1)

end A087279

/-! ## A087279.P15857572137446418453

`round((n+1)²/2-a(n-1))` with `a(0)=0`
-/

namespace A087279.P15857572137446418453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / 2 - (a (n - 1) : ℚ))

end

end A087279.P15857572137446418453

namespace A087279

/-- `round((n+1)²/2-a(n-1))` -/
def P15857572137446418453.Spec : Prop :=
  ∀ n, P15857572137446418453.a n = A087279 (n + 1)

end A087279

/-! ## A087279.P8996491239122702851

`∑[gcd(2-a(n-1), n-2)+1]` with `a(0)=0`
-/

namespace A087279.P8996491239122702851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.gcd (2 - (f1 (n - 1) : ℤ)) ((n : ℤ) - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087279.P8996491239122702851

namespace A087279

/-- `∑[gcd(2-a(n-1), n-2)+1]` -/
def P8996491239122702851.Spec : Prop :=
  ∀ n, (P8996491239122702851.a n : ℤ) = A087279 (n + 1)

end A087279

/-! ## A087279.P1542467321389327837

`floor(((n+1)²+1)/2-a(n-1))` with `a(0)=0`
-/

namespace A087279.P1542467321389327837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊((n + 1) ^ 2 + 1 : ℚ) / 2 - (a (n - 1) : ℚ)⌋

end

end A087279.P1542467321389327837

namespace A087279

/-- `floor(((n+1)²+1)/2-a(n-1))` -/
def P1542467321389327837.Spec : Prop :=
  ∀ n, P1542467321389327837.a n = A087279 (n + 1)

end A087279

/-! ## A087279.P13331946998492422645

`floor(∑[n+1]-(a(n-1)+n/2))` with `a(0)=0`
-/

namespace A087279.P13331946998492422645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - ((a (n - 1) : ℚ) + (n : ℚ) / 2)⌋

end

end A087279.P13331946998492422645

namespace A087279

/-- `floor(∑[n+1]-(a(n-1)+n/2))` -/
def P13331946998492422645.Spec : Prop :=
  ∀ n, P13331946998492422645.a n = A087279 (n + 1)

end A087279

/-! ## A087279.P4951280514251634046

`∑[(a(n-2)+2)/a(a(n-1))]` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A087279.P4951280514251634046
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 2, 1] fun n f1 =>
  (f1 (n - 2) + 2) / f1 (SequenceMachineLib.roundAway (f1 (n - 1))).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087279.P4951280514251634046

namespace A087279

/-- `∑[(a(n-2)+2)/a(a(n-1))]` -/
def P4951280514251634046.Spec : Prop :=
  ∀ n, P4951280514251634046.a n = (A087279 (n + 1) : ℚ)

end A087279

/-! ## A087279.P1142252702026520091

`∑[and(n-1-a(n-1), n-3)+2]` with `a(0)=0`
-/

namespace A087279.P1142252702026520091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.land ((n : ℤ) - 1 - f1 (n - 1)) ((n : ℤ) - 3) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087279.P1142252702026520091

namespace A087279

/-- `∑[and(n-1-a(n-1), n-3)+2]` -/
def P1142252702026520091.Spec : Prop :=
  ∀ n, P1142252702026520091.a n = A087279 (n + 1)

end A087279

/-! ## A087279.P5774725222823231379

`∑[n-a(n-1)/a(a(n-2))]` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A087279.P5774725222823231379
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 2, 1] fun n f1 =>
  (n : ℚ) - f1 (n - 1) / f1 (SequenceMachineLib.roundAway (f1 (n - 2))).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087279.P5774725222823231379

namespace A087279

/-- `∑[n-a(n-1)/a(a(n-2))]` -/
def P5774725222823231379.Spec : Prop :=
  ∀ n, P5774725222823231379.a n = (A087279 (n + 1) : ℚ)

end A087279

/-! ## A087279.P4471937285231188533

`∑[n-1-and(a(n-1)-n, n-3)]` with `a(0)=0`
-/

namespace A087279.P4471937285231188533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - 1 - Int.land (f1 (n - 1) - (n : ℤ)) ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087279.P4471937285231188533

namespace A087279

/-- `∑[n-1-and(a(n-1)-n, n-3)]` -/
def P4471937285231188533.Spec : Prop :=
  ∀ n, P4471937285231188533.a n = A087279 (n + 1)

end A087279

/-! ## A087279.P3223005098370616954

`round(A247375(n)/2+n)`
-/

namespace A087279.P3223005098370616954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A247375 n : ℚ) / 2 + (n : ℚ))

end

end A087279.P3223005098370616954

namespace A087279

/-- `round(A247375(n)/2+n)` -/
def P3223005098370616954.Spec : Prop :=
  ∀ n, P3223005098370616954.a n = A087279 (n + 1)

end A087279

/-! ## A087279.P9708089126116180460

`∑[A109613(n)-a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A087279.P9708089126116180460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  A109613 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087279.P9708089126116180460

namespace A087279

/-- `∑[A109613(n)-a(n-1)]` -/
def P9708089126116180460.Spec : Prop :=
  ∀ n, P9708089126116180460.a n = A087279 (n + 1)

end A087279

/-! ## A087279.P10482624677781748909

`abs(Δ[(A000217(n)%(n+1))²]-1)`
-/

namespace A087279.P10482624677781748909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 n) (n + 1 : ℤ) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - 1|

end

end A087279.P10482624677781748909

namespace A087279

/-- `abs(Δ[(A000217(n)%(n+1))²]-1)` -/
def P10482624677781748909.Spec : Prop :=
  ∀ n, P10482624677781748909.a n = A087279 (n + 1)

end A087279

/-! ## A087279.P6372232651507570005

`∑[A014681(n)/A152271(n)]`
-/

namespace A087279.P6372232651507570005
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014681 n : ℚ) / (A152271 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087279.P6372232651507570005

namespace A087279

/-- `∑[A014681(n)/A152271(n)]` -/
def P6372232651507570005.Spec : Prop :=
  ∀ n, P6372232651507570005.a n = (A087279 (n + 1) : ℚ)

end A087279

/-!
# A087281: a(n) = Lucas(7*n).

The programs for A087281, the canonical program `A087281.P1664574825546565375` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087281 has offset 0).

The definition of A087281 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087281.P1664574825546565375

`29*a(n-1)+a(n-2)` with `a(0)=2, a(1)=29`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087281

/-- `29*a(n-1)+a(n-2)` -/
def P1664574825546565375.Spec : Prop :=
  ∀ n, (P1664574825546565375.a n : ℤ) = A087281 n

theorem P1664574825546565375.correct : P1664574825546565375.Spec := by
  intro n
  simp only [A087281]

end A087281

/-! ## A087281.P9677725464937624121

`((29+sqrt(845))/2)^n+((29-sqrt(845))/2)^n`
-/

namespace A087281.P9677725464937624121
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((29 + Real.sqrt (845 : ℝ)) / 2) ^ n + ((29 - Real.sqrt (845 : ℝ)) / 2) ^ n

end

end A087281.P9677725464937624121

namespace A087281

/-- `((29+sqrt(845))/2)^n+((29-sqrt(845))/2)^n` -/
def P9677725464937624121.Spec : Prop :=
  ∀ n, P9677725464937624121.a n = (A087281 n : ℝ)

end A087281

/-! ## A087281.P10944504348632979956

`A000032(7*n)`
-/

namespace A087281.P10944504348632979956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (7 * n)

end

end A087281.P10944504348632979956

namespace A087281

/-- `A000032(7*n)` -/
def P10944504348632979956.Spec : Prop :=
  ∀ n, P10944504348632979956.a n = A087281 n

end A087281

/-! ## A087281.P18359320751043971450

`A127218(14*n)`
-/

namespace A087281.P18359320751043971450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 (14 * n)

end

end A087281.P18359320751043971450

namespace A087281

/-- `A127218(14*n)` -/
def P18359320751043971450.Spec : Prop :=
  ∀ n, P18359320751043971450.a n = A087281 n

end A087281

/-! ## A087281.P2725766743647662547

`A303427(14*n)`
-/

namespace A087281.P2725766743647662547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 (14 * n)

end

end A087281.P2725766743647662547

namespace A087281

/-- `A303427(14*n)` -/
def P2725766743647662547.Spec : Prop :=
  ∀ n, P2725766743647662547.a n = A087281 n

end A087281

/-! ## A087281.P17997836594962888884

`A090244(A131877(n))`
-/

namespace A087281.P17997836594962888884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 (A131877 n).toNat

end

end A087281.P17997836594962888884

namespace A087281

/-- `A090244(A131877(n))` -/
def P17997836594962888884.Spec : Prop :=
  ∀ n, P17997836594962888884.a n = A087281 n

end A087281

/-! ## A087281.P14218201067185814835

`A329723(A017005(n))`
-/

namespace A087281.P14218201067185814835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (A017005 n).toNat

end

end A087281.P14218201067185814835

namespace A087281

/-- `A329723(A017005(n))` -/
def P14218201067185814835.Spec : Prop :=
  ∀ n, P14218201067185814835.a n = A087281 n

end A087281

/-! ## A087281.P17163887019767645955

`record[A000032(A195159(n))]`
-/

namespace A087281.P17163887019767645955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A195159 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087281.P17163887019767645955

namespace A087281

/-- `record[A000032(A195159(n))]` -/
def P17163887019767645955.Spec : Prop :=
  ∀ n, P17163887019767645955.a n = A087281 n

end A087281

/-! ## A087281.P5120460739299005081

`A163695(A133655(n)-n)`
-/

namespace A087281.P5120460739299005081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163695 (A133655 n - (n : ℤ)).toNat

end

end A087281.P5120460739299005081

namespace A087281

/-- `A163695(A133655(n)-n)` -/
def P5120460739299005081.Spec : Prop :=
  ∀ n, P5120460739299005081.a n = A087281 n

end A087281

/-! ## A087281.P7945848406989168678

`A329723(A017089(n)-n)`
-/

namespace A087281.P7945848406989168678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (A017089 n - (n : ℤ)).toNat

end

end A087281.P7945848406989168678

namespace A087281

/-- `A329723(A017089(n)-n)` -/
def P7945848406989168678.Spec : Prop :=
  ∀ n, P7945848406989168678.a n = A087281 n

end A087281

/-!
# A087282: An infinite audioactive word, one of three in the cycle that results from the limit of the 'Look and Say' sequence using method A with an initial term of 1 (A005150).

The programs for A087282, there is no canonical definition to state claims against.
-/

/-! ## A087282.P13511601619352962165

`gcd(A069088(A160786(n)), A144476(n+1))`
-/

namespace A087282.P13511601619352962165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A069088 (A160786 n).toNat) (A144476 (n + 1))

end

end A087282.P13511601619352962165

/-! ## A087282.P4704300950870302693

`A325522(A325522(n+1)+A188896(n+1))`
-/

namespace A087282.P4704300950870302693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325522 (A325522 (n + 1) + A188896 (n + 1)).toNat

end

end A087282.P4704300950870302693

/-! ## A087282.P9594460984850628983

`A350560(A350559(n+1)+A143291(3*n+4))`
-/

namespace A087282.P9594460984850628983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350560 (A350559 (n + 1) + A143291 (3 * n + 4)).toNat

end

end A087282.P9594460984850628983

/-! ## A087282.P6420159230986387055

`A154402(A308721(n)+A308698(n+1))`
-/

namespace A087282.P6420159230986387055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154402 (A308721 n + A308698 (n + 1)).toNat

end

end A087282.P6420159230986387055

/-! ## A087282.P6676320128188023771

`A135010(A004135(n+1)*A080851(n))`
-/

namespace A087282.P6676320128188023771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135010 (A004135 (n + 1) * A080851 n).toNat

end

end A087282.P6676320128188023771

/-!
# A087283: An infinite audioactive word, one of three in the cycle that results from the limit of the 'Look and Say' sequence using method A with an initial term of 1 (A005150).

The programs for A087283, there is no canonical definition to state claims against.
-/

/-! ## A087283.P3795792423623237935

`A136757(xor(A040778(3*n+4), A249134(2*(n+2))))`
-/

namespace A087283.P3795792423623237935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136757 (Int.xor (A040778 (3 * n + 4)) (A249134 (2 * (n + 2)))).toNat

end

end A087283.P3795792423623237935

/-!
# A087284: An infinite audioactive word, one of three in the cycle that results from the limit of the 'Look and Say' sequence using method A with an initial term of 1 (A005150).

The programs for A087284, there is no canonical definition to state claims against.
-/

/-! ## A087284.P9832436043705804105

`or(A134451(A108895(n)), A290825(n))`
-/

namespace A087284.P9832436043705804105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A134451 (A108895 n).toNat) (A290825 n)

end

end A087284.P9832436043705804105

/-! ## A087284.P14599546479744070519

`or(A010126(A000124(n)²), A290825(n))`
-/

namespace A087284.P14599546479744070519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010126 (A000124 n ^ 2).toNat) (A290825 n)

end

end A087284.P14599546479744070519

/-! ## A087284.P10446187942999414712

`or(A134451(A000124(n)²), A290825(n))`
-/

namespace A087284.P10446187942999414712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A134451 (A000124 n ^ 2).toNat) (A290825 n)

end

end A087284.P10446187942999414712

/-! ## A087284.P15295303959937097477

`or(A014695(n), A056979(A045539(n+1)))`
-/

namespace A087284.P15295303959937097477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014695 n) (A056979 (A045539 (n + 1)).toNat)

end

end A087284.P15295303959937097477

/-! ## A087284.P5386379340605272820

`A255824(A190026(n+1)+A116444(n+1))`
-/

namespace A087284.P5386379340605272820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255824 (A190026 (n + 1) + A116444 (n + 1)).toNat

end

end A087284.P5386379340605272820

/-!
# A087285: Possible differences between a cube and the next smaller square.

The programs for A087285, there is no canonical definition to state claims against.
-/

/-! ## A087285.P613071079224834453

`A154333(A154332(n+1))`
-/

namespace A087285.P613071079224834453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154333 (A154332 (n + 1)).toNat

end

end A087285.P613071079224834453

/-! ## A087285.P8581821815906710037

`lt[A151878(n+1), char[A154333(n+2)]]`
-/

namespace A087285.P8581821815906710037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154333 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A087285.P8581821815906710037

/-!
# A087286: Possible differences between a square and the closest smaller cube.

The programs for A087286, there is no canonical definition to state claims against.
-/

/-! ## A087286.P10629933628468791119

`A165289(n+2)`
-/

namespace A087286.P10629933628468791119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165289 (n + 2)

end

end A087286.P10629933628468791119

/-! ## A087286.P3466623627234435100

`record[A165289(gcd(n, n*a(n-1)))]` with `a(0)=1`
-/

namespace A087286.P3466623627234435100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A165289 (Int.gcd (n : ℤ) ((n : ℤ) * f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087286.P3466623627234435100

/-! ## A087286.P784621369379244886

`record[A165289(A126759(or(1, n)))]`
-/

namespace A087286.P784621369379244886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165289 (A126759 (Nat.lor 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087286.P784621369379244886

/-! ## A087286.P6307281456656162718

`record[A165289(A126759(xor(1, n)))]`
-/

namespace A087286.P6307281456656162718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165289 (A126759 (Nat.xor 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087286.P6307281456656162718

/-! ## A087286.P13736983557476950085

`record[A165289(xor(n, A000038(n)))]`
-/

namespace A087286.P13736983557476950085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165289 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087286.P13736983557476950085

/-! ## A087286.P1434954399614490412

`record[A165289(A080513(abs(1-n)))]`
-/

namespace A087286.P1434954399614490412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165289 (A080513 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087286.P1434954399614490412

/-! ## A087286.P1952292732271748253

`record[A165289(A133310(abs(1-n)))]`
-/

namespace A087286.P1952292732271748253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165289 (A133310 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087286.P1952292732271748253

/-! ## A087286.P10262368470927744767

`record[A165289(A126759(1-(n-2*n)))]`
-/

namespace A087286.P10262368470927744767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165289 (A126759 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087286.P10262368470927744767

/-! ## A087286.P853454721049627615

`record[A165289(A000267(A004442(n)))]`
-/

namespace A087286.P853454721049627615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165289 (A000267 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087286.P853454721049627615

/-!
# A087287: a(n) = Lucas(9*n).

The programs for A087287, the canonical program `A087287.P7595294130686383861` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087287 has offset 0).

The definition of A087287 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087287.P7595294130686383861

`76*a(n-1)+a(n-2)` with `a(0)=2, a(1)=76`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087287

/-- `76*a(n-1)+a(n-2)` -/
def P7595294130686383861.Spec : Prop :=
  ∀ n, (P7595294130686383861.a n : ℤ) = A087287 n

theorem P7595294130686383861.correct : P7595294130686383861.Spec := by
  intro n
  simp only [A087287]

end A087287

/-! ## A087287.P16506620888448234322

`A014448(3*n)`
-/

namespace A087287.P16506620888448234322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014448 (3 * n)

end

end A087287.P16506620888448234322

namespace A087287

/-- `A014448(3*n)` -/
def P16506620888448234322.Spec : Prop :=
  ∀ n, P16506620888448234322.a n = A087287 n

end A087287

/-! ## A087287.P17792157408452426956

`A000032(9*n)`
-/

namespace A087287.P17792157408452426956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (9 * n)

end

end A087287.P17792157408452426956

namespace A087287

/-- `A000032(9*n)` -/
def P17792157408452426956.Spec : Prop :=
  ∀ n, P17792157408452426956.a n = A087287 n

end A087287

/-! ## A087287.P8963939362837320761

`A127218(18*n)`
-/

namespace A087287.P8963939362837320761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 (18 * n)

end

end A087287.P8963939362837320761

namespace A087287

/-- `A127218(18*n)` -/
def P8963939362837320761.Spec : Prop :=
  ∀ n, P8963939362837320761.a n = A087287 n

end A087287

/-! ## A087287.P7617078587903011422

`A303427(18*n)`
-/

namespace A087287.P7617078587903011422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 (18 * n)

end

end A087287.P7617078587903011422

namespace A087287

/-- `A303427(18*n)` -/
def P7617078587903011422.Spec : Prop :=
  ∀ n, P7617078587903011422.a n = A087287 n

end A087287

/-! ## A087287.P4697669984094576758

`A100233(3*n)+1`
-/

namespace A087287.P4697669984094576758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100233 (3 * n) + 1

end

end A087287.P4697669984094576758

namespace A087287

/-- `A100233(3*n)+1` -/
def P4697669984094576758.Spec : Prop :=
  ∀ n, P4697669984094576758.a n = A087287 n

end A087287

/-! ## A087287.P7526891548955963819

`2*A001077(3*n)`
-/

namespace A087287.P7526891548955963819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001077 (3 * n)

end

end A087287.P7526891548955963819

namespace A087287

/-- `2*A001077(3*n)` -/
def P7526891548955963819.Spec : Prop :=
  ∀ n, P7526891548955963819.a n = A087287 n

end A087287

/-! ## A087287.P554736493144210104

`record[root(A000032(n), dr(n+1))]`
-/

namespace A087287.P554736493144210104
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000032 n : ℝ) ^ (1 / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087287.P554736493144210104

namespace A087287

/-- `record[root(A000032(n), dr(n+1))]` -/
def P554736493144210104.Spec : Prop :=
  ∀ n, P554736493144210104.a n = (A087287 n : ℝ)

end A087287

/-! ## A087287.P7471079351129897330

`A090244(A161705(n))`
-/

namespace A087287.P7471079351129897330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 (A161705 n).toNat

end

end A087287.P7471079351129897330

namespace A087287

/-- `A090244(A161705(n))` -/
def P7471079351129897330.Spec : Prop :=
  ∀ n, P7471079351129897330.a n = A087287 n

end A087287

/-! ## A087287.P17724471608908874169

`A329723(A017185(n))`
-/

namespace A087287.P17724471608908874169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (A017185 n).toNat

end

end A087287.P17724471608908874169

namespace A087287

/-- `A329723(A017185(n))` -/
def P17724471608908874169.Spec : Prop :=
  ∀ n, P17724471608908874169.a n = A087287 n

end A087287

/-!
# A087288: a(n) = 2*a(n-1) + a(n-2) - 2*a(n-3), with initial terms 4, 4, 10.

The programs for A087288, the canonical program `A087288.P9869803307221684731` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087288 has offset 0).

The definition of A087288 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)-2*a(n-3)` (program `A087288.P9869803307221684731`, by `A087288.P9869803307221684731.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A087288.P6485606314103578709

`2^(n+1)+1+(-1)^n`
-/

namespace A087288.P6485606314103578709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) + 1 : ℤ) + (-1) ^ n

end

end A087288.P6485606314103578709

namespace A087288

/-- `2^(n+1)+1+(-1)^n` -/
def P6485606314103578709.Spec : Prop :=
  ∀ n, P6485606314103578709.a n = A087288 n

theorem P6485606314103578709.correct : P6485606314103578709.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A087288, Nat.add_sub_cancel, A087288.P6485606314103578709.a, A087288.P9869803307221684731.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A087288, Nat.add_sub_cancel, A087288.P6485606314103578709.a, A087288.P9869803307221684731.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A087288

/-! ## A087288.P2264259640949696838

`2*A052531(n)`
-/

namespace A087288.P2264259640949696838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052531 n

end

end A087288.P2264259640949696838

namespace A087288

/-- `2*A052531(n)` -/
def P2264259640949696838.Spec : Prop :=
  ∀ n, P2264259640949696838.a n = A087288 n

end A087288

/-! ## A087288.P9869803307221684731

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=4, a(1)=4, a(2)=10`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087288

/-- `2*a(n-1)+a(n-2)-2*a(n-3)` -/
def P9869803307221684731.Spec : Prop :=
  ∀ n, P9869803307221684731.a n = A087288 n

theorem P9869803307221684731.correct : P9869803307221684731.Spec := by
  intro n
  simp only [A087288]

end A087288

/-! ## A087288.P1009179840923184018

`∑[ogf((-4+4x+2x^2)/(-1+x+2x^2))]`
-/

namespace A087288.P1009179840923184018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -4, -2] [1, -1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087288.P1009179840923184018

namespace A087288

/-- `∑[ogf((-4+4x+2x^2)/(-1+x+2x^2))]` -/
def P1009179840923184018.Spec : Prop :=
  ∀ n, P1009179840923184018.a n = A087288 n

end A087288

/-! ## A087288.P145086662867407352

`ogf((-4+4x+2x^2)/(-1+2x+x^2-2x^3))`
-/

namespace A087288.P145086662867407352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -4, -2] [1, -2, -1, 2] n

end

end A087288.P145086662867407352

namespace A087288

/-- `ogf((-4+4x+2x^2)/(-1+2x+x^2-2x^3))` -/
def P145086662867407352.Spec : Prop :=
  ∀ n, P145086662867407352.a n = A087288 n

end A087288

/-! ## A087288.P17045031880382664803

`2*(log2(gcd(2, n))+2^n)`
-/

namespace A087288.P17045031880382664803
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * (Real.logb 2 (Nat.gcd 2 n : ℝ) + (2 ^ n : ℝ))

end

end A087288.P17045031880382664803

namespace A087288

/-- `2*(log2(gcd(2, n))+2^n)` -/
def P17045031880382664803.Spec : Prop :=
  ∀ n, P17045031880382664803.a n = (A087288 n : ℝ)

end A087288

/-! ## A087288.P13745471132127097580

`xor(2, a(n-1)+2^n)` with `a(0)=4`
-/

namespace A087288.P13745471132127097580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.xor 2 (a (n - 1) + 2 ^ n)

end

end A087288.P13745471132127097580

namespace A087288

/-- `xor(2, a(n-1)+2^n)` -/
def P13745471132127097580.Spec : Prop :=
  ∀ n, (P13745471132127097580.a n : ℤ) = A087288 n

end A087288

/-! ## A087288.P115579160120342168

`floor(a(n-1)-(2-a(n-2)-a(n-2)))` with `a(0)=4, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A087288.P115579160120342168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n a =>
  a (n - 1) - (2 - a (n - 2) - a (n - 2))

end

end A087288.P115579160120342168

namespace A087288

/-- `floor(a(n-1)-(2-a(n-2)-a(n-2)))` -/
def P115579160120342168.Spec : Prop :=
  ∀ n, P115579160120342168.a n = A087288 n

end A087288

/-! ## A087288.P5826833461464933072

`2*(A051049(n)+1)`
-/

namespace A087288.P5826833461464933072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A051049 n + 1)

end

end A087288.P5826833461464933072

namespace A087288

/-- `2*(A051049(n)+1)` -/
def P5826833461464933072.Spec : Prop :=
  ∀ n, P5826833461464933072.a n = A087288 n

end A087288

/-! ## A087288.P818240081368594970

`2*(A141023(n)+2)`
-/

namespace A087288.P818240081368594970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A141023 n + 2)

end

end A087288.P818240081368594970

namespace A087288

/-- `2*(A141023(n)+2)` -/
def P818240081368594970.Spec : Prop :=
  ∀ n, P818240081368594970.a n = A087288 n

end A087288

/-! ## A087288.P343714960226913594

`Δ[or(1, 2^(n+1)+n+1)]`
-/

namespace A087288.P343714960226913594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 ^ (n + 1) + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A087288.P343714960226913594

namespace A087288

/-- `Δ[or(1, 2^(n+1)+n+1)]` -/
def P343714960226913594.Spec : Prop :=
  ∀ n, P343714960226913594.a n = A087288 n

end A087288

/-! ## A087288.P2715013791577937748

`Δ[2*A134522(n)]`
-/

namespace A087288.P2715013791577937748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087288.P2715013791577937748

namespace A087288

/-- `Δ[2*A134522(n)]` -/
def P2715013791577937748.Spec : Prop :=
  ∀ n, P2715013791577937748.a n = A087288 n

end A087288

/-! ## A087288.P3039080641783745096

`(A085435(n+1)+A000225(n+1))/A000225(n+1)`
-/

namespace A087288.P3039080641783745096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085435 (n + 1) + A000225 (n + 1) : ℚ) / (A000225 (n + 1) : ℚ)

end

end A087288.P3039080641783745096

namespace A087288

/-- `(A085435(n+1)+A000225(n+1))/A000225(n+1)` -/
def P3039080641783745096.Spec : Prop :=
  ∀ n, P3039080641783745096.a n = (A087288 n : ℚ)

end A087288

/-! ## A087288.P1536873527823795646

`(A323210(n+1)+A062510(n+1))/A062510(n+1)`
-/

namespace A087288.P1536873527823795646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323210 (n + 1) + A062510 (n + 1) : ℚ) / (A062510 (n + 1) : ℚ)

end

end A087288.P1536873527823795646

namespace A087288

/-- `(A323210(n+1)+A062510(n+1))/A062510(n+1)` -/
def P1536873527823795646.Spec : Prop :=
  ∀ n, P1536873527823795646.a n = (A087288 n : ℚ)

end A087288

/-! ## A087288.P14279446859582977507

`A131953(∑[n+1])`
-/

namespace A087288.P14279446859582977507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131953 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087288.P14279446859582977507

namespace A087288

/-- `A131953(∑[n+1])` -/
def P14279446859582977507.Spec : Prop :=
  ∀ n, P14279446859582977507.a n = A087288 n

end A087288

/-! ## A087288.P9156139228210563844

`A293447(A107620(n+1))`
-/

namespace A087288.P9156139228210563844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293447 (A107620 (n + 1)).toNat

end

end A087288.P9156139228210563844

namespace A087288

/-- `A293447(A107620(n+1))` -/
def P9156139228210563844.Spec : Prop :=
  ∀ n, P9156139228210563844.a n = A087288 n

end A087288

/-!
# A087289: a(n) = 2^(2*n+1) + 1.

The programs for A087289, the canonical program `A087289.P15198016429533209097` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087289 has offset 0).

The definition of A087289 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(2*n+1)+1` (program `A087289.P15198016429533209097`, by `A087289.P15198016429533209097.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A087289.P15198016429533209097

`2^(2*n+1)+1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087289

/-- `2^(2*n+1)+1` -/
def P15198016429533209097.Spec : Prop :=
  ∀ n, (P15198016429533209097.a n : ℤ) = A087289 n

theorem P15198016429533209097.correct : P15198016429533209097.Spec := by
  intro n
  simp only [A087289]

end A087289

/-! ## A087289.P4706356056848420888

`3*A007583(n)`
-/

namespace A087289.P4706356056848420888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007583 n

end

end A087289.P4706356056848420888

namespace A087289

/-- `3*A007583(n)` -/
def P4706356056848420888.Spec : Prop :=
  ∀ n, P4706356056848420888.a n = A087289 n

end A087289

/-! ## A087289.P13029369973405474943

`or(1, 2*4^n)`
-/

namespace A087289.P13029369973405474943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * 4 ^ n)

end

end A087289.P13029369973405474943

namespace A087289

/-- `or(1, 2*4^n)` -/
def P13029369973405474943.Spec : Prop :=
  ∀ n, (P13029369973405474943.a n : ℤ) = A087289 n

end A087289

/-! ## A087289.P10211702057343865392

`xor(1, 2*4^n)`
-/

namespace A087289.P10211702057343865392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * 4 ^ n)

end

end A087289.P10211702057343865392

namespace A087289

/-- `xor(1, 2*4^n)` -/
def P10211702057343865392.Spec : Prop :=
  ∀ n, (P10211702057343865392.a n : ℤ) = A087289 n

end A087289

/-! ## A087289.P18234917098069753348

`ogf((3-6x)/(1-5x+4x^2))`
-/

namespace A087289.P18234917098069753348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -6] [1, -5, 4] n

end

end A087289.P18234917098069753348

namespace A087289

/-- `ogf((3-6x)/(1-5x+4x^2))` -/
def P18234917098069753348.Spec : Prop :=
  ∀ n, P18234917098069753348.a n = A087289 n

end A087289

/-! ## A087289.P13066890938320241741

`record[2^xor(1, n)+1]`
-/

namespace A087289.P13066890938320241741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.xor 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087289.P13066890938320241741

namespace A087289

/-- `record[2^xor(1, n)+1]` -/
def P13066890938320241741.Spec : Prop :=
  ∀ n, (P13066890938320241741.a n : ℤ) = A087289 n

end A087289

/-! ## A087289.P16547339574651203998

`record[or(1, 2^xor(1, n))]`
-/

namespace A087289.P16547339574651203998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 ^ Nat.xor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087289.P16547339574651203998

namespace A087289

/-- `record[or(1, 2^xor(1, n))]` -/
def P16547339574651203998.Spec : Prop :=
  ∀ n, (P16547339574651203998.a n : ℤ) = A087289 n

end A087289

/-! ## A087289.P3286065016817138475

`record[xor(1, 2^xor(1, n))]`
-/

namespace A087289.P3286065016817138475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 ^ Nat.xor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087289.P3286065016817138475

namespace A087289

/-- `record[xor(1, 2^xor(1, n))]` -/
def P3286065016817138475.Spec : Prop :=
  ∀ n, (P3286065016817138475.a n : ℤ) = A087289 n

end A087289

/-! ## A087289.P4956058500297082823

`record[∑[3*(-2)^n]]`
-/

namespace A087289.P4956058500297082823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (-2) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087289.P4956058500297082823

namespace A087289

/-- `record[∑[3*(-2)^n]]` -/
def P4956058500297082823.Spec : Prop :=
  ∀ n, P4956058500297082823.a n = A087289 n

end A087289

/-! ## A087289.P11092200851624228424

`or(2, 4^(n+1))/2`
-/

namespace A087289.P11092200851624228424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (4 ^ (n + 1)) : ℚ) / 2

end

end A087289.P11092200851624228424

namespace A087289

/-- `or(2, 4^(n+1))/2` -/
def P11092200851624228424.Spec : Prop :=
  ∀ n, P11092200851624228424.a n = (A087289 n : ℚ)

end A087289

/-! ## A087289.P13263221447896060868

`xor(2, 4^(n+1))/2`
-/

namespace A087289.P13263221447896060868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (4 ^ (n + 1)) : ℚ) / 2

end

end A087289.P13263221447896060868

namespace A087289

/-- `xor(2, 4^(n+1))/2` -/
def P13263221447896060868.Spec : Prop :=
  ∀ n, P13263221447896060868.a n = (A087289 n : ℚ)

end A087289

/-! ## A087289.P5538537772200714082

`∑[a(n-1)/(1/2)²]` with `a(0)=3, a(1)=6`
-/

namespace A087289.P5538537772200714082
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 6] fun n f1 =>
  f1 (n - 1) / ((1 : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087289.P5538537772200714082

namespace A087289

/-- `∑[a(n-1)/(1/2)²]` -/
def P5538537772200714082.Spec : Prop :=
  ∀ n, P5538537772200714082.a n = (A087289 n : ℚ)

end A087289

/-! ## A087289.P2214532954379524165

`floor(a(n-1)+a(n-1)+a(n-1)+a(n-1)-3)` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A087289.P2214532954379524165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) - 3)))

end

end A087289.P2214532954379524165

namespace A087289

/-- `floor(a(n-1)+a(n-1)+a(n-1)+a(n-1)-3)` -/
def P2214532954379524165.Spec : Prop :=
  ∀ n, P2214532954379524165.a n = A087289 n

theorem P2214532954379524165.correct : P2214532954379524165.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A087289, Nat.add_sub_cancel, A087289.P2214532954379524165.a, A087289.P15198016429533209097.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A087289, Nat.add_sub_cancel, A087289.P2214532954379524165.a, A087289.P15198016429533209097.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A087289

/-! ## A087289.P4132196926123386092

`floor(a(n-1)-(3-a(n-1)-a(n-1)-a(n-1)))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A087289.P4132196926123386092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) - (3 - a (n - 1) - a (n - 1) - a (n - 1))

end

end A087289.P4132196926123386092

namespace A087289

/-- `floor(a(n-1)-(3-a(n-1)-a(n-1)-a(n-1)))` -/
def P4132196926123386092.Spec : Prop :=
  ∀ n, P4132196926123386092.a n = A087289 n

theorem P4132196926123386092.correct : P4132196926123386092.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A087289, Nat.add_sub_cancel, A087289.P4132196926123386092.a, A087289.P15198016429533209097.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A087289, Nat.add_sub_cancel, A087289.P4132196926123386092.a, A087289.P15198016429533209097.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A087289

/-! ## A087289.P14600868748802302136

`A084508(n+2)`
-/

namespace A087289.P14600868748802302136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084508 (n + 2)

end

end A087289.P14600868748802302136

namespace A087289

/-- `A084508(n+2)` -/
def P14600868748802302136.Spec : Prop :=
  ∀ n, P14600868748802302136.a n = A087289 n

end A087289

/-! ## A087289.P12177500105031728893

`A048578(2*n)`
-/

namespace A087289.P12177500105031728893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 (2 * n)

end

end A087289.P12177500105031728893

namespace A087289

/-- `A048578(2*n)` -/
def P12177500105031728893.Spec : Prop :=
  ∀ n, P12177500105031728893.a n = A087289 n

end A087289

/-! ## A087289.P10568573095856444914

`A140590(2*n)`
-/

namespace A087289.P10568573095856444914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140590 (2 * n)

end

end A087289.P10568573095856444914

namespace A087289

/-- `A140590(2*n)` -/
def P10568573095856444914.Spec : Prop :=
  ∀ n, P10568573095856444914.a n = A087289 n

end A087289

/-!
# A087290: Number of pairs of polynomials (f,g) in GF(3)[x] satisfying deg(f) <= n, deg(g) <= n and gcd(f,g) = 1.

The programs for A087290, the canonical program `A087290.P14224658925177354162` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087290 has offset 0).

The definition of A087290 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087290.P14224658925177354162

`2*3^(2*n+1)+2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087290

/-- `2*3^(2*n+1)+2` -/
def P14224658925177354162.Spec : Prop :=
  ∀ n, (P14224658925177354162.a n : ℤ) = A087290 n

theorem P14224658925177354162.correct : P14224658925177354162.Spec := by
  intro n
  simp only [A087290]

end A087290

/-! ## A087290.P4299945868162132853

`2*A199561(n)`
-/

namespace A087290.P4299945868162132853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199561 n

end

end A087290.P4299945868162132853

namespace A087290

/-- `2*A199561(n)` -/
def P4299945868162132853.Spec : Prop :=
  ∀ n, P4299945868162132853.a n = A087290 n

end A087290

/-! ## A087290.P7995828244623566256

`4*A199560(n)`
-/

namespace A087290.P7995828244623566256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A199560 n

end

end A087290.P7995828244623566256

namespace A087290

/-- `4*A199560(n)` -/
def P7995828244623566256.Spec : Prop :=
  ∀ n, P7995828244623566256.a n = A087290 n

end A087290

/-! ## A087290.P11868127124955023741

`8*A066443(n)`
-/

namespace A087290.P11868127124955023741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A066443 n

end

end A087290.P11868127124955023741

namespace A087290

/-- `8*A066443(n)` -/
def P11868127124955023741.Spec : Prop :=
  ∀ n, P11868127124955023741.a n = A087290 n

end A087290

/-! ## A087290.P5852517480441929644

`ogf((8-24x)/(1-10x+9x^2))`
-/

namespace A087290.P5852517480441929644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -24] [1, -10, 9] n

end

end A087290.P5852517480441929644

namespace A087290

/-- `ogf((8-24x)/(1-10x+9x^2))` -/
def P5852517480441929644.Spec : Prop :=
  ∀ n, P5852517480441929644.a n = A087290 n

end A087290

/-! ## A087290.P13859521648724188676

`Δ[record[∑[(-3)^n+1]]]`
-/

namespace A087290.P13859521648724188676
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-3) ^ n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087290.P13859521648724188676

namespace A087290

/-- `Δ[record[∑[(-3)^n+1]]]` -/
def P13859521648724188676.Spec : Prop :=
  ∀ n, P13859521648724188676.a n = A087290 n

end A087290

/-! ## A087290.P6537281588859239012

`record[8-3*a(n-1)]` with `a(0)=8`
-/

namespace A087290.P6537281588859239012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  8 - 3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087290.P6537281588859239012

namespace A087290

/-- `record[8-3*a(n-1)]` -/
def P6537281588859239012.Spec : Prop :=
  ∀ n, P6537281588859239012.a n = A087290 n

end A087290

/-! ## A087290.P4432638232742664483

`8*∑[9*a(n-1)]` with `a(0)=1, a(1)=6`
-/

namespace A087290.P4432638232742664483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087290.P4432638232742664483

namespace A087290

/-- `8*∑[9*a(n-1)]` -/
def P4432638232742664483.Spec : Prop :=
  ∀ n, (P4432638232742664483.a n : ℤ) = A087290 n

end A087290

/-! ## A087290.P14199413740235762057

`lcm(8, xor(3, floor(3/2*9^n)))`
-/

namespace A087290.P14199413740235762057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 (Int.xor 3 ⌊(3 : ℚ) / 2 * (9 ^ n : ℚ)⌋)

end

end A087290.P14199413740235762057

namespace A087290

/-- `lcm(8, xor(3, floor(3/2*9^n)))` -/
def P14199413740235762057.Spec : Prop :=
  ∀ n, (P14199413740235762057.a n : ℤ) = A087290 n

end A087290

/-! ## A087290.P13149104726712202720

`floor(a(n-1)+8*(a(n-1)-2))` with `a(0)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A087290.P13149104726712202720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + 8 * (a (n - 1) - 2)

end

end A087290.P13149104726712202720

namespace A087290

/-- `floor(a(n-1)+8*(a(n-1)-2))` -/
def P13149104726712202720.Spec : Prop :=
  ∀ n, P13149104726712202720.a n = A087290 n

theorem P13149104726712202720.correct : P13149104726712202720.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A087290, Nat.add_sub_cancel, A087290.P13149104726712202720.a, A087290.P14224658925177354162.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A087290, Nat.add_sub_cancel, A087290.P13149104726712202720.a, A087290.P14224658925177354162.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A087290

/-! ## A087290.P17207161826443719487

`floor(a(n-1)-8*(2-a(n-1)))` with `a(0)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A087290.P17207161826443719487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) - 8 * (2 - a (n - 1))

end

end A087290.P17207161826443719487

namespace A087290

/-- `floor(a(n-1)-8*(2-a(n-1)))` -/
def P17207161826443719487.Spec : Prop :=
  ∀ n, P17207161826443719487.a n = A087290 n

theorem P17207161826443719487.correct : P17207161826443719487.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A087290, Nat.add_sub_cancel, A087290.P17207161826443719487.a, A087290.P14224658925177354162.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A087290, Nat.add_sub_cancel, A087290.P17207161826443719487.a, A087290.P14224658925177354162.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A087290

/-! ## A087290.P13559687856814769307

`A115099(Δ[n²])`
-/

namespace A087290.P13559687856814769307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115099 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A087290.P13559687856814769307

namespace A087290

/-- `A115099(Δ[n²])` -/
def P13559687856814769307.Spec : Prop :=
  ∀ n, P13559687856814769307.a n = A087290 n

end A087290

/-! ## A087290.P13668269972664922894

`A198635(Δ[n²])`
-/

namespace A087290.P13668269972664922894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198635 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A087290.P13668269972664922894

namespace A087290

/-- `A198635(Δ[n²])` -/
def P13668269972664922894.Spec : Prop :=
  ∀ n, P13668269972664922894.a n = A087290 n

end A087290

/-! ## A087290.P11461243154725975167

`∑[8*A092810(n)]`
-/

namespace A087290.P11461243154725975167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A092810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087290.P11461243154725975167

namespace A087290

/-- `∑[8*A092810(n)]` -/
def P11461243154725975167.Spec : Prop :=
  ∀ n, P11461243154725975167.a n = A087290 n

end A087290

/-! ## A087290.P9495527616770037811

`∑[A188825(Δ[n²])]`
-/

namespace A087290.P9495527616770037811
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188825 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087290.P9495527616770037811

namespace A087290

/-- `∑[A188825(Δ[n²])]` -/
def P9495527616770037811.Spec : Prop :=
  ∀ n, P9495527616770037811.a n = A087290 n

end A087290

/-! ## A087290.P16971583285153040707

`2*(A013708(n)+1)`
-/

namespace A087290.P16971583285153040707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A013708 n + 1)

end

end A087290.P16971583285153040707

namespace A087290

/-- `2*(A013708(n)+1)` -/
def P16971583285153040707.Spec : Prop :=
  ∀ n, P16971583285153040707.a n = A087290 n

end A087290

/-! ## A087290.P6289528481373185591

`2*(A198960(n)+2)`
-/

namespace A087290.P6289528481373185591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A198960 n + 2)

end

end A087290.P6289528481373185591

namespace A087290

/-- `2*(A198960(n)+2)` -/
def P6289528481373185591.Spec : Prop :=
  ∀ n, P6289528481373185591.a n = A087290 n

end A087290

/-! ## A087290.P635865132627900011

`4*(A096053(n)+1)`
-/

namespace A087290.P635865132627900011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A096053 n + 1)

end

end A087290.P635865132627900011

namespace A087290

/-- `4*(A096053(n)+1)` -/
def P635865132627900011.Spec : Prop :=
  ∀ n, P635865132627900011.a n = A087290 n

end A087290

/-! ## A087290.P16726823573488176601

`2*A034472(Δ[n²])`
-/

namespace A087290.P16726823573488176601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034472 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A087290.P16726823573488176601

namespace A087290

/-- `2*A034472(Δ[n²])` -/
def P16726823573488176601.Spec : Prop :=
  ∀ n, P16726823573488176601.a n = A087290 n

end A087290

/-! ## A087290.P5803464247951111168

`2*A103457(Δ[n²])`
-/

namespace A087290.P5803464247951111168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103457 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A087290.P5803464247951111168

namespace A087290

/-- `2*A103457(Δ[n²])` -/
def P5803464247951111168.Spec : Prop :=
  ∀ n, P5803464247951111168.a n = A087290 n

end A087290

/-!
# A087291: Number of pairs of polynomials (f,g) in GF(2)[x] satisfying 1 <= deg(f) <= n, 1 <= deg(g) <= n and gcd(f,g) = 1.

The programs for A087291, the canonical program `A087291.P16425741456542604130` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087291 has offset 0).

The definition of A087291 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087291.P16425741456542604130

`2*(2^n-1)²`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087291

/-- `2*(2^n-1)²` -/
def P16425741456542604130.Spec : Prop :=
  ∀ n, P16425741456542604130.a n = A087291 n

theorem P16425741456542604130.correct : P16425741456542604130.Spec := by
  intro n
  simp only [A087291]

end A087291

/-! ## A087291.P14741009239781366719

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=0, a(1)=2, a(2)=18`
-/

namespace A087291.P14741009239781366719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 18] fun n a =>
  7 * a (n - 1) - 14 * a (n - 2) + 8 * a (n - 3)

end

end A087291.P14741009239781366719

namespace A087291

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P14741009239781366719.Spec : Prop :=
  ∀ n, P14741009239781366719.a n = A087291 n

theorem P14741009239781366719.correct : P14741009239781366719.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A087291, Nat.add_sub_cancel, A087291.P14741009239781366719.a, A087291.P16425741456542604130.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A087291, Nat.add_sub_cancel, A087291.P14741009239781366719.a, A087291.P16425741456542604130.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A087291

/-! ## A087291.P720170570164393362

`lcm(2, (1-2^n)²)`
-/

namespace A087291.P720170570164393362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((1 - (2 ^ n : ℤ)) ^ 2)

end

end A087291.P720170570164393362

namespace A087291

/-- `lcm(2, (1-2^n)²)` -/
def P720170570164393362.Spec : Prop :=
  ∀ n, (P720170570164393362.a n : ℤ) = A087291 n

end A087291

/-! ## A087291.P14679707671532276176

`xor(1, ∑[2^n])²/2`
-/

namespace A087291.P14679707671532276176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℚ) / 2

end

end A087291.P14679707671532276176

namespace A087291

/-- `xor(1, ∑[2^n])²/2` -/
def P14679707671532276176.Spec : Prop :=
  ∀ n, P14679707671532276176.a n = (A087291 n : ℚ)

end A087291

/-! ## A087291.P11924355794294584897

`∑[ogf((2x+4x^2)/(1-6x+8x^2))]`
-/

namespace A087291.P11924355794294584897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 4] [1, -6, 8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087291.P11924355794294584897

namespace A087291

/-- `∑[ogf((2x+4x^2)/(1-6x+8x^2))]` -/
def P11924355794294584897.Spec : Prop :=
  ∀ n, P11924355794294584897.a n = A087291 n

end A087291

/-! ## A087291.P7237203392342307009

`xor(1, ∑[2^n])^2/2`
-/

namespace A087291.P7237203392342307009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℚ) / 2

end

end A087291.P7237203392342307009

namespace A087291

/-- `xor(1, ∑[2^n])^2/2` -/
def P7237203392342307009.Spec : Prop :=
  ∀ n, P7237203392342307009.a n = (A087291 n : ℚ)

end A087291

/-! ## A087291.P4477523334271979650

`∑[and(-2, 2^n)]²/2`
-/

namespace A087291.P4477523334271979650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (2 ^ n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 2

end

end A087291.P4477523334271979650

namespace A087291

/-- `∑[and(-2, 2^n)]²/2` -/
def P4477523334271979650.Spec : Prop :=
  ∀ n, P4477523334271979650.a n = (A087291 n : ℚ)

end A087291

/-! ## A087291.P11344285771572983593

`4^n+2*(a(n-1)-1)` with `a(0)=0`
-/

namespace A087291.P11344285771572983593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (4 ^ n : ℤ) + 2 * (a (n - 1) - 1)

end

end A087291.P11344285771572983593

namespace A087291

/-- `4^n+2*(a(n-1)-1)` -/
def P11344285771572983593.Spec : Prop :=
  ∀ n, P11344285771572983593.a n = A087291 n

end A087291

/-! ## A087291.P792790776923556085

`4^n-2*(1-a(n-1))` with `a(0)=0`
-/

namespace A087291.P792790776923556085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (4 ^ n : ℤ) - 2 * (1 - a (n - 1))

end

end A087291.P792790776923556085

namespace A087291

/-- `4^n-2*(1-a(n-1))` -/
def P792790776923556085.Spec : Prop :=
  ∀ n, P792790776923556085.a n = A087291 n

end A087291

/-! ## A087291.P6891095468583346477

`floor(2*∑[2*a(n-1)]²)` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A087291.P6891095468583346477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A087291.P6891095468583346477

namespace A087291

/-- `floor(2*∑[2*a(n-1)]²)` -/
def P6891095468583346477.Spec : Prop :=
  ∀ n, (P6891095468583346477.a n : ℤ) = A087291 n

end A087291

/-! ## A087291.P8329819986956810957

`4^n+a(n-1)+a(n-1)-2` with `a(0)=0`
-/

namespace A087291.P8329819986956810957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (4 ^ n : ℤ) + (a (n - 1) + (a (n - 1) - 2))

end

end A087291.P8329819986956810957

namespace A087291

/-- `4^n+a(n-1)+a(n-1)-2` -/
def P8329819986956810957.Spec : Prop :=
  ∀ n, P8329819986956810957.a n = A087291 n

end A087291

/-! ## A087291.P14018667099077825709

`4^n-(2-a(n-1)-a(n-1))` with `a(0)=0`
-/

namespace A087291.P14018667099077825709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (4 ^ n : ℤ) - (2 - a (n - 1) - a (n - 1))

end

end A087291.P14018667099077825709

namespace A087291

/-- `4^n-(2-a(n-1)-a(n-1))` -/
def P14018667099077825709.Spec : Prop :=
  ∀ n, P14018667099077825709.a n = A087291 n

end A087291

/-! ## A087291.P10872822642568664641

`A027556(Δ[n²])`
-/

namespace A087291.P10872822642568664641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027556 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A087291.P10872822642568664641

namespace A087291

/-- `A027556(Δ[n²])` -/
def P10872822642568664641.Spec : Prop :=
  ∀ n, P10872822642568664641.a n = A087291 n

end A087291

/-! ## A087291.P17779785789363679906

`(A273539(n)-1)/2`
-/

namespace A087291.P17779785789363679906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273539 n - 1 : ℚ) / 2

end

end A087291.P17779785789363679906

namespace A087291

/-- `(A273539(n)-1)/2` -/
def P17779785789363679906.Spec : Prop :=
  ∀ n, P17779785789363679906.a n = (A087291 n : ℚ)

end A087291

/-! ## A087291.P16568342071657318517

`floor(A095121(n)²/2)`
-/

namespace A087291.P16568342071657318517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095121 n ^ 2 : ℚ) / 2⌋

end

end A087291.P16568342071657318517

namespace A087291

/-- `floor(A095121(n)²/2)` -/
def P16568342071657318517.Spec : Prop :=
  ∀ n, P16568342071657318517.a n = A087291 n

end A087291

/-! ## A087291.P7205465196251443279

`∑[A155559(n)]²/2`
-/

namespace A087291.P7205465196251443279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 2

end

end A087291.P7205465196251443279

namespace A087291

/-- `∑[A155559(n)]²/2` -/
def P7205465196251443279.Spec : Prop :=
  ∀ n, P7205465196251443279.a n = (A087291 n : ℚ)

end A087291

/-! ## A087291.P13747776271635845441

`Δ[A183155(n)]²/2`
-/

namespace A087291.P13747776271635845441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183155 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2 : ℚ) / 2

end

end A087291.P13747776271635845441

namespace A087291

/-- `Δ[A183155(n)]²/2` -/
def P13747776271635845441.Spec : Prop :=
  ∀ n, P13747776271635845441.a n = (A087291 n : ℚ)

end A087291

/-! ## A087291.P306533675438915028

`record[2*A303763(n)²]`
-/

namespace A087291.P306533675438915028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303763 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087291.P306533675438915028

namespace A087291

/-- `record[2*A303763(n)²]` -/
def P306533675438915028.Spec : Prop :=
  ∀ n, P306533675438915028.a n = A087291 n

end A087291

/-! ## A087291.P5933726446243619158

`A000918(n+1)²/2`
-/

namespace A087291.P5933726446243619158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000918 (n + 1) ^ 2 : ℚ) / 2

end

end A087291.P5933726446243619158

namespace A087291

/-- `A000918(n+1)²/2` -/
def P5933726446243619158.Spec : Prop :=
  ∀ n, P5933726446243619158.a n = (A087291 n : ℚ)

end A087291

/-! ## A087291.P14600395179553189718

`A122958(n+2)²/2`
-/

namespace A087291.P14600395179553189718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122958 (n + 2) ^ 2 : ℚ) / 2

end

end A087291.P14600395179553189718

namespace A087291

/-- `A122958(n+2)²/2` -/
def P14600395179553189718.Spec : Prop :=
  ∀ n, P14600395179553189718.a n = (A087291 n : ℚ)

end A087291

/-!
# A087292: Number of pairs of polynomials (f,g) in GF(3)[x] satisfying 1 <= deg(f) < =n, 1 <= deg(g) <= n and gcd(f,g) = 1.

The programs for A087292, the canonical program `A087292.P12490242468432014754` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087292 has offset 0).

The definition of A087292 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087292.P12490242468432014754

`6*(3^n-1)²`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087292

/-- `6*(3^n-1)²` -/
def P12490242468432014754.Spec : Prop :=
  ∀ n, P12490242468432014754.a n = A087292 n

theorem P12490242468432014754.correct : P12490242468432014754.Spec := by
  intro n
  simp only [A087292]

end A087292

/-! ## A087292.P15259352319089455804

`13*a(n-1)-39*a(n-2)+27*a(n-3)` with `a(0)=0, a(1)=24, a(2)=384`
-/

namespace A087292.P15259352319089455804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 24, 384] fun n a =>
  13 * a (n - 1) - 39 * a (n - 2) + 27 * a (n - 3)

end

end A087292.P15259352319089455804

namespace A087292

/-- `13*a(n-1)-39*a(n-2)+27*a(n-3)` -/
def P15259352319089455804.Spec : Prop :=
  ∀ n, P15259352319089455804.a n = A087292 n

theorem P15259352319089455804.correct : P15259352319089455804.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A087292, Nat.add_sub_cancel, A087292.P15259352319089455804.a, A087292.P12490242468432014754.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A087292, Nat.add_sub_cancel, A087292.P15259352319089455804.a, A087292.P12490242468432014754.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A087292

/-! ## A087292.P12122910534842775188

`xor(1, 3^n)²+5*xor(1, 3^n)²`
-/

namespace A087292.P12122910534842775188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 ^ n) ^ 2 + 5 * Nat.xor 1 (3 ^ n) ^ 2

end

end A087292.P12122910534842775188

namespace A087292

/-- `xor(1, 3^n)²+5*xor(1, 3^n)²` -/
def P12122910534842775188.Spec : Prop :=
  ∀ n, (P12122910534842775188.a n : ℤ) = A087292 n

end A087292

/-! ## A087292.P15551387449911989215

`12*A024023(n)²/2`
-/

namespace A087292.P15551387449911989215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 * A024023 n ^ 2 : ℚ) / 2

end

end A087292.P15551387449911989215

namespace A087292

/-- `12*A024023(n)²/2` -/
def P15551387449911989215.Spec : Prop :=
  ∀ n, P15551387449911989215.a n = (A087292 n : ℚ)

end A087292

/-! ## A087292.P10353051797351058879

`A165746(n)²-A165746(2*n)`
-/

namespace A087292.P10353051797351058879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165746 n ^ 2 - A165746 (2 * n)

end

end A087292.P10353051797351058879

namespace A087292

/-- `A165746(n)²-A165746(2*n)` -/
def P10353051797351058879.Spec : Prop :=
  ∀ n, P10353051797351058879.a n = A087292 n

end A087292

/-! ## A087292.P9893396397484215681

`A168589(n+1)²-record[A168589(n)]`
-/

namespace A087292.P9893396397484215681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168589 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168589 (n + 1) ^ 2 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087292.P9893396397484215681

namespace A087292

/-- `A168589(n+1)²-record[A168589(n)]` -/
def P9893396397484215681.Spec : Prop :=
  ∀ n, P9893396397484215681.a n = A087292 n

end A087292

/-! ## A087292.P8438069947859888011

`A058481(n+1)²-A058481(2*n+1)`
-/

namespace A087292.P8438069947859888011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058481 (n + 1) ^ 2 - A058481 (2 * n + 1)

end

end A087292.P8438069947859888011

namespace A087292

/-- `A058481(n+1)²-A058481(2*n+1)` -/
def P8438069947859888011.Spec : Prop :=
  ∀ n, P8438069947859888011.a n = A087292 n

end A087292

/-! ## A087292.P14615031880684307955

`A168589(n+1)²-A168589(2*n+1)`
-/

namespace A087292.P14615031880684307955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168589 (n + 1) ^ 2 - A168589 (2 * n + 1)

end

end A087292.P14615031880684307955

namespace A087292

/-- `A168589(n+1)²-A168589(2*n+1)` -/
def P14615031880684307955.Spec : Prop :=
  ∀ n, P14615031880684307955.a n = A087292 n

end A087292

/-! ## A087292.P6942084534625346411

`A058481(n+1)*A100774(n)-A100774(n)`
-/

namespace A087292.P6942084534625346411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058481 (n + 1) * A100774 n - A100774 n

end

end A087292.P6942084534625346411

namespace A087292

/-- `A058481(n+1)*A100774(n)-A100774(n)` -/
def P6942084534625346411.Spec : Prop :=
  ∀ n, P6942084534625346411.a n = A087292 n

end A087292

/-! ## A087292.P1193061341852916878

`A003462(n+1)*A302507(n)-A302507(n)`
-/

namespace A087292.P1193061341852916878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (n + 1) * A302507 n - A302507 n

end

end A087292.P1193061341852916878

namespace A087292

/-- `A003462(n+1)*A302507(n)-A302507(n)` -/
def P1193061341852916878.Spec : Prop :=
  ∀ n, P1193061341852916878.a n = A087292 n

end A087292

/-!
# A087294: Primes resulting from A087293.

The programs for A087294, there is no canonical definition to state claims against.
-/

/-! ## A087294.P10582158259866660037

`record[A077287(n+1)]`
-/

namespace A087294.P10582158259866660037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087294.P10582158259866660037

/-! ## A087294.P15857820654291636402

`record[A125256(A006094(n+2))]`
-/

namespace A087294.P15857820654291636402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125256 (A006094 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087294.P15857820654291636402

/-!
# A087295: Successive remainders when computing the Euclidean algorithm for (n,m) where m is any positive integer having no common factor with n, gives a list ending with a sublist of Fibonacci sequence. Find m such that this sublist has the greatest length and define a(n) as this length.

The programs for A087295, there is no canonical definition to state claims against.
-/

/-! ## A087295.P16798096568023390484

`A001222(A053781(n+2)-A049627(n))`
-/

namespace A087295.P16798096568023390484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A053781 (n + 2) - A049627 n).toNat

end

end A087295.P16798096568023390484

/-! ## A087295.P1794532461662173712

`A392370(A362488(n+1))`
-/

namespace A087295.P1794532461662173712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392370 (A362488 (n + 1)).toNat

end

end A087295.P1794532461662173712

/-! ## A087295.P5220065086722442028

`val(A008458(A324979(n+1)), 2)`
-/

namespace A087295.P5220065086722442028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008458 (A324979 (n + 1)).toNat).toNat 2

end

end A087295.P5220065086722442028

/-! ## A087295.P1976201301056858036

`A219157(A207088(∑[∏{e}[n+1, #+1]]))`
-/

namespace A087295.P1976201301056858036
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219157 (A207088 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A087295.P1976201301056858036

/-! ## A087295.P7482720415894502370

`A005361(A187633(n+1))%A001006(n)`
-/

namespace A087295.P7482720415894502370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005361 (A187633 (n + 1)).toNat) (A001006 n)

end

end A087295.P7482720415894502370

/-!
# A087297: Add the next prime and multiply by the next prime.

The programs for A087297, there is no canonical definition to state claims against.
-/

/-! ## A087297.P11188735886644744700

`(a(n-1)+A000040(n))*A000040(n)` with `a(0)=1`
-/

namespace A087297.P11188735886644744700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + A000040 n) * A000040 n

end

end A087297.P11188735886644744700

/-! ## A087297.P10457548322479973066

`(A216883(n)+a(n-1))*A216883(n)` with `a(0)=1`
-/

namespace A087297.P10457548322479973066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A216883 n + a (n - 1)) * A216883 n

end

end A087297.P10457548322479973066

/-! ## A087297.P8814446223551597594

`(A008578(n+1)+a(n-1))*A008578(n+1)` with `a(0)=1`
-/

namespace A087297.P8814446223551597594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A008578 (n + 1) + a (n - 1)) * A008578 (n + 1)

end

end A087297.P8814446223551597594

/-! ## A087297.P71611107469809344

`(A015919(n+1)+a(n-1))*A015919(n+1)` with `a(0)=1`
-/

namespace A087297.P71611107469809344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A015919 (n + 1) + a (n - 1)) * A015919 (n + 1)

end

end A087297.P71611107469809344

/-! ## A087297.P16772220382210357337

`(A000040(n)+a(A023443(n)))*A182986(n+1)` with `a(0)=1`
-/

namespace A087297.P16772220382210357337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A000040 n + a (A023443 n).toNat) * A182986 (n + 1)

end

end A087297.P16772220382210357337

/-!
# A087298: Exponent of 2 in the prime factorization of (3n)!.

The programs for A087298, the canonical program `A087298.P12395846992639470447` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087298 has offset 1).

The definition of A087298 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087298.P6510046344218744925

`3*(n+1)-A036555(n+1)`
-/

namespace A087298.P6510046344218744925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A036555 (n + 1)

end

end A087298.P6510046344218744925

namespace A087298

/-- `3*(n+1)-A036555(n+1)` -/
def P6510046344218744925.Spec : Prop :=
  ∀ n, P6510046344218744925.a n = A087298 (n + 1)

end A087298

/-! ## A087298.P12395846992639470447

`A011371(3*(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A087298

/-- `A011371(3*(n+1))` -/
def P12395846992639470447.Spec : Prop :=
  ∀ n, P12395846992639470447.a n = A087298 (n + 1)

theorem P12395846992639470447.correct : P12395846992639470447.Spec := by
  intro n
  simp only [A087298, Nat.add_sub_cancel]

end A087298

/-! ## A087298.P556655165802321230

`∑[val(C(6*(n+1), 5), 2)]`
-/

namespace A087298.P556655165802321230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.choose (6 * (n + 1)) 5) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087298.P556655165802321230

namespace A087298

/-- `∑[val(C(6*(n+1), 5), 2)]` -/
def P556655165802321230.Spec : Prop :=
  ∀ n, (P556655165802321230.a n : ℤ) = A087298 (n + 1)

end A087298

/-! ## A087298.P14140285149735079047

`∑[val(2*(n+1)*comp[3*n], 2)]`
-/

namespace A087298.P14140285149735079047
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * (n + 1) * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087298.P14140285149735079047

namespace A087298

/-- `∑[val(2*(n+1)*comp[3*n], 2)]` -/
def P14140285149735079047.Spec : Prop :=
  ∀ n, (P14140285149735079047.a n : ℤ) = A087298 (n + 1)

end A087298

/-! ## A087298.P18121187028852777741

`A005187(∑[n%2+1])`
-/

namespace A087298.P18121187028852777741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087298.P18121187028852777741

namespace A087298

/-- `A005187(∑[n%2+1])` -/
def P18121187028852777741.Spec : Prop :=
  ∀ n, P18121187028852777741.a n = A087298 (n + 1)

end A087298

/-! ## A087298.P15603860459530805822

`A005187(∑[gcd(2, n+1)])`
-/

namespace A087298.P15603860459530805822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087298.P15603860459530805822

namespace A087298

/-- `A005187(∑[gcd(2, n+1)])` -/
def P15603860459530805822.Spec : Prop :=
  ∀ n, P15603860459530805822.a n = A087298 (n + 1)

end A087298

/-! ## A087298.P6003019516466928195

`A005187(∑[and(1, n)+1])`
-/

namespace A087298.P6003019516466928195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087298.P6003019516466928195

namespace A087298

/-- `A005187(∑[and(1, n)+1])` -/
def P6003019516466928195.Spec : Prop :=
  ∀ n, P6003019516466928195.a n = A087298 (n + 1)

end A087298

/-! ## A087298.P12460791198750256889

`A005187(A007494(n)+1)`
-/

namespace A087298.P12460791198750256889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A007494 n + 1).toNat

end

end A087298.P12460791198750256889

namespace A087298

/-- `A005187(A007494(n)+1)` -/
def P12460791198750256889.Spec : Prop :=
  ∀ n, P12460791198750256889.a n = A087298 (n + 1)

end A087298

/-! ## A087298.P9701887252017749695

`A005187(A032766(n+1))`
-/

namespace A087298.P9701887252017749695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A032766 (n + 1)).toNat

end

end A087298.P9701887252017749695

namespace A087298

/-- `A005187(A032766(n+1))` -/
def P9701887252017749695.Spec : Prop :=
  ∀ n, P9701887252017749695.a n = A087298 (n + 1)

end A087298

/-! ## A087298.P10144683573196291824

`A005187(A008619(n+1)+n)`
-/

namespace A087298.P10144683573196291824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A008619 (n + 1) + (n : ℤ)).toNat

end

end A087298.P10144683573196291824

namespace A087298

/-- `A005187(A008619(n+1)+n)` -/
def P10144683573196291824.Spec : Prop :=
  ∀ n, P10144683573196291824.a n = A087298 (n + 1)

end A087298

/-! ## A087298.P15777528283163269727

`∑[3-Δ[A036555(n)]]`
-/

namespace A087298.P15777528283163269727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036555 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087298.P15777528283163269727

namespace A087298

/-- `∑[3-Δ[A036555(n)]]` -/
def P15777528283163269727.Spec : Prop :=
  ∀ n, P15777528283163269727.a n = A087298 (n + 1)

end A087298

/-! ## A087298.P15487307915055401137

`A005187(A004526(n+1)+n+1)`
-/

namespace A087298.P15487307915055401137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A004526 (n + 1) + (n + 1 : ℤ)).toNat

end

end A087298.P15487307915055401137

namespace A087298

/-- `A005187(A004526(n+1)+n+1)` -/
def P15487307915055401137.Spec : Prop :=
  ∀ n, P15487307915055401137.a n = A087298 (n + 1)

end A087298

/-! ## A087298.P16347400292283192987

`A005187(A008486(n+1))-A008486(n+1)`
-/

namespace A087298.P16347400292283192987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A008486 (n + 1)).toNat - A008486 (n + 1)

end

end A087298.P16347400292283192987

namespace A087298

/-- `A005187(A008486(n+1))-A008486(n+1)` -/
def P16347400292283192987.Spec : Prop :=
  ∀ n, P16347400292283192987.a n = A087298 (n + 1)

end A087298

/-! ## A087298.P13570184089266684152

`A005187(2*n+1-A002265(2*n))`
-/

namespace A087298.P13570184089266684152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 ((2 * n + 1 : ℤ) - A002265 (2 * n)).toNat

end

end A087298.P13570184089266684152

namespace A087298

/-- `A005187(2*n+1-A002265(2*n))` -/
def P13570184089266684152.Spec : Prop :=
  ∀ n, P13570184089266684152.a n = A087298 (n + 1)

end A087298

/-! ## A087298.P8984237392861321426

`∑[A324468(3*n+1)]`
-/

namespace A087298.P8984237392861321426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324468 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087298.P8984237392861321426

namespace A087298

/-- `∑[A324468(3*n+1)]` -/
def P8984237392861321426.Spec : Prop :=
  ∀ n, P8984237392861321426.a n = A087298 (n + 1)

end A087298

/-! ## A087298.P12695262733826879896

`A113474(3*(n+1))-1`
-/

namespace A087298.P12695262733826879896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113474 (3 * (n + 1)) - 1

end

end A087298.P12695262733826879896

namespace A087298

/-- `A113474(3*(n+1))-1` -/
def P12695262733826879896.Spec : Prop :=
  ∀ n, P12695262733826879896.a n = A087298 (n + 1)

end A087298

/-! ## A087298.P3603694696748241495

`A397779(9*(n+1))`
-/

namespace A087298.P3603694696748241495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397779 (9 * (n + 1))

end

end A087298.P3603694696748241495

namespace A087298

/-- `A397779(9*(n+1))` -/
def P3603694696748241495.Spec : Prop :=
  ∀ n, P3603694696748241495.a n = A087298 (n + 1)

end A087298

/-! ## A087298.P2025471600417259183

`A274715(A016933(n+1))`
-/

namespace A087298.P2025471600417259183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274715 (A016933 (n + 1)).toNat

end

end A087298.P2025471600417259183

namespace A087298

/-- `A274715(A016933(n+1))` -/
def P2025471600417259183.Spec : Prop :=
  ∀ n, P2025471600417259183.a n = A087298 (n + 1)

end A087298

/-! ## A087298.P10266608990002520885

`A274715(A092259(n+2))`
-/

namespace A087298.P10266608990002520885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274715 (A092259 (n + 2)).toNat

end

end A087298.P10266608990002520885

namespace A087298

/-- `A274715(A092259(n+2))` -/
def P10266608990002520885.Spec : Prop :=
  ∀ n, P10266608990002520885.a n = A087298 (n + 1)

end A087298

/-!
# A087299: Ratio of volume of n-dimensional ball to circumscribing n-cube is Pi^floor(n/2) divided by a(n).

The programs for A087299, the canonical program `A087299.P16846173636816629489` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087299 has offset 0).

The definition of A087299 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087299.P16846173636816629489

`2*n*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087299

/-- `2*n*a(n-2)` -/
def P16846173636816629489.Spec : Prop :=
  ∀ n, (P16846173636816629489.a n : ℤ) = A087299 n

theorem P16846173636816629489.correct : P16846173636816629489.Spec := by
  intro n
  simp only [A087299]

end A087299

/-! ## A087299.P8554223392233237489

`∏[(n-char[1]+n)/a(n-1)]` with `a(0)=1`
-/

namespace A087299.P8554223392233237489
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A087299.P8554223392233237489

namespace A087299

/-- `∏[(n-char[1]+n)/a(n-1)]` -/
def P8554223392233237489.Spec : Prop :=
  ∀ n, P8554223392233237489.a n = (A087299 n : ℚ)

end A087299

/-! ## A087299.P18413152878411535425

`A372995(2*n)`
-/

namespace A087299.P18413152878411535425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372995 (2 * n)

end

end A087299.P18413152878411535425

namespace A087299

/-- `A372995(2*n)` -/
def P18413152878411535425.Spec : Prop :=
  ∀ n, P18413152878411535425.a n = A087299 n

end A087299

/-! ## A087299.P5092598385700029702

`A094941(n+1)/2`
-/

namespace A087299.P5092598385700029702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094941 (n + 1) : ℚ) / 2

end

end A087299.P5092598385700029702

namespace A087299

/-- `A094941(n+1)/2` -/
def P5092598385700029702.Spec : Prop :=
  ∀ n, P5092598385700029702.a n = (A087299 n : ℚ)

end A087299

/-! ## A087299.P2897761015115242044

`a(n-2)*A004277(n)` with `a(0)=1, a(1)=1`
-/

namespace A087299.P2897761015115242044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A004277 n

end

end A087299.P2897761015115242044

namespace A087299

/-- `a(n-2)*A004277(n)` -/
def P2897761015115242044.Spec : Prop :=
  ∀ n, P2897761015115242044.a n = A087299 n

end A087299

/-! ## A087299.P18235982846237301599

`a(n-2)*A005843(n)` with `a(0)=1, a(1)=1`
-/

namespace A087299.P18235982846237301599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A005843 n

end

end A087299.P18235982846237301599

namespace A087299

/-- `a(n-2)*A005843(n)` -/
def P18235982846237301599.Spec : Prop :=
  ∀ n, P18235982846237301599.a n = A087299 n

end A087299

/-! ## A087299.P13114566125597008796

`A007662(2*n)/gcd(2, n+1)`
-/

namespace A087299.P13114566125597008796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007662 (2 * n) : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

end

end A087299.P13114566125597008796

namespace A087299

/-- `A007662(2*n)/gcd(2, n+1)` -/
def P13114566125597008796.Spec : Prop :=
  ∀ n, P13114566125597008796.a n = (A087299 n : ℚ)

end A087299

/-! ## A087299.P1709692721574295183

`A006882(n)*A016116(n)`
-/

namespace A087299.P1709692721574295183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n * A016116 n

end

end A087299.P1709692721574295183

namespace A087299

/-- `A006882(n)*A016116(n)` -/
def P1709692721574295183.Spec : Prop :=
  ∀ n, P1709692721574295183.a n = A087299 n

end A087299

/-! ## A087299.P4849817544145087865

`sqrt(A213173(n))*A006882(n)`
-/

namespace A087299.P4849817544145087865
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A213173 n : ℝ) * (A006882 n : ℝ)

end

end A087299.P4849817544145087865

namespace A087299

/-- `sqrt(A213173(n))*A006882(n)` -/
def P4849817544145087865.Spec : Prop :=
  ∀ n, P4849817544145087865.a n = (A087299 n : ℝ)

end A087299

/-! ## A087299.P14186504749284056971

`Δ[A052955(n)]*A006882(n)`
-/

namespace A087299.P14186504749284056971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006882 n

end

end A087299.P14186504749284056971

namespace A087299

/-- `Δ[A052955(n)]*A006882(n)` -/
def P14186504749284056971.Spec : Prop :=
  ∀ n, P14186504749284056971.a n = A087299 n

end A087299

/-! ## A087299.P11724061875609880472

`2/A010883(2*n+1)*A007662(2*n)`
-/

namespace A087299.P11724061875609880472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A010883 (2 * n + 1) : ℚ) * (A007662 (2 * n) : ℚ)

end

end A087299.P11724061875609880472

namespace A087299

/-- `2/A010883(2*n+1)*A007662(2*n)` -/
def P11724061875609880472.Spec : Prop :=
  ∀ n, P11724061875609880472.a n = (A087299 n : ℚ)

end A087299

/-! ## A087299.P13210423213329013204

`A000079(A004526(n))*A006882(n)`
-/

namespace A087299.P13210423213329013204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004526 n).toNat * A006882 n

end

end A087299.P13210423213329013204

namespace A087299

/-- `A000079(A004526(n))*A006882(n)` -/
def P13210423213329013204.Spec : Prop :=
  ∀ n, P13210423213329013204.a n = A087299 n

end A087299

/-! ## A087299.P5495997521846133351

`A370890(A316671(n+2))`
-/

namespace A087299.P5495997521846133351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370890 (A316671 (n + 2)).toNat

end

end A087299.P5495997521846133351

namespace A087299

/-- `A370890(A316671(n+2))` -/
def P5495997521846133351.Spec : Prop :=
  ∀ n, P5495997521846133351.a n = A087299 n

end A087299

/-! ## A087299.P4345843528671028054

`A249074(C(n, 2))`
-/

namespace A087299.P4345843528671028054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249074 (Nat.choose n 2)

end

end A087299.P4345843528671028054

namespace A087299

/-- `A249074(C(n, 2))` -/
def P4345843528671028054.Spec : Prop :=
  ∀ n, P4345843528671028054.a n = A087299 n

end A087299

/-! ## A087299.P4832742666139476502

`A249074(∑[n]-n)`
-/

namespace A087299.P4832742666139476502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249074 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A087299.P4832742666139476502

namespace A087299

/-- `A249074(∑[n]-n)` -/
def P4832742666139476502.Spec : Prop :=
  ∀ n, P4832742666139476502.a n = A087299 n

end A087299

/-! ## A087299.P2257889716442786608

`A007662(2*n)/A010883(n²)`
-/

namespace A087299.P2257889716442786608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007662 (2 * n) : ℚ) / (A010883 (n ^ 2) : ℚ)

end

end A087299.P2257889716442786608

namespace A087299

/-- `A007662(2*n)/A010883(n²)` -/
def P2257889716442786608.Spec : Prop :=
  ∀ n, P2257889716442786608.a n = (A087299 n : ℚ)

end A087299

