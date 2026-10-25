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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
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
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
# A035000: Nontrivial trinomial coefficients.

The programs for A035000, there is no canonical definition to state claims against.
-/

/-! ## A035000.P4368967530771834197

`lt[A127954(n+1)+1, A249867(n+1)]`
-/

namespace A035000.P4368967530771834197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127954 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249867 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035000.P4368967530771834197

/-! ## A035000.P12683834166966678655

`eq[A111006(A084938(n)), A336651(n+1)]`
-/

namespace A035000.P12683834166966678655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111006 (A084938 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336651 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035000.P12683834166966678655

/-! ## A035000.P18416023841552154426

`lt[A003987(A084938(n)), A010766(n+1)]`
-/

namespace A035000.P18416023841552154426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A084938 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035000.P18416023841552154426

/-! ## A035000.P12736309005677509583

`lt[A003987(A084938(n)), A215521(n+1)]`
-/

namespace A035000.P12736309005677509583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A084938 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215521 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035000.P12736309005677509583

/-! ## A035000.P11152631881830375123

`lt[A253587(A084938(n)), A092523(n+1)]`
-/

namespace A035000.P11152631881830375123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253587 (A084938 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092523 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035000.P11152631881830375123

/-!
# A035001: Sorted elements of table (A035002) of a(m,n) = sum(a(m-k,n), k=1..m-1)+sum(a(m,n-k), k=1..n-1).

The programs for A035001, there is no canonical definition to state claims against.
-/

/-! ## A035001.P15741775239710461532

`lt[0, char[A035002(n+1)]]`
-/

namespace A035001.P15741775239710461532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035002 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035001.P15741775239710461532

/-! ## A035001.P13256516235057881859

`eq[1, char[A035002(n+2)]]`
-/

namespace A035001.P13256516235057881859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035002 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035001.P13256516235057881859

/-! ## A035001.P6793043952185967884

`record[A050363(A130762(n+1))]`
-/

namespace A035001.P6793043952185967884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050363 (A130762 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035001.P6793043952185967884

/-! ## A035001.P10626522737297226000

`record[A050363(A274329(n+1))]`
-/

namespace A035001.P10626522737297226000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050363 (A274329 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035001.P10626522737297226000

/-! ## A035001.P4272759172984839990

`record[A050363(A000005(round((n+3)²/12)))]`
-/

namespace A035001.P4272759172984839990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050363 (A000005 (SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035001.P4272759172984839990

/-!
# A035002: Square array read by antidiagonals: T(m,n) = Sum_{k=1..m-1} T(m-k,n) + Sum_{k=1..n-1} T(m,n-k).

The programs for A035002, there is no canonical definition to state claims against.
-/

/-! ## A035002.P1756217170809715338

`A050363(A036561(n))`
-/

namespace A035002.P1756217170809715338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050363 (A036561 n).toNat

end

end A035002.P1756217170809715338

/-! ## A035002.P17085784811241192551

`A050363(A082234(n+1))`
-/

namespace A035002.P17085784811241192551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050363 (A082234 (n + 1)).toNat

end

end A035002.P17085784811241192551

/-! ## A035002.P15053943033639917893

`A050363(A230445(n)+1)`
-/

namespace A035002.P15053943033639917893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050363 (A230445 n + 1).toNat

end

end A035002.P15053943033639917893

/-! ## A035002.P8035700793977557415

`A050363(A094617(n+1)-1)`
-/

namespace A035002.P8035700793977557415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050363 (A094617 (n + 1) - 1).toNat

end

end A035002.P8035700793977557415

/-! ## A035002.P16975053972961807529

`A050363(A013620(n)/A007318(n))`
-/

namespace A035002.P16975053972961807529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050363 (SequenceMachineLib.roundAway ((A013620 n : ℚ) / (A007318 n : ℚ))).toNat

end

end A035002.P16975053972961807529

/-! ## A035002.P10284261116344051174

`A050363(A038305(n)/A038243(n))`
-/

namespace A035002.P10284261116344051174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050363 (SequenceMachineLib.roundAway ((A038305 n : ℚ) / (A038243 n : ℚ))).toNat

end

end A035002.P10284261116344051174

/-!
# A035003: Sorted entries in triangle in A014784.

The programs for A035003, there is no canonical definition to state claims against.
-/

/-! ## A035003.P5754344932555825217

`record[A014784(n)]`
-/

namespace A035003.P5754344932555825217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014784 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035003.P5754344932555825217

/-! ## A035003.P6639723898027378875

`A014784(lt[A250254(n+1), A223522(n+1)])`
-/

namespace A035003.P6639723898027378875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014784 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A035003.P6639723898027378875

/-!
# A035004: Number of divisors of the n-th nonprime.

The programs for A035004, the canonical program `A035004.P15043719525226089971` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035004 has offset 1).

The definition of A035004 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A035004.P15043719525226089971

`A000005(A018252(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035004

/-- `A000005(A018252(n+1))` -/
def P15043719525226089971.Spec : Prop :=
  ∀ n, P15043719525226089971.a n = A035004 (n + 1)

theorem P15043719525226089971.correct : P15043719525226089971.Spec := by
  intro n
  simp only [A035004, Nat.add_sub_cancel]

end A035004

/-! ## A035004.P3682756395468856654

`∏{e}[comp[A006530(n+1)], #+1]`
-/

namespace A035004.P3682756395468856654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A035004.P3682756395468856654

namespace A035004

/-- `∏{e}[comp[A006530(n+1)], #+1]` -/
def P3682756395468856654.Spec : Prop :=
  ∀ n, (P3682756395468856654.a n : ℤ) = A035004 (n + 1)

end A035004

/-! ## A035004.P17340017461688690830

`∏{e}[comp[A020639(n+1)], #+1]`
-/

namespace A035004.P17340017461688690830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A035004.P17340017461688690830

namespace A035004

/-- `∏{e}[comp[A020639(n+1)], #+1]` -/
def P17340017461688690830.Spec : Prop :=
  ∀ n, (P17340017461688690830.a n : ℤ) = A035004 (n + 1)

end A035004

/-! ## A035004.P2299323338475170527

`A000005(Δ[A051349(n)])`
-/

namespace A035004.P2299323338475170527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat

end

end A035004.P2299323338475170527

namespace A035004

/-- `A000005(Δ[A051349(n)])` -/
def P2299323338475170527.Spec : Prop :=
  ∀ n, P2299323338475170527.a n = A035004 (n + 1)

end A035004

/-! ## A035004.P4152543360493859949

`A000005(A083256(n+1))`
-/

namespace A035004.P4152543360493859949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A083256 (n + 1)).toNat

end

end A035004.P4152543360493859949

namespace A035004

/-- `A000005(A083256(n+1))` -/
def P4152543360493859949.Spec : Prop :=
  ∀ n, P4152543360493859949.a n = A035004 (n + 1)

end A035004

/-! ## A035004.P1016068868657307575

`A000005(A083257(n+1))`
-/

namespace A035004.P1016068868657307575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A083257 (n + 1)).toNat

end

end A035004.P1016068868657307575

namespace A035004

/-- `A000005(A083257(n+1))` -/
def P1016068868657307575.Spec : Prop :=
  ∀ n, P1016068868657307575.a n = A035004 (n + 1)

end A035004

/-! ## A035004.P1382875939844723301

`A000005(A141468(n+2))`
-/

namespace A035004.P1382875939844723301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A141468 (n + 2)).toNat

end

end A035004.P1382875939844723301

namespace A035004

/-- `A000005(A141468(n+2))` -/
def P1382875939844723301.Spec : Prop :=
  ∀ n, P1382875939844723301.a n = A035004 (n + 1)

end A035004

/-! ## A035004.P11083202922195000539

`A000005(sqrt(A062312(n+1)))`
-/

namespace A035004.P11083202922195000539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A062312 (n + 1) : ℝ))).toNat

end

end A035004.P11083202922195000539

namespace A035004

/-- `A000005(sqrt(A062312(n+1)))` -/
def P11083202922195000539.Spec : Prop :=
  ∀ n, P11083202922195000539.a n = A035004 (n + 1)

end A035004

/-! ## A035004.P2413374708700968636

`A000005(∑[A054546(n+1)])`
-/

namespace A035004.P2413374708700968636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A035004.P2413374708700968636

namespace A035004

/-- `A000005(∑[A054546(n+1)])` -/
def P2413374708700968636.Spec : Prop :=
  ∀ n, P2413374708700968636.a n = A035004 (n + 1)

end A035004

/-! ## A035004.P6873936220821943241

`A000005(comp[A351078(n+2)])`
-/

namespace A035004.P6873936220821943241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A035004.P6873936220821943241

namespace A035004

/-- `A000005(comp[A351078(n+2)])` -/
def P6873936220821943241.Spec : Prop :=
  ∀ n, P6873936220821943241.a n = A035004 (n + 1)

end A035004

/-! ## A035004.P10097688765432201239

`A000005(A222307(2*n+1))`
-/

namespace A035004.P10097688765432201239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A222307 (2 * n + 1)).toNat

end

end A035004.P10097688765432201239

namespace A035004

/-- `A000005(A222307(2*n+1))` -/
def P10097688765432201239.Spec : Prop :=
  ∀ n, P10097688765432201239.a n = A035004 (n + 1)

end A035004

/-! ## A035004.P17058639056294155705

`A000005(comp[record[A000010(n+1)]]+1)`
-/

namespace A035004.P17058639056294155705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A035004.P17058639056294155705

namespace A035004

/-- `A000005(comp[record[A000010(n+1)]]+1)` -/
def P17058639056294155705.Spec : Prop :=
  ∀ n, P17058639056294155705.a n = A035004 (n + 1)

end A035004

/-! ## A035004.P331583836682256255

`A000005(comp[A006530(n+1)%(n+1)])`
-/

namespace A035004.P331583836682256255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (n + 1)) (n + 1 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A035004.P331583836682256255

namespace A035004

/-- `A000005(comp[A006530(n+1)%(n+1)])` -/
def P331583836682256255.Spec : Prop :=
  ∀ n, P331583836682256255.a n = A035004 (n + 1)

end A035004

/-! ## A035004.P12369564673315951741

`A000005(comp[C(A006530(n+2), n+1)])`
-/

namespace A035004.P12369564673315951741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 2)).toNat (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A035004.P12369564673315951741

namespace A035004

/-- `A000005(comp[C(A006530(n+2), n+1)])` -/
def P12369564673315951741.Spec : Prop :=
  ∀ n, P12369564673315951741.a n = A035004 (n + 1)

end A035004

/-! ## A035004.P5214830073894445955

`A000005(comp[C(A020639(n+2), n+1)])`
-/

namespace A035004.P5214830073894445955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 2)).toNat (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A035004.P5214830073894445955

namespace A035004

/-- `A000005(comp[C(A020639(n+2), n+1)])` -/
def P5214830073894445955.Spec : Prop :=
  ∀ n, P5214830073894445955.a n = A035004 (n + 1)

end A035004

/-! ## A035004.P14767384253176130423

`A000005(comp[(n+1)*(3-A000005(n+1))])`
-/

namespace A035004.P14767384253176130423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (3 - A000005 (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A035004.P14767384253176130423

namespace A035004

/-- `A000005(comp[(n+1)*(3-A000005(n+1))])` -/
def P14767384253176130423.Spec : Prop :=
  ∀ n, P14767384253176130423.a n = A035004 (n + 1)

end A035004

/-! ## A035004.P12331426516013539482

`A000005(comp[A020639(n+1)%(2*n+1)])`
-/

namespace A035004.P12331426516013539482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (n + 1)) (2 * n + 1 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A035004.P12331426516013539482

namespace A035004

/-- `A000005(comp[A020639(n+1)%(2*n+1)])` -/
def P12331426516013539482.Spec : Prop :=
  ∀ n, P12331426516013539482.a n = A035004 (n + 1)

end A035004

/-! ## A035004.P1912487447859004983

`A000005(A051349(n+1)-A051349(n))`
-/

namespace A035004.P1912487447859004983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A051349 (n + 1) - A051349 n).toNat

end

end A035004.P1912487447859004983

namespace A035004

/-- `A000005(A051349(n+1)-A051349(n))` -/
def P1912487447859004983.Spec : Prop :=
  ∀ n, P1912487447859004983.a n = A035004 (n + 1)

end A035004

/-! ## A035004.P15159232803415055134

`A000005(A171639(n+1)-A008578(n+1))`
-/

namespace A035004.P15159232803415055134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A171639 (n + 1) - A008578 (n + 1)).toNat

end

end A035004.P15159232803415055134

namespace A035004

/-- `A000005(A171639(n+1)-A008578(n+1))` -/
def P15159232803415055134.Spec : Prop :=
  ∀ n, P15159232803415055134.a n = A035004 (n + 1)

end A035004

/-! ## A035004.P1050439252503465601

`A069157(A139270(n+1))`
-/

namespace A035004.P1050439252503465601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (A139270 (n + 1)).toNat

end

end A035004.P1050439252503465601

namespace A035004

/-- `A069157(A139270(n+1))` -/
def P1050439252503465601.Spec : Prop :=
  ∀ n, P1050439252503465601.a n = A035004 (n + 1)

end A035004

/-!
# A035005: Number of possible queen moves on an n X n chessboard.

The programs for A035005, the canonical program `A035005.P12524543425735432829` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035005 has offset 1).

The definition of A035005 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035005.P15029546013844613638

`2*(n+1)*(1-6*(n+1)+5*(n+1)²)/3`
-/

namespace A035005.P15029546013844613638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) * (1 - (6 * (n + 1) : ℤ) + (5 * (n + 1) ^ 2 : ℤ)) : ℚ) / 3

end

end A035005.P15029546013844613638

namespace A035005

/-- `2*(n+1)*(1-6*(n+1)+5*(n+1)²)/3` -/
def P15029546013844613638.Spec : Prop :=
  ∀ n, P15029546013844613638.a n = (A035005 (n + 1) : ℚ)

theorem P15029546013844613638.correct : P15029546013844613638.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A035005, Nat.add_sub_cancel, A035005.P15029546013844613638.a, A035005.P12524543425735432829.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A035005, Nat.add_sub_cancel, A035005.P15029546013844613638.a, A035005.P12524543425735432829.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A035005

/-! ## A035005.P12524543425735432829

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=12, a(2)=56, a(3)=152`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035005

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P12524543425735432829.Spec : Prop :=
  ∀ n, P12524543425735432829.a n = A035005 (n + 1)

theorem P12524543425735432829.correct : P12524543425735432829.Spec := by
  intro n
  simp only [A035005, Nat.add_sub_cancel]

end A035005

/-! ## A035005.P2845431492047688608

`4*A162147(n)`
-/

namespace A035005.P2845431492047688608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A162147 n

end

end A035005.P2845431492047688608

namespace A035005

/-- `4*A162147(n)` -/
def P2845431492047688608.Spec : Prop :=
  ∀ n, P2845431492047688608.a n = A035005 (n + 1)

end A035005

/-! ## A035005.P13338358532478129374

`ceil(∑[∑[a(n-1)+20]])` with `a(0)=0, a(1)=12`

`ceil` is left out, it is the identity on integers.
-/

namespace A035005.P13338358532478129374
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 12] fun n f2 =>
  f2 (n - 1) + 20

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035005.P13338358532478129374

namespace A035005

/-- `ceil(∑[∑[a(n-1)+20]])` -/
def P13338358532478129374.Spec : Prop :=
  ∀ n, (P13338358532478129374.a n : ℤ) = A035005 (n + 1)

end A035005

/-! ## A035005.P3746105992556433080

`round(∑[∑[a(n-1)+20]])` with `a(0)=0, a(1)=12`

`round` is left out, it is the identity on integers.
-/

namespace A035005.P3746105992556433080
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 12] fun n f2 =>
  f2 (n - 1) + 20

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035005.P3746105992556433080

namespace A035005

/-- `round(∑[∑[a(n-1)+20]])` -/
def P3746105992556433080.Spec : Prop :=
  ∀ n, (P3746105992556433080.a n : ℤ) = A035005 (n + 1)

end A035005

/-! ## A035005.P15502501546973403269

`4*∑[2-∑[a(n-1)-5]]` with `a(0)=2`
-/

namespace A035005.P15502501546973403269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A035005.P15502501546973403269

namespace A035005

/-- `4*∑[2-∑[a(n-1)-5]]` -/
def P15502501546973403269.Spec : Prop :=
  ∀ n, P15502501546973403269.a n = A035005 (n + 1)

end A035005

/-! ## A035005.P8119943595676467586

`∑[∑[a(n-1)+20]]-(n+1)` with `a(0)=1, a(1)=12`
-/

namespace A035005.P8119943595676467586
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f2 =>
  f2 (n - 1) + 20

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A035005.P8119943595676467586

namespace A035005

/-- `∑[∑[a(n-1)+20]]-(n+1)` -/
def P8119943595676467586.Spec : Prop :=
  ∀ n, P8119943595676467586.a n = A035005 (n + 1)

end A035005

/-! ## A035005.P12088594502920337135

`∑[(2*n+1)*2*n]+lcm(2*n+1, ∑[2*n])`
-/

namespace A035005.P12088594502920337135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm (2 * n + 1) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A035005.P12088594502920337135

namespace A035005

/-- `∑[(2*n+1)*2*n]+lcm(2*n+1, ∑[2*n])` -/
def P12088594502920337135.Spec : Prop :=
  ∀ n, (P12088594502920337135.a n : ℤ) = A035005 (n + 1)

end A035005

/-! ## A035005.P4140577868718417424

`∑[2*A202803(n)]`
-/

namespace A035005.P4140577868718417424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A202803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035005.P4140577868718417424

namespace A035005

/-- `∑[2*A202803(n)]` -/
def P4140577868718417424.Spec : Prop :=
  ∀ n, P4140577868718417424.a n = A035005 (n + 1)

end A035005

/-! ## A035005.P9494171139619406472

`∑[4*A005475(n)]`
-/

namespace A035005.P9494171139619406472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035005.P9494171139619406472

namespace A035005

/-- `∑[4*A005475(n)]` -/
def P9494171139619406472.Spec : Prop :=
  ∀ n, P9494171139619406472.a n = A035005 (n + 1)

end A035005

/-! ## A035005.P15437270654997647000

`∑[n*A017293(n)]`
-/

namespace A035005.P15437270654997647000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A017293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035005.P15437270654997647000

namespace A035005

/-- `∑[n*A017293(n)]` -/
def P15437270654997647000.Spec : Prop :=
  ∀ n, P15437270654997647000.a n = A035005 (n + 1)

end A035005

/-! ## A035005.P5302848055485381964

`2*A144945(n+1)`
-/

namespace A035005.P5302848055485381964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144945 (n + 1)

end

end A035005.P5302848055485381964

namespace A035005

/-- `2*A144945(n+1)` -/
def P5302848055485381964.Spec : Prop :=
  ∀ n, P5302848055485381964.a n = A035005 (n + 1)

end A035005

/-! ## A035005.P17482295615703075652

`∑[A147296(n)+n²]`
-/

namespace A035005.P17482295615703075652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147296 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035005.P17482295615703075652

namespace A035005

/-- `∑[A147296(n)+n²]` -/
def P17482295615703075652.Spec : Prop :=
  ∀ n, P17482295615703075652.a n = A035005 (n + 1)

end A035005

/-! ## A035005.P14443404844922800409

`Δ[A346636(n)-n²]`
-/

namespace A035005.P14443404844922800409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346636 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035005.P14443404844922800409

namespace A035005

/-- `Δ[A346636(n)-n²]` -/
def P14443404844922800409.Spec : Prop :=
  ∀ n, P14443404844922800409.a n = A035005 (n + 1)

end A035005

/-! ## A035005.P378434677253314676

`A220084(n)-∑[n+1]`
-/

namespace A035005.P378434677253314676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220084 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A035005.P378434677253314676

namespace A035005

/-- `A220084(n)-∑[n+1]` -/
def P378434677253314676.Spec : Prop :=
  ∀ n, P378434677253314676.a n = A035005 (n + 1)

end A035005

/-! ## A035005.P16722966736916136138

`A100174(n+1)-(n+1)`
-/

namespace A035005.P16722966736916136138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100174 (n + 1) - (n + 1 : ℤ)

end

end A035005.P16722966736916136138

namespace A035005

/-- `A100174(n+1)-(n+1)` -/
def P16722966736916136138.Spec : Prop :=
  ∀ n, P16722966736916136138.a n = A035005 (n + 1)

end A035005

/-! ## A035005.P116918938928982026

`∑[A272039(n)]-(n+1)²`
-/

namespace A035005.P116918938928982026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A035005.P116918938928982026

namespace A035005

/-- `∑[A272039(n)]-(n+1)²` -/
def P116918938928982026.Spec : Prop :=
  ∀ n, P116918938928982026.a n = A035005 (n + 1)

end A035005

/-! ## A035005.P15690046712953482658

`A034720(n+1)-(n+1)²`
-/

namespace A035005.P15690046712953482658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034720 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A035005.P15690046712953482658

namespace A035005

/-- `A034720(n+1)-(n+1)²` -/
def P15690046712953482658.Spec : Prop :=
  ∀ n, P15690046712953482658.a n = A035005 (n + 1)

end A035005

/-! ## A035005.P17570593639941327888

`A165900(n)+A005902(n)`
-/

namespace A035005.P17570593639941327888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 n + A005902 n

end

end A035005.P17570593639941327888

namespace A035005

/-- `A165900(n)+A005902(n)` -/
def P17570593639941327888.Spec : Prop :=
  ∀ n, P17570593639941327888.a n = A035005 (n + 1)

end A035005

/-! ## A035005.P18093365877804257862

`A196507(n)+A033547(n)`
-/

namespace A035005.P18093365877804257862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196507 n + A033547 n

end

end A035005.P18093365877804257862

namespace A035005

/-- `A196507(n)+A033547(n)` -/
def P18093365877804257862.Spec : Prop :=
  ∀ n, P18093365877804257862.a n = A035005 (n + 1)

end A035005

/-!
# A035006: Number of possible rook moves on an n X n chessboard.

The programs for A035006, the canonical program `A035006.P8233523708171598530` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035006 has offset 1).

The definition of A035006 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035006.P8233523708171598530

`n*2*(n+1)²`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035006

/-- `n*2*(n+1)²` -/
def P8233523708171598530.Spec : Prop :=
  ∀ n, (P8233523708171598530.a n : ℤ) = A035006 (n + 1)

theorem P8233523708171598530.correct : P8233523708171598530.Spec := by
  intro n
  simp only [A035006, Nat.add_sub_cancel]

end A035006

/-! ## A035006.P18049791114350488114

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=8, a(2)=36, a(3)=96`
-/

namespace A035006.P18049791114350488114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 8, 36, 96] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A035006.P18049791114350488114

namespace A035006

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P18049791114350488114.Spec : Prop :=
  ∀ n, P18049791114350488114.a n = A035006 (n + 1)

theorem P18049791114350488114.correct : P18049791114350488114.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A035006, Nat.add_sub_cancel, A035006.P18049791114350488114.a, A035006.P8233523708171598530.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A035006, Nat.add_sub_cancel, A035006.P18049791114350488114.a, A035006.P8233523708171598530.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A035006

/-! ## A035006.P1936965070228368954

`A006566(n+1)-A006564(n+1)`
-/

namespace A035006.P1936965070228368954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006566 (n + 1) - A006564 (n + 1)

end

end A035006.P1936965070228368954

namespace A035006

/-- `A006566(n+1)-A006564(n+1)` -/
def P1936965070228368954.Spec : Prop :=
  ∀ n, P1936965070228368954.a n = A035006 (n + 1)

end A035006

/-! ## A035006.P16112513930514063869

`∑[4*Δ[n*C(n, 2)]]`
-/

namespace A035006.P16112513930514063869
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose n 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035006.P16112513930514063869

namespace A035006

/-- `∑[4*Δ[n*C(n, 2)]]` -/
def P16112513930514063869.Spec : Prop :=
  ∀ n, P16112513930514063869.a n = A035006 (n + 1)

end A035006

/-! ## A035006.P17376840789788119554

`∑[∑[a(n-1)+12]]` with `a(0)=0, a(1)=8`
-/

namespace A035006.P17376840789788119554
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 8] fun n f2 =>
  f2 (n - 1) + 12

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035006.P17376840789788119554

namespace A035006

/-- `∑[∑[a(n-1)+12]]` -/
def P17376840789788119554.Spec : Prop :=
  ∀ n, (P17376840789788119554.a n : ℤ) = A035006 (n + 1)

end A035006

/-! ## A035006.P15248000452747623839

`∑[2*lcm(n, 3*n+1)]`
-/

namespace A035006.P15248000452747623839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lcm n (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035006.P15248000452747623839

namespace A035006

/-- `∑[2*lcm(n, 3*n+1)]` -/
def P15248000452747623839.Spec : Prop :=
  ∀ n, (P15248000452747623839.a n : ℤ) = A035006 (n + 1)

end A035006

/-! ## A035006.P2080925297391131706

`∑[2*Δ[lcm(n-1, n²)]]`
-/

namespace A035006.P2080925297391131706
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) (n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035006.P2080925297391131706

namespace A035006

/-- `∑[2*Δ[lcm(n-1, n²)]]` -/
def P2080925297391131706.Spec : Prop :=
  ∀ n, P2080925297391131706.a n = A035006 (n + 1)

end A035006

/-! ## A035006.P15215513636280436403

`floor(n/Δ[atan(2*n+1)])`
-/

namespace A035006.P15215513636280436403
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (2 * n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / (f1 (n + 1) - f1 n)⌋

end

end A035006.P15215513636280436403

namespace A035006

/-- `floor(n/Δ[atan(2*n+1)])` -/
def P15215513636280436403.Spec : Prop :=
  ∀ n, P15215513636280436403.a n = A035006 (n + 1)

end A035006

/-! ## A035006.P4055928231709909056

`round(n/Δ[atan(2*n+1)])`
-/

namespace A035006.P4055928231709909056
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (2 * n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / (f1 (n + 1) - f1 n))

end

end A035006.P4055928231709909056

namespace A035006

/-- `round(n/Δ[atan(2*n+1)])` -/
def P4055928231709909056.Spec : Prop :=
  ∀ n, P4055928231709909056.a n = A035006 (n + 1)

end A035006

/-! ## A035006.P4638937744909897098

`n/(cos(atan(1))/(n+1))²`
-/

namespace A035006.P4638937744909897098
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / (Real.cos (Real.arctan (1 : ℝ)) / (n + 1 : ℝ)) ^ 2

end

end A035006.P4638937744909897098

namespace A035006

/-- `n/(cos(atan(1))/(n+1))²` -/
def P4638937744909897098.Spec : Prop :=
  ∀ n, P4638937744909897098.a n = (A035006 (n + 1) : ℝ)

end A035006

/-! ## A035006.P3251691486809878920

`n/(sin(atan(1))/(n+1))²`
-/

namespace A035006.P3251691486809878920
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / (Real.sin (Real.arctan (1 : ℝ)) / (n + 1 : ℝ)) ^ 2

end

end A035006.P3251691486809878920

namespace A035006

/-- `n/(sin(atan(1))/(n+1))²` -/
def P3251691486809878920.Spec : Prop :=
  ∀ n, P3251691486809878920.a n = (A035006 (n + 1) : ℝ)

end A035006

/-! ## A035006.P18211434902053618672

`n/(cos(acot(1))/(n+1))²`
-/

namespace A035006.P18211434902053618672
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / (Real.cos (SequenceMachineLib.acot (1 : ℝ)) / (n + 1 : ℝ)) ^ 2

end

end A035006.P18211434902053618672

namespace A035006

/-- `n/(cos(acot(1))/(n+1))²` -/
def P18211434902053618672.Spec : Prop :=
  ∀ n, P18211434902053618672.a n = (A035006 (n + 1) : ℝ)

end A035006

/-! ## A035006.P12435676224845783542

`n/(sin(acot(1))/(n+1))²`
-/

namespace A035006.P12435676224845783542
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / (Real.sin (SequenceMachineLib.acot (1 : ℝ)) / (n + 1 : ℝ)) ^ 2

end

end A035006.P12435676224845783542

namespace A035006

/-- `n/(sin(acot(1))/(n+1))²` -/
def P12435676224845783542.Spec : Prop :=
  ∀ n, P12435676224845783542.a n = (A035006 (n + 1) : ℝ)

end A035006

/-! ## A035006.P16707744348762082678

`Δ[C(n², 2)]+n²+n`
-/

namespace A035006.P16707744348762082678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n ^ 2 + n : ℤ)

end

end A035006.P16707744348762082678

namespace A035006

/-- `Δ[C(n², 2)]+n²+n` -/
def P16707744348762082678.Spec : Prop :=
  ∀ n, P16707744348762082678.a n = A035006 (n + 1)

theorem P16707744348762082678.correct : P16707744348762082678.Spec := by
  intro n
  simp only [A035006, Nat.add_sub_cancel, A035006.P16707744348762082678.f1, A035006.P16707744348762082678.a, A035006.P8233523708171598530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A035006

/-! ## A035006.P4881361995188085454

`∑[∑[ogf((8x+4x^2)/(1-2x+x^2))]]`
-/

namespace A035006.P4881361995188085454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, 4] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035006.P4881361995188085454

namespace A035006

/-- `∑[∑[ogf((8x+4x^2)/(1-2x+x^2))]]` -/
def P4881361995188085454.Spec : Prop :=
  ∀ n, P4881361995188085454.a n = A035006 (n + 1)

end A035006

/-! ## A035006.P10282783917985345195

`∑[3*C(2*n+1, 2)-n]`
-/

namespace A035006.P10282783917985345195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose (2 * n + 1) 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035006.P10282783917985345195

namespace A035006

/-- `∑[3*C(2*n+1, 2)-n]` -/
def P10282783917985345195.Spec : Prop :=
  ∀ n, P10282783917985345195.a n = A035006 (n + 1)

end A035006

/-! ## A035006.P17896358798509943614

`∑[n*xor(1, 3*(2*n+1))]`
-/

namespace A035006.P17896358798509943614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.xor 1 (3 * (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035006.P17896358798509943614

namespace A035006

/-- `∑[n*xor(1, 3*(2*n+1))]` -/
def P17896358798509943614.Spec : Prop :=
  ∀ n, (P17896358798509943614.a n : ℤ) = A035006 (n + 1)

end A035006

/-! ## A035006.P16238556442852128728

`2*n/C(n+1, n)^-2`
-/

namespace A035006.P16238556442852128728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (Nat.choose (n + 1) n : ℚ) ^ (-2 : ℤ)

end

end A035006.P16238556442852128728

namespace A035006

/-- `2*n/C(n+1, n)^-2` -/
def P16238556442852128728.Spec : Prop :=
  ∀ n, P16238556442852128728.a n = (A035006 (n + 1) : ℚ)

end A035006

/-! ## A035006.P7508024492177841713

`∑[(or(1, 2*n)+n)*2*n]`
-/

namespace A035006.P7508024492177841713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (2 * n) + n) * (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035006.P7508024492177841713

namespace A035006

/-- `∑[(or(1, 2*n)+n)*2*n]` -/
def P7508024492177841713.Spec : Prop :=
  ∀ n, (P7508024492177841713.a n : ℤ) = A035006 (n + 1)

end A035006

/-! ## A035006.P4667395511342569905

`2*n/record[(n-1)²]^-1`
-/

namespace A035006.P4667395511342569905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (-1 : ℤ)

end

end A035006.P4667395511342569905

namespace A035006

/-- `2*n/record[(n-1)²]^-1` -/
def P4667395511342569905.Spec : Prop :=
  ∀ n, P4667395511342569905.a n = (A035006 (n + 1) : ℚ)

end A035006

/-!
# A035008: Total number of possible knight moves on an (n+2) X (n+2) chessboard, if the knight is placed anywhere.

The programs for A035008, the canonical program `A035008.P9220570800855289153` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035008 has offset 0).

The definition of A035008 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035008.P9220570800855289153

`8*n*(n+1)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035008

/-- `8*n*(n+1)` -/
def P9220570800855289153.Spec : Prop :=
  ∀ n, (P9220570800855289153.a n : ℤ) = A035008 n

theorem P9220570800855289153.correct : P9220570800855289153.Spec := by
  intro n
  simp only [A035008]

end A035008

/-! ## A035008.P15810380078602406501

`A069129(n+1)-1`
-/

namespace A035008.P15810380078602406501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (n + 1) - 1

end

end A035008.P15810380078602406501

namespace A035008

/-- `A069129(n+1)-1` -/
def P15810380078602406501.Spec : Prop :=
  ∀ n, P15810380078602406501.a n = A035008 n

end A035008

/-! ## A035008.P6815374963321246756

`lcm(2, Δ[n²]²)-2`
-/

namespace A035008.P6815374963321246756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) : ℤ) - 2

end

end A035008.P6815374963321246756

namespace A035008

/-- `lcm(2, Δ[n²]²)-2` -/
def P6815374963321246756.Spec : Prop :=
  ∀ n, P6815374963321246756.a n = A035008 n

end A035008

/-! ## A035008.P18275951571609300405

`∑[n*acos(cos(2))²²]`
-/

namespace A035008.P18275951571609300405
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * (Real.arccos (Real.cos (2 : ℝ)) ^ 2) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035008.P18275951571609300405

namespace A035008

/-- `∑[n*acos(cos(2))²²]` -/
def P18275951571609300405.Spec : Prop :=
  ∀ n, P18275951571609300405.a n = (A035008 n : ℝ)

end A035008

/-! ## A035008.P4517512857988864213

`∑[n/tan(acot(2))²²]`
-/

namespace A035008.P4517512857988864213
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / (Real.tan (SequenceMachineLib.acot (2 : ℝ)) ^ 2) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035008.P4517512857988864213

namespace A035008

/-- `∑[n/tan(acot(2))²²]` -/
def P4517512857988864213.Spec : Prop :=
  ∀ n, P4517512857988864213.a n = (A035008 n : ℝ)

end A035008

/-! ## A035008.P10168401519385853151

`∑[n/cot(atan(2))²²]`
-/

namespace A035008.P10168401519385853151
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / (Real.cot (Real.arctan (2 : ℝ)) ^ 2) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035008.P10168401519385853151

namespace A035008

/-- `∑[n/cot(atan(2))²²]` -/
def P10168401519385853151.Spec : Prop :=
  ∀ n, P10168401519385853151.a n = (A035008 n : ℝ)

end A035008

/-! ## A035008.P12262581014255985467

`floor(∑[a(n-1)+16])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A035008.P12262581014255985467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035008.P12262581014255985467

namespace A035008

/-- `floor(∑[a(n-1)+16])` -/
def P12262581014255985467.Spec : Prop :=
  ∀ n, (P12262581014255985467.a n : ℤ) = A035008 n

end A035008

/-! ## A035008.P10494758788292969967

`2*or(1, 2*n)²-2`
-/

namespace A035008.P10494758788292969967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 1 (2 * n) ^ 2 : ℤ) - 2

end

end A035008.P10494758788292969967

namespace A035008

/-- `2*or(1, 2*n)²-2` -/
def P10494758788292969967.Spec : Prop :=
  ∀ n, P10494758788292969967.a n = A035008 n

end A035008

/-! ## A035008.P2765069313837060338

`C(n+1, 2)/(1/4)²`
-/

namespace A035008.P2765069313837060338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 2 : ℚ) / ((1 : ℚ) / 4) ^ 2

end

end A035008.P2765069313837060338

namespace A035008

/-- `C(n+1, 2)/(1/4)²` -/
def P2765069313837060338.Spec : Prop :=
  ∀ n, P2765069313837060338.a n = (A035008 n : ℚ)

theorem P2765069313837060338.correct : P2765069313837060338.Spec := by
  intro n
  simp only [A035008, Nat.add_sub_cancel, A035008.P2765069313837060338.a, A035008.P9220570800855289153.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A035008

/-! ## A035008.P13134312948918010681

`2*xor(1, 2*n)²-2`
-/

namespace A035008.P13134312948918010681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.xor 1 (2 * n) ^ 2 : ℤ) - 2

end

end A035008.P13134312948918010681

namespace A035008

/-- `2*xor(1, 2*n)²-2` -/
def P13134312948918010681.Spec : Prop :=
  ∀ n, P13134312948918010681.a n = A035008 n

end A035008

/-! ## A035008.P7740165887566979586

`(4*n)²-a(n-1)` with `a(0)=0`
-/

namespace A035008.P7740165887566979586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((4 * n) ^ 2 : ℤ) - a (n - 1)

end

end A035008.P7740165887566979586

namespace A035008

/-- `(4*n)²-a(n-1)` -/
def P7740165887566979586.Spec : Prop :=
  ∀ n, P7740165887566979586.a n = A035008 n

theorem P7740165887566979586.correct : P7740165887566979586.Spec := by
  intro n
  induction n with
  | zero => simp [A035008, A035008.P7740165887566979586.a, A035008.P9220570800855289153.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A035008, Nat.add_sub_cancel, A035008.P7740165887566979586.a, A035008.P9220570800855289153.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A035008

/-! ## A035008.P9996419526120108641

`record[(xor(1, n)-3)*2*n]`
-/

namespace A035008.P9996419526120108641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 1 n : ℤ) - 3) * (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035008.P9996419526120108641

namespace A035008

/-- `record[(xor(1, n)-3)*2*n]` -/
def P9996419526120108641.Spec : Prop :=
  ∀ n, P9996419526120108641.a n = A035008 n

end A035008

/-! ## A035008.P8472923265496753336

`∑[n*gcd(2, 2*n)²²]`
-/

namespace A035008.P8472923265496753336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.gcd 2 (2 * n) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035008.P8472923265496753336

namespace A035008

/-- `∑[n*gcd(2, 2*n)²²]` -/
def P8472923265496753336.Spec : Prop :=
  ∀ n, (P8472923265496753336.a n : ℤ) = A035008 n

end A035008

/-! ## A035008.P5063851935166786014

`17*n-(n-a(n-1))` with `a(0)=0`
-/

namespace A035008.P5063851935166786014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (17 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A035008.P5063851935166786014

namespace A035008

/-- `17*n-(n-a(n-1))` -/
def P5063851935166786014.Spec : Prop :=
  ∀ n, P5063851935166786014.a n = A035008 n

theorem P5063851935166786014.correct : P5063851935166786014.Spec := by
  intro n
  induction n with
  | zero => simp [A035008, A035008.P5063851935166786014.a, A035008.P9220570800855289153.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A035008, Nat.add_sub_cancel, A035008.P5063851935166786014.a, A035008.P9220570800855289153.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A035008

/-! ## A035008.P11273778949516278100

`a(n-1)+n/(1/4)²` with `a(0)=0`
-/

namespace A035008.P11273778949516278100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℚ) / ((1 : ℚ) / 4) ^ 2

end

end A035008.P11273778949516278100

namespace A035008

/-- `a(n-1)+n/(1/4)²` -/
def P11273778949516278100.Spec : Prop :=
  ∀ n, P11273778949516278100.a n = (A035008 n : ℚ)

theorem P11273778949516278100.correct : P11273778949516278100.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A035008, Nat.add_sub_cancel, A035008.P11273778949516278100.a, A035008.P9220570800855289153.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A035008, Nat.add_sub_cancel, A035008.P11273778949516278100.a, A035008.P9220570800855289153.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A035008

/-! ## A035008.P4437550233194256700

`∑[a(n-1)+16]-(n+1)` with `a(0)=1`
-/

namespace A035008.P4437550233194256700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A035008.P4437550233194256700

namespace A035008

/-- `∑[a(n-1)+16]-(n+1)` -/
def P4437550233194256700.Spec : Prop :=
  ∀ n, P4437550233194256700.a n = A035008 n

end A035008

/-! ## A035008.P1133152163932655351

`A108099(n)-4`
-/

namespace A035008.P1133152163932655351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108099 n - 4

end

end A035008.P1133152163932655351

namespace A035008

/-- `A108099(n)-4` -/
def P1133152163932655351.Spec : Prop :=
  ∀ n, P1133152163932655351.a n = A035008 n

theorem P1133152163932655351.correct : P1133152163932655351.Spec := by
  intro n
  simp only [A035008, Nat.add_sub_cancel, A035008.P1133152163932655351.a, A035008.P9220570800855289153.a, A108099, A108099.P5915517825114269260.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035008

/-! ## A035008.P4125279584505507003

`n+A139278(n)`
-/

namespace A035008.P4125279584505507003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A139278 n

end

end A035008.P4125279584505507003

namespace A035008

/-- `n+A139278(n)` -/
def P4125279584505507003.Spec : Prop :=
  ∀ n, P4125279584505507003.a n = A035008 n

theorem P4125279584505507003.correct : P4125279584505507003.Spec := by
  intro n
  simp only [A035008, Nat.add_sub_cancel, A035008.P4125279584505507003.a, A035008.P9220570800855289153.a, A139278, A139278.P6728910123385272055.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035008

/-! ## A035008.P2831085167645024397

`floor(sqrt(A322677(n)))`
-/

namespace A035008.P2831085167645024397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A322677 n)

end

end A035008.P2831085167645024397

namespace A035008

/-- `floor(sqrt(A322677(n)))` -/
def P2831085167645024397.Spec : Prop :=
  ∀ n, P2831085167645024397.a n = A035008 n

end A035008

/-! ## A035008.P17098303955428154286

`Δ[A171272(n)]-4`
-/

namespace A035008.P17098303955428154286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 4

end

end A035008.P17098303955428154286

namespace A035008

/-- `Δ[A171272(n)]-4` -/
def P17098303955428154286.Spec : Prop :=
  ∀ n, P17098303955428154286.a n = A035008 n

end A035008

/-!
# A035009: STIRLING transform of [1,1,2,4,8,16,32,...].

The programs for A035009, there is no canonical definition to state claims against.
-/

/-! ## A035009.P2734063633621339664

`ceil(A001861(n)/2)`
-/

namespace A035009.P2734063633621339664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001861 n : ℚ) / 2⌉

end

end A035009.P2734063633621339664

/-! ## A035009.P3241352404358478306

`2*A324133(n)-1`
-/

namespace A035009.P3241352404358478306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A324133 n - 1

end

end A035009.P3241352404358478306

/-! ## A035009.P3855016081736510469

`ceil(record[A336345(n)/2])`
-/

namespace A035009.P3855016081736510469
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336345 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A035009.P3855016081736510469

/-! ## A035009.P14284164916104487146

`ceil(A336345(∑[n]+n)/2)`
-/

namespace A035009.P14284164916104487146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A336345 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℚ) / 2⌉

end

end A035009.P14284164916104487146

/-! ## A035009.P16181140524740164277

`A001861(A028310(n))/2`
-/

namespace A035009.P16181140524740164277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001861 (A028310 n).toNat : ℚ) / 2

end

end A035009.P16181140524740164277

/-! ## A035009.P16416442774744154759

`A001861(n)/A036453(n+1)`
-/

namespace A035009.P16416442774744154759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001861 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A035009.P16416442774744154759

/-! ## A035009.P17098172169292803564

`A001861(n)/A014963(A001316(n))`
-/

namespace A035009.P17098172169292803564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001861 n : ℚ) / (A014963 (A001316 n).toNat : ℚ)

end

end A035009.P17098172169292803564

/-! ## A035009.P16771589605622498786

`A001861(n)/A020639(A005899(n))`
-/

namespace A035009.P16771589605622498786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001861 n : ℚ) / (A020639 (A005899 n).toNat : ℚ)

end

end A035009.P16771589605622498786

/-! ## A035009.P17663208947068893015

`A001861(n)/A011782(n+1)*A011782(n)`
-/

namespace A035009.P17663208947068893015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001861 n : ℚ) / (A011782 (n + 1) : ℚ) * (A011782 n : ℚ)

end

end A035009.P17663208947068893015

/-!
# A035010: Number of prime binary rooted trees with n external nodes.

The programs for A035010, there is no canonical definition to state claims against.
-/

/-! ## A035010.P15007173530296804095

`abs(A349450(n+2))`
-/

namespace A035010.P15007173530296804095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A349450 (n + 2)|

end

end A035010.P15007173530296804095

/-! ## A035010.P9910749204083364239

`A000108(n+1)-A035102(n+2)`
-/

namespace A035010.P9910749204083364239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - A035102 (n + 2)

end

end A035010.P9910749204083364239

/-! ## A035010.P8936763788654923475

`-(A349450(n+1)+Δ[A349450(n+1)])`
-/

namespace A035010.P8936763788654923475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A349450 (n + 1) + (f1 (n + 1) - f1 n))

end

end A035010.P8936763788654923475

/-! ## A035010.P15048554474042943750

`Δ[-∑[A349450(n+1)]]`
-/

namespace A035010.P15048554474042943750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349450 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035010.P15048554474042943750

/-! ## A035010.P11261950731236478688

`Δ[A166588(Δ[n²])]-A035102(n+2)`
-/

namespace A035010.P11261950731236478688
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166588 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A035102 (n + 2)

end

end A035010.P11261950731236478688

/-! ## A035010.P8862626459303101954

`record[Δ[A349450(A002260(n+1)+1)]]+1`
-/

namespace A035010.P8862626459303101954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349450 (A002260 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A035010.P8862626459303101954

/-!
# A035011: A006318(n) - 1.

The programs for A035011, the canonical program `A035011.P9518209092387552565` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035011 has offset 0).

The definition of A035011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035011.P13854642770801063337

`A006318(n)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A035011.P13854642770801063337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 n - 1

end

end A035011.P13854642770801063337

namespace A035011

/-- `A006318(n)-1` -/
def P13854642770801063337.Spec : Prop :=
  ∀ n, P13854642770801063337.a n = A035011 n

end A035011

/-! ## A035011.P3581529222576069584

`record[Δ[A132372(n)]]`
-/

namespace A035011.P3581529222576069584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132372 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035011.P3581529222576069584

namespace A035011

/-- `record[Δ[A132372(n)]]` -/
def P3581529222576069584.Spec : Prop :=
  ∀ n, P3581529222576069584.a n = A035011 n

end A035011

/-! ## A035011.P15281485794837721635

`∑[A006319(n)]-1`
-/

namespace A035011.P15281485794837721635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A035011.P15281485794837721635

namespace A035011

/-- `∑[A006319(n)]-1` -/
def P15281485794837721635.Spec : Prop :=
  ∀ n, P15281485794837721635.a n = A035011 n

end A035011

/-! ## A035011.P4734244885703117145

`A073150(∑[n])-1`
-/

namespace A035011.P4734244885703117145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073150 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A035011.P4734244885703117145

namespace A035011

/-- `A073150(∑[n])-1` -/
def P4734244885703117145.Spec : Prop :=
  ∀ n, P4734244885703117145.a n = A035011 n

end A035011

/-! ## A035011.P1933582803517943436

`A080247(∑[n])-1`
-/

namespace A035011.P1933582803517943436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080247 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A035011.P1933582803517943436

namespace A035011

/-- `A080247(∑[n])-1` -/
def P1933582803517943436.Spec : Prop :=
  ∀ n, P1933582803517943436.a n = A035011 n

end A035011

/-! ## A035011.P8851227096973077185

`A133367(∑[n])-1`
-/

namespace A035011.P8851227096973077185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133367 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A035011.P8851227096973077185

namespace A035011

/-- `A133367(∑[n])-1` -/
def P8851227096973077185.Spec : Prop :=
  ∀ n, P8851227096973077185.a n = A035011 n

end A035011

/-! ## A035011.P14957602333797777454

`A351385(∑[n])-1`
-/

namespace A035011.P14957602333797777454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351385 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A035011.P14957602333797777454

namespace A035011

/-- `A351385(∑[n])-1` -/
def P14957602333797777454.Spec : Prop :=
  ∀ n, P14957602333797777454.a n = A035011 n

end A035011

/-! ## A035011.P13298607832140621538

`Δ[A176006(n)]-1`
-/

namespace A035011.P13298607832140621538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A035011.P13298607832140621538

namespace A035011

/-- `Δ[A176006(n)]-1` -/
def P13298607832140621538.Spec : Prop :=
  ∀ n, P13298607832140621538.a n = A035011 n

end A035011

/-! ## A035011.P13886738357613646816

`record[A080247(n)-1]`
-/

namespace A035011.P13886738357613646816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080247 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035011.P13886738357613646816

namespace A035011

/-- `record[A080247(n)-1]` -/
def P13886738357613646816.Spec : Prop :=
  ∀ n, P13886738357613646816.a n = A035011 n

end A035011

/-! ## A035011.P13431103719410505094

`record[A122538(n)-1]`
-/

namespace A035011.P13431103719410505094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122538 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035011.P13431103719410505094

namespace A035011

/-- `record[A122538(n)-1]` -/
def P13431103719410505094.Spec : Prop :=
  ∀ n, P13431103719410505094.a n = A035011 n

end A035011

/-! ## A035011.P1098044105002020481

`∑[abs(Δ[A155069(n)])]`
-/

namespace A035011.P1098044105002020481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155069 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035011.P1098044105002020481

namespace A035011

/-- `∑[abs(Δ[A155069(n)])]` -/
def P1098044105002020481.Spec : Prop :=
  ∀ n, P1098044105002020481.a n = A035011 n

end A035011

/-! ## A035011.P8572884045295329749

`A155069(n+1)-1`
-/

namespace A035011.P8572884045295329749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155069 (n + 1) - 1

end

end A035011.P8572884045295329749

namespace A035011

/-- `A155069(n+1)-1` -/
def P8572884045295329749.Spec : Prop :=
  ∀ n, P8572884045295329749.a n = A035011 n

end A035011

/-! ## A035011.P18382206076787370396

`A238111(n)/2-1`
-/

namespace A035011.P18382206076787370396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238111 n : ℚ) / 2 - 1

end

end A035011.P18382206076787370396

namespace A035011

/-- `A238111(n)/2-1` -/
def P18382206076787370396.Spec : Prop :=
  ∀ n, P18382206076787370396.a n = (A035011 n : ℚ)

end A035011

/-! ## A035011.P9518209092387552565

`xor(3, A025240(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A035011

/-- `xor(3, A025240(n+1))` -/
def P9518209092387552565.Spec : Prop :=
  ∀ n, P9518209092387552565.a n = A035011 n

theorem P9518209092387552565.correct : P9518209092387552565.Spec := by
  intro n
  simp only [A035011]

end A035011

/-! ## A035011.P514232934870340207

`abs(A080245(∑[n]))-1`
-/

namespace A035011.P514232934870340207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080245 (∑ j ∈ Finset.range (n + 1), f1 j)| - 1

end

end A035011.P514232934870340207

namespace A035011

/-- `abs(A080245(∑[n]))-1` -/
def P514232934870340207.Spec : Prop :=
  ∀ n, P514232934870340207.a n = A035011 n

end A035011

/-! ## A035011.P3488890094978373811

`record[abs(A080245(n))-1]`
-/

namespace A035011.P3488890094978373811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080245 n| - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035011.P3488890094978373811

namespace A035011

/-- `record[abs(A080245(n))-1]` -/
def P3488890094978373811.Spec : Prop :=
  ∀ n, P3488890094978373811.a n = A035011 n

end A035011

/-! ## A035011.P17304567594265293022

`record[abs(A112477(n))-1]`
-/

namespace A035011.P17304567594265293022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112477 n| - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035011.P17304567594265293022

namespace A035011

/-- `record[abs(A112477(n))-1]` -/
def P17304567594265293022.Spec : Prop :=
  ∀ n, P17304567594265293022.a n = A035011 n

end A035011

/-! ## A035011.P14042316705186327089

`record[abs(A117354(n))-1]`
-/

namespace A035011.P14042316705186327089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117354 n| - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035011.P14042316705186327089

namespace A035011

/-- `record[abs(A117354(n))-1]` -/
def P14042316705186327089.Spec : Prop :=
  ∀ n, P14042316705186327089.a n = A035011 n

end A035011

/-! ## A035011.P2053640088223500328

`abs(A086456(n+1)+1)`
-/

namespace A035011.P2053640088223500328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A086456 (n + 1) + 1|

end

end A035011.P2053640088223500328

namespace A035011

/-- `abs(A086456(n+1)+1)` -/
def P2053640088223500328.Spec : Prop :=
  ∀ n, P2053640088223500328.a n = A035011 n

end A035011

/-! ## A035011.P18387711799214423417

`abs(A103137(n+1))-1`
-/

namespace A035011.P18387711799214423417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103137 (n + 1)| - 1

end

end A035011.P18387711799214423417

namespace A035011

/-- `abs(A103137(n+1))-1` -/
def P18387711799214423417.Spec : Prop :=
  ∀ n, P18387711799214423417.a n = A035011 n

end A035011

/-!
# A035012: One half of 9-factorial numbers.

The programs for A035012, the canonical program `A035012.P5805249767087914044` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035012 has offset 1).

The definition of A035012 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035012.P5805249767087914044

`(9*(n+1)-7)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035012

/-- `(9*(n+1)-7)*a(n-1)` -/
def P5805249767087914044.Spec : Prop :=
  ∀ n, P5805249767087914044.a n = A035012 (n + 1)

theorem P5805249767087914044.correct : P5805249767087914044.Spec := by
  intro n
  simp only [A035012, Nat.add_sub_cancel]

end A035012

/-! ## A035012.P10194668127904738828

`A084949(n+1)/2`
-/

namespace A035012.P10194668127904738828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084949 (n + 1) : ℚ) / 2

end

end A035012.P10194668127904738828

namespace A035012

/-- `A084949(n+1)/2` -/
def P10194668127904738828.Spec : Prop :=
  ∀ n, P10194668127904738828.a n = (A035012 (n + 1) : ℚ)

end A035012

/-! ## A035012.P9752153130432376766

`∏[9*n+2]/2`
-/

namespace A035012.P9752153130432376766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A035012.P9752153130432376766

namespace A035012

/-- `∏[9*n+2]/2` -/
def P9752153130432376766.Spec : Prop :=
  ∀ n, P9752153130432376766.a n = (A035012 (n + 1) : ℚ)

end A035012

/-! ## A035012.P13373751269191822997

`∏[a(n-1)+9]` with `a(0)=1, a(1)=11`
-/

namespace A035012.P13373751269191822997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A035012.P13373751269191822997

namespace A035012

/-- `∏[a(n-1)+9]` -/
def P13373751269191822997.Spec : Prop :=
  ∀ n, (P13373751269191822997.a n : ℤ) = A035012 (n + 1)

end A035012

/-! ## A035012.P13911771056029419522

`∏[9*n+3-ceil(acot(n))]`
-/

namespace A035012.P13911771056029419522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n + 3 : ℤ) - ⌈SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A035012.P13911771056029419522

namespace A035012

/-- `∏[9*n+3-ceil(acot(n))]` -/
def P13911771056029419522.Spec : Prop :=
  ∀ n, P13911771056029419522.a n = A035012 (n + 1)

end A035012

/-!
# A035013: One third of 9-factorial numbers.

The programs for A035013, the canonical program `A035013.P16671226420093103158` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035013 has offset 1).

The definition of A035013 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035013.P16671226420093103158

`(9*(n+1)-6)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035013

/-- `(9*(n+1)-6)*a(n-1)` -/
def P16671226420093103158.Spec : Prop :=
  ∀ n, P16671226420093103158.a n = A035013 (n + 1)

theorem P16671226420093103158.correct : P16671226420093103158.Spec := by
  intro n
  simp only [A035013, Nat.add_sub_cancel]

end A035013

/-! ## A035013.P6425335091324502764

`A144758(n+1)/3`
-/

namespace A035013.P6425335091324502764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144758 (n + 1) : ℚ) / 3

end

end A035013.P6425335091324502764

namespace A035013

/-- `A144758(n+1)/3` -/
def P6425335091324502764.Spec : Prop :=
  ∀ n, P6425335091324502764.a n = (A035013 (n + 1) : ℚ)

end A035013

/-! ## A035013.P2340196157376572873

`∏[a(n-1)+9]` with `a(0)=1, a(1)=12`
-/

namespace A035013.P2340196157376572873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A035013.P2340196157376572873

namespace A035013

/-- `∏[a(n-1)+9]` -/
def P2340196157376572873.Spec : Prop :=
  ∀ n, (P2340196157376572873.a n : ℤ) = A035013 (n + 1)

end A035013

/-! ## A035013.P15167133677108764910

`3^n*∏[3*n+1]`
-/

namespace A035013.P15167133677108764910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A035013.P15167133677108764910

namespace A035013

/-- `3^n*∏[3*n+1]` -/
def P15167133677108764910.Spec : Prop :=
  ∀ n, (P15167133677108764910.a n : ℤ) = A035013 (n + 1)

end A035013

/-! ## A035013.P9657252629401690823

`∏[gcd(9*n+3, floor(acot(n)))]`
-/

namespace A035013.P9657252629401690823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (9 * n + 3 : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A035013.P9657252629401690823

namespace A035013

/-- `∏[gcd(9*n+3, floor(acot(n)))]` -/
def P9657252629401690823.Spec : Prop :=
  ∀ n, (P9657252629401690823.a n : ℤ) = A035013 (n + 1)

end A035013

/-!
# A035014: a(n) contains n digits (either '3' or '4') and is divisible by 2^n.

The programs for A035014, the canonical program `A035014.P1017373101291084189` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035014 has offset 1).

The definition of A035014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035014.P12162887645256830065

`∑[A011557(n)*A023402(n+1)]`
-/

namespace A035014.P12162887645256830065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A023402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035014.P12162887645256830065

namespace A035014

/-- `∑[A011557(n)*A023402(n+1)]` -/
def P12162887645256830065.Spec : Prop :=
  ∀ n, P12162887645256830065.a n = A035014 (n + 1)

end A035014

/-! ## A035014.P1017373101291084189

`Δ[A126646(n)]*A050620(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A035014

/-- `Δ[A126646(n)]*A050620(n+1)` -/
def P1017373101291084189.Spec : Prop :=
  ∀ n, P1017373101291084189.a n = A035014 (n + 1)

theorem P1017373101291084189.correct : P1017373101291084189.Spec := by
  intro n
  simp only [A035014, Nat.add_sub_cancel]

end A035014

/-! ## A035014.P5976431300780234521

`A000079(n+1)*A050620(n+1)`
-/

namespace A035014.P5976431300780234521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A050620 (n + 1)

end

end A035014.P5976431300780234521

namespace A035014

/-- `A000079(n+1)*A050620(n+1)` -/
def P5976431300780234521.Spec : Prop :=
  ∀ n, P5976431300780234521.a n = A035014 (n + 1)

theorem P5976431300780234521.correct : P5976431300780234521.Spec := by
  intro n
  simp only [A035014, Nat.add_sub_cancel, A035014.P5976431300780234521.a, A035014.P1017373101291084189.f1, A035014.P1017373101291084189.a, A000079, A000079.P10855139691139572931.a, A050620, A050620.P108835308460644639.a, A126646, A126646.P3746310572697910447.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A035014

/-! ## A035014.P2543273842409099568

`∑[A018005(A016777(n))*A023402(n+1)]`
-/

namespace A035014.P2543273842409099568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018005 (A016777 n).toNat * A023402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035014.P2543273842409099568

namespace A035014

/-- `∑[A018005(A016777(n))*A023402(n+1)]` -/
def P2543273842409099568.Spec : Prop :=
  ∀ n, P2543273842409099568.a n = A035014 (n + 1)

end A035014

/-! ## A035014.P14480987080549666157

`(A000225(n)+A000051(n))*A050620(n+1)`
-/

namespace A035014.P14480987080549666157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 n + A000051 n) * A050620 (n + 1)

end

end A035014.P14480987080549666157

namespace A035014

/-- `(A000225(n)+A000051(n))*A050620(n+1)` -/
def P14480987080549666157.Spec : Prop :=
  ∀ n, P14480987080549666157.a n = A035014 (n + 1)

theorem P14480987080549666157.correct : P14480987080549666157.Spec := by
  intro n
  simp only [A035014, Nat.add_sub_cancel, A035014.P14480987080549666157.a, A035014.P1017373101291084189.f1, A035014.P1017373101291084189.a, A000051, A000051.P14067217022188782580.a, A000225, A000225.P6535533121115206393.a, A050620, A050620.P108835308460644639.a, A126646, A126646.P3746310572697910447.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A035014

/-! ## A035014.P9362444986817947095

`A050620(n+1)/A034478(n)*A050621(n+1)`
-/

namespace A035014.P9362444986817947095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050620 (n + 1) : ℚ) / (A034478 n : ℚ) * (A050621 (n + 1) : ℚ)

end

end A035014.P9362444986817947095

namespace A035014

/-- `A050620(n+1)/A034478(n)*A050621(n+1)` -/
def P9362444986817947095.Spec : Prop :=
  ∀ n, P9362444986817947095.a n = (A035014 (n + 1) : ℚ)

end A035014

/-! ## A035014.P1057840999401454193

`A050620(n+1)/A055880(n+1)*A053317(n+1)`
-/

namespace A035014.P1057840999401454193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050620 (n + 1) : ℚ) / (A055880 (n + 1) : ℚ) * (A053317 (n + 1) : ℚ)

end

end A035014.P1057840999401454193

namespace A035014

/-- `A050620(n+1)/A055880(n+1)*A053317(n+1)` -/
def P1057840999401454193.Spec : Prop :=
  ∀ n, P1057840999401454193.a n = (A035014 (n + 1) : ℚ)

end A035014

/-!
# A035015: Period of continued fraction for square root of n-th squarefree integer.

The programs for A035015, there is no canonical definition to state claims against.
-/

/-! ## A035015.P5653256188519634856

`A003285(A005117(n+2))`
-/

namespace A035015.P5653256188519634856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A005117 (n + 2)).toNat

end

end A035015.P5653256188519634856

/-! ## A035015.P7354295215947067109

`A003285(A144338(n+1))`
-/

namespace A035015.P7354295215947067109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A144338 (n + 1)).toNat

end

end A035015.P7354295215947067109

/-! ## A035015.P2201915847929028175

`A003285(eq[0, A087049(n)])`
-/

namespace A035015.P2201915847929028175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035015.P2201915847929028175

/-! ## A035015.P18434816520089260511

`A003285(Δ[A173143(n+1)])`
-/

namespace A035015.P18434816520089260511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (f1 (n + 1) - f1 n).toNat

end

end A035015.P18434816520089260511

/-! ## A035015.P17381212273792947495

`A003285(record[A079228(n+1)])`
-/

namespace A035015.P17381212273792947495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A035015.P17381212273792947495

/-! ## A035015.P7335910738078358387

`A003285(record[A007913(n+2)])`
-/

namespace A035015.P7335910738078358387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A035015.P7335910738078358387

/-! ## A035015.P8484060883727911451

`A003285(eq[1, A297404(n+1)]+1)`
-/

namespace A035015.P8484060883727911451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A035015.P8484060883727911451

/-! ## A035015.P10331963409564585968

`A003285(A243348(n+2)+n+2)`
-/

namespace A035015.P10331963409564585968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A243348 (n + 2) + (n + 2 : ℤ)).toNat

end

end A035015.P10331963409564585968

/-!
# A035016: Fourier coefficients of E_{0,4}.

The programs for A035016, there is no canonical definition to state claims against.
-/

/-! ## A035016.P13874837772703177662

`(-1)^n*A000143(n)`
-/

namespace A035016.P13874837772703177662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000143 n

end

end A035016.P13874837772703177662

/-! ## A035016.P18050101334871006204

`A000143(n)*A033999(n)`
-/

namespace A035016.P18050101334871006204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000143 n * A033999 n

end

end A035016.P18050101334871006204

/-! ## A035016.P6820910500342869743

`2*A008430(n)-A004009(n)`
-/

namespace A035016.P6820910500342869743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008430 n - A004009 n

end

end A035016.P6820910500342869743

/-! ## A035016.P2643185764867815258

`A000118(n)*A000143(n)/A096727(n)`
-/

namespace A035016.P2643185764867815258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000118 n * A000143 n : ℚ) / (A096727 n : ℚ)

end

end A035016.P2643185764867815258

/-! ## A035016.P17029521759326287895

`A000143(n)*A353354(A000040(n+1))`
-/

namespace A035016.P17029521759326287895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000143 n * A353354 (A000040 (n + 1)).toNat

end

end A035016.P17029521759326287895

/-! ## A035016.P16218922415521939934

`A000143(2*n)-2*A007331(4*n)`
-/

namespace A035016.P16218922415521939934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000143 (2 * n) - 2 * A007331 (4 * n)

end

end A035016.P16218922415521939934

/-! ## A035016.P15272115252030357169

`A259491(4*n)`
-/

namespace A035016.P15272115252030357169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259491 (4 * n)

end

end A035016.P15272115252030357169

/-! ## A035016.P5020907706851654105

`A000143(n)/A004409(n)*A319553(n)`
-/

namespace A035016.P5020907706851654105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000143 n : ℚ) / (A004409 n : ℚ) * (A319553 n : ℚ)

end

end A035016.P5020907706851654105

/-! ## A035016.P14182426604346831185

`A000143(n)*A010815(A000326(n))`
-/

namespace A035016.P14182426604346831185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000143 n * A010815 (A000326 n).toNat

end

end A035016.P14182426604346831185

/-!
# A035017: One quarter of 9-factorial numbers.

The programs for A035017, the canonical program `A035017.P12312037697716811833` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035017 has offset 1).

The definition of A035017 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035017.P12312037697716811833

`(9*(n+1)-5)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035017

/-- `(9*(n+1)-5)*a(n-1)` -/
def P12312037697716811833.Spec : Prop :=
  ∀ n, P12312037697716811833.a n = A035017 (n + 1)

theorem P12312037697716811833.correct : P12312037697716811833.Spec := by
  intro n
  simp only [A035017, Nat.add_sub_cancel]

end A035017

/-! ## A035017.P1596839107077891981

`A144829(n+1)/4`
-/

namespace A035017.P1596839107077891981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144829 (n + 1) : ℚ) / 4

end

end A035017.P1596839107077891981

namespace A035017

/-- `A144829(n+1)/4` -/
def P1596839107077891981.Spec : Prop :=
  ∀ n, P1596839107077891981.a n = (A035017 (n + 1) : ℚ)

end A035017

/-! ## A035017.P8377699746019686216

`∏[a(n-1)+9]` with `a(0)=1, a(1)=13`
-/

namespace A035017.P8377699746019686216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 13] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A035017.P8377699746019686216

namespace A035017

/-- `∏[a(n-1)+9]` -/
def P8377699746019686216.Spec : Prop :=
  ∀ n, (P8377699746019686216.a n : ℤ) = A035017 (n + 1)

end A035017

/-! ## A035017.P4034661053176793689

`∏[A263941(2*n+1)]`
-/

namespace A035017.P4034661053176793689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263941 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A035017.P4034661053176793689

namespace A035017

/-- `∏[A263941(2*n+1)]` -/
def P4034661053176793689.Spec : Prop :=
  ∀ n, P4034661053176793689.a n = A035017 (n + 1)

end A035017

/-! ## A035017.P7592881372747960552

`a(n-1)*A017209(n)` with `a(0)=1`
-/

namespace A035017.P7592881372747960552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A017209 n

end

end A035017.P7592881372747960552

namespace A035017

/-- `a(n-1)*A017209(n)` -/
def P7592881372747960552.Spec : Prop :=
  ∀ n, P7592881372747960552.a n = A035017 (n + 1)

end A035017

/-!
# A035018: One fifth of 9-factorial numbers.

The programs for A035018, the canonical program `A035018.P15778385241079547210` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035018 has offset 1).

The definition of A035018 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035018.P15778385241079547210

`(9*(n+1)-4)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035018

/-- `(9*(n+1)-4)*a(n-1)` -/
def P15778385241079547210.Spec : Prop :=
  ∀ n, P15778385241079547210.a n = A035018 (n + 1)

theorem P15778385241079547210.correct : P15778385241079547210.Spec := by
  intro n
  simp only [A035018, Nat.add_sub_cancel]

end A035018

/-! ## A035018.P10960966592783430537

`A147629(n+2)/5`
-/

namespace A035018.P10960966592783430537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147629 (n + 2) : ℚ) / 5

end

end A035018.P10960966592783430537

namespace A035018

/-- `A147629(n+2)/5` -/
def P10960966592783430537.Spec : Prop :=
  ∀ n, P10960966592783430537.a n = (A035018 (n + 1) : ℚ)

end A035018

/-! ## A035018.P6357860829512264967

`∏[a(n-1)+9]` with `a(0)=1, a(1)=14`
-/

namespace A035018.P6357860829512264967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 14] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A035018.P6357860829512264967

namespace A035018

/-- `∏[a(n-1)+9]` -/
def P6357860829512264967.Spec : Prop :=
  ∀ n, (P6357860829512264967.a n : ℤ) = A035018 (n + 1)

end A035018

/-! ## A035018.P1366437400241819502

`a(n-1)*A017221(n)` with `a(0)=1`
-/

namespace A035018.P1366437400241819502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A017221 n

end

end A035018.P1366437400241819502

namespace A035018

/-- `a(n-1)*A017221(n)` -/
def P1366437400241819502.Spec : Prop :=
  ∀ n, P1366437400241819502.a n = A035018 (n + 1)

end A035018

/-! ## A035018.P15832862506425909148

`∏[record[A166522(n+1)+n]]`
-/

namespace A035018.P15832862506425909148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166522 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A035018.P15832862506425909148

namespace A035018

/-- `∏[record[A166522(n+1)+n]]` -/
def P15832862506425909148.Spec : Prop :=
  ∀ n, P15832862506425909148.a n = A035018 (n + 1)

end A035018

/-!
# A035019: Sizes of successive shells in hexagonal (or A_2) lattice.

The programs for A035019, there is no canonical definition to state claims against.
-/

/-! ## A035019.P4378523319300077773

`A033716(A270248(n+1))`
-/

namespace A035019.P4378523319300077773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (A270248 (n + 1)).toNat

end

end A035019.P4378523319300077773

/-! ## A035019.P12500198545313826325

`A033716(2*A270050(n+1))`
-/

namespace A035019.P12500198545313826325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (2 * A270050 (n + 1)).toNat

end

end A035019.P12500198545313826325

/-! ## A035019.P7904416212395991465

`A217220(2*A270050(n+1))`
-/

namespace A035019.P7904416212395991465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217220 (2 * A270050 (n + 1)).toNat

end

end A035019.P7904416212395991465

/-! ## A035019.P17164006168090792235

`A033716(4*A003136(n+1))`
-/

namespace A035019.P17164006168090792235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (4 * A003136 (n + 1)).toNat

end

end A035019.P17164006168090792235

/-! ## A035019.P12978587424512837195

`A217220(4*A003136(n+1))`
-/

namespace A035019.P12978587424512837195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217220 (4 * A003136 (n + 1)).toNat

end

end A035019.P12978587424512837195

/-! ## A035019.P16001258306042374688

`A033716(lcm(4, A003136(n+1)))`
-/

namespace A035019.P16001258306042374688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (Int.lcm 4 (A003136 (n + 1)))

end

end A035019.P16001258306042374688

/-! ## A035019.P10125792352592995442

`A004016(A003136(n+1))`
-/

namespace A035019.P10125792352592995442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (A003136 (n + 1)).toNat

end

end A035019.P10125792352592995442

/-! ## A035019.P12048498314283189673

`A004016(lt[0, A004016(n)])`
-/

namespace A035019.P12048498314283189673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A035019.P12048498314283189673

/-! ## A035019.P10502466777399156163

`A004016(A270248(n+1)/4)`
-/

namespace A035019.P10502466777399156163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (SequenceMachineLib.roundAway ((A270248 (n + 1) : ℚ) / 4)).toNat

end

end A035019.P10502466777399156163

/-! ## A035019.P1266619879457175190

`filter[A004016(n), A022932(#)]`
-/

namespace A035019.P1266619879457175190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022932 (f1 j).toNat = 1) n)

end

end A035019.P1266619879457175190

/-! ## A035019.P5170247367677254124

`filter[A004016(n), A109720(#)]`
-/

namespace A035019.P5170247367677254124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A035019.P5170247367677254124

/-! ## A035019.P4596238796083043224

`filter[A004016(n), A123640(#)]`
-/

namespace A035019.P4596238796083043224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123640 (f1 j).toNat = 1) n)

end

end A035019.P4596238796083043224

/-! ## A035019.P12157410878739465275

`filter[A004016(n), A145568(#)]`
-/

namespace A035019.P12157410878739465275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A035019.P12157410878739465275

/-! ## A035019.P87420699537568236

`A244339(A270050(n+1))`
-/

namespace A035019.P87420699537568236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244339 (A270050 (n + 1)).toNat

end

end A035019.P87420699537568236

/-! ## A035019.P11584126907634434395

`A244339(2*A003136(n+1))`
-/

namespace A035019.P11584126907634434395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244339 (2 * A003136 (n + 1)).toNat

end

end A035019.P11584126907634434395

/-! ## A035019.P4357250624978507824

`A004016(comp[n-(n+1)*A004016(n)])`
-/

namespace A035019.P4357250624978507824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (n + 1 : ℤ) * A004016 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A035019.P4357250624978507824

/-! ## A035019.P6011476483488778868

`A033716(lt[n, A033716(n)*A035444(n)])`
-/

namespace A035019.P6011476483488778868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n * A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A035019.P6011476483488778868

/-! ## A035019.P5521433019844991953

`A004016(A270672(n+1))`
-/

namespace A035019.P5521433019844991953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (A270672 (n + 1)).toNat

end

end A035019.P5521433019844991953

/-! ## A035019.P4096300440928552365

`A005928(lt[0, A005928(n)])`
-/

namespace A035019.P4096300440928552365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005928 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A035019.P4096300440928552365

/-! ## A035019.P15402190584810907602

`A005928(3*A003136(n+1))`
-/

namespace A035019.P15402190584810907602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005928 (3 * A003136 (n + 1)).toNat

end

end A035019.P15402190584810907602

/-!
# A035020: One sixth of 9-factorial numbers.

The programs for A035020, the canonical program `A035020.P8668640630189272144` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035020 has offset 1).

The definition of A035020 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035020.P8668640630189272144

`(9*(n+1)-3)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035020

/-- `(9*(n+1)-3)*a(n-1)` -/
def P8668640630189272144.Spec : Prop :=
  ∀ n, P8668640630189272144.a n = A035020 (n + 1)

theorem P8668640630189272144.correct : P8668640630189272144.Spec := by
  intro n
  simp only [A035020, Nat.add_sub_cancel]

end A035020

/-! ## A035020.P13114216763794316503

`A147630(n+2)/6`
-/

namespace A035020.P13114216763794316503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147630 (n + 2) : ℚ) / 6

end

end A035020.P13114216763794316503

namespace A035020

/-- `A147630(n+2)/6` -/
def P13114216763794316503.Spec : Prop :=
  ∀ n, P13114216763794316503.a n = (A035020 (n + 1) : ℚ)

end A035020

/-! ## A035020.P9066181612371836986

`∏[9*n+6]/6`
-/

namespace A035020.P9066181612371836986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 6

end

end A035020.P9066181612371836986

namespace A035020

/-- `∏[9*n+6]/6` -/
def P9066181612371836986.Spec : Prop :=
  ∀ n, P9066181612371836986.a n = (A035020 (n + 1) : ℚ)

end A035020

/-! ## A035020.P1761658301290449871

`∏[a(n-1)+9]` with `a(0)=1, a(1)=15`
-/

namespace A035020.P1761658301290449871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 15] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A035020.P1761658301290449871

namespace A035020

/-- `∏[a(n-1)+9]` -/
def P1761658301290449871.Spec : Prop :=
  ∀ n, (P1761658301290449871.a n : ℤ) = A035020 (n + 1)

end A035020

/-! ## A035020.P5445283557383050488

`n!*A004992(n)`
-/

namespace A035020.P5445283557383050488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A004992 n

end

end A035020.P5445283557383050488

namespace A035020

/-- `n!*A004992(n)` -/
def P5445283557383050488.Spec : Prop :=
  ∀ n, P5445283557383050488.a n = A035020 (n + 1)

end A035020

/-!
# A035021: One seventh of 9-factorial numbers.

The programs for A035021, the canonical program `A035021.P1053094631369097862` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035021 has offset 1).

The definition of A035021 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035021.P1053094631369097862

`(9*(n+1)-2)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035021

/-- `(9*(n+1)-2)*a(n-1)` -/
def P1053094631369097862.Spec : Prop :=
  ∀ n, P1053094631369097862.a n = A035021 (n + 1)

theorem P1053094631369097862.correct : P1053094631369097862.Spec := by
  intro n
  simp only [A035021, Nat.add_sub_cancel]

end A035021

/-! ## A035021.P1640098296786161187

`A147631(n+2)/7`
-/

namespace A035021.P1640098296786161187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147631 (n + 2) : ℚ) / 7

end

end A035021.P1640098296786161187

namespace A035021

/-- `A147631(n+2)/7` -/
def P1640098296786161187.Spec : Prop :=
  ∀ n, P1640098296786161187.a n = (A035021 (n + 1) : ℚ)

end A035021

/-! ## A035021.P2716748293894940088

`∏[9*n+7]/7`
-/

namespace A035021.P2716748293894940088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 7

end

end A035021.P2716748293894940088

namespace A035021

/-- `∏[9*n+7]/7` -/
def P2716748293894940088.Spec : Prop :=
  ∀ n, P2716748293894940088.a n = (A035021 (n + 1) : ℚ)

end A035021

/-! ## A035021.P11262598825508588493

`∏[a(n-1)+9]` with `a(0)=1, a(1)=16`
-/

namespace A035021.P11262598825508588493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 16] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A035021.P11262598825508588493

namespace A035021

/-- `∏[a(n-1)+9]` -/
def P11262598825508588493.Spec : Prop :=
  ∀ n, (P11262598825508588493.a n : ℤ) = A035021 (n + 1)

end A035021

/-! ## A035021.P14270503280933254712

`a(n-1)*A017245(n)` with `a(0)=1`
-/

namespace A035021.P14270503280933254712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A017245 n

end

end A035021.P14270503280933254712

namespace A035021

/-- `a(n-1)*A017245(n)` -/
def P14270503280933254712.Spec : Prop :=
  ∀ n, P14270503280933254712.a n = A035021 (n + 1)

end A035021

/-!
# A035022: One eighth of 9-factorial numbers.

The programs for A035022, the canonical program `A035022.P16250309906431575178` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035022 has offset 1).

The definition of A035022 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035022.P16250309906431575178

`(9*(n+1)-1)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035022

/-- `(9*(n+1)-1)*a(n-1)` -/
def P16250309906431575178.Spec : Prop :=
  ∀ n, P16250309906431575178.a n = A035022 (n + 1)

theorem P16250309906431575178.correct : P16250309906431575178.Spec := by
  intro n
  simp only [A035022, Nat.add_sub_cancel]

end A035022

/-! ## A035022.P14149107817494457486

`A049211(n+1)/8`
-/

namespace A035022.P14149107817494457486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049211 (n + 1) : ℚ) / 8

end

end A035022.P14149107817494457486

namespace A035022

/-- `A049211(n+1)/8` -/
def P14149107817494457486.Spec : Prop :=
  ∀ n, P14149107817494457486.a n = (A035022 (n + 1) : ℚ)

end A035022

/-! ## A035022.P4810387391376205196

`∏[9*n+8]/8`
-/

namespace A035022.P4810387391376205196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 8

end

end A035022.P4810387391376205196

namespace A035022

/-- `∏[9*n+8]/8` -/
def P4810387391376205196.Spec : Prop :=
  ∀ n, P4810387391376205196.a n = (A035022 (n + 1) : ℚ)

end A035022

/-! ## A035022.P11286945762311687584

`∏[a(n-1)+9]` with `a(0)=1, a(1)=17`
-/

namespace A035022.P11286945762311687584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 17] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A035022.P11286945762311687584

namespace A035022

/-- `∏[a(n-1)+9]` -/
def P11286945762311687584.Spec : Prop :=
  ∀ n, (P11286945762311687584.a n : ℤ) = A035022 (n + 1)

end A035022

/-! ## A035022.P6542804144385124247

`∏[record[A166524(n+1)]]`
-/

namespace A035022.P6542804144385124247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166524 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A035022.P6542804144385124247

namespace A035022

/-- `∏[record[A166524(n+1)]]` -/
def P6542804144385124247.Spec : Prop :=
  ∀ n, P6542804144385124247.a n = A035022 (n + 1)

end A035022

/-!
# A035023: One ninth of 9-factorial numbers.

The programs for A035023, the canonical program `A035023.P6325731805493729042` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035023 has offset 1).

The definition of A035023 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035023.P6325731805493729042

`9^n*(n+1)!`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035023

/-- `9^n*(n+1)!` -/
def P6325731805493729042.Spec : Prop :=
  ∀ n, (P6325731805493729042.a n : ℤ) = A035023 (n + 1)

theorem P6325731805493729042.correct : P6325731805493729042.Spec := by
  intro n
  simp only [A035023, Nat.add_sub_cancel]

end A035023

/-! ## A035023.P10363189549152815312

`9*(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A035023.P10363189549152815312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  9 * (n + 1) * a (n - 1)

end

end A035023.P10363189549152815312

namespace A035023

/-- `9*(n+1)*a(n-1)` -/
def P10363189549152815312.Spec : Prop :=
  ∀ n, (P10363189549152815312.a n : ℤ) = A035023 (n + 1)

end A035023

/-! ## A035023.P11385731650916047948

`A001019(n)*A000142(n+1)`
-/

namespace A035023.P11385731650916047948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n * A000142 (n + 1)

end

end A035023.P11385731650916047948

namespace A035023

/-- `A001019(n)*A000142(n+1)` -/
def P11385731650916047948.Spec : Prop :=
  ∀ n, P11385731650916047948.a n = A035023 (n + 1)

theorem P11385731650916047948.correct : P11385731650916047948.Spec := by
  intro n
  simp only [A035023, Nat.add_sub_cancel, A035023.P11385731650916047948.a, A035023.P6325731805493729042.a, A000142, A000142.P3272619076580183195.a, A001019, A001019.P4632907595368420400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035023

/-! ## A035023.P12514118963819250083

`∏[9*(n+1)]/9`
-/

namespace A035023.P12514118963819250083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 9

end

end A035023.P12514118963819250083

namespace A035023

/-- `∏[9*(n+1)]/9` -/
def P12514118963819250083.Spec : Prop :=
  ∀ n, P12514118963819250083.a n = (A035023 (n + 1) : ℚ)

end A035023

/-! ## A035023.P11161877523186166821

`∏[a(n-1)+9]` with `a(0)=1, a(1)=18`
-/

namespace A035023.P11161877523186166821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 18] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A035023.P11161877523186166821

namespace A035023

/-- `∏[a(n-1)+9]` -/
def P11161877523186166821.Spec : Prop :=
  ∀ n, (P11161877523186166821.a n : ℤ) = A035023 (n + 1)

end A035023

/-!
# A035024: Expansion of 1/(1-81*x)^(1/9), related to 9-factorial numbers A045756.

The programs for A035024, there is no canonical definition to state claims against.
-/

/-! ## A035024.P10060857363894484921

`9^n*A045756(n)/n!`
-/

namespace A035024.P10060857363894484921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 ^ n : ℤ) * A045756 n : ℚ) / (Nat.factorial n : ℚ)

end

end A035024.P10060857363894484921

/-! ## A035024.P14052252079469501599

`3^n*A298799(n)`
-/

namespace A035024.P14052252079469501599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A298799 n

end

end A035024.P14052252079469501599

/-! ## A035024.P6570892790388074841

`A008776(n)*A298799(n)/2`
-/

namespace A035024.P6570892790388074841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008776 n * A298799 n : ℚ) / 2

end

end A035024.P6570892790388074841

/-! ## A035024.P3805281312883180246

`A298799(n)/A000984(n)*A098658(n)`
-/

namespace A035024.P3805281312883180246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298799 n : ℚ) / (A000984 n : ℚ) * (A098658 n : ℚ)

end

end A035024.P3805281312883180246

/-! ## A035024.P7216272099360736756

`A298799(n)*A317318(A000244(n))`
-/

namespace A035024.P7216272099360736756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298799 n * A317318 (A000244 n).toNat

end

end A035024.P7216272099360736756

/-!
# A035026: Number of times that i and 2n-i are both prime, for i = 1, ..., 2n-1.

The programs for A035026, there is no canonical definition to state claims against.
-/

/-! ## A035026.P6817091043811235421

`A010051(n+1)+2*A061357(n+1)`
-/

namespace A035026.P6817091043811235421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + 2 * A061357 (n + 1)

end

end A035026.P6817091043811235421

/-! ## A035026.P18242719937298024808

`2*A045917(n+1)-A010051(n+1)`
-/

namespace A035026.P18242719937298024808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045917 (n + 1) - A010051 (n + 1)

end

end A035026.P18242719937298024808

/-! ## A035026.P12268618169991586484

`A073610(2*(n+1))`
-/

namespace A035026.P12268618169991586484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (2 * (n + 1))

end

end A035026.P12268618169991586484

/-! ## A035026.P14638562361946134228

`A002372(char[1]+1+n)`
-/

namespace A035026.P14638562361946134228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002372 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)

end

end A035026.P14638562361946134228

/-! ## A035026.P12555962962174390733

`and(-1, A002372(ceil(sqrt(n²+4))))`
-/

namespace A035026.P12555962962174390733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A002372 ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉.toNat)

end

end A035026.P12555962962174390733

/-! ## A035026.P16986428347114627279

`A002372(n+1)+C(C(2, n), 2)`
-/

namespace A035026.P16986428347114627279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002372 (n + 1) + (Nat.choose (Nat.choose 2 n) 2 : ℤ)

end

end A035026.P16986428347114627279

/-! ## A035026.P6456567157753432042

`A063524(n)+A002372(n+1)`
-/

namespace A035026.P6456567157753432042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A002372 (n + 1)

end

end A035026.P6456567157753432042

/-! ## A035026.P5973761856682824262

`A002372(n+1)-A159075(n)`
-/

namespace A035026.P5973761856682824262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002372 (n + 1) - A159075 n

end

end A035026.P5973761856682824262

/-! ## A035026.P13230602807486744405

`A099801(n)-A291564(n+1)`
-/

namespace A035026.P13230602807486744405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 n - A291564 (n + 1)

end

end A035026.P13230602807486744405

/-! ## A035026.P12927268520119821505

`A061357(n+1)+A045917(n+1)`
-/

namespace A035026.P12927268520119821505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (n + 1) + A045917 (n + 1)

end

end A035026.P12927268520119821505

/-! ## A035026.P3530162823349919193

`A000720(2*n+1)-A291564(n+1)`
-/

namespace A035026.P3530162823349919193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * n + 1) - A291564 (n + 1)

end

end A035026.P3530162823349919193

/-! ## A035026.P16687153087944014907

`floor(A045917(n+1)+A002372(n+1)/2)`
-/

namespace A035026.P16687153087944014907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045917 (n + 1) : ℚ) + (A002372 (n + 1) : ℚ) / 2⌋

end

end A035026.P16687153087944014907

/-! ## A035026.P13078549794349815942

`char[1]+A061357(n+1)+A002375(n+1)`
-/

namespace A035026.P13078549794349815942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A061357 (n + 1) + A002375 (n + 1))

end

end A035026.P13078549794349815942

/-! ## A035026.P16144290590896517725

`A028310(A002372(n+1))+n-A028310(n)`
-/

namespace A035026.P16144290590896517725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A002372 (n + 1)).toNat + ((n : ℤ) - A028310 n)

end

end A035026.P16144290590896517725

/-! ## A035026.P1935676968282920448

`A002372(n+1)+A045917(n+1)-A002375(n+1)`
-/

namespace A035026.P1935676968282920448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002372 (n + 1) + (A045917 (n + 1) - A002375 (n + 1))

end

end A035026.P1935676968282920448

/-! ## A035026.P8154869141360826855

`A002372(n+1)+A010051(n+1)*A010051(n+2)`
-/

namespace A035026.P8154869141360826855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002372 (n + 1) + A010051 (n + 1) * A010051 (n + 2)

end

end A035026.P8154869141360826855

/-! ## A035026.P11462502686189609847

`A045917(n+1)+A002372(n+1)-ceil(A002372(2*n+1-n)/2)`
-/

namespace A035026.P11462502686189609847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1) + (A002372 (n + 1) - ⌈(A002372 ((2 * n : ℤ) + (1 - (n : ℤ))).toNat : ℚ) / 2⌉)

end

end A035026.P11462502686189609847

/-! ## A035026.P7725887294682311923

`A045917(n+1)+A002372(n+1)-A045917(n+1)%A045893(n+1)`
-/

namespace A035026.P7725887294682311923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1) + (A002372 (n + 1) - Int.tmod (A045917 (n + 1)) (A045893 (n + 1)))

end

end A035026.P7725887294682311923

/-! ## A035026.P12226487436899553109

`A045917(n+1)+A224709(n+1)-A224710(n+2)`
-/

namespace A035026.P12226487436899553109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1) + (A224709 (n + 1) - A224710 (n + 2))

end

end A035026.P12226487436899553109

/-! ## A035026.P2863610474714005998

`A002126(A103517(n))`
-/

namespace A035026.P2863610474714005998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (A103517 n).toNat

end

end A035026.P2863610474714005998

/-!
# A035028: First differences of A002002.

The programs for A035028, the canonical program `A035028.P14100517736194194964` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035028 has offset 0).

The definition of A035028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035028.P16766020468958525754

`A104550(n+2)`
-/

namespace A035028.P16766020468958525754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104550 (n + 2)

end

end A035028.P16766020468958525754

namespace A035028

/-- `A104550(n+2)` -/
def P16766020468958525754.Spec : Prop :=
  ∀ n, P16766020468958525754.a n = A035028 n

end A035028

/-! ## A035028.P12794861679666498030

`4*A035029(n)`
-/

namespace A035028.P12794861679666498030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A035029 n

end

end A035028.P12794861679666498030

namespace A035028

/-- `4*A035029(n)` -/
def P12794861679666498030.Spec : Prop :=
  ∀ n, P12794861679666498030.a n = A035028 n

end A035028

/-! ## A035028.P14100517736194194964

`Δ[Δ[A047665(n)]]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035028

/-- `Δ[Δ[A047665(n)]]` -/
def P14100517736194194964.Spec : Prop :=
  ∀ n, P14100517736194194964.a n = A035028 n

theorem P14100517736194194964.correct : P14100517736194194964.Spec := by
  intro n
  simp only [A035028]

end A035028

/-! ## A035028.P10872276076436315411

`Δ[Δ[A226994(n)]]`
-/

namespace A035028.P10872276076436315411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226994 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035028.P10872276076436315411

namespace A035028

/-- `Δ[Δ[A226994(n)]]` -/
def P10872276076436315411.Spec : Prop :=
  ∀ n, P10872276076436315411.a n = A035028 n

theorem P10872276076436315411.correct : P10872276076436315411.Spec := by
  intro n
  simp only [A035028, Nat.add_sub_cancel, A035028.P10872276076436315411.f2, A035028.P10872276076436315411.f1, A035028.P10872276076436315411.a, A035028.P14100517736194194964.f2, A035028.P14100517736194194964.f1, A035028.P14100517736194194964.a, A047665, A047665.P11812153229518684916.a, A226994, A226994.P17259098154566869969.a, A001850, A001850.P8225243896153059034.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035028

/-! ## A035028.P15326746036321925825

`Δ[A002002(n+1)]`
-/

namespace A035028.P15326746036321925825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035028.P15326746036321925825

namespace A035028

/-- `Δ[A002002(n+1)]` -/
def P15326746036321925825.Spec : Prop :=
  ∀ n, P15326746036321925825.a n = A035028 n

end A035028

/-! ## A035028.P10870340243826596490

`Δ[A026003(Δ[n²])]`
-/

namespace A035028.P10870340243826596490
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026003 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035028.P10870340243826596490

namespace A035028

/-- `Δ[A026003(Δ[n²])]` -/
def P10870340243826596490.Spec : Prop :=
  ∀ n, P10870340243826596490.a n = A035028 n

end A035028

/-! ## A035028.P6147233861256063555

`A247630(2*n+3)`
-/

namespace A035028.P6147233861256063555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247630 (2 * n + 3)

end

end A035028.P6147233861256063555

namespace A035028

/-- `A247630(2*n+3)` -/
def P6147233861256063555.Spec : Prop :=
  ∀ n, P6147233861256063555.a n = A035028 n

end A035028

/-! ## A035028.P581913467272545263

`Δ[abs(A182626(n+1))]`
-/

namespace A035028.P581913467272545263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182626 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035028.P581913467272545263

namespace A035028

/-- `Δ[abs(A182626(n+1))]` -/
def P581913467272545263.Spec : Prop :=
  ∀ n, P581913467272545263.a n = A035028 n

end A035028

/-! ## A035028.P5349600363703597778

`Δ[Δ[A001850(n)/2]]`
-/

namespace A035028.P5349600363703597778
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001850 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035028.P5349600363703597778

namespace A035028

/-- `Δ[Δ[A001850(n)/2]]` -/
def P5349600363703597778.Spec : Prop :=
  ∀ n, P5349600363703597778.a n = (A035028 n : ℚ)

end A035028

/-! ## A035028.P3901318524864700391

`Δ[A110170(n+1)/2]`
-/

namespace A035028.P3901318524864700391
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110170 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035028.P3901318524864700391

namespace A035028

/-- `Δ[A110170(n+1)/2]` -/
def P3901318524864700391.Spec : Prop :=
  ∀ n, P3901318524864700391.a n = (A035028 n : ℚ)

end A035028

/-! ## A035028.P10787915391407533329

`Δ[Δ[A026003(2*n)/2]]`
-/

namespace A035028.P10787915391407533329
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026003 (2 * n) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035028.P10787915391407533329

namespace A035028

/-- `Δ[Δ[A026003(2*n)/2]]` -/
def P10787915391407533329.Spec : Prop :=
  ∀ n, P10787915391407533329.a n = (A035028 n : ℚ)

end A035028

/-! ## A035028.P13989555120032858105

`record[A247630(A014681(n+1)+1)]`
-/

namespace A035028.P13989555120032858105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247630 (A014681 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035028.P13989555120032858105

namespace A035028

/-- `record[A247630(A014681(n+1)+1)]` -/
def P13989555120032858105.Spec : Prop :=
  ∀ n, P13989555120032858105.a n = A035028 n

end A035028

/-! ## A035028.P18365035467432953453

`record[A247630(A083220(n+1)+1)]`
-/

namespace A035028.P18365035467432953453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247630 (A083220 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035028.P18365035467432953453

namespace A035028

/-- `record[A247630(A083220(n+1)+1)]` -/
def P18365035467432953453.Spec : Prop :=
  ∀ n, P18365035467432953453.a n = A035028 n

end A035028

/-! ## A035028.P12293385238067752250

`record[A247630(A026741(n+1)+2)]`
-/

namespace A035028.P12293385238067752250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247630 (A026741 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035028.P12293385238067752250

namespace A035028

/-- `record[A247630(A026741(n+1)+2)]` -/
def P12293385238067752250.Spec : Prop :=
  ∀ n, P12293385238067752250.a n = A035028 n

end A035028

/-! ## A035028.P3702469539659376889

`Δ[A001850(n)+n*A006318(n)]`
-/

namespace A035028.P3702469539659376889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n + (n : ℤ) * A006318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035028.P3702469539659376889

namespace A035028

/-- `Δ[A001850(n)+n*A006318(n)]` -/
def P3702469539659376889.Spec : Prop :=
  ∀ n, P3702469539659376889.a n = A035028 n

end A035028

/-! ## A035028.P16326382434724690702

`A026002(n+1)+A001850(n+1)`
-/

namespace A035028.P16326382434724690702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026002 (n + 1) + A001850 (n + 1)

end

end A035028.P16326382434724690702

namespace A035028

/-- `A026002(n+1)+A001850(n+1)` -/
def P16326382434724690702.Spec : Prop :=
  ∀ n, P16326382434724690702.a n = A035028 n

end A035028

/-! ## A035028.P12579239413681457222

`A002002(n+2)-A002002(n+1)`
-/

namespace A035028.P12579239413681457222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 (n + 2) - A002002 (n + 1)

end

end A035028.P12579239413681457222

namespace A035028

/-- `A002002(n+2)-A002002(n+1)` -/
def P12579239413681457222.Spec : Prop :=
  ∀ n, P12579239413681457222.a n = A035028 n

end A035028

/-! ## A035028.P5044456246557883719

`A002003(n+2)-A050146(n+2)`
-/

namespace A035028.P5044456246557883719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002003 (n + 2) - A050146 (n + 2)

end

end A035028.P5044456246557883719

namespace A035028

/-- `A002003(n+2)-A050146(n+2)` -/
def P5044456246557883719.Spec : Prop :=
  ∀ n, P5044456246557883719.a n = A035028 n

end A035028

/-! ## A035028.P18271280700839537236

`A123164(n+2)-A050146(n+2)`
-/

namespace A035028.P18271280700839537236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123164 (n + 2) - A050146 (n + 2)

end

end A035028.P18271280700839537236

namespace A035028

/-- `A123164(n+2)-A050146(n+2)` -/
def P18271280700839537236.Spec : Prop :=
  ∀ n, P18271280700839537236.a n = A035028 n

end A035028

/-! ## A035028.P11278212779595928801

`A050148(n+3)-A050147(n+2)`
-/

namespace A035028.P11278212779595928801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050148 (n + 3) - A050147 (n + 2)

end

end A035028.P11278212779595928801

namespace A035028

/-- `A050148(n+3)-A050147(n+2)` -/
def P11278212779595928801.Spec : Prop :=
  ∀ n, P11278212779595928801.a n = A035028 n

end A035028

/-!
# A035029: a(n) = Sum_{k=0..n} (k+1) * Sum_{j=0..n} 2^j*binomial(n,j)*binomial(n-k,j).

The programs for A035029, the canonical program `A035029.P1069693175398045353` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035029 has offset 0).

The definition of A035029 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002002, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A035029.P1069693175398045353

`1/4*(A002002(n+2)-A002002(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A035029

/-- `1/4*(A002002(n+2)-A002002(n+1))` -/
def P1069693175398045353.Spec : Prop :=
  ∀ n, P1069693175398045353.a n = (A035029 n : ℚ)

end A035029

/-! ## A035029.P17732275770221600163

`∑[(n+1)*A010683(n)]`
-/

namespace A035029.P17732275770221600163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035029.P17732275770221600163

namespace A035029

/-- `∑[(n+1)*A010683(n)]` -/
def P17732275770221600163.Spec : Prop :=
  ∀ n, P17732275770221600163.a n = A035029 n

end A035029

/-! ## A035029.P16950650199090330433

`∑[(n+1)*abs(Δ[A080243(n)/2])]`
-/

namespace A035029.P16950650199090330433
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080243 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * |f2 (n + 1) - f2 n|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035029.P16950650199090330433

namespace A035029

/-- `∑[(n+1)*abs(Δ[A080243(n)/2])]` -/
def P16950650199090330433.Spec : Prop :=
  ∀ n, P16950650199090330433.a n = (A035029 n : ℚ)

end A035029

/-! ## A035029.P4810033409325090176

`∑[(n+1)*A011117(∑[n+2]-1)]`
-/

namespace A035029.P4810033409325090176
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A011117 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035029.P4810033409325090176

namespace A035029

/-- `∑[(n+1)*A011117(∑[n+2]-1)]` -/
def P4810033409325090176.Spec : Prop :=
  ∀ n, P4810033409325090176.a n = A035029 n

end A035029

/-! ## A035029.P12451744737567909138

`A050152(n)+A047781(n+1)`
-/

namespace A035029.P12451744737567909138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050152 n + A047781 (n + 1)

end

end A035029.P12451744737567909138

namespace A035029

/-- `A050152(n)+A047781(n+1)` -/
def P12451744737567909138.Spec : Prop :=
  ∀ n, P12451744737567909138.a n = A035029 n

end A035029

/-! ## A035029.P5358672557530771759

`A050151(n+1)-A050152(n)`
-/

namespace A035029.P5358672557530771759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050151 (n + 1) - A050152 n

end

end A035029.P5358672557530771759

namespace A035029

/-- `A050151(n+1)-A050152(n)` -/
def P5358672557530771759.Spec : Prop :=
  ∀ n, P5358672557530771759.a n = A035029 n

end A035029

/-! ## A035029.P15561733321034456120

`(A050151(n+1)+A047781(n+1))/2`
-/

namespace A035029.P15561733321034456120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050151 (n + 1) + A047781 (n + 1) : ℚ) / 2

end

end A035029.P15561733321034456120

namespace A035029

/-- `(A050151(n+1)+A047781(n+1))/2` -/
def P15561733321034456120.Spec : Prop :=
  ∀ n, P15561733321034456120.a n = (A035029 n : ℚ)

end A035029

/-! ## A035029.P10884707096311963258

`(A001850(n+1)-A001003(n+1))/2`
-/

namespace A035029.P10884707096311963258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001850 (n + 1) - A001003 (n + 1) : ℚ) / 2

end

end A035029.P10884707096311963258

namespace A035029

/-- `(A001850(n+1)-A001003(n+1))/2` -/
def P10884707096311963258.Spec : Prop :=
  ∀ n, P10884707096311963258.a n = (A035029 n : ℚ)

end A035029

/-! ## A035029.P10293498560614197640

`A035028(n)/4`
-/

namespace A035029.P10293498560614197640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035028 n : ℚ) / 4

end

end A035029.P10293498560614197640

namespace A035029

/-- `A035028(n)/4` -/
def P10293498560614197640.Spec : Prop :=
  ∀ n, P10293498560614197640.a n = (A035029 n : ℚ)

end A035029

/-! ## A035029.P16689419323103104141

`A104550(n+2)/4`
-/

namespace A035029.P16689419323103104141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104550 (n + 2) : ℚ) / 4

end

end A035029.P16689419323103104141

namespace A035029

/-- `A104550(n+2)/4` -/
def P16689419323103104141.Spec : Prop :=
  ∀ n, P16689419323103104141.a n = (A035029 n : ℚ)

end A035029

/-! ## A035029.P9123981346005326666

`Δ[A002002(n+1)/4]`
-/

namespace A035029.P9123981346005326666
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002002 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035029.P9123981346005326666

namespace A035029

/-- `Δ[A002002(n+1)/4]` -/
def P9123981346005326666.Spec : Prop :=
  ∀ n, P9123981346005326666.a n = (A035029 n : ℚ)

end A035029

/-! ## A035029.P16646626557485387531

`Δ[Δ[A047665(n)/2]]/2`
-/

namespace A035029.P16646626557485387531
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047665 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) / 2

end

end A035029.P16646626557485387531

namespace A035029

/-- `Δ[Δ[A047665(n)/2]]/2` -/
def P16646626557485387531.Spec : Prop :=
  ∀ n, P16646626557485387531.a n = (A035029 n : ℚ)

end A035029

/-! ## A035029.P7026161954081252591

`A002695(n+1)-A277652(n+1)`
-/

namespace A035029.P7026161954081252591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002695 (n + 1) - A277652 (n + 1)

end

end A035029.P7026161954081252591

namespace A035029

/-- `A002695(n+1)-A277652(n+1)` -/
def P7026161954081252591.Spec : Prop :=
  ∀ n, P7026161954081252591.a n = A035029 n

end A035029

/-!
# A035031: For n >= 7, max(A151799(n), 2*A151799(floor((n-1)/2))).

The programs for A035031, there is no canonical definition to state claims against.
-/

/-! ## A035031.P6268800538419883818

`A035032(ceil((A035032(n+1)+n+1)/2))`
-/

namespace A035031.P6268800538419883818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035032 ⌈(A035032 (n + 1) + (n + 1 : ℤ) : ℚ) / 2⌉.toNat

end

end A035031.P6268800538419883818

/-! ## A035031.P8347689009919540123

`A035032(n+1)-A144198(A341464(n))`
-/

namespace A035031.P8347689009919540123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035032 (n + 1) - A144198 (A341464 (n + 28)).toNat

end

end A035031.P8347689009919540123

/-! ## A035031.P4523273951036499558

`char[A016778(n)]+A006530(A180272(n))`
-/

namespace A035031.P4523273951036499558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016778 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + A006530 (A180272 n).toNat

end

end A035031.P4523273951036499558

/-! ## A035031.P11096881286385445365

`A216284(n+1)+A006530(A180272(n))`
-/

namespace A035031.P11096881286385445365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216284 (n + 1) + A006530 (A180272 n).toNat

end

end A035031.P11096881286385445365

/-! ## A035031.P6666458481694418433

`A216284(A007955(n+1))+A136548(n+1)`
-/

namespace A035031.P6666458481694418433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216284 (A007955 (n + 1)).toNat + A136548 (n + 1)

end

end A035031.P6666458481694418433

/-!
# A035032: For n >= 6, max( prevprime(n), 2*prevprime(floor(n/2))).

The programs for A035032, there is no canonical definition to state claims against.
-/

/-! ## A035032.P17545137800000883093

`A035031(or(1, n+1))`
-/

namespace A035032.P17545137800000883093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (Nat.lor 1 (n + 1))

end

end A035032.P17545137800000883093

/-! ## A035032.P5315748010055628755

`A035031(and(2, n^3)!+n)`
-/

namespace A035032.P5315748010055628755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (Nat.factorial (Nat.land 2 (n ^ 3)) + n)

end

end A035032.P5315748010055628755

/-! ## A035032.P10542442906806917833

`A035031(A109613(n+1))`
-/

namespace A035032.P10542442906806917833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (A109613 (n + 1)).toNat

end

end A035032.P10542442906806917833

/-! ## A035032.P8962265926172966369

`A035031(A140201(n)+1)`
-/

namespace A035032.P8962265926172966369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (A140201 n + 1).toNat

end

end A035032.P8962265926172966369

/-! ## A035032.P5185656104033090885

`A035031(A063196(n+2))`
-/

namespace A035032.P5185656104033090885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (A063196 (n + 2)).toNat

end

end A035032.P5185656104033090885

/-! ## A035032.P6758705660711584966

`A035031(A177704(n)+n)`
-/

namespace A035032.P6758705660711584966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (A177704 n + (n : ℤ)).toNat

end

end A035032.P6758705660711584966

/-! ## A035032.P9122141739808040402

`A035031(∑[A109718(n)]+1)`
-/

namespace A035032.P9122141739808040402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A035032.P9122141739808040402

/-! ## A035032.P5877829300137889629

`A035031(A007424(n+1)+n)`
-/

namespace A035032.P5877829300137889629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (A007424 (n + 1) + (n : ℤ)).toNat

end

end A035032.P5877829300137889629

/-! ## A035032.P17433435437348585933

`A035031(xor(n+1, A021913(n)))`
-/

namespace A035032.P17433435437348585933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (Int.xor (n + 1 : ℤ) (A021913 n)).toNat

end

end A035032.P17433435437348585933

/-! ## A035032.P2296541022506036269

`A035031(A011765(n+1)+1+n)`
-/

namespace A035032.P2296541022506036269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (A011765 (n + 1) + 1 + (n : ℤ)).toNat

end

end A035032.P2296541022506036269

/-! ## A035032.P10930633769192822554

`A035031(∑[A109718(A028310(n))])`
-/

namespace A035032.P10930633769192822554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109718 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A035032.P10930633769192822554

/-! ## A035032.P15111392689524977398

`A035031(A004526(A003485(n))+1)`
-/

namespace A035032.P15111392689524977398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (A004526 (A003485 n).toNat + 1).toNat

end

end A035032.P15111392689524977398

/-! ## A035032.P11970299149217193268

`A035031(A008647(6*A003485(n)))`
-/

namespace A035032.P11970299149217193268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (A008647 (6 * A003485 n).toNat).toNat

end

end A035032.P11970299149217193268

/-!
# A035033: Numbers k such that k <= d(k)^2, where d() = number of divisors (A000005).

The programs for A035033, there is no canonical definition to state claims against.
-/

/-! ## A035033.P16267257103983814311

`lt[sqrt(abs(1-n)), ∏{e}[n, #+1]]`
-/

namespace A035033.P16267257103983814311
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (|1 - (n : ℤ)| : ℝ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A035033.P16267257103983814311

/-! ## A035033.P7059065840431497755

`lt[n, A035116(n+1)]+1`
-/

namespace A035033.P7059065840431497755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035116 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A035033.P7059065840431497755

/-! ## A035033.P9155873930712201027

`lt[n, Δ[A006218(n)]²]+1`
-/

namespace A035033.P9155873930712201027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A035033.P9155873930712201027

/-! ## A035033.P9993875234419352273

`lt[n, A000005(n+1)²]+1`
-/

namespace A035033.P9993875234419352273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A035033.P9993875234419352273

/-! ## A035033.P4919799018672740079

`record[(n+1)%A161841(n+1)²]`
-/

namespace A035033.P4919799018672740079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A161841 (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035033.P4919799018672740079

/-! ## A035033.P9616269116151296298

`∪[A034884(n+1), A084652(n)]`
-/

namespace A035033.P9616269116151296298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084652 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A035033.P9616269116151296298

/-! ## A035033.P15414346037003442844

`∪[A034884(n+1), A242853(n)]`
-/

namespace A035033.P15414346037003442844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242853 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A035033.P15414346037003442844

/-! ## A035033.P4968196761660894993

`lt[A000196(n), A000005(n+1)]+1`
-/

namespace A035033.P4968196761660894993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A035033.P4968196761660894993

/-! ## A035033.P9087165046668239852

`∪[A008847(n+1), A034884(n+1)]`
-/

namespace A035033.P9087165046668239852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A035033.P9087165046668239852

/-! ## A035033.P11789884232377845869

`∪[A034884(n+1), A036898(n+1)]`
-/

namespace A035033.P11789884232377845869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A035033.P11789884232377845869

/-!
# A035034: Numbers k such that k >= d(k)^2, where d(k) is the number of divisors of k.

The programs for A035034, there is no canonical definition to state claims against.
-/

/-! ## A035034.P8895038678877035291

`comp[A034884(n+1)-1]+1`
-/

namespace A035034.P8895038678877035291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034884 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A035034.P8895038678877035291

/-!
# A035035: Numbers k such that k > d(k)^2, where d(k) is the number of divisors of k.

The programs for A035035, there is no canonical definition to state claims against.
-/

/-! ## A035035.P9790077038938337494

`A035034(A184985(n+1)+2)`
-/

namespace A035035.P9790077038938337494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035034 (A184985 (n + 1) + 2).toNat

end

end A035035.P9790077038938337494

/-!
# A035037: Fourier coefficients of E_{gamma,2}^2*E_{0,4}.

The programs for A035037, there is no canonical definition to state claims against.
-/

/-! ## A035037.P14366575463460573087

`A319307(n)-8*A002288(2*n)`
-/

namespace A035037.P14366575463460573087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319307 n - 8 * A002288 (2 * n)

end

end A035037.P14366575463460573087

/-! ## A035037.P13627500474331479269

`A319307(n)+A002288(A008586(n))`
-/

namespace A035037.P13627500474331479269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319307 n + A002288 (A008586 n).toNat

end

end A035037.P13627500474331479269

/-!
# A035038: a(n) = 2^n - C(n,0) - C(n,1) - ... - C(n,5).

The programs for A035038, the canonical program `A035038.P11515986171083734382` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035038 has offset 0).

The definition of A035038 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035038.P11515986171083734382

`2*a(n-1)+C(n-1, 5)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035038

/-- `2*a(n-1)+C(n-1, 5)` -/
def P11515986171083734382.Spec : Prop :=
  ∀ n, (P11515986171083734382.a n : ℤ) = A035038 n

theorem P11515986171083734382.correct : P11515986171083734382.Spec := by
  intro n
  simp only [A035038]

end A035038

/-! ## A035038.P6320953614990134262

`2^n-∑[∑[n-1]+C(n, 4)+2]`
-/

namespace A035038.P6320953614990134262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (Nat.choose n 4 : ℤ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035038.P6320953614990134262

namespace A035038

/-- `2^n-∑[∑[n-1]+C(n, 4)+2]` -/
def P6320953614990134262.Spec : Prop :=
  ∀ n, P6320953614990134262.a n = A035038 n

end A035038

/-! ## A035038.P17171277036251556918

`2^n-A006261(n)`
-/

namespace A035038.P17171277036251556918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A006261 n

end

end A035038.P17171277036251556918

namespace A035038

/-- `2^n-A006261(n)` -/
def P17171277036251556918.Spec : Prop :=
  ∀ n, P17171277036251556918.a n = A035038 n

end A035038

/-! ## A035038.P8794847830187154782

`∑[A002664(abs(1-n))]`
-/

namespace A035038.P8794847830187154782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002664 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035038.P8794847830187154782

namespace A035038

/-- `∑[A002664(abs(1-n))]` -/
def P8794847830187154782.Spec : Prop :=
  ∀ n, P8794847830187154782.a n = A035038 n

end A035038

/-! ## A035038.P11977082724412554496

`A035039(n)+A000579(n)`
-/

namespace A035038.P11977082724412554496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035039 n + A000579 n

end

end A035038.P11977082724412554496

namespace A035038

/-- `A035039(n)+A000579(n)` -/
def P11977082724412554496.Spec : Prop :=
  ∀ n, P11977082724412554496.a n = A035038 n

end A035038

/-! ## A035038.P8736283060398932440

`A002664(n)-A000389(n)`
-/

namespace A035038.P8736283060398932440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002664 n - A000389 n

end

end A035038.P8736283060398932440

namespace A035038

/-- `A002664(n)-A000389(n)` -/
def P8736283060398932440.Spec : Prop :=
  ∀ n, P8736283060398932440.a n = A035038 n

end A035038

/-! ## A035038.P8887348959834340234

`A000225(n)-A057703(n)`
-/

namespace A035038.P8887348959834340234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A057703 n

end

end A035038.P8887348959834340234

namespace A035038

/-- `A000225(n)-A057703(n)` -/
def P8887348959834340234.Spec : Prop :=
  ∀ n, P8887348959834340234.a n = A035038 n

end A035038

/-! ## A035038.P14802203256142285261

`A000325(n)-A362193(n)`
-/

namespace A035038.P14802203256142285261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 n - A362193 n

end

end A035038.P14802203256142285261

namespace A035038

/-- `A000325(n)-A362193(n)` -/
def P14802203256142285261.Spec : Prop :=
  ∀ n, P14802203256142285261.a n = A035038 n

end A035038

/-! ## A035038.P9304200411693418817

`A000079(n)-Δ[A008859(n)]`
-/

namespace A035038.P9304200411693418817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (f1 (n + 1) - f1 n)

end

end A035038.P9304200411693418817

namespace A035038

/-- `A000079(n)-Δ[A008859(n)]` -/
def P9304200411693418817.Spec : Prop :=
  ∀ n, P9304200411693418817.a n = A035038 n

end A035038

/-! ## A035038.P7387361233259246301

`A000051(n)-(A006261(n)+1)`
-/

namespace A035038.P7387361233259246301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A006261 n + 1)

end

end A035038.P7387361233259246301

namespace A035038

/-- `A000051(n)-(A006261(n)+1)` -/
def P7387361233259246301.Spec : Prop :=
  ∀ n, P7387361233259246301.a n = A035038 n

end A035038

/-! ## A035038.P17063673478303666098

`A000225(n)+1-A006261(n)`
-/

namespace A035038.P17063673478303666098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A006261 n)

end

end A035038.P17063673478303666098

namespace A035038

/-- `A000225(n)+1-A006261(n)` -/
def P17063673478303666098.Spec : Prop :=
  ∀ n, P17063673478303666098.a n = A035038 n

end A035038

/-! ## A035038.P4113593111754579372

`A233411(n)+A356185(n)-A362193(n)`
-/

namespace A035038.P4113593111754579372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233411 n + (A356185 n - A362193 n)

end

end A035038.P4113593111754579372

namespace A035038

/-- `A233411(n)+A356185(n)-A362193(n)` -/
def P4113593111754579372.Spec : Prop :=
  ∀ n, P4113593111754579372.a n = A035038 n

end A035038

/-! ## A035038.P17939363525771729426

`A000579(n)+A002664(n)-A000579(n+1)`
-/

namespace A035038.P17939363525771729426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 n + (A002664 n - A000579 (n + 1))

end

end A035038.P17939363525771729426

namespace A035038

/-- `A000579(n)+A002664(n)-A000579(n+1)` -/
def P17939363525771729426.Spec : Prop :=
  ∀ n, P17939363525771729426.a n = A035038 n

end A035038

/-! ## A035038.P9147684291576383271

`A000225(n)-(A004006(n)+A000389(n+1))`
-/

namespace A035038.P9147684291576383271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - (A004006 n + A000389 (n + 1))

end

end A035038.P9147684291576383271

namespace A035038

/-- `A000225(n)-(A004006(n)+A000389(n+1))` -/
def P9147684291576383271.Spec : Prop :=
  ∀ n, P9147684291576383271.a n = A035038 n

end A035038

/-! ## A035038.P3099119194742592778

`Δ[A035039(n)]`
-/

namespace A035038.P3099119194742592778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035038.P3099119194742592778

namespace A035038

/-- `Δ[A035039(n)]` -/
def P3099119194742592778.Spec : Prop :=
  ∀ n, P3099119194742592778.a n = A035038 n

end A035038

/-! ## A035038.P2804159898180323439

`A084637(n+1)-2^n`
-/

namespace A035038.P2804159898180323439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084637 (n + 1) - (2 ^ n : ℤ)

end

end A035038.P2804159898180323439

namespace A035038

/-- `A084637(n+1)-2^n` -/
def P2804159898180323439.Spec : Prop :=
  ∀ n, P2804159898180323439.a n = A035038 n

end A035038

/-! ## A035038.P17966155811651588909

`A035039(n+1)-A035039(n)`
-/

namespace A035038.P17966155811651588909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035039 (n + 1) - A035039 n

end

end A035038.P17966155811651588909

namespace A035038

/-- `A035039(n+1)-A035039(n)` -/
def P17966155811651588909.Spec : Prop :=
  ∀ n, P17966155811651588909.a n = A035038 n

end A035038

/-! ## A035038.P3580204541955863546

`and(A000225(n), A084637(n+1))`
-/

namespace A035038.P3580204541955863546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A084637 (n + 1))

end

end A035038.P3580204541955863546

namespace A035038

/-- `and(A000225(n), A084637(n+1))` -/
def P3580204541955863546.Spec : Prop :=
  ∀ n, P3580204541955863546.a n = A035038 n

end A035038

/-! ## A035038.P5726098715312838567

`Δ[Δ[A035040(n)]]`
-/

namespace A035038.P5726098715312838567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035040 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035038.P5726098715312838567

namespace A035038

/-- `Δ[Δ[A035040(n)]]` -/
def P5726098715312838567.Spec : Prop :=
  ∀ n, P5726098715312838567.a n = A035038 n

end A035038

/-! ## A035038.P17114175322116020475

`Δ[A084638(n+1)-A000079(n)]`
-/

namespace A035038.P17114175322116020475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084638 (n + 1) - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035038.P17114175322116020475

namespace A035038

/-- `Δ[A084638(n+1)-A000079(n)]` -/
def P17114175322116020475.Spec : Prop :=
  ∀ n, P17114175322116020475.a n = A035038 n

end A035038

/-!
# A035039: a(n) = 2^n - C(n,0) - C(n,1) - ... - C(n,6).

The programs for A035039, the canonical program `A035039.P702556951674997886` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035039 has offset 0).

The definition of A035039 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035039.P15106946251828057920

`2*a(n-1)+C(n-1, 6)` with `a(0)=0`
-/

namespace A035039.P15106946251828057920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + Nat.choose ((n : ℤ) - 1).toNat 6

end

end A035039.P15106946251828057920

namespace A035039

/-- `2*a(n-1)+C(n-1, 6)` -/
def P15106946251828057920.Spec : Prop :=
  ∀ n, (P15106946251828057920.a n : ℤ) = A035039 n

end A035039

/-! ## A035039.P702556951674997886

`A000079(n)-A008859(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A035039

/-- `A000079(n)-A008859(n)` -/
def P702556951674997886.Spec : Prop :=
  ∀ n, P702556951674997886.a n = A035039 n

theorem P702556951674997886.correct : P702556951674997886.Spec := by
  intro n
  simp only [A035039]

end A035039

/-! ## A035039.P849004393610797085

`∑[A035038(abs(1-n))]`
-/

namespace A035039.P849004393610797085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035038 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035039.P849004393610797085

namespace A035039

/-- `∑[A035038(abs(1-n))]` -/
def P849004393610797085.Spec : Prop :=
  ∀ n, P849004393610797085.a n = A035039 n

end A035039

/-! ## A035039.P4284269161535720637

`2^n-(A115567(n)+1)`
-/

namespace A035039.P4284269161535720637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (A115567 n + 1)

end

end A035039.P4284269161535720637

namespace A035039

/-- `2^n-(A115567(n)+1)` -/
def P4284269161535720637.Spec : Prop :=
  ∀ n, P4284269161535720637.a n = A035039 n

end A035039

/-! ## A035039.P3627946467825486834

`A035038(n)-A000579(n)`
-/

namespace A035039.P3627946467825486834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035038 n - A000579 n

end

end A035039.P3627946467825486834

namespace A035039

/-- `A035038(n)-A000579(n)` -/
def P3627946467825486834.Spec : Prop :=
  ∀ n, P3627946467825486834.a n = A035039 n

end A035039

/-! ## A035039.P1364844049851046594

`A000225(n)-A115567(n)`
-/

namespace A035039.P1364844049851046594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A115567 n

end

end A035039.P1364844049851046594

namespace A035039

/-- `A000225(n)-A115567(n)` -/
def P1364844049851046594.Spec : Prop :=
  ∀ n, P1364844049851046594.a n = A035039 n

end A035039

/-! ## A035039.P4184720814220313961

`A000325(n)-A362194(n)`
-/

namespace A035039.P4184720814220313961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 n - A362194 n

end

end A035039.P4184720814220313961

namespace A035039

/-- `A000325(n)-A362194(n)` -/
def P4184720814220313961.Spec : Prop :=
  ∀ n, P4184720814220313961.a n = A035039 n

theorem P4184720814220313961.correct : P4184720814220313961.Spec := by
  intro n
  simp only [A035039, Nat.add_sub_cancel, A035039.P4184720814220313961.a, A035039.P702556951674997886.a, A000079, A000079.P10855139691139572931.a, A000325, A000325.P17729744711211405807.a, A008859, A008859.P14957720110934266118.a, A362194, A362194.P824322354515658544.a, A006261, A006261.P4266430943369696028.a, A000127, A000127.P3574234740416859874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035039

/-! ## A035039.P16298338692593982897

`A002664(n)-A000579(n+1)`
-/

namespace A035039.P16298338692593982897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002664 n - A000579 (n + 1)

end

end A035039.P16298338692593982897

namespace A035039

/-- `A002664(n)-A000579(n+1)` -/
def P16298338692593982897.Spec : Prop :=
  ∀ n, P16298338692593982897.a n = A035039 n

end A035039

/-! ## A035039.P10677686247365489971

`A000051(n)-(A008859(n)+1)`
-/

namespace A035039.P10677686247365489971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A008859 n + 1)

end

end A035039.P10677686247365489971

namespace A035039

/-- `A000051(n)-(A008859(n)+1)` -/
def P10677686247365489971.Spec : Prop :=
  ∀ n, P10677686247365489971.a n = A035039 n

theorem P10677686247365489971.correct : P10677686247365489971.Spec := by
  intro n
  simp only [A035039, Nat.add_sub_cancel, A035039.P10677686247365489971.a, A035039.P702556951674997886.a, A000051, A000051.P14067217022188782580.a, A000079, A000079.P10855139691139572931.a, A008859, A008859.P14957720110934266118.a, A006261, A006261.P4266430943369696028.a, A000127, A000127.P3574234740416859874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035039

/-! ## A035039.P16314794385366273185

`A000225(n)+1-A008859(n)`
-/

namespace A035039.P16314794385366273185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A008859 n)

end

end A035039.P16314794385366273185

namespace A035039

/-- `A000225(n)+1-A008859(n)` -/
def P16314794385366273185.Spec : Prop :=
  ∀ n, P16314794385366273185.a n = A035039 n

theorem P16314794385366273185.correct : P16314794385366273185.Spec := by
  intro n
  simp only [A035039, Nat.add_sub_cancel, A035039.P16314794385366273185.a, A035039.P702556951674997886.a, A000079, A000079.P10855139691139572931.a, A000225, A000225.P6535533121115206393.a, A008859, A008859.P14957720110934266118.a, A006261, A006261.P4266430943369696028.a, A000127, A000127.P3574234740416859874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035039

/-! ## A035039.P15200255718725816726

`A011782(n+1)-A008859(n)`
-/

namespace A035039.P15200255718725816726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - A008859 n

end

end A035039.P15200255718725816726

namespace A035039

/-- `A011782(n+1)-A008859(n)` -/
def P15200255718725816726.Spec : Prop :=
  ∀ n, P15200255718725816726.a n = A035039 n

end A035039

/-! ## A035039.P10050926532705589252

`A000225(n)-(A057703(n)+A000579(n))`
-/

namespace A035039.P10050926532705589252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - (A057703 n + A000579 n)

end

end A035039.P10050926532705589252

namespace A035039

/-- `A000225(n)-(A057703(n)+A000579(n))` -/
def P10050926532705589252.Spec : Prop :=
  ∀ n, P10050926532705589252.a n = A035039 n

end A035039

/-! ## A035039.P10418831242817741529

`A035038(n)+A084638(n)-A084636(n)`
-/

namespace A035039.P10418831242817741529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035038 n + (A084638 n - A084636 n)

end

end A035039.P10418831242817741529

namespace A035039

/-- `A035038(n)+A084638(n)-A084636(n)` -/
def P10418831242817741529.Spec : Prop :=
  ∀ n, P10418831242817741529.a n = A035039 n

end A035039

/-! ## A035039.P15627532205738163725

`Δ[A008859(n)]+A035038(n)-A008859(n)`
-/

namespace A035039.P15627532205738163725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A035038 n - A008859 n)

end

end A035039.P15627532205738163725

namespace A035039

/-- `Δ[A008859(n)]+A035038(n)-A008859(n)` -/
def P15627532205738163725.Spec : Prop :=
  ∀ n, P15627532205738163725.a n = A035039 n

end A035039

/-! ## A035039.P7127997394985100477

`A000079(n)+A116082(n)-A116082(n+1)`
-/

namespace A035039.P7127997394985100477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A116082 n - A116082 (n + 1))

end

end A035039.P7127997394985100477

namespace A035039

/-- `A000079(n)+A116082(n)-A116082(n+1)` -/
def P7127997394985100477.Spec : Prop :=
  ∀ n, P7127997394985100477.a n = A035039 n

end A035039

/-! ## A035039.P9478748044721436353

`Δ[A035040(n)]`
-/

namespace A035039.P9478748044721436353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035039.P9478748044721436353

namespace A035039

/-- `Δ[A035040(n)]` -/
def P9478748044721436353.Spec : Prop :=
  ∀ n, P9478748044721436353.a n = A035039 n

end A035039

/-! ## A035039.P7568034056997132744

`Δ[2^n-A008860(n)]`
-/

namespace A035039.P7568034056997132744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A008860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035039.P7568034056997132744

namespace A035039

/-- `Δ[2^n-A008860(n)]` -/
def P7568034056997132744.Spec : Prop :=
  ∀ n, P7568034056997132744.a n = A035039 n

end A035039

/-! ## A035039.P12096183637140077937

`A084638(n+1)-2^n`
-/

namespace A035039.P12096183637140077937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084638 (n + 1) - (2 ^ n : ℤ)

end

end A035039.P12096183637140077937

namespace A035039

/-- `A084638(n+1)-2^n` -/
def P12096183637140077937.Spec : Prop :=
  ∀ n, P12096183637140077937.a n = A035039 n

end A035039

/-! ## A035039.P10105328688638566374

`A035040(n+1)-A035040(n)`
-/

namespace A035039.P10105328688638566374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035040 (n + 1) - A035040 n

end

end A035039.P10105328688638566374

namespace A035039

/-- `A035040(n+1)-A035040(n)` -/
def P10105328688638566374.Spec : Prop :=
  ∀ n, P10105328688638566374.a n = A035039 n

end A035039

/-! ## A035039.P405996426270020945

`and(A000225(n), A084638(n+1))`
-/

namespace A035039.P405996426270020945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A084638 (n + 1))

end

end A035039.P405996426270020945

namespace A035039

/-- `and(A000225(n), A084638(n+1))` -/
def P405996426270020945.Spec : Prop :=
  ∀ n, P405996426270020945.a n = A035039 n

end A035039

/-!
# A035040: a(n) = 2^n - C(n,0) - C(n,1) - ... - C(n,7).

The programs for A035040, the canonical program `A035040.P3679185954115405860` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035040 has offset 0).

The definition of A035040 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035040.P3679185954115405860

`2*a(n-1)+C(n-1, 7)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035040

/-- `2*a(n-1)+C(n-1, 7)` -/
def P3679185954115405860.Spec : Prop :=
  ∀ n, (P3679185954115405860.a n : ℤ) = A035040 n

theorem P3679185954115405860.correct : P3679185954115405860.Spec := by
  intro n
  simp only [A035040]

end A035040

/-! ## A035040.P15319361910975943609

`2^n-A008860(n)`
-/

namespace A035040.P15319361910975943609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A008860 n

end

end A035040.P15319361910975943609

namespace A035040

/-- `2^n-A008860(n)` -/
def P15319361910975943609.Spec : Prop :=
  ∀ n, P15319361910975943609.a n = A035040 n

end A035040

/-! ## A035040.P10095514531504264413

`∑[A035039(abs(1-n))]`
-/

namespace A035040.P10095514531504264413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035039 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035040.P10095514531504264413

namespace A035040

/-- `∑[A035039(abs(1-n))]` -/
def P10095514531504264413.Spec : Prop :=
  ∀ n, P10095514531504264413.a n = A035040 n

end A035040

/-! ## A035040.P12391797420357675823

`A035038(n)-∑[C(n, 6)]`
-/

namespace A035040.P12391797420357675823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035038 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A035040.P12391797420357675823

namespace A035040

/-- `A035038(n)-∑[C(n, 6)]` -/
def P12391797420357675823.Spec : Prop :=
  ∀ n, P12391797420357675823.a n = A035040 n

end A035040

/-! ## A035040.P4513304782761927197

`A000225(n)-A116082(n)`
-/

namespace A035040.P4513304782761927197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A116082 n

end

end A035040.P4513304782761927197

namespace A035040

/-- `A000225(n)-A116082(n)` -/
def P4513304782761927197.Spec : Prop :=
  ∀ n, P4513304782761927197.a n = A035040 n

end A035040

/-! ## A035040.P18268175560021101574

`A000325(n)-A362195(n)`
-/

namespace A035040.P18268175560021101574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 n - A362195 n

end

end A035040.P18268175560021101574

namespace A035040

/-- `A000325(n)-A362195(n)` -/
def P18268175560021101574.Spec : Prop :=
  ∀ n, P18268175560021101574.a n = A035040 n

end A035040

/-! ## A035040.P15427487447940759059

`A035038(n)-∑[A000579(n)]`
-/

namespace A035040.P15427487447940759059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035038 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035040.P15427487447940759059

namespace A035040

/-- `A035038(n)-∑[A000579(n)]` -/
def P15427487447940759059.Spec : Prop :=
  ∀ n, P15427487447940759059.a n = A035040 n

end A035040

/-! ## A035040.P4776226767526670131

`A000079(n)-Δ[A116690(n)]`
-/

namespace A035040.P4776226767526670131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (f1 (n + 1) - f1 n)

end

end A035040.P4776226767526670131

namespace A035040

/-- `A000079(n)-Δ[A116690(n)]` -/
def P4776226767526670131.Spec : Prop :=
  ∀ n, P4776226767526670131.a n = A035040 n

end A035040

/-! ## A035040.P14574053657709039960

`A000079(n)-(A116082(n)+1)`
-/

namespace A035040.P14574053657709039960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A116082 n + 1)

end

end A035040.P14574053657709039960

namespace A035040

/-- `A000079(n)-(A116082(n)+1)` -/
def P14574053657709039960.Spec : Prop :=
  ∀ n, P14574053657709039960.a n = A035040 n

end A035040

/-! ## A035040.P7286857699091663962

`A000051(n)-(A116082(n)+2)`
-/

namespace A035040.P7286857699091663962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A116082 n + 2)

end

end A035040.P7286857699091663962

namespace A035040

/-- `A000051(n)-(A116082(n)+2)` -/
def P7286857699091663962.Spec : Prop :=
  ∀ n, P7286857699091663962.a n = A035040 n

end A035040

/-! ## A035040.P4343818210720622139

`A000225(n)+A362196(n)-A362196(n+1)`
-/

namespace A035040.P4343818210720622139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A362196 n - A362196 (n + 1))

end

end A035040.P4343818210720622139

namespace A035040

/-- `A000225(n)+A362196(n)-A362196(n+1)` -/
def P4343818210720622139.Spec : Prop :=
  ∀ n, P4343818210720622139.a n = A035040 n

end A035040

/-! ## A035040.P5007213710829786348

`Δ[A035041(n)]`
-/

namespace A035040.P5007213710829786348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035040.P5007213710829786348

namespace A035040

/-- `Δ[A035041(n)]` -/
def P5007213710829786348.Spec : Prop :=
  ∀ n, P5007213710829786348.a n = A035040 n

end A035040

/-! ## A035040.P2048099428770262930

`Δ[2^n-A008861(n)]`
-/

namespace A035040.P2048099428770262930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A008861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035040.P2048099428770262930

namespace A035040

/-- `Δ[2^n-A008861(n)]` -/
def P2048099428770262930.Spec : Prop :=
  ∀ n, P2048099428770262930.a n = A035040 n

end A035040

/-! ## A035040.P3490851266382424312

`∑[A035039(n)]-A035039(n)`
-/

namespace A035040.P3490851266382424312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035039 n

end

end A035040.P3490851266382424312

namespace A035040

/-- `∑[A035039(n)]-A035039(n)` -/
def P3490851266382424312.Spec : Prop :=
  ∀ n, P3490851266382424312.a n = A035040 n

end A035040

/-! ## A035040.P8772081098176906524

`A035041(n+1)-A035041(n)`
-/

namespace A035040.P8772081098176906524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035041 (n + 1) - A035041 n

end

end A035040.P8772081098176906524

namespace A035040

/-- `A035041(n+1)-A035041(n)` -/
def P8772081098176906524.Spec : Prop :=
  ∀ n, P8772081098176906524.a n = A035040 n

end A035040

/-! ## A035040.P7050286235630797824

`Δ[A000079(n)-Δ[A008862(n)]]`
-/

namespace A035040.P7050286235630797824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035040.P7050286235630797824

namespace A035040

/-- `Δ[A000079(n)-Δ[A008862(n)]]` -/
def P7050286235630797824.Spec : Prop :=
  ∀ n, P7050286235630797824.a n = A035040 n

end A035040

/-! ## A035040.P5828658094516898059

`A008859(n)-2^n-∑[A008859(n)-2^n]`
-/

namespace A035040.P5828658094516898059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 n - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 n - (2 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035040.P5828658094516898059

namespace A035040

/-- `A008859(n)-2^n-∑[A008859(n)-2^n]` -/
def P5828658094516898059.Spec : Prop :=
  ∀ n, P5828658094516898059.a n = A035040 n

end A035040

/-! ## A035040.P2636852053824297733

`Δ[Δ[A035042(n)]]`
-/

namespace A035040.P2636852053824297733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035042 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035040.P2636852053824297733

namespace A035040

/-- `Δ[Δ[A035042(n)]]` -/
def P2636852053824297733.Spec : Prop :=
  ∀ n, P2636852053824297733.a n = A035040 n

end A035040

/-! ## A035040.P6677605733815343444

`A134018(n)-(A116082(n)+A032263(n+1))`
-/

namespace A035040.P6677605733815343444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134018 n - (A116082 n + A032263 (n + 1))

end

end A035040.P6677605733815343444

namespace A035040

/-- `A134018(n)-(A116082(n)+A032263(n+1))` -/
def P6677605733815343444.Spec : Prop :=
  ∀ n, P6677605733815343444.a n = A035040 n

end A035040

/-!
# A035041: a(n) = 2^n - C(n,0) - C(n,1) - ... - C(n,8).

The programs for A035041, the canonical program `A035041.P5013102862860512790` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035041 has offset 0).

The definition of A035041 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008861, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A035041.P5013102862860512790

`A000079(n)-A008861(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A035041

/-- `A000079(n)-A008861(n)` -/
def P5013102862860512790.Spec : Prop :=
  ∀ n, P5013102862860512790.a n = A035041 n

theorem P5013102862860512790.correct : P5013102862860512790.Spec := by
  intro n
  simp only [A035041]

end A035041

/-! ## A035041.P3776903267534470446

`∑[A035040(abs(1-n))]`
-/

namespace A035041.P3776903267534470446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035040 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035041.P3776903267534470446

namespace A035041

/-- `∑[A035040(abs(1-n))]` -/
def P3776903267534470446.Spec : Prop :=
  ∀ n, P3776903267534470446.a n = A035041 n

end A035041

/-! ## A035041.P3973042799056842460

`∑[∑[A035039(abs(2-n))]]`
-/

namespace A035041.P3973042799056842460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035039 |2 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035041.P3973042799056842460

namespace A035041

/-- `∑[∑[A035039(abs(2-n))]]` -/
def P3973042799056842460.Spec : Prop :=
  ∀ n, P3973042799056842460.a n = A035041 n

end A035041

/-! ## A035041.P4004537400904179627

`A000225(n)-A116690(n)`
-/

namespace A035041.P4004537400904179627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A116690 n

end

end A035041.P4004537400904179627

namespace A035041

/-- `A000225(n)-A116690(n)` -/
def P4004537400904179627.Spec : Prop :=
  ∀ n, P4004537400904179627.a n = A035041 n

end A035041

/-! ## A035041.P5587514610991052639

`A000325(n)-A362196(n)`
-/

namespace A035041.P5587514610991052639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 n - A362196 n

end

end A035041.P5587514610991052639

namespace A035041

/-- `A000325(n)-A362196(n)` -/
def P5587514610991052639.Spec : Prop :=
  ∀ n, P5587514610991052639.a n = A035041 n

theorem P5587514610991052639.correct : P5587514610991052639.Spec := by
  intro n
  simp only [A035041, Nat.add_sub_cancel, A035041.P5587514610991052639.a, A035041.P5013102862860512790.a, A000079, A000079.P10855139691139572931.a, A000325, A000325.P17729744711211405807.a, A008861, A008861.P14057265660229562183.f1, A008861.P14057265660229562183.a, A362196, A362196.P10325085165088880186.a, A008860, A008860.P18332775515594479900.a, A008859, A008859.P14957720110934266118.a, A006261, A006261.P4266430943369696028.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035041

/-! ## A035041.P14860188482473427200

`A000079(n)-Δ[A008862(n)]`
-/

namespace A035041.P14860188482473427200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (f1 (n + 1) - f1 n)

end

end A035041.P14860188482473427200

namespace A035041

/-- `A000079(n)-Δ[A008862(n)]` -/
def P14860188482473427200.Spec : Prop :=
  ∀ n, P14860188482473427200.a n = A035041 n

end A035041

/-! ## A035041.P16199709249706613285

`A000079(n)-(A116690(n)+1)`
-/

namespace A035041.P16199709249706613285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A116690 n + 1)

end

end A035041.P16199709249706613285

namespace A035041

/-- `A000079(n)-(A116690(n)+1)` -/
def P16199709249706613285.Spec : Prop :=
  ∀ n, P16199709249706613285.a n = A035041 n

end A035041

/-! ## A035041.P3014045764775294570

`A000225(n)+A362197(n)-A362197(n+1)`
-/

namespace A035041.P3014045764775294570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A362197 n - A362197 (n + 1))

end

end A035041.P3014045764775294570

namespace A035041

/-- `A000225(n)+A362197(n)-A362197(n+1)` -/
def P3014045764775294570.Spec : Prop :=
  ∀ n, P3014045764775294570.a n = A035041 n

end A035041

/-! ## A035041.P14444328904189979003

`Δ[A035042(n)]`
-/

namespace A035041.P14444328904189979003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035041.P14444328904189979003

namespace A035041

/-- `Δ[A035042(n)]` -/
def P14444328904189979003.Spec : Prop :=
  ∀ n, P14444328904189979003.a n = A035041 n

end A035041

/-! ## A035041.P7074097361827697922

`∑[A035040(n)]-A035040(n)`
-/

namespace A035041.P7074097361827697922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035040 n

end

end A035041.P7074097361827697922

namespace A035041

/-- `∑[A035040(n)]-A035040(n)` -/
def P7074097361827697922.Spec : Prop :=
  ∀ n, P7074097361827697922.a n = A035041 n

end A035041

/-! ## A035041.P770328014178531746

`A035042(n+1)-A035042(n)`
-/

namespace A035041.P770328014178531746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035042 (n + 1) - A035042 n

end

end A035041.P770328014178531746

namespace A035041

/-- `A035042(n+1)-A035042(n)` -/
def P770328014178531746.Spec : Prop :=
  ∀ n, P770328014178531746.a n = A035041 n

end A035041

/-!
# A035042: a(n) = 2^n - C(n,0)- ... - C(n,9).

The programs for A035042, the canonical program `A035042.P1670210666577549716` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035042 has offset 0).

The definition of A035042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035042.P1670210666577549716

`2^n-A008862(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A035042

/-- `2^n-A008862(n)` -/
def P1670210666577549716.Spec : Prop :=
  ∀ n, P1670210666577549716.a n = A035042 n

theorem P1670210666577549716.correct : P1670210666577549716.Spec := by
  intro n
  simp only [A035042]

end A035042

/-! ## A035042.P13180503555585992792

`∑[A035041(abs(1-n))]`
-/

namespace A035042.P13180503555585992792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035041 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035042.P13180503555585992792

namespace A035042

/-- `∑[A035041(abs(1-n))]` -/
def P13180503555585992792.Spec : Prop :=
  ∀ n, P13180503555585992792.a n = A035042 n

end A035042

/-! ## A035042.P13812218310811528839

`∑[∑[A035040(abs(2-n))]]`
-/

namespace A035042.P13812218310811528839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035040 |2 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035042.P13812218310811528839

namespace A035042

/-- `∑[∑[A035040(abs(2-n))]]` -/
def P13812218310811528839.Spec : Prop :=
  ∀ n, P13812218310811528839.a n = A035042 n

end A035042

/-! ## A035042.P5324262117202122201

`A000325(n)-A362197(n)`
-/

namespace A035042.P5324262117202122201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 n - A362197 n

end

end A035042.P5324262117202122201

namespace A035042

/-- `A000325(n)-A362197(n)` -/
def P5324262117202122201.Spec : Prop :=
  ∀ n, P5324262117202122201.a n = A035042 n

theorem P5324262117202122201.correct : P5324262117202122201.Spec := by
  intro n
  simp only [A035042, Nat.add_sub_cancel, A035042.P5324262117202122201.a, A035042.P1670210666577549716.a, A000325, A000325.P17729744711211405807.a, A008862, A008862.P15109180093103356418.a, A362197, A362197.P8596603980637624740.a, A008861, A008861.P14057265660229562183.f1, A008861.P14057265660229562183.a, A008860, A008860.P18332775515594479900.a, A008859, A008859.P14957720110934266118.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035042

/-! ## A035042.P16520911885465946960

`A000918(n)+2-A008862(n)`
-/

namespace A035042.P16520911885465946960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n + (2 - A008862 n)

end

end A035042.P16520911885465946960

namespace A035042

/-- `A000918(n)+2-A008862(n)` -/
def P16520911885465946960.Spec : Prop :=
  ∀ n, P16520911885465946960.a n = A035042 n

theorem P16520911885465946960.correct : P16520911885465946960.Spec := by
  intro n
  simp only [A035042, Nat.add_sub_cancel, A035042.P16520911885465946960.a, A035042.P1670210666577549716.a, A000918, A000918.P14329454465793069288.a, A008862, A008862.P15109180093103356418.a, A008861, A008861.P14057265660229562183.f1, A008861.P14057265660229562183.a, A008860, A008860.P18332775515594479900.a, A008859, A008859.P14957720110934266118.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035042

/-! ## A035042.P11333729809490385239

`A052548(n)-(A008862(n)+2)`
-/

namespace A035042.P11333729809490385239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052548 n - (A008862 n + 2)

end

end A035042.P11333729809490385239

namespace A035042

/-- `A052548(n)-(A008862(n)+2)` -/
def P11333729809490385239.Spec : Prop :=
  ∀ n, P11333729809490385239.a n = A035042 n

theorem P11333729809490385239.correct : P11333729809490385239.Spec := by
  intro n
  simp only [A035042, Nat.add_sub_cancel, A035042.P11333729809490385239.a, A035042.P1670210666577549716.a, A008862, A008862.P15109180093103356418.a, A052548, A052548.P18180923888402085992.a, A008861, A008861.P14057265660229562183.f1, A008861.P14057265660229562183.a, A008860, A008860.P18332775515594479900.a, A008859, A008859.P14957720110934266118.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035042

/-! ## A035042.P9940320751527813690

`A000124(n)+A002662(n)-A008862(n)`
-/

namespace A035042.P9940320751527813690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + (A002662 n - A008862 n)

end

end A035042.P9940320751527813690

namespace A035042

/-- `A000124(n)+A002662(n)-A008862(n)` -/
def P9940320751527813690.Spec : Prop :=
  ∀ n, P9940320751527813690.a n = A035042 n

end A035042

/-! ## A035042.P12345883750801799109

`A000125(n)+A002663(n)-A008862(n)`
-/

namespace A035042.P12345883750801799109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n + (A002663 n - A008862 n)

end

end A035042.P12345883750801799109

namespace A035042

/-- `A000125(n)+A002663(n)-A008862(n)` -/
def P12345883750801799109.Spec : Prop :=
  ∀ n, P12345883750801799109.a n = A035042 n

theorem P12345883750801799109.correct : P12345883750801799109.Spec := by
  intro n
  simp only [A035042, Nat.add_sub_cancel, A035042.P12345883750801799109.a, A035042.P1670210666577549716.a, A000125, A000125.P10762125132202112265.a, A002663, A002663.P16035654248427437417.a, A008862, A008862.P15109180093103356418.a, A008861, A008861.P14057265660229562183.f1, A008861.P14057265660229562183.a, A008860, A008860.P18332775515594479900.a, A008859, A008859.P14957720110934266118.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A035042

/-! ## A035042.P12482369286189006974

`A000225(n)+A362196(n)-A362197(n+1)`
-/

namespace A035042.P12482369286189006974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A362196 n - A362197 (n + 1))

end

end A035042.P12482369286189006974

namespace A035042

/-- `A000225(n)+A362196(n)-A362197(n+1)` -/
def P12482369286189006974.Spec : Prop :=
  ∀ n, P12482369286189006974.a n = A035042 n

end A035042

/-! ## A035042.P2242447578956225754

`Δ[2^n-A008863(n)]`
-/

namespace A035042.P2242447578956225754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A008863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035042.P2242447578956225754

namespace A035042

/-- `Δ[2^n-A008863(n)]` -/
def P2242447578956225754.Spec : Prop :=
  ∀ n, P2242447578956225754.a n = A035042 n

end A035042

/-! ## A035042.P4099354467205076174

`∑[A035041(n)]-A035041(n)`
-/

namespace A035042.P4099354467205076174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035041 n

end

end A035042.P4099354467205076174

namespace A035042

/-- `∑[A035041(n)]-A035041(n)` -/
def P4099354467205076174.Spec : Prop :=
  ∀ n, P4099354467205076174.a n = A035042 n

end A035042

/-!
# A035043: Replace any decimal digit '1' with '2' and vice versa.

The programs for A035043, there is no canonical definition to state claims against.
-/

/-! ## A035043.P3326714432106958796

`A055120(A222254(A055120(n)))`
-/

namespace A035043.P3326714432106958796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (A222254 (A055120 n).toNat).toNat

end

end A035043.P3326714432106958796

/-! ## A035043.P16912234174512053138

`A222222(A222229(A222222(n)))`
-/

namespace A035043.P16912234174512053138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222222 (A222229 (A222222 n).toNat).toNat

end

end A035043.P16912234174512053138

/-! ## A035043.P1865089841290842439

`A222223(A222230(A222223(n)))`
-/

namespace A035043.P1865089841290842439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (A222230 (A222223 n).toNat).toNat

end

end A035043.P1865089841290842439

/-! ## A035043.P12904459532880362526

`A222224(A222231(A222224(n)))`
-/

namespace A035043.P12904459532880362526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 (A222231 (A222224 n).toNat).toNat

end

end A035043.P12904459532880362526

/-! ## A035043.P17377765255654153398

`A222225(A222232(A222225(n)))`
-/

namespace A035043.P17377765255654153398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (A222232 (A222225 n).toNat).toNat

end

end A035043.P17377765255654153398

/-! ## A035043.P11233881228769529715

`A222226(A222233(A222226(n)))`
-/

namespace A035043.P11233881228769529715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 (A222233 (A222226 n).toNat).toNat

end

end A035043.P11233881228769529715

/-! ## A035043.P2077468317692839133

`A222232(A222223(A222250(A222223(A222232(n)))))`
-/

namespace A035043.P2077468317692839133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (A222223 (A222250 (A222223 (A222232 n).toNat).toNat).toNat).toNat

end

end A035043.P2077468317692839133

/-!
# A035044: Exchange 2 and 3.

The programs for A035044, there is no canonical definition to state claims against.
-/

/-! ## A035044.P4516657783614734910

`A035043(A222220(A035043(n)))`
-/

namespace A035044.P4516657783614734910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A222220 (A035043 n).toNat).toNat

end

end A035044.P4516657783614734910

/-! ## A035044.P15272793348711333810

`A222228(A222234(A222228(n)))`
-/

namespace A035044.P15272793348711333810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (A222234 (A222228 n).toNat).toNat

end

end A035044.P15272793348711333810

/-! ## A035044.P9466682814399869633

`A222229(A222235(A222229(n)))`
-/

namespace A035044.P9466682814399869633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (A222235 (A222229 n).toNat).toNat

end

end A035044.P9466682814399869633

/-! ## A035044.P14319377482543406715

`A222230(A222236(A222230(n)))`
-/

namespace A035044.P14319377482543406715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (A222236 (A222230 n).toNat).toNat

end

end A035044.P14319377482543406715

/-! ## A035044.P7798366519337253007

`A222232(A222238(A222232(n)))`
-/

namespace A035044.P7798366519337253007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (A222238 (A222232 n).toNat).toNat

end

end A035044.P7798366519337253007

/-! ## A035044.P8687033386494893925

`A222233(A222239(A222233(n)))`
-/

namespace A035044.P8687033386494893925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 (A222239 (A222233 n).toNat).toNat

end

end A035044.P8687033386494893925

/-!
# A035045: Inverse binomial transform of A002054.

The programs for A035045, the canonical program `A035045.P17319593329754997436` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035045 has offset 0).

The definition of A035045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035045.P17319593329754997436

`A005774(n+1)+A005774(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035045

/-- `A005774(n+1)+A005774(n)` -/
def P17319593329754997436.Spec : Prop :=
  ∀ n, P17319593329754997436.a n = A035045 n

theorem P17319593329754997436.correct : P17319593329754997436.Spec := by
  intro n
  simp only [A035045]

end A035045

/-! ## A035045.P4505795564959959651

`A026135(n+1)-A001006(n)`
-/

namespace A035045.P4505795564959959651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026135 (n + 1) - A001006 n

end

end A035045.P4505795564959959651

namespace A035045

/-- `A026135(n+1)-A001006(n)` -/
def P4505795564959959651.Spec : Prop :=
  ∀ n, P4505795564959959651.a n = A035045 n

end A035045

/-! ## A035045.P15995694426474647314

`A005717(n+2)-A189912(n)`
-/

namespace A035045.P15995694426474647314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (n + 2) - A189912 n

end

end A035045.P15995694426474647314

namespace A035045

/-- `A005717(n+2)-A189912(n)` -/
def P15995694426474647314.Spec : Prop :=
  ∀ n, P15995694426474647314.a n = A035045 n

end A035045

/-! ## A035045.P12113582386294464803

`Δ[A025566(n+2)]-A001006(n)`
-/

namespace A035045.P12113582386294464803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001006 n

end

end A035045.P12113582386294464803

namespace A035045

/-- `Δ[A025566(n+2)]-A001006(n)` -/
def P12113582386294464803.Spec : Prop :=
  ∀ n, P12113582386294464803.a n = A035045 n

end A035045

/-! ## A035045.P2753728204442956250

`Δ[A097861(n+2)]-A189912(n)`
-/

namespace A035045.P2753728204442956250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A189912 n

end

end A035045.P2753728204442956250

namespace A035045

/-- `Δ[A097861(n+2)]-A189912(n)` -/
def P2753728204442956250.Spec : Prop :=
  ∀ n, P2753728204442956250.a n = A035045 n

end A035045

/-! ## A035045.P12569983921733326748

`Δ[A257520(n+2)]-A189912(n)`
-/

namespace A035045.P12569983921733326748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A189912 n

end

end A035045.P12569983921733326748

namespace A035045

/-- `Δ[A257520(n+2)]-A189912(n)` -/
def P12569983921733326748.Spec : Prop :=
  ∀ n, P12569983921733326748.a n = A035045 n

end A035045

/-! ## A035045.P3247257165407724723

`∑[2*A026165(n)]-A026165(n)`
-/

namespace A035045.P3247257165407724723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A026165 n

end

end A035045.P3247257165407724723

namespace A035045

/-- `∑[2*A026165(n)]-A026165(n)` -/
def P3247257165407724723.Spec : Prop :=
  ∀ n, P3247257165407724723.a n = A035045 n

end A035045

/-! ## A035045.P159550862336342063

`record[A168051(n+1)+A105696(n)]`
-/

namespace A035045.P159550862336342063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168051 (n + 1) + A105696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035045.P159550862336342063

namespace A035045

/-- `record[A168051(n+1)+A105696(n)]` -/
def P159550862336342063.Spec : Prop :=
  ∀ n, P159550862336342063.a n = A035045 n

end A035045

/-! ## A035045.P10210441701708163109

`A105696(n+2)-A001006(n+1)`
-/

namespace A035045.P10210441701708163109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105696 (n + 2) - A001006 (n + 1)

end

end A035045.P10210441701708163109

namespace A035045

/-- `A105696(n+2)-A001006(n+1)` -/
def P10210441701708163109.Spec : Prop :=
  ∀ n, P10210441701708163109.a n = A035045 n

end A035045

/-! ## A035045.P17356946738549778559

`A025566(n+3)-A025565(n+2)`
-/

namespace A035045.P17356946738549778559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 (n + 3) - A025565 (n + 2)

end

end A035045.P17356946738549778559

namespace A035045

/-- `A025566(n+3)-A025565(n+2)` -/
def P17356946738549778559.Spec : Prop :=
  ∀ n, P17356946738549778559.a n = A035045 n

end A035045

/-! ## A035045.P10767820687789380672

`A005773(n+3)-A245455(n+3)`
-/

namespace A035045.P10767820687789380672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 3) - A245455 (n + 3)

end

end A035045.P10767820687789380672

namespace A035045

/-- `A005773(n+3)-A245455(n+3)` -/
def P10767820687789380672.Spec : Prop :=
  ∀ n, P10767820687789380672.a n = A035045 n

end A035045

/-! ## A035045.P3347161523854171568

`A026135(n+1)-(A005043(n+1)+A005043(n))`
-/

namespace A035045.P3347161523854171568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026135 (n + 1) - (A005043 (n + 1) + A005043 n)

end

end A035045.P3347161523854171568

namespace A035045

/-- `A026135(n+1)-(A005043(n+1)+A005043(n))` -/
def P3347161523854171568.Spec : Prop :=
  ∀ n, P3347161523854171568.a n = A035045 n

end A035045

/-! ## A035045.P429086767333277538

`A225034(n+1)-(A001006(n+1)+A001006(n))`
-/

namespace A035045.P429086767333277538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225034 (n + 1) - (A001006 (n + 1) + A001006 n)

end

end A035045.P429086767333277538

namespace A035045

/-- `A225034(n+1)-(A001006(n+1)+A001006(n))` -/
def P429086767333277538.Spec : Prop :=
  ∀ n, P429086767333277538.a n = A035045 n

end A035045

/-! ## A035045.P1145727513304033452

`A005717(n+2)-(A005043(n+1)+A002426(n))`
-/

namespace A035045.P1145727513304033452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (n + 2) - (A005043 (n + 1) + A002426 n)

end

end A035045.P1145727513304033452

namespace A035045

/-- `A005717(n+2)-(A005043(n+1)+A002426(n))` -/
def P1145727513304033452.Spec : Prop :=
  ∀ n, P1145727513304033452.a n = A035045 n

end A035045

/-! ## A035045.P12935345288740430355

`A024997(n+3)-(A024998(n+2)+A001006(n))`
-/

namespace A035045.P12935345288740430355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024997 (n + 3) - (A024998 (n + 2) + A001006 n)

end

end A035045.P12935345288740430355

namespace A035045

/-- `A024997(n+3)-(A024998(n+2)+A001006(n))` -/
def P12935345288740430355.Spec : Prop :=
  ∀ n, P12935345288740430355.a n = A035045 n

end A035045

/-! ## A035045.P7524308956663422673

`A025178(n+1)+A025178(n+2)-A001006(n+1)`
-/

namespace A035045.P7524308956663422673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025178 (n + 1) + (A025178 (n + 2) - A001006 (n + 1))

end

end A035045.P7524308956663422673

namespace A035045

/-- `A025178(n+1)+A025178(n+2)-A001006(n+1)` -/
def P7524308956663422673.Spec : Prop :=
  ∀ n, P7524308956663422673.a n = A035045 n

end A035045

/-! ## A035045.P17756179535844233290

`A005717(n+1)+A005717(n+2)-A025565(n+2)`
-/

namespace A035045.P17756179535844233290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (n + 1) + (A005717 (n + 2) - A025565 (n + 2))

end

end A035045.P17756179535844233290

namespace A035045

/-- `A005717(n+1)+A005717(n+2)-A025565(n+2)` -/
def P17756179535844233290.Spec : Prop :=
  ∀ n, P17756179535844233290.a n = A035045 n

end A035045

/-! ## A035045.P458679509376956717

`Δ[Δ[A225034(n)]]-A225034(n)`
-/

namespace A035045.P458679509376956717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225034 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A225034 n

end

end A035045.P458679509376956717

namespace A035045

/-- `Δ[Δ[A225034(n)]]-A225034(n)` -/
def P458679509376956717.Spec : Prop :=
  ∀ n, P458679509376956717.a n = A035045 n

end A035045

/-! ## A035045.P6294392493455126290

`A217539(n+1)+A005717(n+2)-A000108(n+1)`
-/

namespace A035045.P6294392493455126290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217539 (n + 1) + (A005717 (n + 2) - A000108 (n + 1))

end

end A035045.P6294392493455126290

namespace A035045

/-- `A217539(n+1)+A005717(n+2)-A000108(n+1)` -/
def P6294392493455126290.Spec : Prop :=
  ∀ n, P6294392493455126290.a n = A035045 n

end A035045

/-! ## A035045.P2270560559865372168

`A115990(A167614(n+2))`
-/

namespace A035045.P2270560559865372168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115990 (A167614 (n + 2)).toNat

end

end A035045.P2270560559865372168

namespace A035045

/-- `A115990(A167614(n+2))` -/
def P2270560559865372168.Spec : Prop :=
  ∀ n, P2270560559865372168.a n = A035045 n

end A035045

/-!
# A035047: Denominators of alternating sum transform (PSumSIGN) of Harmonic numbers H(n) = A001008/A002805.

The programs for A035047, there is no canonical definition to state claims against.
-/

/-! ## A035047.P16846992843293498049

`A116417(∑[2*round(2^n/3)])`
-/

namespace A035047.P16846992843293498049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116417 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A035047.P16846992843293498049

/-! ## A035047.P13527547105955649939

`A116417(A026644(n))+A085974(n+1)`
-/

namespace A035047.P13527547105955649939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116417 (A026644 n).toNat + A085974 (n + 1)

end

end A035047.P13527547105955649939

/-! ## A035047.P10098932481162536284

`A116417(A279751(n))+A000007(n+4)`
-/

namespace A035047.P10098932481162536284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116417 (A279751 n).toNat + A000007 (n + 4)

end

end A035047.P10098932481162536284

/-! ## A035047.P10344552078396550888

`A116417(A280148(n))+A000007(n+4)`
-/

namespace A035047.P10344552078396550888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116417 (A280148 n).toNat + A000007 (n + 4)

end

end A035047.P10344552078396550888

/-! ## A035047.P16851344251955184266

`A116417(A001045(n+2))%A082841(n)`
-/

namespace A035047.P16851344251955184266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116417 (A001045 (n + 2)).toNat) (A082841 n)

end

end A035047.P16851344251955184266

/-!
# A035048: Numerators of alternating sum transform (PSumSIGN) of Harmonic numbers H(n) = A001008/A002805.

The programs for A035048, there is no canonical definition to state claims against.
-/

/-! ## A035048.P3431839875602901094

`A116416(A279751(n))`
-/

namespace A035048.P3431839875602901094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116416 (A279751 n).toNat

end

end A035048.P3431839875602901094

/-! ## A035048.P11131612071077814898

`A116416(A280148(n))`
-/

namespace A035048.P11131612071077814898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116416 (A280148 n).toNat

end

end A035048.P11131612071077814898

/-! ## A035048.P15168554087994442400

`A116416(A000975(n+1))`
-/

namespace A035048.P15168554087994442400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116416 (A000975 (n + 1)).toNat

end

end A035048.P15168554087994442400

/-! ## A035048.P7774144755697053648

`A116416(A004773(2^n))`
-/

namespace A035048.P7774144755697053648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116416 (A004773 (2 ^ n)).toNat

end

end A035048.P7774144755697053648

/-! ## A035048.P9681419970931296291

`A116416(∑[abs(A077925(n))])`
-/

namespace A035048.P9681419970931296291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077925 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116416 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A035048.P9681419970931296291

/-!
# A035049: E.g.f. satisfies A(x) = x*(1+A(A(x))), A(0)=0.

The programs for A035049, there is no canonical definition to state claims against.
-/

/-! ## A035049.P16372946854539102956

`(n+1)!*A110447(n)`
-/

namespace A035049.P16372946854539102956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A110447 n

end

end A035049.P16372946854539102956

/-! ## A035049.P3608515089914453309

`(n+1)!*A030266(n+1)`
-/

namespace A035049.P3608515089914453309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A030266 (n + 1)

end

end A035049.P3608515089914453309

/-! ## A035049.P6774639145526127308

`record[A047922(n)]*A110447(n)`
-/

namespace A035049.P6774639145526127308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A110447 n

end

end A035049.P6774639145526127308

/-! ## A035049.P17852495237817065777

`record[A084938(n)]*A110447(n)`
-/

namespace A035049.P17852495237817065777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A110447 n

end

end A035049.P17852495237817065777

/-! ## A035049.P9855747706070269447

`A000142(n+1)*A030266(n+1)`
-/

namespace A035049.P9855747706070269447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A030266 (n + 1)

end

end A035049.P9855747706070269447

/-!
# A035050: a(n) is the smallest k such that k*2^n + 1 is prime.

The programs for A035050, there is no canonical definition to state claims against.
-/

/-! ## A035050.P3564094737050787046

`ceil(A035089(n)/A000051(n))`
-/

namespace A035050.P3564094737050787046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035089 n : ℚ) / (A000051 n : ℚ)⌉

end

end A035050.P3564094737050787046

/-! ## A035050.P6565536401132165941

`ceil(A035089(n)/A005126(n))`
-/

namespace A035050.P6565536401132165941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035089 n : ℚ) / (A005126 n : ℚ)⌉

end

end A035050.P6565536401132165941

/-! ## A035050.P5634268888227534031

`ceil(A035089(n)/A052548(n))`
-/

namespace A035050.P5634268888227534031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035089 n : ℚ) / (A052548 n : ℚ)⌉

end

end A035050.P5634268888227534031

/-! ## A035050.P2917120650240631545

`(A035089(n)-1)/A000079(n)`
-/

namespace A035050.P2917120650240631545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035089 n - 1 : ℚ) / (A000079 n : ℚ)

end

end A035050.P2917120650240631545

/-! ## A035050.P12356245601910597228

`floor(A035089(n)/(2*A011782(n)))`
-/

namespace A035050.P12356245601910597228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A035089 n : ℚ) / (2 * A011782 n : ℚ)⌋

end

end A035050.P12356245601910597228

/-! ## A035050.P13661448442858770507

`A004525(floor(A035089(n)/A011782(n)))`
-/

namespace A035050.P13661448442858770507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ⌊(A035089 n : ℚ) / (A011782 n : ℚ)⌋.toNat

end

end A035050.P13661448442858770507

/-! ## A035050.P2143955698745665955

`A004525((A035089(n)-1)/A011782(n))`
-/

namespace A035050.P2143955698745665955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway ((A035089 n - 1 : ℚ) / (A011782 n : ℚ))).toNat

end

end A035050.P2143955698745665955

/-! ## A035050.P1737119083702168214

`A000196(round(A035089(n)/A000051(n))²)`
-/

namespace A035050.P1737119083702168214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((A035089 n : ℚ) / (A000051 n : ℚ)) ^ 2).toNat

end

end A035050.P1737119083702168214

/-!
# A035051: Number of labeled rooted connected graphs where every block is a complete graph.

The programs for A035051, there is no canonical definition to state claims against.
-/

/-! ## A035051.P4995941012013510100

`n*A030019(n)`
-/

namespace A035051.P4995941012013510100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A030019 n

end

end A035051.P4995941012013510100

/-! ## A035051.P11130883958135289321

`lcm(n, A030019(A028310(n)))`
-/

namespace A035051.P11130883958135289321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A030019 (A028310 n).toNat)

end

end A035051.P11130883958135289321

/-! ## A035051.P11071968432331771864

`lcm(sqrt(A000290(n)), A030019(n))`
-/

namespace A035051.P11071968432331771864
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.sqrt (A000290 n : ℝ))) (A030019 n)

end

end A035051.P11071968432331771864

/-! ## A035051.P1852814827253972091

`n*A134958(n)/2^n`
-/

namespace A035051.P1852814827253972091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A134958 n : ℚ) / (2 ^ n : ℚ))

end

end A035051.P1852814827253972091

/-! ## A035051.P17662939318122074359

`n/A000079(n)*A134958(n)`
-/

namespace A035051.P17662939318122074359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A000079 n : ℚ) * (A134958 n : ℚ)

end

end A035051.P17662939318122074359

/-!
# A035052: Number of sets of rooted connected graphs where every block is a complete graph.

The programs for A035052, there is no canonical definition to state claims against.
-/

/-! ## A035052.P17402643690864807328

`A226762(A006027(n+2))`
-/

namespace A035052.P17402643690864807328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A006027 (n + 2)).toNat

end

end A035052.P17402643690864807328

/-! ## A035052.P3284782449793874657

`∑[floor(A171895(A000984(n))/2)]+1`
-/

namespace A035052.P3284782449793874657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A171895 (A000984 n).toNat : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A035052.P3284782449793874657

/-! ## A035052.P9766671518652310570

`A151755(A000083(n))+A000108(n)`
-/

namespace A035052.P9766671518652310570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151755 (A000083 n).toNat + A000108 n

end

end A035052.P9766671518652310570

/-! ## A035052.P6204955189689384919

`A070092(A208218(n))+A000108(n)`
-/

namespace A035052.P6204955189689384919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070092 (A208218 n).toNat + A000108 n

end

end A035052.P6204955189689384919

/-!
# A035053: Number of connected graphs on n unlabeled nodes where every block is a complete graph.

The programs for A035053, there is no canonical definition to state claims against.
-/

/-! ## A035053.P596784063359985471

`abs(Δ[A304937(abs(1-n))])`
-/

namespace A035053.P596784063359985471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304937 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A035053.P596784063359985471

/-! ## A035053.P14229167102570472914

`floor(sqrt(A353520(n!)))`
-/

namespace A035053.P14229167102570472914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A353520 (Nat.factorial n))

end

end A035053.P14229167102570472914

/-! ## A035053.P10931089975720820598

`A321994(gcd(n, C(2, n)))`
-/

namespace A035053.P10931089975720820598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321994 (Nat.gcd n (Nat.choose 2 n))

end

end A035053.P10931089975720820598

/-! ## A035053.P17829675779271244241

`A321994(floor(sqrt(n²+1)))`
-/

namespace A035053.P17829675779271244241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321994 (Nat.sqrt (n ^ 2 + 1))

end

end A035053.P17829675779271244241

/-! ## A035053.P2845528224919720361

`a(A363226(n))*A321994(n)` with `a(0)=1`
-/

namespace A035053.P2845528224919720361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A363226 n).toNat * A321994 n

end

end A035053.P2845528224919720361

/-!
# A035054: Number of forests of identical trees.

The programs for A035054, there is no canonical definition to state claims against.
-/

/-! ## A035054.P15279183776177960298

`∑{d}[n, A000055(#)]+C(2, n+2)`
-/

namespace A035054.P15279183776177960298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000055 d + (Nat.choose 2 (n + 2) : ℤ)

end

end A035054.P15279183776177960298

/-! ## A035054.P10532397492470964955

`∑{d}[A028310(n), A000055(#)]`
-/

namespace A035054.P10532397492470964955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000055 d

end

end A035054.P10532397492470964955

/-! ## A035054.P1607690023495667314

`A000007(n)+∑{d}[n, A000055(#)]`
-/

namespace A035054.P1607690023495667314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ∑ d ∈ Nat.divisors (f1 n), A000055 d

end

end A035054.P1607690023495667314

/-! ## A035054.P17064508038449622169

`∑{d}[n, A000055(#)]+A001222(A014963(4*n+2))`
-/

namespace A035054.P17064508038449622169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000055 d + A001222 (A014963 (4 * n + 2)).toNat

end

end A035054.P17064508038449622169

/-! ## A035054.P10551711194769819220

`∑{d}[n, A000055(#)]-A008683(2*(n+1)²)`
-/

namespace A035054.P10551711194769819220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000055 d - A008683 (2 * (n + 1) ^ 2)

end

end A035054.P10551711194769819220

/-! ## A035054.P12649949094309704627

`∑{d}[n, A000055(#)]+A008683(Δ[(26*n)²])^n`
-/

namespace A035054.P12649949094309704627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (26 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000055 d + A008683 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat ^ n

end

end A035054.P12649949094309704627

/-!
# A035055: Number of forests of different trees.

The programs for A035055, there is no canonical definition to state claims against.
-/

/-! ## A035055.P7601092694653672848

`A001462(A198304(n)-A000071(n+1))`
-/

namespace A035055.P7601092694653672848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A198304 n - A000071 (n + 1)).toNat

end

end A035055.P7601092694653672848

/-! ## A035055.P15528928654104266151

`A320456(A345234(n+1))`
-/

namespace A035055.P15528928654104266151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320456 (A345234 (n + 1)).toNat

end

end A035055.P15528928654104266151

/-! ## A035055.P16273603336086987436

`A003056(A000602(n+1)²)`
-/

namespace A035055.P16273603336086987436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000602 (n + 1) ^ 2).toNat

end

end A035055.P16273603336086987436

/-! ## A035055.P12582586378769191717

`A003056(A000602(n+1)*A000602(n+1))`
-/

namespace A035055.P12582586378769191717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000602 (n + 1) * A000602 (n + 1)).toNat

end

end A035055.P12582586378769191717

/-! ## A035055.P207802097358268324

`ceil(A382216(n+2)/9)`
-/

namespace A035055.P207802097358268324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A382216 (n + 2) : ℚ) / 9⌉

end

end A035055.P207802097358268324

/-!
# A035056: Number of asymmetric forests with n nodes.

The programs for A035056, there is no canonical definition to state claims against.
-/

/-! ## A035056.P8735725114718101682

`A103344(A070939(n)+A038140(n+1))`
-/

namespace A035056.P8735725114718101682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103344 (A070939 n + A038140 (n + 1)).toNat

end

end A035056.P8735725114718101682

/-!
# A035057: Numbers k such that 2^k does not contain the digit 1 (probably finite).

The programs for A035057, there is no canonical definition to state claims against.
-/

/-! ## A035057.P5995929953424897857

`eq[0, A065712(n)]`
-/

namespace A035057.P5995929953424897857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065712 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035057.P5995929953424897857

/-! ## A035057.P12624845961592523002

`lt[A065712(n+1), 1]+1`
-/

namespace A035057.P12624845961592523002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065712 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A035057.P12624845961592523002

/-! ## A035057.P8478838055655022521

`A000027(lt[A065712(n), 1])`
-/

namespace A035057.P8478838055655022521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065712 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A035057.P8478838055655022521

/-! ## A035057.P15150812381021319573

`A004719(lt[A065712(n), 1])`
-/

namespace A035057.P15150812381021319573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065712 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A035057.P15150812381021319573

/-! ## A035057.P4136388130375804809

`A028310(lt[A065712(n), 1])`
-/

namespace A035057.P4136388130375804809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065712 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A035057.P4136388130375804809

/-!
# A035058: Numbers k such that 2^k does not contain the digit 3 (probably finite).

The programs for A035058, there is no canonical definition to state claims against.
-/

/-! ## A035058.P5868019382713170841

`eq[0, A065714(n)]`
-/

namespace A035058.P5868019382713170841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065714 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035058.P5868019382713170841

/-! ## A035058.P1338797306656017276

`lt[A065714(round(acot(n)+n)), 1]`
-/

namespace A035058.P1338797306656017276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065714 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A035058.P1338797306656017276

/-! ## A035058.P11384856465156992105

`lt[A065714(round(sqrt(n²+1))), 1]`
-/

namespace A035058.P11384856465156992105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065714 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A035058.P11384856465156992105

/-! ## A035058.P5525312178662292339

`lt[A250120(A065714(n)²), 2]`
-/

namespace A035058.P5525312178662292339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (A065714 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A035058.P5525312178662292339

/-! ## A035058.P4484049068658365707

`lt[A351548(A065714(n)+1), 1]`
-/

namespace A035058.P4484049068658365707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351548 (A065714 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A035058.P4484049068658365707

/-!
# A035059: Numbers k such that 2^k does not contain the digit 4 (probably finite).

The programs for A035059, there is no canonical definition to state claims against.
-/

/-! ## A035059.P5587015568500406747

`eq[0, A065715(n)]`
-/

namespace A035059.P5587015568500406747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065715 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035059.P5587015568500406747

/-! ## A035059.P18305327654603344222

`lt[A065715(round(sqrt(n²+1))), 1]`
-/

namespace A035059.P18305327654603344222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065715 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A035059.P18305327654603344222

/-! ## A035059.P14176972801693454567

`lt[A000045(A065715(n)²), 1]`
-/

namespace A035059.P14176972801693454567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A065715 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A035059.P14176972801693454567

/-! ## A035059.P7268898837825828573

`lt[A040976(A065715(n)+1), 1]`
-/

namespace A035059.P7268898837825828573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (A065715 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A035059.P7268898837825828573

/-!
# A035060: Numbers k such that 2^k does not contain the digit 5 (probably finite).

The programs for A035060, there is no canonical definition to state claims against.
-/

/-! ## A035060.P4517767286035910743

`eq[0, A065716(n)]`
-/

namespace A035060.P4517767286035910743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065716 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035060.P4517767286035910743

/-! ## A035060.P605706896746462014

`lt[A065716(round(acot(n)+n)), 1]`
-/

namespace A035060.P605706896746462014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065716 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A035060.P605706896746462014

/-! ## A035060.P18169094738815570800

`lt[A065716(A028310(n)), 1]`
-/

namespace A035060.P18169094738815570800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065716 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A035060.P18169094738815570800

/-! ## A035060.P18050167916082078223

`A292579(lt[A065716(n), 1])`
-/

namespace A035060.P18050167916082078223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065716 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292579 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A035060.P18050167916082078223

/-! ## A035060.P17349970673134956643

`lt[A065716(n), A057077(n)²]`
-/

namespace A035060.P17349970673134956643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065716 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035060.P17349970673134956643

/-!
# A035061: Numbers n such that 2^n does not contain the digit 6 (probably finite).

The programs for A035061, there is no canonical definition to state claims against.
-/

/-! ## A035061.P10747960934549320173

`eq[0, A065717(n)]`
-/

namespace A035061.P10747960934549320173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065717 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035061.P10747960934549320173

/-! ## A035061.P5482902825783629913

`lt[A065717(round(acot(n)+n)), 1]`
-/

namespace A035061.P5482902825783629913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065717 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A035061.P5482902825783629913

/-! ## A035061.P11409782354449816840

`lt[A065717(round(sqrt(n²+1))), 1]`
-/

namespace A035061.P11409782354449816840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065717 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A035061.P11409782354449816840

/-! ## A035061.P563649746510060531

`lt[A061579(A065717(n)²), 2]`
-/

namespace A035061.P563649746510060531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A065717 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A035061.P563649746510060531

/-! ## A035061.P9406033361920181052

`lt[A061836(A065717(n)²), 2]`
-/

namespace A035061.P9406033361920181052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061836 (A065717 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A035061.P9406033361920181052

/-!
# A035062: Numbers n such that 2^n does not contain the digit 7.

The programs for A035062, there is no canonical definition to state claims against.
-/

/-! ## A035062.P13232043631442310154

`eq[0, A065718(n)]`
-/

namespace A035062.P13232043631442310154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065718 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035062.P13232043631442310154

/-! ## A035062.P919205613422361762

`lt[A065718(round(acot(n)+n)), 1]`
-/

namespace A035062.P919205613422361762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065718 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A035062.P919205613422361762

/-! ## A035062.P6685982197013150145

`lt[A065718(round(sqrt(n²+1))), 1]`
-/

namespace A035062.P6685982197013150145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065718 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A035062.P6685982197013150145

/-! ## A035062.P15298872670237342255

`lt[A000045(A065718(n)²), 1]`
-/

namespace A035062.P15298872670237342255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A065718 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A035062.P15298872670237342255

/-! ## A035062.P4196484444886307452

`lt[A002113(A065718(n)+1), 1]`
-/

namespace A035062.P4196484444886307452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A065718 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A035062.P4196484444886307452

/-!
# A035063: Numbers n such that 2^n does not contain the digit 8 (probably finite).

The programs for A035063, there is no canonical definition to state claims against.
-/

/-! ## A035063.P16416028924357388246

`eq[0, A065719(n)]`
-/

namespace A035063.P16416028924357388246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035063.P16416028924357388246

/-! ## A035063.P15426826479372919620

`lt[A065719(round(acot(n)+n)), 1]`
-/

namespace A035063.P15426826479372919620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A035063.P15426826479372919620

/-! ## A035063.P900710225212737331

`lt[A065719(A028310(n)), 1]`
-/

namespace A035063.P900710225212737331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A035063.P900710225212737331

/-! ## A035063.P7352033719735183833

`lt[A001105(A065719(n)²), 2]`
-/

namespace A035063.P7352033719735183833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (A065719 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A035063.P7352033719735183833

/-! ## A035063.P18061288547082896954

`lt[A065719(n), abs(A033999(n))]`
-/

namespace A035063.P18061288547082896954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035063.P18061288547082896954

/-!
# A035064: Numbers k such that 2^k does not contain the digit 9 (probably finite).

The programs for A035064, there is no canonical definition to state claims against.
-/

/-! ## A035064.P15223846195674668621

`eq[0, A065744(n)]`
-/

namespace A035064.P15223846195674668621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065744 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035064.P15223846195674668621

/-! ## A035064.P2789228813834795877

`lt[A065744(round(acot(n)+n)), 1]`
-/

namespace A035064.P2789228813834795877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065744 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A035064.P2789228813834795877

/-! ## A035064.P1525022453390022375

`lt[A065744(A028310(n)), 1]`
-/

namespace A035064.P1525022453390022375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065744 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A035064.P1525022453390022375

/-! ## A035064.P11313432154035153231

`lt[A065744(A254667(n)), 1]`
-/

namespace A035064.P11313432154035153231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065744 (A254667 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A035064.P11313432154035153231

/-! ## A035064.P11550770276997565142

`lt[A036694(A065744(n)²), 1]`
-/

namespace A035064.P11550770276997565142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036694 (A065744 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A035064.P11550770276997565142

/-!
# A035065: Numbers k such that k! has a prime number of digits.

The programs for A035065, there is no canonical definition to state claims against.
-/

/-! ## A035065.P1610863063153758931

`eq[1, A001222(A034886(n))]`
-/

namespace A035065.P1610863063153758931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A034886 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035065.P1610863063153758931

/-! ## A035065.P16253220510693636648

`eq[1, A010051(A241730(n)+A055642(n))]`
-/

namespace A035065.P16253220510693636648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A241730 n + A055642 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035065.P16253220510693636648

/-! ## A035065.P17963448250442010575

`eq[A006530(2*A034886(n)), A034886(n)]`
-/

namespace A035065.P17963448250442010575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A034886 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035065.P17963448250442010575

/-! ## A035065.P13653436505071562051

`eq[A000007(n), A349354(A034886(n))]`
-/

namespace A035065.P13653436505071562051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349354 (A034886 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035065.P13653436505071562051

/-! ## A035065.P224388271398297039

`eq[A000005(A034886(n)), A000034(2*n+3)]`
-/

namespace A035065.P224388271398297039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A034886 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035065.P224388271398297039

/-! ## A035065.P10594396265781064317

`eq[1, A306927(A034886(n+1))]+1`
-/

namespace A035065.P10594396265781064317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306927 (A034886 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A035065.P10594396265781064317

/-! ## A035065.P9737446689330215456

`eq[A034947(n+1)², A003415(A034886(n))]`
-/

namespace A035065.P9737446689330215456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A034886 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035065.P9737446689330215456

/-! ## A035065.P11577873093320310366

`eq[1, A070821(2*A034886(n))]`
-/

namespace A035065.P11577873093320310366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070821 (2 * A034886 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035065.P11577873093320310366

/-!
# A035066: Prime lengths of factorials: see A035065.

The programs for A035066, there is no canonical definition to state claims against.
-/

/-! ## A035066.P2694556806963937038

`p?[A034886(n)]`
-/

namespace A035066.P2694556806963937038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A035066.P2694556806963937038

/-! ## A035066.P12269210140652337409

`A034886(A035065(n+1))`
-/

namespace A035066.P12269210140652337409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (A035065 (n + 1)).toNat

end

end A035066.P12269210140652337409

/-! ## A035066.P14256111051188590822

`filter[A034886(n), A010051(#)]`
-/

namespace A035066.P14256111051188590822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A035066.P14256111051188590822

/-! ## A035066.P15101363155124854089

`p?[A241730(n)+A055642(n)]`
-/

namespace A035066.P15101363155124854089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241730 n + A055642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A035066.P15101363155124854089

/-! ## A035066.P2804273521855149659

`p?[A241730(n)+A004218(n+1)]`
-/

namespace A035066.P2804273521855149659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241730 n + A004218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A035066.P2804273521855149659

/-! ## A035066.P16115361410461481262

`A034886(eq[1, A001222(A034886(n))])`
-/

namespace A035066.P16115361410461481262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A034886 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035066.P16115361410461481262

/-! ## A035066.P10299882642069391354

`p?[A027868(n)+A008906(n)]`
-/

namespace A035066.P10299882642069391354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 n + A008906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A035066.P10299882642069391354

/-! ## A035066.P10628251486329598505

`p?[Δ[A071424(n+1)]]`
-/

namespace A035066.P10628251486329598505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071424 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A035066.P10628251486329598505

/-! ## A035066.P5300602655921797712

`A034886(eq[0, A070821(A034886(n))])`
-/

namespace A035066.P5300602655921797712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070821 (A034886 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035066.P5300602655921797712

/-!
# A035067: Numbers k such that k! has a palindromic prime number of digits.

The programs for A035067, there is no canonical definition to state claims against.
-/

/-! ## A035067.P529887317519868699

`∩[A035065(n+1), A333598(n+1)]`
-/

namespace A035067.P529887317519868699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333598 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035067.P529887317519868699

/-!
# A035068: Palindromic prime lengths of factorials: see A035067.

The programs for A035068, there is no canonical definition to state claims against.
-/

/-! ## A035068.P4294938128215248350

`p?[A087999(A035066(n+1))]`
-/

namespace A035068.P4294938128215248350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087999 (A035066 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A035068.P4294938128215248350

/-! ## A035068.P10038227276564939452

`A034886(A035067(n+1))`
-/

namespace A035068.P10038227276564939452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (A035067 (n + 1)).toNat

end

end A035068.P10038227276564939452

/-! ## A035068.P14513921713469764261

`p?[A087999(p?[A034886(n)])]`
-/

namespace A035068.P14513921713469764261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087999 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A035068.P14513921713469764261

/-! ## A035068.P3184961029862642962

`p?[A068634(A034886(n))]`
-/

namespace A035068.P3184961029862642962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068634 (A034886 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A035068.P3184961029862642962

/-! ## A035068.P18036304254132141605

`p?[A034886(A333598(n+1))]`
-/

namespace A035068.P18036304254132141605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (A333598 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A035068.P18036304254132141605

/-!
# A035069: a(n) is root of square starting with digit 2: first term of runs.

The programs for A035069, the canonical program `A035069.P3375015776843384205` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035069 has offset 1).

The definition of A035069 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035069.P3375015776843384205

`ceil(sqrt(2*10^(n+1)))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035069

/-- `ceil(sqrt(2*10^(n+1)))` -/
def P3375015776843384205.Spec : Prop :=
  ∀ n, P3375015776843384205.a n = A035069 (n + 1)

theorem P3375015776843384205.correct : P3375015776843384205.Spec := by
  intro n
  simp only [A035069, Nat.add_sub_cancel]

end A035069

/-! ## A035069.P11568312614791574664

`A083377(n+2)+1`
-/

namespace A035069.P11568312614791574664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083377 (n + 2) + 1

end

end A035069.P11568312614791574664

namespace A035069

/-- `A083377(n+2)+1` -/
def P11568312614791574664.Spec : Prop :=
  ∀ n, P11568312614791574664.a n = A035069 (n + 1)

end A035069

/-! ## A035069.P6196259927337296113

`sqrt(A067472(n+2))`
-/

namespace A035069.P6196259927337296113
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A067472 (n + 2) : ℝ)

end

end A035069.P6196259927337296113

namespace A035069

/-- `sqrt(A067472(n+2))` -/
def P6196259927337296113.Spec : Prop :=
  ∀ n, P6196259927337296113.a n = (A035069 (n + 1) : ℝ)

end A035069

/-! ## A035069.P8578552844150920394

`floor(sqrt(A086573(n+1)))+1`
-/

namespace A035069.P8578552844150920394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A086573 (n + 1)) + 1

end

end A035069.P8578552844150920394

namespace A035069

/-- `floor(sqrt(A086573(n+1)))+1` -/
def P8578552844150920394.Spec : Prop :=
  ∀ n, P8578552844150920394.a n = A035069 (n + 1)

end A035069

/-! ## A035069.P15493484843223237601

`floor(sqrt(2*A002283(n+1)))+1`
-/

namespace A035069.P15493484843223237601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A002283 (n + 1)) + 1

end

end A035069.P15493484843223237601

namespace A035069

/-- `floor(sqrt(2*A002283(n+1)))+1` -/
def P15493484843223237601.Spec : Prop :=
  ∀ n, P15493484843223237601.a n = A035069 (n + 1)

end A035069

/-!
# A035070: a(n) is root of square starting with digit 3: first term of runs.

The programs for A035070, the canonical program `A035070.P3852501697838550071` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035070 has offset 1).

The definition of A035070 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035070.P3852501697838550071

`ceil(sqrt(3*10^(n+1)))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035070

/-- `ceil(sqrt(3*10^(n+1)))` -/
def P3852501697838550071.Spec : Prop :=
  ∀ n, P3852501697838550071.a n = A035070 (n + 1)

theorem P3852501697838550071.correct : P3852501697838550071.Spec := by
  intro n
  simp only [A035070, Nat.add_sub_cancel]

end A035070

/-! ## A035070.P6227377778841572257

`sqrt(A067473(n+2))`
-/

namespace A035070.P6227377778841572257
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A067473 (n + 2) : ℝ)

end

end A035070.P6227377778841572257

namespace A035070

/-- `sqrt(A067473(n+2))` -/
def P6227377778841572257.Spec : Prop :=
  ∀ n, P6227377778841572257.a n = (A035070 (n + 1) : ℝ)

end A035070

/-! ## A035070.P8749670216679201970

`floor(sqrt(A086943(n+1)+2))+1`
-/

namespace A035070.P8749670216679201970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A086943 (n + 1) + 2) + 1

end

end A035070.P8749670216679201970

namespace A035070

/-- `floor(sqrt(A086943(n+1)+2))+1` -/
def P8749670216679201970.Spec : Prop :=
  ∀ n, P8749670216679201970.a n = A035070 (n + 1)

end A035070

/-! ## A035070.P7015941332002619207

`floor(sqrt(3*A002283(n+1)))+1`
-/

namespace A035070.P7015941332002619207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (3 * A002283 (n + 1)) + 1

end

end A035070.P7015941332002619207

namespace A035070

/-- `floor(sqrt(3*A002283(n+1)))+1` -/
def P7015941332002619207.Spec : Prop :=
  ∀ n, P7015941332002619207.a n = A035070 (n + 1)

end A035070

/-! ## A035070.P4649186757187780640

`floor(sqrt(3*A011557(n+1)))+1`
-/

namespace A035070.P4649186757187780640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (3 * A011557 (n + 1)) + 1

end

end A035070.P4649186757187780640

namespace A035070

/-- `floor(sqrt(3*A011557(n+1)))+1` -/
def P4649186757187780640.Spec : Prop :=
  ∀ n, P4649186757187780640.a n = A035070 (n + 1)

end A035070

/-! ## A035070.P9582420190960118785

`root(A067473(n+2), A185437(n+7))`
-/

namespace A035070.P9582420190960118785
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067473 (n + 2) : ℝ) ^ (1 / (A185437 (n + 7) : ℝ))

end

end A035070.P9582420190960118785

namespace A035070

/-- `root(A067473(n+2), A185437(n+7))` -/
def P9582420190960118785.Spec : Prop :=
  ∀ n, P9582420190960118785.a n = (A035070 (n + 1) : ℝ)

end A035070

/-! ## A035070.P15409948942597631189

`root(A067473(n+2), A000034(2*n+1))`
-/

namespace A035070.P15409948942597631189
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067473 (n + 2) : ℝ) ^ (1 / (A000034 (2 * n + 1) : ℝ))

end

end A035070.P15409948942597631189

namespace A035070

/-- `root(A067473(n+2), A000034(2*n+1))` -/
def P15409948942597631189.Spec : Prop :=
  ∀ n, P15409948942597631189.a n = (A035070 (n + 1) : ℝ)

end A035070

/-! ## A035070.P15616514386258205327

`root(A067473(n+2), A020639(2*(n+1)))`
-/

namespace A035070.P15616514386258205327
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067473 (n + 2) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A035070.P15616514386258205327

namespace A035070

/-- `root(A067473(n+2), A020639(2*(n+1)))` -/
def P15616514386258205327.Spec : Prop :=
  ∀ n, P15616514386258205327.a n = (A035070 (n + 1) : ℝ)

end A035070

/-! ## A035070.P922152421374507851

`root(A067473(n+2), A272613(gcd(n, n+2)))`
-/

namespace A035070.P922152421374507851
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067473 (n + 2) : ℝ) ^ (1 / (A272613 (Nat.gcd n (n + 2)) : ℝ))

end

end A035070.P922152421374507851

namespace A035070

/-- `root(A067473(n+2), A272613(gcd(n, n+2)))` -/
def P922152421374507851.Spec : Prop :=
  ∀ n, P922152421374507851.a n = (A035070 (n + 1) : ℝ)

end A035070

/-! ## A035070.P13385243137681403493

`floor(A000035(2*n+1)+sqrt(A198698(n+1)))`
-/

namespace A035070.P13385243137681403493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000035 (2 * n + 1) : ℝ) + Real.sqrt (A198698 (n + 1) : ℝ)⌋

end

end A035070.P13385243137681403493

namespace A035070

/-- `floor(A000035(2*n+1)+sqrt(A198698(n+1)))` -/
def P13385243137681403493.Spec : Prop :=
  ∀ n, P13385243137681403493.a n = A035070 (n + 1)

end A035070

/-!
# A035071: a(n) = ceiling(sqrt(4*10^n)).

The programs for A035071, the canonical program `A035071.P7959397829130865033` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035071 has offset 0).

The definition of A035071 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(sqrt(4*10^n))` (program `A035071.P7959397829130865033`, by `A035071.P7959397829130865033.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A035071.P7959397829130865033

`ceil(sqrt(4*10^n))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035071

/-- `ceil(sqrt(4*10^n))` -/
def P7959397829130865033.Spec : Prop :=
  ∀ n, P7959397829130865033.a n = A035071 n

theorem P7959397829130865033.correct : P7959397829130865033.Spec := by
  intro n
  simp only [A035071]

end A035071

/-! ## A035071.P3491757472572517553

`A017936(n+1)+round(sqrt(10)^n)`
-/

namespace A035071.P3491757472572517553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017936 (n + 1) + SequenceMachineLib.roundAway (Real.sqrt (10 : ℝ) ^ n)

end

end A035071.P3491757472572517553

namespace A035071

/-- `A017936(n+1)+round(sqrt(10)^n)` -/
def P3491757472572517553.Spec : Prop :=
  ∀ n, P3491757472572517553.a n = A035071 n

end A035071

/-! ## A035071.P12408880918720587129

`sqrt(A067474(n+1))`
-/

namespace A035071.P12408880918720587129
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A067474 (n + 1) : ℝ)

end

end A035071.P12408880918720587129

namespace A035071

/-- `sqrt(A067474(n+1))` -/
def P12408880918720587129.Spec : Prop :=
  ∀ n, P12408880918720587129.a n = (A035071 n : ℝ)

end A035071

/-! ## A035071.P14255121881529180223

`floor(sqrt(A198970(n)))+1`
-/

namespace A035071.P14255121881529180223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A198970 n) + 1

end

end A035071.P14255121881529180223

namespace A035071

/-- `floor(sqrt(A198970(n)))+1` -/
def P14255121881529180223.Spec : Prop :=
  ∀ n, P14255121881529180223.a n = A035071 n

end A035071

/-! ## A035071.P200428906186400242

`floor(sqrt(A083818(n+1)))+1`
-/

namespace A035071.P200428906186400242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A083818 (n + 1)) + 1

end

end A035071.P200428906186400242

namespace A035071

/-- `floor(sqrt(A083818(n+1)))+1` -/
def P200428906186400242.Spec : Prop :=
  ∀ n, P200428906186400242.a n = A035071 n

end A035071

/-! ## A035071.P721008668912127169

`root(A067474(n+1), A000034(2*n+1))`
-/

namespace A035071.P721008668912127169
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067474 (n + 1) : ℝ) ^ (1 / (A000034 (2 * n + 1) : ℝ))

end

end A035071.P721008668912127169

namespace A035071

/-- `root(A067474(n+1), A000034(2*n+1))` -/
def P721008668912127169.Spec : Prop :=
  ∀ n, P721008668912127169.a n = (A035071 n : ℝ)

end A035071

/-! ## A035071.P16873872608387686699

`root(A067474(n+1), A020639(2*(n+1)))`
-/

namespace A035071.P16873872608387686699
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067474 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A035071.P16873872608387686699

namespace A035071

/-- `root(A067474(n+1), A020639(2*(n+1)))` -/
def P16873872608387686699.Spec : Prop :=
  ∀ n, P16873872608387686699.a n = (A035071 n : ℝ)

end A035071

/-! ## A035071.P3549266615879337118

`A067474(n+1)^2^A008683(A240710(n+1))`
-/

namespace A035071.P3549266615879337118
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067474 (n + 1) : ℝ) ^ ((2 : ℚ) ^ (A008683 (A240710 (n + 1)).toNat : ℤ) : ℝ)

end

end A035071.P3549266615879337118

namespace A035071

/-- `A067474(n+1)^2^A008683(A240710(n+1))` -/
def P3549266615879337118.Spec : Prop :=
  ∀ n, P3549266615879337118.a n = (A035071 n : ℝ)

end A035071

/-!
# A035072: a(n) is root of square starting with digit 5: first term of runs.

The programs for A035072, the canonical program `A035072.P4342046488100787675` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035072 has offset 2).

The definition of A035072 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035072.P4342046488100787675

`ceil(sqrt(5*10^(n+2)))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035072

/-- `ceil(sqrt(5*10^(n+2)))` -/
def P4342046488100787675.Spec : Prop :=
  ∀ n, P4342046488100787675.a n = A035072 (n + 2)

theorem P4342046488100787675.correct : P4342046488100787675.Spec := by
  intro n
  simp only [A035072, Nat.add_sub_cancel]

end A035072

/-! ## A035072.P3068225859066763128

`round(A035069(n+3)/2)`
-/

namespace A035072.P3068225859066763128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A035069 (n + 3) : ℚ) / 2)

end

end A035072.P3068225859066763128

namespace A035072

/-- `round(A035069(n+3)/2)` -/
def P3068225859066763128.Spec : Prop :=
  ∀ n, P3068225859066763128.a n = A035072 (n + 2)

end A035072

/-! ## A035072.P4467046610066867910

`sqrt(A067475(n+3))`
-/

namespace A035072.P4467046610066867910
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A067475 (n + 3) : ℝ)

end

end A035072.P4467046610066867910

namespace A035072

/-- `sqrt(A067475(n+3))` -/
def P4467046610066867910.Spec : Prop :=
  ∀ n, P4467046610066867910.a n = (A035072 (n + 2) : ℝ)

end A035072

/-! ## A035072.P6147968328471278476

`root(A067475(n+3), A107393(8*(n+1)))`
-/

namespace A035072.P6147968328471278476
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067475 (n + 3) : ℝ) ^ (1 / (A107393 (8 * (n + 1)) : ℝ))

end

end A035072.P6147968328471278476

namespace A035072

/-- `root(A067475(n+3), A107393(8*(n+1)))` -/
def P6147968328471278476.Spec : Prop :=
  ∀ n, P6147968328471278476.a n = (A035072 (n + 2) : ℝ)

end A035072

/-! ## A035072.P13794930126252160642

`A109999(n+3)+1`
-/

namespace A035072.P13794930126252160642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109999 (n + 3) + 1

end

end A035072.P13794930126252160642

namespace A035072

/-- `A109999(n+3)+1` -/
def P13794930126252160642.Spec : Prop :=
  ∀ n, P13794930126252160642.a n = A035072 (n + 2)

end A035072

/-!
# A035073: a(n) is root of square starting with digit 6: first term of runs.

The programs for A035073, the canonical program `A035073.P17730698053198242522` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035073 has offset 1).

The definition of A035073 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035073.P17730698053198242522

`ceil(sqrt(6*10^(n+1)))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035073

/-- `ceil(sqrt(6*10^(n+1)))` -/
def P17730698053198242522.Spec : Prop :=
  ∀ n, P17730698053198242522.a n = A035073 (n + 1)

theorem P17730698053198242522.correct : P17730698053198242522.Spec := by
  intro n
  simp only [A035073, Nat.add_sub_cancel]

end A035073

/-! ## A035073.P5644833593839983898

`sqrt(A067476(n+2))`
-/

namespace A035073.P5644833593839983898
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A067476 (n + 2) : ℝ)

end

end A035073.P5644833593839983898

namespace A035073

/-- `sqrt(A067476(n+2))` -/
def P5644833593839983898.Spec : Prop :=
  ∀ n, P5644833593839983898.a n = (A035073 (n + 1) : ℝ)

end A035073

/-! ## A035073.P17186716775193809488

`floor(sqrt(6*(A011557(n+1)-1)-1))+1`
-/

namespace A035073.P17186716775193809488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (6 * (A011557 (n + 1) - 1) - 1) + 1

end

end A035073.P17186716775193809488

namespace A035073

/-- `floor(sqrt(6*(A011557(n+1)-1)-1))+1` -/
def P17186716775193809488.Spec : Prop :=
  ∀ n, P17186716775193809488.a n = A035073 (n + 1)

end A035073

/-! ## A035073.P7916799855654257872

`root(A067476(n+2), A000034(2*n+1))`
-/

namespace A035073.P7916799855654257872
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067476 (n + 2) : ℝ) ^ (1 / (A000034 (2 * n + 1) : ℝ))

end

end A035073.P7916799855654257872

namespace A035073

/-- `root(A067476(n+2), A000034(2*n+1))` -/
def P7916799855654257872.Spec : Prop :=
  ∀ n, P7916799855654257872.a n = (A035073 (n + 1) : ℝ)

end A035073

/-! ## A035073.P7575566917334529554

`root(A067476(n+2), A020639(2*(n+1)))`
-/

namespace A035073.P7575566917334529554
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067476 (n + 2) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A035073.P7575566917334529554

namespace A035073

/-- `root(A067476(n+2), A020639(2*(n+1)))` -/
def P7575566917334529554.Spec : Prop :=
  ∀ n, P7575566917334529554.a n = (A035073 (n + 1) : ℝ)

end A035073

/-! ## A035073.P16328257447704659070

`ceil(sqrt(A100413(n+1)))%A100413(n+1)`
-/

namespace A035073.P16328257447704659070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (A100413 (n + 1) : ℝ)⌉ (A100413 (n + 1))

end

end A035073.P16328257447704659070

namespace A035073

/-- `ceil(sqrt(A100413(n+1)))%A100413(n+1)` -/
def P16328257447704659070.Spec : Prop :=
  ∀ n, P16328257447704659070.a n = A035073 (n + 1)

end A035073

/-!
# A035074: a(n) is root of square starting with digit 7: first term of runs.

The programs for A035074, the canonical program `A035074.P5960580968546287906` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035074 has offset 2).

The definition of A035074 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035074.P5960580968546287906

`ceil(sqrt(7*10^(n+2)))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035074

/-- `ceil(sqrt(7*10^(n+2)))` -/
def P5960580968546287906.Spec : Prop :=
  ∀ n, P5960580968546287906.a n = A035074 (n + 2)

theorem P5960580968546287906.correct : P5960580968546287906.Spec := by
  intro n
  simp only [A035074, Nat.add_sub_cancel]

end A035074

/-! ## A035074.P3511093123309320985

`sqrt(A067477(n+3))`
-/

namespace A035074.P3511093123309320985
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A067477 (n + 3) : ℝ)

end

end A035074.P3511093123309320985

namespace A035074

/-- `sqrt(A067477(n+3))` -/
def P3511093123309320985.Spec : Prop :=
  ∀ n, P3511093123309320985.a n = (A035074 (n + 2) : ℝ)

end A035074

/-! ## A035074.P1834311237810491626

`root(A067477(n+3), 2)*A007318(C(2, n))`
-/

namespace A035074.P1834311237810491626
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067477 (n + 3) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (Nat.choose 2 n) : ℝ)

end

end A035074.P1834311237810491626

namespace A035074

/-- `root(A067477(n+3), 2)*A007318(C(2, n))` -/
def P1834311237810491626.Spec : Prop :=
  ∀ n, P1834311237810491626.a n = (A035074 (n + 2) : ℝ)

end A035074

/-! ## A035074.P10814327085675242096

`root(A067477(n+3), A020639(∏{p}[n+1, #]+1+n))`
-/

namespace A035074.P10814327085675242096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067477 (n + 3) : ℝ) ^ (1 / (A020639 (∏ p ∈ Nat.primeFactors (f1 n), p + 1 + n) : ℝ))

end

end A035074.P10814327085675242096

namespace A035074

/-- `root(A067477(n+3), A020639(∏{p}[n+1, #]+1+n))` -/
def P10814327085675242096.Spec : Prop :=
  ∀ n, P10814327085675242096.a n = (A035074 (n + 2) : ℝ)

end A035074

/-! ## A035074.P17579259543186347155

`root(A067477(n+3), A133265(A133265(n)))`
-/

namespace A035074.P17579259543186347155
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067477 (n + 3) : ℝ) ^ (1 / (A133265 (A133265 n).toNat : ℝ))

end

end A035074.P17579259543186347155

namespace A035074

/-- `root(A067477(n+3), A133265(A133265(n)))` -/
def P17579259543186347155.Spec : Prop :=
  ∀ n, P17579259543186347155.a n = (A035074 (n + 2) : ℝ)

end A035074

/-!
# A035075: a(n) = ceiling(sqrt(8*10^n)).

The programs for A035075, the canonical program `A035075.P12927775116135263700` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035075 has offset 1).

The definition of A035075 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(sqrt(8*10^(n+1)))` (program `A035075.P12927775116135263700`, by `A035075.P12927775116135263700.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A035075.P12927775116135263700

`ceil(sqrt(8*10^(n+1)))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035075

/-- `ceil(sqrt(8*10^(n+1)))` -/
def P12927775116135263700.Spec : Prop :=
  ∀ n, P12927775116135263700.a n = A035075 (n + 1)

theorem P12927775116135263700.correct : P12927775116135263700.Spec := by
  intro n
  simp only [A035075, Nat.add_sub_cancel]

end A035075

/-! ## A035075.P2038943256298112961

`sqrt(A067478(n+2))`
-/

namespace A035075.P2038943256298112961
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A067478 (n + 2) : ℝ)

end

end A035075.P2038943256298112961

namespace A035075

/-- `sqrt(A067478(n+2))` -/
def P2038943256298112961.Spec : Prop :=
  ∀ n, P2038943256298112961.a n = (A035075 (n + 1) : ℝ)

end A035075

/-! ## A035075.P6819971027991042146

`root(A067478(n+2), A000034(2*n+1))`
-/

namespace A035075.P6819971027991042146
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067478 (n + 2) : ℝ) ^ (1 / (A000034 (2 * n + 1) : ℝ))

end

end A035075.P6819971027991042146

namespace A035075

/-- `root(A067478(n+2), A000034(2*n+1))` -/
def P6819971027991042146.Spec : Prop :=
  ∀ n, P6819971027991042146.a n = (A035075 (n + 1) : ℝ)

end A035075

/-! ## A035075.P4898116383404708464

`root(A067478(n+2), A020639(2*(n+1)))`
-/

namespace A035075.P4898116383404708464
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067478 (n + 2) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A035075.P4898116383404708464

namespace A035075

/-- `root(A067478(n+2), A020639(2*(n+1)))` -/
def P4898116383404708464.Spec : Prop :=
  ∀ n, P4898116383404708464.a n = (A035075 (n + 1) : ℝ)

end A035075

/-!
# A035076: a(n) is root of square starting with digit 9: first term of runs.

The programs for A035076, the canonical program `A035076.P2077501592705010515` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035076 has offset 2).

The definition of A035076 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035076.P2077501592705010515

`ceil(sqrt(9*10^(n+2)))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A035076

/-- `ceil(sqrt(9*10^(n+2)))` -/
def P2077501592705010515.Spec : Prop :=
  ∀ n, P2077501592705010515.a n = A035076 (n + 2)

theorem P2077501592705010515.correct : P2077501592705010515.Spec := by
  intro n
  simp only [A035076, Nat.add_sub_cancel]

end A035076

/-! ## A035076.P1960994393387266519

`floor(3*sqrt(abs(A002283(n+2)-3)))+1`
-/

namespace A035076.P1960994393387266519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * Real.sqrt (|A002283 (n + 2) - 3| : ℝ)⌋ + 1

end

end A035076.P1960994393387266519

namespace A035076

/-- `floor(3*sqrt(abs(A002283(n+2)-3)))+1` -/
def P1960994393387266519.Spec : Prop :=
  ∀ n, P1960994393387266519.a n = A035076 (n + 2)

end A035076

/-! ## A035076.P5703558478840913270

`sqrt(A067479(n+3))`
-/

namespace A035076.P5703558478840913270
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A067479 (n + 3) : ℝ)

end

end A035076.P5703558478840913270

namespace A035076

/-- `sqrt(A067479(n+3))` -/
def P5703558478840913270.Spec : Prop :=
  ∀ n, P5703558478840913270.a n = (A035076 (n + 2) : ℝ)

end A035076

/-! ## A035076.P9677473726222926882

`A000007(n+2)+ceil(sqrt(A063945(n+3)))`
-/

namespace A035076.P9677473726222926882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 2) + ⌈Real.sqrt (A063945 (n + 3) : ℝ)⌉

end

end A035076.P9677473726222926882

namespace A035076

/-- `A000007(n+2)+ceil(sqrt(A063945(n+3)))` -/
def P9677473726222926882.Spec : Prop :=
  ∀ n, P9677473726222926882.a n = A035076 (n + 2)

end A035076

/-! ## A035076.P10419707193350542864

`A235127(2*n+5)+ceil(sqrt(A063945(n+3)))`
-/

namespace A035076.P10419707193350542864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (2 * n + 5) + ⌈Real.sqrt (A063945 (n + 3) : ℝ)⌉

end

end A035076.P10419707193350542864

namespace A035076

/-- `A235127(2*n+5)+ceil(sqrt(A063945(n+3)))` -/
def P10419707193350542864.Spec : Prop :=
  ∀ n, P10419707193350542864.a n = A035076 (n + 2)

end A035076

/-!
# A035077: Denominators of partial sums of Bernoulli numbers B_{2n} = A000367/A002445.

The programs for A035077, there is no canonical definition to state claims against.
-/

/-! ## A035077.P13130192225752821861

`A172031(2*n+1)/A040001(n)`
-/

namespace A035077.P13130192225752821861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172031 (2 * n + 1) : ℚ) / (A040001 n : ℚ)

end

end A035077.P13130192225752821861

/-! ## A035077.P14580097062168001119

`A172031(2*n+1)/A020639(A063994(n+1))`
-/

namespace A035077.P14580097062168001119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172031 (2 * n + 1) : ℚ) / (A020639 (A063994 (n + 1)).toNat : ℚ)

end

end A035077.P14580097062168001119

/-! ## A035077.P3170482390739996835

`A172031(2*n+1)/gcd(n, A020639(A000010(n+1)))`
-/

namespace A035077.P3170482390739996835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172031 (2 * n + 1) : ℚ) / (Int.gcd (n : ℤ) (A020639 (A000010 (n + 1)).toNat) : ℚ)

end

end A035077.P3170482390739996835

/-! ## A035077.P14607240821867845785

`A172031(2*n+1)/gcd(A020639(n+2), A172031(n+1))`
-/

namespace A035077.P14607240821867845785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172031 (2 * n + 1) : ℚ) / (Int.gcd (A020639 (n + 2)) (A172031 (n + 1)) : ℚ)

end

end A035077.P14607240821867845785

/-! ## A035077.P12387920104707920703

`A172031(A107453(2*(n+2))+2*n)`
-/

namespace A035077.P12387920104707920703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172031 (A107453 (2 * (n + 2)) + (2 * n : ℤ)).toNat

end

end A035077.P12387920104707920703

/-!
# A035078: Numerators of partial sums of Bernoulli numbers B_{2n} = A000367/A002445.

The programs for A035078, there is no canonical definition to state claims against.
-/

/-! ## A035078.P17949622400528564545

`A123578(A318626(n))+A089504(n+1)`
-/

namespace A035078.P17949622400528564545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A318626 n).toNat + A089504 (n + 1)

end

end A035078.P17949622400528564545

/-!
# A035079: Weigh transform of A007561.

The programs for A035079, there is no canonical definition to state claims against.
-/

/-! ## A035079.P6748465148180259793

`A111588(ceil(2^(n-1)))`
-/

namespace A035079.P6748465148180259793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111588 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A035079.P6748465148180259793

/-! ## A035079.P3425720760468455585

`A096182(A008930(n))`
-/

namespace A035079.P3425720760468455585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096182 (A008930 n).toNat

end

end A035079.P3425720760468455585

/-! ## A035079.P8502069205876405287

`A054404(2*(A307789(n)+1))`
-/

namespace A035079.P8502069205876405287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (2 * (A307789 n + 1)).toNat

end

end A035079.P8502069205876405287

/-! ## A035079.P8646766771170838131

`A111588(A011782(n))+A059995(n)`
-/

namespace A035079.P8646766771170838131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111588 (A011782 n).toNat + A059995 n

end

end A035079.P8646766771170838131

/-! ## A035079.P17892438119022718718

`A259206(n)-A014376(A294617(n))`
-/

namespace A035079.P17892438119022718718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259206 n - A014376 (A294617 n).toNat

end

end A035079.P17892438119022718718

/-!
# A035081: Number of increasing asymmetric rooted connected graphs where every block is a complete graph.

The programs for A035081, there is no canonical definition to state claims against.
-/

/-! ## A035081.P9156734919177566659

`A261960(A141627(n))+A052745(n)`
-/

namespace A035081.P9156734919177566659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261960 (A141627 n).toNat + A052745 n

end

end A035081.P9156734919177566659

/-! ## A035081.P17734354052457934434

`or(A008611(A052556(n)), A008930(n))`
-/

namespace A035081.P17734354052457934434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008611 (A052556 n).toNat) (A008930 n)

end

end A035081.P17734354052457934434

/-! ## A035081.P7878634543392426911

`or(A008611(A052556(n)), A036591(n))`
-/

namespace A035081.P7878634543392426911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008611 (A052556 n).toNat) (A036591 n)

end

end A035081.P7878634543392426911

/-!
# A035082: Number of rooted polygonal cacti (Husimi graphs) with n nodes.

The programs for A035082, there is no canonical definition to state claims against.
-/

/-! ## A035082.P467300878459290875

`A259361(A001088(n)+A000035(n))`
-/

namespace A035082.P467300878459290875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A001088 n + A000035 n).toNat

end

end A035082.P467300878459290875

/-! ## A035082.P1713407923100558330

`A259361(A037012(n)+A001088(n))`
-/

namespace A035082.P1713407923100558330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A037012 n + A001088 n).toNat

end

end A035082.P1713407923100558330

/-! ## A035082.P864055019476466832

`A259361(A228495(n)+A001088(n))`
-/

namespace A035082.P864055019476466832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A228495 n + A001088 n).toNat

end

end A035082.P864055019476466832

/-! ## A035082.P16909785080705141839

`A259361(A273190(n)+A001088(n))`
-/

namespace A035082.P16909785080705141839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A273190 n + A001088 n).toNat

end

end A035082.P16909785080705141839

/-! ## A035082.P18311857149992400271

`A000196(A001088(n)-A068106(n))`
-/

namespace A035082.P18311857149992400271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A001088 n - A068106 n).toNat

end

end A035082.P18311857149992400271

/-!
# A035083: DIK(b)-DIK[ 2 ](b)-b where b is A035082.

The programs for A035083, there is no canonical definition to state claims against.
-/

/-! ## A035083.P17755284099767632323

`A259361(A038385(n))+A111133(n)`
-/

namespace A035083.P17755284099767632323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A038385 n).toNat + A111133 n

end

end A035083.P17755284099767632323

/-! ## A035083.P11242419453607626839

`A166274(ceil(A166300(n+4)/A160664(n)))`
-/

namespace A035083.P11242419453607626839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166274 ⌈(A166300 (n + 4) : ℚ) / (A160664 n : ℚ)⌉.toNat

end

end A035083.P11242419453607626839

/-! ## A035083.P10947813668773918258

`floor((A289425(n+1)/8)²)`
-/

namespace A035083.P10947813668773918258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A289425 (n + 1) : ℚ) / 8) ^ 2⌋

end

end A035083.P10947813668773918258

/-! ## A035083.P11524856429798885450

`round(floor(Δ[γ*A321739(n)])/2)`
-/

namespace A035083.P11524856429798885450
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.eulerMascheroniConstant * (A321739 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((⌊f1 (n + 1) - f1 n⌋ : ℚ) / 2)

end

end A035083.P11524856429798885450

/-! ## A035083.P17029897044939565993

`A242736(A265581(n))`
-/

namespace A035083.P17029897044939565993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242736 (A265581 n).toNat

end

end A035083.P17029897044939565993

/-!
# A035084: BIK(b)-b where b is A035082.

The programs for A035084, there is no canonical definition to state claims against.
-/

/-! ## A035084.P712902987001701346

`A058386(n)-A067168(A000078(n))`
-/

namespace A035084.P712902987001701346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058386 n - A067168 ((A000078 n).toNat + 10)

end

end A035084.P712902987001701346

/-! ## A035084.P16733611013407817576

`A058386(n)-A067168(A035083(n))`
-/

namespace A035084.P16733611013407817576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058386 n - A067168 ((A035083 n).toNat + 10)

end

end A035084.P16733611013407817576

/-! ## A035084.P5570988341081076169

`A058386(n)-A185246(A001631(n))`
-/

namespace A035084.P5570988341081076169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058386 n - A185246 (A001631 n).toNat

end

end A035084.P5570988341081076169

/-! ## A035084.P11687577542998272238

`A058386(n)-A055641(A135139(n))`
-/

namespace A035084.P11687577542998272238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058386 n - A055641 (A135139 n).toNat

end

end A035084.P11687577542998272238

/-! ## A035084.P10800958509485074298

`A058386(n)-A235145(A030228(n))`
-/

namespace A035084.P10800958509485074298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058386 n - A235145 (A030228 n).toNat

end

end A035084.P10800958509485074298

/-!
# A035086: Number of increasing rooted polygonal cacti (Husimi graphs) with n nodes.

The programs for A035086, there is no canonical definition to state claims against.
-/

/-! ## A035086.P11925309384400867471

`A350893(∑[p?[ceil(3*n/2)]])`
-/

namespace A035086.P11925309384400867471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * ((n : ℚ) / 2)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350893 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A035086.P11925309384400867471

/-! ## A035086.P8821763878878824442

`abs(A218654(2^n*n!)-1)`
-/

namespace A035086.P8821763878878824442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A218654 (2 ^ n * Nat.factorial n) - 1|

end

end A035086.P8821763878878824442

/-!
# A035087: Number of labeled rooted polygonal cacti (Husimi graphs) with n nodes.

The programs for A035087, there is no canonical definition to state claims against.
-/

/-! ## A035087.P13151600850423881468

`(n+1)*A035088(n+1)`
-/

namespace A035087.P13151600850423881468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A035088 (n + 1)

end

end A035087.P13151600850423881468

/-! ## A035087.P4421240964744459307

`A035088(A077168(n))*A077168(n)`
-/

namespace A035087.P4421240964744459307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035088 (A077168 n).toNat * A077168 n

end

end A035087.P4421240964744459307

/-!
# A035088: Number of labeled polygonal cacti (Husimi graphs) with n nodes.

The programs for A035088, there is no canonical definition to state claims against.
-/

/-! ## A035088.P13247731889458584006

`A035087(A028310(n))/A028310(n)`
-/

namespace A035088.P13247731889458584006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035087 (A028310 n).toNat : ℚ) / (A028310 n : ℚ)

end

end A035088.P13247731889458584006

/-! ## A035088.P8841655165412483997

`A035087(A000007(n)+n)/(A000007(n)+n)`
-/

namespace A035088.P8841655165412483997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035087 (A000007 n + (n : ℤ)).toNat : ℚ) / (A000007 n + (n : ℤ) : ℚ)

end

end A035088.P8841655165412483997

/-! ## A035088.P16283462489503156659

`A384580(A100550(n))`
-/

namespace A035088.P16283462489503156659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384580 (A100550 n).toNat

end

end A035088.P16283462489503156659

/-!
# A035089: Smallest prime of form 2^n*k + 1.

The programs for A035089, there is no canonical definition to state claims against.
-/

/-! ## A035089.P10877536994545746028

`A000079(n)*A035050(n)+1`
-/

namespace A035089.P10877536994545746028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A035050 n + 1

end

end A035089.P10877536994545746028

/-! ## A035089.P13884492197764149854

`Δ[A000051(n)]*A035050(n)+1`
-/

namespace A035089.P13884492197764149854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A035050 n + 1

end

end A035089.P13884492197764149854

/-! ## A035089.P3033508303965825329

`Δ[A000225(n)]*A035050(n)+1`
-/

namespace A035089.P3033508303965825329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A035050 n + 1

end

end A035089.P3033508303965825329

/-! ## A035089.P6215247243880884101

`A057775(val(A035050(n), 2)+n)`
-/

namespace A035089.P6215247243880884101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057775 (SequenceMachineLib.valuation (A035050 n).toNat 2 + n)

end

end A035089.P6215247243880884101

/-!
# A035090: Non-palindromic squares which when written backwards remain square (and still have the same number of digits).

The programs for A035090, there is no canonical definition to state claims against.
-/

/-! ## A035090.P1816417278653358087

`A035123(n+1)²`
-/

namespace A035090.P1816417278653358087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035123 (n + 1) ^ 2

end

end A035090.P1816417278653358087

/-! ## A035090.P10851623888725348874

`A035123(A000027(n+1))^2`
-/

namespace A035090.P10851623888725348874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035123 (A000027 (n + 1)).toNat ^ 2

end

end A035090.P10851623888725348874

/-! ## A035090.P12735246498374669538

`∪[A140212(n+1), A284986(n+1)]²`
-/

namespace A035090.P12735246498374669538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A035090.P12735246498374669538

/-! ## A035090.P8641353454356263953

`A035123(n+1)^A020639(2*(n+2))`
-/

namespace A035090.P8641353454356263953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035123 (n + 1) : ℚ) ^ (A020639 (2 * (n + 2)) : ℤ)

end

end A035090.P8641353454356263953

/-! ## A035090.P3726905486515751546

`A035123(A000027(n+1))*A035123(n+1)`
-/

namespace A035090.P3726905486515751546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035123 (A000027 (n + 1)).toNat * A035123 (n + 1)

end

end A035090.P3726905486515751546

/-! ## A035090.P10192948547093247662

`A035123(A008619(2*n))*A035123(n+1)`
-/

namespace A035090.P10192948547093247662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035123 (A008619 (2 * n)).toNat * A035123 (n + 1)

end

end A035090.P10192948547093247662

/-! ## A035090.P4515601225306864699

`A035123(n+1)^A000005(A090798(n+1))`
-/

namespace A035090.P4515601225306864699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035123 (n + 1) : ℚ) ^ (A000005 (A090798 (n + 1)).toNat : ℤ)

end

end A035090.P4515601225306864699

/-! ## A035090.P15799711477891559923

`A035123(n+1)^A000005(A023569(n+3))`
-/

namespace A035090.P15799711477891559923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035123 (n + 1) : ℚ) ^ (A000005 (A023569 (n + 3)).toNat : ℤ)

end

end A035090.P15799711477891559923

/-! ## A035090.P17171377287311690664

`A035123(gcd(n+1, A000290(n+1)))*A035123(n+1)`
-/

namespace A035090.P17171377287311690664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035123 (Int.gcd (n + 1 : ℤ) (A000290 (n + 1))) * A035123 (n + 1)

end

end A035090.P17171377287311690664

/-! ## A035090.P18254364145866035774

`∩[A033294(n+1), A161902(n+1)]`
-/

namespace A035090.P18254364145866035774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035090.P18254364145866035774

/-! ## A035090.P2367523534807873999

`∩[A110811(n+1), A161902(n+1)]`
-/

namespace A035090.P2367523534807873999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035090.P2367523534807873999

/-! ## A035090.P8698669113525417559

`A035123(n+1)^A000005(A030460(n+1))`
-/

namespace A035090.P8698669113525417559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035123 (n + 1) : ℚ) ^ (A000005 (A030460 (n + 1)).toNat : ℤ)

end

end A035090.P8698669113525417559

/-! ## A035090.P14606151016501300736

`∩[A033294(n+1), A062917(n+1)]`
-/

namespace A035090.P14606151016501300736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035090.P14606151016501300736

/-! ## A035090.P4063985676792945645

`∩[A061457(n+1), A062917(n+1)]`
-/

namespace A035090.P4063985676792945645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035090.P4063985676792945645

/-! ## A035090.P14883916737886667099

`∩[A062917(n+1), A110811(n+1)]`
-/

namespace A035090.P14883916737886667099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035090.P14883916737886667099

/-! ## A035090.P6620166137189515165

`∩[A062917(n+1), A115690(n+1)]`
-/

namespace A035090.P6620166137189515165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035090.P6620166137189515165

/-! ## A035090.P2012655580788902270

`∩[A062917(n+1), A161902(n+1)]`
-/

namespace A035090.P2012655580788902270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035090.P2012655580788902270

/-! ## A035090.P6436141326090539693

`A035123(n+1)^A000005(A125256(n+2))`
-/

namespace A035090.P6436141326090539693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035123 (n + 1) : ℚ) ^ (A000005 (A125256 (n + 2)).toNat : ℤ)

end

end A035090.P6436141326090539693

/-! ## A035090.P16822343218382958780

`∩[A033294(n+1), A070760(n+1)]`
-/

namespace A035090.P16822343218382958780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035090.P16822343218382958780

/-! ## A035090.P18355373208914081806

`∩[A070760(n+1), A110811(n+1)]`
-/

namespace A035090.P18355373208914081806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035090.P18355373208914081806

/-!
# A035091: Smallest prime == 1 mod (n^2).

The programs for A035091, there is no canonical definition to state claims against.
-/

/-! ## A035091.P14204206042857541789

`(n+1)²*A035092(n+1)+1`
-/

namespace A035091.P14204206042857541789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A035092 (n + 1) + 1

end

end A035091.P14204206042857541789

/-! ## A035091.P14718133340999741361

`A034694((n+1)²)`
-/

namespace A035091.P14718133340999741361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 ((n + 1) ^ 2)

end

end A035091.P14718133340999741361

/-! ## A035091.P2965700373197365620

`p?[A034694(record[(n-1)²])]`
-/

namespace A035091.P2965700373197365620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A035091.P2965700373197365620

/-! ## A035091.P18341931024689151372

`p?[A034694(∑[2*n+1])]`
-/

namespace A035091.P18341931024689151372
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A035091.P18341931024689151372

/-! ## A035091.P3787280867974784671

`∏{d}[A034694(A000290(n+1)), #]`
-/

namespace A035091.P3787280867974784671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A000290 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A035091.P3787280867974784671

/-! ## A035091.P1964337730097380343

`A086507(A066043((n+1)²))`
-/

namespace A035091.P1964337730097380343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086507 (A066043 ((n + 1) ^ 2)).toNat

end

end A035091.P1964337730097380343

/-! ## A035091.P16789309327714498263

`A086507((n+1)*A066043(n+1))`
-/

namespace A035091.P16789309327714498263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086507 ((n + 1 : ℤ) * A066043 (n + 1)).toNat

end

end A035091.P16789309327714498263

/-! ## A035091.P15628881679980297537

`A000040(A391765((n+1)²))`
-/

namespace A035091.P15628881679980297537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A391765 ((n + 1) ^ 2)).toNat

end

end A035091.P15628881679980297537

/-! ## A035091.P17173848172236529774

`A006530(A034694(xor(n, -1)²))`
-/

namespace A035091.P17173848172236529774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A034694 (Int.xor (n : ℤ) (-1) ^ 2).toNat).toNat

end

end A035091.P17173848172236529774

/-! ## A035091.P17317953207668700121

`A006530(A034694(record[(1-n)²]))`
-/

namespace A035091.P17317953207668700121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A034694 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A035091.P17317953207668700121

/-!
# A035092: Smallest k such that (n^2)*k + 1 is prime.

The programs for A035092, there is no canonical definition to state claims against.
-/

/-! ## A035092.P9501079032085512243

`ceil(A035091(n+1)/A007491(n+1))`
-/

namespace A035092.P9501079032085512243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035091 (n + 1) : ℚ) / (A007491 (n + 1) : ℚ)⌉

end

end A035092.P9501079032085512243

/-! ## A035092.P11000306310859994600

`A034693((n+1)²)`
-/

namespace A035092.P11000306310859994600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 ((n + 1) ^ 2)

end

end A035092.P11000306310859994600

/-! ## A035092.P8758585744191309167

`A034693((n+1)^2)%48`
-/

namespace A035092.P8758585744191309167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034693 ((n + 1) ^ 2)) 48

end

end A035092.P8758585744191309167

/-! ## A035092.P4433622568687171932

`or(char[1], A034693(∑[2*n+1]))`
-/

namespace A035092.P4433622568687171932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A034693 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A035092.P4433622568687171932

/-! ## A035092.P12326429281524342169

`A000027(A034693((n+1)^2))`
-/

namespace A035092.P12326429281524342169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A034693 ((n + 1) ^ 2)).toNat

end

end A035092.P12326429281524342169

/-! ## A035092.P13940245175297190683

`A130446(A034693((n+1)*(n+1)))`
-/

namespace A035092.P13940245175297190683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A034693 ((n + 1) * (n + 1))).toNat

end

end A035092.P13940245175297190683

/-! ## A035092.P13725492764630049379

`∑{d}[A034693((n+1)^2), A000010(#)]`
-/

namespace A035092.P13725492764630049379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A035092.P13725492764630049379

/-! ## A035092.P17103436859293418977

`A026741(2*A034693(∑[2*n+1]))`
-/

namespace A035092.P17103436859293418977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (2 * A034693 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A035092.P17103436859293418977

/-! ## A035092.P8382150200023324063

`A034693((n+1)^2)/A277160(n)!`
-/

namespace A035092.P8382150200023324063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034693 ((n + 1) ^ 2) : ℚ) / (Nat.factorial (A277160 n).toNat : ℚ)

end

end A035092.P8382150200023324063

/-! ## A035092.P9347779125526625440

`A025480(2*A034693((n+1)*(n+1)))`
-/

namespace A035092.P9347779125526625440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (2 * A034693 ((n + 1) * (n + 1))).toNat

end

end A035092.P9347779125526625440

/-! ## A035092.P5177890129006079069

`A034693((n+1)^2)+A000035(2*n)`
-/

namespace A035092.P5177890129006079069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 ((n + 1) ^ 2) + A000035 (2 * n)

end

end A035092.P5177890129006079069

/-! ## A035092.P2910329828813693687

`A000001(A000040(n+1))*A034693((n+1)^2)`
-/

namespace A035092.P2910329828813693687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A000040 (n + 1)).toNat * A034693 ((n + 1) ^ 2)

end

end A035092.P2910329828813693687

/-!
# A035094: Smallest prime of form (n!)*k + 1.

The programs for A035094, there is no canonical definition to state claims against.
-/

/-! ## A035094.P5365103685420852124

`A000142(n+1)*A035093(n+1)+1`
-/

namespace A035094.P5365103685420852124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A035093 (n + 1) + 1

end

end A035094.P5365103685420852124

/-! ## A035094.P5386410474319218408

`A034694((n+1)!)`
-/

namespace A035094.P5386410474319218408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (Nat.factorial (n + 1))

end

end A035094.P5386410474319218408

/-! ## A035094.P16089293476209488625

`A086507((n+1)!)`
-/

namespace A035094.P16089293476209488625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086507 (Nat.factorial (n + 1))

end

end A035094.P16089293476209488625

/-!
# A035095: Smallest prime congruent to 1 (mod prime(n)).

The programs for A035095, there is no canonical definition to state claims against.
-/

/-! ## A035095.P1386948432239062280

`1+A035096(n+1)*A000040(n+1)`
-/

namespace A035095.P1386948432239062280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A035096 (n + 1) * A000040 (n + 1)

end

end A035095.P1386948432239062280

/-! ## A035095.P3378311329992164358

`A070846(A006005(n+1))`
-/

namespace A035095.P3378311329992164358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (A006005 (n + 1)).toNat

end

end A035095.P3378311329992164358

/-! ## A035095.P4836435610580787689

`A070846(record[A006530(2*n+1)])`
-/

namespace A035095.P4836435610580787689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A035095.P4836435610580787689

/-! ## A035095.P9610811334354534685

`A070846(record[A020639(2*n+1)])`
-/

namespace A035095.P9610811334354534685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A035095.P9610811334354534685

/-! ## A035095.P7299693792446171168

`A070846(A000040(n+1)-A000007(n))`
-/

namespace A035095.P7299693792446171168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (A000040 (n + 1) - A000007 n).toNat

end

end A035095.P7299693792446171168

/-! ## A035095.P12635396729670970129

`A070846(A000040(n+1))-A033322(2*n+1)`
-/

namespace A035095.P12635396729670970129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (A000040 (n + 1)).toNat - A033322 (2 * n + 1)

end

end A035095.P12635396729670970129

/-! ## A035095.P3301939466718161996

`A070846(A075643(n+2))`
-/

namespace A035095.P3301939466718161996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (A075643 (n + 2)).toNat

end

end A035095.P3301939466718161996

/-! ## A035095.P4669843854803343017

`A341845(record[A006530(2*n+1)])`
-/

namespace A035095.P4669843854803343017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341845 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A035095.P4669843854803343017

/-! ## A035095.P1404616551506396712

`A341845(record[A020639(2*n+1)])`
-/

namespace A035095.P1404616551506396712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341845 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A035095.P1404616551506396712

/-! ## A035095.P4633854554739533181

`A034694(p?[comp[n²]])`
-/

namespace A035095.P4633854554739533181
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A035095.P4633854554739533181

/-! ## A035095.P5387642222379224171

`A034694(A000040(n+1))`
-/

namespace A035095.P5387642222379224171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A000040 (n + 1)).toNat

end

end A035095.P5387642222379224171

/-! ## A035095.P8734167035794282106

`A034694(A008578(n+2))`
-/

namespace A035095.P8734167035794282106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A008578 (n + 2)).toNat

end

end A035095.P8734167035794282106

/-! ## A035095.P8128256620112167386

`A034694(A182986(n+2))`
-/

namespace A035095.P8128256620112167386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A182986 (n + 2)).toNat

end

end A035095.P8128256620112167386

/-! ## A035095.P10164452810494709565

`A034694(record[p?[A029579(n)]])`
-/

namespace A035095.P10164452810494709565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A035095.P10164452810494709565

/-! ## A035095.P15376159743790915806

`A034694(record[p?[A141310(n)]])`
-/

namespace A035095.P15376159743790915806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A035095.P15376159743790915806

/-! ## A035095.P14394597588477276963

`A034694(∑[A054541(n+1)])`
-/

namespace A035095.P14394597588477276963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A035095.P14394597588477276963

/-! ## A035095.P6814970037818657058

`A034694(record[A006530(n+2)])`
-/

namespace A035095.P6814970037818657058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A035095.P6814970037818657058

/-! ## A035095.P445434932393259642

`A034694(record[A020639(n+2)])`
-/

namespace A035095.P445434932393259642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A035095.P445434932393259642

/-! ## A035095.P2763334074679264945

`A061026(record[A006530(n+2)])`
-/

namespace A035095.P2763334074679264945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A035095.P2763334074679264945

/-! ## A035095.P7074145551393894811

`A061026(record[A020639(n+2)])`
-/

namespace A035095.P7074145551393894811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A035095.P7074145551393894811

/-!
# A035096: a(n) is the smallest k such that prime(n)*k+1 is prime.

The programs for A035096, there is no canonical definition to state claims against.
-/

/-! ## A035096.P9997654297276089469

`(A035095(n+1)-1)/A000040(n+1)`
-/

namespace A035096.P9997654297276089469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035095 (n + 1) - 1 : ℚ) / (A000040 (n + 1) : ℚ)

end

end A035096.P9997654297276089469

/-! ## A035096.P17268446270340812454

`floor(A035095(n+1)/A000040(n+1))`
-/

namespace A035096.P17268446270340812454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A035095 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌋

end

end A035096.P17268446270340812454

/-! ## A035096.P8814979495301990988

`A034693(Δ[A007504(n)])`
-/

namespace A035096.P8814979495301990988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (f1 (n + 1) - f1 n).toNat

end

end A035096.P8814979495301990988

/-! ## A035096.P16087913359595817649

`A034693(A000040(n+1))`
-/

namespace A035096.P16087913359595817649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A000040 (n + 1)).toNat

end

end A035096.P16087913359595817649

/-! ## A035096.P5718671149594980927

`A034693(A006005(n+1))`
-/

namespace A035096.P5718671149594980927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A006005 (n + 1)).toNat

end

end A035096.P5718671149594980927

/-! ## A035096.P11931347035871355576

`A034693(A008578(n+2))`
-/

namespace A035096.P11931347035871355576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A008578 (n + 2)).toNat

end

end A035096.P11931347035871355576

/-! ## A035096.P10908552636122672570

`A034693(A075643(n+2))`
-/

namespace A035096.P10908552636122672570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A075643 (n + 2)).toNat

end

end A035096.P10908552636122672570

/-! ## A035096.P10400076731039914722

`A034693(A182986(n+2))`
-/

namespace A035096.P10400076731039914722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A182986 (n + 2)).toNat

end

end A035096.P10400076731039914722

/-! ## A035096.P10238880677464703019

`A034693(record[A006530(n+2)])`
-/

namespace A035096.P10238880677464703019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A035096.P10238880677464703019

/-! ## A035096.P11611841440144218079

`A034693(record[A020639(n+2)])`
-/

namespace A035096.P11611841440144218079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A035096.P11611841440144218079

/-! ## A035096.P15110239398752863332

`A034693(A006093(n+1)+1)`
-/

namespace A035096.P15110239398752863332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A006093 (n + 1) + 1).toNat

end

end A035096.P15110239398752863332

/-! ## A035096.P14733420360595187622

`A034693(A008864(n+1)-1)`
-/

namespace A035096.P14733420360595187622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A008864 (n + 1) - 1).toNat

end

end A035096.P14733420360595187622

/-! ## A035096.P14512372797379137985

`A034693(A028815(n+1)-1)`
-/

namespace A035096.P14512372797379137985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A028815 (n + 1) - 1).toNat

end

end A035096.P14512372797379137985

/-! ## A035096.P7419591054795533410

`A034693(A299763(n+2)-1)`
-/

namespace A035096.P7419591054795533410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A299763 (n + 2) - 1).toNat

end

end A035096.P7419591054795533410

/-! ## A035096.P17451326713010363832

`A034693(A067747(2*n+1))`
-/

namespace A035096.P17451326713010363832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A067747 (2 * n + 1)).toNat

end

end A035096.P17451326713010363832

/-! ## A035096.P9052217985280577126

`A034693(p?[comp[n²]])`
-/

namespace A035096.P9052217985280577126
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A035096.P9052217985280577126

/-! ## A035096.P17155122073184578398

`A072342(A004087(n+1))`
-/

namespace A035096.P17155122073184578398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072342 (A004087 (n + 1)).toNat

end

end A035096.P17155122073184578398

/-! ## A035096.P8036340613938062782

`A067005(eq[1, A003415(n)])`
-/

namespace A035096.P8036340613938062782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035096.P8036340613938062782

/-! ## A035096.P6024025997531815164

`A034693(record[A014963(n+2)])`
-/

namespace A035096.P6024025997531815164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A035096.P6024025997531815164

/-!
# A035097: Related to 9-factorial numbers A045756.

The programs for A035097, there is no canonical definition to state claims against.
-/

/-! ## A035097.P4439706034260784115

`9^n*A045756(n+1)/(n+1)!`
-/

namespace A035097.P4439706034260784115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 ^ n : ℤ) * A045756 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A035097.P4439706034260784115

/-! ## A035097.P13655400201188591785

`9*a(n-1)*(9*n+1)/(n+1)` with `a(0)=1`
-/

namespace A035097.P13655400201188591785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  9 * a (n - 1) * ((9 * n + 1 : ℚ) / (n + 1 : ℚ))

end

end A035097.P13655400201188591785

/-! ## A035097.P8940879257844441376

`A298799(n+1)/A000984(n)*A098658(n)/3`
-/

namespace A035097.P8940879257844441376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298799 (n + 1) : ℚ) / (A000984 n : ℚ) * ((A098658 n : ℚ) / 3)

end

end A035097.P8940879257844441376

/-! ## A035097.P8228513020028987065

`A000244(n)²/A000244(n+1)*A298799(n+1)`
-/

namespace A035097.P8228513020028987065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n ^ 2 : ℚ) / (A000244 (n + 1) : ℚ) * (A298799 (n + 1) : ℚ)

end

end A035097.P8228513020028987065

/-! ## A035097.P6912559256648952995

`A000244(2*n)/A000244(n+1)*A298799(n+1)`
-/

namespace A035097.P6912559256648952995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 (2 * n) : ℚ) / (A000244 (n + 1) : ℚ) * (A298799 (n + 1) : ℚ)

end

end A035097.P6912559256648952995

/-! ## A035097.P8130343228787747931

`A035024(n+1)/9`
-/

namespace A035097.P8130343228787747931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035024 (n + 1) : ℚ) / 9

end

end A035097.P8130343228787747931

/-! ## A035097.P5141327851538411867

`Δ[∑[A035024(n)]/9]`
-/

namespace A035097.P5141327851538411867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035024 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035097.P5141327851538411867

/-! ## A035097.P1828889597756122920

`Δ[∑[3^n*A298799(n)]/9]`
-/

namespace A035097.P1828889597756122920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A298799 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035097.P1828889597756122920

/-! ## A035097.P17672025724694103070

`record[ratio[A035024(A051340(n))]]`
-/

namespace A035097.P17672025724694103070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035024 (A051340 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035097.P17672025724694103070

/-!
# A035098: Near-Bell numbers: partitions of an n-multiset with multiplicities 1, 1, 1, ..., 1, 2.

The programs for A035098, there is no canonical definition to state claims against.
-/

/-! ## A035098.P12264216876973916257

`A346500(∑[n+1]+1)`
-/

namespace A035098.P12264216876973916257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A035098.P12264216876973916257

/-! ## A035098.P15823983811220881933

`A346426(∑[n+2]-abs(1-n))`
-/

namespace A035098.P15823983811220881933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - |1 - (n : ℤ)|).toNat

end

end A035098.P15823983811220881933

/-! ## A035098.P8372295180954462279

`record[A346500(n)/A131843(n)]`
-/

namespace A035098.P8372295180954462279
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346500 n : ℚ) / (A131843 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035098.P8372295180954462279

/-! ## A035098.P5059348172356617356

`record[gcd(A117316(n), A346500(n))]`
-/

namespace A035098.P5059348172356617356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117316 n) (A346500 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035098.P5059348172356617356

/-! ## A035098.P15509635604437177743

`record[A346500(n)/A105809(n+1)]`
-/

namespace A035098.P15509635604437177743
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346500 n : ℚ) / (A105809 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035098.P15509635604437177743

/-! ## A035098.P10329841828909882491

`gcd(floor(1/(n+1)), A346500(A034856(n+1)))`
-/

namespace A035098.P10329841828909882491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A346500 (A034856 (n + 1)).toNat)

end

end A035098.P10329841828909882491

/-! ## A035098.P16351756593479600374

`or(A000007(n), A346500(A000124(n+1)))`
-/

namespace A035098.P16351756593479600374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A346500 (A000124 (n + 1)).toNat)

end

end A035098.P16351756593479600374

/-! ## A035098.P16685698936740207749

`A007318(A000096(n))*A346500(A034856(n+1))`
-/

namespace A035098.P16685698936740207749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A346500 (A034856 (n + 1)).toNat

end

end A035098.P16685698936740207749

/-! ## A035098.P15690305113343845525

`A007318(A000217(n))*A346500(A034856(n+1))`
-/

namespace A035098.P15690305113343845525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A346500 (A034856 (n + 1)).toNat

end

end A035098.P15690305113343845525

/-! ## A035098.P4074324541562884838

`record[A346426(n+2)-A056862(n+2)]`
-/

namespace A035098.P4074324541562884838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (n + 2) - A056862 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035098.P4074324541562884838

