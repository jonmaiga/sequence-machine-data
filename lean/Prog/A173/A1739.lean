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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
# A173900: Positive numbers k such that the cube of each digit of k is a substring of k^2.

The programs for A173900, there is no canonical definition to state claims against.
-/

/-! ## A173900.P4443004528036913259

`A214957(A032555(n+2))`
-/

namespace A173900.P4443004528036913259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214957 (A032555 (n + 2)).toNat

end

end A173900.P4443004528036913259

/-! ## A173900.P8776409894032587206

`A214957(A032559(n+2))`
-/

namespace A173900.P8776409894032587206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214957 (A032559 (n + 2)).toNat

end

end A173900.P8776409894032587206

/-! ## A173900.P12971735863237194204

`A214957(A077739(n+2))`
-/

namespace A173900.P12971735863237194204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214957 (A077739 (n + 2)).toNat

end

end A173900.P12971735863237194204

/-! ## A173900.P1615516250201556648

`A214957(A078213(n+2))`
-/

namespace A173900.P1615516250201556648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214957 (A078213 (n + 2)).toNat

end

end A173900.P1615516250201556648

/-!
# A173902: Numbers n with property that the cube of each digit of n is a substring of n^3.

The programs for A173902, there is no canonical definition to state claims against.
-/

/-! ## A173902.P14996762749828711556

`lt[A102828(A257297(n)), A230089(n+1)]`
-/

namespace A173902.P14996762749828711556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102828 (A257297 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230089 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A173902.P14996762749828711556

/-! ## A173902.P311844614855803298

`lt[A000302(A053392(n)), A160791(3*n)]`
-/

namespace A173902.P311844614855803298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A053392 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160791 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A173902.P311844614855803298

/-! ## A173902.P18031230302904286382

`lt[2^∑{digits}[n, #%C(n, #)], A343998(2*n+3)]`
-/

namespace A173902.P18031230302904286382
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x % Nat.choose n x).sum

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343998 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A173902.P18031230302904286382

/-! ## A173902.P4050365635292412057

`lt[A154781(n+1), A001222(n+1)+1]+1`
-/

namespace A173902.P4050365635292412057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A173902.P4050365635292412057

/-! ## A173902.P13213259192807981269

`lt[A154781(n), A001222(A008486(n))]`
-/

namespace A173902.P13213259192807981269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154781 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A173902.P13213259192807981269

/-!
# A173904: Numbers k such that 7*k+-1 are prime.

The programs for A173904, there is no canonical definition to state claims against.
-/

/-! ## A173904.P11481965875448504089

`2*A124520(n+1)`
-/

namespace A173904.P11481965875448504089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124520 (n + 1)

end

end A173904.P11481965875448504089

/-! ## A173904.P17142008424220625352

`A127545(n+1)/7`
-/

namespace A173904.P17142008424220625352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127545 (n + 1) : ℚ) / 7

end

end A173904.P17142008424220625352

/-! ## A173904.P12947942344947195697

`A124520(A000027(n+1))+A124520(n+1)`
-/

namespace A173904.P12947942344947195697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124520 (A000027 (n + 1)).toNat + A124520 (n + 1)

end

end A173904.P12947942344947195697

/-! ## A173904.P7604184703768407398

`A124520(n+1)+A124520((n+1)%A014574(n+1))`
-/

namespace A173904.P7604184703768407398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124520 (n + 1) + A124520 (Int.tmod (n + 1 : ℤ) (A014574 (n + 1))).toNat

end

end A173904.P7604184703768407398

/-! ## A173904.P4712953257777236139

`∩[A024905(n+1), A165298(n+1)]`
-/

namespace A173904.P4712953257777236139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173904.P4712953257777236139

/-! ## A173904.P7327035052354207539

`A124520(n+1)+A124520(n+1)%A211721(n+1)`
-/

namespace A173904.P7327035052354207539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124520 (n + 1) + Int.tmod (A124520 (n + 1)) (A211721 (n + 1))

end

end A173904.P7327035052354207539

/-! ## A173904.P10045432856324652270

`A004277(A124520(n+1))`
-/

namespace A173904.P10045432856324652270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A124520 (n + 1)).toNat

end

end A173904.P10045432856324652270

/-! ## A173904.P14433132377768247008

`A285259(A124520(n+1))+A035455(A066670(n+1))`
-/

namespace A173904.P14433132377768247008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285259 (A124520 (n + 1)).toNat + A035455 (A066670 (n + 1)).toNat

end

end A173904.P14433132377768247008

/-! ## A173904.P9945479346649741128

`A285259(A124520(n+1))+A035455(A132740(n+1))`
-/

namespace A173904.P9945479346649741128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285259 (A124520 (n + 1)).toNat + A035455 (A132740 (n + 1)).toNat

end

end A173904.P9945479346649741128

/-!
# A173905: {2,3} and the nonprimes A141468.

The programs for A173905, the canonical program `A173905.P17556363632361322104` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173905 has offset 1).

The definition of A173905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173905.P17556363632361322104

`comp[p?[2*n+5]]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A173905

/-- `comp[p?[2*n+5]]` -/
def P17556363632361322104.Spec : Prop :=
  ∀ n, (P17556363632361322104.a n : ℤ) = A173905 (n + 1)

theorem P17556363632361322104.correct : P17556363632361322104.Spec := by
  intro n
  simp only [A173905, Nat.add_sub_cancel]

end A173905

/-! ## A173905.P17420643772746217266

`comp[A075571(n+1)]`
-/

namespace A173905.P17420643772746217266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A173905.P17420643772746217266

namespace A173905

/-- `comp[A075571(n+1)]` -/
def P17420643772746217266.Spec : Prop :=
  ∀ n, (P17420643772746217266.a n : ℤ) = A173905 (n + 1)

end A173905

/-! ## A173905.P2633863975350908535

`comp[A215848(n+1)]`
-/

namespace A173905.P2633863975350908535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A173905.P2633863975350908535

namespace A173905

/-- `comp[A215848(n+1)]` -/
def P2633863975350908535.Spec : Prop :=
  ∀ n, (P2633863975350908535.a n : ℤ) = A173905 (n + 1)

end A173905

/-! ## A173905.P1185385072736410651

`comp[A045344(n+2)]`
-/

namespace A173905.P1185385072736410651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A173905.P1185385072736410651

namespace A173905

/-- `comp[A045344(n+2)]` -/
def P1185385072736410651.Spec : Prop :=
  ∀ n, (P1185385072736410651.a n : ℤ) = A173905 (n + 1)

end A173905

/-! ## A173905.P12561231818516063110

`comp[A060264(n+2)]`
-/

namespace A173905.P12561231818516063110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A173905.P12561231818516063110

namespace A173905

/-- `comp[A060264(n+2)]` -/
def P12561231818516063110.Spec : Prop :=
  ∀ n, (P12561231818516063110.a n : ℤ) = A173905 (n + 1)

end A173905

/-! ## A173905.P17231811066844013654

`comp[A065091(n+2)]`
-/

namespace A173905.P17231811066844013654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A173905.P17231811066844013654

namespace A173905

/-- `comp[A065091(n+2)]` -/
def P17231811066844013654.Spec : Prop :=
  ∀ n, (P17231811066844013654.a n : ℤ) = A173905 (n + 1)

end A173905

/-! ## A173905.P802540344954427633

`comp[A081259(n+2)]`
-/

namespace A173905.P802540344954427633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081259 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A173905.P802540344954427633

namespace A173905

/-- `comp[A081259(n+2)]` -/
def P802540344954427633.Spec : Prop :=
  ∀ n, (P802540344954427633.a n : ℤ) = A173905 (n + 1)

end A173905

/-! ## A173905.P5475175944997977608

`comp[A099863(n+2)]`
-/

namespace A173905.P5475175944997977608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099863 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A173905.P5475175944997977608

namespace A173905

/-- `comp[A099863(n+2)]` -/
def P5475175944997977608.Spec : Prop :=
  ∀ n, (P5475175944997977608.a n : ℤ) = A173905 (n + 1)

end A173905

/-! ## A173905.P17575928868586684300

`comp[A118749(n+2)]`
-/

namespace A173905.P17575928868586684300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118749 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A173905.P17575928868586684300

namespace A173905

/-- `comp[A118749(n+2)]` -/
def P17575928868586684300.Spec : Prop :=
  ∀ n, (P17575928868586684300.a n : ℤ) = A173905 (n + 1)

end A173905

/-! ## A173905.P5972035192007591450

`comp[A134204(n+2)]`
-/

namespace A173905.P5972035192007591450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134204 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A173905.P5972035192007591450

namespace A173905

/-- `comp[A134204(n+2)]` -/
def P5972035192007591450.Spec : Prop :=
  ∀ n, (P5972035192007591450.a n : ℤ) = A173905 (n + 1)

end A173905

/-! ## A173905.P15530781474425534257

`comp[A000040(n+3)]`
-/

namespace A173905.P15530781474425534257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A173905.P15530781474425534257

namespace A173905

/-- `comp[A000040(n+3)]` -/
def P15530781474425534257.Spec : Prop :=
  ∀ n, (P15530781474425534257.a n : ℤ) = A173905 (n + 1)

end A173905

/-! ## A173905.P12783391896001930243

`comp[record[A006530(n+5)]]`
-/

namespace A173905.P12783391896001930243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A173905.P12783391896001930243

namespace A173905

/-- `comp[record[A006530(n+5)]]` -/
def P12783391896001930243.Spec : Prop :=
  ∀ n, (P12783391896001930243.a n : ℤ) = A173905 (n + 1)

end A173905

/-! ## A173905.P6576026350826880907

`comp[record[A020639(n+5)]]`
-/

namespace A173905.P6576026350826880907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A173905.P6576026350826880907

namespace A173905

/-- `comp[record[A020639(n+5)]]` -/
def P6576026350826880907.Spec : Prop :=
  ∀ n, (P6576026350826880907.a n : ℤ) = A173905 (n + 1)

end A173905

/-! ## A173905.P2487912654034932993

`∪[2*n, A171581(n+1)]`
-/

namespace A173905.P2487912654034932993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A173905.P2487912654034932993

namespace A173905

/-- `∪[2*n, A171581(n+1)]` -/
def P2487912654034932993.Spec : Prop :=
  ∀ n, (P2487912654034932993.a n : ℤ) = A173905 (n + 1)

end A173905

/-! ## A173905.P18089556021273281140

`∪[A001094(n), A002808(n+1)]`
-/

namespace A173905.P18089556021273281140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001094 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A173905.P18089556021273281140

namespace A173905

/-- `∪[A001094(n), A002808(n+1)]` -/
def P18089556021273281140.Spec : Prop :=
  ∀ n, (P18089556021273281140.a n : ℤ) = A173905 (n + 1)

end A173905

/-! ## A173905.P13461579335949529669

`∪[A001095(n), A002808(n+1)]`
-/

namespace A173905.P13461579335949529669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001095 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A173905.P13461579335949529669

namespace A173905

/-- `∪[A001095(n), A002808(n+1)]` -/
def P13461579335949529669.Spec : Prop :=
  ∀ n, (P13461579335949529669.a n : ℤ) = A173905 (n + 1)

end A173905

/-! ## A173905.P17645391412863928773

`∪[A002808(n+1), A004271(n)]`
-/

namespace A173905.P17645391412863928773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A173905.P17645391412863928773

namespace A173905

/-- `∪[A002808(n+1), A004271(n)]` -/
def P17645391412863928773.Spec : Prop :=
  ∀ n, (P17645391412863928773.a n : ℤ) = A173905 (n + 1)

end A173905

/-! ## A173905.P14974400899418956853

`∪[A004271(n), A005381(n+1)]`
-/

namespace A173905.P14974400899418956853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A173905.P14974400899418956853

namespace A173905

/-- `∪[A004271(n), A005381(n+1)]` -/
def P14974400899418956853.Spec : Prop :=
  ∀ n, (P14974400899418956853.a n : ℤ) = A173905 (n + 1)

end A173905

/-! ## A173905.P6841389900530364647

`∪[A002808(n+1), A009224(n)]`
-/

namespace A173905.P6841389900530364647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009224 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A173905.P6841389900530364647

namespace A173905

/-- `∪[A002808(n+1), A009224(n)]` -/
def P6841389900530364647.Spec : Prop :=
  ∀ n, (P6841389900530364647.a n : ℤ) = A173905 (n + 1)

end A173905

/-! ## A173905.P14852914057618237650

`∪[A004271(n), A009188(n+1)]`
-/

namespace A173905.P14852914057618237650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A173905.P14852914057618237650

namespace A173905

/-- `∪[A004271(n), A009188(n+1)]` -/
def P14852914057618237650.Spec : Prop :=
  ∀ n, (P14852914057618237650.a n : ℤ) = A173905 (n + 1)

end A173905

/-!
# A173906: Total number of digits of the squares of all n-digit numbers.

The programs for A173906, the canonical program `A173906.P10721168870671252861` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173906 has offset 1).

The definition of A173906 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062940, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A173906.P10721168870671252861

`(2*(n+1)-1)*A062940(2*(n+1)-1)+2*(n+1)*A062940(2*(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A173906

/-- `(2*(n+1)-1)*A062940(2*(n+1)-1)+2*(n+1)*A062940(2*(n+1))` -/
def P10721168870671252861.Spec : Prop :=
  ∀ n, P10721168870671252861.a n = A173906 (n + 1)

theorem P10721168870671252861.correct : P10721168870671252861.Spec := by
  intro n
  simp only [A173906, Nat.add_sub_cancel]

end A173906

/-!
# A173908: Expansion of 1/(1 + x - x^3 - x^4 - x^8 - x^12 - x^13 - x^17 - x^21 - x^22 - x^26 - x^30 - x^31 + x^33 + x^34).

The programs for A173908, there is no canonical definition to state claims against.
-/

/-! ## A173908.P7835896192998658396

`∑[A197431(A167499(n+3))]%2-a(n-1)` with `a(0)=1`
-/

namespace A173908.P7835896192998658396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197431 (A167499 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2 - a (n - 1)

end

end A173908.P7835896192998658396

/-! ## A173908.P16957175533685884386

`A352824(A008578(2*n+5)+1)-a(n-1)` with `a(0)=1`
-/

namespace A173908.P16957175533685884386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A352824 (A008578 (2 * n + 5) + 1).toNat - a (n - 1)

end

end A173908.P16957175533685884386

/-! ## A173908.P2551283454942263700

`Δ[Δ[A127321(A290209(n))]]`
-/

namespace A173908.P2551283454942263700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A290209 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173908.P2551283454942263700

/-! ## A173908.P2439139703244073252

`Δ[Δ[A127321(A321119(n))]]`
-/

namespace A173908.P2439139703244073252
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A321119 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173908.P2439139703244073252

/-! ## A173908.P7850936747207007111

`A284622(A289373(n+1))-a(n-1)` with `a(0)=1`
-/

namespace A173908.P7850936747207007111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A284622 (A289373 (n + 1)).toNat - a (n - 1)

end

end A173908.P7850936747207007111

/-!
# A173911: Expansion of 1/(1 - x + x^2 - x^3 - x^6 + x^7 - x^8 + x^9 - x^10 + x^11 - x^12 -x^15 + x^16 - x^17 + x^18).

The programs for A173911, the canonical program `A173911.P11956772559101159851` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173911 has offset 0).

The definition of A173911 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x+x^2-x^3-x^6+x^7-x^8+x^9-x^10+x^11-x^12-x^15+x^16-x^17+x^18))` (program `A173911.P11956772559101159851`, by `A173911.P11956772559101159851.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173911.P11956772559101159851

`ogf(1/(1-x+x^2-x^3-x^6+x^7-x^8+x^9-x^10+x^11-x^12-x^15+x^16-x^17+x^18))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A173911

/-- `ogf(1/(1-x+x^2-x^3-x^6+x^7-x^8+x^9-x^10+x^11-x^12-x^15+x^16-x^17+x^18))` -/
def P11956772559101159851.Spec : Prop :=
  ∀ n, P11956772559101159851.a n = A173911 n

theorem P11956772559101159851.correct : P11956772559101159851.Spec := by
  intro n
  simp only [A173911]

end A173911

/-! ## A173911.P5659477863635799888

`A048766(A006498(n)+A010052(n)-A000045(n))`
-/

namespace A173911.P5659477863635799888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A006498 n + (A010052 n - A000045 n)).toNat

end

end A173911.P5659477863635799888

namespace A173911

/-- `A048766(A006498(n)+A010052(n)-A000045(n))` -/
def P5659477863635799888.Spec : Prop :=
  ∀ n, P5659477863635799888.a n = A173911 n

end A173911

/-! ## A173911.P9260731347237440843

`A048766(A006498(n)-(A000045(n)-A010052(n)))`
-/

namespace A173911.P9260731347237440843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A006498 n - (A000045 n - A010052 n)).toNat

end

end A173911.P9260731347237440843

namespace A173911

/-- `A048766(A006498(n)-(A000045(n)-A010052(n)))` -/
def P9260731347237440843.Spec : Prop :=
  ∀ n, P9260731347237440843.a n = A173911 n

end A173911

/-! ## A173911.P11577094792667121001

`A048766(A008611(A173173(n)%A006131(n)))`
-/

namespace A173911.P11577094792667121001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A008611 (Int.tmod (A173173 n) (A006131 n)).toNat).toNat

end

end A173911.P11577094792667121001

namespace A173911

/-- `A048766(A008611(A173173(n)%A006131(n)))` -/
def P11577094792667121001.Spec : Prop :=
  ∀ n, P11577094792667121001.a n = A173911 n

end A173911

/-! ## A173911.P4385306703231148859

`A048766(A087780(n+1)+A008611(A173173(n)))`
-/

namespace A173911.P4385306703231148859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A087780 (n + 1) + A008611 (A173173 n).toNat).toNat

end

end A173911.P4385306703231148859

namespace A173911

/-- `A048766(A087780(n+1)+A008611(A173173(n)))` -/
def P4385306703231148859.Spec : Prop :=
  ∀ n, P4385306703231148859.a n = A173911 n

end A173911

/-!
# A173912: Numbers x that when put through Lucas-Lehmer tests give a residue that has a digital root of 0 or 9.

The programs for A173912, there is no canonical definition to state claims against.
-/

/-! ## A173912.P6712687923340433273

`eq[A007895(A056239(n+1)), A227571(n)]`
-/

namespace A173912.P6712687923340433273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A056239 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227571 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A173912.P6712687923340433273

/-! ## A173912.P4890475715577990918

`∑[A372471((n+1)²)+1]`
-/

namespace A173912.P4890475715577990918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372471 ((n + 1) ^ 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173912.P4890475715577990918

/-! ## A173912.P12959407962472413363

`record[A053835(A051026(n+2))]`
-/

namespace A173912.P12959407962472413363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053835 (A051026 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173912.P12959407962472413363

/-! ## A173912.P7317379570526523048

`A175427(A152820(n+1)+1)`
-/

namespace A173912.P7317379570526523048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (A152820 (n + 1) + 1).toNat

end

end A173912.P7317379570526523048

/-! ## A173912.P14117164042750515435

`eq[n%2, A001468(A264443(n))]`
-/

namespace A173912.P14117164042750515435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A264443 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173912.P14117164042750515435

/-!
# A173916: Primes of the form R(k!!-1), where R(k) is the digit reversal of k.

The programs for A173916, there is no canonical definition to state claims against.
-/

/-! ## A173916.P11392169383572915196

`A052248(A090580(n+1)+A052752(n))`
-/

namespace A173916.P11392169383572915196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052248 (A090580 (n + 1) + A052752 n).toNat

end

end A173916.P11392169383572915196

/-!
# A173917: A double product sequence based on a=2; f(n,a) = f(n-1,a) + a*f(n-2,a).

The programs for A173917, there is no canonical definition to state claims against.
-/

/-! ## A173917.P8196647292268680904

`A174410(n)/A067029(A153648(n+1))`
-/

namespace A173917.P8196647292268680904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174410 n : ℚ) / (A067029 (A153648 (n + 1)).toNat : ℚ)

end

end A173917.P8196647292268680904

/-! ## A173917.P5499965664209612131

`A082725(A174410(n))`
-/

namespace A173917.P5499965664209612131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082725 (A174410 n).toNat

end

end A173917.P5499965664209612131

/-! ## A173917.P6621483163827485473

`A090395(2*A174410(n))`
-/

namespace A173917.P6621483163827485473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090395 (2 * A174410 n).toNat

end

end A173917.P6621483163827485473

/-! ## A173917.P2589611270110876638

`A090395(lcm(2, A174410(n)))`
-/

namespace A173917.P2589611270110876638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090395 (Int.lcm 2 (A174410 n))

end

end A173917.P2589611270110876638

/-! ## A173917.P2674045488740254141

`A090395(or(1, A174410(n)))`
-/

namespace A173917.P2674045488740254141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090395 (Int.lor 1 (A174410 n)).toNat

end

end A173917.P2674045488740254141

/-!
# A173918: A double product sequence based on a=3;f(n,a)=f(n-1,a)+a*f(n-2,a).

The programs for A173918, there is no canonical definition to state claims against.
-/

/-! ## A173918.P13023657742558946675

`A174412(n)/A092542(A086645(n))`
-/

namespace A173918.P13023657742558946675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174412 n : ℚ) / (A092542 (A086645 n).toNat : ℚ)

end

end A173918.P13023657742558946675

/-! ## A173918.P15172073156794423657

`A174412(n)/A034367(A154844(n))`
-/

namespace A173918.P15172073156794423657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174412 n : ℚ) / (A034367 (A154844 n).toNat : ℚ)

end

end A173918.P15172073156794423657

/-! ## A173918.P5798190129408641999

`A174412(n)/A139040(A174410(n))`
-/

namespace A173918.P5798190129408641999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174412 n : ℚ) / (A139040 (A174410 n).toNat : ℚ)

end

end A173918.P5798190129408641999

/-! ## A173918.P18035376439307004503

`A174412(n)/A174412(A299905(n)²)`
-/

namespace A173918.P18035376439307004503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174412 n : ℚ) / (A174412 (A299905 n ^ 2).toNat : ℚ)

end

end A173918.P18035376439307004503

/-! ## A173918.P17398760062449358357

`A174412(n)/A174412(A156953(n))`
-/

namespace A173918.P17398760062449358357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174412 n : ℚ) / (A174412 (A156953 n).toNat : ℚ)

end

end A173918.P17398760062449358357

/-!
# A173919: Numbers that are prime or one less than a prime.

The programs for A173919, the canonical program `A173919.P13920908538941556849` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173919 has offset 1).

The definition of A173919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173919.P13920908538941556849

`A093515(n+1)-1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A173919

/-- `A093515(n+1)-1` -/
def P13920908538941556849.Spec : Prop :=
  ∀ n, P13920908538941556849.a n = A173919 (n + 1)

theorem P13920908538941556849.correct : P13920908538941556849.Spec := by
  intro n
  simp only [A173919, Nat.add_sub_cancel]

end A173919

/-! ## A173919.P17087714099601298065

`eq[1, A121561(n+1)]`
-/

namespace A173919.P17087714099601298065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121561 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173919.P17087714099601298065

namespace A173919

/-- `eq[1, A121561(n+1)]` -/
def P17087714099601298065.Spec : Prop :=
  ∀ n, (P17087714099601298065.a n : ℤ) = A173919 (n + 1)

end A173919

/-! ## A173919.P12723871850213334335

`floor(sqrt(A385186(n+1)))`
-/

namespace A173919.P12723871850213334335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A385186 (n + 1))

end

end A173919.P12723871850213334335

namespace A173919

/-- `floor(sqrt(A385186(n+1)))` -/
def P12723871850213334335.Spec : Prop :=
  ∀ n, P12723871850213334335.a n = A173919 (n + 1)

end A173919

/-! ## A173919.P12944741824864588174

`A385186(n+1)/A093515(n+1)`
-/

namespace A173919.P12944741824864588174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385186 (n + 1) : ℚ) / (A093515 (n + 1) : ℚ)

end

end A173919.P12944741824864588174

namespace A173919

/-- `A385186(n+1)/A093515(n+1)` -/
def P12944741824864588174.Spec : Prop :=
  ∀ n, P12944741824864588174.a n = (A173919 (n + 1) : ℚ)

end A173919

/-! ## A173919.P5866186810779056822

`record[A119257(n+1)]`
-/

namespace A173919.P5866186810779056822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173919.P5866186810779056822

namespace A173919

/-- `record[A119257(n+1)]` -/
def P5866186810779056822.Spec : Prop :=
  ∀ n, P5866186810779056822.a n = A173919 (n + 1)

end A173919

/-! ## A173919.P7626274741891752893

`A119257(a(n-1)+1)` with `a(0)=1`
-/

namespace A173919.P7626274741891752893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A119257 (a (n - 1) + 1).toNat

end

end A173919.P7626274741891752893

namespace A173919

/-- `A119257(a(n-1)+1)` -/
def P7626274741891752893.Spec : Prop :=
  ∀ n, P7626274741891752893.a n = A173919 (n + 1)

end A173919

/-! ## A173919.P14094316057923551839

`eq[1, A175078(n+2)]`
-/

namespace A173919.P14094316057923551839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173919.P14094316057923551839

namespace A173919

/-- `eq[1, A175078(n+2)]` -/
def P14094316057923551839.Spec : Prop :=
  ∀ n, (P14094316057923551839.a n : ℤ) = A173919 (n + 1)

end A173919

/-! ## A173919.P14277493246851084487

`lt[∏{d}[2*n-a(n-1), #], 2*n]` with `a(0)=1`
-/

namespace A173919.P14277493246851084487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (2 * n : ℤ) - f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, d

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A173919.P14277493246851084487

namespace A173919

/-- `lt[∏{d}[2*n-a(n-1), #], 2*n]` -/
def P14277493246851084487.Spec : Prop :=
  ∀ n, (P14277493246851084487.a n : ℤ) = A173919 (n + 1)

end A173919

/-! ## A173919.P13488381091075864702

`lt[A007920(n), 2]`
-/

namespace A173919.P13488381091075864702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A173919.P13488381091075864702

namespace A173919

/-- `lt[A007920(n), 2]` -/
def P13488381091075864702.Spec : Prop :=
  ∀ n, (P13488381091075864702.a n : ℤ) = A173919 (n + 1)

end A173919

/-! ## A173919.P11140281032633706035

`lt[A056897(n), 2]+1`
-/

namespace A173919.P11140281032633706035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056897 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A173919.P11140281032633706035

namespace A173919

/-- `lt[A056897(n), 2]+1` -/
def P11140281032633706035.Spec : Prop :=
  ∀ n, (P11140281032633706035.a n : ℤ) = A173919 (n + 1)

end A173919

/-! ## A173919.P10200951443543493220

`lt[n, A110560(n)]+1`
-/

namespace A173919.P10200951443543493220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A173919.P10200951443543493220

namespace A173919

/-- `lt[n, A110560(n)]+1` -/
def P10200951443543493220.Spec : Prop :=
  ∀ n, (P10200951443543493220.a n : ℤ) = A173919 (n + 1)

end A173919

/-! ## A173919.P6141470253782852182

`lt[A007918(n)-n, 2]`
-/

namespace A173919.P6141470253782852182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A173919.P6141470253782852182

namespace A173919

/-- `lt[A007918(n)-n, 2]` -/
def P6141470253782852182.Spec : Prop :=
  ∀ n, (P6141470253782852182.a n : ℤ) = A173919 (n + 1)

end A173919

/-!
# A173920: Triangle read by rows: T(n,k) = convolution of n with k in binary representation, 0<=k<=n.

The programs for A173920, there is no canonical definition to state claims against.
-/

/-! ## A173920.P13014352678698006434

`A196563(A002260(n+1)^A287824(n+1))`
-/

namespace A173920.P13014352678698006434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (SequenceMachineLib.roundAway ((A002260 (n + 1) : ℚ) ^ (A287824 (n + 1) : ℤ))).toNat

end

end A173920.P13014352678698006434

/-! ## A173920.P14029395156263709806

`and(A001221(A144215(n+1)), A324260(n+1))`
-/

namespace A173920.P14029395156263709806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001221 (A144215 (n + 1)).toNat) (A324260 (n + 1))

end

end A173920.P14029395156263709806

/-! ## A173920.P17893931395116714432

`A007968(A112360(n)%(lcm(6, (n+1)²)/6))`
-/

namespace A173920.P17893931395116714432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 (Int.tmod (A112360 n) (SequenceMachineLib.roundAway ((Nat.lcm 6 ((n + 1) ^ 2) : ℚ) / 6))).toNat

end

end A173920.P17893931395116714432

/-! ## A173920.P6395531603152380414

`A196564(A002262(n)^A242312(n+3))`
-/

namespace A173920.P6395531603152380414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (SequenceMachineLib.roundAway ((A002262 n : ℚ) ^ (A242312 (n + 3) : ℤ))).toNat

end

end A173920.P6395531603152380414

/-!
# A173922: In the sequence of nonnegative integers substitute all n by 2^floor(n/4) occurrences of (n mod 2).

The programs for A173922, the canonical program `A173922.P17619675527876589984` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173922 has offset 0).

The definition of A173922 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A173922.P17619675527876589984

`A000035(A002265(A030101(n+4)))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A173922

/-- `A000035(A002265(A030101(n+4)))` -/
def P17619675527876589984.Spec : Prop :=
  ∀ n, P17619675527876589984.a n = A173922 n

theorem P17619675527876589984.correct : P17619675527876589984.Spec := by
  intro n
  simp only [A173922]

end A173922

/-! ## A173922.P15946020683810595202

`a(floor(n/2)-2)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A173922.P15946020683810595202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 1] fun n a =>
  a (⌊(n : ℚ) / 2⌋ - 2).toNat

end

end A173922.P15946020683810595202

namespace A173922

/-- `a(floor(n/2)-2)` -/
def P15946020683810595202.Spec : Prop :=
  ∀ n, (P15946020683810595202.a n : ℤ) = A173922 n

end A173922

/-! ## A173922.P10089703846984844882

`sqrt(a(∑[char[2*n]]-3))` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A173922.P10089703846984844882
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1, 0, 1] fun n a =>
  Real.sqrt (a (∑ j ∈ Finset.range (n + 1), f1 j - 3))

end

end A173922.P10089703846984844882

namespace A173922

/-- `sqrt(a(∑[char[2*n]]-3))` -/
def P10089703846984844882.Spec : Prop :=
  ∀ n, P10089703846984844882.a n = (A173922 n : ℝ)

end A173922

/-! ## A173922.P980760802609430168

`floor(a(∑[char[2*n]]-3))` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A173922.P980760802609430168
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 1] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j - 3)

end

end A173922.P980760802609430168

namespace A173922

/-- `floor(a(∑[char[2*n]]-3))` -/
def P980760802609430168.Spec : Prop :=
  ∀ n, (P980760802609430168.a n : ℤ) = A173922 n

end A173922

/-! ## A173922.P15191323867766172711

`abs(a(and(n, -2)/2-2))` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A173922.P15191323867766172711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 1] fun n a =>
  a (SequenceMachineLib.roundAway ((Int.land (n : ℤ) (-2) : ℚ) / 2 - 2)).toNat

end

end A173922.P15191323867766172711

namespace A173922

/-- `abs(a(and(n, -2)/2-2))` -/
def P15191323867766172711.Spec : Prop :=
  ∀ n, (P15191323867766172711.a n : ℤ) = A173922 n

end A173922

/-! ## A173922.P116787138903635070

`a(round((n-3)/2)-1)²` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A173922.P116787138903635070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 1] fun n a =>
  a (SequenceMachineLib.roundAway (((n : ℤ) - 3 : ℚ) / 2) - 1).toNat ^ 2

end

end A173922.P116787138903635070

namespace A173922

/-- `a(round((n-3)/2)-1)²` -/
def P116787138903635070.Spec : Prop :=
  ∀ n, (P116787138903635070.a n : ℤ) = A173922 n

end A173922

/-! ## A173922.P12237228697447980518

`abs(a(ceil(abs((1-n)/2))-2))` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A173922.P12237228697447980518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 1] fun n a =>
  a (⌈|(1 - (n : ℤ) : ℚ) / 2|⌉ - 2).toNat

end

end A173922.P12237228697447980518

namespace A173922

/-- `abs(a(ceil(abs((1-n)/2))-2))` -/
def P12237228697447980518.Spec : Prop :=
  ∀ n, (P12237228697447980518.a n : ℤ) = A173922 n

end A173922

/-! ## A173922.P12979270184251275751

`val(or(5, A103694(n)), 7)`
-/

namespace A173922.P12979270184251275751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.lor 5 (A103694 n)).toNat 7

end

end A173922.P12979270184251275751

namespace A173922

/-- `val(or(5, A103694(n)), 7)` -/
def P12979270184251275751.Spec : Prop :=
  ∀ n, (P12979270184251275751.a n : ℤ) = A173922 n

end A173922

/-! ## A173922.P13854105176838788939

`log2(gcd(2, A049776(n+2)))`
-/

namespace A173922.P13854105176838788939
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A049776 (n + 2)) : ℝ)

end

end A173922.P13854105176838788939

namespace A173922

/-- `log2(gcd(2, A049776(n+2)))` -/
def P13854105176838788939.Spec : Prop :=
  ∀ n, P13854105176838788939.a n = (A173922 n : ℝ)

end A173922

/-! ## A173922.P14104829103792005861

`char[A059893(or(2, n))-4]`
-/

namespace A173922.P14104829103792005861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (Nat.lor 2 n) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A173922.P14104829103792005861

namespace A173922

/-- `char[A059893(or(2, n))-4]` -/
def P14104829103792005861.Spec : Prop :=
  ∀ n, (P14104829103792005861.a n : ℤ) = A173922 n

end A173922

/-! ## A173922.P8184214997262021248

`char[A080544(2*n+1)-4]`
-/

namespace A173922.P8184214997262021248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080544 (2 * n + 1) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A173922.P8184214997262021248

namespace A173922

/-- `char[A080544(2*n+1)-4]` -/
def P8184214997262021248.Spec : Prop :=
  ∀ n, (P8184214997262021248.a n : ℤ) = A173922 n

end A173922

/-! ## A173922.P8942931290979251038

`floor((n+4)/A064706(n+4))`
-/

namespace A173922.P8942931290979251038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 4 : ℚ) / (A064706 (n + 4) : ℚ)⌋

end

end A173922.P8942931290979251038

namespace A173922

/-- `floor((n+4)/A064706(n+4))` -/
def P8942931290979251038.Spec : Prop :=
  ∀ n, P8942931290979251038.a n = A173922 n

end A173922

/-! ## A173922.P2374225834074384398

`A011747(A103701(n+1))`
-/

namespace A173922.P2374225834074384398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011747 (A103701 (n + 1)).toNat

end

end A173922.P2374225834074384398

namespace A173922

/-- `A011747(A103701(n+1))` -/
def P2374225834074384398.Spec : Prop :=
  ∀ n, P2374225834074384398.a n = A173922 n

end A173922

/-! ## A173922.P3784536176300974479

`A059841(A049776(n+2))`
-/

namespace A173922.P3784536176300974479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A049776 (n + 2)).toNat

end

end A173922.P3784536176300974479

namespace A173922

/-- `A059841(A049776(n+2))` -/
def P3784536176300974479.Spec : Prop :=
  ∀ n, P3784536176300974479.a n = A173922 n

end A173922

/-! ## A173922.P14673464472562502201

`A123640(A317407(n+2))`
-/

namespace A173922.P14673464472562502201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123640 (A317407 (n + 2)).toNat

end

end A173922.P14673464472562502201

namespace A173922

/-- `A123640(A317407(n+2))` -/
def P14673464472562502201.Spec : Prop :=
  ∀ n, P14673464472562502201.a n = A173922 n

end A173922

/-! ## A173922.P11615392692301425093

`A038189(A006995(n+4))`
-/

namespace A173922.P11615392692301425093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (A006995 (n + 4)).toNat

end

end A173922.P11615392692301425093

namespace A173922

/-- `A038189(A006995(n+4))` -/
def P11615392692301425093.Spec : Prop :=
  ∀ n, P11615392692301425093.a n = A173922 n

end A173922

/-! ## A173922.P5661397722344923233

`A000035(A080543(n+4))`
-/

namespace A173922.P5661397722344923233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A080543 (n + 4)).toNat

end

end A173922.P5661397722344923233

namespace A173922

/-- `A000035(A080543(n+4))` -/
def P5661397722344923233.Spec : Prop :=
  ∀ n, P5661397722344923233.a n = A173922 n

end A173922

/-! ## A173922.P14699364056174142625

`A021913(A059893(n+4))`
-/

namespace A173922.P14699364056174142625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A059893 (n + 4)).toNat

end

end A173922.P14699364056174142625

namespace A173922

/-- `A021913(A059893(n+4))` -/
def P14699364056174142625.Spec : Prop :=
  ∀ n, P14699364056174142625.a n = A173922 n

end A173922

/-! ## A173922.P13907655586089211954

`A023969(or(1, A103694(n)))`
-/

namespace A173922.P13907655586089211954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023969 (Int.lor 1 (A103694 n)).toNat

end

end A173922.P13907655586089211954

namespace A173922

/-- `A023969(or(1, A103694(n)))` -/
def P13907655586089211954.Spec : Prop :=
  ∀ n, P13907655586089211954.a n = A173922 n

end A173922

/-!
# A173923: In the sequence of nonnegative integers substitute all n by 2^floor(n/8) occurrences of (n mod 2).

The programs for A173923, the canonical program `A173923.P10840480804469181145` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173923 has offset 0).

The definition of A173923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173923.P10840480804469181145

`a(floor((n-8%(n+1))/2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A173923

/-- `a(floor((n-8%(n+1))/2))` -/
def P10840480804469181145.Spec : Prop :=
  ∀ n, (P10840480804469181145.a n : ℤ) = A173923 n

theorem P10840480804469181145.correct : P10840480804469181145.Spec := by
  intro n
  simp only [A173923]

end A173923

/-! ## A173923.P4933536663956866770

`a(floor((9*n)%(n+1)/2))` with `a(0)=0, a(1)=1`
-/

namespace A173923.P4933536663956866770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ⌊((9 * n % (n + 1) : ℕ) : ℚ) / 2⌋.toNat

end

end A173923.P4933536663956866770

namespace A173923

/-- `a(floor((9*n)%(n+1)/2))` -/
def P4933536663956866770.Spec : Prop :=
  ∀ n, (P4933536663956866770.a n : ℤ) = A173923 n

end A173923

/-! ## A173923.P10914638553213636093

`a(floor(n/2)-4)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=0, a(5)=1, a(6)=0, a(7)=1`
-/

namespace A173923.P10914638553213636093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 1, 0, 1, 0, 1] fun n a =>
  a (⌊(n : ℚ) / 2⌋ - 4).toNat

end

end A173923.P10914638553213636093

namespace A173923

/-- `a(floor(n/2)-4)` -/
def P10914638553213636093.Spec : Prop :=
  ∀ n, (P10914638553213636093.a n : ℤ) = A173923 n

end A173923

/-! ## A173923.P5513682513402116398

`val(A110765(n+8), 7)`
-/

namespace A173923.P5513682513402116398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A110765 (n + 8)).toNat 7

end

end A173923.P5513682513402116398

namespace A173923

/-- `val(A110765(n+8), 7)` -/
def P5513682513402116398.Spec : Prop :=
  ∀ n, (P5513682513402116398.a n : ℤ) = A173923 n

end A173923

/-! ## A173923.P12030908147543163130

`and(8, A030101(n+8))/8`
-/

namespace A173923.P12030908147543163130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 8 (A030101 (n + 8)) : ℚ) / 8

end

end A173923.P12030908147543163130

namespace A173923

/-- `and(8, A030101(n+8))/8` -/
def P12030908147543163130.Spec : Prop :=
  ∀ n, P12030908147543163130.a n = (A173923 n : ℚ)

end A173923

/-! ## A173923.P17787720612401464196

`A173920(eq[8, A002262(n)])`
-/

namespace A173923.P17787720612401464196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173920 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A173923.P17787720612401464196

namespace A173923

/-- `A173920(eq[8, A002262(n)])` -/
def P17787720612401464196.Spec : Prop :=
  ∀ n, P17787720612401464196.a n = A173923 n

end A173923

/-! ## A173923.P508021326763844647

`A076478(A061168(n+7)+2)`
-/

namespace A173923.P508021326763844647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076478 (A061168 (n + 7) + 2).toNat

end

end A173923.P508021326763844647

namespace A173923

/-- `A076478(A061168(n+7)+2)` -/
def P508021326763844647.Spec : Prop :=
  ∀ n, P508021326763844647.a n = A173923 n

end A173923

/-! ## A173923.P8344952465340567502

`A030190(A030304(n+8)+3)`
-/

namespace A173923.P8344952465340567502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (A030304 (n + 8) + 3).toNat

end

end A173923.P8344952465340567502

namespace A173923

/-- `A030190(A030304(n+8)+3)` -/
def P8344952465340567502.Spec : Prop :=
  ∀ n, P8344952465340567502.a n = A173923 n

end A173923

/-! ## A173923.P5335768914577721976

`A004539(A084185(n+8)+3)`
-/

namespace A173923.P5335768914577721976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (A084185 (n + 8) + 3).toNat

end

end A173923.P5335768914577721976

namespace A173923

/-- `A004539(A084185(n+8)+3)` -/
def P5335768914577721976.Spec : Prop :=
  ∀ n, P5335768914577721976.a n = A173923 n

end A173923

/-! ## A173923.P8406829107644395961

`A030190(A001855(n+8)+4)`
-/

namespace A173923.P8406829107644395961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (A001855 (n + 8) + 4).toNat

end

end A173923.P8406829107644395961

namespace A173923

/-- `A030190(A001855(n+8)+4)` -/
def P8406829107644395961.Spec : Prop :=
  ∀ n, P8406829107644395961.a n = A173923 n

end A173923

/-! ## A173923.P11360811596797323023

`A030308(A001855(n+9)-3)`
-/

namespace A173923.P11360811596797323023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (A001855 (n + 9) - 3).toNat

end

end A173923.P11360811596797323023

namespace A173923

/-- `A030308(A001855(n+9)-3)` -/
def P11360811596797323023.Spec : Prop :=
  ∀ n, P11360811596797323023.a n = A173923 n

end A173923

/-! ## A173923.P7691737238271977053

`A014577(or(51, A335858(n+8)))`
-/

namespace A173923.P7691737238271977053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (Int.lor 51 (A335858 (n + 8))).toNat

end

end A173923.P7691737238271977053

namespace A173923

/-- `A014577(or(51, A335858(n+8)))` -/
def P7691737238271977053.Spec : Prop :=
  ∀ n, P7691737238271977053.a n = A173923 n

end A173923

/-! ## A173923.P11483573379842008011

`A000035(A002265(A059893(n+8)))`
-/

namespace A173923.P11483573379842008011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A002265 (A059893 (n + 8)).toNat).toNat

end

end A173923.P11483573379842008011

namespace A173923

/-- `A000035(A002265(A059893(n+8)))` -/
def P11483573379842008011.Spec : Prop :=
  ∀ n, P11483573379842008011.a n = A173923 n

end A173923

/-! ## A173923.P9341493784760603466

`A187038(A080918(A006995(n+8)))`
-/

namespace A173923.P9341493784760603466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187038 (A080918 (A006995 (n + 8)).toNat).toNat

end

end A173923.P9341493784760603466

namespace A173923

/-- `A187038(A080918(A006995(n+8)))` -/
def P9341493784760603466.Spec : Prop :=
  ∀ n, P9341493784760603466.a n = A173923 n

end A173923

/-!
# A173924: Expansion of 1/(1 - x^5 - x^6 - x^7 - x^8 + x^13).

The programs for A173924, the canonical program `A173924.P727777390367064860` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173924 has offset 0).

The definition of A173924 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^6-x^7-x^8+x^13))` (program `A173924.P727777390367064860`, by `A173924.P727777390367064860.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173924.P727777390367064860

`ogf(1/(1-x^5-x^6-x^7-x^8+x^13))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A173924

/-- `ogf(1/(1-x^5-x^6-x^7-x^8+x^13))` -/
def P727777390367064860.Spec : Prop :=
  ∀ n, P727777390367064860.a n = A173924 n

theorem P727777390367064860.correct : P727777390367064860.Spec := by
  intro n
  simp only [A173924]

end A173924

/-! ## A173924.P15314399299230038262

`A143472(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A173924.P15314399299230038262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A143472 n - a (n - 3)

end

end A173924.P15314399299230038262

namespace A173924

/-- `A143472(n)-a(n-3)` -/
def P15314399299230038262.Spec : Prop :=
  ∀ n, P15314399299230038262.a n = A173924 n

end A173924

/-!
# A173925: Expansion of 1/(1 - x - x^8 - x^15 + x^16).

The programs for A173925, the canonical program `A173925.P567771101428078776` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173925 has offset 0).

The definition of A173925 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^8-x^15+x^16))` (program `A173925.P567771101428078776`, by `A173925.P567771101428078776.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173925.P567771101428078776

`ogf(1/(1-x-x^8-x^15+x^16))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A173925

/-- `ogf(1/(1-x-x^8-x^15+x^16))` -/
def P567771101428078776.Spec : Prop :=
  ∀ n, P567771101428078776.a n = A173925 n

theorem P567771101428078776.correct : P567771101428078776.Spec := by
  intro n
  simp only [A173925]

end A173925

/-! ## A173925.P16191749524846748806

`A280863(lt[A329194(n+1), A073546(3*n+7)])`
-/

namespace A173925.P16191749524846748806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073546 (3 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280863 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A173925.P16191749524846748806

namespace A173925

/-- `A280863(lt[A329194(n+1), A073546(3*n+7)])` -/
def P16191749524846748806.Spec : Prop :=
  ∀ n, P16191749524846748806.a n = A173925 n

end A173925

/-! ## A173925.P196625760538647827

`A280863(lt[A098551(2*n+1), A327320(2*n+5)])`
-/

namespace A173925.P196625760538647827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327320 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280863 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A173925.P196625760538647827

namespace A173925

/-- `A280863(lt[A098551(2*n+1), A327320(2*n+5)])` -/
def P196625760538647827.Spec : Prop :=
  ∀ n, P196625760538647827.a n = A173925 n

end A173925

/-!
# A173926: First differences of A054270.

The programs for A173926, the canonical program `A173926.P11646176690681357479` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173926 has offset 1).

The definition of A173926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173926.P11646176690681357479

`Δ[A054270(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A173926

/-- `Δ[A054270(n+1)]` -/
def P11646176690681357479.Spec : Prop :=
  ∀ n, P11646176690681357479.a n = A173926 (n + 1)

theorem P11646176690681357479.correct : P11646176690681357479.Spec := by
  intro n
  simp only [A173926, Nat.add_sub_cancel]

end A173926

/-! ## A173926.P12144638027886142372

`A054270(n+2)-A054270(n+1)`
-/

namespace A173926.P12144638027886142372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054270 (n + 2) - A054270 (n + 1)

end

end A173926.P12144638027886142372

namespace A173926

/-- `A054270(n+2)-A054270(n+1)` -/
def P12144638027886142372.Spec : Prop :=
  ∀ n, P12144638027886142372.a n = A173926 (n + 1)

theorem P12144638027886142372.correct : P12144638027886142372.Spec := by
  intro n
  simp only [A173926, Nat.add_sub_cancel, A173926.P12144638027886142372.a, A173926.P11646176690681357479.f1, A173926.P11646176690681357479.a, SequenceMachineLib.memo_apply]

end A173926

/-! ## A173926.P6917315272474906524

`Δ[A000040(n+1)²-A054271(n+1)]`
-/

namespace A173926.P6917315272474906524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - A054271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173926.P6917315272474906524

namespace A173926

/-- `Δ[A000040(n+1)²-A054271(n+1)]` -/
def P6917315272474906524.Spec : Prop :=
  ∀ n, P6917315272474906524.a n = A173926 (n + 1)

end A173926

/-! ## A173926.P18058213160945959220

`Δ[A036689(n+1)+A000040(n+1)-A054271(n+1)]`
-/

namespace A173926.P18058213160945959220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) + A000040 (n + 1) - A054271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173926.P18058213160945959220

namespace A173926

/-- `Δ[A036689(n+1)+A000040(n+1)-A054271(n+1)]` -/
def P18058213160945959220.Spec : Prop :=
  ∀ n, P18058213160945959220.a n = A173926 (n + 1)

end A173926

/-! ## A173926.P8990088014975072629

`Δ[A034953(n+1)+A008837(n+1)-A054271(n+1)]`
-/

namespace A173926.P8990088014975072629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) + A008837 (n + 1) - A054271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173926.P8990088014975072629

namespace A173926

/-- `Δ[A034953(n+1)+A008837(n+1)-A054271(n+1)]` -/
def P8990088014975072629.Spec : Prop :=
  ∀ n, P8990088014975072629.a n = A173926 (n + 1)

end A173926

/-! ## A173926.P872803722077408855

`Δ[A053001(A000040(n+1))]`
-/

namespace A173926.P872803722077408855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173926.P872803722077408855

namespace A173926

/-- `Δ[A053001(A000040(n+1))]` -/
def P872803722077408855.Spec : Prop :=
  ∀ n, P872803722077408855.a n = A173926 (n + 1)

end A173926

/-! ## A173926.P13558822509800430747

`Δ[p?[A037208(n+1)]]`
-/

namespace A173926.P13558822509800430747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037208 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173926.P13558822509800430747

namespace A173926

/-- `Δ[p?[A037208(n+1)]]` -/
def P13558822509800430747.Spec : Prop :=
  ∀ n, P13558822509800430747.a n = A173926 (n + 1)

end A173926

/-! ## A173926.P7020112900475271998

`Δ[A000040(∑[A050216(n)])]`
-/

namespace A173926.P7020112900475271998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173926.P7020112900475271998

namespace A173926

/-- `Δ[A000040(∑[A050216(n)])]` -/
def P7020112900475271998.Spec : Prop :=
  ∀ n, P7020112900475271998.a n = A173926 (n + 1)

end A173926

/-! ## A173926.P11990400464187559627

`Δ[A006093(∑[A050216(n)])]`
-/

namespace A173926.P11990400464187559627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173926.P11990400464187559627

namespace A173926

/-- `Δ[A006093(∑[A050216(n)])]` -/
def P11990400464187559627.Spec : Prop :=
  ∀ n, P11990400464187559627.a n = A173926 (n + 1)

end A173926

/-! ## A173926.P3838724098459428096

`Δ[A028815(∑[A050216(n)])]`
-/

namespace A173926.P3838724098459428096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173926.P3838724098459428096

namespace A173926

/-- `Δ[A028815(∑[A050216(n)])]` -/
def P3838724098459428096.Spec : Prop :=
  ∀ n, P3838724098459428096.a n = A173926 (n + 1)

end A173926

/-!
# A173927: Smallest integer k such that the number of iterations of Carmichael lambda function (A002322) needed to reach 1 starting at k (k is counted) is n.

The programs for A173927, there is no canonical definition to state claims against.
-/

/-! ## A173927.P11673807601830465974

`∏{e}[3^n, A027763(#)]`
-/

namespace A173927.P11673807601830465974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A027763 (Nat.factorization (f1 n) p)

end

end A173927.P11673807601830465974

/-! ## A173927.P10945099918084207241

`∪[A027763(n+1), A000265(A027763(n+1))]`
-/

namespace A173927.P10945099918084207241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A027763 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A173927.P10945099918084207241

/-! ## A173927.P5555537385848863678

`A028310(∪[A128121(n+1), A246492(n+1)])`
-/

namespace A173927.P5555537385848863678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246492 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A173927.P5555537385848863678

/-! ## A173927.P5102962228060331557

`A070321(∪[A027763(n+1), A337953(n+1)])`
-/

namespace A173927.P5102962228060331557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337953 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A173927.P5102962228060331557

/-!
# A173929: Primes in A173299.

The programs for A173929, there is no canonical definition to state claims against.
-/

/-! ## A173929.P2390392710404343071

`p?[A173299(n+1)]`
-/

namespace A173929.P2390392710404343071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173929.P2390392710404343071

/-! ## A173929.P5186742587801129262

`p?[A017666(A002531(n))]`
-/

namespace A173929.P5186742587801129262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A002531 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173929.P5186742587801129262

/-! ## A173929.P4156175665218815887

`p?[A017666(abs(A108413(n)))]`
-/

namespace A173929.P4156175665218815887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 |A108413 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173929.P4156175665218815887

/-!
# A173931: Primitive numbers k such that m/k is in the Cantor set for some m.

The programs for A173931, there is no canonical definition to state claims against.
-/

/-! ## A173931.P2667592587046307000

`record[A106610(A054591(n+3))]`
-/

namespace A173931.P2667592587046307000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A054591 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173931.P2667592587046307000

/-! ## A173931.P16393644890801971910

`∩[A001651(n+1), A054591(n+2)]`
-/

namespace A173931.P16393644890801971910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054591 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173931.P16393644890801971910

/-! ## A173931.P13429390546597796995

`filter[A054591(n+2), A011655(#)]`
-/

namespace A173931.P13429390546597796995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054591 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A173931.P13429390546597796995

/-! ## A173931.P17069771324687913175

`filter[A054591(n+2), A267208(#)]`
-/

namespace A173931.P17069771324687913175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054591 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A173931.P17069771324687913175

/-!
# A173934: Irregular triangle in which row n consists of numbers m < k/2 such that m/k is in the Cantor set, where k= A173931(n) and gcd(m,k) = 1.

The programs for A173934, there is no canonical definition to state claims against.
-/

/-! ## A173934.P1484699777905887699

`A164721(A064640(n+2))^A220659(n)`
-/

namespace A173934.P1484699777905887699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164721 (A064640 (n + 2)).toNat : ℚ) ^ (A220659 n : ℤ)

end

end A173934.P1484699777905887699

/-! ## A173934.P13243667626026205077

`A377040(A358402(n+1)%A358352(n))`
-/

namespace A173934.P13243667626026205077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377040 (Int.tmod (A358402 (n + 1)) (A358352 n)).toNat

end

end A173934.P13243667626026205077

/-! ## A173934.P13185125429864429637

`A000959(A148333(n))%A257690(n+2)`
-/

namespace A173934.P13185125429864429637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000959 (A148333 n).toNat) (A257690 (n + 2))

end

end A173934.P13185125429864429637

/-! ## A173934.P5321744107893049569

`A197431(A128227(2*n+3)%A079434(n+2))`
-/

namespace A173934.P5321744107893049569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197431 (Int.tmod (A128227 (2 * n + 3)) (A079434 (n + 2))).toNat

end

end A173934.P5321744107893049569

/-! ## A173934.P16887650026280958960

`gcd(A212091(3*n+2), A282935(A268448(n+1)))`
-/

namespace A173934.P16887650026280958960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A212091 (3 * n + 2)) (A282935 (A268448 (n + 1)).toNat)

end

end A173934.P16887650026280958960

/-!
# A173937: Smallest natural d = d(n) such that 2^n + d is lesser of twin primes (n = 0, 1, 2, ...).

The programs for A173937, there is no canonical definition to state claims against.
-/

/-! ## A173937.P7205882579365532157

`A208572(A028310(n))-A000079(n)`
-/

namespace A173937.P7205882579365532157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208572 (A028310 n).toNat - A000079 n

end

end A173937.P7205882579365532157

/-! ## A173937.P1774806421492165681

`A208572(A028310(n))-∑[A011782(n)]`
-/

namespace A173937.P1774806421492165681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208572 (A028310 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173937.P1774806421492165681

/-! ## A173937.P12372140141835850585

`A208572(A028310(n))-A011782(n+1)`
-/

namespace A173937.P12372140141835850585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208572 (A028310 n).toNat - A011782 (n + 1)

end

end A173937.P12372140141835850585

/-! ## A173937.P365478474206442268

`A208572(A028310(n))-Δ[A000051(n)]`
-/

namespace A173937.P365478474206442268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208572 (A028310 n).toNat - (f1 (n + 1) - f1 n)

end

end A173937.P365478474206442268

/-! ## A173937.P11129057501697937370

`A208572(A028310(n))-Δ[A000225(n)]`
-/

namespace A173937.P11129057501697937370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208572 (A028310 n).toNat - (f1 (n + 1) - f1 n)

end

end A173937.P11129057501697937370

/-! ## A173937.P16545586889880242301

`A208572(A028310(n))-record[A055248(n)]`
-/

namespace A173937.P16545586889880242301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208572 (A028310 n).toNat - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173937.P16545586889880242301

/-!
# A173938: The number of permutations avoiding simultaneously consecutive patterns 123 and 231.

The programs for A173938, there is no canonical definition to state claims against.
-/

/-! ## A173938.P4131794832926627676

`A340019(a(n-1))+2-a(floor(n/2))` with `a(0)=1, a(1)=1`
-/

namespace A173938.P4131794832926627676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A340019 (a (n - 1)).toNat + (2 - a ⌊(n : ℚ) / 2⌋.toNat)

end

end A173938.P4131794832926627676

/-! ## A173938.P6361540308119005583

`A048686(A279565(n))`
-/

namespace A173938.P6361540308119005583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048686 (A279565 n).toNat

end

end A173938.P6361540308119005583

/-! ## A173938.P8981500868108142399

`A352337(A274289(n))`
-/

namespace A173938.P8981500868108142399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352337 (A274289 n).toNat

end

end A173938.P8981500868108142399

/-!
# A173939: The number of permutations avoiding simultaneously consecutive patterns 132 and 213.

The programs for A173939, there is no canonical definition to state claims against.
-/

/-! ## A173939.P17451382000088350940

`A008620(A317280(n))`
-/

namespace A173939.P17451382000088350940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A317280 n).toNat

end

end A173939.P17451382000088350940

/-! ## A173939.P4950222118723963245

`A002264(A317280(n)+3)`
-/

namespace A173939.P4950222118723963245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A317280 n + 3).toNat

end

end A173939.P4950222118723963245

/-! ## A173939.P8305055787820642544

`A189667(A317280(n)+3)`
-/

namespace A173939.P8305055787820642544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189667 (A317280 n + 3).toNat

end

end A173939.P8305055787820642544

/-! ## A173939.P9639377380229393951

`A097992(2*A317280(n))`
-/

namespace A173939.P9639377380229393951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (2 * A317280 n).toNat

end

end A173939.P9639377380229393951

/-!
# A173940: The number of permutations avoiding simultaneously consecutive patterns 213 and 231.

The programs for A173940, there is no canonical definition to state claims against.
-/

/-! ## A173940.P72088726446630508

`A122651(A005836(n+1)+A000142(n))`
-/

namespace A173940.P72088726446630508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122651 (A005836 (n + 1) + A000142 n).toNat

end

end A173940.P72088726446630508

/-! ## A173940.P8202774143833426007

`A122651(A047922(∑[n])+A005836(n+1))`
-/

namespace A173940.P8202774143833426007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122651 (A047922 (∑ j ∈ Finset.range (n + 1), f1 j) + A005836 (n + 1)).toNat

end

end A173940.P8202774143833426007

/-! ## A173940.P7690788947826928580

`2*A303431(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A173940.P7690788947826928580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * A303431 (a (n - 1)).toNat

end

end A173940.P7690788947826928580

/-!
# A173942: Numbers n such that sigma(lambda(n)) = lambda(sigma(n)).

The programs for A173942, there is no canonical definition to state claims against.
-/

/-! ## A173942.P10887132551424071516

`eq[7*n, n*A345990(n+1)]+1`
-/

namespace A173942.P10887132551424071516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A345990 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A173942.P10887132551424071516

/-! ## A173942.P668195637785452397

`filter[A018490(n+1), A347246(#)]`
-/

namespace A173942.P668195637785452397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347246 (f1 j).toNat = 1) n)

end

end A173942.P668195637785452397

/-! ## A173942.P4216599999517920511

`filter[A212485(n+1), A347246(#)]`
-/

namespace A173942.P4216599999517920511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347246 (f1 j).toNat = 1) n)

end

end A173942.P4216599999517920511

/-!
# A173944: Numbers n such that bigomega(lambda(n)) = lambda(bigomega(n)), where bigomega is the number of prime divisors of n (counted with multiplicity) and lambda is the Carmichael function.

The programs for A173944, there is no canonical definition to state claims against.
-/

/-! ## A173944.P6371477852251227944

`A279083(∪[A279075(2*(n+1)), A279064(n+1)])`
-/

namespace A173944.P6371477852251227944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279075 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279064 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279083 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A173944.P6371477852251227944

/-! ## A173944.P12820287483192369815

`record[gcd(A117900(n+1), A117937(n+1))]`
-/

namespace A173944.P12820287483192369815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117900 (n + 1)) (A117937 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173944.P12820287483192369815

/-! ## A173944.P14343128265231863791

`eq[A056595(n+1), A333843(A214937(2*n+1))]`
-/

namespace A173944.P14343128265231863791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333843 (A214937 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A173944.P14343128265231863791

/-!
# A173945: a(n) = numerator of (Pi^2)/2 - Zeta(2,(2*n-1)/2), where Zeta is the Hurwitz Zeta function.

The programs for A173945, there is no canonical definition to state claims against.
-/

/-! ## A173945.P11179427568906230230

`A075986(n)-A000027(A001818(n))`
-/

namespace A173945.P11179427568906230230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075986 n - A000027 (A001818 n).toNat

end

end A173945.P11179427568906230230

/-!
# A173947: a(n) = numerator of (Zeta(2, 1/4) - Zeta(2, n+1/4)), where Zeta is the Hurwitz Zeta function.

The programs for A173947, there is no canonical definition to state claims against.
-/

/-! ## A173947.P17283805922566360450

`16*A173949(n)`
-/

namespace A173947.P17283805922566360450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A173949 n

end

end A173947.P17283805922566360450

/-!
# A173948: a(n) = denominator of (Zeta(2, 1/4) - Zeta(2, n+1/4)), where Zeta is the Hurwitz Zeta function.

The programs for A173948, there is no canonical definition to state claims against.
-/

/-! ## A173948.P496743217356301278

`A110026(A004273(n))²`
-/

namespace A173948.P496743217356301278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110026 (A004273 n).toNat ^ 2

end

end A173948.P496743217356301278

/-! ## A173948.P18297991860949923848

`A110026(record[A006257(n)])²`
-/

namespace A173948.P18297991860949923848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110026 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A173948.P18297991860949923848

/-! ## A173948.P14283043377703394093

`A110026(record[A026741(n)])²`
-/

namespace A173948.P14283043377703394093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110026 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A173948.P14283043377703394093

/-! ## A173948.P5008075124186407850

`A110026(record[A181983(n)])²`
-/

namespace A173948.P5008075124186407850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110026 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A173948.P5008075124186407850

/-! ## A173948.P4414825960132290123

`A110026(record[A063195(n+1)])²`
-/

namespace A173948.P4414825960132290123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110026 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A173948.P4414825960132290123

/-!
# A173949: a(n) = numerator of (Zeta(2, 1/4) - Zeta(2, n+1/4))/16, where Zeta is the Hurwitz Zeta function.

The programs for A173949, there is no canonical definition to state claims against.
-/

/-! ## A173949.P6214460275383860558

`A173947(n)/16`
-/

namespace A173949.P6214460275383860558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173947 n : ℚ) / 16

end

end A173949.P6214460275383860558

/-!
# A173950: a(n) = 1 if 6 divides (prime(n) + 1), a(n) = -1 if 6 divides (prime(n) - 1), a(n) = 0 otherwise.

The programs for A173950, the canonical program `A173950.P16804385648579406255` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173950 has offset 1).

The definition of A173950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173950.P16804385648579406255

`1-(p?[abs(2*n-3)]+1)%3`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A173950

/-- `1-(p?[abs(2*n-3)]+1)%3` -/
def P16804385648579406255.Spec : Prop :=
  ∀ n, P16804385648579406255.a n = A173950 (n + 1)

theorem P16804385648579406255.correct : P16804385648579406255.Spec := by
  intro n
  simp only [A173950, Nat.add_sub_cancel]

end A173950

/-! ## A173950.P15058955048716628315

`1-A055670(n+1)%3`
-/

namespace A173950.P15058955048716628315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A055670 (n + 1)) 3

end

end A173950.P15058955048716628315

namespace A173950

/-- `1-A055670(n+1)%3` -/
def P15058955048716628315.Spec : Prop :=
  ∀ n, P15058955048716628315.a n = A173950 (n + 1)

end A173950

/-! ## A173950.P776216838767523517

`7%A039704(n+1)-1`
-/

namespace A173950.P776216838767523517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A039704 (n + 1)) - 1

end

end A173950.P776216838767523517

namespace A173950

/-- `7%A039704(n+1)-1` -/
def P776216838767523517.Spec : Prop :=
  ∀ n, P776216838767523517.a n = A173950 (n + 1)

end A173950

/-! ## A173950.P15130750260807279614

`A134668(A039710(n+1))`
-/

namespace A173950.P15130750260807279614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134668 (A039710 (n + 1)).toNat

end

end A173950.P15130750260807279614

namespace A173950

/-- `A134668(A039710(n+1))` -/
def P15130750260807279614.Spec : Prop :=
  ∀ n, P15130750260807279614.a n = A173950 (n + 1)

end A173950

/-! ## A173950.P1045457278041025865

`A134668(A095959(n+1))`
-/

namespace A173950.P1045457278041025865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134668 (A095959 (n + 1)).toNat

end

end A173950.P1045457278041025865

namespace A173950

/-- `A134668(A095959(n+1))` -/
def P1045457278041025865.Spec : Prop :=
  ∀ n, P1045457278041025865.a n = A173950 (n + 1)

end A173950

/-! ## A173950.P11479020784072577805

`A057428(n)*A134323(n+1)`
-/

namespace A173950.P11479020784072577805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A134323 (n + 1)

end

end A173950.P11479020784072577805

namespace A173950

/-- `A057428(n)*A134323(n+1)` -/
def P11479020784072577805.Spec : Prop :=
  ∀ n, P11479020784072577805.a n = A173950 (n + 1)

end A173950

/-! ## A173950.P7335984948510808277

`A134323(n+1)*A134824(n)`
-/

namespace A173950.P7335984948510808277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134323 (n + 1) * A134824 n

end

end A173950.P7335984948510808277

namespace A173950

/-- `A134323(n+1)*A134824(n)` -/
def P7335984948510808277.Spec : Prop :=
  ∀ n, P7335984948510808277.a n = A173950 (n + 1)

end A173950

/-! ## A173950.P16948024996944368457

`A174695(n+1)-A174695(A028310(n))`
-/

namespace A173950.P16948024996944368457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174695 (n + 1) - A174695 (A028310 n).toNat

end

end A173950.P16948024996944368457

namespace A173950

/-- `A174695(n+1)-A174695(A028310(n))` -/
def P16948024996944368457.Spec : Prop :=
  ∀ n, P16948024996944368457.a n = A173950 (n + 1)

end A173950

/-! ## A173950.P4286919268825048409

`A089451(n+1)*A089495(n+1)-A134323(n+1)`
-/

namespace A173950.P4286919268825048409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089451 (n + 1) * A089495 (n + 1) - A134323 (n + 1)

end

end A173950.P4286919268825048409

namespace A173950

/-- `A089451(n+1)*A089495(n+1)-A134323(n+1)` -/
def P4286919268825048409.Spec : Prop :=
  ∀ n, P4286919268825048409.a n = A173950 (n + 1)

end A173950

/-! ## A173950.P17316031824935887347

`A091177(n+1)-(A134323(n+1)+A133677(n+2))`
-/

namespace A173950.P17316031824935887347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091177 (n + 1) - (A134323 (n + 1) + A133677 (n + 2))

end

end A173950.P17316031824935887347

namespace A173950

/-- `A091177(n+1)-(A134323(n+1)+A133677(n+2))` -/
def P17316031824935887347.Spec : Prop :=
  ∀ n, P17316031824935887347.a n = A173950 (n + 1)

end A173950

/-! ## A173950.P2009679295850919694

`floor(p?[xor(1, n)]/2)%3-1`
-/

namespace A173950.P2009679295850919694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌋ 3 - 1

end

end A173950.P2009679295850919694

namespace A173950

/-- `floor(p?[xor(1, n)]/2)%3-1` -/
def P2009679295850919694.Spec : Prop :=
  ∀ n, P2009679295850919694.a n = A173950 (n + 1)

end A173950

/-! ## A173950.P8752700498419705383

`-(floor(acot(n))+gcd(6, p?[xor(1, n)]+2)-2)`
-/

namespace A173950.P8752700498419705383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(⌊SequenceMachineLib.acot (n : ℝ)⌋ + ((Nat.gcd 6 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 2) : ℤ) - 2))

end

end A173950.P8752700498419705383

namespace A173950

/-- `-(floor(acot(n))+gcd(6, p?[xor(1, n)]+2)-2)` -/
def P8752700498419705383.Spec : Prop :=
  ∀ n, P8752700498419705383.a n = A173950 (n + 1)

end A173950

/-! ## A173950.P16783500051728056118

`1-A000203(or(1, p?[xor(1, n)]))%3`
-/

namespace A173950.P16783500051728056118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A000203 (Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))) 3

end

end A173950.P16783500051728056118

namespace A173950

/-- `1-A000203(or(1, p?[xor(1, n)]))%3` -/
def P16783500051728056118.Spec : Prop :=
  ∀ n, P16783500051728056118.a n = A173950 (n + 1)

end A173950

/-! ## A173950.P14067477034408823276

`ceil(log(record[A006530(n+2)]%6/3))`
-/

namespace A173950.P14067477034408823276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log ((Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 6 : ℚ) / 3 : ℝ)⌉

end

end A173950.P14067477034408823276

namespace A173950

/-- `ceil(log(record[A006530(n+2)]%6/3))` -/
def P14067477034408823276.Spec : Prop :=
  ∀ n, P14067477034408823276.a n = A173950 (n + 1)

end A173950

/-! ## A173950.P8681905057168499417

`floor(record[A006530(abs(1-n)+1)]/2)%3-1`
-/

namespace A173950.P8681905057168499417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2⌋ 3 - 1

end

end A173950.P8681905057168499417

namespace A173950

/-- `floor(record[A006530(abs(1-n)+1)]/2)%3-1` -/
def P8681905057168499417.Spec : Prop :=
  ∀ n, P8681905057168499417.a n = A173950 (n + 1)

end A173950

/-! ## A173950.P735903009222654135

`floor(record[A020639(abs(1-n)+1)]/2)%3-1`
-/

namespace A173950.P735903009222654135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2⌋ 3 - 1

end

end A173950.P735903009222654135

namespace A173950

/-- `floor(record[A020639(abs(1-n)+1)]/2)%3-1` -/
def P735903009222654135.Spec : Prop :=
  ∀ n, P735903009222654135.a n = A173950 (n + 1)

end A173950

/-! ## A173950.P9065660005660393173

`A084091(A137330(n+1))`
-/

namespace A173950.P9065660005660393173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084091 (A137330 (n + 1)).toNat

end

end A173950.P9065660005660393173

namespace A173950

/-- `A084091(A137330(n+1))` -/
def P9065660005660393173.Spec : Prop :=
  ∀ n, P9065660005660393173.a n = A173950 (n + 1)

end A173950

/-! ## A173950.P1241815462343770840

`A084091(A001750(n+1))`
-/

namespace A173950.P1241815462343770840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084091 (A001750 (n + 1)).toNat

end

end A173950.P1241815462343770840

namespace A173950

/-- `A084091(A001750(n+1))` -/
def P1241815462343770840.Spec : Prop :=
  ∀ n, P1241815462343770840.a n = A173950 (n + 1)

end A173950

/-! ## A173950.P12433180328931109990

`A049347(A130291(n+1))`
-/

namespace A173950.P12433180328931109990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A130291 (n + 1)).toNat

end

end A173950.P12433180328931109990

namespace A173950

/-- `A049347(A130291(n+1))` -/
def P12433180328931109990.Spec : Prop :=
  ∀ n, P12433180328931109990.a n = A173950 (n + 1)

end A173950

/-! ## A173950.P10770364404604941249

`A163811(p?[xor(1, n)])`
-/

namespace A173950.P10770364404604941249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163811 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A173950.P10770364404604941249

namespace A173950

/-- `A163811(p?[xor(1, n)])` -/
def P10770364404604941249.Spec : Prop :=
  ∀ n, P10770364404604941249.a n = A173950 (n + 1)

end A173950

/-!
# A173951: Positive integers with the property that if the base-3 representation is reversed the result is twice the original number.

The programs for A173951, there is no canonical definition to state claims against.
-/

/-! ## A173951.P11243611462531458761

`2*A354886(n+1)`
-/

namespace A173951.P11243611462531458761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A354886 (n + 1)

end

end A173951.P11243611462531458761

/-! ## A173951.P16872362796755032270

`A091077(n+1)/2`
-/

namespace A173951.P16872362796755032270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091077 (n + 1) : ℚ) / 2

end

end A173951.P16872362796755032270

/-! ## A173951.P8508908902402191834

`A354886(A000027(n+1))+A354886(n+1)`
-/

namespace A173951.P8508908902402191834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354886 (A000027 (n + 1)).toNat + A354886 (n + 1)

end

end A173951.P8508908902402191834

/-! ## A173951.P3404107110545609460

`2^A321804(A007318(n))*A091077(n+1)`
-/

namespace A173951.P3404107110545609460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A321804 (A007318 n).toNat : ℤ) * (A091077 (n + 1) : ℚ)

end

end A173951.P3404107110545609460

/-!
# A173952: a(1)=32 and, for n > 1, a(n) = 9*a(n-1) + 32.

The programs for A173952, the canonical program `A173952.P10178775451310828107` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173952 has offset 1).

The definition of A173952 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-1)+32` (program `A173952.P10178775451310828107`, by `A173952.P10178775451310828107.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173952.P1666188891783124428

`4*(9^(n+1)-1)`
-/

namespace A173952.P1666188891783124428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((9 ^ (n + 1) : ℤ) - 1)

end

end A173952.P1666188891783124428

namespace A173952

/-- `4*(9^(n+1)-1)` -/
def P1666188891783124428.Spec : Prop :=
  ∀ n, P1666188891783124428.a n = A173952 (n + 1)

theorem P1666188891783124428.correct : P1666188891783124428.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A173952, Nat.add_sub_cancel, A173952.P1666188891783124428.a, A173952.P10178775451310828107.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A173952, Nat.add_sub_cancel, A173952.P1666188891783124428.a, A173952.P10178775451310828107.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A173952

/-! ## A173952.P10178775451310828107

`9*a(n-1)+32` with `a(0)=32`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A173952

/-- `9*a(n-1)+32` -/
def P10178775451310828107.Spec : Prop :=
  ∀ n, (P10178775451310828107.a n : ℤ) = A173952 (n + 1)

theorem P10178775451310828107.correct : P10178775451310828107.Spec := by
  intro n
  simp only [A173952, Nat.add_sub_cancel]

end A173952

/-! ## A173952.P6758450179386294791

`ogf(32/(1-10x+9x^2))`
-/

namespace A173952.P6758450179386294791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [32] [1, -10, 9] n

end

end A173952.P6758450179386294791

namespace A173952

/-- `ogf(32/(1-10x+9x^2))` -/
def P6758450179386294791.Spec : Prop :=
  ∀ n, P6758450179386294791.a n = A173952 (n + 1)

end A173952

/-! ## A173952.P10819503645217704156

`∑[9*a(n-1)]` with `a(0)=32`
-/

namespace A173952.P10819503645217704156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [32] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173952.P10819503645217704156

namespace A173952

/-- `∑[9*a(n-1)]` -/
def P10819503645217704156.Spec : Prop :=
  ∀ n, (P10819503645217704156.a n : ℤ) = A173952 (n + 1)

end A173952

/-! ## A173952.P3190295338635257314

`lcm(4, 9^(n+1))-4`
-/

namespace A173952.P3190295338635257314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (9 ^ (n + 1)) : ℤ) - 4

end

end A173952.P3190295338635257314

namespace A173952

/-- `lcm(4, 9^(n+1))-4` -/
def P3190295338635257314.Spec : Prop :=
  ∀ n, P3190295338635257314.a n = A173952 (n + 1)

end A173952

/-! ## A173952.P5984988676383493346

`xor(4, 4*9^(n+1))`
-/

namespace A173952.P5984988676383493346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (4 * 9 ^ (n + 1))

end

end A173952.P5984988676383493346

namespace A173952

/-- `xor(4, 4*9^(n+1))` -/
def P5984988676383493346.Spec : Prop :=
  ∀ n, (P5984988676383493346.a n : ℤ) = A173952 (n + 1)

end A173952

/-! ## A173952.P15956050621158603876

`and(-5, (6*3^n)²)`
-/

namespace A173952.P15956050621158603876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) ((6 * 3 ^ n) ^ 2 : ℤ)

end

end A173952.P15956050621158603876

namespace A173952

/-- `and(-5, (6*3^n)²)` -/
def P15956050621158603876.Spec : Prop :=
  ∀ n, P15956050621158603876.a n = A173952 (n + 1)

end A173952

/-! ## A173952.P18125991818407686800

`Δ[3*a(n-1)]²-4` with `a(0)=3`
-/

namespace A173952.P18125991818407686800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 - 4

end

end A173952.P18125991818407686800

namespace A173952

/-- `Δ[3*a(n-1)]²-4` -/
def P18125991818407686800.Spec : Prop :=
  ∀ n, P18125991818407686800.a n = A173952 (n + 1)

end A173952

/-! ## A173952.P16742328860738468391

`A198961(n+1)-3`
-/

namespace A173952.P16742328860738468391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198961 (n + 1) - 3

end

end A173952.P16742328860738468391

namespace A173952

/-- `A198961(n+1)-3` -/
def P16742328860738468391.Spec : Prop :=
  ∀ n, P16742328860738468391.a n = A173952 (n + 1)

end A173952

/-! ## A173952.P4428913456462676162

`A302507(2*(n+1))`
-/

namespace A173952.P4428913456462676162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302507 (2 * (n + 1))

end

end A173952.P4428913456462676162

namespace A173952

/-- `A302507(2*(n+1))` -/
def P4428913456462676162.Spec : Prop :=
  ∀ n, P4428913456462676162.a n = A173952 (n + 1)

end A173952

/-! ## A173952.P11039891264625911447

`A199562(n+1)-5`
-/

namespace A173952.P11039891264625911447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199562 (n + 1) - 5

end

end A173952.P11039891264625911447

namespace A173952

/-- `A199562(n+1)-5` -/
def P11039891264625911447.Spec : Prop :=
  ∀ n, P11039891264625911447.a n = A173952 (n + 1)

end A173952

/-! ## A173952.P7313871841925402447

`A270473(n+2)-4`
-/

namespace A173952.P7313871841925402447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270473 (n + 2) - 4

end

end A173952.P7313871841925402447

namespace A173952

/-- `A270473(n+2)-4` -/
def P7313871841925402447.Spec : Prop :=
  ∀ n, P7313871841925402447.a n = A173952 (n + 1)

end A173952

/-! ## A173952.P18437451477455548227

`6*A198963(n)+2`
-/

namespace A173952.P18437451477455548227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A198963 n + 2

end

end A173952.P18437451477455548227

namespace A173952

/-- `6*A198963(n)+2` -/
def P18437451477455548227.Spec : Prop :=
  ∀ n, P18437451477455548227.a n = A173952 (n + 1)

end A173952

/-! ## A173952.P16668534471178990979

`A008776(n+1)²-4`
-/

namespace A173952.P16668534471178990979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 (n + 1) ^ 2 - 4

end

end A173952.P16668534471178990979

namespace A173952

/-- `A008776(n+1)²-4` -/
def P16668534471178990979.Spec : Prop :=
  ∀ n, P16668534471178990979.a n = A173952 (n + 1)

end A173952

/-! ## A173952.P9007737494029782733

`A099856(n+1)²-4`
-/

namespace A173952.P9007737494029782733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099856 (n + 1) ^ 2 - 4

end

end A173952.P9007737494029782733

namespace A173952

/-- `A099856(n+1)²-4` -/
def P9007737494029782733.Spec : Prop :=
  ∀ n, P9007737494029782733.a n = A173952 (n + 1)

end A173952

/-! ## A173952.P16306994685730321875

`A025192(n+2)²-4`
-/

namespace A173952.P16306994685730321875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 (n + 2) ^ 2 - 4

end

end A173952.P16306994685730321875

namespace A173952

/-- `A025192(n+2)²-4` -/
def P16306994685730321875.Spec : Prop :=
  ∀ n, P16306994685730321875.a n = A173952 (n + 1)

end A173952

/-! ## A173952.P1125745959560511923

`A110593(n+2)²-4`
-/

namespace A173952.P1125745959560511923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110593 (n + 2) ^ 2 - 4

end

end A173952.P1125745959560511923

namespace A173952

/-- `A110593(n+2)²-4` -/
def P1125745959560511923.Spec : Prop :=
  ∀ n, P1125745959560511923.a n = A173952 (n + 1)

end A173952

/-! ## A173952.P2296977804402234762

`A036543(2*(n+1))-1`
-/

namespace A173952.P2296977804402234762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036543 (2 * (n + 1)) - 1

end

end A173952.P2296977804402234762

namespace A173952

/-- `A036543(2*(n+1))-1` -/
def P2296977804402234762.Spec : Prop :=
  ∀ n, P2296977804402234762.a n = A173952 (n + 1)

end A173952

/-! ## A173952.P11700820704437000379

`A171498(2*(n+1))-3`
-/

namespace A173952.P11700820704437000379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171498 (2 * (n + 1)) - 3

end

end A173952.P11700820704437000379

namespace A173952

/-- `A171498(2*(n+1))-3` -/
def P11700820704437000379.Spec : Prop :=
  ∀ n, P11700820704437000379.a n = A173952 (n + 1)

end A173952

/-! ## A173952.P17760035504409742858

`∑[2*A003946(n+1)²]`
-/

namespace A173952.P17760035504409742858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003946 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173952.P17760035504409742858

namespace A173952

/-- `∑[2*A003946(n+1)²]` -/
def P17760035504409742858.Spec : Prop :=
  ∀ n, P17760035504409742858.a n = A173952 (n + 1)

end A173952

/-!
# A173953: a(n) = numerator of (Zeta(2, 3/4) - Zeta(2, n-1/4)), where Zeta is the Hurwitz Zeta function.

The programs for A173953, there is no canonical definition to state claims against.
-/

/-! ## A173953.P16535664097456684808

`16*A173955(n+1)`
-/

namespace A173953.P16535664097456684808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A173955 (n + 1)

end

end A173953.P16535664097456684808

/-!
# A173954: a(n) = denominator of (Zeta(2, 3/4) - Zeta(2, n-1/4)), where Zeta is the Hurwitz Zeta function.

The programs for A173954, there is no canonical definition to state claims against.
-/

/-! ## A173954.P984212881706464785

`A110026(2*n)²`
-/

namespace A173954.P984212881706464785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110026 (2 * n) ^ 2

end

end A173954.P984212881706464785

/-! ## A173954.P9558589802138985295

`A110026(2*n)^A010693(2*n)`
-/

namespace A173954.P9558589802138985295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110026 (2 * n) : ℚ) ^ (A010693 (2 * n) : ℤ)

end

end A173954.P9558589802138985295

/-! ## A173954.P13313170387279438126

`A110026(2*n)^A020639(2*(n+1))`
-/

namespace A173954.P13313170387279438126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110026 (2 * n) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A173954.P13313170387279438126

/-! ## A173954.P2627846793666600198

`A110026(2*n)^A001222(2*A000040(n+1))`
-/

namespace A173954.P2627846793666600198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110026 (2 * n) : ℚ) ^ (A001222 (2 * A000040 (n + 1)).toNat : ℤ)

end

end A173954.P2627846793666600198

/-! ## A173954.P15073978469534728704

`A110026(2*n)*A110026(2*n)*A007318(∑[n])`
-/

namespace A173954.P15073978469534728704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110026 (2 * n) * A110026 (2 * n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173954.P15073978469534728704

/-!
# A173955: a(n) = numerator of (Zeta(2, 3/4) - Zeta(2, n-1/4))/16 where Zeta(n, a) is the Hurwitz Zeta function.

The programs for A173955, there is no canonical definition to state claims against.
-/

/-! ## A173955.P11112167432421085297

`A173953(n+1)/16`
-/

namespace A173955.P11112167432421085297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173953 (n + 1) : ℚ) / 16

end

end A173955.P11112167432421085297

/-!
# A173956: n-th primorial modulo n.

The programs for A173956, there is no canonical definition to state claims against.
-/

/-! ## A173956.P11885533664488926512

`A182254(n+1)%(n+1)`
-/

namespace A173956.P11885533664488926512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182254 (n + 1)) (n + 1 : ℤ)

end

end A173956.P11885533664488926512

/-! ## A173956.P6825426680621202715

`∏[p?[xor(1, n)]]%(n+1)`
-/

namespace A173956.P6825426680621202715
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A173956.P6825426680621202715

/-! ## A173956.P12491790588958767133

`A002110(n+1)%(n+1)`
-/

namespace A173956.P12491790588958767133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002110 (n + 1)) (n + 1 : ℤ)

end

end A173956.P12491790588958767133

/-! ## A173956.P17533114600862908029

`∏[A000040(n+1)]%(n+1)`
-/

namespace A173956.P17533114600862908029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A173956.P17533114600862908029

/-! ## A173956.P17269971167713460661

`record[A108951(n+2)]%(n+1)`
-/

namespace A173956.P17269971167713460661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A173956.P17269971167713460661

/-! ## A173956.P7873902687763582661

`∏[record[A006530(n+2)]]%(n+1)`
-/

namespace A173956.P7873902687763582661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A173956.P7873902687763582661

/-! ## A173956.P10301343169054884116

`∏[record[A014963(n+2)]]%(n+1)`
-/

namespace A173956.P10301343169054884116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A173956.P10301343169054884116

/-! ## A173956.P16287161921140030588

`∏[record[A020639(n+2)]]%(n+1)`
-/

namespace A173956.P16287161921140030588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A173956.P16287161921140030588

/-!
# A173957: Numbers n such that x^2+y^2+prime(n)^2=3*x*y*prime(n).

The programs for A173957, there is no canonical definition to state claims against.
-/

/-! ## A173957.P10616070231043683930

`A000720(A178444(n+1))`
-/

namespace A173957.P10616070231043683930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A178444 (n + 1)).toNat

end

end A173957.P10616070231043683930

/-! ## A173957.P15927945630247480437

`A000720(p?[A002559(n+1)])`
-/

namespace A173957.P15927945630247480437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A173957.P15927945630247480437

/-! ## A173957.P17295900886205151681

`A061395(p?[A002559(n+1)])`
-/

namespace A173957.P17295900886205151681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A173957.P17295900886205151681

/-! ## A173957.P16545021958958448233

`A061395(p?[A178444(n+1)])`
-/

namespace A173957.P16545021958958448233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A173957.P16545021958958448233

/-! ## A173957.P11129552240453189468

`∑{d}[A178444(n+1), A061395(#)]`
-/

namespace A173957.P11129552240453189468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A173957.P11129552240453189468

/-!
# A173960: Averages of four consecutive odd squares.

The programs for A173960, the canonical program `A173960.P13449104019235701913` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173960 has offset 1).

The definition of A173960 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173960.P13449104019235701913

`4*(n+1)²+8*(n+1)+9`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A173960

/-- `4*(n+1)²+8*(n+1)+9` -/
def P13449104019235701913.Spec : Prop :=
  ∀ n, (P13449104019235701913.a n : ℤ) = A173960 (n + 1)

theorem P13449104019235701913.correct : P13449104019235701913.Spec := by
  intro n
  simp only [A173960, Nat.add_sub_cancel]

end A173960

/-! ## A173960.P10842295441484608953

`∑[a(n-1)+8]` with `a(0)=21, a(1)=20`
-/

namespace A173960.P10842295441484608953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [21, 20] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173960.P10842295441484608953

namespace A173960

/-- `∑[a(n-1)+8]` -/
def P10842295441484608953.Spec : Prop :=
  ∀ n, (P10842295441484608953.a n : ℤ) = A173960 (n + 1)

end A173960

/-! ## A173960.P17456459444318354683

`record[(xor(1, n)+3)²+5]`
-/

namespace A173960.P17456459444318354683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n + 3) ^ 2 + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173960.P17456459444318354683

namespace A173960

/-- `record[(xor(1, n)+3)²+5]` -/
def P17456459444318354683.Spec : Prop :=
  ∀ n, (P17456459444318354683.a n : ℤ) = A173960 (n + 1)

end A173960

/-! ## A173960.P6567463121462866576

`record[(or(1, n)-5)²+5]`
-/

namespace A173960.P6567463121462866576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 n : ℤ) - 5) ^ 2 + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173960.P6567463121462866576

namespace A173960

/-- `record[(or(1, n)-5)²+5]` -/
def P6567463121462866576.Spec : Prop :=
  ∀ n, P6567463121462866576.a n = A173960 (n + 1)

end A173960

/-! ## A173960.P15890261331080202924

`record[(4-(n+n))²+5]`
-/

namespace A173960.P15890261331080202924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - (n + n : ℤ)) ^ 2 + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173960.P15890261331080202924

namespace A173960

/-- `record[(4-(n+n))²+5]` -/
def P15890261331080202924.Spec : Prop :=
  ∀ n, P15890261331080202924.a n = A173960 (n + 1)

end A173960

/-! ## A173960.P12239891089203483442

`∑[ogf((21-22x+9x^2)/(1-2x+x^2))]`
-/

namespace A173960.P12239891089203483442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [21, -22, 9] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173960.P12239891089203483442

namespace A173960

/-- `∑[ogf((21-22x+9x^2)/(1-2x+x^2))]` -/
def P12239891089203483442.Spec : Prop :=
  ∀ n, P12239891089203483442.a n = A173960 (n + 1)

end A173960

/-! ## A173960.P989894042067665340

`xor(1, 4*A000290(n+2)+4)`
-/

namespace A173960.P989894042067665340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (4 * A000290 (n + 2) + 4)

end

end A173960.P989894042067665340

namespace A173960

/-- `xor(1, 4*A000290(n+2)+4)` -/
def P989894042067665340.Spec : Prop :=
  ∀ n, P989894042067665340.a n = A173960 (n + 1)

end A173960

/-! ## A173960.P2886892988781145149

`or(1, 2*2*(A005563(n+1)+2))`
-/

namespace A173960.P2886892988781145149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * (2 * (A005563 (n + 1) + 2)))

end

end A173960.P2886892988781145149

namespace A173960

/-- `or(1, 2*2*(A005563(n+1)+2))` -/
def P2886892988781145149.Spec : Prop :=
  ∀ n, P2886892988781145149.a n = A173960 (n + 1)

end A173960

/-! ## A173960.P15162864460529000343

`or(1, A222465(n+2)+1)`
-/

namespace A173960.P15162864460529000343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A222465 (n + 2) + 1)

end

end A173960.P15162864460529000343

namespace A173960

/-- `or(1, A222465(n+2)+1)` -/
def P15162864460529000343.Spec : Prop :=
  ∀ n, P15162864460529000343.a n = A173960 (n + 1)

end A173960

/-! ## A173960.P2974018575486567404

`Δ[A177342(n+2)-n²]`
-/

namespace A173960.P2974018575486567404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177342 (n + 2) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173960.P2974018575486567404

namespace A173960

/-- `Δ[A177342(n+2)-n²]` -/
def P2974018575486567404.Spec : Prop :=
  ∀ n, P2974018575486567404.a n = A173960 (n + 1)

end A173960

/-! ## A173960.P5799477348482302575

`abs(A189833(2*(n+2))-3)`
-/

namespace A173960.P5799477348482302575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A189833 (2 * (n + 2)) - 3|

end

end A173960.P5799477348482302575

namespace A173960

/-- `abs(A189833(2*(n+2))-3)` -/
def P5799477348482302575.Spec : Prop :=
  ∀ n, P5799477348482302575.a n = A173960 (n + 1)

end A173960

/-! ## A173960.P2056292424292319358

`abs(A141354(2*n+3)-6)`
-/

namespace A173960.P2056292424292319358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A141354 (2 * n + 3) - 6|

end

end A173960.P2056292424292319358

namespace A173960

/-- `abs(A141354(2*n+3)-6)` -/
def P2056292424292319358.Spec : Prop :=
  ∀ n, P2056292424292319358.a n = A173960 (n + 1)

end A173960

/-! ## A173960.P3076788968211864507

`Δ[A004006(2*n)+Δ[A152064(n+1)]]`
-/

namespace A173960.P3076788968211864507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152064 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 (2 * n) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173960.P3076788968211864507

namespace A173960

/-- `Δ[A004006(2*n)+Δ[A152064(n+1)]]` -/
def P3076788968211864507.Spec : Prop :=
  ∀ n, P3076788968211864507.a n = A173960 (n + 1)

end A173960

/-! ## A173960.P1556591362466801371

`A117951(2*(n+2))`
-/

namespace A173960.P1556591362466801371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117951 (2 * (n + 2))

end

end A173960.P1556591362466801371

namespace A173960

/-- `A117951(2*(n+2))` -/
def P1556591362466801371.Spec : Prop :=
  ∀ n, P1556591362466801371.a n = A173960 (n + 1)

end A173960

/-! ## A173960.P34313202750476961

`A255845(2*(n+2))/2`
-/

namespace A173960.P34313202750476961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255845 (2 * (n + 2)) : ℚ) / 2

end

end A173960.P34313202750476961

namespace A173960

/-- `A255845(2*(n+2))/2` -/
def P34313202750476961.Spec : Prop :=
  ∀ n, P34313202750476961.a n = (A173960 (n + 1) : ℚ)

end A173960

/-! ## A173960.P11685174525603647558

`abs(A317186(2*(n+2))+2-n)`
-/

namespace A173960.P11685174525603647558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A317186 (2 * (n + 2)) + 2 - (n : ℤ)|

end

end A173960.P11685174525603647558

namespace A173960

/-- `abs(A317186(2*(n+2))+2-n)` -/
def P11685174525603647558.Spec : Prop :=
  ∀ n, P11685174525603647558.a n = A173960 (n + 1)

end A173960

/-! ## A173960.P4532552701453927004

`∩[n+1+n, (n+3)²+5]`
-/

namespace A173960.P4532552701453927004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 2 + 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n

end

end A173960.P4532552701453927004

namespace A173960

/-- `∩[n+1+n, (n+3)²+5]` -/
def P4532552701453927004.Spec : Prop :=
  ∀ n, (P4532552701453927004.a n : ℤ) = A173960 (n + 1)

end A173960

/-! ## A173960.P14922953812399882270

`filter[A117951(n+1), A374474(#)]`
-/

namespace A173960.P14922953812399882270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A173960.P14922953812399882270

namespace A173960

/-- `filter[A117951(n+1), A374474(#)]` -/
def P14922953812399882270.Spec : Prop :=
  ∀ n, P14922953812399882270.a n = A173960 (n + 1)

end A173960

/-! ## A173960.P17363074677257169061

`filter[A117951(n+1), A323158(#)]`
-/

namespace A173960.P17363074677257169061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A173960.P17363074677257169061

namespace A173960

/-- `filter[A117951(n+1), A323158(#)]` -/
def P17363074677257169061.Spec : Prop :=
  ∀ n, P17363074677257169061.a n = A173960 (n + 1)

end A173960

/-! ## A173960.P17175435881673297619

`filter[A117951(n+1), A324908(#)]`
-/

namespace A173960.P17175435881673297619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A173960.P17175435881673297619

namespace A173960

/-- `filter[A117951(n+1), A324908(#)]` -/
def P17175435881673297619.Spec : Prop :=
  ∀ n, P17175435881673297619.a n = A173960 (n + 1)

end A173960

/-!
# A173961: Averages of two consecutive even cubes: (n^3 + (n+2)^3)/2.

The programs for A173961, the canonical program `A173961.P6149960164284469960` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173961 has offset 1).

The definition of A173961 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173961.P6149960164284469960

`4*(n+1)*(2*(n+1)²-3*(n+1)+3)-4`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A173961

/-- `4*(n+1)*(2*(n+1)²-3*(n+1)+3)-4` -/
def P6149960164284469960.Spec : Prop :=
  ∀ n, P6149960164284469960.a n = A173961 (n + 1)

theorem P6149960164284469960.correct : P6149960164284469960.Spec := by
  intro n
  simp only [A173961, Nat.add_sub_cancel]

end A173961

/-! ## A173961.P17041231436365528732

`4*A005898(n)`
-/

namespace A173961.P17041231436365528732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005898 n

end

end A173961.P17041231436365528732

namespace A173961

/-- `4*A005898(n)` -/
def P17041231436365528732.Spec : Prop :=
  ∀ n, P17041231436365528732.a n = A173961 (n + 1)

end A173961

/-! ## A173961.P3571731200731147688

`Δ[4*C(n²+1, 2)]`
-/

namespace A173961.P3571731200731147688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose (n ^ 2 + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A173961.P3571731200731147688

namespace A173961

/-- `Δ[4*C(n²+1, 2)]` -/
def P3571731200731147688.Spec : Prop :=
  ∀ n, P3571731200731147688.a n = A173961 (n + 1)

end A173961

/-! ## A173961.P12426928773171776302

`lcm(4, Δ[C(n²+1, 2)])`
-/

namespace A173961.P12426928773171776302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2 + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A173961.P12426928773171776302

namespace A173961

/-- `lcm(4, Δ[C(n²+1, 2)])` -/
def P12426928773171776302.Spec : Prop :=
  ∀ n, (P12426928773171776302.a n : ℤ) = A173961 (n + 1)

end A173961

/-! ## A173961.P5052636270499554676

`(2*n+1)*(or(1, 2*n)²+3)`
-/

namespace A173961.P5052636270499554676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (Nat.lor 1 (2 * n) ^ 2 + 3)

end

end A173961.P5052636270499554676

namespace A173961

/-- `(2*n+1)*(or(1, 2*n)²+3)` -/
def P5052636270499554676.Spec : Prop :=
  ∀ n, (P5052636270499554676.a n : ℤ) = A173961 (n + 1)

end A173961

/-! ## A173961.P17872268299409550186

`(2*n+1)*(xor(1, 2*n)²+3)`
-/

namespace A173961.P17872268299409550186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (Nat.xor 1 (2 * n) ^ 2 + 3)

end

end A173961.P17872268299409550186

namespace A173961

/-- `(2*n+1)*(xor(1, 2*n)²+3)` -/
def P17872268299409550186.Spec : Prop :=
  ∀ n, (P17872268299409550186.a n : ℤ) = A173961 (n + 1)

end A173961

/-! ## A173961.P12056253468187684472

`(2*n+1)*4*or(1, ∑[2*n])`
-/

namespace A173961.P12056253468187684472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (4 * Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A173961.P12056253468187684472

namespace A173961

/-- `(2*n+1)*4*or(1, ∑[2*n])` -/
def P12056253468187684472.Spec : Prop :=
  ∀ n, (P12056253468187684472.a n : ℤ) = A173961 (n + 1)

end A173961

/-! ## A173961.P3014008470343216629

`(2*n+1)*4*xor(1, ∑[2*n])`
-/

namespace A173961.P3014008470343216629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (4 * Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A173961.P3014008470343216629

namespace A173961

/-- `(2*n+1)*4*xor(1, ∑[2*n])` -/
def P3014008470343216629.Spec : Prop :=
  ∀ n, (P3014008470343216629.a n : ℤ) = A173961 (n + 1)

end A173961

/-! ## A173961.P1609588012202414812

`lcm(2, (2*n+1)*((2*n+1)²+3))`
-/

namespace A173961.P1609588012202414812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((2 * n + 1) * ((2 * n + 1) ^ 2 + 3))

end

end A173961.P1609588012202414812

namespace A173961

/-- `lcm(2, (2*n+1)*((2*n+1)²+3))` -/
def P1609588012202414812.Spec : Prop :=
  ∀ n, (P1609588012202414812.a n : ℤ) = A173961 (n + 1)

end A173961

/-! ## A173961.P9835757965323039564

`(2*n+1)*(Δ[C(2*n+1, 3)]+3)`
-/

namespace A173961.P9835757965323039564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 3)

end

end A173961.P9835757965323039564

namespace A173961

/-- `(2*n+1)*(Δ[C(2*n+1, 3)]+3)` -/
def P9835757965323039564.Spec : Prop :=
  ∀ n, P9835757965323039564.a n = A173961 (n + 1)

end A173961

/-! ## A173961.P7562557862189668147

`∑[4*(3*n*2*n+2-floor(acot(n)))]`
-/

namespace A173961.P7562557862189668147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((3 * n * (2 * n) + 2 : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173961.P7562557862189668147

namespace A173961

/-- `∑[4*(3*n*2*n+2-floor(acot(n)))]` -/
def P7562557862189668147.Spec : Prop :=
  ∀ n, P7562557862189668147.a n = A173961 (n + 1)

end A173961

/-! ## A173961.P10971463122501933414

`(2*n+1)*(C(2*n+1, 2*n)²+3)`
-/

namespace A173961.P10971463122501933414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (Nat.choose (2 * n + 1) (2 * n) ^ 2 + 3)

end

end A173961.P10971463122501933414

namespace A173961

/-- `(2*n+1)*(C(2*n+1, 2*n)²+3)` -/
def P10971463122501933414.Spec : Prop :=
  ∀ n, (P10971463122501933414.a n : ℤ) = A173961 (n + 1)

theorem P10971463122501933414.correct : P10971463122501933414.Spec := by
  intro n
  simp only [A173961, Nat.add_sub_cancel, A173961.P10971463122501933414.a, A173961.P6149960164284469960.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A173961

/-! ## A173961.P11838659587463962306

`∑[4*((2*n)²+(n²+1)*ceil(atan(n+1)))]`
-/

namespace A173961.P11838659587463962306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (((2 * n) ^ 2 : ℤ) + (n ^ 2 + 1 : ℤ) * ⌈Real.arctan (n + 1 : ℝ)⌉)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173961.P11838659587463962306

namespace A173961

/-- `∑[4*((2*n)²+(n²+1)*ceil(atan(n+1)))]` -/
def P11838659587463962306.Spec : Prop :=
  ∀ n, P11838659587463962306.a n = A173961 (n + 1)

end A173961

/-! ## A173961.P6439506767395393207

`2*(2*n+1)*(C(2*n+1, 2)+n+2)`
-/

namespace A173961.P6439506767395393207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((2 * n + 1) * (Nat.choose (2 * n + 1) 2 + (n + 2)))

end

end A173961.P6439506767395393207

namespace A173961

/-- `2*(2*n+1)*(C(2*n+1, 2)+n+2)` -/
def P6439506767395393207.Spec : Prop :=
  ∀ n, (P6439506767395393207.a n : ℤ) = A173961 (n + 1)

end A173961

/-! ## A173961.P171887509491772240

`(2*n+1)*2*(lcm(2*n+1, n+1)-(n-1))`
-/

namespace A173961.P171887509491772240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (2 * ((Nat.lcm (2 * n + 1) (n + 1) : ℤ) - ((n : ℤ) - 1)))

end

end A173961.P171887509491772240

namespace A173961

/-- `(2*n+1)*2*(lcm(2*n+1, n+1)-(n-1))` -/
def P171887509491772240.Spec : Prop :=
  ∀ n, P171887509491772240.a n = A173961 (n + 1)

end A173961

/-! ## A173961.P1426705680067266583

`∑[4*A005897(n)]`
-/

namespace A173961.P1426705680067266583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173961.P1426705680067266583

namespace A173961

/-- `∑[4*A005897(n)]` -/
def P1426705680067266583.Spec : Prop :=
  ∀ n, P1426705680067266583.a n = A173961 (n + 1)

end A173961

/-! ## A173961.P3337701525017620887

`Δ[n²*A005893(n)]`
-/

namespace A173961.P3337701525017620887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A005893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173961.P3337701525017620887

namespace A173961

/-- `Δ[n²*A005893(n)]` -/
def P3337701525017620887.Spec : Prop :=
  ∀ n, P3337701525017620887.a n = A173961 (n + 1)

end A173961

/-! ## A173961.P4070691376899714014

`4*(A047672(n+1)-n)`
-/

namespace A173961.P4070691376899714014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A047672 (n + 1) - (n : ℤ))

end

end A173961.P4070691376899714014

namespace A173961

/-- `4*(A047672(n+1)-n)` -/
def P4070691376899714014.Spec : Prop :=
  ∀ n, P4070691376899714014.a n = A173961 (n + 1)

end A173961

/-! ## A173961.P17303355131451502244

`(2*n+1)*A112087(n+1)`
-/

namespace A173961.P17303355131451502244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A112087 (n + 1)

end

end A173961.P17303355131451502244

namespace A173961

/-- `(2*n+1)*A112087(n+1)` -/
def P17303355131451502244.Spec : Prop :=
  ∀ n, P17303355131451502244.a n = A173961 (n + 1)

end A173961

/-! ## A173961.P1545070537458000069

`∑[4*(A005901(n)-(2*n)²)]`
-/

namespace A173961.P1545070537458000069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A005901 n - ((2 * n) ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173961.P1545070537458000069

namespace A173961

/-- `∑[4*(A005901(n)-(2*n)²)]` -/
def P1545070537458000069.Spec : Prop :=
  ∀ n, P1545070537458000069.a n = A173961 (n + 1)

end A173961

/-!
# A173962: Averages of two consecutive odd cubes; a(n) = (n^3 + (n+2)^3)/2.

The programs for A173962, the canonical program `A173962.P5696676176511650743` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173962 has offset 1).

The definition of A173962 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173962.P12351801871803289288

`2*(n+1)*(4*(n+1)²+3)`
-/

namespace A173962.P12351801871803289288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) * (4 * (n + 1) ^ 2 + 3)

end

end A173962.P12351801871803289288

namespace A173962

/-- `2*(n+1)*(4*(n+1)²+3)` -/
def P12351801871803289288.Spec : Prop :=
  ∀ n, (P12351801871803289288.a n : ℤ) = A173962 (n + 1)

theorem P12351801871803289288.correct : P12351801871803289288.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A173962, Nat.add_sub_cancel, A173962.P12351801871803289288.a, A173962.P5696676176511650743.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A173962, Nat.add_sub_cancel, A173962.P12351801871803289288.a, A173962.P5696676176511650743.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A173962

/-! ## A173962.P5696676176511650743

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=14, a(1)=76, a(2)=234, a(3)=536`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A173962

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P5696676176511650743.Spec : Prop :=
  ∀ n, P5696676176511650743.a n = A173962 (n + 1)

theorem P5696676176511650743.correct : P5696676176511650743.Spec := by
  intro n
  simp only [A173962, Nat.add_sub_cancel]

end A173962

/-! ## A173962.P503303706820067721

`A271636(n+1)/2`
-/

namespace A173962.P503303706820067721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271636 (n + 1) : ℚ) / 2

end

end A173962.P503303706820067721

namespace A173962

/-- `A271636(n+1)/2` -/
def P503303706820067721.Spec : Prop :=
  ∀ n, P503303706820067721.a n = (A173962 (n + 1) : ℚ)

end A173962

/-! ## A173962.P7696116571025019776

`Δ[C(2*(n²+1+n), 2)]`
-/

namespace A173962.P7696116571025019776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n ^ 2 + 1 + n)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A173962.P7696116571025019776

namespace A173962

/-- `Δ[C(2*(n²+1+n), 2)]` -/
def P7696116571025019776.Spec : Prop :=
  ∀ n, P7696116571025019776.a n = A173962 (n + 1)

end A173962

/-! ## A173962.P2976523437330548935

`abs(Δ[C((n+1)²+n²+1, 2)])`
-/

namespace A173962.P2976523437330548935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1) ^ 2 + (n ^ 2 + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A173962.P2976523437330548935

namespace A173962

/-- `abs(Δ[C((n+1)²+n²+1, 2)])` -/
def P2976523437330548935.Spec : Prop :=
  ∀ n, P2976523437330548935.a n = A173962 (n + 1)

end A173962

/-! ## A173962.P7257159338466275256

`Δ[A294433(n)]-(n+1)`
-/

namespace A173962.P7257159338466275256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A173962.P7257159338466275256

namespace A173962

/-- `Δ[A294433(n)]-(n+1)` -/
def P7257159338466275256.Spec : Prop :=
  ∀ n, P7257159338466275256.a n = A173962 (n + 1)

end A173962

/-! ## A173962.P18107101171402117334

`A269495(n+1)-n²²`
-/

namespace A173962.P18107101171402117334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269495 (n + 1) - ((n ^ 2) ^ 2 : ℤ)

end

end A173962.P18107101171402117334

namespace A173962

/-- `A269495(n+1)-n²²` -/
def P18107101171402117334.Spec : Prop :=
  ∀ n, P18107101171402117334.a n = A173962 (n + 1)

end A173962

/-! ## A173962.P793635438058085616

`A008511(n+1)-2*(n+1)`
-/

namespace A173962.P793635438058085616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008511 (n + 1) - (2 * (n + 1) : ℤ)

end

end A173962.P793635438058085616

namespace A173962

/-- `A008511(n+1)-2*(n+1)` -/
def P793635438058085616.Spec : Prop :=
  ∀ n, P793635438058085616.a n = A173962 (n + 1)

end A173962

/-! ## A173962.P6794218408602413894

`A016743(n+1)+6*(n+1)`
-/

namespace A173962.P6794218408602413894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016743 (n + 1) + (6 * (n + 1) : ℤ)

end

end A173962.P6794218408602413894

namespace A173962

/-- `A016743(n+1)+6*(n+1)` -/
def P6794218408602413894.Spec : Prop :=
  ∀ n, P6794218408602413894.a n = A173962 (n + 1)

end A173962

/-! ## A173962.P14149130595270381774

`(2*(n+1))^3+A016969(n)+1`
-/

namespace A173962.P14149130595270381774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1)) ^ 3 : ℤ) + (A016969 n + 1)

end

end A173962.P14149130595270381774

namespace A173962

/-- `(2*(n+1))^3+A016969(n)+1` -/
def P14149130595270381774.Spec : Prop :=
  ∀ n, P14149130595270381774.a n = A173962 (n + 1)

end A173962

/-! ## A173962.P12660875136586869745

`A158480(n+1)+A016755(n)`
-/

namespace A173962.P12660875136586869745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158480 (n + 1) + A016755 n

end

end A173962.P12660875136586869745

namespace A173962

/-- `A158480(n+1)+A016755(n)` -/
def P12660875136586869745.Spec : Prop :=
  ∀ n, P12660875136586869745.a n = A173962 (n + 1)

end A173962

/-! ## A173962.P3422591921711701542

`A382251(n+1)+A226514(n)`
-/

namespace A173962.P3422591921711701542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382251 (n + 1) + A226514 n

end

end A173962.P3422591921711701542

namespace A173962

/-- `A382251(n+1)+A226514(n)` -/
def P3422591921711701542.Spec : Prop :=
  ∀ n, P3422591921711701542.a n = A173962 (n + 1)

end A173962

/-! ## A173962.P15682556568456400867

`Δ[A237516(n+1)]`
-/

namespace A173962.P15682556568456400867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173962.P15682556568456400867

namespace A173962

/-- `Δ[A237516(n+1)]` -/
def P15682556568456400867.Spec : Prop :=
  ∀ n, P15682556568456400867.a n = A173962 (n + 1)

end A173962

/-! ## A173962.P478740165419509605

`A175109(n+1)+A175109(n)`
-/

namespace A173962.P478740165419509605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175109 (n + 1) + A175109 n

end

end A173962.P478740165419509605

namespace A173962

/-- `A175109(n+1)+A175109(n)` -/
def P478740165419509605.Spec : Prop :=
  ∀ n, P478740165419509605.a n = A173962 (n + 1)

end A173962

/-! ## A173962.P14269016898109042877

`Δ[(A002378(n)+1)*A001844(n)]`
-/

namespace A173962.P14269016898109042877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002378 n + 1) * A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173962.P14269016898109042877

namespace A173962

/-- `Δ[(A002378(n)+1)*A001844(n)]` -/
def P14269016898109042877.Spec : Prop :=
  ∀ n, P14269016898109042877.a n = A173962 (n + 1)

end A173962

/-! ## A173962.P17013674153969543587

`A268201(n+1)+A050492(n+2)`
-/

namespace A173962.P17013674153969543587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268201 (n + 1) + A050492 (n + 2)

end

end A173962.P17013674153969543587

namespace A173962

/-- `A268201(n+1)+A050492(n+2)` -/
def P17013674153969543587.Spec : Prop :=
  ∀ n, P17013674153969543587.a n = A173962 (n + 1)

end A173962

/-! ## A173962.P2484178069910956386

`A237516(n+2)-A237516(n+1)`
-/

namespace A173962.P2484178069910956386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237516 (n + 2) - A237516 (n + 1)

end

end A173962.P2484178069910956386

namespace A173962

/-- `A237516(n+2)-A237516(n+1)` -/
def P2484178069910956386.Spec : Prop :=
  ∀ n, P2484178069910956386.a n = A173962 (n + 1)

end A173962

/-! ## A173962.P18028917755312340219

`A175114(n+1)/A010014(n+1)`
-/

namespace A173962.P18028917755312340219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175114 (n + 1) : ℚ) / (A010014 (n + 1) : ℚ)

end

end A173962.P18028917755312340219

namespace A173962

/-- `A175114(n+1)/A010014(n+1)` -/
def P18028917755312340219.Spec : Prop :=
  ∀ n, P18028917755312340219.a n = (A173962 (n + 1) : ℚ)

end A173962

/-! ## A173962.P12835308178503292096

`A001844(n+1)+A099761(n+1)-A000583(n)`
-/

namespace A173962.P12835308178503292096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (n + 1) + (A099761 (n + 1) - A000583 n)

end

end A173962.P12835308178503292096

namespace A173962

/-- `A001844(n+1)+A099761(n+1)-A000583(n)` -/
def P12835308178503292096.Spec : Prop :=
  ∀ n, P12835308178503292096.a n = A173962 (n + 1)

end A173962

/-! ## A173962.P13779827002387896060

`A008530(n+1)+A008530(n+1)-A008532(n+1)`
-/

namespace A173962.P13779827002387896060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008530 (n + 1) + (A008530 (n + 1) - A008532 (n + 1))

end

end A173962.P13779827002387896060

namespace A173962

/-- `A008530(n+1)+A008530(n+1)-A008532(n+1)` -/
def P13779827002387896060.Spec : Prop :=
  ∀ n, P13779827002387896060.a n = A173962 (n + 1)

end A173962

/-!
# A173963: Number of nonoverlapping placements of one 1 X 1 square and one 2 X 2 square on an n X n board.

The programs for A173963, the canonical program `A173963.P17938129126535841815` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173963 has offset 1).

The definition of A173963 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173963.P6329034229253265345

`((n+1)²-4)*n²`
-/

namespace A173963.P6329034229253265345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) - 4) * (n ^ 2 : ℤ)

end

end A173963.P6329034229253265345

namespace A173963

/-- `((n+1)²-4)*n²` -/
def P6329034229253265345.Spec : Prop :=
  ∀ n, P6329034229253265345.a n = A173963 (n + 1)

theorem P6329034229253265345.correct : P6329034229253265345.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A173963, Nat.add_sub_cancel, A173963.P6329034229253265345.a, A173963.P17938129126535841815.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A173963, Nat.add_sub_cancel, A173963.P6329034229253265345.a, A173963.P17938129126535841815.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A173963

/-! ## A173963.P17938129126535841815

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=20, a(3)=108, a(4)=336`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A173963

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P17938129126535841815.Spec : Prop :=
  ∀ n, P17938129126535841815.a n = A173963 (n + 1)

theorem P17938129126535841815.correct : P17938129126535841815.Spec := by
  intro n
  simp only [A173963, Nat.add_sub_cancel]

end A173963

/-! ## A173963.P17572023278352572295

`∑[2*n]²-lcm(2, (2*n)²)`
-/

namespace A173963.P17572023278352572295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (Nat.lcm 2 ((2 * n) ^ 2) : ℤ)

end

end A173963.P17572023278352572295

namespace A173963

/-- `∑[2*n]²-lcm(2, (2*n)²)` -/
def P17572023278352572295.Spec : Prop :=
  ∀ n, P17572023278352572295.a n = A173963 (n + 1)

end A173963

/-! ## A173963.P7575877840169389273

`8*n*(n+3)*C(n, 2)/4`
-/

namespace A173963.P7575877840169389273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * n * ((n + 3) * Nat.choose n 2) : ℚ) / 4

end

end A173963.P7575877840169389273

namespace A173963

/-- `8*n*(n+3)*C(n, 2)/4` -/
def P7575877840169389273.Spec : Prop :=
  ∀ n, P7575877840169389273.a n = (A173963 (n + 1) : ℚ)

end A173963

/-! ## A173963.P13498167354505002846

`lcm(n-1, (n-1)*n*n*(n+3))`
-/

namespace A173963.P13498167354505002846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) (((n : ℤ) - 1) * (n * (n * (n + 3)) : ℤ))

end

end A173963.P13498167354505002846

namespace A173963

/-- `lcm(n-1, (n-1)*n*n*(n+3))` -/
def P13498167354505002846.Spec : Prop :=
  ∀ n, (P13498167354505002846.a n : ℤ) = A173963 (n + 1)

end A173963

/-! ## A173963.P2153646523111372904

`A015238(n)+n²²`
-/

namespace A173963.P2153646523111372904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015238 n + ((n ^ 2) ^ 2 : ℤ)

end

end A173963.P2153646523111372904

namespace A173963

/-- `A015238(n)+n²²` -/
def P2153646523111372904.Spec : Prop :=
  ∀ n, P2153646523111372904.a n = A173963 (n + 1)

end A173963

/-! ## A173963.P2298704001572655230

`A002378(n)²-(2*n)²`
-/

namespace A173963.P2298704001572655230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n ^ 2 - ((2 * n) ^ 2 : ℤ)

end

end A173963.P2298704001572655230

namespace A173963

/-- `A002378(n)²-(2*n)²` -/
def P2298704001572655230.Spec : Prop :=
  ∀ n, P2298704001572655230.a n = A173963 (n + 1)

end A173963

/-! ## A173963.P5800597421390983080

`(n²+n)²-A016742(n)`
-/

namespace A173963.P5800597421390983080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 + n) ^ 2 : ℤ) - A016742 n

end

end A173963.P5800597421390983080

namespace A173963

/-- `(n²+n)²-A016742(n)` -/
def P5800597421390983080.Spec : Prop :=
  ∀ n, P5800597421390983080.a n = A173963 (n + 1)

end A173963

/-! ## A173963.P6032079823851088228

`n²²+n*A014107(n)`
-/

namespace A173963.P6032079823851088228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) + (n : ℤ) * A014107 n

end

end A173963.P6032079823851088228

namespace A173963

/-- `n²²+n*A014107(n)` -/
def P6032079823851088228.Spec : Prop :=
  ∀ n, P6032079823851088228.a n = A173963 (n + 1)

end A173963

/-! ## A173963.P18040366888249460020

`4*A000537(n)-(2*n)²`
-/

namespace A173963.P18040366888249460020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000537 n - ((2 * n) ^ 2 : ℤ)

end

end A173963.P18040366888249460020

namespace A173963

/-- `4*A000537(n)-(2*n)²` -/
def P18040366888249460020.Spec : Prop :=
  ∀ n, P18040366888249460020.a n = A173963 (n + 1)

end A173963

/-! ## A173963.P4714076920411070440

`(n-1)*(∑[n]+n)*A046092(n)/(n+1)`
-/

namespace A173963.P4714076920411070440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) * (((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ) * A046092 n) : ℚ) / (n + 1 : ℚ)

end

end A173963.P4714076920411070440

namespace A173963

/-- `(n-1)*(∑[n]+n)*A046092(n)/(n+1)` -/
def P4714076920411070440.Spec : Prop :=
  ∀ n, P4714076920411070440.a n = (A173963 (n + 1) : ℚ)

end A173963

/-! ## A173963.P17805735093013604045

`((n+1)*(A000217(n)-2)+2)*8*n/4`
-/

namespace A173963.P17805735093013604045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1 : ℤ) * (A000217 n - 2) + 2) * (8 * n : ℤ) : ℚ) / 4

end

end A173963.P17805735093013604045

namespace A173963

/-- `((n+1)*(A000217(n)-2)+2)*8*n/4` -/
def P17805735093013604045.Spec : Prop :=
  ∀ n, P17805735093013604045.a n = (A173963 (n + 1) : ℚ)

end A173963

/-! ## A173963.P9275156182849007495

`A178392(n)+A015237(n)`
-/

namespace A173963.P9275156182849007495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178392 n + A015237 n

end

end A173963.P9275156182849007495

namespace A173963

/-- `A178392(n)+A015237(n)` -/
def P9275156182849007495.Spec : Prop :=
  ∀ n, P9275156182849007495.a n = A173963 (n + 1)

end A173963

/-! ## A173963.P8629531029904631889

`A219086(n)-A022267(n)`
-/

namespace A173963.P8629531029904631889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219086 n - A022267 n

end

end A173963.P8629531029904631889

namespace A173963

/-- `A219086(n)-A022267(n)` -/
def P8629531029904631889.Spec : Prop :=
  ∀ n, P8629531029904631889.a n = A173963 (n + 1)

end A173963

/-! ## A173963.P117077615158604975

`A246767(n+1)+A212133(n)`
-/

namespace A173963.P117077615158604975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246767 (n + 1) + A212133 n

end

end A173963.P117077615158604975

namespace A173963

/-- `A246767(n+1)+A212133(n)` -/
def P117077615158604975.Spec : Prop :=
  ∀ n, P117077615158604975.a n = A173963 (n + 1)

end A173963

/-! ## A173963.P9055077661268653376

`A047673(n+1)-A102083(n)`
-/

namespace A173963.P9055077661268653376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047673 (n + 1) - A102083 n

end

end A173963.P9055077661268653376

namespace A173963

/-- `A047673(n+1)-A102083(n)` -/
def P9055077661268653376.Spec : Prop :=
  ∀ n, P9055077661268653376.a n = A173963 (n + 1)

end A173963

/-! ## A173963.P15606409693338709562

`A165563(n)-A054569(n+1)`
-/

namespace A173963.P15606409693338709562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165563 n - A054569 (n + 1)

end

end A173963.P15606409693338709562

namespace A173963

/-- `A165563(n)-A054569(n+1)` -/
def P15606409693338709562.Spec : Prop :=
  ∀ n, P15606409693338709562.a n = A173963 (n + 1)

end A173963

/-! ## A173963.P10429970839686968434

`A002061(n)*A028552(n)-A028552(n)`
-/

namespace A173963.P10429970839686968434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n * A028552 n - A028552 n

end

end A173963.P10429970839686968434

namespace A173963

/-- `A002061(n)*A028552(n)-A028552(n)` -/
def P10429970839686968434.Spec : Prop :=
  ∀ n, P10429970839686968434.a n = A173963 (n + 1)

end A173963

/-! ## A173963.P3840143563577003959

`A035291(n+1)+A045991(n)+A007290(n)`
-/

namespace A173963.P3840143563577003959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035291 (n + 1) + (A045991 n + A007290 n)

end

end A173963.P3840143563577003959

namespace A173963

/-- `A035291(n+1)+A045991(n)+A007290(n)` -/
def P3840143563577003959.Spec : Prop :=
  ∀ n, P3840143563577003959.a n = A173963 (n + 1)

end A173963

/-! ## A173963.P7607208271465598554

`A007531(n+1)+A058895(n)+A007531(n)`
-/

namespace A173963.P7607208271465598554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (n + 1) + (A058895 n + A007531 n)

end

end A173963.P7607208271465598554

namespace A173963

/-- `A007531(n+1)+A058895(n)+A007531(n)` -/
def P7607208271465598554.Spec : Prop :=
  ∀ n, P7607208271465598554.a n = A173963 (n + 1)

end A173963

/-!
# A173964: Sequence derived from a memorization technique.

The programs for A173964, the canonical program `A173964.P6886595113697766438` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173964 has offset 1).

The definition of A173964 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173964.P11021350185625197468

`A004736(A274079(n+1)+1)`
-/

namespace A173964.P11021350185625197468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A274079 (n + 1) + 1).toNat

end

end A173964.P11021350185625197468

namespace A173964

/-- `A004736(A274079(n+1)+1)` -/
def P11021350185625197468.Spec : Prop :=
  ∀ n, P11021350185625197468.a n = A173964 (n + 1)

end A173964

/-! ## A173964.P6289938791483299738

`A025581(A274079(n+1)-1)`
-/

namespace A173964.P6289938791483299738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A274079 (n + 1) - 1).toNat

end

end A173964.P6289938791483299738

namespace A173964

/-- `A025581(A274079(n+1)-1)` -/
def P6289938791483299738.Spec : Prop :=
  ∀ n, P6289938791483299738.a n = A173964 (n + 1)

end A173964

/-! ## A173964.P17253138047674091304

`A057554(2*A274079(n+1))`
-/

namespace A173964.P17253138047674091304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (2 * A274079 (n + 1)).toNat

end

end A173964.P17253138047674091304

namespace A173964

/-- `A057554(2*A274079(n+1))` -/
def P17253138047674091304.Spec : Prop :=
  ∀ n, P17253138047674091304.a n = A173964 (n + 1)

end A173964

/-! ## A173964.P6886595113697766438

`A056558(n)+A056559(n)+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A173964

/-- `A056558(n)+A056559(n)+1` -/
def P6886595113697766438.Spec : Prop :=
  ∀ n, P6886595113697766438.a n = A173964 (n + 1)

theorem P6886595113697766438.correct : P6886595113697766438.Spec := by
  intro n
  simp only [A173964, Nat.add_sub_cancel]

end A173964

/-! ## A173964.P14825532686842529695

`A056556(n)+1-A056560(n)`
-/

namespace A173964.P14825532686842529695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 n + (1 - A056560 n)

end

end A173964.P14825532686842529695

namespace A173964

/-- `A056556(n)+1-A056560(n)` -/
def P14825532686842529695.Spec : Prop :=
  ∀ n, P14825532686842529695.a n = A173964 (n + 1)

end A173964

/-! ## A173964.P17027780083655699026

`A360010(n+1)-A056560(n)`
-/

namespace A173964.P17027780083655699026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360010 (n + 1) - A056560 n

end

end A173964.P17027780083655699026

namespace A173964

/-- `A360010(n+1)-A056560(n)` -/
def P17027780083655699026.Spec : Prop :=
  ∀ n, P17027780083655699026.a n = A173964 (n + 1)

end A173964

/-! ## A173964.P6700144555523612124

`A056558(n)+A194847(n)-A194848(n)`
-/

namespace A173964.P6700144555523612124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 n + (A194847 n - A194848 n)

end

end A173964.P6700144555523612124

namespace A173964

/-- `A056558(n)+A194847(n)-A194848(n)` -/
def P6700144555523612124.Spec : Prop :=
  ∀ n, P6700144555523612124.a n = A173964 (n + 1)

end A173964

/-! ## A173964.P10206557858793562160

`A025581(A274079(n+1))+A000194(gcd(n, n+1))`
-/

namespace A173964.P10206557858793562160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A274079 (n + 1)).toNat + A000194 (Nat.gcd n (n + 1))

end

end A173964.P10206557858793562160

namespace A173964

/-- `A025581(A274079(n+1))+A000194(gcd(n, n+1))` -/
def P10206557858793562160.Spec : Prop :=
  ∀ n, P10206557858793562160.a n = A173964 (n + 1)

end A173964

/-! ## A173964.P6830007403790330111

`A056559(n)+A002260(A332662(2*n)+1)`
-/

namespace A173964.P6830007403790330111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 n + A002260 (A332662 (2 * n) + 1).toNat

end

end A173964.P6830007403790330111

namespace A173964

/-- `A056559(n)+A002260(A332662(2*n)+1)` -/
def P6830007403790330111.Spec : Prop :=
  ∀ n, P6830007403790330111.a n = A173964 (n + 1)

end A173964

/-! ## A173964.P9133329147503937247

`A333516(n+1)+A056559(n)`
-/

namespace A173964.P9133329147503937247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333516 (n + 1) + A056559 n

end

end A173964.P9133329147503937247

namespace A173964

/-- `A333516(n+1)+A056559(n)` -/
def P9133329147503937247.Spec : Prop :=
  ∀ n, P9133329147503937247.a n = A173964 (n + 1)

end A173964

/-!
# A173965: Averages of four consecutive cubes.

The programs for A173965, the canonical program `A173965.P10334409012643500959` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173965 has offset 1).

The definition of A173965 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173965.P1607132522176708119

`(2*(n+1)-1)*((n+1)²-(n+1)+4)/2`
-/

namespace A173965.P1607132522176708119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * (n + 1) : ℤ) - 1) * (((n + 1) ^ 2 : ℤ) - (n + 1 : ℤ) + 4) : ℚ) / 2

end

end A173965.P1607132522176708119

namespace A173965

/-- `(2*(n+1)-1)*((n+1)²-(n+1)+4)/2` -/
def P1607132522176708119.Spec : Prop :=
  ∀ n, P1607132522176708119.a n = (A173965 (n + 1) : ℚ)

theorem P1607132522176708119.correct : P1607132522176708119.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A173965, Nat.add_sub_cancel, A173965.P1607132522176708119.a, A173965.P10334409012643500959.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A173965, Nat.add_sub_cancel, A173965.P1607132522176708119.a, A173965.P10334409012643500959.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A173965

/-! ## A173965.P10334409012643500959

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=2, a(1)=9, a(2)=25, a(3)=56`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A173965

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P10334409012643500959.Spec : Prop :=
  ∀ n, P10334409012643500959.a n = A173965 (n + 1)

theorem P10334409012643500959.correct : P10334409012643500959.Spec := by
  intro n
  simp only [A173965, Nat.add_sub_cancel]

end A173965

/-! ## A173965.P17460778443888841994

`(2*(n+1)-1)*A089071(n+2)`
-/

namespace A173965.P17460778443888841994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - 1) * A089071 (n + 2)

end

end A173965.P17460778443888841994

namespace A173965

/-- `(2*(n+1)-1)*A089071(n+2)` -/
def P17460778443888841994.Spec : Prop :=
  ∀ n, P17460778443888841994.a n = A173965 (n + 1)

end A173965

/-! ## A173965.P15007300492777244085

`Δ[C(n²+4, 2)/2]`
-/

namespace A173965.P15007300492777244085
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2 + 4) 2 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173965.P15007300492777244085

namespace A173965

/-- `Δ[C(n²+4, 2)/2]` -/
def P15007300492777244085.Spec : Prop :=
  ∀ n, P15007300492777244085.a n = (A173965 (n + 1) : ℚ)

end A173965

/-! ## A173965.P6055552445982654605

`∑[∑[a(n-1)+6]]` with `a(0)=2, a(1)=5, a(2)=9`
-/

namespace A173965.P6055552445982654605
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 9] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173965.P6055552445982654605

namespace A173965

/-- `∑[∑[a(n-1)+6]]` -/
def P6055552445982654605.Spec : Prop :=
  ∀ n, (P6055552445982654605.a n : ℤ) = A173965 (n + 1)

end A173965

/-! ## A173965.P14136160422707974982

`3*n²+a(n-1)+4` with `a(0)=2`
-/

namespace A173965.P14136160422707974982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  3 * n ^ 2 + (a (n - 1) + 4)

end

end A173965.P14136160422707974982

namespace A173965

/-- `3*n²+a(n-1)+4` -/
def P14136160422707974982.Spec : Prop :=
  ∀ n, (P14136160422707974982.a n : ℤ) = A173965 (n + 1)

end A173965

/-! ## A173965.P5500491559803810893

`a(n-1)+3*n*n+4` with `a(0)=2`
-/

namespace A173965.P5500491559803810893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (3 * (n * n) + 4)

end

end A173965.P5500491559803810893

namespace A173965

/-- `a(n-1)+3*n*n+4` -/
def P5500491559803810893.Spec : Prop :=
  ∀ n, (P5500491559803810893.a n : ℤ) = A173965 (n + 1)

end A173965

/-! ## A173965.P1624681692363509482

`∑[xor(2, 3*n²+1)]+n-1`
-/

namespace A173965.P1624681692363509482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (3 * n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ) - 1

end

end A173965.P1624681692363509482

namespace A173965

/-- `∑[xor(2, 3*n²+1)]+n-1` -/
def P1624681692363509482.Spec : Prop :=
  ∀ n, P1624681692363509482.a n = A173965 (n + 1)

end A173965

/-! ## A173965.P8641665221914678667

`n*((n+1)²+3)+2-C(n, 2)`
-/

namespace A173965.P8641665221914678667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * ((n + 1) ^ 2 + 3) + 2 : ℤ) - (Nat.choose n 2 : ℤ)

end

end A173965.P8641665221914678667

namespace A173965

/-- `n*((n+1)²+3)+2-C(n, 2)` -/
def P8641665221914678667.Spec : Prop :=
  ∀ n, P8641665221914678667.a n = A173965 (n + 1)

end A173965

/-! ## A173965.P4835408459422192723

`4*n+2+lcm(2*n+1, ∑[n])`
-/

namespace A173965.P4835408459422192723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2 + Nat.lcm (2 * n + 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173965.P4835408459422192723

namespace A173965

/-- `4*n+2+lcm(2*n+1, ∑[n])` -/
def P4835408459422192723.Spec : Prop :=
  ∀ n, (P4835408459422192723.a n : ℤ) = A173965 (n + 1)

end A173965

/-! ## A173965.P2514485911899378318

`lcm(n+1, n²)+∑[n+3]+n-1`
-/

namespace A173965.P2514485911899378318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (n ^ 2) : ℤ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n : ℤ) - 1))

end

end A173965.P2514485911899378318

namespace A173965

/-- `lcm(n+1, n²)+∑[n+3]+n-1` -/
def P2514485911899378318.Spec : Prop :=
  ∀ n, P2514485911899378318.a n = A173965 (n + 1)

end A173965

/-! ## A173965.P8299925257382208405

`∑[∑[ogf((6x-3x^2+3x^3)/(1-2x+x^2))]]+2+n`
-/

namespace A173965.P8299925257382208405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, -3, 3] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 + (n : ℤ)

end

end A173965.P8299925257382208405

namespace A173965

/-- `∑[∑[ogf((6x-3x^2+3x^3)/(1-2x+x^2))]]+2+n` -/
def P8299925257382208405.Spec : Prop :=
  ∀ n, P8299925257382208405.a n = A173965 (n + 1)

end A173965

/-! ## A173965.P2191590646384821320

`1-(n-∑[∑[ogf((1+5x-4x^2+4x^3)/(1-2x+x^2))]])`
-/

namespace A173965.P2191590646384821320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, -4, 4] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173965.P2191590646384821320

namespace A173965

/-- `1-(n-∑[∑[ogf((1+5x-4x^2+4x^3)/(1-2x+x^2))]])` -/
def P2191590646384821320.Spec : Prop :=
  ∀ n, P2191590646384821320.a n = A173965 (n + 1)

end A173965

/-! ## A173965.P17172636482722329971

`abs((2*n+1)*(n-1-C(n+2, 2)))`
-/

namespace A173965.P17172636482722329971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n + 1 : ℤ) * ((n : ℤ) - 1 - (Nat.choose (n + 2) 2 : ℤ))|

end

end A173965.P17172636482722329971

namespace A173965

/-- `abs((2*n+1)*(n-1-C(n+2, 2)))` -/
def P17172636482722329971.Spec : Prop :=
  ∀ n, P17172636482722329971.a n = A173965 (n + 1)

end A173965

/-! ## A173965.P3135490195921616330

`-((2*n+1)*(n-1-C(n+2, 2)))`
-/

namespace A173965.P3135490195921616330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((2 * n + 1 : ℤ) * ((n : ℤ) - 1 - (Nat.choose (n + 2) 2 : ℤ)))

end

end A173965.P3135490195921616330

namespace A173965

/-- `-((2*n+1)*(n-1-C(n+2, 2)))` -/
def P3135490195921616330.Spec : Prop :=
  ∀ n, P3135490195921616330.a n = A173965 (n + 1)

end A173965

/-! ## A173965.P16266763485373820035

`(2*n+1)*(C(n+1, 2)+1)+2*n+1`
-/

namespace A173965.P16266763485373820035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (Nat.choose (n + 1) 2 + 1) + (2 * n + 1)

end

end A173965.P16266763485373820035

namespace A173965

/-- `(2*n+1)*(C(n+1, 2)+1)+2*n+1` -/
def P16266763485373820035.Spec : Prop :=
  ∀ n, (P16266763485373820035.a n : ℤ) = A173965 (n + 1)

end A173965

/-! ## A173965.P14389150881279438885

`∑[A005918(n)+2]-1`
-/

namespace A173965.P14389150881279438885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A173965.P14389150881279438885

namespace A173965

/-- `∑[A005918(n)+2]-1` -/
def P14389150881279438885.Spec : Prop :=
  ∀ n, P14389150881279438885.a n = A173965 (n + 1)

end A173965

/-! ## A173965.P2697862506764362848

`A270867(n)+∑[1-n]`
-/

namespace A173965.P2697862506764362848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270867 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173965.P2697862506764362848

namespace A173965

/-- `A270867(n)+∑[1-n]` -/
def P2697862506764362848.Spec : Prop :=
  ∀ n, P2697862506764362848.a n = A173965 (n + 1)

end A173965

/-! ## A173965.P3057271387042325432

`A159940(n+2)/2+n`
-/

namespace A173965.P3057271387042325432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159940 (n + 2) : ℚ) / 2 + (n : ℚ)

end

end A173965.P3057271387042325432

namespace A173965

/-- `A159940(n+2)/2+n` -/
def P3057271387042325432.Spec : Prop :=
  ∀ n, P3057271387042325432.a n = (A173965 (n + 1) : ℚ)

end A173965

/-! ## A173965.P6574276887166476906

`A159941(n+2)/4+n`
-/

namespace A173965.P6574276887166476906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159941 (n + 2) : ℚ) / 4 + (n : ℚ)

end

end A173965.P6574276887166476906

namespace A173965

/-- `A159941(n+2)/4+n` -/
def P6574276887166476906.Spec : Prop :=
  ∀ n, P6574276887166476906.a n = (A173965 (n + 1) : ℚ)

end A173965

/-!
# A173966: Sums of two consecutive semiprimes.

The programs for A173966, the canonical program `A173966.P5392823203403283562` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173966 has offset 1).

The definition of A173966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173966.P8682577257723872518

`2*A070552(n+1)+1`
-/

namespace A173966.P8682577257723872518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A070552 (n + 1) + 1

end

end A173966.P8682577257723872518

namespace A173966

/-- `2*A070552(n+1)+1` -/
def P8682577257723872518.Spec : Prop :=
  ∀ n, P8682577257723872518.a n = A173966 (n + 1)

end A173966

/-! ## A173966.P8074554079414721559

`2*A109373(n+1)-1`
-/

namespace A173966.P8074554079414721559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109373 (n + 1) - 1

end

end A173966.P8074554079414721559

namespace A173966

/-- `2*A109373(n+1)-1` -/
def P8074554079414721559.Spec : Prop :=
  ∀ n, P8074554079414721559.a n = A173966 (n + 1)

end A173966

/-! ## A173966.P11966595977337032892

`∩[2*n+1, A157483(n+1)]`
-/

namespace A173966.P11966595977337032892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173966.P11966595977337032892

namespace A173966

/-- `∩[2*n+1, A157483(n+1)]` -/
def P11966595977337032892.Spec : Prop :=
  ∀ n, (P11966595977337032892.a n : ℤ) = A173966 (n + 1)

end A173966

/-! ## A173966.P5392823203403283562

`filter[A157483(n+1), A324908(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A173966

/-- `filter[A157483(n+1), A324908(#)]` -/
def P5392823203403283562.Spec : Prop :=
  ∀ n, P5392823203403283562.a n = A173966 (n + 1)

theorem P5392823203403283562.correct : P5392823203403283562.Spec := by
  intro n
  simp only [A173966, Nat.add_sub_cancel]

end A173966

/-! ## A173966.P9534276506971134287

`A109373(n+1)+A070552(n+1)`
-/

namespace A173966.P9534276506971134287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 1) + A070552 (n + 1)

end

end A173966.P9534276506971134287

namespace A173966

/-- `A109373(n+1)+A070552(n+1)` -/
def P9534276506971134287.Spec : Prop :=
  ∀ n, P9534276506971134287.a n = A173966 (n + 1)

end A173966

/-! ## A173966.P10268771881802522435

`A000265(A070552(n+1)+A070552(n+1)+1)`
-/

namespace A173966.P10268771881802522435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A070552 (n + 1) + (A070552 (n + 1) + 1)).toNat

end

end A173966.P10268771881802522435

namespace A173966

/-- `A000265(A070552(n+1)+A070552(n+1)+1)` -/
def P10268771881802522435.Spec : Prop :=
  ∀ n, P10268771881802522435.a n = A173966 (n + 1)

end A173966

/-! ## A173966.P12997661917511167710

`A070552(n+1)+A152830(A033716(n))+A070552(n+1)`
-/

namespace A173966.P12997661917511167710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 1) + (A152830 (A033716 n).toNat + A070552 (n + 1))

end

end A173966.P12997661917511167710

namespace A173966

/-- `A070552(n+1)+A152830(A033716(n))+A070552(n+1)` -/
def P12997661917511167710.Spec : Prop :=
  ∀ n, P12997661917511167710.a n = A173966 (n + 1)

end A173966

/-! ## A173966.P14418647929128823825

`A070552(n+1)+A070552(n+1)+A001222(A048161(n+1))`
-/

namespace A173966.P14418647929128823825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 1) + (A070552 (n + 1) + A001222 (A048161 (n + 1)).toNat)

end

end A173966.P14418647929128823825

namespace A173966

/-- `A070552(n+1)+A070552(n+1)+A001222(A048161(n+1))` -/
def P14418647929128823825.Spec : Prop :=
  ∀ n, P14418647929128823825.a n = A173966 (n + 1)

end A173966

/-! ## A173966.P5433092007391838459

`A070552(n+1)+A225416(A225416(n+1))+A070552(n+1)`
-/

namespace A173966.P5433092007391838459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 1) + (A225416 (A225416 (n + 1)).toNat + A070552 (n + 1))

end

end A173966.P5433092007391838459

namespace A173966

/-- `A070552(n+1)+A225416(A225416(n+1))+A070552(n+1)` -/
def P5433092007391838459.Spec : Prop :=
  ∀ n, P5433092007391838459.a n = A173966 (n + 1)

end A173966

/-! ## A173966.P7109757989562671402

`A109373(n+1)+A109373(n+1)-A064911(A001358(n+1))`
-/

namespace A173966.P7109757989562671402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 1) + (A109373 (n + 1) - A064911 (A001358 (n + 1)).toNat)

end

end A173966.P7109757989562671402

namespace A173966

/-- `A109373(n+1)+A109373(n+1)-A064911(A001358(n+1))` -/
def P7109757989562671402.Spec : Prop :=
  ∀ n, P7109757989562671402.a n = A173966 (n + 1)

end A173966

/-! ## A173966.P12730281584834582800

`A109373(n+1)+A109373(n+1)-A064911(A039832(n+1))`
-/

namespace A173966.P12730281584834582800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 1) + (A109373 (n + 1) - A064911 (A039832 (n + 1)).toNat)

end

end A173966.P12730281584834582800

namespace A173966

/-- `A109373(n+1)+A109373(n+1)-A064911(A039832(n+1))` -/
def P12730281584834582800.Spec : Prop :=
  ∀ n, P12730281584834582800.a n = A173966 (n + 1)

end A173966

/-! ## A173966.P7643622876523077401

`A109373(n+1)+A109373(n+1)-A064911(A100484(n+1))`
-/

namespace A173966.P7643622876523077401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 1) + (A109373 (n + 1) - A064911 (A100484 (n + 1)).toNat)

end

end A173966.P7643622876523077401

namespace A173966

/-- `A109373(n+1)+A109373(n+1)-A064911(A100484(n+1))` -/
def P7643622876523077401.Spec : Prop :=
  ∀ n, P7643622876523077401.a n = A173966 (n + 1)

end A173966

/-! ## A173966.P17551341736870831731

`A070552(n+1)+A070552(n+1)+A010051(A005383(n+1))`
-/

namespace A173966.P17551341736870831731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 1) + (A070552 (n + 1) + A010051 (A005383 (n + 1)).toNat)

end

end A173966.P17551341736870831731

namespace A173966

/-- `A070552(n+1)+A070552(n+1)+A010051(A005383(n+1))` -/
def P17551341736870831731.Spec : Prop :=
  ∀ n, P17551341736870831731.a n = A173966 (n + 1)

end A173966

/-! ## A173966.P7946375861419410107

`A109373(n+1)+A109373(n+1)-A001222(A005385(n+1))`
-/

namespace A173966.P7946375861419410107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 1) + (A109373 (n + 1) - A001222 (A005385 (n + 1)).toNat)

end

end A173966.P7946375861419410107

namespace A173966

/-- `A109373(n+1)+A109373(n+1)-A001222(A005385(n+1))` -/
def P7946375861419410107.Spec : Prop :=
  ∀ n, P7946375861419410107.a n = A173966 (n + 1)

end A173966

/-! ## A173966.P4309993255977533019

`∩[A157483(n+1), A192861(n+1)]`
-/

namespace A173966.P4309993255977533019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173966.P4309993255977533019

namespace A173966

/-- `∩[A157483(n+1), A192861(n+1)]` -/
def P4309993255977533019.Spec : Prop :=
  ∀ n, (P4309993255977533019.a n : ℤ) = A173966 (n + 1)

end A173966

/-! ## A173966.P12698234689992874651

`∩[A157483(n+1), A192863(n+1)-2]`
-/

namespace A173966.P12698234689992874651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192863 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173966.P12698234689992874651

namespace A173966

/-- `∩[A157483(n+1), A192863(n+1)-2]` -/
def P12698234689992874651.Spec : Prop :=
  ∀ n, (P12698234689992874651.a n : ℤ) = A173966 (n + 1)

end A173966

/-! ## A173966.P17667760122965862694

`∩[A157483(n+1), A329095(n+1)]`
-/

namespace A173966.P17667760122965862694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173966.P17667760122965862694

namespace A173966

/-- `∩[A157483(n+1), A329095(n+1)]` -/
def P17667760122965862694.Spec : Prop :=
  ∀ n, (P17667760122965862694.a n : ℤ) = A173966 (n + 1)

end A173966

/-! ## A173966.P8167157372264845089

`∩[A157483(n+1), A176393(n+1)]`
-/

namespace A173966.P8167157372264845089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173966.P8167157372264845089

namespace A173966

/-- `∩[A157483(n+1), A176393(n+1)]` -/
def P8167157372264845089.Spec : Prop :=
  ∀ n, (P8167157372264845089.a n : ℤ) = A173966 (n + 1)

end A173966

/-! ## A173966.P11874791010391441076

`∩[A157483(n+1), A296243(n+1)]`
-/

namespace A173966.P11874791010391441076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173966.P11874791010391441076

namespace A173966

/-- `∩[A157483(n+1), A296243(n+1)]` -/
def P11874791010391441076.Spec : Prop :=
  ∀ n, (P11874791010391441076.a n : ℤ) = A173966 (n + 1)

end A173966

/-!
# A173967: Sums of two consecutive numbers that are nonsquare semiprimes.

The programs for A173967, the canonical program `A173967.P1730649050350416693` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173967 has offset 1).

The definition of A173967 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A109288, A263990, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A173967.P1730649050350416693

`A263990(n+1)+A109288(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A173967

/-- `A263990(n+1)+A109288(n+1)` -/
def P1730649050350416693.Spec : Prop :=
  ∀ n, P1730649050350416693.a n = A173967 (n + 1)

theorem P1730649050350416693.correct : P1730649050350416693.Spec := by
  intro n
  simp only [A173967, Nat.add_sub_cancel]

end A173967

/-! ## A173967.P6583318211599455507

`2*A263990(n+1)+1`
-/

namespace A173967.P6583318211599455507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A263990 (n + 1) + 1

end

end A173967.P6583318211599455507

namespace A173967

/-- `2*A263990(n+1)+1` -/
def P6583318211599455507.Spec : Prop :=
  ∀ n, P6583318211599455507.a n = A173967 (n + 1)

end A173967

/-! ## A173967.P13657102405826118408

`2*A109288(n+1)-1`
-/

namespace A173967.P13657102405826118408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109288 (n + 1) - 1

end

end A173967.P13657102405826118408

namespace A173967

/-- `2*A109288(n+1)-1` -/
def P13657102405826118408.Spec : Prop :=
  ∀ n, P13657102405826118408.a n = A173967 (n + 1)

end A173967

/-! ## A173967.P7651016525791405182

`A004273(A109288(n+1))`
-/

namespace A173967.P7651016525791405182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A109288 (n + 1)).toNat

end

end A173967.P7651016525791405182

namespace A173967

/-- `A004273(A109288(n+1))` -/
def P7651016525791405182.Spec : Prop :=
  ∀ n, P7651016525791405182.a n = A173967 (n + 1)

end A173967

/-! ## A173967.P3463228928013397571

`A005408(A263990(n+1))`
-/

namespace A173967.P3463228928013397571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A263990 (n + 1)).toNat

end

end A173967.P3463228928013397571

namespace A173967

/-- `A005408(A263990(n+1))` -/
def P3463228928013397571.Spec : Prop :=
  ∀ n, P3463228928013397571.a n = A173967 (n + 1)

end A173967

/-! ## A173967.P472392893607934358

`A004280(A109288(n+1)+1)`
-/

namespace A173967.P472392893607934358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A109288 (n + 1) + 1).toNat

end

end A173967.P472392893607934358

namespace A173967

/-- `A004280(A109288(n+1)+1)` -/
def P472392893607934358.Spec : Prop :=
  ∀ n, P472392893607934358.a n = A173967 (n + 1)

end A173967

/-! ## A173967.P5981883966528212215

`A004273(A263990(n+1)+1)`
-/

namespace A173967.P5981883966528212215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A263990 (n + 1) + 1).toNat

end

end A173967.P5981883966528212215

namespace A173967

/-- `A004273(A263990(n+1)+1)` -/
def P5981883966528212215.Spec : Prop :=
  ∀ n, P5981883966528212215.a n = A173967 (n + 1)

end A173967

/-! ## A173967.P5767578847264724638

`A178034(A263990(n+1)+1)`
-/

namespace A173967.P5767578847264724638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178034 (A263990 (n + 1) + 1).toNat

end

end A173967.P5767578847264724638

namespace A173967

/-- `A178034(A263990(n+1)+1)` -/
def P5767578847264724638.Spec : Prop :=
  ∀ n, P5767578847264724638.a n = A173967 (n + 1)

end A173967

/-! ## A173967.P13461767402807731250

`A005408(A109288(n+1)-1)`
-/

namespace A173967.P13461767402807731250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A109288 (n + 1) - 1).toNat

end

end A173967.P13461767402807731250

namespace A173967

/-- `A005408(A109288(n+1)-1)` -/
def P13461767402807731250.Spec : Prop :=
  ∀ n, P13461767402807731250.a n = A173967 (n + 1)

end A173967

/-! ## A173967.P5263850502189443001

`A144396(A109288(n+1)-1)`
-/

namespace A173967.P5263850502189443001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A109288 (n + 1) - 1).toNat

end

end A173967.P5263850502189443001

namespace A173967

/-- `A144396(A109288(n+1)-1)` -/
def P5263850502189443001.Spec : Prop :=
  ∀ n, P5263850502189443001.a n = A173967 (n + 1)

end A173967

/-!
# A173968: Sums of 3 consecutive semiprimes.

The programs for A173968, there is no canonical definition to state claims against.
-/

/-! ## A173968.P15405053552484690350

`3*A086005(n+1)`
-/

namespace A173968.P15405053552484690350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A086005 (n + 1)

end

end A173968.P15405053552484690350

/-! ## A173968.P8621813088383768779

`6*A086006(n+1)`
-/

namespace A173968.P8621813088383768779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A086006 (n + 1)

end

end A173968.P8621813088383768779

/-! ## A173968.P5015315862048173700

`6*p?[A082130(n+1)]`
-/

namespace A173968.P5015315862048173700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173968.P5015315862048173700

/-! ## A173968.P17636355201017607322

`3*(A056809(n+1)+1)`
-/

namespace A173968.P17636355201017607322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A056809 (n + 1) + 1)

end

end A173968.P17636355201017607322

/-! ## A173968.P11785133285892550928

`3*(A115393(n+1)-1)`
-/

namespace A173968.P11785133285892550928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A115393 (n + 1) - 1)

end

end A173968.P11785133285892550928

/-!
# A173969: Sums of three consecutive numbers each of which is the product of two distinct primes and each of which has no exponent greater than one for either of its two prime factors.

The programs for A173969, there is no canonical definition to state claims against.
-/

/-! ## A173969.P15812517119786805891

`3*A248201(n+1)`
-/

namespace A173969.P15812517119786805891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A248201 (n + 1)

end

end A173969.P15812517119786805891

/-! ## A173969.P13187644707897950149

`6*A195685(n+1)`
-/

namespace A173969.P13187644707897950149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A195685 (n + 1)

end

end A173969.P13187644707897950149

/-! ## A173969.P11835946787359833883

`3*(A039833(n+1)+1)`
-/

namespace A173969.P11835946787359833883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A039833 (n + 1) + 1)

end

end A173969.P11835946787359833883

/-! ## A173969.P4279778462134409930

`lcm(A010704(n), A248201(n+1))`
-/

namespace A173969.P4279778462134409930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010704 n) (A248201 (n + 1))

end

end A173969.P4279778462134409930

/-! ## A173969.P9504432315728929471

`lcm(A010704(A131229(n+1)), A195685(n+1))`
-/

namespace A173969.P9504432315728929471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010704 (A131229 (n + 1)).toNat) (A195685 (n + 1))

end

end A173969.P9504432315728929471

/-! ## A173969.P5698175972099404157

`A064161(A307546(n+1))`
-/

namespace A173969.P5698175972099404157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064161 (A307546 (n + 1)).toNat

end

end A173969.P5698175972099404157

/-! ## A173969.P9176975362787871809

`A008458(A195685(n+1))`
-/

namespace A173969.P9176975362787871809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A195685 (n + 1)).toNat

end

end A173969.P9176975362787871809

/-! ## A173969.P17161490872885446193

`A165998(A039833(n+1))`
-/

namespace A173969.P17161490872885446193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 (A039833 (n + 1)).toNat

end

end A173969.P17161490872885446193

/-! ## A173969.P6506920987758924879

`A008486(A248201(n+1))`
-/

namespace A173969.P6506920987758924879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A248201 (n + 1)).toNat

end

end A173969.P6506920987758924879

/-! ## A173969.P14300858490440759006

`lcm(A195685(n+1), A362115(A362115(n)²))`
-/

namespace A173969.P14300858490440759006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A195685 (n + 1)) (A362115 (A362115 n ^ 2).toNat)

end

end A173969.P14300858490440759006

/-!
# A173970: Primes p such that 2*p-NextPrime are prime numbers.

The programs for A173970, there is no canonical definition to state claims against.
-/

/-! ## A173970.P1332198350444684696

`A215808(n+1)+A001223(A216075(n+1))`
-/

namespace A173970.P1332198350444684696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215808 (n + 1) + A001223 (A216075 (n + 1)).toNat

end

end A173970.P1332198350444684696

/-! ## A173970.P7755012792659533258

`A000040(A216075(n+1))`
-/

namespace A173970.P7755012792659533258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A216075 (n + 1)).toNat

end

end A173970.P7755012792659533258

/-! ## A173970.P11812474188335038637

`A008578(A216075(n+1)+1)`
-/

namespace A173970.P11812474188335038637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A216075 (n + 1) + 1).toNat

end

end A173970.P11812474188335038637

/-! ## A173970.P6781539397586420941

`A175787(A216075(n+1)+1)`
-/

namespace A173970.P6781539397586420941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A216075 (n + 1) + 1).toNat

end

end A173970.P6781539397586420941

/-! ## A173970.P7225082241363399589

`A045344(A216075(n+1)-1)`
-/

namespace A173970.P7225082241363399589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A216075 (n + 1) - 1).toNat

end

end A173970.P7225082241363399589

/-! ## A173970.P6503675587459404812

`A006005(or(A000038(n), A216075(n+1)))`
-/

namespace A173970.P6503675587459404812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (Int.lor (A000038 n) (A216075 (n + 1))).toNat

end

end A173970.P6503675587459404812

/-!
# A173971: Primes p such that 2*p+q is prime, where q is the prime following p.

The programs for A173971, the canonical program `A173971.P2217788028575188822` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173971 has offset 1).

The definition of A173971 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173971.P3487160457053143071

`A000040(eq[1, A114231(n+2)]+1)`
-/

namespace A173971.P3487160457053143071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114231 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A173971.P3487160457053143071

namespace A173971

/-- `A000040(eq[1, A114231(n+2)]+1)` -/
def P3487160457053143071.Spec : Prop :=
  ∀ n, P3487160457053143071.a n = A173971 (n + 1)

end A173971

/-! ## A173971.P3012056271184214812

`A114230(eq[1, A114231(n+2)]+2)`
-/

namespace A173971.P3012056271184214812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114231 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114230 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A173971.P3012056271184214812

namespace A173971

/-- `A114230(eq[1, A114231(n+2)]+2)` -/
def P3012056271184214812.Spec : Prop :=
  ∀ n, P3012056271184214812.a n = A173971 (n + 1)

end A173971

/-! ## A173971.P5964565827731400272

`record[A000040(n+1)/A114231(n+2)]`
-/

namespace A173971.P5964565827731400272
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / (A114231 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173971.P5964565827731400272

namespace A173971

/-- `record[A000040(n+1)/A114231(n+2)]` -/
def P5964565827731400272.Spec : Prop :=
  ∀ n, P5964565827731400272.a n = (A173971 (n + 1) : ℚ)

end A173971

/-! ## A173971.P9967220058156266445

`record[A114230(n+2)/A114231(n+2)]`
-/

namespace A173971.P9967220058156266445
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114230 (n + 2) : ℚ) / (A114231 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173971.P9967220058156266445

namespace A173971

/-- `record[A114230(n+2)/A114231(n+2)]` -/
def P9967220058156266445.Spec : Prop :=
  ∀ n, P9967220058156266445.a n = (A173971 (n + 1) : ℚ)

end A173971

/-! ## A173971.P3254573725870084209

`p?[gcd(A000040(n+1), A114230(n+2))]`
-/

namespace A173971.P3254573725870084209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A114230 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A173971.P3254573725870084209

namespace A173971

/-- `p?[gcd(A000040(n+1), A114230(n+2))]` -/
def P3254573725870084209.Spec : Prop :=
  ∀ n, (P3254573725870084209.a n : ℤ) = A173971 (n + 1)

end A173971

/-! ## A173971.P15151128743038785509

`A000040(eq[A000040(n+1), A114230(n+2)]+1)`
-/

namespace A173971.P15151128743038785509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114230 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A173971.P15151128743038785509

namespace A173971

/-- `A000040(eq[A000040(n+1), A114230(n+2)]+1)` -/
def P15151128743038785509.Spec : Prop :=
  ∀ n, P15151128743038785509.a n = A173971 (n + 1)

end A173971

/-! ## A173971.P2217788028575188822

`A000040(A175893(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A173971

/-- `A000040(A175893(n+1))` -/
def P2217788028575188822.Spec : Prop :=
  ∀ n, P2217788028575188822.a n = A173971 (n + 1)

theorem P2217788028575188822.correct : P2217788028575188822.Spec := by
  intro n
  simp only [A173971, Nat.add_sub_cancel]

end A173971

/-! ## A173971.P5589427041629351154

`p?[A000040(n+1)*A114266(n+1)]`
-/

namespace A173971.P5589427041629351154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A114266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173971.P5589427041629351154

namespace A173971

/-- `p?[A000040(n+1)*A114266(n+1)]` -/
def P5589427041629351154.Spec : Prop :=
  ∀ n, P5589427041629351154.a n = A173971 (n + 1)

end A173971

/-! ## A173971.P6088705283426048186

`p?[A114230(n+2)*A114266(n+1)]`
-/

namespace A173971.P6088705283426048186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114230 (n + 2) * A114266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173971.P6088705283426048186

namespace A173971

/-- `p?[A114230(n+2)*A114266(n+1)]` -/
def P6088705283426048186.Spec : Prop :=
  ∀ n, P6088705283426048186.a n = A173971 (n + 1)

end A173971

/-! ## A173971.P13796657346580947601

`p?[record[A006530(n+2)]*A114266(n+1)]`
-/

namespace A173971.P13796657346580947601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A114266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173971.P13796657346580947601

namespace A173971

/-- `p?[record[A006530(n+2)]*A114266(n+1)]` -/
def P13796657346580947601.Spec : Prop :=
  ∀ n, P13796657346580947601.a n = A173971 (n + 1)

end A173971

/-! ## A173971.P921514902197687359

`p?[(A040976(n+1)+2)*A114266(n+1)]`
-/

namespace A173971.P921514902197687359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + 2) * A114266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173971.P921514902197687359

namespace A173971

/-- `p?[(A040976(n+1)+2)*A114266(n+1)]` -/
def P921514902197687359.Spec : Prop :=
  ∀ n, P921514902197687359.a n = A173971 (n + 1)

end A173971

/-! ## A173971.P13424156576930079689

`p?[(lt[A000005(n+2), 3]+2)*A114266(n+1)]`
-/

namespace A173971.P13424156576930079689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2 : ℤ) * A114266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173971.P13424156576930079689

namespace A173971

/-- `p?[(lt[A000005(n+2), 3]+2)*A114266(n+1)]` -/
def P13424156576930079689.Spec : Prop :=
  ∀ n, P13424156576930079689.a n = A173971 (n + 1)

end A173971

/-! ## A173971.P12359248252275724183

`p?[record[A014963(n+2)]*A114266(n+1)]`
-/

namespace A173971.P12359248252275724183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A114266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173971.P12359248252275724183

namespace A173971

/-- `p?[record[A014963(n+2)]*A114266(n+1)]` -/
def P12359248252275724183.Spec : Prop :=
  ∀ n, P12359248252275724183.a n = A173971 (n + 1)

end A173971

/-!
# A173974: Numbers k such that k^k + 43 is prime.

The programs for A173974, there is no canonical definition to state claims against.
-/

/-! ## A173974.P8898139241342426271

`A053871(A233583(n+1))+A008588(n)`
-/

namespace A173974.P8898139241342426271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053871 (A233583 (n + 1)).toNat + A008588 n

end

end A173974.P8898139241342426271

/-!
# A173975: Numbers k such that k^k + 115 is prime.

The programs for A173975, there is no canonical definition to state claims against.
-/

/-! ## A173975.P12428019830724125089

`∑[A344616(3*n+5)]*A219281(n)`
-/

namespace A173975.P12428019830724125089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A219281 n

end

end A173975.P12428019830724125089

/-!
# A173976: Numbers m such that the concatenation of m and 999 is the lesser of twin primes, i.e., a millennium twin prime couple.

The programs for A173976, there is no canonical definition to state claims against.
-/

/-! ## A173976.P4792128194121625666

`eq[2, A001223(A038812(n+1))]`
-/

namespace A173976.P4792128194121625666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A038812 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173976.P4792128194121625666

/-!
# A173977: Integers k > 1 for which A020639(2*k-1) < A020639(2*k-3).

The programs for A173977, there is no canonical definition to state claims against.
-/

/-! ## A173977.P7982813132278857523

`A245024(n+1)/2`
-/

namespace A173977.P7982813132278857523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245024 (n + 1) : ℚ) / 2

end

end A173977.P7982813132278857523

/-! ## A173977.P1658012433356577989

`lt[Δ[A090368(n+1)], 1]+2`
-/

namespace A173977.P1658012433356577989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A173977.P1658012433356577989

/-! ## A173977.P7201059268580359001

`lt[Δ[A020639(2*n+1)], 1]+2`
-/

namespace A173977.P7201059268580359001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A173977.P7201059268580359001

/-! ## A173977.P3550408480819434541

`A001281(A245024(n+1))`
-/

namespace A173977.P3550408480819434541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A245024 (n + 1)).toNat

end

end A173977.P3550408480819434541

/-! ## A173977.P6237105840439642618

`A004524(A245024(n+1)+1)`
-/

namespace A173977.P6237105840439642618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A245024 (n + 1) + 1).toNat

end

end A173977.P6237105840439642618

/-! ## A173977.P5066829221994114627

`A004526(A245024(n+1)+1)`
-/

namespace A173977.P5066829221994114627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A245024 (n + 1) + 1).toNat

end

end A173977.P5066829221994114627

/-! ## A173977.P15897750917094200948

`(lt[A175126(n), A046667(n+2)]+3)/2`
-/

namespace A173977.P15897750917094200948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 3 : ℚ) / 2

end

end A173977.P15897750917094200948

/-! ## A173977.P5703336318540521289

`lt[Δ[A249547(A000010(2*n+1))], 3]+2`
-/

namespace A173977.P5703336318540521289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249547 (A000010 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A173977.P5703336318540521289

/-! ## A173977.P11219049297883024588

`lt[A090368(n+2), A020639(2*n+1)]+2`
-/

namespace A173977.P11219049297883024588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A173977.P11219049297883024588

/-! ## A173977.P17783809709933056886

`lt[A020639(n+3), A020639(n+1)]/2+2`
-/

namespace A173977.P17783809709933056886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℚ) / 2 + 2

end

end A173977.P17783809709933056886

/-!
# A173978: Numbers n such that the least prime factor of 2n - 3 is less than that of 2n - 1, unless 2n - 3 and 2n - 1 are (twin) primes.

The programs for A173978, there is no canonical definition to state claims against.
-/

/-! ## A173978.P5645300168641577854

`lt[2, Δ[A090303(2*(n+1))]]`
-/

namespace A173978.P5645300168641577854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090303 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A173978.P5645300168641577854

/-! ## A173978.P14402134287088731938

`record[Δ[Δ[A144551(n+2)]]]`
-/

namespace A173978.P14402134287088731938
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144551 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173978.P14402134287088731938

/-! ## A173978.P5386501503090662284

`A168185(floor(3^(n-1)))+A055048(n+1)`
-/

namespace A173978.P5386501503090662284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168185 ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat + A055048 (n + 1)

end

end A173978.P5386501503090662284

/-! ## A173978.P1895891960680166785

`A055048(n+1)+A014578(A003462(n))`
-/

namespace A173978.P1895891960680166785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055048 (n + 1) + A014578 (A003462 n).toNat

end

end A173978.P1895891960680166785

/-! ## A173978.P8505776494008591260

`A055048(n+1)+A052409(A002358(n))`
-/

namespace A173978.P8505776494008591260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055048 (n + 1) + A052409 (A002358 n).toNat

end

end A173978.P8505776494008591260

/-!
# A173979: a(n) is the smallest number m from A173977 for which A020639(2m-1) = prime(n).

The programs for A173979, there is no canonical definition to state claims against.
-/

/-! ## A173979.P16787447539260018991

`A242489(n+2)/2`
-/

namespace A173979.P16787447539260018991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242489 (n + 2) : ℚ) / 2

end

end A173979.P16787447539260018991

/-! ## A173979.P11249098792477367265

`A014682(A242489(n+2))`
-/

namespace A173979.P11249098792477367265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A242489 (n + 2)).toNat

end

end A173979.P11249098792477367265

/-! ## A173979.P5788866331746694385

`A319702(A242489(n+2)-3)`
-/

namespace A173979.P5788866331746694385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (A242489 (n + 2) - 3).toNat

end

end A173979.P5788866331746694385

/-! ## A173979.P10633417449892951300

`A323161(A242489(n+2)-5)`
-/

namespace A173979.P10633417449892951300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323161 (A242489 (n + 2) - 5).toNat

end

end A173979.P10633417449892951300

/-! ## A173979.P17570918292970965654

`A089389(A242489(n+2)-4)`
-/

namespace A173979.P17570918292970965654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089389 (A242489 (n + 2) - 4).toNat

end

end A173979.P17570918292970965654

/-!
# A173980: a(n) is the smallest term m in A173978 for which A020639(2m-3) = prime(n), n > 1.

The programs for A173980, there is no canonical definition to state claims against.
-/

/-! ## A173980.P12366030598684431135

`A135304(A242720(n+2)+1)`
-/

namespace A173980.P12366030598684431135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135304 (A242720 (n + 2) + 1).toNat

end

end A173980.P12366030598684431135

/-!
# A173982: a(n) = numerator of (Zeta(0,2,1/3) - Zeta(0,2,n+1/3)), where Zeta is the Hurwitz Zeta function.

The programs for A173982, there is no canonical definition to state claims against.
-/

/-! ## A173982.P10700968814751826995

`9*A173983(n)`
-/

namespace A173982.P10700968814751826995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A173983 n

end

end A173982.P10700968814751826995

/-!
# A173983: a(n) = numerator((Zeta(2, 1/3) - Zeta(2, n + 1/3))/9), where Zeta(n, z) is the Hurwitz Zeta function.

The programs for A173983, there is no canonical definition to state claims against.
-/

/-! ## A173983.P837588412634703290

`A173982(n)/9`
-/

namespace A173983.P837588412634703290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173982 n : ℚ) / 9

end

end A173983.P837588412634703290

/-!
# A173984: a(n) is the denominator of (Zeta(0,2,1/3) - Zeta(0,2,n+1/3)) where Zeta is the Hurwitz Zeta function.

The programs for A173984, there is no canonical definition to state claims against.
-/

/-! ## A173984.P2737997572263115486

`∏{e}[floor(10^(n-1)), A051536(#)]`
-/

namespace A173984.P2737997572263115486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A051536 (Nat.factorization (f1 n).natAbs p)

end

end A173984.P2737997572263115486

/-! ## A173984.P4023284566213181200

`A116417(∑[floor(8^(n-1))])²`
-/

namespace A173984.P4023284566213181200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(8 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116417 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A173984.P4023284566213181200

/-!
# A173985: a(n) = numerator of (Zeta(0,2,2/3) - Zeta(0,2,n+2/3)), where Zeta is the Hurwitz Zeta function.

The programs for A173985, there is no canonical definition to state claims against.
-/

/-! ## A173985.P9368900336688787193

`9*A173986(n)`
-/

namespace A173985.P9368900336688787193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A173986 n

end

end A173985.P9368900336688787193

/-!
# A173986: a(n) = numerator((Psi(1, 2/3) - Psi(1, n+2/3))/9), where Psi(1, z) is the Trigamma function.

The programs for A173986, there is no canonical definition to state claims against.
-/

/-! ## A173986.P4112996667470190121

`A173985(n)/9`
-/

namespace A173986.P4112996667470190121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173985 n : ℚ) / 9

end

end A173986.P4112996667470190121

/-!
# A173987: a(n) = denominator of ((Zeta(0,2,2/3) - Zeta(0,2,n+2/3))/9), where Zeta is the Hurwitz Zeta function.

The programs for A173987, there is no canonical definition to state claims against.
-/

/-! ## A173987.P3666982400967890335

`∏[A182134(A351862(n))²]`
-/

namespace A173987.P3666982400967890335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182134 (A351862 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A173987.P3666982400967890335

/-! ## A173987.P7728802915934120303

`A116417(A125835(n+1))²`
-/

namespace A173987.P7728802915934120303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116417 (A125835 (n + 1)).toNat ^ 2

end

end A173987.P7728802915934120303

/-!
# A173988: Triangle T(n,k) = 2^(k-1)*n*binomial(n-k,2*k-2)/(n-3*k+3) if k

The programs for A173988, there is no canonical definition to state claims against.
-/

/-! ## A173988.P12396880919250911211

`gcd(A118032(3*n+2), A215729(A009998(2*n)))`
-/

namespace A173988.P12396880919250911211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A118032 (3 * n + 2)) (A215729 (A009998 (2 * n)).toNat)

end

end A173988.P12396880919250911211

/-!
# A173989: a(n) is the 2-adic valuation of A173300(n).

The programs for A173989, the canonical program `A173989.P10255759146279605812` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173989 has offset 1).

The definition of A173989 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173989.P10255759146279605812

`log(A173300(n+1))/log(2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A173989

/-- `log(A173300(n+1))/log(2)` -/
def P10255759146279605812.Spec : Prop :=
  ∀ n, P10255759146279605812.a n = (A173989 (n + 1) : ℝ)

end A173989

/-! ## A173989.P14826702523589283820

`a(n-4)+2` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=2, a(5)=1`
-/

namespace A173989.P14826702523589283820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 2, 1] fun n a =>
  a (n - 4) + 2

end

end A173989.P14826702523589283820

namespace A173989

/-- `a(n-4)+2` -/
def P14826702523589283820.Spec : Prop :=
  ∀ n, (P14826702523589283820.a n : ℤ) = A173989 (n + 1)

end A173989

/-! ## A173989.P13280625205111764288

`n-∑[n%2]-char[4*n+5]`
-/

namespace A173989.P13280625205111764288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A173989.P13280625205111764288

namespace A173989

/-- `n-∑[n%2]-char[4*n+5]` -/
def P13280625205111764288.Spec : Prop :=
  ∀ n, P13280625205111764288.a n = A173989 (n + 1)

end A173989

/-! ## A173989.P17319288286877484883

`floor(∑[n]/(gcd(n+3, n-1)+n))`
-/

namespace A173989.P17319288286877484883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Int.gcd (n + 3 : ℤ) ((n : ℤ) - 1) + n : ℚ)⌋

end

end A173989.P17319288286877484883

namespace A173989

/-- `floor(∑[n]/(gcd(n+3, n-1)+n))` -/
def P17319288286877484883.Spec : Prop :=
  ∀ n, P17319288286877484883.a n = A173989 (n + 1)

end A173989

/-! ## A173989.P16647952153586459815

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=-1, a(6)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A173989.P16647952153586459815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 0, 1, -1, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173989.P16647952153586459815

namespace A173989

/-- `∑[floor(a(n-4))]` -/
def P16647952153586459815.Spec : Prop :=
  ∀ n, P16647952153586459815.a n = A173989 (n + 1)

end A173989

/-! ## A173989.P16938735084093972663

`floor(abs(acot(val(n+1, 2)-1)-n)/2)`
-/

namespace A173989.P16938735084093972663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|SequenceMachineLib.acot ((SequenceMachineLib.valuation (n + 1) 2 : ℤ) - 1 : ℝ) - (n : ℝ)| / 2⌋

end

end A173989.P16938735084093972663

namespace A173989

/-- `floor(abs(acot(val(n+1, 2)-1)-n)/2)` -/
def P16938735084093972663.Spec : Prop :=
  ∀ n, P16938735084093972663.a n = A173989 (n + 1)

end A173989

/-! ## A173989.P9958622382256149301

`floor(n/2-a(gcd(2, a(n-1))))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A173989.P9958622382256149301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  ⌊(n : ℚ) / 2 - (a (Int.gcd 2 (a (n - 1))) : ℚ)⌋

end

end A173989.P9958622382256149301

namespace A173989

/-- `floor(n/2-a(gcd(2, a(n-1))))` -/
def P9958622382256149301.Spec : Prop :=
  ∀ n, P9958622382256149301.a n = A173989 (n + 1)

end A173989

/-! ## A173989.P3135323361109070421

`A116921(n+1)-char[1]`
-/

namespace A173989.P3135323361109070421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116921 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A173989.P3135323361109070421

namespace A173989

/-- `A116921(n+1)-char[1]` -/
def P3135323361109070421.Spec : Prop :=
  ∀ n, P3135323361109070421.a n = A173989 (n + 1)

end A173989

/-! ## A173989.P16336016135630702459

`(n+1)%A116922(n+1)`
-/

namespace A173989.P16336016135630702459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A116922 (n + 1))

end

end A173989.P16336016135630702459

namespace A173989

/-- `(n+1)%A116922(n+1)` -/
def P16336016135630702459.Spec : Prop :=
  ∀ n, P16336016135630702459.a n = A173989 (n + 1)

end A173989

/-! ## A173989.P10473206309568208264

`A116921(A060576(n)+n)`
-/

namespace A173989.P10473206309568208264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116921 (A060576 n + (n : ℤ)).toNat

end

end A173989.P10473206309568208264

namespace A173989

/-- `A116921(A060576(n)+n)` -/
def P10473206309568208264.Spec : Prop :=
  ∀ n, P10473206309568208264.a n = A173989 (n + 1)

end A173989

/-! ## A173989.P14088189599826116226

`A116921(A105812(n)²+n)`
-/

namespace A173989.P14088189599826116226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116921 (A105812 n ^ 2 + (n : ℤ)).toNat

end

end A173989.P14088189599826116226

namespace A173989

/-- `A116921(A105812(n)²+n)` -/
def P14088189599826116226.Spec : Prop :=
  ∀ n, P14088189599826116226.a n = A173989 (n + 1)

end A173989

/-! ## A173989.P5285112086269752694

`A116921(A159075(n)+1+n)`
-/

namespace A173989.P5285112086269752694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116921 (A159075 n + 1 + (n : ℤ)).toNat

end

end A173989.P5285112086269752694

namespace A173989

/-- `A116921(A159075(n)+1+n)` -/
def P5285112086269752694.Spec : Prop :=
  ∀ n, P5285112086269752694.a n = A173989 (n + 1)

end A173989

/-! ## A173989.P12022836332049376351

`A116921(1-A063524(n)+n)`
-/

namespace A173989.P12022836332049376351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116921 (1 - A063524 n + (n : ℤ)).toNat

end

end A173989.P12022836332049376351

namespace A173989

/-- `A116921(1-A063524(n)+n)` -/
def P12022836332049376351.Spec : Prop :=
  ∀ n, P12022836332049376351.a n = A173989 (n + 1)

end A173989

/-! ## A173989.P3748320310447969356

`A116921(1-(A063524(n)-n))`
-/

namespace A173989.P3748320310447969356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116921 (1 - (A063524 n - (n : ℤ))).toNat

end

end A173989.P3748320310447969356

namespace A173989

/-- `A116921(1-(A063524(n)-n))` -/
def P3748320310447969356.Spec : Prop :=
  ∀ n, P3748320310447969356.a n = A173989 (n + 1)

end A173989

/-! ## A173989.P5946556651819425736

`A116921(n+1)*A157928(n)`
-/

namespace A173989.P5946556651819425736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116921 (n + 1) * A157928 n

end

end A173989.P5946556651819425736

namespace A173989

/-- `A116921(n+1)*A157928(n)` -/
def P5946556651819425736.Spec : Prop :=
  ∀ n, P5946556651819425736.a n = A173989 (n + 1)

end A173989

/-! ## A173989.P894384092446324192

`A116921(n+1)%A000008(n)`
-/

namespace A173989.P894384092446324192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116921 (n + 1)) (A000008 n)

end

end A173989.P894384092446324192

namespace A173989

/-- `A116921(n+1)%A000008(n)` -/
def P894384092446324192.Spec : Prop :=
  ∀ n, P894384092446324192.a n = A173989 (n + 1)

end A173989

/-! ## A173989.P8448834511245714159

`A116921(lcm(n, A105812(n))+1)`
-/

namespace A173989.P8448834511245714159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116921 (Int.lcm (n : ℤ) (A105812 n) + 1)

end

end A173989.P8448834511245714159

namespace A173989

/-- `A116921(lcm(n, A105812(n))+1)` -/
def P8448834511245714159.Spec : Prop :=
  ∀ n, P8448834511245714159.a n = A173989 (n + 1)

end A173989

/-! ## A173989.P14441063492377590943

`A116921(xor(1, A063524(n))+n)`
-/

namespace A173989.P14441063492377590943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116921 (Int.xor 1 (A063524 n) + (n : ℤ)).toNat

end

end A173989.P14441063492377590943

namespace A173989

/-- `A116921(xor(1, A063524(n))+n)` -/
def P14441063492377590943.Spec : Prop :=
  ∀ n, P14441063492377590943.a n = A173989 (n + 1)

end A173989

/-! ## A173989.P2993138530681148911

`A263997(n+1)-A138191(n+1)`
-/

namespace A173989.P2993138530681148911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263997 (n + 1) - A138191 (n + 1)

end

end A173989.P2993138530681148911

namespace A173989

/-- `A263997(n+1)-A138191(n+1)` -/
def P2993138530681148911.Spec : Prop :=
  ∀ n, P2993138530681148911.a n = A173989 (n + 1)

end A173989

/-!
# A173991: Bayley-Thomsen-Bohr periodic table(s) (1882-1895-1922) adapted by Scerri (1997).

The programs for A173991, there is no canonical definition to state claims against.
-/

/-! ## A173991.P8836355441189893641

`A172002(n+3)-2`
-/

namespace A173991.P8836355441189893641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172002 (n + 3) - 2

end

end A173991.P8836355441189893641

/-! ## A173991.P17748044700185075399

`∑[Δ[A172002(n+2)]%19]`
-/

namespace A173991.P17748044700185075399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172002 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173991.P17748044700185075399

/-! ## A173991.P15568012757319704229

`∑[Δ[A172002(n+2)]^A178334(n)]`
-/

namespace A173991.P15568012757319704229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172002 (n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) ^ (A178334 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173991.P15568012757319704229

/-! ## A173991.P7515542261573708202

`∑[A033999(n)²*Δ[A172002(n+2)]]`
-/

namespace A173991.P7515542261573708202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172002 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173991.P7515542261573708202

/-! ## A173991.P7249134237101052383

`∑[A000007(n+1)+Δ[A172002(n+2)]]`
-/

namespace A173991.P7249134237101052383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172002 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173991.P7249134237101052383

/-! ## A173991.P10173512123885303305

`∑[A000038(n+1)+Δ[A172002(n+2)]]`
-/

namespace A173991.P10173512123885303305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172002 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173991.P10173512123885303305

/-! ## A173991.P7044359292558370780

`∑[Δ[A172002(n+2)]*A178334(n+1)]`
-/

namespace A173991.P7044359292558370780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172002 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A178334 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173991.P7044359292558370780

/-! ## A173991.P31648630302888688

`∑[A000035(2*n)+Δ[A172002(n+2)]]`
-/

namespace A173991.P31648630302888688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172002 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173991.P31648630302888688

/-! ## A173991.P11228445760401635084

`∑[Δ[A172002(n+2)]*A000034(2*n)]`
-/

namespace A173991.P11228445760401635084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172002 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000034 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173991.P11228445760401635084

/-! ## A173991.P16381135734878777488

`∑[Δ[A172002(n+2)]+A008683(4*(n+1))]`
-/

namespace A173991.P16381135734878777488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172002 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + A008683 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173991.P16381135734878777488

/-!
# A173992: Sequence whose Hankel transform is the Somos (4) sequence.

The programs for A173992, there is no canonical definition to state claims against.
-/

/-! ## A173992.P17467019780129764960

`A231149(A051927(n)+1)`
-/

namespace A173992.P17467019780129764960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231149 (A051927 n + 1).toNat

end

end A173992.P17467019780129764960

/-! ## A173992.P12798440202666233100

`A257230(5*A000110(n))`
-/

namespace A173992.P12798440202666233100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257230 (5 * A000110 n).toNat

end

end A173992.P12798440202666233100

/-! ## A173992.P2659739925993116618

`A257230(5*A011971(∑[n]))`
-/

namespace A173992.P2659739925993116618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257230 (5 * A011971 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A173992.P2659739925993116618

/-! ## A173992.P267155041093988988

`A257230(5*A123081(∑[n]))`
-/

namespace A173992.P267155041093988988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257230 (5 * A123081 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A173992.P267155041093988988

/-!
# A173993: Sequence whose Hankel transform is the Somos (4) sequence.

The programs for A173993, there is no canonical definition to state claims against.
-/

/-! ## A173993.P6701788494443611365

`A187187(A126372(n))`
-/

namespace A173993.P6701788494443611365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (A126372 n).toNat

end

end A173993.P6701788494443611365

/-! ## A173993.P1980958827936904276

`A062108(∑[A192402(n)])`
-/

namespace A173993.P1980958827936904276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192402 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A173993.P1980958827936904276

/-!
# A173994: Number of connected cubic graphs of odd girth at least 7 with 2n vertices.

The programs for A173994, there is no canonical definition to state claims against.
-/

/-! ## A173994.P6930615587510808836

`A091226(2*A156170(n))`
-/

namespace A173994.P6930615587510808836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (2 * A156170 n).toNat

end

end A173994.P6930615587510808836

/-! ## A173994.P9603883098412470839

`A228359(A003056(n)+A000166(n))`
-/

namespace A173994.P9603883098412470839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228359 (A003056 n + A000166 n).toNat

end

end A173994.P9603883098412470839

/-! ## A173994.P13960432246680871156

`A148301(n)+A033183(A213230(n))`
-/

namespace A173994.P13960432246680871156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148301 n + A033183 (A213230 n).toNat

end

end A173994.P13960432246680871156

/-!
# A173997: Irregular triangle by columns derived from (1, 2, 3, ...) * (1, 2, 3, ...).

The programs for A173997, the canonical program `A173997.P16449646138910811700` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173997 has offset 1).

The definition of A173997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173997.P9266226658492377788

`(n%floor(sqrt(n+1))+1)*(C(ceil(2*sqrt(n+1)), 2)-n-(n-floor(sqrt(n))))`
-/

namespace A173997.P9266226658492377788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % Nat.sqrt (n + 1) + 1 : ℕ) : ℤ) * ((Nat.choose ⌈2 * Real.sqrt (n + 1 : ℝ)⌉.toNat 2 : ℤ) - (n : ℤ) - ((n : ℤ) - (Nat.sqrt n : ℤ)))

end

end A173997.P9266226658492377788

namespace A173997

/-- `(n%floor(sqrt(n+1))+1)*(C(ceil(2*sqrt(n+1)), 2)-n-(n-floor(sqrt(n))))` -/
def P9266226658492377788.Spec : Prop :=
  ∀ n, P9266226658492377788.a n = A173997 (n + 1)

end A173997

/-! ## A173997.P626678405464686707

`(A055087(n)+1)*A122196(n+1)`
-/

namespace A173997.P626678405464686707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055087 n + 1) * A122196 (n + 1)

end

end A173997.P626678405464686707

namespace A173997

/-- `(A055087(n)+1)*A122196(n+1)` -/
def P626678405464686707.Spec : Prop :=
  ∀ n, P626678405464686707.a n = A173997 (n + 1)

end A173997

/-! ## A173997.P16449646138910811700

`(A082375(n)+1)*A122197(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A173997

/-- `(A082375(n)+1)*A122197(n+1)` -/
def P16449646138910811700.Spec : Prop :=
  ∀ n, P16449646138910811700.a n = A173997 (n + 1)

theorem P16449646138910811700.correct : P16449646138910811700.Spec := by
  intro n
  simp only [A173997, Nat.add_sub_cancel]

end A173997

/-! ## A173997.P15481244385346759688

`A122196(n+1)*A122197(n+1)`
-/

namespace A173997.P15481244385346759688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122196 (n + 1) * A122197 (n + 1)

end

end A173997.P15481244385346759688

namespace A173997

/-- `A122196(n+1)*A122197(n+1)` -/
def P15481244385346759688.Spec : Prop :=
  ∀ n, P15481244385346759688.a n = A173997 (n + 1)

end A173997

/-! ## A173997.P68312852691138595

`A003991(A056536(n+1))`
-/

namespace A173997.P68312852691138595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A056536 (n + 1)).toNat

end

end A173997.P68312852691138595

namespace A173997

/-- `A003991(A056536(n+1))` -/
def P68312852691138595.Spec : Prop :=
  ∀ n, P68312852691138595.a n = A173997 (n + 1)

end A173997

/-! ## A173997.P7156093199390882208

`A143901(comp[n²]+n+1)`
-/

namespace A173997.P7156093199390882208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143901 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (n + 1))

end

end A173997.P7156093199390882208

namespace A173997

/-- `A143901(comp[n²]+n+1)` -/
def P7156093199390882208.Spec : Prop :=
  ∀ n, P7156093199390882208.a n = A173997 (n + 1)

end A173997

/-! ## A173997.P3172533894376859754

`A143902(comp[n²]+n+1)`
-/

namespace A173997.P3172533894376859754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143902 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (n + 1))

end

end A173997.P3172533894376859754

namespace A173997

/-- `A143902(comp[n²]+n+1)` -/
def P3172533894376859754.Spec : Prop :=
  ∀ n, P3172533894376859754.a n = A173997 (n + 1)

end A173997

/-! ## A173997.P13234000848849122939

`A199474(n+1)+A055087(n)*A082375(n)`
-/

namespace A173997.P13234000848849122939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199474 (n + 1) + A055087 n * A082375 n

end

end A173997.P13234000848849122939

namespace A173997

/-- `A199474(n+1)+A055087(n)*A082375(n)` -/
def P13234000848849122939.Spec : Prop :=
  ∀ n, P13234000848849122939.a n = A173997 (n + 1)

end A173997

/-! ## A173997.P4123912418024970929

`(A199474(n+1)-A082375(n))*A122196(n+1)`
-/

namespace A173997.P4123912418024970929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A199474 (n + 1) - A082375 n) * A122196 (n + 1)

end

end A173997.P4123912418024970929

namespace A173997

/-- `(A199474(n+1)-A082375(n))*A122196(n+1)` -/
def P4123912418024970929.Spec : Prop :=
  ∀ n, P4123912418024970929.a n = A173997 (n + 1)

end A173997

/-! ## A173997.P17850846073589039803

`(A027434(n+1)-A199474(n+1))*A122196(n+1)`
-/

namespace A173997.P17850846073589039803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027434 (n + 1) - A199474 (n + 1)) * A122196 (n + 1)

end

end A173997.P17850846073589039803

namespace A173997

/-- `(A027434(n+1)-A199474(n+1))*A122196(n+1)` -/
def P17850846073589039803.Spec : Prop :=
  ∀ n, P17850846073589039803.a n = A173997 (n + 1)

end A173997

/-!
# A173998: For n>=1, a(n) = n + 2 + Sum_{i=1..n-1} a(i)*a(n-i).

The programs for A173998, there is no canonical definition to state claims against.
-/

/-! ## A173998.P15008007105232908197

`A305420(A233736(n))+A000172(n)`
-/

namespace A173998.P15008007105232908197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305420 (A233736 n).toNat + A000172 n

end

end A173998.P15008007105232908197

/-!
# A173999: Successive positions of odd digits in decimal expansion of Pi (position 0 means 3 before comma or decimal point).

The programs for A173999, there is no canonical definition to state claims against.
-/

/-! ## A173999.P14237703777649476233

`lt[A180434(n), 5]`
-/

namespace A173999.P14237703777649476233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180434 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A173999.P14237703777649476233

/-! ## A173999.P7724569629670010207

`lt[0, A030657(n+1)]`
-/

namespace A173999.P7724569629670010207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030657 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A173999.P7724569629670010207

/-! ## A173999.P5253808571193280517

`lt[4, A019669(n+1)]`
-/

namespace A173999.P5253808571193280517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019669 (n + 1 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A173999.P5253808571193280517

/-! ## A173999.P8715922778903675265

`eq[0, A030644(n)%2]`
-/

namespace A173999.P8715922778903675265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030644 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173999.P8715922778903675265

/-! ## A173999.P2443121194930345003

`lt[0, A000796(n)%2]`
-/

namespace A173999.P2443121194930345003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000796 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A173999.P2443121194930345003

/-! ## A173999.P14992451372456552244

`lt[0, A086994(n)%2]`
-/

namespace A173999.P14992451372456552244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086994 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A173999.P14992451372456552244

/-! ## A173999.P3143349216809376587

`comp[A153030(n+1)-1]`
-/

namespace A173999.P3143349216809376587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153030 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A173999.P3143349216809376587

/-! ## A173999.P16786535506048919042

`eq[0, A054249(n+1)%2]`
-/

namespace A173999.P16786535506048919042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054249 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173999.P16786535506048919042

/-! ## A173999.P934397715839629605

`eq[1, A065253(n+1)%2]`
-/

namespace A173999.P934397715839629605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065253 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173999.P934397715839629605

/-! ## A173999.P9790529358987301606

`eq[2, A000034(A086994(n))]`
-/

namespace A173999.P9790529358987301606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A086994 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173999.P9790529358987301606

