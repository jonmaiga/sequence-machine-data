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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
# A161600: Nonprime numbers such that TITO(n) = n, where TITO(n) = A161594(n).

The programs for A161600, there is no canonical definition to state claims against.
-/

/-! ## A161600.P12291827941778552248

`filter[A161597(n+1), A005171(#)]`
-/

namespace A161600.P12291827941778552248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A161600.P12291827941778552248

/-! ## A161600.P7558475196959477302

`∩[A018252(n+1), A161597(n+1)]`
-/

namespace A161600.P7558475196959477302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161600.P7558475196959477302

/-! ## A161600.P6302576798742585812

`∩[A141468(n+1), A161597(n+1)]`
-/

namespace A161600.P6302576798742585812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161600.P6302576798742585812

/-! ## A161600.P7053072609389402933

`record[A288469(A161597(n+1))]`
-/

namespace A161600.P7053072609389402933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288469 (A161597 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161600.P7053072609389402933

/-! ## A161600.P16933108952094729028

`eq[A014684(n+1), A161594(n+1)]+1`
-/

namespace A161600.P16933108952094729028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161594 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A161600.P16933108952094729028

/-! ## A161600.P11213537499415030103

`eq[n, A161594(A028310(n))+A055672(n)]`
-/

namespace A161600.P11213537499415030103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161594 (A028310 n).toNat + A055672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161600.P11213537499415030103

/-!
# A161601: Positive integers k that are less than the value of the reversal of k's representation in binary.

The programs for A161601, the canonical program `A161601.P12806282394382421226` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161601 has offset 1).

The definition of A161601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5563 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161601.P15569433067514750594

`filter[A340718(n), A178226(#)]`
-/

namespace A161601.P15569433067514750594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A161601.P15569433067514750594

namespace A161601

/-- `filter[A340718(n), A178226(#)]` -/
def P15569433067514750594.Spec : Prop :=
  ∀ n, P15569433067514750594.a n = A161601 (n + 1)

end A161601

/-! ## A161601.P9751709369645120676

`∩[A164861(n+1), A340718(n)]`
-/

namespace A161601.P9751709369645120676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340718 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161601.P9751709369645120676

namespace A161601

/-- `∩[A164861(n+1), A340718(n)]` -/
def P9751709369645120676.Spec : Prop :=
  ∀ n, (P9751709369645120676.a n : ℤ) = A161601 (n + 1)

end A161601

/-! ## A161601.P12806282394382421226

`2*lt[n+1, A145342(n+1)]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A161601

/-- `2*lt[n+1, A145342(n+1)]+1` -/
def P12806282394382421226.Spec : Prop :=
  ∀ n, (P12806282394382421226.a n : ℤ) = A161601 (n + 1)

theorem P12806282394382421226.correct : P12806282394382421226.Spec := by
  intro n
  simp only [A161601, Nat.add_sub_cancel]

end A161601

/-! ## A161601.P351253897848623552

`2*lt[n+1, A059893(n+1)]+3`
-/

namespace A161601.P351253897848623552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 3

end

end A161601.P351253897848623552

namespace A161601

/-- `2*lt[n+1, A059893(n+1)]+3` -/
def P351253897848623552.Spec : Prop :=
  ∀ n, (P351253897848623552.a n : ℤ) = A161601 (n + 1)

end A161601

/-! ## A161601.P17165072501929528011

`lt[A055945(n), 0]`
-/

namespace A161601.P17165072501929528011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A161601.P17165072501929528011

namespace A161601

/-- `lt[A055945(n), 0]` -/
def P17165072501929528011.Spec : Prop :=
  ∀ n, (P17165072501929528011.a n : ℤ) = A161601 (n + 1)

end A161601

/-! ## A161601.P14453379920678420973

`lt[n, xor(n, A175919(n))]`
-/

namespace A161601.P14453379920678420973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A175919 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161601.P14453379920678420973

namespace A161601

/-- `lt[n, xor(n, A175919(n))]` -/
def P14453379920678420973.Spec : Prop :=
  ∀ n, (P14453379920678420973.a n : ℤ) = A161601 (n + 1)

end A161601

/-! ## A161601.P552122774937931801

`∩[A057891(n+1), A340718(n)]`
-/

namespace A161601.P552122774937931801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340718 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161601.P552122774937931801

namespace A161601

/-- `∩[A057891(n+1), A340718(n)]` -/
def P552122774937931801.Spec : Prop :=
  ∀ n, (P552122774937931801.a n : ℤ) = A161601 (n + 1)

end A161601

/-! ## A161601.P12400113520896589836

`∩[A154809(n+1), A340718(n)]`
-/

namespace A161601.P12400113520896589836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340718 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161601.P12400113520896589836

namespace A161601

/-- `∩[A154809(n+1), A340718(n)]` -/
def P12400113520896589836.Spec : Prop :=
  ∀ n, (P12400113520896589836.a n : ℤ) = A161601 (n + 1)

end A161601

/-! ## A161601.P5666853874445014346

`lt[n, A030101(n)]`
-/

namespace A161601.P5666853874445014346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161601.P5666853874445014346

namespace A161601

/-- `lt[n, A030101(n)]` -/
def P5666853874445014346.Spec : Prop :=
  ∀ n, (P5666853874445014346.a n : ℤ) = A161601 (n + 1)

end A161601

/-! ## A161601.P16048318328702758357

`lt[2*n, A055944(n)]`
-/

namespace A161601.P16048318328702758357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161601.P16048318328702758357

namespace A161601

/-- `lt[2*n, A055944(n)]` -/
def P16048318328702758357.Spec : Prop :=
  ∀ n, (P16048318328702758357.a n : ℤ) = A161601 (n + 1)

end A161601

/-! ## A161601.P4860342742169164373

`lt[A022998(n), A056539(n)]`
-/

namespace A161601.P4860342742169164373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A161601.P4860342742169164373

namespace A161601

/-- `lt[A022998(n), A056539(n)]` -/
def P4860342742169164373.Spec : Prop :=
  ∀ n, (P4860342742169164373.a n : ℤ) = A161601 (n + 1)

end A161601

/-! ## A161601.P6321904175000611888

`lt[A007088(n), A305989(n)]`
-/

namespace A161601.P6321904175000611888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A161601.P6321904175000611888

namespace A161601

/-- `lt[A007088(n), A305989(n)]` -/
def P6321904175000611888.Spec : Prop :=
  ∀ n, (P6321904175000611888.a n : ℤ) = A161601 (n + 1)

end A161601

/-! ## A161601.P2894351288582121973

`A022998(lt[n, A055944(n)-n])`
-/

namespace A161601.P2894351288582121973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A161601.P2894351288582121973

namespace A161601

/-- `A022998(lt[n, A055944(n)-n])` -/
def P2894351288582121973.Spec : Prop :=
  ∀ n, P2894351288582121973.a n = A161601 (n + 1)

end A161601

/-! ## A161601.P7265405789048700019

`A026741(lt[n, A055944(n)-n])`
-/

namespace A161601.P7265405789048700019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A161601.P7265405789048700019

namespace A161601

/-- `A026741(lt[n, A055944(n)-n])` -/
def P7265405789048700019.Spec : Prop :=
  ∀ n, P7265405789048700019.a n = A161601 (n + 1)

end A161601

/-! ## A161601.P3080393954868181444

`filter[A342123(2*n+1), A000035(#)]`
-/

namespace A161601.P3080393954868181444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342123 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A161601.P3080393954868181444

namespace A161601

/-- `filter[A342123(2*n+1), A000035(#)]` -/
def P3080393954868181444.Spec : Prop :=
  ∀ n, P3080393954868181444.a n = A161601 (n + 1)

end A161601

/-! ## A161601.P11863206510844745514

`lt[A065033(n), A030109(n+1)]+1`
-/

namespace A161601.P11863206510844745514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A161601.P11863206510844745514

namespace A161601

/-- `lt[A065033(n), A030109(n+1)]+1` -/
def P11863206510844745514.Spec : Prop :=
  ∀ n, (P11863206510844745514.a n : ℤ) = A161601 (n + 1)

end A161601

/-! ## A161601.P8314312574256021623

`lt[n+2, A006257(A145342(n+1))]`
-/

namespace A161601.P8314312574256021623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A145342 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161601.P8314312574256021623

namespace A161601

/-- `lt[n+2, A006257(A145342(n+1))]` -/
def P8314312574256021623.Spec : Prop :=
  ∀ n, (P8314312574256021623.a n : ℤ) = A161601 (n + 1)

end A161601

/-! ## A161601.P3844953995481055438

`comp[A325402(n)]`
-/

namespace A161601.P3844953995481055438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325402 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A161601.P3844953995481055438

namespace A161601

/-- `comp[A325402(n)]` -/
def P3844953995481055438.Spec : Prop :=
  ∀ n, (P3844953995481055438.a n : ℤ) = A161601 (n + 1)

end A161601

/-! ## A161601.P13471618013185941644

`lt[n, A325401(2*n)]`
-/

namespace A161601.P13471618013185941644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161601.P13471618013185941644

namespace A161601

/-- `lt[n, A325401(2*n)]` -/
def P13471618013185941644.Spec : Prop :=
  ∀ n, (P13471618013185941644.a n : ℤ) = A161601 (n + 1)

end A161601

/-! ## A161601.P2991249041429421773

`lt[n, A006257(A030109(2*n+1))]`
-/

namespace A161601.P2991249041429421773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A030109 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161601.P2991249041429421773

namespace A161601

/-- `lt[n, A006257(A030109(2*n+1))]` -/
def P2991249041429421773.Spec : Prop :=
  ∀ n, (P2991249041429421773.a n : ℤ) = A161601 (n + 1)

end A161601

/-!
# A161602: Positive integers k that are greater than the value of the reversal of k's binary representation.

The programs for A161602, the canonical program `A161602.P6450540273462134984` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161602 has offset 1).

The definition of A161602 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161602.P14047547012717633696

`comp[A340718(n)]`
-/

namespace A161602.P14047547012717633696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340718 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A161602.P14047547012717633696

namespace A161602

/-- `comp[A340718(n)]` -/
def P14047547012717633696.Spec : Prop :=
  ∀ n, (P14047547012717633696.a n : ℤ) = A161602 (n + 1)

end A161602

/-! ## A161602.P6450540273462134984

`lt[0, A055945(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A161602

/-- `lt[0, A055945(n)]` -/
def P6450540273462134984.Spec : Prop :=
  ∀ n, (P6450540273462134984.a n : ℤ) = A161602 (n + 1)

theorem P6450540273462134984.correct : P6450540273462134984.Spec := by
  intro n
  simp only [A161602, Nat.add_sub_cancel]

end A161602

/-! ## A161602.P11024717621275188283

`lt[A325401(n), n]`
-/

namespace A161602.P11024717621275188283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A161602.P11024717621275188283

namespace A161602

/-- `lt[A325401(n), n]` -/
def P11024717621275188283.Spec : Prop :=
  ∀ n, (P11024717621275188283.a n : ℤ) = A161602 (n + 1)

end A161602

/-! ## A161602.P16779457441054253730

`lt[xor(n, A175919(n)), n]`
-/

namespace A161602.P16779457441054253730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A175919 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A161602.P16779457441054253730

namespace A161602

/-- `lt[xor(n, A175919(n)), n]` -/
def P16779457441054253730.Spec : Prop :=
  ∀ n, (P16779457441054253730.a n : ℤ) = A161602 (n + 1)

end A161602

/-! ## A161602.P10857641003619119675

`lt[A264619(n)%(2*n+1), n]`
-/

namespace A161602.P10857641003619119675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264619 n) (2 * n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A161602.P10857641003619119675

namespace A161602

/-- `lt[A264619(n)%(2*n+1), n]` -/
def P10857641003619119675.Spec : Prop :=
  ∀ n, (P10857641003619119675.a n : ℤ) = A161602 (n + 1)

end A161602

/-! ## A161602.P6459533272517118527

`lt[lcm(A057889(n)+1, n%2), n]`
-/

namespace A161602.P6459533272517118527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057889 n + 1) ((n % 2 : ℕ) : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A161602.P6459533272517118527

namespace A161602

/-- `lt[lcm(A057889(n)+1, n%2), n]` -/
def P6459533272517118527.Spec : Prop :=
  ∀ n, (P6459533272517118527.a n : ℤ) = A161602 (n + 1)

end A161602

/-! ## A161602.P12041199929310135148

`lt[A006257(A145341(n+1)), 2*n+1]`
-/

namespace A161602.P12041199929310135148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A145341 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A161602.P12041199929310135148

namespace A161602

/-- `lt[A006257(A145341(n+1)), 2*n+1]` -/
def P12041199929310135148.Spec : Prop :=
  ∀ n, (P12041199929310135148.a n : ℤ) = A161602 (n + 1)

end A161602

/-! ## A161602.P12791802288055834228

`eq[2, A020639(A008458(n-A325401(n)))]`
-/

namespace A161602.P12791802288055834228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008458 ((n : ℤ) - A325401 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161602.P12791802288055834228

namespace A161602

/-- `eq[2, A020639(A008458(n-A325401(n)))]` -/
def P12791802288055834228.Spec : Prop :=
  ∀ n, (P12791802288055834228.a n : ℤ) = A161602 (n + 1)

end A161602

/-! ## A161602.P14499757395864084813

`lt[A030101(n), n]`
-/

namespace A161602.P14499757395864084813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A161602.P14499757395864084813

namespace A161602

/-- `lt[A030101(n), n]` -/
def P14499757395864084813.Spec : Prop :=
  ∀ n, (P14499757395864084813.a n : ℤ) = A161602 (n + 1)

end A161602

/-! ## A161602.P594893395726460119

`lt[A055944(n), 2*n]`
-/

namespace A161602.P594893395726460119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A161602.P594893395726460119

namespace A161602

/-- `lt[A055944(n), 2*n]` -/
def P594893395726460119.Spec : Prop :=
  ∀ n, (P594893395726460119.a n : ℤ) = A161602 (n + 1)

end A161602

/-! ## A161602.P9959462137011606486

`lt[A305989(n), A007088(n)]`
-/

namespace A161602.P9959462137011606486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A161602.P9959462137011606486

namespace A161602

/-- `lt[A305989(n), A007088(n)]` -/
def P9959462137011606486.Spec : Prop :=
  ∀ n, (P9959462137011606486.a n : ℤ) = A161602 (n + 1)

end A161602

/-! ## A161602.P5985234601828781298

`lt[A056539(n), A022998(n)]`
-/

namespace A161602.P5985234601828781298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A161602.P5985234601828781298

namespace A161602

/-- `lt[A056539(n), A022998(n)]` -/
def P5985234601828781298.Spec : Prop :=
  ∀ n, (P5985234601828781298.a n : ℤ) = A161602 (n + 1)

end A161602

/-! ## A161602.P11249968547008514732

`lt[(A006257(A145342(n+1)-1)+1-n)%2, 1]`
-/

namespace A161602.P11249968547008514732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006257 (A145342 (n + 1) - 1).toNat + 1 - (n : ℤ)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A161602.P11249968547008514732

namespace A161602

/-- `lt[(A006257(A145342(n+1)-1)+1-n)%2, 1]` -/
def P11249968547008514732.Spec : Prop :=
  ∀ n, (P11249968547008514732.a n : ℤ) = A161602 (n + 1)

end A161602

/-! ## A161602.P6624750013556323598

`lt[A340718(A340717(n)), n]`
-/

namespace A161602.P6624750013556323598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340718 (A340717 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A161602.P6624750013556323598

namespace A161602

/-- `lt[A340718(A340717(n)), n]` -/
def P6624750013556323598.Spec : Prop :=
  ∀ n, (P6624750013556323598.a n : ℤ) = A161602 (n + 1)

end A161602

/-! ## A161602.P11293315031605090378

`A065033(lt[A030109(n+1), A002265(n+1)])`
-/

namespace A161602.P11293315031605090378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A161602.P11293315031605090378

namespace A161602

/-- `A065033(lt[A030109(n+1), A002265(n+1)])` -/
def P11293315031605090378.Spec : Prop :=
  ∀ n, P11293315031605090378.a n = A161602 (n + 1)

end A161602

/-! ## A161602.P1427530153349458375

`lt[A035327(n), A035327(A145341(n+1))]`
-/

namespace A161602.P1427530153349458375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A145341 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A161602.P1427530153349458375

namespace A161602

/-- `lt[A035327(n), A035327(A145341(n+1))]` -/
def P1427530153349458375.Spec : Prop :=
  ∀ n, (P1427530153349458375.a n : ℤ) = A161602 (n + 1)

end A161602

/-!
# A161603: Odd terms of sequence A161602.

The programs for A161603, the canonical program `A161603.P6263326332748998363` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161603 has offset 1).

The definition of A161603 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4155 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161603.P6263326332748998363

`2*lt[A145342(n+1), n+1]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A161603

/-- `2*lt[A145342(n+1), n+1]+1` -/
def P6263326332748998363.Spec : Prop :=
  ∀ n, (P6263326332748998363.a n : ℤ) = A161603 (n + 1)

theorem P6263326332748998363.correct : P6263326332748998363.Spec := by
  intro n
  simp only [A161603, Nat.add_sub_cancel]

end A161603

/-! ## A161603.P10753699896087427308

`lt[A055945(A057889(n)), 0]`
-/

namespace A161603.P10753699896087427308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 (A057889 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A161603.P10753699896087427308

namespace A161603

/-- `lt[A055945(A057889(n)), 0]` -/
def P10753699896087427308.Spec : Prop :=
  ∀ n, (P10753699896087427308.a n : ℤ) = A161603 (n + 1)

end A161603

/-! ## A161603.P13325284565145140156

`∩[2*n+1, A161602(n+1)]`
-/

namespace A161603.P13325284565145140156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161603.P13325284565145140156

namespace A161603

/-- `∩[2*n+1, A161602(n+1)]` -/
def P13325284565145140156.Spec : Prop :=
  ∀ n, (P13325284565145140156.a n : ℤ) = A161603 (n + 1)

end A161603

/-! ## A161603.P9243101004895021486

`∩[A161602(n+2), n+1+n]`
-/

namespace A161603.P9243101004895021486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161602 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A161603.P9243101004895021486

namespace A161603

/-- `∩[A161602(n+2), n+1+n]` -/
def P9243101004895021486.Spec : Prop :=
  ∀ n, (P9243101004895021486.a n : ℤ) = A161603 (n + 1)

end A161603

/-! ## A161603.P3787101368215428111

`filter[A161602(n+1), A000035(#)]`
-/

namespace A161603.P3787101368215428111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A161603.P3787101368215428111

namespace A161603

/-- `filter[A161602(n+1), A000035(#)]` -/
def P3787101368215428111.Spec : Prop :=
  ∀ n, P3787101368215428111.a n = A161603 (n + 1)

end A161603

/-! ## A161603.P11253466004781956975

`filter[A161602(n+1), A266070(#)]`
-/

namespace A161603.P11253466004781956975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A161603.P11253466004781956975

namespace A161603

/-- `filter[A161602(n+1), A266070(#)]` -/
def P11253466004781956975.Spec : Prop :=
  ∀ n, P11253466004781956975.a n = A161603 (n + 1)

end A161603

/-! ## A161603.P2617967605114922273

`filter[A161602(n+2), A266611(#)]`
-/

namespace A161603.P2617967605114922273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161602 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A161603.P2617967605114922273

namespace A161603

/-- `filter[A161602(n+2), A266611(#)]` -/
def P2617967605114922273.Spec : Prop :=
  ∀ n, P2617967605114922273.a n = A161603 (n + 1)

end A161603

/-! ## A161603.P5359257481499152814

`filter[A161602(n+2), A266719(#)]`
-/

namespace A161603.P5359257481499152814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161602 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A161603.P5359257481499152814

namespace A161603

/-- `filter[A161602(n+2), A266719(#)]` -/
def P5359257481499152814.Spec : Prop :=
  ∀ n, P5359257481499152814.a n = A161603 (n + 1)

end A161603

/-! ## A161603.P11187531523866515543

`filter[A161602(n+2), A296066(#)]`
-/

namespace A161603.P11187531523866515543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161602 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A161603.P11187531523866515543

namespace A161603

/-- `filter[A161602(n+2), A296066(#)]` -/
def P11187531523866515543.Spec : Prop :=
  ∀ n, P11187531523866515543.a n = A161603 (n + 1)

end A161603

/-! ## A161603.P8891046352232621741

`lt[A057889(2*n), lcm(2, n)]`
-/

namespace A161603.P8891046352232621741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A161603.P8891046352232621741

namespace A161603

/-- `lt[A057889(2*n), lcm(2, n)]` -/
def P8891046352232621741.Spec : Prop :=
  ∀ n, (P8891046352232621741.a n : ℤ) = A161603 (n + 1)

end A161603

/-! ## A161603.P13346267311958660814

`lt[A030101(or(1, n)+n), n]`
-/

namespace A161603.P13346267311958660814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Nat.lor 1 n + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A161603.P13346267311958660814

namespace A161603

/-- `lt[A030101(or(1, n)+n), n]` -/
def P13346267311958660814.Spec : Prop :=
  ∀ n, (P13346267311958660814.a n : ℤ) = A161603 (n + 1)

end A161603

/-! ## A161603.P15354991379740326668

`lt[A030101(2*n+(n+1)%2), n]`
-/

namespace A161603.P15354991379740326668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (2 * n + (n + 1) % 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A161603.P15354991379740326668

namespace A161603

/-- `lt[A030101(2*n+(n+1)%2), n]` -/
def P15354991379740326668.Spec : Prop :=
  ∀ n, (P15354991379740326668.a n : ℤ) = A161603 (n + 1)

end A161603

/-! ## A161603.P7511541562040716983

`lt[A057889(n*gcd(2, n)²), n]`
-/

namespace A161603.P7511541562040716983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (n * Nat.gcd 2 n ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A161603.P7511541562040716983

namespace A161603

/-- `lt[A057889(n*gcd(2, n)²), n]` -/
def P7511541562040716983.Spec : Prop :=
  ∀ n, (P7511541562040716983.a n : ℤ) = A161603 (n + 1)

end A161603

/-! ## A161603.P9160018957892641150

`lt[A006370(A055944(n)), n]`
-/

namespace A161603.P9160018957892641150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A055944 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A161603.P9160018957892641150

namespace A161603

/-- `lt[A006370(A055944(n)), n]` -/
def P9160018957892641150.Spec : Prop :=
  ∀ n, (P9160018957892641150.a n : ℤ) = A161603 (n + 1)

end A161603

/-!
# A161604: A positive integer k is included if the value of (the reversal of k's representation in binary) divides k.

The programs for A161604, there is no canonical definition to state claims against.
-/

/-! ## A161604.P3801299999329161252

`A272670(n+1)/2`
-/

namespace A161604.P3801299999329161252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272670 (n + 1) : ℚ) / 2

end

end A161604.P3801299999329161252

/-! ## A161604.P17933307297421401023

`A057890(n+2)`
-/

namespace A161604.P17933307297421401023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057890 (n + 2)

end

end A161604.P17933307297421401023

/-! ## A161604.P5178003335530616166

`record[gcd(n+1, A057889(n+1))]`
-/

namespace A161604.P5178003335530616166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A057889 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161604.P5178003335530616166

/-! ## A161604.P13709567262970288295

`A057889(record[(n+1)/(A057889(n+1)-n)])`
-/

namespace A161604.P13709567262970288295
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A057889 (n + 1) - (n : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A161604.P13709567262970288295

/-! ## A161604.P2104417711000223075

`lt[A280508(n)², n]`
-/

namespace A161604.P2104417711000223075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280508 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A161604.P2104417711000223075

/-! ## A161604.P17639675986718170056

`lt[A326302(n), 2*n]`
-/

namespace A161604.P17639675986718170056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326302 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A161604.P17639675986718170056

/-! ## A161604.P11338782817978626150

`lt[A280508(n+1), 1]+1`
-/

namespace A161604.P11338782817978626150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280508 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A161604.P11338782817978626150

/-! ## A161604.P15091944598675217522

`eq[n, A057889(A028310(n))]`
-/

namespace A161604.P15091944598675217522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161604.P15091944598675217522

/-! ## A161604.P14303798306263254742

`eq[A000007(n), A280508(n)]`
-/

namespace A161604.P14303798306263254742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280508 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161604.P14303798306263254742

/-! ## A161604.P18072265239380164005

`eq[A000038(n), A280508(n)]`
-/

namespace A161604.P18072265239380164005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280508 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161604.P18072265239380164005

/-! ## A161604.P14825061005010025718

`eq[A028310(n), A326302(n)]`
-/

namespace A161604.P14825061005010025718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326302 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161604.P14825061005010025718

/-! ## A161604.P14373545074813515940

`eq[A028310(n), A366389(n)]`
-/

namespace A161604.P14373545074813515940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366389 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161604.P14373545074813515940

/-! ## A161604.P15062415222429123377

`record[A028310(and(n, A057889(n)))]`
-/

namespace A161604.P15062415222429123377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.land (n : ℤ) (A057889 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161604.P15062415222429123377

/-! ## A161604.P17585927729282343683

`eq[A057889(n)², A274922(n)²]`
-/

namespace A161604.P17585927729282343683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161604.P17585927729282343683

/-! ## A161604.P6056317968069545258

`eq[A000265(n+1), A030101(n+1)]+1`
-/

namespace A161604.P6056317968069545258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A161604.P6056317968069545258

/-! ## A161604.P9411176474973902911

`eq[A000120(n+1), A274036(n+1)]+1`
-/

namespace A161604.P9411176474973902911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274036 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A161604.P9411176474973902911

/-! ## A161604.P15505456483803945559

`eq[A000265(A028310(n)), A030101(n)]`
-/

namespace A161604.P15505456483803945559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161604.P15505456483803945559

/-! ## A161604.P364650107171752349

`eq[1, A193306(A055944(n)-n)]`
-/

namespace A161604.P364650107171752349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193306 (A055944 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161604.P364650107171752349

/-! ## A161604.P16755759114379876077

`eq[1, A193307(A055944(n)-n)]`
-/

namespace A161604.P16755759114379876077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193307 (A055944 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161604.P16755759114379876077

/-! ## A161604.P13561538584548277449

`record[A280505(n+1)]`
-/

namespace A161604.P13561538584548277449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161604.P13561538584548277449

/-!
# A161605: E.g.f. satisfies: A(x) = exp(x*exp(x*A(x)^3)).

The programs for A161605, there is no canonical definition to state claims against.
-/

/-! ## A161605.P4905127812212627087

`A304110(A366232(n)-A278988(n))`
-/

namespace A161605.P4905127812212627087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304110 (A366232 n - A278988 n).toNat

end

end A161605.P4905127812212627087

/-! ## A161605.P14392113974197905392

`A304110(A366232(n)-A278989(n))`
-/

namespace A161605.P14392113974197905392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304110 (A366232 n - A278989 n).toNat

end

end A161605.P14392113974197905392

/-!
# A161606: a(n) = gcd(A008472(n), A001222(n)).

The programs for A161606, the canonical program `A161606.P5398291330636313853` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161606 has offset 1).

The definition of A161606 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161606.P5398291330636313853

`gcd(A008472(n+1), A001222(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A161606

/-- `gcd(A008472(n+1), A001222(n+1))` -/
def P5398291330636313853.Spec : Prop :=
  ∀ n, (P5398291330636313853.a n : ℤ) = A161606 (n + 1)

theorem P5398291330636313853.correct : P5398291330636313853.Spec := by
  intro n
  simp only [A161606, Nat.add_sub_cancel]

end A161606

/-! ## A161606.P2579847271411916959

`gcd(Δ[A022559(n)], ∑{p}[n+1, #])`
-/

namespace A161606.P2579847271411916959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) ((∑ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ)

end

end A161606.P2579847271411916959

namespace A161606

/-- `gcd(Δ[A022559(n)], ∑{p}[n+1, #])` -/
def P2579847271411916959.Spec : Prop :=
  ∀ n, (P2579847271411916959.a n : ℤ) = A161606 (n + 1)

end A161606

/-! ## A161606.P3017903387089448918

`gcd(Δ[A022559(n)], A008472(n+1))`
-/

namespace A161606.P3017903387089448918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A008472 (n + 1))

end

end A161606.P3017903387089448918

namespace A161606

/-- `gcd(Δ[A022559(n)], A008472(n+1))` -/
def P3017903387089448918.Spec : Prop :=
  ∀ n, (P3017903387089448918.a n : ℤ) = A161606 (n + 1)

end A161606

/-! ## A161606.P1768334628887226888

`gcd(Δ[A024924(n)], A008474(n+1))`
-/

namespace A161606.P1768334628887226888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024924 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A008474 (n + 1))

end

end A161606.P1768334628887226888

namespace A161606

/-- `gcd(Δ[A024924(n)], A008474(n+1))` -/
def P1768334628887226888.Spec : Prop :=
  ∀ n, (P1768334628887226888.a n : ℤ) = A161606 (n + 1)

end A161606

/-! ## A161606.P18258205701077569976

`gcd(A105221(n+1), A252736(A103517(n)))`
-/

namespace A161606.P18258205701077569976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105221 (n + 1)) (A252736 (A103517 n).toNat)

end

end A161606.P18258205701077569976

namespace A161606

/-- `gcd(A105221(n+1), A252736(A103517(n)))` -/
def P18258205701077569976.Spec : Prop :=
  ∀ n, (P18258205701077569976.a n : ℤ) = A161606 (n + 1)

end A161606

/-!
# A161607: Positive integers k that are coprime to the value of the reversal of k's representation in binary.

The programs for A161607, the canonical program `A161607.P5708958967834932712` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161607 has offset 1).

The definition of A161607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8899 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161607.P5633649755569833652

`eq[1, gcd(2*n, A264618(n))]`
-/

namespace A161607.P5633649755569833652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A264618 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161607.P5633649755569833652

namespace A161607

/-- `eq[1, gcd(2*n, A264618(n))]` -/
def P5633649755569833652.Spec : Prop :=
  ∀ n, (P5633649755569833652.a n : ℤ) = A161607 (n + 1)

end A161607

/-! ## A161607.P5708958967834932712

`eq[1, gcd(n, A055945(n))]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A161607

/-- `eq[1, gcd(n, A055945(n))]` -/
def P5708958967834932712.Spec : Prop :=
  ∀ n, (P5708958967834932712.a n : ℤ) = A161607 (n + 1)

theorem P5708958967834932712.correct : P5708958967834932712.Spec := by
  intro n
  simp only [A161607, Nat.add_sub_cancel]

end A161607

/-! ## A161607.P8462132607380395474

`eq[1, gcd(n², A055944(n))]`
-/

namespace A161607.P8462132607380395474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 : ℤ) (A055944 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161607.P8462132607380395474

namespace A161607

/-- `eq[1, gcd(n², A055944(n))]` -/
def P8462132607380395474.Spec : Prop :=
  ∀ n, (P8462132607380395474.a n : ℤ) = A161607 (n + 1)

end A161607

/-! ## A161607.P17973961323629773901

`eq[1, A161825(n+1)]+1`
-/

namespace A161607.P17973961323629773901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161825 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A161607.P17973961323629773901

namespace A161607

/-- `eq[1, A161825(n+1)]+1` -/
def P17973961323629773901.Spec : Prop :=
  ∀ n, (P17973961323629773901.a n : ℤ) = A161607 (n + 1)

end A161607

/-! ## A161607.P15212433975524979455

`A222257(eq[1, A161825(n+1)])`
-/

namespace A161607.P15212433975524979455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A161607.P15212433975524979455

namespace A161607

/-- `A222257(eq[1, A161825(n+1)])` -/
def P15212433975524979455.Spec : Prop :=
  ∀ n, P15212433975524979455.a n = A161607 (n + 1)

end A161607

/-! ## A161607.P11834751501001101464

`record[A000027(n+1)/A161825(n+1)]`
-/

namespace A161607.P11834751501001101464
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A161825 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161607.P11834751501001101464

namespace A161607

/-- `record[A000027(n+1)/A161825(n+1)]` -/
def P11834751501001101464.Spec : Prop :=
  ∀ n, P11834751501001101464.a n = (A161607 (n + 1) : ℚ)

end A161607

/-! ## A161607.P8226749346735357864

`record[(n+1)/A161825(A000265(n+1))]`
-/

namespace A161607.P8226749346735357864
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A161825 (A000265 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161607.P8226749346735357864

namespace A161607

/-- `record[(n+1)/A161825(A000265(n+1))]` -/
def P8226749346735357864.Spec : Prop :=
  ∀ n, P8226749346735357864.a n = (A161607 (n + 1) : ℚ)

end A161607

/-! ## A161607.P1356342769529356719

`eq[1, gcd(4*n, A048701(n))]`
-/

namespace A161607.P1356342769529356719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (4 * n : ℤ) (A048701 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161607.P1356342769529356719

namespace A161607

/-- `eq[1, gcd(4*n, A048701(n))]` -/
def P1356342769529356719.Spec : Prop :=
  ∀ n, (P1356342769529356719.a n : ℤ) = A161607 (n + 1)

end A161607

/-! ## A161607.P7669238013083901186

`eq[1, A161825(n*a(n%2))]` with `a(0)=2, a(1)=1`
-/

namespace A161607.P7669238013083901186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A161825 ((n : ℤ) * f2 (n % 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161607.P7669238013083901186

namespace A161607

/-- `eq[1, A161825(n*a(n%2))]` -/
def P7669238013083901186.Spec : Prop :=
  ∀ n, (P7669238013083901186.a n : ℤ) = A161607 (n + 1)

end A161607

/-!
# A161610: Primes which are the sum of 3 distinct positive 5th powers.

The programs for A161610, there is no canonical definition to state claims against.
-/

/-! ## A161610.P5892803022401051521

`∩[A085319(n+1), A194768(n+1)]`
-/

namespace A161610.P5892803022401051521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161610.P5892803022401051521

/-!
# A161611: Primes that are a sum of 7 consecutive Fibonacci numbers.

The programs for A161611, there is no canonical definition to state claims against.
-/

/-! ## A161611.P15681033554337604161

`p?[round(ϕ*a(n-1))]` with `a(0)=33`
-/

namespace A161611.P15681033554337604161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [33] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161611.P15681033554337604161

/-!
# A161612: Primes that are the sum of 15 consecutive primes.

The programs for A161612, the canonical program `A161612.P9446970162319357204` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161612 has offset 1).

The definition of A161612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1075 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161612.P1222947138469337574

`p?[A007504(n+15)-A007504(n)]`
-/

namespace A161612.P1222947138469337574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 15) - A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161612.P1222947138469337574

namespace A161612

/-- `p?[A007504(n+15)-A007504(n)]` -/
def P1222947138469337574.Spec : Prop :=
  ∀ n, P1222947138469337574.a n = A161612 (n + 1)

end A161612

/-! ## A161612.P6856176296037154880

`p?[A127338(n+5)+A034963(n+1)]`
-/

namespace A161612.P6856176296037154880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127338 (n + 5) + A034963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161612.P6856176296037154880

namespace A161612

/-- `p?[A127338(n+5)+A034963(n+1)]` -/
def P6856176296037154880.Spec : Prop :=
  ∀ n, P6856176296037154880.a n = A161612 (n + 1)

end A161612

/-! ## A161612.P2140870412882195202

`p?[A127337(n+6)+A034964(n+1)]`
-/

namespace A161612.P2140870412882195202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127337 (n + 6) + A034964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161612.P2140870412882195202

namespace A161612

/-- `p?[A127337(n+6)+A034964(n+1)]` -/
def P2140870412882195202.Spec : Prop :=
  ∀ n, P2140870412882195202.a n = A161612 (n + 1)

end A161612

/-! ## A161612.P4860348035998009420

`p?[A127335(n+8)+A127334(n+1)]`
-/

namespace A161612.P4860348035998009420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127335 (n + 8) + A127334 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161612.P4860348035998009420

namespace A161612

/-- `p?[A127335(n+8)+A127334(n+1)]` -/
def P4860348035998009420.Spec : Prop :=
  ∀ n, P4860348035998009420.a n = A161612 (n + 1)

end A161612

/-! ## A161612.P7558777486967867440

`p?[A014284(n+16)-A014284(n+1)]`
-/

namespace A161612.P7558777486967867440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 16) - A014284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161612.P7558777486967867440

namespace A161612

/-- `p?[A014284(n+16)-A014284(n+1)]` -/
def P7558777486967867440.Spec : Prop :=
  ∀ n, P7558777486967867440.a n = A161612 (n + 1)

end A161612

/-! ## A161612.P9446970162319357204

`p?[A036439(n+16)-A036439(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A161612

/-- `p?[A036439(n+16)-A036439(n+1)]` -/
def P9446970162319357204.Spec : Prop :=
  ∀ n, P9446970162319357204.a n = A161612 (n + 1)

theorem P9446970162319357204.correct : P9446970162319357204.Spec := by
  intro n
  simp only [A161612, Nat.add_sub_cancel]

end A161612

/-! ## A161612.P1080599418263954524

`p?[A175965(n+16)-A175965(n+1)]`
-/

namespace A161612.P1080599418263954524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175965 (n + 16) - A175965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161612.P1080599418263954524

namespace A161612

/-- `p?[A175965(n+16)-A175965(n+1)]` -/
def P1080599418263954524.Spec : Prop :=
  ∀ n, P1080599418263954524.a n = A161612 (n + 1)

end A161612

/-! ## A161612.P15404713514576479480

`p?[A227547(n+16)-A227547(n+1)]`
-/

namespace A161612.P15404713514576479480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227547 (n + 16) - A227547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161612.P15404713514576479480

namespace A161612

/-- `p?[A227547(n+16)-A227547(n+1)]` -/
def P15404713514576479480.Spec : Prop :=
  ∀ n, P15404713514576479480.a n = A161612 (n + 1)

end A161612

/-!
# A161613: Primes p such that 2p+3*5*7*11*13*17*19*23*29*31*37 is prime.

The programs for A161613, there is no canonical definition to state claims against.
-/

/-! ## A161613.P17476887828362188830

`A000040(lt[8, A087469(3*n+2)])`
-/

namespace A161613.P17476887828362188830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087469 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A161613.P17476887828362188830

/-! ## A161613.P5851635226967988124

`A000040(lt[9, A087470(3*n+2)])`
-/

namespace A161613.P5851635226967988124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087470 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A161613.P5851635226967988124

/-!
# A161614: Primes p such that 2*p+100280245065 is also a prime number.

The programs for A161614, there is no canonical definition to state claims against.
-/

/-! ## A161614.P5848020962834527133

`A097358(A134334(n+1)*A214323(n))`
-/

namespace A161614.P5848020962834527133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097358 (A134334 (n + 1) * A214323 n).toNat

end

end A161614.P5848020962834527133

/-! ## A161614.P9170143021359640335

`A097358(A134334(n+1)^A214323(n))`
-/

namespace A161614.P9170143021359640335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097358 (SequenceMachineLib.roundAway ((A134334 (n + 1) : ℚ) ^ (A214323 n : ℤ))).toNat

end

end A161614.P9170143021359640335

/-!
# A161615: Primes p such that 2*p+3234846615 is also a prime number.

The programs for A161615, there is no canonical definition to state claims against.
-/

/-! ## A161615.P1894103840027227488

`p?[A191887(xor(1, A191875(n+1)))]`
-/

namespace A161615.P1894103840027227488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191887 (Int.xor 1 (A191875 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161615.P1894103840027227488

/-!
# A161616: Primes p such that 2*p+111546435 is also prime.

The programs for A161616, there is no canonical definition to state claims against.
-/

/-! ## A161616.P6986518924143482208

`A000040(lt[A324819(n+5), A239016(2*(n+2))])`
-/

namespace A161616.P6986518924143482208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324819 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239016 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A161616.P6986518924143482208

/-! ## A161616.P7495421714759554

`A000040(lt[A324819(n+5), A298534(2*n+3)])`
-/

namespace A161616.P7495421714759554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324819 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298534 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A161616.P7495421714759554

/-! ## A161616.P16954107315970815155

`A089296(A190504(n+2))`
-/

namespace A161616.P16954107315970815155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089296 (A190504 (n + 2)).toNat

end

end A161616.P16954107315970815155

/-!
# A161617: a(n) = 8*n^2 + 20*n + 1.

The programs for A161617, the canonical program `A161617.P6959847450103032667` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161617 has offset 0).

The definition of A161617 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*n²+20*n+1` (program `A161617.P6959847450103032667`, by `A161617.P6959847450103032667.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A161617.P6959847450103032667

`8*n²+20*n+1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A161617

/-- `8*n²+20*n+1` -/
def P6959847450103032667.Spec : Prop :=
  ∀ n, (P6959847450103032667.a n : ℤ) = A161617 n

theorem P6959847450103032667.correct : P6959847450103032667.Spec := by
  intro n
  simp only [A161617]

end A161617

/-! ## A161617.P16256530420818082250

`∑[a(n-1)+16]` with `a(0)=1, a(1)=28`
-/

namespace A161617.P16256530420818082250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 28] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161617.P16256530420818082250

namespace A161617

/-- `∑[a(n-1)+16]` -/
def P16256530420818082250.Spec : Prop :=
  ∀ n, (P16256530420818082250.a n : ℤ) = A161617 n

end A161617

/-! ## A161617.P7749839249296878196

`abs(8-A273220(n+2))`
-/

namespace A161617.P7749839249296878196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |8 - A273220 (n + 2)|

end

end A161617.P7749839249296878196

namespace A161617

/-- `abs(8-A273220(n+2))` -/
def P7749839249296878196.Spec : Prop :=
  ∀ n, P7749839249296878196.a n = A161617 n

end A161617

/-! ## A161617.P16356724232394456838

`abs(a(n-1)+A082285(n)-1)` with `a(0)=1`
-/

namespace A161617.P16356724232394456838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) + (A082285 n - 1)|

end

end A161617.P16356724232394456838

namespace A161617

/-- `abs(a(n-1)+A082285(n)-1)` -/
def P16356724232394456838.Spec : Prop :=
  ∀ n, P16356724232394456838.a n = A161617 n

end A161617

/-! ## A161617.P6577068019964211697

`abs(A135453(n)-A195317(n+1))`
-/

namespace A161617.P6577068019964211697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A135453 n - A195317 (n + 1)|

end

end A161617.P6577068019964211697

namespace A161617

/-- `abs(A135453(n)-A195317(n+1))` -/
def P6577068019964211697.Spec : Prop :=
  ∀ n, P6577068019964211697.a n = A161617 n

end A161617

/-! ## A161617.P1423963221695877199

`abs(A135453(n)-abs(3-A193448(n+1)))`
-/

namespace A161617.P1423963221695877199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A135453 n - |3 - A193448 (n + 1)|)|

end

end A161617.P1423963221695877199

namespace A161617

/-- `abs(A135453(n)-abs(3-A193448(n+1)))` -/
def P1423963221695877199.Spec : Prop :=
  ∀ n, P1423963221695877199.a n = A161617 n

end A161617

/-! ## A161617.P11865832040114723804

`∑[A098502(n+1)^(A000040(n+1)%2)]`
-/

namespace A161617.P11865832040114723804
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098502 (n + 1) : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161617.P11865832040114723804

namespace A161617

/-- `∑[A098502(n+1)^(A000040(n+1)%2)]` -/
def P11865832040114723804.Spec : Prop :=
  ∀ n, P11865832040114723804.a n = (A161617 n : ℚ)

end A161617

/-! ## A161617.P6470061904280698271

`Δ[A100157(n+1)-A017581(n)]`
-/

namespace A161617.P6470061904280698271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100157 (n + 1) - A017581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161617.P6470061904280698271

namespace A161617

/-- `Δ[A100157(n+1)-A017581(n)]` -/
def P6470061904280698271.Spec : Prop :=
  ∀ n, P6470061904280698271.a n = A161617 n

end A161617

/-! ## A161617.P4836951846465424351

`xor(2, A152813(2*n))`
-/

namespace A161617.P4836951846465424351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A152813 (2 * n))

end

end A161617.P4836951846465424351

namespace A161617

/-- `xor(2, A152813(2*n))` -/
def P4836951846465424351.Spec : Prop :=
  ∀ n, P4836951846465424351.a n = A161617 n

end A161617

/-! ## A161617.P15211979974810933359

`abs(A142463(2*(n+1))-10)`
-/

namespace A161617.P15211979974810933359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A142463 (2 * (n + 1)) - 10|

end

end A161617.P15211979974810933359

namespace A161617

/-- `abs(A142463(2*(n+1))-10)` -/
def P15211979974810933359.Spec : Prop :=
  ∀ n, P15211979974810933359.a n = A161617 n

end A161617

/-! ## A161617.P12975283479041079145

`record[xor(2*A028557(n), A033999(n))]`
-/

namespace A161617.P12975283479041079145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A028557 n) (A033999 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161617.P12975283479041079145

namespace A161617

/-- `record[xor(2*A028557(n), A033999(n))]` -/
def P12975283479041079145.Spec : Prop :=
  ∀ n, P12975283479041079145.a n = A161617 n

end A161617

/-! ## A161617.P15721494695240474196

`abs(A001844(2*(n+1))-12)`
-/

namespace A161617.P15721494695240474196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001844 (2 * (n + 1)) - 12|

end

end A161617.P15721494695240474196

namespace A161617

/-- `abs(A001844(2*(n+1))-12)` -/
def P15721494695240474196.Spec : Prop :=
  ∀ n, P15721494695240474196.a n = A161617 n

end A161617

/-! ## A161617.P8798770777263757732

`Δ[A000330(2*n+1)-Δ[A049452(n+1)]]`
-/

namespace A161617.P8798770777263757732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049452 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (2 * n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161617.P8798770777263757732

namespace A161617

/-- `Δ[A000330(2*n+1)-Δ[A049452(n+1)]]` -/
def P8798770777263757732.Spec : Prop :=
  ∀ n, P8798770777263757732.a n = A161617 n

end A161617

/-! ## A161617.P16168757887271854863

`Δ[A101986(2*n)-Δ[A008865(2*n+1)]]`
-/

namespace A161617.P16168757887271854863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008865 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101986 (2 * n) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161617.P16168757887271854863

namespace A161617

/-- `Δ[A101986(2*n)-Δ[A008865(2*n+1)]]` -/
def P16168757887271854863.Spec : Prop :=
  ∀ n, P16168757887271854863.a n = A161617 n

end A161617

/-! ## A161617.P9687080135157155526

`Δ[A160805(2*n)-Δ[A008865(2*n+1)]]`
-/

namespace A161617.P9687080135157155526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008865 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160805 (2 * n) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161617.P9687080135157155526

namespace A161617

/-- `Δ[A160805(2*n)-Δ[A008865(2*n+1)]]` -/
def P9687080135157155526.Spec : Prop :=
  ∀ n, P9687080135157155526.a n = A161617 n

end A161617

/-! ## A161617.P13189629725663941746

`Δ[A026043(2*n+5)-Δ[A026043(2*(n+3))]]`
-/

namespace A161617.P13189629725663941746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026043 (2 * (n + 3))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026043 (2 * n + 5) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161617.P13189629725663941746

namespace A161617

/-- `Δ[A026043(2*n+5)-Δ[A026043(2*(n+3))]]` -/
def P13189629725663941746.Spec : Prop :=
  ∀ n, P13189629725663941746.a n = A161617 n

end A161617

/-! ## A161617.P8359176582883652539

`∑[A008574(A062545(2*n))]`
-/

namespace A161617.P8359176582883652539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A062545 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161617.P8359176582883652539

namespace A161617

/-- `∑[A008574(A062545(2*n))]` -/
def P8359176582883652539.Spec : Prop :=
  ∀ n, P8359176582883652539.a n = A161617 n

end A161617

/-! ## A161617.P9636793476581939812

`∑[A257088(A131439(2*n+1))]`
-/

namespace A161617.P9636793476581939812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (A131439 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161617.P9636793476581939812

namespace A161617

/-- `∑[A257088(A131439(2*n+1))]` -/
def P9636793476581939812.Spec : Prop :=
  ∀ n, P9636793476581939812.a n = A161617 n

end A161617

/-! ## A161617.P11214081279484815743

`A000027(A195817(4*n)+A081585(n))`
-/

namespace A161617.P11214081279484815743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A195817 (4 * n) + A081585 n).toNat

end

end A161617.P11214081279484815743

namespace A161617

/-- `A000027(A195817(4*n)+A081585(n))` -/
def P11214081279484815743.Spec : Prop :=
  ∀ n, P11214081279484815743.a n = A161617 n

end A161617

/-! ## A161617.P16965962028117123596

`A000265(A001844(2*(n+1))-12)`
-/

namespace A161617.P16965962028117123596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A001844 (2 * (n + 1)) - 12).toNat

end

end A161617.P16965962028117123596

namespace A161617

/-- `A000265(A001844(2*(n+1))-12)` -/
def P16965962028117123596.Spec : Prop :=
  ∀ n, P16965962028117123596.a n = A161617 n

end A161617

/-!
# A161618: Engel expansion of Pi^Pi.

The programs for A161618, there is no canonical definition to state claims against.
-/

/-! ## A161618.P15352338222923657375

`A143796(A034475(n+1))`
-/

namespace A161618.P15352338222923657375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143796 (A034475 (n + 1)).toNat

end

end A161618.P15352338222923657375

/-! ## A161618.P15711058062134424299

`A101021(A333161(n+1))`
-/

namespace A161618.P15711058062134424299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101021 (A333161 (n + 1)).toNat

end

end A161618.P15711058062134424299

/-! ## A161618.P8174610529051753503

`A346388(A034477(n+2))`
-/

namespace A161618.P8174610529051753503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346388 (A034477 (n + 2)).toNat

end

end A161618.P8174610529051753503

/-! ## A161618.P561483401820763151

`A129396(A034439(n+1)²)`
-/

namespace A161618.P561483401820763151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129396 (A034439 (n + 1) ^ 2).toNat

end

end A161618.P561483401820763151

/-! ## A161618.P16065914650545526389

`A000005(5^A034439(n+1))`
-/

namespace A161618.P16065914650545526389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A034439 (n + 1) : ℤ))).toNat

end

end A161618.P16065914650545526389

/-!
# A161619: The absolute value of A161361(n)/(n+1).

The programs for A161619, there is no canonical definition to state claims against.
-/

/-! ## A161619.P18219639490295948376

`abs(floor(A161361(n)/(n+1)))`
-/

namespace A161619.P18219639490295948376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(A161361 n : ℚ) / (n + 1 : ℚ)⌋|

end

end A161619.P18219639490295948376

/-!
# A161620: Primorial numbers of the form n^2 + n for some integer n.

The programs for A161620, there is no canonical definition to state claims against.
-/

/-! ## A161620.P17431654489897639888

`A378681(4^n)`
-/

namespace A161620.P17431654489897639888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378681 (4 ^ n)

end

end A161620.P17431654489897639888

/-!
# A161621: Numerator of (b(n+1) - b(n))/(b(n+2) - b(n)), where b(n) = A038107(n) is the number of primes up to n^2.

The programs for A161621, there is no canonical definition to state claims against.
-/

/-! ## A161621.P17867607141073731835

`lcm(A014085(n+1), A014085(n+2))/A014085(n+2)`
-/

namespace A161621.P17867607141073731835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A014085 (n + 1)) (A014085 (n + 2)) : ℚ) / (A014085 (n + 2) : ℚ)

end

end A161621.P17867607141073731835

/-! ## A161621.P14008605888796404577

`gcd(A014085(n+1), A198954(A128612(3*(n+1))))`
-/

namespace A161621.P14008605888796404577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014085 (n + 1)) (A198954 (A128612 (3 * (n + 1))).toNat)

end

end A161621.P14008605888796404577

/-! ## A161621.P2428267017914215827

`A329313(A137809(n)+A003136(n+1))`
-/

namespace A161621.P2428267017914215827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (A137809 n + A003136 (n + 1)).toNat

end

end A161621.P2428267017914215827

/-! ## A161621.P7019456498656459366

`A085033(xor(A134189(n+1), A179016(n)))`
-/

namespace A161621.P7019456498656459366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085033 (Int.xor (A134189 (n + 1)) (A179016 n)).toNat

end

end A161621.P7019456498656459366

/-! ## A161621.P17176113688304974257

`A066422(A066420(n+2)*A066507(n+1))`
-/

namespace A161621.P17176113688304974257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066422 (A066420 (n + 2) * A066507 (n + 1)).toNat

end

end A161621.P17176113688304974257

/-!
# A161624: Sum of all numbers from n to n-th prime.

The programs for A161624, the canonical program `A161624.P3059567341113547704` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161624 has offset 1).

The definition of A161624 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161624.P3059567341113547704

`A034953(n+1)-A000217(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A161624

/-- `A034953(n+1)-A000217(n)` -/
def P3059567341113547704.Spec : Prop :=
  ∀ n, P3059567341113547704.a n = A161624 (n + 1)

theorem P3059567341113547704.correct : P3059567341113547704.Spec := by
  intro n
  simp only [A161624, Nat.add_sub_cancel]

end A161624

/-! ## A161624.P11316568501165462246

`∑[A138383(n)-n]`
-/

namespace A161624.P11316568501165462246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138383 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161624.P11316568501165462246

namespace A161624

/-- `∑[A138383(n)-n]` -/
def P11316568501165462246.Spec : Prop :=
  ∀ n, P11316568501165462246.a n = A161624 (n + 1)

end A161624

/-! ## A161624.P7689717432130843522

`A036690(n+1)/2-∑[n]`
-/

namespace A161624.P7689717432130843522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036690 (n + 1) : ℚ) / 2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A161624.P7689717432130843522

namespace A161624

/-- `A036690(n+1)/2-∑[n]` -/
def P7689717432130843522.Spec : Prop :=
  ∀ n, P7689717432130843522.a n = (A161624 (n + 1) : ℚ)

end A161624

/-! ## A161624.P1376360157909669965

`C(A008864(n+1), 2)-∑[n]`
-/

namespace A161624.P1376360157909669965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A008864 (n + 1)).toNat 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A161624.P1376360157909669965

namespace A161624

/-- `C(A008864(n+1), 2)-∑[n]` -/
def P1376360157909669965.Spec : Prop :=
  ∀ n, P1376360157909669965.a n = A161624 (n + 1)

end A161624

/-! ## A161624.P8180308607329679293

`C(Δ[A007504(n)]+1, 2)-∑[n]`
-/

namespace A161624.P8180308607329679293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (f1 (n + 1) - f1 n + 1).toNat 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A161624.P8180308607329679293

namespace A161624

/-- `C(Δ[A007504(n)]+1, 2)-∑[n]` -/
def P8180308607329679293.Spec : Prop :=
  ∀ n, P8180308607329679293.a n = A161624 (n + 1)

end A161624

/-! ## A161624.P11749292659211247275

`C(A000040(n+1)+1, 2)-∑[n]`
-/

namespace A161624.P11749292659211247275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000040 (n + 1) + 1).toNat 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A161624.P11749292659211247275

namespace A161624

/-- `C(A000040(n+1)+1, 2)-∑[n]` -/
def P11749292659211247275.Spec : Prop :=
  ∀ n, P11749292659211247275.a n = A161624 (n + 1)

end A161624

/-! ## A161624.P3186082141759265984

`A161626(n+1)+A005449(n)`
-/

namespace A161624.P3186082141759265984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161626 (n + 1) + A005449 n

end

end A161624.P3186082141759265984

namespace A161624

/-- `A161626(n+1)+A005449(n)` -/
def P3186082141759265984.Spec : Prop :=
  ∀ n, P3186082141759265984.a n = A161624 (n + 1)

end A161624

/-! ## A161624.P10190791811989156182

`A014688(n+1)/2*A014692(n+1)`
-/

namespace A161624.P10190791811989156182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014688 (n + 1) : ℚ) / 2 * (A014692 (n + 1) : ℚ)

end

end A161624.P10190791811989156182

namespace A161624

/-- `A014688(n+1)/2*A014692(n+1)` -/
def P10190791811989156182.Spec : Prop :=
  ∀ n, P10190791811989156182.a n = (A161624 (n + 1) : ℚ)

end A161624

/-! ## A161624.P15434236937616125239

`A138420(n+1)/A008837(n+1)-A000217(n)`
-/

namespace A161624.P15434236937616125239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138420 (n + 1) : ℚ) / (A008837 (n + 1) : ℚ) - (A000217 n : ℚ)

end

end A161624.P15434236937616125239

namespace A161624

/-- `A138420(n+1)/A008837(n+1)-A000217(n)` -/
def P15434236937616125239.Spec : Prop :=
  ∀ n, P15434236937616125239.a n = (A161624 (n + 1) : ℚ)

end A161624

/-! ## A161624.P18367871459543337883

`A011756(n+1)+A123907(n+1)-A000217(n)`
-/

namespace A161624.P18367871459543337883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011756 (n + 1) + (A123907 (n + 1) - A000217 n)

end

end A161624.P18367871459543337883

namespace A161624

/-- `A011756(n+1)+A123907(n+1)-A000217(n)` -/
def P18367871459543337883.Spec : Prop :=
  ∀ n, P18367871459543337883.a n = A161624 (n + 1)

theorem P18367871459543337883.correct : P18367871459543337883.Spec := by
  intro n
  simp only [A161624, Nat.add_sub_cancel, A161624.P18367871459543337883.a, A161624.P3059567341113547704.a, A000217, A000217.P10269402890581615239.a, A011756, A011756.P1364698667892366694.a, A034953, A034953.P12568728140146877898.a, A123907, A123907.P8393408210616074745.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A161624

/-! ## A161624.P10343423788177272318

`A000217(Δ[A007504(n)])-∑[n]`
-/

namespace A161624.P10343423788177272318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (n + 1) - f1 n).toNat - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A161624.P10343423788177272318

namespace A161624

/-- `A000217(Δ[A007504(n)])-∑[n]` -/
def P10343423788177272318.Spec : Prop :=
  ∀ n, P10343423788177272318.a n = A161624 (n + 1)

end A161624

/-! ## A161624.P13371756186996802783

`A000217(A000040(n+1))-∑[n]`
-/

namespace A161624.P13371756186996802783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000040 (n + 1)).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A161624.P13371756186996802783

namespace A161624

/-- `A000217(A000040(n+1))-∑[n]` -/
def P13371756186996802783.Spec : Prop :=
  ∀ n, P13371756186996802783.a n = A161624 (n + 1)

end A161624

/-! ## A161624.P11026517178298304313

`A000217(A008578(n+2))-∑[n]`
-/

namespace A161624.P11026517178298304313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008578 (n + 2)).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A161624.P11026517178298304313

namespace A161624

/-- `A000217(A008578(n+2))-∑[n]` -/
def P11026517178298304313.Spec : Prop :=
  ∀ n, P11026517178298304313.a n = A161624 (n + 1)

end A161624

/-! ## A161624.P12516775138310364031

`A000217(A073846(2*(n+1)))-∑[n]`
-/

namespace A161624.P12516775138310364031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A073846 (2 * (n + 1))).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A161624.P12516775138310364031

namespace A161624

/-- `A000217(A073846(2*(n+1)))-∑[n]` -/
def P12516775138310364031.Spec : Prop :=
  ∀ n, P12516775138310364031.a n = A161624 (n + 1)

end A161624

/-! ## A161624.P6970525251339985632

`A000217(record[A000010(n+1)]+1)-∑[n]`
-/

namespace A161624.P6970525251339985632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A161624.P6970525251339985632

namespace A161624

/-- `A000217(record[A000010(n+1)]+1)-∑[n]` -/
def P6970525251339985632.Spec : Prop :=
  ∀ n, P6970525251339985632.a n = A161624 (n + 1)

end A161624

/-! ## A161624.P5938889904199154625

`A000217(record[A162753(n)])-A000217(n)`
-/

namespace A161624.P5938889904199154625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A000217 n

end

end A161624.P5938889904199154625

namespace A161624

/-- `A000217(record[A162753(n)])-A000217(n)` -/
def P5938889904199154625.Spec : Prop :=
  ∀ n, P5938889904199154625.a n = A161624 (n + 1)

end A161624

/-! ## A161624.P2719849129765283468

`A000217(A158611(n+3))-A000217(n)`
-/

namespace A161624.P2719849129765283468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A158611 (n + 3)).toNat - A000217 n

end

end A161624.P2719849129765283468

namespace A161624

/-- `A000217(A158611(n+3))-A000217(n)` -/
def P2719849129765283468.Spec : Prop :=
  ∀ n, P2719849129765283468.a n = A161624 (n + 1)

end A161624

/-! ## A161624.P7272546689866452005

`A000217(Δ[A014284(n+1)])-A000217(n)`
-/

namespace A161624.P7272546689866452005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (n + 1) - f1 n).toNat - A000217 n

end

end A161624.P7272546689866452005

namespace A161624

/-- `A000217(Δ[A014284(n+1)])-A000217(n)` -/
def P7272546689866452005.Spec : Prop :=
  ∀ n, P7272546689866452005.a n = A161624 (n + 1)

end A161624

/-! ## A161624.P1194978766698337314

`A000217(record[A020639(n+2)])-A000217(n)`
-/

namespace A161624.P1194978766698337314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A000217 n

end

end A161624.P1194978766698337314

namespace A161624

/-- `A000217(record[A020639(n+2)])-A000217(n)` -/
def P1194978766698337314.Spec : Prop :=
  ∀ n, P1194978766698337314.a n = A161624 (n + 1)

end A161624

/-! ## A161624.P9638787222124676690

`A000217(p?[A206074(n+1)])-A000217(n)`
-/

namespace A161624.P9638787222124676690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A000217 n

end

end A161624.P9638787222124676690

namespace A161624

/-- `A000217(p?[A206074(n+1)])-A000217(n)` -/
def P9638787222124676690.Spec : Prop :=
  ∀ n, P9638787222124676690.a n = A161624 (n + 1)

end A161624

/-!
# A161625: Sum of all numbers from 1 up to the final digit of prime(n).

The programs for A161625, the canonical program `A161625.P5203370904479335656` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161625 has offset 1).

The definition of A161625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161625.P5203370904479335656

`C(A007652(n+1)+1, 2)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A161625

/-- `C(A007652(n+1)+1, 2)` -/
def P5203370904479335656.Spec : Prop :=
  ∀ n, (P5203370904479335656.a n : ℤ) = A161625 (n + 1)

theorem P5203370904479335656.correct : P5203370904479335656.Spec := by
  intro n
  simp only [A161625, Nat.add_sub_cancel]

end A161625

/-! ## A161625.P693490771425562451

`C(A000040(n+1)%10+1, 2)`
-/

namespace A161625.P693490771425562451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.tmod (A000040 (n + 1)) 10 + 1).toNat 2

end

end A161625.P693490771425562451

namespace A161625

/-- `C(A000040(n+1)%10+1, 2)` -/
def P693490771425562451.Spec : Prop :=
  ∀ n, (P693490771425562451.a n : ℤ) = A161625 (n + 1)

end A161625

/-! ## A161625.P8442552838423495105

`A000217(∏{digits}[A242120(n+1), #])`
-/

namespace A161625.P8442552838423495105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A161625.P8442552838423495105

namespace A161625

/-- `A000217(∏{digits}[A242120(n+1), #])` -/
def P8442552838423495105.Spec : Prop :=
  ∀ n, P8442552838423495105.a n = A161625 (n + 1)

end A161625

/-! ## A161625.P1025421838153447780

`A000217(A268185(n+1)-A000040(n+1))`
-/

namespace A161625.P1025421838153447780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A268185 (n + 1) - A000040 (n + 1)).toNat

end

end A161625.P1025421838153447780

namespace A161625

/-- `A000217(A268185(n+1)-A000040(n+1))` -/
def P1025421838153447780.Spec : Prop :=
  ∀ n, P1025421838153447780.a n = A161625 (n + 1)

end A161625

/-! ## A161625.P3722083628467627865

`A000217(A063482(n+1)/A000040(n+1))`
-/

namespace A161625.P3722083628467627865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway ((A063482 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ))).toNat

end

end A161625.P3722083628467627865

namespace A161625

/-- `A000217(A063482(n+1)/A000040(n+1))` -/
def P3722083628467627865.Spec : Prop :=
  ∀ n, P3722083628467627865.a n = A161625 (n + 1)

end A161625

/-! ## A161625.P6111804929632210767

`A000217(A063482(n+1)/record[A020639(n+2)])`
-/

namespace A161625.P6111804929632210767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway ((A063482 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ))).toNat

end

end A161625.P6111804929632210767

namespace A161625

/-- `A000217(A063482(n+1)/record[A020639(n+2)])` -/
def P6111804929632210767.Spec : Prop :=
  ∀ n, P6111804929632210767.a n = A161625 (n + 1)

end A161625

/-! ## A161625.P10578508463625309390

`A000217(A274206(Δ[A007504(n)]))`
-/

namespace A161625.P10578508463625309390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A274206 (f1 (n + 1) - f1 n).toNat).toNat

end

end A161625.P10578508463625309390

namespace A161625

/-- `A000217(A274206(Δ[A007504(n)]))` -/
def P10578508463625309390.Spec : Prop :=
  ∀ n, P10578508463625309390.a n = A161625 (n + 1)

end A161625

/-! ## A161625.P12078559412400830468

`A000217(A274206(p?[A014681(n)]))`
-/

namespace A161625.P12078559412400830468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A274206 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A161625.P12078559412400830468

namespace A161625

/-- `A000217(A274206(p?[A014681(n)]))` -/
def P12078559412400830468.Spec : Prop :=
  ∀ n, P12078559412400830468.a n = A161625 (n + 1)

end A161625

/-! ## A161625.P1921201354885948854

`A000217(A274206(A000040(n+1)))`
-/

namespace A161625.P1921201354885948854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A274206 (A000040 (n + 1)).toNat).toNat

end

end A161625.P1921201354885948854

namespace A161625

/-- `A000217(A274206(A000040(n+1)))` -/
def P1921201354885948854.Spec : Prop :=
  ∀ n, P1921201354885948854.a n = A161625 (n + 1)

end A161625

/-! ## A161625.P17994883382430867847

`A000217(A274206(p?[A056847(n)]))`
-/

namespace A161625.P17994883382430867847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A274206 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A161625.P17994883382430867847

namespace A161625

/-- `A000217(A274206(p?[A056847(n)]))` -/
def P17994883382430867847.Spec : Prop :=
  ∀ n, P17994883382430867847.a n = A161625 (n + 1)

end A161625

/-! ## A161625.P10873140719454035064

`A000217(A274206(p?[A001057(n)]))`
-/

namespace A161625.P10873140719454035064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A274206 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A161625.P10873140719454035064

namespace A161625

/-- `A000217(A274206(p?[A001057(n)]))` -/
def P10873140719454035064.Spec : Prop :=
  ∀ n, P10873140719454035064.a n = A161625 (n + 1)

end A161625

/-! ## A161625.P18089091302879862236

`A000217(A274206(p?[A006370(n)]))`
-/

namespace A161625.P18089091302879862236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A274206 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A161625.P18089091302879862236

namespace A161625

/-- `A000217(A274206(p?[A006370(n)]))` -/
def P18089091302879862236.Spec : Prop :=
  ∀ n, P18089091302879862236.a n = A161625 (n + 1)

end A161625

/-!
# A161626: Sum of all numbers from 2*n-1 up to prime(n).

The programs for A161626, the canonical program `A161626.P12773892105089373629` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161626 has offset 1).

The definition of A161626 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161626.P12773892105089373629

`A000217(A000040(n+1))-A000217(2*n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A161626

/-- `A000217(A000040(n+1))-A000217(2*n)` -/
def P12773892105089373629.Spec : Prop :=
  ∀ n, P12773892105089373629.a n = A161626 (n + 1)

theorem P12773892105089373629.correct : P12773892105089373629.Spec := by
  intro n
  simp only [A161626, Nat.add_sub_cancel]

end A161626

/-! ## A161626.P15788441630240903688

`A034953(n+1)-C(Δ[n²], 2)`
-/

namespace A161626.P15788441630240903688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) - (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2 : ℤ)

end

end A161626.P15788441630240903688

namespace A161626

/-- `A034953(n+1)-C(Δ[n²], 2)` -/
def P15788441630240903688.Spec : Prop :=
  ∀ n, P15788441630240903688.a n = A161626 (n + 1)

end A161626

/-! ## A161626.P12374449465668507092

`∑[A138383(n)]-n*(2*n+1)`
-/

namespace A161626.P12374449465668507092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n * (2 * n + 1) : ℤ)

end

end A161626.P12374449465668507092

namespace A161626

/-- `∑[A138383(n)]-n*(2*n+1)` -/
def P12374449465668507092.Spec : Prop :=
  ∀ n, P12374449465668507092.a n = A161626 (n + 1)

end A161626

/-! ## A161626.P15605438004157898714

`A034953(n+1)-A014105(n)`
-/

namespace A161626.P15605438004157898714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) - A014105 n

end

end A161626.P15605438004157898714

namespace A161626

/-- `A034953(n+1)-A014105(n)` -/
def P15605438004157898714.Spec : Prop :=
  ∀ n, P15605438004157898714.a n = A161626 (n + 1)

theorem P15605438004157898714.correct : P15605438004157898714.Spec := by
  intro n
  simp only [A161626, Nat.add_sub_cancel, A161626.P15605438004157898714.a, A161626.P12773892105089373629.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A014105, A014105.P182524374866796289.a, A034953, A034953.P12568728140146877898.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A161626

/-! ## A161626.P1880291402609778058

`A161624(n+1)-A005449(n)`
-/

namespace A161626.P1880291402609778058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161624 (n + 1) - A005449 n

end

end A161626.P1880291402609778058

namespace A161626

/-- `A161624(n+1)-A005449(n)` -/
def P1880291402609778058.Spec : Prop :=
  ∀ n, P1880291402609778058.a n = A161626 (n + 1)

end A161626

/-! ## A161626.P6308955645929525952

`A034953(n+1)-A000217(2*n)`
-/

namespace A161626.P6308955645929525952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) - A000217 (2 * n)

end

end A161626.P6308955645929525952

namespace A161626

/-- `A034953(n+1)-A000217(2*n)` -/
def P6308955645929525952.Spec : Prop :=
  ∀ n, P6308955645929525952.a n = A161626 (n + 1)

end A161626

/-! ## A161626.P15193044848612723789

`A000217(A000040(n+1))-A014105(n)`
-/

namespace A161626.P15193044848612723789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000040 (n + 1)).toNat - A014105 n

end

end A161626.P15193044848612723789

namespace A161626

/-- `A000217(A000040(n+1))-A014105(n)` -/
def P15193044848612723789.Spec : Prop :=
  ∀ n, P15193044848612723789.a n = A161626 (n + 1)

theorem P15193044848612723789.correct : P15193044848612723789.Spec := by
  intro n
  simp only [A161626, Nat.add_sub_cancel, A161626.P15193044848612723789.a, A161626.P12773892105089373629.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A014105, A014105.P182524374866796289.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A161626

/-! ## A161626.P6026441385273478891

`A000217(A008578(n+2))-A000217(2*n)`
-/

namespace A161626.P6026441385273478891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008578 (n + 2)).toNat - A000217 (2 * n)

end

end A161626.P6026441385273478891

namespace A161626

/-- `A000217(A008578(n+2))-A000217(2*n)` -/
def P6026441385273478891.Spec : Prop :=
  ∀ n, P6026441385273478891.a n = A161626 (n + 1)

end A161626

/-! ## A161626.P4161274921934643564

`A000217(A182986(n+2))-A000217(2*n)`
-/

namespace A161626.P4161274921934643564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A182986 (n + 2)).toNat - A000217 (2 * n)

end

end A161626.P4161274921934643564

namespace A161626

/-- `A000217(A182986(n+2))-A000217(2*n)` -/
def P4161274921934643564.Spec : Prop :=
  ∀ n, P4161274921934643564.a n = A161626 (n + 1)

end A161626

/-! ## A161626.P9248178602374685815

`A000217(A073846(2*(n+1)))-A000217(2*n)`
-/

namespace A161626.P9248178602374685815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A073846 (2 * (n + 1))).toNat - A000217 (2 * n)

end

end A161626.P9248178602374685815

namespace A161626

/-- `A000217(A073846(2*(n+1)))-A000217(2*n)` -/
def P9248178602374685815.Spec : Prop :=
  ∀ n, P9248178602374685815.a n = A161626 (n + 1)

end A161626

/-! ## A161626.P13078493246432342180

`A000096(A006093(n+1))-A014107(n+1)`
-/

namespace A161626.P13078493246432342180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A006093 (n + 1)).toNat - A014107 (n + 1)

end

end A161626.P13078493246432342180

namespace A161626

/-- `A000096(A006093(n+1))-A014107(n+1)` -/
def P13078493246432342180.Spec : Prop :=
  ∀ n, P13078493246432342180.a n = A161626 (n + 1)

end A161626

/-! ## A161626.P3034548993584261684

`A000124(A008578(n+2))-A000124(2*n)`
-/

namespace A161626.P3034548993584261684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A008578 (n + 2)).toNat - A000124 (2 * n)

end

end A161626.P3034548993584261684

namespace A161626

/-- `A000124(A008578(n+2))-A000124(2*n)` -/
def P3034548993584261684.Spec : Prop :=
  ∀ n, P3034548993584261684.a n = A161626 (n + 1)

end A161626

/-!
# A161627: Positions n such that A010060(n)=A010060(n+4).

The programs for A161627, the canonical program `A161627.P6343698203348993305` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161627 has offset 1).

The definition of A161627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161627.P6343698203348993305

`eq[1, A316826(floor(n/4)+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A161627

/-- `eq[1, A316826(floor(n/4)+1)]` -/
def P6343698203348993305.Spec : Prop :=
  ∀ n, (P6343698203348993305.a n : ℤ) = A161627 (n + 1)

theorem P6343698203348993305.correct : P6343698203348993305.Spec := by
  intro n
  simp only [A161627, Nat.add_sub_cancel]

end A161627

/-! ## A161627.P15514539698006129830

`eq[A010060(n+4), A010060(n)]`
-/

namespace A161627.P15514539698006129830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161627.P15514539698006129830

namespace A161627

/-- `eq[A010060(n+4), A010060(n)]` -/
def P15514539698006129830.Spec : Prop :=
  ∀ n, (P15514539698006129830.a n : ℤ) = A161627 (n + 1)

end A161627

/-! ## A161627.P5470030838896186866

`eq[A309952(n+4), A309952(n)]`
-/

namespace A161627.P5470030838896186866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161627.P5470030838896186866

namespace A161627

/-- `eq[A309952(n+4), A309952(n)]` -/
def P5470030838896186866.Spec : Prop :=
  ∀ n, (P5470030838896186866.a n : ℤ) = A161627 (n + 1)

end A161627

/-! ## A161627.P9910673882922674256

`comp[A161641(n+1)]`
-/

namespace A161627.P9910673882922674256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A161627.P9910673882922674256

namespace A161627

/-- `comp[A161641(n+1)]` -/
def P9910673882922674256.Spec : Prop :=
  ∀ n, (P9910673882922674256.a n : ℤ) = A161627 (n + 1)

end A161627

/-! ## A161627.P3459371509188760123

`A161639(Δ[n²])/2`
-/

namespace A161627.P3459371509188760123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161639 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A161627.P3459371509188760123

namespace A161627

/-- `A161639(Δ[n²])/2` -/
def P3459371509188760123.Spec : Prop :=
  ∀ n, P3459371509188760123.a n = (A161627 (n + 1) : ℚ)

end A161627

/-! ## A161627.P14133253665564257282

`record[or(4, A161673(n+1))]`
-/

namespace A161627.P14133253665564257282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A161673 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161627.P14133253665564257282

namespace A161627

/-- `record[or(4, A161673(n+1))]` -/
def P14133253665564257282.Spec : Prop :=
  ∀ n, P14133253665564257282.a n = A161627 (n + 1)

end A161627

/-! ## A161627.P5673826143872051622

`A161673(comp[or(4, n)]+5)`
-/

namespace A161627.P5673826143872051622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161673 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 5)

end

end A161627.P5673826143872051622

namespace A161627

/-- `A161673(comp[or(4, n)]+5)` -/
def P5673826143872051622.Spec : Prop :=
  ∀ n, P5673826143872051622.a n = A161627 (n + 1)

end A161627

/-! ## A161627.P11577190077392403418

`A161673(A047575(n+2))`
-/

namespace A161627.P11577190077392403418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161673 (A047575 (n + 2)).toNat

end

end A161627.P11577190077392403418

namespace A161627

/-- `A161673(A047575(n+2))` -/
def P11577190077392403418.Spec : Prop :=
  ∀ n, P11577190077392403418.a n = A161627 (n + 1)

end A161627

/-! ## A161627.P11830900948433585165

`A161673(A047566(n+1)+1)`
-/

namespace A161627.P11830900948433585165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161673 (A047566 (n + 1) + 1).toNat

end

end A161627.P11830900948433585165

namespace A161627

/-- `A161673(A047566(n+1)+1)` -/
def P11830900948433585165.Spec : Prop :=
  ∀ n, P11830900948433585165.a n = A161627 (n + 1)

end A161627

/-! ## A161627.P3215537464301993881

`∩[A161674(n+1)-2, A161674(n+1)]`
-/

namespace A161627.P3215537464301993881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161674 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161627.P3215537464301993881

namespace A161627

/-- `∩[A161674(n+1)-2, A161674(n+1)]` -/
def P3215537464301993881.Spec : Prop :=
  ∀ n, (P3215537464301993881.a n : ℤ) = A161627 (n + 1)

end A161627

/-! ## A161627.P18120462774202424594

`eq[1, A039963(or(2, n))]`
-/

namespace A161627.P18120462774202424594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (Nat.lor 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161627.P18120462774202424594

namespace A161627

/-- `eq[1, A039963(or(2, n))]` -/
def P18120462774202424594.Spec : Prop :=
  ∀ n, (P18120462774202424594.a n : ℤ) = A161627 (n + 1)

end A161627

/-! ## A161627.P12274966245471153627

`eq[1, A039963(A004526(n))+1]`
-/

namespace A161627.P12274966245471153627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (A004526 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161627.P12274966245471153627

namespace A161627

/-- `eq[1, A039963(A004526(n))+1]` -/
def P12274966245471153627.Spec : Prop :=
  ∀ n, (P12274966245471153627.a n : ℤ) = A161627 (n + 1)

end A161627

/-! ## A161627.P13719869490732280616

`eq[A039963(n+2), A039963(n)]`
-/

namespace A161627.P13719869490732280616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161627.P13719869490732280616

namespace A161627

/-- `eq[A039963(n+2), A039963(n)]` -/
def P13719869490732280616.Spec : Prop :=
  ∀ n, (P13719869490732280616.a n : ℤ) = A161627 (n + 1)

end A161627

/-! ## A161627.P7971069364561248382

`eq[A101669(n+2), A101669(n)]`
-/

namespace A161627.P7971069364561248382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101669 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161627.P7971069364561248382

namespace A161627

/-- `eq[A101669(n+2), A101669(n)]` -/
def P7971069364561248382.Spec : Prop :=
  ∀ n, (P7971069364561248382.a n : ℤ) = A161627 (n + 1)

end A161627

/-! ## A161627.P11575959400258245772

`eq[A186034(n+2), A186034(n)]`
-/

namespace A161627.P11575959400258245772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186034 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161627.P11575959400258245772

namespace A161627

/-- `eq[A186034(n+2), A186034(n)]` -/
def P11575959400258245772.Spec : Prop :=
  ∀ n, (P11575959400258245772.a n : ℤ) = A161627 (n + 1)

end A161627

/-! ## A161627.P13539199626112406289

`eq[A245187(n+2), A245187(n)]`
-/

namespace A161627.P13539199626112406289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245187 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245187 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161627.P13539199626112406289

namespace A161627

/-- `eq[A245187(n+2), A245187(n)]` -/
def P13539199626112406289.Spec : Prop :=
  ∀ n, (P13539199626112406289.a n : ℤ) = A161627 (n + 1)

end A161627

/-! ## A161627.P1363185500629554483

`eq[A001285(n+4), A001285(n)]`
-/

namespace A161627.P1363185500629554483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161627.P1363185500629554483

namespace A161627

/-- `eq[A001285(n+4), A001285(n)]` -/
def P1363185500629554483.Spec : Prop :=
  ∀ n, (P1363185500629554483.a n : ℤ) = A161627 (n + 1)

end A161627

/-! ## A161627.P443122412475610660

`eq[A010059(n+4), A010059(n)]`
-/

namespace A161627.P443122412475610660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161627.P443122412475610660

namespace A161627

/-- `eq[A010059(n+4), A010059(n)]` -/
def P443122412475610660.Spec : Prop :=
  ∀ n, (P443122412475610660.a n : ℤ) = A161627 (n + 1)

end A161627

/-! ## A161627.P6664985976897277595

`eq[A268676(n+4), A268676(n)]`
-/

namespace A161627.P6664985976897277595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161627.P6664985976897277595

namespace A161627

/-- `eq[A268676(n+4), A268676(n)]` -/
def P6664985976897277595.Spec : Prop :=
  ∀ n, (P6664985976897277595.a n : ℤ) = A161627 (n + 1)

end A161627

/-! ## A161627.P12570143511006439323

`lt[A160381(n+4), A160381(n)]`
-/

namespace A161627.P12570143511006439323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A161627.P12570143511006439323

namespace A161627

/-- `lt[A160381(n+4), A160381(n)]` -/
def P12570143511006439323.Spec : Prop :=
  ∀ n, (P12570143511006439323.a n : ℤ) = A161627 (n + 1)

end A161627

/-!
# A161628: E.g.f.: A(x,y) = LambertW(x*y*exp(x))/(x*y*exp(x)), as a triangle of coefficients T(n,k) = [x^n*y^k/n! ] A(x,y), read by rows.

The programs for A161628, the canonical program `A161628.P1285896959865972888` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161628 has offset 0).

The definition of A161628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161628.P1285896959865972888

`(-1)^col(n)*C(row(n), col(n))*(col(n)+1)^(col(n)-1)*col(n)^(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A161628

/-- `(-1)^col(n)*C(row(n), col(n))*(col(n)+1)^(col(n)-1)*col(n)^(row(n)-col(n))` -/
def P1285896959865972888.Spec : Prop :=
  ∀ n, P1285896959865972888.a n = (A161628 n : ℚ)

end A161628

/-! ## A161628.P7653683365141054669

`Δ[A010751(n)]*A244119(n)`
-/

namespace A161628.P7653683365141054669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A244119 n

end

end A161628.P7653683365141054669

namespace A161628

/-- `Δ[A010751(n)]*A244119(n)` -/
def P7653683365141054669.Spec : Prop :=
  ∀ n, P7653683365141054669.a n = A161628 n

end A161628

/-! ## A161628.P11119304679477446182

`A033999(A003056(n))*A244119(n)`
-/

namespace A161628.P11119304679477446182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A003056 n).toNat * A244119 n

end

end A161628.P11119304679477446182

namespace A161628

/-- `A033999(A003056(n))*A244119(n)` -/
def P11119304679477446182.Spec : Prop :=
  ∀ n, P11119304679477446182.a n = A161628 n

end A161628

/-! ## A161628.P14930372891831334196

`A130595(A057944(n))*A244119(n)`
-/

namespace A161628.P14930372891831334196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (A057944 n).toNat * A244119 n

end

end A161628.P14930372891831334196

namespace A161628

/-- `A130595(A057944(n))*A244119(n)` -/
def P14930372891831334196.Spec : Prop :=
  ∀ n, P14930372891831334196.a n = A161628 n

end A161628

/-! ## A161628.P6335892133655223859

`A033999(A309557(n))*A244119(n)`
-/

namespace A161628.P6335892133655223859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A309557 n).toNat * A244119 n

end

end A161628.P6335892133655223859

namespace A161628

/-- `A033999(A309557(n))*A244119(n)` -/
def P6335892133655223859.Spec : Prop :=
  ∀ n, P6335892133655223859.a n = A161628 n

end A161628

/-! ## A161628.P8238450003953225550

`A033999(A003057(n+2))*A244119(n)`
-/

namespace A161628.P8238450003953225550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A003057 (n + 2)).toNat * A244119 n

end

end A161628.P8238450003953225550

namespace A161628

/-- `A033999(A003057(n+2))*A244119(n)` -/
def P8238450003953225550.Spec : Prop :=
  ∀ n, P8238450003953225550.a n = A161628 n

end A161628

/-! ## A161628.P7831697943666717014

`A008836(A137688(n))*A244119(n)`
-/

namespace A161628.P7831697943666717014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A137688 n).toNat * A244119 n

end

end A161628.P7831697943666717014

namespace A161628

/-- `A008836(A137688(n))*A244119(n)` -/
def P7831697943666717014.Spec : Prop :=
  ∀ n, P7831697943666717014.a n = A161628 n

end A161628

/-!
# A161629: E.g.f. satisfies: A(x) = exp( x*Catalan(x*A(x)) ), where Catalan(x) = (1-sqrt(1-4*x))/(2*x) is the g.f. of A000108.

The programs for A161629, there is no canonical definition to state claims against.
-/

/-! ## A161629.P12231331859777307872

`A000265(A380042(n)+A000120(n))`
-/

namespace A161629.P12231331859777307872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A380042 n + A000120 n).toNat

end

end A161629.P12231331859777307872

/-! ## A161629.P16873208570700327256

`A000201(A000699(n)*A382373(n))`
-/

namespace A161629.P16873208570700327256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A000699 n * A382373 n).toNat

end

end A161629.P16873208570700327256

/-!
# A161630: E.g.f. satisfies: A(x) = exp( x/(1 - x*A(x)) ).

The programs for A161630, there is no canonical definition to state claims against.
-/

/-! ## A161630.P394841384775687967

`A008619(A380015(n))`
-/

namespace A161630.P394841384775687967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A380015 n).toNat

end

end A161630.P394841384775687967

/-! ## A161630.P9527167067785634652

`A004525(A380015(n)+1)`
-/

namespace A161630.P9527167067785634652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A380015 n + 1).toNat

end

end A161630.P9527167067785634652

/-!
# A161631: E.g.f. satisfies A(x) = 1 + x*exp(x*A(x)).

The programs for A161631, there is no canonical definition to state claims against.
-/

/-! ## A161631.P6956821978204494519

`A028310(n)*A125500(abs(1-n))`
-/

namespace A161631.P6956821978204494519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A125500 |1 - (n : ℤ)|.toNat

end

end A161631.P6956821978204494519

/-! ## A161631.P6814012208293982549

`A369090(A002289(n)+n)`
-/

namespace A161631.P6814012208293982549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369090 (A002289 n + (n : ℤ)).toNat

end

end A161631.P6814012208293982549

/-! ## A161631.P1087153386405542133

`A369090(A057110(n+1)^n+n)`
-/

namespace A161631.P1087153386405542133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369090 (A057110 (n + 1) ^ n + (n : ℤ)).toNat

end

end A161631.P1087153386405542133

/-!
# A161632: E.g.f. satisfies A(x) = (1 + x*exp(x*A(x)))^2.

The programs for A161632, there is no canonical definition to state claims against.
-/

/-! ## A161632.P16411356120395448565

`A245092(A316654(n+1)+A010049(n))`
-/

namespace A161632.P16411356120395448565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A316654 (n + 1) + A010049 n).toNat

end

end A161632.P16411356120395448565

/-! ## A161632.P4406997437091601472

`A376573(A316654(n+1))-A025877(n)`
-/

namespace A161632.P4406997437091601472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376573 (A316654 (n + 1)).toNat - A025877 n

end

end A161632.P4406997437091601472

/-!
# A161633: E.g.f. satisfies A(x) = 1/(1 - x*exp(x*A(x))).

The programs for A161633, there is no canonical definition to state claims against.
-/

/-! ## A161633.P7991697776952328870

`A301371(n)+A249345(A276978(n+1))`
-/

namespace A161633.P7991697776952328870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301371 n + A249345 (A276978 (n + 1)).toNat

end

end A161633.P7991697776952328870

/-!
# A161634: G.f. satisfies A(x) = 1/(1 - x*(1 + x*A(x))^2).

The programs for A161634, there is no canonical definition to state claims against.
-/

/-! ## A161634.P4316807195897862815

`A195177(A339063(n)+n)`
-/

namespace A161634.P4316807195897862815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A339063 n + (n : ℤ)).toNat

end

end A161634.P4316807195897862815

/-! ## A161634.P4718536712315337699

`A034887(A071736(n)+n-A071738(n))`
-/

namespace A161634.P4718536712315337699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A071736 n + ((n : ℤ) - A071738 n)).toNat

end

end A161634.P4718536712315337699

/-! ## A161634.P5553917198984183449

`A034887(n-(A071738(n)-A071736(n)))`
-/

namespace A161634.P5553917198984183449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 ((n : ℤ) - (A071738 n - A071736 n)).toNat

end

end A161634.P5553917198984183449

/-!
# A161635: E.g.f. satisfies A(x) = exp( x/(1 - x*A(x))^2 ).

The programs for A161635, there is no canonical definition to state claims against.
-/

/-! ## A161635.P11023763185611078929

`or(1, A339059((2*n)²+n))`
-/

namespace A161635.P11023763185611078929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A339059 ((2 * n) ^ 2 + n))

end

end A161635.P11023763185611078929

/-!
# A161637: G.f.: A(x) = exp( Sum_{n>=1} x^n/(1 - 2^(n^2)*x^n)/n ).

The programs for A161637, there is no canonical definition to state claims against.
-/

/-! ## A161637.P5382371937243509261

`or(1, A165601(A330860(n)))`
-/

namespace A161637.P5382371937243509261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A165601 (A330860 n).toNat)

end

end A161637.P5382371937243509261

/-! ## A161637.P10896869450579915063

`A165601(A330860(n))+A089361(n+1)`
-/

namespace A161637.P10896869450579915063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165601 (A330860 n).toNat + A089361 (n + 1)

end

end A161637.P10896869450579915063

/-!
# A161638: The largest number of steps in Euclid's algorithm applied to A157807(n) and A157813(n).

The programs for A161638, there is no canonical definition to state claims against.
-/

/-! ## A161638.P1452922268555385070

`A001222(A001223(A057468(n+1))+A000720(n+1))`
-/

namespace A161638.P1452922268555385070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001223 (A057468 (n + 1)).toNat + A000720 (n + 1)).toNat

end

end A161638.P1452922268555385070

/-! ## A161638.P13049424526942036408

`A001221(A268740(2*(n+2))+char[comp[n²-2]])`
-/

namespace A161638.P13049424526942036408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A268740 (2 * (n + 2)) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A161638.P13049424526942036408

/-! ## A161638.P1205503544215779121

`A124765(A242336(n+1))+A025460(n)`
-/

namespace A161638.P1205503544215779121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A242336 (n + 1)).toNat + A025460 n

end

end A161638.P1205503544215779121

/-! ## A161638.P15507364460486054454

`A001221(or(A003215(2*n+1), A295198(n+1)))`
-/

namespace A161638.P15507364460486054454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A003215 (2 * n + 1)) (A295198 (n + 1))).toNat

end

end A161638.P15507364460486054454

/-! ## A161638.P1628785534619659709

`A005090(A208354(n))+A000188(A003557(n+1))`
-/

namespace A161638.P1628785534619659709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005090 (A208354 n).toNat + A000188 (A003557 (n + 1)).toNat

end

end A161638.P1628785534619659709

/-!
# A161639: Positions n such that A010060(n) = A010060(n+8).

The programs for A161639, the canonical program `A161639.P4052514948824096861` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161639 has offset 1).

The definition of A161639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161639.P11685552111866041405

`eq[0, A245187(floor(n/4))]`
-/

namespace A161639.P11685552111866041405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245187 ⌊(n : ℚ) / 4⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161639.P11685552111866041405

namespace A161639

/-- `eq[0, A245187(floor(n/4))]` -/
def P11685552111866041405.Spec : Prop :=
  ∀ n, (P11685552111866041405.a n : ℤ) = A161639 (n + 1)

end A161639

/-! ## A161639.P4052514948824096861

`eq[1, A001511(A001511(floor(n/8)+1)+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A161639

/-- `eq[1, A001511(A001511(floor(n/8)+1)+1)]` -/
def P4052514948824096861.Spec : Prop :=
  ∀ n, (P4052514948824096861.a n : ℤ) = A161639 (n + 1)

theorem P4052514948824096861.correct : P4052514948824096861.Spec := by
  intro n
  simp only [A161639, Nat.add_sub_cancel]

end A161639

/-! ## A161639.P11863161344684482005

`eq[A010060(n+8), A010060(n)]`
-/

namespace A161639.P11863161344684482005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (n + 8)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161639.P11863161344684482005

namespace A161639

/-- `eq[A010060(n+8), A010060(n)]` -/
def P11863161344684482005.Spec : Prop :=
  ∀ n, (P11863161344684482005.a n : ℤ) = A161639 (n + 1)

end A161639

/-! ## A161639.P17569059896922974338

`comp[A161673(n+1)]`
-/

namespace A161639.P17569059896922974338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A161639.P17569059896922974338

namespace A161639

/-- `comp[A161673(n+1)]` -/
def P17569059896922974338.Spec : Prop :=
  ∀ n, (P17569059896922974338.a n : ℤ) = A161639 (n + 1)

end A161639

/-! ## A161639.P10562318019975107518

`eq[1, A039963(or(6, n))+1]`
-/

namespace A161639.P10562318019975107518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (Nat.lor 6 n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161639.P10562318019975107518

namespace A161639

/-- `eq[1, A039963(or(6, n))+1]` -/
def P10562318019975107518.Spec : Prop :=
  ∀ n, (P10562318019975107518.a n : ℤ) = A161639 (n + 1)

end A161639

/-! ## A161639.P9295914597389743611

`eq[1, A091297(or(6, n)+1)]`
-/

namespace A161639.P9295914597389743611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091297 (Nat.lor 6 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161639.P9295914597389743611

namespace A161639

/-- `eq[1, A091297(or(6, n)+1)]` -/
def P9295914597389743611.Spec : Prop :=
  ∀ n, (P9295914597389743611.a n : ℤ) = A161639 (n + 1)

end A161639

/-! ## A161639.P11562142669988015296

`eq[2, A185447(A053388(n+1))]`
-/

namespace A161639.P11562142669988015296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185447 (A053388 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161639.P11562142669988015296

namespace A161639

/-- `eq[2, A185447(A053388(n+1))]` -/
def P11562142669988015296.Spec : Prop :=
  ∀ n, (P11562142669988015296.a n : ℤ) = A161639 (n + 1)

end A161639

/-! ## A161639.P8452807149164118775

`eq[2, A061393(A053388(n+1)+1)]`
-/

namespace A161639.P8452807149164118775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 (A053388 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161639.P8452807149164118775

namespace A161639

/-- `eq[2, A061393(A053388(n+1)+1)]` -/
def P8452807149164118775.Spec : Prop :=
  ∀ n, (P8452807149164118775.a n : ℤ) = A161639 (n + 1)

end A161639

/-! ## A161639.P9916313921555721440

`eq[2, A001511(A001511(or(7, n)+1)²+1)]`
-/

namespace A161639.P9916313921555721440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A001511 (Nat.lor 7 n + 1) ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161639.P9916313921555721440

namespace A161639

/-- `eq[2, A001511(A001511(or(7, n)+1)²+1)]` -/
def P9916313921555721440.Spec : Prop :=
  ∀ n, (P9916313921555721440.a n : ℤ) = A161639 (n + 1)

end A161639

/-! ## A161639.P12850226022916785535

`eq[A001285(n+8), A001285(n)]`
-/

namespace A161639.P12850226022916785535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (n + 8)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161639.P12850226022916785535

namespace A161639

/-- `eq[A001285(n+8), A001285(n)]` -/
def P12850226022916785535.Spec : Prop :=
  ∀ n, (P12850226022916785535.a n : ℤ) = A161639 (n + 1)

end A161639

/-!
# A161641: Positions n such that A010060(n) + A010060(n+4) = 1.

The programs for A161641, the canonical program `A161641.P16868169590258597238` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161641 has offset 1).

The definition of A161641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161641.P1571144438820973616

`comp[A161627(n+1)]`
-/

namespace A161641.P1571144438820973616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A161641.P1571144438820973616

namespace A161641

/-- `comp[A161627(n+1)]` -/
def P1571144438820973616.Spec : Prop :=
  ∀ n, (P1571144438820973616.a n : ℤ) = A161641 (n + 1)

end A161641

/-! ## A161641.P16868169590258597238

`eq[0, A096268(floor(n/4))]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A161641

/-- `eq[0, A096268(floor(n/4))]` -/
def P16868169590258597238.Spec : Prop :=
  ∀ n, (P16868169590258597238.a n : ℤ) = A161641 (n + 1)

theorem P16868169590258597238.correct : P16868169590258597238.Spec := by
  intro n
  simp only [A161641, Nat.add_sub_cancel]

end A161641

/-! ## A161641.P5527301718024598620

`lt[A245187(floor(n/4)), 2]`
-/

namespace A161641.P5527301718024598620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245187 ⌊(n : ℚ) / 4⌋.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A161641.P5527301718024598620

namespace A161641

/-- `lt[A245187(floor(n/4)), 2]` -/
def P5527301718024598620.Spec : Prop :=
  ∀ n, (P5527301718024598620.a n : ℤ) = A161641 (n + 1)

end A161641

/-! ## A161641.P8309324543115918687

`eq[1, A035263(or(3, n)+1)]`
-/

namespace A161641.P8309324543115918687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (Nat.lor 3 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161641.P8309324543115918687

namespace A161641

/-- `eq[1, A035263(or(3, n)+1)]` -/
def P8309324543115918687.Spec : Prop :=
  ∀ n, (P8309324543115918687.a n : ℤ) = A161641 (n + 1)

end A161641

/-! ## A161641.P1750267167469458488

`eq[(n-a(floor(n/2)))%2, A010060(n+4)]` with `a(0)=1`
-/

namespace A161641.P1750267167469458488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.tmod ((n : ℤ) - f1 ⌊(n : ℚ) / 2⌋.toNat) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161641.P1750267167469458488

namespace A161641

/-- `eq[(n-a(floor(n/2)))%2, A010060(n+4)]` -/
def P1750267167469458488.Spec : Prop :=
  ∀ n, (P1750267167469458488.a n : ℤ) = A161641 (n + 1)

end A161641

/-! ## A161641.P11979084402525926053

`comp[eq[A010060(n+4), A010060(n)]]`
-/

namespace A161641.P11979084402525926053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (n + 4)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A161641.P11979084402525926053

namespace A161641

/-- `comp[eq[A010060(n+4), A010060(n)]]` -/
def P11979084402525926053.Spec : Prop :=
  ∀ n, (P11979084402525926053.a n : ℤ) = A161641 (n + 1)

end A161641

/-! ## A161641.P6646828651116402812

`∪[A047476(n+1), A161639(n+1)]`
-/

namespace A161641.P6646828651116402812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161641.P6646828651116402812

namespace A161641

/-- `∪[A047476(n+1), A161639(n+1)]` -/
def P6646828651116402812.Spec : Prop :=
  ∀ n, (P6646828651116402812.a n : ℤ) = A161641 (n + 1)

end A161641

/-! ## A161641.P1091786390170219166

`∪[A081706(n+1)-2, A081706(n+1)]`
-/

namespace A161641.P1091786390170219166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081706 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161641.P1091786390170219166

namespace A161641

/-- `∪[A081706(n+1)-2, A081706(n+1)]` -/
def P1091786390170219166.Spec : Prop :=
  ∀ n, (P1091786390170219166.a n : ℤ) = A161641 (n + 1)

end A161641

/-! ## A161641.P13819308424563038485

`lt[A007814(A072078(and(n+4, -(n+1)))), 1]`
-/

namespace A161641.P13819308424563038485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A072078 (Int.land (n + 4 : ℤ) (-(n + 1 : ℤ))).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A161641.P13819308424563038485

namespace A161641

/-- `lt[A007814(A072078(and(n+4, -(n+1)))), 1]` -/
def P13819308424563038485.Spec : Prop :=
  ∀ n, (P13819308424563038485.a n : ℤ) = A161641 (n + 1)

end A161641

/-! ## A161641.P17802272365344071315

`eq[1, A039963(A004526(n))]`
-/

namespace A161641.P17802272365344071315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (A004526 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161641.P17802272365344071315

namespace A161641

/-- `eq[1, A039963(A004526(n))]` -/
def P17802272365344071315.Spec : Prop :=
  ∀ n, (P17802272365344071315.a n : ℤ) = A161641 (n + 1)

end A161641

/-! ## A161641.P10322780556443518322

`eq[1, A285384(A002265(n)+2)]`
-/

namespace A161641.P10322780556443518322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285384 (A002265 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161641.P10322780556443518322

namespace A161641

/-- `eq[1, A285384(A002265(n)+2)]` -/
def P10322780556443518322.Spec : Prop :=
  ∀ n, (P10322780556443518322.a n : ℤ) = A161641 (n + 1)

end A161641

/-! ## A161641.P7864577750377638571

`eq[1, A091297(A091297(n+2)+n+1)]`
-/

namespace A161641.P7864577750377638571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091297 (A091297 (n + 2) + (n : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161641.P7864577750377638571

namespace A161641

/-- `eq[1, A091297(A091297(n+2)+n+1)]` -/
def P7864577750377638571.Spec : Prop :=
  ∀ n, (P7864577750377638571.a n : ℤ) = A161641 (n + 1)

end A161641

/-! ## A161641.P6650978905907961761

`eq[-A106400(n+4), A106400(n)]`
-/

namespace A161641.P6650978905907961761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A106400 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161641.P6650978905907961761

namespace A161641

/-- `eq[-A106400(n+4), A106400(n)]` -/
def P6650978905907961761.Spec : Prop :=
  ∀ n, (P6650978905907961761.a n : ℤ) = A161641 (n + 1)

end A161641

/-! ## A161641.P8830337635484058304

`lt[A129308(xor(n, n+4)), 2]`
-/

namespace A161641.P8830337635484058304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (Nat.xor n (n + 4))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A161641.P8830337635484058304

namespace A161641

/-- `lt[A129308(xor(n, n+4)), 2]` -/
def P8830337635484058304.Spec : Prop :=
  ∀ n, (P8830337635484058304.a n : ℤ) = A161641 (n + 1)

end A161641

/-! ## A161641.P4608222607643580984

`A161673(Δ[n²])/2`
-/

namespace A161641.P4608222607643580984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161673 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A161641.P4608222607643580984

namespace A161641

/-- `A161673(Δ[n²])/2` -/
def P4608222607643580984.Spec : Prop :=
  ∀ n, P4608222607643580984.a n = (A161641 (n + 1) : ℚ)

end A161641

/-! ## A161641.P14179960776474105120

`eq[0, A053387(A053387(2*(n+1)))]`
-/

namespace A161641.P14179960776474105120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053387 (A053387 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161641.P14179960776474105120

namespace A161641

/-- `eq[0, A053387(A053387(2*(n+1)))]` -/
def P14179960776474105120.Spec : Prop :=
  ∀ n, (P14179960776474105120.a n : ℤ) = A161641 (n + 1)

end A161641

/-! ## A161641.P12629259459668643290

`eq[2, A061393(A053388(2*(n+1)))]`
-/

namespace A161641.P12629259459668643290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 (A053388 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161641.P12629259459668643290

namespace A161641

/-- `eq[2, A061393(A053388(2*(n+1)))]` -/
def P12629259459668643290.Spec : Prop :=
  ∀ n, (P12629259459668643290.a n : ℤ) = A161641 (n + 1)

end A161641

/-!
# A161642: Triangle (by rows): T(n,k) = A007318(n,k) / A003989(n+1,k+1).

The programs for A161642, the canonical program `A161642.P15049293823349012266` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161642 has offset 0).

The definition of A161642 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161642.P7180652954190821994

`A007318(n)/A003989(n+1)`
-/

namespace A161642.P7180652954190821994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A003989 (n + 1) : ℚ)

end

end A161642.P7180652954190821994

namespace A161642

/-- `A007318(n)/A003989(n+1)` -/
def P7180652954190821994.Spec : Prop :=
  ∀ n, P7180652954190821994.a n = (A161642 n : ℚ)

end A161642

/-! ## A161642.P5072706431590307779

`abs(A108086(n)/A003989(n+1))`
-/

namespace A161642.P5072706431590307779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A108086 n : ℚ) / (A003989 (n + 1) : ℚ)|

end

end A161642.P5072706431590307779

namespace A161642

/-- `abs(A108086(n)/A003989(n+1))` -/
def P5072706431590307779.Spec : Prop :=
  ∀ n, P5072706431590307779.a n = (A161642 n : ℚ)

end A161642

/-! ## A161642.P8438990976256631581

`abs(A130595(n)/A003989(n+1))`
-/

namespace A161642.P8438990976256631581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A130595 n : ℚ) / (A003989 (n + 1) : ℚ)|

end

end A161642.P8438990976256631581

namespace A161642

/-- `abs(A130595(n)/A003989(n+1))` -/
def P8438990976256631581.Spec : Prop :=
  ∀ n, P8438990976256631581.a n = (A161642 n : ℚ)

end A161642

/-! ## A161642.P1511299326146025638

`sqrt(A008459(n))/A003989(n+1)`
-/

namespace A161642.P1511299326146025638
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) / (A003989 (n + 1) : ℝ)

end

end A161642.P1511299326146025638

namespace A161642

/-- `sqrt(A008459(n))/A003989(n+1)` -/
def P1511299326146025638.Spec : Prop :=
  ∀ n, P1511299326146025638.a n = (A161642 n : ℝ)

end A161642

/-! ## A161642.P17123661911194166329

`Δ[A102363(n)]/A003989(n+1)`
-/

namespace A161642.P17123661911194166329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A003989 (n + 1) : ℚ)

end

end A161642.P17123661911194166329

namespace A161642

/-- `Δ[A102363(n)]/A003989(n+1)` -/
def P17123661911194166329.Spec : Prop :=
  ∀ n, P17123661911194166329.a n = (A161642 n : ℚ)

end A161642

/-! ## A161642.P1216376760214763479

`A001263(n+1)/A050169(n+1)`
-/

namespace A161642.P1216376760214763479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / (A050169 (n + 1) : ℚ)

end

end A161642.P1216376760214763479

namespace A161642

/-- `A001263(n+1)/A050169(n+1)` -/
def P1216376760214763479.Spec : Prop :=
  ∀ n, P1216376760214763479.a n = (A161642 n : ℚ)

end A161642

/-! ## A161642.P15049293823349012266

`gcd(lcm(A007318(n+1), a(n-1)), A007318(n))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A161642

/-- `gcd(lcm(A007318(n+1), a(n-1)), A007318(n))` -/
def P15049293823349012266.Spec : Prop :=
  ∀ n, (P15049293823349012266.a n : ℤ) = A161642 n

theorem P15049293823349012266.correct : P15049293823349012266.Spec := by
  intro n
  simp only [A161642]

end A161642

/-! ## A161642.P3093362130190345021

`A007318(n)/A050873(comp[∑[n]])`
-/

namespace A161642.P3093362130190345021
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A050873 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ)

end

end A161642.P3093362130190345021

namespace A161642

/-- `A007318(n)/A050873(comp[∑[n]])` -/
def P3093362130190345021.Spec : Prop :=
  ∀ n, P3093362130190345021.a n = (A161642 n : ℚ)

end A161642

/-! ## A161642.P14910073057033934237

`A008619(A109128(n))/A003989(n+1)`
-/

namespace A161642.P14910073057033934237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (A109128 n).toNat : ℚ) / (A003989 (n + 1) : ℚ)

end

end A161642.P14910073057033934237

namespace A161642

/-- `A008619(A109128(n))/A003989(n+1)` -/
def P14910073057033934237.Spec : Prop :=
  ∀ n, P14910073057033934237.a n = (A161642 n : ℚ)

end A161642

/-! ## A161642.P13121058117936339419

`lcm(A178252(n+1), A178252(n))`
-/

namespace A161642.P13121058117936339419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A178252 (n + 1)) (A178252 n)

end

end A161642.P13121058117936339419

namespace A161642

/-- `lcm(A178252(n+1), A178252(n))` -/
def P13121058117936339419.Spec : Prop :=
  ∀ n, (P13121058117936339419.a n : ℤ) = A161642 n

end A161642

/-!
# A161643: Sum of all numbers from the smallest up to the largest prime factor of the n-th composite.

The programs for A161643, there is no canonical definition to state claims against.
-/

/-! ## A161643.P6294087838339703072

`A000217(A052369(n+1))-A000217(A056608(n+1)-1)`
-/

namespace A161643.P6294087838339703072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A052369 (n + 1)).toNat - A000217 (A056608 (n + 1) - 1).toNat

end

end A161643.P6294087838339703072

/-! ## A161643.P4338393786244538882

`A000217(A052369(n+1))-C(A056608(n+1), 2)`
-/

namespace A161643.P4338393786244538882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A052369 (n + 1)).toNat - (Nat.choose (A056608 (n + 1)).toNat 2 : ℤ)

end

end A161643.P4338393786244538882

/-!
# A161644: Number of ON states after n generations of cellular automaton based on triangles.

The programs for A161644, there is no canonical definition to state claims against.
-/

/-! ## A161644.P1933675033045989727

`∑[A161645(n)]`
-/

namespace A161644.P1933675033045989727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161644.P1933675033045989727

/-! ## A161644.P1976988398979885182

`A161645(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A161644.P1976988398979885182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A161645 n + a (A023443 n).toNat

end

end A161644.P1976988398979885182

/-! ## A161644.P1905560836182109671

`A161645(n)+a(A033999(Δ[n²])+n)` with `a(0)=0`
-/

namespace A161644.P1905560836182109671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A161645 n + a (A033999 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ)).toNat

end

end A161644.P1905560836182109671

/-! ## A161644.P7804940035716894385

`A161645(n)+a(A134824(2*n+3)+n)` with `a(0)=0`
-/

namespace A161644.P7804940035716894385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A161645 n + a (A134824 (2 * n + 3) + (n : ℤ)).toNat

end

end A161644.P7804940035716894385

/-! ## A161644.P9748722556876088596

`A161645(n)+(A069230(A069232(n))-1)*a(n-1)` with `a(0)=0`
-/

namespace A161644.P9748722556876088596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A161645 n + (A069230 (A069232 n).toNat - 1) * a (n - 1)

end

end A161644.P9748722556876088596

/-! ## A161644.P9316223818016753882

`A161645(n)-A001489(a(A023443(n)))` with `a(0)=0`
-/

namespace A161644.P9316223818016753882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A161645 n - A001489 (a (A023443 n).toNat).toNat

end

end A161644.P9316223818016753882

/-!
# A161645: First differences of A161644: number of new ON cells at generation n of the triangular cellular automaton described in A161644.

The programs for A161645, there is no canonical definition to state claims against.
-/

/-! ## A161645.P12389436793312530526

`Δ[A161644(A028310(n)-1)]`
-/

namespace A161645.P12389436793312530526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161644 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161645.P12389436793312530526

/-! ## A161645.P2150237715517043900

`Δ[A161644(A004273(n)-n)]`
-/

namespace A161645.P2150237715517043900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161644 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161645.P2150237715517043900

/-! ## A161645.P3603383269947714694

`Δ[A161644(n-and(1, A139250(n)))]`
-/

namespace A161645.P3603383269947714694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161644 ((n : ℤ) - Int.land 1 (A139250 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161645.P3603383269947714694

/-! ## A161645.P11562716407094247910

`A161644(n)-A161644((n-1)%(n+1))`
-/

namespace A161645.P11562716407094247910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161644 n - A161644 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A161645.P11562716407094247910

/-! ## A161645.P12908079188273930869

`A161644(n)-A161644(A028310(n)-1)`
-/

namespace A161645.P12908079188273930869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161644 n - A161644 (A028310 n - 1).toNat

end

end A161645.P12908079188273930869

/-! ## A161645.P10191957959205348122

`A161644(n)-A161644(A004273(n)-n)`
-/

namespace A161645.P10191957959205348122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161644 n - A161644 (A004273 n - (n : ℤ)).toNat

end

end A161645.P10191957959205348122

/-! ## A161645.P18073845726771420765

`Δ[A161644(A004526(A004273(n)))]`
-/

namespace A161645.P18073845726771420765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161644 (A004526 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161645.P18073845726771420765

/-! ## A161645.P11882202896928513855

`A161644(n)-A161644(log2(A011782(n)))`
-/

namespace A161645.P11882202896928513855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161644 n - A161644 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A161645.P11882202896928513855

/-! ## A161645.P17647884541685031537

`Δ[A161644(log2(A011782(n)))]`
-/

namespace A161645.P17647884541685031537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161644 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161645.P17647884541685031537

/-! ## A161645.P13049036430185257009

`Δ[A161644(A002262(A055998(n)))]`
-/

namespace A161645.P13049036430185257009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161644 (A002262 (A055998 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161645.P13049036430185257009

/-!
# A161649: Number of reduced words of length n in the Weyl group A_36.

The programs for A161649, there is no canonical definition to state claims against.
-/

/-! ## A161649.P10906269406734501184

`∑[A161648(n)+A008683(A163347(n))]-1`
-/

namespace A161649.P10906269406734501184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161648 n + A008683 (A163347 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A161649.P10906269406734501184

/-!
# A161654: a(n) = the largest multiple of {the number of divisors of n} that is <= n.

The programs for A161654, the canonical program `A161654.P13899316953508437492` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161654 has offset 1).

The definition of A161654 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161654.P13899316953508437492

`1-A054008(n+1)+n`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A161654

/-- `1-A054008(n+1)+n` -/
def P13899316953508437492.Spec : Prop :=
  ∀ n, P13899316953508437492.a n = A161654 (n + 1)

theorem P13899316953508437492.correct : P13899316953508437492.Spec := by
  intro n
  simp only [A161654, Nat.add_sub_cancel]

end A161654

/-! ## A161654.P7593788180285511784

`n+1-(n+1)%Δ[A006218(n)]`
-/

namespace A161654.P7593788180285511784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (n + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A161654.P7593788180285511784

namespace A161654

/-- `n+1-(n+1)%Δ[A006218(n)]` -/
def P7593788180285511784.Spec : Prop :=
  ∀ n, P7593788180285511784.a n = A161654 (n + 1)

end A161654

/-! ## A161654.P11394689146968454420

`Δ[A006218(n)]*A078709(n+1)`
-/

namespace A161654.P11394689146968454420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A078709 (n + 1)

end

end A161654.P11394689146968454420

namespace A161654

/-- `Δ[A006218(n)]*A078709(n+1)` -/
def P11394689146968454420.Spec : Prop :=
  ∀ n, P11394689146968454420.a n = A161654 (n + 1)

end A161654

/-! ## A161654.P14732689138272034887

`A000005(n+1)*A078709(n+1)`
-/

namespace A161654.P14732689138272034887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A078709 (n + 1)

end

end A161654.P14732689138272034887

namespace A161654

/-- `A000005(n+1)*A078709(n+1)` -/
def P14732689138272034887.Spec : Prop :=
  ∀ n, P14732689138272034887.a n = A161654 (n + 1)

end A161654

/-! ## A161654.P13448772955342105594

`n+1-A000027(n+1)%A000005(n+1)`
-/

namespace A161654.P13448772955342105594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A000027 (n + 1)) (A000005 (n + 1))

end

end A161654.P13448772955342105594

namespace A161654

/-- `n+1-A000027(n+1)%A000005(n+1)` -/
def P13448772955342105594.Spec : Prop :=
  ∀ n, P13448772955342105594.a n = A161654 (n + 1)

theorem P13448772955342105594.correct : P13448772955342105594.Spec := by
  intro n
  simp only [A161654, Nat.add_sub_cancel, A161654.P13448772955342105594.a, A161654.P13899316953508437492.a, A000005, A000005.P16091521709108585461.a, A000027, A000027.P10331202704469894836.a, A054008, A054008.P12646982696001564694.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A161654

/-! ## A161654.P12476216908821558832

`A008619(2*n)-A054008(A008619(2*n))`
-/

namespace A161654.P12476216908821558832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A054008 (A008619 (2 * n)).toNat

end

end A161654.P12476216908821558832

namespace A161654

/-- `A008619(2*n)-A054008(A008619(2*n))` -/
def P12476216908821558832.Spec : Prop :=
  ∀ n, P12476216908821558832.a n = A161654 (n + 1)

end A161654

/-! ## A161654.P15157759311580261264

`A000005(n+1)*A010766(A000217(n)+A000005(n+1))`
-/

namespace A161654.P15157759311580261264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A010766 (A000217 n + A000005 (n + 1)).toNat

end

end A161654.P15157759311580261264

namespace A161654

/-- `A000005(n+1)*A010766(A000217(n)+A000005(n+1))` -/
def P15157759311580261264.Spec : Prop :=
  ∀ n, P15157759311580261264.a n = A161654 (n + 1)

end A161654

/-! ## A161654.P16988288494092165009

`n+1-A154234(∑[n+1])`
-/

namespace A161654.P16988288494092165009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A154234 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A161654.P16988288494092165009

namespace A161654

/-- `n+1-A154234(∑[n+1])` -/
def P16988288494092165009.Spec : Prop :=
  ∀ n, P16988288494092165009.a n = A161654 (n + 1)

end A161654

/-!
# A161655: a(n) = the smallest multiple of {the number of divisors of n} that is >= n.

The programs for A161655, the canonical program `A161655.P10866109253187541948` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161655 has offset 1).

The definition of A161655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161655.P10866109253187541948

`Δ[A006218(n)]*A334762(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A161655

/-- `Δ[A006218(n)]*A334762(n+1)` -/
def P10866109253187541948.Spec : Prop :=
  ∀ n, P10866109253187541948.a n = A161655 (n + 1)

theorem P10866109253187541948.correct : P10866109253187541948.Spec := by
  intro n
  simp only [A161655, Nat.add_sub_cancel]

end A161655

/-! ## A161655.P14585380043336495900

`A000005(n+1)*A334762(n+1)`
-/

namespace A161655.P14585380043336495900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A334762 (n + 1)

end

end A161655.P14585380043336495900

namespace A161655

/-- `A000005(n+1)*A334762(n+1)` -/
def P14585380043336495900.Spec : Prop :=
  ∀ n, P14585380043336495900.a n = A161655 (n + 1)

end A161655

/-! ## A161655.P6902862859590958760

`A168014(n+1)%A000005(n+1)+n+1`
-/

namespace A161655.P6902862859590958760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168014 (n + 1)) (A000005 (n + 1)) + (n + 1 : ℤ)

end

end A161655.P6902862859590958760

namespace A161655

/-- `A168014(n+1)%A000005(n+1)+n+1` -/
def P6902862859590958760.Spec : Prop :=
  ∀ n, P6902862859590958760.a n = A161655 (n + 1)

end A161655

/-! ## A161655.P11676868470489810065

`A112329(A003961(n+1))*A334762(n+1)`
-/

namespace A161655.P11676868470489810065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (A003961 (n + 1)).toNat * A334762 (n + 1)

end

end A161655.P11676868470489810065

namespace A161655

/-- `A112329(A003961(n+1))*A334762(n+1)` -/
def P11676868470489810065.Spec : Prop :=
  ∀ n, P11676868470489810065.a n = A161655 (n + 1)

end A161655

/-!
# A161656: The largest multiple of {the sum of the distinct prime divisors of n} that is <=n.

The programs for A161656, there is no canonical definition to state claims against.
-/

/-! ## A161656.P6813555825914983656

`A003557(n+1)*A008472(A078599(n+1)²)`
-/

namespace A161656.P6813555825914983656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A008472 (A078599 (n + 1) ^ 2).toNat

end

end A161656.P6813555825914983656

/-! ## A161656.P617944484040562869

`A008472(n+1)%A236123(2*n+1)*A003557(n+1)`
-/

namespace A161656.P617944484040562869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008472 (n + 1)) (A236123 (2 * n + 1)) * A003557 (n + 1)

end

end A161656.P617944484040562869

/-! ## A161656.P10475983260817045160

`A103517(n)-(A122411(n+1)+A010057(A035597(n)))`
-/

namespace A161656.P10475983260817045160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n - (A122411 (n + 1) + A010057 (A035597 n).toNat)

end

end A161656.P10475983260817045160

/-! ## A161656.P13718342903868747176

`(A103517(n)-A122411(n+1))%A020915(A001845(n))`
-/

namespace A161656.P13718342903868747176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103517 n - A122411 (n + 1)) (A020915 (A001845 n).toNat)

end

end A161656.P13718342903868747176

/-! ## A161656.P14323562191290702862

`A003557(n+1)*A008472(A361266(n+1))`
-/

namespace A161656.P14323562191290702862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A008472 (A361266 (n + 1)).toNat

end

end A161656.P14323562191290702862

/-!
# A161657: a(n) = the smallest multiple of {the sum of the distinct prime divisors of n} that is >= n.

The programs for A161657, there is no canonical definition to state claims against.
-/

/-! ## A161657.P3012937016264802525

`A008472(n+2)*A171453(A187829(n+2))`
-/

namespace A161657.P3012937016264802525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 2) * A171453 (A187829 (n + 2)).toNat

end

end A161657.P3012937016264802525

/-!
# A161658: a(n) = the largest multiple of {the sum of the prime-factorization exponents of n} that is <= n.

The programs for A161658, the canonical program `A161658.P13515500336823959883` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161658 has offset 1).

The definition of A161658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161658.P13515500336823959883

`n+1-(n+1)%A178914(A178914(A001222(n+1)))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A161658

/-- `n+1-(n+1)%A178914(A178914(A001222(n+1)))` -/
def P13515500336823959883.Spec : Prop :=
  ∀ n, P13515500336823959883.a n = A161658 (n + 1)

theorem P13515500336823959883.correct : P13515500336823959883.Spec := by
  intro n
  simp only [A161658, Nat.add_sub_cancel]

end A161658

/-!
# A161659: a(n) = the smallest multiple of {the sum of the prime-factorization exponents of n} that is >= n.

The programs for A161659, the canonical program `A161659.P8338230100198488293` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161659 has offset 2).

The definition of A161659 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161659.P8338230100198488293

`ceil((n+2)/A001222(n+2))*A001222(n+2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A161659

/-- `ceil((n+2)/A001222(n+2))*A001222(n+2)` -/
def P8338230100198488293.Spec : Prop :=
  ∀ n, P8338230100198488293.a n = A161659 (n + 2)

theorem P8338230100198488293.correct : P8338230100198488293.Spec := by
  intro n
  simp only [A161659, Nat.add_sub_cancel]

end A161659

/-! ## A161659.P10521818764052922521

`A245933(A026148(2*n+5))+n+1`
-/

namespace A161659.P10521818764052922521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245933 (A026148 (2 * n + 5)).toNat + (n + 1 : ℤ)

end

end A161659.P10521818764052922521

namespace A161659

/-- `A245933(A026148(2*n+5))+n+1` -/
def P10521818764052922521.Spec : Prop :=
  ∀ n, P10521818764052922521.a n = A161659 (n + 2)

end A161659

/-! ## A161659.P895468987469251863

`A007412(n+1)-A000035(A210714(n))`
-/

namespace A161659.P895468987469251863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1) - A000035 (A210714 n).toNat

end

end A161659.P895468987469251863

namespace A161659

/-- `A007412(n+1)-A000035(A210714(n))` -/
def P895468987469251863.Spec : Prop :=
  ∀ n, P895468987469251863.a n = A161659 (n + 2)

end A161659

/-! ## A161659.P6312897976359397698

`A093958(A312274(n))+2+n`
-/

namespace A161659.P6312897976359397698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093958 (A312274 n).toNat + 2 + (n : ℤ)

end

end A161659.P6312897976359397698

namespace A161659

/-- `A093958(A312274(n))+2+n` -/
def P6312897976359397698.Spec : Prop :=
  ∀ n, P6312897976359397698.a n = A161659 (n + 2)

end A161659

/-! ## A161659.P15036339174532848855

`A056832(A027022(n+1))+1+n`
-/

namespace A161659.P15036339174532848855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (A027022 (n + 1)).toNat + 1 + (n : ℤ)

end

end A161659.P15036339174532848855

namespace A161659

/-- `A056832(A027022(n+1))+1+n` -/
def P15036339174532848855.Spec : Prop :=
  ∀ n, P15036339174532848855.a n = A161659 (n + 2)

end A161659

/-!
# A161660: a(1)=1; a(n) = largest multiple of {number of divisors of a(n-1)} that is <= n.

The programs for A161660, the canonical program `A161660.P6730900686295854784` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161660 has offset 1).

The definition of A161660 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161660.P6730900686295854784

`1-(n+1)%A000005(a(n-1))+n` with `a(0)=1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A161660

/-- `1-(n+1)%A000005(a(n-1))+n` -/
def P6730900686295854784.Spec : Prop :=
  ∀ n, P6730900686295854784.a n = A161660 (n + 1)

theorem P6730900686295854784.correct : P6730900686295854784.Spec := by
  intro n
  simp only [A161660, Nat.add_sub_cancel]

end A161660

/-! ## A161660.P17564585120754144959

`n+1-(n+1)%A000005(a(A023443(n)))` with `a(0)=1`
-/

namespace A161660.P17564585120754144959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) - Int.tmod (n + 1 : ℤ) (A000005 (a (A023443 n).toNat).toNat)

end

end A161660.P17564585120754144959

namespace A161660

/-- `n+1-(n+1)%A000005(a(A023443(n)))` -/
def P17564585120754144959.Spec : Prop :=
  ∀ n, P17564585120754144959.a n = A161660 (n + 1)

end A161660

/-!
# A161664: a(n) = Sum_{i=1..n} (i - d(i)), where d(n) is the number of divisors of n (A000005).

The programs for A161664, the canonical program `A161664.P17260438586018701071` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161664 has offset 1).

The definition of A161664 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161664.P17260438586018701071

`A000217(n+1)-A006218(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A161664

/-- `A000217(n+1)-A006218(n+1)` -/
def P17260438586018701071.Spec : Prop :=
  ∀ n, P17260438586018701071.a n = A161664 (n + 1)

theorem P17260438586018701071.correct : P17260438586018701071.Spec := by
  intro n
  simp only [A161664, Nat.add_sub_cancel]

end A161664

/-! ## A161664.P9603415875579834386

`∑[n-∑{d}[n+1, n²%#]]`
-/

namespace A161664.P9603415875579834386
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), n ^ 2 % d : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161664.P9603415875579834386

namespace A161664

/-- `∑[n-∑{d}[n+1, n²%#]]` -/
def P9603415875579834386.Spec : Prop :=
  ∀ n, P9603415875579834386.a n = A161664 (n + 1)

end A161664

/-! ## A161664.P4945850630135586564

`∑[n+1-∏{e}[n+1, #+1]]`
-/

namespace A161664.P4945850630135586564
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161664.P4945850630135586564

namespace A161664

/-- `∑[n+1-∏{e}[n+1, #+1]]` -/
def P4945850630135586564.Spec : Prop :=
  ∀ n, P4945850630135586564.a n = A161664 (n + 1)

end A161664

/-! ## A161664.P12512936347505326543

`∑[n+1-∑{d}[n+1, gcd(n, #)]]`
-/

namespace A161664.P12512936347505326543
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), Nat.gcd n d : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161664.P12512936347505326543

namespace A161664

/-- `∑[n+1-∑{d}[n+1, gcd(n, #)]]` -/
def P12512936347505326543.Spec : Prop :=
  ∀ n, P12512936347505326543.a n = A161664 (n + 1)

end A161664

/-! ## A161664.P17517598516047363446

`∑[∑{d}[n+1, lcm(#, n+1)]%(n+2)-1]`
-/

namespace A161664.P17517598516047363446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f2 n), Nat.lcm d (n + 1)) % (n + 2) : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161664.P17517598516047363446

namespace A161664

/-- `∑[∑{d}[n+1, lcm(#, n+1)]%(n+2)-1]` -/
def P17517598516047363446.Spec : Prop :=
  ∀ n, P17517598516047363446.a n = A161664 (n + 1)

end A161664

/-! ## A161664.P9914474225688857690

`∑[A049820(n+1)]`
-/

namespace A161664.P9914474225688857690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161664.P9914474225688857690

namespace A161664

/-- `∑[A049820(n+1)]` -/
def P9914474225688857690.Spec : Prop :=
  ∀ n, P9914474225688857690.a n = A161664 (n + 1)

end A161664

/-! ## A161664.P11688283722154430845

`∑[A062968(n+1)-1]`
-/

namespace A161664.P11688283722154430845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062968 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161664.P11688283722154430845

namespace A161664

/-- `∑[A062968(n+1)-1]` -/
def P11688283722154430845.Spec : Prop :=
  ∀ n, P11688283722154430845.a n = A161664 (n + 1)

end A161664

/-! ## A161664.P7161621652775796808

`∑[A059292(n+1)-2]`
-/

namespace A161664.P7161621652775796808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059292 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161664.P7161621652775796808

namespace A161664

/-- `∑[A059292(n+1)-2]` -/
def P7161621652775796808.Spec : Prop :=
  ∀ n, P7161621652775796808.a n = A161664 (n + 1)

end A161664

/-! ## A161664.P18058952205697454470

`(n+1)²-A397992(n)`
-/

namespace A161664.P18058952205697454470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A397992 n

end

end A161664.P18058952205697454470

namespace A161664

/-- `(n+1)²-A397992(n)` -/
def P18058952205697454470.Spec : Prop :=
  ∀ n, P18058952205697454470.a n = A161664 (n + 1)

end A161664

/-! ## A161664.P12109513308135925725

`∑[n]-A002541(n+1)`
-/

namespace A161664.P12109513308135925725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A002541 (n + 1)

end

end A161664.P12109513308135925725

namespace A161664

/-- `∑[n]-A002541(n+1)` -/
def P12109513308135925725.Spec : Prop :=
  ∀ n, P12109513308135925725.a n = A161664 (n + 1)

end A161664

/-! ## A161664.P127460361340284995

`∑[n-A032741(n+1)]`
-/

namespace A161664.P127460361340284995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A032741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161664.P127460361340284995

namespace A161664

/-- `∑[n-A032741(n+1)]` -/
def P127460361340284995.Spec : Prop :=
  ∀ n, P127460361340284995.a n = A161664 (n + 1)

end A161664

/-! ## A161664.P18068508998872138779

`∑[n-A325765(n)]+1`
-/

namespace A161664.P18068508998872138779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A325765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A161664.P18068508998872138779

namespace A161664

/-- `∑[n-A325765(n)]+1` -/
def P18068508998872138779.Spec : Prop :=
  ∀ n, P18068508998872138779.a n = A161664 (n + 1)

end A161664

/-! ## A161664.P8348757932179348280

`A140652(n+1)-(n+1)`
-/

namespace A161664.P8348757932179348280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140652 (n + 1) - (n + 1 : ℤ)

end

end A161664.P8348757932179348280

namespace A161664

/-- `A140652(n+1)-(n+1)` -/
def P8348757932179348280.Spec : Prop :=
  ∀ n, P8348757932179348280.a n = A161664 (n + 1)

end A161664

/-! ## A161664.P12596653176994814018

`C(n, 2)-A325459(n+1)`
-/

namespace A161664.P12596653176994814018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - A325459 (n + 1)

end

end A161664.P12596653176994814018

namespace A161664

/-- `C(n, 2)-A325459(n+1)` -/
def P12596653176994814018.Spec : Prop :=
  ∀ n, P12596653176994814018.a n = A161664 (n + 1)

end A161664

/-! ## A161664.P6259173220019704741

`∑[∑[1-A341062(n+1)]]`
-/

namespace A161664.P6259173220019704741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A341062 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161664.P6259173220019704741

namespace A161664

/-- `∑[∑[1-A341062(n+1)]]` -/
def P6259173220019704741.Spec : Prop :=
  ∀ n, P6259173220019704741.a n = A161664 (n + 1)

end A161664

/-! ## A161664.P17739286258568976650

`∑[n-log2(A100577(n+1))]`
-/

namespace A161664.P17739286258568976650
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.logb 2 (A100577 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161664.P17739286258568976650

namespace A161664

/-- `∑[n-log2(A100577(n+1))]` -/
def P17739286258568976650.Spec : Prop :=
  ∀ n, P17739286258568976650.a n = (A161664 (n + 1) : ℝ)

end A161664

/-! ## A161664.P1618728268422193562

`∑[n+1-Δ[A006218(n)]]`
-/

namespace A161664.P1618728268422193562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161664.P1618728268422193562

namespace A161664

/-- `∑[n+1-Δ[A006218(n)]]` -/
def P1618728268422193562.Spec : Prop :=
  ∀ n, P1618728268422193562.a n = A161664 (n + 1)

end A161664

/-! ## A161664.P8386098052955219757

`∑[1-A000005(n+1)+n]`
-/

namespace A161664.P8386098052955219757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000005 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161664.P8386098052955219757

namespace A161664

/-- `∑[1-A000005(n+1)+n]` -/
def P8386098052955219757.Spec : Prop :=
  ∀ n, P8386098052955219757.a n = A161664 (n + 1)

end A161664

/-! ## A161664.P5448382418818281310

`∑[A286002(n+1)-(n+1)]`
-/

namespace A161664.P5448382418818281310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286002 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161664.P5448382418818281310

namespace A161664

/-- `∑[A286002(n+1)-(n+1)]` -/
def P5448382418818281310.Spec : Prop :=
  ∀ n, P5448382418818281310.a n = A161664 (n + 1)

end A161664

/-! ## A161664.P9623097373527507180

`∑[n-A338117(2*(n+1))]`
-/

namespace A161664.P9623097373527507180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A338117 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161664.P9623097373527507180

namespace A161664

/-- `∑[n-A338117(2*(n+1))]` -/
def P9623097373527507180.Spec : Prop :=
  ∀ n, P9623097373527507180.a n = A161664 (n + 1)

end A161664

/-!
# A161665: Primes that can be represented as a sum of 2 and also as a sum of 3 distinct nonzero squares, sharing a term in the sums.

The programs for A161665, there is no canonical definition to state claims against.
-/

/-! ## A161665.P8506042657561799066

`∩[A034847(n+1), A337803(n+1)]`
-/

namespace A161665.P8506042657561799066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161665.P8506042657561799066

/-! ## A161665.P11894892976952199462

`∩[A034847(n+1), A158290(n+1)]`
-/

namespace A161665.P11894892976952199462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161665.P11894892976952199462

/-!
# A161666: Smallest of 4 consecutive composite numbers which sum up to prime.

The programs for A161666, the canonical program `A161666.P4806280190446995968` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161666 has offset 1).

The definition of A161666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161666.P4806280190446995968

`round(A060329(n+1)/4)-2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A161666

/-- `round(A060329(n+1)/4)-2` -/
def P4806280190446995968.Spec : Prop :=
  ∀ n, P4806280190446995968.a n = A161666 (n + 1)

theorem P4806280190446995968.correct : P4806280190446995968.Spec := by
  intro n
  simp only [A161666, Nat.add_sub_cancel]

end A161666

/-! ## A161666.P6634897720613951470

`floor(floor((A060329(A002378(n)/(n+1)+1)-6)/2)/2)`
-/

namespace A161666.P6634897720613951470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A060329 (SequenceMachineLib.roundAway ((A002378 n : ℚ) / (n + 1 : ℚ) + 1)).toNat - 6 : ℚ) / 2⌋ : ℚ) / 2⌋

end

end A161666.P6634897720613951470

namespace A161666

/-- `floor(floor((A060329(A002378(n)/(n+1)+1)-6)/2)/2)` -/
def P6634897720613951470.Spec : Prop :=
  ∀ n, P6634897720613951470.a n = A161666 (n + 1)

end A161666

/-! ## A161666.P15002258063383097317

`A008621(A060329(n+1)-10)`
-/

namespace A161666.P15002258063383097317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A060329 (n + 1) - 10).toNat

end

end A161666.P15002258063383097317

namespace A161666

/-- `A008621(A060329(n+1)-10)` -/
def P15002258063383097317.Spec : Prop :=
  ∀ n, P15002258063383097317.a n = A161666 (n + 1)

end A161666

/-! ## A161666.P5902057030889090067

`A002265(A060329(n+1)-6)`
-/

namespace A161666.P5902057030889090067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A060329 (n + 1) - 6).toNat

end

end A161666.P5902057030889090067

namespace A161666

/-- `A002265(A060329(n+1)-6)` -/
def P5902057030889090067.Spec : Prop :=
  ∀ n, P5902057030889090067.a n = A161666 (n + 1)

end A161666

/-! ## A161666.P3700686051263875392

`A289436(A060329(n+1))-A010693(2*n)`
-/

namespace A161666.P3700686051263875392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289436 (A060329 (n + 1)).toNat - A010693 (2 * n)

end

end A161666.P3700686051263875392

namespace A161666

/-- `A289436(A060329(n+1))-A010693(2*n)` -/
def P3700686051263875392.Spec : Prop :=
  ∀ n, P3700686051263875392.a n = A161666 (n + 1)

end A161666

/-! ## A161666.P9484086348016768521

`A002265(p?[A053767(n+4)-A053767(n)]-6)`
-/

namespace A161666.P9484086348016768521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (n + 4) - A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 6).toNat

end

end A161666.P9484086348016768521

namespace A161666

/-- `A002265(p?[A053767(n+4)-A053767(n)]-6)` -/
def P9484086348016768521.Spec : Prop :=
  ∀ n, P9484086348016768521.a n = A161666 (n + 1)

end A161666

/-! ## A161666.P13134497676426365451

`A002265(p?[A166037(n+7)+A166037(n+9)]-6)`
-/

namespace A161666.P13134497676426365451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 7) + A166037 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 6).toNat

end

end A161666.P13134497676426365451

namespace A161666

/-- `A002265(p?[A166037(n+7)+A166037(n+9)]-6)` -/
def P13134497676426365451.Spec : Prop :=
  ∀ n, P13134497676426365451.a n = A161666 (n + 1)

end A161666

/-! ## A161666.P14744865966148938781

`A002265(p?[A051349(n+10)-A051349(n+6)]-6)`
-/

namespace A161666.P14744865966148938781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (n + 10) - A051349 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 6).toNat

end

end A161666.P14744865966148938781

namespace A161666

/-- `A002265(p?[A051349(n+10)-A051349(n+6)]-6)` -/
def P14744865966148938781.Spec : Prop :=
  ∀ n, P14744865966148938781.a n = A161666 (n + 1)

end A161666

/-! ## A161666.P9279475760466553788

`A002265(p?[A175967(n+11)-A175967(n+7)]-6)`
-/

namespace A161666.P9279475760466553788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175967 (n + 11) - A175967 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 6).toNat

end

end A161666.P9279475760466553788

namespace A161666

/-- `A002265(p?[A175967(n+11)-A175967(n+7)]-6)` -/
def P9279475760466553788.Spec : Prop :=
  ∀ n, P9279475760466553788.a n = A161666 (n + 1)

end A161666

/-!
# A161667: Smallest of 5 consecutive composite numbers which sum up to prime.

The programs for A161667, there is no canonical definition to state claims against.
-/

/-! ## A161667.P11468673621700827424

`A058207(A060330(n+1))-5`
-/

namespace A161667.P11468673621700827424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058207 (A060330 (n + 1)).toNat - 5

end

end A161667.P11468673621700827424

/-! ## A161667.P4338159282370326461

`A058207(p?[A051349(n+5)-A051349(n)])-5`
-/

namespace A161667.P4338159282370326461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (n + 5) - A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058207 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 5

end

end A161667.P4338159282370326461

/-! ## A161667.P9940814076067915820

`A058207(p?[A053767(n+5)-A053767(n)])-5`
-/

namespace A161667.P9940814076067915820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (n + 5) - A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058207 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 5

end

end A161667.P9940814076067915820

/-! ## A161667.P6683076540653906416

`A058207(p?[A166039(n+4)+A166037(n+2)])-5`
-/

namespace A161667.P6683076540653906416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 4) + A166037 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058207 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 5

end

end A161667.P6683076540653906416

/-! ## A161667.P17052565642719646194

`A058207(p?[A175967(n+6)-A175967(n+1)])-5`
-/

namespace A161667.P17052565642719646194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175967 (n + 6) - A175967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058207 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 5

end

end A161667.P17052565642719646194

/-!
# A161669: Sum_{j=k(n)..prime(n)} j where k is the n-th nonprime nonnegative integer.

The programs for A161669, there is no canonical definition to state claims against.
-/

/-! ## A161669.P16275047019480549178

`A034953(n+1)-C(A141468(n+1), 2)`
-/

namespace A161669.P16275047019480549178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) - (Nat.choose (A141468 (n + 1)).toNat 2 : ℤ)

end

end A161669.P16275047019480549178

/-! ## A161669.P16926153625114735472

`A034953(n+1)-C(comp[A000040(n+1)], 2)`
-/

namespace A161669.P16926153625114735472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) - (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 2 : ℤ)

end

end A161669.P16926153625114735472

/-! ## A161669.P6258926880286273076

`A034953(n+1)-C(comp[A020639(n+2)], 2)`
-/

namespace A161669.P6258926880286273076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) - (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 2 : ℤ)

end

end A161669.P6258926880286273076

/-! ## A161669.P2079983809182675857

`A034953(n+1)-C(record[2%A000005(n+2)+n], 2)`
-/

namespace A161669.P2079983809182675857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A000005 (n + 2)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) - (Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2 : ℤ)

end

end A161669.P2079983809182675857

/-! ## A161669.P6020324545546470321

`A034953(n+1)-C(record[(n+1)%(2-A000203(n+1))], 2)`
-/

namespace A161669.P6020324545546470321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (2 - A000203 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) - (Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2 : ℤ)

end

end A161669.P6020324545546470321

/-!
# A161671: a(n) = prime(n) - A141468(n).

The programs for A161671, the canonical program `A161671.P6686431630733255058` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161671 has offset 1).

The definition of A161671 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161671.P6686431630733255058

`A000040(n+1)-A141468(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A161671

/-- `A000040(n+1)-A141468(n+1)` -/
def P6686431630733255058.Spec : Prop :=
  ∀ n, P6686431630733255058.a n = A161671 (n + 1)

theorem P6686431630733255058.correct : P6686431630733255058.Spec := by
  intro n
  simp only [A161671, Nat.add_sub_cancel]

end A161671

/-! ## A161671.P13902817586504139653

`Δ[A007504(n)]-comp[A151800(n)]`
-/

namespace A161671.P13902817586504139653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

end

end A161671.P13902817586504139653

namespace A161671

/-- `Δ[A007504(n)]-comp[A151800(n)]` -/
def P13902817586504139653.Spec : Prop :=
  ∀ n, P13902817586504139653.a n = A161671 (n + 1)

end A161671

/-! ## A161671.P7337031705452380539

`Δ[A007504(n)]-A141468(n+1)`
-/

namespace A161671.P7337031705452380539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A141468 (n + 1)

end

end A161671.P7337031705452380539

namespace A161671

/-- `Δ[A007504(n)]-A141468(n+1)` -/
def P7337031705452380539.Spec : Prop :=
  ∀ n, P7337031705452380539.a n = A161671 (n + 1)

end A161671

/-! ## A161671.P11952746686847172449

`A000040(n+1)-comp[A060264(n)]`
-/

namespace A161671.P11952746686847172449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A161671.P11952746686847172449

namespace A161671

/-- `A000040(n+1)-comp[A060264(n)]` -/
def P11952746686847172449.Spec : Prop :=
  ∀ n, P11952746686847172449.a n = A161671 (n + 1)

end A161671

/-! ## A161671.P2072813241625371702

`A000040(n+1)-comp[A151800(n)]`
-/

namespace A161671.P2072813241625371702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A161671.P2072813241625371702

namespace A161671

/-- `A000040(n+1)-comp[A151800(n)]` -/
def P2072813241625371702.Spec : Prop :=
  ∀ n, P2072813241625371702.a n = A161671 (n + 1)

end A161671

/-! ## A161671.P10650235222436821439

`A000040(n+1)-comp[A162753(n)]`
-/

namespace A161671.P10650235222436821439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A161671.P10650235222436821439

namespace A161671

/-- `A000040(n+1)-comp[A162753(n)]` -/
def P10650235222436821439.Spec : Prop :=
  ∀ n, P10650235222436821439.a n = A161671 (n + 1)

end A161671

/-! ## A161671.P11278831639723664177

`A054546(n+1)+A014237(n+1)`
-/

namespace A161671.P11278831639723664177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1) + A014237 (n + 1)

end

end A161671.P11278831639723664177

namespace A161671

/-- `A054546(n+1)+A014237(n+1)` -/
def P11278831639723664177.Spec : Prop :=
  ∀ n, P11278831639723664177.a n = A161671 (n + 1)

end A161671

/-! ## A161671.P3780734885044496778

`A161811(n+1)+A038529(n+1)`
-/

namespace A161671.P3780734885044496778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161811 (n + 1) + A038529 (n + 1)

end

end A161671.P3780734885044496778

namespace A161671

/-- `A161811(n+1)+A038529(n+1)` -/
def P3780734885044496778.Spec : Prop :=
  ∀ n, P3780734885044496778.a n = A161671 (n + 1)

end A161671

/-! ## A161671.P1245335899844325069

`A014692(n+1)-A173073(n+1)`
-/

namespace A161671.P1245335899844325069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) - A173073 (n + 1)

end

end A161671.P1245335899844325069

namespace A161671

/-- `A014692(n+1)-A173073(n+1)` -/
def P1245335899844325069.Spec : Prop :=
  ∀ n, P1245335899844325069.a n = A161671 (n + 1)

end A161671

/-! ## A161671.P16233075777524401738

`A022797(n+1)-A166037(n+1)`
-/

namespace A161671.P16233075777524401738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022797 (n + 1) - A166037 (n + 1)

end

end A161671.P16233075777524401738

namespace A161671

/-- `A022797(n+1)-A166037(n+1)` -/
def P16233075777524401738.Spec : Prop :=
  ∀ n, P16233075777524401738.a n = A161671 (n + 1)

end A161671

/-! ## A161671.P4800046868003687512

`A064799(n+1)-A161843(n+1)`
-/

namespace A161671.P4800046868003687512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064799 (n + 1) - A161843 (n + 1)

end

end A161671.P4800046868003687512

namespace A161671

/-- `A064799(n+1)-A161843(n+1)` -/
def P4800046868003687512.Spec : Prop :=
  ∀ n, P4800046868003687512.a n = A161671 (n + 1)

end A161671

/-! ## A161671.P6063260989390422592

`A163976(n+1)-A163975(n+1)`
-/

namespace A161671.P6063260989390422592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163976 (n + 1) - A163975 (n + 1)

end

end A161671.P6063260989390422592

namespace A161671

/-- `A163976(n+1)-A163975(n+1)` -/
def P6063260989390422592.Spec : Prop :=
  ∀ n, P6063260989390422592.a n = A161671 (n + 1)

end A161671

/-! ## A161671.P3493736302491719599

`sqrt(A001248(n+1))-A141468(n+1)`
-/

namespace A161671.P3493736302491719599
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) - (A141468 (n + 1) : ℝ)

end

end A161671.P3493736302491719599

namespace A161671

/-- `sqrt(A001248(n+1))-A141468(n+1)` -/
def P3493736302491719599.Spec : Prop :=
  ∀ n, P3493736302491719599.a n = (A161671 (n + 1) : ℝ)

end A161671

/-! ## A161671.P10869180116549130907

`A000040(n+1)-sqrt(A161753(n+1))`
-/

namespace A161671.P10869180116549130907
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℝ) - Real.sqrt (A161753 (n + 1) : ℝ)

end

end A161671.P10869180116549130907

namespace A161671

/-- `A000040(n+1)-sqrt(A161753(n+1))` -/
def P10869180116549130907.Spec : Prop :=
  ∀ n, P10869180116549130907.a n = (A161671 (n + 1) : ℝ)

end A161671

/-! ## A161671.P13659354580749406497

`∑[A054541(n+1)]-A141468(n+1)`
-/

namespace A161671.P13659354580749406497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A141468 (n + 1)

end

end A161671.P13659354580749406497

namespace A161671

/-- `∑[A054541(n+1)]-A141468(n+1)` -/
def P13659354580749406497.Spec : Prop :=
  ∀ n, P13659354580749406497.a n = A161671 (n + 1)

end A161671

/-! ## A161671.P11024407587822301115

`A006093(n+1)+1-A141468(n+1)`
-/

namespace A161671.P11024407587822301115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (1 - A141468 (n + 1))

end

end A161671.P11024407587822301115

namespace A161671

/-- `A006093(n+1)+1-A141468(n+1)` -/
def P11024407587822301115.Spec : Prop :=
  ∀ n, P11024407587822301115.a n = A161671 (n + 1)

end A161671

/-! ## A161671.P2161123829871342831

`A008864(n+1)-(A141468(n+1)+1)`
-/

namespace A161671.P2161123829871342831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - (A141468 (n + 1) + 1)

end

end A161671.P2161123829871342831

namespace A161671

/-- `A008864(n+1)-(A141468(n+1)+1)` -/
def P2161123829871342831.Spec : Prop :=
  ∀ n, P2161123829871342831.a n = A161671 (n + 1)

end A161671

/-! ## A161671.P6127842586278852317

`A014689(n+1)+1-A173073(n+1)`
-/

namespace A161671.P6127842586278852317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) + (1 - A173073 (n + 1))

end

end A161671.P6127842586278852317

namespace A161671

/-- `A014689(n+1)+1-A173073(n+1)` -/
def P6127842586278852317.Spec : Prop :=
  ∀ n, P6127842586278852317.a n = A161671 (n + 1)

end A161671

/-! ## A161671.P15788529215357812189

`A040976(n+1)+2-A141468(n+1)`
-/

namespace A161671.P15788529215357812189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + (2 - A141468 (n + 1))

end

end A161671.P15788529215357812189

namespace A161671

/-- `A040976(n+1)+2-A141468(n+1)` -/
def P15788529215357812189.Spec : Prop :=
  ∀ n, P15788529215357812189.a n = A161671 (n + 1)

end A161671

/-!
# A161672: Half the product of all numbers from A141468(n) up to prime(n).

The programs for A161672, there is no canonical definition to state claims against.
-/

/-! ## A161672.P17363289264815684070

`n*A274709(A281875(n))`
-/

namespace A161672.P17363289264815684070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A274709 (A281875 n).toNat

end

end A161672.P17363289264815684070

/-!
# A161673: Positions n such that A010060(n) + A010060(n+8) = 1.

The programs for A161673, the canonical program `A161673.P1088043651261816536` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161673 has offset 1).

The definition of A161673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161673.P14362189682578352026

`comp[A161639(n+1)]`
-/

namespace A161673.P14362189682578352026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A161673.P14362189682578352026

namespace A161673

/-- `comp[A161639(n+1)]` -/
def P14362189682578352026.Spec : Prop :=
  ∀ n, (P14362189682578352026.a n : ℤ) = A161673 (n + 1)

end A161673

/-! ## A161673.P13142582377454218793

`lt[0, A245187(floor(n/4))]`
-/

namespace A161673.P13142582377454218793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245187 ⌊(n : ℚ) / 4⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161673.P13142582377454218793

namespace A161673

/-- `lt[0, A245187(floor(n/4))]` -/
def P13142582377454218793.Spec : Prop :=
  ∀ n, (P13142582377454218793.a n : ℤ) = A161673 (n + 1)

end A161673

/-! ## A161673.P1088043651261816536

`eq[1, A010060(xor(n, n+8))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A161673

/-- `eq[1, A010060(xor(n, n+8))]` -/
def P1088043651261816536.Spec : Prop :=
  ∀ n, (P1088043651261816536.a n : ℤ) = A161673 (n + 1)

theorem P1088043651261816536.correct : P1088043651261816536.Spec := by
  intro n
  simp only [A161673, Nat.add_sub_cancel]

end A161673

/-! ## A161673.P6050428140169120099

`eq[1, A309873(floor(n/8)+1)]`
-/

namespace A161673.P6050428140169120099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (⌊(n : ℚ) / 8⌋ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161673.P6050428140169120099

namespace A161673

/-- `eq[1, A309873(floor(n/8)+1)]` -/
def P6050428140169120099.Spec : Prop :=
  ∀ n, (P6050428140169120099.a n : ℤ) = A161673 (n + 1)

end A161673

/-! ## A161673.P10092692952842521238

`eq[1, A039963(or(6, n))]`
-/

namespace A161673.P10092692952842521238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (Nat.lor 6 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161673.P10092692952842521238

namespace A161673

/-- `eq[1, A039963(or(6, n))]` -/
def P10092692952842521238.Spec : Prop :=
  ∀ n, (P10092692952842521238.a n : ℤ) = A161673 (n + 1)

end A161673

/-! ## A161673.P2552123309816030379

`eq[2, A061393(A053388(n+1))]`
-/

namespace A161673.P2552123309816030379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 (A053388 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161673.P2552123309816030379

namespace A161673

/-- `eq[2, A061393(A053388(n+1))]` -/
def P2552123309816030379.Spec : Prop :=
  ∀ n, (P2552123309816030379.a n : ℤ) = A161673 (n + 1)

end A161673

/-! ## A161673.P545618818673328602

`eq[2, A185447(A053388(n+1)+1)]`
-/

namespace A161673.P545618818673328602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185447 (A053388 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161673.P545618818673328602

namespace A161673

/-- `eq[2, A185447(A053388(n+1)+1)]` -/
def P545618818673328602.Spec : Prop :=
  ∀ n, (P545618818673328602.a n : ℤ) = A161673 (n + 1)

end A161673

/-! ## A161673.P2426992866833269714

`A115384(eq[A001285(n+17), A010060(n+1)])`
-/

namespace A161673.P2426992866833269714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (n + 17)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A161673.P2426992866833269714

namespace A161673

/-- `A115384(eq[A001285(n+17), A010060(n+1)])` -/
def P2426992866833269714.Spec : Prop :=
  ∀ n, P2426992866833269714.a n = A161673 (n + 1)

end A161673

/-!
# A161674: Positions n such that A010060(n) + A010060(n+2) = 1.

The programs for A161674, the canonical program `A161674.P5419154146212136035` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161674 has offset 1).

The definition of A161674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161674.P5419154146212136035

`lt[0, xor(n, n+2)%3]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A161674

/-- `lt[0, xor(n, n+2)%3]` -/
def P5419154146212136035.Spec : Prop :=
  ∀ n, (P5419154146212136035.a n : ℤ) = A161674 (n + 1)

theorem P5419154146212136035.correct : P5419154146212136035.Spec := by
  intro n
  simp only [A161674, Nat.add_sub_cancel]

end A161674

/-! ## A161674.P11971273574741089977

`eq[1, xor(n, n+2)²%3]`
-/

namespace A161674.P11971273574741089977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 2) ^ 2 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161674.P11971273574741089977

namespace A161674

/-- `eq[1, xor(n, n+2)²%3]` -/
def P11971273574741089977.Spec : Prop :=
  ∀ n, (P11971273574741089977.a n : ℤ) = A161674 (n + 1)

end A161674

/-! ## A161674.P2992201452529350460

`lt[2, and(n+2, -(n+1))%3+1]`
-/

namespace A161674.P2992201452529350460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n + 2 : ℤ) (-(n + 1 : ℤ))) 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161674.P2992201452529350460

namespace A161674

/-- `lt[2, and(n+2, -(n+1))%3+1]` -/
def P2992201452529350460.Spec : Prop :=
  ∀ n, (P2992201452529350460.a n : ℤ) = A161674 (n + 1)

end A161674

/-! ## A161674.P15519234319951418485

`lt[3, 4^val(and(n+2, -(n+1))+1, 3)]`
-/

namespace A161674.P15519234319951418485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ SequenceMachineLib.valuation (Int.land (n + 2 : ℤ) (-(n + 1 : ℤ)) + 1).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A161674.P15519234319951418485

namespace A161674

/-- `lt[3, 4^val(and(n+2, -(n+1))+1, 3)]` -/
def P15519234319951418485.Spec : Prop :=
  ∀ n, (P15519234319951418485.a n : ℤ) = A161674 (n + 1)

end A161674

/-! ## A161674.P1541511792502312061

`eq[1, -(a(n-2)+a(floor(n/2)-1))]` with `a(0)=1, a(1)=1`
-/

namespace A161674.P1541511792502312061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  -(f2 (n - 2) + f2 (⌊(n : ℚ) / 2⌋ - 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161674.P1541511792502312061

namespace A161674

/-- `eq[1, -(a(n-2)+a(floor(n/2)-1))]` -/
def P1541511792502312061.Spec : Prop :=
  ∀ n, (P1541511792502312061.a n : ℤ) = A161674 (n + 1)

end A161674

/-! ## A161674.P16382841792854112305

`comp[A081706(n+1)]`
-/

namespace A161674.P16382841792854112305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A161674.P16382841792854112305

namespace A161674

/-- `comp[A081706(n+1)]` -/
def P16382841792854112305.Spec : Prop :=
  ∀ n, (P16382841792854112305.a n : ℤ) = A161674 (n + 1)

end A161674

/-! ## A161674.P2180707363602286098

`comp[A344346(n+1)-1]`
-/

namespace A161674.P2180707363602286098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344346 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A161674.P2180707363602286098

namespace A161674

/-- `comp[A344346(n+1)-1]` -/
def P2180707363602286098.Spec : Prop :=
  ∀ n, (P2180707363602286098.a n : ℤ) = A161674 (n + 1)

end A161674

/-! ## A161674.P2041732719466036950

`∪[A161627(n+1), A042948(n)]`
-/

namespace A161674.P2041732719466036950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161674.P2041732719466036950

namespace A161674

/-- `∪[A161627(n+1), A042948(n)]` -/
def P2041732719466036950.Spec : Prop :=
  ∀ n, (P2041732719466036950.a n : ℤ) = A161674 (n + 1)

end A161674

/-! ## A161674.P2659879375567297866

`∪[A079523(n+1), A162648(n+1)]`
-/

namespace A161674.P2659879375567297866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162648 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161674.P2659879375567297866

namespace A161674

/-- `∪[A079523(n+1), A162648(n+1)]` -/
def P2659879375567297866.Spec : Prop :=
  ∀ n, (P2659879375567297866.a n : ℤ) = A161674 (n + 1)

end A161674

/-! ## A161674.P11876497295043829784

`eq[1-A035263(n+1), A035263(n+2)]`
-/

namespace A161674.P11876497295043829784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A035263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161674.P11876497295043829784

namespace A161674

/-- `eq[1-A035263(n+1), A035263(n+2)]` -/
def P11876497295043829784.Spec : Prop :=
  ∀ n, (P11876497295043829784.a n : ℤ) = A161674 (n + 1)

end A161674

/-! ## A161674.P16673346398062362908

`eq[A035263(2*(n+1)), A035263(n+2)]`
-/

namespace A161674.P16673346398062362908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161674.P16673346398062362908

namespace A161674

/-- `eq[A035263(2*(n+1)), A035263(n+2)]` -/
def P16673346398062362908.Spec : Prop :=
  ∀ n, (P16673346398062362908.a n : ℤ) = A161674 (n + 1)

end A161674

/-! ## A161674.P9329950879222131429

`eq[A089608(2*(n+1)), A089608(n+2)]`
-/

namespace A161674.P9329950879222131429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089608 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089608 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161674.P9329950879222131429

namespace A161674

/-- `eq[A089608(2*(n+1)), A089608(n+2)]` -/
def P9329950879222131429.Spec : Prop :=
  ∀ n, (P9329950879222131429.a n : ℤ) = A161674 (n + 1)

end A161674

/-! ## A161674.P5896613865394658463

`comp[(2*n+1)*gcd(2, A007814(n+1))]`
-/

namespace A161674.P5896613865394658463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Int.gcd 2 (A007814 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A161674.P5896613865394658463

namespace A161674

/-- `comp[(2*n+1)*gcd(2, A007814(n+1))]` -/
def P5896613865394658463.Spec : Prop :=
  ∀ n, (P5896613865394658463.a n : ℤ) = A161674 (n + 1)

end A161674

/-! ## A161674.P9650664259231114292

`lt[0, A039963(n)]`
-/

namespace A161674.P9650664259231114292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161674.P9650664259231114292

namespace A161674

/-- `lt[0, A039963(n)]` -/
def P9650664259231114292.Spec : Prop :=
  ∀ n, (P9650664259231114292.a n : ℤ) = A161674 (n + 1)

end A161674

/-! ## A161674.P9504279100325431781

`eq[1, gcd(2, A299919(n))]`
-/

namespace A161674.P9504279100325431781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A299919 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161674.P9504279100325431781

namespace A161674

/-- `eq[1, gcd(2, A299919(n))]` -/
def P9504279100325431781.Spec : Prop :=
  ∀ n, (P9504279100325431781.a n : ℤ) = A161674 (n + 1)

end A161674

/-! ## A161674.P3239845812792430237

`eq[0, val(A299918(n), 2)]`
-/

namespace A161674.P3239845812792430237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A299918 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161674.P3239845812792430237

namespace A161674

/-- `eq[0, val(A299918(n), 2)]` -/
def P3239845812792430237.Spec : Prop :=
  ∀ n, (P3239845812792430237.a n : ℤ) = A161674 (n + 1)

end A161674

/-! ## A161674.P206961200722608895

`record[n*and(1, A094267(n))]`
-/

namespace A161674.P206961200722608895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 1 (A094267 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161674.P206961200722608895

namespace A161674

/-- `record[n*and(1, A094267(n))]` -/
def P206961200722608895.Spec : Prop :=
  ∀ n, P206961200722608895.a n = A161674 (n + 1)

end A161674

/-! ## A161674.P13156148599611754463

`eq[1, A000035(A050603(n))]`
-/

namespace A161674.P13156148599611754463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A050603 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161674.P13156148599611754463

namespace A161674

/-- `eq[1, A000035(A050603(n))]` -/
def P13156148599611754463.Spec : Prop :=
  ∀ n, (P13156148599611754463.a n : ℤ) = A161674 (n + 1)

end A161674

/-! ## A161674.P3204671199744832391

`eq[1, A010230(A050603(n)²)]`
-/

namespace A161674.P3204671199744832391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010230 (A050603 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161674.P3204671199744832391

namespace A161674

/-- `eq[1, A010230(A050603(n)²)]` -/
def P3204671199744832391.Spec : Prop :=
  ∀ n, (P3204671199744832391.a n : ℤ) = A161674 (n + 1)

end A161674

/-!
# A161675: Mersenne primes written in base 8.

The programs for A161675, there is no canonical definition to state claims against.
-/

/-! ## A161675.P4372798075144774321

`A007094(A000668(n+1))`
-/

namespace A161675.P4372798075144774321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A000668 (n + 1)).toNat

end

end A161675.P4372798075144774321

/-!
# A161676: Isolated primes p such that 2^p-1 is also a prime number.

The programs for A161676, there is no canonical definition to state claims against.
-/

/-! ## A161676.P1020127570396737132

`∩[A000043(n+1), A007510(n+1)]`
-/

namespace A161676.P1020127570396737132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161676.P1020127570396737132

/-! ## A161676.P847374646034691336

`∩[A007510(n+1), A072226(n+1)]`
-/

namespace A161676.P847374646034691336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161676.P847374646034691336

/-! ## A161676.P441126477151952873

`p?[A283265(A000043(n+1))+A090748(n+1)]`
-/

namespace A161676.P441126477151952873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283265 (A000043 (n + 1)).toNat + A090748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161676.P441126477151952873

/-! ## A161676.P1551838969145713392

`p?[A000043(n+2)-A164292(A000043(n+2))]`
-/

namespace A161676.P1551838969145713392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 2) - A164292 (A000043 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161676.P1551838969145713392

/-!
# A161677: Mersenne primes written in base 4.

The programs for A161677, there is no canonical definition to state claims against.
-/

/-! ## A161677.P18102277326710199865

`A007090(A000668(n+1))`
-/

namespace A161677.P18102277326710199865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A000668 (n + 1)).toNat

end

end A161677.P18102277326710199865

/-! ## A161677.P12293589679423878625

`A097169(A090748(n+1))-A000007(n)`
-/

namespace A161677.P12293589679423878625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097169 (A090748 (n + 1)).toNat - A000007 n

end

end A161677.P12293589679423878625

/-!
# A161680: a(n) = binomial(n,2): number of size-2 subsets of {0,1,...,n} that contain no consecutive integers.

The programs for A161680, the canonical program `A161680.P17206074215489759881` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161680 has offset 0).

The definition of A161680 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, 2)` (program `A161680.P17206074215489759881`, by `A161680.P17206074215489759881.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A161680.P17206074215489759881

`C(n, 2)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A161680

/-- `C(n, 2)` -/
def P17206074215489759881.Spec : Prop :=
  ∀ n, (P17206074215489759881.a n : ℤ) = A161680 n

theorem P17206074215489759881.correct : P17206074215489759881.Spec := by
  intro n
  simp only [A161680]

end A161680

/-! ## A161680.P4650310306831011087

`(n²-n)/2`
-/

namespace A161680.P4650310306831011087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 2

end

end A161680.P4650310306831011087

namespace A161680

/-- `(n²-n)/2` -/
def P4650310306831011087.Spec : Prop :=
  ∀ n, P4650310306831011087.a n = (A161680 n : ℚ)

theorem P4650310306831011087.correct : P4650310306831011087.Spec := by
  intro n
  simp only [A161680, Nat.add_sub_cancel, A161680.P4650310306831011087.a, A161680.P17206074215489759881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A161680

/-! ## A161680.P11706479934402509280

`a(n-1)+n-1` with `a(0)=0`
-/

namespace A161680.P11706479934402509280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) - 1

end

end A161680.P11706479934402509280

namespace A161680

/-- `a(n-1)+n-1` -/
def P11706479934402509280.Spec : Prop :=
  ∀ n, P11706479934402509280.a n = A161680 n

end A161680

/-! ## A161680.P10657898225378500660

`A244049(n+1)+A004125(n+1)`
-/

namespace A161680.P10657898225378500660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244049 (n + 1) + A004125 (n + 1)

end

end A161680.P10657898225378500660

namespace A161680

/-- `A244049(n+1)+A004125(n+1)` -/
def P10657898225378500660.Spec : Prop :=
  ∀ n, P10657898225378500660.a n = A161680 n

theorem P10657898225378500660.correct : P10657898225378500660.Spec := by
  intro n
  simp only [A161680, Nat.add_sub_cancel, A161680.P10657898225378500660.a, A161680.P17206074215489759881.a, A004125, A004125.P17154347137318566864.a, A244049, A244049.P15221357512083652868.a, A111490, A111490.P12273219940558635463.f2, A111490.P12273219940558635463.f1, A111490.P12273219940558635463.a, A153485, A153485.P1399869421749084233.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A161680

/-! ## A161680.P4113679549905909885

`A000290(n+1)-A034856(n+1)`
-/

namespace A161680.P4113679549905909885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) - A034856 (n + 1)

end

end A161680.P4113679549905909885

namespace A161680

/-- `A000290(n+1)-A034856(n+1)` -/
def P4113679549905909885.Spec : Prop :=
  ∀ n, P4113679549905909885.a n = A161680 n

theorem P4113679549905909885.correct : P4113679549905909885.Spec := by
  intro n
  simp only [A161680, Nat.add_sub_cancel, A161680.P4113679549905909885.a, A161680.P17206074215489759881.a, A000290, A000290.P12206242496348924484.a, A034856, A034856.P1676305901281367657.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A161680

/-! ## A161680.P18307395992938542887

`∑[floor(∑[tanh(sqrt(n))])]`
-/

namespace A161680.P18307395992938542887
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (Real.sqrt (n : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161680.P18307395992938542887

namespace A161680

/-- `∑[floor(∑[tanh(sqrt(n))])]` -/
def P18307395992938542887.Spec : Prop :=
  ∀ n, P18307395992938542887.a n = A161680 n

end A161680

/-! ## A161680.P4193562912095832558

`∑[floor(∑[sin(atan(n))])]`
-/

namespace A161680.P4193562912095832558
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (Real.arctan (n : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161680.P4193562912095832558

namespace A161680

/-- `∑[floor(∑[sin(atan(n))])]` -/
def P4193562912095832558.Spec : Prop :=
  ∀ n, P4193562912095832558.a n = A161680 n

end A161680

/-! ## A161680.P11773126629255382894

`∑[floor(n²*acot(n))]`
-/

namespace A161680.P11773126629255382894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℝ) * SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161680.P11773126629255382894

namespace A161680

/-- `∑[floor(n²*acot(n))]` -/
def P11773126629255382894.Spec : Prop :=
  ∀ n, P11773126629255382894.a n = A161680 n

end A161680

/-! ## A161680.P10792242384888814246

`∑[floor(∑[n*acot(n)])]`
-/

namespace A161680.P10792242384888814246
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * SequenceMachineLib.acot (n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161680.P10792242384888814246

namespace A161680

/-- `∑[floor(∑[n*acot(n)])]` -/
def P10792242384888814246.Spec : Prop :=
  ∀ n, P10792242384888814246.a n = A161680 n

end A161680

/-! ## A161680.P2087874555423232363

`∑[floor(n/(acot(n)+1))]`
-/

namespace A161680.P2087874555423232363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / (SequenceMachineLib.acot (n : ℝ) + 1)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161680.P2087874555423232363

namespace A161680

/-- `∑[floor(n/(acot(n)+1))]` -/
def P2087874555423232363.Spec : Prop :=
  ∀ n, P2087874555423232363.a n = A161680 n

end A161680

/-! ## A161680.P7621536710752780510

`(n²-n)*tan(acot(2))`
-/

namespace A161680.P7621536710752780510
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n : ℤ) : ℝ) * Real.tan (SequenceMachineLib.acot (2 : ℝ))

end

end A161680.P7621536710752780510

namespace A161680

/-- `(n²-n)*tan(acot(2))` -/
def P7621536710752780510.Spec : Prop :=
  ∀ n, P7621536710752780510.a n = (A161680 n : ℝ)

end A161680

/-! ## A161680.P8510237868236072777

`∑[floor(n/2^acot(n))]`
-/

namespace A161680.P8510237868236072777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / (2 : ℝ) ^ (SequenceMachineLib.acot (n : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161680.P8510237868236072777

namespace A161680

/-- `∑[floor(n/2^acot(n))]` -/
def P8510237868236072777.Spec : Prop :=
  ∀ n, P8510237868236072777.a n = A161680 n

end A161680

/-! ## A161680.P18285456895579304120

`(n²-n)*cot(atan(2))`
-/

namespace A161680.P18285456895579304120
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n : ℤ) : ℝ) * Real.cot (Real.arctan (2 : ℝ))

end

end A161680.P18285456895579304120

namespace A161680

/-- `(n²-n)*cot(atan(2))` -/
def P18285456895579304120.Spec : Prop :=
  ∀ n, P18285456895579304120.a n = (A161680 n : ℝ)

end A161680

/-! ## A161680.P7481306539616377745

`∑[round(n/3^acot(n))]`
-/

namespace A161680.P7481306539616377745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / (3 : ℝ) ^ (SequenceMachineLib.acot (n : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161680.P7481306539616377745

namespace A161680

/-- `∑[round(n/3^acot(n))]` -/
def P7481306539616377745.Spec : Prop :=
  ∀ n, P7481306539616377745.a n = A161680 n

end A161680

/-! ## A161680.P6577316380217757747

`n-(1-a(n-1))` with `a(0)=0`
-/

namespace A161680.P6577316380217757747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - (1 - a (n - 1))

end

end A161680.P6577316380217757747

namespace A161680

/-- `n-(1-a(n-1))` -/
def P6577316380217757747.Spec : Prop :=
  ∀ n, P6577316380217757747.a n = A161680 n

end A161680

/-! ## A161680.P16027710081498999649

`(n²+1)%(∑[n]+1)`
-/

namespace A161680.P16027710081498999649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1) % (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A161680.P16027710081498999649

namespace A161680

/-- `(n²+1)%(∑[n]+1)` -/
def P16027710081498999649.Spec : Prop :=
  ∀ n, (P16027710081498999649.a n : ℤ) = A161680 n

end A161680

/-! ## A161680.P8338088642890003664

`floor(n/(2*acot(n-1)))`
-/

namespace A161680.P8338088642890003664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / (2 * SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ))⌋

end

end A161680.P8338088642890003664

namespace A161680

/-- `floor(n/(2*acot(n-1)))` -/
def P8338088642890003664.Spec : Prop :=
  ∀ n, P8338088642890003664.a n = A161680 n

end A161680

/-! ## A161680.P16374586229411961003

`floor(n/acot((n-1)/2))`
-/

namespace A161680.P16374586229411961003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / SequenceMachineLib.acot (((n : ℤ) - 1 : ℚ) / 2 : ℝ)⌋

end

end A161680.P16374586229411961003

namespace A161680

/-- `floor(n/acot((n-1)/2))` -/
def P16374586229411961003.Spec : Prop :=
  ∀ n, P16374586229411961003.a n = A161680 n

end A161680

/-! ## A161680.P17871629168831923367

`round((n-1)/(2*acot(n)))`
-/

namespace A161680.P17871629168831923367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℝ) / (2 * SequenceMachineLib.acot (n : ℝ)))

end

end A161680.P17871629168831923367

namespace A161680

/-- `round((n-1)/(2*acot(n)))` -/
def P17871629168831923367.Spec : Prop :=
  ∀ n, P17871629168831923367.a n = A161680 n

end A161680

/-! ## A161680.P3656781549722502068

`(n-1)*n/acos(cos(2))`
-/

namespace A161680.P3656781549722502068
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℝ) * ((n : ℝ) / Real.arccos (Real.cos (2 : ℝ)))

end

end A161680.P3656781549722502068

namespace A161680

/-- `(n-1)*n/acos(cos(2))` -/
def P3656781549722502068.Spec : Prop :=
  ∀ n, P3656781549722502068.a n = (A161680 n : ℝ)

end A161680

/-!
# A161681: Primes that are the difference between a cube and a square (conjectured values).

The programs for A161681, there is no canonical definition to state claims against.
-/

/-! ## A161681.P1596721781635742117

`p?[A106265(n+1)]`
-/

namespace A161681.P1596721781635742117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161681.P1596721781635742117

/-! ## A161681.P8402810799702457025

`p?[comp[A081121(n+1)]]`
-/

namespace A161681.P8402810799702457025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081121 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A161681.P8402810799702457025

/-! ## A161681.P1265586535969717230

`p?[record[A106265(A133310(n))]]`
-/

namespace A161681.P1265586535969717230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106265 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161681.P1265586535969717230

/-! ## A161681.P1394758706769377239

`p?[record[A106265(A291769(n))]]`
-/

namespace A161681.P1394758706769377239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106265 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161681.P1394758706769377239

/-! ## A161681.P1004250415857798649

`record[A006530(A106265(n+2))]`
-/

namespace A161681.P1004250415857798649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A106265 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161681.P1004250415857798649

/-! ## A161681.P17552222898598930042

`record[A020639(A106265(n+3))]`
-/

namespace A161681.P17552222898598930042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A106265 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161681.P17552222898598930042

/-! ## A161681.P11613185913919392045

`filter[A106265(n+1), A010051(#)]`
-/

namespace A161681.P11613185913919392045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A161681.P11613185913919392045

/-! ## A161681.P11111585988026363537

`filter[A106265(n+2), A080339(#)]`
-/

namespace A161681.P11111585988026363537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106265 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A161681.P11111585988026363537

/-! ## A161681.P7673828053476748613

`∩[A000040(n+1), A106265(n+1)]`
-/

namespace A161681.P7673828053476748613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161681.P7673828053476748613

/-! ## A161681.P8196095563944838842

`∩[A045319(n+1), A106265(n+1)]`
-/

namespace A161681.P8196095563944838842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161681.P8196095563944838842

/-!
# A161682: Primes that are not of the form x^3 - y^2.

The programs for A161682, there is no canonical definition to state claims against.
-/

/-! ## A161682.P11215625565383002388

`p?[A081121(n+1)]`
-/

namespace A161682.P11215625565383002388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161682.P11215625565383002388

/-! ## A161682.P2403284394758436078

`p?[comp[A106265(n+1)]]`
-/

namespace A161682.P2403284394758436078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106265 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A161682.P2403284394758436078

/-! ## A161682.P13672027805623250350

`p?[(n+1)*(A081120(n+1)+1)²]`
-/

namespace A161682.P13672027805623250350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A081120 (n + 1) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161682.P13672027805623250350

/-! ## A161682.P4188846142816426111

`filter[A081121(n+1), A010051(#)]`
-/

namespace A161682.P4188846142816426111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A161682.P4188846142816426111

/-! ## A161682.P2980565379323723854

`filter[A081121(n+1), A080339(#)]`
-/

namespace A161682.P2980565379323723854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A161682.P2980565379323723854

/-! ## A161682.P352440891817604329

`filter[A081121(n+1), A080545(#)]`
-/

namespace A161682.P352440891817604329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A161682.P352440891817604329

/-! ## A161682.P2256826243218629610

`record[A014963(A081121(-xor(n, -1)))]`
-/

namespace A161682.P2256826243218629610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A081121 (-Int.xor (n : ℤ) (-1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161682.P2256826243218629610

/-! ## A161682.P14653958588950501122

`∩[A000040(n+1), A081121(n+1)]`
-/

namespace A161682.P14653958588950501122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161682.P14653958588950501122

/-! ## A161682.P4448611525552450559

`∩[A006005(n+1), A081121(n+1)]`
-/

namespace A161682.P4448611525552450559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161682.P4448611525552450559

/-! ## A161682.P8533696496666322877

`∩[A008578(n+1), A081121(n+1)]`
-/

namespace A161682.P8533696496666322877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161682.P8533696496666322877

/-!
# A161689: Intersection of A151740 and A151741.

The programs for A161689, the canonical program `A161689.P3754310940555733171` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161689 has offset 1).

The definition of A161689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161689.P3754310940555733171

`∩[A151740(n+1), A166039(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A161689

/-- `∩[A151740(n+1), A166039(n+1)]` -/
def P3754310940555733171.Spec : Prop :=
  ∀ n, (P3754310940555733171.a n : ℤ) = A161689 (n + 1)

theorem P3754310940555733171.correct : P3754310940555733171.Spec := by
  intro n
  simp only [A161689, Nat.add_sub_cancel]

end A161689

/-! ## A161689.P9969744494832773508

`∩[A166039(n+1), A167611(n+1)]`
-/

namespace A161689.P9969744494832773508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161689.P9969744494832773508

namespace A161689

/-- `∩[A166039(n+1), A167611(n+1)]` -/
def P9969744494832773508.Spec : Prop :=
  ∀ n, (P9969744494832773508.a n : ℤ) = A161689 (n + 1)

end A161689

/-! ## A161689.P11984444916387160319

`∩[A151740(n+1), A151741(n+1)]`
-/

namespace A161689.P11984444916387160319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161689.P11984444916387160319

namespace A161689

/-- `∩[A151740(n+1), A151741(n+1)]` -/
def P11984444916387160319.Spec : Prop :=
  ∀ n, (P11984444916387160319.a n : ℤ) = A161689 (n + 1)

end A161689

/-! ## A161689.P4314373264461791596

`∩[A151741(n+1), A166037(n+1)]`
-/

namespace A161689.P4314373264461791596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161689.P4314373264461791596

namespace A161689

/-- `∩[A151741(n+1), A166037(n+1)]` -/
def P4314373264461791596.Spec : Prop :=
  ∀ n, (P4314373264461791596.a n : ℤ) = A161689 (n + 1)

end A161689

/-! ## A161689.P5203749701322030858

`∩[A151741(n+1), A166685(n+1)]`
-/

namespace A161689.P5203749701322030858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161689.P5203749701322030858

namespace A161689

/-- `∩[A151741(n+1), A166685(n+1)]` -/
def P5203749701322030858.Spec : Prop :=
  ∀ n, (P5203749701322030858.a n : ℤ) = A161689 (n + 1)

end A161689

/-!
# A161691: Number of reduced words of length n in the Weyl group A_46.

The programs for A161691, there is no canonical definition to state claims against.
-/

/-! ## A161691.P4969301095364416449

`∑{d}[2^n, A161690(A001222(#))]`
-/

namespace A161691.P4969301095364416449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161690 (A001222 d).toNat

end

end A161691.P4969301095364416449

/-!
# A161692: Number of reduced words of length n in the Weyl group A_47.

The programs for A161692, there is no canonical definition to state claims against.
-/

/-! ## A161692.P11474327628064098794

`∑{d}[2^n, A161691(A001222(#))]`
-/

namespace A161692.P11474327628064098794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161691 (A001222 d).toNat

end

end A161692.P11474327628064098794

/-!
# A161693: Number of reduced words of length n in the Weyl group A_48.

The programs for A161693, there is no canonical definition to state claims against.
-/

/-! ## A161693.P2133337535553929965

`∑{d}[2^n, A161692(A001222(#))]`
-/

namespace A161693.P2133337535553929965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161692 (A001222 d).toNat

end

end A161693.P2133337535553929965

/-!
# A161694: Number of reduced words of length n in the Weyl group A_49.

The programs for A161694, there is no canonical definition to state claims against.
-/

/-! ## A161694.P15167235573116221966

`∑{d}[2^n, A161693(A001222(#))]`
-/

namespace A161694.P15167235573116221966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161693 (A001222 d).toNat

end

end A161694.P15167235573116221966

/-!
# A161695: Number of reduced words of length n in the Weyl group A_50.

The programs for A161695, there is no canonical definition to state claims against.
-/

/-! ## A161695.P7880319343957523306

`∑[∑{d}[2^n, A161693(A001222(#))]]`
-/

namespace A161695.P7880319343957523306
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A161693 (A001222 d).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161695.P7880319343957523306

/-!
# A161696: Number of reduced words of length n in the Weyl group B_3.

The programs for A161696, the canonical program `A161696.P7354928358902214541` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161696 has offset 0).

The definition of A161696 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161696.P7354928358902214541

`floor(7*a(n-1)/(2-acot(n)+n))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A161696

/-- `floor(7*a(n-1)/(2-acot(n)+n))` -/
def P7354928358902214541.Spec : Prop :=
  ∀ n, P7354928358902214541.a n = A161696 n

theorem P7354928358902214541.correct : P7354928358902214541.Spec := by
  intro n
  simp only [A161696]

end A161696

/-!
# A161697: Number of reduced words of length n in the Weyl group B_4.

The programs for A161697, there is no canonical definition to state claims against.
-/

/-! ## A161697.P5517560633223225010

`A128084(A187829(n+1)+17)`
-/

namespace A161697.P5517560633223225010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128084 (A187829 (n + 1) + 17).toNat

end

end A161697.P5517560633223225010

/-!
# A161698: Number of reduced words of length n in the Weyl group B_5.

The programs for A161698, there is no canonical definition to state claims against.
-/

/-! ## A161698.P18192069545507974349

`∑[A161697(A227549(n+1))]`
-/

namespace A161698.P18192069545507974349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161697 (A227549 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161698.P18192069545507974349

/-!
# A161699: Number of reduced words of length n in the Weyl group B_6.

The programs for A161699, there is no canonical definition to state claims against.
-/

/-! ## A161699.P16570313902554544396

`∑[∑[A161697(A227549(n+1))]]`
-/

namespace A161699.P16570313902554544396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161697 (A227549 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161699.P16570313902554544396

