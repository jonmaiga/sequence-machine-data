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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A011522: Stirling numbers of first kind S1(12,n).

The programs for A011522, there is no canonical definition to state claims against.
-/

/-! ## A011522.P12886873602803431631

`A008275(n+67)`
-/

namespace A011522.P12886873602803431631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (n + 67)

end

end A011522.P12886873602803431631

/-! ## A011522.P2842259600864904801

`A048994(n+79)`
-/

namespace A011522.P2842259600864904801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (n + 79)

end

end A011522.P2842259600864904801

/-! ## A011522.P5678003418609927909

`A054654(92-A141213(n))`
-/

namespace A011522.P5678003418609927909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054654 (92 - A141213 n).toNat

end

end A011522.P5678003418609927909

/-!
# A011523: Stirling numbers of first kind S1(13,n).

The programs for A011523, there is no canonical definition to state claims against.
-/

/-! ## A011523.P276338295265579925

`A008275(n+79)`
-/

namespace A011523.P276338295265579925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (n + 79)

end

end A011523.P276338295265579925

/-! ## A011523.P12350252325619086831

`A048994(n+92)`
-/

namespace A011523.P12350252325619086831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (n + 92)

end

end A011523.P12350252325619086831

/-! ## A011523.P16358463141042372238

`A008276(94-A141213(n))`
-/

namespace A011523.P16358463141042372238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008276 (94 - A141213 n).toNat

end

end A011523.P16358463141042372238

/-! ## A011523.P3134335357985357412

`A054654(A096582(n+1)+3)`
-/

namespace A011523.P3134335357985357412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054654 (A096582 (n + 1) + 3).toNat

end

end A011523.P3134335357985357412

/-! ## A011523.P13632472378862350818

`A008276(94-A346132(n+3))`
-/

namespace A011523.P13632472378862350818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008276 (94 - A346132 (n + 3)).toNat

end

end A011523.P13632472378862350818

/-!
# A011524: Stirling numbers of first kind S1(14,n).

The programs for A011524, there is no canonical definition to state claims against.
-/

/-! ## A011524.P8409834487938073097

`A008275(n+92)`
-/

namespace A011524.P8409834487938073097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (n + 92)

end

end A011524.P8409834487938073097

/-! ## A011524.P9225801517898779625

`A048994(A135600(n+7))`
-/

namespace A011524.P9225801517898779625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (A135600 (n + 7)).toNat

end

end A011524.P9225801517898779625

/-! ## A011524.P14157022853840455007

`A048994(A317592(n+8))`
-/

namespace A011524.P14157022853840455007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (A317592 (n + 8)).toNat

end

end A011524.P14157022853840455007

/-! ## A011524.P5926039517220962794

`A048994(A366207(n+9))`
-/

namespace A011524.P5926039517220962794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (A366207 (n + 9)).toNat

end

end A011524.P5926039517220962794

/-! ## A011524.P4015927806456564297

`A008276(A096582(n+1)+5)`
-/

namespace A011524.P4015927806456564297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008276 (A096582 (n + 1) + 5).toNat

end

end A011524.P4015927806456564297

/-!
# A011525: Stirling numbers of first kind S1(15,n).

The programs for A011525, there is no canonical definition to state claims against.
-/

/-! ## A011525.P8991619427237553808

`A008275(106+n)`
-/

namespace A011525.P8991619427237553808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (106 + n)

end

end A011525.P8991619427237553808

/-! ## A011525.P3240254989991114231

`A048994(A181402(n+4)+n)`
-/

namespace A011525.P3240254989991114231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (A181402 (n + 4) + (n : ℤ)).toNat

end

end A011525.P3240254989991114231

/-! ## A011525.P5469256375999900207

`A048994((A033999(n)²+10)²+n)`
-/

namespace A011525.P5469256375999900207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 ((A033999 n ^ 2 + 10) ^ 2 + (n : ℤ)).toNat

end

end A011525.P5469256375999900207

/-! ## A011525.P8685134346165700601

`A048994(∑[A131843(A141759(n))²])`
-/

namespace A011525.P8685134346165700601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131843 (A141759 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011525.P8685134346165700601

/-!
# A011526: Stirling numbers of first kind S1(16,n).

The programs for A011526, there is no canonical definition to state claims against.
-/

/-! ## A011526.P16112579284914587352

`A008275(121+n)`
-/

namespace A011526.P16112579284914587352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (121 + n)

end

end A011526.P16112579284914587352

/-! ## A011526.P13372295857685754286

`A048994(lt[A081745(n+3), A118943(n+1)])`
-/

namespace A011526.P13372295857685754286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081745 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A011526.P13372295857685754286

/-!
# A011527: Stirling numbers of first kind S1(17,n).

The programs for A011527, there is no canonical definition to state claims against.
-/

/-! ## A011527.P17093684350687653083

`A008275(137+n)`
-/

namespace A011527.P17093684350687653083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (137 + n)

end

end A011527.P17093684350687653083

/-! ## A011527.P11780041092975359332

`A048994(154+n)`
-/

namespace A011527.P11780041092975359332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (154 + n)

end

end A011527.P11780041092975359332

/-! ## A011527.P17264572304390952940

`A054654(A061579(154+n))`
-/

namespace A011527.P17264572304390952940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054654 (A061579 (154 + n)).toNat

end

end A011527.P17264572304390952940

/-!
# A011528: Stirling numbers of first kind S1(18,n).

The programs for A011528, there is no canonical definition to state claims against.
-/

/-! ## A011528.P15695958695226453655

`A008275(154+n)`
-/

namespace A011528.P15695958695226453655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (154 + n)

end

end A011528.P15695958695226453655

/-! ## A011528.P3760252267343967974

`A048994(A014132(154+n))`
-/

namespace A011528.P3760252267343967974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (A014132 (154 + n)).toNat

end

end A011528.P3760252267343967974

/-! ## A011528.P14147027500657107205

`A048994(A000027(n+1)+171)`
-/

namespace A011528.P14147027500657107205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (A000027 (n + 1) + 171).toNat

end

end A011528.P14147027500657107205

/-!
# A011529: 

The programs for A011529, there is no canonical definition to state claims against.
-/

/-! ## A011529.P13406242521310303709

`A048994(A317592(n+1)+92)`
-/

namespace A011529.P13406242521310303709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (A317592 (n + 1) + 92).toNat

end

end A011529.P13406242521310303709

/-!
# A011530: 

The programs for A011530, there is no canonical definition to state claims against.
-/

/-! ## A011530.P13096786086549869969

`A008275(A317592(n+1)+92)`
-/

namespace A011530.P13096786086549869969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (A317592 (n + 1) + 92).toNat

end

end A011530.P13096786086549869969

/-!
# A011531: Numbers that contain a digit 1 in their decimal representation.

The programs for A011531, the canonical program `A011531.P8691385485955789627` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011531 has offset 1).

The definition of A011531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011531.P8691385485955789627

`comp[A052383(n+1)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A011531

/-- `comp[A052383(n+1)]` -/
def P8691385485955789627.Spec : Prop :=
  ∀ n, (P8691385485955789627.a n : ℤ) = A011531 (n + 1)

theorem P8691385485955789627.correct : P8691385485955789627.Spec := by
  intro n
  simp only [A011531, Nat.add_sub_cancel]

end A011531

/-! ## A011531.P10319738607709881745

`∪[A062634(n+1), A208271(n+1)]`
-/

namespace A011531.P10319738607709881745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A011531.P10319738607709881745

namespace A011531

/-- `∪[A062634(n+1), A208271(n+1)]` -/
def P10319738607709881745.Spec : Prop :=
  ∀ n, (P10319738607709881745.a n : ℤ) = A011531 (n + 1)

end A011531

/-! ## A011531.P9173481938536747821

`∪[A092911(n+1), A208271(n+1)]`
-/

namespace A011531.P9173481938536747821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A011531.P9173481938536747821

namespace A011531

/-- `∪[A092911(n+1), A208271(n+1)]` -/
def P9173481938536747821.Spec : Prop :=
  ∀ n, (P9173481938536747821.a n : ℤ) = A011531 (n + 1)

end A011531

/-! ## A011531.P17012872360567561189

`∪[A092912(n+1), A208271(n+1)]`
-/

namespace A011531.P17012872360567561189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A011531.P17012872360567561189

namespace A011531

/-- `∪[A092912(n+1), A208271(n+1)]` -/
def P17012872360567561189.Spec : Prop :=
  ∀ n, (P17012872360567561189.a n : ℤ) = A011531 (n + 1)

end A011531

/-! ## A011531.P3465203343463903481

`∪[A037379(n+1), A284062(n+1)]`
-/

namespace A011531.P3465203343463903481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A011531.P3465203343463903481

namespace A011531

/-- `∪[A037379(n+1), A284062(n+1)]` -/
def P3465203343463903481.Spec : Prop :=
  ∀ n, (P3465203343463903481.a n : ℤ) = A011531 (n + 1)

end A011531

/-! ## A011531.P9461714675924434019

`∪[A208270(n+1), A208271(n+1)]`
-/

namespace A011531.P9461714675924434019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A011531.P9461714675924434019

namespace A011531

/-- `∪[A208270(n+1), A208271(n+1)]` -/
def P9461714675924434019.Spec : Prop :=
  ∀ n, (P9461714675924434019.a n : ℤ) = A011531 (n + 1)

end A011531

/-! ## A011531.P5940717584836311282

`∪[A208271(n+1), A239058(n+1)]`
-/

namespace A011531.P5940717584836311282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A011531.P5940717584836311282

namespace A011531

/-- `∪[A208271(n+1), A239058(n+1)]` -/
def P5940717584836311282.Spec : Prop :=
  ∀ n, (P5940717584836311282.a n : ℤ) = A011531 (n + 1)

end A011531

/-! ## A011531.P18094518195834010080

`∩[A069715(n+1), A263314(n+1)]`
-/

namespace A011531.P18094518195834010080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A011531.P18094518195834010080

namespace A011531

/-- `∩[A069715(n+1), A263314(n+1)]` -/
def P18094518195834010080.Spec : Prop :=
  ∀ n, (P18094518195834010080.a n : ℤ) = A011531 (n + 1)

end A011531

/-! ## A011531.P16206866336893254308

`lt[0, A268643(n)]`
-/

namespace A011531.P16206866336893254308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A011531.P16206866336893254308

namespace A011531

/-- `lt[0, A268643(n)]` -/
def P16206866336893254308.Spec : Prop :=
  ∀ n, (P16206866336893254308.a n : ℤ) = A011531 (n + 1)

end A011531

/-! ## A011531.P5007477313615273486

`eq[1, A381526(n)]`
-/

namespace A011531.P5007477313615273486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381526 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011531.P5007477313615273486

namespace A011531

/-- `eq[1, A381526(n)]` -/
def P5007477313615273486.Spec : Prop :=
  ∀ n, (P5007477313615273486.a n : ℤ) = A011531 (n + 1)

end A011531

/-! ## A011531.P9912081820391858454

`lt[1, A261794(n)]`
-/

namespace A011531.P9912081820391858454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261794 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A011531.P9912081820391858454

namespace A011531

/-- `lt[1, A261794(n)]` -/
def P9912081820391858454.Spec : Prop :=
  ∀ n, (P9912081820391858454.a n : ℤ) = A011531 (n + 1)

end A011531

/-! ## A011531.P9457017655754185266

`eq[n, A381527(n)]`
-/

namespace A011531.P9457017655754185266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381527 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011531.P9457017655754185266

namespace A011531

/-- `eq[n, A381527(n)]` -/
def P9457017655754185266.Spec : Prop :=
  ∀ n, (P9457017655754185266.a n : ℤ) = A011531 (n + 1)

end A011531

/-! ## A011531.P959114362249381118

`lt[0, and(2, A086066(n))]`
-/

namespace A011531.P959114362249381118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A086066 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A011531.P959114362249381118

namespace A011531

/-- `lt[0, and(2, A086066(n))]` -/
def P959114362249381118.Spec : Prop :=
  ∀ n, (P959114362249381118.a n : ℤ) = A011531 (n + 1)

end A011531

/-! ## A011531.P2802795333843483684

`eq[1, A266586(n+1)]+1`
-/

namespace A011531.P2802795333843483684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266586 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A011531.P2802795333843483684

namespace A011531

/-- `eq[1, A266586(n+1)]+1` -/
def P2802795333843483684.Spec : Prop :=
  ∀ n, (P2802795333843483684.a n : ℤ) = A011531 (n + 1)

end A011531

/-! ## A011531.P8364192554080527241

`eq[1, A000030(A004185(n))]`
-/

namespace A011531.P8364192554080527241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A004185 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011531.P8364192554080527241

namespace A011531

/-- `eq[1, A000030(A004185(n))]` -/
def P8364192554080527241.Spec : Prop :=
  ∀ n, (P8364192554080527241.a n : ℤ) = A011531 (n + 1)

end A011531

/-! ## A011531.P17368780112178442349

`eq[n, A317180(A028310(n))]`
-/

namespace A011531.P17368780112178442349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317180 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011531.P17368780112178442349

namespace A011531

/-- `eq[n, A317180(A028310(n))]` -/
def P17368780112178442349.Spec : Prop :=
  ∀ n, (P17368780112178442349.a n : ℤ) = A011531 (n + 1)

end A011531

/-! ## A011531.P2062089915642875627

`eq[0, ∏{digits}[n, 1-#]]`
-/

namespace A011531.P2062089915642875627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => 1 - (x : ℤ)).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011531.P2062089915642875627

namespace A011531

/-- `eq[0, ∏{digits}[n, 1-#]]` -/
def P2062089915642875627.Spec : Prop :=
  ∀ n, (P2062089915642875627.a n : ℤ) = A011531 (n + 1)

end A011531

/-! ## A011531.P8477403421658101422

`lt[∏{digits}[n, (1-#)²], 1]`
-/

namespace A011531.P8477403421658101422
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => (1 - (x : ℤ)) ^ 2).prod

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A011531.P8477403421658101422

namespace A011531

/-- `lt[∏{digits}[n, (1-#)²], 1]` -/
def P8477403421658101422.Spec : Prop :=
  ∀ n, (P8477403421658101422.a n : ℤ) = A011531 (n + 1)

end A011531

/-! ## A011531.P5665400009989020169

`comp[A035043(A052404(n+1))]`
-/

namespace A011531.P5665400009989020169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A052404 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A011531.P5665400009989020169

namespace A011531

/-- `comp[A035043(A052404(n+1))]` -/
def P5665400009989020169.Spec : Prop :=
  ∀ n, (P5665400009989020169.a n : ℤ) = A011531 (n + 1)

end A011531

/-! ## A011531.P9358676706418397873

`comp[A048379(A052382(n+1))]`
-/

namespace A011531.P9358676706418397873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (A052382 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A011531.P9358676706418397873

namespace A011531

/-- `comp[A048379(A052382(n+1))]` -/
def P9358676706418397873.Spec : Prop :=
  ∀ n, (P9358676706418397873.a n : ℤ) = A011531 (n + 1)

end A011531

/-!
# A011532: Numbers that contain a 2.

The programs for A011532, the canonical program `A011532.P8211375854146369303` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011532 has offset 1).

The definition of A011532 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5751 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011532.P13382507479004270627

`∪[A062653(n+1), A208273(n+1)]`
-/

namespace A011532.P13382507479004270627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A011532.P13382507479004270627

namespace A011532

/-- `∪[A062653(n+1), A208273(n+1)]` -/
def P13382507479004270627.Spec : Prop :=
  ∀ n, (P13382507479004270627.a n : ℤ) = A011532 (n + 1)

end A011532

/-! ## A011532.P13690234909053742877

`∪[A208272(n+1), A208273(n+1)]`
-/

namespace A011532.P13690234909053742877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A011532.P13690234909053742877

namespace A011532

/-- `∪[A208272(n+1), A208273(n+1)]` -/
def P13690234909053742877.Spec : Prop :=
  ∀ n, (P13690234909053742877.a n : ℤ) = A011532 (n + 1)

end A011532

/-! ## A011532.P8211375854146369303

`comp[A052404(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A011532

/-- `comp[A052404(n+1)]` -/
def P8211375854146369303.Spec : Prop :=
  ∀ n, (P8211375854146369303.a n : ℤ) = A011532 (n + 1)

theorem P8211375854146369303.correct : P8211375854146369303.Spec := by
  intro n
  simp only [A011532, Nat.add_sub_cancel]

end A011532

/-! ## A011532.P11794330921641616916

`eq[0, ∏{digits}[n, 2-#]]`
-/

namespace A011532.P11794330921641616916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => 2 - (x : ℤ)).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011532.P11794330921641616916

namespace A011532

/-- `eq[0, ∏{digits}[n, 2-#]]` -/
def P11794330921641616916.Spec : Prop :=
  ∀ n, (P11794330921641616916.a n : ℤ) = A011532 (n + 1)

end A011532

/-! ## A011532.P12069654963754063870

`lt[∏{digits}[n, (2-#)²], 1]`
-/

namespace A011532.P12069654963754063870
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => (2 - (x : ℤ)) ^ 2).prod

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A011532.P12069654963754063870

namespace A011532

/-- `lt[∏{digits}[n, (2-#)²], 1]` -/
def P12069654963754063870.Spec : Prop :=
  ∀ n, (P12069654963754063870.a n : ℤ) = A011532 (n + 1)

end A011532

/-! ## A011532.P12458596336995498708

`lt[0, A316863(n)]`
-/

namespace A011532.P12458596336995498708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A011532.P12458596336995498708

namespace A011532

/-- `lt[0, A316863(n)]` -/
def P12458596336995498708.Spec : Prop :=
  ∀ n, (P12458596336995498708.a n : ℤ) = A011532 (n + 1)

end A011532

/-! ## A011532.P2855496152525181283

`eq[2, A211396(n)]`
-/

namespace A011532.P2855496152525181283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011532.P2855496152525181283

namespace A011532

/-- `eq[2, A211396(n)]` -/
def P2855496152525181283.Spec : Prop :=
  ∀ n, (P2855496152525181283.a n : ℤ) = A011532 (n + 1)

end A011532

/-! ## A011532.P16548035282835166479

`lt[A004177(n), n]`
-/

namespace A011532.P16548035282835166479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A011532.P16548035282835166479

namespace A011532

/-- `lt[A004177(n), n]` -/
def P16548035282835166479.Spec : Prop :=
  ∀ n, (P16548035282835166479.a n : ℤ) = A011532 (n + 1)

end A011532

/-! ## A011532.P1927742655392280162

`eq[4, and(4, A086066(n))]`
-/

namespace A011532.P1927742655392280162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 4 (A086066 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011532.P1927742655392280162

namespace A011532

/-- `eq[4, and(4, A086066(n))]` -/
def P1927742655392280162.Spec : Prop :=
  ∀ n, (P1927742655392280162.a n : ℤ) = A011532 (n + 1)

end A011532

/-! ## A011532.P12907895495865269271

`eq[2, A134778(A004185(n))]`
-/

namespace A011532.P12907895495865269271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134778 (A004185 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011532.P12907895495865269271

namespace A011532

/-- `eq[2, A134778(A004185(n))]` -/
def P12907895495865269271.Spec : Prop :=
  ∀ n, (P12907895495865269271.a n : ℤ) = A011532 (n + 1)

end A011532

/-! ## A011532.P17537763451824997522

`lt[8, A054055(A222233(n))]`
-/

namespace A011532.P17537763451824997522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A222233 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A011532.P17537763451824997522

namespace A011532

/-- `lt[8, A054055(A222233(n))]` -/
def P17537763451824997522.Spec : Prop :=
  ∀ n, (P17537763451824997522.a n : ℤ) = A011532 (n + 1)

end A011532

/-! ## A011532.P4220415933555444706

`lt[A102671(n), A102669(n)]`
-/

namespace A011532.P4220415933555444706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A011532.P4220415933555444706

namespace A011532

/-- `lt[A102671(n), A102669(n)]` -/
def P4220415933555444706.Spec : Prop :=
  ∀ n, (P4220415933555444706.a n : ℤ) = A011532 (n + 1)

end A011532

/-! ## A011532.P18343035366929833586

`eq[0, A316863(a(A316863(n)))]` with `a(0)=2`
-/

namespace A011532.P18343035366929833586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A316863 (f2 (A316863 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011532.P18343035366929833586

namespace A011532

/-- `eq[0, A316863(a(A316863(n)))]` -/
def P18343035366929833586.Spec : Prop :=
  ∀ n, (P18343035366929833586.a n : ℤ) = A011532 (n + 1)

end A011532

/-! ## A011532.P195068961152471697

`lt[A004183(n), A222232(A004183(n))]`
-/

namespace A011532.P195068961152471697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (A004183 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A011532.P195068961152471697

namespace A011532

/-- `lt[A004183(n), A222232(A004183(n))]` -/
def P195068961152471697.Spec : Prop :=
  ∀ n, (P195068961152471697.a n : ℤ) = A011532 (n + 1)

end A011532

/-! ## A011532.P3803424936669657966

`lt[A211396(n), A211396(A211396(n)+1)]`
-/

namespace A011532.P3803424936669657966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 (A211396 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A011532.P3803424936669657966

namespace A011532

/-- `lt[A211396(n), A211396(A211396(n)+1)]` -/
def P3803424936669657966.Spec : Prop :=
  ∀ n, (P3803424936669657966.a n : ℤ) = A011532 (n + 1)

end A011532

/-! ## A011532.P5683509492668276892

`eq[1, A001221(A001316(n*A316863(n)))]`
-/

namespace A011532.P5683509492668276892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001316 ((n : ℤ) * A316863 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011532.P5683509492668276892

namespace A011532

/-- `eq[1, A001221(A001316(n*A316863(n)))]` -/
def P5683509492668276892.Spec : Prop :=
  ∀ n, (P5683509492668276892.a n : ℤ) = A011532 (n + 1)

end A011532

/-! ## A011532.P13987328141364146474

`eq[1, A057427(A003484(n+1)*A316863(n))]`
-/

namespace A011532.P13987328141364146474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A003484 (n + 1) * A316863 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011532.P13987328141364146474

namespace A011532

/-- `eq[1, A057427(A003484(n+1)*A316863(n))]` -/
def P13987328141364146474.Spec : Prop :=
  ∀ n, (P13987328141364146474.a n : ℤ) = A011532 (n + 1)

end A011532

/-! ## A011532.P3225404962398582166

`comp[A004721(n)]`
-/

namespace A011532.P3225404962398582166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004721 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A011532.P3225404962398582166

namespace A011532

/-- `comp[A004721(n)]` -/
def P3225404962398582166.Spec : Prop :=
  ∀ n, (P3225404962398582166.a n : ℤ) = A011532 (n + 1)

end A011532

/-! ## A011532.P9201024750222046810

`comp[A004177(n)]`
-/

namespace A011532.P9201024750222046810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A011532.P9201024750222046810

namespace A011532

/-- `comp[A004177(n)]` -/
def P9201024750222046810.Spec : Prop :=
  ∀ n, (P9201024750222046810.a n : ℤ) = A011532 (n + 1)

end A011532

/-! ## A011532.P1137660289176081357

`eq[1, A049347(A113581(n))]`
-/

namespace A011532.P1137660289176081357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A113581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011532.P1137660289176081357

namespace A011532

/-- `eq[1, A049347(A113581(n))]` -/
def P1137660289176081357.Spec : Prop :=
  ∀ n, (P1137660289176081357.a n : ℤ) = A011532 (n + 1)

end A011532

/-!
# A011533: Numbers that contain a 3.

The programs for A011533, the canonical program `A011533.P1863259757055016485` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011533 has offset 1).

The definition of A011533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011533.P15721632593489238399

`comp[A052405(n+1)]`
-/

namespace A011533.P15721632593489238399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A011533.P15721632593489238399

namespace A011533

/-- `comp[A052405(n+1)]` -/
def P15721632593489238399.Spec : Prop :=
  ∀ n, (P15721632593489238399.a n : ℤ) = A011533 (n + 1)

end A011533

/-! ## A011533.P1863259757055016485

`eq[0, ∏{digits}[n, 3-#]]`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011533

/-- `eq[0, ∏{digits}[n, 3-#]]` -/
def P1863259757055016485.Spec : Prop :=
  ∀ n, (P1863259757055016485.a n : ℤ) = A011533 (n + 1)

theorem P1863259757055016485.correct : P1863259757055016485.Spec := by
  intro n
  simp only [A011533, Nat.add_sub_cancel]

end A011533

/-! ## A011533.P3348817324106878631

`lt[∏{digits}[n, (3-#)²], 1]`
-/

namespace A011533.P3348817324106878631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => (3 - (x : ℤ)) ^ 2).prod

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A011533.P3348817324106878631

namespace A011533

/-- `lt[∏{digits}[n, (3-#)²], 1]` -/
def P3348817324106878631.Spec : Prop :=
  ∀ n, (P3348817324106878631.a n : ℤ) = A011533 (n + 1)

end A011533

/-! ## A011533.P1498100295460769444

`lt[A004178(n), n]`
-/

namespace A011533.P1498100295460769444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004178 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A011533.P1498100295460769444

namespace A011533

/-- `lt[A004178(n), n]` -/
def P1498100295460769444.Spec : Prop :=
  ∀ n, (P1498100295460769444.a n : ℤ) = A011533 (n + 1)

end A011533

/-! ## A011533.P1409351657913683699

`lt[log(2), A316864(n)]`
-/

namespace A011533.P1409351657913683699
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (2 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A011533.P1409351657913683699

namespace A011533

/-- `lt[log(2), A316864(n)]` -/
def P1409351657913683699.Spec : Prop :=
  ∀ n, (P1409351657913683699.a n : ℤ) = A011533 (n + 1)

end A011533

/-! ## A011533.P8772642214468737388

`lt[2, and(10, A086066(n))]`
-/

namespace A011533.P8772642214468737388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 10 (A086066 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A011533.P8772642214468737388

namespace A011533

/-- `lt[2, and(10, A086066(n))]` -/
def P8772642214468737388.Spec : Prop :=
  ∀ n, (P8772642214468737388.a n : ℤ) = A011533 (n + 1)

end A011533

/-! ## A011533.P9717353271116972919

`eq[2, A211396(A035044(n))]`
-/

namespace A011533.P9717353271116972919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 (A035044 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011533.P9717353271116972919

namespace A011533

/-- `eq[2, A211396(A035044(n))]` -/
def P9717353271116972919.Spec : Prop :=
  ∀ n, (P9717353271116972919.a n : ℤ) = A011533 (n + 1)

end A011533

/-! ## A011533.P15964922585924819573

`eq[2, A211396(A306436(n))]`
-/

namespace A011533.P15964922585924819573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 (A306436 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011533.P15964922585924819573

namespace A011533

/-- `eq[2, A211396(A306436(n))]` -/
def P15964922585924819573.Spec : Prop :=
  ∀ n, (P15964922585924819573.a n : ℤ) = A011533 (n + 1)

end A011533

/-! ## A011533.P3309873755744607188

`eq[7, A006530(A298372(n))]`
-/

namespace A011533.P3309873755744607188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A298372 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011533.P3309873755744607188

namespace A011533

/-- `eq[7, A006530(A298372(n))]` -/
def P3309873755744607188.Spec : Prop :=
  ∀ n, (P3309873755744607188.a n : ℤ) = A011533 (n + 1)

end A011533

/-! ## A011533.P18286382838568723980

`lt[8, A054055(A222239(n))]`
-/

namespace A011533.P18286382838568723980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A222239 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A011533.P18286382838568723980

namespace A011533

/-- `lt[8, A054055(A222239(n))]` -/
def P18286382838568723980.Spec : Prop :=
  ∀ n, (P18286382838568723980.a n : ℤ) = A011533 (n + 1)

end A011533

/-! ## A011533.P11200016053032752489

`eq[2, A211396(n-A136400(n))]`
-/

namespace A011533.P11200016053032752489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 ((n : ℤ) - A136400 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011533.P11200016053032752489

namespace A011533

/-- `eq[2, A211396(n-A136400(n))]` -/
def P11200016053032752489.Spec : Prop :=
  ∀ n, (P11200016053032752489.a n : ℤ) = A011533 (n + 1)

end A011533

/-! ## A011533.P5455220517308484905

`lt[2*A004179(A222234(n)), n]`
-/

namespace A011533.P5455220517308484905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004179 (A222234 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A011533.P5455220517308484905

namespace A011533

/-- `lt[2*A004179(A222234(n)), n]` -/
def P5455220517308484905.Spec : Prop :=
  ∀ n, (P5455220517308484905.a n : ℤ) = A011533 (n + 1)

end A011533

/-! ## A011533.P17917771509474181475

`lt[A004179(n), A222234(A004179(n))]`
-/

namespace A011533.P17917771509474181475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A004179 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A011533.P17917771509474181475

namespace A011533

/-- `lt[A004179(n), A222234(A004179(n))]` -/
def P17917771509474181475.Spec : Prop :=
  ∀ n, (P17917771509474181475.a n : ℤ) = A011533 (n + 1)

end A011533

/-! ## A011533.P10581712541073048380

`lt[A004183(n), A222238(A004183(n))]`
-/

namespace A011533.P10581712541073048380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (A004183 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A011533.P10581712541073048380

namespace A011533

/-- `lt[A004183(n), A222238(A004183(n))]` -/
def P10581712541073048380.Spec : Prop :=
  ∀ n, (P10581712541073048380.a n : ℤ) = A011533 (n + 1)

end A011533

/-! ## A011533.P5743611638022093805

`lt[A102669(A107130(n)), A102669(n)]`
-/

namespace A011533.P5743611638022093805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A107130 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A011533.P5743611638022093805

namespace A011533

/-- `lt[A102669(A107130(n)), A102669(n)]` -/
def P5743611638022093805.Spec : Prop :=
  ∀ n, (P5743611638022093805.a n : ℤ) = A011533 (n + 1)

end A011533

/-! ## A011533.P6316335318879351367

`lt[A054055(n), A316864(n)+A054055(n)]`
-/

namespace A011533.P6316335318879351367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 n + A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A011533.P6316335318879351367

namespace A011533

/-- `lt[A054055(n), A316864(n)+A054055(n)]` -/
def P6316335318879351367.Spec : Prop :=
  ∀ n, (P6316335318879351367.a n : ℤ) = A011533 (n + 1)

end A011533

/-! ## A011533.P14775412167588784332

`lt[A222238(n), A316864(n)+A222238(n)]`
-/

namespace A011533.P14775412167588784332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 n + A222238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A011533.P14775412167588784332

namespace A011533

/-- `lt[A222238(n), A316864(n)+A222238(n)]` -/
def P14775412167588784332.Spec : Prop :=
  ∀ n, (P14775412167588784332.a n : ℤ) = A011533 (n + 1)

end A011533

/-! ## A011533.P13009233683651975888

`lt[A268643(n), A316864(n)+A268643(n)]`
-/

namespace A011533.P13009233683651975888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 n + A268643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A011533.P13009233683651975888

namespace A011533

/-- `lt[A268643(n), A316864(n)+A268643(n)]` -/
def P13009233683651975888.Spec : Prop :=
  ∀ n, (P13009233683651975888.a n : ℤ) = A011533 (n + 1)

end A011533

/-! ## A011533.P6729375408754858061

`comp[A004722(n)]`
-/

namespace A011533.P6729375408754858061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004722 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A011533.P6729375408754858061

namespace A011533

/-- `comp[A004722(n)]` -/
def P6729375408754858061.Spec : Prop :=
  ∀ n, (P6729375408754858061.a n : ℤ) = A011533 (n + 1)

end A011533

/-! ## A011533.P8717933315115015733

`comp[A004178(n)]`
-/

namespace A011533.P8717933315115015733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004178 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A011533.P8717933315115015733

namespace A011533

/-- `comp[A004178(n)]` -/
def P8717933315115015733.Spec : Prop :=
  ∀ n, (P8717933315115015733.a n : ℤ) = A011533 (n + 1)

end A011533

/-!
# A011534: Numbers that contain a 4.

The programs for A011534, the canonical program `A011534.P15152361579944605440` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011534 has offset 1).

The definition of A011534 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011534.P15152361579944605440

`lt[A064532(n), A064692(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A011534

/-- `lt[A064532(n), A064692(n)]` -/
def P15152361579944605440.Spec : Prop :=
  ∀ n, (P15152361579944605440.a n : ℤ) = A011534 (n + 1)

theorem P15152361579944605440.correct : P15152361579944605440.Spec := by
  intro n
  simp only [A011534, Nat.add_sub_cancel]

end A011534

/-! ## A011534.P10533258045049955998

`comp[A052406(n+1)]`
-/

namespace A011534.P10533258045049955998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A011534.P10533258045049955998

namespace A011534

/-- `comp[A052406(n+1)]` -/
def P10533258045049955998.Spec : Prop :=
  ∀ n, (P10533258045049955998.a n : ℤ) = A011534 (n + 1)

end A011534

/-! ## A011534.P3936011820147480608

`eq[0, ∏{digits}[n, 4-#]]`
-/

namespace A011534.P3936011820147480608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => 4 - (x : ℤ)).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011534.P3936011820147480608

namespace A011534

/-- `eq[0, ∏{digits}[n, 4-#]]` -/
def P3936011820147480608.Spec : Prop :=
  ∀ n, (P3936011820147480608.a n : ℤ) = A011534 (n + 1)

end A011534

/-! ## A011534.P15676515082522034262

`lt[∏{digits}[n, (4-#)²], 1]`
-/

namespace A011534.P15676515082522034262
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => (4 - (x : ℤ)) ^ 2).prod

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A011534.P15676515082522034262

namespace A011534

/-- `lt[∏{digits}[n, (4-#)²], 1]` -/
def P15676515082522034262.Spec : Prop :=
  ∀ n, (P15676515082522034262.a n : ℤ) = A011534 (n + 1)

end A011534

/-! ## A011534.P17935588492892176290

`lt[A004179(n), n]`
-/

namespace A011534.P17935588492892176290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A011534.P17935588492892176290

namespace A011534

/-- `lt[A004179(n), n]` -/
def P17935588492892176290.Spec : Prop :=
  ∀ n, (P17935588492892176290.a n : ℤ) = A011534 (n + 1)

end A011534

/-! ## A011534.P16037275889692517775

`lt[1, n*A316865(n)]`
-/

namespace A011534.P16037275889692517775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A316865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A011534.P16037275889692517775

namespace A011534

/-- `lt[1, n*A316865(n)]` -/
def P16037275889692517775.Spec : Prop :=
  ∀ n, (P16037275889692517775.a n : ℤ) = A011534 (n + 1)

end A011534

/-! ## A011534.P15584759443071783297

`eq[2, A211396(A222228(n))]`
-/

namespace A011534.P15584759443071783297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 (A222228 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011534.P15584759443071783297

namespace A011534

/-- `eq[2, A211396(A222228(n))]` -/
def P15584759443071783297.Spec : Prop :=
  ∀ n, (P15584759443071783297.a n : ℤ) = A011534 (n + 1)

end A011534

/-! ## A011534.P10787753621058243148

`lt[A027386(n), A027387(n)]`
-/

namespace A011534.P10787753621058243148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027386 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A011534.P10787753621058243148

namespace A011534

/-- `lt[A027386(n), A027387(n)]` -/
def P10787753621058243148.Spec : Prop :=
  ∀ n, (P10787753621058243148.a n : ℤ) = A011534 (n + 1)

end A011534

/-! ## A011534.P13997357246802067617

`lt[A027388(n), A027389(n)]`
-/

namespace A011534.P13997357246802067617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027389 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A011534.P13997357246802067617

namespace A011534

/-- `lt[A027388(n), A027389(n)]` -/
def P13997357246802067617.Spec : Prop :=
  ∀ n, (P13997357246802067617.a n : ℤ) = A011534 (n + 1)

end A011534

/-! ## A011534.P3463144921151097840

`comp[A004723(n)]`
-/

namespace A011534.P3463144921151097840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004723 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A011534.P3463144921151097840

namespace A011534

/-- `comp[A004723(n)]` -/
def P3463144921151097840.Spec : Prop :=
  ∀ n, (P3463144921151097840.a n : ℤ) = A011534 (n + 1)

end A011534

/-! ## A011534.P3662779958460512803

`comp[A004179(n)]`
-/

namespace A011534.P3662779958460512803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A011534.P3662779958460512803

namespace A011534

/-- `comp[A004179(n)]` -/
def P3662779958460512803.Spec : Prop :=
  ∀ n, (P3662779958460512803.a n : ℤ) = A011534 (n + 1)

end A011534

/-! ## A011534.P2754021546086652677

`eq[A137564(A017317(n)), A137564(n)]`
-/

namespace A011534.P2754021546086652677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A017317 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A011534.P2754021546086652677

namespace A011534

/-- `eq[A137564(A017317(n)), A137564(n)]` -/
def P2754021546086652677.Spec : Prop :=
  ∀ n, (P2754021546086652677.a n : ℤ) = A011534 (n + 1)

end A011534

/-!
# A011535: Numbers that contain a 5.

The programs for A011535, the canonical program `A011535.P12013536941063717587` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011535 has offset 1).

The definition of A011535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011535.P16257933208457221993

`comp[A052413(n+1)]`
-/

namespace A011535.P16257933208457221993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A011535.P16257933208457221993

namespace A011535

/-- `comp[A052413(n+1)]` -/
def P16257933208457221993.Spec : Prop :=
  ∀ n, (P16257933208457221993.a n : ℤ) = A011535 (n + 1)

end A011535

/-! ## A011535.P17213481228907385543

`lt[A004180(n), n]`
-/

namespace A011535.P17213481228907385543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A011535.P17213481228907385543

namespace A011535

/-- `lt[A004180(n), n]` -/
def P17213481228907385543.Spec : Prop :=
  ∀ n, (P17213481228907385543.a n : ℤ) = A011535 (n + 1)

end A011535

/-! ## A011535.P12013536941063717587

`lt[1, n*A316866(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A011535

/-- `lt[1, n*A316866(n)]` -/
def P12013536941063717587.Spec : Prop :=
  ∀ n, (P12013536941063717587.a n : ℤ) = A011535 (n + 1)

theorem P12013536941063717587.correct : P12013536941063717587.Spec := by
  intro n
  simp only [A011535, Nat.add_sub_cancel]

end A011535

/-! ## A011535.P5721895347100802761

`eq[0, A070609(A051801(n))]`
-/

namespace A011535.P5721895347100802761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070609 (A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011535.P5721895347100802761

namespace A011535

/-- `eq[0, A070609(A051801(n))]` -/
def P5721895347100802761.Spec : Prop :=
  ∀ n, (P5721895347100802761.a n : ℤ) = A011535 (n + 1)

end A011535

/-! ## A011535.P1649762128728481659

`eq[0, A113973(A214950(n))]`
-/

namespace A011535.P1649762128728481659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113973 (A214950 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011535.P1649762128728481659

namespace A011535

/-- `eq[0, A113973(A214950(n))]` -/
def P1649762128728481659.Spec : Prop :=
  ∀ n, (P1649762128728481659.a n : ℤ) = A011535 (n + 1)

end A011535

/-! ## A011535.P14514912349459011355

`lt[A004179(A222240(n)), n]`
-/

namespace A011535.P14514912349459011355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 (A222240 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A011535.P14514912349459011355

namespace A011535

/-- `lt[A004179(A222240(n)), n]` -/
def P14514912349459011355.Spec : Prop :=
  ∀ n, (P14514912349459011355.a n : ℤ) = A011535 (n + 1)

end A011535

/-! ## A011535.P8513163372993131503

`eq[2, A173635(A051801(n)-1)]`
-/

namespace A011535.P8513163372993131503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173635 (A051801 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011535.P8513163372993131503

namespace A011535

/-- `eq[2, A173635(A051801(n)-1)]` -/
def P8513163372993131503.Spec : Prop :=
  ∀ n, (P8513163372993131503.a n : ℤ) = A011535 (n + 1)

end A011535

/-! ## A011535.P2851649116441511500

`lt[A107128(n), A222245(A107128(n))]`
-/

namespace A011535.P2851649116441511500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A107128 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A011535.P2851649116441511500

namespace A011535

/-- `lt[A107128(n), A222245(A107128(n))]` -/
def P2851649116441511500.Spec : Prop :=
  ∀ n, (P2851649116441511500.a n : ℤ) = A011535 (n + 1)

end A011535

/-! ## A011535.P16764859494346897396

`lt[A003132(n), A316866(n)+A003132(n)]`
-/

namespace A011535.P16764859494346897396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 n + A003132 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A011535.P16764859494346897396

namespace A011535

/-- `lt[A003132(n), A316866(n)+A003132(n)]` -/
def P16764859494346897396.Spec : Prop :=
  ∀ n, (P16764859494346897396.a n : ℤ) = A011535 (n + 1)

end A011535

/-! ## A011535.P18246089606746351824

`lt[A222214(n), A316866(n)+A222214(n)]`
-/

namespace A011535.P18246089606746351824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 n + A222214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A011535.P18246089606746351824

namespace A011535

/-- `lt[A222214(n), A316866(n)+A222214(n)]` -/
def P18246089606746351824.Spec : Prop :=
  ∀ n, (P18246089606746351824.a n : ℤ) = A011535 (n + 1)

end A011535

/-! ## A011535.P14627529196737867495

`comp[A004180(n)]`
-/

namespace A011535.P14627529196737867495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A011535.P14627529196737867495

namespace A011535

/-- `comp[A004180(n)]` -/
def P14627529196737867495.Spec : Prop :=
  ∀ n, (P14627529196737867495.a n : ℤ) = A011535 (n + 1)

end A011535

/-! ## A011535.P6911960968848259551

`comp[A004724(n)]`
-/

namespace A011535.P6911960968848259551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004724 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A011535.P6911960968848259551

namespace A011535

/-- `comp[A004724(n)]` -/
def P6911960968848259551.Spec : Prop :=
  ∀ n, (P6911960968848259551.a n : ℤ) = A011535 (n + 1)

end A011535

/-! ## A011535.P17355748193268484790

`lt[A102669(2*n), A055640(n)]`
-/

namespace A011535.P17355748193268484790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A011535.P17355748193268484790

namespace A011535

/-- `lt[A102669(2*n), A055640(n)]` -/
def P17355748193268484790.Spec : Prop :=
  ∀ n, (P17355748193268484790.a n : ℤ) = A011535 (n + 1)

end A011535

/-! ## A011535.P5796928931242991836

`eq[A227362(10*n+5), A227362(n)]`
-/

namespace A011535.P5796928931242991836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (10 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A011535.P5796928931242991836

namespace A011535

/-- `eq[A227362(10*n+5), A227362(n)]` -/
def P5796928931242991836.Spec : Prop :=
  ∀ n, (P5796928931242991836.a n : ℤ) = A011535 (n + 1)

end A011535

/-! ## A011535.P17881883940258904740

`eq[A214950(A017329(n)), A214950(n)]`
-/

namespace A011535.P17881883940258904740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214950 (A017329 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A011535.P17881883940258904740

namespace A011535

/-- `eq[A214950(A017329(n)), A214950(n)]` -/
def P17881883940258904740.Spec : Prop :=
  ∀ n, (P17881883940258904740.a n : ℤ) = A011535 (n + 1)

end A011535

/-! ## A011535.P13329534432760024907

`eq[A137564(A017317(n)+1), A137564(n)]`
-/

namespace A011535.P13329534432760024907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A017317 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A011535.P13329534432760024907

namespace A011535

/-- `eq[A137564(A017317(n)+1), A137564(n)]` -/
def P13329534432760024907.Spec : Prop :=
  ∀ n, (P13329534432760024907.a n : ℤ) = A011535 (n + 1)

end A011535

/-! ## A011535.P764047588490742959

`eq[A086066(A017305(n)+2), A086066(n)]`
-/

namespace A011535.P764047588490742959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 (A017305 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A011535.P764047588490742959

namespace A011535

/-- `eq[A086066(A017305(n)+2), A086066(n)]` -/
def P764047588490742959.Spec : Prop :=
  ∀ n, (P764047588490742959.a n : ℤ) = A011535 (n + 1)

end A011535

/-! ## A011535.P12323519508117965407

`eq[A137564(A017305(n)+2), A137564(n)]`
-/

namespace A011535.P12323519508117965407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A017305 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A011535.P12323519508117965407

namespace A011535

/-- `eq[A137564(A017305(n)+2), A137564(n)]` -/
def P12323519508117965407.Spec : Prop :=
  ∀ n, (P12323519508117965407.a n : ℤ) = A011535 (n + 1)

end A011535

/-! ## A011535.P11241685183780079030

`eq[A137564(A017341(n)-1), A137564(n)]`
-/

namespace A011535.P11241685183780079030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A017341 n - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A011535.P11241685183780079030

namespace A011535

/-- `eq[A137564(A017341(n)-1), A137564(n)]` -/
def P11241685183780079030.Spec : Prop :=
  ∀ n, (P11241685183780079030.a n : ℤ) = A011535 (n + 1)

end A011535

/-! ## A011535.P4238090499055610013

`eq[A086066(A017353(n)-2), A086066(n)]`
-/

namespace A011535.P4238090499055610013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 (A017353 n - 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A011535.P4238090499055610013

namespace A011535

/-- `eq[A086066(A017353(n)-2), A086066(n)]` -/
def P4238090499055610013.Spec : Prop :=
  ∀ n, (P4238090499055610013.a n : ℤ) = A011535 (n + 1)

end A011535

/-!
# A011536: Numbers that contain a 6.

The programs for A011536, the canonical program `A011536.P6054837259103700799` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011536 has offset 1).

The definition of A011536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011536.P9003684049408407234

`comp[A052414(n+1)]`
-/

namespace A011536.P9003684049408407234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A011536.P9003684049408407234

namespace A011536

/-- `comp[A052414(n+1)]` -/
def P9003684049408407234.Spec : Prop :=
  ∀ n, (P9003684049408407234.a n : ℤ) = A011536 (n + 1)

end A011536

/-! ## A011536.P16267605845546654465

`lt[A004181(n), n]`
-/

namespace A011536.P16267605845546654465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004181 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A011536.P16267605845546654465

namespace A011536

/-- `lt[A004181(n), n]` -/
def P16267605845546654465.Spec : Prop :=
  ∀ n, (P16267605845546654465.a n : ℤ) = A011536 (n + 1)

end A011536

/-! ## A011536.P6054837259103700799

`lt[1, n*A316867(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A011536

/-- `lt[1, n*A316867(n)]` -/
def P6054837259103700799.Spec : Prop :=
  ∀ n, (P6054837259103700799.a n : ℤ) = A011536 (n + 1)

theorem P6054837259103700799.correct : P6054837259103700799.Spec := by
  intro n
  simp only [A011536, Nat.add_sub_cancel]

end A011536

/-! ## A011536.P3180385442653049860

`eq[4, A061395(A089898(n))]`
-/

namespace A011536.P3180385442653049860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A089898 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011536.P3180385442653049860

namespace A011536

/-- `eq[4, A061395(A089898(n))]` -/
def P3180385442653049860.Spec : Prop :=
  ∀ n, (P3180385442653049860.a n : ℤ) = A011536 (n + 1)

end A011536

/-! ## A011536.P6248285111765380456

`lt[A063720(n), A277116(n)]`
-/

namespace A011536.P6248285111765380456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063720 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A011536.P6248285111765380456

namespace A011536

/-- `lt[A063720(n), A277116(n)]` -/
def P6248285111765380456.Spec : Prop :=
  ∀ n, (P6248285111765380456.a n : ℤ) = A011536 (n + 1)

end A011536

/-! ## A011536.P169136885516649010

`lt[2*A004184(A222251(n)), n]`
-/

namespace A011536.P169136885516649010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004184 (A222251 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A011536.P169136885516649010

namespace A011536

/-- `lt[2*A004184(A222251(n)), n]` -/
def P169136885516649010.Spec : Prop :=
  ∀ n, (P169136885516649010.a n : ℤ) = A011536 (n + 1)

end A011536

/-! ## A011536.P149464515286780684

`lt[n/A168425(n+1), A316867(n)]`
-/

namespace A011536.P149464515286780684
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A168425 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A011536.P149464515286780684

namespace A011536

/-- `lt[n/A168425(n+1), A316867(n)]` -/
def P149464515286780684.Spec : Prop :=
  ∀ n, (P149464515286780684.a n : ℤ) = A011536 (n + 1)

end A011536

/-! ## A011536.P2045398695927271122

`lt[A004184(n), A222251(A004184(n))]`
-/

namespace A011536.P2045398695927271122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A004184 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A011536.P2045398695927271122

namespace A011536

/-- `lt[A004184(n), A222251(A004184(n))]` -/
def P2045398695927271122.Spec : Prop :=
  ∀ n, (P2045398695927271122.a n : ℤ) = A011536 (n + 1)

end A011536

/-! ## A011536.P16994431167488795177

`lt[A222245(A107130(n)), A107130(n)]`
-/

namespace A011536.P16994431167488795177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A107130 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107130 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A011536.P16994431167488795177

namespace A011536

/-- `lt[A222245(A107130(n)), A107130(n)]` -/
def P16994431167488795177.Spec : Prop :=
  ∀ n, (P16994431167488795177.a n : ℤ) = A011536 (n + 1)

end A011536

/-! ## A011536.P17189706081157822334

`lt[A222245(A227362(n)), A227362(n)]`
-/

namespace A011536.P17189706081157822334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A227362 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A011536.P17189706081157822334

namespace A011536

/-- `lt[A222245(A227362(n)), A227362(n)]` -/
def P17189706081157822334.Spec : Prop :=
  ∀ n, (P17189706081157822334.a n : ℤ) = A011536 (n + 1)

end A011536

/-! ## A011536.P14970286040441494997

`lt[A000122(n), A316867(n)+A000122(n)]`
-/

namespace A011536.P14970286040441494997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 n + A000122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A011536.P14970286040441494997

namespace A011536

/-- `lt[A000122(n), A316867(n)+A000122(n)]` -/
def P14970286040441494997.Spec : Prop :=
  ∀ n, (P14970286040441494997.a n : ℤ) = A011536 (n + 1)

end A011536

/-! ## A011536.P5963208338827574613

`lt[A054055(n), A316867(n)+A054055(n)]`
-/

namespace A011536.P5963208338827574613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 n + A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A011536.P5963208338827574613

namespace A011536

/-- `lt[A054055(n), A316867(n)+A054055(n)]` -/
def P5963208338827574613.Spec : Prop :=
  ∀ n, (P5963208338827574613.a n : ℤ) = A011536 (n + 1)

end A011536

/-! ## A011536.P646204442094715198

`lt[A097325(n), A316867(n)+A097325(n)]`
-/

namespace A011536.P646204442094715198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 n + A097325 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A011536.P646204442094715198

namespace A011536

/-- `lt[A097325(n), A316867(n)+A097325(n)]` -/
def P646204442094715198.Spec : Prop :=
  ∀ n, (P646204442094715198.a n : ℤ) = A011536 (n + 1)

end A011536

/-! ## A011536.P1121846684036480280

`lt[A137564(n), A316867(n)+A137564(n)]`
-/

namespace A011536.P1121846684036480280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 n + A137564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A011536.P1121846684036480280

namespace A011536

/-- `lt[A137564(n), A316867(n)+A137564(n)]` -/
def P1121846684036480280.Spec : Prop :=
  ∀ n, (P1121846684036480280.a n : ℤ) = A011536 (n + 1)

end A011536

/-! ## A011536.P12132572064960914138

`lt[A168046(A222215(n))*A222215(n), n]`
-/

namespace A011536.P12132572064960914138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 (A222215 n).toNat * A222215 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A011536.P12132572064960914138

namespace A011536

/-- `lt[A168046(A222215(n))*A222215(n), n]` -/
def P12132572064960914138.Spec : Prop :=
  ∀ n, (P12132572064960914138.a n : ℤ) = A011536 (n + 1)

end A011536

/-! ## A011536.P824765793924020077

`comp[A004181(n)]`
-/

namespace A011536.P824765793924020077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004181 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A011536.P824765793924020077

namespace A011536

/-- `comp[A004181(n)]` -/
def P824765793924020077.Spec : Prop :=
  ∀ n, (P824765793924020077.a n : ℤ) = A011536 (n + 1)

end A011536

/-! ## A011536.P6882446919964004472

`comp[A004725(n)]`
-/

namespace A011536.P6882446919964004472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004725 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A011536.P6882446919964004472

namespace A011536

/-- `comp[A004725(n)]` -/
def P6882446919964004472.Spec : Prop :=
  ∀ n, (P6882446919964004472.a n : ℤ) = A011536 (n + 1)

end A011536

/-! ## A011536.P16613814086853365749

`eq[13, gcd(13, A113581(n))]`
-/

namespace A011536.P16613814086853365749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 13 (A113581 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A011536.P16613814086853365749

namespace A011536

/-- `eq[13, gcd(13, A113581(n))]` -/
def P16613814086853365749.Spec : Prop :=
  ∀ n, (P16613814086853365749.a n : ℤ) = A011536 (n + 1)

end A011536

/-! ## A011536.P15733156973728511689

`eq[A137564(A017341(n)), A137564(n)]`
-/

namespace A011536.P15733156973728511689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A017341 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A011536.P15733156973728511689

namespace A011536

/-- `eq[A137564(A017341(n)), A137564(n)]` -/
def P15733156973728511689.Spec : Prop :=
  ∀ n, (P15733156973728511689.a n : ℤ) = A011536 (n + 1)

end A011536

/-! ## A011536.P2802215261469290524

`eq[A227362(A017341(n)), A227362(n)]`
-/

namespace A011536.P2802215261469290524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (A017341 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A011536.P2802215261469290524

namespace A011536

/-- `eq[A227362(A017341(n)), A227362(n)]` -/
def P2802215261469290524.Spec : Prop :=
  ∀ n, (P2802215261469290524.a n : ℤ) = A011536 (n + 1)

end A011536

/-!
# A011537: Numbers that contain at least one 7.

The programs for A011537, the canonical program `A011537.P8956265041725980081` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011537 has offset 1).

The definition of A011537 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011537.P1823463731422891172

`lt[A004182(n), n]`
-/

namespace A011537.P1823463731422891172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004182 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A011537.P1823463731422891172

namespace A011537

/-- `lt[A004182(n), n]` -/
def P1823463731422891172.Spec : Prop :=
  ∀ n, (P1823463731422891172.a n : ℤ) = A011537 (n + 1)

end A011537

/-! ## A011537.P17363892653585740394

`comp[A052419(n+1)]`
-/

namespace A011537.P17363892653585740394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A011537.P17363892653585740394

namespace A011537

/-- `comp[A052419(n+1)]` -/
def P17363892653585740394.Spec : Prop :=
  ∀ n, (P17363892653585740394.a n : ℤ) = A011537 (n + 1)

end A011537

/-! ## A011537.P8272642318287877628

`comp[A004182(n)]`
-/

namespace A011537.P8272642318287877628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004182 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A011537.P8272642318287877628

namespace A011537

/-- `comp[A004182(n)]` -/
def P8272642318287877628.Spec : Prop :=
  ∀ n, (P8272642318287877628.a n : ℤ) = A011537 (n + 1)

end A011537

/-! ## A011537.P8956265041725980081

`lt[1, n*A316868(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A011537

/-- `lt[1, n*A316868(n)]` -/
def P8956265041725980081.Spec : Prop :=
  ∀ n, (P8956265041725980081.a n : ℤ) = A011537 (n + 1)

theorem P8956265041725980081.correct : P8956265041725980081.Spec := by
  intro n
  simp only [A011537, Nat.add_sub_cancel]

end A011537

/-! ## A011537.P10804979923789747704

`eq[1, A285802(n+1)]+1`
-/

namespace A011537.P10804979923789747704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285802 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A011537.P10804979923789747704

namespace A011537

/-- `eq[1, A285802(n+1)]+1` -/
def P10804979923789747704.Spec : Prop :=
  ∀ n, (P10804979923789747704.a n : ℤ) = A011537 (n + 1)

end A011537

/-! ## A011537.P6269640073184990605

`eq[7, A006530(A051801(n))]`
-/

namespace A011537.P6269640073184990605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011537.P6269640073184990605

namespace A011537

/-- `eq[7, A006530(A051801(n))]` -/
def P6269640073184990605.Spec : Prop :=
  ∀ n, (P6269640073184990605.a n : ℤ) = A011537 (n + 1)

end A011537

/-! ## A011537.P10444231630355562924

`eq[7, A006530(A214950(n))]`
-/

namespace A011537.P10444231630355562924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A214950 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011537.P10444231630355562924

namespace A011537

/-- `eq[7, A006530(A214950(n))]` -/
def P10444231630355562924.Spec : Prop :=
  ∀ n, (P10444231630355562924.a n : ℤ) = A011537 (n + 1)

end A011537

/-! ## A011537.P11348239371400307802

`lt[8, A054055(A222253(n))]`
-/

namespace A011537.P11348239371400307802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A222253 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A011537.P11348239371400307802

namespace A011537

/-- `lt[8, A054055(A222253(n))]` -/
def P11348239371400307802.Spec : Prop :=
  ∀ n, (P11348239371400307802.a n : ℤ) = A011537 (n + 1)

end A011537

/-! ## A011537.P11329712163335123715

`lt[2*A004183(A222252(n)), n]`
-/

namespace A011537.P11329712163335123715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004183 (A222252 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A011537.P11329712163335123715

namespace A011537

/-- `lt[2*A004183(A222252(n)), n]` -/
def P11329712163335123715.Spec : Prop :=
  ∀ n, (P11329712163335123715.a n : ℤ) = A011537 (n + 1)

end A011537

/-! ## A011537.P16102632116471108791

`eq[0, val(A006942(n), A010371(n))]`
-/

namespace A011537.P16102632116471108791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006942 n).toNat (A010371 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A011537.P16102632116471108791

namespace A011537

/-- `eq[0, val(A006942(n), A010371(n))]` -/
def P16102632116471108791.Spec : Prop :=
  ∀ n, (P16102632116471108791.a n : ℤ) = A011537 (n + 1)

end A011537

/-! ## A011537.P1628266895344603737

`lt[A004183(n), A222252(A004183(n))]`
-/

namespace A011537.P1628266895344603737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A004183 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A011537.P1628266895344603737

namespace A011537

/-- `lt[A004183(n), A222252(A004183(n))]` -/
def P1628266895344603737.Spec : Prop :=
  ∀ n, (P1628266895344603737.a n : ℤ) = A011537 (n + 1)

end A011537

/-! ## A011537.P10571241768551743230

`lt[A003132(n), A316868(n)+A003132(n)]`
-/

namespace A011537.P10571241768551743230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 n + A003132 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A011537.P10571241768551743230

namespace A011537

/-- `lt[A003132(n), A316868(n)+A003132(n)]` -/
def P10571241768551743230.Spec : Prop :=
  ∀ n, (P10571241768551743230.a n : ℤ) = A011537 (n + 1)

end A011537

/-! ## A011537.P11397562699722715096

`lt[A109720(n), A316868(n)+A109720(n)]`
-/

namespace A011537.P11397562699722715096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109720 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 n + A109720 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A011537.P11397562699722715096

namespace A011537

/-- `lt[A109720(n), A316868(n)+A109720(n)]` -/
def P11397562699722715096.Spec : Prop :=
  ∀ n, (P11397562699722715096.a n : ℤ) = A011537 (n + 1)

end A011537

/-! ## A011537.P4259781771362898617

`comp[A004726(n)]`
-/

namespace A011537.P4259781771362898617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004726 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A011537.P4259781771362898617

namespace A011537

/-- `comp[A004726(n)]` -/
def P4259781771362898617.Spec : Prop :=
  ∀ n, (P4259781771362898617.a n : ℤ) = A011537 (n + 1)

end A011537

/-! ## A011537.P9040453721434603140

`eq[1, A285802(A017365(n))]`
-/

namespace A011537.P9040453721434603140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285802 (A017365 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011537.P9040453721434603140

namespace A011537

/-- `eq[1, A285802(A017365(n))]` -/
def P9040453721434603140.Spec : Prop :=
  ∀ n, (P9040453721434603140.a n : ℤ) = A011537 (n + 1)

end A011537

/-! ## A011537.P11128728393979757349

`eq[A086066(A017353(n)), A086066(n)]`
-/

namespace A011537.P11128728393979757349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 (A017353 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A011537.P11128728393979757349

namespace A011537

/-- `eq[A086066(A017353(n)), A086066(n)]` -/
def P11128728393979757349.Spec : Prop :=
  ∀ n, (P11128728393979757349.a n : ℤ) = A011537 (n + 1)

end A011537

/-! ## A011537.P12823769784624487315

`eq[A137564(A017353(n)), A137564(n)]`
-/

namespace A011537.P12823769784624487315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A017353 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A011537.P12823769784624487315

namespace A011537

/-- `eq[A137564(A017353(n)), A137564(n)]` -/
def P12823769784624487315.Spec : Prop :=
  ∀ n, (P12823769784624487315.a n : ℤ) = A011537 (n + 1)

end A011537

/-! ## A011537.P919962650632481526

`eq[A227362(A017353(n)), A227362(n)]`
-/

namespace A011537.P919962650632481526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (A017353 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A011537.P919962650632481526

namespace A011537

/-- `eq[A227362(A017353(n)), A227362(n)]` -/
def P919962650632481526.Spec : Prop :=
  ∀ n, (P919962650632481526.a n : ℤ) = A011537 (n + 1)

end A011537

/-! ## A011537.P11090913054938556934

`eq[A137564(A017341(n)+1), A137564(n)]`
-/

namespace A011537.P11090913054938556934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A017341 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A011537.P11090913054938556934

namespace A011537

/-- `eq[A137564(A017341(n)+1), A137564(n)]` -/
def P11090913054938556934.Spec : Prop :=
  ∀ n, (P11090913054938556934.a n : ℤ) = A011537 (n + 1)

end A011537

/-! ## A011537.P18177578754361748150

`eq[A227362(A017341(n)+1), A227362(n)]`
-/

namespace A011537.P18177578754361748150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (A017341 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A011537.P18177578754361748150

namespace A011537

/-- `eq[A227362(A017341(n)+1), A227362(n)]` -/
def P18177578754361748150.Spec : Prop :=
  ∀ n, (P18177578754361748150.a n : ℤ) = A011537 (n + 1)

end A011537

/-!
# A011538: Numbers that contain an 8.

The programs for A011538, the canonical program `A011538.P9841498883370529558` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011538 has offset 1).

The definition of A011538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011538.P383234287881611205

`comp[A052421(n+1)]`
-/

namespace A011538.P383234287881611205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A011538.P383234287881611205

namespace A011538

/-- `comp[A052421(n+1)]` -/
def P383234287881611205.Spec : Prop :=
  ∀ n, (P383234287881611205.a n : ℤ) = A011538 (n + 1)

end A011538

/-! ## A011538.P12497488540282821509

`eq[8, A134777(n)]`
-/

namespace A011538.P12497488540282821509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134777 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011538.P12497488540282821509

namespace A011538

/-- `eq[8, A134777(n)]` -/
def P12497488540282821509.Spec : Prop :=
  ∀ n, (P12497488540282821509.a n : ℤ) = A011538 (n + 1)

end A011538

/-! ## A011538.P15901252239625613270

`lt[A004183(n), n]`
-/

namespace A011538.P15901252239625613270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A011538.P15901252239625613270

namespace A011538

/-- `lt[A004183(n), n]` -/
def P15901252239625613270.Spec : Prop :=
  ∀ n, (P15901252239625613270.a n : ℤ) = A011538 (n + 1)

end A011538

/-! ## A011538.P9841498883370529558

`lt[1, n*A316869(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A011538

/-- `lt[1, n*A316869(n)]` -/
def P9841498883370529558.Spec : Prop :=
  ∀ n, (P9841498883370529558.a n : ℤ) = A011538 (n + 1)

theorem P9841498883370529558.correct : P9841498883370529558.Spec := by
  intro n
  simp only [A011538, Nat.add_sub_cancel]

end A011538

/-! ## A011538.P10232930474611649893

`eq[2, A211396(A222232(n))]`
-/

namespace A011538.P10232930474611649893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 (A222232 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011538.P10232930474611649893

namespace A011538

/-- `eq[2, A211396(A222232(n))]` -/
def P10232930474611649893.Spec : Prop :=
  ∀ n, (P10232930474611649893.a n : ℤ) = A011538 (n + 1)

end A011538

/-! ## A011538.P3828882002741432511

`lt[6, A054055(A107130(n))]`
-/

namespace A011538.P3828882002741432511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A107130 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A011538.P3828882002741432511

namespace A011538

/-- `lt[6, A054055(A107130(n))]` -/
def P3828882002741432511.Spec : Prop :=
  ∀ n, (P3828882002741432511.a n : ℤ) = A011538 (n + 1)

end A011538

/-! ## A011538.P5009227947759537442

`lt[7, A054055(A004184(n))]`
-/

namespace A011538.P5009227947759537442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A004184 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A011538.P5009227947759537442

namespace A011538

/-- `lt[7, A054055(A004184(n))]` -/
def P5009227947759537442.Spec : Prop :=
  ∀ n, (P5009227947759537442.a n : ℤ) = A011538 (n + 1)

end A011538

/-! ## A011538.P8660605252344092751

`lt[8, A054055(A222254(n))]`
-/

namespace A011538.P8660605252344092751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A222254 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A011538.P8660605252344092751

namespace A011538

/-- `lt[8, A054055(A222254(n))]` -/
def P8660605252344092751.Spec : Prop :=
  ∀ n, (P8660605252344092751.a n : ℤ) = A011538 (n + 1)

end A011538

/-! ## A011538.P4997863790679631234

`lt[1, n*A316864(A222238(n))]`
-/

namespace A011538.P4997863790679631234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A316864 (A222238 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A011538.P4997863790679631234

namespace A011538

/-- `lt[1, n*A316864(A222238(n))]` -/
def P4997863790679631234.Spec : Prop :=
  ∀ n, (P4997863790679631234.a n : ℤ) = A011538 (n + 1)

end A011538

/-! ## A011538.P10170442886919531622

`lt[A222238(A001613(n)), A001613(n)]`
-/

namespace A011538.P10170442886919531622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (A001613 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A011538.P10170442886919531622

namespace A011538

/-- `lt[A222238(A001613(n)), A001613(n)]` -/
def P10170442886919531622.Spec : Prop :=
  ∀ n, (P10170442886919531622.a n : ℤ) = A011538 (n + 1)

end A011538

/-! ## A011538.P9419462591972047196

`lt[A003132(n), A316869(n)+A003132(n)]`
-/

namespace A011538.P9419462591972047196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 n + A003132 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A011538.P9419462591972047196

namespace A011538

/-- `lt[A003132(n), A316869(n)+A003132(n)]` -/
def P9419462591972047196.Spec : Prop :=
  ∀ n, (P9419462591972047196.a n : ℤ) = A011538 (n + 1)

end A011538

/-! ## A011538.P14601867337476019124

`comp[A004183(n)]`
-/

namespace A011538.P14601867337476019124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A011538.P14601867337476019124

namespace A011538

/-- `comp[A004183(n)]` -/
def P14601867337476019124.Spec : Prop :=
  ∀ n, (P14601867337476019124.a n : ℤ) = A011538 (n + 1)

end A011538

/-! ## A011538.P6599739326888942797

`comp[A004727(n)]`
-/

namespace A011538.P6599739326888942797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004727 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A011538.P6599739326888942797

namespace A011538

/-- `comp[A004727(n)]` -/
def P6599739326888942797.Spec : Prop :=
  ∀ n, (P6599739326888942797.a n : ℤ) = A011538 (n + 1)

end A011538

/-! ## A011538.P14986707862137340746

`eq[A086066(A017365(n)), A086066(n)]`
-/

namespace A011538.P14986707862137340746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 (A017365 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A011538.P14986707862137340746

namespace A011538

/-- `eq[A086066(A017365(n)), A086066(n)]` -/
def P14986707862137340746.Spec : Prop :=
  ∀ n, (P14986707862137340746.a n : ℤ) = A011538 (n + 1)

end A011538

/-! ## A011538.P1166267013094018057

`eq[A137564(A017365(n)), A137564(n)]`
-/

namespace A011538.P1166267013094018057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A017365 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A011538.P1166267013094018057

namespace A011538

/-- `eq[A137564(A017365(n)), A137564(n)]` -/
def P1166267013094018057.Spec : Prop :=
  ∀ n, (P1166267013094018057.a n : ℤ) = A011538 (n + 1)

end A011538

/-! ## A011538.P604312644337699959

`eq[A217928(A017365(n)), A217928(n)]`
-/

namespace A011538.P604312644337699959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217928 (A017365 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A011538.P604312644337699959

namespace A011538

/-- `eq[A217928(A017365(n)), A217928(n)]` -/
def P604312644337699959.Spec : Prop :=
  ∀ n, (P604312644337699959.a n : ℤ) = A011538 (n + 1)

end A011538

/-! ## A011538.P4306034049149214689

`eq[A227362(A017365(n)), A227362(n)]`
-/

namespace A011538.P4306034049149214689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (A017365 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A011538.P4306034049149214689

namespace A011538

/-- `eq[A227362(A017365(n)), A227362(n)]` -/
def P4306034049149214689.Spec : Prop :=
  ∀ n, (P4306034049149214689.a n : ℤ) = A011538 (n + 1)

end A011538

/-! ## A011538.P14782557292009187096

`eq[A086066(A017353(n)+1), A086066(n)]`
-/

namespace A011538.P14782557292009187096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 (A017353 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A011538.P14782557292009187096

namespace A011538

/-- `eq[A086066(A017353(n)+1), A086066(n)]` -/
def P14782557292009187096.Spec : Prop :=
  ∀ n, (P14782557292009187096.a n : ℤ) = A011538 (n + 1)

end A011538

/-! ## A011538.P16250831728437933082

`eq[A137564(A017353(n)+1), A137564(n)]`
-/

namespace A011538.P16250831728437933082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A017353 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A011538.P16250831728437933082

namespace A011538

/-- `eq[A137564(A017353(n)+1), A137564(n)]` -/
def P16250831728437933082.Spec : Prop :=
  ∀ n, (P16250831728437933082.a n : ℤ) = A011538 (n + 1)

end A011538

/-! ## A011538.P7269637772538578241

`eq[A227362(A017353(n)+1), A227362(n)]`
-/

namespace A011538.P7269637772538578241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (A017353 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A011538.P7269637772538578241

namespace A011538

/-- `eq[A227362(A017353(n)+1), A227362(n)]` -/
def P7269637772538578241.Spec : Prop :=
  ∀ n, (P7269637772538578241.a n : ℤ) = A011538 (n + 1)

end A011538

/-!
# A011539: "9ish numbers": decimal representation contains at least one nine.

The programs for A011539, there is no canonical definition to state claims against.
-/

/-! ## A011539.P11013132000703191414

`∪[A087097(n+1), A087984(n+1)]`
-/

namespace A011539.P11013132000703191414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A011539.P11013132000703191414

/-! ## A011539.P12967709047303233749

`eq[A087028(n+1), A087029(n+1)]+1`
-/

namespace A011539.P12967709047303233749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087029 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A011539.P12967709047303233749

/-! ## A011539.P4682938473018007721

`comp[A007095(n)]`
-/

namespace A011539.P4682938473018007721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A011539.P4682938473018007721

/-! ## A011539.P17123076755845861701

`lt[0, A102683(n)]`
-/

namespace A011539.P17123076755845861701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A011539.P17123076755845861701

/-! ## A011539.P2176854573183581505

`lt[8, A054055(n)]`
-/

namespace A011539.P2176854573183581505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A011539.P2176854573183581505

/-! ## A011539.P3238526073321992861

`lt[A004184(n), n]`
-/

namespace A011539.P3238526073321992861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A011539.P3238526073321992861

/-! ## A011539.P5961435510645762300

`eq[9, val(A069877(n), 2)]`
-/

namespace A011539.P5961435510645762300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A069877 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A011539.P5961435510645762300

/-! ## A011539.P16203572695897833456

`lt[64, floor(log2(A086066(n)))²]`
-/

namespace A011539.P16203572695897833456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A086066 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A011539.P16203572695897833456

/-! ## A011539.P15209623886514529894

`eq[1, A030076(n+1)]+1`
-/

namespace A011539.P15209623886514529894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030076 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A011539.P15209623886514529894

/-! ## A011539.P13239790620345513003

`eq[9, (A070196(n)-n)%10]`
-/

namespace A011539.P13239790620345513003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070196 n - (n : ℤ)) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011539.P13239790620345513003

/-! ## A011539.P5169529455444174992

`lt[1, A181061(A064770(n))]`
-/

namespace A011539.P5169529455444174992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181061 (A064770 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A011539.P5169529455444174992

/-! ## A011539.P6613039621132535799

`eq[9, A000030(A004186(n))]`
-/

namespace A011539.P6613039621132535799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A004186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011539.P6613039621132535799

/-! ## A011539.P13446157590327329004

`eq[9, A054055(A004176(n))]`
-/

namespace A011539.P13446157590327329004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A004176 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011539.P13446157590327329004

/-! ## A011539.P1127182271113925689

`eq[9, A054055(A004183(n))]`
-/

namespace A011539.P1127182271113925689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A004183 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011539.P1127182271113925689

/-! ## A011539.P804486535678934099

`eq[9, A054055(A222212(n))]`
-/

namespace A011539.P804486535678934099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A222212 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011539.P804486535678934099

/-! ## A011539.P8826230204038891814

`eq[9, A054055(A222216(n))]`
-/

namespace A011539.P8826230204038891814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A222216 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011539.P8826230204038891814

/-! ## A011539.P1869628837349568822

`eq[9, A054055(A222232(n))]`
-/

namespace A011539.P1869628837349568822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A222232 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011539.P1869628837349568822

/-! ## A011539.P16001055467524247357

`eq[9, A054055(A222238(n))]`
-/

namespace A011539.P16001055467524247357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A222238 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011539.P16001055467524247357

/-! ## A011539.P18387632098673088726

`eq[9, A054055(A222252(n))]`
-/

namespace A011539.P18387632098673088726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A222252 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011539.P18387632098673088726

/-!
# A011540: Numbers that contain a digit 0.

The programs for A011540, the canonical program `A011540.P10697777926791555809` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011540 has offset 1).

The definition of A011540 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011540.P17806307323543687145

`A098394(n+1)-A000007(n)`
-/

namespace A011540.P17806307323543687145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098394 (n + 1) - A000007 n

end

end A011540.P17806307323543687145

namespace A011540

/-- `A098394(n+1)-A000007(n)` -/
def P17806307323543687145.Spec : Prop :=
  ∀ n, P17806307323543687145.a n = A011540 (n + 1)

theorem P17806307323543687145.correct : P17806307323543687145.Spec := by
  intro n
  simp only [A011540, Nat.add_sub_cancel, A011540.P17806307323543687145.a, A011540.P10697777926791555809.f1, A011540.P10697777926791555809.f2, A011540.P10697777926791555809.a, A000007, A000007.P6599383543502402472.a, A098394, A098394.P8766548074756510504.a, A187844, A187844.P2226367484960758357.f1, A187844.P2226367484960758357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A011540

/-! ## A011540.P6341442829761388496

`A057427(n)*A098394(n+1)`
-/

namespace A011540.P6341442829761388496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A098394 (n + 1)

end

end A011540.P6341442829761388496

namespace A011540

/-- `A057427(n)*A098394(n+1)` -/
def P6341442829761388496.Spec : Prop :=
  ∀ n, P6341442829761388496.a n = A011540 (n + 1)

end A011540

/-! ## A011540.P2748444846353579927

`A098394(n+1)%A000141(n)`
-/

namespace A011540.P2748444846353579927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098394 (n + 1)) (A000141 n)

end

end A011540.P2748444846353579927

namespace A011540

/-- `A098394(n+1)%A000141(n)` -/
def P2748444846353579927.Spec : Prop :=
  ∀ n, P2748444846353579927.a n = A011540 (n + 1)

end A011540

/-! ## A011540.P2965125232228655512

`and(A057428(n), A098394(n+1))`
-/

namespace A011540.P2965125232228655512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A098394 (n + 1))

end

end A011540.P2965125232228655512

namespace A011540

/-- `and(A057428(n), A098394(n+1))` -/
def P2965125232228655512.Spec : Prop :=
  ∀ n, P2965125232228655512.a n = A011540 (n + 1)

end A011540

/-! ## A011540.P10996483762096778960

`∪[A252480(n+1), A008592(n)]`
-/

namespace A011540.P10996483762096778960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A011540.P10996483762096778960

namespace A011540

/-- `∪[A252480(n+1), A008592(n)]` -/
def P10996483762096778960.Spec : Prop :=
  ∀ n, (P10996483762096778960.a n : ℤ) = A011540 (n + 1)

end A011540

/-! ## A011540.P3914244390638985404

`∪[A056709(n+1), A201014(n+1)]`
-/

namespace A011540.P3914244390638985404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A011540.P3914244390638985404

namespace A011540

/-- `∪[A056709(n+1), A201014(n+1)]` -/
def P3914244390638985404.Spec : Prop :=
  ∀ n, (P3914244390638985404.a n : ℤ) = A011540 (n + 1)

end A011540

/-! ## A011540.P2909259219511928726

`∪[A043489(n+1), A252480(n+1)]`
-/

namespace A011540.P2909259219511928726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A011540.P2909259219511928726

namespace A011540

/-- `∪[A043489(n+1), A252480(n+1)]` -/
def P2909259219511928726.Spec : Prop :=
  ∀ n, (P2909259219511928726.a n : ℤ) = A011540 (n + 1)

end A011540

/-! ## A011540.P6880552022913141089

`eq[n, A009101(n)]`
-/

namespace A011540.P6880552022913141089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009101 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011540.P6880552022913141089

namespace A011540

/-- `eq[n, A009101(n)]` -/
def P6880552022913141089.Spec : Prop :=
  ∀ n, (P6880552022913141089.a n : ℤ) = A011540 (n + 1)

end A011540

/-! ## A011540.P10697777926791555809

`eq[0, A187844(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A011540

/-- `eq[0, A187844(n)]` -/
def P10697777926791555809.Spec : Prop :=
  ∀ n, (P10697777926791555809.a n : ℤ) = A011540 (n + 1)

theorem P10697777926791555809.correct : P10697777926791555809.Spec := by
  intro n
  simp only [A011540, Nat.add_sub_cancel]

end A011540

/-! ## A011540.P2513721172643271358

`comp[A052382(n+1)]`
-/

namespace A011540.P2513721172643271358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A011540.P2513721172643271358

namespace A011540

/-- `comp[A052382(n+1)]` -/
def P2513721172643271358.Spec : Prop :=
  ∀ n, (P2513721172643271358.a n : ℤ) = A011540 (n + 1)

end A011540

/-! ## A011540.P14783243658296660236

`A249626(A249648(n+1))`
-/

namespace A011540.P14783243658296660236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249626 (A249648 (n + 1)).toNat

end

end A011540.P14783243658296660236

namespace A011540

/-- `A249626(A249648(n+1))` -/
def P14783243658296660236.Spec : Prop :=
  ∀ n, P14783243658296660236.a n = A011540 (n + 1)

end A011540

/-! ## A011540.P16746742315878684133

`record[A070565(n)]`
-/

namespace A011540.P16746742315878684133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011540.P16746742315878684133

namespace A011540

/-- `record[A070565(n)]` -/
def P16746742315878684133.Spec : Prop :=
  ∀ n, P16746742315878684133.a n = A011540 (n + 1)

end A011540

/-! ## A011540.P12027235399186363647

`eq[0, A004428(n)]`
-/

namespace A011540.P12027235399186363647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011540.P12027235399186363647

namespace A011540

/-- `eq[0, A004428(n)]` -/
def P12027235399186363647.Spec : Prop :=
  ∀ n, (P12027235399186363647.a n : ℤ) = A011540 (n + 1)

end A011540

/-! ## A011540.P16282884361081534634

`eq[0, A007954(n)]`
-/

namespace A011540.P16282884361081534634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011540.P16282884361081534634

namespace A011540

/-- `eq[0, A007954(n)]` -/
def P16282884361081534634.Spec : Prop :=
  ∀ n, (P16282884361081534634.a n : ℤ) = A011540 (n + 1)

end A011540

/-! ## A011540.P10015180474262004835

`eq[0, A054054(n)]`
-/

namespace A011540.P10015180474262004835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011540.P10015180474262004835

namespace A011540

/-- `eq[0, A054054(n)]` -/
def P10015180474262004835.Spec : Prop :=
  ∀ n, (P10015180474262004835.a n : ℤ) = A011540 (n + 1)

end A011540

/-! ## A011540.P8671959863695831375

`eq[0, A070562(n)]`
-/

namespace A011540.P8671959863695831375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011540.P8671959863695831375

namespace A011540

/-- `eq[0, A070562(n)]` -/
def P8671959863695831375.Spec : Prop :=
  ∀ n, (P8671959863695831375.a n : ℤ) = A011540 (n + 1)

end A011540

/-! ## A011540.P16041614645272610526

`eq[0, A134778(n)]`
-/

namespace A011540.P16041614645272610526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011540.P16041614645272610526

namespace A011540

/-- `eq[0, A134778(n)]` -/
def P16041614645272610526.Spec : Prop :=
  ∀ n, (P16041614645272610526.a n : ℤ) = A011540 (n + 1)

end A011540

/-! ## A011540.P16707505428004360563

`eq[0, A321243(n)]`
-/

namespace A011540.P16707505428004360563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321243 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011540.P16707505428004360563

namespace A011540

/-- `eq[0, A321243(n)]` -/
def P16707505428004360563.Spec : Prop :=
  ∀ n, (P16707505428004360563.a n : ℤ) = A011540 (n + 1)

end A011540

/-! ## A011540.P4417287067381813709

`lt[0, A067898(n)]`
-/

namespace A011540.P4417287067381813709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A011540.P4417287067381813709

namespace A011540

/-- `lt[0, A067898(n)]` -/
def P4417287067381813709.Spec : Prop :=
  ∀ n, (P4417287067381813709.a n : ℤ) = A011540 (n + 1)

end A011540

/-! ## A011540.P4109012249652555015

`eq[n, A230099(n)]`
-/

namespace A011540.P4109012249652555015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011540.P4109012249652555015

namespace A011540

/-- `eq[n, A230099(n)]` -/
def P4109012249652555015.Spec : Prop :=
  ∀ n, (P4109012249652555015.a n : ℤ) = A011540 (n + 1)

end A011540

/-!
# A011542: Minimal number of coins needed to pay n cents using coins of sizes 1, 5, 10, 25, 50 cents.

The programs for A011542, there is no canonical definition to state claims against.
-/

/-! ## A011542.P4821951628672497250

`A007953(A080897(n))`
-/

namespace A011542.P4821951628672497250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A080897 n).toNat

end

end A011542.P4821951628672497250

/-! ## A011542.P7332171681999780538

`A260688(n)-A102683(A306100(n))`
-/

namespace A011542.P7332171681999780538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260688 n - A102683 (A306100 n).toNat

end

end A011542.P7332171681999780538

/-! ## A011542.P7598086602826433977

`A260688(n)-A185284(A211990(n+1))`
-/

namespace A011542.P7598086602826433977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260688 n - A185284 (A211990 (n + 1)).toNat

end

end A011542.P7598086602826433977

/-! ## A011542.P2976872569257350007

`A260688(n)/A318498(A188464(A007305(n)))`
-/

namespace A011542.P2976872569257350007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260688 n : ℚ) / (A318498 (A188464 (A007305 n).toNat).toNat : ℚ)

end

end A011542.P2976872569257350007

/-! ## A011542.P14963181243236651896

`and(A192718(n+1), A260688(n))`
-/

namespace A011542.P14963181243236651896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A192718 (n + 1)) (A260688 n)

end

end A011542.P14963181243236651896

/-!
# A011543: Decimal expansion of e truncated to n places.

The programs for A011543, the canonical program `A011543.P16723415302719657556` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011543 has offset 0).

The definition of A011543 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011543.P16723415302719657556

`floor(e*10^n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011543

/-- `floor(e*10^n)` -/
def P16723415302719657556.Spec : Prop :=
  ∀ n, P16723415302719657556.a n = A011543 n

theorem P16723415302719657556.correct : P16723415302719657556.Spec := by
  intro n
  simp only [A011543]

end A011543

/-! ## A011543.P9590897606728470378

`A001113(n)+10*a(n-1)` with `a(0)=2`
-/

namespace A011543.P9590897606728470378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001113 (n + 1) + 10 * a (n - 1)

end

end A011543.P9590897606728470378

namespace A011543

/-- `A001113(n)+10*a(n-1)` -/
def P9590897606728470378.Spec : Prop :=
  ∀ n, P9590897606728470378.a n = A011543 n

end A011543

/-! ## A011543.P16390529987227345537

`A249126(n+1)/A011545(n)`
-/

namespace A011543.P16390529987227345537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249126 (n + 1) : ℚ) / (A011545 n : ℚ)

end

end A011543.P16390529987227345537

namespace A011543

/-- `A249126(n+1)/A011545(n)` -/
def P16390529987227345537.Spec : Prop :=
  ∀ n, P16390529987227345537.a n = (A011543 n : ℚ)

end A011543

/-! ## A011543.P7357397046553441117

`A129897(n)-A011545(n)`
-/

namespace A011543.P7357397046553441117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129897 n - A011545 n

end

end A011543.P7357397046553441117

namespace A011543

/-- `A129897(n)-A011545(n)` -/
def P7357397046553441117.Spec : Prop :=
  ∀ n, P7357397046553441117.a n = A011543 n

end A011543

/-! ## A011543.P17422334847179525767

`A129897(n)-record[A322777(n+1)]`
-/

namespace A011543.P17422334847179525767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129897 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011543.P17422334847179525767

namespace A011543

/-- `A129897(n)-record[A322777(n+1)]` -/
def P17422334847179525767.Spec : Prop :=
  ∀ n, P17422334847179525767.a n = A011543 n

end A011543

/-!
# A011544: Decimal expansion of e rounded to n places.

The programs for A011544, the canonical program `A011544.P11984496564108768631` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011544 has offset 0).

The definition of A011544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011544.P11984496564108768631

`round(e*10^n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011544

/-- `round(e*10^n)` -/
def P11984496564108768631.Spec : Prop :=
  ∀ n, P11984496564108768631.a n = A011544 n

theorem P11984496564108768631.correct : P11984496564108768631.Spec := by
  intro n
  simp only [A011544]

end A011544

/-! ## A011544.P15260402591705277912

`A011543(n)+A010060(A159741(n+1))`
-/

namespace A011544.P15260402591705277912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011543 n + A010060 (A159741 (n + 1)).toNat

end

end A011544.P15260402591705277912

namespace A011544

/-- `A011543(n)+A010060(A159741(n+1))` -/
def P15260402591705277912.Spec : Prop :=
  ∀ n, P15260402591705277912.a n = A011544 n

end A011544

/-! ## A011544.P11111161432469480387

`A011543(n)+A010060(A185633(n+1))`
-/

namespace A011544.P11111161432469480387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011543 n + A010060 (A185633 (n + 1)).toNat

end

end A011544.P11111161432469480387

namespace A011544

/-- `A011543(n)+A010060(A185633(n+1))` -/
def P11111161432469480387.Spec : Prop :=
  ∀ n, P11111161432469480387.a n = A011544 n

end A011544

/-! ## A011544.P17649568533548553915

`A059841(A152728(3*n+2))+A011543(n)`
-/

namespace A011544.P17649568533548553915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A152728 (3 * n + 2)).toNat + A011543 n

end

end A011544.P17649568533548553915

namespace A011544

/-- `A059841(A152728(3*n+2))+A011543(n)` -/
def P17649568533548553915.Spec : Prop :=
  ∀ n, P17649568533548553915.a n = A011544 n

end A011544

/-! ## A011544.P8184820939522448453

`A291574(∑[ceil(3^(n-1))])+A011543(n)`
-/

namespace A011544.P8184820939522448453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291574 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A011543 n

end

end A011544.P8184820939522448453

namespace A011544

/-- `A291574(∑[ceil(3^(n-1))])+A011543(n)` -/
def P8184820939522448453.Spec : Prop :=
  ∀ n, P8184820939522448453.a n = A011544 n

end A011544

/-!
# A011545: a(n) is the integer whose decimal digits are the first n+1 decimal digits of Pi.

The programs for A011545, the canonical program `A011545.P11957435309712970283` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011545 has offset 0).

The definition of A011545 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011545.P11957435309712970283

`floor(π*10^n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011545

/-- `floor(π*10^n)` -/
def P11957435309712970283.Spec : Prop :=
  ∀ n, P11957435309712970283.a n = A011545 n

theorem P11957435309712970283.correct : P11957435309712970283.Spec := by
  intro n
  simp only [A011545]

end A011545

/-! ## A011545.P15583210787697259783

`record[A322777(n+1)]`
-/

namespace A011545.P15583210787697259783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011545.P15583210787697259783

namespace A011545

/-- `record[A322777(n+1)]` -/
def P15583210787697259783.Spec : Prop :=
  ∀ n, P15583210787697259783.a n = A011545 n

end A011545

/-! ## A011545.P11163143456649166711

`A000796(n)+10*a(n-1)` with `a(0)=3`
-/

namespace A011545.P11163143456649166711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A000796 (n + 1) + 10 * a (n - 1)

end

end A011545.P11163143456649166711

namespace A011545

/-- `A000796(n)+10*a(n-1)` -/
def P11163143456649166711.Spec : Prop :=
  ∀ n, P11163143456649166711.a n = A011545 n

end A011545

/-! ## A011545.P3736315484361381082

`Δ[A059582(n)]+10*a(n-1)` with `a(0)=3`
-/

namespace A011545.P3736315484361381082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  f1 (n + 1) - f1 n + 10 * a (n - 1)

end

end A011545.P3736315484361381082

namespace A011545

/-- `Δ[A059582(n)]+10*a(n-1)` -/
def P3736315484361381082.Spec : Prop :=
  ∀ n, P3736315484361381082.a n = A011545 n

end A011545

/-! ## A011545.P16028414629435820631

`∑[A000796(n)/A011557(n)]*A011557(n)`
-/

namespace A011545.P16028414629435820631
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000796 (n + 1) : ℚ) / (A011557 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A011557 n : ℚ)

end

end A011545.P16028414629435820631

namespace A011545

/-- `∑[A000796(n)/A011557(n)]*A011557(n)` -/
def P16028414629435820631.Spec : Prop :=
  ∀ n, P16028414629435820631.a n = (A011545 n : ℚ)

end A011545

/-! ## A011545.P1889152640532238298

`A249126(n+1)/A011543(n)`
-/

namespace A011545.P1889152640532238298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249126 (n + 1) : ℚ) / (A011543 n : ℚ)

end

end A011545.P1889152640532238298

namespace A011545

/-- `A249126(n+1)/A011543(n)` -/
def P1889152640532238298.Spec : Prop :=
  ∀ n, P1889152640532238298.a n = (A011545 n : ℚ)

end A011545

/-!
# A011546: Decimal expansion of Pi rounded to n places.

The programs for A011546, the canonical program `A011546.P568019388730443924` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011546 has offset 0).

The definition of A011546 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011546.P568019388730443924

`round(10^n*π)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011546

/-- `round(10^n*π)` -/
def P568019388730443924.Spec : Prop :=
  ∀ n, P568019388730443924.a n = A011546 n

theorem P568019388730443924.correct : P568019388730443924.Spec := by
  intro n
  simp only [A011546]

end A011546

/-! ## A011546.P17383000961350180871

`A011545(n)+A019692(n)%2`
-/

namespace A011546.P17383000961350180871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011545 n + Int.tmod (A019692 (n + 1)) 2

end

end A011546.P17383000961350180871

namespace A011546

/-- `A011545(n)+A019692(n)%2` -/
def P17383000961350180871.Spec : Prop :=
  ∀ n, P17383000961350180871.a n = A011546 n

end A011546

/-! ## A011546.P14989076372260887650

`floor(A011545(n+1)/5)-A011545(n)`
-/

namespace A011546.P14989076372260887650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011545 (n + 1) : ℚ) / 5⌋ - A011545 n

end

end A011546.P14989076372260887650

namespace A011546

/-- `floor(A011545(n+1)/5)-A011545(n)` -/
def P14989076372260887650.Spec : Prop :=
  ∀ n, P14989076372260887650.a n = A011546 n

end A011546

/-! ## A011546.P2872794275879637209

`A011545(n)+A010059(A007716(n))`
-/

namespace A011546.P2872794275879637209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011545 n + A010059 (A007716 n).toNat

end

end A011546.P2872794275879637209

namespace A011546

/-- `A011545(n)+A010059(A007716(n))` -/
def P2872794275879637209.Spec : Prop :=
  ∀ n, P2872794275879637209.a n = A011546 n

end A011546

/-! ## A011546.P16171202861055586440

`A156729(A000070(n))+A011545(n)`
-/

namespace A011546.P16171202861055586440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156729 (A000070 n).toNat + A011545 n

end

end A011546.P16171202861055586440

namespace A011546

/-- `A156729(A000070(n))+A011545(n)` -/
def P16171202861055586440.Spec : Prop :=
  ∀ n, P16171202861055586440.a n = A011546 n

end A011546

/-!
# A011547: Decimal expansion of sqrt(2) truncated to n places.

The programs for A011547, the canonical program `A011547.P3617800658743322912` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011547 has offset 0).

The definition of A011547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011547.P3617800658743322912

`floor(sqrt(2)*10^n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011547

/-- `floor(sqrt(2)*10^n)` -/
def P3617800658743322912.Spec : Prop :=
  ∀ n, P3617800658743322912.a n = A011547 n

theorem P3617800658743322912.correct : P3617800658743322912.Spec := by
  intro n
  simp only [A011547]

end A011547

/-! ## A011547.P6580772153714809996

`A083377(Δ[n²])`
-/

namespace A011547.P6580772153714809996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083377 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A011547.P6580772153714809996

namespace A011547

/-- `A083377(Δ[n²])` -/
def P6580772153714809996.Spec : Prop :=
  ∀ n, P6580772153714809996.a n = A011547 n

end A011547

/-! ## A011547.P17440367903919705481

`ceil(sqrt(2)*A011557(n))-1`
-/

namespace A011547.P17440367903919705481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 : ℝ) * (A011557 n : ℝ)⌉ - 1

end

end A011547.P17440367903919705481

namespace A011547

/-- `ceil(sqrt(2)*A011557(n))-1` -/
def P17440367903919705481.Spec : Prop :=
  ∀ n, P17440367903919705481.a n = A011547 n

end A011547

/-! ## A011547.P18396140174231879425

`A002193(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A011547.P18396140174231879425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002193 (n + 1) + 10 * a (n - 1)

end

end A011547.P18396140174231879425

namespace A011547

/-- `A002193(n)+10*a(n-1)` -/
def P18396140174231879425.Spec : Prop :=
  ∀ n, P18396140174231879425.a n = A011547 n

end A011547

/-! ## A011547.P12476061638588963799

`record[A083377(A093178(n))]`
-/

namespace A011547.P12476061638588963799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083377 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011547.P12476061638588963799

namespace A011547

/-- `record[A083377(A093178(n))]` -/
def P12476061638588963799.Spec : Prop :=
  ∀ n, P12476061638588963799.a n = A011547 n

end A011547

/-! ## A011547.P923590937006797771

`record[A083377(A000265(n+1))]`
-/

namespace A011547.P923590937006797771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083377 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011547.P923590937006797771

namespace A011547

/-- `record[A083377(A000265(n+1))]` -/
def P923590937006797771.Spec : Prop :=
  ∀ n, P923590937006797771.a n = A011547 n

end A011547

/-! ## A011547.P8676657512465895487

`record[A033999(n)*A083377(n+1)]`
-/

namespace A011547.P8676657512465895487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A083377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011547.P8676657512465895487

namespace A011547

/-- `record[A033999(n)*A083377(n+1)]` -/
def P8676657512465895487.Spec : Prop :=
  ∀ n, P8676657512465895487.a n = A011547 n

end A011547

/-! ## A011547.P17767987277898034725

`record[A083377(n+1)/A010685(n)]`
-/

namespace A011547.P17767987277898034725
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083377 (n + 1) : ℚ) / (A010685 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011547.P17767987277898034725

namespace A011547

/-- `record[A083377(n+1)/A010685(n)]` -/
def P17767987277898034725.Spec : Prop :=
  ∀ n, P17767987277898034725.a n = (A011547 n : ℚ)

end A011547

/-! ## A011547.P680642508245412546

`record[lcm(A056594(n), A083377(n+1))]`
-/

namespace A011547.P680642508245412546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A083377 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011547.P680642508245412546

namespace A011547

/-- `record[lcm(A056594(n), A083377(n+1))]` -/
def P680642508245412546.Spec : Prop :=
  ∀ n, (P680642508245412546.a n : ℤ) = A011547 n

end A011547

/-! ## A011547.P1100146608496353248

`record[gcd(A007814(n+1), A083377(n+1))]`
-/

namespace A011547.P1100146608496353248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 1)) (A083377 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011547.P1100146608496353248

namespace A011547

/-- `record[gcd(A007814(n+1), A083377(n+1))]` -/
def P1100146608496353248.Spec : Prop :=
  ∀ n, (P1100146608496353248.a n : ℤ) = A011547 n

end A011547

/-! ## A011547.P16061275095920300951

`A083377(2*n+1)%A011557(n+1)`
-/

namespace A011547.P16061275095920300951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083377 (2 * n + 1)) (A011557 (n + 1))

end

end A011547.P16061275095920300951

namespace A011547

/-- `A083377(2*n+1)%A011557(n+1)` -/
def P16061275095920300951.Spec : Prop :=
  ∀ n, P16061275095920300951.a n = A011547 n

end A011547

/-! ## A011547.P840869135107359099

`A035069(A028310(2*n))-A054977(n)²`
-/

namespace A011547.P840869135107359099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035069 (A028310 (2 * n)).toNat - A054977 n ^ 2

end

end A011547.P840869135107359099

namespace A011547

/-- `A035069(A028310(2*n))-A054977(n)²` -/
def P840869135107359099.Spec : Prop :=
  ∀ n, P840869135107359099.a n = A011547 n

end A011547

/-! ## A011547.P8320206896858740467

`A235145(A007318(n))+A083377(n+1+n)`
-/

namespace A011547.P8320206896858740467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235145 (A007318 n).toNat + A083377 (n + 1 + n)

end

end A011547.P8320206896858740467

namespace A011547

/-- `A235145(A007318(n))+A083377(n+1+n)` -/
def P8320206896858740467.Spec : Prop :=
  ∀ n, P8320206896858740467.a n = A011547 n

end A011547

/-!
# A011548: Decimal expansion of sqrt(2) rounded to n places.

The programs for A011548, the canonical program `A011548.P14501120540779775859` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011548 has offset 0).

The definition of A011548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011548.P1809875108948762670

`round(sqrt(2)*10^n)`
-/

namespace A011548.P1809875108948762670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 : ℝ) * (10 ^ n : ℝ))

end

end A011548.P1809875108948762670

namespace A011548

/-- `round(sqrt(2)*10^n)` -/
def P1809875108948762670.Spec : Prop :=
  ∀ n, P1809875108948762670.a n = A011548 n

end A011548

/-! ## A011548.P14501120540779775859

`A068092(Δ[n²])`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A011548

/-- `A068092(Δ[n²])` -/
def P14501120540779775859.Spec : Prop :=
  ∀ n, P14501120540779775859.a n = A011548 n

theorem P14501120540779775859.correct : P14501120540779775859.Spec := by
  intro n
  simp only [A011548]

end A011548

/-! ## A011548.P9653029455823403219

`or(char[2], A068092(2*n+1))`
-/

namespace A011548.P9653029455823403219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A068092 (2 * n + 1))

end

end A011548.P9653029455823403219

namespace A011548

/-- `or(char[2], A068092(2*n+1))` -/
def P9653029455823403219.Spec : Prop :=
  ∀ n, P9653029455823403219.a n = A011548 n

end A011548

/-! ## A011548.P12094481816290459000

`record[A068092(n+1)/(-1)^n]`
-/

namespace A011548.P12094481816290459000
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068092 (n + 1) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011548.P12094481816290459000

namespace A011548

/-- `record[A068092(n+1)/(-1)^n]` -/
def P12094481816290459000.Spec : Prop :=
  ∀ n, P12094481816290459000.a n = (A011548 n : ℚ)

end A011548

/-! ## A011548.P18119682574278512592

`record[A068092(A099375(n))]`
-/

namespace A011548.P18119682574278512592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068092 (A099375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011548.P18119682574278512592

namespace A011548

/-- `record[A068092(A099375(n))]` -/
def P18119682574278512592.Spec : Prop :=
  ∀ n, P18119682574278512592.a n = A011548 n

end A011548

/-! ## A011548.P16603554452261279771

`record[A068092(Δ[A001318(n)])]`
-/

namespace A011548.P16603554452261279771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068092 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011548.P16603554452261279771

namespace A011548

/-- `record[A068092(Δ[A001318(n)])]` -/
def P16603554452261279771.Spec : Prop :=
  ∀ n, P16603554452261279771.a n = A011548 n

end A011548

/-! ## A011548.P14213374149035399688

`record[A068092(A000265(n+1))]`
-/

namespace A011548.P14213374149035399688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068092 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011548.P14213374149035399688

namespace A011548

/-- `record[A068092(A000265(n+1))]` -/
def P14213374149035399688.Spec : Prop :=
  ∀ n, P14213374149035399688.a n = A011548 n

end A011548

/-! ## A011548.P105483451027542091

`record[A068092(A026741(n+1))]`
-/

namespace A011548.P105483451027542091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068092 (A026741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011548.P105483451027542091

namespace A011548

/-- `record[A068092(A026741(n+1))]` -/
def P105483451027542091.Spec : Prop :=
  ∀ n, P105483451027542091.a n = A011548 n

end A011548

/-! ## A011548.P3089241173231894076

`record[A068092(or(1, A057979(n)))]`
-/

namespace A011548.P3089241173231894076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068092 (Int.lor 1 (A057979 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011548.P3089241173231894076

namespace A011548

/-- `record[A068092(or(1, A057979(n)))]` -/
def P3089241173231894076.Spec : Prop :=
  ∀ n, P3089241173231894076.a n = A011548 n

end A011548

/-! ## A011548.P16993626290783031733

`A236043(2*n)/A054977(n)`
-/

namespace A011548.P16993626290783031733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236043 (2 * n) : ℚ) / (A054977 n : ℚ)

end

end A011548.P16993626290783031733

namespace A011548

/-- `A236043(2*n)/A054977(n)` -/
def P16993626290783031733.Spec : Prop :=
  ∀ n, P16993626290783031733.a n = (A011548 n : ℚ)

end A011548

/-! ## A011548.P17412122266217342664

`A236043(2*n)-A019590(n+2)`
-/

namespace A011548.P17412122266217342664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236043 (2 * n) - A019590 (n + 2)

end

end A011548.P17412122266217342664

namespace A011548

/-- `A236043(2*n)-A019590(n+2)` -/
def P17412122266217342664.Spec : Prop :=
  ∀ n, P17412122266217342664.a n = A011548 n

end A011548

/-! ## A011548.P17172367668216330620

`record[A236043(n+1)^Δ[A008619(n)]]`
-/

namespace A011548.P17172367668216330620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236043 (n + 1) : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011548.P17172367668216330620

namespace A011548

/-- `record[A236043(n+1)^Δ[A008619(n)]]` -/
def P17172367668216330620.Spec : Prop :=
  ∀ n, P17172367668216330620.a n = (A011548 n : ℚ)

end A011548

/-! ## A011548.P9277936897269332678

`A007318(∑[n])*A068092(2*n+1)`
-/

namespace A011548.P9277936897269332678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A068092 (2 * n + 1)

end

end A011548.P9277936897269332678

namespace A011548

/-- `A007318(∑[n])*A068092(2*n+1)` -/
def P9277936897269332678.Spec : Prop :=
  ∀ n, P9277936897269332678.a n = A011548 n

end A011548

/-! ## A011548.P16565536797852150274

`A068092(2*n+1)+A000007(n+1)`
-/

namespace A011548.P16565536797852150274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068092 (2 * n + 1) + A000007 (n + 1)

end

end A011548.P16565536797852150274

namespace A011548

/-- `A068092(2*n+1)+A000007(n+1)` -/
def P16565536797852150274.Spec : Prop :=
  ∀ n, P16565536797852150274.a n = A011548 n

end A011548

/-! ## A011548.P3417114159312062894

`A068092(2*n+1)+A000038(n+1)`
-/

namespace A011548.P3417114159312062894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068092 (2 * n + 1) + A000038 (n + 1)

end

end A011548.P3417114159312062894

namespace A011548

/-- `A068092(2*n+1)+A000038(n+1)` -/
def P3417114159312062894.Spec : Prop :=
  ∀ n, P3417114159312062894.a n = A011548 n

end A011548

/-! ## A011548.P10878953946301667829

`A057427(n+1)*A068092(2*n+1)`
-/

namespace A011548.P10878953946301667829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A068092 (2 * n + 1)

end

end A011548.P10878953946301667829

namespace A011548

/-- `A057427(n+1)*A068092(2*n+1)` -/
def P10878953946301667829.Spec : Prop :=
  ∀ n, P10878953946301667829.a n = A011548 n

end A011548

/-! ## A011548.P3641454971395746467

`A068092(2*(n+1))-A068094(2*n+1)`
-/

namespace A011548.P3641454971395746467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068092 (2 * (n + 1)) - A068094 (2 * n + 1)

end

end A011548.P3641454971395746467

namespace A011548

/-- `A068092(2*(n+1))-A068094(2*n+1)` -/
def P3641454971395746467.Spec : Prop :=
  ∀ n, P3641454971395746467.a n = A011548 n

end A011548

/-! ## A011548.P8542352131798812607

`A068092(2*n+1)+C(2, A068092(n+2))`
-/

namespace A011548.P8542352131798812607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068092 (2 * n + 1) + (Nat.choose 2 (A068092 (n + 2)).toNat : ℤ)

end

end A011548.P8542352131798812607

namespace A011548

/-- `A068092(2*n+1)+C(2, A068092(n+2))` -/
def P8542352131798812607.Spec : Prop :=
  ∀ n, P8542352131798812607.a n = A011548 n

end A011548

/-! ## A011548.P9615257245911400625

`A068092(2*n+1)+A023443(n+1)-n`
-/

namespace A011548.P9615257245911400625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068092 (2 * n + 1) + (A023443 (n + 1) - (n : ℤ))

end

end A011548.P9615257245911400625

namespace A011548

/-- `A068092(2*n+1)+A023443(n+1)-n` -/
def P9615257245911400625.Spec : Prop :=
  ∀ n, P9615257245911400625.a n = A011548 n

end A011548

/-! ## A011548.P5695689035462673169

`A068092(2*n+1)+A175126(2*n)-n`
-/

namespace A011548.P5695689035462673169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068092 (2 * n + 1) + (A175126 (2 * n) - (n : ℤ))

end

end A011548.P5695689035462673169

namespace A011548

/-- `A068092(2*n+1)+A175126(2*n)-n` -/
def P5695689035462673169.Spec : Prop :=
  ∀ n, P5695689035462673169.a n = A011548 n

end A011548

/-!
# A011549: a(n) = floor(sqrt(3)*10^n).

The programs for A011549, the canonical program `A011549.P48620962862839204` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011549 has offset 0).

The definition of A011549 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(3)*10^n)` (program `A011549.P48620962862839204`, by `A011549.P48620962862839204.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011549.P48620962862839204

`floor(sqrt(3)*10^n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011549

/-- `floor(sqrt(3)*10^n)` -/
def P48620962862839204.Spec : Prop :=
  ∀ n, P48620962862839204.a n = A011549 n

theorem P48620962862839204.correct : P48620962862839204.Spec := by
  intro n
  simp only [A011549]

end A011549

/-! ## A011549.P5983865329235973531

`ceil(sqrt(3)*10^n-gcd(n, n+1))`
-/

namespace A011549.P5983865329235973531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (3 : ℝ) * (10 ^ n : ℝ) - (Nat.gcd n (n + 1) : ℝ)⌉

end

end A011549.P5983865329235973531

namespace A011549

/-- `ceil(sqrt(3)*10^n-gcd(n, n+1))` -/
def P5983865329235973531.Spec : Prop :=
  ∀ n, P5983865329235973531.a n = A011549 n

end A011549

/-! ## A011549.P10315707214147073638

`A002194(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A011549.P10315707214147073638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002194 (n + 1) + 10 * a (n - 1)

end

end A011549.P10315707214147073638

namespace A011549

/-- `A002194(n)+10*a(n-1)` -/
def P10315707214147073638.Spec : Prop :=
  ∀ n, P10315707214147073638.a n = A011549 n

end A011549

/-! ## A011549.P14439117696627758856

`ceil(A033999(2*n+1)+sqrt(3)*10^n)`
-/

namespace A011549.P14439117696627758856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033999 (2 * n + 1) : ℝ) + Real.sqrt (3 : ℝ) * (10 ^ n : ℝ)⌉

end

end A011549.P14439117696627758856

namespace A011549

/-- `ceil(A033999(2*n+1)+sqrt(3)*10^n)` -/
def P14439117696627758856.Spec : Prop :=
  ∀ n, P14439117696627758856.a n = A011549 n

end A011549

/-! ## A011549.P7233536481995891264

`sqrt(A114762(n))`
-/

namespace A011549.P7233536481995891264
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A114762 n : ℝ)

end

end A011549.P7233536481995891264

namespace A011549

/-- `sqrt(A114762(n))` -/
def P7233536481995891264.Spec : Prop :=
  ∀ n, P7233536481995891264.a n = (A011549 n : ℝ)

end A011549

/-! ## A011549.P1327901224419057094

`ceil(sqrt(A199683(2*n)))-1`
-/

namespace A011549.P1327901224419057094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A199683 (2 * n) : ℝ)⌉ - 1

end

end A011549.P1327901224419057094

namespace A011549

/-- `ceil(sqrt(A199683(2*n)))-1` -/
def P1327901224419057094.Spec : Prop :=
  ∀ n, P1327901224419057094.a n = A011549 n

end A011549

/-! ## A011549.P15437292292432936338

`A087960(n)²*floor(sqrt(A198698(2*n)))`
-/

namespace A011549.P15437292292432936338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n ^ 2 * Int.sqrt (A198698 (2 * n))

end

end A011549.P15437292292432936338

namespace A011549

/-- `A087960(n)²*floor(sqrt(A198698(2*n)))` -/
def P15437292292432936338.Spec : Prop :=
  ∀ n, P15437292292432936338.a n = A011549 n

end A011549

/-! ## A011549.P188308034836864328

`A000035(2*n)+floor(sqrt(A198698(2*n)))`
-/

namespace A011549.P188308034836864328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + Int.sqrt (A198698 (2 * n))

end

end A011549.P188308034836864328

namespace A011549

/-- `A000035(2*n)+floor(sqrt(A198698(2*n)))` -/
def P188308034836864328.Spec : Prop :=
  ∀ n, P188308034836864328.a n = A011549 n

end A011549

/-! ## A011549.P15479805596273651661

`A008836(n+1)²*floor(sqrt(A198698(2*n)))`
-/

namespace A011549.P15479805596273651661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) ^ 2 * Int.sqrt (A198698 (2 * n))

end

end A011549.P15479805596273651661

namespace A011549

/-- `A008836(n+1)²*floor(sqrt(A198698(2*n)))` -/
def P15479805596273651661.Spec : Prop :=
  ∀ n, P15479805596273651661.a n = A011549 n

end A011549

/-!
# A011550: Decimal expansion of sqrt(3) rounded to n places.

The programs for A011550, the canonical program `A011550.P11723360858412860179` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011550 has offset 0).

The definition of A011550 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011550.P11723360858412860179

`round(sqrt(3)*10^n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011550

/-- `round(sqrt(3)*10^n)` -/
def P11723360858412860179.Spec : Prop :=
  ∀ n, P11723360858412860179.a n = A011550 n

theorem P11723360858412860179.correct : P11723360858412860179.Spec := by
  intro n
  simp only [A011550]

end A011550

/-! ## A011550.P915985251720678747

`ceil(sqrt(3)*10^n-2^A133574(A001316(n)))`
-/

namespace A011550.P915985251720678747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (3 : ℝ) * (10 ^ n : ℝ) - ((2 : ℚ) ^ (A133574 (A001316 n).toNat : ℤ) : ℝ)⌉

end

end A011550.P915985251720678747

namespace A011550

/-- `ceil(sqrt(3)*10^n-2^A133574(A001316(n)))` -/
def P915985251720678747.Spec : Prop :=
  ∀ n, P915985251720678747.a n = A011550 n

end A011550

/-! ## A011550.P17851177278756758289

`round(sqrt(A171656(n)))-2`
-/

namespace A011550.P17851177278756758289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A171656 n : ℝ)) - 2

end

end A011550.P17851177278756758289

namespace A011550

/-- `round(sqrt(A171656(n)))-2` -/
def P17851177278756758289.Spec : Prop :=
  ∀ n, P17851177278756758289.a n = A011550 n

end A011550

/-!
# A011551: Decimal expansion of phi truncated to n places.

The programs for A011551, the canonical program `A011551.P14703979892889341066` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011551 has offset 0).

The definition of A011551 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011551.P14703979892889341066

`floor(ϕ*10^n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011551

/-- `floor(ϕ*10^n)` -/
def P14703979892889341066.Spec : Prop :=
  ∀ n, P14703979892889341066.a n = A011551 n

theorem P14703979892889341066.correct : P14703979892889341066.Spec := by
  intro n
  simp only [A011551]

end A011551

/-! ## A011551.P15267685300488088104

`A001622(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A011551.P15267685300488088104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001622 (n + 1) + 10 * a (n - 1)

end

end A011551.P15267685300488088104

namespace A011551

/-- `A001622(n)+10*a(n-1)` -/
def P15267685300488088104.Spec : Prop :=
  ∀ n, P15267685300488088104.a n = A011551 n

end A011551

/-! ## A011551.P16817998657207084108

`A296184(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A011551.P16817998657207084108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A296184 (n + 1) + 10 * a (n - 1)

end

end A011551.P16817998657207084108

namespace A011551

/-- `A296184(n)+10*a(n-1)` -/
def P16817998657207084108.Spec : Prop :=
  ∀ n, P16817998657207084108.a n = A011551 n

end A011551

/-! ## A011551.P7129586188102821682

`ceil(A008683(A020484(n))+ϕ*10^n)`
-/

namespace A011551.P7129586188102821682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008683 (A020484 n).toNat : ℝ) + Real.goldenRatio * (10 ^ n : ℝ)⌉

end

end A011551.P7129586188102821682

namespace A011551

/-- `ceil(A008683(A020484(n))+ϕ*10^n)` -/
def P7129586188102821682.Spec : Prop :=
  ∀ n, P7129586188102821682.a n = A011551 n

end A011551

/-! ## A011551.P5799559761534905865

`ceil(ϕ*10^n-A057427(A055898(n)))`
-/

namespace A011551.P5799559761534905865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (10 ^ n : ℝ) - (A057427 (A055898 n).toNat : ℝ)⌉

end

end A011551.P5799559761534905865

namespace A011551

/-- `ceil(ϕ*10^n-A057427(A055898(n)))` -/
def P5799559761534905865.Spec : Prop :=
  ∀ n, P5799559761534905865.a n = A011551 n

end A011551

/-!
# A011552: Decimal expansion of phi rounded to n places.

The programs for A011552, the canonical program `A011552.P17431479292703560334` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011552 has offset 0).

The definition of A011552 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011552.P17431479292703560334

`round(ϕ*10^n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011552

/-- `round(ϕ*10^n)` -/
def P17431479292703560334.Spec : Prop :=
  ∀ n, P17431479292703560334.a n = A011552 n

theorem P17431479292703560334.correct : P17431479292703560334.Spec := by
  intro n
  simp only [A011552]

end A011552

/-! ## A011552.P4175658026324679928

`A011557(n)+round(A011557(n)/ϕ)`
-/

namespace A011552.P4175658026324679928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n + SequenceMachineLib.roundAway ((A011557 n : ℝ) / Real.goldenRatio)

end

end A011552.P4175658026324679928

namespace A011552

/-- `A011557(n)+round(A011557(n)/ϕ)` -/
def P4175658026324679928.Spec : Prop :=
  ∀ n, P4175658026324679928.a n = A011552 n

end A011552

/-! ## A011552.P1895607457205429362

`record[round(ϕ*A165831(n+1))]`
-/

namespace A011552.P1895607457205429362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A165831 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011552.P1895607457205429362

namespace A011552

/-- `record[round(ϕ*A165831(n+1))]` -/
def P1895607457205429362.Spec : Prop :=
  ∀ n, P1895607457205429362.a n = A011552 n

end A011552

/-!
# A011553: Number of standard Young tableaux of type (n,n,n) whose (2,1) entry is odd.

The programs for A011553, there is no canonical definition to state claims against.
-/

/-! ## A011553.P15734517068270012588

`A230296(A234007(2*n+1)+1)`
-/

namespace A011553.P15734517068270012588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230296 (A234007 (2 * n + 1) + 1).toNat

end

end A011553.P15734517068270012588

/-!
# A011554: Stops with numerical values for A Train (8 Avenue express) in Manhattan, as of January 2023.

The programs for A011554, there is no canonical definition to state claims against.
-/

/-! ## A011554.P4922195594504590673

`A000054(record[∑[A173264(n)]])`
-/

namespace A011554.P4922195594504590673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173264 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000054 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A011554.P4922195594504590673

/-! ## A011554.P14301878624725931856

`A000054(or(A056823(n), A262504(n)))`
-/

namespace A011554.P14301878624725931856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000054 (Int.lor (A056823 n) (A262504 n)).toNat

end

end A011554.P14301878624725931856

/-!
# A011557: Powers of 10: a(n) = 10^n.

The programs for A011557, the canonical program `A011557.P11220211478167790856` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011557 has offset 0).

The definition of A011557 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n` (program `A011557.P11220211478167790856`, by `A011557.P11220211478167790856.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011557.P11220211478167790856

`10^n`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011557

/-- `10^n` -/
def P11220211478167790856.Spec : Prop :=
  ∀ n, (P11220211478167790856.a n : ℤ) = A011557 n

theorem P11220211478167790856.correct : P11220211478167790856.Spec := by
  intro n
  simp only [A011557]

end A011557

/-!
# A011558: Expansion of (x + x^3)/(1 + x + ... + x^4) mod 2.

The programs for A011558, the canonical program `A011558.P10594584635942187014` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011558 has offset 0).

The definition of A011558 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011558.P10594584635942187014

`1-A079998(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A011558

/-- `1-A079998(n)` -/
def P10594584635942187014.Spec : Prop :=
  ∀ n, P10594584635942187014.a n = A011558 n

theorem P10594584635942187014.correct : P10594584635942187014.Spec := by
  intro n
  simp only [A011558]

end A011558

/-!
# A011561: Stirling numbers of second kind S2(12,n).

The programs for A011561, there is no canonical definition to state claims against.
-/

/-! ## A011561.P17829076257277643067

`A008277(n+67)`
-/

namespace A011561.P17829076257277643067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 67)

end

end A011561.P17829076257277643067

/-! ## A011561.P12230903446877086819

`A048993(n+79)`
-/

namespace A011561.P12230903446877086819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (n + 79)

end

end A011561.P12230903446877086819

/-! ## A011561.P10371789118689577719

`A285012(A293755(n+1))`
-/

namespace A011561.P10371789118689577719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285012 (A293755 (n + 1)).toNat

end

end A011561.P10371789118689577719

/-! ## A011561.P9727770676826543287

`A285012(lt[A154624(n+1), A008302(n+1)])`
-/

namespace A011561.P9727770676826543287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285012 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A011561.P9727770676826543287

/-! ## A011561.P17957117331033813772

`A285012(lt[A131605(2*(n+1)), A123221(n)])`
-/

namespace A011561.P17957117331033813772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285012 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A011561.P17957117331033813772

/-!
# A011562: Stirling numbers of second kind S2(13,n).

The programs for A011562, there is no canonical definition to state claims against.
-/

/-! ## A011562.P7303619741146831016

`A008277(n+79)`
-/

namespace A011562.P7303619741146831016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 79)

end

end A011562.P7303619741146831016

/-! ## A011562.P17286449277166415111

`A048993(n+92)`
-/

namespace A011562.P17286449277166415111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (n + 92)

end

end A011562.P17286449277166415111

/-! ## A011562.P16305695269233446630

`A008278(91-A072089(n))`
-/

namespace A011562.P16305695269233446630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 (91 - A072089 n).toNat

end

end A011562.P16305695269233446630

/-! ## A011562.P7051660807829980698

`A106800(A038722(n+94))`
-/

namespace A011562.P7051660807829980698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 (A038722 (n + 94)).toNat

end

end A011562.P7051660807829980698

/-! ## A011562.P3764263754722803834

`A137651(A065475(n+1)+77)`
-/

namespace A011562.P3764263754722803834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137651 (A065475 (n + 1) + 77).toNat

end

end A011562.P3764263754722803834

/-!
# A011563: Stirling numbers of second kind S2(14,n).

The programs for A011563, there is no canonical definition to state claims against.
-/

/-! ## A011563.P12006479597620672455

`A008277(n+92)`
-/

namespace A011563.P12006479597620672455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 92)

end

end A011563.P12006479597620672455

/-! ## A011563.P8963762286705943941

`A048993(106+n)`
-/

namespace A011563.P8963762286705943941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (106 + n)

end

end A011563.P8963762286705943941

/-! ## A011563.P1523799618226416926

`A285012((A027926(n²)+13)²+n)`
-/

namespace A011563.P1523799618226416926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285012 ((A027926 (n ^ 2) + 13) ^ 2 + (n : ℤ)).toNat

end

end A011563.P1523799618226416926

/-!
# A011564: Stirling numbers of second kind S2(15,n).

The programs for A011564, there is no canonical definition to state claims against.
-/

/-! ## A011564.P9274020862396030032

`A008277(106+n)`
-/

namespace A011564.P9274020862396030032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (106 + n)

end

end A011564.P9274020862396030032

/-! ## A011564.P6294038947184742866

`A048993(121+n)`
-/

namespace A011564.P6294038947184742866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (121 + n)

end

end A011564.P6294038947184742866

/-!
# A011565: Stirling numbers of second kind S2(16,n).

The programs for A011565, there is no canonical definition to state claims against.
-/

/-! ## A011565.P14877516700742600311

`A008277(121+n)`
-/

namespace A011565.P14877516700742600311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (121 + n)

end

end A011565.P14877516700742600311

/-! ## A011565.P10886709368526108583

`A048993(137+n)`
-/

namespace A011565.P10886709368526108583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (137 + n)

end

end A011565.P10886709368526108583

/-! ## A011565.P11141979133352866898

`A285012(A112820(n+3)-18)`
-/

namespace A011565.P11141979133352866898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285012 (A112820 (n + 3) - 18).toNat

end

end A011565.P11141979133352866898

/-!
# A011566: Stirling numbers of second kind S2(17,n).

The programs for A011566, there is no canonical definition to state claims against.
-/

/-! ## A011566.P13069921742768289646

`A008277(137+n)`
-/

namespace A011566.P13069921742768289646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (137 + n)

end

end A011566.P13069921742768289646

/-! ## A011566.P17126836732949555152

`A048993(154+n)`
-/

namespace A011566.P17126836732949555152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (154 + n)

end

end A011566.P17126836732949555152

/-!
# A011567: Stirling numbers of second kind S2(18,n).

The programs for A011567, there is no canonical definition to state claims against.
-/

/-! ## A011567.P10093867675514055437

`A008277(154+n)`
-/

namespace A011567.P10093867675514055437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (154 + n)

end

end A011567.P10093867675514055437

/-! ## A011567.P2651269818071942805

`A048993(172+n)`
-/

namespace A011567.P2651269818071942805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (172 + n)

end

end A011567.P2651269818071942805

/-!
# A011568: Stirling numbers of second kind S2(19,n).

The programs for A011568, there is no canonical definition to state claims against.
-/

/-! ## A011568.P4718392419231279378

`A008277(172+n)`
-/

namespace A011568.P4718392419231279378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (172 + n)

end

end A011568.P4718392419231279378

/-! ## A011568.P2549301363786730508

`A048993(191+n)`
-/

namespace A011568.P2549301363786730508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (191 + n)

end

end A011568.P2549301363786730508

/-! ## A011568.P3052813105646577419

`A285012(361+n)`
-/

namespace A011568.P3052813105646577419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285012 (361 + n)

end

end A011568.P3052813105646577419

/-!
# A011569: Stirling numbers of second kind S2(20,n).

The programs for A011569, there is no canonical definition to state claims against.
-/

/-! ## A011569.P1009781311473568079

`A285012(400+n)`
-/

namespace A011569.P1009781311473568079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285012 (400 + n)

end

end A011569.P1009781311473568079

/-! ## A011569.P10395093341853625330

`A008277(A135600(n+1)+A103847(n+1))`
-/

namespace A011569.P10395093341853625330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (A135600 (n + 1) + A103847 (n + 1)).toNat

end

end A011569.P10395093341853625330

/-! ## A011569.P14396616629467066814

`A008277(A112820(n+1)-81)`
-/

namespace A011569.P14396616629467066814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (A112820 (n + 1) - 81).toNat

end

end A011569.P14396616629467066814

/-!
# A011570: Stirling numbers of second kind S2(21,n).

The programs for A011570, there is no canonical definition to state claims against.
-/

/-! ## A011570.P9959264933661760039

`A008277(211+n)`
-/

namespace A011570.P9959264933661760039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (211 + n)

end

end A011570.P9959264933661760039

/-! ## A011570.P8250125343761815369

`A048993(232+n)`
-/

namespace A011570.P8250125343761815369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (232 + n)

end

end A011570.P8250125343761815369

/-!
# A011571: Stirling numbers of second kind S2(22,n).

The programs for A011571, there is no canonical definition to state claims against.
-/

/-! ## A011571.P10971043536384848277

`A008277(232+n)`
-/

namespace A011571.P10971043536384848277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (232 + n)

end

end A011571.P10971043536384848277

/-! ## A011571.P17166428699741725585

`A048993(254+n)`
-/

namespace A011571.P17166428699741725585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (254 + n)

end

end A011571.P17166428699741725585

/-!
# A011572: Stirling numbers of second kind S2(23,n).

The programs for A011572, there is no canonical definition to state claims against.
-/

/-! ## A011572.P6564585149602098564

`A008277(254+n)`
-/

namespace A011572.P6564585149602098564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (254 + n)

end

end A011572.P6564585149602098564

/-! ## A011572.P15467566370841712105

`A285012(A112819(n+3))`
-/

namespace A011572.P15467566370841712105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285012 (A112819 (n + 3)).toNat

end

end A011572.P15467566370841712105

/-! ## A011572.P8506403321612969224

`A048993(A112820(n+1)+5)`
-/

namespace A011572.P8506403321612969224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A112820 (n + 1) + 5).toNat

end

end A011572.P8506403321612969224

/-! ## A011572.P17786899986111278796

`A048993(C(A048765(2*(n+3)), 2)+n+1)`
-/

namespace A011572.P17786899986111278796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (Nat.choose (A048765 (2 * (n + 3))).toNat 2 + (n + 1))

end

end A011572.P17786899986111278796

/-!
# A011582: Legendre symbol (n,11).

The programs for A011582, the canonical program `A011582.P16106722350450749318` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011582 has offset 0).

The definition of A011582 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011582.P16106722350450749318

`round(sin((n^5)%11))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011582

/-- `round(sin((n^5)%11))` -/
def P16106722350450749318.Spec : Prop :=
  ∀ n, P16106722350450749318.a n = A011582 n

theorem P16106722350450749318.correct : P16106722350450749318.Spec := by
  intro n
  simp only [A011582]

end A011582

/-!
# A011583: Legendre symbol (n,13).

The programs for A011583, the canonical program `A011583.P10422127668910521956` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011583 has offset 0).

The definition of A011583 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011583.P10422127668910521956

`floor(tan((n^6)%13))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011583

/-- `floor(tan((n^6)%13))` -/
def P10422127668910521956.Spec : Prop :=
  ∀ n, P10422127668910521956.a n = A011583 n

theorem P10422127668910521956.correct : P10422127668910521956.Spec := by
  intro n
  simp only [A011583]

end A011583

/-!
# A011584: Legendre symbol (n,17).

The programs for A011584, the canonical program `A011584.P12881364840349433345` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011584 has offset 0).

The definition of A011584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011584.P12881364840349433345

`(n²²²+1)%17-1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011584

/-- `(n²²²+1)%17-1` -/
def P12881364840349433345.Spec : Prop :=
  ∀ n, P12881364840349433345.a n = A011584 n

theorem P12881364840349433345.correct : P12881364840349433345.Spec := by
  intro n
  simp only [A011584]

end A011584

/-!
# A011585: Legendre symbol (n,19).

The programs for A011585, the canonical program `A011585.P5061405384106382312` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011585 has offset 0).

The definition of A011585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011585.P5061405384106382312

`A062157(A070481(n)+A007814(2*n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A011585

/-- `A062157(A070481(n)+A007814(2*n+1))` -/
def P5061405384106382312.Spec : Prop :=
  ∀ n, P5061405384106382312.a n = A011585 n

theorem P5061405384106382312.correct : P5061405384106382312.Spec := by
  intro n
  simp only [A011585]

end A011585

/-!
# A011586: Legendre symbol (n,23).

The programs for A011586, there is no canonical definition to state claims against.
-/

/-! ## A011586.P3364605285343775408

`char[A278580(n+1)]-char[A278579(n+1)]`
-/

namespace A011586.P3364605285343775408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278579 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A011586.P3364605285343775408

/-!
# A011587: Legendre symbol (n,29).

The programs for A011587, the canonical program `A011587.P8257473420210704875` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011587 has offset 0).

The definition of A011587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011587.P8257473420210704875

`1-C(2, A186305(2*n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A011587

/-- `1-C(2, A186305(2*n))` -/
def P8257473420210704875.Spec : Prop :=
  ∀ n, P8257473420210704875.a n = A011587 n

theorem P8257473420210704875.correct : P8257473420210704875.Spec := by
  intro n
  simp only [A011587]

end A011587

/-!
# A011588: Legendre symbol (n,31).

The programs for A011588, there is no canonical definition to state claims against.
-/

/-! ## A011588.P1276213308816821591

`A011582(A033042(lcm(2, n)))`
-/

namespace A011588.P1276213308816821591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011582 (A033042 (Nat.lcm 2 n)).toNat

end

end A011588.P1276213308816821591

/-!
# A011589: Legendre symbol (n,37).

The programs for A011589, there is no canonical definition to state claims against.
-/

/-! ## A011589.P12121190878682404020

`A215200(Δ[A000292(n+36)]+n-2*n)`
-/

namespace A011589.P12121190878682404020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 36)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215200 (f1 (n + 1) - f1 n + (n : ℤ) - (2 * n : ℤ)).toNat

end

end A011589.P12121190878682404020

/-!
# A011590: Legendre symbol (n,41).

The programs for A011590, there is no canonical definition to state claims against.
-/

/-! ## A011590.P14586151103595830831

`A165586(A282211(n))`
-/

namespace A011590.P14586151103595830831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165586 (A282211 n).toNat

end

end A011590.P14586151103595830831

/-!
# A011591: Legendre symbol (n,43).

The programs for A011591, there is no canonical definition to state claims against.
-/

/-! ## A011591.P16394118770758027217

`A011600(A000578(n))*A011613(n)`
-/

namespace A011591.P16394118770758027217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011600 (A000578 n).toNat * A011613 n

end

end A011591.P16394118770758027217

/-!
# A011592: Legendre symbol (n,47).

The programs for A011592, there is no canonical definition to state claims against.
-/

/-! ## A011592.P4377010324392594288

`A057428(n)^A036170(A233583(n+1))`
-/

namespace A011592.P4377010324392594288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057428 n : ℚ) ^ (A036170 (A233583 (n + 1)).toNat : ℤ)

end

end A011592.P4377010324392594288

/-!
# A011593: Legendre symbol (n,53).

The programs for A011593, there is no canonical definition to state claims against.
-/

/-! ## A011593.P105704767641929652

`A011587(A000096(n)*A293869(n+1))`
-/

namespace A011593.P105704767641929652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011587 (A000096 n * A293869 (n + 1)).toNat

end

end A011593.P105704767641929652

/-!
# A011594: Legendre symbol (n,59).

The programs for A011594, there is no canonical definition to state claims against.
-/

/-! ## A011594.P6562055138208439013

`A011605(n)*A165481(A000578(n))`
-/

namespace A011594.P6562055138208439013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011605 n * A165481 (A000578 n).toNat

end

end A011594.P6562055138208439013

/-!
# A011596: Legendre symbol (n,67).

The programs for A011596, there is no canonical definition to state claims against.
-/

/-! ## A011596.P7825749881463085887

`A011615(n)^A362551(A000204(n+1))`
-/

namespace A011596.P7825749881463085887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011615 n : ℚ) ^ (A362551 (A000204 (n + 1)).toNat : ℤ)

end

end A011596.P7825749881463085887

/-!
# A011597: Legendre symbol (n,71).

The programs for A011597, there is no canonical definition to state claims against.
-/

/-! ## A011597.P14052469393964751362

`A057428(n)^A036175(A233583(n+1))`
-/

namespace A011597.P14052469393964751362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057428 n : ℚ) ^ (A036175 (A233583 (n + 1)).toNat : ℤ)

end

end A011597.P14052469393964751362

/-!
# A011598: Legendre symbol (n,73).

The programs for A011598, there is no canonical definition to state claims against.
-/

/-! ## A011598.P17592505216326431484

`A057428(n)^A036176(A233583(n+1))`
-/

namespace A011598.P17592505216326431484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057428 n : ℚ) ^ (A036176 (A233583 (n + 1)).toNat : ℤ)

end

end A011598.P17592505216326431484

/-!
# A011599: Legendre symbol (n,79).

The programs for A011599, there is no canonical definition to state claims against.
-/

/-! ## A011599.P6621750769952073952

`(floor(acot(n))-1)^A036177(A233583(n+1))`
-/

namespace A011599.P6621750769952073952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1 : ℚ) ^ (A036177 (A233583 (n + 1)).toNat : ℤ)

end

end A011599.P6621750769952073952

