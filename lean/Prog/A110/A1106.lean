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
import Seq.B000.C034
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
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
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A110600: Minimal set of prime-strings in base 12 in the sense of A071062.

The programs for A110600, there is no canonical definition to state claims against.
-/

/-! ## A110600.P3641907729392716439

`p?[∑[A100880(A271205(n+3))]]`
-/

namespace A110600.P3641907729392716439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100880 (A271205 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A110600.P3641907729392716439

/-! ## A110600.P4457745433405290688

`p?[record[A157458(A112736(n+1))]]`
-/

namespace A110600.P4457745433405290688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157458 (A112736 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A110600.P4457745433405290688

/-! ## A110600.P12506948392456338156

`p?[A048308(n)+A005043(A085200(n+2))]`
-/

namespace A110600.P12506948392456338156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048308 n + A005043 (A085200 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A110600.P12506948392456338156

/-! ## A110600.P17318571792593248061

`p?[A297299(A297277(n+1))+A297274(n+1)]`
-/

namespace A110600.P17318571792593248061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (A297277 (n + 1)).toNat + A297274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A110600.P17318571792593248061

/-!
# A110601: a(n) = phi(n)*tau(n)^2, where phi is Euler's totient function and tau(n) is the number of divisors of n.

The programs for A110601, the canonical program `A110601.P15769092339802905093` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110601 has offset 1).

The definition of A110601 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A035116, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A110601.P15769092339802905093

`A000010(n+1)*A035116(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A110601

/-- `A000010(n+1)*A035116(n+1)` -/
def P15769092339802905093.Spec : Prop :=
  ∀ n, P15769092339802905093.a n = A110601 (n + 1)

theorem P15769092339802905093.correct : P15769092339802905093.Spec := by
  intro n
  simp only [A110601, Nat.add_sub_cancel]

end A110601

/-! ## A110601.P3099675871624421087

`A062355(n+1)*A000005(n+1)`
-/

namespace A110601.P3099675871624421087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062355 (n + 1) * A000005 (n + 1)

end

end A110601.P3099675871624421087

namespace A110601

/-- `A062355(n+1)*A000005(n+1)` -/
def P3099675871624421087.Spec : Prop :=
  ∀ n, P3099675871624421087.a n = A110601 (n + 1)

end A110601

/-! ## A110601.P6469096734105748291

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*∏{e}[n+1, #+1]²`
-/

namespace A110601.P6469096734105748291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) * (((∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)) ^ 2 : ℕ) : ℚ)

end

end A110601.P6469096734105748291

namespace A110601

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*∏{e}[n+1, #+1]²` -/
def P6469096734105748291.Spec : Prop :=
  ∀ n, P6469096734105748291.a n = (A110601 (n + 1) : ℚ)

end A110601

/-! ## A110601.P784695231584357987

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*∑{d}[n+1, gcd(n, #)]²`
-/

namespace A110601.P784695231584357987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) * (((∑ d ∈ Nat.divisors (f3 n), Nat.gcd n d) ^ 2 : ℕ) : ℚ)

end

end A110601.P784695231584357987

namespace A110601

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*∑{d}[n+1, gcd(n, #)]²` -/
def P784695231584357987.Spec : Prop :=
  ∀ n, P784695231584357987.a n = (A110601 (n + 1) : ℚ)

end A110601

/-! ## A110601.P6003116614083590626

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*(∑{d}[n+1, #+1]-∑{d}[n+1, #])²`
-/

namespace A110601.P6003116614083590626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) * ((((∑ d ∈ Nat.divisors (f3 n), (d + 1) : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f4 n), d : ℕ) : ℤ)) ^ 2 : ℚ)

end

end A110601.P6003116614083590626

namespace A110601

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*(∑{d}[n+1, #+1]-∑{d}[n+1, #])²` -/
def P6003116614083590626.Spec : Prop :=
  ∀ n, P6003116614083590626.a n = (A110601 (n + 1) : ℚ)

end A110601

/-! ## A110601.P3970038671309003662

`(n+1)²-A022157(n+1)`
-/

namespace A110601.P3970038671309003662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A022157 (n + 1)

end

end A110601.P3970038671309003662

namespace A110601

/-- `(n+1)²-A022157(n+1)` -/
def P3970038671309003662.Spec : Prop :=
  ∀ n, P3970038671309003662.a n = A110601 (n + 1)

end A110601

/-! ## A110601.P12749063111140884290

`A304408(n+1)*A318519(n+1)`
-/

namespace A110601.P12749063111140884290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304408 (n + 1) * A318519 (n + 1)

end

end A110601.P12749063111140884290

namespace A110601

/-- `A304408(n+1)*A318519(n+1)` -/
def P12749063111140884290.Spec : Prop :=
  ∀ n, P12749063111140884290.a n = A110601 (n + 1)

end A110601

/-! ## A110601.P12888376547182885434

`A000005(n+1)²*Δ[A002088(n)]`
-/

namespace A110601.P12888376547182885434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 2 * (f1 (n + 1) - f1 n)

end

end A110601.P12888376547182885434

namespace A110601

/-- `A000005(n+1)²*Δ[A002088(n)]` -/
def P12888376547182885434.Spec : Prop :=
  ∀ n, P12888376547182885434.a n = A110601 (n + 1)

end A110601

/-! ## A110601.P13373326344627528547

`A000005(n+1)²*Δ[A005728(n)]`
-/

namespace A110601.P13373326344627528547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 2 * (f1 (n + 1) - f1 n)

end

end A110601.P13373326344627528547

namespace A110601

/-- `A000005(n+1)²*Δ[A005728(n)]` -/
def P13373326344627528547.Spec : Prop :=
  ∀ n, P13373326344627528547.a n = A110601 (n + 1)

end A110601

/-! ## A110601.P11580919317094036873

`A000010(n+1)*Δ[A006218(n)]²`
-/

namespace A110601.P11580919317094036873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * (f1 (n + 1) - f1 n) ^ 2

end

end A110601.P11580919317094036873

namespace A110601

/-- `A000010(n+1)*Δ[A006218(n)]²` -/
def P11580919317094036873.Spec : Prop :=
  ∀ n, P11580919317094036873.a n = A110601 (n + 1)

end A110601

/-! ## A110601.P4673843076995710747

`Δ[A054519(n)]²*A000010(n+1)`
-/

namespace A110601.P4673843076995710747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A000010 (n + 1)

end

end A110601.P4673843076995710747

namespace A110601

/-- `Δ[A054519(n)]²*A000010(n+1)` -/
def P4673843076995710747.Spec : Prop :=
  ∀ n, P4673843076995710747.a n = A110601 (n + 1)

end A110601

/-! ## A110601.P141558774078198580

`A000005(n+1)²*A000010(n+1)`
-/

namespace A110601.P141558774078198580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 2 * A000010 (n + 1)

end

end A110601.P141558774078198580

namespace A110601

/-- `A000005(n+1)²*A000010(n+1)` -/
def P141558774078198580.Spec : Prop :=
  ∀ n, P141558774078198580.a n = A110601 (n + 1)

end A110601

/-! ## A110601.P8576079076924832120

`A329484(n+1)²*A000010(n+1)`
-/

namespace A110601.P8576079076924832120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329484 (n + 1) ^ 2 * A000010 (n + 1)

end

end A110601.P8576079076924832120

namespace A110601

/-- `A329484(n+1)²*A000010(n+1)` -/
def P8576079076924832120.Spec : Prop :=
  ∀ n, P8576079076924832120.a n = A110601 (n + 1)

end A110601

/-! ## A110601.P14625488141213433843

`A062355(n+1)²/A000010(n+1)`
-/

namespace A110601.P14625488141213433843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062355 (n + 1) ^ 2 : ℚ) / (A000010 (n + 1) : ℚ)

end

end A110601.P14625488141213433843

namespace A110601

/-- `A062355(n+1)²/A000010(n+1)` -/
def P14625488141213433843.Spec : Prop :=
  ∀ n, P14625488141213433843.a n = (A110601 (n + 1) : ℚ)

end A110601

/-! ## A110601.P17895210269725371501

`A000005(n+1)²*sqrt(A127473(n+1))`
-/

namespace A110601.P17895210269725371501
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) ^ 2 : ℝ) * Real.sqrt (A127473 (n + 1) : ℝ)

end

end A110601.P17895210269725371501

namespace A110601

/-- `A000005(n+1)²*sqrt(A127473(n+1))` -/
def P17895210269725371501.Spec : Prop :=
  ∀ n, P17895210269725371501.a n = (A110601 (n + 1) : ℝ)

end A110601

/-! ## A110601.P6484078766178662964

`log2(A338506(n+1))²*A000010(n+1)`
-/

namespace A110601.P6484078766178662964
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A338506 (n + 1) : ℝ) ^ 2 * (A000010 (n + 1) : ℝ)

end

end A110601.P6484078766178662964

namespace A110601

/-- `log2(A338506(n+1))²*A000010(n+1)` -/
def P6484078766178662964.Spec : Prop :=
  ∀ n, P6484078766178662964.a n = (A110601 (n + 1) : ℝ)

end A110601

/-! ## A110601.P9794426857986928431

`∑[A341062(n+1)]²*A000010(n+1)`
-/

namespace A110601.P9794426857986928431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * A000010 (n + 1)

end

end A110601.P9794426857986928431

namespace A110601

/-- `∑[A341062(n+1)]²*A000010(n+1)` -/
def P9794426857986928431.Spec : Prop :=
  ∀ n, P9794426857986928431.a n = A110601 (n + 1)

end A110601

/-! ## A110601.P11516860018497719728

`(A032741(n+1)+1)²*A000010(n+1)`
-/

namespace A110601.P11516860018497719728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032741 (n + 1) + 1) ^ 2 * A000010 (n + 1)

end

end A110601.P11516860018497719728

namespace A110601

/-- `(A032741(n+1)+1)²*A000010(n+1)` -/
def P11516860018497719728.Spec : Prop :=
  ∀ n, P11516860018497719728.a n = A110601 (n + 1)

end A110601

/-! ## A110601.P1425433356523541324

`(A109606(n+1)+1)*A000005(n+1)²`
-/

namespace A110601.P1425433356523541324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1) * A000005 (n + 1) ^ 2

end

end A110601.P1425433356523541324

namespace A110601

/-- `(A109606(n+1)+1)*A000005(n+1)²` -/
def P1425433356523541324.Spec : Prop :=
  ∀ n, P1425433356523541324.a n = A110601 (n + 1)

end A110601

/-! ## A110601.P17600666032109863390

`(A079536(n+1)+A000203(n+1))*A000005(n+1)`
-/

namespace A110601.P17600666032109863390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A079536 (n + 1) + A000203 (n + 1)) * A000005 (n + 1)

end

end A110601.P17600666032109863390

namespace A110601

/-- `(A079536(n+1)+A000203(n+1))*A000005(n+1)` -/
def P17600666032109863390.Spec : Prop :=
  ∀ n, P17600666032109863390.a n = A110601 (n + 1)

end A110601

/-!
# A110602: Numbers n whose base 4 representations, interpreted as base 10 integers, are semiprimes.

The programs for A110602, the canonical program `A110602.P5511609513092958212` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110602 has offset 1).

The definition of A110602 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 828 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110602.P5511609513092958212

`eq[2, ∑{e}[A007090(n), #]]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A110602

/-- `eq[2, ∑{e}[A007090(n), #]]` -/
def P5511609513092958212.Spec : Prop :=
  ∀ n, (P5511609513092958212.a n : ℤ) = A110602 (n + 1)

theorem P5511609513092958212.correct : P5511609513092958212.Spec := by
  intro n
  simp only [A110602, Nat.add_sub_cancel]

end A110602

/-! ## A110602.P2884615615142104095

`eq[2, A001222(A007090(n+1))]+1`
-/

namespace A110602.P2884615615142104095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007090 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A110602.P2884615615142104095

namespace A110602

/-- `eq[2, A001222(A007090(n+1))]+1` -/
def P2884615615142104095.Spec : Prop :=
  ∀ n, (P2884615615142104095.a n : ℤ) = A110602 (n + 1)

end A110602

/-! ## A110602.P14621317104783704674

`lt[1, A105700(A007090(n))]`
-/

namespace A110602.P14621317104783704674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A007090 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A110602.P14621317104783704674

namespace A110602

/-- `lt[1, A105700(A007090(n))]` -/
def P14621317104783704674.Spec : Prop :=
  ∀ n, (P14621317104783704674.a n : ℤ) = A110602 (n + 1)

end A110602

/-! ## A110602.P3978034732525011945

`eq[4, A001222(A007090(A008574(n)))]`
-/

namespace A110602.P3978034732525011945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007090 (A008574 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110602.P3978034732525011945

namespace A110602

/-- `eq[4, A001222(A007090(A008574(n)))]` -/
def P3978034732525011945.Spec : Prop :=
  ∀ n, (P3978034732525011945.a n : ℤ) = A110602 (n + 1)

end A110602

/-! ## A110602.P3026289625745644445

`eq[2, A226378(A007090(n))%A008458(n)]`
-/

namespace A110602.P3026289625745644445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226378 (A007090 n).toNat) (A008458 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110602.P3026289625745644445

namespace A110602

/-- `eq[2, A226378(A007090(n))%A008458(n)]` -/
def P3026289625745644445.Spec : Prop :=
  ∀ n, (P3026289625745644445.a n : ℤ) = A110602 (n + 1)

end A110602

/-! ## A110602.P4019541767963686105

`eq[A010673(2*n+1), A226378(A007090(n))]`
-/

namespace A110602.P4019541767963686105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A007090 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110602.P4019541767963686105

namespace A110602

/-- `eq[A010673(2*n+1), A226378(A007090(n))]` -/
def P4019541767963686105.Spec : Prop :=
  ∀ n, (P4019541767963686105.a n : ℤ) = A110602 (n + 1)

end A110602

/-! ## A110602.P15184216603540312769

`eq[A020639(2*(n+1)), A226378(A007090(n))]`
-/

namespace A110602.P15184216603540312769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A007090 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110602.P15184216603540312769

namespace A110602

/-- `eq[A020639(2*(n+1)), A226378(A007090(n))]` -/
def P15184216603540312769.Spec : Prop :=
  ∀ n, (P15184216603540312769.a n : ℤ) = A110602 (n + 1)

end A110602

/-!
# A110603: Numbers n whose base 5 representations, interpreted as base 10 integers, are semiprimes.

The programs for A110603, the canonical program `A110603.P11659871771233513267` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110603 has offset 1).

The definition of A110603 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110603.P11659871771233513267

`eq[2, A001222(A007091(n+1))]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A110603

/-- `eq[2, A001222(A007091(n+1))]+1` -/
def P11659871771233513267.Spec : Prop :=
  ∀ n, (P11659871771233513267.a n : ℤ) = A110603 (n + 1)

theorem P11659871771233513267.correct : P11659871771233513267.Spec := by
  intro n
  simp only [A110603, Nat.add_sub_cancel]

end A110603

/-! ## A110603.P6183724710680734031

`eq[3, A001222(A014263(n+2))]+1`
-/

namespace A110603.P6183724710680734031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A014263 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A110603.P6183724710680734031

namespace A110603

/-- `eq[3, A001222(A014263(n+2))]+1` -/
def P6183724710680734031.Spec : Prop :=
  ∀ n, (P6183724710680734031.a n : ℤ) = A110603 (n + 1)

end A110603

/-! ## A110603.P1073833345410998827

`eq[2, A001222(A007091(A233583(n+1)))]`
-/

namespace A110603.P1073833345410998827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007091 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110603.P1073833345410998827

namespace A110603

/-- `eq[2, A001222(A007091(A233583(n+1)))]` -/
def P1073833345410998827.Spec : Prop :=
  ∀ n, (P1073833345410998827.a n : ℤ) = A110603 (n + 1)

end A110603

/-! ## A110603.P958009097252619886

`lt[1, A105700(A007091(n))]`
-/

namespace A110603.P958009097252619886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A110603.P958009097252619886

namespace A110603

/-- `lt[1, A105700(A007091(n))]` -/
def P958009097252619886.Spec : Prop :=
  ∀ n, (P958009097252619886.a n : ℤ) = A110603 (n + 1)

end A110603

/-! ## A110603.P4836274594042332203

`lt[1, A105700(A014263(n+1)/2)]`
-/

namespace A110603.P4836274594042332203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (SequenceMachineLib.roundAway ((A014263 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A110603.P4836274594042332203

namespace A110603

/-- `lt[1, A105700(A014263(n+1)/2)]` -/
def P4836274594042332203.Spec : Prop :=
  ∀ n, (P4836274594042332203.a n : ℤ) = A110603 (n + 1)

end A110603

/-! ## A110603.P5583605465497329981

`eq[2, A226378(A014263(n+1)/2)]`
-/

namespace A110603.P5583605465497329981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (SequenceMachineLib.roundAway ((A014263 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110603.P5583605465497329981

namespace A110603

/-- `eq[2, A226378(A014263(n+1)/2)]` -/
def P5583605465497329981.Spec : Prop :=
  ∀ n, (P5583605465497329981.a n : ℤ) = A110603 (n + 1)

end A110603

/-!
# A110604: Numbers n whose base 6 representations, interpreted as base 10 integers, are semiprimes.

The programs for A110604, there is no canonical definition to state claims against.
-/

/-! ## A110604.P8253815470910291043

`eq[2, ∑{e}[A007092(n), #]]`
-/

namespace A110604.P8253815470910291043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110604.P8253815470910291043

/-! ## A110604.P96286551047140549

`eq[2, A001222(A007092(n+1))]+1`
-/

namespace A110604.P96286551047140549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007092 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A110604.P96286551047140549

/-! ## A110604.P4105886111057645681

`lt[1, A105700(A007092(n))]`
-/

namespace A110604.P4105886111057645681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A110604.P4105886111057645681

/-! ## A110604.P8074180148565322951

`eq[A020639(2*(n+1)), A226378(A007092(n))]`
-/

namespace A110604.P8074180148565322951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110604.P8074180148565322951

/-! ## A110604.P9228696824314479632

`eq[5, A001222(5*A008574(A007092(n)))]`
-/

namespace A110604.P9228696824314479632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (5 * A008574 (A007092 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110604.P9228696824314479632

/-!
# A110605: Numbers n whose base 7 representations, interpreted as base 10 integers, are semiprimes.

The programs for A110605, the canonical program `A110605.P3323886807879027619` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110605 has offset 1).

The definition of A110605 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110605.P3323886807879027619

`eq[2, ∑{e}[A007093(n), #]]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A110605

/-- `eq[2, ∑{e}[A007093(n), #]]` -/
def P3323886807879027619.Spec : Prop :=
  ∀ n, (P3323886807879027619.a n : ℤ) = A110605 (n + 1)

theorem P3323886807879027619.correct : P3323886807879027619.Spec := by
  intro n
  simp only [A110605, Nat.add_sub_cancel]

end A110605

/-! ## A110605.P6623826213312458497

`eq[2, A001222(A007093(n+1))]+1`
-/

namespace A110605.P6623826213312458497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007093 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A110605.P6623826213312458497

namespace A110605

/-- `eq[2, A001222(A007093(n+1))]+1` -/
def P6623826213312458497.Spec : Prop :=
  ∀ n, (P6623826213312458497.a n : ℤ) = A110605 (n + 1)

end A110605

/-! ## A110605.P6513276225047508504

`lt[1, A105700(A007093(n))]`
-/

namespace A110605.P6513276225047508504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A110605.P6513276225047508504

namespace A110605

/-- `lt[1, A105700(A007093(n))]` -/
def P6513276225047508504.Spec : Prop :=
  ∀ n, (P6513276225047508504.a n : ℤ) = A110605 (n + 1)

end A110605

/-! ## A110605.P9683026106074525797

`eq[A226378(A007093(n))², A040002(n)]`
-/

namespace A110605.P9683026106074525797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A007093 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110605.P9683026106074525797

namespace A110605

/-- `eq[A226378(A007093(n))², A040002(n)]` -/
def P9683026106074525797.Spec : Prop :=
  ∀ n, (P9683026106074525797.a n : ℤ) = A110605 (n + 1)

end A110605

/-! ## A110605.P3623732209883186679

`eq[A107279(2*n), A226378(A007093(n))]`
-/

namespace A110605.P3623732209883186679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110605.P3623732209883186679

namespace A110605

/-- `eq[A107279(2*n), A226378(A007093(n))]` -/
def P3623732209883186679.Spec : Prop :=
  ∀ n, (P3623732209883186679.a n : ℤ) = A110605 (n + 1)

end A110605

/-! ## A110605.P12009712759027765339

`eq[A010673(2*n+1), A226378(A007093(n))]`
-/

namespace A110605.P12009712759027765339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110605.P12009712759027765339

namespace A110605

/-- `eq[A010673(2*n+1), A226378(A007093(n))]` -/
def P12009712759027765339.Spec : Prop :=
  ∀ n, (P12009712759027765339.a n : ℤ) = A110605 (n + 1)

end A110605

/-! ## A110605.P14769119631641454834

`eq[A020639(2*(n+1)), A226378(A007093(n))]`
-/

namespace A110605.P14769119631641454834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110605.P14769119631641454834

namespace A110605

/-- `eq[A020639(2*(n+1)), A226378(A007093(n))]` -/
def P14769119631641454834.Spec : Prop :=
  ∀ n, (P14769119631641454834.a n : ℤ) = A110605 (n + 1)

end A110605

/-!
# A110606: Numbers n whose base 8 representations, interpreted as base 10 integers, are semiprimes.

The programs for A110606, the canonical program `A110606.P3509663332256867404` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110606 has offset 1).

The definition of A110606 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2446 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110606.P3509663332256867404

`eq[2, A001222(A007094(n+1))]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A110606

/-- `eq[2, A001222(A007094(n+1))]+1` -/
def P3509663332256867404.Spec : Prop :=
  ∀ n, (P3509663332256867404.a n : ℤ) = A110606 (n + 1)

theorem P3509663332256867404.correct : P3509663332256867404.Spec := by
  intro n
  simp only [A110606, Nat.add_sub_cancel]

end A110606

/-! ## A110606.P17223835019716923594

`eq[2, A001222(A007095(A037477(n+1)))]+1`
-/

namespace A110606.P17223835019716923594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007095 (A037477 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A110606.P17223835019716923594

namespace A110606

/-- `eq[2, A001222(A007095(A037477(n+1)))]+1` -/
def P17223835019716923594.Spec : Prop :=
  ∀ n, (P17223835019716923594.a n : ℤ) = A110606 (n + 1)

end A110606

/-! ## A110606.P11768095144354066312

`lt[1, A105700(A007094(n))]`
-/

namespace A110606.P11768095144354066312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A110606.P11768095144354066312

namespace A110606

/-- `lt[1, A105700(A007094(n))]` -/
def P11768095144354066312.Spec : Prop :=
  ∀ n, (P11768095144354066312.a n : ℤ) = A110606 (n + 1)

end A110606

/-! ## A110606.P14036194743231283211

`eq[A226378(A007094(n))², A040002(n)]`
-/

namespace A110606.P14036194743231283211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A007094 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110606.P14036194743231283211

namespace A110606

/-- `eq[A226378(A007094(n))², A040002(n)]` -/
def P14036194743231283211.Spec : Prop :=
  ∀ n, (P14036194743231283211.a n : ℤ) = A110606 (n + 1)

end A110606

/-! ## A110606.P16477708867138772617

`eq[A020639(2*(n+1)), A226378(A007094(n))]`
-/

namespace A110606.P16477708867138772617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110606.P16477708867138772617

namespace A110606

/-- `eq[A020639(2*(n+1)), A226378(A007094(n))]` -/
def P16477708867138772617.Spec : Prop :=
  ∀ n, (P16477708867138772617.a n : ℤ) = A110606 (n + 1)

end A110606

/-!
# A110607: Numbers n whose base 9 representations, interpreted as base 10 integers, are semiprimes.

The programs for A110607, the canonical program `A110607.P8308537065448000621` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110607 has offset 1).

The definition of A110607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2413 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110607.P8308537065448000621

`eq[2, ∑{e}[A007095(n), #]]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A110607

/-- `eq[2, ∑{e}[A007095(n), #]]` -/
def P8308537065448000621.Spec : Prop :=
  ∀ n, (P8308537065448000621.a n : ℤ) = A110607 (n + 1)

theorem P8308537065448000621.correct : P8308537065448000621.Spec := by
  intro n
  simp only [A110607, Nat.add_sub_cancel]

end A110607

/-! ## A110607.P5597042136032994983

`eq[2, A001222(A007095(n+1))]+1`
-/

namespace A110607.P5597042136032994983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007095 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A110607.P5597042136032994983

namespace A110607

/-- `eq[2, A001222(A007095(n+1))]+1` -/
def P5597042136032994983.Spec : Prop :=
  ∀ n, (P5597042136032994983.a n : ℤ) = A110607 (n + 1)

end A110607

/-! ## A110607.P8057792385205554598

`eq[2, A105700(A007095(n))]`
-/

namespace A110607.P8057792385205554598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110607.P8057792385205554598

namespace A110607

/-- `eq[2, A105700(A007095(n))]` -/
def P8057792385205554598.Spec : Prop :=
  ∀ n, (P8057792385205554598.a n : ℤ) = A110607 (n + 1)

end A110607

/-! ## A110607.P11074609757851992864

`eq[A040008(2*n+1), A226378(A007095(n))]`
-/

namespace A110607.P11074609757851992864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040008 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110607.P11074609757851992864

namespace A110607

/-- `eq[A040008(2*n+1), A226378(A007095(n))]` -/
def P11074609757851992864.Spec : Prop :=
  ∀ n, (P11074609757851992864.a n : ℤ) = A110607 (n + 1)

end A110607

/-! ## A110607.P2081868472368056602

`eq[A010673(2*n+1), A226378(A007095(n))]`
-/

namespace A110607.P2081868472368056602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110607.P2081868472368056602

namespace A110607

/-- `eq[A010673(2*n+1), A226378(A007095(n))]` -/
def P2081868472368056602.Spec : Prop :=
  ∀ n, (P2081868472368056602.a n : ℤ) = A110607 (n + 1)

end A110607

/-!
# A110608: Number triangle T(n,k) = binomial(n,k)*binomial(2n,n-k).

The programs for A110608, the canonical program `A110608.P11237977871126013509` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110608 has offset 0).

The definition of A110608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7786 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110608.P11237977871126013509

`A007318(n)*A094527(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A110608

/-- `A007318(n)*A094527(n)` -/
def P11237977871126013509.Spec : Prop :=
  ∀ n, P11237977871126013509.a n = A110608 n

theorem P11237977871126013509.correct : P11237977871126013509.Spec := by
  intro n
  simp only [A110608]

end A110608

/-! ## A110608.P16946222290376717870

`A132749(n)*A380113(n)`
-/

namespace A110608.P16946222290376717870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 n * A380113 n

end

end A110608.P16946222290376717870

namespace A110608

/-- `A132749(n)*A380113(n)` -/
def P16946222290376717870.Spec : Prop :=
  ∀ n, P16946222290376717870.a n = A110608 n

end A110608

/-! ## A110608.P6771307553363691286

`Δ[A102363(n)]*A094527(n)`
-/

namespace A110608.P6771307553363691286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A094527 n

end

end A110608.P6771307553363691286

namespace A110608

/-- `Δ[A102363(n)]*A094527(n)` -/
def P6771307553363691286.Spec : Prop :=
  ∀ n, P6771307553363691286.a n = A110608 n

end A110608

/-! ## A110608.P9194429137169888916

`(A014473(n)+1)*A094527(n)`
-/

namespace A110608.P9194429137169888916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A094527 n

end

end A110608.P9194429137169888916

namespace A110608

/-- `(A014473(n)+1)*A094527(n)` -/
def P9194429137169888916.Spec : Prop :=
  ∀ n, P9194429137169888916.a n = A110608 n

end A110608

/-! ## A110608.P13966558828929669303

`A028326(n)/2*A094527(n)`
-/

namespace A110608.P13966558828929669303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A094527 n : ℚ)

end

end A110608.P13966558828929669303

namespace A110608

/-- `A028326(n)/2*A094527(n)` -/
def P13966558828929669303.Spec : Prop :=
  ∀ n, P13966558828929669303.a n = (A110608 n : ℚ)

end A110608

/-! ## A110608.P17889197061666662126

`A053122(n)/A111125(n)*A113187(n)*A007318(n)`
-/

namespace A110608.P17889197061666662126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053122 n : ℚ) / (A111125 n : ℚ) * (A113187 n : ℚ) * (A007318 n : ℚ)

end

end A110608.P17889197061666662126

namespace A110608

/-- `A053122(n)/A111125(n)*A113187(n)*A007318(n)` -/
def P17889197061666662126.Spec : Prop :=
  ∀ n, P17889197061666662126.a n = (A110608 n : ℚ)

end A110608

/-! ## A110608.P4649596325827814826

`A004736(n+1)*A286784(n)`
-/

namespace A110608.P4649596325827814826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A286784 n

end

end A110608.P4649596325827814826

namespace A110608

/-- `A004736(n+1)*A286784(n)` -/
def P4649596325827814826.Spec : Prop :=
  ∀ n, P4649596325827814826.a n = A110608 n

end A110608

/-! ## A110608.P12868745889684417106

`A002260(A038722(n+1))*A286784(n)`
-/

namespace A110608.P12868745889684417106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A038722 (n + 1)).toNat * A286784 n

end

end A110608.P12868745889684417106

namespace A110608

/-- `A002260(A038722(n+1))*A286784(n)` -/
def P12868745889684417106.Spec : Prop :=
  ∀ n, P12868745889684417106.a n = A110608 n

end A110608

/-! ## A110608.P18323449878969529589

`A007318(n)*A034869(A061885(n))`
-/

namespace A110608.P18323449878969529589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A034869 (A061885 n).toNat

end

end A110608.P18323449878969529589

namespace A110608

/-- `A007318(n)*A034869(A061885(n))` -/
def P18323449878969529589.Spec : Prop :=
  ∀ n, P18323449878969529589.a n = A110608 n

end A110608

/-! ## A110608.P3089373838226639894

`A094527(n)/A008949(n)*A167024(n)`
-/

namespace A110608.P3089373838226639894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094527 n : ℚ) / (A008949 n : ℚ) * (A167024 n : ℚ)

end

end A110608.P3089373838226639894

namespace A110608

/-- `A094527(n)/A008949(n)*A167024(n)` -/
def P3089373838226639894.Spec : Prop :=
  ∀ n, P3089373838226639894.a n = (A110608 n : ℚ)

end A110608

/-! ## A110608.P4769378638064927843

`A069466(n)/A046899(n)`
-/

namespace A110608.P4769378638064927843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069466 n : ℚ) / (A046899 n : ℚ)

end

end A110608.P4769378638064927843

namespace A110608

/-- `A069466(n)/A046899(n)` -/
def P4769378638064927843.Spec : Prop :=
  ∀ n, P4769378638064927843.a n = (A110608 n : ℚ)

end A110608

/-! ## A110608.P6192184023395707956

`A007318(n)*A007318(lt[A159864(n), 1])`
-/

namespace A110608.P6192184023395707956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159864 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A007318 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A110608.P6192184023395707956

namespace A110608

/-- `A007318(n)*A007318(lt[A159864(n), 1])` -/
def P6192184023395707956.Spec : Prop :=
  ∀ n, P6192184023395707956.a n = A110608 n

end A110608

/-! ## A110608.P16380248765115058696

`A164961(n)/A377660(n)`
-/

namespace A110608.P16380248765115058696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164961 n : ℚ) / (A377660 n : ℚ)

end

end A110608.P16380248765115058696

namespace A110608

/-- `A164961(n)/A377660(n)` -/
def P16380248765115058696.Spec : Prop :=
  ∀ n, P16380248765115058696.a n = (A110608 n : ℚ)

end A110608

/-! ## A110608.P10424110309736026660

`A014682(A028326(n))*A094527(n)`
-/

namespace A110608.P10424110309736026660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A028326 n).toNat * A094527 n

end

end A110608.P10424110309736026660

namespace A110608

/-- `A014682(A028326(n))*A094527(n)` -/
def P10424110309736026660.Spec : Prop :=
  ∀ n, P10424110309736026660.a n = A110608 n

end A110608

/-! ## A110608.P13158463086834130584

`A008619(A109128(n))*A094527(n)`
-/

namespace A110608.P13158463086834130584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A109128 n).toNat * A094527 n

end

end A110608.P13158463086834130584

namespace A110608

/-- `A008619(A109128(n))*A094527(n)` -/
def P13158463086834130584.Spec : Prop :=
  ∀ n, P13158463086834130584.a n = A110608 n

end A110608

/-!
# A110609: a(n) = n * binomial(2*n, n-1).

The programs for A110609, the canonical program `A110609.P15836528026083436779` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110609 has offset 0).

The definition of A110609 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110609.P15836528026083436779

`n²*A000108(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A110609

/-- `n²*A000108(n)` -/
def P15836528026083436779.Spec : Prop :=
  ∀ n, P15836528026083436779.a n = A110609 n

theorem P15836528026083436779.correct : P15836528026083436779.Spec := by
  intro n
  simp only [A110609]

end A110609

/-! ## A110609.P11012430454357641274

`A002736(n)/(n+1)`
-/

namespace A110609.P11012430454357641274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002736 n : ℚ) / (n + 1 : ℚ)

end

end A110609.P11012430454357641274

namespace A110609

/-- `A002736(n)/(n+1)` -/
def P11012430454357641274.Spec : Prop :=
  ∀ n, P11012430454357641274.a n = (A110609 n : ℚ)

end A110609

/-! ## A110609.P2692719113832626800

`n*A001791(n)`
-/

namespace A110609.P2692719113832626800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001791 n

end

end A110609.P2692719113832626800

namespace A110609

/-- `n*A001791(n)` -/
def P2692719113832626800.Spec : Prop :=
  ∀ n, P2692719113832626800.a n = A110609 n

end A110609

/-! ## A110609.P7489011231255529107

`A191522(Δ[n²])`
-/

namespace A110609.P7489011231255529107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191522 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A110609.P7489011231255529107

namespace A110609

/-- `A191522(Δ[n²])` -/
def P7489011231255529107.Spec : Prop :=
  ∀ n, P7489011231255529107.a n = A110609 n

end A110609

/-! ## A110609.P2600999944586894221

`n*Δ[A279561(n)]`
-/

namespace A110609.P2600999944586894221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A110609.P2600999944586894221

namespace A110609

/-- `n*Δ[A279561(n)]` -/
def P2600999944586894221.Spec : Prop :=
  ∀ n, P2600999944586894221.a n = A110609 n

end A110609

/-! ## A110609.P1474525725409104175

`n*(A323229(n)-1)`
-/

namespace A110609.P1474525725409104175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A323229 n - 1)

end

end A110609.P1474525725409104175

namespace A110609

/-- `n*(A323229(n)-1)` -/
def P1474525725409104175.Spec : Prop :=
  ∀ n, P1474525725409104175.a n = A110609 n

end A110609

/-! ## A110609.P4584428999703301204

`n*A037952(2*n)`
-/

namespace A110609.P4584428999703301204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A037952 (2 * n)

end

end A110609.P4584428999703301204

namespace A110609

/-- `n*A037952(2*n)` -/
def P4584428999703301204.Spec : Prop :=
  ∀ n, P4584428999703301204.a n = A110609 n

end A110609

/-! ## A110609.P2408616649877005991

`n*A037955(2*n)`
-/

namespace A110609.P2408616649877005991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A037955 (2 * n)

end

end A110609.P2408616649877005991

namespace A110609

/-- `n*A037955(2*n)` -/
def P2408616649877005991.Spec : Prop :=
  ∀ n, P2408616649877005991.a n = A110609 n

end A110609

/-! ## A110609.P533296804380574731

`n*A237884(2*n)`
-/

namespace A110609.P533296804380574731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A237884 (2 * n)

end

end A110609.P533296804380574731

namespace A110609

/-- `n*A237884(2*n)` -/
def P533296804380574731.Spec : Prop :=
  ∀ n, P533296804380574731.a n = A110609 n

end A110609

/-! ## A110609.P3651128880904276452

`n/2*A162551(n)`
-/

namespace A110609.P3651128880904276452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A162551 n : ℚ)

end

end A110609.P3651128880904276452

namespace A110609

/-- `n/2*A162551(n)` -/
def P3651128880904276452.Spec : Prop :=
  ∀ n, P3651128880904276452.a n = (A110609 n : ℚ)

end A110609

/-! ## A110609.P12133966248405946269

`n/3*A062561(n)`
-/

namespace A110609.P12133966248405946269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A062561 n : ℚ)

end

end A110609.P12133966248405946269

namespace A110609

/-- `n/3*A062561(n)` -/
def P12133966248405946269.Spec : Prop :=
  ∀ n, P12133966248405946269.a n = (A110609 n : ℚ)

end A110609

/-! ## A110609.P14517242643277576302

`abs(n²*A168491(n))`
-/

namespace A110609.P14517242643277576302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) * A168491 n|

end

end A110609.P14517242643277576302

namespace A110609

/-- `abs(n²*A168491(n))` -/
def P14517242643277576302.Spec : Prop :=
  ∀ n, P14517242643277576302.a n = A110609 n

end A110609

/-! ## A110609.P9311124728579666297

`n²*Δ[A155587(n)]`
-/

namespace A110609.P9311124728579666297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A110609.P9311124728579666297

namespace A110609

/-- `n²*Δ[A155587(n)]` -/
def P9311124728579666297.Spec : Prop :=
  ∀ n, P9311124728579666297.a n = A110609 n

end A110609

/-! ## A110609.P14834498749751363362

`abs(n*A158500(n+1))`
-/

namespace A110609.P14834498749751363362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A158500 (n + 1)|

end

end A110609.P14834498749751363362

namespace A110609

/-- `abs(n*A158500(n+1))` -/
def P14834498749751363362.Spec : Prop :=
  ∀ n, P14834498749751363362.a n = A110609 n

end A110609

/-! ## A110609.P18317054295497425503

`n²*A120588(n+1)`
-/

namespace A110609.P18317054295497425503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A120588 (n + 1)

end

end A110609.P18317054295497425503

namespace A110609

/-- `n²*A120588(n+1)` -/
def P18317054295497425503.Spec : Prop :=
  ∀ n, P18317054295497425503.a n = A110609 n

end A110609

/-! ## A110609.P1541802156565271273

`(A120304(n)+2)*n²`
-/

namespace A110609.P1541802156565271273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A120304 n + 2) * (n ^ 2 : ℤ)

end

end A110609.P1541802156565271273

namespace A110609

/-- `(A120304(n)+2)*n²` -/
def P1541802156565271273.Spec : Prop :=
  ∀ n, P1541802156565271273.a n = A110609 n

end A110609

/-! ## A110609.P4321191856084234295

`n²*A028303(2*n)`
-/

namespace A110609.P4321191856084234295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A028303 (2 * n)

end

end A110609.P4321191856084234295

namespace A110609

/-- `n²*A028303(2*n)` -/
def P4321191856084234295.Spec : Prop :=
  ∀ n, P4321191856084234295.a n = A110609 n

end A110609

/-! ## A110609.P961871267927207894

`n²*A028304(2*n)`
-/

namespace A110609.P961871267927207894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A028304 (2 * n)

end

end A110609.P961871267927207894

namespace A110609

/-- `n²*A028304(2*n)` -/
def P961871267927207894.Spec : Prop :=
  ∀ n, P961871267927207894.a n = A110609 n

end A110609

/-! ## A110609.P15145471489120981346

`n²*A057977(2*n)`
-/

namespace A110609.P15145471489120981346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A057977 (2 * n)

end

end A110609.P15145471489120981346

namespace A110609

/-- `n²*A057977(2*n)` -/
def P15145471489120981346.Spec : Prop :=
  ∀ n, P15145471489120981346.a n = A110609 n

end A110609

/-! ## A110609.P1624187749666974449

`n²*A099363(2*n)`
-/

namespace A110609.P1624187749666974449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A099363 (2 * n)

end

end A110609.P1624187749666974449

namespace A110609

/-- `n²*A099363(2*n)` -/
def P1624187749666974449.Spec : Prop :=
  ∀ n, P1624187749666974449.a n = A110609 n

end A110609

/-!
# A110610: Maximal value of sum(p(i)p(i+1),i=1..n), where p(n+1)=p(1), as p ranges over all permutations of {1,2,...,n}.

The programs for A110610, the canonical program `A110610.P4770110837239144040` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110610 has offset 1).

The definition of A110610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110610.P7477791337771521643

`∑[floor((n+1)²-atan(n))]`
-/

namespace A110610.P7477791337771521643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℝ) - Real.arctan (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110610.P7477791337771521643

namespace A110610

/-- `∑[floor((n+1)²-atan(n))]` -/
def P7477791337771521643.Spec : Prop :=
  ∀ n, P7477791337771521643.a n = A110610 (n + 1)

end A110610

/-! ## A110610.P11127718244431839782

`∑[(n+1)²-ceil(atan(n))]`
-/

namespace A110610.P11127718244431839782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ⌈Real.arctan (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110610.P11127718244431839782

namespace A110610

/-- `∑[(n+1)²-ceil(atan(n))]` -/
def P11127718244431839782.Spec : Prop :=
  ∀ n, P11127718244431839782.a n = A110610 (n + 1)

end A110610

/-! ## A110610.P5891177717620051560

`n²+∑[char[1]+n²]+1`
-/

namespace A110610.P5891177717620051560
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A110610.P5891177717620051560

namespace A110610

/-- `n²+∑[char[1]+n²]+1` -/
def P5891177717620051560.Spec : Prop :=
  ∀ n, (P5891177717620051560.a n : ℤ) = A110610 (n + 1)

end A110610

/-! ## A110610.P4770110837239144040

`∑[record[abs(xor(1, n-2))]+n²]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A110610

/-- `∑[record[abs(xor(1, n-2))]+n²]` -/
def P4770110837239144040.Spec : Prop :=
  ∀ n, P4770110837239144040.a n = A110610 (n + 1)

theorem P4770110837239144040.correct : P4770110837239144040.Spec := by
  intro n
  simp only [A110610, Nat.add_sub_cancel]

end A110610

/-! ## A110610.P16217322657313432802

`∑[∑[a(n-1)+2]]` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7`
-/

namespace A110610.P16217322657313432802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 7] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110610.P16217322657313432802

namespace A110610

/-- `∑[∑[a(n-1)+2]]` -/
def P16217322657313432802.Spec : Prop :=
  ∀ n, (P16217322657313432802.a n : ℤ) = A110610 (n + 1)

end A110610

/-! ## A110610.P14346435860597712182

`∑[C(2, n+1)+(n+1)²-2]`
-/

namespace A110610.P14346435860597712182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 1) : ℤ) + (((n + 1) ^ 2 : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110610.P14346435860597712182

namespace A110610

/-- `∑[C(2, n+1)+(n+1)²-2]` -/
def P14346435860597712182.Spec : Prop :=
  ∀ n, P14346435860597712182.a n = A110610 (n + 1)

end A110610

/-! ## A110610.P3437293870339056875

`∑[∑[2*n+1]+C(2, n+1)-2]`
-/

namespace A110610.P3437293870339056875
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + ((Nat.choose 2 (n + 1) : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110610.P3437293870339056875

namespace A110610

/-- `∑[∑[2*n+1]+C(2, n+1)-2]` -/
def P3437293870339056875.Spec : Prop :=
  ∀ n, P3437293870339056875.a n = A110610 (n + 1)

end A110610

/-! ## A110610.P664323657311704815

`∑[A004275(n)+n²+1]`
-/

namespace A110610.P664323657311704815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n + (n ^ 2 + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110610.P664323657311704815

namespace A110610

/-- `∑[A004275(n)+n²+1]` -/
def P664323657311704815.Spec : Prop :=
  ∀ n, P664323657311704815.a n = A110610 (n + 1)

end A110610

/-! ## A110610.P4000360178851130259

`∑[A004280(n+1)+n²]`
-/

namespace A110610.P4000360178851130259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110610.P4000360178851130259

namespace A110610

/-- `∑[A004280(n+1)+n²]` -/
def P4000360178851130259.Spec : Prop :=
  ∀ n, P4000360178851130259.a n = A110610 (n + 1)

end A110610

/-! ## A110610.P16879888732226330516

`∑[(n+1)²-A130130(n)]`
-/

namespace A110610.P16879888732226330516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A130130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110610.P16879888732226330516

namespace A110610

/-- `∑[(n+1)²-A130130(n)]` -/
def P16879888732226330516.Spec : Prop :=
  ∀ n, P16879888732226330516.a n = A110610 (n + 1)

end A110610

/-! ## A110610.P2975365063888974731

`∑[A002061(n+1)+n-ceil(atan(n))]`
-/

namespace A110610.P2975365063888974731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n + 1) + ((n : ℤ) - ⌈Real.arctan (n : ℝ)⌉)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110610.P2975365063888974731

namespace A110610

/-- `∑[A002061(n+1)+n-ceil(atan(n))]` -/
def P2975365063888974731.Spec : Prop :=
  ∀ n, P2975365063888974731.a n = A110610 (n + 1)

end A110610

/-! ## A110610.P4853273242286794082

`∑[∑[2*n+1-A130716(n)]+1]`
-/

namespace A110610.P4853273242286794082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A130716 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110610.P4853273242286794082

namespace A110610

/-- `∑[∑[2*n+1-A130716(n)]+1]` -/
def P4853273242286794082.Spec : Prop :=
  ∀ n, P4853273242286794082.a n = A110610 (n + 1)

end A110610

/-! ## A110610.P8150436185021934579

`∑[∑[A326178(A028310(n))+n]]`
-/

namespace A110610.P8150436185021934579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A028310 n).toNat + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110610.P8150436185021934579

namespace A110610

/-- `∑[∑[A326178(A028310(n))+n]]` -/
def P8150436185021934579.Spec : Prop :=
  ∀ n, P8150436185021934579.a n = A110610 (n + 1)

end A110610

/-! ## A110610.P1618390872507433789

`∑[A082562(n+1)-1]`
-/

namespace A110610.P1618390872507433789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082562 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110610.P1618390872507433789

namespace A110610

/-- `∑[A082562(n+1)-1]` -/
def P1618390872507433789.Spec : Prop :=
  ∀ n, P1618390872507433789.a n = A110610 (n + 1)

end A110610

/-! ## A110610.P4790032803149788605

`∑[A004274(n+1)+n²]`
-/

namespace A110610.P4790032803149788605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110610.P4790032803149788605

namespace A110610

/-- `∑[A004274(n+1)+n²]` -/
def P4790032803149788605.Spec : Prop :=
  ∀ n, P4790032803149788605.a n = A110610 (n + 1)

end A110610

/-! ## A110610.P13390069982346947775

`∑[(n+2)²-A267881(n+2)]`
-/

namespace A110610.P13390069982346947775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A267881 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110610.P13390069982346947775

namespace A110610

/-- `∑[(n+2)²-A267881(n+2)]` -/
def P13390069982346947775.Spec : Prop :=
  ∀ n, P13390069982346947775.a n = A110610 (n + 1)

end A110610

/-! ## A110610.P7429934577299516987

`∑[record[A141310(n)]+n²]`
-/

namespace A110610.P7429934577299516987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110610.P7429934577299516987

namespace A110610

/-- `∑[record[A141310(n)]+n²]` -/
def P7429934577299516987.Spec : Prop :=
  ∀ n, P7429934577299516987.a n = A110610 (n + 1)

end A110610

/-! ## A110610.P10068955334820839751

`∑[record[A029579(n)]+n²]`
-/

namespace A110610.P10068955334820839751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110610.P10068955334820839751

namespace A110610

/-- `∑[record[A029579(n)]+n²]` -/
def P10068955334820839751.Spec : Prop :=
  ∀ n, P10068955334820839751.a n = A110610 (n + 1)

end A110610

/-! ## A110610.P14477917428920229731

`∑[record[A057174(n)]+n²]`
-/

namespace A110610.P14477917428920229731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057174 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110610.P14477917428920229731

namespace A110610

/-- `∑[record[A057174(n)]+n²]` -/
def P14477917428920229731.Spec : Prop :=
  ∀ n, P14477917428920229731.a n = A110610 (n + 1)

end A110610

/-! ## A110610.P4206268843191418209

`∑[A324388(A111284(n+1))+n²]`
-/

namespace A110610.P4206268843191418209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324388 (A111284 (n + 1)).toNat + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110610.P4206268843191418209

namespace A110610

/-- `∑[A324388(A111284(n+1))+n²]` -/
def P4206268843191418209.Spec : Prop :=
  ∀ n, P4206268843191418209.a n = A110610 (n + 1)

end A110610

/-!
# A110611: Minimal value of Sum_{i=1..n} p(i)*p(i+1), where p(n+1)=p(1), as p ranges over all permutations of {1,2,...,n}.

The programs for A110611, the canonical program `A110611.P7816934098610963199` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110611 has offset 1).

The definition of A110611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110611.P7816934098610963199

`∑[∑[abs(xor(n, -2))]]-1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A110611

/-- `∑[∑[abs(xor(n, -2))]]-1` -/
def P7816934098610963199.Spec : Prop :=
  ∀ n, P7816934098610963199.a n = A110611 (n + 1)

theorem P7816934098610963199.correct : P7816934098610963199.Spec := by
  intro n
  simp only [A110611, Nat.add_sub_cancel]

end A110611

/-! ## A110611.P5402270665917639196

`∑[∑[xor(1, n)+1]]-1`
-/

namespace A110611.P5402270665917639196
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A110611.P5402270665917639196

namespace A110611

/-- `∑[∑[xor(1, n)+1]]-1` -/
def P5402270665917639196.Spec : Prop :=
  ∀ n, P5402270665917639196.a n = A110611 (n + 1)

end A110611

/-! ## A110611.P2974050898271413169

`∑[∑[n]+or(1, n)]+n`
-/

namespace A110611.P2974050898271413169
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A110611.P2974050898271413169

namespace A110611

/-- `∑[∑[n]+or(1, n)]+n` -/
def P2974050898271413169.Spec : Prop :=
  ∀ n, (P2974050898271413169.a n : ℤ) = A110611 (n + 1)

end A110611

/-! ## A110611.P5262341129179844932

`∑[∑[xor(1, n)]+n]+n`
-/

namespace A110611.P5262341129179844932
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A110611.P5262341129179844932

namespace A110611

/-- `∑[∑[xor(1, n)]+n]+n` -/
def P5262341129179844932.Spec : Prop :=
  ∀ n, (P5262341129179844932.a n : ℤ) = A110611 (n + 1)

end A110611

/-! ## A110611.P2909452488383445073

`floor(n/2)+C(n+3, 3)`
-/

namespace A110611.P2909452488383445073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + (Nat.choose (n + 3) 3 : ℤ)

end

end A110611.P2909452488383445073

namespace A110611

/-- `floor(n/2)+C(n+3, 3)` -/
def P2909452488383445073.Spec : Prop :=
  ∀ n, P2909452488383445073.a n = A110611 (n + 1)

end A110611

/-! ## A110611.P11263824487096354491

`floor(∑[∑[n+1]]+n/2)`
-/

namespace A110611.P11263824487096354491
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (n : ℚ) / 2⌋

end

end A110611.P11263824487096354491

namespace A110611

/-- `floor(∑[∑[n+1]]+n/2)` -/
def P11263824487096354491.Spec : Prop :=
  ∀ n, P11263824487096354491.a n = A110611 (n + 1)

end A110611

/-! ## A110611.P8008852303345248068

`a(n-1)-∑[xor(n, -2)]` with `a(0)=1`
-/

namespace A110611.P8008852303345248068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110611.P8008852303345248068

namespace A110611

/-- `a(n-1)-∑[xor(n, -2)]` -/
def P8008852303345248068.Spec : Prop :=
  ∀ n, P8008852303345248068.a n = A110611 (n + 1)

end A110611

/-! ## A110611.P7202043626530608704

`∑[∑[n+1]-n%2]+n`
-/

namespace A110611.P7202043626530608704
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A110611.P7202043626530608704

namespace A110611

/-- `∑[∑[n+1]-n%2]+n` -/
def P7202043626530608704.Spec : Prop :=
  ∀ n, P7202043626530608704.a n = A110611 (n + 1)

end A110611

/-! ## A110611.P10502257699071241269

`∑[∑[n+1]-and(1, n)]+n`
-/

namespace A110611.P10502257699071241269
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A110611.P10502257699071241269

namespace A110611

/-- `∑[∑[n+1]-and(1, n)]+n` -/
def P10502257699071241269.Spec : Prop :=
  ∀ n, P10502257699071241269.a n = A110611 (n + 1)

end A110611

/-! ## A110611.P18376878834116777301

`∑[∑{p}[n, val(#, 2)]+∑[n+1]]`
-/

namespace A110611.P18376878834116777301
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 2 + ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110611.P18376878834116777301

namespace A110611

/-- `∑[∑{p}[n, val(#, 2)]+∑[n+1]]` -/
def P18376878834116777301.Spec : Prop :=
  ∀ n, (P18376878834116777301.a n : ℤ) = A110611 (n + 1)

end A110611

/-! ## A110611.P9671505046992033680

`∑[∑[a(n-2)+2]]` with `a(0)=1, a(1)=2, a(2)=4, a(3)=3`
-/

namespace A110611.P9671505046992033680
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 3] fun n f2 =>
  f2 (n - 2) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110611.P9671505046992033680

namespace A110611

/-- `∑[∑[a(n-2)+2]]` -/
def P9671505046992033680.Spec : Prop :=
  ∀ n, (P9671505046992033680.a n : ℤ) = A110611 (n + 1)

end A110611

/-! ## A110611.P1279343129221686728

`ceil(C(n+3, 3)+(n-1)/2)`
-/

namespace A110611.P1279343129221686728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 3) 3 : ℚ) + ((n : ℤ) - 1 : ℚ) / 2⌉

end

end A110611.P1279343129221686728

namespace A110611

/-- `ceil(C(n+3, 3)+(n-1)/2)` -/
def P1279343129221686728.Spec : Prop :=
  ∀ n, P1279343129221686728.a n = A110611 (n + 1)

end A110611

/-! ## A110611.P6654447939619482143

`round(C(n+3, 3)+(n-1)/2)`
-/

namespace A110611.P6654447939619482143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 3) 3 : ℚ) + ((n : ℤ) - 1 : ℚ) / 2)

end

end A110611.P6654447939619482143

namespace A110611

/-- `round(C(n+3, 3)+(n-1)/2)` -/
def P6654447939619482143.Spec : Prop :=
  ∀ n, P6654447939619482143.a n = A110611 (n + 1)

end A110611

/-! ## A110611.P5215101064917115918

`∑[char[lcm(2, n+1)]+∑[n+1]]`
-/

namespace A110611.P5215101064917115918
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110611.P5215101064917115918

namespace A110611

/-- `∑[char[lcm(2, n+1)]+∑[n+1]]` -/
def P5215101064917115918.Spec : Prop :=
  ∀ n, (P5215101064917115918.a n : ℤ) = A110611 (n + 1)

end A110611

/-! ## A110611.P7780997038064793598

`(n+1)²+a(n-2)+1` with `a(0)=1, a(1)=4`
-/

namespace A110611.P7780997038064793598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  (n + 1) ^ 2 + (a (n - 2) + 1)

end

end A110611.P7780997038064793598

namespace A110611

/-- `(n+1)²+a(n-2)+1` -/
def P7780997038064793598.Spec : Prop :=
  ∀ n, (P7780997038064793598.a n : ℤ) = A110611 (n + 1)

end A110611

/-! ## A110611.P15394455328978348229

`∑[∑[n+1]+gcd(2, n)]-(n+2)`
-/

namespace A110611.P15394455328978348229
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 2 : ℤ)

end

end A110611.P15394455328978348229

namespace A110611

/-- `∑[∑[n+1]+gcd(2, n)]-(n+2)` -/
def P15394455328978348229.Spec : Prop :=
  ∀ n, P15394455328978348229.a n = A110611 (n + 1)

end A110611

/-! ## A110611.P14698938067645678438

`∑[∑[∑[2-a(n-1)]]]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=-1`
-/

namespace A110611.P14698938067645678438
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, -1] fun n f3 =>
  2 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110611.P14698938067645678438

namespace A110611

/-- `∑[∑[∑[2-a(n-1)]]]` -/
def P14698938067645678438.Spec : Prop :=
  ∀ n, P14698938067645678438.a n = A110611 (n + 1)

end A110611

/-! ## A110611.P2931760740326947240

`a(n-2)+n*(n+2)+2` with `a(0)=1, a(1)=4`
-/

namespace A110611.P2931760740326947240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + (n * (n + 2) + 2)

end

end A110611.P2931760740326947240

namespace A110611

/-- `a(n-2)+n*(n+2)+2` -/
def P2931760740326947240.Spec : Prop :=
  ∀ n, (P2931760740326947240.a n : ℤ) = A110611 (n + 1)

end A110611

/-! ## A110611.P12711452658300985779

`∑[A114113(n+1)]`
-/

namespace A110611.P12711452658300985779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110611.P12711452658300985779

namespace A110611

/-- `∑[A114113(n+1)]` -/
def P12711452658300985779.Spec : Prop :=
  ∀ n, P12711452658300985779.a n = A110611 (n + 1)

end A110611

/-! ## A110611.P5977540248901535656

`∑[A084265(n)]+n`
-/

namespace A110611.P5977540248901535656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A110611.P5977540248901535656

namespace A110611

/-- `∑[A084265(n)]+n` -/
def P5977540248901535656.Spec : Prop :=
  ∀ n, P5977540248901535656.a n = A110611 (n + 1)

end A110611

/-!
# A110612: a(n) is least number k such that k/P > P^n, with n and P (=P(k)) as in A051283.

The programs for A110612, there is no canonical definition to state claims against.
-/

/-! ## A110612.P11470732359085275914

`A004396(n+1)*A350424(4*n+3)`
-/

namespace A110612.P11470732359085275914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (n + 1) * A350424 (4 * n + 3)

end

end A110612.P11470732359085275914

/-!
# A110613: a(n+3) = 5*a(n+2) - 2*a(n+1) - 8*a(n), a(0) = 1, a(1) = 0, a(2) = 3.

The programs for A110613, the canonical program `A110613.P13217836540761452184` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110613 has offset 0).

The definition of A110613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110613.P13217836540761452184

`Δ[A124303(n)-a(n-1)]` with `a(0)=0`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A110613

/-- `Δ[A124303(n)-a(n-1)]` -/
def P13217836540761452184.Spec : Prop :=
  ∀ n, P13217836540761452184.a n = A110613 n

theorem P13217836540761452184.correct : P13217836540761452184.Spec := by
  intro n
  simp only [A110613]

end A110613

/-! ## A110613.P10267376246823070963

`A007582(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A110613.P10267376246823070963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007582 (n - 1) - a (n - 1)

end

end A110613.P10267376246823070963

namespace A110613

/-- `A007582(n-1)-a(n-1)` -/
def P10267376246823070963.Spec : Prop :=
  ∀ n, P10267376246823070963.a n = A110613 n

end A110613

/-! ## A110613.P7054318867465795054

`A005418(2*n-1)-a(n-1)` with `a(0)=1`
-/

namespace A110613.P7054318867465795054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005418 (2 * n - 1) - a (n - 1)

end

end A110613.P7054318867465795054

namespace A110613

/-- `A005418(2*n-1)-a(n-1)` -/
def P7054318867465795054.Spec : Prop :=
  ∀ n, P7054318867465795054.a n = A110613 n

end A110613

/-! ## A110613.P1688327599793489532

`(A109499(n)+A078008(n))/2`
-/

namespace A110613.P1688327599793489532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109499 n + A078008 n : ℚ) / 2

end

end A110613.P1688327599793489532

namespace A110613

/-- `(A109499(n)+A078008(n))/2` -/
def P1688327599793489532.Spec : Prop :=
  ∀ n, P1688327599793489532.a n = (A110613 n : ℚ)

end A110613

/-! ## A110613.P2232667382049378812

`2*A214142(n+1)-A007581(n)`
-/

namespace A110613.P2232667382049378812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214142 (n + 1) - A007581 n

end

end A110613.P2232667382049378812

namespace A110613

/-- `2*A214142(n+1)-A007581(n)` -/
def P2232667382049378812.Spec : Prop :=
  ∀ n, P2232667382049378812.a n = A110613 n

end A110613

/-! ## A110613.P4373611217377236654

`A124303(n+1)-(A124303(n)+a(n-1))` with `a(0)=1`
-/

namespace A110613.P4373611217377236654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A124303 (n + 1) - (A124303 n + a (n - 1))

end

end A110613.P4373611217377236654

namespace A110613

/-- `A124303(n+1)-(A124303(n)+a(n-1))` -/
def P4373611217377236654.Spec : Prop :=
  ∀ n, P4373611217377236654.a n = A110613 n

end A110613

/-! ## A110613.P12943982876743483022

`C(A094373(n), 2)-a(n-1)` with `a(0)=1`
-/

namespace A110613.P12943982876743483022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (A094373 n).toNat 2 : ℤ) - a (n - 1)

end

end A110613.P12943982876743483022

namespace A110613

/-- `C(A094373(n), 2)-a(n-1)` -/
def P12943982876743483022.Spec : Prop :=
  ∀ n, P12943982876743483022.a n = A110613 n

end A110613

/-! ## A110613.P2179145628801195070

`A214142(n+1)+A007582(n)-A214142(n+2)`
-/

namespace A110613.P2179145628801195070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214142 (n + 1) + (A007582 n - A214142 (n + 2))

end

end A110613.P2179145628801195070

namespace A110613

/-- `A214142(n+1)+A007582(n)-A214142(n+2)` -/
def P2179145628801195070.Spec : Prop :=
  ∀ n, P2179145628801195070.a n = A110613 n

end A110613

/-!
# A110614: a(n+3) = 5*a(n+2) - 2*a(n+1) - 8*a(n), a(0) = 1, a(1) = 5, a(2) = 15.

The programs for A110614, the canonical program `A110614.P9276741235766128011` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110614 has offset 0).

The definition of A110614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110614.P9276741235766128011

`2^n+4^n-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A110614

/-- `2^n+4^n-a(n-1)` -/
def P9276741235766128011.Spec : Prop :=
  ∀ n, P9276741235766128011.a n = A110614 n

theorem P9276741235766128011.correct : P9276741235766128011.Spec := by
  intro n
  simp only [A110614]

end A110614

/-! ## A110614.P6345564597197958103

`2^n-(a(n-1)-4^n)` with `a(0)=1`
-/

namespace A110614.P6345564597197958103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n : ℤ) - (a (n - 1) - (4 ^ n : ℤ))

end

end A110614.P6345564597197958103

namespace A110614

/-- `2^n-(a(n-1)-4^n)` -/
def P6345564597197958103.Spec : Prop :=
  ∀ n, P6345564597197958103.a n = A110614 n

theorem P6345564597197958103.correct : P6345564597197958103.Spec := by
  intro n
  simp only [A110614, Nat.add_sub_cancel, A110614.P6345564597197958103.a, A110614.P9276741235766128011.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A110614

/-! ## A110614.P5536692636076671386

`A161168(n)-a(n-1)` with `a(0)=1`
-/

namespace A110614.P5536692636076671386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A161168 n - a (n - 1)

end

end A110614.P5536692636076671386

namespace A110614

/-- `A161168(n)-a(n-1)` -/
def P5536692636076671386.Spec : Prop :=
  ∀ n, P5536692636076671386.a n = A110614 n

end A110614

/-! ## A110614.P10274230683246583757

`A028402(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A110614.P10274230683246583757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028402 (n + 1) - a (n - 1)

end

end A110614.P10274230683246583757

namespace A110614

/-- `A028402(n+1)-a(n-1)` -/
def P10274230683246583757.Spec : Prop :=
  ∀ n, P10274230683246583757.a n = A110614 n

end A110614

/-! ## A110614.P9909256260036324542

`A001576(n)-1-a(n-1)` with `a(0)=1`
-/

namespace A110614.P9909256260036324542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001576 n - 1 - a (n - 1)

end

end A110614.P9909256260036324542

namespace A110614

/-- `A001576(n)-1-a(n-1)` -/
def P9909256260036324542.Spec : Prop :=
  ∀ n, P9909256260036324542.a n = A110614 n

end A110614

/-! ## A110614.P2363180662789196566

`A277955(n)+A115243(n)`
-/

namespace A110614.P2363180662789196566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277955 n + A115243 n

end

end A110614.P2363180662789196566

namespace A110614

/-- `A277955(n)+A115243(n)` -/
def P2363180662789196566.Spec : Prop :=
  ∀ n, P2363180662789196566.a n = A110614 n

end A110614

/-! ## A110614.P7869644126152856872

`A015521(n+1)+A014113(n)`
-/

namespace A110614.P7869644126152856872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015521 (n + 1) + A014113 n

end

end A110614.P7869644126152856872

namespace A110614

/-- `A015521(n+1)+A014113(n)` -/
def P7869644126152856872.Spec : Prop :=
  ∀ n, P7869644126152856872.a n = A110614 n

end A110614

/-! ## A110614.P3579687091501810869

`A133190(2*n)+A014113(n)`
-/

namespace A110614.P3579687091501810869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133190 (2 * n) + A014113 n

end

end A110614.P3579687091501810869

namespace A110614

/-- `A133190(2*n)+A014113(n)` -/
def P3579687091501810869.Spec : Prop :=
  ∀ n, P3579687091501810869.a n = A110614 n

end A110614

/-! ## A110614.P16556756027926908997

`A078008(n+1)+A015521(n+1)`
-/

namespace A110614.P16556756027926908997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (n + 1) + A015521 (n + 1)

end

end A110614.P16556756027926908997

namespace A110614

/-- `A078008(n+1)+A015521(n+1)` -/
def P16556756027926908997.Spec : Prop :=
  ∀ n, P16556756027926908997.a n = A110614 n

end A110614

/-! ## A110614.P4771687522756173693

`A109499(n+1)+A001045(n+1)`
-/

namespace A110614.P4771687522756173693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109499 (n + 1) + A001045 (n + 1)

end

end A110614.P4771687522756173693

namespace A110614

/-- `A109499(n+1)+A001045(n+1)` -/
def P4771687522756173693.Spec : Prop :=
  ∀ n, P4771687522756173693.a n = A110614 n

end A110614

/-! ## A110614.P13308407573875076902

`A015521(n+1)+2*A001045(n)`
-/

namespace A110614.P13308407573875076902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015521 (n + 1) + 2 * A001045 n

end

end A110614.P13308407573875076902

namespace A110614

/-- `A015521(n+1)+2*A001045(n)` -/
def P13308407573875076902.Spec : Prop :=
  ∀ n, P13308407573875076902.a n = A110614 n

end A110614

/-! ## A110614.P376409545498068084

`A014113(n)+A007909(2*n+1)`
-/

namespace A110614.P376409545498068084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014113 n + A007909 (2 * n + 1)

end

end A110614.P376409545498068084

namespace A110614

/-- `A014113(n)+A007909(2*n+1)` -/
def P376409545498068084.Spec : Prop :=
  ∀ n, P376409545498068084.a n = A110614 n

end A110614

/-! ## A110614.P3241146874344592229

`A078008(n+1)+A007910(2*n)`
-/

namespace A110614.P3241146874344592229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (n + 1) + A007910 (2 * n)

end

end A110614.P3241146874344592229

namespace A110614

/-- `A078008(n+1)+A007910(2*n)` -/
def P3241146874344592229.Spec : Prop :=
  ∀ n, P3241146874344592229.a n = A110614 n

end A110614

/-! ## A110614.P8640520022839554300

`A015521(n+1)+Δ[A001045(n+1)]`
-/

namespace A110614.P8640520022839554300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015521 (n + 1) + (f1 (n + 1) - f1 n)

end

end A110614.P8640520022839554300

namespace A110614

/-- `A015521(n+1)+Δ[A001045(n+1)]` -/
def P8640520022839554300.Spec : Prop :=
  ∀ n, P8640520022839554300.a n = A110614 n

end A110614

/-! ## A110614.P756082427767958478

`A007909(2*n+1)+2*A001045(n)`
-/

namespace A110614.P756082427767958478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 (2 * n + 1) + 2 * A001045 n

end

end A110614.P756082427767958478

namespace A110614

/-- `A007909(2*n+1)+2*A001045(n)` -/
def P756082427767958478.Spec : Prop :=
  ∀ n, P756082427767958478.a n = A110614 n

end A110614

/-! ## A110614.P3569344671851135443

`A015521(n+1)+A093045(n+1)/A000045(n+1)`
-/

namespace A110614.P3569344671851135443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015521 (n + 1) : ℚ) + (A093045 (n + 1) : ℚ) / (A000045 (n + 1) : ℚ)

end

end A110614.P3569344671851135443

namespace A110614

/-- `A015521(n+1)+A093045(n+1)/A000045(n+1)` -/
def P3569344671851135443.Spec : Prop :=
  ∀ n, P3569344671851135443.a n = (A110614 n : ℚ)

end A110614

/-! ## A110614.P12309251986897496633

`A139800(2*n+1)+A139763(2*n)+A078008(n+1)`
-/

namespace A110614.P12309251986897496633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139800 (2 * n + 1) + (A139763 (2 * n) + A078008 (n + 1))

end

end A110614.P12309251986897496633

namespace A110614

/-- `A139800(2*n+1)+A139763(2*n)+A078008(n+1)` -/
def P12309251986897496633.Spec : Prop :=
  ∀ n, P12309251986897496633.a n = A110614 n

end A110614

/-! ## A110614.P9629644958551804714

`A005578(n+1)+A037481(n+1)-A015521(n+1)`
-/

namespace A110614.P9629644958551804714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (n + 1) + (A037481 (n + 1) - A015521 (n + 1))

end

end A110614.P9629644958551804714

namespace A110614

/-- `A005578(n+1)+A037481(n+1)-A015521(n+1)` -/
def P9629644958551804714.Spec : Prop :=
  ∀ n, P9629644958551804714.a n = A110614 n

end A110614

/-!
# A110615: Minimal set of composite-strings in base 12 in the sense of A071070.

The programs for A110615, there is no canonical definition to state claims against.
-/

/-! ## A110615.P12643924910387880555

`eq[A052920(A348522(n)), A055672(n)]`
-/

namespace A110615.P12643924910387880555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052920 (A348522 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110615.P12643924910387880555

/-! ## A110615.P8381888999441286525

`A002808(∑[A143632(n)!])`
-/

namespace A110615.P8381888999441286525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A143632 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110615.P8381888999441286525

/-! ## A110615.P10409568420044778365

`A002808(∑[A195644(n+1)!])`
-/

namespace A110615.P10409568420044778365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A195644 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110615.P10409568420044778365

/-! ## A110615.P6167028487499344901

`A002808(∑[(A339634(n)%A104443(n+1))!])`
-/

namespace A110615.P6167028487499344901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod (A339634 n) (A104443 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110615.P6167028487499344901

/-!
# A110616: A convolution triangle of numbers based on A001764.

The programs for A110616, there is no canonical definition to state claims against.
-/

/-! ## A110616.P11591605362270011190

`A069269(∑[2*n]%comp[∑[n]])`
-/

namespace A110616.P11591605362270011190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069269 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A110616.P11591605362270011190

/-! ## A110616.P9339316334745163649

`A069269(∑[char[∑[n]]]²-(n+1))`
-/

namespace A110616.P9339316334745163649
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069269 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A110616.P9339316334745163649

/-! ## A110616.P2234777268985055259

`or(char[1], A069269(A061579(n)))`
-/

namespace A110616.P2234777268985055259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A069269 (A061579 n).toNat)

end

end A110616.P2234777268985055259

/-! ## A110616.P16453481712534416035

`A000041(C(2, n+2))*A069269(A061579(n))`
-/

namespace A110616.P16453481712534416035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A069269 (A061579 n).toNat

end

end A110616.P16453481712534416035

/-! ## A110616.P1482706424874630737

`(A000040(n+1)%2)!*A069269(A061579(n))`
-/

namespace A110616.P1482706424874630737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000040 (n + 1)) 2).toNat : ℤ) * A069269 (A061579 n).toNat

end

end A110616.P1482706424874630737

/-! ## A110616.P12967587511898842976

`A008683(A005117(n+1))²*A069269(A061579(n))`
-/

namespace A110616.P12967587511898842976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005117 (n + 1)).toNat ^ 2 * A069269 (A061579 n).toNat

end

end A110616.P12967587511898842976

/-! ## A110616.P10293072106802658967

`A014963(6*(n+2))*A069269(A061579(n))`
-/

namespace A110616.P10293072106802658967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 2)) * A069269 (A061579 n).toNat

end

end A110616.P10293072106802658967

/-! ## A110616.P5869085378335601436

`A069269(A061579(n))%∑[A000032(n)]`
-/

namespace A110616.P5869085378335601436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069269 (A061579 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110616.P5869085378335601436

/-! ## A110616.P8262724544104383253

`A069269(A061579(n))/A007318(C(n, 2))`
-/

namespace A110616.P8262724544104383253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069269 (A061579 n).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A110616.P8262724544104383253

/-! ## A110616.P6045845438930246033

`A007318(∑[n])*A069269(A061579(n))`
-/

namespace A110616.P6045845438930246033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A069269 (A061579 n).toNat

end

end A110616.P6045845438930246033

/-!
# A110618: Number of partitions of n with no part larger than n/2. Also partitions of n into n/2 or fewer parts.

The programs for A110618, there is no canonical definition to state claims against.
-/

/-! ## A110618.P9325165559457392244

`A072233(∑[floor(n/(n%2+1))+n*gcd(2, n)])`
-/

namespace A110618.P9325165559457392244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋ + (n * Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A110618.P9325165559457392244

/-! ## A110618.P3278863765166223575

`A072233(A210981(n))`
-/

namespace A110618.P3278863765166223575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (A210981 n).toNat

end

end A110618.P3278863765166223575

/-! ## A110618.P10263169473532821506

`A000041(n)-A386638(n+1)`
-/

namespace A110618.P10263169473532821506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A386638 (n + 1)

end

end A110618.P10263169473532821506

/-! ## A110618.P11227400076873409370

`A000041(n)-∑[A035363(xor(1, n))]`
-/

namespace A110618.P11227400076873409370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110618.P11227400076873409370

/-! ## A110618.P690475678551612173

`∑[A002865(n)-A035363(xor(1, n))]`
-/

namespace A110618.P690475678551612173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A035363 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110618.P690475678551612173

/-!
# A110619: Triangle of number of partitions of n with no part more than n/k; also partitions of n into n/k or fewer parts.

The programs for A110619, there is no canonical definition to state claims against.
-/

/-! ## A110619.P11163295955555392986

`A026820(A010766(n+1)+n-A002262(n))`
-/

namespace A110619.P11163295955555392986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (A010766 (n + 1) + ((n : ℤ) - A002262 n)).toNat

end

end A110619.P11163295955555392986

/-! ## A110619.P15954487431526701903

`A343220(A347811(n))+A026807(n+1)`
-/

namespace A110619.P15954487431526701903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343220 (A347811 n).toNat + A026807 (n + 1)

end

end A110619.P15954487431526701903

/-! ## A110619.P17730143490264309950

`or(A026807(n+1), A170980(A119307(n)))`
-/

namespace A110619.P17730143490264309950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026807 (n + 1)) (A170980 (A119307 n).toNat)

end

end A110619.P17730143490264309950

/-! ## A110619.P6604146433690002846

`or(A005614(A000219(n)), A026807(n+1))`
-/

namespace A110619.P6604146433690002846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005614 (A000219 n).toNat) (A026807 (n + 1))

end

end A110619.P6604146433690002846

/-! ## A110619.P13139649142538423187

`or(A026807(n+1), A204447(A000602(n)))`
-/

namespace A110619.P13139649142538423187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026807 (n + 1)) (A204447 (A000602 n).toNat)

end

end A110619.P13139649142538423187

/-!
# A110622: n^2 followed by n followed by n^3 followed by n^4.

The programs for A110622, the canonical program `A110622.P18117295011988336150` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110622 has offset 1).

The definition of A110622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110622.P3949071231834584429

`A110653(A116966(n))`
-/

namespace A110622.P3949071231834584429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110653 (A116966 n).toNat

end

end A110622.P3949071231834584429

namespace A110622

/-- `A110653(A116966(n))` -/
def P3949071231834584429.Spec : Prop :=
  ∀ n, P3949071231834584429.a n = A110622 (n + 1)

end A110622

/-! ## A110622.P8625686367252006312

`A110651(A263449(n))`
-/

namespace A110622.P8625686367252006312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110651 (A263449 n).toNat

end

end A110622.P8625686367252006312

namespace A110622

/-- `A110651(A263449(n))` -/
def P8625686367252006312.Spec : Prop :=
  ∀ n, P8625686367252006312.a n = A110622 (n + 1)

end A110622

/-! ## A110622.P18117295011988336150

`A110005(A014681(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A110622

/-- `A110005(A014681(n+1))` -/
def P18117295011988336150.Spec : Prop :=
  ∀ n, P18117295011988336150.a n = A110622 (n + 1)

theorem P18117295011988336150.correct : P18117295011988336150.Spec := by
  intro n
  simp only [A110622, Nat.add_sub_cancel]

end A110622

/-! ## A110622.P10306546344484912185

`A110650(A056699(n+1))`
-/

namespace A110622.P10306546344484912185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110650 (A056699 (n + 1)).toNat

end

end A110622.P10306546344484912185

namespace A110622

/-- `A110650(A056699(n+1))` -/
def P10306546344484912185.Spec : Prop :=
  ∀ n, P10306546344484912185.a n = A110622 (n + 1)

end A110622

/-! ## A110622.P10185175490926007091

`A110009(A067060(n+1))`
-/

namespace A110622.P10185175490926007091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110009 (A067060 (n + 1)).toNat

end

end A110622.P10185175490926007091

namespace A110622

/-- `A110009(A067060(n+1))` -/
def P10185175490926007091.Spec : Prop :=
  ∀ n, P10185175490926007091.a n = A110622 (n + 1)

end A110622

/-! ## A110622.P844665911119608971

`A110653(A080412(n)+1)`
-/

namespace A110622.P844665911119608971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110653 (A080412 n + 1).toNat

end

end A110622.P844665911119608971

namespace A110622

/-- `A110653(A080412(n)+1)` -/
def P844665911119608971.Spec : Prop :=
  ∀ n, P844665911119608971.a n = A110622 (n + 1)

end A110622

/-! ## A110622.P2984892766540097764

`A110005(A103889(n+1))`
-/

namespace A110622.P2984892766540097764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110005 (A103889 (n + 1)).toNat

end

end A110622.P2984892766540097764

namespace A110622

/-- `A110005(A103889(n+1))` -/
def P2984892766540097764.Spec : Prop :=
  ∀ n, P2984892766540097764.a n = A110622 (n + 1)

end A110622

/-! ## A110622.P16929720135418079967

`A110005(A114112(n+1))`
-/

namespace A110622.P16929720135418079967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110005 (A114112 (n + 1)).toNat

end

end A110622.P16929720135418079967

namespace A110622

/-- `A110005(A114112(n+1))` -/
def P16929720135418079967.Spec : Prop :=
  ∀ n, P16929720135418079967.a n = A110622 (n + 1)

end A110622

/-! ## A110622.P3016452839981371081

`A110485(A133256(n+1))`
-/

namespace A110622.P3016452839981371081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110485 (A133256 (n + 1)).toNat

end

end A110622.P3016452839981371081

namespace A110622

/-- `A110485(A133256(n+1))` -/
def P3016452839981371081.Spec : Prop :=
  ∀ n, P3016452839981371081.a n = A110622 (n + 1)

end A110622

/-! ## A110622.P4931195601005119493

`A110651(A159966(n)+1)`
-/

namespace A110622.P4931195601005119493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110651 (A159966 n + 1).toNat

end

end A110622.P4931195601005119493

namespace A110622

/-- `A110651(A159966(n)+1)` -/
def P4931195601005119493.Spec : Prop :=
  ∀ n, P4931195601005119493.a n = A110622 (n + 1)

end A110622

/-! ## A110622.P2065242009832466433

`A110652(A284307(n+1))`
-/

namespace A110622.P2065242009832466433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110652 (A284307 (n + 1)).toNat

end

end A110622.P2065242009832466433

namespace A110622

/-- `A110652(A284307(n+1))` -/
def P2065242009832466433.Spec : Prop :=
  ∀ n, P2065242009832466433.a n = A110622 (n + 1)

end A110622

/-! ## A110622.P3389967043655654272

`A110003(A292576(n+1))`
-/

namespace A110622.P3389967043655654272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110003 (A292576 (n + 1)).toNat

end

end A110622.P3389967043655654272

namespace A110622

/-- `A110003(A292576(n+1))` -/
def P3389967043655654272.Spec : Prop :=
  ∀ n, P3389967043655654272.a n = A110622 (n + 1)

end A110622

/-! ## A110622.P17799846395275925267

`A110005(n+2-A010873(2*n))`
-/

namespace A110622.P17799846395275925267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110005 ((n + 2 : ℤ) - A010873 (2 * n)).toNat

end

end A110622.P17799846395275925267

namespace A110622

/-- `A110005(n+2-A010873(2*n))` -/
def P17799846395275925267.Spec : Prop :=
  ∀ n, P17799846395275925267.a n = A110622 (n + 1)

end A110622

/-! ## A110622.P1394347923476875518

`A110001(n+1)+A110485(n+1)-A110005(n+1)`
-/

namespace A110622.P1394347923476875518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110001 (n + 1) + (A110485 (n + 1) - A110005 (n + 1))

end

end A110622.P1394347923476875518

namespace A110622

/-- `A110001(n+1)+A110485(n+1)-A110005(n+1)` -/
def P1394347923476875518.Spec : Prop :=
  ∀ n, P1394347923476875518.a n = A110622 (n + 1)

end A110622

/-! ## A110622.P964878039159639005

`A110001(A080412(n+1))`
-/

namespace A110622.P964878039159639005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110001 (A080412 (n + 1)).toNat

end

end A110622.P964878039159639005

namespace A110622

/-- `A110001(A080412(n+1))` -/
def P964878039159639005.Spec : Prop :=
  ∀ n, P964878039159639005.a n = A110622 (n + 1)

end A110622

/-! ## A110622.P15597003307273192071

`A110009(A115659(n+2))`
-/

namespace A110622.P15597003307273192071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110009 (A115659 (n + 2)).toNat

end

end A110622.P15597003307273192071

namespace A110622

/-- `A110009(A115659(n+2))` -/
def P15597003307273192071.Spec : Prop :=
  ∀ n, P15597003307273192071.a n = A110622 (n + 1)

end A110622

/-! ## A110622.P16843944172051501534

`A110001(A116966(n+1)-1)`
-/

namespace A110622.P16843944172051501534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110001 (A116966 (n + 1) - 1).toNat

end

end A110622.P16843944172051501534

namespace A110622

/-- `A110001(A116966(n+1)-1)` -/
def P16843944172051501534.Spec : Prop :=
  ∀ n, P16843944172051501534.a n = A110622 (n + 1)

end A110622

/-! ## A110622.P149317425746789624

`A110653(A133256(n+2)-1)`
-/

namespace A110622.P149317425746789624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110653 (A133256 (n + 2) - 1).toNat

end

end A110622.P149317425746789624

namespace A110622

/-- `A110653(A133256(n+2)-1)` -/
def P149317425746789624.Spec : Prop :=
  ∀ n, P149317425746789624.a n = A110622 (n + 1)

end A110622

/-! ## A110622.P16095953607534302171

`A110003(A284307(n+2)-1)`
-/

namespace A110622.P16095953607534302171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110003 (A284307 (n + 2) - 1).toNat

end

end A110622.P16095953607534302171

namespace A110622

/-- `A110003(A284307(n+2)-1)` -/
def P16095953607534302171.Spec : Prop :=
  ∀ n, P16095953607534302171.a n = A110622 (n + 1)

end A110622

/-! ## A110622.P5996533939961533807

`A110001(n+1)/A110001(n+2)*A110003(n+2)`
-/

namespace A110622.P5996533939961533807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110001 (n + 1) : ℚ) / (A110001 (n + 2) : ℚ) * (A110003 (n + 2) : ℚ)

end

end A110622.P5996533939961533807

namespace A110622

/-- `A110001(n+1)/A110001(n+2)*A110003(n+2)` -/
def P5996533939961533807.Spec : Prop :=
  ∀ n, P5996533939961533807.a n = (A110622 (n + 1) : ℚ)

end A110622

/-!
# A110623: Shadow of N (natural numbers), also of Champernowne's shadow.

The programs for A110623, there is no canonical definition to state claims against.
-/

/-! ## A110623.P14387997716051920189

`∑[gcd(11, A133291(n+4))+n]`
-/

namespace A110623.P14387997716051920189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 11 (A133291 (n + 4)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110623.P14387997716051920189

/-! ## A110623.P12219470649046807103

`(∑[n+1]+10)%A056266(n+1)`
-/

namespace A110623.P12219470649046807103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j + 10 : ℕ) : ℤ) (A056266 (n + 1))

end

end A110623.P12219470649046807103

/-! ## A110623.P10107613787281869911

`A000217(3^C(a(n-1), 68)+n)+10` with `a(0)=1`
-/

namespace A110623.P10107613787281869911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000217 (3 ^ Nat.choose (a (n - 1)).toNat 68 + n) + 10

end

end A110623.P10107613787281869911

/-! ## A110623.P15433378767561568736

`record[A193739(Δ[A090197(2*n)])]`
-/

namespace A110623.P15433378767561568736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090197 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110623.P15433378767561568736

/-! ## A110623.P12325963502220803828

`(A167499(n)+5)%A004023(n+1)`
-/

namespace A110623.P12325963502220803828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167499 n + 5) (A004023 (n + 1))

end

end A110623.P12325963502220803828

/-!
# A110625: Numerator of b(n) = -Sum_{k=1..n} A037861(k)/((2*k)*(2*k+1)), where A037861(k) = (number of 0's) - (number of 1's) in the binary representation of k.

The programs for A110625, there is no canonical definition to state claims against.
-/

/-! ## A110625.P9312849149074961638

`A117284(A300627(n))`
-/

namespace A110625.P9312849149074961638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117284 (A300627 n).toNat

end

end A110625.P9312849149074961638

/-!
# A110627: Bisection of A083952 such that the self-convolution is congruent modulo 4 to A083952, which consists entirely of 1's and 2's.

The programs for A110627, there is no canonical definition to state claims against.
-/

/-! ## A110627.P183158589280294130

`A083952(2*n)`
-/

namespace A110627.P183158589280294130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083952 (2 * n)

end

end A110627.P183158589280294130

/-! ## A110627.P7695484935689402204

`2-A108336(n)`
-/

namespace A110627.P7695484935689402204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A108336 n

end

end A110627.P7695484935689402204

/-! ## A110627.P10931162758319542911

`gcd(2, A108335(n))`
-/

namespace A110627.P10931162758319542911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A108335 n)

end

end A110627.P10931162758319542911

/-! ## A110627.P12653319932187510314

`A083952(n+n)!`
-/

namespace A110627.P12653319932187510314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A083952 (n + n)).toNat

end

end A110627.P12653319932187510314

/-! ## A110627.P12284830260451542197

`2-A108340(2*n)`
-/

namespace A110627.P12284830260451542197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A108340 (2 * n)

end

end A110627.P12284830260451542197

/-! ## A110627.P283966675123594696

`A108115(2*n)%4`
-/

namespace A110627.P283966675123594696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108115 (2 * n)) 4

end

end A110627.P283966675123594696

/-! ## A110627.P1458376100758652817

`A001511(A108115(2*n))`
-/

namespace A110627.P1458376100758652817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A108115 (2 * n)).toNat

end

end A110627.P1458376100758652817

/-! ## A110627.P1744364897554265725

`A108078(val(A108115(2*n), 2))`
-/

namespace A110627.P1744364897554265725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108078 (SequenceMachineLib.valuation (A108115 (2 * n)).toNat 2)

end

end A110627.P1744364897554265725

/-! ## A110627.P4401022093355825766

`A108081(val(A108115(2*n), 2))`
-/

namespace A110627.P4401022093355825766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108081 (SequenceMachineLib.valuation (A108115 (2 * n)).toNat 2)

end

end A110627.P4401022093355825766

/-! ## A110627.P17907248051006602523

`A108084(val(A108115(2*n), 2))`
-/

namespace A110627.P17907248051006602523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108084 (SequenceMachineLib.valuation (A108115 (2 * n)).toNat 2)

end

end A110627.P17907248051006602523

/-! ## A110627.P2128169382269337410

`A108085(val(A108115(2*n), 2))`
-/

namespace A110627.P2128169382269337410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108085 (SequenceMachineLib.valuation (A108115 (2 * n)).toNat 2)

end

end A110627.P2128169382269337410

/-! ## A110627.P16247733771883274102

`A108115(val(A108115(2*n), 2))`
-/

namespace A110627.P16247733771883274102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108115 (SequenceMachineLib.valuation (A108115 (2 * n)).toNat 2)

end

end A110627.P16247733771883274102

/-! ## A110627.P934705093631509292

`and(A108115(2*n), A122553(n))`
-/

namespace A110627.P934705093631509292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108115 (2 * n)) (A122553 n)

end

end A110627.P934705093631509292

/-! ## A110627.P5625673555354420402

`gcd(A000079(n), A108115(2*n))`
-/

namespace A110627.P5625673555354420402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 n) (A108115 (2 * n))

end

end A110627.P5625673555354420402

/-! ## A110627.P6928899718075410125

`and(A088578(n), A108115(2*n))`
-/

namespace A110627.P6928899718075410125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088578 n) (A108115 (2 * n))

end

end A110627.P6928899718075410125

/-! ## A110627.P3059157578074578201

`A176059(A108115(2*n)²)-1`
-/

namespace A110627.P3059157578074578201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 (A108115 (2 * n) ^ 2).toNat - 1

end

end A110627.P3059157578074578201

/-! ## A110627.P12153734315176417213

`and(A108115(2*n), A188161(n))`
-/

namespace A110627.P12153734315176417213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108115 (2 * n)) (A188161 n)

end

end A110627.P12153734315176417213

/-!
# A110628: Trisection of A083953 such that the self-convolution cube is congruent modulo 9 to A083953, which consists entirely of 1's, 2's and 3's.

The programs for A110628, there is no canonical definition to state claims against.
-/

/-! ## A110628.P18236179424098570484

`A083953(3*n)`
-/

namespace A110628.P18236179424098570484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083953 (3 * n)

end

end A110628.P18236179424098570484

/-! ## A110628.P6532007487095177318

`A083953(n+n+n)%6`
-/

namespace A110628.P6532007487095177318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083953 (n + n + n)) 6

end

end A110628.P6532007487095177318

/-! ## A110628.P3244480284038825048

`dr(A083953(A008585(n)))`
-/

namespace A110628.P3244480284038825048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083953 (A008585 n).toNat)

end

end A110628.P3244480284038825048

/-! ## A110628.P13244772236971880714

`dr(A083953(A016777(n)-1))`
-/

namespace A110628.P13244772236971880714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083953 (A016777 n - 1).toNat)

end

end A110628.P13244772236971880714

/-! ## A110628.P17658947744204405292

`dr(A083953(A005843(n)+n))`
-/

namespace A110628.P17658947744204405292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083953 (A005843 n + (n : ℤ)).toNat)

end

end A110628.P17658947744204405292

/-! ## A110628.P12069847414896506868

`dr(A083953(A008592(n)/5+n))`
-/

namespace A110628.P12069847414896506868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083953 (SequenceMachineLib.roundAway ((A008592 n : ℚ) / 5 + (n : ℚ))).toNat)

end

end A110628.P12069847414896506868

/-! ## A110628.P17397586972319311739

`gcd(C(n, n²), A083953(A008486(n)))`
-/

namespace A110628.P17397586972319311739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose n (n ^ 2) : ℤ) (A083953 (A008486 n).toNat)

end

end A110628.P17397586972319311739

/-! ## A110628.P16292487725998400558

`dr(A083953(A003605(A003605(n))))`
-/

namespace A110628.P16292487725998400558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083953 (A003605 (A003605 n).toNat).toNat)

end

end A110628.P16292487725998400558

/-! ## A110628.P8882424477159865770

`dr(A083953(A123108(A008458(n))))`
-/

namespace A110628.P8882424477159865770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083953 (A123108 (A008458 n).toNat).toNat)

end

end A110628.P8882424477159865770

/-! ## A110628.P159801963308954666

`A083953(A008486(n))-A000038(n)`
-/

namespace A110628.P159801963308954666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083953 (A008486 n).toNat - A000038 n

end

end A110628.P159801963308954666

/-! ## A110628.P5296019295222191597

`gcd(A016725(n), A083953(A008486(n)))`
-/

namespace A110628.P5296019295222191597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016725 n) (A083953 (A008486 n).toNat)

end

end A110628.P5296019295222191597

/-! ## A110628.P5709044362961663609

`and(A083953(A008486(n)), A122553(n))`
-/

namespace A110628.P5709044362961663609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083953 (A008486 n).toNat) (A122553 n)

end

end A110628.P5709044362961663609

/-! ## A110628.P12428814689560811063

`A083953(A008585(n))/A007318(C(2, n))`
-/

namespace A110628.P12428814689560811063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083953 (A008585 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A110628.P12428814689560811063

/-! ## A110628.P16788461547317985358

`A083953(A005843(n)+n)+A000007(n+1)`
-/

namespace A110628.P16788461547317985358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083953 (A005843 n + (n : ℤ)).toNat + A000007 (n + 1)

end

end A110628.P16788461547317985358

/-! ## A110628.P11401363011899747230

`A083953(A005843(n)+n)/A007318(C(2, n))`
-/

namespace A110628.P11401363011899747230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083953 (A005843 n + (n : ℤ)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A110628.P11401363011899747230

/-! ## A110628.P14338031814106757862

`lcm((-1)^A007318(n), A083953(A005843(n)+n))`
-/

namespace A110628.P14338031814106757862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((-1 : ℚ) ^ (A007318 n : ℤ))) (A083953 (A005843 n + (n : ℤ)).toNat)

end

end A110628.P14338031814106757862

/-! ## A110628.P407418316706707453

`A083953(A005843(n)+n)/A000108(C(2, n+2))`
-/

namespace A110628.P407418316706707453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083953 (A005843 n + (n : ℤ)).toNat : ℚ) / (A000108 (Nat.choose 2 (n + 2)) : ℚ)

end

end A110628.P407418316706707453

/-! ## A110628.P15670236005542168975

`A083953(A005843(n)+n)/A001222(3-val(n+1, 48))`
-/

namespace A110628.P15670236005542168975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083953 (A005843 n + (n : ℤ)).toNat : ℚ) / (A001222 (3 - SequenceMachineLib.valuation (n + 1) 48) : ℚ)

end

end A110628.P15670236005542168975

/-! ## A110628.P12147805810902645176

`A083953(A005843(n)+n)^A014963(∑[n+1])`
-/

namespace A110628.P12147805810902645176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083953 (A005843 n + (n : ℤ)).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A110628.P12147805810902645176

/-!
# A110629: Every 4th term of A083954 such that the self-convolution 4th power is congruent modulo 8 to A083954, which consists entirely of numbers 1 through 4.

The programs for A110629, there is no canonical definition to state claims against.
-/

/-! ## A110629.P6311471982942507974

`A083954(4*n)`
-/

namespace A110629.P6311471982942507974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083954 (4 * n)

end

end A110629.P6311471982942507974

/-! ## A110629.P15443298766395351466

`A110630(2*n)`
-/

namespace A110629.P15443298766395351466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110630 (2 * n)

end

end A110629.P15443298766395351466

/-! ## A110629.P13119538034858895709

`dr(A083954(A008586(n)))`
-/

namespace A110629.P13119538034858895709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083954 (A008586 n).toNat)

end

end A110629.P13119538034858895709

/-! ## A110629.P17568717605886533947

`dr(A083954(Δ[A051890(n)]))`
-/

namespace A110629.P17568717605886533947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051890 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083954 (f1 (n + 1) - f1 n).toNat)

end

end A110629.P17568717605886533947

/-! ## A110629.P9222428049768380082

`dr(A083954(record[A271478(n)]))`
-/

namespace A110629.P9222428049768380082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271478 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083954 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A110629.P9222428049768380082

/-! ## A110629.P7712392784823531736

`dr(A083954(A016813(n)-1))`
-/

namespace A110629.P7712392784823531736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083954 (A016813 n - 1).toNat)

end

end A110629.P7712392784823531736

/-! ## A110629.P17593379385023964672

`dr(A083954(A008585(n)+n))`
-/

namespace A110629.P17593379385023964672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083954 (A008585 n + (n : ℤ)).toNat)

end

end A110629.P17593379385023964672

/-! ## A110629.P11969131349043149878

`A083954(A008574(n))^(n²%(n+1))`
-/

namespace A110629.P11969131349043149878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083954 (A008574 n).toNat ^ (n ^ 2 % (n + 1))

end

end A110629.P11969131349043149878

/-! ## A110629.P9771154401214244440

`dr(A083954(A005843(A005843(n))))`
-/

namespace A110629.P9771154401214244440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083954 (A005843 (A005843 n).toNat).toNat)

end

end A110629.P9771154401214244440

/-! ## A110629.P7842560083384904085

`A083954(A271478(A004273(n)))%5`
-/

namespace A110629.P7842560083384904085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083954 (A271478 (A004273 n).toNat).toNat) 5

end

end A110629.P7842560083384904085

/-! ## A110629.P11596270660373750292

`A083954(A008585(n)+n)/A007318(or(n, -2)+4)`
-/

namespace A110629.P11596270660373750292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083954 (A008585 n + (n : ℤ)).toNat : ℚ) / (A007318 (Int.lor (n : ℤ) (-2) + 4).toNat : ℚ)

end

end A110629.P11596270660373750292

/-!
# A110630: Every 2nd term of A083954 such that the self-convolution 2nd power is congruent modulo 8 to A083954, which consists entirely of numbers 1 through 4.

The programs for A110630, there is no canonical definition to state claims against.
-/

/-! ## A110630.P4965251357254785789

`A083954(2*n)`
-/

namespace A110630.P4965251357254785789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083954 (2 * n)

end

end A110630.P4965251357254785789

/-! ## A110630.P5485392619393745809

`dr(A083954(n+n))`
-/

namespace A110630.P5485392619393745809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083954 (n + n))

end

end A110630.P5485392619393745809

/-! ## A110630.P8473655630065355097

`A083954(A005843(n))%5`
-/

namespace A110630.P8473655630065355097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083954 (A005843 n).toNat) 5

end

end A110630.P8473655630065355097

/-! ## A110630.P11629309449484135777

`A083954(record[A014681(n)])%5`
-/

namespace A110630.P11629309449484135777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083954 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) 5

end

end A110630.P11629309449484135777

/-! ## A110630.P9420081668606279996

`A083954(n+n)+char[A083955(n+1)]`
-/

namespace A110630.P9420081668606279996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083955 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083954 (n + n) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A110630.P9420081668606279996

/-! ## A110630.P6791496245005338042

`A083954(n+n)+char[A160518(n+1)]`
-/

namespace A110630.P6791496245005338042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160518 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083954 (n + n) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A110630.P6791496245005338042

/-! ## A110630.P18018446001248087139

`A083954(A005843(n))/A007318(C(3, n))`
-/

namespace A110630.P18018446001248087139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083954 (A005843 n).toNat : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A110630.P18018446001248087139

/-! ## A110630.P10317687019938900807

`A083954(n+n)/A083952(A108783(n+1))`
-/

namespace A110630.P10317687019938900807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083954 (n + n) : ℚ) / (A083952 (A108783 (n + 1)).toNat : ℚ)

end

end A110630.P10317687019938900807

/-! ## A110630.P2265688661162650583

`A083954(A005843(n))/A000010(gcd(n, n+1))`
-/

namespace A110630.P2265688661162650583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083954 (A005843 n).toNat : ℚ) / (A000010 (Nat.gcd n (n + 1)) : ℚ)

end

end A110630.P2265688661162650583

/-!
# A110631: Every 5th term of A083945 such that the self-convolution 5th power is congruent modulo 25 to A083945, which consists entirely of numbers 1 through 5.

The programs for A110631, there is no canonical definition to state claims against.
-/

/-! ## A110631.P15191728303144959117

`A083945(5*n)`
-/

namespace A110631.P15191728303144959117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083945 (5 * n)

end

end A110631.P15191728303144959117

/-! ## A110631.P5458698189445597108

`dr(A083945(A008587(n)))`
-/

namespace A110631.P5458698189445597108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083945 (A008587 n).toNat)

end

end A110631.P5458698189445597108

/-! ## A110631.P13366142819148950838

`dr(A083945(A008592(n)/2))`
-/

namespace A110631.P13366142819148950838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083945 (SequenceMachineLib.roundAway ((A008592 n : ℚ) / 2)).toNat)

end

end A110631.P13366142819148950838

/-! ## A110631.P13556162323589458302

`dr(A083945(A008586(n)+n))`
-/

namespace A110631.P13556162323589458302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083945 (A008586 n + (n : ℤ)).toNat)

end

end A110631.P13556162323589458302

/-! ## A110631.P11841999275556969486

`A083945(A008706(n))^abs(C(2, n+2)-1)`
-/

namespace A110631.P11841999275556969486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083945 (A008706 n).toNat : ℚ) ^ (|(Nat.choose 2 (n + 2) : ℤ) - 1| : ℤ)

end

end A110631.P11841999275556969486

/-! ## A110631.P13652010744485433870

`dr(A083945(A014682(A008592(n))))`
-/

namespace A110631.P13652010744485433870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083945 (A014682 (A008592 n).toNat).toNat)

end

end A110631.P13652010744485433870

/-! ## A110631.P11389569965229891173

`and(A083945(A008706(n)), A126646(n))`
-/

namespace A110631.P11389569965229891173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083945 (A008706 n).toNat) (A126646 n)

end

end A110631.P11389569965229891173

/-! ## A110631.P17640890102132725460

`gcd(A083945(A008706(n)), A085911(n+2))`
-/

namespace A110631.P17640890102132725460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083945 (A008706 n).toNat) (A085911 (n + 2))

end

end A110631.P17640890102132725460

/-! ## A110631.P17122798937090905136

`and(A057769(n), A083945(A008592(n)/2))`
-/

namespace A110631.P17122798937090905136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057769 n) (A083945 (SequenceMachineLib.roundAway ((A008592 n : ℚ) / 2)).toNat)

end

end A110631.P17122798937090905136

/-! ## A110631.P8995106257036775494

`A083945(A008706(n))%A085887(n+2)²`
-/

namespace A110631.P8995106257036775494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083945 (A008706 n).toNat) (A085887 (n + 2) ^ 2)

end

end A110631.P8995106257036775494

/-! ## A110631.P10534512161224342247

`A083945(A008592(n)/2)+A000007(n+1)`
-/

namespace A110631.P10534512161224342247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083945 (SequenceMachineLib.roundAway ((A008592 n : ℚ) / 2)).toNat + A000007 (n + 1)

end

end A110631.P10534512161224342247

/-! ## A110631.P11076556788946520054

`A083945(A008592(n)/2)/A007318(C(2, n))`
-/

namespace A110631.P11076556788946520054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083945 (SequenceMachineLib.roundAway ((A008592 n : ℚ) / 2)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A110631.P11076556788946520054

/-! ## A110631.P2078836843327554255

`A083945(A008586(n)+n)^(A000038(n)+1)`
-/

namespace A110631.P2078836843327554255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083945 (A008586 n + (n : ℤ)).toNat : ℚ) ^ (A000038 n + 1 : ℤ)

end

end A110631.P2078836843327554255

/-! ## A110631.P17000136816578645959

`A083945(A008592(n)/2)/A000041(C(2, n+2))`
-/

namespace A110631.P17000136816578645959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083945 (SequenceMachineLib.roundAway ((A008592 n : ℚ) / 2)).toNat : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A110631.P17000136816578645959

/-! ## A110631.P8921884089308124212

`A083945(A008592(n)/2)^and(1, A000040(n+1))`
-/

namespace A110631.P8921884089308124212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083945 (SequenceMachineLib.roundAway ((A008592 n : ℚ) / 2)).toNat : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A110631.P8921884089308124212

/-!
# A110632: Every 6th term of A083946 starting from position 0.

The programs for A110632, there is no canonical definition to state claims against.
-/

/-! ## A110632.P15180965213322071100

`A110633(2*n)`
-/

namespace A110632.P15180965213322071100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110633 (2 * n)

end

end A110632.P15180965213322071100

/-! ## A110632.P9073529568683307850

`A110634(3*n)`
-/

namespace A110632.P9073529568683307850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110634 (3 * n)

end

end A110632.P9073529568683307850

/-! ## A110632.P3287177605223678170

`A083946(6*n)`
-/

namespace A110632.P3287177605223678170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083946 (6 * n)

end

end A110632.P3287177605223678170

/-! ## A110632.P10002076058321688447

`dr(A083946(A008588(n)))`
-/

namespace A110632.P10002076058321688447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083946 (A008588 n).toNat)

end

end A110632.P10002076058321688447

/-! ## A110632.P8908672624279049358

`dr(A083946(A008589(n)-n))`
-/

namespace A110632.P8908672624279049358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083946 (A008589 n - (n : ℤ)).toNat)

end

end A110632.P8908672624279049358

/-! ## A110632.P11225879121503901685

`gcd(floor(acot(n)), A083946(A008458(n)))`
-/

namespace A110632.P11225879121503901685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A083946 (A008458 n).toNat)

end

end A110632.P11225879121503901685

/-! ## A110632.P9866569922180997204

`dr(A083946(A008585(A005843(n))))`
-/

namespace A110632.P9866569922180997204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083946 (A008585 (A005843 n).toNat).toNat)

end

end A110632.P9866569922180997204

/-! ## A110632.P11634681709385793912

`A083946(A008458(n))^A178334(n)`
-/

namespace A110632.P11634681709385793912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083946 (A008458 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A110632.P11634681709385793912

/-! ## A110632.P15496857979089342404

`A083946(A008588(n))^A178334(n)`
-/

namespace A110632.P15496857979089342404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083946 (A008588 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A110632.P15496857979089342404

/-! ## A110632.P8750869013000374810

`gcd(A000038(n), A083946(A008588(n)))`
-/

namespace A110632.P8750869013000374810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A083946 (A008588 n).toNat)

end

end A110632.P8750869013000374810

/-! ## A110632.P10537014575631581147

`or(A000007(n), A083946(A008588(n)))`
-/

namespace A110632.P10537014575631581147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A083946 (A008588 n).toNat)

end

end A110632.P10537014575631581147

/-! ## A110632.P17493429759002999684

`A083946(A008458(n))^-A057428(n)`
-/

namespace A110632.P17493429759002999684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083946 (A008458 n).toNat : ℚ) ^ (-A057428 n : ℤ)

end

end A110632.P17493429759002999684

/-! ## A110632.P15429854030730651180

`A083946(A008588(n))+A000038(n+1)`
-/

namespace A110632.P15429854030730651180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083946 (A008588 n).toNat + A000038 (n + 1)

end

end A110632.P15429854030730651180

/-! ## A110632.P14624831041045464825

`A083946(A008588(n))/A007318(C(2, n))`
-/

namespace A110632.P14624831041045464825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083946 (A008588 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A110632.P14624831041045464825

/-! ## A110632.P12828166423011924073

`A083946(A008458(n))^(1-A000122(n))²`
-/

namespace A110632.P12828166423011924073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083946 (A008458 n).toNat : ℚ) ^ ((1 - A000122 n) ^ 2 : ℤ)

end

end A110632.P12828166423011924073

/-! ## A110632.P14308978023762467529

`A083946(A008588(n))/A000108(C(2, n+2))`
-/

namespace A110632.P14308978023762467529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083946 (A008588 n).toNat : ℚ) / (A000108 (Nat.choose 2 (n + 2)) : ℚ)

end

end A110632.P14308978023762467529

/-! ## A110632.P3732434872524122904

`A083946(A008458(n))^and(1, A000040(n+1))`
-/

namespace A110632.P3732434872524122904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083946 (A008458 n).toNat : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A110632.P3732434872524122904

/-! ## A110632.P10873287749259387629

`A083946(A008588(n))/A000010(gcd(n, n+1))`
-/

namespace A110632.P10873287749259387629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083946 (A008588 n).toNat : ℚ) / (A000010 (Nat.gcd n (n + 1)) : ℚ)

end

end A110632.P10873287749259387629

/-! ## A110632.P10261549702833271732

`A083946(A008458(n))^A000120(A053644(n))`
-/

namespace A110632.P10261549702833271732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083946 (A008458 n).toNat : ℚ) ^ (A000120 (A053644 n).toNat : ℤ)

end

end A110632.P10261549702833271732

/-! ## A110632.P4299797723460723790

`A083946(A008458(n))^A325938(A020639(n+1))`
-/

namespace A110632.P4299797723460723790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083946 (A008458 n).toNat : ℚ) ^ (A325938 (A020639 (n + 1)).toNat : ℤ)

end

end A110632.P4299797723460723790

/-!
# A110633: Every third term of A083946 where the self-convolution third power is congruent modulo 9 to A083946, which consists entirely of numbers 1 through 6.

The programs for A110633, there is no canonical definition to state claims against.
-/

/-! ## A110633.P2718126988771336576

`A083946(3*n)`
-/

namespace A110633.P2718126988771336576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083946 (3 * n)

end

end A110633.P2718126988771336576

/-! ## A110633.P15724544662300358176

`A083946(n+n+n)%7`
-/

namespace A110633.P15724544662300358176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083946 (n + n + n)) 7

end

end A110633.P15724544662300358176

/-! ## A110633.P11393136909162172442

`dr(A083946(A008585(n)))`
-/

namespace A110633.P11393136909162172442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083946 (A008585 n).toNat)

end

end A110633.P11393136909162172442

/-! ## A110633.P10589192588325965895

`dr(A083946(A008588(n)/2))`
-/

namespace A110633.P10589192588325965895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083946 (SequenceMachineLib.roundAway ((A008588 n : ℚ) / 2)).toNat)

end

end A110633.P10589192588325965895

/-! ## A110633.P4876449848631630639

`dr(A083946(A005843(n)+n))`
-/

namespace A110633.P4876449848631630639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083946 (A005843 n + (n : ℤ)).toNat)

end

end A110633.P4876449848631630639

/-! ## A110633.P14526539270789663032

`dr(A083946(A008586(n)-n))`
-/

namespace A110633.P14526539270789663032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083946 (A008586 n - (n : ℤ)).toNat)

end

end A110633.P14526539270789663032

/-! ## A110633.P16159841204265511980

`dr(A083946(Δ[A002061(n)]+n))`
-/

namespace A110633.P16159841204265511980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083946 (f1 (n + 1) - f1 n + (n : ℤ)).toNat)

end

end A110633.P16159841204265511980

/-! ## A110633.P9387199355807164538

`dr(A083946(record[A014681(n)]+n))`
-/

namespace A110633.P9387199355807164538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083946 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)).toNat)

end

end A110633.P9387199355807164538

/-! ## A110633.P4379091674475103208

`dr(A083946(A005408(n)+n-1))`
-/

namespace A110633.P4379091674475103208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083946 (A005408 n + ((n : ℤ) - 1)).toNat)

end

end A110633.P4379091674475103208

/-! ## A110633.P5896546100553894307

`gcd(A000038(n), A083946(A008588(n)/2))`
-/

namespace A110633.P5896546100553894307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A083946 (SequenceMachineLib.roundAway ((A008588 n : ℚ) / 2)).toNat)

end

end A110633.P5896546100553894307

/-! ## A110633.P2772405507003662904

`or(A000007(n), A083946(A008588(n)/2))`
-/

namespace A110633.P2772405507003662904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A083946 (SequenceMachineLib.roundAway ((A008588 n : ℚ) / 2)).toNat)

end

end A110633.P2772405507003662904

/-!
# A110634: Every 2nd term of A083946 where the self-convolution 2nd power is congruent modulo 4 to A083946, which consists entirely of numbers 1 through 6.

The programs for A110634, there is no canonical definition to state claims against.
-/

/-! ## A110634.P1403156492702324916

`A083946(2*n)`
-/

namespace A110634.P1403156492702324916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083946 (2 * n)

end

end A110634.P1403156492702324916

/-! ## A110634.P241050233408870000

`dr(A083946(n+n))`
-/

namespace A110634.P241050233408870000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083946 (n + n))

end

end A110634.P241050233408870000

/-! ## A110634.P5503964394846360682

`A083946(comp[or(1, n)])%7`
-/

namespace A110634.P5503964394846360682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083946 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 7

end

end A110634.P5503964394846360682

/-! ## A110634.P17947978094960894363

`A083946(Δ[n²]-1)%7`
-/

namespace A110634.P17947978094960894363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083946 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat) 7

end

end A110634.P17947978094960894363

/-! ## A110634.P13618593577832983037

`and(7, A083946(A005843(n)))`
-/

namespace A110634.P13618593577832983037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A083946 (A005843 n).toNat)

end

end A110634.P13618593577832983037

/-! ## A110634.P8846986358407453560

`A083946(n+n)+A008590(n)%2`
-/

namespace A110634.P8846986358407453560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083946 (n + n) + Int.tmod (A008590 n) 2

end

end A110634.P8846986358407453560

/-! ## A110634.P3159166540336922306

`A083946(n+n)+char[A083955(n+1)]`
-/

namespace A110634.P3159166540336922306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083955 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083946 (n + n) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A110634.P3159166540336922306

/-! ## A110634.P10970880320962778292

`A083946(A005843(n))/A007318(C(2, n))`
-/

namespace A110634.P10970880320962778292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083946 (A005843 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A110634.P10970880320962778292

/-! ## A110634.P10279433301546237610

`A083946(n+n)/A083952(A108783(n+1))`
-/

namespace A110634.P10279433301546237610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083946 (n + n) : ℚ) / (A083952 (A108783 (n + 1)).toNat : ℚ)

end

end A110634.P10279433301546237610

/-! ## A110634.P7091714425119500214

`A083946(n+n)/A003983(∑[n]+1)`
-/

namespace A110634.P7091714425119500214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083946 (n + n) : ℚ) / (A003983 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ)

end

end A110634.P7091714425119500214

/-!
# A110635: Every 7th term of A083947 such that the self-convolution 7th power is congruent modulo 49 to A083947, which consists entirely of numbers 1 through 7.

The programs for A110635, there is no canonical definition to state claims against.
-/

/-! ## A110635.P9293328505500632355

`A083947(7*n)`
-/

namespace A110635.P9293328505500632355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083947 (7 * n)

end

end A110635.P9293328505500632355

/-! ## A110635.P6743990041699190717

`dr(A083947(A008589(n)))`
-/

namespace A110635.P6743990041699190717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083947 (A008589 n).toNat)

end

end A110635.P6743990041699190717

/-! ## A110635.P8851149721035733545

`dr(A083947(A008588(n)+n))`
-/

namespace A110635.P8851149721035733545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083947 (A008588 n + (n : ℤ)).toNat)

end

end A110635.P8851149721035733545

/-! ## A110635.P5389932164106184332

`A083947(A008589(n))^A178334(n)`
-/

namespace A110635.P5389932164106184332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083947 (A008589 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A110635.P5389932164106184332

/-! ## A110635.P11324893161787701315

`gcd(A000038(n), A083947(A008589(n)))`
-/

namespace A110635.P11324893161787701315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A083947 (A008589 n).toNat)

end

end A110635.P11324893161787701315

/-! ## A110635.P8839430249724176744

`and(A057769(n), A083947(A008589(n)))`
-/

namespace A110635.P8839430249724176744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057769 n) (A083947 (A008589 n).toNat)

end

end A110635.P8839430249724176744

/-! ## A110635.P7600249614315998755

`or(A000007(n), A083947(A008589(n)))`
-/

namespace A110635.P7600249614315998755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A083947 (A008589 n).toNat)

end

end A110635.P7600249614315998755

/-! ## A110635.P1120947027176199186

`A083947(A008589(n))/A007318(C(2, n))`
-/

namespace A110635.P1120947027176199186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083947 (A008589 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A110635.P1120947027176199186

/-! ## A110635.P677052596167654315

`A083947(A008589(n))^ceil(n/A000041(n))`
-/

namespace A110635.P677052596167654315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083947 (A008589 n).toNat : ℚ) ^ (⌈(n : ℚ) / (A000041 n : ℚ)⌉ : ℤ)

end

end A110635.P677052596167654315

/-! ## A110635.P3410475297589603355

`A083947(A008589(n))+and(1, A005843(n+1))`
-/

namespace A110635.P3410475297589603355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083947 (A008589 n).toNat + Int.land 1 (A005843 (n + 1))

end

end A110635.P3410475297589603355

/-! ## A110635.P6820812756080299848

`A083947(A008589(n))/A000041(C(2, n+2))`
-/

namespace A110635.P6820812756080299848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083947 (A008589 n).toNat : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A110635.P6820812756080299848

/-! ## A110635.P4258312904040304331

`A083947(A008589(n))/A000041(gcd(n, n+1))`
-/

namespace A110635.P4258312904040304331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083947 (A008589 n).toNat : ℚ) / (A000041 (Nat.gcd n (n + 1)) : ℚ)

end

end A110635.P4258312904040304331

/-! ## A110635.P4199121451004828576

`A331739(A231002(n+1))+A083947(A008589(n))`
-/

namespace A110635.P4199121451004828576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331739 (A231002 (n + 1)).toNat + A083947 (A008589 n).toNat

end

end A110635.P4199121451004828576

/-! ## A110635.P17292512060084836299

`A083947(A008589(n))/A000188(A020639(n+2))`
-/

namespace A110635.P17292512060084836299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083947 (A008589 n).toNat : ℚ) / (A000188 (A020639 (n + 2)).toNat : ℚ)

end

end A110635.P17292512060084836299

/-! ## A110635.P16053429008803010473

`A083947(A008589(n))^A001221(A089152(n+1))`
-/

namespace A110635.P16053429008803010473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083947 (A008589 n).toNat : ℚ) ^ (A001221 (A089152 (n + 1)).toNat : ℤ)

end

end A110635.P16053429008803010473

/-!
# A110636: Every 8th term of A083948 where the self-convolution 8th power is congruent modulo 16 to A083948, which consists entirely of numbers 1 through 8.

The programs for A110636, there is no canonical definition to state claims against.
-/

/-! ## A110636.P7739041469201517776

`A083948(8*n)`
-/

namespace A110636.P7739041469201517776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083948 (8 * n)

end

end A110636.P7739041469201517776

/-! ## A110636.P7294165094157945312

`dr(A083948(A008590(n)))`
-/

namespace A110636.P7294165094157945312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083948 (A008590 n).toNat)

end

end A110636.P7294165094157945312

/-! ## A110636.P12598064118768999718

`dr(A083948(lcm(n, A022144(n))))`
-/

namespace A110636.P12598064118768999718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083948 (Int.lcm (n : ℤ) (A022144 n)))

end

end A110636.P12598064118768999718

/-! ## A110636.P5561143249427037545

`dr(A083948(A008586(A005843(n))))`
-/

namespace A110636.P5561143249427037545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083948 (A008586 (A005843 n).toNat).toNat)

end

end A110636.P5561143249427037545

/-! ## A110636.P6067995461721048110

`A083948(A008590(n))^A178334(n)`
-/

namespace A110636.P6067995461721048110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083948 (A008590 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A110636.P6067995461721048110

/-! ## A110636.P16054684333003210592

`A083948(A022144(n))^A178334(n)`
-/

namespace A110636.P16054684333003210592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083948 (A022144 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A110636.P16054684333003210592

/-! ## A110636.P4808696379672708875

`gcd(A000038(n), A083948(A008590(n)))`
-/

namespace A110636.P4808696379672708875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A083948 (A008590 n).toNat)

end

end A110636.P4808696379672708875

/-! ## A110636.P4947759212511151661

`or(A000007(n), A083948(A008590(n)))`
-/

namespace A110636.P4947759212511151661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A083948 (A008590 n).toNat)

end

end A110636.P4947759212511151661

/-! ## A110636.P7170611898358014621

`A083948(A008590(n))+A000007(n+1)`
-/

namespace A110636.P7170611898358014621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083948 (A008590 n).toNat + A000007 (n + 1)

end

end A110636.P7170611898358014621

/-! ## A110636.P12301911546665215480

`lcm(A008836(n+1), A083948(A008590(n)))`
-/

namespace A110636.P12301911546665215480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A083948 (A008590 n).toNat)

end

end A110636.P12301911546665215480

/-! ## A110636.P6913623373955835276

`A083948(A008590(n))^A007318(C(2, n))`
-/

namespace A110636.P6913623373955835276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083948 (A008590 n).toNat : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A110636.P6913623373955835276

/-! ## A110636.P8106752800899872277

`A083948(A008590(n))/A000010(C(2, n)!)`
-/

namespace A110636.P8106752800899872277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083948 (A008590 n).toNat : ℚ) / (A000010 (Nat.factorial (Nat.choose 2 n)) : ℚ)

end

end A110636.P8106752800899872277

/-! ## A110636.P3349113782174485993

`A083948(A008590(n))^ceil(n/A000041(n))`
-/

namespace A110636.P3349113782174485993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083948 (A008590 n).toNat : ℚ) ^ (⌈(n : ℚ) / (A000041 n : ℚ)⌉ : ℤ)

end

end A110636.P3349113782174485993

/-! ## A110636.P6894452657545696880

`A083948(A008590(n))/A000041(C(2, n+2))`
-/

namespace A110636.P6894452657545696880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083948 (A008590 n).toNat : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A110636.P6894452657545696880

/-! ## A110636.P6147224010709836171

`A083948(A008590(n))^(A000040(n+2)%2)`
-/

namespace A110636.P6147224010709836171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083948 (A008590 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 2)) 2 : ℤ)

end

end A110636.P6147224010709836171

/-! ## A110636.P17068149124479475577

`A083948(A008590(n))/A014963(lcm(6, n+1))`
-/

namespace A110636.P17068149124479475577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083948 (A008590 n).toNat : ℚ) / (A014963 (Nat.lcm 6 (n + 1)) : ℚ)

end

end A110636.P17068149124479475577

/-! ## A110636.P9860979403257213466

`A083948(A008590(n))/A007318(and(3, 3-n))`
-/

namespace A110636.P9860979403257213466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083948 (A008590 n).toNat : ℚ) / (A007318 (Int.land 3 (3 - (n : ℤ))).toNat : ℚ)

end

end A110636.P9860979403257213466

/-! ## A110636.P5247285683670813961

`C(A083948(A008590(n)), A000040(n+1)%2)`
-/

namespace A110636.P5247285683670813961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A083948 (A008590 n).toNat).toNat (Int.tmod (A000040 (n + 1)) 2).toNat

end

end A110636.P5247285683670813961

/-! ## A110636.P4827952615253569171

`A083948(A008590(n))/A000045(gcd(n, n+1))`
-/

namespace A110636.P4827952615253569171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083948 (A008590 n).toNat : ℚ) / (A000045 (Nat.gcd n (n + 1)) : ℚ)

end

end A110636.P4827952615253569171

/-! ## A110636.P9705428408228355086

`A083948(A008590(n))+and(2, A000005(n+1)²)`
-/

namespace A110636.P9705428408228355086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083948 (A008590 n).toNat + Int.land 2 (A000005 (n + 1) ^ 2)

end

end A110636.P9705428408228355086

/-!
# A110637: Every 4th term of A083948 where the self-convolution 4th power is congruent modulo 16 to A083948, which consists entirely of numbers 1 through 8.

The programs for A110637, there is no canonical definition to state claims against.
-/

/-! ## A110637.P7553126944875340308

`A110638(2*n)`
-/

namespace A110637.P7553126944875340308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110638 (2 * n)

end

end A110637.P7553126944875340308

/-! ## A110637.P14560206836129325277

`A083948(4*n)`
-/

namespace A110637.P14560206836129325277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083948 (4 * n)

end

end A110637.P14560206836129325277

/-! ## A110637.P3766867095221350504

`dr(A083948(A008586(n)))`
-/

namespace A110637.P3766867095221350504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083948 (A008586 n).toNat)

end

end A110637.P3766867095221350504

/-! ## A110637.P15452087563270517071

`dr(A083948(Δ[A051890(n)]))`
-/

namespace A110637.P15452087563270517071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051890 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083948 (f1 (n + 1) - f1 n).toNat)

end

end A110637.P15452087563270517071

/-! ## A110637.P12907174065003128828

`dr(A083948(record[A066104(n)]))`
-/

namespace A110637.P12907174065003128828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066104 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083948 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A110637.P12907174065003128828

/-! ## A110637.P7704929664742112242

`dr(A083948(A016813(n)-1))`
-/

namespace A110637.P7704929664742112242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083948 (A016813 n - 1).toNat)

end

end A110637.P7704929664742112242

/-! ## A110637.P6690456175058319926

`dr(A083948(A008590(n)/2))`
-/

namespace A110637.P6690456175058319926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083948 (SequenceMachineLib.roundAway ((A008590 n : ℚ) / 2)).toNat)

end

end A110637.P6690456175058319926

/-! ## A110637.P15667433070442134521

`dr(A083948(xor(1, A016813(n))))`
-/

namespace A110637.P15667433070442134521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083948 (Int.xor 1 (A016813 n)).toNat)

end

end A110637.P15667433070442134521

/-! ## A110637.P12052383997142566533

`dr(A083948(A008585(n)+n))`
-/

namespace A110637.P12052383997142566533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083948 (A008585 n + (n : ℤ)).toNat)

end

end A110637.P12052383997142566533

/-! ## A110637.P10259590531202344493

`dr(A083948(lcm(n, A008574(n))))`
-/

namespace A110637.P10259590531202344493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083948 (Int.lcm (n : ℤ) (A008574 n)))

end

end A110637.P10259590531202344493

/-! ## A110637.P12806377739773375316

`dr(A083948(A005843(A005843(n))))`
-/

namespace A110637.P12806377739773375316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083948 (A005843 (A005843 n).toNat).toNat)

end

end A110637.P12806377739773375316

/-! ## A110637.P14809144157875907330

`gcd(A000038(n), A083948(A008590(n)/2))`
-/

namespace A110637.P14809144157875907330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A083948 (SequenceMachineLib.roundAway ((A008590 n : ℚ) / 2)).toNat)

end

end A110637.P14809144157875907330

/-! ## A110637.P10314863570266369941

`or(A000007(n), A083948(A008590(n)/2))`
-/

namespace A110637.P10314863570266369941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A083948 (SequenceMachineLib.roundAway ((A008590 n : ℚ) / 2)).toNat)

end

end A110637.P10314863570266369941

/-! ## A110637.P9527422905412555991

`lcm(A008836(n+1), A083948(A008590(n)/2))`
-/

namespace A110637.P9527422905412555991
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A083948 (SequenceMachineLib.roundAway ((A008590 n : ℚ) / 2)).toNat)

end

end A110637.P9527422905412555991

/-! ## A110637.P9556566557440959312

`A083948(A008574(n))^A019426(A005843(n))`
-/

namespace A110637.P9556566557440959312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083948 (A008574 n).toNat : ℚ) ^ (A019426 (A005843 n).toNat : ℤ)

end

end A110637.P9556566557440959312

/-!
# A110638: Every 2nd term of A083948 where the self-convolution 2nd power is congruent modulo 16 to A083948, which consists entirely of numbers 1 through 8.

The programs for A110638, there is no canonical definition to state claims against.
-/

/-! ## A110638.P9720293470931071927

`A083948(2*n)`
-/

namespace A110638.P9720293470931071927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083948 (2 * n)

end

end A110638.P9720293470931071927

/-! ## A110638.P10766034230151111022

`dr(A083948(n+n))`
-/

namespace A110638.P10766034230151111022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083948 (n + n))

end

end A110638.P10766034230151111022

/-! ## A110638.P9763249020447001418

`A083948(comp[or(1, n)])%9`
-/

namespace A110638.P9763249020447001418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083948 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 9

end

end A110638.P9763249020447001418

/-! ## A110638.P6539648866997798082

`A083948(comp[Δ[n²]])%11`
-/

namespace A110638.P6539648866997798082
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083948 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) 11

end

end A110638.P6539648866997798082

/-! ## A110638.P12538574954641225415

`and(79, A083948(A005843(n)))`
-/

namespace A110638.P12538574954641225415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 79 (A083948 (A005843 n).toNat)

end

end A110638.P12538574954641225415

/-! ## A110638.P722016831844120319

`A083948(n+n)+A000007(n+1)`
-/

namespace A110638.P722016831844120319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083948 (n + n) + A000007 (n + 1)

end

end A110638.P722016831844120319

/-! ## A110638.P12316197643650250259

`A083948(n+n)+char[A083955(n+1)]`
-/

namespace A110638.P12316197643650250259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083955 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083948 (n + n) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A110638.P12316197643650250259

/-! ## A110638.P2688398857499797898

`A083948(A005843(n))^A103131(n+1)²`
-/

namespace A110638.P2688398857499797898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083948 (A005843 n).toNat : ℚ) ^ (A103131 (n + 1) ^ 2 : ℤ)

end

end A110638.P2688398857499797898

/-!
# A110639: Every 9th term of A083949 where the self-convolution 9th power is congruent modulo 27 to A083949, which consists entirely of numbers 1 through 9.

The programs for A110639, there is no canonical definition to state claims against.
-/

/-! ## A110639.P17715031208474064331

`A083949(9*n)`
-/

namespace A110639.P17715031208474064331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083949 (9 * n)

end

end A110639.P17715031208474064331

/-! ## A110639.P15117961879491327513

`dr(A083949(A008591(n)))`
-/

namespace A110639.P15117961879491327513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083949 (A008591 n).toNat)

end

end A110639.P15117961879491327513

/-! ## A110639.P16922884071029405806

`dr(A083949(A008592(n)-n))`
-/

namespace A110639.P16922884071029405806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083949 (A008592 n - (n : ℤ)).toNat)

end

end A110639.P16922884071029405806

/-! ## A110639.P10908862745990380932

`A083949(A008592(n)-n)^A178334(n)`
-/

namespace A110639.P10908862745990380932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083949 (A008592 n - (n : ℤ)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A110639.P10908862745990380932

/-! ## A110639.P4485165325741207238

`gcd(A000038(n), A083949(A008592(n)-n))`
-/

namespace A110639.P4485165325741207238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A083949 (A008592 n - (n : ℤ)).toNat)

end

end A110639.P4485165325741207238

/-! ## A110639.P14141981695755868148

`or(A000007(n), A083949(A008592(n)-n))`
-/

namespace A110639.P14141981695755868148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A083949 (A008592 n - (n : ℤ)).toNat)

end

end A110639.P14141981695755868148

/-! ## A110639.P14546257173352321558

`A083949(A008591(n))^A014963(∑[n+1])`
-/

namespace A110639.P14546257173352321558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083949 (A008591 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A110639.P14546257173352321558

/-! ## A110639.P8611712717001754684

`A083949(A008592(n)-n)/A158388(n)²`
-/

namespace A110639.P8611712717001754684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083949 (A008592 n - (n : ℤ)).toNat : ℚ) / (A158388 n ^ 2 : ℚ)

end

end A110639.P8611712717001754684

/-! ## A110639.P15259566008091440131

`A083949(A008592(n)-n)+char[A017032(n)]`
-/

namespace A110639.P15259566008091440131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017032 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083949 (A008592 n - (n : ℤ)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A110639.P15259566008091440131

/-! ## A110639.P16156552658041265091

`A083949(A008592(n)-n)/A007318(C(2, n))`
-/

namespace A110639.P16156552658041265091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083949 (A008592 n - (n : ℤ)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A110639.P16156552658041265091

/-! ## A110639.P12375432014098745241

`A083949(A008592(n)-n)^A018252(C(2, n)!)`
-/

namespace A110639.P12375432014098745241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083949 (A008592 n - (n : ℤ)).toNat : ℚ) ^ (A018252 (Nat.factorial (Nat.choose 2 n)) : ℤ)

end

end A110639.P12375432014098745241

/-! ## A110639.P5167028746626247384

`A083949(A008591(n))+1-∑{e}[A000040(n+1), #]`
-/

namespace A110639.P5167028746626247384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083949 (A008591 n).toNat + 1 - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A110639.P5167028746626247384

/-! ## A110639.P1255652958550851493

`A083949(A008592(n)-n)/((-1)^A007318(n))²`
-/

namespace A110639.P1255652958550851493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083949 (A008592 n - (n : ℤ)).toNat : ℚ) / ((-1 : ℚ) ^ (A007318 n : ℤ)) ^ 2

end

end A110639.P1255652958550851493

/-! ## A110639.P6284258216255846601

`A083949(A008592(n)-n)^(A000045(C(2, n+2))+1)`
-/

namespace A110639.P6284258216255846601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083949 (A008592 n - (n : ℤ)).toNat : ℚ) ^ (A000045 (Nat.choose 2 (n + 2)) + 1 : ℤ)

end

end A110639.P6284258216255846601

/-! ## A110639.P6207039717748480476

`A083949(A008592(n)-n)/A007318(A133825(n))`
-/

namespace A110639.P6207039717748480476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083949 (A008592 n - (n : ℤ)).toNat : ℚ) / (A007318 (A133825 n).toNat : ℚ)

end

end A110639.P6207039717748480476

/-!
# A110640: Every third term of A083949 where the self-convolution third power is congruent modulo 27 to A083949, which consists entirely of numbers 1 through 9.

The programs for A110640, there is no canonical definition to state claims against.
-/

/-! ## A110640.P6295073460933732437

`A083949(3*n)`
-/

namespace A110640.P6295073460933732437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083949 (3 * n)

end

end A110640.P6295073460933732437

/-! ## A110640.P11845395361845333709

`dr(A083949(A008585(n)))`
-/

namespace A110640.P11845395361845333709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083949 (A008585 n).toNat)

end

end A110640.P11845395361845333709

/-! ## A110640.P13914058365037507099

`dr(A083949(record[A071045(n)]))`
-/

namespace A110640.P13914058365037507099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083949 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A110640.P13914058365037507099

/-! ## A110640.P18377607139231342016

`dr(A083949(A008591(n)/3))`
-/

namespace A110640.P18377607139231342016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083949 (SequenceMachineLib.roundAway ((A008591 n : ℚ) / 3)).toNat)

end

end A110640.P18377607139231342016

/-! ## A110640.P13173409684662429796

`dr(A083949(A005843(n)+n))`
-/

namespace A110640.P13173409684662429796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083949 (A005843 n + (n : ℤ)).toNat)

end

end A110640.P13173409684662429796

/-! ## A110640.P7961963275571593786

`dr(A083949(lcm(n, A008486(n))))`
-/

namespace A110640.P7961963275571593786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083949 (Int.lcm (n : ℤ) (A008486 n)))

end

end A110640.P7961963275571593786

/-! ## A110640.P7835833250745971977

`dr(A083949(A028242(A016921(n))))`
-/

namespace A110640.P7835833250745971977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083949 (A028242 (A016921 n).toNat).toNat)

end

end A110640.P7835833250745971977

/-! ## A110640.P1493256487076776335

`gcd(A000038(n), A083949(A008486(n)))`
-/

namespace A110640.P1493256487076776335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A083949 (A008486 n).toNat)

end

end A110640.P1493256487076776335

/-! ## A110640.P3757366014241234232

`or(A000007(n), A083949(A005843(n)+n))`
-/

namespace A110640.P3757366014241234232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A083949 (A005843 n + (n : ℤ)).toNat)

end

end A110640.P3757366014241234232

/-! ## A110640.P3199750769474474902

`A083949(A008486(A000038(n)+n))-A000038(n)`
-/

namespace A110640.P3199750769474474902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083949 (A008486 (A000038 n + (n : ℤ)).toNat).toNat - A000038 n

end

end A110640.P3199750769474474902

/-!
# A110641: Every 10th term of A083950.

The programs for A110641, there is no canonical definition to state claims against.
-/

/-! ## A110641.P11568189430750723863

`A083950(10*n)`
-/

namespace A110641.P11568189430750723863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083950 (10 * n)

end

end A110641.P11568189430750723863

/-! ## A110641.P13913238555546475664

`A083950(A008592(n))%11`
-/

namespace A110641.P13913238555546475664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083950 (A008592 n).toNat) 11

end

end A110641.P13913238555546475664

/-! ## A110641.P936461169362691719

`A083950(A008592(n))^A178334(n)`
-/

namespace A110641.P936461169362691719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083950 (A008592 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A110641.P936461169362691719

/-! ## A110641.P13293473656578271815

`gcd(A000038(n), A083950(A008592(n)))`
-/

namespace A110641.P13293473656578271815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A083950 (A008592 n).toNat)

end

end A110641.P13293473656578271815

/-! ## A110641.P1944864063371371246

`or(A000007(n), A083950(A008592(n)))`
-/

namespace A110641.P1944864063371371246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A083950 (A008592 n).toNat)

end

end A110641.P1944864063371371246

/-! ## A110641.P5684384137073427943

`A083950(A008592(n))+A000007(n+1)`
-/

namespace A110641.P5684384137073427943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083950 (A008592 n).toNat + A000007 (n + 1)

end

end A110641.P5684384137073427943

/-! ## A110641.P18104875680754803249

`A083950(A008592(n))+and(2, A057427(n))`
-/

namespace A110641.P18104875680754803249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083950 (A008592 n).toNat + Int.land 2 (A057427 n)

end

end A110641.P18104875680754803249

/-! ## A110641.P15865001057387039196

`A083950(A008592(n))/A007318(C(2, n))`
-/

namespace A110641.P15865001057387039196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083950 (A008592 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A110641.P15865001057387039196

/-! ## A110641.P13684006909086099389

`A083950(A008592(n))^A007318(C(3, n))`
-/

namespace A110641.P13684006909086099389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083950 (A008592 n).toNat : ℚ) ^ (A007318 (Nat.choose 3 n) : ℤ)

end

end A110641.P13684006909086099389

/-! ## A110641.P2045614925105797737

`A083950(A008592(n))^A007318(and(3, -n))`
-/

namespace A110641.P2045614925105797737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083950 (A008592 n).toNat : ℚ) ^ (A007318 (Int.land 3 (-(n : ℤ))).toNat : ℤ)

end

end A110641.P2045614925105797737

/-! ## A110641.P15445217365873574499

`A083950(A008592(n))/A000108(C(2, n+2))`
-/

namespace A110641.P15445217365873574499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083950 (A008592 n).toNat : ℚ) / (A000108 (Nat.choose 2 (n + 2)) : ℚ)

end

end A110641.P15445217365873574499

/-! ## A110641.P16047215002816232629

`A083950(A008592(n))/A000005(gcd(n, n+1))`
-/

namespace A110641.P16047215002816232629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083950 (A008592 n).toNat : ℚ) / (A000005 (Nat.gcd n (n + 1)) : ℚ)

end

end A110641.P16047215002816232629

/-! ## A110641.P10378757956930204859

`A083950(A008592(n))/A007318(4-(-1)^n)`
-/

namespace A110641.P10378757956930204859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083950 (A008592 n).toNat : ℚ) / (A007318 (4 - (-1) ^ n).toNat : ℚ)

end

end A110641.P10378757956930204859

/-!
# A110642: Every 5th term of A083950 where the self-convolution 5th power is congruent modulo 25 to A083950, which consists entirely of numbers 1 through 10.

The programs for A110642, there is no canonical definition to state claims against.
-/

/-! ## A110642.P17845421707484956570

`A083950(5*n)`
-/

namespace A110642.P17845421707484956570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083950 (5 * n)

end

end A110642.P17845421707484956570

/-! ## A110642.P15566701549620119038

`A083950(A008587(n))%11`
-/

namespace A110642.P15566701549620119038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083950 (A008587 n).toNat) 11

end

end A110642.P15566701549620119038

/-! ## A110642.P10105506353848502475

`gcd(floor(acot(n)), A083950(A008706(n)))`
-/

namespace A110642.P10105506353848502475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A083950 (A008706 n).toNat)

end

end A110642.P10105506353848502475

/-! ## A110642.P12346147434299765350

`A083950(A008706(n))^A178334(n)`
-/

namespace A110642.P12346147434299765350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083950 (A008706 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A110642.P12346147434299765350

/-! ## A110642.P9147816433311658619

`gcd(A000038(n), A083950(A008587(n)))`
-/

namespace A110642.P9147816433311658619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A083950 (A008587 n).toNat)

end

end A110642.P9147816433311658619

/-! ## A110642.P17568795160209084195

`A083950(A008587(n))/A007318(C(2, n))`
-/

namespace A110642.P17568795160209084195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083950 (A008587 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A110642.P17568795160209084195

/-! ## A110642.P9508215099981827759

`A083950(A008706(n))^(A000040(n+1)%2)`
-/

namespace A110642.P9508215099981827759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083950 (A008706 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A110642.P9508215099981827759

/-! ## A110642.P17557849549347894004

`A083950(A008587(n))/A000041(C(2, n+2))`
-/

namespace A110642.P17557849549347894004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083950 (A008587 n).toNat : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A110642.P17557849549347894004

/-! ## A110642.P15918901003655405948

`A083950(A008587(n))+A001222(gcd(n, n+1))`
-/

namespace A110642.P15918901003655405948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083950 (A008587 n).toNat + A001222 (Nat.gcd n (n + 1))

end

end A110642.P15918901003655405948

/-! ## A110642.P8790157263275835631

`A083950(A008587(n))^((-1)^A007318(n))²`
-/

namespace A110642.P8790157263275835631
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A083950 (A008587 n).toNat : ℝ) ^ (((-1 : ℚ) ^ (A007318 n : ℤ)) ^ 2 : ℝ)

end

end A110642.P8790157263275835631

/-!
# A110643: Every 2nd term of A083950 where the self-convolution 2nd power is congruent modulo 4 to A083950, which consists entirely of numbers 1 through 10.

The programs for A110643, there is no canonical definition to state claims against.
-/

/-! ## A110643.P1909631040694604895

`A083950(2*n)`
-/

namespace A110643.P1909631040694604895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083950 (2 * n)

end

end A110643.P1909631040694604895

/-! ## A110643.P17360427121147536821

`A083950(comp[or(1, n)])%11`
-/

namespace A110643.P17360427121147536821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083950 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 11

end

end A110643.P17360427121147536821

/-! ## A110643.P746527423139091678

`A083950(comp[Δ[n²]])%11`
-/

namespace A110643.P746527423139091678
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083950 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) 11

end

end A110643.P746527423139091678

/-! ## A110643.P6018269901990350906

`xor(1, xor(1, A083950(n+n)))`
-/

namespace A110643.P6018269901990350906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A083950 (n + n)))

end

end A110643.P6018269901990350906

/-! ## A110643.P7972198594945191849

`abs(1-A083950(comp[Δ[(n-1)²]]))+1`
-/

namespace A110643.P7972198594945191849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A083950 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)| + 1

end

end A110643.P7972198594945191849

/-! ## A110643.P10640577231766607236

`or(A000007(n), A083950(n+n))`
-/

namespace A110643.P10640577231766607236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A083950 (n + n))

end

end A110643.P10640577231766607236

/-! ## A110643.P372168510734094198

`A083950(n+n)+val(A005408(n), 2)`
-/

namespace A110643.P372168510734094198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083950 (n + n) + (SequenceMachineLib.valuation (A005408 n).toNat 2 : ℤ)

end

end A110643.P372168510734094198

/-! ## A110643.P8424241336915881715

`1-(A007318(2-(-1)^n)-A083950(n+n))`
-/

namespace A110643.P8424241336915881715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A007318 (2 - (-1) ^ n).toNat - A083950 (n + n))

end

end A110643.P8424241336915881715

/-! ## A110643.P14231312849785776889

`A083950(n+n)/A014963(A000217(n+4))`
-/

namespace A110643.P14231312849785776889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083950 (n + n) : ℚ) / (A014963 (A000217 (n + 4)).toNat : ℚ)

end

end A110643.P14231312849785776889

/-!
# A110644: Every 11th term of A084066 such that the self-convolution 11th power is congruent modulo 121 to A084066, which consists entirely of numbers 1 through 11.

The programs for A110644, there is no canonical definition to state claims against.
-/

/-! ## A110644.P5487065074492694010

`A084066(11*n)`
-/

namespace A110644.P5487065074492694010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084066 (11 * n)

end

end A110644.P5487065074492694010

/-! ## A110644.P13941343713126028870

`A084066(A008593(n))%12`
-/

namespace A110644.P13941343713126028870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084066 (A008593 n).toNat) 12

end

end A110644.P13941343713126028870

/-! ## A110644.P17217506922447484579

`∑{d}[A084066(A008593(n)), A000010(#)]`
-/

namespace A110644.P17217506922447484579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084066 (A008593 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A110644.P17217506922447484579

/-! ## A110644.P14156249063701158910

`A084066(A008593(n))/A007318(C(2, n))`
-/

namespace A110644.P14156249063701158910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084066 (A008593 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A110644.P14156249063701158910

/-! ## A110644.P12116950148789500329

`A084066(A008593(n))/A158388(n)^n`
-/

namespace A110644.P12116950148789500329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084066 (A008593 n).toNat : ℚ) / (A158388 n ^ n : ℚ)

end

end A110644.P12116950148789500329

/-! ## A110644.P17271977535831869835

`A084066(A008593(n))^A014963(∑[n+1])`
-/

namespace A110644.P17271977535831869835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084066 (A008593 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A110644.P17271977535831869835

/-! ## A110644.P2921065070336313620

`A084066(A008593(n))+C(2, A000203(n+2))`
-/

namespace A110644.P2921065070336313620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084066 (A008593 n).toNat + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A110644.P2921065070336313620

/-! ## A110644.P7692970968453570080

`A084066(A008593(n))^A007318(C(2, n+2))`
-/

namespace A110644.P7692970968453570080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084066 (A008593 n).toNat : ℚ) ^ (A007318 (Nat.choose 2 (n + 2)) : ℤ)

end

end A110644.P7692970968453570080

/-! ## A110644.P6419253679950588027

`A084066(A008593(n))/∑{e}[A000040(n+2), #]`
-/

namespace A110644.P6419253679950588027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084066 (A008593 n).toNat : ℚ) / ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℚ)

end

end A110644.P6419253679950588027

/-!
# A110645: Every 12th term of A084067.

The programs for A110645, there is no canonical definition to state claims against.
-/

/-! ## A110645.P1047630728242857029

`A084067(12*n)`
-/

namespace A110645.P1047630728242857029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084067 (12 * n)

end

end A110645.P1047630728242857029

/-! ## A110645.P7449185600758179564

`A084067(A008594(n))%13`
-/

namespace A110645.P7449185600758179564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084067 (A008594 n).toNat) 13

end

end A110645.P7449185600758179564

/-! ## A110645.P10766792358002338060

`A084067(sqrt(A017522(n)))%13`
-/

namespace A110645.P10766792358002338060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084067 (SequenceMachineLib.roundAway (Real.sqrt (A017522 n : ℝ))).toNat) 13

end

end A110645.P10766792358002338060

/-! ## A110645.P10265150130809777476

`A084067(Δ[A103115(n)])%13`
-/

namespace A110645.P10265150130809777476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103115 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084067 (f1 (n + 1) - f1 n).toNat) 13

end

end A110645.P10265150130809777476

/-! ## A110645.P12533932971394070663

`A084067(A008592(n)+n+n)%17`
-/

namespace A110645.P12533932971394070663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084067 (A008592 n + (n : ℤ) + (n : ℤ)).toNat) 17

end

end A110645.P12533932971394070663

/-! ## A110645.P12642591758695314884

`∏{d}[A084067(A008594(n)), A014963(#)]`
-/

namespace A110645.P12642591758695314884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084067 (A008594 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A110645.P12642591758695314884

/-! ## A110645.P15196314756864472549

`A084067(A008594(n))/A000108(and(1, -n))`
-/

namespace A110645.P15196314756864472549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084067 (A008594 n).toNat : ℚ) / (A000108 (Int.land 1 (-(n : ℤ))).toNat : ℚ)

end

end A110645.P15196314756864472549

/-! ## A110645.P14646370568747158701

`A084067(A008594(n))/A000010(gcd(n, n+1))`
-/

namespace A110645.P14646370568747158701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084067 (A008594 n).toNat : ℚ) / (A000010 (Nat.gcd n (n + 1)) : ℚ)

end

end A110645.P14646370568747158701

/-! ## A110645.P1425782147418804834

`A084067(Δ[A103115(n)])/A000045(((-1)^n)²)`
-/

namespace A110645.P1425782147418804834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103115 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084067 (f1 (n + 1) - f1 n).toNat : ℚ) / (A000045 (((-1) ^ n) ^ 2).toNat : ℚ)

end

end A110645.P1425782147418804834

/-! ## A110645.P8369393530714696815

`A084067(Δ[A103115(n)])/A000108(((-1)^n)²)`
-/

namespace A110645.P8369393530714696815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103115 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084067 (f1 (n + 1) - f1 n).toNat : ℚ) / (A000108 (((-1) ^ n) ^ 2).toNat : ℚ)

end

end A110645.P8369393530714696815

/-!
# A110646: Every 6th term of A084067.

The programs for A110646, there is no canonical definition to state claims against.
-/

/-! ## A110646.P14504567733957227801

`A084067(6*n)`
-/

namespace A110646.P14504567733957227801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084067 (6 * n)

end

end A110646.P14504567733957227801

/-! ## A110646.P2763825806973398689

`A084067(A008588(n))%13`
-/

namespace A110646.P2763825806973398689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084067 (A008588 n).toNat) 13

end

end A110646.P2763825806973398689

/-! ## A110646.P15327120972489297008

`A084067(sqrt(A016910(n)))%14`
-/

namespace A110646.P15327120972489297008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084067 (SequenceMachineLib.roundAway (Real.sqrt (A016910 n : ℝ))).toNat) 14

end

end A110646.P15327120972489297008

/-! ## A110646.P14452754630964125529

`A084067(A008458(n))%(Δ[n²]+10)`
-/

namespace A110646.P14452754630964125529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084067 (A008458 n).toNat) ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 10)

end

end A110646.P14452754630964125529

/-! ## A110646.P16594969574311954535

`C(A084067(A008588(n)), A178334(n))`
-/

namespace A110646.P16594969574311954535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A084067 (A008588 n).toNat).toNat (A178334 n).toNat

end

end A110646.P16594969574311954535

/-! ## A110646.P17080435556776962080

`A084067(A008588(n))/A007318(C(2, n))`
-/

namespace A110646.P17080435556776962080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084067 (A008588 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A110646.P17080435556776962080

/-! ## A110646.P308807452075032925

`A084067(A008588(n))/A000041(C(2, n+2))`
-/

namespace A110646.P308807452075032925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084067 (A008588 n).toNat : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A110646.P308807452075032925

/-! ## A110646.P8244535017218008032

`A084067(A008588(n))/A000108(C(2, n+2))`
-/

namespace A110646.P8244535017218008032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084067 (A008588 n).toNat : ℚ) / (A000108 (Nat.choose 2 (n + 2)) : ℚ)

end

end A110646.P8244535017218008032

/-! ## A110646.P8663369973313312822

`A084067(A008588(n))/A007318(floor(1/(n+1)))`
-/

namespace A110646.P8663369973313312822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084067 (A008588 n).toNat : ℚ) / (A007318 ⌊1 / (n + 1 : ℚ)⌋.toNat : ℚ)

end

end A110646.P8663369973313312822

/-! ## A110646.P9695239881797799008

`A084067(sqrt(A016910(n)))/A000010(((-1)^n)²)`
-/

namespace A110646.P9695239881797799008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084067 (SequenceMachineLib.roundAway (Real.sqrt (A016910 n : ℝ))).toNat : ℚ) / (A000010 (((-1) ^ n) ^ 2).toNat : ℚ)

end

end A110646.P9695239881797799008

/-!
# A110647: Every 4th term of A084067 where the self-convolution 4th power is congruent modulo 8 to A084067, which consists entirely of numbers 1 through 12.

The programs for A110647, there is no canonical definition to state claims against.
-/

/-! ## A110647.P9667298197440319495

`A110649(2*n)`
-/

namespace A110647.P9667298197440319495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110649 (2 * n)

end

end A110647.P9667298197440319495

/-! ## A110647.P4683972468304406937

`A084067(4*n)`
-/

namespace A110647.P4683972468304406937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084067 (4 * n)

end

end A110647.P4683972468304406937

/-! ## A110647.P4901414701817429262

`A084067(A008586(n))%13`
-/

namespace A110647.P4901414701817429262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084067 (A008586 n).toNat) 13

end

end A110647.P4901414701817429262

/-! ## A110647.P6904623448840545800

`A084067(Δ[A051890(n)])%13`
-/

namespace A110647.P6904623448840545800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084067 (f1 (n + 1) - f1 n).toNat) 13

end

end A110647.P6904623448840545800

/-! ## A110647.P2008940723328028527

`A084067(A008590(n)/2)%13`
-/

namespace A110647.P2008940723328028527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084067 (SequenceMachineLib.roundAway ((A008590 n : ℚ) / 2)).toNat) 13

end

end A110647.P2008940723328028527

/-! ## A110647.P18292766481408038741

`A084067(eq[1, A055975(n+1)])%13`
-/

namespace A110647.P18292766481408038741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084067 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) 13

end

end A110647.P18292766481408038741

/-! ## A110647.P2007277607447972662

`A072089(A084067(Δ[A051890(n)]))`
-/

namespace A110647.P2007277607447972662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072089 (A084067 (f1 (n + 1) - f1 n).toNat).toNat

end

end A110647.P2007277607447972662

/-! ## A110647.P5465806098794971518

`A084067(A005843(A005843(n)))%14`
-/

namespace A110647.P5465806098794971518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084067 (A005843 (A005843 n).toNat).toNat) 14

end

end A110647.P5465806098794971518

/-! ## A110647.P11338847856956825650

`A084067(A008574(n))^A178334(n)`
-/

namespace A110647.P11338847856956825650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084067 (A008574 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A110647.P11338847856956825650

/-! ## A110647.P8169840925035026519

`∑{d}[A084067(A008586(n)), A000010(#)]`
-/

namespace A110647.P8169840925035026519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084067 (A008586 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A110647.P8169840925035026519

/-! ## A110647.P11079147603230459059

`A084067(A008574(n))%A000040(n+5)`
-/

namespace A110647.P11079147603230459059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084067 (A008574 n).toNat) (A000040 (n + 5))

end

end A110647.P11079147603230459059

/-!
# A110648: Every third term of A084067 where the self-convolution third power is congruent modulo 9 to A084067, which consists entirely of numbers 1 through 12.

The programs for A110648, there is no canonical definition to state claims against.
-/

/-! ## A110648.P341944034404798550

`A084067(3*n)`
-/

namespace A110648.P341944034404798550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084067 (3 * n)

end

end A110648.P341944034404798550

/-! ## A110648.P4659192291594870767

`A084067(n+n+n)%17`
-/

namespace A110648.P4659192291594870767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084067 (n + n + n)) 17

end

end A110648.P4659192291594870767

/-! ## A110648.P316148226638891114

`and(15, A084067(A008585(n)))`
-/

namespace A110648.P316148226638891114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (A084067 (A008585 n).toNat)

end

end A110648.P316148226638891114

/-! ## A110648.P413258408742361908

`∏{d}[A084067(A008588(n)/2), A014963(#)]`
-/

namespace A110648.P413258408742361908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084067 (SequenceMachineLib.roundAway ((A008588 n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A110648.P413258408742361908

/-! ## A110648.P10148774099691130499

`∑{d}[A084067(A005843(n)+n), A000010(#)]`
-/

namespace A110648.P10148774099691130499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084067 (A005843 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A110648.P10148774099691130499

/-! ## A110648.P1356077362827154433

`A084067(A005843(n)+n)/A007318(C(2, n+2))`
-/

namespace A110648.P1356077362827154433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084067 (A005843 n + (n : ℤ)).toNat : ℚ) / (A007318 (Nat.choose 2 (n + 2)) : ℚ)

end

end A110648.P1356077362827154433

/-! ## A110648.P17733743464689429500

`A084067(A005843(n)+n)/A014963(A000217(n+5))`
-/

namespace A110648.P17733743464689429500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084067 (A005843 n + (n : ℤ)).toNat : ℚ) / (A014963 (A000217 (n + 5)).toNat : ℚ)

end

end A110648.P17733743464689429500

/-!
# A110649: Every 2nd term of A084067 where the self-convolution 2nd power is congruent modulo 8 to A084067, which consists entirely of numbers 1 through 12.

The programs for A110649, there is no canonical definition to state claims against.
-/

/-! ## A110649.P11227341381990427913

`A084067(2*n)`
-/

namespace A110649.P11227341381990427913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084067 (2 * n)

end

end A110649.P11227341381990427913

/-! ## A110649.P11644680075761385448

`A084067(Δ[n²]-1)%13`
-/

namespace A110649.P11644680075761385448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084067 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat) 13

end

end A110649.P11644680075761385448

/-! ## A110649.P1699112050488288505

`and(15, A084067(A005843(n)))`
-/

namespace A110649.P1699112050488288505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (A084067 (A005843 n).toNat)

end

end A110649.P1699112050488288505

/-! ## A110649.P9866374087879450994

`A000027(A084067(n+n))`
-/

namespace A110649.P9866374087879450994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A084067 (n + n)).toNat

end

end A110649.P9866374087879450994

/-! ## A110649.P14376425022804623131

`A106614(A084067(comp[Δ[n²]]))`
-/

namespace A110649.P14376425022804623131
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (A084067 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A110649.P14376425022804623131

/-! ## A110649.P14565176654360030648

`A246091(A084067(comp[n+1+n]))`
-/

namespace A110649.P14565176654360030648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246091 (A084067 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A110649.P14565176654360030648

/-! ## A110649.P7527908724363662981

`A028310(A084067(record[A131452(n)]))`
-/

namespace A110649.P7527908724363662981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A084067 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A110649.P7527908724363662981

/-! ## A110649.P462454190355460160

`∑{d}[A084067(A005843(n)), A000010(#)]`
-/

namespace A110649.P462454190355460160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084067 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A110649.P462454190355460160

/-! ## A110649.P8493858478071750046

`A084067(n-A001489(n))/gcd(n+1, A000040(n+1))`
-/

namespace A110649.P8493858478071750046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084067 ((n : ℤ) - A001489 n).toNat : ℚ) / (Int.gcd (n + 1 : ℤ) (A000040 (n + 1)) : ℚ)

end

end A110649.P8493858478071750046

/-!
# A110650: n^2 followed by n^4 followed by n followed by n^3.

The programs for A110650, the canonical program `A110650.P11710532808952762772` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110650 has offset 1).

The definition of A110650 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110650.P11710532808952762772

`A110009(A092486(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A110650

/-- `A110009(A092486(n))` -/
def P11710532808952762772.Spec : Prop :=
  ∀ n, P11710532808952762772.a n = A110650 (n + 1)

theorem P11710532808952762772.correct : P11710532808952762772.Spec := by
  intro n
  simp only [A110650, Nat.add_sub_cancel]

end A110650

/-! ## A110650.P2056795647929979458

`A110485(A116966(n))`
-/

namespace A110650.P2056795647929979458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110485 (A116966 n).toNat

end

end A110650.P2056795647929979458

namespace A110650

/-- `A110485(A116966(n))` -/
def P2056795647929979458.Spec : Prop :=
  ∀ n, P2056795647929979458.a n = A110650 (n + 1)

end A110650

/-! ## A110650.P662338677470925662

`A110653(A263449(n))`
-/

namespace A110650.P662338677470925662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110653 (A263449 n).toNat

end

end A110650.P662338677470925662

namespace A110650

/-- `A110653(A263449(n))` -/
def P662338677470925662.Spec : Prop :=
  ∀ n, P662338677470925662.a n = A110650 (n + 1)

end A110650

/-! ## A110650.P15669399983997832846

`A110652(A056699(n+1))`
-/

namespace A110650.P15669399983997832846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110652 (A056699 (n + 1)).toNat

end

end A110650.P15669399983997832846

namespace A110650

/-- `A110652(A056699(n+1))` -/
def P15669399983997832846.Spec : Prop :=
  ∀ n, P15669399983997832846.a n = A110650 (n + 1)

end A110650

/-! ## A110650.P2907273624678276560

`A110485(A080412(n)+1)`
-/

namespace A110650.P2907273624678276560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110485 (A080412 n + 1).toNat

end

end A110650.P2907273624678276560

namespace A110650

/-- `A110485(A080412(n)+1)` -/
def P2907273624678276560.Spec : Prop :=
  ∀ n, P2907273624678276560.a n = A110650 (n + 1)

end A110650

/-! ## A110650.P2334541242778921909

`A110651(A133256(n+1))`
-/

namespace A110650.P2334541242778921909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110651 (A133256 (n + 1)).toNat

end

end A110650.P2334541242778921909

namespace A110650

/-- `A110651(A133256(n+1))` -/
def P2334541242778921909.Spec : Prop :=
  ∀ n, P2334541242778921909.a n = A110650 (n + 1)

end A110650

/-! ## A110650.P17493509386173282337

`A110009(A159966(n+1))`
-/

namespace A110650.P17493509386173282337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110009 (A159966 (n + 1)).toNat

end

end A110650.P17493509386173282337

namespace A110650

/-- `A110009(A159966(n+1))` -/
def P17493509386173282337.Spec : Prop :=
  ∀ n, P17493509386173282337.a n = A110650 (n + 1)

end A110650

/-! ## A110650.P1351068988444802616

`A110653(A159966(n)+1)`
-/

namespace A110650.P1351068988444802616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110653 (A159966 n + 1).toNat

end

end A110650.P1351068988444802616

namespace A110650

/-- `A110653(A159966(n)+1)` -/
def P1351068988444802616.Spec : Prop :=
  ∀ n, P1351068988444802616.a n = A110650 (n + 1)

end A110650

/-! ## A110650.P7746378427364655254

`A110003(A256008(n+1))`
-/

namespace A110650.P7746378427364655254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110003 (A256008 (n + 1)).toNat

end

end A110650.P7746378427364655254

namespace A110650

/-- `A110003(A256008(n+1))` -/
def P7746378427364655254.Spec : Prop :=
  ∀ n, P7746378427364655254.a n = A110650 (n + 1)

end A110650

/-! ## A110650.P5435421805307036968

`A110622(A284307(n+1))`
-/

namespace A110650.P5435421805307036968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110622 (A284307 (n + 1)).toNat

end

end A110650.P5435421805307036968

namespace A110650

/-- `A110622(A284307(n+1))` -/
def P5435421805307036968.Spec : Prop :=
  ∀ n, P5435421805307036968.a n = A110650 (n + 1)

end A110650

/-! ## A110650.P10487871200892294548

`A110005(A298364(n+1))`
-/

namespace A110650.P10487871200892294548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110005 (A298364 (n + 1)).toNat

end

end A110650.P10487871200892294548

namespace A110650

/-- `A110005(A298364(n+1))` -/
def P10487871200892294548.Spec : Prop :=
  ∀ n, P10487871200892294548.a n = A110650 (n + 1)

end A110650

/-! ## A110650.P13916747458207282689

`A110009(A263449(n+1)-1)`
-/

namespace A110650.P13916747458207282689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110009 (A263449 (n + 1) - 1).toNat

end

end A110650.P13916747458207282689

namespace A110650

/-- `A110009(A263449(n+1)-1)` -/
def P13916747458207282689.Spec : Prop :=
  ∀ n, P13916747458207282689.a n = A110650 (n + 1)

end A110650

/-! ## A110650.P15031285592960118968

`A110005(A056699(n+2)-1)`
-/

namespace A110650.P15031285592960118968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110005 (A056699 (n + 2) - 1).toNat

end

end A110650.P15031285592960118968

namespace A110650

/-- `A110005(A056699(n+2)-1)` -/
def P15031285592960118968.Spec : Prop :=
  ∀ n, P15031285592960118968.a n = A110650 (n + 1)

end A110650

/-! ## A110650.P5678285188018832694

`A110485(A133256(n+2)-1)`
-/

namespace A110650.P5678285188018832694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110485 (A133256 (n + 2) - 1).toNat

end

end A110650.P5678285188018832694

namespace A110650

/-- `A110485(A133256(n+2)-1)` -/
def P5678285188018832694.Spec : Prop :=
  ∀ n, P5678285188018832694.a n = A110650 (n + 1)

end A110650

/-! ## A110650.P16500490607582960444

`A110009(n+1)/A110003(n+2)*A110009(n+2)`
-/

namespace A110650.P16500490607582960444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110009 (n + 1) : ℚ) / (A110003 (n + 2) : ℚ) * (A110009 (n + 2) : ℚ)

end

end A110650.P16500490607582960444

namespace A110650

/-- `A110009(n+1)/A110003(n+2)*A110009(n+2)` -/
def P16500490607582960444.Spec : Prop :=
  ∀ n, P16500490607582960444.a n = (A110650 (n + 1) : ℚ)

end A110650

/-! ## A110650.P11127096229925797828

`A110009(n+1)/A110005(n+2)*A110004(n+2)`
-/

namespace A110650.P11127096229925797828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110009 (n + 1) : ℚ) / (A110005 (n + 2) : ℚ) * (A110004 (n + 2) : ℚ)

end

end A110650.P11127096229925797828

namespace A110650

/-- `A110009(n+1)/A110005(n+2)*A110004(n+2)` -/
def P11127096229925797828.Spec : Prop :=
  ∀ n, P11127096229925797828.a n = (A110650 (n + 1) : ℚ)

end A110650

/-!
# A110651: n^2 followed by n^4 followed by n^3 followed by n.

The programs for A110651, the canonical program `A110651.P10291907235345254237` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110651 has offset 1).

The definition of A110651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110651.P10291907235345254237

`A110004(xor(3, n)+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A110651

/-- `A110004(xor(3, n)+1)` -/
def P10291907235345254237.Spec : Prop :=
  ∀ n, P10291907235345254237.a n = A110651 (n + 1)

theorem P10291907235345254237.correct : P10291907235345254237.Spec := by
  intro n
  simp only [A110651, Nat.add_sub_cancel]

end A110651

/-! ## A110651.P17674102696309314232

`A110652(A116966(n))`
-/

namespace A110651.P17674102696309314232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110652 (A116966 n).toNat

end

end A110651.P17674102696309314232

namespace A110651

/-- `A110652(A116966(n))` -/
def P17674102696309314232.Spec : Prop :=
  ∀ n, P17674102696309314232.a n = A110651 (n + 1)

end A110651

/-! ## A110651.P16598382842383288216

`A110622(A263449(n))`
-/

namespace A110651.P16598382842383288216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110622 (A263449 n).toNat

end

end A110651.P16598382842383288216

namespace A110651

/-- `A110622(A263449(n))` -/
def P16598382842383288216.Spec : Prop :=
  ∀ n, P16598382842383288216.a n = A110651 (n + 1)

end A110651

/-! ## A110651.P107832984814674555

`A110485(A056699(n+1))`
-/

namespace A110651.P107832984814674555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110485 (A056699 (n + 1)).toNat

end

end A110651.P107832984814674555

namespace A110651

/-- `A110485(A056699(n+1))` -/
def P107832984814674555.Spec : Prop :=
  ∀ n, P107832984814674555.a n = A110651 (n + 1)

end A110651

/-! ## A110651.P11032283445814969681

`A110652(A080412(n)+1)`
-/

namespace A110651.P11032283445814969681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110652 (A080412 n + 1).toNat

end

end A110651.P11032283445814969681

namespace A110651

/-- `A110652(A080412(n)+1)` -/
def P11032283445814969681.Spec : Prop :=
  ∀ n, P11032283445814969681.a n = A110651 (n + 1)

end A110651

/-! ## A110651.P3662064445650144952

`A110004(A113778(n+1))`
-/

namespace A110651.P3662064445650144952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110004 (A113778 (n + 1)).toNat

end

end A110651.P3662064445650144952

namespace A110651

/-- `A110004(A113778(n+1))` -/
def P3662064445650144952.Spec : Prop :=
  ∀ n, P3662064445650144952.a n = A110651 (n + 1)

end A110651

/-! ## A110651.P12159199961386866443

`A110650(A133256(n+1))`
-/

namespace A110651.P12159199961386866443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110650 (A133256 (n + 1)).toNat

end

end A110651.P12159199961386866443

namespace A110651

/-- `A110650(A133256(n+1))` -/
def P12159199961386866443.Spec : Prop :=
  ∀ n, P12159199961386866443.a n = A110651 (n + 1)

end A110651

/-! ## A110651.P5036612440310892166

`A110622(A159966(n)+1)`
-/

namespace A110651.P5036612440310892166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110622 (A159966 n + 1).toNat

end

end A110651.P5036612440310892166

namespace A110651

/-- `A110622(A159966(n)+1)` -/
def P5036612440310892166.Spec : Prop :=
  ∀ n, P5036612440310892166.a n = A110651 (n + 1)

end A110651

/-! ## A110651.P11580938112228600877

`A110653(A284307(n+1))`
-/

namespace A110651.P11580938112228600877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110653 (A284307 (n + 1)).toNat

end

end A110651.P11580938112228600877

namespace A110651

/-- `A110653(A284307(n+1))` -/
def P11580938112228600877.Spec : Prop :=
  ∀ n, P11580938112228600877.a n = A110651 (n + 1)

end A110651

/-! ## A110651.P5913962027465643265

`A110003(n+1)/A110001(n+1)*A110652(n+1)`
-/

namespace A110651.P5913962027465643265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110003 (n + 1) : ℚ) / (A110001 (n + 1) : ℚ) * (A110652 (n + 1) : ℚ)

end

end A110651.P5913962027465643265

namespace A110651

/-- `A110003(n+1)/A110001(n+1)*A110652(n+1)` -/
def P5913962027465643265.Spec : Prop :=
  ∀ n, P5913962027465643265.a n = (A110651 (n + 1) : ℚ)

end A110651

/-! ## A110651.P5118871358048140059

`A110652(A133256(n+2)-1)`
-/

namespace A110651.P5118871358048140059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110652 (A133256 (n + 2) - 1).toNat

end

end A110651.P5118871358048140059

namespace A110651

/-- `A110652(A133256(n+2)-1)` -/
def P5118871358048140059.Spec : Prop :=
  ∀ n, P5118871358048140059.a n = A110651 (n + 1)

end A110651

/-!
# A110652: n^2 followed by n^3 followed by n^4 followed by n.

The programs for A110652, the canonical program `A110652.P17500157700385887911` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110652 has offset 1).

The definition of A110652 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110652.P6127505563635616271

`A008621(n)^(and(3, n+1)+1)`
-/

namespace A110652.P6127505563635616271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n ^ (Nat.land 3 (n + 1) + 1)

end

end A110652.P6127505563635616271

namespace A110652

/-- `A008621(n)^(and(3, n+1)+1)` -/
def P6127505563635616271.Spec : Prop :=
  ∀ n, P6127505563635616271.a n = A110652 (n + 1)

end A110652

/-! ## A110652.P17500157700385887911

`A110651(A116966(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A110652

/-- `A110651(A116966(n))` -/
def P17500157700385887911.Spec : Prop :=
  ∀ n, P17500157700385887911.a n = A110652 (n + 1)

theorem P17500157700385887911.correct : P17500157700385887911.Spec := by
  intro n
  simp only [A110652, Nat.add_sub_cancel]

end A110652

/-! ## A110652.P896241664955846164

`A110485(A263449(n))`
-/

namespace A110652.P896241664955846164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110485 (A263449 n).toNat

end

end A110652.P896241664955846164

namespace A110652

/-- `A110485(A263449(n))` -/
def P896241664955846164.Spec : Prop :=
  ∀ n, P896241664955846164.a n = A110652 (n + 1)

end A110652

/-! ## A110652.P2244817037488672068

`A110622(A056699(n+1))`
-/

namespace A110652.P2244817037488672068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110622 (A056699 (n + 1)).toNat

end

end A110652.P2244817037488672068

namespace A110652

/-- `A110622(A056699(n+1))` -/
def P2244817037488672068.Spec : Prop :=
  ∀ n, P2244817037488672068.a n = A110652 (n + 1)

end A110652

/-! ## A110652.P15307512715818742830

`A110651(A080412(n)+1)`
-/

namespace A110652.P15307512715818742830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110651 (A080412 n + 1).toNat

end

end A110652.P15307512715818742830

namespace A110652

/-- `A110651(A080412(n)+1)` -/
def P15307512715818742830.Spec : Prop :=
  ∀ n, P15307512715818742830.a n = A110652 (n + 1)

end A110652

/-! ## A110652.P16515086084282894887

`A110008(A113778(n+1))`
-/

namespace A110652.P16515086084282894887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110008 (A113778 (n + 1)).toNat

end

end A110652.P16515086084282894887

namespace A110652

/-- `A110008(A113778(n+1))` -/
def P16515086084282894887.Spec : Prop :=
  ∀ n, P16515086084282894887.a n = A110652 (n + 1)

end A110652

/-! ## A110652.P7639520797792143739

`A110653(A133256(n+1))`
-/

namespace A110652.P7639520797792143739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110653 (A133256 (n + 1)).toNat

end

end A110652.P7639520797792143739

namespace A110652

/-- `A110653(A133256(n+1))` -/
def P7639520797792143739.Spec : Prop :=
  ∀ n, P7639520797792143739.a n = A110652 (n + 1)

end A110652

/-! ## A110652.P4168831318505583950

`A110650(A284307(n+1))`
-/

namespace A110652.P4168831318505583950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110650 (A284307 (n + 1)).toNat

end

end A110652.P4168831318505583950

namespace A110652

/-- `A110650(A284307(n+1))` -/
def P4168831318505583950.Spec : Prop :=
  ∀ n, P4168831318505583950.a n = A110652 (n + 1)

end A110652

/-! ## A110652.P3540299240077763156

`A110001(n+1)/A110003(n+1)*A110651(n+1)`
-/

namespace A110652.P3540299240077763156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110001 (n + 1) : ℚ) / (A110003 (n + 1) : ℚ) * (A110651 (n + 1) : ℚ)

end

end A110652.P3540299240077763156

namespace A110652

/-- `A110001(n+1)/A110003(n+1)*A110651(n+1)` -/
def P3540299240077763156.Spec : Prop :=
  ∀ n, P3540299240077763156.a n = (A110652 (n + 1) : ℚ)

end A110652

/-! ## A110652.P7353892362926123285

`A110651(A133256(n+2)-1)`
-/

namespace A110652.P7353892362926123285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110651 (A133256 (n + 2) - 1).toNat

end

end A110652.P7353892362926123285

namespace A110652

/-- `A110651(A133256(n+2)-1)` -/
def P7353892362926123285.Spec : Prop :=
  ∀ n, P7353892362926123285.a n = A110652 (n + 1)

end A110652

/-!
# A110653: n^2 followed by n^3 followed by n followed by n^4.

The programs for A110653, the canonical program `A110653.P15905790512607003949` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110653 has offset 1).

The definition of A110653 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110653.P15905790512607003949

`A110009(xor(2, n)+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A110653

/-- `A110009(xor(2, n)+1)` -/
def P15905790512607003949.Spec : Prop :=
  ∀ n, P15905790512607003949.a n = A110653 (n + 1)

theorem P15905790512607003949.correct : P15905790512607003949.Spec := by
  intro n
  simp only [A110653, Nat.add_sub_cancel]

end A110653

/-! ## A110653.P13593649012353402783

`A110003(A092486(n))`
-/

namespace A110653.P13593649012353402783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110003 (A092486 n).toNat

end

end A110653.P13593649012353402783

namespace A110653

/-- `A110003(A092486(n))` -/
def P13593649012353402783.Spec : Prop :=
  ∀ n, P13593649012353402783.a n = A110653 (n + 1)

end A110653

/-! ## A110653.P7558077210737383223

`A110622(A116966(n))`
-/

namespace A110653.P7558077210737383223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110622 (A116966 n).toNat

end

end A110653.P7558077210737383223

namespace A110653

/-- `A110622(A116966(n))` -/
def P7558077210737383223.Spec : Prop :=
  ∀ n, P7558077210737383223.a n = A110653 (n + 1)

end A110653

/-! ## A110653.P13874307782607726925

`A110650(A263449(n))`
-/

namespace A110653.P13874307782607726925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110650 (A263449 n).toNat

end

end A110653.P13874307782607726925

namespace A110653

/-- `A110650(A263449(n))` -/
def P13874307782607726925.Spec : Prop :=
  ∀ n, P13874307782607726925.a n = A110653 (n + 1)

end A110653

/-! ## A110653.P7241144622211244188

`A110651(A056699(n+1))`
-/

namespace A110653.P7241144622211244188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110651 (A056699 (n + 1)).toNat

end

end A110653.P7241144622211244188

namespace A110653

/-- `A110651(A056699(n+1))` -/
def P7241144622211244188.Spec : Prop :=
  ∀ n, P7241144622211244188.a n = A110653 (n + 1)

end A110653

/-! ## A110653.P5201478331187190362

`A110622(A080412(n)+1)`
-/

namespace A110653.P5201478331187190362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110622 (A080412 n + 1).toNat

end

end A110653.P5201478331187190362

namespace A110653

/-- `A110622(A080412(n)+1)` -/
def P5201478331187190362.Spec : Prop :=
  ∀ n, P5201478331187190362.a n = A110653 (n + 1)

end A110653

/-! ## A110653.P232879593955624640

`A110652(A133256(n+1))`
-/

namespace A110653.P232879593955624640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110652 (A133256 (n + 1)).toNat

end

end A110653.P232879593955624640

namespace A110653

/-- `A110652(A133256(n+1))` -/
def P232879593955624640.Spec : Prop :=
  ∀ n, P232879593955624640.a n = A110653 (n + 1)

end A110653

/-! ## A110653.P17791889826219169394

`A110003(A159966(n+1))`
-/

namespace A110653.P17791889826219169394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110003 (A159966 (n + 1)).toNat

end

end A110653.P17791889826219169394

namespace A110653

/-- `A110003(A159966(n+1))` -/
def P17791889826219169394.Spec : Prop :=
  ∀ n, P17791889826219169394.a n = A110653 (n + 1)

end A110653

/-! ## A110653.P13100244421705856132

`A110650(A159966(n)+1)`
-/

namespace A110653.P13100244421705856132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110650 (A159966 n + 1).toNat

end

end A110653.P13100244421705856132

namespace A110653

/-- `A110650(A159966(n)+1)` -/
def P13100244421705856132.Spec : Prop :=
  ∀ n, P13100244421705856132.a n = A110653 (n + 1)

end A110653

/-! ## A110653.P5124499595681807429

`A110009(A256008(n+1))`
-/

namespace A110653.P5124499595681807429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110009 (A256008 (n + 1)).toNat

end

end A110653.P5124499595681807429

namespace A110653

/-- `A110009(A256008(n+1))` -/
def P5124499595681807429.Spec : Prop :=
  ∀ n, P5124499595681807429.a n = A110653 (n + 1)

end A110653

/-! ## A110653.P15160374478592929261

`A110485(A284307(n+1))`
-/

namespace A110653.P15160374478592929261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110485 (A284307 (n + 1)).toNat

end

end A110653.P15160374478592929261

namespace A110653

/-- `A110485(A284307(n+1))` -/
def P15160374478592929261.Spec : Prop :=
  ∀ n, P15160374478592929261.a n = A110653 (n + 1)

end A110653

/-! ## A110653.P128704333005827729

`A110001(A298364(n+1))`
-/

namespace A110653.P128704333005827729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110001 (A298364 (n + 1)).toNat

end

end A110653.P128704333005827729

namespace A110653

/-- `A110001(A298364(n+1))` -/
def P128704333005827729.Spec : Prop :=
  ∀ n, P128704333005827729.a n = A110653 (n + 1)

end A110653

/-! ## A110653.P10438027748927156342

`A110005(n+1)/A110004(n+1)*A110650(n+1)`
-/

namespace A110653.P10438027748927156342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110005 (n + 1) : ℚ) / (A110004 (n + 1) : ℚ) * (A110650 (n + 1) : ℚ)

end

end A110653.P10438027748927156342

namespace A110653

/-- `A110005(n+1)/A110004(n+1)*A110650(n+1)` -/
def P10438027748927156342.Spec : Prop :=
  ∀ n, P10438027748927156342.a n = (A110653 (n + 1) : ℚ)

end A110653

/-! ## A110653.P15740295334186694777

`A110003(A263449(n+1)-1)`
-/

namespace A110653.P15740295334186694777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110003 (A263449 (n + 1) - 1).toNat

end

end A110653.P15740295334186694777

namespace A110653

/-- `A110003(A263449(n+1)-1)` -/
def P15740295334186694777.Spec : Prop :=
  ∀ n, P15740295334186694777.a n = A110653 (n + 1)

end A110653

/-! ## A110653.P7475882256796937885

`A110001(A056699(n+2)-1)`
-/

namespace A110653.P7475882256796937885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110001 (A056699 (n + 2) - 1).toNat

end

end A110653.P7475882256796937885

namespace A110653

/-- `A110001(A056699(n+2)-1)` -/
def P7475882256796937885.Spec : Prop :=
  ∀ n, P7475882256796937885.a n = A110653 (n + 1)

end A110653

/-! ## A110653.P17666556607499262077

`A110622(A133256(n+2)-1)`
-/

namespace A110653.P17666556607499262077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110622 (A133256 (n + 2) - 1).toNat

end

end A110653.P17666556607499262077

namespace A110653

/-- `A110622(A133256(n+2)-1)` -/
def P17666556607499262077.Spec : Prop :=
  ∀ n, P17666556607499262077.a n = A110653 (n + 1)

end A110653

/-! ## A110653.P4386007832608533564

`A110001(n+1)/A110001(n+2)*A110004(n+2)`
-/

namespace A110653.P4386007832608533564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110001 (n + 1) : ℚ) / (A110001 (n + 2) : ℚ) * (A110004 (n + 2) : ℚ)

end

end A110653.P4386007832608533564

namespace A110653

/-- `A110001(n+1)/A110001(n+2)*A110004(n+2)` -/
def P4386007832608533564.Spec : Prop :=
  ∀ n, P4386007832608533564.a n = (A110653 (n + 1) : ℚ)

end A110653

/-! ## A110653.P5721770630523889977

`A110001(n+1)/A110003(n+2)*A110008(n+2)`
-/

namespace A110653.P5721770630523889977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110001 (n + 1) : ℚ) / (A110003 (n + 2) : ℚ) * (A110008 (n + 2) : ℚ)

end

end A110653.P5721770630523889977

namespace A110653

/-- `A110001(n+1)/A110003(n+2)*A110008(n+2)` -/
def P5721770630523889977.Spec : Prop :=
  ∀ n, P5721770630523889977.a n = (A110653 (n + 1) : ℚ)

end A110653

/-! ## A110653.P6590945184220348620

`A110003(n+1)/A110003(n+2)*A110009(n+2)`
-/

namespace A110653.P6590945184220348620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110003 (n + 1) : ℚ) / (A110003 (n + 2) : ℚ) * (A110009 (n + 2) : ℚ)

end

end A110653.P6590945184220348620

namespace A110653

/-- `A110003(n+1)/A110003(n+2)*A110009(n+2)` -/
def P6590945184220348620.Spec : Prop :=
  ∀ n, P6590945184220348620.a n = (A110653 (n + 1) : ℚ)

end A110653

/-!
# A110654: a(n) = ceiling(n/2), or: a(2*k) = k, a(2*k+1) = k+1.

The programs for A110654, the canonical program `A110654.P360289776162656549` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110654 has offset 0).

The definition of A110654 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n/2)` (program `A110654.P360289776162656549`, by `A110654.P360289776162656549.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110654.P360289776162656549

`ceil(n/2)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A110654

/-- `ceil(n/2)` -/
def P360289776162656549.Spec : Prop :=
  ∀ n, P360289776162656549.a n = A110654 n

theorem P360289776162656549.correct : P360289776162656549.Spec := by
  intro n
  simp only [A110654]

end A110654

/-! ## A110654.P18006477134047816744

`n-a(n-1)` with `a(0)=0`
-/

namespace A110654.P18006477134047816744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - a (n - 1)

end

end A110654.P18006477134047816744

namespace A110654

/-- `n-a(n-1)` -/
def P18006477134047816744.Spec : Prop :=
  ∀ n, P18006477134047816744.a n = A110654 n

end A110654

/-! ## A110654.P88610375549608242

`A001057(n)*(-1)^(n+1)`
-/

namespace A110654.P88610375549608242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n * (-1) ^ (n + 1)

end

end A110654.P88610375549608242

namespace A110654

/-- `A001057(n)*(-1)^(n+1)` -/
def P88610375549608242.Spec : Prop :=
  ∀ n, P88610375549608242.a n = A110654 n

end A110654

/-! ## A110654.P418287778220283232

`A109613(n)-A028242(n)`
-/

namespace A110654.P418287778220283232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n - A028242 n

end

end A110654.P418287778220283232

namespace A110654

/-- `A109613(n)-A028242(n)` -/
def P418287778220283232.Spec : Prop :=
  ∀ n, P418287778220283232.a n = A110654 n

end A110654

/-! ## A110654.P7051584037788888180

`A007742(n)-A173511(n)`
-/

namespace A110654.P7051584037788888180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007742 n - A173511 n

end

end A110654.P7051584037788888180

namespace A110654

/-- `A007742(n)-A173511(n)` -/
def P7051584037788888180.Spec : Prop :=
  ∀ n, P7051584037788888180.a n = A110654 n

end A110654

/-! ## A110654.P12992182549041851860

`A000217(n)/A109613(n)`
-/

namespace A110654.P12992182549041851860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 n : ℚ) / (A109613 n : ℚ)

end

end A110654.P12992182549041851860

namespace A110654

/-- `A000217(n)/A109613(n)` -/
def P12992182549041851860.Spec : Prop :=
  ∀ n, P12992182549041851860.a n = (A110654 n : ℚ)

end A110654

/-! ## A110654.P5851267770054389359

`A002620(n+1)-A002620(n)`
-/

namespace A110654.P5851267770054389359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) - A002620 n

end

end A110654.P5851267770054389359

namespace A110654

/-- `A002620(n+1)-A002620(n)` -/
def P5851267770054389359.Spec : Prop :=
  ∀ n, P5851267770054389359.a n = A110654 n

end A110654

/-! ## A110654.P11526595492345326237

`A004526(n+1)`
-/

namespace A110654.P11526595492345326237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1)

end

end A110654.P11526595492345326237

namespace A110654

/-- `A004526(n+1)` -/
def P11526595492345326237.Spec : Prop :=
  ∀ n, P11526595492345326237.a n = A110654 n

end A110654

/-! ## A110654.P16503529545465814426

`∑[n%2]`
-/

namespace A110654.P16503529545465814426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110654.P16503529545465814426

namespace A110654

/-- `∑[n%2]` -/
def P16503529545465814426.Spec : Prop :=
  ∀ n, (P16503529545465814426.a n : ℤ) = A110654 n

end A110654

/-! ## A110654.P11026687193591008501

`∑[and(1, n)]`
-/

namespace A110654.P11026687193591008501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110654.P11026687193591008501

namespace A110654

/-- `∑[and(1, n)]` -/
def P11026687193591008501.Spec : Prop :=
  ∀ n, (P11026687193591008501.a n : ℤ) = A110654 n

end A110654

/-! ## A110654.P14829397476735662311

`∑[char[or(1, n)]]`
-/

namespace A110654.P14829397476735662311
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110654.P14829397476735662311

namespace A110654

/-- `∑[char[or(1, n)]]` -/
def P14829397476735662311.Spec : Prop :=
  ∀ n, (P14829397476735662311.a n : ℤ) = A110654 n

end A110654

/-! ## A110654.P14983602110521859341

`∑[2-gcd(2, n)]`
-/

namespace A110654.P14983602110521859341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110654.P14983602110521859341

namespace A110654

/-- `∑[2-gcd(2, n)]` -/
def P14983602110521859341.Spec : Prop :=
  ∀ n, P14983602110521859341.a n = A110654 n

end A110654

/-! ## A110654.P661111751022772646

`∑[n]/or(1, n)`
-/

namespace A110654.P661111751022772646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.lor 1 n : ℚ)

end

end A110654.P661111751022772646

namespace A110654

/-- `∑[n]/or(1, n)` -/
def P661111751022772646.Spec : Prop :=
  ∀ n, P661111751022772646.a n = (A110654 n : ℚ)

end A110654

/-! ## A110654.P10881928759364383347

`∑[C(n, or(1, n))]`
-/

namespace A110654.P10881928759364383347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110654.P10881928759364383347

namespace A110654

/-- `∑[C(n, or(1, n))]` -/
def P10881928759364383347.Spec : Prop :=
  ∀ n, (P10881928759364383347.a n : ℤ) = A110654 n

end A110654

/-! ## A110654.P2369389799659111040

`floor(sinh(log(n+2)))`
-/

namespace A110654.P2369389799659111040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (n + 2 : ℝ))⌋

end

end A110654.P2369389799659111040

namespace A110654

/-- `floor(sinh(log(n+2)))` -/
def P2369389799659111040.Spec : Prop :=
  ∀ n, P2369389799659111040.a n = A110654 n

end A110654

/-! ## A110654.P6721862821802507506

`round(sinh(log(n+1)))`
-/

namespace A110654.P6721862821802507506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.log (n + 1 : ℝ)))

end

end A110654.P6721862821802507506

namespace A110654

/-- `round(sinh(log(n+1)))` -/
def P6721862821802507506.Spec : Prop :=
  ∀ n, P6721862821802507506.a n = A110654 n

end A110654

/-! ## A110654.P14812915371669650634

`∑[char[comp[lcm(2, n)]]]`
-/

namespace A110654.P14812915371669650634
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110654.P14812915371669650634

namespace A110654

/-- `∑[char[comp[lcm(2, n)]]]` -/
def P14812915371669650634.Spec : Prop :=
  ∀ n, (P14812915371669650634.a n : ℤ) = A110654 n

end A110654

/-! ## A110654.P14859800316832181680

`round(n*tan(acot(2)))`
-/

namespace A110654.P14859800316832181680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.tan (SequenceMachineLib.acot (2 : ℝ)))

end

end A110654.P14859800316832181680

namespace A110654

/-- `round(n*tan(acot(2)))` -/
def P14859800316832181680.Spec : Prop :=
  ∀ n, P14859800316832181680.a n = A110654 n

end A110654

/-! ## A110654.P4092974139081576057

`round(∑[n]*acot(n))`
-/

namespace A110654.P4092974139081576057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) * SequenceMachineLib.acot (n : ℝ))

end

end A110654.P4092974139081576057

namespace A110654

/-- `round(∑[n]*acot(n))` -/
def P4092974139081576057.Spec : Prop :=
  ∀ n, P4092974139081576057.a n = A110654 n

end A110654

/-!
# A110655: a(n) = A110654(A110654(n)).

The programs for A110655, the canonical program `A110655.P2308384762504973839` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110655 has offset 0).

The definition of A110655 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A110654(A110654(n))` (program `A110655.P2308384762504973839`, by `A110655.P2308384762504973839.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110655.P6360443841575406804

`ceil(n/4)`
-/

namespace A110655.P6360443841575406804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 4⌉

end

end A110655.P6360443841575406804

namespace A110655

/-- `ceil(n/4)` -/
def P6360443841575406804.Spec : Prop :=
  ∀ n, P6360443841575406804.a n = A110655 n

end A110655

/-! ## A110655.P4473968248753806179

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A110655.P4473968248753806179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1, 1] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A110655.P4473968248753806179

namespace A110655

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P4473968248753806179.Spec : Prop :=
  ∀ n, P4473968248753806179.a n = A110655 n

end A110655

/-! ## A110655.P2308384762504973839

`A110654(A110654(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A110655

/-- `A110654(A110654(n))` -/
def P2308384762504973839.Spec : Prop :=
  ∀ n, P2308384762504973839.a n = A110655 n

theorem P2308384762504973839.correct : P2308384762504973839.Spec := by
  intro n
  simp only [A110655]

end A110655

/-! ## A110655.P17858410882334594577

`∑[∑[∑[n]]%2]`
-/

namespace A110655.P17858410882334594577
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110655.P17858410882334594577

namespace A110655

/-- `∑[∑[∑[n]]%2]` -/
def P17858410882334594577.Spec : Prop :=
  ∀ n, (P17858410882334594577.a n : ℤ) = A110655 n

end A110655

/-! ## A110655.P15955243795947611888

`∑[and(1, ∑[∑[n]])]`
-/

namespace A110655.P15955243795947611888
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110655.P15955243795947611888

namespace A110655

/-- `∑[and(1, ∑[∑[n]])]` -/
def P15955243795947611888.Spec : Prop :=
  ∀ n, (P15955243795947611888.a n : ℤ) = A110655 n

end A110655

/-! ## A110655.P12973957741373309609

`round(∑[gcd(2, n)/6])`
-/

namespace A110655.P12973957741373309609
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℚ) / 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110655.P12973957741373309609

namespace A110655

/-- `round(∑[gcd(2, n)/6])` -/
def P12973957741373309609.Spec : Prop :=
  ∀ n, P12973957741373309609.a n = A110655 n

end A110655

/-! ## A110655.P6793722404024560783

`floor(sin(1)+n/4)`
-/

namespace A110655.P6793722404024560783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (1 : ℝ) + ((n : ℚ) / 4 : ℝ)⌋

end

end A110655.P6793722404024560783

namespace A110655

/-- `floor(sin(1)+n/4)` -/
def P6793722404024560783.Spec : Prop :=
  ∀ n, P6793722404024560783.a n = A110655 n

end A110655

/-! ## A110655.P10383039644658885423

`floor(n/4-cos(3))`
-/

namespace A110655.P10383039644658885423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 4 : ℝ) - Real.cos (3 : ℝ)⌋

end

end A110655.P10383039644658885423

namespace A110655

/-- `floor(n/4-cos(3))` -/
def P10383039644658885423.Spec : Prop :=
  ∀ n, P10383039644658885423.a n = A110655 n

end A110655

/-! ## A110655.P9484057007217944019

`round((acos(0)+n)/4)`
-/

namespace A110655.P9484057007217944019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.arccos (0 : ℝ) + (n : ℝ)) / 4)

end

end A110655.P9484057007217944019

namespace A110655

/-- `round((acos(0)+n)/4)` -/
def P9484057007217944019.Spec : Prop :=
  ∀ n, P9484057007217944019.a n = A110655 n

end A110655

/-! ## A110655.P16398863853903905387

`round((tan(1)+n)/4)`
-/

namespace A110655.P16398863853903905387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.tan (1 : ℝ) + (n : ℝ)) / 4)

end

end A110655.P16398863853903905387

namespace A110655

/-- `round((tan(1)+n)/4)` -/
def P16398863853903905387.Spec : Prop :=
  ∀ n, P16398863853903905387.a n = A110655 n

end A110655

/-! ## A110655.P15072569691707173971

`round(n/4-cos(2))`
-/

namespace A110655.P15072569691707173971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℚ) / 4 : ℝ) - Real.cos (2 : ℝ))

end

end A110655.P15072569691707173971

namespace A110655

/-- `round(n/4-cos(2))` -/
def P15072569691707173971.Spec : Prop :=
  ∀ n, P15072569691707173971.a n = A110655 n

end A110655

/-! ## A110655.P1279645100992432277

`floor(atan(1)+n/4)`
-/

namespace A110655.P1279645100992432277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (1 : ℝ) + ((n : ℚ) / 4 : ℝ)⌋

end

end A110655.P1279645100992432277

namespace A110655

/-- `floor(atan(1)+n/4)` -/
def P1279645100992432277.Spec : Prop :=
  ∀ n, P1279645100992432277.a n = A110655 n

end A110655

/-! ## A110655.P5156449300941535570

`floor(cos(6)+n/4)`
-/

namespace A110655.P5156449300941535570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (6 : ℝ) + ((n : ℚ) / 4 : ℝ)⌋

end

end A110655.P5156449300941535570

namespace A110655

/-- `floor(cos(6)+n/4)` -/
def P5156449300941535570.Spec : Prop :=
  ∀ n, P5156449300941535570.a n = A110655 n

end A110655

/-! ## A110655.P11170447996254399091

`floor(n/4-sin(4))`
-/

namespace A110655.P11170447996254399091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 4 : ℝ) - Real.sin (4 : ℝ)⌋

end

end A110655.P11170447996254399091

namespace A110655

/-- `floor(n/4-sin(4))` -/
def P11170447996254399091.Spec : Prop :=
  ∀ n, P11170447996254399091.a n = A110655 n

end A110655

/-! ## A110655.P13341773438000232273

`round((asin(1)+n)/4)`
-/

namespace A110655.P13341773438000232273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.arcsin (1 : ℝ) + (n : ℝ)) / 4)

end

end A110655.P13341773438000232273

namespace A110655

/-- `round((asin(1)+n)/4)` -/
def P13341773438000232273.Spec : Prop :=
  ∀ n, P13341773438000232273.a n = A110655 n

end A110655

/-! ## A110655.P7500645776123167941

`round(cos(5)+n/4)`
-/

namespace A110655.P7500645776123167941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (5 : ℝ) + ((n : ℚ) / 4 : ℝ))

end

end A110655.P7500645776123167941

namespace A110655

/-- `round(cos(5)+n/4)` -/
def P7500645776123167941.Spec : Prop :=
  ∀ n, P7500645776123167941.a n = A110655 n

end A110655

/-! ## A110655.P12063420094250575641

`floor((cosh(2)+n)/4)`
-/

namespace A110655.P12063420094250575641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.cosh (2 : ℝ) + (n : ℝ)) / 4⌋

end

end A110655.P12063420094250575641

namespace A110655

/-- `floor((cosh(2)+n)/4)` -/
def P12063420094250575641.Spec : Prop :=
  ∀ n, P12063420094250575641.a n = A110655 n

end A110655

/-! ## A110655.P10432291157655925028

`floor((n-tan(5))/4)`
-/

namespace A110655.P10432291157655925028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℝ) - Real.tan (5 : ℝ)) / 4⌋

end

end A110655.P10432291157655925028

namespace A110655

/-- `floor((n-tan(5))/4)` -/
def P10432291157655925028.Spec : Prop :=
  ∀ n, P10432291157655925028.a n = A110655 n

end A110655

/-! ## A110655.P8125865006711201408

`round((cosh(1)+n)/4)`
-/

namespace A110655.P8125865006711201408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.cosh (1 : ℝ) + (n : ℝ)) / 4)

end

end A110655.P8125865006711201408

namespace A110655

/-- `round((cosh(1)+n)/4)` -/
def P8125865006711201408.Spec : Prop :=
  ∀ n, P8125865006711201408.a n = A110655 n

end A110655

/-! ## A110655.P11821068138095299987

`floor(tanh(1)+n/4)`
-/

namespace A110655.P11821068138095299987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tanh (1 : ℝ) + ((n : ℚ) / 4 : ℝ)⌋

end

end A110655.P11821068138095299987

namespace A110655

/-- `floor(tanh(1)+n/4)` -/
def P11821068138095299987.Spec : Prop :=
  ∀ n, P11821068138095299987.a n = A110655 n

end A110655

/-!
# A110656: a(n) = A110654(A110654(A110654(n))).

The programs for A110656, the canonical program `A110656.P16727579256919553801` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110656 has offset 0).

The definition of A110656 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110656.P16727579256919553801

`ceil(n/8)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A110656

/-- `ceil(n/8)` -/
def P16727579256919553801.Spec : Prop :=
  ∀ n, P16727579256919553801.a n = A110656 n

theorem P16727579256919553801.correct : P16727579256919553801.Spec := by
  intro n
  simp only [A110656]

end A110656

/-! ## A110656.P16518182055743029678

`A110655(A110654(n))`
-/

namespace A110656.P16518182055743029678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A110654 n).toNat

end

end A110656.P16518182055743029678

namespace A110656

/-- `A110655(A110654(n))` -/
def P16518182055743029678.Spec : Prop :=
  ∀ n, P16518182055743029678.a n = A110656 n

end A110656

/-! ## A110656.P13388320390139204223

`floor(sin(2)+n/8)`
-/

namespace A110656.P13388320390139204223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (2 : ℝ) + ((n : ℚ) / 8 : ℝ)⌋

end

end A110656.P13388320390139204223

namespace A110656

/-- `floor(sin(2)+n/8)` -/
def P13388320390139204223.Spec : Prop :=
  ∀ n, P13388320390139204223.a n = A110656 n

end A110656

/-! ## A110656.P3980326930552398857

`floor(n/8-cos(3))`
-/

namespace A110656.P3980326930552398857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 8 : ℝ) - Real.cos (3 : ℝ)⌋

end

end A110656.P3980326930552398857

namespace A110656

/-- `floor(n/8-cos(3))` -/
def P3980326930552398857.Spec : Prop :=
  ∀ n, P3980326930552398857.a n = A110656 n

end A110656

/-! ## A110656.P11437426530103892467

`round(n/8-cos(2))`
-/

namespace A110656.P11437426530103892467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℚ) / 8 : ℝ) - Real.cos (2 : ℝ))

end

end A110656.P11437426530103892467

namespace A110656

/-- `round(n/8-cos(2))` -/
def P11437426530103892467.Spec : Prop :=
  ∀ n, P11437426530103892467.a n = A110656 n

end A110656

/-! ## A110656.P16203773342748886362

`floor(cos(6)+n/8)`
-/

namespace A110656.P16203773342748886362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (6 : ℝ) + ((n : ℚ) / 8 : ℝ)⌋

end

end A110656.P16203773342748886362

namespace A110656

/-- `floor(cos(6)+n/8)` -/
def P16203773342748886362.Spec : Prop :=
  ∀ n, P16203773342748886362.a n = A110656 n

end A110656

/-! ## A110656.P8346229510937158056

`floor(n/8-sin(5))`
-/

namespace A110656.P8346229510937158056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 8 : ℝ) - Real.sin (5 : ℝ)⌋

end

end A110656.P8346229510937158056

namespace A110656

/-- `floor(n/8-sin(5))` -/
def P8346229510937158056.Spec : Prop :=
  ∀ n, P8346229510937158056.a n = A110656 n

end A110656

/-! ## A110656.P15280379848804933754

`round((cosh(2)+n)/8)`
-/

namespace A110656.P15280379848804933754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.cosh (2 : ℝ) + (n : ℝ)) / 8)

end

end A110656.P15280379848804933754

namespace A110656

/-- `round((cosh(2)+n)/8)` -/
def P15280379848804933754.Spec : Prop :=
  ∀ n, P15280379848804933754.a n = A110656 n

end A110656

/-! ## A110656.P13205781199510251395

`floor(tanh(2)+n/8)`
-/

namespace A110656.P13205781199510251395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tanh (2 : ℝ) + ((n : ℚ) / 8 : ℝ)⌋

end

end A110656.P13205781199510251395

namespace A110656

/-- `floor(tanh(2)+n/8)` -/
def P13205781199510251395.Spec : Prop :=
  ∀ n, P13205781199510251395.a n = A110656 n

end A110656

/-! ## A110656.P9792966968973570686

`round((n-tan(5))/8)`
-/

namespace A110656.P9792966968973570686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) - Real.tan (5 : ℝ)) / 8)

end

end A110656.P9792966968973570686

namespace A110656

/-- `round((n-tan(5))/8)` -/
def P9792966968973570686.Spec : Prop :=
  ∀ n, P9792966968973570686.a n = A110656 n

end A110656

/-! ## A110656.P9520881298190752598

`round((sinh(2)+n)/8)`
-/

namespace A110656.P9520881298190752598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.sinh (2 : ℝ) + (n : ℝ)) / 8)

end

end A110656.P9520881298190752598

namespace A110656

/-- `round((sinh(2)+n)/8)` -/
def P9520881298190752598.Spec : Prop :=
  ∀ n, P9520881298190752598.a n = A110656 n

end A110656

/-! ## A110656.P12788966655415506011

`round(sin(9)+n/8)`
-/

namespace A110656.P12788966655415506011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (9 : ℝ) + ((n : ℚ) / 8 : ℝ))

end

end A110656.P12788966655415506011

namespace A110656

/-- `round(sin(9)+n/8)` -/
def P12788966655415506011.Spec : Prop :=
  ∀ n, P12788966655415506011.a n = A110656 n

end A110656

/-! ## A110656.P3525347171225208236

`floor((n-cot(3))/8)`
-/

namespace A110656.P3525347171225208236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℝ) - Real.cot (3 : ℝ)) / 8⌋

end

end A110656.P3525347171225208236

namespace A110656

/-- `floor((n-cot(3))/8)` -/
def P3525347171225208236.Spec : Prop :=
  ∀ n, P3525347171225208236.a n = A110656 n

end A110656

/-! ## A110656.P17562375161715644067

`round(acot(2)+n/8)`
-/

namespace A110656.P17562375161715644067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (2 : ℝ) + ((n : ℚ) / 8 : ℝ))

end

end A110656.P17562375161715644067

namespace A110656

/-- `round(acot(2)+n/8)` -/
def P17562375161715644067.Spec : Prop :=
  ∀ n, P17562375161715644067.a n = A110656 n

end A110656

/-! ## A110656.P14732457900542954321

`round(n/8-cot(2))`
-/

namespace A110656.P14732457900542954321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℚ) / 8 : ℝ) - Real.cot (2 : ℝ))

end

end A110656.P14732457900542954321

namespace A110656

/-- `round(n/8-cot(2))` -/
def P14732457900542954321.Spec : Prop :=
  ∀ n, P14732457900542954321.a n = A110656 n

end A110656

/-! ## A110656.P1816531983509355578

`round(or(1, n+3)/8)`
-/

namespace A110656.P1816531983509355578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (n + 3) : ℚ) / 8)

end

end A110656.P1816531983509355578

namespace A110656

/-- `round(or(1, n+3)/8)` -/
def P1816531983509355578.Spec : Prop :=
  ∀ n, P1816531983509355578.a n = A110656 n

end A110656

/-! ## A110656.P9434934847929385996

`round(xor(1, n+3)/8)`
-/

namespace A110656.P9434934847929385996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (n + 3) : ℚ) / 8)

end

end A110656.P9434934847929385996

namespace A110656

/-- `round(xor(1, n+3)/8)` -/
def P9434934847929385996.Spec : Prop :=
  ∀ n, P9434934847929385996.a n = A110656 n

end A110656

/-! ## A110656.P4943029650753778853

`∑[C(and(7, n-2), 7)]`
-/

namespace A110656.P4943029650753778853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.land 7 ((n : ℤ) - 2)).toNat 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110656.P4943029650753778853

namespace A110656

/-- `∑[C(and(7, n-2), 7)]` -/
def P4943029650753778853.Spec : Prop :=
  ∀ n, (P4943029650753778853.a n : ℤ) = A110656 n

end A110656

/-! ## A110656.P10122640622256061729

`round(record[abs((n-3)/8)])`
-/

namespace A110656.P10122640622256061729
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 3 : ℚ) / 8|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A110656.P10122640622256061729

namespace A110656

/-- `round(record[abs((n-3)/8)])` -/
def P10122640622256061729.Spec : Prop :=
  ∀ n, P10122640622256061729.a n = A110656 n

end A110656

/-! ## A110656.P5576036633150870318

`∑[floor(acot(and(7, n-1)))]`
-/

namespace A110656.P5576036633150870318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (Int.land 7 ((n : ℤ) - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110656.P5576036633150870318

namespace A110656

/-- `∑[floor(acot(and(7, n-1)))]` -/
def P5576036633150870318.Spec : Prop :=
  ∀ n, P5576036633150870318.a n = A110656 n

end A110656

/-!
# A110657: a(n) = A028242(A028242(n)).

The programs for A110657, the canonical program `A110657.P7617019695067142471` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110657 has offset 0).

The definition of A110657 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110657.P16703099004785145129

`n-3*floor((n+1)/4)`
-/

namespace A110657.P16703099004785145129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3 * ⌊(n + 1 : ℚ) / 4⌋

end

end A110657.P16703099004785145129

namespace A110657

/-- `n-3*floor((n+1)/4)` -/
def P16703099004785145129.Spec : Prop :=
  ∀ n, P16703099004785145129.a n = A110657 n

end A110657

/-! ## A110657.P2554667352257342619

`(2*n+3-6*cos(n*π/2)+3*cos(n*π)+6*sin(n*π/2))/8`
-/

namespace A110657.P2554667352257342619
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℝ) + (3 - 6 * Real.cos ((n : ℝ) * (Real.pi / 2))) + 3 * Real.cos ((n : ℝ) * Real.pi) + 6 * Real.sin ((n : ℝ) * (Real.pi / 2))) / 8

end

end A110657.P2554667352257342619

namespace A110657

/-- `(2*n+3-6*cos(n*π/2)+3*cos(n*π)+6*sin(n*π/2))/8` -/
def P2554667352257342619.Spec : Prop :=
  ∀ n, P2554667352257342619.a n = (A110657 n : ℝ)

end A110657

/-! ## A110657.P7617019695067142471

`A028242(A028242(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A110657

/-- `A028242(A028242(n))` -/
def P7617019695067142471.Spec : Prop :=
  ∀ n, P7617019695067142471.a n = A110657 n

theorem P7617019695067142471.correct : P7617019695067142471.Spec := by
  intro n
  simp only [A110657]

end A110657

/-! ## A110657.P6196022014978807872

`floor((n%4)%3+n/4)`
-/

namespace A110657.P6196022014978807872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n % 4 % 3 : ℕ) : ℚ) + (n : ℚ) / 4⌋

end

end A110657.P6196022014978807872

namespace A110657

/-- `floor((n%4)%3+n/4)` -/
def P6196022014978807872.Spec : Prop :=
  ∀ n, P6196022014978807872.a n = A110657 n

end A110657

/-! ## A110657.P15933269962413874037

`abs(a(n-4)+1)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=0`
-/

namespace A110657.P15933269962413874037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 0] fun n a =>
  a (n - 4) + 1

end

end A110657.P15933269962413874037

namespace A110657

/-- `abs(a(n-4)+1)` -/
def P15933269962413874037.Spec : Prop :=
  ∀ n, (P15933269962413874037.a n : ℤ) = A110657 n

end A110657

/-! ## A110657.P13939290569852136683

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=-2, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A110657.P13939290569852136683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, -2, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110657.P13939290569852136683

namespace A110657

/-- `∑[floor(a(n-4))]` -/
def P13939290569852136683.Spec : Prop :=
  ∀ n, P13939290569852136683.a n = A110657 n

end A110657

/-! ## A110657.P8365206108768588788

`floor(and(3, n+1)+(n-3)/4)`
-/

namespace A110657.P8365206108768588788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land 3 (n + 1) : ℚ) + ((n : ℤ) - 3 : ℚ) / 4⌋

end

end A110657.P8365206108768588788

namespace A110657

/-- `floor(and(3, n+1)+(n-3)/4)` -/
def P8365206108768588788.Spec : Prop :=
  ∀ n, P8365206108768588788.a n = A110657 n

end A110657

/-! ## A110657.P14048713485636895722

`floor((2*n-xor(3, n-3))/4)`
-/

namespace A110657.P14048713485636895722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n : ℤ) - Int.xor 3 ((n : ℤ) - 3) : ℚ) / 4⌋

end

end A110657.P14048713485636895722

namespace A110657

/-- `floor((2*n-xor(3, n-3))/4)` -/
def P14048713485636895722.Spec : Prop :=
  ∀ n, P14048713485636895722.a n = A110657 n

end A110657

/-! ## A110657.P3955305017118814000

`∑[2-a(n-4)²]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=-2, a(4)=1`
-/

namespace A110657.P3955305017118814000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, -2, 1] fun n f1 =>
  2 - f1 (n - 4) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110657.P3955305017118814000

namespace A110657

/-- `∑[2-a(n-4)²]` -/
def P3955305017118814000.Spec : Prop :=
  ∀ n, P3955305017118814000.a n = A110657 n

end A110657

/-! ## A110657.P3878166292478571812

`ceil((2*n+1-xor(3, n+1))/4)`
-/

namespace A110657.P3878166292478571812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n + 1 : ℤ) - (Nat.xor 3 (n + 1) : ℤ) : ℚ) / 4⌉

end

end A110657.P3878166292478571812

namespace A110657

/-- `ceil((2*n+1-xor(3, n+1))/4)` -/
def P3878166292478571812.Spec : Prop :=
  ∀ n, P3878166292478571812.a n = A110657 n

end A110657

/-! ## A110657.P2405541367686750801

`∑[a(n-4)^a(n-1)]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=-2, a(4)=1`
-/

namespace A110657.P2405541367686750801
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0, 1, 1, -2, 1] fun n f1 =>
  f1 (n - 4) ^ (f1 (n - 1))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110657.P2405541367686750801

namespace A110657

/-- `∑[a(n-4)^a(n-1)]` -/
def P2405541367686750801.Spec : Prop :=
  ∀ n, P2405541367686750801.a n = (A110657 n : ℝ)

end A110657

/-! ## A110657.P4450524557717324227

`A110659(xor(1, n))`
-/

namespace A110657.P4450524557717324227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110659 (Nat.xor 1 n)

end

end A110657.P4450524557717324227

namespace A110657

/-- `A110659(xor(1, n))` -/
def P4450524557717324227.Spec : Prop :=
  ∀ n, P4450524557717324227.a n = A110657 n

end A110657

/-! ## A110657.P12058915498342446356

`A110659(A004442(n))`
-/

namespace A110657.P12058915498342446356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110659 (A004442 n).toNat

end

end A110657.P12058915498342446356

namespace A110657

/-- `A110659(A004442(n))` -/
def P12058915498342446356.Spec : Prop :=
  ∀ n, P12058915498342446356.a n = A110657 n

end A110657

/-! ## A110657.P11140312390103556125

`(A008585(A285869(n))-n)/2`
-/

namespace A110657.P11140312390103556125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008585 (A285869 n).toNat - (n : ℤ) : ℚ) / 2

end

end A110657.P11140312390103556125

namespace A110657

/-- `(A008585(A285869(n))-n)/2` -/
def P11140312390103556125.Spec : Prop :=
  ∀ n, P11140312390103556125.a n = (A110657 n : ℚ)

end A110657

/-! ## A110657.P7133003121931752277

`A047219(n+1)%A028836(n+1)`
-/

namespace A110657.P7133003121931752277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047219 (n + 1)) (A028836 (n + 1))

end

end A110657.P7133003121931752277

namespace A110657

/-- `A047219(n+1)%A028836(n+1)` -/
def P7133003121931752277.Spec : Prop :=
  ∀ n, P7133003121931752277.a n = A110657 n

end A110657

/-! ## A110657.P3587800048162848379

`A047445(n+1)%A047286(n+1)`
-/

namespace A110657.P3587800048162848379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047445 (n + 1)) (A047286 (n + 1))

end

end A110657.P3587800048162848379

namespace A110657

/-- `A047445(n+1)%A047286(n+1)` -/
def P3587800048162848379.Spec : Prop :=
  ∀ n, P3587800048162848379.a n = A110657 n

end A110657

/-! ## A110657.P3430372619241308074

`A004526(A010873(n+1)+A004526(n))`
-/

namespace A110657.P3430372619241308074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A010873 (n + 1) + A004526 n).toNat

end

end A110657.P3430372619241308074

namespace A110657

/-- `A004526(A010873(n+1)+A004526(n))` -/
def P3430372619241308074.Spec : Prop :=
  ∀ n, P3430372619241308074.a n = A110657 n

end A110657

/-! ## A110657.P12761116692585453495

`A057353(A010873(n+1)+A002264(n))`
-/

namespace A110657.P12761116692585453495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A010873 (n + 1) + A002264 n).toNat

end

end A110657.P12761116692585453495

namespace A110657

/-- `A057353(A010873(n+1)+A002264(n))` -/
def P12761116692585453495.Spec : Prop :=
  ∀ n, P12761116692585453495.a n = A110657 n

end A110657

/-! ## A110657.P7514235712150874889

`A084964(A168199(A056699(n+1))-(n+1))`
-/

namespace A110657.P7514235712150874889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 (A168199 (A056699 (n + 1)).toNat - (n + 1 : ℤ)).toNat

end

end A110657.P7514235712150874889

namespace A110657

/-- `A084964(A168199(A056699(n+1))-(n+1))` -/
def P7514235712150874889.Spec : Prop :=
  ∀ n, P7514235712150874889.a n = A110657 n

end A110657

/-!
# A110658: a(n) = A028242(A028242(A028242(n))).

The programs for A110658, the canonical program `A110658.P2693442406700527854` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110658 has offset 0).

The definition of A110658 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110658.P2693442406700527854

`A110657(A028242(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A110658

/-- `A110657(A028242(n))` -/
def P2693442406700527854.Spec : Prop :=
  ∀ n, P2693442406700527854.a n = A110658 n

theorem P2693442406700527854.correct : P2693442406700527854.Spec := by
  intro n
  simp only [A110658]

end A110658

/-! ## A110658.P8750172118730361057

`A110657(ceil(xor(1, n)/2))`
-/

namespace A110658.P8750172118730361057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat

end

end A110658.P8750172118730361057

namespace A110658

/-- `A110657(ceil(xor(1, n)/2))` -/
def P8750172118730361057.Spec : Prop :=
  ∀ n, P8750172118730361057.a n = A110658 n

end A110658

/-! ## A110658.P18068214567806799954

`A110657(abs(Δ[lcm(2, n)])/2)`
-/

namespace A110658.P18068214567806799954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (SequenceMachineLib.roundAway ((|(f1 (n + 1) : ℤ) - (f1 n : ℤ)| : ℚ) / 2)).toNat

end

end A110658.P18068214567806799954

namespace A110658

/-- `A110657(abs(Δ[lcm(2, n)])/2)` -/
def P18068214567806799954.Spec : Prop :=
  ∀ n, P18068214567806799954.a n = A110658 n

end A110658

/-! ## A110658.P7253602463587991068

`A110657(xor(1, n)-floor(n/2))`
-/

namespace A110658.P7253602463587991068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 ((Nat.xor 1 n : ℤ) - ⌊(n : ℚ) / 2⌋).toNat

end

end A110658.P7253602463587991068

namespace A110658

/-- `A110657(xor(1, n)-floor(n/2))` -/
def P7253602463587991068.Spec : Prop :=
  ∀ n, P7253602463587991068.a n = A110658 n

end A110658

/-! ## A110658.P14384197236429758307

`A194515(n+3-a(n-1))` with `a(0)=1`
-/

namespace A110658.P14384197236429758307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A194515 ((n + 3 : ℤ) - a (n - 1)).toNat

end

end A110658.P14384197236429758307

namespace A110658

/-- `A194515(n+3-a(n-1))` -/
def P14384197236429758307.Spec : Prop :=
  ∀ n, P14384197236429758307.a n = A110658 n

end A110658

/-! ## A110658.P9924496345060481984

`A110659(2*A110657(n))`
-/

namespace A110658.P9924496345060481984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110659 (2 * A110657 n).toNat

end

end A110658.P9924496345060481984

namespace A110658

/-- `A110659(2*A110657(n))` -/
def P9924496345060481984.Spec : Prop :=
  ∀ n, P9924496345060481984.a n = A110658 n

end A110658

/-! ## A110658.P5678414027036715620

`A110657(A110654(xor(1, n)))`
-/

namespace A110658.P5678414027036715620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A110654 (Nat.xor 1 n)).toNat

end

end A110658.P5678414027036715620

namespace A110658

/-- `A110657(A110654(xor(1, n)))` -/
def P5678414027036715620.Spec : Prop :=
  ∀ n, P5678414027036715620.a n = A110658 n

end A110658

/-! ## A110658.P15203498775415463641

`A030451(A110657(n)+1)-1`
-/

namespace A110658.P15203498775415463641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 (A110657 n + 1).toNat - 1

end

end A110658.P15203498775415463641

namespace A110658

/-- `A030451(A110657(n)+1)-1` -/
def P15203498775415463641.Spec : Prop :=
  ∀ n, P15203498775415463641.a n = A110658 n

end A110658

/-! ## A110658.P10443928863736264356

`A110657(A052938(n+1)-2)`
-/

namespace A110658.P10443928863736264356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A052938 (n + 1) - 2).toNat

end

end A110658.P10443928863736264356

namespace A110658

/-- `A110657(A052938(n+1)-2)` -/
def P10443928863736264356.Spec : Prop :=
  ∀ n, P10443928863736264356.a n = A110658 n

end A110658

/-! ## A110658.P2741041636150879462

`A110657(2*A110657(n)+1)`
-/

namespace A110658.P2741041636150879462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (2 * A110657 n + 1).toNat

end

end A110658.P2741041636150879462

namespace A110658

/-- `A110657(2*A110657(n)+1)` -/
def P2741041636150879462.Spec : Prop :=
  ∀ n, P2741041636150879462.a n = A110658 n

end A110658

/-! ## A110658.P10682261885294457701

`A110657(A168232(n+1)/2)`
-/

namespace A110658.P10682261885294457701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (SequenceMachineLib.roundAway ((A168232 (n + 1) : ℚ) / 2)).toNat

end

end A110658.P10682261885294457701

namespace A110658

/-- `A110657(A168232(n+1)/2)` -/
def P10682261885294457701.Spec : Prop :=
  ∀ n, P10682261885294457701.a n = A110658 n

end A110658

/-! ## A110658.P13546098219359276004

`A097065(xor(1, A110657(n)+1))`
-/

namespace A110658.P13546098219359276004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097065 (Int.xor 1 (A110657 n + 1)).toNat

end

end A110658.P13546098219359276004

namespace A110658

/-- `A097065(xor(1, A110657(n)+1))` -/
def P13546098219359276004.Spec : Prop :=
  ∀ n, P13546098219359276004.a n = A110658 n

end A110658

/-! ## A110658.P6102506596171494507

`A110657(or(1, 2*A110657(n)))`
-/

namespace A110658.P6102506596171494507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (Int.lor 1 (2 * A110657 n)).toNat

end

end A110658.P6102506596171494507

namespace A110658

/-- `A110657(or(1, 2*A110657(n)))` -/
def P6102506596171494507.Spec : Prop :=
  ∀ n, P6102506596171494507.a n = A110658 n

end A110658

/-! ## A110658.P84600558051442857

`A110657(xor(1, 2*A110657(n)))`
-/

namespace A110658.P84600558051442857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (Int.xor 1 (2 * A110657 n)).toNat

end

end A110658.P84600558051442857

namespace A110658

/-- `A110657(xor(1, 2*A110657(n)))` -/
def P84600558051442857.Spec : Prop :=
  ∀ n, P84600558051442857.a n = A110658 n

end A110658

/-! ## A110658.P10576407461937939503

`A110657(n)-A194517(n+1)`
-/

namespace A110658.P10576407461937939503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 n - A194517 (n + 1)

end

end A110658.P10576407461937939503

namespace A110658

/-- `A110657(n)-A194517(n+1)` -/
def P10576407461937939503.Spec : Prop :=
  ∀ n, P10576407461937939503.a n = A110658 n

end A110658

/-! ## A110658.P10616832728647745802

`A110657(1-(A030451(n)-n))`
-/

namespace A110658.P10616832728647745802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (1 - (A030451 n - (n : ℤ))).toNat

end

end A110658.P10616832728647745802

namespace A110658

/-- `A110657(1-(A030451(n)-n))` -/
def P10616832728647745802.Spec : Prop :=
  ∀ n, P10616832728647745802.a n = A110658 n

end A110658

/-! ## A110658.P6644598672559722255

`A110657(2-(A052938(n)-n))`
-/

namespace A110658.P6644598672559722255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (2 - (A052938 n - (n : ℤ))).toNat

end

end A110658.P6644598672559722255

namespace A110658

/-- `A110657(2-(A052938(n)-n))` -/
def P6644598672559722255.Spec : Prop :=
  ∀ n, P6644598672559722255.a n = A110658 n

end A110658

/-! ## A110658.P14897629484974301966

`A028242(2*n-A047279(n+1))`
-/

namespace A110658.P14897629484974301966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 ((2 * n : ℤ) - A047279 (n + 1)).toNat

end

end A110658.P14897629484974301966

namespace A110658

/-- `A028242(2*n-A047279(n+1))` -/
def P14897629484974301966.Spec : Prop :=
  ∀ n, P14897629484974301966.a n = A110658 n

end A110658

/-! ## A110658.P13098491457540915303

`A110657((A168361(n+1)+n)/2)`
-/

namespace A110658.P13098491457540915303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (SequenceMachineLib.roundAway ((A168361 (n + 1) + (n : ℤ) : ℚ) / 2)).toNat

end

end A110658.P13098491457540915303

namespace A110658

/-- `A110657((A168361(n+1)+n)/2)` -/
def P13098491457540915303.Spec : Prop :=
  ∀ n, P13098491457540915303.a n = A110658 n

end A110658

/-! ## A110658.P2039121474039860444

`A028242(n-A047279(n+1)+n)`
-/

namespace A110658.P2039121474039860444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 ((n : ℤ) - A047279 (n + 1) + (n : ℤ)).toNat

end

end A110658.P2039121474039860444

namespace A110658

/-- `A028242(n-A047279(n+1)+n)` -/
def P2039121474039860444.Spec : Prop :=
  ∀ n, P2039121474039860444.a n = A110658 n

end A110658

/-!
# A110659: a(n) = A028242(A110654(n)).

The programs for A110659, the canonical program `A110659.P2010011942329232190` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110659 has offset 0).

The definition of A110659 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110659.P1012562107004545591

`1/4*(1+2*ceil(n/2)+3*(-1)^ceil(n/2))`
-/

namespace A110659.P1012562107004545591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * ((1 + 2 * ⌈(n : ℚ) / 2⌉ : ℚ) + 3 * (-1 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ))

end

end A110659.P1012562107004545591

namespace A110659

/-- `1/4*(1+2*ceil(n/2)+3*(-1)^ceil(n/2))` -/
def P1012562107004545591.Spec : Prop :=
  ∀ n, P1012562107004545591.a n = (A110659 n : ℚ)

end A110659

/-! ## A110659.P2989998192561449467

`(2*n+3+6*cos(n*π/2)-cos(n*π)-6*sin(n*π/2))/8`
-/

namespace A110659.P2989998192561449467
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℝ) + (3 + 6 * Real.cos ((n : ℝ) * (Real.pi / 2))) - Real.cos ((n : ℝ) * Real.pi) - 6 * Real.sin ((n : ℝ) * (Real.pi / 2))) / 8

end

end A110659.P2989998192561449467

namespace A110659

/-- `(2*n+3+6*cos(n*π/2)-cos(n*π)-6*sin(n*π/2))/8` -/
def P2989998192561449467.Spec : Prop :=
  ∀ n, P2989998192561449467.a n = (A110659 n : ℝ)

end A110659

/-! ## A110659.P2010011942329232190

`A028242(ceil(n/2))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A110659

/-- `A028242(ceil(n/2))` -/
def P2010011942329232190.Spec : Prop :=
  ∀ n, P2010011942329232190.a n = A110659 n

theorem P2010011942329232190.correct : P2010011942329232190.Spec := by
  intro n
  simp only [A110659]

end A110659

/-! ## A110659.P13759667433399310921

`round(xor(2, n+1)/4)`
-/

namespace A110659.P13759667433399310921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 2 (n + 1) : ℚ) / 4)

end

end A110659.P13759667433399310921

namespace A110659

/-- `round(xor(2, n+1)/4)` -/
def P13759667433399310921.Spec : Prop :=
  ∀ n, P13759667433399310921.a n = A110659 n

end A110659

/-! ## A110659.P13949951292056110076

`a(n-4)+1` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A110659.P13949951292056110076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 2] fun n a =>
  a (n - 4) + 1

end

end A110659.P13949951292056110076

namespace A110659

/-- `a(n-4)+1` -/
def P13949951292056110076.Spec : Prop :=
  ∀ n, (P13949951292056110076.a n : ℤ) = A110659 n

end A110659

/-! ## A110659.P7961228957722505687

`floor((xor(2, n+1)+2)/4)`
-/

namespace A110659.P7961228957722505687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 2 (n + 1) + 2 : ℚ) / 4⌋

end

end A110659.P7961228957722505687

namespace A110659

/-- `floor((xor(2, n+1)+2)/4)` -/
def P7961228957722505687.Spec : Prop :=
  ∀ n, P7961228957722505687.a n = A110659 n

end A110659

/-! ## A110659.P6330924380168170920

`ceil((xor(2, n+1)-1)/4)`
-/

namespace A110659.P6330924380168170920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.xor 2 (n + 1) : ℤ) - 1 : ℚ) / 4⌉

end

end A110659.P6330924380168170920

namespace A110659

/-- `ceil((xor(2, n+1)-1)/4)` -/
def P6330924380168170920.Spec : Prop :=
  ∀ n, P6330924380168170920.a n = A110659 n

end A110659

/-! ## A110659.P7915519220914512566

`ceil(n/2-a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A110659.P7915519220914512566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ⌈(n : ℚ) / 2 - (a (n - 2) : ℚ)⌉

end

end A110659.P7915519220914512566

namespace A110659

/-- `ceil(n/2-a(n-2))` -/
def P7915519220914512566.Spec : Prop :=
  ∀ n, P7915519220914512566.a n = A110659 n

end A110659

/-! ## A110659.P6412608181646683308

`round(n/2-a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A110659.P6412608181646683308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  SequenceMachineLib.roundAway ((n : ℚ) / 2 - (a (n - 2) : ℚ))

end

end A110659.P6412608181646683308

namespace A110659

/-- `round(n/2-a(n-2))` -/
def P6412608181646683308.Spec : Prop :=
  ∀ n, P6412608181646683308.a n = A110659 n

end A110659

/-! ## A110659.P15069302218377411958

`∑[and(1, n)]-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A110659.P15069302218377411958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 2)

end

end A110659.P15069302218377411958

namespace A110659

/-- `∑[and(1, n)]-a(n-2)` -/
def P15069302218377411958.Spec : Prop :=
  ∀ n, P15069302218377411958.a n = A110659 n

end A110659

/-! ## A110659.P1797391086236634070

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=-1, a(2)=0, a(3)=2, a(4)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A110659.P1797391086236634070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 0, 2, 0] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110659.P1797391086236634070

namespace A110659

/-- `∑[floor(a(n-4))]` -/
def P1797391086236634070.Spec : Prop :=
  ∀ n, P1797391086236634070.a n = A110659 n

end A110659

/-! ## A110659.P16846236716086788615

`floor(and(2, n-1)+(n-1)/4)`
-/

namespace A110659.P16846236716086788615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.land 2 ((n : ℤ) - 1) : ℚ) + ((n : ℤ) - 1 : ℚ) / 4⌋

end

end A110659.P16846236716086788615

namespace A110659

/-- `floor(and(2, n-1)+(n-1)/4)` -/
def P16846236716086788615.Spec : Prop :=
  ∀ n, P16846236716086788615.a n = A110659 n

end A110659

/-! ## A110659.P12420234513551394247

`round((2*n-xor(2, n-1))/4)`
-/

namespace A110659.P12420234513551394247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℤ) - Int.xor 2 ((n : ℤ) - 1) : ℚ) / 4)

end

end A110659.P12420234513551394247

namespace A110659

/-- `round((2*n-xor(2, n-1))/4)` -/
def P12420234513551394247.Spec : Prop :=
  ∀ n, P12420234513551394247.a n = A110659 n

end A110659

/-! ## A110659.P587033461603154956

`n-a(n-2)-floor(n/2)` with `a(0)=1, a(1)=0`
-/

namespace A110659.P587033461603154956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (n : ℤ) - a (n - 2) - ⌊(n : ℚ) / 2⌋

end

end A110659.P587033461603154956

namespace A110659

/-- `n-a(n-2)-floor(n/2)` -/
def P587033461603154956.Spec : Prop :=
  ∀ n, P587033461603154956.a n = A110659 n

end A110659

/-! ## A110659.P1905762236242384157

`A110657(xor(1, n))`
-/

namespace A110659.P1905762236242384157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (Nat.xor 1 n)

end

end A110659.P1905762236242384157

namespace A110659

/-- `A110657(xor(1, n))` -/
def P1905762236242384157.Spec : Prop :=
  ∀ n, P1905762236242384157.a n = A110659 n

end A110659

/-! ## A110659.P14888673001054639818

`A028836(n+1)-2*n`
-/

namespace A110659.P14888673001054639818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028836 (n + 1) - (2 * n : ℤ)

end

end A110659.P14888673001054639818

namespace A110659

/-- `A028836(n+1)-2*n` -/
def P14888673001054639818.Spec : Prop :=
  ∀ n, P14888673001054639818.a n = A110659 n

end A110659

/-! ## A110659.P5290464034400685625

`A110657(A004442(n))`
-/

namespace A110659.P5290464034400685625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A004442 n).toNat

end

end A110659.P5290464034400685625

namespace A110659

/-- `A110657(A004442(n))` -/
def P5290464034400685625.Spec : Prop :=
  ∀ n, P5290464034400685625.a n = A110659 n

end A110659

/-! ## A110659.P14603210196172855433

`A246552(A263426(n))`
-/

namespace A110659.P14603210196172855433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246552 (A263426 n).toNat

end

end A110659.P14603210196172855433

namespace A110659

/-- `A246552(A263426(n))` -/
def P14603210196172855433.Spec : Prop :=
  ∀ n, P14603210196172855433.a n = A110659 n

end A110659

/-! ## A110659.P17306627503080461955

`A110654(xor(1, A110654(n)))`
-/

namespace A110659.P17306627503080461955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.xor 1 (A110654 n)).toNat

end

end A110659.P17306627503080461955

namespace A110659

/-- `A110654(xor(1, A110654(n)))` -/
def P17306627503080461955.Spec : Prop :=
  ∀ n, P17306627503080461955.a n = A110659 n

end A110659

/-! ## A110659.P12086782363079918215

`A110657(A033999(n)+n)`
-/

namespace A110659.P12086782363079918215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A033999 n + (n : ℤ)).toNat

end

end A110659.P12086782363079918215

namespace A110659

/-- `A110657(A033999(n)+n)` -/
def P12086782363079918215.Spec : Prop :=
  ∀ n, P12086782363079918215.a n = A110659 n

end A110659

/-!
# A110660: Oblong (promic) numbers repeated.

The programs for A110660, the canonical program `A110660.P9226895399142348914` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110660 has offset 0).

The definition of A110660 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110660.P9226895399142348914

`floor(n/2)*(floor(n/2)+1)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A110660

/-- `floor(n/2)*(floor(n/2)+1)` -/
def P9226895399142348914.Spec : Prop :=
  ∀ n, P9226895399142348914.a n = A110660 n

theorem P9226895399142348914.correct : P9226895399142348914.Spec := by
  intro n
  simp only [A110660]

end A110660

/-! ## A110660.P6351104860091167112

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=2, a(4)=6`
-/

namespace A110660.P6351104860091167112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 2, 6] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A110660.P6351104860091167112

namespace A110660

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P6351104860091167112.Spec : Prop :=
  ∀ n, P6351104860091167112.a n = A110660 n

end A110660

/-! ## A110660.P16545566452927372645

`∑[n%or(1, n)]`
-/

namespace A110660.P16545566452927372645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110660.P16545566452927372645

namespace A110660

/-- `∑[n%or(1, n)]` -/
def P16545566452927372645.Spec : Prop :=
  ∀ n, (P16545566452927372645.a n : ℤ) = A110660 n

end A110660

/-! ## A110660.P16118401152553823398

`floor((or(1, n)/2)²)`
-/

namespace A110660.P16118401152553823398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.lor 1 n : ℚ) / 2) ^ 2⌋

end

end A110660.P16118401152553823398

namespace A110660

/-- `floor((or(1, n)/2)²)` -/
def P16118401152553823398.Spec : Prop :=
  ∀ n, P16118401152553823398.a n = A110660 n

end A110660

/-! ## A110660.P8017161917100087036

`round((or(1, n)/2)²)`
-/

namespace A110660.P8017161917100087036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.lor 1 n : ℚ) / 2) ^ 2)

end

end A110660.P8017161917100087036

namespace A110660

/-- `round((or(1, n)/2)²)` -/
def P8017161917100087036.Spec : Prop :=
  ∀ n, P8017161917100087036.a n = A110660 n

end A110660

/-! ## A110660.P16020739883731158140

`∑[n*log2(gcd(2, n))]`
-/

namespace A110660.P16020739883731158140
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110660.P16020739883731158140

namespace A110660

/-- `∑[n*log2(gcd(2, n))]` -/
def P16020739883731158140.Spec : Prop :=
  ∀ n, P16020739883731158140.a n = (A110660 n : ℝ)

end A110660

/-! ## A110660.P16202482093011015962

`(or(1, n)²-1)/4`
-/

namespace A110660.P16202482093011015962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 n ^ 2 : ℤ) - 1 : ℚ) / 4

end

end A110660.P16202482093011015962

namespace A110660

/-- `(or(1, n)²-1)/4` -/
def P16202482093011015962.Spec : Prop :=
  ∀ n, P16202482093011015962.a n = (A110660 n : ℚ)

end A110660

/-! ## A110660.P34928590888116070

`xor(1, or(1, n)²)/4`
-/

namespace A110660.P34928590888116070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (Nat.lor 1 n ^ 2) : ℚ) / 4

end

end A110660.P34928590888116070

namespace A110660

/-- `xor(1, or(1, n)²)/4` -/
def P34928590888116070.Spec : Prop :=
  ∀ n, P34928590888116070.a n = (A110660 n : ℚ)

end A110660

/-! ## A110660.P8327799505776865956

`∑[n]-∑[and(1, n)]²`
-/

namespace A110660.P8327799505776865956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A110660.P8327799505776865956

namespace A110660

/-- `∑[n]-∑[and(1, n)]²` -/
def P8327799505776865956.Spec : Prop :=
  ∀ n, P8327799505776865956.a n = A110660 n

end A110660

/-! ## A110660.P9214372667508377071

`abs(∑[n*(n-1)%2])`
-/

namespace A110660.P9214372667508377071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod ((n : ℤ) - 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A110660.P9214372667508377071

namespace A110660

/-- `abs(∑[n*(n-1)%2])` -/
def P9214372667508377071.Spec : Prop :=
  ∀ n, P9214372667508377071.a n = A110660 n

end A110660

/-! ## A110660.P4783482071933791794

`-∑[lcm(2, n)-2*n]`
-/

namespace A110660.P4783482071933791794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110660.P4783482071933791794

namespace A110660

/-- `-∑[lcm(2, n)-2*n]` -/
def P4783482071933791794.Spec : Prop :=
  ∀ n, P4783482071933791794.a n = A110660 n

end A110660

/-! ## A110660.P6783947868649156597

`∑[n]-∑[n*and(1, n)]`
-/

namespace A110660.P6783947868649156597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A110660.P6783947868649156597

namespace A110660

/-- `∑[n]-∑[n*and(1, n)]` -/
def P6783947868649156597.Spec : Prop :=
  ∀ n, P6783947868649156597.a n = A110660 n

end A110660

/-! ## A110660.P14084944428837042682

`floor((n+1)*xor(1, n)/4)`
-/

namespace A110660.P14084944428837042682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) * ((Nat.xor 1 n : ℚ) / 4)⌋

end

end A110660.P14084944428837042682

namespace A110660

/-- `floor((n+1)*xor(1, n)/4)` -/
def P14084944428837042682.Spec : Prop :=
  ∀ n, P14084944428837042682.a n = A110660 n

end A110660

/-! ## A110660.P8875504886342893213

`round((n+1)*xor(1, n)/4)`
-/

namespace A110660.P8875504886342893213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((Nat.xor 1 n : ℚ) / 4))

end

end A110660.P8875504886342893213

namespace A110660

/-- `round((n+1)*xor(1, n)/4)` -/
def P8875504886342893213.Spec : Prop :=
  ∀ n, P8875504886342893213.a n = A110660 n

end A110660

/-! ## A110660.P4054502319628656777

`-∑[n*-(n+1)%2]`
-/

namespace A110660.P4054502319628656777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (-(n + 1 : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110660.P4054502319628656777

namespace A110660

/-- `-∑[n*-(n+1)%2]` -/
def P4054502319628656777.Spec : Prop :=
  ∀ n, P4054502319628656777.a n = A110660 n

end A110660

/-! ## A110660.P13354258581363601346

`∑[C(or(1, n), n)]-(n+1)`
-/

namespace A110660.P13354258581363601346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A110660.P13354258581363601346

namespace A110660

/-- `∑[C(or(1, n), n)]-(n+1)` -/
def P13354258581363601346.Spec : Prop :=
  ∀ n, P13354258581363601346.a n = A110660 n

end A110660

/-! ## A110660.P11587292714641223837

`∑[n]-∑[(n+2)%2]²`
-/

namespace A110660.P11587292714641223837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A110660.P11587292714641223837

namespace A110660

/-- `∑[n]-∑[(n+2)%2]²` -/
def P11587292714641223837.Spec : Prop :=
  ∀ n, P11587292714641223837.a n = A110660 n

end A110660

/-! ## A110660.P3719317718187012434

`∑[gcd(2*n, n²)]-∑[n]`
-/

namespace A110660.P3719317718187012434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (n ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A110660.P3719317718187012434

namespace A110660

/-- `∑[gcd(2*n, n²)]-∑[n]` -/
def P3719317718187012434.Spec : Prop :=
  ∀ n, P3719317718187012434.a n = A110660 n

end A110660

/-! ## A110660.P2685702558206300162

`A002378(floor(n/2))`
-/

namespace A110660.P2685702558206300162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 ⌊(n : ℚ) / 2⌋.toNat

end

end A110660.P2685702558206300162

namespace A110660

/-- `A002378(floor(n/2))` -/
def P2685702558206300162.Spec : Prop :=
  ∀ n, P2685702558206300162.a n = A110660 n

end A110660

/-!
# A110661: Triangle read by rows: T(n,k) = total number of divisors of k, k+1, ..., n (1 <= k <= n).

The programs for A110661, the canonical program `A110661.P15569028021835169260` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110661 has offset 1).

The definition of A110661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110661.P15569028021835169260

`A006218(A002024(n+1))-A006218(A002262(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A110661

/-- `A006218(A002024(n+1))-A006218(A002262(n))` -/
def P15569028021835169260.Spec : Prop :=
  ∀ n, P15569028021835169260.a n = A110661 (n + 1)

theorem P15569028021835169260.correct : P15569028021835169260.Spec := by
  intro n
  simp only [A110661, Nat.add_sub_cancel]

end A110661

/-! ## A110661.P298567946528180498

`A056535(A127739(n+1))-A006218(A002262(n))`
-/

namespace A110661.P298567946528180498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056535 (A127739 (n + 1)).toNat - A006218 (A002262 n).toNat

end

end A110661.P298567946528180498

namespace A110661

/-- `A056535(A127739(n+1))-A006218(A002262(n))` -/
def P298567946528180498.Spec : Prop :=
  ∀ n, P298567946528180498.a n = A110661 (n + 1)

end A110661

/-! ## A110661.P4686573705850470438

`A205400(n+1)+A011646(A016789(n))`
-/

namespace A110661.P4686573705850470438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205400 (n + 1) + A011646 (A016789 n).toNat

end

end A110661.P4686573705850470438

namespace A110661

/-- `A205400(n+1)+A011646(A016789(n))` -/
def P4686573705850470438.Spec : Prop :=
  ∀ n, P4686573705850470438.a n = A110661 (n + 1)

end A110661

/-! ## A110661.P3690862109710938679

`A205400(n+1)-A059995(n)^A119636(n)`
-/

namespace A110661.P3690862109710938679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205400 (n + 1) : ℚ) - (A059995 n : ℚ) ^ (A119636 n : ℤ)

end

end A110661.P3690862109710938679

namespace A110661

/-- `A205400(n+1)-A059995(n)^A119636(n)` -/
def P3690862109710938679.Spec : Prop :=
  ∀ n, P3690862109710938679.a n = (A110661 (n + 1) : ℚ)

end A110661

/-! ## A110661.P10922425194042304746

`A204890(n+1)-A033665(A052551(n))`
-/

namespace A110661.P10922425194042304746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (n + 1) - A033665 (A052551 n).toNat

end

end A110661.P10922425194042304746

namespace A110661

/-- `A204890(n+1)-A033665(A052551(n))` -/
def P10922425194042304746.Spec : Prop :=
  ∀ n, P10922425194042304746.a n = A110661 (n + 1)

end A110661

/-!
# A110662: Triangle read by rows: T(n,k) is the sum of the sums of divisors of k, k+1, ..., n (1 <= k <= n).

The programs for A110662, the canonical program `A110662.P17120547529489749073` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110662 has offset 1).

The definition of A110662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110662.P17120547529489749073

`A160664(A002024(n+1))-A160664(A002262(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A110662

/-- `A160664(A002024(n+1))-A160664(A002262(n))` -/
def P17120547529489749073.Spec : Prop :=
  ∀ n, P17120547529489749073.a n = A110662 (n + 1)

theorem P17120547529489749073.correct : P17120547529489749073.Spec := by
  intro n
  simp only [A110662, Nat.add_sub_cancel]

end A110662

/-! ## A110662.P15118550530900887596

`A160664(A003056(n)+1)-A160664(A002262(n))`
-/

namespace A110662.P15118550530900887596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (A003056 n + 1).toNat - A160664 (A002262 n).toNat

end

end A110662.P15118550530900887596

namespace A110662

/-- `A160664(A003056(n)+1)-A160664(A002262(n))` -/
def P15118550530900887596.Spec : Prop :=
  ∀ n, P15118550530900887596.a n = A110662 (n + 1)

end A110662

/-!
# A110663: Triangle read by rows: T(n,k) = Sum_{j=k..n} phi(j) (1<=k<=n), where phi is Euler's totient function.

The programs for A110663, the canonical program `A110663.P10056523750472709388` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110663 has offset 1).

The definition of A110663 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110663.P10056523750472709388

`A002088(A002024(n+1))-A002088(A002262(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A110663

/-- `A002088(A002024(n+1))-A002088(A002262(n))` -/
def P10056523750472709388.Spec : Prop :=
  ∀ n, P10056523750472709388.a n = A110663 (n + 1)

theorem P10056523750472709388.correct : P10056523750472709388.Spec := by
  intro n
  simp only [A110663, Nat.add_sub_cancel]

end A110663

/-! ## A110663.P8386705826110096422

`A002088(A002024(n+1))-A002088(A002260(n+1)-1)`
-/

namespace A110663.P8386705826110096422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (A002024 (n + 1)).toNat - A002088 (A002260 (n + 1) - 1).toNat

end

end A110663.P8386705826110096422

namespace A110663

/-- `A002088(A002024(n+1))-A002088(A002260(n+1)-1)` -/
def P8386705826110096422.Spec : Prop :=
  ∀ n, P8386705826110096422.a n = A110663 (n + 1)

end A110663

/-! ## A110663.P14799006722181508882

`A005145(n+1)-A007947(A120458(n))`
-/

namespace A110663.P14799006722181508882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (n + 1) - A007947 (A120458 n).toNat

end

end A110663.P14799006722181508882

namespace A110663

/-- `A005145(n+1)-A007947(A120458(n))` -/
def P14799006722181508882.Spec : Prop :=
  ∀ n, P14799006722181508882.a n = A110663 (n + 1)

end A110663

/-! ## A110663.P7845077744864288465

`A105560(A303555(n+1))-A105560(A059268(n))`
-/

namespace A110663.P7845077744864288465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (A303555 (n + 1)).toNat - A105560 (A059268 n).toNat

end

end A110663.P7845077744864288465

namespace A110663

/-- `A105560(A303555(n+1))-A105560(A059268(n))` -/
def P7845077744864288465.Spec : Prop :=
  ∀ n, P7845077744864288465.a n = A110663 (n + 1)

end A110663

/-! ## A110663.P15923232611038668972

`A105560(A303555(n+1))-A000041(A002260(n+1))`
-/

namespace A110663.P15923232611038668972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (A303555 (n + 1)).toNat - A000041 (A002260 (n + 1)).toNat

end

end A110663.P15923232611038668972

namespace A110663

/-- `A105560(A303555(n+1))-A000041(A002260(n+1))` -/
def P15923232611038668972.Spec : Prop :=
  ∀ n, P15923232611038668972.a n = A110663 (n + 1)

end A110663

/-!
# A110664: Triangle read by rows: T(n,k)=sum(bigomega(j),j=k..n) (1<=k<=n), where bigomega(j) is the number of prime divisors of j, counted with multiplicities.

The programs for A110664, the canonical program `A110664.P4863318990323955336` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110664 has offset 1).

The definition of A110664 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110664.P4863318990323955336

`A022559(A002024(n+1))-A022559(A002262(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A110664

/-- `A022559(A002024(n+1))-A022559(A002262(n))` -/
def P4863318990323955336.Spec : Prop :=
  ∀ n, P4863318990323955336.a n = A110664 (n + 1)

theorem P4863318990323955336.correct : P4863318990323955336.Spec := by
  intro n
  simp only [A110664, Nat.add_sub_cancel]

end A110664

/-! ## A110664.P8367865490749852620

`∑{e}[A094587(comp[∑[n-1]]), #]`
-/

namespace A110664.P8367865490749852620
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A110664.P8367865490749852620

namespace A110664

/-- `∑{e}[A094587(comp[∑[n-1]]), #]` -/
def P8367865490749852620.Spec : Prop :=
  ∀ n, (P8367865490749852620.a n : ℤ) = A110664 (n + 1)

end A110664

/-! ## A110664.P4698568203683012824

`∑{e}[A068424(∑[char[∑[n]]]²-n), #]`
-/

namespace A110664.P4698568203683012824
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068424 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 - n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A110664.P4698568203683012824

namespace A110664

/-- `∑{e}[A068424(∑[char[∑[n]]]²-n), #]` -/
def P4698568203683012824.Spec : Prop :=
  ∀ n, (P4698568203683012824.a n : ℤ) = A110664 (n + 1)

end A110664

/-! ## A110664.P2739855659129464339

`∑{e}[A094587(A007401(n+1)), #]%41`
-/

namespace A110664.P2739855659129464339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A007401 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) % 41

end

end A110664.P2739855659129464339

namespace A110664

/-- `∑{e}[A094587(A007401(n+1)), #]%41` -/
def P2739855659129464339.Spec : Prop :=
  ∀ n, (P2739855659129464339.a n : ℤ) = A110664 (n + 1)

end A110664

/-! ## A110664.P17496286958545646740

`∑{e}[A094587(A007401(n+1))-A000007(n), #]`
-/

namespace A110664.P17496286958545646740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A007401 (n + 1)).toNat - A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A110664.P17496286958545646740

namespace A110664

/-- `∑{e}[A094587(A007401(n+1))-A000007(n), #]` -/
def P17496286958545646740.Spec : Prop :=
  ∀ n, (P17496286958545646740.a n : ℤ) = A110664 (n + 1)

end A110664

/-!
# A110665: Sequence is {a(0,n)}, where a(m,0)=0, a(m,n) = a(m-1,n)+a(m,n-1) and a(0,n) is such that a(n,n) = n for all n.

The programs for A110665, the canonical program `A110665.P12712309309728189405` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110665 has offset 0).

The definition of A110665 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110665.P12712309309728189405

`n*A010892(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A110665

/-- `n*A010892(n)` -/
def P12712309309728189405.Spec : Prop :=
  ∀ n, P12712309309728189405.a n = A110665 n

theorem P12712309309728189405.correct : P12712309309728189405.Spec := by
  intro n
  simp only [A110665]

end A110665

/-! ## A110665.P9776357885487427846

`n*round(cos(n%6))`
-/

namespace A110665.P9776357885487427846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * SequenceMachineLib.roundAway (Real.cos ((n % 6 : ℕ) : ℝ))

end

end A110665.P9776357885487427846

namespace A110665

/-- `n*round(cos(n%6))` -/
def P9776357885487427846.Spec : Prop :=
  ∀ n, P9776357885487427846.a n = A110665 n

end A110665

/-! ## A110665.P4817693258203494347

`n*round(sin((n+1)%6))`
-/

namespace A110665.P4817693258203494347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * SequenceMachineLib.roundAway (Real.sin (((n + 1) % 6 : ℕ) : ℝ))

end

end A110665.P4817693258203494347

namespace A110665

/-- `n*round(sin((n+1)%6))` -/
def P4817693258203494347.Spec : Prop :=
  ∀ n, P4817693258203494347.a n = A110665 n

end A110665

/-! ## A110665.P8892730173881398938

`n*(∑[lcm(2, 1-n)]%3-1)`
-/

namespace A110665.P8892730173881398938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((((∑ j ∈ Finset.range (n + 1), f1 j) % 3 : ℕ) : ℤ) - 1)

end

end A110665.P8892730173881398938

namespace A110665

/-- `n*(∑[lcm(2, 1-n)]%3-1)` -/
def P8892730173881398938.Spec : Prop :=
  ∀ n, P8892730173881398938.a n = A110665 n

end A110665

/-! ## A110665.P9664361206536807415

`n*∑[a(n-1)-a(n-2)]` with `a(0)=1, a(1)=0`
-/

namespace A110665.P9664361206536807415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110665.P9664361206536807415

namespace A110665

/-- `n*∑[a(n-1)-a(n-2)]` -/
def P9664361206536807415.Spec : Prop :=
  ∀ n, P9664361206536807415.a n = A110665 n

end A110665

/-! ## A110665.P1854001086450244571

`n*(1-A021823(n))`
-/

namespace A110665.P1854001086450244571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A021823 n)

end

end A110665.P1854001086450244571

namespace A110665

/-- `n*(1-A021823(n))` -/
def P1854001086450244571.Spec : Prop :=
  ∀ n, P1854001086450244571.a n = A110665 n

end A110665

/-! ## A110665.P6431812082839394356

`n/2*A130772(n)`
-/

namespace A110665.P6431812082839394356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A130772 n : ℚ)

end

end A110665.P6431812082839394356

namespace A110665

/-- `n/2*A130772(n)` -/
def P6431812082839394356.Spec : Prop :=
  ∀ n, P6431812082839394356.a n = (A110665 n : ℚ)

end A110665

/-! ## A110665.P2475485783224631855

`n*∑[∑[A163810(n)]]`
-/

namespace A110665.P2475485783224631855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163810 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110665.P2475485783224631855

namespace A110665

/-- `n*∑[∑[A163810(n)]]` -/
def P2475485783224631855.Spec : Prop :=
  ∀ n, P2475485783224631855.a n = A110665 n

end A110665

/-! ## A110665.P15776959442571130425

`n*(A131026(n+1)-1)`
-/

namespace A110665.P15776959442571130425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A131026 (n + 1) - 1)

end

end A110665.P15776959442571130425

namespace A110665

/-- `n*(A131026(n+1)-1)` -/
def P15776959442571130425.Spec : Prop :=
  ∀ n, P15776959442571130425.a n = A110665 n

end A110665

/-! ## A110665.P3064821432099908601

`n*∑[A110161(2*n+1)]`
-/

namespace A110665.P3064821432099908601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110161 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110665.P3064821432099908601

namespace A110665

/-- `n*∑[A110161(2*n+1)]` -/
def P3064821432099908601.Spec : Prop :=
  ∀ n, P3064821432099908601.a n = A110665 n

end A110665

/-! ## A110665.P1169821758312767587

`A164611(n)-A187340(n)`
-/

namespace A110665.P1169821758312767587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164611 n - A187340 n

end

end A110665.P1169821758312767587

namespace A110665

/-- `A164611(n)-A187340(n)` -/
def P1169821758312767587.Spec : Prop :=
  ∀ n, P1169821758312767587.a n = A110665 n

end A110665

/-! ## A110665.P16471495858810157014

`A038608(n)*A049347(n)`
-/

namespace A110665.P16471495858810157014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n * A049347 n

end

end A110665.P16471495858810157014

namespace A110665

/-- `A038608(n)*A049347(n)` -/
def P16471495858810157014.Spec : Prop :=
  ∀ n, P16471495858810157014.a n = A110665 n

end A110665

/-! ## A110665.P12696254513632327711

`A117441(n)*A374157(n)`
-/

namespace A110665.P12696254513632327711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117441 n * A374157 n

end

end A110665.P12696254513632327711

namespace A110665

/-- `A117441(n)*A374157(n)` -/
def P12696254513632327711.Spec : Prop :=
  ∀ n, P12696254513632327711.a n = A110665 n

end A110665

/-! ## A110665.P1488897635070579509

`n*(A099254(n)-A076118(n))`
-/

namespace A110665.P1488897635070579509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A099254 n - A076118 n)

end

end A110665.P1488897635070579509

namespace A110665

/-- `n*(A099254(n)-A076118(n))` -/
def P1488897635070579509.Spec : Prop :=
  ∀ n, P1488897635070579509.a n = A110665 n

end A110665

/-! ## A110665.P9060582096723674625

`A076118(n+1)+A076118(n)-A010892(n)`
-/

namespace A110665.P9060582096723674625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076118 (n + 1) + (A076118 n - A010892 n)

end

end A110665.P9060582096723674625

namespace A110665

/-- `A076118(n+1)+A076118(n)-A010892(n)` -/
def P9060582096723674625.Spec : Prop :=
  ∀ n, P9060582096723674625.a n = A110665 n

end A110665

/-! ## A110665.P1137356078938516130

`n*A128834(n+1)`
-/

namespace A110665.P1137356078938516130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A128834 (n + 1)

end

end A110665.P1137356078938516130

namespace A110665

/-- `n*A128834(n+1)` -/
def P1137356078938516130.Spec : Prop :=
  ∀ n, P1137356078938516130.a n = A110665 n

end A110665

/-! ## A110665.P6893587988591666670

`n*A163806(n+1)`
-/

namespace A110665.P6893587988591666670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A163806 (n + 1)

end

end A110665.P6893587988591666670

namespace A110665

/-- `n*A163806(n+1)` -/
def P6893587988591666670.Spec : Prop :=
  ∀ n, P6893587988591666670.a n = A110665 n

end A110665

/-! ## A110665.P10828505276958522225

`n*(Δ[A077859(n)]-1)`
-/

namespace A110665.P10828505276958522225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n - 1)

end

end A110665.P10828505276958522225

namespace A110665

/-- `n*(Δ[A077859(n)]-1)` -/
def P10828505276958522225.Spec : Prop :=
  ∀ n, P10828505276958522225.a n = A110665 n

end A110665

/-! ## A110665.P2843195762439258103

`n*(A164965(n+1)-1)`
-/

namespace A110665.P2843195762439258103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A164965 (n + 1) - 1)

end

end A110665.P2843195762439258103

namespace A110665

/-- `n*(A164965(n+1)-1)` -/
def P2843195762439258103.Spec : Prop :=
  ∀ n, P2843195762439258103.a n = A110665 n

end A110665

/-!
# A110666: Sequence is {a(1,n)}, where a(m,n) is defined at sequence A110665.

The programs for A110666, the canonical program `A110666.P11587890957851938735` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110666 has offset 0).

The definition of A110666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110666.P1589688437774278868

`∑[n*round(cos(n%6))]`
-/

namespace A110666.P1589688437774278868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * SequenceMachineLib.roundAway (Real.cos ((n % 6 : ℕ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110666.P1589688437774278868

namespace A110666

/-- `∑[n*round(cos(n%6))]` -/
def P1589688437774278868.Spec : Prop :=
  ∀ n, P1589688437774278868.a n = A110666 n

end A110666

/-! ## A110666.P11587890957851938735

`∑[n*(∑[lcm(2, 1-n)]%3-1)]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A110666

/-- `∑[n*(∑[lcm(2, 1-n)]%3-1)]` -/
def P11587890957851938735.Spec : Prop :=
  ∀ n, P11587890957851938735.a n = A110666 n

theorem P11587890957851938735.correct : P11587890957851938735.Spec := by
  intro n
  simp only [A110666]

end A110666

/-! ## A110666.P10594372698854429035

`∑[n*∑[a(n-1)-a(n-2)]]` with `a(0)=1, a(1)=0`
-/

namespace A110666.P10594372698854429035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 1) - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110666.P10594372698854429035

namespace A110666

/-- `∑[n*∑[a(n-1)-a(n-2)]]` -/
def P10594372698854429035.Spec : Prop :=
  ∀ n, P10594372698854429035.a n = A110666 n

end A110666

/-! ## A110666.P15479184154622951554

`a(n-1)+n*((a(n-1)-n)%n+1)` with `a(0)=0`
-/

namespace A110666.P15479184154622951554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) * (Int.tmod (a (n - 1) - (n : ℤ)) (n : ℤ) + 1)

end

end A110666.P15479184154622951554

namespace A110666

/-- `a(n-1)+n*((a(n-1)-n)%n+1)` -/
def P15479184154622951554.Spec : Prop :=
  ∀ n, P15479184154622951554.a n = A110666 n

end A110666

/-! ## A110666.P14362905312886824285

`n-(n*(n-a(n-1))%n-a(n-1))` with `a(0)=0`
-/

namespace A110666.P14362905312886824285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - ((n : ℤ) * Int.tmod ((n : ℤ) - a (n - 1)) (n : ℤ) - a (n - 1))

end

end A110666.P14362905312886824285

namespace A110666

/-- `n-(n*(n-a(n-1))%n-a(n-1))` -/
def P14362905312886824285.Spec : Prop :=
  ∀ n, P14362905312886824285.a n = A110666 n

end A110666

/-! ## A110666.P5593168719633740400

`∑[A110665(n)]`
-/

namespace A110666.P5593168719633740400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110665 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110666.P5593168719633740400

namespace A110666

/-- `∑[A110665(n)]` -/
def P5593168719633740400.Spec : Prop :=
  ∀ n, P5593168719633740400.a n = A110666 n

end A110666

/-! ## A110666.P15543914462797420276

`A187307(n)-1`
-/

namespace A110666.P15543914462797420276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187307 n - 1

end

end A110666.P15543914462797420276

namespace A110666

/-- `A187307(n)-1` -/
def P15543914462797420276.Spec : Prop :=
  ∀ n, P15543914462797420276.a n = A110666 n

end A110666

/-! ## A110666.P17142419958881391133

`∑[n*A010892(n)]`
-/

namespace A110666.P17142419958881391133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110666.P17142419958881391133

namespace A110666

/-- `∑[n*A010892(n)]` -/
def P17142419958881391133.Spec : Prop :=
  ∀ n, P17142419958881391133.a n = A110666 n

end A110666

/-! ## A110666.P12495621267031284545

`round(A100052(n)/2)-1`
-/

namespace A110666.P12495621267031284545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A100052 n : ℚ) / 2) - 1

end

end A110666.P12495621267031284545

namespace A110666

/-- `round(A100052(n)/2)-1` -/
def P12495621267031284545.Spec : Prop :=
  ∀ n, P12495621267031284545.a n = A110666 n

end A110666

/-! ## A110666.P16105921951001447834

`∑[n*(1-A021823(n))]`
-/

namespace A110666.P16105921951001447834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A021823 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110666.P16105921951001447834

namespace A110666

/-- `∑[n*(1-A021823(n))]` -/
def P16105921951001447834.Spec : Prop :=
  ∀ n, P16105921951001447834.a n = A110666 n

end A110666

/-! ## A110666.P10252733160563199257

`∑[n*(A131026(n+1)-1)]`
-/

namespace A110666.P10252733160563199257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A131026 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110666.P10252733160563199257

namespace A110666

/-- `∑[n*(A131026(n+1)-1)]` -/
def P10252733160563199257.Spec : Prop :=
  ∀ n, P10252733160563199257.a n = A110666 n

end A110666

/-! ## A110666.P2741885913889363332

`∑[n*∑[A110161(2*n+1)]]`
-/

namespace A110666.P2741885913889363332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110161 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110666.P2741885913889363332

namespace A110666

/-- `∑[n*∑[A110161(2*n+1)]]` -/
def P2741885913889363332.Spec : Prop :=
  ∀ n, P2741885913889363332.a n = A110666 n

end A110666

/-! ## A110666.P187351220816820260

`A165202(n)-A164965(n)`
-/

namespace A110666.P187351220816820260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165202 n - A164965 n

end

end A110666.P187351220816820260

namespace A110666

/-- `A165202(n)-A164965(n)` -/
def P187351220816820260.Spec : Prop :=
  ∀ n, P187351220816820260.a n = A110666 n

end A110666

/-! ## A110666.P8719276435035464973

`∑[n*A131736(A014681(n))]`
-/

namespace A110666.P8719276435035464973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A131736 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110666.P8719276435035464973

namespace A110666

/-- `∑[n*A131736(A014681(n))]` -/
def P8719276435035464973.Spec : Prop :=
  ∀ n, P8719276435035464973.a n = A110666 n

end A110666

/-! ## A110666.P12588463361535211161

`A010892(n)+A100050(n)-1`
-/

namespace A110666.P12588463361535211161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n + (A100050 n - 1)

end

end A110666.P12588463361535211161

namespace A110666

/-- `A010892(n)+A100050(n)-1` -/
def P12588463361535211161.Spec : Prop :=
  ∀ n, P12588463361535211161.a n = A110666 n

end A110666

/-! ## A110666.P1010039417650131288

`A128213(n)+A128834(n)-1`
-/

namespace A110666.P1010039417650131288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128213 n + (A128834 n - 1)

end

end A110666.P1010039417650131288

namespace A110666

/-- `A128213(n)+A128834(n)-1` -/
def P1010039417650131288.Spec : Prop :=
  ∀ n, P1010039417650131288.a n = A110666 n

end A110666

/-! ## A110666.P2271274264428374672

`A165202(n)-(A128834(n)+1)`
-/

namespace A110666.P2271274264428374672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165202 n - (A128834 n + 1)

end

end A110666.P2271274264428374672

namespace A110666

/-- `A165202(n)-(A128834(n)+1)` -/
def P2271274264428374672.Spec : Prop :=
  ∀ n, P2271274264428374672.a n = A110666 n

end A110666

/-! ## A110666.P13234911278986712237

`xor(1, A165202(n))-A011655(n)`
-/

namespace A110666.P13234911278986712237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A165202 n) - A011655 n

end

end A110666.P13234911278986712237

namespace A110666

/-- `xor(1, A165202(n))-A011655(n)` -/
def P13234911278986712237.Spec : Prop :=
  ∀ n, P13234911278986712237.a n = A110666 n

end A110666

/-! ## A110666.P17072992548331714798

`∑[n*A128834(n+1)]`
-/

namespace A110666.P17072992548331714798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A128834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110666.P17072992548331714798

namespace A110666

/-- `∑[n*A128834(n+1)]` -/
def P17072992548331714798.Spec : Prop :=
  ∀ n, P17072992548331714798.a n = A110666 n

end A110666

/-!
# A110667: Sequence is {a(2,n)}, where a(m,n) is defined at sequence A110665.

The programs for A110667, the canonical program `A110667.P10627441211393851570` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110667 has offset 0).

The definition of A110667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110667.P2887991663869046518

`∑[∑[n*round(cos(n%6))]]`
-/

namespace A110667.P2887991663869046518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * SequenceMachineLib.roundAway (Real.cos ((n % 6 : ℕ) : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110667.P2887991663869046518

namespace A110667

/-- `∑[∑[n*round(cos(n%6))]]` -/
def P2887991663869046518.Spec : Prop :=
  ∀ n, P2887991663869046518.a n = A110667 n

end A110667

/-! ## A110667.P10627441211393851570

`∑[∑[n*(∑[lcm(2, 1-n)]%3-1)]]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A110667

/-- `∑[∑[n*(∑[lcm(2, 1-n)]%3-1)]]` -/
def P10627441211393851570.Spec : Prop :=
  ∀ n, P10627441211393851570.a n = A110667 n

theorem P10627441211393851570.correct : P10627441211393851570.Spec := by
  intro n
  simp only [A110667]

end A110667

/-! ## A110667.P7236144968281381694

`∑[∑[n*∑[a(n-1)-a(n-2)]]]` with `a(0)=1, a(1)=0`
-/

namespace A110667.P7236144968281381694
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f3 =>
  f3 (n - 1) - f3 (n - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110667.P7236144968281381694

namespace A110667

/-- `∑[∑[n*∑[a(n-1)-a(n-2)]]]` -/
def P7236144968281381694.Spec : Prop :=
  ∀ n, P7236144968281381694.a n = A110667 n

end A110667

/-! ## A110667.P15735340155172835129

`∑[A110666(n)]`
-/

namespace A110667.P15735340155172835129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110666 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110667.P15735340155172835129

namespace A110667

/-- `∑[A110666(n)]` -/
def P15735340155172835129.Spec : Prop :=
  ∀ n, P15735340155172835129.a n = A110667 n

end A110667

/-! ## A110667.P10787955770925916536

`∑[∑[A110665(n)]]`
-/

namespace A110667.P10787955770925916536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110665 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110667.P10787955770925916536

namespace A110667

/-- `∑[∑[A110665(n)]]` -/
def P10787955770925916536.Spec : Prop :=
  ∀ n, P10787955770925916536.a n = A110667 n

end A110667

/-! ## A110667.P4840673578037903868

`∑[A187307(n)-1]`
-/

namespace A110667.P4840673578037903868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187307 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110667.P4840673578037903868

namespace A110667

/-- `∑[A187307(n)-1]` -/
def P4840673578037903868.Spec : Prop :=
  ∀ n, P4840673578037903868.a n = A110667 n

end A110667

/-! ## A110667.P14551019156301549729

`∑[∑[n*A010892(n)]]`
-/

namespace A110667.P14551019156301549729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010892 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110667.P14551019156301549729

namespace A110667

/-- `∑[∑[n*A010892(n)]]` -/
def P14551019156301549729.Spec : Prop :=
  ∀ n, P14551019156301549729.a n = A110667 n

end A110667

/-! ## A110667.P3668534551328051416

`∑[∑[n*A131736(A014681(n))]]`
-/

namespace A110667.P3668534551328051416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A131736 (A014681 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110667.P3668534551328051416

namespace A110667

/-- `∑[∑[n*A131736(A014681(n))]]` -/
def P3668534551328051416.Spec : Prop :=
  ∀ n, P3668534551328051416.a n = A110667 n

end A110667

/-! ## A110667.P9279103243482632394

`∑[∑[n*A128834(n+1)]]`
-/

namespace A110667.P9279103243482632394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A128834 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110667.P9279103243482632394

namespace A110667

/-- `∑[∑[n*A128834(n+1)]]` -/
def P9279103243482632394.Spec : Prop :=
  ∀ n, P9279103243482632394.a n = A110667 n

end A110667

/-! ## A110667.P17790162260815684667

`∑[∑[n*A163806(n+1)]]`
-/

namespace A110667.P17790162260815684667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A163806 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110667.P17790162260815684667

namespace A110667

/-- `∑[∑[n*A163806(n+1)]]` -/
def P17790162260815684667.Spec : Prop :=
  ∀ n, P17790162260815684667.a n = A110667 n

end A110667

/-! ## A110667.P8234652226407669677

`∑[∑[A163810(n+1)+A100050(n+1)]]`
-/

namespace A110667.P8234652226407669677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163810 (n + 1) + A100050 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110667.P8234652226407669677

namespace A110667

/-- `∑[∑[A163810(n+1)+A100050(n+1)]]` -/
def P8234652226407669677.Spec : Prop :=
  ∀ n, P8234652226407669677.a n = A110667 n

end A110667

/-! ## A110667.P10619541003351031393

`A110668(n+1)-(A110668(n)+A110666(n+1))`
-/

namespace A110667.P10619541003351031393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110668 (n + 1) - (A110668 n + A110666 (n + 1))

end

end A110667.P10619541003351031393

namespace A110667

/-- `A110668(n+1)-(A110668(n)+A110666(n+1))` -/
def P10619541003351031393.Spec : Prop :=
  ∀ n, P10619541003351031393.a n = A110667 n

end A110667

/-! ## A110667.P3724499166462038863

`∑[∑[n*A260190(2*n)]]`
-/

namespace A110667.P3724499166462038863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A260190 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110667.P3724499166462038863

namespace A110667

/-- `∑[∑[n*A260190(2*n)]]` -/
def P3724499166462038863.Spec : Prop :=
  ∀ n, P3724499166462038863.a n = A110667 n

end A110667

/-! ## A110667.P5736287117304080690

`∑[∑[n*A014021(2*n)]]`
-/

namespace A110667.P5736287117304080690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014021 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110667.P5736287117304080690

namespace A110667

/-- `∑[∑[n*A014021(2*n)]]` -/
def P5736287117304080690.Spec : Prop :=
  ∀ n, P5736287117304080690.a n = A110667 n

end A110667

/-! ## A110667.P11772600053775296071

`∑[∑[n*A166446(2*n)]]`
-/

namespace A110667.P11772600053775296071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A166446 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110667.P11772600053775296071

namespace A110667

/-- `∑[∑[n*A166446(2*n)]]` -/
def P11772600053775296071.Spec : Prop :=
  ∀ n, P11772600053775296071.a n = A110667 n

end A110667

/-! ## A110667.P6999567234549003485

`∑[∑[n*A260192(2*n)]]`
-/

namespace A110667.P6999567234549003485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A260192 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110667.P6999567234549003485

namespace A110667

/-- `∑[∑[n*A260192(2*n)]]` -/
def P6999567234549003485.Spec : Prop :=
  ∀ n, P6999567234549003485.a n = A110667 n

end A110667

/-! ## A110667.P7973320374379697284

`∑[∑[n*A117441(2*n+1)]]`
-/

namespace A110667.P7973320374379697284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A117441 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110667.P7973320374379697284

namespace A110667

/-- `∑[∑[n*A117441(2*n+1)]]` -/
def P7973320374379697284.Spec : Prop :=
  ∀ n, P7973320374379697284.a n = A110667 n

end A110667

/-!
# A110668: Sequence is {a(3,n)}, where a(m,n) is defined at sequence A110665.

The programs for A110668, the canonical program `A110668.P1675304950937781533` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110668 has offset 0).

The definition of A110668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110668.P1675304950937781533

`∑[∑[∑[n*∑[a(n-1)-a(n-2)]]]]` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A110668

/-- `∑[∑[∑[n*∑[a(n-1)-a(n-2)]]]]` -/
def P1675304950937781533.Spec : Prop :=
  ∀ n, P1675304950937781533.a n = A110668 n

theorem P1675304950937781533.correct : P1675304950937781533.Spec := by
  intro n
  simp only [A110668]

end A110668

/-! ## A110668.P12816615858308593937

`∑[A110667(n)]`
-/

namespace A110668.P12816615858308593937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110668.P12816615858308593937

namespace A110668

/-- `∑[A110667(n)]` -/
def P12816615858308593937.Spec : Prop :=
  ∀ n, P12816615858308593937.a n = A110668 n

end A110668

/-! ## A110668.P13971020241750163949

`∑[∑[A110666(n)]]`
-/

namespace A110668.P13971020241750163949
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110666 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110668.P13971020241750163949

namespace A110668

/-- `∑[∑[A110666(n)]]` -/
def P13971020241750163949.Spec : Prop :=
  ∀ n, P13971020241750163949.a n = A110668 n

end A110668

/-! ## A110668.P16240235158494422019

`∑[∑[∑[A110665(n)]]]`
-/

namespace A110668.P16240235158494422019
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110665 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110668.P16240235158494422019

namespace A110668

/-- `∑[∑[∑[A110665(n)]]]` -/
def P16240235158494422019.Spec : Prop :=
  ∀ n, P16240235158494422019.a n = A110668 n

end A110668

/-! ## A110668.P12296801880146788162

`∑[∑[A187307(n)-1]]`
-/

namespace A110668.P12296801880146788162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187307 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110668.P12296801880146788162

namespace A110668

/-- `∑[∑[A187307(n)-1]]` -/
def P12296801880146788162.Spec : Prop :=
  ∀ n, P12296801880146788162.a n = A110668 n

end A110668

/-! ## A110668.P10936562144487977679

`∑[∑[∑[n*A010892(n)]]]`
-/

namespace A110668.P10936562144487977679
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010892 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110668.P10936562144487977679

namespace A110668

/-- `∑[∑[∑[n*A010892(n)]]]` -/
def P10936562144487977679.Spec : Prop :=
  ∀ n, P10936562144487977679.a n = A110668 n

end A110668

/-! ## A110668.P2704321625919823454

`A110669(n+1)-(A110669(n)+A110667(n+1))`
-/

namespace A110668.P2704321625919823454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110669 (n + 1) - (A110669 n + A110667 (n + 1))

end

end A110668.P2704321625919823454

namespace A110668

/-- `A110669(n+1)-(A110669(n)+A110667(n+1))` -/
def P2704321625919823454.Spec : Prop :=
  ∀ n, P2704321625919823454.a n = A110668 n

end A110668

/-!
# A110669: Sequence is {a(4,n)}, where a(m,n) is defined at sequence A110665.

The programs for A110669, the canonical program `A110669.P12197349605306349310` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110669 has offset 0).

The definition of A110669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110669.P5666679793880872064

`∑[∑[∑[∑[n*round(cos(n%6))]]]]`
-/

namespace A110669.P5666679793880872064
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * SequenceMachineLib.roundAway (Real.cos ((n % 6 : ℕ) : ℝ))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110669.P5666679793880872064

namespace A110669

/-- `∑[∑[∑[∑[n*round(cos(n%6))]]]]` -/
def P5666679793880872064.Spec : Prop :=
  ∀ n, P5666679793880872064.a n = A110669 n

end A110669

/-! ## A110669.P12197349605306349310

`∑[∑[∑[∑[n*∑[a(n-1)-a(n-2)]]]]]` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A110669

/-- `∑[∑[∑[∑[n*∑[a(n-1)-a(n-2)]]]]]` -/
def P12197349605306349310.Spec : Prop :=
  ∀ n, P12197349605306349310.a n = A110669 n

theorem P12197349605306349310.correct : P12197349605306349310.Spec := by
  intro n
  simp only [A110669]

end A110669

/-! ## A110669.P10913066754731658029

`∑[A110668(n)]`
-/

namespace A110669.P10913066754731658029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110669.P10913066754731658029

namespace A110669

/-- `∑[A110668(n)]` -/
def P10913066754731658029.Spec : Prop :=
  ∀ n, P10913066754731658029.a n = A110669 n

end A110669

/-! ## A110669.P8059947484857489767

`∑[∑[A110667(n)]]`
-/

namespace A110669.P8059947484857489767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110667 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110669.P8059947484857489767

namespace A110669

/-- `∑[∑[A110667(n)]]` -/
def P8059947484857489767.Spec : Prop :=
  ∀ n, P8059947484857489767.a n = A110669 n

end A110669

/-! ## A110669.P13868216414212396338

`∑[∑[∑[A110666(n)]]]`
-/

namespace A110669.P13868216414212396338
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110666 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110669.P13868216414212396338

namespace A110669

/-- `∑[∑[∑[A110666(n)]]]` -/
def P13868216414212396338.Spec : Prop :=
  ∀ n, P13868216414212396338.a n = A110669 n

end A110669

/-! ## A110669.P17897230694594462763

`A110670(n+1)-(A110670(n)+A110668(n+1))`
-/

namespace A110669.P17897230694594462763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110670 (n + 1) - (A110670 n + A110668 (n + 1))

end

end A110669.P17897230694594462763

namespace A110669

/-- `A110670(n+1)-(A110670(n)+A110668(n+1))` -/
def P17897230694594462763.Spec : Prop :=
  ∀ n, P17897230694594462763.a n = A110669 n

end A110669

/-!
# A110670: Sequence is {a(5,n)}, where a(m,n) is defined at sequence A110665.

The programs for A110670, the canonical program `A110670.P4000988478831837358` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110670 has offset 0).

The definition of A110670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110670.P12488647227920897605

`∑[∑[∑[∑[∑[n*round(cos(n%6))]]]]]`
-/

namespace A110670.P12488647227920897605
noncomputable section

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * SequenceMachineLib.roundAway (Real.cos ((n % 6 : ℕ) : ℝ))

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110670.P12488647227920897605

namespace A110670

/-- `∑[∑[∑[∑[∑[n*round(cos(n%6))]]]]]` -/
def P12488647227920897605.Spec : Prop :=
  ∀ n, P12488647227920897605.a n = A110670 n

end A110670

/-! ## A110670.P4000988478831837358

`∑[A110669(n)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A110670

/-- `∑[A110669(n)]` -/
def P4000988478831837358.Spec : Prop :=
  ∀ n, P4000988478831837358.a n = A110670 n

theorem P4000988478831837358.correct : P4000988478831837358.Spec := by
  intro n
  simp only [A110670]

end A110670

/-! ## A110670.P10501931790658449667

`∑[∑[A110668(n)]]`
-/

namespace A110670.P10501931790658449667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110668 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110670.P10501931790658449667

namespace A110670

/-- `∑[∑[A110668(n)]]` -/
def P10501931790658449667.Spec : Prop :=
  ∀ n, P10501931790658449667.a n = A110670 n

end A110670

/-! ## A110670.P3029821660260111477

`∑[∑[∑[A110667(n)]]]`
-/

namespace A110670.P3029821660260111477
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110667 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110670.P3029821660260111477

namespace A110670

/-- `∑[∑[∑[A110667(n)]]]` -/
def P3029821660260111477.Spec : Prop :=
  ∀ n, P3029821660260111477.a n = A110670 n

end A110670

/-! ## A110670.P5883843336683936937

`∑[∑[∑[∑[A110666(n)]]]]`
-/

namespace A110670.P5883843336683936937
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110666 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110670.P5883843336683936937

namespace A110670

/-- `∑[∑[∑[∑[A110666(n)]]]]` -/
def P5883843336683936937.Spec : Prop :=
  ∀ n, P5883843336683936937.a n = A110670 n

end A110670

/-! ## A110670.P9018079222391115509

`A110671(n+1)-(A110671(n)+A110669(n+1))`
-/

namespace A110670.P9018079222391115509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110671 (n + 1) - (A110671 n + A110669 (n + 1))

end

end A110670.P9018079222391115509

namespace A110670

/-- `A110671(n+1)-(A110671(n)+A110669(n+1))` -/
def P9018079222391115509.Spec : Prop :=
  ∀ n, P9018079222391115509.a n = A110670 n

end A110670

/-!
# A110671: Sequence is {a(6,n)}, where a(m,n) is defined at sequence A110665.

The programs for A110671, the canonical program `A110671.P14702464879593556510` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110671 has offset 0).

The definition of A110671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110671.P14702464879593556510

`∑[A110670(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A110671

/-- `∑[A110670(n)]` -/
def P14702464879593556510.Spec : Prop :=
  ∀ n, P14702464879593556510.a n = A110671 n

theorem P14702464879593556510.correct : P14702464879593556510.Spec := by
  intro n
  simp only [A110671]

end A110671

/-! ## A110671.P12202237798072103598

`∑[∑[A110669(n)]]`
-/

namespace A110671.P12202237798072103598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110669 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110671.P12202237798072103598

namespace A110671

/-- `∑[∑[A110669(n)]]` -/
def P12202237798072103598.Spec : Prop :=
  ∀ n, P12202237798072103598.a n = A110671 n

end A110671

/-! ## A110671.P12130081690284085488

`∑[∑[∑[A110668(n)]]]`
-/

namespace A110671.P12130081690284085488
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110671.P12130081690284085488

namespace A110671

/-- `∑[∑[∑[A110668(n)]]]` -/
def P12130081690284085488.Spec : Prop :=
  ∀ n, P12130081690284085488.a n = A110671 n

end A110671

/-! ## A110671.P7843098465896526991

`∑[∑[∑[∑[A110667(n)]]]]`
-/

namespace A110671.P7843098465896526991
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110667 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110671.P7843098465896526991

namespace A110671

/-- `∑[∑[∑[∑[A110667(n)]]]]` -/
def P7843098465896526991.Spec : Prop :=
  ∀ n, P7843098465896526991.a n = A110671 n

end A110671

/-! ## A110671.P6746703140726957002

`∑[∑[∑[∑[∑[A110666(n)]]]]]`
-/

namespace A110671.P6746703140726957002
noncomputable section

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110666 n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110671.P6746703140726957002

namespace A110671

/-- `∑[∑[∑[∑[∑[A110666(n)]]]]]` -/
def P6746703140726957002.Spec : Prop :=
  ∀ n, P6746703140726957002.a n = A110671 n

end A110671

/-! ## A110671.P7521299137651344467

`A110672(n+1)-(A110672(n)+A110670(n+1))`
-/

namespace A110671.P7521299137651344467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110672 (n + 1) - (A110672 n + A110670 (n + 1))

end

end A110671.P7521299137651344467

namespace A110671

/-- `A110672(n+1)-(A110672(n)+A110670(n+1))` -/
def P7521299137651344467.Spec : Prop :=
  ∀ n, P7521299137651344467.a n = A110671 n

end A110671

/-!
# A110672: Sequence is {a(7,n)}, where a(m,n) is defined in sequence A110665.

The programs for A110672, the canonical program `A110672.P13064412979197654835` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110672 has offset 0).

The definition of A110672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110672.P13064412979197654835

`∑[A110671(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A110672

/-- `∑[A110671(n)]` -/
def P13064412979197654835.Spec : Prop :=
  ∀ n, P13064412979197654835.a n = A110672 n

theorem P13064412979197654835.correct : P13064412979197654835.Spec := by
  intro n
  simp only [A110672]

end A110672

/-! ## A110672.P1699483492049986493

`∑[∑[A110670(n)]]`
-/

namespace A110672.P1699483492049986493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110670 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110672.P1699483492049986493

namespace A110672

/-- `∑[∑[A110670(n)]]` -/
def P1699483492049986493.Spec : Prop :=
  ∀ n, P1699483492049986493.a n = A110672 n

end A110672

/-! ## A110672.P3849875795929471520

`∑[∑[∑[A110669(n)]]]`
-/

namespace A110672.P3849875795929471520
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110669 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110672.P3849875795929471520

namespace A110672

/-- `∑[∑[∑[A110669(n)]]]` -/
def P3849875795929471520.Spec : Prop :=
  ∀ n, P3849875795929471520.a n = A110672 n

end A110672

/-! ## A110672.P15124299181769454045

`∑[∑[∑[∑[A110668(n)]]]]`
-/

namespace A110672.P15124299181769454045
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110668 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110672.P15124299181769454045

namespace A110672

/-- `∑[∑[∑[∑[A110668(n)]]]]` -/
def P15124299181769454045.Spec : Prop :=
  ∀ n, P15124299181769454045.a n = A110672 n

end A110672

/-! ## A110672.P15021458253476578608

`∑[∑[∑[∑[∑[A110667(n)]]]]]`
-/

namespace A110672.P15021458253476578608
noncomputable section

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110667 n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110672.P15021458253476578608

namespace A110672

/-- `∑[∑[∑[∑[∑[A110667(n)]]]]]` -/
def P15021458253476578608.Spec : Prop :=
  ∀ n, P15021458253476578608.a n = A110672 n

end A110672

/-!
# A110673: Numbers that are neither the sum nor the difference of two primes.

The programs for A110673, the canonical program `A110673.P14259157740145629283` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110673 has offset 1).

The definition of A110673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7597 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110673.P5846222705969209679

`∪[A099019(n+1), A134797(n+1)]`
-/

namespace A110673.P5846222705969209679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A110673.P5846222705969209679

namespace A110673

/-- `∪[A099019(n+1), A134797(n+1)]` -/
def P5846222705969209679.Spec : Prop :=
  ∀ n, (P5846222705969209679.a n : ℤ) = A110673 (n + 1)

end A110673

/-! ## A110673.P14259157740145629283

`∩[A007921(n+1), A014076(n+1)+2]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A110673

/-- `∩[A007921(n+1), A014076(n+1)+2]` -/
def P14259157740145629283.Spec : Prop :=
  ∀ n, (P14259157740145629283.a n : ℤ) = A110673 (n + 1)

theorem P14259157740145629283.correct : P14259157740145629283.Spec := by
  intro n
  simp only [A110673, Nat.add_sub_cancel]

end A110673

/-! ## A110673.P10342455763387455114

`∩[A007921(n+1), A071904(n+1)+2]`
-/

namespace A110673.P10342455763387455114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110673.P10342455763387455114

namespace A110673

/-- `∩[A007921(n+1), A071904(n+1)+2]` -/
def P10342455763387455114.Spec : Prop :=
  ∀ n, (P10342455763387455114.a n : ℤ) = A110673 (n + 1)

end A110673

/-! ## A110673.P17493646939634758020

`∩[A007921(n+1), A014092(n+1)]`
-/

namespace A110673.P17493646939634758020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110673.P17493646939634758020

namespace A110673

/-- `∩[A007921(n+1), A014092(n+1)]` -/
def P17493646939634758020.Spec : Prop :=
  ∀ n, (P17493646939634758020.a n : ℤ) = A110673 (n + 1)

end A110673

/-! ## A110673.P11274464788802095281

`∩[A014092(n+1), A071904(n+1)-2]`
-/

namespace A110673.P11274464788802095281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110673.P11274464788802095281

namespace A110673

/-- `∩[A014092(n+1), A071904(n+1)-2]` -/
def P11274464788802095281.Spec : Prop :=
  ∀ n, (P11274464788802095281.a n : ℤ) = A110673 (n + 1)

end A110673

/-! ## A110673.P17129634178104877973

`∩[A007921(n+1), A166081(n+1)]`
-/

namespace A110673.P17129634178104877973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110673.P17129634178104877973

namespace A110673

/-- `∩[A007921(n+1), A166081(n+1)]` -/
def P17129634178104877973.Spec : Prop :=
  ∀ n, (P17129634178104877973.a n : ℤ) = A110673 (n + 1)

end A110673

/-! ## A110673.P13503236891442032617

`∩[A007921(n+1), A039769(n+1)+2]`
-/

namespace A110673.P13503236891442032617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039769 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110673.P13503236891442032617

namespace A110673

/-- `∩[A007921(n+1), A039769(n+1)+2]` -/
def P13503236891442032617.Spec : Prop :=
  ∀ n, (P13503236891442032617.a n : ℤ) = A110673 (n + 1)

end A110673

/-! ## A110673.P5571434777962874997

`∩[A014092(n+1), A039769(n+1)-2]`
-/

namespace A110673.P5571434777962874997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039769 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110673.P5571434777962874997

namespace A110673

/-- `∩[A014092(n+1), A039769(n+1)-2]` -/
def P5571434777962874997.Spec : Prop :=
  ∀ n, (P5571434777962874997.a n : ℤ) = A110673 (n + 1)

end A110673

/-! ## A110673.P6051012271944458626

`∩[A007921(n+1), A058957(n+1)+2]`
-/

namespace A110673.P6051012271944458626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058957 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110673.P6051012271944458626

namespace A110673

/-- `∩[A007921(n+1), A058957(n+1)+2]` -/
def P6051012271944458626.Spec : Prop :=
  ∀ n, (P6051012271944458626.a n : ℤ) = A110673 (n + 1)

end A110673

/-! ## A110673.P17959995222633035879

`∩[A014092(n+1), A058957(n+1)-2]`
-/

namespace A110673.P17959995222633035879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058957 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110673.P17959995222633035879

namespace A110673

/-- `∩[A014092(n+1), A058957(n+1)-2]` -/
def P17959995222633035879.Spec : Prop :=
  ∀ n, (P17959995222633035879.a n : ℤ) = A110673 (n + 1)

end A110673

/-! ## A110673.P14458363422374855199

`∩[A007921(n+1), A079364(n+1)+2]`
-/

namespace A110673.P14458363422374855199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079364 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110673.P14458363422374855199

namespace A110673

/-- `∩[A007921(n+1), A079364(n+1)+2]` -/
def P14458363422374855199.Spec : Prop :=
  ∀ n, (P14458363422374855199.a n : ℤ) = A110673 (n + 1)

end A110673

/-! ## A110673.P7505190785017332587

`∩[A014092(n+1), A079364(n+1)-2]`
-/

namespace A110673.P7505190785017332587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079364 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110673.P7505190785017332587

namespace A110673

/-- `∩[A014092(n+1), A079364(n+1)-2]` -/
def P7505190785017332587.Spec : Prop :=
  ∀ n, (P7505190785017332587.a n : ℤ) = A110673 (n + 1)

end A110673

/-! ## A110673.P5875380755113074308

`∩[A007921(n+1), A105441(n+1)+2]`
-/

namespace A110673.P5875380755113074308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110673.P5875380755113074308

namespace A110673

/-- `∩[A007921(n+1), A105441(n+1)+2]` -/
def P5875380755113074308.Spec : Prop :=
  ∀ n, (P5875380755113074308.a n : ℤ) = A110673 (n + 1)

end A110673

/-! ## A110673.P1910915226655683221

`∩[A005381(n+1)+1, A007921(n+1)]`
-/

namespace A110673.P1910915226655683221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110673.P1910915226655683221

namespace A110673

/-- `∩[A005381(n+1)+1, A007921(n+1)]` -/
def P1910915226655683221.Spec : Prop :=
  ∀ n, (P1910915226655683221.a n : ℤ) = A110673 (n + 1)

end A110673

/-! ## A110673.P12801194594777113195

`∩[A007921(n+1), A068780(n+1)+2]`
-/

namespace A110673.P12801194594777113195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110673.P12801194594777113195

namespace A110673

/-- `∩[A007921(n+1), A068780(n+1)+2]` -/
def P12801194594777113195.Spec : Prop :=
  ∀ n, (P12801194594777113195.a n : ℤ) = A110673 (n + 1)

end A110673

/-! ## A110673.P1037992252245563591

`∩[A014092(n+1), A068780(n+1)-1]`
-/

namespace A110673.P1037992252245563591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110673.P1037992252245563591

namespace A110673

/-- `∩[A014092(n+1), A068780(n+1)-1]` -/
def P1037992252245563591.Spec : Prop :=
  ∀ n, (P1037992252245563591.a n : ℤ) = A110673 (n + 1)

end A110673

/-! ## A110673.P16703348723606738182

`∩[A005381(n+1)-2, A014092(n+1)]`
-/

namespace A110673.P16703348723606738182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110673.P16703348723606738182

namespace A110673

/-- `∩[A005381(n+1)-2, A014092(n+1)]` -/
def P16703348723606738182.Spec : Prop :=
  ∀ n, (P16703348723606738182.a n : ℤ) = A110673 (n + 1)

end A110673

/-! ## A110673.P15735733591644188170

`∩[A007921(n+1), A009188(n+1)+2]`
-/

namespace A110673.P15735733591644188170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110673.P15735733591644188170

namespace A110673

/-- `∩[A007921(n+1), A009188(n+1)+2]` -/
def P15735733591644188170.Spec : Prop :=
  ∀ n, (P15735733591644188170.a n : ℤ) = A110673 (n + 1)

end A110673

/-! ## A110673.P16958015506004626889

`∩[A014092(n+1), A061837(n+1)]`
-/

namespace A110673.P16958015506004626889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110673.P16958015506004626889

namespace A110673

/-- `∩[A014092(n+1), A061837(n+1)]` -/
def P16958015506004626889.Spec : Prop :=
  ∀ n, (P16958015506004626889.a n : ℤ) = A110673 (n + 1)

end A110673

/-! ## A110673.P10059371979051254857

`∩[A061837(n+1), A166081(n+1)]`
-/

namespace A110673.P10059371979051254857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110673.P10059371979051254857

namespace A110673

/-- `∩[A061837(n+1), A166081(n+1)]` -/
def P10059371979051254857.Spec : Prop :=
  ∀ n, (P10059371979051254857.a n : ℤ) = A110673 (n + 1)

end A110673

/-!
# A110676: Number of prime factors with multiplicity of 1 + n^(n+1).

The programs for A110676, there is no canonical definition to state claims against.
-/

/-! ## A110676.P1335541078209064942

`A163107(A397439(n))`
-/

namespace A110676.P1335541078209064942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163107 (A397439 n).toNat

end

end A110676.P1335541078209064942

/-! ## A110676.P12731836432408649520

`A390085(A101085(n+3))`
-/

namespace A110676.P12731836432408649520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390085 (A101085 (n + 3)).toNat

end

end A110676.P12731836432408649520

/-! ## A110676.P3996173382696041694

`A380783(A140879(n+1))+floor(sqrt(n))`
-/

namespace A110676.P3996173382696041694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380783 (A140879 (n + 1)).toNat + (Nat.sqrt n : ℤ)

end

end A110676.P3996173382696041694

/-! ## A110676.P249237847073642917

`A046072(A014630(n+1))+A007302(n)`
-/

namespace A110676.P249237847073642917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046072 (A014630 (n + 1)).toNat + A007302 n

end

end A110676.P249237847073642917

/-! ## A110676.P12897961438096443495

`A238950(n+5)+A001221(A000085(n))`
-/

namespace A110676.P12897961438096443495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238950 (n + 5) + A001221 (A000085 n).toNat

end

end A110676.P12897961438096443495

/-!
# A110678: a(n) = -n^2 - n + 72.

The programs for A110678, the canonical program `A110678.P4952883351007044946` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110678 has offset 0).

The definition of A110678 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110678.P4952883351007044946

`72-n*(n+1)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A110678

/-- `72-n*(n+1)` -/
def P4952883351007044946.Spec : Prop :=
  ∀ n, P4952883351007044946.a n = A110678 n

theorem P4952883351007044946.correct : P4952883351007044946.Spec := by
  intro n
  simp only [A110678]

end A110678

/-! ## A110678.P7130445151297762576

`floor(a(n-1)-2*n)` with `a(0)=72`

`floor` is left out, it is the identity on integers.
-/

namespace A110678.P7130445151297762576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [72] fun n a =>
  a (n - 1) - (2 * n : ℤ)

end

end A110678.P7130445151297762576

namespace A110678

/-- `floor(a(n-1)-2*n)` -/
def P7130445151297762576.Spec : Prop :=
  ∀ n, P7130445151297762576.a n = A110678 n

theorem P7130445151297762576.correct : P7130445151297762576.Spec := by
  intro n
  induction n with
  | zero => simp [A110678, A110678.P7130445151297762576.a, A110678.P4952883351007044946.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A110678, Nat.add_sub_cancel, A110678.P7130445151297762576.a, A110678.P4952883351007044946.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A110678

/-! ## A110678.P1685863902111910703

`ceil(a(n-1)-2*n)` with `a(0)=72`

`ceil` is left out, it is the identity on integers.
-/

namespace A110678.P1685863902111910703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [72] fun n a =>
  a (n - 1) - (2 * n : ℤ)

end

end A110678.P1685863902111910703

namespace A110678

/-- `ceil(a(n-1)-2*n)` -/
def P1685863902111910703.Spec : Prop :=
  ∀ n, P1685863902111910703.a n = A110678 n

theorem P1685863902111910703.correct : P1685863902111910703.Spec := by
  intro n
  induction n with
  | zero => simp [A110678, A110678.P1685863902111910703.a, A110678.P4952883351007044946.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A110678, Nat.add_sub_cancel, A110678.P1685863902111910703.a, A110678.P4952883351007044946.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A110678

/-! ## A110678.P7388976016236644938

`round(a(n-1)-2*n)` with `a(0)=72`

`round` is left out, it is the identity on integers.
-/

namespace A110678.P7388976016236644938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [72] fun n a =>
  a (n - 1) - (2 * n : ℤ)

end

end A110678.P7388976016236644938

namespace A110678

/-- `round(a(n-1)-2*n)` -/
def P7388976016236644938.Spec : Prop :=
  ∀ n, P7388976016236644938.a n = A110678 n

theorem P7388976016236644938.correct : P7388976016236644938.Spec := by
  intro n
  induction n with
  | zero => simp [A110678, A110678.P7388976016236644938.a, A110678.P4952883351007044946.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A110678, Nat.add_sub_cancel, A110678.P7388976016236644938.a, A110678.P4952883351007044946.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A110678

/-! ## A110678.P13171634266061845205

`A020723(n)*A022964(n)`
-/

namespace A110678.P13171634266061845205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020723 n * A022964 n

end

end A110678.P13171634266061845205

namespace A110678

/-- `A020723(n)*A022964(n)` -/
def P13171634266061845205.Spec : Prop :=
  ∀ n, P13171634266061845205.a n = A110678 n

end A110678

/-! ## A110678.P9261319471995274253

`(A022965(n+1)+2*n+1)*A022965(n+1)`
-/

namespace A110678.P9261319471995274253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022965 (n + 1) + (2 * n + 1 : ℤ)) * A022965 (n + 1)

end

end A110678.P9261319471995274253

namespace A110678

/-- `(A022965(n+1)+2*n+1)*A022965(n+1)` -/
def P9261319471995274253.Spec : Prop :=
  ∀ n, P9261319471995274253.a n = A110678 n

end A110678

/-! ## A110678.P460871936046531782

`2*A022992(∑[n])`
-/

namespace A110678.P460871936046531782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022992 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110678.P460871936046531782

namespace A110678

/-- `2*A022992(∑[n])` -/
def P460871936046531782.Spec : Prop :=
  ∀ n, P460871936046531782.a n = A110678 n

end A110678

/-! ## A110678.P3373727519608697944

`2*A022996(A145018(n+1))`
-/

namespace A110678.P3373727519608697944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022996 (A145018 (n + 1)).toNat

end

end A110678.P3373727519608697944

namespace A110678

/-- `2*A022996(A145018(n+1))` -/
def P3373727519608697944.Spec : Prop :=
  ∀ n, P3373727519608697944.a n = A110678 n

end A110678

/-!
# A110679: a(n+3) = 3*a(n+2) + 5*a(n+1) + a(n), a(0) = 1, a(1) = 2, a(2) = 11.

The programs for A110679, the canonical program `A110679.P9204336717483909715` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110679 has offset 0).

The definition of A110679 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110679.P9204336717483909715

`3*a(n-1)+5*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=11`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A110679

/-- `3*a(n-1)+5*a(n-2)+a(n-3)` -/
def P9204336717483909715.Spec : Prop :=
  ∀ n, (P9204336717483909715.a n : ℤ) = A110679 n

theorem P9204336717483909715.correct : P9204336717483909715.Spec := by
  intro n
  simp only [A110679]

end A110679

/-! ## A110679.P14490918255468400655

`A110526(n+1)-A110526(n)`
-/

namespace A110679.P14490918255468400655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110526 (n + 1) - A110526 n

end

end A110679.P14490918255468400655

namespace A110679

/-- `A110526(n+1)-A110526(n)` -/
def P14490918255468400655.Spec : Prop :=
  ∀ n, P14490918255468400655.a n = A110679 n

end A110679

/-! ## A110679.P14727809974778834539

`∑[A140413(n)]`
-/

namespace A110679.P14727809974778834539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110679.P14727809974778834539

namespace A110679

/-- `∑[A140413(n)]` -/
def P14727809974778834539.Spec : Prop :=
  ∀ n, P14727809974778834539.a n = A110679 n

end A110679

/-! ## A110679.P15670250245277806973

`Δ[A110526(n)]`
-/

namespace A110679.P15670250245277806973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110679.P15670250245277806973

namespace A110679

/-- `Δ[A110526(n)]` -/
def P15670250245277806973.Spec : Prop :=
  ∀ n, P15670250245277806973.a n = A110679 n

end A110679

/-! ## A110679.P8597493237829964069

`∑[A008346(3*n)]`
-/

namespace A110679.P8597493237829964069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110679.P8597493237829964069

namespace A110679

/-- `∑[A008346(3*n)]` -/
def P8597493237829964069.Spec : Prop :=
  ∀ n, P8597493237829964069.a n = A110679 n

end A110679

/-! ## A110679.P4807508170749977473

`∑[A141325(3*n)]`
-/

namespace A110679.P4807508170749977473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141325 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110679.P4807508170749977473

namespace A110679

/-- `∑[A141325(3*n)]` -/
def P4807508170749977473.Spec : Prop :=
  ∀ n, P4807508170749977473.a n = A110679 n

end A110679

/-! ## A110679.P1074655649015204422

`A005252(3*n+1)`
-/

namespace A110679.P1074655649015204422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005252 (3 * n + 1)

end

end A110679.P1074655649015204422

namespace A110679

/-- `A005252(3*n+1)` -/
def P1074655649015204422.Spec : Prop :=
  ∀ n, P1074655649015204422.a n = A110679 n

end A110679

/-! ## A110679.P10337033081113581002

`A174618(6*n+4)`
-/

namespace A110679.P10337033081113581002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (6 * n + 4)

end

end A110679.P10337033081113581002

namespace A110679

/-- `A174618(6*n+4)` -/
def P10337033081113581002.Spec : Prop :=
  ∀ n, P10337033081113581002.a n = A110679 n

end A110679

/-! ## A110679.P1693346947497589424

`Δ[ceil(A049651(n)/2)]`
-/

namespace A110679.P1693346947497589424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A049651 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110679.P1693346947497589424

namespace A110679

/-- `Δ[ceil(A049651(n)/2)]` -/
def P1693346947497589424.Spec : Prop :=
  ∀ n, P1693346947497589424.a n = A110679 n

end A110679

/-! ## A110679.P9364328500004815948

`A293014(3*(n+1)+1)`
-/

namespace A110679.P9364328500004815948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293014 (3 * (n + 1) + 1)

end

end A110679.P9364328500004815948

namespace A110679

/-- `A293014(3*(n+1)+1)` -/
def P9364328500004815948.Spec : Prop :=
  ∀ n, P9364328500004815948.a n = A110679 n

end A110679

/-! ## A110679.P8710057179740174871

`A033887(n)-a(n-1)` with `a(0)=1`
-/

namespace A110679.P8710057179740174871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033887 n - a (n - 1)

end

end A110679.P8710057179740174871

namespace A110679

/-- `A033887(n)-a(n-1)` -/
def P8710057179740174871.Spec : Prop :=
  ∀ n, P8710057179740174871.a n = A110679 n

end A110679

/-! ## A110679.P814047540777529637

`∑[or(2, A000045(3*n))-1]`
-/

namespace A110679.P814047540777529637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A000045 (3 * n)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110679.P814047540777529637

namespace A110679

/-- `∑[or(2, A000045(3*n))-1]` -/
def P814047540777529637.Spec : Prop :=
  ∀ n, P814047540777529637.a n = A110679 n

end A110679

/-! ## A110679.P8822599081435183568

`∑[A290968(2*n+n+2)]`
-/

namespace A110679.P8822599081435183568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290968 (2 * n + (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110679.P8822599081435183568

namespace A110679

/-- `∑[A290968(2*n+n+2)]` -/
def P8822599081435183568.Spec : Prop :=
  ∀ n, P8822599081435183568.a n = A110679 n

end A110679

/-! ## A110679.P1420304283199110805

`A107857(2*(n+1))-and(1, n)`
-/

namespace A110679.P1420304283199110805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107857 (2 * (n + 1)) - (Nat.land 1 n : ℤ)

end

end A110679.P1420304283199110805

namespace A110679

/-- `A107857(2*(n+1))-and(1, n)` -/
def P1420304283199110805.Spec : Prop :=
  ∀ n, P1420304283199110805.a n = A110679 n

end A110679

/-! ## A110679.P7441793762725925845

`A014437(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A110679.P7441793762725925845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014437 (2 * n) - a (n - 1)

end

end A110679.P7441793762725925845

namespace A110679

/-- `A014437(2*n)-a(n-1)` -/
def P7441793762725925845.Spec : Prop :=
  ∀ n, P7441793762725925845.a n = A110679 n

end A110679

/-! ## A110679.P17172338152997196099

`A000045(3*n+1)-a(n-1)` with `a(0)=1`
-/

namespace A110679.P17172338152997196099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (3 * n + 1) - a (n - 1)

end

end A110679.P17172338152997196099

namespace A110679

/-- `A000045(3*n+1)-a(n-1)` -/
def P17172338152997196099.Spec : Prop :=
  ∀ n, P17172338152997196099.a n = A110679 n

end A110679

/-! ## A110679.P13754263480529085683

`∑[A000045(2*n+n)]+and(1, n+1)`
-/

namespace A110679.P13754263480529085683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.land 1 (n + 1) : ℤ)

end

end A110679.P13754263480529085683

namespace A110679

/-- `∑[A000045(2*n+n)]+and(1, n+1)` -/
def P13754263480529085683.Spec : Prop :=
  ∀ n, P13754263480529085683.a n = A110679 n

end A110679

/-! ## A110679.P5539192216902178677

`A102129(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A110679.P5539192216902178677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A102129 n - (a (n - 1) + a (n - 1))

end

end A110679.P5539192216902178677

namespace A110679

/-- `A102129(n)-(a(n-1)+a(n-1))` -/
def P5539192216902178677.Spec : Prop :=
  ∀ n, P5539192216902178677.a n = A110679 n

end A110679

/-! ## A110679.P9535006443923153824

`A000071(3*n+1)+1-a(n-1)` with `a(0)=1`
-/

namespace A110679.P9535006443923153824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000071 (3 * n + 1) + (1 - a (n - 1))

end

end A110679.P9535006443923153824

namespace A110679

/-- `A000071(3*n+1)+1-a(n-1)` -/
def P9535006443923153824.Spec : Prop :=
  ∀ n, P9535006443923153824.a n = A110679 n

end A110679

/-!
# A110681: A convolution triangle of numbers based on A071356.

The programs for A110681, there is no canonical definition to state claims against.
-/

/-! ## A110681.P16114027994556479864

`A130696(A054335(n)+1)`
-/

namespace A110681.P16114027994556479864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130696 (A054335 n + 1).toNat

end

end A110681.P16114027994556479864

/-! ## A110681.P13235768500500206815

`A054335(n)+A010893(A119502(n))`
-/

namespace A110681.P13235768500500206815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054335 n + A010893 ((A119502 n).toNat + 13)

end

end A110681.P13235768500500206815

/-! ## A110681.P9129255624211222000

`A342376(A342342(n))+A054335(n)`
-/

namespace A110681.P9129255624211222000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342376 (A342342 n).toNat + A054335 n

end

end A110681.P9129255624211222000

/-! ## A110681.P5990114923207057894

`A342376(A342342(n))+A205813(A014132(n+1))`
-/

namespace A110681.P5990114923207057894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342376 (A342342 n).toNat + A205813 (A014132 (n + 1)).toNat

end

end A110681.P5990114923207057894

/-! ## A110681.P724159308776754558

`A124762(A054335(n+2))+A054335(n)`
-/

namespace A110681.P724159308776754558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A054335 (n + 2)).toNat + A054335 n

end

end A110681.P724159308776754558

/-!
# A110682: A convolution triangle of numbers based on A027307.

The programs for A110682, there is no canonical definition to state claims against.
-/

/-! ## A110682.P17190502675499632666

`A071949(∑[2*n]%comp[∑[n]])`
-/

namespace A110682.P17190502675499632666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071949 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A110682.P17190502675499632666

/-! ## A110682.P5972977927863577468

`A071949(∑[char[∑[n]]]²-(n+1))`
-/

namespace A110682.P5972977927863577468
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071949 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A110682.P5972977927863577468

/-! ## A110682.P5601110956652202931

`xor(1, xor(1, A071949(A061579(n))))`
-/

namespace A110682.P5601110956652202931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A071949 (A061579 n).toNat))

end

end A110682.P5601110956652202931

/-! ## A110682.P15130610819107918617

`gcd(A000038(n), A071949(A061579(n)))`
-/

namespace A110682.P15130610819107918617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A071949 (A061579 n).toNat)

end

end A110682.P15130610819107918617

/-! ## A110682.P4879191697858299452

`lcm(A020985(n), A071949(A061579(n)))`
-/

namespace A110682.P4879191697858299452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A071949 (A061579 n).toNat)

end

end A110682.P4879191697858299452

/-! ## A110682.P10502912702065719068

`or(A000007(n), A071949(A061579(n)))`
-/

namespace A110682.P10502912702065719068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A071949 (A061579 n).toNat)

end

end A110682.P10502912702065719068

/-!
# A110683: Expansion of (7*x^2+3*x-1)*(2*x^2+2*x+1)/((x-1)*(3*x^2+3*x+1)*(2*x^3+2*x^2+4*x+1)).

The programs for A110683, there is no canonical definition to state claims against.
-/

/-! ## A110683.P4787620967069738022

`∑[A110687(n)]`
-/

namespace A110683.P4787620967069738022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110683.P4787620967069738022

/-!
# A110684: Expansion of (-1-8*x-12*x^2-4*x^3+4*x^4) / ((x-1)*(3*x^2+3*x+1)*(2*x^3+2*x^2+4*x+1)).

The programs for A110684, there is no canonical definition to state claims against.
-/

/-! ## A110684.P11944060774291690585

`1-A342624(A301424(n+1))`
-/

namespace A110684.P11944060774291690585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A342624 (A301424 (n + 1)).toNat

end

end A110684.P11944060774291690585

/-!
# A110686: Expansion of (2*x+1)*(4*x^2+8*x+1) / ((x-1)*(3*x^2+3*x+1)*(2*x^3+2*x^2+4*x+1)).

The programs for A110686, there is no canonical definition to state claims against.
-/

/-! ## A110686.P12391461043118058685

`∑[-A110689(n)]`
-/

namespace A110686.P12391461043118058685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A110689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110686.P12391461043118058685

/-! ## A110686.P7386952772401436360

`A000217(n)-∑[A110689(n)+n]`
-/

namespace A110686.P7386952772401436360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110689 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110686.P7386952772401436360

/-! ## A110686.P6832960790121324578

`∑[char[A156814(n+1)]-A110689(n)]`
-/

namespace A110686.P6832960790121324578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156814 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A110689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110686.P6832960790121324578

/-! ## A110686.P2282374382397825134

`∑[A007814(2*n+1)-A110689(n)]`
-/

namespace A110686.P2282374382397825134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 1) - A110689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110686.P2282374382397825134

/-! ## A110686.P17216430803783947562

`∑[A008683(A007918(n))*A110689(n)]`
-/

namespace A110686.P17216430803783947562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007918 n).toNat * A110689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110686.P17216430803783947562

/-! ## A110686.P18058618291203074907

`∑[A110689(n)]*A008683(A151800(n))`
-/

namespace A110686.P18058618291203074907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A008683 (A151800 n).toNat

end

end A110686.P18058618291203074907

/-! ## A110686.P3414172014621010734

`∑[A329639(A001747(n+1))-A110689(n)]`
-/

namespace A110686.P3414172014621010734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329639 (A001747 (n + 1)).toNat - A110689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110686.P3414172014621010734

/-! ## A110686.P3132271278366022009

`A110689(n+1)-(∑[A110689(n+1)]+1)`
-/

namespace A110686.P3132271278366022009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110689 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A110686.P3132271278366022009

/-!
# A110687: Expansion of -(7*x^2+3*x-1)*(2*x^2+2*x+1) / ((3*x^2+3*x+1)*(2*x^3+2*x^2+4*x+1)).

The programs for A110687, there is no canonical definition to state claims against.
-/

/-! ## A110687.P6958480994080929175

`Δ[A110683(n-1)+a((4*n)%2)]` with `a(0)=5, a(1)=6`
-/

namespace A110687.P6958480994080929175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 6] fun n f1 =>
  A110683 (n - 1) + f1 (4 * n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110687.P6958480994080929175

/-!
# A110694: Kekulé numbers for certain benzenoids.

The programs for A110694, the canonical program `A110694.P8426452220887507948` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110694 has offset 0).

The definition of A110694 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110694.P8426452220887507948

`A000292(n+1)*A145126(n+1)-A145129(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A110694

/-- `A000292(n+1)*A145126(n+1)-A145129(n)` -/
def P8426452220887507948.Spec : Prop :=
  ∀ n, P8426452220887507948.a n = A110694 n

theorem P8426452220887507948.correct : P8426452220887507948.Spec := by
  intro n
  simp only [A110694]

end A110694

/-!
# A110695: Kekulé numbers for certain benzenoids of trigonal symmetry.

The programs for A110695, there is no canonical definition to state claims against.
-/

/-! ## A110695.P10410178449768380060

`A005898(C(2*n, n)-1)`
-/

namespace A110695.P10410178449768380060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 (Nat.choose (2 * n) n - 1)

end

end A110695.P10410178449768380060

/-! ## A110695.P7796669230153985209

`floor(floor(A173961(C(2*n, n))/2)/2)`
-/

namespace A110695.P7796669230153985209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A173961 (Nat.choose (2 * n) n) : ℚ) / 2⌋ : ℚ) / 2⌋

end

end A110695.P7796669230153985209

/-! ## A110695.P3032073627150566114

`A213389(A134760(n))`
-/

namespace A110695.P3032073627150566114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213389 (A134760 n).toNat

end

end A110695.P3032073627150566114

/-! ## A110695.P1668884391740735335

`A005898(A000984(n)-1)`
-/

namespace A110695.P1668884391740735335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 (A000984 n - 1).toNat

end

end A110695.P1668884391740735335

/-!
# A110696: Kekulé numbers for certain benzenoids of trigonal symmetry.

The programs for A110696, there is no canonical definition to state claims against.
-/

/-! ## A110696.P16055334458253952786

`A192736(A134762(n))`
-/

namespace A110696.P16055334458253952786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192736 (A134762 n).toNat

end

end A110696.P16055334458253952786

/-!
# A110697: Kekulé numbers for certain benzenoids of trigonal symmetry.

The programs for A110697, there is no canonical definition to state claims against.
-/

/-! ## A110697.P5652626626440311178

`A105125(2*A002894(n))`
-/

namespace A110697.P5652626626440311178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105125 (2 * A002894 n).toNat

end

end A110697.P5652626626440311178

/-!
# A110699: Binary length of the smallest prime with Hamming weight n (given by A061712).

The programs for A110699, there is no canonical definition to state claims against.
-/

/-! ## A110699.P17740018803797830678

`A110700(n+1)+1+n`
-/

namespace A110699.P17740018803797830678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110700 (n + 1) + 1 + (n : ℤ)

end

end A110699.P17740018803797830678

/-! ## A110699.P414169611472187663

`A020725(A110700(n+1)+n)`
-/

namespace A110699.P414169611472187663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A110700 (n + 1) + (n : ℤ)).toNat

end

end A110699.P414169611472187663

/-! ## A110699.P12235255515735161827

`floor(log2(A061712(n+1)))+1`
-/

namespace A110699.P12235255515735161827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A061712 (n + 1)).toNat + 1

end

end A110699.P12235255515735161827

/-! ## A110699.P14668287379631652481

`A020725(floor(log2(A061712(n+1))))`
-/

namespace A110699.P14668287379631652481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (Nat.log 2 (A061712 (n + 1)).toNat)

end

end A110699.P14668287379631652481

/-! ## A110699.P5402145149755554088

`ceil(A000007(n)+log2(A061712(n+1)))`
-/

namespace A110699.P5402145149755554088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000007 n : ℝ) + Real.logb 2 (A061712 (n + 1) : ℝ)⌉

end

end A110699.P5402145149755554088

/-! ## A110699.P10919512736325151579

`ceil(log2(A061712(n+1)-A000918(n)))`
-/

namespace A110699.P10919512736325151579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A061712 (n + 1) - A000918 n : ℝ)⌉

end

end A110699.P10919512736325151579

