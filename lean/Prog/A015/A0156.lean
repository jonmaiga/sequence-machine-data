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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
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
# A015600: Inverse of 1591st cyclotomic polynomial.

The programs for A015600, there is no canonical definition to state claims against.
-/

/-! ## A015600.P5640874075258848580

`A015936(comp[A327061(3*n+4)])`
-/

namespace A015600.P5640874075258848580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327061 (3 * n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015936 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015600.P5640874075258848580

/-! ## A015600.P17139034973294932334

`A015936(lt[A030190(n), A307200(n)])`
-/

namespace A015600.P17139034973294932334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015936 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015600.P17139034973294932334

/-! ## A015600.P8345428215824100056

`A015936(lt[A108336(3*n), A307200(n)])`
-/

namespace A015600.P8345428215824100056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108336 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015936 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015600.P8345428215824100056

/-! ## A015600.P10296462857800683603

`A015936(record[A108954(A286686(n+1))])`
-/

namespace A015600.P10296462857800683603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A286686 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015936 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A015600.P10296462857800683603

/-! ## A015600.P9902322043911677017

`A015936(lt[A296774(n+1), 4])`
-/

namespace A015600.P9902322043911677017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296774 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015936 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A015600.P9902322043911677017

/-! ## A015600.P9890578020340750906

`A015936(n+4)*A204988(A002522(n+3))`
-/

namespace A015600.P9890578020340750906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015936 (n + 4) * A204988 (A002522 (n + 3)).toNat

end

end A015600.P9890578020340750906

/-! ## A015600.P986089250692001064

`A015936(lt[A332671(n+1), A307200(n)])`
-/

namespace A015600.P986089250692001064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015936 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015600.P986089250692001064

/-! ## A015600.P15640134640439780688

`A015936(comp[record[A177760(n+3)]])`
-/

namespace A015600.P15640134640439780688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177760 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015936 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015600.P15640134640439780688

/-! ## A015600.P7192661264210375952

`A016288(A351290(n+1)+A333939(n))`
-/

namespace A015600.P7192661264210375952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016288 (A351290 (n + 1) + A333939 n).toNat

end

end A015600.P7192661264210375952

/-! ## A015600.P8538150464595693431

`A016288(A358525(n)+A351290(n+1))`
-/

namespace A015600.P8538150464595693431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016288 (A358525 n + A351290 (n + 1)).toNat

end

end A015600.P8538150464595693431

/-!
# A015601: a(n) = 11*a(n-1) + 7*a(n-2).

The programs for A015601, the canonical program `A015601.P11676061369429452259` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015601 has offset 0).

The definition of A015601 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*a(n-1)+7*a(n-2)` (program `A015601.P11676061369429452259`, by `A015601.P11676061369429452259.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015601.P11676061369429452259

`11*a(n-1)+7*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015601

/-- `11*a(n-1)+7*a(n-2)` -/
def P11676061369429452259.Spec : Prop :=
  ∀ n, (P11676061369429452259.a n : ℤ) = A015601 n

theorem P11676061369429452259.correct : P11676061369429452259.Spec := by
  intro n
  simp only [A015601]

end A015601

/-! ## A015601.P5548558411031921264

`ogf(x/(1-11x-7x^2))`
-/

namespace A015601.P5548558411031921264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -11, -7] n

end

end A015601.P5548558411031921264

namespace A015601

/-- `ogf(x/(1-11x-7x^2))` -/
def P5548558411031921264.Spec : Prop :=
  ∀ n, P5548558411031921264.a n = A015601 n

end A015601

/-!
# A015602: a(n) = 11 a(n-1) + 8 a(n-2).

The programs for A015602, the canonical program `A015602.P8300293908925297463` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015602 has offset 0).

The definition of A015602 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*a(n-1)+8*a(n-2)` (program `A015602.P8300293908925297463`, by `A015602.P8300293908925297463.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015602.P8300293908925297463

`11*a(n-1)+8*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015602

/-- `11*a(n-1)+8*a(n-2)` -/
def P8300293908925297463.Spec : Prop :=
  ∀ n, (P8300293908925297463.a n : ℤ) = A015602 n

theorem P8300293908925297463.correct : P8300293908925297463.Spec := by
  intro n
  simp only [A015602]

end A015602

/-! ## A015602.P3238240834144924960

`ogf(x/(1-11x-8x^2))`
-/

namespace A015602.P3238240834144924960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -11, -8] n

end

end A015602.P3238240834144924960

namespace A015602

/-- `ogf(x/(1-11x-8x^2))` -/
def P3238240834144924960.Spec : Prop :=
  ∀ n, P3238240834144924960.a n = A015602 n

end A015602

/-!
# A015603: a(n) = 11*a(n-1) + 9*a(n-2).

The programs for A015603, the canonical program `A015603.P5575783608540701018` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015603 has offset 0).

The definition of A015603 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*a(n-1)+9*a(n-2)` (program `A015603.P5575783608540701018`, by `A015603.P5575783608540701018.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015603.P5575783608540701018

`11*a(n-1)+9*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015603

/-- `11*a(n-1)+9*a(n-2)` -/
def P5575783608540701018.Spec : Prop :=
  ∀ n, (P5575783608540701018.a n : ℤ) = A015603 n

theorem P5575783608540701018.correct : P5575783608540701018.Spec := by
  intro n
  simp only [A015603]

end A015603

/-! ## A015603.P13160492852563093269

`ogf(x/(1-11x-9x^2))`
-/

namespace A015603.P13160492852563093269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -11, -9] n

end

end A015603.P13160492852563093269

namespace A015603

/-- `ogf(x/(1-11x-9x^2))` -/
def P13160492852563093269.Spec : Prop :=
  ∀ n, P13160492852563093269.a n = A015603 n

end A015603

/-!
# A015604: Inverse of 1595th cyclotomic polynomial.

The programs for A015604, there is no canonical definition to state claims against.
-/

/-! ## A015604.P6468828573213316389

`A015714(xor(n, ∑[A034550(n+1)]))`
-/

namespace A015604.P6468828573213316389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015714 (Int.xor (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A015604.P6468828573213316389

/-! ## A015604.P4468885451146698467

`A015714(n)%A139092(n+4)`
-/

namespace A015604.P4468885451146698467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015714 n) (A139092 (n + 4))

end

end A015604.P4468885451146698467

/-! ## A015604.P15749118145001407112

`A016044(n)%A139092(n+4)`
-/

namespace A015604.P15749118145001407112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016044 n) (A139092 (n + 4))

end

end A015604.P15749118145001407112

/-! ## A015604.P3976259486804985023

`A016264(n)%A139092(n+4)`
-/

namespace A015604.P3976259486804985023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016264 n) (A139092 (n + 4))

end

end A015604.P3976259486804985023

/-! ## A015604.P3136112640378740796

`A015714(n)%A242465(n)`
-/

namespace A015604.P3136112640378740796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015714 n) (A242465 n)

end

end A015604.P3136112640378740796

/-!
# A015605: Inverse of 1596th cyclotomic polynomial.

The programs for A015605, there is no canonical definition to state claims against.
-/

/-! ## A015605.P14692490506090275642

`A015941(n)%A260651(n+2)`
-/

namespace A015605.P14692490506090275642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015941 n) (A260651 (n + 2))

end

end A015605.P14692490506090275642

/-! ## A015605.P6269230640085060144

`A015941(n)*A356948(n+1)`
-/

namespace A015605.P6269230640085060144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015941 n * A356948 (n + 1)

end

end A015605.P6269230640085060144

/-! ## A015605.P13000050223375510618

`A015437(A135383(n+1))`
-/

namespace A015605.P13000050223375510618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015437 (A135383 (n + 1)).toNat

end

end A015605.P13000050223375510618

/-!
# A015606: a(n) = 11*a(n-1) + 10*a(n-2).

The programs for A015606, the canonical program `A015606.P5778224139990400102` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015606 has offset 0).

The definition of A015606 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*a(n-1)+10*a(n-2)` (program `A015606.P5778224139990400102`, by `A015606.P5778224139990400102.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015606.P5778224139990400102

`11*a(n-1)+10*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015606

/-- `11*a(n-1)+10*a(n-2)` -/
def P5778224139990400102.Spec : Prop :=
  ∀ n, (P5778224139990400102.a n : ℤ) = A015606 n

theorem P5778224139990400102.correct : P5778224139990400102.Spec := by
  intro n
  simp only [A015606]

end A015606

/-! ## A015606.P7717284614203436913

`ogf(x/(1-11x-10x^2))`
-/

namespace A015606.P7717284614203436913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -11, -10] n

end

end A015606.P7717284614203436913

namespace A015606

/-- `ogf(x/(1-11x-10x^2))` -/
def P7717284614203436913.Spec : Prop :=
  ∀ n, P7717284614203436913.a n = A015606 n

end A015606

/-!
# A015607: Inverse of 1598th cyclotomic polynomial.

The programs for A015607, there is no canonical definition to state claims against.
-/

/-! ## A015607.P8801067217421755109

`A014808(n)*A033999(n)`
-/

namespace A015607.P8801067217421755109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014808 n * A033999 n

end

end A015607.P8801067217421755109

/-! ## A015607.P7791116012090329570

`A015811(A175427(n+1))`
-/

namespace A015607.P7791116012090329570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015811 (A175427 (n + 1)).toNat

end

end A015607.P7791116012090329570

/-! ## A015607.P17419251298258704710

`A015811(n)*A066701(n+2)`
-/

namespace A015607.P17419251298258704710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015811 n * A066701 (n + 2)

end

end A015607.P17419251298258704710

/-! ## A015607.P13326593893452698388

`A016015(n)*A066701(n+2)`
-/

namespace A015607.P13326593893452698388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016015 n * A066701 (n + 2)

end

end A015607.P13326593893452698388

/-! ## A015607.P2385944416345493450

`A016083(n)*A066701(n+2)`
-/

namespace A015607.P2385944416345493450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016083 n * A066701 (n + 2)

end

end A015607.P2385944416345493450

/-!
# A015608: Inverse of 1599th cyclotomic polynomial.

The programs for A015608, there is no canonical definition to state claims against.
-/

/-! ## A015608.P3811605478302130563

`A016076(n)^A016065(n)`
-/

namespace A015608.P3811605478302130563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016076 n : ℚ) ^ (A016065 n : ℤ)

end

end A015608.P3811605478302130563

/-! ## A015608.P3743958946457092969

`A015686(n)%A282535(n+4)`
-/

namespace A015608.P3743958946457092969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015686 n) (A282535 (n + 4))

end

end A015608.P3743958946457092969

/-! ## A015608.P721838645724735560

`A015842(n)%A282535(n+4)`
-/

namespace A015608.P721838645724735560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015842 n) (A282535 (n + 4))

end

end A015608.P721838645724735560

/-! ## A015608.P1784680731366920504

`A016076(n)%A282535(n+4)`
-/

namespace A015608.P1784680731366920504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016076 n) (A282535 (n + 4))

end

end A015608.P1784680731366920504

/-! ## A015608.P3207955442539889893

`A016310(n)%A282535(n+4)`
-/

namespace A015608.P3207955442539889893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016310 n) (A282535 (n + 4))

end

end A015608.P3207955442539889893

/-!
# A015609: a(n) = 11*a(n-1) + 12*a(n-2).

The programs for A015609, the canonical program `A015609.P12985784773766789526` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015609 has offset 0).

The definition of A015609 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*a(n-1)+12*a(n-2)` (program `A015609.P12985784773766789526`, by `A015609.P12985784773766789526.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015609.P16201978173076321172

`12^(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A015609.P16201978173076321172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (12 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1)

end

end A015609.P16201978173076321172

namespace A015609

/-- `12^(n-1)-a(n-1)` -/
def P16201978173076321172.Spec : Prop :=
  ∀ n, P16201978173076321172.a n = (A015609 n : ℚ)

end A015609

/-! ## A015609.P12985784773766789526

`11*a(n-1)+12*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015609

/-- `11*a(n-1)+12*a(n-2)` -/
def P12985784773766789526.Spec : Prop :=
  ∀ n, (P12985784773766789526.a n : ℤ) = A015609 n

theorem P12985784773766789526.correct : P12985784773766789526.Spec := by
  intro n
  simp only [A015609]

end A015609

/-! ## A015609.P5349253147253646496

`1/13*(12^n-(-1)^n)`
-/

namespace A015609.P5349253147253646496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 13 * ((12 ^ n : ℤ) - (-1) ^ n : ℚ)

end

end A015609.P5349253147253646496

namespace A015609

/-- `1/13*(12^n-(-1)^n)` -/
def P5349253147253646496.Spec : Prop :=
  ∀ n, P5349253147253646496.a n = (A015609 n : ℚ)

theorem P5349253147253646496.correct : P5349253147253646496.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A015609, Nat.add_sub_cancel, A015609.P5349253147253646496.a, A015609.P12985784773766789526.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A015609, Nat.add_sub_cancel, A015609.P5349253147253646496.a, A015609.P12985784773766789526.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A015609

/-! ## A015609.P13017988852567567348

`ogf(x/(1-11x-12x^2))`
-/

namespace A015609.P13017988852567567348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -11, -12] n

end

end A015609.P13017988852567567348

namespace A015609

/-- `ogf(x/(1-11x-12x^2))` -/
def P13017988852567567348.Spec : Prop :=
  ∀ n, P13017988852567567348.a n = A015609 n

end A015609

/-! ## A015609.P11218942271922138166

`12*a(n-1)-A056594(A005843(n))` with `a(0)=0, a(1)=1`
-/

namespace A015609.P11218942271922138166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  12 * a (n - 1) - A056594 (A005843 n).toNat

end

end A015609.P11218942271922138166

namespace A015609

/-- `12*a(n-1)-A056594(A005843(n))` -/
def P11218942271922138166.Spec : Prop :=
  ∀ n, P11218942271922138166.a n = A015609 n

end A015609

/-! ## A015609.P1846230161510435582

`floor(A178248(n)/13)`
-/

namespace A015609.P1846230161510435582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A178248 n : ℚ) / 13⌋

end

end A015609.P1846230161510435582

namespace A015609

/-- `floor(A178248(n)/13)` -/
def P1846230161510435582.Spec : Prop :=
  ∀ n, P1846230161510435582.a n = A015609 n

end A015609

/-!
# A015610: a(n) = 12*a(n-1) + 5*a(n-2) for n >= 2, a(0) = 0, a(1) = 1.

The programs for A015610, the canonical program `A015610.P12707317731665084981` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015610 has offset 0).

The definition of A015610 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*a(n-1)+5*a(n-2)` (program `A015610.P12707317731665084981`, by `A015610.P12707317731665084981.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015610.P12707317731665084981

`12*a(n-1)+5*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015610

/-- `12*a(n-1)+5*a(n-2)` -/
def P12707317731665084981.Spec : Prop :=
  ∀ n, (P12707317731665084981.a n : ℤ) = A015610 n

theorem P12707317731665084981.correct : P12707317731665084981.Spec := by
  intro n
  simp only [A015610]

end A015610

/-! ## A015610.P7722443794654047826

`ogf(x/(1-12x-5x^2))`
-/

namespace A015610.P7722443794654047826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -12, -5] n

end

end A015610.P7722443794654047826

namespace A015610

/-- `ogf(x/(1-12x-5x^2))` -/
def P7722443794654047826.Spec : Prop :=
  ∀ n, P7722443794654047826.a n = A015610 n

end A015610

/-! ## A015610.P4024393834293783649

`1/82*sqrt(41)*((6+sqrt(41))^n-(6-sqrt(41))^n)`
-/

namespace A015610.P4024393834293783649
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 82 : ℝ) * Real.sqrt (41 : ℝ) * ((6 + Real.sqrt (41 : ℝ)) ^ n - (6 - Real.sqrt (41 : ℝ)) ^ n)

end

end A015610.P4024393834293783649

namespace A015610

/-- `1/82*sqrt(41)*((6+sqrt(41))^n-(6-sqrt(41))^n)` -/
def P4024393834293783649.Spec : Prop :=
  ∀ n, P4024393834293783649.a n = (A015610 n : ℝ)

theorem P4024393834293783649.correct : P4024393834293783649.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A015610, Nat.add_sub_cancel, A015610.P4024393834293783649.a, A015610.P12707317731665084981.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A015610, Nat.add_sub_cancel, A015610.P4024393834293783649.a, A015610.P12707317731665084981.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A015610

/-!
# A015611: a(n) = 12*a(n-1) + 7*a(n-2).

The programs for A015611, the canonical program `A015611.P2200169656374464503` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015611 has offset 0).

The definition of A015611 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*a(n-1)+7*a(n-2)` (program `A015611.P2200169656374464503`, by `A015611.P2200169656374464503.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015611.P2200169656374464503

`12*a(n-1)+7*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015611

/-- `12*a(n-1)+7*a(n-2)` -/
def P2200169656374464503.Spec : Prop :=
  ∀ n, (P2200169656374464503.a n : ℤ) = A015611 n

theorem P2200169656374464503.correct : P2200169656374464503.Spec := by
  intro n
  simp only [A015611]

end A015611

/-! ## A015611.P5258077903353492974

`ogf(x/(1-12x-7x^2))`
-/

namespace A015611.P5258077903353492974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -12, -7] n

end

end A015611.P5258077903353492974

namespace A015611

/-- `ogf(x/(1-12x-7x^2))` -/
def P5258077903353492974.Spec : Prop :=
  ∀ n, P5258077903353492974.a n = A015611 n

end A015611

/-! ## A015611.P14954289520180228746

`1/86*sqrt(43)*((6+sqrt(43))^n-(6-sqrt(43))^n)`
-/

namespace A015611.P14954289520180228746
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 86 : ℝ) * Real.sqrt (43 : ℝ) * ((6 + Real.sqrt (43 : ℝ)) ^ n - (6 - Real.sqrt (43 : ℝ)) ^ n)

end

end A015611.P14954289520180228746

namespace A015611

/-- `1/86*sqrt(43)*((6+sqrt(43))^n-(6-sqrt(43))^n)` -/
def P14954289520180228746.Spec : Prop :=
  ∀ n, P14954289520180228746.a n = (A015611 n : ℝ)

theorem P14954289520180228746.correct : P14954289520180228746.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A015611, Nat.add_sub_cancel, A015611.P14954289520180228746.a, A015611.P2200169656374464503.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A015611, Nat.add_sub_cancel, A015611.P14954289520180228746.a, A015611.P2200169656374464503.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A015611

/-!
# A015612: a(n) = 12*a(n-1) + 11*a(n-2).

The programs for A015612, the canonical program `A015612.P6147928646633082271` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015612 has offset 0).

The definition of A015612 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*a(n-1)+11*a(n-2)` (program `A015612.P6147928646633082271`, by `A015612.P6147928646633082271.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015612.P6147928646633082271

`12*a(n-1)+11*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015612

/-- `12*a(n-1)+11*a(n-2)` -/
def P6147928646633082271.Spec : Prop :=
  ∀ n, (P6147928646633082271.a n : ℤ) = A015612 n

theorem P6147928646633082271.correct : P6147928646633082271.Spec := by
  intro n
  simp only [A015612]

end A015612

/-! ## A015612.P5378699341288242765

`ogf(x/(1-12x-11x^2))`
-/

namespace A015612.P5378699341288242765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -12, -11] n

end

end A015612.P5378699341288242765

namespace A015612

/-- `ogf(x/(1-12x-11x^2))` -/
def P5378699341288242765.Spec : Prop :=
  ∀ n, P5378699341288242765.a n = A015612 n

end A015612

/-!
# A015613: a(n) = Sum_{i=1..n} phi(i) * (ceiling(n/i) - floor(n/i)).

The programs for A015613, the canonical program `A015613.P10342117008868844032` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015613 has offset 1).

The definition of A015613 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A015613.P10342117008868844032

`A002088(n+1)-(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A015613

/-- `A002088(n+1)-(n+1)` -/
def P10342117008868844032.Spec : Prop :=
  ∀ n, P10342117008868844032.a n = A015613 (n + 1)

theorem P10342117008868844032.correct : P10342117008868844032.Spec := by
  intro n
  simp only [A015613, Nat.add_sub_cancel]

end A015613

/-! ## A015613.P1471388546575094290

`A091369(n+1)-A000217(n+1)`
-/

namespace A015613.P1471388546575094290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091369 (n + 1) - A000217 (n + 1)

end

end A015613.P1471388546575094290

namespace A015613

/-- `A091369(n+1)-A000217(n+1)` -/
def P1471388546575094290.Spec : Prop :=
  ∀ n, P1471388546575094290.a n = A015613 (n + 1)

theorem P1471388546575094290.correct : P1471388546575094290.Spec := by
  intro n
  simp only [A015613, Nat.add_sub_cancel, A015613.P1471388546575094290.a, A015613.P10342117008868844032.a, A000217, A000217.P10269402890581615239.a, A002088, A002088.P8962335469571691680.f2, A002088.P8962335469571691680.f1, A002088.P8962335469571691680.a, A091369, A091369.P3969440163011087150.a, A007431, A007431.P16849793818733668455.f1, A007431.P16849793818733668455.a, A063985, A063985.P3942861327483730228.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A015613

/-! ## A015613.P8418697026296026540

`∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1]`
-/

namespace A015613.P8418697026296026540
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015613.P8418697026296026540

namespace A015613

/-- `∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1]` -/
def P8418697026296026540.Spec : Prop :=
  ∀ n, P8418697026296026540.a n = (A015613 (n + 1) : ℚ)

end A015613

/-! ## A015613.P8071535194210430392

`∑[A109606(n+1)]`
-/

namespace A015613.P8071535194210430392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015613.P8071535194210430392

namespace A015613

/-- `∑[A109606(n+1)]` -/
def P8071535194210430392.Spec : Prop :=
  ∀ n, P8071535194210430392.a n = A015613 (n + 1)

end A015613

/-! ## A015613.P6493079360530351925

`A015614(n+1)-n`
-/

namespace A015613.P6493079360530351925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1) - (n : ℤ)

end

end A015613.P6493079360530351925

namespace A015613

/-- `A015614(n+1)-n` -/
def P6493079360530351925.Spec : Prop :=
  ∀ n, P6493079360530351925.a n = A015613 (n + 1)

theorem P6493079360530351925.correct : P6493079360530351925.Spec := by
  intro n
  simp only [A015613, Nat.add_sub_cancel, A015613.P6493079360530351925.a, A015613.P10342117008868844032.a, A002088, A002088.P8962335469571691680.f2, A002088.P8962335469571691680.f1, A002088.P8962335469571691680.a, A015614, A015614.P13535555482679389419.a, A000217, A000217.P10269402890581615239.a, A007431, A007431.P16849793818733668455.f1, A007431.P16849793818733668455.a, A185670, A185670.P7671735460308608982.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A063985, A063985.P3942861327483730228.a, A100613, A100613.P7468063633472476903.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A015613

/-! ## A015613.P1740520337414781932

`∑[Δ[A002088(n)]-1]`
-/

namespace A015613.P1740520337414781932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015613.P1740520337414781932

namespace A015613

/-- `∑[Δ[A002088(n)]-1]` -/
def P1740520337414781932.Spec : Prop :=
  ∀ n, P1740520337414781932.a n = A015613 (n + 1)

end A015613

/-! ## A015613.P14619887911530726394

`∑[Δ[A005728(n)]-1]`
-/

namespace A015613.P14619887911530726394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015613.P14619887911530726394

namespace A015613

/-- `∑[Δ[A005728(n)]-1]` -/
def P14619887911530726394.Spec : Prop :=
  ∀ n, P14619887911530726394.a n = A015613 (n + 1)

end A015613

/-! ## A015613.P13906899707155866859

`∑[A000010(n+1)-1]`
-/

namespace A015613.P13906899707155866859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015613.P13906899707155866859

namespace A015613

/-- `∑[A000010(n+1)-1]` -/
def P13906899707155866859.Spec : Prop :=
  ∀ n, P13906899707155866859.a n = A015613 (n + 1)

end A015613

/-! ## A015613.P2654596465836851676

`∑[A039649(n+1)-2]`
-/

namespace A015613.P2654596465836851676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015613.P2654596465836851676

namespace A015613

/-- `∑[A039649(n+1)-2]` -/
def P2654596465836851676.Spec : Prop :=
  ∀ n, P2654596465836851676.a n = A015613 (n + 1)

end A015613

/-! ## A015613.P13029165850339930793

`∑[n-A051953(n+1)]`
-/

namespace A015613.P13029165850339930793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A051953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015613.P13029165850339930793

namespace A015613

/-- `∑[n-A051953(n+1)]` -/
def P13029165850339930793.Spec : Prop :=
  ∀ n, P13029165850339930793.a n = A015613 (n + 1)

end A015613

/-! ## A015613.P14177693595138956402

`∑[n]-A063985(n+1)`
-/

namespace A015613.P14177693595138956402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A063985 (n + 1)

end

end A015613.P14177693595138956402

namespace A015613

/-- `∑[n]-A063985(n+1)` -/
def P14177693595138956402.Spec : Prop :=
  ∀ n, P14177693595138956402.a n = A015613 (n + 1)

end A015613

/-! ## A015613.P4603395525711091234

`Δ[A103116(n)]-(n+1)`
-/

namespace A015613.P4603395525711091234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A015613.P4603395525711091234

namespace A015613

/-- `Δ[A103116(n)]-(n+1)` -/
def P4603395525711091234.Spec : Prop :=
  ∀ n, P4603395525711091234.a n = A015613 (n + 1)

end A015613

/-! ## A015613.P17623748851619851579

`Δ[A049688(n)]-(n+2)`
-/

namespace A015613.P17623748851619851579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 2 : ℤ)

end

end A015613.P17623748851619851579

namespace A015613

/-- `Δ[A049688(n)]-(n+2)` -/
def P17623748851619851579.Spec : Prop :=
  ∀ n, P17623748851619851579.a n = A015613 (n + 1)

end A015613

/-! ## A015613.P17065651860330615880

`A092249(n+1)-(n+1)`
-/

namespace A015613.P17065651860330615880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092249 (n + 1) - (n + 1 : ℤ)

end

end A015613.P17065651860330615880

namespace A015613

/-- `A092249(n+1)-(n+1)` -/
def P17065651860330615880.Spec : Prop :=
  ∀ n, P17065651860330615880.a n = A015613 (n + 1)

end A015613

/-! ## A015613.P4601647020466160798

`A005728(n+1)-(n+2)`
-/

namespace A015613.P4601647020466160798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (n + 1) - (n + 2 : ℤ)

end

end A015613.P4601647020466160798

namespace A015613

/-- `A005728(n+1)-(n+2)` -/
def P4601647020466160798.Spec : Prop :=
  ∀ n, P4601647020466160798.a n = A015613 (n + 1)

theorem P4601647020466160798.correct : P4601647020466160798.Spec := by
  intro n
  simp only [A015613, Nat.add_sub_cancel, A015613.P4601647020466160798.a, A015613.P10342117008868844032.a, A002088, A002088.P8962335469571691680.f2, A002088.P8962335469571691680.f1, A002088.P8962335469571691680.a, A005728, A005728.P12032251568510858139.a, A007431, A007431.P16849793818733668455.f1, A007431.P16849793818733668455.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A015613

/-! ## A015613.P3678952696693557419

`∑[sqrt(A127473(n+1))-1]`
-/

namespace A015613.P3678952696693557419
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ) - 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015613.P3678952696693557419

namespace A015613

/-- `∑[sqrt(A127473(n+1))-1]` -/
def P3678952696693557419.Spec : Prop :=
  ∀ n, P3678952696693557419.a n = (A015613 (n + 1) : ℝ)

end A015613

/-! ## A015613.P1510558996180506776

`A187263(n+1)-Δ[n²]`
-/

namespace A015613.P1510558996180506776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187263 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A015613.P1510558996180506776

namespace A015613

/-- `A187263(n+1)-Δ[n²]` -/
def P1510558996180506776.Spec : Prop :=
  ∀ n, P1510558996180506776.a n = A015613 (n + 1)

end A015613

/-! ## A015613.P1873701596800697360

`∑[A349137(2*n+1)-1]`
-/

namespace A015613.P1873701596800697360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (2 * n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015613.P1873701596800697360

namespace A015613

/-- `∑[A349137(2*n+1)-1]` -/
def P1873701596800697360.Spec : Prop :=
  ∀ n, P1873701596800697360.a n = A015613 (n + 1)

end A015613

/-! ## A015613.P13000839227181617366

`(n+1)²-∑[A053158(n+1)]`
-/

namespace A015613.P13000839227181617366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015613.P13000839227181617366

namespace A015613

/-- `(n+1)²-∑[A053158(n+1)]` -/
def P13000839227181617366.Spec : Prop :=
  ∀ n, P13000839227181617366.a n = A015613 (n + 1)

end A015613

/-! ## A015613.P7236185768320923269

`A143270(n+1)/(n+1)-(n+1)`
-/

namespace A015613.P7236185768320923269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143270 (n + 1) : ℚ) / (n + 1 : ℚ) - (n + 1 : ℚ)

end

end A015613.P7236185768320923269

namespace A015613

/-- `A143270(n+1)/(n+1)-(n+1)` -/
def P7236185768320923269.Spec : Prop :=
  ∀ n, P7236185768320923269.a n = (A015613 (n + 1) : ℚ)

end A015613

/-!
# A015614: a(n) = -1 + Sum_{i=1..n} phi(i).

The programs for A015614, the canonical program `A015614.P13535555482679389419` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015614 has offset 1).

The definition of A015614 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185670, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A015614.P9427892015581261620

`(A018805(n+1)-1)/2`
-/

namespace A015614.P9427892015581261620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018805 (n + 1) - 1 : ℚ) / 2

end

end A015614.P9427892015581261620

namespace A015614

/-- `(A018805(n+1)-1)/2` -/
def P9427892015581261620.Spec : Prop :=
  ∀ n, P9427892015581261620.a n = (A015614 (n + 1) : ℚ)

theorem P9427892015581261620.correct : P9427892015581261620.Spec := by
  intro n
  simp only [A015614, Nat.add_sub_cancel, A015614.P9427892015581261620.a, A015614.P13535555482679389419.a, A000217, A000217.P10269402890581615239.a, A018805, A018805.P12666295524682144614.a, A185670, A185670.P7671735460308608982.a, A063985, A063985.P3942861327483730228.a, A100613, A100613.P7468063633472476903.a, A002088, A002088.P8962335469571691680.f2, A002088.P8962335469571691680.f1, A002088.P8962335469571691680.a, A007431, A007431.P16849793818733668455.f1, A007431.P16849793818733668455.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A015614

/-! ## A015614.P13535555482679389419

`A000217(n)-A185670(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A015614

/-- `A000217(n)-A185670(n+1)` -/
def P13535555482679389419.Spec : Prop :=
  ∀ n, P13535555482679389419.a n = A015614 (n + 1)

theorem P13535555482679389419.correct : P13535555482679389419.Spec := by
  intro n
  simp only [A015614, Nat.add_sub_cancel]

end A015614

/-! ## A015614.P13918707167258603981

`A018805(n+1)-A002088(n+1)`
-/

namespace A015614.P13918707167258603981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (n + 1) - A002088 (n + 1)

end

end A015614.P13918707167258603981

namespace A015614

/-- `A018805(n+1)-A002088(n+1)` -/
def P13918707167258603981.Spec : Prop :=
  ∀ n, P13918707167258603981.a n = A015614 (n + 1)

theorem P13918707167258603981.correct : P13918707167258603981.Spec := by
  intro n
  simp only [A015614, Nat.add_sub_cancel, A015614.P13918707167258603981.a, A015614.P13535555482679389419.a, A000217, A000217.P10269402890581615239.a, A002088, A002088.P8962335469571691680.f2, A002088.P8962335469571691680.f1, A002088.P8962335469571691680.a, A018805, A018805.P12666295524682144614.a, A185670, A185670.P7671735460308608982.a, A007431, A007431.P16849793818733668455.f1, A007431.P16849793818733668455.a, A063985, A063985.P3942861327483730228.a, A100613, A100613.P7468063633472476903.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A015614

/-! ## A015614.P255200856383860693

`∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]]-1`
-/

namespace A015614.P255200856383860693
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A015614.P255200856383860693

namespace A015614

/-- `∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]]-1` -/
def P255200856383860693.Spec : Prop :=
  ∀ n, P255200856383860693.a n = (A015614 (n + 1) : ℚ)

end A015614

/-! ## A015614.P1922160436996918653

`a(n-1)+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]` with `a(0)=0`
-/

namespace A015614.P1922160436996918653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A015614.P1922160436996918653

namespace A015614

/-- `a(n-1)+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]` -/
def P1922160436996918653.Spec : Prop :=
  ∀ n, P1922160436996918653.a n = (A015614 (n + 1) : ℚ)

end A015614

/-! ## A015614.P8689819848562106603

`Δ[A103116(n)]-1`
-/

namespace A015614.P8689819848562106603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A015614.P8689819848562106603

namespace A015614

/-- `Δ[A103116(n)]-1` -/
def P8689819848562106603.Spec : Prop :=
  ∀ n, P8689819848562106603.a n = A015614 (n + 1)

end A015614

/-! ## A015614.P11293363427533188435

`Δ[A049688(n)]-2`
-/

namespace A015614.P11293363427533188435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A015614.P11293363427533188435

namespace A015614

/-- `Δ[A049688(n)]-2` -/
def P11293363427533188435.Spec : Prop :=
  ∀ n, P11293363427533188435.a n = A015614 (n + 1)

end A015614

/-! ## A015614.P4400177811224226849

`A002088(n+1)-1`
-/

namespace A015614.P4400177811224226849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) - 1

end

end A015614.P4400177811224226849

namespace A015614

/-- `A002088(n+1)-1` -/
def P4400177811224226849.Spec : Prop :=
  ∀ n, P4400177811224226849.a n = A015614 (n + 1)

theorem P4400177811224226849.correct : P4400177811224226849.Spec := by
  intro n
  simp only [A015614, Nat.add_sub_cancel, A015614.P4400177811224226849.a, A015614.P13535555482679389419.a, A000217, A000217.P10269402890581615239.a, A002088, A002088.P8962335469571691680.f2, A002088.P8962335469571691680.f1, A002088.P8962335469571691680.a, A185670, A185670.P7671735460308608982.a, A007431, A007431.P16849793818733668455.f1, A007431.P16849793818733668455.a, A063985, A063985.P3942861327483730228.a, A100613, A100613.P7468063633472476903.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A015614

/-! ## A015614.P12351793145113357513

`A092249(n+1)-1`
-/

namespace A015614.P12351793145113357513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092249 (n + 1) - 1

end

end A015614.P12351793145113357513

namespace A015614

/-- `A092249(n+1)-1` -/
def P12351793145113357513.Spec : Prop :=
  ∀ n, P12351793145113357513.a n = A015614 (n + 1)

end A015614

/-! ## A015614.P8691656883974550179

`A005728(n+1)-2`
-/

namespace A015614.P8691656883974550179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (n + 1) - 2

end

end A015614.P8691656883974550179

namespace A015614

/-- `A005728(n+1)-2` -/
def P8691656883974550179.Spec : Prop :=
  ∀ n, P8691656883974550179.a n = A015614 (n + 1)

theorem P8691656883974550179.correct : P8691656883974550179.Spec := by
  intro n
  simp only [A015614, Nat.add_sub_cancel, A015614.P8691656883974550179.a, A015614.P13535555482679389419.a, A000217, A000217.P10269402890581615239.a, A005728, A005728.P12032251568510858139.a, A185670, A185670.P7671735460308608982.a, A002088, A002088.P8962335469571691680.f2, A002088.P8962335469571691680.f1, A002088.P8962335469571691680.a, A063985, A063985.P3942861327483730228.a, A100613, A100613.P7468063633472476903.a, A007431, A007431.P16849793818733668455.f1, A007431.P16849793818733668455.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A015614

/-! ## A015614.P14486227153173268941

`A015613(n+1)+n`
-/

namespace A015614.P14486227153173268941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015613 (n + 1) + (n : ℤ)

end

end A015614.P14486227153173268941

namespace A015614

/-- `A015613(n+1)+n` -/
def P14486227153173268941.Spec : Prop :=
  ∀ n, P14486227153173268941.a n = A015614 (n + 1)

theorem P14486227153173268941.correct : P14486227153173268941.Spec := by
  intro n
  simp only [A015614, Nat.add_sub_cancel, A015614.P14486227153173268941.a, A015614.P13535555482679389419.a, A000217, A000217.P10269402890581615239.a, A015613, A015613.P10342117008868844032.a, A185670, A185670.P7671735460308608982.a, A002088, A002088.P8962335469571691680.f2, A002088.P8962335469571691680.f1, A002088.P8962335469571691680.a, A063985, A063985.P3942861327483730228.a, A100613, A100613.P7468063633472476903.a, A007431, A007431.P16849793818733668455.f1, A007431.P16849793818733668455.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A015614

/-! ## A015614.P2996222280149206256

`floor(A018805(n+1)/2)`
-/

namespace A015614.P2996222280149206256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018805 (n + 1) : ℚ) / 2⌋

end

end A015614.P2996222280149206256

namespace A015614

/-- `floor(A018805(n+1)/2)` -/
def P2996222280149206256.Spec : Prop :=
  ∀ n, P2996222280149206256.a n = A015614 (n + 1)

end A015614

/-! ## A015614.P12822903389450569365

`∑[A000010(n+1)]-1`
-/

namespace A015614.P12822903389450569365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A015614.P12822903389450569365

namespace A015614

/-- `∑[A000010(n+1)]-1` -/
def P12822903389450569365.Spec : Prop :=
  ∀ n, P12822903389450569365.a n = A015614 (n + 1)

end A015614

/-! ## A015614.P12352209184797951427

`∑[A109606(n+1)]+n`
-/

namespace A015614.P12352209184797951427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A015614.P12352209184797951427

namespace A015614

/-- `∑[A109606(n+1)]+n` -/
def P12352209184797951427.Spec : Prop :=
  ∀ n, P12352209184797951427.a n = A015614 (n + 1)

end A015614

/-! ## A015614.P935448890652439029

`∑[n-A016035(n+1)]`
-/

namespace A015614.P935448890652439029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A016035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015614.P935448890652439029

namespace A015614

/-- `∑[n-A016035(n+1)]` -/
def P935448890652439029.Spec : Prop :=
  ∀ n, P935448890652439029.a n = A015614 (n + 1)

end A015614

/-! ## A015614.P17950821211074090439

`∑[abs(Δ[A002088(n)])]-1`
-/

namespace A015614.P17950821211074090439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A015614.P17950821211074090439

namespace A015614

/-- `∑[abs(Δ[A002088(n)])]-1` -/
def P17950821211074090439.Spec : Prop :=
  ∀ n, P17950821211074090439.a n = A015614 (n + 1)

end A015614

/-! ## A015614.P9313535073668172546

`(A278049(n+1)-2)/3`
-/

namespace A015614.P9313535073668172546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278049 (n + 1) - 2 : ℚ) / 3

end

end A015614.P9313535073668172546

namespace A015614

/-- `(A278049(n+1)-2)/3` -/
def P9313535073668172546.Spec : Prop :=
  ∀ n, P9313535073668172546.a n = (A015614 (n + 1) : ℚ)

end A015614

/-! ## A015614.P2831346157314660023

`A187263(n+1)-(n+1)`
-/

namespace A015614.P2831346157314660023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187263 (n + 1) - (n + 1 : ℤ)

end

end A015614.P2831346157314660023

namespace A015614

/-- `A187263(n+1)-(n+1)` -/
def P2831346157314660023.Spec : Prop :=
  ∀ n, P2831346157314660023.a n = A015614 (n + 1)

end A015614

/-! ## A015614.P16657900408111214176

`∑[sqrt(A127473(n+1))]-1`
-/

namespace A015614.P16657900408111214176
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A015614.P16657900408111214176

namespace A015614

/-- `∑[sqrt(A127473(n+1))]-1` -/
def P16657900408111214176.Spec : Prop :=
  ∀ n, P16657900408111214176.a n = (A015614 (n + 1) : ℝ)

end A015614

/-! ## A015614.P2056827909162091812

`∑[A349137(2*n+1)]-1`
-/

namespace A015614.P2056827909162091812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A015614.P2056827909162091812

namespace A015614

/-- `∑[A349137(2*n+1)]-1` -/
def P2056827909162091812.Spec : Prop :=
  ∀ n, P2056827909162091812.a n = A015614 (n + 1)

end A015614

/-!
# A015615: Inverse of 1606th cyclotomic polynomial.

The programs for A015615, there is no canonical definition to state claims against.
-/

/-! ## A015615.P16680586123946839050

`A014812(n)/(A004442(n)-n)`
-/

namespace A015615.P16680586123946839050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014812 n : ℚ) / (A004442 n - (n : ℤ) : ℚ)

end

end A015615.P16680586123946839050

/-! ## A015615.P5769743942787949122

`(A167520(A028310(n))-A110654(2*n+1))*a(n-1)` with `a(0)=1`
-/

namespace A015615.P5769743942787949122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A167520 (A028310 n).toNat - A110654 (2 * n + 1)) * a (n - 1)

end

end A015615.P5769743942787949122

/-!
# A015616: Number of triples (i,j,k) with 1 <= i < j < k <= n and gcd(i,j,k) = 1.

The programs for A015616, the canonical program `A015616.P14708381890948366132` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015616 has offset 1).

The definition of A015616 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018805, A071778, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A015616.P14708381890948366132

`(A071778(n+1)-3*A018805(n+1)+2)/6`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A015616

/-- `(A071778(n+1)-3*A018805(n+1)+2)/6` -/
def P14708381890948366132.Spec : Prop :=
  ∀ n, P14708381890948366132.a n = (A015616 (n + 1) : ℚ)

end A015616

/-! ## A015616.P18235841159356131370

`∑[A000741(n+1)]`
-/

namespace A015616.P18235841159356131370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015616.P18235841159356131370

namespace A015616

/-- `∑[A000741(n+1)]` -/
def P18235841159356131370.Spec : Prop :=
  ∀ n, P18235841159356131370.a n = A015616 (n + 1)

end A015616

/-! ## A015616.P8301136068426435110

`∑[A161680(n)-A344574(n+1)]`
-/

namespace A015616.P8301136068426435110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n - A344574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015616.P8301136068426435110

namespace A015616

/-- `∑[A161680(n)-A344574(n+1)]` -/
def P8301136068426435110.Spec : Prop :=
  ∀ n, P8301136068426435110.a n = A015616 (n + 1)

end A015616

/-! ## A015616.P13808433972927032747

`A015631(n+1)-A018805(n+1)`
-/

namespace A015616.P13808433972927032747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015631 (n + 1) - A018805 (n + 1)

end

end A015616.P13808433972927032747

namespace A015616

/-- `A015631(n+1)-A018805(n+1)` -/
def P13808433972927032747.Spec : Prop :=
  ∀ n, P13808433972927032747.a n = A015616 (n + 1)

end A015616

/-! ## A015616.P10845266884058156002

`A100448(n+1)-A015614(n+1)`
-/

namespace A015616.P10845266884058156002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100448 (n + 1) - A015614 (n + 1)

end

end A015616.P10845266884058156002

namespace A015616

/-- `A100448(n+1)-A015614(n+1)` -/
def P10845266884058156002.Spec : Prop :=
  ∀ n, P10845266884058156002.a n = A015616 (n + 1)

end A015616

/-! ## A015616.P12290105649109324330

`∑[A326419(n+1)-A000010(n+1)]`
-/

namespace A015616.P12290105649109324330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326419 (n + 1) - A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015616.P12290105649109324330

namespace A015616

/-- `∑[A326419(n+1)-A000010(n+1)]` -/
def P12290105649109324330.Spec : Prop :=
  ∀ n, P12290105649109324330.a n = A015616 (n + 1)

end A015616

/-! ## A015616.P8323893339838659855

`A100448(n+1)+1-A092249(n+1)`
-/

namespace A015616.P8323893339838659855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100448 (n + 1) + (1 - A092249 (n + 1))

end

end A015616.P8323893339838659855

namespace A015616

/-- `A100448(n+1)+1-A092249(n+1)` -/
def P8323893339838659855.Spec : Prop :=
  ∀ n, P8323893339838659855.a n = A015616 (n + 1)

end A015616

/-! ## A015616.P12476307921716488919

`A100448(n+1)+1-∑[A000010(n+1)]`
-/

namespace A015616.P12476307921716488919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100448 (n + 1) + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015616.P12476307921716488919

namespace A015616

/-- `A100448(n+1)+1-∑[A000010(n+1)]` -/
def P12476307921716488919.Spec : Prop :=
  ∀ n, P12476307921716488919.a n = A015616 (n + 1)

end A015616

/-! ## A015616.P2556438038906902051

`∑[A326419(n+1)]-(A015614(n+1)+1)`
-/

namespace A015616.P2556438038906902051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A015614 (n + 1) + 1)

end

end A015616.P2556438038906902051

namespace A015616

/-- `∑[A326419(n+1)]-(A015614(n+1)+1)` -/
def P2556438038906902051.Spec : Prop :=
  ∀ n, P2556438038906902051.a n = A015616 (n + 1)

end A015616

/-! ## A015616.P13208502578486274586

`∑[∑{d}[n+1, A008683(#)*A161680((n+1)/#-1)]]`
-/

namespace A015616.P13208502578486274586
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A008683 d * A161680 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015616.P13208502578486274586

namespace A015616

/-- `∑[∑{d}[n+1, A008683(#)*A161680((n+1)/#-1)]]` -/
def P13208502578486274586.Spec : Prop :=
  ∀ n, P13208502578486274586.a n = A015616 (n + 1)

end A015616

/-! ## A015616.P4306535651056133838

`A002088(n+1)+A100448(n+1)-A018805(n+1)`
-/

namespace A015616.P4306535651056133838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) + (A100448 (n + 1) - A018805 (n + 1))

end

end A015616.P4306535651056133838

namespace A015616

/-- `A002088(n+1)+A100448(n+1)-A018805(n+1)` -/
def P4306535651056133838.Spec : Prop :=
  ∀ n, P4306535651056133838.a n = A015616 (n + 1)

end A015616

/-! ## A015616.P6914923937420037084

`A321879(n+1)+2-A048134(n+1)`
-/

namespace A015616.P6914923937420037084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321879 (n + 1) + (2 - A048134 (n + 1))

end

end A015616.P6914923937420037084

namespace A015616

/-- `A321879(n+1)+2-A048134(n+1)` -/
def P6914923937420037084.Spec : Prop :=
  ∀ n, P6914923937420037084.a n = A015616 (n + 1)

end A015616

/-!
# A015617: Number of (unordered) triples of integers from [1,n] with no common factors between pairs.

The programs for A015617, there is no canonical definition to state claims against.
-/

/-! ## A015617.P11319570446837965322

`∑[A185953(n+1)]`
-/

namespace A015617.P11319570446837965322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015617.P11319570446837965322

/-! ## A015617.P13505506611831435898

`A015632(n+1)-(n+1)`
-/

namespace A015617.P13505506611831435898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015632 (n + 1) - (n + 1 : ℤ)

end

end A015617.P13505506611831435898

/-! ## A015617.P17670383267475944782

`A187264(n+1)-A187263(n+1)`
-/

namespace A015617.P17670383267475944782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187264 (n + 1) - A187263 (n + 1)

end

end A015617.P17670383267475944782

/-! ## A015617.P2578527818135891065

`∑[A186987(n+1)-1]-A015614(n+1)`
-/

namespace A015617.P2578527818135891065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186987 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A015614 (n + 1)

end

end A015617.P2578527818135891065

/-! ## A015617.P12680243677708789649

`∑[A186987(n+1)-A000010(n+1)]-n`
-/

namespace A015617.P12680243677708789649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186987 (n + 1) - A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A015617.P12680243677708789649

/-!
# A015618: Number of triples of different integers from [ 2,n ] with no global factor.

The programs for A015618, the canonical program `A015618.P16480477383865043174` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015618 has offset 2).

The definition of A015618 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5829 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015618.P16480477383865043174

`∑[A000741(n+2)-n]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A015618

/-- `∑[A000741(n+2)-n]` -/
def P16480477383865043174.Spec : Prop :=
  ∀ n, P16480477383865043174.a n = A015618 (n + 2)

theorem P16480477383865043174.correct : P16480477383865043174.Spec := by
  intro n
  simp only [A015618, Nat.add_sub_cancel]

end A015618

/-! ## A015618.P17720121368545929439

`A015616(n+2)-∑[n]`
-/

namespace A015618.P17720121368545929439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015616 (n + 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A015618.P17720121368545929439

namespace A015618

/-- `A015616(n+2)-∑[n]` -/
def P17720121368545929439.Spec : Prop :=
  ∀ n, P17720121368545929439.a n = A015618 (n + 2)

end A015618

/-! ## A015618.P18121183968364195112

`∑[A001489(n)+A000741(n+2)]`
-/

namespace A015618.P18121183968364195112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + A000741 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015618.P18121183968364195112

namespace A015618

/-- `∑[A001489(n)+A000741(n+2)]` -/
def P18121183968364195112.Spec : Prop :=
  ∀ n, P18121183968364195112.a n = A015618 (n + 2)

end A015618

/-! ## A015618.P3968086442408400284

`∑[A161680(n)-A344574(n+2)]`
-/

namespace A015618.P3968086442408400284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n - A344574 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015618.P3968086442408400284

namespace A015618

/-- `∑[A161680(n)-A344574(n+2)]` -/
def P3968086442408400284.Spec : Prop :=
  ∀ n, P3968086442408400284.a n = A015618 (n + 2)

end A015618

/-! ## A015618.P10572171312567043452

`A015616(n+2)-A161680(n)-n`
-/

namespace A015618.P10572171312567043452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015616 (n + 2) - A161680 n - (n : ℤ)

end

end A015618.P10572171312567043452

namespace A015618

/-- `A015616(n+2)-A161680(n)-n` -/
def P10572171312567043452.Spec : Prop :=
  ∀ n, P10572171312567043452.a n = A015618 (n + 2)

end A015618

/-! ## A015618.P5910223792558743099

`A015625(n+2)-A015629(n+2)`
-/

namespace A015618.P5910223792558743099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015625 (n + 2) - A015629 (n + 2)

end

end A015618.P5910223792558743099

namespace A015618

/-- `A015625(n+2)-A015629(n+2)` -/
def P5910223792558743099.Spec : Prop :=
  ∀ n, P5910223792558743099.a n = A015618 (n + 2)

end A015618

/-! ## A015618.P8346813459855084076

`A015625(n+2)-(A015646(n+2)-A015649(n+2))`
-/

namespace A015618.P8346813459855084076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015625 (n + 2) - (A015646 (n + 2) - A015649 (n + 2))

end

end A015618.P8346813459855084076

namespace A015618

/-- `A015625(n+2)-(A015646(n+2)-A015649(n+2))` -/
def P8346813459855084076.Spec : Prop :=
  ∀ n, P8346813459855084076.a n = A015618 (n + 2)

end A015618

/-!
# A015619: Inverse of 1610th cyclotomic polynomial.

The programs for A015619, there is no canonical definition to state claims against.
-/

/-! ## A015619.P8481444975098343048

`A014814(n)*A033999(n)`
-/

namespace A015619.P8481444975098343048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014814 n * A033999 n

end

end A015619.P8481444975098343048

/-!
# A015620: Number of triples of different integers from [ 2,n ] with no common factors between pairs.

The programs for A015620, there is no canonical definition to state claims against.
-/

/-! ## A015620.P15660974910972060302

`∑[A185953(n+2)+1-A000010(n+2)]`
-/

namespace A015620.P15660974910972060302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185953 (n + 2) + (1 - A000010 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015620.P15660974910972060302

/-! ## A015620.P2287356390506349950

`∑[A185953(n+2)+1]-A015614(n+2)`
-/

namespace A015620.P2287356390506349950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185953 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A015614 (n + 2)

end

end A015620.P2287356390506349950

/-! ## A015620.P2333878094374169662

`A015632(n+2)-(A015614(n+2)+1)`
-/

namespace A015620.P2333878094374169662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015632 (n + 2) - (A015614 (n + 2) + 1)

end

end A015620.P2333878094374169662

/-! ## A015620.P18379228153315617735

`A015617(n+2)-A015613(n+2)`
-/

namespace A015620.P18379228153315617735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015617 (n + 2) - A015613 (n + 2)

end

end A015620.P18379228153315617735

/-! ## A015620.P14377861009949272235

`A015617(n+2)+∑[1-A000010(n+2)]`
-/

namespace A015620.P14377861009949272235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000010 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015617 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015620.P14377861009949272235

/-!
# A015621: Inverse of 1612th cyclotomic polynomial.

The programs for A015621, there is no canonical definition to state claims against.
-/

/-! ## A015621.P12339316174328328062

`A015933(n)^A015950(A015948(n))`
-/

namespace A015621.P12339316174328328062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015933 n : ℚ) ^ (A015950 (A015948 n).toNat : ℤ)

end

end A015621.P12339316174328328062

/-! ## A015621.P10676921738647371055

`A016141(n)-A016141(A016105(3*n+5))`
-/

namespace A015621.P10676921738647371055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016141 n - A016141 (A016105 (3 * n + 5)).toNat

end

end A015621.P10676921738647371055

/-! ## A015621.P14322474950962436618

`A008966(A368100(n+1))*A016245(n)`
-/

namespace A015621.P14322474950962436618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A368100 (n + 1)).toNat * A016245 n

end

end A015621.P14322474950962436618

/-! ## A015621.P8251593731061287905

`A014757(A138101(n+2))`
-/

namespace A015621.P8251593731061287905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014757 (A138101 (n + 2)).toNat

end

end A015621.P8251593731061287905

/-!
# A015622: Quadruples of different integers from [ 1,n ] with no global factor.

The programs for A015622, the canonical program `A015622.P7437810160960809302` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015622 has offset 1).

The definition of A015622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1011 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015622.P7437810160960809302

`∑[A346760(n+1)-A000741(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A015622

/-- `∑[A346760(n+1)-A000741(n+1)]` -/
def P7437810160960809302.Spec : Prop :=
  ∀ n, P7437810160960809302.a n = A015622 (n + 1)

theorem P7437810160960809302.correct : P7437810160960809302.Spec := by
  intro n
  simp only [A015622, Nat.add_sub_cancel]

end A015622

/-! ## A015622.P10770452775273948284

`∑[A346760(n+1)]-A015616(n+1)`
-/

namespace A015622.P10770452775273948284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A015616 (n + 1)

end

end A015622.P10770452775273948284

namespace A015622

/-- `∑[A346760(n+1)]-A015616(n+1)` -/
def P10770452775273948284.Spec : Prop :=
  ∀ n, P10770452775273948284.a n = A015622 (n + 1)

end A015622

/-! ## A015622.P7188018868936880498

`∑[A346761(n+1)]-A015640(n+1)`
-/

namespace A015622.P7188018868936880498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A015640 (n + 1)

end

end A015622.P7188018868936880498

namespace A015622

/-- `∑[A346761(n+1)]-A015640(n+1)` -/
def P7188018868936880498.Spec : Prop :=
  ∀ n, P7188018868936880498.a n = A015622 (n + 1)

theorem P7188018868936880498.correct : P7188018868936880498.Spec := by
  intro n
  simp only [A015622, Nat.add_sub_cancel, A015622.P7188018868936880498.f1, A015622.P7188018868936880498.a, A015622.P7437810160960809302.f1, A015622.P7437810160960809302.a, A000741, A000741.P6152185288410453869.a, A015640, A015640.P16174645672135619219.f1, A015640.P16174645672135619219.a, A346760, A346760.P5222044433833628232.a, A346761, A346761.P16965742112610444180.a, A000010, A000010.P4673923239450215316.a, A007434, A007434.P3432859153295839493.a, A059376, A059376.P12656735072516275082.f1, A059376.P12656735072516275082.a, A059377, A059377.P4346818254889849577.f1, A059377.P4346818254889849577.a, A161680, A161680.P17206074215489759881.a, A344574, A344574.P13987926843258273889.f1, A344574.P13987926843258273889.a, A001158, A001158.P5142498491642488153.f1, A001158.P5142498491642488153.a, A001159, A001159.P9898895530264138649.f1, A001159.P9898895530264138649.a, A001615, A001615.P12078511981713404634.a, A003557, A003557.P6364735403900941810.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A173557, A173557.P15666735857375843373.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A015622

/-! ## A015622.P4862988484154915124

`A015634(n+1)-A016777(A100448(n+1))`
-/

namespace A015622.P4862988484154915124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015634 (n + 1) - A016777 (A100448 (n + 1)).toNat

end

end A015622.P4862988484154915124

namespace A015622

/-- `A015634(n+1)-A016777(A100448(n+1))` -/
def P4862988484154915124.Spec : Prop :=
  ∀ n, P4862988484154915124.a n = A015622 (n + 1)

end A015622

/-! ## A015622.P386775152157589177

`A015634(n+1)-A003602(A071778(n+1))`
-/

namespace A015622.P386775152157589177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015634 (n + 1) - A003602 (A071778 (n + 1)).toNat

end

end A015622.P386775152157589177

namespace A015622

/-- `A015634(n+1)-A003602(A071778(n+1))` -/
def P386775152157589177.Spec : Prop :=
  ∀ n, P386775152157589177.a n = A015622 (n + 1)

end A015622

/-!
# A015623: Quadruples of different integers from [ 1,n ] with no common factors between pairs.

The programs for A015623, there is no canonical definition to state claims against.
-/

/-! ## A015623.P7325318917949351708

`∑[A185348(n+1)]`
-/

namespace A015623.P7325318917949351708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015623.P7325318917949351708

/-! ## A015623.P17610629996592552035

`A187265(n+1)-A187264(n+1)`
-/

namespace A015623.P17610629996592552035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187265 (n + 1) - A187264 (n + 1)

end

end A015623.P17610629996592552035

/-! ## A015623.P9777027249181649306

`∑[A186988(n+1)-A186987(n+1)]`
-/

namespace A015623.P9777027249181649306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186988 (n + 1) - A186987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015623.P9777027249181649306

/-! ## A015623.P17728689353543718181

`∑[A186988(n+1)]-A187264(n+1)`
-/

namespace A015623.P17728689353543718181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A187264 (n + 1)

end

end A015623.P17728689353543718181

/-! ## A015623.P9512254202906294872

`A187265(n+1)-∑[A186987(n+1)]`
-/

namespace A015623.P9512254202906294872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187265 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015623.P9512254202906294872

/-! ## A015623.P14484933871672388817

`A015636(n+1)-A092249(n+1)`
-/

namespace A015623.P14484933871672388817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015636 (n + 1) - A092249 (n + 1)

end

end A015623.P14484933871672388817

/-!
# A015624: Inverse of 1615th cyclotomic polynomial.

The programs for A015624, there is no canonical definition to state claims against.
-/

/-! ## A015624.P3846559506232139051

`A016349(A037463(n))-char[31]`
-/

namespace A015624.P3846559506232139051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016349 (A037463 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A015624.P3846559506232139051

/-! ## A015624.P4991559838053265051

`A011644(A056962(n))`
-/

namespace A015624.P4991559838053265051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011644 (A056962 n).toNat

end

end A015624.P4991559838053265051

/-!
# A015626: Inverse of 1617th cyclotomic polynomial.

The programs for A015626, there is no canonical definition to state claims against.
-/

/-! ## A015626.P102263175318172617

`A015920(n)*A275606(A367858(n+1))`
-/

namespace A015626.P102263175318172617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015920 n * A275606 (A367858 (n + 1)).toNat

end

end A015626.P102263175318172617

/-! ## A015626.P3438600307684136016

`A015920(n)%A157439(n)`
-/

namespace A015626.P3438600307684136016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015920 n) (A157439 n)

end

end A015626.P3438600307684136016

/-! ## A015626.P9106417922443858204

`A015920(n)*A103754(n+1)`
-/

namespace A015626.P9106417922443858204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015920 n * A103754 (n + 1)

end

end A015626.P9106417922443858204

/-! ## A015626.P15955633435906597148

`A015920(n)*A066701(n+2)`
-/

namespace A015626.P15955633435906597148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015920 n * A066701 (n + 2)

end

end A015626.P15955633435906597148

/-! ## A015626.P13459251788689678716

`A015920(n)*A366165(n+1)`
-/

namespace A015626.P13459251788689678716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015920 n * A366165 (n + 1)

end

end A015626.P13459251788689678716

/-!
# A015627: Quadruples of different integers from [ 2,n ] with no global factor.

The programs for A015627, the canonical program `A015627.P6012177256396085323` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015627 has offset 2).

The definition of A015627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1010 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015627.P6012177256396085323

`A015622(n+2)-∑[A161680(n)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A015627

/-- `A015622(n+2)-∑[A161680(n)]` -/
def P6012177256396085323.Spec : Prop :=
  ∀ n, P6012177256396085323.a n = A015627 (n + 2)

theorem P6012177256396085323.correct : P6012177256396085323.Spec := by
  intro n
  simp only [A015627, Nat.add_sub_cancel]

end A015627

/-! ## A015627.P13068743749930920504

`A015622(n+2)-Δ[A000332(n+1)]`
-/

namespace A015627.P13068743749930920504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015622 (n + 2) - (f1 (n + 1) - f1 n)

end

end A015627.P13068743749930920504

namespace A015627

/-- `A015622(n+2)-Δ[A000332(n+1)]` -/
def P13068743749930920504.Spec : Prop :=
  ∀ n, P13068743749930920504.a n = A015627 (n + 2)

end A015627

/-! ## A015627.P527148575079380332

`A015644(n+2)-A015645(n+2)`
-/

namespace A015627.P527148575079380332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015644 (n + 2) - A015645 (n + 2)

end

end A015627.P527148575079380332

namespace A015627

/-- `A015644(n+2)-A015645(n+2)` -/
def P527148575079380332.Spec : Prop :=
  ∀ n, P527148575079380332.a n = A015627 (n + 2)

end A015627

/-! ## A015627.P10464797677189579268

`∑{d}[n+1, C(#, 4)]-A025459(A000110(n))`
-/

namespace A015627.P10464797677189579268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), Nat.choose d 4 : ℕ) : ℤ) - A025459 (A000110 n).toNat

end

end A015627.P10464797677189579268

namespace A015627

/-- `∑{d}[n+1, C(#, 4)]-A025459(A000110(n))` -/
def P10464797677189579268.Spec : Prop :=
  ∀ n, P10464797677189579268.a n = A015627 (n + 2)

end A015627

/-!
# A015628: Quadruples of different integers from [ 2,n ] with no common factors between pairs.

The programs for A015628, there is no canonical definition to state claims against.
-/

/-! ## A015628.P5501945780638148608

`A015623(n+2)-A015620(n+2)`
-/

namespace A015628.P5501945780638148608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015623 (n + 2) - A015620 (n + 2)

end

end A015628.P5501945780638148608

/-! ## A015628.P8550784971663026630

`A015636(n+2)-A015632(n+2)`
-/

namespace A015628.P8550784971663026630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015636 (n + 2) - A015632 (n + 2)

end

end A015628.P8550784971663026630

/-! ## A015628.P8349995101251790612

`A015698(n+2)-A015699(n+2)`
-/

namespace A015628.P8349995101251790612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015698 (n + 2) - A015699 (n + 2)

end

end A015628.P8349995101251790612

/-!
# A015629: Quadruples of different integers from [ 2,n ] with no common factors between triples.

The programs for A015629, there is no canonical definition to state claims against.
-/

/-! ## A015629.P426787372673849484

`A015625(n+2)-A015618(n+2)`
-/

namespace A015629.P426787372673849484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015625 (n + 2) - A015618 (n + 2)

end

end A015629.P426787372673849484

/-! ## A015629.P4266722210907897788

`A015646(n+2)-A015649(n+2)`
-/

namespace A015629.P4266722210907897788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015646 (n + 2) - A015649 (n + 2)

end

end A015629.P4266722210907897788

/-! ## A015629.P6149434288474914234

`A250300(A006584(n))/A226806(n+1)`
-/

namespace A015629.P6149434288474914234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250300 (A006584 n).toNat : ℚ) / (A226806 (n + 1) : ℚ)

end

end A015629.P6149434288474914234

/-! ## A015629.P17768896743213377018

`A243282(lcm(A000288(n), A107947(n+1)))`
-/

namespace A015629.P17768896743213377018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243282 (Int.lcm (A000288 n) (A107947 (n + 1)))

end

end A015629.P17768896743213377018

/-!
# A015630: Augmented amicable pairs (larger member of each pair).

The programs for A015630, there is no canonical definition to state claims against.
-/

/-! ## A015630.P934548449479493978

`A281265(A253241(n+1))`
-/

namespace A015630.P934548449479493978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281265 (A253241 (n + 1)).toNat

end

end A015630.P934548449479493978

/-!
# A015631: Number of ordered triples of integers from [ 1..n ] with no global factor.

The programs for A015631, the canonical program `A015631.P11775109709448505871` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015631 has offset 1).

The definition of A015631 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018805, A071778, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A015631.P11775109709448505871

`(A071778(n+1)+3*A018805(n+1)+2)/6`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A015631

/-- `(A071778(n+1)+3*A018805(n+1)+2)/6` -/
def P11775109709448505871.Spec : Prop :=
  ∀ n, P11775109709448505871.a n = (A015631 (n + 1) : ℚ)

end A015631

/-! ## A015631.P6351058999807977508

`∑[A007438(n+1)]`
-/

namespace A015631.P6351058999807977508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015631.P6351058999807977508

namespace A015631

/-- `∑[A007438(n+1)]` -/
def P6351058999807977508.Spec : Prop :=
  ∀ n, P6351058999807977508.a n = A015631 (n + 1)

end A015631

/-! ## A015631.P6163101918051084090

`A018805(n+1)+A015616(n+1)`
-/

namespace A015631.P6163101918051084090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (n + 1) + A015616 (n + 1)

end

end A015631.P6163101918051084090

namespace A015631

/-- `A018805(n+1)+A015616(n+1)` -/
def P6163101918051084090.Spec : Prop :=
  ∀ n, P6163101918051084090.a n = A015631 (n + 1)

end A015631

/-! ## A015631.P5274477484975916927

`A100448(n+1)+A002088(n+1)`
-/

namespace A015631.P5274477484975916927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100448 (n + 1) + A002088 (n + 1)

end

end A015631.P5274477484975916927

namespace A015631

/-- `A100448(n+1)+A002088(n+1)` -/
def P5274477484975916927.Spec : Prop :=
  ∀ n, P5274477484975916927.a n = A015631 (n + 1)

end A015631

/-! ## A015631.P10775870337954652117

`A100448(n+1)+A092249(n+1)`
-/

namespace A015631.P10775870337954652117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100448 (n + 1) + A092249 (n + 1)

end

end A015631.P10775870337954652117

namespace A015631

/-- `A100448(n+1)+A092249(n+1)` -/
def P10775870337954652117.Spec : Prop :=
  ∀ n, P10775870337954652117.a n = A015631 (n + 1)

end A015631

/-! ## A015631.P6763280064652108179

`A100448(n+1)+∑[A000010(n+1)]`
-/

namespace A015631.P6763280064652108179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100448 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015631.P6763280064652108179

namespace A015631

/-- `A100448(n+1)+∑[A000010(n+1)]` -/
def P6763280064652108179.Spec : Prop :=
  ∀ n, P6763280064652108179.a n = A015631 (n + 1)

end A015631

/-! ## A015631.P4159887805239373688

`∑[A102309(n+1)+A000010(n+1)]`
-/

namespace A015631.P4159887805239373688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102309 (n + 1) + A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015631.P4159887805239373688

namespace A015631

/-- `∑[A102309(n+1)+A000010(n+1)]` -/
def P4159887805239373688.Spec : Prop :=
  ∀ n, P4159887805239373688.a n = A015631 (n + 1)

end A015631

/-! ## A015631.P10250320193775331087

`A015616(n+1)+∑[A140434(n+1)]`
-/

namespace A015631.P10250320193775331087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015616 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015631.P10250320193775331087

namespace A015631

/-- `A015616(n+1)+∑[A140434(n+1)]` -/
def P10250320193775331087.Spec : Prop :=
  ∀ n, P10250320193775331087.a n = A015631 (n + 1)

end A015631

/-! ## A015631.P15997837740725731592

`A015614(n+1)+∑[A326419(n+1)]`
-/

namespace A015631.P15997837740725731592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015631.P15997837740725731592

namespace A015631

/-- `A015614(n+1)+∑[A326419(n+1)]` -/
def P15997837740725731592.Spec : Prop :=
  ∀ n, P15997837740725731592.a n = A015631 (n + 1)

end A015631

/-! ## A015631.P10403248385541243309

`A015614(n+1)+A100448(n+1)+1`
-/

namespace A015631.P10403248385541243309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1) + (A100448 (n + 1) + 1)

end

end A015631.P10403248385541243309

namespace A015631

/-- `A015614(n+1)+A100448(n+1)+1` -/
def P10403248385541243309.Spec : Prop :=
  ∀ n, P10403248385541243309.a n = A015631 (n + 1)

end A015631

/-! ## A015631.P3032023428061666371

`∑[A326419(n+1)+A000010(n+1)]-1`
-/

namespace A015631.P3032023428061666371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326419 (n + 1) + A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A015631.P3032023428061666371

namespace A015631

/-- `∑[A326419(n+1)+A000010(n+1)]-1` -/
def P3032023428061666371.Spec : Prop :=
  ∀ n, P3032023428061666371.a n = A015631 (n + 1)

end A015631

/-! ## A015631.P1656811818951302960

`A002088(n+1)+∑[A326419(n+1)]-1`
-/

namespace A015631.P1656811818951302960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A015631.P1656811818951302960

namespace A015631

/-- `A002088(n+1)+∑[A326419(n+1)]-1` -/
def P1656811818951302960.Spec : Prop :=
  ∀ n, P1656811818951302960.a n = A015631 (n + 1)

end A015631

/-! ## A015631.P16317259974083917301

`∑[(A007434(n+1)+A000010(n+1))/2]`
-/

namespace A015631.P16317259974083917301
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 1) + A000010 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015631.P16317259974083917301

namespace A015631

/-- `∑[(A007434(n+1)+A000010(n+1))/2]` -/
def P16317259974083917301.Spec : Prop :=
  ∀ n, P16317259974083917301.a n = (A015631 (n + 1) : ℚ)

end A015631

/-! ## A015631.P4888124796286337145

`A015616(n+1)+∑[2*A000010(n+1)]-1`
-/

namespace A015631.P4888124796286337145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015616 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A015631.P4888124796286337145

namespace A015631

/-- `A015616(n+1)+∑[2*A000010(n+1)]-1` -/
def P4888124796286337145.Spec : Prop :=
  ∀ n, P4888124796286337145.a n = A015631 (n + 1)

end A015631

/-! ## A015631.P13679593344961522730

`∑[∑{d}[n+1, A000010(#)*A023896((n+1)/#)]]`
-/

namespace A015631.P13679593344961522730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000010 d * A023896 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015631.P13679593344961522730

namespace A015631

/-- `∑[∑{d}[n+1, A000010(#)*A023896((n+1)/#)]]` -/
def P13679593344961522730.Spec : Prop :=
  ∀ n, P13679593344961522730.a n = A015631 (n + 1)

end A015631

/-! ## A015631.P16486291881287989365

`A015616(n+1)+∑[2*(A109606(n+1)+1)]-1`
-/

namespace A015631.P16486291881287989365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A109606 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015616 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A015631.P16486291881287989365

namespace A015631

/-- `A015616(n+1)+∑[2*(A109606(n+1)+1)]-1` -/
def P16486291881287989365.Spec : Prop :=
  ∀ n, P16486291881287989365.a n = A015631 (n + 1)

end A015631

/-! ## A015631.P9321557183772068345

`A015616(n+1)+∑[2*(A039649(n+1)-1)]-1`
-/

namespace A015631.P9321557183772068345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A039649 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015616 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A015631.P9321557183772068345

namespace A015631

/-- `A015616(n+1)+∑[2*(A039649(n+1)-1)]-1` -/
def P9321557183772068345.Spec : Prop :=
  ∀ n, P9321557183772068345.a n = A015631 (n + 1)

end A015631

/-! ## A015631.P11784126683051141725

`A002088(n+1)+A015616(n+1)+A015614(n+1)`
-/

namespace A015631.P11784126683051141725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) + (A015616 (n + 1) + A015614 (n + 1))

end

end A015631.P11784126683051141725

namespace A015631

/-- `A002088(n+1)+A015616(n+1)+A015614(n+1)` -/
def P11784126683051141725.Spec : Prop :=
  ∀ n, P11784126683051141725.a n = A015631 (n + 1)

end A015631

/-! ## A015631.P4796542685363075237

`A100448(n+1)+A278049(n+1)-A018805(n+1)`
-/

namespace A015631.P4796542685363075237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100448 (n + 1) + (A278049 (n + 1) - A018805 (n + 1))

end

end A015631.P4796542685363075237

namespace A015631

/-- `A100448(n+1)+A278049(n+1)-A018805(n+1)` -/
def P4796542685363075237.Spec : Prop :=
  ∀ n, P4796542685363075237.a n = A015631 (n + 1)

end A015631

/-! ## A015631.P4530160011509965254

`A048134(n+1)-A005728(n+1)`
-/

namespace A015631.P4530160011509965254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048134 (n + 1) - A005728 (n + 1)

end

end A015631.P4530160011509965254

namespace A015631

/-- `A048134(n+1)-A005728(n+1)` -/
def P4530160011509965254.Spec : Prop :=
  ∀ n, P4530160011509965254.a n = A015631 (n + 1)

end A015631

/-!
# A015632: Number of ordered triples of integers from [ 1,n ] with no common factors between pairs.

The programs for A015632, there is no canonical definition to state claims against.
-/

/-! ## A015632.P2101838562059957262

`∑[A185953(n+1)+1]`
-/

namespace A015632.P2101838562059957262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185953 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015632.P2101838562059957262

/-! ## A015632.P6039030951583646676

`A187264(n+1)-A015614(n+1)`
-/

namespace A015632.P6039030951583646676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187264 (n + 1) - A015614 (n + 1)

end

end A015632.P6039030951583646676

/-! ## A015632.P16618824792215041927

`∑[A186987(n+1)]-A015614(n+1)`
-/

namespace A015632.P16618824792215041927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A015614 (n + 1)

end

end A015632.P16618824792215041927

/-! ## A015632.P2120641386334259269

`∑[A186987(n+1)-A000010(n+1)]+1`
-/

namespace A015632.P2120641386334259269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186987 (n + 1) - A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A015632.P2120641386334259269

/-! ## A015632.P4429216377338838270

`n+1+A187264(n+1)-A187263(n+1)`
-/

namespace A015632.P4429216377338838270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A187264 (n + 1) - A187263 (n + 1))

end

end A015632.P4429216377338838270

/-! ## A015632.P8534724524418928422

`A015617(n+1)+1+n`
-/

namespace A015632.P8534724524418928422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015617 (n + 1) + 1 + (n : ℤ)

end

end A015632.P8534724524418928422

/-! ## A015632.P6300108881456711295

`A015663(n+1)-A015698(n+1)`
-/

namespace A015632.P6300108881456711295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015663 (n + 1) - A015698 (n + 1)

end

end A015632.P6300108881456711295

/-!
# A015633: Number of ordered triples of integers from [ 2,n ] with no global factor.

The programs for A015633, the canonical program `A015633.P10478592312901122420` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015633 has offset 2).

The definition of A015633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5731 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015633.P10478592312901122420

`∑[A007438(n+2)-(n+2)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A015633

/-- `∑[A007438(n+2)-(n+2)]` -/
def P10478592312901122420.Spec : Prop :=
  ∀ n, P10478592312901122420.a n = A015633 (n + 2)

theorem P10478592312901122420.correct : P10478592312901122420.Spec := by
  intro n
  simp only [A015633, Nat.add_sub_cancel]

end A015633

/-! ## A015633.P3803564073758353134

`∑[Δ[A015631(n+1)]-(n+2)]`
-/

namespace A015633.P3803564073758353134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015631 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015633.P3803564073758353134

namespace A015633

/-- `∑[Δ[A015631(n+1)]-(n+2)]` -/
def P3803564073758353134.Spec : Prop :=
  ∀ n, P3803564073758353134.a n = A015633 (n + 2)

end A015633

/-! ## A015633.P14638659101845935744

`A015631(n+2)-A253145(n+1)`
-/

namespace A015633.P14638659101845935744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015631 (n + 2) - A253145 (n + 1)

end

end A015633.P14638659101845935744

namespace A015633

/-- `A015631(n+2)-A253145(n+1)` -/
def P14638659101845935744.Spec : Prop :=
  ∀ n, P14638659101845935744.a n = A015633 (n + 2)

end A015633

/-! ## A015633.P1058276391675748443

`A015631(n+2)-A000217(n+2)`
-/

namespace A015633.P1058276391675748443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015631 (n + 2) - A000217 (n + 2)

end

end A015633.P1058276391675748443

namespace A015633

/-- `A015631(n+2)-A000217(n+2)` -/
def P1058276391675748443.Spec : Prop :=
  ∀ n, P1058276391675748443.a n = A015633 (n + 2)

end A015633

/-! ## A015633.P13106038523848561977

`A100448(n+2)-A063985(n+2)`
-/

namespace A015633.P13106038523848561977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100448 (n + 2) - A063985 (n + 2)

end

end A015633.P13106038523848561977

namespace A015633

/-- `A100448(n+2)-A063985(n+2)` -/
def P13106038523848561977.Spec : Prop :=
  ∀ n, P13106038523848561977.a n = A015633 (n + 2)

end A015633

/-! ## A015633.P6789388428336065328

`A015631(n+2)-(A055998(n)+3)`
-/

namespace A015633.P6789388428336065328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015631 (n + 2) - (A055998 n + 3)

end

end A015633.P6789388428336065328

namespace A015633

/-- `A015631(n+2)-(A055998(n)+3)` -/
def P6789388428336065328.Spec : Prop :=
  ∀ n, P6789388428336065328.a n = A015633 (n + 2)

end A015633

/-! ## A015633.P6337378149885809772

`A015631(n+2)-A161680(n+3)`
-/

namespace A015633.P6337378149885809772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015631 (n + 2) - A161680 (n + 3)

end

end A015633.P6337378149885809772

namespace A015633

/-- `A015631(n+2)-A161680(n+3)` -/
def P6337378149885809772.Spec : Prop :=
  ∀ n, P6337378149885809772.a n = A015633 (n + 2)

end A015633

/-! ## A015633.P12634581190478045410

`A015631(n+2)-(A046691(n)+4)`
-/

namespace A015633.P12634581190478045410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015631 (n + 2) - (A046691 n + 4)

end

end A015633.P12634581190478045410

namespace A015633

/-- `A015631(n+2)-(A046691(n)+4)` -/
def P12634581190478045410.Spec : Prop :=
  ∀ n, P12634581190478045410.a n = A015633 (n + 2)

end A015633

/-! ## A015633.P6990750275175512164

`A015631(n+2)-Δ[A000292(n+1)]`
-/

namespace A015633.P6990750275175512164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015631 (n + 2) - (f1 (n + 1) - f1 n)

end

end A015633.P6990750275175512164

namespace A015633

/-- `A015631(n+2)-Δ[A000292(n+1)]` -/
def P6990750275175512164.Spec : Prop :=
  ∀ n, P6990750275175512164.a n = A015633 (n + 2)

end A015633

/-! ## A015633.P4981027269535108489

`A015616(n+2)+A018805(n+2)-A000217(n+2)`
-/

namespace A015633.P4981027269535108489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015616 (n + 2) + (A018805 (n + 2) - A000217 (n + 2))

end

end A015633.P4981027269535108489

namespace A015633

/-- `A015616(n+2)+A018805(n+2)-A000217(n+2)` -/
def P4981027269535108489.Spec : Prop :=
  ∀ n, P4981027269535108489.a n = A015633 (n + 2)

end A015633

/-! ## A015633.P15984759797142496077

`A015631(n+2)-A061727(2*n+3)`
-/

namespace A015633.P15984759797142496077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015631 (n + 2) - A061727 (2 * n + 3)

end

end A015633.P15984759797142496077

namespace A015633

/-- `A015631(n+2)-A061727(2*n+3)` -/
def P15984759797142496077.Spec : Prop :=
  ∀ n, P15984759797142496077.a n = A015633 (n + 2)

end A015633

/-!
# A015634: Number of ordered quadruples of integers from [ 1..n ] with no global factor.

The programs for A015634, the canonical program `A015634.P4293513486807038876` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015634 has offset 1).

The definition of A015634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015634.P4293513486807038876

`∑[A117108(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A015634

/-- `∑[A117108(n+1)]` -/
def P4293513486807038876.Spec : Prop :=
  ∀ n, P4293513486807038876.a n = A015634 (n + 1)

theorem P4293513486807038876.correct : P4293513486807038876.Spec := by
  intro n
  simp only [A015634, Nat.add_sub_cancel]

end A015634

/-! ## A015634.P17702561755113920824

`∑[A346760(n+1)+A007434(n+1)]`
-/

namespace A015634.P17702561755113920824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346760 (n + 1) + A007434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015634.P17702561755113920824

namespace A015634

/-- `∑[A346760(n+1)+A007434(n+1)]` -/
def P17702561755113920824.Spec : Prop :=
  ∀ n, P17702561755113920824.a n = A015634 (n + 1)

end A015634

/-! ## A015634.P9553379348806292511

`A117108(n%A005843(n)+1)+a(n-1)` with `a(0)=1`
-/

namespace A015634.P9553379348806292511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A117108 (Int.tmod (n : ℤ) (A005843 n) + 1).toNat + a (n - 1)

end

end A015634.P9553379348806292511

namespace A015634

/-- `A117108(n%A005843(n)+1)+a(n-1)` -/
def P9553379348806292511.Spec : Prop :=
  ∀ n, P9553379348806292511.a n = A015634 (n + 1)

end A015634

/-! ## A015634.P17414005268646694831

`∑[A346760(n+1)+A000056(n+1)/(n+1)]`
-/

namespace A015634.P17414005268646694831
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346760 (n + 1) : ℚ) + (A000056 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015634.P17414005268646694831

namespace A015634

/-- `∑[A346760(n+1)+A000056(n+1)/(n+1)]` -/
def P17414005268646694831.Spec : Prop :=
  ∀ n, P17414005268646694831.a n = (A015634 (n + 1) : ℚ)

end A015634

/-! ## A015634.P13006963257482681470

`∑[∑{d}[n+1, A008683(#)*A000292((n+1)/#)]]`
-/

namespace A015634.P13006963257482681470
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A008683 d * A000292 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015634.P13006963257482681470

namespace A015634

/-- `∑[∑{d}[n+1, A008683(#)*A000292((n+1)/#)]]` -/
def P13006963257482681470.Spec : Prop :=
  ∀ n, P13006963257482681470.a n = A015634 (n + 1)

end A015634

/-! ## A015634.P2973763026812176162

`A117108(n+1)+a(n-1)%A000079(n+1)` with `a(0)=1`
-/

namespace A015634.P2973763026812176162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A117108 (n + 1) + Int.tmod (a (n - 1)) (A000079 (n + 1))

end

end A015634.P2973763026812176162

namespace A015634

/-- `A117108(n+1)+a(n-1)%A000079(n+1)` -/
def P2973763026812176162.Spec : Prop :=
  ∀ n, P2973763026812176162.a n = A015634 (n + 1)

end A015634

/-! ## A015634.P9233705529666928151

`A177976(A167614(n+2)+1)`
-/

namespace A015634.P9233705529666928151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177976 (A167614 (n + 2) + 1).toNat

end

end A015634.P9233705529666928151

namespace A015634

/-- `A177976(A167614(n+2)+1)` -/
def P9233705529666928151.Spec : Prop :=
  ∀ n, P9233705529666928151.a n = A015634 (n + 1)

end A015634

/-!
# A015635: Number of ordered quadruples of integers from [ 1,n ] with no common factors between triples.

The programs for A015635, there is no canonical definition to state claims against.
-/

/-! ## A015635.P13346672176492194063

`A015656(n+1)-A015657(A082928(2*(n+1)))`
-/

namespace A015635.P13346672176492194063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015656 (n + 1) - A015657 (A082928 (2 * (n + 1))).toNat

end

end A015635.P13346672176492194063

/-! ## A015635.P14386296758892458602

`A003056(or(A038732(n+3), A038740(n+3)))`
-/

namespace A015635.P14386296758892458602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.lor (A038732 (n + 3)) (A038740 (n + 3))).toNat

end

end A015635.P14386296758892458602

/-!
# A015636: Number of ordered quadruples of integers from [ 1,n ] with no common factors between pairs.

The programs for A015636, there is no canonical definition to state claims against.
-/

/-! ## A015636.P11530461770166556747

`A015623(n+1)+Δ[A005598(n)]`
-/

namespace A015636.P11530461770166556747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015623 (n + 1) + (f1 (n + 1) - f1 n)

end

end A015636.P11530461770166556747

/-! ## A015636.P12441280466539775874

`A015623(n+1)+Δ[A103116(n)]`
-/

namespace A015636.P12441280466539775874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015623 (n + 1) + (f1 (n + 1) - f1 n)

end

end A015636.P12441280466539775874

/-! ## A015636.P1149521897843967315

`A015623(n+1)+A002088(n+1)`
-/

namespace A015636.P1149521897843967315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015623 (n + 1) + A002088 (n + 1)

end

end A015636.P1149521897843967315

/-! ## A015636.P8330827558055654577

`A092249(n+1)+A015623(n+1)`
-/

namespace A015636.P8330827558055654577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092249 (n + 1) + A015623 (n + 1)

end

end A015636.P8330827558055654577

/-! ## A015636.P4403038966568902863

`A015623(n+1)+∑[A000010(n+1)]`
-/

namespace A015636.P4403038966568902863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015623 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015636.P4403038966568902863

/-! ## A015636.P9016606496415627493

`∑[A185348(n+1)+A000010(n+1)]`
-/

namespace A015636.P9016606496415627493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185348 (n + 1) + A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015636.P9016606496415627493

/-! ## A015636.P11362325540714733463

`A015614(n+1)+A015623(n+1)+1`
-/

namespace A015636.P11362325540714733463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1) + (A015623 (n + 1) + 1)

end

end A015636.P11362325540714733463

/-! ## A015636.P17275432087787708337

`A187265(n+1)+1-A015632(n+1)`
-/

namespace A015636.P17275432087787708337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187265 (n + 1) + (1 - A015632 (n + 1))

end

end A015636.P17275432087787708337

/-!
# A015637: Inverse of 1628th cyclotomic polynomial.

The programs for A015637, there is no canonical definition to state claims against.
-/

/-! ## A015637.P3249745040285423316

`A015933(n)%A119946(n)`
-/

namespace A015637.P3249745040285423316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015933 n) (A119946 n)

end

end A015637.P3249745040285423316

/-!
# A015638: Number of ordered quadruples of integers from [ 2,n ] with no global factor.

The programs for A015638, the canonical program `A015638.P1771638695330122306` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015638 has offset 2).

The definition of A015638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015638.P1771638695330122306

`A015634(n+2)-A000292(n+2)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A015638

/-- `A015634(n+2)-A000292(n+2)` -/
def P1771638695330122306.Spec : Prop :=
  ∀ n, P1771638695330122306.a n = A015638 (n + 2)

theorem P1771638695330122306.correct : P1771638695330122306.Spec := by
  intro n
  simp only [A015638, Nat.add_sub_cancel]

end A015638

/-! ## A015638.P1316892489160758396

`∑[A117108(n+2)-A000217(n+2)]`
-/

namespace A015638.P1316892489160758396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117108 (n + 2) - A000217 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015638.P1316892489160758396

namespace A015638

/-- `∑[A117108(n+2)-A000217(n+2)]` -/
def P1316892489160758396.Spec : Prop :=
  ∀ n, P1316892489160758396.a n = A015638 (n + 2)

end A015638

/-! ## A015638.P10332482713617593488

`∑[Δ[A015634(n+1)]-A000217(n+2)]`
-/

namespace A015638.P10332482713617593488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015634 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000217 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015638.P10332482713617593488

namespace A015638

/-- `∑[Δ[A015634(n+1)]-A000217(n+2)]` -/
def P10332482713617593488.Spec : Prop :=
  ∀ n, P10332482713617593488.a n = A015638 (n + 2)

end A015638

/-! ## A015638.P13234101896359175490

`∑[A117108(n+2)-Δ[A000292(n+1)]]`
-/

namespace A015638.P13234101896359175490
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117108 (n + 2) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015638.P13234101896359175490

namespace A015638

/-- `∑[A117108(n+2)-Δ[A000292(n+1)]]` -/
def P13234101896359175490.Spec : Prop :=
  ∀ n, P13234101896359175490.a n = A015638 (n + 2)

end A015638

/-! ## A015638.P15021811075107980847

`A015634(n+2)-A007318(A000096(n+4)-3)`
-/

namespace A015638.P15021811075107980847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015634 (n + 2) - A007318 (A000096 (n + 4) - 3).toNat

end

end A015638.P15021811075107980847

namespace A015638

/-- `A015634(n+2)-A007318(A000096(n+4)-3)` -/
def P15021811075107980847.Spec : Prop :=
  ∀ n, P15021811075107980847.a n = A015638 (n + 2)

end A015638

/-!
# A015639: Number of ordered quadruples of integers from [ 2,n ] with no common factors between triples.

The programs for A015639, there is no canonical definition to state claims against.
-/

/-! ## A015639.P14979009876523233646

`A015635(n+2)-A015631(n+2)`
-/

namespace A015639.P14979009876523233646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015635 (n + 2) - A015631 (n + 2)

end

end A015639.P14979009876523233646

/-!
# A015640: Number of 5-tuples of different integers from [ 1,n ] with no global factor.

The programs for A015640, the canonical program `A015640.P16174645672135619219` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015640 has offset 1).

The definition of A015640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 362 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015640.P16174645672135619219

`∑[A346761(n+1)]-A015622(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A015640

/-- `∑[A346761(n+1)]-A015622(n+1)` -/
def P16174645672135619219.Spec : Prop :=
  ∀ n, P16174645672135619219.a n = A015640 (n + 1)

theorem P16174645672135619219.correct : P16174645672135619219.Spec := by
  intro n
  simp only [A015640, Nat.add_sub_cancel]

end A015640

/-! ## A015640.P13065544496671066703

`A000389(n+1)-A020987((2*n+1)^3)`
-/

namespace A015640.P13065544496671066703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 1) - A020987 ((2 * n + 1) ^ 3)

end

end A015640.P13065544496671066703

namespace A015640

/-- `A000389(n+1)-A020987((2*n+1)^3)` -/
def P13065544496671066703.Spec : Prop :=
  ∀ n, P13065544496671066703.a n = A015640 (n + 1)

end A015640

/-! ## A015640.P12236984968997594574

`∑[A000332(n)]-A107846(A003418(n))`
-/

namespace A015640.P12236984968997594574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A107846 (A003418 n).toNat

end

end A015640.P12236984968997594574

namespace A015640

/-- `∑[A000332(n)]-A107846(A003418(n))` -/
def P12236984968997594574.Spec : Prop :=
  ∀ n, P12236984968997594574.a n = A015640 (n + 1)

end A015640

/-! ## A015640.P2589880977132624522

`∑[A000332(n)]-A185238(A060546(n))`
-/

namespace A015640.P2589880977132624522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A185238 (A060546 n).toNat

end

end A015640.P2589880977132624522

namespace A015640

/-- `∑[A000332(n)]-A185238(A060546(n))` -/
def P2589880977132624522.Spec : Prop :=
  ∀ n, P2589880977132624522.a n = A015640 (n + 1)

end A015640

/-!
# A015641: Number of 5-tuples of different integers from [ 2,n ] with no global factor.

The programs for A015641, the canonical program `A015641.P988703046572257947` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015641 has offset 2).

The definition of A015641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015641.P988703046572257947

`A015640(n+2)-A000332(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A015641

/-- `A015640(n+2)-A000332(n+1)` -/
def P988703046572257947.Spec : Prop :=
  ∀ n, P988703046572257947.a n = A015641 (n + 2)

theorem P988703046572257947.correct : P988703046572257947.Spec := by
  intro n
  simp only [A015641, Nat.add_sub_cancel]

end A015641

/-! ## A015641.P7174754870226473651

`A015640(n+2)-Δ[A000389(n+1)]`
-/

namespace A015641.P7174754870226473651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015640 (n + 2) - (f1 (n + 1) - f1 n)

end

end A015641.P7174754870226473651

namespace A015641

/-- `A015640(n+2)-Δ[A000389(n+1)]` -/
def P7174754870226473651.Spec : Prop :=
  ∀ n, P7174754870226473651.a n = A015641 (n + 2)

end A015641

/-! ## A015641.P18309178380498838161

`A015640(A326178(n+1))+Δ[-A000389(n+1)]`
-/

namespace A015641.P18309178380498838161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A000389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015640 (A326178 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A015641.P18309178380498838161

namespace A015641

/-- `A015640(A326178(n+1))+Δ[-A000389(n+1)]` -/
def P18309178380498838161.Spec : Prop :=
  ∀ n, P18309178380498838161.a n = A015641 (n + 2)

end A015641

/-! ## A015641.P2666384375278517893

`∑[A346761(A057428(70*n²)+n+1)]`
-/

namespace A015641.P2666384375278517893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346761 (A057428 (70 * n ^ 2) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015641.P2666384375278517893

namespace A015641

/-- `∑[A346761(A057428(70*n²)+n+1)]` -/
def P2666384375278517893.Spec : Prop :=
  ∀ n, P2666384375278517893.a n = A015641 (n + 2)

end A015641

/-! ## A015641.P7878458821404151464

`∑[C(n, 4)]-A185284(A312014(n))`
-/

namespace A015641.P7878458821404151464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A185284 (A312014 n).toNat

end

end A015641.P7878458821404151464

namespace A015641

/-- `∑[C(n, 4)]-A185284(A312014(n))` -/
def P7878458821404151464.Spec : Prop :=
  ∀ n, P7878458821404151464.a n = A015641 (n + 2)

end A015641

/-!
# A015643: Inverse of 1634th cyclotomic polynomial.

The programs for A015643, there is no canonical definition to state claims against.
-/

/-! ## A015643.P8679967366947006108

`A014826(n)*A033999(n)`
-/

namespace A015643.P8679967366947006108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014826 n * A033999 n

end

end A015643.P8679967366947006108

/-! ## A015643.P18313916890984395236

`A015795(A175427(n+1))`
-/

namespace A015643.P18313916890984395236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015795 (A175427 (n + 1)).toNat

end

end A015643.P18313916890984395236

/-!
# A015644: Number of 5-tuples of different integers from [ 1,n ] with no common factors among quadruples.

The programs for A015644, there is no canonical definition to state claims against.
-/

/-! ## A015644.P11956184676149759226

`A329691(2*n+1)-A329670(A329685(n+1))`
-/

namespace A015644.P11956184676149759226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329691 (2 * n + 1) - A329670 (A329685 (n + 1)).toNat

end

end A015644.P11956184676149759226

/-!
# A015645: Number of 5-tuples of different integers from [ 2,n ] with no common factors among quadruples.

The programs for A015645, there is no canonical definition to state claims against.
-/

/-! ## A015645.P15569542197228241319

`A015644(n+2)-A015627(n+2)`
-/

namespace A015645.P15569542197228241319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015644 (n + 2) - A015627 (n + 2)

end

end A015645.P15569542197228241319

/-! ## A015645.P13923101167347573449

`A015644(n+2)-(A015622(n+2)-∑[A161680(n)])`
-/

namespace A015645.P13923101167347573449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015644 (n + 2) - (A015622 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015645.P13923101167347573449

/-! ## A015645.P1579166619018160758

`A015644(n+2)-(A015622(n+2)-Δ[A000332(n+1)])`
-/

namespace A015645.P1579166619018160758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015644 (n + 2) - (A015622 (n + 2) - (f1 (n + 1) - f1 n))

end

end A015645.P1579166619018160758

/-! ## A015645.P1750336108919491919

`A000389(n+1)-A275494(A225393(n))`
-/

namespace A015645.P1750336108919491919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 1) - A275494 (A225393 n).toNat

end

end A015645.P1750336108919491919

/-! ## A015645.P3181321460379523072

`floor(A105570(A052796(n))/A279312(n+1))`
-/

namespace A015645.P3181321460379523072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A105570 (A052796 n).toNat : ℚ) / (A279312 (n + 1) : ℚ)⌋

end

end A015645.P3181321460379523072

/-!
# A015646: Number of 5-tuples of different integers from [ 1,n ] with no common factors among triples.

The programs for A015646, there is no canonical definition to state claims against.
-/

/-! ## A015646.P13141539911789916825

`A224931(A049921(n+1))`
-/

namespace A015646.P13141539911789916825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224931 (A049921 (n + 1)).toNat

end

end A015646.P13141539911789916825

/-! ## A015646.P370304692728820801

`C(n, 4)-A163351(C(n, 4))`
-/

namespace A015646.P370304692728820801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 4 : ℤ) - A163351 (Nat.choose n 4)

end

end A015646.P370304692728820801

/-! ## A015646.P2548951600753003547

`A108500(A214083(n+1))`
-/

namespace A015646.P2548951600753003547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108500 (A214083 (n + 1)).toNat

end

end A015646.P2548951600753003547

/-! ## A015646.P8376696443912682516

`A341120(A230621(n)+1)`
-/

namespace A015646.P8376696443912682516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341120 (A230621 n + 1).toNat

end

end A015646.P8376696443912682516

/-! ## A015646.P13591507363479314207

`A038503(n)-A305499(A038503(n))`
-/

namespace A015646.P13591507363479314207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n - A305499 (A038503 n).toNat

end

end A015646.P13591507363479314207

/-!
# A015647: Inverse of 1638th cyclotomic polynomial.

The programs for A015647, there is no canonical definition to state claims against.
-/

/-! ## A015647.P15408327481552753231

`A015101(round(2*n/3))`
-/

namespace A015647.P15408327481552753231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015101 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat

end

end A015647.P15408327481552753231

/-! ## A015647.P16271266997199501810

`A016193(A004773(n))`
-/

namespace A015647.P16271266997199501810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016193 (A004773 n).toNat

end

end A015647.P16271266997199501810

/-! ## A015647.P2479991396705139787

`A016193(A131452(n))`
-/

namespace A015647.P2479991396705139787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016193 (A131452 n).toNat

end

end A015647.P2479991396705139787

/-! ## A015647.P11254271396141240338

`A016193(A265667(n))`
-/

namespace A015647.P11254271396141240338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016193 (A265667 n).toNat

end

end A015647.P11254271396141240338

/-! ## A015647.P16493978986703597377

`A016193(A367286(n))`
-/

namespace A015647.P16493978986703597377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016193 (A367286 n).toNat

end

end A015647.P16493978986703597377

/-! ## A015647.P12173862243342921888

`A016193(A367651(n))`
-/

namespace A015647.P12173862243342921888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016193 (A367651 n).toNat

end

end A015647.P12173862243342921888

/-! ## A015647.P11756482380116098242

`A016193(A004772(n+1))`
-/

namespace A015647.P11756482380116098242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016193 (A004772 (n + 1)).toNat

end

end A015647.P11756482380116098242

/-! ## A015647.P8394958724627091454

`A016193(A042965(n+1))`
-/

namespace A015647.P8394958724627091454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016193 (A042965 (n + 1)).toNat

end

end A015647.P8394958724627091454

/-! ## A015647.P7561027284631602900

`A016193(A047424(n+1))`
-/

namespace A015647.P7561027284631602900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016193 (A047424 (n + 1)).toNat

end

end A015647.P7561027284631602900

/-! ## A015647.P7782002641806816657

`A016193(A047428(n+1))`
-/

namespace A015647.P7782002641806816657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016193 (A047428 (n + 1)).toNat

end

end A015647.P7782002641806816657

/-! ## A015647.P7482285307036323371

`A016193(A047498(n+1))`
-/

namespace A015647.P7482285307036323371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016193 (A047498 (n + 1)).toNat

end

end A015647.P7482285307036323371

/-! ## A015647.P13458114302645934617

`A016193(A047503(n+1))`
-/

namespace A015647.P13458114302645934617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016193 (A047503 (n + 1)).toNat

end

end A015647.P13458114302645934617

/-! ## A015647.P1342273232948115668

`A016193(A047513(n+1))`
-/

namespace A015647.P1342273232948115668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016193 (A047513 (n + 1)).toNat

end

end A015647.P1342273232948115668

/-! ## A015647.P13745157269790965606

`A016193(A047517(n+1))`
-/

namespace A015647.P13745157269790965606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016193 (A047517 (n + 1)).toNat

end

end A015647.P13745157269790965606

/-! ## A015647.P17045602644950032282

`A010892(n)*A014828(n)`
-/

namespace A015647.P17045602644950032282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A014828 n

end

end A015647.P17045602644950032282

/-! ## A015647.P2566239009574097077

`A014828(n)*A033999(n)`
-/

namespace A015647.P2566239009574097077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014828 n * A033999 n

end

end A015647.P2566239009574097077

/-! ## A015647.P11734079227795155104

`A014828(n)*A057079(n)`
-/

namespace A015647.P11734079227795155104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014828 n * A057079 n

end

end A015647.P11734079227795155104

/-! ## A015647.P8979926672711075492

`A014828(n)*A081729(n)`
-/

namespace A015647.P8979926672711075492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014828 n * A081729 n

end

end A015647.P8979926672711075492

/-! ## A015647.P6555169669804190976

`A014828(n)*A101676(n)`
-/

namespace A015647.P6555169669804190976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014828 n * A101676 n

end

end A015647.P6555169669804190976

/-! ## A015647.P8321708436032528660

`A014828(n)*A103368(n)`
-/

namespace A015647.P8321708436032528660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014828 n * A103368 n

end

end A015647.P8321708436032528660

/-!
# A015648: Inverse of 1639th cyclotomic polynomial.

The programs for A015648, there is no canonical definition to state claims against.
-/

/-! ## A015648.P7025664987327510715

`C(10, A326627(n))`
-/

namespace A015648.P7025664987327510715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 10 (A326627 n).toNat

end

end A015648.P7025664987327510715

/-! ## A015648.P12256122670370648971

`C(gcd(2, n)-1, A326637(n))`
-/

namespace A015648.P12256122670370648971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((Nat.gcd 2 n : ℤ) - 1).toNat (A326637 n).toNat

end

end A015648.P12256122670370648971

/-! ## A015648.P8423724036739142914

`C(n, comp[A350395(2*(n+2))])`
-/

namespace A015648.P8423724036739142914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350395 (2 * (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015648.P8423724036739142914

/-! ## A015648.P7337626168469433346

`A010060(C(4, A326637(n)))`
-/

namespace A015648.P7337626168469433346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Nat.choose 4 (A326637 n).toNat)

end

end A015648.P7337626168469433346

/-! ## A015648.P4585071634315400001

`C(2, A232466(A131883(n+1)))`
-/

namespace A015648.P4585071634315400001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A232466 (A131883 (n + 1)).toNat).toNat

end

end A015648.P4585071634315400001

/-! ## A015648.P1745099792303271305

`C(A384225(n+1), A326637(n))`
-/

namespace A015648.P1745099792303271305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A384225 (n + 1)).toNat (A326637 n).toNat

end

end A015648.P1745099792303271305

/-! ## A015648.P13732382399677812834

`C(A245920(2*(n+2)), ∑[A103168(n+1)])`
-/

namespace A015648.P13732382399677812834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103168 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A245920 (2 * (n + 2))).toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015648.P13732382399677812834

/-! ## A015648.P9487006135732540770

`C(A319797(A125852(n+1)), A326529(n))`
-/

namespace A015648.P9487006135732540770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A319797 (A125852 (n + 1)).toNat).toNat (A326529 n).toNat

end

end A015648.P9487006135732540770

/-! ## A015648.P3661890305054606006

`C(n, comp[A360114(2*n+5)])`
-/

namespace A015648.P3661890305054606006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360114 (2 * n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015648.P3661890305054606006

/-! ## A015648.P3563508656977444843

`A008683(A261585(n)^4)`
-/

namespace A015648.P3563508656977444843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A261585 n ^ 4).toNat

end

end A015648.P3563508656977444843

/-! ## A015648.P14849376202872254061

`2-A055642(A003005(n+1))`
-/

namespace A015648.P14849376202872254061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A055642 (A003005 (n + 1)).toNat

end

end A015648.P14849376202872254061

/-! ## A015648.P3605996703147109550

`C(n, comp[A340605(3*n+2)])`
-/

namespace A015648.P3605996703147109550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340605 (3 * n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015648.P3605996703147109550

/-! ## A015648.P2997745757387054240

`C(3, A005408(A103378(n+1)))`
-/

namespace A015648.P2997745757387054240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A005408 (A103378 (n + 1)).toNat).toNat

end

end A015648.P2997745757387054240

/-! ## A015648.P4064202224556667860

`A082857(∏[round(A051903(2*n+5)/2)])`
-/

namespace A015648.P4064202224556667860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A051903 (2 * n + 5) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082857 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015648.P4064202224556667860

/-! ## A015648.P3888450237438427439

`C(A007306(n), A036301(A103378(n+1)))`
-/

namespace A015648.P3888450237438427439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007306 n).toNat (A036301 (A103378 (n + 1)).toNat).toNat

end

end A015648.P3888450237438427439

/-! ## A015648.P1428317957683450935

`C(A324198(n), A036301(A103378(n+1)))`
-/

namespace A015648.P1428317957683450935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A324198 n).toNat (A036301 (A103378 (n + 1)).toNat).toNat

end

end A015648.P1428317957683450935

/-! ## A015648.P18388691118515007437

`C(A002808(n+1), A036301(A103378(n+1)))`
-/

namespace A015648.P18388691118515007437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002808 (n + 1)).toNat (A036301 (A103378 (n + 1)).toNat).toNat

end

end A015648.P18388691118515007437

/-! ## A015648.P12155129192671231629

`C(A030528(n+1), A036301(A103378(n+1)))`
-/

namespace A015648.P12155129192671231629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A030528 (n + 1)).toNat (A036301 (A103378 (n + 1)).toNat).toNat

end

end A015648.P12155129192671231629

/-! ## A015648.P4109812462980343190

`C(A361808(n+1), A036301(A103378(n+1)))`
-/

namespace A015648.P4109812462980343190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A361808 (n + 1)).toNat (A036301 (A103378 (n + 1)).toNat).toNat

end

end A015648.P4109812462980343190

/-!
# A015649: Number of 5-tuples of different integers from [ 2,n ] with no common factors among triples.

The programs for A015649, there is no canonical definition to state claims against.
-/

/-! ## A015649.P11706494283615833089

`A015646(n+2)-A015629(n+2)`
-/

namespace A015649.P11706494283615833089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015646 (n + 2) - A015629 (n + 2)

end

end A015649.P11706494283615833089

/-! ## A015649.P14742915118844486896

`A015646(n+2)-(A015625(n+2)-A015618(n+2))`
-/

namespace A015649.P14742915118844486896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015646 (n + 2) - (A015625 (n + 2) - A015618 (n + 2))

end

end A015649.P14742915118844486896

/-! ## A015649.P10112647354413366112

`∑[C(C(A001221(n!), 2), 2)]`
-/

namespace A015649.P10112647354413366112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (A001221 (Nat.factorial n)).toNat 2) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015649.P10112647354413366112

/-! ## A015649.P4806546668636229969

`A025684(A148780(n))`
-/

namespace A015649.P4806546668636229969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025684 (A148780 n).toNat

end

end A015649.P4806546668636229969

/-! ## A015649.P15454531153567504778

`A187754(A045545(n))`
-/

namespace A015649.P15454531153567504778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187754 (A045545 n).toNat

end

end A015649.P15454531153567504778

/-!
# A015650: Number of ordered 5-tuples of integers from [ 1..n ] with no global factor.

The programs for A015650, the canonical program `A015650.P8611508311813970584` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015650 has offset 1).

The definition of A015650 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015650.P8611508311813970584

`∑[A117109(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A015650

/-- `∑[A117109(n+1)]` -/
def P8611508311813970584.Spec : Prop :=
  ∀ n, P8611508311813970584.a n = A015650 (n + 1)

theorem P8611508311813970584.correct : P8611508311813970584.Spec := by
  intro n
  simp only [A015650, Nat.add_sub_cancel]

end A015650

/-! ## A015650.P5009181693040757349

`A117109(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A015650.P5009181693040757349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A117109 (n + 1) + a (A023443 n).toNat

end

end A015650.P5009181693040757349

namespace A015650

/-- `A117109(n+1)+a(A023443(n))` -/
def P5009181693040757349.Spec : Prop :=
  ∀ n, P5009181693040757349.a n = A015650 (n + 1)

end A015650

/-! ## A015650.P8158287924043614291

`∑[∑{d}[n+1, A007427(#)*A073570((n+1)/#)]]`
-/

namespace A015650.P8158287924043614291
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A007427 d * A073570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015650.P8158287924043614291

namespace A015650

/-- `∑[∑{d}[n+1, A007427(#)*A073570((n+1)/#)]]` -/
def P8158287924043614291.Spec : Prop :=
  ∀ n, P8158287924043614291.a n = A015650 (n + 1)

end A015650

/-! ## A015650.P16731478251490099593

`A117109(n+1)+a(n-A000010(((-1)^n)²))` with `a(0)=1`
-/

namespace A015650.P16731478251490099593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A117109 (n + 1) + a ((n : ℤ) - A000010 (((-1) ^ n) ^ 2).toNat).toNat

end

end A015650.P16731478251490099593

namespace A015650

/-- `A117109(n+1)+a(n-A000010(((-1)^n)²))` -/
def P16731478251490099593.Spec : Prop :=
  ∀ n, P16731478251490099593.a n = A015650 (n + 1)

end A015650

/-! ## A015650.P6356625375992512085

`A117109(n+1)+a(n%A165747(n+1)-1)` with `a(0)=1`
-/

namespace A015650.P6356625375992512085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A117109 (n + 1) + a (Int.tmod (n : ℤ) (A165747 (n + 1)) - 1).toNat

end

end A015650.P6356625375992512085

namespace A015650

/-- `A117109(n+1)+a(n%A165747(n+1)-1)` -/
def P6356625375992512085.Spec : Prop :=
  ∀ n, P6356625375992512085.a n = A015650 (n + 1)

end A015650

/-! ## A015650.P8686091184418283363

`∑[A177975(A167499(n+3))]`
-/

namespace A015650.P8686091184418283363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177975 (A167499 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015650.P8686091184418283363

namespace A015650

/-- `∑[A177975(A167499(n+3))]` -/
def P8686091184418283363.Spec : Prop :=
  ∀ n, P8686091184418283363.a n = A015650 (n + 1)

end A015650

/-! ## A015650.P12525628509940686489

`∑[A177975(A056000(n)+15)]`
-/

namespace A015650.P12525628509940686489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177975 (A056000 n + 15).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015650.P12525628509940686489

namespace A015650

/-- `∑[A177975(A056000(n)+15)]` -/
def P12525628509940686489.Spec : Prop :=
  ∀ n, P12525628509940686489.a n = A015650 (n + 1)

end A015650

/-! ## A015650.P11520179201631390475

`A177976(A000124(n+6)-6-A005408(n))`
-/

namespace A015650.P11520179201631390475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177976 (A000124 (n + 6) - 6 - A005408 n).toNat

end

end A015650.P11520179201631390475

namespace A015650

/-- `A177976(A000124(n+6)-6-A005408(n))` -/
def P11520179201631390475.Spec : Prop :=
  ∀ n, P11520179201631390475.a n = A015650 (n + 1)

end A015650

/-!
# A015651: Number of ordered 5-tuples of integers from [ 2,n ] with no global factor.

The programs for A015651, the canonical program `A015651.P3676913124546127327` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015651 has offset 2).

The definition of A015651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015651.P3676913124546127327

`∑[A117109(n+2)-A000292(n+2)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A015651

/-- `∑[A117109(n+2)-A000292(n+2)]` -/
def P3676913124546127327.Spec : Prop :=
  ∀ n, P3676913124546127327.a n = A015651 (n + 2)

theorem P3676913124546127327.correct : P3676913124546127327.Spec := by
  intro n
  simp only [A015651, Nat.add_sub_cancel]

end A015651

/-! ## A015651.P15867448395601602224

`A015650(n+2)-lt[A256432(n), A256436(n)]`
-/

namespace A015651.P15867448395601602224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256432 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256436 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015650 (n + 2) - (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A015651.P15867448395601602224

namespace A015651

/-- `A015650(n+2)-lt[A256432(n), A256436(n)]` -/
def P15867448395601602224.Spec : Prop :=
  ∀ n, P15867448395601602224.a n = A015651 (n + 2)

end A015651

/-! ## A015651.P8919248060821720139

`A015650(n+2)-lt[A256433(n), A256436(n)]`
-/

namespace A015651.P8919248060821720139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256433 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256436 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015650 (n + 2) - (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A015651.P8919248060821720139

namespace A015651

/-- `A015650(n+2)-lt[A256433(n), A256436(n)]` -/
def P8919248060821720139.Spec : Prop :=
  ∀ n, P8919248060821720139.a n = A015651 (n + 2)

end A015651

/-!
# A015652: Inverse of 1643rd cyclotomic polynomial.

The programs for A015652, there is no canonical definition to state claims against.
-/

/-! ## A015652.P5446559510936193610

`A015900(lt[A138988(n+1), A004087(3*n+5)])`
-/

namespace A015652.P5446559510936193610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004087 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015900 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015652.P5446559510936193610

/-! ## A015652.P8227958826166358979

`A015970(A205559(n+1)-A177859(n+1))`
-/

namespace A015652.P8227958826166358979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 (A205559 (n + 1) - A177859 (n + 1)).toNat

end

end A015652.P8227958826166358979

/-! ## A015652.P9208258632567568003

`A015970(A205559(n+1)%A177859(n+1))`
-/

namespace A015652.P9208258632567568003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 (Int.tmod (A205559 (n + 1)) (A177859 (n + 1))).toNat

end

end A015652.P9208258632567568003

/-! ## A015652.P15178785547147405663

`A016192(A179978(n+4)+2)`
-/

namespace A015652.P15178785547147405663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016192 (A179978 (n + 4) + 2).toNat

end

end A015652.P15178785547147405663

/-! ## A015652.P7183809238527021300

`A016192(A333638(n+1)+A015970(n+2))`
-/

namespace A015652.P7183809238527021300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016192 (A333638 (n + 1) + A015970 (n + 2)).toNat

end

end A015652.P7183809238527021300

/-! ## A015652.P17665689454928371171

`A093709(C(A263089(n), 10))`
-/

namespace A015652.P17665689454928371171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 (Nat.choose (A263089 n).toNat 10)

end

end A015652.P17665689454928371171

/-! ## A015652.P1928310329651181098

`C(2, A129947(A062298(n+1)))`
-/

namespace A015652.P1928310329651181098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A129947 (A062298 (n + 1)).toNat).toNat

end

end A015652.P1928310329651181098

/-! ## A015652.P5761243405360912406

`A293960(ceil(log2(A363730(n+1))))`
-/

namespace A015652.P5761243405360912406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 ⌈Real.logb 2 (A363730 (n + 1) : ℝ)⌉.toNat

end

end A015652.P5761243405360912406

/-! ## A015652.P13615091892049720182

`∑[A121373(∑[A001463(n+1)])]`
-/

namespace A015652.P13615091892049720182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001463 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015652.P13615091892049720182

/-! ## A015652.P13955793118877310824

`A095345(A000027(2*n+1))-A011745(n)`
-/

namespace A015652.P13955793118877310824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095345 (A000027 (2 * n + 1)).toNat - A011745 n

end

end A015652.P13955793118877310824

/-!
# A015653: Number of ordered 5-tuples of integers from [ 1,n ] with no common factors among quadruples.

The programs for A015653, there is no canonical definition to state claims against.
-/

/-! ## A015653.P5908684273084371983

`∑[A276878(A345431(n+1))]`
-/

namespace A015653.P5908684273084371983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276878 (A345431 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015653.P5908684273084371983

/-! ## A015653.P15119810236820750563

`∑[A265166(∑[A127473(n+1)])]`
-/

namespace A015653.P15119810236820750563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127473 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265166 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015653.P15119810236820750563

/-!
# A015654: Inverse of 1645th cyclotomic polynomial.

The programs for A015654, there is no canonical definition to state claims against.
-/

/-! ## A015654.P6241163592958306607

`A015864(A175427(n+1))`
-/

namespace A015654.P6241163592958306607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015864 (A175427 (n + 1)).toNat

end

end A015654.P6241163592958306607

/-! ## A015654.P3634923656428607211

`A015864(n)%A138125(n+1)`
-/

namespace A015654.P3634923656428607211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015864 n) (A138125 (n + 1))

end

end A015654.P3634923656428607211

/-! ## A015654.P12170642949198366743

`A016074(n)%A138125(n+1)`
-/

namespace A015654.P12170642949198366743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016074 n) (A138125 (n + 1))

end

end A015654.P12170642949198366743

/-! ## A015654.P4686961128780148368

`A016144(n)%A138125(n+1)`
-/

namespace A015654.P4686961128780148368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016144 n) (A138125 (n + 1))

end

end A015654.P4686961128780148368

/-! ## A015654.P7861036457882973300

`A015864(n)%A073261(n)`
-/

namespace A015654.P7861036457882973300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015864 n) (A073261 n)

end

end A015654.P7861036457882973300

/-!
# A015655: Number of ordered 5-tuples of integers from [ 2,n ] with no common factors among quadruples.

The programs for A015655, there is no canonical definition to state claims against.
-/

/-! ## A015655.P2483844816137021968

`A015653(n+2)-A015634(n+2)`
-/

namespace A015655.P2483844816137021968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015653 (n + 2) - A015634 (n + 2)

end

end A015655.P2483844816137021968

/-!
# A015657: Number of ordered 5-tuples of integers from [ 2,n ] with no common factors among triples.

The programs for A015657, there is no canonical definition to state claims against.
-/

/-! ## A015657.P10152230915313887008

`A015656(n+2)-A015635(n+2)`
-/

namespace A015657.P10152230915313887008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015656 (n + 2) - A015635 (n + 2)

end

end A015657.P10152230915313887008

/-! ## A015657.P1519122165032545513

`A015656(A014963(3^n+1)+n+1)%A015635(n+2)`
-/

namespace A015657.P1519122165032545513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015656 (A014963 (3 ^ n + 1) + (n + 1 : ℤ)).toNat) (A015635 (n + 2))

end

end A015657.P1519122165032545513

/-!
# A015658: Inverse of 1649th cyclotomic polynomial.

The programs for A015658, there is no canonical definition to state claims against.
-/

/-! ## A015658.P1388848246099415374

`A000007(A326682(n+3))`
-/

namespace A015658.P1388848246099415374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A326682 (n + 3)).toNat

end

end A015658.P1388848246099415374

/-! ## A015658.P12856029485110927550

`A010054(A054899(n+3)^4)`
-/

namespace A015658.P12856029485110927550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A054899 (n + 3) ^ 4).toNat

end

end A015658.P12856029485110927550

/-! ## A015658.P14772883786621177630

`A010054(A061217(n+3)^4)`
-/

namespace A015658.P14772883786621177630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A061217 (n + 3) ^ 4).toNat

end

end A015658.P14772883786621177630

/-! ## A015658.P6303245509359536382

`A010054(A061217(n+3)²²)`
-/

namespace A015658.P6303245509359536382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 ((A061217 (n + 3) ^ 2) ^ 2).toNat

end

end A015658.P6303245509359536382

/-! ## A015658.P6941346793048408897

`A121373(A054899(n+3)²²)`
-/

namespace A015658.P6941346793048408897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 ((A054899 (n + 3) ^ 2) ^ 2).toNat

end

end A015658.P6941346793048408897

/-! ## A015658.P6261246338334978051

`C(A001285(n), A326683(n+4))`
-/

namespace A015658.P6261246338334978051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001285 n).toNat (A326683 (n + 4)).toNat

end

end A015658.P6261246338334978051

/-! ## A015658.P1810459774757054146

`A023531(A358910(floor((n+1)/2)))`
-/

namespace A015658.P1810459774757054146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (A358910 ⌊(n + 1 : ℚ) / 2⌋.toNat).toNat

end

end A015658.P1810459774757054146

/-! ## A015658.P2035951413642907349

`A378087(∏[A200154(∑{d}[n+1, #%2])])`
-/

namespace A015658.P2035951413642907349
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (∑ d ∈ Nat.divisors (f2 n), d % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378087 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015658.P2035951413642907349

/-! ## A015658.P13914469865862078962

`C(A112348(n+4), A285436(A060384(n)))`
-/

namespace A015658.P13914469865862078962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A112348 (n + 4)).toNat (A285436 (A060384 n).toNat).toNat

end

end A015658.P13914469865862078962

/-! ## A015658.P11048825573467354344

`C(A001285(A194045(2*n+3)), A326463(n))`
-/

namespace A015658.P11048825573467354344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001285 (A194045 (2 * n + 3)).toNat).toNat (A326463 n).toNat

end

end A015658.P11048825573467354344

/-!
# A015659: Inverse of 1650th cyclotomic polynomial.

The programs for A015659, there is no canonical definition to state claims against.
-/

/-! ## A015659.P13510516989616240584

`A014669(A117451(n+1))`
-/

namespace A015659.P13510516989616240584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014669 (A117451 (n + 1)).toNat

end

end A015659.P13510516989616240584

/-! ## A015659.P12779667604984262438

`A014019(n)*A014834(n)`
-/

namespace A015659.P12779667604984262438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014019 n * A014834 n

end

end A015659.P12779667604984262438

/-! ## A015659.P13310546022484928359

`A014834(n)*A033999(n)`
-/

namespace A015659.P13310546022484928359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014834 n * A033999 n

end

end A015659.P13310546022484928359

/-! ## A015659.P1052263616762562641

`A015989(A265734(n))`
-/

namespace A015659.P1052263616762562641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015989 (A265734 n).toNat

end

end A015659.P1052263616762562641

/-! ## A015659.P14326208230406196392

`A015989(A047226(n+1))`
-/

namespace A015659.P14326208230406196392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015989 (A047226 (n + 1)).toNat

end

end A015659.P14326208230406196392

/-! ## A015659.P1183636058429906016

`A015989(A047256(n+1))`
-/

namespace A015659.P1183636058429906016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015989 (A047256 (n + 1)).toNat

end

end A015659.P1183636058429906016

/-! ## A015659.P10495248604171178554

`A015989(A047263(n+1))`
-/

namespace A015659.P10495248604171178554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015989 (A047263 (n + 1)).toNat

end

end A015659.P10495248604171178554

/-! ## A015659.P15294282077269698172

`A015989(A151988(n))`
-/

namespace A015659.P15294282077269698172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015989 (A151988 n).toNat

end

end A015659.P15294282077269698172

/-! ## A015659.P6336214697807766319

`A015989(A047248(n+1))`
-/

namespace A015659.P6336214697807766319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015989 (A047248 (n + 1)).toNat

end

end A015659.P6336214697807766319

/-! ## A015659.P11067217823618052811

`A015989(A047252(n+1))`
-/

namespace A015659.P11067217823618052811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015989 (A047252 (n + 1)).toNat

end

end A015659.P11067217823618052811

/-! ## A015659.P2424052561997062172

`A014999(A340615(n))`
-/

namespace A015659.P2424052561997062172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014999 (A340615 n).toNat

end

end A015659.P2424052561997062172

/-! ## A015659.P4557157785517896648

`A014834(n)*A016379(n)`
-/

namespace A015659.P4557157785517896648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014834 n * A016379 n

end

end A015659.P4557157785517896648

/-!
# A015660: Inverse of 1651st cyclotomic polynomial.

The programs for A015660, there is no canonical definition to state claims against.
-/

/-! ## A015660.P14274651133977971010

`C(2, A054360(A007208(n)))`
-/

namespace A015660.P14274651133977971010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A054360 (A007208 n).toNat).toNat

end

end A015660.P14274651133977971010

/-! ## A015660.P5724726990643565150

`C(2, A233583(A036497(n)))`
-/

namespace A015660.P5724726990643565150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A233583 (A036497 n).toNat).toNat

end

end A015660.P5724726990643565150

/-! ## A015660.P6398449572934518685

`C(3, A352134(A103380(n+1)))`
-/

namespace A015660.P6398449572934518685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A352134 (A103380 (n + 1)).toNat).toNat

end

end A015660.P6398449572934518685

/-! ## A015660.P14122494321204661530

`A010054(C(comp[A051635(n+3)], 2)+n)`
-/

namespace A015660.P14122494321204661530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051635 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 2 + n)

end

end A015660.P14122494321204661530

/-! ## A015660.P5132827874746064677

`C(A349056(2^∑{e}[n+1, #]), A345166(n))`
-/

namespace A015660.P5132827874746064677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A349056 (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))).toNat (A345166 n).toNat

end

end A015660.P5132827874746064677

/-! ## A015660.P100550948065634783

`C(A296658(2^val(n+1, 2)), A363346(n+1))`
-/

namespace A015660.P100550948065634783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A296658 (2 ^ SequenceMachineLib.valuation (n + 1) 2)).toNat (A363346 (n + 1)).toNat

end

end A015660.P100550948065634783

/-! ## A015660.P13261263014936316916

`A014902(A074909(n))*A015972(n)`
-/

namespace A015660.P13261263014936316916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014902 (A074909 n).toNat * A015972 n

end

end A015660.P13261263014936316916

/-! ## A015660.P3276410608277207954

`C(A000700(A168561(n)), A345166(n))`
-/

namespace A015660.P3276410608277207954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000700 (A168561 n).toNat).toNat (A345166 n).toNat

end

end A015660.P3276410608277207954

/-! ## A015660.P10721791953243538546

`C(A058144(A030307(n+1)), A326636(n))`
-/

namespace A015660.P10721791953243538546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A058144 (A030307 (n + 1)).toNat).toNat (A326636 n).toNat

end

end A015660.P10721791953243538546

/-! ## A015660.P17093336411756076230

`C(A302790(A124859(n+1)), A259195(n))`
-/

namespace A015660.P17093336411756076230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A302790 (A124859 (n + 1)).toNat).toNat (A259195 n).toNat

end

end A015660.P17093336411756076230

/-! ## A015660.P15947920939186826980

`C(A357180(A048896(2*n)), A221912(n))`
-/

namespace A015660.P15947920939186826980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A357180 (A048896 (2 * n)).toNat).toNat (A221912 n).toNat

end

end A015660.P15947920939186826980

/-! ## A015660.P2207467571072974499

`A379106(A214212(2*n+3)^A090620(n))`
-/

namespace A015660.P2207467571072974499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379106 (SequenceMachineLib.roundAway ((A214212 (2 * n + 3) : ℚ) ^ (A090620 n : ℤ))).toNat

end

end A015660.P2207467571072974499

/-! ## A015660.P15157686962234802677

`A003203(A355478(2*n+3))%2`
-/

namespace A015660.P15157686962234802677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003203 (A355478 (2 * n + 3)).toNat) 2

end

end A015660.P15157686962234802677

/-! ## A015660.P15905537108016872280

`C(A057790(n), A159481(A000700(n)))`
-/

namespace A015660.P15905537108016872280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A057790 n).toNat (A159481 (A000700 n).toNat).toNat

end

end A015660.P15905537108016872280

/-! ## A015660.P18247705236546454068

`C(A091204(n+1), A091204(A044915(n+1)))`
-/

namespace A015660.P18247705236546454068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A091204 (n + 1)).toNat (A091204 (A044915 (n + 1)).toNat).toNat

end

end A015660.P18247705236546454068

/-! ## A015660.P10691739290071066230

`∏{p}[A363225(A085269(n))+1, #-1]%2`
-/

namespace A015660.P10691739290071066230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363225 (A085269 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)) 2

end

end A015660.P10691739290071066230

/-! ## A015660.P5676427903986913946

`C(A289079(A046854(n)), A224813(n))`
-/

namespace A015660.P5676427903986913946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A289079 (A046854 n).toNat).toNat (A224813 n).toNat

end

end A015660.P5676427903986913946

/-! ## A015660.P13987397731840477908

`C(A334302(A096111(n)), A135585(n))`
-/

namespace A015660.P13987397731840477908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A334302 (A096111 n).toNat).toNat (A135585 n).toNat

end

end A015660.P13987397731840477908

/-! ## A015660.P17798732249769616864

`C(n, comp[A206911(2*n+5)])`
-/

namespace A015660.P17798732249769616864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206911 (2 * n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015660.P17798732249769616864

/-! ## A015660.P17707345426303412844

`C(n, comp[A339657(n+2)])`
-/

namespace A015660.P17707345426303412844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339657 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015660.P17707345426303412844

/-!
# A015661: Inverse of 1652nd cyclotomic polynomial.

The programs for A015661, there is no canonical definition to state claims against.
-/

/-! ## A015661.P13229237723017485571

`A015885(n)+A000007(A006489(n+1))`
-/

namespace A015661.P13229237723017485571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015885 n + A000007 (A006489 (n + 1)).toNat

end

end A015661.P13229237723017485571

/-! ## A015661.P4774627986686867273

`A015493(lt[A030677(n+1), A002174(3*n+4)])`
-/

namespace A015661.P4774627986686867273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002174 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015493 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015661.P4774627986686867273

/-! ## A015661.P6494786613762109667

`A014963(A035333(n+1))*A015885(n)`
-/

namespace A015661.P6494786613762109667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A035333 (n + 1)).toNat * A015885 n

end

end A015661.P6494786613762109667

/-! ## A015661.P2866165978084821984

`A015885(n)+A010051(A363814(3*(n+1)))`
-/

namespace A015661.P2866165978084821984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015885 n + A010051 (A363814 (3 * (n + 1))).toNat

end

end A015661.P2866165978084821984

/-! ## A015661.P10329527299734753995

`A016192(A308920(n))*A016221(n)`
-/

namespace A015661.P10329527299734753995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016192 (A308920 n).toNat * A016221 n

end

end A015661.P10329527299734753995

/-!
# A015662: Inverse of 1653rd cyclotomic polynomial.

The programs for A015662, there is no canonical definition to state claims against.
-/

/-! ## A015662.P5737071253492993831

`A000007(A034531(n+1))*A015776(n)`
-/

namespace A015662.P5737071253492993831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A034531 (n + 1)).toNat * A015776 n

end

end A015662.P5737071253492993831

/-! ## A015662.P14813793574775180205

`A011652(n)*A016155(n)`
-/

namespace A015662.P14813793574775180205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011652 n * A016155 n

end

end A015662.P14813793574775180205

/-! ## A015662.P357783409768844437

`A106510(lt[A119282(n), A327421(n+1)])`
-/

namespace A015662.P357783409768844437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106510 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015662.P357783409768844437

/-! ## A015662.P1568842099429259062

`A015776(n)%A139092(n+4)`
-/

namespace A015662.P1568842099429259062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015776 n) (A139092 (n + 4))

end

end A015662.P1568842099429259062

/-! ## A015662.P11343065823134949917

`A016118(n)%A139092(n+4)`
-/

namespace A015662.P11343065823134949917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016118 n) (A139092 (n + 4))

end

end A015662.P11343065823134949917

/-!
# A015663: Number of ordered 5-tuples of integers from [ 1,n ] with no common factors among pairs.

The programs for A015663, there is no canonical definition to state claims against.
-/

/-! ## A015663.P3728513535493689846

`A015698(n+1)+A015632(n+1)`
-/

namespace A015663.P3728513535493689846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015698 (n + 1) + A015632 (n + 1)

end

end A015663.P3728513535493689846

/-! ## A015663.P6341804361567009526

`A015698(n+1)+∑[A185953(n+1)+1]`
-/

namespace A015663.P6341804361567009526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185953 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015698 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015663.P6341804361567009526

/-! ## A015663.P8599071997001732203

`n+1+A015698(n+1)+A015617(n+1)`
-/

namespace A015663.P8599071997001732203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A015698 (n + 1) + A015617 (n + 1))

end

end A015663.P8599071997001732203

/-! ## A015663.P5318699144705092978

`A015698(n+1)+A187264(n+1)-A015614(n+1)`
-/

namespace A015663.P5318699144705092978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015698 (n + 1) + (A187264 (n + 1) - A015614 (n + 1))

end

end A015663.P5318699144705092978

/-! ## A015663.P2731224563762631158

`A015698(n+1)+∑[A186987(n+1)-A000010(n+1)]+1`
-/

namespace A015663.P2731224563762631158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186987 (n + 1) - A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015698 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A015663.P2731224563762631158

/-! ## A015663.P184570139957346395

`A015632(n+1)+A187266(n+1)-A187265(n+1)`
-/

namespace A015663.P184570139957346395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015632 (n + 1) + (A187266 (n + 1) - A187265 (n + 1))

end

end A015663.P184570139957346395

/-!
# A015666: Expansion of e.g.f. theta_3^(5/2).

The programs for A015666, there is no canonical definition to state claims against.
-/

/-! ## A015666.P533153442762952431

`A051577(n)%A349269(A263737(3*n+4))`
-/

namespace A015666.P533153442762952431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051577 n) (A349269 (A263737 (3 * n + 4)).toNat)

end

end A015666.P533153442762952431

/-!
# A015667: Expansion of e.g.f. theta_3^(7/2).

The programs for A015667, there is no canonical definition to state claims against.
-/

/-! ## A015667.P14756884246099906979

`A003524(A027897(n+1)+∑[∑{e}[n+1, #]²])`
-/

namespace A015667.P14756884246099906979
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003524 (A027897 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A015667.P14756884246099906979

/-!
# A015668: Inverse of 1659th cyclotomic polynomial.

The programs for A015668, there is no canonical definition to state claims against.
-/

/-! ## A015668.P14001795702463136789

`A015752(lt[A225654(n), 2])`
-/

namespace A015668.P14001795702463136789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225654 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015752 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A015668.P14001795702463136789

/-!
# A015669: Expansion of e.g.f. theta_3^(9/2).

The programs for A015669, there is no canonical definition to state claims against.
-/

/-! ## A015669.P8456606201683016378

`A002264(A181890(∑[∑[n]]))`
-/

namespace A015669.P8456606201683016378
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A181890 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A015669.P8456606201683016378

/-!
# A015670: Inverse of 1661st cyclotomic polynomial.

The programs for A015670, there is no canonical definition to state claims against.
-/

/-! ## A015670.P5653888006222800870

`C((a(floor(n/2))+n)%2, A326635(n))` with `a(0)=1`
-/

namespace A015670.P5653888006222800870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose ((a ⌊(n : ℚ) / 2⌋.toNat + n) % 2) (A326635 n).toNat

end

end A015670.P5653888006222800870

/-! ## A015670.P15189001794344210334

`C(A025883(n), A326635(n))`
-/

namespace A015670.P15189001794344210334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025883 n).toNat (A326635 n).toNat

end

end A015670.P15189001794344210334

/-! ## A015670.P12101085228755653931

`C(A321665(n), A326635(n))`
-/

namespace A015670.P12101085228755653931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A321665 n).toNat (A326635 n).toNat

end

end A015670.P12101085228755653931

/-! ## A015670.P198579151879480306

`C(A017889(n), ∑[A326635(n)])`
-/

namespace A015670.P198579151879480306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A017889 n).toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015670.P198579151879480306

/-! ## A015670.P13932337748445042132

`C(A255319(n), ∑[A326635(n)])`
-/

namespace A015670.P13932337748445042132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A255319 n).toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015670.P13932337748445042132

/-! ## A015670.P16571476023911409602

`C(A326635(n), ∑[A332281(n)])`
-/

namespace A015670.P16571476023911409602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A326635 n).toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015670.P16571476023911409602

/-! ## A015670.P3340628689899193835

`C(Δ[A261585(n)], A326635(n))`
-/

namespace A015670.P3340628689899193835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat (A326635 n).toNat

end

end A015670.P3340628689899193835

/-! ## A015670.P1146037642501951498

`A089801(A377954(round((n-1)/20)))`
-/

namespace A015670.P1146037642501951498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089801 (A377954 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 20)).toNat).toNat

end

end A015670.P1146037642501951498

/-! ## A015670.P13560306958665084888

`A019590(∑[char[A329738(n+1)+3*(n-3)]]!)`
-/

namespace A015670.P13560306958665084888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329738 (n + 1) + 3 * ((n : ℤ) - 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A015670.P13560306958665084888

/-! ## A015670.P2651797069617964717

`C(A048766(A084117(n)), A326635(n))`
-/

namespace A015670.P2651797069617964717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048766 (A084117 n).toNat).toNat (A326635 n).toNat

end

end A015670.P2651797069617964717

/-! ## A015670.P16204262050528727670

`C(A000700(A259194(n)), A326635(n))`
-/

namespace A015670.P16204262050528727670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000700 (A259194 n).toNat).toNat (A326635 n).toNat

end

end A015670.P16204262050528727670

/-! ## A015670.P2459318904431240442

`A049347(A139827(n+1))^A211020(n)`
-/

namespace A015670.P2459318904431240442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049347 (A139827 (n + 1)).toNat : ℚ) ^ (A211020 n : ℤ)

end

end A015670.P2459318904431240442

/-! ## A015670.P9498433508302222681

`C(A053200(A200920(n+1)), A026816(n))`
-/

namespace A015670.P9498433508302222681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053200 (A200920 (n + 1)).toNat).toNat (A026816 n).toNat

end

end A015670.P9498433508302222681

/-! ## A015670.P11823647117910842504

`C(A050602(A007602(n+1)), A326595(n))`
-/

namespace A015670.P11823647117910842504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A050602 (A007602 (n + 1)).toNat).toNat (A326595 n).toNat

end

end A015670.P11823647117910842504

/-! ## A015670.P5476543463594808706

`A283976(floor(A032378(2*n+3)/A007782(n)))`
-/

namespace A015670.P5476543463594808706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 ⌊(A032378 (2 * n + 3) : ℚ) / (A007782 n : ℚ)⌋.toNat

end

end A015670.P5476543463594808706

/-! ## A015670.P14537830617620953128

`C(A048793(n), A326598(n)²)`
-/

namespace A015670.P14537830617620953128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048793 n).toNat (A326598 n ^ 2).toNat

end

end A015670.P14537830617620953128

/-! ## A015670.P16241347530075615302

`round(A325755(n+1)/A349060(2*n+1))`
-/

namespace A015670.P16241347530075615302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A325755 (n + 1) : ℚ) / (A349060 (2 * n + 1) : ℚ))

end

end A015670.P16241347530075615302

/-! ## A015670.P6643380042114880622

`C(A007814(A141883(n+1)), A105390(n+1))`
-/

namespace A015670.P6643380042114880622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007814 (A141883 (n + 1)).toNat).toNat (A105390 (n + 1)).toNat

end

end A015670.P6643380042114880622

/-! ## A015670.P6544168317039061951

`C(A124767(A339376(2*n+1)), A072114(n))`
-/

namespace A015670.P6544168317039061951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A124767 (A339376 (2 * n + 1)).toNat).toNat (A072114 n).toNat

end

end A015670.P6544168317039061951

/-!
# A015674: Inverse of 1665th cyclotomic polynomial.

The programs for A015674, there is no canonical definition to state claims against.
-/

/-! ## A015674.P1656066274750418623

`A015854(n)+A000007(A015849(n+1))`
-/

namespace A015674.P1656066274750418623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015854 n + A000007 (A015849 (n + 1)).toNat

end

end A015674.P1656066274750418623

/-! ## A015674.P4290062476058765095

`A015944(n)*A036989(A124108(2*n))`
-/

namespace A015674.P4290062476058765095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015944 n * A036989 (A124108 (2 * n)).toNat

end

end A015674.P4290062476058765095

/-! ## A015674.P737013062993357935

`A016124(n)^A333228(A327816(2*(n+2)))`
-/

namespace A015674.P737013062993357935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016124 n : ℚ) ^ (A333228 (A327816 (2 * (n + 2))).toNat : ℤ)

end

end A015674.P737013062993357935

/-! ## A015674.P17461068988029001770

`A015944(n)*A016126(A098965(n+1))`
-/

namespace A015674.P17461068988029001770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015944 n * A016126 (A098965 (n + 1)).toNat

end

end A015674.P17461068988029001770

/-! ## A015674.P17574236001192323733

`A016124(n)^A000040(A027960(2*(n+2)))`
-/

namespace A015674.P17574236001192323733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016124 n : ℚ) ^ (A000040 (A027960 (2 * (n + 2))).toNat : ℤ)

end

end A015674.P17574236001192323733

/-! ## A015674.P11208038182109519463

`A016124(n)*A016126(A098965(n+4))`
-/

namespace A015674.P11208038182109519463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016124 n * A016126 (A098965 (n + 4)).toNat

end

end A015674.P11208038182109519463

/-! ## A015674.P1922317643141540920

`A016124(n)^A008578(A057570(n+4))`
-/

namespace A015674.P1922317643141540920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016124 n : ℚ) ^ (A008578 (A057570 (n + 4)).toNat : ℤ)

end

end A015674.P1922317643141540920

/-! ## A015674.P10340602185554476034

`A016124(n)^A194746(A057570(n+4)+1)`
-/

namespace A015674.P10340602185554476034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016124 n : ℚ) ^ (A194746 (A057570 (n + 4) + 1).toNat : ℤ)

end

end A015674.P10340602185554476034

/-! ## A015674.P1832780833372932617

`A016124(n)^(A002808(A296911(n))+1)`
-/

namespace A015674.P1832780833372932617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016124 n : ℚ) ^ (A002808 (A296911 n).toNat + 1 : ℤ)

end

end A015674.P1832780833372932617

/-!
# A015681: Inverse of 1672nd cyclotomic polynomial.

The programs for A015681, there is no canonical definition to state claims against.
-/

/-! ## A015681.P6072940801792908632

`A014845(n/(2-and(1, n)))`
-/

namespace A015681.P6072940801792908632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014845 (SequenceMachineLib.roundAway ((n : ℚ) / (2 - (Nat.land 1 n : ℤ) : ℚ))).toNat

end

end A015681.P6072940801792908632

/-!
# A015686: Inverse of 1677th cyclotomic polynomial.

The programs for A015686, there is no canonical definition to state claims against.
-/

/-! ## A015686.P3903604524573151536

`A015842(A175427(n+1))`
-/

namespace A015686.P3903604524573151536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015842 (A175427 (n + 1)).toNat

end

end A015686.P3903604524573151536

/-! ## A015686.P10876567296335831880

`A015842(n)%A235923(n+1)`
-/

namespace A015686.P10876567296335831880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015842 n) (A235923 (n + 1))

end

end A015686.P10876567296335831880

/-! ## A015686.P5307841251434212214

`A016076(n)%A235923(n+1)`
-/

namespace A015686.P5307841251434212214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016076 n) (A235923 (n + 1))

end

end A015686.P5307841251434212214

/-! ## A015686.P13297641765349956977

`A016310(n)%A235923(n+1)`
-/

namespace A015686.P13297641765349956977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016310 n) (A235923 (n + 1))

end

end A015686.P13297641765349956977

/-!
# A015688: Inverse of 1679th cyclotomic polynomial.

The programs for A015688, there is no canonical definition to state claims against.
-/

/-! ## A015688.P13594300594085244488

`A015826(∑[A327103(A103221(n))])`
-/

namespace A015688.P13594300594085244488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327103 (A103221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015826 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015688.P13594300594085244488

/-! ## A015688.P8077033432212741034

`∑[A240328(A001126(n+1))]+1`
-/

namespace A015688.P8077033432212741034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240328 (A001126 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A015688.P8077033432212741034

/-!
# A015689: Inverse of 1680th cyclotomic polynomial.

The programs for A015689, there is no canonical definition to state claims against.
-/

/-! ## A015689.P3991573219214065083

`A014849(A004525(n))`
-/

namespace A015689.P3991573219214065083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014849 (A004525 n).toNat

end

end A015689.P3991573219214065083

/-! ## A015689.P9113634335318966304

`A014849(A026741(n))`
-/

namespace A015689.P9113634335318966304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014849 (A026741 n).toNat

end

end A015689.P9113634335318966304

/-! ## A015689.P5636330410770668568

`A014849(A064680(n))`
-/

namespace A015689.P5636330410770668568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014849 (A064680 n).toNat

end

end A015689.P5636330410770668568

/-! ## A015689.P9169260547924132582

`A014429(A174571(n))`
-/

namespace A015689.P9169260547924132582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014429 (A174571 n).toNat

end

end A015689.P9169260547924132582

/-! ## A015689.P357266330826043476

`A014849(A186813(n))`
-/

namespace A015689.P357266330826043476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014849 (A186813 n).toNat

end

end A015689.P357266330826043476

/-! ## A015689.P11053595123324694326

`A014849(A225975(n))`
-/

namespace A015689.P11053595123324694326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014849 (A225975 n).toNat

end

end A015689.P11053595123324694326

/-! ## A015689.P11817439754027197791

`A014849(A236916(n))`
-/

namespace A015689.P11817439754027197791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014849 (A236916 n).toNat

end

end A015689.P11817439754027197791

/-! ## A015689.P18379448625446868795

`A015269(A330881(n))`
-/

namespace A015689.P18379448625446868795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015269 (A330881 n).toNat

end

end A015689.P18379448625446868795

/-! ## A015689.P8976636088403206765

`A015899(A248375(n))`
-/

namespace A015689.P8976636088403206765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015899 (A248375 n).toNat

end

end A015689.P8976636088403206765

/-! ## A015689.P15315461591741214337

`A015269(A160079(n))`
-/

namespace A015689.P15315461591741214337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015269 (A160079 n).toNat

end

end A015689.P15315461591741214337

/-! ## A015689.P4089088704333711636

`A015269(A342131(n))`
-/

namespace A015689.P4089088704333711636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015269 (A342131 n).toNat

end

end A015689.P4089088704333711636

/-!
# A015692: Inverse of 1683rd cyclotomic polynomial.

The programs for A015692, there is no canonical definition to state claims against.
-/

/-! ## A015692.P6041201789641298049

`char[A008585(n)]*A014570(A002264(n))`
-/

namespace A015692.P6041201789641298049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A014570 (A002264 n).toNat

end

end A015692.P6041201789641298049

/-!
# A015698: Number of 5-tuples of different integers from [ 1,n ] with no common factors among pairs.

The programs for A015698, there is no canonical definition to state claims against.
-/

/-! ## A015698.P1825740898145120759

`A015663(n+1)-A015632(n+1)`
-/

namespace A015698.P1825740898145120759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015663 (n + 1) - A015632 (n + 1)

end

end A015698.P1825740898145120759

/-! ## A015698.P2504021176072079284

`A015663(n+1)-∑[A185953(n+1)+1]`
-/

namespace A015698.P2504021176072079284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185953 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015663 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015698.P2504021176072079284

/-! ## A015698.P11167229023882130136

`A015663(n+1)-(A015617(n+1)+1+n)`
-/

namespace A015698.P11167229023882130136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015663 (n + 1) - (A015617 (n + 1) + 1 + (n : ℤ))

end

end A015698.P11167229023882130136

/-! ## A015698.P15536805233510317198

`A015614(n+1)+A015663(n+1)-A187264(n+1)`
-/

namespace A015698.P15536805233510317198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1) + (A015663 (n + 1) - A187264 (n + 1))

end

end A015698.P15536805233510317198

/-! ## A015698.P3416679359944661569

`A015614(n+1)+A015663(n+1)-∑[A186987(n+1)]`
-/

namespace A015698.P3416679359944661569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1) + (A015663 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015698.P3416679359944661569

/-! ## A015698.P18130051200539461773

`A015663(n+1)-(∑[A186987(n+1)-A000010(n+1)]+1)`
-/

namespace A015698.P18130051200539461773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186987 (n + 1) - A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015663 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A015698.P18130051200539461773

/-! ## A015698.P14654090251656943084

`A187266(n+1)-A187265(n+1)`
-/

namespace A015698.P14654090251656943084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187266 (n + 1) - A187265 (n + 1)

end

end A015698.P14654090251656943084

/-! ## A015698.P12080863495221247753

`∑[A186989(n+1)-A186988(n+1)]`
-/

namespace A015698.P12080863495221247753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186989 (n + 1) - A186988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015698.P12080863495221247753

/-! ## A015698.P11051915132419579003

`∑[A186989(n+1)]-A187265(n+1)`
-/

namespace A015698.P11051915132419579003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A187265 (n + 1)

end

end A015698.P11051915132419579003

/-! ## A015698.P481215386401346956

`A187266(n+1)-∑[A186988(n+1)]`
-/

namespace A015698.P481215386401346956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187266 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015698.P481215386401346956

/-!
# A015699: Number of 5-tuples of different integers from [ 2,n ] with no common factors among pairs.

The programs for A015699, there is no canonical definition to state claims against.
-/

/-! ## A015699.P155172858178953

`A015663(n+2)-A015636(n+2)`
-/

namespace A015699.P155172858178953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015663 (n + 2) - A015636 (n + 2)

end

end A015699.P155172858178953

/-! ## A015699.P14557196162049852689

`A015698(n+2)-A015628(n+2)`
-/

namespace A015699.P14557196162049852689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015698 (n + 2) - A015628 (n + 2)

end

end A015699.P14557196162049852689

/-! ## A015699.P9450613238010716709

`A015632(n+2)+A015698(n+2)-A015636(n+2)`
-/

namespace A015699.P9450613238010716709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015632 (n + 2) + (A015698 (n + 2) - A015636 (n + 2))

end

end A015699.P9450613238010716709

/-! ## A015699.P7927331880979650874

`A015698(n+2)-(A015623(n+2)-A015620(n+2))`
-/

namespace A015699.P7927331880979650874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015698 (n + 2) - (A015623 (n + 2) - A015620 (n + 2))

end

end A015699.P7927331880979650874

/-! ## A015699.P14779239642147228530

`A299338(n)%A028234(A122024(n))`
-/

namespace A015699.P14779239642147228530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299338 n) (A028234 (A122024 n).toNat)

end

end A015699.P14779239642147228530

