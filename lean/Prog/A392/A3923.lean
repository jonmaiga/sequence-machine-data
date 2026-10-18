import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
# A392315: Number of vertex cuts in the n-necklace graph.

The programs for A392315, the canonical program `A392315.P18306522817607464159` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392315 has offset 1).

The definition of A392315 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392315.P18306522817607464159

`16^(n+1)-3^(n+1)-3*(5*3^(n+1)-7)*(n+1)/2-1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A392315

/-- `16^(n+1)-3^(n+1)-3*(5*3^(n+1)-7)*(n+1)/2-1` -/
def P18306522817607464159.Spec : Prop :=
  ∀ n, P18306522817607464159.a n = (A392315 (n + 1) : ℚ)

end A392315

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

The programs for A392318, the canonical program `A392318.P11358537660704665373` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392318 has offset 0).

The definition of A392318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392318.P11358537660704665373

`a(n-1)` with `a(0)=5, a(1)=1, a(2)=3, a(3)=8`

The canonical program, it is in `Seq.B000.C037`.
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

The programs for A392321, there is no canonical definition to state claims against.
-/

/-! ## A392321.P13375582452610978825

`A392617(2^(n+1))-1`
-/

namespace A392321.P13375582452610978825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392617 (2 ^ (n + 1)) - 1

end

end A392321.P13375582452610978825

/-!
# A392324: Minimal value of p(1) + Sum_{i=2...n} p(i-1)*p(i), as p ranges over all permutations of odd numbers {1,3,...,2*n-1}.

The programs for A392324, there is no canonical definition to state claims against.
-/

/-! ## A392324.P17674742206388024177

`∑[A089843(∑[A151897(n)])]`
-/

namespace A392324.P17674742206388024177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151897 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089843 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392324.P17674742206388024177

/-! ## A392324.P4748717617477149211

`∑[eq[A056239(3*n+1), A255246(n+1)]]`
-/

namespace A392324.P4748717617477149211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (3 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255246 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392324.P4748717617477149211

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

The programs for A392328, there is no canonical definition to state claims against.
-/

/-! ## A392328.P15567604144437909365

`A000045(n²+1)`
-/

namespace A392328.P15567604144437909365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n ^ 2 + 1)

end

end A392328.P15567604144437909365

/-! ## A392328.P7839585505931594435

`A104220(n²+1)`
-/

namespace A392328.P7839585505931594435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104220 (n ^ 2 + 1)

end

end A392328.P7839585505931594435

/-! ## A392328.P3978135076910537219

`A141325(n²+1)`
-/

namespace A392328.P3978135076910537219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141325 (n ^ 2 + 1)

end

end A392328.P3978135076910537219

/-! ## A392328.P10594093897892616018

`A167808(n²+1)`
-/

namespace A392328.P10594093897892616018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167808 (n ^ 2 + 1)

end

end A392328.P10594093897892616018

/-! ## A392328.P8236930311527058577

`A167816(n²+1)`
-/

namespace A392328.P8236930311527058577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167816 (n ^ 2 + 1)

end

end A392328.P8236930311527058577

/-!
# A392331: a(n) = 3^n*(4*n+1).

The programs for A392331, the canonical program `A392331.P6151116667762879899` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392331 has offset 0).

The definition of A392331 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*(4*n+1)` (program `A392331.P6151116667762879899`, by `A392331.P6151116667762879899.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A392331.P6151116667762879899

`3^n*(4*n+1)`

The canonical program, it is in `Seq.B000.C037`.
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
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A392331

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

The programs for A392332, the canonical program `A392332.P10626276045092877156` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392332 has offset 1).

The definition of A392332 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091194, A256562, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A392332.P10626276045092877156

`A256562(n+1)-A091194(n+1)`

The canonical program, it is in `Seq.B003.C004`.
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

The programs for A392334, the canonical program `A392334.P16455220936438434802` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392334 has offset 0).

The definition of A392334 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392334.P16455220936438434802

`A109613(n)^A000034(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A392334

/-- `A109613(n)^A000034(n)` -/
def P16455220936438434802.Spec : Prop :=
  ∀ n, P16455220936438434802.a n = (A392334 n : ℚ)

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

/-! ## A392334.P12423773383417332785

`gcd(A006011(n), A129957(n))`
-/

namespace A392334.P12423773383417332785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006011 n) (A129957 n)

end

end A392334.P12423773383417332785

namespace A392334

/-- `gcd(A006011(n), A129957(n))` -/
def P12423773383417332785.Spec : Prop :=
  ∀ n, (P12423773383417332785.a n : ℤ) = A392334 n

end A392334

/-! ## A392334.P6659290116988128272

`A014736(n)%A060798(n+1)`
-/

namespace A392334.P6659290116988128272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014736 n) (A060798 (n + 1))

end

end A392334.P6659290116988128272

namespace A392334

/-- `A014736(n)%A060798(n+1)` -/
def P6659290116988128272.Spec : Prop :=
  ∀ n, P6659290116988128272.a n = A392334 n

end A392334

/-! ## A392334.P18171739302811455446

`A093178(n)+A052928(n)*A093178(n)`
-/

namespace A392334.P18171739302811455446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n + A052928 n * A093178 n

end

end A392334.P18171739302811455446

namespace A392334

/-- `A093178(n)+A052928(n)*A093178(n)` -/
def P18171739302811455446.Spec : Prop :=
  ∀ n, P18171739302811455446.a n = A392334 n

end A392334

/-!
# A392336: Number of maximal matchings in the n-necklace graph.

The programs for A392336, the canonical program `A392336.P8704834034968667777` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392336 has offset 1).

The definition of A392336 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392336.P8704834034968667777

`3*a(n-1)+8*a(n-2)+4*a(n-3)` with `a(0)=3, a(1)=25, a(2)=111`

The canonical program, it is in `Seq.B000.C037`.
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

/-! ## A392339.P9906740635226494924

`A333766(A014605(2*n+3))+A176085(n)`
-/

namespace A392339.P9906740635226494924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333766 (A014605 (2 * n + 3)).toNat + A176085 n

end

end A392339.P9906740635226494924

/-!
# A392341: Number of pairs (x, y) with 1 <= x < y <= n such that gcd(x, y) is a perfect square.

The programs for A392341, the canonical program `A392341.P17720603421166545301` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392341 has offset 1).

The definition of A392341 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392341.P17720603421166545301

`A370905(n+1)-A000196(n+1)`

The canonical program, it is in `Seq.B004.C003`.
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

/-!
# A392343: Numbers that are not the sum of at most five 4-full numbers.

The programs for A392343, there is no canonical definition to state claims against.
-/

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
# A392348: Primes p such that the Chebyshev distance from 1 to p in the Ulam spiral is not a prime number.

The programs for A392348, there is no canonical definition to state claims against.
-/

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

/-! ## A392348.P6749519301236071381

`∩[A040130(n+1), A206718(n+1)]`
-/

namespace A392348.P6749519301236071381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392348.P6749519301236071381

/-!
# A392349: a(n) = Sum_{k=0..floor(3*n/8)} binomial(3*n-7*k,k).

The programs for A392349, the canonical program `A392349.P10832540254107981097` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392349 has offset 0).

The definition of A392349 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392349.P10832540254107981097

`a(n-1)+3*a(n-3)+a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=6, a(5)=9, a(6)=18, a(7)=36`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A392349

/-- `a(n-1)+3*a(n-3)+a(n-8)` -/
def P10832540254107981097.Spec : Prop :=
  ∀ n, (P10832540254107981097.a n : ℤ) = A392349 n

theorem P10832540254107981097.correct : P10832540254107981097.Spec := by
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

/-! ## A392349.P1245201213755541364

`A000027(A367800(3*n+1))`
-/

namespace A392349.P1245201213755541364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A367800 (3 * n + 1)).toNat

end

end A392349.P1245201213755541364

namespace A392349

/-- `A000027(A367800(3*n+1))` -/
def P1245201213755541364.Spec : Prop :=
  ∀ n, P1245201213755541364.a n = A392349 n

end A392349

/-! ## A392349.P4124303553691233942

`and(A153881(A335499(3*n+2)), A367800(3*n+1))`
-/

namespace A392349.P4124303553691233942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153881 (A335499 (3 * n + 2)).toNat) (A367800 (3 * n + 1))

end

end A392349.P4124303553691233942

namespace A392349

/-- `and(A153881(A335499(3*n+2)), A367800(3*n+1))` -/
def P4124303553691233942.Spec : Prop :=
  ∀ n, P4124303553691233942.a n = A392349 n

end A392349

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

/-! ## A392353.P7090030926462706298

`A002808(n+5)%A002222(A055495(n+2))`
-/

namespace A392353.P7090030926462706298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (n + 5)) (A002222 (A055495 (n + 2)).toNat)

end

end A392353.P7090030926462706298

/-! ## A392353.P13273965752050593476

`A002808(n+5)*A057427(A000009(2*n+3))`
-/

namespace A392353.P13273965752050593476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 5) * A057427 (A000009 (2 * n + 3)).toNat

end

end A392353.P13273965752050593476

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

The programs for A392355, the canonical program `A392355.P16174605325011554625` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392355 has offset 0).

The definition of A392355 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392355.P16174605325011554625

`4*a(n-2)-6*a(n-4)+4*a(n-6)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=0, a(6)=1, a(7)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A392355

/-- `4*a(n-2)-6*a(n-4)+4*a(n-6)+a(n-7)-a(n-8)` -/
def P16174605325011554625.Spec : Prop :=
  ∀ n, P16174605325011554625.a n = A392355 n

theorem P16174605325011554625.correct : P16174605325011554625.Spec := by
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

/-! ## A392355.P6164950591231478410

`A390220(A187829(n+2))`
-/

namespace A392355.P6164950591231478410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390220 (A187829 (n + 2)).toNat

end

end A392355.P6164950591231478410

namespace A392355

/-- `A390220(A187829(n+2))` -/
def P6164950591231478410.Spec : Prop :=
  ∀ n, P6164950591231478410.a n = A392355 n

end A392355

/-!
# A392356: a(n) = Sum_{k=0..floor(5*n/9)} binomial(k,5*n-9*k).

The programs for A392356, the canonical program `A392356.P11729082620594076471` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392356 has offset 0).

The definition of A392356 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 637 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392356.P11729082620594076471

`A017877(5*n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A392356

/-- `A017877(5*n)` -/
def P11729082620594076471.Spec : Prop :=
  ∀ n, P11729082620594076471.a n = A392356 n

theorem P11729082620594076471.correct : P11729082620594076471.Spec := by
  intro n
  simp only [A392356]

end A392356

/-! ## A392356.P14591844556325060773

`C(A000931(n), A317189(A000225(n)))`
-/

namespace A392356.P14591844556325060773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000931 n).toNat (A317189 (A000225 n).toNat).toNat

end

end A392356.P14591844556325060773

namespace A392356

/-- `C(A000931(n), A317189(A000225(n)))` -/
def P14591844556325060773.Spec : Prop :=
  ∀ n, (P14591844556325060773.a n : ℤ) = A392356 n

end A392356

/-! ## A392356.P14100103600885304788

`A178695(A111757(n+1))`
-/

namespace A392356.P14100103600885304788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178695 (A111757 (n + 1)).toNat

end

end A392356.P14100103600885304788

namespace A392356

/-- `A178695(A111757(n+1))` -/
def P14100103600885304788.Spec : Prop :=
  ∀ n, P14100103600885304788.a n = A392356 n

end A392356

/-! ## A392356.P18206961990162482968

`A062172(A247984(n+1))`
-/

namespace A392356.P18206961990162482968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062172 (A247984 (n + 1)).toNat

end

end A392356.P18206961990162482968

namespace A392356

/-- `A062172(A247984(n+1))` -/
def P18206961990162482968.Spec : Prop :=
  ∀ n, P18206961990162482968.a n = A392356 n

end A392356

/-! ## A392356.P10965976145197805133

`A243148(A123023(n+1))`
-/

namespace A392356.P10965976145197805133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A123023 (n + 1)).toNat

end

end A392356.P10965976145197805133

namespace A392356

/-- `A243148(A123023(n+1))` -/
def P10965976145197805133.Spec : Prop :=
  ∀ n, P10965976145197805133.a n = A392356 n

end A392356

/-!
# A392357: Triangle read by rows: T(n,k) is the number of plane partitions of n with k smallest parts.

The programs for A392357, there is no canonical definition to state claims against.
-/

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

/-! ## A392357.P15190259452360784370

`C(A213177(n), A357181(A000982(n)))`
-/

namespace A392357.P15190259452360784370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A213177 n).toNat (A357181 (A000982 n).toNat).toNat

end

end A392357.P15190259452360784370

/-! ## A392357.P9340128872922235690

`A213177(n)+A010054(A026622(n))`
-/

namespace A392357.P9340128872922235690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 n + A010054 (A026622 n).toNat

end

end A392357.P9340128872922235690

/-! ## A392357.P465304196400241535

`A213177(n)+A000035(A290679(n))`
-/

namespace A392357.P465304196400241535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 n + A000035 (A290679 n).toNat

end

end A392357.P465304196400241535

/-!
# A392359: Denominators of the reduced fractions of the ratios of the number of primes less than n over n.

The programs for A392359, the canonical program `A392359.P2113602717843569055` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392359 has offset 1).

The definition of A392359 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392359.P2113602717843569055

`(n+1)/A087267(n+1)`

The canonical program, it is in `Seq.B004.C003`.
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

/-!
# A392360: Nonsquarefree numbers that are neither squareful or biquadratefree.

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

/-! ## A392360.P723215882533321385

`filter[A391115(n+1), A389905(#)]`
-/

namespace A392360.P723215882533321385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A392360.P723215882533321385

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

/-! ## A392363.P2371560574073652704

`A072388(n)+A024162(n)`
-/

namespace A392363.P2371560574073652704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072388 n + A024162 n

end

end A392363.P2371560574073652704

/-! ## A392363.P15129786415571864985

`∑[A365663(A286495(n+1))]`
-/

namespace A392363.P15129786415571864985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365663 (A286495 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392363.P15129786415571864985

/-!
# A392365: The cubefree numbers squared.

The programs for A392365, the canonical program `A392365.P14078290519509760206` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392365 has offset 1).

The definition of A392365 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A392365.P14078290519509760206

`A004709(n+1)²`

The canonical program, it is in `Seq.B003.C004`.
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

/-!
# A392366: The odd squarefree numbers squared.

The programs for A392366, the canonical program `A392366.P7451516623562640753` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392366 has offset 1).

The definition of A392366 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056911, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A392366.P7451516623562640753

`A056911(n+1)²`

The canonical program, it is in `Seq.B002.C006`.
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

/-! ## A392366.P2260484559664513519

`record[∏{p}[comp[2*n], #²]]`
-/

namespace A392366.P2260484559664513519
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392366.P2260484559664513519

namespace A392366

/-- `record[∏{p}[comp[2*n], #²]]` -/
def P2260484559664513519.Spec : Prop :=
  ∀ n, (P2260484559664513519.a n : ℤ) = A392366 (n + 1)

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

/-! ## A392366.P16603163636034532085

`eq[2, ∏{e}[4*n, #]]²`
-/

namespace A392366.P16603163636034532085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A392366.P16603163636034532085

namespace A392366

/-- `eq[2, ∏{e}[4*n, #]]²` -/
def P16603163636034532085.Spec : Prop :=
  ∀ n, (P16603163636034532085.a n : ℤ) = A392366 (n + 1)

end A392366

/-! ## A392366.P6676292566189307497

`eq[2*n, ∏{p}[2*n, #]]²`
-/

namespace A392366.P6676292566189307497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A392366.P6676292566189307497

namespace A392366

/-- `eq[2*n, ∏{p}[2*n, #]]²` -/
def P6676292566189307497.Spec : Prop :=
  ∀ n, (P6676292566189307497.a n : ℤ) = A392366 (n + 1)

end A392366

/-!
# A392367: Numbers whose greatest prime factor is a Fermat prime.

The programs for A392367, there is no canonical definition to state claims against.
-/

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

/-! ## A392367.P16612690292089780545

`A157684(A230306(n+1))`
-/

namespace A392367.P16612690292089780545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157684 (A230306 (n + 1)).toNat

end

end A392367.P16612690292089780545

/-! ## A392367.P18098621392861035963

`A156251(A238130(n)+A156244(n+1))`
-/

namespace A392367.P18098621392861035963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156251 (A238130 n + A156244 (n + 1)).toNat

end

end A392367.P18098621392861035963

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

/-! ## A392367.P67501179165002011

`A157684(A331910(2*(n+1))+A013947(3*(n+1)))`
-/

namespace A392367.P67501179165002011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157684 (A331910 (2 * (n + 1)) + A013947 (3 * (n + 1))).toNat

end

end A392367.P67501179165002011

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

/-! ## A392368.P3406797586921279763

`∩[A080307(n+1), A283002(n+1)]`
-/

namespace A392368.P3406797586921279763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392368.P3406797586921279763

/-! ## A392368.P10720391016475734415

`eq[A178142(n+2), A283978(A247505(2*n+1))]`
-/

namespace A392368.P10720391016475734415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178142 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283978 (A247505 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392368.P10720391016475734415

/-! ## A392368.P9164002453965629612

`A178832(A019407(n+2))`
-/

namespace A392368.P9164002453965629612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178832 (A019407 (n + 2)).toNat

end

end A392368.P9164002453965629612

/-! ## A392368.P16992801444084948017

`eq[A000035(n), A006928(A210421(n+1))]`
-/

namespace A392368.P16992801444084948017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (A210421 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392368.P16992801444084948017

/-!
# A392369: Sum of odd-indexed parts of the reversed n-th composition in standard order.

The programs for A392369, there is no canonical definition to state claims against.
-/

/-! ## A392369.P6450070147382306436

`ceil(log2(n+1))-A392370(n)`
-/

namespace A392369.P6450070147382306436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 1 : ℝ)⌉ - A392370 n

end

end A392369.P6450070147382306436

/-! ## A392369.P6199103366004975970

`A000120(A153154(n))`
-/

namespace A392369.P6199103366004975970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A153154 n).toNat

end

end A392369.P6199103366004975970

/-! ## A392369.P11373997461859742718

`A000120(A341916(n))`
-/

namespace A392369.P11373997461859742718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A341916 n).toNat

end

end A392369.P11373997461859742718

/-! ## A392369.P6609728027505993186

`A290251(A231551(n))`
-/

namespace A392369.P6609728027505993186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (A231551 n).toNat

end

end A392369.P6609728027505993186

/-! ## A392369.P13331503757041154683

`A209281(A145342(n+1))`
-/

namespace A392369.P13331503757041154683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209281 (A145342 (n + 1)).toNat

end

end A392369.P13331503757041154683

/-! ## A392369.P17976161588319498577

`A048881(2*A341916(n))`
-/

namespace A392369.P17976161588319498577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * A341916 n).toNat

end

end A392369.P17976161588319498577

/-! ## A392369.P1379896406761165709

`A005811(A006068(A006068(A341915(A006068(n)))))`
-/

namespace A392369.P1379896406761165709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A006068 (A006068 (A341915 (A006068 n).toNat).toNat).toNat).toNat

end

end A392369.P1379896406761165709

/-! ## A392369.P10681697910865378381

`A005811(A341916(A341916(A341916(A341915(n)))))`
-/

namespace A392369.P10681697910865378381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A341916 (A341916 (A341916 (A341915 n).toNat).toNat).toNat).toNat

end

end A392369.P10681697910865378381

/-! ## A392369.P6197576541512017997

`A392370(n)+A344618(n)`
-/

namespace A392369.P6197576541512017997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392370 n + A344618 n

end

end A392369.P6197576541512017997

/-!
# A392370: Sum of even-indexed parts of the reversed n-th composition in standard order.

The programs for A392370, there is no canonical definition to state claims against.
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

/-! ## A392370.P16165123971984030116

`A080791(A153154(n))`
-/

namespace A392370.P16165123971984030116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A153154 n).toNat

end

end A392370.P16165123971984030116

/-! ## A392370.P14431385916883424076

`A080791(A341916(n))`
-/

namespace A392370.P14431385916883424076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A341916 n).toNat

end

end A392370.P14431385916883424076

/-! ## A392370.P7135499036775649948

`A048881(A378299(n))`
-/

namespace A392370.P7135499036775649948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A378299 n).toNat

end

end A392370.P7135499036775649948

/-! ## A392370.P12730639517186283458

`A346633(A145342(n+1)-1)`
-/

namespace A392370.P12730639517186283458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346633 (A145342 (n + 1) - 1).toNat

end

end A392370.P12730639517186283458

/-! ## A392370.P14525354657925903412

`abs(A029837(n+1)-A392369(n))`
-/

namespace A392370.P14525354657925903412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A029837 (n + 1) - A392369 n|

end

end A392370.P14525354657925903412

/-! ## A392370.P3844912916197903832

`A023416(A341916(n))%A008000(n)`
-/

namespace A392370.P3844912916197903832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023416 (A341916 n).toNat) (A008000 n)

end

end A392370.P3844912916197903832

/-! ## A392370.P438350241188983756

`A392369(n)-A344618(n)`
-/

namespace A392370.P438350241188983756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392369 n - A344618 n

end

end A392370.P438350241188983756

/-!
# A392371: Numbers k such that if the least prime index of k is x, then all subsequent prime indices are 2x.

The programs for A392371, there is no canonical definition to state claims against.
-/

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

/-! ## A392371.P12328745919281212397

`lt[A336168(A003415(n)), A053824(n+1)]`
-/

namespace A392371.P12328745919281212397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336168 (A003415 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392371.P12328745919281212397

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

/-! ## A392374.P14427884421587410084

`A380875(n+2)%A359289(A056578(n))`
-/

namespace A392374.P14427884421587410084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A380875 (n + 2)) (A359289 (A056578 n).toNat)

end

end A392374.P14427884421587410084

/-! ## A392374.P2171794908031936743

`A358379(A358377(n+1))-A300719(n+1)`
-/

namespace A392374.P2171794908031936743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358379 (A358377 (n + 1)).toNat - A300719 (n + 1)

end

end A392374.P2171794908031936743

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

/-! ## A392379.P16935860357125452895

`A309864(A006257(n))*A384899(n)`
-/

namespace A392379.P16935860357125452895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309864 (A006257 n).toNat * A384899 n

end

end A392379.P16935860357125452895

/-! ## A392379.P11769953521050127488

`A010050(A172537(n+1))*A379598(n)`
-/

namespace A392379.P11769953521050127488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010050 (A172537 (n + 1)).toNat * A379598 n

end

end A392379.P11769953521050127488

/-! ## A392379.P5130164047355089993

`A321650(A179383(n+1))*A378291(n)`
-/

namespace A392379.P5130164047355089993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321650 (A179383 (n + 1)).toNat * A378291 n

end

end A392379.P5130164047355089993

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

/-!
# A392381: a(n) is the number of distinct nondegenerate triangles that can be formed by partitioning the multiset of prime factors of A392380(n) into three nonempty subsets whose sums are the triangle sides.

The programs for A392381, there is no canonical definition to state claims against.
-/

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

/-! ## A392381.P5140466103688935472

`A353745(A088434(n+1)+A022629(n+4))`
-/

namespace A392381.P5140466103688935472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353745 (A088434 (n + 1) + A022629 (n + 4)).toNat

end

end A392381.P5140466103688935472

/-! ## A392381.P5406314991513071174

`A384883(A017835(n))`
-/

namespace A392381.P5406314991513071174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384883 (A017835 n).toNat

end

end A392381.P5406314991513071174

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

/-! ## A392384.P13794884738276533975

`A394738(comp[2^n-a(n-1)])` with `a(0)=-2`
-/

namespace A392384.P13794884738276533975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n f1 =>
  (2 ^ n : ℤ) - f1 (n - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394738 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A392384.P13794884738276533975

/-!
# A392386: Numbers k such that omega(2*k) = omega(k + 2), where omega = A001221.

The programs for A392386, the canonical program `A392386.P13637188722429898050` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392386 has offset 1).

The definition of A392386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2977 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392386.P13637188722429898050

`eq[A001221(n+2), A001221(A004277(n))]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A392386

/-- `eq[A001221(n+2), A001221(A004277(n))]` -/
def P13637188722429898050.Spec : Prop :=
  ∀ n, (P13637188722429898050.a n : ℤ) = A392386 (n + 1)

theorem P13637188722429898050.correct : P13637188722429898050.Spec := by
  intro n
  simp only [A392386, Nat.add_sub_cancel]

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
# A392392: Number of free polyquarcs with n cells.

The programs for A392392, there is no canonical definition to state claims against.
-/

/-! ## A392392.P7054045594491230455

`A385272(A100793(n))`
-/

namespace A392392.P7054045594491230455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385272 (A100793 n).toNat

end

end A392392.P7054045594491230455

/-! ## A392392.P6906247295282280713

`A277486(A261738(n))`
-/

namespace A392392.P6906247295282280713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277486 (A261738 n).toNat

end

end A392392.P6906247295282280713

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

/-! ## A392395.P5683386924767490022

`A179175(2*n)-A010054(A000040(n+1))`
-/

namespace A392395.P5683386924767490022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179175 (2 * n) - A010054 (A000040 (n + 1)).toNat

end

end A392395.P5683386924767490022

/-! ## A392395.P12721976281692147972

`A179175(2*n)-A010054(A038613(n+1))`
-/

namespace A392395.P12721976281692147972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179175 (2 * n) - A010054 (A038613 (n + 1)).toNat

end

end A392395.P12721976281692147972

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

/-! ## A392397.P11537798452732483870

`∩[A101635(n+1), A016861(n)]`
-/

namespace A392397.P11537798452732483870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392397.P11537798452732483870

/-! ## A392397.P732053421023474044

`∩[A101635(n+1), A132359(n+1)]`
-/

namespace A392397.P732053421023474044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392397.P732053421023474044

/-! ## A392397.P2374726429417531818

`∩[A101635(n+1), A197652(n+1)]`
-/

namespace A392397.P2374726429417531818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392397.P2374726429417531818

/-! ## A392397.P1686896029746201055

`∩[A101635(n+1), A271508(n+1)]`
-/

namespace A392397.P1686896029746201055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392397.P1686896029746201055

/-!
# A392398: a(n) = Sum_{k=0..floor(2*n/7)} binomial(2*n-5*k,2*k).

The programs for A392398, the canonical program `A392398.P17002019119230106315` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392398 has offset 0).

The definition of A392398 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392398.P17002019119230106315

`2*a(n-1)-a(n-2)+4*a(n-4)+a(n-7)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=4, a(5)=11, a(6)=22`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A392398

/-- `2*a(n-1)-a(n-2)+4*a(n-4)+a(n-7)` -/
def P17002019119230106315.Spec : Prop :=
  ∀ n, P17002019119230106315.a n = A392398 n

theorem P17002019119230106315.correct : P17002019119230106315.Spec := by
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

/-! ## A392398.P208017220270949536

`A347467(A352045(n))`
-/

namespace A392398.P208017220270949536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347467 (A352045 n).toNat

end

end A392398.P208017220270949536

namespace A392398

/-- `A347467(A352045(n))` -/
def P208017220270949536.Spec : Prop :=
  ∀ n, P208017220270949536.a n = A392398 n

end A392398

/-! ## A392398.P14589599094872471941

`A367141(A376718(n))`
-/

namespace A392398.P14589599094872471941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367141 (A376718 n).toNat

end

end A392398.P14589599094872471941

namespace A392398

/-- `A367141(A376718(n))` -/
def P14589599094872471941.Spec : Prop :=
  ∀ n, P14589599094872471941.a n = A392398 n

end A392398

/-!
# A392399: a(n) = Sum_{k=0..floor(2*n/9)} binomial(2*n-7*k,2*k).

The programs for A392399, the canonical program `A392399.P15716478085503372267` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392399 has offset 0).

The definition of A392399 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392399.P15716478085503372267

`2*a(n-1)-a(n-2)+4*a(n-5)+a(n-9)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=4, a(6)=11, a(7)=22, a(8)=37`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A392399

/-- `2*a(n-1)-a(n-2)+4*a(n-5)+a(n-9)` -/
def P15716478085503372267.Spec : Prop :=
  ∀ n, P15716478085503372267.a n = A392399 n

theorem P15716478085503372267.correct : P15716478085503372267.Spec := by
  intro n
  simp only [A392399]

end A392399

/-! ## A392399.P18385132869729990996

`filter[A212368(2*n+1), A133011(#)]`
-/

namespace A392399.P18385132869729990996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212368 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133011 (f1 j).toNat = 1) n)

end

end A392399.P18385132869729990996

namespace A392399

/-- `filter[A212368(2*n+1), A133011(#)]` -/
def P18385132869729990996.Spec : Prop :=
  ∀ n, P18385132869729990996.a n = A392399 n

end A392399

/-! ## A392399.P6111936896653582631

`filter[A212368(2*n+1), A143222(#)]`
-/

namespace A392399.P6111936896653582631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212368 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143222 (f1 j).toNat = 1) n)

end

end A392399.P6111936896653582631

namespace A392399

/-- `filter[A212368(2*n+1), A143222(#)]` -/
def P6111936896653582631.Spec : Prop :=
  ∀ n, P6111936896653582631.a n = A392399 n

end A392399

/-! ## A392399.P8795736097110950948

`filter[A212368(2*n+1), A153490(#)]`
-/

namespace A392399.P8795736097110950948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212368 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A153490 (f1 j).toNat = 1) n)

end

end A392399.P8795736097110950948

namespace A392399

/-- `filter[A212368(2*n+1), A153490(#)]` -/
def P8795736097110950948.Spec : Prop :=
  ∀ n, P8795736097110950948.a n = A392399 n

end A392399

/-! ## A392399.P15115022035923822132

`filter[A212368(2*n+1), A214330(#)]`
-/

namespace A392399.P15115022035923822132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212368 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A214330 (f1 j).toNat = 1) n)

end

end A392399.P15115022035923822132

namespace A392399

/-- `filter[A212368(2*n+1), A214330(#)]` -/
def P15115022035923822132.Spec : Prop :=
  ∀ n, P15115022035923822132.a n = A392399 n

end A392399

