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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A062501: Number of distinct prime divisors of the nonprimes (including 1).

The programs for A062501, the canonical program `A062501.P13013082678036744864` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062501 has offset 1).

The definition of A062501 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062501.P13013082678036744864

`A001221(A018252(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062501

/-- `A001221(A018252(n+1))` -/
def P13013082678036744864.Spec : Prop :=
  ∀ n, P13013082678036744864.a n = A062501 (n + 1)

theorem P13013082678036744864.correct : P13013082678036744864.Spec := by
  intro n
  simp only [A062501, Nat.add_sub_cancel]

end A062501

/-! ## A062501.P17699222349742151783

`A001221(Δ[A051349(n)])`
-/

namespace A062501.P17699222349742151783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A062501.P17699222349742151783

namespace A062501

/-- `A001221(Δ[A051349(n)])` -/
def P17699222349742151783.Spec : Prop :=
  ∀ n, P17699222349742151783.a n = A062501 (n + 1)

end A062501

/-! ## A062501.P4648994749884292076

`A001221(A083256(n+1))`
-/

namespace A062501.P4648994749884292076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A083256 (n + 1)).toNat

end

end A062501.P4648994749884292076

namespace A062501

/-- `A001221(A083256(n+1))` -/
def P4648994749884292076.Spec : Prop :=
  ∀ n, P4648994749884292076.a n = A062501 (n + 1)

end A062501

/-! ## A062501.P694440970636587192

`A001221(A083257(n+1))`
-/

namespace A062501.P694440970636587192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A083257 (n + 1)).toNat

end

end A062501.P694440970636587192

namespace A062501

/-- `A001221(A083257(n+1))` -/
def P694440970636587192.Spec : Prop :=
  ∀ n, P694440970636587192.a n = A062501 (n + 1)

end A062501

/-! ## A062501.P1125722842359178889

`A001221(A141468(n+2))`
-/

namespace A062501.P1125722842359178889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A141468 (n + 2)).toNat

end

end A062501.P1125722842359178889

namespace A062501

/-- `A001221(A141468(n+2))` -/
def P1125722842359178889.Spec : Prop :=
  ∀ n, P1125722842359178889.a n = A062501 (n + 1)

end A062501

/-! ## A062501.P6433888845379377817

`A001221(sqrt(A062312(n+1)))`
-/

namespace A062501.P6433888845379377817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway (Real.sqrt (A062312 (n + 1) : ℝ))).toNat

end

end A062501.P6433888845379377817

namespace A062501

/-- `A001221(sqrt(A062312(n+1)))` -/
def P6433888845379377817.Spec : Prop :=
  ∀ n, P6433888845379377817.a n = A062501 (n + 1)

end A062501

/-! ## A062501.P12578201342148561045

`A001221(∑[A054546(n+1)])`
-/

namespace A062501.P12578201342148561045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A062501.P12578201342148561045

namespace A062501

/-- `A001221(∑[A054546(n+1)])` -/
def P12578201342148561045.Spec : Prop :=
  ∀ n, P12578201342148561045.a n = A062501 (n + 1)

end A062501

/-! ## A062501.P12974771126329037579

`A001221(A166460(n+1)+1)`
-/

namespace A062501.P12974771126329037579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A166460 (n + 1) + 1).toNat

end

end A062501.P12974771126329037579

namespace A062501

/-- `A001221(A166460(n+1)+1)` -/
def P12974771126329037579.Spec : Prop :=
  ∀ n, P12974771126329037579.a n = A062501 (n + 1)

end A062501

/-! ## A062501.P7240284799924280491

`A001221(A222307(2*n+1))`
-/

namespace A062501.P7240284799924280491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A222307 (2 * n + 1)).toNat

end

end A062501.P7240284799924280491

namespace A062501

/-- `A001221(A222307(2*n+1))` -/
def P7240284799924280491.Spec : Prop :=
  ∀ n, P7240284799924280491.a n = A062501 (n + 1)

end A062501

/-! ## A062501.P16975285067072699354

`A001221(A073425(n)+1+n)`
-/

namespace A062501.P16975285067072699354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A073425 n + 1 + (n : ℤ)).toNat

end

end A062501.P16975285067072699354

namespace A062501

/-- `A001221(A073425(n)+1+n)` -/
def P16975285067072699354.Spec : Prop :=
  ∀ n, P16975285067072699354.a n = A062501 (n + 1)

end A062501

/-! ## A062501.P13171490075730065774

`∑{p}[A018252(n+1), A001222(#)]`
-/

namespace A062501.P13171490075730065774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A062501.P13171490075730065774

namespace A062501

/-- `∑{p}[A018252(n+1), A001222(#)]` -/
def P13171490075730065774.Spec : Prop :=
  ∀ n, P13171490075730065774.a n = A062501 (n + 1)

end A062501

/-! ## A062501.P18268535818000705407

`∑{p}[A018252(n+1), A010051(#)]`
-/

namespace A062501.P18268535818000705407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A010051 p

end

end A062501.P18268535818000705407

namespace A062501

/-- `∑{p}[A018252(n+1), A010051(#)]` -/
def P18268535818000705407.Spec : Prop :=
  ∀ n, P18268535818000705407.a n = A062501 (n + 1)

end A062501

/-! ## A062501.P2068013210459407905

`∑{p}[A018252(n+1), A023890(#)]`
-/

namespace A062501.P2068013210459407905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A023890 p

end

end A062501.P2068013210459407905

namespace A062501

/-- `∑{p}[A018252(n+1), A023890(#)]` -/
def P2068013210459407905.Spec : Prop :=
  ∀ n, P2068013210459407905.a n = A062501 (n + 1)

end A062501

/-! ## A062501.P13007215064287944263

`∑{p}[A018252(n+1), A083730(#)]`
-/

namespace A062501.P13007215064287944263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A083730 p

end

end A062501.P13007215064287944263

namespace A062501

/-- `∑{p}[A018252(n+1), A083730(#)]` -/
def P13007215064287944263.Spec : Prop :=
  ∀ n, P13007215064287944263.a n = A062501 (n + 1)

end A062501

/-! ## A062501.P15857191385297257317

`∑{p}[A018252(n+1), A302777(#)]`
-/

namespace A062501.P15857191385297257317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A302777 p

end

end A062501.P15857191385297257317

namespace A062501

/-- `∑{p}[A018252(n+1), A302777(#)]` -/
def P15857191385297257317.Spec : Prop :=
  ∀ n, P15857191385297257317.a n = A062501 (n + 1)

end A062501

/-! ## A062501.P4879663881409604606

`A001222(∏{p}[A018252(n+1), #])`
-/

namespace A062501.P4879663881409604606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A062501.P4879663881409604606

namespace A062501

/-- `A001222(∏{p}[A018252(n+1), #])` -/
def P4879663881409604606.Spec : Prop :=
  ∀ n, P4879663881409604606.a n = A062501 (n + 1)

end A062501

/-! ## A062501.P12277129131425318575

`∑{p}[A018252(n+1), abs(A008683(#))]`
-/

namespace A062501.P12277129131425318575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, |A008683 p|

end

end A062501.P12277129131425318575

namespace A062501

/-- `∑{p}[A018252(n+1), abs(A008683(#))]` -/
def P12277129131425318575.Spec : Prop :=
  ∀ n, P12277129131425318575.a n = A062501 (n + 1)

end A062501

/-! ## A062501.P15340790611418489677

`∑{p}[A018252(n+1), log2(A000005(#))]`
-/

namespace A062501.P15340790611418489677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Real.logb 2 (A000005 p : ℝ)

end

end A062501.P15340790611418489677

namespace A062501

/-- `∑{p}[A018252(n+1), log2(A000005(#))]` -/
def P15340790611418489677.Spec : Prop :=
  ∀ n, P15340790611418489677.a n = (A062501 (n + 1) : ℝ)

end A062501

/-! ## A062501.P186178610488203526

`∑{p}[comp[A006530(n+1)], A001221(#)]`
-/

namespace A062501.P186178610488203526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001221 p

end

end A062501.P186178610488203526

namespace A062501

/-- `∑{p}[comp[A006530(n+1)], A001221(#)]` -/
def P186178610488203526.Spec : Prop :=
  ∀ n, P186178610488203526.a n = A062501 (n + 1)

end A062501

/-! ## A062501.P70667472846619962

`∑{p}[comp[A006530(n+1)], A001222(#)]`
-/

namespace A062501.P70667472846619962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001222 p

end

end A062501.P70667472846619962

namespace A062501

/-- `∑{p}[comp[A006530(n+1)], A001222(#)]` -/
def P70667472846619962.Spec : Prop :=
  ∀ n, P70667472846619962.a n = A062501 (n + 1)

end A062501

/-!
# A062502: Number of prime divisors (with repetition) of the nonprimes (including 1).

The programs for A062502, the canonical program `A062502.P13690945609050823001` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062502 has offset 1).

The definition of A062502 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062502.P13690945609050823001

`A001222(A018252(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A062502

/-- `A001222(A018252(n+1))` -/
def P13690945609050823001.Spec : Prop :=
  ∀ n, P13690945609050823001.a n = A062502 (n + 1)

theorem P13690945609050823001.correct : P13690945609050823001.Spec := by
  intro n
  simp only [A062502, Nat.add_sub_cancel]

end A062502

/-! ## A062502.P14648569512263403891

`∑{e}[A083256(n+1), #]`
-/

namespace A062502.P14648569512263403891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083256 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A062502.P14648569512263403891

namespace A062502

/-- `∑{e}[A083256(n+1), #]` -/
def P14648569512263403891.Spec : Prop :=
  ∀ n, (P14648569512263403891.a n : ℤ) = A062502 (n + 1)

end A062502

/-! ## A062502.P14467853753880803559

`∑{e}[A083257(n+1), #]`
-/

namespace A062502.P14467853753880803559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083257 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A062502.P14467853753880803559

namespace A062502

/-- `∑{e}[A083257(n+1), #]` -/
def P14467853753880803559.Spec : Prop :=
  ∀ n, (P14467853753880803559.a n : ℤ) = A062502 (n + 1)

end A062502

/-! ## A062502.P15248231695691627389

`∑{e}[A141468(n+2), #]`
-/

namespace A062502.P15248231695691627389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A062502.P15248231695691627389

namespace A062502

/-- `∑{e}[A141468(n+2), #]` -/
def P15248231695691627389.Spec : Prop :=
  ∀ n, (P15248231695691627389.a n : ℤ) = A062502 (n + 1)

end A062502

/-! ## A062502.P18262910488498538801

`∑{e}[comp[A006530(n+1)], #]`
-/

namespace A062502.P18262910488498538801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A062502.P18262910488498538801

namespace A062502

/-- `∑{e}[comp[A006530(n+1)], #]` -/
def P18262910488498538801.Spec : Prop :=
  ∀ n, (P18262910488498538801.a n : ℤ) = A062502 (n + 1)

end A062502

/-! ## A062502.P3455972884222166169

`∑{e}[comp[A008578(n+1)], #]`
-/

namespace A062502.P3455972884222166169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A062502.P3455972884222166169

namespace A062502

/-- `∑{e}[comp[A008578(n+1)], #]` -/
def P3455972884222166169.Spec : Prop :=
  ∀ n, (P3455972884222166169.a n : ℤ) = A062502 (n + 1)

end A062502

/-! ## A062502.P14540860632616030652

`∑{e}[comp[A020639(n+1)], #]`
-/

namespace A062502.P14540860632616030652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A062502.P14540860632616030652

namespace A062502

/-- `∑{e}[comp[A020639(n+1)], #]` -/
def P14540860632616030652.Spec : Prop :=
  ∀ n, (P14540860632616030652.a n : ℤ) = A062502 (n + 1)

end A062502

/-! ## A062502.P6885905923136027836

`∑{e}[comp[A025473(n+1)], #]`
-/

namespace A062502.P6885905923136027836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A062502.P6885905923136027836

namespace A062502

/-- `∑{e}[comp[A025473(n+1)], #]` -/
def P6885905923136027836.Spec : Prop :=
  ∀ n, (P6885905923136027836.a n : ℤ) = A062502 (n + 1)

end A062502

/-! ## A062502.P15847883113894060605

`∑{e}[A222307(2*n+1), #]`
-/

namespace A062502.P15847883113894060605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A062502.P15847883113894060605

namespace A062502

/-- `∑{e}[A222307(2*n+1), #]` -/
def P15847883113894060605.Spec : Prop :=
  ∀ n, (P15847883113894060605.a n : ℤ) = A062502 (n + 1)

end A062502

/-! ## A062502.P5477994117405750632

`A001222(Δ[A051349(n)])`
-/

namespace A062502.P5477994117405750632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A062502.P5477994117405750632

namespace A062502

/-- `A001222(Δ[A051349(n)])` -/
def P5477994117405750632.Spec : Prop :=
  ∀ n, P5477994117405750632.a n = A062502 (n + 1)

end A062502

/-! ## A062502.P15516884612584161534

`A001222(A083256(n+1))`
-/

namespace A062502.P15516884612584161534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A083256 (n + 1)).toNat

end

end A062502.P15516884612584161534

namespace A062502

/-- `A001222(A083256(n+1))` -/
def P15516884612584161534.Spec : Prop :=
  ∀ n, P15516884612584161534.a n = A062502 (n + 1)

end A062502

/-! ## A062502.P10670833295286561333

`A001222(A083257(n+1))`
-/

namespace A062502.P10670833295286561333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A083257 (n + 1)).toNat

end

end A062502.P10670833295286561333

namespace A062502

/-- `A001222(A083257(n+1))` -/
def P10670833295286561333.Spec : Prop :=
  ∀ n, P10670833295286561333.a n = A062502 (n + 1)

end A062502

/-! ## A062502.P13119716484144952075

`A001222(A141468(n+2))`
-/

namespace A062502.P13119716484144952075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A141468 (n + 2)).toNat

end

end A062502.P13119716484144952075

namespace A062502

/-- `A001222(A141468(n+2))` -/
def P13119716484144952075.Spec : Prop :=
  ∀ n, P13119716484144952075.a n = A062502 (n + 1)

end A062502

/-! ## A062502.P8208840910094011838

`A001222(sqrt(A062312(n+1)))`
-/

namespace A062502.P8208840910094011838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (A062312 (n + 1) : ℝ))).toNat

end

end A062502.P8208840910094011838

namespace A062502

/-- `A001222(sqrt(A062312(n+1)))` -/
def P8208840910094011838.Spec : Prop :=
  ∀ n, P8208840910094011838.a n = A062502 (n + 1)

end A062502

/-! ## A062502.P5003040758735734630

`A001222(∑[A054546(n+1)])`
-/

namespace A062502.P5003040758735734630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A062502.P5003040758735734630

namespace A062502

/-- `A001222(∑[A054546(n+1)])` -/
def P5003040758735734630.Spec : Prop :=
  ∀ n, P5003040758735734630.a n = A062502 (n + 1)

end A062502

/-! ## A062502.P7887731744838920120

`A001222(A139270(n+1))-1`
-/

namespace A062502.P7887731744838920120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A139270 (n + 1)).toNat - 1

end

end A062502.P7887731744838920120

namespace A062502

/-- `A001222(A139270(n+1))-1` -/
def P7887731744838920120.Spec : Prop :=
  ∀ n, P7887731744838920120.a n = A062502 (n + 1)

end A062502

/-! ## A062502.P147867332185497823

`A001222(A222307(2*n+1))`
-/

namespace A062502.P147867332185497823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A222307 (2 * n + 1)).toNat

end

end A062502.P147867332185497823

namespace A062502

/-- `A001222(A222307(2*n+1))` -/
def P147867332185497823.Spec : Prop :=
  ∀ n, P147867332185497823.a n = A062502 (n + 1)

end A062502

/-! ## A062502.P8503444437016028610

`A001222(A139270(n+1)/2)`
-/

namespace A062502.P8503444437016028610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A139270 (n + 1) : ℚ) / 2)).toNat

end

end A062502.P8503444437016028610

namespace A062502

/-- `A001222(A139270(n+1)/2)` -/
def P8503444437016028610.Spec : Prop :=
  ∀ n, P8503444437016028610.a n = A062502 (n + 1)

end A062502

/-! ## A062502.P15674992339806056135

`A001222(comp[A006093(n+1)]+1)`
-/

namespace A062502.P15674992339806056135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A062502.P15674992339806056135

namespace A062502

/-- `A001222(comp[A006093(n+1)]+1)` -/
def P15674992339806056135.Spec : Prop :=
  ∀ n, P15674992339806056135.a n = A062502 (n + 1)

end A062502

/-! ## A062502.P14550766534090256618

`A144494(A065090(n+2))`
-/

namespace A062502.P14550766534090256618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144494 (A065090 (n + 2)).toNat

end

end A062502.P14550766534090256618

namespace A062502

/-- `A144494(A065090(n+2))` -/
def P14550766534090256618.Spec : Prop :=
  ∀ n, P14550766534090256618.a n = A062502 (n + 1)

end A062502

/-!
# A062503: Squarefree numbers squared.

The programs for A062503, the canonical program `A062503.P11230107813318854754` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062503 has offset 1).

The definition of A062503 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062503.P11230107813318854754

`A000290(A005117(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A062503

/-- `A000290(A005117(n+1))` -/
def P11230107813318854754.Spec : Prop :=
  ∀ n, P11230107813318854754.a n = A062503 (n + 1)

theorem P11230107813318854754.correct : P11230107813318854754.Spec := by
  intro n
  simp only [A062503, Nat.add_sub_cancel]

end A062503

/-! ## A062503.P5206502824233617219

`comp[A105570(n)]²`
-/

namespace A062503.P5206502824233617219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A062503.P5206502824233617219

namespace A062503

/-- `comp[A105570(n)]²` -/
def P5206502824233617219.Spec : Prop :=
  ∀ n, (P5206502824233617219.a n : ℤ) = A062503 (n + 1)

end A062503

/-! ## A062503.P9754402660195906354

`record[A003967(n+1)²]`
-/

namespace A062503.P9754402660195906354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062503.P9754402660195906354

namespace A062503

/-- `record[A003967(n+1)²]` -/
def P9754402660195906354.Spec : Prop :=
  ∀ n, P9754402660195906354.a n = A062503 (n + 1)

end A062503

/-! ## A062503.P4582134284665819765

`record[A007913(n+1)²]`
-/

namespace A062503.P4582134284665819765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062503.P4582134284665819765

namespace A062503

/-- `record[A007913(n+1)²]` -/
def P4582134284665819765.Spec : Prop :=
  ∀ n, P4582134284665819765.a n = A062503 (n + 1)

end A062503

/-! ## A062503.P10509934647270806505

`record[A007947(n+1)²]`
-/

namespace A062503.P10509934647270806505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062503.P10509934647270806505

namespace A062503

/-- `record[A007947(n+1)²]` -/
def P10509934647270806505.Spec : Prop :=
  ∀ n, P10509934647270806505.a n = A062503 (n + 1)

end A062503

/-! ## A062503.P6116065536721308321

`A005117(C(n+1, n))^(4/2)`
-/

namespace A062503.P6116065536721308321
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A005117 (Nat.choose (n + 1) n) : ℝ) ^ ((4 : ℚ) / 2 : ℝ)

end

end A062503.P6116065536721308321

namespace A062503

/-- `A005117(C(n+1, n))^(4/2)` -/
def P6116065536721308321.Spec : Prop :=
  ∀ n, P6116065536721308321.a n = (A062503 (n + 1) : ℝ)

end A062503

/-! ## A062503.P10625787569826899929

`(lt[0, A008683(n+1)²]+1)²`
-/

namespace A062503.P10625787569826899929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) ^ 2

end

end A062503.P10625787569826899929

namespace A062503

/-- `(lt[0, A008683(n+1)²]+1)²` -/
def P10625787569826899929.Spec : Prop :=
  ∀ n, (P10625787569826899929.a n : ℤ) = A062503 (n + 1)

end A062503

/-! ## A062503.P11950670791778439266

`Δ[a(n-1)-A005117(n)]²` with `a(0)=0`
-/

namespace A062503.P11950670791778439266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - A005117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A062503.P11950670791778439266

namespace A062503

/-- `Δ[a(n-1)-A005117(n)]²` -/
def P11950670791778439266.Spec : Prop :=
  ∀ n, P11950670791778439266.a n = A062503 (n + 1)

end A062503

/-! ## A062503.P14220375993033793800

`(-sqrt(A005117(2*n+1-n)))^4`
-/

namespace A062503.P14220375993033793800
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-Real.sqrt (A005117 (2 * n + 1 - n) : ℝ)) ^ 4

end

end A062503.P14220375993033793800

namespace A062503

/-- `(-sqrt(A005117(2*n+1-n)))^4` -/
def P14220375993033793800.Spec : Prop :=
  ∀ n, P14220375993033793800.a n = (A062503 (n + 1) : ℝ)

end A062503

/-! ## A062503.P3121124029751941020

`and(-3, A005117(2*n-(n-1))²)`
-/

namespace A062503.P3121124029751941020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A005117 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat ^ 2)

end

end A062503.P3121124029751941020

namespace A062503

/-- `and(-3, A005117(2*n-(n-1))²)` -/
def P3121124029751941020.Spec : Prop :=
  ∀ n, P3121124029751941020.a n = A062503 (n + 1)

end A062503

/-! ## A062503.P17819620497406270229

`record[((n+1)*A008683(2*n+1-n))²]`
-/

namespace A062503.P17819620497406270229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A008683 (2 * n + 1 - n)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062503.P17819620497406270229

namespace A062503

/-- `record[((n+1)*A008683(2*n+1-n))²]` -/
def P17819620497406270229.Spec : Prop :=
  ∀ n, P17819620497406270229.a n = A062503 (n + 1)

end A062503

/-! ## A062503.P5996665066265275046

`A368249(n+1)+A005117(n+1)`
-/

namespace A062503.P5996665066265275046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368249 (n + 1) + A005117 (n + 1)

end

end A062503.P5996665066265275046

namespace A062503

/-- `A368249(n+1)+A005117(n+1)` -/
def P5996665066265275046.Spec : Prop :=
  ∀ n, P5996665066265275046.a n = A062503 (n + 1)

end A062503

/-! ## A062503.P5597084689981478325

`A062838(n+1)/A005117(n+1)`
-/

namespace A062503.P5597084689981478325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062838 (n + 1) : ℚ) / (A005117 (n + 1) : ℚ)

end

end A062503.P5597084689981478325

namespace A062503

/-- `A062838(n+1)/A005117(n+1)` -/
def P5597084689981478325.Spec : Prop :=
  ∀ n, P5597084689981478325.a n = (A062503 (n + 1) : ℚ)

end A062503

/-! ## A062503.P14856775861601504897

`A005117(n+1)^A020639(2*(n+1))`
-/

namespace A062503.P14856775861601504897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005117 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A062503.P14856775861601504897

namespace A062503

/-- `A005117(n+1)^A020639(2*(n+1))` -/
def P14856775861601504897.Spec : Prop :=
  ∀ n, P14856775861601504897.a n = (A062503 (n + 1) : ℚ)

end A062503

/-! ## A062503.P11328980611073243745

`A005117(C(n+1, n))*A005117(n+1)`
-/

namespace A062503.P11328980611073243745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (Nat.choose (n + 1) n) * A005117 (n + 1)

end

end A062503.P11328980611073243745

namespace A062503

/-- `A005117(C(n+1, n))*A005117(n+1)` -/
def P11328980611073243745.Spec : Prop :=
  ∀ n, P11328980611073243745.a n = A062503 (n + 1)

end A062503

/-! ## A062503.P3946424676181653751

`A005117(n+1)^A000040((-1)^(2*n))`
-/

namespace A062503.P3946424676181653751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005117 (n + 1) : ℚ) ^ (A000040 ((-1) ^ (2 * n)).toNat : ℤ)

end

end A062503.P3946424676181653751

namespace A062503

/-- `A005117(n+1)^A000040((-1)^(2*n))` -/
def P3946424676181653751.Spec : Prop :=
  ∀ n, P3946424676181653751.a n = (A062503 (n + 1) : ℚ)

end A062503

/-! ## A062503.P1053424645787611141

`(eq[A001222(n+1), A001221(n+1)]+1)²`
-/

namespace A062503.P1053424645787611141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) ^ 2

end

end A062503.P1053424645787611141

namespace A062503

/-- `(eq[A001222(n+1), A001221(n+1)]+1)²` -/
def P1053424645787611141.Spec : Prop :=
  ∀ n, (P1053424645787611141.a n : ℤ) = A062503 (n + 1)

end A062503

/-! ## A062503.P11205030542510619854

`record[A344705(record[A344705(n+1)])²]`
-/

namespace A062503.P11205030542510619854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344705 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344705 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062503.P11205030542510619854

namespace A062503

/-- `record[A344705(record[A344705(n+1)])²]` -/
def P11205030542510619854.Spec : Prop :=
  ∀ n, P11205030542510619854.a n = A062503 (n + 1)

end A062503

/-! ## A062503.P827306425643223236

`A367406(A383031(n+1))`
-/

namespace A062503.P827306425643223236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367406 (A383031 (n + 1)).toNat

end

end A062503.P827306425643223236

namespace A062503

/-- `A367406(A383031(n+1))` -/
def P827306425643223236.Spec : Prop :=
  ∀ n, P827306425643223236.a n = A062503 (n + 1)

end A062503

/-!
# A062504: Triangle in which k-th row lists natural number values for the collection of riffs with k nodes.

The programs for A062504, there is no canonical definition to state claims against.
-/

/-! ## A062504.P10208486779105747905

`A000720(p?[A112868(n+1)])`
-/

namespace A062504.P10208486779105747905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A062504.P10208486779105747905

/-! ## A062504.P15079000950147627399

`A003963(p?[A112868(n+1)])`
-/

namespace A062504.P15079000950147627399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A062504.P15079000950147627399

/-! ## A062504.P12613631187272997010

`A026238(p?[A112868(n+1)])`
-/

namespace A062504.P12613631187272997010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A062504.P12613631187272997010

/-! ## A062504.P3746483306997721972

`A049084(p?[A112868(n+1)])`
-/

namespace A062504.P3746483306997721972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A062504.P3746483306997721972

/-! ## A062504.P5945075312370101527

`A055396(p?[A112868(n+1)])`
-/

namespace A062504.P5945075312370101527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A062504.P5945075312370101527

/-!
# A062505: Numbers k such that if p is a prime that divides k, then either p + 2 or p - 2 is also prime.

The programs for A062505, there is no canonical definition to state claims against.
-/

/-! ## A062505.P2009829636196126857

`record[A072963(n+1)]`
-/

namespace A062505.P2009829636196126857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062505.P2009829636196126857

/-! ## A062505.P5476286340427243229

`eq[n, A072963(or(1, n))]`
-/

namespace A062505.P5476286340427243229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062505.P5476286340427243229

/-! ## A062505.P14434825831579680493

`eq[n, A072963(xor(1, n)+1)]`
-/

namespace A062505.P14434825831579680493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (Nat.xor 1 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062505.P14434825831579680493

/-! ## A062505.P1033306320704754532

`A072963(eq[n+1, A072963(n+1)]+1)`
-/

namespace A062505.P1033306320704754532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A062505.P1033306320704754532

/-! ## A062505.P16223469839036088565

`record[A072963(A008619(n))²/A008619(n)]`
-/

namespace A062505.P16223469839036088565
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072963 (A008619 n).toNat ^ 2 : ℚ) / (A008619 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062505.P16223469839036088565

/-! ## A062505.P8399834437537182668

`eq[n, A072963(eq[1, A019425(n)])]`
-/

namespace A062505.P8399834437537182668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062505.P8399834437537182668

/-! ## A062505.P8315903748737243746

`∪[A100819(n+1), A334141(n+1)]`
-/

namespace A062505.P8315903748737243746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062505.P8315903748737243746

/-!
# A062506: Numbers divisible by at least one twin prime (A001097).

The programs for A062506, the canonical program `A062506.P17612456515081535617` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062506 has offset 1).

The definition of A062506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062506.P17612456515081535617

`comp[A062729(n+1)-1]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A062506

/-- `comp[A062729(n+1)-1]+1` -/
def P17612456515081535617.Spec : Prop :=
  ∀ n, (P17612456515081535617.a n : ℤ) = A062506 (n + 1)

theorem P17612456515081535617.correct : P17612456515081535617.Spec := by
  intro n
  simp only [A062506, Nat.add_sub_cancel]

end A062506

/-! ## A062506.P1421352879149280130

`lt[0, A284599(n+1)]+1`
-/

namespace A062506.P1421352879149280130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284599 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A062506.P1421352879149280130

namespace A062506

/-- `lt[0, A284599(n+1)]+1` -/
def P1421352879149280130.Spec : Prop :=
  ∀ n, (P1421352879149280130.a n : ℤ) = A062506 (n + 1)

end A062506

/-! ## A062506.P14844209382062787284

`lt[1, A072963(n+1)]+1`
-/

namespace A062506.P14844209382062787284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A062506.P14844209382062787284

namespace A062506

/-- `lt[1, A072963(n+1)]+1` -/
def P14844209382062787284.Spec : Prop :=
  ∀ n, (P14844209382062787284.a n : ℤ) = A062506 (n + 1)

end A062506

/-! ## A062506.P14856176290500904606

`A020725(lt[1, A284599(n+1)])`
-/

namespace A062506.P14856176290500904606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A062506.P14856176290500904606

namespace A062506

/-- `A020725(lt[1, A284599(n+1)])` -/
def P14856176290500904606.Spec : Prop :=
  ∀ n, P14856176290500904606.a n = A062506 (n + 1)

end A062506

/-! ## A062506.P277205534272422684

`lt[1, A072963(A008486(n)-2*n)]`
-/

namespace A062506.P277205534272422684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (A008486 n - (2 * n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A062506.P277205534272422684

namespace A062506

/-- `lt[1, A072963(A008486(n)-2*n)]` -/
def P277205534272422684.Spec : Prop :=
  ∀ n, (P277205534272422684.a n : ℤ) = A062506 (n + 1)

end A062506

/-! ## A062506.P2346487044602117234

`eq[1, A000010(a(A284203(n)))]` with `a(0)=3`
-/

namespace A062506.P2346487044602117234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A284203 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062506.P2346487044602117234

namespace A062506

/-- `eq[1, A000010(a(A284203(n)))]` -/
def P2346487044602117234.Spec : Prop :=
  ∀ n, (P2346487044602117234.a n : ℤ) = A062506 (n + 1)

end A062506

/-! ## A062506.P10267616434412448478

`lt[2, A000040(a(A284203(n)))]` with `a(0)=1`
-/

namespace A062506.P10267616434412448478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A284203 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A062506.P10267616434412448478

namespace A062506

/-- `lt[2, A000040(a(A284203(n)))]` -/
def P10267616434412448478.Spec : Prop :=
  ∀ n, (P10267616434412448478.a n : ℤ) = A062506 (n + 1)

end A062506

/-! ## A062506.P11310475401766372364

`eq[1, A000045(a(A284203(n)))]` with `a(0)=3`
-/

namespace A062506.P11310475401766372364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A284203 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062506.P11310475401766372364

namespace A062506

/-- `eq[1, A000045(a(A284203(n)))]` -/
def P11310475401766372364.Spec : Prop :=
  ∀ n, (P11310475401766372364.a n : ℤ) = A062506 (n + 1)

end A062506

/-!
# A062507: Table by antidiagonals related to partial sums and differences of Pell numbers (A000129).

The programs for A062507, there is no canonical definition to state claims against.
-/

/-! ## A062507.P17613944521764451985

`A238750(n+1)%A106621(A096659(n))`
-/

namespace A062507.P17613944521764451985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238750 (n + 1)) (A106621 (A096659 n).toNat)

end

end A062507.P17613944521764451985

/-! ## A062507.P3154026560741322151

`A005614(Δ[A108411(n)])*A238750(n+1)`
-/

namespace A062507.P3154026560741322151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (f1 (n + 1) - f1 n).toNat * A238750 (n + 1)

end

end A062507.P3154026560741322151

/-! ## A062507.P16462703893879226470

`A065031(A033049(n))%A130321(n)`
-/

namespace A062507.P16462703893879226470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065031 (A033049 n).toNat) (A130321 n)

end

end A062507.P16462703893879226470

/-! ## A062507.P17662172842790206785

`A238794(A061579(n))%A108446(3*n)`
-/

namespace A062507.P17662172842790206785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238794 (A061579 n).toNat) (A108446 (3 * n))

end

end A062507.P17662172842790206785

/-! ## A062507.P2831261479320707059

`A238794(A038722(n+2))%A108446(3*n)`
-/

namespace A062507.P2831261479320707059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238794 (A038722 (n + 2)).toNat) (A108446 (3 * n))

end

end A062507.P2831261479320707059

/-!
# A062508: a(n) = 3^(2*n) + 7.

The programs for A062508, the canonical program `A062508.P9810001815777014190` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062508 has offset 0).

The definition of A062508 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^(2*n)+7` (program `A062508.P9810001815777014190`, by `A062508.P9810001815777014190.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062508.P9810001815777014190

`3^(2*n)+7`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062508

/-- `3^(2*n)+7` -/
def P9810001815777014190.Spec : Prop :=
  ∀ n, (P9810001815777014190.a n : ℤ) = A062508 n

theorem P9810001815777014190.correct : P9810001815777014190.Spec := by
  intro n
  simp only [A062508]

end A062508

/-! ## A062508.P7853255441214438554

`8*A047854(n)`
-/

namespace A062508.P7853255441214438554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A047854 n

end

end A062508.P7853255441214438554

namespace A062508

/-- `8*A047854(n)` -/
def P7853255441214438554.Spec : Prop :=
  ∀ n, P7853255441214438554.a n = A062508 n

end A062508

/-! ## A062508.P3909528146312878713

`4*(A054879(n)+1)`
-/

namespace A062508.P3909528146312878713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A054879 n + 1)

end

end A062508.P3909528146312878713

namespace A062508

/-- `4*(A054879(n)+1)` -/
def P3909528146312878713.Spec : Prop :=
  ∀ n, P3909528146312878713.a n = A062508 n

end A062508

/-! ## A062508.P7862436801489117208

`2*(A083884(n)+3)`
-/

namespace A062508.P7862436801489117208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A083884 n + 3)

end

end A062508.P7862436801489117208

namespace A062508

/-- `2*(A083884(n)+3)` -/
def P7862436801489117208.Spec : Prop :=
  ∀ n, P7862436801489117208.a n = A062508 n

end A062508

/-! ## A062508.P10854895972886422868

`2*(A191681(n)+4)`
-/

namespace A062508.P10854895972886422868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A191681 n + 4)

end

end A062508.P10854895972886422868

namespace A062508

/-- `2*(A191681(n)+4)` -/
def P10854895972886422868.Spec : Prop :=
  ∀ n, P10854895972886422868.a n = A062508 n

end A062508

/-! ## A062508.P1379908005804073942

`8*(A002452(n)+1)`
-/

namespace A062508.P1379908005804073942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A002452 n + 1)

end

end A062508.P1379908005804073942

namespace A062508

/-- `8*(A002452(n)+1)` -/
def P1379908005804073942.Spec : Prop :=
  ∀ n, P1379908005804073942.a n = A062508 n

end A062508

/-! ## A062508.P11425662656726174246

`xor(1, A000244(n)²+8)`
-/

namespace A062508.P11425662656726174246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A000244 n ^ 2 + 8)

end

end A062508.P11425662656726174246

namespace A062508

/-- `xor(1, A000244(n)²+8)` -/
def P11425662656726174246.Spec : Prop :=
  ∀ n, P11425662656726174246.a n = A062508 n

end A062508

/-! ## A062508.P14704252211887432217

`-xor(2, -(A000244(2*n)+5))`
-/

namespace A062508.P14704252211887432217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 2 (-(A000244 (2 * n) + 5))

end

end A062508.P14704252211887432217

namespace A062508

/-- `-xor(2, -(A000244(2*n)+5))` -/
def P14704252211887432217.Spec : Prop :=
  ∀ n, P14704252211887432217.a n = A062508 n

end A062508

/-! ## A062508.P12349459477282934170

`Δ[A008589(n)+A002452(n)]`
-/

namespace A062508.P12349459477282934170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n + A002452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062508.P12349459477282934170

namespace A062508

/-- `Δ[A008589(n)+A002452(n)]` -/
def P12349459477282934170.Spec : Prop :=
  ∀ n, P12349459477282934170.a n = A062508 n

end A062508

/-!
# A062509: a(n) = n^omega(n).

The programs for A062509, the canonical program `A062509.P8957158235387894213` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062509 has offset 1).

The definition of A062509 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062509.P8957158235387894213

`(n+1)^A001221(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062509

/-- `(n+1)^A001221(n+1)` -/
def P8957158235387894213.Spec : Prop :=
  ∀ n, P8957158235387894213.a n = (A062509 (n + 1) : ℚ)

end A062509

/-! ## A062509.P3655696150936468268

`∏{p}[n+1, lcm(#, n+1)]`
-/

namespace A062509.P3655696150936468268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.lcm p (n + 1)

end

end A062509.P3655696150936468268

namespace A062509

/-- `∏{p}[n+1, lcm(#, n+1)]` -/
def P3655696150936468268.Spec : Prop :=
  ∀ n, (P3655696150936468268.a n : ℤ) = A062509 (n + 1)

end A062509

/-! ## A062509.P18204057909744236940

`∏{p}[n+1, gcd(n, #)+n]`
-/

namespace A062509.P18204057909744236940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.gcd n p + n)

end

end A062509.P18204057909744236940

namespace A062509

/-- `∏{p}[n+1, gcd(n, #)+n]` -/
def P18204057909744236940.Spec : Prop :=
  ∀ n, (P18204057909744236940.a n : ℤ) = A062509 (n + 1)

end A062509

/-! ## A062509.P7118584096357405511

`∏{e}[∏{p}[n+1, #], #+n]`
-/

namespace A062509.P7118584096357405511
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + n)

end

end A062509.P7118584096357405511

namespace A062509

/-- `∏{e}[∏{p}[n+1, #], #+n]` -/
def P7118584096357405511.Spec : Prop :=
  ∀ n, (P7118584096357405511.a n : ℤ) = A062509 (n + 1)

end A062509

/-! ## A062509.P10097391871061430056

`∏{p}[n+1, n-or(#, -1)]`
-/

namespace A062509.P10097391871061430056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((n : ℤ) - Int.lor (p : ℤ) (-1))

end

end A062509.P10097391871061430056

namespace A062509

/-- `∏{p}[n+1, n-or(#, -1)]` -/
def P10097391871061430056.Spec : Prop :=
  ∀ n, P10097391871061430056.a n = A062509 (n + 1)

end A062509

/-! ## A062509.P4487212217843854332

`∏{p}[n+1, ceil(1/#+n)]`
-/

namespace A062509.P4487212217843854332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈1 / (p : ℚ) + (n : ℚ)⌉

end

end A062509.P4487212217843854332

namespace A062509

/-- `∏{p}[n+1, ceil(1/#+n)]` -/
def P4487212217843854332.Spec : Prop :=
  ∀ n, P4487212217843854332.a n = A062509 (n + 1)

end A062509

/-! ## A062509.P4146592747763480145

`∏{e}[n+1, n-or(#, -1)]`
-/

namespace A062509.P4146592747763480145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((n : ℤ) - Int.lor (Nat.factorization (f1 n) p : ℤ) (-1))

end

end A062509.P4146592747763480145

namespace A062509

/-- `∏{e}[n+1, n-or(#, -1)]` -/
def P4146592747763480145.Spec : Prop :=
  ∀ n, P4146592747763480145.a n = A062509 (n + 1)

end A062509

/-! ## A062509.P10618494463251615357

`∏{e}[n+1, ceil(1/#+n)]`
-/

namespace A062509.P10618494463251615357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈1 / (Nat.factorization (f1 n) p : ℚ) + (n : ℚ)⌉

end

end A062509.P10618494463251615357

namespace A062509

/-- `∏{e}[n+1, ceil(1/#+n)]` -/
def P10618494463251615357.Spec : Prop :=
  ∀ n, P10618494463251615357.a n = A062509 (n + 1)

end A062509

/-! ## A062509.P7551741627460858223

`(n+1)^∑{e}[∏{p}[n+1, #], #]`
-/

namespace A062509.P7551741627460858223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A062509.P7551741627460858223

namespace A062509

/-- `(n+1)^∑{e}[∏{p}[n+1, #], #]` -/
def P7551741627460858223.Spec : Prop :=
  ∀ n, (P7551741627460858223.a n : ℤ) = A062509 (n + 1)

end A062509

/-! ## A062509.P14701489827893417894

`(n+1)^∑{p}[n+1, ceil(1/#)]`
-/

namespace A062509.P14701489827893417894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (p : ℚ)⌉ : ℤ)

end

end A062509.P14701489827893417894

namespace A062509

/-- `(n+1)^∑{p}[n+1, ceil(1/#)]` -/
def P14701489827893417894.Spec : Prop :=
  ∀ n, P14701489827893417894.a n = (A062509 (n + 1) : ℚ)

end A062509

/-! ## A062509.P5033401114246364137

`(n+1)^∑{e}[n+1, ceil(1/#)]`
-/

namespace A062509.P5033401114246364137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (Nat.factorization (f1 n) p : ℚ)⌉ : ℤ)

end

end A062509.P5033401114246364137

namespace A062509

/-- `(n+1)^∑{e}[n+1, ceil(1/#)]` -/
def P5033401114246364137.Spec : Prop :=
  ∀ n, P5033401114246364137.a n = (A062509 (n + 1) : ℚ)

end A062509

/-! ## A062509.P18001692068222728663

`(n+1)*A304404(n+1)`
-/

namespace A062509.P18001692068222728663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A304404 (n + 1)

end

end A062509.P18001692068222728663

namespace A062509

/-- `(n+1)*A304404(n+1)` -/
def P18001692068222728663.Spec : Prop :=
  ∀ n, P18001692068222728663.a n = A062509 (n + 1)

end A062509

/-! ## A062509.P5379924455289685274

`(n+1)^(A297155(n+1)+1)`
-/

namespace A062509.P5379924455289685274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A297155 (n + 1) + 1 : ℤ)

end

end A062509.P5379924455289685274

namespace A062509

/-- `(n+1)^(A297155(n+1)+1)` -/
def P5379924455289685274.Spec : Prop :=
  ∀ n, P5379924455289685274.a n = (A062509 (n + 1) : ℚ)

end A062509

/-! ## A062509.P16393530729289986049

`(n+1)^(A083399(n+1)-1)`
-/

namespace A062509.P16393530729289986049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A083399 (n + 1) - 1 : ℤ)

end

end A062509.P16393530729289986049

namespace A062509

/-- `(n+1)^(A083399(n+1)-1)` -/
def P16393530729289986049.Spec : Prop :=
  ∀ n, P16393530729289986049.a n = (A062509 (n + 1) : ℚ)

end A062509

/-! ## A062509.P15451307238921987545

`(n+1)^(A229109(n+1)-(n+1))`
-/

namespace A062509.P15451307238921987545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A229109 (n + 1) - (n + 1 : ℤ) : ℤ)

end

end A062509.P15451307238921987545

namespace A062509

/-- `(n+1)^(A229109(n+1)-(n+1))` -/
def P15451307238921987545.Spec : Prop :=
  ∀ n, P15451307238921987545.a n = (A062509 (n + 1) : ℚ)

end A062509

/-! ## A062509.P17857301008885847604

`(n+1)^(n+1-A378993(n+1))`
-/

namespace A062509.P17857301008885847604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((n + 1 : ℤ) - A378993 (n + 1) : ℤ)

end

end A062509.P17857301008885847604

namespace A062509

/-- `(n+1)^(n+1-A378993(n+1))` -/
def P17857301008885847604.Spec : Prop :=
  ∀ n, P17857301008885847604.a n = (A062509 (n + 1) : ℚ)

end A062509

/-! ## A062509.P15526916228392691567

`(n+1)^(A328260(n+1)/(n+1))`
-/

namespace A062509.P15526916228392691567
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A328260 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ)

end

end A062509.P15526916228392691567

namespace A062509

/-- `(n+1)^(A328260(n+1)/(n+1))` -/
def P15526916228392691567.Spec : Prop :=
  ∀ n, P15526916228392691567.a n = (A062509 (n + 1) : ℝ)

end A062509

/-! ## A062509.P13565887806022723806

`(n+1)^(∑{p}[n+1, A000005(#)]/2)`
-/

namespace A062509.P13565887806022723806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (((∑ p ∈ Nat.primeFactors (f1 n), A000005 p : ℤ) : ℚ) / 2 : ℝ)

end

end A062509.P13565887806022723806

namespace A062509

/-- `(n+1)^(∑{p}[n+1, A000005(#)]/2)` -/
def P13565887806022723806.Spec : Prop :=
  ∀ n, P13565887806022723806.a n = (A062509 (n + 1) : ℝ)

end A062509

/-! ## A062509.P13512643517025023274

`A007947(n+1)*A205959(n+1)`
-/

namespace A062509.P13512643517025023274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A205959 (n + 1)

end

end A062509.P13512643517025023274

namespace A062509

/-- `A007947(n+1)*A205959(n+1)` -/
def P13512643517025023274.Spec : Prop :=
  ∀ n, P13512643517025023274.a n = A062509 (n + 1)

end A062509

/-! ## A062509.P4119799134255500777

`A061537(n+1)/A062513(n+1)`
-/

namespace A062509.P4119799134255500777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061537 (n + 1) : ℚ) / (A062513 (n + 1) : ℚ)

end

end A062509.P4119799134255500777

namespace A062509

/-- `A061537(n+1)/A062513(n+1)` -/
def P4119799134255500777.Spec : Prop :=
  ∀ n, P4119799134255500777.a n = (A062509 (n + 1) : ℚ)

end A062509

/-!
# A062510: a(n) = 2^n + (-1)^(n+1).

The programs for A062510, the canonical program `A062510.P5158205566425357391` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062510 has offset 0).

The definition of A062510 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+(-1)^(n+1)` (program `A062510.P5158205566425357391`, by `A062510.P5158205566425357391.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062510.P14256465806171957964

`2^n-(-1)^n`
-/

namespace A062510.P14256465806171957964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (-1) ^ n

end

end A062510.P14256465806171957964

namespace A062510

/-- `2^n-(-1)^n` -/
def P14256465806171957964.Spec : Prop :=
  ∀ n, P14256465806171957964.a n = A062510 n

theorem P14256465806171957964.correct : P14256465806171957964.Spec := by
  intro n
  simp only [A062510, Nat.add_sub_cancel, A062510.P14256465806171957964.a, A062510.P5158205566425357391.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A062510

/-! ## A062510.P5158205566425357391

`2^n+(-1)^(n+1)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062510

/-- `2^n+(-1)^(n+1)` -/
def P5158205566425357391.Spec : Prop :=
  ∀ n, P5158205566425357391.a n = A062510 n

theorem P5158205566425357391.correct : P5158205566425357391.Spec := by
  intro n
  simp only [A062510]

end A062510

/-! ## A062510.P1009830441622892454

`3*A001045(n)`
-/

namespace A062510.P1009830441622892454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001045 n

end

end A062510.P1009830441622892454

namespace A062510

/-- `3*A001045(n)` -/
def P1009830441622892454.Spec : Prop :=
  ∀ n, P1009830441622892454.a n = A062510 n

end A062510

/-! ## A062510.P1607722870012207750

`ogf(3x/(1-x-2x^2))`
-/

namespace A062510.P1607722870012207750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -1, -2] n

end

end A062510.P1607722870012207750

namespace A062510

/-- `ogf(3x/(1-x-2x^2))` -/
def P1607722870012207750.Spec : Prop :=
  ∀ n, P1607722870012207750.a n = A062510 n

end A062510

/-! ## A062510.P6947218172785941172

`abs(a(n-1)+2*a(n-2))` with `a(0)=0, a(1)=3`
-/

namespace A062510.P6947218172785941172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 1) + 2 * a (n - 2)

end

end A062510.P6947218172785941172

namespace A062510

/-- `abs(a(n-1)+2*a(n-2))` -/
def P6947218172785941172.Spec : Prop :=
  ∀ n, (P6947218172785941172.a n : ℤ) = A062510 n

theorem P6947218172785941172.correct : P6947218172785941172.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A062510, Nat.add_sub_cancel, A062510.P6947218172785941172.a, A062510.P5158205566425357391.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A062510, Nat.add_sub_cancel, A062510.P6947218172785941172.a, A062510.P5158205566425357391.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A062510

/-! ## A062510.P12956052042260070687

`floor(a(n-1)+2*a(n-2))` with `a(0)=0, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A062510.P12956052042260070687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 1) + 2 * a (n - 2)

end

end A062510.P12956052042260070687

namespace A062510

/-- `floor(a(n-1)+2*a(n-2))` -/
def P12956052042260070687.Spec : Prop :=
  ∀ n, (P12956052042260070687.a n : ℤ) = A062510 n

theorem P12956052042260070687.correct : P12956052042260070687.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A062510, Nat.add_sub_cancel, A062510.P12956052042260070687.a, A062510.P5158205566425357391.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A062510, Nat.add_sub_cancel, A062510.P12956052042260070687.a, A062510.P5158205566425357391.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A062510

/-! ## A062510.P1335649876485608517

`ceil(a(n-1)+2*a(n-2))` with `a(0)=0, a(1)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A062510.P1335649876485608517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 1) + 2 * a (n - 2)

end

end A062510.P1335649876485608517

namespace A062510

/-- `ceil(a(n-1)+2*a(n-2))` -/
def P1335649876485608517.Spec : Prop :=
  ∀ n, (P1335649876485608517.a n : ℤ) = A062510 n

theorem P1335649876485608517.correct : P1335649876485608517.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A062510, Nat.add_sub_cancel, A062510.P1335649876485608517.a, A062510.P5158205566425357391.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A062510, Nat.add_sub_cancel, A062510.P1335649876485608517.a, A062510.P5158205566425357391.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A062510

/-! ## A062510.P1844012415477094603

`round(a(n-1)+2*a(n-2))` with `a(0)=0, a(1)=3`

`round` is left out, it is the identity on integers.
-/

namespace A062510.P1844012415477094603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 1) + 2 * a (n - 2)

end

end A062510.P1844012415477094603

namespace A062510

/-- `round(a(n-1)+2*a(n-2))` -/
def P1844012415477094603.Spec : Prop :=
  ∀ n, (P1844012415477094603.a n : ℤ) = A062510 n

theorem P1844012415477094603.correct : P1844012415477094603.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A062510, Nat.add_sub_cancel, A062510.P1844012415477094603.a, A062510.P5158205566425357391.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A062510, Nat.add_sub_cancel, A062510.P1844012415477094603.a, A062510.P5158205566425357391.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A062510

/-! ## A062510.P12965893937252954479

`2*(a(n-2)+a(n-1)/2)` with `a(0)=0, a(1)=3`
-/

namespace A062510.P12965893937252954479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 3] fun n a =>
  2 * (a (n - 2) + a (n - 1) / 2)

end

end A062510.P12965893937252954479

namespace A062510

/-- `2*(a(n-2)+a(n-1)/2)` -/
def P12965893937252954479.Spec : Prop :=
  ∀ n, P12965893937252954479.a n = (A062510 n : ℚ)

theorem P12965893937252954479.correct : P12965893937252954479.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A062510, Nat.add_sub_cancel, A062510.P12965893937252954479.a, A062510.P5158205566425357391.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A062510, Nat.add_sub_cancel, A062510.P12965893937252954479.a, A062510.P5158205566425357391.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A062510

/-! ## A062510.P12324144400104163986

`∑[a(n-1)+2*a(n-2)]` with `a(0)=0, a(1)=3, a(2)=0`
-/

namespace A062510.P12324144400104163986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 0] fun n f1 =>
  f1 (n - 1) + 2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062510.P12324144400104163986

namespace A062510

/-- `∑[a(n-1)+2*a(n-2)]` -/
def P12324144400104163986.Spec : Prop :=
  ∀ n, (P12324144400104163986.a n : ℤ) = A062510 n

end A062510

/-! ## A062510.P13717272365607150353

`abs(a(n-2)+a(n-1)+a(n-2))` with `a(0)=0, a(1)=3`
-/

namespace A062510.P13717272365607150353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 2) + (a (n - 1) + a (n - 2))

end

end A062510.P13717272365607150353

namespace A062510

/-- `abs(a(n-2)+a(n-1)+a(n-2))` -/
def P13717272365607150353.Spec : Prop :=
  ∀ n, (P13717272365607150353.a n : ℤ) = A062510 n

theorem P13717272365607150353.correct : P13717272365607150353.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A062510, Nat.add_sub_cancel, A062510.P13717272365607150353.a, A062510.P5158205566425357391.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A062510, Nat.add_sub_cancel, A062510.P13717272365607150353.a, A062510.P5158205566425357391.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A062510

/-! ## A062510.P6249106045168164749

`floor(a(n-2)+a(n-1)+a(n-2))` with `a(0)=0, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A062510.P6249106045168164749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 2) + (a (n - 1) + a (n - 2))

end

end A062510.P6249106045168164749

namespace A062510

/-- `floor(a(n-2)+a(n-1)+a(n-2))` -/
def P6249106045168164749.Spec : Prop :=
  ∀ n, (P6249106045168164749.a n : ℤ) = A062510 n

theorem P6249106045168164749.correct : P6249106045168164749.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A062510, Nat.add_sub_cancel, A062510.P6249106045168164749.a, A062510.P5158205566425357391.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A062510, Nat.add_sub_cancel, A062510.P6249106045168164749.a, A062510.P5158205566425357391.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A062510

/-! ## A062510.P9729458842381601274

`ceil(a(n-2)+a(n-1)+a(n-2))` with `a(0)=0, a(1)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A062510.P9729458842381601274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 2) + (a (n - 1) + a (n - 2))

end

end A062510.P9729458842381601274

namespace A062510

/-- `ceil(a(n-2)+a(n-1)+a(n-2))` -/
def P9729458842381601274.Spec : Prop :=
  ∀ n, (P9729458842381601274.a n : ℤ) = A062510 n

theorem P9729458842381601274.correct : P9729458842381601274.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A062510, Nat.add_sub_cancel, A062510.P9729458842381601274.a, A062510.P5158205566425357391.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A062510, Nat.add_sub_cancel, A062510.P9729458842381601274.a, A062510.P5158205566425357391.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A062510

/-! ## A062510.P12797711465544084542

`round(a(n-2)+a(n-1)+a(n-2))` with `a(0)=0, a(1)=3`

`round` is left out, it is the identity on integers.
-/

namespace A062510.P12797711465544084542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 2) + (a (n - 1) + a (n - 2))

end

end A062510.P12797711465544084542

namespace A062510

/-- `round(a(n-2)+a(n-1)+a(n-2))` -/
def P12797711465544084542.Spec : Prop :=
  ∀ n, (P12797711465544084542.a n : ℤ) = A062510 n

theorem P12797711465544084542.correct : P12797711465544084542.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A062510, Nat.add_sub_cancel, A062510.P12797711465544084542.a, A062510.P5158205566425357391.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A062510, Nat.add_sub_cancel, A062510.P12797711465544084542.a, A062510.P5158205566425357391.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A062510

/-! ## A062510.P253736028879239670

`∑[a(n-2)+a(n-1)+a(n-2)]` with `a(0)=0, a(1)=3, a(2)=0`
-/

namespace A062510.P253736028879239670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 0] fun n f1 =>
  f1 (n - 2) + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062510.P253736028879239670

namespace A062510

/-- `∑[a(n-2)+a(n-1)+a(n-2)]` -/
def P253736028879239670.Spec : Prop :=
  ∀ n, (P253736028879239670.a n : ℤ) = A062510 n

end A062510

/-! ## A062510.P14463936897486395823

`floor(3*a(n-2)-(a(n-2)-a(n-1)))` with `a(0)=0, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A062510.P14463936897486395823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  3 * a (n - 2) - (a (n - 2) - a (n - 1))

end

end A062510.P14463936897486395823

namespace A062510

/-- `floor(3*a(n-2)-(a(n-2)-a(n-1)))` -/
def P14463936897486395823.Spec : Prop :=
  ∀ n, P14463936897486395823.a n = A062510 n

theorem P14463936897486395823.correct : P14463936897486395823.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A062510, Nat.add_sub_cancel, A062510.P14463936897486395823.a, A062510.P5158205566425357391.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A062510, Nat.add_sub_cancel, A062510.P14463936897486395823.a, A062510.P5158205566425357391.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A062510

/-! ## A062510.P7436754455028950411

`2*(a(n-1)-(a(n-1)/2-a(n-2)))` with `a(0)=0, a(1)=3`
-/

namespace A062510.P7436754455028950411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 3] fun n a =>
  2 * (a (n - 1) - (a (n - 1) / 2 - a (n - 2)))

end

end A062510.P7436754455028950411

namespace A062510

/-- `2*(a(n-1)-(a(n-1)/2-a(n-2)))` -/
def P7436754455028950411.Spec : Prop :=
  ∀ n, P7436754455028950411.a n = (A062510 n : ℚ)

theorem P7436754455028950411.correct : P7436754455028950411.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A062510, Nat.add_sub_cancel, A062510.P7436754455028950411.a, A062510.P5158205566425357391.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A062510, Nat.add_sub_cancel, A062510.P7436754455028950411.a, A062510.P5158205566425357391.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A062510

/-! ## A062510.P5494304129997153032

`(a(n-1)+2*a(n-2))*a(n-1)%2` with `a(0)=0, a(1)=3`
-/

namespace A062510.P5494304129997153032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  (a (n - 1) + 2 * a (n - 2)) * (a (n - 1) % 2)

end

end A062510.P5494304129997153032

namespace A062510

/-- `(a(n-1)+2*a(n-2))*a(n-1)%2` -/
def P5494304129997153032.Spec : Prop :=
  ∀ n, (P5494304129997153032.a n : ℤ) = A062510 n

end A062510

/-! ## A062510.P14893594102088655149

`(a(n-1)+2*a(n-2))*gcd(2, a(n-1))` with `a(0)=0, a(1)=3`
-/

namespace A062510.P14893594102088655149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  (a (n - 1) + 2 * a (n - 2)) * Nat.gcd 2 (a (n - 1))

end

end A062510.P14893594102088655149

namespace A062510

/-- `(a(n-1)+2*a(n-2))*gcd(2, a(n-1))` -/
def P14893594102088655149.Spec : Prop :=
  ∀ n, (P14893594102088655149.a n : ℤ) = A062510 n

end A062510

/-! ## A062510.P8003186785578183596

`gcd(a(n-2)+a(n-1)+a(n-2), a(n-2)%3)` with `a(0)=0, a(1)=3`
-/

namespace A062510.P8003186785578183596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  Nat.gcd (a (n - 2) + (a (n - 1) + a (n - 2))) (a (n - 2) % 3)

end

end A062510.P8003186785578183596

namespace A062510

/-- `gcd(a(n-2)+a(n-1)+a(n-2), a(n-2)%3)` -/
def P8003186785578183596.Spec : Prop :=
  ∀ n, (P8003186785578183596.a n : ℤ) = A062510 n

end A062510

/-!
# A062511: a(n) = round(exp(n * Pi)).

The programs for A062511, there is no canonical definition to state claims against.
-/

/-! ## A062511.P654281163714047053

`round(exp(π*n))`
-/

namespace A062511.P654281163714047053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp (Real.pi * (n : ℝ)))

end

end A062511.P654281163714047053

/-! ## A062511.P13595930321095213286

`A056580(n²)`
-/

namespace A062511.P13595930321095213286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056580 (n ^ 2)

end

end A062511.P13595930321095213286

/-! ## A062511.P7142267346179618727

`record[root(A056580(n), A071797(n+1))]`
-/

namespace A062511.P7142267346179618727
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A056580 n : ℝ) ^ (1 / (A071797 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062511.P7142267346179618727

/-! ## A062511.P4304147166954810989

`record[A056580(A118881(n))]`
-/

namespace A062511.P4304147166954810989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056580 (A118881 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062511.P4304147166954810989

/-! ## A062511.P2473412414842493931

`floor(A062360(2*n)/A062360(n))`
-/

namespace A062511.P2473412414842493931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062360 (2 * n) : ℚ) / (A062360 n : ℚ)⌋

end

end A062511.P2473412414842493931

/-!
# A062512: a(n) = floor( gamma(n/4) * gamma(n+1)/4 ).

The programs for A062512, there is no canonical definition to state claims against.
-/

/-! ## A062512.P12551408009506884182

`∑[A341307(A266329(n))]`
-/

namespace A062512.P12551408009506884182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341307 (A266329 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062512.P12551408009506884182

/-! ## A062512.P15847582722504535653

`∑[A341307(Δ[A289739(n)])]`
-/

namespace A062512.P15847582722504535653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289739 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341307 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062512.P15847582722504535653

/-! ## A062512.P16299326190130360870

`A002264(n)+A002264(∑[A266329(n)])`
-/

namespace A062512.P16299326190130360870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n + A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A062512.P16299326190130360870

/-!
# A062513: Product of unitary divisors of n is divided by n^(number of distinct prime factors).

The programs for A062513, the canonical program `A062513.P1789972320997813551` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062513 has offset 1).

The definition of A062513 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A061537, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062513.P1789972320997813551

`A061537(n+1)/(n+1)^A001221(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A062513

/-- `A061537(n+1)/(n+1)^A001221(n+1)` -/
def P1789972320997813551.Spec : Prop :=
  ∀ n, P1789972320997813551.a n = (A062513 (n + 1) : ℚ)

end A062513

/-! ## A062513.P4228458562635080095

`(n+1)^(A034444(n+1)/2-A001221(n+1))`
-/

namespace A062513.P4228458562635080095
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A034444 (n + 1) : ℚ) / 2 - (A001221 (n + 1) : ℚ) : ℝ)

end

end A062513.P4228458562635080095

namespace A062513

/-- `(n+1)^(A034444(n+1)/2-A001221(n+1))` -/
def P4228458562635080095.Spec : Prop :=
  ∀ n, P4228458562635080095.a n = (A062513 (n + 1) : ℝ)

end A062513

/-! ## A062513.P5688483027392518661

`A061537(n+1)/A062509(n+1)`
-/

namespace A062513.P5688483027392518661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061537 (n + 1) : ℚ) / (A062509 (n + 1) : ℚ)

end

end A062513.P5688483027392518661

namespace A062513

/-- `A061537(n+1)/A062509(n+1)` -/
def P5688483027392518661.Spec : Prop :=
  ∀ n, P5688483027392518661.a n = (A062513 (n + 1) : ℚ)

end A062513

/-! ## A062513.P6038660375200701572

`A290480(n+1)/A304404(n+1)`
-/

namespace A062513.P6038660375200701572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290480 (n + 1) : ℚ) / (A304404 (n + 1) : ℚ)

end

end A062513.P6038660375200701572

namespace A062513

/-- `A290480(n+1)/A304404(n+1)` -/
def P6038660375200701572.Spec : Prop :=
  ∀ n, P6038660375200701572.a n = (A062513 (n + 1) : ℚ)

end A062513

/-! ## A062513.P17006635654328401246

`(n+1)^A243823(A034444(n+1))`
-/

namespace A062513.P17006635654328401246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A243823 (A034444 (n + 1)).toNat : ℤ)

end

end A062513.P17006635654328401246

namespace A062513

/-- `(n+1)^A243823(A034444(n+1))` -/
def P17006635654328401246.Spec : Prop :=
  ∀ n, P17006635654328401246.a n = (A062513 (n + 1) : ℚ)

end A062513

/-! ## A062513.P3679214112145032836

`(n+1)^A081400(A293810(n+1))`
-/

namespace A062513.P3679214112145032836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A081400 (A293810 (n + 1)).toNat : ℤ)

end

end A062513.P3679214112145032836

namespace A062513

/-- `(n+1)^A081400(A293810(n+1))` -/
def P3679214112145032836.Spec : Prop :=
  ∀ n, P3679214112145032836.a n = (A062513 (n + 1) : ℚ)

end A062513

/-! ## A062513.P8674699560382893352

`(n+1)^A324660(A057505(∑{p}[n+1, gcd(n, #)]))`
-/

namespace A062513.P8674699560382893352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A324660 (A057505 (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p)).toNat : ℤ)

end

end A062513.P8674699560382893352

namespace A062513

/-- `(n+1)^A324660(A057505(∑{p}[n+1, gcd(n, #)]))` -/
def P8674699560382893352.Spec : Prop :=
  ∀ n, P8674699560382893352.a n = (A062513 (n + 1) : ℚ)

end A062513

/-! ## A062513.P81118415884137535

`val(A001221(n+1)^n, 3)+1`
-/

namespace A062513.P81118415884137535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001221 (n + 1) ^ n).toNat 3 + 1

end

end A062513.P81118415884137535

namespace A062513

/-- `val(A001221(n+1)^n, 3)+1` -/
def P81118415884137535.Spec : Prop :=
  ∀ n, (P81118415884137535.a n : ℤ) = A062513 (n + 1)

end A062513

/-! ## A062513.P572178662161551980

`n*A175599(A309307(n+1)²+1)+1`
-/

namespace A062513.P572178662161551980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A175599 (A309307 (n + 1) ^ 2 + 1).toNat + 1

end

end A062513.P572178662161551980

namespace A062513

/-- `n*A175599(A309307(n+1)²+1)+1` -/
def P572178662161551980.Spec : Prop :=
  ∀ n, P572178662161551980.a n = A062513 (n + 1)

end A062513

/-! ## A062513.P4986339206551375828

`(n+1)^A180823(2^A034444(n+1)+1)`
-/

namespace A062513.P4986339206551375828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A180823 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A034444 (n + 1) : ℤ) + 1)).toNat : ℤ)

end

end A062513.P4986339206551375828

namespace A062513

/-- `(n+1)^A180823(2^A034444(n+1)+1)` -/
def P4986339206551375828.Spec : Prop :=
  ∀ n, P4986339206551375828.a n = (A062513 (n + 1) : ℚ)

end A062513

/-! ## A062513.P5840525225751976831

`gcd(A004830(n+1), A008683(A166142(n+1)))`
-/

namespace A062513.P5840525225751976831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004830 (n + 1)) (A008683 (A166142 (n + 1)).toNat)

end

end A062513.P5840525225751976831

namespace A062513

/-- `gcd(A004830(n+1), A008683(A166142(n+1)))` -/
def P5840525225751976831.Spec : Prop :=
  ∀ n, (P5840525225751976831.a n : ℤ) = A062513 (n + 1)

end A062513

/-! ## A062513.P5545149979795922730

`A038722(A038722(n+1)^A173673(A034444(n+1)))`
-/

namespace A062513.P5545149979795922730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (SequenceMachineLib.roundAway ((A038722 (n + 1) : ℚ) ^ (A173673 (A034444 (n + 1)).toNat : ℤ))).toNat

end

end A062513.P5545149979795922730

namespace A062513

/-- `A038722(A038722(n+1)^A173673(A034444(n+1)))` -/
def P5545149979795922730.Spec : Prop :=
  ∀ n, P5545149979795922730.a n = A062513 (n + 1)

end A062513

/-!
# A062514: Numbers k such that sigma(phi(k)) is a prime.

The programs for A062514, there is no canonical definition to state claims against.
-/

/-! ## A062514.P1058029419823405475

`eq[2, A151948(n+1)]+1`
-/

namespace A062514.P1058029419823405475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151948 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062514.P1058029419823405475

/-! ## A062514.P1270653051114249911

`eq[2, A151948(A028310(n))]`
-/

namespace A062514.P1270653051114249911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151948 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062514.P1270653051114249911

/-! ## A062514.P5048548659434621435

`eq[1, A001222(A062402(n+1))]+1`
-/

namespace A062514.P5048548659434621435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A062402 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062514.P5048548659434621435

/-! ## A062514.P12059356852748372390

`eq[1, A001222(∑{d}[A000010(n+1), #])]+1`
-/

namespace A062514.P12059356852748372390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ d ∈ Nat.divisors (f3 n).natAbs, d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062514.P12059356852748372390

/-! ## A062514.P2816084821014484373

`eq[2, A151948(A123108(2*n))]`
-/

namespace A062514.P2816084821014484373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151948 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062514.P2816084821014484373

/-!
# A062515: Leading least prime signatures, ordered by forming the product of primorials greater than 2 with multiplicities given by the canonical sequence of partitions.

The programs for A062515, there is no canonical definition to state claims against.
-/

/-! ## A062515.P1450663060391280236

`∏{e}[A063008(n), A002110(#+1)]`
-/

namespace A062515.P1450663060391280236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002110 (Nat.factorization (f1 n).natAbs p + 1)

end

end A062515.P1450663060391280236

/-! ## A062515.P10101725028759366881

`A003961(A129129(n))*A328479(A228099(n))`
-/

namespace A062515.P10101725028759366881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A129129 n).toNat * A328479 (A228099 n).toNat

end

end A062515.P10101725028759366881

/-! ## A062515.P12296213004398617040

`A283980(A227955(n))`
-/

namespace A062515.P12296213004398617040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283980 (A227955 n).toNat

end

end A062515.P12296213004398617040

/-! ## A062515.P12811841108632724314

`A283980(A228099(n))`
-/

namespace A062515.P12811841108632724314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283980 (A228099 n).toNat

end

end A062515.P12811841108632724314

/-! ## A062515.P7394735721240246109

`filter[A329886(2*n), A030317(#)]`
-/

namespace A062515.P7394735721240246109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329886 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030317 (f1 j).toNat = 1) n)

end

end A062515.P7394735721240246109

/-!
# A062516: Numbers k such that 2*tau(k) = phi(k).

The programs for A062516, there is no canonical definition to state claims against.
-/

/-! ## A062516.P843669559606891875

`A378089(n+8)`
-/

namespace A062516.P843669559606891875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378089 (n + 8)

end

end A062516.P843669559606891875

/-! ## A062516.P3299723269990870005

`∩[A062976(n+3), A112587(n+1)]`
-/

namespace A062516.P3299723269990870005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062976 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062516.P3299723269990870005

/-! ## A062516.P7423406815286702186

`∩[A062976(n+3), A248888(n+1)]`
-/

namespace A062516.P7423406815286702186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062976 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062516.P7423406815286702186

/-! ## A062516.P3363152835864758578

`eq[A000010(n+1), A062011(n+1)]+1`
-/

namespace A062516.P3363152835864758578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A062516.P3363152835864758578

/-! ## A062516.P16469106229986018117

`eq[A000005(n+1), A063070(n+1)]+1`
-/

namespace A062516.P16469106229986018117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063070 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A062516.P16469106229986018117

/-!
# A062517: Number of primes between n^5 and (n+1)^5.

The programs for A062517, there is no canonical definition to state claims against.
-/

/-! ## A062517.P18317901992726607306

`Δ[A000720(n^5+1-n)]`
-/

namespace A062517.P18317901992726607306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n ^ 5 : ℤ) + (1 - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062517.P18317901992726607306

/-! ## A062517.P5158181475110344293

`record[Δ[A000720(A062298(n+1)^5)]]`
-/

namespace A062517.P5158181475110344293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A062298 (n + 1) ^ 5).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062517.P5158181475110344293

/-! ## A062517.P7533320275233305475

`record[Δ[A000720(A316434(n+1)^5)]]`
-/

namespace A062517.P7533320275233305475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A316434 (n + 1) ^ 5).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062517.P7533320275233305475

/-! ## A062517.P9990096355957840189

`record[Δ[A000720(A316942(n+1)^5)]]`
-/

namespace A062517.P9990096355957840189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A316942 (n + 1) ^ 5).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062517.P9990096355957840189

/-!
# A062518: Conjectural largest exponent k such that n^k does not contain all of the digits 0 through 9 (in decimal notation) or 0 if no such k exists (for example if n is a power of 10).

The programs for A062518, there is no canonical definition to state claims against.
-/

/-! ## A062518.P14341997466268691942

`A289207(A240069(n+1)+1)`
-/

namespace A062518.P14341997466268691942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A240069 (n + 1) + 1).toNat

end

end A062518.P14341997466268691942

/-! ## A062518.P6677686831082638634

`A240069(n+1)-floor(atan(A090493(n+1)))`
-/

namespace A062518.P6677686831082638634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240069 (n + 1) - ⌊Real.arctan (A090493 (n + 1) : ℝ)⌋

end

end A062518.P6677686831082638634

/-! ## A062518.P643515356360789821

`A240069(n+1)+A057428(A090493(n+1))`
-/

namespace A062518.P643515356360789821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240069 (n + 1) + A057428 (A090493 (n + 1)).toNat

end

end A062518.P643515356360789821

/-! ## A062518.P12982836319852148180

`A240069(n+1)+A057428(2*A240069(n+1))`
-/

namespace A062518.P12982836319852148180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240069 (n + 1) + A057428 (2 * A240069 (n + 1)).toNat

end

end A062518.P12982836319852148180

/-! ## A062518.P4948640030752888390

`A081729(A143988(n+1))+A028310(A240069(n+1))`
-/

namespace A062518.P4948640030752888390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (A143988 (n + 1)).toNat + A028310 (A240069 (n + 1)).toNat

end

end A062518.P4948640030752888390

/-! ## A062518.P2691870268754953581

`A240069(n+1)-floor(atan(A320572(n+1)))`
-/

namespace A062518.P2691870268754953581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240069 (n + 1) - ⌊Real.arctan (A320572 (n + 1) : ℝ)⌋

end

end A062518.P2691870268754953581

/-! ## A062518.P11576609042104460075

`A240069(n+1)+A057428(A320572(n+1))`
-/

namespace A062518.P11576609042104460075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240069 (n + 1) + A057428 (A320572 (n + 1)).toNat

end

end A062518.P11576609042104460075

/-!
# A062519: Numbers for which (product of digits) / (sum of digits) is an integer > 1.

The programs for A062519, there is no canonical definition to state claims against.
-/

/-! ## A062519.P16526458032395046975

`∩[A038367(n+1), A062999(n+1)]`
-/

namespace A062519.P16526458032395046975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062519.P16526458032395046975

/-! ## A062519.P9117358514084392777

`∩[A061013(n+1), A062999(n+1)]`
-/

namespace A062519.P9117358514084392777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062519.P9117358514084392777

/-!
# A062520: 3^a(n) is smallest nonnegative power of 3 containing n.

The programs for A062520, there is no canonical definition to state claims against.
-/

/-! ## A062520.P6708687504785673580

`(1-char[1])*A063566(n)`
-/

namespace A062520.P6708687504785673580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A063566 n

end

end A062520.P6708687504785673580

/-! ## A062520.P13062817786294092769

`lcm(A063566(n), A105812(n))`
-/

namespace A062520.P13062817786294092769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A063566 n) (A105812 n)

end

end A062520.P13062817786294092769

/-! ## A062520.P11367752165861977964

`A063566(n)-A074704(C(2, n)+1)²`
-/

namespace A062520.P11367752165861977964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063566 n - A074704 (Nat.choose 2 n + 1) ^ 2

end

end A062520.P11367752165861977964

/-! ## A062520.P17412964139457892509

`A063566(n)%A027659(A030000(n))`
-/

namespace A062520.P17412964139457892509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063566 n) (A027659 (A030000 n).toNat)

end

end A062520.P17412964139457892509

/-! ## A062520.P15614330076661294067

`A030000(n)+A063566(n)-A063565(n)`
-/

namespace A062520.P15614330076661294067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030000 n + (A063566 n - A063565 n)

end

end A062520.P15614330076661294067

/-! ## A062520.P6731698709193358701

`A060576(n)*A063566(n)*A060576(n)`
-/

namespace A062520.P6731698709193358701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A063566 n * A060576 n

end

end A062520.P6731698709193358701

/-! ## A062520.P15935729990756963324

`A062521(n)*A063566(n)/A063567(n)`
-/

namespace A062520.P15935729990756963324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062521 n * A063566 n : ℚ) / (A063567 n : ℚ)

end

end A062520.P15935729990756963324

/-! ## A062520.P11197802036202749167

`A062526(n)*A063566(n)/A063572(n)`
-/

namespace A062520.P11197802036202749167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062526 n * A063566 n : ℚ) / (A063572 n : ℚ)

end

end A062520.P11197802036202749167

/-! ## A062520.P2780647422546788906

`val(A176763(n), 3)`
-/

namespace A062520.P2780647422546788906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A176763 n).toNat 3

end

end A062520.P2780647422546788906

/-! ## A062520.P12453215020261632281

`and(A063566(n), A198695(A063566(2*n+1)))`
-/

namespace A062520.P12453215020261632281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063566 n) (A198695 (A063566 (2 * n + 1)).toNat)

end

end A062520.P12453215020261632281

/-! ## A062520.P16123738524927729886

`and(A063566(n), A163383(n+1))`
-/

namespace A062520.P16123738524927729886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063566 n) (A163383 (n + 1))

end

end A062520.P16123738524927729886

/-! ## A062520.P13084913429084405748

`and(A063566(n), A107464(n))`
-/

namespace A062520.P13084913429084405748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063566 n) (A107464 n)

end

end A062520.P13084913429084405748

/-! ## A062520.P15035498487185659594

`A063566(n)%A089365(n)`
-/

namespace A062520.P15035498487185659594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063566 n) (A089365 n)

end

end A062520.P15035498487185659594

/-! ## A062520.P14581619883529902791

`and(A063566(n), A156589(n))`
-/

namespace A062520.P14581619883529902791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063566 n) (A156589 n)

end

end A062520.P14581619883529902791

/-! ## A062520.P15186131284451004261

`and(A063566(n), A198695(n))`
-/

namespace A062520.P15186131284451004261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063566 n) (A198695 n)

end

end A062520.P15186131284451004261

/-!
# A062521: 4^a(n) is smallest nonnegative power of 4 containing the string 'n'.

The programs for A062521, there is no canonical definition to state claims against.
-/

/-! ## A062521.P10425150317039886186

`(1-char[1])*A063567(n)`
-/

namespace A062521.P10425150317039886186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A063567 n

end

end A062521.P10425150317039886186

/-! ## A062521.P11231435818962349380

`lcm(A063567(n), A105812(n))`
-/

namespace A062521.P11231435818962349380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A063567 n) (A105812 n)

end

end A062521.P11231435818962349380

/-! ## A062521.P11407035765911298014

`C(A063567(n), abs(A260196(n)))`
-/

namespace A062521.P11407035765911298014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A063567 n).toNat |A260196 n|.toNat

end

end A062521.P11407035765911298014

/-! ## A062521.P3596360511462141381

`and(-A060576(n), A063567(n))`
-/

namespace A062521.P3596360511462141381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A060576 n) (A063567 n)

end

end A062521.P3596360511462141381

/-! ## A062521.P3361445414579123918

`and(-A261143(n), A063567(n))`
-/

namespace A062521.P3361445414579123918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A261143 n) (A063567 n)

end

end A062521.P3361445414579123918

/-! ## A062521.P15017523920985818740

`A063567(n)-A000038(A028242(n))`
-/

namespace A062521.P15017523920985818740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063567 n - A000038 (A028242 n).toNat

end

end A062521.P15017523920985818740

/-! ## A062521.P629493703520474917

`A063567(n)-A000038(A030000(n))`
-/

namespace A062521.P629493703520474917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063567 n - A000038 (A030000 n).toNat

end

end A062521.P629493703520474917

/-! ## A062521.P1893416573092086170

`A030000(n)*A063567(n)/A063565(n)`
-/

namespace A062521.P1893416573092086170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030000 n * A063567 n : ℚ) / (A063565 n : ℚ)

end

end A062521.P1893416573092086170

/-! ## A062521.P18167727500004064614

`val(A176764(n), 4)`
-/

namespace A062521.P18167727500004064614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A176764 n).toNat 4

end

end A062521.P18167727500004064614

/-! ## A062521.P6487576254384766478

`A063567(n)%A089365(n)`
-/

namespace A062521.P6487576254384766478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063567 n) (A089365 n)

end

end A062521.P6487576254384766478

/-!
# A062522: 5^a(n) is smallest nonnegative power of 5 containing the string 'n'.

The programs for A062522, there is no canonical definition to state claims against.
-/

/-! ## A062522.P3857674656452976583

`(1-char[1])*A063568(n)`
-/

namespace A062522.P3857674656452976583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A063568 n

end

end A062522.P3857674656452976583

/-! ## A062522.P18337032864185988553

`lcm(A063568(n), A105812(n))`
-/

namespace A062522.P18337032864185988553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A063568 n) (A105812 n)

end

end A062522.P18337032864185988553

/-! ## A062522.P2754485323269727281

`and(-A060576(n), A063568(n))`
-/

namespace A062522.P2754485323269727281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A060576 n) (A063568 n)

end

end A062522.P2754485323269727281

/-! ## A062522.P10098272632379808365

`C(A063568(n), A260196(n)²)`
-/

namespace A062522.P10098272632379808365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A063568 n).toNat (A260196 n ^ 2).toNat

end

end A062522.P10098272632379808365

/-! ## A062522.P16835834778159115530

`abs(A063568(n)*A134323(n+1))`
-/

namespace A062522.P16835834778159115530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A063568 n * A134323 (n + 1)|

end

end A062522.P16835834778159115530

/-! ## A062522.P2384955083256097695

`and(A057428(A103221(n)), A063568(n))`
-/

namespace A062522.P2384955083256097695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 (A103221 n).toNat) (A063568 n)

end

end A062522.P2384955083256097695

/-! ## A062522.P9965704040803223507

`A030000(n)*A063568(n)/A063565(n)`
-/

namespace A062522.P9965704040803223507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030000 n * A063568 n : ℚ) / (A063565 n : ℚ)

end

end A062522.P9965704040803223507

/-! ## A062522.P14495490624150710789

`A063568(n)%A112033(n)`
-/

namespace A062522.P14495490624150710789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063568 n) (A112033 n)

end

end A062522.P14495490624150710789

/-! ## A062522.P12235582893181269231

`A063568(n)*A267922(n²)`
-/

namespace A062522.P12235582893181269231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063568 n * A267922 (n ^ 2)

end

end A062522.P12235582893181269231

/-!
# A062523: 6^a(n) is smallest nonnegative power of 6 containing the string 'n'.

The programs for A062523, there is no canonical definition to state claims against.
-/

/-! ## A062523.P3879587200406082245

`(1-char[1])*A063569(n)`
-/

namespace A062523.P3879587200406082245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A063569 n

end

end A062523.P3879587200406082245

/-! ## A062523.P11020438865021788141

`lcm(A063569(n), A105812(n))`
-/

namespace A062523.P11020438865021788141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A063569 n) (A105812 n)

end

end A062523.P11020438865021788141

/-! ## A062523.P6679592153767532599

`C(A063569(n), A260196(n)²)`
-/

namespace A062523.P6679592153767532599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A063569 n).toNat (A260196 n ^ 2).toNat

end

end A062523.P6679592153767532599

/-! ## A062523.P14199300511226606815

`C(A063569(n), A169585(n)!)`
-/

namespace A062523.P14199300511226606815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A063569 n).toNat (Nat.factorial (A169585 n).toNat)

end

end A062523.P14199300511226606815

/-! ## A062523.P17074494796250730946

`abs(A063569(n)*A134323(n+1))`
-/

namespace A062523.P17074494796250730946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A063569 n * A134323 (n + 1)|

end

end A062523.P17074494796250730946

/-! ## A062523.P5009697440309855858

`A063569(n)*A266678(n+1)`
-/

namespace A062523.P5009697440309855858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063569 n * A266678 (n + 1)

end

end A062523.P5009697440309855858

/-! ## A062523.P1512328410852995182

`A063569(n)-A046145(A008574(n))`
-/

namespace A062523.P1512328410852995182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063569 n - A046145 (A008574 n).toNat

end

end A062523.P1512328410852995182

/-! ## A062523.P8960854253173529829

`A063569(n)-A049084(A008706(n))`
-/

namespace A062523.P8960854253173529829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063569 n - A049084 (A008706 n).toNat

end

end A062523.P8960854253173529829

/-! ## A062523.P3614894143859071837

`A063569(n)-A181405(∑[∏{e}[n, #+1]])`
-/

namespace A062523.P3614894143859071837
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063569 n - A181405 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A062523.P3614894143859071837

/-! ## A062523.P14620913509773935720

`A063569(n)%A112033(n)`
-/

namespace A062523.P14620913509773935720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063569 n) (A112033 n)

end

end A062523.P14620913509773935720

/-! ## A062523.P14257197289015336967

`val(A176766(n), 2)`
-/

namespace A062523.P14257197289015336967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A176766 n).toNat 2

end

end A062523.P14257197289015336967

/-!
# A062524: 7^a(n) is smallest nonnegative power of 7 containing the string 'n'.

The programs for A062524, there is no canonical definition to state claims against.
-/

/-! ## A062524.P7537529161499953166

`(1-char[1])*A063570(n)`
-/

namespace A062524.P7537529161499953166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A063570 n

end

end A062524.P7537529161499953166

/-! ## A062524.P14524547148543137404

`lcm(A063570(n), A105812(n))`
-/

namespace A062524.P14524547148543137404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A063570 n) (A105812 n)

end

end A062524.P14524547148543137404

/-! ## A062524.P16851212041278917381

`and(Δ[A035327(n)], A063570(n))`
-/

namespace A062524.P16851212041278917381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A063570 n)

end

end A062524.P16851212041278917381

/-! ## A062524.P6432006745698193346

`C(A063570(n), A000108(C(3, n²)))`
-/

namespace A062524.P6432006745698193346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A063570 n).toNat (A000108 (Nat.choose 3 (n ^ 2))).toNat

end

end A062524.P6432006745698193346

/-! ## A062524.P16955101291944201367

`A063570(n)%xor(1, A000040(n+1))²`
-/

namespace A062524.P16955101291944201367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063570 n) (Int.xor 1 (A000040 (n + 1)) ^ 2)

end

end A062524.P16955101291944201367

/-! ## A062524.P3234643414626753013

`val(A176767(n), 7)`
-/

namespace A062524.P3234643414626753013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A176767 n).toNat 7

end

end A062524.P3234643414626753013

/-! ## A062524.P7520179529692151363

`A063570(n)%A055516(n)`
-/

namespace A062524.P7520179529692151363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063570 n) (A055516 n)

end

end A062524.P7520179529692151363

/-! ## A062524.P55999911335677639

`and(A063570(n), A163383(n+1))`
-/

namespace A062524.P55999911335677639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063570 n) (A163383 (n + 1))

end

end A062524.P55999911335677639

/-! ## A062524.P2198355513984425957

`and(A063570(n), A389172(n+1))`
-/

namespace A062524.P2198355513984425957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063570 n) (A389172 (n + 1))

end

end A062524.P2198355513984425957

/-! ## A062524.P17773725232767130187

`and(A063570(n), A156760(n))`
-/

namespace A062524.P17773725232767130187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063570 n) (A156760 n)

end

end A062524.P17773725232767130187

/-! ## A062524.P12599498696421064320

`and(A063570(n), A198694(n))`
-/

namespace A062524.P12599498696421064320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063570 n) (A198694 n)

end

end A062524.P12599498696421064320

/-! ## A062524.P1249258771493259757

`and(A063570(n), A381707(n+1))`
-/

namespace A062524.P1249258771493259757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063570 n) (A381707 (n + 1))

end

end A062524.P1249258771493259757

/-!
# A062525: 8^a(n) is smallest power of 8 containing the string 'n'.

The programs for A062525, there is no canonical definition to state claims against.
-/

/-! ## A062525.P8398244677108455294

`A060576(n)*A063571(n)`
-/

namespace A062525.P8398244677108455294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A063571 n

end

end A062525.P8398244677108455294

/-! ## A062525.P12185935494274802370

`lcm(A063571(n), A105812(n))`
-/

namespace A062525.P12185935494274802370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A063571 n) (A105812 n)

end

end A062525.P12185935494274802370

/-! ## A062525.P2662159613915018216

`A063571(n)%A261671(n)²`
-/

namespace A062525.P2662159613915018216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063571 n) (A261671 n ^ 2)

end

end A062525.P2662159613915018216

/-! ## A062525.P1524870937118317641

`A000035(A089026(n+1))*A063571(n)`
-/

namespace A062525.P1524870937118317641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A089026 (n + 1)).toNat * A063571 n

end

end A062525.P1524870937118317641

/-! ## A062525.P9393417360727110316

`A035263(A008578(n+1))*A063571(n)`
-/

namespace A062525.P9393417360727110316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A008578 (n + 1)).toNat * A063571 n

end

end A062525.P9393417360727110316

/-! ## A062525.P16472783126761604741

`A063571(n)-A046145(A008574(n))`
-/

namespace A062525.P16472783126761604741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063571 n - A046145 (A008574 n).toNat

end

end A062525.P16472783126761604741

/-! ## A062525.P13315193131373514077

`A063571(n)%A112033(n)`
-/

namespace A062525.P13315193131373514077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063571 n) (A112033 n)

end

end A062525.P13315193131373514077

/-! ## A062525.P17197892629918093962

`val(A176768(n), 8)`
-/

namespace A062525.P17197892629918093962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A176768 n).toNat 8

end

end A062525.P17197892629918093962

/-! ## A062525.P3749505275037730709

`A000035(A337442(n+1)+1)*A063571(n)`
-/

namespace A062525.P3749505275037730709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A337442 (n + 1) + 1).toNat * A063571 n

end

end A062525.P3749505275037730709

/-!
# A062526: 9^a(n) is smallest power of 9 containing the string 'n'.

The programs for A062526, there is no canonical definition to state claims against.
-/

/-! ## A062526.P3022374050807259600

`(1-char[1])*A063572(n)`
-/

namespace A062526.P3022374050807259600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A063572 n

end

end A062526.P3022374050807259600

/-! ## A062526.P16920411253169812635

`A063572(n)%A027599(n)`
-/

namespace A062526.P16920411253169812635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063572 n) (A027599 n)

end

end A062526.P16920411253169812635

/-! ## A062526.P5720376826683792316

`lcm(A063572(n), A105812(n))`
-/

namespace A062526.P5720376826683792316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A063572 n) (A105812 n)

end

end A062526.P5720376826683792316

/-! ## A062526.P17586056782503869816

`C(A063572(n), abs(A260196(n)))`
-/

namespace A062526.P17586056782503869816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A063572 n).toNat |A260196 n|.toNat

end

end A062526.P17586056782503869816

/-! ## A062526.P15123498371155196980

`A063572(n)-A000038(xor(1, n))`
-/

namespace A062526.P15123498371155196980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063572 n - A000038 (Nat.xor 1 n)

end

end A062526.P15123498371155196980

/-! ## A062526.P17272395722055890603

`A062521(n)+A063572(n)-A063567(n)`
-/

namespace A062526.P17272395722055890603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062521 n + (A063572 n - A063567 n)

end

end A062526.P17272395722055890603

/-! ## A062526.P7696247610471976345

`A060576(n)*A063572(n)*A060576(n)`
-/

namespace A062526.P7696247610471976345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A063572 n * A060576 n

end

end A062526.P7696247610471976345

/-! ## A062526.P1799343286325283540

`and(-A002064(n), A063572(n))`
-/

namespace A062526.P1799343286325283540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A002064 n) (A063572 n)

end

end A062526.P1799343286325283540

/-! ## A062526.P867067339093546909

`and(A063572(n), A156589(n))`
-/

namespace A062526.P867067339093546909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063572 n) (A156589 n)

end

end A062526.P867067339093546909

/-!
# A062527: Smallest number (>1) which appears at least n times in Pascal's triangle.

The programs for A062527, there is no canonical definition to state claims against.
-/

/-! ## A062527.P14835332938755821525

`A164341(A240558(n+1))`
-/

namespace A062527.P14835332938755821525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164341 (A240558 (n + 1)).toNat

end

end A062527.P14835332938755821525

/-! ## A062527.P14973863992113773714

`filter[A174094(n+2), A133080(#)]`
-/

namespace A062527.P14973863992113773714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174094 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133080 (f1 j).toNat = 1) n)

end

end A062527.P14973863992113773714

/-!
# A062529: Smallest prime p such that there is a gap of 2^n between p and the next prime.

The programs for A062529, there is no canonical definition to state claims against.
-/

/-! ## A062529.P1525420478767617268

`A062530(n)-2^n`
-/

namespace A062529.P1525420478767617268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062530 n - (2 ^ n : ℤ)

end

end A062529.P1525420478767617268

/-! ## A062529.P8157825308746393950

`A000230(floor(2^(n-1)))`
-/

namespace A062529.P8157825308746393950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A062529.P8157825308746393950

/-! ## A062529.P15578584785406447104

`A192495(A001317(n))`
-/

namespace A062529.P15578584785406447104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192495 (A001317 n).toNat

end

end A062529.P15578584785406447104

/-! ## A062529.P9007388862627516842

`A192495(A053576(n))`
-/

namespace A062529.P9007388862627516842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192495 (A053576 n).toNat

end

end A062529.P9007388862627516842

/-! ## A062529.P7483647403814614310

`record[A000230(A297112(n+1))]`
-/

namespace A062529.P7483647403814614310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (A297112 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062529.P7483647403814614310

/-!
# A062530: Smallest prime p such that there is a gap of 2^n between p and previous prime.

The programs for A062530, there is no canonical definition to state claims against.
-/

/-! ## A062530.P9697338063656405598

`A151800(A062529(n))`
-/

namespace A062530.P9697338063656405598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A062529 n).toNat

end

end A062530.P9697338063656405598

/-! ## A062530.P2223972681489191945

`A062529(n)+A000079(n)`
-/

namespace A062530.P2223972681489191945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062529 n + A000079 n

end

end A062530.P2223972681489191945

/-! ## A062530.P16625791413840933551

`A062529(n)+Δ[A000225(n)]`
-/

namespace A062530.P16625791413840933551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062529 n + (f1 (n + 1) - f1 n)

end

end A062530.P16625791413840933551

/-! ## A062530.P8143716998618938685

`A062529(n)+record[A001316(n)]`
-/

namespace A062530.P8143716998618938685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062529 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062530.P8143716998618938685

/-! ## A062530.P17139739060769055836

`A062529(n)+A056503(2*n+1)`
-/

namespace A062530.P17139739060769055836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062529 n + A056503 (2 * n + 1)

end

end A062530.P17139739060769055836

/-!
# A062531: Index of smallest prime p such that there is a gap of 2^n between p and next prime.

The programs for A062531, there is no canonical definition to state claims against.
-/

/-! ## A062531.P7950772335190856896

`A000720(A000230(2^n))`
-/

namespace A062531.P7950772335190856896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000230 (2 ^ n)).toNat

end

end A062531.P7950772335190856896

/-! ## A062531.P8939304473857821828

`A038664(2^n)`
-/

namespace A062531.P8939304473857821828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038664 (2 ^ n)

end

end A062531.P8939304473857821828

/-! ## A062531.P7332516706329460796

`A066493(2^(n+1))`
-/

namespace A062531.P7332516706329460796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066493 (2 ^ (n + 1))

end

end A062531.P7332516706329460796

/-!
# A062532: Odd nonprimes squared, or A014076(n)^2.

The programs for A062532, the canonical program `A062532.P17785931247852482798` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062532 has offset 1).

The definition of A062532 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062532.P17785931247852482798

`A014076(n+1)²`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A062532

/-- `A014076(n+1)²` -/
def P17785931247852482798.Spec : Prop :=
  ∀ n, P17785931247852482798.a n = A062532 (n + 1)

theorem P17785931247852482798.correct : P17785931247852482798.Spec := by
  intro n
  simp only [A062532, Nat.add_sub_cancel]

end A062532

/-! ## A062532.P12678258298774753927

`comp[∪[2*n, p?[2*n+1]]]²`
-/

namespace A062532.P12678258298774753927
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => (f4 j).Prime) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2

end

end A062532.P12678258298774753927

namespace A062532

/-- `comp[∪[2*n, p?[2*n+1]]]²` -/
def P12678258298774753927.Spec : Prop :=
  ∀ n, (P12678258298774753927.a n : ℤ) = A062532 (n + 1)

end A062532

/-! ## A062532.P8242389411819807238

`record[A171435(n+7)²]`
-/

namespace A062532.P8242389411819807238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (n + 7) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062532.P8242389411819807238

namespace A062532

/-- `record[A171435(n+7)²]` -/
def P8242389411819807238.Spec : Prop :=
  ∀ n, P8242389411819807238.a n = A062532 (n + 1)

end A062532

/-! ## A062532.P5549045206809923556

`eq[gcd(2, n), A292438(n)]²`
-/

namespace A062532.P5549045206809923556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A062532.P5549045206809923556

namespace A062532

/-- `eq[gcd(2, n), A292438(n)]²` -/
def P5549045206809923556.Spec : Prop :=
  ∀ n, (P5549045206809923556.a n : ℤ) = A062532 (n + 1)

end A062532

/-! ## A062532.P11560328666163914633

`(2*A047845(n+1)+1)²`
-/

namespace A062532.P11560328666163914633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A047845 (n + 1) + 1) ^ 2

end

end A062532.P11560328666163914633

namespace A062532

/-- `(2*A047845(n+1)+1)²` -/
def P11560328666163914633.Spec : Prop :=
  ∀ n, P11560328666163914633.a n = A062532 (n + 1)

end A062532

/-! ## A062532.P12355331558931406273

`(2*A104275(n+1)-1)²`
-/

namespace A062532.P12355331558931406273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A104275 (n + 1) - 1) ^ 2

end

end A062532.P12355331558931406273

namespace A062532

/-- `(2*A104275(n+1)-1)²` -/
def P12355331558931406273.Spec : Prop :=
  ∀ n, P12355331558931406273.a n = A062532 (n + 1)

end A062532

/-! ## A062532.P9861071560408639573

`record[(2*n+1)^(2%A000005(2*n+1))]`
-/

namespace A062532.P9861071560408639573
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) ^ (Int.tmod 2 (A000005 (2 * n + 1)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062532.P9861071560408639573

namespace A062532

/-- `record[(2*n+1)^(2%A000005(2*n+1))]` -/
def P9861071560408639573.Spec : Prop :=
  ∀ n, P9861071560408639573.a n = (A062532 (n + 1) : ℚ)

end A062532

/-! ## A062532.P9646763260895790094

`(A165971(n+1)+A163300(n+1))*A014076(n+1)`
-/

namespace A062532.P9646763260895790094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A165971 (n + 1) + A163300 (n + 1)) * A014076 (n + 1)

end

end A062532.P9646763260895790094

namespace A062532

/-- `(A165971(n+1)+A163300(n+1))*A014076(n+1)` -/
def P9646763260895790094.Spec : Prop :=
  ∀ n, P9646763260895790094.a n = A062532 (n + 1)

theorem P9646763260895790094.correct : P9646763260895790094.Spec := by
  intro n
  simp only [A062532, Nat.add_sub_cancel, A062532.P9646763260895790094.a, A062532.P17785931247852482798.a, A014076, A014076.P11944548580381270581.f1, A014076.P11944548580381270581.f2, A014076.P11944548580381270581.a, A163300, A163300.P6939037721526909123.a, A165971, A165971.P2237179008475242652.a, A370482, A370482.P9499058320465952393.f1, A370482.P9499058320465952393.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062532

/-! ## A062532.P5518051552349324520

`(A172048(n+1)-A104275(n+1))*A014076(n+1)`
-/

namespace A062532.P5518051552349324520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A172048 (n + 1) - A104275 (n + 1)) * A014076 (n + 1)

end

end A062532.P5518051552349324520

namespace A062532

/-- `(A172048(n+1)-A104275(n+1))*A014076(n+1)` -/
def P5518051552349324520.Spec : Prop :=
  ∀ n, P5518051552349324520.a n = A062532 (n + 1)

theorem P5518051552349324520.correct : P5518051552349324520.Spec := by
  intro n
  simp only [A062532, Nat.add_sub_cancel, A062532.P5518051552349324520.a, A062532.P17785931247852482798.a, A014076, A014076.P11944548580381270581.f1, A014076.P11944548580381270581.f2, A014076.P11944548580381270581.a, A104275, A104275.P760458328655210773.a, A172048, A172048.P1924917802631505532.a, A370482, A370482.P9499058320465952393.f1, A370482.P9499058320465952393.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062532

/-! ## A062532.P5675189224992954923

`(A165955(n+1)-A163300(n+1))*A014076(n+1)`
-/

namespace A062532.P5675189224992954923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A165955 (n + 1) - A163300 (n + 1)) * A014076 (n + 1)

end

end A062532.P5675189224992954923

namespace A062532

/-- `(A165955(n+1)-A163300(n+1))*A014076(n+1)` -/
def P5675189224992954923.Spec : Prop :=
  ∀ n, P5675189224992954923.a n = A062532 (n + 1)

theorem P5675189224992954923.correct : P5675189224992954923.Spec := by
  intro n
  simp only [A062532, Nat.add_sub_cancel, A062532.P5675189224992954923.a, A062532.P17785931247852482798.a, A014076, A014076.P11944548580381270581.f1, A014076.P11944548580381270581.f2, A014076.P11944548580381270581.a, A163300, A163300.P6939037721526909123.a, A165955, A165955.P529933159275814728.a, A370482, A370482.P9499058320465952393.f1, A370482.P9499058320465952393.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062532

/-! ## A062532.P10917119604153506813

`(A014076(n+2)-A067970(n+1))*A014076(n+1)`
-/

namespace A062532.P10917119604153506813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014076 (n + 2) - A067970 (n + 1)) * A014076 (n + 1)

end

end A062532.P10917119604153506813

namespace A062532

/-- `(A014076(n+2)-A067970(n+1))*A014076(n+1)` -/
def P10917119604153506813.Spec : Prop :=
  ∀ n, P10917119604153506813.a n = A062532 (n + 1)

theorem P10917119604153506813.correct : P10917119604153506813.Spec := by
  intro n
  simp only [A062532, Nat.add_sub_cancel, A062532.P10917119604153506813.a, A062532.P17785931247852482798.a, A014076, A014076.P11944548580381270581.f1, A014076.P11944548580381270581.f2, A014076.P11944548580381270581.a, A067970, A067970.P18334042092421451489.a, A370482, A370482.P9499058320465952393.f1, A370482.P9499058320465952393.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062532

/-! ## A062532.P14741592431020225511

`(2-A014092(n+3))²`
-/

namespace A062532.P14741592431020225511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A014092 (n + 3)) ^ 2

end

end A062532.P14741592431020225511

namespace A062532

/-- `(2-A014092(n+3))²` -/
def P14741592431020225511.Spec : Prop :=
  ∀ n, P14741592431020225511.a n = A062532 (n + 1)

end A062532

/-! ## A062532.P11652403039550615609

`record[A171435(A020742(n))]²`
-/

namespace A062532.P11652403039550615609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A020742 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A062532.P11652403039550615609

namespace A062532

/-- `record[A171435(A020742(n))]²` -/
def P11652403039550615609.Spec : Prop :=
  ∀ n, P11652403039550615609.a n = A062532 (n + 1)

end A062532

/-! ## A062532.P5410223202402884252

`A016754(A047845(n+1))`
-/

namespace A062532.P5410223202402884252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (A047845 (n + 1)).toNat

end

end A062532.P5410223202402884252

namespace A062532

/-- `A016754(A047845(n+1))` -/
def P5410223202402884252.Spec : Prop :=
  ∀ n, P5410223202402884252.a n = A062532 (n + 1)

end A062532

/-! ## A062532.P1771019456358734548

`record[A171435(A005408(n))]²`
-/

namespace A062532.P1771019456358734548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A062532.P1771019456358734548

namespace A062532

/-- `record[A171435(A005408(n))]²` -/
def P1771019456358734548.Spec : Prop :=
  ∀ n, P1771019456358734548.a n = A062532 (n + 1)

end A062532

/-! ## A062532.P9441855748208594966

`∩[2*n+1, A018252(n+1)]²`
-/

namespace A062532.P9441855748208594966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A062532.P9441855748208594966

namespace A062532

/-- `∩[2*n+1, A018252(n+1)]²` -/
def P9441855748208594966.Spec : Prop :=
  ∀ n, (P9441855748208594966.a n : ℤ) = A062532 (n + 1)

end A062532

/-! ## A062532.P5780171514992854750

`record[A093178(A018252(n+1))²]`
-/

namespace A062532.P5780171514992854750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A018252 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062532.P5780171514992854750

namespace A062532

/-- `record[A093178(A018252(n+1))²]` -/
def P5780171514992854750.Spec : Prop :=
  ∀ n, P5780171514992854750.a n = A062532 (n + 1)

end A062532

/-! ## A062532.P15224741346307638525

`record[A328478(A018252(n+2))²]`
-/

namespace A062532.P15224741346307638525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328478 (A018252 (n + 2)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062532.P15224741346307638525

namespace A062532

/-- `record[A328478(A018252(n+2))²]` -/
def P15224741346307638525.Spec : Prop :=
  ∀ n, P15224741346307638525.a n = A062532 (n + 1)

end A062532

/-! ## A062532.P4633938864002777504

`A075065(Δ[n²])²`
-/

namespace A062532.P4633938864002777504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075065 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A062532.P4633938864002777504

namespace A062532

/-- `A075065(Δ[n²])²` -/
def P4633938864002777504.Spec : Prop :=
  ∀ n, P4633938864002777504.a n = A062532 (n + 1)

end A062532

/-! ## A062532.P931161926225876356

`A075065(2*n+1)*A075065(2*n+1)`
-/

namespace A062532.P931161926225876356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075065 (2 * n + 1) * A075065 (2 * n + 1)

end

end A062532.P931161926225876356

namespace A062532

/-- `A075065(2*n+1)*A075065(2*n+1)` -/
def P931161926225876356.Spec : Prop :=
  ∀ n, P931161926225876356.a n = A062532 (n + 1)

end A062532

/-!
# A062533: a(n) = A000010(A014076(n)).

The programs for A062533, the canonical program `A062533.P12172443258588165221` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062533 has offset 1).

The definition of A062533 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A014076, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062533.P12172443258588165221

`A000010(A014076(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A062533

/-- `A000010(A014076(n+1))` -/
def P12172443258588165221.Spec : Prop :=
  ∀ n, P12172443258588165221.a n = A062533 (n + 1)

theorem P12172443258588165221.correct : P12172443258588165221.Spec := by
  intro n
  simp only [A062533, Nat.add_sub_cancel]

end A062533

/-! ## A062533.P17538959673807114514

`A000010(sqrt(A062532(n+1)))`
-/

namespace A062533.P17538959673807114514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (Real.sqrt (A062532 (n + 1) : ℝ))).toNat

end

end A062533.P17538959673807114514

namespace A062533

/-- `A000010(sqrt(A062532(n+1)))` -/
def P17538959673807114514.Spec : Prop :=
  ∀ n, P17538959673807114514.a n = A062533 (n + 1)

end A062533

/-! ## A062533.P12800124104262287963

`A000010(record[A171435(n+7)])`
-/

namespace A062533.P12800124104262287963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062533.P12800124104262287963

namespace A062533

/-- `A000010(record[A171435(n+7)])` -/
def P12800124104262287963.Spec : Prop :=
  ∀ n, P12800124104262287963.a n = A062533 (n + 1)

end A062533

/-! ## A062533.P8119652267377881685

`A000010(2*A047845(n+1)+1)`
-/

namespace A062533.P8119652267377881685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * A047845 (n + 1) + 1).toNat

end

end A062533.P8119652267377881685

namespace A062533

/-- `A000010(2*A047845(n+1)+1)` -/
def P8119652267377881685.Spec : Prop :=
  ∀ n, P8119652267377881685.a n = A062533 (n + 1)

end A062533

/-! ## A062533.P12337953174390167495

`A000010(2*A104275(n+1)-1)`
-/

namespace A062533.P12337953174390167495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * A104275 (n + 1) - 1).toNat

end

end A062533.P12337953174390167495

namespace A062533

/-- `A000010(2*A104275(n+1)-1)` -/
def P12337953174390167495.Spec : Prop :=
  ∀ n, P12337953174390167495.a n = A062533 (n + 1)

end A062533

/-! ## A062533.P18143199034458489309

`A062570(A014076(2*n+1-n))`
-/

namespace A062533.P18143199034458489309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (A014076 (2 * n + 1 - n)).toNat

end

end A062533.P18143199034458489309

namespace A062533

/-- `A062570(A014076(2*n+1-n))` -/
def P18143199034458489309.Spec : Prop :=
  ∀ n, P18143199034458489309.a n = A062533 (n + 1)

end A062533

/-! ## A062533.P2395177719736749851

`A000010(2*comp[A005097(n+1)]+1)`
-/

namespace A062533.P2395177719736749851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A062533.P2395177719736749851

namespace A062533

/-- `A000010(2*comp[A005097(n+1)]+1)` -/
def P2395177719736749851.Spec : Prop :=
  ∀ n, P2395177719736749851.a n = A062533 (n + 1)

end A062533

/-! ## A062533.P10203821825115430054

`A000010(record[(2*n+1)*A292438(2*n+1)])`
-/

namespace A062533.P10203821825115430054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A292438 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062533.P10203821825115430054

namespace A062533

/-- `A000010(record[(2*n+1)*A292438(2*n+1)])` -/
def P10203821825115430054.Spec : Prop :=
  ∀ n, P10203821825115430054.a n = A062533 (n + 1)

end A062533

/-! ## A062533.P16607401325954586627

`A000010(sqrt(record[(2*n+1)^(2%A000005(2*n+1))]))`
-/

namespace A062533.P16607401325954586627
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) ^ (Int.tmod 2 (A000005 (2 * n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ))).toNat

end

end A062533.P16607401325954586627

namespace A062533

/-- `A000010(sqrt(record[(2*n+1)^(2%A000005(2*n+1))]))` -/
def P16607401325954586627.Spec : Prop :=
  ∀ n, P16607401325954586627.a n = A062533 (n + 1)

end A062533

/-! ## A062533.P4733168147679877235

`A000010(A047845(n+1)+A047845(n+1)+1)`
-/

namespace A062533.P4733168147679877235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A047845 (n + 1) + (A047845 (n + 1) + 1)).toNat

end

end A062533.P4733168147679877235

namespace A062533

/-- `A000010(A047845(n+1)+A047845(n+1)+1)` -/
def P4733168147679877235.Spec : Prop :=
  ∀ n, P4733168147679877235.a n = A062533 (n + 1)

end A062533

/-! ## A062533.P6804578164505837258

`A000010(A104275(n+1)+A104275(n+1)-1)`
-/

namespace A062533.P6804578164505837258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A104275 (n + 1) + (A104275 (n + 1) - 1)).toNat

end

end A062533.P6804578164505837258

namespace A062533

/-- `A000010(A104275(n+1)+A104275(n+1)-1)` -/
def P6804578164505837258.Spec : Prop :=
  ∀ n, P6804578164505837258.a n = A062533 (n + 1)

end A062533

/-! ## A062533.P14232325632890450718

`A000010(A014092(n+3)-2)`
-/

namespace A062533.P14232325632890450718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A014092 (n + 3) - 2).toNat

end

end A062533.P14232325632890450718

namespace A062533

/-- `A000010(A014092(n+3)-2)` -/
def P14232325632890450718.Spec : Prop :=
  ∀ n, P14232325632890450718.a n = A062533 (n + 1)

end A062533

/-! ## A062533.P6016963493034768802

`A000010(A152482(n+3)-4)`
-/

namespace A062533.P6016963493034768802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A152482 (n + 3) - 4).toNat

end

end A062533.P6016963493034768802

namespace A062533

/-- `A000010(A152482(n+3)-4)` -/
def P6016963493034768802.Spec : Prop :=
  ∀ n, P6016963493034768802.a n = A062533 (n + 1)

end A062533

/-! ## A062533.P9907635279916940026

`A037225(A047845(n+1))`
-/

namespace A062533.P9907635279916940026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 (A047845 (n + 1)).toNat

end

end A062533.P9907635279916940026

namespace A062533

/-- `A037225(A047845(n+1))` -/
def P9907635279916940026.Spec : Prop :=
  ∀ n, P9907635279916940026.a n = A062533 (n + 1)

end A062533

/-! ## A062533.P4605699575853898423

`A000010(∩[2*n+1, A018252(n+1)])`
-/

namespace A062533.P4605699575853898423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A062533.P4605699575853898423

namespace A062533

/-- `A000010(∩[2*n+1, A018252(n+1)])` -/
def P4605699575853898423.Spec : Prop :=
  ∀ n, P4605699575853898423.a n = A062533 (n + 1)

end A062533

/-! ## A062533.P14294864804222911286

`A000010(eq[2, A115716(n)+A107393(n)])`
-/

namespace A062533.P14294864804222911286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115716 n + A107393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062533.P14294864804222911286

namespace A062533

/-- `A000010(eq[2, A115716(n)+A107393(n)])` -/
def P14294864804222911286.Spec : Prop :=
  ∀ n, P14294864804222911286.a n = A062533 (n + 1)

end A062533

/-! ## A062533.P14125249879795798784

`A000010(eq[2-A107393(n), A115716(n)])`
-/

namespace A062533.P14125249879795798784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A107393 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A062533.P14125249879795798784

namespace A062533

/-- `A000010(eq[2-A107393(n), A115716(n)])` -/
def P14125249879795798784.Spec : Prop :=
  ∀ n, P14125249879795798784.a n = A062533 (n + 1)

end A062533

/-! ## A062533.P18082204071666234933

`A000010(A308833(2*n+1)+1)`
-/

namespace A062533.P18082204071666234933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A308833 (2 * n + 1) + 1).toNat

end

end A062533.P18082204071666234933

namespace A062533

/-- `A000010(A308833(2*n+1)+1)` -/
def P18082204071666234933.Spec : Prop :=
  ∀ n, P18082204071666234933.a n = A062533 (n + 1)

end A062533

/-! ## A062533.P5734837389963729849

`A000010(A056653(A073432(n+1)))`
-/

namespace A062533.P5734837389963729849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A056653 (A073432 (n + 1)).toNat).toNat

end

end A062533.P5734837389963729849

namespace A062533

/-- `A000010(A056653(A073432(n+1)))` -/
def P5734837389963729849.Spec : Prop :=
  ∀ n, P5734837389963729849.a n = A062533 (n + 1)

end A062533

/-! ## A062533.P10620338711085851113

`A000010(∩[2*n+1, comp[A000040(n+1)]])`
-/

namespace A062533.P10620338711085851113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n)

end

end A062533.P10620338711085851113

namespace A062533

/-- `A000010(∩[2*n+1, comp[A000040(n+1)]])` -/
def P10620338711085851113.Spec : Prop :=
  ∀ n, P10620338711085851113.a n = A062533 (n + 1)

end A062533

/-!
# A062535: Don't be greedy! Difference between number of squares needed to sum to n using the greedy algorithm and using the best such sum.

The programs for A062535, there is no canonical definition to state claims against.
-/

/-! ## A062535.P15846601071234067903

`A053610(n+1)-A002828(n+1)`
-/

namespace A062535.P15846601071234067903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053610 (n + 1) - A002828 (n + 1)

end

end A062535.P15846601071234067903

/-! ## A062535.P10527208568448376959

`A255131(n+1)-A260740(n+1)`
-/

namespace A062535.P10527208568448376959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255131 (n + 1) - A260740 (n + 1)

end

end A062535.P10527208568448376959

/-! ## A062535.P15909867501465306382

`dr(A007961(n+1))-A002828(n+1)`
-/

namespace A062535.P15909867501465306382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A007961 (n + 1)) : ℤ) - A002828 (n + 1)

end

end A062535.P15909867501465306382

/-! ## A062535.P17075418305766902582

`A255131(n+1)+A053610(n+1)-(n+1)`
-/

namespace A062535.P17075418305766902582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255131 (n + 1) + (A053610 (n + 1) - (n + 1 : ℤ))

end

end A062535.P17075418305766902582

/-! ## A062535.P13013703422912661504

`A007961(A000027(n+1))%9-A002828(A000027(n+1))`
-/

namespace A062535.P13013703422912661504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007961 (A000027 (n + 1)).toNat) 9 - A002828 (A000027 (n + 1)).toNat

end

end A062535.P13013703422912661504

/-!
# A062537: Nodes in riff (rooted index-functional forest) for n.

The programs for A062537, there is no canonical definition to state claims against.
-/

/-! ## A062537.P10901055045287053843

`floor(A111800(n+1)/2)`
-/

namespace A062537.P10901055045287053843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A111800 (n + 1) : ℚ) / 2⌋

end

end A062537.P10901055045287053843

/-! ## A062537.P5718568924688776787

`A004524(A111800(n+1))`
-/

namespace A062537.P5718568924688776787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A111800 (n + 1)).toNat

end

end A062537.P5718568924688776787

/-! ## A062537.P3155624989756742848

`A004526(A111800(n+1)-1)`
-/

namespace A062537.P3155624989756742848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A111800 (n + 1) - 1).toNat

end

end A062537.P3155624989756742848

/-! ## A062537.P17228254850615575099

`A110654(A111800(n+1)-1)`
-/

namespace A062537.P17228254850615575099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A111800 (n + 1) - 1).toNat

end

end A062537.P17228254850615575099

/-! ## A062537.P14562083812278861512

`A273943(A111800(n+1)-1)`
-/

namespace A062537.P14562083812278861512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A111800 (n + 1) - 1).toNat

end

end A062537.P14562083812278861512

/-! ## A062537.P13798354473781112816

`A284965(2*A111800(n+1))`
-/

namespace A062537.P13798354473781112816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284965 (2 * A111800 (n + 1)).toNat

end

end A062537.P13798354473781112816

/-! ## A062537.P4001526994894758787

`A284965(lcm(2, A111800(n+1)))`
-/

namespace A062537.P4001526994894758787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284965 (Int.lcm 2 (A111800 (n + 1)))

end

end A062537.P4001526994894758787

/-! ## A062537.P7964074594333255897

`A004526(or(1, A111800(n+1)))`
-/

namespace A062537.P7964074594333255897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lor 1 (A111800 (n + 1))).toNat

end

end A062537.P7964074594333255897

/-! ## A062537.P2989987606503085282

`A001222(A060546(A111800(n+1)-1))`
-/

namespace A062537.P2989987606503085282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A060546 (A111800 (n + 1) - 1).toNat).toNat

end

end A062537.P2989987606503085282

/-! ## A062537.P3434870467455867811

`A001222(A060546(A111800(n+1))/2)`
-/

namespace A062537.P3434870467455867811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A060546 (A111800 (n + 1)).toNat : ℚ) / 2)).toNat

end

end A062537.P3434870467455867811

/-!
# A062538: Primes of the form 4*k! + 1.

The programs for A062538, there is no canonical definition to state claims against.
-/

/-! ## A062538.P5737364975662214871

`A173322(A076680(n+2))`
-/

namespace A062538.P5737364975662214871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173322 (A076680 (n + 2)).toNat

end

end A062538.P5737364975662214871

/-!
# A062541: a(n) = floor(Pi^n * e^n).

The programs for A062541, the canonical program `A062541.P7225331603651927629` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062541 has offset 0).

The definition of A062541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062541.P7225331603651927629

`floor((π*e)^n)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062541

/-- `floor((π*e)^n)` -/
def P7225331603651927629.Spec : Prop :=
  ∀ n, P7225331603651927629.a n = A062541 n

theorem P7225331603651927629.correct : P7225331603651927629.Spec := by
  intro n
  simp only [A062541]

end A062541

/-! ## A062541.P17500541372888607966

`A121246(n)-a(val(n, n+1))` with `a(0)=1`
-/

namespace A062541.P17500541372888607966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A121246 n - a (SequenceMachineLib.valuation n (n + 1))

end

end A062541.P17500541372888607966

namespace A062541

/-- `A121246(n)-a(val(n, n+1))` -/
def P17500541372888607966.Spec : Prop :=
  ∀ n, P17500541372888607966.a n = A062541 n

end A062541

/-! ## A062541.P7580103574743841477

`A121246(n)-a(A000038(n))` with `a(0)=1`
-/

namespace A062541.P7580103574743841477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A121246 n - a (A000038 n).toNat

end

end A062541.P7580103574743841477

namespace A062541

/-- `A121246(n)-a(A000038(n))` -/
def P7580103574743841477.Spec : Prop :=
  ∀ n, P7580103574743841477.a n = A062541 n

end A062541

/-! ## A062541.P16986315741515855647

`A121246(n)-a(A057427(A004442(n)+1)-1)` with `a(0)=1`
-/

namespace A062541.P16986315741515855647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A121246 n - a (A057427 (A004442 n + 1).toNat - 1).toNat

end

end A062541.P16986315741515855647

namespace A062541

/-- `A121246(n)-a(A057427(A004442(n)+1)-1)` -/
def P16986315741515855647.Spec : Prop :=
  ∀ n, P16986315741515855647.a n = A062541 n

end A062541

/-!
# A062543: Continued fraction expansion of continued fractions constant (base 10).

The programs for A062543, there is no canonical definition to state claims against.
-/

/-! ## A062543.P10373534353513226521

`A086820(n+1)`
-/

namespace A062543.P10373534353513226521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086820 (n + 1)

end

end A062543.P10373534353513226521

/-! ## A062543.P7730611321233706452

`abs(∑[-Δ[A086820(n)]])`
-/

namespace A062543.P7730611321233706452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086820 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A062543.P7730611321233706452

/-! ## A062543.P7764858109855962161

`or(char[2], A086820(-xor(n, -1)))`
-/

namespace A062543.P7764858109855962161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A086820 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A062543.P7764858109855962161

/-! ## A062543.P5330106554775008519

`Δ[∑[A086820(n)]%A028993(n)]`
-/

namespace A062543.P5330106554775008519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086820 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) (A028993 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062543.P5330106554775008519

/-! ## A062543.P3703034977245802104

`abs(A001489(A086820(-xor(n, -1))))`
-/

namespace A062543.P3703034977245802104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 (A086820 (-Int.xor (n : ℤ) (-1)).toNat).toNat|

end

end A062543.P3703034977245802104

/-! ## A062543.P8715683100968449494

`A086820(-xor(n, -1))%A017043(n)`
-/

namespace A062543.P8715683100968449494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086820 (-Int.xor (n : ℤ) (-1)).toNat) (A017043 n)

end

end A062543.P8715683100968449494

/-! ## A062543.P1333633209688906495

`gcd(A000038(n), A086820(-xor(n, -1)))`
-/

namespace A062543.P1333633209688906495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A086820 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A062543.P1333633209688906495

/-!
# A062544: a(n) = n plus sum of previous three terms.

The programs for A062544, the canonical program `A062544.P10994328167772763292` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062544 has offset 0).

The definition of A062544 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062544.P10994328167772763292

`n+a(n-1)+a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062544

/-- `n+a(n-1)+a(n-2)+a(n-3)` -/
def P10994328167772763292.Spec : Prop :=
  ∀ n, (P10994328167772763292.a n : ℤ) = A062544 n

theorem P10994328167772763292.correct : P10994328167772763292.Spec := by
  intro n
  simp only [A062544]

end A062544

/-! ## A062544.P17763656644697952665

`A325473(n+3)-(n+3)`
-/

namespace A062544.P17763656644697952665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325473 (n + 3) - (n + 3 : ℤ)

end

end A062544.P17763656644697952665

namespace A062544

/-- `A325473(n+3)-(n+3)` -/
def P17763656644697952665.Spec : Prop :=
  ∀ n, P17763656644697952665.a n = A062544 n

end A062544

/-! ## A062544.P10912261314770717384

`2*a(n-1)-a(n-4)+1` with `a(0)=0, a(1)=1, a(2)=3, a(3)=7`
-/

namespace A062544.P10912261314770717384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 7] fun n a =>
  2 * a (n - 1) - a (n - 4) + 1

end

end A062544.P10912261314770717384

namespace A062544

/-- `2*a(n-1)-a(n-4)+1` -/
def P10912261314770717384.Spec : Prop :=
  ∀ n, P10912261314770717384.a n = A062544 n

end A062544

/-! ## A062544.P15517367917968430304

`∑[ogf(x/(1-2x+x^4))]`
-/

namespace A062544.P15517367917968430304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, 0, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062544.P15517367917968430304

namespace A062544

/-- `∑[ogf(x/(1-2x+x^4))]` -/
def P15517367917968430304.Spec : Prop :=
  ∀ n, P15517367917968430304.a n = A062544 n

end A062544

/-! ## A062544.P17270804238731061471

`ogf(x/(1-3x+2x^2+x^4-x^5))`
-/

namespace A062544.P17270804238731061471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -3, 2, 0, 1, -1] n

end

end A062544.P17270804238731061471

namespace A062544

/-- `ogf(x/(1-3x+2x^2+x^4-x^5))` -/
def P17270804238731061471.Spec : Prop :=
  ∀ n, P17270804238731061471.a n = A062544 n

end A062544

/-! ## A062544.P17425671782296135275

`∑[2*a(n-1)-a(n-4)]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A062544.P17425671782296135275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062544.P17425671782296135275

namespace A062544

/-- `∑[2*a(n-1)-a(n-4)]` -/
def P17425671782296135275.Spec : Prop :=
  ∀ n, P17425671782296135275.a n = A062544 n

end A062544

/-! ## A062544.P7400657934790786089

`∑[A008937(n)]`
-/

namespace A062544.P7400657934790786089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062544.P7400657934790786089

namespace A062544

/-- `∑[A008937(n)]` -/
def P7400657934790786089.Spec : Prop :=
  ∀ n, P7400657934790786089.a n = A062544 n

end A062544

/-! ## A062544.P13322997184718426236

`∑[∑[∑[A001590(n)]]]`
-/

namespace A062544.P13322997184718426236
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062544.P13322997184718426236

namespace A062544

/-- `∑[∑[∑[A001590(n)]]]` -/
def P13322997184718426236.Spec : Prop :=
  ∀ n, P13322997184718426236.a n = A062544 n

end A062544

/-! ## A062544.P9646137953571337026

`A007800(n+1)-1`
-/

namespace A062544.P9646137953571337026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007800 (n + 1) - 1

end

end A062544.P9646137953571337026

namespace A062544

/-- `A007800(n+1)-1` -/
def P9646137953571337026.Spec : Prop :=
  ∀ n, P9646137953571337026.a n = A062544 n

end A062544

/-! ## A062544.P9151433272084306279

`∑[∑[A000073(n+1)]]`
-/

namespace A062544.P9151433272084306279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062544.P9151433272084306279

namespace A062544

/-- `∑[∑[A000073(n+1)]]` -/
def P9151433272084306279.Spec : Prop :=
  ∀ n, P9151433272084306279.a n = A062544 n

end A062544

/-! ## A062544.P11091681526180399253

`∑[A192804(n+2)-1]`
-/

namespace A062544.P11091681526180399253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062544.P11091681526180399253

namespace A062544

/-- `∑[A192804(n+2)-1]` -/
def P11091681526180399253.Spec : Prop :=
  ∀ n, P11091681526180399253.a n = A062544 n

end A062544

/-! ## A062544.P17466175847721821740

`∑[A317200(n+2)-2]`
-/

namespace A062544.P17466175847721821740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317200 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062544.P17466175847721821740

namespace A062544

/-- `∑[A317200(n+2)-2]` -/
def P17466175847721821740.Spec : Prop :=
  ∀ n, P17466175847721821740.a n = A062544 n

end A062544

/-! ## A062544.P1469464165337550038

`∑[A288465(n)/2-1]`
-/

namespace A062544.P1469464165337550038
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288465 n : ℚ) / 2 - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062544.P1469464165337550038

namespace A062544

/-- `∑[A288465(n)/2-1]` -/
def P1469464165337550038.Spec : Prop :=
  ∀ n, P1469464165337550038.a n = (A062544 n : ℚ)

end A062544

/-! ## A062544.P554464909526127059

`A221949(n+1)-1+n`
-/

namespace A062544.P554464909526127059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221949 (n + 1) - 1 + (n : ℤ)

end

end A062544.P554464909526127059

namespace A062544

/-- `A221949(n+1)-1+n` -/
def P554464909526127059.Spec : Prop :=
  ∀ n, P554464909526127059.a n = A062544 n

end A062544

/-! ## A062544.P7417019029009822469

`∑[floor(A000213(n+2)/2)]`
-/

namespace A062544.P7417019029009822469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000213 (n + 2) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062544.P7417019029009822469

namespace A062544

/-- `∑[floor(A000213(n+2)/2)]` -/
def P7417019029009822469.Spec : Prop :=
  ∀ n, P7417019029009822469.a n = A062544 n

end A062544

/-! ## A062544.P1771072123658049096

`∑[∑[A354784(n+1)/2]]`
-/

namespace A062544.P1771072123658049096
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354784 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062544.P1771072123658049096

namespace A062544

/-- `∑[∑[A354784(n+1)/2]]` -/
def P1771072123658049096.Spec : Prop :=
  ∀ n, P1771072123658049096.a n = (A062544 n : ℚ)

end A062544

/-! ## A062544.P7515205386810567146

`∑[∑[A114952(A014601(n+1))]]`
-/

namespace A062544.P7515205386810567146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114952 (A014601 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062544.P7515205386810567146

namespace A062544

/-- `∑[∑[A114952(A014601(n+1))]]` -/
def P7515205386810567146.Spec : Prop :=
  ∀ n, P7515205386810567146.a n = A062544 n

end A062544

/-! ## A062544.P15534661822380480650

`∑[∑[A000213(n)]-A192804(n)]`
-/

namespace A062544.P15534661822380480650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A192804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062544.P15534661822380480650

namespace A062544

/-- `∑[∑[A000213(n)]-A192804(n)]` -/
def P15534661822380480650.Spec : Prop :=
  ∀ n, P15534661822380480650.a n = A062544 n

end A062544

/-! ## A062544.P11528899293984024512

`∑[∑[A214727(n)-A000213(n)]]`
-/

namespace A062544.P11528899293984024512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n - A000213 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062544.P11528899293984024512

namespace A062544

/-- `∑[∑[A214727(n)-A000213(n)]]` -/
def P11528899293984024512.Spec : Prop :=
  ∀ n, P11528899293984024512.a n = A062544 n

end A062544

/-! ## A062544.P12628462078278724443

`∑[∑[A099330(n+1)+A099329(n+1)]]`
-/

namespace A062544.P12628462078278724443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099330 (n + 1) + A099329 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062544.P12628462078278724443

namespace A062544

/-- `∑[∑[A099330(n+1)+A099329(n+1)]]` -/
def P12628462078278724443.Spec : Prop :=
  ∀ n, P12628462078278724443.a n = A062544 n

end A062544

/-!
# A062545: Continued fraction for the 2nd du Bois-Reymond constant.

The programs for A062545, the canonical program `A062545.P1833333918720680564` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062545 has offset 0).

The definition of A062545 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062545.P1833333918720680564

`2*a(n-1)-a(n-2)` with `a(0)=0, a(1)=5, a(2)=7`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062545

/-- `2*a(n-1)-a(n-2)` -/
def P1833333918720680564.Spec : Prop :=
  ∀ n, P1833333918720680564.a n = A062545 n

theorem P1833333918720680564.correct : P1833333918720680564.Spec := by
  intro n
  simp only [A062545]

end A062545

/-!
# A062547: a(n) is least odd integer not a partial sum of 1, 3, ..., a(n-1).

The programs for A062547, the canonical program `A062547.P9742197210354298882` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062547 has offset 0).

The definition of A062547 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062547.P9742197210354298882

`2*3^((2*n+(-1)^n-1)/4)-(-1)^n`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062547

/-- `2*3^((2*n+(-1)^n-1)/4)-(-1)^n` -/
def P9742197210354298882.Spec : Prop :=
  ∀ n, P9742197210354298882.a n = (A062547 n : ℝ)

end A062547

/-! ## A062547.P2314595407383678165

`ogf((1+4x+5x^2)/(1+x-3x^2-3x^3))`
-/

namespace A062547.P2314595407383678165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 5] [1, 1, -3, -3] n

end

end A062547.P2314595407383678165

namespace A062547

/-- `ogf((1+4x+5x^2)/(1+x-3x^2-3x^3))` -/
def P2314595407383678165.Spec : Prop :=
  ∀ n, P2314595407383678165.a n = A062547 n

end A062547

/-! ## A062547.P14868742985545189430

`xor(1, -xor(2, 1-3*a(n-2)))` with `a(0)=1, a(1)=3`
-/

namespace A062547.P14868742985545189430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.xor 1 (-Int.xor 2 (1 - 3 * a (n - 2)))

end

end A062547.P14868742985545189430

namespace A062547

/-- `xor(1, -xor(2, 1-3*a(n-2)))` -/
def P14868742985545189430.Spec : Prop :=
  ∀ n, P14868742985545189430.a n = A062547 n

end A062547

/-! ## A062547.P387783559449609328

`xor(1, 2*A030439(n))`
-/

namespace A062547.P387783559449609328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * A030439 n)

end

end A062547.P387783559449609328

namespace A062547

/-- `xor(1, 2*A030439(n))` -/
def P387783559449609328.Spec : Prop :=
  ∀ n, P387783559449609328.a n = A062547 n

end A062547

/-! ## A062547.P14016753586547781518

`xor(A117855(n+1), A176040(n))`
-/

namespace A062547.P14016753586547781518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A117855 (n + 1)) (A176040 n)

end

end A062547.P14016753586547781518

namespace A062547

/-- `xor(A117855(n+1), A176040(n))` -/
def P14016753586547781518.Spec : Prop :=
  ∀ n, P14016753586547781518.a n = A062547 n

end A062547

/-! ## A062547.P12182256519923490687

`Δ[or(2, 3*a(n-2))]` with `a(0)=2, a(1)=3`
-/

namespace A062547.P12182256519923490687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  Nat.lor 2 (3 * f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A062547.P12182256519923490687

namespace A062547

/-- `Δ[or(2, 3*a(n-2))]` -/
def P12182256519923490687.Spec : Prop :=
  ∀ n, P12182256519923490687.a n = A062547 n

end A062547

/-! ## A062547.P1384700156290039814

`Δ[A068911(n+1)-gcd(2, n+1)]`
-/

namespace A062547.P1384700156290039814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 (n + 1) - (Nat.gcd 2 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062547.P1384700156290039814

namespace A062547

/-- `Δ[A068911(n+1)-gcd(2, n+1)]` -/
def P1384700156290039814.Spec : Prop :=
  ∀ n, P1384700156290039814.a n = A062547 n

end A062547

/-! ## A062547.P3549076096666630044

`∪[A048473(n), A100702(n)]`
-/

namespace A062547.P3549076096666630044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048473 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100702 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062547.P3549076096666630044

namespace A062547

/-- `∪[A048473(n), A100702(n)]` -/
def P3549076096666630044.Spec : Prop :=
  ∀ n, (P3549076096666630044.a n : ℤ) = A062547 n

end A062547

/-! ## A062547.P5339206932533048252

`∪[A174132(n+1), A081632(n)]`
-/

namespace A062547.P5339206932533048252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081632 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062547.P5339206932533048252

namespace A062547

/-- `∪[A174132(n+1), A081632(n)]` -/
def P5339206932533048252.Spec : Prop :=
  ∀ n, (P5339206932533048252.a n : ℤ) = A062547 n

end A062547

/-! ## A062547.P2225264914583070649

`∪[A100702(n+1)-2, A100702(n+1)]`
-/

namespace A062547.P2225264914583070649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100702 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062547.P2225264914583070649

namespace A062547

/-- `∪[A100702(n+1)-2, A100702(n+1)]` -/
def P2225264914583070649.Spec : Prop :=
  ∀ n, (P2225264914583070649.a n : ℤ) = A062547 n

end A062547

/-! ## A062547.P10690469992669166409

`∪[A062318(2*(n+1)), A062318(2*(n+1))+2]`
-/

namespace A062547.P10690469992669166409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062318 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062318 (2 * (n + 1)) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062547.P10690469992669166409

namespace A062547

/-- `∪[A062318(2*(n+1)), A062318(2*(n+1))+2]` -/
def P10690469992669166409.Spec : Prop :=
  ∀ n, (P10690469992669166409.a n : ℤ) = A062547 n

end A062547

/-!
# A062548: Even integers that are not partial sums of A062547.

The programs for A062548, the canonical program `A062548.P12842819260047087274` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062548 has offset 0).

The definition of A062548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062548.P4759194298820413408

`6*(∑[and(n, -n)^log2(3)]+n)+2`
-/

namespace A062548.P4759194298820413408
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)) + 2

end

end A062548.P4759194298820413408

namespace A062548

/-- `6*(∑[and(n, -n)^log2(3)]+n)+2` -/
def P4759194298820413408.Spec : Prop :=
  ∀ n, P4759194298820413408.a n = (A062548 n : ℝ)

end A062548

/-! ## A062548.P12842819260047087274

`∑[3*a(floor(n/2))-a(n-1)]` with `a(0)=2, a(1)=12`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062548

/-- `∑[3*a(floor(n/2))-a(n-1)]` -/
def P12842819260047087274.Spec : Prop :=
  ∀ n, P12842819260047087274.a n = A062548 n

theorem P12842819260047087274.correct : P12842819260047087274.Spec := by
  intro n
  simp only [A062548]

end A062548

/-! ## A062548.P10602129915578039453

`a(and(n-1, -(n+1)))+a(n-1)+10` with `a(0)=2`
-/

namespace A062548.P10602129915578039453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (Int.land ((n : ℤ) - 1) (-(n + 1 : ℤ))).toNat + a (n - 1) + 10

end

end A062548.P10602129915578039453

namespace A062548

/-- `a(and(n-1, -(n+1)))+a(n-1)+10` -/
def P10602129915578039453.Spec : Prop :=
  ∀ n, (P10602129915578039453.a n : ℤ) = A062548 n

end A062548

/-! ## A062548.P3351603594743482664

`a(n-1-and(n, n-1))+a(n-1)+10` with `a(0)=2`
-/

namespace A062548.P3351603594743482664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a ((n : ℤ) - 1 - Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + a (n - 1) + 10

end

end A062548.P3351603594743482664

namespace A062548

/-- `a(n-1-and(n, n-1))+a(n-1)+10` -/
def P3351603594743482664.Spec : Prop :=
  ∀ n, (P3351603594743482664.a n : ℤ) = A062548 n

end A062548

/-! ## A062548.P2988410804827072429

`2*(2*record[3-(a(n-2)+a(xor(n, n-2)/2))]-3)` with `a(0)=2, a(1)=2`
-/

namespace A062548.P2988410804827072429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  3 - (f1 (n - 2) + f1 (SequenceMachineLib.roundAway ((Int.xor (n : ℤ) ((n : ℤ) - 2) : ℚ) / 2)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 3)

end

end A062548.P2988410804827072429

namespace A062548

/-- `2*(2*record[3-(a(n-2)+a(xor(n, n-2)/2))]-3)` -/
def P2988410804827072429.Spec : Prop :=
  ∀ n, P2988410804827072429.a n = A062548 n

end A062548

/-! ## A062548.P8003298418942849704

`2*A055246(n+1)`
-/

namespace A062548.P8003298418942849704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055246 (n + 1)

end

end A062548.P8003298418942849704

namespace A062548

/-- `2*A055246(n+1)` -/
def P8003298418942849704.Spec : Prop :=
  ∀ n, P8003298418942849704.a n = A062548 n

end A062548

/-! ## A062548.P13047621568440008476

`2*(A190640(n+1)-1)`
-/

namespace A062548.P13047621568440008476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A190640 (n + 1) - 1)

end

end A062548.P13047621568440008476

namespace A062548

/-- `2*(A190640(n+1)-1)` -/
def P13047621568440008476.Spec : Prop :=
  ∀ n, P13047621568440008476.a n = A062548 n

end A062548

/-! ## A062548.P6710324120477453633

`3*A191108(n+1)-1`
-/

namespace A062548.P6710324120477453633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A191108 (n + 1) - 1

end

end A062548.P6710324120477453633

namespace A062548

/-- `3*A191108(n+1)-1` -/
def P6710324120477453633.Spec : Prop :=
  ∀ n, P6710324120477453633.a n = A062548 n

end A062548

/-! ## A062548.P12582985187685073436

`4*A081601(n+1)+2`
-/

namespace A062548.P12582985187685073436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A081601 (n + 1) + 2

end

end A062548.P12582985187685073436

namespace A062548

/-- `4*A081601(n+1)+2` -/
def P12582985187685073436.Spec : Prop :=
  ∀ n, P12582985187685073436.a n = A062548 n

end A062548

/-! ## A062548.P14698411047815366013

`4*A191107(n+1)-2`
-/

namespace A062548.P14698411047815366013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A191107 (n + 1) - 2

end

end A062548.P14698411047815366013

namespace A062548

/-- `4*A191107(n+1)-2` -/
def P14698411047815366013.Spec : Prop :=
  ∀ n, P14698411047815366013.a n = A062548 n

end A062548

/-! ## A062548.P12252910076731896427

`2*(A074939(n)+A074938(n))`
-/

namespace A062548.P12252910076731896427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A074939 n + A074938 n)

end

end A062548.P12252910076731896427

namespace A062548

/-- `2*(A074939(n)+A074938(n))` -/
def P12252910076731896427.Spec : Prop :=
  ∀ n, P12252910076731896427.a n = A062548 n

end A062548

/-! ## A062548.P11413354740816232446

`A055246(n+1)+A190640(n+1)-1`
-/

namespace A062548.P11413354740816232446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055246 (n + 1) + (A190640 (n + 1) - 1)

end

end A062548.P11413354740816232446

namespace A062548

/-- `A055246(n+1)+A190640(n+1)-1` -/
def P11413354740816232446.Spec : Prop :=
  ∀ n, P11413354740816232446.a n = A062548 n

end A062548

/-! ## A062548.P4857555049888279172

`A055246(n+1)+A074939(n)+A074938(n)`
-/

namespace A062548.P4857555049888279172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055246 (n + 1) + (A074939 n + A074938 n)

end

end A062548.P4857555049888279172

namespace A062548

/-- `A055246(n+1)+A074939(n)+A074938(n)` -/
def P4857555049888279172.Spec : Prop :=
  ∀ n, P4857555049888279172.a n = A062548 n

end A062548

/-! ## A062548.P16704521204798488287

`A190640(n+1)+A005823(2*n+1)`
-/

namespace A062548.P16704521204798488287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190640 (n + 1) + A005823 (2 * n + 1)

end

end A062548.P16704521204798488287

namespace A062548

/-- `A190640(n+1)+A005823(2*n+1)` -/
def P16704521204798488287.Spec : Prop :=
  ∀ n, P16704521204798488287.a n = A062548 n

end A062548

/-! ## A062548.P774100705937267557

`A005823(2*n+1)+A005823(2*(n+1))`
-/

namespace A062548.P774100705937267557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (2 * n + 1) + A005823 (2 * (n + 1))

end

end A062548.P774100705937267557

namespace A062548

/-- `A005823(2*n+1)+A005823(2*(n+1))` -/
def P774100705937267557.Spec : Prop :=
  ∀ n, P774100705937267557.a n = A062548 n

end A062548

/-! ## A062548.P10316887781158659567

`A191108(Δ[n²])+1`
-/

namespace A062548.P10316887781158659567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191108 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A062548.P10316887781158659567

namespace A062548

/-- `A191108(Δ[n²])+1` -/
def P10316887781158659567.Spec : Prop :=
  ∀ n, P10316887781158659567.a n = A062548 n

end A062548

/-! ## A062548.P10525923992815855084

`2*A055247(Δ[n²])`
-/

namespace A062548.P10525923992815855084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055247 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A062548.P10525923992815855084

namespace A062548

/-- `2*A055247(Δ[n²])` -/
def P10525923992815855084.Spec : Prop :=
  ∀ n, P10525923992815855084.a n = A062548 n

end A062548

/-! ## A062548.P3577101264119361644

`2*A191106(Δ[n²])`
-/

namespace A062548.P3577101264119361644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191106 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A062548.P3577101264119361644

namespace A062548

/-- `2*A191106(Δ[n²])` -/
def P3577101264119361644.Spec : Prop :=
  ∀ n, P3577101264119361644.a n = A062548 n

end A062548

/-! ## A062548.P6033671254563349245

`A191107(2*n+1)+A191107(n+1)`
-/

namespace A062548.P6033671254563349245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191107 (2 * n + 1) + A191107 (n + 1)

end

end A062548.P6033671254563349245

namespace A062548

/-- `A191107(2*n+1)+A191107(n+1)` -/
def P6033671254563349245.Spec : Prop :=
  ∀ n, P6033671254563349245.a n = A062548 n

end A062548

/-! ## A062548.P4625548648317178230

`A089118(2*n+1)+A005836(2*n+1)`
-/

namespace A062548.P4625548648317178230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089118 (2 * n + 1) + A005836 (2 * n + 1)

end

end A062548.P4625548648317178230

namespace A062548

/-- `A089118(2*n+1)+A005836(2*n+1)` -/
def P4625548648317178230.Spec : Prop :=
  ∀ n, P4625548648317178230.a n = A062548 n

end A062548

/-!
# A062549: a(n) is the smallest number m such that m! is divisible by the left factorial !n (A003422).

The programs for A062549, there is no canonical definition to state claims against.
-/

/-! ## A062549.P14206740685545001599

`A034699(∑[n!])`
-/

namespace A062549.P14206740685545001599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A062549.P14206740685545001599

/-! ## A062549.P14954663683849387242

`A330691(∑[n!])`
-/

namespace A062549.P14954663683849387242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330691 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A062549.P14954663683849387242

/-! ## A062549.P2601907932219301726

`A330741(∑[n!])`
-/

namespace A062549.P2601907932219301726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330741 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A062549.P2601907932219301726

/-! ## A062549.P17815289992500368380

`∑[n!]-A330734(∑[n!])`
-/

namespace A062549.P17815289992500368380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A330734 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A062549.P17815289992500368380

/-! ## A062549.P6882138266116326098

`A034699(∑[n*a(n-1)])` with `a(0)=1`
-/

namespace A062549.P6882138266116326098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A062549.P6882138266116326098

/-!
# A062550: a(n) = Sum_{k = 1..2n} floor(2n/k).

The programs for A062550, the canonical program `A062550.P429279295105592696` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062550 has offset 0).

The definition of A062550 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062550.P429279295105592696

`A006218(2*n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A062550

/-- `A006218(2*n)` -/
def P429279295105592696.Spec : Prop :=
  ∀ n, P429279295105592696.a n = A062550 n

theorem P429279295105592696.correct : P429279295105592696.Spec := by
  intro n
  simp only [A062550]

end A062550

/-! ## A062550.P17359403353188597733

`A056549(n)+A006218(n)`
-/

namespace A062550.P17359403353188597733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056549 n + A006218 n

end

end A062550.P17359403353188597733

namespace A062550

/-- `A056549(n)+A006218(n)` -/
def P17359403353188597733.Spec : Prop :=
  ∀ n, P17359403353188597733.a n = A062550 n

theorem P17359403353188597733.correct : P17359403353188597733.Spec := by
  intro n
  simp only [A062550, Nat.add_sub_cancel, A062550.P17359403353188597733.a, A062550.P429279295105592696.a, A006218, A006218.P9218434490128439557.a, A056549, A056549.P512568632204534587.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062550

/-! ## A062550.P15269676400134846710

`a(n-1)+A000005(2*n-1)+A000005(2*n)` with `a(0)=0`
-/

namespace A062550.P15269676400134846710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A000005 (2 * n - 1) + A000005 (2 * n)

end

end A062550.P15269676400134846710

namespace A062550

/-- `a(n-1)+A000005(2*n-1)+A000005(2*n)` -/
def P15269676400134846710.Spec : Prop :=
  ∀ n, P15269676400134846710.a n = A062550 n

end A062550

/-! ## A062550.P8792779226954582858

`A099055(n)-1`
-/

namespace A062550.P8792779226954582858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099055 n - 1

end

end A062550.P8792779226954582858

namespace A062550

/-- `A099055(n)-1` -/
def P8792779226954582858.Spec : Prop :=
  ∀ n, P8792779226954582858.a n = A062550 n

end A062550

/-! ## A062550.P15560631676681292000

`A339217(n)+2*n`
-/

namespace A062550.P15560631676681292000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339217 n + (2 * n : ℤ)

end

end A062550.P15560631676681292000

namespace A062550

/-- `A339217(n)+2*n` -/
def P15560631676681292000.Spec : Prop :=
  ∀ n, P15560631676681292000.a n = A062550 n

end A062550

/-! ## A062550.P4549505091284079083

`record[A006218(n%or(1, n))]`
-/

namespace A062550.P4549505091284079083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n % Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062550.P4549505091284079083

namespace A062550

/-- `record[A006218(n%or(1, n))]` -/
def P4549505091284079083.Spec : Prop :=
  ∀ n, P4549505091284079083.a n = A062550 n

end A062550

/-! ## A062550.P10651555926485488419

`and(-1, A006218(A005843(n)))`
-/

namespace A062550.P10651555926485488419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A006218 (A005843 n).toNat)

end

end A062550.P10651555926485488419

namespace A062550

/-- `and(-1, A006218(A005843(n)))` -/
def P10651555926485488419.Spec : Prop :=
  ∀ n, P10651555926485488419.a n = A062550 n

end A062550

/-! ## A062550.P297074094190111032

`A054519(n)+A056549(n)-1`
-/

namespace A062550.P297074094190111032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n + (A056549 n - 1)

end

end A062550.P297074094190111032

namespace A062550

/-- `A054519(n)+A056549(n)-1` -/
def P297074094190111032.Spec : Prop :=
  ∀ n, P297074094190111032.a n = A062550 n

theorem P297074094190111032.correct : P297074094190111032.Spec := by
  intro n
  simp only [A062550, Nat.add_sub_cancel, A062550.P297074094190111032.a, A062550.P429279295105592696.a, A006218, A006218.P9218434490128439557.a, A054519, A054519.P3292618312068876157.a, A056549, A056549.P512568632204534587.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062550

/-! ## A062550.P15444480537068038459

`A006218(A004277(n))%(n+1)²`
-/

namespace A062550.P15444480537068038459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006218 (A004277 n).toNat) ((n + 1) ^ 2 : ℤ)

end

end A062550.P15444480537068038459

namespace A062550

/-- `A006218(A004277(n))%(n+1)²` -/
def P15444480537068038459.Spec : Prop :=
  ∀ n, P15444480537068038459.a n = A062550 n

end A062550

/-! ## A062550.P158683537858476766

`A099056(n)-(A099774(n+1)+1)`
-/

namespace A062550.P158683537858476766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099056 n - (A099774 (n + 1) + 1)

end

end A062550.P158683537858476766

namespace A062550

/-- `A099056(n)-(A099774(n+1)+1)` -/
def P158683537858476766.Spec : Prop :=
  ∀ n, P158683537858476766.a n = A062550 n

end A062550

/-! ## A062550.P3124129717947373096

`∑[A092405(2*n+1)]-A092405(2*n+1)`
-/

namespace A062550.P3124129717947373096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092405 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A092405 (2 * n + 1)

end

end A062550.P3124129717947373096

namespace A062550

/-- `∑[A092405(2*n+1)]-A092405(2*n+1)` -/
def P3124129717947373096.Spec : Prop :=
  ∀ n, P3124129717947373096.a n = A062550 n

end A062550

/-! ## A062550.P10688897379936632455

`A057427(n)+A006218(A004277(n))-1`
-/

namespace A062550.P10688897379936632455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (A006218 (A004277 n).toNat - 1)

end

end A062550.P10688897379936632455

namespace A062550

/-- `A057427(n)+A006218(A004277(n))-1` -/
def P10688897379936632455.Spec : Prop :=
  ∀ n, P10688897379936632455.a n = A062550 n

end A062550

/-! ## A062550.P4680599107859642425

`A054519(2*n)-1`
-/

namespace A062550.P4680599107859642425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (2 * n) - 1

end

end A062550.P4680599107859642425

namespace A062550

/-- `A054519(2*n)-1` -/
def P4680599107859642425.Spec : Prop :=
  ∀ n, P4680599107859642425.a n = A062550 n

theorem P4680599107859642425.correct : P4680599107859642425.Spec := by
  intro n
  simp only [A062550, Nat.add_sub_cancel, A062550.P4680599107859642425.a, A062550.P429279295105592696.a, A006218, A006218.P9218434490128439557.a, A054519, A054519.P3292618312068876157.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062550

/-! ## A062550.P18189042323041303686

`∑{d}[2*n, A116477(#)]`
-/

namespace A062550.P18189042323041303686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A116477 d

end

end A062550.P18189042323041303686

namespace A062550

/-- `∑{d}[2*n, A116477(#)]` -/
def P18189042323041303686.Spec : Prop :=
  ∀ n, P18189042323041303686.a n = A062550 n

end A062550

/-! ## A062550.P9709323892395928757

`∑[A274010(2*n)]+2*n`
-/

namespace A062550.P9709323892395928757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274010 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n : ℤ)

end

end A062550.P9709323892395928757

namespace A062550

/-- `∑[A274010(2*n)]+2*n` -/
def P9709323892395928757.Spec : Prop :=
  ∀ n, P9709323892395928757.a n = A062550 n

end A062550

/-! ## A062550.P1005126777270985006

`A002541(A004277(n))+2*n`
-/

namespace A062550.P1005126777270985006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 (A004277 n).toNat + (2 * n : ℤ)

end

end A062550.P1005126777270985006

namespace A062550

/-- `A002541(A004277(n))+2*n` -/
def P1005126777270985006.Spec : Prop :=
  ∀ n, P1005126777270985006.a n = A062550 n

end A062550

/-! ## A062550.P371829146588862880

`A005843(n)+∑[A274010(2*n)]`
-/

namespace A062550.P371829146588862880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274010 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062550.P371829146588862880

namespace A062550

/-- `A005843(n)+∑[A274010(2*n)]` -/
def P371829146588862880.Spec : Prop :=
  ∀ n, P371829146588862880.a n = A062550 n

end A062550

/-! ## A062550.P698941690042678289

`A132106(2*n)-(A000196(2*n)+1)`
-/

namespace A062550.P698941690042678289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132106 (2 * n) - (A000196 (2 * n) + 1)

end

end A062550.P698941690042678289

namespace A062550

/-- `A132106(2*n)-(A000196(2*n)+1)` -/
def P698941690042678289.Spec : Prop :=
  ∀ n, P698941690042678289.a n = A062550 n

theorem P698941690042678289.correct : P698941690042678289.Spec := by
  intro n
  simp only [A062550, Nat.add_sub_cancel, A062550.P698941690042678289.a, A062550.P429279295105592696.a, A000196, A000196.P15434771586934192083.a, A006218, A006218.P9218434490128439557.a, A132106, A132106.P15830577859777000377.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062550

/-! ## A062550.P17603113953842450010

`A350102(Δ[n²])-2`
-/

namespace A062550.P17603113953842450010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350102 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A062550.P17603113953842450010

namespace A062550

/-- `A350102(Δ[n²])-2` -/
def P17603113953842450010.Spec : Prop :=
  ∀ n, P17603113953842450010.a n = A062550 n

end A062550

/-! ## A062550.P5473316370221413883

`A006590(2*n+1)-Δ[n²]`
-/

namespace A062550.P5473316370221413883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006590 (2 * n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A062550.P5473316370221413883

namespace A062550

/-- `A006590(2*n+1)-Δ[n²]` -/
def P5473316370221413883.Spec : Prop :=
  ∀ n, P5473316370221413883.a n = A062550 n

theorem P5473316370221413883.correct : P5473316370221413883.Spec := by
  intro n
  simp only [A062550, Nat.add_sub_cancel, A062550.P5473316370221413883.f1, A062550.P5473316370221413883.a, A062550.P429279295105592696.a, A006218, A006218.P9218434490128439557.a, A006590, A006590.P12269573465856499266.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062550

/-!
# A062551: Primes of the form 3*k! + 1.

The programs for A062551, there is no canonical definition to state claims against.
-/

/-! ## A062551.P2407629994382042742

`A173324(A076679(n+1))`
-/

namespace A062551.P2407629994382042742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173324 (A076679 (n + 1)).toNat

end

end A062551.P2407629994382042742

/-! ## A062551.P5408466473814003209

`A173324(eq[A267537(n)+2, A051888(n)])`
-/

namespace A062551.P5408466473814003209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267537 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173324 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A062551.P5408466473814003209

/-! ## A062551.P4380335859569578563

`record[A362779(n+4)/A105615(n)]`
-/

namespace A062551.P4380335859569578563
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362779 (n + 4) : ℚ) / (A105615 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062551.P4380335859569578563

/-!
# A062553: Number of Abelian subgroups of the dihedral group with 2n elements.

The programs for A062553, the canonical program `A062553.P17272496422338731108` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062553 has offset 1).

The definition of A062553 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062553.P17272496422338731108

`∏{e}[n+1, #+1]+∑[1-∑[n*(-1)^n]]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062553

/-- `∏{e}[n+1, #+1]+∑[1-∑[n*(-1)^n]]` -/
def P17272496422338731108.Spec : Prop :=
  ∀ n, P17272496422338731108.a n = A062553 (n + 1)

theorem P17272496422338731108.correct : P17272496422338731108.Spec := by
  intro n
  simp only [A062553, Nat.add_sub_cancel]

end A062553

/-! ## A062553.P9260811525469519504

`∏{e}[n+1, #+1]+n+∑[n]%(n+1)+1`
-/

namespace A062553.P9260811525469519504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + n + ((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1) + 1)

end

end A062553.P9260811525469519504

namespace A062553

/-- `∏{e}[n+1, #+1]+n+∑[n]%(n+1)+1` -/
def P9260811525469519504.Spec : Prop :=
  ∀ n, (P9260811525469519504.a n : ℤ) = A062553 (n + 1)

end A062553

/-! ## A062553.P709827094384877110

`∑{d}[n+1, ceil(2/#)]+n-∑[∑[n*(-1)^n]]`
-/

namespace A062553.P709827094384877110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈2 / (d : ℚ)⌉ + (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A062553.P709827094384877110

namespace A062553

/-- `∑{d}[n+1, ceil(2/#)]+n-∑[∑[n*(-1)^n]]` -/
def P709827094384877110.Spec : Prop :=
  ∀ n, P709827094384877110.a n = A062553 (n + 1)

end A062553

/-! ## A062553.P5141766185989359317

`(n+1)*(ceil(n/2)+1)+∏{e}[n+1, #+1]-∑[n]`
-/

namespace A062553.P5141766185989359317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (⌈(n : ℚ) / 2⌉ + 1) + (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

end

end A062553.P5141766185989359317

namespace A062553

/-- `(n+1)*(ceil(n/2)+1)+∏{e}[n+1, #+1]-∑[n]` -/
def P5141766185989359317.Spec : Prop :=
  ∀ n, P5141766185989359317.a n = A062553 (n + 1)

end A062553

/-! ## A062553.P6991020000101763335

`∑{d}[n+1, A126246(#)+1]`
-/

namespace A062553.P6991020000101763335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A126246 d + 1)

end

end A062553.P6991020000101763335

namespace A062553

/-- `∑{d}[n+1, A126246(#)+1]` -/
def P6991020000101763335.Spec : Prop :=
  ∀ n, P6991020000101763335.a n = A062553 (n + 1)

end A062553

/-! ## A062553.P6936620616121158204

`∑[2-Δ[lcm(2, n)/2]]+A000005(n+1)`
-/

namespace A062553.P6936620616121158204
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A000005 (n + 1) : ℚ)

end

end A062553.P6936620616121158204

namespace A062553

/-- `∑[2-Δ[lcm(2, n)/2]]+A000005(n+1)` -/
def P6936620616121158204.Spec : Prop :=
  ∀ n, P6936620616121158204.a n = (A062553 (n + 1) : ℚ)

end A062553

/-! ## A062553.P8421767918741310770

`Δ[A085787(n)+A054519(n)]`
-/

namespace A062553.P8421767918741310770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 n + A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062553.P8421767918741310770

namespace A062553

/-- `Δ[A085787(n)+A054519(n)]` -/
def P8421767918741310770.Spec : Prop :=
  ∀ n, P8421767918741310770.a n = A062553 (n + 1)

end A062553

/-! ## A062553.P8504516656761815595

`A000005(n+1)+Δ[A085787(n)]`
-/

namespace A062553.P8504516656761815595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (f1 (n + 1) - f1 n)

end

end A062553.P8504516656761815595

namespace A062553

/-- `A000005(n+1)+Δ[A085787(n)]` -/
def P8504516656761815595.Spec : Prop :=
  ∀ n, P8504516656761815595.a n = A062553 (n + 1)

end A062553

/-! ## A062553.P2964806903433005724

`A080512(n+1)+A000005(n+1)`
-/

namespace A062553.P2964806903433005724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (n + 1) + A000005 (n + 1)

end

end A062553.P2964806903433005724

namespace A062553

/-- `A080512(n+1)+A000005(n+1)` -/
def P2964806903433005724.Spec : Prop :=
  ∀ n, P2964806903433005724.a n = A062553 (n + 1)

end A062553

/-! ## A062553.P8664778267815783892

`A158907(n+1)+A133622(n+1)`
-/

namespace A062553.P8664778267815783892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158907 (n + 1) + A133622 (n + 1)

end

end A062553.P8664778267815783892

namespace A062553

/-- `A158907(n+1)+A133622(n+1)` -/
def P8664778267815783892.Spec : Prop :=
  ∀ n, P8664778267815783892.a n = A062553 (n + 1)

end A062553

/-! ## A062553.P18347173529448087454

`A361003(n+1)+A145051(n+1)`
-/

namespace A062553.P18347173529448087454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361003 (n + 1) + A145051 (n + 1)

end

end A062553.P18347173529448087454

namespace A062553

/-- `A361003(n+1)+A145051(n+1)` -/
def P18347173529448087454.Spec : Prop :=
  ∀ n, P18347173529448087454.a n = A062553 (n + 1)

end A062553

/-! ## A062553.P18075704175486317023

`A007503(n+1)-A296955(n+1)`
-/

namespace A062553.P18075704175486317023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - A296955 (n + 1)

end

end A062553.P18075704175486317023

namespace A062553

/-- `A007503(n+1)-A296955(n+1)` -/
def P18075704175486317023.Spec : Prop :=
  ∀ n, P18075704175486317023.a n = A062553 (n + 1)

end A062553

/-! ## A062553.P12679460789419948741

`A257143(n+1)+A000005(n+1)`
-/

namespace A062553.P12679460789419948741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257143 (n + 1) + A000005 (n + 1)

end

end A062553.P12679460789419948741

namespace A062553

/-- `A257143(n+1)+A000005(n+1)` -/
def P12679460789419948741.Spec : Prop :=
  ∀ n, P12679460789419948741.a n = A062553 (n + 1)

end A062553

/-! ## A062553.P14560901412982612331

`A032742(3*(n+1))+A000005(n+1)`
-/

namespace A062553.P14560901412982612331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (3 * (n + 1)) + A000005 (n + 1)

end

end A062553.P14560901412982612331

namespace A062553

/-- `A032742(3*(n+1))+A000005(n+1)` -/
def P14560901412982612331.Spec : Prop :=
  ∀ n, P14560901412982612331.a n = A062553 (n + 1)

end A062553

/-! ## A062553.P4835060942858686012

`A141674(A000217(n+1))+A080512(n+1)`
-/

namespace A062553.P4835060942858686012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141674 (A000217 (n + 1)).toNat + A080512 (n + 1)

end

end A062553.P4835060942858686012

namespace A062553

/-- `A141674(A000217(n+1))+A080512(n+1)` -/
def P4835060942858686012.Spec : Prop :=
  ∀ n, P4835060942858686012.a n = A062553 (n + 1)

end A062553

/-!
# A062554: Products of numbers of faces of Platonic solids, i.e., of {4,6,8,12,20}.

The programs for A062554, there is no canonical definition to state claims against.
-/

/-! ## A062554.P5975694934822106484

`record[A131883(A167499(A322007(n)))]`
-/

namespace A062554.P5975694934822106484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131883 (A167499 (A322007 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062554.P5975694934822106484

/-! ## A062554.P1370739887290012916

`A036912(A152177(2*n+1)+A055570(n+1))`
-/

namespace A062554.P1370739887290012916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036912 (A152177 (2 * n + 1) + A055570 (n + 1)).toNat

end

end A062554.P1370739887290012916

/-! ## A062554.P1661657365963490597

`record[A092517(A215318(n+1))]`
-/

namespace A062554.P1661657365963490597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092517 (A215318 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062554.P1661657365963490597

/-! ## A062554.P12630087691861702135

`record[A062011(A326118(n)+3)]`
-/

namespace A062554.P12630087691861702135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (A326118 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062554.P12630087691861702135

/-! ## A062554.P6555390372934423334

`record[2*A339147(A085711(n+1))]`
-/

namespace A062554.P6555390372934423334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339147 (A085711 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062554.P6555390372934423334

/-!
# A062557: 2n-1 1's followed by a 2.

The programs for A062557, the canonical program `A062557.P71705879852683758` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062557 has offset 0).

The definition of A062557 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062557.P71705879852683758

`1+floor(sqrt(n+2)+1/2)-floor(sqrt(n+1)+1/2)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062557

/-- `1+floor(sqrt(n+2)+1/2)-floor(sqrt(n+1)+1/2)` -/
def P71705879852683758.Spec : Prop :=
  ∀ n, P71705879852683758.a n = A062557 n

theorem P71705879852683758.correct : P71705879852683758.Spec := by
  intro n
  simp only [A062557]

end A062557

/-! ## A062557.P5450323837376549631

`C(2, Δ[round(sqrt(n+1))])`
-/

namespace A062557.P5450323837376549631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (f1 (n + 1) - f1 n).toNat

end

end A062557.P5450323837376549631

namespace A062557

/-- `C(2, Δ[round(sqrt(n+1))])` -/
def P5450323837376549631.Spec : Prop :=
  ∀ n, (P5450323837376549631.a n : ℤ) = A062557 n

end A062557

/-! ## A062557.P4023966131613708933

`round(cosh(Δ[round(sqrt(n+1))]))`
-/

namespace A062557.P4023966131613708933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (f1 (n + 1) - f1 n : ℝ))

end

end A062557.P4023966131613708933

namespace A062557

/-- `round(cosh(Δ[round(sqrt(n+1))]))` -/
def P4023966131613708933.Spec : Prop :=
  ∀ n, P4023966131613708933.a n = A062557 n

end A062557

/-! ## A062557.P805577186783659152

`floor(ratio[cosh(round(sqrt(n+1)))])`
-/

namespace A062557.P805577186783659152
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) / f1 n⌋

end

end A062557.P805577186783659152

namespace A062557

/-- `floor(ratio[cosh(round(sqrt(n+1)))])` -/
def P805577186783659152.Spec : Prop :=
  ∀ n, P805577186783659152.a n = A062557 n

end A062557

/-! ## A062557.P16547735302638760984

`Δ[2*round(sqrt(n+1))]!`
-/

namespace A062557.P16547735302638760984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (n + 1) - f1 n).toNat

end

end A062557.P16547735302638760984

namespace A062557

/-- `Δ[2*round(sqrt(n+1))]!` -/
def P16547735302638760984.Spec : Prop :=
  ∀ n, (P16547735302638760984.a n : ℤ) = A062557 n

end A062557

/-! ## A062557.P4018504515525203664

`gcd(2, comp[2*comp[(n+1)²]])`
-/

namespace A062557.P4018504515525203664
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A062557.P4018504515525203664

namespace A062557

/-- `gcd(2, comp[2*comp[(n+1)²]])` -/
def P4018504515525203664.Spec : Prop :=
  ∀ n, (P4018504515525203664.a n : ℤ) = A062557 n

end A062557

/-! ## A062557.P7185927185194988954

`dr(char[(n+1)²+n]+1)`
-/

namespace A062557.P7185927185194988954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ)

end

end A062557.P7185927185194988954

namespace A062557

/-- `dr(char[(n+1)²+n]+1)` -/
def P7185927185194988954.Spec : Prop :=
  ∀ n, (P7185927185194988954.a n : ℤ) = A062557 n

end A062557

/-! ## A062557.P5546890986226163832

`A020639(Δ[round(sqrt(n+1))²+n])`
-/

namespace A062557.P5546890986226163832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (n + 1) - f1 n).toNat

end

end A062557.P5546890986226163832

namespace A062557

/-- `A020639(Δ[round(sqrt(n+1))²+n])` -/
def P5546890986226163832.Spec : Prop :=
  ∀ n, P5546890986226163832.a n = A062557 n

end A062557

/-! ## A062557.P10747105670728825650

`A042974(A165776(n))`
-/

namespace A062557.P10747105670728825650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042974 (A165776 n).toNat

end

end A062557.P10747105670728825650

namespace A062557

/-- `A042974(A165776(n))` -/
def P10747105670728825650.Spec : Prop :=
  ∀ n, P10747105670728825650.a n = A062557 n

end A062557

/-! ## A062557.P8029556015631343551

`A373565(A082375(n))`
-/

namespace A062557.P8029556015631343551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 (A082375 n).toNat

end

end A062557.P8029556015631343551

namespace A062557

/-- `A373565(A082375(n))` -/
def P8029556015631343551.Spec : Prop :=
  ∀ n, P8029556015631343551.a n = A062557 n

end A062557

/-! ## A062557.P3182639182328198610

`A373565(A253580(n))`
-/

namespace A062557.P3182639182328198610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 (A253580 n).toNat

end

end A062557.P3182639182328198610

namespace A062557

/-- `A373565(A253580(n))` -/
def P3182639182328198610.Spec : Prop :=
  ∀ n, P3182639182328198610.a n = A062557 n

end A062557

/-! ## A062557.P10599214445880979451

`A000034(A008441(n+1))`
-/

namespace A062557.P10599214445880979451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A008441 (n + 1)).toNat

end

end A062557.P10599214445880979451

namespace A062557

/-- `A000034(A008441(n+1))` -/
def P10599214445880979451.Spec : Prop :=
  ∀ n, P10599214445880979451.a n = A062557 n

end A062557

/-! ## A062557.P1332209036514121774

`A000034(A045834(n+1))`
-/

namespace A062557.P1332209036514121774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A045834 (n + 1)).toNat

end

end A062557.P1332209036514121774

namespace A062557

/-- `A000034(A045834(n+1))` -/
def P1332209036514121774.Spec : Prop :=
  ∀ n, P1332209036514121774.a n = A062557 n

end A062557

/-! ## A062557.P18430533194364105580

`A000034(A053603(n+1))`
-/

namespace A062557.P18430533194364105580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A053603 (n + 1)).toNat

end

end A062557.P18430533194364105580

namespace A062557

/-- `A000034(A053603(n+1))` -/
def P18430533194364105580.Spec : Prop :=
  ∀ n, P18430533194364105580.a n = A062557 n

end A062557

/-! ## A062557.P5163245861789576154

`A042974(A056536(n+1))`
-/

namespace A062557.P5163245861789576154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042974 (A056536 (n + 1)).toNat

end

end A062557.P5163245861789576154

namespace A062557

/-- `A042974(A056536(n+1))` -/
def P5163245861789576154.Spec : Prop :=
  ∀ n, P5163245861789576154.a n = A062557 n

end A062557

/-! ## A062557.P13636373805991309129

`A054977(A179753(n+1))`
-/

namespace A062557.P13636373805991309129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A179753 (n + 1)).toNat

end

end A062557.P13636373805991309129

namespace A062557

/-- `A054977(A179753(n+1))` -/
def P13636373805991309129.Spec : Prop :=
  ∀ n, P13636373805991309129.a n = A062557 n

end A062557

/-! ## A062557.P7620813050944840742

`Δ[comp[ceil(tan(n))²]]`
-/

namespace A062557.P7620813050944840742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (n : ℝ)⌉ ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A062557.P7620813050944840742

namespace A062557

/-- `Δ[comp[ceil(tan(n))²]]` -/
def P7620813050944840742.Spec : Prop :=
  ∀ n, P7620813050944840742.a n = A062557 n

end A062557

/-! ## A062557.P16184598368088004521

`ceil(ratio[cosh(char[∑[2*n]])])`
-/

namespace A062557.P16184598368088004521
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) / f1 n⌉

end

end A062557.P16184598368088004521

namespace A062557

/-- `ceil(ratio[cosh(char[∑[2*n]])])` -/
def P16184598368088004521.Spec : Prop :=
  ∀ n, P16184598368088004521.a n = A062557 n

end A062557

/-! ## A062557.P599483746999426240

`round(ratio[cosh(char[∑[2*n]])])`
-/

namespace A062557.P599483746999426240
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) / f1 n)

end

end A062557.P599483746999426240

namespace A062557

/-- `round(ratio[cosh(char[∑[2*n]])])` -/
def P599483746999426240.Spec : Prop :=
  ∀ n, P599483746999426240.a n = A062557 n

end A062557

/-!
# A062558: Number of nonisomorphic cyclic subgroups of dihedral group with 2n elements.

The programs for A062558, the canonical program `A062558.P7608322866353480072` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062558 has offset 1).

The definition of A062558 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062558.P46152694150441041

`A000005(n+1)+(n+1)%2`
-/

namespace A062558.P46152694150441041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (((n + 1) % 2 : ℕ) : ℤ)

end

end A062558.P46152694150441041

namespace A062558

/-- `A000005(n+1)+(n+1)%2` -/
def P46152694150441041.Spec : Prop :=
  ∀ n, P46152694150441041.a n = A062558 (n + 1)

end A062558

/-! ## A062558.P7608322866353480072

`A000005(n+1)+A000035(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062558

/-- `A000005(n+1)+A000035(n+1)` -/
def P7608322866353480072.Spec : Prop :=
  ∀ n, P7608322866353480072.a n = A062558 (n + 1)

theorem P7608322866353480072.correct : P7608322866353480072.Spec := by
  intro n
  simp only [A062558, Nat.add_sub_cancel]

end A062558

/-! ## A062558.P15966429081755228340

`∑{d}[n+1, 2%#/2]+2`
-/

namespace A062558.P15966429081755228340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((2 % d : ℕ) : ℚ) / 2 + 2

end

end A062558.P15966429081755228340

namespace A062558

/-- `∑{d}[n+1, 2%#/2]+2` -/
def P15966429081755228340.Spec : Prop :=
  ∀ n, P15966429081755228340.a n = (A062558 (n + 1) : ℚ)

end A062558

/-! ## A062558.P1442744615526529963

`∏{e}[n+1, #+1]+char[2*n]`
-/

namespace A062558.P1442744615526529963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + (if ∃ j, f2 j = n then 1 else 0)

end

end A062558.P1442744615526529963

namespace A062558

/-- `∏{e}[n+1, #+1]+char[2*n]` -/
def P1442744615526529963.Spec : Prop :=
  ∀ n, (P1442744615526529963.a n : ℤ) = A062558 (n + 1)

end A062558

/-! ## A062558.P11371278030914963209

`A076984(n+1)+1`
-/

namespace A062558.P11371278030914963209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (n + 1) + 1

end

end A062558.P11371278030914963209

namespace A062558

/-- `A076984(n+1)+1` -/
def P11371278030914963209.Spec : Prop :=
  ∀ n, P11371278030914963209.a n = A062558 (n + 1)

theorem P11371278030914963209.correct : P11371278030914963209.Spec := by
  intro n
  simp only [A062558, Nat.add_sub_cancel, A062558.P11371278030914963209.a, A062558.P7608322866353480072.a, A000005, A000005.P16091521709108585461.a, A000035, A000035.P2023072528413494694.a, A076984, A076984.P13104546406193990713.a, A023645, A023645.P14181426108447540437.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062558

/-! ## A062558.P497795809054125755

`A023645(n+1)+2`
-/

namespace A062558.P497795809054125755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 1) + 2

end

end A062558.P497795809054125755

namespace A062558

/-- `A023645(n+1)+2` -/
def P497795809054125755.Spec : Prop :=
  ∀ n, P497795809054125755.a n = A062558 (n + 1)

theorem P497795809054125755.correct : P497795809054125755.Spec := by
  intro n
  simp only [A062558, Nat.add_sub_cancel, A062558.P497795809054125755.a, A062558.P7608322866353480072.a, A000005, A000005.P16091521709108585461.a, A000035, A000035.P2023072528413494694.a, A023645, A023645.P14181426108447540437.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062558

/-! ## A062558.P12789431239222226092

`A032741(n+1)+gcd(2, n)`
-/

namespace A062558.P12789431239222226092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + (Nat.gcd 2 n : ℤ)

end

end A062558.P12789431239222226092

namespace A062558

/-- `A032741(n+1)+gcd(2, n)` -/
def P12789431239222226092.Spec : Prop :=
  ∀ n, P12789431239222226092.a n = A062558 (n + 1)

end A062558

/-! ## A062558.P767679057571224491

`A296966(n+1)/(n+1)+2`
-/

namespace A062558.P767679057571224491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296966 (n + 1) : ℚ) / (n + 1 : ℚ) + 2

end

end A062558.P767679057571224491

namespace A062558

/-- `A296966(n+1)/(n+1)+2` -/
def P767679057571224491.Spec : Prop :=
  ∀ n, P767679057571224491.a n = (A062558 (n + 1) : ℚ)

theorem P767679057571224491.correct : P767679057571224491.Spec := by
  intro n
  simp only [A062558, Nat.add_sub_cancel, A062558.P767679057571224491.a, A062558.P7608322866353480072.a, A000005, A000005.P16091521709108585461.a, A000035, A000035.P2023072528413494694.a, A296966, A296966.P18250778610313653592.a, A023645, A023645.P14181426108447540437.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062558

/-! ## A062558.P11973866286511513534

`A080513(A086369(n+1))`
-/

namespace A062558.P11973866286511513534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A086369 (n + 1)).toNat

end

end A062558.P11973866286511513534

namespace A062558

/-- `A080513(A086369(n+1))` -/
def P11973866286511513534.Spec : Prop :=
  ∀ n, P11973866286511513534.a n = A062558 (n + 1)

end A062558

/-! ## A062558.P15763118280637510624

`A080513(A360999(n+1))`
-/

namespace A062558.P15763118280637510624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A360999 (n + 1)).toNat

end

end A062558.P15763118280637510624

namespace A062558

/-- `A080513(A360999(n+1))` -/
def P15763118280637510624.Spec : Prop :=
  ∀ n, P15763118280637510624.a n = A062558 (n + 1)

end A062558

/-! ## A062558.P6207194346730912349

`A325765(n)+A040001(n)`
-/

namespace A062558.P6207194346730912349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 n + A040001 n

end

end A062558.P6207194346730912349

namespace A062558

/-- `A325765(n)+A040001(n)` -/
def P6207194346730912349.Spec : Prop :=
  ∀ n, P6207194346730912349.a n = A062558 (n + 1)

end A062558

/-! ## A062558.P7560107825134497592

`A003056(A337362(n+1))+1`
-/

namespace A062558.P7560107825134497592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A337362 (n + 1)).toNat + 1

end

end A062558.P7560107825134497592

namespace A062558

/-- `A003056(A337362(n+1))+1` -/
def P7560107825134497592.Spec : Prop :=
  ∀ n, P7560107825134497592.a n = A062558 (n + 1)

end A062558

/-! ## A062558.P16648947499267864122

`A014430(A348665(n+1))+1`
-/

namespace A062558.P16648947499267864122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 (A348665 (n + 1)).toNat + 1

end

end A062558.P16648947499267864122

namespace A062558

/-- `A014430(A348665(n+1))+1` -/
def P16648947499267864122.Spec : Prop :=
  ∀ n, P16648947499267864122.a n = A062558 (n + 1)

end A062558

/-! ## A062558.P12678927089009382622

`A003056(A337363(n+1))+2`
-/

namespace A062558.P12678927089009382622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A337363 (n + 1)).toNat + 2

end

end A062558.P12678927089009382622

namespace A062558

/-- `A003056(A337363(n+1))+2` -/
def P12678927089009382622.Spec : Prop :=
  ∀ n, P12678927089009382622.a n = A062558 (n + 1)

end A062558

/-! ## A062558.P17706319708124171946

`A059841(n)+A000005(n+1)`
-/

namespace A062558.P17706319708124171946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A000005 (n + 1)

end

end A062558.P17706319708124171946

namespace A062558

/-- `A059841(n)+A000005(n+1)` -/
def P17706319708124171946.Spec : Prop :=
  ∀ n, P17706319708124171946.a n = A062558 (n + 1)

end A062558

/-! ## A062558.P9481908026832116042

`A373925(n+1)+A010702(n)`
-/

namespace A062558.P9481908026832116042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373925 (n + 1) + A010702 n

end

end A062558.P9481908026832116042

namespace A062558

/-- `A373925(n+1)+A010702(n)` -/
def P9481908026832116042.Spec : Prop :=
  ∀ n, P9481908026832116042.a n = A062558 (n + 1)

end A062558

/-! ## A062558.P2495610509447451766

`A037852(n+1)-A010674(n)`
-/

namespace A062558.P2495610509447451766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037852 (n + 1) - A010674 n

end

end A062558.P2495610509447451766

namespace A062558

/-- `A037852(n+1)-A010674(n)` -/
def P2495610509447451766.Spec : Prop :=
  ∀ n, P2495610509447451766.a n = A062558 (n + 1)

end A062558

/-! ## A062558.P9769632486012503224

`A334954(n+1)-A000035(n)`
-/

namespace A062558.P9769632486012503224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - A000035 n

end

end A062558.P9769632486012503224

namespace A062558

/-- `A334954(n+1)-A000035(n)` -/
def P9769632486012503224.Spec : Prop :=
  ∀ n, P9769632486012503224.a n = A062558 (n + 1)

end A062558

/-! ## A062558.P9219858743009045860

`A176059(n)-A378216(n+1)`
-/

namespace A062558.P9219858743009045860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 n - A378216 (n + 1)

end

end A062558.P9219858743009045860

namespace A062558

/-- `A176059(n)-A378216(n+1)` -/
def P9219858743009045860.Spec : Prop :=
  ∀ n, P9219858743009045860.a n = A062558 (n + 1)

end A062558

/-! ## A062558.P3201566603115517239

`A000005(n+1)+A056594(n)²`
-/

namespace A062558.P3201566603115517239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A056594 n ^ 2

end

end A062558.P3201566603115517239

namespace A062558

/-- `A000005(n+1)+A056594(n)²` -/
def P3201566603115517239.Spec : Prop :=
  ∀ n, P3201566603115517239.a n = A062558 (n + 1)

end A062558

/-!
# A062559: A B2 sequence consisting of powers of primes but not primes: a(n) = least value from A025475 such that sequence increases and pairwise sums of distinct elements are all distinct.

The programs for A062559, there is no canonical definition to state claims against.
-/

/-! ## A062559.P16479181828719967165

`A115651(A342951(n+2))`
-/

namespace A062559.P16479181828719967165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115651 (A342951 (n + 2)).toNat

end

end A062559.P16479181828719967165

/-! ## A062559.P14429794899720243112

`A001597(lt[A277103(n), n])`
-/

namespace A062559.P14429794899720243112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277103 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A062559.P14429794899720243112

/-! ## A062559.P7342854313506913167

`∩[A088949(n+1), A322741(n+1)]`
-/

namespace A062559.P7342854313506913167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062559.P7342854313506913167

/-! ## A062559.P2685388301983034315

`∩[A134612(n+1), A322741(n+1)]`
-/

namespace A062559.P2685388301983034315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062559.P2685388301983034315

/-!
# A062561: a(n) = 3*binomial(2*n, n-1).

The programs for A062561, the canonical program `A062561.P8999694222887573335` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062561 has offset 0).

The definition of A062561 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062561.P8999694222887573335

`3*n*A000108(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062561

/-- `3*n*A000108(n)` -/
def P8999694222887573335.Spec : Prop :=
  ∀ n, P8999694222887573335.a n = A062561 n

theorem P8999694222887573335.correct : P8999694222887573335.Spec := by
  intro n
  simp only [A062561]

end A062561

/-! ## A062561.P12092945720198026233

`3*A001791(n)`
-/

namespace A062561.P12092945720198026233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001791 n

end

end A062561.P12092945720198026233

namespace A062561

/-- `3*A001791(n)` -/
def P12092945720198026233.Spec : Prop :=
  ∀ n, P12092945720198026233.a n = A062561 n

theorem P12092945720198026233.correct : P12092945720198026233.Spec := by
  intro n
  simp only [A062561, Nat.add_sub_cancel, A062561.P12092945720198026233.a, A062561.P8999694222887573335.a, A000108, A000108.P17551949696095299361.a, A001791, A001791.P9713013280951293137.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062561

/-! ## A062561.P10282598165560760141

`Δ[3*A279561(n)]`
-/

namespace A062561.P10282598165560760141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A279561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062561.P10282598165560760141

namespace A062561

/-- `Δ[3*A279561(n)]` -/
def P10282598165560760141.Spec : Prop :=
  ∀ n, P10282598165560760141.a n = A062561 n

end A062561

/-! ## A062561.P16061337046134194484

`3*(A323229(n)-1)`
-/

namespace A062561.P16061337046134194484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A323229 n - 1)

end

end A062561.P16061337046134194484

namespace A062561

/-- `3*(A323229(n)-1)` -/
def P16061337046134194484.Spec : Prop :=
  ∀ n, P16061337046134194484.a n = A062561 n

end A062561

/-! ## A062561.P4628759541179613626

`3*A037952(2*n)`
-/

namespace A062561.P4628759541179613626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A037952 (2 * n)

end

end A062561.P4628759541179613626

namespace A062561

/-- `3*A037952(2*n)` -/
def P4628759541179613626.Spec : Prop :=
  ∀ n, P4628759541179613626.a n = A062561 n

end A062561

/-! ## A062561.P18101055637944773562

`3*A037955(2*n)`
-/

namespace A062561.P18101055637944773562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A037955 (2 * n)

end

end A062561.P18101055637944773562

namespace A062561

/-- `3*A037955(2*n)` -/
def P18101055637944773562.Spec : Prop :=
  ∀ n, P18101055637944773562.a n = A062561 n

end A062561

/-! ## A062561.P7967980520219155767

`3/2*A162551(n)`
-/

namespace A062561.P7967980520219155767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A162551 n : ℚ)

end

end A062561.P7967980520219155767

namespace A062561

/-- `3/2*A162551(n)` -/
def P7967980520219155767.Spec : Prop :=
  ∀ n, P7967980520219155767.a n = (A062561 n : ℚ)

theorem P7967980520219155767.correct : P7967980520219155767.Spec := by
  intro n
  simp only [A062561, Nat.add_sub_cancel, A062561.P7967980520219155767.a, A062561.P8999694222887573335.a, A000108, A000108.P17551949696095299361.a, A162551, A162551.P10524967716150044895.a, A001791, A001791.P9713013280951293137.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062561

/-! ## A062561.P14420256350642476248

`n*A120589(n+1)`
-/

namespace A062561.P14420256350642476248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A120589 (n + 1)

end

end A062561.P14420256350642476248

namespace A062561

/-- `n*A120589(n+1)` -/
def P14420256350642476248.Spec : Prop :=
  ∀ n, P14420256350642476248.a n = A062561 n

end A062561

/-! ## A062561.P3457010243534421314

`(n+2)*A000245(n)`
-/

namespace A062561.P3457010243534421314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000245 n

end

end A062561.P3457010243534421314

namespace A062561

/-- `(n+2)*A000245(n)` -/
def P3457010243534421314.Spec : Prop :=
  ∀ n, P3457010243534421314.a n = A062561 n

end A062561

/-! ## A062561.P14820479911101200096

`n*(A171556(n)+2)`
-/

namespace A062561.P14820479911101200096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A171556 n + 2)

end

end A062561.P14820479911101200096

namespace A062561

/-- `n*(A171556(n)+2)` -/
def P14820479911101200096.Spec : Prop :=
  ∀ n, P14820479911101200096.a n = A062561 n

theorem P14820479911101200096.correct : P14820479911101200096.Spec := by
  intro n
  simp only [A062561, Nat.add_sub_cancel, A062561.P14820479911101200096.a, A062561.P8999694222887573335.a, A000108, A000108.P17551949696095299361.a, A171556, A171556.P13391373783144301351.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062561

/-! ## A062561.P9818911302573224295

`n*A126324(Δ[n²])`
-/

namespace A062561.P9818911302573224295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A126324 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A062561.P9818911302573224295

namespace A062561

/-- `n*A126324(Δ[n²])` -/
def P9818911302573224295.Spec : Prop :=
  ∀ n, P9818911302573224295.a n = A062561 n

end A062561

/-! ## A062561.P9160000075038850252

`record[abs(n*A115142(n))]`
-/

namespace A062561.P9160000075038850252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A115142 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062561.P9160000075038850252

namespace A062561

/-- `record[abs(n*A115142(n))]` -/
def P9160000075038850252.Spec : Prop :=
  ∀ n, P9160000075038850252.a n = A062561 n

end A062561

/-! ## A062561.P11039180619583476175

`(n+2)*Δ[A120304(n)]`
-/

namespace A062561.P11039180619583476175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A062561.P11039180619583476175

namespace A062561

/-- `(n+2)*Δ[A120304(n)]` -/
def P11039180619583476175.Spec : Prop :=
  ∀ n, P11039180619583476175.a n = A062561 n

end A062561

/-! ## A062561.P5359847747197003778

`3/4*A128650(n+2)`
-/

namespace A062561.P5359847747197003778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A128650 (n + 2) : ℚ)

end

end A062561.P5359847747197003778

namespace A062561

/-- `3/4*A128650(n+2)` -/
def P5359847747197003778.Spec : Prop :=
  ∀ n, P5359847747197003778.a n = (A062561 n : ℚ)

theorem P5359847747197003778.correct : P5359847747197003778.Spec := by
  intro n
  simp only [A062561, Nat.add_sub_cancel, A062561.P5359847747197003778.a, A062561.P8999694222887573335.a, A000108, A000108.P17551949696095299361.a, A128650, A128650.P16731929856799845103.a, A001791, A001791.P9713013280951293137.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062561

/-! ## A062561.P8575102380868019840

`3*n*A120588(n+1)`
-/

namespace A062561.P8575102380868019840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) * A120588 (n + 1))

end

end A062561.P8575102380868019840

namespace A062561

/-- `3*n*A120588(n+1)` -/
def P8575102380868019840.Spec : Prop :=
  ∀ n, P8575102380868019840.a n = A062561 n

end A062561

/-! ## A062561.P4629849091171586475

`n/(n+1)*A144706(n)`
-/

namespace A062561.P4629849091171586475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 1 : ℚ) * (A144706 n : ℚ)

end

end A062561.P4629849091171586475

namespace A062561

/-- `n/(n+1)*A144706(n)` -/
def P4629849091171586475.Spec : Prop :=
  ∀ n, P4629849091171586475.a n = (A062561 n : ℚ)

end A062561

/-! ## A062561.P12827783031010250251

`n*3*A028329(n)/(2*(n+1))`
-/

namespace A062561.P12827783031010250251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (3 * ((A028329 n : ℚ) / (2 * (n + 1) : ℚ)))

end

end A062561.P12827783031010250251

namespace A062561

/-- `n*3*A028329(n)/(2*(n+1))` -/
def P12827783031010250251.Spec : Prop :=
  ∀ n, P12827783031010250251.a n = (A062561 n : ℚ)

end A062561

/-! ## A062561.P6851296696231857301

`Δ[abs(A182492(4*n+3))]*(n+2)`
-/

namespace A062561.P6851296696231857301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182492 (4 * n + 3)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (n + 2 : ℤ)

end

end A062561.P6851296696231857301

namespace A062561

/-- `Δ[abs(A182492(4*n+3))]*(n+2)` -/
def P6851296696231857301.Spec : Prop :=
  ∀ n, P6851296696231857301.a n = A062561 n

end A062561

/-! ## A062561.P17624324474621209211

`A162551(n)+A001791(n)`
-/

namespace A062561.P17624324474621209211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162551 n + A001791 n

end

end A062561.P17624324474621209211

namespace A062561

/-- `A162551(n)+A001791(n)` -/
def P17624324474621209211.Spec : Prop :=
  ∀ n, P17624324474621209211.a n = A062561 n

theorem P17624324474621209211.correct : P17624324474621209211.Spec := by
  intro n
  simp only [A062561, Nat.add_sub_cancel, A062561.P17624324474621209211.a, A062561.P8999694222887573335.a, A000108, A000108.P17551949696095299361.a, A001791, A001791.P9713013280951293137.a, A162551, A162551.P10524967716150044895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062561

/-! ## A062561.P16382939804351092858

`A276666(n)+A001700(n)`
-/

namespace A062561.P16382939804351092858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276666 n + A001700 n

end

end A062561.P16382939804351092858

namespace A062561

/-- `A276666(n)+A001700(n)` -/
def P16382939804351092858.Spec : Prop :=
  ∀ n, P16382939804351092858.a n = A062561 n

end A062561

/-!
# A062562: a(n) = Sum_{k=1..n} mu(k)*sigma(k).

The programs for A062562, the canonical program `A062562.P16887642206633692389` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062562 has offset 0).

The definition of A062562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062562.P15223200727097529052

`∑[∑{d}[n, #*A008683(n)]]`
-/

namespace A062562.P15223200727097529052
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (d : ℤ) * A008683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062562.P15223200727097529052

namespace A062562

/-- `∑[∑{d}[n, #*A008683(n)]]` -/
def P15223200727097529052.Spec : Prop :=
  ∀ n, P15223200727097529052.a n = A062562 n

end A062562

/-! ## A062562.P16887642206633692389

`∑[∑{d}[n, A055615(n)/#]]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A062562

/-- `∑[∑{d}[n, A055615(n)/#]]` -/
def P16887642206633692389.Spec : Prop :=
  ∀ n, P16887642206633692389.a n = (A062562 n : ℚ)

end A062562

/-! ## A062562.P5519690666290566779

`A063441(n)+a(n-1)` with `a(0)=0`
-/

namespace A062562.P5519690666290566779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A063441 n + a (n - 1)

end

end A062562.P5519690666290566779

namespace A062562

/-- `A063441(n)+a(n-1)` -/
def P5519690666290566779.Spec : Prop :=
  ∀ n, P5519690666290566779.a n = A062562 n

end A062562

/-! ## A062562.P3707047084435489011

`∑[A063441(round(sqrt(n²+1)))]-1`
-/

namespace A062562.P3707047084435489011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063441 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A062562.P3707047084435489011

namespace A062562

/-- `∑[A063441(round(sqrt(n²+1)))]-1` -/
def P3707047084435489011.Spec : Prop :=
  ∀ n, P3707047084435489011.a n = A062562 n

end A062562

/-! ## A062562.P5145120287685177244

`a(n-1)+A000203(n)*A008683(n)` with `a(0)=0`
-/

namespace A062562.P5145120287685177244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A000203 n * A008683 n

end

end A062562.P5145120287685177244

namespace A062562

/-- `a(n-1)+A000203(n)*A008683(n)` -/
def P5145120287685177244.Spec : Prop :=
  ∀ n, P5145120287685177244.a n = A062562 n

end A062562

/-! ## A062562.P10838233174639469550

`∑[A063441(A014681(A092486(n)))]`
-/

namespace A062562.P10838233174639469550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063441 (A014681 (A092486 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062562.P10838233174639469550

namespace A062562

/-- `∑[A063441(A014681(A092486(n)))]` -/
def P10838233174639469550.Spec : Prop :=
  ∀ n, P10838233174639469550.a n = A062562 n

end A062562

/-! ## A062562.P368786825310502953

`∑[A063441(A002260(A052905(n+2)))]`
-/

namespace A062562.P368786825310502953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063441 (A002260 (A052905 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062562.P368786825310502953

namespace A062562

/-- `∑[A063441(A002260(A052905(n+2)))]` -/
def P368786825310502953.Spec : Prop :=
  ∀ n, P368786825310502953.a n = A062562 n

end A062562

/-!
# A062563: a(n) = Sum_{k=1..n} d(k)* mu(k), where d(k) is the number of divisors function.

The programs for A062563, the canonical program `A062563.P825600180456380098` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062563 has offset 1).

The definition of A062563 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062563.P825600180456380098

`∑[∏{e}[n+1, -C(2, #²)]]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062563

/-- `∑[∏{e}[n+1, -C(2, #²)]]` -/
def P825600180456380098.Spec : Prop :=
  ∀ n, P825600180456380098.a n = A062563 (n + 1)

theorem P825600180456380098.correct : P825600180456380098.Spec := by
  intro n
  simp only [A062563, Nat.add_sub_cancel]

end A062563

/-! ## A062563.P17640762379338144927

`∑[∏{e}[n+1, 2%#²-2]]`
-/

namespace A062563.P17640762379338144927
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (((2 % Nat.factorization (f2 n) p ^ 2 : ℕ) : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062563.P17640762379338144927

namespace A062563

/-- `∑[∏{e}[n+1, 2%#²-2]]` -/
def P17640762379338144927.Spec : Prop :=
  ∀ n, P17640762379338144927.a n = A062563 (n + 1)

end A062563

/-! ## A062563.P282672441356601538

`∑[∏{e}[n+1, -and(2, 2^#)]]`
-/

namespace A062563.P282672441356601538
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-(Nat.land 2 (2 ^ Nat.factorization (f2 n) p) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062563.P282672441356601538

namespace A062563

/-- `∑[∏{e}[n+1, -and(2, 2^#)]]` -/
def P282672441356601538.Spec : Prop :=
  ∀ n, P282672441356601538.a n = A062563 (n + 1)

end A062563

/-! ## A062563.P2693930493766871094

`∑[∏{e}[n+1, -floor(2/#²)]]`
-/

namespace A062563.P2693930493766871094
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-⌊2 / (Nat.factorization (f2 n) p ^ 2 : ℚ)⌋)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062563.P2693930493766871094

namespace A062563

/-- `∑[∏{e}[n+1, -floor(2/#²)]]` -/
def P2693930493766871094.Spec : Prop :=
  ∀ n, P2693930493766871094.a n = A062563 (n + 1)

end A062563

/-! ## A062563.P13709508040925602841

`∑[A226177(n+1)]`
-/

namespace A062563.P13709508040925602841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062563.P13709508040925602841

namespace A062563

/-- `∑[A226177(n+1)]` -/
def P13709508040925602841.Spec : Prop :=
  ∀ n, P13709508040925602841.a n = A062563 (n + 1)

end A062563

/-! ## A062563.P5338547865030591133

`∑[∑{d}[n+1, A008683(lcm(#, n+1))]]`
-/

namespace A062563.P5338547865030591133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A008683 (Nat.lcm d (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062563.P5338547865030591133

namespace A062563

/-- `∑[∑{d}[n+1, A008683(lcm(#, n+1))]]` -/
def P5338547865030591133.Spec : Prop :=
  ∀ n, P5338547865030591133.a n = A062563 (n + 1)

end A062563

/-! ## A062563.P4872543270912280521

`∑[A008683(n+1)*Δ[A006218(n)]]`
-/

namespace A062563.P4872543270912280521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062563.P4872543270912280521

namespace A062563

/-- `∑[A008683(n+1)*Δ[A006218(n)]]` -/
def P4872543270912280521.Spec : Prop :=
  ∀ n, P4872543270912280521.a n = A062563 (n + 1)

end A062563

/-! ## A062563.P2927253712611533103

`∑[A000005(n+1)*A008683(n+1)]`
-/

namespace A062563.P2927253712611533103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062563.P2927253712611533103

namespace A062563

/-- `∑[A000005(n+1)*A008683(n+1)]` -/
def P2927253712611533103.Spec : Prop :=
  ∀ n, P2927253712611533103.a n = A062563 (n + 1)

end A062563

/-! ## A062563.P8756316375926319197

`∑[A008683(n+1)*A073184(n+1)]`
-/

namespace A062563.P8756316375926319197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A073184 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062563.P8756316375926319197

namespace A062563

/-- `∑[A008683(n+1)*A073184(n+1)]` -/
def P8756316375926319197.Spec : Prop :=
  ∀ n, P8756316375926319197.a n = A062563 (n + 1)

end A062563

/-! ## A062563.P18252612087285456291

`∑[A008683(n+1)*A074823(n+1)]`
-/

namespace A062563.P18252612087285456291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A074823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062563.P18252612087285456291

namespace A062563

/-- `∑[A008683(n+1)*A074823(n+1)]` -/
def P18252612087285456291.Spec : Prop :=
  ∀ n, P18252612087285456291.a n = A062563 (n + 1)

end A062563

/-! ## A062563.P7139961698147579644

`∑[A074823(n+1)*A092152(n+1)]`
-/

namespace A062563.P7139961698147579644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074823 (n + 1) * A092152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062563.P7139961698147579644

namespace A062563

/-- `∑[A074823(n+1)*A092152(n+1)]` -/
def P7139961698147579644.Spec : Prop :=
  ∀ n, P7139961698147579644.a n = A062563 (n + 1)

end A062563

/-! ## A062563.P5968690376832041543

`∑[A008683(n+1)*A286324(n+1)]`
-/

namespace A062563.P5968690376832041543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A286324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062563.P5968690376832041543

namespace A062563

/-- `∑[A008683(n+1)*A286324(n+1)]` -/
def P5968690376832041543.Spec : Prop :=
  ∀ n, P5968690376832041543.a n = A062563 (n + 1)

end A062563

/-! ## A062563.P15566891223882953494

`∑[A008683(n+1)*A293442(n+1)]`
-/

namespace A062563.P15566891223882953494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A293442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062563.P15566891223882953494

namespace A062563

/-- `∑[A008683(n+1)*A293442(n+1)]` -/
def P15566891223882953494.Spec : Prop :=
  ∀ n, P15566891223882953494.a n = A062563 (n + 1)

end A062563

/-! ## A062563.P13337140895971405261

`∑[A008683(n+1)*A303809(n+1)]`
-/

namespace A062563.P13337140895971405261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A303809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062563.P13337140895971405261

namespace A062563

/-- `∑[A008683(n+1)*A303809(n+1)]` -/
def P13337140895971405261.Spec : Prop :=
  ∀ n, P13337140895971405261.a n = A062563 (n + 1)

end A062563

/-! ## A062563.P7682584317529676509

`∑[(A007423(n+1)-1)*A303809(n+1)]`
-/

namespace A062563.P7682584317529676509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007423 (n + 1) - 1) * A303809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062563.P7682584317529676509

namespace A062563

/-- `∑[(A007423(n+1)-1)*A303809(n+1)]` -/
def P7682584317529676509.Spec : Prop :=
  ∀ n, P7682584317529676509.a n = A062563 (n + 1)

end A062563

/-! ## A062563.P12578134905683361088

`∑[2^A001221(n+1)*A008683(n+1)]`
-/

namespace A062563.P12578134905683361088
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (n + 1) : ℤ) * (A008683 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062563.P12578134905683361088

namespace A062563

/-- `∑[2^A001221(n+1)*A008683(n+1)]` -/
def P12578134905683361088.Spec : Prop :=
  ∀ n, P12578134905683361088.a n = (A062563 (n + 1) : ℚ)

end A062563

/-! ## A062563.P5663776998293586420

`∑[2^A001222(n+1)*A008683(n+1)]`
-/

namespace A062563.P5663776998293586420
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A008683 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062563.P5663776998293586420

namespace A062563

/-- `∑[2^A001222(n+1)*A008683(n+1)]` -/
def P5663776998293586420.Spec : Prop :=
  ∀ n, P5663776998293586420.a n = (A062563 (n + 1) : ℚ)

end A062563

/-! ## A062563.P8796460348568313460

`∑[A162512(n+1)%2*A073184(n+1)]`
-/

namespace A062563.P8796460348568313460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162512 (n + 1)) 2 * A073184 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062563.P8796460348568313460

namespace A062563

/-- `∑[A162512(n+1)%2*A073184(n+1)]` -/
def P8796460348568313460.Spec : Prop :=
  ∀ n, P8796460348568313460.a n = A062563 (n + 1)

end A062563

/-! ## A062563.P11970699817985338978

`∑[A326814(n+1)%2*A073184(n+1)]`
-/

namespace A062563.P11970699817985338978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326814 (n + 1)) 2 * A073184 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062563.P11970699817985338978

namespace A062563

/-- `∑[A326814(n+1)%2*A073184(n+1)]` -/
def P11970699817985338978.Spec : Prop :=
  ∀ n, P11970699817985338978.a n = A062563 (n + 1)

end A062563

/-! ## A062563.P9672792296637363815

`∑[A038040(n+1)/(n+1)*A008683(n+1)]`
-/

namespace A062563.P9672792296637363815
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (n + 1 : ℚ) * (A008683 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062563.P9672792296637363815

namespace A062563

/-- `∑[A038040(n+1)/(n+1)*A008683(n+1)]` -/
def P9672792296637363815.Spec : Prop :=
  ∀ n, P9672792296637363815.a n = (A062563 (n + 1) : ℚ)

end A062563

/-!
# A062565: Squarefree parts of 3-smooth numbers.

The programs for A062565, there is no canonical definition to state claims against.
-/

/-! ## A062565.P6477906204017259570

`A007913(A003586(n+1))`
-/

namespace A062565.P6477906204017259570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A003586 (n + 1)).toNat

end

end A062565.P6477906204017259570

/-! ## A062565.P6926176903231195504

`A007913(∑[A061987(n)])`
-/

namespace A062565.P6926176903231195504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A062565.P6926176903231195504

/-! ## A062565.P366657695633417463

`A007913(Δ[A259823(n)])`
-/

namespace A062565.P366657695633417463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (n + 1) - f1 n).toNat

end

end A062565.P366657695633417463

/-! ## A062565.P17447576089503596636

`A007913(sqrt(A025620(n+1)))`
-/

namespace A062565.P17447576089503596636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway (Real.sqrt (A025620 (n + 1) : ℝ))).toNat

end

end A062565.P17447576089503596636

/-! ## A062565.P18142938696833121220

`A007913(A069353(n+1)+1)`
-/

namespace A062565.P18142938696833121220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A069353 (n + 1) + 1).toNat

end

end A062565.P18142938696833121220

/-! ## A062565.P9361842824822514896

`A007913(A055600(n+1)-1)`
-/

namespace A062565.P9361842824822514896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A055600 (n + 1) - 1).toNat

end

end A062565.P9361842824822514896

/-! ## A062565.P10709137692107238542

`A007913(A007694(n+2)/2)`
-/

namespace A062565.P10709137692107238542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((A007694 (n + 2) : ℚ) / 2)).toNat

end

end A062565.P10709137692107238542

/-! ## A062565.P8318111144493046491

`A007913(A065119(n+1)/3)`
-/

namespace A062565.P8318111144493046491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((A065119 (n + 1) : ℚ) / 3)).toNat

end

end A062565.P8318111144493046491

/-! ## A062565.P18378232391233341946

`A007913(A033845(n+1)/6)`
-/

namespace A062565.P18378232391233341946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((A033845 (n + 1) : ℚ) / 6)).toNat

end

end A062565.P18378232391233341946

/-! ## A062565.P6651288148725229724

`A007913(root(A025620(n+1), 2))`
-/

namespace A062565.P6651288148725229724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((A025620 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A062565.P6651288148725229724

/-! ## A062565.P14343532313445830015

`A007913(A025620(n+1)^(1/2))`
-/

namespace A062565.P14343532313445830015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((A025620 (n + 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ))).toNat

end

end A062565.P14343532313445830015

/-! ## A062565.P9159723987282576497

`A007913(A259823(n+1)-A259823(n))`
-/

namespace A062565.P9159723987282576497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A259823 (n + 1) - A259823 n).toNat

end

end A062565.P9159723987282576497

/-!
# A062566: Squarefree parts of highly composite numbers (definition 1) (A002182).

The programs for A062566, there is no canonical definition to state claims against.
-/

/-! ## A062566.P738542161660662804

`A007913(A002182(n+1))`
-/

namespace A062566.P738542161660662804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A002182 (n + 1)).toNat

end

end A062566.P738542161660662804

/-! ## A062566.P9584270085169875494

`A319865(n+1)/A007913(A301413(n+1))`
-/

namespace A062566.P9584270085169875494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319865 (n + 1) : ℚ) / (A007913 (A301413 (n + 1)).toNat : ℚ)

end

end A062566.P9584270085169875494

/-! ## A062566.P11225232004169574881

`A002110(A108602(n+1))/A007913(A301413(n+1))`
-/

namespace A062566.P11225232004169574881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (A108602 (n + 1)).toNat : ℚ) / (A007913 (A301413 (n + 1)).toNat : ℚ)

end

end A062566.P11225232004169574881

/-! ## A062566.P4951742050847022792

`A002182(n+1)/A053143(A301413(n+1))`
-/

namespace A062566.P4951742050847022792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002182 (n + 1) : ℚ) / (A053143 (A301413 (n + 1)).toNat : ℚ)

end

end A062566.P4951742050847022792

/-! ## A062566.P1204722881887170504

`sqrt(A046952(n+1))/A053143(A301413(n+1))`
-/

namespace A062566.P1204722881887170504
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A046952 (n + 1) : ℝ) / (A053143 (A301413 (n + 1)).toNat : ℝ)

end

end A062566.P1204722881887170504

/-!
# A062568: a(n) is the smallest n-digit strong pseudoprime (in base 2).

The programs for A062568, there is no canonical definition to state claims against.
-/

/-! ## A062568.P899578111325444186

`A001262(A055552(n+3)+1)`
-/

namespace A062568.P899578111325444186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001262 (A055552 (n + 3) + 1).toNat

end

end A062568.P899578111325444186

/-!
# A062569: a(n) = sigma(n!).

The programs for A062569, the canonical program `A062569.P12462537230288650074` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062569 has offset 0).

The definition of A062569 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n!)` (program `A062569.P12462537230288650074`, by `A062569.P12462537230288650074.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062569.P12462537230288650074

`A000203(n!)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062569

/-- `A000203(n!)` -/
def P12462537230288650074.Spec : Prop :=
  ∀ n, P12462537230288650074.a n = A062569 n

theorem P12462537230288650074.correct : P12462537230288650074.Spec := by
  intro n
  simp only [A062569]

end A062569

/-! ## A062569.P5415659174355555500

`A000203(A000142(n))`
-/

namespace A062569.P5415659174355555500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000142 n).toNat

end

end A062569.P5415659174355555500

namespace A062569

/-- `A000203(A000142(n))` -/
def P5415659174355555500.Spec : Prop :=
  ∀ n, P5415659174355555500.a n = A062569 n

end A062569

/-! ## A062569.P2048332282387446553

`A153824(n)+n!`
-/

namespace A062569.P2048332282387446553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153824 n + (Nat.factorial n : ℤ)

end

end A062569.P2048332282387446553

namespace A062569

/-- `A153824(n)+n!` -/
def P2048332282387446553.Spec : Prop :=
  ∀ n, P2048332282387446553.a n = A062569 n

theorem P2048332282387446553.correct : P2048332282387446553.Spec := by
  intro n
  simp only [A062569, Nat.add_sub_cancel, A062569.P2048332282387446553.a, A062569.P12462537230288650074.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A153824, A153824.P12658510175369252475.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062569

/-! ## A062569.P14614199495265087685

`A153824(n)+A000142(n)`
-/

namespace A062569.P14614199495265087685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153824 n + A000142 n

end

end A062569.P14614199495265087685

namespace A062569

/-- `A153824(n)+A000142(n)` -/
def P14614199495265087685.Spec : Prop :=
  ∀ n, P14614199495265087685.a n = A062569 n

theorem P14614199495265087685.correct : P14614199495265087685.Spec := by
  intro n
  simp only [A062569, Nat.add_sub_cancel, A062569.P14614199495265087685.a, A062569.P12462537230288650074.a, A000142, A000142.P3272619076580183195.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A153824, A153824.P12658510175369252475.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062569

/-! ## A062569.P11757353898305424395

`A153824(n)+A094587(∑[n])`
-/

namespace A062569.P11757353898305424395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153824 n + A094587 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A062569.P11757353898305424395

namespace A062569

/-- `A153824(n)+A094587(∑[n])` -/
def P11757353898305424395.Spec : Prop :=
  ∀ n, P11757353898305424395.a n = A062569 n

end A062569

/-! ## A062569.P643445416484985663

`A153824(n)+Δ[A003422(n)]`
-/

namespace A062569.P643445416484985663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153824 n + (f1 (n + 1) - f1 n)

end

end A062569.P643445416484985663

namespace A062569

/-- `A153824(n)+Δ[A003422(n)]` -/
def P643445416484985663.Spec : Prop :=
  ∀ n, P643445416484985663.a n = A062569 n

end A062569

/-! ## A062569.P8948814277580643822

`A153824(n)+∏[A028310(n)]`
-/

namespace A062569.P8948814277580643822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153824 n + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A062569.P8948814277580643822

namespace A062569

/-- `A153824(n)+∏[A028310(n)]` -/
def P8948814277580643822.Spec : Prop :=
  ∀ n, P8948814277580643822.a n = A062569 n

end A062569

/-! ## A062569.P17658436673203093502

`A153824(n)+A008279(A000096(n))`
-/

namespace A062569.P17658436673203093502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153824 n + A008279 (A000096 n).toNat

end

end A062569.P17658436673203093502

namespace A062569

/-- `A153824(n)+A008279(A000096(n))` -/
def P17658436673203093502.Spec : Prop :=
  ∀ n, P17658436673203093502.a n = A062569 n

end A062569

/-! ## A062569.P3554123100909725787

`A153824(n)+A047920(A000217(n))`
-/

namespace A062569.P3554123100909725787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153824 n + A047920 (A000217 n).toNat

end

end A062569.P3554123100909725787

namespace A062569

/-- `A153824(n)+A047920(A000217(n))` -/
def P3554123100909725787.Spec : Prop :=
  ∀ n, P3554123100909725787.a n = A062569 n

end A062569

/-!
# A062570: a(n) = phi(2*n).

The programs for A062570, the canonical program `A062570.P5428503589991079502` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062570 has offset 1).

The definition of A062570 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062570.P5428503589991079502

`A000010(2*(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A062570

/-- `A000010(2*(n+1))` -/
def P5428503589991079502.Spec : Prop :=
  ∀ n, P5428503589991079502.a n = A062570 (n + 1)

theorem P5428503589991079502.correct : P5428503589991079502.Spec := by
  intro n
  simp only [A062570, Nat.add_sub_cancel]

end A062570

/-! ## A062570.P15469525683880986353

`A055034(2*(n+1))`
-/

namespace A062570.P15469525683880986353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (2 * (n + 1))

end

end A062570.P15469525683880986353

namespace A062570

/-- `A055034(2*(n+1))` -/
def P15469525683880986353.Spec : Prop :=
  ∀ n, P15469525683880986353.a n = A062570 (n + 1)

end A062570

/-! ## A062570.P1551803237326392765

`Δ[A049690(n)]`
-/

namespace A062570.P1551803237326392765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062570.P1551803237326392765

namespace A062570

/-- `Δ[A049690(n)]` -/
def P1551803237326392765.Spec : Prop :=
  ∀ n, P1551803237326392765.a n = A062570 (n + 1)

end A062570

/-! ## A062570.P17544074787432227870

`A300236(4*(n+1))`
-/

namespace A062570.P17544074787432227870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300236 (4 * (n + 1))

end

end A062570.P17544074787432227870

namespace A062570

/-- `A300236(4*(n+1))` -/
def P17544074787432227870.Spec : Prop :=
  ∀ n, P17544074787432227870.a n = A062570 (n + 1)

end A062570

/-! ## A062570.P3790029466509703023

`A300721(4*(n+1))`
-/

namespace A062570.P3790029466509703023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300721 (4 * (n + 1))

end

end A062570.P3790029466509703023

namespace A062570

/-- `A300721(4*(n+1))` -/
def P3790029466509703023.Spec : Prop :=
  ∀ n, P3790029466509703023.a n = A062570 (n + 1)

end A062570

/-! ## A062570.P7806104135748853558

`A305804(4*(n+1))`
-/

namespace A062570.P7806104135748853558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305804 (4 * (n + 1))

end

end A062570.P7806104135748853558

namespace A062570

/-- `A305804(4*(n+1))` -/
def P7806104135748853558.Spec : Prop :=
  ∀ n, P7806104135748853558.a n = A062570 (n + 1)

end A062570

/-! ## A062570.P4888832655669727788

`1-A176095(n+1)+n`
-/

namespace A062570.P4888832655669727788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A176095 (n + 1) + (n : ℤ)

end

end A062570.P4888832655669727788

namespace A062570

/-- `1-A176095(n+1)+n` -/
def P4888832655669727788.Spec : Prop :=
  ∀ n, P4888832655669727788.a n = A062570 (n + 1)

theorem P4888832655669727788.correct : P4888832655669727788.Spec := by
  intro n
  simp only [A062570, Nat.add_sub_cancel, A062570.P4888832655669727788.a, A062570.P5428503589991079502.a, A000010, A000010.P4673923239450215316.a, A176095, A176095.P2915123819155161039.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062570

/-! ## A062570.P18394382401760506140

`2*(n+1)-A053196(n+1)`
-/

namespace A062570.P18394382401760506140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A053196 (n + 1)

end

end A062570.P18394382401760506140

namespace A062570

/-- `2*(n+1)-A053196(n+1)` -/
def P18394382401760506140.Spec : Prop :=
  ∀ n, P18394382401760506140.a n = A062570 (n + 1)

end A062570

/-! ## A062570.P2206864446725348228

`A000010(n+2+n)%(n+2)`
-/

namespace A062570.P2206864446725348228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 2 + n)) (n + 2 : ℤ)

end

end A062570.P2206864446725348228

namespace A062570

/-- `A000010(n+2+n)%(n+2)` -/
def P2206864446725348228.Spec : Prop :=
  ∀ n, P2206864446725348228.a n = A062570 (n + 1)

end A062570

/-! ## A062570.P3615083016982686933

`A000010((n+2)²-n²)/2`
-/

namespace A062570.P3615083016982686933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 ((n + 2) ^ 2 - n ^ 2) : ℚ) / 2

end

end A062570.P3615083016982686933

namespace A062570

/-- `A000010((n+2)²-n²)/2` -/
def P3615083016982686933.Spec : Prop :=
  ∀ n, P3615083016982686933.a n = (A062570 (n + 1) : ℚ)

end A062570

/-! ## A062570.P4691894690017265869

`∑{d}[n+1, #*A087003((n+1)/#)]`
-/

namespace A062570.P4691894690017265869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A087003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062570.P4691894690017265869

namespace A062570

/-- `∑{d}[n+1, #*A087003((n+1)/#)]` -/
def P4691894690017265869.Spec : Prop :=
  ∀ n, P4691894690017265869.a n = A062570 (n + 1)

end A062570

/-! ## A062570.P1517481611303833947

`gcd(2, n-1)*A000010(2*n-(n-1))`
-/

namespace A062570.P1517481611303833947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 ((n : ℤ) - 1) : ℤ) * A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

end

end A062570.P1517481611303833947

namespace A062570

/-- `gcd(2, n-1)*A000010(2*n-(n-1))` -/
def P1517481611303833947.Spec : Prop :=
  ∀ n, P1517481611303833947.a n = A062570 (n + 1)

end A062570

/-! ## A062570.P11601950376410567095

`A066792(n)/A333169(n)`
-/

namespace A062570.P11601950376410567095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066792 n : ℚ) / (A333169 n : ℚ)

end

end A062570.P11601950376410567095

namespace A062570

/-- `A066792(n)/A333169(n)` -/
def P11601950376410567095.Spec : Prop :=
  ∀ n, P11601950376410567095.a n = (A062570 (n + 1) : ℚ)

end A062570

/-! ## A062570.P5110302925448170301

`A049690(n+1)-A049690(n)`
-/

namespace A062570.P5110302925448170301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 (n + 1) - A049690 n

end

end A062570.P5110302925448170301

namespace A062570

/-- `A049690(n+1)-A049690(n)` -/
def P5110302925448170301.Spec : Prop :=
  ∀ n, P5110302925448170301.a n = A062570 (n + 1)

end A062570

/-! ## A062570.P15333231003939014270

`A140434(n+1)/A040001(n)`
-/

namespace A062570.P15333231003939014270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140434 (n + 1) : ℚ) / (A040001 n : ℚ)

end

end A062570.P15333231003939014270

namespace A062570

/-- `A140434(n+1)/A040001(n)` -/
def P15333231003939014270.Spec : Prop :=
  ∀ n, P15333231003939014270.a n = (A062570 (n + 1) : ℚ)

end A062570

/-! ## A062570.P5793940003394162707

`A319998(n+1)+A080736(n+1)`
-/

namespace A062570.P5793940003394162707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319998 (n + 1) + A080736 (n + 1)

end

end A062570.P5793940003394162707

namespace A062570

/-- `A319998(n+1)+A080736(n+1)` -/
def P5793940003394162707.Spec : Prop :=
  ∀ n, P5793940003394162707.a n = A062570 (n + 1)

end A062570

/-! ## A062570.P8877834853778920198

`A064400(n+1)%A047235(n+1)`
-/

namespace A062570.P8877834853778920198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064400 (n + 1)) (A047235 (n + 1))

end

end A062570.P8877834853778920198

namespace A062570

/-- `A064400(n+1)%A047235(n+1)` -/
def P8877834853778920198.Spec : Prop :=
  ∀ n, P8877834853778920198.a n = A062570 (n + 1)

end A062570

/-! ## A062570.P13248758734103050037

`gcd(A002618(n+1), A140434(n+1))`
-/

namespace A062570.P13248758734103050037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002618 (n + 1)) (A140434 (n + 1))

end

end A062570.P13248758734103050037

namespace A062570

/-- `gcd(A002618(n+1), A140434(n+1))` -/
def P13248758734103050037.Spec : Prop :=
  ∀ n, (P13248758734103050037.a n : ℤ) = A062570 (n + 1)

end A062570

/-! ## A062570.P12097581965008002080

`gcd(A002246(n+1), A299822(n+1))`
-/

namespace A062570.P12097581965008002080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002246 (n + 1)) (A299822 (n + 1))

end

end A062570.P12097581965008002080

namespace A062570

/-- `gcd(A002246(n+1), A299822(n+1))` -/
def P12097581965008002080.Spec : Prop :=
  ∀ n, (P12097581965008002080.a n : ℤ) = A062570 (n + 1)

end A062570

/-! ## A062570.P5522823873392164871

`∑{d}[n+1, A000265(#)*A067856((n+1)/#)]`
-/

namespace A062570.P5522823873392164871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000265 d * A067856 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062570.P5522823873392164871

namespace A062570

/-- `∑{d}[n+1, A000265(#)*A067856((n+1)/#)]` -/
def P5522823873392164871.Spec : Prop :=
  ∀ n, P5522823873392164871.a n = A062570 (n + 1)

end A062570

/-!
# A062571: a(n) = minimum over nonnegative integers m of the size of the largest subset of pairwise relatively prime numbers in {m+1, m+2, ..., m+n}.

The programs for A062571, there is no canonical definition to state claims against.
-/

/-! ## A062571.P13704136277816392340

`round(sqrt(A314440(ceil(n/2))))`
-/

namespace A062571.P13704136277816392340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A314440 ⌈(n : ℚ) / 2⌉.toNat : ℝ))

end

end A062571.P13704136277816392340

/-! ## A062571.P11325844250268599448

`∑[char[A031876(A006218(n))]]`
-/

namespace A062571.P11325844250268599448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031876 (A006218 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062571.P11325844250268599448

/-! ## A062571.P13149987405882010551

`A061017(∑[char[A031876(n)]])`
-/

namespace A062571.P13149987405882010551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031876 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A062571.P13149987405882010551

/-! ## A062571.P8721139096005194633

`A000196(∑[gcd(6, A189578(n+1))])`
-/

namespace A062571.P8721139096005194633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A189578 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A062571.P8721139096005194633

/-! ## A062571.P5268666618483653575

`A164359((3*n)²)+A056172(n+1)`
-/

namespace A062571.P5268666618483653575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164359 ((3 * n) ^ 2) + A056172 (n + 1)

end

end A062571.P5268666618483653575

/-!
# A062573: Numbers k such that 7^k - 6^k is prime.

The programs for A062573, there is no canonical definition to state claims against.
-/

/-! ## A062573.P16779945302651848239

`p?[A214518(n+1)+A000011(n)]`
-/

namespace A062573.P16779945302651848239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214518 (n + 1) + A000011 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062573.P16779945302651848239

/-!
# A062574: Numbers k such that 8^k - 7^k is prime or a strong pseudoprime.

The programs for A062574, there is no canonical definition to state claims against.
-/

/-! ## A062574.P3361111519710630165

`p?[record[A065648(A308406(n+1))]]`
-/

namespace A062574.P3361111519710630165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 (A308406 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062574.P3361111519710630165

/-! ## A062574.P1183014258982971776

`record[p?[A300239(A166590(n+1))]]`
-/

namespace A062574.P1183014258982971776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300239 (A166590 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062574.P1183014258982971776

/-!
# A062575: a(n) = maximum over m of the size of the largest subset of pairwise relatively prime numbers in {m+1, m+2, ..., m+n}.

The programs for A062575, there is no canonical definition to state claims against.
-/

/-! ## A062575.P354190461546290388

`∑[char[A260652(n+1)]]`
-/

namespace A062575.P354190461546290388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260652 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062575.P354190461546290388

/-! ## A062575.P2362980015779194600

`∑[and(char[n^gcd(2, n+1)], A347740(2*n))]`
-/

namespace A062575.P2362980015779194600
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.gcd 2 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) (A347740 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062575.P2362980015779194600

/-! ## A062575.P5382255198515094520

`A137813(A200947(n+1)+1)`
-/

namespace A062575.P5382255198515094520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137813 (A200947 (n + 1) + 1).toNat

end

end A062575.P5382255198515094520

/-! ## A062575.P17932925369787593276

`∑[A089011(A260116(n)²)]`
-/

namespace A062575.P17932925369787593276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089011 (A260116 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062575.P17932925369787593276

/-! ## A062575.P15172330281028162576

`A056811(A002061(n))+A020639(A029744(n+1))`
-/

namespace A062575.P15172330281028162576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (A002061 n).toNat + A020639 (A029744 (n + 1)).toNat

end

end A062575.P15172330281028162576

/-!
# A062576: Numbers k such that 10^k - 9^k is prime.

The programs for A062576, there is no canonical definition to state claims against.
-/

/-! ## A062576.P96931685589598498

`p?[∑[A007716(A064775(n+1))]]`
-/

namespace A062576.P96931685589598498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007716 (A064775 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062576.P96931685589598498

/-! ## A062576.P18123425702828466499

`A348358(lcm(A027883(n+1), A060322(n+1)))`
-/

namespace A062576.P18123425702828466499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348358 (Int.lcm (A027883 (n + 1)) (A060322 (n + 1)))

end

end A062576.P18123425702828466499

/-!
# A062577: Numbers k such that 11^k - 10^k is prime.

The programs for A062577, there is no canonical definition to state claims against.
-/

/-! ## A062577.P16580579598967648109

`A249077(∑[A352010(n+1)²])`
-/

namespace A062577.P16580579598967648109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352010 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249077 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A062577.P16580579598967648109

/-!
# A062578: Numbers k such that 12^k - 11^k is prime.

The programs for A062578, there is no canonical definition to state claims against.
-/

/-! ## A062578.P15197088682621099283

`A254665(a(n-3)+2)` with `a(0)=2, a(1)=3, a(2)=7`
-/

namespace A062578.P15197088682621099283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 7] fun n a =>
  A254665 (a (n - 3) + 2).toNat

end

end A062578.P15197088682621099283

/-! ## A062578.P3428671926157807185

`p?[∑[A340082(A013610(3*n))]]`
-/

namespace A062578.P3428671926157807185
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340082 (A013610 (3 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062578.P3428671926157807185

/-!
# A062579: Numbers k such that 13^k - 12^k is prime.

The programs for A062579, there is no canonical definition to state claims against.
-/

/-! ## A062579.P994370612640161665

`record[p?[A214451(A111054(n+2))]]`
-/

namespace A062579.P994370612640161665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214451 (A111054 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062579.P994370612640161665

/-!
# A062580: Numbers k such that 14^k - 13^k is prime.

The programs for A062580, there is no canonical definition to state claims against.
-/

/-! ## A062580.P15978555111249011019

`p?[A275896(∑[A246679(n+1)])]`
-/

namespace A062580.P15978555111249011019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246679 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275896 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062580.P15978555111249011019

/-!
# A062581: Numbers k such that 15^k - 14^k is prime.

The programs for A062581, there is no canonical definition to state claims against.
-/

/-! ## A062581.P1884317244200684325

`record[A006530(or(9^n, ∑[n])+3)]`
-/

namespace A062581.P1884317244200684325
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.lor (9 ^ n) (∑ j ∈ Finset.range (n + 1), f2 j) + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062581.P1884317244200684325

/-!
# A062583: Numbers k such that 17^k - 16^k is prime.

The programs for A062583, there is no canonical definition to state claims against.
-/

/-! ## A062583.P7420516138850306109

`p?[∑[A336848(A336814(3*(n+2)))]]`
-/

namespace A062583.P7420516138850306109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336848 (A336814 (3 * (n + 2))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062583.P7420516138850306109

/-!
# A062584: a(n) is the smallest prime whose digits include the digits of n as a substring.

The programs for A062584, there is no canonical definition to state claims against.
-/

/-! ## A062584.P101342967581102949

`A000040(A082058(n))`
-/

namespace A062584.P101342967581102949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A082058 n).toNat

end

end A062584.P101342967581102949

/-! ## A062584.P2919602011848782640

`A008578(A082058(n)+1)`
-/

namespace A062584.P2919602011848782640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A082058 n + 1).toNat

end

end A062584.P2919602011848782640

/-! ## A062584.P3660275103333633815

`A073846(2*A082058(n))`
-/

namespace A062584.P3660275103333633815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A082058 n).toNat

end

end A062584.P3660275103333633815

/-! ## A062584.P17653814915884892307

`A082500(2*A082058(n))`
-/

namespace A062584.P17653814915884892307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A082058 n).toNat

end

end A062584.P17653814915884892307

/-! ## A062584.P12896973237984665162

`A008578(A008619(2*A082058(n)))`
-/

namespace A062584.P12896973237984665162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A008619 (2 * A082058 n).toNat).toNat

end

end A062584.P12896973237984665162

/-!
# A062587: Numbers k such that 21^k - 20^k is prime.

The programs for A062587, there is no canonical definition to state claims against.
-/

/-! ## A062587.P8405819545323783657

`A144755(A046031(n+1))`
-/

namespace A062587.P8405819545323783657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144755 (A046031 (n + 1)).toNat

end

end A062587.P8405819545323783657

/-!
# A062590: Variation on A029834: a discrete version of the Mangoldt function. If n is prime then floor(log(prime(n))) else 0.

The programs for A062590, the canonical program `A062590.P15736737728538598181` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062590 has offset 1).

The definition of A062590 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062590.P15736737728538598181

`A010051(n+1)*A029835(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A062590

/-- `A010051(n+1)*A029835(n+1)` -/
def P15736737728538598181.Spec : Prop :=
  ∀ n, P15736737728538598181.a n = A062590 (n + 1)

theorem P15736737728538598181.correct : P15736737728538598181.Spec := by
  intro n
  simp only [A062590, Nat.add_sub_cancel]

end A062590

/-! ## A062590.P863895462706960885

`A010051(n+1)*floor(log(A000040(n+1)))`
-/

namespace A062590.P863895462706960885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * ⌊Real.log (A000040 (n + 1) : ℝ)⌋

end

end A062590.P863895462706960885

namespace A062590

/-- `A010051(n+1)*floor(log(A000040(n+1)))` -/
def P863895462706960885.Spec : Prop :=
  ∀ n, P863895462706960885.a n = A062590 (n + 1)

end A062590

/-! ## A062590.P6165175971918814295

`floor(log(∏{p}[n+1, A000040(#)^val(#, n+1)]))`
-/

namespace A062590.P6165175971918814295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log ((∏ p ∈ Nat.primeFactors (f1 n), A000040 p ^ SequenceMachineLib.valuation p (n + 1) : ℤ) : ℝ)⌋

end

end A062590.P6165175971918814295

namespace A062590

/-- `floor(log(∏{p}[n+1, A000040(#)^val(#, n+1)]))` -/
def P6165175971918814295.Spec : Prop :=
  ∀ n, P6165175971918814295.a n = A062590 (n + 1)

end A062590

/-! ## A062590.P15376419950310814604

`A029835(A089026(n+1))`
-/

namespace A062590.P15376419950310814604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029835 (A089026 (n + 1)).toNat

end

end A062590.P15376419950310814604

namespace A062590

/-- `A029835(A089026(n+1))` -/
def P15376419950310814604.Spec : Prop :=
  ∀ n, P15376419950310814604.a n = A062590 (n + 1)

end A062590

/-! ## A062590.P13665392358968630844

`A029835(n+1)*A080339(n+1)`
-/

namespace A062590.P13665392358968630844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029835 (n + 1) * A080339 (n + 1)

end

end A062590.P13665392358968630844

namespace A062590

/-- `A029835(n+1)*A080339(n+1)` -/
def P13665392358968630844.Spec : Prop :=
  ∀ n, P13665392358968630844.a n = A062590 (n + 1)

end A062590

/-! ## A062590.P18286602270174258394

`lcm(A029835(n+1), A267133(n+1))`
-/

namespace A062590.P18286602270174258394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A029835 (n + 1)) (A267133 (n + 1))

end

end A062590.P18286602270174258394

namespace A062590

/-- `lcm(A029835(n+1), A267133(n+1))` -/
def P18286602270174258394.Spec : Prop :=
  ∀ n, (P18286602270174258394.a n : ℤ) = A062590 (n + 1)

end A062590

/-! ## A062590.P12219496852666292919

`floor(log(gcd(A001248(n+1), A064988(n+1))))`
-/

namespace A062590.P12219496852666292919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Int.gcd (A001248 (n + 1)) (A064988 (n + 1)) : ℝ)⌋

end

end A062590.P12219496852666292919

namespace A062590

/-- `floor(log(gcd(A001248(n+1), A064988(n+1))))` -/
def P12219496852666292919.Spec : Prop :=
  ∀ n, P12219496852666292919.a n = A062590 (n + 1)

end A062590

/-! ## A062590.P10099811584595502129

`floor(log(gcd(2-A000005(n+1), A000040(n+1))))`
-/

namespace A062590.P10099811584595502129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Int.gcd (2 - A000005 (n + 1)) (A000040 (n + 1)) : ℝ)⌋

end

end A062590.P10099811584595502129

namespace A062590

/-- `floor(log(gcd(2-A000005(n+1), A000040(n+1))))` -/
def P10099811584595502129.Spec : Prop :=
  ∀ n, P10099811584595502129.a n = A062590 (n + 1)

end A062590

/-! ## A062590.P2176537673382292340

`A010051(n+1)*A029834(A000040(n+1))`
-/

namespace A062590.P2176537673382292340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A029834 (A000040 (n + 1)).toNat

end

end A062590.P2176537673382292340

namespace A062590

/-- `A010051(n+1)*A029834(A000040(n+1))` -/
def P2176537673382292340.Spec : Prop :=
  ∀ n, P2176537673382292340.a n = A062590 (n + 1)

end A062590

/-! ## A062590.P1909976441373513880

`A029834(A000040(n+1)+A010051(n+1)-1)`
-/

namespace A062590.P1909976441373513880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029834 (A000040 (n + 1) + (A010051 (n + 1) - 1)).toNat

end

end A062590.P1909976441373513880

namespace A062590

/-- `A029834(A000040(n+1)+A010051(n+1)-1)` -/
def P1909976441373513880.Spec : Prop :=
  ∀ n, P1909976441373513880.a n = A062590 (n + 1)

end A062590

/-! ## A062590.P6807198314187158728

`A029834(A064988(n+1))`
-/

namespace A062590.P6807198314187158728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029834 (A064988 (n + 1)).toNat

end

end A062590.P6807198314187158728

namespace A062590

/-- `A029834(A064988(n+1))` -/
def P6807198314187158728.Spec : Prop :=
  ∀ n, P6807198314187158728.a n = A062590 (n + 1)

end A062590

/-!
# A062591: Primes of the form 6*k! + 1.

The programs for A062591, there is no canonical definition to state claims against.
-/

/-! ## A062591.P3132149900431861186

`A173314(A076682(n+2))`
-/

namespace A062591.P3132149900431861186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173314 (A076682 (n + 2)).toNat

end

end A062591.P3132149900431861186

/-! ## A062591.P2210457436378644484

`A173314(eq[A064770(n), A334475(n)])`
-/

namespace A062591.P2210457436378644484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173314 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A062591.P2210457436378644484

/-!
# A062592: Numbers k such that 26^k - 25^k is prime or a strong pseudoprime.

The programs for A062592, there is no canonical definition to state claims against.
-/

/-! ## A062592.P7728241154544579882

`p?[A004755(∑[A006446(n+1)])]`
-/

namespace A062592.P7728241154544579882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006446 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062592.P7728241154544579882

/-!
# A062594: Numbers k such that 28^k - 27^k is prime.

The programs for A062594, there is no canonical definition to state claims against.
-/

/-! ## A062594.P17563248959455779216

`p?[A323053(n)+A153767(n+1)]`
-/

namespace A062594.P17563248959455779216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323053 n + A153767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062594.P17563248959455779216

