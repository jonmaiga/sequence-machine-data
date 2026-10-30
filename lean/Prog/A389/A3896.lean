import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
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
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
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
# A389600: Run-compression sum (A373953) minus number of maximal runs in the n-th composition in standard order.

The programs for A389600, there is no canonical definition to state claims against.
-/

/-! ## A389600.P8303213897956992419

`A373953(n)-A124767(n)`
-/

namespace A389600.P8303213897956992419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373953 n - A124767 n

end

end A389600.P8303213897956992419

/-! ## A389600.P1415980197942033330

`A373953(n)-A353745(A057335(n))`
-/

namespace A389600.P1415980197942033330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373953 n - A353745 (A057335 n).toNat

end

end A389600.P1415980197942033330

/-! ## A389600.P6373040282179946137

`A373953(n)-(A124765(n)+A124761(n))`
-/

namespace A389600.P6373040282179946137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373953 n - (A124765 n + A124761 n)

end

end A389600.P6373040282179946137

/-! ## A389600.P5735524013469580918

`A373953(n)-(A000120(n)-A124762(n))`
-/

namespace A389600.P5735524013469580918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373953 n - (A000120 n - A124762 n)

end

end A389600.P5735524013469580918

/-! ## A389600.P10625019243307390748

`A373953(n)-(∑[A088705(n)]-A124762(n))`
-/

namespace A389600.P10625019243307390748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373953 n - (∑ j ∈ Finset.range (n + 1), f1 j - A124762 n)

end

end A389600.P10625019243307390748

/-! ## A389600.P16217244479127200611

`A373953(n)-abs(A124762(n)-A324467(n)/3)`
-/

namespace A389600.P16217244479127200611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373953 n : ℚ) - |(A124762 n : ℚ) - (A324467 n : ℚ) / 3|

end

end A389600.P16217244479127200611

/-! ## A389600.P5815447389400760137

`A373953(n)-(A329697(A048883(n))-A124762(n))`
-/

namespace A389600.P5815447389400760137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373953 n - (A329697 (A048883 n).toNat - A124762 n)

end

end A389600.P5815447389400760137

/-! ## A389600.P9363933115459552769

`A373953(n)-(A124764(n)+A124766(n)-A124762(n))`
-/

namespace A389600.P9363933115459552769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373953 n - (A124764 n + (A124766 n - A124762 n))

end

end A389600.P9363933115459552769

/-! ## A389600.P10513734680516488006

`ceil(log2(n+1))-A373954(n)-A124767(n)`
-/

namespace A389600.P10513734680516488006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 1 : ℝ)⌉ - A373954 n - A124767 n

end

end A389600.P10513734680516488006

/-! ## A389600.P7236254669704602432

`A099165(A070939(2*n)-A373954(n))-A124767(n)`
-/

namespace A389600.P7236254669704602432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099165 (A070939 (2 * n) - A373954 n).toNat - A124767 n

end

end A389600.P7236254669704602432

/-!
# A389601: Number of integer compositions of n with all distinct 0-prepended first differences.

The programs for A389601, there is no canonical definition to state claims against.
-/

/-! ## A389601.P5340898679485975611

`∑[abs(ceil((-2)^(n-2)))]-A389744(n)`
-/

namespace A389601.P5340898679485975611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A389744 n

end

end A389601.P5340898679485975611

/-! ## A389601.P4844717362266182452

`A352131(A055664(n+1)+3)`
-/

namespace A389601.P4844717362266182452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352131 (A055664 (n + 1) + 3).toNat

end

end A389601.P4844717362266182452

/-!
# A389602: The number of Motzkin paths of length n satisfying the red-blue rule.

The programs for A389602, there is no canonical definition to state claims against.
-/

/-! ## A389602.P17510168104604230304

`A104739(A000621(n+1))`
-/

namespace A389602.P17510168104604230304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104739 (A000621 (n + 1)).toNat

end

end A389602.P17510168104604230304

/-! ## A389602.P4495301114620439361

`A137620(A000048(n+1))`
-/

namespace A389602.P4495301114620439361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137620 (A000048 (n + 1)).toNat

end

end A389602.P4495301114620439361

/-! ## A389602.P1859155855988935085

`A137620(A006788(n+1))`
-/

namespace A389602.P1859155855988935085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137620 (A006788 (n + 1)).toNat

end

end A389602.P1859155855988935085

/-! ## A389602.P949965619764652609

`A137620(A054650(n+1))`
-/

namespace A389602.P949965619764652609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137620 (A054650 (n + 1)).toNat

end

end A389602.P949965619764652609

/-! ## A389602.P1580297854895003084

`A137620(A128023(n+1))`
-/

namespace A389602.P1580297854895003084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137620 (A128023 (n + 1)).toNat

end

end A389602.P1580297854895003084

/-!
# A389605: Number of chains in the poset of plane partitions ordered by inclusion that end with a plane partition of n.

The programs for A389605, there is no canonical definition to state claims against.
-/

/-! ## A389605.P17284048890466546703

`∑{#}[2^(n+1)-1-2^n, A379277(#+2^n)]`
-/

namespace A389605.P17284048890466546703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - 1 - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A379277 (k + 2 ^ n)

end

end A389605.P17284048890466546703

/-!
# A389606: Triangle T(n,k) read by rows where T(n,k) = (n+1)*(1+(-1)^x)/2 - k*(-1)^x where x = (n-1)/2 - |k-(n+1)/2|.

The programs for A389606, there is no canonical definition to state claims against.
-/

/-! ## A389606.P9769793343016543011

`A208233(A056011(n+1))`
-/

namespace A389606.P9769793343016543011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208233 (A056011 (n + 1)).toNat

end

end A389606.P9769793343016543011

/-! ## A389606.P6153321355521407448

`A208234(A056023(1+n))`
-/

namespace A389606.P6153321355521407448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208234 (A056023 (1 + n)).toNat

end

end A389606.P6153321355521407448

/-! ## A389606.P17420986469267206211

`A092543(A188568(n+1))`
-/

namespace A389606.P17420986469267206211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092543 (A188568 (n + 1)).toNat

end

end A389606.P17420986469267206211

/-! ## A389606.P7112103658375596915

`A183110(n+1)-T(n-2,k-1)` with `a(0)=1`
-/

namespace A389606.P7112103658375596915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A183110 (n + 1) - SequenceMachineLib.triUp2Left a n

end

end A389606.P7112103658375596915

/-! ## A389606.P1472141875574575084

`A092542(A188568(A038722(n+1)))`
-/

namespace A389606.P1472141875574575084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092542 (A188568 (A038722 (n + 1)).toNat).toNat

end

end A389606.P1472141875574575084

/-!
# A389607: A bisection of A221075.

The programs for A389607, the canonical program `A389607.P8527242215205205422` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389607 has offset 1).

The definition of A389607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389607.P17504037781883335824

`A221075(Δ[n²])`
-/

namespace A389607.P17504037781883335824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221075 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A389607.P17504037781883335824

namespace A389607

/-- `A221075(Δ[n²])` -/
def P17504037781883335824.Spec : Prop :=
  ∀ n, P17504037781883335824.a n = A389607 (n + 1)

end A389607

/-! ## A389607.P2742337195990228803

`record[A221075(n+1)]`
-/

namespace A389607.P2742337195990228803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389607.P2742337195990228803

namespace A389607

/-- `record[A221075(n+1)]` -/
def P2742337195990228803.Spec : Prop :=
  ∀ n, P2742337195990228803.a n = A389607 (n + 1)

end A389607

/-! ## A389607.P8527242215205205422

`2*(A110293(n+1)-1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A389607

/-- `2*(A110293(n+1)-1)` -/
def P8527242215205205422.Spec : Prop :=
  ∀ n, P8527242215205205422.a n = A389607 (n + 1)

theorem P8527242215205205422.correct : P8527242215205205422.Spec := by
  intro n
  simp only [A389607, Nat.add_sub_cancel]

end A389607

/-! ## A389607.P1449555685529884541

`lcm(2, A221075(2*n+1))`
-/

namespace A389607.P1449555685529884541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A221075 (2 * n + 1))

end

end A389607.P1449555685529884541

namespace A389607

/-- `lcm(2, A221075(2*n+1))` -/
def P1449555685529884541.Spec : Prop :=
  ∀ n, (P1449555685529884541.a n : ℤ) = A389607 (n + 1)

end A389607

/-! ## A389607.P16140720044826574762

`∑[A005320(char[2*n]+n+1)]`
-/

namespace A389607.P16140720044826574762
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005320 ((if ∃ j, f2 j = n then 1 else 0) + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389607.P16140720044826574762

namespace A389607

/-- `∑[A005320(char[2*n]+n+1)]` -/
def P16140720044826574762.Spec : Prop :=
  ∀ n, P16140720044826574762.a n = A389607 (n + 1)

end A389607

/-! ## A389607.P4154960317137695198

`A174501(2*n+1)*A221075(2*n+1)`
-/

namespace A389607.P4154960317137695198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174501 (2 * n + 1) * A221075 (2 * n + 1)

end

end A389607.P4154960317137695198

namespace A389607

/-- `A174501(2*n+1)*A221075(2*n+1)` -/
def P4154960317137695198.Spec : Prop :=
  ∀ n, P4154960317137695198.a n = A389607 (n + 1)

end A389607

/-!
# A389608: a(n) = (7*n^2 - 5*n + 2)/2.

The programs for A389608, the canonical program `A389608.P13899346501261076921` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389608 has offset 0).

The definition of A389608 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n²-5*n+2)/2` (program `A389608.P16797978139586984549`, by `A389608.P16797978139586984549.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A389608.P10261022536034307561

`ogf((1-x+7x^2)/(1-3x+3x^2-x^3))`
-/

namespace A389608.P10261022536034307561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 7] [1, -3, 3, -1] n

end

end A389608.P10261022536034307561

namespace A389608

/-- `ogf((1-x+7x^2)/(1-3x+3x^2-x^3))` -/
def P10261022536034307561.Spec : Prop :=
  ∀ n, P10261022536034307561.a n = A389608 n

end A389608

/-! ## A389608.P16797978139586984549

`(7*n²-5*n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389608.P16797978139586984549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * n ^ 2 : ℤ) - (5 * n : ℤ) + 2 : ℚ) / 2

end

end A389608.P16797978139586984549

namespace A389608

/-- `(7*n²-5*n+2)/2` -/
def P16797978139586984549.Spec : Prop :=
  ∀ n, P16797978139586984549.a n = (A389608 n : ℚ)

theorem P16797978139586984549.correct : P16797978139586984549.Spec := by
  intro n
  induction n with
  | zero => simp [A389608, A389608.P16797978139586984549.a, A389608.P13899346501261076921.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A389608, Nat.add_sub_cancel, A389608.P16797978139586984549.a, A389608.P13899346501261076921.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A389608

/-! ## A389608.P2897989754445976447

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=10`
-/

namespace A389608.P2897989754445976447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 10] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A389608.P2897989754445976447

namespace A389608

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P2897989754445976447.Spec : Prop :=
  ∀ n, P2897989754445976447.a n = A389608 n

end A389608

/-! ## A389608.P3997181986392952906

`∑[7+a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A389608.P3997181986392952906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  7 + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389608.P3997181986392952906

namespace A389608

/-- `∑[7+a(n-1)]` -/
def P3997181986392952906.Spec : Prop :=
  ∀ n, (P3997181986392952906.a n : ℤ) = A389608 n

end A389608

/-! ## A389608.P7608255742032364134

`7*C(n, 2)+1+n`
-/

namespace A389608.P7608255742032364134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * Nat.choose n 2 + 1 + n

end

end A389608.P7608255742032364134

namespace A389608

/-- `7*C(n, 2)+1+n` -/
def P7608255742032364134.Spec : Prop :=
  ∀ n, (P7608255742032364134.a n : ℤ) = A389608 n

end A389608

/-! ## A389608.P374852729536017551

`∑[ogf((1-x+7x^2)/(1-2x+x^2))]`
-/

namespace A389608.P374852729536017551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 7] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389608.P374852729536017551

namespace A389608

/-- `∑[ogf((1-x+7x^2)/(1-2x+x^2))]` -/
def P374852729536017551.Spec : Prop :=
  ∀ n, P374852729536017551.a n = A389608 n

end A389608

/-! ## A389608.P16614653088543656905

`a(n-1)+7*n-6` with `a(0)=1`
-/

namespace A389608.P16614653088543656905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((7 * n : ℤ) - 6)

end

end A389608.P16614653088543656905

namespace A389608

/-- `a(n-1)+7*n-6` -/
def P16614653088543656905.Spec : Prop :=
  ∀ n, P16614653088543656905.a n = A389608 n

end A389608

/-! ## A389608.P13899346501261076921

`7*n-(6-a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389608

/-- `7*n-(6-a(n-1))` -/
def P13899346501261076921.Spec : Prop :=
  ∀ n, P13899346501261076921.a n = A389608 n

theorem P13899346501261076921.correct : P13899346501261076921.Spec := by
  intro n
  simp only [A389608]

end A389608

/-! ## A389608.P9787135301936890495

`Δ[C(n+1, 3)+(n-1)^3]`
-/

namespace A389608.P9787135301936890495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 3 : ℤ) + ((n : ℤ) - 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A389608.P9787135301936890495

namespace A389608

/-- `Δ[C(n+1, 3)+(n-1)^3]` -/
def P9787135301936890495.Spec : Prop :=
  ∀ n, P9787135301936890495.a n = A389608 n

end A389608

/-! ## A389608.P18401681582737542588

`A001106(n)+1`
-/

namespace A389608.P18401681582737542588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 n + 1

end

end A389608.P18401681582737542588

namespace A389608

/-- `A001106(n)+1` -/
def P18401681582737542588.Spec : Prop :=
  ∀ n, P18401681582737542588.a n = A389608 n

end A389608

/-! ## A389608.P1402409374699829910

`A140064(n)-n²`
-/

namespace A389608.P1402409374699829910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140064 n - (n ^ 2 : ℤ)

end

end A389608.P1402409374699829910

namespace A389608

/-- `A140064(n)-n²` -/
def P1402409374699829910.Spec : Prop :=
  ∀ n, P1402409374699829910.a n = A389608 n

end A389608

/-! ## A389608.P3733290955932868776

`A139268(n)/2+1`
-/

namespace A389608.P3733290955932868776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139268 n : ℚ) / 2 + 1

end

end A389608.P3733290955932868776

namespace A389608

/-- `A139268(n)/2+1` -/
def P3733290955932868776.Spec : Prop :=
  ∀ n, P3733290955932868776.a n = (A389608 n : ℚ)

theorem P3733290955932868776.correct : P3733290955932868776.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A389608, Nat.add_sub_cancel, A389608.P3733290955932868776.a, A389608.P13899346501261076921.a, A139268, A139268.P11340989614029244212.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A389608, Nat.add_sub_cancel, A389608.P3733290955932868776.a, A389608.P13899346501261076921.a, A139268, A139268.P11340989614029244212.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A389608

/-! ## A389608.P2024039251345370552

`A152759(n)/3+1`
-/

namespace A389608.P2024039251345370552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152759 n : ℚ) / 3 + 1

end

end A389608.P2024039251345370552

namespace A389608

/-- `A152759(n)/3+1` -/
def P2024039251345370552.Spec : Prop :=
  ∀ n, P2024039251345370552.a n = (A389608 n : ℚ)

end A389608

/-! ## A389608.P10789945182749795788

`A152760(n)/4+1`
-/

namespace A389608.P10789945182749795788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152760 n : ℚ) / 4 + 1

end

end A389608.P10789945182749795788

namespace A389608

/-- `A152760(n)/4+1` -/
def P10789945182749795788.Spec : Prop :=
  ∀ n, P10789945182749795788.a n = (A389608 n : ℚ)

theorem P10789945182749795788.correct : P10789945182749795788.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A389608, Nat.add_sub_cancel, A389608.P10789945182749795788.a, A389608.P13899346501261076921.a, A152760, A152760.P16098557334382843204.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A389608, Nat.add_sub_cancel, A389608.P10789945182749795788.a, A389608.P13899346501261076921.a, A152760, A152760.P16098557334382843204.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A389608

/-! ## A389608.P549451993681144479

`A140065(n+1)-n`
-/

namespace A389608.P549451993681144479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140065 (n + 1) - (n : ℤ)

end

end A389608.P549451993681144479

namespace A389608

/-- `A140065(n+1)-n` -/
def P549451993681144479.Spec : Prop :=
  ∀ n, P549451993681144479.a n = A389608 n

end A389608

/-! ## A389608.P2597970480204447515

`A218471(n)+1-n`
-/

namespace A389608.P2597970480204447515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218471 n + (1 - (n : ℤ))

end

end A389608.P2597970480204447515

namespace A389608

/-- `A218471(n)+1-n` -/
def P2597970480204447515.Spec : Prop :=
  ∀ n, P2597970480204447515.a n = A389608 n

end A389608

/-! ## A389608.P14705450613934884967

`A140063(n)-2*n`
-/

namespace A389608.P14705450613934884967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140063 n - (2 * n : ℤ)

end

end A389608.P14705450613934884967

namespace A389608

/-- `A140063(n)-2*n` -/
def P14705450613934884967.Spec : Prop :=
  ∀ n, P14705450613934884967.a n = A389608 n

end A389608

/-! ## A389608.P9268102267913605259

`A389615(n)-4*n`
-/

namespace A389608.P9268102267913605259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389615 n - (4 * n : ℤ)

end

end A389608.P9268102267913605259

namespace A389608

/-- `A389615(n)-4*n` -/
def P9268102267913605259.Spec : Prop :=
  ∀ n, P9268102267913605259.a n = A389608 n

end A389608

/-! ## A389608.P1258236152979579481

`A054554(n+1)-∑[n]`
-/

namespace A389608.P1258236152979579481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054554 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A389608.P1258236152979579481

namespace A389608

/-- `A054554(n+1)-∑[n]` -/
def P1258236152979579481.Spec : Prop :=
  ∀ n, P1258236152979579481.a n = A389608 n

end A389608

/-! ## A389608.P4268641580946068670

`A080855(n)-(n²+n)`
-/

namespace A389608.P4268641580946068670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080855 n - (n ^ 2 + n : ℤ)

end

end A389608.P4268641580946068670

namespace A389608

/-- `A080855(n)-(n²+n)` -/
def P4268641580946068670.Spec : Prop :=
  ∀ n, P4268641580946068670.a n = A389608 n

end A389608

/-!
# A389609: Lexicographically earliest infinite sequence of distinct positive integers with the property that the partial sums of the concatenation of the divisors of the terms is the sequence itself.

The programs for A389609, there is no canonical definition to state claims against.
-/

/-! ## A389609.P14522494248243261401

`A389611(n)+a(n-1)` with `a(0)=1`
-/

namespace A389609.P14522494248243261401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A389611 n + a (n - 1)

end

end A389609.P14522494248243261401

/-! ## A389609.P5249879809801486922

`record[A389611(n+1)]`
-/

namespace A389609.P5249879809801486922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389609.P5249879809801486922

/-!
# A389610: Same as A389609, except only consider prime divisors, instead of all divisors.

The programs for A389610, there is no canonical definition to state claims against.
-/

/-! ## A389610.P10114192544969186699

`A389612(n)+a(n-1)` with `a(0)=2`
-/

namespace A389610.P10114192544969186699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A389612 n + a (n - 1)

end

end A389610.P10114192544969186699

/-!
# A389611: First differences of A389609.

The programs for A389611, there is no canonical definition to state claims against.
-/

/-! ## A389611.P8697132829576279617

`Δ[A389609(n+1)]`
-/

namespace A389611.P8697132829576279617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A389611.P8697132829576279617

/-! ## A389611.P400245663258034142

`A389609(n+2)-A389609(n+1)`
-/

namespace A389611.P400245663258034142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389609 (n + 2) - A389609 (n + 1)

end

end A389611.P400245663258034142

/-!
# A389612: First differences of A389610.

The programs for A389612, there is no canonical definition to state claims against.
-/

/-! ## A389612.P10260016911802311143

`Δ[A389610(1+n)]`
-/

namespace A389612.P10260016911802311143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389610 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A389612.P10260016911802311143

/-! ## A389612.P14174844817889996335

`A389610(n+2)-A389610(n+1)`
-/

namespace A389612.P14174844817889996335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389610 (n + 2) - A389610 (n + 1)

end

end A389612.P14174844817889996335

/-!
# A389613: First differences of A389395.

The programs for A389613, there is no canonical definition to state claims against.
-/

/-! ## A389613.P9956219724282549567

`Δ[A389395(n+1)]`
-/

namespace A389613.P9956219724282549567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A389613.P9956219724282549567

/-! ## A389613.P233501629642194910

`A389395(n+2)-A389395(n+1)`
-/

namespace A389613.P233501629642194910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389395 (n + 2) - A389395 (n + 1)

end

end A389613.P233501629642194910

/-! ## A389613.P17092419129188338442

`A384231(A281089(n+2))`
-/

namespace A389613.P17092419129188338442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384231 (A281089 (n + 2)).toNat

end

end A389613.P17092419129188338442

/-! ## A389613.P5162926720072795662

`A325032(lt[A209874(2*(n+2)), A193091(2*(n+2))])`
-/

namespace A389613.P5162926720072795662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209874 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193091 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325032 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A389613.P5162926720072795662

/-! ## A389613.P4982385936704949556

`A185155(A185439(n+2))`
-/

namespace A389613.P4982385936704949556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185155 (A185439 (n + 2)).toNat

end

end A389613.P4982385936704949556

/-!
# A389614: a(n) = 2*n^2 + 1 - (m*n - 3*m*(m+1)/2) where m = floor(n/3).

The programs for A389614, the canonical program `A389614.P3971250464310346862` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389614 has offset 0).

The definition of A389614 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389614.P3971250464310346862

`ogf((1+x+4x^2+3x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389614

/-- `ogf((1+x+4x^2+3x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P3971250464310346862.Spec : Prop :=
  ∀ n, P3971250464310346862.a n = A389614 n

theorem P3971250464310346862.correct : P3971250464310346862.Spec := by
  intro n
  simp only [A389614]

end A389614

/-! ## A389614.P9653990573492328529

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=1, a(2)=4, a(3)=4, a(4)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A389614.P9653990573492328529
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4, 4, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389614.P9653990573492328529

namespace A389614

/-- `∑[∑[floor(a(n-3))]]` -/
def P9653990573492328529.Spec : Prop :=
  ∀ n, (P9653990573492328529.a n : ℤ) = A389614 n

end A389614

/-! ## A389614.P2980336775733754927

`1+n+2*n²-floor(C(n+2, 2)/3)`
-/

namespace A389614.P2980336775733754927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n + 2 * n ^ 2 : ℤ) - ⌊(Nat.choose (n + 2) 2 : ℚ) / 3⌋

end

end A389614.P2980336775733754927

namespace A389614

/-- `1+n+2*n²-floor(C(n+2, 2)/3)` -/
def P2980336775733754927.Spec : Prop :=
  ∀ n, P2980336775733754927.a n = A389614 n

end A389614

/-! ## A389614.P16458861545021492497

`ceil((n+1)*(n+2)/3)+C(n, 2)+n²`
-/

namespace A389614.P16458861545021492497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) * (n + 2) : ℚ) / 3⌉ + (Nat.choose n 2 + n ^ 2 : ℤ)

end

end A389614.P16458861545021492497

namespace A389614

/-- `ceil((n+1)*(n+2)/3)+C(n, 2)+n²` -/
def P16458861545021492497.Spec : Prop :=
  ∀ n, P16458861545021492497.a n = A389614 n

end A389614

/-! ## A389614.P6575682612127471840

`floor((3*n²+1)/2)+1+floor(n/2+n²/3)`
-/

namespace A389614.P6575682612127471840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * n ^ 2 + 1 : ℚ) / 2⌋ + (1 + ⌊(n : ℚ) / 2 + (n ^ 2 : ℚ) / 3⌋)

end

end A389614.P6575682612127471840

namespace A389614

/-- `floor((3*n²+1)/2)+1+floor(n/2+n²/3)` -/
def P6575682612127471840.Spec : Prop :=
  ∀ n, P6575682612127471840.a n = A389614 n

end A389614

/-! ## A389614.P16373663936586362152

`C(A007980(n)+A000326(n), A398058(n))`
-/

namespace A389614.P16373663936586362152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007980 n + A000326 n).toNat (A398058 n).toNat

end

end A389614.P16373663936586362152

namespace A389614

/-- `C(A007980(n)+A000326(n), A398058(n))` -/
def P16373663936586362152.Spec : Prop :=
  ∀ n, (P16373663936586362152.a n : ℤ) = A389614 n

end A389614

/-! ## A389614.P11672884836172549905

`C(A397974(n)+A084672(n), A398058(n))`
-/

namespace A389614.P11672884836172549905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A397974 n + A084672 n).toNat (A398058 n).toNat

end

end A389614.P11672884836172549905

namespace A389614

/-- `C(A397974(n)+A084672(n), A398058(n))` -/
def P11672884836172549905.Spec : Prop :=
  ∀ n, (P11672884836172549905.a n : ℤ) = A389614 n

end A389614

/-! ## A389614.P12241583832902789519

`C(A398855(n)+A236343(n), A398058(n))`
-/

namespace A389614.P12241583832902789519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A398855 n + A236343 n).toNat (A398058 n).toNat

end

end A389614.P12241583832902789519

namespace A389614

/-- `C(A398855(n)+A236343(n), A398058(n))` -/
def P12241583832902789519.Spec : Prop :=
  ∀ n, (P12241583832902789519.a n : ℤ) = A389614 n

end A389614

/-! ## A389614.P6254980498563891477

`C(A393677(n)+A374702(n), A398058(n))`
-/

namespace A389614.P6254980498563891477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A393677 n + A374702 n).toNat (A398058 n).toNat

end

end A389614.P6254980498563891477

namespace A389614

/-- `C(A393677(n)+A374702(n), A398058(n))` -/
def P6254980498563891477.Spec : Prop :=
  ∀ n, (P6254980498563891477.a n : ℤ) = A389614 n

end A389614

/-! ## A389614.P15761418071923774194

`C(A080855(n)-A320281(n), A398058(n))`
-/

namespace A389614.P15761418071923774194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A080855 n - A320281 n).toNat (A398058 n).toNat

end

end A389614.P15761418071923774194

namespace A389614

/-- `C(A080855(n)-A320281(n), A398058(n))` -/
def P15761418071923774194.Spec : Prop :=
  ∀ n, (P15761418071923774194.a n : ℤ) = A389614 n

end A389614

/-! ## A389614.P8101918204636261244

`(A007980(n)+A000326(n))*A115716(A004273(n))`
-/

namespace A389614.P8101918204636261244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007980 n + A000326 n) * A115716 (A004273 n).toNat

end

end A389614.P8101918204636261244

namespace A389614

/-- `(A007980(n)+A000326(n))*A115716(A004273(n))` -/
def P8101918204636261244.Spec : Prop :=
  ∀ n, P8101918204636261244.a n = A389614 n

end A389614

/-! ## A389614.P6328953436172581661

`(A007980(n)+A000326(n))*A115716(A115716(n))`
-/

namespace A389614.P6328953436172581661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007980 n + A000326 n) * A115716 (A115716 n).toNat

end

end A389614.P6328953436172581661

namespace A389614

/-- `(A007980(n)+A000326(n))*A115716(A115716(n))` -/
def P6328953436172581661.Spec : Prop :=
  ∀ n, P6328953436172581661.a n = A389614 n

end A389614

/-! ## A389614.P2808286950088342477

`(A007980(n)+A000326(n))*A375706(A140065(n+1))`
-/

namespace A389614.P2808286950088342477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007980 n + A000326 n) * A375706 (A140065 (n + 1)).toNat

end

end A389614.P2808286950088342477

namespace A389614

/-- `(A007980(n)+A000326(n))*A375706(A140065(n+1))` -/
def P2808286950088342477.Spec : Prop :=
  ∀ n, P2808286950088342477.a n = A389614 n

end A389614

/-!
# A389615: a(n) = 7*n^2/2 + 3*n/2 + 1.

The programs for A389615, the canonical program `A389615.P11467938792602797222` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389615 has offset 0).

The definition of A389615 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*n²/2+3*n/2+1` (program `A389615.P7324136323372312509`, by `A389615.P7324136323372312509.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A389615.P5653556147425674758

`ogf((1+3x+3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A389615.P5653556147425674758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 3] [1, -3, 3, -1] n

end

end A389615.P5653556147425674758

namespace A389615

/-- `ogf((1+3x+3x^2)/(1-3x+3x^2-x^3))` -/
def P5653556147425674758.Spec : Prop :=
  ∀ n, P5653556147425674758.a n = A389615 n

end A389615

/-! ## A389615.P8878731133497082593

`n*(7*n+3)/2+1`
-/

namespace A389615.P8878731133497082593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (7 * n + 3) : ℚ) / 2 + 1

end

end A389615.P8878731133497082593

namespace A389615

/-- `n*(7*n+3)/2+1` -/
def P8878731133497082593.Spec : Prop :=
  ∀ n, P8878731133497082593.a n = (A389615 n : ℚ)

theorem P8878731133497082593.correct : P8878731133497082593.Spec := by
  intro n
  induction n with
  | zero => simp [A389615, A389615.P8878731133497082593.a, A389615.P11467938792602797222.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A389615, Nat.add_sub_cancel, A389615.P8878731133497082593.a, A389615.P11467938792602797222.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A389615

/-! ## A389615.P7324136323372312509

`7*n²/2+3*n/2+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389615.P7324136323372312509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * n ^ 2 : ℚ) / 2 + (3 * n : ℚ) / 2 + 1

end

end A389615.P7324136323372312509

namespace A389615

/-- `7*n²/2+3*n/2+1` -/
def P7324136323372312509.Spec : Prop :=
  ∀ n, P7324136323372312509.a n = (A389615 n : ℚ)

theorem P7324136323372312509.correct : P7324136323372312509.Spec := by
  intro n
  induction n with
  | zero => simp [A389615, A389615.P7324136323372312509.a, A389615.P11467938792602797222.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A389615, Nat.add_sub_cancel, A389615.P7324136323372312509.a, A389615.P11467938792602797222.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A389615

/-! ## A389615.P4296430954585911530

`∑[7+a(n-1)]` with `a(0)=1, a(1)=5`
-/

namespace A389615.P4296430954585911530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  7 + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389615.P4296430954585911530

namespace A389615

/-- `∑[7+a(n-1)]` -/
def P4296430954585911530.Spec : Prop :=
  ∀ n, (P4296430954585911530.a n : ℤ) = A389615 n

end A389615

/-! ## A389615.P603730735673223754

`∑[ogf((1+3x+3x^2)/(1-2x+x^2))]`
-/

namespace A389615.P603730735673223754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389615.P603730735673223754

namespace A389615

/-- `∑[ogf((1+3x+3x^2)/(1-2x+x^2))]` -/
def P603730735673223754.Spec : Prop :=
  ∀ n, P603730735673223754.a n = A389615 n

end A389615

/-! ## A389615.P11467938792602797222

`floor(7*n+a(n-1)-2)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389615

/-- `floor(7*n+a(n-1)-2)` -/
def P11467938792602797222.Spec : Prop :=
  ∀ n, P11467938792602797222.a n = A389615 n

theorem P11467938792602797222.correct : P11467938792602797222.Spec := by
  intro n
  simp only [A389615]

end A389615

/-! ## A389615.P17259956088823391134

`floor(7*n-(2-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A389615.P17259956088823391134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (7 * n : ℤ) - (2 - a (n - 1))

end

end A389615.P17259956088823391134

namespace A389615

/-- `floor(7*n-(2-a(n-1)))` -/
def P17259956088823391134.Spec : Prop :=
  ∀ n, P17259956088823391134.a n = A389615 n

theorem P17259956088823391134.correct : P17259956088823391134.Spec := by
  intro n
  simp only [A389615, Nat.add_sub_cancel, A389615.P17259956088823391134.a, A389615.P11467938792602797222.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A389615

/-! ## A389615.P9440338306326290979

`floor(lcm(2*n+1, 2*n)+ϕ-∑[n])`
-/

namespace A389615.P9440338306326290979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm (2 * n + 1) (2 * n) : ℝ) + (Real.goldenRatio - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))⌋

end

end A389615.P9440338306326290979

namespace A389615

/-- `floor(lcm(2*n+1, 2*n)+ϕ-∑[n])` -/
def P9440338306326290979.Spec : Prop :=
  ∀ n, P9440338306326290979.a n = A389615 n

end A389615

/-! ## A389615.P8120299260302626617

`(A381109(n)+2)/3`
-/

namespace A389615.P8120299260302626617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381109 n + 2 : ℚ) / 3

end

end A389615.P8120299260302626617

namespace A389615

/-- `(A381109(n)+2)/3` -/
def P8120299260302626617.Spec : Prop :=
  ∀ n, P8120299260302626617.a n = (A389615 n : ℚ)

end A389615

/-! ## A389615.P17376738534633105573

`(A389928(n+1)+3)/4`
-/

namespace A389615.P17376738534633105573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389928 (n + 1) + 3 : ℚ) / 4

end

end A389615.P17376738534633105573

namespace A389615

/-- `(A389928(n+1)+3)/4` -/
def P17376738534633105573.Spec : Prop :=
  ∀ n, P17376738534633105573.a n = (A389615 n : ℚ)

theorem P17376738534633105573.correct : P17376738534633105573.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A389615, Nat.add_sub_cancel, A389615.P17376738534633105573.a, A389615.P11467938792602797222.a, A389928, A389928.P8211443800923910472.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A389615, Nat.add_sub_cancel, A389615.P17376738534633105573.a, A389615.P11467938792602797222.a, A389928, A389928.P8211443800923910472.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A389615

/-! ## A389615.P10312423106317973906

`A108099(n)%A064226(n)`
-/

namespace A389615.P10312423106317973906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108099 n) (A064226 n)

end

end A389615.P10312423106317973906

namespace A389615

/-- `A108099(n)%A064226(n)` -/
def P10312423106317973906.Spec : Prop :=
  ∀ n, P10312423106317973906.a n = A389615 n

end A389615

/-! ## A389615.P9428243539873740104

`A167469(n+1)%A078371(n)`
-/

namespace A389615.P9428243539873740104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167469 (n + 1)) (A078371 n)

end

end A389615.P9428243539873740104

namespace A389615

/-- `A167469(n+1)%A078371(n)` -/
def P9428243539873740104.Spec : Prop :=
  ∀ n, P9428243539873740104.a n = A389615 n

end A389615

/-! ## A389615.P8435110011732869856

`A060820(n+1)%A283394(n)`
-/

namespace A389615.P8435110011732869856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060820 (n + 1)) (A283394 n)

end

end A389615.P8435110011732869856

namespace A389615

/-- `A060820(n+1)%A283394(n)` -/
def P8435110011732869856.Spec : Prop :=
  ∀ n, P8435110011732869856.a n = A389615 n

end A389615

/-! ## A389615.P14255292542108514889

`A254527(n+1)%A178977(n)`
-/

namespace A389615.P14255292542108514889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254527 (n + 1)) (A178977 n)

end

end A389615.P14255292542108514889

namespace A389615

/-- `A254527(n+1)%A178977(n)` -/
def P14255292542108514889.Spec : Prop :=
  ∀ n, P14255292542108514889.a n = A389615 n

end A389615

/-! ## A389615.P4562275376075193310

`A069128(n+1)%A059193(n+1)`
-/

namespace A389615.P4562275376075193310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069128 (n + 1)) (A059193 (n + 1))

end

end A389615.P4562275376075193310

namespace A389615

/-- `A069128(n+1)%A059193(n+1)` -/
def P4562275376075193310.Spec : Prop :=
  ∀ n, P4562275376075193310.a n = A389615 n

end A389615

/-! ## A389615.P986308405048775359

`∑[record[A385938(n+1)]]`
-/

namespace A389615.P986308405048775359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385938 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389615.P986308405048775359

namespace A389615

/-- `∑[record[A385938(n+1)]]` -/
def P986308405048775359.Spec : Prop :=
  ∀ n, P986308405048775359.a n = A389615 n

end A389615

/-!
# A389616: Maximum number of independent permutations on {0,1,...,n-1}.

The programs for A389616, there is no canonical definition to state claims against.
-/

/-! ## A389616.P11262616143355619411

`∏{p}[A020639(n+1), floor(log2(#))]`
-/

namespace A389616.P11262616143355619411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.log 2 p

end

end A389616.P11262616143355619411

/-! ## A389616.P16051578168942216738

`A171626(A020639(n+1))`
-/

namespace A389616.P16051578168942216738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171626 (A020639 (n + 1)).toNat

end

end A389616.P16051578168942216738

/-! ## A389616.P9847492012841300039

`A171626(A079879(n+1))`
-/

namespace A389616.P9847492012841300039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171626 (A079879 (n + 1)).toNat

end

end A389616.P9847492012841300039

/-! ## A389616.P7518924234037814114

`A001399(A252374(n+1))`
-/

namespace A389616.P7518924234037814114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A252374 (n + 1)).toNat

end

end A389616.P7518924234037814114

/-! ## A389616.P17504248143026487548

`A171626(A109674(n+1))`
-/

namespace A389616.P17504248143026487548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171626 (A109674 (n + 1)).toNat

end

end A389616.P17504248143026487548

/-!
# A389617: Number of edges in the directed graph for the Reversed Zeckendorf game with starting number n.

The programs for A389617, there is no canonical definition to state claims against.
-/

/-! ## A389617.P558475528767534004

`A084618(A131882(n+1))`
-/

namespace A389617.P558475528767534004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084618 (A131882 (n + 1)).toNat

end

end A389617.P558475528767534004

/-! ## A389617.P16786589990945105510

`∑[A316496(A029804(n+1))]`
-/

namespace A389617.P16786589990945105510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316496 (A029804 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389617.P16786589990945105510

/-! ## A389617.P11154561862713084508

`A080868(A001883(n))+A000217(n)`
-/

namespace A389617.P11154561862713084508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080868 (A001883 n).toNat + A000217 n

end

end A389617.P11154561862713084508

/-! ## A389617.P16702926105804486829

`A173241(n)+A000523(A086611(n))`
-/

namespace A389617.P16702926105804486829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173241 n + A000523 (A086611 n).toNat

end

end A389617.P16702926105804486829

/-! ## A389617.P15371051253292175650

`A326625(A002182(n+1))+A000217(n)`
-/

namespace A389617.P15371051253292175650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326625 (A002182 (n + 1)).toNat + A000217 n

end

end A389617.P15371051253292175650

/-!
# A389621: Perrin numbers (A001608) which are the sum of two Fibonacci numbers.

The programs for A389621, there is no canonical definition to state claims against.
-/

/-! ## A389621.P3544976211933110444

`filter[A084176(n+1), A294878(#)]`
-/

namespace A389621.P3544976211933110444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294878 (f1 j).toNat = 1) n)

end

end A389621.P3544976211933110444

/-! ## A389621.P4375438786382565243

`eq[A108886(n), A294878(n)]`
-/

namespace A389621.P4375438786382565243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108886 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389621.P4375438786382565243

/-! ## A389621.P10373135679977270308

`lt[A350847(A172279(n)), A294878(n)]`
-/

namespace A389621.P10373135679977270308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350847 (A172279 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389621.P10373135679977270308

/-!
# A389622: Perrin numbers (A001608) which are the difference of two Fibonacci numbers.

The programs for A389622, there is no canonical definition to state claims against.
-/

/-! ## A389622.P3183527555784038160

`A001608(∑[A136480(n)])`
-/

namespace A389622.P3183527555784038160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A389622.P3183527555784038160

/-! ## A389622.P15906945158472486236

`eq[A294878(n), A375001(n)]`
-/

namespace A389622.P15906945158472486236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294878 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389622.P15906945158472486236

/-! ## A389622.P10282741502076186592

`record[A001608(∑[A335162(n)])]`
-/

namespace A389622.P10282741502076186592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389622.P10282741502076186592

/-! ## A389622.P6749924794027842176

`A001608(∑[A295920(n+1)])`
-/

namespace A389622.P6749924794027842176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A389622.P6749924794027842176

/-! ## A389622.P13572917479834286953

`A001608(∑[A295931(n+1)])`
-/

namespace A389622.P13572917479834286953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A389622.P13572917479834286953

/-!
# A389624: Maximum number of regions that can be formed in the plane by drawing n lollipop (or qoppa) shapes of any size and orientation.

The programs for A389624, there is no canonical definition to state claims against.
-/

/-! ## A389624.P4116382493617804944

`A072491(A335700(n))+A049450(n)`
-/

namespace A389624.P4116382493617804944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A335700 n).toNat + A049450 n

end

end A389624.P4116382493617804944

/-! ## A389624.P5022526091195834193

`A396714(n)+A088469(A000079(n))`
-/

namespace A389624.P5022526091195834193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396714 n + A088469 (A000079 n).toNat

end

end A389624.P5022526091195834193

/-! ## A389624.P10315301160592611390

`A396714(n)+A088469(A003418(n))`
-/

namespace A389624.P10315301160592611390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396714 n + A088469 (A003418 n).toNat

end

end A389624.P10315301160592611390

/-!
# A389625: a(0) = 1; a(n) = (11*n^2 - 9*n + 4)/2 for n>0.

The programs for A389625, the canonical program `A389625.P12908044649846980053` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389625 has offset 0).

The definition of A389625 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389625.P12908044649846980053

`ogf((1+9x^2+x^3)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389625

/-- `ogf((1+9x^2+x^3)/(1-3x+3x^2-x^3))` -/
def P12908044649846980053.Spec : Prop :=
  ∀ n, P12908044649846980053.a n = A389625 n

theorem P12908044649846980053.correct : P12908044649846980053.Spec := by
  intro n
  simp only [A389625]

end A389625

/-! ## A389625.P14052121435598455648

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=15, a(3)=38`
-/

namespace A389625.P14052121435598455648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 15, 38] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A389625.P14052121435598455648

namespace A389625

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P14052121435598455648.Spec : Prop :=
  ∀ n, P14052121435598455648.a n = A389625 n

end A389625

/-! ## A389625.P6871337298579563724

`∑[a(n-1)+11]` with `a(0)=1, a(1)=2, a(2)=12`
-/

namespace A389625.P6871337298579563724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 12] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389625.P6871337298579563724

namespace A389625

/-- `∑[a(n-1)+11]` -/
def P6871337298579563724.Spec : Prop :=
  ∀ n, (P6871337298579563724.a n : ℤ) = A389625 n

end A389625

/-! ## A389625.P112925891194551154

`A386485(n)+∑[n]`
-/

namespace A389625.P112925891194551154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386485 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A389625.P112925891194551154

namespace A389625

/-- `A386485(n)+∑[n]` -/
def P112925891194551154.Spec : Prop :=
  ∀ n, P112925891194551154.a n = A389625 n

end A389625

/-! ## A389625.P4739995593180411393

`A077591(n)-n*(5*n-7)/2`
-/

namespace A389625.P4739995593180411393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077591 n : ℚ) - ((n : ℤ) * ((5 * n : ℤ) - 7) : ℚ) / 2

end

end A389625.P4739995593180411393

namespace A389625

/-- `A077591(n)-n*(5*n-7)/2` -/
def P4739995593180411393.Spec : Prop :=
  ∀ n, P4739995593180411393.a n = (A389625 n : ℚ)

end A389625

/-! ## A389625.P4747082590403076539

`A077588(n)+A000566(n)`
-/

namespace A389625.P4747082590403076539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077588 n + A000566 n

end

end A389625.P4747082590403076539

namespace A389625

/-- `A077588(n)+A000566(n)` -/
def P4747082590403076539.Spec : Prop :=
  ∀ n, P4747082590403076539.a n = A389625 n

end A389625

/-! ## A389625.P11192506044802744207

`A051865(n)+A040000(n)`
-/

namespace A389625.P11192506044802744207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051865 n + A040000 n

end

end A389625.P11192506044802744207

namespace A389625

/-- `A051865(n)+A040000(n)` -/
def P11192506044802744207.Spec : Prop :=
  ∀ n, P11192506044802744207.a n = A389625 n

end A389625

/-! ## A389625.P7708906460386588702

`A386480(n)+A051682(n)`
-/

namespace A389625.P7708906460386588702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386480 n + A051682 n

end

end A389625.P7708906460386588702

namespace A389625

/-- `A386480(n)+A051682(n)` -/
def P7708906460386588702.Spec : Prop :=
  ∀ n, P7708906460386588702.a n = A389625 n

end A389625

/-! ## A389625.P11789437136194785189

`A005901(n)-A027468(n)`
-/

namespace A389625.P11789437136194785189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005901 n - A027468 n

end

end A389625.P11789437136194785189

namespace A389625

/-- `A005901(n)-A027468(n)` -/
def P11789437136194785189.Spec : Prop :=
  ∀ n, P11789437136194785189.a n = A389625 n

end A389625

/-! ## A389625.P18347346344185465902

`A022145(n)-A022287(n)`
-/

namespace A389625.P18347346344185465902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022145 n - A022287 n

end

end A389625.P18347346344185465902

namespace A389625

/-- `A022145(n)-A022287(n)` -/
def P18347346344185465902.Spec : Prop :=
  ∀ n, P18347346344185465902.a n = A389625 n

end A389625

/-! ## A389625.P4559005576842794889

`A005897(n)-A056000(n)`
-/

namespace A389625.P4559005576842794889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n - A056000 n

end

end A389625.P4559005576842794889

namespace A389625

/-- `A005897(n)-A056000(n)` -/
def P4559005576842794889.Spec : Prop :=
  ∀ n, P4559005576842794889.a n = A389625 n

end A389625

/-! ## A389625.P14679209411121819669

`A005919(n)-A140091(n)`
-/

namespace A389625.P14679209411121819669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005919 n - A140091 n

end

end A389625.P14679209411121819669

namespace A389625

/-- `A005919(n)-A140091(n)` -/
def P14679209411121819669.Spec : Prop :=
  ∀ n, P14679209411121819669.a n = A389625 n

end A389625

/-! ## A389625.P17413965743355853481

`A010003(n)-A211013(n)`
-/

namespace A389625.P17413965743355853481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010003 n - A211013 n

end

end A389625.P17413965743355853481

namespace A389625

/-- `A010003(n)-A211013(n)` -/
def P17413965743355853481.Spec : Prop :=
  ∀ n, P17413965743355853481.a n = A389625 n

end A389625

/-! ## A389625.P6169368496491148480

`A383466(n)-A022266(n)`
-/

namespace A389625.P6169368496491148480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383466 n - A022266 n

end

end A389625.P6169368496491148480

namespace A389625

/-- `A383466(n)-A022266(n)` -/
def P6169368496491148480.Spec : Prop :=
  ∀ n, P6169368496491148480.a n = A389625 n

end A389625

/-! ## A389625.P13958906768915818901

`A386477(n)-A186030(n)`
-/

namespace A389625.P13958906768915818901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386477 n - A186030 n

end

end A389625.P13958906768915818901

namespace A389625

/-- `A386477(n)-A186030(n)` -/
def P13958906768915818901.Spec : Prop :=
  ∀ n, P13958906768915818901.a n = A389625 n

end A389625

/-! ## A389625.P6670114124714267250

`A139482(n+1)+A001107(n)`
-/

namespace A389625.P6670114124714267250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139482 (n + 1) + A001107 n

end

end A389625.P6670114124714267250

namespace A389625

/-- `A139482(n+1)+A001107(n)` -/
def P6670114124714267250.Spec : Prop :=
  ∀ n, P6670114124714267250.a n = A389625 n

end A389625

/-! ## A389625.P3823774841411289948

`A089071(n+1)+A051624(n)`
-/

namespace A389625.P3823774841411289948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089071 (n + 1) + A051624 n

end

end A389625.P3823774841411289948

namespace A389625

/-- `A089071(n+1)+A051624(n)` -/
def P3823774841411289948.Spec : Prop :=
  ∀ n, P3823774841411289948.a n = A389625 n

end A389625

/-! ## A389625.P9875277310646778177

`A054275(n)-A130877(n+1)`
-/

namespace A389625.P9875277310646778177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054275 n - A130877 (n + 1)

end

end A389625.P9875277310646778177

namespace A389625

/-- `A054275(n)-A130877(n+1)` -/
def P9875277310646778177.Spec : Prop :=
  ∀ n, P9875277310646778177.a n = A389625 n

end A389625

/-! ## A389625.P11683552476218409725

`A002061(n+1)+A386485(n)-A152947(n+2)`
-/

namespace A389625.P11683552476218409725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n + 1) + (A386485 n - A152947 (n + 2))

end

end A389625.P11683552476218409725

namespace A389625

/-- `A002061(n+1)+A386485(n)-A152947(n+2)` -/
def P11683552476218409725.Spec : Prop :=
  ∀ n, P11683552476218409725.a n = A389625 n

end A389625

/-!
# A389626: One-third of the total number of edges formed after n points have been placed in general position on each edge of a triangle (as in A365929).

The programs for A389626, the canonical program `A389626.P3308640016307189601` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389626 has offset 0).

The definition of A389626 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389626.P15343648780538309890

`ogf((1-2x+12x^2+20x^3+5x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A389626.P15343648780538309890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 12, 20, 5] [1, -5, 10, -10, 5, -1] n

end

end A389626.P15343648780538309890

namespace A389626

/-- `ogf((1-2x+12x^2+20x^3+5x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P15343648780538309890.Spec : Prop :=
  ∀ n, P15343648780538309890.a n = A389626 n

end A389626

/-! ## A389626.P3308640016307189601

`(n*(n-2)+2)*(n*(3*n+2)+1)/2`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389626

/-- `(n*(n-2)+2)*(n*(3*n+2)+1)/2` -/
def P3308640016307189601.Spec : Prop :=
  ∀ n, P3308640016307189601.a n = (A389626 n : ℚ)

end A389626

/-! ## A389626.P18331975418200433232

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=17, a(3)=85, a(4)=285`
-/

namespace A389626.P18331975418200433232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 17, 85, 285] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A389626.P18331975418200433232

namespace A389626

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P18331975418200433232.Spec : Prop :=
  ∀ n, P18331975418200433232.a n = A389626 n

end A389626

/-! ## A389626.P15229628931279663513

`floor(A366932(n)/3)`
-/

namespace A389626.P15229628931279663513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A366932 n : ℚ) / 3⌋

end

end A389626.P15229628931279663513

namespace A389626

/-- `floor(A366932(n)/3)` -/
def P15229628931279663513.Spec : Prop :=
  ∀ n, P15229628931279663513.a n = A389626 n

end A389626

/-! ## A389626.P11833222162336849541

`A117665(n)+A060884(n)`
-/

namespace A389626.P11833222162336849541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117665 n + A060884 n

end

end A389626.P11833222162336849541

namespace A389626

/-- `A117665(n)+A060884(n)` -/
def P11833222162336849541.Spec : Prop :=
  ∀ n, P11833222162336849541.a n = A389626 n

end A389626

/-!
# A389627: Triangle read by rows: T(n,k) is the number of circulant graphs with n vertices and degree k, (0 <= k < n).

The programs for A389627, there is no canonical definition to state claims against.
-/

/-! ## A389627.P658983017218913010

`A207676(A342936(n))`
-/

namespace A389627.P658983017218913010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207676 (A342936 n).toNat

end

end A389627.P658983017218913010

/-! ## A389627.P7876364944244885162

`A257175(A319367(n+1))^A007318(A147300(2*(n+3)))`
-/

namespace A389627.P7876364944244885162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257175 (A319367 (n + 1)).toNat : ℚ) ^ (A007318 (A147300 (2 * (n + 3))).toNat : ℤ)

end

end A389627.P7876364944244885162

/-! ## A389627.P10290043493690281903

`A143824(A319367(n+1))%A062504(2*n+1)`
-/

namespace A389627.P10290043493690281903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143824 (A319367 (n + 1)).toNat) (A062504 (2 * n + 1))

end

end A389627.P10290043493690281903

/-! ## A389627.P16110262987384826150

`A359043(A319367(n+1)%A088934(2*n+1))`
-/

namespace A389627.P16110262987384826150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359043 (Int.tmod (A319367 (n + 1)) (A088934 (2 * n + 1))).toNat

end

end A389627.P16110262987384826150

/-! ## A389627.P9230598968146619365

`A353849(A239264(n))`
-/

namespace A389627.P9230598968146619365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 (A239264 n).toNat

end

end A389627.P9230598968146619365

/-!
# A389628: Expansion of (1/x) * Series_Reversion( x * (1 - x)^2 * (1 - x / (1 - x)^3) ).

The programs for A389628, the canonical program `A389628.P16065119118174655001` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389628 has offset 0).

The definition of A389628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389628.P16065119118174655001

`1/(n+1)*∑{#}[n, C(n+#, #)*C(3*n+2*#+1, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389628

/-- `1/(n+1)*∑{#}[n, C(n+#, #)*C(3*n+2*#+1, n-#)]` -/
def P16065119118174655001.Spec : Prop :=
  ∀ n, P16065119118174655001.a n = (A389628 n : ℚ)

end A389628

/-!
# A389629: Expansion of (1/x) * Series_Reversion( x * (1 - x)^2 * (1 - x^2 / (1 - x)^3) ).

The programs for A389629, the canonical program `A389629.P14456016958108652168` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389629 has offset 0).

The definition of A389629 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389629.P14456016958108652168

`1/(n+1)*∑{#}[floor(n/2), C(n+#, #)*C(3*n+#+1, n-2*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389629

/-- `1/(n+1)*∑{#}[floor(n/2), C(n+#, #)*C(3*n+#+1, n-2*#)]` -/
def P14456016958108652168.Spec : Prop :=
  ∀ n, P14456016958108652168.a n = (A389629 n : ℚ)

end A389629

/-!
# A389630: Expansion of (1/x) * Series_Reversion( x * (1 - x)^2 * (1 - x^3 / (1 - x)^3) ).

The programs for A389630, the canonical program `A389630.P15996895219562794749` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389630 has offset 0).

The definition of A389630 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389630.P15996895219562794749

`1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(3*n+1, n-3*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389630

/-- `1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(3*n+1, n-3*#)]` -/
def P15996895219562794749.Spec : Prop :=
  ∀ n, P15996895219562794749.a n = (A389630 n : ℚ)

end A389630

/-! ## A389630.P8676332065161791150

`A389550(n)+A079978(A389549(n))`
-/

namespace A389630.P8676332065161791150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389550 n + A079978 (A389549 n).toNat

end

end A389630.P8676332065161791150

namespace A389630

/-- `A389550(n)+A079978(A389549(n))` -/
def P8676332065161791150.Spec : Prop :=
  ∀ n, P8676332065161791150.a n = A389630 n

end A389630

/-! ## A389630.P9087813010798224049

`A389550(n)+A292251(A372415(n))`
-/

namespace A389630.P9087813010798224049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389550 n + A292251 (A372415 n).toNat

end

end A389630.P9087813010798224049

namespace A389630

/-- `A389550(n)+A292251(A372415(n))` -/
def P9087813010798224049.Spec : Prop :=
  ∀ n, P9087813010798224049.a n = A389630 n

end A389630

/-!
# A389631: Expansion of (1/x) * Series_Reversion( x / (1 + x^2 * (1 + x))^2 ).

The programs for A389631, the canonical program `A389631.P11472378641246972895` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389631 has offset 0).

The definition of A389631 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389631.P11472378641246972895

`1/(n+1)*∑{#}[floor(n/2), C(2*(n+1), #)*C(#, n-2*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389631

/-- `1/(n+1)*∑{#}[floor(n/2), C(2*(n+1), #)*C(#, n-2*#)]` -/
def P11472378641246972895.Spec : Prop :=
  ∀ n, P11472378641246972895.a n = (A389631 n : ℚ)

end A389631

/-!
# A389632: Expansion of (1/x) * Series_Reversion( x / (1 + x^2 * (1 + x)^2)^2 ).

The programs for A389632, the canonical program `A389632.P3601242375202658895` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389632 has offset 0).

The definition of A389632 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389632.P3601242375202658895

`1/(n+1)*∑{#}[floor(n/2), C(2*(n+1), #)*C(2*#, n-2*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389632

/-- `1/(n+1)*∑{#}[floor(n/2), C(2*(n+1), #)*C(2*#, n-2*#)]` -/
def P3601242375202658895.Spec : Prop :=
  ∀ n, P3601242375202658895.a n = (A389632 n : ℚ)

end A389632

/-!
# A389633: Numbers k whose abundancy (sigma(k)/k) is less than 4/3, where sigma(k) = A000203(k).

The programs for A389633, there is no canonical definition to state claims against.
-/

/-! ## A389633.P13466423212070459531

`record[A302034(A125746(n+1))]`
-/

namespace A389633.P13466423212070459531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302034 (A125746 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389633.P13466423212070459531

/-! ## A389633.P11574049539705786168

`lt[3, A254571(1+n)]+1`
-/

namespace A389633.P11574049539705786168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254571 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A389633.P11574049539705786168

/-! ## A389633.P11257739707270576908

`record[A028234(A005100(n+1))]`
-/

namespace A389633.P11257739707270576908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A005100 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389633.P11257739707270576908

/-! ## A389633.P17309830307075477897

`record[A028234(A237046(n+1))]`
-/

namespace A389633.P17309830307075477897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A237046 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389633.P17309830307075477897

/-! ## A389633.P9742423397318560715

`A004526(∩[A005100(n+1), A016825(n)])`
-/

namespace A389633.P9742423397318560715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A389633.P9742423397318560715

/-! ## A389633.P17189028838882370466

`A032742(∩[A005100(n+1), A016825(n)])`
-/

namespace A389633.P17189028838882370466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A389633.P17189028838882370466

/-! ## A389633.P3635817403817763907

`A367734(n+1)%A002189(n)`
-/

namespace A389633.P3635817403817763907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367734 (n + 1)) (A002189 n)

end

end A389633.P3635817403817763907

/-!
# A389634: Numbers k whose abundancy (sigma(k)/k) is at least 4/3, where sigma(k) = A000203(k).

The programs for A389634, the canonical program `A389634.P7278143052267109822` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389634 has offset 1).

The definition of A389634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389634.P7278143052267109822

`∪[A039725(n+1), A047228(n+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A389634

/-- `∪[A039725(n+1), A047228(n+1)]` -/
def P7278143052267109822.Spec : Prop :=
  ∀ n, (P7278143052267109822.a n : ℤ) = A389634 (n + 1)

theorem P7278143052267109822.correct : P7278143052267109822.Spec := by
  intro n
  simp only [A389634, Nat.add_sub_cancel]

end A389634

/-! ## A389634.P17880790160974286780

`lt[A254571(n+1)², 16]+1`
-/

namespace A389634.P17880790160974286780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254571 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A389634.P17880790160974286780

namespace A389634

/-- `lt[A254571(n+1)², 16]+1` -/
def P17880790160974286780.Spec : Prop :=
  ∀ n, (P17880790160974286780.a n : ℤ) = A389634 (n + 1)

end A389634

/-! ## A389634.P18295450134564263749

`lt[A042968(n+1), A000203(n+1)]+1`
-/

namespace A389634.P18295450134564263749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A389634.P18295450134564263749

namespace A389634

/-- `lt[A042968(n+1), A000203(n+1)]+1` -/
def P18295450134564263749.Spec : Prop :=
  ∀ n, (P18295450134564263749.a n : ℤ) = A389634 (n + 1)

end A389634

/-! ## A389634.P13307556253838840226

`lt[A003157(n+1), A272027(n+1)]+1`
-/

namespace A389634.P13307556253838840226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A389634.P13307556253838840226

namespace A389634

/-- `lt[A003157(n+1), A272027(n+1)]+1` -/
def P13307556253838840226.Spec : Prop :=
  ∀ n, (P13307556253838840226.a n : ℤ) = A389634 (n + 1)

end A389634

/-! ## A389634.P11026740670526513289

`lt[A285962(n+1), A000203(n+1)]+1`
-/

namespace A389634.P11026740670526513289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A389634.P11026740670526513289

namespace A389634

/-- `lt[A285962(n+1), A000203(n+1)]+1` -/
def P11026740670526513289.Spec : Prop :=
  ∀ n, (P11026740670526513289.a n : ℤ) = A389634 (n + 1)

end A389634

/-! ## A389634.P17315660396592543652

`lt[A007431(n²), A000217(n)]`
-/

namespace A389634.P17315660396592543652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389634.P17315660396592543652

namespace A389634

/-- `lt[A007431(n²), A000217(n)]` -/
def P17315660396592543652.Spec : Prop :=
  ∀ n, (P17315660396592543652.a n : ℤ) = A389634 (n + 1)

end A389634

/-! ## A389634.P10342689915790652477

`∪[A039725(n+1), A106577(n+1)]`
-/

namespace A389634.P10342689915790652477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389634.P10342689915790652477

namespace A389634

/-- `∪[A039725(n+1), A106577(n+1)]` -/
def P10342689915790652477.Spec : Prop :=
  ∀ n, (P10342689915790652477.a n : ℤ) = A389634 (n + 1)

end A389634

/-! ## A389634.P4726577302589313491

`eq[A213636(n+1), A213636(A235395(n+1))]`
-/

namespace A389634.P4726577302589313491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213636 (A235395 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389634.P4726577302589313491

namespace A389634

/-- `eq[A213636(n+1), A213636(A235395(n+1))]` -/
def P4726577302589313491.Spec : Prop :=
  ∀ n, (P4726577302589313491.a n : ℤ) = A389634 (n + 1)

end A389634

/-! ## A389634.P3579836007909338137

`lt[A000607(A111660(n)), A018783(n)]`
-/

namespace A389634.P3579836007909338137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A111660 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389634.P3579836007909338137

namespace A389634

/-- `lt[A000607(A111660(n)), A018783(n)]` -/
def P3579836007909338137.Spec : Prop :=
  ∀ n, (P3579836007909338137.a n : ℤ) = A389634 (n + 1)

end A389634

/-!
# A389635: Primitive terms of A389634.

The programs for A389635, there is no canonical definition to state claims against.
-/

/-! ## A389635.P16259462579969400115

`A075235(n+1)*A355442(A059381(n+1))`
-/

namespace A389635.P16259462579969400115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075235 (n + 1) * A355442 (A059381 (n + 1)).toNat

end

end A389635.P16259462579969400115

/-!
# A389636: Nondeficient numbers k such that k/p is nondeficient (see A023196) for all primes p dividing k.

The programs for A389636, there is no canonical definition to state claims against.
-/

/-! ## A389636.P3773724885020498714

`A320632(lt[A363409(n), A265683(n+1)])`
-/

namespace A389636.P3773724885020498714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363409 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320632 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A389636.P3773724885020498714

/-! ## A389636.P5386423841625465549

`A334674(A131197(n+1))`
-/

namespace A389636.P5386423841625465549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334674 (A131197 (n + 1)).toNat

end

end A389636.P5386423841625465549

/-!
# A389637: Numerators of coefficients of 1- Pi/(2*EllipticK).

The programs for A389637, there is no canonical definition to state claims against.
-/

/-! ## A389637.P17978390202540236222

`A007913(A054474(n))-A146075(n)`
-/

namespace A389637.P17978390202540236222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A054474 n).toNat - A146075 n

end

end A389637.P17978390202540236222

/-! ## A389637.P10632952596977747441

`A000265(A054474(n))%A002894(n)`
-/

namespace A389637.P10632952596977747441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (A054474 n).toNat) (A002894 n)

end

end A389637.P10632952596977747441

/-!
# A389638: Numbers k such that 2*k can be represented as the sum of four (not necessarily distinct) squares of primes.

The programs for A389638, there is no canonical definition to state claims against.
-/

/-! ## A389638.P17702753336003752668

`A301298(n+2)-A120803(A032563(n+1))`
-/

namespace A389638.P17702753336003752668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 (n + 2) - A120803 (A032563 (n + 1)).toNat

end

end A389638.P17702753336003752668

/-!
# A389639: Number of ways to write 2*n as the sum of four (not necessarily distinct) squares of primes.

The programs for A389639, there is no canonical definition to state claims against.
-/

/-! ## A389639.P1517854369317530494

`A157687(gcd(A068499(n+1), A214209(n+5)))`
-/

namespace A389639.P1517854369317530494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157687 (Int.gcd (A068499 (n + 1)) (A214209 (n + 5)))

end

end A389639.P1517854369317530494

/-! ## A389639.P7469648849160464972

`A355451(A371255(n+1))`
-/

namespace A389639.P7469648849160464972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355451 (A371255 (n + 1)).toNat

end

end A389639.P7469648849160464972

/-! ## A389639.P16944171303252829957

`and(A241542(n+1), A389525(n))`
-/

namespace A389639.P16944171303252829957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A241542 (n + 1)) (A389525 n)

end

end A389639.P16944171303252829957

/-! ## A389639.P12253664956630499831

`C(2, ∏{digits}[A196149(A340008(2*(n+1))), #]+2)`
-/

namespace A389639.P12253664956630499831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196149 (A340008 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod + 2)

end

end A389639.P12253664956630499831

/-! ## A389639.P4711930161359802638

`and(A111076(A317715(n)), A123740(n+4))`
-/

namespace A389639.P4711930161359802638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A111076 (A317715 n).toNat) (A123740 (n + 4))

end

end A389639.P4711930161359802638

/-!
# A389640: Numbers k such that 2*k can be represented as the sum of four distinct squares of primes.

The programs for A389640, there is no canonical definition to state claims against.
-/

/-! ## A389640.P13006712401606914594

`2*A216055(1+n)`
-/

namespace A389640.P13006712401606914594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A216055 (1 + n)

end

end A389640.P13006712401606914594

/-! ## A389640.P10015984998359165172

`A004277(A216055(n+1))`
-/

namespace A389640.P10015984998359165172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A216055 (n + 1)).toNat

end

end A389640.P10015984998359165172

/-! ## A389640.P13757712847078947509

`lcm(A216055(n+1), A239374(n+2))`
-/

namespace A389640.P13757712847078947509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A216055 (n + 1)) (A239374 (n + 2))

end

end A389640.P13757712847078947509

/-!
# A389642: Maximum word length generated by acyclic context-free grammar in Greibach normal form whose grammar size is at most n.

The programs for A389642, the canonical program `A389642.P6555796057139133583` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389642 has offset 1).

The definition of A389642 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389642.P6555796057139133583

`ogf((1+x^2+x^3+x^4-3x^5+2x^6-x^7-x^8+x^10+x^11-2x^12+5x^15-5x^16+6x^19-6x^20)/(1-x-4x^5+4x^6))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389642

/-- `ogf((1+x^2+x^3+x^4-3x^5+2x^6-x^7-x^8+x^10+x^11-2x^12+5x^15-5x^16+6x^19-6x^20)/(1-x-4x^5+4x^6))` -/
def P6555796057139133583.Spec : Prop :=
  ∀ n, P6555796057139133583.a n = A389642 (n + 1)

theorem P6555796057139133583.correct : P6555796057139133583.Spec := by
  intro n
  simp only [A389642, Nat.add_sub_cancel]

end A389642

/-! ## A389642.P9303694322088316308

`A330780(A398329(n))`
-/

namespace A389642.P9303694322088316308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330780 (A398329 n).toNat

end

end A389642.P9303694322088316308

namespace A389642

/-- `A330780(A398329(n))` -/
def P9303694322088316308.Spec : Prop :=
  ∀ n, P9303694322088316308.a n = A389642 (n + 1)

end A389642

/-! ## A389642.P5131662493537240879

`A243903(A052335(n+1))`
-/

namespace A389642.P5131662493537240879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243903 (A052335 (n + 1)).toNat

end

end A389642.P5131662493537240879

namespace A389642

/-- `A243903(A052335(n+1))` -/
def P5131662493537240879.Spec : Prop :=
  ∀ n, P5131662493537240879.a n = A389642 (n + 1)

end A389642

/-! ## A389642.P11210856176220300245

`A243903(A387328(n+1))`
-/

namespace A389642.P11210856176220300245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243903 (A387328 (n + 1)).toNat

end

end A389642.P11210856176220300245

namespace A389642

/-- `A243903(A387328(n+1))` -/
def P11210856176220300245.Spec : Prop :=
  ∀ n, P11210856176220300245.a n = A389642 (n + 1)

end A389642

/-! ## A389642.P17711489934508039671

`A391592(A391628(n+4))`
-/

namespace A389642.P17711489934508039671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391592 (A391628 (n + 4)).toNat

end

end A389642.P17711489934508039671

namespace A389642

/-- `A391592(A391628(n+4))` -/
def P17711489934508039671.Spec : Prop :=
  ∀ n, P17711489934508039671.a n = A389642 (n + 1)

end A389642

/-!
# A389644: Nonnegative numbers k such that for some integer m the factorial base expansion of k (without leading zeros), when read backwards, corresponds to that of m, and conversely, the factorial base expansion of m (without leading zeros), when read backwards, corresponds to that of k.

The programs for A389644, there is no canonical definition to state claims against.
-/

/-! ## A389644.P14274157938878782677

`eq[A099563(n), A165226(n)]`
-/

namespace A389644.P14274157938878782677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389644.P14274157938878782677

/-! ## A389644.P6101863947512227118

`eq[A165226(n), A265333(n)]`
-/

namespace A389644.P6101863947512227118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165226 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265333 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389644.P6101863947512227118

/-! ## A389644.P11682094210640681427

`eq[A175834(n), A265333(n)]`
-/

namespace A389644.P11682094210640681427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175834 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265333 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389644.P11682094210640681427

/-! ## A389644.P4901219324275026127

`eq[A011616(n), A175834(n)]`
-/

namespace A389644.P4901219324275026127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011616 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175834 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389644.P4901219324275026127

/-! ## A389644.P17240011408715219462

`eq[A121802(n), A300953(n)]`
-/

namespace A389644.P17240011408715219462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121802 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389644.P17240011408715219462

/-!
# A389647: a(n) is the smallest k > n such that prime(k) contains the digits of prime(n) as a substring.

The programs for A389647, there is no canonical definition to state claims against.
-/

/-! ## A389647.P16273733868445940625

`A000720(A064735(n+1))`
-/

namespace A389647.P16273733868445940625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A064735 (n + 1)).toNat

end

end A389647.P16273733868445940625

/-! ## A389647.P9727367929585411436

`A066328(or(1, A064735(n+1)))`
-/

namespace A389647.P9727367929585411436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (Int.lor 1 (A064735 (n + 1))).toNat

end

end A389647.P9727367929585411436

/-! ## A389647.P10925527345245842112

`∑{d}[A064735(n+1), A066328(#)]`
-/

namespace A389647.P10925527345245842112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A066328 d

end

end A389647.P10925527345245842112

/-! ## A389647.P14679340273053623394

`A000720(A252629(1+n)+Δ[A007504(n)])`
-/

namespace A389647.P14679340273053623394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A252629 (1 + n) + (f1 (n + 1) - f1 n)).toNat

end

end A389647.P14679340273053623394

/-! ## A389647.P5422916240895818941

`A082058(A064735(2*n+1-n))`
-/

namespace A389647.P5422916240895818941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082058 (A064735 (2 * n + 1 - n)).toNat

end

end A389647.P5422916240895818941

/-! ## A389647.P18355720165888659952

`A082058(A381606(A000040(n+1)))`
-/

namespace A389647.P18355720165888659952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082058 (A381606 (A000040 (n + 1)).toNat).toNat

end

end A389647.P18355720165888659952

/-!
# A389648: Y coordinate of point n while traversing the half plane by integer points in rectangular layers starting from n=1 at the origin.

The programs for A389648, the canonical program `A389648.P661621194831941048` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389648 has offset 1).

The definition of A389648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389648.P661621194831941048

`A000194(A340172(n+1)*A340172(n))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A389648

/-- `A000194(A340172(n+1)*A340172(n))` -/
def P661621194831941048.Spec : Prop :=
  ∀ n, P661621194831941048.a n = A389648 (n + 1)

theorem P661621194831941048.correct : P661621194831941048.Spec := by
  intro n
  simp only [A389648, Nat.add_sub_cancel]

end A389648

/-! ## A389648.P11902578072727820794

`A389948(2*(n+1))`
-/

namespace A389648.P11902578072727820794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389948 (2 * (n + 1))

end

end A389648.P11902578072727820794

namespace A389648

/-- `A389948(2*(n+1))` -/
def P11902578072727820794.Spec : Prop :=
  ∀ n, P11902578072727820794.a n = A389648 (n + 1)

end A389648

/-! ## A389648.P13424374813159574593

`A000520(A235117(n))`
-/

namespace A389648.P13424374813159574593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000520 (A235117 n).toNat

end

end A389648.P13424374813159574593

namespace A389648

/-- `A000520(A235117(n))` -/
def P13424374813159574593.Spec : Prop :=
  ∀ n, P13424374813159574593.a n = A389648 (n + 1)

end A389648

/-! ## A389648.P4918763170277454821

`A305832(A225812(n))`
-/

namespace A389648.P4918763170277454821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305832 (A225812 n).toNat

end

end A389648.P4918763170277454821

namespace A389648

/-- `A305832(A225812(n))` -/
def P4918763170277454821.Spec : Prop :=
  ∀ n, P4918763170277454821.a n = A389648 (n + 1)

end A389648

/-! ## A389648.P3778218317989304273

`A369165(A225812(n)²)`
-/

namespace A389648.P3778218317989304273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369165 (A225812 n ^ 2).toNat

end

end A389648.P3778218317989304273

namespace A389648

/-- `A369165(A225812(n)²)` -/
def P3778218317989304273.Spec : Prop :=
  ∀ n, P3778218317989304273.a n = A389648 (n + 1)

end A389648

/-!
# A389649: X coordinate of point n while traversing the half plane by integer points in rectangular layers starting from n=1 at the origin.

The programs for A389649, there is no canonical definition to state claims against.
-/

/-! ## A389649.P4596056352098899427

`A389948(Δ[n²])`
-/

namespace A389649.P4596056352098899427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389948 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A389649.P4596056352098899427

/-!
# A389653: Expansion of g^2/(1 - x^3*g), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A389653, there is no canonical definition to state claims against.
-/

/-! ## A389653.P14116257247233561323

`A069271(n)+A063993(A386452(n))`
-/

namespace A389653.P14116257247233561323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069271 n + A063993 (A386452 n).toNat

end

end A389653.P14116257247233561323

/-! ## A389653.P18160171168486686162

`A391079(n)-A194276(A363262(n+1))`
-/

namespace A389653.P18160171168486686162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391079 n - A194276 (A363262 (n + 1)).toNat

end

end A389653.P18160171168486686162

/-!
# A389656: Triangle read by rows: T(n,k) is the number of partitions of n into distinct parts containing the number of parts with rank k.

The programs for A389656, there is no canonical definition to state claims against.
-/

/-! ## A389656.P2053756500084468880

`A173861(A261212(n+1))`
-/

namespace A389656.P2053756500084468880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173861 (A261212 (n + 1)).toNat

end

end A389656.P2053756500084468880

/-! ## A389656.P2227726004884167875

`col(gcd(A137620(2*n+5), A276949(2*(n+1))))`
-/

namespace A389656.P2227726004884167875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (Int.gcd (A137620 (2 * n + 5)) (A276949 (2 * (n + 1))))

end

end A389656.P2227726004884167875

/-! ## A389656.P18146214252535894731

`A157687(or(A194805(n), A282442(n+1)))`
-/

namespace A389656.P18146214252535894731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157687 (Int.lor (A194805 n) (A282442 (n + 1))).toNat

end

end A389656.P18146214252535894731

/-! ## A389656.P3426921192607991644

`A344649(A133478(2*(n+1))%A000005(n+1))`
-/

namespace A389656.P3426921192607991644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344649 (Int.tmod (A133478 (2 * (n + 1))) (A000005 (n + 1))).toNat

end

end A389656.P3426921192607991644

/-! ## A389656.P13414718746205897944

`A368994(A320116(n+1))`
-/

namespace A389656.P13414718746205897944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368994 (A320116 (n + 1)).toNat

end

end A389656.P13414718746205897944

/-!
# A389657: a(n) is zero if n is a square, otherwise a(n) is the least triangular number m > 0 such that m*n is a triangular number.

The programs for A389657, there is no canonical definition to state claims against.
-/

/-! ## A389657.P16732045805302750384

`A049240(n+1)*A227054(n+1)`
-/

namespace A389657.P16732045805302750384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (n + 1) * A227054 (n + 1)

end

end A389657.P16732045805302750384

/-! ## A389657.P10530259802748721181

`A227054(n+1)%A077672(n+1)`
-/

namespace A389657.P10530259802748721181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227054 (n + 1)) (A077672 (n + 1))

end

end A389657.P10530259802748721181

/-! ## A389657.P7518167064598928715

`lcm(A068717(1+n), A227054(n+1))`
-/

namespace A389657.P7518167064598928715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A068717 (1 + n)) (A227054 (n + 1))

end

end A389657.P7518167064598928715

/-! ## A389657.P10033995627400135471

`A227054(n+1)%A304255(n)`
-/

namespace A389657.P10033995627400135471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227054 (n + 1)) (A304255 n)

end

end A389657.P10033995627400135471

/-! ## A389657.P17097691322480495263

`A227054(n+1)%A010951(n)`
-/

namespace A389657.P17097691322480495263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227054 (n + 1)) (A010951 n)

end

end A389657.P17097691322480495263

/-!
# A389658: Expansion of (1/x) * Series_Reversion( x / (1 + x^2 / (1 - x)^2)^2 ).

The programs for A389658, there is no canonical definition to state claims against.
-/

/-! ## A389658.P15764222735713790642

`A057374(n)+A002375(A346626(n))`
-/

namespace A389658.P15764222735713790642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057374 n + A002375 (A346626 n).toNat

end

end A389658.P15764222735713790642

/-! ## A389658.P13879204568546954495

`A038567(A120732(n))-A289023(n+2)`
-/

namespace A389658.P13879204568546954495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A120732 n).toNat - A289023 (n + 2)

end

end A389658.P13879204568546954495

/-!
# A389660: Expansion of (1/x) * Series_Reversion( x * (1 - x * (1 + x)^2)^2 ).

The programs for A389660, the canonical program `A389660.P18323836955170674905` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389660 has offset 0).

The definition of A389660 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389660.P18323836955170674905

`1/(n+1)*∑{#}[n, C(2*n+#+1, #)*C(2*#, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389660

/-- `1/(n+1)*∑{#}[n, C(2*n+#+1, #)*C(2*#, n-#)]` -/
def P18323836955170674905.Spec : Prop :=
  ∀ n, P18323836955170674905.a n = (A389660 n : ℚ)

end A389660

/-!
# A389661: Expansion of (1/x) * Series_Reversion( x * (1 - x^2 * (1 + x))^2 ).

The programs for A389661, the canonical program `A389661.P16263319392808197776` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389661 has offset 0).

The definition of A389661 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389661.P16263319392808197776

`1/(n+1)*∑{#}[floor(n/2), C(2*n+#+1, #)*C(#, n-2*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389661

/-- `1/(n+1)*∑{#}[floor(n/2), C(2*n+#+1, #)*C(#, n-2*#)]` -/
def P16263319392808197776.Spec : Prop :=
  ∀ n, P16263319392808197776.a n = (A389661 n : ℚ)

end A389661

/-!
# A389662: Expansion of (1/x) * Series_Reversion( x * (1 - x^2 * (1 + x)^2)^2 ).

The programs for A389662, the canonical program `A389662.P822012087271725064` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389662 has offset 0).

The definition of A389662 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389662.P822012087271725064

`1/(n+1)*∑{#}[floor(n/2), C(2*n+#+1, #)*C(2*#, n-2*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389662

/-- `1/(n+1)*∑{#}[floor(n/2), C(2*n+#+1, #)*C(2*#, n-2*#)]` -/
def P822012087271725064.Spec : Prop :=
  ∀ n, P822012087271725064.a n = (A389662 n : ℚ)

end A389662

/-!
# A389675: a(n) = floor(x^n) where x^x = e.

The programs for A389675, there is no canonical definition to state claims against.
-/

/-! ## A389675.P13098503834376165824

`A002024(A270062(n))`
-/

namespace A389675.P13098503834376165824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A270062 n).toNat

end

end A389675.P13098503834376165824

/-! ## A389675.P12561349698555901021

`A226164(A360468(n))`
-/

namespace A389675.P12561349698555901021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226164 (A360468 n).toNat

end

end A389675.P12561349698555901021

/-! ## A389675.P3875107241087115939

`A000194(A090426(n+1))`
-/

namespace A389675.P3875107241087115939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A090426 (n + 1)).toNat

end

end A389675.P3875107241087115939

/-! ## A389675.P12051140553943430897

`A183147(A239553(n+1))`
-/

namespace A389675.P12051140553943430897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183147 (A239553 (n + 1)).toNat

end

end A389675.P12051140553943430897

/-! ## A389675.P12883288466578562550

`A000196(A097472(n)-A000196(n))`
-/

namespace A389675.P12883288466578562550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A097472 n - A000196 n).toNat

end

end A389675.P12883288466578562550

/-!
# A389676: a(n) = Min_{0<i<n} (prime(n-i) + prime(n+i)).

The programs for A389676, there is no canonical definition to state claims against.
-/

/-! ## A389676.P3122905114169993843

`A389677(n+2)+A100484(n+2)`
-/

namespace A389676.P3122905114169993843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389677 (n + 2) + A100484 (n + 2)

end

end A389676.P3122905114169993843

/-! ## A389676.P8240681503885459405

`A000040(n+2)+A389677(n+2)+A000040(n+2)`
-/

namespace A389676.P8240681503885459405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + (A389677 (n + 2) + A000040 (n + 2))

end

end A389676.P8240681503885459405

/-!
# A389677: a(n) = A389676(n) - 2*prime(n).

The programs for A389677, there is no canonical definition to state claims against.
-/

/-! ## A389677.P2398257212148131608

`A389676(n+2)-A100484(n+2)`
-/

namespace A389677.P2398257212148131608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389676 (n + 2) - A100484 (n + 2)

end

end A389677.P2398257212148131608

/-! ## A389677.P8930975915162221364

`A389676(n+2)-2*A000040(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389677.P8930975915162221364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389676 (n + 2) - 2 * A000040 (n + 2)

end

end A389677.P8930975915162221364

/-!
# A389678: Powers k^m, m > 1, where k is neither squarefree nor squareful and A053669(k) < A006530(k).

The programs for A389678, there is no canonical definition to state claims against.
-/

/-! ## A389678.P15322493450606612475

`∩[A389695(n+1), A390180(n+1)]`
-/

namespace A389678.P15322493450606612475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389678.P15322493450606612475

/-! ## A389678.P9298202778685168870

`∩[A386762(n+1), A390180(n+1)]`
-/

namespace A389678.P9298202778685168870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389678.P9298202778685168870

/-! ## A389678.P7039348916516523462

`∩[A380456(n+1), A386762(n+1)]`
-/

namespace A389678.P7039348916516523462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389678.P7039348916516523462

/-! ## A389678.P16351183307497051522

`∩[A380456(n+1), A389695(n+1)]`
-/

namespace A389678.P16351183307497051522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389678.P16351183307497051522

/-! ## A389678.P13765970590279012903

`∩[A390180(n+1), A390823(n+1)]`
-/

namespace A389678.P13765970590279012903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389678.P13765970590279012903

/-! ## A389678.P2459004832365230988

`∩[A369417(n+1), A386762(n+1)]`
-/

namespace A389678.P2459004832365230988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389678.P2459004832365230988

/-! ## A389678.P17154612583515285379

`∩[A369417(n+1), A389695(n+1)]`
-/

namespace A389678.P17154612583515285379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389678.P17154612583515285379

/-! ## A389678.P5981813213458624428

`∩[A380456(n+1), A391115(n+1)]`
-/

namespace A389678.P5981813213458624428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389678.P5981813213458624428

/-! ## A389678.P2415964633333901370

`filter[A390180(n+1), A353380(#)]`
-/

namespace A389678.P2415964633333901370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353380 (f1 j).toNat = 1) n)

end

end A389678.P2415964633333901370

/-!
# A389680: Numbers k for which no i > 1 exists such that k + i is composite and its least prime factor exceeds i^2.

The programs for A389680, there is no canonical definition to state claims against.
-/

/-! ## A389680.P5877116156136036210

`comp[A038509(n+1)-3]+1`
-/

namespace A389680.P5877116156136036210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A389680.P5877116156136036210

/-! ## A389680.P15305417712749205080

`comp[A391330(1+n)-3]+1`
-/

namespace A389680.P15305417712749205080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391330 (1 + n) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A389680.P15305417712749205080

/-! ## A389680.P5070886626630179168

`lt[A238642(n+1), A250120(n)]`
-/

namespace A389680.P5070886626630179168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389680.P5070886626630179168

/-! ## A389680.P6249687655445941366

`lt[A006129(A107286(n+2)), n]`
-/

namespace A389680.P6249687655445941366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006129 (A107286 (n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A389680.P6249687655445941366

/-! ## A389680.P12174547339451965820

`∪[A030173(n+1), A016777(n)]`
-/

namespace A389680.P12174547339451965820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389680.P12174547339451965820

/-! ## A389680.P9168396675240354006

`∪[A030173(n+1), A016921(n)]`
-/

namespace A389680.P9168396675240354006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389680.P9168396675240354006

/-! ## A389680.P9953647448075614

`∪[A030173(n+1), A112414(n)]`
-/

namespace A389680.P9953647448075614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112414 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389680.P9953647448075614

/-! ## A389680.P3762897954043965803

`∪[A030173(n+1), A271114(n)]`
-/

namespace A389680.P3762897954043965803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389680.P3762897954043965803

/-! ## A389680.P7913036481181849984

`lt[A107286(n+2), A040000(n)²]`
-/

namespace A389680.P7913036481181849984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389680.P7913036481181849984

/-! ## A389680.P7663639628693124137

`∪[A024926(n+1), A030173(n+1)]`
-/

namespace A389680.P7663639628693124137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389680.P7663639628693124137

/-!
# A389682: Powers k^m, m > 1, where k is neither squarefree nor squareful, and has a primorial kernel but is not a product of primorials.

The programs for A389682, there is no canonical definition to state claims against.
-/

/-! ## A389682.P3695429860557745113

`∩[A380452(n+1), A389394(n+1)]`
-/

namespace A389682.P3695429860557745113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389682.P3695429860557745113

/-! ## A389682.P7451562427001702290

`∩[A369420(n+1), A389394(n+1)]`
-/

namespace A389682.P7451562427001702290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389682.P7451562427001702290

/-! ## A389682.P4585812066042310667

`∩[A056808(n+1), A389394(n+1)]`
-/

namespace A389682.P4585812066042310667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389682.P4585812066042310667

/-! ## A389682.P14751362135621484025

`∩[A056808(n+1), A392424(n+1)]`
-/

namespace A389682.P14751362135621484025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389682.P14751362135621484025

/-! ## A389682.P5528421546325913837

`∩[A369420(n+1), A392424(n+1)]`
-/

namespace A389682.P5528421546325913837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389682.P5528421546325913837

/-! ## A389682.P9197560421614894534

`∩[A380452(n+1), A392424(n+1)]`
-/

namespace A389682.P9197560421614894534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389682.P9197560421614894534

/-! ## A389682.P8075984402379318518

`∩[A055932(n+1), A389695(n+1)]`
-/

namespace A389682.P8075984402379318518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389682.P8075984402379318518

/-! ## A389682.P18306917716690200885

`∩[A056808(n+1), A389695(n+1)]`
-/

namespace A389682.P18306917716690200885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389682.P18306917716690200885

/-! ## A389682.P557470442548357964

`∩[A304250(n+1), A389695(n+1)]`
-/

namespace A389682.P557470442548357964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389682.P557470442548357964

/-! ## A389682.P5317682144780647595

`∩[A369374(n+1), A389695(n+1)]`
-/

namespace A389682.P5317682144780647595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389682.P5317682144780647595

/-! ## A389682.P18337224427042031290

`∩[A369420(n+1), A389695(n+1)]`
-/

namespace A389682.P18337224427042031290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389682.P18337224427042031290

/-! ## A389682.P17798686261579611725

`∩[A380446(n+1), A389695(n+1)]`
-/

namespace A389682.P17798686261579611725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389682.P17798686261579611725

/-! ## A389682.P194103222252783134

`∩[A380452(n+1), A389695(n+1)]`
-/

namespace A389682.P194103222252783134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389682.P194103222252783134

/-! ## A389682.P14945497798150068296

`∩[A387901(n+1), A389695(n+1)]`
-/

namespace A389682.P14945497798150068296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389682.P14945497798150068296

/-! ## A389682.P12738428984938073414

`∩[A389312(n+1), A389695(n+1)]`
-/

namespace A389682.P12738428984938073414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389682.P12738428984938073414

/-! ## A389682.P3054955334664307730

`∩[A389394(n+1), A389695(n+1)]`
-/

namespace A389682.P3054955334664307730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389682.P3054955334664307730

/-! ## A389682.P13267749083966507063

`∩[A389695(n+1), A398301(n+1)]`
-/

namespace A389682.P13267749083966507063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389682.P13267749083966507063

/-! ## A389682.P17847519638003985288

`∩[A056808(n+1), A386762(n+1)]`
-/

namespace A389682.P17847519638003985288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389682.P17847519638003985288

/-! ## A389682.P14253496406397111795

`∩[A369420(n+1), A386762(n+1)]`
-/

namespace A389682.P14253496406397111795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389682.P14253496406397111795

/-! ## A389682.P916308782006405859

`∩[A380452(n+1), A386762(n+1)]`
-/

namespace A389682.P916308782006405859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389682.P916308782006405859

/-!
# A389686: Array read by antidiagonals: T(n,k) is the number of nondecreasing integer sequences of length k with sum zero and sum of absolute values 2n.

The programs for A389686, there is no canonical definition to state claims against.
-/

/-! ## A389686.P13020978343714669738

`A333224(A001316(n)*A333361(n))`
-/

namespace A389686.P13020978343714669738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 (A001316 n * A333361 n).toNat

end

end A389686.P13020978343714669738

/-! ## A389686.P1332709470518268723

`A333381(lcm(A091351(n), A333361(n)))`
-/

namespace A389686.P1332709470518268723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (Int.lcm (A091351 n) (A333361 n))

end

end A389686.P1332709470518268723

/-! ## A389686.P6673043020765246221

`A333381(A063440(n+1)*A333361(n))`
-/

namespace A389686.P6673043020765246221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A063440 (n + 1) * A333361 n).toNat

end

end A389686.P6673043020765246221

/-! ## A389686.P8365812010933369568

`A373951(A105272(n+1))^A157103(3*(n+1))`
-/

namespace A389686.P8365812010933369568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373951 (A105272 (n + 1)).toNat : ℚ) ^ (A157103 (3 * (n + 1)) : ℤ)

end

end A389686.P8365812010933369568

/-! ## A389686.P7001008098847438019

`A368847(A061579(n)%A101303(n+5))`
-/

namespace A389686.P7001008098847438019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368847 (Int.tmod (A061579 n) (A101303 (n + 5))).toNat

end

end A389686.P7001008098847438019

/-!
# A389692: Expansion of (1/x) * Series_Reversion( x * (1 - x / (1 - x)^3)^2 ).

The programs for A389692, there is no canonical definition to state claims against.
-/

/-! ## A389692.P14985104972250184460

`A225215(A262977(n)+n)`
-/

namespace A389692.P14985104972250184460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225215 (A262977 n + (n : ℤ)).toNat

end

end A389692.P14985104972250184460

/-!
# A389695: Powers k^m, m > 1, where k is neither squarefree, squareful, nor a product of primorials.

The programs for A389695, there is no canonical definition to state claims against.
-/

/-! ## A389695.P14745980198615137446

`∪[A389678(n+1), A389682(n+1)]`
-/

namespace A389695.P14745980198615137446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389695.P14745980198615137446

/-! ## A389695.P17772686448264091472

`∩[A386762(n+1), A387620(n+1)]`
-/

namespace A389695.P17772686448264091472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389695.P17772686448264091472

/-! ## A389695.P7787972369161909462

`∩[A369636(n+1), A386762(n+1)]`
-/

namespace A389695.P7787972369161909462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389695.P7787972369161909462

/-! ## A389695.P10156605859319040379

`A367268(n+1)^A214212(A000079(n))`
-/

namespace A389695.P10156605859319040379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367268 (n + 1) : ℚ) ^ (A214212 (A000079 n).toNat : ℤ)

end

end A389695.P10156605859319040379

/-! ## A389695.P10213382580864983010

`(A367268(n+1)%A285272(n+3))²`
-/

namespace A389695.P10213382580864983010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367268 (n + 1)) (A285272 (n + 3)) ^ 2

end

end A389695.P10213382580864983010

/-!
# A389696: E.g.f. A(x) satisfies A(x) = 1 + x*exp(x^2)*A(x)^3.

The programs for A389696, the canonical program `A389696.P13365847420925036934` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389696 has offset 0).

The definition of A389696 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389696.P13365847420925036934

`n!*∑{#}[floor(n/2), (n-2*#)^#*A001764(n-2*#)/#!]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A389696

/-- `n!*∑{#}[floor(n/2), (n-2*#)^#*A001764(n-2*#)/#!]` -/
def P13365847420925036934.Spec : Prop :=
  ∀ n, P13365847420925036934.a n = (A389696 n : ℚ)

end A389696

/-!
# A389697: a(n) = Sum_{k=0..floor(n/2)} (-1)^k * (3*k+1) * binomial(3*n-3*k+1,n-2*k)/(3*n-3*k+1).

The programs for A389697, there is no canonical definition to state claims against.
-/

/-! ## A389697.P54156879382690712

`A316470(A148363(n))`
-/

namespace A389697.P54156879382690712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316470 (A148363 n).toNat

end

end A389697.P54156879382690712

/-! ## A389697.P9534429805065241633

`A258280(A002061(∑[n]))`
-/

namespace A389697.P9534429805065241633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258280 (A002061 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A389697.P9534429805065241633

/-!
# A389698: Multiplicative sequence a(n) with a(p^e) = 4 * e^2 + 2 for prime p and e > 0.

The programs for A389698, the canonical program `A389698.P11786458541430065540` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389698 has offset 1).

The definition of A389698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389698.P11786458541430065540

`∏{e}[n+1, A005899(#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A389698

/-- `∏{e}[n+1, A005899(#)]` -/
def P11786458541430065540.Spec : Prop :=
  ∀ n, P11786458541430065540.a n = A389698 (n + 1)

theorem P11786458541430065540.correct : P11786458541430065540.Spec := by
  intro n
  simp only [A389698, Nat.add_sub_cancel]

end A389698

/-! ## A389698.P10520759296917653365

`A247517(n+1)/A360996(n+1)`
-/

namespace A389698.P10520759296917653365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247517 (n + 1) : ℚ) / (A360996 (n + 1) : ℚ)

end

end A389698.P10520759296917653365

namespace A389698

/-- `A247517(n+1)/A360996(n+1)` -/
def P10520759296917653365.Spec : Prop :=
  ∀ n, P10520759296917653365.a n = (A389698 (n + 1) : ℚ)

end A389698

/-! ## A389698.P11720020318289179288

`∑{d}[n+1, A034444(#)*A322328((n+1)/#)]`
-/

namespace A389698.P11720020318289179288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A322328 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A389698.P11720020318289179288

namespace A389698

/-- `∑{d}[n+1, A034444(#)*A322328((n+1)/#)]` -/
def P11720020318289179288.Spec : Prop :=
  ∀ n, P11720020318289179288.a n = A389698 (n + 1)

end A389698

/-! ## A389698.P11204785016657973086

`∑{d}[n+1, A008966(#)*A370297((n+1)/#)]`
-/

namespace A389698.P11204785016657973086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A370297 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A389698.P11204785016657973086

namespace A389698

/-- `∑{d}[n+1, A008966(#)*A370297((n+1)/#)]` -/
def P11204785016657973086.Spec : Prop :=
  ∀ n, P11204785016657973086.a n = A389698 (n + 1)

end A389698

/-! ## A389698.P9731770589075275893

`∏{e}[(n+1)², #²+2]`
-/

namespace A389698.P9731770589075275893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p ^ 2 + 2)

end

end A389698.P9731770589075275893

namespace A389698

/-- `∏{e}[(n+1)², #²+2]` -/
def P9731770589075275893.Spec : Prop :=
  ∀ n, (P9731770589075275893.a n : ℤ) = A389698 (n + 1)

end A389698

/-! ## A389698.P8618255408443178067

`A389831(A278254(n+1))`
-/

namespace A389698.P8618255408443178067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389831 (A278254 (n + 1)).toNat

end

end A389698.P8618255408443178067

namespace A389698

/-- `A389831(A278254(n+1))` -/
def P8618255408443178067.Spec : Prop :=
  ∀ n, P8618255408443178067.a n = A389698 (n + 1)

end A389698

/-! ## A389698.P7553786685369869568

`A389831((n+1)²)`
-/

namespace A389698.P7553786685369869568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389831 ((n + 1) ^ 2)

end

end A389698.P7553786685369869568

namespace A389698

/-- `A389831((n+1)²)` -/
def P7553786685369869568.Spec : Prop :=
  ∀ n, P7553786685369869568.a n = A389698 (n + 1)

end A389698

/-!
# A389699: a(n) = Sum_{k=0..n} binomial(n+k,n-k) * Fibonacci(k+1).

The programs for A389699, the canonical program `A389699.P887770251712619520` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389699 has offset 0).

The definition of A389699 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n+#, n-#)*A000045(#+1)]` (program `A389699.P887770251712619520`, by `A389699.P887770251712619520.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A389699.P5418437025513860480

`ogf((1-3x+3x^2-x^3)/(1-5x+7x^2-5x^3+x^4))`
-/

namespace A389699.P5418437025513860480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 3, -1] [1, -5, 7, -5, 1] n

end

end A389699.P5418437025513860480

namespace A389699

/-- `ogf((1-3x+3x^2-x^3)/(1-5x+7x^2-5x^3+x^4))` -/
def P5418437025513860480.Spec : Prop :=
  ∀ n, P5418437025513860480.a n = A389699 n

end A389699

/-! ## A389699.P12100899306193747354

`5*a(n-1)-7*a(n-2)+5*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=20`
-/

namespace A389699.P12100899306193747354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6, 20] fun n a =>
  5 * a (n - 1) - 7 * a (n - 2) + 5 * a (n - 3) - a (n - 4)

end

end A389699.P12100899306193747354

namespace A389699

/-- `5*a(n-1)-7*a(n-2)+5*a(n-3)-a(n-4)` -/
def P12100899306193747354.Spec : Prop :=
  ∀ n, P12100899306193747354.a n = A389699 n

end A389699

/-! ## A389699.P887770251712619520

`∑{#}[n, C(n+#, n-#)*A000045(#+1)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A389699

/-- `∑{#}[n, C(n+#, n-#)*A000045(#+1)]` -/
def P887770251712619520.Spec : Prop :=
  ∀ n, P887770251712619520.a n = A389699 n

theorem P887770251712619520.correct : P887770251712619520.Spec := by
  intro n
  simp only [A389699]

end A389699

/-! ## A389699.P8402986364897039377

`∑[A289780(abs(1-n))]-3`
-/

namespace A389699.P8402986364897039377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289780 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A389699.P8402986364897039377

namespace A389699

/-- `∑[A289780(abs(1-n))]-3` -/
def P8402986364897039377.Spec : Prop :=
  ∀ n, P8402986364897039377.a n = A389699 n

end A389699

/-! ## A389699.P1589348844889773105

`A289780(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A389699.P1589348844889773105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A289780 (n - 1) + a (n - 1)

end

end A389699.P1589348844889773105

namespace A389699

/-- `A289780(n-1)+a(n-1)` -/
def P1589348844889773105.Spec : Prop :=
  ∀ n, P1589348844889773105.a n = A389699 n

end A389699

/-! ## A389699.P8146226500982010700

`A389933(n+1)-(A389933(n)+A289780(n))`
-/

namespace A389699.P8146226500982010700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389933 (n + 1) - (A389933 n + A289780 n)

end

end A389699.P8146226500982010700

namespace A389699

/-- `A389933(n+1)-(A389933(n)+A289780(n))` -/
def P8146226500982010700.Spec : Prop :=
  ∀ n, P8146226500982010700.a n = A389699 n

end A389699

