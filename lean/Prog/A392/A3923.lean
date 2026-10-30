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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C047
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B004.C004
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
# A392304: Squares whose sum of prime factors (with multiplicity) is also a perfect square.

The programs for A392304, there is no canonical definition to state claims against.
-/

/-! ## A392304.P5991246255146374918

`∩[A051448(n+1), n²]`
-/

namespace A392304.P5991246255146374918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051448 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A392304.P5991246255146374918

/-! ## A392304.P11012751034020662333

`∩[A000290(n), A051448(n+1)]`
-/

namespace A392304.P11012751034020662333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392304.P11012751034020662333

/-! ## A392304.P7507725234956204513

`filter[A051448(n+1), A010052(#)]`
-/

namespace A392304.P7507725234956204513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010052 (f1 j).toNat = 1) n)

end

end A392304.P7507725234956204513

/-!
# A392307: Number of composite numbers c such that c * sigma_n(c) == 2 (mod phi(c)).

The programs for A392307, there is no canonical definition to state claims against.
-/

/-! ## A392307.P16323328217192647709

`A086668(A000051(n+1))+1`
-/

namespace A392307.P16323328217192647709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086668 (A000051 (n + 1)).toNat + 1

end

end A392307.P16323328217192647709

/-! ## A392307.P7224260046598054645

`A046886(2^(n+1)+1)`
-/

namespace A392307.P7224260046598054645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046886 (2 ^ (n + 1) + 1)

end

end A392307.P7224260046598054645

/-!
# A392308: Composite numbers c satisfying the congruence c * sigma_k(c) == 2 (mod phi(c)) that are "flanked" by 14 at k-1 and k+1.

The programs for A392308, there is no canonical definition to state claims against.
-/

/-! ## A392308.P7992311858602172557

`∩[A097271(n+1), A390498(n+1)]`
-/

namespace A392308.P7992311858602172557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392308.P7992311858602172557

/-! ## A392308.P535006010449795038

`∩[A374190(n+1), A390498(n+1)]`
-/

namespace A392308.P535006010449795038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392308.P535006010449795038

/-!
# A392311: a(n) = Sum_{k=0..floor(3*n/5)} (k+1) * binomial(k,3*n-5*k).

The programs for A392311, the canonical program `A392311.P1132858939597477380` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392311 has offset 0).

The definition of A392311 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(3*n/5), (#+1)*C(#, 3*n-5*#)]` (program `A392311.P1132858939597477380`, by `A392311.P1132858939597477380.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392311.P5825368196158465518

`ogf((1-4x^2+6x^4+2x^5-4x^6-2x^7+x^8)/(1-6x^2+15x^4-2x^5-20x^6+6x^7+15x^8-6x^9-5x^10+2x^11+x^12))`
-/

namespace A392311.P5825368196158465518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -4, 0, 6, 2, -4, -2, 1] [1, 0, -6, 0, 15, -2, -20, 6, 15, -6, -5, 2, 1] n

end

end A392311.P5825368196158465518

namespace A392311

/-- `ogf((1-4x^2+6x^4+2x^5-4x^6-2x^7+x^8)/(1-6x^2+15x^4-2x^5-20x^6+6x^7+15x^8-6x^9-5x^10+2x^11+x^12))` -/
def P5825368196158465518.Spec : Prop :=
  ∀ n, P5825368196158465518.a n = A392311 n

end A392311

/-! ## A392311.P1132858939597477380

`∑{#}[floor(3*n/5), (#+1)*C(#, 3*n-5*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392311

/-- `∑{#}[floor(3*n/5), (#+1)*C(#, 3*n-5*#)]` -/
def P1132858939597477380.Spec : Prop :=
  ∀ n, (P1132858939597477380.a n : ℤ) = A392311 n

theorem P1132858939597477380.correct : P1132858939597477380.Spec := by
  intro n
  simp only [A392311]

end A392311

/-!
# A392312: a(n) = Sum_{k=0..floor(3*n/8)} (k+1) * binomial(k,3*n-8*k).

The programs for A392312, the canonical program `A392312.P9339402637041030258` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392312 has offset 0).

The definition of A392312 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(3*n/8), (#+1)*C(#, 3*n-8*#)]` (program `A392312.P9339402637041030258`, by `A392312.P9339402637041030258.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392312.P9339402637041030258

`∑{#}[floor(3*n/8), (#+1)*C(#, 3*n-8*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392312

/-- `∑{#}[floor(3*n/8), (#+1)*C(#, 3*n-8*#)]` -/
def P9339402637041030258.Spec : Prop :=
  ∀ n, (P9339402637041030258.a n : ℤ) = A392312 n

theorem P9339402637041030258.correct : P9339402637041030258.Spec := by
  intro n
  simp only [A392312]

end A392312

/-! ## A392312.P1631030014992183477

`A400671(A392316(n))`
-/

namespace A392312.P1631030014992183477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400671 (A392316 n).toNat

end

end A392312.P1631030014992183477

namespace A392312

/-- `A400671(A392316(n))` -/
def P1631030014992183477.Spec : Prop :=
  ∀ n, P1631030014992183477.a n = A392312 n

end A392312

/-!
# A392313: a(n) = Sum_{k=0..n} binomial(k+2,2) * binomial(k,3*n-3*k).

The programs for A392313, the canonical program `A392313.P13738462240692167180` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392313 has offset 0).

The definition of A392313 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(#+2, 2)*C(#, 3*n-3*#)]` (program `A392313.P13738462240692167180`, by `A392313.P13738462240692167180.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392313.P13738462240692167180

`∑{#}[n, C(#+2, 2)*C(#, 3*n-3*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392313

/-- `∑{#}[n, C(#+2, 2)*C(#, 3*n-3*#)]` -/
def P13738462240692167180.Spec : Prop :=
  ∀ n, (P13738462240692167180.a n : ℤ) = A392313 n

theorem P13738462240692167180.correct : P13738462240692167180.Spec := by
  intro n
  simp only [A392313]

end A392313

/-!
# A392314: a(n) = Sum_{k=0..floor(3*n/5)} binomial(k+2,2) * binomial(k,3*n-5*k).

The programs for A392314, the canonical program `A392314.P17910413065957561210` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392314 has offset 0).

The definition of A392314 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(3*n/5), C(#+2, 2)*C(#, 3*n-5*#)]` (program `A392314.P17910413065957561210`, by `A392314.P17910413065957561210.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392314.P17910413065957561210

`∑{#}[floor(3*n/5), C(#+2, 2)*C(#, 3*n-5*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392314

/-- `∑{#}[floor(3*n/5), C(#+2, 2)*C(#, 3*n-5*#)]` -/
def P17910413065957561210.Spec : Prop :=
  ∀ n, (P17910413065957561210.a n : ℤ) = A392314 n

theorem P17910413065957561210.correct : P17910413065957561210.Spec := by
  intro n
  simp only [A392314]

end A392314

/-!
# A392315: Number of vertex cuts in the n-necklace graph.

The programs for A392315, the canonical program `A392315.P17554009615328560894` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392315 has offset 1).

The definition of A392315 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392315.P17554009615328560894

`16^(n+1)-3^(n+1)-3*(5*3^(n+1)-7)*(n+1)/2-1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392315

/-- `16^(n+1)-3^(n+1)-3*(5*3^(n+1)-7)*(n+1)/2-1` -/
def P17554009615328560894.Spec : Prop :=
  ∀ n, P17554009615328560894.a n = (A392315 (n + 1) : ℚ)

end A392315

/-!
# A392316: a(n) = Sum_{k=0..floor(3*n/8)} binomial(k+2,2) * binomial(k,3*n-8*k).

The programs for A392316, the canonical program `A392316.P98374941979366400` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392316 has offset 0).

The definition of A392316 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(3*n/8), C(#+2, 2)*C(#, 3*n-8*#)]` (program `A392316.P98374941979366400`, by `A392316.P98374941979366400.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392316.P98374941979366400

`∑{#}[floor(3*n/8), C(#+2, 2)*C(#, 3*n-8*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392316

/-- `∑{#}[floor(3*n/8), C(#+2, 2)*C(#, 3*n-8*#)]` -/
def P98374941979366400.Spec : Prop :=
  ∀ n, (P98374941979366400.a n : ℤ) = A392316 n

theorem P98374941979366400.correct : P98374941979366400.Spec := by
  intro n
  simp only [A392316]

end A392316

/-!
# A392317: Partial sums of A393434.

The programs for A392317, there is no canonical definition to state claims against.
-/

/-! ## A392317.P9105424065605761636

`∑[A393434(n)]`
-/

namespace A392317.P9105424065605761636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392317.P9105424065605761636

/-!
# A392318: Decimal expansion of 37/72.

The programs for A392318, the canonical program `A392318.P11358537660704665373` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392318 has offset 0).

The definition of A392318 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A392318.anchor (n : ℕ) : A392318 n = ((37 * 10 ^ (n + 1) / 72 % 10 : ℕ) : ℤ)` in `Proof.A392.A392318`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392318.P13232961529030382318

`ogf((5-4x+2x^2+5x^3)/(1-x))`
-/

namespace A392318.P13232961529030382318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -4, 2, 5] [1, -1] n

end

end A392318.P13232961529030382318

namespace A392318

/-- `ogf((5-4x+2x^2+5x^3)/(1-x))` -/
def P13232961529030382318.Spec : Prop :=
  ∀ n, P13232961529030382318.a n = A392318 n

end A392318

/-! ## A392318.P11358537660704665373

`a(n-1)` with `a(0)=5, a(1)=1, a(2)=3, a(3)=8`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392318

/-- `a(n-1)` -/
def P11358537660704665373.Spec : Prop :=
  ∀ n, (P11358537660704665373.a n : ℤ) = A392318 n

theorem P11358537660704665373.correct : P11358537660704665373.Spec := by
  intro n
  simp only [A392318]

end A392318

/-!
# A392319: Palindromes of the form b^k + 1 or b^k - 1, with b, k > 1.

The programs for A392319, there is no canonical definition to state claims against.
-/

/-! ## A392319.P4171117555269927201

`∩[A002113(n+1), A080262(n+1)]`
-/

namespace A392319.P4171117555269927201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392319.P4171117555269927201

/-! ## A392319.P12526028088413806451

`∩[A080262(n+1), A083158(n+1)]`
-/

namespace A392319.P12526028088413806451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392319.P12526028088413806451

/-! ## A392319.P17942949309025707013

`∩[A080262(n+1), A342826(n+1)]`
-/

namespace A392319.P17942949309025707013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392319.P17942949309025707013

/-! ## A392319.P12055452450509413836

`filter[A080262(n+1), A136522(#)]`
-/

namespace A392319.P12055452450509413836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A392319.P12055452450509413836

/-! ## A392319.P15122559746429125420

`∩[A080262(n+1), A141033(n+1)]`
-/

namespace A392319.P15122559746429125420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392319.P15122559746429125420

/-!
# A392321: Number of all 1-tuples, 2-tuples, ..., n-tuples where each entry is chosen from the nonempty subsets of {1,..,n}.

The programs for A392321, the canonical program `A392321.P18446388311972013039` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392321 has offset 1).

The definition of A392321 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392321.P18446388311972013039

`∑{#}[n, (2^(n+1)-1)^(#+1)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392321

/-- `∑{#}[n, (2^(n+1)-1)^(#+1)]` -/
def P18446388311972013039.Spec : Prop :=
  ∀ n, P18446388311972013039.a n = A392321 (n + 1)

theorem P18446388311972013039.correct : P18446388311972013039.Spec := by
  intro n
  simp only [A392321, Nat.add_sub_cancel]

end A392321

/-! ## A392321.P13375582452610978825

`A392617(2^(n+1))-1`
-/

namespace A392321.P13375582452610978825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392617 (2 ^ (n + 1)) - 1

end

end A392321.P13375582452610978825

namespace A392321

/-- `A392617(2^(n+1))-1` -/
def P13375582452610978825.Spec : Prop :=
  ∀ n, P13375582452610978825.a n = A392321 (n + 1)

end A392321

/-! ## A392321.P8955510085738558847

`A104258(A126646(n))*A126646(n)`
-/

namespace A392321.P8955510085738558847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104258 (A126646 n).toNat * A126646 n

end

end A392321.P8955510085738558847

namespace A392321

/-- `A104258(A126646(n))*A126646(n)` -/
def P8955510085738558847.Spec : Prop :=
  ∀ n, P8955510085738558847.a n = A392321 (n + 1)

end A392321

/-!
# A392322: Number of coverings of [n] by 1-tuples, 2-tuples, ..., n-tuples where each entry is chosen from the subsets of [n].

The programs for A392322, the canonical program `A392322.P1698483309894859429` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392322 has offset 1).

The definition of A392322 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392322.P1698483309894859429

`∑{#}[n, (2^(#+1)-1)^(n+1)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392322

/-- `∑{#}[n, (2^(#+1)-1)^(n+1)]` -/
def P1698483309894859429.Spec : Prop :=
  ∀ n, P1698483309894859429.a n = A392322 (n + 1)

theorem P1698483309894859429.correct : P1698483309894859429.Spec := by
  intro n
  simp only [A392322, Nat.add_sub_cancel]

end A392322

/-!
# A392324: Minimal value of p(1) + Sum_{i=2...n} p(i-1)*p(i), as p ranges over all permutations of odd numbers {1,3,...,2*n-1}.

The programs for A392324, the canonical program `A392324.P9593142723483031393` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392324 has offset 1).

The definition of A392324 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392324.P9593142723483031393

`ogf((1+x+x^2+7x^3-6x^4+4x^5)/(1-3x+2x^2+2x^3-3x^4+x^5))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392324

/-- `ogf((1+x+x^2+7x^3-6x^4+4x^5)/(1-3x+2x^2+2x^3-3x^4+x^5))` -/
def P9593142723483031393.Spec : Prop :=
  ∀ n, P9593142723483031393.a n = A392324 (n + 1)

theorem P9593142723483031393.correct : P9593142723483031393.Spec := by
  intro n
  simp only [A392324, Nat.add_sub_cancel]

end A392324

/-! ## A392324.P5807515285932537078

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=1, a(1)=4, a(2)=11, a(3)=30, a(4)=57, a(5)=104`
-/

namespace A392324.P5807515285932537078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 11, 30, 57, 104] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) - 2 * a (n - 3) + 3 * a (n - 4) - a (n - 5)

end

end A392324.P5807515285932537078

namespace A392324

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P5807515285932537078.Spec : Prop :=
  ∀ n, P5807515285932537078.a n = A392324 (n + 1)

end A392324

/-! ## A392324.P16189282038885388384

`∑[∑[A220523(A286160(n+1))]]`
-/

namespace A392324.P16189282038885388384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220523 (A286160 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392324.P16189282038885388384

namespace A392324

/-- `∑[∑[A220523(A286160(n+1))]]` -/
def P16189282038885388384.Spec : Prop :=
  ∀ n, P16189282038885388384.a n = A392324 (n + 1)

end A392324

/-!
# A392326: Low points occurring in A392975.

The programs for A392326, there is no canonical definition to state claims against.
-/

/-! ## A392326.P5832845740300677922

`filter[A392975(n+1), A171387(#)]`
-/

namespace A392326.P5832845740300677922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A392326.P5832845740300677922

/-!
# A392327: a(n) is the permanent of the n X n Vandermonde matrix V(1, 2, ..., 2^(n-1)).

The programs for A392327, there is no canonical definition to state claims against.
-/

/-! ## A392327.P8495405029031151366

`A389590(A050252(3*n+2)^A000045(n))`
-/

namespace A392327.P8495405029031151366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389590 (SequenceMachineLib.roundAway ((A050252 (3 * n + 2) : ℚ) ^ (A000045 n : ℤ))).toNat

end

end A392327.P8495405029031151366

/-!
# A392328: a(n) = Fibonacci(n^2+1).

The programs for A392328, the canonical program `A392328.P15567604144437909365` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392328 has offset 0).

The definition of A392328 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n²+1)` (program `A392328.P15567604144437909365`, by `A392328.P15567604144437909365.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392328.P15567604144437909365

`A000045(n²+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A392328

/-- `A000045(n²+1)` -/
def P15567604144437909365.Spec : Prop :=
  ∀ n, P15567604144437909365.a n = A392328 n

theorem P15567604144437909365.correct : P15567604144437909365.Spec := by
  intro n
  simp only [A392328]

end A392328

/-! ## A392328.P10970744802730082173

`∑{#}[n², C(#, n²-#)]`
-/

namespace A392328.P10970744802730082173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose k ((n ^ 2 : ℤ) - (k : ℤ)).toNat

end

end A392328.P10970744802730082173

namespace A392328

/-- `∑{#}[n², C(#, n²-#)]` -/
def P10970744802730082173.Spec : Prop :=
  ∀ n, (P10970744802730082173.a n : ℤ) = A392328 n

end A392328

/-! ## A392328.P7839585505931594435

`A104220(n²+1)`
-/

namespace A392328.P7839585505931594435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104220 (n ^ 2 + 1)

end

end A392328.P7839585505931594435

namespace A392328

/-- `A104220(n²+1)` -/
def P7839585505931594435.Spec : Prop :=
  ∀ n, P7839585505931594435.a n = A392328 n

end A392328

/-! ## A392328.P3978135076910537219

`A141325(n²+1)`
-/

namespace A392328.P3978135076910537219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141325 (n ^ 2 + 1)

end

end A392328.P3978135076910537219

namespace A392328

/-- `A141325(n²+1)` -/
def P3978135076910537219.Spec : Prop :=
  ∀ n, P3978135076910537219.a n = A392328 n

end A392328

/-! ## A392328.P10594093897892616018

`A167808(n²+1)`
-/

namespace A392328.P10594093897892616018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167808 (n ^ 2 + 1)

end

end A392328.P10594093897892616018

namespace A392328

/-- `A167808(n²+1)` -/
def P10594093897892616018.Spec : Prop :=
  ∀ n, P10594093897892616018.a n = A392328 n

end A392328

/-!
# A392330: a(n) is the number of 5 element sets of distinct integer-sided trapezoids whose base angles are 60 degrees of total area n^2 but which cannot fill an equilateral triangular grid of side n units.

The programs for A392330, there is no canonical definition to state claims against.
-/

/-! ## A392330.P5725321663685654854

`A329744(A063886(n))-A208058(n)`
-/

namespace A392330.P5725321663685654854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329744 (A063886 n).toNat - A208058 n

end

end A392330.P5725321663685654854

/-!
# A392331: a(n) = 3^n*(4*n+1).

The programs for A392331, the canonical program `A392331.P6151116667762879899` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392331 has offset 0).

The definition of A392331 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*(4*n+1)` (program `A392331.P6151116667762879899`, by `A392331.P6151116667762879899.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392331.P11674664294137581827

`ogf((1+9x)/(1-6x+9x^2))`
-/

namespace A392331.P11674664294137581827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9] [1, -6, 9] n

end

end A392331.P11674664294137581827

namespace A392331

/-- `ogf((1+9x)/(1-6x+9x^2))` -/
def P11674664294137581827.Spec : Prop :=
  ∀ n, P11674664294137581827.a n = A392331 n

end A392331

/-! ## A392331.P6151116667762879899

`3^n*(4*n+1)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392331

/-- `3^n*(4*n+1)` -/
def P6151116667762879899.Spec : Prop :=
  ∀ n, (P6151116667762879899.a n : ℤ) = A392331 n

theorem P6151116667762879899.correct : P6151116667762879899.Spec := by
  intro n
  simp only [A392331]

end A392331

/-! ## A392331.P18261736949522549399

`6*a(n-1)-9*a(n-2)` with `a(0)=1, a(1)=15`
-/

namespace A392331.P18261736949522549399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 15] fun n a =>
  6 * a (n - 1) - 9 * a (n - 2)

end

end A392331.P18261736949522549399

namespace A392331

/-- `6*a(n-1)-9*a(n-2)` -/
def P18261736949522549399.Spec : Prop :=
  ∀ n, P18261736949522549399.a n = A392331 n

theorem P18261736949522549399.correct : P18261736949522549399.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A392331, Nat.add_sub_cancel, A392331.P18261736949522549399.a, A392331.P6151116667762879899.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A392331, Nat.add_sub_cancel, A392331.P18261736949522549399.a, A392331.P6151116667762879899.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A392331

/-! ## A392331.P14153686634948142845

`A203231(Δ[n²])`
-/

namespace A392331.P14153686634948142845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203231 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A392331.P14153686634948142845

namespace A392331

/-- `A203231(Δ[n²])` -/
def P14153686634948142845.Spec : Prop :=
  ∀ n, P14153686634948142845.a n = A392331 n

end A392331

/-! ## A392331.P15913535396662394663

`2*A176177(n+1)-1`
-/

namespace A392331.P15913535396662394663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A176177 (n + 1) - 1

end

end A392331.P15913535396662394663

namespace A392331

/-- `2*A176177(n+1)-1` -/
def P15913535396662394663.Spec : Prop :=
  ∀ n, P15913535396662394663.a n = A392331 n

end A392331

/-! ## A392331.P3405504090294605235

`A120908(n+2)-A000244(n+1)`
-/

namespace A392331.P3405504090294605235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120908 (n + 2) - A000244 (n + 1)

end

end A392331.P3405504090294605235

namespace A392331

/-- `A120908(n+2)-A000244(n+1)` -/
def P3405504090294605235.Spec : Prop :=
  ∀ n, P3405504090294605235.a n = A392331 n

end A392331

/-! ## A392331.P120429671999082761

`A124647(n)+A124647(n)-A000244(n)`
-/

namespace A392331.P120429671999082761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124647 n + (A124647 n - A000244 n)

end

end A392331.P120429671999082761

namespace A392331

/-- `A124647(n)+A124647(n)-A000244(n)` -/
def P120429671999082761.Spec : Prop :=
  ∀ n, P120429671999082761.a n = A392331 n

theorem P120429671999082761.correct : P120429671999082761.Spec := by
  intro n
  simp only [A392331, Nat.add_sub_cancel, A392331.P120429671999082761.a, A392331.P6151116667762879899.a, A000244, A000244.P17162167222172810417.a, A124647, A124647.P15241135769168499352.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A392331

/-! ## A392331.P5148584257779097222

`A036290(n+1)+A036290(n+1)-A081038(n+1)`
-/

namespace A392331.P5148584257779097222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036290 (n + 1) + (A036290 (n + 1) - A081038 (n + 1))

end

end A392331.P5148584257779097222

namespace A392331

/-- `A036290(n+1)+A036290(n+1)-A081038(n+1)` -/
def P5148584257779097222.Spec : Prop :=
  ∀ n, P5148584257779097222.a n = A392331 n

end A392331

/-! ## A392331.P17741082699432350642

`A120908(n+2)-(A141317(n+1)+A010684(n+1))`
-/

namespace A392331.P17741082699432350642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120908 (n + 2) - (A141317 (n + 1) + A010684 (n + 1))

end

end A392331.P17741082699432350642

namespace A392331

/-- `A120908(n+2)-(A141317(n+1)+A010684(n+1))` -/
def P17741082699432350642.Spec : Prop :=
  ∀ n, P17741082699432350642.a n = A392331 n

end A392331

/-! ## A392331.P15383587333940121969

`A124647(2*n)/A000244(n)`
-/

namespace A392331.P15383587333940121969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124647 (2 * n) : ℚ) / (A000244 n : ℚ)

end

end A392331.P15383587333940121969

namespace A392331

/-- `A124647(2*n)/A000244(n)` -/
def P15383587333940121969.Spec : Prop :=
  ∀ n, P15383587333940121969.a n = (A392331 n : ℚ)

theorem P15383587333940121969.correct : P15383587333940121969.Spec := by
  intro n
  simp only [A392331, Nat.add_sub_cancel, A392331.P15383587333940121969.a, A392331.P6151116667762879899.a, A000244, A000244.P17162167222172810417.a, A124647, A124647.P15241135769168499352.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A392331

/-! ## A392331.P16646088282060751328

`A124647(2*n)/A017914(2*n)`
-/

namespace A392331.P16646088282060751328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124647 (2 * n) : ℚ) / (A017914 (2 * n) : ℚ)

end

end A392331.P16646088282060751328

namespace A392331

/-- `A124647(2*n)/A017914(2*n)` -/
def P16646088282060751328.Spec : Prop :=
  ∀ n, P16646088282060751328.a n = (A392331 n : ℚ)

end A392331

/-! ## A392331.P3769416283944718469

`A124647(2*n)/A130599(2*n+1)`
-/

namespace A392331.P3769416283944718469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124647 (2 * n) : ℚ) / (A130599 (2 * n + 1) : ℚ)

end

end A392331.P3769416283944718469

namespace A392331

/-- `A124647(2*n)/A130599(2*n+1)` -/
def P3769416283944718469.Spec : Prop :=
  ∀ n, P3769416283944718469.a n = (A392331 n : ℚ)

end A392331

/-!
# A392332: a(n) is the excess of deficient numbers over abundant numbers in the first n positive integers.

The programs for A392332, the canonical program `A392332.P10626276045092877156` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392332 has offset 1).

The definition of A392332 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091194, A256562, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A392332.P10626276045092877156

`A256562(n+1)-A091194(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A392332

/-- `A256562(n+1)-A091194(n+1)` -/
def P10626276045092877156.Spec : Prop :=
  ∀ n, P10626276045092877156.a n = A392332 (n + 1)

theorem P10626276045092877156.correct : P10626276045092877156.Spec := by
  intro n
  simp only [A392332, Nat.add_sub_cancel]

end A392332

/-! ## A392332.P11711383494910503890

`abs(∑[A082551(n+1)])`
-/

namespace A392332.P11711383494910503890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A392332.P11711383494910503890

namespace A392332

/-- `abs(∑[A082551(n+1)])` -/
def P11711383494910503890.Spec : Prop :=
  ∀ n, P11711383494910503890.a n = A392332 (n + 1)

end A392332

/-! ## A392332.P1040450026993549695

`∑[A294935(n+1)-floor(∑{d}[n+1, 1/(2*#)])]`
-/

namespace A392332.P1040450026993549695
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294935 (n + 1) - ⌊∑ d ∈ Nat.divisors (f2 n), 1 / (2 * d : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392332.P1040450026993549695

namespace A392332

/-- `∑[A294935(n+1)-floor(∑{d}[n+1, 1/(2*#)])]` -/
def P1040450026993549695.Spec : Prop :=
  ∀ n, P1040450026993549695.a n = A392332 (n + 1)

end A392332

/-! ## A392332.P14780474748377827528

`∑[A294935(n+1)-A294936(n+1)]`
-/

namespace A392332.P14780474748377827528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294935 (n + 1) - A294936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392332.P14780474748377827528

namespace A392332

/-- `∑[A294935(n+1)-A294936(n+1)]` -/
def P14780474748377827528.Spec : Prop :=
  ∀ n, P14780474748377827528.a n = A392332 (n + 1)

end A392332

/-! ## A392332.P3418160828740448524

`gcd(∑[A082551(n+1)], A130779(n+1))`
-/

namespace A392332.P3418160828740448524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A130779 (n + 1))

end

end A392332.P3418160828740448524

namespace A392332

/-- `gcd(∑[A082551(n+1)], A130779(n+1))` -/
def P3418160828740448524.Spec : Prop :=
  ∀ n, (P3418160828740448524.a n : ℤ) = A392332 (n + 1)

end A392332

/-! ## A392332.P3783159485629901656

`∑[A290825(3*n)-A082551(n+1)]`
-/

namespace A392332.P3783159485629901656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290825 (3 * n) - A082551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392332.P3783159485629901656

namespace A392332

/-- `∑[A290825(3*n)-A082551(n+1)]` -/
def P3783159485629901656.Spec : Prop :=
  ∀ n, P3783159485629901656.a n = A392332 (n + 1)

end A392332

/-! ## A392332.P5014105682984223610

`A001222(A002385(n+1))-(∑[A082551(n+1)]+1)`
-/

namespace A392332.P5014105682984223610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002385 (n + 1)).toNat - (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A392332.P5014105682984223610

namespace A392332

/-- `A001222(A002385(n+1))-(∑[A082551(n+1)]+1)` -/
def P5014105682984223610.Spec : Prop :=
  ∀ n, P5014105682984223610.a n = A392332 (n + 1)

end A392332

/-!
# A392334: a(2*n) = 2*n+1, a(2*n+1) = (2*n+1)^2.

The programs for A392334, the canonical program `A392334.P16455220936438434802` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392334 has offset 0).

The definition of A392334 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392334.P11732313417423934299

`ogf((1+x+6x^3-x^4+x^5)/(1-3x^2+3x^4-x^6))`
-/

namespace A392334.P11732313417423934299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, 6, -1, 1] [1, 0, -3, 0, 3, 0, -1] n

end

end A392334.P11732313417423934299

namespace A392334

/-- `ogf((1+x+6x^3-x^4+x^5)/(1-3x^2+3x^4-x^6))` -/
def P11732313417423934299.Spec : Prop :=
  ∀ n, P11732313417423934299.a n = A392334 n

end A392334

/-! ## A392334.P14320210007091072824

`(1+n+n²+(-1)^n*(1+n-n²))/2`
-/

namespace A392334.P14320210007091072824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 + n + n ^ 2 : ℤ) + (-1) ^ n * ((1 + n : ℤ) - (n ^ 2 : ℤ)) : ℚ) / 2

end

end A392334.P14320210007091072824

namespace A392334

/-- `(1+n+n²+(-1)^n*(1+n-n²))/2` -/
def P14320210007091072824.Spec : Prop :=
  ∀ n, P14320210007091072824.a n = (A392334 n : ℚ)

end A392334

/-! ## A392334.P16455220936438434802

`A109613(n)^A000034(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A392334

/-- `A109613(n)^A000034(n)` -/
def P16455220936438434802.Spec : Prop :=
  ∀ n, P16455220936438434802.a n = (A392334 n : ℚ)

end A392334

/-! ## A392334.P8065642957498770697

`or(1, n^(n%2+1))`
-/

namespace A392334.P8065642957498770697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ (n % 2 + 1))

end

end A392334.P8065642957498770697

namespace A392334

/-- `or(1, n^(n%2+1))` -/
def P8065642957498770697.Spec : Prop :=
  ∀ n, (P8065642957498770697.a n : ℤ) = A392334 n

end A392334

/-! ## A392334.P6530160769169609126

`or(1, n^gcd(2, n+1))`
-/

namespace A392334.P6530160769169609126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ Nat.gcd 2 (n + 1))

end

end A392334.P6530160769169609126

namespace A392334

/-- `or(1, n^gcd(2, n+1))` -/
def P6530160769169609126.Spec : Prop :=
  ∀ n, (P6530160769169609126.a n : ℤ) = A392334 n

end A392334

/-! ## A392334.P12922245528897439654

`or(1, n^(2*and(1, n))!)`
-/

namespace A392334.P12922245528897439654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ Nat.factorial (2 * Nat.land 1 n))

end

end A392334.P12922245528897439654

namespace A392334

/-- `or(1, n^(2*and(1, n))!)` -/
def P12922245528897439654.Spec : Prop :=
  ∀ n, (P12922245528897439654.a n : ℤ) = A392334 n

end A392334

/-! ## A392334.P2691344844645714608

`C(n²-n, and(1, n))+n`
-/

namespace A392334.P2691344844645714608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n ^ 2 : ℤ) - (n : ℤ)).toNat (Nat.land 1 n) + n

end

end A392334.P2691344844645714608

namespace A392334

/-- `C(n²-n, and(1, n))+n` -/
def P2691344844645714608.Spec : Prop :=
  ∀ n, (P2691344844645714608.a n : ℤ) = A392334 n

end A392334

/-! ## A392334.P4058542875102441769

`or(1, n)^gcd(n-1, 2*n)`
-/

namespace A392334.P4058542875102441769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n ^ Int.gcd ((n : ℤ) - 1) (2 * n : ℤ)

end

end A392334.P4058542875102441769

namespace A392334

/-- `or(1, n)^gcd(n-1, 2*n)` -/
def P4058542875102441769.Spec : Prop :=
  ∀ n, (P4058542875102441769.a n : ℤ) = A392334 n

end A392334

/-! ## A392334.P5139112226071500121

`lcm(n+1, or(1, n)²)/(n+1)`
-/

namespace A392334.P5139112226071500121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (Nat.lor 1 n ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A392334.P5139112226071500121

namespace A392334

/-- `lcm(n+1, or(1, n)²)/(n+1)` -/
def P5139112226071500121.Spec : Prop :=
  ∀ n, P5139112226071500121.a n = (A392334 n : ℚ)

end A392334

/-! ## A392334.P654267952087554818

`gcd(n²-n, and(1, n+1))+n`
-/

namespace A392334.P654267952087554818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n ^ 2 : ℤ) - (n : ℤ)) (Nat.land 1 (n + 1) : ℤ) + n

end

end A392334.P654267952087554818

namespace A392334

/-- `gcd(n²-n, and(1, n+1))+n` -/
def P654267952087554818.Spec : Prop :=
  ∀ n, (P654267952087554818.a n : ℤ) = A392334 n

end A392334

/-! ## A392334.P5138858418788022469

`gcd(a(n-1)-n, n-n²)+n` with `a(0)=1`
-/

namespace A392334.P5138858418788022469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd ((a (n - 1) : ℤ) - (n : ℤ)) ((n : ℤ) - (n ^ 2 : ℤ)) + n

end

end A392334.P5138858418788022469

namespace A392334

/-- `gcd(a(n-1)-n, n-n²)+n` -/
def P5138858418788022469.Spec : Prop :=
  ∀ n, (P5138858418788022469.a n : ℤ) = A392334 n

end A392334

/-! ## A392334.P8421019363567690607

`(n+1)%2+n*gcd(n, a(n-1))` with `a(0)=1`
-/

namespace A392334.P8421019363567690607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) % 2 + n * Nat.gcd n (a (n - 1))

end

end A392334.P8421019363567690607

namespace A392334

/-- `(n+1)%2+n*gcd(n, a(n-1))` -/
def P8421019363567690607.Spec : Prop :=
  ∀ n, (P8421019363567690607.a n : ℤ) = A392334 n

end A392334

/-! ## A392334.P6092837017098982780

`or(1, A065599(n))`
-/

namespace A392334.P6092837017098982780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A065599 n)

end

end A392334.P6092837017098982780

namespace A392334

/-- `or(1, A065599(n))` -/
def P6092837017098982780.Spec : Prop :=
  ∀ n, P6092837017098982780.a n = A392334 n

end A392334

/-! ## A392334.P17568906174680064825

`A103832(n)-n`
-/

namespace A392334.P17568906174680064825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103832 n - (n : ℤ)

end

end A392334.P17568906174680064825

namespace A392334

/-- `A103832(n)-n` -/
def P17568906174680064825.Spec : Prop :=
  ∀ n, P17568906174680064825.a n = A392334 n

end A392334

/-! ## A392334.P14356230987734228425

`(n+1)²-A103831(n)`
-/

namespace A392334.P14356230987734228425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A103831 n

end

end A392334.P14356230987734228425

namespace A392334

/-- `(n+1)²-A103831(n)` -/
def P14356230987734228425.Spec : Prop :=
  ∀ n, P14356230987734228425.a n = A392334 n

end A392334

/-! ## A392334.P5960045462408995666

`A065599(n)+A059841(n)`
-/

namespace A392334.P5960045462408995666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065599 n + A059841 n

end

end A392334.P5960045462408995666

namespace A392334

/-- `A065599(n)+A059841(n)` -/
def P5960045462408995666.Spec : Prop :=
  ∀ n, P5960045462408995666.a n = A392334 n

end A392334

/-! ## A392334.P15864834031438248263

`A213041(n)-A065679(n)`
-/

namespace A392334.P15864834031438248263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213041 n - A065679 n

end

end A392334.P15864834031438248263

namespace A392334

/-- `A213041(n)-A065679(n)` -/
def P15864834031438248263.Spec : Prop :=
  ∀ n, P15864834031438248263.a n = A392334 n

end A392334

/-! ## A392334.P8188621667219094201

`A009001(n)*A127630(n)`
-/

namespace A392334.P8188621667219094201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n * A127630 n

end

end A392334.P8188621667219094201

namespace A392334

/-- `A009001(n)*A127630(n)` -/
def P8188621667219094201.Spec : Prop :=
  ∀ n, P8188621667219094201.a n = A392334 n

end A392334

/-! ## A392334.P1020267109770145805

`A093178(n)*A109613(n)`
-/

namespace A392334.P1020267109770145805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n * A109613 n

end

end A392334.P1020267109770145805

namespace A392334

/-- `A093178(n)*A109613(n)` -/
def P1020267109770145805.Spec : Prop :=
  ∀ n, P1020267109770145805.a n = A392334 n

end A392334

/-! ## A392334.P6451510016870799483

`gcd(A002411(n), A014736(n))`
-/

namespace A392334.P6451510016870799483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002411 n) (A014736 n)

end

end A392334.P6451510016870799483

namespace A392334

/-- `gcd(A002411(n), A014736(n))` -/
def P6451510016870799483.Spec : Prop :=
  ∀ n, (P6451510016870799483.a n : ℤ) = A392334 n

end A392334

/-!
# A392336: Number of maximal matchings in the n-necklace graph.

The programs for A392336, the canonical program `A392336.P8704834034968667777` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392336 has offset 1).

The definition of A392336 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392336.P10005280575865911988

`ogf((3+16x+12x^2)/(1-3x-8x^2-4x^3))`
-/

namespace A392336.P10005280575865911988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 16, 12] [1, -3, -8, -4] n

end

end A392336.P10005280575865911988

namespace A392336

/-- `ogf((3+16x+12x^2)/(1-3x-8x^2-4x^3))` -/
def P10005280575865911988.Spec : Prop :=
  ∀ n, P10005280575865911988.a n = A392336 (n + 1)

end A392336

/-! ## A392336.P8704834034968667777

`3*a(n-1)+8*a(n-2)+4*a(n-3)` with `a(0)=3, a(1)=25, a(2)=111`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392336

/-- `3*a(n-1)+8*a(n-2)+4*a(n-3)` -/
def P8704834034968667777.Spec : Prop :=
  ∀ n, (P8704834034968667777.a n : ℤ) = A392336 (n + 1)

theorem P8704834034968667777.correct : P8704834034968667777.Spec := by
  intro n
  simp only [A392336, Nat.add_sub_cancel]

end A392336

/-! ## A392336.P16346998545143299426

`(-1)^(n+1)+A170931(n+1)`
-/

namespace A392336.P16346998545143299426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) + A170931 (n + 1)

end

end A392336.P16346998545143299426

namespace A392336

/-- `(-1)^(n+1)+A170931(n+1)` -/
def P16346998545143299426.Spec : Prop :=
  ∀ n, P16346998545143299426.a n = A392336 (n + 1)

end A392336

/-! ## A392336.P16127276615480957766

`(-1)^(n+1)+2^(n+1)*A002203(n+1)`
-/

namespace A392336.P16127276615480957766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) + (2 ^ (n + 1) : ℤ) * A002203 (n + 1)

end

end A392336.P16127276615480957766

namespace A392336

/-- `(-1)^(n+1)+2^(n+1)*A002203(n+1)` -/
def P16127276615480957766.Spec : Prop :=
  ∀ n, P16127276615480957766.a n = A392336 (n + 1)

end A392336

/-! ## A392336.P15153211340054821010

`A108051(n+2)-a(n-1)` with `a(0)=3`
-/

namespace A392336.P15153211340054821010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A108051 (n + 2) - a (n - 1)

end

end A392336.P15153211340054821010

namespace A392336

/-- `A108051(n+2)-a(n-1)` -/
def P15153211340054821010.Spec : Prop :=
  ∀ n, P15153211340054821010.a n = A392336 (n + 1)

end A392336

/-!
# A392339: Number of decimal digit 1's in A006937(n).

The programs for A392339, there is no canonical definition to state claims against.
-/

/-! ## A392339.P7433897969889292823

`A115985(A092668(n))`
-/

namespace A392339.P7433897969889292823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115985 (A092668 n).toNat

end

end A392339.P7433897969889292823

/-! ## A392339.P1642179529462303477

`or(A134378(n), A243865(A259485(n+1)))`
-/

namespace A392339.P1642179529462303477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A134378 n) (A243865 (A259485 (n + 1)).toNat)

end

end A392339.P1642179529462303477

/-!
# A392341: Number of pairs (x, y) with 1 <= x < y <= n such that gcd(x, y) is a perfect square.

The programs for A392341, the canonical program `A392341.P17720603421166545301` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392341 has offset 1).

The definition of A392341 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392341.P17720603421166545301

`A370905(n+1)-A000196(n+1)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A392341

/-- `A370905(n+1)-A000196(n+1)` -/
def P17720603421166545301.Spec : Prop :=
  ∀ n, P17720603421166545301.a n = A392341 (n + 1)

theorem P17720603421166545301.correct : P17720603421166545301.Spec := by
  intro n
  simp only [A392341, Nat.add_sub_cancel]

end A392341

/-! ## A392341.P11750205897010587694

`A293162(A056877(3*n+2))+A015614(n+1)`
-/

namespace A392341.P11750205897010587694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293162 (A056877 (3 * n + 2)).toNat + A015614 (n + 1)

end

end A392341.P11750205897010587694

namespace A392341

/-- `A293162(A056877(3*n+2))+A015614(n+1)` -/
def P11750205897010587694.Spec : Prop :=
  ∀ n, P11750205897010587694.a n = A392341 (n + 1)

end A392341

/-! ## A392341.P7805087951738525668

`∑[A000010(n+1)]-A136522(A014371(n))`
-/

namespace A392341.P7805087951738525668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A136522 (A014371 n).toNat

end

end A392341.P7805087951738525668

namespace A392341

/-- `∑[A000010(n+1)]-A136522(A014371(n))` -/
def P7805087951738525668.Spec : Prop :=
  ∀ n, P7805087951738525668.a n = A392341 (n + 1)

end A392341

/-!
# A392342: Numbers that are not the sum of at most four cubefull numbers.

The programs for A392342, there is no canonical definition to state claims against.
-/

/-! ## A392342.P10390387798478234464

`eq[A129552(A287214(n)), A173678(n)]`
-/

namespace A392342.P10390387798478234464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129552 (A287214 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392342.P10390387798478234464

/-!
# A392343: Numbers that are not the sum of at most five 4-full numbers.

The programs for A392343, there is no canonical definition to state claims against.
-/

/-! ## A392343.P15841299982257523084

`lt[A321453(n+1), A262600(A053836(n))]`
-/

namespace A392343.P15841299982257523084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262600 (A053836 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392343.P15841299982257523084

/-! ## A392343.P4294372008799317217

`eq[char[A004834(n+1)], A332671(2*n+3)]`
-/

namespace A392343.P4294372008799317217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004834 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332671 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A392343.P4294372008799317217

/-!
# A392346: The smallest k >= 0 that can be represented as a linear combination of 1, 2, ..., n with coefficients +-1 and that cannot be represented using 1, 2, ..., m with 1<=m<n.

The programs for A392346, the canonical program `A392346.P7367142588368345697` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392346 has offset 1).

The definition of A392346 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392346.P7367142588368345697

`ogf((1+2x-5x^2+4x^3+4x^4-2x^5-2x^6+2x^7)/(1-x-2x^2+2x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392346

/-- `ogf((1+2x-5x^2+4x^3+4x^4-2x^5-2x^6+2x^7)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P7367142588368345697.Spec : Prop :=
  ∀ n, P7367142588368345697.a n = A392346 (n + 1)

theorem P7367142588368345697.correct : P7367142588368345697.Spec := by
  intro n
  simp only [A392346, Nat.add_sub_cancel]

end A392346

/-!
# A392348: Primes p such that the Chebyshev distance from 1 to p in the Ulam spiral is not a prime number.

The programs for A392348, there is no canonical definition to state claims against.
-/

/-! ## A392348.P5833021594359162719

`A000040(∑[col(A027623(3*n+4))])`
-/

namespace A392348.P5833021594359162719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A027623 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A392348.P5833021594359162719

/-! ## A392348.P2720220983870570712

`A330007(A080897(n+1))`
-/

namespace A392348.P2720220983870570712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330007 (A080897 (n + 1)).toNat

end

end A392348.P2720220983870570712

/-! ## A392348.P1693621331480487111

`filter[A038887(n+1), A140653(#)]`
-/

namespace A392348.P1693621331480487111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A140653 (f1 j).toNat = 1) n)

end

end A392348.P1693621331480487111

/-! ## A392348.P9065888536312845789

`filter[A040130(n+1), A140653(#)]`
-/

namespace A392348.P9065888536312845789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A140653 (f1 j).toNat = 1) n)

end

end A392348.P9065888536312845789

/-! ## A392348.P6396575590840924275

`filter[A040130(n+1), A255887(#)]`
-/

namespace A392348.P6396575590840924275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A255887 (f1 j).toNat = 1) n)

end

end A392348.P6396575590840924275

/-!
# A392349: a(n) = Sum_{k=0..floor(3*n/8)} binomial(3*n-7*k,k).

The programs for A392349, the canonical program `A392349.P4367967415769594739` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392349 has offset 0).

The definition of A392349 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(3*n/8), C(3*n-7*#, #)]` (program `A392349.P4367967415769594739`, by `A392349.P4367967415769594739.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392349.P5296437640600053360

`ogf((1-x^3)/(1-x-3x^3-x^8))`
-/

namespace A392349.P5296437640600053360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, -1] [1, -1, 0, -3, 0, 0, 0, 0, -1] n

end

end A392349.P5296437640600053360

namespace A392349

/-- `ogf((1-x^3)/(1-x-3x^3-x^8))` -/
def P5296437640600053360.Spec : Prop :=
  ∀ n, P5296437640600053360.a n = A392349 n

end A392349

/-! ## A392349.P10832540254107981097

`a(n-1)+3*a(n-3)+a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=6, a(5)=9, a(6)=18, a(7)=36`
-/

namespace A392349.P10832540254107981097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 3, 6, 9, 18, 36] fun n a =>
  a (n - 1) + 3 * a (n - 3) + a (n - 8)

end

end A392349.P10832540254107981097

namespace A392349

/-- `a(n-1)+3*a(n-3)+a(n-8)` -/
def P10832540254107981097.Spec : Prop :=
  ∀ n, (P10832540254107981097.a n : ℤ) = A392349 n

end A392349

/-! ## A392349.P4367967415769594739

`∑{#}[floor(3*n/8), C(3*n-7*#, #)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392349

/-- `∑{#}[floor(3*n/8), C(3*n-7*#, #)]` -/
def P4367967415769594739.Spec : Prop :=
  ∀ n, (P4367967415769594739.a n : ℤ) = A392349 n

theorem P4367967415769594739.correct : P4367967415769594739.Spec := by
  intro n
  simp only [A392349]

end A392349

/-! ## A392349.P663220427197605756

`A005710(3*n)`
-/

namespace A392349.P663220427197605756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005710 (3 * n)

end

end A392349.P663220427197605756

namespace A392349

/-- `A005710(3*n)` -/
def P663220427197605756.Spec : Prop :=
  ∀ n, P663220427197605756.a n = A392349 n

end A392349

/-! ## A392349.P8106782243417807251

`A017902(A180486(n+2))`
-/

namespace A392349.P8106782243417807251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017902 (A180486 (n + 2)).toNat

end

end A392349.P8106782243417807251

namespace A392349

/-- `A017902(A180486(n+2))` -/
def P8106782243417807251.Spec : Prop :=
  ∀ n, P8106782243417807251.a n = A392349 n

end A392349

/-!
# A392350: a(n) = Sum_{k=0..floor(3*n/11)} binomial(3*n-10*k,k).

The programs for A392350, the canonical program `A392350.P3364913799169666414` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392350 has offset 0).

The definition of A392350 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(3*n/11), C(3*n-10*#, #)]` (program `A392350.P3364913799169666414`, by `A392350.P3364913799169666414.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392350.P2325257377290580977

`ogf((1-x^4)/(1-x-3x^4-x^11))`
-/

namespace A392350.P2325257377290580977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 0, -1] [1, -1, 0, 0, -3, 0, 0, 0, 0, 0, 0, -1] n

end

end A392350.P2325257377290580977

namespace A392350

/-- `ogf((1-x^4)/(1-x-3x^4-x^11))` -/
def P2325257377290580977.Spec : Prop :=
  ∀ n, P2325257377290580977.a n = A392350 n

end A392350

/-! ## A392350.P3364913799169666414

`∑{#}[floor(3*n/11), C(3*n-10*#, #)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392350

/-- `∑{#}[floor(3*n/11), C(3*n-10*#, #)]` -/
def P3364913799169666414.Spec : Prop :=
  ∀ n, (P3364913799169666414.a n : ℤ) = A392350 n

theorem P3364913799169666414.correct : P3364913799169666414.Spec := by
  intro n
  simp only [A392350]

end A392350

/-! ## A392350.P993743462952022548

`A017905(3*(n+1)+8)`
-/

namespace A392350.P993743462952022548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017905 (3 * (n + 1) + 8)

end

end A392350.P993743462952022548

namespace A392350

/-- `A017905(3*(n+1)+8)` -/
def P993743462952022548.Spec : Prop :=
  ∀ n, P993743462952022548.a n = A392350 n

end A392350

/-!
# A392351: a(n) = Sum_{k=0..floor(3*n/14)} binomial(3*n-13*k,k).

The programs for A392351, the canonical program `A392351.P12068563116020304135` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392351 has offset 0).

The definition of A392351 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(3*n/14), C(3*n-13*#, #)]` (program `A392351.P12068563116020304135`, by `A392351.P12068563116020304135.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392351.P580343079241073063

`ogf((1-x^5)/(1-x-3x^5-x^14))`
-/

namespace A392351.P580343079241073063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 0, 0, -1] [1, -1, 0, 0, 0, -3, 0, 0, 0, 0, 0, 0, 0, 0, -1] n

end

end A392351.P580343079241073063

namespace A392351

/-- `ogf((1-x^5)/(1-x-3x^5-x^14))` -/
def P580343079241073063.Spec : Prop :=
  ∀ n, P580343079241073063.a n = A392351 n

end A392351

/-! ## A392351.P12068563116020304135

`∑{#}[floor(3*n/14), C(3*n-13*#, #)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392351

/-- `∑{#}[floor(3*n/14), C(3*n-13*#, #)]` -/
def P12068563116020304135.Spec : Prop :=
  ∀ n, (P12068563116020304135.a n : ℤ) = A392351 n

theorem P12068563116020304135.correct : P12068563116020304135.Spec := by
  intro n
  simp only [A392351]

end A392351

/-!
# A392352: a(n) = Sum_{k=0..floor(3*n/17)} binomial(3*n-16*k,k).

The programs for A392352, the canonical program `A392352.P6136439248883708024` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392352 has offset 0).

The definition of A392352 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(3*n/17), C(3*n-16*#, #)]` (program `A392352.P6136439248883708024`, by `A392352.P6136439248883708024.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392352.P7552850547156667919

`ogf((1-x^6)/(1-x-3x^6-x^17))`
-/

namespace A392352.P7552850547156667919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 0, 0, 0, -1] [1, -1, 0, 0, 0, 0, -3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] n

end

end A392352.P7552850547156667919

namespace A392352

/-- `ogf((1-x^6)/(1-x-3x^6-x^17))` -/
def P7552850547156667919.Spec : Prop :=
  ∀ n, P7552850547156667919.a n = A392352 n

end A392352

/-! ## A392352.P6136439248883708024

`∑{#}[floor(3*n/17), C(3*n-16*#, #)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392352

/-- `∑{#}[floor(3*n/17), C(3*n-16*#, #)]` -/
def P6136439248883708024.Spec : Prop :=
  ∀ n, (P6136439248883708024.a n : ℤ) = A392352 n

theorem P6136439248883708024.correct : P6136439248883708024.Spec := by
  intro n
  simp only [A392352]

end A392352

/-!
# A392353: Composite numbers k such that the Chebyshev distance from 1 to k in the square spiral is a prime number.

The programs for A392353, there is no canonical definition to state claims against.
-/

/-! ## A392353.P12028328837563209774

`eq[A055671(n), A284815(n+1)]`
-/

namespace A392353.P12028328837563209774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284815 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392353.P12028328837563209774

/-! ## A392353.P6969946262101059635

`eq[A055672(n), A284815(n+1)]`
-/

namespace A392353.P6969946262101059635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284815 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392353.P6969946262101059635

/-! ## A392353.P2228139481089787260

`lt[A283056(n)+1, A152061(n)]`
-/

namespace A392353.P2228139481089787260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283056 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152061 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392353.P2228139481089787260

/-! ## A392353.P7090068224617602403

`eq[A284815(n+1), A339579(n+1)]`
-/

namespace A392353.P7090068224617602403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392353.P7090068224617602403

/-! ## A392353.P18419792977653833322

`A353803(A046931(n+1))+A002808(n+5)`
-/

namespace A392353.P18419792977653833322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353803 (A046931 (n + 1)).toNat + A002808 (n + 5)

end

end A392353.P18419792977653833322

/-!
# A392354: Composite numbers k such that the Chebyshev distance from 1 to k in the Ulam spiral is not a prime number.

The programs for A392354, there is no canonical definition to state claims against.
-/

/-! ## A392354.P11640908180281585590

`filter[A024660(n+2), A174889(#)]`
-/

namespace A392354.P11640908180281585590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024660 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174889 (f1 j).toNat = 1) n)

end

end A392354.P11640908180281585590

/-! ## A392354.P5980972970751110100

`∩[A128510(n+1), A024660(n)]`
-/

namespace A392354.P5980972970751110100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024660 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392354.P5980972970751110100

/-!
# A392355: a(n) = Sum_{k=0..floor(4*n/7)} binomial(k,4*n-7*k).

The programs for A392355, the canonical program `A392355.P5144368283642145707` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392355 has offset 0).

The definition of A392355 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(4*n/7), C(#, 4*n-7*#)]` (program `A392355.P5144368283642145707`, by `A392355.P5144368283642145707.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392355.P4729108024033414590

`ogf((1-3x^2+3x^4-x^6)/(1-4x^2+6x^4-4x^6-x^7+x^8))`
-/

namespace A392355.P4729108024033414590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3, 0, 3, 0, -1] [1, 0, -4, 0, 6, 0, -4, -1, 1] n

end

end A392355.P4729108024033414590

namespace A392355

/-- `ogf((1-3x^2+3x^4-x^6)/(1-4x^2+6x^4-4x^6-x^7+x^8))` -/
def P4729108024033414590.Spec : Prop :=
  ∀ n, P4729108024033414590.a n = A392355 n

end A392355

/-! ## A392355.P16174605325011554625

`4*a(n-2)-6*a(n-4)+4*a(n-6)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=0, a(6)=1, a(7)=1`
-/

namespace A392355.P16174605325011554625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0, 1, 0, 1, 1] fun n a =>
  4 * a (n - 2) - 6 * a (n - 4) + 4 * a (n - 6) + a (n - 7) - a (n - 8)

end

end A392355.P16174605325011554625

namespace A392355

/-- `4*a(n-2)-6*a(n-4)+4*a(n-6)+a(n-7)-a(n-8)` -/
def P16174605325011554625.Spec : Prop :=
  ∀ n, P16174605325011554625.a n = A392355 n

end A392355

/-! ## A392355.P5144368283642145707

`∑{#}[floor(4*n/7), C(#, 4*n-7*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392355

/-- `∑{#}[floor(4*n/7), C(#, 4*n-7*#)]` -/
def P5144368283642145707.Spec : Prop :=
  ∀ n, (P5144368283642145707.a n : ℤ) = A392355 n

theorem P5144368283642145707.correct : P5144368283642145707.Spec := by
  intro n
  simp only [A392355]

end A392355

/-! ## A392355.P17153884653699265720

`A017857(4*n)`
-/

namespace A392355.P17153884653699265720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017857 (4 * n)

end

end A392355.P17153884653699265720

namespace A392355

/-- `A017857(4*n)` -/
def P17153884653699265720.Spec : Prop :=
  ∀ n, P17153884653699265720.a n = A392355 n

end A392355

/-! ## A392355.P5550982769100203808

`A127842(A004766(n+2))`
-/

namespace A392355.P5550982769100203808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127842 (A004766 (n + 2)).toNat

end

end A392355.P5550982769100203808

namespace A392355

/-- `A127842(A004766(n+2))` -/
def P5550982769100203808.Spec : Prop :=
  ∀ n, P5550982769100203808.a n = A392355 n

end A392355

/-! ## A392355.P12454566868364827126

`A017857(A008586(n))%A020737(n)`
-/

namespace A392355.P12454566868364827126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017857 (A008586 n).toNat) (A020737 n)

end

end A392355.P12454566868364827126

namespace A392355

/-- `A017857(A008586(n))%A020737(n)` -/
def P12454566868364827126.Spec : Prop :=
  ∀ n, P12454566868364827126.a n = A392355 n

end A392355

/-!
# A392356: a(n) = Sum_{k=0..floor(5*n/9)} binomial(k,5*n-9*k).

The programs for A392356, the canonical program `A392356.P11305592085329499730` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392356 has offset 0).

The definition of A392356 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(5*n/9), C(#, 5*n-9*#)]` (program `A392356.P11305592085329499730`, by `A392356.P11305592085329499730.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392356.P6791464484011884545

`ogf((1-4x^2+6x^4-4x^6+x^8)/(1-5x^2+10x^4-10x^6+5x^8-x^9-x^10))`
-/

namespace A392356.P6791464484011884545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -4, 0, 6, 0, -4, 0, 1] [1, 0, -5, 0, 10, 0, -10, 0, 5, -1, -1] n

end

end A392356.P6791464484011884545

namespace A392356

/-- `ogf((1-4x^2+6x^4-4x^6+x^8)/(1-5x^2+10x^4-10x^6+5x^8-x^9-x^10))` -/
def P6791464484011884545.Spec : Prop :=
  ∀ n, P6791464484011884545.a n = A392356 n

end A392356

/-! ## A392356.P11305592085329499730

`∑{#}[floor(5*n/9), C(#, 5*n-9*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392356

/-- `∑{#}[floor(5*n/9), C(#, 5*n-9*#)]` -/
def P11305592085329499730.Spec : Prop :=
  ∀ n, (P11305592085329499730.a n : ℤ) = A392356 n

theorem P11305592085329499730.correct : P11305592085329499730.Spec := by
  intro n
  simp only [A392356]

end A392356

/-! ## A392356.P11729082620594076471

`A017877(5*n)`
-/

namespace A392356.P11729082620594076471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017877 (5 * n)

end

end A392356.P11729082620594076471

namespace A392356

/-- `A017877(5*n)` -/
def P11729082620594076471.Spec : Prop :=
  ∀ n, P11729082620594076471.a n = A392356 n

end A392356

/-! ## A392356.P8517743452105076276

`A017877(A008587(n))%A103399(n+1)`
-/

namespace A392356.P8517743452105076276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017877 (A008587 n).toNat) (A103399 (n + 1))

end

end A392356.P8517743452105076276

namespace A392356

/-- `A017877(A008587(n))%A103399(n+1)` -/
def P8517743452105076276.Spec : Prop :=
  ∀ n, P8517743452105076276.a n = A392356 n

end A392356

/-! ## A392356.P7062479500620532714

`A017877(A008587(n))%A103397(n+1)`
-/

namespace A392356.P7062479500620532714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017877 (A008587 n).toNat) (A103397 (n + 1))

end

end A392356.P7062479500620532714

namespace A392356

/-- `A017877(A008587(n))%A103397(n+1)` -/
def P7062479500620532714.Spec : Prop :=
  ∀ n, P7062479500620532714.a n = A392356 n

end A392356

/-!
# A392357: Triangle read by rows: T(n,k) is the number of plane partitions of n with k smallest parts.

The programs for A392357, there is no canonical definition to state claims against.
-/

/-! ## A392357.P12748465545808239393

`A124767(A000032(n)*A372762(n))`
-/

namespace A392357.P12748465545808239393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (A000032 n * A372762 n).toNat

end

end A392357.P12748465545808239393

/-! ## A392357.P7866758883206065288

`A069010(A329861(n)*A383471(n))`
-/

namespace A392357.P7866758883206065288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A329861 n * A383471 n).toNat

end

end A392357.P7866758883206065288

/-! ## A392357.P11826305392800737777

`A213177(n)+A010054(A000079(n))`
-/

namespace A392357.P11826305392800737777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 n + A010054 (A000079 n).toNat

end

end A392357.P11826305392800737777

/-! ## A392357.P14519140289296331080

`A213177(n)+A010052(A163876(n))`
-/

namespace A392357.P14519140289296331080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 n + A010052 (A163876 n).toNat

end

end A392357.P14519140289296331080

/-! ## A392357.P17803914068060324500

`A240467(A300660(n))+A213177(n)`
-/

namespace A392357.P17803914068060324500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240467 (A300660 n).toNat + A213177 n

end

end A392357.P17803914068060324500

/-!
# A392359: Denominators of the reduced fractions of the ratios of the number of primes less than n over n.

The programs for A392359, the canonical program `A392359.P2113602717843569055` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392359 has offset 1).

The definition of A392359 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392359.P2113602717843569055

`(n+1)/A087267(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A392359

/-- `(n+1)/A087267(n+1)` -/
def P2113602717843569055.Spec : Prop :=
  ∀ n, P2113602717843569055.a n = (A392359 (n + 1) : ℚ)

end A392359

/-! ## A392359.P1771861565121451625

`(n+1)/gcd(n+1, A000720(n+1))`
-/

namespace A392359.P1771861565121451625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A000720 (n + 1)) : ℚ)

end

end A392359.P1771861565121451625

namespace A392359

/-- `(n+1)/gcd(n+1, A000720(n+1))` -/
def P1771861565121451625.Spec : Prop :=
  ∀ n, P1771861565121451625.a n = (A392359 (n + 1) : ℚ)

end A392359

/-! ## A392359.P5059895572853858742

`A102614(n+1)+A102613(n+1)`
-/

namespace A392359.P5059895572853858742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102614 (n + 1) + A102613 (n + 1)

end

end A392359.P5059895572853858742

namespace A392359

/-- `A102614(n+1)+A102613(n+1)` -/
def P5059895572853858742.Spec : Prop :=
  ∀ n, P5059895572853858742.a n = A392359 (n + 1)

end A392359

/-! ## A392359.P6730289456304238754

`A054531(A256885(n+1))`
-/

namespace A392359.P6730289456304238754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A256885 (n + 1)).toNat

end

end A392359.P6730289456304238754

namespace A392359

/-- `A054531(A256885(n+1))` -/
def P6730289456304238754.Spec : Prop :=
  ∀ n, P6730289456304238754.a n = A392359 (n + 1)

end A392359

/-! ## A392359.P14199145732672157229

`A054531(∑[A113638(n+1)])`
-/

namespace A392359.P14199145732672157229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A392359.P14199145732672157229

namespace A392359

/-- `A054531(∑[A113638(n+1)])` -/
def P14199145732672157229.Spec : Prop :=
  ∀ n, P14199145732672157229.a n = A392359 (n + 1)

end A392359

/-! ## A392359.P13515467037339645301

`A341314(A374426(n+1))`
-/

namespace A392359.P13515467037339645301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341314 (A374426 (n + 1)).toNat

end

end A392359.P13515467037339645301

namespace A392359

/-- `A341314(A374426(n+1))` -/
def P13515467037339645301.Spec : Prop :=
  ∀ n, P13515467037339645301.a n = A392359 (n + 1)

end A392359

/-!
# A392360: Nonsquarefree numbers that are neither squareful nor biquadratefree.

The programs for A392360, there is no canonical definition to state claims against.
-/

/-! ## A392360.P12088183207877585715

`filter[A046101(n+1), A389905(#)]`
-/

namespace A392360.P12088183207877585715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A392360.P12088183207877585715

/-! ## A392360.P1106591611333636051

`filter[A391115(1+n), A389905(#)]`
-/

namespace A392360.P1106591611333636051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391115 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A392360.P1106591611333636051

/-! ## A392360.P14940252957661800136

`filter[A391591(n+1), A389905(#)]`
-/

namespace A392360.P14940252957661800136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A392360.P14940252957661800136

/-! ## A392360.P9655993643531663636

`∩[A046101(n+1), A391319(n+1)]`
-/

namespace A392360.P9655993643531663636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392360.P9655993643531663636

/-! ## A392360.P8486956021746972557

`∩[A391115(n+1), A391319(n+1)]`
-/

namespace A392360.P8486956021746972557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392360.P8486956021746972557

/-! ## A392360.P12058827985871690259

`∩[A391319(n+1), A391591(n+1)]`
-/

namespace A392360.P12058827985871690259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392360.P12058827985871690259

/-! ## A392360.P1105263825990758896

`∩[A046101(n+1), A332785(n+1)]`
-/

namespace A392360.P1105263825990758896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392360.P1105263825990758896

/-! ## A392360.P5168569004592285367

`∩[A332785(n+1), A391115(n+1)]`
-/

namespace A392360.P5168569004592285367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392360.P5168569004592285367

/-! ## A392360.P16611726982299116590

`∩[A332785(n+1), A391591(n+1)]`
-/

namespace A392360.P16611726982299116590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392360.P16611726982299116590

/-! ## A392360.P7347965653099724630

`∩[A046101(n+1), A389065(n+1)]`
-/

namespace A392360.P7347965653099724630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392360.P7347965653099724630

/-! ## A392360.P6585944187598585845

`∩[A389065(n+1), A391115(n+1)]`
-/

namespace A392360.P6585944187598585845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392360.P6585944187598585845

/-! ## A392360.P9262440288555502175

`∩[A389065(n+1), A391591(n+1)]`
-/

namespace A392360.P9262440288555502175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392360.P9262440288555502175

/-! ## A392360.P2242553727614573270

`∩[A046101(n+1), A052485(n+1)]`
-/

namespace A392360.P2242553727614573270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392360.P2242553727614573270

/-! ## A392360.P112448722200950555

`∩[A052485(n+1), A391115(n+1)]`
-/

namespace A392360.P112448722200950555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392360.P112448722200950555

/-! ## A392360.P13031298973065015883

`∩[A052485(n+1), A391591(n+1)]`
-/

namespace A392360.P13031298973065015883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392360.P13031298973065015883

/-!
# A392363: Smallest connected polyiamond containing all free n-iamonds under rigid motions of the triangular lattice.

The programs for A392363, there is no canonical definition to state claims against.
-/

/-! ## A392363.P11056121339172299595

`A069813(n+3)-char[3]`
-/

namespace A392363.P11056121339172299595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069813 (n + 3) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A392363.P11056121339172299595

/-! ## A392363.P14711299268161540488

`A194990(C(n+3, 2)-2)+∑{digits}[n, C(#, 9)]`
-/

namespace A392363.P14711299268161540488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194990 (Nat.choose (n + 3) 2 - 2) + ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose x 9).sum : ℕ) : ℤ)

end

end A392363.P14711299268161540488

/-! ## A392363.P3831452651710826347

`A121229(A008747(n+1))`
-/

namespace A392363.P3831452651710826347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121229 (A008747 (n + 1)).toNat

end

end A392363.P3831452651710826347

/-! ## A392363.P12555607456767596590

`A127757(A073497(n+2))`
-/

namespace A392363.P12555607456767596590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A073497 (n + 2)).toNat

end

end A392363.P12555607456767596590

/-! ## A392363.P11947350457429767091

`A337636(A022935(n+2))`
-/

namespace A392363.P11947350457429767091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337636 (A022935 (n + 2)).toNat

end

end A392363.P11947350457429767091

/-!
# A392365: The cubefree numbers squared.

The programs for A392365, the canonical program `A392365.P14078290519509760206` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392365 has offset 1).

The definition of A392365 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A392365.P14078290519509760206

`A004709(n+1)²`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A392365

/-- `A004709(n+1)²` -/
def P14078290519509760206.Spec : Prop :=
  ∀ n, P14078290519509760206.a n = A392365 (n + 1)

theorem P14078290519509760206.correct : P14078290519509760206.Spec := by
  intro n
  simp only [A392365, Nat.add_sub_cancel]

end A392365

/-! ## A392365.P10356569965265563929

`record[A382902(n+1)²]`
-/

namespace A392365.P10356569965265563929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382902 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392365.P10356569965265563929

namespace A392365

/-- `record[A382902(n+1)²]` -/
def P10356569965265563929.Spec : Prop :=
  ∀ n, P10356569965265563929.a n = A392365 (n + 1)

end A392365

/-! ## A392365.P7300199928676751925

`record[A382903(n+1)²]`
-/

namespace A392365.P7300199928676751925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382903 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392365.P7300199928676751925

namespace A392365

/-- `record[A382903(n+1)²]` -/
def P7300199928676751925.Spec : Prop :=
  ∀ n, P7300199928676751925.a n = A392365 (n + 1)

end A392365

/-! ## A392365.P16723459770346875076

`record[A007948(n+1)²]`
-/

namespace A392365.P16723459770346875076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392365.P16723459770346875076

namespace A392365

/-- `record[A007948(n+1)²]` -/
def P16723459770346875076.Spec : Prop :=
  ∀ n, P16723459770346875076.a n = A392365 (n + 1)

end A392365

/-! ## A392365.P14749341376203819172

`record[A050985(n+1)²]`
-/

namespace A392365.P14749341376203819172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392365.P14749341376203819172

namespace A392365

/-- `record[A050985(n+1)²]` -/
def P14749341376203819172.Spec : Prop :=
  ∀ n, P14749341376203819172.a n = A392365 (n + 1)

end A392365

/-! ## A392365.P16481877542967625740

`record[A066990(n+1)²]`
-/

namespace A392365.P16481877542967625740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392365.P16481877542967625740

namespace A392365

/-- `record[A066990(n+1)²]` -/
def P16481877542967625740.Spec : Prop :=
  ∀ n, P16481877542967625740.a n = A392365 (n + 1)

end A392365

/-! ## A392365.P13589483033715305490

`record[A117656(n+1)²]`
-/

namespace A392365.P13589483033715305490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117656 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392365.P13589483033715305490

namespace A392365

/-- `record[A117656(n+1)²]` -/
def P13589483033715305490.Spec : Prop :=
  ∀ n, P13589483033715305490.a n = A392365 (n + 1)

end A392365

/-! ## A392365.P6983901514785787946

`record[A355261(n+1)²]`
-/

namespace A392365.P6983901514785787946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355261 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392365.P6983901514785787946

namespace A392365

/-- `record[A355261(n+1)²]` -/
def P6983901514785787946.Spec : Prop :=
  ∀ n, P6983901514785787946.a n = A392365 (n + 1)

end A392365

/-! ## A392365.P288696060621374627

`record[A360539(n+1)²]`
-/

namespace A392365.P288696060621374627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360539 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392365.P288696060621374627

namespace A392365

/-- `record[A360539(n+1)²]` -/
def P288696060621374627.Spec : Prop :=
  ∀ n, P288696060621374627.a n = A392365 (n + 1)

end A392365

/-! ## A392365.P1142350109721717557

`record[A367699(n+1)²]`
-/

namespace A392365.P1142350109721717557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367699 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392365.P1142350109721717557

namespace A392365

/-- `record[A367699(n+1)²]` -/
def P1142350109721717557.Spec : Prop :=
  ∀ n, P1142350109721717557.a n = A392365 (n + 1)

end A392365

/-! ## A392365.P1685589481221040352

`record[A368171(n+1)²]`
-/

namespace A392365.P1685589481221040352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368171 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392365.P1685589481221040352

namespace A392365

/-- `record[A368171(n+1)²]` -/
def P1685589481221040352.Spec : Prop :=
  ∀ n, P1685589481221040352.a n = A392365 (n + 1)

end A392365

/-! ## A392365.P9003607752890506269

`record[A384555(n+1)²]`
-/

namespace A392365.P9003607752890506269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384555 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392365.P9003607752890506269

namespace A392365

/-- `record[A384555(n+1)²]` -/
def P9003607752890506269.Spec : Prop :=
  ∀ n, P9003607752890506269.a n = A392365 (n + 1)

end A392365

/-! ## A392365.P3987581974620555916

`A057521(A382063(n+1)²)`
-/

namespace A392365.P3987581974620555916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A382063 (n + 1) ^ 2).toNat

end

end A392365.P3987581974620555916

namespace A392365

/-- `A057521(A382063(n+1)²)` -/
def P3987581974620555916.Spec : Prop :=
  ∀ n, P3987581974620555916.a n = A392365 (n + 1)

end A392365

/-!
# A392366: The odd squarefree numbers squared.

The programs for A392366, the canonical program `A392366.P7451516623562640753` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392366 has offset 1).

The definition of A392366 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056911, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A392366.P7451516623562640753

`A056911(n+1)²`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A392366

/-- `A056911(n+1)²` -/
def P7451516623562640753.Spec : Prop :=
  ∀ n, P7451516623562640753.a n = A392366 (n + 1)

theorem P7451516623562640753.correct : P7451516623562640753.Spec := by
  intro n
  simp only [A392366, Nat.add_sub_cancel]

end A392366

/-! ## A392366.P15608595279429161770

`(A039956(n+1)/2)²`
-/

namespace A392366.P15608595279429161770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A039956 (n + 1) : ℚ) / 2) ^ 2

end

end A392366.P15608595279429161770

namespace A392366

/-- `(A039956(n+1)/2)²` -/
def P15608595279429161770.Spec : Prop :=
  ∀ n, P15608595279429161770.a n = (A392366 (n + 1) : ℚ)

theorem P15608595279429161770.correct : P15608595279429161770.Spec := by
  intro n
  simp only [A392366, Nat.add_sub_cancel, A392366.P15608595279429161770.a, A392366.P7451516623562640753.a, A039956, A039956.P6592204116604427737.a, A056911, A056911.P3674524494642334646.f1, A056911.P3674524494642334646.f2, A056911.P3674524494642334646.a, A323239, A323239.P16564446151600433291.f1, A323239.P16564446151600433291.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A392366

/-! ## A392366.P8373918489141192145

`(A081770(n+1)/4)²`
-/

namespace A392366.P8373918489141192145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A081770 (n + 1) : ℚ) / 4) ^ 2

end

end A392366.P8373918489141192145

namespace A392366

/-- `(A081770(n+1)/4)²` -/
def P8373918489141192145.Spec : Prop :=
  ∀ n, P8373918489141192145.a n = (A392366 (n + 1) : ℚ)

theorem P8373918489141192145.correct : P8373918489141192145.Spec := by
  intro n
  simp only [A392366, Nat.add_sub_cancel, A392366.P8373918489141192145.a, A392366.P7451516623562640753.a, A056911, A056911.P3674524494642334646.f1, A056911.P3674524494642334646.f2, A056911.P3674524494642334646.a, A081770, A081770.P8847963435303273364.a, A323239, A323239.P16564446151600433291.f1, A323239.P16564446151600433291.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A392366

/-! ## A392366.P1683567748777384062

`(A039956(n+1)-A056911(n+1))*A056911(n+1)`
-/

namespace A392366.P1683567748777384062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039956 (n + 1) - A056911 (n + 1)) * A056911 (n + 1)

end

end A392366.P1683567748777384062

namespace A392366

/-- `(A039956(n+1)-A056911(n+1))*A056911(n+1)` -/
def P1683567748777384062.Spec : Prop :=
  ∀ n, P1683567748777384062.a n = A392366 (n + 1)

theorem P1683567748777384062.correct : P1683567748777384062.Spec := by
  intro n
  simp only [A392366, Nat.add_sub_cancel, A392366.P1683567748777384062.a, A392366.P7451516623562640753.a, A039956, A039956.P6592204116604427737.a, A056911, A056911.P3674524494642334646.f1, A056911.P3674524494642334646.f2, A056911.P3674524494642334646.a, A323239, A323239.P16564446151600433291.f1, A323239.P16564446151600433291.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A392366

/-! ## A392366.P9482864768568436011

`A016754(A264387(n+1))`
-/

namespace A392366.P9482864768568436011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (A264387 (n + 1)).toNat

end

end A392366.P9482864768568436011

namespace A392366

/-- `A016754(A264387(n+1))` -/
def P9482864768568436011.Spec : Prop :=
  ∀ n, P9482864768568436011.a n = A392366 (n + 1)

end A392366

/-! ## A392366.P1126294506407148984

`record[∏{p}[2*n+1, #]²]`
-/

namespace A392366.P1126294506407148984
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), p) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392366.P1126294506407148984

namespace A392366

/-- `record[∏{p}[2*n+1, #]²]` -/
def P1126294506407148984.Spec : Prop :=
  ∀ n, (P1126294506407148984.a n : ℤ) = A392366 (n + 1)

end A392366

/-! ## A392366.P16688062012375441148

`record[∏{p}[2*n+1, #]^2]`
-/

namespace A392366.P16688062012375441148
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), p) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392366.P16688062012375441148

namespace A392366

/-- `record[∏{p}[2*n+1, #]^2]` -/
def P16688062012375441148.Spec : Prop :=
  ∀ n, (P16688062012375441148.a n : ℤ) = A392366 (n + 1)

end A392366

/-! ## A392366.P87670301777006176

`record[(2*n+1)*∏{p}[2*n+1, #]]`
-/

namespace A392366.P87670301777006176
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392366.P87670301777006176

namespace A392366

/-- `record[(2*n+1)*∏{p}[2*n+1, #]]` -/
def P87670301777006176.Spec : Prop :=
  ∀ n, (P87670301777006176.a n : ℤ) = A392366 (n + 1)

end A392366

/-! ## A392366.P13402144146868694247

`record[((2*n+1)/∏{e}[2*n+1, #])²]`
-/

namespace A392366.P13402144146868694247
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392366.P13402144146868694247

namespace A392366

/-- `record[((2*n+1)/∏{e}[2*n+1, #])²]` -/
def P13402144146868694247.Spec : Prop :=
  ∀ n, P13402144146868694247.a n = (A392366 (n + 1) : ℚ)

end A392366

/-! ## A392366.P2290150726069642415

`record[(2*n+1)^(2/∏{e}[2*n+1, #])]`
-/

namespace A392366.P2290150726069642415
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℝ) ^ (2 / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392366.P2290150726069642415

namespace A392366

/-- `record[(2*n+1)^(2/∏{e}[2*n+1, #])]` -/
def P2290150726069642415.Spec : Prop :=
  ∀ n, P2290150726069642415.a n = (A392366 (n + 1) : ℝ)

end A392366

/-! ## A392366.P2896772454780684146

`record[(2*n+1)*(2*n+1)/∏{e}[2*n+1, #]]`
-/

namespace A392366.P2896772454780684146
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) * ((2 * n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392366.P2896772454780684146

namespace A392366

/-- `record[(2*n+1)*(2*n+1)/∏{e}[2*n+1, #]]` -/
def P2896772454780684146.Spec : Prop :=
  ∀ n, P2896772454780684146.a n = (A392366 (n + 1) : ℚ)

end A392366

/-! ## A392366.P12797817593546422012

`record[A099984(n+1)²]`
-/

namespace A392366.P12797817593546422012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099984 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392366.P12797817593546422012

namespace A392366

/-- `record[A099984(n+1)²]` -/
def P12797817593546422012.Spec : Prop :=
  ∀ n, P12797817593546422012.a n = A392366 (n + 1)

end A392366

/-! ## A392366.P11605894663918049095

`record[A349341(n+1)²]`
-/

namespace A392366.P11605894663918049095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349341 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392366.P11605894663918049095

namespace A392366

/-- `record[A349341(n+1)²]` -/
def P11605894663918049095.Spec : Prop :=
  ∀ n, P11605894663918049095.a n = A392366 (n + 1)

end A392366

/-! ## A392366.P11727740790188766682

`record[A349343(n+1)²]`
-/

namespace A392366.P11727740790188766682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349343 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392366.P11727740790188766682

namespace A392366

/-- `record[A349343(n+1)²]` -/
def P11727740790188766682.Spec : Prop :=
  ∀ n, P11727740790188766682.a n = A392366 (n + 1)

end A392366

/-! ## A392366.P11702022592207223684

`record[∏{p}[1-2*n, #]]²`
-/

namespace A392366.P11702022592207223684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A392366.P11702022592207223684

namespace A392366

/-- `record[∏{p}[1-2*n, #]]²` -/
def P11702022592207223684.Spec : Prop :=
  ∀ n, (P11702022592207223684.a n : ℤ) = A392366 (n + 1)

end A392366

/-! ## A392366.P6373035245002902840

`∩[A062503(n+1), A016754(n)]`
-/

namespace A392366.P6373035245002902840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392366.P6373035245002902840

namespace A392366

/-- `∩[A062503(n+1), A016754(n)]` -/
def P6373035245002902840.Spec : Prop :=
  ∀ n, (P6373035245002902840.a n : ℤ) = A392366 (n + 1)

end A392366

/-! ## A392366.P3501665641906249075

`∩[A016754(n), A359580(n+1)]`
-/

namespace A392366.P3501665641906249075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392366.P3501665641906249075

namespace A392366

/-- `∩[A016754(n), A359580(n+1)]` -/
def P3501665641906249075.Spec : Prop :=
  ∀ n, (P3501665641906249075.a n : ℤ) = A392366 (n + 1)

end A392366

/-! ## A392366.P15898204594193498462

`∩[A062503(n+1), A062739(n+1)]`
-/

namespace A392366.P15898204594193498462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392366.P15898204594193498462

namespace A392366

/-- `∩[A062503(n+1), A062739(n+1)]` -/
def P15898204594193498462.Spec : Prop :=
  ∀ n, (P15898204594193498462.a n : ℤ) = A392366 (n + 1)

end A392366

/-! ## A392366.P3257980138588618377

`record[A364900(n)²]`
-/

namespace A392366.P3257980138588618377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364900 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392366.P3257980138588618377

namespace A392366

/-- `record[A364900(n)²]` -/
def P3257980138588618377.Spec : Prop :=
  ∀ n, P3257980138588618377.a n = A392366 (n + 1)

end A392366

/-! ## A392366.P3908971774931219870

`∩[A062503(n+1), A080335(n)]`
-/

namespace A392366.P3908971774931219870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080335 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392366.P3908971774931219870

namespace A392366

/-- `∩[A062503(n+1), A080335(n)]` -/
def P3908971774931219870.Spec : Prop :=
  ∀ n, (P3908971774931219870.a n : ℤ) = A392366 (n + 1)

end A392366

/-!
# A392367: Numbers whose greatest prime factor is a Fermat prime.

The programs for A392367, the canonical program `A392367.P15301889459740145191` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392367 has offset 1).

The definition of A392367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 411 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392367.P15301889459740145191

`eq[2, A000120(A006530(n+1))]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A392367

/-- `eq[2, A000120(A006530(n+1))]+1` -/
def P15301889459740145191.Spec : Prop :=
  ∀ n, (P15301889459740145191.a n : ℤ) = A392367 (n + 1)

theorem P15301889459740145191.correct : P15301889459740145191.Spec := by
  intro n
  simp only [A392367, Nat.add_sub_cancel]

end A392367

/-! ## A392367.P4096869921915086271

`eq[6, A078479(2*n+1)]`
-/

namespace A392367.P4096869921915086271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078479 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A392367.P4096869921915086271

namespace A392367

/-- `eq[6, A078479(2*n+1)]` -/
def P4096869921915086271.Spec : Prop :=
  ∀ n, (P4096869921915086271.a n : ℤ) = A392367 (n + 1)

end A392367

/-! ## A392367.P16612690292089780545

`A157684(A230306(n+1))`
-/

namespace A392367.P16612690292089780545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157684 (A230306 (n + 1)).toNat

end

end A392367.P16612690292089780545

namespace A392367

/-- `A157684(A230306(n+1))` -/
def P16612690292089780545.Spec : Prop :=
  ∀ n, P16612690292089780545.a n = A392367 (n + 1)

end A392367

/-! ## A392367.P18098621392861035963

`A156251(A238130(n)+A156244(n+1))`
-/

namespace A392367.P18098621392861035963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156251 (A238130 n + A156244 (n + 1)).toNat

end

end A392367.P18098621392861035963

namespace A392367

/-- `A156251(A238130(n)+A156244(n+1))` -/
def P18098621392861035963.Spec : Prop :=
  ∀ n, P18098621392861035963.a n = A392367 (n + 1)

end A392367

/-! ## A392367.P14790278830645199892

`A179239(lt[A065620(n), A379678(3*n+5)])`
-/

namespace A392367.P14790278830645199892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379678 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179239 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A392367.P14790278830645199892

namespace A392367

/-- `A179239(lt[A065620(n), A379678(3*n+5)])` -/
def P14790278830645199892.Spec : Prop :=
  ∀ n, P14790278830645199892.a n = A392367 (n + 1)

end A392367

/-!
# A392368: Numbers whose least prime factor is a Fermat prime.

The programs for A392368, there is no canonical definition to state claims against.
-/

/-! ## A392368.P2872679626609869482

`eq[2, A000120(A020639(n+1))]+1`
-/

namespace A392368.P2872679626609869482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A020639 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A392368.P2872679626609869482

/-! ## A392368.P13495035528054933410

`eq[2, A000120(A090088(n+1))]`
-/

namespace A392368.P13495035528054933410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A090088 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A392368.P13495035528054933410

/-! ## A392368.P1909143990573975503

`∪[A020737(n), A086748(n+1)]`
-/

namespace A392368.P1909143990573975503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020737 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392368.P1909143990573975503

/-! ## A392368.P14939129161673490802

`∪[A048578(n), A086748(n+1)]`
-/

namespace A392368.P14939129161673490802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392368.P14939129161673490802

/-! ## A392368.P14702572817562375501

`∪[A086748(n+1), A089894(n)]`
-/

namespace A392368.P14702572817562375501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089894 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392368.P14702572817562375501

/-! ## A392368.P15354609719400881957

`∪[A086748(n+1), A139617(n)]`
-/

namespace A392368.P15354609719400881957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139617 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392368.P15354609719400881957

/-! ## A392368.P9694819717045150721

`∪[A086748(n+1), A158585(n)]`
-/

namespace A392368.P9694819717045150721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392368.P9694819717045150721

/-! ## A392368.P9153705473900427194

`∪[A086748(n+1), A258598(n)]`
-/

namespace A392368.P9153705473900427194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258598 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392368.P9153705473900427194

/-! ## A392368.P12535302506781300278

`∪[A022012(n+1), A086748(n+1)]`
-/

namespace A392368.P12535302506781300278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392368.P12535302506781300278

/-! ## A392368.P4313125428926805073

`∪[A022546(n+1), A086748(n+1)]`
-/

namespace A392368.P4313125428926805073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392368.P4313125428926805073

/-!
# A392369: Sum of odd-indexed parts of the reversed n-th composition in standard order.

The programs for A392369, the canonical program `A392369.P6450070147382306436` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392369 has offset 0).

The definition of A392369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392369.P6450070147382306436

`ceil(log2(n+1))-A392370(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A392369

/-- `ceil(log2(n+1))-A392370(n)` -/
def P6450070147382306436.Spec : Prop :=
  ∀ n, P6450070147382306436.a n = A392369 n

theorem P6450070147382306436.correct : P6450070147382306436.Spec := by
  intro n
  simp only [A392369]

end A392369

/-! ## A392369.P6609728027505993186

`A290251(A231551(n))`
-/

namespace A392369.P6609728027505993186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (A231551 n).toNat

end

end A392369.P6609728027505993186

namespace A392369

/-- `A290251(A231551(n))` -/
def P6609728027505993186.Spec : Prop :=
  ∀ n, P6609728027505993186.a n = A392369 n

end A392369

/-! ## A392369.P13331503757041154683

`A209281(A145342(n+1))`
-/

namespace A392369.P13331503757041154683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209281 (A145342 (n + 1)).toNat

end

end A392369.P13331503757041154683

namespace A392369

/-- `A209281(A145342(n+1))` -/
def P13331503757041154683.Spec : Prop :=
  ∀ n, P13331503757041154683.a n = A392369 n

end A392369

/-! ## A392369.P11373997461859742718

`A000120(A341916(n))`
-/

namespace A392369.P11373997461859742718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A341916 n).toNat

end

end A392369.P11373997461859742718

namespace A392369

/-- `A000120(A341916(n))` -/
def P11373997461859742718.Spec : Prop :=
  ∀ n, P11373997461859742718.a n = A392369 n

end A392369

/-! ## A392369.P1379896406761165709

`A005811(A006068(A006068(A341915(A006068(n)))))`
-/

namespace A392369.P1379896406761165709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A006068 (A006068 (A341915 (A006068 n).toNat).toNat).toNat).toNat

end

end A392369.P1379896406761165709

namespace A392369

/-- `A005811(A006068(A006068(A341915(A006068(n)))))` -/
def P1379896406761165709.Spec : Prop :=
  ∀ n, P1379896406761165709.a n = A392369 n

end A392369

/-! ## A392369.P10681697910865378381

`A005811(A341916(A341916(A341916(A341915(n)))))`
-/

namespace A392369.P10681697910865378381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A341916 (A341916 (A341916 (A341915 n).toNat).toNat).toNat).toNat

end

end A392369.P10681697910865378381

namespace A392369

/-- `A005811(A341916(A341916(A341916(A341915(n)))))` -/
def P10681697910865378381.Spec : Prop :=
  ∀ n, P10681697910865378381.a n = A392369 n

end A392369

/-! ## A392369.P12078013347036502458

`A392370(Δ[n²])`
-/

namespace A392369.P12078013347036502458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392370 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A392369.P12078013347036502458

namespace A392369

/-- `A392370(Δ[n²])` -/
def P12078013347036502458.Spec : Prop :=
  ∀ n, P12078013347036502458.a n = A392369 n

end A392369

/-! ## A392369.P17976161588319498577

`A048881(2*A341916(n))`
-/

namespace A392369.P17976161588319498577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * A341916 n).toNat

end

end A392369.P17976161588319498577

namespace A392369

/-- `A048881(2*A341916(n))` -/
def P17976161588319498577.Spec : Prop :=
  ∀ n, P17976161588319498577.a n = A392369 n

end A392369

/-! ## A392369.P6199103366004975970

`A000120(A153154(n))`
-/

namespace A392369.P6199103366004975970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A153154 n).toNat

end

end A392369.P6199103366004975970

namespace A392369

/-- `A000120(A153154(n))` -/
def P6199103366004975970.Spec : Prop :=
  ∀ n, P6199103366004975970.a n = A392369 n

end A392369

/-! ## A392369.P6197576541512017997

`A392370(n)+A344618(n)`
-/

namespace A392369.P6197576541512017997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392370 n + A344618 n

end

end A392369.P6197576541512017997

namespace A392369

/-- `A392370(n)+A344618(n)` -/
def P6197576541512017997.Spec : Prop :=
  ∀ n, P6197576541512017997.a n = A392369 n

end A392369

/-!
# A392370: Sum of even-indexed parts of the reversed n-th composition in standard order.

The programs for A392370, the canonical program `A392370.P3678449110929773305` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392370 has offset 0).

The definition of A392370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392370.P17029193948872150242

`ceil(log2(n+1))-A392369(n)`
-/

namespace A392370.P17029193948872150242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 1 : ℝ)⌉ - A392369 n

end

end A392370.P17029193948872150242

namespace A392370

/-- `ceil(log2(n+1))-A392369(n)` -/
def P17029193948872150242.Spec : Prop :=
  ∀ n, P17029193948872150242.a n = A392370 n

theorem P17029193948872150242.correct : P17029193948872150242.Spec := by
  intro n
  simp only [A392370, Nat.add_sub_cancel, A392370.P17029193948872150242.a, A392370.P3678449110929773305.a, A005811, A005811.P8696411420205566785.a, A006068, A006068.P433290056721054414.a, A341916, A341916.P6146047658477802750.a, A362160, A362160.P8719433231678747217.a, A392369, A392369.P6450070147382306436.a, A000120, A000120.P2816527436160941581.a, A003188, A003188.P10544524695508875182.a, A145342, A145342.P11180459690303212781.a, A281589, A281589.P10233469596152794852.a, A005187, A005187.P3874015513960485494.a, A119608, A119608.P13313804277254006300.a, A145341, A145341.P17834554394848515737.a, A030101, A030101.P16184294017372777612.a, A065620, A065620.P132964274324401119.a, A280995, A280995.P6106047691923245664.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A392370

/-! ## A392370.P14525354657925903412

`abs(A029837(n+1)-A392369(n))`
-/

namespace A392370.P14525354657925903412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A029837 (n + 1) - A392369 n|

end

end A392370.P14525354657925903412

namespace A392370

/-- `abs(A029837(n+1)-A392369(n))` -/
def P14525354657925903412.Spec : Prop :=
  ∀ n, P14525354657925903412.a n = A392370 n

end A392370

/-! ## A392370.P3678449110929773305

`A005811(A006068(A341916(A362160(A341916(n)))))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A392370

/-- `A005811(A006068(A341916(A362160(A341916(n)))))` -/
def P3678449110929773305.Spec : Prop :=
  ∀ n, P3678449110929773305.a n = A392370 n

theorem P3678449110929773305.correct : P3678449110929773305.Spec := by
  intro n
  simp only [A392370]

end A392370

/-! ## A392370.P7135499036775649948

`A048881(A378299(n))`
-/

namespace A392370.P7135499036775649948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A378299 n).toNat

end

end A392370.P7135499036775649948

namespace A392370

/-- `A048881(A378299(n))` -/
def P7135499036775649948.Spec : Prop :=
  ∀ n, P7135499036775649948.a n = A392370 n

end A392370

/-! ## A392370.P12730639517186283458

`A346633(A145342(n+1)-1)`
-/

namespace A392370.P12730639517186283458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346633 (A145342 (n + 1) - 1).toNat

end

end A392370.P12730639517186283458

namespace A392370

/-- `A346633(A145342(n+1)-1)` -/
def P12730639517186283458.Spec : Prop :=
  ∀ n, P12730639517186283458.a n = A392370 n

end A392370

/-! ## A392370.P14431385916883424076

`A080791(A341916(n))`
-/

namespace A392370.P14431385916883424076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A341916 n).toNat

end

end A392370.P14431385916883424076

namespace A392370

/-- `A080791(A341916(n))` -/
def P14431385916883424076.Spec : Prop :=
  ∀ n, P14431385916883424076.a n = A392370 n

end A392370

/-! ## A392370.P3844912916197903832

`A023416(A341916(n))%A008000(n)`
-/

namespace A392370.P3844912916197903832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023416 (A341916 n).toNat) (A008000 n)

end

end A392370.P3844912916197903832

namespace A392370

/-- `A023416(A341916(n))%A008000(n)` -/
def P3844912916197903832.Spec : Prop :=
  ∀ n, P3844912916197903832.a n = A392370 n

end A392370

/-! ## A392370.P7534433735701618068

`A392369(Δ[n²])-1`
-/

namespace A392370.P7534433735701618068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392369 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A392370.P7534433735701618068

namespace A392370

/-- `A392369(Δ[n²])-1` -/
def P7534433735701618068.Spec : Prop :=
  ∀ n, P7534433735701618068.a n = A392370 n

end A392370

/-! ## A392370.P16165123971984030116

`A080791(A153154(n))`
-/

namespace A392370.P16165123971984030116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A153154 n).toNat

end

end A392370.P16165123971984030116

namespace A392370

/-- `A080791(A153154(n))` -/
def P16165123971984030116.Spec : Prop :=
  ∀ n, P16165123971984030116.a n = A392370 n

end A392370

/-! ## A392370.P13253526943775974740

`A209281(A011782(A392369(2*n+1))²)`
-/

namespace A392370.P13253526943775974740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209281 (A011782 (A392369 (2 * n + 1)).toNat ^ 2).toNat

end

end A392370.P13253526943775974740

namespace A392370

/-- `A209281(A011782(A392369(2*n+1))²)` -/
def P13253526943775974740.Spec : Prop :=
  ∀ n, P13253526943775974740.a n = A392370 n

end A392370

/-! ## A392370.P18432482066451606435

`A346699(A011782(A392369(2*n+1))²)`
-/

namespace A392370.P18432482066451606435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346699 (A011782 (A392369 (2 * n + 1)).toNat ^ 2).toNat

end

end A392370.P18432482066451606435

namespace A392370

/-- `A346699(A011782(A392369(2*n+1))²)` -/
def P18432482066451606435.Spec : Prop :=
  ∀ n, P18432482066451606435.a n = A392370 n

end A392370

/-!
# A392371: Numbers k such that if the least prime index of k is x, then all subsequent prime indices are 2x.

The programs for A392371, there is no canonical definition to state claims against.
-/

/-! ## A392371.P6072330352723918591

`∪[A000040(n+1), A392700(n+1)]`
-/

namespace A392371.P6072330352723918591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392371.P6072330352723918591

/-! ## A392371.P15934243345986881616

`∪[A008578(n+1), A392700(n+1)]`
-/

namespace A392371.P15934243345986881616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392371.P15934243345986881616

/-! ## A392371.P1851438388349071473

`∪[A116974(n+1), A392700(n+1)]`
-/

namespace A392371.P1851438388349071473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392371.P1851438388349071473

/-! ## A392371.P223351670835081268

`∪[A106317(n+1), A392700(n+1)]`
-/

namespace A392371.P223351670835081268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392371.P223351670835081268

/-! ## A392371.P3432777007528635820

`∩[A362981(n+1), A392694(n+1)]`
-/

namespace A392371.P3432777007528635820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392371.P3432777007528635820

/-!
# A392373: Lexicographically earliest infinite sequence of distinct squarefree semiprimes (A006881) with the property that, for all k >= 1, the k-th prime divides exactly k terms.

The programs for A392373, there is no canonical definition to state claims against.
-/

/-! ## A392373.P15777130895216631733

`∩[A064452(n+1), A309102(n+1)]`
-/

namespace A392373.P15777130895216631733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392373.P15777130895216631733

/-! ## A392373.P18442939464595939291

`A337646(A329254(n+2))`
-/

namespace A392373.P18442939464595939291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337646 (A329254 (n + 2)).toNat

end

end A392373.P18442939464595939291

/-! ## A392373.P16071937306005592107

`A337646(A359003(n+3))`
-/

namespace A392373.P16071937306005592107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337646 (A359003 (n + 3)).toNat

end

end A392373.P16071937306005592107

/-!
# A392374: Irregular triangle read by rows where row n lists the 0-based partial alternating sums of the prime indices of n.

The programs for A392374, there is no canonical definition to state claims against.
-/

/-! ## A392374.P13669878838923475662

`A344616(A379374(n+1)^(A068068(3*n+1)+1))`
-/

namespace A392374.P13669878838923475662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (SequenceMachineLib.roundAway ((A379374 (n + 1) : ℚ) ^ (A068068 (3 * n + 1) + 1 : ℤ))).toNat

end

end A392374.P13669878838923475662

/-! ## A392374.P8668038601792036059

`A325439(A344611(n+3))%A162306(n+1)`
-/

namespace A392374.P8668038601792036059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325439 (A344611 (n + 3)).toNat) (A162306 (n + 1))

end

end A392374.P8668038601792036059

/-! ## A392374.P521487285397180210

`A277146(A284301(n+1))`
-/

namespace A392374.P521487285397180210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277146 (A284301 (n + 1)).toNat

end

end A392374.P521487285397180210

/-! ## A392374.P14510798948240631697

`A289813(A006054(n))%4`
-/

namespace A392374.P14510798948240631697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289813 (A006054 n).toNat) 4

end

end A392374.P14510798948240631697

/-! ## A392374.P14427884421587410084

`A380875(n+2)%A359289(A056578(n))`
-/

namespace A392374.P14427884421587410084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A380875 (n + 2)) (A359289 (A056578 n).toNat)

end

end A392374.P14427884421587410084

/-!
# A392375: Numbers k such that k is coprime to each of its digits and to the sum of its digits.

The programs for A392375, there is no canonical definition to state claims against.
-/

/-! ## A392375.P15235440834727144294

`∩[A061116(n+1), A339076(n+1)]`
-/

namespace A392375.P15235440834727144294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392375.P15235440834727144294

/-! ## A392375.P6983930586773074868

`∩[A061116(n+1), A125007(n+1)]`
-/

namespace A392375.P6983930586773074868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392375.P6983930586773074868

/-! ## A392375.P5696609529379612658

`∩[A061116(n+1), A117741(n+1)]`
-/

namespace A392375.P5696609529379612658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392375.P5696609529379612658

/-! ## A392375.P3736844476196415408

`∩[A061116(n+1), A352826(n+1)]`
-/

namespace A392375.P3736844476196415408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392375.P3736844476196415408

/-! ## A392375.P9686360040932165674

`∩[A061116(n+1), A390626(n+1)]`
-/

namespace A392375.P9686360040932165674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392375.P9686360040932165674

/-!
# A392379: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A393888.

The programs for A392379, there is no canonical definition to state claims against.
-/

/-! ## A392379.P8948827847904097031

`A091063(A094544(n))*A144064(n)`
-/

namespace A392379.P8948827847904097031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091063 (A094544 n).toNat * A144064 n

end

end A392379.P8948827847904097031

/-! ## A392379.P5727869243516676790

`A091063(A094544(n))*A296068(n)`
-/

namespace A392379.P5727869243516676790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091063 (A094544 n).toNat * A296068 n

end

end A392379.P5727869243516676790

/-! ## A392379.P17344356199226792744

`A341935(lcm(A144064(n), A385017(n)))`
-/

namespace A392379.P17344356199226792744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341935 (Int.lcm (A144064 n) (A385017 n))

end

end A392379.P17344356199226792744

/-! ## A392379.P5117833622230991905

`A379598(n)+A072088(A379168(n))-A379168(n)`
-/

namespace A392379.P5117833622230991905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379598 n + A072088 (A379168 n).toNat - A379168 n

end

end A392379.P5117833622230991905

/-! ## A392379.P2174745341419267536

`A144064(n)*A214247(A029447(2*(n+2)))`
-/

namespace A392379.P2174745341419267536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 n * A214247 (A029447 (2 * (n + 2))).toNat

end

end A392379.P2174745341419267536

/-!
# A392380: Positive integers k whose multiset of prime factors can be partitioned into three nonempty subsets whose sums form a nondegenerate triangle.

The programs for A392380, there is no canonical definition to state claims against.
-/

/-! ## A392380.P15286260053093590309

`∩[A138884(n+1), A389414(n+1)]`
-/

namespace A392380.P15286260053093590309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392380.P15286260053093590309

/-! ## A392380.P589077545877672893

`lt[A000122(n), A118198(A326644(n))]`
-/

namespace A392380.P589077545877672893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118198 (A326644 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392380.P589077545877672893

/-! ## A392380.P4602798688659196176

`A186350(3*n+5)+A023416(A361857(3*n+5))`
-/

namespace A392380.P4602798688659196176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186350 (3 * n + 5) + A023416 (A361857 (3 * n + 5)).toNat

end

end A392380.P4602798688659196176

/-!
# A392381: a(n) is the number of distinct nondegenerate triangles that can be formed by partitioning the multiset of prime factors of A392380(n) into three nonempty subsets whose sums are the triangle sides.

The programs for A392381, there is no canonical definition to state claims against.
-/

/-! ## A392381.P244382179659753397

`A353849(A284949(n+1)+A002260(n+1))`
-/

namespace A392381.P244382179659753397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 (A284949 (n + 1) + A002260 (n + 1)).toNat

end

end A392381.P244382179659753397

/-! ## A392381.P10381787764993435351

`A339047(or(A000203(2*n+1), A294647(n+1)))`
-/

namespace A392381.P10381787764993435351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339047 (Int.lor (A000203 (2 * n + 1)) (A294647 (n + 1))).toNat

end

end A392381.P10381787764993435351

/-! ## A392381.P13641866458911033728

`A336137(A370803(n))`
-/

namespace A392381.P13641866458911033728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336137 (A370803 n).toNat

end

end A392381.P13641866458911033728

/-! ## A392381.P12870565550469112073

`A381952(A396420(n+1))`
-/

namespace A392381.P12870565550469112073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381952 (A396420 (n + 1)).toNat

end

end A392381.P12870565550469112073

/-! ## A392381.P12641426268999429615

`A362611(A115756(n+1)+A030036(n))`
-/

namespace A392381.P12641426268999429615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362611 (A115756 (n + 1) + A030036 n).toNat

end

end A392381.P12641426268999429615

/-!
# A392382: Numbers m with deficiency 28: sigma(m) - 2*m = -28.

The programs for A392382, there is no canonical definition to state claims against.
-/

/-! ## A392382.P1398040260024411750

`∩[A162302(n+1), A302125(n+1)]`
-/

namespace A392382.P1398040260024411750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392382.P1398040260024411750

/-! ## A392382.P13981433125515732243

`filter[A162302(n+2), A294934(#)]`
-/

namespace A392382.P13981433125515732243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162302 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A392382.P13981433125515732243

/-! ## A392382.P2005754723188238788

`filter[A162302(n+3), A168185(#)]`
-/

namespace A392382.P2005754723188238788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162302 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A392382.P2005754723188238788

/-! ## A392382.P1747232211142638105

`filter[A162302(n+3), A294935(#)]`
-/

namespace A392382.P1747232211142638105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162302 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A392382.P1747232211142638105

/-! ## A392382.P5905325770314784372

`filter[A162302(n+3), A295309(#)]`
-/

namespace A392382.P5905325770314784372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162302 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295309 (f1 j).toNat = 1) n)

end

end A392382.P5905325770314784372

/-!
# A392384: Numbers k such that sigma(k) = psi(k) + tau(k) + omega(k)^6.

The programs for A392384, there is no canonical definition to state claims against.
-/

/-! ## A392384.P6052656814770908579

`A394738(comp[4*n])`
-/

namespace A392384.P6052656814770908579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394738 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A392384.P6052656814770908579

/-!
# A392386: Numbers k such that omega(2*k) = omega(k + 2), where omega = A001221.

The programs for A392386, the canonical program `A392386.P13637188722429898050` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392386 has offset 1).

The definition of A392386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2977 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392386.P13637188722429898050

`eq[A001221(n+2), A001221(A004277(n))]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A392386

/-- `eq[A001221(n+2), A001221(A004277(n))]` -/
def P13637188722429898050.Spec : Prop :=
  ∀ n, (P13637188722429898050.a n : ℤ) = A392386 (n + 1)

theorem P13637188722429898050.correct : P13637188722429898050.Spec := by
  intro n
  simp only [A392386, Nat.add_sub_cancel]

end A392386

/-! ## A392386.P10685488296197834415

`eq[A001221(n+2), A001221(A008574(n))]`
-/

namespace A392386.P10685488296197834415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392386.P10685488296197834415

namespace A392386

/-- `eq[A001221(n+2), A001221(A008574(n))]` -/
def P10685488296197834415.Spec : Prop :=
  ∀ n, (P10685488296197834415.a n : ℤ) = A392386 (n + 1)

end A392386

/-! ## A392386.P14058993382793527574

`eq[A001221(n+2), A001221(A022144(n))]`
-/

namespace A392386.P14058993382793527574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392386.P14058993382793527574

namespace A392386

/-- `eq[A001221(n+2), A001221(A022144(n))]` -/
def P14058993382793527574.Spec : Prop :=
  ∀ n, (P14058993382793527574.a n : ℤ) = A392386 (n + 1)

end A392386

/-! ## A392386.P3624955420716191347

`eq[A001221(n+2), A001221(A234275(n))]`
-/

namespace A392386.P3624955420716191347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A234275 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392386.P3624955420716191347

namespace A392386

/-- `eq[A001221(n+2), A001221(A234275(n))]` -/
def P3624955420716191347.Spec : Prop :=
  ∀ n, (P3624955420716191347.a n : ℤ) = A392386 (n + 1)

end A392386

/-! ## A392386.P9857718299238917198

`eq[A001221(n+2), A001221(A028310(2*n))]`
-/

namespace A392386.P9857718299238917198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A028310 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392386.P9857718299238917198

namespace A392386

/-- `eq[A001221(n+2), A001221(A028310(2*n))]` -/
def P9857718299238917198.Spec : Prop :=
  ∀ n, (P9857718299238917198.a n : ℤ) = A392386 (n + 1)

end A392386

/-! ## A392386.P8860033258766603225

`eq[A001221(n+2), A001221(A219529(3*n))]`
-/

namespace A392386.P8860033258766603225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A219529 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392386.P8860033258766603225

namespace A392386

/-- `eq[A001221(n+2), A001221(A219529(3*n))]` -/
def P8860033258766603225.Spec : Prop :=
  ∀ n, (P8860033258766603225.a n : ℤ) = A392386 (n + 1)

end A392386

/-!
# A392389: Number of free polybends with n cells.

The programs for A392389, there is no canonical definition to state claims against.
-/

/-! ## A392389.P4225484089219856146

`A229300(A356230(n+1)+A274174(n))`
-/

namespace A392389.P4225484089219856146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229300 (A356230 (n + 1) + A274174 n).toNat

end

end A392389.P4225484089219856146

/-! ## A392389.P6049421625698602308

`A347457(A101268(n))+A070939(n)-A023416(n)`
-/

namespace A392389.P6049421625698602308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347457 (A101268 n).toNat + (A070939 n - A023416 n)

end

end A392389.P6049421625698602308

/-!
# A392391: Number of fixed polybends with n cells.

The programs for A392391, there is no canonical definition to state claims against.
-/

/-! ## A392391.P1378649934584829660

`A067628(A391032(n+3)-A400004(n+1))`
-/

namespace A392391.P1378649934584829660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067628 (A391032 (n + 3) - A400004 (n + 1)).toNat

end

end A392391.P1378649934584829660

/-!
# A392392: Number of free polyquarcs with n cells.

The programs for A392392, there is no canonical definition to state claims against.
-/

/-! ## A392392.P6719828764868804931

`A373813(A033887(n))`
-/

namespace A392392.P6719828764868804931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373813 (A033887 n).toNat

end

end A392392.P6719828764868804931

/-! ## A392392.P7054045594491230455

`A385272(A100793(n))`
-/

namespace A392392.P7054045594491230455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385272 (A100793 n).toNat

end

end A392392.P7054045594491230455

/-!
# A392393: Number of one-sided polyquarcs with n cells.

The programs for A392393, there is no canonical definition to state claims against.
-/

/-! ## A392393.P1840758140475737315

`A096457(A150115(n))`
-/

namespace A392393.P1840758140475737315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096457 (A150115 n).toNat

end

end A392393.P1840758140475737315

/-! ## A392393.P1345790294660716395

`A332508(n+1)-A085021(A049427(n))`
-/

namespace A392393.P1345790294660716395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332508 (n + 1) - A085021 (A049427 n).toNat

end

end A392393.P1345790294660716395

/-!
# A392394: Number of fixed polyquarcs with n cells.

The programs for A392394, there is no canonical definition to state claims against.
-/

/-! ## A392394.P12758092818501526256

`A084469(A265185(n))`
-/

namespace A392394.P12758092818501526256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084469 (A265185 n).toNat

end

end A392394.P12758092818501526256

/-!
# A392395: a(n) is the least positive integer k such that Mordell's equation y^2 = x^3 - k has exactly n integer solutions with y >= 0.

The programs for A392395, there is no canonical definition to state claims against.
-/

/-! ## A392395.P4166851327130483595

`A179175(Δ[A132411(n)]-1)`
-/

namespace A392395.P4166851327130483595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179175 (f1 (n + 1) - f1 n - 1).toNat

end

end A392395.P4166851327130483595

/-! ## A392395.P14741115576422044909

`A179175(n*A115581(3*n+5))`
-/

namespace A392395.P14741115576422044909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179175 ((n : ℤ) * A115581 (3 * n + 5)).toNat

end

end A392395.P14741115576422044909

/-! ## A392395.P4815116351171892192

`A179175(A322131(n)-A268643(n))`
-/

namespace A392395.P4815116351171892192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179175 (A322131 n - A268643 n).toNat

end

end A392395.P4815116351171892192

/-! ## A392395.P17866035740639289963

`A179175(A047216(n+1)-A289436(n+2))`
-/

namespace A392395.P17866035740639289963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179175 (A047216 (n + 1) - A289436 (n + 2)).toNat

end

end A392395.P17866035740639289963

/-!
# A392397: Primes p that are congruent to 1 (mod 10) for which 5 | A001177(p).

The programs for A392397, there is no canonical definition to state claims against.
-/

/-! ## A392397.P12763971465665118436

`∩[A216882(n+1), A368812(n+1)]`
-/

namespace A392397.P12763971465665118436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392397.P12763971465665118436

/-! ## A392397.P7654494254852140668

`∩[A000040(n+1), A066500(A306202(n+1))]`
-/

namespace A392397.P7654494254852140668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066500 (A306202 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392397.P7654494254852140668

/-! ## A392397.P16591333915538323859

`∩[A098058(n+1), A374365(n+1)]`
-/

namespace A392397.P16591333915538323859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392397.P16591333915538323859

/-! ## A392397.P5204699869537534701

`∩[A101635(n+1), A374365(n+1)]`
-/

namespace A392397.P5204699869537534701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392397.P5204699869537534701

/-! ## A392397.P10085284908957375774

`∩[A119992(n+1), A374365(n+1)]`
-/

namespace A392397.P10085284908957375774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392397.P10085284908957375774

/-!
# A392398: a(n) = Sum_{k=0..floor(2*n/7)} binomial(2*n-5*k,2*k).

The programs for A392398, the canonical program `A392398.P3440964976944741598` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392398 has offset 0).

The definition of A392398 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(2*n/7), C(2*n-5*#, 2*#)]` (program `A392398.P3440964976944741598`, by `A392398.P3440964976944741598.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392398.P7435368937215147947

`ogf((1-x-x^4)/(1-2x+x^2-4x^4-x^7))`
-/

namespace A392398.P7435368937215147947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, 0, -1] [1, -2, 1, 0, -4, 0, 0, -1] n

end

end A392398.P7435368937215147947

namespace A392398

/-- `ogf((1-x-x^4)/(1-2x+x^2-4x^4-x^7))` -/
def P7435368937215147947.Spec : Prop :=
  ∀ n, P7435368937215147947.a n = A392398 n

end A392398

/-! ## A392398.P17002019119230106315

`2*a(n-1)-a(n-2)+4*a(n-4)+a(n-7)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=4, a(5)=11, a(6)=22`
-/

namespace A392398.P17002019119230106315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 4, 11, 22] fun n a =>
  2 * a (n - 1) - a (n - 2) + 4 * a (n - 4) + a (n - 7)

end

end A392398.P17002019119230106315

namespace A392398

/-- `2*a(n-1)-a(n-2)+4*a(n-4)+a(n-7)` -/
def P17002019119230106315.Spec : Prop :=
  ∀ n, P17002019119230106315.a n = A392398 n

end A392398

/-! ## A392398.P3440964976944741598

`∑{#}[floor(2*n/7), C(2*n-5*#, 2*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392398

/-- `∑{#}[floor(2*n/7), C(2*n-5*#, 2*#)]` -/
def P3440964976944741598.Spec : Prop :=
  ∀ n, (P3440964976944741598.a n : ℤ) = A392398 n

theorem P3440964976944741598.correct : P3440964976944741598.Spec := by
  intro n
  simp only [A392398]

end A392398

/-! ## A392398.P3872284738630663760

`A098574(2*n)`
-/

namespace A392398.P3872284738630663760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098574 (2 * n)

end

end A392398.P3872284738630663760

namespace A392398

/-- `A098574(2*n)` -/
def P3872284738630663760.Spec : Prop :=
  ∀ n, P3872284738630663760.a n = A392398 n

theorem P3872284738630663760.correct : P3872284738630663760.Spec := by
  intro n
  simp only [A392398, Nat.add_sub_cancel, A392398.P3872284738630663760.a, A392398.P3440964976944741598.f1, A392398.P3440964976944741598.a, A098574, A098574.P12825288516400949452.f1, A098574.P12825288516400949452.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A392398

/-! ## A392398.P12531387645452673912

`A369813(4*n)`
-/

namespace A392398.P12531387645452673912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369813 (4 * n)

end

end A392398.P12531387645452673912

namespace A392398

/-- `A369813(4*n)` -/
def P12531387645452673912.Spec : Prop :=
  ∀ n, P12531387645452673912.a n = A392398 n

end A392398

/-!
# A392399: a(n) = Sum_{k=0..floor(2*n/9)} binomial(2*n-7*k,2*k).

The programs for A392399, the canonical program `A392399.P10272343163474577299` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392399 has offset 0).

The definition of A392399 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(2*n/9), C(2*n-7*#, 2*#)]` (program `A392399.P10272343163474577299`, by `A392399.P10272343163474577299.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392399.P17362196931956249565

`ogf((1-x-x^5)/(1-2x+x^2-4x^5-x^9))`
-/

namespace A392399.P17362196931956249565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, 0, 0, -1] [1, -2, 1, 0, 0, -4, 0, 0, 0, -1] n

end

end A392399.P17362196931956249565

namespace A392399

/-- `ogf((1-x-x^5)/(1-2x+x^2-4x^5-x^9))` -/
def P17362196931956249565.Spec : Prop :=
  ∀ n, P17362196931956249565.a n = A392399 n

end A392399

/-! ## A392399.P15716478085503372267

`2*a(n-1)-a(n-2)+4*a(n-5)+a(n-9)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=4, a(6)=11, a(7)=22, a(8)=37`
-/

namespace A392399.P15716478085503372267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 4, 11, 22, 37] fun n a =>
  2 * a (n - 1) - a (n - 2) + 4 * a (n - 5) + a (n - 9)

end

end A392399.P15716478085503372267

namespace A392399

/-- `2*a(n-1)-a(n-2)+4*a(n-5)+a(n-9)` -/
def P15716478085503372267.Spec : Prop :=
  ∀ n, P15716478085503372267.a n = A392399 n

end A392399

/-! ## A392399.P10272343163474577299

`∑{#}[floor(2*n/9), C(2*n-7*#, 2*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392399

/-- `∑{#}[floor(2*n/9), C(2*n-7*#, 2*#)]` -/
def P10272343163474577299.Spec : Prop :=
  ∀ n, (P10272343163474577299.a n : ℤ) = A392399 n

theorem P10272343163474577299.correct : P10272343163474577299.Spec := by
  intro n
  simp only [A392399]

end A392399

/-! ## A392399.P10234256363332187855

`A171145(A000021(n))`
-/

namespace A392399.P10234256363332187855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171145 (A000021 n).toNat

end

end A392399.P10234256363332187855

namespace A392399

/-- `A171145(A000021(n))` -/
def P10234256363332187855.Spec : Prop :=
  ∀ n, P10234256363332187855.a n = A392399 n

end A392399

/-! ## A392399.P9856054925223252370

`A156184(A276658(n))`
-/

namespace A392399.P9856054925223252370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156184 (A276658 n).toNat

end

end A392399.P9856054925223252370

namespace A392399

/-- `A156184(A276658(n))` -/
def P9856054925223252370.Spec : Prop :=
  ∀ n, P9856054925223252370.a n = A392399 n

end A392399

