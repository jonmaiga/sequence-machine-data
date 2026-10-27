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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A005200: Total number of fixed points in rooted trees with n nodes.

The programs for A005200, there is no canonical definition to state claims against.
-/

/-! ## A005200.P8403603552253298542

`or(A032101(n+3), A039969(A007317(n+1)))`
-/

namespace A005200.P8403603552253298542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A032101 (n + 3)) (A039969 (A007317 (n + 1)).toNat)

end

end A005200.P8403603552253298542

/-! ## A005200.P10960319838650462736

`or(A008683(A334496(3*n+1)), A032101(n+3))`
-/

namespace A005200.P10960319838650462736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008683 (A334496 (3 * n + 1)).toNat) (A032101 (n + 3))

end

end A005200.P10960319838650462736

/-! ## A005200.P1029402045491130760

`A087834(A151108(n))`
-/

namespace A005200.P1029402045491130760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087834 (A151108 n).toNat

end

end A005200.P1029402045491130760

/-!
# A005202: Total number of fixed points in planted trees with n nodes.

The programs for A005202, there is no canonical definition to state claims against.
-/

/-! ## A005202.P11243910200457190260

`A328594(A147612(n)+A004111(n))`
-/

namespace A005202.P11243910200457190260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328594 (A147612 n + A004111 n).toNat

end

end A005202.P11243910200457190260

/-!
# A005203: Fibonacci numbers (or rabbit sequence) converted to decimal.

The programs for A005203, the canonical program `A005203.P4677941980539604301` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005203 has offset 0).

The definition of A005203 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005203.P4677941980539604301

`a(n-1)*2^A000045(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005203

/-- `a(n-1)*2^A000045(n-1)+a(n-2)` -/
def P4677941980539604301.Spec : Prop :=
  ∀ n, P4677941980539604301.a n = (A005203 n : ℚ)

end A005203

/-! ## A005203.P17891200633473581610

`A063896(n+1)-A288581(n)`
-/

namespace A005203.P17891200633473581610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063896 (n + 1) - A288581 n

end

end A005203.P17891200633473581610

namespace A005203

/-- `A063896(n+1)-A288581(n)` -/
def P17891200633473581610.Spec : Prop :=
  ∀ n, P17891200633473581610.a n = A005203 n

end A005203

/-! ## A005203.P6099847622627528686

`record[A144287(n+1)*A283683(n+1)]`
-/

namespace A005203.P6099847622627528686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144287 (n + 1) * A283683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005203.P6099847622627528686

namespace A005203

/-- `record[A144287(n+1)*A283683(n+1)]` -/
def P6099847622627528686.Spec : Prop :=
  ∀ n, P6099847622627528686.a n = A005203 n

end A005203

/-! ## A005203.P17940312347425688932

`xor(A063896(A187829(n+1)), A288581(n))`
-/

namespace A005203.P17940312347425688932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063896 (A187829 (n + 1)).toNat) (A288581 n)

end

end A005203.P17940312347425688932

namespace A005203

/-- `xor(A063896(A187829(n+1)), A288581(n))` -/
def P17940312347425688932.Spec : Prop :=
  ∀ n, P17940312347425688932.a n = A005203 n

end A005203

/-!
# A005204: Coding a recurrence.

The programs for A005204, the canonical program `A005204.P1941875715060736425` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005204 has offset 0).

The definition of A005204 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005204.P1941875715060736425

`2^A000930(n-4)*a(n-1)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005204

/-- `2^A000930(n-4)*a(n-1)+a(n-3)` -/
def P1941875715060736425.Spec : Prop :=
  ∀ n, P1941875715060736425.a n = (A005204 n : ℚ)

end A005204

/-!
# A005205: Coding Fibonacci numbers.

The programs for A005205, there is no canonical definition to state claims against.
-/

/-! ## A005205.P8275574545160835835

`A144287(∑[n+3]+1)`
-/

namespace A005205.P8275574545160835835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144287 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A005205.P8275574545160835835

/-! ## A005205.P2160625316750025541

`record[A144287(A198464(n+1))]`
-/

namespace A005205.P2160625316750025541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144287 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005205.P2160625316750025541

/-! ## A005205.P17675643232901223074

`record[A144287(abs(A255878(n+1)))]`
-/

namespace A005205.P17675643232901223074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144287 |A255878 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005205.P17675643232901223074

/-! ## A005205.P8556241988388077009

`record[A144287(sqrt(A303054(n+1)))]`
-/

namespace A005205.P8556241988388077009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144287 (SequenceMachineLib.roundAway (Real.sqrt (A303054 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005205.P8556241988388077009

/-! ## A005205.P18334219513375793881

`record[char[A055998(n)]*A144287(n+1)]`
-/

namespace A005205.P18334219513375793881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A144287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005205.P18334219513375793881

/-!
# A005206: Hofstadter G-sequence: a(0) = 0; a(n) = n - a(a(n-1)) for n > 0.

The programs for A005206, the canonical program `A005206.P7910201692454662432` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005206 has offset 0).

The definition of A005206 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-a(a(n-1))` (program `A005206.P7910201692454662432`, by `A005206.P7910201692454662432.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005206.P7910201692454662432

`n-a(a(n-1))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005206

/-- `n-a(a(n-1))` -/
def P7910201692454662432.Spec : Prop :=
  ∀ n, P7910201692454662432.a n = A005206 n

theorem P7910201692454662432.correct : P7910201692454662432.Spec := by
  intro n
  simp only [A005206]

end A005206

/-! ## A005206.P7294900110291293641

`floor((n+1)*(1+sqrt(5))/2)-n-1`
-/

namespace A005206.P7294900110291293641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * (1 + Real.sqrt (5 : ℝ)) / 2⌋ - (n : ℤ) - 1

end

end A005206.P7294900110291293641

namespace A005206

/-- `floor((n+1)*(1+sqrt(5))/2)-n-1` -/
def P7294900110291293641.Spec : Prop :=
  ∀ n, P7294900110291293641.a n = A005206 n

end A005206

/-! ## A005206.P10554595204253331557

`ceil(n/(acot(n)+ϕ))`
-/

namespace A005206.P10554595204253331557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / (SequenceMachineLib.acot (n : ℝ) + Real.goldenRatio)⌉

end

end A005206.P10554595204253331557

namespace A005206

/-- `ceil(n/(acot(n)+ϕ))` -/
def P10554595204253331557.Spec : Prop :=
  ∀ n, P10554595204253331557.a n = A005206 n

end A005206

/-! ## A005206.P16224293737229939274

`∑[dr(Δ[floor(n/ϕ)])]`
-/

namespace A005206.P16224293737229939274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005206.P16224293737229939274

namespace A005206

/-- `∑[dr(Δ[floor(n/ϕ)])]` -/
def P16224293737229939274.Spec : Prop :=
  ∀ n, (P16224293737229939274.a n : ℤ) = A005206 n

end A005206

/-! ## A005206.P5221082933994007602

`-ceil(xor(n, -1)/ϕ)`
-/

namespace A005206.P5221082933994007602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(Int.xor (n : ℤ) (-1) : ℝ) / Real.goldenRatio⌉

end

end A005206.P5221082933994007602

namespace A005206

/-- `-ceil(xor(n, -1)/ϕ)` -/
def P5221082933994007602.Spec : Prop :=
  ∀ n, P5221082933994007602.a n = A005206 n

end A005206

/-! ## A005206.P12607320389509938962

`floor(ϕ*(n+1))%(n+1)`
-/

namespace A005206.P12607320389509938962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ (n + 1 : ℤ)

end

end A005206.P12607320389509938962

namespace A005206

/-- `floor(ϕ*(n+1))%(n+1)` -/
def P12607320389509938962.Spec : Prop :=
  ∀ n, P12607320389509938962.a n = A005206 n

end A005206

/-! ## A005206.P4495513885238260382

`floor((n+1)/(2*cos(π/5)))`
-/

namespace A005206.P4495513885238260382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (2 * Real.cos (Real.pi / 5))⌋

end

end A005206.P4495513885238260382

namespace A005206

/-- `floor((n+1)/(2*cos(π/5)))` -/
def P4495513885238260382.Spec : Prop :=
  ∀ n, P4495513885238260382.a n = A005206 n

end A005206

/-! ## A005206.P13799522997816645193

`ceil((n+1)/ϕ-gcd(n, n+1))`
-/

namespace A005206.P13799522997816645193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.goldenRatio - (Nat.gcd n (n + 1) : ℝ)⌉

end

end A005206.P13799522997816645193

namespace A005206

/-- `ceil((n+1)/ϕ-gcd(n, n+1))` -/
def P13799522997816645193.Spec : Prop :=
  ∀ n, P13799522997816645193.a n = A005206 n

end A005206

/-! ## A005206.P11499532150423127990

`ceil(ϕ*C(n+1, n)-(n+2))`
-/

namespace A005206.P11499532150423127990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (Nat.choose (n + 1) n : ℝ) - (n + 2 : ℝ)⌉

end

end A005206.P11499532150423127990

namespace A005206

/-- `ceil(ϕ*C(n+1, n)-(n+2))` -/
def P11499532150423127990.Spec : Prop :=
  ∀ n, P11499532150423127990.a n = A005206 n

end A005206

/-! ## A005206.P15344899869893636662

`ceil((n+1)/ϕ-and(1, 2*n+1))`
-/

namespace A005206.P15344899869893636662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.goldenRatio - (Nat.land 1 (2 * n + 1) : ℝ)⌉

end

end A005206.P15344899869893636662

namespace A005206

/-- `ceil((n+1)/ϕ-and(1, 2*n+1))` -/
def P15344899869893636662.Spec : Prop :=
  ∀ n, P15344899869893636662.a n = A005206 n

end A005206

/-! ## A005206.P14681559461153123228

`ceil((n+1)/ϕ-xor(2*n+1, 2*n))`
-/

namespace A005206.P14681559461153123228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.goldenRatio - (Nat.xor (2 * n + 1) (2 * n) : ℝ)⌉

end

end A005206.P14681559461153123228

namespace A005206

/-- `ceil((n+1)/ϕ-xor(2*n+1, 2*n))` -/
def P14681559461153123228.Spec : Prop :=
  ∀ n, P14681559461153123228.a n = A005206 n

end A005206

/-! ## A005206.P6768553218913273213

`floor((n+1)*sin(π/5)/sin(2*π/5))`
-/

namespace A005206.P6768553218913273213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sin (Real.pi / 5) / Real.sin (2 * Real.pi / 5)⌋

end

end A005206.P6768553218913273213

namespace A005206

/-- `floor((n+1)*sin(π/5)/sin(2*π/5))` -/
def P6768553218913273213.Spec : Prop :=
  ∀ n, P6768553218913273213.a n = A005206 n

end A005206

/-! ## A005206.P17073073471665643368

`∑[A096270(n)]`
-/

namespace A005206.P17073073471665643368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005206.P17073073471665643368

namespace A005206

/-- `∑[A096270(n)]` -/
def P17073073471665643368.Spec : Prop :=
  ∀ n, P17073073471665643368.a n = A005206 n

end A005206

/-! ## A005206.P3354335214424281666

`A060143(n+1)`
-/

namespace A005206.P3354335214424281666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (n + 1)

end

end A005206.P3354335214424281666

namespace A005206

/-- `A060143(n+1)` -/
def P3354335214424281666.Spec : Prop :=
  ∀ n, P3354335214424281666.a n = A005206 n

end A005206

/-! ## A005206.P10079428226061068358

`∑[log2(A001468(n))]`
-/

namespace A005206.P10079428226061068358
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001468 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005206.P10079428226061068358

namespace A005206

/-- `∑[log2(A001468(n))]` -/
def P10079428226061068358.Spec : Prop :=
  ∀ n, P10079428226061068358.a n = (A005206 n : ℝ)

end A005206

/-! ## A005206.P2008528971400968112

`∑[A282162(n)-2]`
-/

namespace A005206.P2008528971400968112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282162 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005206.P2008528971400968112

namespace A005206

/-- `∑[A282162(n)-2]` -/
def P2008528971400968112.Spec : Prop :=
  ∀ n, P2008528971400968112.a n = A005206 n

end A005206

/-! ## A005206.P8580639895430764212

`A293688(n)/(n+1)`
-/

namespace A005206.P8580639895430764212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293688 n : ℚ) / (n + 1 : ℚ)

end

end A005206.P8580639895430764212

namespace A005206

/-- `A293688(n)/(n+1)` -/
def P8580639895430764212.Spec : Prop :=
  ∀ n, P8580639895430764212.a n = (A005206 n : ℚ)

end A005206

/-! ## A005206.P1586935347119017403

`∑[A005614(abs(1-n))]`
-/

namespace A005206.P1586935347119017403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005206.P1586935347119017403

namespace A005206

/-- `∑[A005614(abs(1-n))]` -/
def P1586935347119017403.Spec : Prop :=
  ∀ n, P1586935347119017403.a n = A005206 n

end A005206

/-! ## A005206.P5841625892204575732

`∑[char[A000201(n+1)]]`
-/

namespace A005206.P5841625892204575732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005206.P5841625892204575732

namespace A005206

/-- `∑[char[A000201(n+1)]]` -/
def P5841625892204575732.Spec : Prop :=
  ∀ n, (P5841625892204575732.a n : ℤ) = A005206 n

end A005206

/-!
# A005207: a(n) = (F(2*n-1) + F(n+1))/2 where F(n) is a Fibonacci number.

The programs for A005207, the canonical program `A005207.P17970554366343461678` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005207 has offset 0).

The definition of A005207 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005207.P17970554366343461678

`4*a(n-1)-3*a(n-2)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005207

/-- `4*a(n-1)-3*a(n-2)-2*a(n-3)+a(n-4)` -/
def P17970554366343461678.Spec : Prop :=
  ∀ n, P17970554366343461678.a n = A005207 n

theorem P17970554366343461678.correct : P17970554366343461678.Spec := by
  intro n
  simp only [A005207]

end A005207

/-! ## A005207.P210478447715803468

`ogf((1-3x+x^2+x^3)/(1-4x+3x^2+2x^3-x^4))`
-/

namespace A005207.P210478447715803468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 1, 1] [1, -4, 3, 2, -1] n

end

end A005207.P210478447715803468

namespace A005207

/-- `ogf((1-3x+x^2+x^3)/(1-4x+3x^2+2x^3-x^4))` -/
def P210478447715803468.Spec : Prop :=
  ∀ n, P210478447715803468.a n = A005207 n

end A005207

/-! ## A005207.P3128695714783084533

`A001224(A092535(n))`
-/

namespace A005207.P3128695714783084533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001224 (A092535 n).toNat

end

end A005207.P3128695714783084533

namespace A005207

/-- `A001224(A092535(n))` -/
def P3128695714783084533.Spec : Prop :=
  ∀ n, P3128695714783084533.a n = A005207 n

end A005207

/-! ## A005207.P8144849618400838445

`A060312(A004271(n+1))`
-/

namespace A005207.P8144849618400838445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060312 (A004271 (n + 1)).toNat

end

end A005207.P8144849618400838445

namespace A005207

/-- `A060312(A004271(n+1))` -/
def P8144849618400838445.Spec : Prop :=
  ∀ n, P8144849618400838445.a n = A005207 n

end A005207

/-! ## A005207.P349764796559586576

`A060312(A004278(n+1))`
-/

namespace A005207.P349764796559586576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060312 (A004278 (n + 1)).toNat

end

end A005207.P349764796559586576

namespace A005207

/-- `A060312(A004278(n+1))` -/
def P349764796559586576.Spec : Prop :=
  ∀ n, P349764796559586576.a n = A005207 n

end A005207

/-! ## A005207.P105478280494624696

`A212804(n)+A059512(n)`
-/

namespace A005207.P105478280494624696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A059512 n

end

end A005207.P105478280494624696

namespace A005207

/-- `A212804(n)+A059512(n)` -/
def P105478280494624696.Spec : Prop :=
  ∀ n, P105478280494624696.a n = A005207 n

end A005207

/-! ## A005207.P13814525679330613865

`A059512(n)+Δ[A000045(n)]`
-/

namespace A005207.P13814525679330613865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059512 n + (f1 (n + 1) - f1 n)

end

end A005207.P13814525679330613865

namespace A005207

/-- `A059512(n)+Δ[A000045(n)]` -/
def P13814525679330613865.Spec : Prop :=
  ∀ n, P13814525679330613865.a n = A005207 n

end A005207

/-! ## A005207.P8191416241776372151

`A056014(n)+A000045(n+1)`
-/

namespace A005207.P8191416241776372151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056014 n + A000045 (n + 1)

end

end A005207.P8191416241776372151

namespace A005207

/-- `A056014(n)+A000045(n+1)` -/
def P8191416241776372151.Spec : Prop :=
  ∀ n, P8191416241776372151.a n = A005207 n

end A005207

/-! ## A005207.P18082132508778625213

`A000071(n+1)+A056014(n)+1`
-/

namespace A005207.P18082132508778625213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (A056014 n + 1)

end

end A005207.P18082132508778625213

namespace A005207

/-- `A000071(n+1)+A056014(n)+1` -/
def P18082132508778625213.Spec : Prop :=
  ∀ n, P18082132508778625213.a n = A005207 n

end A005207

/-! ## A005207.P224914510200132060

`A000045(n+1)+A059512(n)-A000045(n)`
-/

namespace A005207.P224914510200132060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A059512 n - A000045 n)

end

end A005207.P224914510200132060

namespace A005207

/-- `A000045(n+1)+A059512(n)-A000045(n)` -/
def P224914510200132060.Spec : Prop :=
  ∀ n, P224914510200132060.a n = A005207 n

end A005207

/-! ## A005207.P2187409511078445059

`A001519(n)-A056014(n)`
-/

namespace A005207.P2187409511078445059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n - A056014 n

end

end A005207.P2187409511078445059

namespace A005207

/-- `A001519(n)-A056014(n)` -/
def P2187409511078445059.Spec : Prop :=
  ∀ n, P2187409511078445059.a n = A005207 n

end A005207

/-! ## A005207.P7310101697473401559

`A000045(n)+A001519(n)-A059512(n)`
-/

namespace A005207.P7310101697473401559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A001519 n - A059512 n)

end

end A005207.P7310101697473401559

namespace A005207

/-- `A000045(n)+A001519(n)-A059512(n)` -/
def P7310101697473401559.Spec : Prop :=
  ∀ n, P7310101697473401559.a n = A005207 n

end A005207

/-! ## A005207.P4792966100126877741

`A059512(n+1)+A056014(n)-A056014(n+1)`
-/

namespace A005207.P4792966100126877741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059512 (n + 1) + (A056014 n - A056014 (n + 1))

end

end A005207.P4792966100126877741

namespace A005207

/-- `A059512(n+1)+A056014(n)-A056014(n+1)` -/
def P4792966100126877741.Spec : Prop :=
  ∀ n, P4792966100126877741.a n = A005207 n

end A005207

/-! ## A005207.P12061328346083874409

`A051450(n+1)-A001906(n)`
-/

namespace A005207.P12061328346083874409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051450 (n + 1) - A001906 n

end

end A005207.P12061328346083874409

namespace A005207

/-- `A051450(n+1)-A001906(n)` -/
def P12061328346083874409.Spec : Prop :=
  ∀ n, P12061328346083874409.a n = A005207 n

end A005207

/-! ## A005207.P14473050120300117899

`A122367(n)-A094292(n+1)`
-/

namespace A005207.P14473050120300117899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n - A094292 (n + 1)

end

end A005207.P14473050120300117899

namespace A005207

/-- `A122367(n)-A094292(n+1)` -/
def P14473050120300117899.Spec : Prop :=
  ∀ n, P14473050120300117899.a n = A005207 n

end A005207

/-! ## A005207.P12987153750003927425

`A001519(n+1)-A094292(n+1)`
-/

namespace A005207.P12987153750003927425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) - A094292 (n + 1)

end

end A005207.P12987153750003927425

namespace A005207

/-- `A001519(n+1)-A094292(n+1)` -/
def P12987153750003927425.Spec : Prop :=
  ∀ n, P12987153750003927425.a n = A005207 n

end A005207

/-! ## A005207.P14080173338840270259

`A001224(2*n+1)-A001906(n)`
-/

namespace A005207.P14080173338840270259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001224 (2 * n + 1) - A001906 n

end

end A005207.P14080173338840270259

namespace A005207

/-- `A001224(2*n+1)-A001906(n)` -/
def P14080173338840270259.Spec : Prop :=
  ∀ n, P14080173338840270259.a n = A005207 n

end A005207

/-!
# A005208: Operator-oriented complexity of n, i.e., the minimum number of occurrences of +, *, and ^ needed to build n from a supply of ones.

The programs for A005208, there is no canonical definition to state claims against.
-/

/-! ## A005208.P6112750560987365447

`A025280(n+1)-1`
-/

namespace A005208.P6112750560987365447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025280 (n + 1) - 1

end

end A005208.P6112750560987365447

/-! ## A005208.P3487229554795238249

`floor(A217250(n+1)/2)`
-/

namespace A005208.P3487229554795238249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A217250 (n + 1) : ℚ) / 2⌋

end

end A005208.P3487229554795238249

/-! ## A005208.P14860279133981061052

`A004524(A217250(n+1))`
-/

namespace A005208.P14860279133981061052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A217250 (n + 1)).toNat

end

end A005208.P14860279133981061052

/-! ## A005208.P7845073976729200062

`A140106(A217250(n+1)+1)`
-/

namespace A005208.P7845073976729200062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A217250 (n + 1) + 1).toNat

end

end A005208.P7845073976729200062

/-! ## A005208.P15478285847879932456

`A004525(A217250(n+1)-1)`
-/

namespace A005208.P15478285847879932456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A217250 (n + 1) - 1).toNat

end

end A005208.P15478285847879932456

/-! ## A005208.P10332644591489863241

`A026741(A217250(n+1)-1)`
-/

namespace A005208.P10332644591489863241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A217250 (n + 1) - 1).toNat

end

end A005208.P10332644591489863241

/-! ## A005208.P3981736262089128442

`A002265(2*A217250(n+1))`
-/

namespace A005208.P3981736262089128442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A217250 (n + 1)).toNat

end

end A005208.P3981736262089128442

/-! ## A005208.P5011887299095334200

`A026741(xor(1, A217250(n+1)))`
-/

namespace A005208.P5011887299095334200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.xor 1 (A217250 (n + 1))).toNat

end

end A005208.P5011887299095334200

/-! ## A005208.P7768018026286107206

`A008619(A217250(n+1)+1)-2`
-/

namespace A005208.P7768018026286107206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A217250 (n + 1) + 1).toNat - 2

end

end A005208.P7768018026286107206

/-! ## A005208.P2136248162999014292

`A217250(n+1)%A025280(n+1)`
-/

namespace A005208.P2136248162999014292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217250 (n + 1)) (A025280 (n + 1))

end

end A005208.P2136248162999014292

/-! ## A005208.P8426843255826730028

`A002265(A217250(n+1)+A217250(n+1)+1)`
-/

namespace A005208.P8426843255826730028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A217250 (n + 1) + (A217250 (n + 1) + 1)).toNat

end

end A005208.P8426843255826730028

/-! ## A005208.P6772678621874821613

`A106743(A000040(n+1))+A025280(n+1)`
-/

namespace A005208.P6772678621874821613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106743 (A000040 (n + 1)).toNat + A025280 (n + 1)

end

end A005208.P6772678621874821613

/-! ## A005208.P10236136211876469908

`A070198(n)%A025280(n+1)`
-/

namespace A005208.P10236136211876469908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A025280 (n + 1))

end

end A005208.P10236136211876469908

/-! ## A005208.P6632612865459520410

`A079782(n+1)%A025280(n+1)`
-/

namespace A005208.P6632612865459520410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A025280 (n + 1))

end

end A005208.P6632612865459520410

/-! ## A005208.P17586701928152114718

`A083685(n+1)%A025280(n+1)`
-/

namespace A005208.P17586701928152114718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A025280 (n + 1))

end

end A005208.P17586701928152114718

/-! ## A005208.P1450139102685475766

`A121934(n+1)%A025280(n+1)`
-/

namespace A005208.P1450139102685475766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A025280 (n + 1))

end

end A005208.P1450139102685475766

/-!
# A005209: Multilevel sieve: at k-th step, accept k numbers, reject k, accept k, ...

The programs for A005209, there is no canonical definition to state claims against.
-/

/-! ## A005209.P329862189461021321

`A034444(A337905(n+1))+A000337(n)`
-/

namespace A005209.P329862189461021321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A337905 (n + 1)).toNat + A000337 n

end

end A005209.P329862189461021321

/-! ## A005209.P13537900343619812673

`A099065(n)-A135660(A194460(n+1))`
-/

namespace A005209.P13537900343619812673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099065 n - A135660 (A194460 (n + 1)).toNat

end

end A005209.P13537900343619812673

/-! ## A005209.P11159100258778113325

`A001462(A210843(n+1)*A326489(n))`
-/

namespace A005209.P11159100258778113325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A210843 (n + 1) * A326489 n).toNat

end

end A005209.P11159100258778113325

/-!
# A005210: a(n) = |a(n-1) + 2a(n-2) - n|.

The programs for A005210, the canonical program `A005210.P6666892874047042615` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005210 has offset 1).

The definition of A005210 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005210.P6666892874047042615

`abs(a(n-1)+2*a(n-2)-(n+1))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005210

/-- `abs(a(n-1)+2*a(n-2)-(n+1))` -/
def P6666892874047042615.Spec : Prop :=
  ∀ n, P6666892874047042615.a n = A005210 (n + 1)

theorem P6666892874047042615.correct : P6666892874047042615.Spec := by
  intro n
  simp only [A005210, Nat.add_sub_cancel]

end A005210

/-! ## A005210.P3349031877917634048

`abs(n-(2*a(n-2)-(1-a(n-1))))` with `a(0)=1, a(1)=1`
-/

namespace A005210.P3349031877917634048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  |(n : ℤ) - (2 * a (n - 2) - (1 - a (n - 1)))|

end

end A005210.P3349031877917634048

namespace A005210

/-- `abs(n-(2*a(n-2)-(1-a(n-1))))` -/
def P3349031877917634048.Spec : Prop :=
  ∀ n, P3349031877917634048.a n = A005210 (n + 1)

end A005210

/-! ## A005210.P3071198921305283259

`A000007(n)+Δ[A256963(A028310(n))]`
-/

namespace A005210.P3071198921305283259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256963 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A005210.P3071198921305283259

namespace A005210

/-- `A000007(n)+Δ[A256963(A028310(n))]` -/
def P3071198921305283259.Spec : Prop :=
  ∀ n, P3071198921305283259.a n = A005210 (n + 1)

end A005210

/-! ## A005210.P18298700291329500071

`A256963(n+1)+A000007(n)-A256963(A028310(n))`
-/

namespace A005210.P18298700291329500071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256963 (n + 1) + (A000007 n - A256963 (A028310 n).toNat)

end

end A005210.P18298700291329500071

namespace A005210

/-- `A256963(n+1)+A000007(n)-A256963(A028310(n))` -/
def P18298700291329500071.Spec : Prop :=
  ∀ n, P18298700291329500071.a n = A005210 (n + 1)

end A005210

/-! ## A005210.P9748763090050685561

`A256963(n+1)-A057427(n)*A256963(A028310(n))`
-/

namespace A005210.P9748763090050685561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256963 (n + 1) - A057427 n * A256963 (A028310 n).toNat

end

end A005210.P9748763090050685561

namespace A005210

/-- `A256963(n+1)-A057427(n)*A256963(A028310(n))` -/
def P9748763090050685561.Spec : Prop :=
  ∀ n, P9748763090050685561.a n = A005210 (n + 1)

end A005210

/-! ## A005210.P10901179871166187205

`Δ[A256963(A028310(n))+A057427(n)]`
-/

namespace A005210.P10901179871166187205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256963 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005210.P10901179871166187205

namespace A005210

/-- `Δ[A256963(A028310(n))+A057427(n)]` -/
def P10901179871166187205.Spec : Prop :=
  ∀ n, P10901179871166187205.a n = A005210 (n + 1)

end A005210

/-! ## A005210.P7999618723559133046

`Δ[A256963(A028310(n))%A077454(n+1)]`
-/

namespace A005210.P7999618723559133046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256963 (A028310 n).toNat) (A077454 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005210.P7999618723559133046

namespace A005210

/-- `Δ[A256963(A028310(n))%A077454(n+1)]` -/
def P7999618723559133046.Spec : Prop :=
  ∀ n, P7999618723559133046.a n = A005210 (n + 1)

end A005210

/-!
# A005211: Record values in A005210.

The programs for A005211, the canonical program `A005211.P18254895563136852198` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005211 has offset 1).

The definition of A005211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005211.P18254895563136852198

`record[A005210(n+1)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005211

/-- `record[A005210(n+1)]` -/
def P18254895563136852198.Spec : Prop :=
  ∀ n, P18254895563136852198.a n = A005211 (n + 1)

theorem P18254895563136852198.correct : P18254895563136852198.Spec := by
  intro n
  simp only [A005211, Nat.add_sub_cancel]

end A005211

/-! ## A005211.P12306028209623567670

`A005210(A242014(n+1))`
-/

namespace A005211.P12306028209623567670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (A242014 (n + 1)).toNat

end

end A005211.P12306028209623567670

namespace A005211

/-- `A005210(A242014(n+1))` -/
def P12306028209623567670.Spec : Prop :=
  ∀ n, P12306028209623567670.a n = A005211 (n + 1)

end A005211

/-! ## A005211.P15469908924197260094

`record[A005210(A028310(n))]%A001060(n)`
-/

namespace A005211.P15469908924197260094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A001060 n)

end

end A005211.P15469908924197260094

namespace A005211

/-- `record[A005210(A028310(n))]%A001060(n)` -/
def P15469908924197260094.Spec : Prop :=
  ∀ n, P15469908924197260094.a n = A005211 (n + 1)

end A005211

/-! ## A005211.P4904094920501529511

`record[A005210(A028310(n))%A017329(n)]`
-/

namespace A005211.P4904094920501529511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005210 (A028310 n).toNat) (A017329 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005211.P4904094920501529511

namespace A005211

/-- `record[A005210(A028310(n))%A017329(n)]` -/
def P4904094920501529511.Spec : Prop :=
  ∀ n, P4904094920501529511.a n = A005211 (n + 1)

end A005211

/-! ## A005211.P15006014265270397226

`record[A005210(A065033(n))%A017329(n)]`
-/

namespace A005211.P15006014265270397226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005210 (A065033 n).toNat) (A017329 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005211.P15006014265270397226

namespace A005211

/-- `record[A005210(A065033(n))%A017329(n)]` -/
def P15006014265270397226.Spec : Prop :=
  ∀ n, P15006014265270397226.a n = A005211 (n + 1)

end A005211

/-!
# A005212: a(n) = n! if n is odd otherwise 0 (from the Taylor series for sin x).

The programs for A005212, there is no canonical definition to state claims against.
-/

/-! ## A005212.P1507156356248519668

`n%2*gcd(n, ∑[n])!`
-/

namespace A005212.P1507156356248519668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 * Nat.factorial (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A005212.P1507156356248519668

/-! ## A005212.P6622724521286957436

`(n*and(1, n))!*and(1, n)`
-/

namespace A005212.P6622724521286957436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n * Nat.land 1 n) * Nat.land 1 n

end

end A005212.P6622724521286957436

/-! ## A005212.P3107508867096546729

`∑{d}[and(1, n-2), n!/#]`
-/

namespace A005212.P3107508867096546729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (Nat.factorial n : ℚ) / (d : ℚ)

end

end A005212.P3107508867096546729

/-! ## A005212.P14640488776937009443

`(n²-n)*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A005212.P14640488776937009443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((n ^ 2 : ℤ) - (n : ℤ)) * a (n - 2)

end

end A005212.P14640488776937009443

/-! ## A005212.P8768891257612422052

`2*a(n-2)*C(n, 2)` with `a(0)=0, a(1)=1`
-/

namespace A005212.P8768891257612422052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a (n - 2) * Nat.choose n 2

end

end A005212.P8768891257612422052

/-! ## A005212.P15841288743319701452

`(n-1)*n*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A005212.P15841288743319701452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((n : ℤ) - 1) * ((n : ℤ) * a (n - 2))

end

end A005212.P15841288743319701452

/-! ## A005212.P12922143492091353312

`or(1, n)%(n+1)*round(log(cosh(n)))!`
-/

namespace A005212.P12922143492091353312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n % (n + 1) * Nat.factorial (SequenceMachineLib.roundAway (Real.log (Real.cosh (n : ℝ)))).toNat

end

end A005212.P12922143492091353312

/-! ## A005212.P3002987955587120987

`a(n-2)/(n²-n)^(-1)` with `a(0)=0, a(1)=1`
-/

namespace A005212.P3002987955587120987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) / ((n ^ 2 : ℤ) - (n : ℤ) : ℚ) ^ (-1 : ℤ)

end

end A005212.P3002987955587120987

/-! ## A005212.P11535683493111692411

`n*A393312(∑[n])`
-/

namespace A005212.P11535683493111692411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A393312 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005212.P11535683493111692411

/-! ## A005212.P6154595717580266746

`a(n-2)*A181995(n)` with `a(0)=0, a(1)=1`
-/

namespace A005212.P6154595717580266746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) * A181995 n

end

end A005212.P6154595717580266746

/-!
# A005213: Number of symmetric, reduced unit interval schemes with n+1 intervals (n>=1).

The programs for A005213, there is no canonical definition to state claims against.
-/

/-! ## A005213.P3119219540784894530

`A082601(∑[n%2+n])`
-/

namespace A005213.P3119219540784894530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005213.P3119219540784894530

/-! ## A005213.P8315832959062894655

`A082601(∑[or(1, n+1)-1])`
-/

namespace A005213.P8315832959062894655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (n + 1) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A005213.P8315832959062894655

/-! ## A005213.P18139615050856312410

`A082601(A007590(n+1))`
-/

namespace A005213.P18139615050856312410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (A007590 (n + 1)).toNat

end

end A005213.P18139615050856312410

/-! ## A005213.P10279516436355642091

`A082601(A080476(n+1))`
-/

namespace A005213.P10279516436355642091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (A080476 (n + 1)).toNat

end

end A005213.P10279516436355642091

/-! ## A005213.P4036732160858948620

`A082601(∑[2*A110654(n)])`
-/

namespace A005213.P4036732160858948620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A005213.P4036732160858948620

/-! ## A005213.P16664237846032870511

`A082601(∑[A285869(2*n)])`
-/

namespace A005213.P16664237846032870511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285869 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A005213.P16664237846032870511

/-! ## A005213.P6648499173650117906

`A082601(A110654(n)+∑[n])`
-/

namespace A005213.P6648499173650117906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (A110654 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A005213.P6648499173650117906

/-! ## A005213.P6064335685528779709

`A082601(∑[∑[A007877(2*n)]])`
-/

namespace A005213.P6064335685528779709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A005213.P6064335685528779709

/-! ## A005213.P1175344604007123427

`A082601(∑[2*A004526(n+1)])`
-/

namespace A005213.P1175344604007123427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A005213.P1175344604007123427

/-! ## A005213.P6406316132634878915

`A082601(A004526(n+1)+∑[n])`
-/

namespace A005213.P6406316132634878915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (A004526 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A005213.P6406316132634878915

/-! ## A005213.P7962098572220569832

`A082601(∑[2*(n-A004526(n))])`
-/

namespace A005213.P7962098572220569832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - A004526 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A005213.P7962098572220569832

/-! ## A005213.P7792037130471493053

`A082601(A005843(∑[A110654(n)]))`
-/

namespace A005213.P7792037130471493053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A005213.P7792037130471493053

/-! ## A005213.P1517784832227101688

`A082601(A065033(n)+A000217(n))`
-/

namespace A005213.P1517784832227101688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (A065033 n + A000217 n).toNat

end

end A005213.P1517784832227101688

/-! ## A005213.P14356335638627018313

`A082601(A000096(n)-A004526(n))`
-/

namespace A005213.P14356335638627018313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (A000096 n - A004526 n).toNat

end

end A005213.P14356335638627018313

/-! ## A005213.P1405539540909679562

`A082601(A000217(n+1)-A110654(n+1))`
-/

namespace A005213.P1405539540909679562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (A000217 (n + 1) - A110654 (n + 1)).toNat

end

end A005213.P1405539540909679562

/-! ## A005213.P17427191572197143663

`A123149(A213037(n+1))`
-/

namespace A005213.P17427191572197143663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123149 (A213037 (n + 1)).toNat

end

end A005213.P17427191572197143663

/-! ## A005213.P15205569322159835331

`A082601(A065033(n²)+n)`
-/

namespace A005213.P15205569322159835331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (A065033 (n ^ 2) + (n : ℤ)).toNat

end

end A005213.P15205569322159835331

/-! ## A005213.P14863556500956862475

`A082601(A285869(n²)+n)`
-/

namespace A005213.P14863556500956862475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (A285869 (n ^ 2) + (n : ℤ)).toNat

end

end A005213.P14863556500956862475

/-!
# A005214: Triangular numbers together with squares (excluding 0).

The programs for A005214, the canonical program `A005214.P8676150606073299195` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005214 has offset 1).

The definition of A005214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005214.P8676150606073299195

`∑[abs(Δ[∪[n², ∑[n]]])]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005214

/-- `∑[abs(Δ[∪[n², ∑[n]]])]` -/
def P8676150606073299195.Spec : Prop :=
  ∀ n, P8676150606073299195.a n = A005214 (n + 1)

theorem P8676150606073299195.correct : P8676150606073299195.Spec := by
  intro n
  simp only [A005214, Nat.add_sub_cancel]

end A005214

/-! ## A005214.P18354879488868230038

`∪[(n+1)², ∑[n+1]]`
-/

namespace A005214.P18354879488868230038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A005214.P18354879488868230038

namespace A005214

/-- `∪[(n+1)², ∑[n+1]]` -/
def P18354879488868230038.Spec : Prop :=
  ∀ n, (P18354879488868230038.a n : ℤ) = A005214 (n + 1)

end A005214

/-! ## A005214.P8460002293686774505

`∪[∑[n+2], n*(n+2)]+1`
-/

namespace A005214.P8460002293686774505
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = x) n + 1

end

end A005214.P8460002293686774505

namespace A005214

/-- `∪[∑[n+2], n*(n+2)]+1` -/
def P8460002293686774505.Spec : Prop :=
  ∀ n, (P8460002293686774505.a n : ℤ) = A005214 (n + 1)

end A005214

/-! ## A005214.P11441620679281770566

`∑[A117704(n+1)]`
-/

namespace A005214.P11441620679281770566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005214.P11441620679281770566

namespace A005214

/-- `∑[A117704(n+1)]` -/
def P11441620679281770566.Spec : Prop :=
  ∀ n, P11441620679281770566.a n = A005214 (n + 1)

end A005214

/-! ## A005214.P12349063177291876329

`∑[Δ[A052293(n+1)]/2]`
-/

namespace A005214.P12349063177291876329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052293 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005214.P12349063177291876329

namespace A005214

/-- `∑[Δ[A052293(n+1)]/2]` -/
def P12349063177291876329.Spec : Prop :=
  ∀ n, P12349063177291876329.a n = (A005214 (n + 1) : ℚ)

end A005214

/-! ## A005214.P10777646502212352788

`∑[Δ[A054056(n+1)]/2]`
-/

namespace A005214.P10777646502212352788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054056 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005214.P10777646502212352788

namespace A005214

/-- `∑[Δ[A054056(n+1)]/2]` -/
def P10777646502212352788.Spec : Prop :=
  ∀ n, P10777646502212352788.a n = (A005214 (n + 1) : ℚ)

end A005214

/-! ## A005214.P13518162242331169839

`∑[Δ[A054057(n+1)]/2]`
-/

namespace A005214.P13518162242331169839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054057 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005214.P13518162242331169839

namespace A005214

/-- `∑[Δ[A054057(n+1)]/2]` -/
def P13518162242331169839.Spec : Prop :=
  ∀ n, P13518162242331169839.a n = (A005214 (n + 1) : ℚ)

end A005214

/-! ## A005214.P546840710667158913

`∑[Δ[A054796(n+1)]/2]`
-/

namespace A005214.P546840710667158913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054796 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005214.P546840710667158913

namespace A005214

/-- `∑[Δ[A054796(n+1)]/2]` -/
def P546840710667158913.Spec : Prop :=
  ∀ n, P546840710667158913.a n = (A005214 (n + 1) : ℚ)

end A005214

/-! ## A005214.P14438659344079790703

`∑[(A054796(n+2)-A054796(n+1))/2]`
-/

namespace A005214.P14438659344079790703
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054796 (n + 2) - A054796 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005214.P14438659344079790703

namespace A005214

/-- `∑[(A054796(n+2)-A054796(n+1))/2]` -/
def P14438659344079790703.Spec : Prop :=
  ∀ n, P14438659344079790703.a n = (A005214 (n + 1) : ℚ)

end A005214

/-! ## A005214.P2113855446824092199

`A193711(n+2)-(A193711(n+1)+A117704(n+2))`
-/

namespace A005214.P2113855446824092199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193711 (n + 2) - (A193711 (n + 1) + A117704 (n + 2))

end

end A005214.P2113855446824092199

namespace A005214

/-- `A193711(n+2)-(A193711(n+1)+A117704(n+2))` -/
def P2113855446824092199.Spec : Prop :=
  ∀ n, P2113855446824092199.a n = A005214 (n + 1)

end A005214

/-! ## A005214.P14374078553168009793

`record[A054686(n)%(a(n-1)+n)]` with `a(0)=1`
-/

namespace A005214.P14374078553168009793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.tmod (A054686 n) (f1 (n - 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005214.P14374078553168009793

namespace A005214

/-- `record[A054686(n)%(a(n-1)+n)]` -/
def P14374078553168009793.Spec : Prop :=
  ∀ n, P14374078553168009793.a n = A005214 (n + 1)

end A005214

/-! ## A005214.P3312099505871550207

`record[A054686(A026233(n+1)+2)]`
-/

namespace A005214.P3312099505871550207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054686 (A026233 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005214.P3312099505871550207

namespace A005214

/-- `record[A054686(A026233(n+1)+2)]` -/
def P3312099505871550207.Spec : Prop :=
  ∀ n, P3312099505871550207.a n = A005214 (n + 1)

end A005214

/-! ## A005214.P7112576447678703036

`record[A054686(A026366(n+1)+2)]`
-/

namespace A005214.P7112576447678703036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054686 (A026366 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005214.P7112576447678703036

namespace A005214

/-- `record[A054686(A026366(n+1)+2)]` -/
def P7112576447678703036.Spec : Prop :=
  ∀ n, P7112576447678703036.a n = A005214 (n + 1)

end A005214

/-! ## A005214.P3689415915758171038

`record[A054686(A026366(n+4))]`
-/

namespace A005214.P3689415915758171038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054686 (A026366 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005214.P3689415915758171038

namespace A005214

/-- `record[A054686(A026366(n+4))]` -/
def P3689415915758171038.Spec : Prop :=
  ∀ n, P3689415915758171038.a n = A005214 (n + 1)

end A005214

/-! ## A005214.P14469721395132984457

`record[A054686(A332204(n+1)+2)]`
-/

namespace A005214.P14469721395132984457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054686 (A332204 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005214.P14469721395132984457

namespace A005214

/-- `record[A054686(A332204(n+1)+2)]` -/
def P14469721395132984457.Spec : Prop :=
  ∀ n, P14469721395132984457.a n = A005214 (n + 1)

end A005214

/-! ## A005214.P1461718270952931785

`record[A054686(A332204(n+3))]`
-/

namespace A005214.P1461718270952931785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054686 (A332204 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005214.P1461718270952931785

namespace A005214

/-- `record[A054686(A332204(n+3))]` -/
def P1461718270952931785.Spec : Prop :=
  ∀ n, P1461718270952931785.a n = A005214 (n + 1)

end A005214

/-! ## A005214.P11243528422149487913

`record[A054686(A003963(n+1)+2)]`
-/

namespace A005214.P11243528422149487913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054686 (A003963 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005214.P11243528422149487913

namespace A005214

/-- `record[A054686(A003963(n+1)+2)]` -/
def P11243528422149487913.Spec : Prop :=
  ∀ n, P11243528422149487913.a n = A005214 (n + 1)

end A005214

/-! ## A005214.P12400606502354487886

`comp[∩[comp[(n+1)²], comp[∑[n+1]]]]`
-/

namespace A005214.P12400606502354487886
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∧ ∃ j, f4 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A005214.P12400606502354487886

namespace A005214

/-- `comp[∩[comp[(n+1)²], comp[∑[n+1]]]]` -/
def P12400606502354487886.Spec : Prop :=
  ∀ n, (P12400606502354487886.a n : ℤ) = A005214 (n + 1)

end A005214

/-! ## A005214.P10707116832512895588

`lt[tan(A000122(n)), A010054(n)]`
-/

namespace A005214.P10707116832512895588
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A000122 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A005214.P10707116832512895588

namespace A005214

/-- `lt[tan(A000122(n)), A010054(n)]` -/
def P10707116832512895588.Spec : Prop :=
  ∀ n, (P10707116832512895588.a n : ℤ) = A005214 (n + 1)

end A005214

/-! ## A005214.P13379675688445674497

`lt[tan(A000122(n)), A000005(8*n+1)%2]`
-/

namespace A005214.P13379675688445674497
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A000122 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (8 * n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A005214.P13379675688445674497

namespace A005214

/-- `lt[tan(A000122(n)), A000005(8*n+1)%2]` -/
def P13379675688445674497.Spec : Prop :=
  ∀ n, (P13379675688445674497.a n : ℤ) = A005214 (n + 1)

end A005214

/-!
# A005216: Number of unlabeled identity interval graphs with n nodes.

The programs for A005216, there is no canonical definition to state claims against.
-/

/-! ## A005216.P11988548214497761309

`A020103(n)-A305831(A008023(n))`
-/

namespace A005216.P11988548214497761309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020103 n - A305831 (A008023 n).toNat

end

end A005216.P11988548214497761309

/-! ## A005216.P7061781150551739639

`A014419(and(A020073(n), A151195(n)))`
-/

namespace A005216.P7061781150551739639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014419 (Int.land (A020073 n) (A151195 n)).toNat

end

end A005216.P7061781150551739639

/-!
# A005217: Number of unlabeled unit interval graphs with n nodes.

The programs for A005217, there is no canonical definition to state claims against.
-/

/-! ## A005217.P10597059385773022333

`A034887(A145141(n+3)+A000664(n+2))`
-/

namespace A005217.P10597059385773022333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A145141 (n + 3) + A000664 (n + 2)).toNat

end

end A005217.P10597059385773022333

/-! ## A005217.P12889965074661707906

`A352274(a(n-1)+1)` with `a(0)=1, a(1)=2`
-/

namespace A005217.P12889965074661707906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A352274 (a (n - 1) + 1).toNat

end

end A005217.P12889965074661707906

/-! ## A005217.P4537308062106769463

`ceil(root(A275577(2*n+1), 7))`
-/

namespace A005217.P4537308062106769463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A275577 (2 * n + 1) : ℝ) ^ (1 / (7 : ℝ))⌉

end

end A005217.P4537308062106769463

/-!
# A005218: Number of unlabeled reduced unit interval graphs on n nodes.

The programs for A005218, there is no canonical definition to state claims against.
-/

/-! ## A005218.P12105362948408639411

`A211359(A134869(n+1))`
-/

namespace A005218.P12105362948408639411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211359 (A134869 (n + 1)).toNat

end

end A005218.P12105362948408639411

/-! ## A005218.P684067994448037838

`A211359(A253145(n)+1)`
-/

namespace A005218.P684067994448037838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211359 (A253145 n + 1).toNat

end

end A005218.P684067994448037838

/-! ## A005218.P6644326238292328606

`A211359(A133263(n)+n)`
-/

namespace A005218.P6644326238292328606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211359 (A133263 n + (n : ℤ)).toNat

end

end A005218.P6644326238292328606

/-! ## A005218.P15853685972670465007

`A211359(A245300(∑[n]+1))`
-/

namespace A005218.P15853685972670465007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211359 (A245300 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A005218.P15853685972670465007

/-! ## A005218.P8040530609697391095

`A211359(A000124(n+1))%n!`
-/

namespace A005218.P8040530609697391095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211359 (A000124 (n + 1)).toNat) (Nat.factorial n : ℤ)

end

end A005218.P8040530609697391095

/-!
# A005219: Number of unlabeled identity unit interval graphs.

The programs for A005219, there is no canonical definition to state claims against.
-/

/-! ## A005219.P6793600828612033384

`or(A007122(n+1), A086008(A169970(n)))`
-/

namespace A005219.P6793600828612033384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007122 (n + 1)) (A086008 (A169970 n).toNat)

end

end A005219.P6793600828612033384

/-! ## A005219.P2943620986397266704

`A080224(A089549(n+1))+A007122(n+1)`
-/

namespace A005219.P2943620986397266704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080224 (A089549 (n + 1)).toNat + A007122 (n + 1)

end

end A005219.P2943620986397266704

/-! ## A005219.P10556794700852740674

`A117872(A033586(3*n))+A007122(n+1)`
-/

namespace A005219.P10556794700852740674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117872 (A033586 (3 * n)).toNat + A007122 (n + 1)

end

end A005219.P10556794700852740674

/-! ## A005219.P4872836717301333663

`A080224(A089549(n+1))+(A005043(n)-A005213(n))/2`
-/

namespace A005219.P4872836717301333663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080224 (A089549 (n + 1)).toNat : ℚ) + (A005043 n - A005213 n : ℚ) / 2

end

end A005219.P4872836717301333663

/-! ## A005219.P6080046217366910317

`A007122(A193979(∑[n]))`
-/

namespace A005219.P6080046217366910317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007122 (A193979 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A005219.P6080046217366910317

/-!
# A005220: Number of Dyck paths of knight moves.

The programs for A005220, there is no canonical definition to state claims against.
-/

/-! ## A005220.P10251200442884205214

`A096587(n²)`
-/

namespace A005220.P10251200442884205214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096587 (n ^ 2)

end

end A005220.P10251200442884205214

/-! ## A005220.P2039860507598141754

`lcm(A020985(n), A096587(A000290(n)))`
-/

namespace A005220.P2039860507598141754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A096587 (A000290 n).toNat)

end

end A005220.P2039860507598141754

/-! ## A005220.P13968506024810230950

`A096587(A000290(n))+A056594(2*n+3)`
-/

namespace A005220.P13968506024810230950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096587 (A000290 n).toNat + A056594 (2 * n + 3)

end

end A005220.P13968506024810230950

/-! ## A005220.P13622263223351730674

`A096587(A002620(2*n))%A065885(n+1)`
-/

namespace A005220.P13622263223351730674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096587 (A002620 (2 * n)).toNat) (A065885 (n + 1))

end

end A005220.P13622263223351730674

/-! ## A005220.P8909566891004872123

`A096587(A002620(2*n))*A323022(2*n+5)`
-/

namespace A005220.P8909566891004872123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096587 (A002620 (2 * n)).toNat * A323022 (2 * n + 5)

end

end A005220.P8909566891004872123

/-!
# A005221: Number of Dyck paths of knight moves.

The programs for A005221, there is no canonical definition to state claims against.
-/

/-! ## A005221.P7837473497524704187

`A005220(n+2)-A368375(n+1)`
-/

namespace A005221.P7837473497524704187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005220 (n + 2) - A368375 (n + 1)

end

end A005221.P7837473497524704187

/-! ## A005221.P4370149159479505511

`A096587(n²+1)`
-/

namespace A005221.P4370149159479505511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096587 (n ^ 2 + 1)

end

end A005221.P4370149159479505511

/-! ## A005221.P3503464619509336686

`and(-1, A096587(A002522(n)))`
-/

namespace A005221.P3503464619509336686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A096587 (A002522 n).toNat)

end

end A005221.P3503464619509336686

/-! ## A005221.P14720825284666527513

`A054977(n)*A096587(A002522(n))`
-/

namespace A005221.P14720825284666527513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A096587 (A002522 n).toNat

end

end A005221.P14720825284666527513

/-! ## A005221.P5519135968944098237

`A096587(A002522(n))+A000122(3*n+2)`
-/

namespace A005221.P5519135968944098237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096587 (A002522 n).toNat + A000122 (3 * n + 2)

end

end A005221.P5519135968944098237

/-! ## A005221.P9239219718368609151

`A096587(A002522(n))+A010892(3*n+2)`
-/

namespace A005221.P9239219718368609151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096587 (A002522 n).toNat + A010892 (3 * n + 2)

end

end A005221.P9239219718368609151

/-!
# A005222: Number of Dyck paths of knight moves.

The programs for A005222, there is no canonical definition to state claims against.
-/

/-! ## A005222.P9527715439048516575

`A062876(A067983(n))%A132408(n+1)`
-/

namespace A005222.P9527715439048516575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062876 (A067983 n).toNat) (A132408 (n + 1))

end

end A005222.P9527715439048516575

/-!
# A005223: Number of Dyck paths of knight moves.

The programs for A005223, there is no canonical definition to state claims against.
-/

/-! ## A005223.P8974722353873766088

`A075989(A293606(n)+A077028(n))`
-/

namespace A005223.P8974722353873766088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075989 (A293606 n + A077028 n).toNat

end

end A005223.P8974722353873766088

/-!
# A005225: Number of permutations of length n with equal cycles.

The programs for A005225, there is no canonical definition to state claims against.
-/

/-! ## A005225.P16441308645838682039

`∑[abs(Δ[A343576(n)])]`
-/

namespace A005225.P16441308645838682039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343576 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005225.P16441308645838682039

/-! ## A005225.P17953391420010352175

`A343576(n+1)+1`
-/

namespace A005225.P17953391420010352175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343576 (n + 1) + 1

end

end A005225.P17953391420010352175

/-! ## A005225.P1664222583822333587

`A364967(A089071(n+1))`
-/

namespace A005225.P1664222583822333587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364967 (A089071 (n + 1)).toNat

end

end A005225.P1664222583822333587

/-! ## A005225.P2536352755534157296

`A218868(∑[A003056(n)]+1)`
-/

namespace A005225.P2536352755534157296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218868 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A005225.P2536352755534157296

/-! ## A005225.P5724363858022669111

`A218868(A006463(n+1)+1)`
-/

namespace A005225.P5724363858022669111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218868 (A006463 (n + 1) + 1).toNat

end

end A005225.P5724363858022669111

/-! ## A005225.P10338377042619392907

`A218868(A060432(n+1)-n)`
-/

namespace A005225.P10338377042619392907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218868 (A060432 (n + 1) - (n : ℤ)).toNat

end

end A005225.P10338377042619392907

/-! ## A005225.P12443829480924607352

`A370602(n+1)/(n+1)`
-/

namespace A005225.P12443829480924607352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370602 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A005225.P12443829480924607352

/-!
# A005228: Sequence and first differences (A030124) together list all positive numbers exactly once.

The programs for A005228, there is no canonical definition to state claims against.
-/

/-! ## A005228.P16230596165804243935

`A081689(n)+1`
-/

namespace A005228.P16230596165804243935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081689 n + 1

end

end A005228.P16230596165804243935

/-! ## A005228.P12567840655006373665

`∑[A081688(n)+1]`
-/

namespace A005228.P12567840655006373665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081688 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005228.P12567840655006373665

/-! ## A005228.P6156482494677285495

`A109592(n+1)/2`
-/

namespace A005228.P6156482494677285495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109592 (n + 1) : ℚ) / 2

end

end A005228.P6156482494677285495

/-! ## A005228.P10977926378212172444

`A030124(n)+a(n-1)` with `a(0)=1`
-/

namespace A005228.P10977926378212172444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A030124 n + a (n - 1)

end

end A005228.P10977926378212172444

/-! ## A005228.P2516351245510360357

`A061578(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A005228.P2516351245510360357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A061578 n + a (n - 1)

end

end A005228.P2516351245510360357

/-! ## A005228.P9566131534845376613

`A065130(n+1)+∑[n+1]`
-/

namespace A005228.P9566131534845376613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065130 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A005228.P9566131534845376613

/-! ## A005228.P15448908849567819584

`a(n-1)+A225687(n)+n` with `a(0)=1`
-/

namespace A005228.P15448908849567819584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A225687 n + (n : ℤ))

end

end A005228.P15448908849567819584

/-! ## A005228.P2259003603664223817

`A294397(n)+A157928(n)`
-/

namespace A005228.P2259003603664223817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294397 n + A157928 n

end

end A005228.P2259003603664223817

/-! ## A005228.P1094545839517229054

`A061577(n+1)-A000007(n)`
-/

namespace A005228.P1094545839517229054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061577 (n + 1) - A000007 n

end

end A005228.P1094545839517229054

/-! ## A005228.P10374445266874072134

`A061577(n+1)/A054977(n)`
-/

namespace A005228.P10374445266874072134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061577 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A005228.P10374445266874072134

/-! ## A005228.P9929530468280606191

`A294397(n)+1-A019590(n+1)`
-/

namespace A005228.P9929530468280606191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294397 n + (1 - A019590 (n + 1))

end

end A005228.P9929530468280606191

/-! ## A005228.P14093532062832139063

`A056738(n+1)+1-A225687(n+1)`
-/

namespace A005228.P14093532062832139063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056738 (n + 1) + (1 - A225687 (n + 1))

end

end A005228.P14093532062832139063

/-! ## A005228.P14535599345882126532

`∑[A030124(n+1)]+1-A030124(n+1)`
-/

namespace A005228.P14535599345882126532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030124 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A030124 (n + 1))

end

end A005228.P14535599345882126532

/-! ## A005228.P11451473098793540550

`A061577(n+1)+A061578(n+1)-A030124(n+1)`
-/

namespace A005228.P11451473098793540550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061577 (n + 1) + (A061578 (n + 1) - A030124 (n + 1))

end

end A005228.P11451473098793540550

/-! ## A005228.P4541320315846425133

`A061577(n+2)-A030124(n+1)`
-/

namespace A005228.P4541320315846425133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061577 (n + 2) - A030124 (n + 1)

end

end A005228.P4541320315846425133

/-! ## A005228.P13510711474181105597

`A022953(n+2)-(A030124(n+1)+A030124(n+2))`
-/

namespace A005228.P13510711474181105597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022953 (n + 2) - (A030124 (n + 1) + A030124 (n + 2))

end

end A005228.P13510711474181105597

/-! ## A005228.P15394654095857960620

`∑[A167151(2*n)]+1`
-/

namespace A005228.P15394654095857960620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167151 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A005228.P15394654095857960620

/-! ## A005228.P5574191857010666756

`A167151(Δ[n²])`
-/

namespace A005228.P5574191857010666756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167151 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005228.P5574191857010666756

/-! ## A005228.P5403283620778153159

`A167151(2*n+1)+(2*n)%2`
-/

namespace A005228.P5403283620778153159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167151 (2 * n + 1) + ((2 * n % 2 : ℕ) : ℤ)

end

end A005228.P5403283620778153159

/-!
# A005229: a(1) = a(2) = 1; for n > 2, a(n) = a(a(n-2)) + a(n - a(n-2)).

The programs for A005229, the canonical program `A005229.P11013082721825659928` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005229 has offset 1).

The definition of A005229 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-2)-1)+a(n-a(n-2))` (program `A005229.P11013082721825659928`, by `A005229.P11013082721825659928.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005229.P11013082721825659928

`a(a(n-2)-1)+a(n-a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005229

/-- `a(a(n-2)-1)+a(n-a(n-2))` -/
def P11013082721825659928.Spec : Prop :=
  ∀ n, (P11013082721825659928.a n : ℤ) = A005229 (n + 1)

theorem P11013082721825659928.correct : P11013082721825659928.Spec := by
  intro n
  simp only [A005229, Nat.add_sub_cancel]

end A005229

/-! ## A005229.P15358129921744639444

`A051105(n)+a(n-1)` with `a(0)=1`
-/

namespace A005229.P15358129921744639444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051105 n + a (n - 1)

end

end A005229.P15358129921744639444

namespace A005229

/-- `A051105(n)+a(n-1)` -/
def P15358129921744639444.Spec : Prop :=
  ∀ n, P15358129921744639444.a n = A005229 (n + 1)

end A005229

/-! ## A005229.P602422466517466268

`∑[A051105(A028310(n))]+1`
-/

namespace A005229.P602422466517466268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051105 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A005229.P602422466517466268

namespace A005229

/-- `∑[A051105(A028310(n))]+1` -/
def P602422466517466268.Spec : Prop :=
  ∀ n, P602422466517466268.a n = A005229 (n + 1)

end A005229

/-! ## A005229.P12304709646165369871

`∑[A051105(A000038(n)+n)]`
-/

namespace A005229.P12304709646165369871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051105 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005229.P12304709646165369871

namespace A005229

/-- `∑[A051105(A000038(n)+n)]` -/
def P12304709646165369871.Spec : Prop :=
  ∀ n, P12304709646165369871.a n = A005229 (n + 1)

end A005229

/-! ## A005229.P11677595471087455199

`∑[A051105(or(n, A000038(n)))]`
-/

namespace A005229.P11677595471087455199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051105 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005229.P11677595471087455199

namespace A005229

/-- `∑[A051105(or(n, A000038(n)))]` -/
def P11677595471087455199.Spec : Prop :=
  ∀ n, P11677595471087455199.a n = A005229 (n + 1)

end A005229

/-! ## A005229.P14940116092228751107

`∑[A051105(n+1)]+1-A051105(n+1)`
-/

namespace A005229.P14940116092228751107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A051105 (n + 1))

end

end A005229.P14940116092228751107

namespace A005229

/-- `∑[A051105(n+1)]+1-A051105(n+1)` -/
def P14940116092228751107.Spec : Prop :=
  ∀ n, P14940116092228751107.a n = A005229 (n + 1)

end A005229

/-! ## A005229.P3404398958533361749

`A110654(A116591(n)-A051105(n+1))`
-/

namespace A005229.P3404398958533361749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A116591 n - A051105 (n + 1)).toNat

end

end A005229.P3404398958533361749

namespace A005229

/-- `A110654(A116591(n)-A051105(n+1))` -/
def P3404398958533361749.Spec : Prop :=
  ∀ n, P3404398958533361749.a n = A005229 (n + 1)

end A005229

/-! ## A005229.P5368355613266932366

`A065033(A116591(n)-A051105(n+1))`
-/

namespace A005229.P5368355613266932366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A116591 n - A051105 (n + 1)).toNat

end

end A005229.P5368355613266932366

namespace A005229

/-- `A065033(A116591(n)-A051105(n+1))` -/
def P5368355613266932366.Spec : Prop :=
  ∀ n, P5368355613266932366.a n = A005229 (n + 1)

end A005229

/-! ## A005229.P3850558145781223821

`∑[A000035(A116591(n)+A051105(n+1))]`
-/

namespace A005229.P3850558145781223821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A116591 n + A051105 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005229.P3850558145781223821

namespace A005229

/-- `∑[A000035(A116591(n)+A051105(n+1))]` -/
def P3850558145781223821.Spec : Prop :=
  ∀ n, P3850558145781223821.a n = A005229 (n + 1)

end A005229

/-! ## A005229.P4443162627346858856

`∑[A051105(A087758(n+1)+1)]`
-/

namespace A005229.P4443162627346858856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051105 (A087758 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005229.P4443162627346858856

namespace A005229

/-- `∑[A051105(A087758(n+1)+1)]` -/
def P4443162627346858856.Spec : Prop :=
  ∀ n, P4443162627346858856.a n = A005229 (n + 1)

end A005229

/-!
# A005230: Stern's sequence: a(1) = 1, a(n+1) is the sum of the m preceding terms, where m*(m-1)/2 < n <= m*(m+1)/2 or equivalently m = ceiling((sqrt(8*n+1)-1)/2) = A002024(n).

The programs for A005230, the canonical program `A005230.P10896589318031929858` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005230 has offset 1).

The definition of A005230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005230.P10131094757039915122

`∑[A066777(abs(1-n))]`
-/

namespace A005230.P10131094757039915122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066777 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005230.P10131094757039915122

namespace A005230

/-- `∑[A066777(abs(1-n))]` -/
def P10131094757039915122.Spec : Prop :=
  ∀ n, P10131094757039915122.a n = A005230 (n + 1)

end A005230

/-! ## A005230.P8210205989963067622

`A066777(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A005230.P8210205989963067622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A066777 (n - 1) + a (n - 1)

end

end A005230.P8210205989963067622

namespace A005230

/-- `A066777(n-1)+a(n-1)` -/
def P8210205989963067622.Spec : Prop :=
  ∀ n, P8210205989963067622.a n = A005230 (n + 1)

end A005230

/-! ## A005230.P10896589318031929858

`Δ[A005318(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005230

/-- `Δ[A005318(n)]` -/
def P10896589318031929858.Spec : Prop :=
  ∀ n, P10896589318031929858.a n = A005230 (n + 1)

theorem P10896589318031929858.correct : P10896589318031929858.Spec := by
  intro n
  simp only [A005230, Nat.add_sub_cancel]

end A005230

/-! ## A005230.P12637255176754857897

`A005318(n+1)-A005318(n)`
-/

namespace A005230.P12637255176754857897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005318 (n + 1) - A005318 n

end

end A005230.P12637255176754857897

namespace A005230

/-- `A005318(n+1)-A005318(n)` -/
def P12637255176754857897.Spec : Prop :=
  ∀ n, P12637255176754857897.a n = A005230 (n + 1)

theorem P12637255176754857897.correct : P12637255176754857897.Spec := by
  intro n
  simp only [A005230, Nat.add_sub_cancel, A005230.P12637255176754857897.a, A005230.P10896589318031929858.f1, A005230.P10896589318031929858.a, SequenceMachineLib.memo_apply]

end A005230

/-! ## A005230.P11413860312100240822

`∑[A066777(n)]+1-A066777(n)`
-/

namespace A005230.P11413860312100240822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A066777 n)

end

end A005230.P11413860312100240822

namespace A005230

/-- `∑[A066777(n)]+1-A066777(n)` -/
def P11413860312100240822.Spec : Prop :=
  ∀ n, P11413860312100240822.a n = A005230 (n + 1)

end A005230

/-! ## A005230.P1072662750649602761

`record[A005318(A007599(n))]-A005318(n)`
-/

namespace A005230.P1072662750649602761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005318 (A007599 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A005318 n

end

end A005230.P1072662750649602761

namespace A005230

/-- `record[A005318(A007599(n))]-A005318(n)` -/
def P1072662750649602761.Spec : Prop :=
  ∀ n, P1072662750649602761.a n = A005230 (n + 1)

end A005230

/-! ## A005230.P17526255800011946908

`record[A005318(A008611(n))]-A005318(n)`
-/

namespace A005230.P17526255800011946908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005318 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A005318 n

end

end A005230.P17526255800011946908

namespace A005230

/-- `record[A005318(A008611(n))]-A005318(n)` -/
def P17526255800011946908.Spec : Prop :=
  ∀ n, P17526255800011946908.a n = A005230 (n + 1)

end A005230

/-! ## A005230.P6162007336169076807

`record[A005318(A106249(n))]-A005318(n)`
-/

namespace A005230.P6162007336169076807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005318 (A106249 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A005318 n

end

end A005230.P6162007336169076807

namespace A005230

/-- `record[A005318(A106249(n))]-A005318(n)` -/
def P6162007336169076807.Spec : Prop :=
  ∀ n, P6162007336169076807.a n = A005230 (n + 1)

end A005230

/-! ## A005230.P16537284144871127314

`record[A005318(A106466(n))]-A005318(n)`
-/

namespace A005230.P16537284144871127314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005318 (A106466 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A005318 n

end

end A005230.P16537284144871127314

namespace A005230

/-- `record[A005318(A106466(n))]-A005318(n)` -/
def P16537284144871127314.Spec : Prop :=
  ∀ n, P16537284144871127314.a n = A005230 (n + 1)

end A005230

/-! ## A005230.P17074967177846357504

`record[A005318(A152271(n))]-A005318(n)`
-/

namespace A005230.P17074967177846357504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005318 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A005318 n

end

end A005230.P17074967177846357504

namespace A005230

/-- `record[A005318(A152271(n))]-A005318(n)` -/
def P17074967177846357504.Spec : Prop :=
  ∀ n, P17074967177846357504.a n = A005230 (n + 1)

end A005230

/-! ## A005230.P4547701886069576046

`A096858(∑[n]+1)`
-/

namespace A005230.P4547701886069576046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096858 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A005230.P4547701886069576046

namespace A005230

/-- `A096858(∑[n]+1)` -/
def P4547701886069576046.Spec : Prop :=
  ∀ n, P4547701886069576046.a n = A005230 (n + 1)

end A005230

/-!
# A005231: Odd abundant numbers (odd numbers m whose sum of divisors exceeds 2m).

The programs for A005231, there is no canonical definition to state claims against.
-/

/-! ## A005231.P2539082097596555904

`A106431(n+1)+1`
-/

namespace A005231.P2539082097596555904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106431 (n + 1) + 1

end

end A005231.P2539082097596555904

/-! ## A005231.P13485754993957547798

`∪[A156942(n+1), A174865(n+1)]`
-/

namespace A005231.P13485754993957547798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005231.P13485754993957547798

/-! ## A005231.P1781051037549979374

`∪[A174865(n+1), A357607(n+1)]`
-/

namespace A005231.P1781051037549979374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005231.P1781051037549979374

/-! ## A005231.P6364920917658638178

`∪[A174830(n+1)², A174865(n+1)]`
-/

namespace A005231.P6364920917658638178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174830 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005231.P6364920917658638178

/-! ## A005231.P5235916233601766083

`∪[A006038(n+1), A248694(n+1)]`
-/

namespace A005231.P5235916233601766083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005231.P5235916233601766083

/-! ## A005231.P5575217176545856556

`∪[A174865(n+1), A248694(n+1)]`
-/

namespace A005231.P5575217176545856556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005231.P5575217176545856556

/-! ## A005231.P18053482980420567406

`∪[A248694(n+1), A381547(n+1)]`
-/

namespace A005231.P18053482980420567406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005231.P18053482980420567406

/-! ## A005231.P8948035098748258909

`filter[A174830(n+1), A294936(#)]`
-/

namespace A005231.P8948035098748258909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A005231.P8948035098748258909

/-! ## A005231.P11601540944967477934

`filter[A174830(n+1), A378550(#)]`
-/

namespace A005231.P11601540944967477934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378550 (f1 j).toNat = 1) n)

end

end A005231.P11601540944967477934

/-! ## A005231.P18355323170975681778

`filter[A294576(n+1), A294936(#)]`
-/

namespace A005231.P18355323170975681778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A005231.P18355323170975681778

/-! ## A005231.P15681311400267438959

`filter[A294576(n+1), A378550(#)]`
-/

namespace A005231.P15681311400267438959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378550 (f1 j).toNat = 1) n)

end

end A005231.P15681311400267438959

/-! ## A005231.P18213096215737508460

`filter[A392653(n+1), A360128(#)]`
-/

namespace A005231.P18213096215737508460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360128 (f1 j).toNat = 1) n)

end

end A005231.P18213096215737508460

/-! ## A005231.P297418923247969858

`filter[A392653(n+1), A373157(#)]`
-/

namespace A005231.P297418923247969858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A005231.P297418923247969858

/-! ## A005231.P7833974995481781784

`filter[A392653(n+1), A379952(#)]`
-/

namespace A005231.P7833974995481781784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A005231.P7833974995481781784

/-! ## A005231.P11625938898662048110

`A000265(∪[A174865(n+1), A333950(n+1)])`
-/

namespace A005231.P11625938898662048110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333950 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A005231.P11625938898662048110

/-! ## A005231.P5095225078192030787

`filter[A392653(n+1), A035263(#)]`
-/

namespace A005231.P5095225078192030787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A005231.P5095225078192030787

/-! ## A005231.P1177942481855187259

`filter[A392653(n+1), A152822(#)]`
-/

namespace A005231.P1177942481855187259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A005231.P1177942481855187259

/-! ## A005231.P12487694426481037677

`∩[A392437(n+1), A392653(n+1)]`
-/

namespace A005231.P12487694426481037677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005231.P12487694426481037677

/-!
# A005232: Expansion of (1-x+x^2)/((1-x)^2*(1-x^2)*(1-x^4)).

The programs for A005232, the canonical program `A005232.P11345116238281395151` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005232 has offset 0).

The definition of A005232 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+x^2)/(1-2x+2x^3-2x^4+2x^5-2x^7+x^8))` (program `A005232.P11345116238281395151`, by `A005232.P11345116238281395151.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005232.P11345116238281395151

`ogf((1-x+x^2)/(1-2x+2x^3-2x^4+2x^5-2x^7+x^8))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005232

/-- `ogf((1-x+x^2)/(1-2x+2x^3-2x^4+2x^5-2x^7+x^8))` -/
def P11345116238281395151.Spec : Prop :=
  ∀ n, P11345116238281395151.a n = A005232 n

theorem P11345116238281395151.correct : P11345116238281395151.Spec := by
  intro n
  simp only [A005232]

end A005232

/-! ## A005232.P6176285857554842480

`ceil((n+1)*(2*n²+16*n+39+9*(-1)^n)/96)`
-/

namespace A005232.P6176285857554842480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1 : ℤ) * ((2 * n ^ 2 + 16 * n + 39 : ℤ) + 9 * (-1) ^ n) : ℚ) / 96⌉

end

end A005232.P6176285857554842480

namespace A005232

/-- `ceil((n+1)*(2*n²+16*n+39+9*(-1)^n)/96)` -/
def P6176285857554842480.Spec : Prop :=
  ∀ n, P6176285857554842480.a n = A005232 n

end A005232

/-! ## A005232.P14977833807478703543

`A389571(n+4)-A002623(n)`
-/

namespace A005232.P14977833807478703543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389571 (n + 4) - A002623 n

end

end A005232.P14977833807478703543

namespace A005232

/-- `A389571(n+4)-A002623(n)` -/
def P14977833807478703543.Spec : Prop :=
  ∀ n, P14977833807478703543.a n = A005232 n

end A005232

/-! ## A005232.P11612678973115755015

`∑[floor(∑[1/2-a(n-1)]²)]` with `a(0)=1`
-/

namespace A005232.P11612678973115755015
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (1 : ℚ) / 2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f2 j) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005232.P11612678973115755015

namespace A005232

/-- `∑[floor(∑[1/2-a(n-1)]²)]` -/
def P11612678973115755015.Spec : Prop :=
  ∀ n, P11612678973115755015.a n = A005232 n

end A005232

/-! ## A005232.P11454612116228555492

`∑[A008733(n)]`
-/

namespace A005232.P11454612116228555492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005232.P11454612116228555492

namespace A005232

/-- `∑[A008733(n)]` -/
def P11454612116228555492.Spec : Prop :=
  ∀ n, P11454612116228555492.a n = A005232 n

end A005232

/-! ## A005232.P16943367031647603745

`A053307(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A005232.P16943367031647603745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A053307 n - a (n - 2)

end

end A005232.P16943367031647603745

namespace A005232

/-- `A053307(n)-a(n-2)` -/
def P16943367031647603745.Spec : Prop :=
  ∀ n, P16943367031647603745.a n = A005232 n

end A005232

/-! ## A005232.P3012066255960562499

`A106607(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A005232.P3012066255960562499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A106607 n - a (n - 3)

end

end A005232.P3012066255960562499

namespace A005232

/-- `A106607(n)-a(n-3)` -/
def P3012066255960562499.Spec : Prop :=
  ∀ n, P3012066255960562499.a n = A005232 n

end A005232

/-! ## A005232.P4553756690153311305

`A060805(n+1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A005232.P4553756690153311305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A060805 (n + 1) + a (n - 1)

end

end A005232.P4553756690153311305

namespace A005232

/-- `A060805(n+1)+a(n-1)` -/
def P4553756690153311305.Spec : Prop :=
  ∀ n, P4553756690153311305.a n = A005232 n

end A005232

/-! ## A005232.P9030431948893190108

`A266769(n)+A026810(n)`
-/

namespace A005232.P9030431948893190108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 n + A026810 n

end

end A005232.P9030431948893190108

namespace A005232

/-- `A266769(n)+A026810(n)` -/
def P9030431948893190108.Spec : Prop :=
  ∀ n, P9030431948893190108.a n = A005232 n

end A005232

/-! ## A005232.P14521887554659981574

`A026810(n)+∑[A008731(n)]`
-/

namespace A005232.P14521887554659981574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005232.P14521887554659981574

namespace A005232

/-- `A026810(n)+∑[A008731(n)]` -/
def P14521887554659981574.Spec : Prop :=
  ∀ n, P14521887554659981574.a n = A005232 n

end A005232

/-! ## A005232.P17331607445335631855

`A320592(n+6)+2*A026810(n)`
-/

namespace A005232.P17331607445335631855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320592 (n + 6) + 2 * A026810 n

end

end A005232.P17331607445335631855

namespace A005232

/-- `A320592(n+6)+2*A026810(n)` -/
def P17331607445335631855.Spec : Prop :=
  ∀ n, P17331607445335631855.a n = A005232 n

end A005232

/-! ## A005232.P15357852611932116492

`2*A266769(n)-A320592(n+6)`
-/

namespace A005232.P15357852611932116492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266769 n - A320592 (n + 6)

end

end A005232.P15357852611932116492

namespace A005232

/-- `2*A266769(n)-A320592(n+6)` -/
def P15357852611932116492.Spec : Prop :=
  ∀ n, P15357852611932116492.a n = A005232 n

end A005232

/-! ## A005232.P3464566474980945625

`A026810(n+2)+A008765(n)`
-/

namespace A005232.P3464566474980945625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 2) + A008765 n

end

end A005232.P3464566474980945625

namespace A005232

/-- `A026810(n+2)+A008765(n)` -/
def P3464566474980945625.Spec : Prop :=
  ∀ n, P3464566474980945625.a n = A005232 n

end A005232

/-! ## A005232.P396483428246120650

`A008804(n+1)-A008805(n+1)`
-/

namespace A005232.P396483428246120650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 (n + 1) - A008805 (n + 1)

end

end A005232.P396483428246120650

namespace A005232

/-- `A008804(n+1)-A008805(n+1)` -/
def P396483428246120650.Spec : Prop :=
  ∀ n, P396483428246120650.a n = A005232 n

end A005232

/-! ## A005232.P7568926524682352126

`A173722(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A005232.P7568926524682352126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A173722 (n + 2) - a (n - 1)

end

end A005232.P7568926524682352126

namespace A005232

/-- `A173722(n+2)-a(n-1)` -/
def P7568926524682352126.Spec : Prop :=
  ∀ n, P7568926524682352126.a n = A005232 n

end A005232

/-! ## A005232.P2958075691456892385

`A008763(n+2)+A001400(n)`
-/

namespace A005232.P2958075691456892385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (n + 2) + A001400 n

end

end A005232.P2958075691456892385

namespace A005232

/-- `A008763(n+2)+A001400(n)` -/
def P2958075691456892385.Spec : Prop :=
  ∀ n, P2958075691456892385.a n = A005232 n

end A005232

/-! ## A005232.P15417425222198680838

`A008804(2*n+1)+A008804(n+1)-A049778(n+2)`
-/

namespace A005232.P15417425222198680838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 (2 * n + 1) + (A008804 (n + 1) - A049778 (n + 2))

end

end A005232.P15417425222198680838

namespace A005232

/-- `A008804(2*n+1)+A008804(n+1)-A049778(n+2)` -/
def P15417425222198680838.Spec : Prop :=
  ∀ n, P15417425222198680838.a n = A005232 n

end A005232

/-! ## A005232.P16473104365471854164

`A029139(3*n)`
-/

namespace A005232.P16473104365471854164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029139 (3 * n)

end

end A005232.P16473104365471854164

namespace A005232

/-- `A029139(3*n)` -/
def P16473104365471854164.Spec : Prop :=
  ∀ n, P16473104365471854164.a n = A005232 n

end A005232

/-! ## A005232.P14270681090936395062

`∑[A025804(3*n)]`
-/

namespace A005232.P14270681090936395062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025804 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005232.P14270681090936395062

namespace A005232

/-- `∑[A025804(3*n)]` -/
def P14270681090936395062.Spec : Prop :=
  ∀ n, P14270681090936395062.a n = A005232 n

end A005232

/-! ## A005232.P15955517860448332311

`A029352(6*n)`
-/

namespace A005232.P15955517860448332311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029352 (6 * n)

end

end A005232.P15955517860448332311

namespace A005232

/-- `A029352(6*n)` -/
def P15955517860448332311.Spec : Prop :=
  ∀ n, P15955517860448332311.a n = A005232 n

end A005232

/-!
# A005233: A finite sequence associated with the Lie algebra A_5.

The programs for A005233, there is no canonical definition to state claims against.
-/

/-! ## A005233.P11028218532641959501

`lt[A302037(a(n-1)+n)², 3]+1` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A005233.P11028218532641959501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  A302037 (f1 (n - 1) + (n : ℤ)).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A005233.P11028218532641959501

/-! ## A005233.P14255685019072204046

`record[gcd(round((n-1)/2)+2, A008305(2*(n+2)))]`
-/

namespace A005233.P14255685019072204046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 2) + 2) (A008305 (2 * (n + 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005233.P14255685019072204046

/-! ## A005233.P3857365187001968153

`A005423(lt[n%2, (n+1)/∏{p}[n+1, (n+1)/#]])`
-/

namespace A005233.P3857365187001968153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f3 n), (n + 1 : ℚ) / (p : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005423 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A005233.P3857365187001968153

/-! ## A005233.P8210100567005992010

`∑[gcd(∑{d}[n+1, (n+1)*#*#%2], A008277(2*(n+1)))]`
-/

namespace A005233.P8210100567005992010
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f2 n), (n + 1) * (d * (d % 2)) : ℕ) : ℤ) (A008277 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005233.P8210100567005992010

/-! ## A005233.P9827898010006369320

`∑[A200154(A068763(n))]`
-/

namespace A005233.P9827898010006369320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (A068763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005233.P9827898010006369320

/-!
# A005234: Primes p such that 1 + product of primes up to p is prime.

The programs for A005234, there is no canonical definition to state claims against.
-/

/-! ## A005234.P12019690151920996886

`A000040(A014545(n+2))`
-/

namespace A005234.P12019690151920996886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A014545 (n + 2)).toNat

end

end A005234.P12019690151920996886

/-! ## A005234.P11163364485368696338

`A008578(A014545(n+2)+1)`
-/

namespace A005234.P11163364485368696338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A014545 (n + 2) + 1).toNat

end

end A005234.P11163364485368696338

/-! ## A005234.P4207019849783201840

`A182986(A014545(n+2)+1)`
-/

namespace A005234.P4207019849783201840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A014545 (n + 2) + 1).toNat

end

end A005234.P4207019849783201840

/-! ## A005234.P731485550580286750

`∑{d}[A014545(n+2), A007444(#)]`
-/

namespace A005234.P731485550580286750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A005234.P731485550580286750

/-! ## A005234.P4972417499392239361

`A008864(A014545(n+2))-A184303(n+1)`
-/

namespace A005234.P4972417499392239361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A014545 (n + 2)).toNat - A184303 (n + 1)

end

end A005234.P4972417499392239361

/-!
# A005235: Fortunate numbers: least m > 1 such that m + prime(n)# is prime, where p# denotes the product of all primes <= p.

The programs for A005235, there is no canonical definition to state claims against.
-/

/-! ## A005235.P4008176332639665239

`A035345(n+1)-A002110(n+1)`
-/

namespace A005235.P4008176332639665239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035345 (n + 1) - A002110 (n + 1)

end

end A005235.P4008176332639665239

/-! ## A005235.P7762384550815839739

`A281318(n+1)+2`
-/

namespace A005235.P7762384550815839739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281318 (n + 1) + 2

end

end A005235.P7762384550815839739

/-! ## A005235.P18394285678720871282

`A009056(A281318(n+1))`
-/

namespace A005235.P18394285678720871282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A281318 (n + 1)).toNat

end

end A005235.P18394285678720871282

/-! ## A005235.P8282962469699029700

`A051543(A281318(-xor(n, -1)))`
-/

namespace A005235.P8282962469699029700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051543 (A281318 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A005235.P8282962469699029700

/-! ## A005235.P11972250171711505910

`A051543(A281318(1-(n-2*n)))`
-/

namespace A005235.P11972250171711505910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051543 (A281318 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat).toNat

end

end A005235.P11972250171711505910

/-! ## A005235.P5572951530347716669

`p?[A006005(A348424(n)+n)]`
-/

namespace A005235.P5572951530347716669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A348424 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A005235.P5572951530347716669

/-! ## A005235.P1434749007705412666

`A065091(A348424(n+1)+n)`
-/

namespace A005235.P1434749007705412666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A348424 (n + 1) + (n : ℤ)).toNat

end

end A005235.P1434749007705412666

/-! ## A005235.P12129143504053007149

`A000040(A348424(n+1)+1+n)`
-/

namespace A005235.P12129143504053007149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A348424 (n + 1) + 1 + (n : ℤ)).toNat

end

end A005235.P12129143504053007149

/-! ## A005235.P3165998522737504767

`A008578(A348424(n+1)+n+2)`
-/

namespace A005235.P3165998522737504767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A348424 (n + 1) + (n + 2 : ℤ)).toNat

end

end A005235.P3165998522737504767

/-! ## A005235.P17746336100369776992

`A000040(A098168(n+1))`
-/

namespace A005235.P17746336100369776992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A098168 (n + 1)).toNat

end

end A005235.P17746336100369776992

/-!
# A005236: Barriers for omega(n): numbers n such that, for all m < n, m + omega(m) <= n.

The programs for A005236, there is no canonical definition to state claims against.
-/

/-! ## A005236.P16466101914753324735

`record[A103516(∑[A100806(n+1)])]`
-/

namespace A005236.P16466101914753324735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100806 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103516 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005236.P16466101914753324735

/-! ## A005236.P11837182436359655486

`record[A028233(n+1)+A000034(A098775(n+1))]`
-/

namespace A005236.P11837182436359655486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1) + A000034 (A098775 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005236.P11837182436359655486

/-! ## A005236.P5452604772132114977

`record[A034684(n+1)+A000034(A098775(n+1))]`
-/

namespace A005236.P5452604772132114977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (n + 1) + A000034 (A098775 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005236.P5452604772132114977

/-! ## A005236.P4291464223457857993

`record[A217434(n+1)+A000034(A098775(n+1))]`
-/

namespace A005236.P4291464223457857993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217434 (n + 1) + A000034 (A098775 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005236.P4291464223457857993

/-!
# A005237: Numbers k such that k and k+1 have the same number of divisors.

The programs for A005237, the canonical program `A005237.P9029700576997496255` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005237 has offset 1).

The definition of A005237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6947 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005237.P5442161247666619868

`A083795(n+1)-1`
-/

namespace A005237.P5442161247666619868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083795 (n + 1) - 1

end

end A005237.P5442161247666619868

namespace A005237

/-- `A083795(n+1)-1` -/
def P5442161247666619868.Spec : Prop :=
  ∀ n, P5442161247666619868.a n = A005237 (n + 1)

theorem P5442161247666619868.correct : P5442161247666619868.Spec := by
  intro n
  simp only [A005237, Nat.add_sub_cancel, A005237.P5442161247666619868.a, A005237.P9029700576997496255.f1, A005237.P9029700576997496255.a, A083795, A083795.P8166944767162497193.a, A140128, A140128.P9211484001941945419.f1, A140128.P9211484001941945419.f3, A140128.P9211484001941945419.f2, A140128.P9211484001941945419.a, A361022, A361022.P13909982394743935794.f1, A361022.P13909982394743935794.f2, A361022.P13909982394743935794.a, A000007, A000007.P6599383543502402472.a, A000038, A000038.P13734959004655594922.a, A010553, A010553.P11932377395426747626.a, A054519, A054519.P3292618312068876157.a, A000005, A000005.P16091521709108585461.a, A006218, A006218.P9218434490128439557.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005237

/-! ## A005237.P18347245906694568622

`∪[A052213(n+1), A333055(n+1)]`
-/

namespace A005237.P18347245906694568622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005237.P18347245906694568622

namespace A005237

/-- `∪[A052213(n+1), A333055(n+1)]` -/
def P18347245906694568622.Spec : Prop :=
  ∀ n, (P18347245906694568622.a n : ℤ) = A005237 (n + 1)

end A005237

/-! ## A005237.P9029700576997496255

`filter[A140128(n+1), A361022(#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A005237

/-- `filter[A140128(n+1), A361022(#)]` -/
def P9029700576997496255.Spec : Prop :=
  ∀ n, P9029700576997496255.a n = A005237 (n + 1)

theorem P9029700576997496255.correct : P9029700576997496255.Spec := by
  intro n
  simp only [A005237, Nat.add_sub_cancel]

end A005237

/-! ## A005237.P2370892685181141955

`eq[A000005(n+1), A000005(n+2)]+1`
-/

namespace A005237.P2370892685181141955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A005237.P2370892685181141955

namespace A005237

/-- `eq[A000005(n+1), A000005(n+2)]+1` -/
def P2370892685181141955.Spec : Prop :=
  ∀ n, (P2370892685181141955.a n : ℤ) = A005237 (n + 1)

end A005237

/-! ## A005237.P13642187718000460995

`filter[A057921(n), A361022(#)]`
-/

namespace A005237.P13642187718000460995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361022 (f1 j).toNat = 1) n)

end

end A005237.P13642187718000460995

namespace A005237

/-- `filter[A057921(n), A361022(#)]` -/
def P13642187718000460995.Spec : Prop :=
  ∀ n, P13642187718000460995.a n = A005237 (n + 1)

end A005237

/-! ## A005237.P13102160384993829080

`∩[A140128(n+1), A057921(n)]`
-/

namespace A005237.P13102160384993829080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057921 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005237.P13102160384993829080

namespace A005237

/-- `∩[A140128(n+1), A057921(n)]` -/
def P13102160384993829080.Spec : Prop :=
  ∀ n, (P13102160384993829080.a n : ℤ) = A005237 (n + 1)

end A005237

/-! ## A005237.P11024789559831342989

`∩[A057921(n), A057922(n)]`
-/

namespace A005237.P11024789559831342989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057921 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057922 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005237.P11024789559831342989

namespace A005237

/-- `∩[A057921(n), A057922(n)]` -/
def P11024789559831342989.Spec : Prop :=
  ∀ n, (P11024789559831342989.a n : ℤ) = A005237 (n + 1)

end A005237

/-! ## A005237.P5813699738332916672

`∩[A140128(n+1), A057922(n)]`
-/

namespace A005237.P5813699738332916672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057922 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005237.P5813699738332916672

namespace A005237

/-- `∩[A140128(n+1), A057922(n)]` -/
def P5813699738332916672.Spec : Prop :=
  ∀ n, (P5813699738332916672.a n : ℤ) = A005237 (n + 1)

end A005237

/-! ## A005237.P12137077752605629016

`∩[A140128(n+1), A391397(n+1)]`
-/

namespace A005237.P12137077752605629016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005237.P12137077752605629016

namespace A005237

/-- `∩[A140128(n+1), A391397(n+1)]` -/
def P12137077752605629016.Spec : Prop :=
  ∀ n, (P12137077752605629016.a n : ℤ) = A005237 (n + 1)

end A005237

/-! ## A005237.P8163465796707412558

`∩[A343819(n+1), A391397(n+1)]`
-/

namespace A005237.P8163465796707412558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005237.P8163465796707412558

namespace A005237

/-- `∩[A343819(n+1), A391397(n+1)]` -/
def P8163465796707412558.Spec : Prop :=
  ∀ n, (P8163465796707412558.a n : ℤ) = A005237 (n + 1)

end A005237

/-! ## A005237.P13025783519387822240

`eq[0, A182394(n+2)]+1`
-/

namespace A005237.P13025783519387822240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182394 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005237.P13025783519387822240

namespace A005237

/-- `eq[0, A182394(n+2)]+1` -/
def P13025783519387822240.Spec : Prop :=
  ∀ n, (P13025783519387822240.a n : ℤ) = A005237 (n + 1)

end A005237

/-! ## A005237.P14382314037171241548

`filter[A063450(n+1), A361022(#)]`
-/

namespace A005237.P14382314037171241548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361022 (f1 j).toNat = 1) n)

end

end A005237.P14382314037171241548

namespace A005237

/-- `filter[A063450(n+1), A361022(#)]` -/
def P14382314037171241548.Spec : Prop :=
  ∀ n, P14382314037171241548.a n = A005237 (n + 1)

end A005237

/-! ## A005237.P10598158140917267265

`∩[A063450(n+1), A057922(n)]`
-/

namespace A005237.P10598158140917267265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057922 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005237.P10598158140917267265

namespace A005237

/-- `∩[A063450(n+1), A057922(n)]` -/
def P10598158140917267265.Spec : Prop :=
  ∀ n, (P10598158140917267265.a n : ℤ) = A005237 (n + 1)

end A005237

/-! ## A005237.P17456030061354506029

`eq[0, A341062(n+1)]`
-/

namespace A005237.P17456030061354506029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005237.P17456030061354506029

namespace A005237

/-- `eq[0, A341062(n+1)]` -/
def P17456030061354506029.Spec : Prop :=
  ∀ n, (P17456030061354506029.a n : ℤ) = A005237 (n + 1)

end A005237

/-! ## A005237.P7734761656896027181

`eq[n, A347982(n+1)]`
-/

namespace A005237.P7734761656896027181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347982 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005237.P7734761656896027181

namespace A005237

/-- `eq[n, A347982(n+1)]` -/
def P7734761656896027181.Spec : Prop :=
  ∀ n, (P7734761656896027181.a n : ℤ) = A005237 (n + 1)

end A005237

/-! ## A005237.P1411025020888131270

`eq[1, A130638(n+1)]+1`
-/

namespace A005237.P1411025020888131270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130638 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005237.P1411025020888131270

namespace A005237

/-- `eq[1, A130638(n+1)]+1` -/
def P1411025020888131270.Spec : Prop :=
  ∀ n, (P1411025020888131270.a n : ℤ) = A005237 (n + 1)

end A005237

/-! ## A005237.P4144685827994566813

`eq[1, A171937(n+1)]+1`
-/

namespace A005237.P4144685827994566813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171937 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005237.P4144685827994566813

namespace A005237

/-- `eq[1, A171937(n+1)]+1` -/
def P4144685827994566813.Spec : Prop :=
  ∀ n, (P4144685827994566813.a n : ℤ) = A005237 (n + 1)

end A005237

/-! ## A005237.P6028214143215543631

`A023443(A083795(n+1))`
-/

namespace A005237.P6028214143215543631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A083795 (n + 1)).toNat

end

end A005237.P6028214143215543631

namespace A005237

/-- `A023443(A083795(n+1))` -/
def P6028214143215543631.Spec : Prop :=
  ∀ n, P6028214143215543631.a n = A005237 (n + 1)

end A005237

/-! ## A005237.P1333470692625398348

`filter[A057921(n), A130638(#)]`
-/

namespace A005237.P1333470692625398348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130638 (f1 j).toNat = 1) n)

end

end A005237.P1333470692625398348

namespace A005237

/-- `filter[A057921(n), A130638(#)]` -/
def P1333470692625398348.Spec : Prop :=
  ∀ n, P1333470692625398348.a n = A005237 (n + 1)

end A005237

/-! ## A005237.P5229354916062532181

`filter[A057922(n), A130638(#)]`
-/

namespace A005237.P5229354916062532181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130638 (f1 j).toNat = 1) n)

end

end A005237.P5229354916062532181

namespace A005237

/-- `filter[A057922(n), A130638(#)]` -/
def P5229354916062532181.Spec : Prop :=
  ∀ n, P5229354916062532181.a n = A005237 (n + 1)

end A005237

/-!
# A005238: Numbers k such that k, k+1 and k+2 have the same number of divisors.

The programs for A005238, the canonical program `A005238.P2704022991964426185` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005238 has offset 1).

The definition of A005238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005238.P16896655742902478360

`A169834(n+1)-1`
-/

namespace A005238.P16896655742902478360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169834 (n + 1) - 1

end

end A005238.P16896655742902478360

namespace A005238

/-- `A169834(n+1)-1` -/
def P16896655742902478360.Spec : Prop :=
  ∀ n, P16896655742902478360.a n = A005238 (n + 1)

theorem P16896655742902478360.correct : P16896655742902478360.Spec := by
  intro n
  simp only [A005238, Nat.add_sub_cancel, A005238.P16896655742902478360.a, A005238.P2704022991964426185.f1, A005238.P2704022991964426185.f2, A005238.P2704022991964426185.a, A075039, A075039.P15668940356083047975.f1, A075039.P15668940356083047975.f2, A075039.P15668940356083047975.a, A169834, A169834.P3285917251730372984.a, A171666, A171666.P5620257782220050246.f1, A171666.P5620257782220050246.f2, A171666.P5620257782220050246.a, A006073, A006073.P326677615052813534.f1, A006073.P326677615052813534.f3, A006073.P326677615052813534.f2, A006073.P326677615052813534.a, A073251, A073251.P16935436493994467128.f1, A073251.P16935436493994467128.f2, A073251.P16935436493994467128.a, A171665, A171665.P4832445183620559262.f1, A171665.P4832445183620559262.f2, A171665.P4832445183620559262.a, A005237, A005237.P9029700576997496255.f1, A005237.P9029700576997496255.a, A006049, A006049.P14504587564879316839.f1, A006049.P14504587564879316839.f2, A006049.P14504587564879316839.a, A121495, A121495.P8991942477691651037.f1, A121495.P8991942477691651037.f2, A121495.P8991942477691651037.a, A357077, A357077.P18209968260014703734.f1, A357077.P18209968260014703734.f2, A357077.P18209968260014703734.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A033942, A033942.P4752248338100259006.f1, A033942.P4752248338100259006.f2, A033942.P4752248338100259006.a, A120944, A120944.P15601852327349088346.f1, A120944.P15601852327349088346.f2, A120944.P15601852327349088346.a, A140128, A140128.P9211484001941945419.f1, A140128.P9211484001941945419.f3, A140128.P9211484001941945419.f2, A140128.P9211484001941945419.a, A361022, A361022.P13909982394743935794.f1, A361022.P13909982394743935794.f2, A361022.P13909982394743935794.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005238

/-! ## A005238.P11707998169151342266

`∪[A039833(n+1), A171666(n+1)]`
-/

namespace A005238.P11707998169151342266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005238.P11707998169151342266

namespace A005238

/-- `∪[A039833(n+1), A171666(n+1)]` -/
def P11707998169151342266.Spec : Prop :=
  ∀ n, (P11707998169151342266.a n : ℤ) = A005238 (n + 1)

end A005238

/-! ## A005238.P2037701446805655893

`∪[A052214(n+1), A171666(n+1)]`
-/

namespace A005238.P2037701446805655893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005238.P2037701446805655893

namespace A005238

/-- `∪[A052214(n+1), A171666(n+1)]` -/
def P2037701446805655893.Spec : Prop :=
  ∀ n, (P2037701446805655893.a n : ℤ) = A005238 (n + 1)

end A005238

/-! ## A005238.P2704022991964426185

`∪[A075039(n+1), A171666(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A005238

/-- `∪[A075039(n+1), A171666(n+1)]` -/
def P2704022991964426185.Spec : Prop :=
  ∀ n, (P2704022991964426185.a n : ℤ) = A005238 (n + 1)

theorem P2704022991964426185.correct : P2704022991964426185.Spec := by
  intro n
  simp only [A005238, Nat.add_sub_cancel]

end A005238

/-! ## A005238.P17341114704835718809

`∪[A171666(n+1), A359746(n+1)]`
-/

namespace A005238.P17341114704835718809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005238.P17341114704835718809

namespace A005238

/-- `∪[A171666(n+1), A359746(n+1)]` -/
def P17341114704835718809.Spec : Prop :=
  ∀ n, (P17341114704835718809.a n : ℤ) = A005238 (n + 1)

end A005238

/-! ## A005238.P4207799847755834546

`(A169834(n+1)+A039833(n+1))%A248201(n+1)`
-/

namespace A005238.P4207799847755834546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169834 (n + 1) + A039833 (n + 1)) (A248201 (n + 1))

end

end A005238.P4207799847755834546

namespace A005238

/-- `(A169834(n+1)+A039833(n+1))%A248201(n+1)` -/
def P4207799847755834546.Spec : Prop :=
  ∀ n, P4207799847755834546.a n = A005238 (n + 1)

end A005238

/-! ## A005238.P3623818754451100732

`∩[A005237(n+1)-1, A005237(n+1)]`
-/

namespace A005238.P3623818754451100732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005238.P3623818754451100732

namespace A005238

/-- `∩[A005237(n+1)-1, A005237(n+1)]` -/
def P3623818754451100732.Spec : Prop :=
  ∀ n, (P3623818754451100732.a n : ℤ) = A005238 (n + 1)

end A005238

/-! ## A005238.P2398948259368042780

`∩[A074757(n+1), A083795(n+1)]-1`
-/

namespace A005238.P2398948259368042780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083795 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A005238.P2398948259368042780

namespace A005238

/-- `∩[A074757(n+1), A083795(n+1)]-1` -/
def P2398948259368042780.Spec : Prop :=
  ∀ n, P2398948259368042780.a n = A005238 (n + 1)

end A005238

/-! ## A005238.P1105880385125528731

`A005237(eq[1, A005237(n+2)-A005237(n+1)]+1)`
-/

namespace A005238.P1105880385125528731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 2) - A005237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A005238.P1105880385125528731

namespace A005238

/-- `A005237(eq[1, A005237(n+2)-A005237(n+1)]+1)` -/
def P1105880385125528731.Spec : Prop :=
  ∀ n, P1105880385125528731.a n = A005238 (n + 1)

end A005238

/-! ## A005238.P9180803521402763917

`A005237(eq[1, A005237(n+2)%A005237(n+1)]+1)`
-/

namespace A005238.P9180803521402763917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005237 (n + 2)) (A005237 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A005238.P9180803521402763917

namespace A005238

/-- `A005237(eq[1, A005237(n+2)%A005237(n+1)]+1)` -/
def P9180803521402763917.Spec : Prop :=
  ∀ n, P9180803521402763917.a n = A005238 (n + 1)

end A005238

/-! ## A005238.P11853760852171336517

`∩[A005237(n+1), A062832(n+1)]`
-/

namespace A005238.P11853760852171336517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005238.P11853760852171336517

namespace A005238

/-- `∩[A005237(n+1), A062832(n+1)]` -/
def P11853760852171336517.Spec : Prop :=
  ∀ n, (P11853760852171336517.a n : ℤ) = A005238 (n + 1)

end A005238

/-! ## A005238.P17915906900146487307

`∩[A067888(n+1), A074757(n+1)]-1`
-/

namespace A005238.P17915906900146487307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074757 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A005238.P17915906900146487307

namespace A005238

/-- `∩[A067888(n+1), A074757(n+1)]-1` -/
def P17915906900146487307.Spec : Prop :=
  ∀ n, P17915906900146487307.a n = A005238 (n + 1)

end A005238

/-! ## A005238.P11308456978223381441

`∩[A062832(n+1), A075034(n+1)]`
-/

namespace A005238.P11308456978223381441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005238.P11308456978223381441

namespace A005238

/-- `∩[A062832(n+1), A075034(n+1)]` -/
def P11308456978223381441.Spec : Prop :=
  ∀ n, (P11308456978223381441.a n : ℤ) = A005238 (n + 1)

end A005238

/-! ## A005238.P8395630580532706332

`∩[A062832(n+1), A075032(n+1)]`
-/

namespace A005238.P8395630580532706332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005238.P8395630580532706332

namespace A005238

/-- `∩[A062832(n+1), A075032(n+1)]` -/
def P8395630580532706332.Spec : Prop :=
  ∀ n, (P8395630580532706332.a n : ℤ) = A005238 (n + 1)

end A005238

/-! ## A005238.P10006753358047281544

`∩[A075032(n+1), A075034(n+1)]`
-/

namespace A005238.P10006753358047281544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005238.P10006753358047281544

namespace A005238

/-- `∩[A075032(n+1), A075034(n+1)]` -/
def P10006753358047281544.Spec : Prop :=
  ∀ n, (P10006753358047281544.a n : ℤ) = A005238 (n + 1)

end A005238

/-! ## A005238.P5347878611250679172

`∩[A074757(n+1), A057922(n)]-1`
-/

namespace A005238.P5347878611250679172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057922 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A005238.P5347878611250679172

namespace A005238

/-- `∩[A074757(n+1), A057922(n)]-1` -/
def P5347878611250679172.Spec : Prop :=
  ∀ n, P5347878611250679172.a n = A005238 (n + 1)

end A005238

/-! ## A005238.P7113463922993394869

`A182394(A227420(n+1))+A169834(n+1)`
-/

namespace A005238.P7113463922993394869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182394 (A227420 (n + 1)).toNat + A169834 (n + 1)

end

end A005238.P7113463922993394869

namespace A005238

/-- `A182394(A227420(n+1))+A169834(n+1)` -/
def P7113463922993394869.Spec : Prop :=
  ∀ n, P7113463922993394869.a n = A005238 (n + 1)

end A005238

/-! ## A005238.P4139048253692606411

`A182394(A195685(n+1))+A169834(n+1)`
-/

namespace A005238.P4139048253692606411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182394 (A195685 (n + 1)).toNat + A169834 (n + 1)

end

end A005238.P4139048253692606411

namespace A005238

/-- `A182394(A195685(n+1))+A169834(n+1)` -/
def P4139048253692606411.Spec : Prop :=
  ∀ n, P4139048253692606411.a n = A005238 (n + 1)

end A005238

/-! ## A005238.P6071502626592070385

`A023443(A169834(n+1))`
-/

namespace A005238.P6071502626592070385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A169834 (n + 1)).toNat

end

end A005238.P6071502626592070385

namespace A005238

/-- `A023443(A169834(n+1))` -/
def P6071502626592070385.Spec : Prop :=
  ∀ n, P6071502626592070385.a n = A005238 (n + 1)

end A005238

/-! ## A005238.P15807399941319669876

`filter[A062832(n+1), A130638(#)]`
-/

namespace A005238.P15807399941319669876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130638 (f1 j).toNat = 1) n)

end

end A005238.P15807399941319669876

namespace A005238

/-- `filter[A062832(n+1), A130638(#)]` -/
def P15807399941319669876.Spec : Prop :=
  ∀ n, P15807399941319669876.a n = A005238 (n + 1)

end A005238

/-!
# A005239: Irregular triangle of Section I numbers. Row n contains numbers k with 2^n < k < 2^(n+1) and phi^n(k) = 2, where phi^n means n iterations of Euler's totient function.

The programs for A005239, the canonical program `A005239.P866751852362025790` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005239 has offset 1).

The definition of A005239 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 305 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005239.P866751852362025790

`eq[A003434(A029579(n)), A070939(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A005239

/-- `eq[A003434(A029579(n)), A070939(n)]` -/
def P866751852362025790.Spec : Prop :=
  ∀ n, (P866751852362025790.a n : ℤ) = A005239 (n + 1)

theorem P866751852362025790.correct : P866751852362025790.Spec := by
  intro n
  simp only [A005239, Nat.add_sub_cancel]

end A005239

/-! ## A005239.P10004536208651741333

`eq[A003434(A093178(n)), A070939(n)]`
-/

namespace A005239.P10004536208651741333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (A093178 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A005239.P10004536208651741333

namespace A005239

/-- `eq[A003434(A093178(n)), A070939(n)]` -/
def P10004536208651741333.Spec : Prop :=
  ∀ n, (P10004536208651741333.a n : ℤ) = A005239 (n + 1)

end A005239

/-! ## A005239.P1497008016318522585

`A005408(eq[A064415(2*n+1), A070939(n)])`
-/

namespace A005239.P1497008016318522585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A005239.P1497008016318522585

namespace A005239

/-- `A005408(eq[A064415(2*n+1), A070939(n)])` -/
def P1497008016318522585.Spec : Prop :=
  ∀ n, P1497008016318522585.a n = A005239 (n + 1)

end A005239

/-! ## A005239.P6775022902189546462

`eq[A334196(n+1)+A070939(n), A064415(n+1)]`
-/

namespace A005239.P6775022902189546462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334196 (n + 1) + A070939 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A005239.P6775022902189546462

namespace A005239

/-- `eq[A334196(n+1)+A070939(n), A064415(n+1)]` -/
def P6775022902189546462.Spec : Prop :=
  ∀ n, (P6775022902189546462.a n : ℤ) = A005239 (n + 1)

end A005239

/-! ## A005239.P18019158681210499834

`eq[A003434(A123108(2*n)), A070939(n)]`
-/

namespace A005239.P18019158681210499834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (A123108 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A005239.P18019158681210499834

namespace A005239

/-- `eq[A003434(A123108(2*n)), A070939(n)]` -/
def P18019158681210499834.Spec : Prop :=
  ∀ n, (P18019158681210499834.a n : ℤ) = A005239 (n + 1)

end A005239

/-!
# A005240: P-positions in Epstein's Put or Take a Square game.

The programs for A005240, there is no canonical definition to state claims against.
-/

/-! ## A005240.P3090604419059463103

`A302868(n)-A117468(A074323(2*n+1))`
-/

namespace A005240.P3090604419059463103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302868 n - A117468 (A074323 (2 * n + 1)).toNat

end

end A005240.P3090604419059463103

/-!
# A005241: N-positions in Epstein's Put or Take a Square game.

The programs for A005241, there is no canonical definition to state claims against.
-/

/-! ## A005241.P8511561274365355720

`A327041(A109895(n+1))+A227116(n+1)`
-/

namespace A005241.P8511561274365355720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327041 (A109895 (n + 1)).toNat + A227116 (n + 1)

end

end A005241.P8511561274365355720

/-!
# A005242: Lexicographically earliest sequence of distinct positive integers such that sums of two or three consecutive earlier terms are excluded.

The programs for A005242, there is no canonical definition to state claims against.
-/

/-! ## A005242.P17337149979063754035

`record[gcd(A092594(n+1), A183041(n))]`
-/

namespace A005242.P17337149979063754035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092594 (n + 1)) (A183041 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005242.P17337149979063754035

/-!
# A005243: A self-generating sequence: start with 1 and 2, take all sums of any number of successive previous elements and adjoin them to the sequence. Repeat!

The programs for A005243, there is no canonical definition to state claims against.
-/

/-! ## A005243.P15690097294678823475

`comp[A048973(n+1)-1]+1`
-/

namespace A005243.P15690097294678823475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048973 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A005243.P15690097294678823475

/-! ## A005243.P5757226340798609283

`eq[char[A048973(n+1)], A000007(n)]`
-/

namespace A005243.P5757226340798609283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048973 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A005243.P5757226340798609283

/-! ## A005243.P18403337864948894620

`eq[char[A048973(n+1)], A000038(n)]`
-/

namespace A005243.P18403337864948894620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048973 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A005243.P18403337864948894620

/-! ## A005243.P13600808292088868867

`eq[A008683(2*(n+1)²)², char[A048973(n+1)]]`
-/

namespace A005243.P13600808292088868867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * (n + 1) ^ 2) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048973 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A005243.P13600808292088868867

/-! ## A005243.P16738836841906057151

`eq[char[A048973(n+1)], A089810(n²+1)]`
-/

namespace A005243.P16738836841906057151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048973 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089810 (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A005243.P16738836841906057151

/-! ## A005243.P2964878425770085011

`eq[char[A048973(n+1)], A151933(n)]`
-/

namespace A005243.P2964878425770085011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048973 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A005243.P2964878425770085011

/-!
# A005244: A self-generating sequence: start with 2 and 3, take all products of any 2 previous elements, subtract 1 and adjoin them to the sequence.

The programs for A005244, there is no canonical definition to state claims against.
-/

/-! ## A005244.P513553821756137586

`record[A139127(n+2)]`
-/

namespace A005244.P513553821756137586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139127 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005244.P513553821756137586

/-! ## A005244.P8627659670751623731

`eq[A033999(n)², char[A139127(n+2)]]`
-/

namespace A005244.P8627659670751623731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139127 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A005244.P8627659670751623731

/-! ## A005244.P2004158341695612072

`eq[A260196(n)², char[A139127(n+2)]]`
-/

namespace A005244.P2004158341695612072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139127 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A005244.P2004158341695612072

/-! ## A005244.P3112566695670674750

`eq[A018252(((-1)^n)²), char[A139127(n+2)]]`
-/

namespace A005244.P3112566695670674750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (((-1) ^ n) ^ 2).toNat

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139127 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A005244.P3112566695670674750

/-! ## A005244.P10772713394816482702

`eq[A014963(4*n+2), char[A139127(n+2)]]`
-/

namespace A005244.P10772713394816482702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139127 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A005244.P10772713394816482702

/-!
# A005245: The (Mahler-Popken) complexity of n: minimal number of 1's required to build n using + and *.

The programs for A005245, there is no canonical definition to state claims against.
-/

/-! ## A005245.P18232923281132805028

`ceil(A213923(n+1)/2)`
-/

namespace A005245.P18232923281132805028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A213923 (n + 1) : ℚ) / 2⌉

end

end A005245.P18232923281132805028

/-! ## A005245.P15681627421273083743

`A000463(A213923(n+1))`
-/

namespace A005245.P15681627421273083743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A213923 (n + 1)).toNat

end

end A005245.P15681627421273083743

/-! ## A005245.P6543974178685111475

`A004525(A213923(n+1)+1)`
-/

namespace A005245.P6543974178685111475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A213923 (n + 1) + 1).toNat

end

end A005245.P6543974178685111475

/-! ## A005245.P15771709273168600737

`A004526(A213923(n+1)+1)`
-/

namespace A005245.P15771709273168600737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A213923 (n + 1) + 1).toNat

end

end A005245.P15771709273168600737

/-! ## A005245.P14878982763391969096

`A025480(A213923(n+1)+1)`
-/

namespace A005245.P14878982763391969096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A213923 (n + 1) + 1).toNat

end

end A005245.P14878982763391969096

/-! ## A005245.P7062561298013246020

`A026741(A213923(n+1)+1)`
-/

namespace A005245.P7062561298013246020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A213923 (n + 1) + 1).toNat

end

end A005245.P7062561298013246020

/-! ## A005245.P4307697021036046190

`A008619(A213923(n+1)-1)`
-/

namespace A005245.P4307697021036046190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A213923 (n + 1) - 1).toNat

end

end A005245.P4307697021036046190

/-! ## A005245.P6253693630289234537

`A008621(2*A213923(n+1))`
-/

namespace A005245.P6253693630289234537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * A213923 (n + 1)).toNat

end

end A005245.P6253693630289234537

/-! ## A005245.P18093688242820407448

`A008624(2*A213923(n+1))`
-/

namespace A005245.P18093688242820407448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (2 * A213923 (n + 1)).toNat

end

end A005245.P18093688242820407448

/-! ## A005245.P6728173417394477158

`A008616(5*A213923(n+1))`
-/

namespace A005245.P6728173417394477158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (5 * A213923 (n + 1)).toNat

end

end A005245.P6728173417394477158

/-! ## A005245.P8120886083377457354

`A001057(or(1, A213923(n+1)))`
-/

namespace A005245.P8120886083377457354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (Int.lor 1 (A213923 (n + 1))).toNat

end

end A005245.P8120886083377457354

/-! ## A005245.P11654134713573459012

`A008619(or(1, A213923(n+1)))`
-/

namespace A005245.P11654134713573459012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.lor 1 (A213923 (n + 1))).toNat

end

end A005245.P11654134713573459012

/-! ## A005245.P1116888446065176427

`A008619(xor(1, A213923(n+1)))`
-/

namespace A005245.P1116888446065176427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.xor 1 (A213923 (n + 1))).toNat

end

end A005245.P1116888446065176427

/-! ## A005245.P2414726273635910169

`A008621(A213923(n+1)+A213923(n+1)+1)`
-/

namespace A005245.P2414726273635910169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A213923 (n + 1) + (A213923 (n + 1) + 1)).toNat

end

end A005245.P2414726273635910169

/-! ## A005245.P8719050088141972181

`A008624(A213923(n+1)+A213923(n+1)+1)`
-/

namespace A005245.P8719050088141972181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A213923 (n + 1) + (A213923 (n + 1) + 1)).toNat

end

end A005245.P8719050088141972181

/-!
# A005246: a(n) = (1 + a(n-1)*a(n-2))/a(n-3), a(0) = a(1) = a(2) = 1.

The programs for A005246, the canonical program `A005246.P2156310721719081882` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005246 has offset 0).

The definition of A005246 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005246.P2156310721719081882

`(1+a(n-1)*a(n-2))/a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005246

/-- `(1+a(n-1)*a(n-2))/a(n-3)` -/
def P2156310721719081882.Spec : Prop :=
  ∀ n, P2156310721719081882.a n = (A005246 n : ℚ)

end A005246

/-! ## A005246.P7702617796055914953

`ogf((1+x-3x^2-2x^3)/(1-4x^2+x^4))`
-/

namespace A005246.P7702617796055914953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -3, -2] [1, 0, -4, 0, 1] n

end

end A005246.P7702617796055914953

namespace A005246

/-- `ogf((1+x-3x^2-2x^3)/(1-4x^2+x^4))` -/
def P7702617796055914953.Spec : Prop :=
  ∀ n, P7702617796055914953.a n = A005246 n

end A005246

/-! ## A005246.P17372703444875869027

`A122573(n+1)+Δ[A122573(n+1)/2]`
-/

namespace A005246.P17372703444875869027
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122573 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122573 (n + 1) : ℚ) + (f1 (n + 1) - f1 n)

end

end A005246.P17372703444875869027

namespace A005246

/-- `A122573(n+1)+Δ[A122573(n+1)/2]` -/
def P17372703444875869027.Spec : Prop :=
  ∀ n, P17372703444875869027.a n = (A005246 n : ℚ)

end A005246

/-! ## A005246.P4689486219051899459

`4*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A005246.P4689486219051899459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  4 * a (n - 2) - a (n - 4)

end

end A005246.P4689486219051899459

namespace A005246

/-- `4*a(n-2)-a(n-4)` -/
def P4689486219051899459.Spec : Prop :=
  ∀ n, P4689486219051899459.a n = A005246 n

end A005246

/-! ## A005246.P2611729986247115916

`A237250(n-1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A005246.P2611729986247115916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A237250 (n - 1) - a (n - 1)

end

end A005246.P2611729986247115916

namespace A005246

/-- `A237250(n-1)-a(n-1)` -/
def P2611729986247115916.Spec : Prop :=
  ∀ n, P2611729986247115916.a n = A005246 n

end A005246

/-! ## A005246.P13126491709516134974

`abs(A002530(n)-Δ[A002530(n)])`
-/

namespace A005246.P13126491709516134974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002530 n - (f1 (n + 1) - f1 n)|

end

end A005246.P13126491709516134974

namespace A005246

/-- `abs(A002530(n)-Δ[A002530(n)])` -/
def P13126491709516134974.Spec : Prop :=
  ∀ n, P13126491709516134974.a n = A005246 n

end A005246

/-! ## A005246.P81923378860827503

`abs(2*A002530(n)-A002530(n+1))`
-/

namespace A005246.P81923378860827503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A002530 n - A002530 (n + 1)|

end

end A005246.P81923378860827503

namespace A005246

/-- `abs(2*A002530(n)-A002530(n+1))` -/
def P81923378860827503.Spec : Prop :=
  ∀ n, P81923378860827503.a n = A005246 n

end A005246

/-! ## A005246.P13675789682069458506

`(A122573(n+2)+A122573(n+1))/2`
-/

namespace A005246.P13675789682069458506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122573 (n + 2) + A122573 (n + 1) : ℚ) / 2

end

end A005246.P13675789682069458506

namespace A005246

/-- `(A122573(n+2)+A122573(n+1))/2` -/
def P13675789682069458506.Spec : Prop :=
  ∀ n, P13675789682069458506.a n = (A005246 n : ℚ)

end A005246

/-! ## A005246.P18444864918639288416

`A101879(n-1)/a(n-1)` with `a(0)=1`
-/

namespace A005246.P18444864918639288416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A101879 (n - 1) : ℚ) / a (n - 1)

end

end A005246.P18444864918639288416

namespace A005246

/-- `A101879(n-1)/a(n-1)` -/
def P18444864918639288416.Spec : Prop :=
  ∀ n, P18444864918639288416.a n = (A005246 n : ℚ)

end A005246

/-! ## A005246.P9299764972142233382

`A101265(n-1)/a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A005246.P9299764972142233382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A101265 (n - 1) : ℚ) / a (n - 1)

end

end A005246.P9299764972142233382

namespace A005246

/-- `A101265(n-1)/a(n-1)` -/
def P9299764972142233382.Spec : Prop :=
  ∀ n, P9299764972142233382.a n = (A005246 n : ℚ)

end A005246

/-! ## A005246.P14236461647186475397

`gcd(A072110(n), A101879(n))`
-/

namespace A005246.P14236461647186475397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072110 n) (A101879 n)

end

end A005246.P14236461647186475397

namespace A005246

/-- `gcd(A072110(n), A101879(n))` -/
def P14236461647186475397.Spec : Prop :=
  ∀ n, (P14236461647186475397.a n : ℤ) = A005246 n

end A005246

/-! ## A005246.P12120246017475424484

`A072110(n)/A082630(n+1)`
-/

namespace A005246.P12120246017475424484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072110 n : ℚ) / (A082630 (n + 1) : ℚ)

end

end A005246.P12120246017475424484

namespace A005246

/-- `A072110(n)/A082630(n+1)` -/
def P12120246017475424484.Spec : Prop :=
  ∀ n, P12120246017475424484.a n = (A005246 n : ℚ)

end A005246

/-! ## A005246.P2293176539212667892

`A071954(n)/(A162959(n+1)+A162959(n+2))`
-/

namespace A005246.P2293176539212667892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071954 n : ℚ) / (A162959 (n + 1) + A162959 (n + 2) : ℚ)

end

end A005246.P2293176539212667892

namespace A005246

/-- `A071954(n)/(A162959(n+1)+A162959(n+2))` -/
def P2293176539212667892.Spec : Prop :=
  ∀ n, P2293176539212667892.a n = (A005246 n : ℚ)

end A005246

/-!
# A005247: a(n) = 3*a(n-2) - a(n-4), a(0)=2, a(1)=1, a(2)=3, a(3)=2. Alternates Lucas (A000032) and Fibonacci (A000045) sequences for even and odd n.

The programs for A005247, the canonical program `A005247.P3125104772990869429` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005247 has offset 0).

The definition of A005247 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-2)-a(n-4)` (program `A005247.P3125104772990869429`, by `A005247.P3125104772990869429.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005247.P3125104772990869429

`3*a(n-2)-a(n-4)` with `a(0)=2, a(1)=1, a(2)=3, a(3)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005247

/-- `3*a(n-2)-a(n-4)` -/
def P3125104772990869429.Spec : Prop :=
  ∀ n, P3125104772990869429.a n = A005247 n

theorem P3125104772990869429.correct : P3125104772990869429.Spec := by
  intro n
  simp only [A005247]

end A005247

/-! ## A005247.P9426713520360402767

`floor(ϕ²*a(n-2))` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A005247.P9426713520360402767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3] fun n a =>
  ⌊Real.goldenRatio ^ 2 * (a (n - 2) : ℝ)⌋

end

end A005247.P9426713520360402767

namespace A005247

/-- `floor(ϕ²*a(n-2))` -/
def P9426713520360402767.Spec : Prop :=
  ∀ n, P9426713520360402767.a n = A005247 n

end A005247

/-! ## A005247.P17465061774162215941

`ogf((2+x-3x^2-x^3)/(1-3x^2+x^4))`
-/

namespace A005247.P17465061774162215941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, -3, -1] [1, 0, -3, 0, 1] n

end

end A005247.P17465061774162215941

namespace A005247

/-- `ogf((2+x-3x^2-x^3)/(1-3x^2+x^4))` -/
def P17465061774162215941.Spec : Prop :=
  ∀ n, P17465061774162215941.a n = A005247 n

end A005247

/-! ## A005247.P12501417817678243218

`A063726(Δ[n²])`
-/

namespace A005247.P12501417817678243218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063726 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005247.P12501417817678243218

namespace A005247

/-- `A063726(Δ[n²])` -/
def P12501417817678243218.Spec : Prop :=
  ∀ n, P12501417817678243218.a n = A005247 n

end A005247

/-! ## A005247.P4252299952256961202

`A302126(or(1, n)+n)`
-/

namespace A005247.P4252299952256961202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (Nat.lor 1 n + n)

end

end A005247.P4252299952256961202

namespace A005247

/-- `A302126(or(1, n)+n)` -/
def P4252299952256961202.Spec : Prop :=
  ∀ n, P4252299952256961202.a n = A005247 n

end A005247

/-! ## A005247.P6545111396339640956

`A302126(A042963(n+1))`
-/

namespace A005247.P6545111396339640956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (A042963 (n + 1)).toNat

end

end A005247.P6545111396339640956

namespace A005247

/-- `A302126(A042963(n+1))` -/
def P6545111396339640956.Spec : Prop :=
  ∀ n, P6545111396339640956.a n = A005247 n

end A005247

/-! ## A005247.P15551277592719947823

`A212804(n)+A097131(n)`
-/

namespace A005247.P15551277592719947823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A097131 n

end

end A005247.P15551277592719947823

namespace A005247

/-- `A212804(n)+A097131(n)` -/
def P15551277592719947823.Spec : Prop :=
  ∀ n, P15551277592719947823.a n = A005247 n

end A005247

/-! ## A005247.P3285663052970530744

`A302126(A042964(n+1)-1)`
-/

namespace A005247.P3285663052970530744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (A042964 (n + 1) - 1).toNat

end

end A005247.P3285663052970530744

namespace A005247

/-- `A302126(A042964(n+1)-1)` -/
def P3285663052970530744.Spec : Prop :=
  ∀ n, P3285663052970530744.a n = A005247 n

end A005247

/-! ## A005247.P7107439766479405417

`A302126(A053438(n+1)-1)`
-/

namespace A005247.P7107439766479405417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (A053438 (n + 1) - 1).toNat

end

end A005247.P7107439766479405417

namespace A005247

/-- `A302126(A053438(n+1)-1)` -/
def P7107439766479405417.Spec : Prop :=
  ∀ n, P7107439766479405417.a n = A005247 n

end A005247

/-! ## A005247.P6387786106618017560

`A302126(A014601(n+1)-2)`
-/

namespace A005247.P6387786106618017560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (A014601 (n + 1) - 2).toNat

end

end A005247.P6387786106618017560

namespace A005247

/-- `A302126(A014601(n+1)-2)` -/
def P6387786106618017560.Spec : Prop :=
  ∀ n, P6387786106618017560.a n = A005247 n

end A005247

/-! ## A005247.P6631523416359406826

`A119282(n)+A001611(n+1)`
-/

namespace A005247.P6631523416359406826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 n + A001611 (n + 1)

end

end A005247.P6631523416359406826

namespace A005247

/-- `A119282(n)+A001611(n+1)` -/
def P6631523416359406826.Spec : Prop :=
  ∀ n, P6631523416359406826.a n = A005247 n

end A005247

/-! ## A005247.P17944663837018661837

`A000071(n+1)+A119282(n)+2`
-/

namespace A005247.P17944663837018661837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (A119282 n + 2)

end

end A005247.P17944663837018661837

namespace A005247

/-- `A000071(n+1)+A119282(n)+2` -/
def P17944663837018661837.Spec : Prop :=
  ∀ n, P17944663837018661837.a n = A005247 n

end A005247

/-! ## A005247.P6173176891051434729

`A302126(A047270(n+1)-(n+2))`
-/

namespace A005247.P6173176891051434729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (A047270 (n + 1) - (n + 2 : ℤ)).toNat

end

end A005247.P6173176891051434729

namespace A005247

/-- `A302126(A047270(n+1)-(n+2))` -/
def P6173176891051434729.Spec : Prop :=
  ∀ n, P6173176891051434729.a n = A005247 n

end A005247

/-! ## A005247.P1194235387541378147

`A051792(2*n+1)+A000045(n+1)`
-/

namespace A005247.P1194235387541378147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051792 (2 * n + 1) + A000045 (n + 1)

end

end A005247.P1194235387541378147

namespace A005247

/-- `A051792(2*n+1)+A000045(n+1)` -/
def P1194235387541378147.Spec : Prop :=
  ∀ n, P1194235387541378147.a n = A005247 n

end A005247

/-!
# A005248: Bisection of Lucas numbers: a(n) = L(2*n) = A000032(2*n).

The programs for A005248, the canonical program `A005248.P3255906601217542815` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005248 has offset 0).

The definition of A005248 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(2*n)` (program `A005248.P3255906601217542815`, by `A005248.P3255906601217542815.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005248.P17927042332670499321

`3*a(n-1)-a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A005248.P17927042332670499321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  3 * a (n - 1) - a (n - 2)

end

end A005248.P17927042332670499321

namespace A005248

/-- `3*a(n-1)-a(n-2)` -/
def P17927042332670499321.Spec : Prop :=
  ∀ n, P17927042332670499321.a n = A005248 n

end A005248

/-! ## A005248.P3255906601217542815

`A000032(2*n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005248

/-- `A000032(2*n)` -/
def P3255906601217542815.Spec : Prop :=
  ∀ n, P3255906601217542815.a n = A005248 n

theorem P3255906601217542815.correct : P3255906601217542815.Spec := by
  intro n
  simp only [A005248]

end A005248

/-! ## A005248.P4136820170872224079

`5*A000045(n)²+2*(-1)^n`
-/

namespace A005248.P4136820170872224079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000045 n ^ 2 + 2 * (-1) ^ n

end

end A005248.P4136820170872224079

namespace A005248

/-- `5*A000045(n)²+2*(-1)^n` -/
def P4136820170872224079.Spec : Prop :=
  ∀ n, P4136820170872224079.a n = A005248 n

end A005248

/-! ## A005248.P7947429321202070578

`((3-sqrt(5))^n+(3+sqrt(5))^n)/2^n`
-/

namespace A005248.P7947429321202070578
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 - Real.sqrt (5 : ℝ)) ^ n + (3 + Real.sqrt (5 : ℝ)) ^ n) / (2 ^ n : ℝ)

end

end A005248.P7947429321202070578

namespace A005248

/-- `((3-sqrt(5))^n+(3+sqrt(5))^n)/2^n` -/
def P7947429321202070578.Spec : Prop :=
  ∀ n, P7947429321202070578.a n = (A005248 n : ℝ)

end A005248

/-! ## A005248.P12792572899210717391

`ogf((2-3x)/(1-3x+x^2))`
-/

namespace A005248.P12792572899210717391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3] [1, -3, 1] n

end

end A005248.P12792572899210717391

namespace A005248

/-- `ogf((2-3x)/(1-3x+x^2))` -/
def P12792572899210717391.Spec : Prop :=
  ∀ n, P12792572899210717391.a n = A005248 n

end A005248

/-! ## A005248.P2986259930389127477

`floor(record[(-ϕ)^n+1])`
-/

namespace A005248.P2986259930389127477
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-Real.goldenRatio) ^ n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A005248.P2986259930389127477

namespace A005248

/-- `floor(record[(-ϕ)^n+1])` -/
def P2986259930389127477.Spec : Prop :=
  ∀ n, P2986259930389127477.a n = A005248 n

end A005248

/-! ## A005248.P14910965610036733968

`or(2, floor(ϕ^(2*n))+1)`
-/

namespace A005248.P14910965610036733968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (⌊Real.goldenRatio ^ (2 * n)⌋ + 1)

end

end A005248.P14910965610036733968

namespace A005248

/-- `or(2, floor(ϕ^(2*n))+1)` -/
def P14910965610036733968.Spec : Prop :=
  ∀ n, P14910965610036733968.a n = A005248 n

end A005248

/-! ## A005248.P5782725321385530439

`xor(2, floor(ϕ^(2*n))-1)`
-/

namespace A005248.P5782725321385530439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (⌊Real.goldenRatio ^ (2 * n)⌋ - 1)

end

end A005248.P5782725321385530439

namespace A005248

/-- `xor(2, floor(ϕ^(2*n))-1)` -/
def P5782725321385530439.Spec : Prop :=
  ∀ n, P5782725321385530439.a n = A005248 n

end A005248

/-! ## A005248.P11331270801453083838

`floor(ϕ²*a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A005248.P11331270801453083838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  ⌊Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌋

end

end A005248.P11331270801453083838

namespace A005248

/-- `floor(ϕ²*a(n-1))` -/
def P11331270801453083838.Spec : Prop :=
  ∀ n, P11331270801453083838.a n = A005248 n

end A005248

/-! ## A005248.P10757402458452438421

`-xor(-1, floor(ϕ^(2*n)))`
-/

namespace A005248.P10757402458452438421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) ⌊Real.goldenRatio ^ (2 * n)⌋

end

end A005248.P10757402458452438421

namespace A005248

/-- `-xor(-1, floor(ϕ^(2*n)))` -/
def P10757402458452438421.Spec : Prop :=
  ∀ n, P10757402458452438421.a n = A005248 n

end A005248

/-! ## A005248.P6177154167205906909

`floor(ϕ*ϕ*a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A005248.P6177154167205906909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  ⌊Real.goldenRatio * (Real.goldenRatio * (a (n - 1) : ℝ))⌋

end

end A005248.P6177154167205906909

namespace A005248

/-- `floor(ϕ*ϕ*a(n-1))` -/
def P6177154167205906909.Spec : Prop :=
  ∀ n, P6177154167205906909.a n = A005248 n

end A005248

/-! ## A005248.P2529797279066839066

`record[a(n-2)-a(n-1)]` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A005248.P2529797279066839066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 2] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005248.P2529797279066839066

namespace A005248

/-- `record[a(n-2)-a(n-1)]` -/
def P2529797279066839066.Spec : Prop :=
  ∀ n, P2529797279066839066.a n = A005248 n

end A005248

/-! ## A005248.P9413681947333889076

`a(n-1)+a(n-1)+a(n-1)-a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A005248.P9413681947333889076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - a (n - 2)))

end

end A005248.P9413681947333889076

namespace A005248

/-- `a(n-1)+a(n-1)+a(n-1)-a(n-2)` -/
def P9413681947333889076.Spec : Prop :=
  ∀ n, P9413681947333889076.a n = A005248 n

end A005248

/-! ## A005248.P2142635956874235826

`a(n-1)-(a(n-2)-a(n-1)-a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A005248.P2142635956874235826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 1))

end

end A005248.P2142635956874235826

namespace A005248

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-1))` -/
def P2142635956874235826.Spec : Prop :=
  ∀ n, P2142635956874235826.a n = A005248 n

end A005248

/-! ## A005248.P17857410080553835407

`record[A005247(n)]`
-/

namespace A005248.P17857410080553835407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005248.P17857410080553835407

namespace A005248

/-- `record[A005247(n)]` -/
def P17857410080553835407.Spec : Prop :=
  ∀ n, P17857410080553835407.a n = A005248 n

end A005248

/-! ## A005248.P12956289613124216496

`A005592(n)+1`
-/

namespace A005248.P12956289613124216496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005592 n + 1

end

end A005248.P12956289613124216496

namespace A005248

/-- `A005592(n)+1` -/
def P12956289613124216496.Spec : Prop :=
  ∀ n, P12956289613124216496.a n = A005248 n

theorem P12956289613124216496.correct : P12956289613124216496.Spec := by
  intro n
  simp only [A005248, Nat.add_sub_cancel, A005248.P12956289613124216496.a, A005248.P3255906601217542815.a, A000032, A000032.P8352177345629330861.a, A005592, A005592.P14150685278040946245.a, A004146, A004146.P7346826017881566823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005248

/-! ## A005248.P17864467959424438229

`A004146(n)+2`
-/

namespace A005248.P17864467959424438229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004146 n + 2

end

end A005248.P17864467959424438229

namespace A005248

/-- `A004146(n)+2` -/
def P17864467959424438229.Spec : Prop :=
  ∀ n, P17864467959424438229.a n = A005248 n

theorem P17864467959424438229.correct : P17864467959424438229.Spec := by
  intro n
  simp only [A005248, Nat.add_sub_cancel, A005248.P17864467959424438229.a, A005248.P3255906601217542815.a, A000032, A000032.P8352177345629330861.a, A004146, A004146.P7346826017881566823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005248

/-! ## A005248.P2639482787480832941

`A065034(n)-1`
-/

namespace A005248.P2639482787480832941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065034 n - 1

end

end A005248.P2639482787480832941

namespace A005248

/-- `A065034(n)-1` -/
def P2639482787480832941.Spec : Prop :=
  ∀ n, P2639482787480832941.a n = A005248 n

theorem P2639482787480832941.correct : P2639482787480832941.Spec := by
  intro n
  simp only [A005248, Nat.add_sub_cancel, A005248.P2639482787480832941.a, A005248.P3255906601217542815.a, A000032, A000032.P8352177345629330861.a, A065034, A065034.P7551508921847598807.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005248

/-! ## A005248.P10208885341623643937

`A092387(n)-2`
-/

namespace A005248.P10208885341623643937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092387 n - 2

end

end A005248.P10208885341623643937

namespace A005248

/-- `A092387(n)-2` -/
def P10208885341623643937.Spec : Prop :=
  ∀ n, P10208885341623643937.a n = A005248 n

end A005248

/-! ## A005248.P8946347799040316038

`A005247(2*n)`
-/

namespace A005248.P8946347799040316038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 (2 * n)

end

end A005248.P8946347799040316038

namespace A005248

/-- `A005247(2*n)` -/
def P8946347799040316038.Spec : Prop :=
  ∀ n, P8946347799040316038.a n = A005248 n

end A005248

/-!
# A005249: Determinant of inverse Hilbert matrix.

The programs for A005249, there is no canonical definition to state claims against.
-/

/-! ## A005249.P10593101839114678900

`A135451(∑[n])`
-/

namespace A005249.P10593101839114678900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135451 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005249.P10593101839114678900

/-! ## A005249.P17849164261786205703

`A233472(∑[n]+n)`
-/

namespace A005249.P17849164261786205703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233472 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A005249.P17849164261786205703

/-! ## A005249.P17207201132488916487

`a(n-1)*A000515(n-1)` with `a(0)=1`
-/

namespace A005249.P17207201132488916487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A000515 (n - 1)

end

end A005249.P17207201132488916487

/-! ## A005249.P6875394160009429894

`A163085(eq[1, A157780(n)])`
-/

namespace A005249.P6875394160009429894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163085 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005249.P6875394160009429894

/-! ## A005249.P17333037768057032891

`A163085(lt[A141413(n), 1])`
-/

namespace A005249.P17333037768057032891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141413 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163085 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A005249.P17333037768057032891

/-!
# A005250: Record gaps between primes.

The programs for A005250, there is no canonical definition to state claims against.
-/

/-! ## A005250.P13215581625175115015

`A000101(n+1)-A002386(n+1)`
-/

namespace A005250.P13215581625175115015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000101 (n + 1) - A002386 (n + 1)

end

end A005250.P13215581625175115015

/-! ## A005250.P250227456521423183

`∑[A053695(floor(acot(n)+n))]`
-/

namespace A005250.P250227456521423183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053695 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005250.P250227456521423183

/-! ## A005250.P17572460293158093927

`A053695(n)+a(n-1)` with `a(0)=1`
-/

namespace A005250.P17572460293158093927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053695 n + a (n - 1)

end

end A005250.P17572460293158093927

/-! ## A005250.P14749379221934023177

`∑[A053695(round(sqrt(n²+1)))]`
-/

namespace A005250.P14749379221934023177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053695 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005250.P14749379221934023177

/-! ## A005250.P11734145166119120358

`∑[A053695(abs(1-n)+1)]-1`
-/

namespace A005250.P11734145166119120358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053695 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A005250.P11734145166119120358

/-! ## A005250.P17601977138919096339

`A000101(A000027(n+1))%A002386(n+1)`
-/

namespace A005250.P17601977138919096339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000101 (A000027 (n + 1)).toNat) (A002386 (n + 1))

end

end A005250.P17601977138919096339

/-! ## A005250.P401213463527989337

`record[A014320(n+1)]`
-/

namespace A005250.P401213463527989337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005250.P401213463527989337

/-! ## A005250.P8133838487682093116

`record[A335367(n+1)-A335366(n+1)]`
-/

namespace A005250.P8133838487682093116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335367 (n + 1) - A335366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005250.P8133838487682093116

/-! ## A005250.P17167756504077915632

`A246789(n+1)-A246777(n+1)`
-/

namespace A005250.P17167756504077915632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246789 (n + 1) - A246777 (n + 1)

end

end A005250.P17167756504077915632

/-! ## A005250.P7454234781246114735

`A000101(n+1)-A114058(n+1)/2`
-/

namespace A005250.P7454234781246114735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000101 (n + 1) : ℚ) - (A114058 (n + 1) : ℚ) / 2

end

end A005250.P7454234781246114735

/-!
# A005251: a(0) = 0, a(1) = a(2) = a(3) = 1; thereafter, a(n) = a(n-1) + a(n-2) + a(n-4).

The programs for A005251, the canonical program `A005251.P3194289262539865053` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005251 has offset 0).

The definition of A005251 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-4)` (program `A005251.P3194289262539865053`, by `A005251.P3194289262539865053.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005251.P3194289262539865053

`a(n-1)+a(n-2)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005251

/-- `a(n-1)+a(n-2)+a(n-4)` -/
def P3194289262539865053.Spec : Prop :=
  ∀ n, (P3194289262539865053.a n : ℤ) = A005251 n

theorem P3194289262539865053.correct : P3194289262539865053.Spec := by
  intro n
  simp only [A005251]

end A005251

/-! ## A005251.P873771974855114419

`A049853(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A005251.P873771974855114419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A049853 (n - 1) - a (n - 1)

end

end A005251.P873771974855114419

namespace A005251

/-- `A049853(n-1)-a(n-1)` -/
def P873771974855114419.Spec : Prop :=
  ∀ n, P873771974855114419.a n = A005251 n

end A005251

/-! ## A005251.P1697627388753852634

`ogf((x-x^2)/(1-2x+x^2-x^3))`
-/

namespace A005251.P1697627388753852634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -2, 1, -1] n

end

end A005251.P1697627388753852634

namespace A005251

/-- `ogf((x-x^2)/(1-2x+x^2-x^3))` -/
def P1697627388753852634.Spec : Prop :=
  ∀ n, P1697627388753852634.a n = A005251 n

end A005251

/-! ## A005251.P505865379567480074

`a(n-1)-(a(n-2)-a(n-1)-a(n-3))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A005251.P505865379567480074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 3))

end

end A005251.P505865379567480074

namespace A005251

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-3))` -/
def P505865379567480074.Spec : Prop :=
  ∀ n, P505865379567480074.a n = A005251 n

end A005251

/-! ## A005251.P695106242151330456

`A114775(4*n)`
-/

namespace A005251.P695106242151330456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 (4 * n)

end

end A005251.P695106242151330456

namespace A005251

/-- `A114775(4*n)` -/
def P695106242151330456.Spec : Prop :=
  ∀ n, P695106242151330456.a n = A005251 n

end A005251

/-! ## A005251.P7606789514123938740

`A000931(Δ[n²])`
-/

namespace A005251.P7606789514123938740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005251.P7606789514123938740

namespace A005251

/-- `A000931(Δ[n²])` -/
def P7606789514123938740.Spec : Prop :=
  ∀ n, P7606789514123938740.a n = A005251 n

end A005251

/-! ## A005251.P17385736790980004506

`A078027(2*n+3)`
-/

namespace A005251.P17385736790980004506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (2 * n + 3)

end

end A005251.P17385736790980004506

namespace A005251

/-- `A078027(2*n+3)` -/
def P17385736790980004506.Spec : Prop :=
  ∀ n, P17385736790980004506.a n = A005251 n

end A005251

/-! ## A005251.P13775430911548194067

`A133034(2*n+5)`
-/

namespace A005251.P13775430911548194067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (2 * n + 5)

end

end A005251.P13775430911548194067

namespace A005251

/-- `A133034(2*n+5)` -/
def P13775430911548194067.Spec : Prop :=
  ∀ n, P13775430911548194067.a n = A005251 n

end A005251

/-! ## A005251.P12231139081503095113

`∑[A078027(2*n)]-1`
-/

namespace A005251.P12231139081503095113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A005251.P12231139081503095113

namespace A005251

/-- `∑[A078027(2*n)]-1` -/
def P12231139081503095113.Spec : Prop :=
  ∀ n, P12231139081503095113.a n = A005251 n

end A005251

/-! ## A005251.P1061883509823420793

`∑[A124745(2*n)]-1`
-/

namespace A005251.P1061883509823420793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124745 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A005251.P1061883509823420793

namespace A005251

/-- `∑[A124745(2*n)]-1` -/
def P1061883509823420793.Spec : Prop :=
  ∀ n, P1061883509823420793.a n = A005251 n

end A005251

/-! ## A005251.P2604222004635773475

`A078027(n+n)+a(n-1)` with `a(0)=0`
-/

namespace A005251.P2604222004635773475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A078027 (n + n) + a (n - 1)

end

end A005251.P2604222004635773475

namespace A005251

/-- `A078027(n+n)+a(n-1)` -/
def P2604222004635773475.Spec : Prop :=
  ∀ n, P2604222004635773475.a n = A005251 n

end A005251

/-! ## A005251.P3560303190691459419

`A182097(A004271(n+1))`
-/

namespace A005251.P3560303190691459419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (A004271 (n + 1)).toNat

end

end A005251.P3560303190691459419

namespace A005251

/-- `A182097(A004271(n+1))` -/
def P3560303190691459419.Spec : Prop :=
  ∀ n, P3560303190691459419.a n = A005251 n

end A005251

/-! ## A005251.P16225755653923184759

`A182097(A004278(n+1))`
-/

namespace A005251.P16225755653923184759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (A004278 (n + 1)).toNat

end

end A005251.P16225755653923184759

namespace A005251

/-- `A182097(A004278(n+1))` -/
def P16225755653923184759.Spec : Prop :=
  ∀ n, P16225755653923184759.a n = A005251 n

end A005251

/-! ## A005251.P1434325881239521681

`A182097(A111284(n+1)-2*n)`
-/

namespace A005251.P1434325881239521681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (A111284 (n + 1) - (2 * n : ℤ)).toNat

end

end A005251.P1434325881239521681

namespace A005251

/-- `A182097(A111284(n+1)-2*n)` -/
def P1434325881239521681.Spec : Prop :=
  ∀ n, P1434325881239521681.a n = A005251 n

end A005251

/-! ## A005251.P9384349730438636614

`A182097(A111284(n+1)-n-n)`
-/

namespace A005251.P9384349730438636614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (A111284 (n + 1) - (n : ℤ) - (n : ℤ)).toNat

end

end A005251.P9384349730438636614

namespace A005251

/-- `A182097(A111284(n+1)-n-n)` -/
def P9384349730438636614.Spec : Prop :=
  ∀ n, P9384349730438636614.a n = A005251 n

end A005251

/-! ## A005251.P1420978800543810896

`A000931(2*n+1)+A000007(n+1)`
-/

namespace A005251.P1420978800543810896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (2 * n + 1) + A000007 (n + 1)

end

end A005251.P1420978800543810896

namespace A005251

/-- `A000931(2*n+1)+A000007(n+1)` -/
def P1420978800543810896.Spec : Prop :=
  ∀ n, P1420978800543810896.a n = A005251 n

end A005251

/-! ## A005251.P13965766594573784695

`A000931(2*n+1)+A000038(n+1)`
-/

namespace A005251.P13965766594573784695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (2 * n + 1) + A000038 (n + 1)

end

end A005251.P13965766594573784695

namespace A005251

/-- `A000931(2*n+1)+A000038(n+1)` -/
def P13965766594573784695.Spec : Prop :=
  ∀ n, P13965766594573784695.a n = A005251 n

end A005251

/-! ## A005251.P12429596059773776299

`A019590(n+3)+A000931(2*n+1)`
-/

namespace A005251.P12429596059773776299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 3) + A000931 (2 * n + 1)

end

end A005251.P12429596059773776299

namespace A005251

/-- `A019590(n+3)+A000931(2*n+1)` -/
def P12429596059773776299.Spec : Prop :=
  ∀ n, P12429596059773776299.a n = A005251 n

end A005251

/-! ## A005251.P11665746121866871029

`A124745(2*n)-A124745(2*n+1)`
-/

namespace A005251.P11665746121866871029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124745 (2 * n) - A124745 (2 * n + 1)

end

end A005251.P11665746121866871029

namespace A005251

/-- `A124745(2*n)-A124745(2*n+1)` -/
def P11665746121866871029.Spec : Prop :=
  ∀ n, P11665746121866871029.a n = A005251 n

end A005251

/-! ## A005251.P12502022184464114963

`A000931(2*n+1)*A033999(2*n)`
-/

namespace A005251.P12502022184464114963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (2 * n + 1) * A033999 (2 * n)

end

end A005251.P12502022184464114963

namespace A005251

/-- `A000931(2*n+1)*A033999(2*n)` -/
def P12502022184464114963.Spec : Prop :=
  ∀ n, P12502022184464114963.a n = A005251 n

end A005251

/-!
# A005252: a(n) = Sum_{k=0..floor(n/4)} binomial(n-2k,2k).

The programs for A005252, the canonical program `A005252.P10630166699166538222` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005252 has offset 0).

The definition of A005252 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005252.P10630166699166538222

`2*a(n-1)-a(n-2)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005252

/-- `2*a(n-1)-a(n-2)+a(n-4)` -/
def P10630166699166538222.Spec : Prop :=
  ∀ n, P10630166699166538222.a n = A005252 n

theorem P10630166699166538222.correct : P10630166699166538222.Spec := by
  intro n
  simp only [A005252]

end A005252

/-! ## A005252.P16414943463373872880

`A000045(n+1)/2+A010892(n)/2`
-/

namespace A005252.P16414943463373872880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / 2 + (A010892 n : ℚ) / 2

end

end A005252.P16414943463373872880

namespace A005252

/-- `A000045(n+1)/2+A010892(n)/2` -/
def P16414943463373872880.Spec : Prop :=
  ∀ n, P16414943463373872880.a n = (A005252 n : ℚ)

end A005252

/-! ## A005252.P12988006661563053475

`A000045(n+1)+(-1)^(n+1)*A106511(n+2)`
-/

namespace A005252.P12988006661563053475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (-1) ^ (n + 1) * A106511 (n + 2)

end

end A005252.P12988006661563053475

namespace A005252

/-- `A000045(n+1)+(-1)^(n+1)*A106511(n+2)` -/
def P12988006661563053475.Spec : Prop :=
  ∀ n, P12988006661563053475.a n = A005252 n

end A005252

/-! ## A005252.P9280165552287834791

`ogf((1-x)/(1-2x+x^2-x^4))`
-/

namespace A005252.P9280165552287834791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2, 1, 0, -1] n

end

end A005252.P9280165552287834791

namespace A005252

/-- `ogf((1-x)/(1-2x+x^2-x^4))` -/
def P9280165552287834791.Spec : Prop :=
  ∀ n, P9280165552287834791.a n = A005252 n

end A005252

/-! ## A005252.P4129280746071021422

`∑[abs(A106511(n))]`
-/

namespace A005252.P4129280746071021422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A106511 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005252.P4129280746071021422

namespace A005252

/-- `∑[abs(A106511(n))]` -/
def P4129280746071021422.Spec : Prop :=
  ∀ n, P4129280746071021422.a n = A005252 n

end A005252

/-! ## A005252.P1791666687117441104

`A174618(2*(n+1))`
-/

namespace A005252.P1791666687117441104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (2 * (n + 1))

end

end A005252.P1791666687117441104

namespace A005252

/-- `A174618(2*(n+1))` -/
def P1791666687117441104.Spec : Prop :=
  ∀ n, P1791666687117441104.a n = A005252 n

end A005252

/-! ## A005252.P13121502096900361921

`A000045(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A005252.P13121502096900361921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A000045 n - a (n - 3)

end

end A005252.P13121502096900361921

namespace A005252

/-- `A000045(n)-a(n-3)` -/
def P13121502096900361921.Spec : Prop :=
  ∀ n, P13121502096900361921.a n = A005252 n

end A005252

/-! ## A005252.P434931150236500971

`A141325(n)-A293014(n)`
-/

namespace A005252.P434931150236500971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141325 n - A293014 n

end

end A005252.P434931150236500971

namespace A005252

/-- `A141325(n)-A293014(n)` -/
def P434931150236500971.Spec : Prop :=
  ∀ n, P434931150236500971.a n = A005252 n

end A005252

/-! ## A005252.P12454608192739228699

`A173434(n+1)+A088911(n)`
-/

namespace A005252.P12454608192739228699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173434 (n + 1) + A088911 n

end

end A005252.P12454608192739228699

namespace A005252

/-- `A173434(n+1)+A088911(n)` -/
def P12454608192739228699.Spec : Prop :=
  ∀ n, P12454608192739228699.a n = A005252 n

end A005252

/-! ## A005252.P14519922455493492017

`A004697(n)+A079962(n)-A004695(n)`
-/

namespace A005252.P14519922455493492017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004697 n + (A079962 n - A004695 n)

end

end A005252.P14519922455493492017

namespace A005252

/-- `A004697(n)+A079962(n)-A004695(n)` -/
def P14519922455493492017.Spec : Prop :=
  ∀ n, P14519922455493492017.a n = A005252 n

end A005252

/-! ## A005252.P8060212351656410967

`A173433(n+1)-A000035(A002264(n+1))`
-/

namespace A005252.P8060212351656410967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173433 (n + 1) - A000035 (A002264 (n + 1)).toNat

end

end A005252.P8060212351656410967

namespace A005252

/-- `A173433(n+1)-A000035(A002264(n+1))` -/
def P8060212351656410967.Spec : Prop :=
  ∀ n, P8060212351656410967.a n = A005252 n

end A005252

/-! ## A005252.P145416474269169317

`A226956(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A005252.P145416474269169317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A226956 n - a (n - 2)

end

end A005252.P145416474269169317

namespace A005252

/-- `A226956(n)-a(n-2)` -/
def P145416474269169317.Spec : Prop :=
  ∀ n, P145416474269169317.a n = A005252 n

end A005252

/-! ## A005252.P17769547473783817222

`∑[abs(A093040(n)-A094966(n))]`
-/

namespace A005252.P17769547473783817222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A093040 n - A094966 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005252.P17769547473783817222

namespace A005252

/-- `∑[abs(A093040(n)-A094966(n))]` -/
def P17769547473783817222.Spec : Prop :=
  ∀ n, P17769547473783817222.a n = A005252 n

end A005252

/-! ## A005252.P11566956098936564990

`(A010892(n)+∑[A212804(n)])/2`
-/

namespace A005252.P11566956098936564990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A010892 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A005252.P11566956098936564990

namespace A005252

/-- `(A010892(n)+∑[A212804(n)])/2` -/
def P11566956098936564990.Spec : Prop :=
  ∀ n, P11566956098936564990.a n = (A005252 n : ℚ)

end A005252

/-! ## A005252.P7501168071505794654

`(A128834(n+1)+A000045(n+1))/2`
-/

namespace A005252.P7501168071505794654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128834 (n + 1) + A000045 (n + 1) : ℚ) / 2

end

end A005252.P7501168071505794654

namespace A005252

/-- `(A128834(n+1)+A000045(n+1))/2` -/
def P7501168071505794654.Spec : Prop :=
  ∀ n, P7501168071505794654.a n = (A005252 n : ℚ)

end A005252

/-! ## A005252.P12426118218516373381

`(A163806(n+1)+A000045(n+1))/2`
-/

namespace A005252.P12426118218516373381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163806 (n + 1) + A000045 (n + 1) : ℚ) / 2

end

end A005252.P12426118218516373381

namespace A005252

/-- `(A163806(n+1)+A000045(n+1))/2` -/
def P12426118218516373381.Spec : Prop :=
  ∀ n, P12426118218516373381.a n = (A005252 n : ℚ)

end A005252

/-! ## A005252.P18369935257937292486

`(A000045(n+1)-A163810(n+1))/2`
-/

namespace A005252.P18369935257937292486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) - A163810 (n + 1) : ℚ) / 2

end

end A005252.P18369935257937292486

namespace A005252

/-- `(A000045(n+1)-A163810(n+1))/2` -/
def P18369935257937292486.Spec : Prop :=
  ∀ n, P18369935257937292486.a n = (A005252 n : ℚ)

end A005252

/-! ## A005252.P8148962718889523826

`(A324969(n+2)+A128834(n+1))/2`
-/

namespace A005252.P8148962718889523826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324969 (n + 2) + A128834 (n + 1) : ℚ) / 2

end

end A005252.P8148962718889523826

namespace A005252

/-- `(A324969(n+2)+A128834(n+1))/2` -/
def P8148962718889523826.Spec : Prop :=
  ∀ n, P8148962718889523826.a n = (A005252 n : ℚ)

end A005252

/-! ## A005252.P15817012939463753992

`(A014021(2*n)+A000045(n+1))/2`
-/

namespace A005252.P15817012939463753992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014021 (2 * n) + A000045 (n + 1) : ℚ) / 2

end

end A005252.P15817012939463753992

namespace A005252

/-- `(A014021(2*n)+A000045(n+1))/2` -/
def P15817012939463753992.Spec : Prop :=
  ∀ n, P15817012939463753992.a n = (A005252 n : ℚ)

end A005252

/-! ## A005252.P12645920759485078460

`(A166446(2*n)+A000045(n+1))/2`
-/

namespace A005252.P12645920759485078460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166446 (2 * n) + A000045 (n + 1) : ℚ) / 2

end

end A005252.P12645920759485078460

namespace A005252

/-- `(A166446(2*n)+A000045(n+1))/2` -/
def P12645920759485078460.Spec : Prop :=
  ∀ n, P12645920759485078460.a n = (A005252 n : ℚ)

end A005252

/-!
# A005253: Number of binary words of length n in which the ones occur only in blocks of length at least 4.

The programs for A005253, the canonical program `A005253.P15607668375944119742` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005253 has offset 0).

The definition of A005253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 544 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005253.P15081131457865268119

`A209231(n)+1`
-/

namespace A005253.P15081131457865268119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209231 n + 1

end

end A005253.P15081131457865268119

namespace A005253

/-- `A209231(n)+1` -/
def P15081131457865268119.Spec : Prop :=
  ∀ n, P15081131457865268119.a n = A005253 n

theorem P15081131457865268119.correct : P15081131457865268119.Spec := by
  intro n
  simp only [A005253, Nat.add_sub_cancel, A005253.P15081131457865268119.a, A005253.P15607668375944119742.a, A001687, A001687.P6224052007800832515.a, A209231, A209231.P5618915818047327057.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005253

/-! ## A005253.P15607668375944119742

`A001687(2*n+3)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005253

/-- `A001687(2*n+3)` -/
def P15607668375944119742.Spec : Prop :=
  ∀ n, P15607668375944119742.a n = A005253 n

theorem P15607668375944119742.correct : P15607668375944119742.Spec := by
  intro n
  simp only [A005253]

end A005253

/-! ## A005253.P12936638120775569345

`or(char[1], A001687(Δ[(n+1)²]))`
-/

namespace A005253.P12936638120775569345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A001687 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat)

end

end A005253.P12936638120775569345

namespace A005253

/-- `or(char[1], A001687(Δ[(n+1)²]))` -/
def P12936638120775569345.Spec : Prop :=
  ∀ n, P12936638120775569345.a n = A005253 n

end A005253

/-! ## A005253.P16373456150366053706

`A007384(A004281(n))+1`
-/

namespace A005253.P16373456150366053706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007384 (A004281 n).toNat + 1

end

end A005253.P16373456150366053706

namespace A005253

/-- `A007384(A004281(n))+1` -/
def P16373456150366053706.Spec : Prop :=
  ∀ n, P16373456150366053706.a n = A005253 n

end A005253

/-! ## A005253.P13185080218838488307

`A007384(A004276(n+1))+1`
-/

namespace A005253.P13185080218838488307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007384 (A004276 (n + 1)).toNat + 1

end

end A005253.P13185080218838488307

namespace A005253

/-- `A007384(A004276(n+1))+1` -/
def P13185080218838488307.Spec : Prop :=
  ∀ n, P13185080218838488307.a n = A005253 n

end A005253

/-! ## A005253.P6795795810941866673

`A001687(Δ[(n+1)²])/and(1, A002997(n+1))`
-/

namespace A005253.P6795795810941866673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001687 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (Int.land 1 (A002997 (n + 1)) : ℚ)

end

end A005253.P6795795810941866673

namespace A005253

/-- `A001687(Δ[(n+1)²])/and(1, A002997(n+1))` -/
def P6795795810941866673.Spec : Prop :=
  ∀ n, P6795795810941866673.a n = (A005253 n : ℚ)

end A005253

/-! ## A005253.P478214747707298502

`A010051(A103517(n))+A001687(Δ[(n+1)²])`
-/

namespace A005253.P478214747707298502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A103517 n).toNat + A001687 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005253.P478214747707298502

namespace A005253

/-- `A010051(A103517(n))+A001687(Δ[(n+1)²])` -/
def P478214747707298502.Spec : Prop :=
  ∀ n, P478214747707298502.a n = A005253 n

end A005253

/-! ## A005253.P1225138728204876750

`A001687(Δ[(n+1)²])/A014963(A005101(n+1))`
-/

namespace A005253.P1225138728204876750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001687 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A014963 (A005101 (n + 1)).toNat : ℚ)

end

end A005253.P1225138728204876750

namespace A005253

/-- `A001687(Δ[(n+1)²])/A014963(A005101(n+1))` -/
def P1225138728204876750.Spec : Prop :=
  ∀ n, P1225138728204876750.a n = (A005253 n : ℚ)

end A005253

/-! ## A005253.P9872200717141699703

`A001687(Δ[(n+1)²])/A014963(A024556(n+1))`
-/

namespace A005253.P9872200717141699703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001687 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A014963 (A024556 (n + 1)).toNat : ℚ)

end

end A005253.P9872200717141699703

namespace A005253

/-- `A001687(Δ[(n+1)²])/A014963(A024556(n+1))` -/
def P9872200717141699703.Spec : Prop :=
  ∀ n, P9872200717141699703.a n = (A005253 n : ℚ)

end A005253

/-! ## A005253.P5793696478073614452

`Δ[ogf(1/(1-2x+x^2-x^5))]`
-/

namespace A005253.P5793696478073614452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 1, 0, 0, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005253.P5793696478073614452

namespace A005253

/-- `Δ[ogf(1/(1-2x+x^2-x^5))]` -/
def P5793696478073614452.Spec : Prop :=
  ∀ n, P5793696478073614452.a n = A005253 n

end A005253

/-! ## A005253.P9043617562821707490

`Δ[A392540(n)]`
-/

namespace A005253.P9043617562821707490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392540 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005253.P9043617562821707490

namespace A005253

/-- `Δ[A392540(n)]` -/
def P9043617562821707490.Spec : Prop :=
  ∀ n, P9043617562821707490.a n = A005253 n

end A005253

/-! ## A005253.P2015025195363271796

`Δ[record[A001687(A103517(n))]]`
-/

namespace A005253.P2015025195363271796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (A103517 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005253.P2015025195363271796

namespace A005253

/-- `Δ[record[A001687(A103517(n))]]` -/
def P2015025195363271796.Spec : Prop :=
  ∀ n, P2015025195363271796.a n = A005253 n

end A005253

/-! ## A005253.P12807801173696054109

`Δ[A001687(A103517(n+2))]`
-/

namespace A005253.P12807801173696054109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (A103517 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005253.P12807801173696054109

namespace A005253

/-- `Δ[A001687(A103517(n+2))]` -/
def P12807801173696054109.Spec : Prop :=
  ∀ n, P12807801173696054109.a n = A005253 n

end A005253

/-! ## A005253.P17536109267604422910

`Δ[A001687(A005843(n+3))]`
-/

namespace A005253.P17536109267604422910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (A005843 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005253.P17536109267604422910

namespace A005253

/-- `Δ[A001687(A005843(n+3))]` -/
def P17536109267604422910.Spec : Prop :=
  ∀ n, P17536109267604422910.a n = A005253 n

end A005253

/-! ## A005253.P16732378701004306751

`A392540(n+1)-A392540(n)`
-/

namespace A005253.P16732378701004306751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392540 (n + 1) - A392540 n

end

end A005253.P16732378701004306751

namespace A005253

/-- `A392540(n+1)-A392540(n)` -/
def P16732378701004306751.Spec : Prop :=
  ∀ n, P16732378701004306751.a n = A005253 n

end A005253

/-! ## A005253.P8252734800914757373

`Δ[record[A001687(A004275(n+1))]]`
-/

namespace A005253.P8252734800914757373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (A004275 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005253.P8252734800914757373

namespace A005253

/-- `Δ[record[A001687(A004275(n+1))]]` -/
def P8252734800914757373.Spec : Prop :=
  ∀ n, P8252734800914757373.a n = A005253 n

end A005253

/-! ## A005253.P13348671044220412069

`Δ[record[A001687(A004278(n+1))]]`
-/

namespace A005253.P13348671044220412069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (A004278 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005253.P13348671044220412069

namespace A005253

/-- `Δ[record[A001687(A004278(n+1))]]` -/
def P13348671044220412069.Spec : Prop :=
  ∀ n, P13348671044220412069.a n = A005253 n

end A005253

/-! ## A005253.P18333882146377618721

`Δ[record[A005686(2*n+1)-A005686(2*n)]]`
-/

namespace A005253.P18333882146377618721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005686 (2 * n + 1) - A005686 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005253.P18333882146377618721

namespace A005253

/-- `Δ[record[A005686(2*n+1)-A005686(2*n)]]` -/
def P18333882146377618721.Spec : Prop :=
  ∀ n, P18333882146377618721.a n = A005253 n

end A005253

/-! ## A005253.P16247179366398451891

`gcd(A011782(n+1)%2, A001687(Δ[(n+1)²]))`
-/

namespace A005253.P16247179366398451891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A011782 (n + 1)) 2) (A001687 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A005253.P16247179366398451891

namespace A005253

/-- `gcd(A011782(n+1)%2, A001687(Δ[(n+1)²]))` -/
def P16247179366398451891.Spec : Prop :=
  ∀ n, (P16247179366398451891.a n : ℤ) = A005253 n

end A005253

/-! ## A005253.P15838732602299490826

`A001687(Δ[(n+1)²])%A000079(n+1)`
-/

namespace A005253.P15838732602299490826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001687 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (A000079 (n + 1))

end

end A005253.P15838732602299490826

namespace A005253

/-- `A001687(Δ[(n+1)²])%A000079(n+1)` -/
def P15838732602299490826.Spec : Prop :=
  ∀ n, P15838732602299490826.a n = A005253 n

end A005253

/-!
# A005254: Number of weighted voting procedures.

The programs for A005254, there is no canonical definition to state claims against.
-/

/-! ## A005254.P9440380083159215372

`∑[(n+1)*A002083(n+2)]`
-/

namespace A005254.P9440380083159215372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002083 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005254.P9440380083159215372

/-! ## A005254.P6513343848344268049

`∑[(n+1)*Δ[A062178(n+1)]]`
-/

namespace A005254.P6513343848344268049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062178 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005254.P6513343848344268049

/-! ## A005254.P4238334528260866585

`∑[(n+1)*(A005255(n+1)-A005255(n))]`
-/

namespace A005254.P4238334528260866585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A005255 (n + 1) - A005255 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005254.P4238334528260866585

/-! ## A005254.P11993225714931714737

`∑[(n+1)*A037254(∑[n]+1)]`
-/

namespace A005254.P11993225714931714737
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A037254 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005254.P11993225714931714737

/-! ## A005254.P6781943117210726035

`a(n-1)+(n+1)*A037254(A000217(n)+1)` with `a(0)=1`
-/

namespace A005254.P6781943117210726035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℤ) * A037254 (A000217 n + 1).toNat

end

end A005254.P6781943117210726035

/-!
# A005255: Atkinson-Negro-Santoro sequence: a(n+1) = 2*a(n) - a(n-floor(n/2+1)).

The programs for A005255, there is no canonical definition to state claims against.
-/

/-! ## A005255.P17740820881983449219

`A062178(n+1)-1`
-/

namespace A005255.P17740820881983449219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062178 (n + 1) - 1

end

end A005255.P17740820881983449219

/-! ## A005255.P2508016572132313734

`∑[A002083(n+1)]-1`
-/

namespace A005255.P2508016572132313734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A005255.P2508016572132313734

/-! ## A005255.P8992012560718894907

`∑[A002083(n+1)%(A001045(n)+1)]`
-/

namespace A005255.P8992012560718894907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002083 (n + 1)) (A001045 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005255.P8992012560718894907

/-! ## A005255.P3250665429603768407

`Δ[∑[A062178(n)]-n]`
-/

namespace A005255.P3250665429603768407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062178 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005255.P3250665429603768407

/-! ## A005255.P17970070338821424523

`∑[and(A000225(n), A002083(n+1))]`
-/

namespace A005255.P17970070338821424523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A002083 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005255.P17970070338821424523

/-! ## A005255.P7259864439355669603

`∑[A030625(n+1)/(n+1)-(n+1)]-1`
-/

namespace A005255.P7259864439355669603
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030625 (n + 1) : ℚ) / (n + 1 : ℚ) - (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A005255.P7259864439355669603

/-! ## A005255.P2241277355427417193

`∑[A002083(n+1)%A002064(n)]`
-/

namespace A005255.P2241277355427417193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002083 (n + 1)) (A002064 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005255.P2241277355427417193

/-! ## A005255.P14721521284346415860

`∑[A037254(∑[n-1]+2)]-1`
-/

namespace A005255.P14721521284346415860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037254 (∑ j ∈ Finset.range (n + 1), f2 j + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A005255.P14721521284346415860

/-!
# A005256: Number of weighted voting procedures.

The programs for A005256, the canonical program `A005256.P132172111517445746` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005256 has offset 1).

The definition of A005256 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005256.P132172111517445746

`2*a(n-1)-a(floor((n-2)/2)-1)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=12`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005256

/-- `2*a(n-1)-a(floor((n-2)/2)-1)` -/
def P132172111517445746.Spec : Prop :=
  ∀ n, P132172111517445746.a n = A005256 (n + 1)

theorem P132172111517445746.correct : P132172111517445746.Spec := by
  intro n
  simp only [A005256, Nat.add_sub_cancel]

end A005256

/-! ## A005256.P12505670920639183471

`A062178(n+3)-2`
-/

namespace A005256.P12505670920639183471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062178 (n + 3) - 2

end

end A005256.P12505670920639183471

namespace A005256

/-- `A062178(n+3)-2` -/
def P12505670920639183471.Spec : Prop :=
  ∀ n, P12505670920639183471.a n = A005256 (n + 1)

end A005256

/-! ## A005256.P9571195655562249583

`∑[A002083(n+3)]`
-/

namespace A005256.P9571195655562249583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002083 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005256.P9571195655562249583

namespace A005256

/-- `∑[A002083(n+3)]` -/
def P9571195655562249583.Spec : Prop :=
  ∀ n, P9571195655562249583.a n = A005256 (n + 1)

end A005256

/-! ## A005256.P6395092804907150106

`A005255(n+2)-1`
-/

namespace A005256.P6395092804907150106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005255 (n + 2) - 1

end

end A005256.P6395092804907150106

namespace A005256

/-- `A005255(n+2)-1` -/
def P6395092804907150106.Spec : Prop :=
  ∀ n, P6395092804907150106.a n = A005256 (n + 1)

end A005256

/-! ## A005256.P6039722768933806456

`∑[record[A002083(A052938(n))]]`
-/

namespace A005256.P6039722768933806456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002083 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005256.P6039722768933806456

namespace A005256

/-- `∑[record[A002083(A052938(n))]]` -/
def P6039722768933806456.Spec : Prop :=
  ∀ n, P6039722768933806456.a n = A005256 (n + 1)

end A005256

/-! ## A005256.P17906270832605946556

`∑[record[A002083(A286549(n))]]`
-/

namespace A005256.P17906270832605946556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002083 (A286549 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005256.P17906270832605946556

namespace A005256

/-- `∑[record[A002083(A286549(n))]]` -/
def P17906270832605946556.Spec : Prop :=
  ∀ n, P17906270832605946556.a n = A005256 (n + 1)

end A005256

/-! ## A005256.P1092824177138814960

`∑[record[A002083(A286558(n))]]`
-/

namespace A005256.P1092824177138814960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002083 (A286558 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005256.P1092824177138814960

namespace A005256

/-- `∑[record[A002083(A286558(n))]]` -/
def P1092824177138814960.Spec : Prop :=
  ∀ n, P1092824177138814960.a n = A005256 (n + 1)

end A005256

/-! ## A005256.P577683959475439892

`A037254(∑[n+2])`
-/

namespace A005256.P577683959475439892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037254 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005256.P577683959475439892

namespace A005256

/-- `A037254(∑[n+2])` -/
def P577683959475439892.Spec : Prop :=
  ∀ n, P577683959475439892.a n = A005256 (n + 1)

end A005256

/-! ## A005256.P14174479966136720199

`A037254(A000217(n+2))-1`
-/

namespace A005256.P14174479966136720199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037254 (A000217 (n + 2)).toNat - 1

end

end A005256.P14174479966136720199

namespace A005256

/-- `A037254(A000217(n+2))-1` -/
def P14174479966136720199.Spec : Prop :=
  ∀ n, P14174479966136720199.a n = A005256 (n + 1)

end A005256

/-!
# A005257: Number of weighted voting procedures.

The programs for A005257, there is no canonical definition to state claims against.
-/

/-! ## A005257.P5658744563502807878

`A002083(n+2)+A002083(n+3)`
-/

namespace A005257.P5658744563502807878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002083 (n + 2) + A002083 (n + 3)

end

end A005257.P5658744563502807878

/-! ## A005257.P9433174969232683188

`record[Δ[A062178(A052938(n))]]`
-/

namespace A005257.P9433174969232683188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062178 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005257.P9433174969232683188

/-! ## A005257.P5853825600613553314

`A005255(n+2)-A005255(n)`
-/

namespace A005257.P5853825600613553314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005255 (n + 2) - A005255 n

end

end A005257.P5853825600613553314

/-! ## A005257.P13896739978468318181

`Δ[A005255(n+1)+A005255(n)]`
-/

namespace A005257.P13896739978468318181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005255 (n + 1) + A005255 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005257.P13896739978468318181

/-! ## A005257.P5869526821829764238

`A062178(n+3)-A062178(n+1)`
-/

namespace A005257.P5869526821829764238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062178 (n + 3) - A062178 (n + 1)

end

end A005257.P5869526821829764238

/-! ## A005257.P1884770126728437294

`A037254(∑[n+1]+2)`
-/

namespace A005257.P1884770126728437294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037254 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A005257.P1884770126728437294

/-!
# A005258: Apéry numbers: a(n) = Sum_{k=0..n} binomial(n,k)^2 * binomial(n+k,k).

The programs for A005258, there is no canonical definition to state claims against.
-/

/-! ## A005258.P1805982624638704846

`A103882(n)+A103882(n)-A208675(n)`
-/

namespace A005258.P1805982624638704846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103882 n + (A103882 n - A208675 n)

end

end A005258.P1805982624638704846

/-! ## A005258.P13799491487098891256

`2*A103882(n)-A208675(n)`
-/

namespace A005258.P13799491487098891256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103882 n - A208675 n

end

end A005258.P13799491487098891256

/-! ## A005258.P17012339396712614926

`A108625(∑[4*n])`
-/

namespace A005258.P17012339396712614926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005258.P17012339396712614926

/-! ## A005258.P17570493948369115147

`record[A108625(n*A028242(n))]`
-/

namespace A005258.P17570493948369115147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 ((n : ℤ) * A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005258.P17570493948369115147

/-! ## A005258.P74180874752671125

`record[A108625(gcd(n, A114327(n)))]`
-/

namespace A005258.P74180874752671125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (Int.gcd (n : ℤ) (A114327 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005258.P74180874752671125

/-! ## A005258.P740305798452587640

`record[A108625(A007590(A243352(n+1)))]`
-/

namespace A005258.P740305798452587640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (A007590 (A243352 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005258.P740305798452587640

/-! ## A005258.P5996832358532763445

`record[A108625(A004524(n)*A092486(n))]`
-/

namespace A005258.P5996832358532763445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (A004524 n * A092486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005258.P5996832358532763445

/-! ## A005258.P12901850898506327029

`A274786(n)/A000984(n)`
-/

namespace A005258.P12901850898506327029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274786 n : ℚ) / (A000984 n : ℚ)

end

end A005258.P12901850898506327029

/-!
# A005259: Apery (Apéry) numbers: Sum_{k=0..n} (binomial(n,k)*binomial(n+k,k))^2.

The programs for A005259, there is no canonical definition to state claims against.
-/

/-! ## A005259.P1690632518900938256

`A143007(∑[4*n])`
-/

namespace A005259.P1690632518900938256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143007 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005259.P1690632518900938256

/-! ## A005259.P14240407531626476225

`or(1, A143007(2*(n²+n)))`
-/

namespace A005259.P14240407531626476225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A143007 (2 * (n ^ 2 + n)))

end

end A005259.P14240407531626476225

/-! ## A005259.P1978489288519350103

`record[A143007(n*A008619(n))]`
-/

namespace A005259.P1978489288519350103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143007 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005259.P1978489288519350103

/-! ## A005259.P10990787473823125419

`A257045(n)/A059416(n)`
-/

namespace A005259.P10990787473823125419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257045 n : ℚ) / (A059416 n : ℚ)

end

end A005259.P10990787473823125419

/-! ## A005259.P11319791538963107718

`record[A115718(n)*A143007(n)]`
-/

namespace A005259.P11319791538963107718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115718 n * A143007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005259.P11319791538963107718

/-!
# A005260: a(n) = Sum_{k = 0..n} binomial(n,k)^4.

The programs for A005260, there is no canonical definition to state claims against.
-/

/-! ## A005260.P8768534626853420610

`(n+1)*A178824(n)`
-/

namespace A005260.P8768534626853420610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A178824 n

end

end A005260.P8768534626853420610

/-! ## A005260.P6267140435953409053

`A096192(A028310(n))-(floor(acot(n))-1)`
-/

namespace A005260.P6267140435953409053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096192 (A028310 n).toNat - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A005260.P6267140435953409053

/-! ## A005260.P5800975412305149023

`A178334(n)+A096192(A028310(n))`
-/

namespace A005260.P5800975412305149023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A096192 (A028310 n).toNat

end

end A005260.P5800975412305149023

/-! ## A005260.P10504479966404563643

`A178334(n)+A096192(A000007(n)+n)`
-/

namespace A005260.P10504479966404563643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A096192 (A000007 n + (n : ℤ)).toNat

end

end A005260.P10504479966404563643

/-! ## A005260.P10603215463317784624

`A096192(A028310(n))+A000040(n+1)%2`
-/

namespace A005260.P10603215463317784624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096192 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A005260.P10603215463317784624

/-! ## A005260.P13461418204014554977

`A096192(A028310(n))+a(A004018(4*n+3))` with `a(0)=1`
-/

namespace A005260.P13461418204014554977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A096192 (A028310 n).toNat + a (A004018 (4 * n + 3)).toNat

end

end A005260.P13461418204014554977

/-! ## A005260.P290096124294948954

`A096192(A028310(n))+A103517(n)-(2*n+1)`
-/

namespace A005260.P290096124294948954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096192 (A028310 n).toNat + (A103517 n - (2 * n + 1 : ℤ))

end

end A005260.P290096124294948954

/-! ## A005260.P10661769010455680580

`A096192(A000007(n)+n)+A001221(A008578(n+1))`
-/

namespace A005260.P10661769010455680580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096192 (A000007 n + (n : ℤ)).toNat + A001221 (A008578 (n + 1)).toNat

end

end A005260.P10661769010455680580

/-!
# A005261: a(n) = Sum_{k = 0..n} C(n,k)^5.

The programs for A005261, there is no canonical definition to state claims against.
-/

/-! ## A005261.P5287443670973161408

`A309010(eq[5, A025581(n)])`
-/

namespace A005261.P5287443670973161408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005261.P5287443670973161408

/-! ## A005261.P11857114973958016543

`A309010(eq[6, A193739(n)])`
-/

namespace A005261.P11857114973958016543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005261.P11857114973958016543

/-! ## A005261.P2104983849083507969

`A309010(A052905(n+3)-1)`
-/

namespace A005261.P2104983849083507969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (A052905 (n + 3) - 1).toNat

end

end A005261.P2104983849083507969

/-! ## A005261.P4927452619792075305

`A309010(eq[4, A068049(n+1)])`
-/

namespace A005261.P4927452619792075305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005261.P4927452619792075305

/-! ## A005261.P5736021050547802956

`A309010(eq[7, A027293(n+1)])`
-/

namespace A005261.P5736021050547802956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005261.P5736021050547802956

/-!
# A005262: a(n) = floor((7*2^(n+1)-9*n-10)/3).

The programs for A005262, the canonical program `A005262.P15009004850903829214` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005262 has offset 0).

The definition of A005262 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((7*2^(n+1)-9*n-10)/3)` (program `A005262.P15009004850903829214`, by `A005262.P15009004850903829214.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005262.P15009004850903829214

`floor((7*2^(n+1)-9*n-10)/3)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005262

/-- `floor((7*2^(n+1)-9*n-10)/3)` -/
def P15009004850903829214.Spec : Prop :=
  ∀ n, P15009004850903829214.a n = A005262 n

theorem P15009004850903829214.correct : P15009004850903829214.Spec := by
  intro n
  simp only [A005262]

end A005262

/-! ## A005262.P2637928391011366938

`ogf((1+x^2+4x^3)/(1-3x+x^2+3x^3-2x^4))`
-/

namespace A005262.P2637928391011366938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1, 4] [1, -3, 1, 3, -2] n

end

end A005262.P2637928391011366938

namespace A005262

/-- `ogf((1+x^2+4x^3)/(1-3x+x^2+3x^3-2x^4))` -/
def P2637928391011366938.Spec : Prop :=
  ∀ n, P2637928391011366938.a n = A005262 n

end A005262

/-! ## A005262.P9411113831633164808

`or(1, 2*a(n-1)+3*(n-1))` with `a(0)=1`
-/

namespace A005262.P9411113831633164808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 (2 * a (n - 1) + 3 * ((n : ℤ) - 1))

end

end A005262.P9411113831633164808

namespace A005262

/-- `or(1, 2*a(n-1)+3*(n-1))` -/
def P9411113831633164808.Spec : Prop :=
  ∀ n, P9411113831633164808.a n = A005262 n

end A005262

/-! ## A005262.P3783404967559130378

`∑[2*(a(n-1)+gcd(2, n+1))]` with `a(0)=1, a(1)=2`
-/

namespace A005262.P3783404967559130378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  2 * (f1 (n - 1) + Nat.gcd 2 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005262.P3783404967559130378

namespace A005262

/-- `∑[2*(a(n-1)+gcd(2, n+1))]` -/
def P3783404967559130378.Spec : Prop :=
  ∀ n, (P3783404967559130378.a n : ℤ) = A005262 n

end A005262

/-! ## A005262.P5230039957795892157

`2*(comp[a(n-1)+3]+a(n-1))-3` with `a(0)=1`
-/

namespace A005262.P5230039957795892157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + a (n - 1)) - 3

end

end A005262.P5230039957795892157

namespace A005262

/-- `2*(comp[a(n-1)+3]+a(n-1))-3` -/
def P5230039957795892157.Spec : Prop :=
  ∀ n, P5230039957795892157.a n = A005262 n

end A005262

/-! ## A005262.P9199886738873613232

`∑[2*a(n-1)-(-1)^n]-(3*n+1)` with `a(0)=2`
-/

namespace A005262.P9199886738873613232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * f1 (n - 1) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (3 * n + 1 : ℤ)

end

end A005262.P9199886738873613232

namespace A005262

/-- `∑[2*a(n-1)-(-1)^n]-(3*n+1)` -/
def P9199886738873613232.Spec : Prop :=
  ∀ n, P9199886738873613232.a n = A005262 n

end A005262

/-! ## A005262.P4551334248381254390

`A081253(n+2)-3*(n+1)`
-/

namespace A005262.P4551334248381254390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081253 (n + 2) - (3 * (n + 1) : ℤ)

end

end A005262.P4551334248381254390

namespace A005262

/-- `A081253(n+2)-3*(n+1)` -/
def P4551334248381254390.Spec : Prop :=
  ∀ n, P4551334248381254390.a n = A005262 n

end A005262

/-! ## A005262.P12828912400331360344

`A288170(n+1)-(2*n+3)`
-/

namespace A005262.P12828912400331360344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288170 (n + 1) - (2 * n + 3 : ℤ)

end

end A005262.P12828912400331360344

namespace A005262

/-- `A288170(n+1)-(2*n+3)` -/
def P12828912400331360344.Spec : Prop :=
  ∀ n, P12828912400331360344.a n = A005262 n

end A005262

/-! ## A005262.P8212764250377256273

`A131068(n)+2-a(n-1)` with `a(0)=1`
-/

namespace A005262.P8212764250377256273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A131068 n + (2 - a (n - 1))

end

end A005262.P8212764250377256273

namespace A005262

/-- `A131068(n)+2-a(n-1)` -/
def P8212764250377256273.Spec : Prop :=
  ∀ n, P8212764250377256273.a n = A005262 n

end A005262

/-! ## A005262.P3507362548413301337

`a(n-2)-(1-A154118(n))` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A005262.P3507362548413301337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  a (n - 2) - (1 - A154118 n)

end

end A005262.P3507362548413301337

namespace A005262

/-- `a(n-2)-(1-A154118(n))` -/
def P3507362548413301337.Spec : Prop :=
  ∀ n, P3507362548413301337.a n = A005262 n

end A005262

/-! ## A005262.P6287030924640934945

`a(n-1)+A047241(n)+a(n-1)` with `a(0)=1`
-/

namespace A005262.P6287030924640934945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A047241 n + a (n - 1))

end

end A005262.P6287030924640934945

namespace A005262

/-- `a(n-1)+A047241(n)+a(n-1)` -/
def P6287030924640934945.Spec : Prop :=
  ∀ n, P6287030924640934945.a n = A005262 n

end A005262

/-! ## A005262.P15484073040223014014

`A171507(n)+A079583(n)`
-/

namespace A005262.P15484073040223014014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171507 n + A079583 n

end

end A005262.P15484073040223014014

namespace A005262

/-- `A171507(n)+A079583(n)` -/
def P15484073040223014014.Spec : Prop :=
  ∀ n, P15484073040223014014.a n = A005262 n

end A005262

/-! ## A005262.P14875217903260740505

`A380384(n)+A097813(n)`
-/

namespace A005262.P14875217903260740505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380384 n + A097813 n

end

end A005262.P14875217903260740505

namespace A005262

/-- `A380384(n)+A097813(n)` -/
def P14875217903260740505.Spec : Prop :=
  ∀ n, P14875217903260740505.a n = A005262 n

end A005262

/-! ## A005262.P595263567356916322

`A101946(n)-A084639(n)`
-/

namespace A005262.P595263567356916322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101946 n - A084639 n

end

end A005262.P595263567356916322

namespace A005262

/-- `A101946(n)-A084639(n)` -/
def P595263567356916322.Spec : Prop :=
  ∀ n, P595263567356916322.a n = A005262 n

end A005262

/-! ## A005262.P16477290535413963785

`A097809(n)-A340849(n)`
-/

namespace A005262.P16477290535413963785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097809 n - A340849 n

end

end A005262.P16477290535413963785

namespace A005262

/-- `A097809(n)-A340849(n)` -/
def P16477290535413963785.Spec : Prop :=
  ∀ n, P16477290535413963785.a n = A005262 n

end A005262

/-! ## A005262.P13305384855091354821

`A123203(n+1)+A000975(n)`
-/

namespace A005262.P13305384855091354821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123203 (n + 1) + A000975 n

end

end A005262.P13305384855091354821

namespace A005262

/-- `A123203(n+1)+A000975(n)` -/
def P13305384855091354821.Spec : Prop :=
  ∀ n, P13305384855091354821.a n = A005262 n

end A005262

/-! ## A005262.P13698532190574367392

`A026646(n)+A026646(n)-A340849(n+1)`
-/

namespace A005262.P13698532190574367392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026646 n + (A026646 n - A340849 (n + 1))

end

end A005262.P13698532190574367392

namespace A005262

/-- `A026646(n)+A026646(n)-A340849(n+1)` -/
def P13698532190574367392.Spec : Prop :=
  ∀ n, P13698532190574367392.a n = A005262 n

end A005262

/-!
# A005263: Number of labeled Greg trees.

The programs for A005263, there is no canonical definition to state claims against.
-/

/-! ## A005263.P623781861071124659

`A101402(∑[(n-1)^n])`
-/

namespace A005263.P623781861071124659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101402 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A005263.P623781861071124659

/-!
# A005264: Number of labeled rooted Greg trees with n nodes.

The programs for A005264, there is no canonical definition to state claims against.
-/

/-! ## A005264.P9209053717790410030

`A370948(∑[n]+1)`
-/

namespace A005264.P9209053717790410030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370948 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A005264.P9209053717790410030

/-! ## A005264.P18352092583739609503

`record[A010054(n)*A370948(n+1)]`
-/

namespace A005264.P18352092583739609503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A370948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005264.P18352092583739609503

/-!
# A005265: a(1)=3, b(n) = Product_{k=1..n} a(k), a(n+1) is the smallest prime factor of b(n)-1.

The programs for A005265, there is no canonical definition to state claims against.
-/

/-! ## A005265.P17585096315011413537

`or(1, A084598(n+1))-char[1]`
-/

namespace A005265.P17585096315011413537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A084598 (n + 1)) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A005265.P17585096315011413537

/-! ## A005265.P3566938366232540805

`A084598(round(sqrt(n²+1))+1)-char[1]`
-/

namespace A005265.P3566938366232540805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084598 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A005265.P3566938366232540805

/-! ## A005265.P7943912507715818730

`xor(char[A080956(n)], A084598(n+1))`
-/

namespace A005265.P7943912507715818730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080956 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A084598 (n + 1))

end

end A005265.P7943912507715818730

/-! ## A005265.P3045661353864113149

`xor(char[A098606(n)], A084598(n+1))`
-/

namespace A005265.P3045661353864113149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098606 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A084598 (n + 1))

end

end A005265.P3045661353864113149

/-! ## A005265.P13933924169617448390

`xor(A084598(n+1), A322585(A109613(n)))`
-/

namespace A005265.P13933924169617448390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A084598 (n + 1)) (A322585 (A109613 n).toNat)

end

end A005265.P13933924169617448390

/-!
# A005266: a(1)=3, b(n) = Product_{k=1..n} a(k), a(n+1) is the largest prime factor of (b(n)-1).

The programs for A005266, there is no canonical definition to state claims against.
-/

/-! ## A005266.P2874945120945565323

`xor(char[n²²], A084599(n+1))`
-/

namespace A005266.P2874945120945565323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A084599 (n + 1))

end

end A005266.P2874945120945565323

/-! ## A005266.P14832551275674084685

`xor(A084599(n+1), A209229(n²+1))`
-/

namespace A005266.P14832551275674084685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A084599 (n + 1)) (A209229 (n ^ 2 + 1))

end

end A005266.P14832551275674084685

/-! ## A005266.P11477003188014333740

`xor(A084599(n+1), A322585(A109613(n)))`
-/

namespace A005266.P11477003188014333740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A084599 (n + 1)) (A322585 (A109613 n).toNat)

end

end A005266.P11477003188014333740

/-! ## A005266.P5805175339087093767

`xor(A084599(n+1), A322585(A090705(n+2)))`
-/

namespace A005266.P5805175339087093767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A084599 (n + 1)) (A322585 (A090705 (n + 2)).toNat)

end

end A005266.P5805175339087093767

/-! ## A005266.P6128885151097771263

`xor(A084599(n+1), A322585(A136583(n+1)))`
-/

namespace A005266.P6128885151097771263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A084599 (n + 1)) (A322585 (A136583 (n + 1)).toNat)

end

end A005266.P6128885151097771263

/-!
# A005267: a(n) = -1 + a(0)*a(1)*...*a(n-1) with a(0) = 3.

The programs for A005267, the canonical program `A005267.P6300807040458977442` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005267 has offset 0).

The definition of A005267 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005267.P6300807040458977442

`a(n-1)²+a(n-1)-1` with `a(0)=3, a(1)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005267

/-- `a(n-1)²+a(n-1)-1` -/
def P6300807040458977442.Spec : Prop :=
  ∀ n, P6300807040458977442.a n = A005267 n

theorem P6300807040458977442.correct : P6300807040458977442.Spec := by
  intro n
  simp only [A005267]

end A005267

/-! ## A005267.P14305200069304771766

`a(n-1)-(1-a(n-1)²)` with `a(0)=3, a(1)=2`
-/

namespace A005267.P14305200069304771766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  a (n - 1) - (1 - a (n - 1) ^ 2)

end

end A005267.P14305200069304771766

namespace A005267

/-- `a(n-1)-(1-a(n-1)²)` -/
def P14305200069304771766.Spec : Prop :=
  ∀ n, P14305200069304771766.a n = A005267 n

theorem P14305200069304771766.correct : P14305200069304771766.Spec := by
  intro n
  simp only [A005267, Nat.add_sub_cancel, A005267.P14305200069304771766.a, A005267.P6300807040458977442.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A005267

/-! ## A005267.P840527344858310215

`(a(n-1)+1)*a(n-1)-1` with `a(0)=3, a(1)=2`
-/

namespace A005267.P840527344858310215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  (a (n - 1) + 1) * a (n - 1) - 1

end

end A005267.P840527344858310215

namespace A005267

/-- `(a(n-1)+1)*a(n-1)-1` -/
def P840527344858310215.Spec : Prop :=
  ∀ n, P840527344858310215.a n = A005267 n

theorem P840527344858310215.correct : P840527344858310215.Spec := by
  intro n
  simp only [A005267, Nat.add_sub_cancel, A005267.P840527344858310215.a, A005267.P6300807040458977442.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A005267

/-! ## A005267.P3202697777374543583

`lcm(a(n-1)+1, a(n-1))-1` with `a(0)=3, a(1)=2`
-/

namespace A005267.P3202697777374543583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  (Int.lcm (a (n - 1) + 1) (a (n - 1)) : ℤ) - 1

end

end A005267.P3202697777374543583

namespace A005267

/-- `lcm(a(n-1)+1, a(n-1))-1` -/
def P3202697777374543583.Spec : Prop :=
  ∀ n, P3202697777374543583.a n = A005267 n

end A005267

/-! ## A005267.P1086798953344480566

`a(n-1)-(1-a(n-1)*a(n-1))` with `a(0)=3, a(1)=2`
-/

namespace A005267.P1086798953344480566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  a (n - 1) - (1 - a (n - 1) * a (n - 1))

end

end A005267.P1086798953344480566

namespace A005267

/-- `a(n-1)-(1-a(n-1)*a(n-1))` -/
def P1086798953344480566.Spec : Prop :=
  ∀ n, P1086798953344480566.a n = A005267 n

theorem P1086798953344480566.correct : P1086798953344480566.Spec := by
  intro n
  simp only [A005267, Nat.add_sub_cancel, A005267.P1086798953344480566.a, A005267.P6300807040458977442.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A005267

/-!
# A005269: a(n) = number of length-n sequences s with s[1]=1, s[2]=1, s[k-1] <=s[k] <= s[k-2]+s[k-1] (s is called a sub-Fibonacci sequence of length n).

The programs for A005269, there is no canonical definition to state claims against.
-/

/-! ## A005269.P4137816857535206720

`A213634(or(A006372(n), A006385(n)))`
-/

namespace A005269.P4137816857535206720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213634 (Int.lor (A006372 n) (A006385 n)).toNat

end

end A005269.P4137816857535206720

/-! ## A005269.P8647182450720185518

`A036234(A003965(n+1)*A088713(n))`
-/

namespace A005269.P8647182450720185518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A003965 (n + 1) * A088713 n).toNat

end

end A005269.P8647182450720185518

/-! ## A005269.P16360407285688784184

`A036234(A088713(n)*A292638(n+1))`
-/

namespace A005269.P16360407285688784184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A088713 n * A292638 (n + 1)).toNat

end

end A005269.P16360407285688784184

/-!
# A005270: Number of sequences s of length n with s[1]=1, s[2]=1, s[j-1]<s[j]<=s[j-2]+s[j-1] for j>=3.

The programs for A005270, there is no canonical definition to state claims against.
-/

/-! ## A005270.P17683096363962744685

`A098429(or(3, floor(∑[(n-1)^n/2])))`
-/

namespace A005270.P17683096363962744685
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) ^ n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098429 (Int.lor 3 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋).toNat

end

end A005270.P17683096363962744685

/-! ## A005270.P1416535326517902265

`A155216(2^(n-1)*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A005270.P1416535326517902265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A155216 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (a (n - 1) : ℚ))).toNat

end

end A005270.P1416535326517902265

/-! ## A005270.P14174098509935481629

`A053873(A019301(n))`
-/

namespace A005270.P14174098509935481629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053873 (A019301 n).toNat

end

end A005270.P14174098509935481629

/-!
# A005271: Number of perfect matchings in n-cube.

The programs for A005271, there is no canonical definition to state claims against.
-/

/-! ## A005271.P1584741397604755992

`sqrt(A233001(n+1))`
-/

namespace A005271.P1584741397604755992
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A233001 (n + 1) : ℝ)

end

end A005271.P1584741397604755992

/-! ## A005271.P16413501900130485268

`record[ratio[A389384(n)]]`
-/

namespace A005271.P16413501900130485268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389384 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005271.P16413501900130485268

/-!
# A005272: Number of Van Lier sequences of length n.

The programs for A005272, there is no canonical definition to state claims against.
-/

/-! ## A005272.P8748629354684610755

`A309151(A002110(n))+A137578(n)`
-/

namespace A005272.P8748629354684610755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309151 (A002110 n).toNat + A137578 n

end

end A005272.P8748629354684610755

/-!
# A005273: (5,4)-graphs.

The programs for A005273, there is no canonical definition to state claims against.
-/

/-! ## A005273.P6216123176065924138

`A238785(ceil(cosh(n)))`
-/

namespace A005273.P6216123176065924138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238785 ⌈Real.cosh (n : ℝ)⌉.toNat

end

end A005273.P6216123176065924138

/-!
# A005276: Betrothed (or quasi-amicable) numbers.

The programs for A005276, there is no canonical definition to state claims against.
-/

/-! ## A005276.P9833389100246215463

`A328370(A184486(n+1))%A184455(n+1)`
-/

namespace A005276.P9833389100246215463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328370 (A184486 (n + 1)).toNat) (A184455 (n + 1))

end

end A005276.P9833389100246215463

/-! ## A005276.P13324092643135234890

`A328370(A028980(n+1))`
-/

namespace A005276.P13324092643135234890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328370 (A028980 (n + 1)).toNat

end

end A005276.P13324092643135234890

/-!
# A005277: Nontotients: even numbers k such that phi(m) = k has no solution.

The programs for A005277, the canonical program `A005277.P10634562769707838481` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005277 has offset 1).

The definition of A005277 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005277.P4768661670905975751

`2*A079695(n+1)`
-/

namespace A005277.P4768661670905975751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079695 (n + 1)

end

end A005277.P4768661670905975751

namespace A005277

/-- `2*A079695(n+1)` -/
def P4768661670905975751.Spec : Prop :=
  ∀ n, P4768661670905975751.a n = A005277 (n + 1)

end A005277

/-! ## A005277.P10634562769707838481

`eq[1, A355451(n+1)]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A005277

/-- `eq[1, A355451(n+1)]+1` -/
def P10634562769707838481.Spec : Prop :=
  ∀ n, (P10634562769707838481.a n : ℤ) = A005277 (n + 1)

theorem P10634562769707838481.correct : P10634562769707838481.Spec := by
  intro n
  simp only [A005277, Nat.add_sub_cancel]

end A005277

/-! ## A005277.P11115786077647556372

`filter[A177712(n+2), A355451(#)]`
-/

namespace A005277.P11115786077647556372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177712 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355451 (f1 j).toNat = 1) n)

end

end A005277.P11115786077647556372

namespace A005277

/-- `filter[A177712(n+2), A355451(#)]` -/
def P11115786077647556372.Spec : Prop :=
  ∀ n, P11115786077647556372.a n = A005277 (n + 1)

end A005277

/-! ## A005277.P9594634231587252061

`∪[A058763(n+1), A058826(n+1)]`
-/

namespace A005277.P9594634231587252061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005277.P9594634231587252061

namespace A005277

/-- `∪[A058763(n+1), A058826(n+1)]` -/
def P9594634231587252061.Spec : Prop :=
  ∀ n, (P9594634231587252061.a n : ℤ) = A005277 (n + 1)

end A005277

/-! ## A005277.P9134005243178350833

`A079695(A000027(n+1))+A079695(n+1)`
-/

namespace A005277.P9134005243178350833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079695 (A000027 (n + 1)).toNat + A079695 (n + 1)

end

end A005277.P9134005243178350833

namespace A005277

/-- `A079695(A000027(n+1))+A079695(n+1)` -/
def P9134005243178350833.Spec : Prop :=
  ∀ n, P9134005243178350833.a n = A005277 (n + 1)

end A005277

/-! ## A005277.P12883241776965851927

`∑{d}[A079695(n+1), A000010(#)+A000010(#)]`
-/

namespace A005277.P12883241776965851927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A000010 d + A000010 d)

end

end A005277.P12883241776965851927

namespace A005277

/-- `∑{d}[A079695(n+1), A000010(#)+A000010(#)]` -/
def P12883241776965851927.Spec : Prop :=
  ∀ n, P12883241776965851927.a n = A005277 (n + 1)

end A005277

/-! ## A005277.P7011908178954875350

`A079695(n+1)+A079695(n+1)%A079695(n+2)`
-/

namespace A005277.P7011908178954875350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079695 (n + 1) + Int.tmod (A079695 (n + 1)) (A079695 (n + 2))

end

end A005277.P7011908178954875350

namespace A005277

/-- `A079695(n+1)+A079695(n+1)%A079695(n+2)` -/
def P7011908178954875350.Spec : Prop :=
  ∀ n, P7011908178954875350.a n = A005277 (n + 1)

end A005277

/-! ## A005277.P11735055895653967613

`2*comp[floor(A000010(n+1)/2)]`
-/

namespace A005277.P11735055895653967613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (n + 1) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A005277.P11735055895653967613

namespace A005277

/-- `2*comp[floor(A000010(n+1)/2)]` -/
def P11735055895653967613.Spec : Prop :=
  ∀ n, (P11735055895653967613.a n : ℤ) = A005277 (n + 1)

end A005277

/-! ## A005277.P9367928437255918460

`filter[A186193(n+1), A355451(#)]`
-/

namespace A005277.P9367928437255918460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355451 (f1 j).toNat = 1) n)

end

end A005277.P9367928437255918460

namespace A005277

/-- `filter[A186193(n+1), A355451(#)]` -/
def P9367928437255918460.Spec : Prop :=
  ∀ n, P9367928437255918460.a n = A005277 (n + 1)

end A005277

/-! ## A005277.P11511186632401288290

`filter[A309355(n+1), A355451(#)]`
-/

namespace A005277.P11511186632401288290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355451 (f1 j).toNat = 1) n)

end

end A005277.P11511186632401288290

namespace A005277

/-- `filter[A309355(n+1), A355451(#)]` -/
def P11511186632401288290.Spec : Prop :=
  ∀ n, P11511186632401288290.a n = A005277 (n + 1)

end A005277

/-! ## A005277.P13524258102767912790

`filter[A100319(n+1), A355451(#)]`
-/

namespace A005277.P13524258102767912790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355451 (f1 j).toNat = 1) n)

end

end A005277.P13524258102767912790

namespace A005277

/-- `filter[A100319(n+1), A355451(#)]` -/
def P13524258102767912790.Spec : Prop :=
  ∀ n, P13524258102767912790.a n = A005277 (n + 1)

end A005277

/-! ## A005277.P15963431020142314019

`filter[A020744(n), A355451(#)]`
-/

namespace A005277.P15963431020142314019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355451 (f1 j).toNat = 1) n)

end

end A005277.P15963431020142314019

namespace A005277

/-- `filter[A020744(n), A355451(#)]` -/
def P15963431020142314019.Spec : Prop :=
  ∀ n, P15963431020142314019.a n = A005277 (n + 1)

end A005277

/-! ## A005277.P3917461574426414742

`filter[A020739(n), A355451(#)]`
-/

namespace A005277.P3917461574426414742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355451 (f1 j).toNat = 1) n)

end

end A005277.P3917461574426414742

namespace A005277

/-- `filter[A020739(n), A355451(#)]` -/
def P3917461574426414742.Spec : Prop :=
  ∀ n, P3917461574426414742.a n = A005277 (n + 1)

end A005277

/-! ## A005277.P2666209114627583725

`A062545(A079695(n+1)-2)+1`
-/

namespace A005277.P2666209114627583725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 (A079695 (n + 1) - 2).toNat + 1

end

end A005277.P2666209114627583725

namespace A005277

/-- `A062545(A079695(n+1)-2)+1` -/
def P2666209114627583725.Spec : Prop :=
  ∀ n, P2666209114627583725.a n = A005277 (n + 1)

end A005277

/-! ## A005277.P14814258161159886498

`A004277(A079695(n+1))`
-/

namespace A005277.P14814258161159886498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A079695 (n + 1)).toNat

end

end A005277.P14814258161159886498

namespace A005277

/-- `A004277(A079695(n+1))` -/
def P14814258161159886498.Spec : Prop :=
  ∀ n, P14814258161159886498.a n = A005277 (n + 1)

end A005277

/-! ## A005277.P10139506740673484548

`filter[A004277(n), A355451(#)]`
-/

namespace A005277.P10139506740673484548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355451 (f1 j).toNat = 1) n)

end

end A005277.P10139506740673484548

namespace A005277

/-- `filter[A004277(n), A355451(#)]` -/
def P10139506740673484548.Spec : Prop :=
  ∀ n, P10139506740673484548.a n = A005277 (n + 1)

end A005277

/-! ## A005277.P11546873221352977578

`filter[A057543(n), A355451(#)]`
-/

namespace A005277.P11546873221352977578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355451 (f1 j).toNat = 1) n)

end

end A005277.P11546873221352977578

namespace A005277

/-- `filter[A057543(n), A355451(#)]` -/
def P11546873221352977578.Spec : Prop :=
  ∀ n, P11546873221352977578.a n = A005277 (n + 1)

end A005277

/-! ## A005277.P1501894768663044454

`filter[A103517(n), A355451(#)]`
-/

namespace A005277.P1501894768663044454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355451 (f1 j).toNat = 1) n)

end

end A005277.P1501894768663044454

namespace A005277

/-- `filter[A103517(n), A355451(#)]` -/
def P1501894768663044454.Spec : Prop :=
  ∀ n, P1501894768663044454.a n = A005277 (n + 1)

end A005277

/-! ## A005277.P11185627910385441154

`A103517(lt[A057826(n+1), 1])`
-/

namespace A005277.P11185627910385441154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057826 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A005277.P11185627910385441154

namespace A005277

/-- `A103517(lt[A057826(n+1), 1])` -/
def P11185627910385441154.Spec : Prop :=
  ∀ n, P11185627910385441154.a n = A005277 (n + 1)

end A005277

/-! ## A005277.P11464563545847594677

`filter[A004275(n+1), A355451(#)]`
-/

namespace A005277.P11464563545847594677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355451 (f1 j).toNat = 1) n)

end

end A005277.P11464563545847594677

namespace A005277

/-- `filter[A004275(n+1), A355451(#)]` -/
def P11464563545847594677.Spec : Prop :=
  ∀ n, P11464563545847594677.a n = A005277 (n + 1)

end A005277

/-!
# A005278: Noncototients: numbers k such that x - phi(x) = k has no solution.

The programs for A005278, there is no canonical definition to state claims against.
-/

/-! ## A005278.P18085022488345991308

`2*A126887(n+1)`
-/

namespace A005278.P18085022488345991308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126887 (n + 1)

end

end A005278.P18085022488345991308

/-! ## A005278.P5878909845228107268

`∪[A058763(n+1), A058827(n+1)]`
-/

namespace A005278.P5878909845228107268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005278.P5878909845228107268

/-! ## A005278.P698156071516029897

`A126887(A000027(n+1))+A126887(n+1)`
-/

namespace A005278.P698156071516029897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126887 (A000027 (n + 1)).toNat + A126887 (n + 1)

end

end A005278.P698156071516029897

/-! ## A005278.P8152192393864096258

`A126887(n+1)+lcm(A033999(n), A126887(n+1))`
-/

namespace A005278.P8152192393864096258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126887 (n + 1) + (Int.lcm (A033999 n) (A126887 (n + 1)) : ℤ)

end

end A005278.P8152192393864096258

/-! ## A005278.P15435380779610240802

`A004277(A126887(n+1))`
-/

namespace A005278.P15435380779610240802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A126887 (n + 1)).toNat

end

end A005278.P15435380779610240802

/-! ## A005278.P1743450848175491895

`A004275(A126887(n+1)+1)`
-/

namespace A005278.P1743450848175491895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A126887 (n + 1) + 1).toNat

end

end A005278.P1743450848175491895

/-! ## A005278.P9580516185329571117

`A005843(A126887(n+1)%A017500(n))`
-/

namespace A005278.P9580516185329571117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A126887 (n + 1)) (A017500 n)).toNat

end

end A005278.P9580516185329571117

/-! ## A005278.P16171028071836471825

`lcm(A005843(A126887(n+1)), A033999(n))`
-/

namespace A005278.P16171028071836471825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005843 (A126887 (n + 1)).toNat) (A033999 n)

end

end A005278.P16171028071836471825

/-! ## A005278.P3483715282235801249

`A005843(A126887(n+1))%A043352(n+1)`
-/

namespace A005278.P3483715282235801249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A126887 (n + 1)).toNat) (A043352 (n + 1))

end

end A005278.P3483715282235801249

/-! ## A005278.P6846613437821105574

`comp[A063742(n+1)]`
-/

namespace A005278.P6846613437821105574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A005278.P6846613437821105574

/-! ## A005278.P7630013764762655997

`lt[A063507(n+1), 1]+1`
-/

namespace A005278.P7630013764762655997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A005278.P7630013764762655997

/-! ## A005278.P2826420348328615248

`A020725(lt[A063507(n+1), 1])`
-/

namespace A005278.P2826420348328615248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A005278.P2826420348328615248

/-! ## A005278.P14824801503248304843

`A133265(lt[A063507(n+1), 1])`
-/

namespace A005278.P14824801503248304843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A005278.P14824801503248304843

/-! ## A005278.P7590457200736095074

`A133265(eq[1, A063507(n+1)+1])`
-/

namespace A005278.P7590457200736095074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005278.P7590457200736095074

/-! ## A005278.P15115163025373767493

`A009056(eq[1, A063740(n+2)+1])`
-/

namespace A005278.P15115163025373767493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063740 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005278.P15115163025373767493

/-! ## A005278.P4067224145366561024

`A171463(eq[1, A063740(n+2)+1])`
-/

namespace A005278.P4067224145366561024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063740 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005278.P4067224145366561024

/-! ## A005278.P1524454414510081334

`eq[A063507(A264739(n+1)+n), A264739(n+1)]`
-/

namespace A005278.P1524454414510081334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (A264739 (n + 1) + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264739 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A005278.P1524454414510081334

/-! ## A005278.P12824139831886355995

`eq[A049283(2*n+1), A063507(n+2)]+2`
-/

namespace A005278.P12824139831886355995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A005278.P12824139831886355995

/-! ## A005278.P15415192564463363456

`eq[A063507(n+2), A215240(2*n+1)]+2`
-/

namespace A005278.P15415192564463363456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215240 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A005278.P15415192564463363456

/-! ## A005278.P15720088502666508635

`lt[A063748(n+2), 1]+2`
-/

namespace A005278.P15720088502666508635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063748 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A005278.P15720088502666508635

/-!
# A005279: Numbers having divisors d, e with d < e < 2*d.

The programs for A005279, there is no canonical definition to state claims against.
-/

/-! ## A005279.P13410381104338393656

`A010814(n+1)/2`
-/

namespace A005279.P13410381104338393656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010814 (n + 1) : ℚ) / 2

end

end A005279.P13410381104338393656

/-! ## A005279.P1164179962760301178

`ceil(A136000(n+1)/2)`
-/

namespace A005279.P1164179962760301178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A136000 (n + 1) : ℚ) / 2⌉

end

end A005279.P1164179962760301178

/-! ## A005279.P16183794037551331137

`lt[1, A270417(n+1)+1]+1`
-/

namespace A005279.P16183794037551331137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A005279.P16183794037551331137

/-! ## A005279.P11470574230006478045

`eq[1, A010892(a(A270417(n)))]` with `a(0)=2`
-/

namespace A005279.P11470574230006478045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A010892 (f2 (A270417 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005279.P11470574230006478045

/-! ## A005279.P10945551001098983344

`lt[1, A250068(n+1)]+1`
-/

namespace A005279.P10945551001098983344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A005279.P10945551001098983344

/-! ## A005279.P17592332241394009202

`lt[A053626(n+2), n]+2`
-/

namespace A005279.P17592332241394009202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A005279.P17592332241394009202

/-! ## A005279.P15406631108399626532

`lt[1, A250068(A028310(n))]`
-/

namespace A005279.P15406631108399626532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A005279.P15406631108399626532

/-! ## A005279.P9143270820678235157

`eq[1, A255961(a(A250068(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A005279.P9143270820678235157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A255961 (f2 (A250068 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005279.P9143270820678235157

/-! ## A005279.P8983381122685630652

`record[A107487(A057979(n+2))]`
-/

namespace A005279.P8983381122685630652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107487 (A057979 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005279.P8983381122685630652

/-! ## A005279.P16411247310880063845

`ceil(lt[1/2, atan(A024155(n+1))]/2)`
-/

namespace A005279.P16411247310880063845
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A024155 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n : ℚ) / 2⌉

end

end A005279.P16411247310880063845

/-! ## A005279.P2520863265638177693

`A029578(A010814(n+1))`
-/

namespace A005279.P2520863265638177693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A010814 (n + 1)).toNat

end

end A005279.P2520863265638177693

/-! ## A005279.P8321291904326207496

`A000463(A136000(n+1))`
-/

namespace A005279.P8321291904326207496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A136000 (n + 1)).toNat

end

end A005279.P8321291904326207496

/-! ## A005279.P5267341817802800619

`A008619(A010814(n+1)-1)`
-/

namespace A005279.P5267341817802800619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A010814 (n + 1) - 1).toNat

end

end A005279.P5267341817802800619

/-! ## A005279.P12657251910550034150

`A159481(A010814(n+1)-1)`
-/

namespace A005279.P12657251910550034150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 (A010814 (n + 1) - 1).toNat

end

end A005279.P12657251910550034150

/-! ## A005279.P4375453016902260101

`A160413(A010814(n+1)-2)+1`
-/

namespace A005279.P4375453016902260101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160413 (A010814 (n + 1) - 2).toNat + 1

end

end A005279.P4375453016902260101

/-! ## A005279.P7235447772994566849

`(lt[A064911(n+1), atan(A024155(n+1))]+1)/2`
-/

namespace A005279.P7235447772994566849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A024155 (n + 1) : ℝ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1 : ℚ) / 2

end

end A005279.P7235447772994566849

/-! ## A005279.P7151868825059511777

`A001281(A010814(n+1)+2)-1`
-/

namespace A005279.P7151868825059511777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A010814 (n + 1) + 2).toNat - 1

end

end A005279.P7151868825059511777

/-! ## A005279.P7472633004270393319

`lt[A063427(n+2), n]+2`
-/

namespace A005279.P7472633004270393319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063427 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A005279.P7472633004270393319

/-! ## A005279.P1110737499693264988

`A057353(2*A010814(n+1))-A010814(n+1)`
-/

namespace A005279.P1110737499693264988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (2 * A010814 (n + 1)).toNat - A010814 (n + 1)

end

end A005279.P1110737499693264988

/-! ## A005279.P15342982193566819920

`A002265(2*A010814(n+1))`
-/

namespace A005279.P15342982193566819920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A010814 (n + 1)).toNat

end

end A005279.P15342982193566819920

/-!
# A005282: Mian-Chowla sequence (a B_2 sequence): a(1) = 1; for n>1, a(n) = smallest number > a(n-1) such that the pairwise sums of elements are all distinct.

The programs for A005282, there is no canonical definition to state claims against.
-/

/-! ## A005282.P11360150385104230438

`A025582(n+1)+1`
-/

namespace A005282.P11360150385104230438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025582 (n + 1) + 1

end

end A005282.P11360150385104230438

/-! ## A005282.P5082014600299963713

`(A034757(n+1)+1)/2`
-/

namespace A005282.P5082014600299963713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034757 (n + 1) + 1 : ℚ) / 2

end

end A005282.P5082014600299963713

/-! ## A005282.P2877932351764366847

`A133097(n+1)+A010672(n)+1`
-/

namespace A005282.P2877932351764366847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133097 (n + 1) + (A010672 n + 1)

end

end A005282.P2877932351764366847

/-! ## A005282.P2036905111769364686

`A133097(n+1)+A011185(n+1)`
-/

namespace A005282.P2036905111769364686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133097 (n + 1) + A011185 (n + 1)

end

end A005282.P2036905111769364686

/-! ## A005282.P5556346924021223780

`A284917(n+1)+n`
-/

namespace A005282.P5556346924021223780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284917 (n + 1) + (n : ℤ)

end

end A005282.P5556346924021223780

/-! ## A005282.P15784109111945336638

`(∑[A287178(n+1)]+1)/2`
-/

namespace A005282.P15784109111945336638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287178 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A005282.P15784109111945336638

/-! ## A005282.P15621140031507872309

`ceil(A034757(n+1)/2)`
-/

namespace A005282.P15621140031507872309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034757 (n + 1) : ℚ) / 2⌉

end

end A005282.P15621140031507872309

/-! ## A005282.P10461394949061951264

`A101274(n)+a(n-1)` with `a(0)=1`
-/

namespace A005282.P10461394949061951264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A101274 n + a (n - 1)

end

end A005282.P10461394949061951264

/-! ## A005282.P9574017683429057114

`∑[A101274(A028310(n))]`
-/

namespace A005282.P9574017683429057114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101274 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005282.P9574017683429057114

/-! ## A005282.P17401084489717728751

`∑[A101274(n+1)]+1-A101274(n+1)`
-/

namespace A005282.P17401084489717728751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A101274 (n + 1))

end

end A005282.P17401084489717728751

/-! ## A005282.P7107328298265744896

`∑[A004525(A287178(n+1))]`
-/

namespace A005282.P7107328298265744896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A287178 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005282.P7107328298265744896

/-!
# A005283: Number of permutations of (1,...,n) having n-5 inversions (n>=5).

The programs for A005283, there is no canonical definition to state claims against.
-/

/-! ## A005283.P16293574270138206635

`A001894(n+5)-A001893(n+4)`
-/

namespace A005283.P16293574270138206635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001894 (n + 5) - A001893 (n + 4)

end

end A005283.P16293574270138206635

/-! ## A005283.P16672306336927392946

`Δ[A001894(n+4)]-A001892(n+3)`
-/

namespace A005283.P16672306336927392946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001894 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001892 (n + 3)

end

end A005283.P16672306336927392946

/-! ## A005283.P709547234491982646

`A001894(n+5)-(A001894(n+4)+A001892(n+3))`
-/

namespace A005283.P709547234491982646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001894 (n + 5) - (A001894 (n + 4) + A001892 (n + 3))

end

end A005283.P709547234491982646

/-! ## A005283.P6435479950379607617

`∑[A005284(n+6)+A001893(n+3)]-A005284(n+6)`
-/

namespace A005283.P6435479950379607617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005284 (n + 6) + A001893 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005284 (n + 6)

end

end A005283.P6435479950379607617

/-! ## A005283.P8186336945556638078

`record[A177517(2*n²+3)]`
-/

namespace A005283.P8186336945556638078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (2 * n ^ 2 + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005283.P8186336945556638078

/-! ## A005283.P6385601219471293871

`A060701(A099776(n+2)+1)`
-/

namespace A005283.P6385601219471293871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060701 (A099776 (n + 2) + 1).toNat

end

end A005283.P6385601219471293871

/-!
# A005284: Number of permutations of (1,...,n) having n-6 inversions (n>=6).

The programs for A005284, there is no canonical definition to state claims against.
-/

/-! ## A005284.P1909410602298812045

`A005283(n+6)-A001894(n+5)`
-/

namespace A005284.P1909410602298812045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005283 (n + 6) - A001894 (n + 5)

end

end A005284.P1909410602298812045

/-! ## A005284.P15575779364763102742

`Δ[A005283(n+5)]-A001893(n+4)`
-/

namespace A005284.P15575779364763102742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005283 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001893 (n + 4)

end

end A005284.P15575779364763102742

/-! ## A005284.P12747337376568452846

`A005283(n+6)-(A005283(n+5)+A001893(n+4))`
-/

namespace A005284.P12747337376568452846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005283 (n + 6) - (A005283 (n + 5) + A001893 (n + 4))

end

end A005284.P12747337376568452846

/-! ## A005284.P860538728783466411

`Δ[A001894(n+5)]-A001893(n+5)`
-/

namespace A005284.P860538728783466411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001894 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001893 (n + 5)

end

end A005284.P860538728783466411

/-! ## A005284.P1820581480038646757

`∑[A005285(n+7)+A001894(n+4)]-A005285(n+7)`
-/

namespace A005284.P1820581480038646757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005285 (n + 7) + A001894 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005285 (n + 7)

end

end A005284.P1820581480038646757

/-! ## A005284.P9061764127729989445

`A177517(A001844(n+3)+3)`
-/

namespace A005284.P9061764127729989445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A001844 (n + 3) + 3).toNat

end

end A005284.P9061764127729989445

/-!
# A005285: Number of permutations of (1,...,n) having n-7 inversions (n>=7).

The programs for A005285, there is no canonical definition to state claims against.
-/

/-! ## A005285.P14186526323365068492

`A005284(n+7)-A005283(n+6)`
-/

namespace A005285.P14186526323365068492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005284 (n + 7) - A005283 (n + 6)

end

end A005285.P14186526323365068492

/-! ## A005285.P2151798203610116137

`Δ[A005284(n+6)-∑[A001894(n+4)]]`
-/

namespace A005285.P2151798203610116137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001894 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005284 (n + 6) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005285.P2151798203610116137

/-! ## A005285.P12381312257760972087

`A005284(n+7)-(A005284(n+6)+A001894(n+5))`
-/

namespace A005285.P12381312257760972087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005284 (n + 7) - (A005284 (n + 6) + A001894 (n + 5))

end

end A005285.P12381312257760972087

/-! ## A005285.P11695760125794563857

`record[A177517(2*((n+1)²+2))]`
-/

namespace A005285.P11695760125794563857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (2 * ((n + 1) ^ 2 + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005285.P11695760125794563857

/-! ## A005285.P11083503913507192935

`A177517(A099776(n+4)-(2*n+5))`
-/

namespace A005285.P11083503913507192935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A099776 (n + 4) - (2 * n + 5 : ℤ)).toNat

end

end A005285.P11083503913507192935

/-!
# A005286: a(n) = (n + 3)*(n^2 + 6*n + 2)/6.

The programs for A005286, the canonical program `A005286.P17547056377097703813` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005286 has offset 0).

The definition of A005286 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+3)*(n²+6*n+2)/6` (program `A005286.P16476507637797143537`, by `A005286.P16476507637797143537.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005286.P16476507637797143537

`(n+3)*(n²+6*n+2)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A005286.P16476507637797143537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3) * (n ^ 2 + 6 * n + 2) : ℚ) / 6

end

end A005286.P16476507637797143537

namespace A005286

/-- `(n+3)*(n²+6*n+2)/6` -/
def P16476507637797143537.Spec : Prop :=
  ∀ n, P16476507637797143537.a n = (A005286 n : ℚ)

theorem P16476507637797143537.correct : P16476507637797143537.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A005286, Nat.add_sub_cancel, A005286.P16476507637797143537.a, A005286.P17547056377097703813.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A005286, Nat.add_sub_cancel, A005286.P16476507637797143537.a, A005286.P17547056377097703813.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A005286

/-! ## A005286.P17547056377097703813

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=6, a(2)=15, a(3)=29`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005286

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P17547056377097703813.Spec : Prop :=
  ∀ n, P17547056377097703813.a n = A005286 n

theorem P17547056377097703813.correct : P17547056377097703813.Spec := by
  intro n
  simp only [A005286]

end A005286

/-! ## A005286.P1634680071983999378

`a(n-1)+A000096(n+1)` with `a(0)=1`
-/

namespace A005286.P1634680071983999378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000096 (n + 1)

end

end A005286.P1634680071983999378

namespace A005286

/-- `a(n-1)+A000096(n+1)` -/
def P1634680071983999378.Spec : Prop :=
  ∀ n, P1634680071983999378.a n = A005286 n

end A005286

/-! ## A005286.P10785260495982484596

`A005581(n+2)-1`
-/

namespace A005286.P10785260495982484596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 (n + 2) - 1

end

end A005286.P10785260495982484596

namespace A005286

/-- `A005581(n+2)-1` -/
def P10785260495982484596.Spec : Prop :=
  ∀ n, P10785260495982484596.a n = A005286 n

end A005286

/-! ## A005286.P14675121199307904229

`record[C(n, 3)+1-n]`
-/

namespace A005286.P14675121199307904229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 3 : ℤ) + (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005286.P14675121199307904229

namespace A005286

/-- `record[C(n, 3)+1-n]` -/
def P14675121199307904229.Spec : Prop :=
  ∀ n, P14675121199307904229.a n = A005286 n

end A005286

/-! ## A005286.P15551945481452965130

`record[1-(n-C(n, 3))]`
-/

namespace A005286.P15551945481452965130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - (Nat.choose n 3 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005286.P15551945481452965130

namespace A005286

/-- `record[1-(n-C(n, 3))]` -/
def P15551945481452965130.Spec : Prop :=
  ∀ n, P15551945481452965130.a n = A005286 n

end A005286

/-! ## A005286.P5203060589561513285

`C(n+4, 3)-(n+3)`
-/

namespace A005286.P5203060589561513285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 3 : ℤ) - (n + 3 : ℤ)

end

end A005286.P5203060589561513285

namespace A005286

/-- `C(n+4, 3)-(n+3)` -/
def P5203060589561513285.Spec : Prop :=
  ∀ n, P5203060589561513285.a n = A005286 n

end A005286

/-! ## A005286.P14648568421468800610

`xor(∑[∑[xor(n+1, -1)]], -1)`
-/

namespace A005286.P14648568421468800610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (-1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A005286.P14648568421468800610

namespace A005286

/-- `xor(∑[∑[xor(n+1, -1)]], -1)` -/
def P14648568421468800610.Spec : Prop :=
  ∀ n, P14648568421468800610.a n = A005286 n

end A005286

/-! ## A005286.P9506356453861927175

`∑[∑[or(n+1, char[1])]+n]`
-/

namespace A005286.P9506356453861927175
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (n + 1) (if ∃ j, f3 j = n then 1 else 0)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005286.P9506356453861927175

namespace A005286

/-- `∑[∑[or(n+1, char[1])]+n]` -/
def P9506356453861927175.Spec : Prop :=
  ∀ n, (P9506356453861927175.a n : ℤ) = A005286 n

end A005286

/-! ## A005286.P1213381131520687446

`∑[∑[n+2]^(n²%(n+1))]`
-/

namespace A005286.P1213381131520687446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ (n ^ 2 % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005286.P1213381131520687446

namespace A005286

/-- `∑[∑[n+2]^(n²%(n+1))]` -/
def P1213381131520687446.Spec : Prop :=
  ∀ n, (P1213381131520687446.a n : ℤ) = A005286 n

end A005286

/-! ## A005286.P17189465526135833584

`∑[∑[C(n, n²)+n]+2*n]`
-/

namespace A005286.P17189465526135833584
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (n ^ 2) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005286.P17189465526135833584

namespace A005286

/-- `∑[∑[C(n, n²)+n]+2*n]` -/
def P17189465526135833584.Spec : Prop :=
  ∀ n, (P17189465526135833584.a n : ℤ) = A005286 n

end A005286

/-! ## A005286.P9038509644736360497

`n-∑[a(n-1)-2-n]` with `a(0)=-1`
-/

namespace A005286.P9038509644736360497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  f1 (n - 1) - 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005286.P9038509644736360497

namespace A005286

/-- `n-∑[a(n-1)-2-n]` -/
def P9038509644736360497.Spec : Prop :=
  ∀ n, P9038509644736360497.a n = A005286 n

end A005286

/-! ## A005286.P12279711725062530537

`abs(1-∑[∑[ogf((2-x)/(1-2x+x^2))]])`
-/

namespace A005286.P12279711725062530537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A005286.P12279711725062530537

namespace A005286

/-- `abs(1-∑[∑[ogf((2-x)/(1-2x+x^2))]])` -/
def P12279711725062530537.Spec : Prop :=
  ∀ n, P12279711725062530537.a n = A005286 n

end A005286

/-! ## A005286.P2150207812185281844

`∑[∑[n+2]/(C(2, n+2)+1)]`
-/

namespace A005286.P2150207812185281844
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / (Nat.choose 2 (n + 2) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005286.P2150207812185281844

namespace A005286

/-- `∑[∑[n+2]/(C(2, n+2)+1)]` -/
def P2150207812185281844.Spec : Prop :=
  ∀ n, P2150207812185281844.a n = (A005286 n : ℚ)

end A005286

/-! ## A005286.P5204547616113673908

`∑[∑[n+1]+(n+1)%(n+1)²]`
-/

namespace A005286.P5204547616113673908
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n + 1) % (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005286.P5204547616113673908

namespace A005286

/-- `∑[∑[n+1]+(n+1)%(n+1)²]` -/
def P5204547616113673908.Spec : Prop :=
  ∀ n, (P5204547616113673908.a n : ℤ) = A005286 n

end A005286

/-! ## A005286.P6425399933871701133

`a(n-1)+(n+1)*(n/2+2)` with `a(0)=1`
-/

namespace A005286.P6425399933871701133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℚ) * ((n : ℚ) / 2 + 2)

end

end A005286.P6425399933871701133

namespace A005286

/-- `a(n-1)+(n+1)*(n/2+2)` -/
def P6425399933871701133.Spec : Prop :=
  ∀ n, P6425399933871701133.a n = (A005286 n : ℚ)

end A005286

/-! ## A005286.P9713172607120723784

`∑[∑[n+1]%∑[∑[n+1]]+n+1]`
-/

namespace A005286.P9713172607120723784
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (∑ j ∈ Finset.range (n + 1), f3 j) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005286.P9713172607120723784

namespace A005286

/-- `∑[∑[n+1]%∑[∑[n+1]]+n+1]` -/
def P9713172607120723784.Spec : Prop :=
  ∀ n, (P9713172607120723784.a n : ℤ) = A005286 n

end A005286

/-! ## A005286.P596822249699413143

`A005586(n)+1`
-/

namespace A005286.P596822249699413143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n + 1

end

end A005286.P596822249699413143

namespace A005286

/-- `A005586(n)+1` -/
def P596822249699413143.Spec : Prop :=
  ∀ n, P596822249699413143.a n = A005286 n

end A005286

/-! ## A005286.P4632572967469394428

`A008778(n)+n`
-/

namespace A005286.P4632572967469394428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n + (n : ℤ)

end

end A005286.P4632572967469394428

namespace A005286

/-- `A008778(n)+n` -/
def P4632572967469394428.Spec : Prop :=
  ∀ n, P4632572967469394428.a n = A005286 n

end A005286

/-! ## A005286.P16981687756900976847

`Δ[A005582(n)]-1`
-/

namespace A005286.P16981687756900976847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A005286.P16981687756900976847

namespace A005286

/-- `Δ[A005582(n)]-1` -/
def P16981687756900976847.Spec : Prop :=
  ∀ n, P16981687756900976847.a n = A005286 n

end A005286

/-!
# A005287: Number of permutations of [n] with four inversions.

The programs for A005287, the canonical program `A005287.P12138865979841523091` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005287 has offset 4).

The definition of A005287 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005287.P12138865979841523091

`C(n+5, 4)+C(n+5, 3)-C(n+5, 2)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005287

/-- `C(n+5, 4)+C(n+5, 3)-C(n+5, 2)` -/
def P12138865979841523091.Spec : Prop :=
  ∀ n, P12138865979841523091.a n = A005287 (n + 4)

theorem P12138865979841523091.correct : P12138865979841523091.Spec := by
  intro n
  simp only [A005287, Nat.add_sub_cancel]

end A005287

/-! ## A005287.P17057996417430831867

`(n+4)*(n+5)*((n+4)²+n+4-14)/24`
-/

namespace A005287.P17057996417430831867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 4) * (n + 5) : ℤ) * (((n + 4) ^ 2 + (n + 4) : ℤ) - 14) : ℚ) / 24

end

end A005287.P17057996417430831867

namespace A005287

/-- `(n+4)*(n+5)*((n+4)²+n+4-14)/24` -/
def P17057996417430831867.Spec : Prop :=
  ∀ n, P17057996417430831867.a n = (A005287 (n + 4) : ℚ)

theorem P17057996417430831867.correct : P17057996417430831867.Spec := by
  intro n
  simp only [A005287, Nat.add_sub_cancel, A005287.P17057996417430831867.a, A005287.P12138865979841523091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005287

/-! ## A005287.P9329379221331151662

`∑[∑[C(n+3, 2)+n+2]]+n`
-/

namespace A005287.P9329379221331151662
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 2 + (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A005287.P9329379221331151662

namespace A005287

/-- `∑[∑[C(n+3, 2)+n+2]]+n` -/
def P9329379221331151662.Spec : Prop :=
  ∀ n, (P9329379221331151662.a n : ℤ) = A005287 (n + 4)

end A005287

/-! ## A005287.P13967670511040312821

`floor(∑[sqrt(A104474(n))])`
-/

namespace A005287.P13967670511040312821
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A104474 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A005287.P13967670511040312821

namespace A005287

/-- `floor(∑[sqrt(A104474(n))])` -/
def P13967670511040312821.Spec : Prop :=
  ∀ n, P13967670511040312821.a n = A005287 (n + 4)

end A005287

/-! ## A005287.P10669840627964243725

`A024191(n+1)+n`
-/

namespace A005287.P10669840627964243725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024191 (n + 1) + (n : ℤ)

end

end A005287.P10669840627964243725

namespace A005287

/-- `A024191(n+1)+n` -/
def P10669840627964243725.Spec : Prop :=
  ∀ n, P10669840627964243725.a n = A005287 (n + 4)

end A005287

/-! ## A005287.P2808999144047211842

`A005587(n)+5+n`
-/

namespace A005287.P2808999144047211842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005587 n + 5 + (n : ℤ)

end

end A005287.P2808999144047211842

namespace A005287

/-- `A005587(n)+5+n` -/
def P2808999144047211842.Spec : Prop :=
  ∀ n, P2808999144047211842.a n = A005287 (n + 4)

end A005287

/-! ## A005287.P11790009764441326182

`A020710(n)+A005587(n)`
-/

namespace A005287.P11790009764441326182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n + A005587 n

end

end A005287.P11790009764441326182

namespace A005287

/-- `A020710(n)+A005587(n)` -/
def P11790009764441326182.Spec : Prop :=
  ∀ n, P11790009764441326182.a n = A005287 (n + 4)

end A005287

/-! ## A005287.P422919685523396482

`A063258(n)+A005286(n)`
-/

namespace A005287.P422919685523396482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063258 n + A005286 n

end

end A005287.P422919685523396482

namespace A005287

/-- `A063258(n)+A005286(n)` -/
def P422919685523396482.Spec : Prop :=
  ∀ n, P422919685523396482.a n = A005287 (n + 4)

end A005287

/-! ## A005287.P5725496704217251006

`A096942(n)-A084990(n)`
-/

namespace A005287.P5725496704217251006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096942 n - A084990 n

end

end A005287.P5725496704217251006

namespace A005287

/-- `A096942(n)-A084990(n)` -/
def P5725496704217251006.Spec : Prop :=
  ∀ n, P5725496704217251006.a n = A005287 (n + 4)

end A005287

/-! ## A005287.P13075975124666337291

`A166830(n+1)+A005718(n)`
-/

namespace A005287.P13075975124666337291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166830 (n + 1) + A005718 n

end

end A005287.P13075975124666337291

namespace A005287

/-- `A166830(n+1)+A005718(n)` -/
def P13075975124666337291.Spec : Prop :=
  ∀ n, P13075975124666337291.a n = A005287 (n + 4)

end A005287

/-! ## A005287.P3135584774090017025

`A006504(n+1)-A005581(n)`
-/

namespace A005287.P3135584774090017025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1) - A005581 n

end

end A005287.P3135584774090017025

namespace A005287

/-- `A006504(n+1)-A005581(n)` -/
def P3135584774090017025.Spec : Prop :=
  ∀ n, P3135584774090017025.a n = A005287 (n + 4)

end A005287

/-! ## A005287.P18078488375263254722

`A101854(n+1)-A047732(n)`
-/

namespace A005287.P18078488375263254722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101854 (n + 1) - A047732 n

end

end A005287.P18078488375263254722

namespace A005287

/-- `A101854(n+1)-A047732(n)` -/
def P18078488375263254722.Spec : Prop :=
  ∀ n, P18078488375263254722.a n = A005287 (n + 4)

end A005287

/-! ## A005287.P7511062356592008746

`A023545(n+1)+A014309(n+1)`
-/

namespace A005287.P7511062356592008746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) + A014309 (n + 1)

end

end A005287.P7511062356592008746

namespace A005287

/-- `A023545(n+1)+A014309(n+1)` -/
def P7511062356592008746.Spec : Prop :=
  ∀ n, P7511062356592008746.a n = A005287 (n + 4)

end A005287

/-! ## A005287.P7056256017261795794

`A091823(n+1)+A022815(n+1)`
-/

namespace A005287.P7056256017261795794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091823 (n + 1) + A022815 (n + 1)

end

end A005287.P7056256017261795794

namespace A005287

/-- `A091823(n+1)+A022815(n+1)` -/
def P7056256017261795794.Spec : Prop :=
  ∀ n, P7056256017261795794.a n = A005287 (n + 4)

end A005287

/-! ## A005287.P15663722844377176805

`∑[A133263(n)+∑[A340266(n+1)]]`
-/

namespace A005287.P15663722844377176805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340266 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005287.P15663722844377176805

namespace A005287

/-- `∑[A133263(n)+∑[A340266(n+1)]]` -/
def P15663722844377176805.Spec : Prop :=
  ∀ n, P15663722844377176805.a n = A005287 (n + 4)

end A005287

/-! ## A005287.P10145445629026790997

`A005718(n)+A005718(n)-A363256(n)`
-/

namespace A005287.P10145445629026790997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005718 n + (A005718 n - A363256 n)

end

end A005287.P10145445629026790997

namespace A005287

/-- `A005718(n)+A005718(n)-A363256(n)` -/
def P10145445629026790997.Spec : Prop :=
  ∀ n, P10145445629026790997.a n = A005287 (n + 4)

end A005287

/-! ## A005287.P13070970376322196695

`A000292(n+1)+A063258(n)+A000096(n)`
-/

namespace A005287.P13070970376322196695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A063258 n + A000096 n)

end

end A005287.P13070970376322196695

namespace A005287

/-- `A000292(n+1)+A063258(n)+A000096(n)` -/
def P13070970376322196695.Spec : Prop :=
  ∀ n, P13070970376322196695.a n = A005287 (n + 4)

theorem P13070970376322196695.correct : P13070970376322196695.Spec := by
  intro n
  simp only [A005287, Nat.add_sub_cancel, A005287.P13070970376322196695.a, A005287.P12138865979841523091.a, A000096, A000096.P6925830517264718723.a, A000292, A000292.P18322089543142633594.a, A063258, A063258.P15942271711916095043.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005287

/-! ## A005287.P8479838483219630939

`A000096(n+1)+A095661(n)+A000096(n)`
-/

namespace A005287.P8479838483219630939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 1) + (A095661 n + A000096 n)

end

end A005287.P8479838483219630939

namespace A005287

/-- `A000096(n+1)+A095661(n)+A000096(n)` -/
def P8479838483219630939.Spec : Prop :=
  ∀ n, P8479838483219630939.a n = A005287 (n + 4)

end A005287

/-! ## A005287.P1785893577679624199

`∑[A005286(n+1)]-1`
-/

namespace A005287.P1785893577679624199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A005287.P1785893577679624199

namespace A005287

/-- `∑[A005286(n+1)]-1` -/
def P1785893577679624199.Spec : Prop :=
  ∀ n, P1785893577679624199.a n = A005287 (n + 4)

end A005287

/-! ## A005287.P580169526939162288

`∑[A005586(n+1)]+n`
-/

namespace A005287.P580169526939162288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A005287.P580169526939162288

namespace A005287

/-- `∑[A005586(n+1)]+n` -/
def P580169526939162288.Spec : Prop :=
  ∀ n, P580169526939162288.a n = A005287 (n + 4)

end A005287

/-!
# A005288: a(n) = C(n,5) + C(n,4) - C(n,3) + 1, n >= 7.

The programs for A005288, the canonical program `A005288.P5410300661459144486` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005288 has offset 6).

The definition of A005288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005288.P5410300661459144486

`A028310(n)+∑[A005287(n+4)-1]-2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005288

/-- `A028310(n)+∑[A005287(n+4)-1]-2` -/
def P5410300661459144486.Spec : Prop :=
  ∀ n, P5410300661459144486.a n = A005288 (n + 6)

theorem P5410300661459144486.correct : P5410300661459144486.Spec := by
  intro n
  simp only [A005288, Nat.add_sub_cancel]

end A005288

/-! ## A005288.P6631950403826346494

`A005583(n+1)+A024191(n+1)-A340266(n+1)`
-/

namespace A005288.P6631950403826346494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005583 (n + 1) + (A024191 (n + 1) - A340266 (n + 1))

end

end A005288.P6631950403826346494

namespace A005288

/-- `A005583(n+1)+A024191(n+1)-A340266(n+1)` -/
def P6631950403826346494.Spec : Prop :=
  ∀ n, P6631950403826346494.a n = A005288 (n + 6)

end A005288

/-! ## A005288.P2962123583334258379

`A177517(A052905(n+7))`
-/

namespace A005288.P2962123583334258379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A052905 (n + 7)).toNat

end

end A005288.P2962123583334258379

namespace A005288

/-- `A177517(A052905(n+7))` -/
def P2962123583334258379.Spec : Prop :=
  ∀ n, P2962123583334258379.a n = A005288 (n + 6)

end A005288

/-! ## A005288.P8351341891698863318

`A177517(A046691(n+8)-1)`
-/

namespace A005288.P8351341891698863318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A046691 (n + 8) - 1).toNat

end

end A005288.P8351341891698863318

namespace A005288

/-- `A177517(A046691(n+8)-1)` -/
def P8351341891698863318.Spec : Prop :=
  ∀ n, P8351341891698863318.a n = A005288 (n + 6)

end A005288

/-! ## A005288.P15860805704971651059

`A177517(A034856(n+9)-3)`
-/

namespace A005288.P15860805704971651059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A034856 (n + 9) - 3).toNat

end

end A005288.P15860805704971651059

namespace A005288

/-- `A177517(A034856(n+9)-3)` -/
def P15860805704971651059.Spec : Prop :=
  ∀ n, P15860805704971651059.a n = A005288 (n + 6)

end A005288

/-! ## A005288.P852119035917183944

`A177517(A000096(n+9)-4)`
-/

namespace A005288.P852119035917183944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A000096 (n + 9) - 4).toNat

end

end A005288.P852119035917183944

namespace A005288

/-- `A177517(A000096(n+9)-4)` -/
def P852119035917183944.Spec : Prop :=
  ∀ n, P852119035917183944.a n = A005288 (n + 6)

end A005288

/-! ## A005288.P5523264651594809805

`A177517(A000124(n+10)-6)`
-/

namespace A005288.P5523264651594809805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A000124 (n + 10) - 6).toNat

end

end A005288.P5523264651594809805

namespace A005288

/-- `A177517(A000124(n+10)-6)` -/
def P5523264651594809805.Spec : Prop :=
  ∀ n, P5523264651594809805.a n = A005288 (n + 6)

end A005288

/-!
# A005289: Number of graphs on n nodes with 3 cliques.

The programs for A005289, the canonical program `A005289.P13255751764471815005` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005289 has offset 1).

The definition of A005289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005289.P13255751764471815005

`∑[∑[A008615(n)+A006584(n)]]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005289

/-- `∑[∑[A008615(n)+A006584(n)]]` -/
def P13255751764471815005.Spec : Prop :=
  ∀ n, P13255751764471815005.a n = A005289 (n + 1)

theorem P13255751764471815005.correct : P13255751764471815005.Spec := by
  intro n
  simp only [A005289, Nat.add_sub_cancel]

end A005289

/-! ## A005289.P13221962427078312074

`A056778(n+1)-A056782(n+1)`
-/

namespace A005289.P13221962427078312074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056778 (n + 1) - A056782 (n + 1)

end

end A005289.P13221962427078312074

namespace A005289

/-- `A056778(n+1)-A056782(n+1)` -/
def P13221962427078312074.Spec : Prop :=
  ∀ n, P13221962427078312074.a n = A005289 (n + 1)

end A005289

/-! ## A005289.P3061834031897748280

`A165190(A201106(n+1)+A192804(n))`
-/

namespace A005289.P3061834031897748280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A201106 (n + 1) + A192804 n).toNat

end

end A005289.P3061834031897748280

namespace A005289

/-- `A165190(A201106(n+1)+A192804(n))` -/
def P3061834031897748280.Spec : Prop :=
  ∀ n, P3061834031897748280.a n = A005289 (n + 1)

end A005289

/-! ## A005289.P1882180416573866376

`∑[∑[A361498(A001359(n+1))]]`
-/

namespace A005289.P1882180416573866376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361498 (A001359 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005289.P1882180416573866376

namespace A005289

/-- `∑[∑[A361498(A001359(n+1))]]` -/
def P1882180416573866376.Spec : Prop :=
  ∀ n, P1882180416573866376.a n = A005289 (n + 1)

end A005289

/-!
# A005290: Representation degeneracies for boson strings.

The programs for A005290, there is no canonical definition to state claims against.
-/

/-! ## A005290.P7506935751590767907

`2*A114921(n)-A342528(n)`
-/

namespace A005290.P7506935751590767907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A114921 n - A342528 n

end

end A005290.P7506935751590767907

/-! ## A005290.P17803214576727217707

`A226541(n+4)-Δ[A114921(n)]`
-/

namespace A005290.P17803214576727217707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226541 (n + 4) - (f1 (n + 1) - f1 n)

end

end A005290.P17803214576727217707

/-! ## A005290.P9835290221031322525

`A114921(n)-(A380108(n)-A342528(n))`
-/

namespace A005290.P9835290221031322525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114921 n - (A380108 n - A342528 n)

end

end A005290.P9835290221031322525

/-! ## A005290.P13450583833537950477

`A006330(n)+A114921(n)-A001523(n+1)`
-/

namespace A005290.P13450583833537950477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006330 n + (A114921 n - A001523 (n + 1))

end

end A005290.P13450583833537950477

/-! ## A005290.P5852681741120885259

`A226541(n+4)-Δ[A000712(n)%(2*A001523(n))]`
-/

namespace A005290.P5852681741120885259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000712 n) (2 * A001523 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226541 (n + 4) - (f1 (n + 1) - f1 n)

end

end A005290.P5852681741120885259

/-!
# A005291: Representation degeneracies for boson strings.

The programs for A005291, there is no canonical definition to state claims against.
-/

/-! ## A005291.P11259194501682078079

`Δ[A226541(n+5)]-A005290(n+3)`
-/

namespace A005291.P11259194501682078079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226541 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A005290 (n + 3)

end

end A005291.P11259194501682078079

/-! ## A005291.P10582908858146393331

`A182722(n)+A182712(n)`
-/

namespace A005291.P10582908858146393331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182722 n + A182712 n

end

end A005291.P10582908858146393331

/-! ## A005291.P10667132681033499415

`A087787(n)+A182722(n)-A002865(n)`
-/

namespace A005291.P10667132681033499415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087787 n + (A182722 n - A002865 n)

end

end A005291.P10667132681033499415

/-! ## A005291.P3770409522809971019

`A182722(n)+A087787(n)-(A139582(n)-A084376(n))`
-/

namespace A005291.P3770409522809971019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182722 n + (A087787 n - (A139582 n - A084376 n))

end

end A005291.P3770409522809971019

/-! ## A005291.P3326424476865757365

`A195308(n)-a(n-1)` with `a(0)=1`
-/

namespace A005291.P3326424476865757365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A195308 n - a (n - 1)

end

end A005291.P3326424476865757365

/-!
# A005292: Representation degeneracies for boson strings.

The programs for A005292, there is no canonical definition to state claims against.
-/

/-! ## A005292.P12905425160988582986

`A259965(∑[n+2]+3)`
-/

namespace A005292.P12905425160988582986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259965 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A005292.P12905425160988582986

/-!
# A005293: Representation degeneracies for boson strings.

The programs for A005293, there is no canonical definition to state claims against.
-/

/-! ## A005293.P7721633920200647922

`A259965(A167614(n+2))`
-/

namespace A005293.P7721633920200647922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259965 (A167614 (n + 2)).toNat

end

end A005293.P7721633920200647922

/-! ## A005293.P18195810167286853545

`A259965(A141214(n)+6)`
-/

namespace A005293.P18195810167286853545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259965 (A141214 n + 6).toNat

end

end A005293.P18195810167286853545

/-! ## A005293.P11339721281606686349

`A259965(A052905(n)+8)`
-/

namespace A005293.P11339721281606686349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259965 (A052905 n + 8).toNat

end

end A005293.P11339721281606686349

/-! ## A005293.P647901111608837472

`A259965(A055999(n)+9)`
-/

namespace A005293.P647901111608837472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259965 (A055999 n + 9).toNat

end

end A005293.P647901111608837472

/-! ## A005293.P8574563106402333901

`A259965(eq[3, A002262(n)])`
-/

namespace A005293.P8574563106402333901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005293.P8574563106402333901

/-!
# A005294: Representation degeneracies for boson strings.

The programs for A005294, there is no canonical definition to state claims against.
-/

/-! ## A005294.P8084321132892386647

`A347520(A265257(n+1))`
-/

namespace A005294.P8084321132892386647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (A265257 (n + 1)).toNat

end

end A005294.P8084321132892386647

/-! ## A005294.P17752196435053904995

`A259965(A155212(n)+12)`
-/

namespace A005294.P17752196435053904995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259965 (A155212 n + 12).toNat

end

end A005294.P17752196435053904995

/-! ## A005294.P6762406652148914058

`A259965(eq[4, A002262(n)])`
-/

namespace A005294.P6762406652148914058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005294.P6762406652148914058

/-! ## A005294.P5881514604658612814

`A259965(eq[16, A059268(n)])`
-/

namespace A005294.P5881514604658612814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005294.P5881514604658612814

/-! ## A005294.P16695414593145637287

`A259965(A027379(n+2)+7)`
-/

namespace A005294.P16695414593145637287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259965 (A027379 (n + 2) + 7).toNat

end

end A005294.P16695414593145637287

/-!
# A005299: Representation degeneracies for Neveu-Schwarz strings.

The programs for A005299, there is no canonical definition to state claims against.
-/

/-! ## A005299.P3013411374750605245

`A257500(A000837(n))-A142150(n)`
-/

namespace A005299.P3013411374750605245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257500 (A000837 n).toNat - A142150 n

end

end A005299.P3013411374750605245

