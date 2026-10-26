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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A111101: Cumulative sum of A000001(n)^A000001(n).

The programs for A111101, there is no canonical definition to state claims against.
-/

/-! ## A111101.P15799346024784494156

`∑[A000312(A000001(n+1))]`
-/

namespace A111101.P15799346024784494156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A000001 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111101.P15799346024784494156

/-! ## A111101.P1108627477778336359

`∑[A000312(A201733(n+1))]`
-/

namespace A111101.P1108627477778336359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A201733 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111101.P1108627477778336359

/-! ## A111101.P11902225922743303872

`∑[A094092(A201733(n+1)²)]`
-/

namespace A111101.P11902225922743303872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094092 (A201733 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111101.P11902225922743303872

/-! ## A111101.P12520329844076393386

`∑[A094093(A201733(n+1)²)]`
-/

namespace A111101.P12520329844076393386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094093 (A201733 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111101.P12520329844076393386

/-! ## A111101.P1389177053707954334

`∑[A201733(A085736(n+1))^A201733(n+1)]`
-/

namespace A111101.P1389177053707954334
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201733 (A085736 (n + 1)).toNat : ℚ) ^ (A201733 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111101.P1389177053707954334

/-!
# A111102: Cumulative sum of squares of Kolakoski sequence (A000002).

The programs for A111102, the canonical program `A111102.P16224895778482294090` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111102 has offset 1).

The definition of A111102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111102.P16224895778482294090

`∑[A000002(n+1)²]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111102

/-- `∑[A000002(n+1)²]` -/
def P16224895778482294090.Spec : Prop :=
  ∀ n, P16224895778482294090.a n = A111102 (n + 1)

theorem P16224895778482294090.correct : P16224895778482294090.Spec := by
  intro n
  simp only [A111102, Nat.add_sub_cancel]

end A111102

/-! ## A111102.P1725098787431421560

`∑[gcd(2, A160051(n))²]`
-/

namespace A111102.P1725098787431421560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A160051 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111102.P1725098787431421560

namespace A111102

/-- `∑[gcd(2, A160051(n))²]` -/
def P1725098787431421560.Spec : Prop :=
  ∀ n, (P1725098787431421560.a n : ℤ) = A111102 (n + 1)

end A111102

/-! ## A111102.P3101174029562256373

`∑[(2-A078650(n+1))²]`
-/

namespace A111102.P3101174029562256373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A078650 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111102.P3101174029562256373

namespace A111102

/-- `∑[(2-A078650(n+1))²]` -/
def P3101174029562256373.Spec : Prop :=
  ∀ n, P3101174029562256373.a n = A111102 (n + 1)

theorem P3101174029562256373.correct : P3101174029562256373.Spec := by
  intro n
  simp only [A111102, Nat.add_sub_cancel, A111102.P3101174029562256373.f1, A111102.P3101174029562256373.a, A111102.P16224895778482294090.f1, A111102.P16224895778482294090.a, A000002, A000002.P13330532946811820297.a, A078650, A078650.P371792363212749957.a, A156253, A156253.P16782691293242481478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A111102

/-! ## A111102.P17830670478517897014

`∑[(3-A049705(n+1))²]`
-/

namespace A111102.P17830670478517897014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A049705 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111102.P17830670478517897014

namespace A111102

/-- `∑[(3-A049705(n+1))²]` -/
def P17830670478517897014.Spec : Prop :=
  ∀ n, P17830670478517897014.a n = A111102 (n + 1)

theorem P17830670478517897014.correct : P17830670478517897014.Spec := by
  intro n
  simp only [A111102, Nat.add_sub_cancel, A111102.P17830670478517897014.f1, A111102.P17830670478517897014.a, A111102.P16224895778482294090.f1, A111102.P16224895778482294090.a, A000002, A000002.P13330532946811820297.a, A049705, A049705.P11002765941806409636.a, A156253, A156253.P16782691293242481478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A111102

/-! ## A111102.P8899692849876367272

`a(n-1)+A078880(n)²` with `a(0)=1`
-/

namespace A111102.P8899692849876367272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A078880 n ^ 2

end

end A111102.P8899692849876367272

namespace A111102

/-- `a(n-1)+A078880(n)²` -/
def P8899692849876367272.Spec : Prop :=
  ∀ n, P8899692849876367272.a n = A111102 (n + 1)

end A111102

/-! ## A111102.P6787070049605979819

`3*A074286(n+1)+n+1`
-/

namespace A111102.P6787070049605979819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A074286 (n + 1) + (n + 1 : ℤ)

end

end A111102.P6787070049605979819

namespace A111102

/-- `3*A074286(n+1)+n+1` -/
def P6787070049605979819.Spec : Prop :=
  ∀ n, P6787070049605979819.a n = A111102 (n + 1)

end A111102

/-! ## A111102.P9290501771269417258

`A016777(A074286(n+1))+n`
-/

namespace A111102.P9290501771269417258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A074286 (n + 1)).toNat + (n : ℤ)

end

end A111102.P9290501771269417258

namespace A111102

/-- `A016777(A074286(n+1))+n` -/
def P9290501771269417258.Spec : Prop :=
  ∀ n, P9290501771269417258.a n = A111102 (n + 1)

end A111102

/-! ## A111102.P1787218469828668042

`∑[A000034(A074290(n+1)+n)²]`
-/

namespace A111102.P1787218469828668042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A074290 (n + 1) + (n : ℤ)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111102.P1787218469828668042

namespace A111102

/-- `∑[A000034(A074290(n+1)+n)²]` -/
def P1787218469828668042.Spec : Prop :=
  ∀ n, P1787218469828668042.a n = A111102 (n + 1)

end A111102

/-! ## A111102.P8384429133623341371

`2*A054353(n+1)-A156077(n+1)`
-/

namespace A111102.P8384429133623341371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054353 (n + 1) - A156077 (n + 1)

end

end A111102.P8384429133623341371

namespace A111102

/-- `2*A054353(n+1)-A156077(n+1)` -/
def P8384429133623341371.Spec : Prop :=
  ∀ n, P8384429133623341371.a n = A111102 (n + 1)

end A111102

/-! ## A111102.P15214938068703198534

`A294448(n+1)+∑[A000002(n+1)+1]`
-/

namespace A111102.P15214938068703198534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294448 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111102.P15214938068703198534

namespace A111102

/-- `A294448(n+1)+∑[A000002(n+1)+1]` -/
def P15214938068703198534.Spec : Prop :=
  ∀ n, P15214938068703198534.a n = A111102 (n + 1)

end A111102

/-! ## A111102.P3690310911569377065

`∑[A000002(n+1)+1]-A088568(n+1)`
-/

namespace A111102.P3690310911569377065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A088568 (n + 1)

end

end A111102.P3690310911569377065

namespace A111102

/-- `∑[A000002(n+1)+1]-A088568(n+1)` -/
def P3690310911569377065.Spec : Prop :=
  ∀ n, P3690310911569377065.a n = A111102 (n + 1)

end A111102

/-! ## A111102.P2852028086849725545

`∑[2*A000002(n+1)/A049705(n+1)]`
-/

namespace A111102.P2852028086849725545
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A000002 (n + 1) : ℚ) / (A049705 (n + 1) : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111102.P2852028086849725545

namespace A111102

/-- `∑[2*A000002(n+1)/A049705(n+1)]` -/
def P2852028086849725545.Spec : Prop :=
  ∀ n, P2852028086849725545.a n = (A111102 (n + 1) : ℚ)

end A111102

/-! ## A111102.P16636741154977793787

`∑[(A054353(n+1)-comp[A078649(n+1)])²]`
-/

namespace A111102.P16636741154977793787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054353 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111102.P16636741154977793787

namespace A111102

/-- `∑[(A054353(n+1)-comp[A078649(n+1)])²]` -/
def P16636741154977793787.Spec : Prop :=
  ∀ n, P16636741154977793787.a n = A111102 (n + 1)

end A111102

/-! ## A111102.P11274011933387748550

`A054353(n+1)+n+1-A088568(n+1)`
-/

namespace A111102.P11274011933387748550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (n + 1) + ((n + 1 : ℤ) - A088568 (n + 1))

end

end A111102.P11274011933387748550

namespace A111102

/-- `A054353(n+1)+n+1-A088568(n+1)` -/
def P11274011933387748550.Spec : Prop :=
  ∀ n, P11274011933387748550.a n = A111102 (n + 1)

end A111102

/-! ## A111102.P13330091271729972283

`∑[A000002(n+1)*A000002(A000027(n+1))]`
-/

namespace A111102.P13330091271729972283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) * A000002 (A000027 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111102.P13330091271729972283

namespace A111102

/-- `∑[A000002(n+1)*A000002(A000027(n+1))]` -/
def P13330091271729972283.Spec : Prop :=
  ∀ n, P13330091271729972283.a n = A111102 (n + 1)

end A111102

/-! ## A111102.P1795021561582687437

`A074286(n+1)+A074286(n+1)+A054353(n+1)`
-/

namespace A111102.P1795021561582687437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (n + 1) + (A074286 (n + 1) + A054353 (n + 1))

end

end A111102.P1795021561582687437

namespace A111102

/-- `A074286(n+1)+A074286(n+1)+A054353(n+1)` -/
def P1795021561582687437.Spec : Prop :=
  ∀ n, P1795021561582687437.a n = A111102 (n + 1)

end A111102

/-! ## A111102.P10192290425151944303

`∑[Δ[A216345(n+1)]²]`
-/

namespace A111102.P10192290425151944303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111102.P10192290425151944303

namespace A111102

/-- `∑[Δ[A216345(n+1)]²]` -/
def P10192290425151944303.Spec : Prop :=
  ∀ n, P10192290425151944303.a n = A111102 (n + 1)

end A111102

/-! ## A111102.P1333901159404179387

`∑[Δ[comp[A078649(n+1)]]²]`
-/

namespace A111102.P1333901159404179387
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111102.P1333901159404179387

namespace A111102

/-- `∑[Δ[comp[A078649(n+1)]]²]` -/
def P1333901159404179387.Spec : Prop :=
  ∀ n, P1333901159404179387.a n = A111102 (n + 1)

end A111102

/-! ## A111102.P12419528674405163993

`∑[A018252(Δ[A216345(n+1)])]`
-/

namespace A111102.P12419528674405163993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111102.P12419528674405163993

namespace A111102

/-- `∑[A018252(Δ[A216345(n+1)])]` -/
def P12419528674405163993.Spec : Prop :=
  ∀ n, P12419528674405163993.a n = A111102 (n + 1)

end A111102

/-! ## A111102.P18201880231111088153

`∑[Δ[A216345(n+1)]*A000002(n+1)]`
-/

namespace A111102.P18201880231111088153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111102.P18201880231111088153

namespace A111102

/-- `∑[Δ[A216345(n+1)]*A000002(n+1)]` -/
def P18201880231111088153.Spec : Prop :=
  ∀ n, P18201880231111088153.a n = A111102 (n + 1)

end A111102

/-!
# A111103: a(1) = 1; for n > 1: a(n) = smallest cube > a(n-1) such that a(n) - a(n-1) = m*p for some m and a prime p that is not smaller than the primes used previously; in case there is more than one p take the largest.

The programs for A111103, there is no canonical definition to state claims against.
-/

/-! ## A111103.P4190599752726636703

`record[A331854(3*n)^3]`
-/

namespace A111103.P4190599752726636703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331854 (3 * n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111103.P4190599752726636703

/-! ## A111103.P9376378252040641066

`A111131(A043315(n+1))`
-/

namespace A111103.P9376378252040641066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111131 (A043315 (n + 1)).toNat

end

end A111103.P9376378252040641066

/-! ## A111103.P6467460205780789500

`A111131(A044912(n+1))`
-/

namespace A111103.P6467460205780789500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111131 (A044912 (n + 1)).toNat

end

end A111103.P6467460205780789500

/-! ## A111103.P229707165343294595

`A111131(A055649(n+1))`
-/

namespace A111103.P229707165343294595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111131 (A055649 (n + 1)).toNat

end

end A111103.P229707165343294595

/-! ## A111103.P17410472754122574649

`A111131(A061378(n+1))`
-/

namespace A111103.P17410472754122574649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111131 (A061378 (n + 1)).toNat

end

end A111103.P17410472754122574649

/-!
# A111104: Difference between successive terms of A051484.

The programs for A111104, there is no canonical definition to state claims against.
-/

/-! ## A111104.P16558575491731112418

`A051484(n+2)-A051484(n+1)`
-/

namespace A111104.P16558575491731112418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051484 (n + 2) - A051484 (n + 1)

end

end A111104.P16558575491731112418

/-! ## A111104.P7640750713906113623

`Δ[A051484(n+1)]`
-/

namespace A111104.P7640750713906113623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111104.P7640750713906113623

/-! ## A111104.P8713215656058776710

`Δ[record[A051484(A328399(n))]]`
-/

namespace A111104.P8713215656058776710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051484 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111104.P8713215656058776710

/-! ## A111104.P15002729506628979803

`abs(Δ[A051484(A328399(2*n))])`
-/

namespace A111104.P15002729506628979803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051484 (A328399 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A111104.P15002729506628979803

/-! ## A111104.P3687567417036788702

`abs(Δ[A051484(A051495(3*n))])`
-/

namespace A111104.P3687567417036788702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051484 (A051495 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A111104.P3687567417036788702

/-! ## A111104.P1545290705042022015

`Δ[record[A051484(A137734(n))]]`
-/

namespace A111104.P1545290705042022015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051484 (A137734 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111104.P1545290705042022015

/-! ## A111104.P7274978372295873677

`Δ[record[A051484(A332013(n))]]`
-/

namespace A111104.P7274978372295873677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051484 (A332013 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111104.P7274978372295873677

/-! ## A111104.P16785686255706907188

`Δ[record[A051484(A116549(n))]]`
-/

namespace A111104.P16785686255706907188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051484 (A116549 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111104.P16785686255706907188

/-!
# A111106: Riordan array (1, x*g(x)) where g(x) is g.f. of double factorials A001147.

The programs for A111106, there is no canonical definition to state claims against.
-/

/-! ## A111106.P11116656922451160973

`A370419(n)-A016389(A196912(n+1))`
-/

namespace A111106.P11116656922451160973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370419 n - A016389 (A196912 (n + 1)).toNat

end

end A111106.P11116656922451160973

/-! ## A111106.P3479037176153778165

`A370419(n)-A331385(A008277(n+1))`
-/

namespace A111106.P3479037176153778165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370419 n - A331385 (A008277 (n + 1)).toNat

end

end A111106.P3479037176153778165

/-! ## A111106.P2815389066970450576

`A321964(n)-A341618(A282275(n+1))`
-/

namespace A111106.P2815389066970450576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321964 n - A341618 (A282275 (n + 1)).toNat

end

end A111106.P2815389066970450576

/-! ## A111106.P8102612632559541681

`A321964(n)-A185037(A133713(n+2))`
-/

namespace A111106.P8102612632559541681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321964 n - A185037 (A133713 (n + 2)).toNat

end

end A111106.P8102612632559541681

/-! ## A111106.P14712778706173479982

`A321964(n)-A016389(A086645(n))*A124330(n+1)`
-/

namespace A111106.P14712778706173479982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321964 n - A016389 (A086645 n).toNat * A124330 (n + 1)

end

end A111106.P14712778706173479982

/-!
# A111107: Lexicographically smallest increasing sequence of primes whose binomial transform consists only of primes.

The programs for A111107, there is no canonical definition to state claims against.
-/

/-! ## A111107.P3407435358745396052

`p?[∑[A014963(A327742(2*n+1))]]`
-/

namespace A111107.P3407435358745396052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A327742 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111107.P3407435358745396052

/-! ## A111107.P7586062078448284710

`p?[record[A324347(A239499(n+1))]]`
-/

namespace A111107.P7586062078448284710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324347 (A239499 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111107.P7586062078448284710

/-! ## A111107.P9133001068811618994

`p?[lt[A023159(3*n+1), A127018(n+3)]]`
-/

namespace A111107.P9133001068811618994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023159 (3 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127018 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A111107.P9133001068811618994

/-! ## A111107.P4536180599403612783

`p?[lt[A247303(n), A247341(n)]-2]`
-/

namespace A111107.P4536180599403612783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247303 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247341 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < f3 j) n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111107.P4536180599403612783

/-! ## A111107.P17383733752464969754

`or(A001222(A210525(n)), A096650(n+1))`
-/

namespace A111107.P17383733752464969754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A210525 n).toNat) (A096650 (n + 1))

end

end A111107.P17383733752464969754

/-!
# A111108: a(n) = A001333(n) - (-2)^(n-1), n > 0.

The programs for A111108, the canonical program `A111108.P14652572288472667057` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111108 has offset 1).

The definition of A111108 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111108.P4595060860129154545

`5*a(n-2)+2*a(n-3)` with `a(0)=0, a(1)=5, a(2)=3`
-/

namespace A111108.P4595060860129154545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 5, 3] fun n a =>
  5 * a (n - 2) + 2 * a (n - 3)

end

end A111108.P4595060860129154545

namespace A111108

/-- `5*a(n-2)+2*a(n-3)` -/
def P4595060860129154545.Spec : Prop :=
  ∀ n, (P4595060860129154545.a n : ℤ) = A111108 (n + 1)

end A111108

/-! ## A111108.P14652572288472667057

`A001333(n+1)-(-2)^n`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A111108

/-- `A001333(n+1)-(-2)^n` -/
def P14652572288472667057.Spec : Prop :=
  ∀ n, P14652572288472667057.a n = A111108 (n + 1)

theorem P14652572288472667057.correct : P14652572288472667057.Spec := by
  intro n
  simp only [A111108, Nat.add_sub_cancel]

end A111108

/-! ## A111108.P14256432823654333820

`ogf((5x+3x^2)/(1-5x^2-2x^3))`
-/

namespace A111108.P14256432823654333820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 3] [1, 0, -5, -2] n

end

end A111108.P14256432823654333820

namespace A111108

/-- `ogf((5x+3x^2)/(1-5x^2-2x^3))` -/
def P14256432823654333820.Spec : Prop :=
  ∀ n, P14256432823654333820.a n = A111108 (n + 1)

end A111108

/-! ## A111108.P1843442953766562419

`A078057(n)-(-2)^n`
-/

namespace A111108.P1843442953766562419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n - (-2) ^ n

end

end A111108.P1843442953766562419

namespace A111108

/-- `A078057(n)-(-2)^n` -/
def P1843442953766562419.Spec : Prop :=
  ∀ n, P1843442953766562419.a n = A111108 (n + 1)

end A111108

/-! ## A111108.P3784798228493804911

`∑[A052542(n)]-(-2)^n`
-/

namespace A111108.P3784798228493804911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (-2) ^ n

end

end A111108.P3784798228493804911

namespace A111108

/-- `∑[A052542(n)]-(-2)^n` -/
def P3784798228493804911.Spec : Prop :=
  ∀ n, P3784798228493804911.a n = A111108 (n + 1)

end A111108

/-! ## A111108.P730373651928171100

`A135138(n+3)+A135138(n)`
-/

namespace A111108.P730373651928171100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135138 (n + 3) + A135138 n

end

end A111108.P730373651928171100

namespace A111108

/-- `A135138(n+3)+A135138(n)` -/
def P730373651928171100.Spec : Prop :=
  ∀ n, P730373651928171100.a n = A111108 (n + 1)

end A111108

/-! ## A111108.P14787888902939555058

`A041010(n)/A000034(n+1)-A123344(n+1)`
-/

namespace A111108.P14787888902939555058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041010 n : ℚ) / (A000034 (n + 1) : ℚ) - (A123344 (n + 1) : ℚ)

end

end A111108.P14787888902939555058

namespace A111108

/-- `A041010(n)/A000034(n+1)-A123344(n+1)` -/
def P14787888902939555058.Spec : Prop :=
  ∀ n, P14787888902939555058.a n = (A111108 (n + 1) : ℚ)

end A111108

/-! ## A111108.P16049243570080634890

`A135530(2*n+1)+A001333(n+1)-A103424(n+1)`
-/

namespace A111108.P16049243570080634890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 (2 * n + 1) + (A001333 (n + 1) - A103424 (n + 1))

end

end A111108.P16049243570080634890

namespace A111108

/-- `A135530(2*n+1)+A001333(n+1)-A103424(n+1)` -/
def P16049243570080634890.Spec : Prop :=
  ∀ n, P16049243570080634890.a n = A111108 (n + 1)

end A111108

/-! ## A111108.P10677693074584423645

`((-2)^(1+n)+(1-sqrt(2))^(1+n)+(1+sqrt(2))^(1+n))/2`
-/

namespace A111108.P10677693074584423645
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((-2) ^ (1 + n) : ℝ) + (1 - Real.sqrt (2 : ℝ)) ^ (1 + n) + (1 + Real.sqrt (2 : ℝ)) ^ (1 + n)) / 2

end

end A111108.P10677693074584423645

namespace A111108

/-- `((-2)^(1+n)+(1-sqrt(2))^(1+n)+(1+sqrt(2))^(1+n))/2` -/
def P10677693074584423645.Spec : Prop :=
  ∀ n, P10677693074584423645.a n = (A111108 (n + 1) : ℝ)

end A111108

/-! ## A111108.P4903756047606186473

`A112685(n+2)-A135139(n)`
-/

namespace A111108.P4903756047606186473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112685 (n + 2) - A135139 n

end

end A111108.P4903756047606186473

namespace A111108

/-- `A112685(n+2)-A135139(n)` -/
def P4903756047606186473.Spec : Prop :=
  ∀ n, P4903756047606186473.a n = A111108 (n + 1)

end A111108

/-!
# A111109: Expansion of -x*(x^6+3*x^5+2*x^4-2*x^3-4*x^2+4*x-1)/((1-x)^2*(1-2*x-x^2)^2).

The programs for A111109, the canonical program `A111109.P11062405004548106874` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111109 has offset 0).

The definition of A111109 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-4x^2+4x^3+2x^4-2x^5-3x^6-x^7)/(1-6x+11x^2-4x^3-5x^4+2x^5+x^6))` (program `A111109.P11062405004548106874`, by `A111109.P11062405004548106874.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111109.P11062405004548106874

`ogf((x-4x^2+4x^3+2x^4-2x^5-3x^6-x^7)/(1-6x+11x^2-4x^3-5x^4+2x^5+x^6))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111109

/-- `ogf((x-4x^2+4x^3+2x^4-2x^5-3x^6-x^7)/(1-6x+11x^2-4x^3-5x^4+2x^5+x^6))` -/
def P11062405004548106874.Spec : Prop :=
  ∀ n, P11062405004548106874.a n = A111109 n

theorem P11062405004548106874.correct : P11062405004548106874.Spec := by
  intro n
  simp only [A111109]

end A111109

/-! ## A111109.P6407221400431110894

`Δ[A265650(Δ[A186425(2*(n+1))])]`
-/

namespace A111109.P6407221400431110894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186425 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265650 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111109.P6407221400431110894

namespace A111109

/-- `Δ[A265650(Δ[A186425(2*(n+1))])]` -/
def P6407221400431110894.Spec : Prop :=
  ∀ n, P6407221400431110894.a n = A111109 n

end A111109

/-! ## A111109.P15812539997875147490

`A100196(A006318(n)-A324238(n))`
-/

namespace A111109.P15812539997875147490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A006318 n - A324238 n).toNat

end

end A111109.P15812539997875147490

namespace A111109

/-- `A100196(A006318(n)-A324238(n))` -/
def P15812539997875147490.Spec : Prop :=
  ∀ n, P15812539997875147490.a n = A111109 n

end A111109

/-! ## A111109.P7057093140331706871

`A111110(n)+A025444(A181228(n+1))`
-/

namespace A111109.P7057093140331706871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111110 n + A025444 (A181228 (n + 1)).toNat

end

end A111109.P7057093140331706871

namespace A111109

/-- `A111110(n)+A025444(A181228(n+1))` -/
def P7057093140331706871.Spec : Prop :=
  ∀ n, P7057093140331706871.a n = A111109 n

end A111109

/-!
# A111110: Expansion of x*(x^4 - x^3 + 4x^2 - 3x + 1)/(1 - 5x + 9x^2 - 8x^3 + 2x^4 - x^5).

The programs for A111110, the canonical program `A111110.P559115921381903159` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111110 has offset 0).

The definition of A111110 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-3x^2+4x^3-x^4+x^5)/(1-5x+9x^2-8x^3+2x^4-x^5))` (program `A111110.P559115921381903159`, by `A111110.P559115921381903159.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111110.P559115921381903159

`ogf((x-3x^2+4x^3-x^4+x^5)/(1-5x+9x^2-8x^3+2x^4-x^5))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111110

/-- `ogf((x-3x^2+4x^3-x^4+x^5)/(1-5x+9x^2-8x^3+2x^4-x^5))` -/
def P559115921381903159.Spec : Prop :=
  ∀ n, P559115921381903159.a n = A111110 n

theorem P559115921381903159.correct : P559115921381903159.Spec := by
  intro n
  simp only [A111110]

end A111110

/-! ## A111110.P6111675338141182811

`∑[A008651(∑[A295288(n)])]`
-/

namespace A111110.P6111675338141182811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295288 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111110.P6111675338141182811

namespace A111110

/-- `∑[A008651(∑[A295288(n)])]` -/
def P6111675338141182811.Spec : Prop :=
  ∀ n, P6111675338141182811.a n = A111110 n

end A111110

/-! ## A111110.P16912297321976515940

`∑[A033182(∑[A295288(n)])]`
-/

namespace A111110.P16912297321976515940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295288 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111110.P16912297321976515940

namespace A111110

/-- `∑[A033182(∑[A295288(n)])]` -/
def P16912297321976515940.Spec : Prop :=
  ∀ n, P16912297321976515940.a n = A111110 n

end A111110

/-! ## A111110.P15968852040258252823

`A261233(n)-A294928(A000142(n))`
-/

namespace A111110.P15968852040258252823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261233 n - A294928 (A000142 n).toNat

end

end A111110.P15968852040258252823

namespace A111110

/-- `A261233(n)-A294928(A000142(n))` -/
def P15968852040258252823.Spec : Prop :=
  ∀ n, P15968852040258252823.a n = A111110 n

end A111110

/-!
# A111111: Number of simple permutations of degree n.

The programs for A111111, there is no canonical definition to state claims against.
-/

/-! ## A111111.P18363061164733271438

`A033178(2*(n+3))*A126209(A227545(n))`
-/

namespace A111111.P18363061164733271438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033178 (2 * (n + 3)) * A126209 (A227545 n).toNat

end

end A111111.P18363061164733271438

/-!
# A111113: a(2^m) = 1, a(2^m+1) = -1 (m>0), otherwise a(n) = 0.

The programs for A111113, the canonical program `A111113.P6143501810428345060` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111113 has offset 0).

The definition of A111113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111113.P1778113797342775464

`char[2^n]-char[or(1, 2^n)]`
-/

namespace A111113.P1778113797342775464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 ^ n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A111113.P1778113797342775464

namespace A111113

/-- `char[2^n]-char[or(1, 2^n)]` -/
def P1778113797342775464.Spec : Prop :=
  ∀ n, P1778113797342775464.a n = A111113 n

end A111113

/-! ## A111113.P6143501810428345060

`Δ[A209229(xor(1, n)%(n+1))]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A111113

/-- `Δ[A209229(xor(1, n)%(n+1))]` -/
def P6143501810428345060.Spec : Prop :=
  ∀ n, P6143501810428345060.a n = A111113 n

theorem P6143501810428345060.correct : P6143501810428345060.Spec := by
  intro n
  simp only [A111113]

end A111113

/-! ## A111113.P11755183479023975006

`(-1)^n*A209229(floor(n/2))`
-/

namespace A111113.P11755183479023975006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A209229 ⌊(n : ℚ) / 2⌋.toNat

end

end A111113.P11755183479023975006

namespace A111113

/-- `(-1)^n*A209229(floor(n/2))` -/
def P11755183479023975006.Spec : Prop :=
  ∀ n, P11755183479023975006.a n = A111113 n

end A111113

/-! ## A111113.P16443508432450026835

`A292273(A071044(n))`
-/

namespace A111113.P16443508432450026835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292273 (A071044 n).toNat

end

end A111113.P16443508432450026835

namespace A111113

/-- `A292273(A071044(n))` -/
def P16443508432450026835.Spec : Prop :=
  ∀ n, P16443508432450026835.a n = A111113 n

end A111113

/-! ## A111113.P8392699252516339874

`A267579(xor(1, n))-A267579(n)`
-/

namespace A111113.P8392699252516339874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267579 (Nat.xor 1 n) - A267579 n

end

end A111113.P8392699252516339874

namespace A111113

/-- `A267579(xor(1, n))-A267579(n)` -/
def P8392699252516339874.Spec : Prop :=
  ∀ n, P8392699252516339874.a n = A111113 n

end A111113

/-! ## A111113.P7626114040635860510

`(-1)^n*A010051(A060632(n))`
-/

namespace A111113.P7626114040635860510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A010051 (A060632 n).toNat

end

end A111113.P7626114040635860510

namespace A111113

/-- `(-1)^n*A010051(A060632(n))` -/
def P7626114040635860510.Spec : Prop :=
  ∀ n, P7626114040635860510.a n = A111113 n

end A111113

/-! ## A111113.P9276283465142984757

`A209229(n)-A209229(A005187(n))`
-/

namespace A111113.P9276283465142984757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n - A209229 (A005187 n).toNat

end

end A111113.P9276283465142984757

namespace A111113

/-- `A209229(n)-A209229(A005187(n))` -/
def P9276283465142984757.Spec : Prop :=
  ∀ n, P9276283465142984757.a n = A111113 n

end A111113

/-! ## A111113.P13212673414035515765

`A209229(n)-A209229(A078823(n))`
-/

namespace A111113.P13212673414035515765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n - A209229 (A078823 n).toNat

end

end A111113.P13212673414035515765

namespace A111113

/-- `A209229(n)-A209229(A078823(n))` -/
def P13212673414035515765.Spec : Prop :=
  ∀ n, P13212673414035515765.a n = A111113 n

end A111113

/-! ## A111113.P2452900526119691860

`A209229(n)-A209229(A303767(n))`
-/

namespace A111113.P2452900526119691860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n - A209229 (A303767 n).toNat

end

end A111113.P2452900526119691860

namespace A111113

/-- `A209229(n)-A209229(A303767(n))` -/
def P2452900526119691860.Spec : Prop :=
  ∀ n, P2452900526119691860.a n = A111113 n

end A111113

/-! ## A111113.P18057400622243544458

`A209229(n)-A209229(A089263(n)+n)`
-/

namespace A111113.P18057400622243544458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n - A209229 (A089263 n + (n : ℤ)).toNat

end

end A111113.P18057400622243544458

namespace A111113

/-- `A209229(n)-A209229(A089263(n)+n)` -/
def P18057400622243544458.Spec : Prop :=
  ∀ n, P18057400622243544458.a n = A111113 n

end A111113

/-! ## A111113.P6658782142216675716

`A267579(n-A054868(n))-A267579(n)`
-/

namespace A111113.P6658782142216675716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267579 ((n : ℤ) - A054868 n).toNat - A267579 n

end

end A111113.P6658782142216675716

namespace A111113

/-- `A267579(n-A054868(n))-A267579(n)` -/
def P6658782142216675716.Spec : Prop :=
  ∀ n, P6658782142216675716.a n = A111113 n

end A111113

/-! ## A111113.P437103729505652041

`A255738(n+1)-A255738(A005187(n)+1)`
-/

namespace A111113.P437103729505652041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255738 (n + 1) - A255738 (A005187 n + 1).toNat

end

end A111113.P437103729505652041

namespace A111113

/-- `A255738(n+1)-A255738(A005187(n)+1)` -/
def P437103729505652041.Spec : Prop :=
  ∀ n, P437103729505652041.a n = A111113 n

end A111113

/-! ## A111113.P9062578902478238027

`A255738(n+1)-A255738(A255738(n+1)+A004273(n))`
-/

namespace A111113.P9062578902478238027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255738 (n + 1) - A255738 (A255738 (n + 1) + A004273 n).toNat

end

end A111113.P9062578902478238027

namespace A111113

/-- `A255738(n+1)-A255738(A255738(n+1)+A004273(n))` -/
def P9062578902478238027.Spec : Prop :=
  ∀ n, P9062578902478238027.a n = A111113 n

end A111113

/-! ## A111113.P2001449976741776674

`Δ[char[∑[2^n]+2]]`
-/

namespace A111113.P2001449976741776674
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A111113.P2001449976741776674

namespace A111113

/-- `Δ[char[∑[2^n]+2]]` -/
def P2001449976741776674.Spec : Prop :=
  ∀ n, P2001449976741776674.a n = A111113 n

end A111113

/-! ## A111113.P18255864684671899341

`A014963(2*n)-A000041(a(n-1)+1)` with `a(0)=0, a(1)=0`
-/

namespace A111113.P18255864684671899341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A014963 (2 * n) - A000041 (a (n - 1) + 1).toNat

end

end A111113.P18255864684671899341

namespace A111113

/-- `A014963(2*n)-A000041(a(n-1)+1)` -/
def P18255864684671899341.Spec : Prop :=
  ∀ n, P18255864684671899341.a n = A111113 n

end A111113

/-! ## A111113.P16407947779447485540

`A014963(2*n)-A000010(a(n-1)+2)` with `a(0)=0, a(1)=0`
-/

namespace A111113.P16407947779447485540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A014963 (2 * n) - A000010 (a (n - 1) + 2).toNat

end

end A111113.P16407947779447485540

namespace A111113

/-- `A014963(2*n)-A000010(a(n-1)+2)` -/
def P16407947779447485540.Spec : Prop :=
  ∀ n, P16407947779447485540.a n = A111113 n

end A111113

/-! ## A111113.P15979642116331951877

`A014963(2*n)-A000045(a(n-1)+2)` with `a(0)=0, a(1)=0`
-/

namespace A111113.P15979642116331951877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A014963 (2 * n) - A000045 (a (n - 1) + 2).toNat

end

end A111113.P15979642116331951877

namespace A111113

/-- `A014963(2*n)-A000045(a(n-1)+2)` -/
def P15979642116331951877.Spec : Prop :=
  ∀ n, P15979642116331951877.a n = A111113 n

end A111113

/-! ## A111113.P10431544778742670260

`A000034(A153141(n))-A000034(n)`
-/

namespace A111113.P10431544778742670260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A153141 n).toNat - A000034 n

end

end A111113.P10431544778742670260

namespace A111113

/-- `A000034(A153141(n))-A000034(n)` -/
def P10431544778742670260.Spec : Prop :=
  ∀ n, P10431544778742670260.a n = A111113 n

end A111113

/-! ## A111113.P9252303018547470330

`A000035(A153141(n))-A000035(n)`
-/

namespace A111113.P9252303018547470330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A153141 n).toNat - A000035 n

end

end A111113.P9252303018547470330

namespace A111113

/-- `A000035(A153141(n))-A000035(n)` -/
def P9252303018547470330.Spec : Prop :=
  ∀ n, P9252303018547470330.a n = A111113 n

end A111113

/-! ## A111113.P3253514620426679332

`A209229(n)-A209229(A153154(n))`
-/

namespace A111113.P3253514620426679332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n - A209229 (A153154 n).toNat

end

end A111113.P3253514620426679332

namespace A111113

/-- `A209229(n)-A209229(A153154(n))` -/
def P3253514620426679332.Spec : Prop :=
  ∀ n, P3253514620426679332.a n = A111113 n

end A111113

/-!
# A111114: Integer part of prime(n)/pi(n).

The programs for A111114, the canonical program `A111114.P9509912661584287548` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111114 has offset 2).

The definition of A111114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111114.P7880756743327705043

`floor(Δ[A007504(n+1)]/A000720(n+2))`
-/

namespace A111114.P7880756743327705043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / (A000720 (n + 2) : ℚ)⌋

end

end A111114.P7880756743327705043

namespace A111114

/-- `floor(Δ[A007504(n+1)]/A000720(n+2))` -/
def P7880756743327705043.Spec : Prop :=
  ∀ n, P7880756743327705043.a n = A111114 (n + 2)

end A111114

/-! ## A111114.P15242522728312353182

`floor(A000040(n+2)/A000720(n+2))`
-/

namespace A111114.P15242522728312353182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 2) : ℚ) / (A000720 (n + 2) : ℚ)⌋

end

end A111114.P15242522728312353182

namespace A111114

/-- `floor(A000040(n+2)/A000720(n+2))` -/
def P15242522728312353182.Spec : Prop :=
  ∀ n, P15242522728312353182.a n = A111114 (n + 2)

end A111114

/-! ## A111114.P9509912661584287548

`floor(A000040(n+2)/∑[A010051(n+2)])`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A111114

/-- `floor(A000040(n+2)/∑[A010051(n+2)])` -/
def P9509912661584287548.Spec : Prop :=
  ∀ n, P9509912661584287548.a n = A111114 (n + 2)

theorem P9509912661584287548.correct : P9509912661584287548.Spec := by
  intro n
  simp only [A111114, Nat.add_sub_cancel]

end A111114

/-! ## A111114.P6838212541275725117

`floor(A000040(n+2)/∑[A080339(n+2)])`
-/

namespace A111114.P6838212541275725117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 2) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A111114.P6838212541275725117

namespace A111114

/-- `floor(A000040(n+2)/∑[A080339(n+2)])` -/
def P6838212541275725117.Spec : Prop :=
  ∀ n, P6838212541275725117.a n = A111114 (n + 2)

end A111114

/-! ## A111114.P6791067256228796198

`(A000040(n+2)-A065133(n+2))/A000720(n+2)`
-/

namespace A111114.P6791067256228796198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) - A065133 (n + 2) : ℚ) / (A000720 (n + 2) : ℚ)

end

end A111114.P6791067256228796198

namespace A111114

/-- `(A000040(n+2)-A065133(n+2))/A000720(n+2)` -/
def P6791067256228796198.Spec : Prop :=
  ∀ n, P6791067256228796198.a n = (A111114 (n + 2) : ℚ)

end A111114

/-! ## A111114.P17916354056686926990

`floor(p?[A003961(n+1)]/A000720(n+2))`
-/

namespace A111114.P17916354056686926990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A000720 (n + 2) : ℚ)⌋

end

end A111114.P17916354056686926990

namespace A111114

/-- `floor(p?[A003961(n+1)]/A000720(n+2))` -/
def P17916354056686926990.Spec : Prop :=
  ∀ n, P17916354056686926990.a n = A111114 (n + 2)

end A111114

/-!
# A111115: First differences of A051484, namely A111104, that are greater than any previous difference.

The programs for A111115, there is no canonical definition to state claims against.
-/

/-! ## A111115.P4250951590988912996

`record[A111104(n+1)]`
-/

namespace A111115.P4250951590988912996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111115.P4250951590988912996

/-! ## A111115.P1251356434343888984

`record[Δ[A051484(n+1)]]`
-/

namespace A111115.P1251356434343888984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051484 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111115.P1251356434343888984

/-! ## A111115.P3941666219227678073

`record[lcm(2, A111104(A028310(n)))]`
-/

namespace A111115.P3941666219227678073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A111104 (A028310 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111115.P3941666219227678073

/-! ## A111115.P15455842410629642319

`record[A051484(n+2)-A051484(n+1)]`
-/

namespace A111115.P15455842410629642319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051484 (n + 2) - A051484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111115.P15455842410629642319

/-! ## A111115.P7675428974854166355

`record[A057427((1-n)²)*A111104(A028310(n))]`
-/

namespace A111115.P7675428974854166355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ((1 - (n : ℤ)) ^ 2).toNat * A111104 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111115.P7675428974854166355

/-!
# A111116: Numbers n such that digits of n are not present in n^4.

The programs for A111116, there is no canonical definition to state claims against.
-/

/-! ## A111116.P17418109971871214289

`root(A113316(n+1), 4)`
-/

namespace A111116.P17418109971871214289
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A113316 (n + 1) : ℝ) ^ (1 / (4 : ℝ))

end

end A111116.P17418109971871214289

/-! ## A111116.P14537638090067412165

`sqrt(sqrt(A113316(1-(n-2*n))))`
-/

namespace A111116.P14537638090067412165
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A113316 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat : ℝ))

end

end A111116.P14537638090067412165

/-! ## A111116.P5219145353076794682

`sqrt(sqrt(A113316(n+1)))%A000045(n+4)`
-/

namespace A111116.P5219145353076794682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A113316 (n + 1) : ℝ)))) (A000045 (n + 4))

end

end A111116.P5219145353076794682

/-! ## A111116.P10861799875331486783

`A009531(2*n+1)²*sqrt(sqrt(A113316(n+1)))`
-/

namespace A111116.P10861799875331486783
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A009531 (2 * n + 1) ^ 2 : ℝ) * Real.sqrt (Real.sqrt (A113316 (n + 1) : ℝ))

end

end A111116.P10861799875331486783

/-! ## A111116.P15433688155723226347

`sqrt(sqrt(A113316(n+1))%A219911(n+1))`
-/

namespace A111116.P15433688155723226347
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A113316 (n + 1) : ℝ))) (A219911 (n + 1)) : ℝ)

end

end A111116.P15433688155723226347

/-! ## A111116.P9121115649309549040

`A000027(sqrt(sqrt(A113316(n+1))))`
-/

namespace A111116.P9121115649309549040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A113316 (n + 1) : ℝ)))).toNat

end

end A111116.P9121115649309549040

/-! ## A111116.P8844457419486946332

`A004151(sqrt(sqrt(A113316(n+1))))`
-/

namespace A111116.P8844457419486946332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A113316 (n + 1) : ℝ)))).toNat

end

end A111116.P8844457419486946332

/-!
# A111119: a(n) = Product_{1<=k<=n, GCD(k,n)=1} F(k), where F(k) is the k-th Fibonacci number.

The programs for A111119, there is no canonical definition to state claims against.
-/

/-! ## A111119.P5372771439135057789

`gcd(n!, A062890((n+2)*n!))`
-/

namespace A111119.P5372771439135057789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial n : ℤ) (A062890 ((n + 2) * Nat.factorial n))

end

end A111119.P5372771439135057789

/-! ## A111119.P13978424179622245724

`A172479(∑[∑[(n²-1)%Δ[n²]]])`
-/

namespace A111119.P13978424179622245724
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - 1) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172479 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111119.P13978424179622245724

/-! ## A111119.P13729822515685444199

`A082641(A148556(n))`
-/

namespace A111119.P13729822515685444199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082641 (A148556 n).toNat

end

end A111119.P13729822515685444199

/-!
# A111121: a(n) = a(n-3)^3 + a(n-2)^2 + a(n-1); a(1) = -1, a(2) = 0, a(3) = 1.

The programs for A111121, the canonical program `A111121.P17885186559113430122` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111121 has offset 1).

The definition of A111121 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-3)^3+a(n-2)²+a(n-1)` (program `A111121.P17885186559113430122`, by `A111121.P17885186559113430122.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111121.P17885186559113430122

`a(n-3)^3+a(n-2)²+a(n-1)` with `a(0)=-1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111121

/-- `a(n-3)^3+a(n-2)²+a(n-1)` -/
def P17885186559113430122.Spec : Prop :=
  ∀ n, P17885186559113430122.a n = A111121 (n + 1)

theorem P17885186559113430122.correct : P17885186559113430122.Spec := by
  intro n
  simp only [A111121, Nat.add_sub_cancel]

end A111121

/-!
# A111123: Number of 2's in n-th "Kolakoski" string defined in A054349.

The programs for A111123, the canonical program `A111123.P4994184408905448114` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111123 has offset 0).

The definition of A111123 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001083, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A111123.P4994184408905448114

`A001083(n+4)-A001083(n+3)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A111123

/-- `A001083(n+4)-A001083(n+3)` -/
def P4994184408905448114.Spec : Prop :=
  ∀ n, P4994184408905448114.a n = A111123 n

theorem P4994184408905448114.correct : P4994184408905448114.Spec := by
  intro n
  simp only [A111123]

end A111123

/-! ## A111123.P6901220875475617031

`Δ[A042942(n+1)]`
-/

namespace A111123.P6901220875475617031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111123.P6901220875475617031

namespace A111123

/-- `Δ[A042942(n+1)]` -/
def P6901220875475617031.Spec : Prop :=
  ∀ n, P6901220875475617031.a n = A111123 n

theorem P6901220875475617031.correct : P6901220875475617031.Spec := by
  intro n
  simp only [A111123, Nat.add_sub_cancel, A111123.P6901220875475617031.f1, A111123.P6901220875475617031.a, A111123.P4994184408905448114.a, A001083, A001083.P5643140285671293949.a, A042942, A042942.P7773469861340243061.a, A054353, A054353.P16739713460901819012.f1, A054353.P16739713460901819012.a, A000002, A000002.P13330532946811820297.a, A156253, A156253.P16782691293242481478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A111123

/-! ## A111123.P8550817729017565515

`Δ[A001083(n+3)]`
-/

namespace A111123.P8550817729017565515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001083 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111123.P8550817729017565515

namespace A111123

/-- `Δ[A001083(n+3)]` -/
def P8550817729017565515.Spec : Prop :=
  ∀ n, P8550817729017565515.a n = A111123 n

theorem P8550817729017565515.correct : P8550817729017565515.Spec := by
  intro n
  simp only [A111123, Nat.add_sub_cancel, A111123.P8550817729017565515.f1, A111123.P8550817729017565515.a, A111123.P4994184408905448114.a, SequenceMachineLib.memo_apply]

end A111123

/-! ## A111123.P3907231041229337232

`abs(Δ[A042942(2*n-(n-1))])`
-/

namespace A111123.P3907231041229337232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042942 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A111123.P3907231041229337232

namespace A111123

/-- `abs(Δ[A042942(2*n-(n-1))])` -/
def P3907231041229337232.Spec : Prop :=
  ∀ n, P3907231041229337232.a n = A111123 n

end A111123

/-! ## A111123.P9699959487571097124

`Δ[record[A042942(A133310(n))]]`
-/

namespace A111123.P9699959487571097124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042942 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111123.P9699959487571097124

namespace A111123

/-- `Δ[record[A042942(A133310(n))]]` -/
def P9699959487571097124.Spec : Prop :=
  ∀ n, P9699959487571097124.a n = A111123 n

end A111123

/-! ## A111123.P3525035695055349595

`Δ[record[A042942(A134478(n))]]`
-/

namespace A111123.P3525035695055349595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042942 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111123.P3525035695055349595

namespace A111123

/-- `Δ[record[A042942(A134478(n))]]` -/
def P3525035695055349595.Spec : Prop :=
  ∀ n, P3525035695055349595.a n = A111123 n

end A111123

/-! ## A111123.P10013382945010670511

`A042942(n+2)-A042942(n+1)`
-/

namespace A111123.P10013382945010670511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042942 (n + 2) - A042942 (n + 1)

end

end A111123.P10013382945010670511

namespace A111123

/-- `A042942(n+2)-A042942(n+1)` -/
def P10013382945010670511.Spec : Prop :=
  ∀ n, P10013382945010670511.a n = A111123 n

theorem P10013382945010670511.correct : P10013382945010670511.Spec := by
  intro n
  simp only [A111123, Nat.add_sub_cancel, A111123.P10013382945010670511.a, A111123.P4994184408905448114.a, A001083, A001083.P5643140285671293949.a, A042942, A042942.P7773469861340243061.a, A054353, A054353.P16739713460901819012.f1, A054353.P16739713460901819012.a, A000002, A000002.P13330532946811820297.a, A156253, A156253.P16782691293242481478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A111123

/-!
# A111124: Number of 1's in n-th "Kolakoski" string defined in A054349.

The programs for A111124, there is no canonical definition to state claims against.
-/

/-! ## A111124.P231668264072738212

`A042942(n+1)-A111123(n)`
-/

namespace A111124.P231668264072738212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042942 (n + 1) - A111123 n

end

end A111124.P231668264072738212

/-! ## A111124.P14137356440738295306

`A001083(n+3)-(A111123(n)+1)`
-/

namespace A111124.P14137356440738295306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001083 (n + 3) - (A111123 n + 1)

end

end A111124.P14137356440738295306

/-! ## A111124.P5806319453114558976

`A042942(n+1)-Δ[A001083(n+3)]`
-/

namespace A111124.P5806319453114558976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001083 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042942 (n + 1) - (f1 (n + 1) - f1 n)

end

end A111124.P5806319453114558976

/-! ## A111124.P1477920507563830099

`2*A042942(n+1)-A042942(n+2)`
-/

namespace A111124.P1477920507563830099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A042942 (n + 1) - A042942 (n + 2)

end

end A111124.P1477920507563830099

/-! ## A111124.P13727382143994021468

`∑[A111123(abs(1-n))]-1-A111123(n)`
-/

namespace A111124.P13727382143994021468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111123 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1 - A111123 n

end

end A111124.P13727382143994021468

/-!
# A111125: Triangle read by rows: T(k,s) = ((2*k+1)/(2*s+1))*binomial(k+s,2*s), 0 <= s <= k.

The programs for A111125, the canonical program `A111125.P15958569875656694251` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111125 has offset 0).

The definition of A111125 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111125.P15958569875656694251

`2*T(n-1,k)+T(n-1,k-1)-T(n-2,k)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111125

/-- `2*T(n-1,k)+T(n-1,k-1)-T(n-2,k)` -/
def P15958569875656694251.Spec : Prop :=
  ∀ n, P15958569875656694251.a n = A111125 n

theorem P15958569875656694251.correct : P15958569875656694251.Spec := by
  intro n
  simp only [A111125]

end A111125

/-! ## A111125.P7751612181971157600

`(2*row(n)+1)/(2*col(n)+1)*C(row(n)+col(n), 2*col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A111125.P7751612181971157600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.triRow n + 1 : ℚ) / (2 * SequenceMachineLib.triCol n + 1 : ℚ) * (Nat.choose (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n) (2 * SequenceMachineLib.triCol n) : ℚ)

end

end A111125.P7751612181971157600

namespace A111125

/-- `(2*row(n)+1)/(2*col(n)+1)*C(row(n)+col(n), 2*col(n))` -/
def P7751612181971157600.Spec : Prop :=
  ∀ n, P7751612181971157600.a n = (A111125 n : ℚ)

end A111125

/-! ## A111125.P17974167371221175768

`C(row(n)+col(n), 2*col(n))+2*C(row(n)+col(n), 2*col(n)+1)`
-/

namespace A111125.P17974167371221175768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n) (2 * SequenceMachineLib.triCol n) + 2 * Nat.choose (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n) (2 * SequenceMachineLib.triCol n + 1)

end

end A111125.P17974167371221175768

namespace A111125

/-- `C(row(n)+col(n), 2*col(n))+2*C(row(n)+col(n), 2*col(n)+1)` -/
def P17974167371221175768.Spec : Prop :=
  ∀ n, (P17974167371221175768.a n : ℤ) = A111125 n

end A111125

/-! ## A111125.P15460410316412066346

`2*A078812(n)-A085478(n)`
-/

namespace A111125.P15460410316412066346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078812 n - A085478 n

end

end A111125.P15460410316412066346

namespace A111125

/-- `2*A078812(n)-A085478(n)` -/
def P15460410316412066346.Spec : Prop :=
  ∀ n, P15460410316412066346.a n = A111125 n

end A111125

/-! ## A111125.P8044572858753588611

`A128908(n+1)+A078812(n)`
-/

namespace A111125.P8044572858753588611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128908 (n + 1) + A078812 n

end

end A111125.P8044572858753588611

namespace A111125

/-- `A128908(n+1)+A078812(n)` -/
def P8044572858753588611.Spec : Prop :=
  ∀ n, P8044572858753588611.a n = A111125 n

end A111125

/-! ## A111125.P5712235622400966855

`A082985(A061579(n))`
-/

namespace A111125.P5712235622400966855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082985 (A061579 n).toNat

end

end A111125.P5712235622400966855

namespace A111125

/-- `A082985(A061579(n))` -/
def P5712235622400966855.Spec : Prop :=
  ∀ n, P5712235622400966855.a n = A111125 n

end A111125

/-! ## A111125.P16002290564968235761

`A082985(A114327(n)+n)`
-/

namespace A111125.P16002290564968235761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082985 (A114327 n + (n : ℤ)).toNat

end

end A111125.P16002290564968235761

namespace A111125

/-- `A082985(A114327(n)+n)` -/
def P16002290564968235761.Spec : Prop :=
  ∀ n, P16002290564968235761.a n = A111125 n

end A111125

/-! ## A111125.P3790826504467995667

`A082985(A038722(n+1)-1)`
-/

namespace A111125.P3790826504467995667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082985 (A038722 (n + 1) - 1).toNat

end

end A111125.P3790826504467995667

namespace A111125

/-- `A082985(A038722(n+1)-1)` -/
def P3790826504467995667.Spec : Prop :=
  ∀ n, P3790826504467995667.a n = A111125 n

end A111125

/-! ## A111125.P4780934087056040366

`A082985(A057944(n)+A025581(n))`
-/

namespace A111125.P4780934087056040366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082985 (A057944 n + A025581 n).toNat

end

end A111125.P4780934087056040366

namespace A111125

/-- `A082985(A057944(n)+A025581(n))` -/
def P4780934087056040366.Spec : Prop :=
  ∀ n, P4780934087056040366.a n = A111125 n

end A111125

/-! ## A111125.P17331719296094023036

`A082985(A038722(n+2))`
-/

namespace A111125.P17331719296094023036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082985 (A038722 (n + 2)).toNat

end

end A111125.P17331719296094023036

namespace A111125

/-- `A082985(A038722(n+2))` -/
def P17331719296094023036.Spec : Prop :=
  ∀ n, P17331719296094023036.a n = A111125 n

end A111125

/-! ## A111125.P9897754882966088891

`A208509(A056537(n+1))`
-/

namespace A111125.P9897754882966088891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208509 (A056537 (n + 1)).toNat

end

end A111125.P9897754882966088891

namespace A111125

/-- `A208509(A056537(n+1))` -/
def P9897754882966088891.Spec : Prop :=
  ∀ n, P9897754882966088891.a n = A111125 n

end A111125

/-! ## A111125.P11568454329587612132

`A073044(A185870(n+1))`
-/

namespace A111125.P11568454329587612132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073044 (A185870 (n + 1)).toNat

end

end A111125.P11568454329587612132

namespace A111125

/-- `A073044(A185870(n+1))` -/
def P11568454329587612132.Spec : Prop :=
  ∀ n, P11568454329587612132.a n = A111125 n

end A111125

/-! ## A111125.P10980903158429127185

`A114525(A185869(n+1))`
-/

namespace A111125.P10980903158429127185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114525 (A185869 (n + 1)).toNat

end

end A111125.P10980903158429127185

namespace A111125

/-- `A114525(A185869(n+1))` -/
def P10980903158429127185.Spec : Prop :=
  ∀ n, P10980903158429127185.a n = A111125 n

end A111125

/-! ## A111125.P15328335170176124911

`A114525(A061579(n)+A016789(n))`
-/

namespace A111125.P15328335170176124911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114525 (A061579 n + A016789 n).toNat

end

end A111125.P15328335170176124911

namespace A111125

/-- `A114525(A061579(n)+A016789(n))` -/
def P15328335170176124911.Spec : Prop :=
  ∀ n, P15328335170176124911.a n = A111125 n

end A111125

/-!
# A111126: Triangle read by rows: T(k,s) = binomial(k+s,2s+1)*(2k-1)*(2k+1)/(2s+3), k >= 1, 0 <= s <= k-1.

The programs for A111126, there is no canonical definition to state claims against.
-/

/-! ## A111126.P1075986343398191075

`A111127(∑[char[∑[n]]]²-n)`
-/

namespace A111126.P1075986343398191075
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111127 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A111126.P1075986343398191075

/-! ## A111126.P4967650796833021132

`A111127(A038722(n+1))%A110288(n)`
-/

namespace A111126.P4967650796833021132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111127 (A038722 (n + 1)).toNat) (A110288 n)

end

end A111126.P4967650796833021132

/-! ## A111126.P13489831895065551875

`or(A000007(n), A111127(A038722(n+1)))`
-/

namespace A111126.P13489831895065551875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A111127 (A038722 (n + 1)).toNat)

end

end A111126.P13489831895065551875

/-! ## A111126.P2488564045834282139

`A111127(A038722(n+1))+A000007(A111127(n+1))`
-/

namespace A111126.P2488564045834282139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111127 (A038722 (n + 1)).toNat + A000007 (A111127 (n + 1)).toNat

end

end A111126.P2488564045834282139

/-!
# A111127: Triangle read by rows: T(k,s)=(2k-1)(2k+1)binomial(2k-s-1,2k-2s-1)/(2k-2s+1); k>=1, 0<=s<=k-1.

The programs for A111127, there is no canonical definition to state claims against.
-/

/-! ## A111127.P14525111649069517068

`A111126(∑[char[∑[n]]]²-n)`
-/

namespace A111127.P14525111649069517068
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111126 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A111127.P14525111649069517068

/-! ## A111127.P16967549741278958104

`A111126(A038722(n+1))%A110288(n)`
-/

namespace A111127.P16967549741278958104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111126 (A038722 (n + 1)).toNat) (A110288 n)

end

end A111127.P16967549741278958104

/-! ## A111127.P8199712560043632888

`or(A000007(n), A111126(A038722(n+1)))`
-/

namespace A111127.P8199712560043632888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A111126 (A038722 (n + 1)).toNat)

end

end A111127.P8199712560043632888

/-! ## A111127.P12171595312301352226

`A111126(A038722(n+1))+A000007(A111126(n+1))`
-/

namespace A111127.P12171595312301352226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111126 (A038722 (n + 1)).toNat + A000007 (A111126 (n + 1)).toNat

end

end A111127.P12171595312301352226

/-!
# A111128: Scores for Part 2 of the n X n generalization of the Gordon Lee puzzle.

The programs for A111128, there is no canonical definition to state claims against.
-/

/-! ## A111128.P13407411674358821616

`A282093(A038419(n))+A007742(n)`
-/

namespace A111128.P13407411674358821616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282093 (A038419 n).toNat + A007742 n

end

end A111128.P13407411674358821616

/-!
# A111131: Least cube greater than its predecessor such that their difference is a prime or a prime multiplied by a power of two.

The programs for A111131, there is no canonical definition to state claims against.
-/

/-! ## A111131.P4397617481248815179

`∑[A140540(A022809(n+1))%3]^3`
-/

namespace A111131.P4397617481248815179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140540 (A022809 (n + 1)).toNat) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A111131.P4397617481248815179

/-! ## A111131.P13495190202099687348

`A048763(A000124(n)*A059582(n))`
-/

namespace A111131.P13495190202099687348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (A000124 n * A059582 n).toNat

end

end A111131.P13495190202099687348

/-! ## A111131.P15856841336322837267

`record[A201053(A299337(n)-A048763(n))]`
-/

namespace A111131.P15856841336322837267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201053 (A299337 n - A048763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111131.P15856841336322837267

/-! ## A111131.P9022552943149884916

`record[A201053(xor(2, A299337(n)))]`
-/

namespace A111131.P9022552943149884916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201053 (Int.xor 2 (A299337 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111131.P9022552943149884916

/-!
# A111132: a(n+1) = a(n) + (a(n) - a(n-1) + a(n) mod 10) mod 10 with a(0)=0 and a(1)=1.

The programs for A111132, the canonical program `A111132.P5976915426305606855` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111132 has offset 0).

The definition of A111132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111132.P3156700422900394139

`∑[A003893(Δ[n²])]`
-/

namespace A111132.P3156700422900394139
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111132.P3156700422900394139

namespace A111132

/-- `∑[A003893(Δ[n²])]` -/
def P3156700422900394139.Spec : Prop :=
  ∀ n, P3156700422900394139.a n = A111132 n

end A111132

/-! ## A111132.P5976915426305606855

`A267809(2*(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A111132

/-- `A267809(2*(n+1))` -/
def P5976915426305606855.Spec : Prop :=
  ∀ n, P5976915426305606855.a n = A111132 n

theorem P5976915426305606855.correct : P5976915426305606855.Spec := by
  intro n
  simp only [A111132]

end A111132

/-! ## A111132.P10793343034813299577

`∑[A003893(2*n+1)%10]`
-/

namespace A111132.P10793343034813299577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003893 (2 * n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111132.P10793343034813299577

namespace A111132

/-- `∑[A003893(2*n+1)%10]` -/
def P10793343034813299577.Spec : Prop :=
  ∀ n, P10793343034813299577.a n = A111132 n

end A111132

/-! ## A111132.P2861262028417104403

`∑[A105471(2*n+1)%10]`
-/

namespace A111132.P2861262028417104403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105471 (2 * n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111132.P2861262028417104403

namespace A111132

/-- `∑[A105471(2*n+1)%10]` -/
def P2861262028417104403.Spec : Prop :=
  ∀ n, P2861262028417104403.a n = A111132 n

end A111132

/-! ## A111132.P2469031404714903349

`∑[dr(A003893(A005408(n)))]`
-/

namespace A111132.P2469031404714903349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A003893 (A005408 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111132.P2469031404714903349

namespace A111132

/-- `∑[dr(A003893(A005408(n)))]` -/
def P2469031404714903349.Spec : Prop :=
  ∀ n, (P2469031404714903349.a n : ℤ) = A111132 n

end A111132

/-! ## A111132.P7811864675085421346

`∑[A122367(n)%10]`
-/

namespace A111132.P7811864675085421346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122367 n) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111132.P7811864675085421346

namespace A111132

/-- `∑[A122367(n)%10]` -/
def P7811864675085421346.Spec : Prop :=
  ∀ n, P7811864675085421346.a n = A111132 n

end A111132

/-! ## A111132.P9688785789146990343

`∑[A001519(n+1)%10]`
-/

namespace A111132.P9688785789146990343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001519 (n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111132.P9688785789146990343

namespace A111132

/-- `∑[A001519(n+1)%10]` -/
def P9688785789146990343.Spec : Prop :=
  ∀ n, P9688785789146990343.a n = A111132 n

end A111132

/-! ## A111132.P6505309385223150240

`∑[A000045(Δ[n²])%10]`
-/

namespace A111132.P6505309385223150240
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111132.P6505309385223150240

namespace A111132

/-- `∑[A000045(Δ[n²])%10]` -/
def P6505309385223150240.Spec : Prop :=
  ∀ n, P6505309385223150240.a n = A111132 n

end A111132

/-! ## A111132.P573393372976490060

`∑[Δ[A000045(2*n)]%10]`
-/

namespace A111132.P573393372976490060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111132.P573393372976490060

namespace A111132

/-- `∑[Δ[A000045(2*n)]%10]` -/
def P573393372976490060.Spec : Prop :=
  ∀ n, P573393372976490060.a n = A111132 n

end A111132

/-! ## A111132.P1477382626753555565

`∑[record[A000045(xor(1, n))]%10]`
-/

namespace A111132.P1477382626753555565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.xor 1 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111132.P1477382626753555565

namespace A111132

/-- `∑[record[A000045(xor(1, n))]%10]` -/
def P1477382626753555565.Spec : Prop :=
  ∀ n, P1477382626753555565.a n = A111132 n

end A111132

/-! ## A111132.P7519973823521488704

`∑[A005247(2*n+1)%10]`
-/

namespace A111132.P7519973823521488704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005247 (2 * n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111132.P7519973823521488704

namespace A111132

/-- `∑[A005247(2*n+1)%10]` -/
def P7519973823521488704.Spec : Prop :=
  ∀ n, P7519973823521488704.a n = A111132 n

end A111132

/-! ## A111132.P8960698200858521322

`∑[A167816(2*n+1)%10]`
-/

namespace A111132.P8960698200858521322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167816 (2 * n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111132.P8960698200858521322

namespace A111132

/-- `∑[A167816(2*n+1)%10]` -/
def P8960698200858521322.Spec : Prop :=
  ∀ n, P8960698200858521322.a n = A111132 n

end A111132

/-! ## A111132.P10727868213525813584

`∑[dr(A000045(2*n+1)%10)]`
-/

namespace A111132.P10727868213525813584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A000045 (2 * n + 1)) 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111132.P10727868213525813584

namespace A111132

/-- `∑[dr(A000045(2*n+1)%10)]` -/
def P10727868213525813584.Spec : Prop :=
  ∀ n, (P10727868213525813584.a n : ℤ) = A111132 n

end A111132

/-! ## A111132.P15728247248021085401

`∑[((2*n+1)*A000032(2*n+1))%10]`
-/

namespace A111132.P15728247248021085401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * n + 1 : ℤ) * A000032 (2 * n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111132.P15728247248021085401

namespace A111132

/-- `∑[((2*n+1)*A000032(2*n+1))%10]` -/
def P15728247248021085401.Spec : Prop :=
  ∀ n, P15728247248021085401.a n = A111132 n

end A111132

/-!
# A111133: Number of partitions of n into at least two distinct parts.

The programs for A111133, there is no canonical definition to state claims against.
-/

/-! ## A111133.P17958889844994266730

`A000009(n)-1`
-/

namespace A111133.P17958889844994266730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - 1

end

end A111133.P17958889844994266730

/-! ## A111133.P15268988731476087494

`abs(A081360(n))-1`
-/

namespace A111133.P15268988731476087494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - 1

end

end A111133.P15268988731476087494

/-! ## A111133.P3087698705430286974

`floor(A333147(n)/2)`
-/

namespace A111133.P3087698705430286974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A333147 n : ℚ) / 2⌋

end

end A111133.P3087698705430286974

/-! ## A111133.P18429129347913812739

`∑[A087897(n)]-1`
-/

namespace A111133.P18429129347913812739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A111133.P18429129347913812739

/-! ## A111133.P1881453932623448108

`Δ[A317910(abs(1-n))]`
-/

namespace A111133.P1881453932623448108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317910 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111133.P1881453932623448108

/-! ## A111133.P2485006106505588954

`ceil(A087135(n)/2)-1`
-/

namespace A111133.P2485006106505588954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A087135 n : ℚ) / 2⌉ - 1

end

end A111133.P2485006106505588954

/-! ## A111133.P12012577072593974702

`∑[A087897(A028310(n))]`
-/

namespace A111133.P12012577072593974702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111133.P12012577072593974702

/-! ## A111133.P12323337690357264519

`A087135(n)-A052839(n)`
-/

namespace A111133.P12323337690357264519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087135 n - A052839 n

end

end A111133.P12323337690357264519

/-! ## A111133.P2255585592024066583

`A333147(n)%A000009(n)`
-/

namespace A111133.P2255585592024066583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333147 n) (A000009 n)

end

end A111133.P2255585592024066583

/-! ## A111133.P5153166242046604495

`A052839(A289207(n)+2)-2`
-/

namespace A111133.P5153166242046604495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 (A289207 n + 2).toNat - 2

end

end A111133.P5153166242046604495

/-! ## A111133.P9988647553338338861

`A052839(n)-(A057427(n)+1)`
-/

namespace A111133.P9988647553338338861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - (A057427 n + 1)

end

end A111133.P9988647553338338861

/-! ## A111133.P1459201857797885703

`A052839(n)+A057428(n)-1`
-/

namespace A111133.P1459201857797885703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n + (A057428 n - 1)

end

end A111133.P1459201857797885703

/-! ## A111133.P3441730746071452103

`A025147(n)+A096765(n)-1`
-/

namespace A111133.P3441730746071452103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 n + (A096765 n - 1)

end

end A111133.P3441730746071452103

/-! ## A111133.P8676463423531116017

`A003114(n)+A238708(n)-1`
-/

namespace A111133.P8676463423531116017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 n + (A238708 n - 1)

end

end A111133.P8676463423531116017

/-! ## A111133.P6299499995948466308

`gcd(A000038(n), A081360(n))-1`
-/

namespace A111133.P6299499995948466308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 n) (A081360 n) : ℤ) - 1

end

end A111133.P6299499995948466308

/-! ## A111133.P9798909832998833885

`∑[and(1, A000040(n+1))*A087897(n)]`
-/

namespace A111133.P9798909832998833885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111133.P9798909832998833885

/-! ## A111133.P15149110072319258554

`A096765(n+1)+A096765(n)-1`
-/

namespace A111133.P15149110072319258554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (n + 1) + A096765 n - 1

end

end A111133.P15149110072319258554

/-! ## A111133.P16409286423540197451

`A280193(A109613(n))+A096765(n+1)+A096765(n)`
-/

namespace A111133.P16409286423540197451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A109613 n).toNat + (A096765 (n + 1) + A096765 n)

end

end A111133.P16409286423540197451

/-! ## A111133.P6831501699064881474

`A000065(n)-A047967(n)`
-/

namespace A111133.P6831501699064881474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n - A047967 n

end

end A111133.P6831501699064881474

/-!
# A111134: Numbers of the form p^(p^k-1) (p prime, k>=0).

The programs for A111134, there is no canonical definition to state claims against.
-/

/-! ## A111134.P4017797257293639993

`record[A193551(n+1)/∏{p}[n+1, #]]`
-/

namespace A111134.P4017797257293639993
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193551 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111134.P4017797257293639993

/-! ## A111134.P9226032040851531546

`∩[A055678(n+1), A111261(n+1)]`
-/

namespace A111134.P9226032040851531546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111134.P9226032040851531546

/-! ## A111134.P16972069611724871854

`∩[A055678(n+1), A113570(n+1)]`
-/

namespace A111134.P16972069611724871854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111134.P16972069611724871854

/-! ## A111134.P7863540239695682181

`∩[A081381(n+1), A113570(n+1)]`
-/

namespace A111134.P7863540239695682181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111134.P7863540239695682181

/-! ## A111134.P5047179471090253613

`∩[A046681(n+1), A181476(n+1)]`
-/

namespace A111134.P5047179471090253613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111134.P5047179471090253613

/-!
# A111135: Product_{k=1..n} F(p(k)), where p(k) is the k-th prime and F(k) is the k-th Fibonacci number.

The programs for A111135, there is no canonical definition to state claims against.
-/

/-! ## A111135.P17116284657110988258

`∏[A030426(n+1)]`
-/

namespace A111135.P17116284657110988258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A111135.P17116284657110988258

/-! ## A111135.P17579348395060411528

`∏[record[A113175(n+1)]]`
-/

namespace A111135.P17579348395060411528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113175 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A111135.P17579348395060411528

/-! ## A111135.P18324539147577634118

`∏[record[A113176(n+1)]]`
-/

namespace A111135.P18324539147577634118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113176 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A111135.P18324539147577634118

/-! ## A111135.P4688653001775380930

`∏[record[A113177(n+2)]]`
-/

namespace A111135.P4688653001775380930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113177 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A111135.P4688653001775380930

/-! ## A111135.P14019821094553491635

`∏[record[A113178(n+2)]]`
-/

namespace A111135.P14019821094553491635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113178 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A111135.P14019821094553491635

/-!
# A111136: a(n) = Sum_{k=1..n} Fibonacci(prime(k)).

The programs for A111136, there is no canonical definition to state claims against.
-/

/-! ## A111136.P9323940735730838451

`∑[A030426(n+1)]`
-/

namespace A111136.P9323940735730838451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111136.P9323940735730838451

/-! ## A111136.P6504925819303237170

`∑[record[A113175(n+1)]]`
-/

namespace A111136.P6504925819303237170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113175 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111136.P6504925819303237170

/-! ## A111136.P13702047334641594333

`∑[record[A113176(n+1)]]`
-/

namespace A111136.P13702047334641594333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113176 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111136.P13702047334641594333

/-! ## A111136.P17801090281384536462

`∑[record[A113177(n+2)]]`
-/

namespace A111136.P17801090281384536462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113177 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111136.P17801090281384536462

/-! ## A111136.P2937956903768306273

`∑[record[A113178(n+2)]]`
-/

namespace A111136.P2937956903768306273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113178 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111136.P2937956903768306273

/-! ## A111136.P13905457751821296922

`∑[record[A374106(n+2)]]`
-/

namespace A111136.P13905457751821296922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374106 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111136.P13905457751821296922

/-! ## A111136.P4048295641755184468

`∑[record[∏{p}[n, A000045(#)]]]`
-/

namespace A111136.P4048295641755184468
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), A000045 p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111136.P4048295641755184468

/-! ## A111136.P9850708147158760675

`∑[A000045(p?[comp[n²]])]`
-/

namespace A111136.P9850708147158760675
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111136.P9850708147158760675

/-! ## A111136.P8644899287473037003

`∑[record[A000045(∑{p}[n+2, #])]]`
-/

namespace A111136.P8644899287473037003
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ p ∈ Nat.primeFactors (f3 n), p)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111136.P8644899287473037003

/-! ## A111136.P12021651099503948333

`∑[A000045(Δ[A007504(n)])]`
-/

namespace A111136.P12021651099503948333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111136.P12021651099503948333

/-!
# A111138: Let b(n) denote the number of nontriangular numbers less than or equal to n. Then a(n) = b(n-1) + a(b(n-1)), with a(1) = a(2) = 0, a(3) = 1.

The programs for A111138, the canonical program `A111138.P485686665396904696` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111138 has offset 1).

The definition of A111138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111138.P5327211781662575280

`∑[col(n)]`
-/

namespace A111138.P5327211781662575280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111138.P5327211781662575280

namespace A111138

/-- `∑[col(n)]` -/
def P5327211781662575280.Spec : Prop :=
  ∀ n, (P5327211781662575280.a n : ℤ) = A111138 (n + 1)

theorem P5327211781662575280.correct : P5327211781662575280.Spec := by
  intro n
  simp only [A111138, Nat.add_sub_cancel, A111138.P5327211781662575280.f1, A111138.P5327211781662575280.a, A111138.P485686665396904696.f1, A111138.P485686665396904696.a, A002262, A002262.P17823619022233514403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111138

/-! ## A111138.P12820569324580482055

`∑[n-C(∑[char[∑[n]]], 2)]`
-/

namespace A111138.P12820569324580482055
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111138.P12820569324580482055

namespace A111138

/-- `∑[n-C(∑[char[∑[n]]], 2)]` -/
def P12820569324580482055.Spec : Prop :=
  ∀ n, P12820569324580482055.a n = A111138 (n + 1)

end A111138

/-! ## A111138.P18370403103281303678

`C(row(n)+1, 3)+C(col(n)+1, 2)`
-/

namespace A111138.P18370403103281303678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n + 1) 3 + Nat.choose (SequenceMachineLib.triCol n + 1) 2

end

end A111138.P18370403103281303678

namespace A111138

/-- `C(row(n)+1, 3)+C(col(n)+1, 2)` -/
def P18370403103281303678.Spec : Prop :=
  ∀ n, (P18370403103281303678.a n : ℤ) = A111138 (n + 1)

end A111138

/-! ## A111138.P14907098298291735148

`(row(n)^3-row(n)+3*col(n)²+3*col(n))/6`
-/

namespace A111138.P14907098298291735148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n ^ 3 : ℤ) - (SequenceMachineLib.triRow n : ℤ) + (3 * SequenceMachineLib.triCol n ^ 2 : ℤ) + (3 * SequenceMachineLib.triCol n : ℤ) : ℚ) / 6

end

end A111138.P14907098298291735148

namespace A111138

/-- `(row(n)^3-row(n)+3*col(n)²+3*col(n))/6` -/
def P14907098298291735148.Spec : Prop :=
  ∀ n, P14907098298291735148.a n = (A111138 (n + 1) : ℚ)

end A111138

/-! ## A111138.P485686665396904696

`∑[A002262(n)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A111138

/-- `∑[A002262(n)]` -/
def P485686665396904696.Spec : Prop :=
  ∀ n, P485686665396904696.a n = A111138 (n + 1)

theorem P485686665396904696.correct : P485686665396904696.Spec := by
  intro n
  simp only [A111138, Nat.add_sub_cancel]

end A111138

/-! ## A111138.P5080386598895824885

`∑[sqrt(A143844(n))]`
-/

namespace A111138.P5080386598895824885
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A143844 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111138.P5080386598895824885

namespace A111138

/-- `∑[sqrt(A143844(n))]` -/
def P5080386598895824885.Spec : Prop :=
  ∀ n, P5080386598895824885.a n = (A111138 (n + 1) : ℝ)

end A111138

/-! ## A111138.P6076755979962120825

`∑[log2(A059268(n))]`
-/

namespace A111138.P6076755979962120825
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059268 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111138.P6076755979962120825

namespace A111138

/-- `∑[log2(A059268(n))]` -/
def P6076755979962120825.Spec : Prop :=
  ∀ n, P6076755979962120825.a n = (A111138 (n + 1) : ℝ)

end A111138

/-! ## A111138.P10226406255081116807

`∑[val(A055235(n), 3)]`
-/

namespace A111138.P10226406255081116807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A055235 n).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111138.P10226406255081116807

namespace A111138

/-- `∑[val(A055235(n), 3)]` -/
def P10226406255081116807.Spec : Prop :=
  ∀ n, (P10226406255081116807.a n : ℤ) = A111138 (n + 1)

end A111138

/-! ## A111138.P12099527856738351546

`∑[val(A055236(n), 4)]`
-/

namespace A111138.P12099527856738351546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A055236 n).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111138.P12099527856738351546

namespace A111138

/-- `∑[val(A055236(n), 4)]` -/
def P12099527856738351546.Spec : Prop :=
  ∀ n, (P12099527856738351546.a n : ℤ) = A111138 (n + 1)

end A111138

/-! ## A111138.P3970071606671037501

`∑[n-A057944(n)]`
-/

namespace A111138.P3970071606671037501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A057944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111138.P3970071606671037501

namespace A111138

/-- `∑[n-A057944(n)]` -/
def P3970071606671037501.Spec : Prop :=
  ∀ n, P3970071606671037501.a n = A111138 (n + 1)

end A111138

/-! ## A111138.P4562953039902055581

`∑[A057554(Δ[n²])]`
-/

namespace A111138.P4562953039902055581
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111138.P4562953039902055581

namespace A111138

/-- `∑[A057554(Δ[n²])]` -/
def P4562953039902055581.Spec : Prop :=
  ∀ n, P4562953039902055581.a n = A111138 (n + 1)

end A111138

/-! ## A111138.P16137839898904329520

`∑[A002260(n+1)-1]`
-/

namespace A111138.P16137839898904329520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111138.P16137839898904329520

namespace A111138

/-- `∑[A002260(n+1)-1]` -/
def P16137839898904329520.Spec : Prop :=
  ∀ n, P16137839898904329520.a n = A111138 (n + 1)

theorem P16137839898904329520.correct : P16137839898904329520.Spec := by
  intro n
  simp only [A111138, Nat.add_sub_cancel, A111138.P16137839898904329520.f1, A111138.P16137839898904329520.a, A111138.P485686665396904696.f1, A111138.P485686665396904696.a, A002260, A002260.P9170571874073898642.a, A002262, A002262.P17823619022233514403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111138

/-! ## A111138.P10931666214546337087

`∑[val(A118413(n+1), 2)]`
-/

namespace A111138.P10931666214546337087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A118413 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111138.P10931666214546337087

namespace A111138

/-- `∑[val(A118413(n+1), 2)]` -/
def P10931666214546337087.Spec : Prop :=
  ∀ n, (P10931666214546337087.a n : ℤ) = A111138 (n + 1)

end A111138

/-! ## A111138.P9264618486029512492

`∑[2*n-A061885(n)]`
-/

namespace A111138.P9264618486029512492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A061885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111138.P9264618486029512492

namespace A111138

/-- `∑[2*n-A061885(n)]` -/
def P9264618486029512492.Spec : Prop :=
  ∀ n, P9264618486029512492.a n = A111138 (n + 1)

end A111138

/-! ## A111138.P3242107050110611675

`A014370(n+1)-(n+1)`
-/

namespace A111138.P3242107050110611675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014370 (n + 1) - (n + 1 : ℤ)

end

end A111138.P3242107050110611675

namespace A111138

/-- `A014370(n+1)-(n+1)` -/
def P3242107050110611675.Spec : Prop :=
  ∀ n, P3242107050110611675.a n = A111138 (n + 1)

end A111138

/-! ## A111138.P16445514046176908592

`A048151(n)+a(n-1)` with `a(0)=0`
-/

namespace A111138.P16445514046176908592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A048151 n + a (n - 1)

end

end A111138.P16445514046176908592

namespace A111138

/-- `A048151(n)+a(n-1)` -/
def P16445514046176908592.Spec : Prop :=
  ∀ n, P16445514046176908592.a n = A111138 (n + 1)

end A111138

/-! ## A111138.P1439682196497813608

`∑[abs(A140756(n+1))-1]`
-/

namespace A111138.P1439682196497813608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140756 (n + 1)| - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111138.P1439682196497813608

namespace A111138

/-- `∑[abs(A140756(n+1))-1]` -/
def P1439682196497813608.Spec : Prop :=
  ∀ n, P1439682196497813608.a n = A111138 (n + 1)

end A111138

/-! ## A111138.P10474174898341719376

`∑[sqrt(A133819(n+1))-1]`
-/

namespace A111138.P10474174898341719376
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) - 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111138.P10474174898341719376

namespace A111138

/-- `∑[sqrt(A133819(n+1))-1]` -/
def P10474174898341719376.Spec : Prop :=
  ∀ n, P10474174898341719376.a n = (A111138 (n + 1) : ℝ)

end A111138

/-! ## A111138.P12556659316792046391

`∑[A132118(n+1)-(n+1)]`
-/

namespace A111138.P12556659316792046391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132118 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111138.P12556659316792046391

namespace A111138

/-- `∑[A132118(n+1)-(n+1)]` -/
def P12556659316792046391.Spec : Prop :=
  ∀ n, P12556659316792046391.a n = A111138 (n + 1)

end A111138

/-! ## A111138.P12718622952192022060

`(n+1)²-∑[A004201(n+1)]`
-/

namespace A111138.P12718622952192022060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111138.P12718622952192022060

namespace A111138

/-- `(n+1)²-∑[A004201(n+1)]` -/
def P12718622952192022060.Spec : Prop :=
  ∀ n, P12718622952192022060.a n = A111138 (n + 1)

end A111138

/-!
# A111139: a(n) = n! * Sum_{k=0..n} Fibonacci(k)/k!.

The programs for A111139, the canonical program `A111139.P8450471431690119199` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111139 has offset 0).

The definition of A111139 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111139.P8450471431690119199

`(n+1)*a(n-1)-(n-2)*a(n-2)-(n-2)*a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111139

/-- `(n+1)*a(n-1)-(n-2)*a(n-2)-(n-2)*a(n-3)` -/
def P8450471431690119199.Spec : Prop :=
  ∀ n, P8450471431690119199.a n = A111139 n

theorem P8450471431690119199.correct : P8450471431690119199.Spec := by
  intro n
  simp only [A111139]

end A111139

/-! ## A111139.P4545539978910006297

`A000045(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A111139.P4545539978910006297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000045 n + (n : ℤ) * a (n - 1)

end

end A111139.P4545539978910006297

namespace A111139

/-- `A000045(n)+n*a(n-1)` -/
def P4545539978910006297.Spec : Prop :=
  ∀ n, P4545539978910006297.a n = A111139 n

end A111139

/-! ## A111139.P11743260519944147186

`abs(A236191(n))+n*a(n-1)` with `a(0)=0`
-/

namespace A111139.P11743260519944147186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |A236191 n| + (n : ℤ) * a (n - 1)

end

end A111139.P11743260519944147186

namespace A111139

/-- `abs(A236191(n))+n*a(n-1)` -/
def P11743260519944147186.Spec : Prop :=
  ∀ n, P11743260519944147186.a n = A111139 n

end A111139

/-! ## A111139.P16611690397920312327

`A094570(∑[n])+n*a(n-1)` with `a(0)=0`
-/

namespace A111139.P16611690397920312327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A094570 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) * a (n - 1)

end

end A111139.P16611690397920312327

namespace A111139

/-- `A094570(∑[n])+n*a(n-1)` -/
def P16611690397920312327.Spec : Prop :=
  ∀ n, P16611690397920312327.a n = A111139 n

end A111139

/-! ## A111139.P3546901884535211677

`n*a(n-1)+A001611(n)-1` with `a(0)=0`
-/

namespace A111139.P3546901884535211677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * a (n - 1) + (A001611 n - 1)

end

end A111139.P3546901884535211677

namespace A111139

/-- `n*a(n-1)+A001611(n)-1` -/
def P3546901884535211677.Spec : Prop :=
  ∀ n, P3546901884535211677.a n = A111139 n

end A111139

/-! ## A111139.P3585189534926400910

`A103609(2*n)+n*a(n-1)` with `a(0)=0`
-/

namespace A111139.P3585189534926400910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A103609 (2 * n) + (n : ℤ) * a (n - 1)

end

end A111139.P3585189534926400910

namespace A111139

/-- `A103609(2*n)+n*a(n-1)` -/
def P3585189534926400910.Spec : Prop :=
  ∀ n, P3585189534926400910.a n = A111139 n

end A111139

/-! ## A111139.P16743808740410001633

`n*a(n-1)+A002062(n)-n` with `a(0)=0, a(1)=1`
-/

namespace A111139.P16743808740410001633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) * a (n - 1) + (A002062 n - (n : ℤ))

end

end A111139.P16743808740410001633

namespace A111139

/-- `n*a(n-1)+A002062(n)-n` -/
def P16743808740410001633.Spec : Prop :=
  ∀ n, P16743808740410001633.a n = A111139 n

end A111139

/-! ## A111139.P11705336948560553370

`A277345(n)-2*A263823(n)`
-/

namespace A111139.P11705336948560553370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277345 n - 2 * A263823 n

end

end A111139.P11705336948560553370

namespace A111139

/-- `A277345(n)-2*A263823(n)` -/
def P11705336948560553370.Spec : Prop :=
  ∀ n, P11705336948560553370.a n = A111139 n

end A111139

/-! ## A111139.P11917417827881475703

`a(n-1)*A028310(n)+A157725(n)-2` with `a(0)=0`
-/

namespace A111139.P11917417827881475703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) * A028310 n + (A157725 n - 2)

end

end A111139.P11917417827881475703

namespace A111139

/-- `a(n-1)*A028310(n)+A157725(n)-2` -/
def P11917417827881475703.Spec : Prop :=
  ∀ n, P11917417827881475703.a n = A111139 n

end A111139

/-! ## A111139.P16785055131940883569

`∑[A000045(n)/A000142(n)]*A000142(n)`
-/

namespace A111139.P16785055131940883569
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / (A000142 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000142 n : ℚ)

end

end A111139.P16785055131940883569

namespace A111139

/-- `∑[A000045(n)/A000142(n)]*A000142(n)` -/
def P16785055131940883569.Spec : Prop :=
  ∀ n, P16785055131940883569.a n = (A111139 n : ℚ)

end A111139

/-!
# A111140: a(n) = (n!/(n+1))*Sum_{k=0..n} binomial(n+k-1,k)/k!.

The programs for A111140, there is no canonical definition to state claims against.
-/

/-! ## A111140.P6223905685159328495

`A130580(A132209(n))`
-/

namespace A111140.P6223905685159328495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130580 (A132209 n).toNat

end

end A111140.P6223905685159328495

/-! ## A111140.P17267025541073060530

`A285507(A294221(n))`
-/

namespace A111140.P17267025541073060530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285507 (A294221 n).toNat

end

end A111140.P17267025541073060530

/-!
# A111141: GCD(F(n),A113222(n)), where F(n) is n-th Fibonacci number.

The programs for A111141, the canonical program `A111141.P7448936264222878557` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111141 has offset 1).

The definition of A111141 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A111141.P7448936264222878557

`gcd(A000045(n+1), A113222(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111141

/-- `gcd(A000045(n+1), A113222(n+1))` -/
def P7448936264222878557.Spec : Prop :=
  ∀ n, (P7448936264222878557.a n : ℤ) = A111141 (n + 1)

theorem P7448936264222878557.correct : P7448936264222878557.Spec := by
  intro n
  simp only [A111141, Nat.add_sub_cancel]

end A111141

/-! ## A111141.P18151869347783687366

`gcd(A053538(∑[n]), A113222(n+1))`
-/

namespace A111141.P18151869347783687366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053538 (∑ j ∈ Finset.range (n + 1), f1 j)) (A113222 (n + 1))

end

end A111141.P18151869347783687366

namespace A111141

/-- `gcd(A053538(∑[n]), A113222(n+1))` -/
def P18151869347783687366.Spec : Prop :=
  ∀ n, (P18151869347783687366.a n : ℤ) = A111141 (n + 1)

end A111141

/-! ## A111141.P8312039363978430050

`gcd(A113222(n+1)², ∑[A212804(n)])`
-/

namespace A111141.P8312039363978430050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113222 (n + 1) ^ 2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111141.P8312039363978430050

namespace A111141

/-- `gcd(A113222(n+1)², ∑[A212804(n)])` -/
def P8312039363978430050.Spec : Prop :=
  ∀ n, (P8312039363978430050.a n : ℤ) = A111141 (n + 1)

end A111141

/-! ## A111141.P2347675396920025136

`A000045((n+1)^A222604(∑{e}[n+1, #]!/∏{e}[n+1, #!]))`
-/

namespace A111141.P2347675396920025136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A222604 (SequenceMachineLib.roundAway ((Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ))).toNat : ℤ))).toNat

end

end A111141.P2347675396920025136

namespace A111141

/-- `A000045((n+1)^A222604(∑{e}[n+1, #]!/∏{e}[n+1, #!]))` -/
def P2347675396920025136.Spec : Prop :=
  ∀ n, P2347675396920025136.a n = A111141 (n + 1)

end A111141

/-! ## A111141.P3248462123723881561

`A000045(A151620(n)+A100994(n+1))`
-/

namespace A111141.P3248462123723881561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A151620 n + A100994 (n + 1)).toNat

end

end A111141.P3248462123723881561

namespace A111141

/-- `A000045(A151620(n)+A100994(n+1))` -/
def P3248462123723881561.Spec : Prop :=
  ∀ n, P3248462123723881561.a n = A111141 (n + 1)

end A111141

/-!
# A111142: a(n) = gcd(n, A113222(n)), where A113222(n) = Sum_{p^e || n} F(p^e), each p^e the highest power of prime p dividing n (with e > 0), and F(k) is the k-th Fibonacci number.

The programs for A111142, the canonical program `A111142.P14739711800033483932` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111142 has offset 1).

The definition of A111142 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A111142.P14739711800033483932

`gcd(n+1, A113222(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111142

/-- `gcd(n+1, A113222(n+1))` -/
def P14739711800033483932.Spec : Prop :=
  ∀ n, (P14739711800033483932.a n : ℤ) = A111142 (n + 1)

theorem P14739711800033483932.correct : P14739711800033483932.Spec := by
  intro n
  simp only [A111142, Nat.add_sub_cancel]

end A111142

/-!
# A111143: Number of different ways of drawing chords in a circle of numbers from 1 to n such that the sums of the numbers on the two sides of the chord are equal.

The programs for A111143, there is no canonical definition to state claims against.
-/

/-! ## A111143.P12389264130814222284

`and(A005999(n+1), A225538(A219859(n)))`
-/

namespace A111143.P12389264130814222284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005999 (n + 1)) (A225538 (A219859 n).toNat)

end

end A111143.P12389264130814222284

/-! ## A111143.P17860237726211532730

`and(A091588(n+1), A374327(A237280(2*n+1)))`
-/

namespace A111143.P17860237726211532730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091588 (n + 1)) (A374327 (A237280 (2 * n + 1)).toNat)

end

end A111143.P17860237726211532730

/-! ## A111143.P13000269343357697346

`and(A001511(A325545(n)), A064225(n))`
-/

namespace A111143.P13000269343357697346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001511 (A325545 n).toNat) (A064225 n)

end

end A111143.P13000269343357697346

/-! ## A111143.P3012628272275377993

`and(A001511(A325545(n)), A080855(n))`
-/

namespace A111143.P3012628272275377993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001511 (A325545 n).toNat) (A080855 n)

end

end A111143.P3012628272275377993

/-! ## A111143.P6408189677504971177

`and(A020639(A301657(n+1)), A027052(n))`
-/

namespace A111143.P6408189677504971177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020639 (A301657 (n + 1)).toNat) (A027052 n)

end

end A111143.P6408189677504971177

/-!
# A111144: a(n) = n*(n+13)*(n+14)/6.

The programs for A111144, the canonical program `A111144.P12188021970188586673` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111144 has offset 0).

The definition of A111144 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+13)*(n+14)/6` (program `A111144.P17411201940953560875`, by `A111144.P17411201940953560875.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111144.P17411201940953560875

`n*(n+13)*(n+14)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A111144.P17411201940953560875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 13) * (n + 14) : ℚ) / 6

end

end A111144.P17411201940953560875

namespace A111144

/-- `n*(n+13)*(n+14)/6` -/
def P17411201940953560875.Spec : Prop :=
  ∀ n, P17411201940953560875.a n = (A111144 n : ℚ)

theorem P17411201940953560875.correct : P17411201940953560875.Spec := by
  intro n
  simp only [A111144, Nat.add_sub_cancel, A111144.P17411201940953560875.a, A111144.P12188021970188586673.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A111144

/-! ## A111144.P12188021970188586673

`A000292(n)+4*n²+30*n`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A111144

/-- `A000292(n)+4*n²+30*n` -/
def P12188021970188586673.Spec : Prop :=
  ∀ n, P12188021970188586673.a n = A111144 n

theorem P12188021970188586673.correct : P12188021970188586673.Spec := by
  intro n
  simp only [A111144]

end A111144

/-! ## A111144.P9709291733161236607

`record[C(n, 3)-(n-1)*2*n]`
-/

namespace A111144.P9709291733161236607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 3 : ℤ) - ((n : ℤ) - 1) * (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111144.P9709291733161236607

namespace A111144

/-- `record[C(n, 3)-(n-1)*2*n]` -/
def P9709291733161236607.Spec : Prop :=
  ∀ n, P9709291733161236607.a n = A111144 n

end A111144

/-! ## A111144.P12377835670130495112

`A264444(n)+A098848(n)`
-/

namespace A111144.P12377835670130495112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264444 n + A098848 n

end

end A111144.P12377835670130495112

namespace A111144

/-- `A264444(n)+A098848(n)` -/
def P12377835670130495112.Spec : Prop :=
  ∀ n, P12377835670130495112.a n = A111144 n

end A111144

/-! ## A111144.P5509174366013240291

`A264445(n)-A098603(n)`
-/

namespace A111144.P5509174366013240291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264445 n - A098603 n

end

end A111144.P5509174366013240291

namespace A111144

/-- `A264445(n)-A098603(n)` -/
def P5509174366013240291.Spec : Prop :=
  ∀ n, P5509174366013240291.a n = A111144 n

end A111144

/-! ## A111144.P371736398421858136

`A169937(n+1)/A169937(n)*A000292(n)`
-/

namespace A111144.P371736398421858136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169937 (n + 1) : ℚ) / (A169937 n : ℚ) * (A000292 n : ℚ)

end

end A111144.P371736398421858136

namespace A111144

/-- `A169937(n+1)/A169937(n)*A000292(n)` -/
def P371736398421858136.Spec : Prop :=
  ∀ n, P371736398421858136.a n = (A111144 n : ℚ)

end A111144

/-! ## A111144.P6732115763501620898

`record[∑[∑[n-5]+5]]`
-/

namespace A111144.P6732115763501620898
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111144.P6732115763501620898

namespace A111144

/-- `record[∑[∑[n-5]+5]]` -/
def P6732115763501620898.Spec : Prop :=
  ∀ n, P6732115763501620898.a n = A111144 n

end A111144

/-! ## A111144.P15965752652362887127

`record[A005900(n)-A002411(n+1)]+1`
-/

namespace A111144.P15965752652362887127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n - A002411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A111144.P15965752652362887127

namespace A111144

/-- `record[A005900(n)-A002411(n+1)]+1` -/
def P15965752652362887127.Spec : Prop :=
  ∀ n, P15965752652362887127.a n = A111144 n

end A111144

/-!
# A111145: Length of the Cunningham chain initiated by the n-th Sophie Germain prime.

The programs for A111145, there is no canonical definition to state claims against.
-/

/-! ## A111145.P1734507407326301119

`A181697(A072192(n+1))`
-/

namespace A111145.P1734507407326301119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181697 (A072192 (n + 1)).toNat

end

end A111145.P1734507407326301119

/-! ## A111145.P7589076645527161256

`A181697(lt[1, A181697(n+1)]+1)`
-/

namespace A111145.P7589076645527161256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181697 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A111145.P7589076645527161256

/-! ## A111145.P17993817806007857250

`A339579(A176045(n+1))`
-/

namespace A111145.P17993817806007857250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (A176045 (n + 1)).toNat

end

end A111145.P17993817806007857250

/-! ## A111145.P1365146192964357582

`A339579(A005384(n+1)+1)`
-/

namespace A111145.P1365146192964357582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (A005384 (n + 1) + 1).toNat

end

end A111145.P1365146192964357582

/-! ## A111145.P7283260318089867421

`A063377(A005384(n+1))`
-/

namespace A111145.P7283260318089867421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (A005384 (n + 1)).toNat

end

end A111145.P7283260318089867421

/-! ## A111145.P180281478623852285

`A063377(p?[A005097(n+1)])`
-/

namespace A111145.P180281478623852285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111145.P180281478623852285

/-! ## A111145.P10115577957347966952

`A063377(p?[A102781(n+1)])`
-/

namespace A111145.P10115577957347966952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111145.P10115577957347966952

/-! ## A111145.P2353189069559076437

`A063377(p?[A130290(n+1)])`
-/

namespace A111145.P2353189069559076437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111145.P2353189069559076437

/-! ## A111145.P166751514161048860

`A063377(A176045(n+1)-1)`
-/

namespace A111145.P166751514161048860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (A176045 (n + 1) - 1).toNat

end

end A111145.P166751514161048860

/-! ## A111145.P7495253873974242099

`A063377(p?[A006254(n+1)-1])`
-/

namespace A111145.P7495253873974242099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111145.P7495253873974242099

/-! ## A111145.P9247643392594373176

`A063377((A005385(n+1)-1)/2)`
-/

namespace A111145.P9247643392594373176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (SequenceMachineLib.roundAway ((A005385 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A111145.P9247643392594373176

/-! ## A111145.P6312618719061540925

`A063377(lt[1, A063377(n+1)]+1)`
-/

namespace A111145.P6312618719061540925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A111145.P6312618719061540925

/-! ## A111145.P17766722975958541976

`A063377(A005385(n+1))+1`
-/

namespace A111145.P17766722975958541976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (A005385 (n + 1)).toNat + 1

end

end A111145.P17766722975958541976

/-! ## A111145.P10152638268056365408

`A063377(p?[A072055(n+1)])+1`
-/

namespace A111145.P10152638268056365408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A111145.P10152638268056365408

/-! ## A111145.P1488882759245171031

`A063377(p?[n*A156659(2*n+1)])`
-/

namespace A111145.P1488882759245171031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A156659 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111145.P1488882759245171031

/-!
# A111146: Triangle T(n,k), read by rows, given by [0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, ...] DELTA [1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, ...] where DELTA is the operator defined in A084938.

The programs for A111146, there is no canonical definition to state claims against.
-/

/-! ## A111146.P17512355234894044999

`A091866(n)*A101211(A000672(n))`
-/

namespace A111146.P17512355234894044999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091866 n * A101211 (A000672 n).toNat

end

end A111146.P17512355234894044999

/-! ## A111146.P8721411886728551454

`A091866(n)*A351420(A102480(n))`
-/

namespace A111146.P8721411886728551454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091866 n * A351420 (A102480 n).toNat

end

end A111146.P8721411886728551454

/-! ## A111146.P230546650515601003

`(A334622(n)-A060576(A325013(n+1)))*A025581(n)!`
-/

namespace A111146.P230546650515601003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A334622 n - A060576 (A325013 (n + 1)).toNat) * (Nat.factorial (A025581 n).toNat : ℤ)

end

end A111146.P230546650515601003

/-! ## A111146.P7245424783802610150

`A283666(n+1)!*A091866(n)`
-/

namespace A111146.P7245424783802610150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A283666 (n + 1)).toNat : ℤ) * A091866 n

end

end A111146.P7245424783802610150

/-! ## A111146.P7839874662097741937

`A091866(n)*A287104(A142459(n+1))`
-/

namespace A111146.P7839874662097741937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091866 n * A287104 (A142459 (n + 1)).toNat

end

end A111146.P7839874662097741937

/-!
# A111147: Numbers k such that 5*k^2 + 1 is prime.

The programs for A111147, there is no canonical definition to state claims against.
-/

/-! ## A111147.P4373407658231656804

`6*A138218(n+1)`
-/

namespace A111147.P4373407658231656804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A138218 (n + 1)

end

end A111147.P4373407658231656804

/-! ## A111147.P16416938367570724464

`6*sqrt((A137530(n+1)-1)/180)`
-/

namespace A111147.P16416938367570724464
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  6 * Real.sqrt ((A137530 (n + 1) - 1 : ℚ) / 180 : ℝ)

end

end A111147.P16416938367570724464

/-! ## A111147.P6019134406486871969

`A016969(A138218(n+1)-1)+1`
-/

namespace A111147.P6019134406486871969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (A138218 (n + 1) - 1).toNat + 1

end

end A111147.P6019134406486871969

/-! ## A111147.P12481745657630359295

`A008458(A138218(n+1))`
-/

namespace A111147.P12481745657630359295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A138218 (n + 1)).toNat

end

end A111147.P12481745657630359295

/-! ## A111147.P8454796407154059031

`A008588(A138218(n+1)+A130706(n+4))`
-/

namespace A111147.P8454796407154059031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A138218 (n + 1) + A130706 (n + 4)).toNat

end

end A111147.P8454796407154059031

/-!
# A111148: Numbers k such that 5*k^2 + 4 is prime.

The programs for A111148, there is no canonical definition to state claims against.
-/

/-! ## A111148.P18154887183832514397

`floor(sqrt(A201483(n+1)/5))`
-/

namespace A111148.P18154887183832514397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A201483 (n + 1) : ℚ) / 5 : ℝ)⌋

end

end A111148.P18154887183832514397

/-! ## A111148.P931850738566375021

`A026741(round(sqrt(A201483(n+1)/5)))`
-/

namespace A111148.P931850738566375021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway (Real.sqrt ((A201483 (n + 1) : ℚ) / 5 : ℝ))).toNat

end

end A111148.P931850738566375021

/-! ## A111148.P12171067389509243253

`A190621(round(sqrt(A201483(n+1)/5)))`
-/

namespace A111148.P12171067389509243253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190621 (SequenceMachineLib.roundAway (Real.sqrt ((A201483 (n + 1) : ℚ) / 5 : ℝ))).toNat

end

end A111148.P12171067389509243253

/-! ## A111148.P16487487868131882460

`A022998(ceil(sqrt(A201483(n+1)/5))-1)`
-/

namespace A111148.P16487487868131882460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (⌈Real.sqrt ((A201483 (n + 1) : ℚ) / 5 : ℝ)⌉ - 1).toNat

end

end A111148.P16487487868131882460

/-! ## A111148.P10853997620954489542

`A026741(ceil(sqrt(A201483(n+1)/5))-1)`
-/

namespace A111148.P10853997620954489542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (⌈Real.sqrt ((A201483 (n + 1) : ℚ) / 5 : ℝ)⌉ - 1).toNat

end

end A111148.P10853997620954489542

/-! ## A111148.P3867139249656795789

`A004442(ceil(sqrt(A201483(n+1)/5))-2)`
-/

namespace A111148.P3867139249656795789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (⌈Real.sqrt ((A201483 (n + 1) : ℚ) / 5 : ℝ)⌉ - 2).toNat

end

end A111148.P3867139249656795789

/-!
# A111149: Numbers k such that 5*k^2 + 9 is prime.

The programs for A111149, there is no canonical definition to state claims against.
-/

/-! ## A111149.P11605136358563877914

`floor(sqrt(A201487(n+1)/5))`
-/

namespace A111149.P11605136358563877914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A201487 (n + 1) : ℚ) / 5 : ℝ)⌋

end

end A111149.P11605136358563877914

/-! ## A111149.P7266541319601313825

`round(sqrt(A201487(n+1)/5))%A017294(n)`
-/

namespace A111149.P7266541319601313825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt ((A201487 (n + 1) : ℚ) / 5 : ℝ))) (A017294 n)

end

end A111149.P7266541319601313825

/-! ## A111149.P532077978553808017

`round(sqrt(A201487(n+1)/5))+2%A006337(n+1)`
-/

namespace A111149.P532077978553808017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A201487 (n + 1) : ℚ) / 5 : ℝ)) + Int.tmod 2 (A006337 (n + 1))

end

end A111149.P532077978553808017

/-! ## A111149.P1546261117312070175

`round(A000007(n+1)+sqrt(A201487(n+1)/5))`
-/

namespace A111149.P1546261117312070175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000007 (n + 1) : ℝ) + Real.sqrt ((A201487 (n + 1) : ℚ) / 5 : ℝ))

end

end A111149.P1546261117312070175

/-! ## A111149.P16969355577989561650

`A004442(ceil(sqrt(A201487(n+1)/5)))`
-/

namespace A111149.P16969355577989561650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 ⌈Real.sqrt ((A201487 (n + 1) : ℚ) / 5 : ℝ)⌉.toNat

end

end A111149.P16969355577989561650

/-! ## A111149.P2479809629410724943

`-A001489(round(sqrt(A201487(n+1)/5)))`
-/

namespace A111149.P2479809629410724943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001489 (SequenceMachineLib.roundAway (Real.sqrt ((A201487 (n + 1) : ℚ) / 5 : ℝ))).toNat

end

end A111149.P2479809629410724943

/-!
# A111150: a(n) is the number of integers of the form (n+k)/|(n-k)| for k>0.

The programs for A111150, the canonical program `A111150.P16025781374777891923` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111150 has offset 1).

The definition of A111150 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111150.P16025781374777891923

`2*A000005(2*(n+1))-2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111150

/-- `2*A000005(2*(n+1))-2` -/
def P16025781374777891923.Spec : Prop :=
  ∀ n, P16025781374777891923.a n = A111150 (n + 1)

theorem P16025781374777891923.correct : P16025781374777891923.Spec := by
  intro n
  simp only [A111150, Nat.add_sub_cancel]

end A111150

/-! ## A111150.P6611918751498068141

`∑{d}[2*(n+1), 2%#²]`
-/

namespace A111150.P6611918751498068141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), 2 % d ^ 2

end

end A111150.P6611918751498068141

namespace A111150

/-- `∑{d}[2*(n+1), 2%#²]` -/
def P6611918751498068141.Spec : Prop :=
  ∀ n, (P6611918751498068141.a n : ℤ) = A111150 (n + 1)

end A111150

/-! ## A111150.P956730890357131480

`2*(∏{e}[2*(n+1), #+1]-1)`
-/

namespace A111150.P956730890357131480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - 1)

end

end A111150.P956730890357131480

namespace A111150

/-- `2*(∏{e}[2*(n+1), #+1]-1)` -/
def P956730890357131480.Spec : Prop :=
  ∀ n, P956730890357131480.a n = A111150 (n + 1)

end A111150

/-! ## A111150.P4166324647802733252

`Δ[2*A113241(n)]`
-/

namespace A111150.P4166324647802733252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111150.P4166324647802733252

namespace A111150

/-- `Δ[2*A113241(n)]` -/
def P4166324647802733252.Spec : Prop :=
  ∀ n, P4166324647802733252.a n = A111150 (n + 1)

end A111150

/-! ## A111150.P4065402376744132645

`2*A066660(n+1)`
-/

namespace A111150.P4065402376744132645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066660 (n + 1)

end

end A111150.P4065402376744132645

namespace A111150

/-- `2*A066660(n+1)` -/
def P4065402376744132645.Spec : Prop :=
  ∀ n, P4065402376744132645.a n = A111150 (n + 1)

end A111150

/-! ## A111150.P9454609133330601009

`2*(A069930(n+1)+1)`
-/

namespace A111150.P9454609133330601009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A069930 (n + 1) + 1)

end

end A111150.P9454609133330601009

namespace A111150

/-- `2*(A069930(n+1)+1)` -/
def P9454609133330601009.Spec : Prop :=
  ∀ n, P9454609133330601009.a n = A111150 (n + 1)

end A111150

/-! ## A111150.P11968153931226301805

`2*(A099777(n+1)-1)`
-/

namespace A111150.P11968153931226301805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A099777 (n + 1) - 1)

end

end A111150.P11968153931226301805

namespace A111150

/-- `2*(A099777(n+1)-1)` -/
def P11968153931226301805.Spec : Prop :=
  ∀ n, P11968153931226301805.a n = A111150 (n + 1)

end A111150

/-! ## A111150.P534882236905322984

`∑{d}[n+1, A040003(#-1)]`
-/

namespace A111150.P534882236905322984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A040003 (d - 1)

end

end A111150.P534882236905322984

namespace A111150

/-- `∑{d}[n+1, A040003(#-1)]` -/
def P534882236905322984.Spec : Prop :=
  ∀ n, P534882236905322984.a n = A111150 (n + 1)

end A111150

/-! ## A111150.P10149077818973789279

`2*(n+1-A234306(n+1))`
-/

namespace A111150.P10149077818973789279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) - A234306 (n + 1))

end

end A111150.P10149077818973789279

namespace A111150

/-- `2*(n+1-A234306(n+1))` -/
def P10149077818973789279.Spec : Prop :=
  ∀ n, P10149077818973789279.a n = A111150 (n + 1)

end A111150

/-! ## A111150.P9226612034128033988

`A004277(∏{e}[2*(n+1), #+1])-2`
-/

namespace A111150.P9226612034128033988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) - 2

end

end A111150.P9226612034128033988

namespace A111150

/-- `A004277(∏{e}[2*(n+1), #+1])-2` -/
def P9226612034128033988.Spec : Prop :=
  ∀ n, P9226612034128033988.a n = A111150 (n + 1)

end A111150

/-! ## A111150.P5184457478360703015

`A004277(A066660(n+1))`
-/

namespace A111150.P5184457478360703015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A066660 (n + 1)).toNat

end

end A111150.P5184457478360703015

namespace A111150

/-- `A004277(A066660(n+1))` -/
def P5184457478360703015.Spec : Prop :=
  ∀ n, P5184457478360703015.a n = A111150 (n + 1)

end A111150

/-! ## A111150.P7618860893630431808

`A004275(A099777(n+1))`
-/

namespace A111150.P7618860893630431808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A099777 (n + 1)).toNat

end

end A111150.P7618860893630431808

namespace A111150

/-- `A004275(A099777(n+1))` -/
def P7618860893630431808.Spec : Prop :=
  ∀ n, P7618860893630431808.a n = A111150 (n + 1)

end A111150

/-! ## A111150.P6001288234708253122

`A004275(A000005(2*(n+1)))`
-/

namespace A111150.P6001288234708253122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A000005 (2 * (n + 1))).toNat

end

end A111150.P6001288234708253122

namespace A111150

/-- `A004275(A000005(2*(n+1)))` -/
def P6001288234708253122.Spec : Prop :=
  ∀ n, P6001288234708253122.a n = A111150 (n + 1)

end A111150

/-! ## A111150.P6326095807997478419

`A023444(2*A099777(n+1))`
-/

namespace A111150.P6326095807997478419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (2 * A099777 (n + 1)).toNat

end

end A111150.P6326095807997478419

namespace A111150

/-- `A023444(2*A099777(n+1))` -/
def P6326095807997478419.Spec : Prop :=
  ∀ n, P6326095807997478419.a n = A111150 (n + 1)

end A111150

/-! ## A111150.P14859567801020402131

`A302707(n)+A000005(n+1)`
-/

namespace A111150.P14859567801020402131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302707 n + A000005 (n + 1)

end

end A111150.P14859567801020402131

namespace A111150

/-- `A302707(n)+A000005(n+1)` -/
def P14859567801020402131.Spec : Prop :=
  ∀ n, P14859567801020402131.a n = A111150 (n + 1)

end A111150

/-! ## A111150.P15203101107704974258

`A004277(A000005(2*(n+1))-1)`
-/

namespace A111150.P15203101107704974258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A000005 (2 * (n + 1)) - 1).toNat

end

end A111150.P15203101107704974258

namespace A111150

/-- `A004277(A000005(2*(n+1))-1)` -/
def P15203101107704974258.Spec : Prop :=
  ∀ n, P15203101107704974258.a n = A111150 (n + 1)

end A111150

/-! ## A111150.P8807421421613508377

`A005843(A000005(2*(n+1))-1)`
-/

namespace A111150.P8807421421613508377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A000005 (2 * (n + 1)) - 1).toNat

end

end A111150.P8807421421613508377

namespace A111150

/-- `A005843(A000005(2*(n+1))-1)` -/
def P8807421421613508377.Spec : Prop :=
  ∀ n, P8807421421613508377.a n = A111150 (n + 1)

end A111150

/-! ## A111150.P6326719126137642770

`A004273(A000005(2*n+2))-1`
-/

namespace A111150.P6326719126137642770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A000005 (2 * n + 2)).toNat - 1

end

end A111150.P6326719126137642770

namespace A111150

/-- `A004273(A000005(2*n+2))-1` -/
def P6326719126137642770.Spec : Prop :=
  ∀ n, P6326719126137642770.a n = A111150 (n + 1)

end A111150

/-!
# A111151: Numbers not of the form a^2 + b^3 + c^4 + d^5 for a,b,c,d >= 0.

The programs for A111151, there is no canonical definition to state claims against.
-/

/-! ## A111151.P1300982483008509741

`eq[0, A135911(n)]`
-/

namespace A111151.P1300982483008509741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135911 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111151.P1300982483008509741

/-!
# A111153: Sophie Germain semiprimes: semiprimes n such that 2n+1 is also a semiprime.

The programs for A111153, the canonical program `A111153.P7065658790053420494` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111153 has offset 1).

The definition of A111153 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A176896, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A111153.P7065658790053420494

`(A176896(n+1)-1)/2`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A111153

/-- `(A176896(n+1)-1)/2` -/
def P7065658790053420494.Spec : Prop :=
  ∀ n, P7065658790053420494.a n = (A111153 (n + 1) : ℚ)

end A111153

/-! ## A111153.P2254169710529436463

`∪[A175255(n+1), A177221(n+1)]`
-/

namespace A111153.P2254169710529436463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111153.P2254169710529436463

namespace A111153

/-- `∪[A175255(n+1), A177221(n+1)]` -/
def P2254169710529436463.Spec : Prop :=
  ∀ n, (P2254169710529436463.a n : ℤ) = A111153 (n + 1)

end A111153

/-! ## A111153.P854185198728619590

`filter[A117360(n+1), A064911(#)]`
-/

namespace A111153.P854185198728619590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A111153.P854185198728619590

namespace A111153

/-- `filter[A117360(n+1), A064911(#)]` -/
def P854185198728619590.Spec : Prop :=
  ∀ n, P854185198728619590.a n = A111153 (n + 1)

end A111153

/-! ## A111153.P9943739211940841005

`∩[A001358(n+1), A117360(n+1)]`
-/

namespace A111153.P9943739211940841005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111153.P9943739211940841005

namespace A111153

/-- `∩[A001358(n+1), A117360(n+1)]` -/
def P9943739211940841005.Spec : Prop :=
  ∀ n, (P9943739211940841005.a n : ℤ) = A111153 (n + 1)

end A111153

/-! ## A111153.P9074515735046073881

`∩[A117360(n+1), A176540(n+1)]`
-/

namespace A111153.P9074515735046073881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111153.P9074515735046073881

namespace A111153

/-- `∩[A117360(n+1), A176540(n+1)]` -/
def P9074515735046073881.Spec : Prop :=
  ∀ n, (P9074515735046073881.a n : ℤ) = A111153 (n + 1)

end A111153

/-! ## A111153.P13819636801857204502

`floor(A176896(n+1)/2)`
-/

namespace A111153.P13819636801857204502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A176896 (n + 1) : ℚ) / 2⌋

end

end A111153.P13819636801857204502

namespace A111153

/-- `floor(A176896(n+1)/2)` -/
def P13819636801857204502.Spec : Prop :=
  ∀ n, P13819636801857204502.a n = A111153 (n + 1)

end A111153

/-! ## A111153.P2791869117996878606

`eq[A064911(2*n+1), A306229(A226378(n))]`
-/

namespace A111153.P2791869117996878606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306229 (A226378 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111153.P2791869117996878606

namespace A111153

/-- `eq[A064911(2*n+1), A306229(A226378(n))]` -/
def P2791869117996878606.Spec : Prop :=
  ∀ n, (P2791869117996878606.a n : ℤ) = A111153 (n + 1)

end A111153

/-! ## A111153.P9498386747101198065

`eq[A226378(n), A273163(A061142(2*n+1))]`
-/

namespace A111153.P9498386747101198065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273163 (A061142 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111153.P9498386747101198065

namespace A111153

/-- `eq[A226378(n), A273163(A061142(2*n+1))]` -/
def P9498386747101198065.Spec : Prop :=
  ∀ n, (P9498386747101198065.a n : ℤ) = A111153 (n + 1)

end A111153

/-! ## A111153.P7211179900088844504

`A004524(A176896(n+1))`
-/

namespace A111153.P7211179900088844504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A176896 (n + 1)).toNat

end

end A111153.P7211179900088844504

namespace A111153

/-- `A004524(A176896(n+1))` -/
def P7211179900088844504.Spec : Prop :=
  ∀ n, P7211179900088844504.a n = A111153 (n + 1)

end A111153

/-! ## A111153.P12771479675383489374

`A004526(A176896(n+1)-1)`
-/

namespace A111153.P12771479675383489374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A176896 (n + 1) - 1).toNat

end

end A111153.P12771479675383489374

namespace A111153

/-- `A004526(A176896(n+1)-1)` -/
def P12771479675383489374.Spec : Prop :=
  ∀ n, P12771479675383489374.a n = A111153 (n + 1)

end A111153

/-! ## A111153.P8450645481256217271

`A025480(A176896(n+1)-1)`
-/

namespace A111153.P8450645481256217271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A176896 (n + 1) - 1).toNat

end

end A111153.P8450645481256217271

namespace A111153

/-- `A025480(A176896(n+1)-1)` -/
def P8450645481256217271.Spec : Prop :=
  ∀ n, P8450645481256217271.a n = A111153 (n + 1)

end A111153

/-! ## A111153.P3853026428313542660

`A032742(A176896(n+1)-1)`
-/

namespace A111153.P3853026428313542660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A176896 (n + 1) - 1).toNat

end

end A111153.P3853026428313542660

namespace A111153

/-- `A032742(A176896(n+1)-1)` -/
def P3853026428313542660.Spec : Prop :=
  ∀ n, P3853026428313542660.a n = A111153 (n + 1)

end A111153

/-! ## A111153.P1547058362289493590

`A060681(A176896(n+1)-1)`
-/

namespace A111153.P1547058362289493590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A176896 (n + 1) - 1).toNat

end

end A111153.P1547058362289493590

namespace A111153

/-- `A060681(A176896(n+1)-1)` -/
def P1547058362289493590.Spec : Prop :=
  ∀ n, P1547058362289493590.a n = A111153 (n + 1)

end A111153

/-! ## A111153.P16643127557593054441

`A008619(A176896(n+1)-2)`
-/

namespace A111153.P16643127557593054441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A176896 (n + 1) - 2).toNat

end

end A111153.P16643127557593054441

namespace A111153

/-- `A008619(A176896(n+1)-2)` -/
def P16643127557593054441.Spec : Prop :=
  ∀ n, P16643127557593054441.a n = A111153 (n + 1)

end A111153

/-! ## A111153.P8483489700454491288

`A057979(A176896(n+1)+2)-1`
-/

namespace A111153.P8483489700454491288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A176896 (n + 1) + 2).toNat - 1

end

end A111153.P8483489700454491288

namespace A111153

/-- `A057979(A176896(n+1)+2)-1` -/
def P8483489700454491288.Spec : Prop :=
  ∀ n, P8483489700454491288.a n = A111153 (n + 1)

end A111153

/-! ## A111153.P2176092177190341538

`A004526(A176896((n²+n)/(n+1)+1))`
-/

namespace A111153.P2176092177190341538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A176896 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / (n + 1 : ℚ) + 1)).toNat).toNat

end

end A111153.P2176092177190341538

namespace A111153

/-- `A004526(A176896((n²+n)/(n+1)+1))` -/
def P2176092177190341538.Spec : Prop :=
  ∀ n, P2176092177190341538.a n = A111153 (n + 1)

end A111153

/-! ## A111153.P2633745344630229252

`eq[A202107(A109824(2*n+1)), A226378(n)]`
-/

namespace A111153.P2633745344630229252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202107 (A109824 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111153.P2633745344630229252

namespace A111153

/-- `eq[A202107(A109824(2*n+1)), A226378(n)]` -/
def P2633745344630229252.Spec : Prop :=
  ∀ n, (P2633745344630229252.a n : ℤ) = A111153 (n + 1)

end A111153

/-! ## A111153.P18184682015416220613

`∩[A001358(n+1), A080513(A176406(n+1)-1)]`
-/

namespace A111153.P18184682015416220613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A176406 (n + 1) - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111153.P18184682015416220613

namespace A111153

/-- `∩[A001358(n+1), A080513(A176406(n+1)-1)]` -/
def P18184682015416220613.Spec : Prop :=
  ∀ n, (P18184682015416220613.a n : ℤ) = A111153 (n + 1)

end A111153

/-! ## A111153.P17423649948033776049

`A004526(∩[A075818(n+1), A088707(n+1)-2])`
-/

namespace A111153.P17423649948033776049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A111153.P17423649948033776049

namespace A111153

/-- `A004526(∩[A075818(n+1), A088707(n+1)-2])` -/
def P17423649948033776049.Spec : Prop :=
  ∀ n, P17423649948033776049.a n = A111153 (n + 1)

end A111153

/-!
# A111154: a(n) = sum(k=0,n,B_k*A000629(k)*A000629(n-k)) where B_k is the k-th Bernoulli number.

The programs for A111154, there is no canonical definition to state claims against.
-/

/-! ## A111154.P2534090534021937538

`A088506(n)+A059851(A088501(n))`
-/

namespace A111154.P2534090534021937538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088506 n + A059851 (A088501 n).toNat

end

end A111154.P2534090534021937538

/-! ## A111154.P8663587660517000253

`or(A154958(A141625(n)), A162509(n))`
-/

namespace A111154.P8663587660517000253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A154958 (A141625 n).toNat) (A162509 n)

end

end A111154.P8663587660517000253

/-!
# A111156: Numbers that look the same when printed upside down.

The programs for A111156, there is no canonical definition to state claims against.
-/

/-! ## A111156.P13602542887738651681

`∩[A000787(n+1), A001743(n+1)]`
-/

namespace A111156.P13602542887738651681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111156.P13602542887738651681

/-! ## A111156.P374316881845851462

`∩[A001743(n+1), A018846(n+1)]`
-/

namespace A111156.P374316881845851462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111156.P374316881845851462

/-! ## A111156.P17746989537575989693

`∩[A001743(n+1), A051791(n+1)]`
-/

namespace A111156.P17746989537575989693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111156.P17746989537575989693

/-! ## A111156.P5555368692817198266

`∩[A000787(n+1), A001744(n+1)]`
-/

namespace A111156.P5555368692817198266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111156.P5555368692817198266

/-! ## A111156.P4836319007133431639

`∩[A001744(n+1), A018846(n+1)]`
-/

namespace A111156.P4836319007133431639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111156.P4836319007133431639

/-! ## A111156.P12708354670659382199

`∩[A001744(n+1), A051791(n+1)]`
-/

namespace A111156.P12708354670659382199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111156.P12708354670659382199

/-! ## A111156.P13676726772915740005

`∩[A000787(n+1), A072960(n+1)]`
-/

namespace A111156.P13676726772915740005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111156.P13676726772915740005

/-! ## A111156.P1185780293316838527

`∩[A018846(n+1), A072960(n+1)]`
-/

namespace A111156.P1185780293316838527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111156.P1185780293316838527

/-! ## A111156.P210584936903673953

`∩[A051791(n+1), A072960(n+1)]`
-/

namespace A111156.P210584936903673953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111156.P210584936903673953

/-!
# A111159: Numbers k such that A111075(k) is odd.

The programs for A111159, the canonical program `A111159.P278081500121415465` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111159 has offset 1).

The definition of A111159 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111159.P278081500121415465

`eq[A087507(n), A235872(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A111159

/-- `eq[A087507(n), A235872(n+1)]+1` -/
def P278081500121415465.Spec : Prop :=
  ∀ n, (P278081500121415465.a n : ℤ) = A111159 (n + 1)

theorem P278081500121415465.correct : P278081500121415465.Spec := by
  intro n
  simp only [A111159, Nat.add_sub_cancel]

end A111159

/-! ## A111159.P1413015717335020772

`eq[A010052(n), A324904(A008576(n))]`
-/

namespace A111159.P1413015717335020772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324904 (A008576 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111159.P1413015717335020772

namespace A111159

/-- `eq[A010052(n), A324904(A008576(n))]` -/
def P1413015717335020772.Spec : Prop :=
  ∀ n, (P1413015717335020772.a n : ℤ) = A111159 (n + 1)

end A111159

/-! ## A111159.P2895990054691190081

`eq[A028601(n), A258277(A122857(n))]`
-/

namespace A111159.P2895990054691190081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258277 (A122857 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111159.P2895990054691190081

namespace A111159

/-- `eq[A028601(n), A258277(A122857(n))]` -/
def P2895990054691190081.Spec : Prop :=
  ∀ n, (P2895990054691190081.a n : ℤ) = A111159 (n + 1)

end A111159

/-! ## A111159.P7149802051982783627

`eq[A089798(n), A292377(A257174(n))]`
-/

namespace A111159.P7149802051982783627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089798 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292377 (A257174 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111159.P7149802051982783627

namespace A111159

/-- `eq[A089798(n), A292377(A257174(n))]` -/
def P7149802051982783627.Spec : Prop :=
  ∀ n, (P7149802051982783627.a n : ℤ) = A111159 (n + 1)

end A111159

/-! ## A111159.P5889538034783762240

`eq[A089807(n)+1, A093709(3*n)]`
-/

namespace A111159.P5889538034783762240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089807 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111159.P5889538034783762240

namespace A111159

/-- `eq[A089807(n)+1, A093709(3*n)]` -/
def P5889538034783762240.Spec : Prop :=
  ∀ n, (P5889538034783762240.a n : ℤ) = A111159 (n + 1)

end A111159

/-!
# A111160: G.f.: C - Z; where C is the g.f. for the Catalan numbers (A000108) and Z is the g.f. for A055113 with offset 0.

The programs for A111160, there is no canonical definition to state claims against.
-/

/-! ## A111160.P6619888557954826387

`A000108(n)-A055113(n+1)`
-/

namespace A111160.P6619888557954826387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A055113 (n + 1)

end

end A111160.P6619888557954826387

/-! ## A111160.P16258429999179950107

`A306668(n+1)+A055113(n+1)`
-/

namespace A111160.P16258429999179950107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306668 (n + 1) + A055113 (n + 1)

end

end A111160.P16258429999179950107

/-! ## A111160.P15864973779504516808

`A126120(2*n)-A055113(n+1)`
-/

namespace A111160.P15864973779504516808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n) - A055113 (n + 1)

end

end A111160.P15864973779504516808

/-! ## A111160.P6549026056163143885

`A089408(2*n+1)-A055113(n+1)`
-/

namespace A111160.P6549026056163143885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (2 * n + 1) - A055113 (n + 1)

end

end A111160.P6549026056163143885

/-! ## A111160.P788336290585149569

`A097331(2*n+1)-A055113(n+1)`
-/

namespace A111160.P788336290585149569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (2 * n + 1) - A055113 (n + 1)

end

end A111160.P788336290585149569

/-! ## A111160.P2896993926048451428

`A000108(n)-A055113(n)-Δ[A055113(n)]`
-/

namespace A111160.P2896993926048451428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A055113 n - (f1 (n + 1) - f1 n)

end

end A111160.P2896993926048451428

/-! ## A111160.P16592003841365699577

`A346380(n+1)+A187430(n)-A055113(n+1)`
-/

namespace A111160.P16592003841365699577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346380 (n + 1) + (A187430 n - A055113 (n + 1))

end

end A111160.P16592003841365699577

/-!
# A111162: a(n)=sum_{k=0...n-1}B_k*A000364(k)*binomial(n,k) where B_k is the k-th Bernoulli number.

The programs for A111162, there is no canonical definition to state claims against.
-/

/-! ## A111162.P16730955355215181898

`A339648(n+1)-A339628(A079781(n+1))`
-/

namespace A111162.P16730955355215181898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339648 (n + 1) - A339628 (A079781 (n + 1)).toNat

end

end A111162.P16730955355215181898

/-!
# A111163: Triangular numbers that are sums of two consecutive primes.

The programs for A111163, there is no canonical definition to state claims against.
-/

/-! ## A111163.P14373436922440281970

`A000217(floor(2*sqrt(A225077(n+1))))`
-/

namespace A111163.P14373436922440281970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ⌊2 * Real.sqrt (A225077 (n + 1) : ℝ)⌋.toNat

end

end A111163.P14373436922440281970

/-! ## A111163.P13010934415429517543

`A014494(floor(sqrt(A225077(n+1))))`
-/

namespace A111163.P13010934415429517543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014494 (Int.sqrt (A225077 (n + 1))).toNat

end

end A111163.P13010934415429517543

/-! ## A111163.P17914181168005217028

`∩[A001043(n+1), ∑[n]]`
-/

namespace A111163.P17914181168005217028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A111163.P17914181168005217028

/-! ## A111163.P8847564117320921412

`∩[A000217(n), A001043(n+1)]`
-/

namespace A111163.P8847564117320921412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111163.P8847564117320921412

/-! ## A111163.P7582085874285555077

`∩[A011974(n+1), A000217(n)]`
-/

namespace A111163.P7582085874285555077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111163.P7582085874285555077

/-! ## A111163.P12851380189632785302

`∩[A014494(n), A001043(n+1)]`
-/

namespace A111163.P12851380189632785302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014494 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111163.P12851380189632785302

/-! ## A111163.P18275730947388676143

`∩[A011974(n+1), A014494(n)]`
-/

namespace A111163.P18275730947388676143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111163.P18275730947388676143

/-! ## A111163.P10963231837751709041

`∩[A164653(n+1), A014494(n)]`
-/

namespace A111163.P10963231837751709041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111163.P10963231837751709041

/-! ## A111163.P16389610345685559344

`∩[A253145(n), A001043(n+1)]`
-/

namespace A111163.P16389610345685559344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111163.P16389610345685559344

/-! ## A111163.P8127541922630969527

`∩[A011974(n+1), A253145(n)]`
-/

namespace A111163.P8127541922630969527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111163.P8127541922630969527

/-!
# A111164: Number of distinct integers of the form (n+k)/|(n-k)| for k > 0.

The programs for A111164, there is no canonical definition to state claims against.
-/

/-! ## A111164.P1002090527480042327

`A001221(A143438(3*n))+A000005(2*(n+1))`
-/

namespace A111164.P1002090527480042327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A143438 (3 * n)).toNat + A000005 (2 * (n + 1))

end

end A111164.P1002090527480042327

/-! ## A111164.P6546120006054036319

`A099777(n+1)+A001221(A148185(n))`
-/

namespace A111164.P6546120006054036319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (n + 1) + A001221 (A148185 n).toNat

end

end A111164.P6546120006054036319

/-! ## A111164.P12062235204080360301

`A328391(A000105(n))+A133304(n+1)`
-/

namespace A111164.P12062235204080360301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328391 (A000105 n).toNat + A133304 (n + 1)

end

end A111164.P12062235204080360301

/-! ## A111164.P9701265603649980001

`A001222(A161219(n+1)*A327474(n))`
-/

namespace A111164.P9701265603649980001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A161219 (n + 1) * A327474 n).toNat

end

end A111164.P9701265603649980001

/-! ## A111164.P3069019853524264350

`A001221(A148185(n))+A000005(2*(n+1))`
-/

namespace A111164.P3069019853524264350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A148185 n).toNat + A000005 (2 * (n + 1))

end

end A111164.P3069019853524264350

/-!
# A111165: Let qf(a,q) = Product(1-a*q^j,j=0..infinity); g.f. is qf(q,q^3)/qf(q^2,q^3).

The programs for A111165, there is no canonical definition to state claims against.
-/

/-! ## A111165.P4060194302304996020

`Δ[A088431(A022115(n)-A299701(n+1))]`
-/

namespace A111165.P4060194302304996020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088431 (A022115 n - A299701 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111165.P4060194302304996020

/-!
# A111166: Let p < q be consecutive primes; p is in the sequence if p/(q-p) is a record.

The programs for A111166, the canonical program `A111166.P17158937779735735824` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111166 has offset 1).

The definition of A111166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111166.P15501612216003965050

`A001359(n+1)-floor(acot(n))`
-/

namespace A111166.P15501612216003965050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A111166.P15501612216003965050

namespace A111166

/-- `A001359(n+1)-floor(acot(n))` -/
def P15501612216003965050.Spec : Prop :=
  ∀ n, P15501612216003965050.a n = A111166 (n + 1)

end A111166

/-! ## A111166.P17158937779735735824

`A053319(n)+a(n-1)` with `a(0)=2, a(1)=5`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A111166

/-- `A053319(n)+a(n-1)` -/
def P17158937779735735824.Spec : Prop :=
  ∀ n, P17158937779735735824.a n = A111166 (n + 1)

theorem P17158937779735735824.correct : P17158937779735735824.Spec := by
  intro n
  simp only [A111166, Nat.add_sub_cancel]

end A111166

/-! ## A111166.P5829334333732738067

`A001359(n%a(n-1)+1)` with `a(0)=2`
-/

namespace A111166.P5829334333732738067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001359 (Int.tmod (n : ℤ) (a (n - 1)) + 1).toNat

end

end A111166.P5829334333732738067

namespace A111166

/-- `A001359(n%a(n-1)+1)` -/
def P5829334333732738067.Spec : Prop :=
  ∀ n, P5829334333732738067.a n = A111166 (n + 1)

end A111166

/-! ## A111166.P13243448115432357947

`A001359(C(n, a(n-1))+n+1)` with `a(0)=2`
-/

namespace A111166.P13243448115432357947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001359 (Nat.choose n (a (n - 1)).toNat + n + 1)

end

end A111166.P13243448115432357947

namespace A111166

/-- `A001359(C(n, a(n-1))+n+1)` -/
def P13243448115432357947.Spec : Prop :=
  ∀ n, P13243448115432357947.a n = A111166 (n + 1)

end A111166

/-! ## A111166.P4120717147491415209

`A014574(n+1)-gcd(n², a(∑[n]%n))` with `a(0)=2`
-/

namespace A111166.P4120717147491415209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A014574 (n + 1) - (Int.gcd (n ^ 2 : ℤ) (a ((∑ j ∈ Finset.range (n + 1), f1 j) % n)) : ℤ)

end

end A111166.P4120717147491415209

namespace A111166

/-- `A014574(n+1)-gcd(n², a(∑[n]%n))` -/
def P4120717147491415209.Spec : Prop :=
  ∀ n, P4120717147491415209.a n = A111166 (n + 1)

end A111166

/-! ## A111166.P14788860327505983313

`A144834(n+1)+A057427(n)`
-/

namespace A111166.P14788860327505983313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (n + 1) + A057427 n

end

end A111166.P14788860327505983313

namespace A111166

/-- `A144834(n+1)+A057427(n)` -/
def P14788860327505983313.Spec : Prop :=
  ∀ n, P14788860327505983313.a n = A111166 (n + 1)

end A111166

/-! ## A111166.P5544493330517560920

`A001359(n+1)-A000007(n)`
-/

namespace A111166.P5544493330517560920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) - A000007 n

end

end A111166.P5544493330517560920

namespace A111166

/-- `A001359(n+1)-A000007(n)` -/
def P5544493330517560920.Spec : Prop :=
  ∀ n, P5544493330517560920.a n = A111166 (n + 1)

end A111166

/-! ## A111166.P391313787577677811

`A014574(n+1)-A054977(n)`
-/

namespace A111166.P391313787577677811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) - A054977 n

end

end A111166.P391313787577677811

namespace A111166

/-- `A014574(n+1)-A054977(n)` -/
def P391313787577677811.Spec : Prop :=
  ∀ n, P391313787577677811.a n = A111166 (n + 1)

end A111166

/-! ## A111166.P15363483254400362420

`A144834(n+1)-A057428(n)`
-/

namespace A111166.P15363483254400362420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (n + 1) - A057428 n

end

end A111166.P15363483254400362420

namespace A111166

/-- `A144834(n+1)-A057428(n)` -/
def P15363483254400362420.Spec : Prop :=
  ∀ n, P15363483254400362420.a n = A111166 (n + 1)

end A111166

/-! ## A111166.P3216922137450820104

`∪[A001359(n+2), A061351(n)]`
-/

namespace A111166.P3216922137450820104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111166.P3216922137450820104

namespace A111166

/-- `∪[A001359(n+2), A061351(n)]` -/
def P3216922137450820104.Spec : Prop :=
  ∀ n, (P3216922137450820104.a n : ℤ) = A111166 (n + 1)

end A111166

/-! ## A111166.P10394879041984269882

`∪[A061368(n+2), A061351(n)]`
-/

namespace A111166.P10394879041984269882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061368 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111166.P10394879041984269882

namespace A111166

/-- `∪[A061368(n+2), A061351(n)]` -/
def P10394879041984269882.Spec : Prop :=
  ∀ n, (P10394879041984269882.a n : ℤ) = A111166 (n + 1)

end A111166

/-! ## A111166.P12693175806316299103

`A001359(n+1)+A057427(n)-1`
-/

namespace A111166.P12693175806316299103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + (A057427 n - 1)

end

end A111166.P12693175806316299103

namespace A111166

/-- `A001359(n+1)+A057427(n)-1` -/
def P12693175806316299103.Spec : Prop :=
  ∀ n, P12693175806316299103.a n = A111166 (n + 1)

end A111166

/-! ## A111166.P4538913165846120216

`A001359(n+1)-(A028310(n)-n)`
-/

namespace A111166.P4538913165846120216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) - (A028310 n - (n : ℤ))

end

end A111166.P4538913165846120216

namespace A111166

/-- `A001359(n+1)-(A028310(n)-n)` -/
def P4538913165846120216.Spec : Prop :=
  ∀ n, P4538913165846120216.a n = A111166 (n + 1)

end A111166

/-! ## A111166.P1416554681547333347

`A129950(2*(n+1))+A001359(n+1)`
-/

namespace A111166.P1416554681547333347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129950 (2 * (n + 1)) + A001359 (n + 1)

end

end A111166.P1416554681547333347

namespace A111166

/-- `A129950(2*(n+1))+A001359(n+1)` -/
def P1416554681547333347.Spec : Prop :=
  ∀ n, P1416554681547333347.a n = A111166 (n + 1)

end A111166

/-! ## A111166.P6184388186014712997

`A001359(n+1)-A010051(2*(n+1))`
-/

namespace A111166.P6184388186014712997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) - A010051 (2 * (n + 1))

end

end A111166.P6184388186014712997

namespace A111166

/-- `A001359(n+1)-A010051(2*(n+1))` -/
def P6184388186014712997.Spec : Prop :=
  ∀ n, P6184388186014712997.a n = A111166 (n + 1)

end A111166

/-! ## A111166.P6685528196036269353

`A001359(n+1)-A074038(2*(n+1))`
-/

namespace A111166.P6685528196036269353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) - A074038 (2 * (n + 1))

end

end A111166.P6685528196036269353

namespace A111166

/-- `A001359(n+1)-A074038(2*(n+1))` -/
def P6685528196036269353.Spec : Prop :=
  ∀ n, P6685528196036269353.a n = A111166 (n + 1)

end A111166

/-! ## A111166.P3918618176153194492

`A001359(n+1)-A096500(2*n+1)`
-/

namespace A111166.P3918618176153194492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) - A096500 (2 * n + 1)

end

end A111166.P3918618176153194492

namespace A111166

/-- `A001359(n+1)-A096500(2*n+1)` -/
def P3918618176153194492.Spec : Prop :=
  ∀ n, P3918618176153194492.a n = A111166 (n + 1)

end A111166

/-! ## A111166.P3297850969681376698

`A001359(n+1)-A109578(2*n+1)`
-/

namespace A111166.P3297850969681376698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) - A109578 (2 * n + 1)

end

end A111166.P3297850969681376698

namespace A111166

/-- `A001359(n+1)-A109578(2*n+1)` -/
def P3297850969681376698.Spec : Prop :=
  ∀ n, P3297850969681376698.a n = A111166 (n + 1)

end A111166

/-! ## A111166.P11024294856903206303

`A006512(n+1)-A256262(2*(n+1))`
-/

namespace A111166.P11024294856903206303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - A256262 (2 * (n + 1))

end

end A111166.P11024294856903206303

namespace A111166

/-- `A006512(n+1)-A256262(2*(n+1))` -/
def P11024294856903206303.Spec : Prop :=
  ∀ n, P11024294856903206303.a n = A111166 (n + 1)

end A111166

/-! ## A111166.P1530829313999313321

`A001359(n+1)-A332219(2*(n+1))`
-/

namespace A111166.P1530829313999313321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) - A332219 (2 * (n + 1))

end

end A111166.P1530829313999313321

namespace A111166

/-- `A001359(n+1)-A332219(2*(n+1))` -/
def P1530829313999313321.Spec : Prop :=
  ∀ n, P1530829313999313321.a n = A111166 (n + 1)

end A111166

/-!
# A111167: Numbers appearing in metronome marks of music pieces, denoting beats per minute to indicate the tempo of the piece.

The programs for A111167, there is no canonical definition to state claims against.
-/

/-! ## A111167.P9457591498339646543

`lt[A106920(A353866(n+1)+1), A017668(n+1)]`
-/

namespace A111167.P9457591498339646543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106920 (A353866 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017668 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111167.P9457591498339646543

/-! ## A111167.P9736156457045329402

`lt[A317719(n+1), A317578(n+3)]`
-/

namespace A111167.P9736156457045329402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317578 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111167.P9736156457045329402

/-! ## A111167.P15411344965901429811

`lt[A317388(n+3), A317578(n+3)+18]`
-/

namespace A111167.P15411344965901429811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317388 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317578 (n + 3) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111167.P15411344965901429811

/-! ## A111167.P6223353900595015228

`∩[A256408(2*n+5)-7, A256409(n+1)]`
-/

namespace A111167.P6223353900595015228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256408 (2 * n + 5) - 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111167.P6223353900595015228

/-!
# A111168: Semiprimes n such that 2*n - 1 is also a semiprime.

The programs for A111168, the canonical program `A111168.P12807260106703258116` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111168 has offset 1).

The definition of A111168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5124 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111168.P12807260106703258116

`filter[A114455(n+1), A064911(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A111168

/-- `filter[A114455(n+1), A064911(#)]` -/
def P12807260106703258116.Spec : Prop :=
  ∀ n, P12807260106703258116.a n = A111168 (n + 1)

theorem P12807260106703258116.correct : P12807260106703258116.Spec := by
  intro n
  simp only [A111168, Nat.add_sub_cancel]

end A111168

/-! ## A111168.P10709351600534333814

`filter[A114455(n+1), A065043(#)]`
-/

namespace A111168.P10709351600534333814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A111168.P10709351600534333814

namespace A111168

/-- `filter[A114455(n+1), A065043(#)]` -/
def P10709351600534333814.Spec : Prop :=
  ∀ n, P10709351600534333814.a n = A111168 (n + 1)

end A111168

/-! ## A111168.P17904786397708348512

`filter[A114455(n+1), A359370(#)]`
-/

namespace A111168.P17904786397708348512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359370 (f1 j).toNat = 1) n)

end

end A111168.P17904786397708348512

namespace A111168

/-- `filter[A114455(n+1), A359370(#)]` -/
def P17904786397708348512.Spec : Prop :=
  ∀ n, P17904786397708348512.a n = A111168 (n + 1)

end A111168

/-! ## A111168.P13498613818388691190

`filter[A114455(n+1), A359764(#)]`
-/

namespace A111168.P13498613818388691190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A111168.P13498613818388691190

namespace A111168

/-- `filter[A114455(n+1), A359764(#)]` -/
def P13498613818388691190.Spec : Prop :=
  ∀ n, P13498613818388691190.a n = A111168 (n + 1)

end A111168

/-! ## A111168.P1020033511018587656

`∩[A001358(n+1), A114455(n+1)]`
-/

namespace A111168.P1020033511018587656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111168.P1020033511018587656

namespace A111168

/-- `∩[A001358(n+1), A114455(n+1)]` -/
def P1020033511018587656.Spec : Prop :=
  ∀ n, (P1020033511018587656.a n : ℤ) = A111168 (n + 1)

end A111168

/-! ## A111168.P17954705973751682244

`∩[A114455(n+1), A176540(n+1)]`
-/

namespace A111168.P17954705973751682244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111168.P17954705973751682244

namespace A111168

/-- `∩[A114455(n+1), A176540(n+1)]` -/
def P17954705973751682244.Spec : Prop :=
  ∀ n, (P17954705973751682244.a n : ℤ) = A111168 (n + 1)

end A111168

/-! ## A111168.P17973145382761781169

`∩[A085155(n+1), A114455(n+1)]`
-/

namespace A111168.P17973145382761781169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111168.P17973145382761781169

namespace A111168

/-- `∩[A085155(n+1), A114455(n+1)]` -/
def P17973145382761781169.Spec : Prop :=
  ∀ n, (P17973145382761781169.a n : ℤ) = A111168 (n + 1)

end A111168

/-! ## A111168.P9697051054809091073

`∩[A114455(n+1), A359371(n+1)]`
-/

namespace A111168.P9697051054809091073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111168.P9697051054809091073

namespace A111168

/-- `∩[A114455(n+1), A359371(n+1)]` -/
def P9697051054809091073.Spec : Prop :=
  ∀ n, (P9697051054809091073.a n : ℤ) = A111168 (n + 1)

end A111168

/-! ## A111168.P4212860298535419053

`∩[A114455(n+1), A359765(n+1)]`
-/

namespace A111168.P4212860298535419053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111168.P4212860298535419053

namespace A111168

/-- `∩[A114455(n+1), A359765(n+1)]` -/
def P4212860298535419053.Spec : Prop :=
  ∀ n, (P4212860298535419053.a n : ℤ) = A111168 (n + 1)

end A111168

/-! ## A111168.P5935423456699322017

`∩[A114455(n+1), A320912(n+1)]`
-/

namespace A111168.P5935423456699322017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111168.P5935423456699322017

namespace A111168

/-- `∩[A114455(n+1), A320912(n+1)]` -/
def P5935423456699322017.Spec : Prop :=
  ∀ n, (P5935423456699322017.a n : ℤ) = A111168 (n + 1)

end A111168

/-! ## A111168.P18293646574012077432

`∩[A075818(n+1), A088707(n+1)]/2`
-/

namespace A111168.P18293646574012077432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A111168.P18293646574012077432

namespace A111168

/-- `∩[A075818(n+1), A088707(n+1)]/2` -/
def P18293646574012077432.Spec : Prop :=
  ∀ n, P18293646574012077432.a n = (A111168 (n + 1) : ℚ)

end A111168

/-! ## A111168.P10472713002407334114

`∩[A028260(n+1), A114455(n+1)]`
-/

namespace A111168.P10472713002407334114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111168.P10472713002407334114

namespace A111168

/-- `∩[A028260(n+1), A114455(n+1)]` -/
def P10472713002407334114.Spec : Prop :=
  ∀ n, (P10472713002407334114.a n : ℤ) = A111168 (n + 1)

end A111168

/-! ## A111168.P12025837744947796207

`∩[A114455(n+1), A347450(n+1)]`
-/

namespace A111168.P12025837744947796207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111168.P12025837744947796207

namespace A111168

/-- `∩[A114455(n+1), A347450(n+1)]` -/
def P12025837744947796207.Spec : Prop :=
  ∀ n, (P12025837744947796207.a n : ℤ) = A111168 (n + 1)

end A111168

/-! ## A111168.P8168787674265789940

`eq[A193511(n+1), A340101(n)]+1`
-/

namespace A111168.P8168787674265789940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340101 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A111168.P8168787674265789940

namespace A111168

/-- `eq[A193511(n+1), A340101(n)]+1` -/
def P8168787674265789940.Spec : Prop :=
  ∀ n, (P8168787674265789940.a n : ℤ) = A111168 (n + 1)

end A111168

/-! ## A111168.P9179019466064488086

`∩[A001358(n+1), A080513(A176406(n+1))]`
-/

namespace A111168.P9179019466064488086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A176406 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111168.P9179019466064488086

namespace A111168

/-- `∩[A001358(n+1), A080513(A176406(n+1))]` -/
def P9179019466064488086.Spec : Prop :=
  ∀ n, (P9179019466064488086.a n : ℤ) = A111168 (n + 1)

end A111168

/-! ## A111168.P11701416578532456288

`record[A025480(A109067(n+2))]`
-/

namespace A111168.P11701416578532456288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A109067 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111168.P11701416578532456288

namespace A111168

/-- `record[A025480(A109067(n+2))]` -/
def P11701416578532456288.Spec : Prop :=
  ∀ n, P11701416578532456288.a n = A111168 (n + 1)

end A111168

/-! ## A111168.P8565411617513070283

`A004526(∩[A075818(n+1), A088707(n+1)])`
-/

namespace A111168.P8565411617513070283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A111168.P8565411617513070283

namespace A111168

/-- `A004526(∩[A075818(n+1), A088707(n+1)])` -/
def P8565411617513070283.Spec : Prop :=
  ∀ n, P8565411617513070283.a n = A111168 (n + 1)

end A111168

/-! ## A111168.P17218779253600521554

`eq[A001055(n+1), A291539(A001055(2*n+1))]+1`
-/

namespace A111168.P17218779253600521554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291539 (A001055 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A111168.P17218779253600521554

namespace A111168

/-- `eq[A001055(n+1), A291539(A001055(2*n+1))]+1` -/
def P17218779253600521554.Spec : Prop :=
  ∀ n, (P17218779253600521554.a n : ℤ) = A111168 (n + 1)

end A111168

/-! ## A111168.P15692994414800029431

`A000720(p?[A207790(A109067(n+1))])`
-/

namespace A111168.P15692994414800029431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (A109067 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111168.P15692994414800029431

namespace A111168

/-- `A000720(p?[A207790(A109067(n+1))])` -/
def P15692994414800029431.Spec : Prop :=
  ∀ n, P15692994414800029431.a n = A111168 (n + 1)

end A111168

/-!
# A111169: Number of top simplices in a minimal triangulation of the permutohedron.

The programs for A111169, there is no canonical definition to state claims against.
-/

/-! ## A111169.P522948302106877924

`A072894((2*n+1)^(n-1))`
-/

namespace A111169.P522948302106877924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072894 (SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A111169.P522948302106877924

/-!
# A111170: Semiprimes S such that 3*S + 1 is also a semiprime.

The programs for A111170, the canonical program `A111170.P2484275121003489882` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111170 has offset 1).

The definition of A111170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111170.P5863557436043445684

`filter[A271909(n+2), A374128(#)]`
-/

namespace A111170.P5863557436043445684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271909 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A111170.P5863557436043445684

namespace A111170

/-- `filter[A271909(n+2), A374128(#)]` -/
def P5863557436043445684.Spec : Prop :=
  ∀ n, P5863557436043445684.a n = A111170 (n + 1)

end A111170

/-! ## A111170.P15752238963966796330

`∩[A001358(n+1), A271909(n+1)]`
-/

namespace A111170.P15752238963966796330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111170.P15752238963966796330

namespace A111170

/-- `∩[A001358(n+1), A271909(n+1)]` -/
def P15752238963966796330.Spec : Prop :=
  ∀ n, (P15752238963966796330.a n : ℤ) = A111170 (n + 1)

end A111170

/-! ## A111170.P16590736240491029153

`filter[A271909(n+1), A064911(#)]`
-/

namespace A111170.P16590736240491029153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271909 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A111170.P16590736240491029153

namespace A111170

/-- `filter[A271909(n+1), A064911(#)]` -/
def P16590736240491029153.Spec : Prop :=
  ∀ n, P16590736240491029153.a n = A111170 (n + 1)

end A111170

/-! ## A111170.P2566282902106892205

`filter[A271909(n+1), A280710(#)]`
-/

namespace A111170.P2566282902106892205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271909 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A111170.P2566282902106892205

namespace A111170

/-- `filter[A271909(n+1), A280710(#)]` -/
def P2566282902106892205.Spec : Prop :=
  ∀ n, P2566282902106892205.a n = A111170 (n + 1)

end A111170

/-! ## A111170.P12380347056475560657

`filter[A271909(n+2), A101040(#)]`
-/

namespace A111170.P12380347056475560657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271909 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A111170.P12380347056475560657

namespace A111170

/-- `filter[A271909(n+2), A101040(#)]` -/
def P12380347056475560657.Spec : Prop :=
  ∀ n, P12380347056475560657.a n = A111170 (n + 1)

end A111170

/-! ## A111170.P9341301148689237455

`filter[A271909(n+2), A353471(#)]`
-/

namespace A111170.P9341301148689237455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271909 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A111170.P9341301148689237455

namespace A111170

/-- `filter[A271909(n+2), A353471(#)]` -/
def P9341301148689237455.Spec : Prop :=
  ∀ n, P9341301148689237455.a n = A111170 (n + 1)

end A111170

/-! ## A111170.P13827495150961682101

`∩[A006881(n+1), A271909(n+1)]`
-/

namespace A111170.P13827495150961682101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111170.P13827495150961682101

namespace A111170

/-- `∩[A006881(n+1), A271909(n+1)]` -/
def P13827495150961682101.Spec : Prop :=
  ∀ n, (P13827495150961682101.a n : ℤ) = A111170 (n + 1)

end A111170

/-! ## A111170.P2484275121003489882

`∩[A161918(n+1), A271909(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A111170

/-- `∩[A161918(n+1), A271909(n+1)]` -/
def P2484275121003489882.Spec : Prop :=
  ∀ n, (P2484275121003489882.a n : ℤ) = A111170 (n + 1)

theorem P2484275121003489882.correct : P2484275121003489882.Spec := by
  intro n
  simp only [A111170, Nat.add_sub_cancel]

end A111170

/-! ## A111170.P4823250692107041612

`∩[A176540(n+1), A271909(n+1)]`
-/

namespace A111170.P4823250692107041612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111170.P4823250692107041612

namespace A111170

/-- `∩[A176540(n+1), A271909(n+1)]` -/
def P4823250692107041612.Spec : Prop :=
  ∀ n, (P4823250692107041612.a n : ℤ) = A111170 (n + 1)

end A111170

/-! ## A111170.P9515211833528279848

`eq[A077462(n), A165872(3*n+1)]`
-/

namespace A111170.P9515211833528279848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165872 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111170.P9515211833528279848

namespace A111170

/-- `eq[A077462(n), A165872(3*n+1)]` -/
def P9515211833528279848.Spec : Prop :=
  ∀ n, (P9515211833528279848.a n : ℤ) = A111170 (n + 1)

end A111170

/-! ## A111170.P10612363454569760307

`eq[A077462(n), A226177(3*n+1)]`
-/

namespace A111170.P10612363454569760307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226177 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111170.P10612363454569760307

namespace A111170

/-- `eq[A077462(n), A226177(3*n+1)]` -/
def P10612363454569760307.Spec : Prop :=
  ∀ n, (P10612363454569760307.a n : ℤ) = A111170 (n + 1)

end A111170

/-!
# A111171: Semiprimes S such that 3*S - 1 is also a semiprime.

The programs for A111171, the canonical program `A111171.P4309389729909289048` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111171 has offset 1).

The definition of A111171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111171.P9625903357308049595

`filter[A114441(n+1), A064911(#)]`
-/

namespace A111171.P9625903357308049595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A111171.P9625903357308049595

namespace A111171

/-- `filter[A114441(n+1), A064911(#)]` -/
def P9625903357308049595.Spec : Prop :=
  ∀ n, P9625903357308049595.a n = A111171 (n + 1)

end A111171

/-! ## A111171.P4234419974199576412

`filter[A114441(n+1), A065043(#)]`
-/

namespace A111171.P4234419974199576412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A111171.P4234419974199576412

namespace A111171

/-- `filter[A114441(n+1), A065043(#)]` -/
def P4234419974199576412.Spec : Prop :=
  ∀ n, P4234419974199576412.a n = A111171 (n + 1)

end A111171

/-! ## A111171.P4309389729909289048

`filter[A114441(n+1), A359370(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A111171

/-- `filter[A114441(n+1), A359370(#)]` -/
def P4309389729909289048.Spec : Prop :=
  ∀ n, P4309389729909289048.a n = A111171 (n + 1)

theorem P4309389729909289048.correct : P4309389729909289048.Spec := by
  intro n
  simp only [A111171, Nat.add_sub_cancel]

end A111171

/-! ## A111171.P15321261664490115732

`filter[A114441(n+1), A359764(#)]`
-/

namespace A111171.P15321261664490115732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A111171.P15321261664490115732

namespace A111171

/-- `filter[A114441(n+1), A359764(#)]` -/
def P15321261664490115732.Spec : Prop :=
  ∀ n, P15321261664490115732.a n = A111171 (n + 1)

end A111171

/-! ## A111171.P7628273292561287343

`∩[A001358(n+1), A114441(n+1)]`
-/

namespace A111171.P7628273292561287343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111171.P7628273292561287343

namespace A111171

/-- `∩[A001358(n+1), A114441(n+1)]` -/
def P7628273292561287343.Spec : Prop :=
  ∀ n, (P7628273292561287343.a n : ℤ) = A111171 (n + 1)

end A111171

/-! ## A111171.P12684225802928996412

`∩[A028260(n+1), A114441(n+1)]`
-/

namespace A111171.P12684225802928996412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111171.P12684225802928996412

namespace A111171

/-- `∩[A028260(n+1), A114441(n+1)]` -/
def P12684225802928996412.Spec : Prop :=
  ∀ n, (P12684225802928996412.a n : ℤ) = A111171 (n + 1)

end A111171

/-! ## A111171.P2694473144516037363

`∩[A085155(n+1), A114441(n+1)]`
-/

namespace A111171.P2694473144516037363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111171.P2694473144516037363

namespace A111171

/-- `∩[A085155(n+1), A114441(n+1)]` -/
def P2694473144516037363.Spec : Prop :=
  ∀ n, (P2694473144516037363.a n : ℤ) = A111171 (n + 1)

end A111171

/-! ## A111171.P18140029707753564141

`∩[A114441(n+1), A176540(n+1)]`
-/

namespace A111171.P18140029707753564141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111171.P18140029707753564141

namespace A111171

/-- `∩[A114441(n+1), A176540(n+1)]` -/
def P18140029707753564141.Spec : Prop :=
  ∀ n, (P18140029707753564141.a n : ℤ) = A111171 (n + 1)

end A111171

/-! ## A111171.P1647006363651606689

`∩[A114441(n+1), A320912(n+1)]`
-/

namespace A111171.P1647006363651606689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111171.P1647006363651606689

namespace A111171

/-- `∩[A114441(n+1), A320912(n+1)]` -/
def P1647006363651606689.Spec : Prop :=
  ∀ n, (P1647006363651606689.a n : ℤ) = A111171 (n + 1)

end A111171

/-! ## A111171.P6788441723823495104

`∩[A114441(n+1), A339424(n+1)]`
-/

namespace A111171.P6788441723823495104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111171.P6788441723823495104

namespace A111171

/-- `∩[A114441(n+1), A339424(n+1)]` -/
def P6788441723823495104.Spec : Prop :=
  ∀ n, (P6788441723823495104.a n : ℤ) = A111171 (n + 1)

end A111171

/-! ## A111171.P16461947323769015040

`∩[A114441(n+1), A359371(n+1)]`
-/

namespace A111171.P16461947323769015040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111171.P16461947323769015040

namespace A111171

/-- `∩[A114441(n+1), A359371(n+1)]` -/
def P16461947323769015040.Spec : Prop :=
  ∀ n, (P16461947323769015040.a n : ℤ) = A111171 (n + 1)

end A111171

/-! ## A111171.P16426194245636488553

`∩[A114441(n+1), A359765(n+1)]`
-/

namespace A111171.P16426194245636488553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111171.P16426194245636488553

namespace A111171

/-- `∩[A114441(n+1), A359765(n+1)]` -/
def P16426194245636488553.Spec : Prop :=
  ∀ n, (P16426194245636488553.a n : ℤ) = A111171 (n + 1)

end A111171

/-! ## A111171.P17297592572457884337

`eq[A001055(n+1), A319683(3*n+2)]+1`
-/

namespace A111171.P17297592572457884337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319683 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A111171.P17297592572457884337

namespace A111171

/-- `eq[A001055(n+1), A319683(3*n+2)]+1` -/
def P17297592572457884337.Spec : Prop :=
  ∀ n, (P17297592572457884337.a n : ℤ) = A111171 (n + 1)

end A111171

/-! ## A111171.P8641258356782669395

`A065475(eq[A033273(n+1), A051709(3*n+2)])`
-/

namespace A111171.P8641258356782669395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A111171.P8641258356782669395

namespace A111171

/-- `A065475(eq[A033273(n+1), A051709(3*n+2)])` -/
def P8641258356782669395.Spec : Prop :=
  ∀ n, P8641258356782669395.a n = A111171 (n + 1)

end A111171

/-! ## A111171.P8892336145054669401

`A065475(eq[A034836(n+1), A051709(3*n+2)])`
-/

namespace A111171.P8892336145054669401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A111171.P8892336145054669401

namespace A111171

/-- `A065475(eq[A034836(n+1), A051709(3*n+2)])` -/
def P8892336145054669401.Spec : Prop :=
  ∀ n, P8892336145054669401.a n = A111171 (n + 1)

end A111171

/-! ## A111171.P10687794744115605222

`record[-A166711(A109067(n+1))]`
-/

namespace A111171.P10687794744115605222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A166711 (A109067 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111171.P10687794744115605222

namespace A111171

/-- `record[-A166711(A109067(n+1))]` -/
def P10687794744115605222.Spec : Prop :=
  ∀ n, P10687794744115605222.a n = A111171 (n + 1)

end A111171

/-! ## A111171.P11029173585801682090

`A065475(eq[A033273(n+1), A293813(3*n+2)])`
-/

namespace A111171.P11029173585801682090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293813 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A111171.P11029173585801682090

namespace A111171

/-- `A065475(eq[A033273(n+1), A293813(3*n+2)])` -/
def P11029173585801682090.Spec : Prop :=
  ∀ n, P11029173585801682090.a n = A111171 (n + 1)

end A111171

/-! ## A111171.P140637747567085522

`A065475(eq[A034836(n+1), A293813(3*n+2)])`
-/

namespace A111171.P140637747567085522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293813 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A111171.P140637747567085522

namespace A111171

/-- `A065475(eq[A034836(n+1), A293813(3*n+2)])` -/
def P140637747567085522.Spec : Prop :=
  ∀ n, P140637747567085522.a n = A111171 (n + 1)

end A111171

/-!
# A111173: Sophie Germain triprimes: k and 2k + 1 are both the product of 3 primes, not necessarily distinct.

The programs for A111173, the canonical program `A111173.P12652697078364604929` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111173 has offset 1).

The definition of A111173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2705 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111173.P12652697078364604929

`∩[A014612(n+1), A117360(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A111173

/-- `∩[A014612(n+1), A117360(n+1)]` -/
def P12652697078364604929.Spec : Prop :=
  ∀ n, (P12652697078364604929.a n : ℤ) = A111173 (n + 1)

theorem P12652697078364604929.correct : P12652697078364604929.Spec := by
  intro n
  simp only [A111173, Nat.add_sub_cancel]

end A111173

/-! ## A111173.P5585925873844092055

`∩[A117360(n+1), A358763(n+1)]`
-/

namespace A111173.P5585925873844092055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111173.P5585925873844092055

namespace A111173

/-- `∩[A117360(n+1), A358763(n+1)]` -/
def P5585925873844092055.Spec : Prop :=
  ∀ n, (P5585925873844092055.a n : ℤ) = A111173 (n + 1)

end A111173

/-! ## A111173.P8518771556422727996

`filter[A117360(n+1), A101605(#)]`
-/

namespace A111173.P8518771556422727996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A111173.P8518771556422727996

namespace A111173

/-- `filter[A117360(n+1), A101605(#)]` -/
def P8518771556422727996.Spec : Prop :=
  ∀ n, P8518771556422727996.a n = A111173 (n + 1)

end A111173

/-! ## A111173.P9208948034277589369

`∩[A165712(a(n-1)), A117360(n+1)]` with `a(0)=1, a(1)=8`
-/

namespace A111173.P9208948034277589369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  A165712 (f1 (n - 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111173.P9208948034277589369

namespace A111173

/-- `∩[A165712(a(n-1)), A117360(n+1)]` -/
def P9208948034277589369.Spec : Prop :=
  ∀ n, (P9208948034277589369.a n : ℤ) = A111173 (n + 1)

end A111173

/-! ## A111173.P18271752269512405503

`eq[A001222(A008574(2*n)), A130675(2*n+1)]`
-/

namespace A111173.P18271752269512405503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008574 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130675 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111173.P18271752269512405503

namespace A111173

/-- `eq[A001222(A008574(2*n)), A130675(2*n+1)]` -/
def P18271752269512405503.Spec : Prop :=
  ∀ n, (P18271752269512405503.a n : ℤ) = A111173 (n + 1)

end A111173

/-!
# A111174: Numbers k such that 24*k + 1 is prime.

The programs for A111174, the canonical program `A111174.P7465970347081750572` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111174 has offset 1).

The definition of A111174 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9732 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111174.P7465970347081750572

`floor(p?[a(n-1)+24]/24)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111174

/-- `floor(p?[a(n-1)+24]/24)` -/
def P7465970347081750572.Spec : Prop :=
  ∀ n, P7465970347081750572.a n = A111174 (n + 1)

theorem P7465970347081750572.correct : P7465970347081750572.Spec := by
  intro n
  simp only [A111174, Nat.add_sub_cancel]

end A111174

/-! ## A111174.P5380760881656241160

`round(p?[a(n-1)+24]/24)` with `a(0)=1`
-/

namespace A111174.P5380760881656241160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 24)

end

end A111174.P5380760881656241160

namespace A111174

/-- `round(p?[a(n-1)+24]/24)` -/
def P5380760881656241160.Spec : Prop :=
  ∀ n, P5380760881656241160.a n = A111174 (n + 1)

end A111174

/-! ## A111174.P9617727049001163146

`comp[A153384(n+1)]`
-/

namespace A111174.P9617727049001163146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A111174.P9617727049001163146

namespace A111174

/-- `comp[A153384(n+1)]` -/
def P9617727049001163146.Spec : Prop :=
  ∀ n, (P9617727049001163146.a n : ℤ) = A111174 (n + 1)

end A111174

/-! ## A111174.P796206420398517950

`eq[2, ∏{e}[4*6*n+1, #+1]]`
-/

namespace A111174.P796206420398517950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (6 * n) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111174.P796206420398517950

namespace A111174

/-- `eq[2, ∏{e}[4*6*n+1, #+1]]` -/
def P796206420398517950.Spec : Prop :=
  ∀ n, (P796206420398517950.a n : ℤ) = A111174 (n + 1)

end A111174

/-! ## A111174.P7781792253541912225

`eq[1, A001222(24*n+1)]`
-/

namespace A111174.P7781792253541912225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (24 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111174.P7781792253541912225

namespace A111174

/-- `eq[1, A001222(24*n+1)]` -/
def P7781792253541912225.Spec : Prop :=
  ∀ n, (P7781792253541912225.a n : ℤ) = A111174 (n + 1)

end A111174

/-! ## A111174.P10274232584102648415

`eq[2, A000005(24*n+1)]`
-/

namespace A111174.P10274232584102648415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (24 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111174.P10274232584102648415

namespace A111174

/-- `eq[2, A000005(24*n+1)]` -/
def P10274232584102648415.Spec : Prop :=
  ∀ n, (P10274232584102648415.a n : ℤ) = A111174 (n + 1)

end A111174

/-! ## A111174.P4593339919868225646

`eq[1, A010051(A103214(n))]`
-/

namespace A111174.P4593339919868225646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A103214 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111174.P4593339919868225646

namespace A111174

/-- `eq[1, A010051(A103214(n))]` -/
def P4593339919868225646.Spec : Prop :=
  ∀ n, (P4593339919868225646.a n : ℤ) = A111174 (n + 1)

end A111174

/-! ## A111174.P16837064999955618319

`lt[A017305(n), A020639(A103214(n))]`
-/

namespace A111174.P16837064999955618319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A103214 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111174.P16837064999955618319

namespace A111174

/-- `lt[A017305(n), A020639(A103214(n))]` -/
def P16837064999955618319.Spec : Prop :=
  ∀ n, (P16837064999955618319.a n : ℤ) = A111174 (n + 1)

end A111174

/-! ## A111174.P4748307058549218627

`lt[A017329(n), A020639(A103214(n))]`
-/

namespace A111174.P4748307058549218627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A103214 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111174.P4748307058549218627

namespace A111174

/-- `lt[A017329(n), A020639(A103214(n))]` -/
def P4748307058549218627.Spec : Prop :=
  ∀ n, (P4748307058549218627.a n : ℤ) = A111174 (n + 1)

end A111174

/-! ## A111174.P9756217222135982093

`lt[A103208(n+1), A020639(A103214(n))]`
-/

namespace A111174.P9756217222135982093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A103214 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111174.P9756217222135982093

namespace A111174

/-- `lt[A103208(n+1), A020639(A103214(n))]` -/
def P9756217222135982093.Spec : Prop :=
  ∀ n, (P9756217222135982093.a n : ℤ) = A111174 (n + 1)

end A111174

/-! ## A111174.P1712834996094120582

`lt[A103246(n+1), A020639(A103214(n))]`
-/

namespace A111174.P1712834996094120582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A103214 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111174.P1712834996094120582

namespace A111174

/-- `lt[A103246(n+1), A020639(A103214(n))]` -/
def P1712834996094120582.Spec : Prop :=
  ∀ n, (P1712834996094120582.a n : ℤ) = A111174 (n + 1)

end A111174

/-! ## A111174.P15338141003589146230

`lt[A103215(n+2), A020639(A103214(n))]`
-/

namespace A111174.P15338141003589146230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103215 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A103214 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111174.P15338141003589146230

namespace A111174

/-- `lt[A103215(n+2), A020639(A103214(n))]` -/
def P15338141003589146230.Spec : Prop :=
  ∀ n, (P15338141003589146230.a n : ℤ) = A111174 (n + 1)

end A111174

/-! ## A111174.P2456841089368659176

`lt[A016933(n), A020639(A017533(2*n))]`
-/

namespace A111174.P2456841089368659176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017533 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111174.P2456841089368659176

namespace A111174

/-- `lt[A016933(n), A020639(A017533(2*n))]` -/
def P2456841089368659176.Spec : Prop :=
  ∀ n, (P2456841089368659176.a n : ℤ) = A111174 (n + 1)

end A111174

/-! ## A111174.P7207769251250448686

`lt[A016945(n), A020639(A017533(2*n))]`
-/

namespace A111174.P7207769251250448686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017533 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111174.P7207769251250448686

namespace A111174

/-- `lt[A016945(n), A020639(A017533(2*n))]` -/
def P7207769251250448686.Spec : Prop :=
  ∀ n, (P7207769251250448686.a n : ℤ) = A111174 (n + 1)

end A111174

/-! ## A111174.P401887019533352757

`lt[A016957(n), A020639(A017533(2*n))]`
-/

namespace A111174.P401887019533352757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017533 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111174.P401887019533352757

namespace A111174

/-- `lt[A016957(n), A020639(A017533(2*n))]` -/
def P401887019533352757.Spec : Prop :=
  ∀ n, (P401887019533352757.a n : ℤ) = A111174 (n + 1)

end A111174

/-! ## A111174.P17244805821806043829

`lt[A017293(n), A020639(A017533(2*n))]`
-/

namespace A111174.P17244805821806043829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017533 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111174.P17244805821806043829

namespace A111174

/-- `lt[A017293(n), A020639(A017533(2*n))]` -/
def P17244805821806043829.Spec : Prop :=
  ∀ n, (P17244805821806043829.a n : ℤ) = A111174 (n + 1)

end A111174

/-! ## A111174.P8900513268734916893

`lt[A017533(n), A020639(A017533(2*n))]`
-/

namespace A111174.P8900513268734916893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017533 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111174.P8900513268734916893

namespace A111174

/-- `lt[A017533(n), A020639(A017533(2*n))]` -/
def P8900513268734916893.Spec : Prop :=
  ∀ n, (P8900513268734916893.a n : ℤ) = A111174 (n + 1)

end A111174

/-! ## A111174.P1420796656261592915

`eq[2, A278223(A017533(n))]`
-/

namespace A111174.P1420796656261592915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (A017533 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111174.P1420796656261592915

namespace A111174

/-- `eq[2, A278223(A017533(n))]` -/
def P1420796656261592915.Spec : Prop :=
  ∀ n, (P1420796656261592915.a n : ℤ) = A111174 (n + 1)

end A111174

/-! ## A111174.P9522286415006665328

`eq[2, A035218(2*A103214(n))]`
-/

namespace A111174.P9522286415006665328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (2 * A103214 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111174.P9522286415006665328

namespace A111174

/-- `eq[2, A035218(2*A103214(n))]` -/
def P9522286415006665328.Spec : Prop :=
  ∀ n, (P9522286415006665328.a n : ℤ) = A111174 (n + 1)

end A111174

/-! ## A111174.P4858936958789346730

`A051712(A107008(n+1))`
-/

namespace A111174.P4858936958789346730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051712 (A107008 (n + 1)).toNat

end

end A111174.P4858936958789346730

namespace A111174

/-- `A051712(A107008(n+1))` -/
def P4858936958789346730.Spec : Prop :=
  ∀ n, P4858936958789346730.a n = A111174 (n + 1)

end A111174

/-!
# A111175: Numbers k such that 30*k + 1 is prime.

The programs for A111175, the canonical program `A111175.P12766162240952230038` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111175 has offset 1).

The definition of A111175 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132230, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A111175.P12766162240952230038

`floor(A132230(n+1)/30)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A111175

/-- `floor(A132230(n+1)/30)` -/
def P12766162240952230038.Spec : Prop :=
  ∀ n, P12766162240952230038.a n = A111175 (n + 1)

theorem P12766162240952230038.correct : P12766162240952230038.Spec := by
  intro n
  simp only [A111175, Nat.add_sub_cancel]

end A111175

/-! ## A111175.P5692254549398597192

`eq[2, ∏{e}[30*n+1, A000040(#)]]`
-/

namespace A111175.P5692254549398597192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), A000040 (Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111175.P5692254549398597192

namespace A111175

/-- `eq[2, ∏{e}[30*n+1, A000040(#)]]` -/
def P5692254549398597192.Spec : Prop :=
  ∀ n, (P5692254549398597192.a n : ℤ) = A111175 (n + 1)

end A111175

/-! ## A111175.P15058589359442933717

`eq[1, A237053(15*n)]`
-/

namespace A111175.P15058589359442933717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (15 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111175.P15058589359442933717

namespace A111175

/-- `eq[1, A237053(15*n)]` -/
def P15058589359442933717.Spec : Prop :=
  ∀ n, (P15058589359442933717.a n : ℤ) = A111175 (n + 1)

end A111175

/-! ## A111175.P4498252702652870187

`eq[2, A305973(A158057(n)-n)]`
-/

namespace A111175.P4498252702652870187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305973 (A158057 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111175.P4498252702652870187

namespace A111175

/-- `eq[2, A305973(A158057(n)-n)]` -/
def P4498252702652870187.Spec : Prop :=
  ∀ n, (P4498252702652870187.a n : ℤ) = A111175 (n + 1)

end A111175

/-! ## A111175.P3279769747303589773

`eq[1, A091088(3*n)]`
-/

namespace A111175.P3279769747303589773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111175.P3279769747303589773

namespace A111175

/-- `eq[1, A091088(3*n)]` -/
def P3279769747303589773.Spec : Prop :=
  ∀ n, (P3279769747303589773.a n : ℤ) = A111175 (n + 1)

end A111175

/-! ## A111175.P339464685519587578

`eq[1, A001222(30*n+1)]`
-/

namespace A111175.P339464685519587578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (30 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111175.P339464685519587578

namespace A111175

/-- `eq[1, A001222(30*n+1)]` -/
def P339464685519587578.Spec : Prop :=
  ∀ n, (P339464685519587578.a n : ℤ) = A111175 (n + 1)

end A111175

/-! ## A111175.P7692481291216401078

`eq[2, A000005(30*n+1)]`
-/

namespace A111175.P7692481291216401078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (30 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111175.P7692481291216401078

namespace A111175

/-- `eq[2, A000005(30*n+1)]` -/
def P7692481291216401078.Spec : Prop :=
  ∀ n, (P7692481291216401078.a n : ℤ) = A111175 (n + 1)

end A111175

/-! ## A111175.P14713114601078821397

`lt[A000005(15*2*(n+1)+1), 3]+1`
-/

namespace A111175.P14713114601078821397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (15 * (2 * (n + 1)) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A111175.P14713114601078821397

namespace A111175

/-- `lt[A000005(15*2*(n+1)+1), 3]+1` -/
def P14713114601078821397.Spec : Prop :=
  ∀ n, (P14713114601078821397.a n : ℤ) = A111175 (n + 1)

end A111175

/-! ## A111175.P15731482961460565115

`eq[2, A077462(A128470(n))]`
-/

namespace A111175.P15731482961460565115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A128470 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111175.P15731482961460565115

namespace A111175

/-- `eq[2, A077462(A128470(n))]` -/
def P15731482961460565115.Spec : Prop :=
  ∀ n, (P15731482961460565115.a n : ℤ) = A111175 (n + 1)

end A111175

/-! ## A111175.P18031290823657102998

`record[A103627(A024912(n+1))]`
-/

namespace A111175.P18031290823657102998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A024912 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111175.P18031290823657102998

namespace A111175

/-- `record[A103627(A024912(n+1))]` -/
def P18031290823657102998.Spec : Prop :=
  ∀ n, P18031290823657102998.a n = A111175 (n + 1)

end A111175

/-! ## A111175.P13200723923264127052

`record[A006530(A128470(n+1))-A248572(n+1)]`
-/

namespace A111175.P13200723923264127052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A128470 (n + 1)).toNat - A248572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111175.P13200723923264127052

namespace A111175

/-- `record[A006530(A128470(n+1))-A248572(n+1)]` -/
def P13200723923264127052.Spec : Prop :=
  ∀ n, P13200723923264127052.a n = A111175 (n + 1)

end A111175

/-! ## A111175.P8128295276787431562

`eq[1, A054024(31*n+1-n)]`
-/

namespace A111175.P8128295276787431562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (31 * n + 1 - n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111175.P8128295276787431562

namespace A111175

/-- `eq[1, A054024(31*n+1-n)]` -/
def P8128295276787431562.Spec : Prop :=
  ∀ n, (P8128295276787431562.a n : ℤ) = A111175 (n + 1)

end A111175

/-! ## A111175.P3213603559493697881

`eq[A006530(2*A128470(n)), A128470(n)]`
-/

namespace A111175.P3213603559493697881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A128470 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111175.P3213603559493697881

namespace A111175

/-- `eq[A006530(2*A128470(n)), A128470(n)]` -/
def P3213603559493697881.Spec : Prop :=
  ∀ n, (P3213603559493697881.a n : ℤ) = A111175 (n + 1)

end A111175

/-! ## A111175.P6808974120656670750

`eq[2, A231820(Δ[A194715(n)]+1)]+1`
-/

namespace A111175.P6808974120656670750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194715 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (f3 (n + 1) - f3 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A111175.P6808974120656670750

namespace A111175

/-- `eq[2, A231820(Δ[A194715(n)]+1)]+1` -/
def P6808974120656670750.Spec : Prop :=
  ∀ n, (P6808974120656670750.a n : ℤ) = A111175 (n + 1)

end A111175

/-! ## A111175.P17379575891027579024

`A008651(A132230(n+1))`
-/

namespace A111175.P17379575891027579024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A132230 (n + 1)).toNat

end

end A111175.P17379575891027579024

namespace A111175

/-- `A008651(A132230(n+1))` -/
def P17379575891027579024.Spec : Prop :=
  ∀ n, P17379575891027579024.a n = A111175 (n + 1)

end A111175

/-! ## A111175.P15339829430731938440

`A033182(p?[A008597(n)+1])`
-/

namespace A111175.P15339829430731938440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008597 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111175.P15339829430731938440

namespace A111175

/-- `A033182(p?[A008597(n)+1])` -/
def P15339829430731938440.Spec : Prop :=
  ∀ n, P15339829430731938440.a n = A111175 (n + 1)

end A111175

/-! ## A111175.P14348454857808765844

`A008651(p?[A249674(n)+1])`
-/

namespace A111175.P14348454857808765844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111175.P14348454857808765844

namespace A111175

/-- `A008651(p?[A249674(n)+1])` -/
def P14348454857808765844.Spec : Prop :=
  ∀ n, P14348454857808765844.a n = A111175 (n + 1)

end A111175

/-! ## A111175.P14105727700685900236

`eq[0, A016112(A017281(3*n))]`
-/

namespace A111175.P14105727700685900236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016112 (A017281 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111175.P14105727700685900236

namespace A111175

/-- `eq[0, A016112(A017281(3*n))]` -/
def P14105727700685900236.Spec : Prop :=
  ∀ n, (P14105727700685900236.a n : ℤ) = A111175 (n + 1)

end A111175

/-!
# A111176: Sophie Germain 4-almost primes.

The programs for A111176, the canonical program `A111176.P6519912469818522990` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111176 has offset 1).

The definition of A111176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1012 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111176.P6519912469818522990

`∩[A014613(n+1), A117360(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A111176

/-- `∩[A014613(n+1), A117360(n+1)]` -/
def P6519912469818522990.Spec : Prop :=
  ∀ n, (P6519912469818522990.a n : ℤ) = A111176 (n + 1)

theorem P6519912469818522990.correct : P6519912469818522990.Spec := by
  intro n
  simp only [A111176, Nat.add_sub_cancel]

end A111176

/-!
# A111177: Number of base n numbers in which each digit appears at most once (all unnecessary 0's deleted).

The programs for A111177, there is no canonical definition to state claims against.
-/

/-! ## A111177.P12509329746952444159

`Δ[Δ[A093964(n)]]-A093964(n)`
-/

namespace A111177.P12509329746952444159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093964 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A093964 n

end

end A111177.P12509329746952444159

/-! ## A111177.P17937812700626488755

`A343276(n+1)+A001339(n+1)`
-/

namespace A111177.P17937812700626488755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343276 (n + 1) + A001339 (n + 1)

end

end A111177.P17937812700626488755

/-! ## A111177.P8809773009987514143

`A001341(n)-(n+2)*A001339(n)`
-/

namespace A111177.P8809773009987514143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001341 n - (n + 2 : ℤ) * A001339 n

end

end A111177.P8809773009987514143

/-! ## A111177.P7447171570580139334

`A000522(n+1)+2*A281912(n+1)`
-/

namespace A111177.P7447171570580139334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 (n + 1) + 2 * A281912 (n + 1)

end

end A111177.P7447171570580139334

/-! ## A111177.P840262140794495238

`∑[n+1]+A000124(n)*A111063(n+2)`
-/

namespace A111177.P840262140794495238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A000124 n * A111063 (n + 2)

end

end A111177.P840262140794495238

/-!
# A111178: Number of partitions of n into positive numbers one less than a square.

The programs for A111178, there is no canonical definition to state claims against.
-/

/-! ## A111178.P1258251978508220761

`A243148(A242287(n+1)-(n+1))`
-/

namespace A111178.P1258251978508220761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A242287 (n + 1) - (n + 1 : ℤ)).toNat

end

end A111178.P1258251978508220761

/-! ## A111178.P5997204082501938484

`A243148(A210981(n))`
-/

namespace A111178.P5997204082501938484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A210981 n).toNat

end

end A111178.P5997204082501938484

/-! ## A111178.P14330264690540256632

`A243148(∑[A165355(n)-1])`
-/

namespace A111178.P14330264690540256632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165355 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111178.P14330264690540256632

/-! ## A111178.P109418756239912154

`A243148(∑[A074288(n+1)]+1)`
-/

namespace A111178.P109418756239912154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A111178.P109418756239912154

/-! ## A111178.P13891234920756419358

`A243148(A008795(n)+(n+1)²)`
-/

namespace A111178.P13891234920756419358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A008795 n + ((n + 1) ^ 2 : ℤ)).toNat

end

end A111178.P13891234920756419358

/-! ## A111178.P982684810591253255

`A243148(A117748(n+2)-(n+1))`
-/

namespace A111178.P982684810591253255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A117748 (n + 2) - (n + 1 : ℤ)).toNat

end

end A111178.P982684810591253255

/-! ## A111178.P16780944959932806254

`A243148(∑[A032766(A022998(n))])`
-/

namespace A111178.P16780944959932806254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A022998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111178.P16780944959932806254

/-! ## A111178.P9902731807647308743

`A243148(∑[A004526(A166304(n))])`
-/

namespace A111178.P9902731807647308743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A166304 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111178.P9902731807647308743

/-! ## A111178.P12821271665911068843

`A243148(∑[A004526(A298028(n))])`
-/

namespace A111178.P12821271665911068843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A298028 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111178.P12821271665911068843

/-! ## A111178.P1729023459677776983

`A243148(A245300(record[A245300(n)]))`
-/

namespace A111178.P1729023459677776983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A245300 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A111178.P1729023459677776983

/-! ## A111178.P5933583497448603640

`A243148(A000384(∑[((n+1)%5)%3])-(n+1))`
-/

namespace A111178.P5933583497448603640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 5 % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A000384 (∑ j ∈ Finset.range (n + 1), f1 j) - (n + 1 : ℤ)).toNat

end

end A111178.P5933583497448603640

/-! ## A111178.P9429448229592515534

`A243148(A000096(A257219(n+1))-n)`
-/

namespace A111178.P9429448229592515534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A000096 (A257219 (n + 1)).toNat - (n : ℤ)).toNat

end

end A111178.P9429448229592515534

/-! ## A111178.P9864511450243434781

`A243148(A074314(n+1)-(n+1))`
-/

namespace A111178.P9864511450243434781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A074314 (n + 1) - (n + 1 : ℤ)).toNat

end

end A111178.P9864511450243434781

/-! ## A111178.P6131190466216488390

`A243148(A000096(A047294(n+1))-n)`
-/

namespace A111178.P6131190466216488390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A000096 (A047294 (n + 1)).toNat - (n : ℤ)).toNat

end

end A111178.P6131190466216488390

/-! ## A111178.P10620652616107986882

`A243148(A000384(n)-(n+1)%∑[A000041(n)])`
-/

namespace A111178.P10620652616107986882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A000384 n - Int.tmod (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A111178.P10620652616107986882

/-! ## A111178.P3688442488680028359

`A243148(∑[4*n])`
-/

namespace A111178.P3688442488680028359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111178.P3688442488680028359

/-! ## A111178.P11556657576803683200

`A243148(2*(n+1)²)%A005994(n+1)`
-/

namespace A111178.P11556657576803683200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243148 (2 * (n + 1) ^ 2)) (A005994 (n + 1))

end

end A111178.P11556657576803683200

/-! ## A111178.P18116553183893887352

`A000196(A243148((n+1)²+(n+1)²)²)`
-/

namespace A111178.P18116553183893887352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A243148 ((n + 1) ^ 2 + (n + 1) ^ 2) ^ 2).toNat

end

end A111178.P18116553183893887352

/-! ## A111178.P6859560857140342446

`A243148(∑[n+1])+A243148(A001105(n+1))`
-/

namespace A111178.P6859560857140342446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (∑ j ∈ Finset.range (n + 1), f1 j) + A243148 (A001105 (n + 1)).toNat

end

end A111178.P6859560857140342446

/-!
# A111179: a(n) = Sum_{k=1..n} prime(k)!, where prime(k) is k-th prime.

The programs for A111179, there is no canonical definition to state claims against.
-/

/-! ## A111179.P11427572222368726694

`∑[p?[comp[n²]]!]`
-/

namespace A111179.P11427572222368726694
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111179.P11427572222368726694

/-! ## A111179.P16600261451868500192

`∑[record[∑{p}[n+2, #!]]]`
-/

namespace A111179.P16600261451868500192
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorial p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111179.P16600261451868500192

/-! ## A111179.P17863720001165810567

`∑[record[∏{p}[n+2, #!]]]`
-/

namespace A111179.P17863720001165810567
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorial p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111179.P17863720001165810567

/-! ## A111179.P16599187654081722899

`∑[A039716(n+1)]`
-/

namespace A111179.P16599187654081722899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111179.P16599187654081722899

/-! ## A111179.P17173195068913978909

`∑[A000040(n+1)!]`
-/

namespace A111179.P17173195068913978909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111179.P17173195068913978909

/-!
# A111180: Product_{k=1..n} prime(k)!.

The programs for A111180, there is no canonical definition to state claims against.
-/

/-! ## A111180.P15242854159932020072

`∏[record[∑{p}[n, #]!]]`
-/

namespace A111180.P15242854159932020072
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f3 n), p)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A111180.P15242854159932020072

/-! ## A111180.P17565189100211957554

`∏[record[∏{p}[n, #!]]]`
-/

namespace A111180.P17565189100211957554
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorial p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A111180.P17565189100211957554

/-! ## A111180.P10459286422151431084

`∏[record[A006530(n+1)!]]`
-/

namespace A111180.P10459286422151431084
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A006530 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A111180.P10459286422151431084

/-! ## A111180.P6040119580324529641

`∏[record[A020639(n+1)!]]`
-/

namespace A111180.P6040119580324529641
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A020639 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A111180.P6040119580324529641

/-! ## A111180.P8977552941113441286

`∏[comp[A018252(n+1)]!]`
-/

namespace A111180.P8977552941113441286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A111180.P8977552941113441286

/-!
# A111181: a(n) = prime(n) - pi(n).

The programs for A111181, the canonical program `A111181.P943142989482477223` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111181 has offset 1).

The definition of A111181 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)-A000720(n+1)` (program `A111181.P943142989482477223`, by `A111181.P943142989482477223.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111181.P943142989482477223

`A000040(n+1)-A000720(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A111181

/-- `A000040(n+1)-A000720(n+1)` -/
def P943142989482477223.Spec : Prop :=
  ∀ n, P943142989482477223.a n = A111181 (n + 1)

theorem P943142989482477223.correct : P943142989482477223.Spec := by
  intro n
  simp only [A111181, Nat.add_sub_cancel]

end A111181

/-! ## A111181.P671713777718983456

`Δ[A007504(n)]-A000720(n+1)`
-/

namespace A111181.P671713777718983456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000720 (n + 1)

end

end A111181.P671713777718983456

namespace A111181

/-- `Δ[A007504(n)]-A000720(n+1)` -/
def P671713777718983456.Spec : Prop :=
  ∀ n, P671713777718983456.a n = A111181 (n + 1)

end A111181

/-! ## A111181.P17749960911778338745

`A062298(n+1)+A014689(n+1)`
-/

namespace A111181.P17749960911778338745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) + A014689 (n + 1)

end

end A111181.P17749960911778338745

namespace A111181

/-- `A062298(n+1)+A014689(n+1)` -/
def P17749960911778338745.Spec : Prop :=
  ∀ n, P17749960911778338745.a n = A111181 (n + 1)

theorem P17749960911778338745.correct : P17749960911778338745.Spec := by
  intro n
  simp only [A111181, Nat.add_sub_cancel, A111181.P17749960911778338745.a, A111181.P943142989482477223.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A014689, A014689.P6286543075765329050.a, A062298, A062298.P8226643735375377344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A111181

/-! ## A111181.P4804146984383999668

`A065855(n+1)+A014692(n+1)`
-/

namespace A111181.P4804146984383999668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (n + 1) + A014692 (n + 1)

end

end A111181.P4804146984383999668

namespace A111181

/-- `A065855(n+1)+A014692(n+1)` -/
def P4804146984383999668.Spec : Prop :=
  ∀ n, P4804146984383999668.a n = A111181 (n + 1)

theorem P4804146984383999668.correct : P4804146984383999668.Spec := by
  intro n
  simp only [A111181, Nat.add_sub_cancel, A111181.P4804146984383999668.a, A111181.P943142989482477223.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A014692, A014692.P2004927767556050134.a, A065855, A065855.P16805213270251966039.a, A062298, A062298.P8226643735375377344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A111181

/-! ## A111181.P1342914824927230934

`A104192(n+1)+A037228(n+1)`
-/

namespace A111181.P1342914824927230934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104192 (n + 1) + A037228 (n + 1)

end

end A111181.P1342914824927230934

namespace A111181

/-- `A104192(n+1)+A037228(n+1)` -/
def P1342914824927230934.Spec : Prop :=
  ∀ n, P1342914824927230934.a n = A111181 (n + 1)

theorem P1342914824927230934.correct : P1342914824927230934.Spec := by
  intro n
  simp only [A111181, Nat.add_sub_cancel, A111181.P1342914824927230934.a, A111181.P943142989482477223.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A037228, A037228.P4220557198165153324.a, A104192, A104192.P13256349872724568781.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A111181

/-! ## A111181.P15475414850781656599

`A167180(n+1)+A097454(n+1)`
-/

namespace A111181.P15475414850781656599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167180 (n + 1) + A097454 (n + 1)

end

end A111181.P15475414850781656599

namespace A111181

/-- `A167180(n+1)+A097454(n+1)` -/
def P15475414850781656599.Spec : Prop :=
  ∀ n, P15475414850781656599.a n = A111181 (n + 1)

theorem P15475414850781656599.correct : P15475414850781656599.Spec := by
  intro n
  simp only [A111181, Nat.add_sub_cancel, A111181.P15475414850781656599.a, A111181.P943142989482477223.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A097454, A097454.P2717210328983116484.a, A167180, A167180.P16080205514212626559.a, A014689, A014689.P6286543075765329050.a, A072731, A072731.P11631103641081885778.a, A065855, A065855.P16805213270251966039.a, A062298, A062298.P8226643735375377344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A111181

/-! ## A111181.P3520063601552048684

`A008864(n+1)-A036234(n+1)`
-/

namespace A111181.P3520063601552048684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A036234 (n + 1)

end

end A111181.P3520063601552048684

namespace A111181

/-- `A008864(n+1)-A036234(n+1)` -/
def P3520063601552048684.Spec : Prop :=
  ∀ n, P3520063601552048684.a n = A111181 (n + 1)

theorem P3520063601552048684.correct : P3520063601552048684.Spec := by
  intro n
  simp only [A111181, Nat.add_sub_cancel, A111181.P3520063601552048684.a, A111181.P943142989482477223.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A008864, A008864.P9177617808325052279.a, A036234, A036234.P2906282677021386800.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A111181

/-! ## A111181.P8014598092457798609

`A100484(n+1)-A100486(n+1)`
-/

namespace A111181.P8014598092457798609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A100486 (n + 1)

end

end A111181.P8014598092457798609

namespace A111181

/-- `A100484(n+1)-A100486(n+1)` -/
def P8014598092457798609.Spec : Prop :=
  ∀ n, P8014598092457798609.a n = A111181 (n + 1)

theorem P8014598092457798609.correct : P8014598092457798609.Spec := by
  intro n
  simp only [A111181, Nat.add_sub_cancel, A111181.P8014598092457798609.a, A111181.P943142989482477223.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A100484, A100484.P9678625670825099636.a, A100486, A100486.P14505039985477023089.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A111181

/-! ## A111181.P3269488250766562327

`A134591(n+1)-A167180(n+1)`
-/

namespace A111181.P3269488250766562327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134591 (n + 1) - A167180 (n + 1)

end

end A111181.P3269488250766562327

namespace A111181

/-- `A134591(n+1)-A167180(n+1)` -/
def P3269488250766562327.Spec : Prop :=
  ∀ n, P3269488250766562327.a n = A111181 (n + 1)

theorem P3269488250766562327.correct : P3269488250766562327.Spec := by
  intro n
  simp only [A111181, Nat.add_sub_cancel, A111181.P3269488250766562327.a, A111181.P943142989482477223.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A134591, A134591.P13784663667261059065.a, A167180, A167180.P16080205514212626559.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A111181

/-! ## A111181.P14805039407702022856

`Δ[A007504(n)]-∑[A010051(n+1)]`
-/

namespace A111181.P14805039407702022856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A111181.P14805039407702022856

namespace A111181

/-- `Δ[A007504(n)]-∑[A010051(n+1)]` -/
def P14805039407702022856.Spec : Prop :=
  ∀ n, P14805039407702022856.a n = A111181 (n + 1)

end A111181

/-! ## A111181.P7308791321022861561

`sqrt(A001248(n+1))-A000720(n+1)`
-/

namespace A111181.P7308791321022861561
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) - (A000720 (n + 1) : ℝ)

end

end A111181.P7308791321022861561

namespace A111181

/-- `sqrt(A001248(n+1))-A000720(n+1)` -/
def P7308791321022861561.Spec : Prop :=
  ∀ n, P7308791321022861561.a n = (A111181 (n + 1) : ℝ)

end A111181

/-! ## A111181.P6977577156069367933

`A000040(n+1)-∑[A010051(n+1)]`
-/

namespace A111181.P6977577156069367933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111181.P6977577156069367933

namespace A111181

/-- `A000040(n+1)-∑[A010051(n+1)]` -/
def P6977577156069367933.Spec : Prop :=
  ∀ n, P6977577156069367933.a n = A111181 (n + 1)

end A111181

/-! ## A111181.P11081845647416564367

`∑[A054541(n+1)]-A000720(n+1)`
-/

namespace A111181.P11081845647416564367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000720 (n + 1)

end

end A111181.P11081845647416564367

namespace A111181

/-- `∑[A054541(n+1)]-A000720(n+1)` -/
def P11081845647416564367.Spec : Prop :=
  ∀ n, P11081845647416564367.a n = A111181 (n + 1)

end A111181

/-! ## A111181.P18097895895572439233

`A006093(n+1)+1-A000720(n+1)`
-/

namespace A111181.P18097895895572439233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (1 - A000720 (n + 1))

end

end A111181.P18097895895572439233

namespace A111181

/-- `A006093(n+1)+1-A000720(n+1)` -/
def P18097895895572439233.Spec : Prop :=
  ∀ n, P18097895895572439233.a n = A111181 (n + 1)

theorem P18097895895572439233.correct : P18097895895572439233.Spec := by
  intro n
  simp only [A111181, Nat.add_sub_cancel, A111181.P18097895895572439233.a, A111181.P943142989482477223.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A111181

/-! ## A111181.P14221042505340931071

`A000040(n+1)+1-A036234(n+1)`
-/

namespace A111181.P14221042505340931071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (1 - A036234 (n + 1))

end

end A111181.P14221042505340931071

namespace A111181

/-- `A000040(n+1)+1-A036234(n+1)` -/
def P14221042505340931071.Spec : Prop :=
  ∀ n, P14221042505340931071.a n = A111181 (n + 1)

theorem P14221042505340931071.correct : P14221042505340931071.Spec := by
  intro n
  simp only [A111181, Nat.add_sub_cancel, A111181.P14221042505340931071.a, A111181.P943142989482477223.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A036234, A036234.P2906282677021386800.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A111181

/-! ## A111181.P13376432955385309942

`2*A000040(n+1)-A100486(n+1)`
-/

namespace A111181.P13376432955385309942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - A100486 (n + 1)

end

end A111181.P13376432955385309942

namespace A111181

/-- `2*A000040(n+1)-A100486(n+1)` -/
def P13376432955385309942.Spec : Prop :=
  ∀ n, P13376432955385309942.a n = A111181 (n + 1)

theorem P13376432955385309942.correct : P13376432955385309942.Spec := by
  intro n
  simp only [A111181, Nat.add_sub_cancel, A111181.P13376432955385309942.a, A111181.P943142989482477223.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A100486, A100486.P14505039985477023089.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A111181

/-! ## A111181.P3499762226572617608

`A000040(n+1)+A065855(n+1)-n`
-/

namespace A111181.P3499762226572617608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A065855 (n + 1) - (n : ℤ))

end

end A111181.P3499762226572617608

namespace A111181

/-- `A000040(n+1)+A065855(n+1)-n` -/
def P3499762226572617608.Spec : Prop :=
  ∀ n, P3499762226572617608.a n = A111181 (n + 1)

theorem P3499762226572617608.correct : P3499762226572617608.Spec := by
  intro n
  simp only [A111181, Nat.add_sub_cancel, A111181.P3499762226572617608.a, A111181.P943142989482477223.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A065855, A065855.P16805213270251966039.a, A062298, A062298.P8226643735375377344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A111181

/-! ## A111181.P7554850109763814045

`A000040(n+1)-∑[char[A006093(n+1)]]`
-/

namespace A111181.P7554850109763814045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A111181.P7554850109763814045

namespace A111181

/-- `A000040(n+1)-∑[char[A006093(n+1)]]` -/
def P7554850109763814045.Spec : Prop :=
  ∀ n, P7554850109763814045.a n = A111181 (n + 1)

end A111181

/-! ## A111181.P15282592144495924860

`A068902(n+1)-(A068901(n+1)+A000720(n+1))`
-/

namespace A111181.P15282592144495924860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068902 (n + 1) - (A068901 (n + 1) + A000720 (n + 1))

end

end A111181.P15282592144495924860

namespace A111181

/-- `A068902(n+1)-(A068901(n+1)+A000720(n+1))` -/
def P15282592144495924860.Spec : Prop :=
  ∀ n, P15282592144495924860.a n = A111181 (n + 1)

theorem P15282592144495924860.correct : P15282592144495924860.Spec := by
  intro n
  simp only [A111181, Nat.add_sub_cancel, A111181.P15282592144495924860.a, A111181.P943142989482477223.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A068901, A068901.P8285558021144733875.a, A068902, A068902.P18143666427131392185.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A111181

/-!
# A111184: Triangle T(n,k), 0<=k<=n, read by rows, given by [0, 2, 1, 3, 2, 4, 3, 5, 4, 6, 5, 7, 6, ...] DELTA [1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, ...] where DELTA is the operator defined in A084938.

The programs for A111184, there is no canonical definition to state claims against.
-/

/-! ## A111184.P17876518578249518

`A089949((∑[char[∑[n]]]²-n)*ceil(sin(n)²))`
-/

namespace A111184.P17876518578249518
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089949 (((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ)) * ⌈Real.sin (n : ℝ) ^ 2⌉).toNat

end

end A111184.P17876518578249518

/-! ## A111184.P2590529786941964539

`A089949(∑[char[∑[n]]]²-n)^ceil(sin(n)²)`
-/

namespace A111184.P2590529786941964539
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089949 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A111184.P2590529786941964539

/-! ## A111184.P11102416753002839005

`A089949(lcm(∑[char[∑[n]]]²-n, ceil(sin(n)²)))`
-/

namespace A111184.P11102416753002839005
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089949 (Int.lcm ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ)) ⌈Real.sin (n : ℝ) ^ 2⌉)

end

end A111184.P11102416753002839005

/-! ## A111184.P9352667000798170122

`A089949(A038722(n+2)+1)`
-/

namespace A111184.P9352667000798170122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089949 (A038722 (n + 2) + 1).toNat

end

end A111184.P9352667000798170122

/-! ## A111184.P12941123109999966571

`A089949((∑[char[∑[n]]]²-n)%(2^n))`
-/

namespace A111184.P12941123109999966571
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089949 (Int.tmod ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ)) (2 ^ n : ℤ)).toNat

end

end A111184.P12941123109999966571

/-!
# A111186: Difference between the closest squares surrounding nonsquare composite numbers.

The programs for A111186, there is no canonical definition to state claims against.
-/

/-! ## A111186.P2089957678528255346

`2*floor(sqrt(A089229(n+1)))+1`
-/

namespace A111186.P2089957678528255346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.sqrt (A089229 (n + 1)) + 1

end

end A111186.P2089957678528255346

/-! ## A111186.P16736663400732653439

`2*floor(sqrt(A173298(n+1)))+1`
-/

namespace A111186.P16736663400732653439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.sqrt (A173298 (n + 1)) + 1

end

end A111186.P16736663400732653439

/-! ## A111186.P13262456837426389464

`A001650(A089229(n+1))`
-/

namespace A111186.P13262456837426389464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A089229 (n + 1)).toNat

end

end A111186.P13262456837426389464

/-! ## A111186.P12951935245707942389

`A001650(A173298(n+1))`
-/

namespace A111186.P12951935245707942389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A173298 (n + 1)).toNat

end

end A111186.P12951935245707942389

/-! ## A111186.P16660509759337931008

`A131506(A359913(n+2))`
-/

namespace A111186.P16660509759337931008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131506 (A359913 (n + 2)).toNat

end

end A111186.P16660509759337931008

/-! ## A111186.P6521889951046591026

`A086520(4*A089229(n+1))`
-/

namespace A111186.P6521889951046591026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (4 * A089229 (n + 1)).toNat

end

end A111186.P6521889951046591026

/-! ## A111186.P70232420751417183

`A005408(floor(sqrt(A089229(n+1))))`
-/

namespace A111186.P70232420751417183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (Int.sqrt (A089229 (n + 1))).toNat

end

end A111186.P70232420751417183

/-! ## A111186.P12587732436888689968

`A004273(ceil(sqrt(A089229(n+1))))`
-/

namespace A111186.P12587732436888689968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 ⌈Real.sqrt (A089229 (n + 1) : ℝ)⌉.toNat

end

end A111186.P12587732436888689968

/-! ## A111186.P7186854283649989322

`or(1, A133196(A284654(n+1)+1))`
-/

namespace A111186.P7186854283649989322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A133196 (A284654 (n + 1) + 1).toNat)

end

end A111186.P7186854283649989322

/-! ## A111186.P17867401401271550645

`A004280(ceil(sqrt(A089229(n+1)))+1)`
-/

namespace A111186.P17867401401271550645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (⌈Real.sqrt (A089229 (n + 1) : ℝ)⌉ + 1).toNat

end

end A111186.P17867401401271550645

/-!
# A111187: a(n) is the index of A110080 where n appears.

The programs for A111187, there is no canonical definition to state claims against.
-/

/-! ## A111187.P9630849538619939816

`A056848(a(n-1))` with `a(0)=1, a(1)=5, a(2)=2`
-/

namespace A111187.P9630849538619939816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 2] fun n a =>
  A056848 (a (n - 1)).toNat

end

end A111187.P9630849538619939816

/-!
# A111189: Number of polyanygons (or Pollyannagons) with score n, with all symmetries removed.

The programs for A111189, there is no canonical definition to state claims against.
-/

/-! ## A111189.P7314759929852132691

`record[A025581(2*n)+∏{e}[n+1, C(2*#, #)]]`
-/

namespace A111189.P7314759929852132691
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * n) + ((∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (2 * Nat.factorization (f2 n) p) (Nat.factorization (f2 n) p) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111189.P7314759929852132691

/-! ## A111189.P12698234532171874053

`record[A171150(A003073(n))]`
-/

namespace A111189.P12698234532171874053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171150 (A003073 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111189.P12698234532171874053

/-! ## A111189.P9609923176243579349

`record[A141419(A349014(n))]`
-/

namespace A111189.P9609923176243579349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (A349014 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111189.P9609923176243579349

/-!
# A111190: Numbers k such that floor(Pi^k - e^k) is prime.

The programs for A111190, there is no canonical definition to state claims against.
-/

/-! ## A111190.P3556495057378973667

`A259431(A259436(n)+∑{e}[n+1, #]+1)`
-/

namespace A111190.P3556495057378973667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259431 (A259436 n + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1 : ℕ) : ℤ)).toNat

end

end A111190.P3556495057378973667

/-!
# A111192: Product of the n-th sexy prime pair.

The programs for A111192, the canonical program `A111192.P5696730422318890961` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111192 has offset 1).

The definition of A111192 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023201, A046117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A111192.P5696730422318890961

`A023201(n+1)*A046117(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A111192

/-- `A023201(n+1)*A046117(n+1)` -/
def P5696730422318890961.Spec : Prop :=
  ∀ n, P5696730422318890961.a n = A111192 (n + 1)

theorem P5696730422318890961.correct : P5696730422318890961.Spec := by
  intro n
  simp only [A111192, Nat.add_sub_cancel]

end A111192

/-! ## A111192.P996040112920273448

`A087695(n+1)²-9`
-/

namespace A111192.P996040112920273448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087695 (n + 1) ^ 2 - 9

end

end A111192.P996040112920273448

namespace A111192

/-- `A087695(n+1)²-9` -/
def P996040112920273448.Spec : Prop :=
  ∀ n, P996040112920273448.a n = A111192 (n + 1)

theorem P996040112920273448.correct : P996040112920273448.Spec := by
  intro n
  simp only [A111192, Nat.add_sub_cancel, A111192.P996040112920273448.a, A111192.P5696730422318890961.a, A023201, A023201.P15581086770608415372.f1, A023201.P15581086770608415372.a, A046117, A046117.P460302525211984613.a, A087695, A087695.P4000952237766351123.a, A015914, A015914.P16999400420647426476.f1, A015914.P16999400420647426476.f2, A015914.P16999400420647426476.a, A281006, A281006.P4753203276795461863.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A052928, A052928.P15665125645728880594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111192

/-! ## A111192.P3435270224327906978

`(A104010(n+1)-A023201(n+1))*A023201(n+1)`
-/

namespace A111192.P3435270224327906978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A104010 (n + 1) - A023201 (n + 1)) * A023201 (n + 1)

end

end A111192.P3435270224327906978

namespace A111192

/-- `(A104010(n+1)-A023201(n+1))*A023201(n+1)` -/
def P3435270224327906978.Spec : Prop :=
  ∀ n, P3435270224327906978.a n = A111192 (n + 1)

theorem P3435270224327906978.correct : P3435270224327906978.Spec := by
  intro n
  simp only [A111192, Nat.add_sub_cancel, A111192.P3435270224327906978.a, A111192.P5696730422318890961.a, A023201, A023201.P15581086770608415372.f1, A023201.P15581086770608415372.a, A046117, A046117.P460302525211984613.a, A104010, A104010.P5743034670165287868.a, A015914, A015914.P16999400420647426476.f1, A015914.P16999400420647426476.f2, A015914.P16999400420647426476.a, A087695, A087695.P4000952237766351123.a, A281006, A281006.P4753203276795461863.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A052928, A052928.P15665125645728880594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111192

/-! ## A111192.P10168080268556937531

`(A104010(n+1)-A046117(n+1))*A046117(n+1)`
-/

namespace A111192.P10168080268556937531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A104010 (n + 1) - A046117 (n + 1)) * A046117 (n + 1)

end

end A111192.P10168080268556937531

namespace A111192

/-- `(A104010(n+1)-A046117(n+1))*A046117(n+1)` -/
def P10168080268556937531.Spec : Prop :=
  ∀ n, P10168080268556937531.a n = A111192 (n + 1)

theorem P10168080268556937531.correct : P10168080268556937531.Spec := by
  intro n
  simp only [A111192, Nat.add_sub_cancel, A111192.P10168080268556937531.a, A111192.P5696730422318890961.a, A023201, A023201.P15581086770608415372.f1, A023201.P15581086770608415372.a, A046117, A046117.P460302525211984613.a, A104010, A104010.P5743034670165287868.a, A015914, A015914.P16999400420647426476.f1, A015914.P16999400420647426476.f2, A015914.P16999400420647426476.a, A087695, A087695.P4000952237766351123.a, A281006, A281006.P4753203276795461863.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A052928, A052928.P15665125645728880594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111192

/-! ## A111192.P3211247244915320983

`(A023201(n+1)+A001223(A320701(n+1)))*A023201(n+1)`
-/

namespace A111192.P3211247244915320983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023201 (n + 1) + A001223 (A320701 (n + 1)).toNat) * A023201 (n + 1)

end

end A111192.P3211247244915320983

namespace A111192

/-- `(A023201(n+1)+A001223(A320701(n+1)))*A023201(n+1)` -/
def P3211247244915320983.Spec : Prop :=
  ∀ n, P3211247244915320983.a n = A111192 (n + 1)

end A111192

/-! ## A111192.P18385664954546180439

`A023201(n+1)*A067831(n+2)`
-/

namespace A111192.P18385664954546180439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1) * A067831 (n + 2)

end

end A111192.P18385664954546180439

namespace A111192

/-- `A023201(n+1)*A067831(n+2)` -/
def P18385664954546180439.Spec : Prop :=
  ∀ n, P18385664954546180439.a n = A111192 (n + 1)

end A111192

/-! ## A111192.P10772164691593476299

`p?[A015914(n+1)]*A046117(n+1)`
-/

namespace A111192.P10772164691593476299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A046117 (n + 1)

end

end A111192.P10772164691593476299

namespace A111192

/-- `p?[A015914(n+1)]*A046117(n+1)` -/
def P10772164691593476299.Spec : Prop :=
  ∀ n, P10772164691593476299.a n = A111192 (n + 1)

end A111192

/-! ## A111192.P2737028532559953912

`p?[A262084(n+1)]*A046117(n+1)`
-/

namespace A111192.P2737028532559953912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A046117 (n + 1)

end

end A111192.P2737028532559953912

namespace A111192

/-- `p?[A262084(n+1)]*A046117(n+1)` -/
def P2737028532559953912.Spec : Prop :=
  ∀ n, P2737028532559953912.a n = A111192 (n + 1)

end A111192

/-! ## A111192.P6641197449340340556

`A023201(n+1)*A156274(2*(n+1))`
-/

namespace A111192.P6641197449340340556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1) * A156274 (2 * (n + 1))

end

end A111192.P6641197449340340556

namespace A111192

/-- `A023201(n+1)*A156274(2*(n+1))` -/
def P6641197449340340556.Spec : Prop :=
  ∀ n, P6641197449340340556.a n = A111192 (n + 1)

end A111192

/-! ## A111192.P6225483165767608532

`A046117(n+1)*A156274(2*n+1)`
-/

namespace A111192.P6225483165767608532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1) * A156274 (2 * n + 1)

end

end A111192.P6225483165767608532

namespace A111192

/-- `A046117(n+1)*A156274(2*n+1)` -/
def P6225483165767608532.Spec : Prop :=
  ∀ n, P6225483165767608532.a n = A111192 (n + 1)

end A111192

/-! ## A111192.P6686158596783828405

`A067831(n+2)*A156274(2*n+1)`
-/

namespace A111192.P6686158596783828405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067831 (n + 2) * A156274 (2 * n + 1)

end

end A111192.P6686158596783828405

namespace A111192

/-- `A067831(n+2)*A156274(2*n+1)` -/
def P6686158596783828405.Spec : Prop :=
  ∀ n, P6686158596783828405.a n = A111192 (n + 1)

end A111192

/-! ## A111192.P7895574910667878038

`A156274(2*n+1)*A172988(n+2)`
-/

namespace A111192.P7895574910667878038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156274 (2 * n + 1) * A172988 (n + 2)

end

end A111192.P7895574910667878038

namespace A111192

/-- `A156274(2*n+1)*A172988(n+2)` -/
def P7895574910667878038.Spec : Prop :=
  ∀ n, P7895574910667878038.a n = A111192 (n + 1)

end A111192

/-! ## A111192.P13120639116493374122

`A156274(2*n+1)*A156274(2*(n+1))`
-/

namespace A111192.P13120639116493374122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156274 (2 * n + 1) * A156274 (2 * (n + 1))

end

end A111192.P13120639116493374122

namespace A111192

/-- `A156274(2*n+1)*A156274(2*(n+1))` -/
def P13120639116493374122.Spec : Prop :=
  ∀ n, P13120639116493374122.a n = A111192 (n + 1)

end A111192

/-! ## A111192.P7028779233479230988

`p?[A086304(n+1)]*A046117(n+1)`
-/

namespace A111192.P7028779233479230988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A046117 (n + 1)

end

end A111192.P7028779233479230988

namespace A111192

/-- `p?[A086304(n+1)]*A046117(n+1)` -/
def P7028779233479230988.Spec : Prop :=
  ∀ n, P7028779233479230988.a n = A111192 (n + 1)

end A111192

/-! ## A111192.P1248204817043159127

`p?[A118538(n+1)]*A046117(n+1)`
-/

namespace A111192.P1248204817043159127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A046117 (n + 1)

end

end A111192.P1248204817043159127

namespace A111192

/-- `p?[A118538(n+1)]*A046117(n+1)` -/
def P1248204817043159127.Spec : Prop :=
  ∀ n, P1248204817043159127.a n = A111192 (n + 1)

end A111192

/-! ## A111192.P903554524484961593

`p?[A000040(n+1)+6]*A023201(n+1)`
-/

namespace A111192.P903554524484961593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A023201 (n + 1)

end

end A111192.P903554524484961593

namespace A111192

/-- `p?[A000040(n+1)+6]*A023201(n+1)` -/
def P903554524484961593.Spec : Prop :=
  ∀ n, P903554524484961593.a n = A111192 (n + 1)

end A111192

/-! ## A111192.P2113671067839868770

`p?[abs(6-A000040(n+3))]*A046117(n+1)`
-/

namespace A111192.P2113671067839868770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |6 - A000040 (n + 3)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A046117 (n + 1)

end

end A111192.P2113671067839868770

namespace A111192

/-- `p?[abs(6-A000040(n+3))]*A046117(n+1)` -/
def P2113671067839868770.Spec : Prop :=
  ∀ n, P2113671067839868770.a n = A111192 (n + 1)

end A111192

/-! ## A111192.P3747179266659123372

`p?[A000040(n+1)+6]*p?[A262084(n+1)]`
-/

namespace A111192.P3747179266659123372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A111192.P3747179266659123372

namespace A111192

/-- `p?[A000040(n+1)+6]*p?[A262084(n+1)]` -/
def P3747179266659123372.Spec : Prop :=
  ∀ n, P3747179266659123372.a n = A111192 (n + 1)

end A111192

/-! ## A111192.P16809800962534988172

`p?[A000010(A158611(n+2))+7]*A023201(n+1)`
-/

namespace A111192.P16809800962534988172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A158611 (n + 2)).toNat + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A023201 (n + 1)

end

end A111192.P16809800962534988172

namespace A111192

/-- `p?[A000010(A158611(n+2))+7]*A023201(n+1)` -/
def P16809800962534988172.Spec : Prop :=
  ∀ n, P16809800962534988172.a n = A111192 (n + 1)

end A111192

/-! ## A111192.P18033847371473141976

`∩[A276705(n+1), A333747(n+1)]`
-/

namespace A111192.P18033847371473141976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111192.P18033847371473141976

namespace A111192

/-- `∩[A276705(n+1), A333747(n+1)]` -/
def P18033847371473141976.Spec : Prop :=
  ∀ n, (P18033847371473141976.a n : ℤ) = A111192 (n + 1)

end A111192

/-!
# A111193: Numbers k such that floor(Pi^k + e^k) is prime.

The programs for A111193, there is no canonical definition to state claims against.
-/

/-! ## A111193.P15161625401803857540

`∑[A008458(A090030(n^3))]`
-/

namespace A111193.P15161625401803857540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A090030 (n ^ 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111193.P15161625401803857540

/-!
# A111194: Permanent of the inverse Hilbert matrix.

The programs for A111194, there is no canonical definition to state claims against.
-/

/-! ## A111194.P9768249534852765144

`A005249(n)*A092326(A028310(n))`
-/

namespace A111194.P9768249534852765144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005249 n * A092326 (A028310 n).toNat

end

end A111194.P9768249534852765144

/-!
# A111195: a(n) = 2^(-n) * Sum_{k=0..n} binomial(2*n+1, 2*k+1) * A000364(k).

The programs for A111195, there is no canonical definition to state claims against.
-/

/-! ## A111195.P17882154696107471222

`A009333(2*n+1)/A000079(n)`
-/

namespace A111195.P17882154696107471222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009333 (2 * n + 1) : ℚ) / (A000079 n : ℚ)

end

end A111195.P17882154696107471222

/-! ## A111195.P15214474155588353088

`A331471(A103194(n))+A232686(n)`
-/

namespace A111195.P15214474155588353088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331471 (A103194 n).toNat + A232686 n

end

end A111195.P15214474155588353088

/-!
# A111196: a(n) = 2^(-n)*Sum_{k=0..n} binomial(2*n+1, 2*k+1)*A000364(n-k).

The programs for A111196, there is no canonical definition to state claims against.
-/

/-! ## A111196.P14941789383388547066

`2^-n*A002084(n)`
-/

namespace A111196.P14941789383388547066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (-(n : ℤ) : ℤ) * (A002084 n : ℚ)

end

end A111196.P14941789383388547066

/-! ## A111196.P14160229637867778490

`A002084(n)/2^n`
-/

namespace A111196.P14160229637867778490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002084 n : ℚ) / (2 ^ n : ℚ)

end

end A111196.P14160229637867778490

/-! ## A111196.P10398049401169340184

`A003701(Δ[n²])/2^n`
-/

namespace A111196.P10398049401169340184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003701 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (2 ^ n : ℚ)

end

end A111196.P10398049401169340184

/-! ## A111196.P7522299498036474467

`A336024(Δ[n²])/2^n`
-/

namespace A111196.P7522299498036474467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336024 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (2 ^ n : ℚ)

end

end A111196.P7522299498036474467

/-! ## A111196.P17632011372307358941

`A062161(2*n+1)/2^n`
-/

namespace A111196.P17632011372307358941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062161 (2 * n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A111196.P17632011372307358941

/-!
# A111199: Numbers k such that 4k + 9 is prime.

The programs for A111199, the canonical program `A111199.P3819509222948216455` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111199 has offset 1).

The definition of A111199 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005098, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A111199.P3819509222948216455

`A005098(n+2)-2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111199

/-- `A005098(n+2)-2` -/
def P3819509222948216455.Spec : Prop :=
  ∀ n, P3819509222948216455.a n = A111199 (n + 1)

theorem P3819509222948216455.correct : P3819509222948216455.Spec := by
  intro n
  simp only [A111199, Nat.add_sub_cancel]

end A111199

/-! ## A111199.P5395851757437899545

`∑[A082074(n+1)]-1`
-/

namespace A111199.P5395851757437899545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A111199.P5395851757437899545

namespace A111199

/-- `∑[A082074(n+1)]-1` -/
def P5395851757437899545.Spec : Prop :=
  ∀ n, P5395851757437899545.a n = A111199 (n + 1)

end A111199

/-! ## A111199.P5402168282524638662

`∑[A082074(A028310(n)+1)]`
-/

namespace A111199.P5402168282524638662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082074 (A028310 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111199.P5402168282524638662

namespace A111199

/-- `∑[A082074(A028310(n)+1)]` -/
def P5402168282524638662.Spec : Prop :=
  ∀ n, P5402168282524638662.a n = A111199 (n + 1)

end A111199

/-! ## A111199.P12955517448716984233

`A002265(A082073(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A111199.P12955517448716984233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002265 (A082073 (n + 1)).toNat + a (n - 1)

end

end A111199.P12955517448716984233

namespace A111199

/-- `A002265(A082073(n+1))+a(n-1)` -/
def P12955517448716984233.Spec : Prop :=
  ∀ n, P12955517448716984233.a n = A111199 (n + 1)

end A111199

/-! ## A111199.P11924686111643960933

`A111215(n+2)-1`
-/

namespace A111199.P11924686111643960933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 2) - 1

end

end A111199.P11924686111643960933

namespace A111199

/-- `A111215(n+2)-1` -/
def P11924686111643960933.Spec : Prop :=
  ∀ n, P11924686111643960933.a n = A111199 (n + 1)

theorem P11924686111643960933.correct : P11924686111643960933.Spec := by
  intro n
  simp only [A111199, Nat.add_sub_cancel, A111199.P11924686111643960933.a, A111199.P3819509222948216455.a, A005098, A005098.P10761952897232169496.a, A111215, A111215.P14583532471026945765.a, A002144, A002144.P15538936588089724505.f1, A002144.P15538936588089724505.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111199

/-! ## A111199.P3155901293597794150

`A022758(n+2)-(A156287(n+2)+1)`
-/

namespace A111199.P3155901293597794150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022758 (n + 2) - (A156287 (n + 2) + 1)

end

end A111199.P3155901293597794150

namespace A111199

/-- `A022758(n+2)-(A156287(n+2)+1)` -/
def P3155901293597794150.Spec : Prop :=
  ∀ n, P3155901293597794150.a n = A111199 (n + 1)

end A111199

/-! ## A111199.P77335559762993038

`A022758(n+2)-(A005099(n+2)+2)`
-/

namespace A111199.P77335559762993038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022758 (n + 2) - (A005099 (n + 2) + 2)

end

end A111199.P77335559762993038

namespace A111199

/-- `A022758(n+2)-(A005099(n+2)+2)` -/
def P77335559762993038.Spec : Prop :=
  ∀ n, P77335559762993038.a n = A111199 (n + 1)

end A111199

/-! ## A111199.P11628245969874352546

`A171555(n+2)/A002144(n+2)-2`
-/

namespace A111199.P11628245969874352546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171555 (n + 2) : ℚ) / (A002144 (n + 2) : ℚ) - 2

end

end A111199.P11628245969874352546

namespace A111199

/-- `A171555(n+2)/A002144(n+2)-2` -/
def P11628245969874352546.Spec : Prop :=
  ∀ n, P11628245969874352546.a n = (A111199 (n + 1) : ℚ)

end A111199

/-! ## A111199.P16049503123975522340

`eq[1, A237053(2*n)]-2`
-/

namespace A111199.P16049503123975522340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 2

end

end A111199.P16049503123975522340

namespace A111199

/-- `eq[1, A237053(2*n)]-2` -/
def P16049503123975522340.Spec : Prop :=
  ∀ n, P16049503123975522340.a n = A111199 (n + 1)

end A111199

/-! ## A111199.P12464975193326084480

`record[A155722(n+1)/A020639(A155722(n+1))]`
-/

namespace A111199.P12464975193326084480
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155722 (n + 1) : ℚ) / (A020639 (A155722 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111199.P12464975193326084480

namespace A111199

/-- `record[A155722(n+1)/A020639(A155722(n+1))]` -/
def P12464975193326084480.Spec : Prop :=
  ∀ n, P12464975193326084480.a n = (A111199 (n + 1) : ℚ)

end A111199

/-! ## A111199.P16606106041502316867

`A075518(A080147(n+2))-2`
-/

namespace A111199.P16606106041502316867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075518 (A080147 (n + 2)).toNat - 2

end

end A111199.P16606106041502316867

namespace A111199

/-- `A075518(A080147(n+2))-2` -/
def P16606106041502316867.Spec : Prop :=
  ∀ n, P16606106041502316867.a n = A111199 (n + 1)

end A111199

/-! ## A111199.P2850985983701569007

`A024698(A138970(n+2))-2`
-/

namespace A111199.P2850985983701569007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024698 (A138970 (n + 2)).toNat - 2

end

end A111199.P2850985983701569007

namespace A111199

/-- `A024698(A138970(n+2))-2` -/
def P2850985983701569007.Spec : Prop :=
  ∀ n, P2850985983701569007.a n = A111199 (n + 1)

end A111199

/-! ## A111199.P12278961883135145743

`eq[1, A001222(4*n+9)]`
-/

namespace A111199.P12278961883135145743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (4 * n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111199.P12278961883135145743

namespace A111199

/-- `eq[1, A001222(4*n+9)]` -/
def P12278961883135145743.Spec : Prop :=
  ∀ n, (P12278961883135145743.a n : ℤ) = A111199 (n + 1)

end A111199

/-! ## A111199.P7074028146969447591

`eq[2, A000005(4*n+9)]`
-/

namespace A111199.P7074028146969447591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111199.P7074028146969447591

namespace A111199

/-- `eq[2, A000005(4*n+9)]` -/
def P7074028146969447591.Spec : Prop :=
  ∀ n, (P7074028146969447591.a n : ℤ) = A111199 (n + 1)

end A111199

/-! ## A111199.P13591099785621488753

`lt[A001222(4*(n+1)+5), 2]`
-/

namespace A111199.P13591099785621488753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (4 * (n + 1) + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111199.P13591099785621488753

namespace A111199

/-- `lt[A001222(4*(n+1)+5), 2]` -/
def P13591099785621488753.Spec : Prop :=
  ∀ n, (P13591099785621488753.a n : ℤ) = A111199 (n + 1)

end A111199

/-! ## A111199.P10392273418412787971

`lt[A000005(4*(n+1)+5), 3]`
-/

namespace A111199.P10392273418412787971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * (n + 1) + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111199.P10392273418412787971

namespace A111199

/-- `lt[A000005(4*(n+1)+5), 3]` -/
def P10392273418412787971.Spec : Prop :=
  ∀ n, (P10392273418412787971.a n : ℤ) = A111199 (n + 1)

end A111199

/-! ## A111199.P14252965019304609402

`lt[n+3, A020639(4*(n+2)+1)]`
-/

namespace A111199.P14252965019304609402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (4 * (n + 2) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111199.P14252965019304609402

namespace A111199

/-- `lt[n+3, A020639(4*(n+2)+1)]` -/
def P14252965019304609402.Spec : Prop :=
  ∀ n, (P14252965019304609402.a n : ℤ) = A111199 (n + 1)

end A111199

/-! ## A111199.P14451036808159933253

`eq[A006530(4*n+9), 4*n+9]`
-/

namespace A111199.P14451036808159933253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (4 * n + 9)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A111199.P14451036808159933253

namespace A111199

/-- `eq[A006530(4*n+9), 4*n+9]` -/
def P14451036808159933253.Spec : Prop :=
  ∀ n, (P14451036808159933253.a n : ℤ) = A111199 (n + 1)

end A111199

/-! ## A111199.P12558098507316248652

`eq[1, A054024(4*(n+2)+1)]`
-/

namespace A111199.P12558098507316248652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (4 * (n + 2) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111199.P12558098507316248652

namespace A111199

/-- `eq[1, A054024(4*(n+2)+1)]` -/
def P12558098507316248652.Spec : Prop :=
  ∀ n, (P12558098507316248652.a n : ℤ) = A111199 (n + 1)

end A111199

/-! ## A111199.P13337499255510641496

`eq[1, A292936(4*n+1)]-2`
-/

namespace A111199.P13337499255510641496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 2

end

end A111199.P13337499255510641496

namespace A111199

/-- `eq[1, A292936(4*n+1)]-2` -/
def P13337499255510641496.Spec : Prop :=
  ∀ n, P13337499255510641496.a n = A111199 (n + 1)

end A111199

