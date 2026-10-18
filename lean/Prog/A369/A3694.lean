import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
import Seq.B012.C000
import Seq.B013.C000
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
# A369401: Expansion of (1/x) * Series_Reversion( x / (1+x) * (1-x^3)^3 ).

The programs for A369401, there is no canonical definition to state claims against.
-/

/-! ## A369401.P5030090626150372906

`A274641(A053529(n))`
-/

namespace A369401.P5030090626150372906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 (A053529 n).toNat

end

end A369401.P5030090626150372906

/-! ## A369401.P2199631194844315281

`A395633(A151302(n))`
-/

namespace A369401.P2199631194844315281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395633 ((A151302 n).toNat + 11)

end

end A369401.P2199631194844315281

/-! ## A369401.P3913326430773360867

`A123541(A149200(n)+A149190(n))`
-/

namespace A369401.P3913326430773360867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123541 (A149200 n + A149190 n).toNat

end

end A369401.P3913326430773360867

/-!
# A369402: Expansion of (1/x) * Series_Reversion( x / (1+x)^2 * (1-x^3)^3 ).

The programs for A369402, there is no canonical definition to state claims against.
-/

/-! ## A369402.P8367373672282753098

`A001462(∑[∑[A025749(n)]])`
-/

namespace A369402.P8367373672282753098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025749 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A369402.P8367373672282753098

/-!
# A369403: Expansion of (1/x) * Series_Reversion( x / (1+x)^3 * (1-x^3)^3 ).

The programs for A369403, there is no canonical definition to state claims against.
-/

/-! ## A369403.P1841702352150226194

`A028310(A369594(n))`
-/

namespace A369403.P1841702352150226194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A369594 n).toNat

end

end A369403.P1841702352150226194

/-! ## A369403.P864168340595476211

`A023443(A369594(n)+1)`
-/

namespace A369403.P864168340595476211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A369594 n + 1).toNat

end

end A369403.P864168340595476211

/-!
# A369404: a(n) = 3*2^n + 5*(-1)^n.

The programs for A369404, the canonical program `A369404.P13083732702256946333` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369404 has offset 0).

The definition of A369404 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*2^n+5*(-1)^n` (program `A369404.P13083732702256946333`, by `A369404.P13083732702256946333.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A369404.P13083732702256946333

`3*2^n+5*(-1)^n`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A369404

/-- `3*2^n+5*(-1)^n` -/
def P13083732702256946333.Spec : Prop :=
  ∀ n, P13083732702256946333.a n = A369404 n

theorem P13083732702256946333.correct : P13083732702256946333.Spec := by
  intro n
  simp only [A369404]

end A369404

/-! ## A369404.P9788232156056516260

`abs(a(n-1)+2*a(n-2))` with `a(0)=8, a(1)=1`
-/

namespace A369404.P9788232156056516260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8, 1] fun n a =>
  a (n - 1) + 2 * a (n - 2)

end

end A369404.P9788232156056516260

namespace A369404

/-- `abs(a(n-1)+2*a(n-2))` -/
def P9788232156056516260.Spec : Prop :=
  ∀ n, (P9788232156056516260.a n : ℤ) = A369404 n

theorem P9788232156056516260.correct : P9788232156056516260.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A369404, Nat.add_sub_cancel, A369404.P9788232156056516260.a, A369404.P13083732702256946333.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A369404, Nat.add_sub_cancel, A369404.P9788232156056516260.a, A369404.P13083732702256946333.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A369404

/-! ## A369404.P17865523080647808193

`ceil(a(n-1)+2*a(n-2))` with `a(0)=8, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A369404.P17865523080647808193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8, 1] fun n a =>
  a (n - 1) + 2 * a (n - 2)

end

end A369404.P17865523080647808193

namespace A369404

/-- `ceil(a(n-1)+2*a(n-2))` -/
def P17865523080647808193.Spec : Prop :=
  ∀ n, (P17865523080647808193.a n : ℤ) = A369404 n

theorem P17865523080647808193.correct : P17865523080647808193.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A369404, Nat.add_sub_cancel, A369404.P17865523080647808193.a, A369404.P13083732702256946333.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A369404, Nat.add_sub_cancel, A369404.P17865523080647808193.a, A369404.P13083732702256946333.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A369404

/-! ## A369404.P5109166887788240444

`(a(n-1)/a(n-2)+2)*a(n-2)` with `a(0)=8, a(1)=1`
-/

namespace A369404.P5109166887788240444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [8, 1] fun n a =>
  (a (n - 1) / a (n - 2) + 2) * a (n - 2)

end

end A369404.P5109166887788240444

namespace A369404

/-- `(a(n-1)/a(n-2)+2)*a(n-2)` -/
def P5109166887788240444.Spec : Prop :=
  ∀ n, P5109166887788240444.a n = (A369404 n : ℚ)

end A369404

/-! ## A369404.P12775586332313616822

`Δ[record[A106706(2*n+1)]]`
-/

namespace A369404.P12775586332313616822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106706 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369404.P12775586332313616822

namespace A369404

/-- `Δ[record[A106706(2*n+1)]]` -/
def P12775586332313616822.Spec : Prop :=
  ∀ n, P12775586332313616822.a n = A369404 n

end A369404

/-!
# A369405: Context-free language 1^n.0^(2n).

The programs for A369405, the canonical program `A369405.P4876015407762424986` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369405 has offset 1).

The definition of A369405 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369405.P8313696523793217216

`(10^(n+1)-1)*10^(2*(n+1))/9`
-/

namespace A369405.P8313696523793217216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((10 ^ (n + 1) : ℤ) - 1) * (10 ^ (2 * (n + 1)) : ℤ) : ℚ) / 9

end

end A369405.P8313696523793217216

namespace A369405

/-- `(10^(n+1)-1)*10^(2*(n+1))/9` -/
def P8313696523793217216.Spec : Prop :=
  ∀ n, P8313696523793217216.a n = (A369405 (n + 1) : ℚ)

end A369405

/-! ## A369405.P4876015407762424986

`10*A138119(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A369405

/-- `10*A138119(n+1)` -/
def P4876015407762424986.Spec : Prop :=
  ∀ n, P4876015407762424986.a n = A369405 (n + 1)

theorem P4876015407762424986.correct : P4876015407762424986.Spec := by
  intro n
  simp only [A369405, Nat.add_sub_cancel]

end A369405

/-! ## A369405.P7632433202580784719

`A309761(A022266(n+1))`
-/

namespace A369405.P7632433202580784719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (A022266 (n + 1)).toNat

end

end A369405.P7632433202580784719

namespace A369405

/-- `A309761(A022266(n+1))` -/
def P7632433202580784719.Spec : Prop :=
  ∀ n, P7632433202580784719.a n = A369405 (n + 1)

end A369405

/-!
# A369406: a(n) = Sum_{k=0..n} binomial(n,k^3).

The programs for A369406, there is no canonical definition to state claims against.
-/

/-! ## A369406.P2678950323088877373

`∑[A280351(n)]`
-/

namespace A369406.P2678950323088877373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369406.P2678950323088877373

/-! ## A369406.P6812262481997193877

`∑[A000027(C(abs(1-n), 7)+1)]`
-/

namespace A369406.P6812262481997193877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Nat.choose |1 - (n : ℤ)|.toNat 7 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369406.P6812262481997193877

/-! ## A369406.P6282544831207419893

`A000027(C(n, 8)+n+1)`
-/

namespace A369406.P6282544831207419893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Nat.choose n 8 + (n + 1))

end

end A369406.P6282544831207419893

/-! ## A369406.P14423642439579261712

`∑[A131717(A306721(n))]`
-/

namespace A369406.P14423642439579261712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131717 (A306721 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369406.P14423642439579261712

/-! ## A369406.P16446004576110762550

`A000005(A000079(n))+C(n, 8)`
-/

namespace A369406.P16446004576110762550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000079 n).toNat + (Nat.choose n 8 : ℤ)

end

end A369406.P16446004576110762550

/-!
# A369407: A variant of A008336 based on polynomials over GF(2) (see Comments for precise definition).

The programs for A369407, there is no canonical definition to state claims against.
-/

/-! ## A369407.P10734320118100858386

`A037992(n)%A350841(A080715(n+1))`
-/

namespace A369407.P10734320118100858386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037992 n) (A350841 (A080715 (n + 1)).toNat)

end

end A369407.P10734320118100858386

/-! ## A369407.P1774788475085441901

`A152339(n+1)%A152301(A038880(n+3))`
-/

namespace A369407.P1774788475085441901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152339 (n + 1)) (A152301 (A038880 (n + 3)).toNat)

end

end A369407.P1774788475085441901

/-!
# A369409: Irregular triangle read by rows: row n lists the lines of a "normal" proof (see comments) for the MIU formal system string (theorem) given by A369173(n+1).

The programs for A369409, there is no canonical definition to state claims against.
-/

/-! ## A369409.P15239372919982592708

`A369586(∑[A196879(2*(n+1))²])`
-/

namespace A369409.P15239372919982592708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (2 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369586 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A369409.P15239372919982592708

/-! ## A369409.P18323734326602316782

`A369586(C(A220570(n+1), n))`
-/

namespace A369409.P18323734326602316782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369586 (Nat.choose (A220570 (n + 1)).toNat n)

end

end A369409.P18323734326602316782

/-! ## A369409.P3835552686704334249

`A369586(lcm(n+1, A203004(n+1)))`
-/

namespace A369409.P3835552686704334249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369586 (Int.lcm (n + 1 : ℤ) (A203004 (n + 1)))

end

end A369409.P3835552686704334249

/-!
# A369410: Irregular triangle read by rows: row n lists the length of a "normal" proof (see comments) for each of the distinct derivable strings (theorems) in the MIU formal system that are n characters long.

The programs for A369410, there is no canonical definition to state claims against.
-/

/-! ## A369410.P4590357051312252086

`Δ[lt[A369409(n+1), 33]]`
-/

namespace A369410.P4590357051312252086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369409 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A369410.P4590357051312252086

/-!
# A369413: Maximum number of symbols of a "normal" proof (see comments) for strings (theorems) in the MIU formal system that are n characters long.

The programs for A369413, there is no canonical definition to state claims against.
-/

/-! ## A369413.P2894938483330228471

`A369411(2*A023147(n+1))`
-/

namespace A369413.P2894938483330228471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369411 (2 * A023147 (n + 1)).toNat

end

end A369413.P2894938483330228471

/-! ## A369413.P8942270244392074774

`A369411(A363604(n+1)+A084961(n+1))`
-/

namespace A369413.P8942270244392074774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369411 (A363604 (n + 1) + A084961 (n + 1)).toNat

end

end A369413.P8942270244392074774

/-!
# A369415: Number A(n,k) of n X n Fishburn matrices with entries in the set {0,1,...,k}; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A369415, there is no canonical definition to state claims against.
-/

/-! ## A369415.P13747884547935076553

`A292860(n)*A327519(A036038(n+1))`
-/

namespace A369415.P13747884547935076553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 n * A327519 (A036038 (n + 1)).toNat

end

end A369415.P13747884547935076553

/-! ## A369415.P16125094239012512158

`A343095(n)*A377441(A121692(n+1))`
-/

namespace A369415.P16125094239012512158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343095 n * A377441 (A121692 (n + 1)).toNat

end

end A369415.P16125094239012512158

/-! ## A369415.P9007510150151558038

`A001511(A296039(3*(n+1)))*A294498(n)`
-/

namespace A369415.P9007510150151558038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A296039 (3 * (n + 1))).toNat * A294498 n

end

end A369415.P9007510150151558038

/-! ## A369415.P11215187112117663756

`A007090(A085388(n+1)%A074098(n+1))`
-/

namespace A369415.P11215187112117663756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (Int.tmod (A085388 (n + 1)) (A074098 (n + 1))).toNat

end

end A369415.P11215187112117663756

/-! ## A369415.P6418246632196784052

`A007090(A085388(n+1))%A104907(n+4)`
-/

namespace A369415.P6418246632196784052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007090 (A085388 (n + 1)).toNat) (A104907 (n + 4))

end

end A369415.P6418246632196784052

/-!
# A369416: Expansion of o.g.f. x^4/((1-2*x)^3*(1-3*x)^3).

The programs for A369416, there is no canonical definition to state claims against.
-/

/-! ## A369416.P17300861287348191888

`A369418(n)-A369421(n)`
-/

namespace A369416.P17300861287348191888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369418 n - A369421 n

end

end A369416.P17300861287348191888

/-! ## A369416.P13202265762354036718

`floor(A326349(n+1)/6)`
-/

namespace A369416.P13202265762354036718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A326349 (n + 1) : ℚ) / 6⌋

end

end A369416.P13202265762354036718

/-! ## A369416.P14290928430234273065

`A096652(A084174(n))`
-/

namespace A369416.P14290928430234273065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096652 (A084174 n).toNat

end

end A369416.P14290928430234273065

/-!
# A369417: Powerful numbers k with multiple distinct prime factors such that rad(k) is not a primorial, where rad(k) = A007947(k).

The programs for A369417, there is no canonical definition to state claims against.
-/

/-! ## A369417.P5825419560233135938

`∪[A380456(n+1), A386434(n+1)]`
-/

namespace A369417.P5825419560233135938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369417.P5825419560233135938

/-! ## A369417.P5108556664737725637

`∩[A001694(n+1), A368089(n+1)]`
-/

namespace A369417.P5108556664737725637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369417.P5108556664737725637

/-! ## A369417.P5572468330483881604

`∩[A286708(n+1), A368089(n+1)]`
-/

namespace A369417.P5572468330483881604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369417.P5572468330483881604

/-! ## A369417.P18237532124817716683

`∩[A368089(n+1), A369636(n+1)]`
-/

namespace A369417.P18237532124817716683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369417.P18237532124817716683

/-!
# A369418: Expansion of o.g.f. x^3/((1-2*x)^2*(1-3*x)^3).

The programs for A369418, there is no canonical definition to state claims against.
-/

/-! ## A369418.P16212878692858744618

`A369421(n)+A369416(n)`
-/

namespace A369418.P16212878692858744618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369421 n + A369416 n

end

end A369418.P16212878692858744618

/-! ## A369418.P16796607684380011334

`A369416(n+1)-2*A369416(n)`
-/

namespace A369418.P16796607684380011334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369416 (n + 1) - 2 * A369416 n

end

end A369418.P16796607684380011334

/-! ## A369418.P17964868438412313008

`A369416(n+1)-A005843(A369416(n))`
-/

namespace A369418.P17964868438412313008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369416 (n + 1) - A005843 (A369416 n).toNat

end

end A369418.P17964868438412313008

/-!
# A369419: Numbers k that are neither squarefree nor prime powers such that A119288(k) <= k/A007947(k) < A053669(k) and k has a primorial kernel but is not a product of primorials.

The programs for A369419, there is no canonical definition to state claims against.
-/

/-! ## A369419.P15235653566039631901

`∩[A056808(n+1), A288784(n)]`
-/

namespace A369419.P15235653566039631901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288784 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369419.P15235653566039631901

/-! ## A369419.P8324812966689400098

`∩[A386224(n+1), A288784(n)]`
-/

namespace A369419.P8324812966689400098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288784 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369419.P8324812966689400098

/-! ## A369419.P1005809084004764236

`∩[A056808(n+1), A116998(n+1)]`
-/

namespace A369419.P1005809084004764236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369419.P1005809084004764236

/-! ## A369419.P13446195931539277370

`∩[A116998(n+1), A386224(n+1)]`
-/

namespace A369419.P13446195931539277370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369419.P13446195931539277370

/-! ## A369419.P13890042442396353179

`∩[A060735(n+1), A386224(n+1)]`
-/

namespace A369419.P13890042442396353179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369419.P13890042442396353179

/-! ## A369419.P1866100991303352815

`∩[A369540(n+1), A386224(n+1)]`
-/

namespace A369419.P1866100991303352815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369419.P1866100991303352815

/-! ## A369419.P2499971089491964207

`∩[A056808(n+1), A060735(n+1)]`
-/

namespace A369419.P2499971089491964207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369419.P2499971089491964207

/-! ## A369419.P10283867822832888919

`∩[A056808(n+1), A369540(n+1)]`
-/

namespace A369419.P10283867822832888919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369419.P10283867822832888919

/-!
# A369420: Powerful numbers k that are not prime powers, such that k has a primorial kernel but is not a product of primorials.

The programs for A369420, there is no canonical definition to state claims against.
-/

/-! ## A369420.P7035281848771800434

`∪[A380452(n+1), A386433(n+1)]`
-/

namespace A369420.P7035281848771800434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369420.P7035281848771800434

/-! ## A369420.P7205785198015119125

`∩[A056808(n+1), A369374(n+1)]`
-/

namespace A369420.P7205785198015119125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369420.P7205785198015119125

/-! ## A369420.P17546836466368097511

`∩[A056808(n+1), A387901(n+1)]`
-/

namespace A369420.P17546836466368097511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369420.P17546836466368097511

/-! ## A369420.P14202963012599516032

`∩[A056808(n+1), A356871(n+1)]`
-/

namespace A369420.P14202963012599516032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369420.P14202963012599516032

/-! ## A369420.P3293522385898161964

`∩[A056808(n+1), A363169(n+1)]`
-/

namespace A369420.P3293522385898161964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369420.P3293522385898161964

/-! ## A369420.P15566048276619852650

`∩[A056808(n+1), A395067(n+1)]`
-/

namespace A369420.P15566048276619852650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369420.P15566048276619852650

/-! ## A369420.P1399257377141271292

`∩[A056808(n+1), A363216(n+1)]`
-/

namespace A369420.P1399257377141271292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369420.P1399257377141271292

/-! ## A369420.P7105254196809808385

`∩[A056808(n+1), A390010(n+1)]`
-/

namespace A369420.P7105254196809808385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369420.P7105254196809808385

/-! ## A369420.P2502947057846591285

`∩[A056808(n+1), A359280(n+1)]`
-/

namespace A369420.P2502947057846591285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369420.P2502947057846591285

/-! ## A369420.P12083700785440437344

`∩[A056808(n+1), A372404(n+1)]`
-/

namespace A369420.P12083700785440437344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369420.P12083700785440437344

/-! ## A369420.P4837462214805911594

`∩[A056808(n+1), A320966(n+1)]`
-/

namespace A369420.P4837462214805911594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369420.P4837462214805911594

/-! ## A369420.P17736455954149414919

`∩[A056808(n+1), A353485(n+1)]`
-/

namespace A369420.P17736455954149414919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369420.P17736455954149414919

/-! ## A369420.P170408125375604371

`∩[A055932(n+1), A369636(n+1)]`
-/

namespace A369420.P170408125375604371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369420.P170408125375604371

/-! ## A369420.P270645792333636558

`∩[A056808(n+1), A369636(n+1)]`
-/

namespace A369420.P270645792333636558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369420.P270645792333636558

/-! ## A369420.P9025110939095166191

`∩[A363814(n+1), A369636(n+1)]`
-/

namespace A369420.P9025110939095166191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369420.P9025110939095166191

/-! ## A369420.P9112005898932015402

`∩[A369374(n+1), A369636(n+1)]`
-/

namespace A369420.P9112005898932015402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369420.P9112005898932015402

/-! ## A369420.P10068453005347619579

`∩[A369636(n+1), A387901(n+1)]`
-/

namespace A369420.P10068453005347619579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369420.P10068453005347619579

/-! ## A369420.P17978614061229428395

`∩[A056808(n+1), A286708(n+1)]`
-/

namespace A369420.P17978614061229428395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369420.P17978614061229428395

/-! ## A369420.P3665739976615067685

`∩[A056808(n+1), A192636(n+1)]`
-/

namespace A369420.P3665739976615067685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369420.P3665739976615067685

/-! ## A369420.P2840550740395905090

`∩[A001694(n+1), A056808(n+1)]`
-/

namespace A369420.P2840550740395905090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369420.P2840550740395905090

/-!
# A369421: Expansion of o.g.f. x^3/((1-2*x)^3*(1-3*x)^2).

The programs for A369421, there is no canonical definition to state claims against.
-/

/-! ## A369421.P17004779953347164433

`A369418(n)-A369416(n)`
-/

namespace A369421.P17004779953347164433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369418 n - A369416 n

end

end A369421.P17004779953347164433

/-!
# A369422: Lexicographically earliest infinite sequence such that no two equal unordered pairs (a(j), a(k)) have the same distance abs(j-k).

The programs for A369422, there is no canonical definition to state claims against.
-/

/-! ## A369422.P5328726038851797252

`ceil(A101438(n+1)/2)`
-/

namespace A369422.P5328726038851797252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A101438 (n + 1) : ℚ) / 2⌉

end

end A369422.P5328726038851797252

/-! ## A369422.P13708576737142326892

`A065033(A101438(n+1))`
-/

namespace A369422.P13708576737142326892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A101438 (n + 1)).toNat

end

end A369422.P13708576737142326892

/-! ## A369422.P15969958565916297910

`A004526(A101438(n+1)+1)`
-/

namespace A369422.P15969958565916297910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A101438 (n + 1) + 1).toNat

end

end A369422.P15969958565916297910

/-! ## A369422.P15246971134800113261

`A008619(A101438(n+1)-1)`
-/

namespace A369422.P15246971134800113261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A101438 (n + 1) - 1).toNat

end

end A369422.P15246971134800113261

/-! ## A369422.P5100550572977998012

`ceil(A355506(n+1)/2)`
-/

namespace A369422.P5100550572977998012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A355506 (n + 1) : ℚ) / 2⌉

end

end A369422.P5100550572977998012

/-! ## A369422.P6144423458859639511

`A065033(A355506(n+1))`
-/

namespace A369422.P6144423458859639511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A355506 (n + 1)).toNat

end

end A369422.P6144423458859639511

/-!
# A369423: Number of 3 X 3 Fishburn matrices with entries in the set {0,1,...,n}.

The programs for A369423, the canonical program `A369423.P10828726594607004133` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369423 has offset 0).

The definition of A369423 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369423.P10828726594607004133

`n^3*(n+1)*(n²+3*n+1)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A369423

/-- `n^3*(n+1)*(n²+3*n+1)` -/
def P10828726594607004133.Spec : Prop :=
  ∀ n, (P10828726594607004133.a n : ℤ) = A369423 n

theorem P10828726594607004133.correct : P10828726594607004133.Spec := by
  intro n
  simp only [A369423]

end A369423

/-! ## A369423.P2037723182421561337

`A101362(n)+A060459(n)`
-/

namespace A369423.P2037723182421561337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101362 n + A060459 n

end

end A369423.P2037723182421561337

namespace A369423

/-- `A101362(n)+A060459(n)` -/
def P2037723182421561337.Spec : Prop :=
  ∀ n, P2037723182421561337.a n = A369423 n

end A369423

/-! ## A369423.P4846627376583945657

`lcm(A000578(n), A081437(n))`
-/

namespace A369423.P4846627376583945657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000578 n) (A081437 n)

end

end A369423.P4846627376583945657

namespace A369423

/-- `lcm(A000578(n), A081437(n))` -/
def P4846627376583945657.Spec : Prop :=
  ∀ n, (P4846627376583945657.a n : ℤ) = A369423 n

end A369423

/-! ## A369423.P7751632891588687257

`A133754(n)+A000578(n)*A034262(n+1)`
-/

namespace A369423.P7751632891588687257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133754 n + A000578 n * A034262 (n + 1)

end

end A369423.P7751632891588687257

namespace A369423

/-- `A133754(n)+A000578(n)*A034262(n+1)` -/
def P7751632891588687257.Spec : Prop :=
  ∀ n, P7751632891588687257.a n = A369423 n

end A369423

/-! ## A369423.P2431418748572160140

`A000578(n)*A100109(n+2)-A000578(n)`
-/

namespace A369423.P2431418748572160140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n * A100109 (n + 2) - A000578 n

end

end A369423.P2431418748572160140

namespace A369423

/-- `A000578(n)*A100109(n+2)-A000578(n)` -/
def P2431418748572160140.Spec : Prop :=
  ∀ n, P2431418748572160140.a n = A369423 n

end A369423

/-! ## A369423.P10639900588023636768

`A000578(n)+A152618(n+1)*A152618(n+1)`
-/

namespace A369423.P10639900588023636768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + A152618 (n + 1) * A152618 (n + 1)

end

end A369423.P10639900588023636768

namespace A369423

/-- `A000578(n)+A152618(n+1)*A152618(n+1)` -/
def P10639900588023636768.Spec : Prop :=
  ∀ n, P10639900588023636768.a n = A369423 n

end A369423

/-!
# A369425: Expansion of Sum_{n>=1} x^(n*(n+1)/2)*((1+x)/(1-x))^n.

The programs for A369425, there is no canonical definition to state claims against.
-/

/-! ## A369425.P7652406394136334402

`A100719(A265947(n+1))`
-/

namespace A369425.P7652406394136334402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100719 (A265947 (n + 1)).toNat

end

end A369425.P7652406394136334402

/-! ## A369425.P13101043723296303007

`A340745(A306215(n+1))+char[∑[4*n]]`
-/

namespace A369425.P13101043723296303007
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340745 (A306215 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A369425.P13101043723296303007

/-! ## A369425.P9173190457813851685

`A034298(A003405(n)+A000045(n))`
-/

namespace A369425.P9173190457813851685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034298 (A003405 n + A000045 n).toNat

end

end A369425.P9173190457813851685

/-! ## A369425.P4737552802095727913

`A113006(A001951(n)+A001383(n))`
-/

namespace A369425.P4737552802095727913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113006 (A001951 n + A001383 n).toNat

end

end A369425.P4737552802095727913

/-! ## A369425.P13100249496346288325

`A003991(A003188(n)+A003173(n+1))`
-/

namespace A369425.P13100249496346288325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A003188 n + A003173 (n + 1)).toNat

end

end A369425.P13100249496346288325

/-!
# A369426: The number of unitary divisors of n that are of the form p^p, where p is a prime.

The programs for A369426, there is no canonical definition to state claims against.
-/

/-! ## A369426.P9021590325971112985

`log2(A365634(n+1))`
-/

namespace A369426.P9021590325971112985
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A365634 (n + 1) : ℝ)

end

end A369426.P9021590325971112985

/-! ## A369426.P12783347433601830833

`A129251((n+1)/A368329(n+1))`
-/

namespace A369426.P12783347433601830833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129251 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A368329 (n + 1) : ℚ))).toNat

end

end A369426.P12783347433601830833

/-! ## A369426.P6564269837941884465

`A276935(A003961(n+1))`
-/

namespace A369426.P6564269837941884465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276935 (A003961 (n + 1)).toNat

end

end A369426.P6564269837941884465

/-! ## A369426.P15021304321714949825

`A124010(A365634(n+1)^A124010(n+1)²)`
-/

namespace A369426.P15021304321714949825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (SequenceMachineLib.roundAway ((A365634 (n + 1) : ℚ) ^ (A124010 (n + 1) ^ 2 : ℤ))).toNat

end

end A369426.P15021304321714949825

/-! ## A369426.P15611783255301262576

`A295883(2*(n+1))^A001930(A296150(n+5))`
-/

namespace A369426.P15611783255301262576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295883 (2 * (n + 1)) : ℚ) ^ (A001930 (A296150 (n + 5)).toNat : ℤ)

end

end A369426.P15611783255301262576

/-! ## A369426.P13589121045696571301

`A295883(2*(n+1))^A081129(A051349(n+3))`
-/

namespace A369426.P13589121045696571301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295883 (2 * (n + 1)) : ℚ) ^ (A081129 (A051349 (n + 3)).toNat : ℤ)

end

end A369426.P13589121045696571301

/-! ## A369426.P733968243303728966

`A295883(record[2-xor(1, -n)])^A014206(n)`
-/

namespace A369426.P733968243303728966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295883 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) ^ (A014206 n : ℤ)

end

end A369426.P733968243303728966

/-! ## A369426.P9265093314285687339

`A295883(record[2-xor(1, -n)])^A047969(n)`
-/

namespace A369426.P9265093314285687339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295883 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) ^ (A047969 n : ℤ)

end

end A369426.P9265093314285687339

/-! ## A369426.P13650558425876547239

`A295883(record[2-xor(1, -n)])^A247935(n)`
-/

namespace A369426.P13650558425876547239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295883 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) ^ (A247935 n : ℤ)

end

end A369426.P13650558425876547239

/-! ## A369426.P12466034403178874765

`A173829(A080513(n))%A365634(n+1)`
-/

namespace A369426.P12466034403178874765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173829 (A080513 n).toNat) (A365634 (n + 1))

end

end A369426.P12466034403178874765

/-! ## A369426.P601138092981324546

`A153446(A153440(3*n+2))%A365634(n+1)`
-/

namespace A369426.P601138092981324546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153446 (A153440 (3 * n + 2)).toNat) (A365634 (n + 1))

end

end A369426.P601138092981324546

/-! ## A369426.P10988536010343189985

`A000007(A203908(n+1)²)`
-/

namespace A369426.P10988536010343189985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A203908 (n + 1) ^ 2).toNat

end

end A369426.P10988536010343189985

/-! ## A369426.P17402858417539614429

`A056671(A366423(n+1))-1`
-/

namespace A369426.P17402858417539614429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (A366423 (n + 1)).toNat - 1

end

end A369426.P17402858417539614429

/-! ## A369426.P3230146409582487693

`A005449(A074377(n))%A359411(2*(n+1))`
-/

namespace A369426.P3230146409582487693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005449 (A074377 n).toNat) (A359411 (2 * (n + 1)))

end

end A369426.P3230146409582487693

/-!
# A369427: The number of unitary divisors of n that are squares of primes.

The programs for A369427, the canonical program `A369427.P16765893300881034731` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369427 has offset 1).

The definition of A369427 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369427.P16765893300881034731

`∑{e}[n+1, (3%#)%3]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A369427

/-- `∑{e}[n+1, (3%#)%3]` -/
def P16765893300881034731.Spec : Prop :=
  ∀ n, (P16765893300881034731.a n : ℤ) = A369427 (n + 1)

theorem P16765893300881034731.correct : P16765893300881034731.Spec := by
  intro n
  simp only [A369427, Nat.add_sub_cancel]

end A369427

/-! ## A369427.P13009971719738987415

`log2(A368885(n+1))`
-/

namespace A369427.P13009971719738987415
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A368885 (n + 1) : ℝ)

end

end A369427.P13009971719738987415

namespace A369427

/-- `log2(A368885(n+1))` -/
def P13009971719738987415.Spec : Prop :=
  ∀ n, P13009971719738987415.a n = (A369427 (n + 1) : ℝ)

end A369427

/-! ## A369427.P12007327043862067057

`val(A295879(n+1), 2)`
-/

namespace A369427.P12007327043862067057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A295879 (n + 1)).toNat 2

end

end A369427.P12007327043862067057

namespace A369427

/-- `val(A295879(n+1), 2)` -/
def P12007327043862067057.Spec : Prop :=
  ∀ n, (P12007327043862067057.a n : ℤ) = A369427 (n + 1)

end A369427

/-! ## A369427.P14119068311102513082

`val(A368105(n+1), 2)`
-/

namespace A369427.P14119068311102513082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A368105 (n + 1)).toNat 2

end

end A369427.P14119068311102513082

namespace A369427

/-- `val(A368105(n+1), 2)` -/
def P14119068311102513082.Spec : Prop :=
  ∀ n, (P14119068311102513082.a n : ℤ) = A369427 (n + 1)

end A369427

/-! ## A369427.P1084811175164557538

`val(A383292(n+1), 2)`
-/

namespace A369427.P1084811175164557538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A383292 (n + 1)).toNat 2

end

end A369427.P1084811175164557538

namespace A369427

/-- `val(A383292(n+1), 2)` -/
def P1084811175164557538.Spec : Prop :=
  ∀ n, (P1084811175164557538.a n : ℤ) = A369427 (n + 1)

end A369427

/-! ## A369427.P1137007988667042276

`val(A181819(n+1), 3)`
-/

namespace A369427.P1137007988667042276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A181819 (n + 1)).toNat 3

end

end A369427.P1137007988667042276

namespace A369427

/-- `val(A181819(n+1), 3)` -/
def P1137007988667042276.Spec : Prop :=
  ∀ n, (P1137007988667042276.a n : ℤ) = A369427 (n + 1)

end A369427

/-! ## A369427.P11610542455553933381

`val(A252505(n+1), 3)`
-/

namespace A369427.P11610542455553933381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A252505 (n + 1)).toNat 3

end

end A369427.P11610542455553933381

namespace A369427

/-- `val(A252505(n+1), 3)` -/
def P11610542455553933381.Spec : Prop :=
  ∀ n, (P11610542455553933381.a n : ℤ) = A369427 (n + 1)

end A369427

/-! ## A369427.P9656670825729476275

`val(A366147(n+1), 3)`
-/

namespace A369427.P9656670825729476275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A366147 (n + 1)).toNat 3

end

end A369427.P9656670825729476275

namespace A369427

/-- `val(A366147(n+1), 3)` -/
def P9656670825729476275.Spec : Prop :=
  ∀ n, (P9656670825729476275.a n : ℤ) = A369427 (n + 1)

end A369427

/-! ## A369427.P13797625835344289220

`A056169(A000189(n+1))`
-/

namespace A369427.P13797625835344289220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A000189 (n + 1)).toNat

end

end A369427.P13797625835344289220

namespace A369427

/-- `A056169(A000189(n+1))` -/
def P13797625835344289220.Spec : Prop :=
  ∀ n, P13797625835344289220.a n = A369427 (n + 1)

end A369427

/-! ## A369427.P9201930710923253336

`A056169(A000190(n+1))`
-/

namespace A369427.P9201930710923253336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A000190 (n + 1)).toNat

end

end A369427.P9201930710923253336

namespace A369427

/-- `A056169(A000190(n+1))` -/
def P9201930710923253336.Spec : Prop :=
  ∀ n, P9201930710923253336.a n = A369427 (n + 1)

end A369427

/-! ## A369427.P16639903755645050704

`A056169(A003557(n+1))`
-/

namespace A369427.P16639903755645050704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A003557 (n + 1)).toNat

end

end A369427.P16639903755645050704

namespace A369427

/-- `A056169(A003557(n+1))` -/
def P16639903755645050704.Spec : Prop :=
  ∀ n, P16639903755645050704.a n = A369427 (n + 1)

end A369427

/-! ## A369427.P14711995170392790160

`A056169(A071974(n+1))`
-/

namespace A369427.P14711995170392790160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A071974 (n + 1)).toNat

end

end A369427.P14711995170392790160

namespace A369427

/-- `A056169(A071974(n+1))` -/
def P14711995170392790160.Spec : Prop :=
  ∀ n, P14711995170392790160.a n = A369427 (n + 1)

end A369427

/-! ## A369427.P2232647748710786492

`A007949(A181819(n+1))`
-/

namespace A369427.P2232647748710786492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A181819 (n + 1)).toNat

end

end A369427.P2232647748710786492

namespace A369427

/-- `A007949(A181819(n+1))` -/
def P2232647748710786492.Spec : Prop :=
  ∀ n, P2232647748710786492.a n = A369427 (n + 1)

end A369427

/-! ## A369427.P14684869654253258370

`A007814(A295879(n+1))`
-/

namespace A369427.P14684869654253258370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A295879 (n + 1)).toNat

end

end A369427.P14684869654253258370

namespace A369427

/-- `A007814(A295879(n+1))` -/
def P14684869654253258370.Spec : Prop :=
  ∀ n, P14684869654253258370.a n = A369427 (n + 1)

end A369427

/-! ## A369427.P2051833675458615403

`A366078(n+1)-A056169(n+1)`
-/

namespace A369427.P2051833675458615403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366078 (n + 1) - A056169 (n + 1)

end

end A369427.P2051833675458615403

namespace A369427

/-- `A366078(n+1)-A056169(n+1)` -/
def P2051833675458615403.Spec : Prop :=
  ∀ n, P2051833675458615403.a n = A369427 (n + 1)

end A369427

/-! ## A369427.P3177727843315916946

`A056170(n+1)-A056170(A000189(n+1))`
-/

namespace A369427.P3177727843315916946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (n + 1) - A056170 (A000189 (n + 1)).toNat

end

end A369427.P3177727843315916946

namespace A369427

/-- `A056170(n+1)-A056170(A000189(n+1))` -/
def P3177727843315916946.Spec : Prop :=
  ∀ n, P3177727843315916946.a n = A369427 (n + 1)

end A369427

/-! ## A369427.P8520790034295367563

`A056170(n+1)-A056170(A000190(n+1))`
-/

namespace A369427.P8520790034295367563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (n + 1) - A056170 (A000190 (n + 1)).toNat

end

end A369427.P8520790034295367563

namespace A369427

/-- `A056170(n+1)-A056170(A000190(n+1))` -/
def P8520790034295367563.Spec : Prop :=
  ∀ n, P8520790034295367563.a n = A369427 (n + 1)

end A369427

/-! ## A369427.P4149036130333684398

`A056170(n+1)-A056170(A003557(n+1))`
-/

namespace A369427.P4149036130333684398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (n + 1) - A056170 (A003557 (n + 1)).toNat

end

end A369427.P4149036130333684398

namespace A369427

/-- `A056170(n+1)-A056170(A003557(n+1))` -/
def P4149036130333684398.Spec : Prop :=
  ∀ n, P4149036130333684398.a n = A369427 (n + 1)

end A369427

/-! ## A369427.P5237873371006761019

`A056169(A019554(n+1))-A056169(n+1)`
-/

namespace A369427.P5237873371006761019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A019554 (n + 1)).toNat - A056169 (n + 1)

end

end A369427.P5237873371006761019

namespace A369427

/-- `A056169(A019554(n+1))-A056169(n+1)` -/
def P5237873371006761019.Spec : Prop :=
  ∀ n, P5237873371006761019.a n = A369427 (n + 1)

end A369427

/-! ## A369427.P15478470867448492715

`A056169(A350390(n+1))-A056169(n+1)`
-/

namespace A369427.P15478470867448492715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A350390 (n + 1)).toNat - A056169 (n + 1)

end

end A369427.P15478470867448492715

namespace A369427

/-- `A056169(A350390(n+1))-A056169(n+1)` -/
def P15478470867448492715.Spec : Prop :=
  ∀ n, P15478470867448492715.a n = A369427 (n + 1)

end A369427

/-!
# A369428: The number of exponents in the prime factorization of n that are squares.

The programs for A369428, the canonical program `A369428.P15870185605642581641` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369428 has offset 1).

The definition of A369428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369428.P15870185605642581641

`∑{e}[n+1, A010052(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A369428

/-- `∑{e}[n+1, A010052(#)]` -/
def P15870185605642581641.Spec : Prop :=
  ∀ n, P15870185605642581641.a n = A369428 (n + 1)

theorem P15870185605642581641.correct : P15870185605642581641.Spec := by
  intro n
  simp only [A369428, Nat.add_sub_cancel]

end A369428

/-! ## A369428.P17402685318412553173

`∑{e}[n+1, A318983(#)]`
-/

namespace A369428.P17402685318412553173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A318983 (Nat.factorization (f1 n) p)

end

end A369428.P17402685318412553173

namespace A369428

/-- `∑{e}[n+1, A318983(#)]` -/
def P17402685318412553173.Spec : Prop :=
  ∀ n, P17402685318412553173.a n = A369428 (n + 1)

end A369428

/-! ## A369428.P2399658508009436217

`∑{e}[n+1, A000005(#)%2]`
-/

namespace A369428.P2399658508009436217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.tmod (A000005 (Nat.factorization (f1 n) p)) 2

end

end A369428.P2399658508009436217

namespace A369428

/-- `∑{e}[n+1, A000005(#)%2]` -/
def P2399658508009436217.Spec : Prop :=
  ∀ n, P2399658508009436217.a n = A369428 (n + 1)

end A369428

/-! ## A369428.P16687977032561314910

`∑{e}[(n+1)*(-1)^∑{e}[n+1, #], A353377(#)]`
-/

namespace A369428.P16687977032561314910
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A353377 (Nat.factorization (f1 n).natAbs p)

end

end A369428.P16687977032561314910

namespace A369428

/-- `∑{e}[(n+1)*(-1)^∑{e}[n+1, #], A353377(#)]` -/
def P16687977032561314910.Spec : Prop :=
  ∀ n, P16687977032561314910.a n = A369428 (n + 1)

end A369428

/-! ## A369428.P7159849487298348971

`∑{e}[(n+1)*∏{p}[n+1, #], A363711(#)]`
-/

namespace A369428.P7159849487298348971
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A363711 (Nat.factorization (f1 n) p)

end

end A369428.P7159849487298348971

namespace A369428

/-- `∑{e}[(n+1)*∏{p}[n+1, #], A363711(#)]` -/
def P7159849487298348971.Spec : Prop :=
  ∀ n, P7159849487298348971.a n = A369428 (n + 1)

end A369428

/-! ## A369428.P11758261860747859954

`A046660(A048798(n+1))`
-/

namespace A369428.P11758261860747859954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A048798 (n + 1)).toNat

end

end A369428.P11758261860747859954

namespace A369428

/-- `A046660(A048798(n+1))` -/
def P11758261860747859954.Spec : Prop :=
  ∀ n, P11758261860747859954.a n = A369428 (n + 1)

end A369428

/-!
# A369429: Square root of the largest square dividing the n-th powerful number.

The programs for A369429, there is no canonical definition to state claims against.
-/

/-! ## A369429.P12486431711715051656

`A000188(A001694(n+1))`
-/

namespace A369429.P12486431711715051656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A001694 (n + 1)).toNat

end

end A369429.P12486431711715051656

/-! ## A369429.P12866236694358939233

`A001694(n+1)/A369430(n+1)`
-/

namespace A369429.P12866236694358939233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001694 (n + 1) : ℚ) / (A369430 (n + 1) : ℚ)

end

end A369429.P12866236694358939233

/-! ## A369429.P9537256304676719591

`A369430(n+1)/A342477(n+1)`
-/

namespace A369429.P9537256304676719591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369430 (n + 1) : ℚ) / (A342477 (n + 1) : ℚ)

end

end A369429.P9537256304676719591

/-! ## A369429.P13464844908615027099

`(A224866(n+1)-1)/A369430(n+1)`
-/

namespace A369429.P13464844908615027099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224866 (n + 1) - 1 : ℚ) / (A369430 (n + 1) : ℚ)

end

end A369429.P13464844908615027099

/-! ## A369429.P15091372530534752019

`∪[(n+1)², A320966(n+1)]/A369430(n+1)`
-/

namespace A369429.P15091372530534752019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ) / (A369430 (n + 1) : ℚ)

end

end A369429.P15091372530534752019

/-! ## A369429.P13985465578468073902

`A019554(A306458(n+1))`
-/

namespace A369429.P13985465578468073902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A306458 (n + 1)).toNat

end

end A369429.P13985465578468073902

/-! ## A369429.P13443079421980783428

`A001694(n+1)/A355261(A306458(n+1))`
-/

namespace A369429.P13443079421980783428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001694 (n + 1) : ℚ) / (A355261 (A306458 (n + 1)).toNat : ℚ)

end

end A369429.P13443079421980783428

/-! ## A369429.P3266444905610749954

`A000188(record[A057521(n+1)])`
-/

namespace A369429.P3266444905610749954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A369429.P3266444905610749954

/-!
# A369430: Smallest number whose square is divisible by the n-th powerful number.

The programs for A369430, there is no canonical definition to state claims against.
-/

/-! ## A369430.P9070430572109349426

`A019554(A001694(n+1))`
-/

namespace A369430.P9070430572109349426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A001694 (n + 1)).toNat

end

end A369430.P9070430572109349426

/-! ## A369430.P3543074244310618827

`A342477(n+1)*A369429(n+1)`
-/

namespace A369430.P3543074244310618827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342477 (n + 1) * A369429 (n + 1)

end

end A369430.P3543074244310618827

/-! ## A369430.P3469427305492844153

`A001694(n+1)/A369429(n+1)`
-/

namespace A369430.P3469427305492844153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001694 (n + 1) : ℚ) / (A369429 (n + 1) : ℚ)

end

end A369430.P3469427305492844153

/-! ## A369430.P11879181011890007850

`(A224866(n+1)-1)/A369429(n+1)`
-/

namespace A369430.P11879181011890007850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224866 (n + 1) - 1 : ℚ) / (A369429 (n + 1) : ℚ)

end

end A369430.P11879181011890007850

/-! ## A369430.P2691850309887102725

`A084371(n+1)*A306458(n+1)/A369429(n+1)`
-/

namespace A369430.P2691850309887102725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084371 (n + 1) * A306458 (n + 1) : ℚ) / (A369429 (n + 1) : ℚ)

end

end A369430.P2691850309887102725

/-! ## A369430.P4595189919048873130

`∪[A001597(n+1), A102834(n+1)]/A369429(n+1)`
-/

namespace A369430.P4595189919048873130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ) / (A369429 (n + 1) : ℚ)

end

end A369430.P4595189919048873130

/-! ## A369430.P1183587370068456098

`∪[A001597(n+1), A286708(n+1)]/A369429(n+1)`
-/

namespace A369430.P1183587370068456098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ) / (A369429 (n + 1) : ℚ)

end

end A369430.P1183587370068456098

/-! ## A369430.P10062227020905511665

`∪[A056166(n+1), A320966(n+1)]/A369429(n+1)`
-/

namespace A369430.P10062227020905511665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ) / (A369429 (n + 1) : ℚ)

end

end A369430.P10062227020905511665

/-! ## A369430.P17850646635673653541

`(A001478(n+1)+A224866(n+1)+n)/A369429(n+1)`
-/

namespace A369430.P17850646635673653541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001478 (n + 1) + (A224866 (n + 1) + (n : ℤ)) : ℚ) / (A369429 (n + 1) : ℚ)

end

end A369430.P17850646635673653541

/-! ## A369430.P5366746508731044717

`A355261(A306458(n+1))`
-/

namespace A369430.P5366746508731044717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355261 (A306458 (n + 1)).toNat

end

end A369430.P5366746508731044717

/-! ## A369430.P15540416390215531896

`A275823(A323333(n+1))`
-/

namespace A369430.P15540416390215531896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275823 (A323333 (n + 1)).toNat

end

end A369430.P15540416390215531896

/-!
# A369431: a(n) is the number of permutations of [n] which avoid the patterns 1234, 1324, 1342, and 2413.

The programs for A369431, the canonical program `A369431.P13898298412789581988` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369431 has offset 0).

The definition of A369431 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369431.P13898298412789581988

`5*a(n-1)-7*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A369431

/-- `5*a(n-1)-7*a(n-2)+4*a(n-3)` -/
def P13898298412789581988.Spec : Prop :=
  ∀ n, P13898298412789581988.a n = A369431 n

theorem P13898298412789581988.correct : P13898298412789581988.Spec := by
  intro n
  simp only [A369431]

end A369431

/-! ## A369431.P14942968410605867364

`∑[A049221(n+1)]`
-/

namespace A369431.P14942968410605867364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369431.P14942968410605867364

namespace A369431

/-- `∑[A049221(n+1)]` -/
def P14942968410605867364.Spec : Prop :=
  ∀ n, P14942968410605867364.a n = A369431 n

end A369431

/-! ## A369431.P16538305222067463344

`A049219(n+1)-A049222(n+2)`
-/

namespace A369431.P16538305222067463344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049219 (n + 1) - A049222 (n + 2)

end

end A369431.P16538305222067463344

namespace A369431

/-- `A049219(n+1)-A049222(n+2)` -/
def P16538305222067463344.Spec : Prop :=
  ∀ n, P16538305222067463344.a n = A369431 n

end A369431

/-! ## A369431.P147496012221721169

`A301994(n+1)-A049220(n+2)`
-/

namespace A369431.P147496012221721169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301994 (n + 1) - A049220 (n + 2)

end

end A369431.P147496012221721169

namespace A369431

/-- `A301994(n+1)-A049220(n+2)` -/
def P147496012221721169.Spec : Prop :=
  ∀ n, P147496012221721169.a n = A369431 n

end A369431

/-! ## A369431.P14683448072355663580

`A001169(n+1)-A049222(n+3)`
-/

namespace A369431.P14683448072355663580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001169 (n + 1) - A049222 (n + 3)

end

end A369431.P14683448072355663580

namespace A369431

/-- `A001169(n+1)-A049222(n+3)` -/
def P14683448072355663580.Spec : Prop :=
  ∀ n, P14683448072355663580.a n = A369431 n

end A369431

/-! ## A369431.P96909451020702675

`A049219(n+1)-∑[A049220(n+1)]`
-/

namespace A369431.P96909451020702675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049219 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369431.P96909451020702675

namespace A369431

/-- `A049219(n+1)-∑[A049220(n+1)]` -/
def P96909451020702675.Spec : Prop :=
  ∀ n, P96909451020702675.a n = A369431 n

end A369431

/-! ## A369431.P8489512518827440192

`A049219(n+1)+A301994(n+1)-A001169(n+1)`
-/

namespace A369431.P8489512518827440192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049219 (n + 1) + (A301994 (n + 1) - A001169 (n + 1))

end

end A369431.P8489512518827440192

namespace A369431

/-- `A049219(n+1)+A301994(n+1)-A001169(n+1)` -/
def P8489512518827440192.Spec : Prop :=
  ∀ n, P8489512518827440192.a n = A369431 n

end A369431

/-! ## A369431.P14004004029841864154

`A001169(n+1)+A301994(n+2)-A001169(n+2)`
-/

namespace A369431.P14004004029841864154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001169 (n + 1) + (A301994 (n + 2) - A001169 (n + 2))

end

end A369431.P14004004029841864154

namespace A369431

/-- `A001169(n+1)+A301994(n+2)-A001169(n+2)` -/
def P14004004029841864154.Spec : Prop :=
  ∀ n, P14004004029841864154.a n = A369431 n

end A369431

/-!
# A369432: Number of Dyck excursions with catastrophes from (0,0) to (n,0).

The programs for A369432, there is no canonical definition to state claims against.
-/

/-! ## A369432.P14086839168421940446

`A001333(n)-A139353(A000142(n))`
-/

namespace A369432.P14086839168421940446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n - A139353 (A000142 n).toNat

end

end A369432.P14086839168421940446

/-! ## A369432.P2359588751599721994

`A023193(A121186(n+4)-A344875(n+1))`
-/

namespace A369432.P2359588751599721994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A121186 (n + 4) - A344875 (n + 1)).toNat

end

end A369432.P2359588751599721994

/-!
# A369434: a(n) = [x^(n^2)] Product_{k=1..n} (x^(k^2) + 1 + 1/x^(k^2)).

The programs for A369434, there is no canonical definition to state claims against.
-/

/-! ## A369434.P13672747176864256571

`A325337(A000700(C(n, 2)))`
-/

namespace A369434.P13672747176864256571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325337 (A000700 (Nat.choose n 2)).toNat

end

end A369434.P13672747176864256571

/-! ## A369434.P5025135359301266842

`A374636(n+1)+A124765(A001790(n))`
-/

namespace A369434.P5025135359301266842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374636 (n + 1) + A124765 (A001790 n).toNat

end

end A369434.P5025135359301266842

/-! ## A369434.P6416851771386892966

`A094802(A005676(n))`
-/

namespace A369434.P6416851771386892966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094802 (A005676 n).toNat

end

end A369434.P6416851771386892966

/-! ## A369434.P3602397819466392505

`A094802(A023425(n))`
-/

namespace A369434.P3602397819466392505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094802 (A023425 n).toNat

end

end A369434.P3602397819466392505

/-! ## A369434.P8579118062129349099

`A094802(A114299(n))`
-/

namespace A369434.P8579118062129349099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094802 (A114299 n).toNat

end

end A369434.P8579118062129349099

/-!
# A369435: Square array A(n, k) = n! * [t^n] (exp(t)/(1+k-k*exp(t))) for n >= 0 and k >= 0, read by antidiagonals upwards.

The programs for A369435, there is no canonical definition to state claims against.
-/

/-! ## A369435.P9597010510441283396

`A128227(n)*A257565(n)`
-/

namespace A369435.P9597010510441283396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n * A257565 n

end

end A369435.P9597010510441283396

/-! ## A369435.P13048734639218787933

`A000027(lcm(A128227(n), A257565(n)))`
-/

namespace A369435.P13048734639218787933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.lcm (A128227 n) (A257565 n))

end

end A369435.P13048734639218787933

/-! ## A369435.P14597847848964169477

`A059953(A113711(n))`
-/

namespace A369435.P14597847848964169477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059953 (A113711 n).toNat

end

end A369435.P14597847848964169477

/-! ## A369435.P12086580423864581497

`A065708(A142589(n))`
-/

namespace A369435.P12086580423864581497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065708 (A142589 n).toNat

end

end A369435.P12086580423864581497

/-! ## A369435.P1148661983325801352

`A227194(A125860(n))`
-/

namespace A369435.P1148661983325801352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227194 (A125860 n).toNat

end

end A369435.P1148661983325801352

/-!
# A369436: Number of 2-Motzkin meanders with catastrophes of length n.

The programs for A369436, there is no canonical definition to state claims against.
-/

/-! ## A369436.P15227213901993317442

`Δ[A073525(n)]`
-/

namespace A369436.P15227213901993317442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369436.P15227213901993317442

/-! ## A369436.P12007997774819525442

`A073525(n+1)-A073525(n)`
-/

namespace A369436.P12007997774819525442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073525 (n + 1) - A073525 n

end

end A369436.P12007997774819525442

/-!
# A369438: a(n) = [x^(n^3)] Product_{k=1..n} (x^(k^3) + 1 + 1/x^(k^3)).

The programs for A369438, there is no canonical definition to state claims against.
-/

/-! ## A369438.P18330561608097866619

`∑[A350899(A053799(n))]+1`
-/

namespace A369438.P18330561608097866619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350899 (A053799 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A369438.P18330561608097866619

/-!
# A369439: Expansion of (1/x) * Series_Reversion( x / ((1+x)^2 * (1+x^2)) ).

The programs for A369439, there is no canonical definition to state claims against.
-/

/-! ## A369439.P17030441496295322814

`A097508(or(A038055(n+1), A266114(n+1)))`
-/

namespace A369439.P17030441496295322814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (Int.lor (A038055 (n + 1)) (A266114 (n + 1))).toNat

end

end A369439.P17030441496295322814

/-! ## A369439.P786546995961630848

`A150268(A001096(n))`
-/

namespace A369439.P786546995961630848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150268 (A001096 n).toNat

end

end A369439.P786546995961630848

/-!
# A369440: Expansion of (1/x) * Series_Reversion( x / ((1+x) * (1+x^2)^2) ).

The programs for A369440, there is no canonical definition to state claims against.
-/

/-! ## A369440.P7484383411513828353

`A276214(A112806(n))`
-/

namespace A369440.P7484383411513828353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276214 (A112806 n).toNat

end

end A369440.P7484383411513828353

/-! ## A369440.P7576372671071081490

`A256502(A369212(n))`
-/

namespace A369440.P7576372671071081490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A369212 n).toNat

end

end A369440.P7576372671071081490

/-! ## A369440.P1969987118758686190

`A024417(A094433(n+1))`
-/

namespace A369440.P1969987118758686190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A094433 (n + 1)).toNat

end

end A369440.P1969987118758686190

/-!
# A369441: Expansion of (1/x) * Series_Reversion( x / ((1+x)^2 * (1+x^2)^2) ).

The programs for A369441, there is no canonical definition to state claims against.
-/

/-! ## A369441.P10590604608621667815

`A091226(A000031(3*n+2))-1`
-/

namespace A369441.P10590604608621667815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (A000031 (3 * n + 2)).toNat - 1

end

end A369441.P10590604608621667815

/-! ## A369441.P13146292043192431876

`A360102(n)+A318950(A000108(n))`
-/

namespace A369441.P13146292043192431876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360102 n + A318950 (A000108 n).toNat

end

end A369441.P13146292043192431876

/-!
# A369443: Expansion of (1/x) * Series_Reversion( x / ((1+x)^2 * (1+x^3)) ).

The programs for A369443, there is no canonical definition to state claims against.
-/

/-! ## A369443.P14513830584538733143

`A380377(A149451(n+1))`
-/

namespace A369443.P14513830584538733143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380377 (A149451 (n + 1)).toNat

end

end A369443.P14513830584538733143

/-! ## A369443.P4767855564587120551

`∑[A109081(n+1)-A184955(2*n+3)]`
-/

namespace A369443.P4767855564587120551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109081 (n + 1) - A184955 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369443.P4767855564587120551

/-! ## A369443.P6604682499295900036

`A369398(n)-A184974(A000045(n))`
-/

namespace A369443.P6604682499295900036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369398 n - A184974 (A000045 n).toNat

end

end A369443.P6604682499295900036

/-!
# A369445: Numerator of sigma(n) / A276086(n), where A276086 is the primorial base exp-function.

The programs for A369445, there is no canonical definition to state claims against.
-/

/-! ## A369445.P13717645019014606819

`A000203(n+1)/A324644(n+1)`
-/

namespace A369445.P13717645019014606819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A324644 (n + 1) : ℚ)

end

end A369445.P13717645019014606819

/-! ## A369445.P13852424301041498099

`(A088580(n+1)-1)/A324644(n+1)`
-/

namespace A369445.P13852424301041498099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088580 (n + 1) - 1 : ℚ) / (A324644 (n + 1) : ℚ)

end

end A369445.P13852424301041498099

/-! ## A369445.P15302897665949234979

`(A000217(n+1)-A024816(n+1))/A324644(n+1)`
-/

namespace A369445.P15302897665949234979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 1) - A024816 (n + 1) : ℚ) / (A324644 (n + 1) : ℚ)

end

end A369445.P15302897665949234979

/-! ## A369445.P12565935113797118103

`A000203(n+1)/A276086(n+1)*A369446(n+1)`
-/

namespace A369445.P12565935113797118103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A276086 (n + 1) : ℚ) * (A369446 (n + 1) : ℚ)

end

end A369445.P12565935113797118103

/-! ## A369445.P1369227564051197787

`A188134(4*∑{d}[n+1, #]/A324644(n+1))`
-/

namespace A369445.P1369227564051197787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (SequenceMachineLib.roundAway (((4 * (∑ d ∈ Nat.divisors (f1 n), d) : ℕ) : ℚ) / (A324644 (n + 1) : ℚ))).toNat

end

end A369445.P1369227564051197787

/-!
# A369446: Denominator of sigma(n) / A276086(n), where A276086 is the primorial base exp-function.

The programs for A369446, there is no canonical definition to state claims against.
-/

/-! ## A369446.P16402886851353338065

`A276086(n+1)/A324644(n+1)`
-/

namespace A369446.P16402886851353338065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 (n + 1) : ℚ) / (A324644 (n + 1) : ℚ)

end

end A369446.P16402886851353338065

/-! ## A369446.P1928148788534581669

`A276086(n+1)/A000203(n+1)*A369445(n+1)`
-/

namespace A369446.P1928148788534581669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A369445 (n + 1) : ℚ)

end

end A369446.P1928148788534581669

/-! ## A369446.P11204322186567730822

`A276086(n+1-A276085(A324644(n+1)))`
-/

namespace A369446.P11204322186567730822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 ((n + 1 : ℤ) - A276085 (A324644 (n + 1)).toNat).toNat

end

end A369446.P11204322186567730822

/-!
# A369449: a(n) = A003415(gcd(A003415(n), A276086(n))), where A003415 is the arithmetic derivative and A276086 is the primorial base exp-function.

The programs for A369449, there is no canonical definition to state claims against.
-/

/-! ## A369449.P1072966691902087901

`A003415(A327858(n))`
-/

namespace A369449.P1072966691902087901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A327858 n).toNat

end

end A369449.P1072966691902087901

/-! ## A369449.P6070593579888620788

`A327860(A351234(n))`
-/

namespace A369449.P6070593579888620788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 (A351234 n).toNat

end

end A369449.P6070593579888620788

/-! ## A369449.P12587961596612989832

`A319703(2*A327858(n))`
-/

namespace A369449.P12587961596612989832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * A327858 n).toNat

end

end A369449.P12587961596612989832

/-! ## A369449.P7199501966764164490

`A003415(A276086(n-A351233(n)))`
-/

namespace A369449.P7199501966764164490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A276086 ((n : ℤ) - A351233 n).toNat).toNat

end

end A369449.P7199501966764164490

/-! ## A369449.P65507908875722767

`A003415(A276086(n)/A351231(n))`
-/

namespace A369449.P65507908875722767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((A276086 n : ℚ) / (A351231 n : ℚ))).toNat

end

end A369449.P65507908875722767

/-! ## A369449.P8045217014488078156

`A003415(gcd(A003415(n), A276086(n)))`
-/

namespace A369449.P8045217014488078156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (Int.gcd (A003415 n) (A276086 n))

end

end A369449.P8045217014488078156

/-!
# A369450: Partial sums of A369460, where A369460(n) = number of representations of 12n-9 as a sum (p*q + p*r + q*r) with three odd primes p <= q <= r.

The programs for A369450, there is no canonical definition to state claims against.
-/

/-! ## A369450.P12194884513786775699

`A369460(n+1)+a(n-1)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A369450.P12194884513786775699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A369460 (n + 1) + a (n - 1)

end

end A369450.P12194884513786775699

/-! ## A369450.P7986207004226225163

`A369057(3*(n+1))-(A369451(n+1)+A369452(n+1))`
-/

namespace A369450.P7986207004226225163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369057 (3 * (n + 1)) - (A369451 (n + 1) + A369452 (n + 1))

end

end A369450.P7986207004226225163

/-! ## A369450.P1425365944948677677

`∑[A369460(n+1)]`
-/

namespace A369450.P1425365944948677677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369450.P1425365944948677677

/-! ## A369450.P14356435580115906656

`∑[A369055(3*n+1)]`
-/

namespace A369450.P14356435580115906656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369055 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369450.P14356435580115906656

/-! ## A369450.P16833639830197821367

`∑[A369054(A316320(n+1))]`
-/

namespace A369450.P16833639830197821367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 (A316320 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369450.P16833639830197821367

/-! ## A369450.P16465214562640133933

`∑[A369054(A004767(3*n))]`
-/

namespace A369450.P16465214562640133933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 (A004767 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369450.P16465214562640133933

/-!
# A369451: Partial sums of A369461, where A369461(n) = number of representations of 12n-5 as a sum (p*q + p*r + q*r) with three odd primes p <= q <= r.

The programs for A369451, there is no canonical definition to state claims against.
-/

/-! ## A369451.P895883974988890080

`A369461(n+1)+a(n-1)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1`
-/

namespace A369451.P895883974988890080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 1] fun n a =>
  A369461 (n + 1) + a (n - 1)

end

end A369451.P895883974988890080

/-! ## A369451.P9813494085948222091

`A369057(3*(n+1))-(A369450(n+1)+A369452(n+1))`
-/

namespace A369451.P9813494085948222091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369057 (3 * (n + 1)) - (A369450 (n + 1) + A369452 (n + 1))

end

end A369451.P9813494085948222091

/-! ## A369451.P1297435670036302680

`∑[A369461(n+1)]`
-/

namespace A369451.P1297435670036302680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369451.P1297435670036302680

/-! ## A369451.P8503048830019153907

`∑[A369055(3*n+2)]`
-/

namespace A369451.P8503048830019153907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369055 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369451.P8503048830019153907

/-! ## A369451.P903707157837491224

`∑[A369055(A016789(n))%∑{d}[n+1, #]]`
-/

namespace A369451.P903707157837491224
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369055 (A016789 n).toNat) ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369451.P903707157837491224

/-! ## A369451.P5727314281583028736

`∑[A369054(A017605(n))]`
-/

namespace A369451.P5727314281583028736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 (A017605 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369451.P5727314281583028736

/-! ## A369451.P9845486242998285497

`∑[A369054(A008588(2*n+1)+1)]`
-/

namespace A369451.P9845486242998285497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 (A008588 (2 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369451.P9845486242998285497

/-!
# A369452: Partial sums of A369462, where A369462(n) = number of representations of 12n-1 as a sum (p*q + p*r + q*r) with three odd primes p <= q <= r.

The programs for A369452, there is no canonical definition to state claims against.
-/

/-! ## A369452.P5441725644973632985

`A369462(n+1)+a(n-1)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=1`
-/

namespace A369452.P5441725644973632985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 1] fun n a =>
  A369462 (n + 1) + a (n - 1)

end

end A369452.P5441725644973632985

/-! ## A369452.P14138494212432210293

`A369057(3*(n+1))-(A369450(n+1)+A369451(n+1))`
-/

namespace A369452.P14138494212432210293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369057 (3 * (n + 1)) - (A369450 (n + 1) + A369451 (n + 1))

end

end A369452.P14138494212432210293

/-! ## A369452.P3438013346999181521

`∑[A369462(n+1)]`
-/

namespace A369452.P3438013346999181521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369452.P3438013346999181521

/-! ## A369452.P9046959701909087181

`∑[A369055(3*(n+1))]`
-/

namespace A369452.P9046959701909087181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369055 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369452.P9046959701909087181

/-! ## A369452.P6558694989130222804

`A369055(3*n+3)+a(n-1)` with `a(0)=0`
-/

namespace A369452.P6558694989130222804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A369055 (3 * n + 3) + a (n - 1)

end

end A369452.P6558694989130222804

/-! ## A369452.P5603614263035313737

`∑[A369054(A017653(n))]`
-/

namespace A369452.P5603614263035313737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 (A017653 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369452.P5603614263035313737

/-! ## A369452.P11148714707603909551

`∑[A369054(A004767(3*n+2))]`
-/

namespace A369452.P11148714707603909551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 (A004767 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369452.P11148714707603909551

/-!
# A369453: Dirichlet inverse of A038548, where A038548 is the number of divisors of n that are at most sqrt(n).

The programs for A369453, there is no canonical definition to state claims against.
-/

/-! ## A369453.P13834319899144486835

`∑{d}[n+1, A378213(#)]`
-/

namespace A369453.P13834319899144486835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378213 d

end

end A369453.P13834319899144486835

/-! ## A369453.P10989096012856203558

`∑{d}[n+1, A008683(#)*A359763((n+1)/#)]`
-/

namespace A369453.P10989096012856203558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A359763 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369453.P10989096012856203558

/-! ## A369453.P7943298283543023960

`∑{d}[n+1, A000010(#)*A378525((n+1)/#)]`
-/

namespace A369453.P7943298283543023960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A378525 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369453.P7943298283543023960

/-! ## A369453.P1204542588873786715

`∑{d}[n+1, A008966(#)*A378453((n+1)/#)]`
-/

namespace A369453.P1204542588873786715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A378453 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369453.P1204542588873786715

/-! ## A369453.P1697247253570652877

`∑{d}[n+1, A174725(#)*A378534((n+1)/#)]`
-/

namespace A369453.P1697247253570652877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A174725 d * A378534 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369453.P1697247253570652877

/-! ## A369453.P17988991926527885090

`∑{d}[n+1, A271102(#)*A378452((n+1)/#)]`
-/

namespace A369453.P17988991926527885090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 d * A378452 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369453.P17988991926527885090

/-! ## A369453.P5061343362706532875

`A369454(A003961(n+1))`
-/

namespace A369453.P5061343362706532875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369454 (A003961 (n + 1)).toNat

end

end A369453.P5061343362706532875

/-! ## A369453.P2409793203363979166

`A369454(A332818(n+1))`
-/

namespace A369453.P2409793203363979166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369454 (A332818 (n + 1)).toNat

end

end A369453.P2409793203363979166

/-! ## A369453.P13995219500013888971

`A369454(A359600(n+1))`
-/

namespace A369453.P13995219500013888971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369454 (A359600 (n + 1)).toNat

end

end A369453.P13995219500013888971

/-! ## A369453.P998033939510397176

`A369454(A064988(n+1))`
-/

namespace A369453.P998033939510397176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369454 (A064988 (n + 1)).toNat

end

end A369453.P998033939510397176

/-! ## A369453.P10762437012086419753

`A369454(A348746(n+1))`
-/

namespace A369453.P10762437012086419753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369454 (A348746 (n + 1)).toNat

end

end A369453.P10762437012086419753

/-! ## A369453.P18130472125720862178

`A369454(A297002(n+1))`
-/

namespace A369453.P18130472125720862178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369454 (A297002 (n + 1)).toNat

end

end A369453.P18130472125720862178

/-! ## A369453.P1427127339575138140

`A369454(A389092(n+1))`
-/

namespace A369453.P1427127339575138140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369454 (A389092 (n + 1)).toNat

end

end A369453.P1427127339575138140

/-! ## A369453.P3449403015348457464

`A369454(A354091(n+1))`
-/

namespace A369453.P3449403015348457464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369454 (A354091 (n + 1)).toNat

end

end A369453.P3449403015348457464

/-! ## A369453.P11597888400916070516

`A369454(A354202(n+1))`
-/

namespace A369453.P11597888400916070516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369454 (A354202 (n + 1)).toNat

end

end A369453.P11597888400916070516

/-! ## A369453.P11762163365683340052

`A369454(A357852(n+1))`
-/

namespace A369453.P11762163365683340052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369454 (A357852 (n + 1)).toNat

end

end A369453.P11762163365683340052

/-!
# A369454: Dirichlet inverse of A369257, where A369257 is the number of divisors of n that are odd numbers with an even number of prime factors with multiplicity.

The programs for A369454, there is no canonical definition to state claims against.
-/

/-! ## A369454.P130118388474325847

`∑{d}[n+1, A008683(#)*A358777((n+1)/#)]`
-/

namespace A369454.P130118388474325847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A358777 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369454.P130118388474325847

/-! ## A369454.P11960687267210161351

`∑{d}[n+1, A000010(#)*A378526((n+1)/#)]`
-/

namespace A369454.P11960687267210161351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A378526 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369454.P11960687267210161351

/-! ## A369454.P7589608588546574381

`∑{d}[n+1, A087003(#)*A359773((n+1)/#)]`
-/

namespace A369454.P7589608588546574381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087003 d * A359773 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369454.P7589608588546574381

/-! ## A369454.P16303090153240636013

`A000035(A230240(3*n+2))*A378528(n+1)`
-/

namespace A369454.P16303090153240636013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A230240 (3 * n + 2)).toNat * A378528 (n + 1)

end

end A369454.P16303090153240636013

/-! ## A369454.P8613742867718500781

`A008683(A092089(n+1)%A048543(n+1))`
-/

namespace A369454.P8613742867718500781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.tmod (A092089 (n + 1)) (A048543 (n + 1))).toNat

end

end A369454.P8613742867718500781

/-!
# A369455: Dirichlet convolution of A083345 with A055615 (Dirichlet inverse of n), where A083345(n) = (n'/gcd(n,n')) and n' is the arithmetic derivative of n.

The programs for A369455, the canonical program `A369455.P1460672139557752697` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369455 has offset 1).

The definition of A369455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369455.P1460672139557752697

`∑{d}[n+1, A055615(#)*A083345((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A369455

/-- `∑{d}[n+1, A055615(#)*A083345((n+1)/#)]` -/
def P1460672139557752697.Spec : Prop :=
  ∀ n, P1460672139557752697.a n = A369455 (n + 1)

theorem P1460672139557752697.correct : P1460672139557752697.Spec := by
  intro n
  simp only [A369455, Nat.add_sub_cancel]

end A369455

/-! ## A369455.P14370461520042095844

`∑{d}[n+1, A023900(#)*A369068((n+1)/#)]`
-/

namespace A369455.P14370461520042095844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A369068 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369455.P14370461520042095844

namespace A369455

/-- `∑{d}[n+1, A023900(#)*A369068((n+1)/#)]` -/
def P14370461520042095844.Spec : Prop :=
  ∀ n, P14370461520042095844.a n = A369455 (n + 1)

end A369455

/-! ## A369455.P17023433027321451603

`∑{d}[n+1, A328729(#)*A369069((n+1)/#)]`
-/

namespace A369455.P17023433027321451603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328729 d * A369069 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369455.P17023433027321451603

namespace A369455

/-- `∑{d}[n+1, A328729(#)*A369069((n+1)/#)]` -/
def P17023433027321451603.Spec : Prop :=
  ∀ n, P17023433027321451603.a n = A369455 (n + 1)

end A369455

/-! ## A369455.P4803501979829191233

`A319203(A317848(n+1))`
-/

namespace A369455.P4803501979829191233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319203 (A317848 (n + 1)).toNat

end

end A369455.P4803501979829191233

namespace A369455

/-- `A319203(A317848(n+1))` -/
def P4803501979829191233.Spec : Prop :=
  ∀ n, P4803501979829191233.a n = A369455 (n + 1)

end A369455

/-! ## A369455.P8182636241460113714

`A209349(n)-A244417(A120729(3*n+1))`
-/

namespace A369455.P8182636241460113714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209349 n - A244417 (A120729 (3 * n + 1)).toNat

end

end A369455.P8182636241460113714

namespace A369455

/-- `A209349(n)-A244417(A120729(3*n+1))` -/
def P8182636241460113714.Spec : Prop :=
  ∀ n, P8182636241460113714.a n = A369455 (n + 1)

end A369455

/-!
# A369456: a(n) = A083345(A005940(1+n)), where A083345(n) = (n'/gcd(n,n')), n' means the arithmetic derivative of n (A003415), and A005940 is the Doudna-sequence.

The programs for A369456, the canonical program `A369456.P1336314732339854060` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369456 has offset 0).

The definition of A369456 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A083345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369456.P1336314732339854060

`A083345(A005940(1+n))`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A369456

/-- `A083345(A005940(1+n))` -/
def P1336314732339854060.Spec : Prop :=
  ∀ n, P1336314732339854060.a n = A369456 n

theorem P1336314732339854060.correct : P1336314732339854060.Spec := by
  intro n
  simp only [A369456]

end A369456

/-! ## A369456.P7588335088580703756

`A366801(n)-A369009(A005940(n+1))`
-/

namespace A369456.P7588335088580703756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366801 n - A369009 (A005940 (n + 1)).toNat

end

end A369456.P7588335088580703756

namespace A369456

/-- `A366801(n)-A369009(A005940(n+1))` -/
def P7588335088580703756.Spec : Prop :=
  ∀ n, P7588335088580703756.a n = A369456 n

end A369456

/-! ## A369456.P14436240650324744860

`A366801(n)-A369009(A364499(n+1)+1+n)`
-/

namespace A369456.P14436240650324744860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366801 n - A369009 (A364499 (n + 1) + 1 + (n : ℤ)).toNat

end

end A369456.P14436240650324744860

namespace A369456

/-- `A366801(n)-A369009(A364499(n+1)+1+n)` -/
def P14436240650324744860.Spec : Prop :=
  ∀ n, P14436240650324744860.a n = A369456 n

end A369456

/-! ## A369456.P6536230695866775398

`A366801(n)-A369009(A324641(n+1)-A324640(n+1))`
-/

namespace A369456.P6536230695866775398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366801 n - A369009 (A324641 (n + 1) - A324640 (n + 1)).toNat

end

end A369456.P6536230695866775398

namespace A369456

/-- `A366801(n)-A369009(A324641(n+1)-A324640(n+1))` -/
def P6536230695866775398.Spec : Prop :=
  ∀ n, P6536230695866775398.a n = A369456 n

end A369456

/-! ## A369456.P15500785862526970623

`A366801(n)-A369009(A364500(n+1)*A364502(n+1))`
-/

namespace A369456.P15500785862526970623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366801 n - A369009 (A364500 (n + 1) * A364502 (n + 1)).toNat

end

end A369456.P15500785862526970623

namespace A369456

/-- `A366801(n)-A369009(A364500(n+1)*A364502(n+1))` -/
def P15500785862526970623.Spec : Prop :=
  ∀ n, P15500785862526970623.a n = A369456 n

end A369456

/-! ## A369456.P10295595843607778420

`A083345(A337375(n)*A337376(n))`
-/

namespace A369456.P10295595843607778420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083345 (A337375 n * A337376 n).toNat

end

end A369456.P10295595843607778420

namespace A369456

/-- `A083345(A337375(n)*A337376(n))` -/
def P10295595843607778420.Spec : Prop :=
  ∀ n, P10295595843607778420.a n = A369456 n

end A369456

/-!
# A369458: Arithmetic derivative of the odd part of n, permuted by A163511 ("Doudna-sequence mirrored").

The programs for A369458, the canonical program `A369458.P12459843309324393945` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369458 has offset 0).

The definition of A369458 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A369465, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369458.P12459843309324393945

`A369465(A163511(n))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A369458

/-- `A369465(A163511(n))` -/
def P12459843309324393945.Spec : Prop :=
  ∀ n, P12459843309324393945.a n = A369458 n

theorem P12459843309324393945.correct : P12459843309324393945.Spec := by
  intro n
  simp only [A369458]

end A369458

/-! ## A369458.P17740873079275958193

`A369465(A364258(n)+n)`
-/

namespace A369458.P17740873079275958193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369465 (A364258 n + (n : ℤ)).toNat

end

end A369458.P17740873079275958193

namespace A369458

/-- `A369465(A364258(n)+n)` -/
def P17740873079275958193.Spec : Prop :=
  ∀ n, P17740873079275958193.a n = A369458 n

end A369458

/-! ## A369458.P5892884549054577582

`A003415(A000265(A163511(2*n)))`
-/

namespace A369458.P5892884549054577582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000265 (A163511 (2 * n)).toNat).toNat

end

end A369458.P5892884549054577582

namespace A369458

/-- `A003415(A000265(A163511(2*n)))` -/
def P5892884549054577582.Spec : Prop :=
  ∀ n, P5892884549054577582.a n = A369458 n

end A369458

/-! ## A369458.P3547636785717863538

`A349905(A064989(A064989(A163511(2*n+1))))`
-/

namespace A369458.P3547636785717863538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349905 (A064989 (A064989 (A163511 (2 * n + 1)).toNat).toNat).toNat

end

end A369458.P3547636785717863538

namespace A369458

/-- `A349905(A064989(A064989(A163511(2*n+1))))` -/
def P3547636785717863538.Spec : Prop :=
  ∀ n, P3547636785717863538.a n = A369458 n

end A369458

/-!
# A369459: Lexicographically earliest infinite sequence such that a(i) = a(j) => A369458(i) = A369458(j) for all i, j >= 0.

The programs for A369459, there is no canonical definition to state claims against.
-/

/-! ## A369459.P1638167660127175412

`A286621(A365395(n)^A229037(3*n+2))`
-/

namespace A369459.P1638167660127175412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286621 (SequenceMachineLib.roundAway ((A365395 n : ℚ) ^ (A229037 (3 * n + 2) : ℤ))).toNat

end

end A369459.P1638167660127175412

/-! ## A369459.P12440097142062693227

`A286621(A365395(n)^A318586(3*n+4))`
-/

namespace A369459.P12440097142062693227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286621 (SequenceMachineLib.roundAway ((A365395 n : ℚ) ^ (A318586 (3 * n + 4) : ℤ))).toNat

end

end A369459.P12440097142062693227

/-! ## A369459.P17432630947632144639

`A110764(A294640(n))`
-/

namespace A369459.P17432630947632144639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110764 (A294640 n).toNat

end

end A369459.P17432630947632144639

/-! ## A369459.P7775297006331127041

`A369467(A129952(n))`
-/

namespace A369459.P7775297006331127041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369467 (A129952 n).toNat

end

end A369459.P7775297006331127041

/-! ## A369459.P17588043985246658101

`A335421(n)-A205809(A000079(n))`
-/

namespace A369459.P17588043985246658101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335421 n - A205809 (A000079 n).toNat

end

end A369459.P17588043985246658101

/-!
# A369460: Number of representations of 12n-9 as a sum (p*q + p*r + q*r) with three odd primes p <= q <= r.

The programs for A369460, there is no canonical definition to state claims against.
-/

/-! ## A369460.P1298312356796656834

`A369055(3*n+1)`
-/

namespace A369460.P1298312356796656834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369055 (3 * n + 1)

end

end A369460.P1298312356796656834

/-! ## A369460.P15246879436458410719

`A369054(12*(n+1)-9)`
-/

namespace A369460.P15246879436458410719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 (12 * (n + 1) - 9)

end

end A369460.P15246879436458410719

/-!
# A369461: Number of representations of 12n-5 as a sum (p*q + p*r + q*r) with three odd primes p <= q <= r.

The programs for A369461, there is no canonical definition to state claims against.
-/

/-! ## A369461.P17671752003720697508

`A369055(3*(n+1)-1)`
-/

namespace A369461.P17671752003720697508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369055 (3 * (n + 1) - 1)

end

end A369461.P17671752003720697508

/-! ## A369461.P11694395233087407981

`A369054(12*(n+1)-5)`
-/

namespace A369461.P11694395233087407981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 (12 * (n + 1) - 5)

end

end A369461.P11694395233087407981

/-!
# A369462: Number of representations of 12n-1 as a sum (p*q + p*r + q*r) with three odd primes p <= q <= r.

The programs for A369462, there is no canonical definition to state claims against.
-/

/-! ## A369462.P8795549072029421388

`A369055(3*(n+1))`
-/

namespace A369462.P8795549072029421388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369055 (3 * (n + 1))

end

end A369462.P8795549072029421388

/-! ## A369462.P16591154536268432241

`A369054(12*(n+1)-1)`
-/

namespace A369462.P16591154536268432241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 (12 * (n + 1) - 1)

end

end A369462.P16591154536268432241

/-!
# A369463: Numbers of the form 12*m-1 for which there is no representation as a sum (p*q + p*r + q*r) with three odd primes p <= q <= r.

The programs for A369463, there is no canonical definition to state claims against.
-/

/-! ## A369463.P453597572093105799

`∩[A369056(n+1), A017653(n)]`
-/

namespace A369463.P453597572093105799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369463.P453597572093105799

/-! ## A369463.P12986701556433779506

`∩[A369056(n+1), A016969(n)]`
-/

namespace A369463.P12986701556433779506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369463.P12986701556433779506

/-! ## A369463.P17292113327399895508

`∩[A091998(n+1), A369056(n+1)]`
-/

namespace A369463.P17292113327399895508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369463.P17292113327399895508

/-! ## A369463.P9169887192985191907

`∩[A369056(n+1), A016945(n)+2]`
-/

namespace A369463.P9169887192985191907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369463.P9169887192985191907

/-! ## A369463.P4525197949051528320

`∩[A369056(n+1), A101328(n+2)]`
-/

namespace A369463.P4525197949051528320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101328 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369463.P4525197949051528320

/-! ## A369463.P2166885384086321663

`∩[A146512(n+1)-2, A369056(n+1)]`
-/

namespace A369463.P2166885384086321663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146512 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369463.P2166885384086321663

/-! ## A369463.P13517507711379299306

`∩[A277571(n+1), A369056(n+1)]`
-/

namespace A369463.P13517507711379299306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369463.P13517507711379299306

/-! ## A369463.P14466455823029500585

`∩[A277569(n+1)+2, A369056(n+1)]`
-/

namespace A369463.P14466455823029500585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277569 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369463.P14466455823029500585

/-! ## A369463.P2154716653209841173

`∩[A259754(n+1)+2, A369056(n+1)]`
-/

namespace A369463.P2154716653209841173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259754 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369463.P2154716653209841173

/-! ## A369463.P15700104309654504167

`∩[A084088(n+1), A369056(n+1)]`
-/

namespace A369463.P15700104309654504167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369463.P15700104309654504167

/-!
# A369464: Numbers for which there is no representation as a sum (p*q + p*r + q*r) with three odd primes p <= q <= r.

The programs for A369464, there is no canonical definition to state claims against.
-/

/-! ## A369464.P474553659525449573

`eq[0, A369054(n)]`
-/

namespace A369464.P474553659525449573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A369464.P474553659525449573

/-! ## A369464.P364297904174853367

`comp[A369251(n+1)]`
-/

namespace A369464.P364297904174853367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A369464.P364297904174853367

/-! ## A369464.P10274937595472730146

`comp[A369252(n+1)]`
-/

namespace A369464.P10274937595472730146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A369464.P10274937595472730146

/-! ## A369464.P9527937920464480429

`lt[A369054(n^gcd(2, n)), 1]`
-/

namespace A369464.P9527937920464480429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 (n ^ Nat.gcd 2 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A369464.P9527937920464480429

/-! ## A369464.P16086873774896387185

`lt[A369054(n*gcd(5, n%2)), 1]`
-/

namespace A369464.P16086873774896387185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 (n * Nat.gcd 5 (n % 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A369464.P16086873774896387185

/-! ## A369464.P54014860967120559

`lt[A369054(A195817(n)), 1]`
-/

namespace A369464.P54014860967120559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 (A195817 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A369464.P54014860967120559

/-! ## A369464.P1409495870786816820

`lt[A369054(n), A219208(n)]`
-/

namespace A369464.P1409495870786816820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219208 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A369464.P1409495870786816820

/-! ## A369464.P7878576545884307627

`lt[A122785(A369054(n)+1), 2]`
-/

namespace A369464.P7878576545884307627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122785 (A369054 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A369464.P7878576545884307627

/-! ## A369464.P13096678127462431424

`lt[A369054(n), A007879(A008611(n))]`
-/

namespace A369464.P13096678127462431424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007879 (A008611 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A369464.P13096678127462431424

/-! ## A369464.P1780299912675487506

`lt[A369054(n), A050320(A000040(n+1))]`
-/

namespace A369464.P1780299912675487506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A369464.P1780299912675487506

/-!
# A369465: Arithmetic derivative of the odd part of n: a(n) = A003415(A000265(n)).

The programs for A369465, the canonical program `A369465.P18253036522274647247` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369465 has offset 1).

The definition of A369465 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369465.P18253036522274647247

`A003415(A000265(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A369465

/-- `A003415(A000265(n+1))` -/
def P18253036522274647247.Spec : Prop :=
  ∀ n, P18253036522274647247.a n = A369465 (n + 1)

theorem P18253036522274647247.correct : P18253036522274647247.Spec := by
  intro n
  simp only [A369465, Nat.add_sub_cancel]

end A369465

/-! ## A369465.P13904951013200377097

`A349905(A064989(n+1))`
-/

namespace A369465.P13904951013200377097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349905 (A064989 (n + 1)).toNat

end

end A369465.P13904951013200377097

namespace A369465

/-- `A349905(A064989(n+1))` -/
def P13904951013200377097.Spec : Prop :=
  ∀ n, P13904951013200377097.a n = A369465 (n + 1)

end A369465

/-! ## A369465.P2513084234236157718

`A003415((n+1)/2^val(n+1, 2))`
-/

namespace A369465.P2513084234236157718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A369465.P2513084234236157718

namespace A369465

/-- `A003415((n+1)/2^val(n+1, 2))` -/
def P2513084234236157718.Spec : Prop :=
  ∀ n, P2513084234236157718.a n = A369465 (n + 1)

end A369465

/-! ## A369465.P13746933162460018354

`A003415((n+1)/A006519(n+1))`
-/

namespace A369465.P13746933162460018354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A369465.P13746933162460018354

namespace A369465

/-- `A003415((n+1)/A006519(n+1))` -/
def P13746933162460018354.Spec : Prop :=
  ∀ n, P13746933162460018354.a n = A369465 (n + 1)

end A369465

/-! ## A369465.P12335483411846168100

`A190116(A028234(2*(n+1)))/A028234(2*(n+1))`
-/

namespace A369465.P12335483411846168100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190116 (A028234 (2 * (n + 1))).toNat : ℚ) / (A028234 (2 * (n + 1)) : ℚ)

end

end A369465.P12335483411846168100

namespace A369465

/-- `A190116(A028234(2*(n+1)))/A028234(2*(n+1))` -/
def P12335483411846168100.Spec : Prop :=
  ∀ n, P12335483411846168100.a n = (A369465 (n + 1) : ℚ)

end A369465

/-!
# A369466: Lexicographically earliest infinite sequence such that a(i) = a(j) => A369465(i) = A369465(j), for all i, j >= 1.

The programs for A369466, there is no canonical definition to state claims against.
-/

/-! ## A369466.P4097071011932490603

`A335453(A348400(n+5))+∑{d}[n+1, #%2]`
-/

namespace A369466.P4097071011932490603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335453 (A348400 (n + 5)).toNat + ((∑ d ∈ Nat.divisors (f1 n), d % 2 : ℕ) : ℤ)

end

end A369466.P4097071011932490603

/-! ## A369466.P4247247812307817479

`A124761(A239261(n))+A001227(n+1)`
-/

namespace A369466.P4247247812307817479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A239261 n).toNat + A001227 (n + 1)

end

end A369466.P4247247812307817479

/-! ## A369466.P17520346412481157337

`A101296(A250470(n+1)%A075935(n))`
-/

namespace A369466.P17520346412481157337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (Int.tmod (A250470 (n + 1)) (A075935 n)).toNat

end

end A369466.P17520346412481157337

/-! ## A369466.P2706944700138262047

`or(A001227(n+1), A156259(A156224(n)))`
-/

namespace A369466.P2706944700138262047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001227 (n + 1)) (A156259 (A156224 n).toNat)

end

end A369466.P2706944700138262047

/-! ## A369466.P11991935814442876446

`A089801(A109399(n+1))+A001227(n+1)`
-/

namespace A369466.P11991935814442876446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089801 (A109399 (n + 1)).toNat + A001227 (n + 1)

end

end A369466.P11991935814442876446

/-!
# A369467: Lexicographically earliest infinite sequence such that a(i) = a(j) => A369465(i) = A369465(j) and A369465(A163511(i)) = A369465(A163511(j)), for all i, j >= 1.

The programs for A369467, there is no canonical definition to state claims against.
-/

/-! ## A369467.P13922984421924552198

`A353853((floor(n/(xor(n, n+1)+1))+1)%A330217(3*n+5))`
-/

namespace A369467.P13922984421924552198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353853 (Int.tmod (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) (A330217 (3 * n + 5))).toNat

end

end A369467.P13922984421924552198

/-! ## A369467.P1008162371323334610

`A322791(A351037(n+1))%A246147(3*(n+1))`
-/

namespace A369467.P1008162371323334610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322791 (A351037 (n + 1)).toNat) (A246147 (3 * (n + 1)))

end

end A369467.P1008162371323334610

/-! ## A369467.P134015250748747756

`A284318(A351037(n+1)%A241514(3*n+2))`
-/

namespace A369467.P134015250748747756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284318 (Int.tmod (A351037 (n + 1)) (A241514 (3 * n + 2))).toNat

end

end A369467.P134015250748747756

/-! ## A369467.P10150805931609921391

`A369459(A077168(n))`
-/

namespace A369467.P10150805931609921391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369459 (A077168 n).toNat

end

end A369467.P10150805931609921391

/-!
# A369468: a(n) = Product_{k=0..n} ((3*k+1)*(3*k+2))^(n-k).

The programs for A369468, there is no canonical definition to state claims against.
-/

/-! ## A369468.P9994246254731614043

`A263416(n)*A263417(n)`
-/

namespace A369468.P9994246254731614043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263416 n * A263417 n

end

end A369468.P9994246254731614043

/-! ## A369468.P5502812211075623238

`∏[A052502(n)]`
-/

namespace A369468.P5502812211075623238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A369468.P5502812211075623238

/-! ## A369468.P8452563399752241722

`∏[A395146(∑[n+3])]`
-/

namespace A369468.P8452563399752241722
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395146 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A369468.P8452563399752241722

/-! ## A369468.P11453296741019576977

`∏[record[A091752(n+1)]]`
-/

namespace A369468.P11453296741019576977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091752 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A369468.P11453296741019576977

/-!
# A369469: a(n) = number of integer solutions to 1 <= x1 < x2 < ... < xn to 1/x1 + ... + 1/xn = (1 - 1/x1) * ... * (1 - 1/xn).

The programs for A369469, there is no canonical definition to state claims against.
-/

/-! ## A369469.P1000385681978577416

`A125178(A244410(n))`
-/

namespace A369469.P1000385681978577416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125178 (A244410 n).toNat

end

end A369469.P1000385681978577416

/-!
# A369470: a(n) = number of integer solutions to 1 <= x1 <= x2 <= ... <= xn to 1/x1 + ... + 1/xn = (1 - 1/x1) * ... * (1 - 1/xn).

The programs for A369470, there is no canonical definition to state claims against.
-/

/-! ## A369470.P11773739567649675016

`∏{p}[A132694(n)², #]`
-/

namespace A369470.P11773739567649675016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132694 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A369470.P11773739567649675016

/-!
# A369471: Number of chiral pairs of polyominoes composed of n pentagonal cells of the hyperbolic regular tiling with Schläfli symbol {5,oo}.

The programs for A369471, there is no canonical definition to state claims against.
-/

/-! ## A369471.P8345170525843967611

`A005040(n+4)-A369472(n+4)`
-/

namespace A369471.P8345170525843967611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005040 (n + 4) - A369472 (n + 4)

end

end A369471.P8345170525843967611

/-! ## A369471.P16500422609038066887

`A005038(n+4)-A005040(n+4)`
-/

namespace A369471.P16500422609038066887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005038 (n + 4) - A005040 (n + 4)

end

end A369471.P16500422609038066887

/-! ## A369471.P8607989116197999845

`(A005038(n+4)-A369472(n+4))/2`
-/

namespace A369471.P8607989116197999845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005038 (n + 4) - A369472 (n + 4) : ℚ) / 2

end

end A369471.P8607989116197999845

/-!
# A369472: Number of achiral polyominoes composed of n pentagonal cells of the hyperbolic regular tiling with Schläfli symbol {5,oo}.

The programs for A369472, there is no canonical definition to state claims against.
-/

/-! ## A369472.P1072728015584974367

`2*A005040(n+1)-A005038(n+1)`
-/

namespace A369472.P1072728015584974367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005040 (n + 1) - A005038 (n + 1)

end

end A369472.P1072728015584974367

/-! ## A369472.P6414223032634442109

`A069270(A101881(n))`
-/

namespace A369472.P6414223032634442109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (A101881 n).toNat

end

end A369472.P6414223032634442109

/-! ## A369472.P3035618800423649486

`A124753(A007494(n)+1)`
-/

namespace A369472.P3035618800423649486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124753 (A007494 n + 1).toNat

end

end A369472.P3035618800423649486

/-! ## A369472.P6372329011506708760

`A124753(A032766(n+1))`
-/

namespace A369472.P6372329011506708760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124753 (A032766 (n + 1)).toNat

end

end A369472.P6372329011506708760

/-! ## A369472.P17863534665512479568

`A124753(A267528(n+1)+1)`
-/

namespace A369472.P17863534665512479568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124753 (A267528 (n + 1) + 1).toNat

end

end A369472.P17863534665512479568

/-! ## A369472.P8069250768802809794

`A124753(A294732(n+2)+1)`
-/

namespace A369472.P8069250768802809794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124753 (A294732 (n + 2) + 1).toNat

end

end A369472.P8069250768802809794

/-!
# A369473: Number of chiral pairs of polyominoes composed of n hexagonal cells of the hyperbolic regular tiling with Schläfli symbol {6,oo}.

The programs for A369473, there is no canonical definition to state claims against.
-/

/-! ## A369473.P12064872307876444585

`A004127(n+4)-A143546(n+4)`
-/

namespace A369473.P12064872307876444585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004127 (n + 4) - A143546 (n + 4)

end

end A369473.P12064872307876444585

/-! ## A369473.P11532250342158788807

`A221184(n+3)-A004127(n+4)`
-/

namespace A369473.P11532250342158788807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221184 (n + 3) - A004127 (n + 4)

end

end A369473.P11532250342158788807

/-! ## A369473.P4154016865763065604

`(A221184(n+3)-A143546(n+4))/2`
-/

namespace A369473.P4154016865763065604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221184 (n + 3) - A143546 (n + 4) : ℚ) / 2

end

end A369473.P4154016865763065604

/-!
# A369474: Number of chiral pairs of polyominoes composed of n pentachoral cells of the hyperbolic regular tiling with Schläfli symbol {3,3,3,oo}.

The programs for A369474, there is no canonical definition to state claims against.
-/

/-! ## A369474.P11532130531938152195

`A007175(n+1)-A182322(n+1)`
-/

namespace A369474.P11532130531938152195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007175 (n + 1) - A182322 (n + 1)

end

end A369474.P11532130531938152195

/-! ## A369474.P3634103380628306511

`A182322(n+1)-A182299(n+1)`
-/

namespace A369474.P3634103380628306511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182322 (n + 1) - A182299 (n + 1)

end

end A369474.P3634103380628306511

/-! ## A369474.P8548636358093888782

`(A007175(n+1)-A182299(n+1))/2`
-/

namespace A369474.P8548636358093888782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007175 (n + 1) - A182299 (n + 1) : ℚ) / 2

end

end A369474.P8548636358093888782

/-! ## A369474.P10585777270110311720

`A007175(n+1)%A182322(A296882(n+1))`
-/

namespace A369474.P10585777270110311720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007175 (n + 1)) (A182322 (A296882 (n + 1)).toNat)

end

end A369474.P10585777270110311720

/-! ## A369474.P631844601659286771

`A004525(A007175(n+1)-A182299(n+1))`
-/

namespace A369474.P631844601659286771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A007175 (n + 1) - A182299 (n + 1)).toNat

end

end A369474.P631844601659286771

/-!
# A369476: Total number of weak ascents in all length-n weak ascent sequences.

The programs for A369476, there is no canonical definition to state claims against.
-/

/-! ## A369476.P11456888470816416024

`A336070(n+1)-A336070(n)`
-/

namespace A369476.P11456888470816416024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336070 (n + 1) - A336070 n

end

end A369476.P11456888470816416024

/-! ## A369476.P14959911256447854808

`Δ[A336070(n)]`
-/

namespace A369476.P14959911256447854808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369476.P14959911256447854808

/-! ## A369476.P4590966036088429562

`Δ[A358470(A157210(n))+A132427(n²)]`
-/

namespace A369476.P4590966036088429562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358470 (A157210 n).toNat + A132427 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369476.P4590966036088429562

/-!
# A369477: Expansion of (1/x) * Series_Reversion( x / ((1+x) * (1+x+x^2)^2) ).

The programs for A369477, there is no canonical definition to state claims against.
-/

/-! ## A369477.P1462180752621047618

`A060715(8^n+abs(1-(char[1]+∑[n])))`
-/

namespace A369477.P1462180752621047618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 ((8 ^ n : ℤ) + |1 - (((if ∃ j, f1 j = n then 1 else 0) + ∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)|).toNat

end

end A369477.P1462180752621047618

/-!
# A369479: Expansion of (1/x) * Series_Reversion( x / ((1+x) * (1+x+x^2)^3) ).

The programs for A369479, there is no canonical definition to state claims against.
-/

/-! ## A369479.P13416649863388597316

`A008615(A171441(n)+A155656(n))`
-/

namespace A369479.P13416649863388597316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A171441 n + A155656 n).toNat

end

end A369479.P13416649863388597316

/-!
# A369480: Expansion of (1/x) * Series_Reversion( x / ((1+x)^2 * (1+x+x^2)^3) ).

The programs for A369480, there is no canonical definition to state claims against.
-/

/-! ## A369480.P3133813330995522513

`A370476(n+1)+A019269(A334254(n))`
-/

namespace A369480.P3133813330995522513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370476 (n + 1) + A019269 (A334254 n).toNat

end

end A369480.P3133813330995522513

/-!
# A369481: Expansion of (1/x) * Series_Reversion( x / ((1+x) * (1+x+x^3)) ).

The programs for A369481, there is no canonical definition to state claims against.
-/

/-! ## A369481.P14577084757316832011

`A291556(A014381(n))+(2^n+1)*(2^n+2)/6`
-/

namespace A369481.P14577084757316832011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291556 (A014381 n).toNat : ℚ) + (2 ^ n + 1 : ℚ) * ((2 ^ n + 2 : ℚ) / 6)

end

end A369481.P14577084757316832011

/-! ## A369481.P17756367268792485341

`A112689(A027973(n)+A000302(n))`
-/

namespace A369481.P17756367268792485341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A027973 n + A000302 n).toNat

end

end A369481.P17756367268792485341

/-! ## A369481.P8052585534855590809

`A241464(A051786(n))+A007581(n)`
-/

namespace A369481.P8052585534855590809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241464 (A051786 n).toNat + A007581 n

end

end A369481.P8052585534855590809

/-!
# A369482: Expansion of (1/x) * Series_Reversion( x / ((1+x)^2 * (1+x+x^3)) ).

The programs for A369482, there is no canonical definition to state claims against.
-/

/-! ## A369482.P7070549485326687197

`A028310(A366097(n)-∑{digits}[n, floor(#/6)])`
-/

namespace A369482.P7070549485326687197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A366097 n - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 6⌋).sum).toNat

end

end A369482.P7070549485326687197

/-! ## A369482.P16804483508870326315

`A366097(n)+A074290(A368931(n))`
-/

namespace A369482.P16804483508870326315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366097 n + A074290 (A368931 n).toNat

end

end A369482.P16804483508870326315

/-! ## A369482.P13339566004325625236

`A366097(n)-A014376(A051026(n))`
-/

namespace A369482.P13339566004325625236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366097 n - A014376 (A051026 n).toNat

end

end A369482.P13339566004325625236

/-!
# A369483: Expansion of (1/x) * Series_Reversion( x / (1+x+x^3)^2 ).

The programs for A369483, there is no canonical definition to state claims against.
-/

/-! ## A369483.P11903603148783378058

`ceil(sqrt(A365925(C(2*n, 2))))`
-/

namespace A369483.P11903603148783378058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A365925 (Nat.choose (2 * n) 2) : ℝ)⌉

end

end A369483.P11903603148783378058

/-! ## A369483.P5074569537898731505

`A108141(A123166(n))`
-/

namespace A369483.P5074569537898731505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A123166 n).toNat

end

end A369483.P5074569537898731505

/-!
# A369484: Expansion of (1/x) * Series_Reversion( x / ((1+x) * (1+x+x^3)^2) ).

The programs for A369484, there is no canonical definition to state claims against.
-/

/-! ## A369484.P8296168774474451928

`A156253(A358453(2*n+3)+A329259(n))`
-/

namespace A369484.P8296168774474451928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (A358453 (2 * n + 3) + A329259 n).toNat

end

end A369484.P8296168774474451928

/-!
# A369485: Expansion of (1/x) * Series_Reversion( x / ((1+x)^2 * (1+x+x^3)^2) ).

The programs for A369485, there is no canonical definition to state claims against.
-/

/-! ## A369485.P6623069913968259378

`A131770(n)+∑[A368421(2*n+1)]`
-/

namespace A369485.P6623069913968259378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368421 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131770 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369485.P6623069913968259378

/-!
# A369486: Expansion of (1/x) * Series_Reversion( x / (1-x) * (1-x-x^2)^2 ).

The programs for A369486, there is no canonical definition to state claims against.
-/

/-! ## A369486.P2271579473439496973

`A127562(A149766(n))`
-/

namespace A369486.P2271579473439496973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127562 (A149766 n).toNat

end

end A369486.P2271579473439496973

/-! ## A369486.P2913377394358761492

`A108954(A192637(n+2))`
-/

namespace A369486.P2913377394358761492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A192637 (n + 2)).toNat

end

end A369486.P2913377394358761492

/-!
# A369487: Expansion of (1/x) * Series_Reversion( x / (1-x) * (1-x-x^2)^3 ).

The programs for A369487, there is no canonical definition to state claims against.
-/

/-! ## A369487.P125344454038457763

`A138302(A215002(n)-A056986(n+1))`
-/

namespace A369487.P125344454038457763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138302 (A215002 n - A056986 (n + 1)).toNat

end

end A369487.P125344454038457763

/-!
# A369488: Expansion of (1/x) * Series_Reversion( x / (1-x)^2 * (1-x-x^2)^3 ).

The programs for A369488, there is no canonical definition to state claims against.
-/

/-! ## A369488.P9252249633176474686

`A237582(A000670(n))+A050146(n)`
-/

namespace A369488.P9252249633176474686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237582 (A000670 n).toNat + A050146 n

end

end A369488.P9252249633176474686

/-! ## A369488.P11221277180912772710

`A130936(A130907(n)-A106609(n))`
-/

namespace A369488.P11221277180912772710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130936 (A130907 n - A106609 n).toNat

end

end A369488.P11221277180912772710

/-!
# A369489: Expansion of (1/x) * Series_Reversion( x / (1-x) * (1-x-x^3)^2 ).

The programs for A369489, there is no canonical definition to state claims against.
-/

/-! ## A369489.P261333397014593272

`A369231(n)+A350139(A193093(n))`
-/

namespace A369489.P261333397014593272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369231 n + A350139 (A193093 n).toNat

end

end A369489.P261333397014593272

/-! ## A369489.P13542683477853152436

`A393022(A392996(n))+A392978(n)`
-/

namespace A369489.P13542683477853152436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393022 (A392996 n).toNat + A392978 n

end

end A369489.P13542683477853152436

/-!
# A369490: a(n) = 3^(n+1) + 2*(-2)^(n+1).

The programs for A369490, the canonical program `A369490.P532554025219414174` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369490 has offset 0).

The definition of A369490 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^(n+1)+2*(-2)^(n+1)` (program `A369490.P532554025219414174`, by `A369490.P532554025219414174.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A369490.P16936570786296456239

`a(n-1)+6*a(n-2)` with `a(0)=-1, a(1)=17`
-/

namespace A369490.P16936570786296456239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 17] fun n a =>
  a (n - 1) + 6 * a (n - 2)

end

end A369490.P16936570786296456239

namespace A369490

/-- `a(n-1)+6*a(n-2)` -/
def P16936570786296456239.Spec : Prop :=
  ∀ n, P16936570786296456239.a n = A369490 n

theorem P16936570786296456239.correct : P16936570786296456239.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A369490, Nat.add_sub_cancel, A369490.P16936570786296456239.a, A369490.P532554025219414174.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A369490, Nat.add_sub_cancel, A369490.P16936570786296456239.a, A369490.P532554025219414174.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A369490

/-! ## A369490.P532554025219414174

`3^(n+1)+2*(-2)^(n+1)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A369490

/-- `3^(n+1)+2*(-2)^(n+1)` -/
def P532554025219414174.Spec : Prop :=
  ∀ n, P532554025219414174.a n = A369490 n

theorem P532554025219414174.correct : P532554025219414174.Spec := by
  intro n
  simp only [A369490]

end A369490

/-! ## A369490.P6195093648539520394

`Δ[A094554(n+2)]`
-/

namespace A369490.P6195093648539520394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094554 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369490.P6195093648539520394

namespace A369490

/-- `Δ[A094554(n+2)]` -/
def P6195093648539520394.Spec : Prop :=
  ∀ n, P6195093648539520394.a n = A369490 n

end A369490

/-!
# A369491: a(n) = n! * [x^n] (2*x - 4*exp(x) + 3*exp(2*x) + 3) / 2.

The programs for A369491, the canonical program `A369491.P5983696684221611342` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369491 has offset 0).

The definition of A369491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369491.P5983696684221611342

`3*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=10`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A369491

/-- `3*a(n-1)-2*a(n-2)` -/
def P5983696684221611342.Spec : Prop :=
  ∀ n, P5983696684221611342.a n = A369491 n

theorem P5983696684221611342.correct : P5983696684221611342.Spec := by
  intro n
  simp only [A369491]

end A369491

/-! ## A369491.P3213767136542843772

`2*(a(n-1)+1)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A369491.P3213767136542843772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  2 * (a (n - 1) + 1)

end

end A369491.P3213767136542843772

namespace A369491

/-- `2*(a(n-1)+1)` -/
def P3213767136542843772.Spec : Prop :=
  ∀ n, (P3213767136542843772.a n : ℤ) = A369491 n

end A369491

/-! ## A369491.P11350372847472472853

`lcm(2, a(n-1)+1)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A369491.P11350372847472472853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  Nat.lcm 2 (a (n - 1) + 1)

end

end A369491.P11350372847472472853

namespace A369491

/-- `lcm(2, a(n-1)+1)` -/
def P11350372847472472853.Spec : Prop :=
  ∀ n, (P11350372847472472853.a n : ℤ) = A369491 n

end A369491

/-! ## A369491.P7110005462010212617

`2*or(1, a(n-1))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A369491.P7110005462010212617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  2 * Nat.lor 1 (a (n - 1))

end

end A369491.P7110005462010212617

namespace A369491

/-- `2*or(1, a(n-1))` -/
def P7110005462010212617.Spec : Prop :=
  ∀ n, (P7110005462010212617.a n : ℤ) = A369491 n

end A369491

/-! ## A369491.P11887938139784842114

`2*xor(1, a(n-1))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A369491.P11887938139784842114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  2 * Nat.xor 1 (a (n - 1))

end

end A369491.P11887938139784842114

namespace A369491

/-- `2*xor(1, a(n-1))` -/
def P11887938139784842114.Spec : Prop :=
  ∀ n, (P11887938139784842114.a n : ℤ) = A369491 n

end A369491

/-! ## A369491.P13461212290512035621

`∑[2*a(n-1)]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6`
-/

namespace A369491.P13461212290512035621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 6] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369491.P13461212290512035621

namespace A369491

/-- `∑[2*a(n-1)]` -/
def P13461212290512035621.Spec : Prop :=
  ∀ n, (P13461212290512035621.a n : ℤ) = A369491 n

end A369491

/-! ## A369491.P10371643305133201384

`4-2*(1-a(n-1))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A369491.P10371643305133201384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  4 - 2 * (1 - a (n - 1))

end

end A369491.P10371643305133201384

namespace A369491

/-- `4-2*(1-a(n-1))` -/
def P10371643305133201384.Spec : Prop :=
  ∀ n, P10371643305133201384.a n = A369491 n

end A369491

/-! ## A369491.P13783427699612717851

`a(n-1)+a(n-1)+2` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A369491.P13783427699612717851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 1) + (a (n - 1) + 2)

end

end A369491.P13783427699612717851

namespace A369491

/-- `a(n-1)+a(n-1)+2` -/
def P13783427699612717851.Spec : Prop :=
  ∀ n, (P13783427699612717851.a n : ℤ) = A369491 n

end A369491

/-! ## A369491.P4443977585898008930

`2%n-a(n-1)/(1/2-1)` with `a(0)=1`
-/

namespace A369491.P4443977585898008930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((2 % n : ℕ) : ℚ) - a (n - 1) / ((1 : ℚ) / 2 - 1)

end

end A369491.P4443977585898008930

namespace A369491

/-- `2%n-a(n-1)/(1/2-1)` -/
def P4443977585898008930.Spec : Prop :=
  ∀ n, P4443977585898008930.a n = (A369491 n : ℚ)

end A369491

/-! ## A369491.P13275684360474420668

`3-floor(1-a(n-1)-a(n-1))` with `a(0)=1, a(1)=2, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A369491.P13275684360474420668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  3 - (1 - a (n - 1) - a (n - 1))

end

end A369491.P13275684360474420668

namespace A369491

/-- `3-floor(1-a(n-1)-a(n-1))` -/
def P13275684360474420668.Spec : Prop :=
  ∀ n, P13275684360474420668.a n = A369491 n

end A369491

/-! ## A369491.P3153563854410894394

`3%a(n-1)-(1-a(n-1)-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A369491.P3153563854410894394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.tmod 3 (a (n - 1)) - (1 - a (n - 1) - a (n - 1))

end

end A369491.P3153563854410894394

namespace A369491

/-- `3%a(n-1)-(1-a(n-1)-a(n-1))` -/
def P3153563854410894394.Spec : Prop :=
  ∀ n, P3153563854410894394.a n = A369491 n

end A369491

/-! ## A369491.P17210499847841415145

`∑[A111286(n)]`
-/

namespace A369491.P17210499847841415145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369491.P17210499847841415145

namespace A369491

/-- `∑[A111286(n)]` -/
def P17210499847841415145.Spec : Prop :=
  ∀ n, P17210499847841415145.a n = A369491 n

end A369491

/-! ## A369491.P10669047607392671928

`A027383(A004275(n))`
-/

namespace A369491.P10669047607392671928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 (A004275 n).toNat

end

end A369491.P10669047607392671928

namespace A369491

/-- `A027383(A004275(n))` -/
def P10669047607392671928.Spec : Prop :=
  ∀ n, P10669047607392671928.a n = A369491 n

end A369491

/-! ## A369491.P515216375517385046

`A083416(A004274(n+1))`
-/

namespace A369491.P515216375517385046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083416 (A004274 (n + 1)).toNat

end

end A369491.P515216375517385046

namespace A369491

/-- `A083416(A004274(n+1))` -/
def P515216375517385046.Spec : Prop :=
  ∀ n, P515216375517385046.a n = A369491 n

end A369491

/-! ## A369491.P3902742097422389016

`A083416(A004280(n+1))`
-/

namespace A369491.P3902742097422389016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083416 (A004280 (n + 1)).toNat

end

end A369491.P3902742097422389016

namespace A369491

/-- `A083416(A004280(n+1))` -/
def P3902742097422389016.Spec : Prop :=
  ∀ n, P3902742097422389016.a n = A369491 n

end A369491

/-! ## A369491.P9309006060069858930

`A296965(n)+A011782(n)`
-/

namespace A369491.P9309006060069858930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296965 n + A011782 n

end

end A369491.P9309006060069858930

namespace A369491

/-- `A296965(n)+A011782(n)` -/
def P9309006060069858930.Spec : Prop :=
  ∀ n, P9309006060069858930.a n = A369491 n

end A369491

/-! ## A369491.P120876100290626451

`A290114(n)+A057428(n)`
-/

namespace A369491.P120876100290626451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290114 n + A057428 n

end

end A369491.P120876100290626451

namespace A369491

/-- `A290114(n)+A057428(n)` -/
def P120876100290626451.Spec : Prop :=
  ∀ n, P120876100290626451.a n = A369491 n

end A369491

/-! ## A369491.P9103578234808110830

`A266591(n)+A192033(n)`
-/

namespace A369491.P9103578234808110830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266591 n + A192033 n

end

end A369491.P9103578234808110830

namespace A369491

/-- `A266591(n)+A192033(n)` -/
def P9103578234808110830.Spec : Prop :=
  ∀ n, P9103578234808110830.a n = A369491 n

end A369491

/-! ## A369491.P5308429412762122830

`A289207(n)+A179744(n)`
-/

namespace A369491.P5308429412762122830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n + A179744 n

end

end A369491.P5308429412762122830

namespace A369491

/-- `A289207(n)+A179744(n)` -/
def P5308429412762122830.Spec : Prop :=
  ∀ n, P5308429412762122830.a n = A369491 n

end A369491

/-!
# A369495: a(n) = [x^n] Product_{k=1..n} (x^(k*(k+1)/2) + 1 + 1/x^(k*(k+1)/2)).

The programs for A369495, there is no canonical definition to state claims against.
-/

/-! ## A369495.P16358566473313248952

`A112231(A030033(n))`
-/

namespace A369495.P16358566473313248952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112231 (A030033 n).toNat

end

end A369495.P16358566473313248952

/-! ## A369495.P5217105083504095075

`A112231(A096812(n))`
-/

namespace A369495.P5217105083504095075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112231 (A096812 n).toNat

end

end A369495.P5217105083504095075

/-! ## A369495.P15205402365656682688

`A066635(A165527(n))`
-/

namespace A369495.P15205402365656682688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066635 (A165527 n).toNat

end

end A369495.P15205402365656682688

/-! ## A369495.P17890216163078899794

`A117171(A261050(n))`
-/

namespace A369495.P17890216163078899794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117171 (A261050 n).toNat

end

end A369495.P17890216163078899794

/-! ## A369495.P1034594474502243026

`A334298(A355190(n))`
-/

namespace A369495.P1034594474502243026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334298 (A355190 n).toNat

end

end A369495.P1034594474502243026

/-!
# A369496: a(n) = [x^(n*(n+1)/2)] Product_{k=1..n} (x^(k*(k+1)/2) + 1 + 1/x^(k*(k+1)/2)).

The programs for A369496, there is no canonical definition to state claims against.
-/

/-! ## A369496.P12909658192354933325

`A268445(A036653(n))`
-/

namespace A369496.P12909658192354933325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268445 (A036653 n).toNat

end

end A369496.P12909658192354933325

/-! ## A369496.P17860470133528526947

`A374640(n)+A066016(A279375(n))`
-/

namespace A369496.P17860470133528526947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374640 n + A066016 (A279375 n).toNat

end

end A369496.P17860470133528526947

/-! ## A369496.P3798715380763036727

`A089646(A008930(n))`
-/

namespace A369496.P3798715380763036727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089646 (A008930 n).toNat

end

end A369496.P3798715380763036727

/-! ## A369496.P5798013001175841830

`A136499(A002995(n))`
-/

namespace A369496.P5798013001175841830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136499 (A002995 n).toNat

end

end A369496.P5798013001175841830

/-! ## A369496.P4452040788558291293

`A331914(A229202(n))`
-/

namespace A369496.P4452040788558291293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331914 (A229202 n).toNat

end

end A369496.P4452040788558291293

