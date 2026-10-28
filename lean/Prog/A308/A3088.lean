import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A308800: Primes p such that A001177(p) = (p-1)/7.

The programs for A308800, there is no canonical definition to state claims against.
-/

/-! ## A308800.P13045055228594394901

`∩[A141971(n+1), A308792(n+1)]`
-/

namespace A308800.P13045055228594394901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308800.P13045055228594394901

/-! ## A308800.P12065925977200436269

`filter[A308792(n+1), A359152(#)]`
-/

namespace A308800.P12065925977200436269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A308800.P12065925977200436269

/-! ## A308800.P2714018514245591021

`filter[A308792(n+1), A347871(#)]`
-/

namespace A308800.P2714018514245591021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j).toNat = 1) n)

end

end A308800.P2714018514245591021

/-! ## A308800.P6041493507246394992

`filter[A308792(n+1), A354028(#)]`
-/

namespace A308800.P6041493507246394992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354028 (f1 j).toNat = 1) n)

end

end A308800.P6041493507246394992

/-! ## A308800.P11597037084246831997

`filter[A308792(n+1), A354029(#)]`
-/

namespace A308800.P11597037084246831997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354029 (f1 j).toNat = 1) n)

end

end A308800.P11597037084246831997

/-!
# A308801: Primes p such that A001177(p) = (p-1)/8.

The programs for A308801, there is no canonical definition to state claims against.
-/

/-! ## A308801.P13145739733207518172

`A065091(eq[8, A116514(n+1)])`
-/

namespace A308801.P13145739733207518172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A308801.P13145739733207518172

/-!
# A308802: Primes p such that A001177(p) = (p-1)/9.

The programs for A308802, there is no canonical definition to state claims against.
-/

/-! ## A308802.P16705186578812778212

`∩[A142106(n+1), A308794(n+1)]`
-/

namespace A308802.P16705186578812778212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308802.P16705186578812778212

/-! ## A308802.P1033399455813502939

`∩[A107168(n+1), A308794(n+1)]`
-/

namespace A308802.P1033399455813502939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308802.P1033399455813502939

/-! ## A308802.P10655686128784041470

`p?[or(2, A308794(n+1))]`
-/

namespace A308802.P10655686128784041470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A308794 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A308802.P10655686128784041470

/-! ## A308802.P6727846300193457749

`filter[A308794(n+1), A359152(#)]`
-/

namespace A308802.P6727846300193457749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A308802.P6727846300193457749

/-! ## A308802.P17568207049983346923

`record[A006530(or(2, A308794(n+1)))]`
-/

namespace A308802.P17568207049983346923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lor 2 (A308794 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308802.P17568207049983346923

/-!
# A308805: The image of N X N under f, where f(x,y) = 2*x*y*(x*y-1)-x+y.

The programs for A308805, there is no canonical definition to state claims against.
-/

/-! ## A308805.P7974114095719242421

`A161983(eq[0, A288969(n+1)])`
-/

namespace A308805.P7974114095719242421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161983 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A308805.P7974114095719242421

/-! ## A308805.P15540368904773553362

`A161983(lt[A288969(n+1), 1])`
-/

namespace A308805.P15540368904773553362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288969 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161983 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A308805.P15540368904773553362

/-! ## A308805.P6243664377665528769

`eq[1, A007953(A383550(n))]`
-/

namespace A308805.P6243664377665528769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A383550 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308805.P6243664377665528769

/-! ## A308805.P16872133611499052304

`eq[A003985(n+1), A261790(n)]`
-/

namespace A308805.P16872133611499052304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261790 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A308805.P16872133611499052304

/-! ## A308805.P7253333502138782237

`eq[A068920(n+1), A188316(A245558(n+1))]`
-/

namespace A308805.P7253333502138782237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188316 (A245558 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A308805.P7253333502138782237

/-!
# A308806: Expansion of 1 / Sum_{k>=0} (-x)^(k*(3*k - 1)/2).

The programs for A308806, there is no canonical definition to state claims against.
-/

/-! ## A308806.P4989847979445785480

`∑[A017842(A048766(n*n²))]`
-/

namespace A308806.P4989847979445785480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017842 (A048766 (n * n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308806.P4989847979445785480

/-! ## A308806.P13371384412224458090

`∑[A017842(n)%A034313(n+1)]`
-/

namespace A308806.P13371384412224458090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017842 n) (A034313 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308806.P13371384412224458090

/-! ## A308806.P7342489579826117977

`A002260(A000217(∑[A017842(n)]))`
-/

namespace A308806.P7342489579826117977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A000217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A308806.P7342489579826117977

/-! ## A308806.P9764245771305516406

`∑[A017842(n)%A017771(A017829(n))]`
-/

namespace A308806.P9764245771305516406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017842 n) (A017771 (A017829 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308806.P9764245771305516406

/-! ## A308806.P17417825971856878409

`A121701(A274200(n+1))`
-/

namespace A308806.P17417825971856878409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121701 (A274200 (n + 1)).toNat

end

end A308806.P17417825971856878409

/-!
# A308807: a(n) = 4*5^(n-1) + n.

The programs for A308807, the canonical program `A308807.P224880946425158223` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308807 has offset 1).

The definition of A308807 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*5^n+n+1` (program `A308807.P224880946425158223`, by `A308807.P224880946425158223.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A308807.P224880946425158223

`4*5^n+n+1`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A308807

/-- `4*5^n+n+1` -/
def P224880946425158223.Spec : Prop :=
  ∀ n, (P224880946425158223.a n : ℤ) = A308807 (n + 1)

theorem P224880946425158223.correct : P224880946425158223.Spec := by
  intro n
  simp only [A308807, Nat.add_sub_cancel]

end A308807

/-! ## A308807.P11959318237943701660

`ogf((5-13x+4x^2)/(1-7x+11x^2-5x^3))`
-/

namespace A308807.P11959318237943701660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -13, 4] [1, -7, 11, -5] n

end

end A308807.P11959318237943701660

namespace A308807

/-- `ogf((5-13x+4x^2)/(1-7x+11x^2-5x^3))` -/
def P11959318237943701660.Spec : Prop :=
  ∀ n, P11959318237943701660.a n = A308807 (n + 1)

end A308807

/-! ## A308807.P14087211681653377676

`∑[xor(4, 5*a(n-1))]` with `a(0)=5, a(1)=17`
-/

namespace A308807.P14087211681653377676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 17] fun n f1 =>
  Nat.xor 4 (5 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308807.P14087211681653377676

namespace A308807

/-- `∑[xor(4, 5*a(n-1))]` -/
def P14087211681653377676.Spec : Prop :=
  ∀ n, (P14087211681653377676.a n : ℤ) = A308807 (n + 1)

end A308807

/-! ## A308807.P17688888158903254768

`floor(5*(a(n-1)-n)+n+1)` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A308807.P17688888158903254768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  5 * (a (n - 1) - (n : ℤ)) + (n + 1 : ℤ)

end

end A308807.P17688888158903254768

namespace A308807

/-- `floor(5*(a(n-1)-n)+n+1)` -/
def P17688888158903254768.Spec : Prop :=
  ∀ n, P17688888158903254768.a n = A308807 (n + 1)

theorem P17688888158903254768.correct : P17688888158903254768.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A308807, Nat.add_sub_cancel, A308807.P17688888158903254768.a, A308807.P224880946425158223.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A308807, Nat.add_sub_cancel, A308807.P17688888158903254768.a, A308807.P224880946425158223.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A308807

/-! ## A308807.P6985254883018606843

`5*((n+1)/5+a(n-1)-n)` with `a(0)=5`
-/

namespace A308807.P6985254883018606843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  5 * ((n + 1 : ℚ) / 5 + (a (n - 1) - (n : ℚ)))

end

end A308807.P6985254883018606843

namespace A308807

/-- `5*((n+1)/5+a(n-1)-n)` -/
def P6985254883018606843.Spec : Prop :=
  ∀ n, P6985254883018606843.a n = (A308807 (n + 1) : ℚ)

theorem P6985254883018606843.correct : P6985254883018606843.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A308807, Nat.add_sub_cancel, A308807.P6985254883018606843.a, A308807.P224880946425158223.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A308807, Nat.add_sub_cancel, A308807.P6985254883018606843.a, A308807.P224880946425158223.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A308807

/-! ## A308807.P4291482135659419475

`Δ[A000351(n)+A000217(n)]`
-/

namespace A308807.P4291482135659419475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n + A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A308807.P4291482135659419475

namespace A308807

/-- `Δ[A000351(n)+A000217(n)]` -/
def P4291482135659419475.Spec : Prop :=
  ∀ n, P4291482135659419475.a n = A308807 (n + 1)

theorem P4291482135659419475.correct : P4291482135659419475.Spec := by
  intro n
  simp only [A308807, Nat.add_sub_cancel, A308807.P4291482135659419475.f1, A308807.P4291482135659419475.a, A308807.P224880946425158223.a, A000217, A000217.P10269402890581615239.a, A000351, A000351.P3157381177678935815.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A308807

/-! ## A308807.P9565047412858095545

`Δ[A034474(n)+A000217(n)]`
-/

namespace A308807.P9565047412858095545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034474 n + A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A308807.P9565047412858095545

namespace A308807

/-- `Δ[A034474(n)+A000217(n)]` -/
def P9565047412858095545.Spec : Prop :=
  ∀ n, P9565047412858095545.a n = A308807 (n + 1)

theorem P9565047412858095545.correct : P9565047412858095545.Spec := by
  intro n
  simp only [A308807, Nat.add_sub_cancel, A308807.P9565047412858095545.f1, A308807.P9565047412858095545.a, A308807.P224880946425158223.a, A000217, A000217.P10269402890581615239.a, A034474, A034474.P1568972853745923564.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A308807

/-!
# A308808: Limiting row sequence of Pascal-like triangle A141021 (with index of asymmetry s = 4).

The programs for A308808, the canonical program `A308808.P13425229210263138047` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308808 has offset 0).

The definition of A308808 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308808.P13425229210263138047

`ogf((1+x+x^2+x^3)/(1-x-x^2-x^3-2x^4-x^5))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A308808

/-- `ogf((1+x+x^2+x^3)/(1-x-x^2-x^3-2x^4-x^5))` -/
def P13425229210263138047.Spec : Prop :=
  ∀ n, P13425229210263138047.a n = A308808 n

theorem P13425229210263138047.correct : P13425229210263138047.Spec := by
  intro n
  simp only [A308808]

end A308808

/-! ## A308808.P4710440084126807779

`A121830(A250120(a(n-1))+1)` with `a(0)=1`
-/

namespace A308808.P4710440084126807779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A121830 (A250120 (a (n - 1)).toNat + 1).toNat

end

end A308808.P4710440084126807779

namespace A308808

/-- `A121830(A250120(a(n-1))+1)` -/
def P4710440084126807779.Spec : Prop :=
  ∀ n, P4710440084126807779.a n = A308808 n

end A308808

/-! ## A308808.P887777573548943940

`A135663(A213058(n))+A000079(n)`
-/

namespace A308808.P887777573548943940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135663 (A213058 n).toNat + A000079 n

end

end A308808.P887777573548943940

namespace A308808

/-- `A135663(A213058(n))+A000079(n)` -/
def P887777573548943940.Spec : Prop :=
  ∀ n, P887777573548943940.a n = A308808 n

end A308808

/-! ## A308808.P16008665958258202431

`A141021(∑[n+3])`
-/

namespace A308808.P16008665958258202431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141021 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308808.P16008665958258202431

namespace A308808

/-- `A141021(∑[n+3])` -/
def P16008665958258202431.Spec : Prop :=
  ∀ n, P16008665958258202431.a n = A308808 n

end A308808

/-! ## A308808.P9771774001780029

`A141020(∑[n+3]+6)`
-/

namespace A308808.P9771774001780029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141020 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A308808.P9771774001780029

namespace A308808

/-- `A141020(∑[n+3]+6)` -/
def P9771774001780029.Spec : Prop :=
  ∀ n, P9771774001780029.a n = A308808 n

end A308808

/-!
# A308809: Sum of all the parts in the partitions of n into 4 primes.

The programs for A308809, there is no canonical definition to state claims against.
-/

/-! ## A308809.P8097237126616946882

`n*A259194(n)`
-/

namespace A308809.P8097237126616946882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A259194 n

end

end A308809.P8097237126616946882

/-! ## A308809.P6023225717651008461

`A308771(n)+A308772(n)+A308773(n)+A308774(n)`
-/

namespace A308809.P6023225717651008461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308771 n + A308772 n + A308773 n + A308774 n

end

end A308809.P6023225717651008461

/-! ## A308809.P9096639412254176791

`n*(A347578(n)-A071335(abs(1-n)+1))`
-/

namespace A308809.P9096639412254176791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A347578 n - A071335 (|1 - (n : ℤ)| + 1).toNat)

end

end A308809.P9096639412254176791

/-! ## A308809.P8122382648241357979

`log2(A000079(n)^A259194(n))`
-/

namespace A308809.P8122382648241357979
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A000079 n : ℚ) ^ (A259194 n : ℤ) : ℝ)

end

end A308809.P8122382648241357979

/-! ## A308809.P4776514283051636772

`log2(Δ[A000051(n)]^A259194(n))`
-/

namespace A308809.P4776514283051636772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((f1 (n + 1) - f1 n : ℚ) ^ (A259194 n : ℤ) : ℝ)

end

end A308809.P4776514283051636772

/-!
# A308811: Numbers k such that the binary plot of the list of divisors of k has reflection symmetry.

The programs for A308811, there is no canonical definition to state claims against.
-/

/-! ## A308811.P5995107286292717037

`∩[A003401(n+1), A272919(n+1)]`
-/

namespace A308811.P5995107286292717037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308811.P5995107286292717037

/-! ## A308811.P1100940838822641891

`∩[A223539(n+1), A272919(n+1)]`
-/

namespace A308811.P1100940838822641891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308811.P1100940838822641891

/-! ## A308811.P5304018232443179339

`∩[A272919(n+1), A332520(n+1)]`
-/

namespace A308811.P5304018232443179339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308811.P5304018232443179339

/-! ## A308811.P8717979135959599492

`∩[A003401(n+1), A209064(n+1)]`
-/

namespace A308811.P8717979135959599492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308811.P8717979135959599492

/-! ## A308811.P4749828255996704408

`∩[A209064(n+1), A223539(n+1)]`
-/

namespace A308811.P4749828255996704408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308811.P4749828255996704408

/-!
# A308812: a(n) = Sum_{k=1..n} binomial(n,k) * floor(n/k).

The programs for A308812, the canonical program `A308812.P12557558597781824820` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308812 has offset 1).

The definition of A308812 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n+1, #+1)*floor((n+1)/(#+1))]` (program `A308812.P12557558597781824820`, by `A308812.P12557558597781824820.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A308812.P12557558597781824820

`∑{#}[n, C(n+1, #+1)*floor((n+1)/(#+1))]`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A308812

/-- `∑{#}[n, C(n+1, #+1)*floor((n+1)/(#+1))]` -/
def P12557558597781824820.Spec : Prop :=
  ∀ n, P12557558597781824820.a n = A308812 (n + 1)

theorem P12557558597781824820.correct : P12557558597781824820.Spec := by
  intro n
  simp only [A308812, Nat.add_sub_cancel]

end A308812

/-! ## A308812.P11241239505547920770

`A342144(A006951(n+1))`
-/

namespace A308812.P11241239505547920770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342144 (A006951 (n + 1)).toNat

end

end A308812.P11241239505547920770

namespace A308812

/-- `A342144(A006951(n+1))` -/
def P11241239505547920770.Spec : Prop :=
  ∀ n, P11241239505547920770.a n = A308812 (n + 1)

end A308812

/-!
# A308813: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals downwards, where A(n,k) is Sum_{d|n} k^(d-1).

The programs for A308813, the canonical program `A308813.P9690503853493089291` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308813 has offset 1).

The definition of A308813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4823 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308813.P9690503853493089291

`∑{d}[A002260(n+1), A025581(n)^(#-1)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A308813

/-- `∑{d}[A002260(n+1), A025581(n)^(#-1)]` -/
def P9690503853493089291.Spec : Prop :=
  ∀ n, P9690503853493089291.a n = (A308813 (n + 1) : ℚ)

end A308813

/-! ## A308813.P2287843444683289386

`∑{d}[A057555(2*n+1), A025581(n)^(#-1)]`
-/

namespace A308813.P2287843444683289386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A025581 n : ℚ) ^ ((d : ℤ) - 1 : ℤ)

end

end A308813.P2287843444683289386

namespace A308813

/-- `∑{d}[A057555(2*n+1), A025581(n)^(#-1)]` -/
def P2287843444683289386.Spec : Prop :=
  ∀ n, P2287843444683289386.a n = (A308813 (n + 1) : ℚ)

end A308813

/-! ## A308813.P5270139371010562018

`A000005((1-C(∑[char[∑[n]]], 2)+n)^A213276(n))`
-/

namespace A308813.P5270139371010562018
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ) : ℚ) ^ (A213276 n : ℤ))).toNat

end

end A308813.P5270139371010562018

namespace A308813

/-- `A000005((1-C(∑[char[∑[n]]], 2)+n)^A213276(n))` -/
def P5270139371010562018.Spec : Prop :=
  ∀ n, P5270139371010562018.a n = A308813 (n + 1)

end A308813

/-! ## A308813.P8703065602451591846

`A000005(A128227(n)^A118340(n))`
-/

namespace A308813.P8703065602451591846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A128227 n : ℚ) ^ (A118340 n : ℤ))).toNat

end

end A308813.P8703065602451591846

namespace A308813

/-- `A000005(A128227(n)^A118340(n))` -/
def P8703065602451591846.Spec : Prop :=
  ∀ n, P8703065602451591846.a n = A308813 (n + 1)

end A308813

/-! ## A308813.P2616467587140557366

`A000005(A193738(n)^A118340(n))`
-/

namespace A308813.P2616467587140557366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A193738 n : ℚ) ^ (A118340 n : ℤ))).toNat

end

end A308813.P2616467587140557366

namespace A308813

/-- `A000005(A193738(n)^A118340(n))` -/
def P2616467587140557366.Spec : Prop :=
  ∀ n, P2616467587140557366.a n = A308813 (n + 1)

end A308813

/-!
# A308814: a(n) = Sum_{d|n} n^(d-1).

The programs for A308814, the canonical program `A308814.P14496927449185722703` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308814 has offset 1).

The definition of A308814 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308814.P14496927449185722703

`∑{d}[n+1, (n+1)^(#-1)]`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A308814

/-- `∑{d}[n+1, (n+1)^(#-1)]` -/
def P14496927449185722703.Spec : Prop :=
  ∀ n, P14496927449185722703.a n = (A308814 (n + 1) : ℚ)

end A308814

/-! ## A308814.P6594967972196642833

`A066108(n+1)/(n+1)`
-/

namespace A308814.P6594967972196642833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066108 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A308814.P6594967972196642833

namespace A308814

/-- `A066108(n+1)/(n+1)` -/
def P6594967972196642833.Spec : Prop :=
  ∀ n, P6594967972196642833.a n = (A308814 (n + 1) : ℚ)

end A308814

/-! ## A308814.P7472298949478545978

`record[∑{d}[n-1, (n-1)^(#-1)]]`
-/

namespace A308814.P7472298949478545978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, ((n : ℤ) - 1 : ℚ) ^ ((d : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308814.P7472298949478545978

namespace A308814

/-- `record[∑{d}[n-1, (n-1)^(#-1)]]` -/
def P7472298949478545978.Spec : Prop :=
  ∀ n, P7472298949478545978.a n = (A308814 (n + 1) : ℚ)

end A308814

/-! ## A308814.P7641033122353504228

`∑{d}[n+1, (n+1)^#]/(n+1)`
-/

namespace A308814.P7641033122353504228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (n + 1) ^ d : ℕ) : ℚ) / (n + 1 : ℚ)

end

end A308814.P7641033122353504228

namespace A308814

/-- `∑{d}[n+1, (n+1)^#]/(n+1)` -/
def P7641033122353504228.Spec : Prop :=
  ∀ n, P7641033122353504228.a n = (A308814 (n + 1) : ℚ)

end A308814

/-! ## A308814.P17293450250379610594

`A308813(2*(n+1)²)`
-/

namespace A308814.P17293450250379610594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308813 (2 * (n + 1) ^ 2)

end

end A308814.P17293450250379610594

namespace A308814

/-- `A308813(2*(n+1)²)` -/
def P17293450250379610594.Spec : Prop :=
  ∀ n, P17293450250379610594.a n = A308814 (n + 1)

end A308814

/-!
# A308815: a(n) = 16^n*Sum_{i=0..n} 2^i*binomial(n, i)*Catalan(2*n-i).

The programs for A308815, there is no canonical definition to state claims against.
-/

/-! ## A308815.P6159249942884620871

`and(A000578(A214689(n)), A147232(3*(n+1)))`
-/

namespace A308815.P6159249942884620871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000578 (A214689 n).toNat) (A147232 (3 * (n + 1)))

end

end A308815.P6159249942884620871

/-!
# A308816: Primes r such that there exist primes p, q with p^2 - 2*q^2 = r.

The programs for A308816, there is no canonical definition to state claims against.
-/

/-! ## A308816.P2038417330395392954

`A038873(lt[n, A004159(n)])`
-/

namespace A308816.P2038417330395392954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A308816.P2038417330395392954

/-! ## A308816.P8523214265675379155

`A270951(lt[n, A004159(n)])`
-/

namespace A308816.P8523214265675379155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270951 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A308816.P8523214265675379155

/-! ## A308816.P16280054745308662560

`A038873(lt[A151749(n), A086719(n+1)])`
-/

namespace A308816.P16280054745308662560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151749 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A308816.P16280054745308662560

/-! ## A308816.P2962160793439197932

`∩[A370267(n+1), A372629(n+1)]`
-/

namespace A308816.P2962160793439197932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308816.P2962160793439197932

/-!
# A308817: Total number of parts in all m-color dihedral compositions of n (that is, the total number of parts in all dihedral compositions of n where a part of size m may be colored with one of m colors).

The programs for A308817, the canonical program `A308817.P13498535492091848280` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308817 has offset 1).

The definition of A308817 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308817.P13498535492091848280

`(A307415(n+1)+A308723(n+1))/2`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A308817

/-- `(A307415(n+1)+A308723(n+1))/2` -/
def P13498535492091848280.Spec : Prop :=
  ∀ n, P13498535492091848280.a n = (A308817 (n + 1) : ℚ)

end A308817

/-! ## A308817.P15372779719781850010

`A004525(A308723(n+1)+A307415(n+1))`
-/

namespace A308817.P15372779719781850010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A308723 (n + 1) + A307415 (n + 1)).toNat

end

end A308817.P15372779719781850010

namespace A308817

/-- `A004525(A308723(n+1)+A307415(n+1))` -/
def P15372779719781850010.Spec : Prop :=
  ∀ n, P15372779719781850010.a n = A308817 (n + 1)

end A308817

/-! ## A308817.P13975143268342496478

`A004526(A308723(n+1)+A307415(n+1))`
-/

namespace A308817.P13975143268342496478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A308723 (n + 1) + A307415 (n + 1)).toNat

end

end A308817.P13975143268342496478

namespace A308817

/-- `A004526(A308723(n+1)+A307415(n+1))` -/
def P13975143268342496478.Spec : Prop :=
  ∀ n, P13975143268342496478.a n = A308817 (n + 1)

end A308817

/-! ## A308817.P7119121644503284284

`A026741(A308723(n+1)+A307415(n+1))`
-/

namespace A308817.P7119121644503284284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A308723 (n + 1) + A307415 (n + 1)).toNat

end

end A308817.P7119121644503284284

namespace A308817

/-- `A026741(A308723(n+1)+A307415(n+1))` -/
def P7119121644503284284.Spec : Prop :=
  ∀ n, P7119121644503284284.a n = A308817 (n + 1)

end A308817

/-! ## A308817.P1639566836683535332

`A110654(A308723(n+1)+A307415(n+1))`
-/

namespace A308817.P1639566836683535332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A308723 (n + 1) + A307415 (n + 1)).toNat

end

end A308817.P1639566836683535332

namespace A308817

/-- `A110654(A308723(n+1)+A307415(n+1))` -/
def P1639566836683535332.Spec : Prop :=
  ∀ n, P1639566836683535332.a n = A308817 (n + 1)

end A308817

/-!
# A308818: a(n) = a(a(n-1) mod n) + a(a(n-2) mod n) with a(0)=2 and a(1)=3.

The programs for A308818, the canonical program `A308818.P4609532900465954727` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308818 has offset 0).

The definition of A308818 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-1)%n)+a(a(n-2)%n)` (program `A308818.P4609532900465954727`, by `A308818.P4609532900465954727.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A308818.P4609532900465954727

`a(a(n-1)%n)+a(a(n-2)%n)` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A308818

/-- `a(a(n-1)%n)+a(a(n-2)%n)` -/
def P4609532900465954727.Spec : Prop :=
  ∀ n, (P4609532900465954727.a n : ℤ) = A308818 n

theorem P4609532900465954727.correct : P4609532900465954727.Spec := by
  intro n
  simp only [A308818]

end A308818

/-!
# A308819: Product of prime powers <= n.

The programs for A308819, the canonical program `A308819.P18189255110465373061` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308819 has offset 0).

The definition of A308819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308819.P18189255110465373061

`a(n-1)*A100994(n)` with `a(0)=1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A308819

/-- `a(n-1)*A100994(n)` -/
def P18189255110465373061.Spec : Prop :=
  ∀ n, P18189255110465373061.a n = A308819 n

theorem P18189255110465373061.correct : P18189255110465373061.Spec := by
  intro n
  simp only [A308819]

end A308819

/-! ## A308819.P9875247305280394108

`lcm(a(n-1), A183091(n))` with `a(0)=1`
-/

namespace A308819.P9875247305280394108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A183091 n)

end

end A308819.P9875247305280394108

namespace A308819

/-- `lcm(a(n-1), A183091(n))` -/
def P9875247305280394108.Spec : Prop :=
  ∀ n, (P9875247305280394108.a n : ℤ) = A308819 n

end A308819

/-! ## A308819.P4385264800714298084

`∏[A100994(round(sqrt(n²+1)))]`
-/

namespace A308819.P4385264800714298084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A308819.P4385264800714298084

namespace A308819

/-- `∏[A100994(round(sqrt(n²+1)))]` -/
def P4385264800714298084.Spec : Prop :=
  ∀ n, P4385264800714298084.a n = A308819 n

end A308819

/-! ## A308819.P7452913398066054471

`A024923(A065515(n+1))/A100994(n+1)`
-/

namespace A308819.P7452913398066054471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024923 (A065515 (n + 1)).toNat : ℚ) / (A100994 (n + 1) : ℚ)

end

end A308819.P7452913398066054471

namespace A308819

/-- `A024923(A065515(n+1))/A100994(n+1)` -/
def P7452913398066054471.Spec : Prop :=
  ∀ n, P7452913398066054471.a n = (A308819 n : ℚ)

end A308819

/-! ## A308819.P3547789003884735849

`A183091(A003418(n))`
-/

namespace A308819.P3547789003884735849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183091 (A003418 n).toNat

end

end A308819.P3547789003884735849

namespace A308819

/-- `A183091(A003418(n))` -/
def P3547789003884735849.Spec : Prop :=
  ∀ n, P3547789003884735849.a n = A308819 n

end A308819

/-!
# A308820: a(n) = Product_{k=1..n} ceiling(n/k)!.

The programs for A308820, there is no canonical definition to state claims against.
-/

/-! ## A308820.P16429755123249122532

`∏[∏{d}[n, #+1]]`
-/

namespace A308820.P16429755123249122532
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), (d + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A308820.P16429755123249122532

/-! ## A308820.P16135613169427698272

`a(n-1)*∏{d}[n, #+1]` with `a(0)=1`
-/

namespace A308820.P16135613169427698272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∏ d ∈ Nat.divisors (f1 n), (d + 1))

end

end A308820.P16135613169427698272

/-! ## A308820.P348089637233333016

`a(n-1)*A020696(n)` with `a(0)=1`
-/

namespace A308820.P348089637233333016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A020696 n

end

end A308820.P348089637233333016

/-! ## A308820.P3296626726782614262

`(A229337(n)+1)*a(n-1)` with `a(0)=1`
-/

namespace A308820.P3296626726782614262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A229337 n + 1) * a (n - 1)

end

end A308820.P3296626726782614262

/-! ## A308820.P8269488990659544942

`∏[2^∑{d}[n+1, log2(#+1)]]/A020696(n+1)`
-/

namespace A308820.P8269488990659544942
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ d ∈ Nat.divisors (f2 n), Real.logb 2 (d + 1 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / (A020696 (n + 1) : ℝ)

end

end A308820.P8269488990659544942

/-!
# A308822: Sum of all the parts in the partitions of n into 5 parts.

The programs for A308822, the canonical program `A308822.P1849006694607648440` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308822 has offset 0).

The definition of A308822 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308822.P1849006694607648440

`n*A026811(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A308822

/-- `n*A026811(n)` -/
def P1849006694607648440.Spec : Prop :=
  ∀ n, P1849006694607648440.a n = A308822 n

theorem P1849006694607648440.correct : P1849006694607648440.Spec := by
  intro n
  simp only [A308822]

end A308822

/-! ## A308822.P2270669617275790070

`A308823(n)+A308824(n)+A308825(n)+A308826(n)+A308827(n)`
-/

namespace A308822.P2270669617275790070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308823 n + A308824 n + A308825 n + A308826 n + A308827 n

end

end A308822.P2270669617275790070

namespace A308822

/-- `A308823(n)+A308824(n)+A308825(n)+A308826(n)+A308827(n)` -/
def P2270669617275790070.Spec : Prop :=
  ∀ n, P2270669617275790070.a n = A308822 n

end A308822

/-! ## A308822.P14830368490558352443

`n*(A309881(n)+A309879(n))`
-/

namespace A308822.P14830368490558352443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A309881 n + A309879 n)

end

end A308822.P14830368490558352443

namespace A308822

/-- `n*(A309881(n)+A309879(n))` -/
def P14830368490558352443.Spec : Prop :=
  ∀ n, P14830368490558352443.a n = A308822 n

end A308822

/-! ## A308822.P16282741826700537736

`n*(A001401(n)-A001400(n))`
-/

namespace A308822.P16282741826700537736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A001401 n - A001400 n)

end

end A308822.P16282741826700537736

namespace A308822

/-- `n*(A001401(n)-A001400(n))` -/
def P16282741826700537736.Spec : Prop :=
  ∀ n, P16282741826700537736.a n = A308822 n

theorem P16282741826700537736.correct : P16282741826700537736.Spec := by
  intro n
  simp only [A308822, Nat.add_sub_cancel, A308822.P16282741826700537736.a, A308822.P1849006694607648440.a, A001400, A001400.P17105359062635275807.a, A001401, A001401.P12728375563230237513.a, A026811, A026811.P12539011211167538920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A308822

/-! ## A308822.P10556656596918955115

`n*(A008667(n)-A060024(n))`
-/

namespace A308822.P10556656596918955115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A008667 n - A060024 n)

end

end A308822.P10556656596918955115

namespace A308822

/-- `n*(A008667(n)-A060024(n))` -/
def P10556656596918955115.Spec : Prop :=
  ∀ n, P10556656596918955115.a n = A308822 n

end A308822

/-! ## A308822.P1447799797675376346

`n*(∑[A008667(n)]-A001400(n))`
-/

namespace A308822.P1447799797675376346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - A001400 n)

end

end A308822.P1447799797675376346

namespace A308822

/-- `n*(∑[A008667(n)]-A001400(n))` -/
def P1447799797675376346.Spec : Prop :=
  ∀ n, P1447799797675376346.a n = A308822 n

end A308822

/-! ## A308822.P7687221774049166190

`n*∑[A008667(n)-A266755(n)]`
-/

namespace A308822.P7687221774049166190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 n - A266755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308822.P7687221774049166190

namespace A308822

/-- `n*∑[A008667(n)-A266755(n)]` -/
def P7687221774049166190.Spec : Prop :=
  ∀ n, P7687221774049166190.a n = A308822 n

end A308822

/-! ## A308822.P442806376080579413

`n*A288166(4*n)`
-/

namespace A308822.P442806376080579413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A288166 (4 * n)

end

end A308822.P442806376080579413

namespace A308822

/-- `n*A288166(4*n)` -/
def P442806376080579413.Spec : Prop :=
  ∀ n, P442806376080579413.a n = A308822 n

end A308822

/-! ## A308822.P966860999445483468

`A309547(n)+A309545(n)`
-/

namespace A308822.P966860999445483468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309547 n + A309545 n

end

end A308822.P966860999445483468

namespace A308822

/-- `A309547(n)+A309545(n)` -/
def P966860999445483468.Spec : Prop :=
  ∀ n, P966860999445483468.a n = A308822 n

end A308822

/-!
# A308823: Sum of the smallest parts of the partitions of n into 5 parts.

The programs for A308823, the canonical program `A308823.P16392065111458030728` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308823 has offset 0).

The definition of A308823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308823.P6862469824281100442

`A308822(n)-A308824(n)-A308825(n)-A308826(n)-A308827(n)`
-/

namespace A308823.P6862469824281100442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308822 n - A308824 n - A308825 n - A308826 n - A308827 n

end

end A308823.P6862469824281100442

namespace A308823

/-- `A308822(n)-A308824(n)-A308825(n)-A308826(n)-A308827(n)` -/
def P6862469824281100442.Spec : Prop :=
  ∀ n, P6862469824281100442.a n = A308823 n

end A308823

/-! ## A308823.P16392065111458030728

`ogf(x^5/(1-x-x^2+2x^6+2x^7-x^8-x^9-2x^10-x^11-x^12+2x^13+2x^14-x^18-x^19+x^20))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A308823

/-- `ogf(x^5/(1-x-x^2+2x^6+2x^7-x^8-x^9-2x^10-x^11-x^12+2x^13+2x^14-x^18-x^19+x^20))` -/
def P16392065111458030728.Spec : Prop :=
  ∀ n, P16392065111458030728.a n = A308823 n

theorem P16392065111458030728.correct : P16392065111458030728.Spec := by
  intro n
  simp only [A308823]

end A308823

/-! ## A308823.P13953275756618457676

`A309834(n)+A309830(n)`
-/

namespace A308823.P13953275756618457676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309834 n + A309830 n

end

end A308823.P13953275756618457676

namespace A308823

/-- `A309834(n)+A309830(n)` -/
def P13953275756618457676.Spec : Prop :=
  ∀ n, P13953275756618457676.a n = A308823 n

end A308823

/-! ## A308823.P7506738550324091443

`A363047(n)%A000765(n)`
-/

namespace A308823.P7506738550324091443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363047 n) (A000765 n)

end

end A308823.P7506738550324091443

namespace A308823

/-- `A363047(n)%A000765(n)` -/
def P7506738550324091443.Spec : Prop :=
  ∀ n, P7506738550324091443.a n = A308823 n

end A308823

/-! ## A308823.P3663202880434140

`A363047(n)+A010815(A209981(n))`
-/

namespace A308823.P3663202880434140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363047 n + A010815 (A209981 n).toNat

end

end A308823.P3663202880434140

namespace A308823

/-- `A363047(n)+A010815(A209981(n))` -/
def P3663202880434140.Spec : Prop :=
  ∀ n, P3663202880434140.a n = A308823 n

end A308823

/-!
# A308824: Sum of the fourth largest parts in the partitions of n into 5 parts.

The programs for A308824, there is no canonical definition to state claims against.
-/

/-! ## A308824.P12500409237436922236

`A308822(n)-A308823(n)-A308825(n)-A308826(n)-A308827(n)`
-/

namespace A308824.P12500409237436922236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308822 n - A308823 n - A308825 n - A308826 n - A308827 n

end

end A308824.P12500409237436922236

/-! ## A308824.P12295797975465646401

`A309882(n)+A309880(n)`
-/

namespace A308824.P12295797975465646401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309882 n + A309880 n

end

end A308824.P12295797975465646401

/-! ## A308824.P10656901287103942364

`A309880(n)-(A063524(3*n)-A309882(n))`
-/

namespace A308824.P10656901287103942364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309880 n - (A063524 (3 * n) - A309882 n)

end

end A308824.P10656901287103942364

/-! ## A308824.P9233406516626134976

`A309880(n)+A156726(A212367(n+1))`
-/

namespace A308824.P9233406516626134976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309880 n + A156726 (A212367 (n + 1)).toNat

end

end A308824.P9233406516626134976

/-! ## A308824.P9704517840852917870

`A309880(n)+A156726(∑[A322803(n)]-n)`
-/

namespace A308824.P9704517840852917870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309880 n + A156726 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A308824.P9704517840852917870

/-!
# A308825: Sum of the third largest parts of the partitions of n into 5 parts.

The programs for A308825, there is no canonical definition to state claims against.
-/

/-! ## A308825.P7746938863440542382

`A308822(n)-A308823(n)-A308824(n)-A308826(n)-A308827(n)`
-/

namespace A308825.P7746938863440542382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308822 n - A308823 n - A308824 n - A308826 n - A308827 n

end

end A308825.P7746938863440542382

/-! ## A308825.P699512925051978753

`A347698(A047967(n+2))-A347698(n+1)`
-/

namespace A308825.P699512925051978753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347698 (A047967 (n + 2)).toNat - A347698 (n + 1)

end

end A308825.P699512925051978753

/-!
# A308826: Sum of the second largest parts in the partitions of n into 5 parts.

The programs for A308826, there is no canonical definition to state claims against.
-/

/-! ## A308826.P1342743574728003903

`A308822(n)-A308823(n)-A308824(n)-A308825(n)-A308827(n)`
-/

namespace A308826.P1342743574728003903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308822 n - A308823 n - A308824 n - A308825 n - A308827 n

end

end A308826.P1342743574728003903

/-!
# A308827: Sum of the largest parts of the partitions of n into 5 parts.

The programs for A308827, there is no canonical definition to state claims against.
-/

/-! ## A308827.P16331708683014498508

`A308822(n)-A308823(n)-A308824(n)-A308825(n)-A308826(n)`
-/

namespace A308827.P16331708683014498508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308822 n - A308823 n - A308824 n - A308825 n - A308826 n

end

end A308827.P16331708683014498508

/-! ## A308827.P7276493742275156051

`A393517(A250266(n))`
-/

namespace A308827.P7276493742275156051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393517 (A250266 n).toNat

end

end A308827.P7276493742275156051

/-! ## A308827.P15619639226954660430

`A248333(or(1, A143472(2*(n+2))))`
-/

namespace A308827.P15619639226954660430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248333 (Int.lor 1 (A143472 (2 * (n + 2)))).toNat

end

end A308827.P15619639226954660430

/-! ## A308827.P6459170607726424485

`A308998(n+3)-A365167(A142465(n))`
-/

namespace A308827.P6459170607726424485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308998 (n + 3) - A365167 (A142465 n).toNat

end

end A308827.P6459170607726424485

/-! ## A308827.P4215742476482553636

`A326626(2*n+1)+A004216(A077741(n+1))`
-/

namespace A308827.P4215742476482553636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326626 (2 * n + 1) + A004216 (A077741 (n + 1)).toNat

end

end A308827.P4215742476482553636

/-!
# A308828: Number of sequences that include all residues modulo n starting with x_0 = 0 and then x_i given recursively by x_{i+1} = a * x_i + c (mod n) where a and c are integers in the interval [0..n-1].

The programs for A308828, the canonical program `A308828.P10471701249719507011` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308828 has offset 1).

The definition of A308828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308828.P10471701249719507011

`(n+1)*∏{p}[n+1, #-1/#]/∏{p}[n+1, #+1]*A026741((n+1)/∏{p}[n+1, #])`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A308828

/-- `(n+1)*∏{p}[n+1, #-1/#]/∏{p}[n+1, #+1]*A026741((n+1)/∏{p}[n+1, #])` -/
def P10471701249719507011.Spec : Prop :=
  ∀ n, P10471701249719507011.a n = (A308828 (n + 1) : ℚ)

end A308828

/-! ## A308828.P3429903827858430395

`A000010(A102631(n+1)/gcd(2, n+1))`
-/

namespace A308828.P3429903827858430395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A102631 (n + 1) : ℚ) / (Nat.gcd 2 (n + 1) : ℚ))).toNat

end

end A308828.P3429903827858430395

namespace A308828

/-- `A000010(A102631(n+1)/gcd(2, n+1))` -/
def P3429903827858430395.Spec : Prop :=
  ∀ n, P3429903827858430395.a n = A308828 (n + 1)

end A308828

/-! ## A308828.P6252416402562038361

`A000010(2*A102631(A026741(n+1)))`
-/

namespace A308828.P6252416402562038361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * A102631 (A026741 (n + 1)).toNat).toNat

end

end A308828.P6252416402562038361

namespace A308828

/-- `A000010(2*A102631(A026741(n+1)))` -/
def P6252416402562038361.Spec : Prop :=
  ∀ n, P6252416402562038361.a n = A308828 (n + 1)

end A308828

/-! ## A308828.P13767463675438076938

`A000010((n+1)*A026741(A003557(n+1)))`
-/

namespace A308828.P13767463675438076938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 1 : ℤ) * A026741 (A003557 (n + 1)).toNat).toNat

end

end A308828.P13767463675438076938

namespace A308828

/-- `A000010((n+1)*A026741(A003557(n+1)))` -/
def P13767463675438076938.Spec : Prop :=
  ∀ n, P13767463675438076938.a n = A308828 (n + 1)

end A308828

/-! ## A308828.P11691881390568330046

`A000010(A102631(n+1)/A053589(3*n+1))`
-/

namespace A308828.P11691881390568330046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A102631 (n + 1) : ℚ) / (A053589 (3 * n + 1) : ℚ))).toNat

end

end A308828.P11691881390568330046

namespace A308828

/-- `A000010(A102631(n+1)/A053589(3*n+1))` -/
def P11691881390568330046.Spec : Prop :=
  ∀ n, P11691881390568330046.a n = A308828 (n + 1)

end A308828

/-! ## A308828.P18141601840400947205

`A300717(A251091(n+1))`
-/

namespace A308828.P18141601840400947205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300717 (A251091 (n + 1)).toNat

end

end A308828.P18141601840400947205

namespace A308828

/-- `A300717(A251091(n+1))` -/
def P18141601840400947205.Spec : Prop :=
  ∀ n, P18141601840400947205.a n = A308828 (n + 1)

end A308828

/-! ## A308828.P4123632851333966594

`A000010(A026741(A102631(n+1)))`
-/

namespace A308828.P4123632851333966594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A026741 (A102631 (n + 1)).toNat).toNat

end

end A308828.P4123632851333966594

namespace A308828

/-- `A000010(A026741(A102631(n+1)))` -/
def P4123632851333966594.Spec : Prop :=
  ∀ n, P4123632851333966594.a n = A308828 (n + 1)

end A308828

/-! ## A308828.P8021555253852658893

`A000010(A354257((n+1)²))`
-/

namespace A308828.P8021555253852658893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A354257 ((n + 1) ^ 2)).toNat

end

end A308828.P8021555253852658893

namespace A308828

/-- `A000010(A354257((n+1)²))` -/
def P8021555253852658893.Spec : Prop :=
  ∀ n, P8021555253852658893.a n = A308828 (n + 1)

end A308828

/-! ## A308828.P9609895571259602152

`A000010(A026741(A003557((n+1)²)))`
-/

namespace A308828.P9609895571259602152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A026741 (A003557 ((n + 1) ^ 2)).toNat).toNat

end

end A308828.P9609895571259602152

namespace A308828

/-- `A000010(A026741(A003557((n+1)²)))` -/
def P9609895571259602152.Spec : Prop :=
  ∀ n, P9609895571259602152.a n = A308828 (n + 1)

end A308828

/-! ## A308828.P7452823360669586320

`A093819((n+1)*(n+1)/∏{p}[n+1, #])`
-/

namespace A308828.P7452823360669586320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093819 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)))).toNat

end

end A308828.P7452823360669586320

namespace A308828

/-- `A093819((n+1)*(n+1)/∏{p}[n+1, #])` -/
def P7452823360669586320.Spec : Prop :=
  ∀ n, P7452823360669586320.a n = A308828 (n + 1)

end A308828

/-!
# A308831: Start with generation 0, which is the empty sequence. For generation N>=1, extend the existing sequence into a non-cyclic ternary de Bruijn sequence of order N. If more than one extension is possible, choose the lexicographically earliest.

The programs for A308831, there is no canonical definition to state claims against.
-/

/-! ## A308831.P6100951147158045486

`A163537(∑[A160427(n+1)²])`
-/

namespace A308831.P6100951147158045486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160427 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163537 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A308831.P6100951147158045486

/-! ## A308831.P8424809604081269890

`A287108(A117414(n)+A005897(n))`
-/

namespace A308831.P8424809604081269890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287108 (A117414 n + A005897 n).toNat

end

end A308831.P8424809604081269890

/-! ## A308831.P9023395870916487249

`A287524(A165260(n+1)+A155176(n+1))`
-/

namespace A308831.P9023395870916487249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287524 (A165260 (n + 1) + A155176 (n + 1)).toNat

end

end A308831.P9023395870916487249

/-! ## A308831.P17581151867374381761

`and(A083920(A018708(n+1)), A091422(n+1))`
-/

namespace A308831.P17581151867374381761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083920 (A018708 (n + 1)).toNat) (A091422 (n + 1))

end

end A308831.P17581151867374381761

/-! ## A308831.P6572967771277691260

`and(A002471(n+1), A097944(A182751(n+1)))`
-/

namespace A308831.P6572967771277691260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002471 (n + 1)) (A097944 (A182751 (n + 1)).toNat)

end

end A308831.P6572967771277691260

/-!
# A308832: Numbers that are palindromic in bases 3, 9 and 27.

The programs for A308832, there is no canonical definition to state claims against.
-/

/-! ## A308832.P9891377692139964926

`∩[A007298(n+1), A259386(n+1)]`
-/

namespace A308832.P9891377692139964926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308832.P9891377692139964926

/-! ## A308832.P9517999291380941582

`∩[A191847(n+1), A259386(n+1)]`
-/

namespace A308832.P9517999291380941582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308832.P9517999291380941582

/-! ## A308832.P13485379497509494217

`∩[A259386(n+1), A397955(n+1)]`
-/

namespace A308832.P13485379497509494217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308832.P13485379497509494217

/-! ## A308832.P15908100708355120371

`∩[A259386(n+1), A397956(n+1)]`
-/

namespace A308832.P15908100708355120371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308832.P15908100708355120371

/-!
# A308833: Numbers r such that the r-th tetrahedral number A000292(r) divides r!.

The programs for A308833, the canonical program `A308833.P17401601876213426740` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308833 has offset 1).

The definition of A308833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308833.P1946121882170943965

`comp[(n+1)*floor(A000010(n+3-and(1, n))/(n+1))]`
-/

namespace A308833.P1946121882170943965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊(A000010 (n + 3 - Nat.land 1 n) : ℚ) / (n + 1 : ℚ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A308833.P1946121882170943965

namespace A308833

/-- `comp[(n+1)*floor(A000010(n+3-and(1, n))/(n+1))]` -/
def P1946121882170943965.Spec : Prop :=
  ∀ n, (P1946121882170943965.a n : ℤ) = A308833 (n + 1)

end A308833

/-! ## A308833.P7433546169989971874

`A171153(n+1)+A057427(n)`
-/

namespace A308833.P7433546169989971874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171153 (n + 1) + A057427 n

end

end A308833.P7433546169989971874

namespace A308833

/-- `A171153(n+1)+A057427(n)` -/
def P7433546169989971874.Spec : Prop :=
  ∀ n, P7433546169989971874.a n = A308833 (n + 1)

end A308833

/-! ## A308833.P7252416338629258635

`A171153(n+1)-A057428(n)`
-/

namespace A308833.P7252416338629258635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171153 (n + 1) - A057428 n

end

end A308833.P7252416338629258635

namespace A308833

/-- `A171153(n+1)-A057428(n)` -/
def P7252416338629258635.Spec : Prop :=
  ∀ n, P7252416338629258635.a n = A308833 (n + 1)

theorem P7252416338629258635.correct : P7252416338629258635.Spec := by
  intro n
  simp only [A308833, Nat.add_sub_cancel, A308833.P7252416338629258635.a, A308833.P17401601876213426740.f1, A308833.P17401601876213426740.f2, A308833.P17401601876213426740.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A057428, A057428.P8574537373872850588.a, A171153, A171153.P4763760712593806838.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A308833

/-! ## A308833.P8217641543594526134

`eq[A096500(n+1), A269668(n+1)]`
-/

namespace A308833.P8217641543594526134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269668 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A308833.P8217641543594526134

namespace A308833

/-- `eq[A096500(n+1), A269668(n+1)]` -/
def P8217641543594526134.Spec : Prop :=
  ∀ n, (P8217641543594526134.a n : ℤ) = A308833 (n + 1)

end A308833

/-! ## A308833.P867010348091375178

`eq[A109578(n+1), A269668(n+1)]`
-/

namespace A308833.P867010348091375178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269668 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A308833.P867010348091375178

namespace A308833

/-- `eq[A109578(n+1), A269668(n+1)]` -/
def P867010348091375178.Spec : Prop :=
  ∀ n, (P867010348091375178.a n : ℤ) = A308833 (n + 1)

end A308833

/-! ## A308833.P258968581060438939

`eq[A269668(n+1), A278500(n+1)]`
-/

namespace A308833.P258968581060438939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278500 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A308833.P258968581060438939

namespace A308833

/-- `eq[A269668(n+1), A278500(n+1)]` -/
def P258968581060438939.Spec : Prop :=
  ∀ n, (P258968581060438939.a n : ℤ) = A308833 (n + 1)

end A308833

/-! ## A308833.P12309048345734222387

`eq[A005171(n+1), A005171(n+2)]`
-/

namespace A308833.P12309048345734222387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A308833.P12309048345734222387

namespace A308833

/-- `eq[A005171(n+1), A005171(n+2)]` -/
def P12309048345734222387.Spec : Prop :=
  ∀ n, (P12309048345734222387.a n : ℤ) = A308833 (n + 1)

end A308833

/-! ## A308833.P17401601876213426740

`eq[A010051(n+1), A010051(n+2)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A308833

/-- `eq[A010051(n+1), A010051(n+2)]` -/
def P17401601876213426740.Spec : Prop :=
  ∀ n, (P17401601876213426740.a n : ℤ) = A308833 (n + 1)

theorem P17401601876213426740.correct : P17401601876213426740.Spec := by
  intro n
  simp only [A308833, Nat.add_sub_cancel]

end A308833

/-! ## A308833.P7831104557833671892

`eq[A029833(n+1), A029833(n+2)]`
-/

namespace A308833.P7831104557833671892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029833 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A308833.P7831104557833671892

namespace A308833

/-- `eq[A029833(n+1), A029833(n+2)]` -/
def P7831104557833671892.Spec : Prop :=
  ∀ n, (P7831104557833671892.a n : ℤ) = A308833 (n + 1)

end A308833

/-! ## A308833.P3902189103840468394

`eq[A292936(n+1), A292936(n+2)]`
-/

namespace A308833.P3902189103840468394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A308833.P3902189103840468394

namespace A308833

/-- `eq[A292936(n+1), A292936(n+2)]` -/
def P3902189103840468394.Spec : Prop :=
  ∀ n, (P3902189103840468394.a n : ℤ) = A308833 (n + 1)

end A308833

/-! ## A308833.P14585251051778173050

`eq[A324642(n+1), A324642(n+2)]`
-/

namespace A308833.P14585251051778173050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324642 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A308833.P14585251051778173050

namespace A308833

/-- `eq[A324642(n+1), A324642(n+2)]` -/
def P14585251051778173050.Spec : Prop :=
  ∀ n, (P14585251051778173050.a n : ℤ) = A308833 (n + 1)

end A308833

/-! ## A308833.P7035887447145396108

`∩[A060462(n+1), A175553(n+1)]`
-/

namespace A308833.P7035887447145396108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308833.P7035887447145396108

namespace A308833

/-- `∩[A060462(n+1), A175553(n+1)]` -/
def P7035887447145396108.Spec : Prop :=
  ∀ n, (P7035887447145396108.a n : ℤ) = A308833 (n + 1)

end A308833

/-! ## A308833.P10063158600079090711

`∩[A166460(n+1), A175553(n+1)]`
-/

namespace A308833.P10063158600079090711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308833.P10063158600079090711

namespace A308833

/-- `∩[A166460(n+1), A175553(n+1)]` -/
def P10063158600079090711.Spec : Prop :=
  ∀ n, (P10063158600079090711.a n : ℤ) = A308833 (n + 1)

end A308833

/-! ## A308833.P16558139034516552888

`A065475(A171153(n+1))`
-/

namespace A308833.P16558139034516552888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A171153 (n + 1)).toNat

end

end A308833.P16558139034516552888

namespace A308833

/-- `A065475(A171153(n+1))` -/
def P16558139034516552888.Spec : Prop :=
  ∀ n, P16558139034516552888.a n = A308833 (n + 1)

end A308833

/-! ## A308833.P17739364228619881170

`lt[A226718(n+1), 1]+1`
-/

namespace A308833.P17739364228619881170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226718 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A308833.P17739364228619881170

namespace A308833

/-- `lt[A226718(n+1), 1]+1` -/
def P17739364228619881170.Spec : Prop :=
  ∀ n, (P17739364228619881170.a n : ℤ) = A308833 (n + 1)

end A308833

/-! ## A308833.P4294616368615189238

`lt[A175624(n+1), 2]+1`
-/

namespace A308833.P4294616368615189238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175624 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A308833.P4294616368615189238

namespace A308833

/-- `lt[A175624(n+1), 2]+1` -/
def P4294616368615189238.Spec : Prop :=
  ∀ n, (P4294616368615189238.a n : ℤ) = A308833 (n + 1)

end A308833

/-! ## A308833.P17987291800737833445

`eq[2, A141044(A289827(n+1))]+1`
-/

namespace A308833.P17987291800737833445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (A289827 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A308833.P17987291800737833445

namespace A308833

/-- `eq[2, A141044(A289827(n+1))]+1` -/
def P17987291800737833445.Spec : Prop :=
  ∀ n, (P17987291800737833445.a n : ℤ) = A308833 (n + 1)

end A308833

/-! ## A308833.P18236802042243736281

`lt[A110560(n)*A175078(n+1), n]`
-/

namespace A308833.P18236802042243736281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 n * A175078 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A308833.P18236802042243736281

namespace A308833

/-- `lt[A110560(n)*A175078(n+1), n]` -/
def P18236802042243736281.Spec : Prop :=
  ∀ n, (P18236802042243736281.a n : ℤ) = A308833 (n + 1)

end A308833

/-! ## A308833.P3619524005062251210

`abs(1-lt[1, A007920(n)])`
-/

namespace A308833.P3619524005062251210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ)|

end

end A308833.P3619524005062251210

namespace A308833

/-- `abs(1-lt[1, A007920(n)])` -/
def P3619524005062251210.Spec : Prop :=
  ∀ n, P3619524005062251210.a n = A308833 (n + 1)

end A308833

/-!
# A308835: The nome q=exp(T_C/T_R)=Sum_{n>=0} a(n)*(x/27)^n follows from the series solutions of 2*T-d/dx(9*(1-x)*x*dT/dx)=0.

The programs for A308835, there is no canonical definition to state claims against.
-/

/-! ## A308835.P6944793641656863996

`A210469(∑[∏[A310914(n)]])`
-/

namespace A308835.P6944793641656863996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310914 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210469 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A308835.P6944793641656863996

/-!
# A308838: Orders of Parker finite fields of odd characteristic.

The programs for A308838, there is no canonical definition to state claims against.
-/

/-! ## A308838.P9413617168379677486

`∩[2*n+1, A348263(n+1)]`
-/

namespace A308838.P9413617168379677486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308838.P9413617168379677486

/-! ## A308838.P9067634301037295247

`record[A093178(A348263(n+2))]`
-/

namespace A308838.P9067634301037295247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A348263 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308838.P9067634301037295247

/-! ## A308838.P2857412353215477675

`filter[A348263(n+1), A000035(#)]`
-/

namespace A308838.P2857412353215477675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A308838.P2857412353215477675

/-! ## A308838.P18265175918285291926

`filter[A348263(n+1), A039982(#)]`
-/

namespace A308838.P18265175918285291926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A308838.P18265175918285291926

/-! ## A308838.P16932186142724821022

`filter[A348263(n+1), A093719(#)]`
-/

namespace A308838.P16932186142724821022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A308838.P16932186142724821022

/-!
# A308839: Sum of all the parts in the partitions of n into 5 squarefree parts.

The programs for A308839, there is no canonical definition to state claims against.
-/

/-! ## A308839.P3292928554433177666

`n*A308840(n)`
-/

namespace A308839.P3292928554433177666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A308840 n

end

end A308839.P3292928554433177666

/-! ## A308839.P9460270572282302643

`A001787(n)%(A011782(n)-A308840(n))`
-/

namespace A308839.P9460270572282302643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001787 n) (A011782 n - A308840 n)

end

end A308839.P9460270572282302643

/-! ## A308839.P15645555210810996350

`n*(A347656(n)-A347655(n))`
-/

namespace A308839.P15645555210810996350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A347656 n - A347655 n)

end

end A308839.P15645555210810996350

/-! ## A308839.P2287504648551006518

`n*(A347656(n)-(A347649(n)+A308767(n)))`
-/

namespace A308839.P2287504648551006518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A347656 n - (A347649 n + A308767 n))

end

end A308839.P2287504648551006518

/-! ## A308839.P1744269471628040975

`n*(A347657(n)-(A347655(n)+A308902(n)))`
-/

namespace A308839.P1744269471628040975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A347657 n - (A347655 n + A308902 n))

end

end A308839.P1744269471628040975

/-!
# A308840: Number of partitions of n into 5 squarefree parts.

The programs for A308840, there is no canonical definition to state claims against.
-/

/-! ## A308840.P10004920799995169747

`A308839(n)/A028310(n)`
-/

namespace A308840.P10004920799995169747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308839 n : ℚ) / (A028310 n : ℚ)

end

end A308840.P10004920799995169747

/-! ## A308840.P8244888147865099086

`A308839(n)/A233583(n+1)`
-/

namespace A308840.P8244888147865099086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308839 n : ℚ) / (A233583 (n + 1) : ℚ)

end

end A308840.P8244888147865099086

/-! ## A308840.P3179899080715693345

`A308839(n)/(A000007(n)+n)`
-/

namespace A308840.P3179899080715693345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308839 n : ℚ) / (A000007 n + (n : ℤ) : ℚ)

end

end A308840.P3179899080715693345

/-! ## A308840.P13066385623869757042

`A308839(n)/(n-A010051(2*(n+1)))`
-/

namespace A308840.P13066385623869757042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308839 n : ℚ) / ((n : ℤ) - A010051 (2 * (n + 1)) : ℚ)

end

end A308840.P13066385623869757042

/-! ## A308840.P621213485795424815

`A347656(n)-A347655(n)`
-/

namespace A308840.P621213485795424815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347656 n - A347655 n

end

end A308840.P621213485795424815

/-! ## A308840.P18346539291498029838

`A347656(n)-(A347649(n)+A308767(n))`
-/

namespace A308840.P18346539291498029838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347656 n - (A347649 n + A308767 n)

end

end A308840.P18346539291498029838

/-! ## A308840.P1777440811310831933

`A347657(n)-(A347655(n)+A308902(n))`
-/

namespace A308840.P1777440811310831933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347657 n - (A347655 n + A308902 n)

end

end A308840.P1777440811310831933

/-! ## A308840.P8391525852119735470

`A347657(n)-A308902(n)-A347655(A028310(n))`
-/

namespace A308840.P8391525852119735470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347657 n - A308902 n - A347655 (A028310 n).toNat

end

end A308840.P8391525852119735470

/-!
# A308841: Sum of the smallest parts in the partitions of n into 5 squarefree parts.

The programs for A308841, there is no canonical definition to state claims against.
-/

/-! ## A308841.P15050549708650524013

`A308839(n)-A308842(n)-A308843(n)-A308844(n)-A308845(n)`
-/

namespace A308841.P15050549708650524013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308839 n - A308842 n - A308843 n - A308844 n - A308845 n

end

end A308841.P15050549708650524013

/-!
# A308842: Sum of the fourth largest parts in the partitions of n into 5 squarefree parts.

The programs for A308842, there is no canonical definition to state claims against.
-/

/-! ## A308842.P1897222359963371560

`A308839(n)-A308841(n)-A308843(n)-A308844(n)-A308845(n)`
-/

namespace A308842.P1897222359963371560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308839 n - A308841 n - A308843 n - A308844 n - A308845 n

end

end A308842.P1897222359963371560

/-!
# A308843: Sum of the third largest parts in the partitions of n into 5 squarefree parts.

The programs for A308843, there is no canonical definition to state claims against.
-/

/-! ## A308843.P122588922688439736

`A308839(n)-A308841(n)-A308842(n)-A308844(n)-A308845(n)`
-/

namespace A308843.P122588922688439736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308839 n - A308841 n - A308842 n - A308844 n - A308845 n

end

end A308843.P122588922688439736

/-!
# A308844: Sum of the second largest parts in the partitions of n into 5 squarefree parts.

The programs for A308844, there is no canonical definition to state claims against.
-/

/-! ## A308844.P881943860297810441

`A308839(n)-A308841(n)-A308842(n)-A308843(n)-A308845(n)`
-/

namespace A308844.P881943860297810441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308839 n - A308841 n - A308842 n - A308843 n - A308845 n

end

end A308844.P881943860297810441

/-!
# A308845: Sum of the largest parts in the partitions of n into 5 squarefree parts.

The programs for A308845, there is no canonical definition to state claims against.
-/

/-! ## A308845.P6301932923062481824

`A308839(n)-A308841(n)-A308842(n)-A308843(n)-A308844(n)`
-/

namespace A308845.P6301932923062481824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308839 n - A308841 n - A308842 n - A308843 n - A308844 n

end

end A308845.P6301932923062481824

/-!
# A308851: Numbers >= 2 all of whose divisors > 1 are Brazilian.

The programs for A308851, there is no canonical definition to state claims against.
-/

/-! ## A308851.P11054446470639908229

`A093413(A214345(n))`
-/

namespace A308851.P11054446470639908229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093413 (A214345 n).toNat

end

end A308851.P11054446470639908229

/-! ## A308851.P2754729901568084183

`A153883(A283145(n+1))`
-/

namespace A308851.P2754729901568084183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153883 (A283145 (n + 1)).toNat

end

end A308851.P2754729901568084183

/-! ## A308851.P10088150107677604939

`A153883(A283159(n+1))`
-/

namespace A308851.P10088150107677604939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153883 (A283159 (n + 1)).toNat

end

end A308851.P10088150107677604939

/-!
# A308852: Minimum number k such that the k-th tetrahedral number is not smaller than n!.

The programs for A308852, the canonical program `A308852.P5142413554827894646` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308852 has offset 1).

The definition of A308852 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308852.P5142413554827894646

`floor((6*(n+1)!)^(1/3))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A308852

/-- `floor((6*(n+1)!)^(1/3))` -/
def P5142413554827894646.Spec : Prop :=
  ∀ n, P5142413554827894646.a n = A308852 (n + 1)

theorem P5142413554827894646.correct : P5142413554827894646.Spec := by
  intro n
  simp only [A308852, Nat.add_sub_cancel]

end A308852

/-! ## A308852.P1479316353331465431

`floor(root(A173314(n+1), 3))`
-/

namespace A308852.P1479316353331465431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A173314 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A308852.P1479316353331465431

namespace A308852

/-- `floor(root(A173314(n+1), 3))` -/
def P1479316353331465431.Spec : Prop :=
  ∀ n, P1479316353331465431.a n = A308852 (n + 1)

end A308852

/-! ## A308852.P16388657262493181349

`floor(root(A173316(n+1), 3))`
-/

namespace A308852.P16388657262493181349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A173316 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A308852.P16388657262493181349

namespace A308852

/-- `floor(root(A173316(n+1), 3))` -/
def P16388657262493181349.Spec : Prop :=
  ∀ n, P16388657262493181349.a n = A308852 (n + 1)

end A308852

/-! ## A308852.P7534696680546336979

`A370002(n+1)`
-/

namespace A308852.P7534696680546336979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370002 (n + 1)

end

end A308852.P7534696680546336979

namespace A308852

/-- `A370002(n+1)` -/
def P7534696680546336979.Spec : Prop :=
  ∀ n, P7534696680546336979.a n = A308852 (n + 1)

end A308852

/-! ## A308852.P3551919757776457097

`A055086(∑[A299968(n)])`
-/

namespace A308852.P3551919757776457097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A308852.P3551919757776457097

namespace A308852

/-- `A055086(∑[A299968(n)])` -/
def P3551919757776457097.Spec : Prop :=
  ∀ n, P3551919757776457097.a n = A308852 (n + 1)

end A308852

/-!
# A308853: a(n) is the minimum absolute value of nonzero determinants of order n Latin squares.

The programs for A308853, there is no canonical definition to state claims against.
-/

/-! ## A308853.P8833285434713626164

`A211095(n)*A309259(n+1)`
-/

namespace A308853.P8833285434713626164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211095 n * A309259 (n + 1)

end

end A308853.P8833285434713626164

/-! ## A308853.P2660402554103724287

`lcm(A091090(n), A309259(n+1))`
-/

namespace A308853.P2660402554103724287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A091090 n) (A309259 (n + 1))

end

end A308853.P2660402554103724287

/-! ## A308853.P13864903090928714142

`A094266(n)!*A309259(n+1)`
-/

namespace A308853.P13864903090928714142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A094266 n).toNat : ℤ) * A309259 (n + 1)

end

end A308853.P13864903090928714142

/-! ## A308853.P17337572271807577396

`A111146(n)!*A309259(n+1)`
-/

namespace A308853.P17337572271807577396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A111146 n).toNat : ℤ) * A309259 (n + 1)

end

end A308853.P17337572271807577396

/-! ## A308853.P13945416532675696359

`A008480(n+1)*A309259(n+1)`
-/

namespace A308853.P13945416532675696359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) * A309259 (n + 1)

end

end A308853.P13945416532675696359

/-!
# A308854: Sum of all the parts in the partitions of n into 5 primes.

The programs for A308854, there is no canonical definition to state claims against.
-/

/-! ## A308854.P17787636393113414244

`n*A259195(n)`
-/

namespace A308854.P17787636393113414244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A259195 n

end

end A308854.P17787636393113414244

/-! ## A308854.P1574894298017218895

`A308855(n)+A308856(n)+A308857(n)+A308858(n)+A308859(n)`
-/

namespace A308854.P1574894298017218895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308855 n + A308856 n + A308857 n + A308858 n + A308859 n

end

end A308854.P1574894298017218895

/-! ## A308854.P15626087232747738709

`n*(A347609(n)-A347578(n))`
-/

namespace A308854.P15626087232747738709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A347609 n - A347578 n)

end

end A308854.P15626087232747738709

/-! ## A308854.P10518607947012508192

`log2(A000079(n)^A259195(n))`
-/

namespace A308854.P10518607947012508192
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A000079 n : ℚ) ^ (A259195 n : ℤ) : ℝ)

end

end A308854.P10518607947012508192

/-! ## A308854.P12466723883670814092

`n*∑[A025465(A005701(n))]`
-/

namespace A308854.P12466723883670814092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025465 (A005701 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308854.P12466723883670814092

/-!
# A308855: Sum of the smallest parts in the partitions of n into 5 primes.

The programs for A308855, there is no canonical definition to state claims against.
-/

/-! ## A308855.P10459956610655469789

`A308854(n)-A308856(n)-A308857(n)-A308858(n)-A308859(n)`
-/

namespace A308855.P10459956610655469789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308854 n - A308856 n - A308857 n - A308858 n - A308859 n

end

end A308855.P10459956610655469789

/-!
# A308856: Sum of the fourth largest parts in the partitions of n into 5 primes.

The programs for A308856, there is no canonical definition to state claims against.
-/

/-! ## A308856.P2747753894904002599

`A308854(n)-A308855(n)-A308857(n)-A308858(n)-A308859(n)`
-/

namespace A308856.P2747753894904002599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308854 n - A308855 n - A308857 n - A308858 n - A308859 n

end

end A308856.P2747753894904002599

/-!
# A308857: Sum of the third largest parts in the partitions of n into 5 primes.

The programs for A308857, there is no canonical definition to state claims against.
-/

/-! ## A308857.P8831215196838018772

`A308854(n)-A308855(n)-A308856(n)-A308858(n)-A308859(n)`
-/

namespace A308857.P8831215196838018772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308854 n - A308855 n - A308856 n - A308858 n - A308859 n

end

end A308857.P8831215196838018772

/-!
# A308858: Sum of the second largest parts in the partitions of n into 5 primes.

The programs for A308858, there is no canonical definition to state claims against.
-/

/-! ## A308858.P7980838749887894817

`A308854(n)-A308855(n)-A308856(n)-A308857(n)-A308859(n)`
-/

namespace A308858.P7980838749887894817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308854 n - A308855 n - A308856 n - A308857 n - A308859 n

end

end A308858.P7980838749887894817

/-!
# A308859: Sum of the largest parts in the partitions of n into 5 primes.

The programs for A308859, there is no canonical definition to state claims against.
-/

/-! ## A308859.P15834691200966700763

`A308854(n)-A308855(n)-A308856(n)-A308857(n)-A308858(n)`
-/

namespace A308859.P15834691200966700763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308854 n - A308855 n - A308856 n - A308857 n - A308858 n

end

end A308859.P15834691200966700763

/-!
# A308860: a(n)/n! is the expected number of left-to-right maxima in the lexicographical or colexicographical ordering of all the 3-subsets of [n] under a random permutation of [n], when the 3-subsets hold the worst order of ranks.

The programs for A308860, there is no canonical definition to state claims against.
-/

/-! ## A308860.P5819028343448751270

`A255338(floor(10^(n-1)))-round(sqrt(2*n))`
-/

namespace A308860.P5819028343448751270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255338 ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

end

end A308860.P5819028343448751270

/-!
# A308861: Expansion of e.g.f. 1/(1 - x*(1 + x)*exp(x)).

The programs for A308861, there is no canonical definition to state claims against.
-/

/-! ## A308861.P8660239531014402828

`A275884(A273996(n))+A085857(n)`
-/

namespace A308861.P8660239531014402828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275884 (A273996 n).toNat + A085857 n

end

end A308861.P8660239531014402828

/-! ## A308861.P5974397687520993787

`A000201(A273996(n))-A046660(n+1)`
-/

namespace A308861.P5974397687520993787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A273996 n).toNat - A046660 (n + 1)

end

end A308861.P5974397687520993787

/-!
# A308862: Expansion of e.g.f. 1/(1 - x*(1 + 3*x + x^2)*exp(x)).

The programs for A308862, there is no canonical definition to state claims against.
-/

/-! ## A308862.P2493627208407762169

`A185726(A129369(n))`
-/

namespace A308862.P2493627208407762169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185726 (A129369 n).toNat

end

end A308862.P2493627208407762169

/-!
# A308863: Expansion of e.g.f. (1 + LambertW(-x))/(1 + 2*LambertW(-x)).

The programs for A308863, there is no canonical definition to state claims against.
-/

/-! ## A308863.P17076483281730393403

`A278963(2*A209442(n))`
-/

namespace A308863.P17076483281730393403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278963 (2 * A209442 n).toNat

end

end A308863.P17076483281730393403

/-!
# A308864: a(n) = Sum_{k>=0} (n*k + 1)^n/2^(k+1).

The programs for A308864, there is no canonical definition to state claims against.
-/

/-! ## A308864.P17669643282341088159

`∑{#}[n, C(n, #)*n^#*A000670(#)]`
-/

namespace A308864.P17669643282341088159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k * n ^ k : ℤ) * A000670 k

end

end A308864.P17669643282341088159

/-!
# A308865: a(n) = Sum_{k>=0} k^(2*n+1)/2^(k+1).

The programs for A308865, there is no canonical definition to state claims against.
-/

/-! ## A308865.P3997830961901653340

`A000670(2*n+1)`
-/

namespace A308865.P3997830961901653340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (2 * n + 1)

end

end A308865.P3997830961901653340

/-! ## A308865.P6162388883787611019

`A105796(Δ[n²])`
-/

namespace A308865.P6162388883787611019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105796 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A308865.P6162388883787611019

/-! ## A308865.P5599582411236776930

`A000670(record[xor(1, n)])`
-/

namespace A308865.P5599582411236776930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A308865.P5599582411236776930

/-! ## A308865.P13422683782355670942

`A327868(4*n+1)`
-/

namespace A308865.P13422683782355670942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327868 (4 * n + 1)

end

end A308865.P13422683782355670942

/-! ## A308865.P2617261057444499853

`A052875(Δ[n²])+1`
-/

namespace A308865.P2617261057444499853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052875 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A308865.P2617261057444499853

/-!
# A308866: a(n) = Sum_{k>=0} k^(2^n)/2^(k+1).

The programs for A308866, there is no canonical definition to state claims against.
-/

/-! ## A308866.P14563558130707530037

`A000670(A000079(n))`
-/

namespace A308866.P14563558130707530037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (A000079 n).toNat

end

end A308866.P14563558130707530037

/-! ## A308866.P8221377285591698192

`A000670(2^n)`
-/

namespace A308866.P8221377285591698192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (2 ^ n)

end

end A308866.P8221377285591698192

/-! ## A308866.P12486062006599519894

`∑[A296975(2^n)]`
-/

namespace A308866.P12486062006599519894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296975 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308866.P12486062006599519894

/-!
# A308867: Sum of all the parts in the partitions of n into 6 parts.

The programs for A308867, the canonical program `A308867.P12097156113695832026` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308867 has offset 0).

The definition of A308867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 412 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308867.P4643803644321122614

`n*A026812(n)`
-/

namespace A308867.P4643803644321122614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A026812 n

end

end A308867.P4643803644321122614

namespace A308867

/-- `n*A026812(n)` -/
def P4643803644321122614.Spec : Prop :=
  ∀ n, P4643803644321122614.a n = A308867 n

end A308867

/-! ## A308867.P14377824770847591938

`n*(A001402(n)-A001401(n))`
-/

namespace A308867.P14377824770847591938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A001402 n - A001401 n)

end

end A308867.P14377824770847591938

namespace A308867

/-- `n*(A001402(n)-A001401(n))` -/
def P14377824770847591938.Spec : Prop :=
  ∀ n, P14377824770847591938.a n = A308867 n

end A308867

/-! ## A308867.P981110198729317596

`n*(A037145(n)-A060025(n))`
-/

namespace A308867.P981110198729317596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A037145 n - A060025 n)

end

end A308867.P981110198729317596

namespace A308867

/-- `n*(A037145(n)-A060025(n))` -/
def P981110198729317596.Spec : Prop :=
  ∀ n, P981110198729317596.a n = A308867 n

end A308867

/-! ## A308867.P5836673219402982781

`n*(A001402(n)-∑[A008667(n)])`
-/

namespace A308867.P5836673219402982781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A001402 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308867.P5836673219402982781

namespace A308867

/-- `n*(A001402(n)-∑[A008667(n)])` -/
def P5836673219402982781.Spec : Prop :=
  ∀ n, P5836673219402982781.a n = A308867 n

end A308867

/-! ## A308867.P12097156113695832026

`n*∑[A037145(n)-A008667(n)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A308867

/-- `n*∑[A037145(n)-A008667(n)]` -/
def P12097156113695832026.Spec : Prop :=
  ∀ n, P12097156113695832026.a n = A308867 n

theorem P12097156113695832026.correct : P12097156113695832026.Spec := by
  intro n
  simp only [A308867]

end A308867

/-!
# A308869: Sum of the fifth largest parts in the partitions of n into 6 parts.

The programs for A308869, there is no canonical definition to state claims against.
-/

/-! ## A308869.P5965955278028131981

`A000196(A026812(n)*A026827(3*n))`
-/

namespace A308869.P5965955278028131981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A026812 n * A026827 (3 * n)).toNat

end

end A308869.P5965955278028131981

/-!
# A308870: Sum of the fourth largest parts in the partitions of n into 6 parts.

The programs for A308870, there is no canonical definition to state claims against.
-/

/-! ## A308870.P16768639628997730392

`A018783(n)+A000837(n)-A100617(A232697(3*n))`
-/

namespace A308870.P16768639628997730392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n + A000837 n - A100617 (A232697 (3 * n)).toNat

end

end A308870.P16768639628997730392

/-! ## A308870.P7696820462233491114

`A047967(n)+A000009(n)-A100617(A232697(3*n))`
-/

namespace A308870.P7696820462233491114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n + A000009 n - A100617 (A232697 (3 * n)).toNat

end

end A308870.P7696820462233491114

/-! ## A308870.P16509051051290506653

`A058984(n)+A004526(n)-A100617(A232697(3*n))`
-/

namespace A308870.P16509051051290506653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058984 n + A004526 n - A100617 (A232697 (3 * n)).toNat

end

end A308870.P16509051051290506653

/-! ## A308870.P3063785802245371804

`A057428(n)+A052810(n)-A100617(A232697(3*n))`
-/

namespace A308870.P3063785802245371804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A052810 n - A100617 (A232697 (3 * n)).toNat

end

end A308870.P3063785802245371804

/-! ## A308870.P4404793982941877178

`A167934(n)+A032741(n)-A100617(A232697(3*n))`
-/

namespace A308870.P4404793982941877178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167934 n + A032741 n - A100617 (A232697 (3 * n)).toNat

end

end A308870.P4404793982941877178

/-!
# A308873: Sum of the largest parts in the partitions of n into 6 parts.

The programs for A308873, there is no canonical definition to state claims against.
-/

/-! ## A308873.P8862062541264622983

`A326473(n+3)-A345166(A185213(n))`
-/

namespace A308873.P8862062541264622983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326473 (n + 3) - A345166 (A185213 n).toNat

end

end A308873.P8862062541264622983

/-! ## A308873.P5863884743979553253

`A308998(A077168(n+1))`
-/

namespace A308873.P5863884743979553253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308998 (A077168 (n + 1)).toNat

end

end A308873.P5863884743979553253

/-! ## A308873.P14254629856610518419

`A308933(A161951(n+1))`
-/

namespace A308873.P14254629856610518419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308933 (A161951 (n + 1)).toNat

end

end A308873.P14254629856610518419

/-! ## A308873.P11211769957388223416

`A345672(A308933(n+1))`
-/

namespace A308873.P11211769957388223416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345672 (A308933 (n + 1)).toNat

end

end A308873.P11211769957388223416

/-! ## A308873.P10844461854293013532

`A326473(A382083(n+1))`
-/

namespace A308873.P10844461854293013532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326473 (A382083 (n + 1)).toNat

end

end A308873.P10844461854293013532

/-!
# A308874: Composite numbers that are neither squares nor oblongs.

The programs for A308874, the canonical program `A308874.P12442378366997037564` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308874 has offset 1).

The definition of A308874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308874.P12442378366997037564

`comp[A222030(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A308874

/-- `comp[A222030(n)]` -/
def P12442378366997037564.Spec : Prop :=
  ∀ n, (P12442378366997037564.a n : ℤ) = A308874 (n + 1)

theorem P12442378366997037564.correct : P12442378366997037564.Spec := by
  intro n
  simp only [A308874, Nat.add_sub_cancel]

end A308874

/-! ## A308874.P7291593890204563466

`comp[∪[∑[2*n], A089237(n+1)]]`
-/

namespace A308874.P7291593890204563466
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089237 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A308874.P7291593890204563466

namespace A308874

/-- `comp[∪[∑[2*n], A089237(n+1)]]` -/
def P7291593890204563466.Spec : Prop :=
  ∀ n, (P7291593890204563466.a n : ℤ) = A308874 (n + 1)

end A308874

/-! ## A308874.P12361443559703424794

`∩[ceil(2*sqrt(n))+n, A018252(n+2)]`
-/

namespace A308874.P12361443559703424794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt (n : ℝ)⌉ + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308874.P12361443559703424794

namespace A308874

/-- `∩[ceil(2*sqrt(n))+n, A018252(n+2)]` -/
def P12361443559703424794.Spec : Prop :=
  ∀ n, (P12361443559703424794.a n : ℤ) = A308874 (n + 1)

end A308874

/-! ## A308874.P11122133365187161954

`comp[∪[floor((n+1)²/4), A000040(n+1)]]`
-/

namespace A308874.P11122133365187161954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℚ) / 4⌋

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A308874.P11122133365187161954

namespace A308874

/-- `comp[∪[floor((n+1)²/4), A000040(n+1)]]` -/
def P11122133365187161954.Spec : Prop :=
  ∀ n, (P11122133365187161954.a n : ℤ) = A308874 (n + 1)

end A308874

/-! ## A308874.P16944858325614879917

`filter[A049068(n+1), A005171(#)]`
-/

namespace A308874.P16944858325614879917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A308874.P16944858325614879917

namespace A308874

/-- `filter[A049068(n+1), A005171(#)]` -/
def P16944858325614879917.Spec : Prop :=
  ∀ n, P16944858325614879917.a n = A308874 (n + 1)

end A308874

/-! ## A308874.P5530984532775198782

`filter[A049068(n+1), A066247(#)]`
-/

namespace A308874.P5530984532775198782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A308874.P5530984532775198782

namespace A308874

/-- `filter[A049068(n+1), A066247(#)]` -/
def P5530984532775198782.Spec : Prop :=
  ∀ n, P5530984532775198782.a n = A308874 (n + 1)

end A308874

/-! ## A308874.P9027906308989480732

`∩[A002808(n+1), A049068(n+1)]`
-/

namespace A308874.P9027906308989480732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308874.P9027906308989480732

namespace A308874

/-- `∩[A002808(n+1), A049068(n+1)]` -/
def P9027906308989480732.Spec : Prop :=
  ∀ n, (P9027906308989480732.a n : ℤ) = A308874 (n + 1)

end A308874

/-! ## A308874.P7303551485268699923

`∩[A018252(n+1), A049068(n+1)]`
-/

namespace A308874.P7303551485268699923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308874.P7303551485268699923

namespace A308874

/-- `∩[A018252(n+1), A049068(n+1)]` -/
def P7303551485268699923.Spec : Prop :=
  ∀ n, (P7303551485268699923.a n : ℤ) = A308874 (n + 1)

end A308874

/-! ## A308874.P17764835056802548585

`∩[A049068(n+1), A056653(n+1)]`
-/

namespace A308874.P17764835056802548585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308874.P17764835056802548585

namespace A308874

/-- `∩[A049068(n+1), A056653(n+1)]` -/
def P17764835056802548585.Spec : Prop :=
  ∀ n, (P17764835056802548585.a n : ℤ) = A308874 (n + 1)

end A308874

/-! ## A308874.P4343320258983974679

`∩[A049068(n+1), A065090(n+1)]`
-/

namespace A308874.P4343320258983974679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308874.P4343320258983974679

namespace A308874

/-- `∩[A049068(n+1), A065090(n+1)]` -/
def P4343320258983974679.Spec : Prop :=
  ∀ n, (P4343320258983974679.a n : ℤ) = A308874 (n + 1)

end A308874

/-! ## A308874.P13841475688583964813

`∩[A049068(n+1), A080257(n+1)]`
-/

namespace A308874.P13841475688583964813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308874.P13841475688583964813

namespace A308874

/-- `∩[A049068(n+1), A080257(n+1)]` -/
def P13841475688583964813.Spec : Prop :=
  ∀ n, (P13841475688583964813.a n : ℤ) = A308874 (n + 1)

end A308874

/-! ## A308874.P11055016403639404749

`∩[A049068(n+1), A089229(n+1)]`
-/

namespace A308874.P11055016403639404749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308874.P11055016403639404749

namespace A308874

/-- `∩[A049068(n+1), A089229(n+1)]` -/
def P11055016403639404749.Spec : Prop :=
  ∀ n, (P11055016403639404749.a n : ℤ) = A308874 (n + 1)

end A308874

/-! ## A308874.P4858651648047830740

`∩[A049068(n+1), A139118(n+1)]`
-/

namespace A308874.P4858651648047830740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308874.P4858651648047830740

namespace A308874

/-- `∩[A049068(n+1), A139118(n+1)]` -/
def P4858651648047830740.Spec : Prop :=
  ∀ n, (P4858651648047830740.a n : ℤ) = A308874 (n + 1)

end A308874

/-! ## A308874.P9091811897706830211

`∩[A049068(n+1), A141468(n+1)]`
-/

namespace A308874.P9091811897706830211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308874.P9091811897706830211

namespace A308874

/-- `∩[A049068(n+1), A141468(n+1)]` -/
def P9091811897706830211.Spec : Prop :=
  ∀ n, (P9091811897706830211.a n : ℤ) = A308874 (n + 1)

end A308874

/-! ## A308874.P1295411946389959222

`∩[A049068(n+1), A220571(n+1)]`
-/

namespace A308874.P1295411946389959222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308874.P1295411946389959222

namespace A308874

/-- `∩[A049068(n+1), A220571(n+1)]` -/
def P1295411946389959222.Spec : Prop :=
  ∀ n, (P1295411946389959222.a n : ℤ) = A308874 (n + 1)

end A308874

/-! ## A308874.P7562452977427259942

`∩[A049068(n+1), A268388(n+1)]`
-/

namespace A308874.P7562452977427259942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308874.P7562452977427259942

namespace A308874

/-- `∩[A049068(n+1), A268388(n+1)]` -/
def P7562452977427259942.Spec : Prop :=
  ∀ n, (P7562452977427259942.a n : ℤ) = A308874 (n + 1)

end A308874

/-! ## A308874.P14910571496863527504

`∩[A078358(n+1), A089229(n+1)]`
-/

namespace A308874.P14910571496863527504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308874.P14910571496863527504

namespace A308874

/-- `∩[A078358(n+1), A089229(n+1)]` -/
def P14910571496863527504.Spec : Prop :=
  ∀ n, (P14910571496863527504.a n : ℤ) = A308874 (n + 1)

end A308874

/-! ## A308874.P11763710732230566484

`lt[A055672(n), n%floor(sqrt(n+1))]`
-/

namespace A308874.P11763710732230566484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.sqrt (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A308874.P11763710732230566484

namespace A308874

/-- `lt[A055672(n), n%floor(sqrt(n+1))]` -/
def P11763710732230566484.Spec : Prop :=
  ∀ n, (P11763710732230566484.a n : ℤ) = A308874 (n + 1)

end A308874

/-! ## A308874.P6713777850488409566

`eq[A055671(n), A240025(n)]`
-/

namespace A308874.P6713777850488409566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240025 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A308874.P6713777850488409566

namespace A308874

/-- `eq[A055671(n), A240025(n)]` -/
def P6713777850488409566.Spec : Prop :=
  ∀ n, (P6713777850488409566.a n : ℤ) = A308874 (n + 1)

end A308874

/-! ## A308874.P323970732160272503

`filter[A089229(n+1), A267683(#)]`
-/

namespace A308874.P323970732160272503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267683 (f1 j).toNat = 1) n)

end

end A308874.P323970732160272503

namespace A308874

/-- `filter[A089229(n+1), A267683(#)]` -/
def P323970732160272503.Spec : Prop :=
  ∀ n, P323970732160272503.a n = A308874 (n + 1)

end A308874

/-!
# A308876: Expansion of e.g.f. exp(x)*(1 - x)/(1 - 2*x).

The programs for A308876, the canonical program `A308876.P15853436506435492186` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308876 has offset 0).

The definition of A308876 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308876.P15853436506435492186

`A010844(n)-A067273(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A308876

/-- `A010844(n)-A067273(n)` -/
def P15853436506435492186.Spec : Prop :=
  ∀ n, P15853436506435492186.a n = A308876 n

theorem P15853436506435492186.correct : P15853436506435492186.Spec := by
  intro n
  simp only [A308876]

end A308876

/-! ## A308876.P1918528822344594551

`n*(2*a(n-1)-1)+1` with `a(0)=1`
-/

namespace A308876.P1918528822344594551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (2 * a (n - 1) - 1) + 1

end

end A308876.P1918528822344594551

namespace A308876

/-- `n*(2*a(n-1)-1)+1` -/
def P1918528822344594551.Spec : Prop :=
  ∀ n, P1918528822344594551.a n = A308876 n

end A308876

/-! ## A308876.P18047616728339710304

`1-n*(1-2*a(n-1))` with `a(0)=1`
-/

namespace A308876.P18047616728339710304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (n : ℤ) * (1 - 2 * a (n - 1))

end

end A308876.P18047616728339710304

namespace A308876

/-- `1-n*(1-2*a(n-1))` -/
def P18047616728339710304.Spec : Prop :=
  ∀ n, P18047616728339710304.a n = A308876 n

end A308876

/-! ## A308876.P12982760027752114213

`a(n-1)/n^-1+a(n-1)/cot(atan(n))-(n-1)` with `a(0)=1`
-/

namespace A308876.P12982760027752114213
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((n : ℚ) ^ (-1 : ℤ) : ℝ) + a (n - 1) / Real.cot (Real.arctan (n : ℝ)) - ((n : ℤ) - 1 : ℝ)

end

end A308876.P12982760027752114213

namespace A308876

/-- `a(n-1)/n^-1+a(n-1)/cot(atan(n))-(n-1)` -/
def P12982760027752114213.Spec : Prop :=
  ∀ n, P12982760027752114213.a n = (A308876 n : ℝ)

end A308876

/-! ## A308876.P263761482169145115

`A067273(n)+1`
-/

namespace A308876.P263761482169145115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067273 n + 1

end

end A308876.P263761482169145115

namespace A308876

/-- `A067273(n)+1` -/
def P263761482169145115.Spec : Prop :=
  ∀ n, P263761482169145115.a n = A308876 n

end A308876

/-! ## A308876.P1891411854999542413

`a(n-1)*A004277(n)+1-n` with `a(0)=1`
-/

namespace A308876.P1891411854999542413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A004277 n + 1 - (n : ℤ)

end

end A308876.P1891411854999542413

namespace A308876

/-- `a(n-1)*A004277(n)+1-n` -/
def P1891411854999542413.Spec : Prop :=
  ∀ n, P1891411854999542413.a n = A308876 n

end A308876

/-! ## A308876.P17571538788126237298

`a(n-1)*A005843(n)+1-n` with `a(0)=1`
-/

namespace A308876.P17571538788126237298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A005843 n + (1 - (n : ℤ))

end

end A308876.P17571538788126237298

namespace A308876

/-- `a(n-1)*A005843(n)+1-n` -/
def P17571538788126237298.Spec : Prop :=
  ∀ n, P17571538788126237298.a n = A308876 n

end A308876

/-! ## A308876.P6121419902560635610

`round(A161370(n)/4)`
-/

namespace A308876.P6121419902560635610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A161370 n : ℚ) / 4)

end

end A308876.P6121419902560635610

namespace A308876

/-- `round(A161370(n)/4)` -/
def P6121419902560635610.Spec : Prop :=
  ∀ n, P6121419902560635610.a n = A308876 n

end A308876

/-! ## A308876.P6513995445235142523

`(A010844(n)+1)/2`
-/

namespace A308876.P6513995445235142523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010844 n + 1 : ℚ) / 2

end

end A308876.P6513995445235142523

namespace A308876

/-- `(A010844(n)+1)/2` -/
def P6513995445235142523.Spec : Prop :=
  ∀ n, P6513995445235142523.a n = (A308876 n : ℚ)

end A308876

/-! ## A308876.P12734554037403314757

`(Δ[A353546(n)]+1)/2`
-/

namespace A308876.P12734554037403314757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353546 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1 : ℚ) / 2

end

end A308876.P12734554037403314757

namespace A308876

/-- `(Δ[A353546(n)]+1)/2` -/
def P12734554037403314757.Spec : Prop :=
  ∀ n, P12734554037403314757.a n = (A308876 n : ℚ)

end A308876

/-!
# A308877: Expansion of e.g.f. (1 + log(1 - x))/(1 + 2*log(1 - x)).

The programs for A308877, there is no canonical definition to state claims against.
-/

/-! ## A308877.P17776288739795477131

`ceil(A088500(n)/2)`
-/

namespace A308877.P17776288739795477131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A088500 n : ℚ) / 2⌉

end

end A308877.P17776288739795477131

/-! ## A308877.P17425119174522477545

`A088500(A028310(n))/2`
-/

namespace A308877.P17425119174522477545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088500 (A028310 n).toNat : ℚ) / 2

end

end A308877.P17425119174522477545

/-! ## A308877.P2990983582600409184

`A088500(A151935(n)+n)/2`
-/

namespace A308877.P2990983582600409184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088500 (A151935 n + (n : ℤ)).toNat : ℚ) / 2

end

end A308877.P2990983582600409184

/-! ## A308877.P6982868604959474644

`A088500(A004277(n)-n)/2`
-/

namespace A308877.P6982868604959474644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088500 (A004277 n - (n : ℤ)).toNat : ℚ) / 2

end

end A308877.P6982868604959474644

/-! ## A308877.P5619802980942030790

`A088500(n)/gcd(2, A000629(n))`
-/

namespace A308877.P5619802980942030790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088500 n : ℚ) / (Int.gcd 2 (A000629 n) : ℚ)

end

end A308877.P5619802980942030790

/-! ## A308877.P11607817351815033257

`A088500(n)/2*(A000079(n)%2+1)`
-/

namespace A308877.P11607817351815033257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088500 n : ℚ) / 2 * (Int.tmod (A000079 n) 2 + 1 : ℚ)

end

end A308877.P11607817351815033257

/-! ## A308877.P2111294143266262473

`A088500(n)/A006530(A001316(n))`
-/

namespace A308877.P2111294143266262473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088500 n : ℚ) / (A006530 (A001316 n).toNat : ℚ)

end

end A308877.P2111294143266262473

/-! ## A308877.P2619027205099716719

`A088500(n)/A020639(A004277(n))`
-/

namespace A308877.P2619027205099716719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088500 n : ℚ) / (A020639 (A004277 n).toNat : ℚ)

end

end A308877.P2619027205099716719

/-! ## A308877.P86893984564963927

`A088500(n)/A237053(A151935(n))`
-/

namespace A308877.P86893984564963927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088500 n : ℚ) / (A237053 (A151935 n).toNat : ℚ)

end

end A308877.P86893984564963927

/-!
# A308878: Expansion of e.g.f. (1 - log(1 + x))/(1 - 2*log(1 + x)).

The programs for A308878, there is no canonical definition to state claims against.
-/

/-! ## A308878.P2853822600576113452

`ceil(A088501(n)/2)`
-/

namespace A308878.P2853822600576113452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A088501 n : ℚ) / 2⌉

end

end A308878.P2853822600576113452

/-! ## A308878.P14928881843408529324

`A088501(A028310(n))/2`
-/

namespace A308878.P14928881843408529324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088501 (A028310 n).toNat : ℚ) / 2

end

end A308878.P14928881843408529324

/-! ## A308878.P5816572161626905687

`A088501(n)/A020639(A005893(n))`
-/

namespace A308878.P5816572161626905687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088501 n : ℚ) / (A020639 (A005893 n).toNat : ℚ)

end

end A308878.P5816572161626905687

/-! ## A308878.P16105254202282227635

`A088501(n)/A020639(A005897(n))`
-/

namespace A308878.P16105254202282227635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088501 n : ℚ) / (A020639 (A005897 n).toNat : ℚ)

end

end A308878.P16105254202282227635

/-! ## A308878.P14358550134943306061

`A088501(n)/A020639(A005899(n))`
-/

namespace A308878.P14358550134943306061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088501 n : ℚ) / (A020639 (A005899 n).toNat : ℚ)

end

end A308878.P14358550134943306061

/-! ## A308878.P7644663499792034482

`A088501(n)/A020639(A007899(n))`
-/

namespace A308878.P7644663499792034482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088501 n : ℚ) / (A020639 (A007899 n).toNat : ℚ)

end

end A308878.P7644663499792034482

/-!
# A308881: Irregular array read by rows: row k (k>=1) contains k^2 numbers, formed by filling in a k X k square by upwards antidiagonals so entries in all rows, columns, diagonals, antidiagonals are distinct, and then reading that square across rows.

The programs for A308881, there is no canonical definition to state claims against.
-/

/-! ## A308881.P8311262726436307120

`and(A342507(n+1), A355027(A013629(2*n+1)))`
-/

namespace A308881.P8311262726436307120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A342507 (n + 1)) (A355027 (A013629 (2 * n + 1)).toNat)

end

end A308881.P8311262726436307120

/-! ## A308881.P9284931577256847218

`(A064989(n+1)-A037910(A000079(n+1)))%A307447(n+1)`
-/

namespace A308881.P9284931577256847218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064989 (n + 1) - A037910 (A000079 (n + 1)).toNat) (A307447 (n + 1))

end

end A308881.P9284931577256847218

/-! ## A308881.P4876293657612096751

`and(A295084(6*n+9), A342507(n+1))`
-/

namespace A308881.P4876293657612096751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A295084 (6 * n + 9)) (A342507 (n + 1))

end

end A308881.P4876293657612096751

/-! ## A308881.P17669892222405535471

`A077267(A319041(n+1)+A020737(n))`
-/

namespace A308881.P17669892222405535471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A319041 (n + 1) + A020737 n).toNat

end

end A308881.P17669892222405535471

/-! ## A308881.P13017716238145510527

`A342507(n+1)%A305893(A042591(n))`
-/

namespace A308881.P13017716238145510527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342507 (n + 1)) (A305893 (A042591 n).toNat)

end

end A308881.P13017716238145510527

/-!
# A308882: Entries in row 0 of array of Sprague-Grundy values for single-quadrant Maharaja Nim as given in A308201.

The programs for A308882, there is no canonical definition to state claims against.
-/

/-! ## A308882.P12055125108047046852

`A308201(∑[n]+n)`
-/

namespace A308882.P12055125108047046852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308201 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A308882.P12055125108047046852

/-! ## A308882.P4377391801889603286

`or(char[2], A308201(A000096(n)))`
-/

namespace A308882.P4377391801889603286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A308201 (A000096 n).toNat)

end

end A308882.P4377391801889603286

/-! ## A308882.P1093883905701058362

`A057427(n)*A308201(A000096(n))`
-/

namespace A308882.P1093883905701058362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A308201 (A000096 n).toNat

end

end A308882.P1093883905701058362

/-! ## A308882.P4040535747529758899

`A000038(n)!*A308201(A000096(n))`
-/

namespace A308882.P4040535747529758899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) * A308201 (A000096 n).toNat

end

end A308882.P4040535747529758899

/-! ## A308882.P3454858793641744189

`A308201(A000096(n))+A000038(n+1)`
-/

namespace A308882.P3454858793641744189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308201 (A000096 n).toNat + A000038 (n + 1)

end

end A308882.P3454858793641744189

/-! ## A308882.P16603115281501596115

`(1-A000007(n))*A308201(A000096(n))`
-/

namespace A308882.P16603115281501596115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000007 n) * A308201 (A000096 n).toNat

end

end A308882.P16603115281501596115

/-! ## A308882.P15544509519919705120

`A308201(A000096(n))+A000035(2*n)`
-/

namespace A308882.P15544509519919705120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308201 (A000096 n).toNat + A000035 (2 * n)

end

end A308882.P15544509519919705120

/-! ## A308882.P8820831256065732349

`A000034(2*n)*A308201(A000096(n))`
-/

namespace A308882.P8820831256065732349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A308201 (A000096 n).toNat

end

end A308882.P8820831256065732349

/-! ## A308882.P2749470136792625895

`A308201(A000096(n))%A000040(n+2)`
-/

namespace A308882.P2749470136792625895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308201 (A000096 n).toNat) (A000040 (n + 2))

end

end A308882.P2749470136792625895

/-! ## A308882.P1977538718354479088

`A007318(C(2, n))*A308201(A000096(n))`
-/

namespace A308882.P1977538718354479088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A308201 (A000096 n).toNat

end

end A308882.P1977538718354479088

/-! ## A308882.P5158284617669136629

`A308201(A000096(n))/A007318(C(2, n)!)`
-/

namespace A308882.P5158284617669136629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308201 (A000096 n).toNat : ℚ) / (A007318 (Nat.factorial (Nat.choose 2 n)) : ℚ)

end

end A308882.P5158284617669136629

/-! ## A308882.P8755063179391446882

`A000041(C(n, n²))*A308201(A000096(n))`
-/

namespace A308882.P8755063179391446882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A308201 (A000096 n).toNat

end

end A308882.P8755063179391446882

/-! ## A308882.P17415264731719881934

`A308201(A000096(n))+A008683(4*(n+1))`
-/

namespace A308882.P17415264731719881934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308201 (A000096 n).toNat + A008683 (4 * (n + 1))

end

end A308882.P17415264731719881934

/-! ## A308882.P18376015667796297135

`A014963(4*n+2)*A308201(A000096(n))`
-/

namespace A308882.P18376015667796297135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A308201 (A000096 n).toNat

end

end A308882.P18376015667796297135

/-! ## A308882.P5693549444999849485

`A007318(val(n+2, 7))*A308201(A000096(n))`
-/

namespace A308882.P5693549444999849485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 2) 7) * A308201 (A000096 n).toNat

end

end A308882.P5693549444999849485

/-! ## A308882.P1970316616184806171

`A001222(A105560(n+1))*A308201(A000096(n))`
-/

namespace A308882.P1970316616184806171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A105560 (n + 1)).toNat * A308201 (A000096 n).toNat

end

end A308882.P1970316616184806171

/-! ## A308882.P5517309740458025022

`A274630(∑[n+1])-1`
-/

namespace A308882.P5517309740458025022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274630 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A308882.P5517309740458025022

/-!
# A308883: a(n) = position of 1 in n-th column of array in A274630.

The programs for A308883, there is no canonical definition to state claims against.
-/

/-! ## A308883.P14407234023134063291

`A307281(n)+1`
-/

namespace A308883.P14407234023134063291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307281 n + 1

end

end A308883.P14407234023134063291

/-! ## A308883.P18067797779409154465

`A008619(2*A307281(n))`
-/

namespace A308883.P18067797779409154465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A307281 n).toNat

end

end A308883.P18067797779409154465

/-! ## A308883.P14260465807051683048

`A028242(2*A307281(n))`
-/

namespace A308883.P14260465807051683048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A307281 n).toNat

end

end A308883.P14260465807051683048

/-! ## A308883.P14900379628529918990

`A029579(2*A307281(n))`
-/

namespace A308883.P14900379628529918990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A307281 n).toNat

end

end A308883.P14900379628529918990

/-! ## A308883.P15094985709078842576

`A052938(2*A307281(n))`
-/

namespace A308883.P15094985709078842576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A307281 n).toNat

end

end A308883.P15094985709078842576

/-! ## A308883.P7411008272882474087

`A008611(3*A307281(n))`
-/

namespace A308883.P7411008272882474087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A307281 n).toNat

end

end A308883.P7411008272882474087

/-! ## A308883.P2576966736767920252

`A008620(3*A307281(n))`
-/

namespace A308883.P2576966736767920252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A307281 n).toNat

end

end A308883.P2576966736767920252

/-! ## A308883.P15513742774218633044

`∏{d}[A307281(n)-(abs(1-n)-n)%3, A014963(#)]`
-/

namespace A308883.P15513742774218633044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307281 n - Int.tmod (|1 - (n : ℤ)| - (n : ℤ)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A308883.P15513742774218633044

/-! ## A308883.P10937862081837710533

`2-(A007318(A007318(C(2, n)))-A307281(n))`
-/

namespace A308883.P10937862081837710533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A007318 (A007318 (Nat.choose 2 n)).toNat - A307281 n)

end

end A308883.P10937862081837710533

/-!
# A308884: Follow along the squares in the square spiral (as in A274641); in each square write the smallest nonnegative number that a knight placed at that square cannot see.

The programs for A308884, there is no canonical definition to state claims against.
-/

/-! ## A308884.P7755960494520732511

`A308890(n+1)-1`
-/

namespace A308884.P7755960494520732511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308890 (n + 1) - 1

end

end A308884.P7755960494520732511

/-! ## A308884.P15050752065808791659

`A127229(n+5)%A308890(n+1)`
-/

namespace A308884.P15050752065808791659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A308890 (n + 1))

end

end A308884.P15050752065808791659

/-! ## A308884.P4797581649838466415

`A083800(n+1)%A308890(n+1)`
-/

namespace A308884.P4797581649838466415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A308890 (n + 1))

end

end A308884.P4797581649838466415

/-! ## A308884.P4446805023510564

`A070198(n)%A308890(n+1)`
-/

namespace A308884.P4446805023510564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A308890 (n + 1))

end

end A308884.P4446805023510564

/-! ## A308884.P4253537727314328496

`A079782(n+1)%A308890(n+1)`
-/

namespace A308884.P4253537727314328496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A308890 (n + 1))

end

end A308884.P4253537727314328496

/-! ## A308884.P9543150924447937782

`A083685(n+1)%A308890(n+1)`
-/

namespace A308884.P9543150924447937782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A308890 (n + 1))

end

end A308884.P9543150924447937782

/-! ## A308884.P7392055207390662606

`A121934(n+1)%A308890(n+1)`
-/

namespace A308884.P7392055207390662606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A308890 (n + 1))

end

end A308884.P7392055207390662606

/-! ## A308884.P15816419166955804237

`A030494(n+1)%A308890(n+1)`
-/

namespace A308884.P15816419166955804237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A308890 (n + 1))

end

end A308884.P15816419166955804237

/-! ## A308884.P330281529245220229

`A072828(n+1)%A308890(n+1)`
-/

namespace A308884.P330281529245220229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A308890 (n + 1))

end

end A308884.P330281529245220229

/-! ## A308884.P17334009364564919635

`A086827(n+1)%A308890(n+1)`
-/

namespace A308884.P17334009364564919635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086827 (n + 1)) (A308890 (n + 1))

end

end A308884.P17334009364564919635

/-!
# A308885: Positions of 0's on the spiral defined in A308884.

The programs for A308885, there is no canonical definition to state claims against.
-/

/-! ## A308885.P10622710359621249207

`eq[0, A308884(n)]`
-/

namespace A308885.P10622710359621249207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308884 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308885.P10622710359621249207

/-! ## A308885.P8893964383596112091

`eq[1, A308890(n+1)]`
-/

namespace A308885.P8893964383596112091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308890 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308885.P8893964383596112091

/-! ## A308885.P15672371030640215109

`lt[A308884(n), A010060(4^val(n+1, 4))]`
-/

namespace A308885.P15672371030640215109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308884 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (4 ^ SequenceMachineLib.valuation (n + 1) 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308885.P15672371030640215109

/-! ## A308885.P16622563633406260478

`lt[A308884(n), A010060(A091855(n+1))]`
-/

namespace A308885.P16622563633406260478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308884 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A091855 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308885.P16622563633406260478

/-! ## A308885.P9097836039104852815

`lt[A308884(n), A010060(A157971(n+1))]`
-/

namespace A308885.P9097836039104852815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308884 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A157971 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308885.P9097836039104852815

/-! ## A308885.P10278183844418958601

`lt[A308884(n), A345266(A082885(n+1))]`
-/

namespace A308885.P10278183844418958601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308884 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345266 (A082885 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308885.P10278183844418958601

/-! ## A308885.P11574686286815714120

`A308891(n+1)-1`
-/

namespace A308885.P11574686286815714120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308891 (n + 1) - 1

end

end A308885.P11574686286815714120

/-! ## A308885.P12947368980836154813

`A023443(A308891(n+1))`
-/

namespace A308885.P12947368980836154813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A308891 (n + 1)).toNat

end

end A308885.P12947368980836154813

/-! ## A308885.P7336598707845181206

`record[A308891(A065648(n))-1]`
-/

namespace A308885.P7336598707845181206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308891 (A065648 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308885.P7336598707845181206

/-! ## A308885.P248661297210088619

`record[A308891(A100727(n))-1]`
-/

namespace A308885.P248661297210088619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308891 (A100727 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308885.P248661297210088619

/-!
# A308886: Positions of 1's on the spiral defined in A308884.

The programs for A308886, there is no canonical definition to state claims against.
-/

/-! ## A308886.P14304652082796356680

`eq[1, A308884(n)]`
-/

namespace A308886.P14304652082796356680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308884 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308886.P14304652082796356680

/-! ## A308886.P6019860373508239888

`eq[2, A308890(n+1)]`
-/

namespace A308886.P6019860373508239888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308890 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308886.P6019860373508239888

/-! ## A308886.P5760479045065883801

`A308892(n+1)-1`
-/

namespace A308886.P5760479045065883801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308892 (n + 1) - 1

end

end A308886.P5760479045065883801

/-! ## A308886.P1837633866240580968

`A023443(A308892(n+1))`
-/

namespace A308886.P1837633866240580968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A308892 (n + 1)).toNat

end

end A308886.P1837633866240580968

/-! ## A308886.P12521815535385186926

`record[A308892(A133310(n))-1]`
-/

namespace A308886.P12521815535385186926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308892 (A133310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308886.P12521815535385186926

/-! ## A308886.P12345326704943072779

`record[A308892(A286552(n))-1]`
-/

namespace A308886.P12345326704943072779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308892 (A286552 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308886.P12345326704943072779

/-! ## A308886.P17822736726104969261

`A023444(A308892(n+1)+1)`
-/

namespace A308886.P17822736726104969261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A308892 (n + 1) + 1).toNat

end

end A308886.P17822736726104969261

/-! ## A308886.P8897286426247679715

`A289207(A308892(n+1)+1)`
-/

namespace A308886.P8897286426247679715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A308892 (n + 1) + 1).toNat

end

end A308886.P8897286426247679715

/-! ## A308886.P5215627086813783463

`A225058(4*A308892(n+1))`
-/

namespace A308886.P5215627086813783463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225058 (4 * A308892 (n + 1)).toNat

end

end A308886.P5215627086813783463

/-! ## A308886.P8792094962855512404

`abs(A308892(n+1)+A033999(Δ[n²]))`
-/

namespace A308886.P8792094962855512404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A308892 (n + 1) + A033999 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A308886.P8792094962855512404

/-!
# A308887: Positions of 2's on the spiral defined in A308884.

The programs for A308887, there is no canonical definition to state claims against.
-/

/-! ## A308887.P18322909997089955426

`eq[2, A308884(n)]`
-/

namespace A308887.P18322909997089955426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308884 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308887.P18322909997089955426

/-! ## A308887.P14242369433601711846

`eq[3, A308890(n+1)]`
-/

namespace A308887.P14242369433601711846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308890 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308887.P14242369433601711846

/-! ## A308887.P4989610376794166014

`A308893(n+1)-1`
-/

namespace A308887.P4989610376794166014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308893 (n + 1) - 1

end

end A308887.P4989610376794166014

/-! ## A308887.P18006901943092795313

`A023443(A308893(n+1))`
-/

namespace A308887.P18006901943092795313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A308893 (n + 1)).toNat

end

end A308887.P18006901943092795313

/-! ## A308887.P6250304188293055419

`record[A308893(A133310(n))-1]`
-/

namespace A308887.P6250304188293055419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308893 (A133310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308887.P6250304188293055419

/-! ## A308887.P15494498351486341602

`record[A308893(A286552(n))-1]`
-/

namespace A308887.P15494498351486341602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308893 (A286552 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308887.P15494498351486341602

/-! ## A308887.P2657240256324027584

`record[A308893(A328399(n))-1]`
-/

namespace A308887.P2657240256324027584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308893 (A328399 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308887.P2657240256324027584

/-! ## A308887.P17688401496081954032

`A023444(A308893(n+1)+1)`
-/

namespace A308887.P17688401496081954032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A308893 (n + 1) + 1).toNat

end

end A308887.P17688401496081954032

/-! ## A308887.P9855787417596009934

`A289207(A308893(n+1)+1)`
-/

namespace A308887.P9855787417596009934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A308893 (n + 1) + 1).toNat

end

end A308887.P9855787417596009934

/-! ## A308887.P13636924530159756346

`A023445(A308893(n+1)+2)`
-/

namespace A308887.P13636924530159756346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A308893 (n + 1) + 2).toNat

end

end A308887.P13636924530159756346

/-!
# A308888: Positions of 3's on the spiral defined in A308884.

The programs for A308888, there is no canonical definition to state claims against.
-/

/-! ## A308888.P10403683507612767708

`eq[3, A308884(n)]`
-/

namespace A308888.P10403683507612767708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308884 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308888.P10403683507612767708

/-! ## A308888.P293892565984433433

`eq[4, A308890(n+1)]`
-/

namespace A308888.P293892565984433433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308890 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308888.P293892565984433433

/-! ## A308888.P13718048771990186718

`A308894(n+1)-1`
-/

namespace A308888.P13718048771990186718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308894 (n + 1) - 1

end

end A308888.P13718048771990186718

/-! ## A308888.P18003819246600244036

`abs(1-A308894(abs(xor(n, -1))))`
-/

namespace A308888.P18003819246600244036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - A308894 |Int.xor (n : ℤ) (-1)|.toNat)|

end

end A308888.P18003819246600244036

/-! ## A308888.P6218456959962823648

`A023443(A308894(n+1))`
-/

namespace A308888.P6218456959962823648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A308894 (n + 1)).toNat

end

end A308888.P6218456959962823648

/-! ## A308888.P17269014790752021036

`record[A308894(A065648(n))-1]`
-/

namespace A308888.P17269014790752021036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308894 (A065648 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308888.P17269014790752021036

/-! ## A308888.P3582809851613749251

`record[A308894(A133310(n))-1]`
-/

namespace A308888.P3582809851613749251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308894 (A133310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308888.P3582809851613749251

/-! ## A308888.P9328458272363933164

`record[A308894(A286552(n))-1]`
-/

namespace A308888.P9328458272363933164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308894 (A286552 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308888.P9328458272363933164

/-! ## A308888.P11199469851338344299

`A023444(A308894(n+1)+1)`
-/

namespace A308888.P11199469851338344299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A308894 (n + 1) + 1).toNat

end

end A308888.P11199469851338344299

/-! ## A308888.P16684537267862050351

`A289207(A308894(n+1)+1)`
-/

namespace A308888.P16684537267862050351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A308894 (n + 1) + 1).toNat

end

end A308888.P16684537267862050351

/-!
# A308889: Positions of 4's on the spiral defined in A308884.

The programs for A308889, there is no canonical definition to state claims against.
-/

/-! ## A308889.P18280348324114714897

`A308895(n+1)-1`
-/

namespace A308889.P18280348324114714897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308895 (n + 1) - 1

end

end A308889.P18280348324114714897

/-! ## A308889.P5144832189541523410

`record[A308895(A133310(n))-1]`
-/

namespace A308889.P5144832189541523410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308895 (A133310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308889.P5144832189541523410

/-! ## A308889.P16919216387918502614

`record[A308895(A286552(n))-1]`
-/

namespace A308889.P16919216387918502614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308895 (A286552 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308889.P16919216387918502614

/-! ## A308889.P18229347841897779795

`record[A308895(A286626(n))-1]`
-/

namespace A308889.P18229347841897779795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308895 (A286626 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308889.P18229347841897779795

/-! ## A308889.P1794524111625406686

`A023443(A308895(n+1))`
-/

namespace A308889.P1794524111625406686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A308895 (n + 1)).toNat

end

end A308889.P1794524111625406686

/-!
# A308890: Follow along the squares in the square spiral (as in A274640); in each square write the smallest positive number that a knight placed at that square cannot see.

The programs for A308890, there is no canonical definition to state claims against.
-/

/-! ## A308890.P4280888467074084007

`A308884(n)+1`
-/

namespace A308890.P4280888467074084007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308884 n + 1

end

end A308890.P4280888467074084007

/-! ## A308890.P6056985259024294915

`1-A057428(n)*A308884(n)`
-/

namespace A308890.P6056985259024294915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057428 n * A308884 n

end

end A308890.P6056985259024294915

/-! ## A308890.P10503461445932042862

`A000005(A000040(a(n-1))^A308884(n))` with `a(0)=1`
-/

namespace A308890.P10503461445932042862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (SequenceMachineLib.roundAway ((A000040 (a (n - 1)).toNat : ℚ) ^ (A308884 n : ℤ))).toNat

end

end A308890.P10503461445932042862

/-! ## A308890.P16765651007345375792

`2-(A000034(2*n)-A308884(n))`
-/

namespace A308890.P16765651007345375792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A000034 (2 * n) - A308884 n)

end

end A308890.P16765651007345375792

/-! ## A308890.P2015529589080498099

`A000005(A020483(n)^A308884(n))`
-/

namespace A308890.P2015529589080498099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A020483 n : ℚ) ^ (A308884 n : ℤ))).toNat

end

end A308890.P2015529589080498099

/-! ## A308890.P7567198402836307820

`A000005(p?[A337108(n)]^A308884(n))`
-/

namespace A308890.P7567198402836307820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A308884 n : ℤ))).toNat

end

end A308890.P7567198402836307820

/-! ## A308890.P16268204794779729925

`A000005(p?[A274640(n)]^A308884(n))`
-/

namespace A308890.P16268204794779729925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A308884 n : ℤ))).toNat

end

end A308890.P16268204794779729925

/-! ## A308890.P11991325305760758183

`A000005(p?[A003987(n)]^A308884(n))`
-/

namespace A308890.P11991325305760758183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A308884 n : ℤ))).toNat

end

end A308890.P11991325305760758183

/-!
# A308891: Positions of 1's on the spiral defined in A308890.

The programs for A308891, there is no canonical definition to state claims against.
-/

/-! ## A308891.P13413265930758198045

`A308885(n+1)+1`
-/

namespace A308891.P13413265930758198045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308885 (n + 1) + 1

end

end A308891.P13413265930758198045

/-! ## A308891.P5518907610153031840

`eq[0, A308884(n)]+1`
-/

namespace A308891.P5518907610153031840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308884 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A308891.P5518907610153031840

/-! ## A308891.P6428579357376508617

`eq[1, A308890(n+1)]+1`
-/

namespace A308891.P6428579357376508617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308890 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A308891.P6428579357376508617

/-! ## A308891.P12937477169538023549

`lt[A308890(A000027(n+1)), 2]+1`
-/

namespace A308891.P12937477169538023549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308890 (A000027 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A308891.P12937477169538023549

/-! ## A308891.P9468232777479699645

`A274640(A324481(A308885(A274640(A324481(n)))))`
-/

namespace A308891.P9468232777479699645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (A324481 (A308885 (A274640 (A324481 n).toNat).toNat).toNat).toNat

end

end A308891.P9468232777479699645

/-!
# A308892: Positions of 2's on the spiral defined in A308890.

The programs for A308892, there is no canonical definition to state claims against.
-/

/-! ## A308892.P3662893777651895182

`A308886(n+1)+1`
-/

namespace A308892.P3662893777651895182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308886 (n + 1) + 1

end

end A308892.P3662893777651895182

/-! ## A308892.P2217164355104930269

`eq[1, A308884(n)]+1`
-/

namespace A308892.P2217164355104930269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308884 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A308892.P2217164355104930269

/-! ## A308892.P14557165420593319665

`eq[1, A308884(abs(1-n))]`
-/

namespace A308892.P14557165420593319665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308884 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308892.P14557165420593319665

/-! ## A308892.P9048321287936608691

`eq[2, A308890(n+1)]+1`
-/

namespace A308892.P9048321287936608691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308890 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A308892.P9048321287936608691

/-! ## A308892.P5367459114470957227

`A020725(A308886(n+1))`
-/

namespace A308892.P5367459114470957227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A308886 (n + 1)).toNat

end

end A308892.P5367459114470957227

/-! ## A308892.P16139323418026798379

`A274640(A324481(A308886(A274640(A324481(n)))))`
-/

namespace A308892.P16139323418026798379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (A324481 (A308886 (A274640 (A324481 n).toNat).toNat).toNat).toNat

end

end A308892.P16139323418026798379

/-!
# A308893: Positions of 3's on the spiral defined in A308890.

The programs for A308893, there is no canonical definition to state claims against.
-/

/-! ## A308893.P2237924400567641537

`A308887(n+1)+1`
-/

namespace A308893.P2237924400567641537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308887 (n + 1) + 1

end

end A308893.P2237924400567641537

/-! ## A308893.P10117154723038842468

`eq[2, A308884(n)]+1`
-/

namespace A308893.P10117154723038842468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308884 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A308893.P10117154723038842468

/-! ## A308893.P13600021447654618891

`eq[2, A308884(abs(1-n))]`
-/

namespace A308893.P13600021447654618891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308884 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308893.P13600021447654618891

/-! ## A308893.P9106037564251969917

`eq[3, A308890(n+1)]+1`
-/

namespace A308893.P9106037564251969917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308890 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A308893.P9106037564251969917

/-! ## A308893.P17866807713843578591

`A020725(A308887(n+1))`
-/

namespace A308893.P17866807713843578591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A308887 (n + 1)).toNat

end

end A308893.P17866807713843578591

/-!
# A308894: Positions of 4's on the spiral defined in A308890.

The programs for A308894, there is no canonical definition to state claims against.
-/

/-! ## A308894.P4382277956524879073

`A308888(n+1)+1`
-/

namespace A308894.P4382277956524879073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308888 (n + 1) + 1

end

end A308894.P4382277956524879073

/-! ## A308894.P6167521683251780719

`eq[3, A308884(abs(1-n))]`
-/

namespace A308894.P6167521683251780719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308884 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308894.P6167521683251780719

/-! ## A308894.P5277766069599727813

`eq[3, A308884(n+1)]+2`
-/

namespace A308894.P5277766069599727813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308884 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A308894.P5277766069599727813

/-! ## A308894.P11971265872784257967

`A011760(A308888(n+1))`
-/

namespace A308894.P11971265872784257967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A308888 (n + 1)).toNat

end

end A308894.P11971265872784257967

/-!
# A308895: Positions of 5's on the spiral defined in A308890.

The programs for A308895, there is no canonical definition to state claims against.
-/

/-! ## A308895.P2046991387941071473

`A308889(n+1)+1`
-/

namespace A308895.P2046991387941071473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308889 (n + 1) + 1

end

end A308895.P2046991387941071473

/-! ## A308895.P8274268104287469547

`A011760(A308889(n+1))`
-/

namespace A308895.P8274268104287469547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A308889 (n + 1)).toNat

end

end A308895.P8274268104287469547

/-!
# A308896: Walk a rook along the square spiral numbered 0, 1, 2, ... (cf. A274641); a(n) = mex of earlier values the rook can move to.

The programs for A308896, there is no canonical definition to state claims against.
-/

/-! ## A308896.P1378144706071970924

`A308897(n+1)-1`
-/

namespace A308896.P1378144706071970924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308897 (n + 1) - 1

end

end A308896.P1378144706071970924

/-! ## A308896.P7329255795227850467

`A002837(A308897(n+1))`
-/

namespace A308896.P7329255795227850467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A308897 (n + 1)).toNat

end

end A308896.P7329255795227850467

/-! ## A308896.P18115151138319141635

`A057918(A308897(n+1)²)`
-/

namespace A308896.P18115151138319141635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A308897 (n + 1) ^ 2).toNat

end

end A308896.P18115151138319141635

/-! ## A308896.P11651063996800438921

`A214526(A308897(n+1)²)`
-/

namespace A308896.P11651063996800438921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A308897 (n + 1) ^ 2).toNat

end

end A308896.P11651063996800438921

/-! ## A308896.P9203645626270463321

`A259361(A308897(n+1)²)`
-/

namespace A308896.P9203645626270463321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A308897 (n + 1) ^ 2).toNat

end

end A308896.P9203645626270463321

/-! ## A308896.P2174707058100918573

`A337108(A308897(n+1)²)`
-/

namespace A308896.P2174707058100918573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337108 (A308897 (n + 1) ^ 2).toNat

end

end A308896.P2174707058100918573

/-! ## A308896.P2856774231253040998

`A023446(A308897(n+1)+3)`
-/

namespace A308896.P2856774231253040998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A308897 (n + 1) + 3).toNat

end

end A308896.P2856774231253040998

/-! ## A308896.P8436778593218682502

`A140106(2*A308897(n+1))`
-/

namespace A308896.P8436778593218682502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A308897 (n + 1)).toNat

end

end A308896.P8436778593218682502

/-! ## A308896.P15893840525015710460

`A023450(A308897(n+1)+7)`
-/

namespace A308896.P15893840525015710460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023450 (A308897 (n + 1) + 7).toNat

end

end A308896.P15893840525015710460

/-! ## A308896.P12017918940898485307

`A070198(n)%A308897(n+1)`
-/

namespace A308896.P12017918940898485307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A308897 (n + 1))

end

end A308896.P12017918940898485307

/-!
# A308897: Walk a rook along the square spiral numbered 1, 2, 3, ... (cf. A274640); a(n) = mex of earlier values the rook can move to.

The programs for A308897, there is no canonical definition to state claims against.
-/

/-! ## A308897.P12191960197176747630

`A308896(n)+1`
-/

namespace A308897.P12191960197176747630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308896 n + 1

end

end A308897.P12191960197176747630

/-! ## A308897.P8116685881557464287

`A005555(A308896(n))`
-/

namespace A308897.P8116685881557464287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A308896 n).toNat

end

end A308897.P8116685881557464287

/-! ## A308897.P2599805051827663867

`A008619(2*A308896(n))`
-/

namespace A308897.P2599805051827663867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A308896 n).toNat

end

end A308897.P2599805051827663867

/-! ## A308897.P8173679814195167949

`A028242(2*A308896(n))`
-/

namespace A308897.P8173679814195167949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A308896 n).toNat

end

end A308897.P8173679814195167949

/-! ## A308897.P17362869286931512584

`A080513(2*A308896(n))`
-/

namespace A308897.P17362869286931512584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * A308896 n).toNat

end

end A308897.P17362869286931512584

/-! ## A308897.P10834227644767356846

`A008611(3*A308896(n))`
-/

namespace A308897.P10834227644767356846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A308896 n).toNat

end

end A308897.P10834227644767356846

/-! ## A308897.P17613468591824466265

`A110659(4*A308896(n))`
-/

namespace A308897.P17613468591824466265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110659 (4 * A308896 n).toNat

end

end A308897.P17613468591824466265

/-! ## A308897.P4530930076696146710

`A008612(6*A308896(n))`
-/

namespace A308897.P4530930076696146710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * A308896 n).toNat

end

end A308897.P4530930076696146710

/-! ## A308897.P6304854085153053323

`A000005(2^A308896(n))`
-/

namespace A308897.P6304854085153053323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A308896 n : ℤ))).toNat

end

end A308897.P6304854085153053323

/-! ## A308897.P11958618615818053737

`A001222(2*2^A308896(n))`
-/

namespace A308897.P11958618615818053737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (2 * (2 : ℚ) ^ (A308896 n : ℤ))).toNat

end

end A308897.P11958618615818053737

/-!
# A308898: Fixed point of the morphism 0 -> 01, 1 -> 2, 2 -> 3, 3 -> 012.

The programs for A308898, there is no canonical definition to state claims against.
-/

/-! ## A308898.P11428586063651869377

`A309198(n)-1`
-/

namespace A308898.P11428586063651869377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309198 n - 1

end

end A308898.P11428586063651869377

/-! ## A308898.P12307745695694950763

`A001538(n)%A309198(n)`
-/

namespace A308898.P12307745695694950763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A309198 n)

end

end A308898.P12307745695694950763

/-! ## A308898.P7086135127591569486

`A002146(n)%A309198(n)`
-/

namespace A308898.P7086135127591569486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002146 n) (A309198 n)

end

end A308898.P7086135127591569486

/-! ## A308898.P2204143802953187456

`A002148(n)%A309198(n)`
-/

namespace A308898.P2204143802953187456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002148 n) (A309198 n)

end

end A308898.P2204143802953187456

/-! ## A308898.P1274518733387522069

`A017653(n)%A309198(n)`
-/

namespace A308898.P1274518733387522069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017653 n) (A309198 n)

end

end A308898.P1274518733387522069

/-! ## A308898.P3658067807278151952

`A017655(n)%A309198(n)`
-/

namespace A308898.P3658067807278151952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017655 n) (A309198 n)

end

end A308898.P3658067807278151952

/-! ## A308898.P10955873818338897105

`A017657(n)%A309198(n)`
-/

namespace A308898.P10955873818338897105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017657 n) (A309198 n)

end

end A308898.P10955873818338897105

/-! ## A308898.P5168603297365633830

`A065532(n)%A309198(n)`
-/

namespace A308898.P5168603297365633830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065532 n) (A309198 n)

end

end A308898.P5168603297365633830

/-! ## A308898.P10615653226433563232

`A094319(n)%A309198(n)`
-/

namespace A308898.P10615653226433563232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094319 n) (A309198 n)

end

end A308898.P10615653226433563232

/-! ## A308898.P4690160010325156961

`A152951(n)%A309198(n)`
-/

namespace A308898.P4690160010325156961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152951 n) (A309198 n)

end

end A308898.P4690160010325156961

/-! ## A308898.P17899481939227937751

`A158463(n)%A309198(n)`
-/

namespace A308898.P17899481939227937751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158463 n) (A309198 n)

end

end A308898.P17899481939227937751

/-! ## A308898.P526722655369685838

`A183010(n)%A309198(n)`
-/

namespace A308898.P526722655369685838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183010 n) (A309198 n)

end

end A308898.P526722655369685838

/-! ## A308898.P17021680928541797969

`A000353(n+1)%A309198(n)`
-/

namespace A308898.P17021680928541797969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000353 (n + 1)) (A309198 n)

end

end A308898.P17021680928541797969

/-! ## A308898.P13392034329860356238

`A002515(n+1)%A309198(n)`
-/

namespace A308898.P13392034329860356238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002515 (n + 1)) (A309198 n)

end

end A308898.P13392034329860356238

/-! ## A308898.P6012619937693847880

`A005385(n+1)%A309198(n)`
-/

namespace A308898.P6012619937693847880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005385 (n + 1)) (A309198 n)

end

end A308898.P6012619937693847880

/-! ## A308898.P4545781239269852913

`A037074(n+1)%A309198(n)`
-/

namespace A308898.P4545781239269852913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037074 (n + 1)) (A309198 n)

end

end A308898.P4545781239269852913

/-! ## A308898.P12408669245405557298

`A044494(n+1)%A309198(n)`
-/

namespace A308898.P12408669245405557298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044494 (n + 1)) (A309198 n)

end

end A308898.P12408669245405557298

/-! ## A308898.P15588020429262855705

`A044506(n+1)%A309198(n)`
-/

namespace A308898.P15588020429262855705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044506 (n + 1)) (A309198 n)

end

end A308898.P15588020429262855705

/-! ## A308898.P5874193161051045563

`A044518(n+1)%A309198(n)`
-/

namespace A308898.P5874193161051045563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044518 (n + 1)) (A309198 n)

end

end A308898.P5874193161051045563

