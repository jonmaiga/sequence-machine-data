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
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
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
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A260801: Primes p such that A008908(p) is also prime.

The programs for A260801, there is no canonical definition to state claims against.
-/

/-! ## A260801.P10031604069008448200

`p?[(n+1)*A032741(A008908(n+1))]`
-/

namespace A260801.P10031604069008448200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A032741 (A008908 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260801.P10031604069008448200

/-! ## A260801.P17715816196223105927

`p?[A001222(A008908(n+1))*A323309(n+1)]`
-/

namespace A260801.P17715816196223105927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008908 (n + 1)).toNat * A323309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260801.P17715816196223105927

/-! ## A260801.P18109453818574896854

`p?[(n+1)*A000010(A000005(A006577(n+1)+1))]`
-/

namespace A260801.P18109453818574896854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000010 (A000005 (A006577 (n + 1) + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260801.P18109453818574896854

/-! ## A260801.P1789736779370638510

`p?[(n+1)*A292269(A006577(n+1)+1)]`
-/

namespace A260801.P1789736779370638510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A292269 (A006577 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260801.P1789736779370638510

/-! ## A260801.P6268904401385107461

`p?[A001281(A066906(n+1))]`
-/

namespace A260801.P6268904401385107461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A066906 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260801.P6268904401385107461

/-! ## A260801.P11687984437442970848

`p?[A060681(A066906(n+2))]`
-/

namespace A260801.P11687984437442970848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A066906 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260801.P11687984437442970848

/-!
# A260803: Number of ways to write n as n = x*y*z + x + y + z where 1 <= x <= y <= z <= n.

The programs for A260803, there is no canonical definition to state claims against.
-/

/-! ## A260803.P12737955703206290373

`A071693(n)-floor(n/2)-1`
-/

namespace A260803.P12737955703206290373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071693 n - ⌊(n : ℚ) / 2⌋ - 1

end

end A260803.P12737955703206290373

/-! ## A260803.P9670037961260946171

`A071693(n)-A008619(n)`
-/

namespace A260803.P9670037961260946171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071693 n - A008619 n

end

end A260803.P9670037961260946171

/-! ## A260803.P360623196941031955

`A071693(n)-∑[A059841(n)]`
-/

namespace A260803.P360623196941031955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071693 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260803.P360623196941031955

/-! ## A260803.P8989559249018931911

`A071693(n)-(A004526(n)+1)`
-/

namespace A260803.P8989559249018931911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071693 n - (A004526 n + 1)

end

end A260803.P8989559249018931911

/-! ## A260803.P7029229932284573882

`A071693(A028310(n))%A008619(n)`
-/

namespace A260803.P7029229932284573882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071693 (A028310 n).toNat) (A008619 n)

end

end A260803.P7029229932284573882

/-! ## A260803.P2394364907741265434

`A071693(n)%A001057(n+1)`
-/

namespace A260803.P2394364907741265434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071693 n) (A001057 (n + 1))

end

end A260803.P2394364907741265434

/-!
# A260804: Number of ways to write n as n = x * y * z * t + x + y + z + t where 1 <= x <= y <= z <= t <= n.

The programs for A260804, there is no canonical definition to state claims against.
-/

/-! ## A260804.P14436432823728119175

`A071689(n)-A001399(n)`
-/

namespace A260804.P14436432823728119175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071689 n - A001399 n

end

end A260804.P14436432823728119175

/-! ## A260804.P2987237201087210792

`A071689(n)-∑[A103221(n)]`
-/

namespace A260804.P2987237201087210792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071689 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260804.P2987237201087210792

/-! ## A260804.P13685119358416481927

`A071689(round(sqrt(n²+1)))%A001399(n)`
-/

namespace A260804.P13685119358416481927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071689 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (A001399 n)

end

end A260804.P13685119358416481927

/-! ## A260804.P12333374186544937431

`A071689(n)%(A001399(n)%A027376(n+1))`
-/

namespace A260804.P12333374186544937431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071689 n) (Int.tmod (A001399 n) (A027376 (n + 1)))

end

end A260804.P12333374186544937431

/-! ## A260804.P14553929091013275992

`and(A023443(2*(n+1)), A284256(A196723(n)))`
-/

namespace A260804.P14553929091013275992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023443 (2 * (n + 1))) (A284256 (A196723 n).toNat)

end

end A260804.P14553929091013275992

/-!
# A260805: Primes p such that p = q^2 - 2*r^2 where q and r are also primes.

The programs for A260805, there is no canonical definition to state claims against.
-/

/-! ## A260805.P3635957220154800199

`∩[A184416(n+1), A308816(n+1)]`
-/

namespace A260805.P3635957220154800199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308816 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260805.P3635957220154800199

/-! ## A260805.P6132504465275663386

`filter[A308816(n+1), A103582(#)]`
-/

namespace A260805.P6132504465275663386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103582 (f1 j).toNat = 1) n)

end

end A260805.P6132504465275663386

/-!
# A260806: Primes p such that p = q^2 - 6*r^2 where q and r are also primes.

The programs for A260806, there is no canonical definition to state claims against.
-/

/-! ## A260806.P1127188452031977927

`A224534(A171241(n+2))`
-/

namespace A260806.P1127188452031977927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224534 (A171241 (n + 2)).toNat

end

end A260806.P1127188452031977927

/-!
# A260808: Primes p such that p = q^2 - 12*r^2 where q and r are also primes.

The programs for A260808, there is no canonical definition to state claims against.
-/

/-! ## A260808.P2445174877388493329

`A068228(A279000(n+3)%A198514(2*n+3))`
-/

namespace A260808.P2445174877388493329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (Int.tmod (A279000 (n + 3)) (A198514 (2 * n + 3))).toNat

end

end A260808.P2445174877388493329

/-!
# A260810: a(n) = n^2*(3*n^2 - 1)/2.

The programs for A260810, the canonical program `A260810.P10333916173310944006` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260810 has offset 0).

The definition of A260810 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(3*n²-1)/2` (program `A260810.P14787499699725098847`, by `A260810.P14787499699725098847.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A260810.P14787499699725098847

`n²*(3*n²-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A260810.P14787499699725098847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * ((3 * n ^ 2 : ℤ) - 1) : ℚ) / 2

end

end A260810.P14787499699725098847

namespace A260810

/-- `n²*(3*n²-1)/2` -/
def P14787499699725098847.Spec : Prop :=
  ∀ n, P14787499699725098847.a n = (A260810 n : ℚ)

theorem P14787499699725098847.correct : P14787499699725098847.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A260810, Nat.add_sub_cancel, A260810.P14787499699725098847.a, A260810.P10333916173310944006.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A260810, Nat.add_sub_cancel, A260810.P14787499699725098847.a, A260810.P10333916173310944006.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A260810

/-! ## A260810.P10333916173310944006

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=22, a(3)=117, a(4)=376`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A260810

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P10333916173310944006.Spec : Prop :=
  ∀ n, P10333916173310944006.a n = A260810 n

theorem P10333916173310944006.correct : P10333916173310944006.Spec := by
  intro n
  simp only [A260810]

end A260810

/-! ## A260810.P12125824342673188668

`A245288(2*n²)`
-/

namespace A260810.P12125824342673188668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245288 (2 * n ^ 2)

end

end A260810.P12125824342673188668

namespace A260810

/-- `A245288(2*n²)` -/
def P12125824342673188668.Spec : Prop :=
  ∀ n, P12125824342673188668.a n = A260810 n

end A260810

/-! ## A260810.P13386412316070936766

`C(n², 2)+n^4`
-/

namespace A260810.P13386412316070936766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) 2 + n ^ 4

end

end A260810.P13386412316070936766

namespace A260810

/-- `C(n², 2)+n^4` -/
def P13386412316070936766.Spec : Prop :=
  ∀ n, (P13386412316070936766.a n : ℤ) = A260810 n

end A260810

/-! ## A260810.P9772093416042445253

`n*A004188(n)`
-/

namespace A260810.P9772093416042445253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004188 n

end

end A260810.P9772093416042445253

namespace A260810

/-- `n*A004188(n)` -/
def P9772093416042445253.Spec : Prop :=
  ∀ n, P9772093416042445253.a n = A260810 n

end A260810

/-! ## A260810.P8558699355751539146

`A000583(n)+C(n², 2)`
-/

namespace A260810.P8558699355751539146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n + (Nat.choose (n ^ 2) 2 : ℤ)

end

end A260810.P8558699355751539146

namespace A260810

/-- `A000583(n)+C(n², 2)` -/
def P8558699355751539146.Spec : Prop :=
  ∀ n, P8558699355751539146.a n = A260810 n

end A260810

/-! ## A260810.P17011620778831876457

`∑[n]*A077588(n)-n`
-/

namespace A260810.P17011620778831876457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A077588 n - (n : ℤ)

end

end A260810.P17011620778831876457

namespace A260810

/-- `∑[n]*A077588(n)-n` -/
def P17011620778831876457.Spec : Prop :=
  ∀ n, P17011620778831876457.a n = A260810 n

end A260810

/-! ## A260810.P5529231760460236988

`∑[n]*A242658(n)-n`
-/

namespace A260810.P5529231760460236988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A242658 n - (n : ℤ)

end

end A260810.P5529231760460236988

namespace A260810

/-- `∑[n]*A242658(n)-n` -/
def P5529231760460236988.Spec : Prop :=
  ∀ n, P5529231760460236988.a n = A260810 n

end A260810

/-! ## A260810.P2063684273834392368

`n²²+2*A006011(n)`
-/

namespace A260810.P2063684273834392368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) + 2 * A006011 n

end

end A260810.P2063684273834392368

namespace A260810

/-- `n²²+2*A006011(n)` -/
def P2063684273834392368.Spec : Prop :=
  ∀ n, P2063684273834392368.a n = A260810 n

end A260810

/-! ## A260810.P2382145342870896246

`2*n²²-A037270(n)`
-/

namespace A260810.P2382145342870896246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n ^ 2) ^ 2 : ℤ) - A037270 n

end

end A260810.P2382145342870896246

namespace A260810

/-- `2*n²²-A037270(n)` -/
def P2382145342870896246.Spec : Prop :=
  ∀ n, P2382145342870896246.a n = A260810 n

end A260810

/-! ## A260810.P9563972257120171964

`(A003215(n)+1)*C(n, 2)+n`
-/

namespace A260810.P9563972257120171964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003215 n + 1) * (Nat.choose n 2 : ℤ) + (n : ℤ)

end

end A260810.P9563972257120171964

namespace A260810

/-- `(A003215(n)+1)*C(n, 2)+n` -/
def P9563972257120171964.Spec : Prop :=
  ∀ n, P9563972257120171964.a n = A260810 n

end A260810

/-! ## A260810.P16730974532899987577

`(A056105(n)+1-n)*∑[n]-n`
-/

namespace A260810.P16730974532899987577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056105 n + (1 - (n : ℤ))) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A260810.P16730974532899987577

namespace A260810

/-- `(A056105(n)+1-n)*∑[n]-n` -/
def P16730974532899987577.Spec : Prop :=
  ∀ n, P16730974532899987577.a n = A260810 n

end A260810

/-! ## A260810.P180589422696627399

`A072819(n)+A008354(n)`
-/

namespace A260810.P180589422696627399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072819 n + A008354 n

end

end A260810.P180589422696627399

namespace A260810

/-- `A072819(n)+A008354(n)` -/
def P180589422696627399.Spec : Prop :=
  ∀ n, P180589422696627399.a n = A260810 n

end A260810

/-! ## A260810.P7143060463741587850

`A101374(n)+A058895(n)`
-/

namespace A260810.P7143060463741587850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101374 n + A058895 n

end

end A260810.P7143060463741587850

namespace A260810

/-- `A101374(n)+A058895(n)` -/
def P7143060463741587850.Spec : Prop :=
  ∀ n, P7143060463741587850.a n = A260810 n

end A260810

/-! ## A260810.P375464101370117665

`A187756(n)+A008911(n)`
-/

namespace A260810.P375464101370117665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187756 n + A008911 n

end

end A260810.P375464101370117665

namespace A260810

/-- `A187756(n)+A008911(n)` -/
def P375464101370117665.Spec : Prop :=
  ∀ n, P375464101370117665.a n = A260810 n

end A260810

/-! ## A260810.P14031542266218033328

`A163102(n)+A132998(n)`
-/

namespace A260810.P14031542266218033328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163102 n + A132998 n

end

end A260810.P14031542266218033328

namespace A260810

/-- `A163102(n)+A132998(n)` -/
def P14031542266218033328.Spec : Prop :=
  ∀ n, P14031542266218033328.a n = A260810 n

end A260810

/-! ## A260810.P8488133918234874651

`A255499(n)+A085537(n)`
-/

namespace A260810.P8488133918234874651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255499 n + A085537 n

end

end A260810.P8488133918234874651

namespace A260810

/-- `A255499(n)+A085537(n)` -/
def P8488133918234874651.Spec : Prop :=
  ∀ n, P8488133918234874651.a n = A260810 n

end A260810

/-! ## A260810.P10305172373992616359

`A101362(n)-A100242(n)`
-/

namespace A260810.P10305172373992616359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101362 n - A100242 n

end

end A260810.P10305172373992616359

namespace A260810

/-- `A101362(n)-A100242(n)` -/
def P10305172373992616359.Spec : Prop :=
  ∀ n, P10305172373992616359.a n = A260810 n

end A260810

/-! ## A260810.P17751309732327336681

`lcm(A004188(n), A129194(n))`
-/

namespace A260810.P17751309732327336681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004188 n) (A129194 n)

end

end A260810.P17751309732327336681

namespace A260810

/-- `lcm(A004188(n), A129194(n))` -/
def P17751309732327336681.Spec : Prop :=
  ∀ n, (P17751309732327336681.a n : ℤ) = A260810 n

end A260810

/-! ## A260810.P11323917291557621701

`A037270(n)+A060886(n)-1`
-/

namespace A260810.P11323917291557621701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037270 n + (A060886 n - 1)

end

end A260810.P11323917291557621701

namespace A260810

/-- `A037270(n)+A060886(n)-1` -/
def P11323917291557621701.Spec : Prop :=
  ∀ n, P11323917291557621701.a n = A260810 n

end A260810

/-!
# A260812: a(n) is the number of edges in a rooted 2-ary tree built from the binary representation of n: each vertex at level i (i=0,...,floor(log_2(n))) has two children if the i-th most significant bit is 1 and one child if the i-th bit is 0.

The programs for A260812, the canonical program `A260812.P13445173599127524008` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260812 has offset 0).

The definition of A260812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260812.P1772322910551714589

`a(floor(n/2))+sqrt(A102376(n))` with `a(0)=1, a(1)=2`
-/

namespace A260812.P1772322910551714589
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + Real.sqrt (A102376 n : ℝ)

end

end A260812.P1772322910551714589

namespace A260812

/-- `a(floor(n/2))+sqrt(A102376(n))` -/
def P1772322910551714589.Spec : Prop :=
  ∀ n, P1772322910551714589.a n = (A260812 n : ℝ)

end A260812

/-! ## A260812.P13445173599127524008

`A060632(n)+a(A029578(n))` with `a(0)=1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A260812

/-- `A060632(n)+a(A029578(n))` -/
def P13445173599127524008.Spec : Prop :=
  ∀ n, P13445173599127524008.a n = A260812 n

theorem P13445173599127524008.correct : P13445173599127524008.Spec := by
  intro n
  simp only [A260812]

end A260812

/-! ## A260812.P8192340962075128599

`A001316(n)+a(A004526(n))` with `a(0)=1, a(1)=2`
-/

namespace A260812.P8192340962075128599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A001316 n + a (A004526 n).toNat

end

end A260812.P8192340962075128599

namespace A260812

/-- `A001316(n)+a(A004526(n))` -/
def P8192340962075128599.Spec : Prop :=
  ∀ n, P8192340962075128599.a n = A260812 n

end A260812

/-! ## A260812.P2271833711842407284

`A001316(n)+a(A123108(n))` with `a(0)=1, a(1)=2`
-/

namespace A260812.P2271833711842407284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A001316 n + a (A123108 n).toNat

end

end A260812.P2271833711842407284

namespace A260812

/-- `A001316(n)+a(A123108(n))` -/
def P2271833711842407284.Spec : Prop :=
  ∀ n, P2271833711842407284.a n = A260812 n

end A260812

/-! ## A260812.P16252569862797167108

`A141310(a(floor(n/2)))+A038573(n)` with `a(0)=1, a(1)=2`
-/

namespace A260812.P16252569862797167108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A141310 (a ⌊(n : ℚ) / 2⌋.toNat).toNat + A038573 n

end

end A260812.P16252569862797167108

namespace A260812

/-- `A141310(a(floor(n/2)))+A038573(n)` -/
def P16252569862797167108.Spec : Prop :=
  ∀ n, P16252569862797167108.a n = A260812 n

end A260812

/-!
# A260814: Powers of 2 with distinct digits.

The programs for A260814, there is no canonical definition to state claims against.
-/

/-! ## A260814.P14856332075450588788

`2^A052060(n+1)`
-/

namespace A260814.P14856332075450588788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A052060 (n + 1) : ℤ)

end

end A260814.P14856332075450588788

/-! ## A260814.P15836062717526715102

`A000079(A052060(n+1))`
-/

namespace A260814.P15836062717526715102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A052060 (n + 1)).toNat

end

end A260814.P15836062717526715102

/-! ## A260814.P14976144155719699670

`A050732(A396000(n+1))`
-/

namespace A260814.P14976144155719699670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050732 (A396000 (n + 1)).toNat

end

end A260814.P14976144155719699670

/-! ## A260814.P16485430332177758023

`A000079(or(n, A365382(n)))`
-/

namespace A260814.P16485430332177758023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Int.lor (n : ℤ) (A365382 n)).toNat

end

end A260814.P16485430332177758023

/-! ## A260814.P6546714539182167489

`A077957(2*A052060(n+1))`
-/

namespace A260814.P6546714539182167489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (2 * A052060 (n + 1)).toNat

end

end A260814.P6546714539182167489

/-!
# A260815: a(2) = 3; for n >= 3, a(n) = a(n-1) + gcd(n, a(n-1))^2.

The programs for A260815, the canonical program `A260815.P17265799116941569095` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260815 has offset 2).

The definition of A260815 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+gcd(n+2, a(n-1))²` (program `A260815.P17265799116941569095`, by `A260815.P17265799116941569095.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A260815.P17265799116941569095

`a(n-1)+gcd(n+2, a(n-1))²` with `a(0)=3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A260815

/-- `a(n-1)+gcd(n+2, a(n-1))²` -/
def P17265799116941569095.Spec : Prop :=
  ∀ n, (P17265799116941569095.a n : ℤ) = A260815 (n + 2)

theorem P17265799116941569095.correct : P17265799116941569095.Spec := by
  intro n
  simp only [A260815, Nat.add_sub_cancel]

end A260815

/-!
# A260816: a(n) = floor(log(Catalan(n))).

The programs for A260816, the canonical program `A260816.P17928427602417046610` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260816 has offset 0).

The definition of A260816 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A260816.P15090440881368013545

`floor(log(A000108(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A260816.P15090440881368013545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A000108 n : ℝ)⌋

end

end A260816.P15090440881368013545

namespace A260816

/-- `floor(log(A000108(n)))` -/
def P15090440881368013545.Spec : Prop :=
  ∀ n, P15090440881368013545.a n = A260816 n

end A260816

/-! ## A260816.P17928427602417046610

`floor(log(C(2*n, n)/(n+1)))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A260816

/-- `floor(log(C(2*n, n)/(n+1)))` -/
def P17928427602417046610.Spec : Prop :=
  ∀ n, P17928427602417046610.a n = A260816 n

theorem P17928427602417046610.correct : P17928427602417046610.Spec := by
  intro n
  simp only [A260816]

end A260816

/-! ## A260816.P17776071643510816400

`floor(log(A289615(n)))`
-/

namespace A260816.P17776071643510816400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A289615 n : ℝ)⌋

end

end A260816.P17776071643510816400

namespace A260816

/-- `floor(log(A289615(n)))` -/
def P17776071643510816400.Spec : Prop :=
  ∀ n, P17776071643510816400.a n = A260816 n

end A260816

/-! ## A260816.P14471493764879442975

`floor(log(A289652(n)))`
-/

namespace A260816.P14471493764879442975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A289652 n : ℝ)⌋

end

end A260816.P14471493764879442975

namespace A260816

/-- `floor(log(A289652(n)))` -/
def P14471493764879442975.Spec : Prop :=
  ∀ n, P14471493764879442975.a n = A260816 n

end A260816

/-! ## A260816.P6779264676021035613

`floor(log(abs(A168491(n))))`
-/

namespace A260816.P6779264676021035613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (|A168491 n| : ℝ)⌋

end

end A260816.P6779264676021035613

namespace A260816

/-- `floor(log(abs(A168491(n))))` -/
def P6779264676021035613.Spec : Prop :=
  ∀ n, P6779264676021035613.a n = A260816 n

end A260816

/-! ## A260816.P9363536433564082582

`floor(log(A089848(n+1)))`
-/

namespace A260816.P9363536433564082582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A089848 (n + 1) : ℝ)⌋

end

end A260816.P9363536433564082582

namespace A260816

/-- `floor(log(A089848(n+1)))` -/
def P9363536433564082582.Spec : Prop :=
  ∀ n, P9363536433564082582.a n = A260816 n

end A260816

/-! ## A260816.P15911875841239818875

`floor(log(A120588(n+1)))`
-/

namespace A260816.P15911875841239818875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A120588 (n + 1) : ℝ)⌋

end

end A260816.P15911875841239818875

namespace A260816

/-- `floor(log(A120588(n+1)))` -/
def P15911875841239818875.Spec : Prop :=
  ∀ n, P15911875841239818875.a n = A260816 n

end A260816

/-! ## A260816.P15459547847818082682

`floor(log(A246604(n)+1))`
-/

namespace A260816.P15459547847818082682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A246604 n + 1 : ℝ)⌋

end

end A260816.P15459547847818082682

namespace A260816

/-- `floor(log(A246604(n)+1))` -/
def P15459547847818082682.Spec : Prop :=
  ∀ n, P15459547847818082682.a n = A260816 n

end A260816

/-! ## A260816.P2868619040833119404

`floor(log(A263986(n)+1))`
-/

namespace A260816.P2868619040833119404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A263986 n + 1 : ℝ)⌋

end

end A260816.P2868619040833119404

namespace A260816

/-- `floor(log(A263986(n)+1))` -/
def P2868619040833119404.Spec : Prop :=
  ∀ n, P2868619040833119404.a n = A260816 n

end A260816

/-! ## A260816.P1656490520301758915

`floor(log(A299042(n+1)))`
-/

namespace A260816.P1656490520301758915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A299042 (n + 1) : ℝ)⌋

end

end A260816.P1656490520301758915

namespace A260816

/-- `floor(log(A299042(n+1)))` -/
def P1656490520301758915.Spec : Prop :=
  ∀ n, P1656490520301758915.a n = A260816 n

end A260816

/-! ## A260816.P15296306283951036742

`floor(log(A120304(n)+2))`
-/

namespace A260816.P15296306283951036742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A120304 n + 2 : ℝ)⌋

end

end A260816.P15296306283951036742

namespace A260816

/-- `floor(log(A120304(n)+2))` -/
def P15296306283951036742.Spec : Prop :=
  ∀ n, P15296306283951036742.a n = A260816 n

end A260816

/-! ## A260816.P10534223886005069680

`floor(log(A028303(2*n)))`
-/

namespace A260816.P10534223886005069680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A028303 (2 * n) : ℝ)⌋

end

end A260816.P10534223886005069680

namespace A260816

/-- `floor(log(A028303(2*n)))` -/
def P10534223886005069680.Spec : Prop :=
  ∀ n, P10534223886005069680.a n = A260816 n

end A260816

/-! ## A260816.P17371194610592845897

`floor(log(A028304(2*n)))`
-/

namespace A260816.P17371194610592845897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A028304 (2 * n) : ℝ)⌋

end

end A260816.P17371194610592845897

namespace A260816

/-- `floor(log(A028304(2*n)))` -/
def P17371194610592845897.Spec : Prop :=
  ∀ n, P17371194610592845897.a n = A260816 n

end A260816

/-! ## A260816.P3198929891969411697

`floor(log(A126120(2*n)))`
-/

namespace A260816.P3198929891969411697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A126120 (2 * n) : ℝ)⌋

end

end A260816.P3198929891969411697

namespace A260816

/-- `floor(log(A126120(2*n)))` -/
def P3198929891969411697.Spec : Prop :=
  ∀ n, P3198929891969411697.a n = A260816 n

end A260816

/-! ## A260816.P10547459587126410745

`floor(log(A126324(2*n)))`
-/

namespace A260816.P10547459587126410745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A126324 (2 * n) : ℝ)⌋

end

end A260816.P10547459587126410745

namespace A260816

/-- `floor(log(A126324(2*n)))` -/
def P10547459587126410745.Spec : Prop :=
  ∀ n, P10547459587126410745.a n = A260816 n

end A260816

/-! ## A260816.P2055994117225389589

`floor(log(A208355(2*n)))`
-/

namespace A260816.P2055994117225389589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A208355 (2 * n) : ℝ)⌋

end

end A260816.P2055994117225389589

namespace A260816

/-- `floor(log(A208355(2*n)))` -/
def P2055994117225389589.Spec : Prop :=
  ∀ n, P2055994117225389589.a n = A260816 n

end A260816

/-! ## A260816.P1998969776489026055

`floor(log(abs(A349450(n+1))))`
-/

namespace A260816.P1998969776489026055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (|A349450 (n + 1)| : ℝ)⌋

end

end A260816.P1998969776489026055

namespace A260816

/-- `floor(log(abs(A349450(n+1))))` -/
def P1998969776489026055.Spec : Prop :=
  ∀ n, P1998969776489026055.a n = A260816 n

end A260816

/-! ## A260816.P7345139616482192859

`floor(log(A089408(2*n+1)))`
-/

namespace A260816.P7345139616482192859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A089408 (2 * n + 1) : ℝ)⌋

end

end A260816.P7345139616482192859

namespace A260816

/-- `floor(log(A089408(2*n+1)))` -/
def P7345139616482192859.Spec : Prop :=
  ∀ n, P7345139616482192859.a n = A260816 n

end A260816

/-! ## A260816.P15104161245308659399

`floor(log(A097331(2*n+1)))`
-/

namespace A260816.P15104161245308659399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A097331 (2 * n + 1) : ℝ)⌋

end

end A260816.P15104161245308659399

namespace A260816

/-- `floor(log(A097331(2*n+1)))` -/
def P15104161245308659399.Spec : Prop :=
  ∀ n, P15104161245308659399.a n = A260816 n

end A260816

/-! ## A260816.P16327114440700157099

`floor(log(A057977(2*n)))`
-/

namespace A260816.P16327114440700157099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A057977 (2 * n) : ℝ)⌋

end

end A260816.P16327114440700157099

namespace A260816

/-- `floor(log(A057977(2*n)))` -/
def P16327114440700157099.Spec : Prop :=
  ∀ n, P16327114440700157099.a n = A260816 n

end A260816

/-!
# A260817: Maximal degree of a polynomial P = Sum_{k=0..m} x^{d(k)} with 0 = d(0) < ... < d(m) such that P^2 = Sum_{k>=0} B(k) x^k has B(k) <= n for all k and B(k) > 0 for k <= d(m).

The programs for A260817, there is no canonical definition to state claims against.
-/

/-! ## A260817.P11477355584599893078

`A000005(A036543(n))*A307465(n)`
-/

namespace A260817.P11477355584599893078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A036543 n).toNat * A307465 n

end

end A260817.P11477355584599893078

/-! ## A260817.P5577838929920273280

`A076888(A326750(2*(n+1)))*A292507(n)`
-/

namespace A260817.P5577838929920273280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076888 (A326750 (2 * (n + 1))).toNat * A292507 n

end

end A260817.P5577838929920273280

/-!
# A260821: Least positive integer k for which n*2^(2^k) + 1 is composite.

The programs for A260821, there is no canonical definition to state claims against.
-/

/-! ## A260821.P8477084911887422788

`A163671(gcd(A011533(n+4), A202358(n)))`
-/

namespace A260821.P8477084911887422788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163671 (Int.gcd (A011533 (n + 4)) (A202358 n))

end

end A260821.P8477084911887422788

/-! ## A260821.P14235652603270040633

`gcd(A082767(A203363(n+1)), A297338(2*(n+2)))`
-/

namespace A260821.P14235652603270040633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082767 (A203363 (n + 1)).toNat) (A297338 (2 * (n + 2)))

end

end A260821.P14235652603270040633

/-!
# A260822: Lexicographically smallest permutation of the natural numbers, such that a(n)+n is a composite number and a(n) != n.

The programs for A260822, there is no canonical definition to state claims against.
-/

/-! ## A260822.P9046229199393282351

`A179959(A179959(n))+xor(2, n)`
-/

namespace A260822.P9046229199393282351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179959 (A179959 n).toNat + (Nat.xor 2 n : ℤ)

end

end A260822.P9046229199393282351

/-! ## A260822.P12475557620460084240

`A110471(A256068(n+1))+xor(2, n)`
-/

namespace A260822.P12475557620460084240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110471 (A256068 (n + 1)).toNat + (Nat.xor 2 n : ℤ)

end

end A260822.P12475557620460084240

/-! ## A260822.P13948601848901754594

`A091247(A116651(n+2))+xor(2, n)`
-/

namespace A260822.P13948601848901754594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 (A116651 (n + 2)).toNat + (Nat.xor 2 n : ℤ)

end

end A260822.P13948601848901754594

/-! ## A260822.P7615763549529973054

`xor(2, n)+1-A185284(A027193(n))`
-/

namespace A260822.P7615763549529973054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 n + 1 : ℤ) - A185284 (A027193 n).toNat

end

end A260822.P7615763549529973054

/-! ## A260822.P8804700064682917857

`A178788(A061547(n+2))+xor(2, n)`
-/

namespace A260822.P8804700064682917857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 (A061547 (n + 2)).toNat + (Nat.xor 2 n : ℤ)

end

end A260822.P8804700064682917857

/-!
# A260823: Positive integers that are not divisible by any cube greater than 1 and cannot be written as the sum of two cubes of rational numbers.

The programs for A260823, there is no canonical definition to state claims against.
-/

/-! ## A260823.P13842454321830466308

`record[A007948(A185345(n+1))]`
-/

namespace A260823.P13842454321830466308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A185345 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260823.P13842454321830466308

/-! ## A260823.P12563058133434750826

`filter[A185345(n+1), A212793(#)]`
-/

namespace A260823.P12563058133434750826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A260823.P12563058133434750826

/-! ## A260823.P13316416046142330334

`filter[A309960(n+3), A212793(#)]`
-/

namespace A260823.P13316416046142330334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309960 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A260823.P13316416046142330334

/-! ## A260823.P8721224942877395698

`eq[char[A185345(n+1)], A294333(n)]`
-/

namespace A260823.P8721224942877395698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185345 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294333 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A260823.P8721224942877395698

/-! ## A260823.P14637860051453794826

`∩[A004709(n+1), A185345(n+1)]`
-/

namespace A260823.P14637860051453794826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260823.P14637860051453794826

/-! ## A260823.P13083581029534886135

`∩[A185345(n+1), A377019(n+1)]`
-/

namespace A260823.P13083581029534886135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260823.P13083581029534886135

/-! ## A260823.P18046840510951679281

`record[A050985(A185345(A008621(n)))]`
-/

namespace A260823.P18046840510951679281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A185345 (A008621 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260823.P18046840510951679281

/-! ## A260823.P2631100876922503175

`record[A050985(A185345(A101776(n)))]`
-/

namespace A260823.P2631100876922503175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A185345 (A101776 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260823.P2631100876922503175

/-!
# A260827: Primes having only {0, 5, 7} as digits.

The programs for A260827, there is no canonical definition to state claims against.
-/

/-! ## A260827.P1367880771388557872

`∩[A386077(n+1), A386079(n+1)]`
-/

namespace A260827.P1367880771388557872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260827.P1367880771388557872

/-! ## A260827.P9592679515339751907

`∩[A386049(n+1), A386070(n+1)]`
-/

namespace A260827.P9592679515339751907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260827.P9592679515339751907

/-! ## A260827.P17552511460134089833

`∩[A386049(n+1), A386077(n+1)]`
-/

namespace A260827.P17552511460134089833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260827.P17552511460134089833

/-! ## A260827.P9423445154661821850

`∩[A386049(n+1), A386079(n+1)]`
-/

namespace A260827.P9423445154661821850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260827.P9423445154661821850

/-! ## A260827.P15035653885677959407

`∩[A386070(n+1), A386077(n+1)]`
-/

namespace A260827.P15035653885677959407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260827.P15035653885677959407

/-! ## A260827.P17525208772718740677

`∩[A386070(n+1), A386079(n+1)]`
-/

namespace A260827.P17525208772718740677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260827.P17525208772718740677

/-! ## A260827.P8205552880706807527

`∩[A386049(n+1), A386080(n+1)]`
-/

namespace A260827.P8205552880706807527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260827.P8205552880706807527

/-! ## A260827.P14941946410895472623

`∩[A386070(n+1), A386080(n+1)]`
-/

namespace A260827.P14941946410895472623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260827.P14941946410895472623

/-! ## A260827.P678084377424816588

`∩[A386077(n+1), A386080(n+1)]`
-/

namespace A260827.P678084377424816588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260827.P678084377424816588

/-! ## A260827.P2412582935843781698

`∩[A386079(n+1), A386080(n+1)]`
-/

namespace A260827.P2412582935843781698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260827.P2412582935843781698

/-! ## A260827.P13316569286129330434

`∩[A386049(n+1), A386062(n+1)]`
-/

namespace A260827.P13316569286129330434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260827.P13316569286129330434

/-! ## A260827.P229125510324738055

`∩[A386062(n+1), A386070(n+1)]`
-/

namespace A260827.P229125510324738055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260827.P229125510324738055

/-! ## A260827.P734139035453701759

`∩[A386062(n+1), A386077(n+1)]`
-/

namespace A260827.P734139035453701759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260827.P734139035453701759

/-! ## A260827.P13147062424031645421

`∩[A386062(n+1), A386079(n+1)]`
-/

namespace A260827.P13147062424031645421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260827.P13147062424031645421

/-! ## A260827.P17410038093319792841

`∩[A386062(n+1), A386080(n+1)]`
-/

namespace A260827.P17410038093319792841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260827.P17410038093319792841

/-! ## A260827.P18089420707476832575

`∩[A386032(n+1), A386049(n+1)]`
-/

namespace A260827.P18089420707476832575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260827.P18089420707476832575

/-! ## A260827.P16424615962522498059

`∩[A386032(n+1), A386062(n+1)]`
-/

namespace A260827.P16424615962522498059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260827.P16424615962522498059

/-! ## A260827.P17688406535391466846

`∩[A386032(n+1), A386070(n+1)]`
-/

namespace A260827.P17688406535391466846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260827.P17688406535391466846

/-! ## A260827.P1195366047702072538

`∩[A386032(n+1), A386077(n+1)]`
-/

namespace A260827.P1195366047702072538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260827.P1195366047702072538

/-! ## A260827.P17198239695836218717

`∩[A386032(n+1), A386079(n+1)]`
-/

namespace A260827.P17198239695836218717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260827.P17198239695836218717

/-!
# A260828: Primes having only {1, 5, 7} as digits.

The programs for A260828, the canonical program `A260828.P309864450490705242` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260828 has offset 1).

The definition of A260828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1407 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260828.P8175357149304747401

`∩[A386032(n+1), A386132(n+1)]`
-/

namespace A260828.P8175357149304747401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260828.P8175357149304747401

namespace A260828

/-- `∩[A386032(n+1), A386132(n+1)]` -/
def P8175357149304747401.Spec : Prop :=
  ∀ n, (P8175357149304747401.a n : ℤ) = A260828 (n + 1)

end A260828

/-! ## A260828.P5561757327738369109

`∩[A386032(n+1), A386129(n+1)]`
-/

namespace A260828.P5561757327738369109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260828.P5561757327738369109

namespace A260828

/-- `∩[A386032(n+1), A386129(n+1)]` -/
def P5561757327738369109.Spec : Prop :=
  ∀ n, (P5561757327738369109.a n : ℤ) = A260828 (n + 1)

end A260828

/-! ## A260828.P6145221575940442631

`∩[A386129(n+1), A386132(n+1)]`
-/

namespace A260828.P6145221575940442631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260828.P6145221575940442631

namespace A260828

/-- `∩[A386129(n+1), A386132(n+1)]` -/
def P6145221575940442631.Spec : Prop :=
  ∀ n, (P6145221575940442631.a n : ℤ) = A260828 (n + 1)

end A260828

/-! ## A260828.P2816507193852805556

`∩[A386032(n+1), A386120(n+1)]`
-/

namespace A260828.P2816507193852805556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260828.P2816507193852805556

namespace A260828

/-- `∩[A386032(n+1), A386120(n+1)]` -/
def P2816507193852805556.Spec : Prop :=
  ∀ n, (P2816507193852805556.a n : ℤ) = A260828 (n + 1)

end A260828

/-! ## A260828.P13282447772470637925

`∩[A386120(n+1), A386129(n+1)]`
-/

namespace A260828.P13282447772470637925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260828.P13282447772470637925

namespace A260828

/-- `∩[A386120(n+1), A386129(n+1)]` -/
def P13282447772470637925.Spec : Prop :=
  ∀ n, (P13282447772470637925.a n : ℤ) = A260828 (n + 1)

end A260828

/-! ## A260828.P10209325851158800534

`∩[A386120(n+1), A386132(n+1)]`
-/

namespace A260828.P10209325851158800534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260828.P10209325851158800534

namespace A260828

/-- `∩[A386120(n+1), A386132(n+1)]` -/
def P10209325851158800534.Spec : Prop :=
  ∀ n, (P10209325851158800534.a n : ℤ) = A260828 (n + 1)

end A260828

/-! ## A260828.P7100091069892997986

`∩[A386032(n+1), A386096(n+1)]`
-/

namespace A260828.P7100091069892997986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260828.P7100091069892997986

namespace A260828

/-- `∩[A386032(n+1), A386096(n+1)]` -/
def P7100091069892997986.Spec : Prop :=
  ∀ n, (P7100091069892997986.a n : ℤ) = A260828 (n + 1)

end A260828

/-! ## A260828.P309864450490705242

`∩[A386096(n+1), A386120(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A260828

/-- `∩[A386096(n+1), A386120(n+1)]` -/
def P309864450490705242.Spec : Prop :=
  ∀ n, (P309864450490705242.a n : ℤ) = A260828 (n + 1)

theorem P309864450490705242.correct : P309864450490705242.Spec := by
  intro n
  simp only [A260828, Nat.add_sub_cancel]

end A260828

/-! ## A260828.P5155802076937796784

`∩[A386096(n+1), A386129(n+1)]`
-/

namespace A260828.P5155802076937796784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260828.P5155802076937796784

namespace A260828

/-- `∩[A386096(n+1), A386129(n+1)]` -/
def P5155802076937796784.Spec : Prop :=
  ∀ n, (P5155802076937796784.a n : ℤ) = A260828 (n + 1)

end A260828

/-! ## A260828.P12950545075211376348

`∩[A386096(n+1), A386132(n+1)]`
-/

namespace A260828.P12950545075211376348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260828.P12950545075211376348

namespace A260828

/-- `∩[A386096(n+1), A386132(n+1)]` -/
def P12950545075211376348.Spec : Prop :=
  ∀ n, (P12950545075211376348.a n : ℤ) = A260828 (n + 1)

end A260828

/-! ## A260828.P17287080206291715830

`∩[A386032(n+1), A386133(n+1)]`
-/

namespace A260828.P17287080206291715830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260828.P17287080206291715830

namespace A260828

/-- `∩[A386032(n+1), A386133(n+1)]` -/
def P17287080206291715830.Spec : Prop :=
  ∀ n, (P17287080206291715830.a n : ℤ) = A260828 (n + 1)

end A260828

/-! ## A260828.P4879251512210066455

`∩[A386096(n+1), A386133(n+1)]`
-/

namespace A260828.P4879251512210066455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260828.P4879251512210066455

namespace A260828

/-- `∩[A386096(n+1), A386133(n+1)]` -/
def P4879251512210066455.Spec : Prop :=
  ∀ n, (P4879251512210066455.a n : ℤ) = A260828 (n + 1)

end A260828

/-! ## A260828.P4195550748957472957

`∩[A386120(n+1), A386133(n+1)]`
-/

namespace A260828.P4195550748957472957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260828.P4195550748957472957

namespace A260828

/-- `∩[A386120(n+1), A386133(n+1)]` -/
def P4195550748957472957.Spec : Prop :=
  ∀ n, (P4195550748957472957.a n : ℤ) = A260828 (n + 1)

end A260828

/-! ## A260828.P17602550628469416072

`∩[A386129(n+1), A386133(n+1)]`
-/

namespace A260828.P17602550628469416072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260828.P17602550628469416072

namespace A260828

/-- `∩[A386129(n+1), A386133(n+1)]` -/
def P17602550628469416072.Spec : Prop :=
  ∀ n, (P17602550628469416072.a n : ℤ) = A260828 (n + 1)

end A260828

/-! ## A260828.P8139469413693980744

`∩[A386032(n+1), A386111(n+1)]`
-/

namespace A260828.P8139469413693980744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260828.P8139469413693980744

namespace A260828

/-- `∩[A386032(n+1), A386111(n+1)]` -/
def P8139469413693980744.Spec : Prop :=
  ∀ n, (P8139469413693980744.a n : ℤ) = A260828 (n + 1)

end A260828

/-! ## A260828.P16509365170378801000

`∩[A386096(n+1), A386111(n+1)]`
-/

namespace A260828.P16509365170378801000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260828.P16509365170378801000

namespace A260828

/-- `∩[A386096(n+1), A386111(n+1)]` -/
def P16509365170378801000.Spec : Prop :=
  ∀ n, (P16509365170378801000.a n : ℤ) = A260828 (n + 1)

end A260828

/-! ## A260828.P1499999511091497395

`∩[A386111(n+1), A386120(n+1)]`
-/

namespace A260828.P1499999511091497395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260828.P1499999511091497395

namespace A260828

/-- `∩[A386111(n+1), A386120(n+1)]` -/
def P1499999511091497395.Spec : Prop :=
  ∀ n, (P1499999511091497395.a n : ℤ) = A260828 (n + 1)

end A260828

/-! ## A260828.P4344533199615429474

`∩[A386111(n+1), A386129(n+1)]`
-/

namespace A260828.P4344533199615429474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260828.P4344533199615429474

namespace A260828

/-- `∩[A386111(n+1), A386129(n+1)]` -/
def P4344533199615429474.Spec : Prop :=
  ∀ n, (P4344533199615429474.a n : ℤ) = A260828 (n + 1)

end A260828

/-! ## A260828.P4120004141376651855

`∩[A386111(n+1), A386132(n+1)]`
-/

namespace A260828.P4120004141376651855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260828.P4120004141376651855

namespace A260828

/-- `∩[A386111(n+1), A386132(n+1)]` -/
def P4120004141376651855.Spec : Prop :=
  ∀ n, (P4120004141376651855.a n : ℤ) = A260828 (n + 1)

end A260828

/-! ## A260828.P16850366423276017511

`∩[A386111(n+1), A386133(n+1)]`
-/

namespace A260828.P16850366423276017511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260828.P16850366423276017511

namespace A260828

/-- `∩[A386111(n+1), A386133(n+1)]` -/
def P16850366423276017511.Spec : Prop :=
  ∀ n, (P16850366423276017511.a n : ℤ) = A260828 (n + 1)

end A260828

/-!
# A260829: Primes having only {5, 6, 7} as digits.

The programs for A260829, there is no canonical definition to state claims against.
-/

/-! ## A260829.P11971391539969288972

`∩[A386077(n+1), A386196(n+1)]`
-/

namespace A260829.P11971391539969288972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260829.P11971391539969288972

/-! ## A260829.P9217106694584015735

`∩[A386077(n+1), A386160(n+1)]`
-/

namespace A260829.P9217106694584015735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260829.P9217106694584015735

/-! ## A260829.P7848971626534252041

`∩[A386077(n+1), A386188(n+1)]`
-/

namespace A260829.P7848971626534252041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260829.P7848971626534252041

/-! ## A260829.P618808746163000016

`∩[A386160(n+1), A386188(n+1)]`
-/

namespace A260829.P618808746163000016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260829.P618808746163000016

/-! ## A260829.P12255682131177694588

`∩[A386160(n+1), A386196(n+1)]`
-/

namespace A260829.P12255682131177694588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260829.P12255682131177694588

/-! ## A260829.P2757570043230507608

`∩[A386188(n+1), A386196(n+1)]`
-/

namespace A260829.P2757570043230507608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260829.P2757570043230507608

/-! ## A260829.P9070810513914144026

`∩[A386077(n+1), A386197(n+1)]`
-/

namespace A260829.P9070810513914144026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260829.P9070810513914144026

/-! ## A260829.P15377164042333016662

`∩[A386160(n+1), A386197(n+1)]`
-/

namespace A260829.P15377164042333016662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260829.P15377164042333016662

/-! ## A260829.P7548906733034080897

`∩[A386188(n+1), A386197(n+1)]`
-/

namespace A260829.P7548906733034080897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260829.P7548906733034080897

/-! ## A260829.P17493515777027394230

`∩[A386196(n+1), A386197(n+1)]`
-/

namespace A260829.P17493515777027394230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260829.P17493515777027394230

/-! ## A260829.P16715448181397768924

`∩[A386077(n+1), A386129(n+1)]`
-/

namespace A260829.P16715448181397768924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260829.P16715448181397768924

/-! ## A260829.P12878657005982813000

`∩[A386077(n+1), A386178(n+1)]`
-/

namespace A260829.P12878657005982813000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260829.P12878657005982813000

/-! ## A260829.P3211414835214164285

`∩[A386129(n+1), A386160(n+1)]`
-/

namespace A260829.P3211414835214164285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260829.P3211414835214164285

/-! ## A260829.P11044223601589551642

`∩[A386129(n+1), A386178(n+1)]`
-/

namespace A260829.P11044223601589551642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260829.P11044223601589551642

/-! ## A260829.P10578695134812446158

`∩[A386129(n+1), A386188(n+1)]`
-/

namespace A260829.P10578695134812446158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260829.P10578695134812446158

/-! ## A260829.P9895622925904059374

`∩[A386129(n+1), A386196(n+1)]`
-/

namespace A260829.P9895622925904059374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260829.P9895622925904059374

/-! ## A260829.P15195643231272505016

`∩[A386129(n+1), A386197(n+1)]`
-/

namespace A260829.P15195643231272505016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260829.P15195643231272505016

/-! ## A260829.P14219242137959229287

`∩[A386160(n+1), A386178(n+1)]`
-/

namespace A260829.P14219242137959229287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260829.P14219242137959229287

/-! ## A260829.P16146486391252356570

`∩[A386178(n+1), A386188(n+1)]`
-/

namespace A260829.P16146486391252356570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260829.P16146486391252356570

/-! ## A260829.P11437689298368924869

`∩[A386178(n+1), A386196(n+1)]`
-/

namespace A260829.P11437689298368924869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260829.P11437689298368924869

/-!
# A260830: Primes having only {5, 7, 8} as digits.

The programs for A260830, there is no canonical definition to state claims against.
-/

/-! ## A260830.P2239249921485044240

`∩[A386079(n+1), A386196(n+1)]`
-/

namespace A260830.P2239249921485044240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260830.P2239249921485044240

/-! ## A260830.P13984579856271746190

`∩[A386079(n+1), A386162(n+1)]`
-/

namespace A260830.P13984579856271746190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260830.P13984579856271746190

/-! ## A260830.P18390532015432231125

`∩[A386079(n+1), A386190(n+1)]`
-/

namespace A260830.P18390532015432231125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260830.P18390532015432231125

/-! ## A260830.P8306659456636511303

`∩[A386162(n+1), A386190(n+1)]`
-/

namespace A260830.P8306659456636511303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260830.P8306659456636511303

/-! ## A260830.P7148702355905336280

`∩[A386162(n+1), A386196(n+1)]`
-/

namespace A260830.P7148702355905336280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260830.P7148702355905336280

/-! ## A260830.P2474372760272586387

`∩[A386190(n+1), A386196(n+1)]`
-/

namespace A260830.P2474372760272586387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260830.P2474372760272586387

/-! ## A260830.P9424796905056043542

`∩[A386079(n+1), A386199(n+1)]`
-/

namespace A260830.P9424796905056043542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260830.P9424796905056043542

/-! ## A260830.P1259030691749674265

`∩[A386162(n+1), A386199(n+1)]`
-/

namespace A260830.P1259030691749674265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260830.P1259030691749674265

/-! ## A260830.P3407444601141278900

`∩[A386190(n+1), A386199(n+1)]`
-/

namespace A260830.P3407444601141278900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260830.P3407444601141278900

/-! ## A260830.P1401158553488163132

`∩[A386196(n+1), A386199(n+1)]`
-/

namespace A260830.P1401158553488163132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260830.P1401158553488163132

/-! ## A260830.P9461002888236556559

`∩[A386079(n+1), A386132(n+1)]`
-/

namespace A260830.P9461002888236556559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260830.P9461002888236556559

/-! ## A260830.P14096172613701176191

`∩[A386079(n+1), A386181(n+1)]`
-/

namespace A260830.P14096172613701176191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260830.P14096172613701176191

/-! ## A260830.P8722379264695962956

`∩[A386132(n+1), A386162(n+1)]`
-/

namespace A260830.P8722379264695962956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260830.P8722379264695962956

/-! ## A260830.P2770614652386709737

`∩[A386132(n+1), A386181(n+1)]`
-/

namespace A260830.P2770614652386709737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260830.P2770614652386709737

/-! ## A260830.P7058017429930978792

`∩[A386132(n+1), A386190(n+1)]`
-/

namespace A260830.P7058017429930978792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260830.P7058017429930978792

/-! ## A260830.P13252288063224197589

`∩[A386132(n+1), A386196(n+1)]`
-/

namespace A260830.P13252288063224197589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260830.P13252288063224197589

/-! ## A260830.P11638609239414088310

`∩[A386132(n+1), A386199(n+1)]`
-/

namespace A260830.P11638609239414088310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260830.P11638609239414088310

/-! ## A260830.P5784078827971771195

`∩[A386162(n+1), A386181(n+1)]`
-/

namespace A260830.P5784078827971771195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260830.P5784078827971771195

/-! ## A260830.P9098560337943079559

`∩[A386181(n+1), A386190(n+1)]`
-/

namespace A260830.P9098560337943079559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260830.P9098560337943079559

/-! ## A260830.P6142559049215000461

`∩[A386181(n+1), A386196(n+1)]`
-/

namespace A260830.P6142559049215000461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260830.P6142559049215000461

/-!
# A260831: Primes having only {5, 7, 9} as digits.

The programs for A260831, there is no canonical definition to state claims against.
-/

/-! ## A260831.P3361453503862514805

`∩[A386080(n+1), A386199(n+1)]`
-/

namespace A260831.P3361453503862514805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260831.P3361453503862514805

/-! ## A260831.P1571201484189538571

`∩[A386080(n+1), A386197(n+1)]`
-/

namespace A260831.P1571201484189538571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260831.P1571201484189538571

/-! ## A260831.P6605122174792878429

`∩[A386080(n+1), A386133(n+1)]`
-/

namespace A260831.P6605122174792878429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260831.P6605122174792878429

/-! ## A260831.P7344656480345157675

`∩[A386080(n+1), A386163(n+1)]`
-/

namespace A260831.P7344656480345157675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260831.P7344656480345157675

/-! ## A260831.P8202971040254290427

`∩[A386080(n+1), A386182(n+1)]`
-/

namespace A260831.P8202971040254290427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260831.P8202971040254290427

/-! ## A260831.P15499928232005073698

`∩[A386080(n+1), A386191(n+1)]`
-/

namespace A260831.P15499928232005073698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260831.P15499928232005073698

/-! ## A260831.P5211919260153689653

`∩[A386133(n+1), A386163(n+1)]`
-/

namespace A260831.P5211919260153689653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260831.P5211919260153689653

/-! ## A260831.P10860342051837761583

`∩[A386133(n+1), A386182(n+1)]`
-/

namespace A260831.P10860342051837761583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260831.P10860342051837761583

/-! ## A260831.P14513367881388325699

`∩[A386133(n+1), A386191(n+1)]`
-/

namespace A260831.P14513367881388325699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260831.P14513367881388325699

/-! ## A260831.P243059219065655862

`∩[A386133(n+1), A386197(n+1)]`
-/

namespace A260831.P243059219065655862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260831.P243059219065655862

/-! ## A260831.P15467784906392001346

`∩[A386133(n+1), A386199(n+1)]`
-/

namespace A260831.P15467784906392001346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260831.P15467784906392001346

/-! ## A260831.P6835627701223959168

`∩[A386163(n+1), A386182(n+1)]`
-/

namespace A260831.P6835627701223959168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260831.P6835627701223959168

/-! ## A260831.P16182850045263727863

`∩[A386163(n+1), A386191(n+1)]`
-/

namespace A260831.P16182850045263727863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260831.P16182850045263727863

/-! ## A260831.P6671432007975600368

`∩[A386163(n+1), A386197(n+1)]`
-/

namespace A260831.P6671432007975600368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260831.P6671432007975600368

/-! ## A260831.P15605291349858885166

`∩[A386163(n+1), A386199(n+1)]`
-/

namespace A260831.P15605291349858885166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260831.P15605291349858885166

/-! ## A260831.P2021039495925009328

`∩[A386182(n+1), A386191(n+1)]`
-/

namespace A260831.P2021039495925009328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260831.P2021039495925009328

/-! ## A260831.P17234380523909214096

`∩[A386182(n+1), A386197(n+1)]`
-/

namespace A260831.P17234380523909214096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260831.P17234380523909214096

/-! ## A260831.P5005704424611417722

`∩[A386182(n+1), A386199(n+1)]`
-/

namespace A260831.P5005704424611417722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260831.P5005704424611417722

/-! ## A260831.P888689135963482458

`∩[A386191(n+1), A386197(n+1)]`
-/

namespace A260831.P888689135963482458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260831.P888689135963482458

/-! ## A260831.P5005992017025297904

`∩[A386191(n+1), A386199(n+1)]`
-/

namespace A260831.P5005992017025297904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260831.P5005992017025297904

/-!
# A260832: a(n) = numerator(Jtilde2(n)).

The programs for A260832, there is no canonical definition to state claims against.
-/

/-! ## A260832.P11868937239649845157

`A143583(n)/A102376(n)`
-/

namespace A260832.P11868937239649845157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143583 n : ℚ) / (A102376 n : ℚ)

end

end A260832.P11868937239649845157

/-! ## A260832.P2527618531644800413

`A143583(n)/A001316(n)²`
-/

namespace A260832.P2527618531644800413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143583 n : ℚ) / (A001316 n ^ 2 : ℚ)

end

end A260832.P2527618531644800413

/-! ## A260832.P17654199913029084597

`A326303(∑[2*n]+1)`
-/

namespace A260832.P17654199913029084597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326303 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A260832.P17654199913029084597

/-! ## A260832.P16402530082376591817

`record[ratio[A326303(A004273(n))]]`
-/

namespace A260832.P16402530082376591817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326303 (A004273 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260832.P16402530082376591817

/-! ## A260832.P14336983507342655032

`record[ratio[A326303(A109613(n))]]`
-/

namespace A260832.P14336983507342655032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326303 (A109613 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260832.P14336983507342655032

/-!
# A260833: Number of (n+2)X(n+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00010101.

The programs for A260833, there is no canonical definition to state claims against.
-/

/-! ## A260833.P3836011927355732213

`A260841(∑[4*n]+1)`
-/

namespace A260833.P3836011927355732213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260841 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A260833.P3836011927355732213

/-! ## A260833.P9501224583483341303

`record[A260841(A330613(n+1))]`
-/

namespace A260833.P9501224583483341303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260841 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260833.P9501224583483341303

/-! ## A260833.P6074327248557334380

`A260841(A001844(n))+char[21]`
-/

namespace A260833.P6074327248557334380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260841 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A260833.P6074327248557334380

/-! ## A260833.P1459154914446950895

`A260841(A001844(n))%A017382(n)`
-/

namespace A260833.P1459154914446950895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260841 (A001844 n).toNat) (A017382 n)

end

end A260833.P1459154914446950895

/-! ## A260833.P16261785451740424233

`gcd(A025439(n), A260841(A001844(n)))`
-/

namespace A260833.P16261785451740424233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025439 n) (A260841 (A001844 n).toNat)

end

end A260833.P16261785451740424233

/-!
# A260834: Number of (n+2)X(1+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00010101.

The programs for A260834, there is no canonical definition to state claims against.
-/

/-! ## A260834.P12469727741380514317

`A260841(∑[n]+1)`
-/

namespace A260834.P12469727741380514317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260841 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A260834.P12469727741380514317

/-! ## A260834.P16010339907737026833

`lcm(2, A260841(A000124(n)))`
-/

namespace A260834.P16010339907737026833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A260841 (A000124 n).toNat)

end

end A260834.P16010339907737026833

/-! ## A260834.P16780449742274802369

`record[A260841(A056536(n+1))]`
-/

namespace A260834.P16780449742274802369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260841 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260834.P16780449742274802369

/-! ## A260834.P3549575164265446949

`record[A260841(A091995(n+1))]`
-/

namespace A260834.P3549575164265446949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260841 (A091995 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260834.P3549575164265446949

/-! ## A260834.P2248052535181353782

`record[A260841(A249742(n+1))]`
-/

namespace A260834.P2248052535181353782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260841 (A249742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260834.P2248052535181353782

/-!
# A260835: Number of (n+2)X(2+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00010101.

The programs for A260835, there is no canonical definition to state claims against.
-/

/-! ## A260835.P12121858823256515465

`A260841(∑[n+1]+2)`
-/

namespace A260835.P12121858823256515465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260841 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A260835.P12121858823256515465

/-! ## A260835.P16958478472914781034

`or(char[1], A260841(A000096(n)+3))`
-/

namespace A260835.P16958478472914781034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A260841 (A000096 n + 3).toNat)

end

end A260835.P16958478472914781034

/-! ## A260835.P9382814781878954247

`A007318(C(2, n))*A260841(A000096(n)+3)`
-/

namespace A260835.P9382814781878954247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A260841 (A000096 n + 3).toNat

end

end A260835.P9382814781878954247

/-! ## A260835.P6244784439964596162

`A260841(A000096(n)+3)/A007318(C(n, 2))`
-/

namespace A260835.P6244784439964596162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260841 (A000096 n + 3).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A260835.P6244784439964596162

/-! ## A260835.P7098054149794362244

`A260841(A000096(n)+3)%A000041(4*(n+4))`
-/

namespace A260835.P7098054149794362244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260841 (A000096 n + 3).toNat) (A000041 (4 * (n + 4)))

end

end A260835.P7098054149794362244

/-!
# A260836: Number of (n+2)X(3+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00010101.

The programs for A260836, there is no canonical definition to state claims against.
-/

/-! ## A260836.P3775134889757586674

`A260841(∑[n+2]+4)`
-/

namespace A260836.P3775134889757586674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260841 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A260836.P3775134889757586674

/-! ## A260836.P15711947547117341153

`lcm(2, A260841(A167614(n+1)))`
-/

namespace A260836.P15711947547117341153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A260841 (A167614 (n + 1)).toNat)

end

end A260836.P15711947547117341153

/-! ## A260836.P6040592076177464857

`or(1, A260841(A046691(n)+7))-1`
-/

namespace A260836.P6040592076177464857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A260841 (A046691 n + 7).toNat) - 1

end

end A260836.P6040592076177464857

/-! ## A260836.P5672675292200947856

`A260841(A167614(n+1))%A260837(n+1)`
-/

namespace A260836.P5672675292200947856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260841 (A167614 (n + 1)).toNat) (A260837 (n + 1))

end

end A260836.P5672675292200947856

/-! ## A260836.P13842941734939831660

`A007318(C(2, n))*A260841(A167614(n+1))`
-/

namespace A260836.P13842941734939831660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A260841 (A167614 (n + 1)).toNat

end

end A260836.P13842941734939831660

/-!
# A260837: Number of (n+2)X(4+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00010101.

The programs for A260837, there is no canonical definition to state claims against.
-/

/-! ## A260837.P1452283741987658974

`A260841(∑[n+3]+7)`
-/

namespace A260837.P1452283741987658974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260841 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A260837.P1452283741987658974

/-! ## A260837.P1958406872815813299

`or(char[3], A260841(A167614(n+2)+1))`
-/

namespace A260837.P1958406872815813299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A260841 (A167614 (n + 2) + 1).toNat)

end

end A260837.P1958406872815813299

/-! ## A260837.P5465503873933408543

`A260841(A167499(n+2)-1)+char[49]`
-/

namespace A260837.P5465503873933408543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260841 (A167499 (n + 2) - 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A260837.P5465503873933408543

/-! ## A260837.P10085347676614715465

`A260841(A374004(n+1))+A036987(3*n+2)`
-/

namespace A260837.P10085347676614715465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260841 (A374004 (n + 1)).toNat + A036987 (3 * n + 2)

end

end A260837.P10085347676614715465

/-! ## A260837.P10702662430581616213

`A007318(C(2, n))*A260841(A167614(n+2)+1)`
-/

namespace A260837.P10702662430581616213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A260841 (A167614 (n + 2) + 1).toNat

end

end A260837.P10702662430581616213

/-!
# A260838: Number of (n+2)X(5+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00010101.

The programs for A260838, there is no canonical definition to state claims against.
-/

/-! ## A260838.P17560824928787433740

`A260841(A374005(n+1))`
-/

namespace A260838.P17560824928787433740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260841 (A374005 (n + 1)).toNat

end

end A260838.P17560824928787433740

/-! ## A260838.P289704806802685622

`A260841(A167499(n+3))`
-/

namespace A260838.P289704806802685622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260841 (A167499 (n + 3)).toNat

end

end A260838.P289704806802685622

/-! ## A260838.P12398762025329309579

`A260841(A155212(n)+13)`
-/

namespace A260838.P12398762025329309579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260841 (A155212 n + 13).toNat

end

end A260838.P12398762025329309579

/-! ## A260838.P662547011602844083

`A260841(A056000(n)+15)`
-/

namespace A260838.P662547011602844083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260841 (A056000 n + 15).toNat

end

end A260838.P662547011602844083

/-! ## A260838.P4264610441214377697

`A260841(A167614(n+3)+2)`
-/

namespace A260838.P4264610441214377697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260841 (A167614 (n + 3) + 2).toNat

end

end A260838.P4264610441214377697

/-!
# A260839: Number of (n+2)X(6+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00010101.

The programs for A260839, there is no canonical definition to state claims against.
-/

/-! ## A260839.P15254551201723409273

`A260841(A374007(n+1))`
-/

namespace A260839.P15254551201723409273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260841 (A374007 (n + 1)).toNat

end

end A260839.P15254551201723409273

/-! ## A260839.P2022344045842303491

`A260841(A056115(n)+21)`
-/

namespace A260839.P2022344045842303491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260841 (A056115 n + 21).toNat

end

end A260839.P2022344045842303491

/-! ## A260839.P17618608424478828036

`A260841(A167614(n+4)+3)`
-/

namespace A260839.P17618608424478828036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260841 (A167614 (n + 4) + 3).toNat

end

end A260839.P17618608424478828036

/-! ## A260839.P1826364386672439322

`A260841(A000124(n+5)+5)`
-/

namespace A260839.P1826364386672439322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260841 (A000124 (n + 5) + 5).toNat

end

end A260839.P1826364386672439322

/-! ## A260839.P15460057550791584201

`A260841(A000217(n+5)+6)`
-/

namespace A260839.P15460057550791584201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260841 (A000217 (n + 5) + 6).toNat

end

end A260839.P15460057550791584201

/-!
# A260840: Number of (n+2)X(7+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00010101.

The programs for A260840, there is no canonical definition to state claims against.
-/

/-! ## A260840.P4881070582753060837

`A260841(A374008(n+1))`
-/

namespace A260840.P4881070582753060837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260841 (A374008 (n + 1)).toNat

end

end A260840.P4881070582753060837

/-! ## A260840.P7616862265578650833

`A260841(A056119(n)+28)`
-/

namespace A260840.P7616862265578650833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260841 (A056119 n + 28).toNat

end

end A260840.P7616862265578650833

/-! ## A260840.P16595421397241900097

`A260841(A166136(n+5)+1)`
-/

namespace A260840.P16595421397241900097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260841 (A166136 (n + 5) + 1).toNat

end

end A260840.P16595421397241900097

/-! ## A260840.P9567092834759375344

`A260841(A167499(n+5)+2)`
-/

namespace A260840.P9567092834759375344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260841 (A167499 (n + 5) + 2).toNat

end

end A260840.P9567092834759375344

/-! ## A260840.P7996585080444574838

`A260841(A167614(n+5)+4)`
-/

namespace A260840.P7996585080444574838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260841 (A167614 (n + 5) + 4).toNat

end

end A260840.P7996585080444574838

/-!
# A260845: a(n) = Sum_{k=0..n} (-1)^k*P(n,k)*k!, where P(n,k) is the number of partitions of n into k parts.

The programs for A260845, there is no canonical definition to state claims against.
-/

/-! ## A260845.P10441162504385603027

`A260877(∑[n+1])`
-/

namespace A260845.P10441162504385603027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260877 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A260845.P10441162504385603027

/-! ## A260845.P1056216597822489040

`or(1, A260877(A025747(n)))`
-/

namespace A260845.P1056216597822489040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A260877 (A025747 n).toNat)

end

end A260845.P1056216597822489040

/-! ## A260845.P6026618889887458857

`A260877(A025747(n))+A000038(3*n+1)`
-/

namespace A260845.P6026618889887458857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260877 (A025747 n).toNat + A000038 (3 * n + 1)

end

end A260845.P6026618889887458857

/-! ## A260845.P6144249215661765799

`A260877(A025747(n))+A010054(3*n+2)`
-/

namespace A260845.P6144249215661765799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260877 (A025747 n).toNat + A010054 (3 * n + 2)

end

end A260845.P6144249215661765799

/-! ## A260845.P7025991521684190874

`A260877(A000217(n+1))%A050415(n+1)`
-/

namespace A260845.P7025991521684190874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260877 (A000217 (n + 1)).toNat) (A050415 (n + 1))

end

end A260845.P7025991521684190874

/-!
# A260846: a(n) = (-3 - 28*3^n + 73*15^n)/21.

The programs for A260846, the canonical program `A260846.P10066136528183725800` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260846 has offset 0).

The definition of A260846 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A260846.P10066136528183725800

`15*a(n-1)+2+16*3^(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A260846

/-- `15*a(n-1)+2+16*3^(n-1)` -/
def P10066136528183725800.Spec : Prop :=
  ∀ n, P10066136528183725800.a n = (A260846 n : ℚ)

end A260846

/-! ## A260846.P3734721175873250146

`(-3-28*3^n+73*15^n)/21`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A260846.P3734721175873250146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-3 - (28 * 3 ^ n : ℤ) + (73 * 15 ^ n : ℤ) : ℚ) / 21

end

end A260846.P3734721175873250146

namespace A260846

/-- `(-3-28*3^n+73*15^n)/21` -/
def P3734721175873250146.Spec : Prop :=
  ∀ n, P3734721175873250146.a n = (A260846 n : ℚ)

end A260846

/-!
# A260847: Sum over the genera g of the number of immersions of an unoriented circle with n crossing in an oriented surface of genus g.

The programs for A260847, there is no canonical definition to state claims against.
-/

/-! ## A260847.P8628548616167592003

`∑[∑[A055265(A346768(n))]]`
-/

namespace A260847.P8628548616167592003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055265 (A346768 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260847.P8628548616167592003

/-!
# A260850: Lexicographically earliest sequence such that for any n>1, n=u*v, where u/v = a(n)/a(n-1) in reduced form.

The programs for A260850, there is no canonical definition to state claims against.
-/

/-! ## A260850.P15038906675918810799

`A008336(A077168(n)+1)`
-/

namespace A260850.P15038906675918810799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008336 (A077168 n + 1).toNat

end

end A260850.P15038906675918810799

/-! ## A260850.P5461090539902571809

`A008336(A161953(n+2))`
-/

namespace A260850.P5461090539902571809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008336 (A161953 (n + 2)).toNat

end

end A260850.P5461090539902571809

/-! ## A260850.P6679066418444117460

`A008336(A187829(n+2))`
-/

namespace A260850.P6679066418444117460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008336 (A187829 (n + 2)).toNat

end

end A260850.P6679066418444117460

/-! ## A260850.P18199876290288323588

`A008336(log2(A008586(2^n)))`
-/

namespace A260850.P18199876290288323588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008336 (SequenceMachineLib.roundAway (Real.logb 2 (A008586 (2 ^ n) : ℝ))).toNat

end

end A260850.P18199876290288323588

/-! ## A260850.P5766068524151460385

`A008336(A065673(n+1)+1)`
-/

namespace A260850.P5766068524151460385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008336 (A065673 (n + 1) + 1).toNat

end

end A260850.P5766068524151460385

/-!
# A260852: 

The programs for A260852, there is no canonical definition to state claims against.
-/

/-! ## A260852.P15670261889821931830

`A260871(comp[A075023(n+1)+1]+1)`
-/

namespace A260852.P15670261889821931830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075023 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260871 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A260852.P15670261889821931830

/-! ## A260852.P2469099456414799096

`A260871(comp[A261411(n+1)+1]+1)`
-/

namespace A260852.P2469099456414799096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261411 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260871 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A260852.P2469099456414799096

/-!
# A260855: Base-5 representation of a(n) is the concatenation of the base-5 representations of 1, 2, ..., n, n-1, ..., 1.

The programs for A260855, there is no canonical definition to state claims against.
-/

/-! ## A260855.P13769012943111667726

`∑{d}[25^n, #%(5^n)]²`
-/

namespace A260855.P13769012943111667726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d % 5 ^ n) ^ 2

end

end A260855.P13769012943111667726

/-!
# A260856: Base-6 representation is the concatenation of the base-6 representations of 1, 2, ..., n, n-1, ..., 1.

The programs for A260856, there is no canonical definition to state claims against.
-/

/-! ## A260856.P15903506782709007416

`A008497(6^n)`
-/

namespace A260856.P15903506782709007416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008497 (6 ^ n)

end

end A260856.P15903506782709007416

/-! ## A260856.P15462993465113250553

`A002266(6^n)²`
-/

namespace A260856.P15462993465113250553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (6 ^ n) ^ 2

end

end A260856.P15462993465113250553

/-!
# A260857: Base-7 representation of a(n) is the concatenation of the base-7 representations of 1, 2, ..., n, n-1, ..., 1.

The programs for A260857, there is no canonical definition to state claims against.
-/

/-! ## A260857.P535770052870827589

`A336851(5^n)²`
-/

namespace A260857.P535770052870827589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336851 (5 ^ n) ^ 2

end

end A260857.P535770052870827589

/-! ## A260857.P9173166329874393890

`A342611((1-2^n)²)`
-/

namespace A260857.P9173166329874393890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342611 ((1 - (2 ^ n : ℤ)) ^ 2).toNat

end

end A260857.P9173166329874393890

/-! ## A260857.P327703878825228123

`A016994(sqrt(a(n-1)))` with `a(0)=0`
-/

namespace A260857.P327703878825228123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A016994 (SequenceMachineLib.roundAway (Real.sqrt (a (n - 1) : ℝ))).toNat

end

end A260857.P327703878825228123

/-!
# A260858: Base-8 representation of a(n) is the concatenation of the base-8 representations of 1, 2, ..., n, n-1, ..., 1.

The programs for A260858, there is no canonical definition to state claims against.
-/

/-! ## A260858.P2151752646722410647

`A037462(floor(4^n/3))²`
-/

namespace A260858.P2151752646722410647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 ⌊(4 ^ n : ℚ) / 3⌋.toNat ^ 2

end

end A260858.P2151752646722410647

/-! ## A260858.P6172882663399366033

`∑{d}[lt[A335474(n), 2], #^3]²`
-/

namespace A260858.P6172882663399366033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335474 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d ^ 3) ^ 2

end

end A260858.P6172882663399366033

/-! ## A260858.P6926048862669578224

`A266150(∑[floor(2^(n-1))²])²`
-/

namespace A260858.P6926048862669578224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266150 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A260858.P6926048862669578224

/-! ## A260858.P2091029802393895487

`floor(8^n/7)^A020639(∏[n+1])`
-/

namespace A260858.P2091029802393895487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(8 ^ n : ℚ) / 7⌋ : ℚ) ^ (A020639 (∏ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A260858.P2091029802393895487

/-!
# A260859: Base-9 representation of a(n) is the concatenation of the base-9 representations of 1, 2, ..., n, n-1, ..., 1.

The programs for A260859, there is no canonical definition to state claims against.
-/

/-! ## A260859.P6118085449466572961

`A059403(3^n)`
-/

namespace A260859.P6118085449466572961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059403 (3 ^ n)

end

end A260859.P6118085449466572961

/-! ## A260859.P17823188220908159980

`A001971(3^n)²`
-/

namespace A260859.P17823188220908159980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (3 ^ n) ^ 2

end

end A260859.P17823188220908159980

/-! ## A260859.P13336979465769968381

`A008795(3^n)²`
-/

namespace A260859.P13336979465769968381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (3 ^ n) ^ 2

end

end A260859.P13336979465769968381

/-! ## A260859.P10060269295860849545

`A063476(3^n)²`
-/

namespace A260859.P10060269295860849545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063476 (3 ^ n) ^ 2

end

end A260859.P10060269295860849545

/-! ## A260859.P7714996639200833168

`A067558(3^n)²`
-/

namespace A260859.P7714996639200833168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067558 (3 ^ n) ^ 2

end

end A260859.P7714996639200833168

/-!
# A260860: Base-60 representation of a(n) is the concatenation of the base-60 representations of 1, 2, ..., n, n-1, ..., 1.

The programs for A260860, there is no canonical definition to state claims against.
-/

/-! ## A260860.P1677850690369064907

`(A159991(n)-A269025(n))²`
-/

namespace A260860.P1677850690369064907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A159991 n - A269025 n) ^ 2

end

end A260860.P1677850690369064907

/-! ## A260860.P17701093125912058820

`(A269025(n)%A159993(n))²`
-/

namespace A260860.P17701093125912058820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269025 n) (A159993 n) ^ 2

end

end A260860.P17701093125912058820

/-!
# A260861: Base-11 representation of a(n) is the concatenation of the base-11 representations of 1, 2, ..., n, n-1, ..., 1.

The programs for A260861, there is no canonical definition to state claims against.
-/

/-! ## A260861.P13808535575513690390

`record[A032835(n+1)-A032811(A014682(3*n+4))]²`
-/

namespace A260861.P13808535575513690390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032835 (n + 1) - A032811 (A014682 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A260861.P13808535575513690390

/-! ## A260861.P12848515024430335340

`record[A032811(n+1)-A032931(A014682(3*n+4))]²`
-/

namespace A260861.P12848515024430335340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032811 (n + 1) - A032931 (A014682 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A260861.P12848515024430335340

/-! ## A260861.P8638954180693416788

`A033047(record[A343229(n)])²`
-/

namespace A260861.P8638954180693416788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033047 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A260861.P8638954180693416788

/-!
# A260862: Base-12 representation of a(n) is the concatenation of the base-12 representations of 1, 2, ..., n, n-1, ..., 1.

The programs for A260862, there is no canonical definition to state claims against.
-/

/-! ## A260862.P15054104450746109726

`A033048(record[A153141(n)])²`
-/

namespace A260862.P15054104450746109726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153141 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033048 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A260862.P15054104450746109726

/-! ## A260862.P11742296221798001616

`A033048(record[A153154(n)])²`
-/

namespace A260862.P11742296221798001616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033048 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A260862.P11742296221798001616

/-! ## A260862.P14139269374792933396

`(A016125(A019280(n+1))%A001021(n))²`
-/

namespace A260862.P14139269374792933396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016125 (A019280 (n + 1)).toNat) (A001021 n) ^ 2

end

end A260862.P14139269374792933396

/-!
# A260863: Base-13 representation of a(n) is the concatenation of the base-13 representations of 1, 2, ..., n, n-1, ..., 1.

The programs for A260863, there is no canonical definition to state claims against.
-/

/-! ## A260863.P13207374684299444461

`A033049(record[A242869(n)])²`
-/

namespace A260863.P13207374684299444461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033049 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A260863.P13207374684299444461

/-! ## A260863.P2189161030574392034

`∑[A122908(∑[n])+13*a(n-1)]²` with `a(0)=0`
-/

namespace A260863.P2189161030574392034
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A122908 (∑ j ∈ Finset.range (n + 1), f2 j) + 13 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A260863.P2189161030574392034

/-! ## A260863.P2199723170526549407

`A033049(record[A343229(n)])²`
-/

namespace A260863.P2199723170526549407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033049 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A260863.P2199723170526549407

/-! ## A260863.P7508011440295642674

`(1-A196792(n))^A164898(n+1)`
-/

namespace A260863.P7508011440295642674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A196792 n : ℚ) ^ (A164898 (n + 1) : ℤ)

end

end A260863.P7508011440295642674

/-!
# A260864: Base-14 representation of a(n) is the concatenation of the base-14 representations of 1, 2, ..., n, n-1, ..., 1.

The programs for A260864, there is no canonical definition to state claims against.
-/

/-! ## A260864.P13030507406724139822

`A033050(A000225(n))²`
-/

namespace A260864.P13030507406724139822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033050 (A000225 n).toNat ^ 2

end

end A260864.P13030507406724139822

/-! ## A260864.P3599668519928918265

`A033050(record[A038573(n)])²`
-/

namespace A260864.P3599668519928918265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033050 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A260864.P3599668519928918265

/-! ## A260864.P12241078217020461930

`A033050(record[A173787(n)])²`
-/

namespace A260864.P12241078217020461930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033050 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A260864.P12241078217020461930

/-! ## A260864.P8421903078029131088

`A033050(record[A233276(n)])²`
-/

namespace A260864.P8421903078029131088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033050 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A260864.P8421903078029131088

/-! ## A260864.P2423645081051702220

`(1-A032934(A000079(n)))²`
-/

namespace A260864.P2423645081051702220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A032934 (A000079 n).toNat) ^ 2

end

end A260864.P2423645081051702220

/-!
# A260865: Base-15 representation of a(n) is the concatenation of the base-15 representations of 1, 2, ..., n, n-1, ..., 1.

The programs for A260865, there is no canonical definition to state claims against.
-/

/-! ## A260865.P15838174425258818944

`A033051(A000225(n))²`
-/

namespace A260865.P15838174425258818944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033051 (A000225 n).toNat ^ 2

end

end A260865.P15838174425258818944

/-! ## A260865.P3863708311006965517

`A033051(record[A292600(n)])²`
-/

namespace A260865.P3863708311006965517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033051 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A260865.P3863708311006965517

/-! ## A260865.P18111620446630817865

`A033051(record[A304083(n)])²`
-/

namespace A260865.P18111620446630817865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304083 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033051 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A260865.P18111620446630817865

/-! ## A260865.P2206362845100808349

`A033051(A000918(n)+1)²`
-/

namespace A260865.P2206362845100808349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033051 (A000918 n + 1).toNat ^ 2

end

end A260865.P2206362845100808349

/-! ## A260865.P1350913920208388405

`A033051(record[A343231(n)])²`
-/

namespace A260865.P1350913920208388405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343231 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033051 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A260865.P1350913920208388405

/-!
# A260866: Base-16 representation of a(n) is the concatenation of the base-16 representations of 1, 2, ..., n, n-1, ..., 1.

The programs for A260866, there is no canonical definition to state claims against.
-/

/-! ## A260866.P11980243155766601858

`∑[record[A140472(n)²²]]²`
-/

namespace A260866.P11980243155766601858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A140472 n ^ 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A260866.P11980243155766601858

/-! ## A260866.P17852201286145196497

`A279363(2^n)²`
-/

namespace A260866.P17852201286145196497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279363 (2 ^ n) ^ 2

end

end A260866.P17852201286145196497

/-! ## A260866.P8808928720618860456

`A373040(2^n)²`
-/

namespace A260866.P8808928720618860456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373040 (2 ^ n) ^ 2

end

end A260866.P8808928720618860456

/-! ## A260866.P3384007164238853889

`∑[A011863(2^n)]²`
-/

namespace A260866.P3384007164238853889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011863 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A260866.P3384007164238853889

/-! ## A260866.P15254122801808848704

`∑[A030179(2^n)]²`
-/

namespace A260866.P15254122801808848704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030179 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A260866.P15254122801808848704

/-!
# A260867: Least k > 1 that divides A260868(n) + 2^k - 2.

The programs for A260867, there is no canonical definition to state claims against.
-/

/-! ## A260867.P4486878395791558466

`A267999((∑[char[∑[n]]]²-n)^(2^n+1-n²))`
-/

namespace A260867.P4486878395791558466
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267999 (SequenceMachineLib.roundAway (((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) : ℚ) ^ ((2 ^ n : ℤ) + (1 - (n ^ 2 : ℤ)) : ℤ))).toNat

end

end A260867.P4486878395791558466

/-!
# A260869: Least k > 0 such that k^2 + (prime(n)-k)^2 is a prime, or 0 if no such k exists.

The programs for A260869, there is no canonical definition to state claims against.
-/

/-! ## A260869.P13339301997672492046

`A260870(A130290(n+1))`
-/

namespace A260869.P13339301997672492046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260870 (A130290 (n + 1)).toNat

end

end A260869.P13339301997672492046

/-! ## A260869.P13339216792841691312

`A394690(A038518(n+1))`
-/

namespace A260869.P13339216792841691312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394690 (A038518 (n + 1)).toNat

end

end A260869.P13339216792841691312

/-!
# A260870: Least k>0 such that k^2 + (2n+1-k)^2 is prime, or 0 if no such k exists.

The programs for A260870, there is no canonical definition to state claims against.
-/

/-! ## A260870.P1405368923727113232

`gcd(A022330(n), A074679(A022352(n)))`
-/

namespace A260870.P1405368923727113232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022330 n) (A074679 (A022352 n).toNat)

end

end A260870.P1405368923727113232

/-! ## A260870.P618899582226671222

`A211983(A026906(n+1)-A220377(2*n+7))`
-/

namespace A260870.P618899582226671222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211983 (A026906 (n + 1) - A220377 (2 * n + 7)).toNat

end

end A260870.P618899582226671222

/-! ## A260870.P16055119600698394991

`A225743(A007661(n))`
-/

namespace A260870.P16055119600698394991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225743 (A007661 n).toNat

end

end A260870.P16055119600698394991

/-! ## A260870.P5131758038078941549

`A236859(A084215(n))`
-/

namespace A260870.P5131758038078941549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236859 (A084215 n).toNat

end

end A260870.P5131758038078941549

/-! ## A260870.P887255462648081217

`A356226(A073149(n))`
-/

namespace A260870.P887255462648081217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356226 (A073149 n).toNat

end

end A260870.P887255462648081217

/-!
# A260872: Squarefree numbers k such that k+1 has no primes of the form 4*m-1 and at most one 2 in its prime factorization.

The programs for A260872, the canonical program `A260872.P7246468917083718781` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260872 has offset 1).

The definition of A260872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1897 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260872.P5907464523223379947

`∩[A005117(n+1), A008784(n+1)-1]`
-/

namespace A260872.P5907464523223379947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260872.P5907464523223379947

namespace A260872

/-- `∩[A005117(n+1), A008784(n+1)-1]` -/
def P5907464523223379947.Spec : Prop :=
  ∀ n, (P5907464523223379947.a n : ℤ) = A260872 (n + 1)

end A260872

/-! ## A260872.P7246468917083718781

`∩[A008784(n+1)-1, A039955(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A260872

/-- `∩[A008784(n+1)-1, A039955(n+1)]` -/
def P7246468917083718781.Spec : Prop :=
  ∀ n, (P7246468917083718781.a n : ℤ) = A260872 (n + 1)

theorem P7246468917083718781.correct : P7246468917083718781.Spec := by
  intro n
  simp only [A260872, Nat.add_sub_cancel]

end A260872

/-! ## A260872.P2853880238666689572

`∩[A039955(n+1), A072437(n+1)-1]`
-/

namespace A260872.P2853880238666689572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072437 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260872.P2853880238666689572

namespace A260872

/-- `∩[A039955(n+1), A072437(n+1)-1]` -/
def P2853880238666689572.Spec : Prop :=
  ∀ n, (P2853880238666689572.a n : ℤ) = A260872 (n + 1)

end A260872

/-! ## A260872.P7380228150353302025

`∩[A008784(n+1)-1, A089269(n+1)]`
-/

namespace A260872.P7380228150353302025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260872.P7380228150353302025

namespace A260872

/-- `∩[A008784(n+1)-1, A089269(n+1)]` -/
def P7380228150353302025.Spec : Prop :=
  ∀ n, (P7380228150353302025.a n : ℤ) = A260872 (n + 1)

end A260872

/-! ## A260872.P13751739342074602740

`record[A007913(2*(A170818(n+1)-1)+1)]`
-/

namespace A260872.P13751739342074602740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 * (A170818 (n + 1) - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260872.P13751739342074602740

namespace A260872

/-- `record[A007913(2*(A170818(n+1)-1)+1)]` -/
def P13751739342074602740.Spec : Prop :=
  ∀ n, P13751739342074602740.a n = A260872 (n + 1)

end A260872

/-! ## A260872.P8005073878863900111

`record[A007913(A004273(A020882(n+1)))]`
-/

namespace A260872.P8005073878863900111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A004273 (A020882 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260872.P8005073878863900111

namespace A260872

/-- `record[A007913(A004273(A020882(n+1)))]` -/
def P8005073878863900111.Spec : Prop :=
  ∀ n, P8005073878863900111.a n = A260872 (n + 1)

end A260872

/-! ## A260872.P5168739898667648886

`record[A007913(A163985(A008846(n+1)))]`
-/

namespace A260872.P5168739898667648886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A163985 (A008846 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260872.P5168739898667648886

namespace A260872

/-- `record[A007913(A163985(A008846(n+1)))]` -/
def P5168739898667648886.Spec : Prop :=
  ∀ n, P5168739898667648886.a n = A260872 (n + 1)

end A260872

/-! ## A260872.P5598341676675673434

`∩[A008784(n+1)-1, A034044(n+1)]`
-/

namespace A260872.P5598341676675673434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260872.P5598341676675673434

namespace A260872

/-- `∩[A008784(n+1)-1, A034044(n+1)]` -/
def P5598341676675673434.Spec : Prop :=
  ∀ n, (P5598341676675673434.a n : ℤ) = A260872 (n + 1)

end A260872

/-! ## A260872.P13315086245310455026

`∩[A039955(n+1), A372771(n+1)]`
-/

namespace A260872.P13315086245310455026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260872.P13315086245310455026

namespace A260872

/-- `∩[A039955(n+1), A372771(n+1)]` -/
def P13315086245310455026.Spec : Prop :=
  ∀ n, (P13315086245310455026.a n : ℤ) = A260872 (n + 1)

end A260872

/-! ## A260872.P4679036407740023231

`∩[A056911(n+1), A372771(n+1)]`
-/

namespace A260872.P4679036407740023231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260872.P4679036407740023231

namespace A260872

/-- `∩[A056911(n+1), A372771(n+1)]` -/
def P4679036407740023231.Spec : Prop :=
  ∀ n, (P4679036407740023231.a n : ℤ) = A260872 (n + 1)

end A260872

/-! ## A260872.P2255392916198545477

`record[A325314(A042948(A072436(n+1)))]`
-/

namespace A260872.P2255392916198545477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325314 (A042948 (A072436 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260872.P2255392916198545477

namespace A260872

/-- `record[A325314(A042948(A072436(n+1)))]` -/
def P2255392916198545477.Spec : Prop :=
  ∀ n, P2255392916198545477.a n = A260872 (n + 1)

end A260872

/-! ## A260872.P1355414287505531495

`eq[A227781(n+1), A284345(n)]`
-/

namespace A260872.P1355414287505531495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284345 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260872.P1355414287505531495

namespace A260872

/-- `eq[A227781(n+1), A284345(n)]` -/
def P1355414287505531495.Spec : Prop :=
  ∀ n, (P1355414287505531495.a n : ℤ) = A260872 (n + 1)

end A260872

/-! ## A260872.P6263489587037498795

`eq[A227781(n+1), A378843(n)]`
-/

namespace A260872.P6263489587037498795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260872.P6263489587037498795

namespace A260872

/-- `eq[A227781(n+1), A378843(n)]` -/
def P6263489587037498795.Spec : Prop :=
  ∀ n, (P6263489587037498795.a n : ℤ) = A260872 (n + 1)

end A260872

/-! ## A260872.P7009525936317254423

`eq[A323239(n), A337910(n+1)]`
-/

namespace A260872.P7009525936317254423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337910 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260872.P7009525936317254423

namespace A260872

/-- `eq[A323239(n), A337910(n+1)]` -/
def P7009525936317254423.Spec : Prop :=
  ∀ n, (P7009525936317254423.a n : ℤ) = A260872 (n + 1)

end A260872

/-!
# A260873: Lexicographically first sequence of positive integers, every nonempty subset of which has a distinct mean.

The programs for A260873, there is no canonical definition to state claims against.
-/

/-! ## A260873.P15667742794277735416

`eq[1, A380968(n+1)]+1`
-/

namespace A260873.P15667742794277735416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380968 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A260873.P15667742794277735416

/-!
# A260875: Square array read by ascending antidiagonals: number of m-shape complementary Bell numbers.

The programs for A260875, there is no canonical definition to state claims against.
-/

/-! ## A260875.P11097873310947527964

`A316441(A059268(n)^A331160(n))`
-/

namespace A260875.P11097873310947527964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (SequenceMachineLib.roundAway ((A059268 n : ℚ) ^ (A331160 n : ℤ))).toNat

end

end A260875.P11097873310947527964

/-! ## A260875.P3365139156735839563

`A083650(A180662(n)^A070421(n))`
-/

namespace A260875.P3365139156735839563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083650 (SequenceMachineLib.roundAway ((A180662 n : ℚ) ^ (A070421 n : ℤ))).toNat

end

end A260875.P3365139156735839563

/-! ## A260875.P2014262775387009818

`A118404(C(A013609(n), A118383(n+1)))`
-/

namespace A260875.P2014262775387009818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118404 (Nat.choose (A013609 n).toNat (A118383 (n + 1)).toNat)

end

end A260875.P2014262775387009818

/-! ## A260875.P13492056273332902678

`A144411(A275970(n))`
-/

namespace A260875.P13492056273332902678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144411 (A275970 n).toNat

end

end A260875.P13492056273332902678

/-! ## A260875.P4050485283445314376

`A356602(A091042(n))`
-/

namespace A260875.P4050485283445314376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356602 (A091042 n).toNat

end

end A260875.P4050485283445314376

/-!
# A260876: Number of m-shape set partitions, square array read by ascending antidiagonals, A(m,n) for m, n >= 0.

The programs for A260876, there is no canonical definition to state claims against.
-/

/-! ## A260876.P13906410852174653585

`A366580(A287315(n))`
-/

namespace A260876.P13906410852174653585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366580 (A287315 n).toNat

end

end A260876.P13906410852174653585

/-! ## A260876.P13053682046431353343

`A215204(n)+A071986(A259465(n))`
-/

namespace A260876.P13053682046431353343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215204 n + A071986 (A259465 n).toNat

end

end A260876.P13053682046431353343

/-! ## A260876.P125667105775422931

`or(A151667(A002445(n)), A215204(n))`
-/

namespace A260876.P125667105775422931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151667 (A002445 n).toNat) (A215204 n)

end

end A260876.P125667105775422931

/-! ## A260876.P11325906644518867750

`or(A075438(A346494(n+1)), A215204(n))`
-/

namespace A260876.P11325906644518867750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A075438 (A346494 (n + 1)).toNat) (A215204 n)

end

end A260876.P11325906644518867750

/-! ## A260876.P7575057889463015347

`or(A187950(A077232(2*(n+2))), A215204(n))`
-/

namespace A260876.P7575057889463015347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A187950 (A077232 (2 * (n + 2))).toNat) (A215204 n)

end

end A260876.P7575057889463015347

/-!
# A260877: Square array read by ascending antidiagonals: number of m-shape Euler numbers.

The programs for A260877, there is no canonical definition to state claims against.
-/

/-! ## A260877.P6446679019829293685

`A266904(n+1)-A157779(A266904(n+1)²)`
-/

namespace A260877.P6446679019829293685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266904 (n + 1) - A157779 (A266904 (n + 1) ^ 2).toNat

end

end A260877.P6446679019829293685

/-! ## A260877.P11858766660936543766

`A112467(A227725(n))^A143395(n)`
-/

namespace A260877.P11858766660936543766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112467 (A227725 n).toNat : ℚ) ^ (A143395 n : ℤ)

end

end A260877.P11858766660936543766

/-! ## A260877.P17299850823057440868

`A002819(A132885(n^A352361(n)))`
-/

namespace A260877.P17299850823057440868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002819 (A132885 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A352361 n : ℤ))).toNat).toNat

end

end A260877.P17299850823057440868

/-! ## A260877.P18161867786368261390

`A279479(A002262(n)^A264506(n+1))`
-/

namespace A260877.P18161867786368261390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279479 (SequenceMachineLib.roundAway ((A002262 n : ℚ) ^ (A264506 (n + 1) : ℤ))).toNat

end

end A260877.P18161867786368261390

/-!
# A260878: Number of set partitions of {1, 2, ..., 2*n} with sizes in {[n, n], [2n]}.

The programs for A260878, the canonical program `A260878.P18120212369286002216` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260878 has offset 0).

The definition of A260878 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A260878.P18120212369286002216

`((4*n-2)*a(n-1)-3*n+2)/n` with `a(0)=2, a(1)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A260878

/-- `((4*n-2)*a(n-1)-3*n+2)/n` -/
def P18120212369286002216.Spec : Prop :=
  ∀ n, P18120212369286002216.a n = (A260878 n : ℚ)

end A260878

/-! ## A260878.P14061246461627760916

`floor((4-2/n)*a(n-1))-2` with `a(0)=2`
-/

namespace A260878.P14061246461627760916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(4 - 2 / (n : ℚ)) * (a (n - 1) : ℚ)⌋ - 2

end

end A260878.P14061246461627760916

namespace A260878

/-- `floor((4-2/n)*a(n-1))-2` -/
def P14061246461627760916.Spec : Prop :=
  ∀ n, P14061246461627760916.a n = A260878 n

end A260878

/-! ## A260878.P13385147374806838892

`A088218(n)+1`
-/

namespace A260878.P13385147374806838892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n + 1

end

end A260878.P13385147374806838892

namespace A260878

/-- `A088218(n)+1` -/
def P13385147374806838892.Spec : Prop :=
  ∀ n, P13385147374806838892.a n = A260878 n

end A260878

/-! ## A260878.P1214112913666658509

`abs(A110556(n))+1`
-/

namespace A260878.P1214112913666658509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110556 n| + 1

end

end A260878.P1214112913666658509

namespace A260878

/-- `abs(A110556(n))+1` -/
def P1214112913666658509.Spec : Prop :=
  ∀ n, P1214112913666658509.a n = A260878 n

end A260878

/-! ## A260878.P8597027744855316872

`A052473(n+2)-1`
-/

namespace A260878.P8597027744855316872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052473 (n + 2) - 1

end

end A260878.P8597027744855316872

namespace A260878

/-- `A052473(n+2)-1` -/
def P8597027744855316872.Spec : Prop :=
  ∀ n, P8597027744855316872.a n = A260878 n

end A260878

/-! ## A260878.P5064863160329852719

`A210736(2*n)+1`
-/

namespace A260878.P5064863160329852719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (2 * n) + 1

end

end A260878.P5064863160329852719

namespace A260878

/-- `A210736(2*n)+1` -/
def P5064863160329852719.Spec : Prop :=
  ∀ n, P5064863160329852719.a n = A260878 n

end A260878

/-! ## A260878.P4371735187397390867

`(A370487(n)+5)/3`
-/

namespace A260878.P4371735187397390867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370487 n + 5 : ℚ) / 3

end

end A260878.P4371735187397390867

namespace A260878

/-- `(A370487(n)+5)/3` -/
def P4371735187397390867.Spec : Prop :=
  ∀ n, P4371735187397390867.a n = (A260878 n : ℚ)

end A260878

/-! ## A260878.P11666315759871459455

`ceil(A000984(n)/2)+1`
-/

namespace A260878.P11666315759871459455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000984 n : ℚ) / 2⌉ + 1

end

end A260878.P11666315759871459455

namespace A260878

/-- `ceil(A000984(n)/2)+1` -/
def P11666315759871459455.Spec : Prop :=
  ∀ n, P11666315759871459455.a n = A260878 n

end A260878

/-! ## A260878.P15587896470685545460

`A024482(n)+a(n-1)` with `a(0)=2, a(1)=2`
-/

namespace A260878.P15587896470685545460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A024482 n + a (n - 1)

end

end A260878.P15587896470685545460

namespace A260878

/-- `A024482(n)+a(n-1)` -/
def P15587896470685545460.Spec : Prop :=
  ∀ n, P15587896470685545460.a n = A260878 n

end A260878

/-! ## A260878.P15924737093966919079

`A097613(n)+a(n-1)` with `a(0)=2, a(1)=2`
-/

namespace A260878.P15924737093966919079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A097613 n + a (n - 1)

end

end A260878.P15924737093966919079

namespace A260878

/-- `A097613(n)+a(n-1)` -/
def P15924737093966919079.Spec : Prop :=
  ∀ n, P15924737093966919079.a n = A260878 n

end A260878

/-! ## A260878.P9681617870754932632

`A182027(2*n+1)/2+1`
-/

namespace A260878.P9681617870754932632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182027 (2 * n + 1) : ℚ) / 2 + 1

end

end A260878.P9681617870754932632

namespace A260878

/-- `A182027(2*n+1)/2+1` -/
def P9681617870754932632.Spec : Prop :=
  ∀ n, P9681617870754932632.a n = (A260878 n : ℚ)

end A260878

/-! ## A260878.P9066490455993771559

`ceil((n+1)*A000108(n)/2)+1`
-/

namespace A260878.P9066490455993771559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1 : ℤ) * A000108 n : ℚ) / 2⌉ + 1

end

end A260878.P9066490455993771559

namespace A260878

/-- `ceil((n+1)*A000108(n)/2)+1` -/
def P9066490455993771559.Spec : Prop :=
  ∀ n, P9066490455993771559.a n = A260878 n

end A260878

/-! ## A260878.P6245581844043129978

`A051920(A004273(n))`
-/

namespace A260878.P6245581844043129978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 (A004273 n).toNat

end

end A260878.P6245581844043129978

namespace A260878

/-- `A051920(A004273(n))` -/
def P6245581844043129978.Spec : Prop :=
  ∀ n, P6245581844043129978.a n = A260878 n

end A260878

/-! ## A260878.P7519496747096369867

`A051920(record[A006257(n)])`
-/

namespace A260878.P7519496747096369867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A260878.P7519496747096369867

namespace A260878

/-- `A051920(record[A006257(n)])` -/
def P7519496747096369867.Spec : Prop :=
  ∀ n, P7519496747096369867.a n = A260878 n

end A260878

/-! ## A260878.P9839428610239991309

`A051920(record[A026741(n)])`
-/

namespace A260878.P9839428610239991309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A260878.P9839428610239991309

namespace A260878

/-- `A051920(record[A026741(n)])` -/
def P9839428610239991309.Spec : Prop :=
  ∀ n, P9839428610239991309.a n = A260878 n

end A260878

/-! ## A260878.P1899179035027816207

`A051920(record[A106609(n)])`
-/

namespace A260878.P1899179035027816207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A260878.P1899179035027816207

namespace A260878

/-- `A051920(record[A106609(n)])` -/
def P1899179035027816207.Spec : Prop :=
  ∀ n, P1899179035027816207.a n = A260878 n

end A260878

/-! ## A260878.P16557963757396892669

`A051920(A004277(n)-1)`
-/

namespace A260878.P16557963757396892669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 (A004277 n - 1).toNat

end

end A260878.P16557963757396892669

namespace A260878

/-- `A051920(A004277(n)-1)` -/
def P16557963757396892669.Spec : Prop :=
  ∀ n, P16557963757396892669.a n = A260878 n

end A260878

/-! ## A260878.P14841202759387308335

`A006481(A300576(n+2))`
-/

namespace A260878.P14841202759387308335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006481 (A300576 (n + 2)).toNat

end

end A260878.P14841202759387308335

namespace A260878

/-- `A006481(A300576(n+2))` -/
def P14841202759387308335.Spec : Prop :=
  ∀ n, P14841202759387308335.a n = A260878 n

end A260878

/-! ## A260878.P879642269683779400

`A051920(floor(sqrt(A002939(n))))`
-/

namespace A260878.P879642269683779400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 (Int.sqrt (A002939 n)).toNat

end

end A260878.P879642269683779400

namespace A260878

/-- `A051920(floor(sqrt(A002939(n))))` -/
def P879642269683779400.Spec : Prop :=
  ∀ n, P879642269683779400.a n = A260878 n

end A260878

/-! ## A260878.P10720923674511136393

`A001700(log2(A011782(n)))+1`
-/

namespace A260878.P10720923674511136393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat + 1

end

end A260878.P10720923674511136393

namespace A260878

/-- `A001700(log2(A011782(n)))+1` -/
def P10720923674511136393.Spec : Prop :=
  ∀ n, P10720923674511136393.a n = A260878 n

end A260878

/-!
# A260879: Coefficients in asymptotic expansion of sequence A229741.

The programs for A260879, there is no canonical definition to state claims against.
-/

/-! ## A260879.P7202695623800901034

`A131055(A007047(n)-∑[n])`
-/

namespace A260879.P7202695623800901034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131055 (A007047 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A260879.P7202695623800901034

/-! ## A260879.P12695563591734746136

`A253249(A002110(n))-A139250(n)`
-/

namespace A260879.P12695563591734746136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253249 (A002110 n).toNat - A139250 n

end

end A260879.P12695563591734746136

/-!
# A260881: Number of trapezoidal words of length n.

The programs for A260881, there is no canonical definition to state claims against.
-/

/-! ## A260881.P13594101100578742791

`∑[xor(1, A209973(n)/4)]`
-/

namespace A260881.P13594101100578742791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (SequenceMachineLib.roundAway ((A209973 n : ℚ) / 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260881.P13594101100578742791

/-! ## A260881.P3384280465564828345

`∑[xor(1, round(A209984(n)/32))]`
-/

namespace A260881.P3384280465564828345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (SequenceMachineLib.roundAway ((A209984 n : ℚ) / 32))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260881.P3384280465564828345

/-! ## A260881.P3868223715438967154

`∑[xor(1, A209974(n))]`
-/

namespace A260881.P3868223715438967154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A209974 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260881.P3868223715438967154

/-! ## A260881.P4751541311237864926

`∑[A004442(A209974(n))]`
-/

namespace A260881.P4751541311237864926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A209974 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260881.P4751541311237864926

/-! ## A260881.P16931124184049103269

`∑[A004442(A209973(n)/4)]`
-/

namespace A260881.P16931124184049103269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.roundAway ((A209973 n : ℚ) / 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260881.P16931124184049103269

/-! ## A260881.P13625516779359488921

`∑[A004442(round(A209984(n)/32))]`
-/

namespace A260881.P13625516779359488921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.roundAway ((A209984 n : ℚ) / 32)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260881.P13625516779359488921

/-! ## A260881.P17752115880531625117

`∑[xor(1, round(A209985(n)/8))]`
-/

namespace A260881.P17752115880531625117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (SequenceMachineLib.roundAway ((A209985 n : ℚ) / 8))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260881.P17752115880531625117

/-! ## A260881.P17754631484062173326

`∑[A280193(A209975(n))+A209974(n)]`
-/

namespace A260881.P17754631484062173326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A209975 n).toNat + A209974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260881.P17754631484062173326

/-!
# A260884: Number of set partitions of a 2n-set into even blocks which have even length minus the number of partitions into even blocks which have odd length.

The programs for A260884, there is no canonical definition to state claims against.
-/

/-! ## A260884.P1576691048854702014

`A059386(n)-A059385(n)`
-/

namespace A260884.P1576691048854702014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059386 n - A059385 n

end

end A260884.P1576691048854702014

/-! ## A260884.P13683134855172291215

`2*A059386(n)-A005046(n)`
-/

namespace A260884.P13683134855172291215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059386 n - A005046 n

end

end A260884.P13683134855172291215

/-! ## A260884.P15336534452560007367

`A005046(n)-2*A059385(n)`
-/

namespace A260884.P15336534452560007367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005046 n - 2 * A059385 n

end

end A260884.P15336534452560007367

/-! ## A260884.P4945410320975944551

`A081557(abs(1-2*n))-A059385(n)-A059385(n)`
-/

namespace A260884.P4945410320975944551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081557 |1 - (2 * n : ℤ)|.toNat - A059385 n - A059385 n

end

end A260884.P4945410320975944551

/-! ## A260884.P79166314111742159

`A059386(n)-(A081557(abs(1-2*n))-A059386(n))`
-/

namespace A260884.P79166314111742159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059386 n - (A081557 |1 - (2 * n : ℤ)|.toNat - A059386 n)

end

end A260884.P79166314111742159

/-!
# A260887: Sum over the genera g of the number of immersions of an oriented circle with n crossings in an unoriented surface of genus g.

The programs for A260887, there is no canonical definition to state claims against.
-/

/-! ## A260887.P14528861473006817953

`A076487(A355083(n)+n)`
-/

namespace A260887.P14528861473006817953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076487 (A355083 n + (n : ℤ)).toNat

end

end A260887.P14528861473006817953

/-!
# A260889: Primes having only {1, 2, 7} as digits.

The programs for A260889, the canonical program `A260889.P9318002860261783175` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260889 has offset 1).

The definition of A260889 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1366 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260889.P12981605591912400703

`∩[A386020(n+1), A386102(n+1)]`
-/

namespace A260889.P12981605591912400703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260889.P12981605591912400703

namespace A260889

/-- `∩[A386020(n+1), A386102(n+1)]` -/
def P12981605591912400703.Spec : Prop :=
  ∀ n, (P12981605591912400703.a n : ℤ) = A260889 (n + 1)

end A260889

/-! ## A260889.P17726635260943682787

`∩[A386020(n+1), A386099(n+1)]`
-/

namespace A260889.P17726635260943682787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260889.P17726635260943682787

namespace A260889

/-- `∩[A386020(n+1), A386099(n+1)]` -/
def P17726635260943682787.Spec : Prop :=
  ∀ n, (P17726635260943682787.a n : ℤ) = A260889 (n + 1)

end A260889

/-! ## A260889.P9318002860261783175

`∩[A386020(n+1), A386093(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A260889

/-- `∩[A386020(n+1), A386093(n+1)]` -/
def P9318002860261783175.Spec : Prop :=
  ∀ n, (P9318002860261783175.a n : ℤ) = A260889 (n + 1)

theorem P9318002860261783175.correct : P9318002860261783175.Spec := by
  intro n
  simp only [A260889, Nat.add_sub_cancel]

end A260889

/-! ## A260889.P18076934245213526650

`∩[A386093(n+1), A386099(n+1)]`
-/

namespace A260889.P18076934245213526650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260889.P18076934245213526650

namespace A260889

/-- `∩[A386093(n+1), A386099(n+1)]` -/
def P18076934245213526650.Spec : Prop :=
  ∀ n, (P18076934245213526650.a n : ℤ) = A260889 (n + 1)

end A260889

/-! ## A260889.P14273662196108437484

`∩[A386093(n+1), A386102(n+1)]`
-/

namespace A260889.P14273662196108437484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260889.P14273662196108437484

namespace A260889

/-- `∩[A386093(n+1), A386102(n+1)]` -/
def P14273662196108437484.Spec : Prop :=
  ∀ n, (P14273662196108437484.a n : ℤ) = A260889 (n + 1)

end A260889

/-! ## A260889.P9017962233230541705

`∩[A386020(n+1), A386096(n+1)]`
-/

namespace A260889.P9017962233230541705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260889.P9017962233230541705

namespace A260889

/-- `∩[A386020(n+1), A386096(n+1)]` -/
def P9017962233230541705.Spec : Prop :=
  ∀ n, (P9017962233230541705.a n : ℤ) = A260889 (n + 1)

end A260889

/-! ## A260889.P10893272442503847958

`∩[A386093(n+1), A386096(n+1)]`
-/

namespace A260889.P10893272442503847958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260889.P10893272442503847958

namespace A260889

/-- `∩[A386093(n+1), A386096(n+1)]` -/
def P10893272442503847958.Spec : Prop :=
  ∀ n, (P10893272442503847958.a n : ℤ) = A260889 (n + 1)

end A260889

/-! ## A260889.P10202167648397522498

`∩[A386020(n+1), A386103(n+1)]`
-/

namespace A260889.P10202167648397522498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260889.P10202167648397522498

namespace A260889

/-- `∩[A386020(n+1), A386103(n+1)]` -/
def P10202167648397522498.Spec : Prop :=
  ∀ n, (P10202167648397522498.a n : ℤ) = A260889 (n + 1)

end A260889

/-! ## A260889.P12490417406460758901

`∩[A386093(n+1), A386103(n+1)]`
-/

namespace A260889.P12490417406460758901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260889.P12490417406460758901

namespace A260889

/-- `∩[A386093(n+1), A386103(n+1)]` -/
def P12490417406460758901.Spec : Prop :=
  ∀ n, (P12490417406460758901.a n : ℤ) = A260889 (n + 1)

end A260889

/-! ## A260889.P11992134647220095218

`∩[A386102(n+1), A386103(n+1)]`
-/

namespace A260889.P11992134647220095218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260889.P11992134647220095218

namespace A260889

/-- `∩[A386102(n+1), A386103(n+1)]` -/
def P11992134647220095218.Spec : Prop :=
  ∀ n, (P11992134647220095218.a n : ℤ) = A260889 (n + 1)

end A260889

/-! ## A260889.P424224143257097433

`∩[A386020(n+1), A386088(n+1)]`
-/

namespace A260889.P424224143257097433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260889.P424224143257097433

namespace A260889

/-- `∩[A386020(n+1), A386088(n+1)]` -/
def P424224143257097433.Spec : Prop :=
  ∀ n, (P424224143257097433.a n : ℤ) = A260889 (n + 1)

end A260889

/-! ## A260889.P11094946499572669851

`∩[A386088(n+1), A386093(n+1)]`
-/

namespace A260889.P11094946499572669851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260889.P11094946499572669851

namespace A260889

/-- `∩[A386088(n+1), A386093(n+1)]` -/
def P11094946499572669851.Spec : Prop :=
  ∀ n, (P11094946499572669851.a n : ℤ) = A260889 (n + 1)

end A260889

/-! ## A260889.P11663952389420082395

`∩[A386088(n+1), A386096(n+1)]`
-/

namespace A260889.P11663952389420082395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260889.P11663952389420082395

namespace A260889

/-- `∩[A386088(n+1), A386096(n+1)]` -/
def P11663952389420082395.Spec : Prop :=
  ∀ n, (P11663952389420082395.a n : ℤ) = A260889 (n + 1)

end A260889

/-! ## A260889.P16118790038686101704

`∩[A386088(n+1), A386099(n+1)]`
-/

namespace A260889.P16118790038686101704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260889.P16118790038686101704

namespace A260889

/-- `∩[A386088(n+1), A386099(n+1)]` -/
def P16118790038686101704.Spec : Prop :=
  ∀ n, (P16118790038686101704.a n : ℤ) = A260889 (n + 1)

end A260889

/-! ## A260889.P4802450758021678701

`∩[A386088(n+1), A386102(n+1)]`
-/

namespace A260889.P4802450758021678701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260889.P4802450758021678701

namespace A260889

/-- `∩[A386088(n+1), A386102(n+1)]` -/
def P4802450758021678701.Spec : Prop :=
  ∀ n, (P4802450758021678701.a n : ℤ) = A260889 (n + 1)

end A260889

/-! ## A260889.P899643325594144781

`∩[A386088(n+1), A386103(n+1)]`
-/

namespace A260889.P899643325594144781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260889.P899643325594144781

namespace A260889

/-- `∩[A386088(n+1), A386103(n+1)]` -/
def P899643325594144781.Spec : Prop :=
  ∀ n, (P899643325594144781.a n : ℤ) = A260889 (n + 1)

end A260889

/-! ## A260889.P5013336271038291792

`∩[A247052(n+1), A386020(n+1)]`
-/

namespace A260889.P5013336271038291792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260889.P5013336271038291792

namespace A260889

/-- `∩[A247052(n+1), A386020(n+1)]` -/
def P5013336271038291792.Spec : Prop :=
  ∀ n, (P5013336271038291792.a n : ℤ) = A260889 (n + 1)

end A260889

/-! ## A260889.P6095275951029849486

`∩[A247052(n+1), A386088(n+1)]`
-/

namespace A260889.P6095275951029849486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260889.P6095275951029849486

namespace A260889

/-- `∩[A247052(n+1), A386088(n+1)]` -/
def P6095275951029849486.Spec : Prop :=
  ∀ n, (P6095275951029849486.a n : ℤ) = A260889 (n + 1)

end A260889

/-! ## A260889.P5250857408176210718

`∩[A247052(n+1), A386099(n+1)]`
-/

namespace A260889.P5250857408176210718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260889.P5250857408176210718

namespace A260889

/-- `∩[A247052(n+1), A386099(n+1)]` -/
def P5250857408176210718.Spec : Prop :=
  ∀ n, (P5250857408176210718.a n : ℤ) = A260889 (n + 1)

end A260889

/-! ## A260889.P9121553487396048877

`∩[A247052(n+1), A386102(n+1)]`
-/

namespace A260889.P9121553487396048877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260889.P9121553487396048877

namespace A260889

/-- `∩[A247052(n+1), A386102(n+1)]` -/
def P9121553487396048877.Spec : Prop :=
  ∀ n, (P9121553487396048877.a n : ℤ) = A260889 (n + 1)

end A260889

/-!
# A260890: The number of overpartitions of n with restricted odd differences.

The programs for A260890, there is no canonical definition to state claims against.
-/

/-! ## A260890.P11861917671677545644

`A298303(A086543(n+1))`
-/

namespace A260890.P11861917671677545644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298303 (A086543 (n + 1)).toNat

end

end A260890.P11861917671677545644

/-! ## A260890.P2736376277098733429

`A298303(A241642(n+1))`
-/

namespace A260890.P2736376277098733429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298303 (A241642 (n + 1)).toNat

end

end A260890.P2736376277098733429

/-! ## A260890.P13181490040835692948

`A102800(A335602(n))`
-/

namespace A260890.P13181490040835692948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102800 (A335602 n).toNat

end

end A260890.P13181490040835692948

/-! ## A260890.P7761748526506864367

`A295084(A392063(n+1))`
-/

namespace A260890.P7761748526506864367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295084 (A392063 (n + 1)).toNat

end

end A260890.P7761748526506864367

/-! ## A260890.P2138406436647128039

`A092549(n)+Δ[A055642(A185053(n))]`
-/

namespace A260890.P2138406436647128039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A185053 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092549 n + (f1 (n + 1) - f1 n)

end

end A260890.P2138406436647128039

/-!
# A260891: Primes having only {1, 6, 7} as digits.

The programs for A260891, there is no canonical definition to state claims against.
-/

/-! ## A260891.P15019114979084548095

`∩[A386035(n+1), A386135(n+1)]`
-/

namespace A260891.P15019114979084548095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260891.P15019114979084548095

/-! ## A260891.P4979860275478801223

`∩[A386035(n+1), A386099(n+1)]`
-/

namespace A260891.P4979860275478801223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260891.P4979860275478801223

/-! ## A260891.P10451283205293319936

`∩[A386035(n+1), A386129(n+1)]`
-/

namespace A260891.P10451283205293319936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260891.P10451283205293319936

/-! ## A260891.P1942023530156344505

`∩[A386099(n+1), A386129(n+1)]`
-/

namespace A260891.P1942023530156344505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260891.P1942023530156344505

/-! ## A260891.P7209657999965397418

`∩[A386099(n+1), A386135(n+1)]`
-/

namespace A260891.P7209657999965397418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260891.P7209657999965397418

/-! ## A260891.P15027046345233255802

`∩[A386129(n+1), A386135(n+1)]`
-/

namespace A260891.P15027046345233255802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260891.P15027046345233255802

/-! ## A260891.P3816068651650879324

`∩[A386035(n+1), A386123(n+1)]`
-/

namespace A260891.P3816068651650879324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260891.P3816068651650879324

/-! ## A260891.P11078397633753306307

`∩[A386099(n+1), A386123(n+1)]`
-/

namespace A260891.P11078397633753306307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260891.P11078397633753306307

/-! ## A260891.P1545717560761038038

`∩[A386123(n+1), A386129(n+1)]`
-/

namespace A260891.P1545717560761038038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260891.P1545717560761038038

/-! ## A260891.P13498387735502852709

`∩[A386123(n+1), A386135(n+1)]`
-/

namespace A260891.P13498387735502852709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260891.P13498387735502852709

/-! ## A260891.P4615802351576030095

`∩[A386035(n+1), A386136(n+1)]`
-/

namespace A260891.P4615802351576030095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260891.P4615802351576030095

/-! ## A260891.P14228787528031125835

`∩[A386099(n+1), A386136(n+1)]`
-/

namespace A260891.P14228787528031125835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260891.P14228787528031125835

/-! ## A260891.P7940726421336822763

`∩[A386123(n+1), A386136(n+1)]`
-/

namespace A260891.P7940726421336822763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260891.P7940726421336822763

/-! ## A260891.P11174457012211530389

`∩[A386129(n+1), A386136(n+1)]`
-/

namespace A260891.P11174457012211530389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260891.P11174457012211530389

/-! ## A260891.P10738914896088676965

`∩[A386136(n+1), A386135(n+1)]`
-/

namespace A260891.P10738914896088676965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260891.P10738914896088676965

/-! ## A260891.P5397355339547330422

`∩[A386035(n+1), A386114(n+1)]`
-/

namespace A260891.P5397355339547330422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260891.P5397355339547330422

/-! ## A260891.P4340047999114040518

`∩[A386099(n+1), A386114(n+1)]`
-/

namespace A260891.P4340047999114040518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260891.P4340047999114040518

/-! ## A260891.P11062760863558018336

`∩[A386114(n+1), A386123(n+1)]`
-/

namespace A260891.P11062760863558018336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260891.P11062760863558018336

/-! ## A260891.P4937449533494749601

`∩[A386114(n+1), A386129(n+1)]`
-/

namespace A260891.P4937449533494749601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260891.P4937449533494749601

/-! ## A260891.P12731243708975981158

`∩[A386114(n+1), A386135(n+1)]`
-/

namespace A260891.P12731243708975981158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260891.P12731243708975981158

/-!
# A260892: Primes having only {1, 7, 8} as digits.

The programs for A260892, there is no canonical definition to state claims against.
-/

/-! ## A260892.P14280850705245100412

`∩[A386038(n+1), A386126(n+1)]`
-/

namespace A260892.P14280850705245100412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260892.P14280850705245100412

/-! ## A260892.P3999575774989780731

`∩[A386038(n+1), A386102(n+1)]`
-/

namespace A260892.P3999575774989780731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260892.P3999575774989780731

/-! ## A260892.P13205921028076621199

`∩[A386038(n+1), A386135(n+1)]`
-/

namespace A260892.P13205921028076621199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260892.P13205921028076621199

/-! ## A260892.P10304494033560761261

`∩[A386102(n+1), A386126(n+1)]`
-/

namespace A260892.P10304494033560761261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260892.P10304494033560761261

/-! ## A260892.P1147914622664648845

`∩[A386102(n+1), A386135(n+1)]`
-/

namespace A260892.P1147914622664648845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260892.P1147914622664648845

/-! ## A260892.P7956601112858301591

`∩[A386126(n+1), A386135(n+1)]`
-/

namespace A260892.P7956601112858301591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260892.P7956601112858301591

/-! ## A260892.P1089792057048270423

`∩[A386038(n+1), A386132(n+1)]`
-/

namespace A260892.P1089792057048270423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260892.P1089792057048270423

/-! ## A260892.P6891060430467877967

`∩[A386102(n+1), A386132(n+1)]`
-/

namespace A260892.P6891060430467877967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260892.P6891060430467877967

/-! ## A260892.P986097884908885107

`∩[A386126(n+1), A386132(n+1)]`
-/

namespace A260892.P986097884908885107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260892.P986097884908885107

/-! ## A260892.P16044967603911673474

`∩[A386132(n+1), A386135(n+1)]`
-/

namespace A260892.P16044967603911673474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260892.P16044967603911673474

/-! ## A260892.P11871229660984128055

`∩[A386038(n+1), A386117(n+1)]`
-/

namespace A260892.P11871229660984128055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260892.P11871229660984128055

/-! ## A260892.P16877676330942667420

`∩[A386038(n+1), A386138(n+1)]`
-/

namespace A260892.P16877676330942667420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260892.P16877676330942667420

/-! ## A260892.P8609924977104361729

`∩[A386102(n+1), A386117(n+1)]`
-/

namespace A260892.P8609924977104361729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260892.P8609924977104361729

/-! ## A260892.P17327418439369829062

`∩[A386102(n+1), A386138(n+1)]`
-/

namespace A260892.P17327418439369829062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260892.P17327418439369829062

/-! ## A260892.P8710831110786498350

`∩[A386117(n+1), A386126(n+1)]`
-/

namespace A260892.P8710831110786498350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260892.P8710831110786498350

/-! ## A260892.P18004777108388272129

`∩[A386117(n+1), A386132(n+1)]`
-/

namespace A260892.P18004777108388272129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260892.P18004777108388272129

/-! ## A260892.P12278442861294249954

`∩[A386117(n+1), A386135(n+1)]`
-/

namespace A260892.P12278442861294249954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260892.P12278442861294249954

/-! ## A260892.P6915458788775490594

`∩[A386117(n+1), A386138(n+1)]`
-/

namespace A260892.P6915458788775490594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260892.P6915458788775490594

/-! ## A260892.P3408501061780234272

`∩[A386126(n+1), A386138(n+1)]`
-/

namespace A260892.P3408501061780234272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260892.P3408501061780234272

/-! ## A260892.P1404168733484406383

`∩[A386132(n+1), A386138(n+1)]`
-/

namespace A260892.P1404168733484406383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260892.P1404168733484406383

/-!
# A260893: Primes having only {1, 7, 9} as digits.

The programs for A260893, the canonical program `A260893.P11609524352800915842` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260893 has offset 1).

The definition of A260893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1586 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260893.P2251718114020690933

`∩[A386039(n+1), A386127(n+1)]`
-/

namespace A260893.P2251718114020690933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260893.P2251718114020690933

namespace A260893

/-- `∩[A386039(n+1), A386127(n+1)]` -/
def P2251718114020690933.Spec : Prop :=
  ∀ n, (P2251718114020690933.a n : ℤ) = A260893 (n + 1)

end A260893

/-! ## A260893.P11609524352800915842

`∩[A386039(n+1), A386133(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A260893

/-- `∩[A386039(n+1), A386133(n+1)]` -/
def P11609524352800915842.Spec : Prop :=
  ∀ n, (P11609524352800915842.a n : ℤ) = A260893 (n + 1)

theorem P11609524352800915842.correct : P11609524352800915842.Spec := by
  intro n
  simp only [A260893, Nat.add_sub_cancel]

end A260893

/-! ## A260893.P9978574381916616625

`∩[A386127(n+1), A386133(n+1)]`
-/

namespace A260893.P9978574381916616625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260893.P9978574381916616625

namespace A260893

/-- `∩[A386127(n+1), A386133(n+1)]` -/
def P9978574381916616625.Spec : Prop :=
  ∀ n, (P9978574381916616625.a n : ℤ) = A260893 (n + 1)

end A260893

/-! ## A260893.P2386637161009230341

`∩[A386039(n+1), A386136(n+1)]`
-/

namespace A260893.P2386637161009230341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260893.P2386637161009230341

namespace A260893

/-- `∩[A386039(n+1), A386136(n+1)]` -/
def P2386637161009230341.Spec : Prop :=
  ∀ n, (P2386637161009230341.a n : ℤ) = A260893 (n + 1)

end A260893

/-! ## A260893.P14875367001936725359

`∩[A386127(n+1), A386136(n+1)]`
-/

namespace A260893.P14875367001936725359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260893.P14875367001936725359

namespace A260893

/-- `∩[A386127(n+1), A386136(n+1)]` -/
def P14875367001936725359.Spec : Prop :=
  ∀ n, (P14875367001936725359.a n : ℤ) = A260893 (n + 1)

end A260893

/-! ## A260893.P7484357778450174017

`∩[A386133(n+1), A386136(n+1)]`
-/

namespace A260893.P7484357778450174017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260893.P7484357778450174017

namespace A260893

/-- `∩[A386133(n+1), A386136(n+1)]` -/
def P7484357778450174017.Spec : Prop :=
  ∀ n, (P7484357778450174017.a n : ℤ) = A260893 (n + 1)

end A260893

/-! ## A260893.P16005524050729372248

`∩[A386039(n+1), A386103(n+1)]`
-/

namespace A260893.P16005524050729372248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260893.P16005524050729372248

namespace A260893

/-- `∩[A386039(n+1), A386103(n+1)]` -/
def P16005524050729372248.Spec : Prop :=
  ∀ n, (P16005524050729372248.a n : ℤ) = A260893 (n + 1)

end A260893

/-! ## A260893.P6375466147351161729

`∩[A386103(n+1), A386127(n+1)]`
-/

namespace A260893.P6375466147351161729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260893.P6375466147351161729

namespace A260893

/-- `∩[A386103(n+1), A386127(n+1)]` -/
def P6375466147351161729.Spec : Prop :=
  ∀ n, (P6375466147351161729.a n : ℤ) = A260893 (n + 1)

end A260893

/-! ## A260893.P8716250307102688952

`∩[A386103(n+1), A386133(n+1)]`
-/

namespace A260893.P8716250307102688952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260893.P8716250307102688952

namespace A260893

/-- `∩[A386103(n+1), A386133(n+1)]` -/
def P8716250307102688952.Spec : Prop :=
  ∀ n, (P8716250307102688952.a n : ℤ) = A260893 (n + 1)

end A260893

/-! ## A260893.P15939708286188781290

`∩[A386103(n+1), A386136(n+1)]`
-/

namespace A260893.P15939708286188781290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260893.P15939708286188781290

namespace A260893

/-- `∩[A386103(n+1), A386136(n+1)]` -/
def P15939708286188781290.Spec : Prop :=
  ∀ n, (P15939708286188781290.a n : ℤ) = A260893 (n + 1)

end A260893

/-! ## A260893.P15768278958157031666

`∩[A386039(n+1), A386138(n+1)]`
-/

namespace A260893.P15768278958157031666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260893.P15768278958157031666

namespace A260893

/-- `∩[A386039(n+1), A386138(n+1)]` -/
def P15768278958157031666.Spec : Prop :=
  ∀ n, (P15768278958157031666.a n : ℤ) = A260893 (n + 1)

end A260893

/-! ## A260893.P6789971228152496520

`∩[A386103(n+1), A386138(n+1)]`
-/

namespace A260893.P6789971228152496520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260893.P6789971228152496520

namespace A260893

/-- `∩[A386103(n+1), A386138(n+1)]` -/
def P6789971228152496520.Spec : Prop :=
  ∀ n, (P6789971228152496520.a n : ℤ) = A260893 (n + 1)

end A260893

/-! ## A260893.P14580248377210059349

`∩[A386127(n+1), A386138(n+1)]`
-/

namespace A260893.P14580248377210059349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260893.P14580248377210059349

namespace A260893

/-- `∩[A386127(n+1), A386138(n+1)]` -/
def P14580248377210059349.Spec : Prop :=
  ∀ n, (P14580248377210059349.a n : ℤ) = A260893 (n + 1)

end A260893

/-! ## A260893.P4172398639812378123

`∩[A386133(n+1), A386138(n+1)]`
-/

namespace A260893.P4172398639812378123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260893.P4172398639812378123

namespace A260893

/-- `∩[A386133(n+1), A386138(n+1)]` -/
def P4172398639812378123.Spec : Prop :=
  ∀ n, (P4172398639812378123.a n : ℤ) = A260893 (n + 1)

end A260893

/-! ## A260893.P16024375181677295533

`∩[A091633(n+1), A386039(n+1)]`
-/

namespace A260893.P16024375181677295533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260893.P16024375181677295533

namespace A260893

/-- `∩[A091633(n+1), A386039(n+1)]` -/
def P16024375181677295533.Spec : Prop :=
  ∀ n, (P16024375181677295533.a n : ℤ) = A260893 (n + 1)

end A260893

/-! ## A260893.P3305505967555750241

`∩[A091633(n+1), A386103(n+1)]`
-/

namespace A260893.P3305505967555750241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260893.P3305505967555750241

namespace A260893

/-- `∩[A091633(n+1), A386103(n+1)]` -/
def P3305505967555750241.Spec : Prop :=
  ∀ n, (P3305505967555750241.a n : ℤ) = A260893 (n + 1)

end A260893

/-! ## A260893.P5285158253559881790

`∩[A091633(n+1), A386127(n+1)]`
-/

namespace A260893.P5285158253559881790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260893.P5285158253559881790

namespace A260893

/-- `∩[A091633(n+1), A386127(n+1)]` -/
def P5285158253559881790.Spec : Prop :=
  ∀ n, (P5285158253559881790.a n : ℤ) = A260893 (n + 1)

end A260893

/-! ## A260893.P2304924897871677604

`∩[A091633(n+1), A386133(n+1)]`
-/

namespace A260893.P2304924897871677604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260893.P2304924897871677604

namespace A260893

/-- `∩[A091633(n+1), A386133(n+1)]` -/
def P2304924897871677604.Spec : Prop :=
  ∀ n, (P2304924897871677604.a n : ℤ) = A260893 (n + 1)

end A260893

/-! ## A260893.P9102761561600223244

`∩[A091633(n+1), A386136(n+1)]`
-/

namespace A260893.P9102761561600223244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260893.P9102761561600223244

namespace A260893

/-- `∩[A091633(n+1), A386136(n+1)]` -/
def P9102761561600223244.Spec : Prop :=
  ∀ n, (P9102761561600223244.a n : ℤ) = A260893 (n + 1)

end A260893

/-! ## A260893.P5886024126076937182

`∩[A091633(n+1), A386138(n+1)]`
-/

namespace A260893.P5886024126076937182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260893.P5886024126076937182

namespace A260893

/-- `∩[A091633(n+1), A386138(n+1)]` -/
def P5886024126076937182.Spec : Prop :=
  ∀ n, (P5886024126076937182.a n : ℤ) = A260893 (n + 1)

end A260893

/-!
# A260894: G.f.: Sum_{n>=0} x^n * Product_{k=1..n} (1 - x^(n+k))/(1 - x^k).

The programs for A260894, there is no canonical definition to state claims against.
-/

/-! ## A260894.P12548188316010912235

`∑[A325193(n)]`
-/

namespace A260894.P12548188316010912235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260894.P12548188316010912235

/-! ## A260894.P8933790978278577365

`A129528(n)+A064173(A028310(n))`
-/

namespace A260894.P8933790978278577365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129528 n + A064173 (A028310 n).toNat

end

end A260894.P8933790978278577365

/-! ## A260894.P14303524162758494281

`A000041(n)-A123975(A028310(n))`
-/

namespace A260894.P14303524162758494281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A123975 (A028310 n).toNat

end

end A260894.P14303524162758494281

/-! ## A260894.P14255091139003195214

`A064174(n+1)-A101199(A028310(n))`
-/

namespace A260894.P14255091139003195214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064174 (n + 1) - A101199 (A028310 n).toNat

end

end A260894.P14255091139003195214

/-! ## A260894.P3801645965159781931

`A064174(n+1)-A101199(A233583(n+1))`
-/

namespace A260894.P3801645965159781931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064174 (n + 1) - A101199 (A233583 (n + 1)).toNat

end

end A260894.P3801645965159781931

/-! ## A260894.P13707068047774368507

`A000041(n+1)-A064173(n+1)-A101199(A028310(n))`
-/

namespace A260894.P13707068047774368507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A064173 (n + 1) - A101199 (A028310 n).toNat

end

end A260894.P13707068047774368507

/-!
# A260895: Number of primes in n-th row of triangle A077664.

The programs for A260895, there is no canonical definition to state claims against.
-/

/-! ## A260895.P467294283670135827

`A000720(A077665(n+1))-A000720(n+1)`
-/

namespace A260895.P467294283670135827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A077665 (n + 1)).toNat - A000720 (n + 1)

end

end A260895.P467294283670135827

/-! ## A260895.P12921776717247568474

`A036234(A077665(n+1))-A036234(n+1)`
-/

namespace A260895.P12921776717247568474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A077665 (n + 1)).toNat - A036234 (n + 1)

end

end A260895.P12921776717247568474

/-! ## A260895.P8848615988643902498

`A230980(A077665(n+1))-∑[A010051(n+1)]`
-/

namespace A260895.P8848615988643902498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A077665 (n + 1)).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260895.P8848615988643902498

/-! ## A260895.P9473596552151859226

`A000720(A069213(n+1)+n+1)-A000720(n+1)`
-/

namespace A260895.P9473596552151859226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A069213 (n + 1) + (n : ℤ) + 1).toNat - A000720 (n + 1)

end

end A260895.P9473596552151859226

/-! ## A260895.P16759529764166022335

`A230980(A077665(n+1))-(A230980(n)+A010051(n+1))`
-/

namespace A260895.P16759529764166022335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A077665 (n + 1)).toNat - (A230980 n + A010051 (n + 1))

end

end A260895.P16759529764166022335

/-! ## A260895.P11987465350128584306

`A000720(A077664(∑[n+1]))-A000720(n+1)`
-/

namespace A260895.P11987465350128584306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A077664 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - A000720 (n + 1)

end

end A260895.P11987465350128584306

/-! ## A260895.P3403185123972690103

`A000720(A126357(n+1)+n)-A000720(n+1)`
-/

namespace A260895.P3403185123972690103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A126357 (n + 1) + (n : ℤ)).toNat - A000720 (n + 1)

end

end A260895.P3403185123972690103

/-!
# A260896: a(n) gives the number of integers m such that there exist k and h with 2n^2 < mk^2 < 2(n+1)^2 and 2n^2 < 2mh^2 < 2(n+1)^2.

The programs for A260896, there is no canonical definition to state claims against.
-/

/-! ## A260896.P15667036601068649081

`A152714(A200579(n+1))%A102885(n)`
-/

namespace A260896.P15667036601068649081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152714 (A200579 (n + 1)).toNat) (A102885 n)

end

end A260896.P15667036601068649081

/-!
# A260897: Numerator of det(M) where M is the n X n matrix with M[i,j] = 1/lcm(i,j).

The programs for A260897, there is no canonical definition to state claims against.
-/

/-! ## A260897.P16528030123050365253

`2^A260502(n+1)`
-/

namespace A260897.P16528030123050365253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A260502 (n + 1) : ℤ)

end

end A260897.P16528030123050365253

/-! ## A260897.P8265783312030486339

`A000079(A260502(n+1))`
-/

namespace A260897.P8265783312030486339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A260502 (n + 1)).toNat

end

end A260897.P8265783312030486339

/-! ## A260897.P18124260235797780601

`A011782(A260502(n+1)+1)`
-/

namespace A260897.P18124260235797780601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A260502 (n + 1) + 1).toNat

end

end A260897.P18124260235797780601

/-! ## A260897.P4508413339054382628

`A060546(2*A260502(n+1))`
-/

namespace A260897.P4508413339054382628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (2 * A260502 (n + 1)).toNat

end

end A260897.P4508413339054382628

/-! ## A260897.P5124887489089678100

`A057427(2*(n+2))+A000225(A260502(n+1))`
-/

namespace A260897.P5124887489089678100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * (n + 2)) + A000225 (A260502 (n + 1)).toNat

end

end A260897.P5124887489089678100

/-!
# A260899: Positive numbers k such that 1...123 = (10^(k+2) + 107) / 9 is prime.

The programs for A260899, there is no canonical definition to state claims against.
-/

/-! ## A260899.P4689241352542947966

`A280548(2*n+3)%A000118(A280539(n+1))`
-/

namespace A260899.P4689241352542947966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280548 (2 * n + 3)) (A000118 (A280539 (n + 1)).toNat)

end

end A260899.P4689241352542947966

