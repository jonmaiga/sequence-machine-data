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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A038400: List of pairs of consecutive numbers each with 6 divisors (duplicates removed).

The programs for A038400, there is no canonical definition to state claims against.
-/

/-! ## A038400.P1366550734125042870

`∪[A049103(n+1), A049104(n+1)]`
-/

namespace A038400.P1366550734125042870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038400.P1366550734125042870

/-! ## A038400.P14352567544514213970

`∪[A049103(n+1), A074172(n+1)+1]`
-/

namespace A038400.P14352567544514213970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074172 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038400.P14352567544514213970

/-! ## A038400.P13523196257653686725

`∪[A049347(3*n+1)+A049104(n+1), A049104(n+1)]`
-/

namespace A038400.P13523196257653686725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (3 * n + 1) + A049104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038400.P13523196257653686725

/-! ## A038400.P2835710408858463653

`A028310(∪[A049103(n+1)+1, A049103(n+1)])`
-/

namespace A038400.P2835710408858463653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049103 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049103 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A038400.P2835710408858463653

/-! ## A038400.P2893230230422370252

`A028310(∪[A049104(n+1)-1, A049104(n+1)])`
-/

namespace A038400.P2893230230422370252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049104 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049104 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A038400.P2893230230422370252

/-! ## A038400.P13148432047447364173

`∪[A011760(A049104(n+1)-2), A049104(n+1)]`
-/

namespace A038400.P13148432047447364173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A049104 (n + 1) - 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038400.P13148432047447364173

/-! ## A038400.P2266288539607522380

`∪[A020725(A049104(n+1)-2), A049104(n+1)]`
-/

namespace A038400.P2266288539607522380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A049104 (n + 1) - 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038400.P2266288539607522380

/-! ## A038400.P16644235927653839848

`∩[A030515(n+1), A225756(n+1)]`
-/

namespace A038400.P16644235927653839848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038400.P16644235927653839848

/-! ## A038400.P11581015885606706671

`∩[A162947(n+1), A225756(n+1)]`
-/

namespace A038400.P11581015885606706671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038400.P11581015885606706671

/-! ## A038400.P11319391493486614994

`∩[A225756(n+1), A393940(n+1)]`
-/

namespace A038400.P11319391493486614994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038400.P11319391493486614994

/-!
# A038401: Coordination sequence T3 for Zeolite Code AFN.

The programs for A038401, there is no canonical definition to state claims against.
-/

/-! ## A038401.P10764633807347398275

`A024983(n)-A175402(A038421(n))`
-/

namespace A038401.P10764633807347398275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024983 n - A175402 (A038421 n).toNat

end

end A038401.P10764633807347398275

/-! ## A038401.P9657686542075143700

`A300739(n)-A087624(A083098(n))`
-/

namespace A038401.P9657686542075143700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300739 n - A087624 (A083098 n).toNat

end

end A038401.P9657686542075143700

/-! ## A038401.P1298689911827562681

`A157728(n+5)-A033105(A144005(n))`
-/

namespace A038401.P1298689911827562681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157728 (n + 5) - A033105 (A144005 n).toNat

end

end A038401.P1298689911827562681

/-! ## A038401.P5768659580365639961

`∑[A194258(A275959(n)+A022431(n))+n]`
-/

namespace A038401.P5768659580365639961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194258 (A275959 n + A022431 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038401.P5768659580365639961

/-!
# A038402: Coordination sequence T2 for Zeolite Code AFN.

The programs for A038402, there is no canonical definition to state claims against.
-/

/-! ## A038402.P8617486979401580123

`∑[∑[A078570(10^ceil(n/2))]]`
-/

namespace A038402.P8617486979401580123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078570 (SequenceMachineLib.roundAway ((10 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038402.P8617486979401580123

/-! ## A038402.P18375475191617723628

`∑[∑[A194968(A056449(n))]]`
-/

namespace A038402.P18375475191617723628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194968 (A056449 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038402.P18375475191617723628

/-! ## A038402.P9291973006752533753

`∑[∑[A216763(A249378(n+1))]]`
-/

namespace A038402.P9291973006752533753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216763 (A249378 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038402.P9291973006752533753

/-! ## A038402.P3289535766707840597

`∑[∑[A276605(A007678(2*(n+2)))]]`
-/

namespace A038402.P3289535766707840597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276605 (A007678 (2 * (n + 2))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038402.P3289535766707840597

/-! ## A038402.P10185510288718846212

`∑[∑[A001222(A168542(3*n+4))]]`
-/

namespace A038402.P10185510288718846212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A168542 (3 * n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038402.P10185510288718846212

/-!
# A038405: Coordination sequence T3 for Zeolite Code AWO.

The programs for A038405, there is no canonical definition to state claims against.
-/

/-! ## A038405.P5731680585315985255

`A301245(n)-A107846(A005566(n))`
-/

namespace A038405.P5731680585315985255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301245 n - A107846 (A005566 n).toNat

end

end A038405.P5731680585315985255

/-! ## A038405.P16528373054877435458

`A301245(n)-A319988(A306946(n))`
-/

namespace A038405.P16528373054877435458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301245 n - A319988 (A306946 n).toNat

end

end A038405.P16528373054877435458

/-! ## A038405.P13321834551946602872

`A000124(2*n)-A328828(A108304(n+1))`
-/

namespace A038405.P13321834551946602872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (2 * n) - A328828 (A108304 (n + 1)).toNat

end

end A038405.P13321834551946602872

/-! ## A038405.P7690475776485194115

`A098240(A098280(n+1)+n²)+n²-A107846(A005566(n))`
-/

namespace A038405.P7690475776485194115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098240 (A098280 (n + 1) + (n ^ 2 : ℤ)).toNat + (n ^ 2 : ℤ) - A107846 (A005566 n).toNat

end

end A038405.P7690475776485194115

/-!
# A038406: Coordination sequence T1 for Zeolite Code AWO.

The programs for A038406, there is no canonical definition to state claims against.
-/

/-! ## A038406.P13218948323656375212

`A247422(∑[A153000(n+1)])`
-/

namespace A038406.P13218948323656375212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247422 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A038406.P13218948323656375212

/-! ## A038406.P3908509539899179512

`∑[∑[A354584(A075723(2*n+1))]]`
-/

namespace A038406.P3908509539899179512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354584 (A075723 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038406.P3908509539899179512

/-!
# A038407: Coordination sequence T2 for Zeolite Code AWO.

The programs for A038407, there is no canonical definition to state claims against.
-/

/-! ## A038407.P10480704400629318475

`A301012(n)-A319000(A247192(n+1))`
-/

namespace A038407.P10480704400629318475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301012 n - A319000 (A247192 (n + 1)).toNat

end

end A038407.P10480704400629318475

/-! ## A038407.P7981134880594684641

`A301012(n)-A351319(A351318(n+1))`
-/

namespace A038407.P7981134880594684641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301012 n - A351319 (A351318 (n + 1)).toNat

end

end A038407.P7981134880594684641

/-! ## A038407.P11148376487071801653

`A246705(∑[∑[A129690(n+1)]])`
-/

namespace A038407.P11148376487071801653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129690 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246705 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A038407.P11148376487071801653

/-!
# A038408: Coordination sequence for Zeolite Code DFT.

The programs for A038408, the canonical program `A038408.P3349080301111635899` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038408 has offset 0).

The definition of A038408 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038408.P3349080301111635899

`ogf((1+3x+6x^2+10x^3+12x^4+12x^5+10x^6+6x^7+3x^8+x^9)/(1-x-x^3+x^4-x^5+x^6+x^8-x^9))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A038408

/-- `ogf((1+3x+6x^2+10x^3+12x^4+12x^5+10x^6+6x^7+3x^8+x^9)/(1-x-x^3+x^4-x^5+x^6+x^8-x^9))` -/
def P3349080301111635899.Spec : Prop :=
  ∀ n, P3349080301111635899.a n = A038408 n

theorem P3349080301111635899.correct : P3349080301111635899.Spec := by
  intro n
  simp only [A038408]

end A038408

/-! ## A038408.P14381304774561669787

`floor(A019561(n)/A005901(n))`
-/

namespace A038408.P14381304774561669787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019561 n : ℚ) / (A005901 n : ℚ)⌋

end

end A038408.P14381304774561669787

namespace A038408

/-- `floor(A019561(n)/A005901(n))` -/
def P14381304774561669787.Spec : Prop :=
  ∀ n, P14381304774561669787.a n = A038408 n

end A038408

/-! ## A038408.P13151997192456206695

`floor(A019561(n)/A158187(n))`
-/

namespace A038408.P13151997192456206695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019561 n : ℚ) / (A158187 n : ℚ)⌋

end

end A038408.P13151997192456206695

namespace A038408

/-- `floor(A019561(n)/A158187(n))` -/
def P13151997192456206695.Spec : Prop :=
  ∀ n, P13151997192456206695.a n = A038408 n

end A038408

/-! ## A038408.P5720364673303233503

`ceil((A008137(A005843(n))+2)/3)`
-/

namespace A038408.P5720364673303233503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008137 (A005843 n).toNat + 2 : ℚ) / 3⌉

end

end A038408.P5720364673303233503

namespace A038408

/-- `ceil((A008137(A005843(n))+2)/3)` -/
def P5720364673303233503.Spec : Prop :=
  ∀ n, P5720364673303233503.a n = A038408 n

end A038408

/-! ## A038408.P6299241392958211965

`A299255(n)-A008738(A008574(n))`
-/

namespace A038408.P6299241392958211965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299255 n - A008738 (A008574 n).toNat

end

end A038408.P6299241392958211965

namespace A038408

/-- `A299255(n)-A008738(A008574(n))` -/
def P6299241392958211965.Spec : Prop :=
  ∀ n, P6299241392958211965.a n = A038408 n

end A038408

/-! ## A038408.P9622738368618494854

`A299255(n)-A008738(A008586(n))`
-/

namespace A038408.P9622738368618494854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299255 n - A008738 (A008586 n).toNat

end

end A038408.P9622738368618494854

namespace A038408

/-- `A299255(n)-A008738(A008586(n))` -/
def P9622738368618494854.Spec : Prop :=
  ∀ n, P9622738368618494854.a n = A038408 n

end A038408

/-! ## A038408.P4227654724762269371

`A008672(8*n+3)-A008574(n)`
-/

namespace A038408.P4227654724762269371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008672 (8 * n + 3) - A008574 n

end

end A038408.P4227654724762269371

namespace A038408

/-- `A008672(8*n+3)-A008574(n)` -/
def P4227654724762269371.Spec : Prop :=
  ∀ n, P4227654724762269371.a n = A038408 n

end A038408

/-! ## A038408.P14175175963492441036

`A008672(8*n+3)-A004275(2*n+1)`
-/

namespace A038408.P14175175963492441036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008672 (8 * n + 3) - A004275 (2 * n + 1)

end

end A038408.P14175175963492441036

namespace A038408

/-- `A008672(8*n+3)-A004275(2*n+1)` -/
def P14175175963492441036.Spec : Prop :=
  ∀ n, P14175175963492441036.a n = A038408 n

end A038408

/-! ## A038408.P14979724875111498362

`A005893(n)+A004396(A118015(n))`
-/

namespace A038408.P14979724875111498362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n + A004396 (A118015 n).toNat

end

end A038408.P14979724875111498362

namespace A038408

/-- `A005893(n)+A004396(A118015(n))` -/
def P14979724875111498362.Spec : Prop :=
  ∀ n, P14979724875111498362.a n = A038408 n

end A038408

/-! ## A038408.P9253008014236953685

`A047497(A115285(n))`
-/

namespace A038408.P9253008014236953685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047497 (A115285 n).toNat

end

end A038408.P9253008014236953685

namespace A038408

/-- `A047497(A115285(n))` -/
def P9253008014236953685.Spec : Prop :=
  ∀ n, P9253008014236953685.a n = A038408 n

end A038408

/-!
# A038409: Coordination sequence T1 for Zeolite Code ESV.

The programs for A038409, there is no canonical definition to state claims against.
-/

/-! ## A038409.P534665126299027079

`∑[∑[A105111(A270831(3*n+1))]]`
-/

namespace A038409.P534665126299027079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105111 (A270831 (3 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038409.P534665126299027079

/-! ## A038409.P881897487767765977

`∑[A310080(n)+A087049(A000302(n)+1)]`
-/

namespace A038409.P881897487767765977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310080 n + A087049 (A000302 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038409.P881897487767765977

/-! ## A038409.P1268264997817160946

`∑[A066401(A310081(n)²)]`
-/

namespace A038409.P1268264997817160946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066401 (A310081 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038409.P1268264997817160946

/-! ## A038409.P10459498133993940748

`∑[∑[A030496(A164873(n+1))]]`
-/

namespace A038409.P10459498133993940748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (A164873 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038409.P10459498133993940748

/-!
# A038410: Coordination sequence T2 for Zeolite Code ESV.

The programs for A038410, there is no canonical definition to state claims against.
-/

/-! ## A038410.P12723864931097137641

`∑[∑[A167489(A062536(n+1))]]`
-/

namespace A038410.P12723864931097137641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (A062536 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038410.P12723864931097137641

/-! ## A038410.P10202810657175322095

`A301177(n)-A342859(A038384(n))`
-/

namespace A038410.P10202810657175322095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301177 n - A342859 (A038384 n).toNat

end

end A038410.P10202810657175322095

/-! ## A038410.P13091044835698948317

`xor(A198318(A001629(n)), A301177(n))`
-/

namespace A038410.P13091044835698948317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A198318 (A001629 n).toNat) (A301177 n)

end

end A038410.P13091044835698948317

/-! ## A038410.P7686353391786879770

`A187568(A179178(n+1))-A342859(A038384(n))`
-/

namespace A038410.P7686353391786879770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187568 (A179178 (n + 1)).toNat - A342859 (A038384 n).toNat

end

end A038410.P7686353391786879770

/-!
# A038411: Coordination sequence T4 for Zeolite Code ESV.

The programs for A038411, there is no canonical definition to state claims against.
-/

/-! ## A038411.P16687973525615002216

`A003056(Δ[C(n+2, 3)²])-n`
-/

namespace A038411.P16687973525615002216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 3 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A038411.P16687973525615002216

/-! ## A038411.P1180351846365985567

`∑[∑[A302242(Δ[n!]+1)+2]-1]`
-/

namespace A038411.P1180351846365985567
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 ((f3 (n + 1) : ℤ) - (f3 n : ℤ) + 1).toNat + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038411.P1180351846365985567

/-! ## A038411.P12192537048418734670

`A166737(A110611(n+1))`
-/

namespace A038411.P12192537048418734670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166737 (A110611 (n + 1)).toNat

end

end A038411.P12192537048418734670

/-! ## A038411.P5579732596219168055

`A179182(A134578(n+1))`
-/

namespace A038411.P5579732596219168055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179182 (A134578 (n + 1)).toNat

end

end A038411.P5579732596219168055

/-!
# A038412: Coordination sequence T3 for Zeolite Code ESV.

The programs for A038412, there is no canonical definition to state claims against.
-/

/-! ## A038412.P11027047215163063655

`A008034(n)-A284388(A261590(n))`
-/

namespace A038412.P11027047215163063655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008034 n - A284388 (A261590 n).toNat

end

end A038412.P11027047215163063655

/-! ## A038412.P14477889423074697837

`∑[∑[A289849(A297830(n))]]`
-/

namespace A038412.P14477889423074697837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289849 (A297830 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038412.P14477889423074697837

/-! ## A038412.P3332924592588354910

`A238097(A210344(n))+A008000(n)`
-/

namespace A038412.P3332924592588354910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238097 (A210344 n).toNat + A008000 n

end

end A038412.P3332924592588354910

/-! ## A038412.P16870796057474874615

`A016430(n)-A016380(A016435(n))`
-/

namespace A038412.P16870796057474874615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016430 n - A016380 (A016435 n).toNat

end

end A038412.P16870796057474874615

/-! ## A038412.P7657540521298302245

`A016430(n)-A016389(A077229(n))`
-/

namespace A038412.P7657540521298302245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016430 n - A016389 (A077229 n).toNat

end

end A038412.P7657540521298302245

/-!
# A038413: Coordination sequence T6 for Zeolite Code ESV.

The programs for A038413, there is no canonical definition to state claims against.
-/

/-! ## A038413.P18062657690227898834

`A079067(n+1)+A003056(A027810(n))`
-/

namespace A038413.P18062657690227898834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (n + 1) + A003056 (A027810 n).toNat

end

end A038413.P18062657690227898834

/-! ## A038413.P7426366172441595305

`∑[A244041(A244037(n+1)+A244036(n+1))]`
-/

namespace A038413.P7426366172441595305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244041 (A244037 (n + 1) + A244036 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038413.P7426366172441595305

/-!
# A038414: Coordination sequence T5 for Zeolite Code ESV.

The programs for A038414, there is no canonical definition to state claims against.
-/

/-! ## A038414.P3325016815333509508

`∑[∑[A048669(A001582(n))]]`
-/

namespace A038414.P3325016815333509508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048669 (A001582 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038414.P3325016815333509508

/-! ## A038414.P7355911850659385565

`A127325(A005893(n))+A008000(n)`
-/

namespace A038414.P7355911850659385565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127325 (A005893 n).toNat + A008000 n

end

end A038414.P7355911850659385565

/-! ## A038414.P5030367021735670177

`A269247(A118896(n))+A008000(n)`
-/

namespace A038414.P5030367021735670177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269247 (A118896 n).toNat + A008000 n

end

end A038414.P5030367021735670177

/-! ## A038414.P5713126433460216592

`A323023(A050291(n))+A037048(n+2)`
-/

namespace A038414.P5713126433460216592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323023 (A050291 n).toNat + A037048 (n + 2)

end

end A038414.P5713126433460216592

/-!
# A038415: Coordination sequence T5 for Zeolite Code STT.

The programs for A038415, there is no canonical definition to state claims against.
-/

/-! ## A038415.P9753352471149193794

`∑[A216505(∑[A216500(2*n+1)])]`
-/

namespace A038415.P9753352471149193794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216500 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216505 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038415.P9753352471149193794

/-! ## A038415.P11429706063222629727

`A346993(∑[∑[A326843(n)]])`
-/

namespace A038415.P11429706063222629727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326843 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346993 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A038415.P11429706063222629727

/-! ## A038415.P9137152564515402351

`∑[∑[A045778(A055552(n+4))]]`
-/

namespace A038415.P9137152564515402351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A055552 (n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038415.P9137152564515402351

/-! ## A038415.P2179782516140305689

`A346993(∑[A003238(n+1)+n])`
-/

namespace A038415.P2179782516140305689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003238 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346993 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A038415.P2179782516140305689

/-!
# A038417: Coordination sequence T4 for Zeolite Code STT.

The programs for A038417, there is no canonical definition to state claims against.
-/

/-! ## A038417.P10600490310258333445

`∑[∑[A141110(A141096(3*n+5))]]`
-/

namespace A038417.P10600490310258333445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141110 (A141096 (3 * n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038417.P10600490310258333445

/-! ## A038417.P8624621169117885986

`∑[A156251(A004001(n+1)*A353579(n+1)+1)+n]`
-/

namespace A038417.P8624621169117885986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156251 (A004001 (n + 1) * A353579 (n + 1) + 1).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038417.P8624621169117885986

/-!
# A038419: Coordination sequence T7 for Zeolite Code STT.

The programs for A038419, there is no canonical definition to state claims against.
-/

/-! ## A038419.P2732758588421455753

`A033923(A033938(n+1))+2*n²`
-/

namespace A038419.P2732758588421455753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033923 (A033938 (n + 1)).toNat + (2 * n ^ 2 : ℤ)

end

end A038419.P2732758588421455753

/-!
# A038423: Coordination sequence T2 for Zeolite Code STT.

The programs for A038423, there is no canonical definition to state claims against.
-/

/-! ## A038423.P17830499912642596152

`A257991(A096752(n))+A008000(n)`
-/

namespace A038423.P17830499912642596152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (A096752 n).toNat + A008000 n

end

end A038423.P17830499912642596152

/-! ## A038423.P7026382613629270462

`A288969(A011971(2*n+1))+A008000(n)`
-/

namespace A038423.P7026382613629270462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288969 (A011971 (2 * n + 1)).toNat + A008000 n

end

end A038423.P7026382613629270462

/-!
# A038426: Coordination sequence T3 for Zeolite Code STT.

The programs for A038426, there is no canonical definition to state claims against.
-/

/-! ## A038426.P6692002827882589324

`A330060((n+1)²)-A052402(n+1)`
-/

namespace A038426.P6692002827882589324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330060 ((n + 1) ^ 2) - A052402 (n + 1)

end

end A038426.P6692002827882589324

/-!
# A038427: Coordination sequence T15 for Zeolite Code STT.

The programs for A038427, there is no canonical definition to state claims against.
-/

/-! ## A038427.P68906774813763280

`or(A001221(A276975(n+1)), A024986(n))`
-/

namespace A038427.P68906774813763280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A276975 (n + 1)).toNat) (A024986 n)

end

end A038427.P68906774813763280

/-!
# A038428: Coordination sequence T1 for Zeolite Code STT.

The programs for A038428, there is no canonical definition to state claims against.
-/

/-! ## A038428.P2529276016315750754

`A126110(A081123(n))+A000217(2*n)`
-/

namespace A038428.P2529276016315750754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126110 (A081123 n).toNat + A000217 (2 * n)

end

end A038428.P2529276016315750754

/-!
# A038433: Coordination sequence T3 for Zeolite Code SFF.

The programs for A038433, there is no canonical definition to state claims against.
-/

/-! ## A038433.P11475353361026470031

`A008005(n)-A089051(A092661(n+1))`
-/

namespace A038433.P11475353361026470031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008005 n - A089051 (A092661 (n + 1)).toNat

end

end A038433.P11475353361026470031

/-! ## A038433.P2944423240624104269

`∑[A300066(A155752(3*n+1))]`
-/

namespace A038433.P2944423240624104269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300066 (A155752 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038433.P2944423240624104269

/-! ## A038433.P7104597794538348947

`∑[∑[A265336(A344741(3*(n+1)))]]`
-/

namespace A038433.P7104597794538348947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265336 (A344741 (3 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038433.P7104597794538348947

/-! ## A038433.P9828512216160785362

`A324191(A213229(n))+n*Δ[n²]`
-/

namespace A038433.P9828512216160785362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324191 (A213229 n).toNat + (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A038433.P9828512216160785362

/-!
# A038435: Coordination sequence T8 for Zeolite Code SFF.

The programs for A038435, there is no canonical definition to state claims against.
-/

/-! ## A038435.P13732555357334918925

`A038442(n)-A162782(A317884(n+1))`
-/

namespace A038435.P13732555357334918925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038442 n - A162782 (A317884 (n + 1)).toNat

end

end A038435.P13732555357334918925

/-! ## A038435.P10076251233190319865

`A003056(A003056(3*n+1)*A290132(n+1))`
-/

namespace A038435.P10076251233190319865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A003056 (3 * n + 1) * A290132 (n + 1)).toNat

end

end A038435.P10076251233190319865

/-!
# A038436: Coordination sequence T5 for Zeolite Code SFF.

The programs for A038436, there is no canonical definition to state claims against.
-/

/-! ## A038436.P7397862863569204504

`abs(∑[4*n]-(-1)^n)-A344616(A108774(n+4))`
-/

namespace A038436.P7397862863569204504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (-1) ^ n| - A344616 (A108774 (n + 4)).toNat

end

end A038436.P7397862863569204504

/-! ## A038436.P10527366546331389997

`A038548(A117158(n))+A014105(n)`
-/

namespace A038436.P10527366546331389997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A117158 n).toNat + A014105 n

end

end A038436.P10527366546331389997

/-! ## A038436.P10737928643588128890

`A144016(A144005(n))+A014105(n)`
-/

namespace A038436.P10737928643588128890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144016 (A144005 n).toNat + A014105 n

end

end A038436.P10737928643588128890

/-! ## A038436.P11223481832663614681

`or(A008034(n), A098800(A008025(n)))`
-/

namespace A038436.P11223481832663614681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008034 n) (A098800 (A008025 n).toNat)

end

end A038436.P11223481832663614681

/-!
# A038437: Coordination sequence T1 for Zeolite Code SFF.

The programs for A038437, there is no canonical definition to state claims against.
-/

/-! ## A038437.P6427294982852644461

`A038438(n)-A285006(A077011(n+1))`
-/

namespace A038437.P6427294982852644461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038438 n - A285006 (A077011 (n + 1)).toNat

end

end A038437.P6427294982852644461

/-!
# A038438: Coordination sequence T2 for Zeolite Code SFF.

The programs for A038438, there is no canonical definition to state claims against.
-/

/-! ## A038438.P3756293690769530113

`xor(A001221(A309861(n)), A038443(n))`
-/

namespace A038438.P3756293690769530113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A309861 n).toNat) (A038443 n)

end

end A038438.P3756293690769530113

/-!
# A038439: Coordination sequence T4 for Zeolite Code STF.

The programs for A038439, there is no canonical definition to state claims against.
-/

/-! ## A038439.P16679728872528426539

`A008196(n)-A336921(A005284(n+6))`
-/

namespace A038439.P16679728872528426539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008196 n - A336921 (A005284 (n + 6)).toNat

end

end A038439.P16679728872528426539

/-!
# A038441: Coordination sequence T2 for Zeolite Code STF.

The programs for A038441, there is no canonical definition to state claims against.
-/

/-! ## A038441.P10574879591266706583

`A058331(n)+A034968(A186202(n+1))`
-/

namespace A038441.P10574879591266706583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 n + A034968 (A186202 (n + 1)).toNat

end

end A038441.P10574879591266706583

/-!
# A038442: Coordination sequence T3 for Zeolite Code STF.

The programs for A038442, there is no canonical definition to state claims against.
-/

/-! ## A038442.P4731910877598732532

`xor(A008255(n), A175402(A005893(n)))`
-/

namespace A038442.P4731910877598732532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008255 n) (A175402 (A005893 n).toNat)

end

end A038442.P4731910877598732532

/-! ## A038442.P318412970036719316

`A003056(A087811(n+1)*A143128(n+1))`
-/

namespace A038442.P318412970036719316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A087811 (n + 1) * A143128 (n + 1)).toNat

end

end A038442.P318412970036719316

/-!
# A038443: Coordination sequence T1 for Zeolite Code STF.

The programs for A038443, there is no canonical definition to state claims against.
-/

/-! ## A038443.P13187745358949916534

`A038438(n)-A275855(A001700(n))`
-/

namespace A038443.P13187745358949916534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038438 n - A275855 (A001700 n).toNat

end

end A038443.P13187745358949916534

/-! ## A038443.P4371171136092051841

`A038438(n)-A185284(A053359(n+1))`
-/

namespace A038443.P4371171136092051841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038438 n - A185284 (A053359 (n + 1)).toNat

end

end A038443.P4371171136092051841

/-! ## A038443.P1398263922164489570

`A038438(n)-A020987(A000578(3*n))`
-/

namespace A038443.P1398263922164489570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038438 n - A020987 (A000578 (3 * n)).toNat

end

end A038443.P1398263922164489570

/-!
# A038444: Sums of 2 distinct powers of 10.

The programs for A038444, the canonical program `A038444.P7379367993067628945` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038444 has offset 1).

The definition of A038444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4950 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038444.P14082633369023177733

`10^col(n)+10^∑[char[∑[n]]]`
-/

namespace A038444.P14082633369023177733
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ SequenceMachineLib.triCol n + 10 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A038444.P14082633369023177733

namespace A038444

/-- `10^col(n)+10^∑[char[∑[n]]]` -/
def P14082633369023177733.Spec : Prop :=
  ∀ n, (P14082633369023177733.a n : ℤ) = A038444 (n + 1)

end A038444

/-! ## A038444.P438432072447046937

`A052216(comp[∑[n]])`
-/

namespace A038444.P438432072447046937
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052216 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A038444.P438432072447046937

namespace A038444

/-- `A052216(comp[∑[n]])` -/
def P438432072447046937.Spec : Prop :=
  ∀ n, P438432072447046937.a n = A038444 (n + 1)

end A038444

/-! ## A038444.P2887908296456056505

`or(char[1], A052216(A014132(n+1)))`
-/

namespace A038444.P2887908296456056505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A052216 (A014132 (n + 1)).toNat)

end

end A038444.P2887908296456056505

namespace A038444

/-- `or(char[1], A052216(A014132(n+1)))` -/
def P2887908296456056505.Spec : Prop :=
  ∀ n, P2887908296456056505.a n = A038444 (n + 1)

end A038444

/-! ## A038444.P7379367993067628945

`lcm(A052216(A014132(n+1)), A057077(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038444

/-- `lcm(A052216(A014132(n+1)), A057077(n))` -/
def P7379367993067628945.Spec : Prop :=
  ∀ n, (P7379367993067628945.a n : ℤ) = A038444 (n + 1)

theorem P7379367993067628945.correct : P7379367993067628945.Spec := by
  intro n
  simp only [A038444, Nat.add_sub_cancel]

end A038444

/-! ## A038444.P12055323584006301545

`or(A052216(A014132(n+1)), A059268(n))`
-/

namespace A038444.P12055323584006301545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A052216 (A014132 (n + 1)).toNat) (A059268 n)

end

end A038444.P12055323584006301545

namespace A038444

/-- `or(A052216(A014132(n+1)), A059268(n))` -/
def P12055323584006301545.Spec : Prop :=
  ∀ n, P12055323584006301545.a n = A038444 (n + 1)

end A038444

/-! ## A038444.P3898780040457605734

`or(A052216(A014132(n+1)), A073423(n))`
-/

namespace A038444.P3898780040457605734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A052216 (A014132 (n + 1)).toNat) (A073423 n)

end

end A038444.P3898780040457605734

namespace A038444

/-- `or(A052216(A014132(n+1)), A073423(n))` -/
def P3898780040457605734.Spec : Prop :=
  ∀ n, P3898780040457605734.a n = A038444 (n + 1)

end A038444

/-! ## A038444.P5445503010040521872

`A052216(A014132(n+1))+A000007(n+1)`
-/

namespace A038444.P5445503010040521872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052216 (A014132 (n + 1)).toNat + A000007 (n + 1)

end

end A038444.P5445503010040521872

namespace A038444

/-- `A052216(A014132(n+1))+A000007(n+1)` -/
def P5445503010040521872.Spec : Prop :=
  ∀ n, P5445503010040521872.a n = A038444 (n + 1)

end A038444

/-! ## A038444.P13260001498182275886

`A052216(A014132(n+1))+A010052(4*n+2)`
-/

namespace A038444.P13260001498182275886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052216 (A014132 (n + 1)).toNat + A010052 (4 * n + 2)

end

end A038444.P13260001498182275886

namespace A038444

/-- `A052216(A014132(n+1))+A010052(4*n+2)` -/
def P13260001498182275886.Spec : Prop :=
  ∀ n, P13260001498182275886.a n = A038444 (n + 1)

end A038444

/-! ## A038444.P2957419582888569211

`A052216(A014132(n+1))*A063754(A000040(n+1))`
-/

namespace A038444.P2957419582888569211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052216 (A014132 (n + 1)).toNat * A063754 (A000040 (n + 1)).toNat

end

end A038444.P2957419582888569211

namespace A038444

/-- `A052216(A014132(n+1))*A063754(A000040(n+1))` -/
def P2957419582888569211.Spec : Prop :=
  ∀ n, P2957419582888569211.a n = A038444 (n + 1)

end A038444

/-! ## A038444.P1608105134090622416

`A052216(A014132(n+1))+A008683(A044356(n+1))`
-/

namespace A038444.P1608105134090622416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052216 (A014132 (n + 1)).toNat + A008683 (A044356 (n + 1)).toNat

end

end A038444.P1608105134090622416

namespace A038444

/-- `A052216(A014132(n+1))+A008683(A044356(n+1))` -/
def P1608105134090622416.Spec : Prop :=
  ∀ n, P1608105134090622416.a n = A038444 (n + 1)

end A038444

/-! ## A038444.P12889322309735652013

`A052216(A014132(n+1))+A037861(A031443(n+1))`
-/

namespace A038444.P12889322309735652013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052216 (A014132 (n + 1)).toNat + A037861 (A031443 (n + 1)).toNat

end

end A038444.P12889322309735652013

namespace A038444

/-- `A052216(A014132(n+1))+A037861(A031443(n+1))` -/
def P12889322309735652013.Spec : Prop :=
  ∀ n, P12889322309735652013.a n = A038444 (n + 1)

end A038444

/-! ## A038444.P6075433529831813500

`A073423(A091729(n+1))+A052216(A014132(n+1))`
-/

namespace A038444.P6075433529831813500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 (A091729 (n + 1)).toNat + A052216 (A014132 (n + 1)).toNat

end

end A038444.P6075433529831813500

namespace A038444

/-- `A073423(A091729(n+1))+A052216(A014132(n+1))` -/
def P6075433529831813500.Spec : Prop :=
  ∀ n, P6075433529831813500.a n = A038444 (n + 1)

end A038444

/-! ## A038444.P10460466164058102425

`A008683(A205148(n+1))*A052216(A014132(n+1))`
-/

namespace A038444.P10460466164058102425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A205148 (n + 1)).toNat * A052216 (A014132 (n + 1)).toNat

end

end A038444.P10460466164058102425

namespace A038444

/-- `A008683(A205148(n+1))*A052216(A014132(n+1))` -/
def P10460466164058102425.Spec : Prop :=
  ∀ n, P10460466164058102425.a n = A038444 (n + 1)

end A038444

/-! ## A038444.P6277570299440565229

`∩[A052216(n+1), A136808(n+1)]`
-/

namespace A038444.P6277570299440565229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038444.P6277570299440565229

namespace A038444

/-- `∩[A052216(n+1), A136808(n+1)]` -/
def P6277570299440565229.Spec : Prop :=
  ∀ n, (P6277570299440565229.a n : ℤ) = A038444 (n + 1)

end A038444

/-! ## A038444.P16346897510472770746

`∩[A052216(n+1), A136827(n+1)]`
-/

namespace A038444.P16346897510472770746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038444.P16346897510472770746

namespace A038444

/-- `∩[A052216(n+1), A136827(n+1)]` -/
def P16346897510472770746.Spec : Prop :=
  ∀ n, (P16346897510472770746.a n : ℤ) = A038444 (n + 1)

end A038444

/-! ## A038444.P5242473194815954643

`∩[A052216(n+1), A136831(n+1)]`
-/

namespace A038444.P5242473194815954643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038444.P5242473194815954643

namespace A038444

/-- `∩[A052216(n+1), A136831(n+1)]` -/
def P5242473194815954643.Spec : Prop :=
  ∀ n, (P5242473194815954643.a n : ℤ) = A038444 (n + 1)

end A038444

/-! ## A038444.P8736562512711612343

`∩[A052216(n+1), A136836(n+1)]`
-/

namespace A038444.P8736562512711612343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038444.P8736562512711612343

namespace A038444

/-- `∩[A052216(n+1), A136836(n+1)]` -/
def P8736562512711612343.Spec : Prop :=
  ∀ n, (P8736562512711612343.a n : ℤ) = A038444 (n + 1)

end A038444

/-! ## A038444.P10723574129329397255

`A300717(A090288(n))+A052216(A014132(n+1))`
-/

namespace A038444.P10723574129329397255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300717 (A090288 n).toNat + A052216 (A014132 (n + 1)).toNat

end

end A038444.P10723574129329397255

namespace A038444

/-- `A300717(A090288(n))+A052216(A014132(n+1))` -/
def P10723574129329397255.Spec : Prop :=
  ∀ n, P10723574129329397255.a n = A038444 (n + 1)

end A038444

/-! ## A038444.P12711263107879894765

`∩[A052216(n+1), A136809(n+1)]`
-/

namespace A038444.P12711263107879894765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038444.P12711263107879894765

namespace A038444

/-- `∩[A052216(n+1), A136809(n+1)]` -/
def P12711263107879894765.Spec : Prop :=
  ∀ n, (P12711263107879894765.a n : ℤ) = A038444 (n + 1)

end A038444

/-! ## A038444.P5494107214228749441

`∩[A052216(n+1), A255725(n+1)]`
-/

namespace A038444.P5494107214228749441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038444.P5494107214228749441

namespace A038444

/-- `∩[A052216(n+1), A255725(n+1)]` -/
def P5494107214228749441.Spec : Prop :=
  ∀ n, (P5494107214228749441.a n : ℤ) = A038444 (n + 1)

end A038444

/-!
# A038445: Sums of 3 distinct powers of 10.

The programs for A038445, there is no canonical definition to state claims against.
-/

/-! ## A038445.P4953192555620799881

`∩[A052217(n+1), A069263(n+1)]`
-/

namespace A038445.P4953192555620799881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038445.P4953192555620799881

/-! ## A038445.P8974493736016468709

`∩[A052217(n+1), A136809(n+1)]`
-/

namespace A038445.P8974493736016468709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038445.P8974493736016468709

/-! ## A038445.P1548737274666444450

`∩[A052217(n+1), A136813(n+1)]`
-/

namespace A038445.P1548737274666444450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038445.P1548737274666444450

/-! ## A038445.P16067869169586906369

`∩[A052217(n+1), A136814(n+1)]`
-/

namespace A038445.P16067869169586906369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038445.P16067869169586906369

/-! ## A038445.P158729211619643894

`A007088(A014311(n+1))`
-/

namespace A038445.P158729211619643894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A014311 (n + 1)).toNat

end

end A038445.P158729211619643894

/-! ## A038445.P14184985829535460064

`A007088(eq[8, A001316(n)])`
-/

namespace A038445.P14184985829535460064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038445.P14184985829535460064

/-! ## A038445.P10707147413279405047

`∩[A052217(n+1), A007088(n)]`
-/

namespace A038445.P10707147413279405047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038445.P10707147413279405047

/-! ## A038445.P1141147699606805737

`∩[A052218(n+1)-1, A007088(n)]`
-/

namespace A038445.P1141147699606805737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052218 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038445.P1141147699606805737

/-! ## A038445.P340557870302768557

`∩[A052219(n+1)-2, A007088(n)]`
-/

namespace A038445.P340557870302768557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052219 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038445.P340557870302768557

/-! ## A038445.P7317256408791109030

`A007088(eq[3, 2*n-A005187(n)])`
-/

namespace A038445.P7317256408791109030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038445.P7317256408791109030

/-! ## A038445.P9819310200769870939

`A007088(eq[3, n-A005187(n)+n])`
-/

namespace A038445.P9819310200769870939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005187 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038445.P9819310200769870939

/-! ## A038445.P4645716150211896104

`∩[A052217(n+1), A136812(n+1)]`
-/

namespace A038445.P4645716150211896104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038445.P4645716150211896104

/-! ## A038445.P17596005514573256560

`∩[A007088(n), A262712(n+1)]`
-/

namespace A038445.P17596005514573256560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038445.P17596005514573256560

/-! ## A038445.P6285102149595896890

`∩[A069263(n+1), A262712(n+1)]`
-/

namespace A038445.P6285102149595896890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038445.P6285102149595896890

/-! ## A038445.P2854253438668698659

`∩[A136809(n+1), A262712(n+1)]`
-/

namespace A038445.P2854253438668698659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038445.P2854253438668698659

/-! ## A038445.P14474519546238767159

`∩[A136813(n+1), A262712(n+1)]`
-/

namespace A038445.P14474519546238767159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038445.P14474519546238767159

/-! ## A038445.P1948611586158664454

`∩[A136814(n+1), A262712(n+1)]`
-/

namespace A038445.P1948611586158664454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038445.P1948611586158664454

/-! ## A038445.P10280073445688496115

`∩[A052217(n+1), A174417(n+1)]`
-/

namespace A038445.P10280073445688496115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038445.P10280073445688496115

/-! ## A038445.P4158299626337382074

`∩[A174417(n+1), A262712(n+1)]`
-/

namespace A038445.P4158299626337382074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038445.P4158299626337382074

/-! ## A038445.P5735203439223251069

`A007088(eq[3, A000120(n)])`
-/

namespace A038445.P5735203439223251069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038445.P5735203439223251069

/-!
# A038446: Sums of 4 distinct powers of 10.

The programs for A038446, the canonical program `A038446.P7323680706482103064` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038446 has offset 1).

The definition of A038446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1365 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038446.P6678898658749451377

`A007088(eq[5, a(and(n, n-1))+1])` with `a(0)=1, a(1)=0`
-/

namespace A038446.P6678898658749451377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A038446.P6678898658749451377

namespace A038446

/-- `A007088(eq[5, a(and(n, n-1))+1])` -/
def P6678898658749451377.Spec : Prop :=
  ∀ n, P6678898658749451377.a n = A038446 (n + 1)

end A038446

/-! ## A038446.P840463950062595885

`A007088(eq[1, a(floor(n/2))+n%2])` with `a(0)=-3`
-/

namespace A038446.P840463950062595885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-3] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038446.P840463950062595885

namespace A038446

/-- `A007088(eq[1, a(floor(n/2))+n%2])` -/
def P840463950062595885.Spec : Prop :=
  ∀ n, P840463950062595885.a n = A038446 (n + 1)

end A038446

/-! ## A038446.P7323680706482103064

`A007088(eq[0, a(n-1)+1-val(n, 2)])` with `a(0)=-4`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038446

/-- `A007088(eq[0, a(n-1)+1-val(n, 2)])` -/
def P7323680706482103064.Spec : Prop :=
  ∀ n, P7323680706482103064.a n = A038446 (n + 1)

theorem P7323680706482103064.correct : P7323680706482103064.Spec := by
  intro n
  simp only [A038446, Nat.add_sub_cancel]

end A038446

/-! ## A038446.P15035331116717762785

`A007088(A014312(1+n))`
-/

namespace A038446.P15035331116717762785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A014312 (1 + n)).toNat

end

end A038446.P15035331116717762785

namespace A038446

/-- `A007088(A014312(1+n))` -/
def P15035331116717762785.Spec : Prop :=
  ∀ n, P15035331116717762785.a n = A038446 (n + 1)

end A038446

/-! ## A038446.P11884578585685391002

`A007088(eq[16, A001316(n)])`
-/

namespace A038446.P11884578585685391002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038446.P11884578585685391002

namespace A038446

/-- `A007088(eq[16, A001316(n)])` -/
def P11884578585685391002.Spec : Prop :=
  ∀ n, P11884578585685391002.a n = A038446 (n + 1)

end A038446

/-! ## A038446.P9460282528072195543

`∩[A052218(n+1), A007088(n)]`
-/

namespace A038446.P9460282528072195543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038446.P9460282528072195543

namespace A038446

/-- `∩[A052218(n+1), A007088(n)]` -/
def P9460282528072195543.Spec : Prop :=
  ∀ n, (P9460282528072195543.a n : ℤ) = A038446 (n + 1)

end A038446

/-! ## A038446.P5762917810953591523

`∩[A052219(n+1)-1, A007088(n)]`
-/

namespace A038446.P5762917810953591523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052219 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038446.P5762917810953591523

namespace A038446

/-- `∩[A052219(n+1)-1, A007088(n)]` -/
def P5762917810953591523.Spec : Prop :=
  ∀ n, (P5762917810953591523.a n : ℤ) = A038446 (n + 1)

end A038446

/-! ## A038446.P11826110525985219088

`A007088(eq[4, 2*n-A005187(n)])`
-/

namespace A038446.P11826110525985219088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038446.P11826110525985219088

namespace A038446

/-- `A007088(eq[4, 2*n-A005187(n)])` -/
def P11826110525985219088.Spec : Prop :=
  ∀ n, P11826110525985219088.a n = A038446 (n + 1)

end A038446

/-! ## A038446.P4779473502863410553

`∩[A052218(n+1), A385663(n+1)]`
-/

namespace A038446.P4779473502863410553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038446.P4779473502863410553

namespace A038446

/-- `∩[A052218(n+1), A385663(n+1)]` -/
def P4779473502863410553.Spec : Prop :=
  ∀ n, (P4779473502863410553.a n : ℤ) = A038446 (n + 1)

end A038446

/-! ## A038446.P10206543067276470913

`A007088(eq[4, n-A005187(n)+n])`
-/

namespace A038446.P10206543067276470913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005187 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038446.P10206543067276470913

namespace A038446

/-- `A007088(eq[4, n-A005187(n)+n])` -/
def P10206543067276470913.Spec : Prop :=
  ∀ n, P10206543067276470913.a n = A038446 (n + 1)

end A038446

/-! ## A038446.P3559216460078779608

`A007088(eq[4, A000120(n)])`
-/

namespace A038446.P3559216460078779608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038446.P3559216460078779608

namespace A038446

/-- `A007088(eq[4, A000120(n)])` -/
def P3559216460078779608.Spec : Prop :=
  ∀ n, P3559216460078779608.a n = A038446 (n + 1)

end A038446

/-! ## A038446.P13530300700071229595

`A007088(eq[4, n-A011371(n)])`
-/

namespace A038446.P13530300700071229595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A011371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038446.P13530300700071229595

namespace A038446

/-- `A007088(eq[4, n-A011371(n)])` -/
def P13530300700071229595.Spec : Prop :=
  ∀ n, P13530300700071229595.a n = A038446 (n + 1)

end A038446

/-! ## A038446.P16937617923322225201

`A007088(eq[4, A160385(n)+A160383(n)])`
-/

namespace A038446.P16937617923322225201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 n + A160383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038446.P16937617923322225201

namespace A038446

/-- `A007088(eq[4, A160385(n)+A160383(n)])` -/
def P16937617923322225201.Spec : Prop :=
  ∀ n, P16937617923322225201.a n = A038446 (n + 1)

end A038446

/-! ## A038446.P5734142833375687402

`A007088(eq[2, A238015(n)])`
-/

namespace A038446.P5734142833375687402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038446.P5734142833375687402

namespace A038446

/-- `A007088(eq[2, A238015(n)])` -/
def P5734142833375687402.Spec : Prop :=
  ∀ n, P5734142833375687402.a n = A038446 (n + 1)

end A038446

/-! ## A038446.P2539982466384694311

`A004283(A038466(n+1)/2)`
-/

namespace A038446.P2539982466384694311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004283 (SequenceMachineLib.roundAway ((A038466 (n + 1) : ℚ) / 2)).toNat

end

end A038446.P2539982466384694311

namespace A038446

/-- `A004283(A038466(n+1)/2)` -/
def P2539982466384694311.Spec : Prop :=
  ∀ n, P2539982466384694311.a n = A038446 (n + 1)

end A038446

/-! ## A038446.P512916447624442916

`A004283(A038466(n+1))`
-/

namespace A038446.P512916447624442916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004283 (A038466 (n + 1)).toNat

end

end A038446.P512916447624442916

namespace A038446

/-- `A004283(A038466(n+1))` -/
def P512916447624442916.Spec : Prop :=
  ∀ n, P512916447624442916.a n = A038446 (n + 1)

end A038446

/-! ## A038446.P17407843557055635183

`∩[A046031(n), A052218(n+1)]`
-/

namespace A038446.P17407843557055635183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046031 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038446.P17407843557055635183

namespace A038446

/-- `∩[A046031(n), A052218(n+1)]` -/
def P17407843557055635183.Spec : Prop :=
  ∀ n, (P17407843557055635183.a n : ℤ) = A038446 (n + 1)

end A038446

/-! ## A038446.P13192643357844435215

`∩[A197129(n+1), A385663(n+1)]`
-/

namespace A038446.P13192643357844435215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038446.P13192643357844435215

namespace A038446

/-- `∩[A197129(n+1), A385663(n+1)]` -/
def P13192643357844435215.Spec : Prop :=
  ∀ n, (P13192643357844435215.a n : ℤ) = A038446 (n + 1)

end A038446

/-!
# A038447: Sums of 5 distinct powers of 10.

The programs for A038447, the canonical program `A038447.P4607414645066330395` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038447 has offset 1).

The definition of A038447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3003 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038447.P4607414645066330395

`A007088(eq[12, a(and(n, n-1))+1])` with `a(0)=7`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038447

/-- `A007088(eq[12, a(and(n, n-1))+1])` -/
def P4607414645066330395.Spec : Prop :=
  ∀ n, P4607414645066330395.a n = A038447 (n + 1)

theorem P4607414645066330395.correct : P4607414645066330395.Spec := by
  intro n
  simp only [A038447, Nat.add_sub_cancel]

end A038447

/-! ## A038447.P17565453434179333956

`A007088(eq[0, a(n-1)+1-val(n, 2)])` with `a(0)=1, a(1)=-4`
-/

namespace A038447.P17565453434179333956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -4] fun n f2 =>
  f2 (n - 1) + (1 - (SequenceMachineLib.valuation n 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038447.P17565453434179333956

namespace A038447

/-- `A007088(eq[0, a(n-1)+1-val(n, 2)])` -/
def P17565453434179333956.Spec : Prop :=
  ∀ n, P17565453434179333956.a n = A038447 (n + 1)

end A038447

/-! ## A038447.P15501963697125795983

`A007088(A014313(1+n))`
-/

namespace A038447.P15501963697125795983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A014313 (1 + n)).toNat

end

end A038447.P15501963697125795983

namespace A038447

/-- `A007088(A014313(1+n))` -/
def P15501963697125795983.Spec : Prop :=
  ∀ n, P15501963697125795983.a n = A038447 (n + 1)

end A038447

/-! ## A038447.P4089194505901586873

`A007088(eq[5, log2(A001316(n))])`
-/

namespace A038447.P4089194505901586873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A038447.P4089194505901586873

namespace A038447

/-- `A007088(eq[5, log2(A001316(n))])` -/
def P4089194505901586873.Spec : Prop :=
  ∀ n, P4089194505901586873.a n = A038447 (n + 1)

end A038447

/-! ## A038447.P10784072803537191618

`A007088(eq[4, A001316(n)/8])`
-/

namespace A038447.P10784072803537191618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 n : ℚ) / 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A038447.P10784072803537191618

namespace A038447

/-- `A007088(eq[4, A001316(n)/8])` -/
def P10784072803537191618.Spec : Prop :=
  ∀ n, P10784072803537191618.a n = A038447 (n + 1)

end A038447

/-! ## A038447.P10387817843657989074

`∩[A052219(n+1), A007088(n)]`
-/

namespace A038447.P10387817843657989074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038447.P10387817843657989074

namespace A038447

/-- `∩[A052219(n+1), A007088(n)]` -/
def P10387817843657989074.Spec : Prop :=
  ∀ n, (P10387817843657989074.a n : ℤ) = A038447 (n + 1)

end A038447

/-! ## A038447.P14928279601720671841

`A007088(eq[8, sqrt(2*A001316(n))])`
-/

namespace A038447.P14928279601720671841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * A001316 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A038447.P14928279601720671841

namespace A038447

/-- `A007088(eq[8, sqrt(2*A001316(n))])` -/
def P14928279601720671841.Spec : Prop :=
  ∀ n, P14928279601720671841.a n = A038447 (n + 1)

end A038447

/-! ## A038447.P4365733037869581552

`A007088(eq[8, sqrt(A001316(n+1+n))])`
-/

namespace A038447.P4365733037869581552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001316 (n + 1 + n) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A038447.P4365733037869581552

namespace A038447

/-- `A007088(eq[8, sqrt(A001316(n+1+n))])` -/
def P4365733037869581552.Spec : Prop :=
  ∀ n, P4365733037869581552.a n = A038447 (n + 1)

end A038447

/-! ## A038447.P11691168396634277470

`A007088(eq[5, A000120(n)])`
-/

namespace A038447.P11691168396634277470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038447.P11691168396634277470

namespace A038447

/-- `A007088(eq[5, A000120(n)])` -/
def P11691168396634277470.Spec : Prop :=
  ∀ n, P11691168396634277470.a n = A038447 (n + 1)

end A038447

/-! ## A038447.P8140884497741648294

`A007088(eq[n+5, A092391(n)])`
-/

namespace A038447.P8140884497741648294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038447.P8140884497741648294

namespace A038447

/-- `A007088(eq[n+5, A092391(n)])` -/
def P8140884497741648294.Spec : Prop :=
  ∀ n, P8140884497741648294.a n = A038447 (n + 1)

end A038447

/-! ## A038447.P6538320047984299667

`A007088(eq[5, n-A011371(n)])`
-/

namespace A038447.P6538320047984299667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A011371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038447.P6538320047984299667

namespace A038447

/-- `A007088(eq[5, n-A011371(n)])` -/
def P6538320047984299667.Spec : Prop :=
  ∀ n, P6538320047984299667.a n = A038447 (n + 1)

end A038447

/-! ## A038447.P3621511666091386995

`A007088(eq[5, A092391(n)-n])`
-/

namespace A038447.P3621511666091386995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038447.P3621511666091386995

namespace A038447

/-- `A007088(eq[5, A092391(n)-n])` -/
def P3621511666091386995.Spec : Prop :=
  ∀ n, P3621511666091386995.a n = A038447 (n + 1)

end A038447

/-! ## A038447.P3404354931044942535

`A007088(eq[3, A324467(n)/5])`
-/

namespace A038447.P3404354931044942535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324467 n : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A038447.P3404354931044942535

namespace A038447

/-- `A007088(eq[3, A324467(n)/5])` -/
def P3404354931044942535.Spec : Prop :=
  ∀ n, P3404354931044942535.a n = A038447 (n + 1)

end A038447

/-! ## A038447.P10045171852009215705

`A185544(2*A014313(n+1))`
-/

namespace A038447.P10045171852009215705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A014313 (n + 1)).toNat

end

end A038447.P10045171852009215705

namespace A038447

/-- `A185544(2*A014313(n+1))` -/
def P10045171852009215705.Spec : Prop :=
  ∀ n, P10045171852009215705.a n = A038447 (n + 1)

end A038447

/-! ## A038447.P7638581382970709990

`A007088(eq[4, A238015(n)])`
-/

namespace A038447.P7638581382970709990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038447.P7638581382970709990

namespace A038447

/-- `A007088(eq[4, A238015(n)])` -/
def P7638581382970709990.Spec : Prop :=
  ∀ n, P7638581382970709990.a n = A038447 (n + 1)

end A038447

/-! ## A038447.P13426765941284351563

`A004283(A038467(n+1))`
-/

namespace A038447.P13426765941284351563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004283 (A038467 (n + 1)).toNat

end

end A038447.P13426765941284351563

namespace A038447

/-- `A004283(A038467(n+1))` -/
def P13426765941284351563.Spec : Prop :=
  ∀ n, P13426765941284351563.a n = A038447 (n + 1)

end A038447

/-!
# A038448: Sums of 6 distinct powers of 10.

The programs for A038448, the canonical program `A038448.P9426707168826442422` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038448 has offset 1).

The definition of A038448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5005 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038448.P9426707168826442422

`A007088(A023688(1+n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038448

/-- `A007088(A023688(1+n))` -/
def P9426707168826442422.Spec : Prop :=
  ∀ n, P9426707168826442422.a n = A038448 (n + 1)

theorem P9426707168826442422.correct : P9426707168826442422.Spec := by
  intro n
  simp only [A038448, Nat.add_sub_cancel]

end A038448

/-! ## A038448.P17967826178742387659

`A007088(eq[64, A001316(n)])`
-/

namespace A038448.P17967826178742387659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038448.P17967826178742387659

namespace A038448

/-- `A007088(eq[64, A001316(n)])` -/
def P17967826178742387659.Spec : Prop :=
  ∀ n, P17967826178742387659.a n = A038448 (n + 1)

end A038448

/-! ## A038448.P11700129664499984764

`A007088(eq[6, 2*n-A005187(n)])`
-/

namespace A038448.P11700129664499984764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038448.P11700129664499984764

namespace A038448

/-- `A007088(eq[6, 2*n-A005187(n)])` -/
def P11700129664499984764.Spec : Prop :=
  ∀ n, P11700129664499984764.a n = A038448 (n + 1)

end A038448

/-! ## A038448.P8538705329754748334

`A007088(eq[6, n-A005187(n)+n])`
-/

namespace A038448.P8538705329754748334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005187 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038448.P8538705329754748334

namespace A038448

/-- `A007088(eq[6, n-A005187(n)+n])` -/
def P8538705329754748334.Spec : Prop :=
  ∀ n, P8538705329754748334.a n = A038448 (n + 1)

end A038448

/-! ## A038448.P13413257110278172809

`A007088(eq[6, A000120(n)])`
-/

namespace A038448.P13413257110278172809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038448.P13413257110278172809

namespace A038448

/-- `A007088(eq[6, A000120(n)])` -/
def P13413257110278172809.Spec : Prop :=
  ∀ n, P13413257110278172809.a n = A038448 (n + 1)

end A038448

/-! ## A038448.P9280053902608007985

`A007088(eq[3, A324467(n)/6])`
-/

namespace A038448.P9280053902608007985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324467 n : ℚ) / 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A038448.P9280053902608007985

namespace A038448

/-- `A007088(eq[3, A324467(n)/6])` -/
def P9280053902608007985.Spec : Prop :=
  ∀ n, P9280053902608007985.a n = A038448 (n + 1)

end A038448

/-! ## A038448.P16175924184395141170

`A007088(eq[n+6, A092391(n)])`
-/

namespace A038448.P16175924184395141170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038448.P16175924184395141170

namespace A038448

/-- `A007088(eq[n+6, A092391(n)])` -/
def P16175924184395141170.Spec : Prop :=
  ∀ n, P16175924184395141170.a n = A038448 (n + 1)

end A038448

/-! ## A038448.P1924412949771849207

`A007088(eq[6, n-A011371(n)])`
-/

namespace A038448.P1924412949771849207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A011371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038448.P1924412949771849207

namespace A038448

/-- `A007088(eq[6, n-A011371(n)])` -/
def P1924412949771849207.Spec : Prop :=
  ∀ n, P1924412949771849207.a n = A038448 (n + 1)

end A038448

/-! ## A038448.P10595947297482005911

`A007088(eq[6, A092391(n)-n])`
-/

namespace A038448.P10595947297482005911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038448.P10595947297482005911

namespace A038448

/-- `A007088(eq[6, A092391(n)-n])` -/
def P10595947297482005911.Spec : Prop :=
  ∀ n, P10595947297482005911.a n = A038448 (n + 1)

end A038448

/-! ## A038448.P350835087100532444

`A007088(eq[6, A160385(n)+A160383(n)])`
-/

namespace A038448.P350835087100532444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 n + A160383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038448.P350835087100532444

namespace A038448

/-- `A007088(eq[6, A160385(n)+A160383(n)])` -/
def P350835087100532444.Spec : Prop :=
  ∀ n, P350835087100532444.a n = A038448 (n + 1)

end A038448

/-!
# A038449: Sums of 7 distinct powers of 10.

The programs for A038449, the canonical program `A038449.P17780705603722431930` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038449 has offset 1).

The definition of A038449 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6435 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038449.P17780705603722431930

`A007088(A023689(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038449

/-- `A007088(A023689(n+1))` -/
def P17780705603722431930.Spec : Prop :=
  ∀ n, P17780705603722431930.a n = A038449 (n + 1)

theorem P17780705603722431930.correct : P17780705603722431930.Spec := by
  intro n
  simp only [A038449, Nat.add_sub_cancel]

end A038449

/-! ## A038449.P3649497124068014018

`A007088(eq[7, log2(A001316(n))])`
-/

namespace A038449.P3649497124068014018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A038449.P3649497124068014018

namespace A038449

/-- `A007088(eq[7, log2(A001316(n))])` -/
def P3649497124068014018.Spec : Prop :=
  ∀ n, P3649497124068014018.a n = A038449 (n + 1)

end A038449

/-! ## A038449.P18230219079637220198

`A007088(eq[7, dr(A007088(n))])`
-/

namespace A038449.P18230219079637220198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007088 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A038449.P18230219079637220198

namespace A038449

/-- `A007088(eq[7, dr(A007088(n))])` -/
def P18230219079637220198.Spec : Prop :=
  ∀ n, P18230219079637220198.a n = A038449 (n + 1)

end A038449

/-! ## A038449.P6623785875527821198

`A007088(eq[7, A000120(n)])`
-/

namespace A038449.P6623785875527821198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038449.P6623785875527821198

namespace A038449

/-- `A007088(eq[7, A000120(n)])` -/
def P6623785875527821198.Spec : Prop :=
  ∀ n, P6623785875527821198.a n = A038449 (n + 1)

end A038449

/-! ## A038449.P10511627511155234650

`A007088(eq[7, 3*n-A004134(n)])`
-/

namespace A038449.P10511627511155234650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A004134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038449.P10511627511155234650

namespace A038449

/-- `A007088(eq[7, 3*n-A004134(n)])` -/
def P10511627511155234650.Spec : Prop :=
  ∀ n, P10511627511155234650.a n = A038449 (n + 1)

end A038449

/-! ## A038449.P15067426785830806026

`A185544(2*A023689(n+1))`
-/

namespace A038449.P15067426785830806026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A023689 (n + 1)).toNat

end

end A038449.P15067426785830806026

namespace A038449

/-- `A185544(2*A023689(n+1))` -/
def P15067426785830806026.Spec : Prop :=
  ∀ n, P15067426785830806026.a n = A038449 (n + 1)

end A038449

/-! ## A038449.P6077296949040931937

`A140267(A038469(n+1))`
-/

namespace A038449.P6077296949040931937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140267 (A038469 (n + 1)).toNat

end

end A038449.P6077296949040931937

namespace A038449

/-- `A140267(A038469(n+1))` -/
def P6077296949040931937.Spec : Prop :=
  ∀ n, P6077296949040931937.a n = A038449 (n + 1)

end A038449

/-! ## A038449.P5848418246585490633

`A007088(eq[16, A238015(n)])`
-/

namespace A038449.P5848418246585490633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038449.P5848418246585490633

namespace A038449

/-- `A007088(eq[16, A238015(n)])` -/
def P5848418246585490633.Spec : Prop :=
  ∀ n, P5848418246585490633.a n = A038449 (n + 1)

end A038449

/-!
# A038450: Sums of 8 distinct powers of 10.

The programs for A038450, the canonical program `A038450.P3054908784782646193` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038450 has offset 1).

The definition of A038450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6435 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038450.P1572435559983741656

`A007088(A023690(1+n))`
-/

namespace A038450.P1572435559983741656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A023690 (1 + n)).toNat

end

end A038450.P1572435559983741656

namespace A038450

/-- `A007088(A023690(1+n))` -/
def P1572435559983741656.Spec : Prop :=
  ∀ n, P1572435559983741656.a n = A038450 (n + 1)

end A038450

/-! ## A038450.P14767093625485565063

`A007088(eq[8, log2(A001316(n))])`
-/

namespace A038450.P14767093625485565063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A038450.P14767093625485565063

namespace A038450

/-- `A007088(eq[8, log2(A001316(n))])` -/
def P14767093625485565063.Spec : Prop :=
  ∀ n, P14767093625485565063.a n = A038450 (n + 1)

end A038450

/-! ## A038450.P3054908784782646193

`A007088(eq[8, dr(A007088(n))])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038450

/-- `A007088(eq[8, dr(A007088(n))])` -/
def P3054908784782646193.Spec : Prop :=
  ∀ n, P3054908784782646193.a n = A038450 (n + 1)

theorem P3054908784782646193.correct : P3054908784782646193.Spec := by
  intro n
  simp only [A038450, Nat.add_sub_cancel]

end A038450

/-! ## A038450.P15767577445282971326

`A007088(lt[7, A007088(n)%9])`
-/

namespace A038450.P15767577445282971326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007088 n) 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A038450.P15767577445282971326

namespace A038450

/-- `A007088(lt[7, A007088(n)%9])` -/
def P15767577445282971326.Spec : Prop :=
  ∀ n, P15767577445282971326.a n = A038450 (n + 1)

end A038450

/-! ## A038450.P14822004028281378368

`A007088(eq[8, 2*n-A005187(n)])`
-/

namespace A038450.P14822004028281378368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038450.P14822004028281378368

namespace A038450

/-- `A007088(eq[8, 2*n-A005187(n)])` -/
def P14822004028281378368.Spec : Prop :=
  ∀ n, P14822004028281378368.a n = A038450 (n + 1)

end A038450

/-! ## A038450.P9955661382893097978

`A007088(eq[8, A000120(n)])`
-/

namespace A038450.P9955661382893097978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038450.P9955661382893097978

namespace A038450

/-- `A007088(eq[8, A000120(n)])` -/
def P9955661382893097978.Spec : Prop :=
  ∀ n, P9955661382893097978.a n = A038450 (n + 1)

end A038450

/-! ## A038450.P9184929528727399867

`A007088(eq[8, 3*n-A004134(n)])`
-/

namespace A038450.P9184929528727399867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A004134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038450.P9184929528727399867

namespace A038450

/-- `A007088(eq[8, 3*n-A004134(n)])` -/
def P9184929528727399867.Spec : Prop :=
  ∀ n, P9184929528727399867.a n = A038450 (n + 1)

end A038450

/-! ## A038450.P13307550579342578732

`A185544(2*A023690(n+1))`
-/

namespace A038450.P13307550579342578732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A023690 (n + 1)).toNat

end

end A038450.P13307550579342578732

namespace A038450

/-- `A185544(2*A023690(n+1))` -/
def P13307550579342578732.Spec : Prop :=
  ∀ n, P13307550579342578732.a n = A038450 (n + 1)

end A038450

/-!
# A038451: Sums of 9 distinct powers of 10.

The programs for A038451, the canonical program `A038451.P17744406379322907093` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038451 has offset 1).

The definition of A038451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5005 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038451.P9546127561251267448

`A007088(A023691(n+1))`
-/

namespace A038451.P9546127561251267448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A023691 (n + 1)).toNat

end

end A038451.P9546127561251267448

namespace A038451

/-- `A007088(A023691(n+1))` -/
def P9546127561251267448.Spec : Prop :=
  ∀ n, P9546127561251267448.a n = A038451 (n + 1)

end A038451

/-! ## A038451.P48540549153642672

`A007088(eq[9, log2(A001316(n))])`
-/

namespace A038451.P48540549153642672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A038451.P48540549153642672

namespace A038451

/-- `A007088(eq[9, log2(A001316(n))])` -/
def P48540549153642672.Spec : Prop :=
  ∀ n, P48540549153642672.a n = A038451 (n + 1)

end A038451

/-! ## A038451.P17744406379322907093

`A007088(eq[9, dr(A007088(n))])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038451

/-- `A007088(eq[9, dr(A007088(n))])` -/
def P17744406379322907093.Spec : Prop :=
  ∀ n, P17744406379322907093.a n = A038451 (n + 1)

theorem P17744406379322907093.correct : P17744406379322907093.Spec := by
  intro n
  simp only [A038451, Nat.add_sub_cancel]

end A038451

/-! ## A038451.P2423067393515987971

`A007088(eq[9, 2*n-A005187(n)])`
-/

namespace A038451.P2423067393515987971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038451.P2423067393515987971

namespace A038451

/-- `A007088(eq[9, 2*n-A005187(n)])` -/
def P2423067393515987971.Spec : Prop :=
  ∀ n, P2423067393515987971.a n = A038451 (n + 1)

end A038451

/-! ## A038451.P17729476903891493322

`A007088(eq[9, A000120(n)])`
-/

namespace A038451.P17729476903891493322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038451.P17729476903891493322

namespace A038451

/-- `A007088(eq[9, A000120(n)])` -/
def P17729476903891493322.Spec : Prop :=
  ∀ n, P17729476903891493322.a n = A038451 (n + 1)

end A038451

/-! ## A038451.P12365853752514549959

`A185544(2*A023691(n+1))`
-/

namespace A038451.P12365853752514549959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A023691 (n + 1)).toNat

end

end A038451.P12365853752514549959

namespace A038451

/-- `A185544(2*A023691(n+1))` -/
def P12365853752514549959.Spec : Prop :=
  ∀ n, P12365853752514549959.a n = A038451 (n + 1)

end A038451

/-! ## A038451.P13213257773607941247

`A185544(A023691(n+1)+A023691(n+1))`
-/

namespace A038451.P13213257773607941247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A023691 (n + 1) + A023691 (n + 1)).toNat

end

end A038451.P13213257773607941247

namespace A038451

/-- `A185544(A023691(n+1)+A023691(n+1))` -/
def P13213257773607941247.Spec : Prop :=
  ∀ n, P13213257773607941247.a n = A038451 (n + 1)

end A038451

/-!
# A038452: Sums of 10 distinct powers of 10.

The programs for A038452, there is no canonical definition to state claims against.
-/

/-! ## A038452.P7517331921464527502

`A007088(A038461(1+n))`
-/

namespace A038452.P7517331921464527502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A038461 (1 + n)).toNat

end

end A038452.P7517331921464527502

/-! ## A038452.P4703980757763421641

`A185544(2*A038461(1+n))`
-/

namespace A038452.P4703980757763421641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A038461 (1 + n)).toNat

end

end A038452.P4703980757763421641

/-! ## A038452.P8644777520429112764

`A185544(A038461(n+1)+A038461(n+1))`
-/

namespace A038452.P8644777520429112764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A038461 (n + 1) + A038461 (n + 1)).toNat

end

end A038452.P8644777520429112764

/-!
# A038453: Sums of 11 distinct powers of 10.

The programs for A038453, there is no canonical definition to state claims against.
-/

/-! ## A038453.P9653006521732252642

`A007088(A038462(n+1))`
-/

namespace A038453.P9653006521732252642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A038462 (n + 1)).toNat

end

end A038453.P9653006521732252642

/-! ## A038453.P3195486957170748257

`A185544(2*A038462(n+1))`
-/

namespace A038453.P3195486957170748257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A038462 (n + 1)).toNat

end

end A038453.P3195486957170748257

/-! ## A038453.P10309812125643268114

`A185544(A038462(n+1)+A038462(n+1))`
-/

namespace A038453.P10309812125643268114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A038462 (n + 1) + A038462 (n + 1)).toNat

end

end A038453.P10309812125643268114

/-!
# A038454: Sums of 12 distinct powers of 10.

The programs for A038454, there is no canonical definition to state claims against.
-/

/-! ## A038454.P95596273376002713

`A007088(A038463(1+n))`
-/

namespace A038454.P95596273376002713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A038463 (1 + n)).toNat

end

end A038454.P95596273376002713

/-! ## A038454.P5881257873160221249

`A089591(A038463(n+1))`
-/

namespace A038454.P5881257873160221249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089591 (A038463 (n + 1)).toNat

end

end A038454.P5881257873160221249

/-!
# A038455: Triangle read by rows: T(n, k) = [x^k] x*Pochhammer(n + x, n)/(n + x).

The programs for A038455, there is no canonical definition to state claims against.
-/

/-! ## A038455.P5266451806296250750

`A134283(A098844(n+1))`
-/

namespace A038455.P5266451806296250750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134283 (A098844 (n + 1)).toNat

end

end A038455.P5266451806296250750

/-! ## A038455.P3084482535836633122

`C(record[A122204(2*n+3)], A073200(n))`
-/

namespace A038455.P3084482535836633122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122204 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat (A073200 n).toNat

end

end A038455.P3084482535836633122

/-! ## A038455.P7065219588640041459

`C(record[A122286(2*n+3)], A073200(n))`
-/

namespace A038455.P7065219588640041459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122286 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat (A073200 n).toNat

end

end A038455.P7065219588640041459

/-!
# A038456: List of pairs of consecutive numbers each with 4 divisors (duplicates removed).

The programs for A038456, the canonical program `A038456.P16170767662126699498` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038456 has offset 1).

The definition of A038456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038456.P16170767662126699498

`∪[A039832(n+1)+1, A039832(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A038456

/-- `∪[A039832(n+1)+1, A039832(n+1)]` -/
def P16170767662126699498.Spec : Prop :=
  ∀ n, (P16170767662126699498.a n : ℤ) = A038456 (n + 1)

theorem P16170767662126699498.correct : P16170767662126699498.Spec := by
  intro n
  simp only [A038456, Nat.add_sub_cancel]

end A038456

/-! ## A038456.P12456037556829097902

`filter[A225756(1+n), A354927(#)]`
-/

namespace A038456.P12456037556829097902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225756 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A038456.P12456037556829097902

namespace A038456

/-- `filter[A225756(1+n), A354927(#)]` -/
def P12456037556829097902.Spec : Prop :=
  ∀ n, P12456037556829097902.a n = A038456 (n + 1)

end A038456

/-! ## A038456.P2354079514546295073

`filter[A225756(n+3), A123927(#)]`
-/

namespace A038456.P2354079514546295073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225756 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A038456.P2354079514546295073

namespace A038456

/-- `filter[A225756(n+3), A123927(#)]` -/
def P2354079514546295073.Spec : Prop :=
  ∀ n, P2354079514546295073.a n = A038456 (n + 1)

end A038456

/-! ## A038456.P14386692368186486263

`filter[A225756(n+3), A353788(#)]`
-/

namespace A038456.P14386692368186486263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225756 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A038456.P14386692368186486263

namespace A038456

/-- `filter[A225756(n+3), A353788(#)]` -/
def P14386692368186486263.Spec : Prop :=
  ∀ n, P14386692368186486263.a n = A038456 (n + 1)

end A038456

/-! ## A038456.P1383429469736789586

`filter[A225756(n+3), A353799(#)]`
-/

namespace A038456.P1383429469736789586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225756 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A038456.P1383429469736789586

namespace A038456

/-- `filter[A225756(n+3), A353799(#)]` -/
def P1383429469736789586.Spec : Prop :=
  ∀ n, P1383429469736789586.a n = A038456 (n + 1)

end A038456

/-! ## A038456.P13570737478920656536

`∩[A007422(n+1), A225756(n+1)]`
-/

namespace A038456.P13570737478920656536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038456.P13570737478920656536

namespace A038456

/-- `∩[A007422(n+1), A225756(n+1)]` -/
def P13570737478920656536.Spec : Prop :=
  ∀ n, (P13570737478920656536.a n : ℤ) = A038456 (n + 1)

end A038456

/-! ## A038456.P17296387289541059095

`∩[A030513(n+1), A225756(n+1)]`
-/

namespace A038456.P17296387289541059095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038456.P17296387289541059095

namespace A038456

/-- `∩[A030513(n+1), A225756(n+1)]` -/
def P17296387289541059095.Spec : Prop :=
  ∀ n, (P17296387289541059095.a n : ℤ) = A038456 (n + 1)

end A038456

/-! ## A038456.P4934657402637688376

`∩[A225756(n+1), A323644(n+1)]`
-/

namespace A038456.P4934657402637688376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038456.P4934657402637688376

namespace A038456

/-- `∩[A225756(n+1), A323644(n+1)]` -/
def P4934657402637688376.Spec : Prop :=
  ∀ n, (P4934657402637688376.a n : ℤ) = A038456 (n + 1)

end A038456

/-! ## A038456.P16988601998536854052

`∩[A225756(n+1), A332269(n+1)]`
-/

namespace A038456.P16988601998536854052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038456.P16988601998536854052

namespace A038456

/-- `∩[A225756(n+1), A332269(n+1)]` -/
def P16988601998536854052.Spec : Prop :=
  ∀ n, (P16988601998536854052.a n : ℤ) = A038456 (n + 1)

end A038456

/-! ## A038456.P8807862594407265707

`∩[A130763(n+1), A225756(n+1)]`
-/

namespace A038456.P8807862594407265707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038456.P8807862594407265707

namespace A038456

/-- `∩[A130763(n+1), A225756(n+1)]` -/
def P8807862594407265707.Spec : Prop :=
  ∀ n, (P8807862594407265707.a n : ℤ) = A038456 (n + 1)

end A038456

/-!
# A038457: |First digit-last digit| for triangular numbers.

The programs for A038457, the canonical program `A038457.P7367632969564949406` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038457 has offset 0).

The definition of A038457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038457.P6463481752660273969

`A338827(∑[n])%10`
-/

namespace A038457.P6463481752660273969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338827 (∑ j ∈ Finset.range (n + 1), f1 j)) 10

end

end A038457.P6463481752660273969

namespace A038457

/-- `A338827(∑[n])%10` -/
def P6463481752660273969.Spec : Prop :=
  ∀ n, P6463481752660273969.a n = A038457 n

end A038457

/-! ## A038457.P2485690732092625385

`A040163(∑[n]+floor(acot(n)))`
-/

namespace A038457.P2485690732092625385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040163 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A038457.P2485690732092625385

namespace A038457

/-- `A040163(∑[n]+floor(acot(n)))` -/
def P2485690732092625385.Spec : Prop :=
  ∀ n, P2485690732092625385.a n = A038457 n

end A038457

/-! ## A038457.P7367632969564949406

`A040163(abs(1-∑[n])+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038457

/-- `A040163(abs(1-∑[n])+1)` -/
def P7367632969564949406.Spec : Prop :=
  ∀ n, P7367632969564949406.a n = A038457 n

theorem P7367632969564949406.correct : P7367632969564949406.Spec := by
  intro n
  simp only [A038457]

end A038457

/-! ## A038457.P12381984317483401841

`A010879(A338827(∑[n]))`
-/

namespace A038457.P12381984317483401841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A338827 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A038457.P12381984317483401841

namespace A038457

/-- `A010879(A338827(∑[n]))` -/
def P12381984317483401841.Spec : Prop :=
  ∀ n, P12381984317483401841.a n = A038457 n

end A038457

/-! ## A038457.P7718600114153103898

`dr(A040163(A028310(∑[n])))`
-/

namespace A038457.P7718600114153103898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040163 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat)

end

end A038457.P7718600114153103898

namespace A038457

/-- `dr(A040163(A028310(∑[n])))` -/
def P7718600114153103898.Spec : Prop :=
  ∀ n, (P7718600114153103898.a n : ℤ) = A038457 n

end A038457

/-! ## A038457.P12182568174732502370

`dr(A040163(A179865(n+1)))`
-/

namespace A038457.P12182568174732502370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040163 (A179865 (n + 1)).toNat)

end

end A038457.P12182568174732502370

namespace A038457

/-- `dr(A040163(A179865(n+1)))` -/
def P12182568174732502370.Spec : Prop :=
  ∀ n, (P12182568174732502370.a n : ℤ) = A038457 n

end A038457

/-! ## A038457.P15577570066565023134

`A040163(A179865(n+1))+A000038(n+1)`
-/

namespace A038457.P15577570066565023134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040163 (A179865 (n + 1)).toNat + A000038 (n + 1)

end

end A038457.P15577570066565023134

namespace A038457

/-- `A040163(A179865(n+1))+A000038(n+1)` -/
def P15577570066565023134.Spec : Prop :=
  ∀ n, P15577570066565023134.a n = A038457 n

end A038457

/-! ## A038457.P13639714391604407981

`and(A000007(n)-1, A040163(A179865(n+1)))`
-/

namespace A038457.P13639714391604407981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000007 n - 1) (A040163 (A179865 (n + 1)).toNat)

end

end A038457.P13639714391604407981

namespace A038457

/-- `and(A000007(n)-1, A040163(A179865(n+1)))` -/
def P13639714391604407981.Spec : Prop :=
  ∀ n, P13639714391604407981.a n = A038457 n

end A038457

/-! ## A038457.P2680741598070431959

`A007318(C(2, n))*A040163(A179865(n+1))`
-/

namespace A038457.P2680741598070431959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A040163 (A179865 (n + 1)).toNat

end

end A038457.P2680741598070431959

namespace A038457

/-- `A007318(C(2, n))*A040163(A179865(n+1))` -/
def P2680741598070431959.Spec : Prop :=
  ∀ n, P2680741598070431959.a n = A038457 n

end A038457

/-! ## A038457.P14439374470501809158

`A000041(C(2, n+1))*A040163(A179865(n+1))`
-/

namespace A038457.P14439374470501809158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 1)) * A040163 (A179865 (n + 1)).toNat

end

end A038457.P14439374470501809158

namespace A038457

/-- `A000041(C(2, n+1))*A040163(A179865(n+1))` -/
def P14439374470501809158.Spec : Prop :=
  ∀ n, P14439374470501809158.a n = A038457 n

end A038457

/-! ## A038457.P9696529817408330694

`A007318(val(n+1, 6))*A040163(A179865(n+1))`
-/

namespace A038457.P9696529817408330694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 6) * A040163 (A179865 (n + 1)).toNat

end

end A038457.P9696529817408330694

namespace A038457

/-- `A007318(val(n+1, 6))*A040163(A179865(n+1))` -/
def P9696529817408330694.Spec : Prop :=
  ∀ n, P9696529817408330694.a n = A038457 n

end A038457

/-! ## A038457.P8322793550392000934

`A001221(A167806(n+1))*A040163(A179865(n+1))`
-/

namespace A038457.P8322793550392000934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A167806 (n + 1)).toNat * A040163 (A179865 (n + 1)).toNat

end

end A038457.P8322793550392000934

namespace A038457

/-- `A001221(A167806(n+1))*A040163(A179865(n+1))` -/
def P8322793550392000934.Spec : Prop :=
  ∀ n, P8322793550392000934.a n = A038457 n

end A038457

/-! ## A038457.P17479341903823158875

`A014963(∑[n+1])*A040163(A179865(n+1))`
-/

namespace A038457.P17479341903823158875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ j ∈ Finset.range (n + 1), f1 j) * A040163 (A179865 (n + 1)).toNat

end

end A038457.P17479341903823158875

namespace A038457

/-- `A014963(∑[n+1])*A040163(A179865(n+1))` -/
def P17479341903823158875.Spec : Prop :=
  ∀ n, P17479341903823158875.a n = A038457 n

end A038457

/-!
# A038459: A sequence for measuring seconds: read it aloud.

The programs for A038459, the canonical program `A038459.P11015629350129839202` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038459 has offset 1).

The definition of A038459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038459.P13828554018227923476

`10^(3*n%2)+n-gcd(n, ∑[n])`
-/

namespace A038459.P13828554018227923476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (3 * (n % 2)) : ℤ) + ((n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ))

end

end A038459.P13828554018227923476

namespace A038459

/-- `10^(3*n%2)+n-gcd(n, ∑[n])` -/
def P13828554018227923476.Spec : Prop :=
  ∀ n, P13828554018227923476.a n = A038459 (n + 1)

end A038459

/-! ## A038459.P11015629350129839202

`A142150(n)+A010691(n)^3`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038459

/-- `A142150(n)+A010691(n)^3` -/
def P11015629350129839202.Spec : Prop :=
  ∀ n, P11015629350129839202.a n = A038459 (n + 1)

theorem P11015629350129839202.correct : P11015629350129839202.Spec := by
  intro n
  simp only [A038459, Nat.add_sub_cancel]

end A038459

/-! ## A038459.P4083123637925275283

`A027656(n)+A001202(Δ[A197652(n+1)])`
-/

namespace A038459.P4083123637925275283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n + A001202 (f1 (n + 1) - f1 n).toNat

end

end A038459.P4083123637925275283

namespace A038459

/-- `A027656(n)+A001202(Δ[A197652(n+1)])` -/
def P4083123637925275283.Spec : Prop :=
  ∀ n, P4083123637925275283.a n = A038459 (n + 1)

end A038459

/-! ## A038459.P18313787904233915616

`A158416(n)*A281150(A001511(n²+1))`
-/

namespace A038459.P18313787904233915616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n * A281150 (A001511 (n ^ 2 + 1)).toNat

end

end A038459.P18313787904233915616

namespace A038459

/-- `A158416(n)*A281150(A001511(n²+1))` -/
def P18313787904233915616.Spec : Prop :=
  ∀ n, P18313787904233915616.a n = A038459 (n + 1)

end A038459

/-! ## A038459.P17877895933595820838

`A080504(A052905(∑[n+1]%(n+2)+2))`
-/

namespace A038459.P17877895933595820838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080504 (A052905 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2) + 2)).toNat

end

end A038459.P17877895933595820838

namespace A038459

/-- `A080504(A052905(∑[n+1]%(n+2)+2))` -/
def P17877895933595820838.Spec : Prop :=
  ∀ n, P17877895933595820838.a n = A038459 (n + 1)

end A038459

/-!
# A038460: Maximal value of difference between successive primes among numbers < 10^n.

The programs for A038460, there is no canonical definition to state claims against.
-/

/-! ## A038460.P8490599241445804790

`2*A213949(n+1)`
-/

namespace A038460.P8490599241445804790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213949 (n + 1)

end

end A038460.P8490599241445804790

/-! ## A038460.P12699295849955319628

`A004277(A213949(n+1))`
-/

namespace A038460.P12699295849955319628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A213949 (n + 1)).toNat

end

end A038460.P12699295849955319628

/-! ## A038460.P14764550351244746706

`A004275(A213949(n+1)+1)`
-/

namespace A038460.P14764550351244746706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A213949 (n + 1) + 1).toNat

end

end A038460.P14764550351244746706

/-! ## A038460.P11004479984448471734

`A005843(lcm((-1)^n, A213949(n+1)))`
-/

namespace A038460.P11004479984448471734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.lcm ((-1) ^ n) (A213949 (n + 1)))

end

end A038460.P11004479984448471734

/-! ## A038460.P11725977961803413249

`A213949(n+1)+A213949(-xor(n, -1))`
-/

namespace A038460.P11725977961803413249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213949 (n + 1) + A213949 (-Int.xor (n : ℤ) (-1)).toNat

end

end A038460.P11725977961803413249

/-!
# A038461: Sums of 10 distinct powers of 2.

The programs for A038461, there is no canonical definition to state claims against.
-/

/-! ## A038461.P7605722418632540292

`record[A305897(A038462(1+n)-3)]`
-/

namespace A038461.P7605722418632540292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (A038462 (1 + n) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038461.P7605722418632540292

/-! ## A038461.P15423960003872473754

`record[A249122(A038462(1+n))]`
-/

namespace A038461.P15423960003872473754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A038462 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038461.P15423960003872473754

/-! ## A038461.P11133991483943867420

`record[A185048(A038462(n+1))]/2`
-/

namespace A038461.P11133991483943867420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (A038462 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A038461.P11133991483943867420

/-! ## A038461.P11849789384687048862

`A341910(A043577(n+1))`
-/

namespace A038461.P11849789384687048862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341910 (A043577 (n + 1)).toNat

end

end A038461.P11849789384687048862

/-! ## A038461.P3186453767421059070

`record[A025480(A038462(n+1)-1)]`
-/

namespace A038461.P3186453767421059070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A038462 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038461.P3186453767421059070

/-! ## A038461.P12646089111352867

`record[A032742(A038462(n+1)-1)]`
-/

namespace A038461.P12646089111352867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A038462 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038461.P12646089111352867

/-! ## A038461.P13432140905191506655

`record[A052938(A038462(n+1)-6)]`
-/

namespace A038461.P13432140905191506655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A038462 (n + 1) - 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038461.P13432140905191506655

/-! ## A038461.P7714394633943266216

`record[A025480(xor(1, A038462(n+1)))]`
-/

namespace A038461.P7714394633943266216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.xor 1 (A038462 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038461.P7714394633943266216

/-! ## A038461.P8632040938075533276

`A029578(record[A029578(A038462(n+1))])`
-/

namespace A038461.P8632040938075533276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A038462 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A038461.P8632040938075533276

/-!
# A038462: Sums of 11 distinct powers of 2.

The programs for A038462, there is no canonical definition to state claims against.
-/

/-! ## A038462.P17244722418813353157

`A067576(A167614(n+10)-(n+3))`
-/

namespace A038462.P17244722418813353157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067576 (A167614 (n + 10) - (n + 3 : ℤ)).toNat

end

end A038462.P17244722418813353157

/-! ## A038462.P14242755177138815542

`A066884(A017329(n+5)+A000217(n+1))`
-/

namespace A038462.P14242755177138815542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066884 (A017329 (n + 5) + A000217 (n + 1)).toNat

end

end A038462.P14242755177138815542

/-! ## A038462.P14171867815981323205

`A066884(A055998(n+8)-A001478(n+4))`
-/

namespace A038462.P14171867815981323205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066884 (A055998 (n + 8) - A001478 (n + 4)).toNat

end

end A038462.P14171867815981323205

/-! ## A038462.P16204253425632536581

`A066884(A002378(n+8)-A000124(n+5))`
-/

namespace A038462.P16204253425632536581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066884 (A002378 (n + 8) - A000124 (n + 5)).toNat

end

end A038462.P16204253425632536581

/-! ## A038462.P3164115357431557460

`record[A249122(A038463(n+1))]`
-/

namespace A038462.P3164115357431557460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A038463 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038462.P3164115357431557460

/-! ## A038462.P7505940618756736856

`A341910(A043578(n+1))`
-/

namespace A038462.P7505940618756736856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341910 (A043578 (n + 1)).toNat

end

end A038462.P7505940618756736856

/-!
# A038463: Sums of 12 distinct powers of 2.

The programs for A038463, there is no canonical definition to state claims against.
-/

/-! ## A038463.P13576524449351362445

`A067576(A167614(n+10)+9)`
-/

namespace A038463.P13576524449351362445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067576 (A167614 (n + 10) + 9).toNat

end

end A038463.P13576524449351362445

/-! ## A038463.P6656688083015009703

`A066884(A000217(n+11)+n+1)`
-/

namespace A038463.P6656688083015009703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066884 (A000217 (n + 11) + (n + 1 : ℤ)).toNat

end

end A038463.P6656688083015009703

/-! ## A038463.P53828521019687660

`A066884(A017329(n+6)+A000096(n+1))`
-/

namespace A038463.P53828521019687660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066884 (A017329 (n + 6) + A000096 (n + 1)).toNat

end

end A038463.P53828521019687660

/-! ## A038463.P11612178889981503688

`A066884(A055998(n+9)-A001478(n+4))`
-/

namespace A038463.P11612178889981503688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066884 (A055998 (n + 9) - A001478 (n + 4)).toNat

end

end A038463.P11612178889981503688

/-! ## A038463.P1423887893990788820

`A066884(A046691(n+8)+A005843(n+8))`
-/

namespace A038463.P1423887893990788820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066884 (A046691 (n + 8) + A005843 (n + 8)).toNat

end

end A038463.P1423887893990788820

/-!
# A038464: Sums of 2 distinct powers of 3.

The programs for A038464, the canonical program `A038464.P11583206414454440872` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038464 has offset 1).

The definition of A038464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038464.P11583206414454440872

`3^(row(n)+1)+3^col(n)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A038464

/-- `3^(row(n)+1)+3^col(n)` -/
def P11583206414454440872.Spec : Prop :=
  ∀ n, (P11583206414454440872.a n : ℤ) = A038464 (n + 1)

theorem P11583206414454440872.correct : P11583206414454440872.Spec := by
  intro n
  simp only [A038464, Nat.add_sub_cancel]

end A038464

/-! ## A038464.P13119847625568888413

`3^A002024(n+1)+3^col(n)`
-/

namespace A038464.P13119847625568888413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A002024 (n + 1) : ℤ) + (3 ^ SequenceMachineLib.triCol n : ℚ)

end

end A038464.P13119847625568888413

namespace A038464

/-- `3^A002024(n+1)+3^col(n)` -/
def P13119847625568888413.Spec : Prop :=
  ∀ n, P13119847625568888413.a n = (A038464 (n + 1) : ℚ)

end A038464

/-! ## A038464.P6268257006303417956

`A055235(comp[∑[n-1]])`
-/

namespace A038464.P6268257006303417956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055235 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A038464.P6268257006303417956

namespace A038464

/-- `A055235(comp[∑[n-1]])` -/
def P6268257006303417956.Spec : Prop :=
  ∀ n, P6268257006303417956.a n = A038464 (n + 1)

end A038464

/-! ## A038464.P13159133104133681609

`∩[A345359(n+1), A055235(n)]`
-/

namespace A038464.P13159133104133681609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055235 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038464.P13159133104133681609

namespace A038464

/-- `∩[A345359(n+1), A055235(n)]` -/
def P13159133104133681609.Spec : Prop :=
  ∀ n, (P13159133104133681609.a n : ℤ) = A038464 (n + 1)

end A038464

/-! ## A038464.P13861291456716290872

`∩[A121153(n+1), A055235(n)]`
-/

namespace A038464.P13861291456716290872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055235 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038464.P13861291456716290872

namespace A038464

/-- `∩[A121153(n+1), A055235(n)]` -/
def P13861291456716290872.Spec : Prop :=
  ∀ n, (P13861291456716290872.a n : ℤ) = A038464 (n + 1)

end A038464

/-! ## A038464.P5365289858206475379

`∩[A170943(n+1), A055235(n)]`
-/

namespace A038464.P5365289858206475379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055235 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038464.P5365289858206475379

namespace A038464

/-- `∩[A170943(n+1), A055235(n)]` -/
def P5365289858206475379.Spec : Prop :=
  ∀ n, (P5365289858206475379.a n : ℤ) = A038464 (n + 1)

end A038464

/-! ## A038464.P16308478956019910254

`∩[A233010(n+1), A055235(n)]`
-/

namespace A038464.P16308478956019910254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055235 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038464.P16308478956019910254

namespace A038464

/-- `∩[A233010(n+1), A055235(n)]` -/
def P16308478956019910254.Spec : Prop :=
  ∀ n, (P16308478956019910254.a n : ℤ) = A038464 (n + 1)

end A038464

/-! ## A038464.P6524274759919351248

`A074939(A048645(n+1))`
-/

namespace A038464.P6524274759919351248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074939 (A048645 (n + 1)).toNat

end

end A038464.P6524274759919351248

namespace A038464

/-- `A074939(A048645(n+1))` -/
def P6524274759919351248.Spec : Prop :=
  ∀ n, P6524274759919351248.a n = A038464 (n + 1)

end A038464

/-! ## A038464.P13060616808229370793

`∩[A055235(n), A074939(n)]`
-/

namespace A038464.P13060616808229370793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055235 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074939 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038464.P13060616808229370793

namespace A038464

/-- `∩[A055235(n), A074939(n)]` -/
def P13060616808229370793.Spec : Prop :=
  ∀ n, (P13060616808229370793.a n : ℤ) = A038464 (n + 1)

end A038464

/-! ## A038464.P12376120111346947522

`A005836(A340161(n+1))`
-/

namespace A038464.P12376120111346947522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A340161 (n + 1)).toNat

end

end A038464.P12376120111346947522

namespace A038464

/-- `A005836(A340161(n+1))` -/
def P12376120111346947522.Spec : Prop :=
  ∀ n, P12376120111346947522.a n = A038464 (n + 1)

end A038464

/-!
# A038465: Sums of 3 distinct powers of 3.

The programs for A038465, the canonical program `A038465.P6759191741813746022` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038465 has offset 1).

The definition of A038465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038465.P16257948752472567772

`∩[A226636(n+1), A074938(n)]`
-/

namespace A038465.P16257948752472567772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038465.P16257948752472567772

namespace A038465

/-- `∩[A226636(n+1), A074938(n)]` -/
def P16257948752472567772.Spec : Prop :=
  ∀ n, (P16257948752472567772.a n : ℤ) = A038465 (n + 1)

end A038465

/-! ## A038465.P6759191741813746022

`A005836(A014311(n+1)+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A038465

/-- `A005836(A014311(n+1)+1)` -/
def P6759191741813746022.Spec : Prop :=
  ∀ n, P6759191741813746022.a n = A038465 (n + 1)

theorem P6759191741813746022.correct : P6759191741813746022.Spec := by
  intro n
  simp only [A038465, Nat.add_sub_cancel]

end A038465

/-! ## A038465.P16628886682209966550

`A005836(eq[3, A000120(n)]+1)`
-/

namespace A038465.P16628886682209966550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A038465.P16628886682209966550

namespace A038465

/-- `A005836(eq[3, A000120(n)]+1)` -/
def P16628886682209966550.Spec : Prop :=
  ∀ n, P16628886682209966550.a n = A038465 (n + 1)

end A038465

/-! ## A038465.P15402152291836309641

`A005836(eq[5, A050315(n)]+1)`
-/

namespace A038465.P15402152291836309641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A038465.P15402152291836309641

namespace A038465

/-- `A005836(eq[5, A050315(n)]+1)` -/
def P15402152291836309641.Spec : Prop :=
  ∀ n, P15402152291836309641.a n = A038465 (n + 1)

end A038465

/-! ## A038465.P6648208856148250624

`A003278(A014311(n+1)+1)-1`
-/

namespace A038465.P6648208856148250624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (A014311 (n + 1) + 1).toNat - 1

end

end A038465.P6648208856148250624

namespace A038465

/-- `A003278(A014311(n+1)+1)-1` -/
def P6648208856148250624.Spec : Prop :=
  ∀ n, P6648208856148250624.a n = A038465 (n + 1)

end A038465

/-! ## A038465.P18033975597257732518

`A005836(eq[n+3, A092391(n)]+1)`
-/

namespace A038465.P18033975597257732518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A038465.P18033975597257732518

namespace A038465

/-- `A005836(eq[n+3, A092391(n)]+1)` -/
def P18033975597257732518.Spec : Prop :=
  ∀ n, P18033975597257732518.a n = A038465 (n + 1)

end A038465

/-! ## A038465.P14581046206753418465

`∩[A005836(n+1), A226636(n+1)]`
-/

namespace A038465.P14581046206753418465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038465.P14581046206753418465

namespace A038465

/-- `∩[A005836(n+1), A226636(n+1)]` -/
def P14581046206753418465.Spec : Prop :=
  ∀ n, (P14581046206753418465.a n : ℤ) = A038465 (n + 1)

end A038465

/-! ## A038465.P4970474015237973904

`A005836(eq[4, A000120(A004273(n))])`
-/

namespace A038465.P4970474015237973904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038465.P4970474015237973904

namespace A038465

/-- `A005836(eq[4, A000120(A004273(n))])` -/
def P4970474015237973904.Spec : Prop :=
  ∀ n, P4970474015237973904.a n = A038465 (n + 1)

end A038465

/-! ## A038465.P8506554973230844308

`∩[A125292(n+1), A226636(n+1)]`
-/

namespace A038465.P8506554973230844308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038465.P8506554973230844308

namespace A038465

/-- `∩[A125292(n+1), A226636(n+1)]` -/
def P8506554973230844308.Spec : Prop :=
  ∀ n, (P8506554973230844308.a n : ℤ) = A038465 (n + 1)

end A038465

/-! ## A038465.P7657296529981000525

`A090639(A173589(n+1))`
-/

namespace A038465.P7657296529981000525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090639 (A173589 (n + 1)).toNat

end

end A038465.P7657296529981000525

namespace A038465

/-- `A090639(A173589(n+1))` -/
def P7657296529981000525.Spec : Prop :=
  ∀ n, P7657296529981000525.a n = A038465 (n + 1)

end A038465

/-! ## A038465.P1924691089505261637

`∩[A023694(n+1), A074938(n)]`
-/

namespace A038465.P1924691089505261637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038465.P1924691089505261637

namespace A038465

/-- `∩[A023694(n+1), A074938(n)]` -/
def P1924691089505261637.Spec : Prop :=
  ∀ n, (P1924691089505261637.a n : ℤ) = A038465 (n + 1)

end A038465

/-! ## A038465.P4142567247745142839

`∩[A005836(n+1), A023694(n+1)]`
-/

namespace A038465.P4142567247745142839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038465.P4142567247745142839

namespace A038465

/-- `∩[A005836(n+1), A023694(n+1)]` -/
def P4142567247745142839.Spec : Prop :=
  ∀ n, (P4142567247745142839.a n : ℤ) = A038465 (n + 1)

end A038465

/-! ## A038465.P11550134474680564802

`∩[A023694(n+1), A125292(n+1)]`
-/

namespace A038465.P11550134474680564802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038465.P11550134474680564802

namespace A038465

/-- `∩[A023694(n+1), A125292(n+1)]` -/
def P11550134474680564802.Spec : Prop :=
  ∀ n, (P11550134474680564802.a n : ℤ) = A038465 (n + 1)

end A038465

/-! ## A038465.P10629852117054998478

`∩[A023694(n+1), A226636(n+1)]`
-/

namespace A038465.P10629852117054998478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038465.P10629852117054998478

namespace A038465

/-- `∩[A023694(n+1), A226636(n+1)]` -/
def P10629852117054998478.Spec : Prop :=
  ∀ n, (P10629852117054998478.a n : ℤ) = A038465 (n + 1)

end A038465

/-! ## A038465.P8009759347123395820

`∩[A079495(n+1), A226636(n+1)]`
-/

namespace A038465.P8009759347123395820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038465.P8009759347123395820

namespace A038465

/-- `∩[A079495(n+1), A226636(n+1)]` -/
def P8009759347123395820.Spec : Prop :=
  ∀ n, (P8009759347123395820.a n : ℤ) = A038465 (n + 1)

end A038465

/-! ## A038465.P9734468950778896329

`∩[A226636(n+1), A239320(n+1)]`
-/

namespace A038465.P9734468950778896329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038465.P9734468950778896329

namespace A038465

/-- `∩[A226636(n+1), A239320(n+1)]` -/
def P9734468950778896329.Spec : Prop :=
  ∀ n, (P9734468950778896329.a n : ℤ) = A038465 (n + 1)

end A038465

/-!
# A038466: Sums of 4 distinct powers of 3.

The programs for A038466, the canonical program `A038466.P7851219286122095135` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038466 has offset 1).

The definition of A038466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038466.P12349046336927636068

`A005823(1+A014312(n+1))/2`
-/

namespace A038466.P12349046336927636068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005823 (1 + A014312 (n + 1)).toNat : ℚ) / 2

end

end A038466.P12349046336927636068

namespace A038466

/-- `A005823(1+A014312(n+1))/2` -/
def P12349046336927636068.Spec : Prop :=
  ∀ n, P12349046336927636068.a n = (A038466 (n + 1) : ℚ)

end A038466

/-! ## A038466.P2206350698838142121

`A005836(A014312(n+1)+1)`
-/

namespace A038466.P2206350698838142121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A014312 (n + 1) + 1).toNat

end

end A038466.P2206350698838142121

namespace A038466

/-- `A005836(A014312(n+1)+1)` -/
def P2206350698838142121.Spec : Prop :=
  ∀ n, P2206350698838142121.a n = A038466 (n + 1)

end A038466

/-! ## A038466.P7851219286122095135

`A005836(eq[4, A000120(n)]+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038466

/-- `A005836(eq[4, A000120(n)]+1)` -/
def P7851219286122095135.Spec : Prop :=
  ∀ n, P7851219286122095135.a n = A038466 (n + 1)

theorem P7851219286122095135.correct : P7851219286122095135.Spec := by
  intro n
  simp only [A038466, Nat.add_sub_cancel]

end A038466

/-! ## A038466.P13021066555094160095

`A005836(eq[81, A048883(n)]+1)`
-/

namespace A038466.P13021066555094160095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  81

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A038466.P13021066555094160095

namespace A038466

/-- `A005836(eq[81, A048883(n)]+1)` -/
def P13021066555094160095.Spec : Prop :=
  ∀ n, P13021066555094160095.a n = A038466 (n + 1)

end A038466

/-! ## A038466.P7697430064753269519

`A003278(eq[4, A000120(n)]+1)-1`
-/

namespace A038466.P7697430064753269519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A038466.P7697430064753269519

namespace A038466

/-- `A003278(eq[4, A000120(n)]+1)-1` -/
def P7697430064753269519.Spec : Prop :=
  ∀ n, P7697430064753269519.a n = A038466 (n + 1)

end A038466

/-! ## A038466.P16038428199680466605

`A003278(eq[81, A048883(n)]+1)-1`
-/

namespace A038466.P16038428199680466605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  81

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A038466.P16038428199680466605

namespace A038466

/-- `A003278(eq[81, A048883(n)]+1)-1` -/
def P16038428199680466605.Spec : Prop :=
  ∀ n, P16038428199680466605.a n = A038466 (n + 1)

end A038466

/-! ## A038466.P3819505984997707553

`record[A117966(A023695(n+1))]`
-/

namespace A038466.P3819505984997707553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A023695 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038466.P3819505984997707553

namespace A038466

/-- `record[A117966(A023695(n+1))]` -/
def P3819505984997707553.Spec : Prop :=
  ∀ n, P3819505984997707553.a n = A038466 (n + 1)

end A038466

/-! ## A038466.P8066194083335657948

`∩[A023695(n+1), A074939(n)]`
-/

namespace A038466.P8066194083335657948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074939 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038466.P8066194083335657948

namespace A038466

/-- `∩[A023695(n+1), A074939(n)]` -/
def P8066194083335657948.Spec : Prop :=
  ∀ n, (P8066194083335657948.a n : ℤ) = A038466 (n + 1)

end A038466

/-! ## A038466.P17389826686100233280

`∩[A005836(n+1), A023695(n+1)]`
-/

namespace A038466.P17389826686100233280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038466.P17389826686100233280

namespace A038466

/-- `∩[A005836(n+1), A023695(n+1)]` -/
def P17389826686100233280.Spec : Prop :=
  ∀ n, (P17389826686100233280.a n : ℤ) = A038466 (n + 1)

end A038466

/-! ## A038466.P2716081899178847336

`∩[A023695(n+1), A125292(n+1)]`
-/

namespace A038466.P2716081899178847336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038466.P2716081899178847336

namespace A038466

/-- `∩[A023695(n+1), A125292(n+1)]` -/
def P2716081899178847336.Spec : Prop :=
  ∀ n, (P2716081899178847336.a n : ℤ) = A038466 (n + 1)

end A038466

/-! ## A038466.P15942548036385655333

`∩[A005836(n+1), A023694(n+1)+1]`
-/

namespace A038466.P15942548036385655333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023694 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038466.P15942548036385655333

namespace A038466

/-- `∩[A005836(n+1), A023694(n+1)+1]` -/
def P15942548036385655333.Spec : Prop :=
  ∀ n, (P15942548036385655333.a n : ℤ) = A038466 (n + 1)

end A038466

/-! ## A038466.P4333108122910165211

`∩[A023694(n+1)+1, A125292(n+1)]`
-/

namespace A038466.P4333108122910165211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023694 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038466.P4333108122910165211

namespace A038466

/-- `∩[A023694(n+1)+1, A125292(n+1)]` -/
def P4333108122910165211.Spec : Prop :=
  ∀ n, (P4333108122910165211.a n : ℤ) = A038466 (n + 1)

end A038466

/-! ## A038466.P8902197305249985066

`eq[7, A331279(n)]`
-/

namespace A038466.P8902197305249985066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331279 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038466.P8902197305249985066

namespace A038466

/-- `eq[7, A331279(n)]` -/
def P8902197305249985066.Spec : Prop :=
  ∀ n, (P8902197305249985066.a n : ℤ) = A038466 (n + 1)

end A038466

/-! ## A038466.P10507154905709073829

`eq[81, A120879(n)]`
-/

namespace A038466.P10507154905709073829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  81

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038466.P10507154905709073829

namespace A038466

/-- `eq[81, A120879(n)]` -/
def P10507154905709073829.Spec : Prop :=
  ∀ n, (P10507154905709073829.a n : ℤ) = A038466 (n + 1)

end A038466

/-! ## A038466.P16616115466014537437

`eq[4, A151668(n)/4]`
-/

namespace A038466.P16616115466014537437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151668 n : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A038466.P16616115466014537437

namespace A038466

/-- `eq[4, A151668(n)/4]` -/
def P16616115466014537437.Spec : Prop :=
  ∀ n, (P16616115466014537437.a n : ℤ) = A038466 (n + 1)

end A038466

/-! ## A038466.P4341224629707039244

`eq[A006047(n), A040056(n)]`
-/

namespace A038466.P4341224629707039244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038466.P4341224629707039244

namespace A038466

/-- `eq[A006047(n), A040056(n)]` -/
def P4341224629707039244.Spec : Prop :=
  ∀ n, (P4341224629707039244.a n : ℤ) = A038466 (n + 1)

end A038466

/-! ## A038466.P6193766407196803835

`eq[A006047(n), A040059(n)]`
-/

namespace A038466.P6193766407196803835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040059 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038466.P6193766407196803835

namespace A038466

/-- `eq[A006047(n), A040059(n)]` -/
def P6193766407196803835.Spec : Prop :=
  ∀ n, (P6193766407196803835.a n : ℤ) = A038466 (n + 1)

end A038466

/-! ## A038466.P11129770541275954664

`eq[4, A002262(A151668(n)+3)]`
-/

namespace A038466.P11129770541275954664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A151668 n + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038466.P11129770541275954664

namespace A038466

/-- `eq[4, A002262(A151668(n)+3)]` -/
def P11129770541275954664.Spec : Prop :=
  ∀ n, (P11129770541275954664.a n : ℤ) = A038466 (n + 1)

end A038466

/-! ## A038466.P13995995584818833163

`filter[A023695(n+1), A039966(#)]`
-/

namespace A038466.P13995995584818833163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039966 (f1 j).toNat = 1) n)

end

end A038466.P13995995584818833163

namespace A038466

/-- `filter[A023695(n+1), A039966(#)]` -/
def P13995995584818833163.Spec : Prop :=
  ∀ n, P13995995584818833163.a n = A038466 (n + 1)

end A038466

/-! ## A038466.P6291130971403966562

`A060372(A003278(eq[4, A000120(n)]))`
-/

namespace A038466.P6291130971403966562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 (A003278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A038466.P6291130971403966562

namespace A038466

/-- `A060372(A003278(eq[4, A000120(n)]))` -/
def P6291130971403966562.Spec : Prop :=
  ∀ n, P6291130971403966562.a n = A038466 (n + 1)

end A038466

/-!
# A038467: Sums of 5 distinct powers of 3.

The programs for A038467, the canonical program `A038467.P6472635915818175104` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038467 has offset 1).

The definition of A038467 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1613 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038467.P14741213174015722710

`A005836(A014313(n+1)+1)`
-/

namespace A038467.P14741213174015722710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A014313 (n + 1) + 1).toNat

end

end A038467.P14741213174015722710

namespace A038467

/-- `A005836(A014313(n+1)+1)` -/
def P14741213174015722710.Spec : Prop :=
  ∀ n, P14741213174015722710.a n = A038467 (n + 1)

end A038467

/-! ## A038467.P6472635915818175104

`A005836(eq[5, A000120(n)]+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038467

/-- `A005836(eq[5, A000120(n)]+1)` -/
def P6472635915818175104.Spec : Prop :=
  ∀ n, P6472635915818175104.a n = A038467 (n + 1)

theorem P6472635915818175104.correct : P6472635915818175104.Spec := by
  intro n
  simp only [A038467, Nat.add_sub_cancel]

end A038467

/-! ## A038467.P8351563666448192497

`A003278(eq[5, A000120(n)]+1)-1`
-/

namespace A038467.P8351563666448192497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A038467.P8351563666448192497

namespace A038467

/-- `A003278(eq[5, A000120(n)]+1)-1` -/
def P8351563666448192497.Spec : Prop :=
  ∀ n, P8351563666448192497.a n = A038467 (n + 1)

end A038467

/-! ## A038467.P16556662216833379174

`A003278(eq[11, A057334(n)]+1)-1`
-/

namespace A038467.P16556662216833379174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A038467.P16556662216833379174

namespace A038467

/-- `A003278(eq[11, A057334(n)]+1)-1` -/
def P16556662216833379174.Spec : Prop :=
  ∀ n, P16556662216833379174.a n = A038467 (n + 1)

end A038467

/-! ## A038467.P16372279937813255966

`A003278(eq[A040241(n), A060632(n)]+1)-1`
-/

namespace A038467.P16372279937813255966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040241 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) - 1

end

end A038467.P16372279937813255966

namespace A038467

/-- `A003278(eq[A040241(n), A060632(n)]+1)-1` -/
def P16372279937813255966.Spec : Prop :=
  ∀ n, P16372279937813255966.a n = A038467 (n + 1)

end A038467

/-! ## A038467.P1014556695209653136

`A003278(eq[A004457(n), A326729(n)]+1)-1`
-/

namespace A038467.P1014556695209653136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004457 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) - 1

end

end A038467.P1014556695209653136

namespace A038467

/-- `A003278(eq[A004457(n), A326729(n)]+1)-1` -/
def P1014556695209653136.Spec : Prop :=
  ∀ n, P1014556695209653136.a n = A038467 (n + 1)

end A038467

/-! ## A038467.P14084105832296478508

`A003278(eq[n, A004457(A326729(n))]+1)-1`
-/

namespace A038467.P14084105832296478508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004457 (A326729 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A038467.P14084105832296478508

namespace A038467

/-- `A003278(eq[n, A004457(A326729(n))]+1)-1` -/
def P14084105832296478508.Spec : Prop :=
  ∀ n, P14084105832296478508.a n = A038467 (n + 1)

end A038467

/-! ## A038467.P4900213807555340891

`∩[A023696(n+1), A074938(n)]`
-/

namespace A038467.P4900213807555340891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038467.P4900213807555340891

namespace A038467

/-- `∩[A023696(n+1), A074938(n)]` -/
def P4900213807555340891.Spec : Prop :=
  ∀ n, (P4900213807555340891.a n : ℤ) = A038467 (n + 1)

end A038467

/-! ## A038467.P17115420518207362412

`∩[A005836(n+1), A023696(n+1)]`
-/

namespace A038467.P17115420518207362412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038467.P17115420518207362412

namespace A038467

/-- `∩[A005836(n+1), A023696(n+1)]` -/
def P17115420518207362412.Spec : Prop :=
  ∀ n, (P17115420518207362412.a n : ℤ) = A038467 (n + 1)

end A038467

/-! ## A038467.P8897872924228015578

`∩[A023696(n+1), A125292(n+1)]`
-/

namespace A038467.P8897872924228015578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038467.P8897872924228015578

namespace A038467

/-- `∩[A023696(n+1), A125292(n+1)]` -/
def P8897872924228015578.Spec : Prop :=
  ∀ n, (P8897872924228015578.a n : ℤ) = A038467 (n + 1)

end A038467

/-! ## A038467.P3152316868839746821

`record[A117966(A023696(n+1))]`
-/

namespace A038467.P3152316868839746821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A023696 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038467.P3152316868839746821

namespace A038467

/-- `record[A117966(A023696(n+1))]` -/
def P3152316868839746821.Spec : Prop :=
  ∀ n, P3152316868839746821.a n = A038467 (n + 1)

end A038467

/-! ## A038467.P8084601991039194651

`∩[A079498(n+1)-1, A074938(n)]`
-/

namespace A038467.P8084601991039194651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079498 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038467.P8084601991039194651

namespace A038467

/-- `∩[A079498(n+1)-1, A074938(n)]` -/
def P8084601991039194651.Spec : Prop :=
  ∀ n, (P8084601991039194651.a n : ℤ) = A038467 (n + 1)

end A038467

/-! ## A038467.P2243953689351576756

`∩[A005836(n+1), A023695(n+1)+1]`
-/

namespace A038467.P2243953689351576756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023695 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038467.P2243953689351576756

namespace A038467

/-- `∩[A005836(n+1), A023695(n+1)+1]` -/
def P2243953689351576756.Spec : Prop :=
  ∀ n, (P2243953689351576756.a n : ℤ) = A038467 (n + 1)

end A038467

/-! ## A038467.P10780520171915224757

`∩[A023695(n+1)+1, A125292(n+1)]`
-/

namespace A038467.P10780520171915224757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023695 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038467.P10780520171915224757

namespace A038467

/-- `∩[A023695(n+1)+1, A125292(n+1)]` -/
def P10780520171915224757.Spec : Prop :=
  ∀ n, (P10780520171915224757.a n : ℤ) = A038467 (n + 1)

end A038467

/-! ## A038467.P11794406994358805137

`A132141(A044993(n+1)+1)`
-/

namespace A038467.P11794406994358805137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132141 (A044993 (n + 1) + 1).toNat

end

end A038467.P11794406994358805137

namespace A038467

/-- `A132141(A044993(n+1)+1)` -/
def P11794406994358805137.Spec : Prop :=
  ∀ n, P11794406994358805137.a n = A038467 (n + 1)

end A038467

/-! ## A038467.P7380941332935735938

`eq[11, sqrt(A038574(n))]`
-/

namespace A038467.P7380941332935735938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038574 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A038467.P7380941332935735938

namespace A038467

/-- `eq[11, sqrt(A038574(n))]` -/
def P7380941332935735938.Spec : Prop :=
  ∀ n, (P7380941332935735938.a n : ℤ) = A038467 (n + 1)

end A038467

/-! ## A038467.P1184844629190474516

`eq[4, A245163(A006047(n))]`
-/

namespace A038467.P1184844629190474516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (A006047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038467.P1184844629190474516

namespace A038467

/-- `eq[4, A245163(A006047(n))]` -/
def P1184844629190474516.Spec : Prop :=
  ∀ n, (P1184844629190474516.a n : ℤ) = A038467 (n + 1)

end A038467

/-! ## A038467.P15382419541253124333

`filter[A023696(n+1), A039966(#)]`
-/

namespace A038467.P15382419541253124333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039966 (f1 j).toNat = 1) n)

end

end A038467.P15382419541253124333

namespace A038467

/-- `filter[A023696(n+1), A039966(#)]` -/
def P15382419541253124333.Spec : Prop :=
  ∀ n, P15382419541253124333.a n = A038467 (n + 1)

end A038467

/-! ## A038467.P9603515510481633544

`A060372(A003278(eq[5, A000120(n)]))`
-/

namespace A038467.P9603515510481633544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 (A003278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A038467.P9603515510481633544

namespace A038467

/-- `A060372(A003278(eq[5, A000120(n)]))` -/
def P9603515510481633544.Spec : Prop :=
  ∀ n, P9603515510481633544.a n = A038467 (n + 1)

end A038467

/-!
# A038468: Sums of 6 distinct powers of 3.

The programs for A038468, the canonical program `A038468.P11610894937929926258` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038468 has offset 1).

The definition of A038468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3003 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038468.P11610894937929926258

`A005823(A023688(1+n)+1)/2`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038468

/-- `A005823(A023688(1+n)+1)/2` -/
def P11610894937929926258.Spec : Prop :=
  ∀ n, P11610894937929926258.a n = (A038468 (n + 1) : ℚ)

end A038468

/-! ## A038468.P4853394997039534234

`A005836(A023688(1+n)+1)`
-/

namespace A038468.P4853394997039534234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A023688 (1 + n) + 1).toNat

end

end A038468.P4853394997039534234

namespace A038468

/-- `A005836(A023688(1+n)+1)` -/
def P4853394997039534234.Spec : Prop :=
  ∀ n, P4853394997039534234.a n = A038468 (n + 1)

end A038468

/-! ## A038468.P11362128159765249307

`A005836(eq[6, A000120(n)]+1)`
-/

namespace A038468.P11362128159765249307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A038468.P11362128159765249307

namespace A038468

/-- `A005836(eq[6, A000120(n)]+1)` -/
def P11362128159765249307.Spec : Prop :=
  ∀ n, P11362128159765249307.a n = A038468 (n + 1)

end A038468

/-! ## A038468.P8751145758280527262

`A005836(record[A001057(A023689(n+1))])`
-/

namespace A038468.P8751145758280527262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A023689 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A038468.P8751145758280527262

namespace A038468

/-- `A005836(record[A001057(A023689(n+1))])` -/
def P8751145758280527262.Spec : Prop :=
  ∀ n, P8751145758280527262.a n = A038468 (n + 1)

end A038468

/-! ## A038468.P11875044512379540132

`∩[A023697(n+1), A074939(n)]`
-/

namespace A038468.P11875044512379540132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074939 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038468.P11875044512379540132

namespace A038468

/-- `∩[A023697(n+1), A074939(n)]` -/
def P11875044512379540132.Spec : Prop :=
  ∀ n, (P11875044512379540132.a n : ℤ) = A038468 (n + 1)

end A038468

/-! ## A038468.P12960915930224437095

`∩[A005836(n+1), A023697(n+1)]`
-/

namespace A038468.P12960915930224437095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038468.P12960915930224437095

namespace A038468

/-- `∩[A005836(n+1), A023697(n+1)]` -/
def P12960915930224437095.Spec : Prop :=
  ∀ n, (P12960915930224437095.a n : ℤ) = A038468 (n + 1)

end A038468

/-! ## A038468.P12196869822894007598

`∩[A023697(n+1), A125292(n+1)]`
-/

namespace A038468.P12196869822894007598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038468.P12196869822894007598

namespace A038468

/-- `∩[A023697(n+1), A125292(n+1)]` -/
def P12196869822894007598.Spec : Prop :=
  ∀ n, (P12196869822894007598.a n : ℤ) = A038468 (n + 1)

end A038468

/-! ## A038468.P14270544911302812521

`∩[A005836(n+1), A023696(n+1)+1]`
-/

namespace A038468.P14270544911302812521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023696 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038468.P14270544911302812521

namespace A038468

/-- `∩[A005836(n+1), A023696(n+1)+1]` -/
def P14270544911302812521.Spec : Prop :=
  ∀ n, (P14270544911302812521.a n : ℤ) = A038468 (n + 1)

end A038468

/-! ## A038468.P15074207614578326491

`∩[A023696(n+1)+1, A125292(n+1)]`
-/

namespace A038468.P15074207614578326491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023696 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038468.P15074207614578326491

namespace A038468

/-- `∩[A023696(n+1)+1, A125292(n+1)]` -/
def P15074207614578326491.Spec : Prop :=
  ∀ n, (P15074207614578326491.a n : ℤ) = A038468 (n + 1)

end A038468

/-! ## A038468.P475265686736764044

`record[A117966(A023697(n+1))]`
-/

namespace A038468.P475265686736764044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A023697 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038468.P475265686736764044

namespace A038468

/-- `record[A117966(A023697(n+1))]` -/
def P475265686736764044.Spec : Prop :=
  ∀ n, P475265686736764044.a n = A038468 (n + 1)

end A038468

/-!
# A038469: Sums of 7 distinct powers of 3.

The programs for A038469, the canonical program `A038469.P10248714979857163301` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038469 has offset 1).

The definition of A038469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038469.P10248714979857163301

`A005836(A023689(1+n)+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038469

/-- `A005836(A023689(1+n)+1)` -/
def P10248714979857163301.Spec : Prop :=
  ∀ n, P10248714979857163301.a n = A038469 (n + 1)

theorem P10248714979857163301.correct : P10248714979857163301.Spec := by
  intro n
  simp only [A038469, Nat.add_sub_cancel]

end A038469

/-! ## A038469.P9162706814552043618

`A005836(eq[7, A000120(n)]+1)`
-/

namespace A038469.P9162706814552043618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A038469.P9162706814552043618

namespace A038469

/-- `A005836(eq[7, A000120(n)]+1)` -/
def P9162706814552043618.Spec : Prop :=
  ∀ n, P9162706814552043618.a n = A038469 (n + 1)

end A038469

/-! ## A038469.P15535754183217920483

`A003278(eq[7, A000120(n)]+1)-1`
-/

namespace A038469.P15535754183217920483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A038469.P15535754183217920483

namespace A038469

/-- `A003278(eq[7, A000120(n)]+1)-1` -/
def P15535754183217920483.Spec : Prop :=
  ∀ n, P15535754183217920483.a n = A038469 (n + 1)

end A038469

/-! ## A038469.P3752031096623659613

`∩[A023698(n+1), A074938(n)]`
-/

namespace A038469.P3752031096623659613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038469.P3752031096623659613

namespace A038469

/-- `∩[A023698(n+1), A074938(n)]` -/
def P3752031096623659613.Spec : Prop :=
  ∀ n, (P3752031096623659613.a n : ℤ) = A038469 (n + 1)

end A038469

/-! ## A038469.P14342727204249008244

`filter[A023698(n+1), A039966(#)]`
-/

namespace A038469.P14342727204249008244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039966 (f1 j).toNat = 1) n)

end

end A038469.P14342727204249008244

namespace A038469

/-- `filter[A023698(n+1), A039966(#)]` -/
def P14342727204249008244.Spec : Prop :=
  ∀ n, P14342727204249008244.a n = A038469 (n + 1)

end A038469

/-!
# A038470: Sums of 2 distinct powers of 4.

The programs for A038470, the canonical program `A038470.P16485816997203529762` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038470 has offset 1).

The definition of A038470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038470.P1870023031355493396

`4^(row(n)+1)+4^col(n)`
-/

namespace A038470.P1870023031355493396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (SequenceMachineLib.triRow n + 1) + 4 ^ SequenceMachineLib.triCol n

end

end A038470.P1870023031355493396

namespace A038470

/-- `4^(row(n)+1)+4^col(n)` -/
def P1870023031355493396.Spec : Prop :=
  ∀ n, (P1870023031355493396.a n : ℤ) = A038470 (n + 1)

end A038470

/-! ## A038470.P15612880179144484142

`or(4^col(n), A000302(row(n)+1))`
-/

namespace A038470.P15612880179144484142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 ^ SequenceMachineLib.triCol n : ℤ) (A000302 (SequenceMachineLib.triRow n + 1))

end

end A038470.P15612880179144484142

namespace A038470

/-- `or(4^col(n), A000302(row(n)+1))` -/
def P15612880179144484142.Spec : Prop :=
  ∀ n, P15612880179144484142.a n = A038470 (n + 1)

end A038470

/-! ## A038470.P13298599710170874797

`4^A002262(n)+4^∑[char[∑[n]]]`
-/

namespace A038470.P13298599710170874797
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A002262 n : ℤ) + (4 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A038470.P13298599710170874797

namespace A038470

/-- `4^A002262(n)+4^∑[char[∑[n]]]` -/
def P13298599710170874797.Spec : Prop :=
  ∀ n, P13298599710170874797.a n = (A038470 (n + 1) : ℚ)

end A038470

/-! ## A038470.P16485816997203529762

`A059268(n)²+A140513(n)²`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A038470

/-- `A059268(n)²+A140513(n)²` -/
def P16485816997203529762.Spec : Prop :=
  ∀ n, P16485816997203529762.a n = A038470 (n + 1)

theorem P16485816997203529762.correct : P16485816997203529762.Spec := by
  intro n
  simp only [A038470, Nat.add_sub_cancel]

end A038470

/-! ## A038470.P5418183093377454528

`A000079(A002262(n))²+A140513(n)²`
-/

namespace A038470.P5418183093377454528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat ^ 2 + A140513 n ^ 2

end

end A038470.P5418183093377454528

namespace A038470

/-- `A000079(A002262(n))²+A140513(n)²` -/
def P5418183093377454528.Spec : Prop :=
  ∀ n, P5418183093377454528.a n = A038470 (n + 1)

end A038470

/-! ## A038470.P13210587643031767850

`A018900(n+1)*A140513(n)-A130324(n)`
-/

namespace A038470.P13210587643031767850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1) * A140513 n - A130324 n

end

end A038470.P13210587643031767850

namespace A038470

/-- `A018900(n+1)*A140513(n)-A130324(n)` -/
def P13210587643031767850.Spec : Prop :=
  ∀ n, P13210587643031767850.a n = A038470 (n + 1)

theorem P13210587643031767850.correct : P13210587643031767850.Spec := by
  intro n
  simp only [A038470, Nat.add_sub_cancel, A038470.P13210587643031767850.a, A038470.P16485816997203529762.a, A018900, A018900.P2868698677378612256.a, A059268, A059268.P15217573790077737885.a, A130324, A130324.P11583610858760618975.a, A140513, A140513.P13579608035938851890.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A038470

/-! ## A038470.P164658887820886731

`A055236(comp[∑[n-1]])`
-/

namespace A038470.P164658887820886731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055236 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A038470.P164658887820886731

namespace A038470

/-- `A055236(comp[∑[n-1]])` -/
def P164658887820886731.Spec : Prop :=
  ∀ n, P164658887820886731.a n = A038470 (n + 1)

end A038470

/-! ## A038470.P10898415759790841627

`A136318(A185868(n+1))`
-/

namespace A038470.P10898415759790841627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136318 (A185868 (n + 1)).toNat

end

end A038470.P10898415759790841627

namespace A038470

/-- `A136318(A185868(n+1))` -/
def P10898415759790841627.Spec : Prop :=
  ∀ n, P10898415759790841627.a n = A038470 (n + 1)

end A038470

/-! ## A038470.P17745860592510128803

`∩[A136318(n+1), A055236(n)]`
-/

namespace A038470.P17745860592510128803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055236 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038470.P17745860592510128803

namespace A038470

/-- `∩[A136318(n+1), A055236(n)]` -/
def P17745860592510128803.Spec : Prop :=
  ∀ n, (P17745860592510128803.a n : ℤ) = A038470 (n + 1)

end A038470

/-! ## A038470.P18389215485857954780

`A018900(A185869(n+1))`
-/

namespace A038470.P18389215485857954780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (A185869 (n + 1)).toNat

end

end A038470.P18389215485857954780

namespace A038470

/-- `A018900(A185869(n+1))` -/
def P18389215485857954780.Spec : Prop :=
  ∀ n, P18389215485857954780.a n = A038470 (n + 1)

end A038470

/-! ## A038470.P9804104563085823503

`∩[A018900(n+1), A055236(n)]`
-/

namespace A038470.P9804104563085823503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055236 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038470.P9804104563085823503

namespace A038470

/-- `∩[A018900(n+1), A055236(n)]` -/
def P9804104563085823503.Spec : Prop :=
  ∀ n, (P9804104563085823503.a n : ℤ) = A038470 (n + 1)

end A038470

/-! ## A038470.P946627899321484985

`A018900(Δ[n²]+A002024(n+1)²)`
-/

namespace A038470.P946627899321484985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + A002024 (n + 1) ^ 2).toNat

end

end A038470.P946627899321484985

namespace A038470

/-- `A018900(Δ[n²]+A002024(n+1)²)` -/
def P946627899321484985.Spec : Prop :=
  ∀ n, P946627899321484985.a n = A038470 (n + 1)

end A038470

/-! ## A038470.P364383318365795743

`A018900(A002024(n+1)²+2*n+1)`
-/

namespace A038470.P364383318365795743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (A002024 (n + 1) ^ 2 + (2 * n + 1 : ℤ)).toNat

end

end A038470.P364383318365795743

namespace A038470

/-- `A018900(A002024(n+1)²+2*n+1)` -/
def P364383318365795743.Spec : Prop :=
  ∀ n, P364383318365795743.a n = A038470 (n + 1)

end A038470

/-! ## A038470.P2910752630763949594

`∩[A055236(n), A212191(n+1)]`
-/

namespace A038470.P2910752630763949594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055236 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038470.P2910752630763949594

namespace A038470

/-- `∩[A055236(n), A212191(n+1)]` -/
def P2910752630763949594.Spec : Prop :=
  ∀ n, (P2910752630763949594.a n : ℤ) = A038470 (n + 1)

end A038470

/-! ## A038470.P254342463652724720

`A048645(A185871(n+1))`
-/

namespace A038470.P254342463652724720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (A185871 (n + 1)).toNat

end

end A038470.P254342463652724720

namespace A038470

/-- `A048645(A185871(n+1))` -/
def P254342463652724720.Spec : Prop :=
  ∀ n, P254342463652724720.a n = A038470 (n + 1)

end A038470

/-!
# A038471: Sums of 3 distinct powers of 4.

The programs for A038471, the canonical program `A038471.P15695832334258013745` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038471 has offset 1).

The definition of A038471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038471.P15695832334258013745

`A000695(eq[0, a(and(n, n-1))+1])` with `a(0)=-3`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038471

/-- `A000695(eq[0, a(and(n, n-1))+1])` -/
def P15695832334258013745.Spec : Prop :=
  ∀ n, P15695832334258013745.a n = A038471 (n + 1)

theorem P15695832334258013745.correct : P15695832334258013745.Spec := by
  intro n
  simp only [A038471, Nat.add_sub_cancel]

end A038471

/-! ## A038471.P12110596814820818356

`A000695(A014311(1+n))`
-/

namespace A038471.P12110596814820818356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A014311 (1 + n)).toNat

end

end A038471.P12110596814820818356

namespace A038471

/-- `A000695(A014311(1+n))` -/
def P12110596814820818356.Spec : Prop :=
  ∀ n, P12110596814820818356.a n = A038471 (n + 1)

end A038471

/-! ## A038471.P5928145787390154104

`A000695(eq[3, A000120(n)])`
-/

namespace A038471.P5928145787390154104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038471.P5928145787390154104

namespace A038471

/-- `A000695(eq[3, A000120(n)])` -/
def P5928145787390154104.Spec : Prop :=
  ∀ n, P5928145787390154104.a n = A038471 (n + 1)

end A038471

/-! ## A038471.P11959734851122019356

`A000695(eq[7, A038573(n)])`
-/

namespace A038471.P11959734851122019356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038471.P11959734851122019356

namespace A038471

/-- `A000695(eq[7, A038573(n)])` -/
def P11959734851122019356.Spec : Prop :=
  ∀ n, P11959734851122019356.a n = A038471 (n + 1)

end A038471

/-! ## A038471.P9513094461342675839

`A000695(eq[8, A001316(n)])`
-/

namespace A038471.P9513094461342675839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038471.P9513094461342675839

namespace A038471

/-- `A000695(eq[8, A001316(n)])` -/
def P9513094461342675839.Spec : Prop :=
  ∀ n, P9513094461342675839.a n = A038471 (n + 1)

end A038471

/-! ## A038471.P9627835532264749225

`A000695(eq[9, A324467(n)])`
-/

namespace A038471.P9627835532264749225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324467 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038471.P9627835532264749225

namespace A038471

/-- `A000695(eq[9, A324467(n)])` -/
def P9627835532264749225.Spec : Prop :=
  ∀ n, P9627835532264749225.a n = A038471 (n + 1)

end A038471

/-! ## A038471.P218924339712257696

`A000695(eq[3, val(A102377(n), 2)])`
-/

namespace A038471.P218924339712257696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A102377 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A038471.P218924339712257696

namespace A038471

/-- `A000695(eq[3, val(A102377(n), 2)])` -/
def P218924339712257696.Spec : Prop :=
  ∀ n, P218924339712257696.a n = A038471 (n + 1)

end A038471

/-! ## A038471.P9110159302622041716

`A000695(eq[36, A147582(n+1)])`
-/

namespace A038471.P9110159302622041716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038471.P9110159302622041716

namespace A038471

/-- `A000695(eq[36, A147582(n+1)])` -/
def P9110159302622041716.Spec : Prop :=
  ∀ n, P9110159302622041716.a n = A038471 (n + 1)

end A038471

/-! ## A038471.P5396895305696778025

`∩[A173589(n+1), A000695(n)]`
-/

namespace A038471.P5396895305696778025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038471.P5396895305696778025

namespace A038471

/-- `∩[A173589(n+1), A000695(n)]` -/
def P5396895305696778025.Spec : Prop :=
  ∀ n, (P5396895305696778025.a n : ℤ) = A038471 (n + 1)

end A038471

/-! ## A038471.P17532379373022288112

`∩[A226969(n+1)-1, A000695(n)]`
-/

namespace A038471.P17532379373022288112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226969 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038471.P17532379373022288112

namespace A038471

/-- `∩[A226969(n+1)-1, A000695(n)]` -/
def P17532379373022288112.Spec : Prop :=
  ∀ n, (P17532379373022288112.a n : ℤ) = A038471 (n + 1)

end A038471

/-! ## A038471.P3424133447533969075

`∩[A173589(n+1), A393255(n+1)]`
-/

namespace A038471.P3424133447533969075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038471.P3424133447533969075

namespace A038471

/-- `∩[A173589(n+1), A393255(n+1)]` -/
def P3424133447533969075.Spec : Prop :=
  ∀ n, (P3424133447533969075.a n : ℤ) = A038471 (n + 1)

end A038471

/-! ## A038471.P13965337207969760705

`A090640(A173589(n+1))`
-/

namespace A038471.P13965337207969760705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090640 (A173589 (n + 1)).toNat

end

end A038471.P13965337207969760705

namespace A038471

/-- `A090640(A173589(n+1))` -/
def P13965337207969760705.Spec : Prop :=
  ∀ n, P13965337207969760705.a n = A038471 (n + 1)

end A038471

/-! ## A038471.P4507801782223087257

`∩[A045100(n+1), A000695(n)]`
-/

namespace A038471.P4507801782223087257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038471.P4507801782223087257

namespace A038471

/-- `∩[A045100(n+1), A000695(n)]` -/
def P4507801782223087257.Spec : Prop :=
  ∀ n, (P4507801782223087257.a n : ℤ) = A038471 (n + 1)

end A038471

/-! ## A038471.P6257812074703531951

`∩[A045124(n+1), A000695(n)]`
-/

namespace A038471.P6257812074703531951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038471.P6257812074703531951

namespace A038471

/-- `∩[A045124(n+1), A000695(n)]` -/
def P6257812074703531951.Spec : Prop :=
  ∀ n, (P6257812074703531951.a n : ℤ) = A038471 (n + 1)

end A038471

/-! ## A038471.P7500947967570195748

`∩[A045100(n+1), A105425(n)]`
-/

namespace A038471.P7500947967570195748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105425 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038471.P7500947967570195748

namespace A038471

/-- `∩[A045100(n+1), A105425(n)]` -/
def P7500947967570195748.Spec : Prop :=
  ∀ n, (P7500947967570195748.a n : ℤ) = A038471 (n + 1)

end A038471

/-! ## A038471.P1151781681210801069

`∩[A014311(n+1), A045100(n+1)]`
-/

namespace A038471.P1151781681210801069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038471.P1151781681210801069

namespace A038471

/-- `∩[A014311(n+1), A045100(n+1)]` -/
def P1151781681210801069.Spec : Prop :=
  ∀ n, (P1151781681210801069.a n : ℤ) = A038471 (n + 1)

end A038471

/-! ## A038471.P2954766353489821148

`∩[A014311(n+1), A045124(n+1)]`
-/

namespace A038471.P2954766353489821148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038471.P2954766353489821148

namespace A038471

/-- `∩[A014311(n+1), A045124(n+1)]` -/
def P2954766353489821148.Spec : Prop :=
  ∀ n, (P2954766353489821148.a n : ℤ) = A038471 (n + 1)

end A038471

/-! ## A038471.P16427055250705352642

`∩[A032937(n+1), A045100(n+1)]`
-/

namespace A038471.P16427055250705352642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038471.P16427055250705352642

namespace A038471

/-- `∩[A032937(n+1), A045100(n+1)]` -/
def P16427055250705352642.Spec : Prop :=
  ∀ n, (P16427055250705352642.a n : ℤ) = A038471 (n + 1)

end A038471

/-! ## A038471.P5338454536710725196

`∩[A032937(n+1), A045124(n+1)]`
-/

namespace A038471.P5338454536710725196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038471.P5338454536710725196

namespace A038471

/-- `∩[A032937(n+1), A045124(n+1)]` -/
def P5338454536710725196.Spec : Prop :=
  ∀ n, (P5338454536710725196.a n : ℤ) = A038471 (n + 1)

end A038471

/-! ## A038471.P13134645236085943868

`∩[A045100(n+1), A045124(n+1)]`
-/

namespace A038471.P13134645236085943868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038471.P13134645236085943868

namespace A038471

/-- `∩[A045100(n+1), A045124(n+1)]` -/
def P13134645236085943868.Spec : Prop :=
  ∀ n, (P13134645236085943868.a n : ℤ) = A038471 (n + 1)

end A038471

/-!
# A038472: Sums of 4 distinct powers of 4.

The programs for A038472, the canonical program `A038472.P13262767256945248339` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038472 has offset 1).

The definition of A038472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038472.P15527128966231252171

`A000695(eq[6, a(and(n, n-1))+1])` with `a(0)=2`
-/

namespace A038472.P15527128966231252171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A038472.P15527128966231252171

namespace A038472

/-- `A000695(eq[6, a(and(n, n-1))+1])` -/
def P15527128966231252171.Spec : Prop :=
  ∀ n, P15527128966231252171.a n = A038472 (n + 1)

end A038472

/-! ## A038472.P5366681364987376597

`A000695(eq[0, a(floor(n/2))+n%2])` with `a(0)=-4`
-/

namespace A038472.P5366681364987376597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-4] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038472.P5366681364987376597

namespace A038472

/-- `A000695(eq[0, a(floor(n/2))+n%2])` -/
def P5366681364987376597.Spec : Prop :=
  ∀ n, P5366681364987376597.a n = A038472 (n + 1)

end A038472

/-! ## A038472.P794083006992432210

`A000695(A014312(1+n))`
-/

namespace A038472.P794083006992432210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A014312 (1 + n)).toNat

end

end A038472.P794083006992432210

namespace A038472

/-- `A000695(A014312(1+n))` -/
def P794083006992432210.Spec : Prop :=
  ∀ n, P794083006992432210.a n = A038472 (n + 1)

end A038472

/-! ## A038472.P13262767256945248339

`A000695(eq[4, A000120(n)])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038472

/-- `A000695(eq[4, A000120(n)])` -/
def P13262767256945248339.Spec : Prop :=
  ∀ n, P13262767256945248339.a n = A038472 (n + 1)

theorem P13262767256945248339.correct : P13262767256945248339.Spec := by
  intro n
  simp only [A038472, Nat.add_sub_cancel]

end A038472

/-! ## A038472.P2575619837337489819

`A000695(eq[15, A038573(n)])`
-/

namespace A038472.P2575619837337489819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038472.P2575619837337489819

namespace A038472

/-- `A000695(eq[15, A038573(n)])` -/
def P2575619837337489819.Spec : Prop :=
  ∀ n, P2575619837337489819.a n = A038472 (n + 1)

end A038472

/-! ## A038472.P14157940427891844510

`A000695(eq[15, A050315(n)])`
-/

namespace A038472.P14157940427891844510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038472.P14157940427891844510

namespace A038472

/-- `A000695(eq[15, A050315(n)])` -/
def P14157940427891844510.Spec : Prop :=
  ∀ n, P14157940427891844510.a n = A038472 (n + 1)

end A038472

/-! ## A038472.P7010041392518947865

`A000695(eq[16, A001316(n)])`
-/

namespace A038472.P7010041392518947865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038472.P7010041392518947865

namespace A038472

/-- `A000695(eq[16, A001316(n)])` -/
def P7010041392518947865.Spec : Prop :=
  ∀ n, P7010041392518947865.a n = A038472 (n + 1)

end A038472

/-! ## A038472.P6507004783815626420

`A000695(eq[81, A048883(n)])`
-/

namespace A038472.P6507004783815626420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  81

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038472.P6507004783815626420

namespace A038472

/-- `A000695(eq[81, A048883(n)])` -/
def P6507004783815626420.Spec : Prop :=
  ∀ n, P6507004783815626420.a n = A038472 (n + 1)

end A038472

/-! ## A038472.P14646570776127251503

`∩[A226969(n+1), A000695(n)]`
-/

namespace A038472.P14646570776127251503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038472.P14646570776127251503

namespace A038472

/-- `∩[A226969(n+1), A000695(n)]` -/
def P14646570776127251503.Spec : Prop :=
  ∀ n, (P14646570776127251503.a n : ℤ) = A038472 (n + 1)

end A038472

/-! ## A038472.P12519370990404313664

`∩[A014312(n+1), A226969(n+1)]`
-/

namespace A038472.P12519370990404313664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038472.P12519370990404313664

namespace A038472

/-- `∩[A014312(n+1), A226969(n+1)]` -/
def P12519370990404313664.Spec : Prop :=
  ∀ n, (P12519370990404313664.a n : ℤ) = A038472 (n + 1)

end A038472

/-! ## A038472.P6878791945096937524

`∩[A045105(n+1), A000695(n)]`
-/

namespace A038472.P6878791945096937524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038472.P6878791945096937524

namespace A038472

/-- `∩[A045105(n+1), A000695(n)]` -/
def P6878791945096937524.Spec : Prop :=
  ∀ n, (P6878791945096937524.a n : ℤ) = A038472 (n + 1)

end A038472

/-! ## A038472.P7687159403121224993

`∩[A045129(n+1), A000695(n)]`
-/

namespace A038472.P7687159403121224993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038472.P7687159403121224993

namespace A038472

/-- `∩[A045129(n+1), A000695(n)]` -/
def P7687159403121224993.Spec : Prop :=
  ∀ n, (P7687159403121224993.a n : ℤ) = A038472 (n + 1)

end A038472

/-! ## A038472.P1814707377403054312

`∩[A045105(n+1), A105425(n)]`
-/

namespace A038472.P1814707377403054312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105425 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038472.P1814707377403054312

namespace A038472

/-- `∩[A045105(n+1), A105425(n)]` -/
def P1814707377403054312.Spec : Prop :=
  ∀ n, (P1814707377403054312.a n : ℤ) = A038472 (n + 1)

end A038472

/-! ## A038472.P6951622311007718847

`∩[A045100(n+1)+1, A000695(n)]`
-/

namespace A038472.P6951622311007718847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045100 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038472.P6951622311007718847

namespace A038472

/-- `∩[A045100(n+1)+1, A000695(n)]` -/
def P6951622311007718847.Spec : Prop :=
  ∀ n, (P6951622311007718847.a n : ℤ) = A038472 (n + 1)

end A038472

/-! ## A038472.P14089498295286589562

`∩[A014312(n+1), A045105(n+1)]`
-/

namespace A038472.P14089498295286589562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038472.P14089498295286589562

namespace A038472

/-- `∩[A014312(n+1), A045105(n+1)]` -/
def P14089498295286589562.Spec : Prop :=
  ∀ n, (P14089498295286589562.a n : ℤ) = A038472 (n + 1)

end A038472

/-! ## A038472.P17397381621357607745

`∩[A014312(n+1), A045129(n+1)]`
-/

namespace A038472.P17397381621357607745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038472.P17397381621357607745

namespace A038472

/-- `∩[A014312(n+1), A045129(n+1)]` -/
def P17397381621357607745.Spec : Prop :=
  ∀ n, (P17397381621357607745.a n : ℤ) = A038472 (n + 1)

end A038472

/-! ## A038472.P16108380843965533879

`∩[A032937(n+1), A045105(n+1)]`
-/

namespace A038472.P16108380843965533879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038472.P16108380843965533879

namespace A038472

/-- `∩[A032937(n+1), A045105(n+1)]` -/
def P16108380843965533879.Spec : Prop :=
  ∀ n, (P16108380843965533879.a n : ℤ) = A038472 (n + 1)

end A038472

/-! ## A038472.P10141460091865954396

`∩[A032937(n+1), A045129(n+1)]`
-/

namespace A038472.P10141460091865954396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038472.P10141460091865954396

namespace A038472

/-- `∩[A032937(n+1), A045129(n+1)]` -/
def P10141460091865954396.Spec : Prop :=
  ∀ n, (P10141460091865954396.a n : ℤ) = A038472 (n + 1)

end A038472

/-! ## A038472.P13694066373546443610

`∩[A045105(n+1), A045129(n+1)]`
-/

namespace A038472.P13694066373546443610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038472.P13694066373546443610

namespace A038472

/-- `∩[A045105(n+1), A045129(n+1)]` -/
def P13694066373546443610.Spec : Prop :=
  ∀ n, (P13694066373546443610.a n : ℤ) = A038472 (n + 1)

end A038472

/-! ## A038472.P4916663741829362220

`∩[A045105(n+1), A126684(n+1)]`
-/

namespace A038472.P4916663741829362220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038472.P4916663741829362220

namespace A038472

/-- `∩[A045105(n+1), A126684(n+1)]` -/
def P4916663741829362220.Spec : Prop :=
  ∀ n, (P4916663741829362220.a n : ℤ) = A038472 (n + 1)

end A038472

/-!
# A038473: Sums of 5 distinct powers of 4.

The programs for A038473, the canonical program `A038473.P3228666784314917464` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038473 has offset 1).

The definition of A038473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1613 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038473.P14007686864126302703

`A000695(eq[6, a(and(n, n-1))+1])` with `a(0)=1`
-/

namespace A038473.P14007686864126302703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A038473.P14007686864126302703

namespace A038473

/-- `A000695(eq[6, a(and(n, n-1))+1])` -/
def P14007686864126302703.Spec : Prop :=
  ∀ n, P14007686864126302703.a n = A038473 (n + 1)

end A038473

/-! ## A038473.P18244283085740601487

`A000695(A014313(1+n))`
-/

namespace A038473.P18244283085740601487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A014313 (1 + n)).toNat

end

end A038473.P18244283085740601487

namespace A038473

/-- `A000695(A014313(1+n))` -/
def P18244283085740601487.Spec : Prop :=
  ∀ n, P18244283085740601487.a n = A038473 (n + 1)

end A038473

/-! ## A038473.P3228666784314917464

`A000695(eq[5, A000120(n)])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038473

/-- `A000695(eq[5, A000120(n)])` -/
def P3228666784314917464.Spec : Prop :=
  ∀ n, P3228666784314917464.a n = A038473 (n + 1)

theorem P3228666784314917464.correct : P3228666784314917464.Spec := by
  intro n
  simp only [A038473, Nat.add_sub_cancel]

end A038473

/-! ## A038473.P857381633104307833

`A000695(eq[31, A038573(n)])`
-/

namespace A038473.P857381633104307833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038473.P857381633104307833

namespace A038473

/-- `A000695(eq[31, A038573(n)])` -/
def P857381633104307833.Spec : Prop :=
  ∀ n, P857381633104307833.a n = A038473 (n + 1)

end A038473

/-! ## A038473.P3680322103395857589

`A000695(eq[32, A001316(n)])`
-/

namespace A038473.P3680322103395857589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038473.P3680322103395857589

namespace A038473

/-- `A000695(eq[32, A001316(n)])` -/
def P3680322103395857589.Spec : Prop :=
  ∀ n, P3680322103395857589.a n = A038473 (n + 1)

end A038473

/-! ## A038473.P3904340875897349424

`A000695(eq[5, dr(A001202(n+1))])`
-/

namespace A038473.P3904340875897349424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001202 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A038473.P3904340875897349424

namespace A038473

/-- `A000695(eq[5, dr(A001202(n+1))])` -/
def P3904340875897349424.Spec : Prop :=
  ∀ n, P3904340875897349424.a n = A038473 (n + 1)

end A038473

/-! ## A038473.P17514212768357690373

`∩[A045105(n+1)+1, A000695(n)]`
-/

namespace A038473.P17514212768357690373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045105 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038473.P17514212768357690373

namespace A038473

/-- `∩[A045105(n+1)+1, A000695(n)]` -/
def P17514212768357690373.Spec : Prop :=
  ∀ n, (P17514212768357690373.a n : ℤ) = A038473 (n + 1)

end A038473

/-! ## A038473.P6027202580296867392

`∩[A032937(n+1), A045105(n+1)+1]`
-/

namespace A038473.P6027202580296867392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045105 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038473.P6027202580296867392

namespace A038473

/-- `∩[A032937(n+1), A045105(n+1)+1]` -/
def P6027202580296867392.Spec : Prop :=
  ∀ n, (P6027202580296867392.a n : ℤ) = A038473 (n + 1)

end A038473

/-! ## A038473.P5793411261594248677

`∩[A045105(n+1)+1, A126684(n+1)]`
-/

namespace A038473.P5793411261594248677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045105 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038473.P5793411261594248677

namespace A038473

/-- `∩[A045105(n+1)+1, A126684(n+1)]` -/
def P5793411261594248677.Spec : Prop :=
  ∀ n, (P5793411261594248677.a n : ℤ) = A038473 (n + 1)

end A038473

/-! ## A038473.P9442442389208578312

`A006288(A038467(n+1))`
-/

namespace A038473.P9442442389208578312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006288 (A038467 (n + 1)).toNat

end

end A038473.P9442442389208578312

namespace A038473

/-- `A006288(A038467(n+1))` -/
def P9442442389208578312.Spec : Prop :=
  ∀ n, P9442442389208578312.a n = A038473 (n + 1)

end A038473

/-!
# A038474: Sums of two distinct powers of 5.

The programs for A038474, the canonical program `A038474.P7186369263543628672` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038474 has offset 1).

The definition of A038474 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038474.P7186369263543628672

`5^(row(n)+1)+5^col(n)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A038474

/-- `5^(row(n)+1)+5^col(n)` -/
def P7186369263543628672.Spec : Prop :=
  ∀ n, (P7186369263543628672.a n : ℤ) = A038474 (n + 1)

theorem P7186369263543628672.correct : P7186369263543628672.Spec := by
  intro n
  simp only [A038474, Nat.add_sub_cancel]

end A038474

/-! ## A038474.P16899976733924271520

`A055237(comp[A000096(n)])`
-/

namespace A038474.P16899976733924271520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055237 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A038474.P16899976733924271520

namespace A038474

/-- `A055237(comp[A000096(n)])` -/
def P16899976733924271520.Spec : Prop :=
  ∀ n, P16899976733924271520.a n = A038474 (n + 1)

end A038474

/-! ## A038474.P15467086712580627609

`A055237(A007401(1+n))`
-/

namespace A038474.P15467086712580627609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055237 (A007401 (1 + n)).toNat

end

end A038474.P15467086712580627609

namespace A038474

/-- `A055237(A007401(1+n))` -/
def P15467086712580627609.Spec : Prop :=
  ∀ n, P15467086712580627609.a n = A038474 (n + 1)

end A038474

/-! ## A038474.P9127275093932500635

`A055237(lt[1, A039598(n)])`
-/

namespace A038474.P9127275093932500635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055237 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A038474.P9127275093932500635

namespace A038474

/-- `A055237(lt[1, A039598(n)])` -/
def P9127275093932500635.Spec : Prop :=
  ∀ n, P9127275093932500635.a n = A038474 (n + 1)

end A038474

/-! ## A038474.P12124920808046736332

`A055237(lt[1, A055248(n)])`
-/

namespace A038474.P12124920808046736332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055237 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A038474.P12124920808046736332

namespace A038474

/-- `A055237(lt[1, A055248(n)])` -/
def P12124920808046736332.Spec : Prop :=
  ∀ n, P12124920808046736332.a n = A038474 (n + 1)

end A038474

/-! ## A038474.P4072847663142266304

`A055237(lt[1, A055249(n)])`
-/

namespace A038474.P4072847663142266304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055237 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A038474.P4072847663142266304

namespace A038474

/-- `A055237(lt[1, A055249(n)])` -/
def P4072847663142266304.Spec : Prop :=
  ∀ n, P4072847663142266304.a n = A038474 (n + 1)

end A038474

/-! ## A038474.P1772068258157341149

`A055237(lt[1, A055252(n)])`
-/

namespace A038474.P1772068258157341149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055237 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A038474.P1772068258157341149

namespace A038474

/-- `A055237(lt[1, A055252(n)])` -/
def P1772068258157341149.Spec : Prop :=
  ∀ n, P1772068258157341149.a n = A038474 (n + 1)

end A038474

/-! ## A038474.P8426917877125695653

`A055237(A002024(n+1)+n)`
-/

namespace A038474.P8426917877125695653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055237 (A002024 (n + 1) + (n : ℤ)).toNat

end

end A038474.P8426917877125695653

namespace A038474

/-- `A055237(A002024(n+1)+n)` -/
def P8426917877125695653.Spec : Prop :=
  ∀ n, P8426917877125695653.a n = A038474 (n + 1)

end A038474

/-! ## A038474.P6015166005961525144

`A055237(A003056(n)+1+n)`
-/

namespace A038474.P6015166005961525144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055237 (A003056 n + 1 + (n : ℤ)).toNat

end

end A038474.P6015166005961525144

namespace A038474

/-- `A055237(A003056(n)+1+n)` -/
def P6015166005961525144.Spec : Prop :=
  ∀ n, P6015166005961525144.a n = A038474 (n + 1)

end A038474

/-! ## A038474.P9149575731727185951

`A055237(A000194(2*n+1)+n)`
-/

namespace A038474.P9149575731727185951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055237 (A000194 (2 * n + 1) + (n : ℤ)).toNat

end

end A038474.P9149575731727185951

namespace A038474

/-- `A055237(A000194(2*n+1)+n)` -/
def P9149575731727185951.Spec : Prop :=
  ∀ n, P9149575731727185951.a n = A038474 (n + 1)

end A038474

/-!
# A038475: Sums of 3 distinct powers of 5.

The programs for A038475, the canonical program `A038475.P12245144297015689144` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038475 has offset 1).

The definition of A038475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038475.P10300210696728261785

`A033042(A014311(1+n))`
-/

namespace A038475.P10300210696728261785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (A014311 (1 + n)).toNat

end

end A038475.P10300210696728261785

namespace A038475

/-- `A033042(A014311(1+n))` -/
def P10300210696728261785.Spec : Prop :=
  ∀ n, P10300210696728261785.a n = A038475 (n + 1)

end A038475

/-! ## A038475.P12245144297015689144

`A033042(eq[3, A000120(n)])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038475

/-- `A033042(eq[3, A000120(n)])` -/
def P12245144297015689144.Spec : Prop :=
  ∀ n, P12245144297015689144.a n = A038475 (n + 1)

theorem P12245144297015689144.correct : P12245144297015689144.Spec := by
  intro n
  simp only [A038475, Nat.add_sub_cancel]

end A038475

/-! ## A038475.P1775642222453867964

`A033042(eq[7, A038573(n)])`
-/

namespace A038475.P1775642222453867964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038475.P1775642222453867964

namespace A038475

/-- `A033042(eq[7, A038573(n)])` -/
def P1775642222453867964.Spec : Prop :=
  ∀ n, P1775642222453867964.a n = A038475 (n + 1)

end A038475

/-! ## A038475.P9422048396535723561

`A033042(eq[8, A001316(n)])`
-/

namespace A038475.P9422048396535723561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038475.P9422048396535723561

namespace A038475

/-- `A033042(eq[8, A001316(n)])` -/
def P9422048396535723561.Spec : Prop :=
  ∀ n, P9422048396535723561.a n = A038475 (n + 1)

end A038475

/-! ## A038475.P16529230906386566387

`A033042(eq[27, A048883(n)])`
-/

namespace A038475.P16529230906386566387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038475.P16529230906386566387

namespace A038475

/-- `A033042(eq[27, A048883(n)])` -/
def P16529230906386566387.Spec : Prop :=
  ∀ n, P16529230906386566387.a n = A038475 (n + 1)

end A038475

/-! ## A038475.P4085175364553560520

`A033042(eq[3, 2*n-A005187(n)])`
-/

namespace A038475.P4085175364553560520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038475.P4085175364553560520

namespace A038475

/-- `A033042(eq[3, 2*n-A005187(n)])` -/
def P4085175364553560520.Spec : Prop :=
  ∀ n, P4085175364553560520.a n = A038475 (n + 1)

theorem P4085175364553560520.correct : P4085175364553560520.Spec := by
  intro n
  simp only [A038475, Nat.add_sub_cancel, A038475.P4085175364553560520.f1, A038475.P4085175364553560520.f2, A038475.P4085175364553560520.a, A038475.P12245144297015689144.f1, A038475.P12245144297015689144.f2, A038475.P12245144297015689144.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, A033042, A033042.P13736658482566093996.a, A097251, A097251.P16104403383729787303.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038475

/-! ## A038475.P6771254579959569593

`∩[A227062(n+1)-2, A033042(n)]`
-/

namespace A038475.P6771254579959569593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227062 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038475.P6771254579959569593

namespace A038475

/-- `∩[A227062(n+1)-2, A033042(n)]` -/
def P6771254579959569593.Spec : Prop :=
  ∀ n, (P6771254579959569593.a n : ℤ) = A038475 (n + 1)

end A038475

/-! ## A038475.P13795850329010031993

`A033042(eq[3, n-A005187(n)+n])`
-/

namespace A038475.P13795850329010031993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005187 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038475.P13795850329010031993

namespace A038475

/-- `A033042(eq[3, n-A005187(n)+n])` -/
def P13795850329010031993.Spec : Prop :=
  ∀ n, P13795850329010031993.a n = A038475 (n + 1)

theorem P13795850329010031993.correct : P13795850329010031993.Spec := by
  intro n
  simp only [A038475, Nat.add_sub_cancel, A038475.P13795850329010031993.f1, A038475.P13795850329010031993.f2, A038475.P13795850329010031993.a, A038475.P12245144297015689144.f1, A038475.P12245144297015689144.f2, A038475.P12245144297015689144.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, A033042, A033042.P13736658482566093996.a, A097251, A097251.P16104403383729787303.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038475

/-! ## A038475.P16402743593753396975

`∩[A102861(n+1)-1, A033042(n)]`
-/

namespace A038475.P16402743593753396975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102861 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038475.P16402743593753396975

namespace A038475

/-- `∩[A102861(n+1)-1, A033042(n)]` -/
def P16402743593753396975.Spec : Prop :=
  ∀ n, (P16402743593753396975.a n : ℤ) = A038475 (n + 1)

end A038475

/-! ## A038475.P15637250532387480523

`A033042(eq[2, A238015(2*n+1)])`
-/

namespace A038475.P15637250532387480523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238015 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038475.P15637250532387480523

namespace A038475

/-- `A033042(eq[2, A238015(2*n+1)])` -/
def P15637250532387480523.Spec : Prop :=
  ∀ n, P15637250532387480523.a n = A038475 (n + 1)

end A038475

/-!
# A038476: Sums of 4 distinct powers of 5.

The programs for A038476, the canonical program `A038476.P11127564204272978602` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038476 has offset 1).

The definition of A038476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038476.P5391202339194055704

`A033042(A014312(1+n))`
-/

namespace A038476.P5391202339194055704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (A014312 (1 + n)).toNat

end

end A038476.P5391202339194055704

namespace A038476

/-- `A033042(A014312(1+n))` -/
def P5391202339194055704.Spec : Prop :=
  ∀ n, P5391202339194055704.a n = A038476 (n + 1)

end A038476

/-! ## A038476.P11127564204272978602

`A033042(eq[4, A000120(n)])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038476

/-- `A033042(eq[4, A000120(n)])` -/
def P11127564204272978602.Spec : Prop :=
  ∀ n, P11127564204272978602.a n = A038476 (n + 1)

theorem P11127564204272978602.correct : P11127564204272978602.Spec := by
  intro n
  simp only [A038476, Nat.add_sub_cancel]

end A038476

/-! ## A038476.P18261342929212800214

`A033042(eq[15, A038573(n)])`
-/

namespace A038476.P18261342929212800214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038476.P18261342929212800214

namespace A038476

/-- `A033042(eq[15, A038573(n)])` -/
def P18261342929212800214.Spec : Prop :=
  ∀ n, P18261342929212800214.a n = A038476 (n + 1)

end A038476

/-! ## A038476.P4198619513693704750

`A033042(eq[16, A001316(n)])`
-/

namespace A038476.P4198619513693704750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038476.P4198619513693704750

namespace A038476

/-- `A033042(eq[16, A001316(n)])` -/
def P4198619513693704750.Spec : Prop :=
  ∀ n, P4198619513693704750.a n = A038476 (n + 1)

end A038476

/-! ## A038476.P979641625655313078

`A033042(eq[81, A048883(n)])`
-/

namespace A038476.P979641625655313078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  81

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038476.P979641625655313078

namespace A038476

/-- `A033042(eq[81, A048883(n)])` -/
def P979641625655313078.Spec : Prop :=
  ∀ n, P979641625655313078.a n = A038476 (n + 1)

end A038476

/-! ## A038476.P16808791716818780373

`∩[A227062(n+1)-1, A033042(n)]`
-/

namespace A038476.P16808791716818780373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227062 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038476.P16808791716818780373

namespace A038476

/-- `∩[A227062(n+1)-1, A033042(n)]` -/
def P16808791716818780373.Spec : Prop :=
  ∀ n, (P16808791716818780373.a n : ℤ) = A038476 (n + 1)

end A038476

/-! ## A038476.P8694810391680891072

`A033042(eq[2, A238015(n)])`
-/

namespace A038476.P8694810391680891072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038476.P8694810391680891072

namespace A038476

/-- `A033042(eq[2, A238015(n)])` -/
def P8694810391680891072.Spec : Prop :=
  ∀ n, P8694810391680891072.a n = A038476 (n + 1)

end A038476

/-! ## A038476.P4536573173731024267

`∩[A102861(n+1), A033042(n)]`
-/

namespace A038476.P4536573173731024267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038476.P4536573173731024267

namespace A038476

/-- `∩[A102861(n+1), A033042(n)]` -/
def P4536573173731024267.Spec : Prop :=
  ∀ n, (P4536573173731024267.a n : ℤ) = A038476 (n + 1)

end A038476

/-! ## A038476.P3446446735426859926

`A037453(A038466(n+1))`
-/

namespace A038476.P3446446735426859926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (A038466 (n + 1)).toNat

end

end A038476.P3446446735426859926

namespace A038476

/-- `A037453(A038466(n+1))` -/
def P3446446735426859926.Spec : Prop :=
  ∀ n, P3446446735426859926.a n = A038476 (n + 1)

end A038476

/-! ## A038476.P9119077120225249947

`∩[A043356(n+1), A033042(n)]`
-/

namespace A038476.P9119077120225249947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038476.P9119077120225249947

namespace A038476

/-- `∩[A043356(n+1), A033042(n)]` -/
def P9119077120225249947.Spec : Prop :=
  ∀ n, (P9119077120225249947.a n : ℤ) = A038476 (n + 1)

end A038476

/-!
# A038477: Sums of 5 distinct powers of 5.

The programs for A038477, the canonical program `A038477.P12275341054472483545` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038477 has offset 1).

The definition of A038477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1613 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038477.P11853890613123713316

`A033042(A014313(1+n))`
-/

namespace A038477.P11853890613123713316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (A014313 (1 + n)).toNat

end

end A038477.P11853890613123713316

namespace A038477

/-- `A033042(A014313(1+n))` -/
def P11853890613123713316.Spec : Prop :=
  ∀ n, P11853890613123713316.a n = A038477 (n + 1)

end A038477

/-! ## A038477.P12275341054472483545

`A033042(eq[5, A000120(n)])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038477

/-- `A033042(eq[5, A000120(n)])` -/
def P12275341054472483545.Spec : Prop :=
  ∀ n, P12275341054472483545.a n = A038477 (n + 1)

theorem P12275341054472483545.correct : P12275341054472483545.Spec := by
  intro n
  simp only [A038477, Nat.add_sub_cancel]

end A038477

/-! ## A038477.P14563635985925764344

`A033042(eq[31, A038573(n)])`
-/

namespace A038477.P14563635985925764344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038477.P14563635985925764344

namespace A038477

/-- `A033042(eq[31, A038573(n)])` -/
def P14563635985925764344.Spec : Prop :=
  ∀ n, P14563635985925764344.a n = A038477 (n + 1)

end A038477

/-! ## A038477.P3381620154539412419

`A033042(eq[32, A001316(n)])`
-/

namespace A038477.P3381620154539412419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038477.P3381620154539412419

namespace A038477

/-- `A033042(eq[32, A001316(n)])` -/
def P3381620154539412419.Spec : Prop :=
  ∀ n, P3381620154539412419.a n = A038477 (n + 1)

end A038477

/-! ## A038477.P11262724172592103430

`∩[A227062(n+1), A033042(n)]`
-/

namespace A038477.P11262724172592103430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038477.P11262724172592103430

namespace A038477

/-- `∩[A227062(n+1), A033042(n)]` -/
def P11262724172592103430.Spec : Prop :=
  ∀ n, (P11262724172592103430.a n : ℤ) = A038477 (n + 1)

end A038477

/-! ## A038477.P10214384419876909804

`A033042(eq[5, 2*n-A005187(n)])`
-/

namespace A038477.P10214384419876909804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038477.P10214384419876909804

namespace A038477

/-- `A033042(eq[5, 2*n-A005187(n)])` -/
def P10214384419876909804.Spec : Prop :=
  ∀ n, P10214384419876909804.a n = A038477 (n + 1)

theorem P10214384419876909804.correct : P10214384419876909804.Spec := by
  intro n
  simp only [A038477, Nat.add_sub_cancel, A038477.P10214384419876909804.f1, A038477.P10214384419876909804.f2, A038477.P10214384419876909804.a, A038477.P12275341054472483545.f1, A038477.P12275341054472483545.f2, A038477.P12275341054472483545.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, A033042, A033042.P13736658482566093996.a, A097251, A097251.P16104403383729787303.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038477

/-! ## A038477.P17078837977707558207

`A033042(eq[5, n-A005187(n)+n])`
-/

namespace A038477.P17078837977707558207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005187 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038477.P17078837977707558207

namespace A038477

/-- `A033042(eq[5, n-A005187(n)+n])` -/
def P17078837977707558207.Spec : Prop :=
  ∀ n, P17078837977707558207.a n = A038477 (n + 1)

theorem P17078837977707558207.correct : P17078837977707558207.Spec := by
  intro n
  simp only [A038477, Nat.add_sub_cancel, A038477.P17078837977707558207.f1, A038477.P17078837977707558207.f2, A038477.P17078837977707558207.a, A038477.P12275341054472483545.f1, A038477.P12275341054472483545.f2, A038477.P12275341054472483545.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, A033042, A033042.P13736658482566093996.a, A097251, A097251.P16104403383729787303.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038477

/-! ## A038477.P9682762662204000589

`A033042(eq[4, A238015(n)])`
-/

namespace A038477.P9682762662204000589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038477.P9682762662204000589

namespace A038477

/-- `A033042(eq[4, A238015(n)])` -/
def P9682762662204000589.Spec : Prop :=
  ∀ n, P9682762662204000589.a n = A038477 (n + 1)

end A038477

/-! ## A038477.P8733535689255164350

`A037453(A038467(n+1))`
-/

namespace A038477.P8733535689255164350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (A038467 (n + 1)).toNat

end

end A038477.P8733535689255164350

namespace A038477

/-- `A037453(A038467(n+1))` -/
def P8733535689255164350.Spec : Prop :=
  ∀ n, P8733535689255164350.a n = A038477 (n + 1)

end A038477

/-! ## A038477.P1455453448700612069

`∩[A043356(n+1)+1, A033042(n)]`
-/

namespace A038477.P1455453448700612069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043356 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038477.P1455453448700612069

namespace A038477

/-- `∩[A043356(n+1)+1, A033042(n)]` -/
def P1455453448700612069.Spec : Prop :=
  ∀ n, (P1455453448700612069.a n : ℤ) = A038477 (n + 1)

end A038477

/-!
# A038478: Sums of 2 distinct powers of 6.

The programs for A038478, the canonical program `A038478.P5269595336763267754` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038478 has offset 1).

The definition of A038478 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038478.P5269595336763267754

`6^(row(n)+1)+6^col(n)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A038478

/-- `6^(row(n)+1)+6^col(n)` -/
def P5269595336763267754.Spec : Prop :=
  ∀ n, (P5269595336763267754.a n : ℤ) = A038478 (n + 1)

theorem P5269595336763267754.correct : P5269595336763267754.Spec := by
  intro n
  simp only [A038478, Nat.add_sub_cancel]

end A038478

/-! ## A038478.P16601029687543317134

`A055257(comp[∑[n-1]])`
-/

namespace A038478.P16601029687543317134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055257 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A038478.P16601029687543317134

namespace A038478

/-- `A055257(comp[∑[n-1]])` -/
def P16601029687543317134.Spec : Prop :=
  ∀ n, P16601029687543317134.a n = A038478 (n + 1)

end A038478

/-! ## A038478.P5614747387939218911

`A033043(A018900(n+1))`
-/

namespace A038478.P5614747387939218911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (A018900 (n + 1)).toNat

end

end A038478.P5614747387939218911

namespace A038478

/-- `A033043(A018900(n+1))` -/
def P5614747387939218911.Spec : Prop :=
  ∀ n, P5614747387939218911.a n = A038478 (n + 1)

end A038478

/-! ## A038478.P1311682085520603820

`A033043(eq[2, A000120(n)])`
-/

namespace A038478.P1311682085520603820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038478.P1311682085520603820

namespace A038478

/-- `A033043(eq[2, A000120(n)])` -/
def P1311682085520603820.Spec : Prop :=
  ∀ n, P1311682085520603820.a n = A038478 (n + 1)

end A038478

/-! ## A038478.P2573521331549387926

`A033043(eq[2, A050315(n)])`
-/

namespace A038478.P2573521331549387926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038478.P2573521331549387926

namespace A038478

/-- `A033043(eq[2, A050315(n)])` -/
def P2573521331549387926.Spec : Prop :=
  ∀ n, P2573521331549387926.a n = A038478 (n + 1)

end A038478

/-! ## A038478.P2749957518866861446

`∩[A033043(n), A055257(n)]`
-/

namespace A038478.P2749957518866861446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055257 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038478.P2749957518866861446

namespace A038478

/-- `∩[A033043(n), A055257(n)]` -/
def P2749957518866861446.Spec : Prop :=
  ∀ n, (P2749957518866861446.a n : ℤ) = A038478 (n + 1)

end A038478

/-! ## A038478.P9801153203054719674

`∩[A037411(n+1), A055257(n)]`
-/

namespace A038478.P9801153203054719674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055257 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038478.P9801153203054719674

namespace A038478

/-- `∩[A037411(n+1), A055257(n)]` -/
def P9801153203054719674.Spec : Prop :=
  ∀ n, (P9801153203054719674.a n : ℤ) = A038478 (n + 1)

end A038478

/-!
# A038479: Sums of 3 distinct powers of 6.

The programs for A038479, there is no canonical definition to state claims against.
-/

/-! ## A038479.P14956362332855092437

`A033043(A014311(1+n))`
-/

namespace A038479.P14956362332855092437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (A014311 (1 + n)).toNat

end

end A038479.P14956362332855092437

/-! ## A038479.P11762075484905837331

`A033043(eq[3, A000120(n)])`
-/

namespace A038479.P11762075484905837331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038479.P11762075484905837331

/-! ## A038479.P2178314948525505681

`A033043(eq[5, A050315(n)])`
-/

namespace A038479.P2178314948525505681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038479.P2178314948525505681

/-! ## A038479.P2452846552656510095

`A033043(eq[7, A038573(n)])`
-/

namespace A038479.P2452846552656510095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038479.P2452846552656510095

/-! ## A038479.P15308249546985627364

`A033043(eq[8, A001316(n)])`
-/

namespace A038479.P15308249546985627364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038479.P15308249546985627364

/-! ## A038479.P8193921257868415068

`A033043(eq[64, A102376(n)])`
-/

namespace A038479.P8193921257868415068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038479.P8193921257868415068

/-! ## A038479.P16107233586589395256

`A037454(A038465(n+1))`
-/

namespace A038479.P16107233586589395256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 (A038465 (n + 1)).toNat

end

end A038479.P16107233586589395256

/-!
# A038480: Sums of 4 distinct powers of 6.

The programs for A038480, there is no canonical definition to state claims against.
-/

/-! ## A038480.P1382107379158841726

`A033043(A014312(1+n))`
-/

namespace A038480.P1382107379158841726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (A014312 (1 + n)).toNat

end

end A038480.P1382107379158841726

/-! ## A038480.P18106587980705185554

`A033043(eq[4, A000120(n)])`
-/

namespace A038480.P18106587980705185554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038480.P18106587980705185554

/-! ## A038480.P1079234112023583733

`A033043(eq[15, A038573(n)])`
-/

namespace A038480.P1079234112023583733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038480.P1079234112023583733

/-! ## A038480.P17255807551140497154

`A033043(eq[15, A050315(n)])`
-/

namespace A038480.P17255807551140497154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038480.P17255807551140497154

/-! ## A038480.P14102622723344312765

`A033043(eq[16, A001316(n)])`
-/

namespace A038480.P14102622723344312765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038480.P14102622723344312765

/-! ## A038480.P17287506664890010170

`A037454(A038466(n+1))`
-/

namespace A038480.P17287506664890010170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 (A038466 (n + 1)).toNat

end

end A038480.P17287506664890010170

/-! ## A038480.P7218091091606758414

`∩[A043376(n+1), A033043(n)]`
-/

namespace A038480.P7218091091606758414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038480.P7218091091606758414

/-!
# A038481: Sums of 2 distinct powers of 7.

The programs for A038481, the canonical program `A038481.P5303282366633585526` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038481 has offset 0).

The definition of A038481 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7021 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038481.P16323838397280751731

`7^(row(n)+1)+7^col(n)`
-/

namespace A038481.P16323838397280751731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ (SequenceMachineLib.triRow n + 1) + 7 ^ SequenceMachineLib.triCol n

end

end A038481.P16323838397280751731

namespace A038481

/-- `7^(row(n)+1)+7^col(n)` -/
def P16323838397280751731.Spec : Prop :=
  ∀ n, (P16323838397280751731.a n : ℤ) = A038481 n

end A038481

/-! ## A038481.P7896591597709899487

`A055258(comp[∑[n-1]])`
-/

namespace A038481.P7896591597709899487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055258 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A038481.P7896591597709899487

namespace A038481

/-- `A055258(comp[∑[n-1]])` -/
def P7896591597709899487.Spec : Prop :=
  ∀ n, P7896591597709899487.a n = A038481 n

end A038481

/-! ## A038481.P5303282366633585526

`2*A073218(A007401(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038481

/-- `2*A073218(A007401(n+1))` -/
def P5303282366633585526.Spec : Prop :=
  ∀ n, P5303282366633585526.a n = A038481 n

theorem P5303282366633585526.correct : P5303282366633585526.Spec := by
  intro n
  simp only [A038481]

end A038481

/-! ## A038481.P13738795224693374157

`and(-2, A055258(eq[0, A130123(n)]))`
-/

namespace A038481.P13738795224693374157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A055258 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n))

end

end A038481.P13738795224693374157

namespace A038481

/-- `and(-2, A055258(eq[0, A130123(n)]))` -/
def P13738795224693374157.Spec : Prop :=
  ∀ n, P13738795224693374157.a n = A038481 n

end A038481

/-! ## A038481.P2166311469930416763

`A055258(eq[0, A130123(n)])+A000007(n+1)`
-/

namespace A038481.P2166311469930416763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055258 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A000007 (n + 1)

end

end A038481.P2166311469930416763

namespace A038481

/-- `A055258(eq[0, A130123(n)])+A000007(n+1)` -/
def P2166311469930416763.Spec : Prop :=
  ∀ n, P2166311469930416763.a n = A038481 n

end A038481

/-! ## A038481.P13485918399994370141

`A055258(eq[0, A130123(n)])+A000038(n+1)`
-/

namespace A038481.P13485918399994370141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055258 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A000038 (n + 1)

end

end A038481.P13485918399994370141

namespace A038481

/-- `A055258(eq[0, A130123(n)])+A000038(n+1)` -/
def P13485918399994370141.Spec : Prop :=
  ∀ n, P13485918399994370141.a n = A038481 n

end A038481

/-! ## A038481.P15595017931695723481

`A071936(n+1)²*A055258(eq[0, A130123(n)])`
-/

namespace A038481.P15595017931695723481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071936 (n + 1) ^ 2 * A055258 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038481.P15595017931695723481

namespace A038481

/-- `A071936(n+1)²*A055258(eq[0, A130123(n)])` -/
def P15595017931695723481.Spec : Prop :=
  ∀ n, P15595017931695723481.a n = A038481 n

end A038481

/-! ## A038481.P5283040913604420869

`A001221(A233518(n+1))*A055258(A007401(n+1))`
-/

namespace A038481.P5283040913604420869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A233518 (n + 1)).toNat * A055258 (A007401 (n + 1)).toNat

end

end A038481.P5283040913604420869

namespace A038481

/-- `A001221(A233518(n+1))*A055258(A007401(n+1))` -/
def P5283040913604420869.Spec : Prop :=
  ∀ n, P5283040913604420869.a n = A038481 n

end A038481

/-! ## A038481.P2506010662206034936

`A055258(A007401(n+1))*A309873(A338018(n+1))`
-/

namespace A038481.P2506010662206034936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055258 (A007401 (n + 1)).toNat * A309873 (A338018 (n + 1)).toNat

end

end A038481.P2506010662206034936

namespace A038481

/-- `A055258(A007401(n+1))*A309873(A338018(n+1))` -/
def P2506010662206034936.Spec : Prop :=
  ∀ n, P2506010662206034936.a n = A038481 n

end A038481

/-! ## A038481.P1036049064774407812

`A047999(A000217(n))*A055258(A007401(n+1))`
-/

namespace A038481.P1036049064774407812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (A000217 n).toNat * A055258 (A007401 (n + 1)).toNat

end

end A038481.P1036049064774407812

namespace A038481

/-- `A047999(A000217(n))*A055258(A007401(n+1))` -/
def P1036049064774407812.Spec : Prop :=
  ∀ n, P1036049064774407812.a n = A038481 n

end A038481

/-!
# A038482: Sums of 3 distinct powers of 7.

The programs for A038482, the canonical program `A038482.P3656652885610430883` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038482 has offset 1).

The definition of A038482 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038482.P10355400549018096806

`A033044(eq[16, A131136(n)])`
-/

namespace A038482.P10355400549018096806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038482.P10355400549018096806

namespace A038482

/-- `A033044(eq[16, A131136(n)])` -/
def P10355400549018096806.Spec : Prop :=
  ∀ n, P10355400549018096806.a n = A038482 (n + 1)

end A038482

/-! ## A038482.P729540993981304399

`A033044(A014311(n+1)+1)`
-/

namespace A038482.P729540993981304399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (A014311 (n + 1) + 1).toNat

end

end A038482.P729540993981304399

namespace A038482

/-- `A033044(A014311(n+1)+1)` -/
def P729540993981304399.Spec : Prop :=
  ∀ n, P729540993981304399.a n = A038482 (n + 1)

end A038482

/-! ## A038482.P3656652885610430883

`A033044(eq[4, A048896(n)]+2)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A038482

/-- `A033044(eq[4, A048896(n)]+2)` -/
def P3656652885610430883.Spec : Prop :=
  ∀ n, P3656652885610430883.a n = A038482 (n + 1)

theorem P3656652885610430883.correct : P3656652885610430883.Spec := by
  intro n
  simp only [A038482, Nat.add_sub_cancel]

end A038482

/-! ## A038482.P17329829352122146143

`A037455(A038465(n+1))`
-/

namespace A038482.P17329829352122146143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037455 (A038465 (n + 1)).toNat

end

end A038482.P17329829352122146143

namespace A038482

/-- `A037455(A038465(n+1))` -/
def P17329829352122146143.Spec : Prop :=
  ∀ n, P17329829352122146143.a n = A038482 (n + 1)

end A038482

/-! ## A038482.P3198280624948555583

`A037461(A038471(n+1))`
-/

namespace A038482.P3198280624948555583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037461 (A038471 (n + 1)).toNat

end

end A038482.P3198280624948555583

namespace A038482

/-- `A037461(A038471(n+1))` -/
def P3198280624948555583.Spec : Prop :=
  ∀ n, P3198280624948555583.a n = A038482 (n + 1)

end A038482

/-!
# A038483: Sums of 4 distinct powers of 7.

The programs for A038483, the canonical program `A038483.P11163427702840003378` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038483 has offset 1).

The definition of A038483 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038483.P11163427702840003378

`A033044(eq[32, A131136(n)])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038483

/-- `A033044(eq[32, A131136(n)])` -/
def P11163427702840003378.Spec : Prop :=
  ∀ n, P11163427702840003378.a n = A038483 (n + 1)

theorem P11163427702840003378.correct : P11163427702840003378.Spec := by
  intro n
  simp only [A038483, Nat.add_sub_cancel]

end A038483

/-! ## A038483.P13249267084901247081

`A033044(A014312(1+n)+1)`
-/

namespace A038483.P13249267084901247081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (A014312 (1 + n) + 1).toNat

end

end A038483.P13249267084901247081

namespace A038483

/-- `A033044(A014312(1+n)+1)` -/
def P13249267084901247081.Spec : Prop :=
  ∀ n, P13249267084901247081.a n = A038483 (n + 1)

end A038483

/-! ## A038483.P8956061649260042052

`A033044(eq[8, A048896(n)]+2)`
-/

namespace A038483.P8956061649260042052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A038483.P8956061649260042052

namespace A038483

/-- `A033044(eq[8, A048896(n)]+2)` -/
def P8956061649260042052.Spec : Prop :=
  ∀ n, P8956061649260042052.a n = A038483 (n + 1)

end A038483

/-! ## A038483.P6063139634070894818

`A037455(A038466(1+n))`
-/

namespace A038483.P6063139634070894818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037455 (A038466 (1 + n)).toNat

end

end A038483.P6063139634070894818

namespace A038483

/-- `A037455(A038466(1+n))` -/
def P6063139634070894818.Spec : Prop :=
  ∀ n, P6063139634070894818.a n = A038483 (n + 1)

end A038483

/-! ## A038483.P14011215473716314688

`A037455(eq[16, A006047(n)])`
-/

namespace A038483.P14011215473716314688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037455 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038483.P14011215473716314688

namespace A038483

/-- `A037455(eq[16, A006047(n)])` -/
def P14011215473716314688.Spec : Prop :=
  ∀ n, P14011215473716314688.a n = A038483 (n + 1)

end A038483

/-! ## A038483.P1057301807492398947

`∩[A033044(n+1), A043400(n+1)]`
-/

namespace A038483.P1057301807492398947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038483.P1057301807492398947

namespace A038483

/-- `∩[A033044(n+1), A043400(n+1)]` -/
def P1057301807492398947.Spec : Prop :=
  ∀ n, (P1057301807492398947.a n : ℤ) = A038483 (n + 1)

end A038483

/-!
# A038484: Sums of 2 distinct powers of 8.

The programs for A038484, the canonical program `A038484.P6906631840336279565` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038484 has offset 1).

The definition of A038484 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038484.P6906631840336279565

`8^(row(n)+1)+8^col(n)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A038484

/-- `8^(row(n)+1)+8^col(n)` -/
def P6906631840336279565.Spec : Prop :=
  ∀ n, (P6906631840336279565.a n : ℤ) = A038484 (n + 1)

theorem P6906631840336279565.correct : P6906631840336279565.Spec := by
  intro n
  simp only [A038484, Nat.add_sub_cancel]

end A038484

/-! ## A038484.P11411118123046110084

`8^col(n)+8^(comp[∑[n-1]]-n)`
-/

namespace A038484.P11411118123046110084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 ^ SequenceMachineLib.triCol n : ℚ) + (8 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) : ℤ)

end

end A038484.P11411118123046110084

namespace A038484

/-- `8^col(n)+8^(comp[∑[n-1]]-n)` -/
def P11411118123046110084.Spec : Prop :=
  ∀ n, P11411118123046110084.a n = (A038484 (n + 1) : ℚ)

end A038484

/-! ## A038484.P14365740267982898022

`A055259(∑[char[∑[n]]]+n)`
-/

namespace A038484.P14365740267982898022
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055259 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A038484.P14365740267982898022

namespace A038484

/-- `A055259(∑[char[∑[n]]]+n)` -/
def P14365740267982898022.Spec : Prop :=
  ∀ n, P14365740267982898022.a n = A038484 (n + 1)

end A038484

/-! ## A038484.P6953813440277325967

`∩[A136318(n+1), A055259(n)]`
-/

namespace A038484.P6953813440277325967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055259 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038484.P6953813440277325967

namespace A038484

/-- `∩[A136318(n+1), A055259(n)]` -/
def P6953813440277325967.Spec : Prop :=
  ∀ n, (P6953813440277325967.a n : ℤ) = A038484 (n + 1)

end A038484

/-! ## A038484.P14097559264726092554

`∩[A018900(n+1), A055259(n)]`
-/

namespace A038484.P14097559264726092554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055259 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038484.P14097559264726092554

namespace A038484

/-- `∩[A018900(n+1), A055259(n)]` -/
def P14097559264726092554.Spec : Prop :=
  ∀ n, (P14097559264726092554.a n : ℤ) = A038484 (n + 1)

end A038484

/-! ## A038484.P11718992875803274294

`∩[A212191(n+1), A055259(n)]`
-/

namespace A038484.P11718992875803274294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055259 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038484.P11718992875803274294

namespace A038484

/-- `∩[A212191(n+1), A055259(n)]` -/
def P11718992875803274294.Spec : Prop :=
  ∀ n, (P11718992875803274294.a n : ℤ) = A038484 (n + 1)

end A038484

/-! ## A038484.P16412131569750161551

`A033045(A018900(n+1))`
-/

namespace A038484.P16412131569750161551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (A018900 (n + 1)).toNat

end

end A038484.P16412131569750161551

namespace A038484

/-- `A033045(A018900(n+1))` -/
def P16412131569750161551.Spec : Prop :=
  ∀ n, P16412131569750161551.a n = A038484 (n + 1)

end A038484

/-! ## A038484.P9285575412464162546

`∩[A033045(n), A055259(n)]`
-/

namespace A038484.P9285575412464162546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055259 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038484.P9285575412464162546

namespace A038484

/-- `∩[A033045(n), A055259(n)]` -/
def P9285575412464162546.Spec : Prop :=
  ∀ n, (P9285575412464162546.a n : ℤ) = A038484 (n + 1)

end A038484

/-! ## A038484.P337042260692869650

`∩[A033045(n), A131095(n+1)]`
-/

namespace A038484.P337042260692869650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038484.P337042260692869650

namespace A038484

/-- `∩[A033045(n), A131095(n+1)]` -/
def P337042260692869650.Spec : Prop :=
  ∀ n, (P337042260692869650.a n : ℤ) = A038484 (n + 1)

end A038484

/-! ## A038484.P9931110597794663099

`∩[A033045(n), A136318(n+1)]`
-/

namespace A038484.P9931110597794663099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038484.P9931110597794663099

namespace A038484

/-- `∩[A033045(n), A136318(n+1)]` -/
def P9931110597794663099.Spec : Prop :=
  ∀ n, (P9931110597794663099.a n : ℤ) = A038484 (n + 1)

end A038484

/-!
# A038485: Sums of 3 distinct powers of 8.

The programs for A038485, the canonical program `A038485.P16633331726669583067` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038485 has offset 1).

The definition of A038485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038485.P4296765216447437596

`A033045(A014311(n+1))`
-/

namespace A038485.P4296765216447437596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (A014311 (n + 1)).toNat

end

end A038485.P4296765216447437596

namespace A038485

/-- `A033045(A014311(n+1))` -/
def P4296765216447437596.Spec : Prop :=
  ∀ n, P4296765216447437596.a n = A038485 (n + 1)

end A038485

/-! ## A038485.P16633331726669583067

`A033045(eq[3, A000120(n)])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038485

/-- `A033045(eq[3, A000120(n)])` -/
def P16633331726669583067.Spec : Prop :=
  ∀ n, P16633331726669583067.a n = A038485 (n + 1)

theorem P16633331726669583067.correct : P16633331726669583067.Spec := by
  intro n
  simp only [A038485, Nat.add_sub_cancel]

end A038485

/-! ## A038485.P1021308907261013998

`A033045(eq[5, A050315(n)])`
-/

namespace A038485.P1021308907261013998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038485.P1021308907261013998

namespace A038485

/-- `A033045(eq[5, A050315(n)])` -/
def P1021308907261013998.Spec : Prop :=
  ∀ n, P1021308907261013998.a n = A038485 (n + 1)

end A038485

/-! ## A038485.P4993487018351124926

`A033045(eq[7, A038573(n)])`
-/

namespace A038485.P4993487018351124926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038485.P4993487018351124926

namespace A038485

/-- `A033045(eq[7, A038573(n)])` -/
def P4993487018351124926.Spec : Prop :=
  ∀ n, P4993487018351124926.a n = A038485 (n + 1)

end A038485

/-! ## A038485.P16297034525268479634

`A033045(eq[8, A001316(n)])`
-/

namespace A038485.P16297034525268479634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038485.P16297034525268479634

namespace A038485

/-- `A033045(eq[8, A001316(n)])` -/
def P16297034525268479634.Spec : Prop :=
  ∀ n, P16297034525268479634.a n = A038485 (n + 1)

end A038485

/-! ## A038485.P1365807938383170946

`A033045(eq[n+3, A092391(n)])`
-/

namespace A038485.P1365807938383170946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038485.P1365807938383170946

namespace A038485

/-- `A033045(eq[n+3, A092391(n)])` -/
def P1365807938383170946.Spec : Prop :=
  ∀ n, P1365807938383170946.a n = A038485 (n + 1)

end A038485

/-! ## A038485.P15254567433463198414

`∩[A173589(n+1), A033045(n)]`
-/

namespace A038485.P15254567433463198414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038485.P15254567433463198414

namespace A038485

/-- `∩[A173589(n+1), A033045(n)]` -/
def P15254567433463198414.Spec : Prop :=
  ∀ n, (P15254567433463198414.a n : ℤ) = A038485 (n + 1)

end A038485

/-! ## A038485.P10920836106465341235

`A037456(A038465(n+1))`
-/

namespace A038485.P10920836106465341235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037456 (A038465 (n + 1)).toNat

end

end A038485.P10920836106465341235

namespace A038485

/-- `A037456(A038465(n+1))` -/
def P10920836106465341235.Spec : Prop :=
  ∀ n, P10920836106465341235.a n = A038485 (n + 1)

end A038485

/-!
# A038486: Sums of 4 distinct powers of 8.

The programs for A038486, the canonical program `A038486.P3069835024340169564` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038486 has offset 1).

The definition of A038486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038486.P3069835024340169564

`A033045(A014312(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A038486

/-- `A033045(A014312(n+1))` -/
def P3069835024340169564.Spec : Prop :=
  ∀ n, P3069835024340169564.a n = A038486 (n + 1)

theorem P3069835024340169564.correct : P3069835024340169564.Spec := by
  intro n
  simp only [A038486, Nat.add_sub_cancel]

end A038486

/-! ## A038486.P4597494463663844880

`A033045(eq[4, A000120(n)])`
-/

namespace A038486.P4597494463663844880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038486.P4597494463663844880

namespace A038486

/-- `A033045(eq[4, A000120(n)])` -/
def P4597494463663844880.Spec : Prop :=
  ∀ n, P4597494463663844880.a n = A038486 (n + 1)

end A038486

/-! ## A038486.P3937487691334189559

`A033045(eq[15, A038573(n)])`
-/

namespace A038486.P3937487691334189559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038486.P3937487691334189559

namespace A038486

/-- `A033045(eq[15, A038573(n)])` -/
def P3937487691334189559.Spec : Prop :=
  ∀ n, P3937487691334189559.a n = A038486 (n + 1)

end A038486

/-! ## A038486.P326527633962723831

`A033045(eq[15, A050315(n)])`
-/

namespace A038486.P326527633962723831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038486.P326527633962723831

namespace A038486

/-- `A033045(eq[15, A050315(n)])` -/
def P326527633962723831.Spec : Prop :=
  ∀ n, P326527633962723831.a n = A038486 (n + 1)

end A038486

/-! ## A038486.P1484600992773841616

`A033045(eq[16, A001316(n)])`
-/

namespace A038486.P1484600992773841616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038486.P1484600992773841616

namespace A038486

/-- `A033045(eq[16, A001316(n)])` -/
def P1484600992773841616.Spec : Prop :=
  ∀ n, P1484600992773841616.a n = A038486 (n + 1)

end A038486

/-! ## A038486.P15412229948860086269

`A037456(A038466(n+1))`
-/

namespace A038486.P15412229948860086269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037456 (A038466 (n + 1)).toNat

end

end A038486.P15412229948860086269

namespace A038486

/-- `A037456(A038466(n+1))` -/
def P15412229948860086269.Spec : Prop :=
  ∀ n, P15412229948860086269.a n = A038486 (n + 1)

end A038486

/-!
# A038487: Sums of two distinct powers of 9.

The programs for A038487, the canonical program `A038487.P7367698157938051377` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038487 has offset 1).

The definition of A038487 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038487.P7367698157938051377

`9^A002024(n+1)+9^A002262(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038487

/-- `9^A002024(n+1)+9^A002262(n)` -/
def P7367698157938051377.Spec : Prop :=
  ∀ n, P7367698157938051377.a n = (A038487 (n + 1) : ℚ)

end A038487

/-! ## A038487.P750252482725858762

`9^(row(n)+1)+9^col(n)`
-/

namespace A038487.P750252482725858762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ (SequenceMachineLib.triRow n + 1) + 9 ^ SequenceMachineLib.triCol n

end

end A038487.P750252482725858762

namespace A038487

/-- `9^(row(n)+1)+9^col(n)` -/
def P750252482725858762.Spec : Prop :=
  ∀ n, (P750252482725858762.a n : ℤ) = A038487 (n + 1)

end A038487

/-! ## A038487.P11221797453348243359

`A055260(comp[∑[n-1]])`
-/

namespace A038487.P11221797453348243359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055260 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A038487.P11221797453348243359

namespace A038487

/-- `A055260(comp[∑[n-1]])` -/
def P11221797453348243359.Spec : Prop :=
  ∀ n, P11221797453348243359.a n = A038487 (n + 1)

end A038487

/-! ## A038487.P9647602398002452140

`lcm(2, A055260(A007401(n+1)))`
-/

namespace A038487.P9647602398002452140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A055260 (A007401 (n + 1)).toNat)

end

end A038487.P9647602398002452140

namespace A038487

/-- `lcm(2, A055260(A007401(n+1)))` -/
def P9647602398002452140.Spec : Prop :=
  ∀ n, (P9647602398002452140.a n : ℤ) = A038487 (n + 1)

end A038487

/-! ## A038487.P12163561478940050111

`A038464(A185869(n+1))`
-/

namespace A038487.P12163561478940050111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038464 (A185869 (n + 1)).toNat

end

end A038487.P12163561478940050111

namespace A038487

/-- `A038464(A185869(n+1))` -/
def P12163561478940050111.Spec : Prop :=
  ∀ n, P12163561478940050111.a n = A038487 (n + 1)

end A038487

/-! ## A038487.P15671252223332142940

`∩[A038464(n+1), A055260(n)]`
-/

namespace A038487.P15671252223332142940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055260 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038487.P15671252223332142940

namespace A038487

/-- `∩[A038464(n+1), A055260(n)]` -/
def P15671252223332142940.Spec : Prop :=
  ∀ n, (P15671252223332142940.a n : ℤ) = A038487 (n + 1)

end A038487

/-! ## A038487.P9484977518940557944

`A055235(A185871(n+1)-2)`
-/

namespace A038487.P9484977518940557944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055235 (A185871 (n + 1) - 2).toNat

end

end A038487.P9484977518940557944

namespace A038487

/-- `A055235(A185871(n+1)-2)` -/
def P9484977518940557944.Spec : Prop :=
  ∀ n, P9484977518940557944.a n = A038487 (n + 1)

end A038487

/-! ## A038487.P7936437982622872794

`A033046(A018900(n+1))`
-/

namespace A038487.P7936437982622872794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 (A018900 (n + 1)).toNat

end

end A038487.P7936437982622872794

namespace A038487

/-- `A033046(A018900(n+1))` -/
def P7936437982622872794.Spec : Prop :=
  ∀ n, P7936437982622872794.a n = A038487 (n + 1)

end A038487

/-! ## A038487.P7893175137278721343

`A033046(eq[1, A088512(n)])`
-/

namespace A038487.P7893175137278721343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088512 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038487.P7893175137278721343

namespace A038487

/-- `A033046(eq[1, A088512(n)])` -/
def P7893175137278721343.Spec : Prop :=
  ∀ n, P7893175137278721343.a n = A038487 (n + 1)

end A038487

/-! ## A038487.P15245661402950577015

`A033046(eq[2, A000120(n)])`
-/

namespace A038487.P15245661402950577015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038487.P15245661402950577015

namespace A038487

/-- `A033046(eq[2, A000120(n)])` -/
def P15245661402950577015.Spec : Prop :=
  ∀ n, P15245661402950577015.a n = A038487 (n + 1)

end A038487

/-!
# A038488: Sums of 3 distinct powers of 9.

The programs for A038488, the canonical program `A038488.P10528080877943888104` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038488 has offset 1).

The definition of A038488 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038488.P10528080877943888104

`filter[A038465(n+1), val(#+1, 2)-1]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A038488

/-- `filter[A038465(n+1), val(#+1, 2)-1]` -/
def P10528080877943888104.Spec : Prop :=
  ∀ n, P10528080877943888104.a n = A038488 (n + 1)

theorem P10528080877943888104.correct : P10528080877943888104.Spec := by
  intro n
  simp only [A038488, Nat.add_sub_cancel]

end A038488

/-! ## A038488.P10300823137618326370

`A033046(A014311(1+n))`
-/

namespace A038488.P10300823137618326370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 (A014311 (1 + n)).toNat

end

end A038488.P10300823137618326370

namespace A038488

/-- `A033046(A014311(1+n))` -/
def P10300823137618326370.Spec : Prop :=
  ∀ n, P10300823137618326370.a n = A038488 (n + 1)

end A038488

/-! ## A038488.P14566569382609313930

`A033046(eq[3, A000120(n)])`
-/

namespace A038488.P14566569382609313930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038488.P14566569382609313930

namespace A038488

/-- `A033046(eq[3, A000120(n)])` -/
def P14566569382609313930.Spec : Prop :=
  ∀ n, P14566569382609313930.a n = A038488 (n + 1)

end A038488

/-! ## A038488.P15005305053505592815

`A033046(eq[3, A088512(n)])`
-/

namespace A038488.P15005305053505592815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088512 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038488.P15005305053505592815

namespace A038488

/-- `A033046(eq[3, A088512(n)])` -/
def P15005305053505592815.Spec : Prop :=
  ∀ n, P15005305053505592815.a n = A038488 (n + 1)

end A038488

/-! ## A038488.P5235433913156265433

`A033046(eq[6, A093659(n)])`
-/

namespace A038488.P5235433913156265433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038488.P5235433913156265433

namespace A038488

/-- `A033046(eq[6, A093659(n)])` -/
def P5235433913156265433.Spec : Prop :=
  ∀ n, P5235433913156265433.a n = A038488 (n + 1)

end A038488

/-! ## A038488.P6135228237464306524

`A033046(eq[7, A038573(n)])`
-/

namespace A038488.P6135228237464306524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038488.P6135228237464306524

namespace A038488

/-- `A033046(eq[7, A038573(n)])` -/
def P6135228237464306524.Spec : Prop :=
  ∀ n, P6135228237464306524.a n = A038488 (n + 1)

end A038488

/-! ## A038488.P4722116388648081232

`A033046(eq[8, A001316(n)])`
-/

namespace A038488.P4722116388648081232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038488.P4722116388648081232

namespace A038488

/-- `A033046(eq[8, A001316(n)])` -/
def P4722116388648081232.Spec : Prop :=
  ∀ n, P4722116388648081232.a n = A038488 (n + 1)

end A038488

/-! ## A038488.P10409405370998406545

`∩[A038465(n+1), A033046(n)]`
-/

namespace A038488.P10409405370998406545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038488.P10409405370998406545

namespace A038488

/-- `∩[A038465(n+1), A033046(n)]` -/
def P10409405370998406545.Spec : Prop :=
  ∀ n, (P10409405370998406545.a n : ℤ) = A038488 (n + 1)

end A038488

/-! ## A038488.P544116317314420396

`∩[A226636(n+1), A033046(n)]`
-/

namespace A038488.P544116317314420396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038488.P544116317314420396

namespace A038488

/-- `∩[A226636(n+1), A033046(n)]` -/
def P544116317314420396.Spec : Prop :=
  ∀ n, (P544116317314420396.a n : ℤ) = A038488 (n + 1)

end A038488

/-! ## A038488.P5871297362413015527

`A037314(A038465(n+1))`
-/

namespace A038488.P5871297362413015527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (A038465 (n + 1)).toNat

end

end A038488.P5871297362413015527

namespace A038488

/-- `A037314(A038465(n+1))` -/
def P5871297362413015527.Spec : Prop :=
  ∀ n, P5871297362413015527.a n = A038488 (n + 1)

end A038488

/-!
# A038489: Sums of 4 distinct powers of 9.

The programs for A038489, the canonical program `A038489.P9980985016651276539` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038489 has offset 1).

The definition of A038489 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038489.P11122052626858864465

`A033046(A014312(1+n))`
-/

namespace A038489.P11122052626858864465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 (A014312 (1 + n)).toNat

end

end A038489.P11122052626858864465

namespace A038489

/-- `A033046(A014312(1+n))` -/
def P11122052626858864465.Spec : Prop :=
  ∀ n, P11122052626858864465.a n = A038489 (n + 1)

end A038489

/-! ## A038489.P9980985016651276539

`A033046(eq[4, A000120(n)])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038489

/-- `A033046(eq[4, A000120(n)])` -/
def P9980985016651276539.Spec : Prop :=
  ∀ n, P9980985016651276539.a n = A038489 (n + 1)

theorem P9980985016651276539.correct : P9980985016651276539.Spec := by
  intro n
  simp only [A038489, Nat.add_sub_cancel]

end A038489

/-! ## A038489.P1749679036385520879

`A033046(eq[7, A088512(n)])`
-/

namespace A038489.P1749679036385520879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088512 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038489.P1749679036385520879

namespace A038489

/-- `A033046(eq[7, A088512(n)])` -/
def P1749679036385520879.Spec : Prop :=
  ∀ n, P1749679036385520879.a n = A038489 (n + 1)

end A038489

/-! ## A038489.P2388429870944414551

`A033046(eq[16, A001316(n)])`
-/

namespace A038489.P2388429870944414551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038489.P2388429870944414551

namespace A038489

/-- `A033046(eq[16, A001316(n)])` -/
def P2388429870944414551.Spec : Prop :=
  ∀ n, P2388429870944414551.a n = A038489 (n + 1)

end A038489

/-! ## A038489.P8814331476763637175

`A033046(eq[24, A093659(n)])`
-/

namespace A038489.P8814331476763637175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038489.P8814331476763637175

namespace A038489

/-- `A033046(eq[24, A093659(n)])` -/
def P8814331476763637175.Spec : Prop :=
  ∀ n, P8814331476763637175.a n = A038489 (n + 1)

end A038489

/-! ## A038489.P17787046584201996642

`∩[A038466(n+1), A033046(n)]`
-/

namespace A038489.P17787046584201996642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038489.P17787046584201996642

namespace A038489

/-- `∩[A038466(n+1), A033046(n)]` -/
def P17787046584201996642.Spec : Prop :=
  ∀ n, (P17787046584201996642.a n : ℤ) = A038489 (n + 1)

end A038489

/-! ## A038489.P10609797586210941151

`A037314(A038466(n+1))`
-/

namespace A038489.P10609797586210941151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (A038466 (n + 1)).toNat

end

end A038489.P10609797586210941151

namespace A038489

/-- `A037314(A038466(n+1))` -/
def P10609797586210941151.Spec : Prop :=
  ∀ n, P10609797586210941151.a n = A038489 (n + 1)

end A038489

/-!
# A038490: Sums of 2 distinct powers of 11.

The programs for A038490, the canonical program `A038490.P10897644593069472211` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038490 has offset 1).

The definition of A038490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4655 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038490.P4866603251144322413

`11^(row(n)+1)+11^col(n)`
-/

namespace A038490.P4866603251144322413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ (SequenceMachineLib.triRow n + 1) + 11 ^ SequenceMachineLib.triCol n

end

end A038490.P4866603251144322413

namespace A038490

/-- `11^(row(n)+1)+11^col(n)` -/
def P4866603251144322413.Spec : Prop :=
  ∀ n, (P4866603251144322413.a n : ℤ) = A038490 (n + 1)

end A038490

/-! ## A038490.P1221130718151300528

`A073211(∑[char[∑[n]]]+n)`
-/

namespace A038490.P1221130718151300528
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073211 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A038490.P1221130718151300528

namespace A038490

/-- `A073211(∑[char[∑[n]]]+n)` -/
def P1221130718151300528.Spec : Prop :=
  ∀ n, P1221130718151300528.a n = A038490 (n + 1)

end A038490

/-! ## A038490.P10897644593069472211

`lcm(2, A073211(A007401(n+1)))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038490

/-- `lcm(2, A073211(A007401(n+1)))` -/
def P10897644593069472211.Spec : Prop :=
  ∀ n, (P10897644593069472211.a n : ℤ) = A038490 (n + 1)

theorem P10897644593069472211.correct : P10897644593069472211.Spec := by
  intro n
  simp only [A038490, Nat.add_sub_cancel]

end A038490

/-! ## A038490.P18052947187014257514

`A073211(A007401(n+1))+A034548(A046951(n+1))`
-/

namespace A038490.P18052947187014257514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073211 (A007401 (n + 1)).toNat + A034548 (A046951 (n + 1)).toNat

end

end A038490.P18052947187014257514

namespace A038490

/-- `A073211(A007401(n+1))+A034548(A046951(n+1))` -/
def P18052947187014257514.Spec : Prop :=
  ∀ n, P18052947187014257514.a n = A038490 (n + 1)

end A038490

/-! ## A038490.P1106578210104471909

`A014963(A008458(n))*A073211(A007401(n+1))`
-/

namespace A038490.P1106578210104471909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A073211 (A007401 (n + 1)).toNat

end

end A038490.P1106578210104471909

namespace A038490

/-- `A014963(A008458(n))*A073211(A007401(n+1))` -/
def P1106578210104471909.Spec : Prop :=
  ∀ n, P1106578210104471909.a n = A038490 (n + 1)

end A038490

/-! ## A038490.P4107311228947901858

`A001222(A177092(n+1))*A073211(A007401(n+1))`
-/

namespace A038490.P4107311228947901858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A177092 (n + 1)).toNat * A073211 (A007401 (n + 1)).toNat

end

end A038490.P4107311228947901858

namespace A038490

/-- `A001222(A177092(n+1))*A073211(A007401(n+1))` -/
def P4107311228947901858.Spec : Prop :=
  ∀ n, P4107311228947901858.a n = A038490 (n + 1)

end A038490

/-! ## A038490.P673361216832093368

`A001222(A177104(n+1))*A073211(A007401(n+1))`
-/

namespace A038490.P673361216832093368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A177104 (n + 1)).toNat * A073211 (A007401 (n + 1)).toNat

end

end A038490.P673361216832093368

namespace A038490

/-- `A001222(A177104(n+1))*A073211(A007401(n+1))` -/
def P673361216832093368.Spec : Prop :=
  ∀ n, P673361216832093368.a n = A038490 (n + 1)

end A038490

/-! ## A038490.P16264371317974520185

`A014963(A008597(2*n+1))*A073211(A007401(n+1))`
-/

namespace A038490.P16264371317974520185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008597 (2 * n + 1)).toNat * A073211 (A007401 (n + 1)).toNat

end

end A038490.P16264371317974520185

namespace A038490

/-- `A014963(A008597(2*n+1))*A073211(A007401(n+1))` -/
def P16264371317974520185.Spec : Prop :=
  ∀ n, P16264371317974520185.a n = A038490 (n + 1)

end A038490

/-! ## A038490.P3771039245668825022

`A073211(A007401(n+1))%A288836(n+1)`
-/

namespace A038490.P3771039245668825022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073211 (A007401 (n + 1)).toNat) (A288836 (n + 1))

end

end A038490.P3771039245668825022

namespace A038490

/-- `A073211(A007401(n+1))%A288836(n+1)` -/
def P3771039245668825022.Spec : Prop :=
  ∀ n, P3771039245668825022.a n = A038490 (n + 1)

end A038490

/-! ## A038490.P13477438927589681550

`A073211(A007401(n+1))+A002262(A000217(n))`
-/

namespace A038490.P13477438927589681550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073211 (A007401 (n + 1)).toNat + A002262 (A000217 n).toNat

end

end A038490.P13477438927589681550

namespace A038490

/-- `A073211(A007401(n+1))+A002262(A000217(n))` -/
def P13477438927589681550.Spec : Prop :=
  ∀ n, P13477438927589681550.a n = A038490 (n + 1)

end A038490

/-! ## A038490.P8155664583129654682

`A014963(A146081(n))*A073211(A007401(n+1))`
-/

namespace A038490.P8155664583129654682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A146081 n).toNat * A073211 (A007401 (n + 1)).toNat

end

end A038490.P8155664583129654682

namespace A038490

/-- `A014963(A146081(n))*A073211(A007401(n+1))` -/
def P8155664583129654682.Spec : Prop :=
  ∀ n, P8155664583129654682.a n = A038490 (n + 1)

end A038490

/-! ## A038490.P14488240655657678205

`A171941(A001316(n))+A073211(A007401(n+1))`
-/

namespace A038490.P14488240655657678205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171941 (A001316 n).toNat + A073211 (A007401 (n + 1)).toNat

end

end A038490.P14488240655657678205

namespace A038490

/-- `A171941(A001316(n))+A073211(A007401(n+1))` -/
def P14488240655657678205.Spec : Prop :=
  ∀ n, P14488240655657678205.a n = A038490 (n + 1)

end A038490

/-!
# A038491: Sums of 3 distinct powers of 11.

The programs for A038491, the canonical program `A038491.P15891153079359632274` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038491 has offset 0).

The definition of A038491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038491.P8022587048596675692

`A033047(A014311(1+n))`
-/

namespace A038491.P8022587048596675692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033047 (A014311 (1 + n)).toNat

end

end A038491.P8022587048596675692

namespace A038491

/-- `A033047(A014311(1+n))` -/
def P8022587048596675692.Spec : Prop :=
  ∀ n, P8022587048596675692.a n = A038491 n

end A038491

/-! ## A038491.P15891153079359632274

`A033047(eq[3, A000120(n)])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038491

/-- `A033047(eq[3, A000120(n)])` -/
def P15891153079359632274.Spec : Prop :=
  ∀ n, P15891153079359632274.a n = A038491 n

theorem P15891153079359632274.correct : P15891153079359632274.Spec := by
  intro n
  simp only [A038491]

end A038491

/-! ## A038491.P10880161077936589996

`A033047(eq[5, A050315(n)])`
-/

namespace A038491.P10880161077936589996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038491.P10880161077936589996

namespace A038491

/-- `A033047(eq[5, A050315(n)])` -/
def P10880161077936589996.Spec : Prop :=
  ∀ n, P10880161077936589996.a n = A038491 n

end A038491

/-! ## A038491.P10013352159611933734

`A033047(eq[6, A093659(n)])`
-/

namespace A038491.P10013352159611933734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038491.P10013352159611933734

namespace A038491

/-- `A033047(eq[6, A093659(n)])` -/
def P10013352159611933734.Spec : Prop :=
  ∀ n, P10013352159611933734.a n = A038491 n

end A038491

/-! ## A038491.P4359674707770995350

`A033047(eq[7, A038573(n)])`
-/

namespace A038491.P4359674707770995350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038491.P4359674707770995350

namespace A038491

/-- `A033047(eq[7, A038573(n)])` -/
def P4359674707770995350.Spec : Prop :=
  ∀ n, P4359674707770995350.a n = A038491 n

end A038491

/-! ## A038491.P194866505650531878

`A033047(eq[8, A001316(n)])`
-/

namespace A038491.P194866505650531878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038491.P194866505650531878

namespace A038491

/-- `A033047(eq[8, A001316(n)])` -/
def P194866505650531878.Spec : Prop :=
  ∀ n, P194866505650531878.a n = A038491 n

end A038491

/-!
# A038492: Sums of 2 distinct powers of 12.

The programs for A038492, the canonical program `A038492.P9910547711259692788` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038492 has offset 1).

The definition of A038492 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4278 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038492.P9910547711259692788

`A194887(∑[char[∑[n]]]+n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A038492

/-- `A194887(∑[char[∑[n]]]+n+1)` -/
def P9910547711259692788.Spec : Prop :=
  ∀ n, P9910547711259692788.a n = A038492 (n + 1)

theorem P9910547711259692788.correct : P9910547711259692788.Spec := by
  intro n
  simp only [A038492, Nat.add_sub_cancel]

end A038492

/-! ## A038492.P17114906168120983289

`abs(A033999(n))*A194887(A014132(n+1))`
-/

namespace A038492.P17114906168120983289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n| * A194887 (A014132 (n + 1)).toNat

end

end A038492.P17114906168120983289

namespace A038492

/-- `abs(A033999(n))*A194887(A014132(n+1))` -/
def P17114906168120983289.Spec : Prop :=
  ∀ n, P17114906168120983289.a n = A038492 (n + 1)

end A038492

/-! ## A038492.P9455686339059400458

`A194887(A014132(n+1))/A309873(2*n+3)`
-/

namespace A038492.P9455686339059400458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194887 (A014132 (n + 1)).toNat : ℚ) / (A309873 (2 * n + 3) : ℚ)

end

end A038492.P9455686339059400458

namespace A038492

/-- `A194887(A014132(n+1))/A309873(2*n+3)` -/
def P9455686339059400458.Spec : Prop :=
  ∀ n, P9455686339059400458.a n = (A038492 (n + 1) : ℚ)

end A038492

/-! ## A038492.P910112389946994890

`A292251(A005811(2*(n+1)))+A194887(A014132(n+1))`
-/

namespace A038492.P910112389946994890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292251 (A005811 (2 * (n + 1))).toNat + A194887 (A014132 (n + 1)).toNat

end

end A038492.P910112389946994890

namespace A038492

/-- `A292251(A005811(2*(n+1)))+A194887(A014132(n+1))` -/
def P910112389946994890.Spec : Prop :=
  ∀ n, P910112389946994890.a n = A038492 (n + 1)

end A038492

/-! ## A038492.P18275970906254893787

`A292251(A002620(2*n+3))+A194887(A014132(n+1))`
-/

namespace A038492.P18275970906254893787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292251 (A002620 (2 * n + 3)).toNat + A194887 (A014132 (n + 1)).toNat

end

end A038492.P18275970906254893787

namespace A038492

/-- `A292251(A002620(2*n+3))+A194887(A014132(n+1))` -/
def P18275970906254893787.Spec : Prop :=
  ∀ n, P18275970906254893787.a n = A038492 (n + 1)

end A038492

/-! ## A038492.P3553709098086120188

`A033048(A018900(1+n))`
-/

namespace A038492.P3553709098086120188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033048 (A018900 (1 + n)).toNat

end

end A038492.P3553709098086120188

namespace A038492

/-- `A033048(A018900(1+n))` -/
def P3553709098086120188.Spec : Prop :=
  ∀ n, P3553709098086120188.a n = A038492 (n + 1)

end A038492

/-! ## A038492.P4373879292033939885

`A033048(eq[2, A000120(n)])`
-/

namespace A038492.P4373879292033939885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038492.P4373879292033939885

namespace A038492

/-- `A033048(eq[2, A000120(n)])` -/
def P4373879292033939885.Spec : Prop :=
  ∀ n, P4373879292033939885.a n = A038492 (n + 1)

end A038492

/-! ## A038492.P9009548642120607577

`A033048(eq[2, A050315(n)])`
-/

namespace A038492.P9009548642120607577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038492.P9009548642120607577

namespace A038492

/-- `A033048(eq[2, A050315(n)])` -/
def P9009548642120607577.Spec : Prop :=
  ∀ n, P9009548642120607577.a n = A038492 (n + 1)

end A038492

/-! ## A038492.P3826187953984212485

`A033048(eq[3, A038573(n)])`
-/

namespace A038492.P3826187953984212485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038492.P3826187953984212485

namespace A038492

/-- `A033048(eq[3, A038573(n)])` -/
def P3826187953984212485.Spec : Prop :=
  ∀ n, P3826187953984212485.a n = A038492 (n + 1)

end A038492

/-! ## A038492.P13589260752627501160

`∩[A033048(n), A194887(n+1)]`
-/

namespace A038492.P13589260752627501160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033048 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038492.P13589260752627501160

namespace A038492

/-- `∩[A033048(n), A194887(n+1)]` -/
def P13589260752627501160.Spec : Prop :=
  ∀ n, (P13589260752627501160.a n : ℤ) = A038492 (n + 1)

end A038492

/-!
# A038493: Sums of 3 distinct powers of 12.

The programs for A038493, the canonical program `A038493.P1122094137133693920` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038493 has offset 1).

The definition of A038493 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038493.P2947258905069116238

`A033048(A014311(1+n))`
-/

namespace A038493.P2947258905069116238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033048 (A014311 (1 + n)).toNat

end

end A038493.P2947258905069116238

namespace A038493

/-- `A033048(A014311(1+n))` -/
def P2947258905069116238.Spec : Prop :=
  ∀ n, P2947258905069116238.a n = A038493 (n + 1)

end A038493

/-! ## A038493.P1122094137133693920

`A033048(eq[3, A000120(n)])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038493

/-- `A033048(eq[3, A000120(n)])` -/
def P1122094137133693920.Spec : Prop :=
  ∀ n, P1122094137133693920.a n = A038493 (n + 1)

theorem P1122094137133693920.correct : P1122094137133693920.Spec := by
  intro n
  simp only [A038493, Nat.add_sub_cancel]

end A038493

/-! ## A038493.P18246565460620230685

`A033048(eq[5, A050315(n)])`
-/

namespace A038493.P18246565460620230685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038493.P18246565460620230685

namespace A038493

/-- `A033048(eq[5, A050315(n)])` -/
def P18246565460620230685.Spec : Prop :=
  ∀ n, P18246565460620230685.a n = A038493 (n + 1)

end A038493

/-! ## A038493.P658647446307338421

`A033048(eq[7, A038573(n)])`
-/

namespace A038493.P658647446307338421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038493.P658647446307338421

namespace A038493

/-- `A033048(eq[7, A038573(n)])` -/
def P658647446307338421.Spec : Prop :=
  ∀ n, P658647446307338421.a n = A038493 (n + 1)

end A038493

/-! ## A038493.P489970852453582351

`A033048(eq[8, A001316(n)])`
-/

namespace A038493.P489970852453582351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038493.P489970852453582351

namespace A038493

/-- `A033048(eq[8, A001316(n)])` -/
def P489970852453582351.Spec : Prop :=
  ∀ n, P489970852453582351.a n = A038493 (n + 1)

end A038493

/-! ## A038493.P10180661410379564871

`A033048(eq[27, A048883(n)])`
-/

namespace A038493.P10180661410379564871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038493.P10180661410379564871

namespace A038493

/-- `A033048(eq[27, A048883(n)])` -/
def P10180661410379564871.Spec : Prop :=
  ∀ n, P10180661410379564871.a n = A038493 (n + 1)

end A038493

/-!
# A038494: Images of hexamorphic numbers: suppose k-th hexagonal number H(k) (A000384) ends in k; sequence gives positive values of H(k).

The programs for A038494, there is no canonical definition to state claims against.
-/

/-! ## A038494.P9412809096277581344

`C(2*A039594(n+1), 2)`
-/

namespace A038494.P9412809096277581344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A039594 (n + 1)).toNat 2

end

end A038494.P9412809096277581344

/-! ## A038494.P14659415653266621841

`A000384(A039594(n+1))`
-/

namespace A038494.P14659415653266621841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (A039594 (n + 1)).toNat

end

end A038494.P14659415653266621841

/-! ## A038494.P9016849880883874592

`A000217(2*A039594(n+1)-1)`
-/

namespace A038494.P9016849880883874592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * A039594 (n + 1) - 1).toNat

end

end A038494.P9016849880883874592

/-! ## A038494.P12401838881888650539

`A000217(A005843(A039594(n+1))-1)`
-/

namespace A038494.P12401838881888650539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A005843 (A039594 (n + 1)).toNat - 1).toNat

end

end A038494.P12401838881888650539

/-! ## A038494.P16653964751957499193

`A000217(A039594(n+1)+A039594(n+1)-1)`
-/

namespace A038494.P16653964751957499193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A039594 (n + 1) + (A039594 (n + 1) - 1)).toNat

end

end A038494.P16653964751957499193

/-!
# A038496: Number of self-avoiding paths with diagonal steps from corner to opposite corner of n X n grid.

The programs for A038496, there is no canonical definition to state claims against.
-/

/-! ## A038496.P17296474148569012736

`A092169(A218293(n))`
-/

namespace A038496.P17296474148569012736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092169 (A218293 n).toNat

end

end A038496.P17296474148569012736

/-! ## A038496.P17293006850336745144

`A051574(A151288(n+1))`
-/

namespace A038496.P17293006850336745144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051574 (A151288 (n + 1)).toNat

end

end A038496.P17293006850336745144

/-! ## A038496.P14249337661594359499

`or(1, A071681(A054921(n)))`
-/

namespace A038496.P14249337661594359499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A071681 (A054921 n).toNat)

end

end A038496.P14249337661594359499

/-!
# A038497: Matrix square of partition triangle A008284.

The programs for A038497, there is no canonical definition to state claims against.
-/

/-! ## A038497.P1283133010185856089

`A091355(n+1)-A079998(A041009(n))`
-/

namespace A038497.P1283133010185856089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091355 (n + 1) - A079998 (A041009 n).toNat

end

end A038497.P1283133010185856089

/-! ## A038497.P832836549345036822

`A134871(A058399(n+1))%p?[A007318(n)]`
-/

namespace A038497.P832836549345036822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134871 (A058399 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A038497.P832836549345036822

/-! ## A038497.P14989544589241998729

`A181820(A091355(n+1)%A128165(3*n+5))`
-/

namespace A038497.P14989544589241998729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181820 (Int.tmod (A091355 (n + 1)) (A128165 (3 * n + 5))).toNat

end

end A038497.P14989544589241998729

/-! ## A038497.P11405180628179256274

`A242324(A152072(n+1)%A050281(n+1))`
-/

namespace A038497.P11405180628179256274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242324 (Int.tmod (A152072 (n + 1)) (A050281 (n + 1))).toNat

end

end A038497.P11405180628179256274

/-! ## A038497.P9387098026364338505

`A091355(n+1)-A090330(A367227(3*(n+1)))`
-/

namespace A038497.P9387098026364338505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091355 (n + 1) - A090330 (A367227 (3 * (n + 1))).toNat

end

end A038497.P9387098026364338505

/-!
# A038498: Matrix inverse of partition triangle A008284.

The programs for A038498, there is no canonical definition to state claims against.
-/

/-! ## A038498.P8369162978171037062

`A102283(A050302(n+1))`
-/

namespace A038498.P8369162978171037062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A050302 (n + 1)).toNat

end

end A038498.P8369162978171037062

/-! ## A038498.P16940442394600170862

`A049347(A050302(n+1)-1)`
-/

namespace A038498.P16940442394600170862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A050302 (n + 1) - 1).toNat

end

end A038498.P16940442394600170862

/-! ## A038498.P16669240566618966889

`A106510(A050302(n+1)+3)`
-/

namespace A038498.P16669240566618966889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106510 (A050302 (n + 1) + 3).toNat

end

end A038498.P16669240566618966889

/-! ## A038498.P11099828427895545124

`A128834(2*A050302(n+1))`
-/

namespace A038498.P11099828427895545124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (2 * A050302 (n + 1)).toNat

end

end A038498.P11099828427895545124

/-! ## A038498.P8631153823476202426

`A163806(2*A050302(n+1))`
-/

namespace A038498.P8631153823476202426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163806 (2 * A050302 (n + 1)).toNat

end

end A038498.P8631153823476202426

/-!
# A038499: Number of partitions of n into a prime number of parts.

The programs for A038499, there is no canonical definition to state claims against.
-/

/-! ## A038499.P9373594696437343752

`abs(1-A094707(A187829(n+1)))`
-/

namespace A038499.P9373594696437343752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A094707 (A187829 (n + 1)).toNat|

end

end A038499.P9373594696437343752

/-! ## A038499.P14529766008367267949

`A094707(A187829(n+1))-A158388(n)`
-/

namespace A038499.P14529766008367267949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094707 (A187829 (n + 1)).toNat - A158388 n

end

end A038499.P14529766008367267949

/-! ## A038499.P7667531608574489563

`∑{d}[1-A094707(A187829(n+1)), A000010(#)]`
-/

namespace A038499.P7667531608574489563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A094707 (A187829 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A038499.P7667531608574489563

/-! ## A038499.P9219257328280767852

`C(2, A000203(n+1))-(1-A094707(A187829(n+1)))`
-/

namespace A038499.P9219257328280767852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A000203 (n + 1)).toNat : ℤ) - (1 - A094707 (A187829 (n + 1)).toNat)

end

end A038499.P9219257328280767852

/-! ## A038499.P7380819001286040385

`gcd(1-A094707(A187829(n+1)), A008683(27*(n+1)))`
-/

namespace A038499.P7380819001286040385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A094707 (A187829 (n + 1)).toNat) (A008683 (27 * (n + 1)))

end

end A038499.P7380819001286040385

