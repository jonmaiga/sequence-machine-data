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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
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
# A135203: For any integer n >= 1 the sequence gives the minimum power x for which n^x+(n-1)^x+(n-2)^x+...+1^x produces a perfect square.

The programs for A135203, there is no canonical definition to state claims against.
-/

/-! ## A135203.P13810609802514188547

`A158799(A105794(2*n+1)+A055439(n+1))`
-/

namespace A135203.P13810609802514188547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158799 (A105794 (2 * n + 1) + A055439 (n + 1)).toNat

end

end A135203.P13810609802514188547

/-! ## A135203.P2713462323865676184

`A151966(A096941(n+1)+A002865(n))`
-/

namespace A135203.P2713462323865676184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151966 (A096941 (n + 1) + A002865 n).toNat

end

end A135203.P2713462323865676184

/-! ## A135203.P16696500663933320003

`A083953(A302224(n+1)+A007953(n))`
-/

namespace A135203.P16696500663933320003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083953 (A302224 (n + 1) + A007953 n).toNat

end

end A135203.P16696500663933320003

/-! ## A135203.P10843849197997789582

`A083953(A302670(n+1)+A007953(n))`
-/

namespace A135203.P10843849197997789582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083953 (A302670 (n + 1) + A007953 n).toNat

end

end A135203.P10843849197997789582

/-! ## A135203.P6193069239237157365

`A083953(A051903(n+1)^A172363(n))`
-/

namespace A135203.P6193069239237157365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083953 (SequenceMachineLib.roundAway ((A051903 (n + 1) : ℚ) ^ (A172363 n : ℤ))).toNat

end

end A135203.P6193069239237157365

/-!
# A135208: a(n) = Sum_digits{C(n,Sum_digits[a(n-1)])}, with a(0)=1.

The programs for A135208, there is no canonical definition to state claims against.
-/

/-! ## A135208.P16989723734686300140

`A007953(C(n, A007953(a(n-1))))` with `a(0)=1`
-/

namespace A135208.P16989723734686300140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007953 (Nat.choose n (A007953 (a (n - 1)).toNat).toNat)

end

end A135208.P16989723734686300140

/-!
# A135210: Numbers n such that Sum_digits(n) + Sum_digits(n+1) = Sum_digits(2*n+1).

The programs for A135210, the canonical program `A135210.P13755844676552817984` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135210 has offset 1).

The definition of A135210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1560 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135210.P14569994005696379215

`A395817(n+1)-1`
-/

namespace A135210.P14569994005696379215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395817 (n + 1) - 1

end

end A135210.P14569994005696379215

namespace A135210

/-- `A395817(n+1)-1` -/
def P14569994005696379215.Spec : Prop :=
  ∀ n, P14569994005696379215.a n = A135210 (n + 1)

end A135210

/-! ## A135210.P11378187432702020784

`∩[A039146(n+1), A007092(n)-1]`
-/

namespace A135210.P11378187432702020784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135210.P11378187432702020784

namespace A135210

/-- `∩[A039146(n+1), A007092(n)-1]` -/
def P11378187432702020784.Spec : Prop :=
  ∀ n, (P11378187432702020784.a n : ℤ) = A135210 (n + 1)

end A135210

/-! ## A135210.P10628270814060404376

`∩[A039147(n+1), A007092(n)-1]`
-/

namespace A135210.P10628270814060404376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135210.P10628270814060404376

namespace A135210

/-- `∩[A039147(n+1), A007092(n)-1]` -/
def P10628270814060404376.Spec : Prop :=
  ∀ n, (P10628270814060404376.a n : ℤ) = A135210 (n + 1)

end A135210

/-! ## A135210.P4976776648990861475

`∩[A039148(n+1), A007092(n)-1]`
-/

namespace A135210.P4976776648990861475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135210.P4976776648990861475

namespace A135210

/-- `∩[A039148(n+1), A007092(n)-1]` -/
def P4976776648990861475.Spec : Prop :=
  ∀ n, (P4976776648990861475.a n : ℤ) = A135210 (n + 1)

end A135210

/-! ## A135210.P17571470910081666278

`∩[A052413(n+1), A007092(n)-1]`
-/

namespace A135210.P17571470910081666278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135210.P17571470910081666278

namespace A135210

/-- `∩[A052413(n+1), A007092(n)-1]` -/
def P17571470910081666278.Spec : Prop :=
  ∀ n, (P17571470910081666278.a n : ℤ) = A135210 (n + 1)

end A135210

/-! ## A135210.P13755844676552817984

`record[A052413(n+1)%A007095(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A135210

/-- `record[A052413(n+1)%A007095(n+1)]` -/
def P13755844676552817984.Spec : Prop :=
  ∀ n, P13755844676552817984.a n = A135210 (n + 1)

theorem P13755844676552817984.correct : P13755844676552817984.Spec := by
  intro n
  simp only [A135210, Nat.add_sub_cancel]

end A135210

/-! ## A135210.P13895223156192818916

`eq[A004155(n), A118137(n)]`
-/

namespace A135210.P13895223156192818916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118137 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135210.P13895223156192818916

namespace A135210

/-- `eq[A004155(n), A118137(n)]` -/
def P13895223156192818916.Spec : Prop :=
  ∀ n, (P13895223156192818916.a n : ℤ) = A135210 (n + 1)

end A135210

/-! ## A135210.P17576288733213697129

`eq[A107128(A167832(n)), A222245(n)]`
-/

namespace A135210.P17576288733213697129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 (A167832 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135210.P17576288733213697129

namespace A135210

/-- `eq[A107128(A167832(n)), A222245(n)]` -/
def P17576288733213697129.Spec : Prop :=
  ∀ n, (P17576288733213697129.a n : ℤ) = A135210 (n + 1)

end A135210

/-! ## A135210.P9105099657165507618

`eq[A107128(A167832(n)), A222246(n)]`
-/

namespace A135210.P9105099657165507618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 (A167832 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135210.P9105099657165507618

namespace A135210

/-- `eq[A107128(A167832(n)), A222246(n)]` -/
def P9105099657165507618.Spec : Prop :=
  ∀ n, (P9105099657165507618.a n : ℤ) = A135210 (n + 1)

end A135210

/-! ## A135210.P5475417046964984569

`eq[A007953(n+1)+A007953(n), A004155(n)]`
-/

namespace A135210.P5475417046964984569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) + A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135210.P5475417046964984569

namespace A135210

/-- `eq[A007953(n+1)+A007953(n), A004155(n)]` -/
def P5475417046964984569.Spec : Prop :=
  ∀ n, (P5475417046964984569.a n : ℤ) = A135210 (n + 1)

end A135210

/-! ## A135210.P748109416725148751

`lt[0, Δ[A167832(n)]]`
-/

namespace A135210.P748109416725148751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167832 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A135210.P748109416725148751

namespace A135210

/-- `lt[0, Δ[A167832(n)]]` -/
def P748109416725148751.Spec : Prop :=
  ∀ n, (P748109416725148751.a n : ℤ) = A135210 (n + 1)

end A135210

/-! ## A135210.P15584850634114542282

`lt[0, Δ[A167831(n)]+1]`
-/

namespace A135210.P15584850634114542282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167831 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A135210.P15584850634114542282

namespace A135210

/-- `lt[0, Δ[A167831(n)]+1]` -/
def P15584850634114542282.Spec : Prop :=
  ∀ n, (P15584850634114542282.a n : ℤ) = A135210 (n + 1)

end A135210

/-! ## A135210.P7120084599828505185

`lt[n, A167831(n+1)+1]`
-/

namespace A135210.P7120084599828505185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167831 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A135210.P7120084599828505185

namespace A135210

/-- `lt[n, A167831(n+1)+1]` -/
def P7120084599828505185.Spec : Prop :=
  ∀ n, (P7120084599828505185.a n : ℤ) = A135210 (n + 1)

end A135210

/-! ## A135210.P9176502873780585797

`lt[n, A167832(n+1)-n]`
-/

namespace A135210.P9176502873780585797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167832 (n + 1) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A135210.P9176502873780585797

namespace A135210

/-- `lt[n, A167832(n+1)-n]` -/
def P9176502873780585797.Spec : Prop :=
  ∀ n, (P9176502873780585797.a n : ℤ) = A135210 (n + 1)

end A135210

/-! ## A135210.P11822697311464935223

`A023443(A395817(n+1))`
-/

namespace A135210.P11822697311464935223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A395817 (n + 1)).toNat

end

end A135210.P11822697311464935223

namespace A135210

/-- `A023443(A395817(n+1))` -/
def P11822697311464935223.Spec : Prop :=
  ∀ n, P11822697311464935223.a n = A135210 (n + 1)

end A135210

/-! ## A135210.P9080561181578440988

`record[A167832(n)%A222246(n+1)]`
-/

namespace A135210.P9080561181578440988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167832 n) (A222246 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135210.P9080561181578440988

namespace A135210

/-- `record[A167832(n)%A222246(n+1)]` -/
def P9080561181578440988.Spec : Prop :=
  ∀ n, P9080561181578440988.a n = A135210 (n + 1)

end A135210

/-! ## A135210.P6178905871920119697

`lt[A051022(2*n)/A051022(n+1), 2]`
-/

namespace A135210.P6178905871920119697
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051022 (2 * n) : ℚ) / (A051022 (n + 1) : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A135210.P6178905871920119697

namespace A135210

/-- `lt[A051022(2*n)/A051022(n+1), 2]` -/
def P6178905871920119697.Spec : Prop :=
  ∀ n, (P6178905871920119697.a n : ℤ) = A135210 (n + 1)

end A135210

/-! ## A135210.P8519582052654009994

`lt[A056143(2*n)/A056143(n+1), 2]`
-/

namespace A135210.P8519582052654009994
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056143 (2 * n) : ℚ) / (A056143 (n + 1) : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A135210.P8519582052654009994

namespace A135210

/-- `lt[A056143(2*n)/A056143(n+1), 2]` -/
def P8519582052654009994.Spec : Prop :=
  ∀ n, (P8519582052654009994.a n : ℤ) = A135210 (n + 1)

end A135210

/-! ## A135210.P15755242755036774971

`lt[A004277(2*n)/A167832(n+1), 2]`
-/

namespace A135210.P15755242755036774971
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (2 * n) : ℚ) / (A167832 (n + 1) : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A135210.P15755242755036774971

namespace A135210

/-- `lt[A004277(2*n)/A167832(n+1), 2]` -/
def P15755242755036774971.Spec : Prop :=
  ∀ n, (P15755242755036774971.a n : ℤ) = A135210 (n + 1)

end A135210

/-! ## A135210.P1409623347453830473

`lt[A005843(2*n)/A167832(n+1), 2]`
-/

namespace A135210.P1409623347453830473
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (2 * n) : ℚ) / (A167832 (n + 1) : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A135210.P1409623347453830473

namespace A135210

/-- `lt[A005843(2*n)/A167832(n+1), 2]` -/
def P1409623347453830473.Spec : Prop :=
  ∀ n, (P1409623347453830473.a n : ℤ) = A135210 (n + 1)

end A135210

/-!
# A135211: Expansion of psi(-x) / psi(-x^3) in powers of x where psi() is a Ramanujan theta function.

The programs for A135211, there is no canonical definition to state claims against.
-/

/-! ## A135211.P2278214980280152300

`(-1)^n*A256626(n)`
-/

namespace A135211.P2278214980280152300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A256626 n

end

end A135211.P2278214980280152300

/-! ## A135211.P2145696439061479677

`A256626(n)/A062157(n+1)`
-/

namespace A135211.P2145696439061479677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256626 n : ℚ) / (A062157 (n + 1) : ℚ)

end

end A135211.P2145696439061479677

/-! ## A135211.P8063777994760023284

`A256626(n)/A101455(2*n+1)`
-/

namespace A135211.P8063777994760023284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256626 n : ℚ) / (A101455 (2 * n + 1) : ℚ)

end

end A135211.P8063777994760023284

/-! ## A135211.P438208751838931162

`A246838(lt[A000217(n), A246830(3*n+1)])`
-/

namespace A135211.P438208751838931162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246830 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246838 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A135211.P438208751838931162

/-! ## A135211.P10704202389882421842

`A102283(A229309(3*n+4)-A000122(n))-A102283(n+2)`
-/

namespace A135211.P10704202389882421842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A229309 (3 * n + 4) - A000122 n).toNat - A102283 (n + 2)

end

end A135211.P10704202389882421842

/-!
# A135212: a(n) = A078456(n)/A120271(n).

The programs for A135212, there is no canonical definition to state claims against.
-/

/-! ## A135212.P13753187487747535536

`A078456(n+1)/A120271(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135212.P13753187487747535536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078456 (n + 1) : ℚ) / (A120271 (n + 1) : ℚ)

end

end A135212.P13753187487747535536

/-! ## A135212.P3306236248924803762

`gcd(A005867(n+1), A067549(n+1))`
-/

namespace A135212.P3306236248924803762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005867 (n + 1)) (A067549 (n + 1))

end

end A135212.P3306236248924803762

/-! ## A135212.P14641464993126061272

`gcd(∏[A006093(n+1)], A078456(n+1))`
-/

namespace A135212.P14641464993126061272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A078456 (n + 1))

end

end A135212.P14641464993126061272

/-! ## A135212.P11316663799900074671

`gcd(A078456(n+1), A078456(n+2))`
-/

namespace A135212.P11316663799900074671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A078456 (n + 1)) (A078456 (n + 2))

end

end A135212.P11316663799900074671

/-! ## A135212.P3065376768082432853

`gcd(A005867(n)², A067549(n+1))`
-/

namespace A135212.P3065376768082432853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005867 n ^ 2) (A067549 (n + 1))

end

end A135212.P3065376768082432853

/-!
# A135214: a(1)=1, a(n) = a(n-1) + n^5 if n odd, a(n) = a(n-1) + n^4 if n is even.

The programs for A135214, the canonical program `A135214.P4646065899677810542` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135214 has offset 1).

The definition of A135214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135214.P4646065899677810542

`∑[(n+1)^(gcd(2, n)+3)]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A135214

/-- `∑[(n+1)^(gcd(2, n)+3)]` -/
def P4646065899677810542.Spec : Prop :=
  ∀ n, (P4646065899677810542.a n : ℤ) = A135214 (n + 1)

theorem P4646065899677810542.correct : P4646065899677810542.Spec := by
  intro n
  simp only [A135214, Nat.add_sub_cancel]

end A135214

/-! ## A135214.P16085537855891266854

`∑[(n+1)^(5-n%2)]`
-/

namespace A135214.P16085537855891266854
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (5 - ((n % 2 : ℕ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135214.P16085537855891266854

namespace A135214

/-- `∑[(n+1)^(5-n%2)]` -/
def P16085537855891266854.Spec : Prop :=
  ∀ n, P16085537855891266854.a n = (A135214 (n + 1) : ℚ)

end A135214

/-! ## A135214.P6798540880285602822

`∑[(n+1)^(5-and(1, n))]`
-/

namespace A135214.P6798540880285602822
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (5 - (Nat.land 1 n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135214.P6798540880285602822

namespace A135214

/-- `∑[(n+1)^(5-and(1, n))]` -/
def P6798540880285602822.Spec : Prop :=
  ∀ n, P6798540880285602822.a n = (A135214 (n + 1) : ℚ)

end A135214

/-! ## A135214.P8667777133566127022

`∑[(n+1)^(∑[(-1)^n]+4)]`
-/

namespace A135214.P8667777133566127022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j + 4 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135214.P8667777133566127022

namespace A135214

/-- `∑[(n+1)^(∑[(-1)^n]+4)]` -/
def P8667777133566127022.Spec : Prop :=
  ∀ n, P8667777133566127022.a n = (A135214 (n + 1) : ℚ)

end A135214

/-! ## A135214.P4659106411029612663

`A000538(n+1)+A000539(n+1)-A140161(n+1)`
-/

namespace A135214.P4659106411029612663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (n + 1) + (A000539 (n + 1) - A140161 (n + 1))

end

end A135214.P4659106411029612663

namespace A135214

/-- `A000538(n+1)+A000539(n+1)-A140161(n+1)` -/
def P4659106411029612663.Spec : Prop :=
  ∀ n, P4659106411029612663.a n = A135214 (n + 1)

end A135214

/-!
# A135217: a(n) = smallest number with n+1 digits and without zero digits whose squares have the maximal number of zero digits = A135215(n+1).

The programs for A135217, there is no canonical definition to state claims against.
-/

/-! ## A135217.P1201019006679915479

`A134846(lt[A008483(n), A334232(n)])`
-/

namespace A135217.P1201019006679915479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334232 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134846 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A135217.P1201019006679915479

/-! ## A135217.P10744233939778876044

`A134846(A340102(n)+A029503(n+1))`
-/

namespace A135217.P10744233939778876044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134846 (A340102 n + A029503 (n + 1)).toNat

end

end A135217.P10744233939778876044

/-!
# A135218: A007318^(-5) * A001286, 5th inverse binomial transform of the Lah numbers.

The programs for A135218, there is no canonical definition to state claims against.
-/

/-! ## A135218.P18065185284388134174

`∑[A349375(A002802(n))]`
-/

namespace A135218.P18065185284388134174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349375 (A002802 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135218.P18065185284388134174

/-! ## A135218.P12735691858856422389

`A100036(A325895(n+1))`
-/

namespace A135218.P12735691858856422389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100036 (A325895 (n + 1)).toNat

end

end A135218.P12735691858856422389

/-!
# A135221: Triangle A007318 + A000012(signed) - I, I = Identity matrix, read by rows.

The programs for A135221, the canonical program `A135221.P11114439058659202462` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135221 has offset 0).

The definition of A135221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135221.P11114439058659202462

`abs(A130595(n)+A023532(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A135221

/-- `abs(A130595(n)+A023532(n))` -/
def P11114439058659202462.Spec : Prop :=
  ∀ n, P11114439058659202462.a n = A135221 n

theorem P11114439058659202462.correct : P11114439058659202462.Spec := by
  intro n
  simp only [A135221]

end A135221

/-! ## A135221.P13831248813909367849

`A129688(n+1)+A014473(n)`
-/

namespace A135221.P13831248813909367849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129688 (n + 1) + A014473 n

end

end A135221.P13831248813909367849

namespace A135221

/-- `A129688(n+1)+A014473(n)` -/
def P13831248813909367849.Spec : Prop :=
  ∀ n, P13831248813909367849.a n = A135221 n

end A135221

/-! ## A135221.P16367444598714953127

`A198321(n+1)+A097807(n)`
-/

namespace A135221.P16367444598714953127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198321 (n + 1) + A097807 n

end

end A135221.P16367444598714953127

namespace A135221

/-- `A198321(n+1)+A097807(n)` -/
def P16367444598714953127.Spec : Prop :=
  ∀ n, P16367444598714953127.a n = A135221 n

end A135221

/-! ## A135221.P12577913041714322426

`A007318(n)-A062157(A025581(n))`
-/

namespace A135221.P12577913041714322426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A062157 (A025581 n).toNat

end

end A135221.P12577913041714322426

namespace A135221

/-- `A007318(n)-A062157(A025581(n))` -/
def P12577913041714322426.Spec : Prop :=
  ∀ n, P12577913041714322426.a n = A135221 n

end A135221

/-! ## A135221.P7590057486781399258

`A007318(n)-A062157(A051933(n))`
-/

namespace A135221.P7590057486781399258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A062157 (A051933 n).toNat

end

end A135221.P7590057486781399258

namespace A135221

/-- `A007318(n)-A062157(A051933(n))` -/
def P7590057486781399258.Spec : Prop :=
  ∀ n, P7590057486781399258.a n = A135221 n

end A135221

/-! ## A135221.P13835979959073337271

`abs(A131431(A131431(n))+A130595(n))`
-/

namespace A135221.P13835979959073337271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131431 (A131431 n).toNat + A130595 n|

end

end A135221.P13835979959073337271

namespace A135221

/-- `abs(A131431(A131431(n))+A130595(n))` -/
def P13835979959073337271.Spec : Prop :=
  ∀ n, P13835979959073337271.a n = A135221 n

end A135221

/-! ## A135221.P14413680293575144297

`A105812(A004736(n+1))+A007318(n)`
-/

namespace A135221.P14413680293575144297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (A004736 (n + 1)).toNat + A007318 n

end

end A135221.P14413680293575144297

namespace A135221

/-- `A105812(A004736(n+1))+A007318(n)` -/
def P14413680293575144297.Spec : Prop :=
  ∀ n, P14413680293575144297.a n = A135221 n

end A135221

/-! ## A135221.P8395829214813276291

`A105812(A025581(n)+1)+A007318(n)`
-/

namespace A135221.P8395829214813276291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (A025581 n + 1).toNat + A007318 n

end

end A135221.P8395829214813276291

namespace A135221

/-- `A105812(A025581(n)+1)+A007318(n)` -/
def P8395829214813276291.Spec : Prop :=
  ∀ n, P8395829214813276291.a n = A135221 n

end A135221

/-! ## A135221.P7484518832417682799

`A129688(n+1)+A131087(n)-A134521(n)`
-/

namespace A135221.P7484518832417682799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129688 (n + 1) + (A131087 n - A134521 n)

end

end A135221.P7484518832417682799

namespace A135221

/-- `A129688(n+1)+A131087(n)-A134521(n)` -/
def P7484518832417682799.Spec : Prop :=
  ∀ n, P7484518832417682799.a n = A135221 n

end A135221

/-! ## A135221.P13963251696874369280

`A129688(n+1)+A134520(n)-A128174(n+1)`
-/

namespace A135221.P13963251696874369280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129688 (n + 1) + (A134520 n - A128174 (n + 1))

end

end A135221.P13963251696874369280

namespace A135221

/-- `A129688(n+1)+A134520(n)-A128174(n+1)` -/
def P13963251696874369280.Spec : Prop :=
  ∀ n, P13963251696874369280.a n = A135221 n

end A135221

/-! ## A135221.P7508519321784684579

`A007318(n)-(A008297(n+1)/A066667(n))%A066667(n)`
-/

namespace A135221.P7508519321784684579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - Int.tmod (SequenceMachineLib.roundAway ((A008297 (n + 1) : ℚ) / (A066667 n : ℚ))) (A066667 n)

end

end A135221.P7508519321784684579

namespace A135221

/-- `A007318(n)-(A008297(n+1)/A066667(n))%A066667(n)` -/
def P7508519321784684579.Spec : Prop :=
  ∀ n, P7508519321784684579.a n = A135221 n

end A135221

/-! ## A135221.P12241874638985325013

`A007318(n)-A304438(A130321(n))`
-/

namespace A135221.P12241874638985325013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A304438 (A130321 n).toNat

end

end A135221.P12241874638985325013

namespace A135221

/-- `A007318(n)-A304438(A130321(n))` -/
def P12241874638985325013.Spec : Prop :=
  ∀ n, P12241874638985325013.a n = A135221 n

end A135221

/-!
# A135222: Triangle A049310 + A000012 - I, read by rows.

The programs for A135222, the canonical program `A135222.P1424862729621191095` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135222 has offset 0).

The definition of A135222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135222.P1424862729621191095

`A168561(n)+A023532(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A135222

/-- `A168561(n)+A023532(n)` -/
def P1424862729621191095.Spec : Prop :=
  ∀ n, P1424862729621191095.a n = A135222 n

theorem P1424862729621191095.correct : P1424862729621191095.Spec := by
  intro n
  simp only [A135222]

end A135222

/-! ## A135222.P12220461836202367810

`A030111(n+1)+1-abs(A066170(n+1))`
-/

namespace A135222.P12220461836202367810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030111 (n + 1) + (1 - |A066170 (n + 1)|)

end

end A135222.P12220461836202367810

namespace A135222

/-- `A030111(n+1)+1-abs(A066170(n+1))` -/
def P12220461836202367810.Spec : Prop :=
  ∀ n, P12220461836202367810.a n = A135222 n

end A135222

/-! ## A135222.P2910049876170779599

`A030111(n+1)+A046854(n+1)-A131270(n+1)`
-/

namespace A135222.P2910049876170779599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030111 (n + 1) + (A046854 (n + 1) - A131270 (n + 1))

end

end A135222.P2910049876170779599

namespace A135222

/-- `A030111(n+1)+A046854(n+1)-A131270(n+1)` -/
def P2910049876170779599.Spec : Prop :=
  ∀ n, P2910049876170779599.a n = A135222 n

end A135222

/-! ## A135222.P6659310965046874459

`A030111(n+1)+A065941(n+1)-A131373(n+1)`
-/

namespace A135222.P6659310965046874459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030111 (n + 1) + (A065941 (n + 1) - A131373 (n + 1))

end

end A135222.P6659310965046874459

namespace A135222

/-- `A030111(n+1)+A065941(n+1)-A131373(n+1)` -/
def P6659310965046874459.Spec : Prop :=
  ∀ n, P6659310965046874459.a n = A135222 n

end A135222

/-! ## A135222.P8843609266231616635

`A030111(n+1)-A131270(n+1)%A066170(n+1)`
-/

namespace A135222.P8843609266231616635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030111 (n + 1) - Int.tmod (A131270 (n + 1)) (A066170 (n + 1))

end

end A135222.P8843609266231616635

namespace A135222

/-- `A030111(n+1)-A131270(n+1)%A066170(n+1)` -/
def P8843609266231616635.Spec : Prop :=
  ∀ n, P8843609266231616635.a n = A135222 n

end A135222

/-! ## A135222.P14568476794783180893

`A168561(n)%A157751(n+1)+1`
-/

namespace A135222.P14568476794783180893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168561 n) (A157751 (n + 1)) + 1

end

end A135222.P14568476794783180893

namespace A135222

/-- `A168561(n)%A157751(n+1)+1` -/
def P14568476794783180893.Spec : Prop :=
  ∀ n, P14568476794783180893.a n = A135222 n

end A135222

/-!
# A135223: Triangle A000012 * A127648 * A103451, read by rows.

The programs for A135223, the canonical program `A135223.P14742202444666781604` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135223 has offset 1).

The definition of A135223 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135223.P16585131409296038047

`A130297(n+1)-A114327(n)`
-/

namespace A135223.P16585131409296038047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130297 (n + 1) - A114327 n

end

end A135223.P16585131409296038047

namespace A135223

/-- `A130297(n+1)-A114327(n)` -/
def P16585131409296038047.Spec : Prop :=
  ∀ n, P16585131409296038047.a n = A135223 (n + 1)

end A135223

/-! ## A135223.P14742202444666781604

`A008805(A198954(n))+A002262(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A135223

/-- `A008805(A198954(n))+A002262(n)` -/
def P14742202444666781604.Spec : Prop :=
  ∀ n, P14742202444666781604.a n = A135223 (n + 1)

theorem P14742202444666781604.correct : P14742202444666781604.Spec := by
  intro n
  simp only [A135223, Nat.add_sub_cancel]

end A135223

/-! ## A135223.P15794930877821976783

`A002262(n)+A000217(A130296(n+1))`
-/

namespace A135223.P15794930877821976783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + A000217 (A130296 (n + 1)).toNat

end

end A135223.P15794930877821976783

namespace A135223

/-- `A002262(n)+A000217(A130296(n+1))` -/
def P15794930877821976783.Spec : Prop :=
  ∀ n, P15794930877821976783.a n = A135223 (n + 1)

end A135223

/-! ## A135223.P8154837044896890033

`A002260(n+1)*A008805(A198954(n))`
-/

namespace A135223.P8154837044896890033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A008805 (A198954 n).toNat

end

end A135223.P8154837044896890033

namespace A135223

/-- `A002260(n+1)*A008805(A198954(n))` -/
def P8154837044896890033.Spec : Prop :=
  ∀ n, P8154837044896890033.a n = A135223 (n + 1)

end A135223

/-! ## A135223.P539230501564094371

`gcd(A000096(A056944(n)), A002262(n))+1`
-/

namespace A135223.P539230501564094371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000096 (A056944 n).toNat) (A002262 n) + 1

end

end A135223.P539230501564094371

namespace A135223

/-- `gcd(A000096(A056944(n)), A002262(n))+1` -/
def P539230501564094371.Spec : Prop :=
  ∀ n, (P539230501564094371.a n : ℤ) = A135223 (n + 1)

end A135223

/-! ## A135223.P13658509815839835899

`A080036(n*A010054(n))+A002262(n)`
-/

namespace A135223.P13658509815839835899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 ((n : ℤ) * A010054 n).toNat + A002262 n

end

end A135223.P13658509815839835899

namespace A135223

/-- `A080036(n*A010054(n))+A002262(n)` -/
def P13658509815839835899.Spec : Prop :=
  ∀ n, P13658509815839835899.a n = A135223 (n + 1)

end A135223

/-! ## A135223.P17665184441194110565

`A158822(n*A010054(n))+A002262(n)`
-/

namespace A135223.P17665184441194110565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158822 ((n : ℤ) * A010054 n).toNat + A002262 n

end

end A135223.P17665184441194110565

namespace A135223

/-- `A158822(n*A010054(n))+A002262(n)` -/
def P17665184441194110565.Spec : Prop :=
  ∀ n, P17665184441194110565.a n = A135223 (n + 1)

end A135223

/-! ## A135223.P7404622794645244967

`A000217(A130296(n+1))*A002260(n+1)`
-/

namespace A135223.P7404622794645244967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A130296 (n + 1)).toNat * A002260 (n + 1)

end

end A135223.P7404622794645244967

namespace A135223

/-- `A000217(A130296(n+1))*A002260(n+1)` -/
def P7404622794645244967.Spec : Prop :=
  ∀ n, P7404622794645244967.a n = A135223 (n + 1)

end A135223

/-! ## A135223.P4442199438409937358

`A002260(n+1)+A061579(n*A010054(n))`
-/

namespace A135223.P4442199438409937358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + A061579 ((n : ℤ) * A010054 n).toNat

end

end A135223.P4442199438409937358

namespace A135223

/-- `A002260(n+1)+A061579(n*A010054(n))` -/
def P4442199438409937358.Spec : Prop :=
  ∀ n, P4442199438409937358.a n = A135223 (n + 1)

end A135223

/-! ## A135223.P13731570855806809724

`A002260(n+1)+A000096(A130296(n+1)-1)`
-/

namespace A135223.P13731570855806809724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + A000096 (A130296 (n + 1) - 1).toNat

end

end A135223.P13731570855806809724

namespace A135223

/-- `A002260(n+1)+A000096(A130296(n+1)-1)` -/
def P13731570855806809724.Spec : Prop :=
  ∀ n, P13731570855806809724.a n = A135223 (n + 1)

end A135223

/-! ## A135223.P14745371226842381380

`A131818(n+1)+A000217(A130296(n+1)-1)`
-/

namespace A135223.P14745371226842381380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1) + A000217 (A130296 (n + 1) - 1).toNat

end

end A135223.P14745371226842381380

namespace A135223

/-- `A131818(n+1)+A000217(A130296(n+1)-1)` -/
def P14745371226842381380.Spec : Prop :=
  ∀ n, P14745371226842381380.a n = A135223 (n + 1)

end A135223

/-! ## A135223.P1340668256136174399

`A130270(n+1)+A002262(n)/A130270(n+1)`
-/

namespace A135223.P1340668256136174399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130270 (n + 1) : ℚ) + (A002262 n : ℚ) / (A130270 (n + 1) : ℚ)

end

end A135223.P1340668256136174399

namespace A135223

/-- `A130270(n+1)+A002262(n)/A130270(n+1)` -/
def P1340668256136174399.Spec : Prop :=
  ∀ n, P1340668256136174399.a n = (A135223 (n + 1) : ℚ)

end A135223

/-! ## A135223.P1677973147432858548

`A002260(n+1)+A000096(A131818(n+1)-A002260(n+1))`
-/

namespace A135223.P1677973147432858548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + A000096 (A131818 (n + 1) - A002260 (n + 1)).toNat

end

end A135223.P1677973147432858548

namespace A135223

/-- `A002260(n+1)+A000096(A131818(n+1)-A002260(n+1))` -/
def P1677973147432858548.Spec : Prop :=
  ∀ n, P1677973147432858548.a n = A135223 (n + 1)

end A135223

/-! ## A135223.P543018312108392978

`abs(Δ[A049777(A080036(n))])`
-/

namespace A135223.P543018312108392978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A135223.P543018312108392978

namespace A135223

/-- `abs(Δ[A049777(A080036(n))])` -/
def P543018312108392978.Spec : Prop :=
  ∀ n, P543018312108392978.a n = A135223 (n + 1)

end A135223

/-! ## A135223.P5400556596822564187

`A224146(A193592(n)+n)-A193592(n)`
-/

namespace A135223.P5400556596822564187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (A193592 n + (n : ℤ)).toNat - A193592 n

end

end A135223.P5400556596822564187

namespace A135223

/-- `A224146(A193592(n)+n)-A193592(n)` -/
def P5400556596822564187.Spec : Prop :=
  ∀ n, P5400556596822564187.a n = A135223 (n + 1)

end A135223

/-! ## A135223.P16468619001539330013

`A223838(A193592(n)+n)-A193592(n)`
-/

namespace A135223.P16468619001539330013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (A193592 n + (n : ℤ)).toNat - A193592 n

end

end A135223.P16468619001539330013

namespace A135223

/-- `A223838(A193592(n)+n)-A193592(n)` -/
def P16468619001539330013.Spec : Prop :=
  ∀ n, P16468619001539330013.a n = A135223 (n + 1)

end A135223

/-!
# A135224: Triangle A103451 * A007318 * A000012, read by rows. T(n, k) for 0 <= k <= n.

The programs for A135224, the canonical program `A135224.P16771129364297537144` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135224 has offset 0).

The definition of A135224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135224.P16771129364297537144

`A073424(n)+A055248(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A135224

/-- `A073424(n)+A055248(n)` -/
def P16771129364297537144.Spec : Prop :=
  ∀ n, P16771129364297537144.a n = A135224 n

theorem P16771129364297537144.correct : P16771129364297537144.Spec := by
  intro n
  simp only [A135224]

end A135224

/-! ## A135224.P15486708849308522096

`or(A010054(n), A055248(n))`
-/

namespace A135224.P15486708849308522096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A055248 n)

end

end A135224.P15486708849308522096

namespace A135224

/-- `or(A010054(n), A055248(n))` -/
def P15486708849308522096.Spec : Prop :=
  ∀ n, P15486708849308522096.a n = A135224 n

end A135224

/-! ## A135224.P5887894393554230102

`A055248(n)+A173786(n)%2`
-/

namespace A135224.P5887894393554230102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n + Int.tmod (A173786 n) 2

end

end A135224.P5887894393554230102

namespace A135224

/-- `A055248(n)+A173786(n)%2` -/
def P5887894393554230102.Spec : Prop :=
  ∀ n, P5887894393554230102.a n = A135224 n

end A135224

/-! ## A135224.P11267333656601259486

`A055248(n)+char[A028310(∑[n])]`
-/

namespace A135224.P11267333656601259486
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A135224.P11267333656601259486

namespace A135224

/-- `A055248(n)+char[A028310(∑[n])]` -/
def P11267333656601259486.Spec : Prop :=
  ∀ n, P11267333656601259486.a n = A135224 n

end A135224

/-! ## A135224.P11314791110064734135

`round(A055248(n)+acot(A029635(n)))`
-/

namespace A135224.P11314791110064734135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A055248 n : ℝ) + SequenceMachineLib.acot (A029635 n : ℝ))

end

end A135224.P11314791110064734135

namespace A135224

/-- `round(A055248(n)+acot(A029635(n)))` -/
def P11314791110064734135.Spec : Prop :=
  ∀ n, P11314791110064734135.a n = A135224 n

end A135224

/-! ## A135224.P5807373131794039946

`A055248(n)+char[A000217(n+1)]`
-/

namespace A135224.P5807373131794039946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A135224.P5807373131794039946

namespace A135224

/-- `A055248(n)+char[A000217(n+1)]` -/
def P5807373131794039946.Spec : Prop :=
  ∀ n, P5807373131794039946.a n = A135224 n

end A135224

/-! ## A135224.P2086943257767731668

`or(floor(1/A007318(n)), A055248(n))`
-/

namespace A135224.P2086943257767731668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊1 / (A007318 n : ℚ)⌋ (A055248 n)

end

end A135224.P2086943257767731668

namespace A135224

/-- `or(floor(1/A007318(n)), A055248(n))` -/
def P2086943257767731668.Spec : Prop :=
  ∀ n, P2086943257767731668.a n = A135224 n

end A135224

/-! ## A135224.P1669838873826439516

`or(floor(1/A008949(n)), A055248(n))`
-/

namespace A135224.P1669838873826439516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊1 / (A008949 n : ℚ)⌋ (A055248 n)

end

end A135224.P1669838873826439516

namespace A135224

/-- `or(floor(1/A008949(n)), A055248(n))` -/
def P1669838873826439516.Spec : Prop :=
  ∀ n, P1669838873826439516.a n = A135224 n

end A135224

/-! ## A135224.P11093768748665901780

`A055248(n)+char[eq[2, A029653(n)]]`
-/

namespace A135224.P11093768748665901780
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A135224.P11093768748665901780

namespace A135224

/-- `A055248(n)+char[eq[2, A029653(n)]]` -/
def P11093768748665901780.Spec : Prop :=
  ∀ n, P11093768748665901780.a n = A135224 n

end A135224

/-! ## A135224.P605180575343326390

`A055248(n)+char[eq[3, A093560(n)]]`
-/

namespace A135224.P605180575343326390
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093560 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A135224.P605180575343326390

namespace A135224

/-- `A055248(n)+char[eq[3, A093560(n)]]` -/
def P605180575343326390.Spec : Prop :=
  ∀ n, P605180575343326390.a n = A135224 n

end A135224

/-! ## A135224.P10875861112090323912

`A029653(n)+A055248(n)-A208510(n+1)`
-/

namespace A135224.P10875861112090323912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 n + (A055248 n - A208510 (n + 1))

end

end A135224.P10875861112090323912

namespace A135224

/-- `A029653(n)+A055248(n)-A208510(n+1)` -/
def P10875861112090323912.Spec : Prop :=
  ∀ n, P10875861112090323912.a n = A135224 n

end A135224

/-! ## A135224.P1040028812853217947

`xor(A000010(a(n-1))%2, A055248(n))` with `a(0)=1`
-/

namespace A135224.P1040028812853217947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (Int.tmod (A000010 (a (n - 1)).toNat) 2) (A055248 n)

end

end A135224.P1040028812853217947

namespace A135224

/-- `xor(A000010(a(n-1))%2, A055248(n))` -/
def P1040028812853217947.Spec : Prop :=
  ∀ n, P1040028812853217947.a n = A135224 n

end A135224

/-! ## A135224.P3328765773972833415

`A055248(n)+C(A008619(a(n-1)), a(n-1))` with `a(0)=1`
-/

namespace A135224.P3328765773972833415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055248 n + (Nat.choose (A008619 (a (n - 1)).toNat).toNat (a (n - 1)).toNat : ℤ)

end

end A135224.P3328765773972833415

namespace A135224

/-- `A055248(n)+C(A008619(a(n-1)), a(n-1))` -/
def P3328765773972833415.Spec : Prop :=
  ∀ n, P3328765773972833415.a n = A135224 n

end A135224

/-! ## A135224.P15757538342550281945

`A028310(xor(A010054(n), A055248(n)))`
-/

namespace A135224.P15757538342550281945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.xor (A010054 n) (A055248 n)).toNat

end

end A135224.P15757538342550281945

namespace A135224

/-- `A028310(xor(A010054(n), A055248(n)))` -/
def P15757538342550281945.Spec : Prop :=
  ∀ n, P15757538342550281945.a n = A135224 n

end A135224

/-!
# A135225: Pascal's triangle A007318 augmented with a leftmost border column of 1's.

The programs for A135225, the canonical program `A135225.P1573324357091350278` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135225 has offset 0).

The definition of A135225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135225.P17791905262423359646

`abs(A177767(n))`
-/

namespace A135225.P17791905262423359646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A177767 n|

end

end A135225.P17791905262423359646

namespace A135225

/-- `abs(A177767(n))` -/
def P17791905262423359646.Spec : Prop :=
  ∀ n, P17791905262423359646.a n = A135225 n

end A135225

/-! ## A135225.P13904324658641680057

`A208891(abs(1-n))`
-/

namespace A135225.P13904324658641680057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208891 |1 - (n : ℤ)|.toNat

end

end A135225.P13904324658641680057

namespace A135225

/-- `A208891(abs(1-n))` -/
def P13904324658641680057.Spec : Prop :=
  ∀ n, P13904324658641680057.a n = A135225 n

end A135225

/-! ## A135225.P12041629525867723979

`round(1/acot(A097805(n)))`
-/

namespace A135225.P12041629525867723979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (A097805 n : ℝ))

end

end A135225.P12041629525867723979

namespace A135225

/-- `round(1/acot(A097805(n)))` -/
def P12041629525867723979.Spec : Prop :=
  ∀ n, P12041629525867723979.a n = A135225 n

end A135225

/-! ## A135225.P12287307613679370560

`A007318(round(n-sqrt(2*n)))`
-/

namespace A135225.P12287307613679370560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway ((n : ℝ) - Real.sqrt (2 * n : ℝ))).toNat

end

end A135225.P12287307613679370560

namespace A135225

/-- `A007318(round(n-sqrt(2*n)))` -/
def P12287307613679370560.Spec : Prop :=
  ∀ n, P12287307613679370560.a n = A135225 n

end A135225

/-! ## A135225.P1573324357091350278

`A097805(A073423(n)+n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A135225

/-- `A097805(A073423(n)+n)` -/
def P1573324357091350278.Spec : Prop :=
  ∀ n, P1573324357091350278.a n = A135225 n

theorem P1573324357091350278.correct : P1573324357091350278.Spec := by
  intro n
  simp only [A135225]

end A135225

/-! ## A135225.P13881443568286159428

`A097805(A073424(n)+n)`
-/

namespace A135225.P13881443568286159428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A073424 n + (n : ℤ)).toNat

end

end A135225.P13881443568286159428

namespace A135225

/-- `A097805(A073424(n)+n)` -/
def P13881443568286159428.Spec : Prop :=
  ∀ n, P13881443568286159428.a n = A135225 n

end A135225

/-! ## A135225.P6303960929080201053

`A177767(A073424(n)+n)`
-/

namespace A135225.P6303960929080201053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177767 (A073424 n + (n : ℤ)).toNat

end

end A135225.P6303960929080201053

namespace A135225

/-- `A177767(A073424(n)+n)` -/
def P6303960929080201053.Spec : Prop :=
  ∀ n, P6303960929080201053.a n = A135225 n

end A135225

/-! ## A135225.P18082575645978102148

`A097805(n-A073424(n))`
-/

namespace A135225.P18082575645978102148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 ((n : ℤ) - A073424 n).toNat

end

end A135225.P18082575645978102148

namespace A135225

/-- `A097805(n-A073424(n))` -/
def P18082575645978102148.Spec : Prop :=
  ∀ n, P18082575645978102148.a n = A135225 n

end A135225

/-! ## A135225.P11258135189209770773

`A029635(n)-A206735(n)`
-/

namespace A135225.P11258135189209770773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n - A206735 n

end

end A135225.P11258135189209770773

namespace A135225

/-- `A029635(n)-A206735(n)` -/
def P11258135189209770773.Spec : Prop :=
  ∀ n, P11258135189209770773.a n = A135225 n

end A135225

/-! ## A135225.P1496094820974668549

`A177767(n-A073424(n))`
-/

namespace A135225.P1496094820974668549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177767 ((n : ℤ) - A073424 n).toNat

end

end A135225.P1496094820974668549

namespace A135225

/-- `A177767(n-A073424(n))` -/
def P1496094820974668549.Spec : Prop :=
  ∀ n, P1496094820974668549.a n = A135225 n

end A135225

/-! ## A135225.P8781800282575141420

`A177767(n*A123110(n))`
-/

namespace A135225.P8781800282575141420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177767 ((n : ℤ) * A123110 n).toNat

end

end A135225.P8781800282575141420

namespace A135225

/-- `A177767(n*A123110(n))` -/
def P8781800282575141420.Spec : Prop :=
  ∀ n, P8781800282575141420.a n = A135225 n

end A135225

/-! ## A135225.P9452963165980210953

`A193554(n*A123110(n))`
-/

namespace A135225.P9452963165980210953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193554 ((n : ℤ) * A123110 n).toNat

end

end A135225.P9452963165980210953

namespace A135225

/-- `A193554(n*A123110(n))` -/
def P9452963165980210953.Spec : Prop :=
  ∀ n, P9452963165980210953.a n = A135225 n

end A135225

/-! ## A135225.P12217781510105056001

`gcd(A073423(n), A097805(n))`
-/

namespace A135225.P12217781510105056001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073423 n) (A097805 n)

end

end A135225.P12217781510105056001

namespace A135225

/-- `gcd(A073423(n), A097805(n))` -/
def P12217781510105056001.Spec : Prop :=
  ∀ n, (P12217781510105056001.a n : ℤ) = A135225 n

end A135225

/-! ## A135225.P12525370528094676563

`gcd(A000038(n), A177767(n))`
-/

namespace A135225.P12525370528094676563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A177767 n)

end

end A135225.P12525370528094676563

namespace A135225

/-- `gcd(A000038(n), A177767(n))` -/
def P12525370528094676563.Spec : Prop :=
  ∀ n, (P12525370528094676563.a n : ℤ) = A135225 n

end A135225

/-! ## A135225.P14002398029142218582

`A193554(gcd(n, A010816(n)))`
-/

namespace A135225.P14002398029142218582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193554 (Int.gcd (n : ℤ) (A010816 n))

end

end A135225.P14002398029142218582

namespace A135225

/-- `A193554(gcd(n, A010816(n)))` -/
def P14002398029142218582.Spec : Prop :=
  ∀ n, P14002398029142218582.a n = A135225 n

end A135225

/-! ## A135225.P17059357935267991406

`gcd(A059778(n), A193554(n))`
-/

namespace A135225.P17059357935267991406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059778 n) (A193554 n)

end

end A135225.P17059357935267991406

namespace A135225

/-- `gcd(A059778(n), A193554(n))` -/
def P17059357935267991406.Spec : Prop :=
  ∀ n, (P17059357935267991406.a n : ℤ) = A135225 n

end A135225

/-! ## A135225.P6371552927494965409

`gcd(A127952(n), A134399(n))`
-/

namespace A135225.P6371552927494965409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127952 n) (A134399 n)

end

end A135225.P6371552927494965409

namespace A135225

/-- `gcd(A127952(n), A134399(n))` -/
def P6371552927494965409.Spec : Prop :=
  ∀ n, (P6371552927494965409.a n : ℤ) = A135225 n

end A135225

/-! ## A135225.P10248983513010662325

`lcm(A020985(n), A177767(n))`
-/

namespace A135225.P10248983513010662325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A177767 n)

end

end A135225.P10248983513010662325

namespace A135225

/-- `lcm(A020985(n), A177767(n))` -/
def P10248983513010662325.Spec : Prop :=
  ∀ n, (P10248983513010662325.a n : ℤ) = A135225 n

end A135225

/-! ## A135225.P11950406787931334819

`and(A177767(n), A285116(n))`
-/

namespace A135225.P11950406787931334819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A177767 n) (A285116 n)

end

end A135225.P11950406787931334819

namespace A135225

/-- `and(A177767(n), A285116(n))` -/
def P11950406787931334819.Spec : Prop :=
  ∀ n, P11950406787931334819.a n = A135225 n

end A135225

/-! ## A135225.P14929862019599449270

`or(A010054(n), A097805(n))`
-/

namespace A135225.P14929862019599449270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A097805 n)

end

end A135225.P14929862019599449270

namespace A135225

/-- `or(A010054(n), A097805(n))` -/
def P14929862019599449270.Spec : Prop :=
  ∀ n, P14929862019599449270.a n = A135225 n

end A135225

/-!
# A135226: Triangle A135225 + A007318 - A103451, read by rows.

The programs for A135226, the canonical program `A135226.P11438623629144137933` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135226 has offset 0).

The definition of A135226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135226.P15371760867522008497

`A029635(char[∑[n-1]]+n)`
-/

namespace A135226.P15371760867522008497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n)

end

end A135226.P15371760867522008497

namespace A135226

/-- `A029635(char[∑[n-1]]+n)` -/
def P15371760867522008497.Spec : Prop :=
  ∀ n, P15371760867522008497.a n = A135226 n

end A135226

/-! ## A135226.P11438623629144137933

`A029655(A056943(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A135226

/-- `A029655(A056943(n))` -/
def P11438623629144137933.Spec : Prop :=
  ∀ n, P11438623629144137933.a n = A135226 n

theorem P11438623629144137933.correct : P11438623629144137933.Spec := by
  intro n
  simp only [A135226]

end A135226

/-! ## A135226.P18267682074805704737

`A029637(A122797(n+1))`
-/

namespace A135226.P18267682074805704737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029637 (A122797 (n + 1)).toNat

end

end A135226.P18267682074805704737

namespace A135226

/-- `A029637(A122797(n+1))` -/
def P18267682074805704737.Spec : Prop :=
  ∀ n, P18267682074805704737.a n = A135226 n

end A135226

/-! ## A135226.P12518284495147227173

`A029635(n)-A023531(n)`
-/

namespace A135226.P12518284495147227173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n - A023531 n

end

end A135226.P12518284495147227173

namespace A135226

/-- `A029635(n)-A023531(n)` -/
def P12518284495147227173.Spec : Prop :=
  ∀ n, P12518284495147227173.a n = A135226 n

end A135226

/-! ## A135226.P15419122467836240967

`A028326(n)-A208891(n)`
-/

namespace A135226.P15419122467836240967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A208891 n

end

end A135226.P15419122467836240967

namespace A135226

/-- `A028326(n)-A208891(n)` -/
def P15419122467836240967.Spec : Prop :=
  ∀ n, P15419122467836240967.a n = A135226 n

end A135226

/-! ## A135226.P17416990920836447165

`gcd(A029635(n), A103452(n))`
-/

namespace A135226.P17416990920836447165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029635 n) (A103452 n)

end

end A135226.P17416990920836447165

namespace A135226

/-- `gcd(A029635(n), A103452(n))` -/
def P17416990920836447165.Spec : Prop :=
  ∀ n, (P17416990920836447165.a n : ℤ) = A135226 n

end A135226

/-! ## A135226.P16949633445379530795

`A029635(n)-Δ[A003056(n)]`
-/

namespace A135226.P16949633445379530795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n - (f1 (n + 1) - f1 n)

end

end A135226.P16949633445379530795

namespace A135226

/-- `A029635(n)-Δ[A003056(n)]` -/
def P16949633445379530795.Spec : Prop :=
  ∀ n, P16949633445379530795.a n = A135226 n

end A135226

/-! ## A135226.P15936082241512955838

`A029635(n)-char[A000096(n)]`
-/

namespace A135226.P15936082241512955838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A135226.P15936082241512955838

namespace A135226

/-- `A029635(n)-char[A000096(n)]` -/
def P15936082241512955838.Spec : Prop :=
  ∀ n, P15936082241512955838.a n = A135226 n

end A135226

/-! ## A135226.P1632932895210421106

`A209561(n+1)-A259525(n)`
-/

namespace A135226.P1632932895210421106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209561 (n + 1) - A259525 n

end

end A135226.P1632932895210421106

namespace A135226

/-- `A209561(n+1)-A259525(n)` -/
def P1632932895210421106.Spec : Prop :=
  ∀ n, P1632932895210421106.a n = A135226 n

end A135226

/-! ## A135226.P6746561245220635246

`A200139(n)/A155038(n+1)`
-/

namespace A135226.P6746561245220635246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200139 n : ℚ) / (A155038 (n + 1) : ℚ)

end

end A135226.P6746561245220635246

namespace A135226

/-- `A200139(n)/A155038(n+1)` -/
def P6746561245220635246.Spec : Prop :=
  ∀ n, P6746561245220635246.a n = (A135226 n : ℚ)

end A135226

/-! ## A135226.P1963812775974289011

`2*A007318(n)-A208891(n)`
-/

namespace A135226.P1963812775974289011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A208891 n

end

end A135226.P1963812775974289011

namespace A135226

/-- `2*A007318(n)-A208891(n)` -/
def P1963812775974289011.Spec : Prop :=
  ∀ n, P1963812775974289011.a n = A135226 n

end A135226

/-! ## A135226.P2062704185969736253

`gcd(A118800(n), A293600(n+1))`
-/

namespace A135226.P2062704185969736253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A118800 n) (A293600 (n + 1))

end

end A135226.P2062704185969736253

namespace A135226

/-- `gcd(A118800(n), A293600(n+1))` -/
def P2062704185969736253.Spec : Prop :=
  ∀ n, (P2062704185969736253.a n : ℤ) = A135226 n

end A135226

/-! ## A135226.P7077259598289335151

`round(A029635(n)-acot(A055248(n)))`
-/

namespace A135226.P7077259598289335151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A029635 n : ℝ) - SequenceMachineLib.acot (A055248 n : ℝ))

end

end A135226.P7077259598289335151

namespace A135226

/-- `round(A029635(n)-acot(A055248(n)))` -/
def P7077259598289335151.Spec : Prop :=
  ∀ n, P7077259598289335151.a n = A135226 n

end A135226

/-! ## A135226.P17109572009920714378

`ceil(A029635(n)-1/A099375(n))`
-/

namespace A135226.P17109572009920714378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A029635 n : ℚ) - 1 / (A099375 n : ℚ)⌉

end

end A135226.P17109572009920714378

namespace A135226

/-- `ceil(A029635(n)-1/A099375(n))` -/
def P17109572009920714378.Spec : Prop :=
  ∀ n, P17109572009920714378.a n = A135226 n

end A135226

/-! ## A135226.P5772338603209048860

`A029637(2-A002024(n+1)+n)`
-/

namespace A135226.P5772338603209048860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029637 (2 - A002024 (n + 1) + (n : ℤ)).toNat

end

end A135226.P5772338603209048860

namespace A135226

/-- `A029637(2-A002024(n+1)+n)` -/
def P5772338603209048860.Spec : Prop :=
  ∀ n, P5772338603209048860.a n = A135226 n

end A135226

/-! ## A135226.P3892240249806214972

`2*A007318(n)-A007318(A083920(n))`
-/

namespace A135226.P3892240249806214972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A007318 (A083920 n).toNat

end

end A135226.P3892240249806214972

namespace A135226

/-- `2*A007318(n)-A007318(A083920(n))` -/
def P3892240249806214972.Spec : Prop :=
  ∀ n, P3892240249806214972.a n = A135226 n

end A135226

/-! ## A135226.P5086763431439902198

`2*A007318(n)-A007318(A271439(n))`
-/

namespace A135226.P5086763431439902198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A007318 (A271439 n).toNat

end

end A135226.P5086763431439902198

namespace A135226

/-- `2*A007318(n)-A007318(A271439(n))` -/
def P5086763431439902198.Spec : Prop :=
  ∀ n, P5086763431439902198.a n = A135226 n

end A135226

/-! ## A135226.P665404386244094953

`A007318(n)+A135225(n)-A103451(n)`
-/

namespace A135226.P665404386244094953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A135225 n - A103451 n)

end

end A135226.P665404386244094953

namespace A135226

/-- `A007318(n)+A135225(n)-A103451(n)` -/
def P665404386244094953.Spec : Prop :=
  ∀ n, P665404386244094953.a n = A135226 n

end A135226

/-! ## A135226.P9106340790253971259

`A028326(n)-A135225(n+1)`
-/

namespace A135226.P9106340790253971259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A135225 (n + 1)

end

end A135226.P9106340790253971259

namespace A135226

/-- `A028326(n)-A135225(n+1)` -/
def P9106340790253971259.Spec : Prop :=
  ∀ n, P9106340790253971259.a n = A135226 n

end A135226

/-!
# A135227: Triangle A000012 * A135225, read by rows.

The programs for A135227, the canonical program `A135227.P11035620043874226728` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135227 has offset 0).

The definition of A135227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135227.P11035620043874226728

`A007318(A198954(n)+n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A135227

/-- `A007318(A198954(n)+n)` -/
def P11035620043874226728.Spec : Prop :=
  ∀ n, P11035620043874226728.a n = A135227 n

theorem P11035620043874226728.correct : P11035620043874226728.Spec := by
  intro n
  simp only [A135227]

end A135227

/-! ## A135227.P11323731259729162275

`A131830(n)/A051340(n)`
-/

namespace A135227.P11323731259729162275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131830 n : ℚ) / (A051340 n : ℚ)

end

end A135227.P11323731259729162275

namespace A135227

/-- `A131830(n)/A051340(n)` -/
def P11323731259729162275.Spec : Prop :=
  ∀ n, P11323731259729162275.a n = (A135227 n : ℚ)

end A135227

/-! ## A135227.P5074531883358787891

`A103371(n)/A184049(n)`
-/

namespace A135227.P5074531883358787891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103371 n : ℚ) / (A184049 n : ℚ)

end

end A135227.P5074531883358787891

namespace A135227

/-- `A103371(n)/A184049(n)` -/
def P5074531883358787891.Spec : Prop :=
  ∀ n, P5074531883358787891.a n = (A135227 n : ℚ)

end A135227

/-! ## A135227.P7038797079057804178

`gcd(A103516(n), A206735(n))`
-/

namespace A135227.P7038797079057804178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103516 n) (A206735 n)

end

end A135227.P7038797079057804178

namespace A135227

/-- `gcd(A103516(n), A206735(n))` -/
def P7038797079057804178.Spec : Prop :=
  ∀ n, (P7038797079057804178.a n : ℤ) = A135227 n

end A135227

/-! ## A135227.P8193168790057417610

`A130296(n+1)+A014473(n)`
-/

namespace A135227.P8193168790057417610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1) + A014473 n

end

end A135227.P8193168790057417610

namespace A135227

/-- `A130296(n+1)+A014473(n)` -/
def P8193168790057417610.Spec : Prop :=
  ∀ n, P8193168790057417610.a n = A135227 n

end A135227

/-! ## A135227.P2541043057211661626

`A007318(n)*A130296(n+1)`
-/

namespace A135227.P2541043057211661626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A130296 (n + 1)

end

end A135227.P2541043057211661626

namespace A135227

/-- `A007318(n)*A130296(n+1)` -/
def P2541043057211661626.Spec : Prop :=
  ∀ n, P2541043057211661626.a n = A135227 n

end A135227

/-! ## A135227.P12308458100882608497

`A093375(n+1)/A193592(n)`
-/

namespace A135227.P12308458100882608497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093375 (n + 1) : ℚ) / (A193592 n : ℚ)

end

end A135227.P12308458100882608497

namespace A135227

/-- `A093375(n+1)/A193592(n)` -/
def P12308458100882608497.Spec : Prop :=
  ∀ n, P12308458100882608497.a n = (A135227 n : ℚ)

end A135227

/-! ## A135227.P12987911214918601952

`A028326(A198954(n)+n)/2`
-/

namespace A135227.P12987911214918601952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 (A198954 n + (n : ℤ)).toNat : ℚ) / 2

end

end A135227.P12987911214918601952

namespace A135227

/-- `A028326(A198954(n)+n)/2` -/
def P12987911214918601952.Spec : Prop :=
  ∀ n, P12987911214918601952.a n = (A135227 n : ℚ)

end A135227

/-! ## A135227.P15105760253746001002

`abs(A108086(n)*A130296(n+1))`
-/

namespace A135227.P15105760253746001002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n * A130296 (n + 1)|

end

end A135227.P15105760253746001002

namespace A135227

/-- `abs(A108086(n)*A130296(n+1))` -/
def P15105760253746001002.Spec : Prop :=
  ∀ n, P15105760253746001002.a n = A135227 n

end A135227

/-! ## A135227.P5650523768973295411

`sqrt(A008459(n))*A130296(n+1)`
-/

namespace A135227.P5650523768973295411
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A130296 (n + 1) : ℝ)

end

end A135227.P5650523768973295411

namespace A135227

/-- `sqrt(A008459(n))*A130296(n+1)` -/
def P5650523768973295411.Spec : Prop :=
  ∀ n, P5650523768973295411.a n = (A135227 n : ℝ)

end A135227

/-! ## A135227.P10400953269808577035

`Δ[A102363(n)]*A130296(n+1)`
-/

namespace A135227.P10400953269808577035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A130296 (n + 1)

end

end A135227.P10400953269808577035

namespace A135227

/-- `Δ[A102363(n)]*A130296(n+1)` -/
def P10400953269808577035.Spec : Prop :=
  ∀ n, P10400953269808577035.a n = A135227 n

end A135227

/-! ## A135227.P17376945599845903882

`(A007318(n+1)*char[∑[n+1]]+1)*A007318(n)`
-/

namespace A135227.P17376945599845903882
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007318 (n + 1) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 1) * A007318 n

end

end A135227.P17376945599845903882

namespace A135227

/-- `(A007318(n+1)*char[∑[n+1]]+1)*A007318(n)` -/
def P17376945599845903882.Spec : Prop :=
  ∀ n, P17376945599845903882.a n = A135227 n

end A135227

/-! ## A135227.P2367503639844436342

`A073424(n)+A007318(A073424(n)+n)`
-/

namespace A135227.P2367503639844436342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n + A007318 (A073424 n + (n : ℤ)).toNat

end

end A135227.P2367503639844436342

namespace A135227

/-- `A073424(n)+A007318(A073424(n)+n)` -/
def P2367503639844436342.Spec : Prop :=
  ∀ n, P2367503639844436342.a n = A135227 n

end A135227

/-! ## A135227.P9551742963261499179

`A206735(A010054(n)+n)+A010054(n)`
-/

namespace A135227.P9551742963261499179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (A010054 n + (n : ℤ)).toNat + A010054 n

end

end A135227.P9551742963261499179

namespace A135227

/-- `A206735(A010054(n)+n)+A010054(n)` -/
def P9551742963261499179.Spec : Prop :=
  ∀ n, P9551742963261499179.a n = A135227 n

end A135227

/-! ## A135227.P5536415299186574505

`A206735(A073424(n)+n)+A073424(n)`
-/

namespace A135227.P5536415299186574505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (A073424 n + (n : ℤ)).toNat + A073424 n

end

end A135227.P5536415299186574505

namespace A135227

/-- `A206735(A073424(n)+n)+A073424(n)` -/
def P5536415299186574505.Spec : Prop :=
  ∀ n, P5536415299186574505.a n = A135227 n

end A135227

/-! ## A135227.P528462312063271235

`A206735(A103451(n)+n)+A103451(n)`
-/

namespace A135227.P528462312063271235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (A103451 n + (n : ℤ)).toNat + A103451 n

end

end A135227.P528462312063271235

namespace A135227

/-- `A206735(A103451(n)+n)+A103451(n)` -/
def P528462312063271235.Spec : Prop :=
  ∀ n, P528462312063271235.a n = A135227 n

end A135227

/-! ## A135227.P16664120582107228644

`A003056(n*A010054(n))+A007318(n)`
-/

namespace A135227.P16664120582107228644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((n : ℤ) * A010054 n).toNat + A007318 n

end

end A135227.P16664120582107228644

namespace A135227

/-- `A003056(n*A010054(n))+A007318(n)` -/
def P16664120582107228644.Spec : Prop :=
  ∀ n, P16664120582107228644.a n = A135227 n

end A135227

/-! ## A135227.P17436015769820595651

`A025581(n*A010054(n))+A007318(n)`
-/

namespace A135227.P17436015769820595651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 ((n : ℤ) * A010054 n).toNat + A007318 n

end

end A135227.P17436015769820595651

namespace A135227

/-- `A025581(n*A010054(n))+A007318(n)` -/
def P17436015769820595651.Spec : Prop :=
  ∀ n, P17436015769820595651.a n = A135227 n

end A135227

/-! ## A135227.P10948123452846040854

`A007318(lcm(A007318(n), A010816(n))+n)`
-/

namespace A135227.P10948123452846040854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.lcm (A007318 n) (A010816 n) + n)

end

end A135227.P10948123452846040854

namespace A135227

/-- `A007318(lcm(A007318(n), A010816(n))+n)` -/
def P10948123452846040854.Spec : Prop :=
  ∀ n, P10948123452846040854.a n = A135227 n

end A135227

/-! ## A135227.P8963836140687362874

`A130301(n+1)+A156644(n)-A007318(n)`
-/

namespace A135227.P8963836140687362874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130301 (n + 1) + (A156644 n - A007318 n)

end

end A135227.P8963836140687362874

namespace A135227

/-- `A130301(n+1)+A156644(n)-A007318(n)` -/
def P8963836140687362874.Spec : Prop :=
  ∀ n, P8963836140687362874.a n = A135227 n

end A135227

/-!
# A135228: Triangle A000012(signed) * A007318 * A103451, read by rows.

The programs for A135228, there is no canonical definition to state claims against.
-/

/-! ## A135228.P7397640457277303691

`or(A000975(A158821(n)), A059260(n))`
-/

namespace A135228.P7397640457277303691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000975 (A158821 n).toNat) (A059260 n)

end

end A135228.P7397640457277303691

/-!
# A135229: Triangle A000012(signed) * A103451 * A007318, read by rows.

The programs for A135229, there is no canonical definition to state claims against.
-/

/-! ## A135229.P15362203589366818726

`or(char[∑[n]], A059260(n))`
-/

namespace A135229.P15362203589366818726
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A059260 n)

end

end A135229.P15362203589366818726

/-! ## A135229.P4474552445562203560

`A035317(A056943(n))`
-/

namespace A135229.P4474552445562203560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (A056943 n).toNat

end

end A135229.P4474552445562203560

/-! ## A135229.P6474561213513464043

`A059260(n-A073424(n))`
-/

namespace A135229.P6474561213513464043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059260 ((n : ℤ) - A073424 n).toNat

end

end A135229.P6474561213513464043

/-! ## A135229.P13362286542475963999

`A135230(n-A073424(n))`
-/

namespace A135229.P13362286542475963999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135230 ((n : ℤ) - A073424 n).toNat

end

end A135229.P13362286542475963999

/-! ## A135229.P5584366554977190285

`A135228(n)%A028326(n)`
-/

namespace A135229.P5584366554977190285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135228 n) (A028326 n)

end

end A135229.P5584366554977190285

/-! ## A135229.P17637925203599934596

`gcd(A059260(n), A073423(n))`
-/

namespace A135229.P17637925203599934596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059260 n) (A073423 n)

end

end A135229.P17637925203599934596

/-! ## A135229.P13768199656046503739

`gcd(A089799(n), A135228(n))`
-/

namespace A135229.P13768199656046503739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089799 n) (A135228 n)

end

end A135229.P13768199656046503739

/-! ## A135229.P16699579161988866430

`gcd(A103452(n), A135230(n))`
-/

namespace A135229.P16699579161988866430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103452 n) (A135230 n)

end

end A135229.P16699579161988866430

/-! ## A135229.P16176646977314839587

`gcd(A106459(n), A239473(n))`
-/

namespace A135229.P16176646977314839587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106459 n) (A239473 n)

end

end A135229.P16176646977314839587

/-! ## A135229.P10945466953678820621

`A059260(n%A007318(n)²)`
-/

namespace A135229.P10945466953678820621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059260 (Int.tmod (n : ℤ) (A007318 n ^ 2)).toNat

end

end A135229.P10945466953678820621

/-! ## A135229.P17916777775874781194

`A059260(n*(1-A103451(n)))`
-/

namespace A135229.P17916777775874781194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059260 ((n : ℤ) * (1 - A103451 n)).toNat

end

end A135229.P17916777775874781194

/-! ## A135229.P7343695839824855373

`A135230(n*(1-A103451(n)))`
-/

namespace A135229.P7343695839824855373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135230 ((n : ℤ) * (1 - A103451 n)).toNat

end

end A135229.P7343695839824855373

/-! ## A135229.P7560548381415560450

`A059260(n-char[A179865(n+1)])`
-/

namespace A135229.P7560548381415560450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059260 (n - (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A135229.P7560548381415560450

/-! ## A135229.P12140240258055052441

`A035317(A057944(n)-A002262(n))`
-/

namespace A135229.P12140240258055052441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (A057944 n - A002262 n).toNat

end

end A135229.P12140240258055052441

/-! ## A135229.P1756323872185895174

`A135230(n)/A135230(n*A103451(n))`
-/

namespace A135229.P1756323872185895174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135230 n : ℚ) / (A135230 ((n : ℤ) * A103451 n).toNat : ℚ)

end

end A135229.P1756323872185895174

/-! ## A135229.P1006427518152347116

`A059260(n)+A059260(A059260(n*A103451(n)))`
-/

namespace A135229.P1006427518152347116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059260 n + A059260 (A059260 ((n : ℤ) * A103451 n).toNat).toNat

end

end A135229.P1006427518152347116

/-! ## A135229.P3705896901618451874

`A059259(A073424(n)+A061579(n))`
-/

namespace A135229.P3705896901618451874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059259 (A073424 n + A061579 n).toNat

end

end A135229.P3705896901618451874

/-! ## A135229.P8521105790544264813

`A059260(n%A209330(n))`
-/

namespace A135229.P8521105790544264813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059260 (Int.tmod (n : ℤ) (A209330 n)).toNat

end

end A135229.P8521105790544264813

/-! ## A135229.P8808963666246186871

`A028310(A059260(n))`
-/

namespace A135229.P8808963666246186871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A059260 n).toNat

end

end A135229.P8808963666246186871

/-! ## A135229.P4528257023769956096

`A059260(n-A000007(A059260(n)))`
-/

namespace A135229.P4528257023769956096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059260 ((n : ℤ) - A000007 (A059260 n).toNat).toNat

end

end A135229.P4528257023769956096

/-!
# A135230: Triangle A103451 * A000012(signed) * A007318, read by rows.

The programs for A135230, there is no canonical definition to state claims against.
-/

/-! ## A135230.P16654454892736620254

`A073424(n)+A059260(n)`
-/

namespace A135230.P16654454892736620254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n + A059260 n

end

end A135230.P16654454892736620254

/-! ## A135230.P8991303475260418450

`A059260(n)+char[A179865(n+1)]`
-/

namespace A135230.P8991303475260418450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059260 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A135230.P8991303475260418450

/-! ## A135230.P13096502868355355974

`A059260(n)+A023758(n+1)%2`
-/

namespace A135230.P13096502868355355974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059260 n + Int.tmod (A023758 (n + 1)) 2

end

end A135230.P13096502868355355974

/-! ## A135230.P7181805803677903758

`A059260(n)+char[record[A038722(n+1)]]`
-/

namespace A135230.P7181805803677903758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059260 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A135230.P7181805803677903758

/-! ## A135230.P9195653137902763637

`A073424(n)+A059259(A061579(n))`
-/

namespace A135230.P9195653137902763637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n + A059259 (A061579 n).toNat

end

end A135230.P9195653137902763637

/-! ## A135230.P5769974761151903201

`A073424(n)+abs(A112468(A007401(n+2)))`
-/

namespace A135230.P5769974761151903201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n + |A112468 (A007401 (n + 2)).toNat|

end

end A135230.P5769974761151903201

/-! ## A135230.P14037544905117796731

`A059260(n)+A113025(n)%A002024(n+1)`
-/

namespace A135230.P14037544905117796731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059260 n + Int.tmod (A113025 n) (A002024 (n + 1))

end

end A135230.P14037544905117796731

/-!
# A135231: Row sums of triangle A135230.

The programs for A135231, the canonical program `A135231.P7102150905142953552` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135231 has offset 0).

The definition of A135231 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135231.P7102150905142953552

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A135231

/-- `2*a(n-1)+a(n-2)-2*a(n-3)` -/
def P7102150905142953552.Spec : Prop :=
  ∀ n, P7102150905142953552.a n = A135231 n

theorem P7102150905142953552.correct : P7102150905142953552.Spec := by
  intro n
  simp only [A135231]

end A135231

/-! ## A135231.P1507174773804464918

`2^n+2-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A135231.P1507174773804464918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 ^ n : ℤ) + (2 - a (n - 1))

end

end A135231.P1507174773804464918

namespace A135231

/-- `2^n+2-a(n-1)` -/
def P1507174773804464918.Spec : Prop :=
  ∀ n, P1507174773804464918.a n = A135231 n

end A135231

/-! ## A135231.P2565682923455125721

`2-(a(n-1)-2^n)` with `a(0)=1, a(1)=2`
-/

namespace A135231.P2565682923455125721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 - (a (n - 1) - (2 ^ n : ℤ))

end

end A135231.P2565682923455125721

namespace A135231

/-- `2-(a(n-1)-2^n)` -/
def P2565682923455125721.Spec : Prop :=
  ∀ n, P2565682923455125721.a n = A135231 n

end A135231

/-! ## A135231.P6751908806806598572

`2*(a(n-1)-n%2)` with `a(0)=1, a(1)=2`
-/

namespace A135231.P6751908806806598572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 1) - ((n % 2 : ℕ) : ℤ))

end

end A135231.P6751908806806598572

namespace A135231

/-- `2*(a(n-1)-n%2)` -/
def P6751908806806598572.Spec : Prop :=
  ∀ n, P6751908806806598572.a n = A135231 n

end A135231

/-! ## A135231.P2388252732718539992

`2*(a(n-1)-and(1, n))` with `a(0)=1, a(1)=2`
-/

namespace A135231.P2388252732718539992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 1) - (Nat.land 1 n : ℤ))

end

end A135231.P2388252732718539992

namespace A135231

/-- `2*(a(n-1)-and(1, n))` -/
def P2388252732718539992.Spec : Prop :=
  ∀ n, P2388252732718539992.a n = A135231 n

end A135231

/-! ## A135231.P3566124464218769087

`a(n-1)-or(2, -a(n-1))` with `a(0)=1`
-/

namespace A135231.P3566124464218769087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - Int.lor 2 (-a (n - 1))

end

end A135231.P3566124464218769087

namespace A135231

/-- `a(n-1)-or(2, -a(n-1))` -/
def P3566124464218769087.Spec : Prop :=
  ∀ n, P3566124464218769087.a n = A135231 n

end A135231

/-! ## A135231.P4720404101280089732

`2*(gcd(2, n)+a(n-1)-2)` with `a(0)=1, a(1)=2`
-/

namespace A135231.P4720404101280089732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * ((Nat.gcd 2 n : ℤ) + (a (n - 1) - 2))

end

end A135231.P4720404101280089732

namespace A135231

/-- `2*(gcd(2, n)+a(n-1)-2)` -/
def P4720404101280089732.Spec : Prop :=
  ∀ n, P4720404101280089732.a n = A135231 n

end A135231

/-! ## A135231.P5405074236105386742

`or(3*a(n-2), a(n-2))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A135231.P5405074236105386742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  Nat.lor (3 * a (n - 2)) (a (n - 2))

end

end A135231.P5405074236105386742

namespace A135231

/-- `or(3*a(n-2), a(n-2))` -/
def P5405074236105386742.Spec : Prop :=
  ∀ n, (P5405074236105386742.a n : ℤ) = A135231 n

end A135231

/-! ## A135231.P13812029790708273410

`2*(a(n-1)-val(a(n-1), 4))` with `a(0)=1`
-/

namespace A135231.P13812029790708273410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - (SequenceMachineLib.valuation (a (n - 1)).toNat 4 : ℤ))

end

end A135231.P13812029790708273410

namespace A135231

/-- `2*(a(n-1)-val(a(n-1), 4))` -/
def P13812029790708273410.Spec : Prop :=
  ∀ n, P13812029790708273410.a n = A135231 n

end A135231

/-! ## A135231.P12367351636489397583

`a(n-1)+2*(a(n-2)-1)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A135231.P12367351636489397583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 1) + 2 * (a (n - 2) - 1)

end

end A135231.P12367351636489397583

namespace A135231

/-- `a(n-1)+2*(a(n-2)-1)` -/
def P12367351636489397583.Spec : Prop :=
  ∀ n, P12367351636489397583.a n = A135231 n

end A135231

/-! ## A135231.P7692259471256115623

`a(n-1)-2*(1-a(n-2))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A135231.P7692259471256115623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 1) - 2 * (1 - a (n - 2))

end

end A135231.P7692259471256115623

namespace A135231

/-- `a(n-1)-2*(1-a(n-2))` -/
def P7692259471256115623.Spec : Prop :=
  ∀ n, P7692259471256115623.a n = A135231 n

end A135231

/-! ## A135231.P4066021233652739061

`a(n-2)+a(n-1)+a(n-2)-2` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A135231.P4066021233652739061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 2) + (a (n - 1) + a (n - 2) - 2)

end

end A135231.P4066021233652739061

namespace A135231

/-- `a(n-2)+a(n-1)+a(n-2)-2` -/
def P4066021233652739061.Spec : Prop :=
  ∀ n, P4066021233652739061.a n = A135231 n

end A135231

/-! ## A135231.P14821600585729789205

`a(n-1)-(2-a(n-1)-a(n-1)%4)` with `a(0)=1, a(1)=2`
-/

namespace A135231.P14821600585729789205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - (2 - a (n - 1) - Int.tmod (a (n - 1)) 4)

end

end A135231.P14821600585729789205

namespace A135231

/-- `a(n-1)-(2-a(n-1)-a(n-1)%4)` -/
def P14821600585729789205.Spec : Prop :=
  ∀ n, P14821600585729789205.a n = A135231 n

end A135231

/-! ## A135231.P7836072219679868543

`a(n-1)-(gcd(4, a(n-1))-a(n-1)-2)` with `a(0)=1, a(1)=2`
-/

namespace A135231.P7836072219679868543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - ((Int.gcd 4 (a (n - 1)) : ℤ) - a (n - 1) - 2)

end

end A135231.P7836072219679868543

namespace A135231

/-- `a(n-1)-(gcd(4, a(n-1))-a(n-1)-2)` -/
def P7836072219679868543.Spec : Prop :=
  ∀ n, P7836072219679868543.a n = A135231 n

end A135231

/-! ## A135231.P10683441272844241700

`floor(a(n-1)-(2-a(n-2)-a(n-2)))` with `a(0)=1, a(1)=2, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A135231.P10683441272844241700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 1) - (2 - a (n - 2) - a (n - 2))

end

end A135231.P10683441272844241700

namespace A135231

/-- `floor(a(n-1)-(2-a(n-2)-a(n-2)))` -/
def P10683441272844241700.Spec : Prop :=
  ∀ n, P10683441272844241700.a n = A135231 n

end A135231

/-! ## A135231.P3129405404218938469

`record[A328284(n)+1]`
-/

namespace A135231.P3129405404218938469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328284 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135231.P3129405404218938469

namespace A135231

/-- `record[A328284(n)+1]` -/
def P3129405404218938469.Spec : Prop :=
  ∀ n, P3129405404218938469.a n = A135231 n

end A135231

/-! ## A135231.P7258025720644580163

`∑[A078008(n)+char[1]]`
-/

namespace A135231.P7258025720644580163
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135231.P7258025720644580163

namespace A135231

/-- `∑[A078008(n)+char[1]]` -/
def P7258025720644580163.Spec : Prop :=
  ∀ n, P7258025720644580163.a n = A135231 n

end A135231

/-! ## A135231.P1950408311601451556

`∑[A078008(n-char[1])]`
-/

namespace A135231.P1950408311601451556
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (n - (if ∃ j, f2 j = n then 1 else 0))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135231.P1950408311601451556

namespace A135231

/-- `∑[A078008(n-char[1])]` -/
def P1950408311601451556.Spec : Prop :=
  ∀ n, P1950408311601451556.a n = A135231 n

end A135231

/-!
# A135232: Sum of the products of the first n prime pairs.

The programs for A135232, the canonical program `A135232.P1770735486883114960` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135232 has offset 1).

The definition of A135232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135232.P1770735486883114960

`∑[A089581(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A135232

/-- `∑[A089581(n+1)]` -/
def P1770735486883114960.Spec : Prop :=
  ∀ n, P1770735486883114960.a n = A135232 (n + 1)

theorem P1770735486883114960.correct : P1770735486883114960.Spec := by
  intro n
  simp only [A135232, Nat.add_sub_cancel]

end A135232

/-! ## A135232.P15768226787217161735

`∑[A006094(Δ[n²])]`
-/

namespace A135232.P15768226787217161735
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135232.P15768226787217161735

namespace A135232

/-- `∑[A006094(Δ[n²])]` -/
def P15768226787217161735.Spec : Prop :=
  ∀ n, P15768226787217161735.a n = A135232 (n + 1)

end A135232

/-! ## A135232.P8349919598266757722

`∑[sqrt(A166329(2*n+1))]`
-/

namespace A135232.P8349919598266757722
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A166329 (2 * n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135232.P8349919598266757722

namespace A135232

/-- `∑[sqrt(A166329(2*n+1))]` -/
def P8349919598266757722.Spec : Prop :=
  ∀ n, P8349919598266757722.a n = (A135232 (n + 1) : ℝ)

end A135232

/-! ## A135232.P17739562615253742030

`∑[A023515(2*(n+1))+1]`
-/

namespace A135232.P17739562615253742030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (2 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135232.P17739562615253742030

namespace A135232

/-- `∑[A023515(2*(n+1))+1]` -/
def P17739562615253742030.Spec : Prop :=
  ∀ n, P17739562615253742030.a n = A135232 (n + 1)

end A135232

/-! ## A135232.P8990825176825837346

`∑[A023523(2*(n+1))-1]`
-/

namespace A135232.P8990825176825837346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (2 * (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135232.P8990825176825837346

namespace A135232

/-- `∑[A023523(2*(n+1))-1]` -/
def P8990825176825837346.Spec : Prop :=
  ∀ n, P8990825176825837346.a n = A135232 (n + 1)

end A135232

/-! ## A135232.P7581499507105936208

`∑[A069486(2*n+1)/2]`
-/

namespace A135232.P7581499507105936208
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069486 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135232.P7581499507105936208

namespace A135232

/-- `∑[A069486(2*n+1)/2]` -/
def P7581499507105936208.Spec : Prop :=
  ∀ n, P7581499507105936208.a n = (A135232 (n + 1) : ℚ)

end A135232

/-! ## A135232.P7386525129409130954

`∑[record[A006094(A060819(n+1))]]`
-/

namespace A135232.P7386525129409130954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (A060819 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135232.P7386525129409130954

namespace A135232

/-- `∑[record[A006094(A060819(n+1))]]` -/
def P7386525129409130954.Spec : Prop :=
  ∀ n, P7386525129409130954.a n = A135232 (n + 1)

end A135232

/-! ## A135232.P9355865967773909581

`∑[A000040(2*(n+1))*A000040(Δ[n²])]`
-/

namespace A135232.P9355865967773909581
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * (n + 1)) * A000040 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135232.P9355865967773909581

namespace A135232

/-- `∑[A000040(2*(n+1))*A000040(Δ[n²])]` -/
def P9355865967773909581.Spec : Prop :=
  ∀ n, P9355865967773909581.a n = A135232 (n + 1)

end A135232

/-! ## A135232.P17995382814591770124

`∑[A037166(2*n+1)+A000040(2*n+1)]`
-/

namespace A135232.P17995382814591770124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037166 (2 * n + 1) + A000040 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135232.P17995382814591770124

namespace A135232

/-- `∑[A037166(2*n+1)+A000040(2*n+1)]` -/
def P17995382814591770124.Spec : Prop :=
  ∀ n, P17995382814591770124.a n = A135232 (n + 1)

end A135232

/-! ## A135232.P14150440021684430690

`∑[A291463(2*n+1)+A001248(2*n+1)]`
-/

namespace A135232.P14150440021684430690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291463 (2 * n + 1) + A001248 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135232.P14150440021684430690

namespace A135232

/-- `∑[A291463(2*n+1)+A001248(2*n+1)]` -/
def P14150440021684430690.Spec : Prop :=
  ∀ n, P14150440021684430690.a n = A135232 (n + 1)

end A135232

/-! ## A135232.P8601454526968974527

`∑[A006005(2*(n+1))*A008578(2*(n+1))]`
-/

namespace A135232.P8601454526968974527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (2 * (n + 1)) * A008578 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135232.P8601454526968974527

namespace A135232

/-- `∑[A006005(2*(n+1))*A008578(2*(n+1))]` -/
def P8601454526968974527.Spec : Prop :=
  ∀ n, P8601454526968974527.a n = A135232 (n + 1)

end A135232

/-! ## A135232.P17258238538627267969

`∑[A000040(2*n+1)*A065091(2*n+1)]`
-/

namespace A135232.P17258238538627267969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * n + 1) * A065091 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135232.P17258238538627267969

namespace A135232

/-- `∑[A000040(2*n+1)*A065091(2*n+1)]` -/
def P17258238538627267969.Spec : Prop :=
  ∀ n, P17258238538627267969.a n = A135232 (n + 1)

end A135232

/-! ## A135232.P17819553404145044435

`∑[A069487(2*n+1)/A069482(2*n+1)]`
-/

namespace A135232.P17819553404145044435
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069487 (2 * n + 1) : ℚ) / (A069482 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135232.P17819553404145044435

namespace A135232

/-- `∑[A069487(2*n+1)/A069482(2*n+1)]` -/
def P17819553404145044435.Spec : Prop :=
  ∀ n, P17819553404145044435.a n = (A135232 (n + 1) : ℚ)

end A135232

/-! ## A135232.P3173968857309273783

`∑[abs(A273960(2*n+1)*A273960(2*(n+1)))]`
-/

namespace A135232.P3173968857309273783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A273960 (2 * n + 1) * A273960 (2 * (n + 1))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135232.P3173968857309273783

namespace A135232

/-- `∑[abs(A273960(2*n+1)*A273960(2*(n+1)))]` -/
def P3173968857309273783.Spec : Prop :=
  ∀ n, P3173968857309273783.a n = A135232 (n + 1)

end A135232

/-! ## A135232.P1825266548800448389

`∑[sqrt(A001248(2*n+1)*A001248(2*(n+1)))]`
-/

namespace A135232.P1825266548800448389
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (2 * n + 1) * A001248 (2 * (n + 1)) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135232.P1825266548800448389

namespace A135232

/-- `∑[sqrt(A001248(2*n+1)*A001248(2*(n+1)))]` -/
def P1825266548800448389.Spec : Prop :=
  ∀ n, P1825266548800448389.a n = (A135232 (n + 1) : ℝ)

end A135232

/-! ## A135232.P8236254045065726246

`∑[p?[A008578(2*n+1)]*A008578(2*(n+1))]`
-/

namespace A135232.P8236254045065726246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) * A008578 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135232.P8236254045065726246

namespace A135232

/-- `∑[p?[A008578(2*n+1)]*A008578(2*(n+1))]` -/
def P8236254045065726246.Spec : Prop :=
  ∀ n, P8236254045065726246.a n = A135232 (n + 1)

end A135232

/-! ## A135232.P1469244845653796644

`∑[p?[A182986(2*n+1)]*A182986(2*(n+1))]`
-/

namespace A135232.P1469244845653796644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) * A182986 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135232.P1469244845653796644

namespace A135232

/-- `∑[p?[A182986(2*n+1)]*A182986(2*(n+1))]` -/
def P1469244845653796644.Spec : Prop :=
  ∀ n, P1469244845653796644.a n = A135232 (n + 1)

end A135232

/-! ## A135232.P6259123872962501851

`∑[A116570(4*n)]`
-/

namespace A135232.P6259123872962501851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135232.P6259123872962501851

namespace A135232

/-- `∑[A116570(4*n)]` -/
def P6259123872962501851.Spec : Prop :=
  ∀ n, P6259123872962501851.a n = A135232 (n + 1)

end A135232

/-! ## A135232.P5855850027694376635

`∑[A333747(4*n+1)]`
-/

namespace A135232.P5855850027694376635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333747 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135232.P5855850027694376635

namespace A135232

/-- `∑[A333747(4*n+1)]` -/
def P5855850027694376635.Spec : Prop :=
  ∀ n, P5855850027694376635.a n = A135232 (n + 1)

end A135232

/-! ## A135232.P3791944175710446762

`∑[A033476(2*n+2*n+1)]`
-/

namespace A135232.P3791944175710446762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 (2 * n + (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135232.P3791944175710446762

namespace A135232

/-- `∑[A033476(2*n+2*n+1)]` -/
def P3791944175710446762.Spec : Prop :=
  ∀ n, P3791944175710446762.a n = A135232 (n + 1)

end A135232

/-!
# A135233: Triangle A007318 * A193554, read by rows.

The programs for A135233, there is no canonical definition to state claims against.
-/

/-! ## A135233.P17910447204136611639

`A048471(n)-A357647(A289676(2*n+1))`
-/

namespace A135233.P17910447204136611639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048471 n - A357647 (A289676 (2 * n + 1)).toNat

end

end A135233.P17910447204136611639

/-!
# A135237: Numbers k such that k = s^pi(pi(s)) where s is sum of its digits.

The programs for A135237, there is no canonical definition to state claims against.
-/

/-! ## A135237.P6626724172841374935

`A135236(a(n-2)+3)` with `a(0)=1, a(1)=3`
-/

namespace A135237.P6626724172841374935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A135236 (a (n - 2) + 3).toNat

end

end A135237.P6626724172841374935

/-!
# A135241: Numbers k such that sigma(sigma(k)) = 2*phi(k).

The programs for A135241, there is no canonical definition to state claims against.
-/

/-! ## A135241.P6083403667497778633

`p?[A067260(n+1)]`
-/

namespace A135241.P6083403667497778633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A135241.P6083403667497778633

/-! ## A135241.P16231344978123100709

`p?[A125246(n+1)-1]`
-/

namespace A135241.P16231344978123100709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125246 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A135241.P16231344978123100709

/-!
# A135244: Largest m such that the sum of the aliquot parts of m (A001065) equals n, or 0 if no such number exists.

The programs for A135244, there is no canonical definition to state claims against.
-/

/-! ## A135244.P11471332543811506023

`A366110(n+2)+A070016(n+1)`
-/

namespace A135244.P11471332543811506023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366110 (n + 2) + A070016 (n + 1)

end

end A135244.P11471332543811506023

/-! ## A135244.P13307667650692652601

`A366110(n+2)+A070015(n+2)`
-/

namespace A135244.P13307667650692652601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366110 (n + 2) + A070015 (n + 2)

end

end A135244.P13307667650692652601

/-! ## A135244.P12641341896420413124

`A135245(A077168(n)+1)`
-/

namespace A135244.P12641341896420413124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135245 (A077168 n + 1).toNat

end

end A135244.P12641341896420413124

/-! ## A135244.P4966627860383851505

`A135245(A043320(n+2))`
-/

namespace A135244.P4966627860383851505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135245 (A043320 (n + 2)).toNat

end

end A135244.P4966627860383851505

/-! ## A135244.P16488746085681766513

`A135245(A044917(n+2))`
-/

namespace A135244.P16488746085681766513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135245 (A044917 (n + 2)).toNat

end

end A135244.P16488746085681766513

/-!
# A135245: Aliquot predecessors with the largest degrees.

The programs for A135245, there is no canonical definition to state claims against.
-/

/-! ## A135245.P6057993382764535741

`A135244(A187829(n+1)+A000007(n))`
-/

namespace A135245.P6057993382764535741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135244 (A187829 (n + 1) + A000007 n).toNat

end

end A135245.P6057993382764535741

/-! ## A135245.P8500486179539870820

`A135244(A187829(n+1)+A010894(n))`
-/

namespace A135245.P8500486179539870820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135244 (A187829 (n + 1) + A010894 (n + 21)).toNat

end

end A135245.P8500486179539870820

/-! ## A135245.P14384170091580467649

`A135244(A187829(n+1)+A151713(n))`
-/

namespace A135245.P14384170091580467649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135244 (A187829 (n + 1) + A151713 n).toNat

end

end A135245.P14384170091580467649

/-! ## A135245.P4872565328135011481

`A135244(A054977(n)*A187829(n+1))`
-/

namespace A135245.P4872565328135011481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135244 (A054977 n * A187829 (n + 1)).toNat

end

end A135245.P4872565328135011481

/-! ## A135245.P17265402775945637682

`A135244(lcm(A031285(n), A187829(n+1)))`
-/

namespace A135245.P17265402775945637682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135244 (Int.lcm (A031285 n) (A187829 (n + 1)))

end

end A135245.P17265402775945637682

/-!
# A135246: Shifted Pell recurrence: a(n) = 2*a(n-2) + a(n-4).

The programs for A135246, the canonical program `A135246.P2869966664397965136` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135246 has offset 0).

The definition of A135246 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-2)+a(n-4)` (program `A135246.P2869966664397965136`, by `A135246.P2869966664397965136.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135246.P2869966664397965136

`2*a(n-2)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A135246

/-- `2*a(n-2)+a(n-4)` -/
def P2869966664397965136.Spec : Prop :=
  ∀ n, (P2869966664397965136.a n : ℤ) = A135246 n

theorem P2869966664397965136.correct : P2869966664397965136.Spec := by
  intro n
  simp only [A135246]

end A135246

/-! ## A135246.P3504820640573138597

`a(n-2)+a(n-2)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7`
-/

namespace A135246.P3504820640573138597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5, 7] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 4))

end

end A135246.P3504820640573138597

namespace A135246

/-- `a(n-2)+a(n-2)+a(n-4)` -/
def P3504820640573138597.Spec : Prop :=
  ∀ n, (P3504820640573138597.a n : ℤ) = A135246 n

theorem P3504820640573138597.correct : P3504820640573138597.Spec := by
  intro n
  simp only [A135246, Nat.add_sub_cancel, A135246.P3504820640573138597.a, A135246.P2869966664397965136.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A135246

/-! ## A135246.P11012362554773065558

`∑[2*A002965(n)]+1`
-/

namespace A135246.P11012362554773065558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A135246.P11012362554773065558

namespace A135246

/-- `∑[2*A002965(n)]+1` -/
def P11012362554773065558.Spec : Prop :=
  ∀ n, P11012362554773065558.a n = A135246 n

end A135246

/-! ## A135246.P18124065915408514062

`A119016(n+1)+record[A119016(n)]`
-/

namespace A135246.P18124065915408514062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135246.P18124065915408514062

namespace A135246

/-- `A119016(n+1)+record[A119016(n)]` -/
def P18124065915408514062.Spec : Prop :=
  ∀ n, P18124065915408514062.a n = A135246 n

end A135246

/-! ## A135246.P7063424888753360818

`A119016(n+1)+A082766(n+2)`
-/

namespace A135246.P7063424888753360818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (n + 1) + A082766 (n + 2)

end

end A135246.P7063424888753360818

namespace A135246

/-- `A119016(n+1)+A082766(n+2)` -/
def P7063424888753360818.Spec : Prop :=
  ∀ n, P7063424888753360818.a n = A135246 n

end A135246

/-! ## A135246.P4902062715924167691

`A119016(n+1)+A119016(n+2)`
-/

namespace A135246.P4902062715924167691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (n + 1) + A119016 (n + 2)

end

end A135246.P4902062715924167691

namespace A135246

/-- `A119016(n+1)+A119016(n+2)` -/
def P4902062715924167691.Spec : Prop :=
  ∀ n, P4902062715924167691.a n = A135246 n

end A135246

/-! ## A135246.P7588519343422363759

`A135153(n+1)+A135153(n)+A082766(n+2)`
-/

namespace A135246.P7588519343422363759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (n + 1) + (A135153 n + A082766 (n + 2))

end

end A135246.P7588519343422363759

namespace A135246

/-- `A135153(n+1)+A135153(n)+A082766(n+2)` -/
def P7588519343422363759.Spec : Prop :=
  ∀ n, P7588519343422363759.a n = A135246 n

end A135246

/-! ## A135246.P6603667231283752691

`A135153(n+1)+A152113(n+1)+A135153(n+1)`
-/

namespace A135246.P6603667231283752691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (n + 1) + (A152113 (n + 1) + A135153 (n + 1))

end

end A135246.P6603667231283752691

namespace A135246

/-- `A135153(n+1)+A152113(n+1)+A135153(n+1)` -/
def P6603667231283752691.Spec : Prop :=
  ∀ n, P6603667231283752691.a n = A135246 n

end A135246

/-! ## A135246.P11662075208981894427

`∪[A048655(n), A078057(n)]`
-/

namespace A135246.P11662075208981894427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048655 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A135246.P11662075208981894427

namespace A135246

/-- `∪[A048655(n), A078057(n)]` -/
def P11662075208981894427.Spec : Prop :=
  ∀ n, (P11662075208981894427.a n : ℤ) = A135246 n

end A135246

/-! ## A135246.P10015158440511174801

`ceil(∑[sqrt(A204514(n+2))])`
-/

namespace A135246.P10015158440511174801
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A204514 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A135246.P10015158440511174801

namespace A135246

/-- `ceil(∑[sqrt(A204514(n+2))])` -/
def P10015158440511174801.Spec : Prop :=
  ∀ n, P10015158440511174801.a n = A135246 n

end A135246

/-!
# A135247: a(n) = 3*a(n-1) + 2*a(n-2) - 6*a(n-3).

The programs for A135247, the canonical program `A135247.P7324931491348887505` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135247 has offset 0).

The definition of A135247 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+2*a(n-2)-6*a(n-3)` (program `A135247.P7324931491348887505`, by `A135247.P7324931491348887505.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135247.P7324931491348887505

`3*a(n-1)+2*a(n-2)-6*a(n-3)` with `a(0)=1, a(1)=3, a(2)=11`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A135247

/-- `3*a(n-1)+2*a(n-2)-6*a(n-3)` -/
def P7324931491348887505.Spec : Prop :=
  ∀ n, P7324931491348887505.a n = A135247 n

theorem P7324931491348887505.correct : P7324931491348887505.Spec := by
  intro n
  simp only [A135247]

end A135247

/-! ## A135247.P15686842466553919043

`3*a(n-1)+A077957(n)` with `a(0)=1`
-/

namespace A135247.P15686842466553919043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + A077957 n

end

end A135247.P15686842466553919043

namespace A135247

/-- `3*a(n-1)+A077957(n)` -/
def P15686842466553919043.Spec : Prop :=
  ∀ n, P15686842466553919043.a n = A135247 n

end A135247

/-! ## A135247.P5733573003716461960

`A010684(n)*A016133(floor(n/2))`
-/

namespace A135247.P5733573003716461960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A016133 ⌊(n : ℚ) / 2⌋.toNat

end

end A135247.P5733573003716461960

namespace A135247

/-- `A010684(n)*A016133(floor(n/2))` -/
def P5733573003716461960.Spec : Prop :=
  ∀ n, P5733573003716461960.a n = A135247 n

end A135247

/-! ## A135247.P4276100730346896472

`(A000244(n+2)-A164073(n+3))/7`
-/

namespace A135247.P4276100730346896472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 (n + 2) - A164073 (n + 3) : ℚ) / 7

end

end A135247.P4276100730346896472

namespace A135247

/-- `(A000244(n+2)-A164073(n+3))/7` -/
def P4276100730346896472.Spec : Prop :=
  ∀ n, P4276100730346896472.a n = (A135247 n : ℚ)

end A135247

/-! ## A135247.P14076999348354995989

`3^n+2*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A135247.P14076999348354995989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 ^ n + 2 * a (n - 2)

end

end A135247.P14076999348354995989

namespace A135247

/-- `3^n+2*a(n-2)` -/
def P14076999348354995989.Spec : Prop :=
  ∀ n, (P14076999348354995989.a n : ℤ) = A135247 n

end A135247

/-! ## A135247.P13594024386497388471

`a(n-2)+a(n-2)+3^n` with `a(0)=1, a(1)=3`
-/

namespace A135247.P13594024386497388471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + (a (n - 2) + 3 ^ n)

end

end A135247.P13594024386497388471

namespace A135247

/-- `a(n-2)+a(n-2)+3^n` -/
def P13594024386497388471.Spec : Prop :=
  ∀ n, (P13594024386497388471.a n : ℤ) = A135247 n

end A135247

/-!
# A135248: a(n) = 4*a(n-1) - 4*a(n-2) + 2*a(n-4), with a(0)=a(1)=a(2)=0, and a(3)=1.

The programs for A135248, the canonical program `A135248.P10457285323016540686` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135248 has offset 0).

The definition of A135248 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-4*a(n-2)+2*a(n-4)` (program `A135248.P10457285323016540686`, by `A135248.P10457285323016540686.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135248.P10457285323016540686

`4*a(n-1)-4*a(n-2)+2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A135248

/-- `4*a(n-1)-4*a(n-2)+2*a(n-4)` -/
def P10457285323016540686.Spec : Prop :=
  ∀ n, P10457285323016540686.a n = A135248 n

theorem P10457285323016540686.correct : P10457285323016540686.Spec := by
  intro n
  simp only [A135248]

end A135248

/-! ## A135248.P13731368281416561735

`∑[A101893(abs(1-n))]`
-/

namespace A135248.P13731368281416561735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101893 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135248.P13731368281416561735

namespace A135248

/-- `∑[A101893(abs(1-n))]` -/
def P13731368281416561735.Spec : Prop :=
  ∀ n, P13731368281416561735.a n = A135248 n

end A135248

/-! ## A135248.P14044761344516605231

`A101893(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A135248.P14044761344516605231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A101893 (n - 1) + a (n - 1)

end

end A135248.P14044761344516605231

namespace A135248

/-- `A101893(n-1)+a(n-1)` -/
def P14044761344516605231.Spec : Prop :=
  ∀ n, P14044761344516605231.a n = A135248 n

end A135248

/-! ## A135248.P2961869241984248301

`∑[A101893(n)]-A101893(n)`
-/

namespace A135248.P2961869241984248301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A101893 n

end

end A135248.P2961869241984248301

namespace A135248

/-- `∑[A101893(n)]-A101893(n)` -/
def P2961869241984248301.Spec : Prop :=
  ∀ n, P2961869241984248301.a n = A135248 n

end A135248

/-! ## A135248.P4354471635126131392

`∑[A209230(n)]-A100132(n)`
-/

namespace A135248.P4354471635126131392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A100132 n

end

end A135248.P4354471635126131392

namespace A135248

/-- `∑[A209230(n)]-A100132(n)` -/
def P4354471635126131392.Spec : Prop :=
  ∀ n, P4354471635126131392.a n = A135248 n

end A135248

/-! ## A135248.P11226248057665139222

`∑[A209230(A028310(n))]%A100132(n)`
-/

namespace A135248.P11226248057665139222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209230 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A100132 n)

end

end A135248.P11226248057665139222

namespace A135248

/-- `∑[A209230(A028310(n))]%A100132(n)` -/
def P11226248057665139222.Spec : Prop :=
  ∀ n, P11226248057665139222.a n = A135248 n

end A135248

/-! ## A135248.P9102687090325994238

`A209230(n)-A100132(A028310(n))/2`
-/

namespace A135248.P9102687090325994238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209230 n : ℚ) - (A100132 (A028310 n).toNat : ℚ) / 2

end

end A135248.P9102687090325994238

namespace A135248

/-- `A209230(n)-A100132(A028310(n))/2` -/
def P9102687090325994238.Spec : Prop :=
  ∀ n, P9102687090325994238.a n = (A135248 n : ℚ)

end A135248

/-!
# A135249: a(n) = number of bits in the binary expansion of A046967(n).

The programs for A135249, the canonical program `A135249.P6172404458566147260` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135249 has offset 1).

The definition of A135249 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070826, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A135249.P6172404458566147260

`1+A070826(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A135249

/-- `1+A070826(n+1)` -/
def P6172404458566147260.Spec : Prop :=
  ∀ n, P6172404458566147260.a n = A135249 (n + 1)

theorem P6172404458566147260.correct : P6172404458566147260.Spec := by
  intro n
  simp only [A135249, Nat.add_sub_cancel]

end A135249

/-! ## A135249.P6336235667007808031

`∏[lt[n, ∑{p}[2*n, #]]]+1`
-/

namespace A135249.P6336235667007808031
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A135249.P6336235667007808031

namespace A135249

/-- `∏[lt[n, ∑{p}[2*n, #]]]+1` -/
def P6336235667007808031.Spec : Prop :=
  ∀ n, (P6336235667007808031.a n : ℤ) = A135249 (n + 1)

end A135249

/-! ## A135249.P15163440818468307284

`∏[p?[xor(1, n)+1]]/2+1`
-/

namespace A135249.P15163440818468307284
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2 + 1

end

end A135249.P15163440818468307284

namespace A135249

/-- `∏[p?[xor(1, n)+1]]/2+1` -/
def P15163440818468307284.Spec : Prop :=
  ∀ n, P15163440818468307284.a n = (A135249 (n + 1) : ℚ)

end A135249

/-! ## A135249.P16114530101900542872

`∏[p?[n%3+n]]/2+1`
-/

namespace A135249.P16114530101900542872
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2 + 1

end

end A135249.P16114530101900542872

namespace A135249

/-- `∏[p?[n%3+n]]/2+1` -/
def P16114530101900542872.Spec : Prop :=
  ∀ n, P16114530101900542872.a n = (A135249 (n + 1) : ℚ)

end A135249

/-! ## A135249.P7891851827430988269

`(∏[p?[round(sqrt(n)+n)]]+2)/2`
-/

namespace A135249.P7891851827430988269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j + 2 : ℤ) : ℚ) / 2

end

end A135249.P7891851827430988269

namespace A135249

/-- `(∏[p?[round(sqrt(n)+n)]]+2)/2` -/
def P7891851827430988269.Spec : Prop :=
  ∀ n, P7891851827430988269.a n = (A135249 (n + 1) : ℚ)

end A135249

/-! ## A135249.P13615762022732611774

`A370135(∑[n]+1)`
-/

namespace A135249.P13615762022732611774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370135 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A135249.P13615762022732611774

namespace A135249

/-- `A370135(∑[n]+1)` -/
def P13615762022732611774.Spec : Prop :=
  ∀ n, P13615762022732611774.a n = A135249 (n + 1)

end A135249

/-! ## A135249.P8481838534781845136

`record[A370135(n+1)]`
-/

namespace A135249.P8481838534781845136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135249.P8481838534781845136

namespace A135249

/-- `record[A370135(n+1)]` -/
def P8481838534781845136.Spec : Prop :=
  ∀ n, P8481838534781845136.a n = A135249 (n + 1)

end A135249

/-! ## A135249.P12633836687741329353

`∏[record[A110560(n)]]+1`
-/

namespace A135249.P12633836687741329353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A135249.P12633836687741329353

namespace A135249

/-- `∏[record[A110560(n)]]+1` -/
def P12633836687741329353.Spec : Prop :=
  ∀ n, P12633836687741329353.a n = A135249 (n + 1)

end A135249

/-! ## A135249.P16845103871388114875

`∏[record[A128059(n)]]+1`
-/

namespace A135249.P16845103871388114875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A135249.P16845103871388114875

namespace A135249

/-- `∏[record[A128059(n)]]+1` -/
def P16845103871388114875.Spec : Prop :=
  ∀ n, P16845103871388114875.a n = A135249 (n + 1)

end A135249

/-! ## A135249.P6669208523319754875

`∏[record[A172170(n)]]+1`
-/

namespace A135249.P6669208523319754875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172170 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A135249.P6669208523319754875

namespace A135249

/-- `∏[record[A172170(n)]]+1` -/
def P6669208523319754875.Spec : Prop :=
  ∀ n, P6669208523319754875.a n = A135249 (n + 1)

end A135249

/-!
# A135250: a(n) = number of digits in the decimal expansion of A046967(n).

The programs for A135250, there is no canonical definition to state claims against.
-/

/-! ## A135250.P7777147210232320642

`ceil(A070826(n+1)/log2(10))`
-/

namespace A135250.P7777147210232320642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A070826 (n + 1) : ℝ) / Real.logb 2 (10 : ℝ)⌉

end

end A135250.P7777147210232320642

/-!
# A135251: Maximal number of zero digits in square of number with n digits not divisible by 10.

The programs for A135251, there is no canonical definition to state claims against.
-/

/-! ## A135251.P1448803009317782819

`comp[record[xor(1, n+3)]]%144`
-/

namespace A135251.P1448803009317782819
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 144

end

end A135251.P1448803009317782819

/-!
# A135254: Binomial transform of A131666.

The programs for A135254, the canonical program `A135254.P13627004134358169083` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135254 has offset 0).

The definition of A135254 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135254.P13627004134358169083

`6*a(n-1)-12*a(n-2)+9*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=4`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A135254

/-- `6*a(n-1)-12*a(n-2)+9*a(n-3)` -/
def P13627004134358169083.Spec : Prop :=
  ∀ n, P13627004134358169083.a n = A135254 n

theorem P13627004134358169083.correct : P13627004134358169083.Spec := by
  intro n
  simp only [A135254]

end A135254

/-! ## A135254.P10989353818834715915

`A133474(n)-Δ[A057681(n)]`
-/

namespace A135254.P10989353818834715915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133474 n - (f1 (n + 1) - f1 n)

end

end A135254.P10989353818834715915

namespace A135254

/-- `A133474(n)-Δ[A057681(n)]` -/
def P10989353818834715915.Spec : Prop :=
  ∀ n, P10989353818834715915.a n = A135254 n

end A135254

/-! ## A135254.P3080017578665047386

`A133474(n)-Δ[A103312(n+1)]`
-/

namespace A135254.P3080017578665047386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133474 n - (f1 (n + 1) - f1 n)

end

end A135254.P3080017578665047386

namespace A135254

/-- `A133474(n)-Δ[A103312(n+1)]` -/
def P3080017578665047386.Spec : Prop :=
  ∀ n, P3080017578665047386.a n = A135254 n

end A135254

/-! ## A135254.P13543349925879474798

`A133474(n)+A227430(n)-A290993(n)`
-/

namespace A135254.P13543349925879474798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133474 n + (A227430 n - A290993 n)

end

end A135254.P13543349925879474798

namespace A135254

/-- `A133474(n)+A227430(n)-A290993(n)` -/
def P13543349925879474798.Spec : Prop :=
  ∀ n, P13543349925879474798.a n = A135254 n

end A135254

/-! ## A135254.P3134804030641946126

`A057681(n)+A133474(n)-A057681(n+1)`
-/

namespace A135254.P3134804030641946126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057681 n + (A133474 n - A057681 (n + 1))

end

end A135254.P3134804030641946126

namespace A135254

/-- `A057681(n)+A133474(n)-A057681(n+1)` -/
def P3134804030641946126.Spec : Prop :=
  ∀ n, P3134804030641946126.a n = A135254 n

end A135254

/-! ## A135254.P8984344417880718322

`A103312(n+1)+A133474(n)-A103312(n+2)`
-/

namespace A135254.P8984344417880718322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103312 (n + 1) + (A133474 n - A103312 (n + 2))

end

end A135254.P8984344417880718322

namespace A135254

/-- `A103312(n+1)+A133474(n)-A103312(n+2)` -/
def P8984344417880718322.Spec : Prop :=
  ∀ n, P8984344417880718322.a n = A135254 n

end A135254

/-! ## A135254.P2364366180339731682

`A133474(n+1)-2*A133474(n)`
-/

namespace A135254.P2364366180339731682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133474 (n + 1) - 2 * A133474 n

end

end A135254.P2364366180339731682

namespace A135254

/-- `A133474(n+1)-2*A133474(n)` -/
def P2364366180339731682.Spec : Prop :=
  ∀ n, P2364366180339731682.a n = A135254 n

end A135254

/-!
# A135255: Partial sums of A102659 read as decimal integers.

The programs for A135255, there is no canonical definition to state claims against.
-/

/-! ## A135255.P7558865452279191413

`∑[A102659(n+1)]`
-/

namespace A135255.P7558865452279191413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135255.P7558865452279191413

/-! ## A135255.P12050376490189273613

`∑[record[A102659(ceil(C(or(1, n), n)/2))]]`
-/

namespace A135255.P12050376490189273613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102659 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135255.P12050376490189273613

/-! ## A135255.P17003885389146695148

`∑[record[A102659(A022446(n))]]`
-/

namespace A135255.P17003885389146695148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102659 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135255.P17003885389146695148

/-! ## A135255.P16770905891678790309

`∑[record[A102659(A028920(n))]]`
-/

namespace A135255.P16770905891678790309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102659 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135255.P16770905891678790309

/-! ## A135255.P9333476352766635472

`∑[record[A102659(A065648(n))]]`
-/

namespace A135255.P9333476352766635472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102659 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135255.P9333476352766635472

/-!
# A135256: A triangular sequence based on a further generalization of the Cornelius-Schultz matrix polynomials to two sequences in i and j. a(n)=(n-1)!/f[n]: f[n]-> Fibonacci numbers; c(n)=1/n; B(i,j)=(-1)^(i + j)*a[j + 1]*c[i + 1]/(j!*(i - j)!) as a lower triangular matrix.

The programs for A135256, there is no canonical definition to state claims against.
-/

/-! ## A135256.P16133660602398283624

`A130559(n)*A349340(A002720(n))`
-/

namespace A135256.P16133660602398283624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130559 n * A349340 (A002720 n).toNat

end

end A135256.P16133660602398283624

/-!
# A135258: Inverse binomial transform of A131666 after removing A131666(0) = 0.

The programs for A135258, the canonical program `A135258.P3802773517858087629` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135258 has offset 0).

The definition of A135258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135258.P3802773517858087629

`n²%3-2*a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A135258

/-- `n²%3-2*a(n-1)` -/
def P3802773517858087629.Spec : Prop :=
  ∀ n, P3802773517858087629.a n = A135258 n

theorem P3802773517858087629.correct : P3802773517858087629.Spec := by
  intro n
  simp only [A135258]

end A135258

/-! ## A135258.P17703813713168594794

`a(n-3)-(-2)^(n-2)` with `a(0)=0, a(1)=1, a(2)=-1`
-/

namespace A135258.P17703813713168594794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, -1] fun n a =>
  a (n - 3) - (-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A135258.P17703813713168594794

namespace A135258

/-- `a(n-3)-(-2)^(n-2)` -/
def P17703813713168594794.Spec : Prop :=
  ∀ n, P17703813713168594794.a n = (A135258 n : ℚ)

end A135258

/-! ## A135258.P2439712513204940197

`n²²%3-a(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A135258.P2439712513204940197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (((n ^ 2) ^ 2 % 3 : ℕ) : ℤ) - a (n - 1) - a (n - 1)

end

end A135258.P2439712513204940197

namespace A135258

/-- `n²²%3-a(n-1)-a(n-1)` -/
def P2439712513204940197.Spec : Prop :=
  ∀ n, P2439712513204940197.a n = A135258 n

end A135258

/-! ## A135258.P14401726619780789904

`and(1, A000032(n))-2*a(n-1)` with `a(0)=0`
-/

namespace A135258.P14401726619780789904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land 1 (A000032 n) - 2 * a (n - 1)

end

end A135258.P14401726619780789904

namespace A135258

/-- `and(1, A000032(n))-2*a(n-1)` -/
def P14401726619780789904.Spec : Prop :=
  ∀ n, P14401726619780789904.a n = A135258 n

end A135258

/-! ## A135258.P14832796369583254104

`and(1, A000045(n))-2*a(n-1)` with `a(0)=0`
-/

namespace A135258.P14832796369583254104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land 1 (A000045 n) - 2 * a (n - 1)

end

end A135258.P14832796369583254104

namespace A135258

/-- `and(1, A000045(n))-2*a(n-1)` -/
def P14832796369583254104.Spec : Prop :=
  ∀ n, P14832796369583254104.a n = A135258 n

end A135258

/-! ## A135258.P9993343622318182232

`A011655(n)-(a(n-1)+a(n-1))` with `a(0)=0`
-/

namespace A135258.P9993343622318182232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A011655 n - (a (n - 1) + a (n - 1))

end

end A135258.P9993343622318182232

namespace A135258

/-- `A011655(n)-(a(n-1)+a(n-1))` -/
def P9993343622318182232.Spec : Prop :=
  ∀ n, P9993343622318182232.a n = A135258 n

end A135258

/-! ## A135258.P14632606943324255048

`A267208(n)-(a(n-1)+a(n-1))` with `a(0)=0`
-/

namespace A135258.P14632606943324255048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A267208 n - (a (n - 1) + a (n - 1))

end

end A135258.P14632606943324255048

namespace A135258

/-- `A267208(n)-(a(n-1)+a(n-1))` -/
def P14632606943324255048.Spec : Prop :=
  ∀ n, P14632606943324255048.a n = A135258 n

end A135258

/-! ## A135258.P8044308709698519073

`Δ[A004396(n+1)]-(a(n-1)+a(n-1))` with `a(0)=0`
-/

namespace A135258.P8044308709698519073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  f1 (n + 1) - f1 n - (a (n - 1) + a (n - 1))

end

end A135258.P8044308709698519073

namespace A135258

/-- `Δ[A004396(n+1)]-(a(n-1)+a(n-1))` -/
def P8044308709698519073.Spec : Prop :=
  ∀ n, P8044308709698519073.a n = A135258 n

end A135258

/-! ## A135258.P10831106065713448024

`(A139797(n)-A348405(n))*A131666(n+1)`
-/

namespace A135258.P10831106065713448024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A139797 n - A348405 n) * A131666 (n + 1)

end

end A135258.P10831106065713448024

namespace A135258

/-- `(A139797(n)-A348405(n))*A131666(n+1)` -/
def P10831106065713448024.Spec : Prop :=
  ∀ n, P10831106065713448024.a n = A135258 n

end A135258

/-! ## A135258.P2211472518178231157

`A131666(n+1)/(A348405(n+1)-A139797(n+1))`
-/

namespace A135258.P2211472518178231157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131666 (n + 1) : ℚ) / (A348405 (n + 1) - A139797 (n + 1) : ℚ)

end

end A135258.P2211472518178231157

namespace A135258

/-- `A131666(n+1)/(A348405(n+1)-A139797(n+1))` -/
def P2211472518178231157.Spec : Prop :=
  ∀ n, P2211472518178231157.a n = (A135258 n : ℚ)

end A135258

/-! ## A135258.P8226624897015267127

`A008620(n+1)/A104581(n+1)*A131666(n+1)`
-/

namespace A135258.P8226624897015267127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008620 (n + 1) : ℚ) / (A104581 (n + 1) : ℚ) * (A131666 (n + 1) : ℚ)

end

end A135258.P8226624897015267127

namespace A135258

/-- `A008620(n+1)/A104581(n+1)*A131666(n+1)` -/
def P8226624897015267127.Spec : Prop :=
  ∀ n, P8226624897015267127.a n = (A135258 n : ℚ)

end A135258

/-! ## A135258.P5130889590940897417

`∑[A033999(n+1)*A131708(n)]`
-/

namespace A135258.P5130889590940897417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A131708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135258.P5130889590940897417

namespace A135258

/-- `∑[A033999(n+1)*A131708(n)]` -/
def P5130889590940897417.Spec : Prop :=
  ∀ n, P5130889590940897417.a n = A135258 n

end A135258

/-! ## A135258.P11185989884341951387

`(A001045(n)-A078008(n))*A131666(n+1)`
-/

namespace A135258.P11185989884341951387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001045 n - A078008 n) * A131666 (n + 1)

end

end A135258.P11185989884341951387

namespace A135258

/-- `(A001045(n)-A078008(n))*A131666(n+1)` -/
def P11185989884341951387.Spec : Prop :=
  ∀ n, P11185989884341951387.a n = A135258 n

end A135258

/-! ## A135258.P1601274840894095680

`floor((2-∑[(-2)^n])/3)`
-/

namespace A135258.P1601274840894095680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 - ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋

end

end A135258.P1601274840894095680

namespace A135258

/-- `floor((2-∑[(-2)^n])/3)` -/
def P1601274840894095680.Spec : Prop :=
  ∀ n, P1601274840894095680.a n = A135258 n

end A135258

/-! ## A135258.P13165491252011178393

`ceil(∑[Δ[A140966(n)]/3])`
-/

namespace A135258.P13165491252011178393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140966 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A135258.P13165491252011178393

namespace A135258

/-- `ceil(∑[Δ[A140966(n)]/3])` -/
def P13165491252011178393.Spec : Prop :=
  ∀ n, P13165491252011178393.a n = A135258 n

end A135258

/-! ## A135258.P2588123197313813732

`ceil(A077980(2*n+1)/3)`
-/

namespace A135258.P2588123197313813732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077980 (2 * n + 1) : ℚ) / 3⌉

end

end A135258.P2588123197313813732

namespace A135258

/-- `ceil(A077980(2*n+1)/3)` -/
def P2588123197313813732.Spec : Prop :=
  ∀ n, P2588123197313813732.a n = A135258 n

end A135258

/-! ## A135258.P10088273067930243678

`(A001045(n+1)-A097073(n))*A131666(n+1)`
-/

namespace A135258.P10088273067930243678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001045 (n + 1) - A097073 n) * A131666 (n + 1)

end

end A135258.P10088273067930243678

namespace A135258

/-- `(A001045(n+1)-A097073(n))*A131666(n+1)` -/
def P10088273067930243678.Spec : Prop :=
  ∀ n, P10088273067930243678.a n = A135258 n

end A135258

/-! ## A135258.P10355865541860254583

`A139818(n)-A113405(2*n)`
-/

namespace A135258.P10355865541860254583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139818 n - A113405 (2 * n)

end

end A135258.P10355865541860254583

namespace A135258

/-- `A139818(n)-A113405(2*n)` -/
def P10355865541860254583.Spec : Prop :=
  ∀ n, P10355865541860254583.a n = A135258 n

end A135258

/-!
# A135259: a(n) = 3*A131666(n) - A131666(n+1).

The programs for A135259, the canonical program `A135259.P8295290231040197` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135259 has offset 0).

The definition of A135259 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135259.P8869568532789491207

`2*a(n-1)-a(n-3)+2*a(n-4)` with `a(0)=0, a(1)=-1, a(2)=2, a(3)=1`
-/

namespace A135259.P8869568532789491207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 2, 1] fun n a =>
  2 * a (n - 1) - a (n - 3) + 2 * a (n - 4)

end

end A135259.P8869568532789491207

namespace A135259

/-- `2*a(n-1)-a(n-3)+2*a(n-4)` -/
def P8869568532789491207.Spec : Prop :=
  ∀ n, P8869568532789491207.a n = A135259 n

end A135259

/-! ## A135259.P12263884593027490972

`A131666(n)-A092220(n)`
-/

namespace A135259.P12263884593027490972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 n - A092220 n

end

end A135259.P12263884593027490972

namespace A135259

/-- `A131666(n)-A092220(n)` -/
def P12263884593027490972.Spec : Prop :=
  ∀ n, P12263884593027490972.a n = A135259 n

end A135259

/-! ## A135259.P8295290231040197

`3*A131666(n)-A131666(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A135259

/-- `3*A131666(n)-A131666(n+1)` -/
def P8295290231040197.Spec : Prop :=
  ∀ n, P8295290231040197.a n = A135259 n

theorem P8295290231040197.correct : P8295290231040197.Spec := by
  intro n
  simp only [A135259]

end A135259

/-! ## A135259.P16347321571853741793

`2^(n-3)-a(n-3)` with `a(0)=0, a(1)=-1, a(2)=2`
-/

namespace A135259.P16347321571853741793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, -1, 2] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) - a (n - 3)

end

end A135259.P16347321571853741793

namespace A135259

/-- `2^(n-3)-a(n-3)` -/
def P16347321571853741793.Spec : Prop :=
  ∀ n, P16347321571853741793.a n = (A135259 n : ℚ)

end A135259

/-! ## A135259.P13558967918714872460

`A133511(n)-A133513(n)`
-/

namespace A135259.P13558967918714872460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133511 n - A133513 n

end

end A135259.P13558967918714872460

namespace A135259

/-- `A133511(n)-A133513(n)` -/
def P13558967918714872460.Spec : Prop :=
  ∀ n, P13558967918714872460.a n = A135259 n

end A135259

/-! ## A135259.P15808102691160021141

`A328881(n)-A130151(n+1)`
-/

namespace A135259.P15808102691160021141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328881 n - A130151 (n + 1)

end

end A135259.P15808102691160021141

namespace A135259

/-- `A328881(n)-A130151(n+1)` -/
def P15808102691160021141.Spec : Prop :=
  ∀ n, P15808102691160021141.a n = A135259 n

end A135259

/-! ## A135259.P9815370723860574288

`A133513(n+3)+A133511(n)`
-/

namespace A135259.P9815370723860574288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133513 (n + 3) + A133511 n

end

end A135259.P9815370723860574288

namespace A135259

/-- `A133513(n+3)+A133511(n)` -/
def P9815370723860574288.Spec : Prop :=
  ∀ n, P9815370723860574288.a n = A135259 n

end A135259

/-! ## A135259.P1514304201532740981

`A131090(n)-2*A092220(n)`
-/

namespace A135259.P1514304201532740981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131090 n - 2 * A092220 n

end

end A135259.P1514304201532740981

namespace A135259

/-- `A131090(n)-2*A092220(n)` -/
def P1514304201532740981.Spec : Prop :=
  ∀ n, P1514304201532740981.a n = A135259 n

end A135259

/-! ## A135259.P16891870533809783518

`A131666(n)+A131666(n)-A131090(n)`
-/

namespace A135259.P16891870533809783518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 n + (A131666 n - A131090 n)

end

end A135259.P16891870533809783518

namespace A135259

/-- `A131666(n)+A131666(n)-A131090(n)` -/
def P16891870533809783518.Spec : Prop :=
  ∀ n, P16891870533809783518.a n = A135259 n

end A135259

/-! ## A135259.P1090100537537451874

`A131556(n+1)+A328881(n)+A131714(n)`
-/

namespace A135259.P1090100537537451874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131556 (n + 1) + (A328881 n + A131714 n)

end

end A135259.P1090100537537451874

namespace A135259

/-- `A131556(n+1)+A328881(n)+A131714(n)` -/
def P1090100537537451874.Spec : Prop :=
  ∀ n, P1090100537537451874.a n = A135259 n

end A135259

/-! ## A135259.P16198123102903019072

`A113405(n)-(A133513(n)+A131531(n+1))`
-/

namespace A135259.P16198123102903019072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 n - (A133513 n + A131531 (n + 1))

end

end A135259.P16198123102903019072

namespace A135259

/-- `A113405(n)-(A133513(n)+A131531(n+1))` -/
def P16198123102903019072.Spec : Prop :=
  ∀ n, P16198123102903019072.a n = A135259 n

end A135259

/-! ## A135259.P1150431959125127952

`A139797(n+1)+A348405(n)-A010892(n+1)`
-/

namespace A135259.P1150431959125127952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139797 (n + 1) + (A348405 n - A010892 (n + 1))

end

end A135259.P1150431959125127952

namespace A135259

/-- `A139797(n+1)+A348405(n)-A010892(n+1)` -/
def P1150431959125127952.Spec : Prop :=
  ∀ n, P1150431959125127952.a n = A135259 n

end A135259

/-! ## A135259.P15711373119174446854

`A131531(n+1)+A131666(n)-A131531(n+2)`
-/

namespace A135259.P15711373119174446854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (n + 1) + (A131666 n - A131531 (n + 2))

end

end A135259.P15711373119174446854

namespace A135259

/-- `A131531(n+1)+A131666(n)-A131531(n+2)` -/
def P15711373119174446854.Spec : Prop :=
  ∀ n, P15711373119174446854.a n = A135259 n

end A135259

/-! ## A135259.P937771034600922822

`Δ[A133511(n)]`
-/

namespace A135259.P937771034600922822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135259.P937771034600922822

namespace A135259

/-- `Δ[A133511(n)]` -/
def P937771034600922822.Spec : Prop :=
  ∀ n, P937771034600922822.a n = A135259 n

end A135259

/-! ## A135259.P3798763385597387078

`∑[A135261(n)]-A135261(n)`
-/

namespace A135259.P3798763385597387078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A135261 n

end

end A135259.P3798763385597387078

namespace A135259

/-- `∑[A135261(n)]-A135261(n)` -/
def P3798763385597387078.Spec : Prop :=
  ∀ n, P3798763385597387078.a n = A135259 n

end A135259

/-! ## A135259.P17901226154231511294

`A133511(n+1)-A133511(n)`
-/

namespace A135259.P17901226154231511294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133511 (n + 1) - A133511 n

end

end A135259.P17901226154231511294

namespace A135259

/-- `A133511(n+1)-A133511(n)` -/
def P17901226154231511294.Spec : Prop :=
  ∀ n, P17901226154231511294.a n = A135259 n

end A135259

/-! ## A135259.P7794188296049098044

`2*A131666(n)-A131090(n)`
-/

namespace A135259.P7794188296049098044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131666 n - A131090 n

end

end A135259.P7794188296049098044

namespace A135259

/-- `2*A131666(n)-A131090(n)` -/
def P7794188296049098044.Spec : Prop :=
  ∀ n, P7794188296049098044.a n = A135259 n

end A135259

/-! ## A135259.P5442702428964166695

`Δ[A113405(n)-A131531(n+1)]`
-/

namespace A135259.P5442702428964166695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 n - A131531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135259.P5442702428964166695

namespace A135259

/-- `Δ[A113405(n)-A131531(n+1)]` -/
def P5442702428964166695.Spec : Prop :=
  ∀ n, P5442702428964166695.a n = A135259 n

end A135259

/-! ## A135259.P13685717026551989242

`A242563(n)-A328881(n+1)`
-/

namespace A135259.P13685717026551989242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242563 n - A328881 (n + 1)

end

end A135259.P13685717026551989242

namespace A135259

/-- `A242563(n)-A328881(n+1)` -/
def P13685717026551989242.Spec : Prop :=
  ∀ n, P13685717026551989242.a n = A135259 n

end A135259

/-!
# A135260: Fibonacci Connell sequence: 1 odd, 1 even, 2 odd, 3 even, 5 odd, 8 even, ....

The programs for A135260, there is no canonical definition to state claims against.
-/

/-! ## A135260.P9152906553992394209

`Δ[n²]-floor(log((n+1)²))`
-/

namespace A135260.P9152906553992394209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ⌊Real.log ((n + 1) ^ 2 : ℝ)⌋

end

end A135260.P9152906553992394209

/-! ## A135260.P2219686990416974647

`ceil(Δ[n²]-log((atan(ϕ)+n)²))`
-/

namespace A135260.P2219686990416974647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ) - Real.log ((Real.arctan Real.goldenRatio + (n : ℝ)) ^ 2)⌉

end

end A135260.P2219686990416974647

/-! ## A135260.P15543572915955344215

`floor(2*(n+1)-log((atan(ϕ)+n)²))`
-/

namespace A135260.P15543572915955344215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * (n + 1) : ℝ) - Real.log ((Real.arctan Real.goldenRatio + (n : ℝ)) ^ 2)⌋

end

end A135260.P15543572915955344215

/-! ## A135260.P4232591274148929154

`∑[A095792(n)+1]`
-/

namespace A135260.P4232591274148929154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095792 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135260.P4232591274148929154

/-! ## A135260.P11274182734001410667

`∑[2-A192687(n)]`
-/

namespace A135260.P11274182734001410667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A192687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135260.P11274182734001410667

/-! ## A135260.P4118726156201983951

`∑[gcd(2, A334627(n))]`
-/

namespace A135260.P4118726156201983951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A334627 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135260.P4118726156201983951

/-! ## A135260.P16186461359542982992

`floor(log2(A156043(n+2)))`
-/

namespace A135260.P16186461359542982992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A156043 (n + 2)).toNat

end

end A135260.P16186461359542982992

/-! ## A135260.P11376393512356016573

`∑[2-char[A005182(n)]]`
-/

namespace A135260.P11376393512356016573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005182 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135260.P11376393512356016573

/-! ## A135260.P10294925189028992197

`∑[2-char[A115346(n)]]`
-/

namespace A135260.P10294925189028992197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115346 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135260.P10294925189028992197

/-! ## A135260.P13812740540108810610

`∑[2-A010056(n+1)]`
-/

namespace A135260.P13812740540108810610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135260.P13812740540108810610

/-!
# A135261: a(n) = 3*A131090(n) - A131090(n+1).

The programs for A135261, the canonical program `A135261.P1033303913802881261` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135261 has offset 0).

The definition of A135261 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135261.P15958863015568724912

`2*a(n-1)-a(n-3)+2*a(n-4)` with `a(0)=-1, a(1)=3, a(2)=-1, a(3)=2`
-/

namespace A135261.P15958863015568724912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 3, -1, 2] fun n a =>
  2 * a (n - 1) - a (n - 3) + 2 * a (n - 4)

end

end A135261.P15958863015568724912

namespace A135261

/-- `2*a(n-1)-a(n-3)+2*a(n-4)` -/
def P15958863015568724912.Spec : Prop :=
  ∀ n, P15958863015568724912.a n = A135261 n

end A135261

/-! ## A135261.P12123007204385096617

`A131090(n)-A131556(n)`
-/

namespace A135261.P12123007204385096617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131090 n - A131556 n

end

end A135261.P12123007204385096617

namespace A135261

/-- `A131090(n)-A131556(n)` -/
def P12123007204385096617.Spec : Prop :=
  ∀ n, P12123007204385096617.a n = A135261 n

end A135261

/-! ## A135261.P1033303913802881261

`3*A131090(n)-A131090(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A135261

/-- `3*A131090(n)-A131090(n+1)` -/
def P1033303913802881261.Spec : Prop :=
  ∀ n, P1033303913802881261.a n = A135261 n

theorem P1033303913802881261.correct : P1033303913802881261.Spec := by
  intro n
  simp only [A135261]

end A135261

/-! ## A135261.P16312398646751944477

`2^(n-3)-a(n-3)` with `a(0)=-1, a(1)=3, a(2)=-1`
-/

namespace A135261.P16312398646751944477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [-1, 3, -1] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) - a (n - 3)

end

end A135261.P16312398646751944477

namespace A135261

/-- `2^(n-3)-a(n-3)` -/
def P16312398646751944477.Spec : Prop :=
  ∀ n, P16312398646751944477.a n = (A135261 n : ℚ)

end A135261

/-! ## A135261.P2389634899472666911

`A133511(n)-A133513(n+1)`
-/

namespace A135261.P2389634899472666911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133511 n - A133513 (n + 1)

end

end A135261.P2389634899472666911

namespace A135261

/-- `A133511(n)-A133513(n+1)` -/
def P2389634899472666911.Spec : Prop :=
  ∀ n, P2389634899472666911.a n = A135261 n

end A135261

/-! ## A135261.P16082561094633319997

`A131556(n+3)+A131090(n)`
-/

namespace A135261.P16082561094633319997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131556 (n + 3) + A131090 n

end

end A135261.P16082561094633319997

namespace A135261

/-- `A131556(n+3)+A131090(n)` -/
def P16082561094633319997.Spec : Prop :=
  ∀ n, P16082561094633319997.a n = A135261 n

end A135261

/-! ## A135261.P3570988512009543875

`A133511(n)-(A117373(n)-A133513(n))`
-/

namespace A135261.P3570988512009543875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133511 n - (A117373 n - A133513 n)

end

end A135261.P3570988512009543875

namespace A135261

/-- `A133511(n)-(A117373(n)-A133513(n))` -/
def P3570988512009543875.Spec : Prop :=
  ∀ n, P3570988512009543875.a n = A135261 n

end A135261

/-! ## A135261.P13194157956456870229

`A131090(n)-A131714(n)/A177702(n)`
-/

namespace A135261.P13194157956456870229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131090 n : ℚ) - (A131714 n : ℚ) / (A177702 n : ℚ)

end

end A135261.P13194157956456870229

namespace A135261

/-- `A131090(n)-A131714(n)/A177702(n)` -/
def P13194157956456870229.Spec : Prop :=
  ∀ n, P13194157956456870229.a n = (A135261 n : ℚ)

end A135261

/-! ## A135261.P13682817913660179854

`A131714(n+1)+A328881(n)+A092220(n)`
-/

namespace A135261.P13682817913660179854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131714 (n + 1) + (A328881 n + A092220 n)

end

end A135261.P13682817913660179854

namespace A135261

/-- `A131714(n+1)+A328881(n)+A092220(n)` -/
def P13682817913660179854.Spec : Prop :=
  ∀ n, P13682817913660179854.a n = A135261 n

end A135261

/-! ## A135261.P425538008426478001

`A131531(n+1)+A131090(n)-A131714(n)`
-/

namespace A135261.P425538008426478001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (n + 1) + (A131090 n - A131714 n)

end

end A135261.P425538008426478001

namespace A135261

/-- `A131531(n+1)+A131090(n)-A131714(n)` -/
def P425538008426478001.Spec : Prop :=
  ∀ n, P425538008426478001.a n = A135261 n

end A135261

/-! ## A135261.P7877851184733522080

`A113405(n)-(A133513(n+1)+A131531(n+1))`
-/

namespace A135261.P7877851184733522080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 n - (A133513 (n + 1) + A131531 (n + 1))

end

end A135261.P7877851184733522080

namespace A135261

/-- `A113405(n)-(A133513(n+1)+A131531(n+1))` -/
def P7877851184733522080.Spec : Prop :=
  ∀ n, P7877851184733522080.a n = A135261 n

end A135261

/-! ## A135261.P10194265205533642476

`Δ[A135259(n)]`
-/

namespace A135261.P10194265205533642476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135261.P10194265205533642476

namespace A135261

/-- `Δ[A135259(n)]` -/
def P10194265205533642476.Spec : Prop :=
  ∀ n, P10194265205533642476.a n = A135261 n

end A135261

/-! ## A135261.P8214884111254795607

`Δ[A131666(n)-A092220(n)]`
-/

namespace A135261.P8214884111254795607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 n - A092220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135261.P8214884111254795607

namespace A135261

/-- `Δ[A131666(n)-A092220(n)]` -/
def P8214884111254795607.Spec : Prop :=
  ∀ n, P8214884111254795607.a n = A135261 n

end A135261

/-! ## A135261.P1567880041507900288

`A135259(n+1)-A135259(n)`
-/

namespace A135261.P1567880041507900288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135259 (n + 1) - A135259 n

end

end A135261.P1567880041507900288

namespace A135261

/-- `A135259(n+1)-A135259(n)` -/
def P1567880041507900288.Spec : Prop :=
  ∀ n, P1567880041507900288.a n = A135261 n

end A135261

/-! ## A135261.P9193319395792488169

`A131666(n+1)-(A131666(n)+A131556(n))`
-/

namespace A135261.P9193319395792488169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 (n + 1) - (A131666 n + A131556 n)

end

end A135261.P9193319395792488169

namespace A135261

/-- `A131666(n+1)-(A131666(n)+A131556(n))` -/
def P9193319395792488169.Spec : Prop :=
  ∀ n, P9193319395792488169.a n = A135261 n

end A135261

/-! ## A135261.P11669169970282917539

`Δ[Δ[A133511(n)]]`
-/

namespace A135261.P11669169970282917539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133511 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135261.P11669169970282917539

namespace A135261

/-- `Δ[Δ[A133511(n)]]` -/
def P11669169970282917539.Spec : Prop :=
  ∀ n, P11669169970282917539.a n = A135261 n

end A135261

/-! ## A135261.P3123069855055317724

`A010892(n)+Δ[Δ[A131090(n)]]`
-/

namespace A135261.P3123069855055317724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131090 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n + (f1 (n + 1) - f1 n)

end

end A135261.P3123069855055317724

namespace A135261

/-- `A010892(n)+Δ[Δ[A131090(n)]]` -/
def P3123069855055317724.Spec : Prop :=
  ∀ n, P3123069855055317724.a n = A135261 n

end A135261

/-! ## A135261.P2395814694890858663

`Δ[Δ[A113405(n)-A131531(n+1)]]`
-/

namespace A135261.P2395814694890858663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 n - A131531 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135261.P2395814694890858663

namespace A135261

/-- `Δ[Δ[A113405(n)-A131531(n+1)]]` -/
def P2395814694890858663.Spec : Prop :=
  ∀ n, P2395814694890858663.a n = A135261 n

end A135261

/-! ## A135261.P2150192473347140574

`A135440(n)-A135350(n)`
-/

namespace A135261.P2150192473347140574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135440 n - A135350 n

end

end A135261.P2150192473347140574

namespace A135261

/-- `A135440(n)-A135350(n)` -/
def P2150192473347140574.Spec : Prop :=
  ∀ n, P2150192473347140574.a n = A135261 n

end A135261

/-! ## A135261.P4833839070517195474

`Δ[A328881(n+2)-A166249(n)]`
-/

namespace A135261.P4833839070517195474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328881 (n + 2) - A166249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135261.P4833839070517195474

namespace A135261

/-- `Δ[A328881(n+2)-A166249(n)]` -/
def P4833839070517195474.Spec : Prop :=
  ∀ n, P4833839070517195474.a n = A135261 n

end A135261

/-!
# A135262: a(3n)=10^n. a(3n+1)=4*10^n. a(3n+2)=7*10^n.

The programs for A135262, the canonical program `A135262.P17718768908745786476` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135262 has offset 0).

The definition of A135262 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135262.P17718768908745786476

`10*a(n-3)` with `a(0)=1, a(1)=4, a(2)=7`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A135262

/-- `10*a(n-3)` -/
def P17718768908745786476.Spec : Prop :=
  ∀ n, (P17718768908745786476.a n : ℤ) = A135262 n

theorem P17718768908745786476.correct : P17718768908745786476.Spec := by
  intro n
  simp only [A135262]

end A135262

/-! ## A135262.P10561755799285703415

`A133195(n)+1`
-/

namespace A135262.P10561755799285703415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133195 n + 1

end

end A135262.P10561755799285703415

namespace A135262

/-- `A133195(n)+1` -/
def P10561755799285703415.Spec : Prop :=
  ∀ n, P10561755799285703415.a n = A135262 n

end A135262

/-! ## A135262.P3745009309398591725

`A037124(3*n+1)`
-/

namespace A135262.P3745009309398591725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (3 * n + 1)

end

end A135262.P3745009309398591725

namespace A135262

/-- `A037124(3*n+1)` -/
def P3745009309398591725.Spec : Prop :=
  ∀ n, P3745009309398591725.a n = A135262 n

end A135262

/-! ## A135262.P2149536640845448747

`A051885(3*n)+1`
-/

namespace A135262.P2149536640845448747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (3 * n) + 1

end

end A135262.P2149536640845448747

namespace A135262

/-- `A051885(3*n)+1` -/
def P2149536640845448747.Spec : Prop :=
  ∀ n, P2149536640845448747.a n = A135262 n

end A135262

/-! ## A135262.P1304833408507498598

`3*A133201(n)+1`
-/

namespace A135262.P1304833408507498598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A133201 n + 1

end

end A135262.P1304833408507498598

namespace A135262

/-- `3*A133201(n)+1` -/
def P1304833408507498598.Spec : Prop :=
  ∀ n, P1304833408507498598.a n = A135262 n

end A135262

/-! ## A135262.P14078340823397916774

`record[A037124(A007953(n+n)+n+1)]`
-/

namespace A135262.P14078340823397916774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (A007953 (n + n) + (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135262.P14078340823397916774

namespace A135262

/-- `record[A037124(A007953(n+n)+n+1)]` -/
def P14078340823397916774.Spec : Prop :=
  ∀ n, P14078340823397916774.a n = A135262 n

end A135262

/-! ## A135262.P13447523344641390809

`A331786(3*n+1)/2+1`
-/

namespace A135262.P13447523344641390809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331786 (3 * n + 1) : ℚ) / 2 + 1

end

end A135262.P13447523344641390809

namespace A135262

/-- `A331786(3*n+1)/2+1` -/
def P13447523344641390809.Spec : Prop :=
  ∀ n, P13447523344641390809.a n = (A135262 n : ℚ)

end A135262

/-! ## A135262.P9495453857101625389

`(A331788(3*n+1)+1)/2`
-/

namespace A135262.P9495453857101625389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331788 (3 * n + 1) + 1 : ℚ) / 2

end

end A135262.P9495453857101625389

namespace A135262

/-- `(A331788(3*n+1)+1)/2` -/
def P9495453857101625389.Spec : Prop :=
  ∀ n, P9495453857101625389.a n = (A135262 n : ℚ)

end A135262

/-! ## A135262.P1218477968873522734

`∩[A088405(n+1), A383592(n+1)]`
-/

namespace A135262.P1218477968873522734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135262.P1218477968873522734

namespace A135262

/-- `∩[A088405(n+1), A383592(n+1)]` -/
def P1218477968873522734.Spec : Prop :=
  ∀ n, (P1218477968873522734.a n : ℤ) = A135262 n

end A135262

/-! ## A135262.P4454814141933082432

`A325112(A163979(n))`
-/

namespace A135262.P4454814141933082432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325112 (A163979 n).toNat

end

end A135262.P4454814141933082432

namespace A135262

/-- `A325112(A163979(n))` -/
def P4454814141933082432.Spec : Prop :=
  ∀ n, P4454814141933082432.a n = A135262 n

end A135262

/-! ## A135262.P7330582357647079598

`∩[A088405(n+1), A325112(n+1)]`
-/

namespace A135262.P7330582357647079598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135262.P7330582357647079598

namespace A135262

/-- `∩[A088405(n+1), A325112(n+1)]` -/
def P7330582357647079598.Spec : Prop :=
  ∀ n, (P7330582357647079598.a n : ℤ) = A135262 n

end A135262

/-! ## A135262.P11846582504026722906

`∩[A325112(2*n+1), A325112(2*(n+1))-1]`
-/

namespace A135262.P11846582504026722906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325112 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325112 (2 * (n + 1)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135262.P11846582504026722906

namespace A135262

/-- `∩[A325112(2*n+1), A325112(2*(n+1))-1]` -/
def P11846582504026722906.Spec : Prop :=
  ∀ n, (P11846582504026722906.a n : ℤ) = A135262 n

end A135262

/-! ## A135262.P16127928092917585617

`∩[A051885(A008585(n)), A051885(n)]+1`
-/

namespace A135262.P16127928092917585617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A008585 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A135262.P16127928092917585617

namespace A135262

/-- `∩[A051885(A008585(n)), A051885(n)]+1` -/
def P16127928092917585617.Spec : Prop :=
  ∀ n, (P16127928092917585617.a n : ℤ) = A135262 n

end A135262

/-!
# A135263: a(n) = 2*A132357(n).

The programs for A135263, the canonical program `A135263.P12713593680314051727` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135263 has offset 0).

The definition of A135263 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A132357(n)` (program `A135263.P12713593680314051727`, by `A135263.P12713593680314051727.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135263.P2638590867931181965

`3*a(n-1)-a(n-3)+3*a(n-4)` with `a(0)=2, a(1)=8, a(2)=28, a(3)=82`
-/

namespace A135263.P2638590867931181965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8, 28, 82] fun n a =>
  3 * a (n - 1) - a (n - 3) + 3 * a (n - 4)

end

end A135263.P2638590867931181965

namespace A135263

/-- `3*a(n-1)-a(n-3)+3*a(n-4)` -/
def P2638590867931181965.Spec : Prop :=
  ∀ n, P2638590867931181965.a n = A135263 n

end A135263

/-! ## A135263.P12713593680314051727

`2*A132357(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A135263

/-- `2*A132357(n)` -/
def P12713593680314051727.Spec : Prop :=
  ∀ n, P12713593680314051727.a n = A135263 n

theorem P12713593680314051727.correct : P12713593680314051727.Spec := by
  intro n
  simp only [A135263]

end A135263

/-! ## A135263.P10682130736921464976

`3^(n+1)-(-1)^floor((n+1)/3)`
-/

namespace A135263.P10682130736921464976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℚ) - (-1 : ℚ) ^ (⌊(n + 1 : ℚ) / 3⌋ : ℤ)

end

end A135263.P10682130736921464976

namespace A135263

/-- `3^(n+1)-(-1)^floor((n+1)/3)` -/
def P10682130736921464976.Spec : Prop :=
  ∀ n, P10682130736921464976.a n = (A135263 n : ℚ)

end A135263

/-! ## A135263.P6188512631114267649

`Δ[2*A132353(n)]`
-/

namespace A135263.P6188512631114267649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135263.P6188512631114267649

namespace A135263

/-- `Δ[2*A132353(n)]` -/
def P6188512631114267649.Spec : Prop :=
  ∀ n, P6188512631114267649.a n = A135263 n

end A135263

/-! ## A135263.P16931737218894156581

`Δ[2*A135266(n)]`
-/

namespace A135263.P16931737218894156581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135263.P16931737218894156581

namespace A135263

/-- `Δ[2*A135266(n)]` -/
def P16931737218894156581.Spec : Prop :=
  ∀ n, P16931737218894156581.a n = A135263 n

end A135263

/-! ## A135263.P9356907232374789640

`2/3*A135264(n)`
-/

namespace A135263.P9356907232374789640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A135264 n : ℚ)

end

end A135263.P9356907232374789640

namespace A135263

/-- `2/3*A135264(n)` -/
def P9356907232374789640.Spec : Prop :=
  ∀ n, P9356907232374789640.a n = (A135263 n : ℚ)

end A135263

/-! ## A135263.P8872023238460138704

`2*(A131714(n)+A120471(n))`
-/

namespace A135263.P8872023238460138704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A131714 n + A120471 n)

end

end A135263.P8872023238460138704

namespace A135263

/-- `2*(A131714(n)+A120471(n))` -/
def P8872023238460138704.Spec : Prop :=
  ∀ n, P8872023238460138704.a n = A135263 n

end A135263

/-! ## A135263.P382251824251885004

`2*(A164907(n)-A092220(n))`
-/

namespace A135263.P382251824251885004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A164907 n - A092220 n)

end

end A135263.P382251824251885004

namespace A135263

/-- `2*(A164907(n)-A092220(n))` -/
def P382251824251885004.Spec : Prop :=
  ∀ n, P382251824251885004.a n = A135263 n

end A135263

/-! ## A135263.P17038328330137631955

`2*xor(A133448(n), A176040(n))`
-/

namespace A135263.P17038328330137631955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.xor (A133448 n) (A176040 n)

end

end A135263.P17038328330137631955

namespace A135263

/-- `2*xor(A133448(n), A176040(n))` -/
def P17038328330137631955.Spec : Prop :=
  ∀ n, P17038328330137631955.a n = A135263 n

end A135263

/-! ## A135263.P2147771312356856268

`2*(A135266(n+1)-A135266(n))`
-/

namespace A135263.P2147771312356856268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A135266 (n + 1) - A135266 n)

end

end A135263.P2147771312356856268

namespace A135263

/-- `2*(A135266(n+1)-A135266(n))` -/
def P2147771312356856268.Spec : Prop :=
  ∀ n, P2147771312356856268.a n = A135263 n

end A135263

/-!
# A135264: a(n) = 3*A132357(n).

The programs for A135264, the canonical program `A135264.P2171394345503189444` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135264 has offset 0).

The definition of A135264 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*A132357(n)` (program `A135264.P2171394345503189444`, by `A135264.P2171394345503189444.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135264.P1763234528893147215

`3*a(n-1)-a(n-3)+3*a(n-4)` with `a(0)=3, a(1)=12, a(2)=42, a(3)=123`
-/

namespace A135264.P1763234528893147215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 12, 42, 123] fun n a =>
  3 * a (n - 1) - a (n - 3) + 3 * a (n - 4)

end

end A135264.P1763234528893147215

namespace A135264

/-- `3*a(n-1)-a(n-3)+3*a(n-4)` -/
def P1763234528893147215.Spec : Prop :=
  ∀ n, P1763234528893147215.a n = A135264 n

end A135264

/-! ## A135264.P2171394345503189444

`3*A132357(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A135264

/-- `3*A132357(n)` -/
def P2171394345503189444.Spec : Prop :=
  ∀ n, P2171394345503189444.a n = A135264 n

theorem P2171394345503189444.correct : P2171394345503189444.Spec := by
  intro n
  simp only [A135264]

end A135264

/-! ## A135264.P12040902385995502355

`3*(1/2*3^(n+1)+1/6*(-1)^n-2/3*cos(π*n/3))`
-/

namespace A135264.P12040902385995502355
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * (((1 : ℚ) / 2 * (3 ^ (n + 1) : ℚ) + (1 : ℚ) / 6 * ((-1) ^ n : ℚ) : ℝ) - ((2 : ℚ) / 3 : ℝ) * Real.cos (Real.pi * ((n : ℚ) / 3 : ℝ)))

end

end A135264.P12040902385995502355

namespace A135264

/-- `3*(1/2*3^(n+1)+1/6*(-1)^n-2/3*cos(π*n/3))` -/
def P12040902385995502355.Spec : Prop :=
  ∀ n, P12040902385995502355.a n = (A135264 n : ℝ)

end A135264

/-! ## A135264.P14836913911934479569

`3*Δ[A132353(n)]`
-/

namespace A135264.P14836913911934479569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n)

end

end A135264.P14836913911934479569

namespace A135264

/-- `3*Δ[A132353(n)]` -/
def P14836913911934479569.Spec : Prop :=
  ∀ n, P14836913911934479569.a n = A135264 n

end A135264

/-! ## A135264.P14239583527079834112

`3*Δ[A135266(n)]`
-/

namespace A135264.P14239583527079834112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n)

end

end A135264.P14239583527079834112

namespace A135264

/-- `3*Δ[A135266(n)]` -/
def P14239583527079834112.Spec : Prop :=
  ∀ n, P14239583527079834112.a n = A135264 n

end A135264

/-! ## A135264.P17373296756047821795

`3/2*A135263(n)`
-/

namespace A135264.P17373296756047821795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A135263 n : ℚ)

end

end A135264.P17373296756047821795

namespace A135264

/-- `3/2*A135263(n)` -/
def P17373296756047821795.Spec : Prop :=
  ∀ n, P17373296756047821795.a n = (A135264 n : ℚ)

end A135264

/-! ## A135264.P6393994542851879957

`A135263(n)+A132357(n)`
-/

namespace A135264.P6393994542851879957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135263 n + A132357 n

end

end A135264.P6393994542851879957

namespace A135264

/-- `A135263(n)+A132357(n)` -/
def P6393994542851879957.Spec : Prop :=
  ∀ n, P6393994542851879957.a n = A135264 n

end A135264

/-! ## A135264.P1582465264663515340

`lcm(A132357(n), A174971(n))`
-/

namespace A135264.P1582465264663515340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A132357 n) (A174971 n)

end

end A135264.P1582465264663515340

namespace A135264

/-- `lcm(A132357(n), A174971(n))` -/
def P1582465264663515340.Spec : Prop :=
  ∀ n, (P1582465264663515340.a n : ℤ) = A135264 n

end A135264

/-! ## A135264.P15814851245198121991

`A135263(n)+Δ[A135266(n)]`
-/

namespace A135264.P15814851245198121991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135263 n + (f1 (n + 1) - f1 n)

end

end A135264.P15814851245198121991

namespace A135264

/-- `A135263(n)+Δ[A135266(n)]` -/
def P15814851245198121991.Spec : Prop :=
  ∀ n, P15814851245198121991.a n = A135264 n

end A135264

/-! ## A135264.P12863622574275162735

`A132357(n+1)-A132367(n+1)`
-/

namespace A135264.P12863622574275162735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132357 (n + 1) - A132367 (n + 1)

end

end A135264.P12863622574275162735

namespace A135264

/-- `A132357(n+1)-A132367(n+1)` -/
def P12863622574275162735.Spec : Prop :=
  ∀ n, P12863622574275162735.a n = A135264 n

end A135264

/-! ## A135264.P781387533031692051

`3*(A132353(n+1)-A132353(n))`
-/

namespace A135264.P781387533031692051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A132353 (n + 1) - A132353 n)

end

end A135264.P781387533031692051

namespace A135264

/-- `3*(A132353(n+1)-A132353(n))` -/
def P781387533031692051.Spec : Prop :=
  ∀ n, P781387533031692051.a n = A135264 n

end A135264

/-! ## A135264.P14593534329799442749

`3*(A135266(n+1)-A135266(n))`
-/

namespace A135264.P14593534329799442749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A135266 (n + 1) - A135266 n)

end

end A135264.P14593534329799442749

namespace A135264

/-- `3*(A135266(n+1)-A135266(n))` -/
def P14593534329799442749.Spec : Prop :=
  ∀ n, P14593534329799442749.a n = A135264 n

end A135264

/-! ## A135264.P10814252986371462320

`A132353(n+1)+A135263(n)-A132353(n)`
-/

namespace A135264.P10814252986371462320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132353 (n + 1) + (A135263 n - A132353 n)

end

end A135264.P10814252986371462320

namespace A135264

/-- `A132353(n+1)+A135263(n)-A132353(n)` -/
def P10814252986371462320.Spec : Prop :=
  ∀ n, P10814252986371462320.a n = A135264 n

end A135264

/-! ## A135264.P8752997324844953343

`A135266(n+1)+A135263(n)-A135266(n)`
-/

namespace A135264.P8752997324844953343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135266 (n + 1) + (A135263 n - A135266 n)

end

end A135264.P8752997324844953343

namespace A135264

/-- `A135266(n+1)+A135263(n)-A135266(n)` -/
def P8752997324844953343.Spec : Prop :=
  ∀ n, P8752997324844953343.a n = A135264 n

end A135264

/-! ## A135264.P7958446176104040846

`A131531(n+1)+A133448(n+1)-A057079(n+1)`
-/

namespace A135264.P7958446176104040846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (n + 1) + (A133448 (n + 1) - A057079 (n + 1))

end

end A135264.P7958446176104040846

namespace A135264

/-- `A131531(n+1)+A133448(n+1)-A057079(n+1)` -/
def P7958446176104040846.Spec : Prop :=
  ∀ n, P7958446176104040846.a n = A135264 n

end A135264

/-! ## A135264.P13803986419244694293

`A135263(n)+A135263(n)/A000005(A082885(n+1))`
-/

namespace A135264.P13803986419244694293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135263 n : ℚ) + (A135263 n : ℚ) / (A000005 (A082885 (n + 1)).toNat : ℚ)

end

end A135264.P13803986419244694293

namespace A135264

/-- `A135263(n)+A135263(n)/A000005(A082885(n+1))` -/
def P13803986419244694293.Spec : Prop :=
  ∀ n, P13803986419244694293.a n = (A135264 n : ℚ)

end A135264

/-!
# A135265: Period 6: repeat [1, 1, 1, 2, 2, 2].

The programs for A135265, the canonical program `A135265.P2246734536222582177` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135265 has offset 0).

The definition of A135265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135265.P2246734536222582177

`1+(1-(-1)^floor(n/3))/2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A135265

/-- `1+(1-(-1)^floor(n/3))/2` -/
def P2246734536222582177.Spec : Prop :=
  ∀ n, P2246734536222582177.a n = (A135265 n : ℚ)

end A135265

/-!
# A135266: Partial sums of A132357.

The programs for A135266, the canonical program `A135266.P14515893951908388375` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135266 has offset 0).

The definition of A135266 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135266.P14515893951908388375

`A132353(n)-1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A135266

/-- `A132353(n)-1` -/
def P14515893951908388375.Spec : Prop :=
  ∀ n, P14515893951908388375.a n = A135266 n

theorem P14515893951908388375.correct : P14515893951908388375.Spec := by
  intro n
  simp only [A135266]

end A135266

/-! ## A135266.P5970860386134046197

`A132868(n)-A164965(n)`
-/

namespace A135266.P5970860386134046197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132868 n - A164965 n

end

end A135266.P5970860386134046197

namespace A135266

/-- `A132868(n)-A164965(n)` -/
def P5970860386134046197.Spec : Prop :=
  ∀ n, P5970860386134046197.a n = A135266 n

end A135266

/-! ## A135266.P6274085103807737305

`A132868(n)-∑[A010892(n)]`
-/

namespace A135266.P6274085103807737305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132868 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135266.P6274085103807737305

namespace A135266

/-- `A132868(n)-∑[A010892(n)]` -/
def P6274085103807737305.Spec : Prop :=
  ∀ n, P6274085103807737305.a n = A135266 n

end A135266

/-! ## A135266.P4160366516985480010

`A080926(n)-A131531(n+1)`
-/

namespace A135266.P4160366516985480010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080926 n - A131531 (n + 1)

end

end A135266.P4160366516985480010

namespace A135266

/-- `A080926(n)-A131531(n+1)` -/
def P4160366516985480010.Spec : Prop :=
  ∀ n, P4160366516985480010.a n = A135266 n

end A135266

/-! ## A135266.P9591257352194739720

`A094705(n)+A130781(n)-1`
-/

namespace A135266.P9591257352194739720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094705 n + (A130781 n - 1)

end

end A135266.P9591257352194739720

namespace A135266

/-- `A094705(n)+A130781(n)-1` -/
def P9591257352194739720.Spec : Prop :=
  ∀ n, P9591257352194739720.a n = A135266 n

end A135266

/-! ## A135266.P13131529134589095919

`A047926(n)-A194272(n+1)`
-/

namespace A135266.P13131529134589095919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047926 n - A194272 (n + 1)

end

end A135266.P13131529134589095919

namespace A135266

/-- `A047926(n)-A194272(n+1)` -/
def P13131529134589095919.Spec : Prop :=
  ∀ n, P13131529134589095919.a n = A135266 n

end A135266

/-! ## A135266.P9229669108520503534

`A132868(n)-(A128834(n)+1)`
-/

namespace A135266.P9229669108520503534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132868 n - (A128834 n + 1)

end

end A135266.P9229669108520503534

namespace A135266

/-- `A132868(n)-(A128834(n)+1)` -/
def P9229669108520503534.Spec : Prop :=
  ∀ n, P9229669108520503534.a n = A135266 n

end A135266

/-! ## A135266.P8993855463558812003

`A133448(n)-(A132868(n)+1)`
-/

namespace A135266.P8993855463558812003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133448 n - (A132868 n + 1)

end

end A135266.P8993855463558812003

namespace A135266

/-- `A133448(n)-(A132868(n)+1)` -/
def P8993855463558812003.Spec : Prop :=
  ∀ n, P8993855463558812003.a n = A135266 n

end A135266

/-! ## A135266.P2671579369679621676

`xor(A011655(n), A132868(n))-1`
-/

namespace A135266.P2671579369679621676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011655 n) (A132868 n) - 1

end

end A135266.P2671579369679621676

namespace A135266

/-- `xor(A011655(n), A132868(n))-1` -/
def P2671579369679621676.Spec : Prop :=
  ∀ n, P2671579369679621676.a n = A135266 n

end A135266

/-! ## A135266.P14625780687559306557

`∑[A007051(n)]-A194272(n+1)`
-/

namespace A135266.P14625780687559306557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A194272 (n + 1)

end

end A135266.P14625780687559306557

namespace A135266

/-- `∑[A007051(n)]-A194272(n+1)` -/
def P14625780687559306557.Spec : Prop :=
  ∀ n, P14625780687559306557.a n = A135266 n

end A135266

/-! ## A135266.P17962186562418061446

`∑[A115098(n)-A135265(n+3)]`
-/

namespace A135266.P17962186562418061446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 n - A135265 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135266.P17962186562418061446

namespace A135266

/-- `∑[A115098(n)-A135265(n+3)]` -/
def P17962186562418061446.Spec : Prop :=
  ∀ n, P17962186562418061446.a n = A135266 n

end A135266

/-! ## A135266.P11940465696287706260

`∑[A115098(n)-2/A135265(n)]`
-/

namespace A135266.P11940465696287706260
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115098 n : ℚ) - 2 / (A135265 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135266.P11940465696287706260

namespace A135266

/-- `∑[A115098(n)-2/A135265(n)]` -/
def P11940465696287706260.Spec : Prop :=
  ∀ n, P11940465696287706260.a n = (A135266 n : ℚ)

end A135266

/-! ## A135266.P8404048117835227062

`∑[A003462(n)+and(1, A002264(n))]`
-/

namespace A135266.P8404048117835227062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n + Int.land 1 (A002264 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135266.P8404048117835227062

namespace A135266

/-- `∑[A003462(n)+and(1, A002264(n))]` -/
def P8404048117835227062.Spec : Prop :=
  ∀ n, P8404048117835227062.a n = A135266 n

end A135266

/-! ## A135266.P5457830227415916954

`A047926(n)+A194273(n)-A194273(n+1)`
-/

namespace A135266.P5457830227415916954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047926 n + (A194273 n - A194273 (n + 1))

end

end A135266.P5457830227415916954

namespace A135266

/-- `A047926(n)+A194273(n)-A194273(n+1)` -/
def P5457830227415916954.Spec : Prop :=
  ∀ n, P5457830227415916954.a n = A135266 n

end A135266

/-! ## A135266.P17547151580225814184

`∑[A132357(n)]-A132357(n)`
-/

namespace A135266.P17547151580225814184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A132357 n

end

end A135266.P17547151580225814184

namespace A135266

/-- `∑[A132357(n)]-A132357(n)` -/
def P17547151580225814184.Spec : Prop :=
  ∀ n, P17547151580225814184.a n = A135266 n

end A135266

/-! ## A135266.P14452246609851098842

`(∑[A135263(n)]-A135263(n))/2`
-/

namespace A135266.P14452246609851098842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135263 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A135263 n : ℤ) : ℚ) / 2

end

end A135266.P14452246609851098842

namespace A135266

/-- `(∑[A135263(n)]-A135263(n))/2` -/
def P14452246609851098842.Spec : Prop :=
  ∀ n, P14452246609851098842.a n = (A135266 n : ℚ)

end A135266

/-! ## A135266.P2189279135219192682

`A135343(n)-(A099621(n)+1)`
-/

namespace A135266.P2189279135219192682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135343 n - (A099621 n + 1)

end

end A135266.P2189279135219192682

namespace A135266

/-- `A135343(n)-(A099621(n)+1)` -/
def P2189279135219192682.Spec : Prop :=
  ∀ n, P2189279135219192682.a n = A135266 n

end A135266

/-!
# A135267: Difference between partial sum of the first n primes and the first n even numbers greater than 0.

The programs for A135267, the canonical program `A135267.P10837298668863611185` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135267 has offset 1).

The definition of A135267 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A135267.P10837298668863611185

`A007504(n+1)-A002378(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A135267

/-- `A007504(n+1)-A002378(n+1)` -/
def P10837298668863611185.Spec : Prop :=
  ∀ n, P10837298668863611185.a n = A135267 (n + 1)

theorem P10837298668863611185.correct : P10837298668863611185.Spec := by
  intro n
  simp only [A135267, Nat.add_sub_cancel]

end A135267

/-! ## A135267.P13322534425495439531

`∑[A131733(n+1)-1]`
-/

namespace A135267.P13322534425495439531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131733 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135267.P13322534425495439531

namespace A135267

/-- `∑[A131733(n+1)-1]` -/
def P13322534425495439531.Spec : Prop :=
  ∀ n, P13322534425495439531.a n = A135267 (n + 1)

end A135267

/-! ## A135267.P10387847081143530998

`∑[A173072(n+1)-2]`
-/

namespace A135267.P10387847081143530998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173072 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135267.P10387847081143530998

namespace A135267

/-- `∑[A173072(n+1)-2]` -/
def P10387847081143530998.Spec : Prop :=
  ∀ n, P10387847081143530998.a n = A135267 (n + 1)

end A135267

/-! ## A135267.P1781572007214842408

`∑[A065890(n+1)-n]`
-/

namespace A135267.P1781572007214842408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135267.P1781572007214842408

namespace A135267

/-- `∑[A065890(n+1)-n]` -/
def P1781572007214842408.Spec : Prop :=
  ∀ n, P1781572007214842408.a n = A135267 (n + 1)

end A135267

/-! ## A135267.P4661845101446785496

`A108754(n+1)-(n+1)`
-/

namespace A135267.P4661845101446785496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108754 (n + 1) - (n + 1 : ℤ)

end

end A135267.P4661845101446785496

namespace A135267

/-- `A108754(n+1)-(n+1)` -/
def P4661845101446785496.Spec : Prop :=
  ∀ n, P4661845101446785496.a n = A135267 (n + 1)

end A135267

/-! ## A135267.P10167581871197997034

`∑[∑[A054541(n+1)-2]]`
-/

namespace A135267.P10167581871197997034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135267.P10167581871197997034

namespace A135267

/-- `∑[∑[A054541(n+1)-2]]` -/
def P10167581871197997034.Spec : Prop :=
  ∀ n, P10167581871197997034.a n = A135267 (n + 1)

end A135267

/-! ## A135267.P14270443315801032489

`A101301(n+1)-(n+1)²`
-/

namespace A135267.P14270443315801032489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101301 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A135267.P14270443315801032489

namespace A135267

/-- `A101301(n+1)-(n+1)²` -/
def P14270443315801032489.Spec : Prop :=
  ∀ n, P14270443315801032489.a n = A135267 (n + 1)

end A135267

/-! ## A135267.P2034150984448883302

`∑[A014689(n+1)-(n+1)]`
-/

namespace A135267.P2034150984448883302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135267.P2034150984448883302

namespace A135267

/-- `∑[A014689(n+1)-(n+1)]` -/
def P2034150984448883302.Spec : Prop :=
  ∀ n, P2034150984448883302.a n = A135267 (n + 1)

end A135267

/-! ## A135267.P9796239960819607201

`A112997(n+1)-∑[n+1]`
-/

namespace A135267.P9796239960819607201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112997 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A135267.P9796239960819607201

namespace A135267

/-- `A112997(n+1)-∑[n+1]` -/
def P9796239960819607201.Spec : Prop :=
  ∀ n, P9796239960819607201.a n = A135267 (n + 1)

end A135267

/-! ## A135267.P1679384625591435921

`A103976(n+1)-(n²+n)`
-/

namespace A135267.P1679384625591435921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103976 (n + 1) - (n ^ 2 + n : ℤ)

end

end A135267.P1679384625591435921

namespace A135267

/-- `A103976(n+1)-(n²+n)` -/
def P1679384625591435921.Spec : Prop :=
  ∀ n, P1679384625591435921.a n = A135267 (n + 1)

end A135267

/-! ## A135267.P12143258045770628064

`∑[A006093(n+1)]-(n+1)²`
-/

namespace A135267.P12143258045770628064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A135267.P12143258045770628064

namespace A135267

/-- `∑[A006093(n+1)]-(n+1)²` -/
def P12143258045770628064.Spec : Prop :=
  ∀ n, P12143258045770628064.a n = A135267 (n + 1)

end A135267

/-! ## A135267.P1274125596477932534

`∑[A000040(n+1)-2*(n+1)]`
-/

namespace A135267.P1274125596477932534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135267.P1274125596477932534

namespace A135267

/-- `∑[A000040(n+1)-2*(n+1)]` -/
def P1274125596477932534.Spec : Prop :=
  ∀ n, P1274125596477932534.a n = A135267 (n + 1)

end A135267

/-! ## A135267.P17240547266796894621

`∑[A000040(C(n+1, n))-(n+2)-n]`
-/

namespace A135267.P17240547266796894621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.choose (n + 1) n) - (n + 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135267.P17240547266796894621

namespace A135267

/-- `∑[A000040(C(n+1, n))-(n+2)-n]` -/
def P17240547266796894621.Spec : Prop :=
  ∀ n, P17240547266796894621.a n = A135267 (n + 1)

end A135267

/-! ## A135267.P14123394153797787836

`∑[A000040(2*n-(n-1))-2*n-2]`
-/

namespace A135267.P14123394153797787836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - (2 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135267.P14123394153797787836

namespace A135267

/-- `∑[A000040(2*n-(n-1))-2*n-2]` -/
def P14123394153797787836.Spec : Prop :=
  ∀ n, P14123394153797787836.a n = A135267 (n + 1)

end A135267

/-! ## A135267.P17261390174682890062

`A237589(n+1)-A028387(n)`
-/

namespace A135267.P17261390174682890062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 1) - A028387 n

end

end A135267.P17261390174682890062

namespace A135267

/-- `A237589(n+1)-A028387(n)` -/
def P17261390174682890062.Spec : Prop :=
  ∀ n, P17261390174682890062.a n = A135267 (n + 1)

end A135267

/-! ## A135267.P14520533073366313927

`∑[∑[A040976(n+1)]-A007504(n)]`
-/

namespace A135267.P14520533073366313927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135267.P14520533073366313927

namespace A135267

/-- `∑[∑[A040976(n+1)]-A007504(n)]` -/
def P14520533073366313927.Spec : Prop :=
  ∀ n, P14520533073366313927.a n = A135267 (n + 1)

end A135267

/-! ## A135267.P7859561597312389076

`A007504(n+1)-A000217(n+1)-A000217(n+1)`
-/

namespace A135267.P7859561597312389076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - A000217 (n + 1) - A000217 (n + 1)

end

end A135267.P7859561597312389076

namespace A135267

/-- `A007504(n+1)-A000217(n+1)-A000217(n+1)` -/
def P7859561597312389076.Spec : Prop :=
  ∀ n, P7859561597312389076.a n = A135267 (n + 1)

end A135267

/-! ## A135267.P14090963784529006069

`∑[A162177(n+2)-n]`
-/

namespace A135267.P14090963784529006069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162177 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135267.P14090963784529006069

namespace A135267

/-- `∑[A162177(n+2)-n]` -/
def P14090963784529006069.Spec : Prop :=
  ∀ n, P14090963784529006069.a n = A135267 (n + 1)

end A135267

/-! ## A135267.P13810841940221008689

`A110895(n+2)-(n+2)²`
-/

namespace A135267.P13810841940221008689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110895 (n + 2) - ((n + 2) ^ 2 : ℤ)

end

end A135267.P13810841940221008689

namespace A135267

/-- `A110895(n+2)-(n+2)²` -/
def P13810841940221008689.Spec : Prop :=
  ∀ n, P13810841940221008689.a n = A135267 (n + 1)

end A135267

/-! ## A135267.P8057999989980978253

`∑[record[A000010(n+1)]-Δ[n²]]`
-/

namespace A135267.P8057999989980978253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135267.P8057999989980978253

namespace A135267

/-- `∑[record[A000010(n+1)]-Δ[n²]]` -/
def P8057999989980978253.Spec : Prop :=
  ∀ n, P8057999989980978253.a n = A135267 (n + 1)

end A135267

/-!
# A135268: a(0) = 1; a(n) = a(n-1) + n - gcd(n,a(n-1)).

The programs for A135268, the canonical program `A135268.P17306361322931429557` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135268 has offset 0).

The definition of A135268 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+n-gcd(n, a(n-1))` (program `A135268.P17306361322931429557`, by `A135268.P17306361322931429557.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135268.P17306361322931429557

`a(n-1)+n-gcd(n, a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A135268

/-- `a(n-1)+n-gcd(n, a(n-1))` -/
def P17306361322931429557.Spec : Prop :=
  ∀ n, P17306361322931429557.a n = A135268 n

theorem P17306361322931429557.correct : P17306361322931429557.Spec := by
  intro n
  simp only [A135268]

end A135268

/-! ## A135268.P8009240451611708730

`n-(n/lcm(n, a(n-1))-1)*a(n-1)` with `a(0)=1`
-/

namespace A135268.P8009240451611708730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) - ((n : ℚ) / (Int.lcm (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) - 1) * a (n - 1)

end

end A135268.P8009240451611708730

namespace A135268

/-- `n-(n/lcm(n, a(n-1))-1)*a(n-1)` -/
def P8009240451611708730.Spec : Prop :=
  ∀ n, P8009240451611708730.a n = (A135268 n : ℚ)

end A135268

/-! ## A135268.P15069477351682374110

`a(n-1)-(gcd(-a(n-1), n%a(n-1))-n)` with `a(0)=1`
-/

namespace A135268.P15069477351682374110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ((Int.gcd (-a (n - 1)) (Int.tmod (n : ℤ) (a (n - 1))) : ℤ) - (n : ℤ))

end

end A135268.P15069477351682374110

namespace A135268

/-- `a(n-1)-(gcd(-a(n-1), n%a(n-1))-n)` -/
def P15069477351682374110.Spec : Prop :=
  ∀ n, P15069477351682374110.a n = A135268 n

end A135268

/-! ## A135268.P8293055689607409932

`a(n-1)-(gcd(a(n-1)-n, floor(a(n-1)))-n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A135268.P8293055689607409932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ((Int.gcd (a (n - 1) - (n : ℤ)) (a (n - 1)) : ℤ) - (n : ℤ))

end

end A135268.P8293055689607409932

namespace A135268

/-- `a(n-1)-(gcd(a(n-1)-n, floor(a(n-1)))-n)` -/
def P8293055689607409932.Spec : Prop :=
  ∀ n, P8293055689607409932.a n = A135268 n

end A135268

/-! ## A135268.P15424930235073861655

`a(n-1)-(gcd(n-a(n-1), ceil(a(n-1)))-n)` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A135268.P15424930235073861655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ((Int.gcd ((n : ℤ) - a (n - 1)) (a (n - 1)) : ℤ) - (n : ℤ))

end

end A135268.P15424930235073861655

namespace A135268

/-- `a(n-1)-(gcd(n-a(n-1), ceil(a(n-1)))-n)` -/
def P15424930235073861655.Spec : Prop :=
  ∀ n, P15424930235073861655.a n = A135268 n

end A135268

/-!
# A135274: a(n) = prime(2*n) - prime(2*n-1) + prime(2*n+1).

The programs for A135274, the canonical program `A135274.P1283932460652620545` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135274 has offset 1).

The definition of A135274 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181428, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A135274.P1283932460652620545

`A181428(2*n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A135274

/-- `A181428(2*n+1)` -/
def P1283932460652620545.Spec : Prop :=
  ∀ n, P1283932460652620545.a n = A135274 (n + 1)

theorem P1283932460652620545.correct : P1283932460652620545.Spec := by
  intro n
  simp only [A135274, Nat.add_sub_cancel]

end A135274

/-! ## A135274.P7679497788382057020

`A155067(n+1)+A031215(n+1)`
-/

namespace A135274.P7679497788382057020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155067 (n + 1) + A031215 (n + 1)

end

end A135274.P7679497788382057020

namespace A135274

/-- `A155067(n+1)+A031215(n+1)` -/
def P7679497788382057020.Spec : Prop :=
  ∀ n, P7679497788382057020.a n = A135274 (n + 1)

end A135274

/-! ## A135274.P15791088306428054156

`A092163(n+1)-A031368(n+1)`
-/

namespace A135274.P15791088306428054156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092163 (n + 1) - A031368 (n + 1)

end

end A135274.P15791088306428054156

namespace A135274

/-- `A092163(n+1)-A031368(n+1)` -/
def P15791088306428054156.Spec : Prop :=
  ∀ n, P15791088306428054156.a n = A135274 (n + 1)

end A135274

/-! ## A135274.P6319350864187781983

`A135275(n+1)+2*A155067(n+1)`
-/

namespace A135274.P6319350864187781983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135275 (n + 1) + 2 * A155067 (n + 1)

end

end A135274.P6319350864187781983

namespace A135274

/-- `A135275(n+1)+2*A155067(n+1)` -/
def P6319350864187781983.Spec : Prop :=
  ∀ n, P6319350864187781983.a n = A135274 (n + 1)

end A135274

/-! ## A135274.P3440448015936455226

`2*A031215(n+1)-A135275(n+1)`
-/

namespace A135274.P3440448015936455226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A031215 (n + 1) - A135275 (n + 1)

end

end A135274.P3440448015936455226

namespace A135274

/-- `2*A031215(n+1)-A135275(n+1)` -/
def P3440448015936455226.Spec : Prop :=
  ∀ n, P3440448015936455226.a n = A135274 (n + 1)

end A135274

/-! ## A135274.P10985628441408410612

`A135277(n+1)-2*A031368(n+1)`
-/

namespace A135274.P10985628441408410612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135277 (n + 1) - 2 * A031368 (n + 1)

end

end A135274.P10985628441408410612

namespace A135274

/-- `A135277(n+1)-2*A031368(n+1)` -/
def P10985628441408410612.Spec : Prop :=
  ∀ n, P10985628441408410612.a n = A135274 (n + 1)

end A135274

/-! ## A135274.P14165977843284326002

`2*A092163(n+1)-A135277(n+1)`
-/

namespace A135274.P14165977843284326002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092163 (n + 1) - A135277 (n + 1)

end

end A135274.P14165977843284326002

namespace A135274

/-- `2*A092163(n+1)-A135277(n+1)` -/
def P14165977843284326002.Spec : Prop :=
  ∀ n, P14165977843284326002.a n = A135274 (n + 1)

end A135274

/-! ## A135274.P4100763008796274320

`A031215(n+1)+A092163(n+1)-A100479(n+1)`
-/

namespace A135274.P4100763008796274320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) + (A092163 (n + 1) - A100479 (n + 1))

end

end A135274.P4100763008796274320

namespace A135274

/-- `A031215(n+1)+A092163(n+1)-A100479(n+1)` -/
def P4100763008796274320.Spec : Prop :=
  ∀ n, P4100763008796274320.a n = A135274 (n + 1)

end A135274

/-! ## A135274.P8419282354693889073

`A078584(n+1)+A031368(n+2)`
-/

namespace A135274.P8419282354693889073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078584 (n + 1) + A031368 (n + 2)

end

end A135274.P8419282354693889073

namespace A135274

/-- `A078584(n+1)+A031368(n+2)` -/
def P8419282354693889073.Spec : Prop :=
  ∀ n, P8419282354693889073.a n = A135274 (n + 1)

end A135274

/-! ## A135274.P8305512432577905125

`A031215(n+2)-A110854(n+1)`
-/

namespace A135274.P8305512432577905125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 2) - A110854 (n + 1)

end

end A135274.P8305512432577905125

namespace A135274

/-- `A031215(n+2)-A110854(n+1)` -/
def P8305512432577905125.Spec : Prop :=
  ∀ n, P8305512432577905125.a n = A135274 (n + 1)

end A135274

/-! ## A135274.P6324468312661532495

`A031368(n+2)+A001223(2*n+1)`
-/

namespace A135274.P6324468312661532495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 2) + A001223 (2 * n + 1)

end

end A135274.P6324468312661532495

namespace A135274

/-- `A031368(n+2)+A001223(2*n+1)` -/
def P6324468312661532495.Spec : Prop :=
  ∀ n, P6324468312661532495.a n = A135274 (n + 1)

end A135274

/-! ## A135274.P17434192558025518829

`A031215(n+1)+A031368(n+2)-A031368(n+1)`
-/

namespace A135274.P17434192558025518829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) + (A031368 (n + 2) - A031368 (n + 1))

end

end A135274.P17434192558025518829

namespace A135274

/-- `A031215(n+1)+A031368(n+2)-A031368(n+1)` -/
def P17434192558025518829.Spec : Prop :=
  ∀ n, P17434192558025518829.a n = A135274 (n + 1)

end A135274

/-! ## A135274.P5642262455308377613

`A031215(n+1)+A031131(2*n+1)`
-/

namespace A135274.P5642262455308377613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) + A031131 (2 * n + 1)

end

end A135274.P5642262455308377613

namespace A135274

/-- `A031215(n+1)+A031131(2*n+1)` -/
def P5642262455308377613.Spec : Prop :=
  ∀ n, P5642262455308377613.a n = A135274 (n + 1)

end A135274

/-! ## A135274.P11031081431220588023

`A075527(2*n+1)+A031215(n+1)`
-/

namespace A135274.P11031081431220588023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 (2 * n + 1) + A031215 (n + 1)

end

end A135274.P11031081431220588023

namespace A135274

/-- `A075527(2*n+1)+A031215(n+1)` -/
def P11031081431220588023.Spec : Prop :=
  ∀ n, P11031081431220588023.a n = A135274 (n + 1)

end A135274

/-! ## A135274.P11029358835330841851

`A155067(n+1)+A000040(2*(n+1))`
-/

namespace A135274.P11029358835330841851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155067 (n + 1) + A000040 (2 * (n + 1))

end

end A135274.P11029358835330841851

namespace A135274

/-- `A155067(n+1)+A000040(2*(n+1))` -/
def P11029358835330841851.Spec : Prop :=
  ∀ n, P11029358835330841851.a n = A135274 (n + 1)

end A135274

/-! ## A135274.P8344749358717637714

`A001043(2*(n+1))-A031368(n+1)`
-/

namespace A135274.P8344749358717637714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (2 * (n + 1)) - A031368 (n + 1)

end

end A135274.P8344749358717637714

namespace A135274

/-- `A001043(2*(n+1))-A031368(n+1)` -/
def P8344749358717637714.Spec : Prop :=
  ∀ n, P8344749358717637714.a n = A135274 (n + 1)

end A135274

/-! ## A135274.P17012792065088405128

`A092163(n+1)-A000040(2*n+1)`
-/

namespace A135274.P17012792065088405128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092163 (n + 1) - A000040 (2 * n + 1)

end

end A135274.P17012792065088405128

namespace A135274

/-- `A092163(n+1)-A000040(2*n+1)` -/
def P17012792065088405128.Spec : Prop :=
  ∀ n, P17012792065088405128.a n = A135274 (n + 1)

end A135274

/-! ## A135274.P12457616266384894218

`A305748(2*n+1)+A058296(n+2)`
-/

namespace A135274.P12457616266384894218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305748 (2 * n + 1) + A058296 (n + 2)

end

end A135274.P12457616266384894218

namespace A135274

/-- `A305748(2*n+1)+A058296(n+2)` -/
def P12457616266384894218.Spec : Prop :=
  ∀ n, P12457616266384894218.a n = A135274 (n + 1)

end A135274

/-! ## A135274.P11834123047999696660

`A305748(2*n+1)+A162801(n+2)`
-/

namespace A135274.P11834123047999696660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305748 (2 * n + 1) + A162801 (n + 2)

end

end A135274.P11834123047999696660

namespace A135274

/-- `A305748(2*n+1)+A162801(n+2)` -/
def P11834123047999696660.Spec : Prop :=
  ∀ n, P11834123047999696660.a n = A135274 (n + 1)

end A135274

/-! ## A135274.P5525658735675740332

`A031131(2*n+1)+A000040(2*(n+1))`
-/

namespace A135274.P5525658735675740332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (2 * n + 1) + A000040 (2 * (n + 1))

end

end A135274.P5525658735675740332

namespace A135274

/-- `A031131(2*n+1)+A000040(2*(n+1))` -/
def P5525658735675740332.Spec : Prop :=
  ∀ n, P5525658735675740332.a n = A135274 (n + 1)

end A135274

/-!
# A135275: a(n) = prime(2n-1) + prime(2n) - prime(2n+1).

The programs for A135275, the canonical program `A135275.P3525010006064753465` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135275 has offset 1).

The definition of A135275 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096379, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A135275.P3525010006064753465

`A096379(2*n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A135275

/-- `A096379(2*n+1)` -/
def P3525010006064753465.Spec : Prop :=
  ∀ n, P3525010006064753465.a n = A135275 (n + 1)

theorem P3525010006064753465.correct : P3525010006064753465.Spec := by
  intro n
  simp only [A135275, Nat.add_sub_cancel]

end A135275

/-! ## A135275.P14512762192250257528

`A031368(n+1)-A088680(n+1)`
-/

namespace A135275.P14512762192250257528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1) - A088680 (n + 1)

end

end A135275.P14512762192250257528

namespace A135275

/-- `A031368(n+1)-A088680(n+1)` -/
def P14512762192250257528.Spec : Prop :=
  ∀ n, P14512762192250257528.a n = A135275 (n + 1)

end A135275

/-! ## A135275.P10283840004495725846

`A031215(n+1)-A155067(n+1)`
-/

namespace A135275.P10283840004495725846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) - A155067 (n + 1)

end

end A135275.P10283840004495725846

namespace A135275

/-- `A031215(n+1)-A155067(n+1)` -/
def P10283840004495725846.Spec : Prop :=
  ∀ n, P10283840004495725846.a n = A135275 (n + 1)

end A135275

/-! ## A135275.P10943450243519124969

`A166448(2*(n+1))-A109722(n)`
-/

namespace A135275.P10943450243519124969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166448 (2 * (n + 1)) - A109722 n

end

end A135275.P10943450243519124969

namespace A135275

/-- `A166448(2*(n+1))-A109722(n)` -/
def P10943450243519124969.Spec : Prop :=
  ∀ n, P10943450243519124969.a n = A135275 (n + 1)

end A135275

/-! ## A135275.P17087692559144938241

`A031368(n+1)-A001223(2*(n+1))`
-/

namespace A135275.P17087692559144938241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1) - A001223 (2 * (n + 1))

end

end A135275.P17087692559144938241

namespace A135275

/-- `A031368(n+1)-A001223(2*(n+1))` -/
def P17087692559144938241.Spec : Prop :=
  ∀ n, P17087692559144938241.a n = A135275 (n + 1)

end A135275

/-! ## A135275.P12040788567922812729

`2*A031215(n+1)-A135274(n+1)`
-/

namespace A135275.P12040788567922812729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A031215 (n + 1) - A135274 (n + 1)

end

end A135275.P12040788567922812729

namespace A135275

/-- `2*A031215(n+1)-A135274(n+1)` -/
def P12040788567922812729.Spec : Prop :=
  ∀ n, P12040788567922812729.a n = A135275 (n + 1)

end A135275

/-! ## A135275.P16855716294020572706

`A166448(2*(n+1))-A007504(2*n)`
-/

namespace A135275.P16855716294020572706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166448 (2 * (n + 1)) - A007504 (2 * n)

end

end A135275.P16855716294020572706

namespace A135275

/-- `A166448(2*(n+1))-A007504(2*n)` -/
def P16855716294020572706.Spec : Prop :=
  ∀ n, P16855716294020572706.a n = A135275 (n + 1)

end A135275

/-! ## A135275.P545047462236470098

`A031215(n+1)+A100479(n+1)-A092163(n+1)`
-/

namespace A135275.P545047462236470098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) + (A100479 (n + 1) - A092163 (n + 1))

end

end A135275.P545047462236470098

namespace A135275

/-- `A031215(n+1)+A100479(n+1)-A092163(n+1)` -/
def P545047462236470098.Spec : Prop :=
  ∀ n, P545047462236470098.a n = A135275 (n + 1)

end A135275

/-! ## A135275.P12267631860105505087

`A031215(n+1)+A110854(n+1)-A155750(n+1)`
-/

namespace A135275.P12267631860105505087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) + (A110854 (n + 1) - A155750 (n + 1))

end

end A135275.P12267631860105505087

namespace A135275

/-- `A031215(n+1)+A110854(n+1)-A155750(n+1)` -/
def P12267631860105505087.Spec : Prop :=
  ∀ n, P12267631860105505087.a n = A135275 (n + 1)

end A135275

/-! ## A135275.P3420932643215986054

`A100479(n+1)-A031368(n+2)`
-/

namespace A135275.P3420932643215986054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100479 (n + 1) - A031368 (n + 2)

end

end A135275.P3420932643215986054

namespace A135275

/-- `A100479(n+1)-A031368(n+2)` -/
def P3420932643215986054.Spec : Prop :=
  ∀ n, P3420932643215986054.a n = A135275 (n + 1)

end A135275

/-! ## A135275.P10660731918959434200

`A031215(n+1)+A031368(n+1)-A031368(n+2)`
-/

namespace A135275.P10660731918959434200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) + (A031368 (n + 1) - A031368 (n + 2))

end

end A135275.P10660731918959434200

namespace A135275

/-- `A031215(n+1)+A031368(n+1)-A031368(n+2)` -/
def P10660731918959434200.Spec : Prop :=
  ∀ n, P10660731918959434200.a n = A135275 (n + 1)

end A135275

/-! ## A135275.P12225026478535817793

`A100479(n+1)+A031215(n+2)-A100479(n+2)`
-/

namespace A135275.P12225026478535817793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100479 (n + 1) + (A031215 (n + 2) - A100479 (n + 2))

end

end A135275.P12225026478535817793

namespace A135275

/-- `A100479(n+1)+A031215(n+2)-A100479(n+2)` -/
def P12225026478535817793.Spec : Prop :=
  ∀ n, P12225026478535817793.a n = A135275 (n + 1)

end A135275

/-! ## A135275.P4625506752969329519

`A135277(n+1)+A135274(n+2)-A135277(n+2)`
-/

namespace A135275.P4625506752969329519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135277 (n + 1) + (A135274 (n + 2) - A135277 (n + 2))

end

end A135275.P4625506752969329519

namespace A135275

/-- `A135277(n+1)+A135274(n+2)-A135277(n+2)` -/
def P4625506752969329519.Spec : Prop :=
  ∀ n, P4625506752969329519.a n = A135275 (n + 1)

end A135275

/-! ## A135275.P6871450199985715848

`A062234(2*n+1)-A036263(2*n+1)`
-/

namespace A135275.P6871450199985715848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (2 * n + 1) - A036263 (2 * n + 1)

end

end A135275.P6871450199985715848

namespace A135275

/-- `A062234(2*n+1)-A036263(2*n+1)` -/
def P6871450199985715848.Spec : Prop :=
  ∀ n, P6871450199985715848.a n = A135275 (n + 1)

end A135275

/-! ## A135275.P4881790552871116807

`A031215(n+1)-A031131(2*n+1)`
-/

namespace A135275.P4881790552871116807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) - A031131 (2 * n + 1)

end

end A135275.P4881790552871116807

namespace A135275

/-- `A031215(n+1)-A031131(2*n+1)` -/
def P4881790552871116807.Spec : Prop :=
  ∀ n, P4881790552871116807.a n = A135275 (n + 1)

end A135275

/-! ## A135275.P1641311186493273725

`A000040(2*n+1)-A088680(n+1)`
-/

namespace A135275.P1641311186493273725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * n + 1) - A088680 (n + 1)

end

end A135275.P1641311186493273725

namespace A135275

/-- `A000040(2*n+1)-A088680(n+1)` -/
def P1641311186493273725.Spec : Prop :=
  ∀ n, P1641311186493273725.a n = A135275 (n + 1)

end A135275

/-! ## A135275.P7213735001665303132

`A031215(n+1)-A075527(2*n+1)`
-/

namespace A135275.P7213735001665303132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) - A075527 (2 * n + 1)

end

end A135275.P7213735001665303132

namespace A135275

/-- `A031215(n+1)-A075527(2*n+1)` -/
def P7213735001665303132.Spec : Prop :=
  ∀ n, P7213735001665303132.a n = A135275 (n + 1)

end A135275

/-! ## A135275.P12102604500073872009

`A000040(2*(n+1))-A155067(n+1)`
-/

namespace A135275.P12102604500073872009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * (n + 1)) - A155067 (n + 1)

end

end A135275.P12102604500073872009

namespace A135275

/-- `A000040(2*(n+1))-A155067(n+1)` -/
def P12102604500073872009.Spec : Prop :=
  ∀ n, P12102604500073872009.a n = A135275 (n + 1)

end A135275

/-! ## A135275.P1561957206128994154

`A001043(2*n+1)-A031368(n+2)`
-/

namespace A135275.P1561957206128994154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (2 * n + 1) - A031368 (n + 2)

end

end A135275.P1561957206128994154

namespace A135275

/-- `A001043(2*n+1)-A031368(n+2)` -/
def P1561957206128994154.Spec : Prop :=
  ∀ n, P1561957206128994154.a n = A135275 (n + 1)

end A135275

/-! ## A135275.P16633668410324042306

`Δ[A007504(2*n)]-A045344(2*(n+1))`
-/

namespace A135275.P16633668410324042306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A045344 (2 * (n + 1))

end

end A135275.P16633668410324042306

namespace A135275

/-- `Δ[A007504(2*n)]-A045344(2*(n+1))` -/
def P16633668410324042306.Spec : Prop :=
  ∀ n, P16633668410324042306.a n = A135275 (n + 1)

end A135275

/-!
# A135276: a(0)=0, a(1)=1; for n>1, a(n) = a(n-1) + n^0 if n odd, a(n) = a(n-1) + n^1 if n is even.

The programs for A135276, the canonical program `A135276.P8884026556354225096` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135276 has offset 0).

The definition of A135276 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135276.P16107986529971273833

`(2*n²+6*n+1+(2*n-1)*(-1)^n)/8`
-/

namespace A135276.P16107986529971273833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n ^ 2 + 6 * n : ℤ) + (1 + ((2 * n : ℤ) - 1) * (-1) ^ n) : ℚ) / 8

end

end A135276.P16107986529971273833

namespace A135276

/-- `(2*n²+6*n+1+(2*n-1)*(-1)^n)/8` -/
def P16107986529971273833.Spec : Prop :=
  ∀ n, P16107986529971273833.a n = (A135276 n : ℚ)

theorem P16107986529971273833.correct : P16107986529971273833.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A135276, Nat.add_sub_cancel, A135276.P16107986529971273833.a, A135276.P8884026556354225096.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A135276, Nat.add_sub_cancel, A135276.P16107986529971273833.a, A135276.P8884026556354225096.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A135276

/-! ## A135276.P8884026556354225096

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4, a(4)=8`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A135276

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P8884026556354225096.Spec : Prop :=
  ∀ n, P8884026556354225096.a n = A135276 n

theorem P8884026556354225096.correct : P8884026556354225096.Spec := by
  intro n
  simp only [A135276]

end A135276

/-! ## A135276.P1034572388137055414

`∑[gcd(n, n%2)]`
-/

namespace A135276.P1034572388137055414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135276.P1034572388137055414

namespace A135276

/-- `∑[gcd(n, n%2)]` -/
def P1034572388137055414.Spec : Prop :=
  ∀ n, (P1034572388137055414.a n : ℤ) = A135276 n

end A135276

/-! ## A135276.P11109804514779827367

`∑[gcd(n², and(n, -2))]`
-/

namespace A135276.P11109804514779827367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 : ℤ) (Int.land (n : ℤ) (-2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135276.P11109804514779827367

namespace A135276

/-- `∑[gcd(n², and(n, -2))]` -/
def P11109804514779827367.Spec : Prop :=
  ∀ n, (P11109804514779827367.a n : ℤ) = A135276 n

end A135276

/-! ## A135276.P9304883424445591572

`∑[n^((n+1)%2)]`
-/

namespace A135276.P9304883424445591572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ ((n + 1) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135276.P9304883424445591572

namespace A135276

/-- `∑[n^((n+1)%2)]` -/
def P9304883424445591572.Spec : Prop :=
  ∀ n, (P9304883424445591572.a n : ℤ) = A135276 n

end A135276

/-! ## A135276.P11466384472153243882

`∑[n^and(1, n+1)]`
-/

namespace A135276.P11466384472153243882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.land 1 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135276.P11466384472153243882

namespace A135276

/-- `∑[n^and(1, n+1)]` -/
def P11466384472153243882.Spec : Prop :=
  ∀ n, (P11466384472153243882.a n : ℤ) = A135276 n

end A135276

/-! ## A135276.P6092165018170182101

`∑[n^(1-and(1, n))]`
-/

namespace A135276.P6092165018170182101
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (1 - (Nat.land 1 n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135276.P6092165018170182101

namespace A135276

/-- `∑[n^(1-and(1, n))]` -/
def P6092165018170182101.Spec : Prop :=
  ∀ n, P6092165018170182101.a n = (A135276 n : ℚ)

end A135276

/-! ## A135276.P2714191443209776858

`∑[C(n, (n+3)%2)]`
-/

namespace A135276.P2714191443209776858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ((n + 3) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135276.P2714191443209776858

namespace A135276

/-- `∑[C(n, (n+3)%2)]` -/
def P2714191443209776858.Spec : Prop :=
  ∀ n, (P2714191443209776858.a n : ℤ) = A135276 n

end A135276

/-! ## A135276.P4231101490931439285

`∑[C(n, and(1, n+1))]`
-/

namespace A135276.P4231101490931439285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.land 1 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135276.P4231101490931439285

namespace A135276

/-- `∑[C(n, and(1, n+1))]` -/
def P4231101490931439285.Spec : Prop :=
  ∀ n, (P4231101490931439285.a n : ℤ) = A135276 n

end A135276

/-! ## A135276.P12261317740193120235

`∑[C(n, 1-and(1, n))]`
-/

namespace A135276.P12261317740193120235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (1 - (Nat.land 1 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135276.P12261317740193120235

namespace A135276

/-- `∑[C(n, 1-and(1, n))]` -/
def P12261317740193120235.Spec : Prop :=
  ∀ n, (P12261317740193120235.a n : ℤ) = A135276 n

end A135276

/-! ## A135276.P1475555693490195277

`∑[n^val(or(2, n), 2)]`
-/

namespace A135276.P1475555693490195277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.valuation (Nat.lor 2 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135276.P1475555693490195277

namespace A135276

/-- `∑[n^val(or(2, n), 2)]` -/
def P1475555693490195277.Spec : Prop :=
  ∀ n, (P1475555693490195277.a n : ℤ) = A135276 n

end A135276

/-! ## A135276.P12100525193939321824

`∑[n^xor(1, and(1, n))]`
-/

namespace A135276.P12100525193939321824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.xor 1 (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135276.P12100525193939321824

namespace A135276

/-- `∑[n^xor(1, and(1, n))]` -/
def P12100525193939321824.Spec : Prop :=
  ∀ n, (P12100525193939321824.a n : ℤ) = A135276 n

end A135276

/-! ## A135276.P8512038997558150367

`∑[xor(1, C(xor(1, n), n))]`
-/

namespace A135276.P8512038997558150367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.choose (Nat.xor 1 n) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135276.P8512038997558150367

namespace A135276

/-- `∑[xor(1, C(xor(1, n), n))]` -/
def P8512038997558150367.Spec : Prop :=
  ∀ n, (P8512038997558150367.a n : ℤ) = A135276 n

end A135276

/-! ## A135276.P11714583769122066428

`∑[n^(or(1, n)-n)]`
-/

namespace A135276.P11714583769122066428
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ ((Nat.lor 1 n : ℤ) - (n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135276.P11714583769122066428

namespace A135276

/-- `∑[n^(or(1, n)-n)]` -/
def P11714583769122066428.Spec : Prop :=
  ∀ n, P11714583769122066428.a n = (A135276 n : ℚ)

end A135276

/-! ## A135276.P4375138059992737878

`∑[n/n^and(1, n)]`
-/

namespace A135276.P4375138059992737878
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n ^ Nat.land 1 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135276.P4375138059992737878

namespace A135276

/-- `∑[n/n^and(1, n)]` -/
def P4375138059992737878.Spec : Prop :=
  ∀ n, P4375138059992737878.a n = (A135276 n : ℚ)

end A135276

/-! ## A135276.P8424856530811613434

`∑[C(n, or(1, n)-n)]`
-/

namespace A135276.P8424856530811613434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ((Nat.lor 1 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135276.P8424856530811613434

namespace A135276

/-- `∑[C(n, or(1, n)-n)]` -/
def P8424856530811613434.Spec : Prop :=
  ∀ n, (P8424856530811613434.a n : ℤ) = A135276 n

end A135276

/-! ## A135276.P3173500839007342811

`∑[and(n, -(-1)^n)]`
-/

namespace A135276.P3173500839007342811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-((-1) ^ n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135276.P3173500839007342811

namespace A135276

/-- `∑[and(n, -(-1)^n)]` -/
def P3173500839007342811.Spec : Prop :=
  ∀ n, P3173500839007342811.a n = A135276 n

end A135276

/-! ## A135276.P6037358927587954945

`∑[n/C(n, and(1, n))]`
-/

namespace A135276.P6037358927587954945
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.choose n (Nat.land 1 n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135276.P6037358927587954945

namespace A135276

/-- `∑[n/C(n, and(1, n))]` -/
def P6037358927587954945.Spec : Prop :=
  ∀ n, P6037358927587954945.a n = (A135276 n : ℚ)

end A135276

/-! ## A135276.P14290477449174640629

`∑[n^C(n, lcm(2, n))]`
-/

namespace A135276.P14290477449174640629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.choose n (Nat.lcm 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135276.P14290477449174640629

namespace A135276

/-- `∑[n^C(n, lcm(2, n))]` -/
def P14290477449174640629.Spec : Prop :=
  ∀ n, (P14290477449174640629.a n : ℤ) = A135276 n

end A135276

/-! ## A135276.P8729666382494146172

`∑[C(n, n^and(1, n))]`
-/

namespace A135276.P8729666382494146172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (n ^ Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135276.P8729666382494146172

namespace A135276

/-- `∑[C(n, n^and(1, n))]` -/
def P8729666382494146172.Spec : Prop :=
  ∀ n, (P8729666382494146172.a n : ℤ) = A135276 n

end A135276

/-!
# A135277: a(n) = prime(2n-1) + prime(2n) + prime(2n+1).

The programs for A135277, the canonical program `A135277.P10565709097119796957` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135277 has offset 1).

The definition of A135277 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A135277.P10565709097119796957

`A034961(2*n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A135277

/-- `A034961(2*n+1)` -/
def P10565709097119796957.Spec : Prop :=
  ∀ n, P10565709097119796957.a n = A135277 (n + 1)

theorem P10565709097119796957.correct : P10565709097119796957.Spec := by
  intro n
  simp only [A135277, Nat.add_sub_cancel]

end A135277

/-! ## A135277.P13719434300866225384

`A109723(n+1)-A109722(n)`
-/

namespace A135277.P13719434300866225384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109723 (n + 1) - A109722 n

end

end A135277.P13719434300866225384

namespace A135277

/-- `A109723(n+1)-A109722(n)` -/
def P13719434300866225384.Spec : Prop :=
  ∀ n, P13719434300866225384.a n = A135277 (n + 1)

end A135277

/-! ## A135277.P9316575057564304709

`A092163(n+1)+A031368(n+1)`
-/

namespace A135277.P9316575057564304709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092163 (n + 1) + A031368 (n + 1)

end

end A135277.P9316575057564304709

namespace A135277

/-- `A092163(n+1)+A031368(n+1)` -/
def P9316575057564304709.Spec : Prop :=
  ∀ n, P9316575057564304709.a n = A135277 (n + 1)

end A135277

/-! ## A135277.P373106550304829354

`A345071(n+1)+A031215(n+1)`
-/

namespace A135277.P373106550304829354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345071 (n + 1) + A031215 (n + 1)

end

end A135277.P373106550304829354

namespace A135277

/-- `A345071(n+1)+A031215(n+1)` -/
def P373106550304829354.Spec : Prop :=
  ∀ n, P373106550304829354.a n = A135277 (n + 1)

end A135277

/-! ## A135277.P18243256317642498780

`A109723(n+1)-A007504(2*n)`
-/

namespace A135277.P18243256317642498780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109723 (n + 1) - A007504 (2 * n)

end

end A135277.P18243256317642498780

namespace A135277

/-- `A109723(n+1)-A007504(2*n)` -/
def P18243256317642498780.Spec : Prop :=
  ∀ n, P18243256317642498780.a n = A135277 (n + 1)

end A135277

/-! ## A135277.P17185393704045643244

`A007504(2*n+3)-A109722(n)`
-/

namespace A135277.P17185393704045643244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (2 * n + 3) - A109722 n

end

end A135277.P17185393704045643244

namespace A135277

/-- `A007504(2*n+3)-A109722(n)` -/
def P17185393704045643244.Spec : Prop :=
  ∀ n, P17185393704045643244.a n = A135277 (n + 1)

end A135277

/-! ## A135277.P5981618443857458890

`A135274(n+1)+2*A031368(n+1)`
-/

namespace A135277.P5981618443857458890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135274 (n + 1) + 2 * A031368 (n + 1)

end

end A135277.P5981618443857458890

namespace A135277

/-- `A135274(n+1)+2*A031368(n+1)` -/
def P5981618443857458890.Spec : Prop :=
  ∀ n, P5981618443857458890.a n = A135277 (n + 1)

end A135277

/-! ## A135277.P11077074146083365546

`2*A092163(n+1)-A135274(n+1)`
-/

namespace A135277.P11077074146083365546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092163 (n + 1) - A135274 (n + 1)

end

end A135277.P11077074146083365546

namespace A135277

/-- `2*A092163(n+1)-A135274(n+1)` -/
def P11077074146083365546.Spec : Prop :=
  ∀ n, P11077074146083365546.a n = A135277 (n + 1)

end A135277

/-! ## A135277.P14763788606986769443

`2*A321178(n+1)-A007504(2*n)`
-/

namespace A135277.P14763788606986769443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321178 (n + 1) - A007504 (2 * n)

end

end A135277.P14763788606986769443

namespace A135277

/-- `2*A321178(n+1)-A007504(2*n)` -/
def P14763788606986769443.Spec : Prop :=
  ∀ n, P14763788606986769443.a n = A135277 (n + 1)

end A135277

/-! ## A135277.P6917217476061473586

`A007504(2*n+3)-A007504(2*n)`
-/

namespace A135277.P6917217476061473586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (2 * n + 3) - A007504 (2 * n)

end

end A135277.P6917217476061473586

namespace A135277

/-- `A007504(2*n+3)-A007504(2*n)` -/
def P6917217476061473586.Spec : Prop :=
  ∀ n, P6917217476061473586.a n = A135277 (n + 1)

end A135277

/-! ## A135277.P16426134140102549802

`A321178(n+1)+A321178(n+1)-A109722(n)`
-/

namespace A135277.P16426134140102549802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321178 (n + 1) + (A321178 (n + 1) - A109722 n)

end

end A135277.P16426134140102549802

namespace A135277

/-- `A321178(n+1)+A321178(n+1)-A109722(n)` -/
def P16426134140102549802.Spec : Prop :=
  ∀ n, P16426134140102549802.a n = A135277 (n + 1)

end A135277

/-! ## A135277.P2692756794785163950

`A100479(n+1)+A031368(n+2)`
-/

namespace A135277.P2692756794785163950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100479 (n + 1) + A031368 (n + 2)

end

end A135277.P2692756794785163950

namespace A135277

/-- `A100479(n+1)+A031368(n+2)` -/
def P2692756794785163950.Spec : Prop :=
  ∀ n, P2692756794785163950.a n = A135277 (n + 1)

end A135277

/-! ## A135277.P18128679107952015776

`A031215(n+1)+A031368(n+1)+A031368(n+2)`
-/

namespace A135277.P18128679107952015776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) + (A031368 (n + 1) + A031368 (n + 2))

end

end A135277.P18128679107952015776

namespace A135277

/-- `A031215(n+1)+A031368(n+1)+A031368(n+2)` -/
def P18128679107952015776.Spec : Prop :=
  ∀ n, P18128679107952015776.a n = A135277 (n + 1)

end A135277

/-! ## A135277.P3082365244103933832

`A100479(n+1)+A100479(n+2)-A031215(n+2)`
-/

namespace A135277.P3082365244103933832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100479 (n + 1) + (A100479 (n + 2) - A031215 (n + 2))

end

end A135277.P3082365244103933832

namespace A135277

/-- `A100479(n+1)+A100479(n+2)-A031215(n+2)` -/
def P3082365244103933832.Spec : Prop :=
  ∀ n, P3082365244103933832.a n = A135277 (n + 1)

end A135277

/-! ## A135277.P36565340642423258

`record[A034961((n+1)/and(n+1, -(n+1)))]`
-/

namespace A135277.P36565340642423258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135277.P36565340642423258

namespace A135277

/-- `record[A034961((n+1)/and(n+1, -(n+1)))]` -/
def P36565340642423258.Spec : Prop :=
  ∀ n, P36565340642423258.a n = A135277 (n + 1)

end A135277

/-! ## A135277.P2458007920326490868

`A031368(n+1)+A001043(2*(n+1))`
-/

namespace A135277.P2458007920326490868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1) + A001043 (2 * (n + 1))

end

end A135277.P2458007920326490868

namespace A135277

/-- `A031368(n+1)+A001043(2*(n+1))` -/
def P2458007920326490868.Spec : Prop :=
  ∀ n, P2458007920326490868.a n = A135277 (n + 1)

end A135277

/-! ## A135277.P13077907761140845171

`A092163(n+1)+A000040(2*n+1)`
-/

namespace A135277.P13077907761140845171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092163 (n + 1) + A000040 (2 * n + 1)

end

end A135277.P13077907761140845171

namespace A135277

/-- `A092163(n+1)+A000040(2*n+1)` -/
def P13077907761140845171.Spec : Prop :=
  ∀ n, P13077907761140845171.a n = A135277 (n + 1)

end A135277

/-! ## A135277.P14174596974776599208

`A345071(n+1)+A000040(2*(n+1))`
-/

namespace A135277.P14174596974776599208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345071 (n + 1) + A000040 (2 * (n + 1))

end

end A135277.P14174596974776599208

namespace A135277

/-- `A345071(n+1)+A000040(2*(n+1))` -/
def P14174596974776599208.Spec : Prop :=
  ∀ n, P14174596974776599208.a n = A135277 (n + 1)

end A135277

/-! ## A135277.P1868340225094058618

`A045344(2*(n+1))+Δ[A007504(2*n)]`
-/

namespace A135277.P1868340225094058618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (2 * (n + 1)) + (f1 (n + 1) - f1 n)

end

end A135277.P1868340225094058618

namespace A135277

/-- `A045344(2*(n+1))+Δ[A007504(2*n)]` -/
def P1868340225094058618.Spec : Prop :=
  ∀ n, P1868340225094058618.a n = A135277 (n + 1)

end A135277

/-! ## A135277.P17609912725761220154

`A001043(2*(n+1))+A000040(2*n+1)`
-/

namespace A135277.P17609912725761220154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (2 * (n + 1)) + A000040 (2 * n + 1)

end

end A135277.P17609912725761220154

namespace A135277

/-- `A001043(2*(n+1))+A000040(2*n+1)` -/
def P17609912725761220154.Spec : Prop :=
  ∀ n, P17609912725761220154.a n = A135277 (n + 1)

end A135277

/-!
# A135278: Triangle read by rows, giving the numbers T(n,m) = binomial(n+1, m+1); or, Pascal's triangle A007318 with its left-hand edge removed.

The programs for A135278, the canonical program `A135278.P10862305414900331449` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135278 has offset 0).

The definition of A135278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135278.P10862305414900331449

`A074909(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A135278

/-- `A074909(n+1)` -/
def P10862305414900331449.Spec : Prop :=
  ∀ n, P10862305414900331449.a n = A135278 n

theorem P10862305414900331449.correct : P10862305414900331449.Spec := by
  intro n
  simp only [A135278]

end A135278

/-! ## A135278.P14922472451508536996

`A007318(comp[∑[n]])`
-/

namespace A135278.P14922472451508536996
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A135278.P14922472451508536996

namespace A135278

/-- `A007318(comp[∑[n]])` -/
def P14922472451508536996.Spec : Prop :=
  ∀ n, P14922472451508536996.a n = A135278 n

end A135278

/-! ## A135278.P2911106631019633329

`∑[A214292(n)]+1`
-/

namespace A135278.P2911106631019633329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A135278.P2911106631019633329

namespace A135278

/-- `∑[A214292(n)]+1` -/
def P2911106631019633329.Spec : Prop :=
  ∀ n, P2911106631019633329.a n = A135278 n

end A135278

/-! ## A135278.P7580159661535052193

`(A131768(n)+1)/2`
-/

namespace A135278.P7580159661535052193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131768 n + 1 : ℚ) / 2

end

end A135278.P7580159661535052193

namespace A135278

/-- `(A131768(n)+1)/2` -/
def P7580159661535052193.Spec : Prop :=
  ∀ n, P7580159661535052193.a n = (A135278 n : ℚ)

end A135278

/-! ## A135278.P3634481075188321928

`A028326(comp[∑[n]])/2`
-/

namespace A135278.P3634481075188321928
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2

end

end A135278.P3634481075188321928

namespace A135278

/-- `A028326(comp[∑[n]])/2` -/
def P3634481075188321928.Spec : Prop :=
  ∀ n, P3634481075188321928.a n = (A135278 n : ℚ)

end A135278

/-! ## A135278.P16714704947557941865

`A124927(comp[∑[n]])/2`
-/

namespace A135278.P16714704947557941865
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124927 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2

end

end A135278.P16714704947557941865

namespace A135278

/-- `A124927(comp[∑[n]])/2` -/
def P16714704947557941865.Spec : Prop :=
  ∀ n, P16714704947557941865.a n = (A135278 n : ℚ)

end A135278

/-! ## A135278.P7715136972326186859

`A014430(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A135278.P7715136972326186859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014430 n + (1 - a (n - 1))

end

end A135278.P7715136972326186859

namespace A135278

/-- `A014430(n)+1-a(n-1)` -/
def P7715136972326186859.Spec : Prop :=
  ∀ n, P7715136972326186859.a n = A135278 n

end A135278

/-! ## A135278.P7215642743529469833

`A014410(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A135278.P7215642743529469833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014410 (n + 2) - a (n - 1)

end

end A135278.P7215642743529469833

namespace A135278

/-- `A014410(n+2)-a(n-1)` -/
def P7215642743529469833.Spec : Prop :=
  ∀ n, P7215642743529469833.a n = A135278 n

end A135278

/-! ## A135278.P45776816820726714

`A132812(n+1)/a(n-1)` with `a(0)=1`
-/

namespace A135278.P45776816820726714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A132812 (n + 1) : ℚ) / a (n - 1)

end

end A135278.P45776816820726714

namespace A135278

/-- `A132812(n+1)/a(n-1)` -/
def P45776816820726714.Spec : Prop :=
  ∀ n, P45776816820726714.a n = (A135278 n : ℚ)

end A135278

/-! ## A135278.P17443043148751675216

`C(round(sqrt(2*n+1)), A025581(n))`
-/

namespace A135278.P17443043148751675216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat (A025581 n).toNat

end

end A135278.P17443043148751675216

namespace A135278

/-- `C(round(sqrt(2*n+1)), A025581(n))` -/
def P17443043148751675216.Spec : Prop :=
  ∀ n, (P17443043148751675216.a n : ℤ) = A135278 n

end A135278

/-! ## A135278.P2182668284201470360

`C(round(sqrt(2*n+1)), A002260(n+1))`
-/

namespace A135278.P2182668284201470360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat (A002260 (n + 1)).toNat

end

end A135278.P2182668284201470360

namespace A135278

/-- `C(round(sqrt(2*n+1)), A002260(n+1))` -/
def P2182668284201470360.Spec : Prop :=
  ∀ n, (P2182668284201470360.a n : ℤ) = A135278 n

end A135278

/-! ## A135278.P13452301587077611811

`A080233(n)+A051601(n)`
-/

namespace A135278.P13452301587077611811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080233 n + A051601 n

end

end A135278.P13452301587077611811

namespace A135278

/-- `A080233(n)+A051601(n)` -/
def P13452301587077611811.Spec : Prop :=
  ∀ n, P13452301587077611811.a n = A135278 n

end A135278

/-! ## A135278.P8568596944516000840

`A153861(n)+A073424(n)`
-/

namespace A135278.P8568596944516000840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153861 n + A073424 n

end

end A135278.P8568596944516000840

namespace A135278

/-- `A153861(n)+A073424(n)` -/
def P8568596944516000840.Spec : Prop :=
  ∀ n, P8568596944516000840.a n = A135278 n

end A135278

/-! ## A135278.P5469467955072552163

`A259525(n)+A129994(n)`
-/

namespace A135278.P5469467955072552163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259525 n + A129994 n

end

end A135278.P5469467955072552163

namespace A135278

/-- `A259525(n)+A129994(n)` -/
def P5469467955072552163.Spec : Prop :=
  ∀ n, P5469467955072552163.a n = A135278 n

end A135278

/-! ## A135278.P4683958975433029242

`A028326(n)-A156644(n)`
-/

namespace A135278.P4683958975433029242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A156644 n

end

end A135278.P4683958975433029242

namespace A135278

/-- `A028326(n)-A156644(n)` -/
def P4683958975433029242.Spec : Prop :=
  ∀ n, P4683958975433029242.a n = A135278 n

end A135278

/-! ## A135278.P14623093596310161949

`A103371(n)/A007318(n)`
-/

namespace A135278.P14623093596310161949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103371 n : ℚ) / (A007318 n : ℚ)

end

end A135278.P14623093596310161949

namespace A135278

/-- `A103371(n)/A007318(n)` -/
def P14623093596310161949.Spec : Prop :=
  ∀ n, P14623093596310161949.a n = (A135278 n : ℚ)

end A135278

/-! ## A135278.P12407026252481797545

`A193862(n)/A059268(n)`
-/

namespace A135278.P12407026252481797545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193862 n : ℚ) / (A059268 n : ℚ)

end

end A135278.P12407026252481797545

namespace A135278

/-- `A193862(n)/A059268(n)` -/
def P12407026252481797545.Spec : Prop :=
  ∀ n, P12407026252481797545.a n = (A135278 n : ℚ)

end A135278

/-! ## A135278.P11641115653260462563

`A133341(n)/A232089(n)`
-/

namespace A135278.P11641115653260462563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133341 n : ℚ) / (A232089 n : ℚ)

end

end A135278.P11641115653260462563

namespace A135278

/-- `A133341(n)/A232089(n)` -/
def P11641115653260462563.Spec : Prop :=
  ∀ n, P11641115653260462563.a n = (A135278 n : ℚ)

end A135278

/-! ## A135278.P3733555912502709006

`A259477(n)/A193739(n)`
-/

namespace A135278.P3733555912502709006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259477 n : ℚ) / (A193739 n : ℚ)

end

end A135278.P3733555912502709006

namespace A135278

/-- `A259477(n)/A193739(n)` -/
def P3733555912502709006.Spec : Prop :=
  ∀ n, P3733555912502709006.a n = (A135278 n : ℚ)

end A135278

/-! ## A135278.P5367600796218998783

`ratio[A074909(n)]*A074909(n)`
-/

namespace A135278.P5367600796218998783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A074909 n : ℚ)

end

end A135278.P5367600796218998783

namespace A135278

/-- `ratio[A074909(n)]*A074909(n)` -/
def P5367600796218998783.Spec : Prop :=
  ∀ n, P5367600796218998783.a n = (A135278 n : ℚ)

end A135278

/-!
# A135282: Largest k such that 2^k appears in the trajectory of the Collatz 3x+1 sequence started at n.

The programs for A135282, there is no canonical definition to state claims against.
-/

/-! ## A135282.P5440471941817420265

`A006577(n+1)-A208981(n+1)`
-/

namespace A135282.P5440471941817420265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) - A208981 (n + 1)

end

end A135282.P5440471941817420265

/-! ## A135282.P5659584738320263787

`A226123(n+1)-1`
-/

namespace A135282.P5659584738320263787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226123 (n + 1) - 1

end

end A135282.P5659584738320263787

/-! ## A135282.P2570397904633378872

`A023443(A226123(n+1))`
-/

namespace A135282.P2570397904633378872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A226123 (n + 1)).toNat

end

end A135282.P2570397904633378872

/-! ## A135282.P12728851621040268525

`A023444(A226123(n+1)+1)`
-/

namespace A135282.P12728851621040268525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A226123 (n + 1) + 1).toNat

end

end A135282.P12728851621040268525

/-! ## A135282.P16825287126396185542

`A008908(n+1)-(A208981(n+1)+1)`
-/

namespace A135282.P16825287126396185542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - (A208981 (n + 1) + 1)

end

end A135282.P16825287126396185542

/-! ## A135282.P10272694488330617533

`A058261(n)/(n+1)-A208981(n+1)`
-/

namespace A135282.P10272694488330617533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058261 n : ℚ) / (n + 1 : ℚ) - (A208981 (n + 1) : ℚ)

end

end A135282.P10272694488330617533

/-! ## A135282.P5765620085324406499

`A023443(A008908(n+1)-A208981(n+1))`
-/

namespace A135282.P5765620085324406499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A008908 (n + 1) - A208981 (n + 1)).toNat

end

end A135282.P5765620085324406499

/-! ## A135282.P16159800621964291296

`∑[A153330(n+1)]-A153330(n+1)-A208981(n+1)`
-/

namespace A135282.P16159800621964291296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A153330 (n + 1) - A208981 (n + 1)

end

end A135282.P16159800621964291296

/-! ## A135282.P9866318203489013661

`log2(A232503(n+1))`
-/

namespace A135282.P9866318203489013661
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A232503 (n + 1) : ℝ)

end

end A135282.P9866318203489013661

/-! ## A135282.P14614641926203922564

`A285097(A232503(n+1)+1)`
-/

namespace A135282.P14614641926203922564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (A232503 (n + 1) + 1).toNat

end

end A135282.P14614641926203922564

/-! ## A135282.P11754232964656187476

`A000120(A232503(n+1)-1)`
-/

namespace A135282.P11754232964656187476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A232503 (n + 1) - 1).toNat

end

end A135282.P11754232964656187476

/-! ## A135282.P13967165598596444474

`∑{d}[A232503(n+1), A078349(#)]`
-/

namespace A135282.P13967165598596444474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A078349 d

end

end A135282.P13967165598596444474

/-! ## A135282.P5439553835614282393

`∑{e}[A232503(n+1), A232528(#)]`
-/

namespace A135282.P5439553835614282393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A232528 (Nat.factorization (f1 n).natAbs p)

end

end A135282.P5439553835614282393

/-! ## A135282.P9200233830684866356

`A089080(A232503(n+1)+1)-2`
-/

namespace A135282.P9200233830684866356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (A232503 (n + 1) + 1).toNat - 2

end

end A135282.P9200233830684866356

/-! ## A135282.P16383832788233476525

`A007814(2*A232503(n+1))-1`
-/

namespace A135282.P16383832788233476525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * A232503 (n + 1)).toNat - 1

end

end A135282.P16383832788233476525

/-! ## A135282.P3642977534550369938

`A000005(2*A232503(n+1))-2`
-/

namespace A135282.P3642977534550369938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * A232503 (n + 1)).toNat - 2

end

end A135282.P3642977534550369938

/-! ## A135282.P8767536450205026553

`A008908(2*A232503(n+1))-2`
-/

namespace A135282.P8767536450205026553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (2 * A232503 (n + 1)).toNat - 2

end

end A135282.P8767536450205026553

/-! ## A135282.P17212817129358156436

`A285717(2*A232503(n+1))-2`
-/

namespace A135282.P17212817129358156436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285717 (2 * A232503 (n + 1)).toNat - 2

end

end A135282.P17212817129358156436

/-! ## A135282.P13793232383167405991

`A317753(A232503(2*n+1-n))`
-/

namespace A135282.P13793232383167405991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317753 (A232503 (2 * n + 1 - n)).toNat

end

end A135282.P13793232383167405991

/-! ## A135282.P11128043264218840833

`A000005(A232503(n+1))-char[A080412(n)]`
-/

namespace A135282.P11128043264218840833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A232503 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A135282.P11128043264218840833

/-!
# A135283: Sum of staircase twin primes according to the rule: top + bottom + next top.

The programs for A135283, the canonical program `A135283.P740554623869463875` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135283 has offset 1).

The definition of A135283 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, A054735, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A135283.P740554623869463875

`A054735(n+1)+A001359(n+2)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A135283

/-- `A054735(n+1)+A001359(n+2)` -/
def P740554623869463875.Spec : Prop :=
  ∀ n, P740554623869463875.a n = A135283 (n + 1)

theorem P740554623869463875.correct : P740554623869463875.Spec := by
  intro n
  simp only [A135283, Nat.add_sub_cancel]

end A135283

/-! ## A135283.P5994582728794115726

`A172057(n+1)+A108605(n+1)`
-/

namespace A135283.P5994582728794115726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (n + 1) + A108605 (n + 1)

end

end A135283.P5994582728794115726

namespace A135283

/-- `A172057(n+1)+A108605(n+1)` -/
def P5994582728794115726.Spec : Prop :=
  ∀ n, P5994582728794115726.a n = A135283 (n + 1)

end A135283

/-! ## A135283.P311143067921489190

`A111046(n+1)-A135284(n+1)`
-/

namespace A135283.P311143067921489190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111046 (n + 1) - A135284 (n + 1)

end

end A135283.P311143067921489190

namespace A135283

/-- `A111046(n+1)-A135284(n+1)` -/
def P311143067921489190.Spec : Prop :=
  ∀ n, P311143067921489190.a n = A135283 (n + 1)

end A135283

/-! ## A135283.P1021066944634331945

`A108605(n+1)+A001359(n+2)+2`
-/

namespace A135283.P1021066944634331945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108605 (n + 1) + (A001359 (n + 2) + 2)

end

end A135283.P1021066944634331945

namespace A135283

/-- `A108605(n+1)+A001359(n+2)+2` -/
def P1021066944634331945.Spec : Prop :=
  ∀ n, P1021066944634331945.a n = A135283 (n + 1)

end A135283

/-! ## A135283.P13140621228140644083

`A001359(n+1)+2*A074953(n+1)`
-/

namespace A135283.P13140621228140644083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + 2 * A074953 (n + 1)

end

end A135283.P13140621228140644083

namespace A135283

/-- `A001359(n+1)+2*A074953(n+1)` -/
def P13140621228140644083.Spec : Prop :=
  ∀ n, P13140621228140644083.a n = A135283 (n + 1)

end A135283

/-! ## A135283.P2192345922467844582

`A172057(n+1)+2*A001359(n+1)`
-/

namespace A135283.P2192345922467844582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (n + 1) + 2 * A001359 (n + 1)

end

end A135283.P2192345922467844582

namespace A135283

/-- `A172057(n+1)+2*A001359(n+1)` -/
def P2192345922467844582.Spec : Prop :=
  ∀ n, P2192345922467844582.a n = A135283 (n + 1)

end A135283

/-! ## A135283.P10347826958774948852

`2*A054735(n+1)-A135284(n+1)`
-/

namespace A135283.P10347826958774948852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054735 (n + 1) - A135284 (n + 1)

end

end A135283.P10347826958774948852

namespace A135283

/-- `2*A054735(n+1)-A135284(n+1)` -/
def P10347826958774948852.Spec : Prop :=
  ∀ n, P10347826958774948852.a n = A135283 (n + 1)

end A135283

/-! ## A135283.P14363120435206881551

`A135286(n+1)+2-A001359(n+1)²`
-/

namespace A135283.P14363120435206881551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135286 (n + 1) + (2 - A001359 (n + 1) ^ 2)

end

end A135283.P14363120435206881551

namespace A135283

/-- `A135286(n+1)+2-A001359(n+1)²` -/
def P14363120435206881551.Spec : Prop :=
  ∀ n, P14363120435206881551.a n = A135283 (n + 1)

end A135283

/-! ## A135283.P1831006548521298727

`A001359(n+1)+A079329(n+1)+A079328(n+1)`
-/

namespace A135283.P1831006548521298727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + (A079329 (n + 1) + A079328 (n + 1))

end

end A135283.P1831006548521298727

namespace A135283

/-- `A001359(n+1)+A079329(n+1)+A079328(n+1)` -/
def P1831006548521298727.Spec : Prop :=
  ∀ n, P1831006548521298727.a n = A135283 (n + 1)

end A135283

/-! ## A135283.P13901082764225919802

`A079328(n+1)+A079328(n+1)+A006512(n+1)`
-/

namespace A135283.P13901082764225919802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079328 (n + 1) + (A079328 (n + 1) + A006512 (n + 1))

end

end A135283.P13901082764225919802

namespace A135283

/-- `A079328(n+1)+A079328(n+1)+A006512(n+1)` -/
def P13901082764225919802.Spec : Prop :=
  ∀ n, P13901082764225919802.a n = A135283 (n + 1)

end A135283

/-! ## A135283.P8289880042520831116

`A001359(n+1)+A006512(n+1)+A001359(n+2)`
-/

namespace A135283.P8289880042520831116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + (A006512 (n + 1) + A001359 (n + 2))

end

end A135283.P8289880042520831116

namespace A135283

/-- `A001359(n+1)+A006512(n+1)+A001359(n+2)` -/
def P8289880042520831116.Spec : Prop :=
  ∀ n, P8289880042520831116.a n = A135283 (n + 1)

end A135283

/-! ## A135283.P8937992137240335282

`A037074(n+1)+A054735(n+1)-A135285(n+1)`
-/

namespace A135283.P8937992137240335282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037074 (n + 1) + (A054735 (n + 1) - A135285 (n + 1))

end

end A135283.P8937992137240335282

namespace A135283

/-- `A037074(n+1)+A054735(n+1)-A135285(n+1)` -/
def P8937992137240335282.Spec : Prop :=
  ∀ n, P8937992137240335282.a n = A135283 (n + 1)

end A135283

/-! ## A135283.P3333143106737495423

`A054735(n+1)+A135286(n+1)-A037074(n+1)`
-/

namespace A135283.P3333143106737495423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (n + 1) + (A135286 (n + 1) - A037074 (n + 1))

end

end A135283.P3333143106737495423

namespace A135283

/-- `A054735(n+1)+A135286(n+1)-A037074(n+1)` -/
def P3333143106737495423.Spec : Prop :=
  ∀ n, P3333143106737495423.a n = A135283 (n + 1)

end A135283

/-! ## A135283.P13754250307099656739

`A135284(n+1)+A135286(n+1)-A135285(n+1)`
-/

namespace A135283.P13754250307099656739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135284 (n + 1) + (A135286 (n + 1) - A135285 (n + 1))

end

end A135283.P13754250307099656739

namespace A135283

/-- `A135284(n+1)+A135286(n+1)-A135285(n+1)` -/
def P13754250307099656739.Spec : Prop :=
  ∀ n, P13754250307099656739.a n = A135283 (n + 1)

end A135283

/-! ## A135283.P17630288124908505982

`A135284(n+1)+A001359(n+2)+A001359(n+2)`
-/

namespace A135283.P17630288124908505982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135284 (n + 1) + (A001359 (n + 2) + A001359 (n + 2))

end

end A135283.P17630288124908505982

namespace A135283

/-- `A135284(n+1)+A001359(n+2)+A001359(n+2)` -/
def P17630288124908505982.Spec : Prop :=
  ∀ n, P17630288124908505982.a n = A135283 (n + 1)

end A135283

/-! ## A135283.P9024486046637488287

`A082496(n+1)+A014574(n+2)`
-/

namespace A135283.P9024486046637488287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082496 (n + 1) + A014574 (n + 2)

end

end A135283.P9024486046637488287

namespace A135283

/-- `A082496(n+1)+A014574(n+2)` -/
def P9024486046637488287.Spec : Prop :=
  ∀ n, P9024486046637488287.a n = A135283 (n + 1)

end A135283

/-! ## A135283.P3931176094299596062

`A108605(n+1)+A006512(n+2)`
-/

namespace A135283.P3931176094299596062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108605 (n + 1) + A006512 (n + 2)

end

end A135283.P3931176094299596062

namespace A135283

/-- `A108605(n+1)+A006512(n+2)` -/
def P3931176094299596062.Spec : Prop :=
  ∀ n, P3931176094299596062.a n = A135283 (n + 1)

end A135283

/-! ## A135283.P58374248293627674

`A001359(n+1)+A014574(n+1)+A014574(n+2)`
-/

namespace A135283.P58374248293627674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + (A014574 (n + 1) + A014574 (n + 2))

end

end A135283.P58374248293627674

namespace A135283

/-- `A001359(n+1)+A014574(n+1)+A014574(n+2)` -/
def P58374248293627674.Spec : Prop :=
  ∀ n, P58374248293627674.a n = A135283 (n + 1)

end A135283

/-! ## A135283.P14875340970606817744

`A014574(n+1)+A111166(n+2)+A014574(n+1)`
-/

namespace A135283.P14875340970606817744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) + (A111166 (n + 2) + A014574 (n + 1))

end

end A135283.P14875340970606817744

namespace A135283

/-- `A014574(n+1)+A111166(n+2)+A014574(n+1)` -/
def P14875340970606817744.Spec : Prop :=
  ∀ n, P14875340970606817744.a n = A135283 (n + 1)

end A135283

/-! ## A135283.P5379219732298326061

`A006512(n+1)+A144834(n+1)+A014574(n+2)`
-/

namespace A135283.P5379219732298326061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) + (A144834 (n + 1) + A014574 (n + 2))

end

end A135283.P5379219732298326061

namespace A135283

/-- `A006512(n+1)+A144834(n+1)+A014574(n+2)` -/
def P5379219732298326061.Spec : Prop :=
  ∀ n, P5379219732298326061.a n = A135283 (n + 1)

end A135283

/-!
# A135284: Sum of staircase twin primes according to the rule: top + bottom - next top.

The programs for A135284, the canonical program `A135284.P4928143440831884536` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135284 has offset 1).

The definition of A135284 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, A054735, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A135284.P4928143440831884536

`A054735(n+1)-A001359(n+2)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A135284

/-- `A054735(n+1)-A001359(n+2)` -/
def P4928143440831884536.Spec : Prop :=
  ∀ n, P4928143440831884536.a n = A135284 (n + 1)

theorem P4928143440831884536.correct : P4928143440831884536.Spec := by
  intro n
  simp only [A135284, Nat.add_sub_cancel]

end A135284

/-! ## A135284.P7209721693424228658

`A006512(n+1)-A053319(n+1)`
-/

namespace A135284.P7209721693424228658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - A053319 (n + 1)

end

end A135284.P7209721693424228658

namespace A135284

/-- `A006512(n+1)-A053319(n+1)` -/
def P7209721693424228658.Spec : Prop :=
  ∀ n, P7209721693424228658.a n = A135284 (n + 1)

end A135284

/-! ## A135284.P2855476427076795035

`A001359(n+1)-A167132(n+1)`
-/

namespace A135284.P2855476427076795035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) - A167132 (n + 1)

end

end A135284.P2855476427076795035

namespace A135284

/-- `A001359(n+1)-A167132(n+1)` -/
def P2855476427076795035.Spec : Prop :=
  ∀ n, P2855476427076795035.a n = A135284 (n + 1)

end A135284

/-! ## A135284.P10513506176532422268

`A111046(n+1)-A135283(n+1)`
-/

namespace A135284.P10513506176532422268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111046 (n + 1) - A135283 (n + 1)

end

end A135284.P10513506176532422268

namespace A135284

/-- `A111046(n+1)-A135283(n+1)` -/
def P10513506176532422268.Spec : Prop :=
  ∀ n, P10513506176532422268.a n = A135284 (n + 1)

end A135284

/-! ## A135284.P15586347715321883289

`A176810(n+1)-A172057(n+1)`
-/

namespace A135284.P15586347715321883289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176810 (n + 1) - A172057 (n + 1)

end

end A135284.P15586347715321883289

namespace A135284

/-- `A176810(n+1)-A172057(n+1)` -/
def P15586347715321883289.Spec : Prop :=
  ∀ n, P15586347715321883289.a n = A135284 (n + 1)

end A135284

/-! ## A135284.P13598849156528440786

`A006512(n+1)-Δ[A001359(n+1)]`
-/

namespace A135284.P13598849156528440786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - (f1 (n + 1) - f1 n)

end

end A135284.P13598849156528440786

namespace A135284

/-- `A006512(n+1)-Δ[A001359(n+1)]` -/
def P13598849156528440786.Spec : Prop :=
  ∀ n, P13598849156528440786.a n = A135284 (n + 1)

end A135284

/-! ## A135284.P1227674157448011439

`A014574(n+1)+1-A053319(n+1)`
-/

namespace A135284.P1227674157448011439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) + (1 - A053319 (n + 1))

end

end A135284.P1227674157448011439

namespace A135284

/-- `A014574(n+1)+1-A053319(n+1)` -/
def P1227674157448011439.Spec : Prop :=
  ∀ n, P1227674157448011439.a n = A135284 (n + 1)

end A135284

/-! ## A135284.P14818138594475487082

`A001359(n+1)+2-A053319(n+1)`
-/

namespace A135284.P14818138594475487082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + (2 - A053319 (n + 1))

end

end A135284.P14818138594475487082

namespace A135284

/-- `A001359(n+1)+2-A053319(n+1)` -/
def P14818138594475487082.Spec : Prop :=
  ∀ n, P14818138594475487082.a n = A135284 (n + 1)

end A135284

/-! ## A135284.P18395257701430123530

`A006512(n+1)-(A167132(n+1)+2)`
-/

namespace A135284.P18395257701430123530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - (A167132 (n + 1) + 2)

end

end A135284.P18395257701430123530

namespace A135284

/-- `A006512(n+1)-(A167132(n+1)+2)` -/
def P18395257701430123530.Spec : Prop :=
  ∀ n, P18395257701430123530.a n = A135284 (n + 1)

end A135284

/-! ## A135284.P12717808875786542278

`2*A006512(n+1)-A172057(n+1)`
-/

namespace A135284.P12717808875786542278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006512 (n + 1) - A172057 (n + 1)

end

end A135284.P12717808875786542278

namespace A135284

/-- `2*A006512(n+1)-A172057(n+1)` -/
def P12717808875786542278.Spec : Prop :=
  ∀ n, P12717808875786542278.a n = A135284 (n + 1)

end A135284

/-! ## A135284.P9326657587903322546

`2*A054735(n+1)-A135283(n+1)`
-/

namespace A135284.P9326657587903322546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054735 (n + 1) - A135283 (n + 1)

end

end A135284.P9326657587903322546

namespace A135284

/-- `2*A054735(n+1)-A135283(n+1)` -/
def P9326657587903322546.Spec : Prop :=
  ∀ n, P9326657587903322546.a n = A135284 (n + 1)

end A135284

/-! ## A135284.P14426140923227947930

`A172057(n+1)-2*A053319(n+1)`
-/

namespace A135284.P14426140923227947930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (n + 1) - 2 * A053319 (n + 1)

end

end A135284.P14426140923227947930

namespace A135284

/-- `A172057(n+1)-2*A053319(n+1)` -/
def P14426140923227947930.Spec : Prop :=
  ∀ n, P14426140923227947930.a n = A135284 (n + 1)

end A135284

/-! ## A135284.P11945920499047351710

`A135285(n+1)+2-A001359(n+1)²`
-/

namespace A135284.P11945920499047351710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135285 (n + 1) + (2 - A001359 (n + 1) ^ 2)

end

end A135284.P11945920499047351710

namespace A135284

/-- `A135285(n+1)+2-A001359(n+1)²` -/
def P11945920499047351710.Spec : Prop :=
  ∀ n, P11945920499047351710.a n = A135284 (n + 1)

end A135284

/-! ## A135284.P8131922033659008577

`A006512(n+1)²-(A135286(n+1)+2)`
-/

namespace A135284.P8131922033659008577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) ^ 2 - (A135286 (n + 1) + 2)

end

end A135284.P8131922033659008577

namespace A135284

/-- `A006512(n+1)²-(A135286(n+1)+2)` -/
def P8131922033659008577.Spec : Prop :=
  ∀ n, P8131922033659008577.a n = A135284 (n + 1)

end A135284

/-! ## A135284.P10154627427842861164

`A014574(n+1)+1-Δ[A001359(n+1)]`
-/

namespace A135284.P10154627427842861164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) + (1 - (f1 (n + 1) - f1 n))

end

end A135284.P10154627427842861164

namespace A135284

/-- `A014574(n+1)+1-Δ[A001359(n+1)]` -/
def P10154627427842861164.Spec : Prop :=
  ∀ n, P10154627427842861164.a n = A135284 (n + 1)

end A135284

/-! ## A135284.P2316256048807764363

`A006512(n+1)-Δ[2*A040040(n+1)]`
-/

namespace A135284.P2316256048807764363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - (f1 (n + 1) - f1 n)

end

end A135284.P2316256048807764363

namespace A135284

/-- `A006512(n+1)-Δ[2*A040040(n+1)]` -/
def P2316256048807764363.Spec : Prop :=
  ∀ n, P2316256048807764363.a n = A135284 (n + 1)

end A135284

/-! ## A135284.P6015010081557888532

`A037074(n+1)+A054735(n+1)-A135286(n+1)`
-/

namespace A135284.P6015010081557888532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037074 (n + 1) + (A054735 (n + 1) - A135286 (n + 1))

end

end A135284.P6015010081557888532

namespace A135284

/-- `A037074(n+1)+A054735(n+1)-A135286(n+1)` -/
def P6015010081557888532.Spec : Prop :=
  ∀ n, P6015010081557888532.a n = A135284 (n + 1)

end A135284

/-! ## A135284.P8360343152646762137

`A054735(n+1)+A135285(n+1)-A037074(n+1)`
-/

namespace A135284.P8360343152646762137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (n + 1) + (A135285 (n + 1) - A037074 (n + 1))

end

end A135284.P8360343152646762137

namespace A135284

/-- `A054735(n+1)+A135285(n+1)-A037074(n+1)` -/
def P8360343152646762137.Spec : Prop :=
  ∀ n, P8360343152646762137.a n = A135284 (n + 1)

end A135284

/-! ## A135284.P1783980021006366000

`A135283(n+1)+A135285(n+1)-A135286(n+1)`
-/

namespace A135284.P1783980021006366000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135283 (n + 1) + (A135285 (n + 1) - A135286 (n + 1))

end

end A135284.P1783980021006366000

namespace A135284

/-- `A135283(n+1)+A135285(n+1)-A135286(n+1)` -/
def P1783980021006366000.Spec : Prop :=
  ∀ n, P1783980021006366000.a n = A135284 (n + 1)

end A135284

/-! ## A135284.P17618883675958743743

`A001359(n+1)+A006512(n+1)-A001359(n+2)`
-/

namespace A135284.P17618883675958743743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + (A006512 (n + 1) - A001359 (n + 2))

end

end A135284.P17618883675958743743

namespace A135284

/-- `A001359(n+1)+A006512(n+1)-A001359(n+2)` -/
def P17618883675958743743.Spec : Prop :=
  ∀ n, P17618883675958743743.a n = A135284 (n + 1)

end A135284

/-!
# A135285: Sum of staircase twin primes according to the rule: top * bottom - next top.

The programs for A135285, the canonical program `A135285.P2730746227463814090` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135285 has offset 1).

The definition of A135285 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, A037074, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A135285.P2730746227463814090

`A037074(n+1)-A001359(n+2)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A135285

/-- `A037074(n+1)-A001359(n+2)` -/
def P2730746227463814090.Spec : Prop :=
  ∀ n, P2730746227463814090.a n = A135285 (n + 1)

theorem P2730746227463814090.correct : P2730746227463814090.Spec := by
  intro n
  simp only [A135285, Nat.add_sub_cancel]

end A135285

/-! ## A135285.P1773671566810139013

`A071142(n+1)-A135286(n+1)`
-/

namespace A135285.P1773671566810139013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071142 (n + 1) - A135286 (n + 1)

end

end A135285.P1773671566810139013

namespace A135285

/-- `A071142(n+1)-A135286(n+1)` -/
def P1773671566810139013.Spec : Prop :=
  ∀ n, P1773671566810139013.a n = A135285 (n + 1)

end A135285

/-! ## A135285.P2867192698408300767

`2*A037074(n+1)-A135286(n+1)`
-/

namespace A135285.P2867192698408300767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037074 (n + 1) - A135286 (n + 1)

end

end A135285.P2867192698408300767

namespace A135285

/-- `2*A037074(n+1)-A135286(n+1)` -/
def P2867192698408300767.Spec : Prop :=
  ∀ n, P2867192698408300767.a n = A135285 (n + 1)

end A135285

/-! ## A135285.P16510418426522560880

`A075369(n+1)-6*A002822(n+1)`
-/

namespace A135285.P16510418426522560880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075369 (n + 1) - 6 * A002822 (n + 1)

end

end A135285.P16510418426522560880

namespace A135285

/-- `A075369(n+1)-6*A002822(n+1)` -/
def P16510418426522560880.Spec : Prop :=
  ∀ n, P16510418426522560880.a n = A135285 (n + 1)

end A135285

/-! ## A135285.P6824664280493269396

`A014574(n+1)²+1-A172057(n+1)`
-/

namespace A135285.P6824664280493269396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) ^ 2 + (1 - A172057 (n + 1))

end

end A135285.P6824664280493269396

namespace A135285

/-- `A014574(n+1)²+1-A172057(n+1)` -/
def P6824664280493269396.Spec : Prop :=
  ∀ n, P6824664280493269396.a n = A135285 (n + 1)

end A135285

/-! ## A135285.P3096860499162012945

`A001359(n+1)²+A135284(n+1)-2`
-/

namespace A135285.P3096860499162012945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) ^ 2 + (A135284 (n + 1) - 2)

end

end A135285.P3096860499162012945

namespace A135285

/-- `A001359(n+1)²+A135284(n+1)-2` -/
def P3096860499162012945.Spec : Prop :=
  ∀ n, P3096860499162012945.a n = A135285 (n + 1)

end A135285

/-! ## A135285.P16819606490899382781

`A006512(n+1)²-(A135283(n+1)+2)`
-/

namespace A135285.P16819606490899382781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) ^ 2 - (A135283 (n + 1) + 2)

end

end A135285.P16819606490899382781

namespace A135285

/-- `A006512(n+1)²-(A135283(n+1)+2)` -/
def P16819606490899382781.Spec : Prop :=
  ∀ n, P16819606490899382781.a n = A135285 (n + 1)

end A135285

/-! ## A135285.P237604744502187991

`A037074(n+1)+A054735(n+1)-A135283(n+1)`
-/

namespace A135285.P237604744502187991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037074 (n + 1) + (A054735 (n + 1) - A135283 (n + 1))

end

end A135285.P237604744502187991

namespace A135285

/-- `A037074(n+1)+A054735(n+1)-A135283(n+1)` -/
def P237604744502187991.Spec : Prop :=
  ∀ n, P237604744502187991.a n = A135285 (n + 1)

end A135285

/-! ## A135285.P17537573974551857031

`A037074(n+1)+A135284(n+1)-A054735(n+1)`
-/

namespace A135285.P17537573974551857031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037074 (n + 1) + (A135284 (n + 1) - A054735 (n + 1))

end

end A135285.P17537573974551857031

namespace A135285

/-- `A037074(n+1)+A135284(n+1)-A054735(n+1)` -/
def P17537573974551857031.Spec : Prop :=
  ∀ n, P17537573974551857031.a n = A135285 (n + 1)

end A135285

/-! ## A135285.P8385646739675879642

`A135284(n+1)+A135286(n+1)-A135283(n+1)`
-/

namespace A135285.P8385646739675879642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135284 (n + 1) + (A135286 (n + 1) - A135283 (n + 1))

end

end A135285.P8385646739675879642

namespace A135285

/-- `A135284(n+1)+A135286(n+1)-A135283(n+1)` -/
def P8385646739675879642.Spec : Prop :=
  ∀ n, P8385646739675879642.a n = A135285 (n + 1)

end A135285

/-! ## A135285.P6629329897827245891

`A126251(n+1)-(A006512(n+1)+A001359(n+2))`
-/

namespace A135285.P6629329897827245891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126251 (n + 1) - (A006512 (n + 1) + A001359 (n + 2))

end

end A135285.P6629329897827245891

namespace A135285

/-- `A126251(n+1)-(A006512(n+1)+A001359(n+2))` -/
def P6629329897827245891.Spec : Prop :=
  ∀ n, P6629329897827245891.a n = A135285 (n + 1)

end A135285

/-! ## A135285.P9391391748854550541

`A001359(n+1)*A014574(n+1)-A053319(n+1)`
-/

namespace A135285.P9391391748854550541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) * A014574 (n + 1) - A053319 (n + 1)

end

end A135285.P9391391748854550541

namespace A135285

/-- `A001359(n+1)*A014574(n+1)-A053319(n+1)` -/
def P9391391748854550541.Spec : Prop :=
  ∀ n, P9391391748854550541.a n = A135285 (n + 1)

end A135285

/-! ## A135285.P10623102360929673992

`A135286(n+1)-(A001359(n+2)+A001359(n+2))`
-/

namespace A135285.P10623102360929673992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135286 (n + 1) - (A001359 (n + 2) + A001359 (n + 2))

end

end A135285.P10623102360929673992

namespace A135285

/-- `A135286(n+1)-(A001359(n+2)+A001359(n+2))` -/
def P10623102360929673992.Spec : Prop :=
  ∀ n, P10623102360929673992.a n = A135285 (n + 1)

end A135285

/-! ## A135285.P15140118901801574077

`A001359(n+1)*A006512(n+1)-A001359(n+2)`
-/

namespace A135285.P15140118901801574077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) * A006512 (n + 1) - A001359 (n + 2)

end

end A135285.P15140118901801574077

namespace A135285

/-- `A001359(n+1)*A006512(n+1)-A001359(n+2)` -/
def P15140118901801574077.Spec : Prop :=
  ∀ n, P15140118901801574077.a n = A135285 (n + 1)

end A135285

/-! ## A135285.P18184987254295474730

`A126248(n+1)/A014574(n+1)-A001359(n+2)`
-/

namespace A135285.P18184987254295474730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126248 (n + 1) : ℚ) / (A014574 (n + 1) : ℚ) - (A001359 (n + 2) : ℚ)

end

end A135285.P18184987254295474730

namespace A135285

/-- `A126248(n+1)/A014574(n+1)-A001359(n+2)` -/
def P18184987254295474730.Spec : Prop :=
  ∀ n, P18184987254295474730.a n = (A135285 (n + 1) : ℚ)

end A135285

/-! ## A135285.P519906350359246661

`A075369(n+1)-A014574(n+2)`
-/

namespace A135285.P519906350359246661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075369 (n + 1) - A014574 (n + 2)

end

end A135285.P519906350359246661

namespace A135285

/-- `A075369(n+1)-A014574(n+2)` -/
def P519906350359246661.Spec : Prop :=
  ∀ n, P519906350359246661.a n = A135285 (n + 1)

end A135285

/-! ## A135285.P14650138847714652065

`A135286(n+1)-A108605(n+2)`
-/

namespace A135285.P14650138847714652065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135286 (n + 1) - A108605 (n + 2)

end

end A135285.P14650138847714652065

namespace A135285

/-- `A135286(n+1)-A108605(n+2)` -/
def P14650138847714652065.Spec : Prop :=
  ∀ n, P14650138847714652065.a n = A135285 (n + 1)

end A135285

/-! ## A135285.P7552656157626481357

`A014574(n+1)²-A014574(n+2)`
-/

namespace A135285.P7552656157626481357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) ^ 2 - A014574 (n + 2)

end

end A135285.P7552656157626481357

namespace A135285

/-- `A014574(n+1)²-A014574(n+2)` -/
def P7552656157626481357.Spec : Prop :=
  ∀ n, P7552656157626481357.a n = A135285 (n + 1)

end A135285

/-! ## A135285.P15361331474449823346

`A037074(n+1)-Δ[A086167(n+1)]`
-/

namespace A135285.P15361331474449823346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037074 (n + 1) - (f1 (n + 1) - f1 n)

end

end A135285.P15361331474449823346

namespace A135285

/-- `A037074(n+1)-Δ[A086167(n+1)]` -/
def P15361331474449823346.Spec : Prop :=
  ∀ n, P15361331474449823346.a n = A135285 (n + 1)

end A135285

/-! ## A135285.P341262084245988498

`A001359(n+1)*A067829(n+2)-A001359(n+2)`
-/

namespace A135285.P341262084245988498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) * A067829 (n + 2) - A001359 (n + 2)

end

end A135285.P341262084245988498

namespace A135285

/-- `A001359(n+1)*A067829(n+2)-A001359(n+2)` -/
def P341262084245988498.Spec : Prop :=
  ∀ n, P341262084245988498.a n = A135285 (n + 1)

end A135285

/-!
# A135286: Sum of staircase twin primes according to the rule: top * bottom + next top.

The programs for A135286, the canonical program `A135286.P6895682011203157871` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135286 has offset 1).

The definition of A135286 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, A037074, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A135286.P6895682011203157871

`A037074(n+1)+A001359(n+2)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A135286

/-- `A037074(n+1)+A001359(n+2)` -/
def P6895682011203157871.Spec : Prop :=
  ∀ n, P6895682011203157871.a n = A135286 (n + 1)

theorem P6895682011203157871.correct : P6895682011203157871.Spec := by
  intro n
  simp only [A135286, Nat.add_sub_cancel]

end A135286

/-! ## A135286.P1642053271304529400

`A167132(n+1)+A126251(n+1)`
-/

namespace A135286.P1642053271304529400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167132 (n + 1) + A126251 (n + 1)

end

end A135286.P1642053271304529400

namespace A135286

/-- `A167132(n+1)+A126251(n+1)` -/
def P1642053271304529400.Spec : Prop :=
  ∀ n, P1642053271304529400.a n = A135286 (n + 1)

end A135286

/-! ## A135286.P17683707004806108560

`A071142(n+1)-A135285(n+1)`
-/

namespace A135286.P17683707004806108560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071142 (n + 1) - A135285 (n + 1)

end

end A135286.P17683707004806108560

namespace A135286

/-- `A071142(n+1)-A135285(n+1)` -/
def P17683707004806108560.Spec : Prop :=
  ∀ n, P17683707004806108560.a n = A135286 (n + 1)

end A135286

/-! ## A135286.P18086145859314227165

`A001359(n+2)+A120875(n+1)+1`
-/

namespace A135286.P18086145859314227165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 2) + (A120875 (n + 1) + 1)

end

end A135286.P18086145859314227165

namespace A135286

/-- `A001359(n+2)+A120875(n+1)+1` -/
def P18086145859314227165.Spec : Prop :=
  ∀ n, P18086145859314227165.a n = A135286 (n + 1)

end A135286

/-! ## A135286.P8218912016107855316

`2*A037074(n+1)-A135285(n+1)`
-/

namespace A135286.P8218912016107855316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037074 (n + 1) - A135285 (n + 1)

end

end A135286.P8218912016107855316

namespace A135286

/-- `2*A037074(n+1)-A135285(n+1)` -/
def P8218912016107855316.Spec : Prop :=
  ∀ n, P8218912016107855316.a n = A135286 (n + 1)

end A135286

/-! ## A135286.P13521639460628169271

`A001359(n+1)²+A135283(n+1)-2`
-/

namespace A135286.P13521639460628169271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) ^ 2 + (A135283 (n + 1) - 2)

end

end A135286.P13521639460628169271

namespace A135286

/-- `A001359(n+1)²+A135283(n+1)-2` -/
def P13521639460628169271.Spec : Prop :=
  ∀ n, P13521639460628169271.a n = A135286 (n + 1)

end A135286

/-! ## A135286.P2795474441587759161

`A006512(n+1)²-(A135284(n+1)+2)`
-/

namespace A135286.P2795474441587759161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) ^ 2 - (A135284 (n + 1) + 2)

end

end A135286.P2795474441587759161

namespace A135286

/-- `A006512(n+1)²-(A135284(n+1)+2)` -/
def P2795474441587759161.Spec : Prop :=
  ∀ n, P2795474441587759161.a n = A135286 (n + 1)

end A135286

/-! ## A135286.P17730229195106338867

`A037074(n+1)+A054735(n+1)-A135284(n+1)`
-/

namespace A135286.P17730229195106338867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037074 (n + 1) + (A054735 (n + 1) - A135284 (n + 1))

end

end A135286.P17730229195106338867

namespace A135286

/-- `A037074(n+1)+A054735(n+1)-A135284(n+1)` -/
def P17730229195106338867.Spec : Prop :=
  ∀ n, P17730229195106338867.a n = A135286 (n + 1)

end A135286

/-! ## A135286.P9976318515129964255

`A037074(n+1)+A135283(n+1)-A054735(n+1)`
-/

namespace A135286.P9976318515129964255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037074 (n + 1) + (A135283 (n + 1) - A054735 (n + 1))

end

end A135286.P9976318515129964255

namespace A135286

/-- `A037074(n+1)+A135283(n+1)-A054735(n+1)` -/
def P9976318515129964255.Spec : Prop :=
  ∀ n, P9976318515129964255.a n = A135286 (n + 1)

end A135286

/-! ## A135286.P14598601403359487802

`A135283(n+1)+A135285(n+1)-A135284(n+1)`
-/

namespace A135286.P14598601403359487802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135283 (n + 1) + (A135285 (n + 1) - A135284 (n + 1))

end

end A135286.P14598601403359487802

namespace A135286

/-- `A135283(n+1)+A135285(n+1)-A135284(n+1)` -/
def P14598601403359487802.Spec : Prop :=
  ∀ n, P14598601403359487802.a n = A135286 (n + 1)

end A135286

/-! ## A135286.P5852929115019585294

`A126251(n+1)+A001359(n+2)-A006512(n+1)`
-/

namespace A135286.P5852929115019585294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126251 (n + 1) + (A001359 (n + 2) - A006512 (n + 1))

end

end A135286.P5852929115019585294

namespace A135286

/-- `A126251(n+1)+A001359(n+2)-A006512(n+1)` -/
def P5852929115019585294.Spec : Prop :=
  ∀ n, P5852929115019585294.a n = A135286 (n + 1)

end A135286

/-! ## A135286.P15175072850698044845

`A135285(n+1)+A001359(n+2)+A001359(n+2)`
-/

namespace A135286.P15175072850698044845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135285 (n + 1) + (A001359 (n + 2) + A001359 (n + 2))

end

end A135286.P15175072850698044845

namespace A135286

/-- `A135285(n+1)+A001359(n+2)+A001359(n+2)` -/
def P15175072850698044845.Spec : Prop :=
  ∀ n, P15175072850698044845.a n = A135286 (n + 1)

end A135286

/-! ## A135286.P10622368334981325769

`A040040(n+2)+A120875(n+1)+A040040(n+2)`
-/

namespace A135286.P10622368334981325769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 2) + (A120875 (n + 1) + A040040 (n + 2))

end

end A135286.P10622368334981325769

namespace A135286

/-- `A040040(n+2)+A120875(n+1)+A040040(n+2)` -/
def P10622368334981325769.Spec : Prop :=
  ∀ n, P10622368334981325769.a n = A135286 (n + 1)

end A135286

/-! ## A135286.P16353061658104453010

`A001359(n+2)+A001359(n+1)*A006512(n+1)`
-/

namespace A135286.P16353061658104453010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 2) + A001359 (n + 1) * A006512 (n + 1)

end

end A135286.P16353061658104453010

namespace A135286

/-- `A001359(n+2)+A001359(n+1)*A006512(n+1)` -/
def P16353061658104453010.Spec : Prop :=
  ∀ n, P16353061658104453010.a n = A135286 (n + 1)

end A135286

/-! ## A135286.P6628571200926432947

`A001359(n+2)+A126248(n+1)/A014574(n+1)`
-/

namespace A135286.P6628571200926432947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001359 (n + 2) : ℚ) + (A126248 (n + 1) : ℚ) / (A014574 (n + 1) : ℚ)

end

end A135286.P6628571200926432947

namespace A135286

/-- `A001359(n+2)+A126248(n+1)/A014574(n+1)` -/
def P6628571200926432947.Spec : Prop :=
  ∀ n, P6628571200926432947.a n = (A135286 (n + 1) : ℚ)

end A135286

/-! ## A135286.P15092400989016042608

`A006512(n+1)²+A167132(n+1)-A006512(n+1)`
-/

namespace A135286.P15092400989016042608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) ^ 2 + (A167132 (n + 1) - A006512 (n + 1))

end

end A135286.P15092400989016042608

namespace A135286

/-- `A006512(n+1)²+A167132(n+1)-A006512(n+1)` -/
def P15092400989016042608.Spec : Prop :=
  ∀ n, P15092400989016042608.a n = A135286 (n + 1)

end A135286

/-! ## A135286.P951231756895116721

`A120875(n+1)+A014574(n+2)`
-/

namespace A135286.P951231756895116721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120875 (n + 1) + A014574 (n + 2)

end

end A135286.P951231756895116721

namespace A135286

/-- `A120875(n+1)+A014574(n+2)` -/
def P951231756895116721.Spec : Prop :=
  ∀ n, P951231756895116721.a n = A135286 (n + 1)

end A135286

/-! ## A135286.P9868277943941380889

`A144834(n+2)+A075369(n+1)`
-/

namespace A135286.P9868277943941380889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (n + 2) + A075369 (n + 1)

end

end A135286.P9868277943941380889

namespace A135286

/-- `A144834(n+2)+A075369(n+1)` -/
def P9868277943941380889.Spec : Prop :=
  ∀ n, P9868277943941380889.a n = A135286 (n + 1)

end A135286

/-! ## A135286.P10880801436184810506

`A037074(n+1)+Δ[A086167(n+1)]`
-/

namespace A135286.P10880801436184810506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037074 (n + 1) + (f1 (n + 1) - f1 n)

end

end A135286.P10880801436184810506

namespace A135286

/-- `A037074(n+1)+Δ[A086167(n+1)]` -/
def P10880801436184810506.Spec : Prop :=
  ∀ n, P10880801436184810506.a n = A135286 (n + 1)

end A135286

/-! ## A135286.P11178184769297243689

`A120876(n+1)+A120876(n+1)+A014574(n+2)`
-/

namespace A135286.P11178184769297243689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120876 (n + 1) + (A120876 (n + 1) + A014574 (n + 2))

end

end A135286.P11178184769297243689

namespace A135286

/-- `A120876(n+1)+A120876(n+1)+A014574(n+2)` -/
def P11178184769297243689.Spec : Prop :=
  ∀ n, P11178184769297243689.a n = A135286 (n + 1)

end A135286

/-!
# A135287: a(0)=1; for n > 0, a(n) = a(n-1)+n if a(n-1) is odd, else a(n) = a(n-1)/2.

The programs for A135287, the canonical program `A135287.P6099636221413021975` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135287 has offset 0).

The definition of A135287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135287.P6099636221413021975

`(a(n-1)+2*n)/gcd(2, a(n-1))-n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A135287

/-- `(a(n-1)+2*n)/gcd(2, a(n-1))-n` -/
def P6099636221413021975.Spec : Prop :=
  ∀ n, P6099636221413021975.a n = (A135287 n : ℚ)

end A135287

/-! ## A135287.P5752593167587954040

`A138037(n+2)-2*(n+1)`
-/

namespace A135287.P5752593167587954040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138037 (n + 2) - (2 * (n + 1) : ℤ)

end

end A135287.P5752593167587954040

namespace A135287

/-- `A138037(n+2)-2*(n+1)` -/
def P5752593167587954040.Spec : Prop :=
  ∀ n, P5752593167587954040.a n = A135287 n

end A135287

/-! ## A135287.P217822146676785144

`∑[Δ[A138037(n+1)]-1]-n`
-/

namespace A135287.P217822146676785144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138037 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A135287.P217822146676785144

namespace A135287

/-- `∑[Δ[A138037(n+1)]-1]-n` -/
def P217822146676785144.Spec : Prop :=
  ∀ n, P217822146676785144.a n = A135287 n

end A135287

/-! ## A135287.P17012785319512981164

`A026741(a(n-1))+n*A000035(a(n-1))` with `a(0)=1`
-/

namespace A135287.P17012785319512981164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026741 (a (n - 1)).toNat + (n : ℤ) * A000035 (a (n - 1)).toNat

end

end A135287.P17012785319512981164

namespace A135287

/-- `A026741(a(n-1))+n*A000035(a(n-1))` -/
def P17012785319512981164.Spec : Prop :=
  ∀ n, P17012785319512981164.a n = A135287 n

end A135287

/-! ## A135287.P2916235647074030623

`A026741(A005843(n)+a(n-1))-n` with `a(0)=1`
-/

namespace A135287.P2916235647074030623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026741 (A005843 n + a (n - 1)).toNat - (n : ℤ)

end

end A135287.P2916235647074030623

namespace A135287

/-- `A026741(A005843(n)+a(n-1))-n` -/
def P2916235647074030623.Spec : Prop :=
  ∀ n, P2916235647074030623.a n = A135287 n

end A135287

/-!
# A135290: Row 11 of A038207.

The programs for A135290, there is no canonical definition to state claims against.
-/

/-! ## A135290.P5724277956310944781

`A038207(n+66)`
-/

namespace A135290.P5724277956310944781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 (n + 66)

end

end A135290.P5724277956310944781

/-! ## A135290.P17469548663370086194

`A157751(A052905(n+7)+27)`
-/

namespace A135290.P17469548663370086194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157751 (A052905 (n + 7) + 27).toNat

end

end A135290.P17469548663370086194

/-!
# A135291: Product of the nonzero exponents in the prime factorization of n!.

The programs for A135291, the canonical program `A135291.P15334371247132927282` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135291 has offset 0).

The definition of A135291 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A049614, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A135291.P15334371247132927282

`A000005(A049614(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A135291

/-- `A000005(A049614(n))` -/
def P15334371247132927282.Spec : Prop :=
  ∀ n, P15334371247132927282.a n = A135291 n

theorem P15334371247132927282.correct : P15334371247132927282.Spec := by
  intro n
  simp only [A135291]

end A135291

/-! ## A135291.P16078672400200336501

`∏{p}[floor(n/2)!, val(n!, #)]`
-/

namespace A135291.P16078672400200336501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (Nat.factorial n) p

end

end A135291.P16078672400200336501

namespace A135291

/-- `∏{p}[floor(n/2)!, val(n!, #)]` -/
def P16078672400200336501.Spec : Prop :=
  ∀ n, (P16078672400200336501.a n : ℤ) = A135291 n

end A135291

/-! ## A135291.P6462687984367261379

`∏{p}[A081123(n), val(A000142(n), #)]`
-/

namespace A135291.P6462687984367261379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, SequenceMachineLib.valuation (A000142 n).toNat p

end

end A135291.P6462687984367261379

namespace A135291

/-- `∏{p}[A081123(n), val(A000142(n), #)]` -/
def P6462687984367261379.Spec : Prop :=
  ∀ n, (P6462687984367261379.a n : ℤ) = A135291 n

end A135291

/-! ## A135291.P4830076640111068169

`∏{p}[A034386(n), val(n!, #)]`
-/

namespace A135291.P4830076640111068169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, SequenceMachineLib.valuation (Nat.factorial n) p

end

end A135291.P4830076640111068169

namespace A135291

/-- `∏{p}[A034386(n), val(n!, #)]` -/
def P4830076640111068169.Spec : Prop :=
  ∀ n, (P4830076640111068169.a n : ℤ) = A135291 n

end A135291

/-! ## A135291.P2898108570024404501

`∏{p}[A034386(n), val(A000142(n), #)]`
-/

namespace A135291.P2898108570024404501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, SequenceMachineLib.valuation (A000142 n).toNat p

end

end A135291.P2898108570024404501

namespace A135291

/-- `∏{p}[A034386(n), val(A000142(n), #)]` -/
def P2898108570024404501.Spec : Prop :=
  ∀ n, (P2898108570024404501.a n : ℤ) = A135291 n

end A135291

/-!
# A135292: a(n) = 5^n * 4^(n^2).

The programs for A135292, the canonical program `A135292.P13973659877498872844` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135292 has offset 0).

The definition of A135292 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n*4^n²` (program `A135292.P13973659877498872844`, by `A135292.P13973659877498872844.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135292.P13973659877498872844

`5^n*4^n²`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A135292

/-- `5^n*4^n²` -/
def P13973659877498872844.Spec : Prop :=
  ∀ n, (P13973659877498872844.a n : ℤ) = A135292 n

theorem P13973659877498872844.correct : P13973659877498872844.Spec := by
  intro n
  simp only [A135292]

end A135292

/-! ## A135292.P1469391041299438202

`lcm(4^n², 5^n)`
-/

namespace A135292.P1469391041299438202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (4 ^ n ^ 2) (5 ^ n)

end

end A135292.P1469391041299438202

namespace A135292

/-- `lcm(4^n², 5^n)` -/
def P1469391041299438202.Spec : Prop :=
  ∀ n, (P1469391041299438202.a n : ℤ) = A135292 n

end A135292

/-! ## A135292.P1879088463706138858

`∏[A003947(2*n)]`
-/

namespace A135292.P1879088463706138858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003947 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135292.P1879088463706138858

namespace A135292

/-- `∏[A003947(2*n)]` -/
def P1879088463706138858.Spec : Prop :=
  ∀ n, P1879088463706138858.a n = A135292 n

end A135292

/-! ## A135292.P13615277363242329715

`∏[Δ[A163834(comp[2*(n+1)])]]`
-/

namespace A135292.P13615277363242329715
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163834 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135292.P13615277363242329715

namespace A135292

/-- `∏[Δ[A163834(comp[2*(n+1)])]]` -/
def P13615277363242329715.Spec : Prop :=
  ∀ n, P13615277363242329715.a n = A135292 n

end A135292

/-! ## A135292.P13922695535169073461

`A003947(A250251(n+1))^n`
-/

namespace A135292.P13922695535169073461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003947 (A250251 (n + 1)).toNat ^ n

end

end A135292.P13922695535169073461

namespace A135292

/-- `A003947(A250251(n+1))^n` -/
def P13922695535169073461.Spec : Prop :=
  ∀ n, P13922695535169073461.a n = A135292 n

end A135292

/-!
# A135293: Differences between successive numbers whose sum of digits in base 3 is 2.

The programs for A135293, the canonical program `A135293.P11902622684303207903` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135293 has offset 0).

The definition of A135293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135293.P11902622684303207903

`abs(Δ[A055235(abs(1-n))])`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A135293

/-- `abs(Δ[A055235(abs(1-n))])` -/
def P11902622684303207903.Spec : Prop :=
  ∀ n, P11902622684303207903.a n = A135293 n

theorem P11902622684303207903.correct : P11902622684303207903.Spec := by
  intro n
  simp only [A135293]

end A135293

/-! ## A135293.P967069462400792658

`A055235(n)-record[A325984(A001969(n+1))]`
-/

namespace A135293.P967069462400792658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325984 (A001969 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055235 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135293.P967069462400792658

namespace A135293

/-- `A055235(n)-record[A325984(A001969(n+1))]` -/
def P967069462400792658.Spec : Prop :=
  ∀ n, P967069462400792658.a n = A135293 n

end A135293

/-! ## A135293.P12853048314387227947

`Δ[record[A325984(A038556(n))]]`
-/

namespace A135293.P12853048314387227947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325984 (A038556 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135293.P12853048314387227947

namespace A135293

/-- `Δ[record[A325984(A038556(n))]]` -/
def P12853048314387227947.Spec : Prop :=
  ∀ n, P12853048314387227947.a n = A135293 n

end A135293

/-! ## A135293.P11399056326439881032

`Δ[A325984(A340161(n)-1)]`
-/

namespace A135293.P11399056326439881032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325984 (A340161 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135293.P11399056326439881032

namespace A135293

/-- `Δ[A325984(A340161(n)-1)]` -/
def P11399056326439881032.Spec : Prop :=
  ∀ n, P11399056326439881032.a n = A135293 n

end A135293

/-! ## A135293.P13432713895387738187

`Δ[record[A325984(A001969(n+1))]]`
-/

namespace A135293.P13432713895387738187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325984 (A001969 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135293.P13432713895387738187

namespace A135293

/-- `Δ[record[A325984(A001969(n+1))]]` -/
def P13432713895387738187.Spec : Prop :=
  ∀ n, P13432713895387738187.a n = A135293 n

end A135293

/-!
# A135295: a(n) = n^(number of decimal digits of n).

The programs for A135295, the canonical program `A135295.P7575543575562511418` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135295 has offset 0).

The definition of A135295 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A135295.P7575543575562511418

`n^A055642(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A135295

/-- `n^A055642(n)` -/
def P7575543575562511418.Spec : Prop :=
  ∀ n, P7575543575562511418.a n = (A135295 n : ℚ)

end A135295

/-! ## A135295.P15616127590054311520

`∏{digits}[n, C(#, 10)+n]`
-/

namespace A135295.P15616127590054311520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose x 10 + n).prod

end

end A135295.P15616127590054311520

namespace A135295

/-- `∏{digits}[n, C(#, 10)+n]` -/
def P15616127590054311520.Spec : Prop :=
  ∀ n, (P15616127590054311520.a n : ℤ) = A135295 n

end A135295

/-! ## A135295.P7926833926820250918

`∏{digits}[n, n-C(#, 10)]`
-/

namespace A135295.P7926833926820250918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (n : ℤ) - (Nat.choose x 10 : ℤ)).prod

end

end A135295.P7926833926820250918

namespace A135295

/-- `∏{digits}[n, n-C(#, 10)]` -/
def P7926833926820250918.Spec : Prop :=
  ∀ n, P7926833926820250918.a n = A135295 n

end A135295

/-! ## A135295.P3260578906846558902

`∏{digits}[n, gcd(n, n*#)]`
-/

namespace A135295.P3260578906846558902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.gcd n (n * x)).prod

end

end A135295.P3260578906846558902

namespace A135295

/-- `∏{digits}[n, gcd(n, n*#)]` -/
def P3260578906846558902.Spec : Prop :=
  ∀ n, (P3260578906846558902.a n : ℤ) = A135295 n

end A135295

/-! ## A135295.P2149952638548827729

`∏{digits}[n, xor(#, xor(n, #))]`
-/

namespace A135295.P2149952638548827729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.xor x (Nat.xor n x)).prod

end

end A135295.P2149952638548827729

namespace A135295

/-- `∏{digits}[n, xor(#, xor(n, #))]` -/
def P2149952638548827729.Spec : Prop :=
  ∀ n, (P2149952638548827729.a n : ℤ) = A135295 n

end A135295

/-! ## A135295.P4676989504015013472

`∏{digits}[n, and(2, #²)+n]`
-/

namespace A135295.P4676989504015013472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.land 2 (x ^ 2) + n).prod

end

end A135295.P4676989504015013472

namespace A135295

/-- `∏{digits}[n, and(2, #²)+n]` -/
def P4676989504015013472.Spec : Prop :=
  ∀ n, (P4676989504015013472.a n : ℤ) = A135295 n

end A135295

/-! ## A135295.P12800709534264772661

`∏{digits}[n, n-and(2, #²)]`
-/

namespace A135295.P12800709534264772661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (n : ℤ) - (Nat.land 2 (x ^ 2) : ℤ)).prod

end

end A135295.P12800709534264772661

namespace A135295

/-- `∏{digits}[n, n-and(2, #²)]` -/
def P12800709534264772661.Spec : Prop :=
  ∀ n, P12800709534264772661.a n = A135295 n

end A135295

/-! ## A135295.P12460812761901041201

`∏{digits}[n, lcm(n, (-1)^#)]`
-/

namespace A135295.P12460812761901041201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Int.lcm (n : ℤ) ((-1) ^ x)).prod

end

end A135295.P12460812761901041201

namespace A135295

/-- `∏{digits}[n, lcm(n, (-1)^#)]` -/
def P12460812761901041201.Spec : Prop :=
  ∀ n, (P12460812761901041201.a n : ℤ) = A135295 n

end A135295

/-! ## A135295.P8133485984642277644

`∏{digits}[n, n*and(1, #)!]`
-/

namespace A135295.P8133485984642277644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => n * Nat.factorial (Nat.land 1 x)).prod

end

end A135295.P8133485984642277644

namespace A135295

/-- `∏{digits}[n, n*and(1, #)!]` -/
def P8133485984642277644.Spec : Prop :=
  ∀ n, (P8133485984642277644.a n : ℤ) = A135295 n

end A135295

/-! ## A135295.P18243481835364141779

`∏{digits}[n, n/and(1, #)!]`
-/

namespace A135295.P18243481835364141779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (n : ℚ) / (Nat.factorial (Nat.land 1 x) : ℚ)).prod

end

end A135295.P18243481835364141779

namespace A135295

/-- `∏{digits}[n, n/and(1, #)!]` -/
def P18243481835364141779.Spec : Prop :=
  ∀ n, P18243481835364141779.a n = (A135295 n : ℚ)

end A135295

/-! ## A135295.P463869923224366359

`∏{digits}[n, n^and(1, #)!]`
-/

namespace A135295.P463869923224366359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => n ^ Nat.factorial (Nat.land 1 x)).prod

end

end A135295.P463869923224366359

namespace A135295

/-- `∏{digits}[n, n^and(1, #)!]` -/
def P463869923224366359.Spec : Prop :=
  ∀ n, (P463869923224366359.a n : ℤ) = A135295 n

end A135295

/-! ## A135295.P11444876639722657562

`∏{digits}[n, abs(n-#)+#]`
-/

namespace A135295.P11444876639722657562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => |(n : ℤ) - (x : ℤ)| + (x : ℤ)).prod

end

end A135295.P11444876639722657562

namespace A135295

/-- `∏{digits}[n, abs(n-#)+#]` -/
def P11444876639722657562.Spec : Prop :=
  ∀ n, P11444876639722657562.a n = A135295 n

end A135295

/-! ## A135295.P10952747842473928199

`n^(A337843(n)-n)`
-/

namespace A135295.P10952747842473928199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A337843 n - (n : ℤ) : ℤ)

end

end A135295.P10952747842473928199

namespace A135295

/-- `n^(A337843(n)-n)` -/
def P10952747842473928199.Spec : Prop :=
  ∀ n, P10952747842473928199.a n = (A135295 n : ℚ)

end A135295

/-!
# A135296: A measure of quality (the higher the better) for the approximation to Pi by rationals A022853(n)/n.

The programs for A135296, there is no canonical definition to state claims against.
-/

/-! ## A135296.P3322952123685396077

`A086867(∩[A026315(n+1), A246046(n+1)])`
-/

namespace A135296.P3322952123685396077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246046 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086867 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A135296.P3322952123685396077

/-! ## A135296.P6757726260842717039

`A086867(eq[A000494(n), A151933(n)])`
-/

namespace A135296.P6757726260842717039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000494 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086867 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A135296.P6757726260842717039

/-!
# A135297: a(n) = number of zeros of the Riemann zeta function on the critical line that are less than n.

The programs for A135297, there is no canonical definition to state claims against.
-/

/-! ## A135297.P17054078569507900287

`A234323(n)+a(n-1)` with `a(0)=0`
-/

namespace A135297.P17054078569507900287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A234323 n + a (n - 1)

end

end A135297.P17054078569507900287

/-! ## A135297.P10029015115379648126

`∑[A234323(ceil((n²+3)/(n+1)))]`
-/

namespace A135297.P10029015115379648126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234323 ⌈(n ^ 2 + 3 : ℚ) / (n + 1 : ℚ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135297.P10029015115379648126

/-! ## A135297.P4371959596095684671

`∑[dr(A234323(A028310(n)))]`
-/

namespace A135297.P4371959596095684671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A234323 (A028310 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135297.P4371959596095684671

/-! ## A135297.P6023431269181623513

`∑[A234323(n+1)]-A234323(n+1)`
-/

namespace A135297.P6023431269181623513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A234323 (n + 1)

end

end A135297.P6023431269181623513

/-! ## A135297.P17969368790263172940

`∑[A234323(A065033(2*n))%4]`
-/

namespace A135297.P17969368790263172940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234323 (A065033 (2 * n)).toNat) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135297.P17969368790263172940

/-! ## A135297.P4714769546510466025

`A002262(∑[a(A234323(n))+n])` with `a(0)=0`
-/

namespace A135297.P4714769546510466025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (A234323 n).toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135297.P4714769546510466025

/-! ## A135297.P3886187441141216432

`A286707(n+1)+1`
-/

namespace A135297.P3886187441141216432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286707 (n + 1) + 1

end

end A135297.P3886187441141216432

/-!
# A135298: a(n) = the total number of permutations (m(1),m(2),m(3)...m(j)) of (1,2,3,...,j) where n = 1*m(1) + 2*m(2) + 3*m(3) + ...+j*m(j), where j is over all positive integers.

The programs for A135298, there is no canonical definition to state claims against.
-/

/-! ## A135298.P3719550254872659137

`A002324(A102728(n)+A054243(n))`
-/

namespace A135298.P3719550254872659137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (A102728 n + A054243 n).toNat

end

end A135298.P3719550254872659137

/-! ## A135298.P14325034717856021351

`and(A180590(2*(n+2)), A305302(A204016(n+1)))`
-/

namespace A135298.P14325034717856021351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A180590 (2 * (n + 2))) (A305302 (A204016 (n + 1)).toNat)

end

end A135298.P14325034717856021351

/-! ## A135298.P3827377030238311748

`and(A008967(n+4), A191104(A039599(3*(n+1))))`
-/

namespace A135298.P3827377030238311748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008967 (n + 4)) (A191104 (A039599 (3 * (n + 1))).toNat)

end

end A135298.P3827377030238311748

/-! ## A135298.P18001965831956681968

`and(A062918(n+1), A212119(A111910(n)))`
-/

namespace A135298.P18001965831956681968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062918 (n + 1)) (A212119 (A111910 n).toNat)

end

end A135298.P18001965831956681968

/-! ## A135298.P4072904833988255750

`A257402(A038103(n+1))`
-/

namespace A135298.P4072904833988255750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257402 (A038103 (n + 1)).toNat

end

end A135298.P4072904833988255750

/-!
# A135299: Pascal's triangle, but the last element of the row is the sum of all the previous terms.

The programs for A135299, there is no canonical definition to state claims against.
-/

/-! ## A135299.P4651277195394844884

`A276611(A006254(n+1)^A002262(n))`
-/

namespace A135299.P4651277195394844884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (SequenceMachineLib.roundAway ((A006254 (n + 1) : ℚ) ^ (A002262 n : ℤ))).toNat

end

end A135299.P4651277195394844884

/-! ## A135299.P5991268410348435901

`A276611(A228246(n+1)^A002262(n))`
-/

namespace A135299.P5991268410348435901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (SequenceMachineLib.roundAway ((A228246 (n + 1) : ℚ) ^ (A002262 n : ℤ))).toNat

end

end A135299.P5991268410348435901

/-! ## A135299.P3732783087502655230

`A199530(A268956(n+1))*A308590(A156914(n))`
-/

namespace A135299.P3732783087502655230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (A268956 (n + 1)).toNat * A308590 (A156914 n).toNat

end

end A135299.P3732783087502655230

/-! ## A135299.P14223506597093080078

`A228107(A243057(n+1))*A308590(A156914(n))`
-/

namespace A135299.P14223506597093080078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228107 (A243057 (n + 1)).toNat * A308590 (A156914 n).toNat

end

end A135299.P14223506597093080078

/-! ## A135299.P10566294063003623760

`and(A018805(A092072(n)), A092081(n))`
-/

namespace A135299.P10566294063003623760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018805 (A092072 n).toNat) (A092081 n)

end

end A135299.P10566294063003623760

