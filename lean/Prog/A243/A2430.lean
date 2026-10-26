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
import Seq.B000.C012
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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A243004: a(n) = - (a(n-1) + 1) * a(n-2) with a(1) = a(2) = 1.

The programs for A243004, the canonical program `A243004.P12847004344042202065` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243004 has offset 1).

The definition of A243004 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-(a(n-1)+1)*a(n-2)` (program `A243004.P12847004344042202065`, by `A243004.P12847004344042202065.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A243004.P12847004344042202065

`-(a(n-1)+1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A243004

/-- `-(a(n-1)+1)*a(n-2)` -/
def P12847004344042202065.Spec : Prop :=
  ∀ n, P12847004344042202065.a n = A243004 (n + 1)

theorem P12847004344042202065.correct : P12847004344042202065.Spec := by
  intro n
  simp only [A243004, Nat.add_sub_cancel]

end A243004

/-! ## A243004.P15487921708170306684

`xor(-1, a(n-1))*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A243004.P15487921708170306684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.xor (-1) (a (n - 1)) * a (n - 2)

end

end A243004.P15487921708170306684

namespace A243004

/-- `xor(-1, a(n-1))*a(n-2)` -/
def P15487921708170306684.Spec : Prop :=
  ∀ n, P15487921708170306684.a n = A243004 (n + 1)

end A243004

/-! ## A243004.P10941533888162715129

`(1-(a(n-1)+4/2))*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A243004.P10941533888162715129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (1 - (a (n - 1) + (4 : ℚ) / 2)) * a (n - 2)

end

end A243004.P10941533888162715129

namespace A243004

/-- `(1-(a(n-1)+4/2))*a(n-2)` -/
def P10941533888162715129.Spec : Prop :=
  ∀ n, P10941533888162715129.a n = (A243004 (n + 1) : ℚ)

end A243004

/-! ## A243004.P14455208705679450216

`(1-4/2-a(n-1))*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A243004.P14455208705679450216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (1 - (4 : ℚ) / 2 - a (n - 1)) * a (n - 2)

end

end A243004.P14455208705679450216

namespace A243004

/-- `(1-4/2-a(n-1))*a(n-2)` -/
def P14455208705679450216.Spec : Prop :=
  ∀ n, P14455208705679450216.a n = (A243004 (n + 1) : ℚ)

end A243004

/-! ## A243004.P13912350536151599872

`a(n-2)-(a(n-1)+2)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A243004.P13912350536151599872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - (a (n - 1) + 2) * a (n - 2)

end

end A243004.P13912350536151599872

namespace A243004

/-- `a(n-2)-(a(n-1)+2)*a(n-2)` -/
def P13912350536151599872.Spec : Prop :=
  ∀ n, P13912350536151599872.a n = A243004 (n + 1)

end A243004

/-!
# A243005: a(n) = (a(n-1) - a(n-2)) * a(n-1) / a(n-3) with a(0) = 2, a(1) = 1, a(2) = -1.

The programs for A243005, the canonical program `A243005.P11930673919581724297` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243005 has offset 0).

The definition of A243005 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243005.P11930673919581724297

`a(n-1)*(a(n-1)-a(n-2))/a(n-3)` with `a(0)=2, a(1)=1, a(2)=-1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A243005

/-- `a(n-1)*(a(n-1)-a(n-2))/a(n-3)` -/
def P11930673919581724297.Spec : Prop :=
  ∀ n, P11930673919581724297.a n = (A243005 n : ℚ)

end A243005

/-! ## A243005.P2130270592370317137

`(a(n-1)-a(n-2))*a(n-1)/a(n-3)` with `a(0)=2, a(1)=1, a(2)=-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243005.P2130270592370317137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 1, -1] fun n a =>
  (a (n - 1) - a (n - 2)) * a (n - 1) / a (n - 3)

end

end A243005.P2130270592370317137

namespace A243005

/-- `(a(n-1)-a(n-2))*a(n-1)/a(n-3)` -/
def P2130270592370317137.Spec : Prop :=
  ∀ n, P2130270592370317137.a n = (A243005 n : ℚ)

end A243005

/-!
# A243007: a(n) = A084769(n)^2.

The programs for A243007, there is no canonical definition to state claims against.
-/

/-! ## A243007.P11757355828089411347

`A084769(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243007.P11757355828089411347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084769 n ^ 2

end

end A243007.P11757355828089411347

/-! ## A243007.P17738401986030733929

`A335333(∑[n+5]+5)²`
-/

namespace A243007.P17738401986030733929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335333 (∑ j ∈ Finset.range (n + 1), f1 j + 5) ^ 2

end

end A243007.P17738401986030733929

/-! ## A243007.P16842096222998069581

`A084769(n)^(A000007(n)+2)`
-/

namespace A243007.P16842096222998069581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084769 n : ℚ) ^ (A000007 n + 2 : ℤ)

end

end A243007.P16842096222998069581

/-! ## A243007.P4441348000226279476

`A084769(n)^A020639(A036035(n))`
-/

namespace A243007.P4441348000226279476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084769 n : ℚ) ^ (A020639 (A036035 n).toNat : ℤ)

end

end A243007.P4441348000226279476

/-! ## A243007.P12970560916909721838

`A084769(n)^A020639(A247640(n))`
-/

namespace A243007.P12970560916909721838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084769 n : ℚ) ^ (A020639 (A247640 n).toNat : ℤ)

end

end A243007.P12970560916909721838

/-!
# A243008: Triangular numbers divisible by the square of the sum of their digits.

The programs for A243008, there is no canonical definition to state claims against.
-/

/-! ## A243008.P18055497778644230493

`∩[A072081(n+1), A000217(n)]`
-/

namespace A243008.P18055497778644230493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243008.P18055497778644230493

/-! ## A243008.P15012008108386461007

`∩[A072081(n+1), A122493(n)]`
-/

namespace A243008.P15012008108386461007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122493 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243008.P15012008108386461007

/-! ## A243008.P14850974612868049460

`∩[A072081(n+1), A074134(n+1)]`
-/

namespace A243008.P14850974612868049460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243008.P14850974612868049460

/-! ## A243008.P9222231713915982683

`∩[A072081(n+1), A076713(n+1)]`
-/

namespace A243008.P9222231713915982683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243008.P9222231713915982683

/-! ## A243008.P18122751102765139422

`∩[A072081(n+1), A186783(n+1)]`
-/

namespace A243008.P18122751102765139422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243008.P18122751102765139422

/-!
# A243009: Primes p such that (p + 1)/q is a perfect power for some prime q.

The programs for A243009, there is no canonical definition to state claims against.
-/

/-! ## A243009.P15678917047883755281

`p?[A245303(n+1)-1]`
-/

namespace A243009.P15678917047883755281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245303 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243009.P15678917047883755281

/-! ## A243009.P388376153529131777

`∩[A000040(n+1), A245303(n+1)-1]`
-/

namespace A243009.P388376153529131777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245303 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243009.P388376153529131777

/-! ## A243009.P5283833425514980213

`∩[A040976(n+1)+2, A245303(n+1)-1]`
-/

namespace A243009.P5283833425514980213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245303 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243009.P5283833425514980213

/-! ## A243009.P16481596172037214389

`record[A092028(A245303(n+2))]`
-/

namespace A243009.P16481596172037214389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092028 (A245303 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243009.P16481596172037214389

/-! ## A243009.P11200559173988960869

`p?[A143051(A245303(n+1))]`
-/

namespace A243009.P11200559173988960869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 (A245303 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243009.P11200559173988960869

/-!
# A243010: Pseudoprimes to base 5 that are not squarefree.

The programs for A243010, there is no canonical definition to state claims against.
-/

/-! ## A243010.P9869913465013479010

`A090082(lt[A196271(n+1), A135417(n+2)])`
-/

namespace A243010.P9869913465013479010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135417 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090082 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A243010.P9869913465013479010

/-! ## A243010.P4804003223582633865

`record[A090082(A206437(n+5))]`
-/

namespace A243010.P4804003223582633865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090082 (A206437 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243010.P4804003223582633865

/-! ## A243010.P6765927577718278740

`A090082(A020639(n!)+n)`
-/

namespace A243010.P6765927577718278740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090082 (A020639 (Nat.factorial n) + (n : ℤ)).toNat

end

end A243010.P6765927577718278740

/-! ## A243010.P11354886543597011872

`A090082(round(log(A339548(2*(n+2)))))`
-/

namespace A243010.P11354886543597011872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090082 (SequenceMachineLib.roundAway (Real.log (A339548 (2 * (n + 2)) : ℝ))).toNat

end

end A243010.P11354886543597011872

/-!
# A243011: Sum of the three largest parts in the partitions of 4n into 4 parts.

The programs for A243011, the canonical program `A243011.P10761689159614172034` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243011 has offset 1).

The definition of A243011 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A238702, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A243011.P10761689159614172034

`A238328(n+1)-A238702(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A243011

/-- `A238328(n+1)-A238702(n+1)` -/
def P10761689159614172034.Spec : Prop :=
  ∀ n, P10761689159614172034.a n = A243011 (n + 1)

theorem P10761689159614172034.correct : P10761689159614172034.Spec := by
  intro n
  simp only [A243011, Nat.add_sub_cancel]

end A243011

/-! ## A243011.P17391146835786131607

`A239667(n+1)+A241084(n+1)+A242727(n+1)`
-/

namespace A243011.P17391146835786131607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239667 (n + 1) + A241084 (n + 1) + A242727 (n + 1)

end

end A243011.P17391146835786131607

namespace A243011

/-- `A239667(n+1)+A241084(n+1)+A242727(n+1)` -/
def P17391146835786131607.Spec : Prop :=
  ∀ n, P17391146835786131607.a n = A243011 (n + 1)

end A243011

/-! ## A243011.P17590533281651853514

`A238328(n+1)-∑[A238340(n+1)]`
-/

namespace A243011.P17590533281651853514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238328 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243011.P17590533281651853514

namespace A243011

/-- `A238328(n+1)-∑[A238340(n+1)]` -/
def P17590533281651853514.Spec : Prop :=
  ∀ n, P17590533281651853514.a n = A243011 (n + 1)

end A243011

/-! ## A243011.P6526413620451531527

`A238328(n+1)-∑[∑[A238705(n+1)]]`
-/

namespace A243011.P6526413620451531527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238705 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238328 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243011.P6526413620451531527

namespace A243011

/-- `A238328(n+1)-∑[∑[A238705(n+1)]]` -/
def P6526413620451531527.Spec : Prop :=
  ∀ n, P6526413620451531527.a n = A243011 (n + 1)

end A243011

/-! ## A243011.P10455969640643519715

`A238328(n+1)-(A238706(n+1)+A238705(n+1))`
-/

namespace A243011.P10455969640643519715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238328 (n + 1) - (A238706 (n + 1) + A238705 (n + 1))

end

end A243011.P10455969640643519715

namespace A243011

/-- `A238328(n+1)-(A238706(n+1)+A238705(n+1))` -/
def P10455969640643519715.Spec : Prop :=
  ∀ n, P10455969640643519715.a n = A243011 (n + 1)

end A243011

/-! ## A243011.P18270000658342666016

`A238328(n+1)+A238340(n+1)-A238706(n+2)`
-/

namespace A243011.P18270000658342666016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238328 (n + 1) + (A238340 (n + 1) - A238706 (n + 2))

end

end A243011.P18270000658342666016

namespace A243011

/-- `A238328(n+1)+A238340(n+1)-A238706(n+2)` -/
def P18270000658342666016.Spec : Prop :=
  ∀ n, P18270000658342666016.a n = A243011 (n + 1)

end A243011

/-! ## A243011.P13683832833003319850

`A238328(n+1)-∑[A014126(2*n)]`
-/

namespace A243011.P13683832833003319850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014126 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238328 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243011.P13683832833003319850

namespace A243011

/-- `A238328(n+1)-∑[A014126(2*n)]` -/
def P13683832833003319850.Spec : Prop :=
  ∀ n, P13683832833003319850.a n = A243011 (n + 1)

end A243011

/-! ## A243011.P10968618003164326104

`A238328(n+1)-∑[A001400(4*n)]`
-/

namespace A243011.P10968618003164326104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238328 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243011.P10968618003164326104

namespace A243011

/-- `A238328(n+1)-∑[A001400(4*n)]` -/
def P10968618003164326104.Spec : Prop :=
  ∀ n, P10968618003164326104.a n = A243011 (n + 1)

end A243011

/-!
# A243012: Odd primes p such that neither p - 4 nor p + 4 is prime.

The programs for A243012, there is no canonical definition to state claims against.
-/

/-! ## A243012.P661163265369246359

`p?[comp[A116912(n+1)]]`
-/

namespace A243012.P661163265369246359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116912 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A243012.P661163265369246359

/-! ## A243012.P313303786298164458

`p?[A085090(3*n+1)+A085090(3*(n+1))]`
-/

namespace A243012.P313303786298164458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085090 (3 * n + 1) + A085090 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243012.P313303786298164458

/-! ## A243012.P724796623930842189

`p?[A080305(3*n+5)*A089026(3*n+1)]`
-/

namespace A243012.P724796623930842189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080305 (3 * n + 5) * A089026 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243012.P724796623930842189

/-! ## A243012.P16598670628720364952

`record[gcd(A085090(3*n+1), A085090(3*n+3))]`
-/

namespace A243012.P16598670628720364952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A085090 (3 * n + 1)) (A085090 (3 * n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243012.P16598670628720364952

/-! ## A243012.P5304940208028498197

`record[gcd(A061397(3*n+1), A120007(3*n+5))]`
-/

namespace A243012.P5304940208028498197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061397 (3 * n + 1)) (A120007 (3 * n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243012.P5304940208028498197

/-! ## A243012.P4876935978173663932

`p?[A005408(A330396(A047845(n+1)))]`
-/

namespace A243012.P4876935978173663932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A330396 (A047845 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243012.P4876935978173663932

/-! ## A243012.P6739284911667547506

`p?[A008458(A008611(n))-A191558(n+1)]`
-/

namespace A243012.P6739284911667547506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A008611 n).toNat - A191558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243012.P6739284911667547506

/-!
# A243014: Number of acyclic digraphs (DAGS) on n labeled nodes, where the indegree and outdegree of each node is at most 1.

The programs for A243014, the canonical program `A243014.P5669977126445732661` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243014 has offset 0).

The definition of A243014 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243014.P5669977126445732661

`n*(a(n-1)+n-2)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A243014

/-- `n*(a(n-1)+n-2)+1` -/
def P5669977126445732661.Spec : Prop :=
  ∀ n, P5669977126445732661.a n = A243014 n

theorem P5669977126445732661.correct : P5669977126445732661.Spec := by
  intro n
  simp only [A243014]

end A243014

/-! ## A243014.P9451170245040840395

`A038154(n)+1`
-/

namespace A243014.P9451170245040840395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038154 n + 1

end

end A243014.P9451170245040840395

namespace A243014

/-- `A038154(n)+1` -/
def P9451170245040840395.Spec : Prop :=
  ∀ n, P9451170245040840395.a n = A243014 n

end A243014

/-! ## A243014.P12740152274612641480

`n!*∑[1/n!]-n`
-/

namespace A243014.P12740152274612641480
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℚ)

end

end A243014.P12740152274612641480

namespace A243014

/-- `n!*∑[1/n!]-n` -/
def P12740152274612641480.Spec : Prop :=
  ∀ n, P12740152274612641480.a n = (A243014 n : ℚ)

end A243014

/-! ## A243014.P12041660515794900862

`(1-n)²+n*a(n-1)` with `a(0)=1`
-/

namespace A243014.P12041660515794900862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 - (n : ℤ)) ^ 2 + (n : ℤ) * a (n - 1)

end

end A243014.P12041660515794900862

namespace A243014

/-- `(1-n)²+n*a(n-1)` -/
def P12041660515794900862.Spec : Prop :=
  ∀ n, P12041660515794900862.a n = A243014 n

theorem P12041660515794900862.correct : P12041660515794900862.Spec := by
  intro n
  simp only [A243014, Nat.add_sub_cancel, A243014.P12041660515794900862.a, A243014.P5669977126445732661.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A243014

/-! ## A243014.P73782382547864456

`1-n*(2-a(n-1)-n)` with `a(0)=1`
-/

namespace A243014.P73782382547864456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (n : ℤ) * (2 - a (n - 1) - (n : ℤ))

end

end A243014.P73782382547864456

namespace A243014

/-- `1-n*(2-a(n-1)-n)` -/
def P73782382547864456.Spec : Prop :=
  ∀ n, P73782382547864456.a n = A243014 n

theorem P73782382547864456.correct : P73782382547864456.Spec := by
  intro n
  simp only [A243014, Nat.add_sub_cancel, A243014.P73782382547864456.a, A243014.P5669977126445732661.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A243014

/-! ## A243014.P14001484640649572940

`lcm(n, a(n-1)+n-2)+1` with `a(0)=1`
-/

namespace A243014.P14001484640649572940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (n : ℤ) ((a (n - 1) : ℤ) + ((n : ℤ) - 2)) + 1

end

end A243014.P14001484640649572940

namespace A243014

/-- `lcm(n, a(n-1)+n-2)+1` -/
def P14001484640649572940.Spec : Prop :=
  ∀ n, (P14001484640649572940.a n : ℤ) = A243014 n

end A243014

/-! ## A243014.P11277915485751466229

`A000522(n)-n`
-/

namespace A243014.P11277915485751466229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n - (n : ℤ)

end

end A243014.P11277915485751466229

namespace A243014

/-- `A000522(n)-n` -/
def P11277915485751466229.Spec : Prop :=
  ∀ n, P11277915485751466229.a n = A243014 n

end A243014

/-! ## A243014.P7320967811059682115

`A073107(∑[n])-n`
-/

namespace A243014.P7320967811059682115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073107 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A243014.P7320967811059682115

namespace A243014

/-- `A073107(∑[n])-n` -/
def P7320967811059682115.Spec : Prop :=
  ∀ n, P7320967811059682115.a n = A243014 n

end A243014

/-! ## A243014.P12584335026895895807

`A143409(∑[n])-n`
-/

namespace A243014.P12584335026895895807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A243014.P12584335026895895807

namespace A243014

/-- `A143409(∑[n])-n` -/
def P12584335026895895807.Spec : Prop :=
  ∀ n, P12584335026895895807.a n = A243014 n

end A243014

/-! ## A243014.P8659841418032960022

`Δ[A002104(n)]-n`
-/

namespace A243014.P8659841418032960022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A243014.P8659841418032960022

namespace A243014

/-- `Δ[A002104(n)]-n` -/
def P8659841418032960022.Spec : Prop :=
  ∀ n, P8659841418032960022.a n = A243014 n

end A243014

/-!
# A243015: Least number k such that k*n/(k-n) is prime or 0 if no such number exists.

The programs for A243015, there is no canonical definition to state claims against.
-/

/-! ## A243015.P4268580269241016866

`A004526(2*n+3)*A061397(A113311(C(n, 64)²)+1+n)`
-/

namespace A243015.P4268580269241016866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * n + 3) * A061397 (A113311 (Nat.choose n 64 ^ 2) + 1 + (n : ℤ)).toNat

end

end A243015.P4268580269241016866

/-! ## A243015.P11745392594033331025

`floor(A072230(n+2)/A174530(n+14))`
-/

namespace A243015.P11745392594033331025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A072230 (n + 2) : ℚ) / (A174530 (n + 14) : ℚ)⌋

end

end A243015.P11745392594033331025

/-! ## A243015.P14715532361757270615

`lcm(Δ[A034387(n+1)], A204904(n+1))`
-/

namespace A243015.P14715532361757270615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A204904 (n + 1))

end

end A243015.P14715532361757270615

/-! ## A243015.P4241427594402052094

`A004526(2*n+3)*A061397(3^C(n, 64)²+1+n)`
-/

namespace A243015.P4241427594402052094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * n + 3) * A061397 (3 ^ Nat.choose n 64 ^ 2 + 1 + n)

end

end A243015.P4241427594402052094

/-! ## A243015.P11295474308043051694

`A000463(A138966(n+1))-A065475(n+1)`
-/

namespace A243015.P11295474308043051694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A138966 (n + 1)).toNat - A065475 (n + 1)

end

end A243015.P11295474308043051694

/-! ## A243015.P10751780439471024857

`A065350(n+1)%A000463(A138966(n+1))`
-/

namespace A243015.P10751780439471024857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065350 (n + 1)) (A000463 (A138966 (n + 1)).toNat)

end

end A243015.P10751780439471024857

/-! ## A243015.P8303477508790458548

`A000010((n+2)²)%A000463(A138966(n+1))`
-/

namespace A243015.P8303477508790458548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 ((n + 2) ^ 2)) (A000463 (A138966 (n + 1)).toNat)

end

end A243015.P8303477508790458548

/-! ## A243015.P3529933602826535762

`or(n+1, n+2)!%(n+2)²`
-/

namespace A243015.P3529933602826535762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.lor (n + 1) (n + 2)) % (n + 2) ^ 2

end

end A243015.P3529933602826535762

/-!
# A243016: Number of solutions for k*n/(k+n) = p for integer k > 0 and prime p.

The programs for A243016, there is no canonical definition to state claims against.
-/

/-! ## A243016.P4787104130335105742

`A083891(A172487(3*n+5)+n²)`
-/

namespace A243016.P4787104130335105742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083891 (A172487 (3 * n + 5) + (n ^ 2 : ℤ)).toNat

end

end A243016.P4787104130335105742

/-! ## A243016.P17761968770629601487

`floor(A218858(n)/A218879(3*n+4))`
-/

namespace A243016.P17761968770629601487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A218858 n : ℚ) / (A218879 (3 * n + 4) : ℚ)⌋

end

end A243016.P17761968770629601487

/-! ## A243016.P9081483836278922184

`A220400(or(9, A022346(n+1)))`
-/

namespace A243016.P9081483836278922184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (Int.lor 9 (A022346 (n + 1))).toNat

end

end A243016.P9081483836278922184

/-! ## A243016.P18436643098562552841

`and(A006008(n), A031346(A132366(n)))`
-/

namespace A243016.P18436643098562552841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006008 n) (A031346 (A132366 n).toNat)

end

end A243016.P18436643098562552841

/-! ## A243016.P554811196456628554

`A332447(A208807(n+1))`
-/

namespace A243016.P554811196456628554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332447 (A208807 (n + 1)).toNat

end

end A243016.P554811196456628554

/-!
# A243018: Numbers k such that Sum_{i=1..k} phi(i) is divisible by Sum_{i=1..k} d(i), where phi(i) is the Euler totient function of i (A000010), and d(i) is the number of divisors of i (A000005).

The programs for A243018, there is no canonical definition to state claims against.
-/

/-! ## A243018.P17683270442408627744

`A287824(9^n+abs(1-33*n))-(n+1)`
-/

namespace A243018.P17683270442408627744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287824 ((9 ^ n : ℤ) + |1 - (33 * n : ℤ)|).toNat - (n + 1 : ℤ)

end

end A243018.P17683270442408627744

/-!
# A243019: Expansion of -(2*x*sqrt(1-8*x^2)-2*x) / (16*x^3+sqrt(1-8*x^2)*(4*x^2+2*x-1)-8*x^2-2*x+1).

The programs for A243019, there is no canonical definition to state claims against.
-/

/-! ## A243019.P12637822935907662436

`A193860(floor(n²/2))`
-/

namespace A243019.P12637822935907662436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193860 ⌊(n ^ 2 : ℚ) / 2⌋.toNat

end

end A243019.P12637822935907662436

/-! ## A243019.P14475963422708355812

`A112626(A007590(n+1))`
-/

namespace A243019.P14475963422708355812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112626 (A007590 (n + 1)).toNat

end

end A243019.P14475963422708355812

/-! ## A243019.P502654324090144465

`A112626(A000982(n)+n)`
-/

namespace A243019.P502654324090144465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112626 (A000982 n + (n : ℤ)).toNat

end

end A243019.P502654324090144465

/-! ## A243019.P4885117715555715554

`A112626(A116940(n)-n)`
-/

namespace A243019.P4885117715555715554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112626 (A116940 n - (n : ℤ)).toNat

end

end A243019.P4885117715555715554

/-! ## A243019.P13386623337520193631

`A112626(∑[∑[A010673(n)]])`
-/

namespace A243019.P13386623337520193631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112626 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A243019.P13386623337520193631

/-! ## A243019.P7611435972010577473

`A112626(A061925(n)-1+n)`
-/

namespace A243019.P7611435972010577473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112626 (A061925 n - 1 + (n : ℤ)).toNat

end

end A243019.P7611435972010577473

/-! ## A243019.P15117073789750248868

`A112626(n-(1-A061925(n)))`
-/

namespace A243019.P15117073789750248868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112626 ((n : ℤ) - (1 - A061925 n)).toNat

end

end A243019.P15117073789750248868

/-! ## A243019.P1308907907395334364

`A112626(∑[n+1]-A008619(n))`
-/

namespace A243019.P1308907907395334364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112626 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A008619 n).toNat

end

end A243019.P1308907907395334364

/-! ## A243019.P7725973484483939042

`A112626(A000217(n)+∑[n%2])`
-/

namespace A243019.P7725973484483939042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112626 (A000217 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A243019.P7725973484483939042

/-! ## A243019.P17781427928642350145

`A193823(A047838(n+2))`
-/

namespace A243019.P17781427928642350145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193823 (A047838 (n + 2)).toNat

end

end A243019.P17781427928642350145

/-!
# A243021: Numbers n such that n appears in the sequence beginning with the digit-sum of n and extended by adding successive digit-sums.

The programs for A243021, there is no canonical definition to state claims against.
-/

/-! ## A243021.P15741917567716409706

`lt[14, A229860(A093394(n+3))]`
-/

namespace A243021.P15741917567716409706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229860 (A093394 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A243021.P15741917567716409706

/-! ## A243021.P752183413567285372

`lt[34, A126001(A126015(n+3))]`
-/

namespace A243021.P752183413567285372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126001 (A126015 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A243021.P752183413567285372

/-! ## A243021.P9062793943952978616

`lt[sqrt(A182853(n+3)), A347744(2*n)]`
-/

namespace A243021.P9062793943952978616
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A182853 (n + 3) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347744 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A243021.P9062793943952978616

/-! ## A243021.P3388954517176533320

`lt[A155167(n+1), A163491(n+1)!]`
-/

namespace A243021.P3388954517176533320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155167 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A163491 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A243021.P3388954517176533320

/-! ## A243021.P8589299981290509354

`lt[A326080(n), A271425(A263390(n))]`
-/

namespace A243021.P8589299981290509354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326080 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271425 (A263390 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243021.P8589299981290509354

/-!
# A243023: Consider a k-digit number m = d_(k)*10^(k-1) + d_(k-1)*10^(k-2) + ... + d_(2)*10 + d_(1). Sequence lists the numbers m that divide Sum_{i=1..k-1}{d_(i+1)^d(i)}+d(1)^d(k) (see example below).

The programs for A243023, there is no canonical definition to state claims against.
-/

/-! ## A243023.P4910787104842647404

`A243024(a(n-2)+2)` with `a(0)=1, a(1)=2`
-/

namespace A243023.P4910787104842647404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A243024 (a (n - 2) + 2).toNat

end

end A243023.P4910787104842647404

/-! ## A243023.P9017224505477796205

`A243024(∏{p}[n+1, #]^∏{e}[n+1, #])`
-/

namespace A243023.P9017224505477796205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243024 ((∏ p ∈ Nat.primeFactors (f1 n), p) ^ (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

end

end A243023.P9017224505477796205

/-! ## A243023.P892179170727196913

`A243024(lcm(n+1, ∏{d}[n+1, #]/(n+1)))`
-/

namespace A243023.P892179170727196913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243024 (Int.lcm (n + 1 : ℤ) (SequenceMachineLib.roundAway (((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ))))

end

end A243023.P892179170727196913

/-! ## A243023.P14442495702475511339

`A243024(record[A219209(n)])`
-/

namespace A243023.P14442495702475511339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243024 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243023.P14442495702475511339

/-! ## A243023.P4813407819593015257

`A243024(A219209(n+1))`
-/

namespace A243023.P4813407819593015257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243024 (A219209 (n + 1)).toNat

end

end A243023.P4813407819593015257

/-!
# A243026: Number of length n+3 0..n arrays with no four elements in a row with pattern abba (possibly a=b) and new values 0..n introduced in 0..n order.

The programs for A243026, there is no canonical definition to state claims against.
-/

/-! ## A243026.P15127210022832721898

`A243033(∑[4*n]+1)`
-/

namespace A243026.P15127210022832721898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A243026.P15127210022832721898

/-! ## A243026.P17084138388594813830

`record[gcd(A114327(n), A243033(n+1))]`
-/

namespace A243026.P17084138388594813830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A243033 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243026.P17084138388594813830

/-! ## A243026.P9277039055417838867

`record[root(A243033(n+1), A140685(n+1))]`
-/

namespace A243026.P9277039055417838867
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A243033 (n + 1) : ℝ) ^ (1 / (A140685 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243026.P9277039055417838867

/-! ## A243026.P13639396837326440649

`lcm(A033999(n), A243033(A001844(n)))`
-/

namespace A243026.P13639396837326440649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A243033 (A001844 n).toNat)

end

end A243026.P13639396837326440649

/-! ## A243026.P5885370487885814344

`or(A000038(n), A243033(A001844(n)))`
-/

namespace A243026.P5885370487885814344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A243033 (A001844 n).toNat)

end

end A243026.P5885370487885814344

/-! ## A243026.P17799729015826304428

`A050447(∑[n])*A243033(A001844(n))`
-/

namespace A243026.P17799729015826304428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (∑ j ∈ Finset.range (n + 1), f1 j) * A243033 (A001844 n).toNat

end

end A243026.P17799729015826304428

/-! ## A243026.P374452067940238845

`A000108(C(2, n+2))*A243033(A001844(n))`
-/

namespace A243026.P374452067940238845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A243033 (A001844 n).toNat

end

end A243026.P374452067940238845

/-! ## A243026.P12334047642803345450

`A000108(A178334(n))*A243033(A001844(n))`
-/

namespace A243026.P12334047642803345450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A178334 n).toNat * A243033 (A001844 n).toNat

end

end A243026.P12334047642803345450

/-! ## A243026.P296053544888310803

`A078572(A044345(n+1))*A243033(A001844(n))`
-/

namespace A243026.P296053544888310803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078572 (A044345 (n + 1)).toNat * A243033 (A001844 n).toNat

end

end A243026.P296053544888310803

/-!
# A243027: Number of length n+3 0..2 arrays with no four elements in a row with pattern abba (possibly a=b) and new values 0..2 introduced in 0..2 order.

The programs for A243027, the canonical program `A243027.P2116199723446558833` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243027 has offset 1).

The definition of A243027 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243027.P2116199723446558833

`2*a(n-1)+a(n-2)+2*a(n-3)` with `a(0)=12, a(1)=32, a(2)=85`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A243027

/-- `2*a(n-1)+a(n-2)+2*a(n-3)` -/
def P2116199723446558833.Spec : Prop :=
  ∀ n, (P2116199723446558833.a n : ℤ) = A243027 (n + 1)

theorem P2116199723446558833.correct : P2116199723446558833.Spec := by
  intro n
  simp only [A243027, Nat.add_sub_cancel]

end A243027

/-! ## A243027.P11503066975127598037

`A243033(∑[n+2])`
-/

namespace A243027.P11503066975127598037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A243027.P11503066975127598037

namespace A243027

/-- `A243033(∑[n+2])` -/
def P11503066975127598037.Spec : Prop :=
  ∀ n, P11503066975127598037.a n = A243027 (n + 1)

end A243027

/-! ## A243027.P6098754448528420046

`record[A243033(A000096(A002260(n+1)))]`
-/

namespace A243027.P6098754448528420046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243027.P6098754448528420046

namespace A243027

/-- `record[A243033(A000096(A002260(n+1)))]` -/
def P6098754448528420046.Spec : Prop :=
  ∀ n, P6098754448528420046.a n = A243027 (n + 1)

end A243027

/-! ## A243027.P1283305129128329901

`record[A243033(A000096(A003602(n+1)))]`
-/

namespace A243027.P1283305129128329901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (A000096 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243027.P1283305129128329901

namespace A243027

/-- `record[A243033(A000096(A003602(n+1)))]` -/
def P1283305129128329901.Spec : Prop :=
  ∀ n, P1283305129128329901.a n = A243027 (n + 1)

end A243027

/-! ## A243027.P4724495699503623755

`record[A243033(A000096(A003963(n+1)))]`
-/

namespace A243027.P4724495699503623755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (A000096 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243027.P4724495699503623755

namespace A243027

/-- `record[A243033(A000096(A003963(n+1)))]` -/
def P4724495699503623755.Spec : Prop :=
  ∀ n, P4724495699503623755.a n = A243027 (n + 1)

end A243027

/-! ## A243027.P10713653920475661743

`record[A243033(A000096(A004736(n+1)))]`
-/

namespace A243027.P10713653920475661743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243027.P10713653920475661743

namespace A243027

/-- `record[A243033(A000096(A004736(n+1)))]` -/
def P10713653920475661743.Spec : Prop :=
  ∀ n, P10713653920475661743.a n = A243027 (n + 1)

end A243027

/-! ## A243027.P8635206182571823720

`record[A243033(A000096(A026242(n+1)))]`
-/

namespace A243027.P8635206182571823720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (A000096 (A026242 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243027.P8635206182571823720

namespace A243027

/-- `record[A243033(A000096(A026242(n+1)))]` -/
def P8635206182571823720.Spec : Prop :=
  ∀ n, P8635206182571823720.a n = A243027 (n + 1)

end A243027

/-! ## A243027.P4627180145997015708

`record[A243033(A000096(A198789(n+1)))]`
-/

namespace A243027.P4627180145997015708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (A000096 (A198789 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243027.P4627180145997015708

namespace A243027

/-- `record[A243033(A000096(A198789(n+1)))]` -/
def P4627180145997015708.Spec : Prop :=
  ∀ n, P4627180145997015708.a n = A243027 (n + 1)

end A243027

/-! ## A243027.P942819263758368286

`record[A243033(A000096(A071974(n+1)))]`
-/

namespace A243027.P942819263758368286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (A000096 (A071974 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243027.P942819263758368286

namespace A243027

/-- `record[A243033(A000096(A071974(n+1)))]` -/
def P942819263758368286.Spec : Prop :=
  ∀ n, P942819263758368286.a n = A243027 (n + 1)

end A243027

/-!
# A243028: Number of length n+3 0..3 arrays with no four elements in a row with pattern abba (possibly a=b) and new values 0..3 introduced in 0..3 order.

The programs for A243028, there is no canonical definition to state claims against.
-/

/-! ## A243028.P2632963203902923971

`A243033(∑[n+3]+1)`
-/

namespace A243028.P2632963203902923971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A243028.P2632963203902923971

/-! ## A243028.P2728296780265925045

`A243033(A034856(n+2))%A243039(n+1)`
-/

namespace A243028.P2728296780265925045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243033 (A034856 (n + 2)).toNat) (A243039 (n + 1))

end

end A243028.P2728296780265925045

/-! ## A243028.P4045275846022967694

`A243033(A034856(n+2))/A048671(A000040(n+1))`
-/

namespace A243028.P4045275846022967694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243033 (A034856 (n + 2)).toNat : ℚ) / (A048671 (A000040 (n + 1)).toNat : ℚ)

end

end A243028.P4045275846022967694

/-! ## A243028.P11098246741112740338

`A243033(A034856(n+2))/A000040(A154708(n+1))%2`
-/

namespace A243028.P11098246741112740338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243033 (A034856 (n + 2)).toNat : ℚ) / (Int.tmod (A000040 (A154708 (n + 1)).toNat) 2 : ℚ)

end

end A243028.P11098246741112740338

/-! ## A243028.P13062657343537296941

`A243033(A034856(n+2))/A000040(A006530(n+2))%2`
-/

namespace A243028.P13062657343537296941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243033 (A034856 (n + 2)).toNat : ℚ) / (Int.tmod (A000040 (A006530 (n + 2)).toNat) 2 : ℚ)

end

end A243028.P13062657343537296941

/-! ## A243028.P17455563080813432676

`A243033(A034856(n+2))/A020483(A000040(n+3))%2`
-/

namespace A243028.P17455563080813432676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243033 (A034856 (n + 2)).toNat : ℚ) / (Int.tmod (A020483 (A000040 (n + 3)).toNat) 2 : ℚ)

end

end A243028.P17455563080813432676

/-! ## A243028.P1953276893814966361

`A243033(A034856(n+2))/(A114327(A000096(n))+n+1)`
-/

namespace A243028.P1953276893814966361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243033 (A034856 (n + 2)).toNat : ℚ) / (A114327 (A000096 n).toNat + (n + 1 : ℤ) : ℚ)

end

end A243028.P1953276893814966361

/-!
# A243029: Number of length n+3 0..4 arrays with no four elements in a row with pattern abba (possibly a=b) and new values 0..4 introduced in 0..4 order.

The programs for A243029, there is no canonical definition to state claims against.
-/

/-! ## A243029.P6343777988955632647

`A243033(A027379(n+2))`
-/

namespace A243029.P6343777988955632647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (A027379 (n + 2)).toNat

end

end A243029.P6343777988955632647

/-! ## A243029.P6271826353574255851

`A243033(A055998(n+2))`
-/

namespace A243029.P6271826353574255851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (A055998 (n + 2)).toNat

end

end A243029.P6271826353574255851

/-! ## A243029.P14886059818124503883

`A243033(A155212(n)+5)`
-/

namespace A243029.P14886059818124503883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (A155212 n + 5).toNat

end

end A243029.P14886059818124503883

/-! ## A243029.P7278487132027949212

`A243033(A056000(n)+7)`
-/

namespace A243029.P7278487132027949212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (A056000 n + 7).toNat

end

end A243029.P7278487132027949212

/-! ## A243029.P11721193900594531475

`A243033(A052905(n+1)+2)`
-/

namespace A243029.P11721193900594531475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (A052905 (n + 1) + 2).toNat

end

end A243029.P11721193900594531475

/-! ## A243029.P16644663684888879582

`A243033(A167614(n+1)+2*n+1)`
-/

namespace A243029.P16644663684888879582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (A167614 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A243029.P16644663684888879582

/-!
# A243030: Number of length n+3 0..5 arrays with no four elements in a row with pattern abba (possibly a=b) and new values 0..5 introduced in 0..5 order.

The programs for A243030, there is no canonical definition to state claims against.
-/

/-! ## A243030.P12135856654826388838

`A243033(Δ[A264443(n)])`
-/

namespace A243030.P12135856654826388838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (f1 (n + 1) - f1 n).toNat

end

end A243030.P12135856654826388838

/-! ## A243030.P12108466353115906529

`A243033(A046691(n+3))`
-/

namespace A243030.P12108466353115906529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (A046691 (n + 3)).toNat

end

end A243030.P12108466353115906529

/-! ## A243030.P16419941252287793866

`A243033(Δ[A023545(n+1)])`
-/

namespace A243030.P16419941252287793866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (f1 (n + 1) - f1 n).toNat

end

end A243030.P16419941252287793866

/-! ## A243030.P4102792536633470769

`A243033(A052905(n+2)+1)`
-/

namespace A243030.P4102792536633470769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (A052905 (n + 2) + 1).toNat

end

end A243030.P4102792536633470769

/-! ## A243030.P3350229661705655509

`A243033(A027379(n+3)-1)`
-/

namespace A243030.P3350229661705655509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (A027379 (n + 3) - 1).toNat

end

end A243030.P3350229661705655509

/-! ## A243030.P972327753706062445

`A243033(A161680(n+6)-4)`
-/

namespace A243030.P972327753706062445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (A161680 (n + 6) - 4).toNat

end

end A243030.P972327753706062445

/-! ## A243030.P2380219083372572804

`A243033(A000096(n+5)-(n+9))`
-/

namespace A243030.P2380219083372572804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (A000096 (n + 5) - (n + 9 : ℤ)).toNat

end

end A243030.P2380219083372572804

/-! ## A243030.P16864431602983741214

`A243033(A167614(n+2)+2*(n+1))`
-/

namespace A243030.P16864431602983741214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (A167614 (n + 2) + (2 * (n + 1) : ℤ)).toNat

end

end A243030.P16864431602983741214

/-! ## A243030.P5720675397618245344

`A243033(A264443(n+1)-A264443(n))`
-/

namespace A243030.P5720675397618245344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (A264443 (n + 1) - A264443 n).toNat

end

end A243030.P5720675397618245344

/-!
# A243031: Number of length n+3 0..6 arrays with no four elements in a row with pattern abba (possibly a=b) and new values 0..6 introduced in 0..6 order.

The programs for A243031, there is no canonical definition to state claims against.
-/

/-! ## A243031.P2040205654286231422

`A243033(A052905(n+3))`
-/

namespace A243031.P2040205654286231422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (A052905 (n + 3)).toNat

end

end A243031.P2040205654286231422

/-! ## A243031.P11507309268550941607

`A243033(A027379(n+4)-2)`
-/

namespace A243031.P11507309268550941607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (A027379 (n + 4) - 2).toNat

end

end A243031.P11507309268550941607

/-! ## A243031.P17891033584631554441

`A243033(A000096(n+5)-4)`
-/

namespace A243031.P17891033584631554441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (A000096 (n + 5) - 4).toNat

end

end A243031.P17891033584631554441

/-! ## A243031.P12342698530837484662

`A243033(A000217(n+6)-5)`
-/

namespace A243031.P12342698530837484662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (A000217 (n + 6) - 5).toNat

end

end A243031.P12342698530837484662

/-! ## A243031.P16840695628905882179

`A243033(Δ[A264443(n+1)]-1)`
-/

namespace A243031.P16840695628905882179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (f1 (n + 1) - f1 n - 1).toNat

end

end A243031.P16840695628905882179

/-! ## A243031.P3729011613134855387

`A243033(Δ[A023545(n+2)]-1)`
-/

namespace A243031.P3729011613134855387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (f1 (n + 1) - f1 n - 1).toNat

end

end A243031.P3729011613134855387

/-! ## A243031.P11545201107839090607

`A243033(A161680(n+6)+n+1)`
-/

namespace A243031.P11545201107839090607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (A161680 (n + 6) + (n + 1 : ℤ)).toNat

end

end A243031.P11545201107839090607

/-! ## A243031.P573026958122742344

`A243033(A167614(n+3)+A005408(n+1))`
-/

namespace A243031.P573026958122742344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (A167614 (n + 3) + A005408 (n + 1)).toNat

end

end A243031.P573026958122742344

/-!
# A243032: Number of length n+3 0..7 arrays with no four elements in a row with pattern abba (possibly a=b) and new values 0..7 introduced in 0..7 order.

The programs for A243032, there is no canonical definition to state claims against.
-/

/-! ## A243032.P4103913850712466385

`A243033(A055999(n+4))`
-/

namespace A243032.P4103913850712466385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (A055999 (n + 4)).toNat

end

end A243032.P4103913850712466385

/-! ## A243032.P9902770350305296115

`A243033(A056121(n)+22)`
-/

namespace A243032.P9902770350305296115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (A056121 n + 22).toNat

end

end A243032.P9902770350305296115

/-! ## A243032.P2679085580131429813

`A243033(A000124(n+7)-7)`
-/

namespace A243032.P2679085580131429813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (A000124 (n + 7) - 7).toNat

end

end A243032.P2679085580131429813

/-! ## A243032.P13656648776780314933

`A243033(n+4+A027379(n+4))`
-/

namespace A243032.P13656648776780314933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 ((n + 4 : ℤ) + A027379 (n + 4)).toNat

end

end A243032.P13656648776780314933

/-! ## A243032.P16328562725094040333

`A243033(A000096(n+5)+C(n+2, n+1))`
-/

namespace A243032.P16328562725094040333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (A000096 (n + 5) + (Nat.choose (n + 2) (n + 1) : ℤ)).toNat

end

end A243032.P16328562725094040333

/-! ## A243032.P13222554823566453046

`A243033(A167614(n+4)+A004277(n+2))`
-/

namespace A243032.P13222554823566453046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243033 (A167614 (n + 4) + A004277 (n + 2)).toNat

end

end A243032.P13222554823566453046

/-!
# A243034: Expansion of A(x) = x*F'(x)/(F(x) - F(x)^2), where F(x) = (-1 - sqrt(1-8*x) + sqrt(2 + 2*sqrt(1-8*x) + 8*x))/4.

The programs for A243034, there is no canonical definition to state claims against.
-/

/-! ## A243034.P12991402489071360525

`A028310(A149044(n)+A015559(n))`
-/

namespace A243034.P12991402489071360525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A149044 n + A015559 n).toNat

end

end A243034.P12991402489071360525

/-! ## A243034.P12224284895734876659

`A028310(A190978(n)+A068010(n))`
-/

namespace A243034.P12224284895734876659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A190978 n + A068010 n).toNat

end

end A243034.P12224284895734876659

/-!
# A243035: Number of entries of length n in A240601.

The programs for A243035, there is no canonical definition to state claims against.
-/

/-! ## A243035.P11017470425853579322

`A070252(A178493(n+1))`
-/

namespace A243035.P11017470425853579322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070252 (A178493 (n + 1)).toNat

end

end A243035.P11017470425853579322

/-! ## A243035.P1162824061183198676

`floor(A097256(A048896(n))+acot(n))`
-/

namespace A243035.P1162824061183198676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A097256 (A048896 n).toNat : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A243035.P1162824061183198676

/-! ## A243035.P558594349963807056

`A052268(A000120(n+1))+floor(1/(n+1))`
-/

namespace A243035.P558594349963807056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052268 (A000120 (n + 1)).toNat + ⌊1 / (n + 1 : ℚ)⌋

end

end A243035.P558594349963807056

/-! ## A243035.P14192759771711820098

`A078248(2^(n-∑[val(n+1, 2)]))+A000007(n)`
-/

namespace A243035.P14192759771711820098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078248 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ))).toNat + A000007 n

end

end A243035.P14192759771711820098

/-! ## A243035.P12200444090190506801

`A151933(n)+A078248(2^(n-∑[val(n+1, 2)]))`
-/

namespace A243035.P12200444090190506801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n + A078248 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ))).toNat

end

end A243035.P12200444090190506801

/-! ## A243035.P745606368436224069

`A151935(n)+A078248(2^(n-∑[val(n+1, 2)]))`
-/

namespace A243035.P745606368436224069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151935 n + A078248 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ))).toNat

end

end A243035.P745606368436224069

/-! ## A243035.P1988955217197464318

`A078248(A048896(n))+A000007(n)`
-/

namespace A243035.P1988955217197464318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078248 (A048896 n).toNat + A000007 n

end

end A243035.P1988955217197464318

/-! ## A243035.P3123100047900256060

`A151933(n)+A078248(A048896(n))`
-/

namespace A243035.P3123100047900256060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n + A078248 (A048896 n).toNat

end

end A243035.P3123100047900256060

/-! ## A243035.P10066382818083719682

`A151935(n)+A078248(A048896(n))`
-/

namespace A243035.P10066382818083719682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151935 n + A078248 (A048896 n).toNat

end

end A243035.P10066382818083719682

/-! ## A243035.P12023159674214233783

`A097256(A048896(n))+val(A000040(n+1), 2)`
-/

namespace A243035.P12023159674214233783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097256 (A048896 n).toNat + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A243035.P12023159674214233783

/-!
# A243036: Number of entries of length n in A240602.

The programs for A243036, the canonical program `A243036.P15208389317133748505` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243036 has offset 1).

The definition of A243036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243036.P15208389317133748505

`a(n%2)*a(floor((n-1)/2))` with `a(0)=2, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A243036

/-- `a(n%2)*a(floor((n-1)/2))` -/
def P15208389317133748505.Spec : Prop :=
  ∀ n, (P15208389317133748505.a n : ℤ) = A243036 (n + 1)

theorem P15208389317133748505.correct : P15208389317133748505.Spec := by
  intro n
  simp only [A243036, Nat.add_sub_cancel]

end A243036

/-! ## A243036.P6898811736382143691

`a(and(1, n))*a(floor((n-1)/2))` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A243036.P6898811736382143691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2] fun n a =>
  a (Nat.land 1 n) * a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat

end

end A243036.P6898811736382143691

namespace A243036

/-- `a(and(1, n))*a(floor((n-1)/2))` -/
def P6898811736382143691.Spec : Prop :=
  ∀ n, (P6898811736382143691.a n : ℤ) = A243036 (n + 1)

theorem P6898811736382143691.correct : P6898811736382143691.Spec := by
  intro n
  simp only [A243036, Nat.add_sub_cancel, A243036.P6898811736382143691.a, A243036.P15208389317133748505.a, SequenceMachineLib.memo_apply]
  try simp

end A243036

/-! ## A243036.P10714501342466439690

`2*a(n-1)/2^val(n+1, 2)` with `a(0)=2, a(1)=1`
-/

namespace A243036.P10714501342466439690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n a =>
  2 * a (n - 1) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

end

end A243036.P10714501342466439690

namespace A243036

/-- `2*a(n-1)/2^val(n+1, 2)` -/
def P10714501342466439690.Spec : Prop :=
  ∀ n, P10714501342466439690.a n = (A243036 (n + 1) : ℚ)

end A243036

/-! ## A243036.P5279694120115928781

`lcm(n+1, 2*a(n-1))/(n+1)` with `a(0)=2, a(1)=1`
-/

namespace A243036.P5279694120115928781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n a =>
  (Int.lcm (n + 1 : ℤ) (SequenceMachineLib.roundAway (2 * a (n - 1))) : ℚ) / (n + 1 : ℚ)

end

end A243036.P5279694120115928781

namespace A243036

/-- `lcm(n+1, 2*a(n-1))/(n+1)` -/
def P5279694120115928781.Spec : Prop :=
  ∀ n, P5279694120115928781.a n = (A243036 (n + 1) : ℚ)

end A243036

/-! ## A243036.P11360602928257464792

`4*a(n-1)/(xor(n, n+1)+1)` with `a(0)=2, a(1)=1`
-/

namespace A243036.P11360602928257464792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n a =>
  4 * (a (n - 1) / (Nat.xor n (n + 1) + 1 : ℚ))

end

end A243036.P11360602928257464792

namespace A243036

/-- `4*a(n-1)/(xor(n, n+1)+1)` -/
def P11360602928257464792.Spec : Prop :=
  ∀ n, P11360602928257464792.a n = (A243036 (n + 1) : ℚ)

end A243036

/-! ## A243036.P9526986988274652390

`2*a(n-1)/(or(n, n+1)-n)` with `a(0)=2, a(1)=1`
-/

namespace A243036.P9526986988274652390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n a =>
  2 * (a (n - 1) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))

end

end A243036.P9526986988274652390

namespace A243036

/-- `2*a(n-1)/(or(n, n+1)-n)` -/
def P9526986988274652390.Spec : Prop :=
  ∀ n, P9526986988274652390.a n = (A243036 (n + 1) : ℚ)

end A243036

/-! ## A243036.P8470547133491016486

`2*a(n-1)/and(n+1, -(n+1))` with `a(0)=2, a(1)=1`
-/

namespace A243036.P8470547133491016486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n a =>
  2 * a (n - 1) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

end

end A243036.P8470547133491016486

namespace A243036

/-- `2*a(n-1)/and(n+1, -(n+1))` -/
def P8470547133491016486.Spec : Prop :=
  ∀ n, P8470547133491016486.a n = (A243036 (n + 1) : ℚ)

end A243036

/-! ## A243036.P15846711172701449565

`2*a(n-1)/gcd(n+1, a(n-1)²)` with `a(0)=2, a(1)=1`
-/

namespace A243036.P15846711172701449565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n a =>
  2 * a (n - 1) / (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (a (n - 1) ^ 2)) : ℚ)

end

end A243036.P15846711172701449565

namespace A243036

/-- `2*a(n-1)/gcd(n+1, a(n-1)²)` -/
def P15846711172701449565.Spec : Prop :=
  ∀ n, P15846711172701449565.a n = (A243036 (n + 1) : ℚ)

end A243036

/-! ## A243036.P3005889239737526067

`lcm(gcd(2, n), A048896(n))`
-/

namespace A243036.P3005889239737526067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.gcd 2 n : ℤ) (A048896 n)

end

end A243036.P3005889239737526067

namespace A243036

/-- `lcm(gcd(2, n), A048896(n))` -/
def P3005889239737526067.Spec : Prop :=
  ∀ n, (P3005889239737526067.a n : ℤ) = A243036 (n + 1)

end A243036

/-! ## A243036.P11419952846769064982

`A001316(and(n+1, n-1))`
-/

namespace A243036.P11419952846769064982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (Int.land (n + 1 : ℤ) ((n : ℤ) - 1)).toNat

end

end A243036.P11419952846769064982

namespace A243036

/-- `A001316(and(n+1, n-1))` -/
def P11419952846769064982.Spec : Prop :=
  ∀ n, P11419952846769064982.a n = A243036 (n + 1)

end A243036

/-! ## A243036.P5187256591459868331

`A048460(n+1)-a(n-1)` with `a(0)=2, a(1)=1`
-/

namespace A243036.P5187256591459868331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A048460 (n + 1) - a (n - 1)

end

end A243036.P5187256591459868331

namespace A243036

/-- `A048460(n+1)-a(n-1)` -/
def P5187256591459868331.Spec : Prop :=
  ∀ n, P5187256591459868331.a n = A243036 (n + 1)

end A243036

/-! ## A243036.P2413290267265478829

`A048896(n)+A000007(n)`
-/

namespace A243036.P2413290267265478829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n + A000007 n

end

end A243036.P2413290267265478829

namespace A243036

/-- `A048896(n)+A000007(n)` -/
def P2413290267265478829.Spec : Prop :=
  ∀ n, P2413290267265478829.a n = A243036 (n + 1)

end A243036

/-! ## A243036.P15118891957977255778

`A048896(n)*A054977(n)`
-/

namespace A243036.P15118891957977255778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n * A054977 n

end

end A243036.P15118891957977255778

namespace A243036

/-- `A048896(n)*A054977(n)` -/
def P15118891957977255778.Spec : Prop :=
  ∀ n, P15118891957977255778.a n = A243036 (n + 1)

end A243036

/-! ## A243036.P18233699237019859160

`A001316(A004277(n)+2)/2`
-/

namespace A243036.P18233699237019859160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 (A004277 n + 2).toNat : ℚ) / 2

end

end A243036.P18233699237019859160

namespace A243036

/-- `A001316(A004277(n)+2)/2` -/
def P18233699237019859160.Spec : Prop :=
  ∀ n, P18233699237019859160.a n = (A243036 (n + 1) : ℚ)

end A243036

/-! ## A243036.P17798723953850321911

`A001316(A051755(n+2))/2`
-/

namespace A243036.P17798723953850321911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 (A051755 (n + 2)).toNat : ℚ) / 2

end

end A243036.P17798723953850321911

namespace A243036

/-- `A001316(A051755(n+2))/2` -/
def P17798723953850321911.Spec : Prop :=
  ∀ n, P17798723953850321911.a n = (A243036 (n + 1) : ℚ)

end A243036

/-! ## A243036.P17569553928344806315

`A001316(A053438(n)+2)/2`
-/

namespace A243036.P17569553928344806315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 (A053438 n + 2).toNat : ℚ) / 2

end

end A243036.P17569553928344806315

namespace A243036

/-- `A001316(A053438(n)+2)/2` -/
def P17569553928344806315.Spec : Prop :=
  ∀ n, P17569553928344806315.a n = (A243036 (n + 1) : ℚ)

end A243036

/-! ## A243036.P4089285736816746666

`A048896(n)+A036987(2*n)`
-/

namespace A243036.P4089285736816746666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n + A036987 (2 * n)

end

end A243036.P4089285736816746666

namespace A243036

/-- `A048896(n)+A036987(2*n)` -/
def P4089285736816746666.Spec : Prop :=
  ∀ n, P4089285736816746666.a n = A243036 (n + 1)

end A243036

/-! ## A243036.P10454518136010046092

`A048896(2*A028310(n)-n)`
-/

namespace A243036.P10454518136010046092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (2 * A028310 n - (n : ℤ)).toNat

end

end A243036.P10454518136010046092

namespace A243036

/-- `A048896(2*A028310(n)-n)` -/
def P10454518136010046092.Spec : Prop :=
  ∀ n, P10454518136010046092.a n = A243036 (n + 1)

end A243036

/-! ## A243036.P10416727489009412722

`A048896(n)-A073097(2*n)`
-/

namespace A243036.P10416727489009412722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n - A073097 (2 * n)

end

end A243036.P10416727489009412722

namespace A243036

/-- `A048896(n)-A073097(2*n)` -/
def P10416727489009412722.Spec : Prop :=
  ∀ n, P10416727489009412722.a n = A243036 (n + 1)

end A243036

/-! ## A243036.P12810863379210039931

`A028310(n)+A048896(n)-n`
-/

namespace A243036.P12810863379210039931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (A048896 n - (n : ℤ))

end

end A243036.P12810863379210039931

namespace A243036

/-- `A028310(n)+A048896(n)-n` -/
def P12810863379210039931.Spec : Prop :=
  ∀ n, P12810863379210039931.a n = A243036 (n + 1)

end A243036

/-!
# A243037: Number of length n+3 0..n arrays with no four elements in a row with pattern abab (with a!=b) and new values 0..n introduced in 0..n order.

The programs for A243037, there is no canonical definition to state claims against.
-/

/-! ## A243037.P17867880870712684495

`A243044(∑[4*n]+1)`
-/

namespace A243037.P17867880870712684495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A243037.P17867880870712684495

/-! ## A243037.P5077332571848443088

`record[gcd(A003987(n), A243044(n+1))]`
-/

namespace A243037.P5077332571848443088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A243044 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243037.P5077332571848443088

/-! ## A243037.P17529651493204330099

`record[root(A243044(n+1), A286156(n+1))]`
-/

namespace A243037.P17529651493204330099
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A243044 (n + 1) : ℝ) ^ (1 / (A286156 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243037.P17529651493204330099

/-! ## A243037.P12614151050517031175

`or(A000007(n), A243044(A001844(n)))`
-/

namespace A243037.P12614151050517031175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A243044 (A001844 n).toNat)

end

end A243037.P12614151050517031175

/-! ## A243037.P7113530052303310253

`A243044(A001844(n))%A135217(n+2)`
-/

namespace A243037.P7113530052303310253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243044 (A001844 n).toNat) (A135217 (n + 2))

end

end A243037.P7113530052303310253

/-!
# A243038: Number of length n+3 0..2 arrays with no four elements in a row with pattern abab (with a!=b) and new values 0..2 introduced in 0..2 order.

The programs for A243038, the canonical program `A243038.P14080859577111026691` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243038 has offset 1).

The definition of A243038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243038.P14080859577111026691

`3*a(n-1)-a(n-3)-a(n-4)` with `a(0)=13, a(1)=36, a(2)=101, a(3)=285`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A243038

/-- `3*a(n-1)-a(n-3)-a(n-4)` -/
def P14080859577111026691.Spec : Prop :=
  ∀ n, P14080859577111026691.a n = A243038 (n + 1)

theorem P14080859577111026691.correct : P14080859577111026691.Spec := by
  intro n
  simp only [A243038, Nat.add_sub_cancel]

end A243038

/-! ## A243038.P1964303183198348252

`(A101168(n+3)+1)/2`
-/

namespace A243038.P1964303183198348252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101168 (n + 3) + 1 : ℚ) / 2

end

end A243038.P1964303183198348252

namespace A243038

/-- `(A101168(n+3)+1)/2` -/
def P1964303183198348252.Spec : Prop :=
  ∀ n, P1964303183198348252.a n = (A243038 (n + 1) : ℚ)

end A243038

/-! ## A243038.P4610175650669126907

`A243044(∑[n+2])`
-/

namespace A243038.P4610175650669126907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A243038.P4610175650669126907

namespace A243038

/-- `A243044(∑[n+2])` -/
def P4610175650669126907.Spec : Prop :=
  ∀ n, P4610175650669126907.a n = A243038 (n + 1)

end A243038

/-! ## A243038.P12268998258359061611

`record[A243044(A000096(A274640(n)))]`
-/

namespace A243038.P12268998258359061611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (A000096 (A274640 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243038.P12268998258359061611

namespace A243038

/-- `record[A243044(A000096(A274640(n)))]` -/
def P12268998258359061611.Spec : Prop :=
  ∀ n, P12268998258359061611.a n = A243038 (n + 1)

end A243038

/-! ## A243038.P2755458784882778122

`record[A243044(A000096(A003602(n+1)))]`
-/

namespace A243038.P2755458784882778122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (A000096 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243038.P2755458784882778122

namespace A243038

/-- `record[A243044(A000096(A003602(n+1)))]` -/
def P2755458784882778122.Spec : Prop :=
  ∀ n, P2755458784882778122.a n = A243038 (n + 1)

end A243038

/-! ## A243038.P14810558879697832921

`record[A243044(A000096(A004736(n+1)))]`
-/

namespace A243038.P14810558879697832921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243038.P14810558879697832921

namespace A243038

/-- `record[A243044(A000096(A004736(n+1)))]` -/
def P14810558879697832921.Spec : Prop :=
  ∀ n, P14810558879697832921.a n = A243038 (n + 1)

end A243038

/-! ## A243038.P15631557866689236730

`record[A243044(A000096(A026806(n+1)))]`
-/

namespace A243038.P15631557866689236730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (A000096 (A026806 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243038.P15631557866689236730

namespace A243038

/-- `record[A243044(A000096(A026806(n+1)))]` -/
def P15631557866689236730.Spec : Prop :=
  ∀ n, P15631557866689236730.a n = A243038 (n + 1)

end A243038

/-! ## A243038.P6116468737056823361

`record[A243044(A000096(A026238(n+2)))]`
-/

namespace A243038.P6116468737056823361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (A000096 (A026238 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243038.P6116468737056823361

namespace A243038

/-- `record[A243044(A000096(A026238(n+2)))]` -/
def P6116468737056823361.Spec : Prop :=
  ∀ n, P6116468737056823361.a n = A243038 (n + 1)

end A243038

/-!
# A243039: Number of length n+3 0..3 arrays with no four elements in a row with pattern abab (with a!=b) and new values 0..3 introduced in 0..3 order.

The programs for A243039, there is no canonical definition to state claims against.
-/

/-! ## A243039.P11235066659200580686

`A243044(∑[n+3]+1)`
-/

namespace A243039.P11235066659200580686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A243039.P11235066659200580686

/-! ## A243039.P18265229595460394049

`abs(1-A243044(A055999(n)+4))+1`
-/

namespace A243039.P18265229595460394049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A243044 (A055999 n + 4).toNat| + 1

end

end A243039.P18265229595460394049

/-! ## A243039.P1837710848625266929

`lcm(A033999(n), A243044(A055999(n)+4))`
-/

namespace A243039.P1837710848625266929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A243044 (A055999 n + 4).toNat)

end

end A243039.P1837710848625266929

/-! ## A243039.P6743954881964271896

`A243044(A055999(n)+4)/A057077(n+1)²`
-/

namespace A243039.P6743954881964271896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243044 (A055999 n + 4).toNat : ℚ) / (A057077 (n + 1) ^ 2 : ℚ)

end

end A243039.P6743954881964271896

/-! ## A243039.P6600784061322648658

`A132954(A008594(n))*A243044(A055999(n)+4)`
-/

namespace A243039.P6600784061322648658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132954 (A008594 n).toNat * A243044 (A055999 n + 4).toNat

end

end A243039.P6600784061322648658

/-! ## A243039.P14182974577624790775

`A001221(A002145(n+1))*A243044(A055999(n)+4)`
-/

namespace A243039.P14182974577624790775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002145 (n + 1)).toNat * A243044 (A055999 n + 4).toNat

end

end A243039.P14182974577624790775

/-! ## A243039.P10226619162363239878

`A001221(A005383(n+1))*A243044(A055999(n)+4)`
-/

namespace A243039.P10226619162363239878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A005383 (n + 1)).toNat * A243044 (A055999 n + 4).toNat

end

end A243039.P10226619162363239878

/-! ## A243039.P5046523084798914639

`A243044(A055999(n)+4)%A346854(n)`
-/

namespace A243039.P5046523084798914639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243044 (A055999 n + 4).toNat) (A346854 n)

end

end A243039.P5046523084798914639

/-!
# A243040: Number of length n+3 0..4 arrays with no four elements in a row with pattern abab (with a!=b) and new values 0..4 introduced in 0..4 order.

The programs for A243040, there is no canonical definition to state claims against.
-/

/-! ## A243040.P11692905392577286093

`A243044(A027379(n+2))`
-/

namespace A243040.P11692905392577286093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (A027379 (n + 2)).toNat

end

end A243040.P11692905392577286093

/-! ## A243040.P13029206559185729946

`A243044(A055998(n+2))`
-/

namespace A243040.P13029206559185729946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (A055998 (n + 2)).toNat

end

end A243040.P13029206559185729946

/-! ## A243040.P7206584989540604143

`A243044(A052905(n+1)+2)`
-/

namespace A243040.P7206584989540604143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (A052905 (n + 1) + 2).toNat

end

end A243040.P7206584989540604143

/-! ## A243040.P10438789739989636284

`A243044(A000096(n+2)+n+2)`
-/

namespace A243040.P10438789739989636284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (A000096 (n + 2) + (n + 2 : ℤ)).toNat

end

end A243040.P10438789739989636284

/-! ## A243040.P1415275893796323611

`A243044(A167614(n+1)+A005408(n))`
-/

namespace A243040.P1415275893796323611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (A167614 (n + 1) + A005408 n).toNat

end

end A243040.P1415275893796323611

/-!
# A243041: Number of length n+3 0..5 arrays with no four elements in a row with pattern abab (with a!=b) and new values 0..5 introduced in 0..5 order.

The programs for A243041, there is no canonical definition to state claims against.
-/

/-! ## A243041.P16222783139308731444

`A243044(A046691(n+3))`
-/

namespace A243041.P16222783139308731444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (A046691 (n + 3)).toNat

end

end A243041.P16222783139308731444

/-! ## A243041.P6822857329241901966

`A243044(A056115(n)+11)`
-/

namespace A243041.P6822857329241901966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (A056115 n + 11).toNat

end

end A243041.P6822857329241901966

/-! ## A243041.P1750914039550864754

`A243044(Δ[A023545(n+1)])`
-/

namespace A243041.P1750914039550864754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (f1 (n + 1) - f1 n).toNat

end

end A243041.P1750914039550864754

/-! ## A243041.P9053924424156571066

`A243044(Δ[A111396(n)]-1)`
-/

namespace A243041.P9053924424156571066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (f1 (n + 1) - f1 n - 1).toNat

end

end A243041.P9053924424156571066

/-! ## A243041.P14962757568448306551

`A243044(A246172(n+1)+10)`
-/

namespace A243041.P14962757568448306551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (A246172 (n + 1) + 10).toNat

end

end A243041.P14962757568448306551

/-! ## A243041.P4641927887550346568

`A243044(A180486(n+1)+A167614(n+1))`
-/

namespace A243041.P4641927887550346568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (A180486 (n + 1) + A167614 (n + 1)).toNat

end

end A243041.P4641927887550346568

/-!
# A243042: Number of length n+3 0..6 arrays with no four elements in a row with pattern abab (with a!=b) and new values 0..6 introduced in 0..6 order.

The programs for A243042, there is no canonical definition to state claims against.
-/

/-! ## A243042.P3421833019542168306

`A243044(A052905(n+3))`
-/

namespace A243042.P3421833019542168306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (A052905 (n + 3)).toNat

end

end A243042.P3421833019542168306

/-! ## A243042.P9366049753072201718

`A243044(A055999(n+3)+1)`
-/

namespace A243042.P9366049753072201718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (A055999 (n + 3) + 1).toNat

end

end A243042.P9366049753072201718

/-! ## A243042.P11708736053791577064

`A243044(A055998(n+4)-2)`
-/

namespace A243042.P11708736053791577064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (A055998 (n + 4) - 2).toNat

end

end A243042.P11708736053791577064

/-! ## A243042.P11222084559172415815

`A243044(A000096(n+5)-4)`
-/

namespace A243042.P11222084559172415815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (A000096 (n + 5) - 4).toNat

end

end A243042.P11222084559172415815

/-! ## A243042.P16158869109685356357

`A243044(A000217(n+6)-5)`
-/

namespace A243042.P16158869109685356357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (A000217 (n + 6) - 5).toNat

end

end A243042.P16158869109685356357

/-! ## A243042.P14437881070430335236

`A243044(A000124(n+6)-6)`
-/

namespace A243042.P14437881070430335236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (A000124 (n + 6) - 6).toNat

end

end A243042.P14437881070430335236

/-! ## A243042.P14069666677089534838

`A243044(Δ[A023545(n+2)]-1)`
-/

namespace A243042.P14069666677089534838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (f1 (n + 1) - f1 n - 1).toNat

end

end A243042.P14069666677089534838

/-! ## A243042.P655335188086749678

`A243044(Δ[A111396(n+1)]-2)`
-/

namespace A243042.P655335188086749678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (f1 (n + 1) - f1 n - 2).toNat

end

end A243042.P655335188086749678

/-! ## A243042.P3266440930187206509

`A243044(A005843(n+3)+A000217(n+4))`
-/

namespace A243042.P3266440930187206509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (A005843 (n + 3) + A000217 (n + 4)).toNat

end

end A243042.P3266440930187206509

/-!
# A243043: Number of length n+3 0..7 arrays with no four elements in a row with pattern abab (with a!=b) and new values 0..7 introduced in 0..7 order.

The programs for A243043, there is no canonical definition to state claims against.
-/

/-! ## A243043.P1795523411910715827

`A243044(A055999(n+4))`
-/

namespace A243043.P1795523411910715827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (A055999 (n + 4)).toNat

end

end A243043.P1795523411910715827

/-! ## A243043.P14321331376772396539

`A243044(A055998(n+5)-3)`
-/

namespace A243043.P14321331376772396539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (A055998 (n + 5) - 3).toNat

end

end A243043.P14321331376772396539

/-! ## A243043.P3425868775130572396

`A243044(A000124(n+7)-7)`
-/

namespace A243043.P3425868775130572396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (A000124 (n + 7) - 7).toNat

end

end A243043.P3425868775130572396

/-! ## A243043.P2374820009523094235

`A243044(A133263(n+6)+n-1)`
-/

namespace A243043.P2374820009523094235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (A133263 (n + 6) + ((n : ℤ) - 1)).toNat

end

end A243043.P2374820009523094235

/-! ## A243043.P16556289720079483998

`A243044(A008586(n+4)+A000217(n+3))`
-/

namespace A243043.P16556289720079483998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (A008586 (n + 4) + A000217 (n + 3)).toNat

end

end A243043.P16556289720079483998

/-!
# A243046: Number of solutions to k*n/(k+n) = x and k*n/(k-n) = y for integers x and y and natural number k.

The programs for A243046, there is no canonical definition to state claims against.
-/

/-! ## A243046.P1509910142611821207

`A264059(A086614(n))%A026354(n+1)`
-/

namespace A243046.P1509910142611821207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264059 (A086614 n).toNat) (A026354 (n + 1))

end

end A243046.P1509910142611821207

/-! ## A243046.P7202103501407847373

`A005849(n+1)%A205003(A205001(n+1))`
-/

namespace A243046.P7202103501407847373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005849 (n + 1)) (A205003 (A205001 (n + 1)).toNat)

end

end A243046.P7202103501407847373

/-! ## A243046.P16672053987693082493

`A257992(∑[A016789(A020992(n))])`
-/

namespace A243046.P16672053987693082493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A020992 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A243046.P16672053987693082493

/-! ## A243046.P18307739688971158677

`A278040(A006323(n+1))%A181819(n+1)`
-/

namespace A243046.P18307739688971158677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278040 (A006323 (n + 1)).toNat) (A181819 (n + 1))

end

end A243046.P18307739688971158677

/-!
# A243047: Numbers n such that k*n/(k-n) and k*n/(k+n) are both never integers for k > 0.

The programs for A243047, there is no canonical definition to state claims against.
-/

/-! ## A243047.P3780197699375158890

`eq[0, A243017(n+1)]+1`
-/

namespace A243047.P3780197699375158890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243017 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A243047.P3780197699375158890

/-! ## A243047.P2052752785302912127

`eq[0, A243045(n+1)]+1`
-/

namespace A243047.P2052752785302912127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243045 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A243047.P2052752785302912127

/-! ## A243047.P14745489596730092947

`eq[1, A360120(n+1)]+1`
-/

namespace A243047.P14745489596730092947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360120 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A243047.P14745489596730092947

/-! ## A243047.P14141625667269553248

`lt[A243046(n+1), 1]+1`
-/

namespace A243047.P14141625667269553248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243046 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A243047.P14141625667269553248

/-! ## A243047.P3171177984158299422

`∩[A099477(n+1), A112886(n+1)]`
-/

namespace A243047.P3171177984158299422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243047.P3171177984158299422

/-! ## A243047.P16043759628266289532

`record[A000027(n+1)-A243017(n+1)]`
-/

namespace A243047.P16043759628266289532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A243017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243047.P16043759628266289532

/-! ## A243047.P18270907712079750338

`eq[A115861(A323155(2*n+1)), A243046(n+1)]+1`
-/

namespace A243047.P18270907712079750338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115861 (A323155 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243046 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A243047.P18270907712079750338

/-!
# A243048: Number of simple graphs on n nodes having a non-unique Tutte polynomial.

The programs for A243048, there is no canonical definition to state claims against.
-/

/-! ## A243048.P10774907605496466215

`A000088(n+1)-A243049(n+1)`
-/

namespace A243048.P10774907605496466215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A243049 (n + 1)

end

end A243048.P10774907605496466215

/-! ## A243048.P8216863904078831842

`Δ[A006897(n)]-A243049(n+1)`
-/

namespace A243048.P8216863904078831842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A243049 (n + 1)

end

end A243048.P8216863904078831842

/-! ## A243048.P17751059121591095125

`record[A327805(n)]-A243049(n+1)`
-/

namespace A243048.P17751059121591095125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A243049 (n + 1)

end

end A243048.P17751059121591095125

/-!
# A243049: Number of simple graphs on n nodes having a unique Tutte polynomial.

The programs for A243049, there is no canonical definition to state claims against.
-/

/-! ## A243049.P18352350088857680756

`A000088(n+1)-A243048(n+1)`
-/

namespace A243049.P18352350088857680756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A243048 (n + 1)

end

end A243049.P18352350088857680756

/-! ## A243049.P4060606087948750545

`Δ[A006897(n)]-A243048(n+1)`
-/

namespace A243049.P4060606087948750545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A243048 (n + 1)

end

end A243049.P4060606087948750545

/-! ## A243049.P9835414713788423519

`record[A327805(n)]-A243048(n+1)`
-/

namespace A243049.P9835414713788423519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A243048 (n + 1)

end

end A243049.P9835414713788423519

/-!
# A243050: Composite integers n such that n-1 divided by the binary period of 1/n (=A007733(n)) equals an integral power of 2.

The programs for A243050, there is no canonical definition to state claims against.
-/

/-! ## A243050.P4360747162120047000

`A242880(xor(xor(1, n), A242871(2*(n+2))))`
-/

namespace A243050.P4360747162120047000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242880 (Int.xor (Nat.xor 1 n : ℤ) (A242871 (2 * (n + 2)))).toNat

end

end A243050.P4360747162120047000

/-!
# A243051: Integer sequence induced by Bulgarian solitaire operation on partition list A241918: a(n) = A241909(A242424(A241909(n))).

The programs for A243051, there is no canonical definition to state claims against.
-/

/-! ## A243051.P14705410453057903969

`1+A075157(A226062(A075158(n)))`
-/

namespace A243051.P14705410453057903969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A075157 (A226062 (A075158 n).toNat).toNat

end

end A243051.P14705410453057903969

/-! ## A243051.P7902436508480249818

`A241909(A242424(A241909(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243051.P7902436508480249818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (A242424 (A241909 (n + 1)).toNat).toNat

end

end A243051.P7902436508480249818

/-! ## A243051.P12073219640242174535

`A243060(∑[n]+1)`
-/

namespace A243051.P12073219640242174535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243060 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A243051.P12073219640242174535

/-! ## A243051.P17382603082265281744

`and(-1, A243060(A000124(n)))`
-/

namespace A243051.P17382603082265281744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A243060 (A000124 n).toNat)

end

end A243051.P17382603082265281744

/-! ## A243051.P13182801547379905905

`A243060(A000124(n))+A011731(n)`
-/

namespace A243051.P13182801547379905905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243060 (A000124 n).toNat + A011731 n

end

end A243051.P13182801547379905905

/-!
# A243052: Integer sequence induced by second order Bulgarian solitaire operation on partition list A241918: a(n) = A241909(A243072(A241909(n))).

The programs for A243052, there is no canonical definition to state claims against.
-/

/-! ## A243052.P413372924574950048

`A241909(A243072(A241909(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243052.P413372924574950048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (A243072 (A241909 (n + 1)).toNat).toNat

end

end A243052.P413372924574950048

/-! ## A243052.P3379099192134599557

`A122111(n+1)+A033483(A295028(2*n+3))`
-/

namespace A243052.P3379099192134599557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1) + A033483 (A295028 (2 * n + 3)).toNat

end

end A243052.P3379099192134599557

/-! ## A243052.P1444490176104798023

`A243060(∑[n+1]+2)`
-/

namespace A243052.P1444490176104798023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243060 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A243052.P1444490176104798023

/-! ## A243052.P8192921654338797347

`A243060(A133263(n+1))+A000007(n+1)`
-/

namespace A243052.P8192921654338797347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243060 (A133263 (n + 1)).toNat + A000007 (n + 1)

end

end A243052.P8192921654338797347

/-! ## A243052.P5786186378258046824

`A185246(A265759(n+1))+A122111(n+1)`
-/

namespace A243052.P5786186378258046824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185246 (A265759 (n + 1)).toNat + A122111 (n + 1)

end

end A243052.P5786186378258046824

/-!
# A243053: Integer sequence induced by third-order Bulgarian solitaire operation on partition list A241918: a(n) = A241909(A243073(A241909(n))).

The programs for A243053, there is no canonical definition to state claims against.
-/

/-! ## A243053.P14609138080569257656

`A241909(A243073(A241909(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243053.P14609138080569257656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (A243073 (A241909 (n + 1)).toNat).toNat

end

end A243053.P14609138080569257656

/-!
# A243054: a(0)=1, and for n >= 1, a(n) = p_n * A002110(n) / 2, where p_n is the n-th prime.

The programs for A243054, there is no canonical definition to state claims against.
-/

/-! ## A243054.P14655781646167876410

`round(A286630(n)/2)`
-/

namespace A243054.P14655781646167876410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A286630 n : ℚ) / 2)

end

end A243054.P14655781646167876410

/-! ## A243054.P1931314483566574982

`A286630(n)/(and(1, A000040(n+1))+1)`
-/

namespace A243054.P1931314483566574982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286630 n : ℚ) / (Int.land 1 (A000040 (n + 1)) + 1 : ℚ)

end

end A243054.P1931314483566574982

/-! ## A243054.P17247671196186960311

`round(∏[A028815(n)-1]*A008578(n+1)/2)`
-/

namespace A243054.P17247671196186960311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((∏ j ∈ Finset.range (n + 1), f1 j) * A008578 (n + 1) : ℤ) : ℚ) / 2)

end

end A243054.P17247671196186960311

/-! ## A243054.P14788356524377545347

`A286630(n)/A212829(A133263(n))`
-/

namespace A243054.P14788356524377545347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286630 n : ℚ) / (A212829 (A133263 n).toNat : ℚ)

end

end A243054.P14788356524377545347

/-! ## A243054.P1781889485204622849

`∏[A006005(A028310(n))]*A008578(n+1)`
-/

namespace A243054.P1781889485204622849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A008578 (n + 1)

end

end A243054.P1781889485204622849

/-!
# A243055: Difference between the indices of the smallest and the largest prime dividing n: If n = p_i * ... * p_k, where p_i <= ... <= p_k, where p_h = A000040(h), then a(n) = (k-i), a(1) = 0 by convention.

The programs for A243055, the canonical program `A243055.P2464886309294058059` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243055 has offset 1).

The definition of A243055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243055.P16603287015984232085

`A061395(n+1)-A055396(n+1)`
-/

namespace A243055.P16603287015984232085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) - A055396 (n + 1)

end

end A243055.P16603287015984232085

namespace A243055

/-- `A061395(n+1)-A055396(n+1)` -/
def P16603287015984232085.Spec : Prop :=
  ∀ n, P16603287015984232085.a n = A243055 (n + 1)

end A243055

/-! ## A243055.P8283565635771475881

`A243056(A005451(n+1))`
-/

namespace A243055.P8283565635771475881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243056 (A005451 (n + 1)).toNat

end

end A243055.P8283565635771475881

namespace A243055

/-- `A243056(A005451(n+1))` -/
def P8283565635771475881.Spec : Prop :=
  ∀ n, P8283565635771475881.a n = A243055 (n + 1)

end A243055

/-! ## A243055.P3124907992261980867

`A242411(A088835(n+1))`
-/

namespace A243055.P3124907992261980867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242411 (A088835 (n + 1)).toNat

end

end A243055.P3124907992261980867

namespace A243055

/-- `A242411(A088835(n+1))` -/
def P3124907992261980867.Spec : Prop :=
  ∀ n, P3124907992261980867.a n = A243055 (n + 1)

end A243055

/-! ## A243055.P9630599503046183909

`A117370(A253550(n+1))`
-/

namespace A243055.P9630599503046183909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117370 (A253550 (n + 1)).toNat

end

end A243055.P9630599503046183909

namespace A243055

/-- `A117370(A253550(n+1))` -/
def P9630599503046183909.Spec : Prop :=
  ∀ n, P9630599503046183909.a n = A243055 (n + 1)

end A243055

/-! ## A243055.P4974485149718165940

`A143731(n+1)+A117370(n+1)`
-/

namespace A243055.P4974485149718165940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (n + 1) + A117370 (n + 1)

end

end A243055.P4974485149718165940

namespace A243055

/-- `A143731(n+1)+A117370(n+1)` -/
def P4974485149718165940.Spec : Prop :=
  ∀ n, P4974485149718165940.a n = A243055 (n + 1)

end A243055

/-! ## A243055.P2464886309294058059

`A297155(n+1)+A117371(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A243055

/-- `A297155(n+1)+A117371(n+1)` -/
def P2464886309294058059.Spec : Prop :=
  ∀ n, P2464886309294058059.a n = A243055 (n + 1)

theorem P2464886309294058059.correct : P2464886309294058059.Spec := by
  intro n
  simp only [A243055, Nat.add_sub_cancel]

end A243055

/-! ## A243055.P7259197917797607690

`A243056(n+1)-A049084(n+1)`
-/

namespace A243055.P7259197917797607690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243056 (n + 1) - A049084 (n + 1)

end

end A243055.P7259197917797607690

namespace A243055

/-- `A243056(n+1)-A049084(n+1)` -/
def P7259197917797607690.Spec : Prop :=
  ∀ n, P7259197917797607690.a n = A243055 (n + 1)

theorem P7259197917797607690.correct : P7259197917797607690.Spec := by
  intro n
  simp only [A243055, Nat.add_sub_cancel, A243055.P7259197917797607690.a, A243055.P2464886309294058059.a, A049084, A049084.P10934933317972537770.a, A117371, A117371.P12406732587805932156.a, A243056, A243056.P15772004773289888384.a, A297155, A297155.P1611206963555320167.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A010051, A010051.P15078252821583414300.a, A079067, A079067.P15788458216202685682.a, A252464, A252464.P11274602121942962009.a, A297113, A297113.P441289280190658386.a, A348717, A348717.P703712104273003584.a, A046660, A046660.P3614759855976580945.a, A061395, A061395.P8431317036300486107.a, A080791, A080791.P6131873509789506769.a, A087207, A087207.P12536008426233777954.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A122111, A122111.P18124015185857335041.a, A193056, A193056.P6449544040074946363.a, A243074, A243074.P6910029884229255604.a, A252736, A252736.P2865412191134230649.f1, A252736.P2865412191134230649.a, A001221, A001221.P10258181745752134128.a, A001222, A001222.P11318177267732088261.a, A006530, A006530.P13372528560459906635.a, A007814, A007814.P13537437864234730737.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A029837, A029837.P1050578713049589.a, A036987, A036987.P1789601236562705309.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A051119, A051119.P33126866714900772.a, A064989, A064989.P13349672914146769936.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A243055

/-! ## A243055.P18164507655267586330

`A005171(n+1)*A243056(n+1)`
-/

namespace A243055.P18164507655267586330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A243056 (n + 1)

end

end A243055.P18164507655267586330

namespace A243055

/-- `A005171(n+1)*A243056(n+1)` -/
def P18164507655267586330.Spec : Prop :=
  ∀ n, P18164507655267586330.a n = A243055 (n + 1)

end A243055

/-! ## A243055.P5221607375556322443

`A055976(n+1)*A243056(n+1)`
-/

namespace A243055.P5221607375556322443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055976 (n + 1) * A243056 (n + 1)

end

end A243055.P5221607375556322443

namespace A243055

/-- `A055976(n+1)*A243056(n+1)` -/
def P5221607375556322443.Spec : Prop :=
  ∀ n, P5221607375556322443.a n = A243055 (n + 1)

end A243055

/-! ## A243055.P16300389172354915824

`A066247(n+1)*A243056(n+1)`
-/

namespace A243055.P16300389172354915824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1) * A243056 (n + 1)

end

end A243055.P16300389172354915824

namespace A243055

/-- `A066247(n+1)*A243056(n+1)` -/
def P16300389172354915824.Spec : Prop :=
  ∀ n, P16300389172354915824.a n = A243055 (n + 1)

end A243055

/-! ## A243055.P12232600728720193425

`A143731(n+1)*A243056(n+1)`
-/

namespace A243055.P12232600728720193425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (n + 1) * A243056 (n + 1)

end

end A243055.P12232600728720193425

namespace A243055

/-- `A143731(n+1)*A243056(n+1)` -/
def P12232600728720193425.Spec : Prop :=
  ∀ n, P12232600728720193425.a n = A243055 (n + 1)

end A243055

/-! ## A243055.P8012501271274186050

`A182936(n+1)*A243056(n+1)`
-/

namespace A243055.P8012501271274186050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182936 (n + 1) * A243056 (n + 1)

end

end A243055.P8012501271274186050

namespace A243055

/-- `A182936(n+1)*A243056(n+1)` -/
def P8012501271274186050.Spec : Prop :=
  ∀ n, P8012501271274186050.a n = A243055 (n + 1)

end A243055

/-! ## A243055.P10168821476967956877

`A202238(n+1)*A243056(n+1)`
-/

namespace A243055.P10168821476967956877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202238 (n + 1) * A243056 (n + 1)

end

end A243055.P10168821476967956877

namespace A243055

/-- `A202238(n+1)*A243056(n+1)` -/
def P10168821476967956877.Spec : Prop :=
  ∀ n, P10168821476967956877.a n = A243055 (n + 1)

end A243055

/-! ## A243055.P9915396051159341081

`A243056(n+1)%A003963(n+1)`
-/

namespace A243055.P9915396051159341081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243056 (n + 1)) (A003963 (n + 1))

end

end A243055.P9915396051159341081

namespace A243055

/-- `A243056(n+1)%A003963(n+1)` -/
def P9915396051159341081.Spec : Prop :=
  ∀ n, P9915396051159341081.a n = A243055 (n + 1)

end A243055

/-! ## A243055.P4947450066096436534

`A061395(n+1)-A000720(A020639(n+1))`
-/

namespace A243055.P4947450066096436534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) - A000720 (A020639 (n + 1)).toNat

end

end A243055.P4947450066096436534

namespace A243055

/-- `A061395(n+1)-A000720(A020639(n+1))` -/
def P4947450066096436534.Spec : Prop :=
  ∀ n, P4947450066096436534.a n = A243055 (n + 1)

end A243055

/-! ## A243055.P1416614296917886215

`A049084(A006530(n+1))-A055396(n+1)`
-/

namespace A243055.P1416614296917886215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A006530 (n + 1)).toNat - A055396 (n + 1)

end

end A243055.P1416614296917886215

namespace A243055

/-- `A049084(A006530(n+1))-A055396(n+1)` -/
def P1416614296917886215.Spec : Prop :=
  ∀ n, P1416614296917886215.a n = A243055 (n + 1)

end A243055

/-! ## A243055.P5885313956910486558

`A061395(n+1)-A061395(A028233(n+1))`
-/

namespace A243055.P5885313956910486558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) - A061395 (A028233 (n + 1)).toNat

end

end A243055.P5885313956910486558

namespace A243055

/-- `A061395(n+1)-A061395(A028233(n+1))` -/
def P5885313956910486558.Spec : Prop :=
  ∀ n, P5885313956910486558.a n = A243055 (n + 1)

end A243055

/-! ## A243055.P6728840962653790288

`A055396(A053585(n+1))-A055396(n+1)`
-/

namespace A243055.P6728840962653790288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A053585 (n + 1)).toNat - A055396 (n + 1)

end

end A243055.P6728840962653790288

namespace A243055

/-- `A055396(A053585(n+1))-A055396(n+1)` -/
def P6728840962653790288.Spec : Prop :=
  ∀ n, P6728840962653790288.a n = A243055 (n + 1)

end A243055

/-! ## A243055.P3535117009881648064

`A061395(n+1)-A061395(A068794(n+1))`
-/

namespace A243055.P3535117009881648064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) - A061395 (A068794 (n + 1)).toNat

end

end A243055.P3535117009881648064

namespace A243055

/-- `A061395(n+1)-A061395(A068794(n+1))` -/
def P3535117009881648064.Spec : Prop :=
  ∀ n, P3535117009881648064.a n = A243055 (n + 1)

end A243055

/-! ## A243055.P4033311293622405360

`A061395(n+1)-A061395(A074828(n+1))`
-/

namespace A243055.P4033311293622405360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) - A061395 (A074828 (n + 1)).toNat

end

end A243055.P4033311293622405360

namespace A243055

/-- `A061395(n+1)-A061395(A074828(n+1))` -/
def P4033311293622405360.Spec : Prop :=
  ∀ n, P4033311293622405360.a n = A243055 (n + 1)

end A243055

/-!
# A243056: If n is the i-th prime, p_i = A000040(i), then a(n) = i, otherwise the difference between the indices of the smallest and the largest prime dividing n: for n = p_i * ... * p_k, where p_i <= ... <= p_k, a(n) = (k-i); a(1) = 0 by convention.

The programs for A243056, the canonical program `A243056.P15772004773289888384` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243056 has offset 1).

The definition of A243056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243056.P15772004773289888384

`A243055(n+1)+A049084(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A243056

/-- `A243055(n+1)+A049084(n+1)` -/
def P15772004773289888384.Spec : Prop :=
  ∀ n, P15772004773289888384.a n = A243056 (n + 1)

theorem P15772004773289888384.correct : P15772004773289888384.Spec := by
  intro n
  simp only [A243056, Nat.add_sub_cancel]

end A243056

/-! ## A243056.P18079749167143618050

`A243055(n+1)+A000720(A089026(n+1))`
-/

namespace A243056.P18079749167143618050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (n + 1) + A000720 (A089026 (n + 1)).toNat

end

end A243056.P18079749167143618050

namespace A243056

/-- `A243055(n+1)+A000720(A089026(n+1))` -/
def P18079749167143618050.Spec : Prop :=
  ∀ n, P18079749167143618050.a n = A243056 (n + 1)

end A243056

/-! ## A243056.P11185575728800423730

`A243055(n+1)+A230980(A061397(n+1))`
-/

namespace A243056.P11185575728800423730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (n + 1) + A230980 (A061397 (n + 1)).toNat

end

end A243056.P11185575728800423730

namespace A243056

/-- `A243055(n+1)+A230980(A061397(n+1))` -/
def P11185575728800423730.Spec : Prop :=
  ∀ n, P11185575728800423730.a n = A243056 (n + 1)

end A243056

/-! ## A243056.P7585374653957770168

`A243055(A052126(n+1))+A241917(n+1)`
-/

namespace A243056.P7585374653957770168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (A052126 (n + 1)).toNat + A241917 (n + 1)

end

end A243056.P7585374653957770168

namespace A243056

/-- `A243055(A052126(n+1))+A241917(n+1)` -/
def P7585374653957770168.Spec : Prop :=
  ∀ n, P7585374653957770168.a n = A243056 (n + 1)

end A243056

/-! ## A243056.P16522099362875022617

`A061395(n+1)-A055396(A052126(n+1))`
-/

namespace A243056.P16522099362875022617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) - A055396 (A052126 (n + 1)).toNat

end

end A243056.P16522099362875022617

namespace A243056

/-- `A061395(n+1)-A055396(A052126(n+1))` -/
def P16522099362875022617.Spec : Prop :=
  ∀ n, P16522099362875022617.a n = A243056 (n + 1)

end A243056

/-! ## A243056.P6393099848161940585

`A243055(n+1)+A000720(A166260(n+1)+1)`
-/

namespace A243056.P6393099848161940585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (n + 1) + A000720 (A166260 (n + 1) + 1).toNat

end

end A243056.P6393099848161940585

namespace A243056

/-- `A243055(n+1)+A000720(A166260(n+1)+1)` -/
def P6393099848161940585.Spec : Prop :=
  ∀ n, P6393099848161940585.a n = A243056 (n + 1)

end A243056

/-! ## A243056.P3147879505211641800

`A243055(n+1)+A055396(A166260(n+1)+1)`
-/

namespace A243056.P3147879505211641800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (n + 1) + A055396 (A166260 (n + 1) + 1).toNat

end

end A243056.P3147879505211641800

namespace A243056

/-- `A243055(n+1)+A055396(A166260(n+1)+1)` -/
def P3147879505211641800.Spec : Prop :=
  ∀ n, P3147879505211641800.a n = A243056 (n + 1)

end A243056

/-! ## A243056.P17573212950248567223

`A049084(n+1)+A061395(n+1)-A055396(n+1)`
-/

namespace A243056.P17573212950248567223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 1) + (A061395 (n + 1) - A055396 (n + 1))

end

end A243056.P17573212950248567223

namespace A243056

/-- `A049084(n+1)+A061395(n+1)-A055396(n+1)` -/
def P17573212950248567223.Spec : Prop :=
  ∀ n, P17573212950248567223.a n = A243056 (n + 1)

end A243056

/-! ## A243056.P17967719240483660363

`A243055(n+1)+A000720(n+1)*A010051(n+1)`
-/

namespace A243056.P17967719240483660363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (n + 1) + A000720 (n + 1) * A010051 (n + 1)

end

end A243056.P17967719240483660363

namespace A243056

/-- `A243055(n+1)+A000720(n+1)*A010051(n+1)` -/
def P17967719240483660363.Spec : Prop :=
  ∀ n, P17967719240483660363.a n = A243056 (n + 1)

end A243056

/-! ## A243056.P4593686776633930941

`A243055(n+1)+A010051(n+1)*A026233(n+1)`
-/

namespace A243056.P4593686776633930941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (n + 1) + A010051 (n + 1) * A026233 (n + 1)

end

end A243056.P4593686776633930941

namespace A243056

/-- `A243055(n+1)+A010051(n+1)*A026233(n+1)` -/
def P4593686776633930941.Spec : Prop :=
  ∀ n, P4593686776633930941.a n = A243056 (n + 1)

end A243056

/-! ## A243056.P16151246986485223698

`n+1-A243291(n+1)-A055396(A052126(n+1))`
-/

namespace A243056.P16151246986485223698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A243291 (n + 1) - A055396 (A052126 (n + 1)).toNat

end

end A243056.P16151246986485223698

namespace A243056

/-- `n+1-A243291(n+1)-A055396(A052126(n+1))` -/
def P16151246986485223698.Spec : Prop :=
  ∀ n, P16151246986485223698.a n = A243056 (n + 1)

end A243056

/-! ## A243056.P11363202192819752133

`A061395(n+1)-A055396((n+1)/A006530(n+1))`
-/

namespace A243056.P11363202192819752133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) - A055396 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat

end

end A243056.P11363202192819752133

namespace A243056

/-- `A061395(n+1)-A055396((n+1)/A006530(n+1))` -/
def P11363202192819752133.Spec : Prop :=
  ∀ n, P11363202192819752133.a n = A243056 (n + 1)

end A243056

/-! ## A243056.P14434984671089120907

`A049084(A006530(n+1))-A055396(A052126(n+1))`
-/

namespace A243056.P14434984671089120907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A006530 (n + 1)).toNat - A055396 (A052126 (n + 1)).toNat

end

end A243056.P14434984671089120907

namespace A243056

/-- `A049084(A006530(n+1))-A055396(A052126(n+1))` -/
def P14434984671089120907.Spec : Prop :=
  ∀ n, P14434984671089120907.a n = A243056 (n + 1)

end A243056

/-! ## A243056.P10371388203081180834

`A049084(A006530(n+1))+A049084(n+1)-A055396(n+1)`
-/

namespace A243056.P10371388203081180834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A006530 (n + 1)).toNat + (A049084 (n + 1) - A055396 (n + 1))

end

end A243056.P10371388203081180834

namespace A243056

/-- `A049084(A006530(n+1))+A049084(n+1)-A055396(n+1)` -/
def P10371388203081180834.Spec : Prop :=
  ∀ n, P10371388203081180834.a n = A243056 (n + 1)

end A243056

/-! ## A243056.P4745694657517807085

`A055396(n+1)+A243055(n+1)-A055396(A052126(n+1))`
-/

namespace A243056.P4745694657517807085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1) + (A243055 (n + 1) - A055396 (A052126 (n + 1)).toNat)

end

end A243056.P4745694657517807085

namespace A243056

/-- `A055396(n+1)+A243055(n+1)-A055396(A052126(n+1))` -/
def P4745694657517807085.Spec : Prop :=
  ∀ n, P4745694657517807085.a n = A243056 (n + 1)

end A243056

/-! ## A243056.P16510958569190225769

`A339894(n+1)-(A339895(n+1)+A055396(A052126(n+1)))`
-/

namespace A243056.P16510958569190225769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339894 (n + 1) - (A339895 (n + 1) + A055396 (A052126 (n + 1)).toNat)

end

end A243056.P16510958569190225769

namespace A243056

/-- `A339894(n+1)-(A339895(n+1)+A055396(A052126(n+1)))` -/
def P16510958569190225769.Spec : Prop :=
  ∀ n, P16510958569190225769.a n = A243056 (n + 1)

end A243056

/-! ## A243056.P2542942709242399899

`A055396((n+1)/A052126(n+1))-A055396(A052126(n+1))`
-/

namespace A243056.P2542942709242399899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A052126 (n + 1) : ℚ))).toNat - A055396 (A052126 (n + 1)).toNat

end

end A243056.P2542942709242399899

namespace A243056

/-- `A055396((n+1)/A052126(n+1))-A055396(A052126(n+1))` -/
def P2542942709242399899.Spec : Prop :=
  ∀ n, P2542942709242399899.a n = A243056 (n + 1)

end A243056

/-! ## A243056.P16554504819932214488

`val(A181821(n+1), 2)-A055396(A052126(n+1))`
-/

namespace A243056.P16554504819932214488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A181821 (n + 1)).toNat 2 : ℤ) - A055396 (A052126 (n + 1)).toNat

end

end A243056.P16554504819932214488

namespace A243056

/-- `val(A181821(n+1), 2)-A055396(A052126(n+1))` -/
def P16554504819932214488.Spec : Prop :=
  ∀ n, P16554504819932214488.a n = A243056 (n + 1)

end A243056

/-!
# A243057: If n = p_a * p_b * ... * p_h * p_i * p_j * p_k, with p_a <= p_b <= ... <= p_k, then a(n) = p_{k-j} * p_{k-i} * p_{k-h} * ... * p_{k-a} * p_k, where p_{0} = 1 and for k>=1, p_{k} = A000040(k).

The programs for A243057, there is no canonical definition to state claims against.
-/

/-! ## A243057.P1022577877101546309

`A243059(A243074(n+1))`
-/

namespace A243057.P1022577877101546309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243059 (A243074 (n + 1)).toNat

end

end A243057.P1022577877101546309

/-! ## A243057.P451053631796418110

`A242420(or(char[2], A243074(n+1)))`
-/

namespace A243057.P451053631796418110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242420 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A243074 (n + 1))).toNat

end

end A243057.P451053631796418110

/-! ## A243057.P7992430048870543668

`A242420(gcd(n+1, A243074(n+1)))`
-/

namespace A243057.P7992430048870543668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242420 (Int.gcd (n + 1 : ℤ) (A243074 (n + 1)))

end

end A243057.P7992430048870543668

/-! ## A243057.P17140759588566441478

`A242420(n+1)/A032742(A053585(n+1))`
-/

namespace A243057.P17140759588566441478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242420 (n + 1) : ℚ) / (A032742 (A053585 (n + 1)).toNat : ℚ)

end

end A243057.P17140759588566441478

/-! ## A243057.P17165596969885306182

`A242420(A253560(n+1)/A053585(n+1))`
-/

namespace A243057.P17165596969885306182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242420 (SequenceMachineLib.roundAway ((A253560 (n + 1) : ℚ) / (A053585 (n + 1) : ℚ))).toNat

end

end A243057.P17165596969885306182

/-! ## A243057.P4405335852902487344

`A242420(A243074(n+1)%A070003(n+1))`
-/

namespace A243057.P4405335852902487344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242420 (Int.tmod (A243074 (n + 1)) (A070003 (n + 1))).toNat

end

end A243057.P4405335852902487344

/-! ## A243057.P2194434352948391726

`A242420((A318884(n+1)-A318886(n+1))*A051119(n+1))`
-/

namespace A243057.P2194434352948391726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242420 ((A318884 (n + 1) - A318886 (n + 1)) * A051119 (n + 1)).toNat

end

end A243057.P2194434352948391726

/-! ## A243057.P14749029482218395630

`A242420(n+1)/A032742(n+1)*A032742(A243074(n+1))`
-/

namespace A243057.P14749029482218395630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242420 (n + 1) : ℚ) / (A032742 (n + 1) : ℚ) * (A032742 (A243074 (n + 1)).toNat : ℚ)

end

end A243057.P14749029482218395630

/-! ## A243057.P6484952231510029866

`A242420((n+1)*(A318884(n+1)-A318886(n+1))/A053585(n+1))`
-/

namespace A243057.P6484952231510029866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242420 (SequenceMachineLib.roundAway (((n + 1 : ℤ) * (A318884 (n + 1) - A318886 (n + 1)) : ℚ) / (A053585 (n + 1) : ℚ))).toNat

end

end A243057.P6484952231510029866

/-! ## A243057.P6145697956104772386

`A242420(A032742(2*A243074(n+1)))`
-/

namespace A243057.P6145697956104772386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242420 (A032742 (2 * A243074 (n + 1)).toNat).toNat

end

end A243057.P6145697956104772386

/-! ## A243057.P4633906140333812981

`A242420((n+1)*(A051664(n+1)-A070536(n+1))/A053585(n+1))`
-/

namespace A243057.P4633906140333812981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242420 (SequenceMachineLib.roundAway (((n + 1 : ℤ) * (A051664 (n + 1) - A070536 (n + 1)) : ℚ) / (A053585 (n + 1) : ℚ))).toNat

end

end A243057.P4633906140333812981

/-! ## A243057.P15918989733853711448

`A006530(n+1)*A064989(A137502(n+1))`
-/

namespace A243057.P15918989733853711448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A064989 (A137502 (n + 1)).toNat

end

end A243057.P15918989733853711448

/-! ## A243057.P13741012918376104507

`A243074(A242420(n+1))`
-/

namespace A243057.P13741012918376104507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243074 (A242420 (n + 1)).toNat

end

end A243057.P13741012918376104507

/-!
# A243058: Fixed points of A243057 and A243059.

The programs for A243058, there is no canonical definition to state claims against.
-/

/-! ## A243058.P8968375643401006409

`eq[n, A243059(abs(1-n)+1)]`
-/

namespace A243058.P8968375643401006409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243059 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243058.P8968375643401006409

/-! ## A243058.P6531186100741737696

`eq[n+1, A243057(n+1)]+1`
-/

namespace A243058.P6531186100741737696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243057 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A243058.P6531186100741737696

/-! ## A243058.P11803664382140457306

`eq[n+1, A243059(n+1)]+1`
-/

namespace A243058.P11803664382140457306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243059 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A243058.P11803664382140457306

/-! ## A243058.P13088936077037655983

`record[A243057(A243068(n+1))]`
-/

namespace A243058.P13088936077037655983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243057 (A243068 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243058.P13088936077037655983

/-! ## A243058.P13178586191154114149

`A243057(record[n/(A243057(n+1)-n)]+1)`
-/

namespace A243058.P13178586191154114149
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A243057 (n + 1) - (n : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243057 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A243058.P13178586191154114149

/-!
# A243059: If n = p_a * p_b * ... * p_h * p_i * p_j * p_k, with p_a <= p_b <= ... <= p_k, then a(n) = p_{k-j} * p_{k-i} * p_{k-h} * ... * p_{k-a} * p_k, where p_{0} = 0 and for k>=1, p_{k} = A000040(k). a(1)=1 by convention.

The programs for A243059, there is no canonical definition to state claims against.
-/

/-! ## A243059.P7571619202241405124

`(1-A319988(n+1))*A243057(n+1)`
-/

namespace A243059.P7571619202241405124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A319988 (n + 1)) * A243057 (n + 1)

end

end A243059.P7571619202241405124

/-! ## A243059.P9667900717231266416

`lcm(A014026(A071178(n+1)), A243057(n+1))`
-/

namespace A243059.P9667900717231266416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014026 (A071178 (n + 1)).toNat) (A243057 (n + 1))

end

end A243059.P9667900717231266416

/-! ## A243059.P3013570709645996255

`and(A008683(A053585(n+1)), A243057(n+1))`
-/

namespace A243059.P3013570709645996255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008683 (A053585 (n + 1)).toNat) (A243057 (n + 1))

end

end A243059.P3013570709645996255

/-! ## A243059.P6267924321282110810

`and(A008683(A348044(n+1)), A243057(n+1))`
-/

namespace A243059.P6267924321282110810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008683 (A348044 (n + 1)).toNat) (A243057 (n + 1))

end

end A243059.P6267924321282110810

/-! ## A243059.P10421635364507477787

`(1-A319988(n+1))*A242420(n+1)`
-/

namespace A243059.P10421635364507477787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A319988 (n + 1)) * A242420 (n + 1)

end

end A243059.P10421635364507477787

/-! ## A243059.P11339778645457551214

`lcm(A008683(A053585(n+1)), A242420(n+1))`
-/

namespace A243059.P11339778645457551214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A053585 (n + 1)).toNat) (A242420 (n + 1))

end

end A243059.P11339778645457551214

/-! ## A243059.P1111019807303244826

`A243057(n+1)-A243057(n+1)%A242420(n+1)`
-/

namespace A243059.P1111019807303244826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243057 (n + 1) - Int.tmod (A243057 (n + 1)) (A242420 (n + 1))

end

end A243059.P1111019807303244826

/-! ## A243059.P11011009208611055132

`char[A243074(n+1)-1]*A242420(n+1)`
-/

namespace A243059.P11011009208611055132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243074 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A242420 (n + 1)

end

end A243059.P11011009208611055132

/-! ## A243059.P8789043156524957388

`A242420(n+1)%A129598(A243057(n+1))`
-/

namespace A243059.P8789043156524957388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242420 (n + 1)) (A129598 (A243057 (n + 1)).toNat)

end

end A243059.P8789043156524957388

/-!
# A243060: Square array read by antidiagonals: rows are successively recursivized versions of Bulgarian solitaire operation (starting from the usual "first order" version, A243051), as applied to partitions listed in A241918.

The programs for A243060, there is no canonical definition to state claims against.
-/

/-! ## A243060.P6787655667724045380

`A243051(A004736(n+1)%A337670(2*n+1))`
-/

namespace A243060.P6787655667724045380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243051 (Int.tmod (A004736 (n + 1)) (A337670 (2 * n + 1))).toNat

end

end A243060.P6787655667724045380

/-! ## A243060.P786555398583148558

`A243051(A004736(n+1))%A333228(3*n+4)`
-/

namespace A243060.P786555398583148558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243051 (A004736 (n + 1)).toNat) (A333228 (3 * n + 4))

end

end A243060.P786555398583148558

/-! ## A243060.P4296214777900749462

`A107897(A081362(A130321(n))+2)`
-/

namespace A243060.P4296214777900749462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107897 (A081362 (A130321 n).toNat + 2).toNat

end

end A243060.P4296214777900749462

/-! ## A243060.P290405359144434296

`A243051(A004736(n+1)%A157478(n+1))`
-/

namespace A243060.P290405359144434296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243051 (Int.tmod (A004736 (n + 1)) (A157478 (n + 1))).toNat

end

end A243060.P290405359144434296

/-! ## A243060.P10415279120519953622

`A326972(C(comp[∑[n]]-n, 2)-(n+1))%17`
-/

namespace A243060.P10415279120519953622
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326972 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))) 17

end

end A243060.P10415279120519953622

/-!
# A243061: Permutation of natural numbers, a composition of A241909 and A064216: a(n) = A064216(A241909(n)).

The programs for A243061, there is no canonical definition to state claims against.
-/

/-! ## A243061.P17271212997168480121

`A064216(A241909(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243061.P17271212997168480121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A241909 (n + 1)).toNat

end

end A243061.P17271212997168480121

/-! ## A243061.P477134921515149984

`A243502(A241909(n+1)+log2(1/2)+1)/2`
-/

namespace A243061.P477134921515149984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243502 (SequenceMachineLib.roundAway ((A241909 (n + 1) : ℝ) + Real.logb 2 ((1 : ℚ) / 2 : ℝ) + 1)).toNat : ℚ) / 2

end

end A243061.P477134921515149984

/-! ## A243061.P4558157761492241179

`A064216(A243065(A048673(n+1)))`
-/

namespace A243061.P4558157761492241179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A243065 (A048673 (n + 1)).toNat).toNat

end

end A243061.P4558157761492241179

/-! ## A243061.P8878081244598657401

`A064216(A243062(A064216(n+1)))`
-/

namespace A243061.P8878081244598657401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A243062 (A064216 (n + 1)).toNat).toNat

end

end A243061.P8878081244598657401

/-! ## A243061.P6315908747897870463

`A064216(A243065(A244154(A156552(n+1))))`
-/

namespace A243061.P6315908747897870463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A243065 (A244154 (A156552 (n + 1)).toNat).toNat).toNat

end

end A243061.P6315908747897870463

/-!
# A243062: Permutation of natural numbers, a composition of A048673 and A241909: a(n) = A241909(A048673(n)).

The programs for A243062, there is no canonical definition to state claims against.
-/

/-! ## A243062.P11810224446265314966

`A241909(A048673(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243062.P11810224446265314966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (A048673 (n + 1)).toNat

end

end A243062.P11810224446265314966

/-! ## A243062.P7169321878596044616

`A241909(A243066(A241909(n+1)))`
-/

namespace A243062.P7169321878596044616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (A243066 (A241909 (n + 1)).toNat).toNat

end

end A243062.P7169321878596044616

/-! ## A243062.P17587584746532539900

`A241909(A108228(n+1)+1)`
-/

namespace A243062.P17587584746532539900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (A108228 (n + 1) + 1).toNat

end

end A243062.P17587584746532539900

/-! ## A243062.P5155676594716146973

`A241909(A253885(n)/2+1)`
-/

namespace A243062.P5155676594716146973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (SequenceMachineLib.roundAway ((A253885 n : ℚ) / 2 + 1)).toNat

end

end A243062.P5155676594716146973

/-! ## A243062.P12281043252863123638

`A241909((A003961(n+1)+1)/2)`
-/

namespace A243062.P12281043252863123638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (SequenceMachineLib.roundAway ((A003961 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A243062.P12281043252863123638

/-! ## A243062.P8453853331238900338

`A241909(A008619(A003961(n+1)))`
-/

namespace A243062.P8453853331238900338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (A008619 (A003961 (n + 1)).toNat).toNat

end

end A243062.P8453853331238900338

/-! ## A243062.P4305364390860742946

`A241909(A245608(A245605(n+1)))`
-/

namespace A243062.P4305364390860742946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (A245608 (A245605 (n + 1)).toNat).toNat

end

end A243062.P4305364390860742946

/-! ## A243062.P4275263975888441470

`A243065(A245447(n+1))`
-/

namespace A243062.P4275263975888441470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243065 (A245447 (n + 1)).toNat

end

end A243062.P4275263975888441470

/-!
# A243063: Numbers generated by a Fibonacci-like sequence in which zeros are suppressed.

The programs for A243063, there is no canonical definition to state claims against.
-/

/-! ## A243063.P16587686687136548062

`A004719(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A243063.P16587686687136548062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A004719 (a (n - 1) + a (n - 2)).toNat

end

end A243063.P16587686687136548062

/-!
# A243064: Numbers n such that k*n/(k+n) and k*n/(k-n) are integers for only one k > 0.

The programs for A243064, there is no canonical definition to state claims against.
-/

/-! ## A243064.P1168171873901360052

`eq[1, A243046(n+1)]+1`
-/

namespace A243064.P1168171873901360052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243046 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A243064.P1168171873901360052

/-! ## A243064.P11022846568411946337

`eq[1, A243046(A028310(n))]`
-/

namespace A243064.P11022846568411946337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243046 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243064.P11022846568411946337

/-! ## A243064.P5882683645790713107

`A020725(eq[1, A243046(n+1)])`
-/

namespace A243064.P5882683645790713107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243064.P5882683645790713107

/-! ## A243064.P13404086352617409549

`A065475(eq[1, A243046(n+1)])`
-/

namespace A243064.P13404086352617409549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243064.P13404086352617409549

/-! ## A243064.P18381202262857141749

`eq[1, A243046(A233583(n+1))]`
-/

namespace A243064.P18381202262857141749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243046 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243064.P18381202262857141749

/-!
# A243065: Permutation of natural numbers, the odd bisection of A241909 halved; equally, a composition of A064216 and A241909: a(n) = A241909(A064216(n)).

The programs for A243065, there is no canonical definition to state claims against.
-/

/-! ## A243065.P14235896292160912592

`ceil(A241909(2*(n+1)-1)/2)`
-/

namespace A243065.P14235896292160912592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A241909 (2 * (n + 1) - 1) : ℚ) / 2⌉

end

end A243065.P14235896292160912592

/-! ## A243065.P2618626461611119015

`A241909(A064216(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243065.P2618626461611119015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (A064216 (n + 1)).toNat

end

end A243065.P2618626461611119015

/-! ## A243065.P6228411764362157238

`A241909(A243061(A241909(n+1)))`
-/

namespace A243065.P6228411764362157238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (A243061 (A241909 (n + 1)).toNat).toNat

end

end A243065.P6228411764362157238

/-! ## A243065.P5857702453657257382

`A241909(A064989(2*n+1))`
-/

namespace A243065.P5857702453657257382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (A064989 (2 * n + 1)).toNat

end

end A243065.P5857702453657257382

/-! ## A243065.P13557930924069909534

`A241909(A243502(n+1)/2)`
-/

namespace A243065.P13557930924069909534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (SequenceMachineLib.roundAway ((A243502 (n + 1) : ℚ) / 2)).toNat

end

end A243065.P13557930924069909534

/-! ## A243065.P1143504684722935620

`A241909(A004280(n+2))/2`
-/

namespace A243065.P1143504684722935620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241909 (A004280 (n + 2)).toNat : ℚ) / 2

end

end A243065.P1143504684722935620

/-! ## A243065.P4330646274910093478

`A241909(2*n+1)/A130130(n+1)`
-/

namespace A243065.P4330646274910093478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241909 (2 * n + 1) : ℚ) / (A130130 (n + 1) : ℚ)

end

end A243065.P4330646274910093478

/-! ## A243065.P4120986891471400033

`(A241909(2*n+1)+A000007(n))/2`
-/

namespace A243065.P4120986891471400033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241909 (2 * n + 1) + A000007 n : ℚ) / 2

end

end A243065.P4120986891471400033

/-! ## A243065.P11861669019747724886

`(A241909(2*n+1)+A010051(2*(n+1)))/2`
-/

namespace A243065.P11861669019747724886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241909 (2 * n + 1) + A010051 (2 * (n + 1)) : ℚ) / 2

end

end A243065.P11861669019747724886

/-! ## A243065.P15258501885124046911

`(A241909(2*n+1)+A049084(2*(n+1)))/2`
-/

namespace A243065.P15258501885124046911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241909 (2 * n + 1) + A049084 (2 * (n + 1)) : ℚ) / 2

end

end A243065.P15258501885124046911

/-! ## A243065.P6297320651966380074

`A241909(2*n+1)*A286477(2*(n+1))/2`
-/

namespace A243065.P6297320651966380074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241909 (2 * n + 1) * A286477 (2 * (n + 1)) : ℚ) / 2

end

end A243065.P6297320651966380074

/-! ## A243065.P17398974699759766159

`A241909(2*n+1)/gcd(2, A071364(2*n+1))`
-/

namespace A243065.P17398974699759766159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241909 (2 * n + 1) : ℚ) / (Int.gcd 2 (A071364 (2 * n + 1)) : ℚ)

end

end A243065.P17398974699759766159

/-! ## A243065.P5790435784816722126

`A241909(A292245(n+1)+A292244(n+1))`
-/

namespace A243065.P5790435784816722126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (A292245 (n + 1) + A292244 (n + 1)).toNat

end

end A243065.P5790435784816722126

/-! ## A243065.P16332930829183358002

`A241909(2*n+1)/A105560(A105560(2*n+1))`
-/

namespace A243065.P16332930829183358002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241909 (2 * n + 1) : ℚ) / (A105560 (A105560 (2 * n + 1)).toNat : ℚ)

end

end A243065.P16332930829183358002

/-! ## A243065.P9646969510486607363

`A241909(2*n+1)/A163511(4*n)*A163511(2*n)`
-/

namespace A243065.P9646969510486607363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241909 (2 * n + 1) : ℚ) / (A163511 (4 * n) : ℚ) * (A163511 (2 * n) : ℚ)

end

end A243065.P9646969510486607363

/-! ## A243065.P2837392686741822591

`A241909(A249818(A250470(A249817(2*n+1))))`
-/

namespace A243065.P2837392686741822591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (A249818 (A250470 (A249817 (2 * n + 1)).toNat).toNat).toNat

end

end A243065.P2837392686741822591

/-! ## A243065.P16415481003389446206

`A279356(A250470(2*(2*n+1)))`
-/

namespace A243065.P16415481003389446206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279356 (A250470 (2 * (2 * n + 1))).toNat

end

end A243065.P16415481003389446206

/-! ## A243065.P567957825439989807

`A279356(A249817(A064989(n+1+n)))`
-/

namespace A243065.P567957825439989807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279356 (A249817 (A064989 (n + 1 + n)).toNat).toNat

end

end A243065.P567957825439989807

/-! ## A243065.P883402349007968677

`A241909(2*n+1)/gcd(2, A000079(n)²)`
-/

namespace A243065.P883402349007968677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241909 (2 * n + 1) : ℚ) / (Int.gcd 2 (A000079 n ^ 2) : ℚ)

end

end A243065.P883402349007968677

/-! ## A243065.P13866075246674176907

`A241909(2*n+1)/A011782(n+1)²*A011782(2*n)`
-/

namespace A243065.P13866075246674176907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241909 (2 * n + 1) : ℚ) / (A011782 (n + 1) ^ 2 : ℚ) * (A011782 (2 * n) : ℚ)

end

end A243065.P13866075246674176907

/-!
# A243066: Permutation of natural numbers, the even bisection of A241909 incremented by one and halved; equally, a composition of A241909 and A048673: a(n) = A048673(A241909(n)).

The programs for A243066, there is no canonical definition to state claims against.
-/

/-! ## A243066.P16728535736613865606

`A048673(A241909(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243066.P16728535736613865606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A241909 (n + 1)).toNat

end

end A243066.P16728535736613865606

/-! ## A243066.P12262303478008063952

`ceil(A241909(2*(n+1))/2)`
-/

namespace A243066.P12262303478008063952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A241909 (2 * (n + 1)) : ℚ) / 2⌉

end

end A243066.P12262303478008063952

/-! ## A243066.P16607134442256003596

`round(A331732(2*(n+1))/2)`
-/

namespace A243066.P16607134442256003596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A331732 (2 * (n + 1)) : ℚ) / 2)

end

end A243066.P16607134442256003596

/-! ## A243066.P6886137670089450745

`round(A241909(2*n+2)/2)`
-/

namespace A243066.P6886137670089450745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A241909 (2 * n + 2) : ℚ) / 2)

end

end A243066.P6886137670089450745

/-! ## A243066.P15332077052765744647

`(A331732(2*n+2)+1)/2`
-/

namespace A243066.P15332077052765744647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331732 (2 * n + 2) + 1 : ℚ) / 2

end

end A243066.P15332077052765744647

/-! ## A243066.P9193982169787695925

`ceil(A279356(2*(n+1))/2)`
-/

namespace A243066.P9193982169787695925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A279356 (2 * (n + 1)) : ℚ) / 2⌉

end

end A243066.P9193982169787695925

/-! ## A243066.P8963048335880492794

`round(A279356(2*n+2)/2)`
-/

namespace A243066.P8963048335880492794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A279356 (2 * n + 2) : ℚ) / 2)

end

end A243066.P8963048335880492794

/-!
# A243067: Integers from 0 to A000120(n)-1 followed by integers from 0 to A000120(n+1)-1 and so on, starting with n=1.

The programs for A243067, the canonical program `A243067.P1645064430872176748` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243067 has offset 1).

The definition of A243067 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, A100922, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A243067.P1645064430872176748

`n+1-(1+A000788(A100922(n)-1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A243067

/-- `n+1-(1+A000788(A100922(n)-1))` -/
def P1645064430872176748.Spec : Prop :=
  ∀ n, P1645064430872176748.a n = A243067 (n + 1)

theorem P1645064430872176748.correct : P1645064430872176748.Spec := by
  intro n
  simp only [A243067, Nat.add_sub_cancel]

end A243067

/-! ## A243067.P1497729648629485247

`A002262(eq[0, A089052(n)])`
-/

namespace A243067.P1497729648629485247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243067.P1497729648629485247

namespace A243067

/-- `A002262(eq[0, A089052(n)])` -/
def P1497729648629485247.Spec : Prop :=
  ∀ n, P1497729648629485247.a n = A243067 (n + 1)

end A243067

/-! ## A243067.P13345808681528238123

`A004197(eq[0, A089052(n)])`
-/

namespace A243067.P13345808681528238123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243067.P13345808681528238123

namespace A243067

/-- `A004197(eq[0, A089052(n)])` -/
def P13345808681528238123.Spec : Prop :=
  ∀ n, P13345808681528238123.a n = A243067 (n + 1)

end A243067

/-! ## A243067.P4626840587011917802

`A000120(val(record[A276618(n)], 2))`
-/

namespace A243067.P4626840587011917802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2)

end

end A243067.P4626840587011917802

namespace A243067

/-- `A000120(val(record[A276618(n)], 2))` -/
def P4626840587011917802.Spec : Prop :=
  ∀ n, P4626840587011917802.a n = A243067 (n + 1)

end A243067

/-! ## A243067.P15024941204050893490

`A207328(val(record[A276618(n)], 2))`
-/

namespace A243067.P15024941204050893490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207328 (SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2)

end

end A243067.P15024941204050893490

namespace A243067

/-- `A207328(val(record[A276618(n)], 2))` -/
def P15024941204050893490.Spec : Prop :=
  ∀ n, P15024941204050893490.a n = A243067 (n + 1)

end A243067

/-! ## A243067.P8621245360042012974

`A002262(record[gcd(n, A089052(n))])`
-/

namespace A243067.P8621245360042012974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A089052 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A243067.P8621245360042012974

namespace A243067

/-- `A002262(record[gcd(n, A089052(n))])` -/
def P8621245360042012974.Spec : Prop :=
  ∀ n, P8621245360042012974.a n = A243067 (n + 1)

end A243067

/-! ## A243067.P4741052087000171941

`n-A000788(A100922(n)-1)`
-/

namespace A243067.P4741052087000171941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000788 (A100922 n - 1).toNat

end

end A243067.P4741052087000171941

namespace A243067

/-- `n-A000788(A100922(n)-1)` -/
def P4741052087000171941.Spec : Prop :=
  ∀ n, P4741052087000171941.a n = A243067 (n + 1)

theorem P4741052087000171941.correct : P4741052087000171941.Spec := by
  intro n
  simp only [A243067, Nat.add_sub_cancel, A243067.P4741052087000171941.a, A243067.P1645064430872176748.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A243067

/-! ## A243067.P8425330885680116835

`n-A000788(∑[char[A000788(n+1)]])`
-/

namespace A243067.P8425330885680116835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000788 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A243067.P8425330885680116835

namespace A243067

/-- `n-A000788(∑[char[A000788(n+1)]])` -/
def P8425330885680116835.Spec : Prop :=
  ∀ n, P8425330885680116835.a n = A243067 (n + 1)

end A243067

/-! ## A243067.P13666920355664435630

`A095684(A030303(n+1))-1`
-/

namespace A243067.P13666920355664435630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095684 (A030303 (n + 1)).toNat - 1

end

end A243067.P13666920355664435630

namespace A243067

/-- `A095684(A030303(n+1))-1` -/
def P13666920355664435630.Spec : Prop :=
  ∀ n, P13666920355664435630.a n = A243067 (n + 1)

end A243067

/-! ## A243067.P12942773658285436213

`A095684(∑[A066099(n+1)])-1`
-/

namespace A243067.P12942773658285436213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095684 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A243067.P12942773658285436213

namespace A243067

/-- `A095684(∑[A066099(n+1)])-1` -/
def P12942773658285436213.Spec : Prop :=
  ∀ n, P12942773658285436213.a n = A243067 (n + 1)

end A243067

/-!
# A243068: Fixed points of A242420.

The programs for A243068, there is no canonical definition to state claims against.
-/

/-! ## A243068.P10907724195950987534

`eq[n+1, A006530(n+1)^(A071178(n+1)-1)*A243057(n+1)]+1`
-/

namespace A243068.P10907724195950987534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) : ℚ) ^ (A071178 (n + 1) - 1 : ℤ) * (A243057 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1

end

end A243068.P10907724195950987534

/-! ## A243068.P7287018700938269257

`record[gcd(n+1, A242420(n+1))]`
-/

namespace A243068.P7287018700938269257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A242420 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243068.P7287018700938269257

/-! ## A243068.P1519759870666555838

`eq[n, A242420(A028310(n))]`
-/

namespace A243068.P1519759870666555838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242420 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243068.P1519759870666555838

/-! ## A243068.P17398688965860024111

`eq[n, A242420(A000007(n)+n)]`
-/

namespace A243068.P17398688965860024111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242420 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243068.P17398688965860024111

/-! ## A243068.P3918080724504190134

`eq[n, A242420(A004273(n)+1-n)]`
-/

namespace A243068.P3918080724504190134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242420 (A004273 n + (1 - (n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243068.P3918080724504190134

/-! ## A243068.P5223943844167477545

`eq[n, A242420(1-(n-A004273(n)))]`
-/

namespace A243068.P5223943844167477545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242420 (1 - ((n : ℤ) - A004273 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243068.P5223943844167477545

/-! ## A243068.P15573464402402929612

`eq[A105119(n+1), A242419(n+1)]+1`
-/

namespace A243068.P15573464402402929612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242419 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A243068.P15573464402402929612

/-! ## A243068.P7649012978505369562

`A242420(record[(A242420(n+1)-1)%(n+1)]+1)`
-/

namespace A243068.P7649012978505369562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242420 (n + 1) - 1) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242420 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A243068.P7649012978505369562

/-! ## A243068.P11017409143502964666

`eq[A243057(n+1), A243057(A243057(n+1))]+1`
-/

namespace A243068.P11017409143502964666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243057 (A243057 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A243068.P11017409143502964666

/-!
# A243069: a(n) = smallest natural number that has not yet occurred among the first n terms of A126917.

The programs for A243069, there is no canonical definition to state claims against.
-/

/-! ## A243069.P6436266553236231094

`A243498(A036234(n+1))`
-/

namespace A243069.P6436266553236231094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243498 (A036234 (n + 1)).toNat

end

end A243069.P6436266553236231094

/-! ## A243069.P6181266916405475211

`A243498(A000720(n+1)+1)`
-/

namespace A243069.P6181266916405475211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243498 (A000720 (n + 1) + 1).toNat

end

end A243069.P6181266916405475211

/-! ## A243069.P7365155110952457436

`A243498(A230980(n+1)+1)`
-/

namespace A243069.P7365155110952457436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243498 (A230980 (n + 1) + 1).toNat

end

end A243069.P7365155110952457436

/-! ## A243069.P16383594408602089477

`A126917(n+2)-A243488(n+1)`
-/

namespace A243069.P16383594408602089477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126917 (n + 2) - A243488 (n + 1)

end

end A243069.P16383594408602089477

/-! ## A243069.P8610983495000884023

`A126917(A151800(n+1))`
-/

namespace A243069.P8610983495000884023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126917 (A151800 (n + 1)).toNat

end

end A243069.P8610983495000884023

/-! ## A243069.P12681757834357232996

`A126917(A159477(n+2))`
-/

namespace A243069.P12681757834357232996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126917 (A159477 (n + 2)).toNat

end

end A243069.P12681757834357232996

/-!
# A243070: Square array read by antidiagonals: rows are successively recursivized versions of Bulgarian solitaire operation (starting from the usual "first order" version, A242424), as applied to the partitions listed in A112798.

The programs for A243070, there is no canonical definition to state claims against.
-/

/-! ## A243070.P1841218429337959145

`A301977(A099375(n))-A301979(A014761(n+1))`
-/

namespace A243070.P1841218429337959145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301977 (A099375 n).toNat - A301979 (A014761 (n + 1)).toNat

end

end A243070.P1841218429337959145

/-! ## A243070.P8538279246398884523

`A357171(A337470(n))`
-/

namespace A243070.P8538279246398884523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357171 (A337470 n).toNat

end

end A243070.P8538279246398884523

/-! ## A243070.P4679827250202468731

`A235451(A025581(n)%A272925(n))`
-/

namespace A243070.P4679827250202468731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235451 (Int.tmod (A025581 n) (A272925 n)).toNat

end

end A243070.P4679827250202468731

/-! ## A243070.P2383322256876911699

`A000120(lcm(A054335(n), A134083(n)))`
-/

namespace A243070.P2383322256876911699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lcm (A054335 n) (A134083 n))

end

end A243070.P2383322256876911699

/-! ## A243070.P8565999819630352835

`A243220(A099375(n))%p?[A007318(n)]`
-/

namespace A243070.P8565999819630352835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243220 (A099375 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A243070.P8565999819630352835

/-!
# A243071: Permutation of nonnegative integers: a(1) = 0, a(2) = 1, a(2n) = 2*a(n), a(2n+1) = 1 + 2*a(A064989(2n+1)).

The programs for A243071, the canonical program `A243071.P12484383641158862297` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243071 has offset 1).

The definition of A243071 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, A253566, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A243071.P12439198397174667291

`A292383(n+1)+A292385(n+1)`
-/

namespace A243071.P12439198397174667291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292383 (n + 1) + A292385 (n + 1)

end

end A243071.P12439198397174667291

namespace A243071

/-- `A292383(n+1)+A292385(n+1)` -/
def P12439198397174667291.Spec : Prop :=
  ∀ n, P12439198397174667291.a n = A243071 (n + 1)

end A243071

/-! ## A243071.P15117329767700122386

`A245611(A048673(n+1))`
-/

namespace A243071.P15117329767700122386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245611 (A048673 (n + 1)).toNat

end

end A243071.P15117329767700122386

namespace A243071

/-- `A245611(A048673(n+1))` -/
def P15117329767700122386.Spec : Prop :=
  ∀ n, P15117329767700122386.a n = A243071 (n + 1)

end A243071

/-! ## A243071.P12484383641158862297

`A253566(A122111(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A243071

/-- `A253566(A122111(n+1))` -/
def P12484383641158862297.Spec : Prop :=
  ∀ n, P12484383641158862297.a n = A243071 (n + 1)

theorem P12484383641158862297.correct : P12484383641158862297.Spec := by
  intro n
  simp only [A243071, Nat.add_sub_cancel]

end A243071

/-! ## A243071.P7337171006807451086

`∑{d}[n+1, A297171(#)]`
-/

namespace A243071.P7337171006807451086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A297171 d

end

end A243071.P7337171006807451086

namespace A243071

/-- `∑{d}[n+1, A297171(#)]` -/
def P7337171006807451086.Spec : Prop :=
  ∀ n, P7337171006807451086.a n = A243071 (n + 1)

end A243071

/-! ## A243071.P7779621714103276125

`1-A364288(n+1)+n`
-/

namespace A243071.P7779621714103276125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A364288 (n + 1) + (n : ℤ)

end

end A243071.P7779621714103276125

namespace A243071

/-- `1-A364288(n+1)+n` -/
def P7779621714103276125.Spec : Prop :=
  ∀ n, P7779621714103276125.a n = A243071 (n + 1)

theorem P7779621714103276125.correct : P7779621714103276125.Spec := by
  intro n
  simp only [A243071, Nat.add_sub_cancel, A243071.P7779621714103276125.a, A243071.P12484383641158862297.a, A122111, A122111.P18124015185857335041.a, A253566, A253566.P9103107584596957047.a, A364288, A364288.P15840264217698276728.a, A055010, A055010.P5809687151668349460.a, A064989, A064989.P13349672914146769936.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A252464, A252464.P11274602121942962009.a, A253564, A253564.P2152431909121566970.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A156552, A156552.P4268073137713085227.a, A252736, A252736.P2865412191134230649.f1, A252736.P2865412191134230649.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A006530, A006530.P13372528560459906635.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A243071

/-! ## A243071.P2763495795717795527

`A292943(n+1)+A292263(n+1)`
-/

namespace A243071.P2763495795717795527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292943 (n + 1) + A292263 (n + 1)

end

end A243071.P2763495795717795527

namespace A243071

/-- `A292943(n+1)+A292263(n+1)` -/
def P2763495795717795527.Spec : Prop :=
  ∀ n, P2763495795717795527.a n = A243071 (n + 1)

end A243071

/-! ## A243071.P3200712015750118279

`A292253(n+1)+A292943(n+1)+A292255(n+1)`
-/

namespace A243071.P3200712015750118279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292253 (n + 1) + (A292943 (n + 1) + A292255 (n + 1))

end

end A243071.P3200712015750118279

namespace A243071

/-- `A292253(n+1)+A292943(n+1)+A292255(n+1)` -/
def P3200712015750118279.Spec : Prop :=
  ∀ n, P3200712015750118279.a n = A243071 (n + 1)

end A243071

/-! ## A243071.P15437962384268896666

`A292941(n+1)+A292945(n+1)+A292943(n+1)`
-/

namespace A243071.P15437962384268896666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292941 (n + 1) + (A292945 (n + 1) + A292943 (n + 1))

end

end A243071.P15437962384268896666

namespace A243071

/-- `A292941(n+1)+A292945(n+1)+A292943(n+1)` -/
def P15437962384268896666.Spec : Prop :=
  ∀ n, P15437962384268896666.a n = A243071 (n + 1)

end A243071

/-! ## A243071.P15974296654446477556

`A332811(A108548(n+1))`
-/

namespace A243071.P15974296654446477556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332811 (A108548 (n + 1)).toNat

end

end A243071.P15974296654446477556

namespace A243071

/-- `A332811(A108548(n+1))` -/
def P15974296654446477556.Spec : Prop :=
  ∀ n, P15974296654446477556.a n = A243071 (n + 1)

end A243071

/-! ## A243071.P17489146767328637515

`A253564(n+1)+A253566(n+1)-A156552(n+1)`
-/

namespace A243071.P17489146767328637515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253564 (n + 1) + (A253566 (n + 1) - A156552 (n + 1))

end

end A243071.P17489146767328637515

namespace A243071

/-- `A253564(n+1)+A253566(n+1)-A156552(n+1)` -/
def P17489146767328637515.Spec : Prop :=
  ∀ n, P17489146767328637515.a n = A243071 (n + 1)

end A243071

/-! ## A243071.P12983222992465616238

`A305428(A091202(n+1))`
-/

namespace A243071.P12983222992465616238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305428 (A091202 (n + 1)).toNat

end

end A243071.P12983222992465616238

namespace A243071

/-- `A305428(A091202(n+1))` -/
def P12983222992465616238.Spec : Prop :=
  ∀ n, P12983222992465616238.a n = A243071 (n + 1)

end A243071

/-! ## A243071.P1849495215165113572

`A252756(A250245(n+1))`
-/

namespace A243071.P1849495215165113572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252756 (A250245 (n + 1)).toNat

end

end A243071.P1849495215165113572

namespace A243071

/-- `A252756(A250245(n+1))` -/
def P1849495215165113572.Spec : Prop :=
  ∀ n, P1849495215165113572.a n = A243071 (n + 1)

end A243071

/-! ## A243071.P4291353322500940318

`A252756(A269172(A302025(n+1)))`
-/

namespace A243071.P4291353322500940318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252756 (A269172 (A302025 (n + 1)).toNat).toNat

end

end A243071.P4291353322500940318

namespace A243071

/-- `A252756(A269172(A302025(n+1)))` -/
def P4291353322500940318.Spec : Prop :=
  ∀ n, P4291353322500940318.a n = A243071 (n + 1)

end A243071

/-! ## A243071.P7101445787465493958

`A269386(A302025(n+1))`
-/

namespace A243071.P7101445787465493958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269386 (A302025 (n + 1)).toNat

end

end A243071.P7101445787465493958

namespace A243071

/-- `A269386(A302025(n+1))` -/
def P7101445787465493958.Spec : Prop :=
  ∀ n, P7101445787465493958.a n = A243071 (n + 1)

end A243071

/-! ## A243071.P11338414524212024859

`A245611(A243501(n+1)/2)`
-/

namespace A243071.P11338414524212024859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245611 (SequenceMachineLib.roundAway ((A243501 (n + 1) : ℚ) / 2)).toNat

end

end A243071.P11338414524212024859

namespace A243071

/-- `A245611(A243501(n+1)/2)` -/
def P11338414524212024859.Spec : Prop :=
  ∀ n, P11338414524212024859.a n = A243071 (n + 1)

end A243071

/-! ## A243071.P1987779636459345687

`A245611(A245608(A245605(n+1)))`
-/

namespace A243071.P1987779636459345687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245611 (A245608 (A245605 (n + 1)).toNat).toNat

end

end A243071.P1987779636459345687

namespace A243071

/-- `A245611(A245608(A245605(n+1)))` -/
def P1987779636459345687.Spec : Prop :=
  ∀ n, P1987779636459345687.a n = A243071 (n + 1)

end A243071

/-! ## A243071.P7587834076033229408

`A245611(A249745(A249824(n+1)))`
-/

namespace A243071.P7587834076033229408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245611 (A249745 (A249824 (n + 1)).toNat).toNat

end

end A243071.P7587834076033229408

namespace A243071

/-- `A245611(A249745(A249824(n+1)))` -/
def P7587834076033229408.Spec : Prop :=
  ∀ n, P7587834076033229408.a n = A243071 (n + 1)

end A243071

/-!
# A243072: Second order Bulgarian solitaire operation on partition list A112798: a(1) = 1, a(n) = A000040(A001222(n)) * A242424(A064989(n)).

The programs for A243072, the canonical program `A243072.P790148207207199720` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243072 has offset 1).

The definition of A243072 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, A105560, A242424, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A243072.P790148207207199720

`A105560(n+1)*A242424(A064989(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A243072

/-- `A105560(n+1)*A242424(A064989(n+1))` -/
def P790148207207199720.Spec : Prop :=
  ∀ n, P790148207207199720.a n = A243072 (n + 1)

theorem P790148207207199720.correct : P790148207207199720.Spec := by
  intro n
  simp only [A243072, Nat.add_sub_cancel]

end A243072

/-! ## A243072.P5108750754787893435

`A241909(A243052(A241909(n+1)))`
-/

namespace A243072.P5108750754787893435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (A243052 (A241909 (n + 1)).toNat).toNat

end

end A243072.P5108750754787893435

namespace A243072

/-- `A241909(A243052(A241909(n+1)))` -/
def P5108750754787893435.Spec : Prop :=
  ∀ n, P5108750754787893435.a n = A243072 (n + 1)

end A243072

/-! ## A243072.P4266659164563897634

`A105560(n+1)*A242424(abs(A290099(n+1)))`
-/

namespace A243072.P4266659164563897634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (n + 1) * A242424 |A290099 (n + 1)|.toNat

end

end A243072.P4266659164563897634

namespace A243072

/-- `A105560(n+1)*A242424(abs(A290099(n+1)))` -/
def P4266659164563897634.Spec : Prop :=
  ∀ n, P4266659164563897634.a n = A243072 (n + 1)

end A243072

/-! ## A243072.P2817370582481718398

`A008578(A073093(n+1))*A242424(A064989(n+1))`
-/

namespace A243072.P2817370582481718398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A073093 (n + 1)).toNat * A242424 (A064989 (n + 1)).toNat

end

end A243072.P2817370582481718398

namespace A243072

/-- `A008578(A073093(n+1))*A242424(A064989(n+1))` -/
def P2817370582481718398.Spec : Prop :=
  ∀ n, P2817370582481718398.a n = A243072 (n + 1)

end A243072

/-! ## A243072.P4641800851488623309

`A005180(A001222(n+1)+1)*A242424(A064989(n+1))`
-/

namespace A243072.P4641800851488623309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (A001222 (n + 1) + 1).toNat * A242424 (A064989 (n + 1)).toNat

end

end A243072.P4641800851488623309

namespace A243072

/-- `A005180(A001222(n+1)+1)*A242424(A064989(n+1))` -/
def P4641800851488623309.Spec : Prop :=
  ∀ n, P4641800851488623309.a n = A243072 (n + 1)

end A243072

/-! ## A243072.P2575515576696810964

`A008578(A001222(n+1)+1)*A242424(A064989(n+1))`
-/

namespace A243072.P2575515576696810964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A001222 (n + 1) + 1).toNat * A242424 (A064989 (n + 1)).toNat

end

end A243072.P2575515576696810964

namespace A243072

/-- `A008578(A001222(n+1)+1)*A242424(A064989(n+1))` -/
def P2575515576696810964.Spec : Prop :=
  ∀ n, P2575515576696810964.a n = A243072 (n + 1)

end A243072

/-! ## A243072.P12365372478992361643

`A105560(n+1)*A242424(A290099(n+1)*A309873(n+1))`
-/

namespace A243072.P12365372478992361643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (n + 1) * A242424 (A290099 (n + 1) * A309873 (n + 1)).toNat

end

end A243072.P12365372478992361643

namespace A243072

/-- `A105560(n+1)*A242424(A290099(n+1)*A309873(n+1))` -/
def P12365372478992361643.Spec : Prop :=
  ∀ n, P12365372478992361643.a n = A243072 (n + 1)

end A243072

/-! ## A243072.P14910735004125229014

`A242424(A064989(n+1))/A064989(n+1)*A242424(n+1)`
-/

namespace A243072.P14910735004125229014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242424 (A064989 (n + 1)).toNat : ℚ) / (A064989 (n + 1) : ℚ) * (A242424 (n + 1) : ℚ)

end

end A243072.P14910735004125229014

namespace A243072

/-- `A242424(A064989(n+1))/A064989(n+1)*A242424(n+1)` -/
def P14910735004125229014.Spec : Prop :=
  ∀ n, P14910735004125229014.a n = (A243072 (n + 1) : ℚ)

end A243072

/-! ## A243072.P16154898932808651458

`A105560(n+1)*A242424(A242424(n+1)/A105560(n+1))`
-/

namespace A243072.P16154898932808651458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (n + 1) * A242424 (SequenceMachineLib.roundAway ((A242424 (n + 1) : ℚ) / (A105560 (n + 1) : ℚ))).toNat

end

end A243072.P16154898932808651458

namespace A243072

/-- `A105560(n+1)*A242424(A242424(n+1)/A105560(n+1))` -/
def P16154898932808651458.Spec : Prop :=
  ∀ n, P16154898932808651458.a n = A243072 (n + 1)

end A243072

/-! ## A243072.P298747536372288228

`A243073(A003961(n+1))/A105560(n+1)`
-/

namespace A243072.P298747536372288228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243073 (A003961 (n + 1)).toNat : ℚ) / (A105560 (n + 1) : ℚ)

end

end A243072.P298747536372288228

namespace A243072

/-- `A243073(A003961(n+1))/A105560(n+1)` -/
def P298747536372288228.Spec : Prop :=
  ∀ n, P298747536372288228.a n = (A243072 (n + 1) : ℚ)

end A243072

/-! ## A243072.P15503444489305719641

`A243070(∑[n+1]+2)`
-/

namespace A243072.P15503444489305719641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A243072.P15503444489305719641

namespace A243072

/-- `A243070(∑[n+1]+2)` -/
def P15503444489305719641.Spec : Prop :=
  ∀ n, P15503444489305719641.a n = A243072 (n + 1)

end A243072

/-!
# A243073: Third-order Bulgarian solitaire operation on partition list A112798: a(1) = 1, a(n) = A000040(A001222(n)) * A243072(A064989(n)).

The programs for A243073, the canonical program `A243073.P15080503784164187071` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243073 has offset 1).

The definition of A243073 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, A105560, A243072, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A243073.P15080503784164187071

`A105560(n+1)*A243072(A064989(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A243073

/-- `A105560(n+1)*A243072(A064989(n+1))` -/
def P15080503784164187071.Spec : Prop :=
  ∀ n, P15080503784164187071.a n = A243073 (n + 1)

theorem P15080503784164187071.correct : P15080503784164187071.Spec := by
  intro n
  simp only [A243073, Nat.add_sub_cancel]

end A243073

/-! ## A243073.P89466506146662654

`A241909(A243053(A241909(n+1)))`
-/

namespace A243073.P89466506146662654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (A243053 (A241909 (n + 1)).toNat).toNat

end

end A243073.P89466506146662654

namespace A243073

/-- `A241909(A243053(A241909(n+1)))` -/
def P89466506146662654.Spec : Prop :=
  ∀ n, P89466506146662654.a n = A243073 (n + 1)

end A243073

/-! ## A243073.P12330961288443154890

`A243072(A061142(n+1))*A243072(A064989(n+1))`
-/

namespace A243073.P12330961288443154890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243072 (A061142 (n + 1)).toNat * A243072 (A064989 (n + 1)).toNat

end

end A243073.P12330961288443154890

namespace A243073

/-- `A243072(A061142(n+1))*A243072(A064989(n+1))` -/
def P12330961288443154890.Spec : Prop :=
  ∀ n, P12330961288443154890.a n = A243073 (n + 1)

end A243073

/-! ## A243073.P2999879584993974844

`A008578(A001222(n+1)+1)*A243072(A064989(n+1))`
-/

namespace A243073.P2999879584993974844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A001222 (n + 1) + 1).toNat * A243072 (A064989 (n + 1)).toNat

end

end A243073.P2999879584993974844

namespace A243073

/-- `A008578(A001222(n+1)+1)*A243072(A064989(n+1))` -/
def P2999879584993974844.Spec : Prop :=
  ∀ n, P2999879584993974844.a n = A243073 (n + 1)

end A243073

/-! ## A243073.P12647130304296892466

`A243072(A064989(n+1))/A064989(n+1)*A242424(n+1)`
-/

namespace A243073.P12647130304296892466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243072 (A064989 (n + 1)).toNat : ℚ) / (A064989 (n + 1) : ℚ) * (A242424 (n + 1) : ℚ)

end

end A243073.P12647130304296892466

namespace A243073

/-- `A243072(A064989(n+1))/A064989(n+1)*A242424(n+1)` -/
def P12647130304296892466.Spec : Prop :=
  ∀ n, P12647130304296892466.a n = (A243073 (n + 1) : ℚ)

end A243073

/-! ## A243073.P8260424092637108669

`A105560(n+1)*A243072(A242424(n+1)/A105560(n+1))`
-/

namespace A243073.P8260424092637108669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (n + 1) * A243072 (SequenceMachineLib.roundAway ((A242424 (n + 1) : ℚ) / (A105560 (n + 1) : ℚ))).toNat

end

end A243073.P8260424092637108669

namespace A243073

/-- `A105560(n+1)*A243072(A242424(n+1)/A105560(n+1))` -/
def P8260424092637108669.Spec : Prop :=
  ∀ n, P8260424092637108669.a n = A243073 (n + 1)

end A243073

/-! ## A243073.P18361666541455199276

`A243070(∑[n+2]+4)`
-/

namespace A243073.P18361666541455199276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A243073.P18361666541455199276

namespace A243073

/-- `A243070(∑[n+2]+4)` -/
def P18361666541455199276.Spec : Prop :=
  ∀ n, P18361666541455199276.a n = A243073 (n + 1)

end A243073

/-!
# A243074: a(1) = 1, a(n) = n/p^(k-1), where p = largest prime dividing n and p^k = highest power of p dividing n.

The programs for A243074, the canonical program `A243074.P6910029884229255604` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243074 has offset 1).

The definition of A243074 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A051119, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A243074.P6910029884229255604

`A006530(n+1)*A051119(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A243074

/-- `A006530(n+1)*A051119(n+1)` -/
def P6910029884229255604.Spec : Prop :=
  ∀ n, P6910029884229255604.a n = A243074 (n + 1)

theorem P6910029884229255604.correct : P6910029884229255604.Spec := by
  intro n
  simp only [A243074, Nat.add_sub_cancel]

end A243074

/-! ## A243074.P3300676497829706216

`(n+1)/A003557(A053585(n+1))`
-/

namespace A243074.P3300676497829706216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A003557 (A053585 (n + 1)).toNat : ℚ)

end

end A243074.P3300676497829706216

namespace A243074

/-- `(n+1)/A003557(A053585(n+1))` -/
def P3300676497829706216.Spec : Prop :=
  ∀ n, P3300676497829706216.a n = (A243074 (n + 1) : ℚ)

end A243074

/-! ## A243074.P1847309106813396978

`A253560(n+1)/A053585(n+1)`
-/

namespace A243074.P1847309106813396978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253560 (n + 1) : ℚ) / (A053585 (n + 1) : ℚ)

end

end A243074.P1847309106813396978

namespace A243074

/-- `A253560(n+1)/A053585(n+1)` -/
def P1847309106813396978.Spec : Prop :=
  ∀ n, P1847309106813396978.a n = (A243074 (n + 1) : ℚ)

end A243074

/-! ## A243074.P903593377826012618

`A051119(n+1)*A053585(∏{p}[n+1, #])`
-/

namespace A243074.P903593377826012618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (n + 1) * A053585 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A243074.P903593377826012618

namespace A243074

/-- `A051119(n+1)*A053585(∏{p}[n+1, #])` -/
def P903593377826012618.Spec : Prop :=
  ∀ n, P903593377826012618.a n = A243074 (n + 1)

end A243074

/-! ## A243074.P11842306632648049134

`(n+1)/A052126(n+1)*A051119(n+1)`
-/

namespace A243074.P11842306632648049134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A052126 (n + 1) : ℚ) * (A051119 (n + 1) : ℚ)

end

end A243074.P11842306632648049134

namespace A243074

/-- `(n+1)/A052126(n+1)*A051119(n+1)` -/
def P11842306632648049134.Spec : Prop :=
  ∀ n, P11842306632648049134.a n = (A243074 (n + 1) : ℚ)

end A243074

/-! ## A243074.P18051921757339699324

`floor((n+1)²/A052126(n+1))/A053585(n+1)`
-/

namespace A243074.P18051921757339699324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊((n + 1) ^ 2 : ℚ) / (A052126 (n + 1) : ℚ)⌋ : ℚ) / (A053585 (n + 1) : ℚ)

end

end A243074.P18051921757339699324

namespace A243074

/-- `floor((n+1)²/A052126(n+1))/A053585(n+1)` -/
def P18051921757339699324.Spec : Prop :=
  ∀ n, P18051921757339699324.a n = (A243074 (n + 1) : ℚ)

end A243074

/-! ## A243074.P5367208901191568468

`gcd(n+1, A139171(∏{p}[n+1, #]))*A051119(n+1)`
-/

namespace A243074.P5367208901191568468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A139171 (∏ p ∈ Nat.primeFactors (f1 n), p)) : ℤ) * A051119 (n + 1)

end

end A243074.P5367208901191568468

namespace A243074

/-- `gcd(n+1, A139171(∏{p}[n+1, #]))*A051119(n+1)` -/
def P5367208901191568468.Spec : Prop :=
  ∀ n, P5367208901191568468.a n = A243074 (n + 1)

end A243074

/-! ## A243074.P11330814060578790959

`A020639(A053585(n+1))*A051119(n+1)`
-/

namespace A243074.P11330814060578790959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053585 (n + 1)).toNat * A051119 (n + 1)

end

end A243074.P11330814060578790959

namespace A243074

/-- `A020639(A053585(n+1))*A051119(n+1)` -/
def P11330814060578790959.Spec : Prop :=
  ∀ n, P11330814060578790959.a n = A243074 (n + 1)

end A243074

/-! ## A243074.P395124184049414246

`A051119(A032742(n+1))*A088835(n+1)`
-/

namespace A243074.P395124184049414246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (A032742 (n + 1)).toNat * A088835 (n + 1)

end

end A243074.P395124184049414246

namespace A243074

/-- `A051119(A032742(n+1))*A088835(n+1)` -/
def P395124184049414246.Spec : Prop :=
  ∀ n, P395124184049414246.a n = A243074 (n + 1)

end A243074

/-! ## A243074.P13927390323592500272

`A000027(n+1)/A052126(A053585(n+1))`
-/

namespace A243074.P13927390323592500272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A052126 (A053585 (n + 1)).toNat : ℚ)

end

end A243074.P13927390323592500272

namespace A243074

/-- `A000027(n+1)/A052126(A053585(n+1))` -/
def P13927390323592500272.Spec : Prop :=
  ∀ n, P13927390323592500272.a n = (A243074 (n + 1) : ℚ)

end A243074

/-! ## A243074.P14323920752480741592

`(A046665(n+1)+A020639(n+1))*A051119(n+1)`
-/

namespace A243074.P14323920752480741592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046665 (n + 1) + A020639 (n + 1)) * A051119 (n + 1)

end

end A243074.P14323920752480741592

namespace A243074

/-- `(A046665(n+1)+A020639(n+1))*A051119(n+1)` -/
def P14323920752480741592.Spec : Prop :=
  ∀ n, P14323920752480741592.a n = A243074 (n + 1)

end A243074

/-! ## A243074.P14647584468532709146

`(A318884(n+1)-A318886(n+1))*A051119(n+1)`
-/

namespace A243074.P14647584468532709146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A318884 (n + 1) - A318886 (n + 1)) * A051119 (n + 1)

end

end A243074.P14647584468532709146

namespace A243074

/-- `(A318884(n+1)-A318886(n+1))*A051119(n+1)` -/
def P14647584468532709146.Spec : Prop :=
  ∀ n, P14647584468532709146.a n = A243074 (n + 1)

end A243074

/-! ## A243074.P1459978348416380242

`A020639((n+1)/A051119(n+1))*A051119(n+1)`
-/

namespace A243074.P1459978348416380242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A051119 (n + 1) : ℚ))).toNat * A051119 (n + 1)

end

end A243074.P1459978348416380242

namespace A243074

/-- `A020639((n+1)/A051119(n+1))*A051119(n+1)` -/
def P1459978348416380242.Spec : Prop :=
  ∀ n, P1459978348416380242.a n = A243074 (n + 1)

end A243074

/-! ## A243074.P7055469890414999252

`(n+1)*A008578(A061395(n+1)+1)/A053585(n+1)`
-/

namespace A243074.P7055469890414999252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A008578 (A061395 (n + 1) + 1).toNat : ℚ) / (A053585 (n + 1) : ℚ)

end

end A243074.P7055469890414999252

namespace A243074

/-- `(n+1)*A008578(A061395(n+1)+1)/A053585(n+1)` -/
def P7055469890414999252.Spec : Prop :=
  ∀ n, P7055469890414999252.a n = (A243074 (n + 1) : ℚ)

end A243074

/-! ## A243074.P10663031717175345709

`(n+1)*(A318884(n+1)-A318886(n+1))/A053585(n+1)`
-/

namespace A243074.P10663031717175345709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (A318884 (n + 1) - A318886 (n + 1)) : ℚ) / (A053585 (n + 1) : ℚ)

end

end A243074.P10663031717175345709

namespace A243074

/-- `(n+1)*(A318884(n+1)-A318886(n+1))/A053585(n+1)` -/
def P10663031717175345709.Spec : Prop :=
  ∀ n, P10663031717175345709.a n = (A243074 (n + 1) : ℚ)

end A243074

/-! ## A243074.P14705671461274612755

`A014963(A346088((∏{p}[n+1, #]-1)%(n+1)+1))*A051119(n+1)`
-/

namespace A243074.P14705671461274612755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A346088 (Int.tmod (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) - 1) (n + 1 : ℤ) + 1).toNat).toNat * A051119 (n + 1)

end

end A243074.P14705671461274612755

namespace A243074

/-- `A014963(A346088((∏{p}[n+1, #]-1)%(n+1)+1))*A051119(n+1)` -/
def P14705671461274612755.Spec : Prop :=
  ∀ n, P14705671461274612755.a n = A243074 (n + 1)

end A243074

/-! ## A243074.P10654358368203306721

`A007947(n+1)/A051119(A007947(n+1))*A051119(n+1)`
-/

namespace A243074.P10654358368203306721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A051119 (A007947 (n + 1)).toNat : ℚ) * (A051119 (n + 1) : ℚ)

end

end A243074.P10654358368203306721

namespace A243074

/-- `A007947(n+1)/A051119(A007947(n+1))*A051119(n+1)` -/
def P10654358368203306721.Spec : Prop :=
  ∀ n, P10654358368203306721.a n = (A243074 (n + 1) : ℚ)

end A243074

/-! ## A243074.P10076246838807548947

`A027748(∑[A001221(n+1)]+1)*A051119(n+1)`
-/

namespace A243074.P10076246838807548947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027748 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat * A051119 (n + 1)

end

end A243074.P10076246838807548947

namespace A243074

/-- `A027748(∑[A001221(n+1)]+1)*A051119(n+1)` -/
def P10076246838807548947.Spec : Prop :=
  ∀ n, P10076246838807548947.a n = A243074 (n + 1)

end A243074

/-! ## A243074.P8387791798433505664

`(A051664(n+1)-A070536(n+1))*A051119(n+1)`
-/

namespace A243074.P8387791798433505664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051664 (n + 1) - A070536 (n + 1)) * A051119 (n + 1)

end

end A243074.P8387791798433505664

namespace A243074

/-- `(A051664(n+1)-A070536(n+1))*A051119(n+1)` -/
def P8387791798433505664.Spec : Prop :=
  ∀ n, P8387791798433505664.a n = A243074 (n + 1)

end A243074

/-! ## A243074.P18198339215471661973

`A243057(A242420(n+1))`
-/

namespace A243074.P18198339215471661973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243057 (A242420 (n + 1)).toNat

end

end A243074.P18198339215471661973

namespace A243074

/-- `A243057(A242420(n+1))` -/
def P18198339215471661973.Spec : Prop :=
  ∀ n, P18198339215471661973.a n = A243074 (n + 1)

end A243074

/-!
# A243076: Let f(p,i) = smallest prime m >= p such that m == i (mod p); a(n) = Sum_{i=0..p-1} f(p,i), where p = n-th prime.

The programs for A243076, there is no canonical definition to state claims against.
-/

/-! ## A243076.P7374229529627965901

`A340354(A000040(n+1))+Δ[A007504(n)]`
-/

namespace A243076.P7374229529627965901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340354 (A000040 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A243076.P7374229529627965901

/-! ## A243076.P10655075584533101340

`A340354(A000040(n+1))+p?[A001057(n)]`
-/

namespace A243076.P10655075584533101340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340354 (A000040 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243076.P10655075584533101340

/-! ## A243076.P1388111874629328404

`A340354(A000040(n+1))+p?[A007989(n)]`
-/

namespace A243076.P1388111874629328404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340354 (A000040 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243076.P1388111874629328404

/-! ## A243076.P10589824769402989879

`A340354(A000040(n+1))+p?[A057979(n)]`
-/

namespace A243076.P10589824769402989879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340354 (A000040 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243076.P10589824769402989879

/-! ## A243076.P6342464884945549312

`A340354(A000040(n+1))+p?[A344180(n)]`
-/

namespace A243076.P6342464884945549312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340354 (A000040 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243076.P6342464884945549312

/-! ## A243076.P10230742073824171413

`A340354(A008578(n+2))+p?[A090223(n)]`
-/

namespace A243076.P10230742073824171413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340354 (A008578 (n + 2)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243076.P10230742073824171413

/-! ## A243076.P9254357278288771418

`A340354(record[A020639(n+2)])+A008578(n+2)`
-/

namespace A243076.P9254357278288771418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340354 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A008578 (n + 2)

end

end A243076.P9254357278288771418

/-!
# A243077: Numbers missing from A025429 (number of partitions of n into 5 nonzero squares).

The programs for A243077, there is no canonical definition to state claims against.
-/

/-! ## A243077.P144730883337249817

`eq[0, A080673(n)]`
-/

namespace A243077.P144730883337249817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080673 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243077.P144730883337249817

/-! ## A243077.P12518563912338234146

`eq[0, A080654(round(acot(n)+n))]`
-/

namespace A243077.P12518563912338234146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080654 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243077.P12518563912338234146

/-! ## A243077.P15545727856617872928

`eq[0, A080654(A028310(n))]`
-/

namespace A243077.P15545727856617872928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080654 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243077.P15545727856617872928

/-! ## A243077.P515987077566634562

`eq[0, A080654(A233583(n+1))]`
-/

namespace A243077.P515987077566634562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080654 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243077.P515987077566634562

/-!
# A243079: Numbers n such that A = n - DigitProd(n) is divisible by the largest power of 10 <= A.

The programs for A243079, there is no canonical definition to state claims against.
-/

/-! ## A243079.P13953068539002469295

`eq[A035930(A070565(n)), A055641(n)]`
-/

namespace A243079.P13953068539002469295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035930 (A070565 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243079.P13953068539002469295

/-! ## A243079.P6458393792284948834

`eq[A035930(A070565(n)), A217096(n)]`
-/

namespace A243079.P6458393792284948834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035930 (A070565 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243079.P6458393792284948834

/-! ## A243079.P6866638970220129631

`eq[A067898(n), A217657(A070565(n))]`
-/

namespace A243079.P6866638970220129631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 (A070565 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243079.P6866638970220129631

/-! ## A243079.P6275790851901528489

`lt[A217657(A070565(n)), A168046(n)]`
-/

namespace A243079.P6275790851901528489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 (A070565 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243079.P6275790851901528489

/-! ## A243079.P6531146790713629484

`lt[A004086(A070565(n)), 10*A168184(n)]`
-/

namespace A243079.P6531146790713629484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A070565 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A168184 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243079.P6531146790713629484

/-!
# A243081: Number A(n,k) of compositions of n into parts with multiplicity not larger than k; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A243081, there is no canonical definition to state claims against.
-/

/-! ## A243081.P17534574665223913339

`A330960(A276890(n))`
-/

namespace A243081.P17534574665223913339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330960 (A276890 n).toNat

end

end A243081.P17534574665223913339

/-! ## A243081.P2499034861221663825

`A238966(A276890(n)^A065203(n+1))`
-/

namespace A243081.P2499034861221663825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238966 (SequenceMachineLib.roundAway ((A276890 n : ℚ) ^ (A065203 (n + 1) : ℤ))).toNat

end

end A243081.P2499034861221663825

/-! ## A243081.P5065714252156015103

`A231717(A292712(n)^3)`
-/

namespace A243081.P5065714252156015103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231717 (A292712 n ^ 3).toNat

end

end A243081.P5065714252156015103

/-! ## A243081.P7553245718174007239

`∑{e}[A001939(A292795(n)), #]`
-/

namespace A243081.P7553245718174007239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001939 (A292795 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A243081.P7553245718174007239

/-! ## A243081.P8317908585569808401

`∑{e}[A081659(A293525(n)), #]`
-/

namespace A243081.P8317908585569808401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081659 (A293525 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A243081.P8317908585569808401

/-!
# A243082: Number of compositions of n into parts with multiplicity not larger than 4.

The programs for A243082, there is no canonical definition to state claims against.
-/

/-! ## A243082.P2205390922652231021

`A243081(∑[n+5]+5)`
-/

namespace A243082.P2205390922652231021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A243082.P2205390922652231021

/-! ## A243082.P13741279269736976341

`A243081(A052905(n+2))%A305262(n)`
-/

namespace A243082.P13741279269736976341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243081 (A052905 (n + 2)).toNat) (A305262 n)

end

end A243082.P13741279269736976341

/-! ## A243082.P13295232556986677592

`or(A000007(n), A243081(A052905(n+2)))`
-/

namespace A243082.P13295232556986677592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A243081 (A052905 (n + 2)).toNat)

end

end A243082.P13295232556986677592

/-! ## A243082.P5247313778572775177

`A000034(2*n)*A243081(A052905(n+2))`
-/

namespace A243082.P5247313778572775177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A243081 (A052905 (n + 2)).toNat

end

end A243082.P5247313778572775177

/-! ## A243082.P12051603406302083680

`A124625(2*n)*A243081(A052905(n+2))`
-/

namespace A243082.P12051603406302083680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (2 * n) * A243081 (A052905 (n + 2)).toNat

end

end A243082.P12051603406302083680

/-! ## A243082.P8224088979325275217

`A007318(C(2, n))*A243081(A052905(n+2))`
-/

namespace A243082.P8224088979325275217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A243081 (A052905 (n + 2)).toNat

end

end A243082.P8224088979325275217

/-! ## A243082.P16425688428368786173

`and(A075427(2*n), A243081(A052905(n+2)))`
-/

namespace A243082.P16425688428368786173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075427 (2 * n)) (A243081 (A052905 (n + 2)).toNat)

end

end A243082.P16425688428368786173

/-! ## A243082.P15761095814976123390

`A001222(A007918(n))*A243081(A052905(n+2))`
-/

namespace A243082.P15761095814976123390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007918 n).toNat * A243081 (A052905 (n + 2)).toNat

end

end A243082.P15761095814976123390

/-! ## A243082.P11943120018420591293

`A001222(A051698(n))*A243081(A052905(n+2))`
-/

namespace A243082.P11943120018420591293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A051698 n).toNat * A243081 (A052905 (n + 2)).toNat

end

end A243082.P11943120018420591293

/-! ## A243082.P6923968313360323610

`A001222(A045344(n+1))*A243081(A052905(n+2))`
-/

namespace A243082.P6923968313360323610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A045344 (n + 1)).toNat * A243081 (A052905 (n + 2)).toNat

end

end A243082.P6923968313360323610

/-! ## A243082.P8436350676201955989

`A001222(A065091(n+1))*A243081(A052905(n+2))`
-/

namespace A243082.P8436350676201955989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065091 (n + 1)).toNat * A243081 (A052905 (n + 2)).toNat

end

end A243082.P8436350676201955989

/-! ## A243082.P7995984517503912291

`A000120(A137688(n))*A243081(A052905(n+2))`
-/

namespace A243082.P7995984517503912291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A137688 n).toNat * A243081 (A052905 (n + 2)).toNat

end

end A243082.P7995984517503912291

/-!
# A243083: Number of compositions of n into parts with multiplicity not larger than 5.

The programs for A243083, there is no canonical definition to state claims against.
-/

/-! ## A243083.P17074796519054129932

`A243081((n+4)²-∑[n+1])`
-/

namespace A243083.P17074796519054129932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 ((n + 4) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A243083.P17074796519054129932

/-! ## A243083.P16060828651799742721

`lcm(A033999(n), A243081(A000124(n+6)-7))`
-/

namespace A243083.P16060828651799742721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A243081 (A000124 (n + 6) - 7).toNat)

end

end A243083.P16060828651799742721

/-! ## A243083.P1617060978264333571

`or(A000007(n), A243081(A000217(n+6)-6))`
-/

namespace A243083.P1617060978264333571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A243081 (A000217 (n + 6) - 6).toNat)

end

end A243083.P1617060978264333571

/-! ## A243083.P17163806748935989256

`A057979(2*n)*A243081(A000217(n+6)-6)`
-/

namespace A243083.P17163806748935989256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n) * A243081 (A000217 (n + 6) - 6).toNat

end

end A243083.P17163806748935989256

/-! ## A243083.P5031612213242144513

`gcd(2, A005408(n))*A243081(A000217(n+6)-6)`
-/

namespace A243083.P5031612213242144513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A005408 n) : ℤ) * A243081 (A000217 (n + 6) - 6).toNat

end

end A243083.P5031612213242144513

/-! ## A243083.P16716811516665102632

`gcd(n, A033951(n))*A243081(A000217(n+6)-6)`
-/

namespace A243083.P16716811516665102632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A033951 n) : ℤ) * A243081 (A000217 (n + 6) - 6).toNat

end

end A243083.P16716811516665102632

/-! ## A243083.P1678185770189986174

`A243081(A000217(n+6)-6)+A008683(4*(n+1))`
-/

namespace A243083.P1678185770189986174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A000217 (n + 6) - 6).toNat + A008683 (4 * (n + 1))

end

end A243083.P1678185770189986174

/-! ## A243083.P2144127847065688447

`A055396(4*(n+1))*A243081(A000217(n+6)-6)`
-/

namespace A243083.P2144127847065688447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (4 * (n + 1)) * A243081 (A000217 (n + 6) - 6).toNat

end

end A243083.P2144127847065688447

/-! ## A243083.P17138697483327035157

`A243081(A000217(n+6)-6)*A289508(4*(n+1))`
-/

namespace A243083.P17138697483327035157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A000217 (n + 6) - 6).toNat * A289508 (4 * (n + 1))

end

end A243083.P17138697483327035157

/-! ## A243083.P1796935830926201119

`A243081(A000124(n+6)-7)^A014963(4*n+2)`
-/

namespace A243083.P1796935830926201119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243081 (A000124 (n + 6) - 7).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A243083.P1796935830926201119

/-! ## A243083.P6689345819746792457

`and(1, A038500(n+1))*A243081(A000217(n+6)-6)`
-/

namespace A243083.P6689345819746792457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A038500 (n + 1)) * A243081 (A000217 (n + 6) - 6).toNat

end

end A243083.P6689345819746792457

/-! ## A243083.P14537670825535498337

`and(1, A000010(n+2))!*A243081(A000217(n+6)-6)`
-/

namespace A243083.P14537670825535498337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A000010 (n + 2))).toNat : ℤ) * A243081 (A000217 (n + 6) - 6).toNat

end

end A243083.P14537670825535498337

/-! ## A243083.P6599152054389842949

`A014963(A017137(n))*A243081(A000217(n+6)-6)`
-/

namespace A243083.P6599152054389842949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A017137 n).toNat * A243081 (A000217 (n + 6) - 6).toNat

end

end A243083.P6599152054389842949

/-! ## A243083.P16404774678705220611

`A126795(A000040(n+1))*A243081(A000217(n+6)-6)`
-/

namespace A243083.P16404774678705220611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126795 (A000040 (n + 1)).toNat * A243081 (A000217 (n + 6) - 6).toNat

end

end A243083.P16404774678705220611

/-! ## A243083.P16577941681457201272

`A001055(A006530(n+2))*A243081(A000124(n+6)-7)`
-/

namespace A243083.P16577941681457201272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A006530 (n + 2)).toNat * A243081 (A000124 (n + 6) - 7).toNat

end

end A243083.P16577941681457201272

/-! ## A243083.P6478327057036021839

`A014963(A000096(n+8))*A243081(A000217(n+6)-6)`
-/

namespace A243083.P6478327057036021839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000096 (n + 8)).toNat * A243081 (A000217 (n + 6) - 6).toNat

end

end A243083.P6478327057036021839

/-!
# A243084: Number of compositions of n into parts with multiplicity not larger than 6.

The programs for A243084, there is no canonical definition to state claims against.
-/

/-! ## A243084.P12597018452812240339

`A243081(2*n+∑[n+5]+16)`
-/

namespace A243084.P12597018452812240339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (2 * n + (∑ j ∈ Finset.range (n + 1), f1 j + 16))

end

end A243084.P12597018452812240339

/-! ## A243084.P9281835601239245760

`ceil(2^(n-1))-A121253(A121253(n))`
-/

namespace A243084.P9281835601239245760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A121253 (A121253 n).toNat

end

end A243084.P9281835601239245760

/-! ## A243084.P6134403581862505209

`ceil(2^(n-1))-A351356(A351344(n))`
-/

namespace A243084.P6134403581862505209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A351356 (A351344 n).toNat

end

end A243084.P6134403581862505209

/-! ## A243084.P922877077208615932

`A244230(A000108(n))-A037954(n)`
-/

namespace A243084.P922877077208615932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244230 (A000108 n).toNat - A037954 n

end

end A243084.P922877077208615932

/-! ## A243084.P7311411317979697584

`A390645(A004526(n²))+A037951(n)`
-/

namespace A243084.P7311411317979697584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390645 (A004526 (n ^ 2)).toNat + A037951 n

end

end A243084.P7311411317979697584

/-!
# A243085: Number of compositions of n into parts with multiplicity not larger than 7.

The programs for A243085, there is no canonical definition to state claims against.
-/

/-! ## A243085.P14696521399635883123

`A243081(A000217(n+8)-8)`
-/

namespace A243085.P14696521399635883123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A000217 (n + 8) - 8).toNat

end

end A243085.P14696521399635883123

/-! ## A243085.P1990670776619676430

`A243081(A179865(n+9)-8)`
-/

namespace A243085.P1990670776619676430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A179865 (n + 9) - 8).toNat

end

end A243085.P1990670776619676430

/-! ## A243085.P17783859544264162289

`A243081(A008458(n+4)+A000124(n+2))`
-/

namespace A243085.P17783859544264162289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A008458 (n + 4) + A000124 (n + 2)).toNat

end

end A243085.P17783859544264162289

/-! ## A243085.P17197111895797240439

`A243081(A008588(n+4)+A000124(n+2))`
-/

namespace A243085.P17197111895797240439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A008588 (n + 4) + A000124 (n + 2)).toNat

end

end A243085.P17197111895797240439

/-! ## A243085.P9104951843787802453

`A243081(A065033(2*n)+A000217(n+7))`
-/

namespace A243085.P9104951843787802453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A065033 (2 * n) + A000217 (n + 7)).toNat

end

end A243085.P9104951843787802453

/-! ## A243085.P8354038660131633798

`A243081(A000096(n+6)-A022967(n+12))`
-/

namespace A243085.P8354038660131633798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A000096 (n + 6) - A022967 (n + 12)).toNat

end

end A243085.P8354038660131633798

/-! ## A243085.P2680957736723284245

`A243081(eq[7, A025581(n)])`
-/

namespace A243085.P2680957736723284245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243085.P2680957736723284245

/-! ## A243085.P5984028619833427789

`A243081(eq[8, A004736(n+1)])`
-/

namespace A243085.P5984028619833427789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243085.P5984028619833427789

/-!
# A243086: Number of compositions of n into parts with multiplicity not larger than 8.

The programs for A243086, there is no canonical definition to state claims against.
-/

/-! ## A243086.P16722662170068441090

`A243081(A027379(n+7)-6)`
-/

namespace A243086.P16722662170068441090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A027379 (n + 7) - 6).toNat

end

end A243086.P16722662170068441090

/-! ## A243086.P18007258234107328847

`A243081(A000096(n+8)-8)`
-/

namespace A243086.P18007258234107328847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A000096 (n + 8) - 8).toNat

end

end A243086.P18007258234107328847

/-! ## A243086.P2143321696826252159

`A243081(A000217(n+9)-9)`
-/

namespace A243086.P2143321696826252159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A000217 (n + 9) - 9).toNat

end

end A243086.P2143321696826252159

/-! ## A243086.P10527022153766946342

`A243081(A179865(n+10)-9)`
-/

namespace A243086.P10527022153766946342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A179865 (n + 10) - 9).toNat

end

end A243086.P10527022153766946342

/-! ## A243086.P5314911340561935002

`A243081(A004273(n+4)+A000124(n+7))`
-/

namespace A243086.P5314911340561935002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A004273 (n + 4) + A000124 (n + 7)).toNat

end

end A243086.P5314911340561935002

/-!
# A243087: Number of compositions of n into parts with multiplicity not larger than 9.

The programs for A243087, there is no canonical definition to state claims against.
-/

/-! ## A243087.P12048371372223488205

`A243081(A056000(n+6))`
-/

namespace A243087.P12048371372223488205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A056000 (n + 6)).toNat

end

end A243087.P12048371372223488205

/-! ## A243087.P6015408956155056740

`A243081(A000096(n+9)-9)`
-/

namespace A243087.P6015408956155056740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A000096 (n + 9) - 9).toNat

end

end A243087.P6015408956155056740

/-! ## A243087.P6510750029779797066

`A243081(A000217(n+10)-10)`
-/

namespace A243087.P6510750029779797066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A000217 (n + 10) - 10).toNat

end

end A243087.P6510750029779797066

/-! ## A243087.P12453038528954897335

`A243081(n+3+A027379(n+7))`
-/

namespace A243087.P12453038528954897335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 ((n + 3 : ℤ) + A027379 (n + 7)).toNat

end

end A243087.P12453038528954897335

/-! ## A243087.P1359451679851354102

`A243081(A253145(n+7)+A005408(n+4))`
-/

namespace A243087.P1359451679851354102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A253145 (n + 7) + A005408 (n + 4)).toNat

end

end A243087.P1359451679851354102

/-! ## A243087.P10831161588267792736

`A243081(A253145(n+7)+A004273(n+5))`
-/

namespace A243087.P10831161588267792736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A253145 (n + 7) + A004273 (n + 5)).toNat

end

end A243087.P10831161588267792736

/-!
# A243088: Number of compositions of n into parts with multiplicity not larger than 10.

The programs for A243088, there is no canonical definition to state claims against.
-/

/-! ## A243088.P11579165814363081180

`A243081(A000217(n+11)-11)`
-/

namespace A243088.P11579165814363081180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A000217 (n + 11) - 11).toNat

end

end A243088.P11579165814363081180

/-! ## A243088.P8474772789401091909

`A243081(A000124(n+10)+n-1)`
-/

namespace A243088.P8474772789401091909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A000124 (n + 10) + ((n : ℤ) - 1)).toNat

end

end A243088.P8474772789401091909

/-! ## A243088.P15788468541560672324

`A243081(2*n+A000096(n+8)+11)`
-/

namespace A243088.P15788468541560672324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 ((2 * n : ℤ) + (A000096 (n + 8) + 11)).toNat

end

end A243088.P15788468541560672324

/-! ## A243088.P11557745985931071801

`A243081(A004273(n+5)+A000124(n+9))`
-/

namespace A243088.P11557745985931071801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A004273 (n + 5) + A000124 (n + 9)).toNat

end

end A243088.P11557745985931071801

/-! ## A243088.P7635341209441584067

`A243081(A027379(n+7)+A004273(n+7))`
-/

namespace A243088.P7635341209441584067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A027379 (n + 7) + A004273 (n + 7)).toNat

end

end A243088.P7635341209441584067

/-! ## A243088.P11850282608373165488

`A243081(A000096(n+9)-A022967(n+12))`
-/

namespace A243088.P11850282608373165488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A000096 (n + 9) - A022967 (n + 12)).toNat

end

end A243088.P11850282608373165488

/-!
# A243089: Pseudoprimes to base 7 that are not squarefree.

The programs for A243089, there is no canonical definition to state claims against.
-/

/-! ## A243089.P14222810250828256346

`∩[A005938(n+1), A053742(n)]`
-/

namespace A243089.P14222810250828256346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243089.P14222810250828256346

/-! ## A243089.P6549081582879050216

`∩[A008607(2*n+1)+A008607(2*n), A005938(n+2)]`
-/

namespace A243089.P6549081582879050216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008607 (2 * n + 1) + A008607 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005938 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243089.P6549081582879050216

/-! ## A243089.P13801980956553930723

`∩[A005938(n+1), A008607(n)]`
-/

namespace A243089.P13801980956553930723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008607 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243089.P13801980956553930723

/-! ## A243089.P5876598417912557561

`filter[A005938(n+1), A087049(#)]`
-/

namespace A243089.P5876598417912557561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A243089.P5876598417912557561

/-! ## A243089.P8635736094530984400

`filter[A005938(n+1), A326072(#)]`
-/

namespace A243089.P8635736094530984400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A326072 (f1 j).toNat = 1) n)

end

end A243089.P8635736094530984400

/-!
# A243090: Pseudoprimes to base 8 that are not squarefree.

The programs for A243090, there is no canonical definition to state claims against.
-/

/-! ## A243090.P6200226380827304903

`∩[A020137(n+1), A087969(n+1)]`
-/

namespace A243090.P6200226380827304903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243090.P6200226380827304903

/-! ## A243090.P6839691044805924402

`∩[A087969(n+1), A122785(n+1)]`
-/

namespace A243090.P6839691044805924402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243090.P6839691044805924402

/-! ## A243090.P15883428028120866467

`∩[A020137(n+1), A328120(n+1)]`
-/

namespace A243090.P15883428028120866467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243090.P15883428028120866467

/-! ## A243090.P8366833080494735805

`∩[A122785(n+1), A328120(n+1)]`
-/

namespace A243090.P8366833080494735805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243090.P8366833080494735805

/-! ## A243090.P7443424647776093962

`∩[A020137(n+1), A381823(n+1)]`
-/

namespace A243090.P7443424647776093962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243090.P7443424647776093962

/-!
# A243094: Cardinality of the Weyl alternation set corresponding to the zero-weight in the representation of the Lie algebra sp(2n) whose highest weight is the second fundamental weight.

The programs for A243094, the canonical program `A243094.P4463870826964132106` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243094 has offset 0).

The definition of A243094 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243094.P4463870826964132106

`a(n-1)+a(n-2)+3*a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=8, a(4)=19`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A243094

/-- `a(n-1)+a(n-2)+3*a(n-3)+a(n-4)` -/
def P4463870826964132106.Spec : Prop :=
  ∀ n, (P4463870826964132106.a n : ℤ) = A243094 n

theorem P4463870826964132106.correct : P4463870826964132106.Spec := by
  intro n
  simp only [A243094]

end A243094

/-! ## A243094.P13971226084217041942

`A232165(n)+A196423(A028310(n))`
-/

namespace A243094.P13971226084217041942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232165 n + A196423 (A028310 n).toNat

end

end A243094.P13971226084217041942

namespace A243094

/-- `A232165(n)+A196423(A028310(n))` -/
def P13971226084217041942.Spec : Prop :=
  ∀ n, P13971226084217041942.a n = A243094 n

end A243094

/-! ## A243094.P6946725602970856624

`A232165(n)+A196423(A065033(2*n))`
-/

namespace A243094.P6946725602970856624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232165 n + A196423 (A065033 (2 * n)).toNat

end

end A243094.P6946725602970856624

namespace A243094

/-- `A232165(n)+A196423(A065033(2*n))` -/
def P6946725602970856624.Spec : Prop :=
  ∀ n, P6946725602970856624.a n = A243094 n

end A243094

/-! ## A243094.P14406203336252085486

`A232162(n+1)+A232162(n)+A000007(n)`
-/

namespace A243094.P14406203336252085486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232162 (n + 1) + (A232162 n + A000007 n)

end

end A243094.P14406203336252085486

namespace A243094

/-- `A232162(n+1)+A232162(n)+A000007(n)` -/
def P14406203336252085486.Spec : Prop :=
  ∀ n, P14406203336252085486.a n = A243094 n

end A243094

/-! ## A243094.P8202355714523260563

`A232164(A028310(n))+Δ[A214663(n)]`
-/

namespace A243094.P8202355714523260563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232164 (A028310 n).toNat + (f1 (n + 1) - f1 n)

end

end A243094.P8202355714523260563

namespace A243094

/-- `A232164(A028310(n))+Δ[A214663(n)]` -/
def P8202355714523260563.Spec : Prop :=
  ∀ n, P8202355714523260563.a n = A243094 n

end A243094

/-! ## A243094.P195891246907126525

`A232164(A233583(n+1))+Δ[A214663(n)]`
-/

namespace A243094.P195891246907126525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232164 (A233583 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A243094.P195891246907126525

namespace A243094

/-- `A232164(A233583(n+1))+Δ[A214663(n)]` -/
def P195891246907126525.Spec : Prop :=
  ∀ n, P195891246907126525.a n = A243094 n

end A243094

/-! ## A243094.P17820880840130749137

`record[A232163(n+1)-A232162(n+1)]`
-/

namespace A243094.P17820880840130749137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232163 (n + 1) - A232162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243094.P17820880840130749137

namespace A243094

/-- `record[A232163(n+1)-A232162(n+1)]` -/
def P17820880840130749137.Spec : Prop :=
  ∀ n, P17820880840130749137.a n = A243094 n

end A243094

/-!
# A243096: Lesser of twin primes (A001359) such that both are full reptend primes (A001913).

The programs for A243096, there is no canonical definition to state claims against.
-/

/-! ## A243096.P12663690744932523376

`∩[A001913(n+1)-2, A001913(n+1)]`
-/

namespace A243096.P12663690744932523376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001913 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243096.P12663690744932523376

/-! ## A243096.P14095820570980669719

`∩[A006883(n+1)-2, A006883(n+1)]`
-/

namespace A243096.P14095820570980669719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006883 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243096.P14095820570980669719

/-! ## A243096.P949061009047954773

`∩[A306355(n+2)-2, A306355(n+2)]`
-/

namespace A243096.P949061009047954773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306355 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306355 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243096.P949061009047954773

/-! ## A243096.P2474644830111731295

`p?[gcd(2-A001913(n+2), A001913(n+1))]`
-/

namespace A243096.P2474644830111731295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A001913 (n + 2)) (A001913 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A243096.P2474644830111731295

/-! ## A243096.P18298912338095857829

`∩[A001913(n+1), A040976(A060257(n+1))]`
-/

namespace A243096.P18298912338095857829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (A060257 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243096.P18298912338095857829

/-! ## A243096.P11085247070981277973

`∩[A006883(n+1), A040976(A060257(n+1))]`
-/

namespace A243096.P11085247070981277973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (A060257 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243096.P11085247070981277973

/-! ## A243096.P11868483424993144768

`∩[A040976(A060257(n+1)), A167797(n+1)]`
-/

namespace A243096.P11868483424993144768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (A060257 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243096.P11868483424993144768

/-!
# A243097: Digit sums of the nontrivial reversal numbers (numbers which are integer multiples of their reversal), excluding palindromes and multiples of 10.

The programs for A243097, there is no canonical definition to state claims against.
-/

/-! ## A243097.P16549800103019752367

`∑{digits}[A008919(n+1), #]`
-/

namespace A243097.P16549800103019752367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008919 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A243097.P16549800103019752367

/-! ## A243097.P14443075715669007598

`∑{digits}[A031877(n+1), #]`
-/

namespace A243097.P14443075715669007598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031877 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A243097.P14443075715669007598

/-! ## A243097.P17641528085051634600

`∑{digits}[A072141(n+1), #]`
-/

namespace A243097.P17641528085051634600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072141 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A243097.P17641528085051634600

/-! ## A243097.P8585869123085489268

`∑{digits}[9*A061852(n+1), #]`
-/

namespace A243097.P8585869123085489268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A061852 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A243097.P8585869123085489268

/-! ## A243097.P4681166813172123324

`∑{digits}[∪[A001232(n+1), A008918(n+1)], #]`
-/

namespace A243097.P4681166813172123324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001232 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008918 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A243097.P4681166813172123324

/-! ## A243097.P11975551500411282117

`∑{digits}[∪[A008918(n+1), A222814(n+1)], #]`
-/

namespace A243097.P11975551500411282117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008918 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222814 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A243097.P11975551500411282117

/-! ## A243097.P1605238336825294922

`∑{digits}[∪[A222814(n+1), A222815(n+1)], #]`
-/

namespace A243097.P1605238336825294922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222814 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222815 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A243097.P1605238336825294922

/-!
# A243098: Number T(n,k) of endofunctions on [n] with all cycles of length k; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A243098, there is no canonical definition to state claims against.
-/

/-! ## A243098.P13364579618601532870

`A241981(n)-A321231(A102480(n))`
-/

namespace A243098.P13364579618601532870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 n - A321231 (A102480 n).toNat

end

end A243098.P13364579618601532870

/-!
# A243099: A002061 and A000217 interleaved.

The programs for A243099, the canonical program `A243099.P16412927144387891686` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243099 has offset 3).

The definition of A243099 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243099.P16412927144387891686

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=3, a(6)=3, a(7)=7`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A243099

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P16412927144387891686.Spec : Prop :=
  ∀ n, P16412927144387891686.a n = A243099 (n + 3)

theorem P16412927144387891686.correct : P16412927144387891686.Spec := by
  intro n
  simp only [A243099, Nat.add_sub_cancel]

end A243099

/-! ## A243099.P125819077175346899

`a(n-A105397(n))+n-3` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A243099.P125819077175346899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  a ((n : ℤ) - A105397 n).toNat + ((n : ℤ) - 3)

end

end A243099.P125819077175346899

namespace A243099

/-- `a(n-A105397(n))+n-3` -/
def P125819077175346899.Spec : Prop :=
  ∀ n, P125819077175346899.a n = A243099 (n + 3)

end A243099

/-! ## A243099.P2025259876896793814

`A124093(n)-A004442(n)%A008619(n)`
-/

namespace A243099.P2025259876896793814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124093 n - Int.tmod (A004442 n) (A008619 n)

end

end A243099.P2025259876896793814

namespace A243099

/-- `A124093(n)-A004442(n)%A008619(n)` -/
def P2025259876896793814.Spec : Prop :=
  ∀ n, P2025259876896793814.a n = A243099 (n + 3)

end A243099

/-! ## A243099.P15668854822720798936

`A124093(n)-A029578(n)%A008619(n)`
-/

namespace A243099.P15668854822720798936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124093 n - Int.tmod (A029578 n) (A008619 n)

end

end A243099.P15668854822720798936

namespace A243099

/-- `A124093(n)-A029578(n)%A008619(n)` -/
def P15668854822720798936.Spec : Prop :=
  ∀ n, P15668854822720798936.a n = A243099 (n + 3)

end A243099

/-! ## A243099.P14890351453834536869

`A263614(n+2)%(A263614(n)+1)`
-/

namespace A243099.P14890351453834536869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263614 (n + 2)) (A263614 n + 1)

end

end A243099.P14890351453834536869

namespace A243099

/-- `A263614(n+2)%(A263614(n)+1)` -/
def P14890351453834536869.Spec : Prop :=
  ∀ n, P14890351453834536869.a n = A243099 (n + 3)

end A243099

/-! ## A243099.P11840519431026157434

`A002061(A028242(n))%A000217(A000463(n+1))`
-/

namespace A243099.P11840519431026157434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002061 (A028242 n).toNat) (A000217 (A000463 (n + 1)).toNat)

end

end A243099.P11840519431026157434

namespace A243099

/-- `A002061(A028242(n))%A000217(A000463(n+1))` -/
def P11840519431026157434.Spec : Prop :=
  ∀ n, P11840519431026157434.a n = A243099 (n + 3)

end A243099

/-! ## A243099.P3364926436703980602

`A025480(A005893(A004526(n))-A004442(n))`
-/

namespace A243099.P3364926436703980602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A005893 (A004526 n).toNat - A004442 n).toNat

end

end A243099.P3364926436703980602

namespace A243099

/-- `A025480(A005893(A004526(n))-A004442(n))` -/
def P3364926436703980602.Spec : Prop :=
  ∀ n, P3364926436703980602.a n = A243099 (n + 3)

end A243099

/-! ## A243099.P4228581950311953070

`A026741(∑[A002262(A266252(n))])`
-/

namespace A243099.P4228581950311953070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A266252 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A243099.P4228581950311953070

namespace A243099

/-- `A026741(∑[A002262(A266252(n))])` -/
def P4228581950311953070.Spec : Prop :=
  ∀ n, P4228581950311953070.a n = A243099 (n + 3)

end A243099

