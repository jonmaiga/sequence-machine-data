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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C026

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A085500: Indices of primes where nondecreasing gaps occur.

The programs for A085500, there is no canonical definition to state claims against.
-/

/-! ## A085500.P14904604765590013998

`∑[A348178(n+1)]`
-/

namespace A085500.P14904604765590013998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085500.P14904604765590013998

/-! ## A085500.P15045387228521715091

`a(n-1)+A348178(n+1)+A000038(n)` with `a(0)=1`
-/

namespace A085500.P15045387228521715091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A348178 (n + 1) + A000038 n)

end

end A085500.P15045387228521715091

/-! ## A085500.P5513541638368636774

`a(n-1)-(A000007(n)-A348178(n+1))` with `a(0)=1`
-/

namespace A085500.P5513541638368636774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A000007 n - A348178 (n + 1))

end

end A085500.P5513541638368636774

/-! ## A085500.P5123278053799243625

`a(n-1)-(A151909(n)-A348178(n+1))` with `a(0)=1`
-/

namespace A085500.P5123278053799243625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A151909 n - A348178 (n + 1))

end

end A085500.P5123278053799243625

/-! ## A085500.P8609187014151441068

`a(n-1)+A348178(n+1)+A029833(2*(n+1))` with `a(0)=1`
-/

namespace A085500.P8609187014151441068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A348178 (n + 1) + A029833 (2 * (n + 1)))

end

end A085500.P8609187014151441068

/-!
# A085501: Number of prime powers p^k <= n that are not prime (k = 0 or k > 1).

The programs for A085501, the canonical program `A085501.P16148507473406452850` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085501 has offset 1).

The definition of A085501 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085501.P16148507473406452850

`∑[round(n/∏{p}[n+1, #+n])]+1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A085501

/-- `∑[round(n/∏{p}[n+1, #+n])]+1` -/
def P16148507473406452850.Spec : Prop :=
  ∀ n, P16148507473406452850.a n = A085501 (n + 1)

theorem P16148507473406452850.correct : P16148507473406452850.Spec := by
  intro n
  simp only [A085501, Nat.add_sub_cancel]

end A085501

/-! ## A085501.P9676845855820644860

`A069637(n+1)+1`
-/

namespace A085501.P9676845855820644860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069637 (n + 1) + 1

end

end A085501.P9676845855820644860

namespace A085501

/-- `A069637(n+1)+1` -/
def P9676845855820644860.Spec : Prop :=
  ∀ n, P9676845855820644860.a n = A085501 (n + 1)

end A085501

/-! ## A085501.P18006890290091638580

`∑[char[A249435(n+1)]]`
-/

namespace A085501.P18006890290091638580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249435 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085501.P18006890290091638580

namespace A085501

/-- `∑[char[A249435(n+1)]]` -/
def P18006890290091638580.Spec : Prop :=
  ∀ n, (P18006890290091638580.a n : ℤ) = A085501 (n + 1)

end A085501

/-! ## A085501.P221721070282851893

`∑[A268340(n+1)]+1`
-/

namespace A085501.P221721070282851893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A085501.P221721070282851893

namespace A085501

/-- `∑[A268340(n+1)]+1` -/
def P221721070282851893.Spec : Prop :=
  ∀ n, P221721070282851893.a n = A085501 (n + 1)

end A085501

/-! ## A085501.P1151976620258307434

`1-A085972(n+1)+n`
-/

namespace A085501.P1151976620258307434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A085972 (n + 1) + (n : ℤ)

end

end A085501.P1151976620258307434

namespace A085501

/-- `1-A085972(n+1)+n` -/
def P1151976620258307434.Spec : Prop :=
  ∀ n, P1151976620258307434.a n = A085501 (n + 1)

end A085501

/-! ## A085501.P7466853061820179860

`∑[char[A025475(n+1)-1]]`
-/

namespace A085501.P7466853061820179860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085501.P7466853061820179860

namespace A085501

/-- `∑[char[A025475(n+1)-1]]` -/
def P7466853061820179860.Spec : Prop :=
  ∀ n, (P7466853061820179860.a n : ℤ) = A085501 (n + 1)

end A085501

/-! ## A085501.P13507841605457998957

`∑[char[A133790(n+1)-1]]`
-/

namespace A085501.P13507841605457998957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133790 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085501.P13507841605457998957

namespace A085501

/-- `∑[char[A133790(n+1)-1]]` -/
def P13507841605457998957.Spec : Prop :=
  ∀ n, (P13507841605457998957.a n : ℤ) = A085501 (n + 1)

end A085501

/-! ## A085501.P11567716777519326594

`∑[∑{e}[A182936(n+1), #]]+1`
-/

namespace A085501.P11567716777519326594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182936 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A085501.P11567716777519326594

namespace A085501

/-- `∑[∑{e}[A182936(n+1), #]]+1` -/
def P11567716777519326594.Spec : Prop :=
  ∀ n, (P11567716777519326594.a n : ℤ) = A085501 (n + 1)

end A085501

/-! ## A085501.P9919725501368628224

`∑[A069513(A048671(n+1))]+1`
-/

namespace A085501.P9919725501368628224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (A048671 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A085501.P9919725501368628224

namespace A085501

/-- `∑[A069513(A048671(n+1))]+1` -/
def P9919725501368628224.Spec : Prop :=
  ∀ n, P9919725501368628224.a n = A085501 (n + 1)

end A085501

/-! ## A085501.P8593599841891915014

`A065515(n+1)-A000720(n+1)`
-/

namespace A085501.P8593599841891915014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (n + 1) - A000720 (n + 1)

end

end A085501.P8593599841891915014

namespace A085501

/-- `A065515(n+1)-A000720(n+1)` -/
def P8593599841891915014.Spec : Prop :=
  ∀ n, P8593599841891915014.a n = A085501 (n + 1)

end A085501

/-! ## A085501.P11345075230799192971

`A062298(n+1)-A085970(n+1)`
-/

namespace A085501.P11345075230799192971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) - A085970 (n + 1)

end

end A085501.P11345075230799192971

namespace A085501

/-- `A062298(n+1)-A085970(n+1)` -/
def P11345075230799192971.Spec : Prop :=
  ∀ n, P11345075230799192971.a n = A085501 (n + 1)

end A085501

/-! ## A085501.P13695714650873849850

`∑[A008683(2*A073184(n+1))²]`
-/

namespace A085501.P13695714650873849850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * A073184 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085501.P13695714650873849850

namespace A085501

/-- `∑[A008683(2*A073184(n+1))²]` -/
def P13695714650873849850.Spec : Prop :=
  ∀ n, P13695714650873849850.a n = A085501 (n + 1)

end A085501

/-! ## A085501.P7823805622611735890

`∑[C(A132349(n+1), A032741(n+1))]`
-/

namespace A085501.P7823805622611735890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A132349 (n + 1)).toNat (A032741 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085501.P7823805622611735890

namespace A085501

/-- `∑[C(A132349(n+1), A032741(n+1))]` -/
def P7823805622611735890.Spec : Prop :=
  ∀ n, (P7823805622611735890.a n : ℤ) = A085501 (n + 1)

end A085501

/-! ## A085501.P5072206054557112433

`∑[C(A182936(n+1), A008472(n+1))]`
-/

namespace A085501.P5072206054557112433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A182936 (n + 1)).toNat (A008472 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085501.P5072206054557112433

namespace A085501

/-- `∑[C(A182936(n+1), A008472(n+1))]` -/
def P5072206054557112433.Spec : Prop :=
  ∀ n, (P5072206054557112433.a n : ℤ) = A085501 (n + 1)

end A085501

/-! ## A085501.P15872225662868011910

`A025528(n+1)+1-A000720(n+1)`
-/

namespace A085501.P15872225662868011910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (n + 1) + (1 - A000720 (n + 1))

end

end A085501.P15872225662868011910

namespace A085501

/-- `A025528(n+1)+1-A000720(n+1)` -/
def P15872225662868011910.Spec : Prop :=
  ∀ n, P15872225662868011910.a n = A085501 (n + 1)

end A085501

/-! ## A085501.P16707110498872002505

`A065515(n+1)+1-A036234(n+1)`
-/

namespace A085501.P16707110498872002505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (n + 1) + (1 - A036234 (n + 1))

end

end A085501.P16707110498872002505

namespace A085501

/-- `A065515(n+1)+1-A036234(n+1)` -/
def P16707110498872002505.Spec : Prop :=
  ∀ n, P16707110498872002505.a n = A085501 (n + 1)

end A085501

/-! ## A085501.P17741602023441966376

`A065855(n+1)+1-A085970(n+1)`
-/

namespace A085501.P17741602023441966376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (n + 1) + (1 - A085970 (n + 1))

end

end A085501.P17741602023441966376

namespace A085501

/-- `A065855(n+1)+1-A085970(n+1)` -/
def P17741602023441966376.Spec : Prop :=
  ∀ n, P17741602023441966376.a n = A085501 (n + 1)

end A085501

/-! ## A085501.P2212032555801681587

`∑[C(A063962(n+1), A001221(n+1)²)]`
-/

namespace A085501.P2212032555801681587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A063962 (n + 1)).toNat (A001221 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085501.P2212032555801681587

namespace A085501

/-- `∑[C(A063962(n+1), A001221(n+1)²)]` -/
def P2212032555801681587.Spec : Prop :=
  ∀ n, (P2212032555801681587.a n : ℤ) = A085501 (n + 1)

end A085501

/-! ## A085501.P9542685635678315797

`∑[A318505(n+1)%A014963(n+1)]+1`
-/

namespace A085501.P9542685635678315797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318505 (n + 1)) (A014963 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A085501.P9542685635678315797

namespace A085501

/-- `∑[A318505(n+1)%A014963(n+1)]+1` -/
def P9542685635678315797.Spec : Prop :=
  ∀ n, P9542685635678315797.a n = A085501 (n + 1)

end A085501

/-! ## A085501.P3463086207296337465

`∑[A001221(A014963(n+1)²%(n+2))]+1`
-/

namespace A085501.P3463086207296337465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.tmod (A014963 (n + 1) ^ 2) (n + 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A085501.P3463086207296337465

namespace A085501

/-- `∑[A001221(A014963(n+1)²%(n+2))]+1` -/
def P3463086207296337465.Spec : Prop :=
  ∀ n, P3463086207296337465.a n = A085501 (n + 1)

end A085501

/-!
# A085502: Number of (unordered) ways of making change for n dollars using coins of denominations 1, 5, 10, 25, 50 and 100.

The programs for A085502, the canonical program `A085502.P702599353704571704` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085502 has offset 0).

The definition of A085502 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085502.P702599353704571704

`(n+1)*(80*n^4+310*n^3+362*n²+121*n+6)/6`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A085502

/-- `(n+1)*(80*n^4+310*n^3+362*n²+121*n+6)/6` -/
def P702599353704571704.Spec : Prop :=
  ∀ n, P702599353704571704.a n = (A085502 n : ℚ)

end A085502

/-! ## A085502.P14184407091426286710

`∑[A000064(20*n)]`
-/

namespace A085502.P14184407091426286710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000064 (20 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085502.P14184407091426286710

namespace A085502

/-- `∑[A000064(20*n)]` -/
def P14184407091426286710.Spec : Prop :=
  ∀ n, P14184407091426286710.a n = A085502 n

end A085502

/-! ## A085502.P15571434214251301747

`A000064(A008587(4*n))+a(n-1)` with `a(0)=1`
-/

namespace A085502.P15571434214251301747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000064 (A008587 (4 * n)).toNat + a (n - 1)

end

end A085502.P15571434214251301747

namespace A085502

/-- `A000064(A008587(4*n))+a(n-1)` -/
def P15571434214251301747.Spec : Prop :=
  ∀ n, P15571434214251301747.a n = A085502 n

end A085502

/-! ## A085502.P3973347603188687333

`A001305(20*n)`
-/

namespace A085502.P3973347603188687333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001305 (20 * n)

end

end A085502.P3973347603188687333

namespace A085502

/-- `A001305(20*n)` -/
def P3973347603188687333.Spec : Prop :=
  ∀ n, P3973347603188687333.a n = A085502 n

end A085502

/-! ## A085502.P11014084909279355424

`and(-1, A001305(A008602(n)))`
-/

namespace A085502.P11014084909279355424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A001305 (A008602 n).toNat)

end

end A085502.P11014084909279355424

namespace A085502

/-- `and(-1, A001305(A008602(n)))` -/
def P11014084909279355424.Spec : Prop :=
  ∀ n, P11014084909279355424.a n = A085502 n

end A085502

/-! ## A085502.P10423159706078074014

`A001305(A008602(n))%A167498(n)²`
-/

namespace A085502.P10423159706078074014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001305 (A008602 n).toNat) (A167498 n ^ 2)

end

end A085502.P10423159706078074014

namespace A085502

/-- `A001305(A008602(n))%A167498(n)²` -/
def P10423159706078074014.Spec : Prop :=
  ∀ n, P10423159706078074014.a n = A085502 n

end A085502

/-! ## A085502.P4029496251900338965

`A001305(A008602(n))+A000007(n+1)`
-/

namespace A085502.P4029496251900338965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001305 (A008602 n).toNat + A000007 (n + 1)

end

end A085502.P4029496251900338965

namespace A085502

/-- `A001305(A008602(n))+A000007(n+1)` -/
def P4029496251900338965.Spec : Prop :=
  ∀ n, P4029496251900338965.a n = A085502 n

end A085502

/-! ## A085502.P8809800877314201676

`A001305(A008602(n))/A007318(C(2, n))`
-/

namespace A085502.P8809800877314201676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001305 (A008602 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A085502.P8809800877314201676

namespace A085502

/-- `A001305(A008602(n))/A007318(C(2, n))` -/
def P8809800877314201676.Spec : Prop :=
  ∀ n, P8809800877314201676.a n = (A085502 n : ℚ)

end A085502

/-! ## A085502.P14683756603332566917

`A001305(A008602(n))^A000041(C(2, n+1))`
-/

namespace A085502.P14683756603332566917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001305 (A008602 n).toNat : ℚ) ^ (A000041 (Nat.choose 2 (n + 1)) : ℤ)

end

end A085502.P14683756603332566917

namespace A085502

/-- `A001305(A008602(n))^A000041(C(2, n+1))` -/
def P14683756603332566917.Spec : Prop :=
  ∀ n, P14683756603332566917.a n = (A085502 n : ℚ)

end A085502

/-! ## A085502.P8672901688866015810

`A001305(A008602(n))^A000670(val(n+1, 40))`
-/

namespace A085502.P8672901688866015810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001305 (A008602 n).toNat : ℚ) ^ (A000670 (SequenceMachineLib.valuation (n + 1) 40) : ℤ)

end

end A085502.P8672901688866015810

namespace A085502

/-- `A001305(A008602(n))^A000670(val(n+1, 40))` -/
def P8672901688866015810.Spec : Prop :=
  ∀ n, P8672901688866015810.a n = (A085502 n : ℚ)

end A085502

/-! ## A085502.P3008145273182542313

`A001305(A008602(n))^A003520(val(n+1, 40))`
-/

namespace A085502.P3008145273182542313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001305 (A008602 n).toNat : ℚ) ^ (A003520 (SequenceMachineLib.valuation (n + 1) 40) : ℤ)

end

end A085502.P3008145273182542313

namespace A085502

/-- `A001305(A008602(n))^A003520(val(n+1, 40))` -/
def P3008145273182542313.Spec : Prop :=
  ∀ n, P3008145273182542313.a n = (A085502 n : ℚ)

end A085502

/-! ## A085502.P18148873690470149280

`A001305(A008602(n))/A000032(((-1)^n)²)`
-/

namespace A085502.P18148873690470149280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001305 (A008602 n).toNat : ℚ) / (A000032 (((-1) ^ n) ^ 2).toNat : ℚ)

end

end A085502.P18148873690470149280

namespace A085502

/-- `A001305(A008602(n))/A000032(((-1)^n)²)` -/
def P18148873690470149280.Spec : Prop :=
  ∀ n, P18148873690470149280.a n = (A085502 n : ℚ)

end A085502

/-! ## A085502.P7608844736038910641

`A001305(A008602(n))^A000041(floor(2/(n+1)))`
-/

namespace A085502.P7608844736038910641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001305 (A008602 n).toNat : ℚ) ^ (A000041 ⌊2 / (n + 1 : ℚ)⌋.toNat : ℤ)

end

end A085502.P7608844736038910641

namespace A085502

/-- `A001305(A008602(n))^A000041(floor(2/(n+1)))` -/
def P7608844736038910641.Spec : Prop :=
  ∀ n, P7608844736038910641.a n = (A085502 n : ℚ)

end A085502

/-! ## A085502.P5286787217881411346

`A001305(A008602(n))^A000108(round(n/(n+1)))`
-/

namespace A085502.P5286787217881411346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001305 (A008602 n).toNat : ℚ) ^ (A000108 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat : ℤ)

end

end A085502.P5286787217881411346

namespace A085502

/-- `A001305(A008602(n))^A000108(round(n/(n+1)))` -/
def P5286787217881411346.Spec : Prop :=
  ∀ n, P5286787217881411346.a n = (A085502 n : ℚ)

end A085502

/-! ## A085502.P2974619185252379119

`A001305(A008602(n))/A014963(A000217(n+6))`
-/

namespace A085502.P2974619185252379119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001305 (A008602 n).toNat : ℚ) / (A014963 (A000217 (n + 6)).toNat : ℚ)

end

end A085502.P2974619185252379119

namespace A085502

/-- `A001305(A008602(n))/A014963(A000217(n+6))` -/
def P2974619185252379119.Spec : Prop :=
  ∀ n, P2974619185252379119.a n = (A085502 n : ℚ)

end A085502

/-! ## A085502.P12879508563827680427

`A169718(10*10*n)`
-/

namespace A085502.P12879508563827680427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169718 (10 * (10 * n))

end

end A085502.P12879508563827680427

namespace A085502

/-- `A169718(10*10*n)` -/
def P12879508563827680427.Spec : Prop :=
  ∀ n, P12879508563827680427.a n = A085502 n

end A085502

/-! ## A085502.P9410557082015360773

`∑[A001300(10*10*n)]`
-/

namespace A085502.P9410557082015360773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001300 (10 * (10 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085502.P9410557082015360773

namespace A085502

/-- `∑[A001300(10*10*n)]` -/
def P9410557082015360773.Spec : Prop :=
  ∀ n, P9410557082015360773.a n = A085502 n

end A085502

/-!
# A085503: Sub-triangle of A008292: take every second term of every second row.

The programs for A085503, there is no canonical definition to state claims against.
-/

/-! ## A085503.P1265956855790473505

`A173018(∑[char[∑[n]]]²+2*n)`
-/

namespace A085503.P1265956855790473505
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 2 * n)

end

end A085503.P1265956855790473505

/-! ## A085503.P14732108820109782583

`A123125(2*n+∑[char[∑[n]]]²+1)`
-/

namespace A085503.P14732108820109782583
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (2 * n + ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1))

end

end A085503.P14732108820109782583

/-! ## A085503.P6389036269484461806

`A008292(∑[char[∑[n+1]]]²+n+n+1)`
-/

namespace A085503.P6389036269484461806
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + n + n + 1)

end

end A085503.P6389036269484461806

/-! ## A085503.P3505196802798339867

`A008292((1-round(sqrt(2*(n+1))))²+2*n+1)^(1-char[1])`
-/

namespace A085503.P3505196802798339867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008292 ((1 - SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))) ^ 2 + (2 * n + 1 : ℤ)).toNat : ℚ) ^ (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A085503.P3505196802798339867

/-! ## A085503.P1251210636440613581

`(A176200(comp[A002260(n+1)+n])+1)/2`
-/

namespace A085503.P1251210636440613581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176200 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1 : ℚ) / 2

end

end A085503.P1251210636440613581

/-!
# A085504: Horadam sequence (0,1,9,3).

The programs for A085504, the canonical program `A085504.P3540792795459282371` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085504 has offset 0).

The definition of A085504 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085504.P3070467058250138170

`A099012(A184985(n+1))`
-/

namespace A085504.P3070467058250138170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099012 (A184985 (n + 1)).toNat

end

end A085504.P3070467058250138170

namespace A085504

/-- `A099012(A184985(n+1))` -/
def P3070467058250138170.Spec : Prop :=
  ∀ n, P3070467058250138170.a n = A085504 n

end A085504

/-! ## A085504.P2916860825829192361

`A099012(A157928(n)+n)`
-/

namespace A085504.P2916860825829192361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099012 (A157928 n + (n : ℤ)).toNat

end

end A085504.P2916860825829192361

namespace A085504

/-- `A099012(A157928(n)+n)` -/
def P2916860825829192361.Spec : Prop :=
  ∀ n, P2916860825829192361.a n = A085504 n

end A085504

/-! ## A085504.P3540792795459282371

`A099012(A066247(∑[n+1])+n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A085504

/-- `A099012(A066247(∑[n+1])+n)` -/
def P3540792795459282371.Spec : Prop :=
  ∀ n, P3540792795459282371.a n = A085504 n

theorem P3540792795459282371.correct : P3540792795459282371.Spec := by
  intro n
  simp only [A085504]

end A085504

/-! ## A085504.P1134979889497262425

`Δ[A099013(n)]%A099045(n)`
-/

namespace A085504.P1134979889497262425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099013 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A099045 n)

end

end A085504.P1134979889497262425

namespace A085504

/-- `Δ[A099013(n)]%A099045(n)` -/
def P1134979889497262425.Spec : Prop :=
  ∀ n, P1134979889497262425.a n = A085504 n

end A085504

/-! ## A085504.P6446390326001633782

`A099012(n+1)%A099046(n)`
-/

namespace A085504.P6446390326001633782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099012 (n + 1)) (A099046 n)

end

end A085504.P6446390326001633782

namespace A085504

/-- `A099012(n+1)%A099046(n)` -/
def P6446390326001633782.Spec : Prop :=
  ∀ n, P6446390326001633782.a n = A085504 n

end A085504

/-! ## A085504.P17537641647718554631

`A122069(n)%A112478(A005843(n))`
-/

namespace A085504.P17537641647718554631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122069 n) (A112478 (A005843 n).toNat)

end

end A085504.P17537641647718554631

namespace A085504

/-- `A122069(n)%A112478(A005843(n))` -/
def P17537641647718554631.Spec : Prop :=
  ∀ n, P17537641647718554631.a n = A085504 n

end A085504

/-!
# A085505: a(n) = ceiling(((1*n^0 + 1*n^1 + 2*n^2 + 4*n^3)/(1*n^0 + 2*n^1 + 1*n^2))^2).

The programs for A085505, there is no canonical definition to state claims against.
-/

/-! ## A085505.P12030097445069982344

`A086863(n+1)+A057427(n)`
-/

namespace A085505.P12030097445069982344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086863 (n + 1) + A057427 n

end

end A085505.P12030097445069982344

/-! ## A085505.P16239263728060515960

`A086863(n+1)-A057428(n)`
-/

namespace A085505.P16239263728060515960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086863 (n + 1) - A057428 n

end

end A085505.P16239263728060515960

/-! ## A085505.P3880741081530113424

`A086863(n+1)+A001221(A000015(n+1))`
-/

namespace A085505.P3880741081530113424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086863 (n + 1) + A001221 (A000015 (n + 1)).toNat

end

end A085505.P3880741081530113424

/-! ## A085505.P6142056098741683958

`A086863(n+1)+A057428(n)^A129588(n)`
-/

namespace A085505.P6142056098741683958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086863 (n + 1) : ℚ) + (A057428 n : ℚ) ^ (A129588 n : ℤ)

end

end A085505.P6142056098741683958

/-! ## A085505.P1187697784971852166

`A086814(n+1)+A086863(n+1)-A086790(n+2)`
-/

namespace A085505.P1187697784971852166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086814 (n + 1) + (A086863 (n + 1) - A086790 (n + 2))

end

end A085505.P1187697784971852166

/-! ## A085505.P4495816814133759854

`A086863(n+1)+A001221(A000961(n+1))`
-/

namespace A085505.P4495816814133759854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086863 (n + 1) + A001221 (A000961 (n + 1)).toNat

end

end A085505.P4495816814133759854

/-! ## A085505.P12234544665227419108

`A086863(n+1)+A001222(A008578(n+1))`
-/

namespace A085505.P12234544665227419108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086863 (n + 1) + A001222 (A008578 (n + 1)).toNat

end

end A085505.P12234544665227419108

/-! ## A085505.P12500411224899686485

`A086863(n+1)+A001221(A025475(n+1))`
-/

namespace A085505.P12500411224899686485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086863 (n + 1) + A001221 (A025475 (n + 1)).toNat

end

end A085505.P12500411224899686485

/-!
# A085507: Stirling transform of the prime characteristic function.

The programs for A085507, there is no canonical definition to state claims against.
-/

/-! ## A085507.P9145034147616886328

`A289207(A024429(n)+A011782(n))`
-/

namespace A085507.P9145034147616886328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A024429 n + A011782 n).toNat

end

end A085507.P9145034147616886328

/-! ## A085507.P6103204040361477132

`A289207(A131577(n)+A024429(n))`
-/

namespace A085507.P6103204040361477132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A131577 n + A024429 n).toNat

end

end A085507.P6103204040361477132

/-! ## A085507.P17035956337659417476

`A080405(A006535(n+1))`
-/

namespace A085507.P17035956337659417476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080405 (A006535 (n + 1)).toNat

end

end A085507.P17035956337659417476

/-! ## A085507.P13994706954511665183

`A059995(A345673(n)+A017984(3*n+1))`
-/

namespace A085507.P13994706954511665183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A345673 n + A017984 (3 * n + 1)).toNat

end

end A085507.P13994706954511665183

/-!
# A085510: Permanent of the n X n matrix whose element (i,j) equals phi(|i-j|).

The programs for A085510, there is no canonical definition to state claims against.
-/

/-! ## A085510.P7297168554762698675

`record[A335504(2^n)]`
-/

namespace A085510.P7297168554762698675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335504 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085510.P7297168554762698675

/-!
# A085512: Numbers k such that (89 + 10^(2*k+1))/99 is prime.

The programs for A085512, there is no canonical definition to state claims against.
-/

/-! ## A085512.P8190260198798738183

`eq[1, A085815(2*n)]`
-/

namespace A085512.P8190260198798738183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085815 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085512.P8190260198798738183

/-!
# A085521: a(n) = Product_{k=0..n} (2^(2k+1)+1).

The programs for A085521, there is no canonical definition to state claims against.
-/

/-! ## A085521.P11360225798963842184

`∏[floor(4^n/2)+1]`
-/

namespace A085521.P11360225798963842184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 ^ n : ℚ) / 2⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085521.P11360225798963842184

/-! ## A085521.P4873631985160700446

`(4^n/2+1)*a(n-1)` with `a(0)=1`
-/

namespace A085521.P4873631985160700446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((4 ^ n : ℚ) / 2 + 1) * a (n - 1)

end

end A085521.P4873631985160700446

/-! ## A085521.P5115461480732482968

`a(n-1)*record[1-(-2)^n]` with `a(0)=1`
-/

namespace A085521.P5115461480732482968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085521.P5115461480732482968

/-! ## A085521.P13790780658797305539

`ceil((2*(2^(n-1))²+1)*a(n-1))` with `a(0)=1`
-/

namespace A085521.P13790780658797305539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(2 * ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) ^ 2 + 1) * (a (n - 1) : ℚ)⌉

end

end A085521.P13790780658797305539

/-! ## A085521.P12946016125195917321

`abs(∏[record[A248155(n)]])`
-/

namespace A085521.P12946016125195917321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248155 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A085521.P12946016125195917321

/-!
# A085522: Product_{k=0..n} (3^(2k+1)+1).

The programs for A085522, there is no canonical definition to state claims against.
-/

/-! ## A085522.P18281312792611988390

`∏[Δ[ceil(9^n/24)]+1]`
-/

namespace A085522.P18281312792611988390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(9 ^ n : ℚ) / 24⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085522.P18281312792611988390

/-! ## A085522.P13334787344254333536

`(9^n/3+1)*a(n-1)` with `a(0)=1`
-/

namespace A085522.P13334787344254333536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((9 ^ n : ℚ) / 3 + 1) * a (n - 1)

end

end A085522.P13334787344254333536

/-! ## A085522.P1502918986286467429

`2*a(n-1)*A124302(2*n)` with `a(0)=1`
-/

namespace A085522.P1502918986286467429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) * A124302 (2 * n))

end

end A085522.P1502918986286467429

/-! ## A085522.P14109210717572693619

`a(n-1)*A094388(A005843(n))` with `a(0)=1`
-/

namespace A085522.P14109210717572693619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A094388 (A005843 n).toNat

end

end A085522.P14109210717572693619

/-! ## A085522.P10359553857709281944

`∏[A103457(2*n+1)]/A103457(2*n+1)`
-/

namespace A085522.P10359553857709281944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103457 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A103457 (2 * n + 1) : ℚ)

end

end A085522.P10359553857709281944

/-!
# A085523: a(n) = Product_{k=0..n} (4^(2k+1)+1).

The programs for A085523, there is no canonical definition to state claims against.
-/

/-! ## A085523.P17165449319430702512

`∏[(4^n/2)²/a(floor(acot(n)²))+1]` with `a(0)=1`
-/

namespace A085523.P17165449319430702512
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((4 ^ n : ℚ) / 2) ^ 2 / f1 ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋.toNat + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085523.P17165449319430702512

/-! ## A085523.P2977240456695037142

`∏[A092896(2*n)]`
-/

namespace A085523.P2977240456695037142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092896 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085523.P2977240456695037142

/-! ## A085523.P1412815229660252362

`∏[record[∑[A141125(n)]]]`
-/

namespace A085523.P1412815229660252362
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141125 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085523.P1412815229660252362

/-! ## A085523.P12463628062423737893

`∏[record[A077860(2*n)]]`
-/

namespace A085523.P12463628062423737893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077860 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085523.P12463628062423737893

/-! ## A085523.P9754382908067054958

`∏[A052539(2*n+1)]/A052539(2*n+1)`
-/

namespace A085523.P9754382908067054958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052539 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A052539 (2 * n + 1) : ℚ)

end

end A085523.P9754382908067054958

/-!
# A085524: a(0) = 0; a(n) = n^(2*n-1) for n > 0.

The programs for A085524, there is no canonical definition to state claims against.
-/

/-! ## A085524.P17296143228046148749

`n^abs(1-2*n)`
-/

namespace A085524.P17296143228046148749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (|1 - (2 * n : ℤ)| : ℤ)

end

end A085524.P17296143228046148749

/-! ## A085524.P5045510523913472448

`abs((-n)^record[abs(xor(1, n-2))])`
-/

namespace A085524.P5045510523913472448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 ((n : ℤ) - 2)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(-(n : ℤ) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)|

end

end A085524.P5045510523913472448

/-! ## A085524.P18379037696823903448

`record[ceil(n/2)^n^(n%2)]`
-/

namespace A085524.P18379037696823903448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ ^ n ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085524.P18379037696823903448

/-! ## A085524.P9223569259944054904

`n*(n^((n-1)%(n+1)))²`
-/

namespace A085524.P9223569259944054904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ)) ^ 2

end

end A085524.P9223569259944054904

/-!
# A085525: a(n) = n^(2*n + 2).

The programs for A085525, the canonical program `A085525.P9608829913237004001` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085525 has offset 0).

The definition of A085525 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^(2*n+2)` (program `A085525.P9608829913237004001`, by `A085525.P9608829913237004001.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085525.P9608829913237004001

`n^(2*n+2)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A085525

/-- `n^(2*n+2)` -/
def P9608829913237004001.Spec : Prop :=
  ∀ n, (P9608829913237004001.a n : ℤ) = A085525 n

theorem P9608829913237004001.correct : P9608829913237004001.Spec := by
  intro n
  simp only [A085525]

end A085525

/-! ## A085525.P11833938553924527698

`A007778(n)*A007778(n)`
-/

namespace A085525.P11833938553924527698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007778 n * A007778 n

end

end A085525.P11833938553924527698

namespace A085525

/-- `A007778(n)*A007778(n)` -/
def P11833938553924527698.Spec : Prop :=
  ∀ n, P11833938553924527698.a n = A085525 n

end A085525

/-!
# A085526: a(n) = n^(2n+1).

The programs for A085526, the canonical program `A085526.P15916793665597414662` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085526 has offset 0).

The definition of A085526 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^(2*n+1)` (program `A085526.P15916793665597414662`, by `A085526.P15916793665597414662.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085526.P15916793665597414662

`n^(2*n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A085526

/-- `n^(2*n+1)` -/
def P15916793665597414662.Spec : Prop :=
  ∀ n, (P15916793665597414662.a n : ℤ) = A085526 n

theorem P15916793665597414662.correct : P15916793665597414662.Spec := by
  intro n
  simp only [A085526]

end A085526

/-! ## A085526.P13949257103552628823

`n*A062206(n)`
-/

namespace A085526.P13949257103552628823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A062206 n

end

end A085526.P13949257103552628823

namespace A085526

/-- `n*A062206(n)` -/
def P13949257103552628823.Spec : Prop :=
  ∀ n, P13949257103552628823.a n = A085526 n

end A085526

/-! ## A085526.P11264908788823554812

`n*n^comp[or(1, n)]`
-/

namespace A085526.P11264908788823554812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A085526.P11264908788823554812

namespace A085526

/-- `n*n^comp[or(1, n)]` -/
def P11264908788823554812.Spec : Prop :=
  ∀ n, (P11264908788823554812.a n : ℤ) = A085526 n

end A085526

/-! ## A085526.P104209721845461257

`-(-n)^record[xor(1, n)]`
-/

namespace A085526.P104209721845461257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-(n : ℤ)) ^ f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A085526.P104209721845461257

namespace A085526

/-- `-(-n)^record[xor(1, n)]` -/
def P104209721845461257.Spec : Prop :=
  ∀ n, P104209721845461257.a n = A085526 n

end A085526

/-! ## A085526.P12072998170351099059

`lcm(n, n*(n^n)²)`
-/

namespace A085526.P12072998170351099059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n * (n ^ n) ^ 2)

end

end A085526.P12072998170351099059

namespace A085526

/-- `lcm(n, n*(n^n)²)` -/
def P12072998170351099059.Spec : Prop :=
  ∀ n, (P12072998170351099059.a n : ℤ) = A085526 n

theorem P12072998170351099059.correct : P12072998170351099059.Spec := by
  intro n
  simp only [A085526, Nat.add_sub_cancel, A085526.P12072998170351099059.a, A085526.P15916793665597414662.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A085526

/-!
# A085527: a(n) = (2n+1)^n.

The programs for A085527, the canonical program `A085527.P7137416442509202037` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085527 has offset 0).

The definition of A085527 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)^n` (program `A085527.P7137416442509202037`, by `A085527.P7137416442509202037.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085527.P7137416442509202037

`(2*n+1)^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A085527

/-- `(2*n+1)^n` -/
def P7137416442509202037.Spec : Prop :=
  ∀ n, (P7137416442509202037.a n : ℤ) = A085527 n

theorem P7137416442509202037.correct : P7137416442509202037.Spec := by
  intro n
  simp only [A085527]

end A085527

/-! ## A085527.P6456410327230651071

`or(1, comp[2*n]^n)`
-/

namespace A085527.P6456410327230651071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ n)

end

end A085527.P6456410327230651071

namespace A085527

/-- `or(1, comp[2*n]^n)` -/
def P6456410327230651071.Spec : Prop :=
  ∀ n, (P6456410327230651071.a n : ℤ) = A085527 n

end A085527

/-! ## A085527.P13550382760760070903

`record[(-sqrt(n+1))^n]`
-/

namespace A085527.P13550382760760070903
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-Real.sqrt (n + 1 : ℝ)) ^ n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085527.P13550382760760070903

namespace A085527

/-- `record[(-sqrt(n+1))^n]` -/
def P13550382760760070903.Spec : Prop :=
  ∀ n, P13550382760760070903.a n = (A085527 n : ℝ)

end A085527

/-! ## A085527.P13320599842590514398

`(sqrt(comp[lcm(2, n)])^n)²`
-/

namespace A085527.P13320599842590514398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ) ^ n) ^ 2

end

end A085527.P13320599842590514398

namespace A085527

/-- `(sqrt(comp[lcm(2, n)])^n)²` -/
def P13320599842590514398.Spec : Prop :=
  ∀ n, P13320599842590514398.a n = (A085527 n : ℝ)

end A085527

/-! ## A085527.P6361734153449233700

`abs((-or(1, 2*n))^n)`
-/

namespace A085527.P6361734153449233700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-(Nat.lor 1 (2 * n) : ℤ)) ^ n|

end

end A085527.P6361734153449233700

namespace A085527

/-- `abs((-or(1, 2*n))^n)` -/
def P6361734153449233700.Spec : Prop :=
  ∀ n, P6361734153449233700.a n = A085527 n

end A085527

/-! ## A085527.P11914164024403695379

`abs((-xor(1, 2*n))^n)`
-/

namespace A085527.P11914164024403695379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-(Nat.xor 1 (2 * n) : ℤ)) ^ n|

end

end A085527.P11914164024403695379

namespace A085527

/-- `abs((-xor(1, 2*n))^n)` -/
def P11914164024403695379.Spec : Prop :=
  ∀ n, P11914164024403695379.a n = A085527 n

end A085527

/-! ## A085527.P16999537964872158190

`abs(Δ[n^ceil(atan(n))]^n)`
-/

namespace A085527.P16999537964872158190
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) ^ n|

end

end A085527.P16999537964872158190

namespace A085527

/-- `abs(Δ[n^ceil(atan(n))]^n)` -/
def P16999537964872158190.Spec : Prop :=
  ∀ n, P16999537964872158190.a n = (A085527 n : ℚ)

end A085527

/-! ## A085527.P8901701388754397150

`(or(1, 2*n)^(n/2))²`
-/

namespace A085527.P8901701388754397150
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (2 * n) : ℝ) ^ ((n : ℚ) / 2 : ℝ)) ^ 2

end

end A085527.P8901701388754397150

namespace A085527

/-- `(or(1, 2*n)^(n/2))²` -/
def P8901701388754397150.Spec : Prop :=
  ∀ n, P8901701388754397150.a n = (A085527 n : ℝ)

end A085527

/-! ## A085527.P17073796593244974342

`(xor(1, 2*n)^(n/2))²`
-/

namespace A085527.P17073796593244974342
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 1 (2 * n) : ℝ) ^ ((n : ℚ) / 2 : ℝ)) ^ 2

end

end A085527.P17073796593244974342

namespace A085527

/-- `(xor(1, 2*n)^(n/2))²` -/
def P17073796593244974342.Spec : Prop :=
  ∀ n, P17073796593244974342.a n = (A085527 n : ℝ)

end A085527

/-!
# A085528: a(n) = (2*n+1)^(n+1).

The programs for A085528, the canonical program `A085528.P13012219599689472192` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085528 has offset 0).

The definition of A085528 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)^(n+1)` (program `A085528.P13012219599689472192`, by `A085528.P13012219599689472192.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085528.P13012219599689472192

`(2*n+1)^(n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A085528

/-- `(2*n+1)^(n+1)` -/
def P13012219599689472192.Spec : Prop :=
  ∀ n, (P13012219599689472192.a n : ℤ) = A085528 n

theorem P13012219599689472192.correct : P13012219599689472192.Spec := by
  intro n
  simp only [A085528]

end A085528

/-! ## A085528.P15016201513251535084

`record[n^(∑[n]%(n+1))]`
-/

namespace A085528.P15016201513251535084
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ ((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085528.P15016201513251535084

namespace A085528

/-- `record[n^(∑[n]%(n+1))]` -/
def P15016201513251535084.Spec : Prop :=
  ∀ n, (P15016201513251535084.a n : ℤ) = A085528 n

end A085528

/-! ## A085528.P9091901462249748908

`record[(-sqrt(n+1))^(n+2)]`
-/

namespace A085528.P9091901462249748908
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-Real.sqrt (n + 1 : ℝ)) ^ (n + 2)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085528.P9091901462249748908

namespace A085528

/-- `record[(-sqrt(n+1))^(n+2)]` -/
def P9091901462249748908.Spec : Prop :=
  ∀ n, P9091901462249748908.a n = (A085528 n : ℝ)

end A085528

/-! ## A085528.P3041938611839161847

`root(comp[2*n], tan(acot(n+1)))`
-/

namespace A085528.P3041938611839161847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ) ^ (1 / Real.tan (SequenceMachineLib.acot (n + 1 : ℝ)))

end

end A085528.P3041938611839161847

namespace A085528

/-- `root(comp[2*n], tan(acot(n+1)))` -/
def P3041938611839161847.Spec : Prop :=
  ∀ n, P3041938611839161847.a n = (A085528 n : ℝ)

end A085528

/-! ## A085528.P3985797736795463698

`abs(Δ[n²]^abs(xor(n, -1)))`
-/

namespace A085528.P3985797736795463698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) ^ (|Int.xor (n : ℤ) (-1)| : ℤ))|

end

end A085528.P3985797736795463698

namespace A085528

/-- `abs(Δ[n²]^abs(xor(n, -1)))` -/
def P3985797736795463698.Spec : Prop :=
  ∀ n, P3985797736795463698.a n = (A085528 n : ℚ)

end A085528

/-!
# A085529: a(n) = (2n+1)^(2n+1).

The programs for A085529, the canonical program `A085529.P13519061500192864218` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085529 has offset 0).

The definition of A085529 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)^(2*n+1)` (program `A085529.P13519061500192864218`, by `A085529.P13519061500192864218.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085529.P13519061500192864218

`(2*n+1)^(2*n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A085529

/-- `(2*n+1)^(2*n+1)` -/
def P13519061500192864218.Spec : Prop :=
  ∀ n, (P13519061500192864218.a n : ℤ) = A085529 n

theorem P13519061500192864218.correct : P13519061500192864218.Spec := by
  intro n
  simp only [A085529]

end A085529

/-! ## A085529.P8406425838658741664

`A000312(2*n+1)`
-/

namespace A085529.P8406425838658741664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (2 * n + 1)

end

end A085529.P8406425838658741664

namespace A085529

/-- `A000312(2*n+1)` -/
def P8406425838658741664.Spec : Prop :=
  ∀ n, P8406425838658741664.a n = A085529 n

end A085529

/-! ## A085529.P4300817817827520987

`A085527(n)²*(2*n+1)`
-/

namespace A085529.P4300817817827520987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085527 n ^ 2 * (2 * n + 1 : ℤ)

end

end A085529.P4300817817827520987

namespace A085529

/-- `A085527(n)²*(2*n+1)` -/
def P4300817817827520987.Spec : Prop :=
  ∀ n, P4300817817827520987.a n = A085529 n

end A085529

/-! ## A085529.P10446268028722014920

`A085528(n)²/(2*n+1)`
-/

namespace A085529.P10446268028722014920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085528 n ^ 2 : ℚ) / (2 * n + 1 : ℚ)

end

end A085529.P10446268028722014920

namespace A085529

/-- `A085528(n)²/(2*n+1)` -/
def P10446268028722014920.Spec : Prop :=
  ∀ n, P10446268028722014920.a n = (A085529 n : ℚ)

end A085529

/-! ## A085529.P8796227075574649822

`A016754(n)^n*(2*n+1)`
-/

namespace A085529.P8796227075574649822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n ^ n * (2 * n + 1 : ℤ)

end

end A085529.P8796227075574649822

namespace A085529

/-- `A016754(n)^n*(2*n+1)` -/
def P8796227075574649822.Spec : Prop :=
  ∀ n, P8796227075574649822.a n = A085529 n

end A085529

/-!
# A085530: a(n) = (2n+1)^(2n).

The programs for A085530, the canonical program `A085530.P1479989419755091425` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085530 has offset 0).

The definition of A085530 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)^(2*n)` (program `A085530.P1479989419755091425`, by `A085530.P1479989419755091425.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085530.P1479989419755091425

`(2*n+1)^(2*n)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A085530

/-- `(2*n+1)^(2*n)` -/
def P1479989419755091425.Spec : Prop :=
  ∀ n, (P1479989419755091425.a n : ℤ) = A085530 n

theorem P1479989419755091425.correct : P1479989419755091425.Spec := by
  intro n
  simp only [A085530]

end A085530

/-! ## A085530.P6845916049786805733

`A085527(n)²`
-/

namespace A085530.P6845916049786805733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085527 n ^ 2

end

end A085530.P6845916049786805733

namespace A085530

/-- `A085527(n)²` -/
def P6845916049786805733.Spec : Prop :=
  ∀ n, P6845916049786805733.a n = A085530 n

end A085530

/-! ## A085530.P13402682223193733490

`A085529(n)/(2*n+1)`
-/

namespace A085530.P13402682223193733490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085529 n : ℚ) / (2 * n + 1 : ℚ)

end

end A085530.P13402682223193733490

namespace A085530

/-- `A085529(n)/(2*n+1)` -/
def P13402682223193733490.Spec : Prop :=
  ∀ n, P13402682223193733490.a n = (A085530 n : ℚ)

end A085530

/-! ## A085530.P3087507792758329013

`record[(-(n+1))^n]`
-/

namespace A085530.P3087507792758329013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n + 1 : ℤ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085530.P3087507792758329013

namespace A085530

/-- `record[(-(n+1))^n]` -/
def P3087507792758329013.Spec : Prop :=
  ∀ n, P3087507792758329013.a n = A085530 n

end A085530

/-!
# A085531: a(n) = (2*n+1)^(2*n-1).

The programs for A085531, the canonical program `A085531.P14464995482352617164` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085531 has offset 0).

The definition of A085531 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085531.P14464995482352617164

`(2*n+1)^(2*n-1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A085531

/-- `(2*n+1)^(2*n-1)` -/
def P14464995482352617164.Spec : Prop :=
  ∀ n, P14464995482352617164.a n = (A085531 n : ℚ)

end A085531

/-! ## A085531.P12757502916780466245

`abs(record[-(-(n+2))^n])`
-/

namespace A085531.P12757502916780466245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-(n + 2 : ℤ)) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A085531.P12757502916780466245

namespace A085531

/-- `abs(record[-(-(n+2))^n])` -/
def P12757502916780466245.Spec : Prop :=
  ∀ n, P12757502916780466245.a n = A085531 n

end A085531

/-! ## A085531.P10544313240451666512

`record[(n+1)^xor(1, n-2)]`
-/

namespace A085531.P10544313240451666512
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (Int.xor 1 ((n : ℤ) - 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085531.P10544313240451666512

namespace A085531

/-- `record[(n+1)^xor(1, n-2)]` -/
def P10544313240451666512.Spec : Prop :=
  ∀ n, P10544313240451666512.a n = (A085531 n : ℚ)

end A085531

/-! ## A085531.P12258860667741288359

`record[(lcm(4, n+2)/4)^n]`
-/

namespace A085531.P12258860667741288359
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 4 (n + 2) : ℚ) / 4) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085531.P12258860667741288359

namespace A085531

/-- `record[(lcm(4, n+2)/4)^n]` -/
def P12258860667741288359.Spec : Prop :=
  ∀ n, P12258860667741288359.a n = (A085531 n : ℚ)

end A085531

/-!
# A085532: a(n) = (2n)^(n+1).

The programs for A085532, the canonical program `A085532.P1576629317241842509` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085532 has offset 0).

The definition of A085532 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n)^(n+1)` (program `A085532.P1576629317241842509`, by `A085532.P1576629317241842509.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085532.P1576629317241842509

`(2*n)^(n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A085532

/-- `(2*n)^(n+1)` -/
def P1576629317241842509.Spec : Prop :=
  ∀ n, (P1576629317241842509.a n : ℤ) = A085532 n

theorem P1576629317241842509.correct : P1576629317241842509.Spec := by
  intro n
  simp only [A085532]

end A085532

/-! ## A085532.P17619343085888030267

`record[(-sqrt(n))^(n+2)]`
-/

namespace A085532.P17619343085888030267
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-Real.sqrt (n : ℝ)) ^ (n + 2)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085532.P17619343085888030267

namespace A085532

/-- `record[(-sqrt(n))^(n+2)]` -/
def P17619343085888030267.Spec : Prop :=
  ∀ n, P17619343085888030267.a n = (A085532 n : ℝ)

end A085532

/-! ## A085532.P14777488610001069752

`floor((2*n)^-xor(n, -1))`
-/

namespace A085532.P14777488610001069752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℚ) ^ (-Int.xor (n : ℤ) (-1) : ℤ)⌋

end

end A085532.P14777488610001069752

namespace A085532

/-- `floor((2*n)^-xor(n, -1))` -/
def P14777488610001069752.Spec : Prop :=
  ∀ n, P14777488610001069752.a n = A085532 n

end A085532

/-! ## A085532.P16862904993445792078

`lcm(n, record[(2*(n-1))^n])`
-/

namespace A085532.P16862904993445792078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ((n : ℤ) - 1)) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A085532.P16862904993445792078

namespace A085532

/-- `lcm(n, record[(2*(n-1))^n])` -/
def P16862904993445792078.Spec : Prop :=
  ∀ n, (P16862904993445792078.a n : ℤ) = A085532 n

end A085532

/-! ## A085532.P1600433216165408180

`ceil((2*n)^-xor(n, -1))`
-/

namespace A085532.P1600433216165408180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℚ) ^ (-Int.xor (n : ℤ) (-1) : ℤ)⌉

end

end A085532.P1600433216165408180

namespace A085532

/-- `ceil((2*n)^-xor(n, -1))` -/
def P1600433216165408180.Spec : Prop :=
  ∀ n, P1600433216165408180.a n = A085532 n

end A085532

/-! ## A085532.P5371457932313596767

`round((2*n)^-xor(n, -1))`
-/

namespace A085532.P5371457932313596767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℚ) ^ (-Int.xor (n : ℤ) (-1) : ℤ))

end

end A085532.P5371457932313596767

namespace A085532

/-- `round((2*n)^-xor(n, -1))` -/
def P5371457932313596767.Spec : Prop :=
  ∀ n, P5371457932313596767.a n = A085532 n

end A085532

/-! ## A085532.P4423967824367035078

`2*n*record[(-sqrt(n))^n]`
-/

namespace A085532.P4423967824367035078
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-Real.sqrt (n : ℝ)) ^ n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n : ℝ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085532.P4423967824367035078

namespace A085532

/-- `2*n*record[(-sqrt(n))^n]` -/
def P4423967824367035078.Spec : Prop :=
  ∀ n, P4423967824367035078.a n = (A085532 n : ℝ)

end A085532

/-! ## A085532.P16197238180758376364

`lcm(2, 2*n*(2*n)^n)`
-/

namespace A085532.P16197238180758376364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (2 * n * (2 * n) ^ n)

end

end A085532.P16197238180758376364

namespace A085532

/-- `lcm(2, 2*n*(2*n)^n)` -/
def P16197238180758376364.Spec : Prop :=
  ∀ n, (P16197238180758376364.a n : ℤ) = A085532 n

end A085532

/-! ## A085532.P3765851598360097156

`2*n*and(2*n, -2)^n`
-/

namespace A085532.P3765851598360097156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * Int.land (2 * n : ℤ) (-2) ^ n

end

end A085532.P3765851598360097156

namespace A085532

/-- `2*n*and(2*n, -2)^n` -/
def P3765851598360097156.Spec : Prop :=
  ∀ n, P3765851598360097156.a n = A085532 n

end A085532

/-! ## A085532.P1748098590747890061

`floor((2*n)^(or(1, 2*n)-n))`
-/

namespace A085532.P1748098590747890061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℚ) ^ ((Nat.lor 1 (2 * n) : ℤ) - (n : ℤ) : ℤ)⌋

end

end A085532.P1748098590747890061

namespace A085532

/-- `floor((2*n)^(or(1, 2*n)-n))` -/
def P1748098590747890061.Spec : Prop :=
  ∀ n, P1748098590747890061.a n = A085532 n

end A085532

/-!
# A085533: a(n) = (2n)^(2n+1).

The programs for A085533, the canonical program `A085533.P185306009021068419` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085533 has offset 0).

The definition of A085533 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n)^(2*n+1)` (program `A085533.P185306009021068419`, by `A085533.P185306009021068419.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085533.P185306009021068419

`(2*n)^(2*n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A085533

/-- `(2*n)^(2*n+1)` -/
def P185306009021068419.Spec : Prop :=
  ∀ n, (P185306009021068419.a n : ℤ) = A085533 n

theorem P185306009021068419.correct : P185306009021068419.Spec := by
  intro n
  simp only [A085533]

end A085533

/-! ## A085533.P3095078105722742689

`record[n*(-n)^n]`
-/

namespace A085533.P3095078105722742689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (-(n : ℤ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085533.P3095078105722742689

namespace A085533

/-- `record[n*(-n)^n]` -/
def P3095078105722742689.Spec : Prop :=
  ∀ n, P3095078105722742689.a n = A085533 n

end A085533

/-! ## A085533.P13903747046867799080

`abs(record[-(-n)^(n+1)])`
-/

namespace A085533.P13903747046867799080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-(n : ℤ)) ^ (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A085533.P13903747046867799080

namespace A085533

/-- `abs(record[-(-n)^(n+1)])` -/
def P13903747046867799080.Spec : Prop :=
  ∀ n, P13903747046867799080.a n = A085533 n

end A085533

/-! ## A085533.P5487485284065872795

`floor(comp[or(1, n)]^Δ[n²])`
-/

namespace A085533.P5487485284065872795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) ^ ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℤ)⌋

end

end A085533.P5487485284065872795

namespace A085533

/-- `floor(comp[or(1, n)]^Δ[n²])` -/
def P5487485284065872795.Spec : Prop :=
  ∀ n, P5487485284065872795.a n = A085533 n

end A085533

/-! ## A085533.P421670453217641782

`lcm(2, (2*n)^comp[2*n])`
-/

namespace A085533.P421670453217641782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((2 * n) ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A085533.P421670453217641782

namespace A085533

/-- `lcm(2, (2*n)^comp[2*n])` -/
def P421670453217641782.Spec : Prop :=
  ∀ n, (P421670453217641782.a n : ℤ) = A085533 n

end A085533

/-!
# A085534: a(n) = (2n)^(2n).

The programs for A085534, the canonical program `A085534.P12620338207884709698` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085534 has offset 0).

The definition of A085534 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n)^(2*n)` (program `A085534.P12620338207884709698`, by `A085534.P12620338207884709698.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085534.P12620338207884709698

`(2*n)^(2*n)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A085534

/-- `(2*n)^(2*n)` -/
def P12620338207884709698.Spec : Prop :=
  ∀ n, (P12620338207884709698.a n : ℤ) = A085534 n

theorem P12620338207884709698.correct : P12620338207884709698.Spec := by
  intro n
  simp only [A085534]

end A085534

/-! ## A085534.P18107255537069606582

`A062971(n)²`
-/

namespace A085534.P18107255537069606582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062971 n ^ 2

end

end A085534.P18107255537069606582

namespace A085534

/-- `A062971(n)²` -/
def P18107255537069606582.Spec : Prop :=
  ∀ n, P18107255537069606582.a n = A085534 n

end A085534

/-! ## A085534.P5573769967448344282

`A000312(2*n)`
-/

namespace A085534.P5573769967448344282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (2 * n)

end

end A085534.P5573769967448344282

namespace A085534

/-- `A000312(2*n)` -/
def P5573769967448344282.Spec : Prop :=
  ∀ n, P5573769967448344282.a n = A085534 n

end A085534

/-! ## A085534.P17059895183960375297

`record[(-n)^n]`
-/

namespace A085534.P17059895183960375297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n : ℤ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085534.P17059895183960375297

namespace A085534

/-- `record[(-n)^n]` -/
def P17059895183960375297.Spec : Prop :=
  ∀ n, P17059895183960375297.a n = A085534 n

end A085534

/-!
# A085535: a(n) = (2n)^(2n-1).

The programs for A085535, there is no canonical definition to state claims against.
-/

/-! ## A085535.P15080008131433797557

`record[(n+2)^xor(1, n)]`
-/

namespace A085535.P15080008131433797557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085535.P15080008131433797557

/-! ## A085535.P9702681218009973279

`(2*(n+1))^Δ[n²]`
-/

namespace A085535.P9702681218009973279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)

end

end A085535.P9702681218009973279

/-! ## A085535.P9872050097523529761

`record[-(-(n+2))^(n+1)]`
-/

namespace A085535.P9872050097523529761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-(n + 2 : ℤ)) ^ (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085535.P9872050097523529761

/-! ## A085535.P8658911074343782134

`lcm(2, (2*(n+1))^(2*n+1))`
-/

namespace A085535.P8658911074343782134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((2 * (n + 1)) ^ (2 * n + 1))

end

end A085535.P8658911074343782134

/-! ## A085535.P18094147580731727706

`abs(xor(2*n, -2)^(2*n+1))`
-/

namespace A085535.P18094147580731727706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (2 * n : ℤ) (-2) ^ (2 * n + 1)|

end

end A085535.P18094147580731727706

/-!
# A085536: a(n) = (3n)^(3n).

The programs for A085536, the canonical program `A085536.P3635812386520372039` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085536 has offset 0).

The definition of A085536 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n)^(3*n)` (program `A085536.P3635812386520372039`, by `A085536.P3635812386520372039.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085536.P3635812386520372039

`(3*n)^(3*n)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A085536

/-- `(3*n)^(3*n)` -/
def P3635812386520372039.Spec : Prop :=
  ∀ n, (P3635812386520372039.a n : ℤ) = A085536 n

theorem P3635812386520372039.correct : P3635812386520372039.Spec := by
  intro n
  simp only [A085536]

end A085536

/-! ## A085536.P3131194945096394180

`A000312(3*n)`
-/

namespace A085536.P3131194945096394180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (3 * n)

end

end A085536.P3131194945096394180

namespace A085536

/-- `A000312(3*n)` -/
def P3131194945096394180.Spec : Prop :=
  ∀ n, P3131194945096394180.a n = A085536 n

end A085536

/-! ## A085536.P1628625192518106123

`record[gcd(n, n²%3)^n]`
-/

namespace A085536.P1628625192518106123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n ^ 2 % 3) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085536.P1628625192518106123

namespace A085536

/-- `record[gcd(n, n²%3)^n]` -/
def P1628625192518106123.Spec : Prop :=
  ∀ n, (P1628625192518106123.a n : ℤ) = A085536 n

end A085536

/-! ## A085536.P18248186561999665434

`record[(n/dr(∑[n+1]))^n]`
-/

namespace A085536.P18248186561999665434
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / (SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℚ)) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085536.P18248186561999665434

namespace A085536

/-- `record[(n/dr(∑[n+1]))^n]` -/
def P18248186561999665434.Spec : Prop :=
  ∀ n, P18248186561999665434.a n = (A085536 n : ℚ)

end A085536

/-! ## A085536.P9445068462938666848

`(floor(3/acot(n))^(floor(3/acot(n))/2))²`
-/

namespace A085536.P9445068462938666848
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ : ℝ) ^ ((⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ : ℚ) / 2 : ℝ)) ^ 2

end

end A085536.P9445068462938666848

namespace A085536

/-- `(floor(3/acot(n))^(floor(3/acot(n))/2))²` -/
def P9445068462938666848.Spec : Prop :=
  ∀ n, P9445068462938666848.a n = (A085536 n : ℝ)

end A085536

/-!
# A085537: a(n) = n^4 - n^3.

The programs for A085537, the canonical program `A085537.P8915290604873749515` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085537 has offset 0).

The definition of A085537 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085537.P8915290604873749515

`(n-1)*n^3`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A085537

/-- `(n-1)*n^3` -/
def P8915290604873749515.Spec : Prop :=
  ∀ n, P8915290604873749515.a n = A085537 n

theorem P8915290604873749515.correct : P8915290604873749515.Spec := by
  intro n
  simp only [A085537]

end A085537

/-! ## A085537.P1222432549783029299

`A000583(n)-A000578(n)`
-/

namespace A085537.P1222432549783029299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - A000578 n

end

end A085537.P1222432549783029299

namespace A085537

/-- `A000583(n)-A000578(n)` -/
def P1222432549783029299.Spec : Prop :=
  ∀ n, P1222432549783029299.a n = A085537 n

end A085537

/-! ## A085537.P23844784494417100

`lcm(1-n, n^3)`
-/

namespace A085537.P23844784494417100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (n : ℤ)) (n ^ 3 : ℤ)

end

end A085537.P23844784494417100

namespace A085537

/-- `lcm(1-n, n^3)` -/
def P23844784494417100.Spec : Prop :=
  ∀ n, (P23844784494417100.a n : ℤ) = A085537 n

end A085537

/-! ## A085537.P13262824598820850060

`n²²-Δ[C(n, 2)²]`
-/

namespace A085537.P13262824598820850060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A085537.P13262824598820850060

namespace A085537

/-- `n²²-Δ[C(n, 2)²]` -/
def P13262824598820850060.Spec : Prop :=
  ∀ n, P13262824598820850060.a n = A085537 n

end A085537

/-! ## A085537.P11513784777853155113

`2*n*C(n², 2)/(n+1)`
-/

namespace A085537.P11513784777853155113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n * Nat.choose (n ^ 2) 2 : ℚ) / (n + 1 : ℚ)

end

end A085537.P11513784777853155113

namespace A085537

/-- `2*n*C(n², 2)/(n+1)` -/
def P11513784777853155113.Spec : Prop :=
  ∀ n, P11513784777853155113.a n = (A085537 n : ℚ)

end A085537

/-! ## A085537.P15562214124512002752

`(2*n)²*lcm(n, n-1)/4`
-/

namespace A085537.P15562214124512002752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 * Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℚ) / 4

end

end A085537.P15562214124512002752

namespace A085537

/-- `(2*n)²*lcm(n, n-1)/4` -/
def P15562214124512002752.Spec : Prop :=
  ∀ n, P15562214124512002752.a n = (A085537 n : ℚ)

end A085537

/-! ## A085537.P16393864212617537955

`floor(n²*∑[a(n-1)+2])` with `a(0)=0, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A085537.P16393864212617537955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085537.P16393864212617537955

namespace A085537

/-- `floor(n²*∑[a(n-1)+2])` -/
def P16393864212617537955.Spec : Prop :=
  ∀ n, (P16393864212617537955.a n : ℤ) = A085537 n

end A085537

/-! ## A085537.P14374281923555621164

`A132998(n)+n²`
-/

namespace A085537.P14374281923555621164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132998 n + (n ^ 2 : ℤ)

end

end A085537.P14374281923555621164

namespace A085537

/-- `A132998(n)+n²` -/
def P14374281923555621164.Spec : Prop :=
  ∀ n, P14374281923555621164.a n = A085537 n

end A085537

/-! ## A085537.P5750647375873375838

`A309372(n)-n²`
-/

namespace A085537.P5750647375873375838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309372 n - (n ^ 2 : ℤ)

end

end A085537.P5750647375873375838

namespace A085537

/-- `A309372(n)-n²` -/
def P5750647375873375838.Spec : Prop :=
  ∀ n, P5750647375873375838.a n = A085537 n

end A085537

/-! ## A085537.P5588783436994830010

`A133754(n)/(n+1)`
-/

namespace A085537.P5588783436994830010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133754 n : ℚ) / (n + 1 : ℚ)

end

end A085537.P5588783436994830010

namespace A085537

/-- `A133754(n)/(n+1)` -/
def P5588783436994830010.Spec : Prop :=
  ∀ n, P5588783436994830010.a n = (A085537 n : ℚ)

end A085537

/-! ## A085537.P13284264102204933590

`sqrt((n-1)*A240930(n))`
-/

namespace A085537.P13284264102204933590
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((n : ℤ) - 1) * A240930 n : ℝ)

end

end A085537.P13284264102204933590

namespace A085537

/-- `sqrt((n-1)*A240930(n))` -/
def P13284264102204933590.Spec : Prop :=
  ∀ n, P13284264102204933590.a n = (A085537 n : ℝ)

end A085537

/-! ## A085537.P9713651227590240319

`A000290(n)²-n^3`
-/

namespace A085537.P9713651227590240319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n ^ 2 - (n ^ 3 : ℤ)

end

end A085537.P9713651227590240319

namespace A085537

/-- `A000290(n)²-n^3` -/
def P9713651227590240319.Spec : Prop :=
  ∀ n, P9713651227590240319.a n = A085537 n

end A085537

/-! ## A085537.P3492005689652374344

`A152016(n)+∑[2*n]`
-/

namespace A085537.P3492005689652374344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152016 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A085537.P3492005689652374344

namespace A085537

/-- `A152016(n)+∑[2*n]` -/
def P3492005689652374344.Spec : Prop :=
  ∀ n, P3492005689652374344.a n = A085537 n

end A085537

/-! ## A085537.P1809058263598244035

`A138849(n+1)-1+n`
-/

namespace A085537.P1809058263598244035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138849 (n + 1) - 1 + (n : ℤ)

end

end A085537.P1809058263598244035

namespace A085537

/-- `A138849(n+1)-1+n` -/
def P1809058263598244035.Spec : Prop :=
  ∀ n, P1809058263598244035.a n = A085537 n

end A085537

/-! ## A085537.P347999645510874436

`A085540((n-1)%(n+1))`
-/

namespace A085537.P347999645510874436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085540 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A085537.P347999645510874436

namespace A085537

/-- `A085540((n-1)%(n+1))` -/
def P347999645510874436.Spec : Prop :=
  ∀ n, P347999645510874436.a n = A085537 n

end A085537

/-! ## A085537.P13876988083992229132

`A178617(n)+A003215(n)`
-/

namespace A085537.P13876988083992229132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178617 n + A003215 n

end

end A085537.P13876988083992229132

namespace A085537

/-- `A178617(n)+A003215(n)` -/
def P13876988083992229132.Spec : Prop :=
  ∀ n, P13876988083992229132.a n = A085537 n

end A085537

/-! ## A085537.P6621164921255610255

`A171129(n)+A100855(n)`
-/

namespace A085537.P6621164921255610255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171129 n + A100855 n

end

end A085537.P6621164921255610255

namespace A085537

/-- `A171129(n)+A100855(n)` -/
def P6621164921255610255.Spec : Prop :=
  ∀ n, P6621164921255610255.a n = A085537 n

end A085537

/-! ## A085537.P4369703307219349945

`A024001(n)-A024002(n)`
-/

namespace A085537.P4369703307219349945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024001 n - A024002 n

end

end A085537.P4369703307219349945

namespace A085537

/-- `A024001(n)-A024002(n)` -/
def P4369703307219349945.Spec : Prop :=
  ∀ n, P4369703307219349945.a n = A085537 n

end A085537

/-! ## A085537.P12478919913181963462

`A060884(n)-A002061(n)`
-/

namespace A085537.P12478919913181963462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060884 n - A002061 n

end

end A085537.P12478919913181963462

namespace A085537

/-- `A060884(n)-A002061(n)` -/
def P12478919913181963462.Spec : Prop :=
  ∀ n, P12478919913181963462.a n = A085537 n

end A085537

/-!
# A085538: a(n) = n^5 - n^4.

The programs for A085538, the canonical program `A085538.P4728706090558992157` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085538 has offset 0).

The definition of A085538 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5-n^4` (program `A085538.P4728706090558992157`, by `A085538.P4728706090558992157.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085538.P4728706090558992157

`n^5-n^4`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A085538

/-- `n^5-n^4` -/
def P4728706090558992157.Spec : Prop :=
  ∀ n, P4728706090558992157.a n = A085538 n

theorem P4728706090558992157.correct : P4728706090558992157.Spec := by
  intro n
  simp only [A085538]

end A085538

/-! ## A085538.P8365407894599119854

`and((n-1)*n²², -2)`
-/

namespace A085538.P8365407894599119854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((n : ℤ) - 1) * ((n ^ 2) ^ 2 : ℤ)) (-2)

end

end A085538.P8365407894599119854

namespace A085538

/-- `and((n-1)*n²², -2)` -/
def P8365407894599119854.Spec : Prop :=
  ∀ n, P8365407894599119854.a n = A085538 n

end A085538

/-! ## A085538.P17450163550564366521

`(2*n)^3*C(n, 2)/4`
-/

namespace A085538.P17450163550564366521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 3 * Nat.choose n 2 : ℚ) / 4

end

end A085538.P17450163550564366521

namespace A085538

/-- `(2*n)^3*C(n, 2)/4` -/
def P17450163550564366521.Spec : Prop :=
  ∀ n, P17450163550564366521.a n = (A085538 n : ℚ)

end A085538

/-! ## A085538.P10169518249992381790

`abs((n-1)*gcd(n, 2*n)²²)`
-/

namespace A085538.P10169518249992381790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 1) * ((Nat.gcd n (2 * n) ^ 2) ^ 2 : ℤ)|

end

end A085538.P10169518249992381790

namespace A085538

/-- `abs((n-1)*gcd(n, 2*n)²²)` -/
def P10169518249992381790.Spec : Prop :=
  ∀ n, P10169518249992381790.a n = A085538 n

end A085538

/-! ## A085538.P3788309226046219857

`(n-1)*n²²/gcd(2, 2*n+1)`
-/

namespace A085538.P3788309226046219857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) * ((n ^ 2) ^ 2 : ℤ) : ℚ) / (Nat.gcd 2 (2 * n + 1) : ℚ)

end

end A085538.P3788309226046219857

namespace A085538

/-- `(n-1)*n²²/gcd(2, 2*n+1)` -/
def P3788309226046219857.Spec : Prop :=
  ∀ n, P3788309226046219857.a n = (A085538 n : ℚ)

theorem P3788309226046219857.correct : P3788309226046219857.Spec := by
  intro n
  simp only [A085538, Nat.add_sub_cancel, A085538.P3788309226046219857.a, A085538.P4728706090558992157.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A085538

/-! ## A085538.P8118620590324840165

`A136038(n)/(n+1)`
-/

namespace A085538.P8118620590324840165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136038 n : ℚ) / (n + 1 : ℚ)

end

end A085538.P8118620590324840165

namespace A085538

/-- `A136038(n)/(n+1)` -/
def P8118620590324840165.Spec : Prop :=
  ∀ n, P8118620590324840165.a n = (A085538 n : ℚ)

end A085538

/-! ## A085538.P15694865697553367916

`sqrt((n-1)*A240932(n))`
-/

namespace A085538.P15694865697553367916
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((n : ℤ) - 1) * A240932 n : ℝ)

end

end A085538.P15694865697553367916

namespace A085538

/-- `sqrt((n-1)*A240932(n))` -/
def P15694865697553367916.Spec : Prop :=
  ∀ n, P15694865697553367916.a n = (A085538 n : ℝ)

end A085538

/-! ## A085538.P8898651926264324082

`∑{d}[n-1, n²²*A000010(#)]`
-/

namespace A085538.P8898651926264324082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n ^ 2) ^ 2 : ℤ) * A000010 d

end

end A085538.P8898651926264324082

namespace A085538

/-- `∑{d}[n-1, n²²*A000010(#)]` -/
def P8898651926264324082.Spec : Prop :=
  ∀ n, P8898651926264324082.a n = A085538 n

end A085538

/-!
# A085539: a(n) = n^6 - n^5.

The programs for A085539, the canonical program `A085539.P6868478279782211526` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085539 has offset 0).

The definition of A085539 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6-n^5` (program `A085539.P6868478279782211526`, by `A085539.P6868478279782211526.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085539.P6868478279782211526

`n^6-n^5`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A085539

/-- `n^6-n^5` -/
def P6868478279782211526.Spec : Prop :=
  ∀ n, P6868478279782211526.a n = A085539 n

theorem P6868478279782211526.correct : P6868478279782211526.Spec := by
  intro n
  simp only [A085539]

end A085539

/-! ## A085539.P4153733850868316968

`A240930(n)/A028310(n)`
-/

namespace A085539.P4153733850868316968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240930 n : ℚ) / (A028310 n : ℚ)

end

end A085539.P4153733850868316968

namespace A085539

/-- `A240930(n)/A028310(n)` -/
def P4153733850868316968.Spec : Prop :=
  ∀ n, P4153733850868316968.a n = (A085539 n : ℚ)

end A085539

/-! ## A085539.P3336918290120339503

`A240933(n)/A028310(n)²²`
-/

namespace A085539.P3336918290120339503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240933 n : ℚ) / ((A028310 n ^ 2) ^ 2 : ℚ)

end

end A085539.P3336918290120339503

namespace A085539

/-- `A240933(n)/A028310(n)²²` -/
def P3336918290120339503.Spec : Prop :=
  ∀ n, P3336918290120339503.a n = (A085539 n : ℚ)

end A085539

/-! ## A085539.P16318274773445587298

`(A000584(n)²-A000584(n))/A053699(n)`
-/

namespace A085539.P16318274773445587298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000584 n ^ 2 - A000584 n : ℚ) / (A053699 n : ℚ)

end

end A085539.P16318274773445587298

namespace A085539

/-- `(A000584(n)²-A000584(n))/A053699(n)` -/
def P16318274773445587298.Spec : Prop :=
  ∀ n, P16318274773445587298.a n = (A085539 n : ℚ)

end A085539

/-!
# A085540: a(n) = n*(n + 1)^3.

The programs for A085540, the canonical program `A085540.P1594090999451982572` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085540 has offset 0).

The definition of A085540 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)^3` (program `A085540.P1594090999451982572`, by `A085540.P1594090999451982572.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085540.P1594090999451982572

`n*(n+1)^3`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A085540

/-- `n*(n+1)^3` -/
def P1594090999451982572.Spec : Prop :=
  ∀ n, (P1594090999451982572.a n : ℤ) = A085540 n

theorem P1594090999451982572.correct : P1594090999451982572.Spec := by
  intro n
  simp only [A085540]

end A085540

/-! ## A085540.P4162511172482356898

`lcm(n, (n+1)^3)`
-/

namespace A085540.P4162511172482356898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n ((n + 1) ^ 3)

end

end A085540.P4162511172482356898

namespace A085540

/-- `lcm(n, (n+1)^3)` -/
def P4162511172482356898.Spec : Prop :=
  ∀ n, (P4162511172482356898.a n : ℤ) = A085540 n

end A085540

/-! ## A085540.P1317646511867486409

`floor(n/acot((n+1)^3))`
-/

namespace A085540.P1317646511867486409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / SequenceMachineLib.acot ((n + 1) ^ 3 : ℝ)⌋

end

end A085540.P1317646511867486409

namespace A085540

/-- `floor(n/acot((n+1)^3))` -/
def P1317646511867486409.Spec : Prop :=
  ∀ n, P1317646511867486409.a n = A085540 n

end A085540

/-! ## A085540.P14710853973137278246

`round(n/acot((n+1)^3))`
-/

namespace A085540.P14710853973137278246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot ((n + 1) ^ 3 : ℝ))

end

end A085540.P14710853973137278246

namespace A085540

/-- `round(n/acot((n+1)^3))` -/
def P14710853973137278246.Spec : Prop :=
  ∀ n, P14710853973137278246.a n = A085540 n

end A085540

/-! ## A085540.P13289526713968610422

`n/tan(acot((n+1)^3))`
-/

namespace A085540.P13289526713968610422
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / Real.tan (SequenceMachineLib.acot ((n + 1) ^ 3 : ℝ))

end

end A085540.P13289526713968610422

namespace A085540

/-- `n/tan(acot((n+1)^3))` -/
def P13289526713968610422.Spec : Prop :=
  ∀ n, P13289526713968610422.a n = (A085540 n : ℝ)

end A085540

/-! ## A085540.P12633095395552726966

`n/C(n+1, n)^-3`
-/

namespace A085540.P12633095395552726966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.choose (n + 1) n : ℚ) ^ (-3 : ℤ)

end

end A085540.P12633095395552726966

namespace A085540

/-- `n/C(n+1, n)^-3` -/
def P12633095395552726966.Spec : Prop :=
  ∀ n, P12633095395552726966.a n = (A085540 n : ℚ)

theorem P12633095395552726966.correct : P12633095395552726966.Spec := by
  intro n
  simp only [A085540, Nat.add_sub_cancel, A085540.P12633095395552726966.a, A085540.P1594090999451982572.a, SequenceMachineLib.memo_apply]
  try simp

end A085540

/-! ## A085540.P5017503883882334459

`(n²+n)/tan(acot(n+1))²`
-/

namespace A085540.P5017503883882334459
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℝ) / Real.tan (SequenceMachineLib.acot (n + 1 : ℝ)) ^ 2

end

end A085540.P5017503883882334459

namespace A085540

/-- `(n²+n)/tan(acot(n+1))²` -/
def P5017503883882334459.Spec : Prop :=
  ∀ n, P5017503883882334459.a n = (A085540 n : ℝ)

end A085540

/-! ## A085540.P8541158054261043565

`(n²+n)/cot(atan(n+1))²`
-/

namespace A085540.P8541158054261043565
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℝ) / Real.cot (Real.arctan (n + 1 : ℝ)) ^ 2

end

end A085540.P8541158054261043565

namespace A085540

/-- `(n²+n)/cot(atan(n+1))²` -/
def P8541158054261043565.Spec : Prop :=
  ∀ n, P8541158054261043565.a n = (A085540 n : ℝ)

end A085540

/-! ## A085540.P12643145841604190902

`record[(1-n)^4]-(n+1)^3`
-/

namespace A085540.P12643145841604190902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((n + 1) ^ 3 : ℤ)

end

end A085540.P12643145841604190902

namespace A085540

/-- `record[(1-n)^4]-(n+1)^3` -/
def P12643145841604190902.Spec : Prop :=
  ∀ n, P12643145841604190902.a n = A085540 n

end A085540

/-! ## A085540.P4045721874580449766

`∑[n*∑[a(n-1)+8]]` with `a(0)=1, a(1)=7`
-/

namespace A085540.P4045721874580449766
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085540.P4045721874580449766

namespace A085540

/-- `∑[n*∑[a(n-1)+8]]` -/
def P4045721874580449766.Spec : Prop :=
  ∀ n, (P4045721874580449766.a n : ℤ) = A085540 n

end A085540

/-! ## A085540.P3260927718662934793

`n%(n+1)/(n+1)^-3`
-/

namespace A085540.P3260927718662934793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % (n + 1) : ℕ) : ℚ) / (n + 1 : ℚ) ^ (-3 : ℤ)

end

end A085540.P3260927718662934793

namespace A085540

/-- `n%(n+1)/(n+1)^-3` -/
def P3260927718662934793.Spec : Prop :=
  ∀ n, P3260927718662934793.a n = (A085540 n : ℚ)

theorem P3260927718662934793.correct : P3260927718662934793.Spec := by
  intro n
  simp only [A085540, Nat.add_sub_cancel, A085540.P3260927718662934793.a, A085540.P1594090999451982572.a, SequenceMachineLib.memo_apply]
  try simp

end A085540

/-! ## A085540.P1420524002834252105

`and((n+1)²*∑[2*n], -2)`
-/

namespace A085540.P1420524002834252105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((n + 1) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) (-2)

end

end A085540.P1420524002834252105

namespace A085540

/-- `and((n+1)²*∑[2*n], -2)` -/
def P1420524002834252105.Spec : Prop :=
  ∀ n, P1420524002834252105.a n = A085540 n

end A085540

/-! ## A085540.P15523321285939036116

`n*record[(1-n)²²]/(n+1)`
-/

namespace A085540.P15523321285939036116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)

end

end A085540.P15523321285939036116

namespace A085540

/-- `n*record[(1-n)²²]/(n+1)` -/
def P15523321285939036116.Spec : Prop :=
  ∀ n, P15523321285939036116.a n = (A085540 n : ℚ)

end A085540

/-! ## A085540.P7501812404001892325

`floor((n+1)*n/acot((n+1)²))`
-/

namespace A085540.P7501812404001892325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * ((n : ℝ) / SequenceMachineLib.acot ((n + 1) ^ 2 : ℝ))⌋

end

end A085540.P7501812404001892325

namespace A085540

/-- `floor((n+1)*n/acot((n+1)²))` -/
def P7501812404001892325.Spec : Prop :=
  ∀ n, P7501812404001892325.a n = A085540 n

end A085540

/-! ## A085540.P6759651401078726602

`round((n+1)*n/acot((n+1)²))`
-/

namespace A085540.P6759651401078726602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) * ((n : ℝ) / SequenceMachineLib.acot ((n + 1) ^ 2 : ℝ)))

end

end A085540.P6759651401078726602

namespace A085540

/-- `round((n+1)*n/acot((n+1)²))` -/
def P6759651401078726602.Spec : Prop :=
  ∀ n, P6759651401078726602.a n = A085540 n

end A085540

/-! ## A085540.P4518486911760847256

`((n+1)^7)%((n+1)^4-n)`
-/

namespace A085540.P4518486911760847256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) ^ 7 : ℤ) (((n + 1) ^ 4 : ℤ) - (n : ℤ))

end

end A085540.P4518486911760847256

namespace A085540

/-- `((n+1)^7)%((n+1)^4-n)` -/
def P4518486911760847256.Spec : Prop :=
  ∀ n, P4518486911760847256.a n = A085540 n

end A085540

/-! ## A085540.P4338190701614766411

`∑[lcm(2, 2*n)]/(1/(n+1))²`
-/

namespace A085540.P4338190701614766411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (1 / (n + 1 : ℚ)) ^ 2

end

end A085540.P4338190701614766411

namespace A085540

/-- `∑[lcm(2, 2*n)]/(1/(n+1))²` -/
def P4338190701614766411.Spec : Prop :=
  ∀ n, P4338190701614766411.a n = (A085540 n : ℚ)

end A085540

/-! ## A085540.P3447658662854270236

`n/(n+1)^(gcd(n, n+1)-4)`
-/

namespace A085540.P3447658662854270236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 1 : ℚ) ^ ((Nat.gcd n (n + 1) : ℤ) - 4 : ℤ)

end

end A085540.P3447658662854270236

namespace A085540

/-- `n/(n+1)^(gcd(n, n+1)-4)` -/
def P3447658662854270236.Spec : Prop :=
  ∀ n, P3447658662854270236.a n = (A085540 n : ℚ)

theorem P3447658662854270236.correct : P3447658662854270236.Spec := by
  intro n
  simp only [A085540, Nat.add_sub_cancel, A085540.P3447658662854270236.a, A085540.P1594090999451982572.a, SequenceMachineLib.memo_apply]
  try simp

end A085540

/-! ## A085540.P1140382687462588129

`∑[2*n]/(1/C(n+1, n))²`
-/

namespace A085540.P1140382687462588129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (1 / (Nat.choose (n + 1) n : ℚ)) ^ 2

end

end A085540.P1140382687462588129

namespace A085540

/-- `∑[2*n]/(1/C(n+1, n))²` -/
def P1140382687462588129.Spec : Prop :=
  ∀ n, P1140382687462588129.a n = (A085540 n : ℚ)

end A085540

/-!
# A085542: Determinant of the n X n matrix M_(i,j)=i/gcd(i,j)=lcm(i,j)/j.

The programs for A085542, there is no canonical definition to state claims against.
-/

/-! ## A085542.P3367433154715231146

`∏[∏{p}[n+1, 1-#]]`
-/

namespace A085542.P3367433154715231146
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (1 - (p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085542.P3367433154715231146

/-! ## A085542.P8021168829987424941

`a(n-1)*∏{p}[n+1, 1-#]` with `a(0)=1`
-/

namespace A085542.P8021168829987424941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ)))

end

end A085542.P8021168829987424941

/-! ## A085542.P3824792008979053966

`∏[A023900(n+1)]`
-/

namespace A085542.P3824792008979053966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085542.P3824792008979053966

/-! ## A085542.P18150128674820630935

`∏[A395496((n+1)²)]`
-/

namespace A085542.P18150128674820630935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395496 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085542.P18150128674820630935

/-! ## A085542.P5613474227115017654

`∏[A231425(∑[n+1])]`
-/

namespace A085542.P5613474227115017654
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231425 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085542.P5613474227115017654

/-! ## A085542.P9370616151237885976

`∏[A334312(∑[n+1])]`
-/

namespace A085542.P9370616151237885976
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334312 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085542.P9370616151237885976

/-! ## A085542.P18037076239691900338

`∏[A366444(∑[n+1])]`
-/

namespace A085542.P18037076239691900338
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366444 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085542.P18037076239691900338

/-! ## A085542.P7298928030141765323

`∏[A322324(∑[n+2])]`
-/

namespace A085542.P7298928030141765323
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322324 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085542.P7298928030141765323

/-! ## A085542.P16348104093040987388

`a(n-1)*A023900((n+1)²)` with `a(0)=1`
-/

namespace A085542.P16348104093040987388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A023900 ((n + 1) ^ 2)

end

end A085542.P16348104093040987388

/-! ## A085542.P341947998523144351

`A060239(n+1)/A001088(n+1)`
-/

namespace A085542.P341947998523144351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060239 (n + 1) : ℚ) / (A001088 (n + 1) : ℚ)

end

end A085542.P341947998523144351

/-!
# A085543: Number of divisors of the partition numbers (A000041).

The programs for A085543, there is no canonical definition to state claims against.
-/

/-! ## A085543.P14147212014378997479

`A000005(A000041(n))`
-/

namespace A085543.P14147212014378997479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000041 n).toNat

end

end A085543.P14147212014378997479

/-! ## A085543.P2547852461814185588

`∏{e}[A278241(n), #+1]`
-/

namespace A085543.P2547852461814185588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A085543.P2547852461814185588

/-! ## A085543.P8588043813462393179

`∑{d}[A278241(n), gcd(#, A340777(n))]`
-/

namespace A085543.P8588043813462393179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.gcd (d : ℤ) (A340777 n)

end

end A085543.P8588043813462393179

/-! ## A085543.P4194933960251155089

`∑{d}[A278241(n), A000041(C(2, 3*#))]`
-/

namespace A085543.P4194933960251155089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000041 (Nat.choose 2 (3 * d))

end

end A085543.P4194933960251155089

/-! ## A085543.P7792602396399034748

`A000005(A278241(n))`
-/

namespace A085543.P7792602396399034748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278241 n).toNat

end

end A085543.P7792602396399034748

/-! ## A085543.P1229323083243983267

`A320111(2*A278241(n))`
-/

namespace A085543.P1229323083243983267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * A278241 n).toNat

end

end A085543.P1229323083243983267

/-! ## A085543.P13349049022974135841

`∑{d}[A278241(n), A054977(#)]`
-/

namespace A085543.P13349049022974135841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A054977 d

end

end A085543.P13349049022974135841

/-! ## A085543.P17695919320365578562

`∑{d}[A278241(n), A057427(#)]`
-/

namespace A085543.P17695919320365578562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A085543.P17695919320365578562

/-! ## A085543.P1281443884580851777

`∑{d}[A278241(n), A204177(A020639(#))]`
-/

namespace A085543.P1281443884580851777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A204177 (A020639 d).toNat

end

end A085543.P1281443884580851777

/-! ## A085543.P10254875409986342177

`∑{d}[A278241(n), A322865(A006530(#))]`
-/

namespace A085543.P10254875409986342177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A322865 (A006530 d).toNat

end

end A085543.P10254875409986342177

/-!
# A085544: n-th partition number (A000041) sets a new record for number of divisors.

The programs for A085544, there is no canonical definition to state claims against.
-/

/-! ## A085544.P5620508423735131823

`A154789(n+1)%(3^n)`
-/

namespace A085544.P5620508423735131823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154789 (n + 1)) (3 ^ n : ℤ)

end

end A085544.P5620508423735131823

/-! ## A085544.P136430252580714852

`A087156(A154789(n+1))`
-/

namespace A085544.P136430252580714852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A154789 (n + 1)).toNat

end

end A085544.P136430252580714852

/-! ## A085544.P13222098846370768624

`A154789(n+1)-A000007(n)`
-/

namespace A085544.P13222098846370768624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154789 (n + 1) - A000007 n

end

end A085544.P13222098846370768624

/-! ## A085544.P2581772288413426420

`A154789(n+1)-A058348(n)`
-/

namespace A085544.P2581772288413426420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154789 (n + 1) - A058348 n

end

end A085544.P2581772288413426420

/-! ## A085544.P10731025545564706530

`A154789(n+1)-A088157(n)`
-/

namespace A085544.P10731025545564706530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154789 (n + 1) - A088157 n

end

end A085544.P10731025545564706530

/-!
# A085549: Number of isomorphism classes of connected 4-regular multigraphs of order n, loops allowed.

The programs for A085549, there is no canonical definition to state claims against.
-/

/-! ## A085549.P3476247294866460891

`record[A333397(A052905(n))]`
-/

namespace A085549.P3476247294866460891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333397 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085549.P3476247294866460891

/-! ## A085549.P9494211100168814186

`A333397(A052905(n+3))`
-/

namespace A085549.P9494211100168814186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333397 (A052905 (n + 3)).toNat

end

end A085549.P9494211100168814186

/-! ## A085549.P12003825795830213599

`A333397(eq[3, A219347(n)])`
-/

namespace A085549.P12003825795830213599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A085549.P12003825795830213599

/-! ## A085549.P6075947665480897878

`A333397(A000124(n+6)-6)`
-/

namespace A085549.P6075947665480897878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333397 (A000124 (n + 6) - 6).toNat

end

end A085549.P6075947665480897878

/-! ## A085549.P3370685742618735693

`A333397(Δ[A023551(n+1)]+1)`
-/

namespace A085549.P3370685742618735693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333397 (f1 (n + 1) - f1 n + 1).toNat

end

end A085549.P3370685742618735693

/-!
# A085550: Decimal expansion of (sqrt(13)-3)/2.

The programs for A085550, there is no canonical definition to state claims against.
-/

/-! ## A085550.P11593798417902284532

`A098316(n+1)`
-/

namespace A085550.P11593798417902284532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098316 (n + 1 + 1)

end

end A085550.P11593798417902284532

/-! ## A085550.P8471730204697046653

`A209927(n+1)`
-/

namespace A085550.P8471730204697046653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209927 (n + 1 + 1)

end

end A085550.P8471730204697046653

/-! ## A085550.P10464266975051152904

`A223139(n+1)`
-/

namespace A085550.P10464266975051152904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223139 (n + 1 + 1)

end

end A085550.P10464266975051152904

/-! ## A085550.P13661899980439661465

`A098316(n)-Δ[-A098316(n)]`
-/

namespace A085550.P13661899980439661465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A098316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098316 (n + 1) - (f1 (n + 1) - f1 n)

end

end A085550.P13661899980439661465

/-!
# A085551: Decimal expansion of (sqrt(29)-5)/2.

The programs for A085551, there is no canonical definition to state claims against.
-/

/-! ## A085551.P851052380926457206

`A098318(n+1)`
-/

namespace A085551.P851052380926457206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098318 (n + 1 + 1)

end

end A085551.P851052380926457206

/-! ## A085551.P2233591768492706683

`A223140(n+1)`
-/

namespace A085551.P2233591768492706683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223140 (n + 1 + 1)

end

end A085551.P2233591768492706683

/-! ## A085551.P6481061713169966288

`A223141(n+1)`
-/

namespace A085551.P6481061713169966288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223141 (n + 1 + 1)

end

end A085551.P6481061713169966288

/-! ## A085551.P18446048624060394078

`A223140(n)-Δ[-A223140(n)]`
-/

namespace A085551.P18446048624060394078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A223140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223140 (n + 1) - (f1 (n + 1) - f1 n)

end

end A085551.P18446048624060394078

/-!
# A085553: Lesser of twin primes of the form x^2+4, x^2+6.

The programs for A085553, there is no canonical definition to state claims against.
-/

/-! ## A085553.P5627867608758826110

`A253640(n+1)-2`
-/

namespace A085553.P5627867608758826110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253640 (n + 1) - 2

end

end A085553.P5627867608758826110

/-! ## A085553.P16844687923195522389

`xor(A020639(A016825(n)), A253640(n+1))`
-/

namespace A085553.P16844687923195522389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020639 (A016825 n).toNat) (A253640 (n + 1))

end

end A085553.P16844687923195522389

/-! ## A085553.P9693960789173875920

`xor(A000005(A151800(n)), A253640(n+1))`
-/

namespace A085553.P9693960789173875920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000005 (A151800 n).toNat) (A253640 (n + 1))

end

end A085553.P9693960789173875920

/-! ## A085553.P14123903887684778877

`xor(A000005(A001097(n+1)), A253640(n+1))`
-/

namespace A085553.P14123903887684778877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000005 (A001097 (n + 1)).toNat) (A253640 (n + 1))

end

end A085553.P14123903887684778877

/-! ## A085553.P16125016413064768832

`xor(A000005(A216311(n+1)), A253640(n+1))`
-/

namespace A085553.P16125016413064768832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000005 (A216311 (n + 1)).toNat) (A253640 (n + 1))

end

end A085553.P16125016413064768832

/-! ## A085553.P11847122138173339753

`xor(A000005(A062584(n)), A253640(n+1))`
-/

namespace A085553.P11847122138173339753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000005 (A062584 n).toNat) (A253640 (n + 1))

end

end A085553.P11847122138173339753

/-! ## A085553.P12159018683443341850

`xor(A020639(A140513(n)), A253640(n+1))`
-/

namespace A085553.P12159018683443341850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020639 (A140513 n).toNat) (A253640 (n + 1))

end

end A085553.P12159018683443341850

/-!
# A085554: Greater of twin primes of the form x^2+2, x^2+4.

The programs for A085554, there is no canonical definition to state claims against.
-/

/-! ## A085554.P6892530140929822096

`A253639(n+1)+2`
-/

namespace A085554.P6892530140929822096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253639 (n + 1) + 2

end

end A085554.P6892530140929822096

/-! ## A085554.P12096201608523428816

`A087475(A086381(n+1))`
-/

namespace A085554.P12096201608523428816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 (A086381 (n + 1)).toNat

end

end A085554.P12096201608523428816

/-! ## A085554.P11845718087099697473

`A257547(n+1)/2+3`
-/

namespace A085554.P11845718087099697473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257547 (n + 1) : ℚ) / 2 + 3

end

end A085554.P11845718087099697473

/-! ## A085554.P8031454931779348508

`xor(4, A086381(record[A093178(n)]-n)²)`
-/

namespace A085554.P8031454931779348508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A086381 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat ^ 2)

end

end A085554.P8031454931779348508

/-! ## A085554.P6538180615191546094

`A257049(n+1)/(2*A086381(n+1))+2`
-/

namespace A085554.P6538180615191546094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257049 (n + 1) : ℚ) / (2 * A086381 (n + 1) : ℚ) + 2

end

end A085554.P6538180615191546094

/-! ## A085554.P14915394381865323367

`A000290(or(1, A086381(n+1)))+4`
-/

namespace A085554.P14915394381865323367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.lor 1 (A086381 (n + 1))).toNat + 4

end

end A085554.P14915394381865323367

/-! ## A085554.P3088184178827759972

`A261327(A086381(2*n+1-n))`
-/

namespace A085554.P3088184178827759972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261327 (A086381 (2 * n + 1 - n)).toNat

end

end A085554.P3088184178827759972

/-! ## A085554.P13447229358367973719

`A059100(A086381(n+1))+A020639(2*(n+1))`
-/

namespace A085554.P13447229358367973719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 (A086381 (n + 1)).toNat + A020639 (2 * (n + 1))

end

end A085554.P13447229358367973719

/-!
# A085555: Primes p of the form x^2+4, such that either p-2 or p+2 is prime.

The programs for A085555, there is no canonical definition to state claims against.
-/

/-! ## A085555.P7621013106825374288

`∪[A085553(n+1), A085554(n+1)]`
-/

namespace A085555.P7621013106825374288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A085555.P7621013106825374288

/-! ## A085555.P6844240778552337649

`∪[A085553(n+1), A253639(n+1)+2]`
-/

namespace A085555.P6844240778552337649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253639 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A085555.P6844240778552337649

/-! ## A085555.P1570209517312232782

`∪[A085553(n+1), A086381(n+1)²+4]`
-/

namespace A085555.P1570209517312232782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086381 (n + 1) ^ 2 + 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A085555.P1570209517312232782

/-! ## A085555.P5915273596149787242

`∪[A253639(n+1)+2, A253640(n+1)-2]`
-/

namespace A085555.P5915273596149787242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253639 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253640 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A085555.P5915273596149787242

/-! ## A085555.P9088117655036888429

`∪[A086381(n+1)²+4, A253640(n+1)-2]`
-/

namespace A085555.P9088117655036888429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086381 (n + 1) ^ 2 + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253640 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A085555.P9088117655036888429

/-!
# A085556: Numbers that have exactly as many prime digits as nonprime digits.

The programs for A085556, the canonical program `A085556.P17458662161148091975` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085556 has offset 1).

The definition of A085556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085556.P1187298389698486598

`eq[A193238(n), A276729(n)]`
-/

namespace A085556.P1187298389698486598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085556.P1187298389698486598

namespace A085556

/-- `eq[A193238(n), A276729(n)]` -/
def P1187298389698486598.Spec : Prop :=
  ∀ n, (P1187298389698486598.a n : ℤ) = A085556 (n + 1)

end A085556

/-! ## A085556.P1309593096292239223

`eq[2*A193238(n), A055642(n)]`
-/

namespace A085556.P1309593096292239223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193238 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085556.P1309593096292239223

namespace A085556

/-- `eq[2*A193238(n), A055642(n)]` -/
def P1309593096292239223.Spec : Prop :=
  ∀ n, (P1309593096292239223.a n : ℤ) = A085556 (n + 1)

end A085556

/-! ## A085556.P17458662161148091975

`eq[2*A276729(n), A055642(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A085556

/-- `eq[2*A276729(n), A055642(n)]` -/
def P17458662161148091975.Spec : Prop :=
  ∀ n, (P17458662161148091975.a n : ℤ) = A085556 (n + 1)

theorem P17458662161148091975.correct : P17458662161148091975.Spec := by
  intro n
  simp only [A085556, Nat.add_sub_cancel]

end A085556

/-!
# A085557: Numbers that have more prime digits than nonprime digits.

The programs for A085557, the canonical program `A085557.P11800029967216506154` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085557 has offset 1).

The definition of A085557 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2084 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085557.P8225935339482092962

`lt[A276729(n), A193238(n)]`
-/

namespace A085557.P8225935339482092962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085557.P8225935339482092962

namespace A085557

/-- `lt[A276729(n), A193238(n)]` -/
def P8225935339482092962.Spec : Prop :=
  ∀ n, (P8225935339482092962.a n : ℤ) = A085557 (n + 1)

end A085557

/-! ## A085557.P10363696999830671359

`lt[log2(A055642(n)), A193238(n)]`
-/

namespace A085557.P10363696999830671359
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A055642 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A085557.P10363696999830671359

namespace A085557

/-- `lt[log2(A055642(n)), A193238(n)]` -/
def P10363696999830671359.Spec : Prop :=
  ∀ n, (P10363696999830671359.a n : ℤ) = A085557 (n + 1)

end A085557

/-! ## A085557.P9085126740898506478

`lt[A276729(n), atan(A178334(n))]`
-/

namespace A085557.P9085126740898506478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A178334 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A085557.P9085126740898506478

namespace A085557

/-- `lt[A276729(n), atan(A178334(n))]` -/
def P9085126740898506478.Spec : Prop :=
  ∀ n, (P9085126740898506478.a n : ℤ) = A085557 (n + 1)

end A085557

/-! ## A085557.P4867776790605905224

`lt[A276729(n), acot(A162288(n))]`
-/

namespace A085557.P4867776790605905224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A162288 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A085557.P4867776790605905224

namespace A085557

/-- `lt[A276729(n), acot(A162288(n))]` -/
def P4867776790605905224.Spec : Prop :=
  ∀ n, (P4867776790605905224.a n : ℤ) = A085557 (n + 1)

end A085557

/-! ## A085557.P11800029967216506154

`lt[2*A276729(n), A055642(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A085557

/-- `lt[2*A276729(n), A055642(n)]` -/
def P11800029967216506154.Spec : Prop :=
  ∀ n, (P11800029967216506154.a n : ℤ) = A085557 (n + 1)

theorem P11800029967216506154.correct : P11800029967216506154.Spec := by
  intro n
  simp only [A085557, Nat.add_sub_cancel]

end A085557

/-! ## A085557.P6253007932319093991

`lt[2*A276729(n), A262190(n)]`
-/

namespace A085557.P6253007932319093991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276729 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262190 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085557.P6253007932319093991

namespace A085557

/-- `lt[2*A276729(n), A262190(n)]` -/
def P6253007932319093991.Spec : Prop :=
  ∀ n, (P6253007932319093991.a n : ℤ) = A085557 (n + 1)

end A085557

/-! ## A085557.P16354456497466832989

`lt[2*A276729(n), A004218(n+1)]`
-/

namespace A085557.P16354456497466832989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276729 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085557.P16354456497466832989

namespace A085557

/-- `lt[2*A276729(n), A004218(n+1)]` -/
def P16354456497466832989.Spec : Prop :=
  ∀ n, (P16354456497466832989.a n : ℤ) = A085557 (n + 1)

end A085557

/-! ## A085557.P5495657555701031778

`lt[A276729(n), A257994(A113581(n))]`
-/

namespace A085557.P5495657555701031778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A113581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085557.P5495657555701031778

namespace A085557

/-- `lt[A276729(n), A257994(A113581(n))]` -/
def P5495657555701031778.Spec : Prop :=
  ∀ n, (P5495657555701031778.a n : ℤ) = A085557 (n + 1)

end A085557

/-!
# A085558: Numbers that have more nonprime digits than prime digits.

The programs for A085558, the canonical program `A085558.P6709029927985617951` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085558 has offset 1).

The definition of A085558 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4705 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085558.P13387347222466851706

`lt[A193238(n), A276729(n)]`
-/

namespace A085558.P13387347222466851706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085558.P13387347222466851706

namespace A085558

/-- `lt[A193238(n), A276729(n)]` -/
def P13387347222466851706.Spec : Prop :=
  ∀ n, (P13387347222466851706.a n : ℤ) = A085558 (n + 1)

end A085558

/-! ## A085558.P6709029927985617951

`lt[log2(A055642(n)), A276729(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A085558

/-- `lt[log2(A055642(n)), A276729(n)]` -/
def P6709029927985617951.Spec : Prop :=
  ∀ n, (P6709029927985617951.a n : ℤ) = A085558 (n + 1)

theorem P6709029927985617951.correct : P6709029927985617951.Spec := by
  intro n
  simp only [A085558, Nat.add_sub_cancel]

end A085558

/-! ## A085558.P10510396507911947294

`lt[2*A193238(n), A055642(n)]`
-/

namespace A085558.P10510396507911947294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193238 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085558.P10510396507911947294

namespace A085558

/-- `lt[2*A193238(n), A055642(n)]` -/
def P10510396507911947294.Spec : Prop :=
  ∀ n, (P10510396507911947294.a n : ℤ) = A085558 (n + 1)

end A085558

/-! ## A085558.P2790359395330175602

`lt[A257994(A113581(n)), A276729(n)]`
-/

namespace A085558.P2790359395330175602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A113581 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085558.P2790359395330175602

namespace A085558

/-- `lt[A257994(A113581(n)), A276729(n)]` -/
def P2790359395330175602.Spec : Prop :=
  ∀ n, (P2790359395330175602.a n : ℤ) = A085558 (n + 1)

end A085558

/-! ## A085558.P9691409337014364011

`lt[atan(A178334(n²)), A276729(n)]`
-/

namespace A085558.P9691409337014364011
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A178334 (n ^ 2) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A085558.P9691409337014364011

namespace A085558

/-- `lt[atan(A178334(n²)), A276729(n)]` -/
def P9691409337014364011.Spec : Prop :=
  ∀ n, (P9691409337014364011.a n : ℤ) = A085558 (n + 1)

end A085558

/-!
# A085559: Smallest number expressible as the sum of three 4th powers in at least n ways.

The programs for A085559, there is no canonical definition to state claims against.
-/

/-! ## A085559.P5238320496079348309

`A123075(A290759(n)+A029970(n+1))`
-/

namespace A085559.P5238320496079348309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123075 (A290759 n + A029970 (n + 1)).toNat

end

end A085559.P5238320496079348309

/-! ## A085559.P17734796078671811702

`A123075(A250408(n+1)+A070914(n))`
-/

namespace A085559.P17734796078671811702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123075 (A250408 (n + 1) + A070914 n).toNat

end

end A085559.P17734796078671811702

/-! ## A085559.P7370454933215247126

`A123075(A119338(n+1)+A029970(n+1))`
-/

namespace A085559.P7370454933215247126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123075 (A119338 (n + 1) + A029970 (n + 1)).toNat

end

end A085559.P7370454933215247126

/-! ## A085559.P14559956269146161264

`A123075(A250408(n+1)+A119338(n+1))`
-/

namespace A085559.P14559956269146161264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123075 (A250408 (n + 1) + A119338 (n + 1)).toNat

end

end A085559.P14559956269146161264

/-! ## A085559.P7529160988883859643

`A123075(A265554(n)+1)`
-/

namespace A085559.P7529160988883859643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123075 (A265554 n + 1).toNat

end

end A085559.P7529160988883859643

/-!
# A085560: a(0) = 1, a(1)=3, a(n) = floor((e + 1/e)*a(n-1) - a(n-2)).

The programs for A085560, the canonical program `A085560.P18340566416336397361` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085560 has offset 0).

The definition of A085560 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((e+1/e)*a(n-1)-a(n-2))` (program `A085560.P18340566416336397361`, by `A085560.P18340566416336397361.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085560.P18340566416336397361

`floor((e+1/e)*a(n-1)-a(n-2))` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A085560

/-- `floor((e+1/e)*a(n-1)-a(n-2))` -/
def P18340566416336397361.Spec : Prop :=
  ∀ n, P18340566416336397361.a n = A085560 n

theorem P18340566416336397361.correct : P18340566416336397361.Spec := by
  intro n
  simp only [A085560]

end A085560

/-! ## A085560.P17092871824666248935

`A034887(floor(sqrt(A329674(2*n+3))))`
-/

namespace A085560.P17092871824666248935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (Int.sqrt (A329674 (2 * n + 3))).toNat

end

end A085560.P17092871824666248935

namespace A085560

/-- `A034887(floor(sqrt(A329674(2*n+3))))` -/
def P17092871824666248935.Spec : Prop :=
  ∀ n, P17092871824666248935.a n = A085560 n

end A085560

/-! ## A085560.P14582219927022239286

`round(A221780(∑[n+2])/A059507(n+1))`
-/

namespace A085560.P14582219927022239286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A221780 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A059507 (n + 1) : ℚ))

end

end A085560.P14582219927022239286

namespace A085560

/-- `round(A221780(∑[n+2])/A059507(n+1))` -/
def P14582219927022239286.Spec : Prop :=
  ∀ n, P14582219927022239286.a n = A085560 n

end A085560

/-! ## A085560.P10390581997293451638

`round(A221929(∑[n+2])/A059507(n+1))`
-/

namespace A085560.P10390581997293451638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A221929 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A059507 (n + 1) : ℚ))

end

end A085560.P10390581997293451638

namespace A085560

/-- `round(A221929(∑[n+2])/A059507(n+1))` -/
def P10390581997293451638.Spec : Prop :=
  ∀ n, P10390581997293451638.a n = A085560 n

end A085560

/-!
# A085561: Number of prime divisors of the partition numbers (counted with multiplicity).

The programs for A085561, there is no canonical definition to state claims against.
-/

/-! ## A085561.P380012844866443583

`A001222(A000041(n))`
-/

namespace A085561.P380012844866443583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000041 n).toNat

end

end A085561.P380012844866443583

/-! ## A085561.P4279714622995548379

`∑{e}[A278241(n), #]`
-/

namespace A085561.P4279714622995548379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A085561.P4279714622995548379

/-! ## A085561.P1386542808234837019

`log2(∏{e}[A278241(n), A000079(#)])`
-/

namespace A085561.P1386542808234837019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000079 (Nat.factorization (f1 n).natAbs p) : ℤ) : ℝ)

end

end A085561.P1386542808234837019

/-! ## A085561.P12833620246278021279

`A001222(∏{e}[A278241(n), A000079(#)])`
-/

namespace A085561.P12833620246278021279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000079 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A085561.P12833620246278021279

/-! ## A085561.P4933493487702599440

`A000005(∏{e}[A278241(n), A000079(#)])-1`
-/

namespace A085561.P4933493487702599440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000079 (Nat.factorization (f1 n).natAbs p)).toNat - 1

end

end A085561.P4933493487702599440

/-! ## A085561.P7673948380612371574

`A133700(∏{e}[A278241(n), A000079(#)])-1`
-/

namespace A085561.P7673948380612371574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133700 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000079 (Nat.factorization (f1 n).natAbs p)).toNat - 1

end

end A085561.P7673948380612371574

/-! ## A085561.P4260091456396873216

`A001222(A278241(n))`
-/

namespace A085561.P4260091456396873216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278241 n).toNat

end

end A085561.P4260091456396873216

/-! ## A085561.P12190264380358764272

`A325226(13*A278241(n))`
-/

namespace A085561.P12190264380358764272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325226 (13 * A278241 n).toNat

end

end A085561.P12190264380358764272

/-! ## A085561.P7737205038562739189

`A325226(lcm(13, A278241(n)))`
-/

namespace A085561.P7737205038562739189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325226 (Int.lcm 13 (A278241 n))

end

end A085561.P7737205038562739189

/-! ## A085561.P7781219876590506128

`A065770(A278241(n))%A000124(n)`
-/

namespace A085561.P7781219876590506128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065770 (A278241 n).toNat) (A000124 n)

end

end A085561.P7781219876590506128

/-!
# A085562: Sum of the nonprime digits of n.

The programs for A085562, the canonical program `A085562.P13309010936247143976` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085562 has offset 1).

The definition of A085562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085562.P5442019267864822683

`∑{digits}[A380490(n+1), #]`
-/

namespace A085562.P5442019267864822683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380490 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A085562.P5442019267864822683

namespace A085562

/-- `∑{digits}[A380490(n+1), #]` -/
def P5442019267864822683.Spec : Prop :=
  ∀ n, (P5442019267864822683.a n : ℤ) = A085562 (n + 1)

end A085562

/-! ## A085562.P9347779881259306157

`∑{digits}[n+1, #*A024937(#+1)]`
-/

namespace A085562.P9347779881259306157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℤ) * A024937 (x + 1)).sum

end

end A085562.P9347779881259306157

namespace A085562

/-- `∑{digits}[n+1, #*A024937(#+1)]` -/
def P9347779881259306157.Spec : Prop :=
  ∀ n, P9347779881259306157.a n = A085562 (n + 1)

end A085562

/-! ## A085562.P12320366919414476847

`A007953(A380490(n+1))`
-/

namespace A085562.P12320366919414476847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A380490 (n + 1)).toNat

end

end A085562.P12320366919414476847

namespace A085562

/-- `A007953(A380490(n+1))` -/
def P12320366919414476847.Spec : Prop :=
  ∀ n, P12320366919414476847.a n = A085562 (n + 1)

end A085562

/-! ## A085562.P13309010936247143976

`A007953(n+1)-A085563(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A085562

/-- `A007953(n+1)-A085563(n+1)` -/
def P13309010936247143976.Spec : Prop :=
  ∀ n, P13309010936247143976.a n = A085562 (n + 1)

theorem P13309010936247143976.correct : P13309010936247143976.Spec := by
  intro n
  simp only [A085562, Nat.add_sub_cancel]

end A085562

/-! ## A085562.P5782163749304868569

`∑{digits}[n+1, lcm(#, A072721(A072721(#)))]`
-/

namespace A085562.P5782163749304868569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Int.lcm (x : ℤ) (A072721 (A072721 x).toNat)).sum

end

end A085562.P5782163749304868569

namespace A085562

/-- `∑{digits}[n+1, lcm(#, A072721(A072721(#)))]` -/
def P5782163749304868569.Spec : Prop :=
  ∀ n, (P5782163749304868569.a n : ℤ) = A085562 (n + 1)

end A085562

/-! ## A085562.P6758687278234688827

`∑{digits}[n+1, #*A076478(A024688(#+1))]`
-/

namespace A085562.P6758687278234688827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℤ) * A076478 (A024688 (x + 1)).toNat).sum

end

end A085562.P6758687278234688827

namespace A085562

/-- `∑{digits}[n+1, #*A076478(A024688(#+1))]` -/
def P6758687278234688827.Spec : Prop :=
  ∀ n, P6758687278234688827.a n = A085562 (n + 1)

end A085562

/-! ## A085562.P14739726551151962058

`∑{digits}[n+1, C(#, A023537(A331045(#)+1))]`
-/

namespace A085562.P14739726551151962058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose x (A023537 (A331045 x + 1).toNat).toNat).sum

end

end A085562.P14739726551151962058

namespace A085562

/-- `∑{digits}[n+1, C(#, A023537(A331045(#)+1))]` -/
def P14739726551151962058.Spec : Prop :=
  ∀ n, (P14739726551151962058.a n : ℤ) = A085562 (n + 1)

end A085562

/-! ## A085562.P501004185777406089

`A071648(n+1)+A071649(n+1)-A085563(n+1)`
-/

namespace A085562.P501004185777406089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (n + 1) + (A071649 (n + 1) - A085563 (n + 1))

end

end A085562.P501004185777406089

namespace A085562

/-- `A071648(n+1)+A071649(n+1)-A085563(n+1)` -/
def P501004185777406089.Spec : Prop :=
  ∀ n, P501004185777406089.a n = A085562 (n + 1)

end A085562

/-!
# A085563: Sum of the prime digits of n.

The programs for A085563, the canonical program `A085563.P10263998652030294386` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085563 has offset 1).

The definition of A085563 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085563.P2444200663386775458

`∑{digits}[n+1, A047814(#)]`
-/

namespace A085563.P2444200663386775458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A047814 x).sum

end

end A085563.P2444200663386775458

namespace A085563

/-- `∑{digits}[n+1, A047814(#)]` -/
def P2444200663386775458.Spec : Prop :=
  ∀ n, P2444200663386775458.a n = A085563 (n + 1)

end A085563

/-! ## A085563.P12635105275373084650

`∑{digits}[n+1, A211396(#)]`
-/

namespace A085563.P12635105275373084650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A211396 x).sum

end

end A085563.P12635105275373084650

namespace A085563

/-- `∑{digits}[n+1, A211396(#)]` -/
def P12635105275373084650.Spec : Prop :=
  ∀ n, P12635105275373084650.a n = A085563 (n + 1)

end A085563

/-! ## A085563.P13963050561264365779

`∑{digits}[n+1, A331044(#)]`
-/

namespace A085563.P13963050561264365779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A331044 x).sum

end

end A085563.P13963050561264365779

namespace A085563

/-- `∑{digits}[n+1, A331044(#)]` -/
def P13963050561264365779.Spec : Prop :=
  ∀ n, P13963050561264365779.a n = A085563 (n + 1)

end A085563

/-! ## A085563.P1774987988106746702

`∑{digits}[n+1, A331045(#)]`
-/

namespace A085563.P1774987988106746702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A331045 x).sum

end

end A085563.P1774987988106746702

namespace A085563

/-- `∑{digits}[n+1, A331045(#)]` -/
def P1774987988106746702.Spec : Prop :=
  ∀ n, P1774987988106746702.a n = A085563 (n + 1)

end A085563

/-! ## A085563.P2904554355846598004

`∑{digits}[n+1, A331097(#)]`
-/

namespace A085563.P2904554355846598004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A331097 x).sum

end

end A085563.P2904554355846598004

namespace A085563

/-- `∑{digits}[n+1, A331097(#)]` -/
def P2904554355846598004.Spec : Prop :=
  ∀ n, P2904554355846598004.a n = A085563 (n + 1)

end A085563

/-! ## A085563.P2533632840820352096

`∑{digits}[n+1, A365276(#)]`
-/

namespace A085563.P2533632840820352096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A365276 x).sum

end

end A085563.P2533632840820352096

namespace A085563

/-- `∑{digits}[n+1, A365276(#)]` -/
def P2533632840820352096.Spec : Prop :=
  ∀ n, P2533632840820352096.a n = A085563 (n + 1)

end A085563

/-! ## A085563.P358086400287068815

`∑{digits}[n+1, A375548(#)]`
-/

namespace A085563.P358086400287068815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A375548 x).sum

end

end A085563.P358086400287068815

namespace A085563

/-- `∑{digits}[n+1, A375548(#)]` -/
def P358086400287068815.Spec : Prop :=
  ∀ n, P358086400287068815.a n = A085563 (n + 1)

end A085563

/-! ## A085563.P10263998652030294386

`A001414(A384443(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A085563

/-- `A001414(A384443(n+1))` -/
def P10263998652030294386.Spec : Prop :=
  ∀ n, P10263998652030294386.a n = A085563 (n + 1)

theorem P10263998652030294386.correct : P10263998652030294386.Spec := by
  intro n
  simp only [A085563, Nat.add_sub_cancel]

end A085563

/-! ## A085563.P17959783164426217280

`A007953(n+1)-A085562(n+1)`
-/

namespace A085563.P17959783164426217280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) - A085562 (n + 1)

end

end A085563.P17959783164426217280

namespace A085563

/-- `A007953(n+1)-A085562(n+1)` -/
def P17959783164426217280.Spec : Prop :=
  ∀ n, P17959783164426217280.a n = A085563 (n + 1)

end A085563

/-! ## A085563.P895218832441609192

`A071648(n+1)+A071649(n+1)-A085562(n+1)`
-/

namespace A085563.P895218832441609192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (n + 1) + (A071649 (n + 1) - A085562 (n + 1))

end

end A085563.P895218832441609192

namespace A085563

/-- `A071648(n+1)+A071649(n+1)-A085562(n+1)` -/
def P895218832441609192.Spec : Prop :=
  ∀ n, P895218832441609192.a n = A085563 (n + 1)

end A085563

/-!
# A085564: Primes whose sum of nonprime digits is also prime.

The programs for A085564, there is no canonical definition to state claims against.
-/

/-! ## A085564.P3517043902303129687

`record[A372885(A001918(∑[n+2])+1)]`
-/

namespace A085564.P3517043902303129687
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372885 (A001918 (∑ j ∈ Finset.range (n + 1), f2 j) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085564.P3517043902303129687

/-! ## A085564.P14715114341876678896

`A354369(A275245(n+1))`
-/

namespace A085564.P14715114341876678896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354369 (A275245 (n + 1)).toNat

end

end A085564.P14715114341876678896

/-!
# A085567: Least m such that the average number of divisors of all integers from 1 to m equals n, or 0 if no such number exists.

The programs for A085567, there is no canonical definition to state claims against.
-/

/-! ## A085567.P13262055422687114680

`A050226(record[∑{e}[A000009(2*n+1), #]+1])`
-/

namespace A085567.P13262055422687114680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050226 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A085567.P13262055422687114680

/-! ## A085567.P3298999860602212892

`A097249(A000670(n))+A085829(n+1)`
-/

namespace A085567.P3298999860602212892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097249 (A000670 n).toNat + A085829 (n + 1)

end

end A085567.P3298999860602212892

/-! ## A085567.P15943635233480005453

`A129251(A055580(n))+A085829(n+1)`
-/

namespace A085567.P15943635233480005453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129251 (A055580 n).toNat + A085829 (n + 1)

end

end A085567.P15943635233480005453

/-! ## A085567.P13503129186690059709

`A085829(n+1)+A010051(A183229(n))`
-/

namespace A085567.P13503129186690059709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085829 (n + 1) + A010051 (A183229 n).toNat

end

end A085567.P13503129186690059709

/-!
# A085569: Denominator of 2*Sum(C(n,w)/(2*w+1),w=0..n/2-1)+C(n,n/2)/(n+1) if n is even, or of 2*Sum(C(n,w)/(2*w+1),w=0..(n-1)/2) if n is odd.

The programs for A085569, there is no canonical definition to state claims against.
-/

/-! ## A085569.P6266232522113559165

`A000265(lcm(A032559(n+1), A086645(n)))`
-/

namespace A085569.P6266232522113559165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.lcm (A032559 (n + 1)) (A086645 n))

end

end A085569.P6266232522113559165

/-! ## A085569.P16960403738750761027

`lcm(A000265(A032559(n+1)), A174410(n))`
-/

namespace A085569.P16960403738750761027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000265 (A032559 (n + 1)).toNat) (A174410 n)

end

end A085569.P16960403738750761027

/-! ## A085569.P6648852248612579792

`lcm(A000265(n+1), A166123(A120985(n)))`
-/

namespace A085569.P6648852248612579792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000265 (n + 1)) (A166123 (A120985 n).toNat)

end

end A085569.P6648852248612579792

/-! ## A085569.P3190667764142443568

`gcd(A103152(A171701(2*(n+1))), A227461(n+1))`
-/

namespace A085569.P3190667764142443568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103152 (A171701 (2 * (n + 1))).toNat) (A227461 (n + 1))

end

end A085569.P3190667764142443568

/-!
# A085570: If n mod 2 = 0 then 2*Sum(floor(C(n,w)/(2*w+1)),w=0..n/2-1)+floor(C(n,n/2)/(n+1)) otherwise 2*Sum(floor(C(n,w)/(2*w+1)),w=0..(n-1)/2).

The programs for A085570, there is no canonical definition to state claims against.
-/

/-! ## A085570.P15097798844843860832

`A209315(A014009(n)+8)`
-/

namespace A085570.P15097798844843860832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209315 (A014009 n + 8).toNat

end

end A085570.P15097798844843860832

/-! ## A085570.P3086918223823767138

`A331162(A210736(n)+A003056(n))`
-/

namespace A085570.P3086918223823767138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331162 (A210736 n + A003056 n).toNat

end

end A085570.P3086918223823767138

/-! ## A085570.P11643829743188631380

`A331162(A210736(n)+A051889(n))`
-/

namespace A085570.P11643829743188631380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331162 (A210736 n + A051889 n).toNat

end

end A085570.P11643829743188631380

/-! ## A085570.P9483475514074094242

`A328698(A003242(n+3))+A003242(n)`
-/

namespace A085570.P9483475514074094242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328698 (A003242 (n + 3)).toNat + A003242 n

end

end A085570.P9483475514074094242

/-! ## A085570.P5081692878948191985

`A051601(n)+A003056(∏[A003056(n+1)])`
-/

namespace A085570.P5081692878948191985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 n + A003056 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A085570.P5081692878948191985

/-!
# A085571: Numerator of 2*Sum(C(n,w)/w,w=1..n/2-1)+C(n,n/2)/(n/2) if n is even otherwise of 2*Sum(C(n,w)/w,w=1..(n-1)/2).

The programs for A085571, there is no canonical definition to state claims against.
-/

/-! ## A085571.P11595816713514811906

`A293538(A275525(n+1))+A283496(n+1)`
-/

namespace A085571.P11595816713514811906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293538 (A275525 (n + 1)).toNat + A283496 (n + 1)

end

end A085571.P11595816713514811906

/-!
# A085572: Denominator of 2*Sum(C(n,w)/w,w=1..n/2-1)+C(n, n/2)/(n/2) if n is even otherwise of 2*Sum(C(n,w)/w,w=1..(n-1)/2).

The programs for A085572, there is no canonical definition to state claims against.
-/

/-! ## A085572.P15879608205314403991

`floor(A085571(n+2)/A085573(n+2))`
-/

namespace A085572.P15879608205314403991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A085571 (n + 2) : ℚ) / (A085573 (n + 2) : ℚ)⌋

end

end A085572.P15879608205314403991

/-!
# A085574: Least k such that n*(n+1)*(n+2) + k is palindromic.

The programs for A085574, there is no canonical definition to state claims against.
-/

/-! ## A085574.P480449535929197624

`A052036((n+2)^3-(n+2))`
-/

namespace A085574.P480449535929197624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052036 ((n + 2) ^ 3 - (n + 2))

end

end A085574.P480449535929197624

/-!
# A085575: Squares whose sum of nonsquare digits is a square.

The programs for A085575, there is no canonical definition to state claims against.
-/

/-! ## A085575.P3083375267731024508

`lt[A186084(3*n+1), A030528(A321127(3*n+1))]²`
-/

namespace A085575.P3083375267731024508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186084 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (A321127 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A085575.P3083375267731024508

/-! ## A085575.P2921106072234395429

`lt[ceil((n-3)/4), A355534(3*n+4)]²`
-/

namespace A085575.P2921106072234395429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 3 : ℚ) / 4⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355534 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A085575.P2921106072234395429

/-! ## A085575.P8548164640943476103

`A064097(∑[A081557(n)])²`
-/

namespace A085575.P8548164640943476103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A085575.P8548164640943476103

/-! ## A085575.P4661375412660846258

`∑[A001222(A300953(2^n))]²`
-/

namespace A085575.P4661375412660846258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A300953 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A085575.P4661375412660846258

/-! ## A085575.P13324775531088624973

`lt[xor(n, floor(n/2)), A065507(n+1)]²`
-/

namespace A085575.P13324775531088624973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065507 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A085575.P13324775531088624973

/-!
# A085576: Array read by antidiagonals: T(n,k) = size of largest subset of nodes in n X k grid such that there at least 3 edges between any pair of nodes (n >= 1, k >= 1).

The programs for A085576, there is no canonical definition to state claims against.
-/

/-! ## A085576.P12933449964702719201

`A110591(A240519(n+1))`
-/

namespace A085576.P12933449964702719201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A240519 (n + 1)).toNat

end

end A085576.P12933449964702719201

/-! ## A085576.P14432947152787681045

`floor(A262775(floor(A237936(n+1)^(3/14)))^(3/14))`
-/

namespace A085576.P14432947152787681045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A262775 ⌊(A237936 (n + 1) : ℝ) ^ ((3 : ℚ) / 14 : ℝ)⌋.toNat : ℝ) ^ ((3 : ℚ) / 14 : ℝ)⌋

end

end A085576.P14432947152787681045

/-! ## A085576.P13404166027933421358

`A217710(or(A057944(n), A262488(n+1)))`
-/

namespace A085576.P13404166027933421358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217710 (Int.lor (A057944 n) (A262488 (n + 1))).toNat

end

end A085576.P13404166027933421358

/-! ## A085576.P5289229535470315616

`A008621(ceil(log(A263337(n+1))))`
-/

namespace A085576.P5289229535470315616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 ⌈Real.log (A263337 (n + 1) : ℝ)⌉.toNat

end

end A085576.P5289229535470315616

/-! ## A085576.P910683515521928956

`round(sqrt(log(A216760(n+1))+1))`
-/

namespace A085576.P910683515521928956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.log (A216760 (n + 1) : ℝ) + 1))

end

end A085576.P910683515521928956

/-!
# A085577: Size of largest subset of the n^2 cells in an n X n grid such that there are at least 3 edges between any pair of chosen cells.

The programs for A085577, the canonical program `A085577.P16966541059192082034` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085577 has offset 1).

The definition of A085577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085577.P16966541059192082034

`ceil(char[4]+(n+1)²/5)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A085577

/-- `ceil(char[4]+(n+1)²/5)` -/
def P16966541059192082034.Spec : Prop :=
  ∀ n, P16966541059192082034.a n = A085577 (n + 1)

theorem P16966541059192082034.correct : P16966541059192082034.Spec := by
  intro n
  simp only [A085577, Nat.add_sub_cancel]

end A085577

/-! ## A085577.P6037985069585799313

`char[4]+A183871(n+1)-(n+1)`
-/

namespace A085577.P6037985069585799313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A183871 (n + 1) - (n + 1 : ℤ))

end

end A085577.P6037985069585799313

namespace A085577

/-- `char[4]+A183871(n+1)-(n+1)` -/
def P6037985069585799313.Spec : Prop :=
  ∀ n, P6037985069585799313.a n = A085577 (n + 1)

end A085577

/-! ## A085577.P12470569828559374118

`A036404(n+1)+char[4]`
-/

namespace A085577.P12470569828559374118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036404 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A085577.P12470569828559374118

namespace A085577

/-- `A036404(n+1)+char[4]` -/
def P12470569828559374118.Spec : Prop :=
  ∀ n, P12470569828559374118.a n = A085577 (n + 1)

end A085577

/-! ## A085577.P1543138218203827665

`A036987(A052905(n+1))+A036404(n+1)`
-/

namespace A085577.P1543138218203827665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A052905 (n + 1)).toNat + A036404 (n + 1)

end

end A085577.P1543138218203827665

namespace A085577

/-- `A036987(A052905(n+1))+A036404(n+1)` -/
def P1543138218203827665.Spec : Prop :=
  ∀ n, P1543138218203827665.a n = A085577 (n + 1)

end A085577

/-! ## A085577.P1116978356737532676

`A002266(A028392(2*(∑[n]+1)+3))`
-/

namespace A085577.P1116978356737532676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A028392 (2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 3)).toNat

end

end A085577.P1116978356737532676

namespace A085577

/-- `A002266(A028392(2*(∑[n]+1)+3))` -/
def P1116978356737532676.Spec : Prop :=
  ∀ n, P1116978356737532676.a n = A085577 (n + 1)

end A085577

/-! ## A085577.P14101845952269697019

`A054025(A088934(n))+ceil((n+1)²/5)`
-/

namespace A085577.P14101845952269697019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054025 (A088934 n).toNat + ⌈((n + 1) ^ 2 : ℚ) / 5⌉

end

end A085577.P14101845952269697019

namespace A085577

/-- `A054025(A088934(n))+ceil((n+1)²/5)` -/
def P14101845952269697019.Spec : Prop :=
  ∀ n, P14101845952269697019.a n = A085577 (n + 1)

end A085577

/-!
# A085578: Array read by antidiagonals: T(n,m) is the number of distinct products i*j with 1<=i<=n, i<=j<=m, for n>=1, m>=1.

The programs for A085578, there is no canonical definition to state claims against.
-/

/-! ## A085578.P12621861058448227876

`A088873(A036561(n))`
-/

namespace A085578.P12621861058448227876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088873 (A036561 n).toNat

end

end A085578.P12621861058448227876

/-! ## A085578.P9151219663137770464

`A088873(A082234(n+1))`
-/

namespace A085578.P9151219663137770464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088873 (A082234 (n + 1)).toNat

end

end A085578.P9151219663137770464

/-! ## A085578.P17023323255125077741

`A088873(A230445(n)+1)`
-/

namespace A085578.P17023323255125077741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088873 (A230445 n + 1).toNat

end

end A085578.P17023323255125077741

/-! ## A085578.P5153066753021652836

`A088873(A081954(n+1)/2)`
-/

namespace A085578.P5153066753021652836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088873 (SequenceMachineLib.roundAway ((A081954 (n + 1) : ℚ) / 2)).toNat

end

end A085578.P5153066753021652836

/-! ## A085578.P544741362907790823

`A088873(A175840(n))`
-/

namespace A085578.P544741362907790823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088873 (A175840 n).toNat

end

end A085578.P544741362907790823

/-!
# A085581: a(n) = floor( prime(n)/log(n) ).

The programs for A085581, the canonical program `A085581.P8114405590426207882` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085581 has offset 2).

The definition of A085581 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085581.P8114405590426207882

`floor(p?[2*n+1]/log(n+2))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A085581

/-- `floor(p?[2*n+1]/log(n+2))` -/
def P8114405590426207882.Spec : Prop :=
  ∀ n, P8114405590426207882.a n = A085581 (n + 2)

theorem P8114405590426207882.correct : P8114405590426207882.Spec := by
  intro n
  simp only [A085581, Nat.add_sub_cancel]

end A085581

/-! ## A085581.P14874938698483051906

`ceil(p?[abs(1-2*n)]/log(n+2))-1`
-/

namespace A085581.P14874938698483051906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ) / Real.log (n + 2 : ℝ)⌉ - 1

end

end A085581.P14874938698483051906

namespace A085581

/-- `ceil(p?[abs(1-2*n)]/log(n+2))-1` -/
def P14874938698483051906.Spec : Prop :=
  ∀ n, P14874938698483051906.a n = A085581 (n + 2)

end A085581

/-! ## A085581.P14512291459781771827

`floor(A065091(n+1)/log(n+2))`
-/

namespace A085581.P14512291459781771827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065091 (n + 1) : ℝ) / Real.log (n + 2 : ℝ)⌋

end

end A085581.P14512291459781771827

namespace A085581

/-- `floor(A065091(n+1)/log(n+2))` -/
def P14512291459781771827.Spec : Prop :=
  ∀ n, P14512291459781771827.a n = A085581 (n + 2)

end A085581

/-! ## A085581.P15859468521558601537

`A000720(n+2)+A087724(n+2)+2`
-/

namespace A085581.P15859468521558601537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 2) + (A087724 (n + 2) + 2)

end

end A085581.P15859468521558601537

namespace A085581

/-- `A000720(n+2)+A087724(n+2)+2` -/
def P15859468521558601537.Spec : Prop :=
  ∀ n, P15859468521558601537.a n = A085581 (n + 2)

end A085581

/-! ## A085581.P6076596162706798601

`floor(A000040(n+2)/log(n+2))`
-/

namespace A085581.P6076596162706798601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 2) : ℝ) / Real.log (n + 2 : ℝ)⌋

end

end A085581.P6076596162706798601

namespace A085581

/-- `floor(A000040(n+2)/log(n+2))` -/
def P6076596162706798601.Spec : Prop :=
  ∀ n, P6076596162706798601.a n = A085581 (n + 2)

end A085581

/-! ## A085581.P17909143684661153287

`floor(A008578(n+3)/log(n+2))`
-/

namespace A085581.P17909143684661153287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008578 (n + 3) : ℝ) / Real.log (n + 2 : ℝ)⌋

end

end A085581.P17909143684661153287

namespace A085581

/-- `floor(A008578(n+3)/log(n+2))` -/
def P17909143684661153287.Spec : Prop :=
  ∀ n, P17909143684661153287.a n = A085581 (n + 2)

end A085581

/-! ## A085581.P7765442039869076182

`floor(record[A000010(2*n+3)+1]/log(n+2))`
-/

namespace A085581.P7765442039869076182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ) / Real.log (n + 2 : ℝ)⌋

end

end A085581.P7765442039869076182

namespace A085581

/-- `floor(record[A000010(2*n+3)+1]/log(n+2))` -/
def P7765442039869076182.Spec : Prop :=
  ∀ n, P7765442039869076182.a n = A085581 (n + 2)

end A085581

/-!
# A085582: The number of rectangles (orthogonal or not) with corners on an n X n grid of points.

The programs for A085582, there is no canonical definition to state claims against.
-/

/-! ## A085582.P15923711951028028920

`A113751(n+1)+∑[n]²`
-/

namespace A085582.P15923711951028028920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113751 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A085582.P15923711951028028920

/-! ## A085582.P15066952948581895489

`A163102(n)+A113751(n+1)-A000537(n)`
-/

namespace A085582.P15066952948581895489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163102 n + (A113751 (n + 1) - A000537 n)

end

end A085582.P15066952948581895489

/-! ## A085582.P12270370283946268170

`(A113751(n+1)+A000537(n))%A107891(n)`
-/

namespace A085582.P12270370283946268170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113751 (n + 1) + A000537 n) (A107891 n)

end

end A085582.P12270370283946268170

/-! ## A085582.P17187274706415306542

`A000537(n)+A113751(n+1)%A140163(n+1)`
-/

namespace A085582.P17187274706415306542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n + Int.tmod (A113751 (n + 1)) (A140163 (n + 1))

end

end A085582.P17187274706415306542

/-! ## A085582.P6253162034956612893

`(A113751(n+1)+A000537(n))*A007318((n+1)*A097806(n))`
-/

namespace A085582.P6253162034956612893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A113751 (n + 1) + A000537 n) * A007318 ((n + 1 : ℤ) * A097806 n).toNat

end

end A085582.P6253162034956612893

/-!
# A085583: Number of (3412,1234)-avoiding involutions in S_n.

The programs for A085583, the canonical program `A085583.P12147947931041383685` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085583 has offset 1).

The definition of A085583 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085583.P11176042601723439120

`A005994(n)+1-A084570(n)`
-/

namespace A085583.P11176042601723439120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005994 n + (1 - A084570 n)

end

end A085583.P11176042601723439120

namespace A085583

/-- `A005994(n)+1-A084570(n)` -/
def P11176042601723439120.Spec : Prop :=
  ∀ n, P11176042601723439120.a n = A085583 (n + 1)

end A085583

/-! ## A085583.P12147947931041383685

`∑[A065033(n)+∑[A008794(n)]]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A085583

/-- `∑[A065033(n)+∑[A008794(n)]]` -/
def P12147947931041383685.Spec : Prop :=
  ∀ n, P12147947931041383685.a n = A085583 (n + 1)

theorem P12147947931041383685.correct : P12147947931041383685.Spec := by
  intro n
  simp only [A085583, Nat.add_sub_cancel]

end A085583

/-! ## A085583.P8295929125474100961

`∑[∑[A266070(n)+A008794(n)]]`
-/

namespace A085583.P8295929125474100961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266070 n + A008794 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085583.P8295929125474100961

namespace A085583

/-- `∑[∑[A266070(n)+A008794(n)]]` -/
def P8295929125474100961.Spec : Prop :=
  ∀ n, P8295929125474100961.a n = A085583 (n + 1)

end A085583

/-! ## A085583.P14275345834955318276

`∑[A065033(n)+∑[A004526(n)²]]`
-/

namespace A085583.P14275345834955318276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085583.P14275345834955318276

namespace A085583

/-- `∑[A065033(n)+∑[A004526(n)²]]` -/
def P14275345834955318276.Spec : Prop :=
  ∀ n, P14275345834955318276.a n = A085583 (n + 1)

end A085583

/-! ## A085583.P16386755520650754564

`∑[A065033(n)+∑[A127365(n)²]]`
-/

namespace A085583.P16386755520650754564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127365 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085583.P16386755520650754564

namespace A085583

/-- `∑[A065033(n)+∑[A127365(n)²]]` -/
def P16386755520650754564.Spec : Prop :=
  ∀ n, P16386755520650754564.a n = A085583 (n + 1)

end A085583

/-! ## A085583.P14012361482105944794

`A325691(n+2)+A274233(n+1)`
-/

namespace A085583.P14012361482105944794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325691 (n + 2) + A274233 (n + 1)

end

end A085583.P14012361482105944794

namespace A085583

/-- `A325691(n+2)+A274233(n+1)` -/
def P14012361482105944794.Spec : Prop :=
  ∀ n, P14012361482105944794.a n = A085583 (n + 1)

end A085583

/-!
# A085584: Number of (3412,2341)-, (3412,4123)- and (3412,52341)-avoiding involutions in S_n.

The programs for A085584, there is no canonical definition to state claims against.
-/

/-! ## A085584.P17907426299298664035

`∑[A165190(Δ[A014480(n)])]`
-/

namespace A085584.P17907426299298664035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014480 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085584.P17907426299298664035

/-! ## A085584.P4570864397919765659

`floor(A121088(n+1)/A121073(n+2))`
-/

namespace A085584.P4570864397919765659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A121088 (n + 1) : ℚ) / (A121073 (n + 2) : ℚ)⌋

end

end A085584.P4570864397919765659

/-! ## A085584.P17424277355272859349

`A057364(∑[A233583(ceil((n+3)*2^(n-2))+1)+1])`
-/

namespace A085584.P17424277355272859349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (⌈(n + 3 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉ + 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057364 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A085584.P17424277355272859349

/-! ## A085584.P2962102544079919906

`A144685(n+1)+A055087(A076282(n+1))`
-/

namespace A085584.P2962102544079919906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144685 (n + 1) + A055087 (A076282 (n + 1)).toNat

end

end A085584.P2962102544079919906

/-!
# A085585: Squares with exactly one odd digit.

The programs for A085585, the canonical program `A085585.P2799919323339678097` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085585 has offset 1).

The definition of A085585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 661 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085585.P2799919323339678097

`eq[2, ∏{digits}[n², A000034(#)]]²`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A085585

/-- `eq[2, ∏{digits}[n², A000034(#)]]²` -/
def P2799919323339678097.Spec : Prop :=
  ∀ n, (P2799919323339678097.a n : ℤ) = A085585 (n + 1)

theorem P2799919323339678097.correct : P2799919323339678097.Spec := by
  intro n
  simp only [A085585, Nat.add_sub_cancel]

end A085585

/-! ## A085585.P17534265103423137824

`∩[A294601(n+1), n²]`
-/

namespace A085585.P17534265103423137824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294601 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A085585.P17534265103423137824

namespace A085585

/-- `∩[A294601(n+1), n²]` -/
def P17534265103423137824.Spec : Prop :=
  ∀ n, (P17534265103423137824.a n : ℤ) = A085585 (n + 1)

end A085585

/-! ## A085585.P10821562712778935469

`eq[1, A196564(n²)]²`
-/

namespace A085585.P10821562712778935469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A085585.P10821562712778935469

namespace A085585

/-- `eq[1, A196564(n²)]²` -/
def P10821562712778935469.Spec : Prop :=
  ∀ n, (P10821562712778935469.a n : ℤ) = A085585 (n + 1)

end A085585

/-! ## A085585.P14787624889734253742

`eq[A084600(n), A196564(n)]`
-/

namespace A085585.P14787624889734253742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084600 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085585.P14787624889734253742

namespace A085585

/-- `eq[A084600(n), A196564(n)]` -/
def P14787624889734253742.Spec : Prop :=
  ∀ n, (P14787624889734253742.a n : ℤ) = A085585 (n + 1)

end A085585

/-! ## A085585.P3848008449790538530

`eq[A084608(n), A196564(n)]`
-/

namespace A085585.P3848008449790538530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084608 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085585.P3848008449790538530

namespace A085585

/-- `eq[A084608(n), A196564(n)]` -/
def P3848008449790538530.Spec : Prop :=
  ∀ n, (P3848008449790538530.a n : ℤ) = A085585 (n + 1)

end A085585

/-!
# A085586: n, n^2 and n^3 all use only even digits.

The programs for A085586, there is no canonical definition to state claims against.
-/

/-! ## A085586.P15180338927671888427

`∩[A052004(n+1), A024630(n)]`
-/

namespace A085586.P15180338927671888427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024630 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085586.P15180338927671888427

/-! ## A085586.P3289216375762044150

`∩[A052004(n+1), A136885(n+1)]`
-/

namespace A085586.P3289216375762044150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085586.P3289216375762044150

/-! ## A085586.P16269932289536009169

`∩[A052004(n+1), A136900(n+1)]`
-/

namespace A085586.P16269932289536009169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085586.P16269932289536009169

/-! ## A085586.P14568317595167377873

`∩[A052004(n+1), A136904(n+1)]`
-/

namespace A085586.P14568317595167377873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085586.P14568317595167377873

/-! ## A085586.P2787100590090602340

`∩[A052004(n+1), A136906(n+1)]`
-/

namespace A085586.P2787100590090602340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085586.P2787100590090602340

/-!
# A085587: Eventual period of a single cell in rule 90 cellular automaton in a cyclic universe of width n.

The programs for A085587, there is no canonical definition to state claims against.
-/

/-! ## A085587.P257762897257735160

`ceil(A334507(Δ[n²])/2)`
-/

namespace A085587.P257762897257735160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334507 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2⌉

end

end A085587.P257762897257735160

/-! ## A085587.P487162042982754814

`round(A334507(comp[2*n])/2)`
-/

namespace A085587.P487162042982754814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A334507 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2)

end

end A085587.P487162042982754814

/-! ## A085587.P1273307523188406714

`ceil(A334504(2*(n+1))/2)`
-/

namespace A085587.P1273307523188406714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334504 (2 * (n + 1)) : ℚ) / 2⌉

end

end A085587.P1273307523188406714

/-! ## A085587.P7707341350133721244

`round(A334504(2*n+2)/2)`
-/

namespace A085587.P7707341350133721244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A334504 (2 * n + 2) : ℚ) / 2)

end

end A085587.P7707341350133721244

/-! ## A085587.P1676268364411709803

`floor((A268754(round(sqrt(n²+1)))+1)/2)`
-/

namespace A085587.P1676268364411709803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A268754 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + 1 : ℚ) / 2⌋

end

end A085587.P1676268364411709803

/-! ## A085587.P5346542197593739034

`A396572(n+1)-A006519(n+1)`
-/

namespace A085587.P5346542197593739034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396572 (n + 1) - A006519 (n + 1)

end

end A085587.P5346542197593739034

/-! ## A085587.P15876471706852003726

`A010760(n+1)`
-/

namespace A085587.P15876471706852003726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010760 (n + 1)

end

end A085587.P15876471706852003726

/-!
# A085588: Eventual period of a single cell in rule 150 cellular automaton in a cyclic universe of width n.

The programs for A085588, there is no canonical definition to state claims against.
-/

/-! ## A085588.P2604120292181728447

`A085593(n+3)/2`
-/

namespace A085588.P2604120292181728447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085593 (n + 3) : ℚ) / 2

end

end A085588.P2604120292181728447

/-! ## A085588.P15862530011336855859

`ceil(A085595(n+3)/2)`
-/

namespace A085588.P15862530011336855859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A085595 (n + 3) : ℚ) / 2⌉

end

end A085588.P15862530011336855859

/-! ## A085588.P1243666466679830247

`A085595(n+3)/A036452(n+1)`
-/

namespace A085588.P1243666466679830247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085595 (n + 3) : ℚ) / (A036452 (n + 1) : ℚ)

end

end A085588.P1243666466679830247

/-! ## A085588.P11081386181456730721

`A085595(n+3)/A036453(n+1)`
-/

namespace A085588.P11081386181456730721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085595 (n + 3) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A085588.P11081386181456730721

/-!
# A085591: Maximal cycle lengths in a certain class of one-dimensional cellular automata.

The programs for A085591, there is no canonical definition to state claims against.
-/

/-! ## A085591.P14900127642800547510

`A085589(2*(n+3))/2`
-/

namespace A085591.P14900127642800547510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085589 (2 * (n + 3)) : ℚ) / 2

end

end A085591.P14900127642800547510

/-! ## A085591.P4851773820778837469

`gcd(A000217(A085589(2*n+6)), A085589(2*n+6))`
-/

namespace A085591.P4851773820778837469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (A085589 (2 * n + 6)).toNat) (A085589 (2 * n + 6))

end

end A085591.P4851773820778837469

/-! ## A085591.P3694288865270356341

`A001281(A085589(2*(n+3)))`
-/

namespace A085591.P3694288865270356341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A085589 (2 * (n + 3))).toNat

end

end A085591.P3694288865270356341

/-! ## A085591.P18401862337060096123

`A004525(A085589(2*n+6))`
-/

namespace A085591.P18401862337060096123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A085589 (2 * n + 6)).toNat

end

end A085591.P18401862337060096123

/-! ## A085591.P5761722786166043349

`A008619(A085589(2*(n+3))-1)`
-/

namespace A085591.P5761722786166043349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A085589 (2 * (n + 3)) - 1).toNat

end

end A085591.P5761722786166043349

/-!
# A085592: Maximal cycle lengths in a certain class of one-dimensional cellular automata.

The programs for A085592, there is no canonical definition to state claims against.
-/

/-! ## A085592.P13630217326500787906

`A334504(lcm(2, n+3))`
-/

namespace A085592.P13630217326500787906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334504 (Nat.lcm 2 (n + 3))

end

end A085592.P13630217326500787906

/-! ## A085592.P1871183845937273788

`gcd(2, n)*A085587(n+3)`
-/

namespace A085592.P1871183845937273788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A085587 (n + 3)

end

end A085592.P1871183845937273788

/-! ## A085592.P2885998983363151769

`A334504((n+3)*(2-and(1, n)))`
-/

namespace A085592.P2885998983363151769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334504 ((n + 3 : ℤ) * (2 - (Nat.land 1 n : ℤ))).toNat

end

end A085592.P2885998983363151769

/-! ## A085592.P11878624728263691886

`A268754(A174239(n)+1)`
-/

namespace A085592.P11878624728263691886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268754 (A174239 n + 1).toNat

end

end A085592.P11878624728263691886

/-! ## A085592.P8129227599119032290

`A334506(A296070(n+2))`
-/

namespace A085592.P8129227599119032290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334506 (A296070 (n + 2)).toNat

end

end A085592.P8129227599119032290

/-!
# A085593: Maximal cycle lengths in a certain class of one-dimensional cellular automata.

The programs for A085593, there is no canonical definition to state claims against.
-/

/-! ## A085593.P14254694509421992903

`2*A085588(n+3)`
-/

namespace A085593.P14254694509421992903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085588 (n + 3)

end

end A085593.P14254694509421992903

/-! ## A085593.P17582854413448868061

`A085588(A009056(n+1))+A085588(n+3)`
-/

namespace A085593.P17582854413448868061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085588 (A009056 (n + 1)).toNat + A085588 (n + 3)

end

end A085593.P17582854413448868061

/-! ## A085593.P12314265044324552290

`A085588(A000027(n+3))+A085588(n+3)`
-/

namespace A085593.P12314265044324552290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085588 (A000027 (n + 3)).toNat + A085588 (n + 3)

end

end A085593.P12314265044324552290

/-! ## A085593.P2299045298016356898

`A085588(n+3)/2^A133574(A001316(n))`
-/

namespace A085593.P2299045298016356898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085588 (n + 3) : ℚ) / (2 : ℚ) ^ (A133574 (A001316 n).toNat : ℤ)

end

end A085593.P2299045298016356898

/-! ## A085593.P5094153691701344555

`A085588(n+3)+or(A003982(n), A085588(n+3))`
-/

namespace A085593.P5094153691701344555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085588 (n + 3) + Int.lor (A003982 n) (A085588 (n + 3))

end

end A085593.P5094153691701344555

/-! ## A085593.P4132766881388934379

`A085588(n+3)+or(A085588(n+3), A185013(n))`
-/

namespace A085593.P4132766881388934379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085588 (n + 3) + Int.lor (A085588 (n + 3)) (A185013 n)

end

end A085593.P4132766881388934379

/-! ## A085593.P18168657021679482357

`A085588(n+3)+A085588(n+3)+A000007(n+1)`
-/

namespace A085593.P18168657021679482357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085588 (n + 3) + (A085588 (n + 3) + A000007 (n + 1))

end

end A085593.P18168657021679482357

/-!
# A085595: Maximal cycle lengths in a certain class of one-dimensional cellular automata.

The programs for A085595, there is no canonical definition to state claims against.
-/

/-! ## A085595.P13360320966259316019

`A085588(2*(n+3))`
-/

namespace A085595.P13360320966259316019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085588 (2 * (n + 3))

end

end A085595.P13360320966259316019

/-! ## A085595.P15236498783642631009

`A085593(n+3)-floor(acot(n))`
-/

namespace A085595.P15236498783642631009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085593 (n + 3) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A085595.P15236498783642631009

/-! ## A085595.P2438459767206611292

`A085593(n*a(floor(acot(n)))+3)` with `a(0)=1`
-/

namespace A085595.P2438459767206611292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A085593 ((n : ℤ) * a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat + 3).toNat

end

end A085595.P2438459767206611292

/-! ## A085595.P16507145575876233450

`A085593(n+3)-A000007(n)`
-/

namespace A085595.P16507145575876233450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085593 (n + 3) - A000007 n

end

end A085595.P16507145575876233450

/-! ## A085595.P10404512635876165942

`A085593(n+3)-A088157(n)`
-/

namespace A085595.P10404512635876165942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085593 (n + 3) - A088157 n

end

end A085595.P10404512635876165942

/-!
# A085597: Numbers k such that k and k^3 use only odd digits.

The programs for A085597, there is no canonical definition to state claims against.
-/

/-! ## A085597.P5358004297276549122

`A030099(A287513(n+1))`
-/

namespace A085597.P5358004297276549122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030099 (A287513 (n + 1)).toNat

end

end A085597.P5358004297276549122

/-! ## A085597.P12583350819354286673

`record[A059717(A030099(n+1))]`
-/

namespace A085597.P12583350819354286673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059717 (A030099 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085597.P12583350819354286673

/-! ## A085597.P17754008641654313255

`A030099(A048097(n+1)+1)`
-/

namespace A085597.P17754008641654313255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030099 (A048097 (n + 1) + 1).toNat

end

end A085597.P17754008641654313255

/-! ## A085597.P12177074453819094386

`record[A059717(root(A030100(n+1), 3))]`
-/

namespace A085597.P12177074453819094386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059717 (SequenceMachineLib.roundAway ((A030100 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085597.P12177074453819094386

/-! ## A085597.P2269469484241162794

`A030099(lt[A281772(3*n+4), A000002(n+5)])`
-/

namespace A085597.P2269469484241162794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281772 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030099 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A085597.P2269469484241162794

/-!
# A085598: Primes p with same final decimal digit as k, p = prime(k).

The programs for A085598, the canonical program `A085598.P14870247663285452881` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085598 has offset 1).

The definition of A085598 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 987 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085598.P14870247663285452881

`A000040(A067790(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A085598

/-- `A000040(A067790(n+1))` -/
def P14870247663285452881.Spec : Prop :=
  ∀ n, P14870247663285452881.a n = A085598 (n + 1)

theorem P14870247663285452881.correct : P14870247663285452881.Spec := by
  intro n
  simp only [A085598, Nat.add_sub_cancel]

end A085598

/-! ## A085598.P3137860343449671901

`A008578(A067790(n+1)+1)`
-/

namespace A085598.P3137860343449671901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A067790 (n + 1) + 1).toNat

end

end A085598.P3137860343449671901

namespace A085598

/-- `A008578(A067790(n+1)+1)` -/
def P3137860343449671901.Spec : Prop :=
  ∀ n, P3137860343449671901.a n = A085598 (n + 1)

end A085598

/-! ## A085598.P17477575984235532642

`p?[A018252(10*(n+1))+1]`
-/

namespace A085598.P17477575984235532642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (10 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085598.P17477575984235532642

namespace A085598

/-- `p?[A018252(10*(n+1))+1]` -/
def P17477575984235532642.Spec : Prop :=
  ∀ n, P17477575984235532642.a n = A085598 (n + 1)

end A085598

/-! ## A085598.P4241160667129918780

`p?[A060462(A017281(n))]`
-/

namespace A085598.P4241160667129918780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (A017281 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085598.P4241160667129918780

namespace A085598

/-- `p?[A060462(A017281(n))]` -/
def P4241160667129918780.Spec : Prop :=
  ∀ n, P4241160667129918780.a n = A085598 (n + 1)

end A085598

/-! ## A085598.P8427826617378860952

`p?[A079696(A017377(n))]`
-/

namespace A085598.P8427826617378860952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (A017377 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085598.P8427826617378860952

namespace A085598

/-- `p?[A079696(A017377(n))]` -/
def P8427826617378860952.Spec : Prop :=
  ∀ n, P8427826617378860952.a n = A085598 (n + 1)

end A085598

/-!
# A085599: Number of pairs of coprimes (n-i,n+i), 1

The programs for A085599, the canonical program `A085599.P12695590577999882424` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085599 has offset 1).

The definition of A085599 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085599.P12695590577999882424

`ceil(((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1)/gcd(2, n))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A085599

/-- `ceil(((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1)/gcd(2, n))` -/
def P12695590577999882424.Spec : Prop :=
  ∀ n, P12695590577999882424.a n = A085599 (n + 1)

theorem P12695590577999882424.correct : P12695590577999882424.Spec := by
  intro n
  simp only [A085599, Nat.add_sub_cancel]

end A085599

/-! ## A085599.P13908204364454206381

`floor(n/2-A219839(n+1))`
-/

namespace A085599.P13908204364454206381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2 - (A219839 (n + 1) : ℚ)⌋

end

end A085599.P13908204364454206381

namespace A085599

/-- `floor(n/2-A219839(n+1))` -/
def P13908204364454206381.Spec : Prop :=
  ∀ n, P13908204364454206381.a n = A085599 (n + 1)

end A085599

/-! ## A085599.P14887508482643048179

`ceil(A109606(n+1)/gcd(2, n))`
-/

namespace A085599.P14887508482643048179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A109606 (n + 1) : ℚ) / (Nat.gcd 2 n : ℚ)⌉

end

end A085599.P14887508482643048179

namespace A085599

/-- `ceil(A109606(n+1)/gcd(2, n))` -/
def P14887508482643048179.Spec : Prop :=
  ∀ n, P14887508482643048179.a n = A085599 (n + 1)

end A085599

/-! ## A085599.P2002317504134427517

`A055034(n+1)-(n%2)^n`
-/

namespace A085599.P2002317504134427517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (n + 1) - (((n % 2) ^ n : ℕ) : ℤ)

end

end A085599.P2002317504134427517

namespace A085599

/-- `A055034(n+1)-(n%2)^n` -/
def P2002317504134427517.Spec : Prop :=
  ∀ n, P2002317504134427517.a n = A085599 (n + 1)

end A085599

/-! ## A085599.P2596584706086592860

`Δ[ceil((A049690(n)-(n+1))/2)]`
-/

namespace A085599.P2596584706086592860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A049690 n - (n + 1 : ℤ) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085599.P2596584706086592860

namespace A085599

/-- `Δ[ceil((A049690(n)-(n+1))/2)]` -/
def P2596584706086592860.Spec : Prop :=
  ∀ n, P2596584706086592860.a n = A085599 (n + 1)

end A085599

/-! ## A085599.P3349197675254527489

`floor((A000010(2*(n+1))-and(1, n))/2)`
-/

namespace A085599.P3349197675254527489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (2 * (n + 1)) - (Nat.land 1 n : ℤ) : ℚ) / 2⌋

end

end A085599.P3349197675254527489

namespace A085599

/-- `floor((A000010(2*(n+1))-and(1, n))/2)` -/
def P3349197675254527489.Spec : Prop :=
  ∀ n, P3349197675254527489.a n = A085599 (n + 1)

end A085599

/-! ## A085599.P12562405392009484258

`floor((A000010(Δ[n²]+1)+(n+1)%2-1)/2)`
-/

namespace A085599.P12562405392009484258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat + (((n + 1) % 2 : ℕ) : ℤ) - 1 : ℚ) / 2⌋

end

end A085599.P12562405392009484258

namespace A085599

/-- `floor((A000010(Δ[n²]+1)+(n+1)%2-1)/2)` -/
def P12562405392009484258.Spec : Prop :=
  ∀ n, P12562405392009484258.a n = A085599 (n + 1)

end A085599

/-! ## A085599.P17726060895112048733

`A004526(n)-A219839(n+1)`
-/

namespace A085599.P17726060895112048733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n - A219839 (n + 1)

end

end A085599.P17726060895112048733

namespace A085599

/-- `A004526(n)-A219839(n+1)` -/
def P17726060895112048733.Spec : Prop :=
  ∀ n, P17726060895112048733.a n = A085599 (n + 1)

end A085599

/-! ## A085599.P6447241152916249174

`A055034(n+1)-A135528(n+1)`
-/

namespace A085599.P6447241152916249174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (n + 1) - A135528 (n + 1)

end

end A085599.P6447241152916249174

namespace A085599

/-- `A055034(n+1)-A135528(n+1)` -/
def P6447241152916249174.Spec : Prop :=
  ∀ n, P6447241152916249174.a n = A085599 (n + 1)

end A085599

/-! ## A085599.P8024542679038340902

`ceil((A000010(n+1)-1)/A040001(n))`
-/

namespace A085599.P8024542679038340902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000010 (n + 1) - 1 : ℚ) / (A040001 n : ℚ)⌉

end

end A085599.P8024542679038340902

namespace A085599

/-- `ceil((A000010(n+1)-1)/A040001(n))` -/
def P8024542679038340902.Spec : Prop :=
  ∀ n, P8024542679038340902.a n = A085599 (n + 1)

end A085599

